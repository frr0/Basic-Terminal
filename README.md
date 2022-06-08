# Basic-Terminal
Set of dotfiles that compose a basic but essential multi-platform cli environment

## Install

Programs to be installed
- nvim
- fish
- tmux
- [lazygit](https://github.com/jesseduffield/lazygit#installation)
- [Lunarvim](https://github.com/LunarVim/LunarVim)

```
sudo dnf install neovim vim fish tmux
```

```
sudo apt install neovim vim fish tmux
```

## Config

```
git clone https://github.com/frr0/Basic-Terminal.git
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/fzf
cd Basic-Terminal
ln .tmux.conf ~
ln config.fish ~/.config/fish/
ln config.fish ~/.config/nvim/
ln .vimrc ~
```
```
cat /etc/shells
chsh -s /usr/bin/fish
```
