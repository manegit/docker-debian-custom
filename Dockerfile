# base image
FROM debian:latest

ENV USER=debian
ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt update && apt install -y python3-pip mc ncdu aria2 htop fd-find nano busybox \
git git-lfs lynx jq bc dos2unix gawk sed p7zip gzip markdown neofetch \
tmux curl cmatrix w3m bash figlet nmap sudo emacs gnupg \
less at newsboat buku ddgr caca-utils && rm -rf /var/lib/apt/lists/*

# upgrade pip
RUN pip3 install --upgrade pip

# install Python modules
COPY requirements.txt /usr/src/py3/
RUN pip3 install --no-cache-dir -r /usr/src/py3/requirements.txt

RUN useradd -m -s /bin/bash -G sudo $USER && echo "$USER:$USER" | chpasswd

COPY homedir.tar.gz /home/$USER/

USER $USER
WORKDIR /home/$USER

RUN gunzip homedir.tar.gz && tar -xvf homedir.tar . && \
rm homedir.tar && \
mkdir bin

USER root

RUN chown -R $USER:users .
#chmod u+x bin/* && \

USER $USER

# run the applicationn
CMD ["/bin/bash"]