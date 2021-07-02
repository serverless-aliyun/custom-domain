#!/bin/bash

docker run --rm -i -v "$(pwd)/out":/acme.sh -e Ali_Key=$Ali_Key -e Ali_Secret=$Ali_Secret neilpang/acme.sh --issue --dns -d fun.dongfg.com -d *.fun.dongfg.com
