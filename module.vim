call vice#Register('github:itchyny/lightline.vim')

let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ 'active': {
        \ 'left': [
            \ ['mode', 'paste'],
            \ ['filename'],
            \ ['fugitive', 'ctrlpmark'],
        \ ],
        \ 'right': [
            \ ['syntastic', 'lineinfo'],
            \ ['percent'],
            \ ['fileformat', 'fileencoding', 'filetype']
        \ ]
    \ },
    \ 'inactive': {
        \ 'left': [
            \ ['mode'],
            \ ['filename'],
        \ ],
        \ 'right': [
            \ ['lineinfo'],
            \ ['percent'],
        \ ],
    \ },
    \ 'component_function': {
        \ 'ctrlpmark':    'vice#lightline#ctrlp_mark',
        \ 'fileencoding': 'vice#lightline#fileencoding',
        \ 'fileformat':   'vice#lightline#fileformat',
        \ 'filename':     'vice#lightline#filename',
        \ 'filetype':     'vice#lightline#filetype',
        \ 'fugitive':     'vice#lightline#fugitive',
        \ 'mode':         'vice#lightline#mode',
    \ },
    \ 'component_expand': {
        \ 'syntastic': 'SyntasticStatuslineFlag',
    \ },
    \ 'component_type': {
        \ 'syntastic': 'error',
    \ },
    \ 'subseparator': {
        \ 'left': '⋅',
        \ 'right': '⋅',
    \ }
\ }

let g:unite_force_overwrite_statusline    = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0


let g:ctrlp_status_func = {
    \ 'main': 'vice#lightline#ctrlp_status_main',
    \ 'prog': 'vice#lightline#ctrlp_status_prog',
\ }

let g:tagbar_status_func = 'vice#lightline#tagbar_status'

