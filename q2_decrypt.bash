#!/bin/bash

line1=`cat $1 | head -1 `
line2=`cat $1 | tail -1 `

file=$2

cat $file | tr $line1 a-z | tr $line2 A-Z
