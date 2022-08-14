vim.cmd [[
	augroup exe_code
		autocmd!
		
		autocmd FileType python nnoremap <buffer> <leader>r
			\ :sp<CR> :term python3 %<CR> :startinsert<CR>

		autocmd FileType java nnoremap <buffer> <leader>r
			\ :sp<CR> :term java % %<CR> :startinsert<CR>

		autocmd FileType cpp nnoremap <buffer> <leader>r
			\ :sp<CR> :term clang++ % -std=c++17 && ./a.out && rm a.out <CR> :startinsert<CR>
		autocmd FileType js nnoremap <buffer> <leader>r
			\ :sp<CR> :term node % %<CR> :startinsert<CR>

		autocmd FileType go nnoremap <buffer> <leader>r
			\ :sp<CR> :term go run % -- %<CR> :startinsert<CR>

]]
