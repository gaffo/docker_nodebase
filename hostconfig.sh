sudo apt-get install squid-deb-proxy
HOST_IP=`ifconfig docker0 |grep inet|head -1|sed 's/\:/ /'|awk '{print $3}'`
echo "Acquire::http::Proxy \"http://$HOST_IP:8000\";" > 30proxy