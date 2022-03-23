docker rm $(docker ps -a -q)
docker rmi $(docker images -a -q)
docker volume rm srcs_mariadbvolume
docker volume rm srcs_phpvolume
