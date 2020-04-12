#!/bin/bash -x

echo Enter three values
read a
read b
read c

p=$(( $a+($b*$c) ))
q=$(( ($a*$b)+$c ))
r=$(( ($a/$b)+$c ))
s=$(( ($a%$b)+$c ))

declare -A r
i=0
r[((i++))]=$p
r[((i++))]=$q
r[((i++))]=$r
r[((i++))]=$s

echo ${r[@]}

for(( i=0; i<3; i++ ))
do
  for(( j=0; j<4; j++ ))
   do
    if((r[i]<r[j]))
     then
      temp=${r[i]}
      r[$i]=${r[j]}
      r[$j]=$temp

    fi

   done

done

for(( i=0; i<4; i++ ))
do
  echo ${r[i]}
done

