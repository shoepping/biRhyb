FROM r-base:4.1.1

RUN apt-get update
RUN apt-get install -y \
	libcurl4-openssl-dev \
	libpoppler-cpp-dev \
	libssl-dev \
	libsodium-dev \
	openjdk-8-jdk \
	openssh-client \
	libxml2-dev
RUN R CMD javareconf
COPY install.R /opt/install.R
RUN R -f /opt/install.R
