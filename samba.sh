#!/usr/bin/env bash

adduser ${SAMBA_USERNAME}
usermod -aG root ${SAMBA_USERNAME}
(echo ${SAMBA_PASSWORD}; echo ${SAMBA_PASSWORD}) | smbpasswd -s -a ${SAMBA_USERNAME}

echo "[music]" >> /etc/samba/smb.conf
echo "path = /root/music" >> /etc/samba/smb.conf
echo "valid users = ${SAMBA_USERNAME}" >> /etc/samba/smb.conf
echo "read only = yes" >> /etc/samba/smb.conf

service smbd restart
