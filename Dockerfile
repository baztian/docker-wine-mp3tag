# FROM miguelwill/debian-wine-vnc
FROM debian:buster

LABEL maintainer "miguelwill@gmail.com"

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    x11vnc \
    xvfb \
    xterm \
    curl && \
    apt-get clean

# Create and configure the VNC user
ARG VNCPASS
ENV VNCPASS ${VNCPASS:-secret}

RUN useradd remote --create-home --shell /bin/bash --user-group --groups adm,sudo && \
        echo "remote:$VNCPASS" | chpasswd

# Use the latest version of winetricks
RUN curl -SL 'https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks' -o /usr/local/bin/winetricks \
      && chmod +x /usr/local/bin/winetricks
RUN dpkg --add-architecture i386 && \
          apt-get update && \
          apt-get upgrade -y && \
          DEBIAN_FRONTEND=noninteractive apt-get install -y \
          wget \
          unrar-free unzip cabextract \
          wine && \
          apt-get clean && \
          rm -rf /var/lib/apt/lists/*

ENV VNC_PASSWORD secret
ENV mp3tag mp3tag

COPY main.sh /
ADD mp3tag.sh /usr/local/bin/
RUN chmod 777 /usr/local/bin/mp3tag.sh
COPY --chown=root:root $mp3tag /root/$mp3tag

# ADD mp3tagv298setup.exe /tmp/
# RUN cd /tmp && xvfb-run wine /tmp/mp3tagv298setup.exe /S && rm /tmp/mp3tagv298setup.exe

EXPOSE 5900/tcp
WORKDIR ["/data"]
ENTRYPOINT ["/main.sh"]
CMD ["default"]


VOLUME [/data]
