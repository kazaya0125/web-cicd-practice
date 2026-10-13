FROM tomcat:11.0.24-jdk17

COPY app/user-management/build/libs/user-management.war /usr/local/tomcat/webapps/user-management.war
