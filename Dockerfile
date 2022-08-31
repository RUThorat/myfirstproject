FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y apache2 
RUN apt-get install -y zip 
RUN apt-get install -y unzip 
WORKDIR /var/www/html/
RUN rm -rf *
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/leadmark.zip .
RUN unzip leadmark.zip
RUN cp -rvf ./leadmark/* .
RUN rm -rf leadmark leadmark.zip 
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
EXPOSE 80


