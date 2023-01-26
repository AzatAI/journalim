# app/core / db.py
# Created by azat at 13.12.2022


from sqlmodel import SQLModel
from sqlalchemy.ext.asyncio import AsyncSession, create_async_engine
from sqlalchemy.orm import sessionmaker

from app.core.config import settings

# Database config
connect_args = None
echo = False
DATABASE_URL = settings.DATABASE_URL
if settings.DEBUG:
    # if this is a debug mode, we use sqlite, and we want to disable che check_same_thread.
    echo = True

# ============== Create DB engine ===============
engine = create_async_engine(DATABASE_URL, echo=False, future=True)
async_session = sessionmaker(engine, class_=AsyncSession, expire_on_commit=False)

# for test creating dbs
# TODO delete this.
# START IMPORT
from app.models.site import Site
from app.models.language import Language
from app.models.site_language import SiteLanguage
from app.models.page import Page
from app.models.page_language import PageLanguage
from app.models.post import Post
from app.models.post_language import PostLanguage
from app.models.publication import Publication
from app.models.publication_language import PublicationLanguage
from app.models.issue import Issue
from app.models.issue_language import IssueLanguage
from app.models.attachment import Attachment
from app.models.media import Media


# END IMPORT
async def init_db():
    async with engine.begin() as conn:
        await conn.run_sync(SQLModel.metadata.create_all)


async def get_session() -> AsyncSession:
    async with async_session() as session:
        yield session
