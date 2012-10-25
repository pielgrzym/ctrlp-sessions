CtrlPSessions - manage your sessions
====================================

What is it?
-----------

This simple extension for CtrlP enables the following:
* global dir to store vim session files
* CtrlPSessions command to source a session from abovementioned dir
* MkS command to save or create a new session to abovementioned dir

Installation
------------

With pathogen:
* `git submodule add https://github.com/pielgrzym/ctrlp-sessions.git bundle/ctrlp-sessions`
* add `sessions` to `g:ctrlp_extensions` - if you haven't got any other extensions just add `let g:ctrlp_extensions = ['sessions']` to your `.vimrc`
* map something to `:CtrlPSessions` and optionally to `:MkS`

Commands
--------

* `CtrlPSessions` - shows a list of files in your session directory; choosing a file and hitting enter will execute `:wall` and source chosen session replacing all currently open buffers
* `MkS` - if a session is already opened it will just overwrite it's file like `:mks! <path to session files>` would do, otherwise it will ask for session name and create a session file in `g:ctrlp_session_dir`

Settings
--------

`g:ctrlp_session_dir` - directory relative to user $HOME dir that will hold the session files. Default value is: `.vimsessions`, which points to `~/.vimsessions`.

Bugs/Limitations
----------------

* works only on Linux (hardcoded `ls` usage, sorry Windoze)
* expects all the files in the session directory to be session files not dirs
* no docs
