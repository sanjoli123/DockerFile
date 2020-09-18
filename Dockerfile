FROM openjdk:8-jdk-alpine
RUN apk add --update curl 
ENV APP_FILE spring-boot.jar
ENV APP_HOME /home/cloud_user/app
EXPOSE 80
COPY target/$APP_FILE $APP_HOME/
WORKDIR $APP_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar $APP_FILE"]