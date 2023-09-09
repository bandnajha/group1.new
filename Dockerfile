# Use the official Tomcat base image
FROM tomcat:9.0-jre8

# Set environment variables
ENV CATALINA_BASE /usr/local/tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Remove the default Tomcat apps
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy your web application (WAR file) to the Tomcat webapps directory
COPY your-web-app.war $CATALINA_HOME/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
