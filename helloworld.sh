#!/bin/bash
echo "Hello World !"
# Proxy
echo 'Acquire::http::Proxy "http://apt-cacher-01.priv.enst-bretagne.fr:3142"; ' | sudo tee --append /etc/apt/apt.conf.d/01proxy
sudo apt-get update && sudo apt-get -y install apache2
