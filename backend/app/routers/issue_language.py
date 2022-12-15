# app/routers / issue_language.py
# Created by azat at 15.12.2022
# issue_language.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.issue_language import IssueLanguage, IssueLanguageCreate, IssueLanguageRead, IssueLanguageUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/issue_languages",
            response_model=list[IssueLanguageRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_issue_languages(*,
                               authenticated: User = Depends(fake_authenticate_by_token),

                               session: AsyncSession = Depends(get_session),
                               qp: CommonQueryParams = Depends()):
    """
    Get all IssueLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, IssueLanguage)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/issue_languages",
             response_model=IssueLanguageRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_issue_language(*,
                                authenticated: User = Depends(get_staff_by_token),

                                data: IssueLanguageCreate,
                                session: AsyncSession = Depends(get_session)):
    """
    Create a IssueLanguage.
    """
    if authenticated:
        db = AsyncDBHelper(session, IssueLanguage)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/issue_languages/{issue_language_id}",
            response_model=IssueLanguageRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_issue_language(*,
                              authenticated: User = Depends(fake_authenticate_by_token),

                              session: AsyncSession = Depends(get_session),
                              issue_language_id: int):
    if authenticated:
        db = AsyncDBHelper(session, IssueLanguage)
        ret = await db.read_one(issue_language_id)
        return ret
    raise unauthorized_exception


@router.patch("/issue_languages/{issue_language_id}",
              response_model=IssueLanguageRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_issue_language(*,
                                authenticated: User = Depends(get_staff_by_token),
                                issue_language_id: int,
                                data: IssueLanguageUpdate,
                                session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, IssueLanguage)
        ret = await db.update_one(issue_language_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/issue_languages/{issue_language_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_issue_language(*,
                                authenticated: User = Depends(get_staff_by_token),
                                issue_language_id: int,
                                session: AsyncSession = Depends(get_session)
                                ):
    if authenticated:
        db = AsyncDBHelper(session, IssueLanguage)
        ret = await db.delete_one(issue_language_id)
        return ret
    return unauthorized_exception
