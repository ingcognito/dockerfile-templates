FROM golang:1.14
ARG BUILD_DATE
ARG MIN_MEM=2G
ARG MAX_MEM=2G
LABEL org.label-schema.build-date=$BUILD_DATE

RUN  mkdir /src
COPY src/main.go /src
WORKDIR /src
#Execution
CMD ["go","run","./main.go"]
