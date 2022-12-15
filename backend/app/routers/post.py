# app/routers / post.py
# Created by azat at 15.12.2022

# post.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.post import Post, PostCreate, PostRead, PostUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/posts",
            response_model=list[PostRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_posts(*,
                         authenticated: User = Depends(fake_authenticate_by_token),
                         session: AsyncSession = Depends(get_session),
                         qp: CommonQueryParams = Depends()):
    """
    Get all Post.
    """
    if authenticated:
        db = AsyncDBHelper(session, Post)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/posts",
             response_model=PostRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_post(*,
                          authenticated: User = Depends(get_staff_by_token),
                          data: PostCreate,
                          session: AsyncSession = Depends(get_session)):
    """
    Create a Post.
    """
    if authenticated:
        db = AsyncDBHelper(session, Post)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/posts/{post_id}",
            response_model=PostRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_post(*,
                        authenticated: User = Depends(fake_authenticate_by_token),
                        session: AsyncSession = Depends(get_session),
                        post_id: int):
    if authenticated:
        db = AsyncDBHelper(session, Post)
        ret = await db.read_one(post_id)
        return ret
    raise unauthorized_exception


@router.patch("/posts/{post_id}",
              response_model=PostRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_post(*,
                          authenticated: User = Depends(get_staff_by_token),
                          post_id: int,
                          data: PostUpdate,
                          session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, Post)
        ret = await db.update_one(post_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/posts/{post_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_post(*,
                          authenticated: User = Depends(get_staff_by_token),
                          post_id: int,
                          session: AsyncSession = Depends(get_session)
                          ):
    if authenticated:
        db = AsyncDBHelper(session, Post)
        ret = await db.delete_one(post_id)
        return ret
    return unauthorized_exception