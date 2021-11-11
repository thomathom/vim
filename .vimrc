"" Configuration file for vim
"" No plugins, trying to keep it as vanilla as possible!

" Always display the status line, even if only one window is displayed
set laststatus=2

" Use visual bell instead of beeping when doing something wrong
"set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
"set t_vb=

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
set modelines=0		" CVE-2007-2438
set nomodeline


"Fuzy Finder
set path+=**
set wildmenu

syntax on
filetype on
filetype plugin on
set synmaxcol=0

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden


" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1


"" Settings for editing YAML/YML files
set foldcolumn=3 " zc foldclose // zo foldopen
set listchars=tab:▸\ ,eol:¬,trail:.
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab cursorcolumn cursorline autoindent smartindent list
autocmd FileType yml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab cursorcolumn cursorline autoindent smartindent list

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>


" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Show linenumbers (alt. set relativenumbers)
set number

set foldlevelstart=20

"ctags config for yaml files
"let g:tagbar_type_ansible = {
"	\ 'ctagstype' : 'ansible',
"	\ 'kinds' : [
"		\ 't:tasks'
"	\ ],
"	\ 'sort' : 0
"\ }

""Plugin stuff (only if using plugins)
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_sign_error = '✘'
"let g:ale_sign_warning = '⚠'
"let g:ale_lint_on_text_changed = 'never'

" Show partial commands in the last line of the screen
set showcmd

" automatically commit to git, if :w
autocmd BufWritePost *  execute '! if [ -d .git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add % ; git commit -m %; git push ; fi'

" for d%
packadd! matchit
" :let b:match_words = '\<if\>:\<end\>,' 

" example for skeleton files:
autocmd BufNewFile *.sh 0r ~/.vim/skeletons/bash_script.sh



""" EOF 
