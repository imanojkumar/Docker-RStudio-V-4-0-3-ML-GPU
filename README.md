# Docker-R-RStudio-ML-GPU
 R and R Studio with GPU Support in a Container
 
## Instructions to build the docker image

### Procedure
`docker login` -  to authenticate

`docker build -t LOGIN_NAME/IMAGE_NAME .`  - to build the image using LOGIN_NAME/IMAGE_NAME e.g. imanojkumar/docker-r-rstudio-ml-gpu

## First time run ?? Please use the below command otherwise you will get an error
`docker run --rm -p 8787:8787 -e USER=guest -e PASSWORD=guest imanojkumar/docker-r-rstudio-ml-gpu`
