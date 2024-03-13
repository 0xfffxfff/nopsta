#!/bin/bash


for i in {0..63}
do
   wget -r -p -E -np -N "https://nopsta.com/petarp/prgs/${i}.prg"
   wget -r -p -E -np -N "https://nopsta.com/petarp/prgs/${i}_unmodified.prg"
done
