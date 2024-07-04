FROM tomcat:latest
RUN apt-get update && apt-get install maven -y && apt install git -y
ENV JAVA_HOME /opt/java/openjdk
RUN export JAVA_HOME
VOLUME /home/devops_learning/employment_7/tmp
WORKDIR /home/devops_learning/employment_7/tmp
RUN cp /home/devops_learning/employment_7/tmp/my-app.war /usr/local/tomcat/webapps/
