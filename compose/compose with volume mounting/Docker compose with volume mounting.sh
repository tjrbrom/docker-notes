dockerfile
	FROM php:7.2-apache
	COPY index.php /var/www/html

# any changes are immediately available, because of mounting defined in docker-compose file
docker-compose up
