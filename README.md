# iQbit Docker Image
Public repo that builds the [iQbit](https://github.com/ntoporcov/iQbit/blob/master/server/README.md) docker image

## Docker run:
```sh
docker run -d \
  --name qbittorrent-iQbit \
  --restart unless-stopped \
  -p 8081:8081 \
  -e TZ=Europe/Bucharest \
  -e QBIT_HOST="http://localhost:8080" \
  ghcr.io/rursache/iqbit-docker:latest
```
