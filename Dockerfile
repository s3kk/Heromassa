FROM ubuntu:24.04 AS base
ARG TZ

ENV TZ=${TZ}
ENV WD=/home/server

USER root
WORKDIR ${WD}

COPY ./install-libs.sh .

RUN DEBIAN_FRONTEND=noninteractive \
    ./install-libs.sh

FROM base AS build

COPY ./src ./src

RUN cd ./src && \
    ./autogen.sh && \
    ./configure --enable-mysql --enable-root-permission --enable-server-diag && \
    ./build.sh

FROM base AS server

RUN rm -f install-libs.sh && \
    apt clean

COPY --from=build ${WD}/src/theforgottenserver /usr/bin/tfs
