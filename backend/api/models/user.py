from pydantic import BaseModel, EmailStr, Field


class UserSchema(BaseModel):
    email: EmailStr = Field(...)
    password: str = Field(...)
    fullname: str = Field(...)
    gender: str = Field(...)
    age: int = Field(...)
    height: int = Field(...)
    weight: int = Field(...)
    activityLevel: str = Field(...)

    class Config:
        schema_extra = {
            "example": {
                "email": "test@mail.com",
                "password": "Rykgajo686hsj",
                "fullname": "Chonky Shabnam",
                "gender": "Female",
                "age": 20,
                "height": 173,
                "weight": 100,
                "activityLevel": "Advanced"
            }
        }
