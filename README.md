## Serverless CustomDomain

### SSL 证书自动更新

- acme.sh 使用 dns 模式
- 配置 Ali_Key Ali_Secret 环境变量
- 上传到制品库

> 证书下载

```
curl -fL "https://dongfg-generic.pkg.coding.net/serverless-aliyun/secrets/ssl.fun.key?version=latest" -o ssl.fun.key
curl -fL "https://dongfg-generic.pkg.coding.net/serverless-aliyun/secrets/ssl.fun.cer?version=latest" -o ssl.fun.cer
```

> 触发证书更新

```
# 项目临牌中查看
curl -u <用户名>:<密码> \
   -v -X POST  'https://dongfg.coding.net/api/cci/job/673087/trigger' \
   -H 'Content-Type: application/json' \
   -d '{ "ref": "master", "envs": [] }'
```
