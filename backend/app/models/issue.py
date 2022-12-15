# app/models / Issue.py
# Created by azat at 15.12.2022
# Issue.py
from typing import TYPE_CHECKING
from sqlmodel import SQLModel, Field, Relationship
from app.models.common import DTFields

if TYPE_CHECKING:
    from app.models.issue_language import IssueLanguage
    from app.models.attachment import Attachment


class IssueBase(SQLModel):
    title: str
    version: str
    author: str | None = None
    image: str | None = None
    keywords: str | None = None
    description: str | None = None
    long_description: str | None = None
    # FK
    publication_id: int | None = Field(default=None, foreign_key="publication.id")


class Issue(IssueBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    issue_languages: list["IssueLanguage"] = Relationship(back_populates="issue")
    attachments: list["Attachment"] = Relationship(back_populates="issue")
    # Relationships


class IssueCreate(IssueBase):
    pass


class IssueRead(IssueBase, DTFields):
    id: int


class IssueUpdate(SQLModel):
    title: str | None = None
    version: str | None = None
    author: str | None = None
    image: str | None = None
    keywords: str | None = None
    description: str | None = None
    long_description: str | None = None
