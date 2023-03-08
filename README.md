# 「Let's Go」のソースコード

https://lets-go.alexedwards.net/

## Docker起動

```sh
$ docker-compose build
$ docker-compose up -d
```

## Webサーバー起動

```sh
$ docker exec -it snippetbox-app go run ./cmd/web
```

## Docker停止

```sh
$ docker-compose down
```
