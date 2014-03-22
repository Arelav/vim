call pathogen#infect()
call pathogen#helptags()
let g:solarized_termcolors=256
syntax enable
set number

let g:nerdtree_tabs_open_on_console_startup=1

let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Sauce\ Code\ Powerline\ Light:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

filetype plugin indent on

set rtp+=/Users/valera/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set rtp+=/Users/valera/Library/Python/2.7/lib/python/site-packages/powerline/zsh/powerline.zsh
set rtp+=/Users/valera/Library/Python/2.7/lib/python/site-packages/powerline/tmux/powerline.conf

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

if has('gui_running')
  set background=light
  hi NonText guifg=bg
else
  set background=dark
  hi NonText ctermfg=black guifg=black
endif
