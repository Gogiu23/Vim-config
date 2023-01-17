"=========================KEYMAPS============================================

 "OPEN VIMRC IN A FLY AND SOURCE IT
 "*********************************
 nnoremap <leader>ev :vsplit $MYVIMRC<cr>
 nnoremap <leader>e :source $MYVIMRC<cr>

 "MOVING FASTER BETWEEN TABS AND BUFFS
 "***********************************
 nnoremap ] :call TheNext()<CR>
 nnoremap [ :call ThePrev()<CR>

 "SAVING TEXT
 "************
 nnoremap <C-s> :w<CR>
 nnoremap <C-z> :wqa<CR>
 inoremap jk <esc>
 inoremap <esc> <nop>
 nnoremap L <end>
 nnoremap H <home>
 noremap <Down> <nop>
 noremap <Up> <nop>
 noremap <Left> <nop>
 noremap <Right> <nop>

 "NERD COMMENTER MYSELF
 "*********************
 "commenter
 nnoremap cc :normal Hi//jkj<CR>

 "uncommenter
 nnoremap ,c :normal Hxxj<CR>

 "MOVING TEXT *
 "*************
 vnoremap <S-j> :m '>+1<CR>gv=gv
 vnoremap <S-k> :m '<-2<CR>gv=gv


 "RESIZE WINDOWS*
 "***************
 nnoremap <C-k>    :resize +2<CR>
 nnoremap <C-j>  :resize -2<CR>
 nnoremap <C-l>  :vertical resize -2<CR>
 nnoremap <C-h> :vertical resize +2<CR>
 nnoremap <C-q> :bd<CR>

 "REMAPS FOR PLUGINS
 "NerdTree
 nnoremap <Space> :NERDTreeToggle<CR>

 "Fzf
 nnoremap <C-f> :Files<CR>

nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <leader>t :FloatermToggle<CR>
tnoremap   <leader>t <C-\><C-n>:FloatermToggle<CR>

function! TheNext()
	if exists ( '*tabpagenr' ) && tabpagenr('$') != 1
		normal gt
	else
		execute ":bnext"
	endif
endfunction

function! ThePrev()
	if exists ( '*tabpagenr' ) && tabpagenr('$') != 1
		normal gT
	else
		execute ":bprev"
	endif
endfunction

nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt

"TAGS COMMANDS
"*************
"open tags in a new tab
nnoremap <leader>] <C-w><C-]><C-w>T
"open tags in a preview window
nnoremap <leader>p] <C-w>}

"EASY COMPLETE USAGE
"*******************
"EasyCompleteGotoDefinition
nnoremap gd :EasyCompleteGotoDefinition<CR>

"EasyCompleteGotoReference
nnoremap gr :EasyCompleteReference<CR>
