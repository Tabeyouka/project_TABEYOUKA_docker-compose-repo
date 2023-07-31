# project_TABEYOUKA_docker-compose-repo

This repository was created to manage multiple applications at once.

- Front-end (Serve the built file as a static file to NGINX.)
- Back-end (Laravel)
- Proxy (NGINX)

## Getting started

### Production Environment

1. Clone the repository with the command `git clone <repository>`. (typical clone)
2. Place the `.env` file in the root directory of your project.
3. Run the `sh deploy.sh` command to shutdown the containers and run the containers at once.

### Development Environment

1. Clone the repository with the command `git clone --recurse-submodules <repository>`. (This is to proceed with the clone, including the submodules.)
2. Place the `.env` file in the root directory of your project.
3. Run the `docker-compose -f ./docker-compose.dev.yaml up` command to run the containers at once.

- To update the application submodule, enter the `sh update.sh` command in the terminal to update it.
- If applications have been updated, you'll need to rebuild the image with the `docker compose -f ./docker-compose.dev.yaml build` command.

### ETC

- The `deploy.sh` is a script that runs when a new docker image is built with github actions.
- restart_container.sh` is a script that restarts the docker container with a fresh start.

### Operational Flow

1. develop
2. release
3. CI (Github Action build docker image)
4. CD (Github Action on EC2, run `deploy.sh` script)
