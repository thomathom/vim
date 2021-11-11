### Work in progress
## for the vim notation, see: http://vimdoc.sourceforge.net/htmldoc/intro.html#key-notation

# yank (copy) [y] whole document [%] into system clipboard [+]
:%y+

# comment out [#] a whole block (selected by Visual block mode) 
<C-v> (+ select blocks/lines) + <S-i> + '#' + <Esc> 

# Unicode characters can be inserted by typing ctrl-vu followed by the 4 digit hexadecimal code. Example: ▸
<C-v> + u + 25b8 

# Move a Window from one Tab to another
:tabnew
:buffers "note the numbers
:split
:bn " where n is the number of 
<CTRL-W><CTRL-W>
:bn " for the other file
:tabonly " not necessary, closes every other tab


## Tabs

### New Tab

* `:tabnew` - new blank tab
* `:tabedit [file]` - open file in tab

### Cursor Movement

* `gt` (`:tabn`) - next tab
* `gT` (`:tabp`) - previous tab
* `[i]gt` - go to tab `[i]`

### Tabs Management

* `:tabs` - list open tabs
* `:tabm 0` - move current tab to first position
* `:tabm` - move current tab to last position
* `:tabm [i]` - move current tab to position `[i]`

### Close Tab

* `:tabc` - close current tab
* `:tabo` - close all other tabs

## Window Split

### New Split

`Pro-Tip:` control splitting directionality by setting `splitright` and `splitbelow` options.

* `<C-w>n` (`:new [file]`) - split horizontaly
* `<C-w>s` (`:split [file]`) - split horizontaly
* `<C-w>v ` (`:vsplit [file]`) - split verticaly

### Cursor Movement

* `<C-w>w` - next split
* `<C-w>p` - previous split
* `<C-w><Up>` - move above
* `<C-w><Down>` - move bellow
* `<C-w><Left>` - move left
* `<C-w><Right>` - move right

### Splits Movement

* `<C-w>r` - rotate to the right
* `<C-w>H` - move to the left
* `<C-w>J` - move to the bottom
* `<C-w>K` - move to the top
* `<C-w>L` - move to the right
* `<C-w>T` - (`:tab split`) move split to new tab

### Resize Split

* `<C-w>p +` - increase height
* `<C-w>p -` - decrease height
* `<C-w>p <` - increase width
* `<C-w>p >` - decrease width

### Close Split

* `<C-w>c` (`:close`) - close split
* `<C-w>q` (`:q`) - close split and quit file
* `<C-w>o` (`:only`) - close all other splits

## Sources

* http://codeincomplete.com/posts/2011/2/14/split_windows_and_tabs_in_vim/
* http://robots.thoughtbot.com/post/48275867281/vim-splits-move-faster-and-more-naturally
* http://vim.wikia.com/wiki/Using_tab_pages
* http://vim.wikia.com/wiki/Resize_splits_more_quickly
