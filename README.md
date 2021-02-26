# Docker-R-RStudio-ML-GPU
 R and R Studio with GPU Support in a Container
 
![Docker Automated build](https://img.shields.io/docker/automated/imanojkumar/docker-r-rstudio-ml-gpu)
 
## Instructions to build the docker image

### Procedure
`docker login` -  to authenticate

`docker build -t LOGIN_NAME/IMAGE_NAME .`  - to build the image using LOGIN_NAME/IMAGE_NAME e.g. imanojkumar/docker-r-rstudio-ml-gpu

## First time run ?? Please use the below command otherwise you will get an error
`docker run --rm -p 8787:8787 -e USER=guest -e PASSWORD=guest imanojkumar/docker-r-rstudio-ml-gpu`

Please note that `-rm` is used to remove the container object after usage. This is optional to use. 

## Then launch the application at (in the browser, type following and hit enter key):
`localhost:8787`

## How to stop container
`control+C` to stop
then
`docker container ls` to check the container ID of last running docker
then
`docker stop <CONTAINER ID>`

## If you wish to attach a local folder (e.g. one on desktop on windows), you could do it so:
`docker run --rm -p 8787:8787 -e USER=guest -e PASSWORD=guest -v C:/Users/imano/Desktop/R_Data:/home/guest/r-studio imanojkumar/docker-r-rstudio-ml-gpu`
