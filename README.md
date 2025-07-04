Pattern Detector using PRBG | Internship Project

This project was developed as part of my internship assignment to design and verify a 3-bit pattern detector on FPGA. The objective was to detect the binary sequence `101` from a serial bitstream generated by a pseudo-random bit generator (PRBG). The design was tested through simulation and successfully verified on a ZedBoard FPGA using Vivado's VIO and ILA cores.

 Project Summary:

- Designed an 8-bit PRBG using an LFSR to generate random serial data
- Implemented a pattern detector module that identifies `101` in a shifting 3-bit window
- Combined both modules in a top-level design (`top_module.v`)
- Created a simulation-only version (bypassing clock divider) for fast testing
- Developed testbenches to verify functionality:
  - `tb_top_module.v`: Full system simulation
- Added clock divider (for hardware) and connected internal signals to ILA
- Controlled reset through VIO and captured detection events using ILA on ZedBoard

 Tested On:

- Simulation: Behavioral simulation using Vivado
- Hardware: ZedBoard FPGA using VIO for reset control and ILA for real-time signal observation


 Files Included:

- `PRBG.v`: 8-bit pseudo-random bit generator
- `pattern_detector.v`: 3-bit pattern detector for `101`
- `top_module.v`: Integrates PRBG and detector
- `tb_top_module.v`: Simulation testbench (PRBG + detector)
- `tb_pattern_detector_direct.v`: Direct input testbench for waveform capture


 Tools Used:

- Vivado Design Suite 
- Verilog HDL
- ZedBoard FPGA
- VIO and ILA IPs

 Outcome:
 Successfully simulated and tested a pattern detector system capable of detecting the `101` sequence in a PRBG-driven      bitstream, with both simulation and live hardware verification completed.

