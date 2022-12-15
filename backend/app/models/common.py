# app/models / common.py
# Created by azat at 11.12.2022
from datetime import datetime
from pathlib import Path

from pydantic import HttpUrl, BaseModel, Field
from sqlmodel import SQLModel


class DTFields(BaseModel):
    created_at: datetime = Field(default=datetime.utcnow())
    updated_at: datetime = Field(default_factory=datetime.utcnow)


class SocialAccount(SQLModel):
    name: str
    url: HttpUrl


class ErrorResponseModel(BaseModel):
    message: str


class SuccessResponseModel(BaseModel):
    message: str


class GenericFileUploadResponse(BaseModel):
    name: str
    content_type: str
    path: Path | str | None = None
    access_url: str | None = None
    description: str | None = None
    access_type: str | None = None
