FROM python:2

RUN apt-get update && apt-get install -y \
    fuse \
 && rm -rf /var/lib/apt/lists/*

RUN pip install https://github.com/terencehonles/fusepy/tarball/0eafeb557e0e70926ed9450008ef17057d302391 \
    https://github.com/simon-weber/Unofficial-Google-Music-API/tarball/44fd2cce848dbcdb2ca4ab2111b9a0441aacc2dc \
    https://github.com/HappyBasher/GMusicFS/tarball/b91ec9fba85e04baf96142e832a31178e2209cfc

VOLUME /data/music

WORKDIR /root
ADD mount.sh /root
CMD /root/mount.sh
