# it will download all images below that
FROM php:7.2-cli 

# creates /myproject inside the image
RUN mkdir /myproject

COPY index.php /myproject
WORKDIR /myproject
# edit the index php file if needed
CMD php index.php 

# t for tagging, . to tell it where is the dockerfile
docker build -t myphpapp .

# image should be there
docker image ls

# should read index.php from the image
docker run myphpapp

docker rm CONTAINER_ID
docker rmi myphpapp # also removed the images it doesn't need anymore
