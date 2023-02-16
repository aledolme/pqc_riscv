# PQC-accelerators for pulpissimo

In the pqc_riscv repository you can find an example of a post-quantum crytpographic (PQC) hardware accelerator for pulpissimo. 
If you are using this accelerator, please refers to:

> what

## Folder organization
- **pulpissimo**: forked repository of the original pulpissimo folder. Modification are explained more in details in the README file. 
- **pulp_soc**: since we are adding new IPs to pulpissimo, we have forked the pulp_soc sub-ip repository, since this is the main repository that contains most of the SoCs RTL logic. This new source code has been registered in the Bender.yml manifest file, in order to add this new repository as a dependency to pulp_soc's Bender.yml. As explained in `pulpissimo` repository, this is the most used strategy throughout the pulpissimo project, which is a collection of many different IP repositories
- **pulp-runtime**: forked repository of the original pulp-runtime folder. Modification are explained more in details in the README file. 
- **test**: contain the tests performed.

## Simulation
In order to run #.sh files, modify:
- ***source*** to your questa_sim path; 
- ***PULP_RISCV_GCC_TOOLCHAIN=*** to your toolchain path;
- ***VSIM_PATH*** to your repository path.

