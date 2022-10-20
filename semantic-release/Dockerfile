FROM docker:20-cli

WORKDIR /opt/app

ENV PATH="/root/.local/bin:/opt/app/node_modules/.bin:${PATH}"

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    build-base \
    ca-certificates \
    curl \
    git \
    nodejs \
    npm \
    python3 \
    python3-dev \
    libffi-dev \
    py3-pip \
    && pip install toml-cli \
    && curl -sSL https://install.python-poetry.org | python3 - \
    && rm -rf /var/cache/apt/*

RUN npm install --location=global semantic-release \
    @semantic-release/git \
    @semantic-release/gitlab \
    @semantic-release/changelog \
    conventional-changelog-conventionalcommits \
    @semantic-release/commit-analyzer \
    @semantic-release/release-notes-generator \
    @semantic-release/exec \
    @semantic-release-plus/docker

ENTRYPOINT []

