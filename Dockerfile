FROM archlinux:latest

WORKDIR /gitea

RUN pacman -Sy --noconfirm gitea

RUN useradd --no-create-home --shell=/bin/false run && usermod -L run

EXPOSE 22 3000

USER run

CMD ["gitea", "web"]
