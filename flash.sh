if [ ! -f /mnt/firmware.hex ]; then
    echo 'no firmware.hex on root of SD'
    cat /mnt/fb/nofirmwarehex.fb > /dev/fb0
    sleep 10
    exit
fi

cat /mnt/fb/start.fb > /dev/fb0
sleep 2
cat /mnt/fb/flash-in-progress.fb > /dev/fb0
echo 'running IAPCommand'
/mnt/IAPCommand /mnt/firmware.hex
if [ $? -eq 0 ]
then
    cat /mnt/fb/finish.fb > /dev/fb0
else
    cat /mnt/fb/error.fb > /dev/fb0
fi
sleep 5
exit