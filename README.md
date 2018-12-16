# Docker Mp3tag via wine

## Buiding

    docker build . -t baztian/wine-mp3tag

## Usage

    docker run --rm -it -v /mnt/nas/multimedia/Music:/Music -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=${DISPLAY} baztian/wine-mp3tag

Now change directory to `Z:/Music`.