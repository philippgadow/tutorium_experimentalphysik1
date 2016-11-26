FROM andrewosh/binder-base

MAINTAINER Philipp Gadow <philipp@pgadow.de>

USER root

# Add dependency
RUN apt-get update

# Install requirements for Python
RUN pip3 install --upgrade pip
RUN pip3 install numpy sympy matplotlib ipywidgets


RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
USER main