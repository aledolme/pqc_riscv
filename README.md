# Introduction

In the **pqc_riscv** repository you can find an example of a post-quantum crytpographic (PQC) hardware accelerator for pulpissimo. 
If you are using this accelerator, please refers to:

> Implementation and Integration of Keccak accelerator on RISC-V for CRYSTALS-Kyber


# Getting started
The RISC-V PULPissimo microcontroller (Figure I) from the open-source [PULP platform])(https://github.com/pulp-platform) project is used and configured to work with the 4-stage pipeline core RI5CY. Then, Keccak and [CRYSTALS-Kyber](https://github.com/PQClean/PQClean/tree/master/crypto_kem) algorithms are compiled using [PULP toolchain](https://github.com/pulp-platform/pulp-riscv-gnu-toolchain), setting the optimization flag '-O3' and increasing the
stack’s memory size.

The 'randombytes' file is modified, generating a pseudo-random sequence of bytes, while 'fips202'’s standard library functions are substituted
by the one provided by PULP-team. The accelerator is driven in a memory-mapped fashion style and attached to the SoC through an AXI plug, as shown in Figure - II . Its dependency to PULPissimo is managed by [Bender](https://github.com/pulp-platform/bender), while the Keccak register interface is
generated using [reggen tool](https://docs.opentitan.org/util/reggen/doc/).
The high-speed Keccak core developed by Keccak teams is optimized accordingly to our application (Figure - III ). It implements transformation
rounds discussed in section 2. As in [Dolmeta 2022], the size of the round constant generator is reduced from 64-bit to one-byte size, simplifying the computation in ι. The accelerator is simulated and tested using ModelSim, exploiting a dedicated driver

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
