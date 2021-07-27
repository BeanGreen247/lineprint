#!/bin/bash
gcc lineprint.c -o lineprint
sudo cp -r lineprint /usr/local/bin/lineprint
sudo mkdir -p /usr/local/man/man1/
install -g 0 -o 0 -m 0644 lineprint.1 /usr/local/man/man1/
sudo gzip -f /usr/local/man/man1/lineprint.1
sudo mandb
echo "lineprint has been installed."
