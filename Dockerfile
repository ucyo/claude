ARG NODE_VERSION=24.14.1
ARG OS_VERSION=bookworm-slim
ARG CLAUDE_VERSION=2.1.101

FROM node:${NODE_VERSION}-${OS_VERSION} AS base

# Install necessary packages
RUN apt-get update

ARG CLAUDE_VERSION

# Install Claude CLI
RUN npm install -g @anthropic-ai/claude-code@${CLAUDE_VERSION}

CMD ["claude"]
