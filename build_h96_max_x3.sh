#!/bin/bash

if [ "${FORCE_RECOVERY}" == "true" ]
then
./build.sh android-tv-13.0.0_r1-recovery-only sm1_h96_max_x3
elif [ "${CONSOLE_ENABLED}" == "true" ]
then
./build.sh android-tv-13.0.0_r1-console sm1_h96_max_x3
else
./build.sh android-tv-13.0.0_r1 sm1_h96_max_x3
fi

./generate-bins-new.sh fip-h96_max_x3 out/u-boot/build/u-boot.bin

rm -rf out
