# app/models / page_language.py
# Created by azat at 15.12.2022
# page_language.py
from typing import TYPE_CHECKING
from sqlmodel import SQLModel, Field, Relationship
from app.models.common import DTFields
from app.models.language import Language
from app.models.page import Page

if TYPE_CHECKING:
    pass


class PageLanguageBase(SQLModel):
    title: str
    description: str | None = None
    keywords: str | None = None
    content: str | None = Field(default=None)
    # FK
    page_id: int | None = Field(default=None, foreign_key="page.id")
    language_id: int | None = Field(default=None, foreign_key="language.id")


class PageLanguage(PageLanguageBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    page: Page | None = Relationship(back_populates="page_languages")
    language: Language | None = Relationship(back_populates="language_pages")


class PageLanguageCreate(PageLanguageBase):
    pass


class PageLanguageRead(PageLanguageBase, DTFields):
    id: int


class PageLanguageUpdate(SQLModel):
    title: str | None = None
    description: str | None = None
    keywords: str | None = None
    content: str | None = None
