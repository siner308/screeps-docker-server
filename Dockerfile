FROM node:12.12

COPY ./init.sh /init.sh
COPY ./entrypoint.sh /entrypoint.sh

WORKDIR /screeps

RUN npm install screeps \
    && chmod +x /entrypoint.sh \
    && chmod +x /init.sh \
    && /init.sh

ENTRYPOINT ["/entrypoint.sh"]
