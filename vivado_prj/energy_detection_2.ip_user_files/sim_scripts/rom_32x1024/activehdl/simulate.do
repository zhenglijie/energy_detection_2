onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+rom_32x1024 -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.rom_32x1024 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {rom_32x1024.udo}

run -all

endsim

quit -force
