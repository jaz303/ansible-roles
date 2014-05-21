#!/bin/bash

cd {{ source_directory }}
tar xvfz redis-{{ redis_version }}.tar.gz
cd redis-{{ redis_version }}
export PREFIX={{ redis_location }}
make
make install
