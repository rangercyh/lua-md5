# lua-md5
copy from https://github.com/keplerproject/md5


## win

gcc -fPIC -shared -Isrc -L./ -llua53 -o md5.dll md5lib.c md5.c compat-5.2.c
