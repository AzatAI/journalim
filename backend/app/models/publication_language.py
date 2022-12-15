# app/models / publication_language.py
# Created by azat at 15.12.2022
# publication_language.py
from typing import TYPE_CHECKING
from sqlmodel import SQLModel, Field, Relationship
from app.models.common import DTFields
from app.models.language import Language
from app.models.publication import Publication

if TYPE_CHECKING:
    pass


class PublicationLanguageBase(SQLModel):
    title: str | None = None
    description: str | None = None
    publisher: str | None = None
    image: str | None = None
    keywords: str | None = None
    long_description: str | None = Field(default=None, description="This can be a very long html or markdown content")
    # FK
    publication_id: int | None = Field(default=None, foreign_key="publication.id")
    language_id: int | None = Field(default=None, foreign_key="language.id")


class PublicationLanguage(PublicationLanguageBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    publication: Publication | None = Relationship(back_populates="publication_languages")
    language: Language | None = Relationship(back_populates="language_publications")


class PublicationLanguageCreate(PublicationLanguageBase):
    pass


class PublicationLanguageRead(PublicationLanguageBase, DTFields):
    id: int


class PublicationLanguageUpdate(SQLModel):
    title: str | None = None
    description: str | None = None
    image: str | None = None
    keywords: str | None = None
    long_description: str | None
