docker run -it alpine /bin/sh
	apk update && apk add curl

# can't curl successfully, we need to install image alpine first, then install curl in there and build an image out of that
FROM alpine
RUN apk update && apk add curl
# tells which binary is going to be executed
ENTRYPOINY ["curl"]
	
docker build -t mycurl .
# we don't need curl at the end, cause we have the entrypoint
docker run mycurl curl

docker system prune
docker run --rm mycurl www.google.com

# credentials from dockerhub
docker login

# we now have two images
docker tag mycurl USERNAME/mycurl:latest

# goes to the hub
docker push USERNAME/mycurl:latest
