FROM pytorch/pytorch:latest


ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        sudo \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN conda install pandas seaborn scikit-learn

ARG USERNAME=vscode
ARG GROUPNAME=vscode
ARG UID=1000
ARG GID=1000
ARG PASSWORD=pass
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID -G sudo $USERNAME && \
    echo $USERNAME:$PASSWORD | chpasswd && \
    echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $USERNAME