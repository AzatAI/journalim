# app/routers / publication_language.py
# Created by azat at 15.12.2022
# publication_language.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.publication_language import PublicationLanguage, PublicationLanguageCreate, PublicationLanguageRead, PublicationLanguageUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/publication_languages",
            response_model=list[PublicationLanguageRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_publication_languages(*,
                         authenticated: User = Depends(fake_authenticate_by_token),
                         session: AsyncSession = Depends(get_session),
                         qp: CommonQueryParams = Depends()):
    """
    Get all PublicationLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, PublicationLanguage)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/publication_languages",
             response_model=PublicationLanguageRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_publication_language(*,
                          authenticated: User = Depends(get_staff_by_token),
                          data: PublicationLanguageCreate,
                          session: AsyncSession = Depends(get_session)):
    """
    Create a PublicationLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, PublicationLanguage)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/publication_languages/{publication_language_id}",
            response_model=PublicationLanguageRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_publication_language(*,
                        authenticated: User = Depends(fake_authenticate_by_token),
                        session: AsyncSession = Depends(get_session),
                        publication_language_id: int):
    if authenticated:
        db = AsyncDBHelper(session, PublicationLanguage)
        ret = await db.read_one(publication_language_id)
        return ret
    raise unauthorized_exception


@router.patch("/publication_languages/{publication_language_id}",
              response_model=PublicationLanguageRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_publication_language(*,
                          authenticated: User = Depends(get_staff_by_token),
                          publication_language_id: int,
                          data: PublicationLanguageUpdate,
                          session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, PublicationLanguage)
        ret = await db.update_one(publication_language_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/publication_languages/{publication_language_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_publication_language(*,
                          authenticated: User = Depends(get_staff_by_token),
                          publication_language_id: int,
                          session: AsyncSession = Depends(get_session)
                          ):
    if authenticated:
        db = AsyncDBHelper(session, PublicationLanguage)
        ret = await db.delete_one(publication_language_id)
        return ret
    return unauthorized_exception