# app/models / media.py
# Created by azat at 15.12.2022
# media.py
from typing import TYPE_CHECKING

from sqlmodel import SQLModel, Field

from app.models.common import DTFields

if TYPE_CHECKING:
    pass


class MediaBase(SQLModel):
    name: str
    path: str
    content_type: str
    description: str | None = None
    access_url: str | None = None
    access_type: str | None = None
    # FK


class Media(MediaBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships


class MediaCreate(MediaBase):
    pass


class MediaRead(MediaBase, DTFields):
    id: int


class MediaUpdate(SQLModel):
    name: str | None = None
    description: str | None = None
