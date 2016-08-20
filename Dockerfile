FROM python:2

RUN apt-get update && apt-get install -y \
    fuse \
 && rm -rf /var/lib/apt/lists/*

RUN pip install https://github.com/terencehonles/fusepy/tarball/0eafeb557e0e70926ed9450008ef17057d302391 \
    https://github.com/simon-weber/Unofficial-Google-Music-API/tarball/44fd2cce848dbcdb2ca4ab2111b9a0441aacc2dc \
    https://github.com/EnigmaCurry/GMusicFS/tarball/44d8630d9224a8ae38465b8cf4cb800759d8ff27

RUN sed -i 's/self.api.login(username, password)/self.api.login(username, password, deviceId)/' /usr/local/lib/python2.7/site-packages/gmusicfs/gmusicfs.py

RUN mkdir -p /root/music
ADD mount.sh /root

WORKDIR /root
