# app/models / site.py
# Created by azat at 15.12.2022
# app/models/site.py / site.py

from typing import TYPE_CHECKING

from sqlmodel import SQLModel, Field, Relationship

from app.models.common import DTFields

if TYPE_CHECKING:
    from app.models.site_language import SiteLanguage
    from app.models.page import Page
    from app.models.post import Post


class SiteBase(SQLModel):
    title: str
    description: str | None = None
    logo: str | None = None
    site_url: str | None = None


class Site(SiteBase, DTFields, table=True):
    id: int | None = Field(default=None, primary_key=True)
    # Relationships
    site_languages: list["SiteLanguage"] = Relationship(back_populates="site")
    site_pages: list["Page"] = Relationship(back_populates="site")
    site_posts: list["Post"] = Relationship(back_populates="site")


class SiteCreate(SiteBase):
    pass


class SiteRead(SiteBase, DTFields):
    id: int


class SiteUpdate(SiteBase):
    default_title: str | None = None
    default_description: str | None = None
