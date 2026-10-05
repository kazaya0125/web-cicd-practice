FROM tomcat:11
COPY build/libs/app.war /usr/local/tomcat/webapps/app.war
