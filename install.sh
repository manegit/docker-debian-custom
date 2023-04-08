docker run -it -v ~:/share -v /var/run/docker.sock:/var/run/docker.sock -e TZ=Europe/Berlin --name debian-custom ghcr.io/manegit/docker-debian-custom:latest /bin/bash
