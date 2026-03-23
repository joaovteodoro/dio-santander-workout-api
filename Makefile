#MAKEFILE NÃO VEM INSTALADO POR PADRÃO NO WINDOWS (VEM NO LINUX E NO MACOS), E SERVE PARA ABREVIAR COMANDOS.
#NO WINDOWS, SE NÃO QUISER USAR O MAKEFILE, É SÓ COPIAR OS COMANDOS E EXECUTAR DIRETAMENTE NO TERMINAL

run:
	@uvicorn workout_api.main:app --reload
create-migrations:
	@$env:PYTHONPATH = "$env:PYTHONPATH;$(pwd)"
	@alembic revision --autogenerate -m "init"
run-migrations:
	@$env:PYTHONPATH = "$env:PYTHONPATH;$(pwd)"
	@alembic upgrade head