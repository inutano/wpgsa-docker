# Docker container for wPGSA
# See https://github.com/eiryo-kawakami/wPGSA
# VERSION 0.1

# Pull base image.
FROM jupyter/datascience-notebook:latest

MAINTAINER Tazro Inutano Ohta, inutano@gmail.com

USER root

RUN cd /home/jovyan/work && \
  git clone https://github.com/inutano/wPGSA && \
  cd /home/jovyan/work/wPGSA && \
  chmod 755 /home/jovyan/work/wPGSA/wPGSA.py && \
  ln -s /home/jovyan/work/wPGSA/wPGSA.py /usr/bin/wpgsa

USER jovyan
