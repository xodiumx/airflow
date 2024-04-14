# Local Airflow setup

## Start Airflow with docker

1. Create an `.env` file in the `airflow` directory with your own settings
```
cd airflow
```
```
touch .env
```
```
AIRFLOW_DB_NAME=airflow
DB_NAME_TWO=parser

POSTGRES_USER=postgres
POSTGRES_PASSWORD=admin

AIRFLOW_FERNET_KEY='46BKJoQYlPPOexq0OhDZnIlNepKFf87WFwLbfzqDDho='
AIRFLOW_SECRET_KEY='a25mQ1FHTUh3MnFRSk5KMEIyVVU2YmN0VGRyYTVXY08='
AIRFLOW_EXECUTOR=CeleryExecutor

AIRFLOW_DATABASE_NAME=airflow
AIRFLOW_DATABASE_USERNAME=postgres
AIRFLOW_DATABASE_PASSWORD=admin

AIRFLOW_USERNAME=admin
AIRFLOW_PASSWORD=admin
AIRFLOW_LOAD_EXAMPLES=no
AIRFLOW_EMAIL=admin@example.com

AIRFLOW_WEBSERVER_HOST=airflow
AIRFLOW_WEBSERVER_PORT=8080
```
2. Use command:
```
docker-compose up -d
```

## Description

- wait for the `airflow` to start up
- endpoint with `airflow` interface - localhost:8080
- You can customize your own `DAGs` in the directory:
```
cd src/dags
```
- If you need to add additional requirements to your airflow you can add them to the requirements file in:
```
cd airflow/
```
they will be installed when `docker-compose` is initialized.
