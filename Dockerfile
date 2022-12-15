FROM archlinux:latest

WORKDIR /gitea

RUN pacman -Sy --noconfirm gitea

CMD ["gitea", "web"]
