-- File: README.md

# FPGA 4-bit Counter with 7-Segment Display

A beginner-friendly VHDL project that implements a 4-bit binary counter with 7-segment display output. Designed for simulation using GHDL/GTKWave or EDA Playground.

## 📁 Project Structure
```
fpga-counter/
├── counter.vhdl            # 4-bit binary counter
├── seven_seg_decoder.vhdl  # 7-segment decoder for hexadecimal values
├── top.vhdl                # Top-level module connecting counter & decoder
├── tb.vhdl                 # Testbench for simulation
└── README.md               # Project description and instructions
```

## 🔧 How It Works
- `counter.vhdl`: Increments a 4-bit count every clock cycle.
- `seven_seg_decoder.vhdl`: Converts binary count to 7-segment encoding.
- `top.vhdl`: Connects counter and decoder into one module.
- `tb.vhdl`: Simulates the design and produces waveforms.

## ▶️ Simulation Instructions (GHDL)
```bash
ghdl -a counter.vhdl seven_seg_decoder.vhdl top.vhdl tb.vhdl
ghdl -e tb
ghdl -r tb --vcd=wave.vcd
gtkwave wave.vcd
```

## 🧪 Expected Output
- The 7-segment output (`seg`) cycles through hex digits 0 to F.
- Waveform shows incrementing binary and corresponding segment values.

## 💡 Next Steps
- Add button debouncing for manual increment.
- Use on FPGA board with real 7-segment display.

## 📚 Tools
- GHDL: https://ghdl.readthedocs.io/
- GTKWave: http://gtkwave.sourceforge.net/
- EDA Playground: https://www.edaplayground.com/

