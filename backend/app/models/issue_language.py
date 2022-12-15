# app/models / IssueLanguage.py
# Created by azat at 15.12.2022

# IssueLanguage.py
from typing import TYPE_CHECKING
from sqlmodel import SQLModel, Field, Relationship

from app.models.common import DTFields
from app.models.issue import Issue
from app.models.language import Language

if TYPE_CHECKING:
    pass


class IssueLanguageBase(SQLModel):
    title: str
    version: str
    author: str | None = None
    image: str | None = None
    keywords: str | None = None
    description: str | None = None
    long_description: str | None = None
    # FK
    issue_id: int | None = Field(default=None, foreign_key="issue.id")
    language_id: int | None = Field(default=None, foreign_key="language.id")


class IssueLanguage(IssueLanguageBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    issue: Issue | None = Relationship(back_populates="issue_languages")
    language: Language | None = Relationship(back_populates="language_issues")
    # Relationships   


class IssueLanguageCreate(IssueLanguageBase):
    pass


class IssueLanguageRead(IssueLanguageBase, DTFields):
    id: int


class IssueLanguageUpdate(SQLModel):
    title: str | None = None
    version: str | None = None
    author: str | None = None
    image: str | None = None
    keywords: str | None = None
    description: str | None = None
    long_description: str | None = None
