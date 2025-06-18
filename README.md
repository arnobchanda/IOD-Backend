# Production Deployment

- We use docker compose for running our services required to run the application correctly
- You can learn how to install Docker Engine and Docker Compose for your OS by following the [official Docker installation guide](https://docs.docker.com/engine/install/).

## Environment Setup

- All the environmental variables required to run the application can be put into one single file.

- Create a `.env` file at the root of this repository with the following information to start

   ```bash
   DOCKERHUB_USERNAME=iod2
   BACKEND_IMAGE_NAME=iod-backend
   BACKEND_IMAGE_TAG=latest
   MONGO_ROOT_USERNAME=admin
   MONGO_ROOT_PASSWORD=admin
   MONGO_DB_NAME=IndianOlympicDream
   APP_PORT=3000
   NGINX_EXTERNAL_PORT=80
   ````

- This will pull the latest prebuilt docker image with the production app already loaded.
- If you are making changes to mongodb, make sure to update the `MONGO_ROOT_USERNAME` and `MONGO_ROOT_PASSWORD` accordingly.
- If you want to access this application on anything other than port 80, update the `NGINX_EXTERNAL_PORT` with the port number of your choice.

## Files Included

| File/Dir | Comment |
|:--------|:-------|
| server.js | Express server |
| server/ | API routes and config |
| package.json | Production dependencies only |
| mongo-init/ | MongoDB dump and restore script for Docker compose |
| nginx/ | Nginx Config for Docker compose|

## How to Run

- After creating the `.env` file, open the repo root in your terminal and run:
  
  ``` bash
   docker compose up
  ```

This will start all the services up. You can check the running containers using `docker ps`
