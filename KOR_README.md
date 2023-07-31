# project_TABEYOUKA_docker-compose-repo

이 리포지토리는 여러 애플리케이션을 한 번에 관리하기 위해 만들어졌습니다.

- 프론트엔드 (빌드된 파일을 정적 파일로 NGINX에 제공합니다.)
- 백엔드 (Laravel)
- 프록시 (NGINX)

## Getting started

### Production Environment

1. 명령어를 터미널에 입력하여 리포지토리를 복제합니다. `git clone <repository>` (일반적인 클론)
2. 프로젝트 루트 디렉토리에 .env 파일을 배치합니다.
3. `sh deploy.sh` 명령어를 실행하여 컨테이너들을 일괄 종료시키고, 컨테이너를 실행시켜줍니다.

### Development Environment

1. 명령어를 터미널에 입력하여 리포지토리를 복제합니다. `git clone --recurse-submodules <repository>` (서브모듈을 포함한 복제를 진행하기 위한 명령어입니다.)
2. 프로젝트의 루트 디렉터리에 `.env` 파일을 배치합니다.
3. `docker-compose -f ./docker-compose.dev.yaml up` 명령어를 실행하여 컨테이너를 실행시켜줍니다.

- 애플리케이션 서브모듈을 업데이트하려면 터미널에서 `sh update.sh` 명령을 입력하여 업데이트합니다.
- 애플리케이션이 업데이트된 경우 `docker compose -f ./docker-compose.dev.yaml build` 명령으로 이미지를 다시 빌드해야 합니다.

### ETC

- `deploy.sh`는 github actions로 새로운 도커 이미지가 빌드가 되었을 때 실행되는 스크립트입니다.
- `restart_container.sh`는 도커 컨테이너를 새로 재시작 시켜주는 스크립트입니다.

### Operational Flow

1. 개발
2. 릴리즈
3. CI (Github Action 도커 이미지 빌드)
4. CD (Github Action EC2 상, `deploy.sh` 스크립트 실행)
