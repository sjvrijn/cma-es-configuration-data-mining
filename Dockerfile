FROM ubuntu:16.04

LABEL maintainer="Sander van Rijn <s.j.van.rijn@liacs.leidenuniv.nl>"

USER root
# Install default packages
RUN apt-get update -y
RUN apt-get install --fix-missing -y curl python-dev python-virtualenv python-pip
RUN pip install --upgrade pip
RUN apt-get clean

# Add dependency
RUN apt-get install -y graphviz
RUN apt-get install -y texlive-fonts-recommended texlive-fonts-extra dvipng

# Define default user
RUN useradd -m -s /bin/bash main
RUN mkdir /home/main/src
COPY . /home/main/src/
RUN chown -R main:main /home/main

USER main
WORKDIR /home/main/src
RUN export PATH=~/.local/bin:$PATH

# Install requirements for Python 2
#COPY requirements.txt requirements.txt
RUN pip install --user -r requirements.txt


# TEMP: install jupyter notebook manually
RUN pip install --user jupyter notebook
