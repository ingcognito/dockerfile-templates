FROM alpine:latest

RUN addgroup -S dockergroup && adduser -S dockeruser -G dockergroup
RUN  mkdir /script
#Adding Labels of build

USER dockeruser

COPY script/main.sh /script
WORKDIR /script
#Execution
CMD ["sh","./main.sh"]
