# app/models / page_language.py
# Created by azat at 15.12.2022
# page_language.py
from typing import TYPE_CHECKING
from sqlmodel import SQLModel, Field, Relationship
from app.models.common import DTFields
from app.models.language import Language
from app.models.post import Post

if TYPE_CHECKING:
    pass


class PostLanguageBase(SQLModel):
    title: str
    description: str | None = None
    keywords: str | None = None
    content: str | None = Field(default=None)
    # FK
    post_id: int | None = Field(default=None, foreign_key="post.id")
    language_id: int | None = Field(default=None, foreign_key="language.id")


class PostLanguage(PostLanguageBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    post: Post | None = Relationship(back_populates="post_languages")
    language: Language | None = Relationship(back_populates="language_posts")


class PostLanguageCreate(PostLanguageBase):
    pass


class PostLanguageRead(PostLanguageBase, DTFields):
    id: int


class PostLanguageUpdate(SQLModel):
    title: str | None = None
    description: str | None = None
    keywords: str | None = None
    content: str | None = None
