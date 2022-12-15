# app/routers / private.py
# Created by azat at 15.12.2022
from pathlib import Path

import aiofiles.os
from fastapi import APIRouter, Depends, HTTPException, status
from fastapi.responses import FileResponse
from sqlmodel.ext.asyncio.session import AsyncSession

from app.core.db import get_session
from app.models.common import ErrorResponseModel
from app.models.user import User
from app.security.exception import unauthorized_exception
from app.security.user import get_current_user_by_token

router = APIRouter()


@router.get("/private/{filename}",
            include_in_schema=False,
            response_class=FileResponse,
            responses={
                409: {'model': ErrorResponseModel}
            },
            )
async def read_private(*,
                       authenticated: User = Depends(get_current_user_by_token),
                       session: AsyncSession = Depends(get_session),
                       filename: str):
    if authenticated:
        folder_path = Path("uploads/private")
        file_path = folder_path / filename
        print(file_path)
        is_exists = await aiofiles.os.path.exists(file_path)
        if not is_exists:
            raise HTTPException(
                status_code=status.HTTP_409_CONFLICT,
                detail=f"File {filename} dose not exists! It might be removed by the admin."
            )
        return file_path
    raise unauthorized_exception
