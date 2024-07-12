FROM tomcat:latest
RUN apt-get update && apt-get install maven -y && apt install git -y
ENV JAVA_HOME /opt/java/openjdk
RUN export JAVA_HOME
WORKDIR /tmp/
RUN git clone https://github.com/vinayakrj/java-war-project.git

