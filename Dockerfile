FROM andrewosh/binder-base

MAINTAINER Philipp Gadow <philipp@pgadow.de>

USER root

# Add dependency
RUN apt-get update

USER main

# Install requirements for Python 2
RUN pip install --upgrade pip
RUN pip install numpy sympy matplotlib ipywidgets

RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
