# app/repositories / admin.py
# Created by azat at 15.12.2022
from pydantic import EmailStr
from app.core.db import async_session
from app.models.user import UserCreate, User
from app.security.password import PasswordHandler
from sqlmodel import select


async def create_admin(username: str, email: EmailStr, password: str):
    # check if the user already exists
    async with async_session() as session:
        async with session.begin():
            session = session
        statement = select(User).filter_by(username=username)
        result = await session.execute(statement)
        admin = result.scalars().first()
        if admin:
            print("Admin user already exists,bypassing...")
            return True
        pwd = PasswordHandler(session=session)
        password = await pwd.hash(password)
        data = UserCreate(username=username, email=email, password=password)
        print(data)
        user = User.from_orm(data)
        user.is_admin = True
        user.is_staff = True
        session.add(user)
        await session.commit()
        await session.refresh(user)
        return True
