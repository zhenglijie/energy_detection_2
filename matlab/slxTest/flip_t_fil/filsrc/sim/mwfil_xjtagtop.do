set SRCDIR F:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/matlab/slxTest/flip_t_fil/filsrc
set SIMDIR F:/Users/Lenovo/Desktop/fpga_zynq/energy_detection_2/matlab/slxTest/flip_t_fil/filsrc/sim
set COMPILE vcom

set SIM vsim

vlib $SIMDIR/work
vmap work $SIMDIR/work

$COMPILE $SRCDIR/jtag_mac.v
$COMPILE $SRCDIR/jtag_mac_fifo_wrapper.vhd
$COMPILE $SRCDIR/simcycle_fifo_wrapper.vhd
$COMPILE $SRCDIR/mwfil_dpscram.vhd
$COMPILE $SRCDIR/mwfil_udfifo.vhd
$COMPILE $SRCDIR/mwfil_bus2dut.vhd
$COMPILE $SRCDIR/mwfil_chifcore.vhd
$COMPILE $SRCDIR/mwfil_controller.vhd
$COMPILE $SRCDIR/mwfil_dut2bus.vhd
$COMPILE $SRCDIR/flip_t_wrapper.v
$COMPILE $SRCDIR/mwfil_chiftop.vhd
$COMPILE $SRCDIR/flip_t_fil.vhd
