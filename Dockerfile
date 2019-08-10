#FROM python:2.7-onbuild
FROM python:2.7-onbuild

FROM gear2000/jiffy-base:16.04
MAINTAINER Gary Leong <gwleong@gmail.com>

ARG jiffy_saas_home_dir=/opt/jiffy-saas
ENV JIFFY_SAAS_HOME_DIR=$jiffy_saas_home_dir

############################################################
# Jiffy SaaS Pkgs - Private
############################################################
ADD install.sh /var/tmp/install.sh
RUN /var/tmp/install.sh

############################################################
# Initialize Daemon
############################################################
CMD $JIFFY_SAAS_HOME_DIR/bin/run.py


