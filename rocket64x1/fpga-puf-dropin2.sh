#!/bin/sh
cp system-genesys2.v system-genesys2.v_tmp 
TMP_PUF='LINE ONE
LINE TWO'
sed -i'bk'  '
/module TLPUF/ r ../../puf/fpga_puf_tl_wrapper.v
/module TLPUF/,/endmodule/ d
' system-genesys2.v_tmp
