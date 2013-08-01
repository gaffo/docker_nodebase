from ubuntu:12.10

# set your host up as the apt cache for speed

add 30proxy /etc/apt/apt.conf.d/30proxy

# update system and install dependencies

run apt-get update
run apt-get install -y python2.7 python build-essential wget

# get and build node

run cd /tmp && wget http://nodejs.org/dist/v0.10.15/node-v0.10.15.tar.gz
run cd /tmp && tar -xzvf /tmp/node-v0.10.15.tar.gz
run cd /tmp/node-v0.10.15 && ./configure --prefix=/usr && make && make install