# Patterson, David A., and John L. Hennessy. "Computer organization and design." Morgan Kaufmann (2007): 474-476.

Big Pictures
============
Five classic components of a computer
-------------------------------------
* input
* output
* memory
* datapath
* control

Datapath + control sometimes combined to processor.

Abstraction, architecture, implementation
-----------------------------------------
* layers hiding details from the layer above is *abstraction*
* *instruction set architecture* is the interface between hardware and
  low-level software
* architecture (abstract interface) enables many *implementations*

CPU performance
---------------
`Time = Seconds/Program = Instructions/Program * Clock cycles/Instruction *
Seconds/Clock cycle`

Two key principles
------------------
* Instructions represented as numbers.
* Programs stored in memory (to be read/written), like numbers.

Equations
=========
CPU performance equation
------------------------
Classic CPU performance equation: `CPU time = Instruction count * CPI * Clock
cycle time` or `CPU time = Instruction count * CPI / Clock rate`

* *CPI* - Clock cycles per instruction.
* *IPC* - Instruction per clcok cycle (`1/CPI`).

Notes
=====
Program performance depends on algorithm (instruction count, CPI), programming
language (instruction count, CPI), compiler (instruction count, CPI),
instruction set architecture (instruction count, clock rate, CPI).

Hardware design principles
==========================
1. Simplicity favors regularity.
2. Smaller is faster.
3. Make the common case fast.
4. Good design demands good compromises.

Instruction types
=================
* R-type (register)
    * ( op (6b), rs (5b), rt (5b), rd (5b), shamt (5b), funct (6b) )
* I-type (immediate)
    * ( op (6b), rs (5b), rt (5b), constant or address (16b) )
* J-type (jump)
    * ( op (6b), address (26b) )
    * ( op (6b), rs (5b), rt (5b), address (16b) )

Translate program
=================
Compiler: C -> assembly
Assembler: assembly -> object
Linker: object -> executable
Loader: Executable -> memory

