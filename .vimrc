"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"   	     __          ___ _             _           
" 		  /\ \ \___     / _ \ |_   _  __ _(_)_ __  ___ 
" 		 /  \/ / _ \   / /_)/ | | | |/ _` | | '_ \/ __|
"		/ /\  / (_) | / ___/| | |_| | (_| | | | | \__ \
"		\_\ \/ \___/  \/    |_|\__,_|\__, |_|_| |_|___/
"                                    |___/             
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               


"------------------SETTINGS------------------


" Disable compatibility with vi which can cause unexpected issues.
	set nocompatible

" Disable the vim bell
	set visualbell

" Disable auto commenting in a new line
	autocmd Filetype * setlocal formatoptions-=c formatoptions-=r  formatoptions-=o

" Setting the character encoding of Vim to UTF-8
	set encoding=UTF-8

" Enable type file detection. Vim will be able to try to detect the type of file is use.
	filetype on

" Enable spell check
	set spell

" Smart tab
	set smarttab

" Search down to subfolders
	set path+=**

" Enable plugins and load plugin for the detected file type.
	filetype plugin on

" Load an indent file for the detected file type.
	filetype indent on

" Turn syntax highlighting on.
	syntax on

" Add numbers to the file.
	set number relativenumber

" Mouse functionality
	set mouse=a

" Color scheme
	colorscheme slate 

" Highlight cursor line underneath the cursor horizontally.
	set cursorline

" Highlight cursor line underneath the cursor vertically.
	set cursorcolumn

" Set shift width to 4 spaces.Set tab width to 4 columns.
	set shiftwidth=4
	set tabstop=4

" If the current file type is HTML, set indentation to 2 spaces.
	autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" Do not save backup files.
	set nobackup

" Do wrap lines.
	set wrap

" While searching though a file incrementally highlight matching characters as you type.
	set incsearch
	set hlsearch

" Ignore capital letters during search.
	set ignorecase

" Show partial command you type in the last line of the screen.
	set showcmd

" Show the mode you are on the last line.
	set showmode

" Show matching words during a search.
	set showmatch

" Set the commands to save in history default number is 20.
	set history=1000

" Setting the split window to open as i like (like in a WM - qtile)
	set splitbelow splitright

" Enable auto completion menu after pressing TAB.
	set wildmenu

" There are certain files that we would never want to edit with Vim.
" Wild menu will ignore files with these extensions.
	set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" If Vim version is equal to or greater than 7.3 enable undo file.
" This allows you to undo changes to a file even after saving it.
	if version >= 703
    	set undodir=~/.vim/backup
    	set undofile
    	set undoreload=10000
	endif


" File Browsing settings
	let g:netrw_banner=0
	let g:netrw_liststyle=3
	let g:netrw_showhide=1
	let g:netrw_winsize=20


" Auto Completion - Enable Omni complete features
	set omnifunc=syntaxcomplete#Complete
	

" Enable Spelling Suggestions for Auto-Completion:
	set complete+=k
	set completeopt=menu,menuone,noinsert


" Minimalist-Tab Complete
	inoremap <expr> <Tab> TabComplete()
	fun! TabComplete()
	    if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
	        return "\<C-N>"
	    else
	        return "\<Tab>"
	    endif
	endfun
	

" Minimalist-Autocomplete 
	inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
	autocmd InsertCharPre * call AutoComplete()
	fun! AutoComplete()
	    if v:char =~ '\K'
	        \ && getline('.')[col('.') - 4] !~ '\K'
	        \ && getline('.')[col('.') - 3] =~ '\K'
	        \ && getline('.')[col('.') - 2] =~ '\K' " last char
	        \ && getline('.')[col('.') - 1] !~ '\K'
	
	        call feedkeys("\<C-N>", 'n')
	    end
	endfun


"------------------GVIM - GUI VERSION------------------


	if has('gui_running')

    	" Set the color scheme.
    		color slate

		" Font
			if has("gui_macvim")
    			set guifont=Menlo\ Regular:h14
			elseif has("gui_win32")
				set guifont="Consolas 11"
			else
				set guifont=Consolas\ 14
			endif

		" Hide the toolbar.
			set guioptions-=T

    	" Hide the right-side scroll bar.
    		set guioptions-=r

		" Start Lex Tree and put the cursor back in the other window.
			autocmd VimEnter * :Lexplore | wincmd p

	endif


"------------------STATUS_LINE------------------


