# app/core / config.py
# Created by azat at 13.12.2022


"""
DATABASE_URL=postgresql+asyncpg://postgres:postgres@localhost:5432/app
DEBUG_WITH_PSQL=1
"""

from pydantic import BaseSettings, Field, PostgresDsn


class Settings(BaseSettings):
    DEBUG: bool = True
    DEBUG_WITH_PSQL = False
    FRONTEND_DOMAIN: str | None = Field(default="localhost", env="FRONTEND_DOMAIN")
    PROJECT_NAME: str | None = Field(default="FastAPI + SQLModel Project")
    PROJECT_VERSION: str = Field(default="0.0.1", env="PROJECT_VERSION")
    PROJECT_DESCRIPTION: str = Field(
        default="FastAPI Application Description", env="PROJECT_DESCRIPTION"
    )
    SUPER_ADMIN_USERNAME: str = Field(default="admin", env="SUPER_ADMIN_USERNAME")
    SUPER_ADMIN_EMAIL: str = Field(default="admin@example.com", env="SUPER_ADMIN_EMAIL")
    SUPER_ADMIN_PASSWORD: str = Field(default="journalim", env="SUPER_ADMIN_PASSWORD")
    DATABASE_URL: PostgresDsn = Field(default="", env="DATABASE_URL")
    TOKEN_SECRET: str = Field(
        default="5d63e7f635d291fa12c06a14623455ddac026ed9146e35b7f4a04bc573c27ceb",
        env="JWT_SECRET",
    )
    TOKEN_ALGORITHM: str = Field(default="HS256", env="JWT_ALGORITHM")
    ACCESS_TOKEN_EXPIRE_MINUTES: int = Field(
        default=60, env="ACCESS_TOKEN_EXPIRE_MINUTES"
    )


settings = Settings()
