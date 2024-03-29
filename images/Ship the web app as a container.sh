FROM php:7.2-apache

# we won't expose a port, because the base image does this in it's dockerfile
COPY index.php /var/www/html
	
docker build -t myphpapp:apache .
docker run --name myphp-apache -p 8080:80 myphpapp:apache

docker rm -f CONTAINER_ID
docker rmi myphpapp:apache