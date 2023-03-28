gunzip -k ../docker-debian-custom.tar.gz
docker image load -i ../docker-debian-custom.tar
rm ../docker-debian-custom.tar
