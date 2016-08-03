
"
" This function parses the current buffer into an xml,
" and then displays it as a pretty print xml.
"
function! PrettyXml()
python << endpython

import xml.dom.minidom
import vim

buffer = vim.current.buffer

content = "\n".join(buffer.range(1, len(buffer)))

xml = xml.dom.minidom.parseString(content.strip())
pretty_xml = xml.toprettyxml()

buffer[:] = pretty_xml.splitlines()

endpython
set filetype=xml
endfunction

"
" This function parses the current buffer as a JSON
" and displays is using a pretty print.
"
function! PrettyJson()
python << endpython

from json.tool import json as js
import vim

buffer = vim.current.buffer

content = "\n".join(buffer.range(1, len(buffer)))
data = js.dumps(js.loads(content.strip()), indent=2)

buffer[:] = data.splitlines()

endpython
set filetype=json.javascript
endfunction

"
" This function sends the current buffer into html-beautify.
" Install: npm install -g js-beautify
"
function! PrettyHtml()
%!html-beautify
set filetype=html
endfunction

"
" This function sends the current buffer into html-beautify.
" Install: npm install -g js-beautify
"
function! PrettyJs()
%!js-beautify
set filetype=javascript
endfunction

"
" This function sends the current buffer into html-beautify.
" Install: npm install -g js-beautify
"
function! PrettyCss()
%!css-beautify
set filetype=css
endfunction

" Command for pretty format XMLs and JSON
command PrettyXml call PrettyXml()
command PrettyJson call PrettyJson()
command PrettyHtml call PrettyHtml()
command PrettyCss call PrettyCss()
command PrettyJs call PrettyJs()

