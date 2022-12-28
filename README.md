<h1 align="center">snell-server</h1>

```bash
docker run -d [--env PORT=SERVER_PORT] [--env PSK=PSK_KEYS] -p PORT:PORT -p PORT:PORT/udp --name snell-server [-v CONFIG_DIR:/etc/snell-server/] --restart=always leodaxia/snell-server:beta

docker run -d --env PORT=6161 --env PSK=PSK_KEYS -p 6161:6161 -p 6161:6161/udp --name snell-server -v /etc/snell-server/:/etc/snell-server/ --restart=always leodaxia/snell-server:beta
```

|Name|Value|
|---|---|
|SERVER_PORT|自定义端口，缺省 `6161`|
|PSK_KEYS|自定义 PSK，缺省 自动生成|
|CONFIG_DIR|自定义配置文件目录|

> Later…