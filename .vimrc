 set nocompatible
" filetype off
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'ycm-core/YouCompleteMe'
" Plugin 'preservim/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'Yggdroot/LeaderF'
" Plugin 'fholgado/minibufexpl.vim'
" Plugin 'tpope/vim-commentary'
" Plugin 'vim-scripts/a.vim'
" Plugin 'mbbill/undotree'
" Plugin 'mileszs/ack.vim'
" Plugin 'rdnetto/YCM-Generator'
" Plugin 'vim-scripts/taglist.vim'
" Plugin 'vim-scripts/winmanager'
" Plugin 'vim-scripts/gtags.vim'
" Plugin 'jlanzarotta/bufexplorer'
" Plugin 'vim-scripts/mru.vim'
" call vundle#end()
" filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'Yggdroot/LeaderF'
Plug 'fholgado/minibufexpl.vim'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/a.vim'
Plug 'mbbill/undotree'
Plug 'mileszs/ack.vim'
" Plug 'rdnetto/YCM-Generator'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/winmanager'
Plug 'vim-scripts/gtags.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-scripts/mru.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" set bs can delete text before insert
set backspace=indent,eol,start
set nu
set nobackup
set nowrap
set autoindent
set cindent
set cino+=:0
set tabstop=4
set shiftwidth=4
set hlsearch
set showcmd
set wildmenu
set wildmode=longest:full
set mouse=a
syntax on
nnoremap <leader>q :qa<cr>
nnoremap ,ex :!./%<cr>
nnoremap <leader>idt mx:silent r !date +\%Y-\%m-\%d<CR>y$`xpjdd`x

colorscheme desert
set cursorline
hi cursorline cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

set incsearch 	" search as you type
set hlsearch 	" high light the search
nnoremap <bs> ,
nnoremap ,c	:noh<cr>
nnoremap ,w :w<cr>
nnoremap ,y "+y
nnoremap ,p "+p
nnoremap ,it i<tab><esc>

" make
nnoremap ,md :make debug<cr>
nnoremap ,mb :make bin<cr>
nnoremap ,mt :make test<cr>
nnoremap ,mc :make cleanall<cr>
nnoremap ,ml :make libs<cr>

" gtags
nnoremap <c-\> :GtagsCursor<cr>
map <leader>gtf :Gtags -g
map <leader>gtw :Gtags -g \<<c-r>=expand("<cword>")<cr>\><cr>
map <leader>gtu :!global -u<cr><cr>
map <leader>gtv y:Gtags -g <c-r>0<cr>
 
" short message and commandline to avoid hit enter
set shm=at
set ch=2

" insert mode movement
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-b> <home>
inoremap <c-e> <end>

" File encoding
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936

" " ycm
" let g:ycm_clangd_binary_path="/opt/clangllvm-10.0.0/bin"
" let g:ycm_global_ycm_extra_conf = '/home/zokoo/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" let g:ycm_key_list_select_completion=['<c-n>', '<down>']
" let g:ycm_key_list_previous_completion=['<c-n>', '<up>']
" let g:ycm_error_symbol = 'E>'
" let g:ycm_warning_symbol = 'W>'
" let g:ycm_key_detailed_diagnostics = '<leader>ycmdi'
" nnoremap <leader>ycmgc :YcmGenerateConfig<cr>
" nnoremap <leader>ycmrs :YcmRestartServer<cr>
" nnoremap gd :YcmCompleter GoTo<cr>
" nnoremap gr :YcmCompleter GoToReferences<cr>
" nnoremap g<s-r> :YcmCompleter RefactorRename 
" nnoremap gyi :YcmCompleter GoToInclude<cr>
" nnoremap gy<s-d> :YcmCompleter GoToDeclaration<cr>
" nnoremap gyd :YcmCompleter GoToDefinition<cr>
" nnoremap gy<s-i> :YcmCompleter GoToImprecise<cr>
" nnoremap gyt :YcmCompleter GetType<cr>
" nnoremap gy<s-t> :YcmCompleter GetTypeImprecise<cr>
" nnoremap gyp :YcmCompleter GetParent<cr>
" nnoremap gyo :YcmCompleter GetDoc<cr>
" nnoremap gy<s-o> :YcmCompleter GetDocImprecise<cr>
" nnoremap gyf :YcmCompleter FixIt<cr>

" LeaderF
nnoremap <cr> :LeaderfFile<cr>
 
" MBE
let g:miniBufExplBuffersNeeded = 1
nnoremap <leader>tmb :MBEToggle<cr>
nnoremap gbk :MBEbb<cr>
nnoremap gbj :MBEbf<cr>
 
" quickfix
nnoremap <c-n> :cn<cr>
nnoremap <c-p> :cp<cr>

" c/c++
nnoremap <leader>idh <esc>i#ifndef __<c-r>=expand("%:t")<cr>__<esc>bbr_bgUwo#define __<c-r>=expand("%:t")<cr>__<esc>bbr_bgUwo#endif<esc>O<cr>#ifdef __cplusplus<cr>extern "C" {<cr>#endif<cr>#ifdef __cplusplus<cr>}<cr>#endif<cr><esc>kkkO

" avoid screen conflict
nnoremap <leader>di <c-a>
nnoremap <leader>dd <c-x>
nnoremap <leader>6 <c-^>

" Binary xxd
nnoremap <leader>xxdt :%!xxd -p -c16<cr>
nnoremap <leader>xxdr :%!xxd -r -p<cr>

" NERDTree
nnoremap <leader>tnt :NERDTreeToggle<cr>

" Alternative
nnoremap <leader>aa :A<cr>
nnoremap <leader>an :AN<cr>

" Undotree
nnoremap <leader>ud :UndotreeToggle<cr>
if has("persistent_undo")
	set undodir=$HOME/.undodir
 	set undofile
endif
 
" ACK
if executable('ag')
 	let g:ackprg = 'ag --vimgrep'
endif
nnoremap <leader>fa :Ack 
 
" grep
nnoremap <leader>fg :grep 
nnoremap <leader>fgw :grep "\<<c-r>=expand("<cword>")<cr>\>"  
 
" WinManager
nnoremap <f2> :WMToggle<cr>
nnoremap <leader>twm :WMToggle<cr> 
nnoremap <c-w><c-f> :FirstExplorerWindow<cr> 
nnoremap <c-w><c-b> :BottomExplorerWindow<cr> 
let g:winManagerWindowLayout = 'NERDTree|TagList,BufExplorer'
let g:winManagerWidth = 31
 
" Taglist
let Tlist_Show_One_File=1     " 不同时显示多个文件的tag，只显示当前文件的   
let Tlist_Exit_OnlyWindow=1   " 如果taglist窗口是最后一个窗口，则退出vim 
 
" commentary
autocmd filetype c,cpp,h set commentstring=//\ %s
 
" mark
nnoremap \mt :Mark<cr>

" coc-airline
let g:airline#extensions#coc#enabled = 0
let airline#extensions#coc#error_symbol = 'Error'
let airline#extensions#coc#warning_symbol = 'Warning'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

" Coc
set hidden " TextEdit might fail if hidden is not set.
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Asyncrun, Asynctask
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg' ]
let g:asyncrun_open = 6
nnoremap ,att	:AsyncTask run-test<cr>

" Snippet
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

