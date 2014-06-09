# runit-per-user-services

Configures `runit` so that non-privileged users may install supervised tasks.

This role may be used multiple times, once for each user for whom `runit` should be enabled.

## Tasks

  * Creates `runit` service directory for user at `/home/$USER/service`
  * Sets up the master `runit` instance to spawn the per-user task runner by creating a service directory at `/etc/service/user-$USER`

### Task Variables

  * `runit_per_user_services.name`: username
  * `runit_per_user_services.group`: group. Optional, defaults to username.