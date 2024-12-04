#!/bin/sh
cp system-genesys2.v system-genesys2.v_tmp 
TMP_PUF='LINE ONE
LINE TWO'
sed -i'bk'  '
/module TLPUF/,/endmodule/ c\
****DELELTED LINES*****\nLINE 1
' system-genesys2.v_tmp

