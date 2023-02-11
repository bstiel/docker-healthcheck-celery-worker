## Docker HEALTHCHECK for Celery Workers

This repository contains the source code used in my blog post:

https://www.distributedpython.com/2023/02/10/docker-healthcheck-for-celery-worker/


This repository shows how to implement the Docker HEALTHCHECK directive for a
Celery worker node.

Bring up the Docker compose stack:

```bash
docker compose up -d
```

Check the Celery worker container's health status (next to the status column):

```bash
docker compose ps
```

Check how the worker's health status behaves after each of the following events 
(remember to run a `docker compose up -d` after each scenario to bring the stack back into its original state): 

Cause disruption:

```bash
docker compose rm -s -f celery-broker
```

Scale number of workers:

```bash
docker compose up -d --scale celery-worker=2
```
