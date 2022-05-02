. ubuntu.sh
# GitHub CLI
echo "GitHub CLI -> Installing"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=focal signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y
# Docker & Docker-Compose
echo "Docker (required packages) -> Installing..."
sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  focal stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "Docker -> Installing..."
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo chmod 666 /var/run/docker.sock
echo "Enables Docker to Boot on start"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
echo "Docker-compose -> Installing..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#VirtualBox
echo "VirtualBox -> Installing"
# sudo apt update
# sudo apt install virtualbox virtualbox-ext-pack
echo "VirtualBox from Oracle repos -> Installing"
sudo apt install gcc make linux-headers-$(uname -r) dkms
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian focal contrib" >> /etc/apt/sources.list.d/virtualbox.list'
sudo apt update
sudo apt purge virtualbox*
sudo apt install virtualbox
#SnapStore
sudo apt-get install snapd
sudo snap install snap-store
