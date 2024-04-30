#!/bin/bash

while read -r range; do
  iptables -A INPUT -m iprange --src-range "$range" -j DROP
done < "/root/ipv4.txt"