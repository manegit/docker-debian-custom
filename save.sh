docker image save -o /tmp/docker-debian-custom.tar ghcr.io/manegit/docker-debian-custom:main
gzip /tmp/docker-debian-custom.tar
mv -f /tmp/docker-debian-custom.tar.gz ~/
