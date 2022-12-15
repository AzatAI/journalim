# app/models / site_language.py
# Created by azat at 15.12.2022

# site_language.py

from sqlmodel import SQLModel, Field, Relationship

from app.models.common import DTFields
from app.models.language import Language
from app.models.site import Site


class SiteLanguageBase(SQLModel):
    title: str | None = None
    description: str | None = None
    alternative_logo: str | None = None
    # FK
    # Site
    site_id: int | None = Field(default=None, foreign_key="site.id")
    # language
    language_id: int | None = Field(default=None, foreign_key="language.id")


class SiteLanguage(SiteLanguageBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    site: Site | None = Relationship(back_populates="site_languages")
    language: Language | None = Relationship(back_populates="language_sites")


class SiteLanguageCreate(SiteLanguageBase):
    pass


class SiteLanguageRead(SiteLanguageBase, DTFields):
    id: int


class SiteLanguageUpdate(SiteLanguageBase):
    title: str | None = None
    description: str | None = None
    alternative_logo: str | None = None
