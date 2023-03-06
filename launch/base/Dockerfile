ARG BASEIMAGE
FROM $BASEIMAGE

#========================================
# ENVIRONMENT VARIABLES
#========================================
ENV APT_INSTALL="apt-get install -y --no-install-recommends"
ENV DEBIAN_FRONTEND=noninteractive

#========================================
# BASE PACKAGES
#========================================
RUN cat /etc/resolv.conf
RUN cat /etc/apt/sources.list
RUN rm -rf  /var/lib/apt/lists/* \
    && apt-get update \
    && $APT_INSTALL \
    apt-transport-https \
    ca-certificates \
    gnupg \
    software-properties-common \
    wget \
    && apt-get update \
    && $APT_INSTALL \
    build-essential \
    net-tools \
    cmake \
    curl \
    git \
    vim \
    tmux \
    screen

#========================================
# FILE STRUCTURE
#========================================
ENV SOURCE_DIR="/home/robot" 
RUN mkdir -p $SOURCE_DIR
VOLUME ["${SOURCE_DIR}"]

#========================================
# ENTER
#========================================
WORKDIR ${SOURCE_DIR}
ENTRYPOINT [ "/ros_entrypoint.sh" ]
CMD ["bash"]
