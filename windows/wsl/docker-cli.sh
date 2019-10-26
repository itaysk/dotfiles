curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.09.5.tgz -o /tmp/docker.tar.gz
tar --directory /tmp -xzf /tmp/docker.tar.gz docker/docker --strip-components=1
sudo mv /tmp/docker /usr/local/bin/docker
rm -rf /tmp/docker.tar.gz