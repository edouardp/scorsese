"
"  Scorsese
"
"    A Movie Mode Vim Plugin
"


" -- Functions ----------------------------------------------------------------
"

function! s:scorsese_start(...)
  if a:0
    try
      echo 'Turning Movie Mode On.' . a:1
      "map , call s:scorsese_insert()<CR>
      nnoremap z a<c-r>=scorsese#insert()<esc><esc>
      "call scorsese#set_map()
      "let g:arrowmapper_map = a:1
    catch
      echohl WarningMsg | echo 'Error While Turning Movie Mode On.' | echohl NONE
    endtry
  else
    echo 'Turning Movie Mode Off.'
  endif
endfunction


" -- Commands -----------------------------------------------------------------
"

command! -nargs=? -complete=file MovieMode call <sid>scorsese_start(<f-args>)
command! MovieModeOff call <sid>scorsese_stop()


