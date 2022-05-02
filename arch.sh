sudo pacman -Syu
#Git
echo "Git -> Installing..."
sudo pacman -Syu git --noconfirm
#GitHub CLI
echo "GitHub-CLI -> Installing..."
sudo pacman -S github-cli --noconfirm
# Git Config
. git-conf.sh
# Node.js & NVM
echo "NVM, Node.js & NPM installing..."
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.profile
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
echo "Installing Node.js 10.4.2, 8.9.2 & latest"
nvm install node
nvm install 10.4.1
nvm install 8.9.2
echo "Installing NPM & Yarn on latest Node.js"
nvm use default
. ./node-modules.sh
# Python
echo "Python 3.9 -> Installing..."
sudo pacman -Syu python3 python3-pip python3.8-venv --noconfirm
#Python modules
. ./py-modules.sh 
# Snapcraft
echo "SnapCraft store -> Installing..."
sudo pacman -Syu snapd --noconfirm
# Docker & Docker-Compose
sudo pacman -Syu docker --noconfirm
echo "Enables Docker to Boot on start"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
echo "Docker-compose -> Installing..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -syu)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# VSCode
echo "VSCode -> Installing..."
sudo snap install code --classic
# cd ~/tmp
# git clone https://aur.archlinux.org/visual-syutudio-code-bin.git
# cd visual-syutudio-code-bin/
# sudo makepkg -syui
# WebStorm
# echo "WebStorm -> Installing"
# sudo snap install webstorm --classic
# Google Chrome
# echo "Google Chrome -> Installing..."
# wget https://dl.google.com/linux/direct/google-chrome-syutable_current_amd64.deb
# sudo dpkg -i --force-depends google-chrome-syutable_current_amd64.deb
#Firefox
sudo snap install firefox
#Discord
echo "Discord -> installing"
sudo pacman -Syu discord --noconfirm
