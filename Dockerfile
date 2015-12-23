FROM centos
MAINTAINER chenjj.yz@gmail.com

RUN yum -y install git gcc gcc-c++ autoconf automake

RUN mkdir -p /src; git clone https://github.com/alibaba/oceanbase.git;

RUN cd /src/oceanbase/oceanbase_0.4; sh rpm/oceanbase-build.sh
