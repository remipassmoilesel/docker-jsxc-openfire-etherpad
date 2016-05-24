# Docker image with JSXC / Openfire / Etherpad

Small Docker file to test:
* The XMPP client JSXC
* Etherpad
* The server Openfire.

Run and enjoy !

```
# Install Docker on Ubuntu:
$ curl -fsSL https://get.docker.com/ | sh

# Download and setup an Openfire server (accounts, ...) with
an embedded database. Then copy it in opt.openfire/

# Run a container
$ ./build-and-launch.sh

# And visit XXX.XXX.XXX.XXX:80 with your browser

```

All under free licenses:
* JSXC: MIT
* Openfire: Apache 2
* Etherpad: Apache 2
