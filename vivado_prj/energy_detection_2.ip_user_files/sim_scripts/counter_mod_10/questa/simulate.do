onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib counter_mod_10_opt

do {wave.do}

view wave
view structure
view signals

do {counter_mod_10.udo}

run -all

quit -force
