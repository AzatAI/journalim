# app/routers / site_language.py
# Created by azat at 15.12.2022

# site_language.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.site_language import SiteLanguage, SiteLanguageCreate, SiteLanguageRead, SiteLanguageUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/site_languages",
            response_model=list[SiteLanguageRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_site_languages(*,
                              authenticated: User = Depends(fake_authenticate_by_token),
                              session: AsyncSession = Depends(get_session),
                              qp: CommonQueryParams = Depends()):
    """
    Get all SiteLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, SiteLanguage)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/site_languages",
             response_model=SiteLanguageRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_site_language(*,
                               authenticated: User = Depends(get_staff_by_token),
                               data: SiteLanguageCreate,
                               session: AsyncSession = Depends(get_session)):
    """
    Create a SiteLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, SiteLanguage)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/site_languages/{site_language_id}",
            response_model=SiteLanguageRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_site_language(*,
                             authenticated: User = Depends(fake_authenticate_by_token),
                             session: AsyncSession = Depends(get_session),
                             site_language_id: int):
    if authenticated:
        db = AsyncDBHelper(session, SiteLanguage)
        ret = await db.read_one(site_language_id)
        return ret
    raise unauthorized_exception


@router.patch("/site_languages/{site_language_id}",
              response_model=SiteLanguageRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_site_language(*,
                               authenticated: User = Depends(get_staff_by_token),
                               site_language_id: int,
                               data: SiteLanguageUpdate,
                               session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, SiteLanguage)
        ret = await db.update_one(site_language_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/site_languages/{site_language_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_site_language(*,
                               authenticated: User = Depends(get_staff_by_token),
                               site_language_id: int,
                               session: AsyncSession = Depends(get_session)
                               ):
    if authenticated:
        db = AsyncDBHelper(session, SiteLanguage)
        ret = await db.delete_one(site_language_id)
        return ret
    return unauthorized_exception
