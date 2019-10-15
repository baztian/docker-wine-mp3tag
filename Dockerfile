FROM miguelwill/debian-wine-vnc

LABEL maintainer "miguelwill@gmail.com"


RUN cd /tmp && curl -O https://download.mp3tag.de/mp3tagv298setup.exe && xvfb-run wine /tmp/mp3tagv291setup.exe /S && rm /tmp/mp3tagv298setup.exe
ENTRYPOINT wine /root/.wine/drive_c/Program\ Files\ \(x86\)/Mp3tag/Mp3tag.exe
