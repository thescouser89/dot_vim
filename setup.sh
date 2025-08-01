echo "############################################"
echo "Warning:"
echo "This script will override your ~/.vim folder"
echo "and your ~/.vimrc file."
echo "############################################"
echo ""

read -p "Are you sure? [y|n]: "
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

rm -rf ~/.vim
rm ~/.vimrc
mv `pwd` ~/.vim
cd ~/.vim

# create the symlink for vimrc
ln -s `pwd`/vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Please run *vim* and type:"
echo ""
echo "  :BundleInstall"
echo ""
echo ""
echo "This will install all the vim plugins"
