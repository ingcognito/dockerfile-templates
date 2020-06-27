FROM alpine:latest
ARG BUILD_DATE
ARG MIN_MEM=2G
ARG MAX_MEM=2G

# This env var will force the JVM to terminate if more memory is allocated than specified here
ENV _JAVA_OPTIONS="-Xms${MIN_MEM} -Xmx${MAX_MEM}"

RUN apk update && \
    apk fetch openjdk8 && \
    apk add --no-cache openjdk8 && \
    mkdir app;

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"
#Adding Labels of build

WORKDIR /app

# Since USER only affects RUN, CMD and ENTRYPOINT 
# And not WORKDIR, we have to modify ownership of the workdir
RUN chown nobody. /app

# Copy as Nobody
COPY --chown=nobody app/app.java /app
USER nobody
#Compiling source
RUN javac app.java
#Execution
CMD ["java", "app"]
