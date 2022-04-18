FROM archlinux:base-devel

RUN pacman --noconfirm -Syu && \
    pacman --noconfirm -S git neovim curl

# default user
ARG USER=arch
# default password for user
ARG PW=arch
# UID an d GID
ARG UID=1000
ARG GID=1000

RUN useradd -m ${USER} --uid=${UID} && echo "${USER}:${PW}" | chpasswd
RUN echo "root:${PW}" | chpasswd
# Adding user in SUDOERS
RUN echo "${USER} ALL=(ALL) ALL" >> /etc/sudoers.d/${USER}

USER ${UID}:${GID}
WORKDIR /home/${USER}
COPY contents/.bashrc .

RUN mkdir -p ~/.config

COPY contents/devel.sh .
