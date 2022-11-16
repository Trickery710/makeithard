#!/bin/sh

ROOT_ID="0"
DATE=`date`
NO_USERS=`who | wc -l`
UPTIME=`uptime`

check_root(){
    if [ "$UID" -eq "$ROOT_ID" ]; then
        echo "You are not allowed to execute this program!"
        exit 1;
    fi
}

print_sys_info(){
    echo "System Time    : $DATE"
    echo "Number of users: $NO_USERS"
    echo "System Uptime  : $UPTIME"
}

#turning on and off debugging of check_root function
set -x ; check_root;  set +x ;
print_sys_info


#make working dir
mkdir /isohard

#search volumes
fdisk -l

#search the output
 mount | grep ^/dev

 #mount root with mkdir isohard
 mount /dev/ isohard

#mount boot partition
 mount /dev/sdXN /isohard/boot

#mont last specils file system files
 mount -t proc proc /isohard/proc
mount -t sysfs sys /isohard/sys
mount -o bind /dev /isohard/dev
mount -t devpts pts /isohard/dev/pts

chroot /isohard


exit
umount /isohard/dev/pts
umount /isohard/dev
umount /isohard/sys
umount /rescue/proc

umount /isohard

exit 0
