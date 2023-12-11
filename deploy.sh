#!/bin/bash

# Variables
TOMCAT_HOME=/path/to/tomcat   # Replace with the actual path to your Tomcat installation
WEBAPP_NAME=sample-project    # Replace with the name of your web application
WAR_FILE=target/sample-project.war  # Replace with the name of your generated WAR file

# Stop Tomcat
$TOMCAT_HOME/bin/shutdown.sh

# Remove existing deployment
rm -rf $TOMCAT_HOME/webapps/$WEBAPP_NAME*

# Copy the new WAR file
cp $WAR_FILE $TOMCAT_HOME/webapps/

# Start Tomcat
$TOMCAT_HOME/bin/startup.sh
