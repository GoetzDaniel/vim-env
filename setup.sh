echo "Welcome to the vim config Setup"
echo $HOME
# Create .vimrc file and add the sourcing to config.vim
if [ -e "$HOME/.vimrc" ];then
	echo ".vimrc already exists! Please check on your own if you want to replace it or not!"
else
	echo "so ~/.vim/vim-env/config.vim" >> $HOME/.vimrc
	echo ".vimrc file was created and sourcing to config.vim was added"
fi

# Create the .vim folder if not existing yet
if [ -e "$HOME/.vim/" ];then
	echo ".vim folder already exists!"
else
	mkdir $HOME/.vim/
	echo ".vim folder was created!"
fi


# Create the colors folder if not existing yet
if [ -e "$HOME/.vim/colors/" ];then
	echo "Colors folder already exists!"
else
	mkdir $HOME/.vim/colors/
	echo "Colors folder was created!"
fi

# Install wget

sudo apt-get install wget

# Download vim-atom-dark-256 theme
if [ -e "$HOME/.vim/colors/atom-dark-256.vim" ];then
	echo "atom-dark-256 theme already downloaded before!"
else
	wget https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim -O $HOME/.vim/colors/atom-dark-256.vim
	echo "atom dark 256 theme was downloaded now!"
fi
if [ -e "$HOME/.vim/colors/atom-dark.vim" ];then
	echo "atom-dark theme already downloaded before!"
else
	wget https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark.vim -O $HOME/.vim/colors/atom-dark.vim
	echo "atom dark theme was downloaded now!"
fi

# Creates a link to the snippets
if [ -e "$HOME/.vim/snippets/" ];then
	echo "Snippets folder already exists!"
else
	ln -s $HOME/.vim/vim-env/snippets ~/.vim/
	echo "Link to snippet folder was created!"
fi

# Install Vundle

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install all plugins

vim +PluginInstall +qall
