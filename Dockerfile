FROM python:3.10

LABEL maintainer="kaban@mail.com"

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
COPY ./src /code/src
COPY ./alembic.ini /code/alembic.ini
COPY ./migrations /code/migrations

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt