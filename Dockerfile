FROM postgres:latest

ENV POSTGRES_DB task_db
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres

COPY init.sql /docker-entrypoint-initdb.d/