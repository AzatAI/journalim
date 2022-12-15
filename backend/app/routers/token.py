# app/routers / token.py
# Created by azat at 13.12.2022
import time

from fastapi import APIRouter, Depends, HTTPException, status
from fastapi.security import OAuth2PasswordRequestForm
from passlib.exc import UnknownHashError
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel
from app.security.password import PasswordHandler
from app.security.token import Token, TokenHandler

router = APIRouter()


@router.post("/token",
             response_model=Token,
             responses={
                 401: {'model': ErrorResponseModel}
             }, )
async def create_token(form_data: OAuth2PasswordRequestForm = Depends(), session: AsyncSession = Depends(get_session)):
    psw = PasswordHandler(session=session)
    try:
        user = await psw.authenticate_by_username_password(form_data.username, form_data.password)
    except UnknownHashError:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Bearer"},
        )
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Bearer"},
        )
    token_handler = TokenHandler()
    access_token = await token_handler.create_access_token(
        payload={
            "sub": user.username,
            "iat": int(time.time()),
        }
    )
    ret = Token(
        access_token=access_token,
        token_type="bearer",
    )
    return ret
