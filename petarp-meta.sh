#!/bin/bash

for i in {0..63}
do
   wget -r -p -E -np -N "https://nopsta.com/petarp/meta/${i}"
   wget -r -p -E -np -N "https://nopsta.com/a/petarp/${i}"
done
