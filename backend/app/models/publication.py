# app/models / publication.py
# Created by azat at 15.12.2022
# publication.py
from typing import TYPE_CHECKING
from sqlmodel import SQLModel, Field, Relationship
from app.models.common import DTFields

if TYPE_CHECKING:
    from app.models.publication_language import PublicationLanguage


class PublicationBase(SQLModel):
    title: str
    description: str | None = None
    publisher: str | None = None
    issn: str | None = None
    isbn: str | None = None
    editor_in_chief: str | None = None
    editor_others: str | None = None
    contact_person: str | None = None
    contact_email: str | None = None
    contact_number: str | None = None
    contact_address: str | None = None
    subscription_fee: str | None = None
    image: str | None = None
    keywords: str | None = None
    long_description: str | None = Field(default=None, description="This can be a very long html or markdown content")
    # FK


class Publication(PublicationBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    publication_languages: list["PublicationLanguage"] = Relationship(back_populates="publication")


class PublicationCreate(PublicationBase):
    pass


class PublicationRead(PublicationBase, DTFields):
    id: int


class PublicationUpdate(SQLModel):
    title: str | None = None
    description: str | None = None
    publisher: str | None = None
    issn: str | None = None
    isbn: str | None = None
    editor_in_chief: str | None = None
    editor_others: str | None = None
    contact_person: str | None = None
    contact_email: str | None = None
    contact_number: str | None = None
    contact_address: str | None = None
    subscription_fee: str | None = None
    image: str | None = None
    keywords: str | None = None
    long_description: str | None
