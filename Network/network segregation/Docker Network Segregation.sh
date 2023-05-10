docker network ls # shows all networkds created by compose ups etc.
docker network prune # removed all unused
docker run --rm --name my-webserver -d httpd
docker inspect my-webserver

# say we want to use curl from our previous mycurl image, to curl our webserver by domain dns name
# this will fail, the my-webserver host will not be resolved, needs an ip
docker run --rm USERNAME/mycurl my-webserver

# we could add the ip directly after the name, but we can do something better
docker stop my-webserver
# simple network to connect our containers on
docker network create simple-network
# apache is now running, attached to the simple-network
docker run --rm -d --name my-webserver --network simple-network httpd
# now we can reach the containers by name inside other containers
docker run --rm --network simple-network USERNAME/mycurl my-webserver
