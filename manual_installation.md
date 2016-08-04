# Manual installation

If you do not like the installation like it is done by the installation script here are some information for manual installation


* To get started with this package add the following line to your ~/.vimrc file:
```
so ~/.vim/vim-env/config.vim
```
* Download the [vim-atom-dark](https://github.com/gosukiwi/vim-atom-dark) colorscheme into the folder ~/.vim/colors



### Plugins

#### Vundle
* In order to manage your plugins you need to git clone Vundle with the following command
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### Ctags
* Install [ctags](http://ctags.sourceforge.net/). On Linux you can use apt-get on Mac you can use [Homebrew](http://brew.sh/)
```
sudo apt-get install ctags
```
* To use ctags in a Project you have to add all the files (or you can also exclude some)
```
Ctags -R --exclude vendors
```
* Use the option --exclude if you want to exclude a specific folder from your tags
* Put the created 'Tags'-file on your gitignore 

#### vim-php-cs-fixer
* You need to install the [php-cs-fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer) in order to use the vim Plugin

#### ultisnips
* If you want to use ultisnips with vim lower than 7.4 you have to use the version 3.0 therefore run:
```
git co 3.0
```
