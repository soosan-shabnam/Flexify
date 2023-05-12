import os
from dotenv import load_dotenv
from datetime import datetime, timedelta
from typing import Union, Any
from jose import jwt

load_dotenv()

ACCESS_TOKEN_EXPIRE_IN_MINUTES = 60
REFRESH_TOKEN_EXPIRE_IN_MINUTES = 60 * 24 * 7
ALGORITHM = "HS256"
JWT_SECRET_KEY = os.environ['JWT_SECRET_KEY']
JWT_SECRET_REFRESH_KEY = os.environ['JWT_SECRET_REFRESH_KEY']


def create_access_token(subject: Union[str, any], expires_delta: int = None) -> str:
    if expires_delta is not None:
        expires_delta = datetime.utcnow() + expires_delta
    else:
        expires_delta = datetime.utcnow() + timedelta(minutes=ACCESS_TOKEN_EXPIRE_IN_MINUTES)

    to_encode = {"exp": expires_delta, "sub": str(subject)}
    encoded_jwt = jwt.encode(to_encode, JWT_SECRET_KEY, ALGORITHM)
    return encoded_jwt


def create_refresh_token(subject: Union[str, any], expires_delta: int = None) -> str:
    if expires_delta is not None:
        expires_delta = datetime.utcnow() + expires_delta
    else:
        expires_delta = datetime.utcnow() + timedelta(minutes=REFRESH_TOKEN_EXPIRE_IN_MINUTES)

    to_encode = {"exp": expires_delta, "sub": str(subject)}
    encoded_jwt = jwt.encode(to_encode, JWT_SECRET_REFRESH_KEY, ALGORITHM)
    return encoded_jwt
