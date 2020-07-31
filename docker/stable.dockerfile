FROM node:lts-alpine3.11

ARG RELEASE_VERSION=2.13.0

RUN apk add wget unzip

WORKDIR /opt/openvidu-call

# Install openvidu-call

# Entrypoint
COPY ./entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh && \
    npm install -g nodemon

CMD /usr/local/bin/entrypoint.sh