
load IsZero16.hdl,
output-file IsZero16.out,
compare-to IsZero16.cmp,
output-list in%B2.16.2 out%B2.1.2;

set in 0,
eval,
output;

set in 1,
eval,
output;


set in %B0100101011101,
eval,
output;
