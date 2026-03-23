import asyncio
import sys
 
from fastapi import FastAPI
from fastapi_pagination import add_pagination
 
from workout_api.routers import api_router
 
if sys.platform == 'win32':
    asyncio.set_event_loop_policy(asyncio.WindowsSelectorEventLoopPolicy())
 
app = FastAPI(title='WorkoutAPI')
app.include_router(api_router)
 
# Registra o suporte a paginacao (limit/offset) em toda a aplicacao
add_pagination(app)
 