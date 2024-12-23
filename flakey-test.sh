#! /usr/bin/bash

time=$(( ( $RANDOM % 10 )  + 20 ))
echo Pause $time seconds
sleep $time

result=$(( $RANDOM % 5 ))
exit $result
