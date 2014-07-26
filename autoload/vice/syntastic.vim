" Overwrite syntastic check function defined in vice-syntastic.
func! vice#syntastic#check()
    SyntasticCheck
    call lightline#update()
endf
