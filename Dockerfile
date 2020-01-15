FROM tomcat:8.0
RUN apt update -y
RUN apt install wget -y
RUN apt install vim -y
RUN wget https://tomcat.apache.org/tomcat-9.0-doc/appdev/sample/sample.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

