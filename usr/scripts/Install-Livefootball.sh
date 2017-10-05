#!/bin/sh

# check python version 
pyVer="X.X"

if [ -f "/usr/bin/python2.7" ]
then
    pyVer="2.7"
elif [ -f "/usr/bin/python2.6" ]
then
    pyVer="2.6"
else
    tmp=`python -c "import sys;t='{v[0]}.{v[1]}'.format(v=list(sys.version_info[:2]));sys.stdout.write(t)";`
    if [ $? -eq 0 ]
    then
        pyVer=$tmp
    fi
fi

echo "Detected python version: "$pyVer

set -e

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
