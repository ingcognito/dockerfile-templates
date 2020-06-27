FROM node:current-alpine

ARG BUILD_DATE
ARG MIN_MEM=2G
ARG MAX_MEM=2G

LABEL org.label-schema.build-date=$BUILD_DATE

WORKDIR /app
USER node
COPY app/app.js /app
#Execution
CMD ["node","./app.js"]
