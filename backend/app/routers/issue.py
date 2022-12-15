# app/routers / issue.py
# Created by azat at 15.12.2022
# issue.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.issue import Issue, IssueCreate, IssueRead, IssueUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/issues",
            response_model=list[IssueRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_issues(*,
                      authenticated: User = Depends(fake_authenticate_by_token),
                      session: AsyncSession = Depends(get_session),
                      qp: CommonQueryParams = Depends()):
    """
    Get all Issue.
    """
    if authenticated:
        db = AsyncDBHelper(session, Issue)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/issues",
             response_model=IssueRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_issue(*,
                       authenticated: User = Depends(get_staff_by_token),
                       data: IssueCreate,
                       session: AsyncSession = Depends(get_session)):
    """
    Create an Issue.
    """
    if authenticated:
        db = AsyncDBHelper(session, Issue)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/issues/{issue_id}",
            response_model=IssueRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_issue(*,
                     authenticated: User = Depends(fake_authenticate_by_token),
                     session: AsyncSession = Depends(get_session),
                     issue_id: int):
    if authenticated:
        db = AsyncDBHelper(session, Issue)
        ret = await db.read_one(issue_id)
        return ret
    raise unauthorized_exception


@router.patch("/issues/{issue_id}",
              response_model=IssueRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_issue(*,
                       authenticated: User = Depends(get_staff_by_token),
                       issue_id: int,
                       data: IssueUpdate,
                       session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, Issue)
        ret = await db.update_one(issue_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/issues/{issue_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_issue(*,
                       authenticated: User = Depends(get_staff_by_token),
                       issue_id: int,
                       session: AsyncSession = Depends(get_session)
                       ):
    if authenticated:
        db = AsyncDBHelper(session, Issue)
        ret = await db.delete_one(issue_id)
        return ret
    return unauthorized_exception
