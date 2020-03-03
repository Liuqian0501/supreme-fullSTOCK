
# run a container with image
docker kill ctb_beta # end the container with a bane ctb_beta
docker rm $(docker ps -a -f status=exited -f status=created -q) # remove the container with a bane ctb_beta
#docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}") # remove the images


docker run -dt -p 3389:8888 --name ctb_beta --rm -v c:/Users/qiank/Desktop:/root/version_4 qiankevin/ctb:v3
# Execute python program
docker exec -dt ctb_beta jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root&
#winpty docker exec -it ctb_beta //bin//bash
#jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root& 
