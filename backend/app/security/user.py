# app/security / user.py
# Created by azat at 13.12.2022
from fastapi import Depends, status, HTTPException
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from jose import JWTError, ExpiredSignatureError

from app.core.config import settings
from app.models.user import User
from app.repositories.common import UserDBHelper
from app.security.exception import unauthorized_exception, forbidden_exception
from app.security.token import TokenHandler, TokenData

auth_scheme = OAuth2PasswordBearer(tokenUrl="token")


async def get_current_user_by_token(token: OAuth2PasswordRequestForm = Depends(auth_scheme)):
    """try to get the current user from the token"""

    token_handler = TokenHandler()
    user_handler = UserDBHelper()
    try:
        payload = await token_handler.decode(token)
        username: str = payload.get("sub")
        if username is None:
            raise unauthorized_exception
        token_data = TokenData(username=username)
    except JWTError:
        raise unauthorized_exception

    user = await user_handler.get_user_by_username(token_data.username)
    if user is None:
        raise unauthorized_exception
    return user


async def get_staff_by_token(current_user: User = Depends(get_current_user_by_token)):
    """try to get the staff user from the token"""

    if not current_user.is_staff:
        raise forbidden_exception
    return current_user


async def get_admin_by_token(current_user: User = Depends(get_staff_by_token)):
    """try to get the admin user from the token"""

    if not current_user.is_admin:
        raise forbidden_exception
    return current_user


async def fake_authenticate_by_token():
    return User(
        username="test",
        email="test@test.com",
        is_admin=True,
        is_staff=True,
    )
