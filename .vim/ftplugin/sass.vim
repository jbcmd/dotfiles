" Vim filetype plugin
" Language:	Sass
" Maintainer:	Tim Pope <vimNOSPAM@tpope.org>
" Last Change:	2010 Jul 26

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl cms< def< inc< inex< ofu< sua<"

setlocal commentstring=//\ %s
setlocal define=^\\s*\\%(@mixin\\\|=\\)
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\\|^\\)\\zs','_','')
setlocal omnifunc=csscomplete#CompleteCSS
setlocal suffixesadd=.sass,.scss,.css
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal softtabstop=2


let &l:include = '^\s*@import\s\+\%(url(\)\=["'']\='

" vim:set sw=2:
