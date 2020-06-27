FROM nginx:alpine
#Build args
ARG BUILD_DATE
# Setting resource quota
ARG MIN_MEM=2G
ARG MAX_MEM=2G
#Adding Labels of build
LABEL org.label-schema.build-date=$BUILD_DATE

COPY /script /usr/share/nginx/html/
CMD (! pidof nginx) || sudo kill -9 $(pidof nginx)
