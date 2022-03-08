# Basic-Terminal
Set of dotfiles that compose a basic but essential multi-platform cli environment

## Install

Programs to be installed
- nvim
- fish
- tmux
- [lazygit](https://github.com/jesseduffield/lazygit#installation)

`sudo dnf install nvim vim fish tmux`

`sudo apt install nvim vim fish tmux`

## Config

```
git clone https://github.com/frr0/Basic-Terminal.git
cd Basic-Terminal
ln .tmux.conf ~
ln config.fish ~/.config/fish/
ln config.fish ~/.config/nvim/
ln .vimrc ~
```
