sudo apt-get install squid-deb-proxy
sudo cp 20-nodejs /etc/squid-deb-proxy/mirror-dstdomain.acl.d/20-nodejs
HOST_IP=`ifconfig docker0 |grep inet|head -1|sed 's/\:/ /'|awk '{print $3}'`
echo "Acquire::http::Proxy \"http://$HOST_IP:8000\";" > 30proxy