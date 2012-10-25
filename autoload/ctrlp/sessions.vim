let s:n = exists('s:n') ? s:n : fnamemodify(expand('<sfile>', 1), ':t:r')

" Load guard
if ( exists('g:loaded_ctrlp_'.s:n) && g:loaded_ctrlp_{s:n} )
      \ || v:version < 700 || &cp
  finish
endif
let g:loaded_ctrlp_{s:n} = 1

call add(g:ctrlp_ext_vars, {
      \ 'init': 'ctrlp#'.s:n.'#init()',
      \ 'accept': 'ctrlp#'.s:n.'#accept',
      \ 'lname': 'session:',
      \ 'sname': 'Choose session',
      \ 'type': 'line',
      \ 'sort': 1,
      \ })

function! ctrlp#{s:n}#init()
  return split(system('ls $HOME/.vimsessions'), '\n')
endfunction

function! ctrlp#{s:n}#accept(mode, str)
  " For this example, just exit ctrlp and run help
  call ctrlp#exit()
  wall
  exe "source ~/.vimsessions/".a:str
endfunction


" Do something before enterting ctrlp
function! ctrlp#{s:n}#enter()
endfunction


" Do something after exiting ctrlp
function! ctrlp#{s:n}#exit()
endfunction


" Give the extension an ID
let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)

" Allow it to be called later
function! ctrlp#{s:n}#id()
  return s:id
endfunction

" vim:fen:fdl=0:ts=2:sw=2:sts=2
