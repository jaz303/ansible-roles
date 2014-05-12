# ansible-roles

## debian-prereq

  * Updates apt cache
  * Installs git, ntp, vim, build tools, python utilities for ansible
  * Updates `/etc/motd` to indicate server is managed by Ansible
  * Creates a `/home/ansible/src` for unpacking software to be installed from source

## mysql-server

  * Installs MySQL server and starts it

## nginx-passenger

  * Installs nginx and Passenger from source
  * Install nginx init script and set it to start on boot
  * Set up vhost directories `/etc/sites-{enabled,available}`
  * Set up log rotation

### Dependencies

  * ruby-1.9.3

### Configuration

Variables exist for setting desired nginx and Passenger versions

## nginx-vhosts

Sets up any number of nginx vhosts based on either predefined or custom templates.

### Dependencies

  * nginx-passenger

### Configuration

Set up desired vhosts as array of hashes in `vars/main.yml`.

Keys:

  * `name`: app name
  * `template`: template vhost configuration file
  * `server_name`: server name field (space separated list of hostnames)
  * `location`: location of web app; interpretation of this variable depends on the template being used

## non-privileged-users

Sets up any number of non-privileged users.

### Configuration

Set up desired users and groups in `vars/main.yml`.

## restricted-ssh

Makes `ssh` more secure:

  * Root login disabled
  * Login disabled to `ssh` group
  * Password login disabled

## ruby-1.9.3

## ruby-common

## sanitized-debian

Cleans up a fresh Debian installation:

  * Disables `rpcbind`
  * Disables `exim`
  * Installs `postfix`
  * Configures `postfix` as a send-only server and restricts it to the local interface
