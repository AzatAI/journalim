# app/security / password.py
# Created by azat at 12.12.2022
from passlib.context import CryptContext
from sqlmodel.ext.asyncio.session import AsyncSession

from app.repositories.common import UserDBHelper


class PasswordHandler:
    def __init__(self, session: AsyncSession = None):
        self.pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
        self.user_helper = UserDBHelper()

    async def verify(self, plain_password, hashed_password):
        return self.pwd_context.verify(plain_password, hashed_password)

    async def hash(self, password: str):
        """Hash given password with the provided algorithm. DB should only save the hashed passwords.
        """
        return self.pwd_context.hash(password)

    async def authenticate_by_username_password(self, username: str, password: str):
        """Authenticate user with given username and password"""
        user = await self.user_helper.get_user_by_username(username)
        if not user:
            return False
        if not await self.verify(password, user.password):
            return False
        return user

    async def authenticate_by_email_password(self, email: str, password: str):
        """Authenticate user with given email and password"""
        user = await self.user_helper.get_user_by_email(email)
        if not user:
            return False
        if not self.verify(password, user.password):
            return False
        return user
