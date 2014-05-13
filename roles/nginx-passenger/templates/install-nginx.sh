#!/bin/bash

export PATH={{ ruby_path }}:$PATH

cd {{ source_directory }}
tar xvfz nginx-{{ nginx_version }}.tar.gz
{{ ruby_location }}/bin/passenger-install-nginx-module \
	--auto \
	--prefix="{{ nginx_location }}" \
	--nginx-source-dir="{{ source_directory }}/nginx-{{ nginx_version }}" \
	--extra-configure-flags="{{ nginx_extra_configure_flags }}"
