
mkdir:
	mkdir -p ~/.config/nvim
	mkdir -p ~/.cache/tmp/
	mkdir -p ~/repo
	mkdir -p ~/work
	mkdir -p ~/tmp

ubunts-setup-all: install-tools_apt link-zsh

install-tools_apt:
	linux/install-tools_apt.sh

setup-zsh:
	[ -f ~/.zsh ] || ln -s ~/dotfiles/linux/zsh/.zsh ~/.zsh
	[ -f ~/.zshrc ] || ln -s ~/dotfiles/linux/zsh/.zshrc ~/.zshrc
	chsh -s /bin/zsh

link-wsl:
	[ -f ~/wsl.profile ] || ln -s ~/dotfiles/windows/wsl.profile ~/wsl.profile
	echo '' >>~/.profile
	echo 'source ~/wsl.profile' >>~/.profile
