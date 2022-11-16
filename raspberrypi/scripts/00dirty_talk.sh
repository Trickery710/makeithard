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
    if [ "$UID" -eq "$ROOT_ID" ]; then
        echo "you need to be root!"
        exit 1;
    fi
}

echo 'helper to make linux Secure'
echo 'select interface'

cat <<EOF>> ./example.exam
zzz
z
z
EOF

cat ./example
