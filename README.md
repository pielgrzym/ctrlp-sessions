CtrlPSessions - manage your sessions
====================================

What is it?
-----------

This simple extension for CtrlP enables the following:
* global dir to store vim session files
* CtrlPSessions command to source a session from abovementioned dir
* MkS command to save or create a new session to abovementioned dir

Settings
--------

`g:ctrlp_session_dir` - directory relative to user $HOME dir that will hold the session files. Default `.vimsessions`.

Bugs/Limitations
----------------

* works only on Linux (hardcoded `ls` usage, sorry Windoze)
* expects all the files in the session directory to be session files not dirs
* no docs
