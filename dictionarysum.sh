#!/bin/bash -x

echo Enter three values
read a
read b
read c

p=$(( $a+($b*$c) ))
q=$(( ($a*$b)+$c ))
r=$(( ($a/$b)+$c ))
s=$(( ($a%$b)+$c ))

declare -A result

result[p]=$p
result[q]=$q
result[r]=$r
result[s]=$s

echo the result of first computation ${result[p]}

