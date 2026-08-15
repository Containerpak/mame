FROM ghcr.io/containerpak/mesa64:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/mame"

RUN apt-get update && \
    apt-get install -y --no-install-recommends mame && \
    cpak-clean-junk

COPY mame.desktop /usr/share/applications/mame.desktop
COPY icon.png /usr/share/icons/hicolor/128x128/apps/mame.png

