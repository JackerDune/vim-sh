
#yum install ctags cscopes -y
rm ~/.vim/ -rf
mkdir -p ~/.vim 
tar -zxvf vim-new.tar.gz
mv .vim/ ~/
cp prj.sh ~/
chmod +x ~/prj.sh
cp p4.vim ~/.vim/syntax/
cp vimrc ~/.vimrc

#for golang ctags
cat <<EOF  > ~/.ctags 
--langdef=Go
--langmap=Go:.go
--regex-Go=/func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/\2/f,func/
--regex-Go=/var[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/v,var/
--regex-Go=/type[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/t,type/
EOF

cp go.vim ~/.vim/syntax/
