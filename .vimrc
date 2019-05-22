set nocompatible               " be iMproved

set encoding=utf-8

" 1 tab to 2 space for ruby
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" number line show
set nu

" set spell check
set complete+=kspell
set noswapfile
"in order to switch between buffers with unsaved change
set hidden

" hightlight column and line
set cursorline
"set cursorcolumn
filetype plugin indent on
syntax on

" support css word with -
autocmd FileType css,scss,slim,html,eruby,coffee,javascript setlocal iskeyword+=-
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4


call plug#begin()


" Download vim-plug if missing.
if !filereadable(expand("~/.vim/autoload/plug.vim"))
  silent !echo 'Installing vim-plug...'
  !curl -fLo ~/.vim/autoload/plug.vim --progress-bar --create-dirs
     \  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let s:bootstrap=1
endif

" vim-plug usage
" :PlugInstall                 - install plugins
" :PlugUpdate                  - install or update plugins
" :PlugDiff                    - see updated changes from last PlugUpdate
" :PlugUpgrade                 - upgrade vim-plug itself
" :PlugStatus                  - check the status of plugins
" :PlugSnapshot [output path]  - generate script to restore current snapshot
" :PlugClean(!)                - (force) remove unused plugins



" Essential
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' }
" if on option for nerdtree is enabled, then autoopen doesn't work
", { 'on':  'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/vim-easy-align'
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'sjl/gundo.vim'
Plug 'yggdroot/indentline'
Plug 'xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/vim-peekaboo'
Plug 'sjl/badwolf'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-projectionist'
Plug 'ekalinin/dockerfile.vim'
Plug 'matze/vim-move'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'Shougo/vimshell.vim'

Plug 'jiangmiao/auto-pairs'

"Need to install https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Mononoki/Regular/complete/mononoki-Regular%20Nerd%20Font%20Complete.ttf
"For devicons to work properly
Plug 'ryanoasis/vim-devicons' 

