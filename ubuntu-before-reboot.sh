# preparing
sudo apt update
sudo apt install git
sudo apt install curl

# zsh
sudo apt install zsh
sudo apt install powerline fonts-powerline

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc

# volta
curl https://get.volta.sh | bash
source ~/.zshrc

# fzf
sudo apt install fzf

# bat
sudo apt install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# vs-code
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# vim
sudo apt install vim
sudo apt install neovim

# install alises
echo 'alias e="exit"' >> ~/.zshrc
echo 'alias n="npm"' >> ~/.zshrc
echo 'alias nr="npm run"' >> ~/.zshrc
echo 'alias g="git"' >> ~/.zshrc

# flatpak and flathub
# WARNING: 
# It is better to keep this script at the end, because it requires a reboot in order for the changes to be visible
sudo apt install flatpak
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
reboot

# Check `./ubuntu-after-reboot.sh after this script`
