onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rom_32x1024_opt

do {wave.do}

view wave
view structure
view signals

do {rom_32x1024.udo}

run -all

quit -force
