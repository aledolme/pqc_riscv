#!/bin/bash

source /eda/scripts/init_questa
export PULP_RISCV_GCC_TOOLCHAIN=$HOME/opt/riscv
export PATH=$PULP_RISCV_GCC_TOOLCHAIN/bin:$PATH
export VSIM_PATH=$HOME/Desktop/pqc_riscv

source pulp-runtime/configs/pulpissimo.sh

cd pulpissimo
make checkout
source setup/vsim.sh
env | grep VSIM
make clean build  

cd ../test/keccak_ip
make clean all
make dis > keccak.s
#cd ../sw/hello
make -f Makefile run gui=1



