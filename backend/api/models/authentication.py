from pydantic import BaseModel, EmailStr, Field


class UserSignInModel(BaseModel):
    email: EmailStr = Field(...)
    password: str = Field(...)

    class Config:
        schema_extra = {
            "example": {
                "email": "test@mail.com",
                "password": "Rykgajo686hsj"
            }
        }


def ResponseModel(data, message):
    return {
        "data": data,
        "code": 200,
        "message": message
    }


def TokenResponseModel(accesstoken, refreshtoken, code):
    return {
        "code": code,
        "accessToken": accesstoken,
        "refreshToken": refreshtoken,
    }


def ErrorResponseModel(error, code, message):
    return {
        'error': error,
        'code': code,
        'message': message
    }
