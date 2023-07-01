# project_TABEYOUKA_docker-compose-repo

This repository was created to manage multiple applications at once.

- Front-end (Serve the built file as a static file to NGINX.)
- Back-end (Laravel)
- Proxy (NGINX)

## Getting started

1. Clone the repository with the command `git clone --recurse-submodules <repository>`. (This is to proceed with the clone, including the submodules.)
2. Place the `.env` file in the root directory of your project.
3. Run the `docker compose up` command to run the containers at once.

If applications have been updated, you'll need to rebuild the image with the `docker compose build` command.
