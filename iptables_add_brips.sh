#!/bin/bash

iptables -P INPUT DROP

while read -r range; do
  iptables -A INPUT -m iprange --src-range "$range" -j ACCEPT
  sed -i "2 a\iptables -A INPUT -m iprange --src-range '$range' -j ACCEPT" /etc/rc.local
done < "/root/ipv4.txt"

while read -r range6; do
  iptables -A INPUT -m iprange6 --src-range6 "$range6" -j ACCEPT
  sed -i "2 a\iptables -A INPUT -m iprange6 --src-range6 '$range6' -j ACCEPT" /etc/rc.local
done < "/root/ipv6.txt"

sed -i "1 a\iptables -P INPUT DROP" /etc/rc.local
