FROM miguelwill/debian-wine-vnc

LABEL maintainer "miguelwill@gmail.com"

ENV VNC_PASSWORD="secret"

ADD mp3tag.sh /usr/local/bin/
ADD mp3tagv298setup.exe /tmp/

RUN cd /tmp && xvfb-run wine /tmp/mp3tagv298setup.exe /S && rm /tmp/mp3tagv298setup.exe
ENTRYPOINT ["/main.sh"]
CMD ["default"]

VOLUME [/root]
