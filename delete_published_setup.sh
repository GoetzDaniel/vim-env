echo "Welcome to the vim Setup deleting"
echo $HOME
# Delete .vimrc file
if [ -e "$HOME/.vimrc" ];then
    rm $HOME/.vimrc
	echo ".vimrc file is deleted!"
else
	echo ".vimrc did not exist before!"
fi

# Delete the colors folder
if [ -e "$HOME/.vim/colors/" ];then
    sudo rm -r $HOME/.vim/colors/
	echo "colors folder is deleted now!"
else
	echo "colors folder did not exist before!"
fi

# Delete the bundle folder
if [ -e "$HOME/.vim/bundle/" ];then
    sudo rm -r $HOME/.vim/bundle/
	echo "bundle folder is deleted now!"
else
	echo "bundle folder did not exist before!"
fi

# Delete the snippets folder
if [ -e "$HOME/.vim/snippets/" ];then
    sudo rm $HOME/.vim/snippets
	echo "snippets link is deleted now!"
else
	echo "snippets link did not exist before!"
fi
