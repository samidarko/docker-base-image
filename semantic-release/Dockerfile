FROM node:16-buster-slim

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends git-core ca-certificates \
    && rm -rf /var/lib/apt/lists/*


RUN npm install --location=global semantic-release \
    @semantic-release/git \
    @semantic-release/gitlab \
    @semantic-release/changelog \
    conventional-changelog-conventionalcommits \
    @semantic-release/commit-analyzer \
    @semantic-release/release-notes-generator

CMD ["bash"]

