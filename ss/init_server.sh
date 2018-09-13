#!/bin/bash

# @Author: chenleli
# @Date:   2018-7-15 10:52:15
# @Email:  chenle.li@student.ecp.fr
# @Filename: init_server.sh
# @Last modified by:   lichenle
# @Last modified time: 2018-7-24 21:43:56

while getopts "a:"; do
  case $opt in
    n)
      echo "Varname get."
      ;;
    \?) echo "Invalid option"
      ;;
    esac
done

scp -o StrictHostKeyChecking=no shadowsocks.json root@$1:/etc
ssh -o StrictHostKeyChecking=no root@$1 -p 22 << eeooff

easy_install pip
pip install shadowsocks
yum install -y openssl-devel gcc swig python-devel autoconf libtool
pip install M2Crypto
yum install -y libevent
pip install greenlet
pip install gevent
nohup ssserver -c /etc/shadowsocks.json > /dev/null 2>&1 &

eeooff
echo "Warning: Check IP in json file."
echo done!
