
let g:quickfix_is_open = 0

function! ToggleQuickfix()
  if g:quickfix_is_open
    cclose
    let g:quickfix_is_open = 0
    execute g:quickfix_return_to_window . "wincmd w"
  else
    let g:quickfix_return_to_window = winnr()
    copen
    let g:quickfix_is_open = 1
  endif
endfunction

command! ToggleQuickfix
      \ call ToggleQuickfix()


nnoremap <silent><leader>qf :ToggleQuickfix<cr>

