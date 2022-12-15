# page.py
from typing import TYPE_CHECKING
from sqlmodel import SQLModel, Field, Relationship
from app.models.common import DTFields
from app.models.site import Site

if TYPE_CHECKING:
    from app.models.post_language import PostLanguage


class PostBase(SQLModel):
    title: str
    description: str | None = None
    keywords: str | None = None
    author: str | None = None
    featured_image: str | None = None
    content: str | None = Field(default=None)
    # FK
    site_id: int | None = Field(default=None, foreign_key="site.id",
                                description="A Post must belongs to one of the site.")


class Post(PostBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    site: Site | None = Relationship(back_populates="site_posts")
    post_languages: list["PostLanguage"] = Relationship(back_populates="post")


class PostCreate(PostBase):
    pass


class PostRead(PostBase, DTFields):
    id: int


class PostUpdate(SQLModel):
    title: str | None = None
    description: str | None = None
    keywords: str | None = None
    author: str | None = None
    featured_image: str | None = None
    content: str | None = None
