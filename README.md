# dotfiles
Run
```sh ./install```

Install:

[Dvorak Qwerty](https://github.com/prog666/dvorak-qwerty)
[Remap keys second method](https://ictsolved.github.io/remap-key-in-linux/)

### alacritty 
`sudo apt install alacritty`
### zsh 
`sudo apt install zsh`
### ohmyzsh 
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
### powerlevel10k + font
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
Install font
```source .p10k.zsh```
### fasd 
`sudo apt install fasd`
### zsh-autosuggestions
`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
### tmux 
`sudo apt install tmux`
### ohmytmux
`cd`

`git clone https://github.com/gpakosz/.tmux.git`

`ln -s -f .tmux/.tmux.conf`

### Tmux Plugin Manager
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

`tmux source ~/.tmux.conf`

### vim-plug
Automatic
