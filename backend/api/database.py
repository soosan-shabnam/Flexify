import os
from dotenv import load_dotenv

#from bson.objectid import ObjectId

from motor.motor_asyncio import AsyncIOMotorClient
from pymongo.server_api import ServerApi

load_dotenv()

client = AsyncIOMotorClient(os.environ['MONGO_URI'], server_api=ServerApi('1'))
try:
    client.admin.command('ping')
    print('MongoDB connected')
except Exception as e:
    print(e)

db = client.Flexify
users = db.get_collection("users")


# CRUD HELPERS

def user_helper(user) -> dict:
    return {
        "id": str(user["_id"]),
        "email": str(user["email"]),
        "password": str(user["password"]),
        "fullname": user["fullname"],
        "gender": user["gender"],
        "age": user["age"],
        "height": user["height"],
        "weight": user["weight"],
        "activityLevel": user["activityLevel"]
    }


# Add user to database
async def add_user(user_data: dict) -> dict:
    user = await users.insert_one(user_data)
    newUser = await users.find_one({"_id": user.inserted_id})
    return user_helper(newUser)


# Retrieve user from database
async def retrieve_user(email: str) -> dict:
    user = await users.find_one({"email": email})
    if user: return user_helper(user)
