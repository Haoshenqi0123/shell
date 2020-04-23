#!/bin/bash
apphome=/apprun/holliday/log
logname=holiday.log
if [ ! -d $apphome ]; then
    exit 0
fi

cp $apphome/$logname $apphome/$logname.`date -d '-1 days' +%Y%m%d`
echo "" > $apphome/$logname