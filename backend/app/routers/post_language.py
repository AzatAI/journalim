# app/routers / post_language.py
# Created by azat at 15.12.2022

# post_language.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.post_language import PostLanguage, PostLanguageCreate, PostLanguageRead, PostLanguageUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/post_languages",
            response_model=list[PostLanguageRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_post_languages(*,
                              authenticated: User = Depends(fake_authenticate_by_token),

                              session: AsyncSession = Depends(get_session),
                              qp: CommonQueryParams = Depends()):
    """
    Get all PostLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, PostLanguage)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/post_languages",
             response_model=PostLanguageRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_post_language(*,
                               authenticated: User = Depends(get_staff_by_token),

                               data: PostLanguageCreate,
                               session: AsyncSession = Depends(get_session)):
    """
    Create a PostLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, PostLanguage)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/post_languages/{post_language_id}",
            response_model=PostLanguageRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_post_language(*,
                             authenticated: User = Depends(fake_authenticate_by_token),

                             session: AsyncSession = Depends(get_session),
                             post_language_id: int):
    if authenticated:
        db = AsyncDBHelper(session, PostLanguage)
        ret = await db.read_one(post_language_id)
        return ret
    raise unauthorized_exception


@router.patch("/post_languages/{post_language_id}",
              response_model=PostLanguageRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_post_language(*,
                               authenticated: User = Depends(get_staff_by_token),
                               post_language_id: int,
                               data: PostLanguageUpdate,
                               session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, PostLanguage)
        ret = await db.update_one(post_language_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/post_languages/{post_language_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_post_language(*,
                               authenticated: User = Depends(get_staff_by_token),
                               post_language_id: int,
                               session: AsyncSession = Depends(get_session)
                               ):
    if authenticated:
        db = AsyncDBHelper(session, PostLanguage)
        ret = await db.delete_one(post_language_id)
        return ret
    return unauthorized_exception
