#!/bin/bash

docker run --rm -id -v "$(pwd)/out":/acme.sh -e Ali_Key=$Ali_Key -e Ali_Secret=$Ali_Secret --net=host --name=acme.sh neilpang/acme.sh daemon
docker exec acme.sh --register-account --eab-kid 4bxSadF_vlu61nSvnY2tpw --eab-hmac-key l8_R5ntb28gzo4xTAzxuOLfNbkXe5pGm_p9UvlnYqTVP6NDo4xBOb8xcXelflXcxvAl2NZLZ5bU-Vtfa2ABUlg
docker exec acme.sh --issue --dns dns_ali -d fun.dongfg.com -d *.fun.dongfg.com
docker stop acme.sh
