set autoindent
set wmh=0

" Easy-on-the-eyes colorscheme for black-background terminal
colorscheme elflord

set nu
"set cul

" Map Ctrl-j and Ctrl-k to move split screens up and down.
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_

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


" Filetype plugin
filetype plugin on
filetype indent on
