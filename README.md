# Configs

These are my configuration files, for now I only have three documents and only my vimrc is important, the two others have only one change.

## bashrc

This is a typically bashrc file, the only different is that I activate Vi mode on bash.

## gitconfig

My gitconfig for the moment only setup VIM as my main text editor.

## vimrc

This are all the VIM snippets and plugins that I use on VIM.

### Plugins

I only use one plugin, that is [vimtex](https://github.com/lervag/vimtex). Vimtex as the name may suggest is a latex plugin for VIM it allows me to use [zathura](https://github.com/pwmt/zathura) which have vim-like keybindings, and have some others awesome features as well.

Other plugins that are interesting are [NERDTree](https://github.com/scrooloose/nerdtree), [UltiSnips](https://github.com/SirVer/ultisnips), [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe).

You can install those with any plugin manager, I personally use [vim-plug](https://github.com/junegunn/vim-plug).

### Basic configurations

I set up some basic configurations on my vimrc, those are:

* Have mapped the leader key to comma (,).
* Set nocompatible.
* Enable syntax highlighting.
* Set local language to Spanish.
* Set numbers and relative numbers.
* Autoindent and tabstop at 4 spaces.
* The splits are: horizontal to the bottom and vertical to the right.
* Enable autocomplete.
* Disable autocomment.
* Deletes all trailing withe spaces on save.
* Puts you in the middle of a pair of brackets when both are typed sequentially.

### Snippets and keyboard shortcuts.

* Spellcheck

	> F2 Enable spell check, since is in Spanish, but I not always typing on Spanish.
	> Ctrl-l search backward for an spelling mistake and replace it with the first item on the dictionary.
	> Ctrl-g undo the previous replacement.



