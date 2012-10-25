command! CtrlPSessions cal ctrlp#init(ctrlp#sessions#id())

function! SaveOrCreateSession()
  if strlen(v:this_session)
    exe "mks! ".v:this_session
    echo "Saved session to: ".v:this_session
  else 
    let session_name = input('Session name: ')
    exe "mks! ~/.vimsessions/".session_name
endif
endfunction

command! MkS cal SaveOrCreateSession()
