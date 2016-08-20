#!/usr/bin/env bash

docker run \
    -it \
    --rm \
    --cap-add SYS_ADMIN \
    --device /dev/fuse \
    -e GOOGLE_USERNAME=REPLACE_WITH_USERNAME \
    -e GOOGLE_PASSWORD=REPLACE_WITH_PASSWORD \
    -e GOOGLE_DEVICE_ID=REPLACE_WITH_DEVICE_ID \
    gmusicfs:1 /bin/bash
