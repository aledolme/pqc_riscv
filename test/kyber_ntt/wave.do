do ./waves/software.tcl
do ./waves/axi_xbar.tcl
do ./waves/soc_interconnect_wrap.tcl
add wave -divider NTT_INTT_PWM_BUS
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/aw_addr
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/aw_valid
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/aw_ready
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/w_valid
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/w_ready
add wave -position insertpoint -color Orchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/w_data 
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/ar_addr
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/ar_valid
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/ar_ready
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/r_valid
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/r_ready
add wave -position insertpoint -color Orchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/r_data 
add wave -divider KECCAK_BUS
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_keccak_bus/aw_addr
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_keccak_bus/aw_valid
add wave -position insertpoint -color MediumOrchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_keccak_bus/aw_ready
add wave -position insertpoint -color Orchid sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_keccak_bus/w_data
add wave -divider NTT_INTT_PWM_top
add wave -position insertpoint -color Orange sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/reg_file_to_ip
add wave -position insertpoint -color Orange sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/ip_to_reg_file
add wave -position insertpoint -color Cyan sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/din_ntt_intt_pwm
add wave -position insertpoint -color Violet sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/dout_ntt_intt_pwm
add wave -divider NTT_INTT_PWM
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/load_a_f
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/load_a_i
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/load_b_f
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/load_b_i
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/read_a
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/read_b
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/start_ab
add wave -position insertpoint -color Cyan sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/start_fntt
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/start_intt
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/start_pwm2
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/y
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/done

add wave -position insertpoint -color Cyan sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/din
add wave -position insertpoint -color Violet sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/dout
add wave -divider NTT_RAM00
add wave -position insertpoint -radix hex -color Violet sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_0/ram
add wave -position insertpoint -radix unsigned -color Violet sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_0/waddr
add wave -position insertpoint -radix hex -color Violet sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_0/din
add wave -position insertpoint -radix unsigned -color Cyan sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_0/raddr
add wave -position insertpoint -radix hex -color Cyan sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_0/dout
add wave -divider NTT_RAM01
add wave -position insertpoint -radix hex -color Violet sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_1/ram
add wave -position insertpoint -radix unsigned -color Violet sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_1/waddr
add wave -position insertpoint -radix hex -color Violet sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_1/din
add wave -position insertpoint -radix unsigned -color Cyan sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_1/raddr
add wave -position insertpoint -radix hex -color Cyan sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/b_ram0_1/dout
add wave -divider
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_ntt_intt_pwm/*
add wave -divider KECCAK
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_keccak_top/*
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_keccak_top/i_keccak/*

add wave -divider AXI2REG
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_axi2reg/*
add wave -divider RegFile
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm_top/i_regfile/*

run -all
WaveRestoreZoom {15991312 ns} {15992030 ns}
