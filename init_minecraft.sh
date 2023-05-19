#!/bin/bash

# add packages
apt-get -y update
apt-get -y install unzip zlibc openssl zip curl wget ca-certificates netcat

# install minio client CLI
wget 'https://dl.minio.io/client/mc/release/linux-amd64/mc' \
mv mc /usr/local/bin/mc
chmod 755 /usr/local/bin/mc

# install rcon CLI
wget 'https://github.com/itzg/rcon-cli/releases/download/1.4.8/rcon-cli_1.4.8_linux_amd64.tar.gz' \
tar -C /usr/local/bin -xzf rcon-cli_1.4.8_linux_amd64.tar.gz \
rm -f rcon-cli_1.4.8_linux_amd64.tar.gz
chmod 755 /usr/local/bin/rcon-cli

# create minecraft user
#mkdir /opt/minecraft
useradd -m -d /opt/minecraft -s /bin/bash minecraft
chown -R minecraft:minecraft /opt/minecraft
