"To get syntax highlighting, install the arduino syntax rules from:
"http://www.vim.org/scripts/script.php?script_id=2654

"To set up Shift-K documentation lookup for Arduino functions
"Define arduino_doc_path in your vimrc, for example:
"let arduino_doc_path="/Users/YOURUSERNAME/Applications/Arduino.app/Contents/Resources/Java/reference"

" Only do this when not done yet for this buffer
if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1

" You may want to comment these
setlocal expandtab
setlocal shiftwidth=2
setlocal tabstop=2


setlocal cindent
setlocal cinkeys-=0#
setlocal formatoptions-=t formatoptions+=croql
setlocal suffixesadd=.ino

let b:undo_ftplugin = "set cin< cink< fo< sua< et< sw< ts<"


if has("python") && exists("arduino_doc_path")

function! ArduinoDoc()
python << ENDPY
import vim
import re
import webbrowser
from os import path

basepath = path.abspath(vim.eval("g:arduino_doc_path"))
(row, col) = vim.current.window.cursor
line = vim.current.line

word = vim.eval('expand("<cword>")')
word = word[0].capitalize() + word[1:] #Uppercase first character

def launchDoc(filename):
    docfile = path.join(basepath, filename)
    if path.exists(docfile) and path.isfile(docfile):
        webbrowser.open(docfile)
        return True
    return False

if word:
    success = launchDoc(word + ".html")
    if not success:
        print "Identifier", '"' + word + '"', "not found in the documentation."

ENDPY
endfunction

nnoremap <silent> <buffer> K :call ArduinoDoc()<CR>

endif
