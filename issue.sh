#!/bin/bash

docker run --rm -i -v "$(pwd)/out":/acme.sh neilpang/acme.sh --issue --dns -d fun.dongfg.com -d *.fun.dongfg.com
