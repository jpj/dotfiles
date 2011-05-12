set autoindent
set wmh=0

" Easy-on-the-eyes colorscheme for black-background terminal
colorscheme elflord

set nu
"set cul

" Map Ctrl-j and Ctrl-k to move split screens up and down.
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" Map Ctrl-h,p and Ctrl-l,n to move tabs prev-next
map <C-H> :tabp<CR>
map <C-L> :tabn<CR>
map <C-P> :tabp<CR>
map <C-N> :tabn<CR>


" The next two functions do tab completion with ^n and ^p
function InsertTabWrapper()
 let col = col('.') - 1
 if !col || getline('.')[col - 1] !~ '\k'
   return "\<tab>"
 else
   return "\<c-n>"
 endif
endfunction

function InsertTabWrapperShift()
 let col = col('.') - 1
 if !col || getline('.')[col - 1] !~ '\k'
   return "\<s-tab>"
 else
   return "\<c-p>"
 endif
endfunction


" Custom file types.
autocmd BufRead *.code set filetype=perl
autocmd BufRead *.spm set filetype=html
autocmd BufRead *.pview set filetype=pview
"autocmd BufRead /usr/local/vhosts/ohnson.org/htdocs/app/view/*.html set filetype=pview
autocmd BufRead */view/*.html set filetype=pview

" Filetype plugin
filetype plugin on
filetype indent on
