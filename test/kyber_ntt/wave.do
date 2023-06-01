add wave -divider NTT_INTT_PWM_BUS
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/s_ntt_intt_pwm_bus/*
add wave -divider NTT_INTT_PWM_top
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm/*
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm/i_ntt_intt_pwm/*
add wave -divider AXI2REG
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm/i_axi2reg/*
add wave -divider RegFile
add wave -position insertpoint sim:/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_ntt_intt_pwm/i_regfile/*

run -all
WaveRestoreZoom {15991312 ns} {15992030 ns}
