# fundamentals
Building a Modern Computer from the Fundamentals


01 - logic gates
==============
`ghdl` is used as the hardware simulator.

`gtkwave` is used to view the waveform output of simulations.

http://ghdl.readthedocs.io/en/latest/Starting_with_GHDL.html#the-hello-world-program

Basic Workflow:
---------------
`ghdl -a hello.vhdl` - "analyze" the component and add it to the "work" library in the current directory.

`ghdl -r hello --vcd=hello.vcd` - "simulate" (run) the component and write the output waveform to a file.

`gtkwave hello.vcd` - view the waveform output. Note: signals must be added before they show up in the display.
