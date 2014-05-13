#!/bin/bash

cd {{ source_directory }}
tar xvfz nginx-{{ nginx_version }}.tar.gz
cd nginx-{{ nginx_version }}
./configure --prefix={{ nginx_location }}
make
sudo make install
