# create the symlink for vimrc
ln -s `pwd`/vimrc ~/.vimrc

mkdir -p bundle/vundle
git clone https://github.com/gmarik/vundle.git bundle/vundle

echo "Please run *vim* and type:"
echo ""
echo "  :BundleInstall"
echo ""
echo ""
echo "This will install all the vim plugins"
