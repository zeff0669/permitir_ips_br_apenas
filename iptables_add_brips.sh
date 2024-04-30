#!/bin/bash

while read -r range; do
  iptables -A INPUT -m iprange --src-range "$range" -j ACCEPT
done < "/root/ipv4.txt"

while read -r range6; do
  iptables -A INPUT -m iprange6 --src-range6 "$range6" -j ACCEPT
done < "/root/ipv6.txt"
