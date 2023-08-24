#! /bin/bash
echo "Enter Proxy UserName :"
read $proxyUserName
echo "Enter Proxy Password :"
read $proxyPassword
sudo apt-get update
echo "proxy username is $proxyUserName and proxy password i s $proxyPassword"
