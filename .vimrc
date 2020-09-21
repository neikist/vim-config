execute pathogen#infect()
colorscheme dracula

" WSL part
map <silent> p :r !powershell.exe -Command Get-Clipboard<CR>

let s:clip = '/mnt/c/Windows/System32/clip.exe' 
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end
" windows part end

:set clipboard=unnamedplus
:set autoindent
:set relativenumber

:set foldmethod=syntax
:set tabstop=2
:set shiftwidth=2
:set expandtab

