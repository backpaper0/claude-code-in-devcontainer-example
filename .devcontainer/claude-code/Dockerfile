FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

ARG USERNAME=vscode

WORKDIR /workspace

RUN mkdir -p /workspace /home/${USERNAME}/.claude && \
    chown -R ${USERNAME}:${USERNAME} /workspace /home/${USERNAME}/.claude && \
    mkdir /commandhistory && \
    touch /commandhistory/.bash_history && \
    chown -R ${USERNAME}:${USERNAME} /commandhistory && \
    # common-utilsによって無制限のsudoが許可されているので、取り消す
    # https://github.com/devcontainers/features/blob/849a5e2a7fd2c8109531cec9e63bfde12472407a/src/common-utils/main.sh#L440-L445
    [ -e /etc/sudoers.d/${USERNAME} ] && rm /etc/sudoers.d/${USERNAME}

USER root
