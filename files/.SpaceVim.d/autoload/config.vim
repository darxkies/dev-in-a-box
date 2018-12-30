func! config#before() abort
  let g:mapleader  = ','

  nnoremap <leader>w :w<cr>
  nnoremap <leader>q :q<cr>

  let g:spacevim_max_column     = 180                                                                       
  let g:spacevim_enable_debug = 1                                                                           
  let g:spacevim_realtime_leader_guide = 1                                                                  

  let g:spacevim_enable_vimfiler_welcome = 1
  let g:spacevim_enable_debug = 1

  let g:spacevim_enable_tabline_filetype_icon = 0
  let g:spacevim_enable_os_fileformat_icon = 0
  let g:spacevim_buffer_index_type = 1

  let g:spacevim_guifont = 'DejaVu\ Sans\ Mono\ for\ Powerline\ 14'

  let g:easyescape_chars = { "j": 1, "k": 1 }
  let g:easyescape_timeout = 100
  cnoremap jk <ESC>
  cnoremap kj <ESC>

  au FileType go set noexpandtab
  au FileType go set shiftwidth=4
  au FileType go set softtabstop=4
  au FileType go set tabstop=4

  set nowrap

  let g:spacevim_automatic_update = 0
  let g:spacevim_terminal_cursor_shape = 0

  let g:spacevim_custom_plugins = [
            \ ['posva/vim-vue', {'merged' : 0}],
            \ ]
endf
