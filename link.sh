ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.zlogin ~/.zprezto/runcoms/zlogin
ln -sf ~/dotfiles/.zlogout ~/.zprezto/runcoms/zlogout
ln -sf ~/dotfiles/.zpreztorc ~/.zprezto/runcoms/zpreztorc
ln -sf ~/dotfiles/.zprofile ~/.zprezto/runcoms/zprofile
ln -sf ~/dotfiles/.zshenv ~/.zprezto/runcoms/zshenv
ln -sf ~/dotfiles/.zshrc ~/.zprezto/runcoms/zshrc
mkdir -p ~/.config
ln -sf ~/dotfiles/nvim ~/.config/nvim
git config --global core.excludesfile ~/.gitignore_global
