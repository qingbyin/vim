" Mimic emacs magit
call minpac#add('jreybert/vimagit')

" Show git differ on the gutter
call minpac#add('airblade/vim-gitgutter')
" Immediately update signs
set updatetime=100
" By default the sign column will appear when there are signs to show and
" disappear when there aren't. To always have the sign column
set signcolumn=yes
" Set SignColumn background color (same as the lineNumber bg color)
highlight! link SignColumn LineNr
" Modify sign background color
highlight GitGutterAdd ctermfg=193 ctermbg=65 guifg=#d7ffaf guibg=#5F875F
highlight GitGutterChange ctermfg=189 ctermbg=60 guifg=#d7d7ff guibg=#5F5F87
highlight GitGutterDelete ctermfg=234 ctermbg=167 guifg=#263238 guibg=#cc6666
" Use floating/popup windows for hunk/chunk previews
let g:gitgutter_preview_win_floating = 1
" keymappings
" Disable its default
let g:gitgutter_map_keys = 0
" hunk info 
nmap <Leader>gd  <Plug>(GitGutterPreviewHunk)
" Stage hunk
nmap gs <Plug>(GitGutterStageHunk)
" Jump to previous/next hunk/chunk
nmap gh <Plug>(GitGutterPrevHunk)
nmap gj <Plug>(GitGutterNextHunk)
