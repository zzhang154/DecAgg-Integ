#!/bin/bash

# waf configuration
 
# ./waf configure --disable-python --enable-examples -d debug

# gdb debug command
# ./waf --run aggregate-sum-simulation --gdb 2>&1 | tee debug_output.txt

# Run waf and the simulation, redirecting output to output.txt
# ./waf > output.txt 2>&1
# ./waf --run="aggregate-sum-simulation --nodeCount=4" >> output.txt 2>&1
#  gdb --args ./waf --run="aggregate-sum-simulation --nodeCount=4"
./waf --run aggregate-sum-simulation 2>&1 | tee debug_output.txt