FROM php:7.4-apache
ARG BUILD_DATE
# Setting resource quota
ARG MIN_MEM=2G
ARG MAX_MEM=2G
#Adding Labels of build
LABEL org.label-schema.build-date=$BUILD_DATE

COPY app/ /var/www/html
EXPOSE 80
