FROM ubuntu:14.04
RUN apt-get -y update
RUN apt-get install -y apache2 
RUN apt-get install -y zip
RUN apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip /var/www/html
WORKDIR /var/www/html
RUN unzip brighton.zip
RUN cp -rvf brighton-html/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
RUN mkdir sharma123
 

