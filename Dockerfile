FROM baztian/wine

RUN cd /tmp && curl -O https://download.mp3tag.de/mp3tagv291setup.exe && xvfb-run wine /tmp/mp3tagv291setup.exe /S && rm /tmp/mp3tagv291setup.exe
ENTRYPOINT wine /wine/drive_c/Program\ Files\ \(x86\)/Mp3tag/Mp3tag.exe
