# vimrc-with-plugins
cp .vimrc ~/
cp .ycm_extra_conf.py ~/.vim/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#launch vim and :PluginInstall
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
