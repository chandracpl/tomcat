FROM tomcat:8.0
VOLUME /usr/local/tomcat
RUN apt update -y
RUN apt install wget -y
RUN apt install vim -y
WORKDIR /usr/local/tomcat/webapps/
RUN wget https://tomcat.apache.org/tomcat-9.0-doc/appdev/sample/sample.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

