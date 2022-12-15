# app/routers / attachment.py
# Created by azat at 15.12.2022
# attachment.py


from fastapi import APIRouter, Depends
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, SuccessResponseModel
from app.models.attachment import Attachment, AttachmentCreate, AttachmentRead, AttachmentUpdate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.routers.common import CommonQueryParams
from app.security.exception import unauthorized_exception
from app.security.user import fake_authenticate_by_token, get_staff_by_token

router = APIRouter()


@router.get("/attachments",
            response_model=list[AttachmentRead],
            responses={
                401: {'model': ErrorResponseModel}
            },
            )
async def read_attachments(*,
                           authenticated: User = Depends(fake_authenticate_by_token),
                           session: AsyncSession = Depends(get_session),
                           qp: CommonQueryParams = Depends()):
    """
    Get all Attachment.
    """
    if authenticated:
        db = AsyncDBHelper(session, Attachment)
        ret = await db.read_all(qp=qp)
        return ret
    raise unauthorized_exception


@router.post("/attachments",
             response_model=AttachmentRead,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_attachment(*,
                            authenticated: User = Depends(get_staff_by_token),
                            data: AttachmentCreate,
                            session: AsyncSession = Depends(get_session)):
    """
    Create a Attachment.
    """
    if authenticated:
        db = AsyncDBHelper(session, Attachment)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception


@router.get("/attachments/{attachment_id}",
            response_model=AttachmentRead,
            responses={
                404: {'model': ErrorResponseModel}
            },
            )
async def read_attachment(*,
                          authenticated: User = Depends(fake_authenticate_by_token),
                          session: AsyncSession = Depends(get_session),
                          attachment_id: int):
    if authenticated:
        db = AsyncDBHelper(session, Attachment)
        ret = await db.read_one(attachment_id)
        return ret
    raise unauthorized_exception


@router.patch("/attachments/{attachment_id}",
              response_model=AttachmentRead,
              responses={
                  409: {"model": ErrorResponseModel},
                  404: {'model': ErrorResponseModel}
              },
              )
async def update_attachment(*,
                            authenticated: User = Depends(get_staff_by_token),
                            attachment_id: int,
                            data: AttachmentUpdate,
                            session: AsyncSession = Depends(get_session)):
    if authenticated:
        db = AsyncDBHelper(session, Attachment)
        ret = await db.update_one(attachment_id, data)
        return ret
    raise unauthorized_exception


@router.delete("/attachments/{attachment_id}",
               response_model=SuccessResponseModel,
               responses={
                   404: {'model': ErrorResponseModel}
               },
               )
async def delete_attachment(*,
                            authenticated: User = Depends(get_staff_by_token),
                            attachment_id: int,
                            session: AsyncSession = Depends(get_session)
                            ):
    if authenticated:
        db = AsyncDBHelper(session, Attachment)
        ret = await db.delete_one(attachment_id)
        return ret
    return unauthorized_exception
