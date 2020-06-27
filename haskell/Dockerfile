FROM alpine:latest
ARG BUILD_DATE
ARG MIN_MEM=2G
ARG MAX_MEM=2G

RUN  apk add --no-cache build-base perl ncurses-libs ghc &&  mkdir /src
LABEL org.label-schema.build-date=$BUILD_DATE

COPY src/main.hs /src
WORKDIR /src
RUN ghc -o main main.hs
#Execution
CMD ["./main"]
