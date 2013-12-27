

load ALUInput.hdl,
output-file ALUInput.out,
compare-to ALUInput.cmp,
output-list in%B2.16.1 in%D1.5.2 zero%B2.1.2 not%B2.1.2 out%B2.16.1 out%D1.5.2;

set in 0,
set zero 0,
set not 0,
eval,
output;

set in %B0101011101011010,
set zero 0,
set not 0,
eval,
output;

set in %B0101011101011010,
set zero 1,
set not 0,
eval,
output;

set in 0,
set zero 1,
set not 0,
eval,
output;

set in 0,
set zero 0,
set not 1,
eval,
output;

set in 0,
set zero 1,
set not 1,
eval,
output;

set in -1,
set zero 1,
set not 1,
eval,
output;
