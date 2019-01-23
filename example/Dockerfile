FROM ifirlana/docker-angular7:v0.0.1 as builder
ADD . .
RUN pwd && \
    ls && \
    cd testBuild && \
    npm install && npm rebuild node-sass && \
    ng build && pwd && ls

FROM alpine:3.7
RUN pwd && ls
COPY --from=builder /testBuild/dist/ ./dist
RUN pwd && ls

