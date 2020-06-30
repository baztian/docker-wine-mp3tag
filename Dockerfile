FROM miguelwill/debian-wine-vnc

LABEL maintainer "miguelwill@gmail.com"

ENV VNC_PASSWORD="secret"

ADD main.sh /
ADD mp3tag.sh /usr/local/bin/
RUN chmod 777 /usr/local/bin/mp3tag.sh
ADD --chown=root:root mp3tag.zip /root/

# ADD mp3tagv298setup.exe /tmp/
# RUN cd /tmp && xvfb-run wine /tmp/mp3tagv298setup.exe /S && rm /tmp/mp3tagv298setup.exe

EXPOSE 5900/tcp
ENTRYPOINT ["/main.sh"]
CMD ["default"]


# VOLUME [/root]
