set encoding=utf-8
scriptencoding utf-8
" vim-plug (https://github.com/junegunn/vim-plug) settings 
" Automatically install vim-plug and run PlugInstall if vim-plug not found
"
"This parameter might be necessary behind Proxy
"let $GIT_SSL_NO_VERIFY = 'true'

if empty(glob('~/.vim/autoload/plug.vim'))
    "if behind proxy use --insecure switch
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.config/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'mbbill/undotree'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'

Plug 'itchyny/lightline.vim'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-smooth-scroll'
Plug 'matze/vim-move'
Plug 'tpope/vim-commentary'
Plug 'sickill/vim-pasta'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-vinegar'
Plug 'ervandew/supertab'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-markdown'
Plug 'sts10/vim-mustard'
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'bronson/vim-visual-star-search'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim'
Plug 'tmhedberg/matchit'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'alvan/vim-closetag'
Plug 'kana/vim-textobj-user'
Plug 'lucapette/vim-textobj-underscore' | Plug 'kana/vim-textobj-user'
Plug 'jceb/vim-textobj-uri'             | Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'          | Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'            | Plug 'kana/vim-textobj-user'
Plug 'wellle/targets.vim'
Plug 'sts10/vim-zipper'

call plug#end()

"Todo: enable Eclim
"let g:EclimDisabled = "defined"
"
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
""Do not ask when starting vim
"let g:ycm_confirm_extra_conf = 0
""set tags += $HOME/tmp/ycm.tags
"
"if (b:path_tail_temp =~ ".tcl")
"    function! YCM_tagfiles()
"        return [expand("$HOME") . '/tmp/ycm.tags']
"    endfunction
"else
"    function! YCM_tagfiles()
"        return ""
"    endfunction
"endif
"
"let g:ycm_collect_identifiers_from_tags_files = 1
""let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_always_populate_location_list = 1
"let g:ycm_disable_for_files_larger_than_kb = 2000
"let g:ycm_min_num_identifier_candidate_chars = 3
"let g:ycm_filetype_whitelist = { 'tcl': 1  }
"
"""---VUNDLE---
""filetype off                  " required
"""set the runtime path to include Vundle and initialize
""set rtp+=~/.vim/bundle/Vundle.vim
""call vundle#begin()
""" alternatively, pass a path where Vundle should install plugins
"""call vundle#begin('~/some/path/here')
""
""" let Vundle manage Vundle, required
""Plugin 'gmarik/Vundle.vim'
""
""Plugin 'Valloric/YouCompleteMe'
""" All of your Plugins must be added before the following line
""call vundle#end()            " required
""filetype plugin indent on    " required
"""---VUNDLE---
""
"""Todo: enable Eclim
""let g:EclimDisabled = "defined"
""
"""Todo: enable YouCompleteMe
"""let g:loaded_youcompleteme = "defined"
""
""let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"""Do not ask when starting vim
""let g:ycm_confirm_extra_conf = 0
"""set tags += $HOME/tmp/ycm.tags
""function! YCM_tagfiles()
""    return [expand("$HOME") . '/tmp/ycm.tags']
""endfunction
""let g:ycm_collect_identifiers_from_tags_files = 1
"""let g:ycm_add_preview_to_completeopt = 1
""let g:ycm_key_invoke_completion = '<C-Space>'
""
""let g:ycm_key_list_select_completion = ['<Down>']
""let g:ycm_key_list_previous_completion = ['<Up>']
""
""let g:ycm_always_populate_location_list = 1
""
""let g:ycm_disable_for_files_larger_than_kb = 2000
"
"if has("win64") || has("win32") || has("win16")
"	let g:OS_name="windows"
"
"	let g:OS_dir_separator = '\'
"	let g:OS_cat_command = 'type'
"	let g:OS_mkdir_command = 'mkdir'
"    "TODO: change to cygwin later
"	let g:OS_ctags_command = 'c:\Apps\ctags57\ctags.exe'
"	let g:OS_system_includes_dir = 'c:\Apps\Dev-Cpp\include'
"
"    let g:OS_vimrc = "_vimrc"
"
"	"windows vista uses $HOME\.vim path, xp uses $HOME\vimfiles path
"	"so in xp we change it to $HOME\.vim and $HOME\.vim\after
"	"but only the first and last component
"	let &runtimepath=substitute(&runtimepath, '\(^[^,]*\)vimfiles', '\1.vim', '') "replace first occurrence
"	let &runtimepath=substitute(&runtimepath, '\(,[^,]*\)vimfiles\([^,]*\)$', '\1.vim\2', '') "replace last occurrence
"	
"	"behave mswin
"	"source $VIMRUNTIME/mswin.vim
"
"	"let $VIMRUNTIME=fnamemodify($_, ":p")
"	language mes en
"else
"	"if SHELL env variable is set incorrectly and VIM cannot start shell, then
"	"  uncomment following line, that overrides SHELL env variable
"	"set shell=/bin/sh
"
"	let g:OS_name=system('uname -s')
"	
"	let g:OS_dir_separator = '/'
"	let g:OS_cat_command = 'cat'
"	let g:OS_mkdir_command = 'mkdir -p'
"	"let g:OS_ctags_command = '/opt/exp/bin/ctags'
"	"if filereadable(g:OS_ctags_command) == 0
"		let g:OS_ctags_command = 'ctags'
"	"endif
"	let g:OS_system_includes_dir = '/usr/include'
"
"    let g:OS_vimrc = ".vimrc"
"
"	"
"	" What was the name that we were called as?
"	"
"	let vinvoke=fnamemodify($_, ":p")
"	let fullp=substitute(vinvoke, '^\(.*[/]\).*$', '\1', "")
"	"
"	" It's possible that $VIMRUNTIME does not exist.
"	" Let's see if there is a directory vimshare below where we were started
"	"
"	if isdirectory($VIMRUNTIME) == 0
"		let vimshare=fullp . "vimshare"
"		if isdirectory(vimshare) == 1
"			let $VIMRUNTIME=vimshare . "/vim" . substitute(v:version, "50", "5", "")
"			let &helpfile=vimshare . "/vim" . substitute(v:version, "50", "5", "") . "/doc/help.txt"
"		endif
"	endif
"endif
"
"let s:home_base_path=$HOME
"
"" ============================
"" =           Paths          =
"" ============================
"" replace all directory separators in runtimepath to OS specific
"let &runtimepath=substitute(&runtimepath, '[\/]', g:OS_dir_separator, 'g')

" =========================================
" = Project/Versioning system integration =
" =========================================
"guess used versioning system based on environment variables
let g:VCS_name="git"

"" ============================
"" =         Sessions         =
"" ============================
"" remove possible trailing slash before creating directory $HOME/.vim/sessions
"let g:user_sessions_home = substitute($HOME, '[\/]$', '', '') . g:OS_dir_separator . '.vim' . g:OS_dir_separator . 'sessions'
"let g:user_session_filename = 'session.vim'
"silent! execute '!' . g:OS_mkdir_command . ' ' . g:user_sessions_home
""autocmd VimEnter * call LoadSession()
""autocmd VimLeave * call SaveSession()
"function! SaveSession()
"	execute 'mksession! ' . g:user_sessions_home . g:OS_dir_separator . g:user_session_filename
"endfunction
"function! LoadSession()
"	"if argc() == 0
"		if v:version > 700
"			tabfirst
"			tabonly
"		endif
"		execute 'source ' . g:user_sessions_home . g:OS_dir_separator . g:user_session_filename
"	"endif
"endfunction
"
"" open files with the cursor at the last remembered position
"autocmd! BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
"
"set helplang=en
"set langmenu=en
"
""""filetype plugin on
"
""set ttybuiltin "this is default
""  set notbi
""set ttymouse xterm2 "VIM autodetect from TERM env variable name (=~xterm => xterm2)
"
"" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set history=400		" keep 400 lines of command line history
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch		" do incremental searching
set tabstop=2
set number				" line numbers
set expandtab

