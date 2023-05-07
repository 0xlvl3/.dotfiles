# .dotfiles

Before you install dots.

#### zsh 
zsh and zsh suggestions plugin.
```
sudo apt update
sudo apt install zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

#### Nerdfont
First:
```
sudo apt-get install fontconfig
```

Go get a nerdfont from here; install it like you would any other font.

https://www.nerdfonts.com/font-downloads

Personal favourite:
```
mkdir -p ~/.fonts
cd ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip
unzip JetBrainsMono.zip
fc-cache -fv
```

#### Nodejs and NPM Ubuntu
https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04

#### TMUX plugin manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

#### Neovim Latest
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

#### Packer Plugins for Neovim
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```

#### Needed for vim-go
```
git clone https://github.com/fatih/vim-go.git ~/.local/share/nvim/site/pack/plugins/start/vim-go
```
 
 ### Gopls 
Get latest golang here: https://go.dev/doc/install

```
go install golang.org/x/tools/gopls@latest
```

### Git stuff 

```
git config --global core.editor "nvim"
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
git config --global --list
```


# Other packages required 
- imagemagick -> neofetch img
- fehg -> backgrounds
- picom -> graphical effects for wm
- fonts -> Jetbrains Nerd Font, Noto Color Emoji, Apple Color Emoji
