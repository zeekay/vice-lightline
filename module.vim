call vice#Register('github:itchyny/lightline.vim')

let g:lightline = {
    \ 'colorscheme': 'Tomorrow_Night',
    \ 'active': {
        \ 'left': [
            \ ['mode', 'paste'],
            \ ['filename'],
            \ ['fugitive', 'ctrlpmark', 'syntastic', 'neomake'],
        \ ],
        \ 'right': [
            \ ['lineinfo'],
            \ ['percent'],
            \ ['fileformat', 'fileencoding', 'filetype'],
            \ ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok'],
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
        \ 'neomake':   'vice#lightline#neomake',
        \ 'linter_checking': 'lightline#ale#checking',
        \ 'linter_warnings': 'lightline#ale#warnings',
        \ 'linter_errors': 'lightline#ale#errors',
        \ 'linter_ok': 'lightline#ale#ok',
    \ },
    \ 'component_type': {
        \ 'syntastic': 'error',
        \ 'neomake':   'error',
        \ 'linter_checking': 'left',
        \ 'linter_warnings': 'warning',
        \ 'linter_errors': 'error',
        \ 'linter_ok': 'left',
    \ },
    \ 'subseparator': {
        \ 'left': '⋅',
        \ 'right': '⋅',
    \ }
\ }

let g:unite_force_overwrite_statusline    = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

let g:lightline#ale#indicator_checking = ""
let g:lightline#ale#indicator_warnings = "w:"
let g:lightline#ale#indicator_errors   = "e:"
let g:lightline#ale#indicator_ok       = ""

let g:ctrlp_status_func = {
    \ 'main': 'vice#lightline#ctrlp_status_main',
    \ 'prog': 'vice#lightline#ctrlp_status_prog',
\ }

let g:tagbar_status_func = 'vice#lightline#tagbar_status'

" Add hook to update statusline on syntastic checks.
if exists('g:vice.make.hooks')
    call add(g:vice.make.hooks, 'lightline#update')
endif

" Override statusline changes made by vim-startify
" autocmd User Startified call lightline#update()

" Fix junk in Hyper
set t_RV=
