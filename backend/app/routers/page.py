# page.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.page import Page, PageCreate, PageRead, PageUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/pages",
            response_model=list[PageRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_pages(*,
                     authenticated: User = Depends(fake_authenticate_by_token),
                     session: AsyncSession = Depends(get_session),
                     qp: CommonQueryParams = Depends()):
    """
    Get all Page.
    """
    if authenticated:
        db = AsyncDBHelper(session, Page)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/pages",
             response_model=PageRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_page(*,
                      authenticated: User = Depends(get_staff_by_token),
                      data: PageCreate,
                      session: AsyncSession = Depends(get_session)):
    """
    Create a Page.
    """
    if authenticated:
        db = AsyncDBHelper(session, Page)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/pages/{page_id}",
            response_model=PageRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_page(*,
                    authenticated: User = Depends(fake_authenticate_by_token),
                    session: AsyncSession = Depends(get_session),
                    page_id: int):
    if authenticated:
        db = AsyncDBHelper(session, Page)
        ret = await db.read_one(page_id)
        return ret
    raise unauthorized_exception


@router.patch("/pages/{page_id}",
              response_model=PageRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_page(*,
                      authenticated: User = Depends(get_staff_by_token),
                      page_id: int,
                      data: PageUpdate,
                      session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, Page)
        ret = await db.update_one(page_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/pages/{page_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_page(*,
                      authenticated: User = Depends(get_staff_by_token),
                      page_id: int,
                      session: AsyncSession = Depends(get_session)
                      ):
    if authenticated:
        db = AsyncDBHelper(session, Page)
        ret = await db.delete_one(page_id)
        return ret
    return unauthorized_exception
