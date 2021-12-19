#!/bin/bash

sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev screen


git clone https://github.com/xmrig/xmrig.git


mkdir xmrig/build && cd xmrig/build


cmake ..


make -j$(nproc)

screen

./xmrig -o pool.minexmr.com:443 -u 43rXosXKSrR9Ugs6vogKjqfuGkVFecwA5RSHEPP2md32AWhL44XyrSzDNGyH8LZ2yv5DnigYdvcAxacAMsXj7woXHBEPYTV -k --tls --rig-id atlantic
