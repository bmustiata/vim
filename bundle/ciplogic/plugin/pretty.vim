
"
" This function parses the current buffer into an xml,
" and then displays it as a pretty print xml.
"
function! PrettyXml()
python << endpython

import xml.dom.minidom
import vim

buffer = vim.current.buffer

content = "\n".join(buffer.range(0, len(buffer) - 1))

xml = xml.dom.minidom.parseString(content)
pretty_xml = xml.toprettyxml()

buffer[:] = pretty_xml.splitlines()

endpython
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

content = "\n".join(buffer.range(0, len(buffer) - 1))
data = js.dumps(js.loads(content), indent=4)

buffer[:] = data.splitlines()

endpython
endfunction

" Command for pretty format XMLs and JSON
command PrettyXml call PrettyXml()
command PrettyJson call PrettyJson()
