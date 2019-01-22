# docker-angular-7
angular 7

## Dockerfile
### Multistage 
example script
```
FROM ifirlana/docker-angular7:test as builder
ADD . .
RUN pwd && ls && npm install && npm rebuild node-sass && ng build
...
FROM alpine:3.7 
COPY --from=builder /root/compiler/dist /dist
...
```

## Docker Compose
example script `(in progress)`
```
version: '3'
services:
  ifirlana:
    image: ifirlana/docker-angular7:test
    deploy:
      resources:
        limits:
          cpus: '0.50'
          memory: 50M
        reservations:
          cpus: '0.25'
          memory: 20M
```