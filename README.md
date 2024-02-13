# KubSU 4MM 2024 Map

Hello, World!

Автор: `binakot@gmail.com`

```bash
$ git clone
$ git add .
$ git commit -m "message"
$ git push
```

---

# Docker 

```bash
$ docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres:16.1
$ docker run --name pgadmin -e 'PGADMIN_DEFAULT_EMAIL=user@domain.com' -e 'PGADMIN_DEFAULT_PASSWORD=password' -p 80:80 -d dpage/pgadmin4:latest
```

## How to run

### Docker Compose

```bash
$ docker compose up -d
$ docker compose down
```
