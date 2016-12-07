#!/bin/sh

# CREATED BY LUO YU
# DATE: MONDAY, DECEMBER 5, 2016

# UPDATE
apt-get update

# UPGRADE
apt-get upgrade -y

# INSTALL APP
apt-get install -y git zsh vim nginx mysql-server php5-fpm php5-mysqlnd

# MOUNT DATA DISK BY DEFAULT
mkdir /dimo
echo '/dev/xvdb1 /dimo ext4 defaults 0 0' >> /etc/fstab
mount -a

# INSTALL OH-MY-ZSH
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
