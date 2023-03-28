docker image save -o /tmp/docker-debian-custom.tar mane1docker/debian-custom:latest
gzip /tmp/docker-debian-custom.tar
mv -f /tmp/docker-debian-custom.tar.gz ~/
