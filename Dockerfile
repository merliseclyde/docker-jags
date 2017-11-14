FROM rocker/verse
MAINTAINER "Merlise Clyde" clyde@duke.edu

RUN apt-get update && . /etc/environment \
  && wget sourceforge.net/projects/mcmc-jags/files/JAGS/4.x/Source/JAGS-4.3.0.tar.gz  -O jags.tar.gz \
  && tar -xf jags.tar.gz \
  && cd JAGS* && ./configure && make -j4 && make install

## httr authentication uses this port
EXPOSE 1410
ENV HTTR_LOCALHOST 0.0.0.0

