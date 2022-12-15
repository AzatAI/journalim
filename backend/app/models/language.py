# app/models / language.py
# Created by azat at 15.12.2022

from typing import TYPE_CHECKING

from sqlmodel import SQLModel, Field, Relationship

from app.models.common import DTFields

if TYPE_CHECKING:
    from app.models.site_language import SiteLanguage
    from app.models.page_language import PageLanguage
    from app.models.post_language import PostLanguage
    from app.models.publication_language import PublicationLanguage
    from app.models.issue_language import IssueLanguage


class LanguageBase(SQLModel):
    code: str = Field(unique=True, index=True)
    name_local: str = Field(index=True)
    name_global: str | None = None


class Language(LanguageBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    language_sites: list["SiteLanguage"] = Relationship(back_populates="language")
    language_pages: list["PageLanguage"] = Relationship(back_populates="language")
    language_posts: list["PostLanguage"] = Relationship(back_populates="language")
    language_publications: list["PublicationLanguage"] = Relationship(back_populates="language")
    language_issues: list["IssueLanguage"] = Relationship(back_populates="language")


class LanguageCreate(LanguageBase):
    pass


class LanguageRead(LanguageBase, DTFields):
    id: int


class LanguageUpdate(SQLModel):
    code: str | None = None
    name_local: str | None = None
    name_global: str | None = None
