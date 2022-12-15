# app/models / user.py
# Created by azat at 10.12.2022
from datetime import datetime

from pydantic import EmailStr, root_validator
from sqlmodel import Field, SQLModel


class UserBase(SQLModel):
    username: str = Field(index=True, unique=True)
    email: EmailStr = Field(unique=True, index=True)  # this field should be unique for table and this field is required
    fullname: str | None = None
    created_at: datetime = Field(default=datetime.utcnow())
    updated_at: datetime = Field(default_factory=datetime.utcnow)


class User(UserBase, table=True):
    id: int | None = Field(default=None, primary_key=True)
    is_staff: bool | None = Field(default=False)
    is_admin: bool | None = Field(default=False)
    password: str = Field(min_length=6, max_length=256)


class UserCreate(UserBase):
    password: str = Field(min_length=6, max_length=256)


class UserRead(UserBase):
    id: int
    is_staff: bool | None = Field(default=False)
    is_admin: bool | None = Field(default=False)


class UserUpdate(SQLModel):
    fullname: str | None = None
    email: EmailStr | None = None
    is_staff: bool | None = False
    is_admin: bool | None = False

    @root_validator
    def admin_is_staff(cls, values):
        is_admin = values.get('is_admin')

        if is_admin:
            values['is_staff'] = True
        return values


class UserLogin(SQLModel):
    email: EmailStr = Field(...)
    password: str = Field(...)


class UserPasswordUpdate(SQLModel):
    password: str = Field(min_length=6, max_length=256)
    password2: str = Field(min_length=6, max_length=256)
