sh update.sh

docker stop $(docker ps -aq)
echo "Docker containers stopped"

docker compose build && docker compose up -d
echo "Docker containers rebuilt and started"