TOC
===
Contents
Chapter 1 Computer Abstractions and Technology
1.1 Introduction 3
1.2 Below Your Program 10
1.3 Under the Covers 13
1.4 Performance 26
1.5 The Power Wall 39
1.6 The Sea Change: The Switch from Uniprocessors to Multiprocessors 41
1.7 Real Stuff: Manufacturing and Benchmarking the AMD Barcelona 44
1.8 Fallacies and Pitfalls 51
1.9 Concluding Remarks 54
1.10 Historical Perspective and Further Reading 55
1.11 Exercises 56
Chapter 2 Instructions: Language of the Computer
2.1 Introduction 60
2.2 Operations of the Computer Hardware 61
2.3 Operands of the Computer Hardware 64
2.4 Signed and Unsigned Numbers 71
2.5 Representing Instructions in the Computer 78
2.6 Logical Operations 86
2.7 Instructions for Making Decisions 88
2.8 Supporting Procedures in Computer Hardware 95
2.9 Communicating with People 105
2.10 MIPS Addressing for 32-Bit Immediates and Addresses 111
2.11 Parallelism and Instructions: Synchronization 120
2.12 Translating and Starting a Program 122
2.13 A C Sort Example to Put It All Together 132
2.14 Arrays versus Pointers 140
2.15 Advanced Material: Compiling C and Interpreting Java 144
2.16 Real Stuff: ARM Instructions 144
2.17 Real Stuff: x86 Instructions 148
2.18 Fallacies and Pitfalls 157
2.19 Concluding Remarks 159
2.20 Historical Perspective and Further Reading 162
2.21 Exercises 162
Chapter 3 Arithmetic for Computers
3.1 Introduction 164
3.2 Addition and Subtraction 164
3.3 Multiplication 170
3.4 Division 176
3.5 Floating Point 182
3.6 Parallelism and Computer Arithmetic 210
3.7 Real Stuff: Floating Point in the x86 212
3.8 Fallacies and Pitfalls 215
3.9 Concluding Remarks 220
3.10 Historical Perspective and Further Reading 223
3.11 Exercises 223
Chapter 4 The Processor
4.1 Introduction 228
4.2 Logic Design Conventions 231
4.3 Building a Datapath 235
4.4 A Simple Implementation Scheme 244
4.5 An Overview of Pipelining 258
4.6 Pipelined Datapath and Control 272
4.7 Data Hazards: Forwarding vs. Stalling 291
4.8 Control Hazards 303
4.9 Exceptions 312
4.10 Parallelism and Advanced Instruction Level Parallelism 319
4.11 Real Stuff: The AMD Barcelona Pipeline 332
4.12 Advanced Topic: An Introduction to Digital Design Using a Hardware Design
Language to Describe and Model a Pipeline and More Pipelining
Illustrations 334
4.13 Fallacies and Pitfalls 335
4.14 Concluding Remarks 336
4.15 Historical Perspective and Further Reading 337
4.16 Exercises 337
Chapter 5 Large and Fast: Exploiting Memory Hierarchy
5.1 Introduction 340
5.2 The Basics of Caches 345
5.3 Measuring and Improving Cache Performance 363
5.4 Virtual Memory 380
5.5 A Common Framework for Memory Hierarchies 406
5.6 Virtual Machines 413
5.7 Using a Finite State Machine to Control A Simple Cache 417
5.8 Parallelism and Memory Hierarchies: Cache Coherence 422
5.9 Advanced Material: Implementing Cache Controllers 426
5.10 Real Stuff: The AMD Opteron x4 (Barcelona) and Intel Nehalem Memory
Hierarchies 427
5.11 Fallacies and Pitfalls 431
5.12 Concluding Remarks 435
5.13 Historical Perspective and Further Reading 436
5.14 Exercises 436
Chapter 6 Storage and Other I/O Topics
6.1 Introduction 438
6.2 Dependability, Reliability, and Availability 441
6.3 Disk Storage 443
6.4 Flash Storage 448
6.5 Connecting Processors, Memory, and I/O Devices 450
6.6 Interfacing I/O Devices to the Processor, Memory, and Operating
System 454
6.7 I/O Performance Measures: Examples from Disk and File Systems 464
6.8 Designing an I/O System 466
6.9 Parallelism and I/O: Redundant Arrays of Inexpensive Disks 467
6.10 Real Stuff: Sun Fire x4150 Server 474
6.11 Advanced Topics: Networks 480
6.12 Fallacies and Pitfalls 480
6.13 Concluding Remarks 485
6.14 Historical Perspective and Further Reading 486
6.15 Exercises 486
Chapter 7 Multicores, Multiprocessors, and Clusters
7.1 Introduction 488
7.2 The Difficulty of Creating Parallel-Processing Programs 490
7.3 Shared Memory Multiprocessors 494
7.4 Clusters and Other Message-Passing Multiprocessors 497
7.5 Hardware Multithreading 501
7.6 SISD, MIMD, SIMD, SPMD, and Vector 504
7.7 Introduction to Graphics Processing Units 510
7.8 Introduction to Multiprocessor Network Topologies 514
7.9 Multiprocessor Benchmarks 518
7.10 Roofline: A Simple Performance Model 521
7.11 Real Stuff: Benchmarking Four Multicores Using the Roofline Model 529
7.12 Fallacies and Pitfalls 538
7.13 Concluding Remarks 540
7.14 Historical Perspective and Further Reading 542
7.15 Exercises 542
Appendix A Graphics and Computing GPUs
A.1 Introduction
A.2 GPU System Architectures
A.3 Scalable Parallelism ¿ Programming GPUs
A.4 Multithreaded Multiprocessor Architecture
A.5 Parallel Memory System G.6 Floating Point
A.7 Real Stuff: The NVIDIA GeForce 8800
A.8 Real Stuff: Mapping Applications to GPUs
A.9 Fallacies and Pitfalls
A.10 Concluding Remarks
A.11 Historical Perspective and Further Reading
Appendix B Applications, Linkers, and the SPIM Simulator
B.1 Introduction A-3
B.2 Assemblers A-10
B.3 Linkers A-18
B.4 Loading A-19
B.5 Memory Usage A-20
B.6 Procedure Call Convention A-22
B.7 Exceptions and Interrupts A-34
B.8 Input and Output A-38
B.9 SPIM A-42
B.10 MIPS R2000 Assembly Language A-46
B.11 Concluding Remarks A-82
B.12 Exercises A-83
CD-ROM Content
Appendix C The Basics of Logic Design
C.1 Introduction B-3
C.2 Gates, Truth Tables, and Logic Equations B-4
C.3 Combinational Logic B-8
C.4 Using a Hardware Description Language B-20
C.5 Constructing a Basic Arithmetic Logic Unit B-26
C.6 Faster Addition: Carry Lookahead B-38
C.7 Clocks B-47
C.8 Memory Elements: Flip-Flops, Latches, and Registers B-49
C.9 Memory Elements: SRAMs and DRAMs B-57
C.10 Finite-State Machines B-67
C.11 Timing Methodologies B-72
C.12 Field Programmable Devices B-77
C.13 Concluding Remarks B-79
C.14 Exercises B-79
Appendix D Mapping Control to Hardware
D.1 Introduction C-3
D.2 Implementing Combinational Control Units C-4
D.3 Implementing Finite-State Machine Control C-8
D.4 Implementing the Next-State Function with a Sequencer C-22
D.5 Translating a Microprogram to Hardware C-28
D.6 Concluding Remarks C-32
D.7 Exercises C-33
Appendix E A Survey of RISC Architectures for Desktop, Server, and Embedded Computers
E.1 Introduction D-3
E.2 Addressing Modes and Instruction Formats D-5
E.3 Instructions: The MIPS Core Subset D-9
E.4 Instructions: Multimedia Extensions of the Desktop/Server RISCs D-16
E.5 Instructions: Digital Signal-Processing Extensions of the Embedded RISCs D-19
E.6 Instructions: Common Extensions to MIPS Core D-20
E.7 Instructions Unique to MIPS-64 D-25
E.8 Instructions Unique to Alpha D-27
E.9 Instructions Unique to SPARC v.9 D-29
E.10 Instructions Unique to PowerPC D-32
E.11 Instructions Unique to PA-RISC 2.0 D-34
E.12 Instructions Unique to ARM D-36
E.13 Instructions Unique to Thumb D-38
E.14 Instructions Unique to SuperH D-39
E.15 Instructions Unique to M32R D-40
E.16 Instructions Unique to MIPS-16 D-41
E.17 Concluding Remarks D-43
Index
Glossary
Further Reading
