docker run -d httpd

# goes inside the container
docker exec -it CONTAINER_ID /bin/bash
	# should show html page
	curl localhost:80 
	exit

# f to keep it open
docker logs CONTAINER_ID -f

# shows all the container settings
docker inspect CONTAINER_ID 

# we probably need to do port binding
docker rm -f CONTAINER_ID	
# p is for port forwarding/binding, we bind port 8080 on our host, to port 80 in our container
docker run -d -p 8080:80 httpd

docker ps # should show the binding 0.0.0.0:8080->80/tcp in PORTS column

# if i try to browse localhost:8080 it should work now

docker rm -f CONTAINER_ID
docker run -d -p 8080:80 -v ${PWD}:/var/www/html php:7.2-apache
	(when browsing to localhost:8080, should show the edited index.php)
docker stop CONTAINER_ID
docker rm CONTAINER_ID