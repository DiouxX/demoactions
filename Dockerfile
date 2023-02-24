FROM ubuntu:latest

# Make sure directories that will be mounted are available
RUN mkdir -p /var/www/html/sites/default/files
RUN mkdir -p /var/www/html/secrets

# Tika install
RUN apt update && apt install -y default-jdk
RUN mkdir -p /usr/local/lib/java && curl -o /usr/local/lib/java/tika-app-2.6.0.jar https://archive.apache.org/dist/tika/2.6.0/tika-app-2.6.0.jar
