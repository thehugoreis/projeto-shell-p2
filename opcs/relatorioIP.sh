#!/bin/bash
#ver. 1.0

varIP=$(ip route | grep "dhcp src" | cut -d " " -f9)
varDNS=$(cat /etc/resolv.conf | grep "nameserver" | cut -d " " -f2)
varGT=$(ip route | grep "default via" | cut -d " " -f3)

dialog --title 'REALTÓRIO IP'\
   --msgbox "
   IP - $varIP
   DNS - $varDNS
   GATEWAY - $varGT" 0 0
clear
