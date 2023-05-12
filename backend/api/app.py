from fastapi import FastAPI
# from fastapi.responses import RedirectResponse

from api.routes.authentication import router as AuthenticationRouter

app = FastAPI()

app.include_router(AuthenticationRouter, tags=['Authentication'], prefix="/api")


@app.get('/', tags=['Root'])
async def root():
    return {'message': 'app is running'}
