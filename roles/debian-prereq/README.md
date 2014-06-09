# debian-prereq

Prerequisites for running a Debian server.

## Tasks

  * Update apt cache
  * Set hostname (from inventory hostname)
  * Add hostname to `/etc/hosts`
  * Set system mailname to hostname
  * Install `git`, `ntp`, `links`, `vim`, `ufw`
  * Install build tools: `autoconf`, `build-essential`
  * Set the system timezone (as per `system_timezone`, defined in role `base-variables`)
  * Set `ntp` to start at boot
  * Install python tools/libraries to support Ansible
  * Update motd to indicate server is managed by Ansible
  * Create `source_directory` as defined in role `base-variables`
  * Disable `rpcbind`
  * Disable `exim`
  * Install `postfix`, configure securely and start at boot
  * Set up root mail alias, as defined in role `base-variables`
  * Lock down ssh: no root login, `ssh` group only, disable password auth

## Handlers

  * `ssh.restart`
  * `timezone.update`
  * `postfix.aliases`
  * `postfix.restart`
