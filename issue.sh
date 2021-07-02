#!/bin/bash

docker run --rm -id -v "$(pwd)/out":/acme.sh -e Ali_Key=$Ali_Key -e Ali_Secret=$Ali_Secret --net=host --name=acme.sh neilpang/acme.sh daemon
docker exec acme.sh --set-default-ca --server letsencrypt
docker exec acme.sh --issue --dns dns_ali -d fun.dongfg.com -d *.fun.dongfg.com
docker stop acme.sh
