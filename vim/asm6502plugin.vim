"Eliot's custom plugin for editing 6502 assembly

set syntax=asmM6502 "use 6502 syntax rules from http://www.vim.org/scripts/script.php?script_id=1314

"Setup Shift-K documentation lookup for 6502 opcodes
"Define asm6502_doc_path in your vimrc, for example:
"let asm6502_doc_path="http://www.6502.org/tutorials/6502opcodes.html#" "6502 documentatuion

function! Asm6502Doc()
python << ENDPY
import vim
import re
import webbrowser
from os import path

basepath = vim.eval("g:asm6502_doc_path") 
(row, col) = vim.current.window.cursor
line = vim.current.line
word = vim.eval('expand("<cword>")')

def launchDoc(filename):
    docfile = basepath + filename
    #Was wrapped in an additional if for loading of local doc file:
    #if path.exists(docfile) and path.isfile(docfile):
    webbrowser.open(docfile)
    return True
    #return False

if word:
    success = launchDoc(word)
    if not success:
        print "Identifier", '"' + word + '"', "not found in the documentation."

ENDPY
endfunction

nnoremap <silent> <buffer> K :call Asm6502Doc()<CR>
