THIS_JOBS='Restart Container'

RED='\033[0;31m'
LIGHT_RED='\033[1;31m'
LIGHT_GRAY='\033[0;37m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# docker 가 존재하는지? 확인
if [ ! -x "$(command -v docker)" ]; then
  echo "${RED}Error: docker is not installed.${NC}" >&2
  exit 1
fi

# docker-compose 가 존재하는지? 확인
if [ ! -x "$(command -v docker-compose)" ]; then
  echo "${RED}Error: docker-compose is not installed.${NC}" >&2
  exit 1
fi

echo "Restarting... ${GREEN}TABEYOUKA${NC}"
echo ""

# docker-compose.yml 파일에 container_name의 값
containers=("react-frontend" "laravel-backend" "nginx-proxy")

# 1. 컨테이너 종료
echo "1. Stop containers..."
echo "${LIGHT_GRAY} ⠿ Containers: ${containers[@]}${NC}"
for container in "${containers[@]}"; do
  if [ "$(docker ps -q -f name=$container)" ]; then
    echo "${LIGHT_RED} ⠿ Container `docker stop $container`\tSTOPPED${NC}"
  fi
done
echo ""

# 2. docker-compose 실행
echo "2. Run docker-compose..."
docker-compose up -d --build
echo ""

# 3. 종료
echo "${GREEN}Jobs Done!${NC} (${BLUE}${THIS_JOBS}${NC})"
