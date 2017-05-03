FROM python:2

RUN apt-get update && apt-get install -y \
    fuse \
 && rm -rf /var/lib/apt/lists/*

RUN pip install https://github.com/benklop/GMusicFS/tarball/master

RUN mkdir -p /root/music
ADD mount.sh /root
VOLUME ["/root/music"]
ENV GOOGLE_USERNAME ""
ENV GOOGLE_PASSWORD ""
ENV GOOGLE_DEVICE_ID ""
WORKDIR /root
