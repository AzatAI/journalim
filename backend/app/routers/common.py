# app/routers / common.py
# Created by azat at 12.12.2022


async def common_parameters(q: str | None = None, offset: int = 0, limit: int = 100):
    return {"q": q, "offset": offset, "limit": limit}


class CommonQueryParams:
    def __init__(self, q: str | None = None, offset: int = 0, limit: int = 100):
        self.q = q
        self.offset = offset
        self.limit = limit
