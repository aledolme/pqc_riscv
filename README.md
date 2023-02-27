# Introduction

In the pqc_riscv repository you can find an example of a post-quantum crytpographic (PQC) hardware accelerator for pulpissimo. 
If you are using this accelerator, please refers to:

> Implementation and Integration of Keccak accelerator on RISC-V for CRYSTALS-Kyber


# Getting started
**pulpissimo** is the microcontroller architecture of the more recent PULP chips, part of the ongoing "PULP platform" collaboration between ETH Zurich and the University of Bologna - started in 2013. Please refers to [pulpissimo GitHub Pages] (https://github.com/pulp-platform/pulpissimo) for further information. 

**pulp-runtime** is a simple runtime for the Pulp architecture. Please refers to [pulp-runtime GitHub Pages] (https://github.com/pulp-platform/pulp-runtime.git) for further information. 

## Prerequisities



## Folder organization
- **pulpissimo**: forked repository of the original pulpissimo folder. Modification are explained more in details in the README file;
- **pulp_soc**: forked repository of the pulp_soc sub-ip repository. This is the main repository that contains most of the SoCs RTL logic. This allow us adding new IPs to pulpissimo. The new source code has been registered in the Bender.yml manifest file, in order to add this new repository as a dependency to pulp_soc's Bender.yml. As explained in `pulpissimo` repository, this is the most used strategy throughout the pulpissimo project, which is a collection of many different IP repositories;
- **pulp-runtime**: forked repository of the original pulp-runtime folder. Modification are explained more in details in the README file. 
- **test**: contain the tests performed.

## Simulation
In order to run #.sh files, modify:
- ***source*** to your questa_sim path; 
- ***PULP_RISCV_GCC_TOOLCHAIN=*** to your toolchain path;
- ***VSIM_PATH*** to your repository path.

## Test
In these 
