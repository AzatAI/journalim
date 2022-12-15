# page.py
from typing import TYPE_CHECKING
from sqlmodel import SQLModel, Field, Relationship
from app.models.common import DTFields
from app.models.site import Site

if TYPE_CHECKING:
    from app.models.page_language import PageLanguage


class PageBase(SQLModel):
    title: str
    description: str | None = None
    keywords: str | None = None
    author: str | None = None
    featured_image: str | None = None
    content: str | None = Field(default=None)
    # FK
    site_id: int | None = Field(default=None, foreign_key="site.id",
                                description="A Page must belongs to one of the site.")


class Page(PageBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    site: Site | None = Relationship(back_populates="site_pages")
    page_languages: list["PageLanguage"] = Relationship(back_populates="page")


class PageCreate(PageBase):
    pass


class PageRead(PageBase, DTFields):
    id: int


class PageUpdate(SQLModel):
    title: str | None = None
    description: str | None = None
    keywords: str | None = None
    author: str | None = None
    featured_image: str | None = None
    content: str | None = None
