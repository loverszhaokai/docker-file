#!/bin/sh

cd /curator_crontab/

#
# US-5 02:00 == 07(UTC)
#
job_hour="07"

while :
do
    hour=$(date +'%H')
    echo "hour=$hour"

    if [ $hour == $job_hour ]
    then
        echo "execute crontab job"
        sh ./curator.sh

        echo "sleeping 22h"
        sleep 22h
    fi

    echo "sleeping 5m"
    sleep 5m
done
