ARG NODE_VERSION="25.6.1"
ARG OS_VERSION="bookworm-slim"
ARG CLAUDE_VERSION="latest"

FROM node:${NODE_VERSION}-${OS_VERSION} AS base

# Install necessary packages
RUN apt-get update

ARG CLAUDE_VERSION

# Install Claude CLI
RUN npm install -g @anthropic-ai/claude-code@${CLAUDE_VERSION}

ENTRYPOINT ["claude"]
