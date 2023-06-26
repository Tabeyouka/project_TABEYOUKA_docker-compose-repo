# project_TABEYOUKA_docker-compose-repo
여러 어플리케이션을 한번에 관리하기 위해 만들어진 리포지토리입니다.
- 프론트엔드 (빌드된 react를 nginx로 정적파일 제공)
- 백엔드 (라라벨)
- 데이터베이스 (mariadb)
- 프록시 (프론트엔드 백엔드를 프록시해주는 서버; nginx)

## Getting started
1. 백엔드와 데이터베이스에 필요한 환경 변수파일을 받아서, `./backend`와 `./database` 디렉토리에 각각 위치시킨다.
2. `docker compose up` 명령어를 실행하여 컨테이너들을 한번에 실행시킨다.

만약 어플리케이션들이 새로 업데이트 되었다면, `docker compose build` 명령어로 이미지를 새로 빌드를 해야한다.
