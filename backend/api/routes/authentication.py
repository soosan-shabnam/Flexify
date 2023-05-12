from uuid import uuid4

from fastapi import APIRouter

from api.utils.password_hashing import (
    get_hashed_password,
    verify_password
)

from api.utils.generateJWT import (
    create_access_token,
    create_refresh_token
)

from api.database import (
    add_user,
    retrieve_user
)
from api.models.user import UserSchema

from api.models.authentication import (
    UserSignInModel,
    ResponseModel,
    TokenResponseModel,
    ErrorResponseModel
)

router = APIRouter()


@router.post('/signup', summary="Create New User")
async def create_user(data: UserSchema):
    user = await retrieve_user(data.email)
    if user is not None:
        return ErrorResponseModel(
            error='Bad Request',
            code=400,
            message='User already exists'
        )

    user = {
        'email': data.email,
        'password': get_hashed_password(data.password),
        'id': str(uuid4()),
        'fullname': data.fullname,
        'gender': data.gender,
        'age': data.age,
        'height': data.height,
        'weight': data.weight,
        'activityLevel': data.activityLevel
    }

    try:
        await add_user(user)
        print('User Added')
        return ResponseModel(
            data="OK",
            message="User added to database"
        )
    except Exception as e:
        print(e)
        return ErrorResponseModel(
            error='Internal Server Error',
            code=500,
            message='Signup Error'
        )


@router.post('/login', summary='Create access and refresh tokens for the user')
async def login(data: UserSignInModel):
    user = await retrieve_user(data.email)
    if user is None:
        return ErrorResponseModel(
            error='Bad Request',
            code=400,
            message='Incorrect email or password'
        )

    hashed_pass = user["password"]
    if not verify_password(data.password, hashed_pass):
        return ErrorResponseModel(
            error='Bad Request',
            code=400,
            message='Incorrect email or password'
        )

    return TokenResponseModel(
        code=200,
        accesstoken=create_access_token(user['email']),
        refreshtoken=create_refresh_token(user['email'])
    )
