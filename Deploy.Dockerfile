FROM tomcat:latest
RUN apt-get update && apt-get install maven -y && apt install git -y
ENV JAVA_HOME /opt/java/openjdk
RUN export JAVA_HOME
RUN mkdir app
WORKDIR /app
RUN git clone https://github.com/vinayakrj/java-war-project.git
WORKDIR /app/java-war-project/
RUN mvn package
