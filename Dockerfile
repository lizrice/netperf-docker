FROM ubuntu:22.04

# super-netperf taken from tgraf/netperf-docker, but not tested
ADD super_netperf /sbin/

RUN apt-get update \
    && apt-get install -y netperf \
	&& apt-get install -y curl iputils-ping

ENTRYPOINT ["netserver", "-D"]
