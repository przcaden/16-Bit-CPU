onerror {exit -code 1}
vlib work
vcom -work work CPU.vho
vcom -work work Waveform11.vwf.vht
vsim -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.RegFile_vhd_vec_tst
vcd file -direction CPU.msim.vcd
vcd add -internal RegFile_vhd_vec_tst/*
vcd add -internal RegFile_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f



















