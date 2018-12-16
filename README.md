# Docker Mp3tag via wine

This is a dockerized version of the Windows software
[Mp3tag](https://www.mp3tag.de/) running in wine.

## Buiding

    docker build . -t baztian/wine-mp3tag

## Usage

    docker run --rm -it -v /mnt/nas/multimedia/Music:/Music -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=${DISPLAY} baztian/wine-mp3tag

Now change directory to `Z:/Music`.