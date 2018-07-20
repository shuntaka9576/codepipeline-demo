#!/bin/sh
count=`ps aux| grep helloworld| grep -v grep| wc -l`
if [ $count != 0 ]; then
  sudo killall helloworld
fi