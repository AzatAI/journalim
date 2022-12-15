# app/routers / site.py
# Created by azat at 15.12.2022
# app/routers/site.py / site.py
# Created by  at


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.site import Site, SiteCreate, SiteRead, SiteUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter(
)


@router.get("/sites",
            response_model=list[SiteRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_sites(*,
                     authenticated: User = Depends(fake_authenticate_by_token),
                     session: AsyncSession = Depends(get_session),
                     qp: CommonQueryParams = Depends()):
    """
    Get all Site.
    """
    if authenticated:
        db = AsyncDBHelper(session, Site)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/sites",
             response_model=SiteRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_site(*,
                      authenticated: User = Depends(get_staff_by_token),
                      data: SiteCreate,
                      session: AsyncSession = Depends(get_session)):
    """
    Create a Site.
    """
    if authenticated:
        db = AsyncDBHelper(session, Site)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/sites/{site_id}",
            response_model=SiteRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_site(*,
                    authenticated: User = Depends(fake_authenticate_by_token),
                    session: AsyncSession = Depends(get_session),
                    site_id: int):
    if authenticated:
        db = AsyncDBHelper(session, Site)
        ret = await db.read_one(site_id)
        return ret
    raise unauthorized_exception


@router.patch("/sites/{site_id}",
              response_model=SiteRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_site(*,
                      authenticated: User = Depends(get_staff_by_token),
                      site_id: int,
                      data: SiteUpdate,
                      session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, Site)
        ret = await db.update_one(site_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/sites/{site_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_site(*,
                      authenticated: User = Depends(get_staff_by_token),
                      site_id: int,
                      session: AsyncSession = Depends(get_session)
                      ):
    if authenticated:
        db = AsyncDBHelper(session, Site)
        ret = await db.delete_one(site_id)
        return ret
    return unauthorized_exception
