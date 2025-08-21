#### Vending Machine with Change (Verilog HDL)

#### Project Description
This project implements a Vending Machine using Verilog HDL.  
The vending machine accepts inputs (coins) and provides the selected item along with the correct change if applicable.  
It is designed to simulate real-world vending machine functionality using finite state machines (FSM).

#### Features

* Accepts different coin denominations (e.g., ₹5, ₹10).
* Dispenses selected product.
* Returns change if excess money is inserted.
* FSM-based design for better modularity and clarity.
* Synthesizable and tested on ModelSim/QuestaSim/EDA Playground.

#### Technologies Used

* Language: Verilog HDL
* Simulation Tools: ModelSim

#### How it Works
  * Insert coin → FSM tracks total money → If money ≥ item price → Dispense item + Return change.


#### Simulation

* Steps to run the project (ModelSim)


1. Open ModelSim
2. Compile vending_machine.v and testbench.v.
3. Run simulation to verify outputs.


#### Future Improvements

* Support for more products.
* LCD/LED display for balance.
* Integration with FPGA board.

#### Author

Developed by: [Manish Kumar Bhatta]
LinkedIn: [https://www.linkedin.com/in/manish-ku-bhatta-985080272]
