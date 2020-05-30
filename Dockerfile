FROM alpine:3.11

RUN apk --update add npm && \
    npm install -g autoprefixer postcss-cli && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "postcss" ]
