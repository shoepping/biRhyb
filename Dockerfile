FROM r-base:3.6.3

RUN apt-get update
RUN apt-get install -y \
	libcurl4-openssl-dev \
	libpoppler-cpp-dev \
	libssl-dev \
	libsodium-dev \
	default-jdk \
        r-cran-rjava \
	libxml2-dev

RUN R -f install.R
