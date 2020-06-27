FROM alpine:latest
ARG BUILD_DATE
ARG MIN_MEM=2G
ARG MAX_MEM=2G

RUN  apk add --no-cache rust &&  mkdir /src
LABEL org.label-schema.build-date=$BUILD_DATE

COPY src/main.rs /src
WORKDIR /src
RUN rustc main.rs
CMD ["./main"]
