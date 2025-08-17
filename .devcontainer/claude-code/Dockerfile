FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

WORKDIR /workspace

RUN mkdir -p /workspace /home/vscode/.claude && \
    chown -R vscode:vscode /workspace /home/vscode/.claude

USER root
