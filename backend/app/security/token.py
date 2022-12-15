# app/security / token.py
# Created by azat at 12.12.2022
from datetime import datetime, timedelta

from jose import jwt
from pydantic import BaseModel

from app.core.config import settings


class Token(BaseModel):
    access_token: str
    token_type: str


class TokenData(BaseModel):
    username: str | None = None


class TokenHandler:
    def __init__(self):
        self.secret = settings.TOKEN_SECRET
        self.algorithm = settings.TOKEN_ALGORITHM
        self.access_token_expiration_minutes = settings.ACCESS_TOKEN_EXPIRE_MINUTES
        # self.jwt_issuer = settings.JWT_ISSUER
        # self.jwt_leeway = settings.JWT_LEEWAY

    async def create_access_token(self, payload: dict, expires_delta: timedelta | None = None):
        to_encode = payload.copy()
        if expires_delta:
            exp = datetime.utcnow() + expires_delta
        else:
            exp = datetime.utcnow() + timedelta(minutes=self.access_token_expiration_minutes)
        to_encode.update({"exp": exp})
        token = jwt.encode(to_encode, self.secret, algorithm=self.algorithm)
        return token

    async def decode(self, token):
        try:
            decoded = jwt.decode(token, self.secret, self.algorithm)
            print(decoded['exp'])
            print(datetime.utcnow())
            return decoded if decoded['exp'] >= datetime.utcnow().timestamp() else None
        except jwt.ExpiredSignatureError:
            return None
