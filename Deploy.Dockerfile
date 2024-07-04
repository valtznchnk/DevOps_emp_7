FROM tomcat:latest
RUN apt-get update && apt-get install maven -y && apt install git -y
ENV JAVA_HOME /opt/java/openjdk
RUN export JAVA_HOME
WORKDIR /tmp/
RUN git clone https://github.com/vinayakrj/java-war-project.git
WORKDIR /tmp/java-war-project/
RUN mvn package
VOLUME /home/devops_learning/employment_7/tmp
RUN cp /tmp/java-war-project/target/my-app.war /home/devops_learning/employment_7/tmp
