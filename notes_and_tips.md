# Notes and Tips

### Basics

* ```zz``` to center the line you are working in

### Textwork

* Indent with ```>>``` and unindent with ```<<```.
* ```Ctrl + r``` redo.
* ```Ctrl + 1``` go to previous editing point.

### Buffers

* ```:ls``` to list all buffers.
* ```:bd``` to destroy current buffer.
* ```:q``` doesn`t destroy the buffer just 'minimizes' it.
* ```:bp``` go to previous buffer.
* ```:b1``` go to buffer with the indes 1.
* ```ctrl + o``` move back in buffers.
* ```ctrl + i``` move forward in buffers.
* ```ctrl + 6``` go to previous editing point.

### Marks

* lower case marks only work for the current file.
* upper case marks work for the whole system.
* ```m + [any key]```` to set a mark.
* ```' + [key]``` to go to the line marked by [key].
* ```\` + [key]``` to go to the exact point marked by [key].
* ```:marks``` to show a list of all marks.
* ```d + ' + m``` delete all until mark.

### Plugins

#### CtrlP

* ```Ctrl + p``` for opening the CtrlP 'search'.
* ```Ctrl + f``` shows variables, classes and functions in the current file.
* ```Ctrl + m``` shows the most recently used files.

#### Ctags

Tag file has to be updated with ```Ctags -R``` after a new function was added. If you want to exclude something you can do it with ```Ctags -R --exclude /vendor```.

* ```,f [Funktion]``` go to [Funktion].
* ```:tn``` go to next tag.
* ```:tp``` go to previous tag.
* ```:ts``` list all matches.
* ```ctrl + ]``` go to the current funktion under the cursor.

#### Vinegar

The commands work in the 'Vingar' mode. Press ```-``` to get there.

* ```d``` to creadte a directory.
* ```D``` to delete the directory or file under your Cursor.
* ```%´´´ to creadte a new file.

#### Surround

* ```cs + ( + [``` to replace the surrounding ( with [.
* ```ds + (``` to delete the surrounding (.
In HTML
* ```cst``` to change the surrounding HTML tags.
* ```dst``` to delete the surrounding HTML tags.
* ```ysiwt``` to add surrounding HTML tags to a word.
* ```ysst``` to add surrounding HTML tags to a line.
* ```VS``` to add surrounding HTML tags above and below surrounded section/line.

#### Autocompletion

* Usually with Ctrl + n but now also just with tab.
