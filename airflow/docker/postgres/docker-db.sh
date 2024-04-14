#!/bin/bash

source .env

AIRFLOW_DB_NAME=$AIRFLOW_DB_NAME
DB_NAME_TWO=$DB_NAME_TWO

sleep 5

# Создание базы данных
create_database() {
    psql -c "CREATE DATABASE ${AIRFLOW_DB_NAME}"
    psql -c "CREATE DATABASE ${DB_NAME_TWO}"
    >&2 echo "База данных ${AIRFLOW_DB_NAME} создана"
    >&2 echo "База данных ${DB_NAME_TWO} создана"
}

create_database