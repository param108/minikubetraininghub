# chroot jail to run telnet and tmate

These scripts create a chroot jail under ubuntu 18.04 which can run `telnet` and `tmate`.
The creation of chroot jail requires `sudo`

# Prerequisites
1. xterm (a light terminal)

# scripts

`chroot.sh`: 

Usage: `chroot.sh directory-name`

Will make the required directory and create a jail inside it.

`rmroot.sh`:

Usage: `rmroot.sh directory-name`

Cleanly removes a jail.

`create_users.sh`:

Usage: `create_users.sh`

Please edit to point the script to correct directory to create the users.

`delete_users.sh`:

Usage: `delete_users.sh`

Please edit to point the script to correct directory to create the users.

`create_xterms.sh`:

Usage: `create_xterms.sh`

Please edit to point to the directory in users directory above. It creates `xterm` windows inside a chroot jail and starts tmate inside.
It will also print the tmate `ssh` after creating xterms.

Use `killall xterms` to close the xterms
