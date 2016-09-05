# Docker image with JSXC XMPP client, Openfire XMPP server and Etherpad

## Introduction

Small Docker file to test:
* Javascript XMPP client JSXC
* Openfire XMPP server
* Etherpad

Before run you have to unzip and configure an Openfire server in `opt.openfire`

Run and enjoy !

```

    # Install Docker on Ubuntu:
    $ curl -fsSL https://get.docker.com/ | sh
    
    # Download and setup an Openfire server (accounts, ...) 
    
    # Run a container
    $ ./build-and-launch.sh
    
    # And visit XXX.XXX.XXX.XXX:80 with your browser

```

## Why not install Openfire in Dockerfile ?

To let you setup accounts and other parameters ...

Openfire installation example: 

```
  # Openfire server
  $ cd opt.openfire/
  $ wget https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4_0_2.tar.gz -O openfire.tar.gz
  $ tar -xvf openfire.tar.gz
  $ bin/openfire start
  
  # After visit 127.0.0.1:9090 to configure server

```

Final file tree must look like this:

```
.
├── build-and-launch.sh
├── container_informations.txt
├── Dockerfile
├── memos -> ../memos
├── opt.docker-entrypoint.sh
├── opt.etherpad.settings.json
├── opt.openfire
│   ├── bin
│   ├── changelog.html
│   ├── conf
│   ├── documentation
│   ├── embedded-db
│   ├── lib
│   ├── LICENSE.html
│   ├── logs
│   ├── plugins
│   ├── README.html
│   └── resources
├── README.md
└── var.www.html
    ├── ajax
    ├── css
    ├── favicon.ico
    ├── fonts
    ├── index.html
    ├── js
    └── jsxc

16 directories, 11 files
```

## Credits 

All under free licenses:

* JSXC: MIT (https://www.jsxc.org/)
* Openfire: APL 2 (https://www.igniterealtime.org)
* Etherpad: APL 2 (http://etherpad.org/)
