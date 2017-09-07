#!/bin/bash

GOSOURCE=https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
GOTARGET=/usr/local
PROFILE=/home/ubuntu/.profile

# download Go tools to $GODEST/go
curl -sSL $GOSOURCE -o /tmp/go.tar.gz
tar -xf /tmp/go.tar.gz -C $GOTARGET
rm /tmp/go.tar.gz

# apply environment configuration to the user's .profile
printf "\n# golang configuration" >> $PROFILE
printf "\nexport PATH=\$PATH:$GOTARGET/go/bin" >> $PROFILE
printf "\nexport GOROOT=$GOTARGET/go" >> $PROFILE
printf "\nexport GOPATH=/vagrant/go\n" >> $PROFILE

