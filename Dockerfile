FROM tomcat:9.0-jre8
ENV CATALINA_BASE /usr/local/tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN rm -rf $CATALINA_HOME/webapps/*
EXPOSE 8080
CMD ["catalina.sh", "run"]

