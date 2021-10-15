FROM r-base:4.1.1

RUN apt-get update
RUN apt-get install -y \
	libcurl4-openssl-dev \
	libpoppler-cpp-dev \
	libssl-dev \
	libsodium-dev \
	default-jdk \
        r-cran-rjava \
	openssh-client \
	libxml2-dev

COPY install.R /opt/install.R
RUN R -f /opt/install.R
