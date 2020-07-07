# Docker Mp3tag via wine

This is a dockerized version of the Windows software
[Mp3tag](https://www.mp3tag.de/) running in wine. Enjoy!

## Buiding

    docker build . -t miguelwill/debian-wine-mp3tag

## Usage

deploy using docker-compose with the sample file provided in https://github.com/miguelwill/debian-wine-mp3tag, or activate a container with port -p 5900 and a volume -v /my/files:/data

remember to mount a volume in "/data" on the container so that it can access your files

then you only need to login with a VNC client to gain access to the application by connecting to the ip of the equipment, to port 5900
