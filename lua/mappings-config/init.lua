vim.cmd([[
    let mapleader = "\<Space>"
    inoremap jj <Esc>

    nnoremap <Leader>h :wincmd h<CR> 
    nnoremap <Leader>j :wincmd j<CR>
    nnoremap <Leader>l :wincmd l<CR>
    nnoremap <Leader>k :wincmd k<CR>
    nnoremap <Leader>s :vsplit<CR>
    nnoremap <Leader>q :q!<CR>
    nnoremap <Leader>w :w<CR>
    nnoremap <Leader>f :NvimTreeFocus<CR>
    nnoremap <Leader>F :NvimTreeToggle<CR>
    nnoremap <Leader>H :BufferLineMovePrev<CR>
    nnoremap <Leader>L :BufferLineMoveNext<CR>
    nnoremap <silent><S-L> :BufferLineCycleNext<CR>
    nnoremap <silent><S-H> :BufferLineCyclePrev<CR>
    nnoremap <silent><leader>bd :<C-U>bprevious <bar> bdelete #<CR>

    " " Copy to clipboard
    vnoremap  <leader>y  "+y
    nnoremap  <leader>Y  "+yg_
    nnoremap  <leader>y  "+y
    nnoremap  <leader>yy  "+yy

    " " Paste from clipboard
    nnoremap <leader>p "+p
    nnoremap <leader>P "+P
    vnoremap <leader>p "+p
    vnoremap <leader>P "+P
]])
