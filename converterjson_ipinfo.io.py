import json
import ipaddress

# Abra o arquivo de entrada e leia as linhas
with open('/root/br-ips.json', 'r') as f:
    lines = f.readlines()

# Abra os arquivos de saída para escrita
with open('/root/ipv4.txt', 'w') as f_ipv4, open('/root/ipv6.txt', 'w') as f_ipv6:
    # Processa cada linha
    for line in lines:
        # Carrega a linha como um objeto JSON
        data = json.loads(line)
        # Verifica se o endereço IP inicial é IPv4 ou IPv6
        if ipaddress.ip_address(data['start_ip']).version == 4:
            # Escreve o intervalo de IP no arquivo de saída IPv4
            f_ipv4.write(f"{data['start_ip']}-{data['end_ip']}\n")
        else:
            # Escreve o intervalo de IP no arquivo de saída IPv6
            f_ipv6.write(f"{data['start_ip']}-{data['end_ip']}\n")
