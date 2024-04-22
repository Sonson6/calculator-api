FROM python:3.11-buster

RUN pip install poetry==1.8.2

WORKDIR /code

COPY pyproject.toml poetry.lock ./

COPY calculator_api ./calculator_api/

RUN poetry install --without dev

# ENTRYPOINT ["poetry", "run", "python", "-m", "calculator_api.main"]
CMD ["poetry", "run", "uvicorn", "calculator_api.main:app", "--host", "0.0.0.0" ,"--port", "8080", "--reload"]
# CMD ["uvicorn", "calculator_api.main:app", "--host", "0.0.0.0", "--port", "80"]
