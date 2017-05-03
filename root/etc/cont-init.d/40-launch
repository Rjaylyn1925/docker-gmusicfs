#!/usr/bin/env bash

touch /root/.gmusicfs
chmod 600 /root/.gmusicfs

echo "[credentials]" >> /root/.gmusicfs
echo "username = ${GOOGLE_USERNAME}" >> /root/.gmusicfs
echo "password = ${GOOGLE_PASSWORD}" >> /root/.gmusicfs
echo "deviceId = ${GOOGLE_DEVICE_ID}" >> /root/.gmusicfs

gmusicfs /root/music -v --allusers

rm /root/.gmusicfs
