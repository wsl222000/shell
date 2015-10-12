#!/bin/bash

usage(){
 echo -e "\n\tUsage: $0 osname"
 echo -e "\tFor example: $0 rhel62\n"
 exit 1
}

# OS list
osList="rhel53 rhel54 rhel55 rhel61 rhel62"

[ -z $1 ] && usage
echo $osList |grep -w $1 >/dev/null || usage

flavor=kickstartcd_$1
[ ! -d $flavor ] && echo ERROR: $flavor directory does not exist. && exit 1

version=$(basename $(pwd))
cd $flavor

echo Creating $version.$flavor.iso ...
mkisofs -m '.svn' -o ../$version.$flavor.iso -V "CIS $version" -b isolinux.bin -c boot.cat -no-emul
-boot -boot-load-size 4 -boot-info-table -R -J -V -T .
cd ..
