#!/bin/sh

# Clear html files
rm *.html > /dev/null

# Source variables from the config file
. conf

# Create camadmin.html from template
cp camadmin camadmin.html

# Exchange variables with sed
# This is sloppier than I like, and doesn't use -i as OS X's sed
# doesn't seem to like that

sed "s/IPADDY/$IPADDY/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/ADMIN/$ADMIN/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/PASS/$PASS/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/SSID/$SSID/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/WPAPSK/$WPAPSK/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/TMZONE/$TMZONE/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/TMDST/$TMDST/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/MYNAME/$MYNAME/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/STATICIP/$STATICIP/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/STATICGATEWAY/$STATICGATEWAY/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/STATICMASK/$STATICMASK/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/STATICDNS1/$STATICDNS1/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/STATICDNS2/$STATICDNS2/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/OPERATOR/$OPERATOR/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/OPKEY/$OPKEY/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/VISITOR/$VISITOR/g" camadmin.html > camtemp
mv camtemp camadmin.html
sed "s/VISITKEY/$VISITKEY/g" camadmin.html > camtemp
mv camtemp camadmin.html
