#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function install_vim_bundles
    set -l ROOT ~/.vim/bundle
    cd $ROOT
    sudo mv $ROOT/* /tmp
    sudo pip2 install jedi
    git clone --recursive https://github.com/davidhalter/jedi-vim.git
    git clone https://github.com/kien/ctrlp.vim.git
    git clone https://github.com/SirVer/ultisnips.git
    git clone https://github.com/Yggdroot/indentLine.git
    git clone https://github.com/scrooloose/nerdtree.git
    git clone https://github.com/scrooloose/syntastic.git
    git clone https://github.com/majutsushi/tagbar.git
    git clone https://github.com/bling/vim-airline.git
    git clone https://github.com/fatih/vim-go.git
    git clone https://github.com/honza/vim-snippets.git
    git clone https://github.com/tpope/vim-surround.git
    git clone --recursive https://github.com/Valloric/YouCompleteMe.git
    cd $ROOT/YouCompleteMe
    ./install.py --gocode-completer
    cd $ROOT
    git clone https://github.com/cwood/vim-django.git
    git clone https://github.com/mattn/emmet-vim.git
    git clone https://github.com/othree/html5.vim.git
    git clone https://github.com/dag/vim-fish.git
    git clone https://github.com/tell-k/vim-autopep8.git
    git clone https://github.com/jiangmiao/auto-pairs.git
    cd ~
end