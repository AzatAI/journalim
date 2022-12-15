# app/models / attachment.py
# Created by azat at 15.12.2022
# attachment.py
from typing import TYPE_CHECKING
from sqlmodel import SQLModel, Field, Relationship
from app.models.common import DTFields
from app.models.issue import Issue

if TYPE_CHECKING:
    pass


class AttachmentBase(SQLModel):
    name: str
    path: str
    content_type: str
    description: str | None = None
    access_url: str | None = None
    access_type: str | None = None
    # FK
    issue_id: int | None = Field(default=None, foreign_key="issue.id")


class Attachment(AttachmentBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    issue: Issue | None = Relationship(back_populates="attachments")


class AttachmentCreate(AttachmentBase):
    pass


class AttachmentRead(AttachmentBase, DTFields):
    id: int


class AttachmentUpdate(SQLModel):
    name: str | None = None
    description: str | None = None
