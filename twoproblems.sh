#!/bin/bash -x

echo Enter three values
read a
read b
read c
r=$(( ($a/$b)+$c ))
s=$(( ($a%$b)+$c ))
echo $r   $s
