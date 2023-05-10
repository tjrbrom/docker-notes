
docker run -rm klutchell/rar

# a for creating archive in /files/myrar.rar
docker run --rm -v ${PWD}:/files klutchell/rar a /files/myrar.rar /files/myfile.txt
	
# -w files in order to cd to this dir after running
docker run --rm -v ${PWD}:/files -w /files klutchell/rar a myrar.rar myfile.txt
