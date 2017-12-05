#!/usr/bin/sh

total_memory=$(free -m | grep Mem | awk '{print $2" MB"}')
used_memory=$(free -m | grep Mem | awk '{print $3" MB"}')
free_memory=$(free -m | grep Mem | awk '{print $4" MB"}')

total_swap=$(free -m | grep Swap | awk '{print $2" MB"}')
used_swap=$(free -m | grep Swap | awk '{print $3" MB"}')
free_swap=$(free -m | grep Swap | awk '{print $4" MB"}')

echo
echo "Memory:"
echo " Free  ==> ${total_memory}"
echo " Used  ==> ${used_memory}"
echo " Total ==> ${free_memory}"
echo
echo "Swap:"
echo " Free  ==> ${total_swap}"
echo " Used  ==> ${used_swap}"
echo " Total ==> ${free_swap}"