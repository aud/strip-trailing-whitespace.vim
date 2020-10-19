" Skip if already loaded
if exists('g:loaded_strip_trailing_whitespace_plugin')
  finish
endif

let g:loaded_strip_trailing_whitespace_plugin = 1

function! <SID>StripTrailingWhitespaces()
  let _s=@/
  let l = line(".")
  let c = col(".")

  %s/\s\+$//e

  let @/=_s
  call cursor(l, c)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
