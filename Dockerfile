FROM python:3.10-slim-buster AS base

WORKDIR /opt/app/

ENV PATH=/root/.local/bin:$PATH

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y bash \
    build-essential \
    curl \
    libffi-dev \
    netcat \
    && rm -rf /var/lib/apt/lists/* \
    && curl -sSL https://install.python-poetry.org | python3 - \
    && python -m venv venv

ENTRYPOINT ["bash"]

