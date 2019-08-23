colorscheme oceanic

GuiTabline 0
GuiPopupmenu 0
set guifont=DejaVu\ Sans\ Mono\ For\ Powerline:h12

"command! TeXAll
func! TexAll()
    :call GuiWindowMaximized(1)
    :e $HOME/git_repos/Praxisphase-1.1/bericht_I/tex/bericht_I.tex
    :e $HOME/git_repos/Praxisphase-2.1/bericht_II/tex/bericht_T2000.tex
    :ToggleSpell
    :VimtexCompile
    :cd $HOME/git_repos/Praxisphase-2.1/bericht_II/tex
    :VimtexTocOpen
    :vert res 45
    :e $HOME/git_repos/Praxisphase-2.1/bericht_II/tex/include/chapters/01*
    :e $HOME/git_repos/Praxisphase-2.1/bericht_II/tex/include/chapters/02*
    :e $HOME/git_repos/Praxisphase-2.1/bericht_II/tex/include/chapters/03*
    :e $HOME/git_repos/Praxisphase-2.1/bericht_II/tex/include/chapters/04*
    :e $HOME/git_repos/Praxisphase-2.1/bericht_II/tex/include/chapters/05*
    :e $HOME/git_repos/Praxisphase-2.1/bericht_II/tex/include/chapters/06*
    :e $HOME/git_repos/Praxisphase-2.1/bericht_II/tex/include/chapters/07*
endfu
com! TexAll call TexAll()

map <leader>gf :call GuiWindowFullScreen(!g:GuiWindowFullScreen)<CR>
map <leader>gm :call GuiWindowMaximized(!g:GuiWindowMaximized)<CR>
