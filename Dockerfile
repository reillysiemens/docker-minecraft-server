FROM fedora:latest

RUN dnf install -y \
    jq \
    curl \
    java-latest-openjdk

WORKDIR /minecraft

COPY bin /minecraft/bin
COPY lib /minecraft/lib

RUN groupadd --gid=1000 minecraft \
    && useradd \
        --no-create-home \
        --comment='Minecraft' \
        --uid=1000 \
        --gid=1000 \
        --home-dir='/' \
        --shell='/sbin/nologin' \
        minecraft \
    && mkdir -m 777 /minecraft/data \
    && chown minecraft:minecraft /minecraft/data

VOLUME ["/minecraft/data"]

USER minecraft:minecraft

CMD /minecraft/bin/fetch-latest-server && /minecraft/bin/start-minecraft
