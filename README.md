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

* Have mapped the leader key to comma \(,\).
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

* Spellcheck.

	> F2 Enable spell check, since is in Spanish, but I not always typing on Spanish.
	>
	> Ctrl-l search backward for an spelling mistake and replace it with the first item on the dictionary.
	>
	> Ctrl-g undo the previous replacement.

* Window movement on splits.

	> Ctrl-h moves to the left window.
	>
	> Ctrl-j moves to the bottom window.
	>
	> Ctrl-k moves to the top window.
	>
	> Ctrl-l moves to the right window.

* Text marks \(<\+\+> <\(\)>\), used to remember positions or quick escape from a environment \(mostly on LaTeX\).

	> Space-Space moves to the next <\+\+>.
	>
	> The <\(\)> symbol is used for the snippets.

* Git shortcuts \(completion pending\).

	> F6 opens a split below and shows the git status.
	>
	> F7 git add the current file.
	>
	> F8 git commit.

* LaTeX snippets/shortcuts.

	> F4 in any mode saves the file.
	>
	> <Leader>i on a new file copy a IEEE template.
	>
	> <Leader>r on a new file copy a report template.
	>
	> <Leader>n on a new file copy a notes template.
	>
	> <Leader>s add a package and a command to import SVG images.
	>
	> <Leader>g add a graphic package.
	>
	> <Leader>c add the [circuitikz](https://github.com/circuitikz/circuitikz) package.

Those are not complete.

* LaTeX text snippets.

	> "" puts you in a quotation enviroment.
	>
	> $$ puts you in a in line math enviromen.
	>
	> ;b open a bold enviroment.
	>
	> ;i open a italic envirement.
	>
	> ;u underline.
	>
	> ;red color red.
	>
	> ;B begin/end enviroment.
	>
	> ;e equation enviroment.
	>
	> ;dm display math.
	>
	> ;s section.
	>
	> ;\-s subsection.
	>
	> ;\_s subsubsection.
	>
	> ;\+e equation array.
	>
	> ;\# enumerate list.
	>
	> ;l list.

* LaTeX math snippets.

	> // fraction command.
	>
	> \.I definite integral.
	>
	> \.i normal integral.
	>
	> \.l limit.
	>
	> \.\[ left and right square brackets.
	>
	> \.\{ left and right curly brackets.
	>
	> \.\( left and right round brackets.
	>
	> \.oo infinity symbol.
	>
	> \./ fraction.[¹]
	>
	> \.< angles.


* Python shortcuts.

	> F5 saves the current file and compile it.


# To do list.

- [ ] make a real to do list.


[¹]: this one allows you to type the numerator in curly brackets then just press \./ and generate the fraction command.
