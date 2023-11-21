import cocotb
from cocotb.clock import Clock
from cocotb.queue import Queue
from cocotb.triggers import Edge, RisingEdge, Timer

@cocotb.test()
async def test(dut) -> None:

    clock = Clock(dut.clk, 2, "ns")
    cocotb.start_soon(clock.start())

    dut.reset.value = 1
    dut.enable.value = 0
    await Timer(4, units="ns")
    dut.reset.value = 0
    await Timer(10,units ="ns")
    dut.enable.value = 1
    await Timer(200,units ="ns")