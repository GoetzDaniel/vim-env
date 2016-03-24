# vim-env

My personal config of vim following the screencast serie [Vim Mastery](https://laracasts.com/series/vim-mastery).

See also my [Notes and Tips](notes_and_tips.md) for my collection of vim related Notes.

### Installation

* Clone into your ~/.vim folder.
* Add the following line to your ~/.vimrc file:
```
so ~/.vim/vim-env/config.vim
```
* Download the [vim-atom-dark](https://github.com/gosukiwi/vim-atom-dark) colorscheme into the folder ~/.vim/colors

### Plugins

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
