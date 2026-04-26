# Demo Rails Bootstrap

A Rails 7 demo app with Bootstrap 5, using Docker Compose for local development.

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (or Docker + Docker Compose)

## Running the app

**Start the stack:**

```bash
docker compose up -d
```

This starts two services — the Rails app on port `3000` and a PostgreSQL 16 database. On first boot, the entrypoint automatically runs `db:prepare` to create and migrate the database.

**Open the app:**

```
http://localhost:3000
```

**Stop the stack:**

```bash
docker compose down
```

## Stack

| Service | Image / Runtime | Port |
|---------|----------------|------|
| app | Ruby 3.3.6 / Rails 7.2 | 3000 |
| db | PostgreSQL 16 | 5432 |

> The database does not persist between `docker compose down` / `up` cycles by default. To enable persistence, uncomment the `volumes` block in `compose.yml`.
