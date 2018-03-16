onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dma_design_1_opt

do {wave.do}

view wave
view structure
view signals

do {dma_design_1.udo}

run -all

quit -force
