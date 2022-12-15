# app/routers / user.py
# Created by azat at 15.12.2022
from datetime import datetime

from fastapi import APIRouter, Depends, HTTPException, status
from sqlmodel import select
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.user import UserRead, UserCreate, User, UserUpdate
from app.routers.common import CommonQueryParams
from app.security.password import PasswordHandler
from app.security.user import get_current_user_by_token, unauthorized_exception, get_staff_by_token

router = APIRouter()


@router.post("/users",
             response_model=UserRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_user(*, data: UserCreate, session: AsyncSession = Depends(get_session)):
    """
    Create a new User
    """
    pwd = PasswordHandler(session=session)
    user = User.from_orm(data)
    user.password = await pwd.hash(user.password)
    session.add(user)
    try:
        await session.commit()
        await session.refresh(user)
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
    return user


@router.get("/users",
            response_model=list[UserRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def get_users(*,
                    authenticated: User = Depends(get_staff_by_token),
                    session: AsyncSession = Depends(get_session),
                    qp: CommonQueryParams = Depends()):
    """
    Get all Users.
    staff [ok]
    admin [ok]
    """
    if authenticated:
        statement = select(User).offset(qp.offset).limit(qp.limit)
        result = await session.execute(statement)
        users = result.scalars().all()
        return users
    raise unauthorized_exception


@router.get("/users/me",
            response_model=UserRead,
            )
async def get_current_user(*, current_user: User = Depends(get_current_user_by_token)):
    """
    Get all Users
    """
    return current_user


@router.get("/users/{user_id}",
            response_model=UserRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def get_user(*,
                   authenticated: User = Depends(get_staff_by_token),
                   session: AsyncSession = Depends(get_session),
                   user_id: int):
    """
    Get a User by ID
    """
    if authenticated:
        user = await session.get(User, user_id)
        if not user:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"User with id:{user_id} can not be found!"
            )
        return user
    raise unauthorized_exception


@router.patch("/users/{user_id}",
              response_model=UserRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_user(*,
                      authenticated: User = Depends(get_staff_by_token),
                      user_id: int,
                      data: UserUpdate,
                      session: AsyncSession = Depends(get_session)):
    """
        Update
        a
        User
        """
    if authenticated:
        user = await session.get(User, user_id)
        if not user:
            raise HTTPException(status_code=404, detail=f"User with id:{user_id} can not be found!")
        user_data = data.dict(exclude_unset=True)
        user_data.update({"updated_at": datetime.utcnow()})
        for key, value in user_data.items():
            setattr(user, key, value)
        session.add(user)
        try:
            await session.commit()
            await session.refresh(user)
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
        return user
    return unauthorized_exception


@router.delete("/users/{user_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_user(*,
                      authenticated: User = Depends(get_staff_by_token),
                      user_id: int,
                      session: AsyncSession = Depends(get_session)
                      ):
    """
    Delete
    a
    User
    """
    if authenticated:
        user = await session.get(User, user_id)
        if not user:
            raise HTTPException(status_code=404, detail=f"User with id:{user_id} can not be found!")
        await session.delete(user)
        await session.commit()
        return SuccessResponseModel(message=f"Successfully deleted User with id:{user_id}")
    return unauthorized_exception
