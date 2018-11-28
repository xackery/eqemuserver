FROM ubuntu:16.04
#gcc-5 g++-5 libstdc++6 build-essential libtool cmake debconf-utils git git-core
RUN apt-get -y update && apt-get install -y valgrind gdb curl libio-stringy-perl liblua5.1 liblua5.1-dev libluabind-dev libmysql++ libperl-dev libperl5i-perl libwtdbomysql-dev libsodium-dev libsodium18 libmysqlclient-dev lua5.1 minizip make mariadb-client nano open-vm-tools unzip uuid-dev zlibc wget && apt-get -y upgrade

COPY sysctl.conf /etc/sysctl.conf
ENV HOME /src
WORKDIR /src

# Define default command.
CMD ["make"]