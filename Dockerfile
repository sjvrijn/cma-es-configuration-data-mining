FROM andrewosh/binder-base

MAINTAINER Sander van Rijn <s.j.van.rijn@liacs.leidenuniv.nl>

USER root

# Add dependency
RUN apt-get update
RUN apt-get install -y graphviz

USER main

# Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

