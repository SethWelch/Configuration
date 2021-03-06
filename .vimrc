set nocompatible

set nowrap                        " don't wrap lines
set backspace=indent,eol,start    " allow backspacing over everything in insert mode
set autoindent                    " always set autoindenting on
set copyindent                    " copy the previous indentation on autoindenting
set number                        " always show line numbers

set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " number of spaces to use for autoindenting
set softtabstop=2                 " Sets the number of columns for a TAB.
set expandtab                     " Tabs are spaces

set shiftround                    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                     " set show matching parenthesis
set ignorecase                    " ignore case when searching
set smartcase                     " ignore case if search pattern is all lowercase,
                                  "    case-sensitive otherwise
set smarttab                      " insert tabs on the start of a line according to
                                  "    shiftwidth, not tabstop
set hlsearch                      " highlight search terms
set incsearch                     " show search matches as you type

set history=1000                  " remember more commands and search history
set undolevels=1000               " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                         " change the terminal's title
set visualbell                    " don't beep
set noerrorbells                  " don't beep

syntax on

set mouse=a
colorscheme delek
