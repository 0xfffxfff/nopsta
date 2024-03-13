#!/bin/bash


for i in {0..1023}
do
   wget -r -p -E -np -N "https://nopsta.com/oraand/i/${i}.png"
done
