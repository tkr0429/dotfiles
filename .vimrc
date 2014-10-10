let g:hybrid_use_Xresources = 1
syntax on
" NeoBundle系
set nocompatible " be iMproved
filetype off
"filetype plugin on

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

" Original Repository on Github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle "Shougo/neosnippet-snippets"
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree' 
NeoBundle 'h1mesuke/vim-alignta'
" jedi-vim系
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'davidhalter/jedi-vim'
" Color Scheme
NeoBundle 'w0ng/vim-hybrid'
" ansible-yaml
NeoBundle 'chase/vim-ansible-yaml'
"perl関連
NeoBundle 'petdance/vim-perl'
NeoBundle 'hotchpotch/perldoc-vim'
NeoBundle 'thinca/vim-quickrun'

"Markdown系
"NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
"NeoBundle 'vim-pandoc/vim-pandoc'
"NeoBundle 'vim-pandoc/vim-pandoc-syntax'

filetype plugin indent on     " required!
filetype indent on
"syntax on

colorscheme hybrid

set number
set expandtab
set softtabstop=4
set shiftwidth=4
set modelines=0
set autoindent
set smartindent
set cindent
set list!
set listchars=tab:>-
set nobackup
set noswapfile
set nocompatible
set clipboard=unnamed,autoselect
set wildmode=longest:full,full
vnoremap <silent> > >gv
vnoremap <silent> < <gv

:set undodir=/Volumes/NiftyDrive/log/vim


map <C-n> :NERDTreeToggle<CR>

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

 " Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Select with <TAB>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

let g:neocomplcache_ctags_arguments_list = {
  \ 'perl' : '-R -h ".pm"'
  \ }

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default'    : '',
    \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
    \ }
let g:neosnippet#snippets_directory = "~/.vim/snippets/"

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"" for snippets
imap <expr><C-k>
\ neosnippet#expandable() <Bar><Bar> neosnippet#jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<C-n>"
smap <C-k> <Plug>(neosnippet_expand_or_jump) : "\<TAB>"

" 自分用 snippet ファイルの場所
let s:my_snippet = '~/.vim/snippets/'
let g:neosnippet#snippets_directory = s:my_snippet

au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.yml set filetype=ansible
