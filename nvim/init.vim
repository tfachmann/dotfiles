" Plugins:
    call plug#begin('~/.local/share/nvim/plugged')
     " Autocomplete:
        "Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'ervandew/supertab'
        Plug 'Valloric/YouCompleteMe'
     " Syntax And Format:
        Plug 'w0rp/ale'
		Plug 'Chiel92/vim-autoformat'
        Plug 'vim-pandoc/vim-pandoc'
        Plug 'vim-pandoc/vim-pandoc-syntax'

     " Appearance:
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'edkolev/tmuxline.vim'
        Plug 'octol/vim-cpp-enhanced-highlight'
        Plug 'rafi/awesome-vim-colorschemes'
        " Plug 'gorodinskiy/vim-coloresque'
     " Rest:
        Plug 'lervag/vimtex'
        " Plug 'Konfekt/FastFold'
        " Plug 'jceb/vim-orgmode'
        " Plug 'scrooloose/nerdtree'
        Plug 'scrooloose/nerdcommenter'
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        Plug 'junegunn/vim-peekaboo'
        Plug 'Yilin-Yang/vim-markbar'
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
     " Git:
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'
        " Plug 'Xuyuanp/nerdtree-git-plugin'
    call plug#end()

" Configurations:
    "colorscheme badwolf
    colorscheme oceanic
    "colorscheme gruvbox

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
    set scrolloff=8
    set inccommand=split
    set ignorecase
    set smartcase
    "set completeopt=menuone,preview,noselect
    set updatetime=300
    set updatetime=50
    set shortmess+=c
    set signcolumn=yes

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
    map <C-P> :bp<CR>

    map <C-k> :resize +1<CR>
    map <C-j> :resize -1<CR>
    map <C-h> :vertical resize -1<CR>
    map <C-l> :vertical resize +1<CR>

    map <A-UP> :resize +1<CR>
    map <A-DOWN> :resize -1<CR>
    map <A-LEFT> :vertical resize -1<CR>
    map <A-RIGHT> :vertical resize +1<CR>

    map <F9> :ToggleSpell<CR>
    nmap <leader>w :w!<cr>
    nmap <leader>q :q<cr>
    nnoremap <leader>s :nohlsearch<CR>
    nmap <leader>r :source ~/.config/nvim/init.vim<CR>
    nmap <leader>% :source %<CR>
    tnoremap <Esc> <C-\><C-n>
    inoremap {<CR> {<CR>}<Esc>O

" Commands:
    command! Vimrc :e ~/.config/nvim/init.vim
    command! GVimrc :e ~/.config/nvim/ginit.vim
    command! Bashrc :e ~/.bashrc
    command! TeX :e $HOME/git_repos/Praxisphase-2.1/bericht_II/tex/bericht_II.tex
    command! TeXOld :e $HOME/git_repos/Praxisphase-1.1/bericht_I/tex/bericht_I.tex

" Autocmd:
    autocmd FileType c,cpp,java,php,python,vim autocmd BufWritePre <buffer> %s/\s\+$//e

" CocNvim:
    "function! s:check_back_space() abort
      "let col = col('.') - 1
      "return !col || getline('.')[col - 1]  =~# '\s'
    "endfunction

    "inoremap <silent><expr> <TAB>
          "\ pumvisible() ? coc#_select_confirm() :
          "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
          "\ <SID>check_back_space() ? "\<TAB>" :
          "\ coc#refresh()
    "inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


    "let g:coc_snippet_next = '<tab>'

    "inoremap <silent><expr> <C-Space> coc#refresh()
    "inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<C-G>u\<CR>"
    "nmap <leader>cd <Plug>(coc-definition)
    "nmap <leader>cy <Plug>(coc-type-definition)
    "nmap <leader>ci <Plug>(coc-implementation)
    "nmap <leader>gr <Plug>(coc-references)
    "nmap <leader>cr <Plug>(coc-rename)
    "nmap <leader>ca  <Plug>(coc-codeaction)
    "nmap <leader>cf  <Plug>(coc-fix-current)
    "nnoremap <F4> :call CocAction('format')<CR>
	"command! -nargs=0 Format :call CocAction('format')

    "nnoremap <silent> K :call <SID>show_documentation()<CR>

    "function! s:show_documentation()
      "if (index(['vim','help'], &filetype) >= 0)
        "execute 'h '.expand('<cword>')
      "else
        "call CocAction('doHover')
      "endif
    "endfunction


" YouCompleteMe:
    "let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
    let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
    let g:ycm_autoclose_preview_window_after_completion=1
    let g:ycm_confirm_extra_conf = 0

    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    let g:SuperTabDefaultCompletionType = '<C-n>'

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
    let g:ale_linters = {
        \ 'cpp': ['ccls', 'clang', 'clangcheck', 'clangd', 'clazy', 'cppcheck', 'cpplint', 'cquery', 'flawfinder', 'gcc'],
        \}
    "
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
    let g:airline#extensions#tmuxline#enabled = 1

" Vimtex:
    let g:vimtex_complete_recursive_bib = 1
    "set foldmethod=manual
    "let g:tex_fold_enabled = 1
    let g:tex_fold_manual = 1
    "Open / Close all Folds: zR / zM
    map <leader>vc :VimtexCompile<CR>
    map <leader>vt :VimtexTocToggle<CR>

    let g:tex_flavor='latex'
    let g:vimtex_quickfix_mode=0
    set conceallevel=1
    let g:tex_conceal='abdmg'

    " Custom Latex Macros
    autocmd VimLeave *.tex !texclear %
    autocmd Filetype tex map j gj
    autocmd Filetype tex map k gk
    autocmd Filetype tex imap C++ C\texttt{++}
    autocmd Filetype tex imap <i \item
    autocmd Filetype tex imap ?e \emph{
    autocmd BufNew,BufRead *tex setlocal textwidth=9999
    autocmd FileType tex let @f = '\begin{figure}\includegraphics{kb[scale=1]{}\label{fig:}\end{figure}kuku@7kl'
    autocmd FileType tex let @e = '\begin{equation}\end{equation}ku'
    autocmd FileType tex let @l = '\begin{lstlisting}khkd	\end{lstlisting}khkrkrkrkr'
    autocmd FileType tex let @i = "\\begin{itemize}\<CR>\<SPACE>\<CR>\\end{itemize}\<Up>\<BS>"
    autocmd FileType tex let @t = "\\begin{table}\<CR>\\centering\<CR>\\caption{}\<CR>\\begin{tabular}{|c|c}\<CR>\\hline\<CR>\\end{tabular}\<CR>\\label{tab:}\<CR>\\end{table}"
    autocmd FileType tex let @o = "\\operatorname{\<ESC>ea}"


" Supertab:
    let g:SuperTabDefaultCompletionType = "<c-n>"

" FastFold:
    nmap zuz <Plug>(FastFoldUpdate)
    let g:fastfold_savehook = 1
    let g:fastfold_fold_command_suffixes =  ['x', 'X', 'a', 'A', 'o', 'O', 'c', 'C']
    let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" Autoformat:
	noremap <F3> :Autoformat<CR>

" Fugitive:
    map <leader>gd :Gdiff<CR>
    map <leader>gs :Gstatus<CR>

" FZF:
	"let $FZF_DEFAULT_COMMAND = 'find . -path ./cache -prune -o -printf "%P\\n"'
    nmap <leader>ff :Files ~/<CR>
    nmap <leader>fz :Files<CR>
    nmap <leader>fg :GFiles<CR>
    nmap <leader>fr :Rg<CR>
    nmap <leader>fb :Buffers<CR>
    nmap <leader>fh :History<CR>
    nmap <leader>fc :History:<CR>
    nmap <leader>fm :Marks<CR>


" R Markdown:
    autocmd Filetype rmd,rnoweb map <F5> :!echo<SPACE>"require(rmarkdown);<SPACE>render('<C-R>%')"<SPACE>\|<SPACE>R<SPACE>--vanilla<ENTER>
    autocmd BufWritePost *.Rmd :RMarkdown pdf
    autocmd Filetype rmarkdown,rmd set nospell
    "autocmd BufRead,BufNewFile
    "autocmd Filetype rmarkdown, rmd

    func! ToggleSpell()
        if &spell == 0
            "set spellfile=$HOME/.config/nvim/spell/custom-de.utf-8.add
            setlocal spell spelllang=custom-de
        else
            set nospell
        endif
    endfu
    com! ToggleSpell call ToggleSpell()

" UltiSnip:
    let g:UltiSnipsExpandTrigger = "<tab>"
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    "let g:UltiSnipsExpandTrigger = "<C-L>"
    "let g:UltiSnipsJumpForwardTrigger = "<C-L>"
    "let g:UltiSnipsJumpBackwardTrigger = "<s-C-L>"
    let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/ultisnips', "UltiSnips"]
    let g:UltiSnipsSnippetsDir = $HOME."/.config/nvim/ultisnips"
    let g:snips_author = "bach_tm"
    command! UltiSnipsEditAll :e $HOME/.local/share/nvim/plugged/vim-snippets/UltiSnips/all.snippets

    py3 import os; sys.executable=os.path.join(sys.prefix, 'python.exe')
