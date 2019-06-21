filetype plugin indent on
syntax on
set ai
set si
colorscheme ron
set ts=2
set shiftwidth=2
set hlsearch
set backupdir=~/tmp
set directory=~/tmp
set noexpandtab
set nocompatible				" vim-specific settings, non-vi-compatible
set backspace=indent,eol,start 	" Allow backspace in insert mode
filetype plugin indent on		" Enable file type detection and do language-dependent indenting.
set tabstop=4					" Default tabs are too big
" set wrap						" Turn on word wrapping
set ai                          " autoindent
set shiftwidth=4

syntax on
set background=dark
colorscheme solarized
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf



" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'reedes/vim-pencil'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Initialize plugin system
call plug#end()


function! Writer()
	let g:pencil#wrapModeDefault = 'soft'
	let g:pencil#textwidth = 80
	set spell                       " Turn spelling on
	set linebreak					" Only wrap at sensible places
	set nolist						" list disables linebreak
	set textwidth=0					" prevent Vim from automatically inserting line breaks
	set wrapmargin=0
	set formatoptions+=l			" Black magic
	call pencil#init()
	Goyo 80
	Limelight0.3
	echom "Writer mode engaged, sir"
endfunction

function! NoWriter()
	set nospell                       " Turn spelling on
	NoPencil
	Goyo!
	Limelight!
endfunction



augroup pencil
	autocmd!
	au! BufRead,BufNewFile *.md set filetype=markdown
	autocmd FileType markdown,mkd,md call Writer()
	autocmd FileType text call Writer()
augroup END

