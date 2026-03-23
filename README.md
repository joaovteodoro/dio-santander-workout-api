#WorkoutAPI
    API REST para gerenciamento de atletas, categorias e centros de treinamento, desenvolvida como projeto do Bootcamp Python AI Backend Developer — parceria DIO × Santander.


#Tecnologias utilizadas
    Python 3.12
    FastAPI — framework web
    SQLAlchemy + Alembic — ORM e migrations
    PostgreSQL (via Docker)
    Pydantic — validação de dados
    Uvicorn — servidor ASGI


#Pré-requisitos
    Python 3.12 — marque "Add Python to PATH" na instalação
    Docker Desktop — para rodar o banco de dados


#Como executar
1. Criar e ativar o ambiente virtual
    bashpython -m venv venv
    venv\Scripts\activate
2. Instalar as dependências
    bashpip install -r requirements.txt
3. Subir o banco de dados
    bashdocker compose up -d
4. Aplicar as migrations
    bashset PYTHONPATH=%PYTHONPATH%;%CD%
    alembic upgrade head
5. Iniciar a API
    bashuvicorn workout_api.main:app --reload


#Acessando a documentação
Com a API rodando, acesse pelo navegador:
    Swagger UI: http://127.0.0.1:8000/docs
    ReDoc: http://127.0.0.1:8000/redoc


#Encerrando
# Parar a API
    CTRL+C
# Parar o banco de dados
    docker compose down
# Desativar o ambiente virtual
    deactivate