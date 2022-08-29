FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y apache2 
RUN apt-get install -y zip 
RUN apt-get install -y unzip 
WORKDIR /var/www/html/
RUN rm -rf *
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip .
RUN unzip photogenic.zip
RUN cp -rvf ./photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
EXPOSE 80
