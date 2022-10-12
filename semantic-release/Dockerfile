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
    && rm -rf /var/cache/apt/*

RUN npm install --location=global semantic-release \
    @semantic-release/git \
    @semantic-release/gitlab \
    @semantic-release/changelog \
    conventional-changelog-conventionalcommits \
    @semantic-release/commit-analyzer \
    @semantic-release/release-notes-generator \
    @semantic-release-plus/docker

ENTRYPOINT []
CMD ["bash"]