"if exists("+relativenumber")
"    set relativenumber      " relative line numbers
"endif
set cindent
set autoindent

if has("mouse")
	set mouse=a				" use mouse in xterm to scroll
endif

set scrolloff=5 		" 5 lines before and after the current line when scrolling
set ignorecase			" ignore case
set smartcase			" but don't ignore it, when search string contains uppercase letters
"set hid 				" allow switching buffers, which have unsaved changes
set shiftwidth=4		" 4 characters for indenting
"set showmatch			" showmatch: Show the matching bracket for the last ')'?
"
set nowrap				" don't wrap by default
syn on
set confirm

set hlsearch

set nostartofline
""set shiftround
"
""set autoread
""set display+=uhex
set display+=lastline

set wildmode=longest,list,full

if has("wildmenu")
    set wildmenu
endif

"" tabs are forbidden in SR projects
"set cscopequickfix=s-,c-,d-,i-,t-,e-,f0,g0		" cscope will fill results into quickfix window (possible to open via :copen command, move with <F11><F12>)
"
"imap jj	<Esc> 
"
"" follow visual lines (instead of lines) - comes into play when line wrapping is on
"map <A-Down> gj
"map <A-Up> gk
"imap <A-Up> <C-o>gk
"imap <A-Down> <C-o>gj
"
""reselect visual selection after <,> movements
"vnoremap < <gv
"vnoremap > >gv
"" make Y behave like other capitals 
"map Y y$
"" force saving files that require root permission 
"cmap w!! %!sudo tee > /dev/null %

