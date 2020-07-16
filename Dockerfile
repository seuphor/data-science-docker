# PYTHON version: 3.7.6

# For seuphor/airflow image
FROM puckel/docker-airflow:1.10.9
RUN python -m pip install --upgrade pip setuptools wheel
RUN pip install --user psycopg2-binary==2.8.4
ENV AIRFLOW_HOME=/usr/local/airflow
COPY ./airflow.cfg /usr/local/airflow/airflow.cfg

# For seuphor/ds-jupyter image
FROM jupyter/datascience-notebook:python-3.7.6
RUN python -m pip install --upgrade pip setuptools wheel