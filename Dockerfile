# building docker image to use R-Studio in a browser

FROM rocker/ml:4.0.3-cuda11.1

# optional:
MAINTAINER 'Manoj Kumar <imanojkumar@outlook.com>'
LABEL version="0.1"
LABEL description="R Machine Learning Docker"

## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## copy files
COPY 02_code/install_packages.R /install_packages.R

## install packages
# command RUN will be executed during build of the image
RUN Rscript /install_packages.R
