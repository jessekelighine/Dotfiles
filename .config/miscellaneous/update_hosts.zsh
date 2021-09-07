#!/usr/bin/zsh

# This file updates the /etc/hosts file to stop malicious websites and block ads.

HOSTS_URL=https://someonewhocares.org/hosts/zero/hosts
TEMP_HOSTS=~/Desktop/.temp_hosts.txt
HOSTS_FILE=/etc/hosts
VIM_COMMAND='call search("^# BEGIN{{{$") | exe "norm jVGkxk" | read '$TEMP_HOSTS' | x'

curl $HOSTS_URL > $TEMP_HOSTS
sudo vim +$VIM_COMMAND $HOSTS_FILE
rm -rf $TEMP_HOSTS
