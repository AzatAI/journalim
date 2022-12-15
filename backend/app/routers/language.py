# app/routers / language.py
# Created by azat at 15.12.2022


# app/routers/language.py / language.py
# Created by  at


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.language import Language, LanguageCreate, LanguageRead, LanguageUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/languages",
            response_model=list[LanguageRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_languages(*,
                         authenticated: User = Depends(fake_authenticate_by_token),
                         session: AsyncSession = Depends(get_session),
                         qp: CommonQueryParams = Depends()):
    """
    Get all Language.
    """
    if authenticated:
        db = AsyncDBHelper(session, Language)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/languages",
             response_model=LanguageRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_language(*,
                          authenticated: User = Depends(get_staff_by_token),
                          data: LanguageCreate,
                          session: AsyncSession = Depends(get_session)):
    """
    Create a Language.
    """
    if authenticated:
        db = AsyncDBHelper(session, Language)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/languages/{language_id}",
            response_model=LanguageRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_language(*,
                        authenticated: User = Depends(fake_authenticate_by_token),
                        session: AsyncSession = Depends(get_session),
                        language_id: int):
    if authenticated:
        db = AsyncDBHelper(session, Language)
        ret = await db.read_one(language_id)
        return ret
    raise unauthorized_exception


@router.patch("/languages/{language_id}",
              response_model=LanguageRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_language(*,
                          authenticated: User = Depends(get_staff_by_token),
                          language_id: int,
                          data: LanguageUpdate,
                          session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, Language)
        ret = await db.update_one(language_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/languages/{language_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_language(*,
                          authenticated: User = Depends(get_staff_by_token),
                          language_id: int,
                          session: AsyncSession = Depends(get_session)
                          ):
    if authenticated:
        db = AsyncDBHelper(session, Language)
        ret = await db.delete_one(language_id)
        return ret
    return unauthorized_exception
