FROM python:2

RUN apt-get update && apt-get install -y \
    fuse \
 && rm -rf /var/lib/apt/lists/*

RUN pip install https://github.com/terencehonles/fusepy/tarball/master \
    https://github.com/simon-weber/Unofficial-Google-Music-API/tarball/develop \
    https://github.com/EnigmaCurry/GMusicFS/tarball/master

RUN sed -i 's/self.api.login(username, password)/self.api.login(username, password, deviceId)/' /usr/local/lib/python2.7/site-packages/gmusicfs/gmusicfs.py

RUN mkdir -p /root/music
ADD mount.sh /root

WORKDIR /root
