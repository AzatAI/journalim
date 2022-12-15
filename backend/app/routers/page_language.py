# app/routers / page_language.py
# Created by azat at 15.12.2022

# page_language.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.page_language import PageLanguage, PageLanguageCreate, PageLanguageRead, PageLanguageUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/page_languages",
            response_model=list[PageLanguageRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_page_languages(*,
                              authenticated: User = Depends(fake_authenticate_by_token),

                              session: AsyncSession = Depends(get_session),
                              qp: CommonQueryParams = Depends()):
    """
    Get all PageLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, PageLanguage)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/page_languages",
             response_model=PageLanguageRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_page_language(*,
                               authenticated: User = Depends(get_staff_by_token),

                               data: PageLanguageCreate,
                               session: AsyncSession = Depends(get_session)):
    """
    Create a PageLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, PageLanguage)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/page_languages/{page_language_id}",
            response_model=PageLanguageRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_page_language(*,
                             authenticated: User = Depends(fake_authenticate_by_token),

                             session: AsyncSession = Depends(get_session),
                             page_language_id: int):
    if authenticated:
        db = AsyncDBHelper(session, PageLanguage)
        ret = await db.read_one(page_language_id)
        return ret
    raise unauthorized_exception


@router.patch("/page_languages/{page_language_id}",
              response_model=PageLanguageRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_page_language(*,
                               authenticated: User = Depends(get_staff_by_token),
                               page_language_id: int,
                               data: PageLanguageUpdate,
                               session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, PageLanguage)
        ret = await db.update_one(page_language_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/page_languages/{page_language_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_page_language(*,
                               authenticated: User = Depends(get_staff_by_token),
                               page_language_id: int,
                               session: AsyncSession = Depends(get_session)
                               ):
    if authenticated:
        db = AsyncDBHelper(session, PageLanguage)
        ret = await db.delete_one(page_language_id)
        return ret
    return unauthorized_exception
