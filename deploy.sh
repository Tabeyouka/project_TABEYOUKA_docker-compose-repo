THIS_JOBS='Deploy'

RED='\033[0;31m'
LIGHT_RED='\033[1;31m'
LIGHT_GRAY='\033[0;37m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

sh ./restart_container.sh
echo ""

echo "${GREEN}Jobs Done!${NC} (${BLUE}${THIS_JOBS}${NC})"