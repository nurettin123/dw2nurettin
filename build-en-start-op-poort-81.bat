
@echo off
REM Build the Docker image
docker build -t demo-site .

REM Stop and remove any existing container named demo-site
docker stop demo-site
docker rm demo-site

REM Run a new container from the demo-site image on port 81
docker run -d -p 81:80 --name demo-site demo-site