" Elixir
Plug 'elixir-lang/vim-elixir', { 'for' : 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for' : 'elixir' }
Plug 'mhinz/vim-mix-format', { 'for' : 'elixir' }
Plug 'avdgaag/vim-phoenix', { 'for' : 'elixir' }

"Ruby
Plug 'vim-ruby/vim-ruby'
" Tab completions
Plug 'ervandew/supertab'
Plug 'ngmy/vim-rubocop'

"Rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
"Script
Plug 'kchmck/vim-coffee-script'

"CSS color highlighter -----------
Plug 'ap/vim-css-color'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'



"======== COMMENTED OUT AFTER TRYING======================================

" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'tomasr/molokai'
" Plug 'ciaranm/inkpot'
" Plug 'andrewradev/multichange.vim'
" Plug 'tpope/vim-dadbod'
" Align items easily
" Plug 'godlygeek/tabular'

" Tried deoplete for vim8 but it is not as good for vim8 so disabling it

" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
"==========================================================================
let g:move_key_modifier = 'C'

" Press <C-x> & <C-V> to download plugin-list from VimAwesome

call plug#end()

" Setting default python version based on availability

if has('python3')
    set pyx=3
else
    set pyx=2
endif

" By Default use Bash Shell when using VIM
set shell=/bin/bash

" Automatically swap files are created in the project folders which
" is messy, I feel, as I would have to ignore them from VCS which is
" hectic, so adding a hack to save them in one place following this link
" https://blog.hellojs.org/configure-vim-from-scratch-efe5cbc1c563
" Please do remember to create the tmp folder in the following location.

set backupdir=$HOME/.vim/tmp/                   " for the backup files
set directory=$HOME/.vim/tmp/                   " for the swap files

" Undo history in one place

set undodir=$HOME/.vim/undo
set undofile

" No undo history for sensitive files

augroup vimrc
    autocmd!
    autocmd BufWritePre /tmp/* setlocal noundofile
augroup END

" Setting the history size to maintain

set history=200
set ruler

" Sets Hybrid line number

set number relativenumber
" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END

set hls

" Sets a long display line for the current cursor 
" postion in a document, looks ugly, hence disabling it
" set cursorline

set noshowmode
" let g:solarized_termcolors=256
" colorscheme solarized
colorscheme badwolf
set background=dark ts=4 sw=4 et

" 2019-22-03 changes"""""""""""""""""""""""""""""""""""""""

" Rubocop - ruby

let g:syntastic_ruby_checkers = ['mri', 'rubocop']

let g:vimrubocop_config = '/path/to/rubocop.yml'
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" For CtrlP Settings"""""""""""""""""""""""""""""""""""""""""
" Set no max file limit
let g:ctrlp_max_files = 0
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0

" Ignore these directories
set wildignore+=*/_build/**
set wildignore+=*/deps/**

" For Vimshell """""""""""""""""""""""""""""""""""""""""""""""
" Use current directory as vimshell prompt.
" let g:vimshell_prompt_expr =
"             \ 'escape(fnamemodify(getcwd(), ":~")."$", "\\[]()?! ")." "'
" let g:vimshell_prompt_pattern = '^\%(\f\|\\.\)\+\$ '
" let g:vimshell_popup_command = 'vsplit'
" let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
" let g:vimshell_prompt =  '$ '

" For Alchemist Jumping to Definitions """""""""""""""""""""""
" For this one to work, You have to create a symlink for elixir
" installation directory in the directory below in this name only
" `elixir` and for erlang you have to create a symlink in the following
" name only `otp` in the same folder. Since, I'm using asdf I have pointed
" the symlinks to those directory

let g:alchemist#elixir_erlang_src = "/usr/local/share/src"

" Gundo to Work with python3 """""""""""""""""""""""""""""""""

if has('python3')
    let g:gundo_prefer_python3 = 1
endif

" ============================================================
" let g:gitgutter_highlight_lines = 1
" Indent Guide Config""""""""""""""""""""""""""""""

let g:indentLine_char = '|'
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1

" ==================================================
" Syntastic Recommended Setting""""""""""""""""""""

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" =Elixir Syntastic Config==========================

let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers=['elixir']

""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips Config"""""""""""""""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir='~/.vim/plugged/vim-snippets/snippets'

" If you want :UltiSnipsEdit to split your window.

let g:UltiSnipsEditSplit="vertical"

" ==================================================

" YouCompleteMe Semantic Triggers""""""""""""""""""

let g:ycm_server_python_interpreter='python3'
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.'],
            \   'objc' : ['->', '.'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::', '"', "'", 'use ', 'namespace ', '\'],
            \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'html': ['<', '"', '</', ' '],
            \   'vim' : ['re![_a-za-z]+[_\w]*\.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \   'haskell' : ['.', 're!.']
            \ }
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" Normal installation doesn't work for clang completion, 
" so use 'sudo python install.py --clang-completer and
" add the below line for it to work, sometimes you need
" to add the python interpreter as mentioned above:

let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

"""""""""""""""""""""""""""""""""""""""""""""""""""
" StatusLineConfig""""""""""""""""""""""""""""""""

let g:lightline = {
            \ 'colorscheme': 'powerline',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             ['syntastic', 'obsession', 'gitbranch', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'fugitive#statusline',
            \   'obsession': 'ObsessionStatus',
            \   'syntastic': 'SyntasticStatuslineFlag'
            \ },
            \ }

""""""""""""""""""""""""""""""""""""""""""""""""""
" GitGutter Config"""""""""""""""""""""""""""""""

let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '**'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '-1'
let g:gitgutter_sign_modified_removed = '-*'

""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree-git-plugin"""""""""""""""""""""""""""""
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }
let NERDTreeShowHidden=1
"===============================================
" NerdTree using just vi in shell"""""""""""''""
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" If nerdtree is the only buffer, then autoclose vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" ==============================================
" AutoInstall Missing Plugins on Vim StartUp""""

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
""""""""""""""""""""""""""""""""""""""""""""""""""
" ----------------------------------------------------------------------------
" vimawesome.com
" ----------------------------------------------------------------------------

function! VimAwesomeComplete() abort
    let prefix = matchstr(strpart(getline('.'), 0, col('.') - 1), '[.a-zA-Z0-9_/-]*$')
    echohl WarningMsg
    echo 'Downloading plugin list from VimAwesome'
    echohl None
    ruby << EOF
    require 'json'
    require 'open-uri'

    query = VIM::evaluate('prefix').gsub('/', '%20')
    items = 1.upto(max_pages = 3).map do |page|
    Thread.new do
    url  = "http://vimawesome.com/api/plugins?page=#{page}&query=#{query}"
    data = open(url).read
    json = JSON.parse(data, symbolize_names: true)
    json[:plugins].map do |info|
    pair = info.values_at :github_owner, :github_repo_name
    next if pair.any? { |e| e.nil? || e.empty? }
    {word: pair.join('/'),
    menu: info[:category].to_s,
    info: info.values_at(:short_desc, :author).compact.join($/)}
end.compact
    end
end.each(&:join).map(&:value).inject(:+)
VIM::command("let cands = #{JSON.dump items}")
EOF
if !empty(cands)
    inoremap <buffer> <c-v> <c-n>
    augroup h_VimAwesomeComplete
        autocmd!
        autocmd CursorMovedI,InsertLeave * iunmap <buffer> <c-v>
                    \| autocmd! _VimAwesomeComplete
    augroup END

    call complete(col('.') - strchars(prefix), cands)
endif
return ''
endfunction

augroup VimAwesomeComplete
    autocmd!
    autocmd FileType vim inoremap <c-x><c-v> <c-r>=VimAwesomeComplete()<cr>
augroup END

" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" Type %% to get current directory in relative path

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Open NERDTree File explorer

map <C-o>o :NERDTreeToggle<CR>

map <Leader>sh :VimShellPop<CR>

" Open TagBar

nmap <F8> :TagbarToggle<CR>
" Open UndoTree

nnoremap <F5> :GundoToggle<CR>

" For Practice, disabling Arrow Keys
"myself commented
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

" Map typing | to tabularize """"""""""""""""""""""""""

" inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

" function! s:align()
"   let p = '^\s*|\s.*\s|\s*$'
"   if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
"     let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
"     let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
"     Tabularize/|/l1
"     normal! 0
"     call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
"   endif
" endfunction
" ======================================================

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Remove highlight after using g*
nmap nh :nohlsearch<CR>

" highlight the current line
set cursorline
" Highlight active column
set cuc cul"

" Quick Ruby method definition.
autocmd FileType ruby abbreviate def def <CR>end<Up>

" Change color scheme when viewing Ruby files (torte is also pretty good).
autocmd FileType ruby colorscheme slate

" Change syntax highlighting for unrecognised words.
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

" Setting vim makeprg for easy compiling of c++ programs
au FileType cpp set makeprg=g++-8\ %\ -std=c++17\ -Wall\ -Wextra\ -o\ %<.out
au FileType c set makeprg=g++-8\ %\ -o\ %<.out
au FileType elixir let $MIX_ENV = 'test'

" Map a key for map and execute a c++ program
map <F7> :make && ./%<.out<CR>
