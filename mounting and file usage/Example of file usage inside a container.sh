docker run -it --rm --name my-running-script php:7.2-cli /bin/bash
	php -m # to see the modules installed
	php -i # to see php config
	cd
	ls # it's empty
	echo '<? echo "test text\n";' > index.php
	php index.php
	exit

docker run -it --rm -v ${PWD}:/myfiles --name my-running-script php:7.2-cli /bin/bash
	cd /m/myfiles
	echo '<? echo "test text\n";' > index.php
	php index.php
	exit
dir # i got the index.php here, because mounting current dir in /myfiles in the container
	# and writing a file inside /myfiles, will actually write it in the host dir
exit

# i could also do this:
docker run -it --rm -v ${PWD}:/myfiles -w /myfiles --name my-running-script php:7.2-cli php index.php