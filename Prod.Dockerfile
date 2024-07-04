FROM tomcat:latest
RUN apt-get update && apt-get install maven -y && apt install git -y
ENV JAVA_HOME /opt/java/openjdk
RUN export JAVA_HOME
COPY /home/tmp /tmp
WORKDIR /tmp
RUN cp /tmp/my-app.war /usr/local/tomcat/webapps/
