FROM ifirlana/docker-angular7:test as builder
ADD . .
RUN pwd && ls && npm install && npm rebuild node-sass && ng build

FROM alpine:3.7
COPY --from=builder ./dist ./dist
