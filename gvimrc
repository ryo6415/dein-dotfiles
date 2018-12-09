let s:env = VimrcEnvironment()


if has('gui_running')
  " Font
  if s:env.is_win
    set guifont=Ricty_Diminished_for_Powerline:h12
  else
    set guifont=Menlo-Regular:h12
  endif

  " window size
  " height
  set lines=40
  " width
  set columns=120

  " fzf
  if s:env.is_unix
    let $FZF_DEFAULT_COMMAND='ag --follow --hidden --ignore-dir ".git" -g "" 2>/dev/null'
  endif

  " Misc
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set guioptions-=R
  set guioptions-=l
  set guioptions-=L
  set guioptions-=b
  set visualbell t_vb=
endif
