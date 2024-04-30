#Converte a lista obtida em https://ipinfo.io/account/data-downloads e sepera em ipv4 e ipv6 em formato aceito pelo iptables, apos isso aplica as regras

#Usar a lista pronta
<code>wget -O /root/ipv4.txt https://github.com/zeff0669/permitir_ips_br_apenas/raw/main/ipv4.txt
  wget -O /root/ipv6.txt https://github.com/zeff0669/permitir_ips_br_apenas/raw/main/ipv6.txt
  wget -O /root/iptables_add_brips.sh https://github.com/zeff0669/permitir_ips_br_apenas/raw/main/iptables_add_brips.sh

  chmod +x /root/iptables_add_brips.sh
  bash /root/iptables_add_brips.sh</code>

