rm -f cscope.files                                                                                                                                                                                          
rm -f cscope.out
find `pwd` -regex '.*\.h\|.*\.c\|.*\.cpp\|.*\.hh\|.*\.S\|.*\.s\|.*\.html\|.*\.css\|.*\.php\|.*\.java\|.*\.py\|.*\.js\|.*Makefile\|.*\.mk\|.*CMakeLists\.txt\|.*\.go\|.*\.cc\|.*\.p4\|.*\.cmake' > cscope.files
cscope -bkRi cscope.files
ctags -R
