"####基本設定####
set fenc=utf-8 "文字コードをUFT-8に設定
set nobackup "バックアップファイルを作らない
set noswapfile "スワップファイルを作らない
set autoread "編集中のファイルが変更されたら自動で読み直す
set hidden "バッファが編集中でもその他のファイルを開けるように
set showcmd "入力中のコマンドをステータスに表示する
set paste

"#####表示設定#####
set number "行番号を表示する
set cursorline "現在の行を強調表示
set cursorcolumn "現在の行を強調表示（縦）
set virtualedit=onemore "行末の1文字先までカーソルを移動できるように
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=2 "インデントをスペース2つ分に設定
set smartindent "オートインデント
set laststatus=2 "ステータスラインを常に表示
set wildmode=list:longest "コマンドラインの補完
set list "空白文字の可視化
"TAB,EOFなどを可視化する
set listchars=tab:>-,extends:<,trail:-,eol:<
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set incsearch "検索文字列入力時に順次対象文字列にヒットさせる
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch " 検索語をハイライト表示
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"####Tab設定####
set list listchars=tab:\▸\- "不可視文字を可視化(タブが「▸-」と表示される)
set expandtab "Tab文字を半角スペースにする
set tabstop=2 "行頭以外のTab文字の表示幅（スペースいくつ分）
set shiftwidth=2 "行頭でのTab文字の表示幅

"全角スペースをハイライト表示
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif
