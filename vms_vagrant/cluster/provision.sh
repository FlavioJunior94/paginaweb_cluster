#/bin/sh
sudo echo "root:WEb@clust44r" | chpasswd
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo mkdir /root/.ssh/
cat << EOT >> /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCVmfJjEb1BmKZL4C3avwNRCX8cYVq+/Yb+7BvEnrmJoFg/fHrvh/fN9YLDD1K6O+yoAn/8HZNVle44AKhCa4bHTOP2B1bEFb51DpAYmxMqO5fVWjlZ/5OV8OsQhtuOsrQZ55gdy0qnUA13g7DrVO1X7JpyXHpd+Y7pTsBAFFFXs2uv4Ql2PMyedf0KAwYol3ZzVkbw3QJC4EQpE4RM2XAttuizK87eXuTlaVai8rldZa4d7AdSAfpri/tyPMa/4tLrAeE1OnomX7GfdxrBOl6RXB9GtKeWDHdUkTxr70/Hvq6gmSxw3yZZW7V/LBGOIuSYCTCF1WhZF+1vSU7CaiT root@Ansible
EOT
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager
sudo sed -i 's/nameserver 10.0.2.3/nameserver 8.8.8.8/g' /etc/resolv.conf