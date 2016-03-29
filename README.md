# vim-env

My personal config of vim following the screencast serie [Vim Mastery](https://laracasts.com/series/vim-mastery).
Thanks to [morrizon](https://github.com/morrizon/vim-env) for the inspiration.

See also my [Notes and Tips](notes_and_tips.md) for my collection of vim related Notes.

### Installation

* Clone into your ~/.vim folder.
* Add the following line to your ~/.vimrc file:
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
* You neet to install the [php-cs-fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer) in order to use the vim Plugin

#### ultisnips
* If you want to use ultisnips with vim lower than 7.4 you have to use the version 3.0 therefore run:
```
git co 3.0
```
