# Guide for Ubuntu.
```
sudo apt update
sudo apt install git
sudo apt install curl
```

## zsh

```
# zsh
sudo apt install zsh
sudo apt install powerline fonts-powerline

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Links
- https://ohmyz.sh/#install

## Zoxide
```
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc
```
### Links
https://github.com/ajeetdsouza/zoxide

## Volta (node version control and installer)
```
curl https://get.volta.sh | bash
source ~/.zshrc
```

### Links 
https://volta.sh/

## fzf
```
sudo apt install fzf
```
### Links
https://github.com/junegunn/fzf

## bat

```
sudo apt install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

```

### Links
https://github.com/sharkdp/bat?tab=readme-ov-file#installation

## My favorite alises

```
alias e="exit"
alias n="npm"
alias nr="npm run"
alias g="git"
```

*Script for add to zshrc*

```
echo 'alias e="exit"' >> ~/.zshrc
echo 'alias n="npm"' >> ~/.zshrc
echo 'alias nr="npm run"' >> ~/.zshrc
echo 'alias g="git"' >> ~/.zshrc
```

# Applications
## Code 
```
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
```

## Vim / Neovim
```
sudo apt install vim
sudo apt install neovim
```

## Flatpak and Flathub
```
sudo apt install flatpak
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
reboot
```

### Telegram
```
flatpak install flathub org.telegram.desktop
```

### Chrome
```
flatpak install flathub com.google.Chrome
```

### Firefox
```
flatpak install flathub org.mozilla.firefox
```
