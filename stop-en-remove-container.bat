
@echo off
REM Stop the running container
docker stop demo-site

REM Remove the stopped container
docker rm demo-site