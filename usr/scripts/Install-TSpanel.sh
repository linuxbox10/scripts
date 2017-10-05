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


# remove old version

opkg remove enigma2-plugin-extensions-tspanel


set -e





cd /tmp 



wget "http://tunisia-dreambox.info/dreambox-e2-addons-2/TSpanel/enigma2-plugin-extensions-tspanel_8.0_all.ipk"

opkg update

opkg install -force-overwrite enigma2-plugin-extensions-tspanel_8.0_all.ipk

rm "enigma2-plugin-extensions-tspanel_8.0_all.ipk"



set +e







sync

echo "#####################################################"

echo "#          TSpanel INSTALLED SUCCESSFULLY         #"

echo "#####################################################"

echo "#             PLEASE RESTART YOUR STB          #"
echo "#       Restart enigma by typing killall -9 enigma2   #"

echo "#####################################################"



#killall -9 enigma2

#reboot

