
# v means volume mounting, ${PWD} is current dir available in ubuntu as /myvol
# /myvol is the dir on my host, mounted into my guest
# myfile.txt will include the contents of ls of the ubuntu container

docker run --rm -v ${PWD}:/myvol ubuntu /bin/bash -c "ls -lha > /myvol/myfile.txt"

