FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

WORKDIR /workspace

RUN mkdir -p /workspace /home/vscode/.claude && \
    chown -R vscode:vscode /workspace /home/vscode/.claude && \
    mkdir /commandhistory && \
    touch /commandhistory/.bash_history && \
    chown -R vscode:vscode /commandhistory && \
    rm /etc/sudoers.d/vscode

USER root
