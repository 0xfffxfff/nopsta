#!/bin/bash

wget -r -p -E -np -N https://nopsta.com
wget -r -p -E -np -N https://nopsta.com/oraand/about
wget -r -p -E -np -N https://nopsta.com/petarp/about

# Afterwards you'll need to clean up the oorand.html (and all others)
# and e.g. move it to the oraand folder and rename it to index.html (oorand/index.html)