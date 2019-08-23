FROM java:8

RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.20/bin/apache-tomcat-8.0.20.tar.gz
RUN tar xzf apache-tomcat-8.0.20.tar.gz
RUN sed -i 's/port="8080"/port="80"/' /apache-tomcat-8.0.20/conf/server.xml
CMD cp /var/lib/jenkins/workspace/test/target/WebApp.war apache-tomcat-8.0.20/webapps/
EXPOSE 8080
CMD apache-tomcat-8.0.20/bin/startup.sh
