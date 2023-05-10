
docker volume create --name my-vol
docker-compose up -d
docker volume ls

# mysql server is running in the backgrnd, and it's writing into my-vol 
# which is mounted into /mydata of our ubuntu container
docker run -v my-vol:/mydata --rm -it ubuntu /bin/bash

docker-compose down

# We can share data from one container to another
docker volume create --name Datastore1
docker run -v Datastore1:/mydatastore --rm -it ubuntu /bin/bash

# and on another terminal, on another container
docker run -v Datastore1:/mydatastore1 --rm -it ubuntu /bin/bash

# edits on a file in /mydatastore1 will appear on the other container, in /mydatastore

volume rm Datastore1