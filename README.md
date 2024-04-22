# frp

Container image for fatedier/frp

## Usage

```shell
docker pull yankeguo/frp:frps-0.57.0
#docker pull ghcr.io/yankeguo/frp:frps-0.57.0
docker run -v /path/to/frps.toml:/etc/frp/frps.toml -p 7000:7000 -p 7500:7500 -p 8080:8080 yankeguo/frp:frps-0.57.0
```

```shell
docker pull yankeguo/frp:frpc-0.57.0
#docker pull ghcr.io/yankeguo/frp:frpc-0.57.0
docker run -v /path/to/frpc.toml:/etc/frp/frpc.toml yankeguo/frp:frpc-0.57.0
```

## Credits

GUO YANKE, MIT License

fatedier/frp, Apache License 2.0
