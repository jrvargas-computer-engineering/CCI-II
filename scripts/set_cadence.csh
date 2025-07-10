read library ../../gpdk045_workspace/gsclib045_all_v4.4/gsclib045/verilog/fast_vdd1v0_basicCells.v
read design  ../innovus_core_limited/USFFT64_2B.v -verilog -golden
read design ../innovus/cmn/mac.v.gz -verilog -revised
add ignored outputs scanout -golden   //Scanout do rtl esta em Z assim precisa ignorar
add ignored outputs scanout -revised 
add pin constraints 0 scan_en -revised  // "Ativar" o modofuncional dos DFTs
add pin constraints 0 scan_en -golden
set system mode lec  //mudança de modo
add compare point -all
compare
analyze abort -compare  //resolver os problemas de abort
report verification
