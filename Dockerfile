FROM docker.io/httpd
USER root


# Add configuration file
RUN echo "The Web Server is Running" > /usr/local/apache2/htdocs/index.html
EXPOSE 80

# Start the service
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/local/apache2/bin/httpd"]
