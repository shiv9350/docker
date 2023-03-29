FROM centos:latest
RUN yum install -y httpd 
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip /var/www/html
WORKDIR /var/www/html
RUN unzip brighton.zip
RUN cp -rvf brighton-html/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
