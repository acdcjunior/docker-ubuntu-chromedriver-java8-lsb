FROM acdcjunior/docker-ubuntu-java8-chromedriver

MAINTAINER Antonio "acdc" Jr. <acdcjunior@gmail.com>

# Base image changes user
USER root

# Install lsb_release (oraclejdk8)
RUN \
   apt-get update && \
   apt-get install -y lsb-release && \
   apt-get clean && \
   apt-get autoremove && \
   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
	
# Restore base image's user
USER webdriver

# Define default command
CMD ["bash"]
