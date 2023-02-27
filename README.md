# Introduction

In the **pqc_riscv** repository you can find an example of a post-quantum crytpographic (PQC) hardware accelerator for pulpissimo. 
If you are using this accelerator, please refers to:

> Implementation and Integration of Keccak accelerator on RISC-V for CRYSTALS-Kyber


# Getting started
**pulpissimo** is the microcontroller architecture of the more recent PULP chips, part of the ongoing "PULP platform" collaboration between ETH Zurich and the University of Bologna - started in 2013. 
**pulp-runtime** is a simple runtime for the Pulp architecture. 
![Image](https://github.com/aledolme/pqc_riscv/blob/main/keccak_ip.svg)

## Folder organization
- **pulpissimo**: forked repository of the original pulpissimo folder. Please refers to [pulpissimo GitHub Pages](https://github.com/pulp-platform/pulpissimo) for further information. 
- **pulp_soc**: forked repository of the pulp_soc sub-ip repository. This is the main repository that contains most of the SoCs RTL logic. This allow us adding new IPs to pulpissimo. The new source code has been registered in the Bender.yml manifest file, in order to add this new repository as a dependency to pulp_soc's Bender.yml. As explained in `pulpissimo` repository, this is the most used strategy throughout the pulpissimo project, which is a collection of many different IP repositories;
- **pulp-runtime**: forked repository of the original pulp-runtime folder. Please refers to [pulp-runtime GitHub Pages](https://github.com/pulp-platform/pulp-runtime.git) for further information.  
- **test**: contain the tests performed.


## Prerequisities
Prerequisites are explained in detail in the [main repository](https://github.com/pulp-platform/pulpissimo). We report for the reader's convenience the main steps to be followed.
First, install the system dependencies indicated [here](https://github.com/pulp-platform/pulp-runtime/blob/master/README.md).
Then make sure you have  [riscv-gnu-toolchain](https://github.com/pulp-platform/pulp-riscv-gnu-toolchain) installed and point PULP_RISCV_GCC_TOOLCHAIN to it:

> export PULP_RISCV_GCC_TOOLCHAIN=YOUR_PULP_TOOLCHAIN_PATH

Add the pulp-toolchain to your PATH variable:

> export PATH=$PULP_RISCV_GCC_TOOLCHAIN/bin:$PATH

## Simulation
In order to run #.sh files, modify:
- ***source*** to your questa_sim path; 
- ***PULP_RISCV_GCC_TOOLCHAIN=*** to your toolchain path;
- ***VSIM_PATH*** to your repository path.
Get the repository for the simple runtime:

git clone --recursive https://github.com/aledolme/pqc_riscv

We want PULPissimo.

cd pulp-runtime

Then, to use the CV32E40P (formely RI5CY) core, type:

source configs/pulpissimo_cv32.sh

or to use the Ibex (formely zero-riscy) core:

source configs/pulpissimo_ibex.sh

Now we are ready to set up the simulation environment. Normally you would want to simulate the hardware design running your program, so go here.





## Test
In these 
