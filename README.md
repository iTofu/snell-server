<h1 align="center">snell-server</h1>

```bash
docker run -d --env PORT=13254 --env PSK=PSK_KEYS -p 13254:13254 -p 13254:13254/udp --name snell-server --restart=always leodaxia/snell-server:latest
```

|Name|Value|
|---|---|
|PORT|自定义端口，缺省 `13254`|
|PSK|自定义 PSK，缺省 自动生成|
|IPV6|是否支持 ipv6，缺省 `true`|
|CONFIG_DIR|自定义配置文件目录|

> Later…