#!/bin/bash

cd {{ source_directory }}
tar xvfj {{ ruby_version }}.tar.bz2
cd {{ ruby_version }}
./configure --prefix={{ ruby_location }}
make
sudo make install