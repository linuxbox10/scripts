#!/bin/sh
# remove old version
opkg remove enigma2-plugin-extensions-livefootball
cd /tmp 

wget "http://tunisia-dreambox.info/LiveFootBall/software_official/enigma2-plugin-extensions-livefootball_7.1_all.ipk"
opkg update
opkg install -force-overwrite enigma2-plugin-extensions-livefootball_7.1_all.ipk
rm "enigma2-plugin-extensions-livefootball_7.1_all.ipk"

set +e



sync
echo "#####################################################"
echo "#          Livefootball INSTALLED SUCCESSFULLY         #"
echo "#####################################################"
echo "#             PLEASE RESTART YOUR STB               #"
echo "#####################################################"

#killall -9 enigma2
#reboot
