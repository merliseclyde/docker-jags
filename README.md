## README

Notes for building Docker image for use with wercker for STA521 at Duke

The Dockerfile specifies which programs and packages are installed.  Add additional packages as needed

### build image

`> docker  build -t  jags .`

### find docker image id

`> docker images`

### tag the image

`> docker tag [image id]  merliseclyde/jags:latest`

`docker images`

### push

`> docker login`

`> docker push merliseclyde/jags

### run interactively



$ docker run -it <Image ID> bash`

If this does not work,

install interactively in docker

`> docker run -it rocker/verse bash`

install JAGS

exit

`docker ps -l`   (get container id)

`docker commit <container_id> merliseclyde/jags

