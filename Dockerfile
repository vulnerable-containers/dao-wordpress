FROM wordpress:php8.3-apache

ADD adapter.sh /opt/adapter.sh
RUN chmod +x /opt/adapter.sh

ENTRYPOINT ["/opt/adapter.sh", "docker-entrypoint.sh"]
CMD ["apache2-foreground"]
