FROM tomee:8-jre-7.0.3-plus

ADD *.war /usr/local/tomee/webapps/
##COPY *.jar /usr/local/tomcat/lib
EXPOSE 8080

CMD ["catalina.sh","run"]
