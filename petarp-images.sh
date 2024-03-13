#!/bin/bash

for i in {0..63}
do
   wget -r -p -E -np -N "https://nopsta.com/petarp/animations/${i}"
   wget -r -p -E -np -N "https://nopsta.com/petarp/images/${i}.png"
   padded_number=$(printf "%03d" $i)
   wget -r -p -E -np -N "https://nopsta.com/petarp/images/petarp-${padded_number}-bordered.gif"
   wget -r -p -E -np -N "https://nopsta.com/petarp/images/petarp-${padded_number}.gif"
done