" Status line
	set laststatus=2
	set statusline=
	set statusline+=%2*
	set statusline+=%{StatuslineMode()}
	set statusline+=\ 
	set statusline+=%{SpellCheckStatus()}
	set statusline+=%1*
	set statusline+=\ 
	set statusline+=%3*
	set statusline+=<
	set statusline+=-
	set statusline+=\ 
	set statusline+=%f
	set statusline+=\ 
	set statusline+=-
	set statusline+=>
	set statusline+=\ 
	set statusline+=%4*
	set statusline+=%m
	set statusline+=%=
	set statusline+=%h
	set statusline+=%r
	set statusline+=%4*
	set statusline+=%c
	set statusline+=/
	set statusline+=%l
	set statusline+=/
	set statusline+=%L
	set statusline+=\ 
	set statusline+=%1*
	set statusline+=|
	set statusline+=%y
	set statusline+=\ 
	set statusline+=%4*
	set statusline+=%P
	set statusline+=\ 
	set statusline+=%3*
	set statusline+=t:
	set statusline+=%n
	set statusline+=\ 


" Colors
	hi User2 ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black
	hi User1 ctermbg=brown ctermfg=white guibg=black guifg=white
	hi User3 ctermbg=brown  ctermfg=lightcyan guibg=black guifg=lightblue
	hi User4 ctermbg=brown ctermfg=green guibg=black guifg=lightgreen


" Mode
	function! StatuslineMode()
	  let l:mode=mode()
	  if l:mode==#"n"
	    return "NORMAL"
	  elseif l:mode==#"V"
	    return "VISUAL LINE"
	  elseif l:mode==?"v"
	    return "VISUAL"
	  elseif l:mode==#"i"
	    return "INSERT"
	  elseif l:mode ==# "\<C-V>"
		return "V-BLOCK"
	  elseif l:mode==#"R"
	    return "REPLACE"
	  elseif l:mode==?"s"
	    return "SELECT"
	  elseif l:mode==#"t"
	    return "TERMINAL"
	  elseif l:mode==#"c"
	    return "COMMAND"
	  elseif l:mode==#"!"
	    return "SHELL"
	  else
		  return "VIM"
	  endif
	endfunction
	

" Spell Check Status
	function! SpellCheckStatus()
		if &spell 
			return " [SPELL]"
		else
			return ''
		endif	
	endfunction

	


"------------------KEY_BINDINGS------------------


" Spell-check on\off
	map <C-z> :setlocal spell! spelllang=en_us<CR>


" Type jj to exit insert mode quickly.
	inoremap jj <Esc>


" Format a paragraph into lines
	map Q gq<CR>


" Set the space  as the leader key.
	let mapleader = " "


" Opening a file explore 
	map <leader>e :Lex<CR>


" Opening a terminal window
	map <c-t> :ter<CR>
" Closing the terminal window
	tnoremap <c-t> exit<CR>
" CTRL+I OR Esc to make the terminal scrollable and I to input mode
	tnoremap <c-i> <c-w><s-n> 
	tnoremap <Esc> <C-\><C-n>


" You can split the window in Vim. y - in the y access , x - in the x access
	map <leader>y :split<space>
	map <leader>x :vsplit<space>


" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
	nnoremap <c-j> <c-w>j
	nnoremap <c-k> <c-w>k
	nnoremap <c-h> <c-w>h
	nnoremap <c-l> <c-w>l


" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
	noremap <a-up> <c-w>+
	noremap <a-down> <c-w>-
	noremap <a-left> <c-w>>
	noremap <a-right> <c-w><


" Moving between tabs
	map <leader>t gt


" Opening\Creating a file in a new tab - write the tab to open
	nnoremap <leader>c :tabedit<space>


" Saving a file using CTRL+S
	map <C-S> :w<CR>


" Quitting and saving a file using CTRL+S
	map <C-q> :wq<CR>


" Surround word with a wanted character
	nnoremap <leader>sw <cmd>echo "Press a character: " \| let c = nr2char(getchar()) \| exec "normal viwo\ei" . c . "\eea" . c . "\e" \| redraw<CR>


" Replace all occurrences of a word
	nnoremap <leader>rw :%s/\<<c-r><c-w>\>//g<left><left>


" Map V-Block to not confuse with Past
	noremap <leader>v <C-v>


" For copy and past
	map <C-S-V> "+P
	vnoremap <C-C> "*y :let @+=@*<CR>
" If not in Linux replace the keybinding in above line with: vnoremap <C-C> "+y

" Seeing the registers
	nnoremap <leader>r <cmd>registers<CR>


"------------------END_KEY------------------

