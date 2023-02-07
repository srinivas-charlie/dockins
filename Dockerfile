FROM srinivascharlie/dev:tomcat
COPY target/dock-jens.war  /usr/local/tomcat/webapps

