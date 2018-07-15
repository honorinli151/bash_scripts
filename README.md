# bash_scripts
## ss folder
[init_server.sh](https://github.com/honorinli151/bash_scripts/blob/master/ss/init_server.sh)
is a bash script for initializing a new shadowsocks server.

*Note: Please make an config json file and put it in /etc/shadowsocks.json, format of this json is below.*
```json
{
    "server":"Your server IP",
    "server_port": 1080,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"Your password",
    "timeout":600,
    "method":"aes-256-cfb",
    "fast_open": false,
    "workers": 1
}
```
TODO Json File modifier.

## ssh folder
TODO Add Varnamecd
