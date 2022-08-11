bold=$(tput bold)
normal=$(tput sgr0)

./stop.sh
sleep 20

echo "${bold}*************************************"
echo "Remove all"
echo "*************************************${normal}"

docker rm -vf $(docker ps -aq)
docker rmi -f $(docker images -aq)

docker network rm hlbprivacy_mynetwork.com
docker volume rm hlbprivacy_public-keys