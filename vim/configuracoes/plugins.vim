" vim: set sw=2 ts=2 sts=2 et tw=100 foldmarker={,} foldlevel=0 foldmethod=marker:
" 
" Author: Rafael Serpa Nery<rafanery0@gmail.com>
" Version: $Id:$
"
" Instala��o dos pacotes {
"
  set runtimepath+=~/.vim/bundle/Vundle.vim
  set nocompatible 
  filetype off     
  call vundle#begin('~/.vim/RNPlugins')

  " Esquema de Cores {
    Plugin 'joedicastro/vim-github256'
    Plugin 'sjl/badwolf'
    Plugin 'nanotech/jellybeans.vim'
    Plugin 'chriskempson/vim-tomorrow-theme'
    Plugin 'Haron-Prime/Antares'
    Plugin 'jscappini/material.vim'
    Plugin 'ajh17/Spacegray.vim'
  " }
  "Supertab *,* - Faz de tudo(ou quase) com a tecla tab {
    Plugin 'ervandew/supertab'
  "}
  
  " 'Completa��es'  para o PHP {
    Plugin 'shawncplus/phpcomplete.vim'
  "}
  
  "Closetag - Fecha automagicamente as tags html {
    Plugin 'docunext/closetag.vim'
  "}
  "Delimitmate - Fecha automagiacamente chavesm,colchetes, apostrofos, aspas, parenteses {
    Plugin 'Raimondi/delimitMate'
  " }
  "Mustache Template System para o Vim {
    Plugin 'tobyS/vmustache'
  "}
  " Corre��o de SYNTAX do CSS - Syntasctic {
    Plugin 'vim-scripts/Better-CSS-Syntax-for-Vim'
  "}
  " Barra bunita- VimAIRLINE {
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
  "}
  "Pesquisa de arquivos like CtrlP(Sublime) Commant(TextMate) {
    Plugin 'ctrlpvim/ctrlp.vim'
  "}
  "Gerenciador de pacotes do vi {
    Plugin 'gmarik/Vundle.vim'
  "}
  "Verificador de Syntax {
    Plugin 'scrooloose/syntastic'
  "}
  "Mostra m�todos, vari�veis e constantes do c�digo {
    Plugin 'majutsushi/tagbar'
  "}
  "GIT - Fugitive {
    Plugin 'tpope/vim-fugitive'
  "}
  " Mostra graficamente a arvore de altera��o {
    Plugin 'sjl/gundo.vim'
  "}
" SQL Syntax para PGSql {
  Plugin 'exu/pgsql.vim'
"}
" HTML5 Syntax e indent {
  Plugin 'othree/html5.vim'
"}
" NerdTree =) {
  Plugin 'scrooloose/nerdtree' 
  Plugin 'Xuyuanp/nerdtree-git-plugin' "Plugin para o GIT
"}
" Vim Signify - Mostra altera��es VCS {
  Plugin 'mhinz/vim-signify'
"}
" Xdebug Syntax {
  Plugin 'dominics/vim-filetype-xdebug'
"}
" Log Syntax{
  Plugin 'dzeban/vim-log-syntax'
"}
" VIM CUCUMBER {
  Plugin 'tpope/vim-cucumber'
"}
" Javascript {
  Plugin 'pangloss/vim-javascript'
"}
" Javascript - jQuery, PrototypeJS, YUI{
  Plugin 'othree/javascript-libraries-syntax.vim'
"}




call vundle#end()            
  filetype plugin indent on    
"}
" Configura��es/Atalhos para Plugins {

  " PHPDoc {
  let g:pdv_template_dir = $BUNDLE."/pdv/templates_snip"
  autocmd FileType php inoremap    <F7> <ESC>:call pdv#DocumentWithSnip()<CR>
  autocmd FileType php nnoremap    <F7>      :call pdv#DocumentWithSnip()<CR>
  autocmd FileType php vnoremap    <F7>      :call pdv#DocumentWithSnip()<CR>
  "}
  "Airline {
  "let g:airline#extensions#tabline#enabled =1
  let g:airline_powerline_fonts            =1
  set laststatus                           =2       "Sempre mostra barra de Mensagens / Necess�rio para o airline
  "}
  " CtrlP {
    let g:ctrlp_max_files=100
    let g:ctrlp_max_depth=40
    set wildignore+=modification,tmp,manuais,cache
  "}
  "TagBar {
  nnoremap tb <ESC>:TagbarToggle<CR>
  vnoremap tb <ESC>:TagbarToggle<CR>

  let g:tagbar_autofocus   = 1
  let g:tagbar_autoshowtag = 1
  let g:tagbar_type_php    = {
    \ 'ctagstype' : 'php',
    \ 'kinds' : [
      \ 'i:interfaces',
      \ 'c:classes',
      \ 'd:constant definitions',
      \ 'f:functions',
      \ 'j:javascript functions:1'
    \ ]
  \ }

  "}
  "PHP getters e setters {
    nnoremap <C-g> <ESC> :call phpacc#GenerateAccessors()<CR>
    vnoremap <C-g> <ESC> :call phpacc#GenerateAccessors()<CR>
  "}
  " Syntastic | Synt�stico :) {
    nnoremap ts <ESC>:SyntasticToggleMode<CR>
    vnoremap ts <ESC>:SyntasticToggleMode<CR>
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list            = 1
    let g:syntastic_check_on_open            = 1
    let g:syntastic_check_on_wq              = 1
  "}
  " gUndo  {
    let g:gundo_preview_bottom = 1
    let g:gundo_right          = 1

    nnoremap tu <ESC>:GundoToggle<CR>
    vnoremap tu <ESC>:GundoToggle<CR>
  "}
  " NERDTree {
    nnoremap tn <ESC>:NERDTreeToggle<CR>
    vnoremap tn <ESC>:NERDTreeToggle<CR>
  " }
"}
