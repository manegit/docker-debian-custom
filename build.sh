cd usrhomedir
tar -zcvf ../homedir.tar .
cd ..
gzip homedir.tar
docker build -t ghcr.io/manegit/docker-debian-custom:main .
