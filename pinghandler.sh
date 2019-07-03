#!/bin/bash
echo "select the operation ************"
echo "  1)operation 1"
echo "  2)operation 2"

read n
case $n in
  1) echo "You chose Option 1 that blocks the ping" && echo "1" >  /proc/sys/net/ipv4/icmp_echo_ignore_all ;;
  2) echo "You chose Option 2 that allows the ping" && echo "0" >  /proc/sys/net/ipv4/icmp_echo_ignore_all;;
  *) echo "invalid option";;
esac
