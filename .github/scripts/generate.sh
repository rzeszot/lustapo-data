#!/bin/sh

for station in `ls umcs`;
do
  last=`find umcs/$station | grep json | sort | tail -n 1`
  cp $last docs/station/$station.json
done
