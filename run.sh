#!/usr/bin/env bash

docker run \
    -it \
    --rm \
    --cap-add SYS_ADMIN \
    --device /dev/fuse \
    gmusicfs:1 /bin/bash

echo "[credentials]" > ~/.gmucisfs
echo "GOOGLE_USERNAME = " $GOOGLE_USERNAME >> ~/.gmucisfs
echo "GOOGLE_PASSWORD = " $GOOGLE_PASSWORD  >> ~/.gmucisfs
echo "GOOGLE_DEVICE_ID = " $GOOGLE_DEVICE_ID  >> ~/.gmucisfs
chmod 600 ~/.gmusicfs
echo "Starting gmusicFS!!"
gmusicfs -t /root/music