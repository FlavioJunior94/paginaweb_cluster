#/bin/sh
sudo echo "root:senha" | chpasswd
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo yum update -y
sudo yum -y install epel-release
echo "inicio instalação do Ansible"
sudo yum -y install ansible