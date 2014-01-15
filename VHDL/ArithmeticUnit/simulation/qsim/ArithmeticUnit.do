onerror {quit -f}
vlib work
vlog -work work ArithmeticUnit.vo
vlog -work work ArithmeticUnit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DoubleDigitBCDAdderSubtractort_vlg_vec_tst
vcd file -direction ArithmeticUnit.msim.vcd
vcd add -internal DoubleDigitBCDAdderSubtractort_vlg_vec_tst/*
vcd add -internal DoubleDigitBCDAdderSubtractort_vlg_vec_tst/i1/*
add wave /*
run -all
