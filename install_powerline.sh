# Fail on any command.
set -eux pipefail

sudo apt install pipx

# Install Powerline for VIM.
sudo apt install -y python3-pip
pipx install --user powerline-status
sudo cp configs/.vimrc ~/.vimrc
sudo apt install -y fonts-powerline

# Install Patched Font
mkdir ~/.fonts
sudo cp -a fonts/. ~/.fonts/
fc-cache -vf ~/.fonts/
