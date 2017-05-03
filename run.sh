#!/usr/bin/env bash

docker run \
    -it \
    --rm \
    --cap-add SYS_ADMIN \
    --device /dev/fuse \
    gmusicfs:1 /bin/bash
