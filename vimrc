set nocp

call pathogen#infect()
call pathogen#helptags()

syntax enable
set number

let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"

colorscheme solarized

filetype plugin indent on

set rtp+=/Users/valera/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set rtp+=/Users/valera/Library/Python/2.7/lib/python/site-packages/powerline/zsh/powerline.zsh
set rtp+=/Users/valera/Library/Python/2.7/lib/python/site-packages/powerline/tmux/powerline.conf

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

if has('gui_running')

  set background=light
  hi NonText guifg=bg

  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Sauce\ Code\ Powerline\ Light:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif

else

  set background=dark
  hi NonText ctermfg=black guifg=black

endif

let g:user_emmet_expandabbr_key = '<Tab>'
let g:use_emmet_complete_tag = 1
