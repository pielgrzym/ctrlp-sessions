command! CtrlPSessions cal ctrlp#init(ctrlp#sessions#id())

let g:ctrlp_session_dir = exists('g:ctrlp_session_dir') ? g:ctrlp_session_dir : '.vimsessions'

function! SaveOrCreateSession()
  if strlen(v:this_session)
    exe "mks! ".v:this_session
    echo "Saved session to: ".v:this_session
  else 
    let session_name = input('Session name: ')
    exe "mks! ~/".g:ctrlp_session_dir."/".session_name
endif
endfunction

command! MkS cal SaveOrCreateSession()
