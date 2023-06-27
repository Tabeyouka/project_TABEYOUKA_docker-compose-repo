# project_TABEYOUKA_docker-compose-repo

This repository was created to manage multiple applications at once.

- Front-end (Serve the built file as a static file to NGINX.)
- Back-end (Laravel)
- Database (MariaDB)
- Proxy (NGINX)

## Getting started

1. Clone the repository with the command `git clone --recurse-submodules <repository>`. (This is to proceed with the clone, including the submodules.)
2. Get the necessary `.env` files for the **backend** and **database**,
   and place them in the `./backend` and `./database` directories, respectively.
3. Run the `docker compose up` command to run the containers at once.

If applications have been updated, you'll need to rebuild the image with the `docker compose build` command.
