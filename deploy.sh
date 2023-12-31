#!/bin/bash

# Variables
TOMCAT_HOME=/opt/tomcat
WEBAPP_NAME=tomcat-java-servlets-sample-project
WAR_FILE=target/tomcat-java-servlets-sample-project.war
JAR_FILE=target/sample-project-1.0-SNAPSHOT.jar

# Stop Tomcat
$TOMCAT_HOME/bin/shutdown.sh

# Remove existing deployment
rm -rf $TOMCAT_HOME/webapps/$WEBAPP_NAME*

# Copy the new WAR file
cp $WAR_FILE $TOMCAT_HOME/webapps/

# Make the JAR file executable
chmod +x $JAR_FILE

# Start Tomcat
$TOMCAT_HOME/bin/startup.sh
