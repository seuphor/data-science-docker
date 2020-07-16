# Introduction

This repo contains the basic configuration files to quickly set up airflow, Postgres DB and jupyter notebook using Docker in any given operating system.



# Get Started

1. You need to make sure you install [Docker](https://www.docker.com/).

2. cd into the main directory. You should build images for airflow & jupyter using Dockerfile in the folder by running the following command.

   ```sh
   $ docker build -t <YOUR_USERNAME>/<YOUR_IMAGE_NAME> .
   ```

   > Note: make sure you run the command one at a time. You should comment out the code for other images before running it. Otherwise, you will run into errors.

3. once you build your images. You can run the following code to compose and run the services

   ```sh
   $ docker-compose up -d
   ```

4. Go to the following port to check out the services:

   - **Jupyter**: 8888 
   - **Airflow**: 8080
   - **Postgres**: 5432

5. You can stop the services by using the following code

   ```sh
   $ docker-compose stop # will temporarily stop the container
   $ docker-compose down # this will remove the container
   ```

6. Additionally, you will notice the setup process will create two folders:

   - `/dags`: to store dag files for airflow
   - `/shared`: to store python scripts.



# Syntax Reference

Here I include some syntax references for docker I found on the web.

```sh
# list out all docker images you downloaded
docker images 

# show all the containers that are currently running. (-a) will listed out all
# containers that you ran before
docker ps -a 

# allow you to findout more about an image
docker inspect [Image-Name]

# download image from docker hub
docker pull [Image-Name]

# ask docker to stop & remove running container
$ docker stop [Container-ID]
$ docker rm   [Container-ID]

# docker run with additional commands
$ docker run --name static-site-2 -e AUTHOR="Your Name" -d -p 8888:80 dockersamples/static-site
# This will run interactive terminal for bash shells
$ docker run -it alpine /bin/sh


# print out ports for running containers
docker port [Container-Name]

# stop & remove container by container name
docker rm -f static-site-2

# to pull a specific version for a image
docker pull ubuntu:[Version-Name]

# The docker build command is quite simple - it takes an optional tag name 
# with the -t flag, and the location of the directory containing the 
# Dockerfile - the . indicates the current directory:
docker build -t <YOUR_USERNAME>/myfirstapp .

# login & push docker
docker login
docker push <YOUR_USERNAME>/<Image_Name>

# docker compose up + down (start / stop)
$ docker-compose down
$ docker-compose up
$ docker-compose stop # will temporarily stop the container

# Purging All Unused or Dangling Images, Containers, Volumes, and Networks
docker system prune -a

# If you use the -f flag and specify the image’s short or long ID, then this command untags and removes all images that match the specified ID.
docker rmi -f fd484f19954f

# run docker-compose in an interactive shell
docker exec -ti zihao_jupyter /bin/bash
```

