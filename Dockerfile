FROM ubuntu:14.04
MAINTAINER Christian Brenninkmeijer <Christian.Brenninkmeijer@manchester.ac.uk>

#Install R
RUN apt-get update && apt-get install -y r-base 

#Install Java
RUN apt-get install -y default-jdk

#Connect Java
RUN R CMD javareconf

COPY r_wrapper.sh r_wrapper.sh

ENTRYPOINT ["./r_wrapper.sh"]


