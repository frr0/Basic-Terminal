# Basic-Terminal
Set of dotfiles that compose a basic but essential multi-platform cli environment

## Install

Programs to be installed
- nvim
- fish
- tmux
- [lazygit](https://github.com/jesseduffield/lazygit#installation)
- [Lunarvim](https://github.com/LunarVim/LunarVim)

## Config

> This works for Fedora

```
sudo dnf install neovim vim fish tmux
git clone https://github.com/frr0/Basic-Terminal.git
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/fzf
cd Basic-Terminal
ln .tmux.conf ~
ln config.fish ~/.config/fish/
ln config.lua ~/.config/lvim/
ln .vimrc ~
```
```
cat /etc/shells
chsh -s /usr/bin/fish
```
