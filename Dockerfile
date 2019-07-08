FROM openjdk:10-jre-slim
COPY ./target/config-server.jar /opt/lib/
RUN mkdir /var/lib/config-repo
COPY config-repo /var/lib/config-repo
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/lib/config-server.jar"]
VOLUME /var/lib/config-repo
EXPOSE 9090