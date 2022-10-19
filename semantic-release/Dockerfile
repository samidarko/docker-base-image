FROM docker:20-cli

WORKDIR /opt/app

ENV PATH="/opt/app/node_modules/.bin:${PATH}"

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    ca-certificates \
    git \
    nodejs \
    npm \
    python3 \
    py3-pip \
    && pip install toml-cli \
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

COPY build_docker_release.sh /build_docker_release.sh
COPY build_docker_release.sh /opt/app/build_docker_release.sh

ENTRYPOINT []

