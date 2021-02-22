FROM ubuntu:20.04
LABEL maintainer="Jorge Niedbalski <jnr@metaklass.org>"

WORKDIR .
RUN apt update -yyq && apt -yyq install ca-certificates
RUN update-ca-certificates

COPY ./nginx-log-exporter /nginx-log-exporter
