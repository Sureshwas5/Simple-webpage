FROM tomcat:9.0-jdk11
# remove default apps if you want
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/simple-webpage.war /usr/local/tomcat/webapps/simple-webpage.war
EXPOSE 8080