" vim:ft=vim
" Load basic config files
runtime basic_config.vim

" --------------------------------------------------------------
" Plugins
" --------------------------------------------------------------
" Activate the package manager
packadd minpac
call minpac#init()
" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Theme should go first, or other plugins' color change (e.g. highlight) will not work
runtime ./modules/theme.vim
runtime ./modules/editor.vim
runtime ./modules/git.vim
runtime ./modules/completion.vim
" Add other plugins here.
" Vim syntax highlighting
" call minpac#add('vim-jp/syntax-vim-ex')

" Debug if vim is slow or broken
" Check plugin performance
call minpac#add('dstein64/vim-startuptime')
" Debug coc
" let g:node_client_debug = 1


" keymappings for all
runtime keymappings.vim

" Load the plugins right now. (optional)
"packloadall

