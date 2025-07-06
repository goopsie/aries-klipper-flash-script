#!/bin/bash

if [ ! -f ./firmware.hex ]; then
    echo 'no firmware.hex on root of SD'
    cat ./fb/nofirmwarehex.fb > /dev/fb0
    sleep 10
    exit
fi

cat ./fb/start.fb > /dev/fb0
sleep 2
cat ./fb/flash-in-progress.fb > /dev/fb0
echo 'running IAPCommand'
./IAPCommand ./firwmare.hex
if [ $? -eq 0 ]
then
    cat ./fb/finish.fb > /dev/fb0
else
    cat ./fb/error.fb > /dev/fb0
fi
sleep 5
exit