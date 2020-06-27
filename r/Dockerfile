FROM alpine:latest
#Build args
ARG BUILD_DATE
# Setting resource quota
ARG MIN_MEM=2G
ARG MAX_MEM=2G

RUN  apk add --no-cache R &&  mkdir /src
#Adding Labels of build
LABEL org.label-schema.build-date=$BUILD_DATE

COPY src/script.R /src
WORKDIR /src
#Execution
CMD ["Rscript","./script.R"]
