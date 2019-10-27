set nocompatible               " be iMproved

filetype off                   " required!

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'techlivezheng/vim-plugin-minibufexpl'
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'slashmili/alchemist.vim'
Plug 'w0rp/ale'
Plug 'jelera/vim-javascript-syntax'
Plug 'vimwiki/vimwiki'
Plug 'ruanyl/vim-gh-line'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
 Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Plug 'vim-scripts/AutoComplPop' " 3-21-2019
"Plug 'roman/golden-ratio'                     " 3-4-2019
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'JavaScript-Indent'
"Plug 'liuchengxu/space-vim-dark'
"Plug 'gabesoft/vim-ags'
"Plug 'skammer/vim-ruby-complexity'
"Plug 'tpope/vim-markdown'

" Removed 1-15-19
"Plug 'thoughtbot/vim-rspec'
"Plug 'christoomey/vim-tmux-runner'
"Plug 'gregsexton/gitv'
"Plug 'tpope/vim-unimpaired'
"Plug 'tpope/vim-abolish'
"Plug 'tpope/vim-repeat'
"Plug 'sheerun/vim-polyglot'
"Plug 'tpope/vim-dispatch'

call plug#end()

filetype plugin indent on

let g:miniBufExplAutoStart = 1
let g:miniBufExplBuffersNeeded = 1

" MiniBufExpl Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

let g:airline_powerline_fonts=1
let g:airline_theme='light'
" let g:airline_section_x='' "filetype by default
let g:airline_section_y='' "encoding by default

"NERDTree
let NERDTreeShowLineNumbers=1
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" " Rspec.vim / vim-tmux-runner
" " https://vimeo.com/126420226
" let g:rspec_command = "call VtrSendCommand('rspec {spec}', 1)"
" map <Leader>rt :call RunCurrentSpecFile()<CR>
" map <Leader>rn :call RunNearestSpec()<CR>
" map <Leader>rl :call RunLastSpec()<CR>
" nnoremap <leader>fr :VtrFocusRunner<cr>
" nnoremap <leader>kr :VtrKillRunner<cr>
" nnoremap <leader>sl :VtrSendLinesToRunner<cr>
" nnoremap <leader>dr :VtrSendCtrlD<cr>
" nnoremap <leader>ar :VtrAttachToPane<cr>
"
" let g:VtrStripLeadingWhitespace = 0
" let g:VtrClearEmptyLines = 0
" let g:VtrAppendNewline = 1

let g:ag_working_path_mode="r"
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
