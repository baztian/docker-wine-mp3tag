FROM miguelwill/debian-wine-vnc

LABEL maintainer "miguelwill@gmail.com"

ENV VNC_PASSWORD="secret"

RUN cd /tmp && curl -O https://download.mp3tag.de/mp3tagv298setup.exe && xvfb-run wine /tmp/mp3tagv298setup.exe /S && rm /tmp/mp3tagv298setup.exe
ENTRYPOINT ["/main.sh"]
CMD ["default"]
