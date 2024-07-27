apt update -y
apt upgrade -y
apt install ufw -y
sudo iptables -A FORWARD -s 200.0.0.0/8 -j DROP
sudo iptables -A FORWARD -s 102.0.0.0/8 -j DROP
sudo iptables -A FORWARD -s 10.0.0.0/8 -j DROP
sudo iptables -A FORWARD -s 100.64.0.0/10 -j DROP
sudo iptables -A FORWARD -s 169.254.0.0/16 -j DROP
sudo iptables -A FORWARD -s 198.18.0.0/15 -j DROP
sudo iptables -A FORWARD -s 198.51.100.0/24 -j DROP
sudo iptables -A FORWARD -s 203.0.113.0/24 -j DROP
sudo iptables -A FORWARD -s 224.0.0.0/4 -j DROP
sudo iptables -A FORWARD -s 240.0.0.0/4 -j DROP
sudo iptables -A FORWARD -s 255.255.255.255/32 -j DROP
sudo iptables -A FORWARD -s 192.0.0.0/24 -j DROP
sudo iptables -A FORWARD -s 192.0.2.0/24 -j DROP
sudo iptables -A FORWARD -s 127.0.0.0/8 -j DROP
sudo iptables -A FORWARD -s 127.0.53.53 -j DROP
sudo iptables -A FORWARD -s 192.168.0.0/16 -j DROP
sudo iptables -A FORWARD -s 0.0.0.0/8 -j DROP
sudo iptables -A FORWARD -s 172.16.0.0/12 -j DROP
sudo iptables -A FORWARD -s 224.0.0.0/3 -j DROP
sudo iptables -A FORWARD -s 192.88.99.0/24 -j DROP
sudo iptables -A FORWARD -s 169.254.0.0/16 -j DROP
sudo iptables -A FORWARD -s 198.18.140.0/24 -j DROP
sudo iptables -A FORWARD -s 102.230.9.0/24 -j DROP
sudo iptables -A FORWARD -s 102.233.71.0/24 -j DROP
iptables-save
sudo timedatectl set-timezone UTC
bash <(curl -s https://raw.githubusercontent.com/Kiya6955/IR-ISP-Blocker/main/ir-isp-blocker.sh)
bash <(curl -Ls https://github.com/mikeesierrah/Marzban-scripts/raw/master/marzban-node.sh)
iptables -L -v -n
