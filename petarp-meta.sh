#!/bin/bash


for i in {0..63}
do
   wget -r -p -E -np -N "https://nopsta.com/petarp/meta/1${i}"
   sleep 5 # wait so the server does not rate limited
done
