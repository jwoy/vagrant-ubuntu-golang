#!/bin/bash

GOSOURCE=https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
GOTARGET=/usr/local
PROFILE=/home/ubuntu/.profile

# download Go tools to $GOTARGET/go
curl -sSL $GOSOURCE -o /tmp/go.tar.gz
tar -xf /tmp/go.tar.gz -C $GOTARGET
rm /tmp/go.tar.gz

# apply environment configuration to the user's .profile
printf "\n" >> $PROFILE
printf "# golang configuration\n" >> $PROFILE
printf "export GOROOT=$GOTARGET/go\n" >> $PROFILE
printf "export GOPATH=/vagrant/go\n" >> $PROFILE
printf "export PATH=\$PATH:$GOTARGET/go/bin:\$GOPATH/bin\n" >> $PROFILE

