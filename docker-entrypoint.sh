#!/bin/bash

# démarrage d'openfire
/opt/openfire/bin/openfire start

# démarrage d'apache au premier plan
apachectl -D FOREGROUND


