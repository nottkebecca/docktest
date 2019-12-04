FROM ubuntu:14.04

RUN apt-get update && apt-get install tzdata
RUN apt-get install -y \
 apache2 \
 php7.2 \
 libapache2-mod-php \
 wget

COPY charity /var/www/html/charity

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D FOREGROUND"]
