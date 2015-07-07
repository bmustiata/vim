"
" Java mappings.
"
au BufRead,BufNewFile pom.xml set filetype=pom_xml.xml
au BufRead,BufNewFile rebel.xml set filetype=rebel_xml.xml

"
" XSL mappings.
"
au BufRead,BufNewFile *.xsl set filetype=xml.xslt
au BufRead,BufNewFile *.xslt set filetype=xml.xslt

au BufRead,BufNewFile compare*.xml set filetype=compare_xml.xml

"
" JavaScript file mappings.
"
function! JsDefaults()
    au BufRead,BufNewFile Gruntfile.js set filetype=Gruntfile.javascript
    au BufRead,BufNewFile gulpfile.js set filetype=gulpfile.javascript
    au BufRead,BufNewFile *.json set filetype=json.javascript
    au BufRead,BufNewFile package.json set filetype=package_json.json.javascript
    au BufRead,BufNewFile *test.js set filetype=mocha_test.javascript
    au BufRead,BufNewFile *Test.js set filetype=mocha_test.javascript
    au BufRead,BufNewFile tsconfig.json set filetype=tsconfig.json.javascript
endfunction
call JsDefaults()

function! JsSuperb()
    au BufRead,BufNewFile *.js set filetype=superb_js.javascript
    call JsDefaults()
    set filetype=superb_js.javascript
endfunction
command JsSuperb call JsSuperb()

function! JsVanilla()
    au BufRead,BufNewFile *.js set filetype=javascript
    call JsDefaults()
    set filetype=javascript
endfunction
command JsVanilla call JsVanilla()

"
" Text file mappings.
"
au BufRead,BufNewFile LICENSE set filetype=license_txt

"
" Associate Infinica files with XML
au BufRead,BufNewFile *.ipd set filetype=ipd_xml.xml
au BufRead,BufNewFile *.itx set filetype=itx_xml.xml
au BufRead,BufNewFile *.idx set filetype=idx_xml.xml

au BufRead,BufNewFile compareProcessesConfig.xml set filetype=compareProcessesConfig.xml

au BufRead,BufNewFile .metadata.xml set filetype=InfinicaWorkplaceLaunchConfigurationFolder.xml

function! LaunchConfiguration()
    set filetype=InfinicaWorkplaceLaunchConfiguration.xml
endfunction
command LaunchConfiguration call LaunchConfiguration()

