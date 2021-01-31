# https://github.com/microsoft/vscode-dev-containers/tree/master/containers/ubuntu
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-20.04

# Install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends make