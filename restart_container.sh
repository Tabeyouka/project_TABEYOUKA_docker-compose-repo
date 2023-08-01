#!/bin/bash
THIS_JOBS='Restart Container'

RED='\033[0;31m'
LIGHT_RED='\033[1;31m'
LIGHT_GRAY='\033[0;37m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# docker is installed?
if [ ! -x "$(command -v docker)" ]; then
  echo "${RED}Error: docker is not installed.${NC}" >&2
  exit 1
fi

# # docker-compose is installed?
# if [ ! -x "$(command -v docker compose)" ]; then
#   echo "${RED}Error: docker compose is not installed.${NC}" >&2
#   exit 1
# fi

echo "Restarting... ${GREEN}TABEYOUKA${NC}"
echo ""

# container_name in docker-compose.yml file
containers=("react-frontend" "laravel-backend" "nginx-proxy")

# 1. Stop containers
echo "1. Stop containers..."
echo "${LIGHT_GRAY} ⠿ Containers: ${containers[@]}${NC}"
for container in "${containers[@]}"; do
  if [ "$(docker ps -q -f name=$container)" ]; then
    echo "${LIGHT_RED} ⠿ Container `docker stop $container`\tSTOPPED${NC}"
  fi
done
echo ""

# 2. Run docker containers
echo "2. Run docker-compose..."
docker-compose up -d --build
echo ""

# 3. Job done
echo "${GREEN}Job Done!${NC} (${BLUE}${THIS_JOBS}${NC})"
