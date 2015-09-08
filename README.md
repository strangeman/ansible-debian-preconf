debian-preconf
=========

Module install needed system packages and make some system tunes

Requirements
------------

Debian 6/7/8
Should work with Ubuntu (but not tested)

Role Variables
--------------

root_ssh_keys - tuple with ssh keys for root.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

  - hosts: all
    roles: 
      - debian-preconf
    tags: debian-preconf
    vars:
      root_ssh_keys:
        - {name: "strangeman", key: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDfO0uAvjepPMDyAOnUwok1jOwhjZlGLgeoGLDnKDznzbtSj58Ly+XELmuQbPKvxXv/bdv7w+/QiiuapF4rtW254BARUM9nDJnEOgwL/hlvo3bJdjVt5f/wJJnvUC9h02ClrrdSxElGusdMUgyD2ajfvMKP0Dd/naPe6/l22YkeBJfm7S+VX5PFPy7Je2xgOGRIIPfBSQHlk8Icyrlri0A7Dm+WZgYyil/vZ8ljOPO+96rqbnQ7Wgq9rQKp3p+J0I/f4qJDYIiyttzSlHhm77Hq9VXWl/wnQB2ERf8SPj9yXpHrhyXE1NC00dRzOno2q0FweZ0LQ9tOGpVnZNlySLtT strangeman"}


License
-------

GPLv2

Author Information
------------------

Anton Markelov - http://strangeman.info