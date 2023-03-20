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
Go get a nerdfont from here; install it like you would any other font.

https://www.nerdfonts.com/font-downloads

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
 
 ### Gopls 
Get latest golang here: https://go.dev/doc/install

```
go install golang.org/x/tools/gopls@latest
```