"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%06.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
""set statusline+=%{fugitive\#statusline()}
"set statusline+=%-16(%{exists('g:loaded_fugitive')?fugitive#statusline():''}\%)
"set laststatus=2

"set statusline=%f
"set statusline+=\ %h%w%m%r
"set statusline+=%=
"set statusline+=%-16(%{exists('g:loaded_fugitive')?fugitive#statusline():''}\%)
"set statusline+=\ %P/%L
"set statusline+=\

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode " Show current mode.

"if v:version >= 700
"	" set completion options
"	set completeopt=menu,longest ",longest,preview
"
"    " dictionary completion CTRL+X CTRL+K in insert mode
"	set dictionary=/usr/share/dict/words
"    " thesaurus synonyms completion CTRL+X CTRL+T in insert mode
"	"set thesaurus=/usr/share/????
"    " spell checking (switchable by <Leader>s), CTRL+X CTRL+S in insert mode
"	set nospell
"	set spelllang=en
"	set spellsuggest=5
"endif
"
"" ============================
"" =       Window title       =
"" ============================
""TODO setting of windows title based on environment / file edited / edit status ?
"set t_ts=]0;
"set t_fs=
"set title
"
"":auto BufEnter * let &titlestring= expand("%:t") . " (" . expand($REL) . "-" . expand($RELP) . " " . expand($VPLOAD) . expand($HOST_TAG) . " " . expand($SS) . " | " . expand($ROOT) . ")"
"if $REL == ""
"	:auto BufEnter * let &titlestring= "%m%r" . expand("%:t")
"else
"    if $VPLOAD != ""
"	if $REL != $RELP
"		:auto BufEnter * let &titlestring= "%m%r" . expand("%:t") . " (" . $REL . "-" . $RELP . " " . $VPLOAD . $HOST_TAG . " " . $SS . " | " . $ROOT . ")"
"	else
"		:auto BufEnter * let &titlestring= "%m%r" . expand("%:t") . " (" . $REL . " " . $VPLOAD . $HOST_TAG . " " . $SS . " | " . $ROOT . ")"
"	endif
"    else
"        :auto BufEnter * let &titlestring= "%m%r" . expand("%:t") . " (" . $REL . " " . $CURRENT_LOCATION . " | " . $ROOT . ")" 
"    endif
"endif
"
"" :auto BufEnter * let &titlestring = hostname() . "/" . expand("%:p")
""Here the window title is reset when the user enters a new buffer. It contains the hostname, a forward slash, then the full path of the current file - for an explanation of the %:p syntax see the Filename Modifiers section of the Executing External Commands recipe..
""
""Another example is to display the value of an environment variable in the window title along with the filename. For instance, Ruby on Rails developers could prefix the filename with the value of RAILS_ENV, which indicates whether the application is in development, production, staging, or testing mode:
""let &titlestring=expand($RAILS_ENV) . ": " . expand("%:t")
""One last trick is to embed the value of an external command in the window title using the %{system('command')} syntax. This could be used to display the name of the current branch, if using a version control system, or indicate whether the project's unit tests are passing or failing.

" ============================
" =          Folding         =
" ============================
set foldmethod=indent
set foldlevelstart=20

" ============================
" =Working with multiple tabs=
" ============================
" navigating multiple tabs - works only in graphical modes (gVim)
nmap <C-Tab> :tabnext<Enter>
nmap <C-S-Tab> :tabprev<Enter>
imap <C-Tab> <C-o>:tabnext<Enter>
imap <C-S-Tab> <C-o>:tabprev<Enter>
vmap <C-Tab> <Esc>:tabnext<Enter>gv
vmap <C-S-Tab> <Esc>:tabprev<Enter>gv

" this works also in console
nmap <C-S-Right> :tabnext<Enter>
nmap <C-S-Left> :tabprev<Enter>
imap <C-S-Right> <C-o>:tabnext<Enter>
imap <C-S-Left> <C-o>:tabprev<Enter>
vmap <C-S-Right> <Esc>:tabnext<Enter>gv
vmap <C-S-Left> <Esc>:tabprev<Enter>gv

" simplified movement through windows
nmap <C-Up> <C-S-Up>
nmap <C-Down> <C-S-Down>
imap <C-Up> <C-S-Up>
imap <C-Down> <C-S-Down>
vmap <C-Up> <C-S-Up>
vmap <C-Down> <C-S-Down>
	
"" =====================================
"" =Movement with CTRL,SHIFT and ARROWS=
"" =====================================
"if v:version > 700
"	" (CTRL+SHIFT+UP/DOWN works only in graphical modes (gVim)
"	nmap <C-S-Up> <C-w>W
"	nmap <C-S-Down> <C-w>w
"	imap <C-S-Up> <C-o><C-w>W
"	imap <C-S-Down> <C-o><C-w>w
"	vmap <C-S-Up> <C-w>Wgv
"	vmap <C-S-Down> <C-w>wgv
"endif
"
"" ======================================
"" =Windows editors selection short-cuts=
"" ======================================
"" word selection
"nmap <S-Left> vbge<Space>
"nmap <S-Right> vew<BS>
"imap <S-Left> _<Esc>mz"_xv`z<BS>obge<Space>
"imap <S-Right> _<Esc>my"_xi<Right><C-o><BS>_<Esc>mz"_xv`yo`z
"vmap <S-Left> bge<Space>
"vmap <S-Right> ew<BS>
"
"" down/up selection
"nmap <S-Down> v<Down>
"nmap <S-Up> v<Up>
"imap <S-Down> _<Esc>mz"_xv`zo`z<Down><Right><BS><BS>
"imap <S-Up> _<Esc>mz"_xv`z<Up>o`z<BS>o
"vmap <S-Down> <Down>
"vmap <S-Up> <Up>
"
"" home/end selection
"nmap <S-Home> v<Home>
"nmap <S-End> v<End>
"imap <S-Home> _<Esc>mz"_s<C-o><Left><C-o>`z<Esc>v<Home>
"imap <S-End> _<Esc>mz"_xv`zo<End>
"vmap <S-Home> <C-S-Home>
"vmap <S-End> <C-S-End>
"
"" indentation with Tab/S-Tab on selected blocks
"vnoremap <Tab> >gv
"vnoremap <S-Tab> <LT>gv
"
"" half page down/up selection (gVim)
"nmap <S-PageDown> v<End><C-d><End>
"nmap <S-PageUp> v<Home><C-u>
"imap <S-PageDown> _<Esc>mz"_xv`zo<End><C-d><End>
"imap <S-PageUp> _<Esc>mz"_xv`z<BS>o<Home><C-u>
"vmap <S-PageDown> <End><C-d><End>
"vmap <S-PageUp> <Home><C-u>
"
"" word deletion (gVim)
"imap <C-BS> <C-w>
"imap <C-Del> _<Esc>mzew<BS>i<Del><Esc>v`z"_c
"
"
"" ============================
"" =        Fx commands       =
"" ============================
"" resolves even words enclosed with |{word}|, e.g. diff-diffexpr vs. |diff-diffexpr|
"function! SophHelp()
"    if &buftype=="help" && match( strpart( getline("."), col(".")-1,1), "\\S")<0
"        bw
"    else
"        try
"			let l:cww=substitute(expand("<cWORD>"), '[^A-Za-z_:]', '', 'ga')
"			"echo l:cww
"			exec "help ".l:cww
"            "exec "help ".expand("<cWORD>")
"        catch /:E149:\|:E661:/
"            " E149 no help for <subject>
"            " E661 no <language> help for <subject>
"			" E488 trailing characters
"			" E492 not a command word
"            try
"                exec "help ".expand("<cword>")
"            catch /:E149:\|:E661:/
"                echohl WarningMsg
"                echo "Sorry, no help for ".expand("<cWORD>")." or ".expand("<cword>")
"            endtry
"        endtry
"    endif
"endfunction
"
"" resolves even with :: in the cWORD, but without following (), ->, ., , e.g. DbgwController::getPort vs. DbgwController::getPort()
"function! SophTag(str)
"		"SophTag(...)
"		"let args=a:000
"		"for a in args
"		"	echo a
"		"endfor
"		if a:str != ""
"			try
"				exec "cstag ".a:str
"				return 0  " search no more, result found
"			catch /:E562:\|:E257:/
"				" we will continue with cWORD and cword searches
"			endtry
"		endif
"		try
"			let l:cww=substitute(expand("<cWORD>"), '[^A-Za-z_:]', '', 'ga')
"			"echo l:cww
"			exec "cstag ".l:cww
"		catch /:E562:\|:E257:/
"			" E562 bad usage for cstag - obviously cWORD contains special characters
"			" E257 cstag tag not found
"			try
"				exec "cstag ".expand("<cword>")
"			catch /:E562:\|:E257:/
"				echohl WarningMsg
"				if a:str != ""
"					echo "Sorry, no tag generated for ".a:str." or ".expand("<cWORD>")." or ".expand("<cword>")
"				else
"					echo "Sorry, no tag generated for ".expand("<cWORD>")." or ".expand("<cword>")
"				endif
"			endtry
"		endtry
"endfunction
"
"nmap <C-]> :call SophTag("")<Enter>
"imap <C-]> <C-o>:call SophTag("")<Enter>
"vmap <C-]> y<Esc>:call SophTag("<C-r>0")<Enter>gv
"
"" F1 to display help
"if g:PROJECT_name == "SR"
"	nmap <F1> :execute "!sr_cscope.sh update"<CR> :cs reset<CR> :<CR>
"	imap <F1> <C-o>:execute "!sr_cscope.sh update"<CR> <C-o>:cs reset<CR> <C-o>:<CR>
"	vmap <F1> <Esc>:execute "!sr_cscope.sh update"<CR> :cs reset<CR> :<CR>gv
"
"    nmap <S-F1> :execute "!sr_cscope.sh mibupdate"<CR> :let &l:enc=&l:enc<CR>
"    imap <S-F1> <C-o>:execute "!sr_cscope.sh mibupdate"<CR> <C-o>:let &l:enc=&l:enc<CR>
"    vmap <S-F1> <Esc>:execute "!sr_cscope.sh mibupdate"<CR> :let &l:enc=&l:enc<CR>gv
"else
"nmap <F1> :call SophHelp()<Enter>
"imap <F1> <C-o>:call SophHelp()<Enter>
"vmap <F1> <Esc>:call SophHelp()<Enter>gv
"endif
"
""if exists("loaded_gundo") -- loads only after .vimrc
"if v:version >= 703
"	nmap <S-F7> :GundoToggle<Enter>
"	imap <S-F7> <C-o>:GundoToggle<Enter>
"	vmap <S-F7> <Esc>:GundoToggle<Enter>gv
"else
"	nmap <S-F7> :call SophHelp()<Enter>
"	imap <S-F7> <C-o>:call SophHelp()<Enter>
"	vmap <S-F7> <Esc>:call SophHelp()<Enter>gv
"endif
"
"" F2 to save
"nmap <F2> :w<Enter>
"imap <F2> <C-o>:w<Enter>
"vmap <F2> <Esc>:w<Enter>gv
"
"" F3 to toggle source/header
"" switch editing between .c* and .h* files
"function! Mosh_Flip_Ext()
"	" Since .h file can be in a different dir, calling find
"	let oldpath = &path
"	try
"		"file search path will be fixed
"		"set path=.,**,../include/**,../src/**
"		let &path = g:header_source_flip_search_path
"		if match(expand("%"),'\.c') > 0
"			"let s:flipname = substitute(expand("%"),'\.c\(.*\)','.h\1',"")
"			let s:flipname = expand("%:t:r")
"			try
"				exe ":find " . s:flipname . ".h"
"			catch /^Vim\%((\a\+)\)\=:E345/
"				try
"					exe ":find " . s:flipname . ".hh"
"				catch /^Vim\%((\a\+)\)\=:E345/
"					exe ":find " . s:flipname . ".hpp"
"				endtry
"			endtry	
"		elseif match(expand("%"),"\\.h") > 0
"			"let s:flipname = substitute(expand("%"),'\.h\(.*\)','.c\1',"")
"			let s:flipname = expand("%:t:r")
"			try
"				exe ":find " . s:flipname . ".cc"
"			catch /^Vim\%((\a\+)\)\=:E345/
"				try
"					exe ":find " . s:flipname . ".c"
"				catch /^Vim\%((\a\+)\)\=:E345/
"					exe ":find " . s:flipname . ".cpp"
"				endtry
"			endtry	
"		endif
"	finally
"		let &path = oldpath
"	endtry
"endfun
"
""map <F3> :call Mosh_Flip_Ext()<CR>
""imap <F3> <C-o>:call Mosh_Flip_Ext()<CR>
""vmap <F3> <Esc>:call Mosh_Flip_Ext()<CR>gv
"nmap <F5> :call DiffOrig()<Enter>
"imap <F5> <C-o>:call DiffOrig()<Enter>
"vmap <F5> <Esc>:call DiffOrig()<Enter>gv
""imap <F3> :call DiffOrig()
""vmap <F3> :call DiffOrig()
"
"" F4 to switch between hex and ASCII editing
"function! Fxxd()
"	let c=getline(".")
"	if c =~ '^[0-9a-f]\{7}:'
"		:%!xxd -r
"	else
"		:%!xxd -g4
"	endif
"endfunction
"
"nmap <F4> :call Fxxd()<Enter>
"imap <F4> <C-o>:call Fxxd()<Enter>
"vmap <F4> <Esc>:call Fxxd()<Enter>gv
"
"function! DiffOrig()
"	if &diff
"		diffoff!
"		wincmd o
"	else
"		let ftype = &filetype
"		let actualfilename=expand('%:p')
"		vert new
"		setlocal bt=nofile
"		r #
"		let &titlestring = "saved copy" . " <-> " . actualfilename
"		0d_
"		exe "setlocal filetype=" . ftype
"		diffthis | wincmd p | diffthis
"	endif
"endfunction
"
"function! DiffCCPred()
"	if &diff
"		diffoff!
"		wincmd o
"	else
"		let ftype = &filetype
"		let predfile=tempname().".vimtmp"
"		silent! exe "!echo " . expand('%:p') . "> " . predfile		
"		silent! exe "!cleartool desc -short -predecessor " . expand('%:p') . ">> " . predfile
"  		silent! exec 'split '.predfile
"		let predfilename=getline(1)."@@".getline(2)
"		bwipeout
"		let actualfilename=expand('%:p')
"		vert new
"		setlocal bt=nofile
"		exe "r !cleartool shell " . g:OS_cat_command. " " . predfilename
"		let &titlestring = predfilename . " <-> " . actualfilename
"		0d_
"		exe "setlocal filetype=" . ftype		
"		diffthis | wincmd p | diffthis
"	endif
"endfunction
"
"function! MyDiff()
"	let opt = ""
"	if &diffopt =~ "icase"
"		let opt = opt . "-i "
"	endif
"	if &diffopt =~ "iwhite"
"		"let opt = opt . "-b "
"		let opt = opt . "-w "
"	endif
"	if exists("t:diffoptions")
"		let opt = opt . t:diffoptions
"	endif
"	silent execute "!diff -a --binary " . opt . " " . v:fname_in . " " . v:fname_new . " > " . v:fname_out
"	redraw!
"endfunction
""ignore whitespace differences
"set diffopt=filler,context:6
""almost the same as without setting diffexpr (but can be easily changed in the future)
"set diffexpr=MyDiff()  "produces some artifacts on command line after execution
"
"" =========
"" = Signs =
"" =========
"" not really used (could be used in future, with debugger integration)
"if has('signs')
"	"defines sign type information
"	sign define information text=!> texthl=Error linehl=Warning 
"	"places sign type information with ID 123 on current line
"	"exe ":sign place 123 line=" . line(".") . " name=information file=" . expand("%:p")
"	"remove sign with ID 123 from current file
"	"exe ":sign unplace 123 file=" . expand("%:p")
"
"	"nmap <F7> :exe ":sign place 123 line=" . line(".") . " name=information file=" . expand("%:p")<CR>
"	"nmap <S-F7> :exe ":sign unplace 123 file=" . expand("%:p")<CR>
"endif

set pastetoggle=<F7>

nmap <F8> :TagbarToggle<Enter>
imap <F8> <C-o>:TagbarToggle<Enter>
vmap <F8> <Esc>:TagbarToggle<Enter>gv

nmap <S-F8> :TlistToggle<Enter>
imap <S-F8> <C-o>:TlistToggle<Enter>
vmap <S-F8> <Esc>:TlistToggle<Enter>gv

nmap <S-F6> :call LoadSession()<Enter>
imap <S-F6> <C-o>:call LoadSession()<Enter>
vmap <S-F6> <Esc>:call LoadSession()<Enter>gv

nmap <S-F5> :call SaveSession()<Enter>
imap <S-F5> <C-o>:call SaveSession()<Enter>
vmap <S-F5> <Esc>:call SaveSession()<Enter>gv

" F10 to quit
nmap <F10> :q<Enter>
imap <F10> <C-o>:q<Enter>
vmap <F10> <Esc>:q<Enter>gv
"map ^_ gf

nmap <S-F10> :qa<Enter>
imap <S-F10> <C-o>:qa<Enter>
vmap <S-F10> <Esc>:qa<Enter>gv

"TODO show SCCS + show featured

if g:VCS_name == "git"
    nmap <F5> :Gdiff<Enter>
    imap <F5> <C-o>:Gdiff<Enter>
    vmap <F5> <Esc>:Gdiff<Enter>gv

    nmap <F6> :Gviff BRANCH<Enter>
    imap <F6> <C-o>:Gvdiff BRANCH<Enter>
    vmap <F6> <Esc>:Gvdiff BRANCH<Enter>gv

    nmap <F9> :Gblame<Enter>
    imap <F9> <C-o>:Gblame<Enter>
    vmap <F9> <Esc>:Gblame<Enter>gv
    
    nmap <S-F9> :Glog<Enter>
    imap <S-F9> <C-o>:Glog<Enter>
    vmap <S-F9> <Esc>:Glog<Enter>gv
endif

"else "no versioning system
"	nmap <F5> :call DiffOrig()<Enter>
"	imap <F5> <C-o>:call DiffOrig()<Enter>
"	vmap <F5> <Esc>:call DiffOrig()<Enter>gv
"endif
"
""comm! -nargs=? -bang A call AlternateFile("n<bang>", <f-args>)
""abbreviate/iabbrev/cabbrev
"
"" command mode abbreviation of tt as tabnew | tag <args>
"cabbrev tt TT
"comm! -nargs=1 -complete=tag TT tabnew | cstag <args> 
"
"" Quickfix window - prev/next line jumps
"nmap <F11> :cprev<Enter>
"imap <F11> <C-o>:cprev<Enter>
"vmap <F11> <Esc>:cprev<Enter>v
"
"nmap <F12> :cnext<Enter>
"imap <F12> <C-o>:cnext<Enter>
"vmap <F12> <Esc>:cnext<Enter>v
"
"" LQuickfix window - prev/next line jumps
"nmap <S-F11> :lprev<Enter>
"imap <S-F11> <C-o>:lprev<Enter>
"vmap <S-F11> <Esc>:lprev<Enter>v
"
"nmap <S-F12> :lnext<Enter>
"imap <S-F12> <C-o>:lnext<Enter>
"vmap <S-F12> <Esc>:lnext<Enter>v
"
"" common leader mappings
"let mapleader = ','
"map <Leader>l :set invlist!<CR>
"map <Leader>n :set nu!<CR>
"map <Leader>N :set rnu!<CR>
"map <Leader>I :set diffopt-=iwhite<CR>
"map <Leader>i :set diffopt+=iwhite<CR>
"
"function! LetDiffOptionsForTab(options)
"	let t:diffoptions=a:options
"	diffupdate
"endfunction
"map <Leader>D :call LetDiffOptionsForTab("")<CR>
"map <Leader>d :call LetDiffOptionsForTab("-d")<CR>
"
"map <Leader>s :set spell!<CR>
"map <Leader>h :set hls!<CR>
"map <Leader>H :nohlsearch<CR>
"map <Leader>f :set foldenable!<CR>
"map <Leader>w :set wrap!<CR>
"
""map <Leader>t :set tags=tags<CR>
""map <Leader>f :echo line(".")<CR>
"function! ShowFeatureInfo(line_number)
"    if (t:stored_line != a:line_number)
"        let t:stored_line = a:line_number
"        "buffer featureinfo 
"        wincmd w
"        "echo system("/usr/local/timostools/setup_cli_find.pl -line " . a:line_number)
"        "read "!". "/usr/local/timostools/setup_cli_find.pl -line " . a:line_number
"        "exe "normal! i hello"
"        "execute "read !ls"
"        silent! normal gg
"        silent! normal dG
"        silent! execute "read !/usr/local/timostools/setup_cli_find.pl -line " . a:line_number . " " . t:featureinfo_opts
"        wincmd w
"    endif
"endfunction
"
"function! ToggleFeatureInfoWindow(options)
"    if !exists("t:featureinfowindow")
"        let t:featureinfowindow = 0 
"        let t:featureinfowindow_teardown = 0 
"    endif
"    if t:featureinfowindow == 1
"        "remove window
"        "let l:tpn = tabpagenr()
"        "if l:tpn > 0
"        "    let l:tpn = l:tpn - 2
"        "endif
"        "exe "tabmove " . l:tpn
"        "tabclose
"        autocmd! FeatureInfo
"        bwipeout featureinfo
"        "autocmd! FocusGained * :echo system("/usr/local/timostools/setup_cli_find.pl -line " . line("."))
"        let t:featureinfowindow = 0
"    else
"        let t:featureinfo_opts = ""
"        let l:path = resolve(expand("%:t"))
"        if ((l:path == "setup_cli.cfg") || (l:path == "teardown_cli.cfg"))
"            if (l:path == "teardown_cli.cfg")
"                let t:featureinfo_opts = "-teardown"
"            endif
"        else
"            return
"        endif
"
"        "create window
"        "autocmd FocusGained * :call Highlight_cursor()
"        augroup FeatureInfo
"            autocmd!
"            autocmd CursorMoved <buffer> :call ShowFeatureInfo(line("."))
"        augroup END
"        "autocmd FocusGained * :echo system("/usr/local/timostools/setup_cli_find.pl -line " . line("."))
"       
"        let t:stored_line = -1
"        exe "8new"
"        setlocal buftype=nofile
"        setlocal bufhidden=hide
"        setlocal noswapfile
"        file featureinfo 
"        exe "1000000"
"        exe "set nonu"
"        exe "set ro"
"        wincmd w
"        doautocmd FeatureInfo CursorMoved <buffer>
"        let t:featureinfowindow = 1
"    endif
"endfunction
"
"map <Leader>f :call ToggleFeatureInfoWindow("")<CR>
"
"map <Leader>p :set paste!<CR>
"map <Leader>m :call SwitchMouse()<CR>
"
"" path leader mappings
"map <Leader>0 :let &path=g:default_search_path<CR>
"
"let g:color_scheme = ""
"
"" ============================
"" =        GUI options       =
"" ============================
"if has("gui_running")
"	if v:version > 700
"		function! FoldSpellBalloon()
"			let foldStart = foldclosed(v:beval_lnum )
"			let foldEnd = foldclosedend(v:beval_lnum)
"			let lines = []
"			" Detect if we are in a fold
"			if foldStart < 0
"				" Detect if we are on a misspelled word
"				let lines = spellsuggest( spellbadword(v:beval_text)[ 0 ], 5, 0 )
"			else
"				" we are in a fold
"				let numLines = foldEnd - foldStart + 1
"				" if we have too many lines in fold, show only the first 14
"				" and the last 14 lines
"				if ( numLines > 31 )
"					let lines = getline( foldStart, foldStart + 14 )
"					let lines += [ '-- Snipped ' . ( numLines - 30 ) . ' lines --' ]
"					let lines += getline( foldEnd - 14, foldEnd )
"				else
"					"less than 30 lines, lets show all of them
"					let lines = getline( foldStart, foldEnd )
"				endif
"			endif
"			return join( lines, has( "balloon_multiline" ) ? "\n" : " " )
"		endfunction
"		set balloonexpr=FoldSpellBalloon()
"		set ballooneval
"
"		" contains for,endfor and hence it is not working in VIM6 at startup
"		function! InfoGuiTooltip()
"			"get window count
"			let wincount = tabpagewinnr(tabpagenr(),'$')
"			let bufferlist=''
"			"get name of active buffers in windows
"
"			"for i in tabpagebuflist() - for is defined only in VIM7+, in VIM6
"			"this script causes error by start
"				let bufferlist .= '['.fnamemodify(bufname(i),':t').'] '
"			"endfor - defined only in VIM7+			
"			return bufname($).' windows: '.wincount.' '.bufferlist ' '
"		endfunction
"		set guitabtooltip=%!InfoGuiTooltip()
"	endif
"
"	if g:OS_name == "windows"
"		"colorscheme zenburn
"		let g:molokai_original = 1
"		let g:color_scheme = "molokai"
"
"		"set guifont=Lucida_Console:h8:cEASTEUROPE
"		"set guifont=Dina:h8:cANSI
"		silent! set guifont=Envy\ Code\ R:h11:cEASTEUROPE
"        if &guifont != 'Envy Code R:h11:cEASTEUROPE'
"            silent! set guifont=Lucida_Console:h11:cEASTEUROPE
"        endif
"		set guioptions="aegmrLtT
"		
"		" maximize window on start
"		autocmd GUIEnter * simalt ~X
"	else
"		"colorscheme desert
"		let g:color_scheme = "wombat256mod"
"	
"		silent! set guifont=Envy\ Code\ R\ 11
"        if &guifont != 'Envy Code R 11'
"            silent! set guifont=Dejavu\ Sans\ Mono\ 11
"        endif
"	
"		set guioptions="aegimrLtT
"	
"		" maximize window on start (still not good enough - it's not truly
"		" maxed)
"		set guiheadroom=0
"		"set lines=999 columns=999
"	
"		set lines=50 columns=210
"	endif
"else
"	"no GUI - console mode
"	if g:OS_name == "windows"
"		"8-color terminal in windows only, zellner looks OK
"		let g:color_scheme = "zellner"
"	else
"		set t_Co=256 "override terminfo setting to enable 256 colors
"		let g:color_scheme = "wombat256mod"
"
"        if &term =~ "screen-bce"
"            map <Esc>[11~ <F1>
"            map <Esc>[12~ <F2>
"            map <Esc>[13~ <F3>
"            map <Esc>[14~ <F4>
"        endif
"
"		if &term =~ "xterm"
"			""map Shift+F3..F10 keys (additional 8 combinations)
"			"map <Esc>[25~ <S-F3>
"			""map! <Esc>[25~ <S-F3>
"			"map <Esc>[26~ <S-F4>
"			""map! <Esc>[26~ <S-F4>
"            set timeout timeoutlen=1000 ttimeoutlen=100
"            "old-style  control sequences for function keys F1 to F4 (oldXtermFKeys)
"            set <S-F1>=O1;2P
"            set <S-F2>=O1;2Q
"            set <S-F3>=O1;2R
"            set <S-F4>=O1;2S
"
"            "TODO: find some useful mappings for these 4 combinations
"            "map <S-F1> :help S-F1
"            "map <S-F2> :help S-F2
"            "map <S-F3> :help S-F3
"            "map <S-F4> :help S-F4
"
"            "map <Esc>[M <F1>
"            "map <Esc>[N <F2>
"            "map <Esc>[O <F3> 
"            map <Esc>[11~ <F1>
"            map <Esc>[12~ <F2>
"            map <Esc>[13~ <F3>
"            map <Esc>[14~ <F4>
"            "map <Esc>[Q <F5>
"            "map <Esc>[R <F6>
"            "map <Esc>[S <F7>
"            "map <Esc>[T <F8>
"            "map <Esc>[U <F9>
"            "map <Esc>[V <F10>
"            "map <Esc>[W <F11>
"            "map <Esc>[X <F12>
"            "map <Esc>[Y <S-F1>
"            "map <Esc>[Z <S-F2>
"            "map <Esc>[a <S-F3>
"            "map <Esc>[b <S-F4>
"            "map <Esc>[c <S-F5>
"            "map <Esc>[d <S-F6>
"            "map <Esc>[e <S-F7>
"            "map <Esc>[f <S-F8>
"            "map <Esc>[g <S-F9>
"            "map <Esc>[h <S-F10>
"            "map <Esc>[i <S-F11>
"            "map <Esc>[j <S-F12>
"			"map <Esc>[28~ <S-F5>
"			""map! <Esc>[28~ <S-F5>
"			"map <Esc>[29~ <S-F6>
"			""map! <Esc>[29~ <S-F6>
"			"map <Esc>[31~ <S-F7>
"			""map! <Esc>[31~ <S-F7>
"			"map <Esc>[32~ <S-F8>
"			""map! <Esc>[32~ <S-F8>
"			"map <Esc>[33~ <S-F9>
"			""map! <Esc>[33~ <S-F9>
"			"map <Esc>[34~ <S-F10>
"			""map! <Esc>[34~ <S-F10>
"		
"            "enabling CTRL+cursor keys mappings (set above to cycle through windows)
"			map [A <C-Up>
"			"map! [A <C-Up>
"			map [B <C-Down>
"			"map! [B <C-Down>
"			map [C <C-Right>
"			"map! [C <C-Right>
"			map [D <C-Left>
"			"map! [D <C-Left>
"
"            "enabling ALT+cursor keys mappings (set above to move through wrapped lines)
"			map <Up> <A-Up>
"			"map! <Up> <A-Up>
"			map <Down> <A-Down>
"			"map! <Down> <A-Down>
"			map <Right> <A-Right>
"			"map! <Right> <A-Right>
"			map <Left> <A-Left>
"			"map! <Left> <A-Left>
"
"            "enabling C-Space mapping (otherwise C-Space does nothing)
""			map <C-@> <C-Space>
""			map! <C-@> <C-Space>
"
"			"terminal detection (based on ^[[>c), in screen surround query
"			"string with \eP...\e\\ (as always, when we want to talk to
"			"terminal underneath screen)
"			" the terminal's response is already stored in v:termresponse in Vim
"
"			"Screen          "old versions???"                   (nothing)
"			"Xterm           Xterm(278)                          ^[[>0;278;0c
"			"Xterm           Xterm(317)                          ^[[>41;317;0c
"			"Lxterminal      lxterminal (0.1.11-4ubuntu3)        ^[[>1;2802;0c
"			"Cygwin                                              ^[[>77;10103;0c
"			"PuTTY           0.62                                ^[[>0;136;0c
"			"Screen          4.00.03 (FAU)                       ^[[>83;40003;0c
"			"Screen          4.01.00devel (GNU) 2-May-06         ^[[>83;40100;0c
"			"Gnome-terminal  GNOME Terminal 3.6.2                ^[[>1;3409;0c
"			"Konsole         2.13.2                              ^[[>0;115;0c
"	
"			"see vim help v:termresponse
"			"callback is called after response to t_RV reception -> TermResponse autocommand event
"			"only then is can be used for terminal identification
"			"echomsg "testing..." . v:termresponse
"			"
"			"for PuTTY answerback may be probably also used (based on ^E)
"			"
"			"TODO: implement somehow :-)
"
"			"old xterm/lxterminal F1-F4 (used only for no mod case - e.g. OP, ...)
"			set <F1>=O;*P
"			set <F2>=O;*Q
"			set <F3>=O;*R
"			set <F4>=O;*S
"			set <Home>=O;*H
"			set <End>=O;*F
"
"			"konsole (universal case covers also the above for no mod case)
"			set <F1>=O*P
"			set <F2>=O*Q
"			set <F3>=O*R
"			set <F4>=O*S
"
"			"new xterm (wildcard used to handle all alt,control,shift combinations)
"			set <xF1>=[1;*P
"			set <xF2>=[1;*Q
"			set <xF3>=[1;*R
"			set <xF4>=[1;*S
"			set <xHome>=[1;*H
"			set <xEnd>=[1;*F
"
"			set <zHome>=[;*H
"			set <zEnd>=[;*F
"
""			"old xterm/lxterminal/gnome terminal (e.g. lxterminal in Lubuntu 13.04)
""			set <xF1>=O1;*P
""			set <xF2>=O1;*Q
""			set <xF3>=O1;*R
""			set <xF4>=O1;*S
"
"			map <xF1> <F1>
"			map! <xF1> <F1>
"			map <xF2> <F2>
"			map! <xF2> <F2>
"			map <xF3> <F3>
"			map! <xF3> <F3>
"			map <xF4> <F4>
"			map! <xF4> <F4>
"			map <xHome> <Home>
"			map! <xHome> <Home>
"			map <xEnd> <End>
"			map! <xEnd> <End>
"			map <zHome> <Home>
"			map! <zHome> <Home>
"			map <zEnd> <End>
"			map! <zEnd> <End>
"
"			"TODO: move before mapping of F1-F4 keys!!!!!!!!
"			"XXX: query terminal via: echo -n -e ""
"			" PuTTY usually shows PuTTY as a result
"
"
""            "enabling CTRL+cursor keys mappings (set above to cycle through windows)
""			map [A <C-Up>
""			"map! [A <C-Up>
""			map [B <C-Down>
""			"map! [B <C-Down>
""			map [C <C-Right>
""			"map! [C <C-Right>
""			map [D <C-Left>
""			"map! [D <C-Left>
""
""            "enabling ALT+cursor keys mappings (set above to move through wrapped lines)
""			map <Up> <A-Up>
""			"map! <Up> <A-Up>
""			map <Down> <A-Down>
""			"map! <Down> <A-Down>
""			map <Right> <A-Right>
""			"map! <Right> <A-Right>
""			map <Left> <A-Left>
""			"map! <Left> <A-Left>
"
"            "enabling ctrl+space mapping (otherwise C-Space does nothing)
"			map <C-@> <C-Space>
"			map! <C-@> <C-Space>
"
"			"ctrl+backspace mapping (otherwise C-BS does nothing)
"			map <C-H> <C-BS>
"			map! <C-H> <C-BS>
"
"			"del is set without modifiers support (by default in Vim) => let's change that
"			set <Del>=[3;*~
"
"			"cleanup of Vim's internal duplicate bindings
"			set <S-Home>=
"			set <S-Left>=
"			set <S-Right>=
"			set <S-End>=
"
"			"newer xterm can do also right winmenu key
"			"set <WMENU>=[29;*~
"
"
"			"sample of mappings for ALT=<Esc> modes (do not use!)
"			"map <Esc><Esc>[OA <A-Up>
"			"map! <Esc><Esc>[OA <A-Up>
"			"map <Esc><Esc>[OB <A-Down>
"			"map! <Esc><Esc>[OB <A-Down>
"			"map <Esc><Esc>[OC <A-Right>
"			"map! <Esc><Esc>[OC <A-Right>
"			"map <Esc><Esc>[OD <A-Left>
"			"map! <Esc><Esc>[OD <A-Left>
"			"map [1;3P <A-F1>
"			"map! [1;3P <A-F1>
"
"		elseif &term =~ "rxvt"
"            "rxvt (is well covered in default Vim mappings)
""           set <F1>=[11;*~
""           set <F2>=[12;*~
""           set <F3>=[13;*~
""           set <F4>=[14;*~
""			set <Home>=[7;*~
""			set <End>=[8;*~
"		endif
"
"		"common mappings
"	endif
"endif
"
"try
"    exec "colorscheme " . g:color_scheme
"catch /:E185:/
"    " E185 colorscheme not found
"    " just ignore
"endtry
"
"" simple code completion - works correctly only in graphical modes (gVim) - XXX collides with cscope special stuff - CTRL+SPACE
""imap <C-Space> <C-n><C-p><Down>
""imap <C-S-Space> <C-p><C-n><Up>
"
""imap <C-Space> <C-r>=CleverTabCompletion()<CR>
"
"" ============================
"" =       Super S-TAB        =
"" ============================
"function! CleverTabCompletion()
"   " do we have omni completion available
"   if &omnifunc != ''
"	  "use omni-completion 1. priority
"	  return "\<C-X>\<C-O>"
"   elseif &dictionary != ''
"	  " no omni completion, try dictionary completion
"	  return "\<C-K>"
"   else
"	  "use omni completion or dictionary completion
"	  "use known-word completion
"	  return "\<C-N>"
"  endif
"endfunction
"
"function! TabCompletion()
"    if pumvisible()
"        return "\<C-N>"
"    else
"        return "\<Tab>"
"    endif
"endfunction
"
"function! ShiftTabCompletion()
"	"check if at beginning of line or after a space
"	"let g:str = strpart( getline('.'), col('.'))
"	if strpart( getline('.'), 0, col('.')-1 ) =~ '\t\+\s*$'
"		execute "normal F\<C-I>"
"		normal x
"		return ""
"	elseif strpart( getline('.'), col('.')-1 ) =~ '^\s*\t\+'
"		normal m`
"		execute "normal f\<C-I>"
"		normal x
"		normal ``
"		return ""
"	elseif strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"		execute "normal \<LT>\<LT>"
"		return ""
"	else
"		"return CleverTabCompletion()
"        if pumvisible()
"            return "\<C-P>"
"        else
"            return "\<S-Tab>"
"        endif
"	endif
"endfunction
"" bind function to the tab key
"imap <Tab> <C-r>=TabCompletion()<CR>
"imap <S-Tab> <C-r>=ShiftTabCompletion()<CR>
"
"" bind ,a to grep word under cursor
"nmap <Leader>a :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
"
"" bind \ to Ag - similar to /, just enter search string
"nmap \ :grep!<SPACE>
"
"" =================
"" = Autoload tags =
"" =================
"" reads tags from tags file in current folder and also from $CTAGS_FILE file and
"" also from $CTAGS_PREFIX files
""set tags=./tags;
"set tags=
"if filereadable("tags")
"	set tags+=tags
"endif
"if $CTAGS_FILE != ""
"	"if &tags != ""
"	"	set tags+=,
"	"endif
"	set tags+=$CTAGS_FILE
"elseif $CTAGS_PREFIX != ""
"	"echo "tst"
"	let prefix = $CTAGS_PREFIX
"	let bre=0
"	for i in range(10)
"		for j in range(10)
"			let prefixnr = prefix.i.j
"			"echo prefixnr
"			if filereadable(prefixnr)
"				if &tags != ""
"					let &tags.=","
"				endif
"				let &tags.=prefixnr
"			else
"				"echo "file ".prefixnr." not found!"
"				let bre=1
"				break
"			endif
"		endfor
"		if bre == 1
"			break
"		endif
"	endfor
"
"	"if filereadable($CTAGS_PREFIX)
"	"	"comma separator is added automatically via += construct
"	"	"if &tags != ""
"	"	"	set tags+=,
"	"	"endif
"	"	set tags+=$CTAGS_PREFIX
"	"endif
"endif
"
"" ============================
"" =      Tagbar plug-in      =
"" ============================
"let g:tagbar_ctags_bin = g:OS_ctags_command
"
"" ============================
"" =      TagList plug-in     =
"" ============================
"let Tlist_Ctags_Cmd = g:OS_ctags_command
"let Tlist_Show_Menu = 0  " there is a bug in gVim with taglist show menu turned on (E792: Empty menu name)
"
"" ============================
"" =   CodeComplete plug-in   =
"" ============================
"let g:completekey ='<C-B>'
"
"" ============================
"" =    Clearcase plug-in     =
"" ============================
""let g:loaded_ccase = 0  " set to 1 to abort loading ccase.vim plug-in
"let g:ccaseUseDialog = 0   " sets usage of windows input dialog
"
"" ============================
"" =    ifdef.vim plug-in     =
"" ============================
"let c_no_if0=1
"let c_no_if0_fold=1 "maybe unnecessary
"let c_no_comment_fold=1
"
"" ============================
"" =     Clang Formatter      =
"" ============================
"" autodetects from l:shiftwidth \ "IndentWidth" : "4",
"" autodetects from l:expandtab \ "UseTab" : "false",
"" autoselects based on clang_format#code_style \ "BasedOnStyle" : "Google",
""Todo: autoselect Braces formatting based on the edited file surrounding context (default to Allman)
"let g:clang_format#code_style = "Google"
"let g:clang_format#style_options = {
"            \ "BreakBeforeBraces" : "Allman"}
"let g:clang_format#auto_formatexpr=1
"
"" ==========================
"" = Miscellaneous functions=
"" ==========================
"" Generates ctags file named tags for specified folder - simple version
"function! MyCTags(fdir)
"    " let l:path = "."
"    if a:fdir == ""
"        let l:path = resolve (expand("%:p:h"))
"    else
"        let l:path = a:fdir
"    endif
"
"    silent! execute "!" . g:OS_ctags_command . " --languages=C,C++ -R --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+fq --tag-relative=yes " . l:path
"    "Note: redraw has problems with Vim compiled in tiny version (even though the function is not used)
"    execute "redraw!" 
"endfunction
"
""comm! CtagsP call MyCTags('.. ' . g:OS_system_includes_dir)
""comm! CtagsC call MyCTags('. ' . g:OS_system_includes_dir)
""comm! CtagsQ call MyCTags('.')
"
"" Generates ctags and cscope tags for current folder MyGenTagsCmd(gt), or $ROOT folder MyGenTagsCmd(rt)
"function! MyGenTagsCmd(gtcmd, ...)
"    if (a:gtcmd == "gt")
""		silent! execute "!" . "ctags --languages=C,C++ --fields=+ia --extra=+fq --tag-relative=yes -R -f tags --totals=yes ; cscope -b -q -u -R -f cscope.out"
""		cs add cscope.out
""		if &tags != ""
""			let &tags="tags" . "," . &tags
""		else
""			let &tags.="tags"
""		endif
"        let l:path = system("pwd")
"        let l:path = substitute(l:path,'\n','','')
"    elseif (a:gtcmd == "rt")
"        let l:path = expand("$ROOT")
"    endif
"
"    let l:temp_file_list = system("echo /tmp/cf.\$USER.\$RANDOM")
"
"    silent! execute "!" . "find " . l:path . " \\( -name \"*.h\" -o -name \"*.hh\" -o -name \"*.hpp\" -o -name \"*.c\" -o -name \"*.cc\" -o -name \"*.cpp\" -o -name \"*.java\" -o -name \"*.mk\" -o -name \"*.db\" -o -name \"*.sh\" -o -name \"*.cfg\" \\) | grep -v \"/obj/\" > " . l:temp_file_list
"    silent! execute "!" . "ctags --languages=C,C++ --fields=+ia --extra=+fq --tag-relative=yes -f " . l:path . "/tags --totals=yes -L " . l:temp_file_list
"    silent! execute "!" . "cscope -b -q -u -f " . l:path . "/cscope.out" . " -i " . l:temp_file_list
"    silent! execute "!" . "rm " . l:temp_file_list
"    execute "cs add ". l:path . "/" . "cscope.out"
"    if &tags != ""
"        let &tags=l:path . "/" . "tags" . "," . &tags
"    else
"        let &tags=l:path . "/" . "tags"
"    endif
"
"    try
"        cs reset
"    catch /:E568:/
"        " E568 cscope problem: database already added
"        " just ignore
"    endtry
"    "Note: redraw has problems with Vim compiled in tiny version (even though the function is not used)
"    execute "redraw!" 
"endfunction
"
""com! -nargs=* Egt call MyGenTagsCmd("gt", <f-args>)
""com! -nargs=* Ert call MyGenTagsCmd("rt", <f-args>)
"
"" XML formatter (works with selected ranges) - uses xmllint internally
"function! DoFormatXML() range
"    " Save the file type
"    let l:origft = &ft
"
"    " Clean the file type
"    set ft=
"
"    " Add fake initial tag (so we can process multiple top-level elements)
"    exe ":let l:beforeFirstLine=" . a:firstline . "-1"
"    if l:beforeFirstLine < 0
"        let l:beforeFirstLine=0
"    endif
"    exe a:lastline . "put ='</PrettyXML>'"
"    exe l:beforeFirstLine . "put ='<PrettyXML>'"
"    exe ":let l:newLastLine=" . a:lastline . "+2"
"    if l:newLastLine > line('$')
"        let l:newLastLine=line('$')
"    endif
"
"    " Remove XML header
"    exe ":" . a:firstline . "," . a:lastline . "s/<\?xml\\_.*\?>\\_s*//e"
"
"    " Recalculate last line of the edited code
"    let l:newLastLine=search('</PrettyXML>')
"
"    " Execute external formatter
"    exe ":silent " . a:firstline . "," . l:newLastLine . "!xmllint --noblanks --format --recover -"
"
"    " Recalculate first and last lines of the edited code
"    let l:newFirstLine=search('<PrettyXML>')
"    let l:newLastLine=search('</PrettyXML>')
"    
"    " Get inner range
"    let l:innerFirstLine=l:newFirstLine+1
"    let l:innerLastLine=l:newLastLine-1
"
"    " Remove extra unnecessary indentation
"    exe ":silent " . l:innerFirstLine . "," . l:innerLastLine "s/^  //e"
"
"    " Remove fake tag
"    exe l:newLastLine . "d"
"    exe l:newFirstLine . "d"
"
"    " Put the cursor at the first line of the edited code
"    exe ":" . l:newFirstLine
"
"    " Restore the file type
"    exe "set ft=" . l:origft
"endfunction
"command! -range=% FormatXML <line1>,<line2>call DoFormatXML()
"
"nmap <silent> <leader>x :%FormatXML<CR>
"vmap <silent> <leader>x :FormatXML<CR>

" ================
" = Experimental =
" ================
"backup to ~/.vim/ 
"let g:user_backup_home = substitute(s:home_base_path, '[\/]$', '', '') . g:OS_dir_separator . '.vim' . g:OS_dir_separator . 'backup'
"if isdirectory(g:user_backup_home) == 0
"    silent! execute '!' . g:OS_mkdir_command . ' ' . g:user_backup_home
"endif
"let g:user_swap_home = substitute(s:home_base_path, '[\/]$', '', '') . g:OS_dir_separator . '.vim' . g:OS_dir_separator . 'swap'
"if isdirectory(g:user_swap_home) == 0
"    silent! execute '!' . g:OS_mkdir_command . ' ' . g:user_swap_home
"endif
"let g:user_undo_home = substitute(s:home_base_path, '[\/]$', '', '') . g:OS_dir_separator . '.vim' . g:OS_dir_separator . 'undo'
"if isdirectory(g:user_undo_home) == 0
"    silent! execute '!' . g:OS_mkdir_command . ' ' . g:user_undo_home
"endif
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
"set backupskip=/tmp/*,/private/tmp/* 
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"TODO: improve with noundofile for specific files (like /tmp/* files)
"au BufWritePre /tmp/* setlocal noundofile

"VIM BUG: unfortunately VIM does not support double trailing slash in
" backupdir specification (does store path into filename) - see https://code.google.com/p/vim/issues/detail?id=179
"let &backupdir=g:user_backup_home . g:OS_dir_separator . g:OS_dir_separator
"
"let &directory=g:user_swap_home . g:OS_dir_separator . g:OS_dir_separator
"set backup 
"set writebackup
"if has('persistent_undo')
"    let &undodir=g:user_undo_home . g:OS_dir_separator . g:OS_dir_separator
"    set undofile
"    set undolevels=1000
"endif
"
" use leader to interact with the system clipboard
set clipboard+=unnamedplus
nnoremap <Leader>p "*]p
nnoremap <Leader>P "*]P

nnoremap <Leader>y ma^"*y$`a
nnoremap <Leader>c ^"*c$
nnoremap <Leader>d ^"*d$

vnoremap <Leader>y "*y
vnoremap <Leader>c "*c
vnoremap <Leader>d "*d

"set clipboard+=unnamed
"if has('clipboard')
"    if has('unnamedplus')
"    else
"        set clipboard=unnamed
"    endif
"    "Note: in vim 7.3.74 and higher you can set clipboard=unnamedplus to alias unnamed register to the + register, which is the X Window clipboard.
"    "
"    "If having problems in X11, than install autocutsel-0.10.0.tar.gz package to
"    "sync X11 clipboards between each other
"	"
"    "
"	"Todo: add exclude pattern, when running with X forwarding through slow
"	"connection
"	"e.g set clipboard=autoselect,exclude:cons\\\|linux\\\|screen
"	"    set clipboard=autoselect,exclude:.*
"    "Warning: following line causes big problems with syntax highlighting and even crashed Vim on opening of Perl files (*.pl)
"    "Note: should disable X-clipboard on slow connections (because Vim can
"    " otherwise delay start for few seconds, by contacting X-server first and
"    " only then starting
"    "set clipboard+=exclude:.*
"endif

""if has("mouse_sgr")
""	set ttymouse=sgr
""else
""	"if we have old vim or vim without mouse_sgr compiled, its better to not touch ttymouse setting
""	"set ttymouse=xterm2
""end
"
"" when .vimrc is edited, reload it
"if has('autocmd')
""    autocmd! BufWritePost "*" . g:OS_dir_separator . g:OS_vimrc source %
"    execute "autocmd! BufWritePost " . g:OS_vimrc . " source %"
"endif
"
""Todo: check Vim startup time via: vim --startuptime /tmp/startup.txt
""
"
"" clipoard copy and paste functions
""Todo: only when xsel is installed (perhaps distribute with vi ?)
":command! -range Cz :silent :<line1>,<line2>w !xsel -i -b
":command! -range Cx :silent :<line1>,<line2>w !xsel -i -p
":command! -range Cv :silent :<line1>,<line2>w !xsel -i -s
":cabbrev cv Cv
":cabbrev cz Cz
":cabbrev cx Cx
"
":command! -range Pz :silent :r !xsel -o -b
":command! -range Px :silent :r !xsel -o -p
":command! -range Pv :silent :r !xsel -o -s
"
":cabbrev pz Pz
":cabbrev px Px
":cabbrev pv Pv

"filetype plugin indent on
inoremap {<CR> {<CR>}<C-o>O

"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"runtime bundle/vim-pathogen/autoload/pathogen.vim

let g:python_host_prog = '/usr/bin/python3'


let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set background=dark "light or dark
"colorscheme solarized

"if (has("termguicolors"))
"  set termguicolors
"endif

" Theme
syntax enable
colorscheme seoul256
"colorscheme OceanicNext
"colorscheme onedark
set background=dark

" Use deoplete.
"let g:deoplete#enable_at_startup = 1

"set encoding=utf-8
"let g:airline_powerline_fonts = 1
"let g:Powerline_symbols='unicode'

" Status bar airline settings
"let g:airline#extensions#tabline#enabled = 2
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = ' '
"let g:airline#extensions#tabline#right_alt_sep = '|'
"let g:airline_left_sep = ' '
"let g:airline_left_alt_sep = '|'
"let g:airline_right_sep = ' '
"let g:airline_right_alt_sep = '|'
"let g:airline_theme= 'seoul256'
"let g:airline_theme= 'solarized dark'
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
"let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ 'component': {
"      \   'readonly': '%{&readonly?"":""}',
"      \ },
"      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
"      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
"      \ }
