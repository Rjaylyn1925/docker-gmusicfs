
## Usage

```
docker create \
  --name=GmusicFS \
  --net=host \
  -v <path to mount music>:/root/music \
  -e GOOGLE_USERNAME=<username> -e GOOGLE_PASSWORD=<password>  \
  -e GOOGLE_DEVICE_ID=<deviceid> \
  digitalhigh/gmusicfs
```

## Parameters

`The parameters are split into two halves, separated by a colon, the left hand side representing the host and the right the container side.

* `-v /root/music` - Where to mount your music on the local filesystem
* `-e GOOGLE_USERNAME` Your google email address
* `-e GOOGLE_PASSWORD` Your google password
* `-e GOOGLE_DEVICE_ID` The device ID to submit to google

It is based on alpine linux with s6 overlay, for shell access whilst the container is running do `docker exec -it muximux /bin/bash`.


## Info

* Shell access whilst the container is running: `docker exec -it GmusicFS /bin/bash`
* To monitor the logs of the container in realtime: `docker logs -f GmusicFS`
