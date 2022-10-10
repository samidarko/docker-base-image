FROM node:16-buster-slim

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends git-core ca-certificates

RUN npm install -g semantic-release \
    @semantic-release/git \
    @semantic-release/gitlab \
    @semantic-release/changelog \
    conventional-changelog-conventionalcommits \
    @semantic-release/commit-analyzer \
    @semantic-release/release-notes-generator

COPY entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]

#npm WARN config global `--global`, `--local` are deprecated. Use `--location=global` instead.