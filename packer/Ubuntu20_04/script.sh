#!/bin/bash -e

cd ~
mkdir .ssh
touch ./.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5JSRkbfuFBLKLYdNwZgBnikG5AsFcKuPDRfUuODgrJypIcDnqsBw2+IMGRjJVLCeSggD1nSoNXoqjSzmBGe7dpRY/uyH99e8n14bG+gsW+nOMv+N/BkHElC5051pJkUSQu7pIiZDtuza2BZR5gG5QB61qTY6Fp9YhEO+YmEjESjwAhjsGpUyQH5ebVy52Olz4fOxH+HtBQpQ1fm22X79mTriYCyP78KXCYFHvdHWKhpAHKXRpevYp0fNyYOxIZfwl6CnL+iE1luPBvwVTF5MrhHvooKNxLCYQbYdx4q9Da/q0qCIxTH6h8h8eqa7Myy4mv6R3kCemjkYdq+9xosLsfz27XqnrdjE4PQrverhwp0fTkSmC4JPrmycKuL8RbOUjczdxdhM+EKPXa0S3m9CjCOcZxr2TwDKiS23+9T2+0SKiUAT/IvQzmbeIV7gq+reP7hBQohTQby+mF436Yt+tW4TUpSgtvYr+mNpf9XwMJ8ULYf6MoZrmegsTzGP/iYM= alex@LAPTOP-EKM3E4C9' > ~/.ssh/authorized_keys

sudo echo 'nameserver 8.8.8.8' | sudo tee /etc/resolv.conf > /dev/null
sudo apt-get update -y

sudo wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
sudo dpkg -i puppet6-release-bionic.deb
sudo apt update -y
sudo apt install puppet-agent -y
sudo apt install puppetserver -y
sudo apt update -y
