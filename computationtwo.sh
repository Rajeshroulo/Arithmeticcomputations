#!/bin/bash -x

echo Enter three values
read a
read b
read c
r=$(( ($a*$b)+$c ))
echo $r
