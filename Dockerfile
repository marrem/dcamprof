FROM debian:10-slim

LABEL author="Marc Remijn"


RUN set -x \
	&& apt-get update \
	&& apt-get install -y  build-essential \
	&& apt-get install -y unzip \
	&& apt-get install -y wget \
	&& apt-get install -y liblcms2-dev \
	&& apt-get install -y libtiff-dev \
	&& cd \
	&& wget https://github.com/Beep6581/dcamprof/archive/refs/heads/master.zip \
	&& unzip master.zip \
	&& cd dcamprof-master/src \
	&& make \
	&& make install \
	&& apt-get purge -y build-essential unzip \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/local/bin/dcamprof"]

