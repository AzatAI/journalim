# app/routers / upload.py
# Created by azat at 15.12.2022
# upload.py
from pathlib import Path

import aiofiles
import aiofiles.os
from fastapi import APIRouter, Depends, UploadFile, File, HTTPException, status
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel, GenericFileUploadResponse
from app.models.media import Media, MediaCreate
from app.models.user import User
from app.repositories.common import AsyncDBHelper
from app.security.exception import unauthorized_exception
from app.security.user import get_current_user_by_token

router = APIRouter()


@router.post("/upload",
             response_model=GenericFileUploadResponse,
             responses={409: {"model": ErrorResponseModel}}
             )
async def create_upload(*,
                        authenticated: User = Depends(get_current_user_by_token),
                        public: bool | None = False,
                        file: UploadFile = File(...),
                        session: AsyncSession = Depends(get_session)):
    """
    Upload a file to the server. \n
    This file later can be served to user either publicly or privately(for signed-in users only) \n
    Hints: Private files can be used for creating new issue attachments (PDFs)! \n
    <span style:"color:red">WARN</span> : Uploading files with same filename might overwrite the existing files.
    """
    if authenticated:
        filename = file.filename
        content_type = file.content_type,
        folder_path = Path("uploads/private")
        access_url = f"/private/{filename}",
        access_type = "private"
        if public:
            folder_path = Path("uploads/media")
            access_url = f"/media/{filename}",
            access_type = "public"
        file_path = folder_path / f"{filename}"
        is_exists = await aiofiles.os.path.exists(file_path)
        if is_exists:
            raise HTTPException(
                status_code=status.HTTP_409_CONFLICT,
                detail=f"File {filename} already exists!"
            )
        async with aiofiles.open(file_path, 'wb') as io:
            data = await file.read()
            await io.write(data)
        data = MediaCreate(
            name=filename,
            path=str(file_path),
            content_type=str(content_type[0]),
            description=None,
            access_url=str(access_url[0]),
            access_type=access_type
        )
        db = AsyncDBHelper(session, Media)
        ret = await db.create_one(data)
        return ret
    raise unauthorized_exception
