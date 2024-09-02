FROM python:3.12-slim as builder

WORKDIR /aviary

ARG VERSION

LABEL org.opencontainers.image.title="aviary" \
    org.opencontainers.image.description="Composable inference and postprocessing pipeline for remote sensing data" \
    org.opencontainers.image.authors="Marius Maryniak (marius.maryniak@w-hs.de)" \
    org.opencontainers.image.licenses="GPL-3.0" \
    org.opencontainers.image.version=$VERSION \
    org.opencontainers.image.url="https://github.com/geospaitial-lab/aviary" \
    org.opencontainers.image.source="https://github.com/geospaitial-lab/aviary" \
    org.opencontainers.image.documentation="https://geospaitial-lab.github.io/aviary"

RUN adduser --disabled-password --gecos "" aviary_user

USER aviary_user
