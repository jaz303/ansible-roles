#!/bin/bash

set -e

cd {{ source_directory }}
tar xvfz {{ node_version }}.tar.gz
cd {{ node_version }}
./configure --prefix={{ node_location }}
make
sudo make install