#!/bin/sh

# remove old version
opkg remove enigma2-plugin-extensions-tsmedia
rm -rf  /usr/lib/enigma2/python/Plugins/Extensions/TSmedia
set -e
cd /tmp
wget "http://tunisia-dreambox.info/dreambox-e2-addons-2/TSpackages/enigma2-plugin-extensions-tsmedia_12.0_all.ipk"
opkg update
opkg install -force-overwrite enigma2-plugin-extensions-tsmedia_12.0_all.ipk
set +e
rm "enigma2-plugin-extensions-tsmedia_12.0_all.ipk"
opkg install python-json
if [  $? -ne 0 ];

then

    opkg install python-simplejson 

fi 
opkg install python-xmlrpc
opkg install python-difflib
sync

echo "#####################################################"

echo "#          TSmedia INSTALLED SUCCESSFULLY         #"

echo "#####################################################"

echo "#             PLEASE RESTART YOUR STB               #"

echo "#####################################################"

echo "#  restart enigma by typing killall -9 enigma2   #"



#killall -9 enigma2

#reboot

