#!/bin/bash 
# start hardening scripts
###################################################################
#Script Name	:                                                                                              
#Description	:                                                                                 
#Args           :                                                                                           
#Author       	:                                              
#tag         	:MakerOfMagic
###################################################################

check_root(){
    ROOT_ID=0
    if [ "$UID" -eq "$ROOT_ID" ]; then
        echo "you need to be root!"
        exit 1;
    fi
}

echo 'helper to make linux Secure'
echo 'select interface'

cat -b ./list/dirtyinterfaces 
echo \n
ROOT_ID
echo enter line number
read user_imput
sed -n "$user_imput"p ./list/dirtyinterfaces






exit 0
