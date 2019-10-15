# Docker Mp3tag via wine

This is a dockerized version of the Windows software
[Mp3tag](https://www.mp3tag.de/) running in wine. Enjoy!

## Buiding

    docker build . -t miguelwill/debian-wine-mp3tag

## Usage

    connect with VNC client to IP of base host
    Fluxbox run from main.sh and Mp3Tag run from app.sh on boot
    open Bash and run "mp3tag.sh" script 
