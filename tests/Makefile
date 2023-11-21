
TOPLEVEL_LANG = vhdl

PWD=$(shell pwd)

SOURCEDIR := $(PWD)/../hdl/

VHDL_SOURCES := $(shell find $(SOURCEDIR) -name '*.vhd')

TOPLEVEL := cont_dig #name of entity top
MODULE   := test
SIM := GHDL

$(shell mkdir -p ./waveforms)
SIM_ARGS+=--vcd=./waveforms/cont_dig.vcd #name of the file gtkwave

include $(shell cocotb-config --makefiles)/Makefile.sim

