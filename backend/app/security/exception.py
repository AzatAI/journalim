# app/security / exception.py
# Created by azat at 13.12.2022
from fastapi import HTTPException, status

unauthorized_exception = HTTPException(
    status_code=status.HTTP_401_UNAUTHORIZED,
    detail="Could not validate credentials",
    headers={"WWW-Authenticate": "Bearer"},
)

forbidden_exception = HTTPException(
    status_code=status.HTTP_403_FORBIDDEN,
    detail="You do not have enough permission.",
    headers={"WWW-Authenticate": "Bearer"},
)
