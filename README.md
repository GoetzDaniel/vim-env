# vim-env

My personal config of vim following the screencast serie [Vim Mastery](https://laracasts.com/series/vim-mastery).
Thanks to [morrizon](https://github.com/morrizon/vim-env) for the inspiration.

See also my [Notes and Tips](notes_and_tips.md) for my collection of vim related Notes.
If you want to do a manual installation check the [manual installation](manual_installation.md) page. Else follow the installation process like it is described here.

### Installation

* Clone this Repository into your ~/.vim folder.
```
git clone git@gitlab.com:danielg1/vim-env.git ~/.vim/vim-env
```
* Run the setup script, that is included in the Repository
```
bash ~/.vim/vim-env/setup.sh
```
* If you want to undo the setup just run the script to delete the published setup again
```
bash ~/.vim/vim-env/delete_published_setup.sh
``` 
* If you want to add additional plugins in order to download them you have to run the following command from within vim:
```
:PluginInstall
```
