# app / main.py
# Created by azat at 13.12.2022

import logging
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles
from app.core.config import settings
from app.core.db import init_db
from app.repositories.admin import create_admin
from app.routers import (
    token,
    user,
    language,
    site,
    site_language,
    page,
    page_language,
    post,
    post_language,
    publication,
    publication_language,
    issue,
    issue_language,
    attachment,
    media,
    upload,
    private,
)

# ================ Create FastAPI Application ================
app = FastAPI(
    title=settings.PROJECT_NAME,
    description=settings.PROJECT_DESCRIPTION,
    version=settings.PROJECT_VERSION,
)

# ================ Serve Public Static Files ================
app.mount("/media", StaticFiles(directory="uploads/media"), name="media")

app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:8080",
        "http://localhost:3000",
        "http://localhost:5000",
    ],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(token.router, tags=["Token"])
app.include_router(user.router, tags=["User"])
app.include_router(private.router, tags=["Private"])
app.include_router(language.router, tags=["Language"])
app.include_router(upload.router, tags=["Media"])
app.include_router(media.router, tags=["Media"])
app.include_router(publication.router, tags=["Publication"])
app.include_router(publication_language.router, tags=["Publication"])
app.include_router(issue.router, tags=["Issue"])
app.include_router(issue_language.router, tags=["Issue"])
app.include_router(attachment.router, tags=["Attachment"])
app.include_router(site.router, tags=["Site"])
app.include_router(site_language.router, tags=["Site"])
app.include_router(page.router, tags=["Page"])
app.include_router(page_language.router, tags=["Page"])
app.include_router(post.router, tags=["Post"])
app.include_router(post_language.router, tags=["Post"])


# app.include_router(language.router)


# ================ FastAPI Events ================


@app.on_event("startup")
async def on_startup():
    print("loaded settings: ", settings)
    await init_db()
    ret = await create_admin(
        username=settings.SUPER_ADMIN_USERNAME,
        password=settings.SUPER_ADMIN_PASSWORD,
        email=settings.SUPER_ADMIN_EMAIL,
    )
    if not ret:
        raise Exception("Failed to create admin.")


# ================ Application Routers ================
@app.get("/ping")
async def ping():
    return {"ping": "pong"}
