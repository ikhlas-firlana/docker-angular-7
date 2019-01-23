FROM alpine:3.7

RUN apk update
RUN apk --no-cache add \
    tzdata \
    su-exec \
    ca-certificates \
    s6 \
    curl \
    openssh \
    bash \
    make 
RUN apk --no-cache add nodejs-lts --update 
RUN npm install -g @angular/cli@7.2.2 
WORKDIR /
COPY . /
