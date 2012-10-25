CtrlPSessions - manage your sessions
====================================

What is it?
-----------

This simple extension for CtrlP enables the following:
* global dir to store vim session files
* CtrlPSessions command to source a session from abovementioned dir
* MkS command to save or create a new session to abovementioned dir

Bugs/Limitations
----------------

* works in Linux only (due to `system('ls')` usage)
* expects all the files in the session directory to be session files not dirs
* no docs
* fixed sessions directory: `$HOME/.vimsessions`
