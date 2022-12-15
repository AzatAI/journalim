# app/repositories / common.py
# Created by azat at 12.12.2022
from datetime import datetime
from typing import Type, TypeVar

from fastapi import HTTPException, status
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.orm import joinedload
from sqlmodel import SQLModel
from sqlmodel import select

from app.core.db import async_session
from app.models.common import SuccessResponseModel
from app.models.user import User
from app.routers.common import CommonQueryParams

T = TypeVar('T', bound=SQLModel)
C = TypeVar('C', bound=SQLModel)
P = TypeVar('P', bound=SQLModel)


class AsyncDBHelper:
    def __init__(self,
                 session: AsyncSession,
                 table: Type[T],
                 child_table: Type[C] | None = None,
                 parent_table: Type[P] | None = None
                 ):
        self.session = session
        self.Table = table
        self.ChildTable = child_table
        self.ParentTable = parent_table

    async def create_one(self, data: T):
        """Create one instance of T in the table"""
        obj = self.Table.from_orm(data)
        print(obj)
        self.session.add(obj)
        try:
            await self.session.commit()
            await self.session.refresh(obj)
        except Exception as error:
            raw_str_list = str(error).strip().split('\n')
            message: str = ""
            for each in raw_str_list:
                if each.startswith('DETAIL'):
                    message = each
            if len(message) == 0:
                message = str(error).strip()
            raise HTTPException(
                status_code=status.HTTP_409_CONFLICT,
                detail=message
            )
        return obj

    async def create_one_with_parent(self, data: T):
        """Create one instance of T in the table"""
        obj = self.Table.from_orm(data)
        print(obj)
        self.session.add(obj)
        try:
            await self.session.commit()
            await self.session.refresh(obj)
        except Exception as error:
            raw_str_list = str(error).strip().split('\n')
            message: str = ""
            print("Error on create_one:", raw_str_list)
            for each in raw_str_list:
                if each.startswith('DETAIL'):
                    message = each
            if len(message) == 0:
                message = str(error).strip()
            raise HTTPException(
                status_code=status.HTTP_409_CONFLICT,
                detail=message
            )
        return obj

    async def create_one_with_child(self, data: T):
        """Create one instance of T in the table"""
        child_data = data.dict()[f"{str(self.ChildTable.__tablename__).lower()}"]
        f"{str(self.Table.__tablename__).lower()}_id"
        parent_field = f"{str(self.Table.__tablename__).lower()}"
        obj = self.Table.from_orm(data)
        child_data.update({parent_field: obj})
        child_obj = self.ChildTable(**child_data)
        self.session.add(obj)
        self.session.add(child_obj)
        try:
            await self.session.commit()
            await self.session.refresh(obj)
        except Exception as error:
            raw_str_list = str(error).strip().split('\n')
            message: str = ""
            print("Error on create_one:", raw_str_list)
            for each in raw_str_list:
                if each.startswith('DETAIL'):
                    message = each
            if len(message) == 0:
                message = str(error).strip()
            raise HTTPException(
                status_code=status.HTTP_409_CONFLICT,
                detail=message
            )
        return_dict = {}
        return_dict.update(obj.dict())
        print("return_dict:", return_dict)
        print("obj:", obj.dict())
        print("child_obj:", child_obj.dict())
        return_dict.update(
            {f"{self.ChildTable.__tablename__}": child_obj.dict()}
        )
        print("return_dict:", return_dict)
        return return_dict

    async def read_all(self, qp: CommonQueryParams = CommonQueryParams(offset=0, limit=100)):
        statement = select(self.Table).offset(qp.offset).limit(qp.limit)
        result = await self.session.execute(statement)
        objs = result.scalars().all()
        return objs

    async def read_all_joined(self,
                              foreign_field,
                              qp: CommonQueryParams = CommonQueryParams(offset=0, limit=100),
                              ):
        statement = select(self.Table).options(joinedload(foreign_field)).offset(qp.offset).limit(qp.limit)
        result = await self.session.execute(statement)
        objs = result.scalars().all()
        return objs

    async def read_one(self, _id: int):
        obj = await self.session.get(self.Table, _id)
        if not obj:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"{self.Table.__tablename__} with id:{_id} can not be found!"
            )
        return obj

    async def read_one_joined(self, _id: int, foreign_field):
        statement = select(self.Table).options(joinedload(foreign_field)).where(self.Table.id == _id)
        result = await self.session.execute(statement)
        obj = result.scalars().first()
        if not obj:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"{self.Table.__tablename__} with id:{_id} can not be found!"
            )
        return obj

    async def update_obj(self, obj, data: T):
        """updated obj instance of T"""
        _user_data = data.dict(exclude_unset=True)
        print(_user_data)
        user_data = {}
        for k, v in obj:
            user_data[k] = v
        user_data.update(_user_data)
        print('under data after drop', user_data)
        for key, value in user_data.items():
            setattr(obj, key, value)
        self.session.add(obj)
        try:
            await self.session.commit()
            await self.session.refresh(obj)
        except Exception as error:
            raw_str_list = str(error).strip().split('\n')
            message: str = ""
            for each in raw_str_list:
                if each.startswith('DETAIL'):
                    message = each
            raise HTTPException(
                status_code=status.HTTP_409_CONFLICT,
                detail=message
            )
        return obj

    async def update_one(self, _id: int, data: T):
        obj = await self.session.get(self.Table, _id)
        if not obj:
            raise HTTPException(status_code=404, detail=f"{self.Table.__tablename__} with id:{_id} can not be found!")
        user_data = data.dict(exclude_unset=True)
        if "updated_at" in self.Table.__dict__.keys():
            user_data.update({"updated_at": datetime.utcnow()})
        for key, value in user_data.items():
            setattr(obj, key, value)
        self.session.add(obj)
        try:
            await self.session.commit()
            await self.session.refresh(obj)
        except Exception as error:
            raw_str_list = str(error).strip().split('\n')
            message: str = ""
            for each in raw_str_list:
                if each.startswith('DETAIL'):
                    message = each
            raise HTTPException(
                status_code=status.HTTP_409_CONFLICT,
                detail=message
            )
        return obj

    async def delete_one(self, _id: int):
        obj = await self.session.get(self.Table, _id)
        if not obj:
            raise HTTPException(status_code=404, detail=f"{self.Table.__tablename__} with id:{_id} can not be found!")
        await self.session.delete(obj)
        await self.session.commit()
        return SuccessResponseModel(message=f"Successfully deleted {self.Table.__tablename__} with id:{_id}")

    async def read_one_match(self, kwargs: dict = None):
        if kwargs is None:
            kwargs = {}

        statement = select(self.Table).filter_by(**kwargs)
        result = await self.session.execute(statement)
        obj = result.scalars().first()
        return obj

    async def read_all_match(self, kwargs: dict = None):
        if kwargs is None:
            kwargs = {}

        statement = select(self.Table).filter_by(**kwargs)
        result = await self.session.execute(statement)
        objs = result.scalars().all()
        return objs


class UserDBHelper:
    def __init__(self):
        self.dbh = None
        self.session = None

    async def get_user_by_id(self, _id: int):
        async with async_session() as session:
            async with session.begin():
                self.session = session
                self.dbh = AsyncDBHelper(self.session, User)
                user = await self.session.get(User, _id)
        return user

    async def get_user_by_username(self, username: str):
        async with async_session() as session:
            async with session.begin():
                self.session = session
                self.dbh = AsyncDBHelper(self.session, User)
                user = await self.dbh.read_one_match({"username": username})
        return user

    async def get_user_by_email(self, email: str):
        async with async_session() as session:
            async with session.begin():
                self.session = session
                self.dbh = AsyncDBHelper(self.session, User)
                user = await self.dbh.read_one_match({"email": email})
        return user
