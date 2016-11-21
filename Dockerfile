FROM andrewosh/binder-base

MAINTAINER Philipp Gadow <philipp@pgadow.de>

USER root

# Add dependency
RUN apt-get update

USER main

# Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Install requirements for Python 3
RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt

RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
