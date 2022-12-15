# app/routers / media.py
# Created by azat at 15.12.2022
# media.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.media import Media, MediaRead, MediaUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/medias",
            response_model=list[MediaRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_medias(*,
                      authenticated: User = Depends(fake_authenticate_by_token),
                      session: AsyncSession = Depends(get_session),
                      qp: CommonQueryParams = Depends()):
    """
    Get all Media.
    """
    if authenticated:
        db = AsyncDBHelper(session, Media)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.get("/medias/{media_id}",
            response_model=MediaRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_media(*,
                     authenticated: User = Depends(fake_authenticate_by_token),
                     session: AsyncSession = Depends(get_session),
                     media_id: int):
    if authenticated:
        db = AsyncDBHelper(session, Media)
        ret = await db.read_one(media_id)
        return ret
    raise unauthorized_exception


@router.patch("/medias/{media_id}",
              response_model=MediaRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_media(*,
                       authenticated: User = Depends(get_staff_by_token),
                       media_id: int,
                       data: MediaUpdate,
                       session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, Media)
        ret = await db.update_one(media_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/medias/{media_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_media(*,
                       authenticated: User = Depends(get_staff_by_token),
                       media_id: int,
                       session: AsyncSession = Depends(get_session)
                       ):
    if authenticated:
        db = AsyncDBHelper(session, Media)
        ret = await db.delete_one(media_id)
        return ret
    return unauthorized_exception
