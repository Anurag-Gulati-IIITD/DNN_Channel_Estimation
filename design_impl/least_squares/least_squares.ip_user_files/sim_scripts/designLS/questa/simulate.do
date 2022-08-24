onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib designLS_opt

do {wave.do}

view wave
view structure
view signals

do {designLS.udo}

run -all

quit -force
