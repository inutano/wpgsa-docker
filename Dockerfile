# Docker container for wPGSA
# See https://github.com/eiryo-kawakami/wPGSA
# VERSION 0.2.2

# Pull base image.
FROM inutano/research-base:0.1.1

MAINTAINER Tazro Inutano Ohta, inutano@gmail.com

USER root

RUN cd /home/jovyan/work && \
  git clone https://github.com/inutano/wPGSA && \
  cd /home/jovyan/work/wPGSA && \
  chmod 755 /home/jovyan/work/wPGSA/wPGSA.py && \
  chmod 755 /home/jovyan/work/wPGSA/hclust.py && \
  ln -s /home/jovyan/work/wPGSA/wPGSA.py /usr/bin/wpgsa && \
  ln -s /home/jovyan/work/wPGSA/hclust.py /usr/bin/hclust

USER nijntje