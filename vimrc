"My first vimrc! for that matter it is my first RC!
"Author : Shubham Singhal
"Explanations will be provided for each command I write
"Let's Start! 

"Cardinal rule : don't put anything in u r vimrc if u dont understand.
"                so please blindly dont copy. Understand and use.
"                hopefully someone in future will copy!!


"To have all the features of vim
"Not Necessary but as the article says - 'better safe than sorry'
"https://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless
set nocompatible

"To make to have 4 chars when I press tab, tabs as spaces and for indentation
set softtabstop=2 shiftwidth=2 expandtab

"To set width of a line - following the crowd
set textwidth=78

"To indent properly - will explore more and write more good explantion
set autoindent smartindent

" To show line numbers
set number

" To highlight current line
set cursorline

" To  highlight matching [{()}]
set showmatch

"To ignore case while seraching
set ignorecase

"To use case if any caps are used
set smartcase

"To search as chars are added
set incsearch

"To hihlight matches
set hlsearch

"To show incomplete commands
"found it in vimrc referred in vimtutor
set showcmd

"To show some stats at the bottom-right
set ruler

"To complete words
"https://www.cs.oberlin.edu/~kuperman/help/vim/completion.html
set dictionary=/usr/share/dict/words

"Setting Backspace option, people say its useful
"Will try and see
"https://stackoverflow.com/questions/11560201/backspace-key-not-working-in-vim-vi
"http://vimhelp.appspot.com/options.txt.html#%27backspace%27
set backspace=2 "indent,eol,start

"To enable Syntax highlighting
"shouldn't use 'syntax on' as it messes with colors
"refer :https://goo.gl/4JZFz8
syntax enable

"---------------backing up stuff-------------------
"To backup
set backup
set noswapfile
set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/  " swap files

"------------------code folding stuff---------------
"https://unix.stackexchange.com/questions/141097/how-to-enable-and-use-code-folding-in-vim

"To fold code and stuff
"http://vimhelp.appspot.com/options.txt.html#%27foldmethod%27
set foldmethod=indent

"To not fold code when u open a file
"http://vimhelp.appspot.com/options.txt.html#%27foldenable%27
set nofoldenable

"To not fold single-level
"have to understand more - can be done while testing
set foldlevel=2

"--------------All Keys related stuff----------

"To allow mouse-clicks to set cursor
"https://www.cs.oberlin.edu/~kuperman/help/vim/etc.html
"Update: Can't copy and paste using shift+insert - so for now disabling it
"set mouse=a

"To call :set paste with F5
"pastetoggle has some problem
nnoremap <F5> :set paste!<cr>

"To map double escape to remove highlighted parts from search.
"understand what 'nmap', 'nnoremap' and other means.
"useful link: https://goo.gl/QiiP44
nmap <esc><esc> :noh<return>

"To have undo feature with <c-u>  and <c-w> in insert mode
"http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

"To use F1 to save in insert mode. so that I dont have to do <Esc>:w and then
"insert again
inoremap <F1> <c-o>:w<cr>

"to copy something b/w the terminals, files
"https://superuser.com/questions/235117/vim-copy-paste-across-terminals

"----------------All plugin related stuff--------------------
"My First Plugin manager - Pathogen
"Installing so that I can use some linter
"Hope it works
"Ref: https://github.com/tpope/vim-pathogen
execute pathogen#infect()

"Doing something which the pathogen README suggested
"Not sure will plugins will work without this?
"But adding just in case
"Vim language is hard to understand - atleast not beginner friendly
"Something we could do about this
"here is ref about what I am doing:
"https://bit.ly/2s80loy
"
"Update just saw :filetype output - I guess we don't need it
"Not doing for now

"-------------------Plugins----------------------------
"
"Syntastic
"Settings from https://github.com/vim-syntastic/syntastic#installation
"Don't know what they mean - breaking the Golden rule. But for now its ok
"Will change these setting later after reading manual if needed
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Cpp linter options
let g:syntastic_cpp_checkers = ['cppcheck', 'gcc']
let g:syntastic_cpp_include_dirs = ["/home/ssinghal/freemail/server", 
                                \"/home/ssinghal/freemail/server/shared",
                                \"/home/ssinghal/freemail/server/db/include",
                                \"/home/ssinghal/freemail/server/daemon",
                                \"/home/ssinghal/freemail/server/daemon/thread_dns",
                                \"/home/ssinghal/freemail/server/email_indexing",
                                \"/home/ssinghal/freemail/shared",
                                \"/home/ssinghal/freemail/shared/threads",
                                \"/home/ssinghal/freemail/shared/include",
                                \"/home/ssinghal/freemail/shared/gleafarc/h",
                                \"/home/ssinghal/freemail/shared/cstr",
                      \"/home/ssinghal/packages/build/googletest/googletest/include"]

let g:syntastic_cpp_compiler_options = ' -std=c++14'
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1

"cppcheck options
let g:syntastic_cpp_cppcheck_args = '--language=c++'

"clang_check options
let g:syntastic_cpp_clang_check_args = '-analyze'
let g:syntastic_clang_check_config_file = '/home/ssinghal/.vim/.clang_check_config'

