" Plugins:
    call plug#begin('~/.local/share/nvim/plugged')
     " Autocomplete:
        "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        "Plug 'zchee/deoplete-jedi'
        "Plug 'zchee/deoplete-clang'
        "Plug 'tweekmonster/deoplete-clang2'
        Plug 'ervandew/supertab'
        Plug 'Valloric/YouCompleteMe'
     " Syntax And Format:
        Plug 'w0rp/ale'
		Plug 'Chiel92/vim-autoformat'
        Plug 'vim-pandoc/vim-rmarkdown'
        Plug 'vim-pandoc/vim-pandoc'
        Plug 'vim-pandoc/vim-pandoc-syntax'
     " Appearance:
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'octol/vim-cpp-enhanced-highlight'
        Plug 'mhartington/oceanic-next'
        Plug 'mboughaba/i3config.vim'
        " Plug 'gorodinskiy/vim-coloresque'
     " Rest:
        Plug 'lervag/vimtex'
        Plug 'Konfekt/FastFold'
        Plug 'jceb/vim-orgmode'
        Plug 'scrooloose/nerdtree'
        Plug 'scrooloose/nerdcommenter'
        Plug 'ctrlpvim/ctrlp.vim'
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'Shougo/denite.nvim'
     " Git:
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'
        Plug 'Xuyuanp/nerdtree-git-plugin'
    call plug#end()

" Configurations:
    "colorscheme badwolf
    colorscheme OceanicNext

" Settings:
    set nu
    set relativenumber
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set clipboard=unnamed,unnamedplus
    set splitbelow
    set splitright
    set hidden
    set autoread
    set termguicolors
    set foldlevelstart=99

" Variables:
    let mapleader = "\<Space>"
    let g:maplocalleader = ","

" Mappings:
    map gm :call cursor(0, virtcol('$')/2)<CR>
    map <C-W>" :split<CR> :terminal<CR> A
    map <C-W>% :vsplit<CR> :terminal<CR> A
    map <C-W>c :e<CR> :terminal<CR> A
    map <C-B> <C-^>
    "map <C-D> :bp <BAR> bd #<CR>
    map <C-D> :bd<CR>
    map <C-E> :enew<CR>
    map <C-N> :bn<CR>
    map <C-L> :bp<CR>
    nmap <leader>w :w!<cr>
    nmap <leader>q :q<cr>
    nnoremap <leader>s :nohlsearch<CR>
    nmap <leader>r :source ~/.config/nvim/init.vim<CR>
    nmap <leader>% :source %<CR>
    tnoremap <Esc> <C-\><C-n>
    inoremap {<CR> {<CR>}<Esc>O

" Commands:
    command! Vimrc :e ~/.config/nvim/init.vim
    command! Bashrc :e ~/.bashrc

" Deoplete:
    "call deoplete#enable()
    "call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
	"let g:deoplete#delimiters = ['/','.']
    "let g:deoplete#sources#clang#libclang_path="/usr/lib/llvm-3.8/lib/libclang.so"
    "let g:deoplete#sources#clang#clang_header="/usr/lib/clang"
	"inoremap <silent><expr> <C-Space> deoplete#mappings#manual_complete()
   " let g:vimtex_compiler_latexmk = {'callback' : 0}
   " if !exists('g:deoplete#omni#input_patterns')
   "     let g:deoplete#omni#input_patterns = {}
   " endif
   " let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete

" YouCompleteMe:
    "let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
    let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
    let g:ycm_autoclose_preview_window_after_completion=1
    let g:ycm_confirm_extra_conf = 0
    map <leader>yg :YcmCompleter GoTo<CR>
    imap <C-G> <ESC>:YcmCompleter GoTo<CR>
    map <leader>yd :YcmCompleter GoToDefinitionElseDeclaration<CR>
    map <leader>yr :YcmCompleter GoToReferences<CR>
    map <leader>yc :YcmCompleter GetDoc<CR>
    map <leader>yf :YcmCompleter FixIt<CR>
    map <leader>yt :YcmCompleter GetType<CR>


" Ale:
	let g:ale_completion_enabled = 1
	let b:ale_fixers = [
		\	'remove_trailing_lines',
		\	'trim_whitespace',
		\   'uncrustify',
		\   'yapf',
		\]
	"let b:ale_linters = ['flake8']
	"let g:ale_fix_on_save = 1
    map <leader>ag :ALEGoToDefinition<CR>
    "imap <C-G> <ESC>:ALEGoToDefinition<CR>
    map <leader>ad :ALEDetail<CR>
    map <leader>ar :ALEFindReference<CR>
    map <leader>af :ALEFix<CR>

" Air Line:
    let g:airline#extensions#tabline#enabled = 1
    " let g:airline_theme='badwolf'
    let g:airline_theme='oceanicnext'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#whitespace#enabled = 0
    let g:airline#extensions#tabline#enabled = 1        "enable buffers
    let g:airline#extensions#tabline#fnamemod = ':t'    "show only filename of buffers

" Vimtex:
    let g:vimtex_complete_recursive_bib = 1
    "set foldmethod=manual
    "let g:tex_fold_enabled = 1
    let g:tex_fold_manual = 1
    "Open / Close all Folds: zR / zM
    map <leader>vc :VimtexCompile
    map <leader>vt :VimtexTocOpen
    autocmd VimLeave *.tex !texclear %

" Supertab:
    let g:SuperTabDefaultCompletionType = "<c-n>"

" FastFold:
    nmap zuz <Plug>(FastFoldUpdate)
    let g:fastfold_savehook = 1
    let g:fastfold_fold_command_suffixes =  ['x', 'X', 'a', 'A', 'o', 'O', 'c', 'C']
    let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" Autoformat:
	noremap <F3> :Autoformat<CR>

" Org Mode:
   :let g:org_agenda_files=['~/Documents/notes/default.org']

" CtrlP:
    "let g:ctrlp_working_path_mode = 'r'
    "let g:ctrlp_custom_ignore = {
    "\ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
    "\ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
    "\}
    "nmap <leader>pb :CtrlPBuffer<CR>
    "nmap <leader>pp :CtrlPMixed<CR>
    "nmap <leader>pm :CtrlPMRUFiles<CR>

" Fugitive:
    map <leader>gd :Gdiff<CR>

" FZF:
	"let $FZF_DEFAULT_COMMAND = 'find . -path ./cache -prune -o -printf "%P\\n"'
    nmap <leader>ff :Files ~/<CR>
    nmap <leader>fz :Files<CR>
    nmap <leader>fg :GFiles<CR>
    nmap <leader>fb :Buffers<CR>
    nmap <leader>fh :History<CR>
    nmap <leader>fc :History:<CR>
    nmap <leader>fm :Maps<CR>
    

" Denite:
	call denite#custom#map(
	      \ 'insert',
	      \ '<C-j>',
	      \ '<denite:move_to_next_line>',
	      \ 'noremap'
	      \)
	call denite#custom#map(
	      \ 'insert',
	      \ '<C-k>',
	      \ '<denite:move_to_previous_line>',
	      \ 'noremap'
	      \)
    nmap <leader>db :Denite buffer<CR>
    nmap <leader>df :Denite file<CR>

" R Markdown
    autocmd Filetype rmd,rnoweb map <F5> :!echo<SPACE>"require(rmarkdown);<SPACE>render('<C-R>%')"<SPACE>\|<SPACE>R<SPACE>--vanilla<ENTER>
    autocmd BufWritePost *.Rmd :RMarkdown pdf
    autocmd Filetype rmarkdown,rmd set nospell
    "autocmd BufRead,BufNewFile
    "autocmd Filetype rmarkdown, rmd 
