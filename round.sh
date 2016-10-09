#!/bin/bash
read a
b=$(echo "scale = 4; $a" | bc)
last=$(echo "$b"|tail -c 2)
first=$(echo "$b"|head -c 1)
#echo $b
#echo $first

if [ "$first" = "-" ]; then
  if [ $last -gt 4 ]; then
#    echo "bigger"
    echo "scale = 3; $a" | bc
  else
#    echo "smaller"
    echo "scale = 3; $a" | bc
  fi
else
  if [ $last -gt 4 ]; then
#    echo "bigger"
    echo "scale = 3; $a+0.001" | bc
  else
#    echo "smaller"
    echo "scale = 3; $a" | bc
  fi
fi
