sudo apt-get update
sudo apt-get upgrade -y
sudo apt install curl -y
# Git & basic aliases
echo "Git -> Installing..."
sudo apt-get install git -y
# Git Configs
. ./git-conf.sh
# GitHub CLI
echo "GitHub CLI -> Installing"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y
# Node.js & NVM
echo "Volta, Node.js & NPM installing..."
curl https://get.volta.sh | bash
volta install node
. ./node-modules.sh
echo "Installing Cypress required packages"
sudo apt-get install libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb -y
# Python
echo "Python 3.9 -> Installing..."
sudo apt-get install python3 python3-pip python3.8-venv -y
# Python modules
. ./py-modules.sh
# Snapcraft
echo "SnapCraft store -> Installing..."
sudo apt-get install snapd -y
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
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
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
# VSCode
echo "VSCode -> Installing..."
# wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
# sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
# sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
# rm -f packages.microsoft.gpg
# sudo apt-get install apt-transport-https
# sudo apt-get update
# sudo apt-get install code
sudo snap install code --classic
# WebStorm
# echo "WebStorm -> Installing"
# sudo snap install webstorm --classic
#Firefox
echo "Firefox -> Installing"
sudo apt-get install firefox -y
# Google Chrome
# echo "Google Chrome -> Installing..."
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
# Transmission
echo "Transmission TorrentClient -> Installing"
sudo add-apt-repository ppa:transmissionbt/ppa
sudo apt-get install transmission-gtk -y
echo "All installations complete!"
