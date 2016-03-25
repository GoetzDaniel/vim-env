echo "Welcome to the vim Setup deleting"
echo $HOME
# Delete .vimrc file
if [ -e "$HOME/.vimrc" ];then
    rm $HOME/.vimrc
	echo ".vimrc file is deleted!"
else
	echo ".vimrc did not exist before!"
fi

# Delete the .vim folder
if [ -e "$HOME/.vim/" ];then
    sudo rm -r $HOME/.vim/
	echo ".vim folder is deleted now!"
else
	echo ".vim folder did not exist before!"
fi

