FROM debian:11
RUN apt-get update && apt-get install -y apache2 php7.4 libapache2-mod-php7.4 && apt-get clean
RUN a2enmod php7.4
RUN rm -f /var/www/html/index.html
COPY index.php /var/www/html
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]