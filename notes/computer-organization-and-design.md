# Patterson, David A., and John L. Hennessy. "Computer organization and design." Morgan Kaufmann (2007): 474-476.
# Big Pictures
## Five classic components of a computer
* input
* output
* memory
* datapath
* control

Datapath + control sometimes combined to processor.

## Abstraction, architecture, implementation
* layers hiding details from the layer above is *abstraction*
* *instruction set architecture* is the interface between hardware and
  low-level software
* architecture (abstract interface) enables many *implementations*

## CPU performance
`Time = Seconds/Program = Instructions/Program * Clock cycles/Instruction *
Seconds/Clock cycle`


# Equations
## CPU performance equation
Classic CPU performance equation: `CPU time = Instruction count * CPI * Clock
cycle time` or `CPU time = Instruction count * CPI / Clock rate`

* *CPI* - Clock cycles per instruction.
* *IPC* - Instruction per clcok cycle (`1/CPI`).

# Notes
Program performance depends on algorithm (instruction count, CPI), programming
language (instruction count, CPI), compiler (instruction count, CPI),
instruction set architecture (instruction count, clock rate, CPI).
