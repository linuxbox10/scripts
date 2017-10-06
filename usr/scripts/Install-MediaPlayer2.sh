#!/bin/sh
# remove old version
cd /tmp 

wget "http://dl.bintray.com/mx3l/generic/enigma2-plugin-extensions-mediaplayer2_0.61_20150909_all.ipk"
opkg update
opkg install -force-overwrite enigma2-plugin-extensions-mediaplayer2_0.61_20150909_all.ipk
rm "enigma2-plugin-extensions-mediaplayer2_0.61_20150909_all.ipk"

set +e



sync
echo "#####################################################"
echo "#           Support @vuplus-images.co.uk            #"
echo "#####################################################"
echo "#             PLEASE RESTART YOUR STB               #"
echo "#####################################################"

#killall -9 enigma2
#reboot