# app/routers / publication.py
# Created by azat at 15.12.2022
# publication.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.publication import Publication, PublicationCreate, PublicationRead, PublicationUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/publications",
            response_model=list[PublicationRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_publications(*,
                            authenticated: User = Depends(fake_authenticate_by_token),
                            session: AsyncSession = Depends(get_session),
                            qp: CommonQueryParams = Depends()):
    """
    Get all Publication.
    """
    if authenticated:
        db = AsyncDBHelper(session, Publication)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/publications",
             response_model=PublicationRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_publication(*,
                             authenticated: User = Depends(get_staff_by_token),
                             data: PublicationCreate,
                             session: AsyncSession = Depends(get_session)):
    """
    Create a Publication.
    """
    if authenticated:
        db = AsyncDBHelper(session, Publication)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/publications/{publication_id}",
            response_model=PublicationRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_publication(*,
                           authenticated: User = Depends(fake_authenticate_by_token),
                           session: AsyncSession = Depends(get_session),
                           publication_id: int):
    if authenticated:
        db = AsyncDBHelper(session, Publication)
        ret = await db.read_one(publication_id)
        return ret
    raise unauthorized_exception


@router.patch("/publications/{publication_id}",
              response_model=PublicationRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_publication(*,
                             authenticated: User = Depends(get_staff_by_token),
                             publication_id: int,
                             data: PublicationUpdate,
                             session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, Publication)
        ret = await db.update_one(publication_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/publications/{publication_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_publication(*,
                             authenticated: User = Depends(get_staff_by_token),
                             publication_id: int,
                             session: AsyncSession = Depends(get_session)
                             ):
    if authenticated:
        db = AsyncDBHelper(session, Publication)
        ret = await db.delete_one(publication_id)
        return ret
    return unauthorized_exception
