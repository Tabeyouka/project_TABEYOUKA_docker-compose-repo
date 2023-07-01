# project_TABEYOUKA_docker-compose-repo

이 리포지토리는 여러 애플리케이션을 한 번에 관리하기 위해 만들어졌습니다.
- 프론트엔드 (빌드된 파일을 정적 파일로 NGINX에 제공합니다.)
- 백엔드 (Laravel)
- 프록시 (NGINX)

## Getting started
1. 명령어를 터미널에 입력하여 리포지토리를 복제합니다. `git clone --recurse-submodules <repository>.` (서브모듈을 포함한 복제를 진행하기 위한 명령어입니다.)
2. 프로젝트의 루트 디렉터리에 .env 파일을 배치합니다.
3. `docker compose up` 명령어를 실행하여 컨테이너들을 한번에 실행시킵니다.

애플리케이션이 업데이트된 경우 `docker compose build` 명령으로 이미지를 다시 빌드해야 합니다.
