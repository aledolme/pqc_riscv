riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber512/keygen/build/keygen/keygen

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber512/keygen/build/keygen/keygen:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	5c60306f          	j	1c00b5c6 <__rt_handle_illegal_instr>
1c008004:	0840006f          	j	1c008088 <pos_no_irq_handler>
1c008008:	0800006f          	j	1c008088 <pos_no_irq_handler>
1c00800c:	07c0006f          	j	1c008088 <pos_no_irq_handler>
1c008010:	0780006f          	j	1c008088 <pos_no_irq_handler>
1c008014:	0740006f          	j	1c008088 <pos_no_irq_handler>
1c008018:	0700006f          	j	1c008088 <pos_no_irq_handler>
1c00801c:	06c0006f          	j	1c008088 <pos_no_irq_handler>
1c008020:	0680006f          	j	1c008088 <pos_no_irq_handler>
1c008024:	0640006f          	j	1c008088 <pos_no_irq_handler>
1c008028:	0600006f          	j	1c008088 <pos_no_irq_handler>
1c00802c:	05c0006f          	j	1c008088 <pos_no_irq_handler>
1c008030:	0580006f          	j	1c008088 <pos_no_irq_handler>
1c008034:	0540006f          	j	1c008088 <pos_no_irq_handler>
1c008038:	0500006f          	j	1c008088 <pos_no_irq_handler>
1c00803c:	04c0006f          	j	1c008088 <pos_no_irq_handler>
1c008040:	0480006f          	j	1c008088 <pos_no_irq_handler>
1c008044:	0440006f          	j	1c008088 <pos_no_irq_handler>
1c008048:	0400006f          	j	1c008088 <pos_no_irq_handler>
1c00804c:	03c0006f          	j	1c008088 <pos_no_irq_handler>
1c008050:	0380006f          	j	1c008088 <pos_no_irq_handler>
1c008054:	0340006f          	j	1c008088 <pos_no_irq_handler>
1c008058:	0300006f          	j	1c008088 <pos_no_irq_handler>
1c00805c:	02c0006f          	j	1c008088 <pos_no_irq_handler>
1c008060:	0280006f          	j	1c008088 <pos_no_irq_handler>
1c008064:	0240006f          	j	1c008088 <pos_no_irq_handler>
1c008068:	0200006f          	j	1c008088 <pos_no_irq_handler>
1c00806c:	01c0006f          	j	1c008088 <pos_no_irq_handler>
1c008070:	0180006f          	j	1c008088 <pos_no_irq_handler>
1c008074:	0140006f          	j	1c008088 <pos_no_irq_handler>
1c008078:	0100006f          	j	1c008088 <pos_no_irq_handler>
1c00807c:	00c0006f          	j	1c008088 <pos_no_irq_handler>

1c008080 <_start>:
1c008080:	0400006f          	j	1c0080c0 <_stext>

1c008084 <pos_illegal_instr>:
1c008084:	5420306f          	j	1c00b5c6 <__rt_handle_illegal_instr>

1c008088 <pos_no_irq_handler>:
1c008088:	30200073          	mret

1c00808c <pos_semihosting_call>:
1c00808c:	00100073          	ebreak
1c008090:	00008067          	ret

1c008094 <do_cl_boot>:
1c008094:	10200137          	lui	sp,0x10200
1c008098:	00100193          	li	gp,1
1c00809c:	00000217          	auipc	tp,0x0
1c0080a0:	fe420213          	addi	tp,tp,-28 # 1c008080 <_start>
1c0080a4:	04412023          	sw	tp,64(sp) # 10200040 <__CTOR_LIST__-0xbdfffc4>
1c0080a8:	00312423          	sw	gp,8(sp)

1c0080ac <loop>:
1c0080ac:	1a10a137          	lui	sp,0x1a10a
1c0080b0:	80010113          	addi	sp,sp,-2048 # 1a109800 <__CTOR_LIST__-0x1ef6804>
1c0080b4:	00012023          	sw	zero,0(sp)
1c0080b8:	10500073          	wfi
1c0080bc:	ff1ff06f          	j	1c0080ac <loop>

Disassembly of section .text:

1c0080c0 <_stext>:
1c0080c0:	ffffe297          	auipc	t0,0xffffe
1c0080c4:	1b028293          	addi	t0,t0,432 # 1c006270 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	22030313          	addi	t1,t1,544 # 1c0062e8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	19610113          	addi	sp,sp,406 # 1c006270 <stack>
1c0080e2:	328030ef          	jal	ra,1c00b40a <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	08a38393          	addi	t2,t2,138 # 1c008178 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	344030ef          	jal	ra,1c00b440 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	35c020ef          	jal	ra,1c00a45e <exit>

1c008106 <__clzsi2>:
1c008106:	67c1                	lui	a5,0x10
1c008108:	02f57663          	bleu	a5,a0,1c008134 <__clzsi2+0x2e>
1c00810c:	0ff00793          	li	a5,255
1c008110:	00a7b7b3          	sltu	a5,a5,a0
1c008114:	078e                	slli	a5,a5,0x3
1c008116:	02000713          	li	a4,32
1c00811a:	8f1d                	sub	a4,a4,a5
1c00811c:	00f557b3          	srl	a5,a0,a5
1c008120:	1c000537          	lui	a0,0x1c000
1c008124:	01c50513          	addi	a0,a0,28 # 1c00001c <__DTOR_END__>
1c008128:	97aa                	add	a5,a5,a0
1c00812a:	0007c503          	lbu	a0,0(a5) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00812e:	40a70533          	sub	a0,a4,a0
1c008132:	8082                	ret
1c008134:	01000737          	lui	a4,0x1000
1c008138:	47c1                	li	a5,16
1c00813a:	fce56ee3          	bltu	a0,a4,1c008116 <__clzsi2+0x10>
1c00813e:	47e1                	li	a5,24
1c008140:	bfd9                	j	1c008116 <__clzsi2+0x10>

1c008142 <printbytes>:
1c008142:	1141                	addi	sp,sp,-16
1c008144:	c422                	sw	s0,8(sp)
1c008146:	c226                	sw	s1,4(sp)
1c008148:	c04a                	sw	s2,0(sp)
1c00814a:	c606                	sw	ra,12(sp)
1c00814c:	842a                	mv	s0,a0
1c00814e:	00b50933          	add	s2,a0,a1
1c008152:	1c0004b7          	lui	s1,0x1c000
1c008156:	00044583          	lbu	a1,0(s0)
1c00815a:	14848513          	addi	a0,s1,328 # 1c000148 <__DTOR_END__+0x12c>
1c00815e:	0405                	addi	s0,s0,1
1c008160:	31a020ef          	jal	ra,1c00a47a <printf>
1c008164:	ff2419e3          	bne	s0,s2,1c008156 <printbytes+0x14>
1c008168:	4422                	lw	s0,8(sp)
1c00816a:	40b2                	lw	ra,12(sp)
1c00816c:	4492                	lw	s1,4(sp)
1c00816e:	4902                	lw	s2,0(sp)
1c008170:	4529                	li	a0,10
1c008172:	0141                	addi	sp,sp,16
1c008174:	2c00206f          	j	1c00a434 <putchar>

1c008178 <main>:
1c008178:	81010113          	addi	sp,sp,-2032
1c00817c:	1c000537          	lui	a0,0x1c000
1c008180:	7e112623          	sw	ra,2028(sp)
1c008184:	7e812423          	sw	s0,2024(sp)
1c008188:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c00818c:	7125                	addi	sp,sp,-416
1c00818e:	22a020ef          	jal	ra,1c00a3b8 <puts>
1c008192:	6785                	lui	a5,0x1
1c008194:	747d                	lui	s0,0xfffff
1c008196:	98078793          	addi	a5,a5,-1664 # 980 <__CTOR_LIST__-0x1bfff684>
1c00819a:	978a                	add	a5,a5,sp
1c00819c:	68040413          	addi	s0,s0,1664 # fffff680 <pulp__FC+0xfffff681>
1c0081a0:	943e                	add	s0,s0,a5
1c0081a2:	160c                	addi	a1,sp,800
1c0081a4:	8522                	mv	a0,s0
1c0081a6:	738010ef          	jal	ra,1c0098de <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair>
1c0081aa:	1c000537          	lui	a0,0x1c000
1c0081ae:	12c50513          	addi	a0,a0,300 # 1c00012c <__DTOR_END__+0x110>
1c0081b2:	206020ef          	jal	ra,1c00a3b8 <puts>
1c0081b6:	1c000537          	lui	a0,0x1c000
1c0081ba:	13c50513          	addi	a0,a0,316 # 1c00013c <__DTOR_END__+0x120>
1c0081be:	1fa020ef          	jal	ra,1c00a3b8 <puts>
1c0081c2:	32000593          	li	a1,800
1c0081c6:	8522                	mv	a0,s0
1c0081c8:	3fad                	jal	1c008142 <printbytes>
1c0081ca:	1c000537          	lui	a0,0x1c000
1c0081ce:	14050513          	addi	a0,a0,320 # 1c000140 <__DTOR_END__+0x124>
1c0081d2:	1e6020ef          	jal	ra,1c00a3b8 <puts>
1c0081d6:	1608                	addi	a0,sp,800
1c0081d8:	66000593          	li	a1,1632
1c0081dc:	379d                	jal	1c008142 <printbytes>
1c0081de:	611d                	addi	sp,sp,416
1c0081e0:	7ec12083          	lw	ra,2028(sp)
1c0081e4:	4501                	li	a0,0
1c0081e6:	7e812403          	lw	s0,2024(sp)
1c0081ea:	7f010113          	addi	sp,sp,2032
1c0081ee:	8082                	ret

1c0081f0 <pos_fll_init>:
1c0081f0:	1101                	addi	sp,sp,-32
1c0081f2:	1a100637          	lui	a2,0x1a100
1c0081f6:	ca26                	sw	s1,20(sp)
1c0081f8:	00451693          	slli	a3,a0,0x4
1c0081fc:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c008200:	94b6                	add	s1,s1,a3
1c008202:	4098                	lw	a4,0(s1)
1c008204:	c84a                	sw	s2,16(sp)
1c008206:	ce06                	sw	ra,28(sp)
1c008208:	cc22                	sw	s0,24(sp)
1c00820a:	c64e                	sw	s3,12(sp)
1c00820c:	c452                	sw	s4,8(sp)
1c00820e:	892a                	mv	s2,a0
1c008210:	87ba                	mv	a5,a4
1c008212:	04074563          	bltz	a4,1c00825c <pos_fll_init+0x6c>
1c008216:	00860593          	addi	a1,a2,8
1c00821a:	95b6                	add	a1,a1,a3
1c00821c:	419c                	lw	a5,0(a1)
1c00821e:	7541                	lui	a0,0xffff0
1c008220:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c008224:	8fe9                	and	a5,a5,a0
1c008226:	6509                	lui	a0,0x2
1c008228:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c00822c:	8fc9                	or	a5,a5,a0
1c00822e:	f0010537          	lui	a0,0xf0010
1c008232:	157d                	addi	a0,a0,-1
1c008234:	8fe9                	and	a5,a5,a0
1c008236:	00500537          	lui	a0,0x500
1c00823a:	8fc9                	or	a5,a5,a0
1c00823c:	0631                	addi	a2,a2,12
1c00823e:	c19c                	sw	a5,0(a1)
1c008240:	96b2                	add	a3,a3,a2
1c008242:	429c                	lw	a5,0(a3)
1c008244:	fc010637          	lui	a2,0xfc010
1c008248:	167d                	addi	a2,a2,-1
1c00824a:	8ff1                	and	a5,a5,a2
1c00824c:	014c0637          	lui	a2,0x14c0
1c008250:	8fd1                	or	a5,a5,a2
1c008252:	c29c                	sw	a5,0(a3)
1c008254:	c00007b7          	lui	a5,0xc0000
1c008258:	8fd9                	or	a5,a5,a4
1c00825a:	c09c                	sw	a5,0(s1)
1c00825c:	1c006437          	lui	s0,0x1c006
1c008260:	2c840413          	addi	s0,s0,712 # 1c0062c8 <pos_fll_freq>
1c008264:	00291993          	slli	s3,s2,0x2
1c008268:	013406b3          	add	a3,s0,s3
1c00826c:	0006aa03          	lw	s4,0(a3)
1c008270:	020a1d63          	bnez	s4,1c0082aa <pos_fll_init+0xba>
1c008274:	83e9                	srli	a5,a5,0x1a
1c008276:	0742                	slli	a4,a4,0x10
1c008278:	8341                	srli	a4,a4,0x10
1c00827a:	8bbd                	andi	a5,a5,15
1c00827c:	073e                	slli	a4,a4,0xf
1c00827e:	17fd                	addi	a5,a5,-1
1c008280:	00f75a33          	srl	s4,a4,a5
1c008284:	1c006537          	lui	a0,0x1c006
1c008288:	0146a023          	sw	s4,0(a3)
1c00828c:	2c050513          	addi	a0,a0,704 # 1c0062c0 <pos_fll_is_on>
1c008290:	954a                	add	a0,a0,s2
1c008292:	4685                	li	a3,1
1c008294:	00d50023          	sb	a3,0(a0)
1c008298:	40f2                	lw	ra,28(sp)
1c00829a:	4462                	lw	s0,24(sp)
1c00829c:	8552                	mv	a0,s4
1c00829e:	44d2                	lw	s1,20(sp)
1c0082a0:	4942                	lw	s2,16(sp)
1c0082a2:	49b2                	lw	s3,12(sp)
1c0082a4:	4a22                	lw	s4,8(sp)
1c0082a6:	6105                	addi	sp,sp,32
1c0082a8:	8082                	ret
1c0082aa:	8552                	mv	a0,s4
1c0082ac:	3da9                	jal	1c008106 <__clzsi2>
1c0082ae:	1579                	addi	a0,a0,-2
1c0082b0:	00155613          	srli	a2,a0,0x1
1c0082b4:	e631                	bnez	a2,1c008300 <pos_fll_init+0x110>
1c0082b6:	4709                	li	a4,2
1c0082b8:	4585                	li	a1,1
1c0082ba:	4605                	li	a2,1
1c0082bc:	00ca17b3          	sll	a5,s4,a2
1c0082c0:	76e1                	lui	a3,0xffff8
1c0082c2:	1c006537          	lui	a0,0x1c006
1c0082c6:	8efd                	and	a3,a3,a5
1c0082c8:	2c050513          	addi	a0,a0,704 # 1c0062c0 <pos_fll_is_on>
1c0082cc:	96ae                	add	a3,a3,a1
1c0082ce:	012505b3          	add	a1,a0,s2
1c0082d2:	00c6d6b3          	srl	a3,a3,a2
1c0082d6:	944e                	add	s0,s0,s3
1c0082d8:	0005c603          	lbu	a2,0(a1)
1c0082dc:	c014                	sw	a3,0(s0)
1c0082de:	da4d                	beqz	a2,1c008290 <pos_fll_init+0xa0>
1c0082e0:	4094                	lw	a3,0(s1)
1c0082e2:	83bd                	srli	a5,a5,0xf
1c0082e4:	07c2                	slli	a5,a5,0x10
1c0082e6:	7641                	lui	a2,0xffff0
1c0082e8:	83c1                	srli	a5,a5,0x10
1c0082ea:	8ef1                	and	a3,a3,a2
1c0082ec:	8edd                	or	a3,a3,a5
1c0082ee:	c40007b7          	lui	a5,0xc4000
1c0082f2:	8b3d                	andi	a4,a4,15
1c0082f4:	17fd                	addi	a5,a5,-1
1c0082f6:	076a                	slli	a4,a4,0x1a
1c0082f8:	8efd                	and	a3,a3,a5
1c0082fa:	8ed9                	or	a3,a3,a4
1c0082fc:	c094                	sw	a3,0(s1)
1c0082fe:	bf49                	j	1c008290 <pos_fll_init+0xa0>
1c008300:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c008304:	4685                	li	a3,1
1c008306:	00b695b3          	sll	a1,a3,a1
1c00830a:	00160713          	addi	a4,a2,1
1c00830e:	b77d                	j	1c0082bc <pos_fll_init+0xcc>

1c008310 <pos_fll_constructor>:
1c008310:	1c0067b7          	lui	a5,0x1c006
1c008314:	2c878793          	addi	a5,a5,712 # 1c0062c8 <pos_fll_freq>
1c008318:	0007a023          	sw	zero,0(a5)
1c00831c:	0007a223          	sw	zero,4(a5)
1c008320:	1c0067b7          	lui	a5,0x1c006
1c008324:	2c079023          	sh	zero,704(a5) # 1c0062c0 <pos_fll_is_on>
1c008328:	8082                	ret

1c00832a <pos_soc_init>:
1c00832a:	1141                	addi	sp,sp,-16
1c00832c:	c606                	sw	ra,12(sp)
1c00832e:	c422                	sw	s0,8(sp)
1c008330:	37c5                	jal	1c008310 <pos_fll_constructor>
1c008332:	4501                	li	a0,0
1c008334:	3d75                	jal	1c0081f0 <pos_fll_init>
1c008336:	1c006437          	lui	s0,0x1c006
1c00833a:	2ca42823          	sw	a0,720(s0) # 1c0062d0 <pos_freq_domains>
1c00833e:	4505                	li	a0,1
1c008340:	3d45                	jal	1c0081f0 <pos_fll_init>
1c008342:	2d040413          	addi	s0,s0,720
1c008346:	c408                	sw	a0,8(s0)
1c008348:	40b2                	lw	ra,12(sp)
1c00834a:	4422                	lw	s0,8(sp)
1c00834c:	0141                	addi	sp,sp,16
1c00834e:	8082                	ret

1c008350 <KeccakF1600_StatePermute>:
1c008350:	1a4007b7          	lui	a5,0x1a400
1c008354:	1141                	addi	sp,sp,-16
1c008356:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00835a:	4118                	lw	a4,0(a0)
1c00835c:	0791                	addi	a5,a5,4
1c00835e:	fee7ae23          	sw	a4,-4(a5)
1c008362:	0511                	addi	a0,a0,4
1c008364:	fed79be3          	bne	a5,a3,1c00835a <KeccakF1600_StatePermute+0xa>
1c008368:	1a4007b7          	lui	a5,0x1a400
1c00836c:	4705                	li	a4,1
1c00836e:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008372:	1a400737          	lui	a4,0x1a400
1c008376:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00837a:	8b85                	andi	a5,a5,1
1c00837c:	dfed                	beqz	a5,1c008376 <KeccakF1600_StatePermute+0x26>
1c00837e:	c602                	sw	zero,12(sp)
1c008380:	4732                	lw	a4,12(sp)
1c008382:	03100793          	li	a5,49
1c008386:	02e7c663          	blt	a5,a4,1c0083b2 <KeccakF1600_StatePermute+0x62>
1c00838a:	1a400637          	lui	a2,0x1a400
1c00838e:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008392:	03100513          	li	a0,49
1c008396:	4732                	lw	a4,12(sp)
1c008398:	47b2                	lw	a5,12(sp)
1c00839a:	070a                	slli	a4,a4,0x2
1c00839c:	9732                	add	a4,a4,a2
1c00839e:	4314                	lw	a3,0(a4)
1c0083a0:	4732                	lw	a4,12(sp)
1c0083a2:	078a                	slli	a5,a5,0x2
1c0083a4:	0705                	addi	a4,a4,1
1c0083a6:	c63a                	sw	a4,12(sp)
1c0083a8:	97ae                	add	a5,a5,a1
1c0083aa:	4732                	lw	a4,12(sp)
1c0083ac:	c394                	sw	a3,0(a5)
1c0083ae:	fee554e3          	ble	a4,a0,1c008396 <KeccakF1600_StatePermute+0x46>
1c0083b2:	0141                	addi	sp,sp,16
1c0083b4:	8082                	ret

1c0083b6 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>:
1c0083b6:	00249337          	lui	t1,0x249
1c0083ba:	20050e13          	addi	t3,a0,512
1c0083be:	24930313          	addi	t1,t1,585 # 249249 <__CTOR_LIST__-0x1bdb6dbb>
1c0083c2:	0015c703          	lbu	a4,1(a1)
1c0083c6:	0025c783          	lbu	a5,2(a1)
1c0083ca:	0005c683          	lbu	a3,0(a1)
1c0083ce:	07c2                	slli	a5,a5,0x10
1c0083d0:	0722                	slli	a4,a4,0x8
1c0083d2:	8f5d                	or	a4,a4,a5
1c0083d4:	8f55                	or	a4,a4,a3
1c0083d6:	00175793          	srli	a5,a4,0x1
1c0083da:	00275693          	srli	a3,a4,0x2
1c0083de:	0066f6b3          	and	a3,a3,t1
1c0083e2:	0067f7b3          	and	a5,a5,t1
1c0083e6:	00677733          	and	a4,a4,t1
1c0083ea:	97b6                	add	a5,a5,a3
1c0083ec:	97ba                	add	a5,a5,a4
1c0083ee:	0037df13          	srli	t5,a5,0x3
1c0083f2:	0067d613          	srli	a2,a5,0x6
1c0083f6:	0097de93          	srli	t4,a5,0x9
1c0083fa:	00c7d693          	srli	a3,a5,0xc
1c0083fe:	00f7d893          	srli	a7,a5,0xf
1c008402:	0127d713          	srli	a4,a5,0x12
1c008406:	0077f813          	andi	a6,a5,7
1c00840a:	007f7f13          	andi	t5,t5,7
1c00840e:	8a1d                	andi	a2,a2,7
1c008410:	007efe93          	andi	t4,t4,7
1c008414:	8a9d                	andi	a3,a3,7
1c008416:	0078f893          	andi	a7,a7,7
1c00841a:	8b1d                	andi	a4,a4,7
1c00841c:	83d5                	srli	a5,a5,0x15
1c00841e:	41e80833          	sub	a6,a6,t5
1c008422:	41d60633          	sub	a2,a2,t4
1c008426:	411686b3          	sub	a3,a3,a7
1c00842a:	40f707b3          	sub	a5,a4,a5
1c00842e:	01051023          	sh	a6,0(a0)
1c008432:	00c51123          	sh	a2,2(a0)
1c008436:	00d51223          	sh	a3,4(a0)
1c00843a:	00f51323          	sh	a5,6(a0)
1c00843e:	0521                	addi	a0,a0,8
1c008440:	058d                	addi	a1,a1,3
1c008442:	f8ae10e3          	bne	t3,a0,1c0083c2 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1+0xc>
1c008446:	8082                	ret

1c008448 <keccak_absorb.constprop.7>:
1c008448:	7151                	addi	sp,sp,-240
1c00844a:	d3a6                	sw	s1,228(sp)
1c00844c:	cfce                	sw	s3,220(sp)
1c00844e:	cdd2                	sw	s4,216(sp)
1c008450:	cbd6                	sw	s5,212(sp)
1c008452:	d786                	sw	ra,236(sp)
1c008454:	d5a2                	sw	s0,232(sp)
1c008456:	d1ca                	sw	s2,224(sp)
1c008458:	89aa                	mv	s3,a0
1c00845a:	8a32                	mv	s4,a2
1c00845c:	84b6                	mv	s1,a3
1c00845e:	8aaa                	mv	s5,a0
1c008460:	0c850713          	addi	a4,a0,200
1c008464:	87aa                	mv	a5,a0
1c008466:	4601                	li	a2,0
1c008468:	4681                	li	a3,0
1c00846a:	c390                	sw	a2,0(a5)
1c00846c:	c3d4                	sw	a3,4(a5)
1c00846e:	07a1                	addi	a5,a5,8
1c008470:	fef71be3          	bne	a4,a5,1c008466 <keccak_absorb.constprop.7+0x1e>
1c008474:	08700793          	li	a5,135
1c008478:	0747fb63          	bleu	s4,a5,1c0084ee <keccak_absorb.constprop.7+0xa6>
1c00847c:	08700413          	li	s0,135
1c008480:	08858913          	addi	s2,a1,136
1c008484:	874e                	mv	a4,s3
1c008486:	0015c783          	lbu	a5,1(a1)
1c00848a:	0025c603          	lbu	a2,2(a1)
1c00848e:	0055c883          	lbu	a7,5(a1)
1c008492:	0045c303          	lbu	t1,4(a1)
1c008496:	0065c803          	lbu	a6,6(a1)
1c00849a:	0005ce03          	lbu	t3,0(a1)
1c00849e:	0035c503          	lbu	a0,3(a1)
1c0084a2:	0075c683          	lbu	a3,7(a1)
1c0084a6:	0642                	slli	a2,a2,0x10
1c0084a8:	07a2                	slli	a5,a5,0x8
1c0084aa:	08a2                	slli	a7,a7,0x8
1c0084ac:	8fd1                	or	a5,a5,a2
1c0084ae:	0068e8b3          	or	a7,a7,t1
1c0084b2:	0842                	slli	a6,a6,0x10
1c0084b4:	00072303          	lw	t1,0(a4)
1c0084b8:	4350                	lw	a2,4(a4)
1c0084ba:	01c7e7b3          	or	a5,a5,t3
1c0084be:	0562                	slli	a0,a0,0x18
1c0084c0:	01186833          	or	a6,a6,a7
1c0084c4:	06e2                	slli	a3,a3,0x18
1c0084c6:	8fc9                	or	a5,a5,a0
1c0084c8:	0106e6b3          	or	a3,a3,a6
1c0084cc:	00f347b3          	xor	a5,t1,a5
1c0084d0:	8eb1                	xor	a3,a3,a2
1c0084d2:	c31c                	sw	a5,0(a4)
1c0084d4:	c354                	sw	a3,4(a4)
1c0084d6:	05a1                	addi	a1,a1,8
1c0084d8:	0721                	addi	a4,a4,8
1c0084da:	fab916e3          	bne	s2,a1,1c008486 <keccak_absorb.constprop.7+0x3e>
1c0084de:	85ce                	mv	a1,s3
1c0084e0:	854e                	mv	a0,s3
1c0084e2:	35bd                	jal	1c008350 <KeccakF1600_StatePermute>
1c0084e4:	f78a0a13          	addi	s4,s4,-136
1c0084e8:	85ca                	mv	a1,s2
1c0084ea:	f9446be3          	bltu	s0,s4,1c008480 <keccak_absorb.constprop.7+0x38>
1c0084ee:	003c                	addi	a5,sp,8
1c0084f0:	0918                	addi	a4,sp,144
1c0084f2:	883e                	mv	a6,a5
1c0084f4:	4681                	li	a3,0
1c0084f6:	00d82023          	sw	a3,0(a6)
1c0084fa:	0811                	addi	a6,a6,4
1c0084fc:	ff071ce3          	bne	a4,a6,1c0084f4 <keccak_absorb.constprop.7+0xac>
1c008500:	060a0463          	beqz	s4,1c008568 <keccak_absorb.constprop.7+0x120>
1c008504:	fffa0713          	addi	a4,s4,-1
1c008508:	4689                	li	a3,2
1c00850a:	0ee6f163          	bleu	a4,a3,1c0085ec <keccak_absorb.constprop.7+0x1a4>
1c00850e:	002a5893          	srli	a7,s4,0x2
1c008512:	862e                	mv	a2,a1
1c008514:	86be                	mv	a3,a5
1c008516:	4701                	li	a4,0
1c008518:	4208                	lw	a0,0(a2)
1c00851a:	0705                	addi	a4,a4,1
1c00851c:	c288                	sw	a0,0(a3)
1c00851e:	0611                	addi	a2,a2,4
1c008520:	0691                	addi	a3,a3,4
1c008522:	ff176be3          	bltu	a4,a7,1c008518 <keccak_absorb.constprop.7+0xd0>
1c008526:	ffca7713          	andi	a4,s4,-4
1c00852a:	02ea0f63          	beq	s4,a4,1c008568 <keccak_absorb.constprop.7+0x120>
1c00852e:	00e586b3          	add	a3,a1,a4
1c008532:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c008536:	0988                	addi	a0,sp,208
1c008538:	00e506b3          	add	a3,a0,a4
1c00853c:	f2c68c23          	sb	a2,-200(a3)
1c008540:	00170693          	addi	a3,a4,1
1c008544:	0346f263          	bleu	s4,a3,1c008568 <keccak_absorb.constprop.7+0x120>
1c008548:	00d58633          	add	a2,a1,a3
1c00854c:	00064603          	lbu	a2,0(a2)
1c008550:	96aa                	add	a3,a3,a0
1c008552:	f2c68c23          	sb	a2,-200(a3)
1c008556:	0709                	addi	a4,a4,2
1c008558:	01477863          	bleu	s4,a4,1c008568 <keccak_absorb.constprop.7+0x120>
1c00855c:	95ba                	add	a1,a1,a4
1c00855e:	0005c683          	lbu	a3,0(a1)
1c008562:	972a                	add	a4,a4,a0
1c008564:	f2d70c23          	sb	a3,-200(a4)
1c008568:	0990                	addi	a2,sp,208
1c00856a:	9a32                	add	s4,s4,a2
1c00856c:	f29a0c23          	sb	s1,-200(s4)
1c008570:	08f14703          	lbu	a4,143(sp)
1c008574:	f8076713          	ori	a4,a4,-128
1c008578:	08e107a3          	sb	a4,143(sp)
1c00857c:	0017c703          	lbu	a4,1(a5)
1c008580:	0027c883          	lbu	a7,2(a5)
1c008584:	0057c503          	lbu	a0,5(a5)
1c008588:	0047c303          	lbu	t1,4(a5)
1c00858c:	0067c583          	lbu	a1,6(a5)
1c008590:	0007ce03          	lbu	t3,0(a5)
1c008594:	0037c603          	lbu	a2,3(a5)
1c008598:	0077c683          	lbu	a3,7(a5)
1c00859c:	08c2                	slli	a7,a7,0x10
1c00859e:	0722                	slli	a4,a4,0x8
1c0085a0:	0522                	slli	a0,a0,0x8
1c0085a2:	01176733          	or	a4,a4,a7
1c0085a6:	00656533          	or	a0,a0,t1
1c0085aa:	05c2                	slli	a1,a1,0x10
1c0085ac:	000aa303          	lw	t1,0(s5)
1c0085b0:	004aa883          	lw	a7,4(s5)
1c0085b4:	01c76733          	or	a4,a4,t3
1c0085b8:	0662                	slli	a2,a2,0x18
1c0085ba:	8dc9                	or	a1,a1,a0
1c0085bc:	06e2                	slli	a3,a3,0x18
1c0085be:	8f51                	or	a4,a4,a2
1c0085c0:	8ecd                	or	a3,a3,a1
1c0085c2:	00e34733          	xor	a4,t1,a4
1c0085c6:	00d8c6b3          	xor	a3,a7,a3
1c0085ca:	00eaa023          	sw	a4,0(s5)
1c0085ce:	00daa223          	sw	a3,4(s5)
1c0085d2:	07a1                	addi	a5,a5,8
1c0085d4:	0aa1                	addi	s5,s5,8
1c0085d6:	faf813e3          	bne	a6,a5,1c00857c <keccak_absorb.constprop.7+0x134>
1c0085da:	50be                	lw	ra,236(sp)
1c0085dc:	542e                	lw	s0,232(sp)
1c0085de:	549e                	lw	s1,228(sp)
1c0085e0:	590e                	lw	s2,224(sp)
1c0085e2:	49fe                	lw	s3,220(sp)
1c0085e4:	4a6e                	lw	s4,216(sp)
1c0085e6:	4ade                	lw	s5,212(sp)
1c0085e8:	616d                	addi	sp,sp,240
1c0085ea:	8082                	ret
1c0085ec:	4701                	li	a4,0
1c0085ee:	b781                	j	1c00852e <keccak_absorb.constprop.7+0xe6>

1c0085f0 <shake128_absorb>:
1c0085f0:	7151                	addi	sp,sp,-240
1c0085f2:	d5a2                	sw	s0,232(sp)
1c0085f4:	842a                	mv	s0,a0
1c0085f6:	0c800513          	li	a0,200
1c0085fa:	d1ca                	sw	s2,224(sp)
1c0085fc:	cfce                	sw	s3,220(sp)
1c0085fe:	d786                	sw	ra,236(sp)
1c008600:	d3a6                	sw	s1,228(sp)
1c008602:	cdd2                	sw	s4,216(sp)
1c008604:	892e                	mv	s2,a1
1c008606:	89b2                	mv	s3,a2
1c008608:	7a5020ef          	jal	ra,1c00b5ac <pi_l2_malloc>
1c00860c:	c008                	sw	a0,0(s0)
1c00860e:	1a050663          	beqz	a0,1c0087ba <shake128_absorb+0x1ca>
1c008612:	8a2a                	mv	s4,a0
1c008614:	0c850713          	addi	a4,a0,200
1c008618:	87aa                	mv	a5,a0
1c00861a:	4601                	li	a2,0
1c00861c:	4681                	li	a3,0
1c00861e:	c390                	sw	a2,0(a5)
1c008620:	c3d4                	sw	a3,4(a5)
1c008622:	07a1                	addi	a5,a5,8
1c008624:	fef71be3          	bne	a4,a5,1c00861a <shake128_absorb+0x2a>
1c008628:	0a700793          	li	a5,167
1c00862c:	0937f163          	bleu	s3,a5,1c0086ae <shake128_absorb+0xbe>
1c008630:	412a04b3          	sub	s1,s4,s2
1c008634:	0a700413          	li	s0,167
1c008638:	85ca                	mv	a1,s2
1c00863a:	0a890913          	addi	s2,s2,168
1c00863e:	0015c783          	lbu	a5,1(a1)
1c008642:	0025c603          	lbu	a2,2(a1)
1c008646:	0055c803          	lbu	a6,5(a1)
1c00864a:	0045c303          	lbu	t1,4(a1)
1c00864e:	0065c503          	lbu	a0,6(a1)
1c008652:	0005ce03          	lbu	t3,0(a1)
1c008656:	0035c683          	lbu	a3,3(a1)
1c00865a:	0075c703          	lbu	a4,7(a1)
1c00865e:	0642                	slli	a2,a2,0x10
1c008660:	07a2                	slli	a5,a5,0x8
1c008662:	0822                	slli	a6,a6,0x8
1c008664:	00b488b3          	add	a7,s1,a1
1c008668:	8fd1                	or	a5,a5,a2
1c00866a:	00686833          	or	a6,a6,t1
1c00866e:	0542                	slli	a0,a0,0x10
1c008670:	0008a603          	lw	a2,0(a7)
1c008674:	0048a303          	lw	t1,4(a7)
1c008678:	01c7e7b3          	or	a5,a5,t3
1c00867c:	06e2                	slli	a3,a3,0x18
1c00867e:	01056533          	or	a0,a0,a6
1c008682:	0762                	slli	a4,a4,0x18
1c008684:	8fd5                	or	a5,a5,a3
1c008686:	8f49                	or	a4,a4,a0
1c008688:	8fb1                	xor	a5,a5,a2
1c00868a:	00e34733          	xor	a4,t1,a4
1c00868e:	00f8a023          	sw	a5,0(a7)
1c008692:	00e8a223          	sw	a4,4(a7)
1c008696:	05a1                	addi	a1,a1,8
1c008698:	fab913e3          	bne	s2,a1,1c00863e <shake128_absorb+0x4e>
1c00869c:	85d2                	mv	a1,s4
1c00869e:	8552                	mv	a0,s4
1c0086a0:	f5898993          	addi	s3,s3,-168
1c0086a4:	3175                	jal	1c008350 <KeccakF1600_StatePermute>
1c0086a6:	f5848493          	addi	s1,s1,-168
1c0086aa:	f93467e3          	bltu	s0,s3,1c008638 <shake128_absorb+0x48>
1c0086ae:	191c                	addi	a5,sp,176
1c0086b0:	00810813          	addi	a6,sp,8
1c0086b4:	4681                	li	a3,0
1c0086b6:	00d82023          	sw	a3,0(a6)
1c0086ba:	0811                	addi	a6,a6,4
1c0086bc:	ff079ce3          	bne	a5,a6,1c0086b4 <shake128_absorb+0xc4>
1c0086c0:	06098563          	beqz	s3,1c00872a <shake128_absorb+0x13a>
1c0086c4:	fff98793          	addi	a5,s3,-1
1c0086c8:	4709                	li	a4,2
1c0086ca:	0ef77663          	bleu	a5,a4,1c0087b6 <shake128_absorb+0x1c6>
1c0086ce:	0029d513          	srli	a0,s3,0x2
1c0086d2:	86ca                	mv	a3,s2
1c0086d4:	0038                	addi	a4,sp,8
1c0086d6:	4781                	li	a5,0
1c0086d8:	4290                	lw	a2,0(a3)
1c0086da:	0785                	addi	a5,a5,1
1c0086dc:	c310                	sw	a2,0(a4)
1c0086de:	0691                	addi	a3,a3,4
1c0086e0:	0711                	addi	a4,a4,4
1c0086e2:	fea7ebe3          	bltu	a5,a0,1c0086d8 <shake128_absorb+0xe8>
1c0086e6:	ffc9f793          	andi	a5,s3,-4
1c0086ea:	04f98063          	beq	s3,a5,1c00872a <shake128_absorb+0x13a>
1c0086ee:	00f90733          	add	a4,s2,a5
1c0086f2:	00074683          	lbu	a3,0(a4)
1c0086f6:	0990                	addi	a2,sp,208
1c0086f8:	00f60733          	add	a4,a2,a5
1c0086fc:	f2d70c23          	sb	a3,-200(a4)
1c008700:	00178713          	addi	a4,a5,1
1c008704:	03377363          	bleu	s3,a4,1c00872a <shake128_absorb+0x13a>
1c008708:	00e906b3          	add	a3,s2,a4
1c00870c:	0006c683          	lbu	a3,0(a3)
1c008710:	9732                	add	a4,a4,a2
1c008712:	f2d70c23          	sb	a3,-200(a4)
1c008716:	0789                	addi	a5,a5,2
1c008718:	0137f963          	bleu	s3,a5,1c00872a <shake128_absorb+0x13a>
1c00871c:	00f905b3          	add	a1,s2,a5
1c008720:	0005c703          	lbu	a4,0(a1)
1c008724:	97b2                	add	a5,a5,a2
1c008726:	f2e78c23          	sb	a4,-200(a5)
1c00872a:	0994                	addi	a3,sp,208
1c00872c:	47fd                	li	a5,31
1c00872e:	99b6                	add	s3,s3,a3
1c008730:	f2f98c23          	sb	a5,-200(s3)
1c008734:	0af14703          	lbu	a4,175(sp)
1c008738:	003c                	addi	a5,sp,8
1c00873a:	f8076713          	ori	a4,a4,-128
1c00873e:	0ae107a3          	sb	a4,175(sp)
1c008742:	40fa0a33          	sub	s4,s4,a5
1c008746:	0017c703          	lbu	a4,1(a5)
1c00874a:	0027c303          	lbu	t1,2(a5)
1c00874e:	0057c503          	lbu	a0,5(a5)
1c008752:	0047ce03          	lbu	t3,4(a5)
1c008756:	0067c583          	lbu	a1,6(a5)
1c00875a:	0007ce83          	lbu	t4,0(a5)
1c00875e:	0037c603          	lbu	a2,3(a5)
1c008762:	0077c683          	lbu	a3,7(a5)
1c008766:	0342                	slli	t1,t1,0x10
1c008768:	0722                	slli	a4,a4,0x8
1c00876a:	0522                	slli	a0,a0,0x8
1c00876c:	00fa08b3          	add	a7,s4,a5
1c008770:	00676733          	or	a4,a4,t1
1c008774:	01c56533          	or	a0,a0,t3
1c008778:	05c2                	slli	a1,a1,0x10
1c00877a:	0008ae03          	lw	t3,0(a7)
1c00877e:	0048a303          	lw	t1,4(a7)
1c008782:	01d76733          	or	a4,a4,t4
1c008786:	0662                	slli	a2,a2,0x18
1c008788:	8dc9                	or	a1,a1,a0
1c00878a:	06e2                	slli	a3,a3,0x18
1c00878c:	8f51                	or	a4,a4,a2
1c00878e:	8ecd                	or	a3,a3,a1
1c008790:	00ee4733          	xor	a4,t3,a4
1c008794:	00d346b3          	xor	a3,t1,a3
1c008798:	00e8a023          	sw	a4,0(a7)
1c00879c:	00d8a223          	sw	a3,4(a7)
1c0087a0:	07a1                	addi	a5,a5,8
1c0087a2:	faf812e3          	bne	a6,a5,1c008746 <shake128_absorb+0x156>
1c0087a6:	50be                	lw	ra,236(sp)
1c0087a8:	542e                	lw	s0,232(sp)
1c0087aa:	549e                	lw	s1,228(sp)
1c0087ac:	590e                	lw	s2,224(sp)
1c0087ae:	49fe                	lw	s3,220(sp)
1c0087b0:	4a6e                	lw	s4,216(sp)
1c0087b2:	616d                	addi	sp,sp,240
1c0087b4:	8082                	ret
1c0087b6:	4781                	li	a5,0
1c0087b8:	bf1d                	j	1c0086ee <shake128_absorb+0xfe>
1c0087ba:	06f00513          	li	a0,111
1c0087be:	4a1010ef          	jal	ra,1c00a45e <exit>

1c0087c2 <shake128_squeezeblocks>:
1c0087c2:	1101                	addi	sp,sp,-32
1c0087c4:	c452                	sw	s4,8(sp)
1c0087c6:	ce06                	sw	ra,28(sp)
1c0087c8:	cc22                	sw	s0,24(sp)
1c0087ca:	ca26                	sw	s1,20(sp)
1c0087cc:	c84a                	sw	s2,16(sp)
1c0087ce:	c64e                	sw	s3,12(sp)
1c0087d0:	c256                	sw	s5,4(sp)
1c0087d2:	00062a03          	lw	s4,0(a2)
1c0087d6:	cdc9                	beqz	a1,1c008870 <shake128_squeezeblocks+0xae>
1c0087d8:	7941                	lui	s2,0xffff0
1c0087da:	ff0104b7          	lui	s1,0xff010
1c0087de:	01000437          	lui	s0,0x1000
1c0087e2:	89ae                	mv	s3,a1
1c0087e4:	8aaa                	mv	s5,a0
1c0087e6:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c0087ea:	14fd                	addi	s1,s1,-1
1c0087ec:	147d                	addi	s0,s0,-1
1c0087ee:	85d2                	mv	a1,s4
1c0087f0:	8552                	mv	a0,s4
1c0087f2:	3eb9                	jal	1c008350 <KeccakF1600_StatePermute>
1c0087f4:	85d6                	mv	a1,s5
1c0087f6:	8852                	mv	a6,s4
1c0087f8:	0a8a8513          	addi	a0,s5,168
1c0087fc:	00082603          	lw	a2,0(a6)
1c008800:	00482683          	lw	a3,4(a6)
1c008804:	00865313          	srli	t1,a2,0x8
1c008808:	0086d893          	srli	a7,a3,0x8
1c00880c:	0ff67713          	andi	a4,a2,255
1c008810:	0ff6f793          	andi	a5,a3,255
1c008814:	0ff37313          	andi	t1,t1,255
1c008818:	0ff8f893          	andi	a7,a7,255
1c00881c:	0322                	slli	t1,t1,0x8
1c00881e:	08a2                	slli	a7,a7,0x8
1c008820:	01277733          	and	a4,a4,s2
1c008824:	0127f7b3          	and	a5,a5,s2
1c008828:	00676733          	or	a4,a4,t1
1c00882c:	0117e7b3          	or	a5,a5,a7
1c008830:	00ff0337          	lui	t1,0xff0
1c008834:	00ff08b7          	lui	a7,0xff0
1c008838:	00667333          	and	t1,a2,t1
1c00883c:	0116f8b3          	and	a7,a3,a7
1c008840:	8f65                	and	a4,a4,s1
1c008842:	8fe5                	and	a5,a5,s1
1c008844:	00676733          	or	a4,a4,t1
1c008848:	8261                	srli	a2,a2,0x18
1c00884a:	0117e7b3          	or	a5,a5,a7
1c00884e:	82e1                	srli	a3,a3,0x18
1c008850:	0662                	slli	a2,a2,0x18
1c008852:	8f61                	and	a4,a4,s0
1c008854:	06e2                	slli	a3,a3,0x18
1c008856:	8fe1                	and	a5,a5,s0
1c008858:	8f51                	or	a4,a4,a2
1c00885a:	8fd5                	or	a5,a5,a3
1c00885c:	c198                	sw	a4,0(a1)
1c00885e:	c1dc                	sw	a5,4(a1)
1c008860:	05a1                	addi	a1,a1,8
1c008862:	0821                	addi	a6,a6,8
1c008864:	f8b51ce3          	bne	a0,a1,1c0087fc <shake128_squeezeblocks+0x3a>
1c008868:	19fd                	addi	s3,s3,-1
1c00886a:	8aaa                	mv	s5,a0
1c00886c:	f80991e3          	bnez	s3,1c0087ee <shake128_squeezeblocks+0x2c>
1c008870:	40f2                	lw	ra,28(sp)
1c008872:	4462                	lw	s0,24(sp)
1c008874:	44d2                	lw	s1,20(sp)
1c008876:	4942                	lw	s2,16(sp)
1c008878:	49b2                	lw	s3,12(sp)
1c00887a:	4a22                	lw	s4,8(sp)
1c00887c:	4a92                	lw	s5,4(sp)
1c00887e:	6105                	addi	sp,sp,32
1c008880:	8082                	ret

1c008882 <shake128_ctx_release>:
1c008882:	4108                	lw	a0,0(a0)
1c008884:	0c800593          	li	a1,200
1c008888:	5310206f          	j	1c00b5b8 <pi_l2_free>

1c00888c <shake256>:
1c00888c:	7131                	addi	sp,sp,-192
1c00888e:	db26                	sw	s1,180(sp)
1c008890:	d94a                	sw	s2,176(sp)
1c008892:	08800493          	li	s1,136
1c008896:	892a                	mv	s2,a0
1c008898:	0c800513          	li	a0,200
1c00889c:	dd22                	sw	s0,184(sp)
1c00889e:	d74e                	sw	s3,172(sp)
1c0088a0:	d552                	sw	s4,168(sp)
1c0088a2:	df06                	sw	ra,188(sp)
1c0088a4:	d356                	sw	s5,164(sp)
1c0088a6:	d15a                	sw	s6,160(sp)
1c0088a8:	cf5e                	sw	s7,156(sp)
1c0088aa:	cd62                	sw	s8,152(sp)
1c0088ac:	cb66                	sw	s9,148(sp)
1c0088ae:	89ae                	mv	s3,a1
1c0088b0:	8432                	mv	s0,a2
1c0088b2:	8a36                	mv	s4,a3
1c0088b4:	0295d4b3          	divu	s1,a1,s1
1c0088b8:	4f5020ef          	jal	ra,1c00b5ac <pi_l2_malloc>
1c0088bc:	20050163          	beqz	a0,1c008abe <shake256+0x232>
1c0088c0:	46fd                	li	a3,31
1c0088c2:	8652                	mv	a2,s4
1c0088c4:	85a2                	mv	a1,s0
1c0088c6:	8b2a                	mv	s6,a0
1c0088c8:	3641                	jal	1c008448 <keccak_absorb.constprop.7>
1c0088ca:	c4dd                	beqz	s1,1c008978 <shake256+0xec>
1c0088cc:	00449713          	slli	a4,s1,0x4
1c0088d0:	00970433          	add	s0,a4,s1
1c0088d4:	040e                	slli	s0,s0,0x3
1c0088d6:	7bc1                	lui	s7,0xffff0
1c0088d8:	ff010ab7          	lui	s5,0xff010
1c0088dc:	01000a37          	lui	s4,0x1000
1c0088e0:	412b0c33          	sub	s8,s6,s2
1c0088e4:	944a                	add	s0,s0,s2
1c0088e6:	8cca                	mv	s9,s2
1c0088e8:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0088ec:	1afd                	addi	s5,s5,-1
1c0088ee:	1a7d                	addi	s4,s4,-1
1c0088f0:	85da                	mv	a1,s6
1c0088f2:	855a                	mv	a0,s6
1c0088f4:	3cb1                	jal	1c008350 <KeccakF1600_StatePermute>
1c0088f6:	8666                	mv	a2,s9
1c0088f8:	088c8593          	addi	a1,s9,136
1c0088fc:	00cc07b3          	add	a5,s8,a2
1c008900:	4388                	lw	a0,0(a5)
1c008902:	43d4                	lw	a3,4(a5)
1c008904:	00855893          	srli	a7,a0,0x8
1c008908:	0086d813          	srli	a6,a3,0x8
1c00890c:	0ff57713          	andi	a4,a0,255
1c008910:	0ff6f793          	andi	a5,a3,255
1c008914:	0ff8f893          	andi	a7,a7,255
1c008918:	0ff87813          	andi	a6,a6,255
1c00891c:	08a2                	slli	a7,a7,0x8
1c00891e:	0822                	slli	a6,a6,0x8
1c008920:	01777733          	and	a4,a4,s7
1c008924:	0177f7b3          	and	a5,a5,s7
1c008928:	01176733          	or	a4,a4,a7
1c00892c:	0107e7b3          	or	a5,a5,a6
1c008930:	00ff08b7          	lui	a7,0xff0
1c008934:	00ff0837          	lui	a6,0xff0
1c008938:	011578b3          	and	a7,a0,a7
1c00893c:	0106f833          	and	a6,a3,a6
1c008940:	01577733          	and	a4,a4,s5
1c008944:	0157f7b3          	and	a5,a5,s5
1c008948:	01176733          	or	a4,a4,a7
1c00894c:	8161                	srli	a0,a0,0x18
1c00894e:	0107e7b3          	or	a5,a5,a6
1c008952:	82e1                	srli	a3,a3,0x18
1c008954:	0562                	slli	a0,a0,0x18
1c008956:	01477733          	and	a4,a4,s4
1c00895a:	06e2                	slli	a3,a3,0x18
1c00895c:	0147f7b3          	and	a5,a5,s4
1c008960:	8f49                	or	a4,a4,a0
1c008962:	8fd5                	or	a5,a5,a3
1c008964:	c218                	sw	a4,0(a2)
1c008966:	c25c                	sw	a5,4(a2)
1c008968:	0621                	addi	a2,a2,8
1c00896a:	f8c599e3          	bne	a1,a2,1c0088fc <shake256+0x70>
1c00896e:	8cae                	mv	s9,a1
1c008970:	f78c0c13          	addi	s8,s8,-136
1c008974:	f6b41ee3          	bne	s0,a1,1c0088f0 <shake256+0x64>
1c008978:	08800793          	li	a5,136
1c00897c:	02f9f9b3          	remu	s3,s3,a5
1c008980:	02099363          	bnez	s3,1c0089a6 <shake256+0x11a>
1c008984:	546a                	lw	s0,184(sp)
1c008986:	50fa                	lw	ra,188(sp)
1c008988:	54da                	lw	s1,180(sp)
1c00898a:	594a                	lw	s2,176(sp)
1c00898c:	59ba                	lw	s3,172(sp)
1c00898e:	5a2a                	lw	s4,168(sp)
1c008990:	5a9a                	lw	s5,164(sp)
1c008992:	4bfa                	lw	s7,156(sp)
1c008994:	4c6a                	lw	s8,152(sp)
1c008996:	4cda                	lw	s9,148(sp)
1c008998:	855a                	mv	a0,s6
1c00899a:	5b0a                	lw	s6,160(sp)
1c00899c:	0c800593          	li	a1,200
1c0089a0:	6129                	addi	sp,sp,192
1c0089a2:	4170206f          	j	1c00b5b8 <pi_l2_free>
1c0089a6:	85da                	mv	a1,s6
1c0089a8:	855a                	mv	a0,s6
1c0089aa:	325d                	jal	1c008350 <KeccakF1600_StatePermute>
1c0089ac:	002c                	addi	a1,sp,8
1c0089ae:	78c1                	lui	a7,0xffff0
1c0089b0:	ff010837          	lui	a6,0xff010
1c0089b4:	01000537          	lui	a0,0x1000
1c0089b8:	09010e13          	addi	t3,sp,144
1c0089bc:	862e                	mv	a2,a1
1c0089be:	40bb0333          	sub	t1,s6,a1
1c0089c2:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0089c6:	187d                	addi	a6,a6,-1
1c0089c8:	157d                	addi	a0,a0,-1
1c0089ca:	00c307b3          	add	a5,t1,a2
1c0089ce:	0007ae83          	lw	t4,0(a5)
1c0089d2:	43d4                	lw	a3,4(a5)
1c0089d4:	008edf93          	srli	t6,t4,0x8
1c0089d8:	0086df13          	srli	t5,a3,0x8
1c0089dc:	0ffef713          	andi	a4,t4,255
1c0089e0:	0ff6f793          	andi	a5,a3,255
1c0089e4:	0fffff93          	andi	t6,t6,255
1c0089e8:	0fff7f13          	andi	t5,t5,255
1c0089ec:	0fa2                	slli	t6,t6,0x8
1c0089ee:	0f22                	slli	t5,t5,0x8
1c0089f0:	01177733          	and	a4,a4,a7
1c0089f4:	0117f7b3          	and	a5,a5,a7
1c0089f8:	01f76733          	or	a4,a4,t6
1c0089fc:	01e7e7b3          	or	a5,a5,t5
1c008a00:	00ff0fb7          	lui	t6,0xff0
1c008a04:	00ff0f37          	lui	t5,0xff0
1c008a08:	01feffb3          	and	t6,t4,t6
1c008a0c:	01e6ff33          	and	t5,a3,t5
1c008a10:	01077733          	and	a4,a4,a6
1c008a14:	0107f7b3          	and	a5,a5,a6
1c008a18:	01f76733          	or	a4,a4,t6
1c008a1c:	018ede93          	srli	t4,t4,0x18
1c008a20:	01e7e7b3          	or	a5,a5,t5
1c008a24:	82e1                	srli	a3,a3,0x18
1c008a26:	0ee2                	slli	t4,t4,0x18
1c008a28:	8f69                	and	a4,a4,a0
1c008a2a:	06e2                	slli	a3,a3,0x18
1c008a2c:	8fe9                	and	a5,a5,a0
1c008a2e:	01d76733          	or	a4,a4,t4
1c008a32:	8fd5                	or	a5,a5,a3
1c008a34:	c218                	sw	a4,0(a2)
1c008a36:	c25c                	sw	a5,4(a2)
1c008a38:	0621                	addi	a2,a2,8
1c008a3a:	f8ce18e3          	bne	t3,a2,1c0089ca <shake256+0x13e>
1c008a3e:	fff98793          	addi	a5,s3,-1
1c008a42:	4709                	li	a4,2
1c008a44:	06f77963          	bleu	a5,a4,1c008ab6 <shake256+0x22a>
1c008a48:	00449713          	slli	a4,s1,0x4
1c008a4c:	009707b3          	add	a5,a4,s1
1c008a50:	078e                	slli	a5,a5,0x3
1c008a52:	0029d513          	srli	a0,s3,0x2
1c008a56:	97ca                	add	a5,a5,s2
1c008a58:	4681                	li	a3,0
1c008a5a:	4190                	lw	a2,0(a1)
1c008a5c:	0685                	addi	a3,a3,1
1c008a5e:	c390                	sw	a2,0(a5)
1c008a60:	0591                	addi	a1,a1,4
1c008a62:	0791                	addi	a5,a5,4
1c008a64:	fea6ebe3          	bltu	a3,a0,1c008a5a <shake256+0x1ce>
1c008a68:	ffc9f693          	andi	a3,s3,-4
1c008a6c:	f0d98ce3          	beq	s3,a3,1c008984 <shake256+0xf8>
1c008a70:	009707b3          	add	a5,a4,s1
1c008a74:	090c                	addi	a1,sp,144
1c008a76:	00d58733          	add	a4,a1,a3
1c008a7a:	078e                	slli	a5,a5,0x3
1c008a7c:	f7874603          	lbu	a2,-136(a4)
1c008a80:	97ca                	add	a5,a5,s2
1c008a82:	00d78733          	add	a4,a5,a3
1c008a86:	00c70023          	sb	a2,0(a4)
1c008a8a:	00168713          	addi	a4,a3,1
1c008a8e:	ef377be3          	bleu	s3,a4,1c008984 <shake256+0xf8>
1c008a92:	00e58633          	add	a2,a1,a4
1c008a96:	f7864603          	lbu	a2,-136(a2)
1c008a9a:	973e                	add	a4,a4,a5
1c008a9c:	00c70023          	sb	a2,0(a4)
1c008aa0:	0689                	addi	a3,a3,2
1c008aa2:	ef36f1e3          	bleu	s3,a3,1c008984 <shake256+0xf8>
1c008aa6:	00d58733          	add	a4,a1,a3
1c008aaa:	f7874703          	lbu	a4,-136(a4)
1c008aae:	97b6                	add	a5,a5,a3
1c008ab0:	00e78023          	sb	a4,0(a5)
1c008ab4:	bdc1                	j	1c008984 <shake256+0xf8>
1c008ab6:	4681                	li	a3,0
1c008ab8:	00449713          	slli	a4,s1,0x4
1c008abc:	bf55                	j	1c008a70 <shake256+0x1e4>
1c008abe:	06f00513          	li	a0,111
1c008ac2:	19d010ef          	jal	ra,1c00a45e <exit>

1c008ac6 <sha3_256>:
1c008ac6:	7111                	addi	sp,sp,-256
1c008ac8:	dda2                	sw	s0,248(sp)
1c008aca:	4699                	li	a3,6
1c008acc:	842a                	mv	s0,a0
1c008ace:	0028                	addi	a0,sp,8
1c008ad0:	df86                	sw	ra,252(sp)
1c008ad2:	dba6                	sw	s1,244(sp)
1c008ad4:	d9ca                	sw	s2,240(sp)
1c008ad6:	d7ce                	sw	s3,236(sp)
1c008ad8:	d5d2                	sw	s4,232(sp)
1c008ada:	d3d6                	sw	s5,228(sp)
1c008adc:	d1da                	sw	s6,224(sp)
1c008ade:	cfde                	sw	s7,220(sp)
1c008ae0:	cde2                	sw	s8,216(sp)
1c008ae2:	cbe6                	sw	s9,212(sp)
1c008ae4:	c9ea                	sw	s10,208(sp)
1c008ae6:	328d                	jal	1c008448 <keccak_absorb.constprop.7>
1c008ae8:	002c                	addi	a1,sp,8
1c008aea:	852e                	mv	a0,a1
1c008aec:	865ff0ef          	jal	ra,1c008350 <KeccakF1600_StatePermute>
1c008af0:	4f32                	lw	t5,12(sp)
1c008af2:	4922                	lw	s2,8(sp)
1c008af4:	4ec2                	lw	t4,16(sp)
1c008af6:	4e52                	lw	t3,20(sp)
1c008af8:	4362                	lw	t1,24(sp)
1c008afa:	44f2                	lw	s1,28(sp)
1c008afc:	5382                	lw	t2,32(sp)
1c008afe:	5292                	lw	t0,36(sp)
1c008b00:	00895813          	srli	a6,s2,0x8
1c008b04:	008f5513          	srli	a0,t5,0x8
1c008b08:	008ed593          	srli	a1,t4,0x8
1c008b0c:	008e5613          	srli	a2,t3,0x8
1c008b10:	00835693          	srli	a3,t1,0x8
1c008b14:	0084d713          	srli	a4,s1,0x8
1c008b18:	0083d993          	srli	s3,t2,0x8
1c008b1c:	0082df93          	srli	t6,t0,0x8
1c008b20:	0ff87813          	andi	a6,a6,255
1c008b24:	0ff57513          	andi	a0,a0,255
1c008b28:	0ff5f593          	andi	a1,a1,255
1c008b2c:	0ff67613          	andi	a2,a2,255
1c008b30:	0ff6f693          	andi	a3,a3,255
1c008b34:	0ff77713          	andi	a4,a4,255
1c008b38:	0ff9f993          	andi	s3,s3,255
1c008b3c:	0fffff93          	andi	t6,t6,255
1c008b40:	0fff7d13          	andi	s10,t5,255
1c008b44:	0ffefc93          	andi	s9,t4,255
1c008b48:	0ffe7c13          	andi	s8,t3,255
1c008b4c:	0ff37b93          	andi	s7,t1,255
1c008b50:	0ff4fb13          	andi	s6,s1,255
1c008b54:	0ff3fa93          	andi	s5,t2,255
1c008b58:	0ff2fa13          	andi	s4,t0,255
1c008b5c:	0822                	slli	a6,a6,0x8
1c008b5e:	0ff97893          	andi	a7,s2,255
1c008b62:	0522                	slli	a0,a0,0x8
1c008b64:	05a2                	slli	a1,a1,0x8
1c008b66:	0622                	slli	a2,a2,0x8
1c008b68:	06a2                	slli	a3,a3,0x8
1c008b6a:	0722                	slli	a4,a4,0x8
1c008b6c:	09a2                	slli	s3,s3,0x8
1c008b6e:	0fa2                	slli	t6,t6,0x8
1c008b70:	ff0107b7          	lui	a5,0xff010
1c008b74:	17fd                	addi	a5,a5,-1
1c008b76:	01fa6fb3          	or	t6,s4,t6
1c008b7a:	0108e8b3          	or	a7,a7,a6
1c008b7e:	00ff0a37          	lui	s4,0xff0
1c008b82:	00ad6833          	or	a6,s10,a0
1c008b86:	00bce533          	or	a0,s9,a1
1c008b8a:	00ff0d37          	lui	s10,0xff0
1c008b8e:	00cc65b3          	or	a1,s8,a2
1c008b92:	00ff0cb7          	lui	s9,0xff0
1c008b96:	00dbe633          	or	a2,s7,a3
1c008b9a:	00ff0c37          	lui	s8,0xff0
1c008b9e:	00eb66b3          	or	a3,s6,a4
1c008ba2:	00ff0bb7          	lui	s7,0xff0
1c008ba6:	013ae733          	or	a4,s5,s3
1c008baa:	00ff0b37          	lui	s6,0xff0
1c008bae:	00ff0ab7          	lui	s5,0xff0
1c008bb2:	00ff09b7          	lui	s3,0xff0
1c008bb6:	01a97d33          	and	s10,s2,s10
1c008bba:	019f7cb3          	and	s9,t5,s9
1c008bbe:	018efc33          	and	s8,t4,s8
1c008bc2:	017e7bb3          	and	s7,t3,s7
1c008bc6:	01637b33          	and	s6,t1,s6
1c008bca:	0154fab3          	and	s5,s1,s5
1c008bce:	0143fa33          	and	s4,t2,s4
1c008bd2:	0132f9b3          	and	s3,t0,s3
1c008bd6:	00f8f8b3          	and	a7,a7,a5
1c008bda:	00f87833          	and	a6,a6,a5
1c008bde:	8d7d                	and	a0,a0,a5
1c008be0:	8dfd                	and	a1,a1,a5
1c008be2:	8e7d                	and	a2,a2,a5
1c008be4:	8efd                	and	a3,a3,a5
1c008be6:	8f7d                	and	a4,a4,a5
1c008be8:	00fff7b3          	and	a5,t6,a5
1c008bec:	01000fb7          	lui	t6,0x1000
1c008bf0:	1ffd                	addi	t6,t6,-1
1c008bf2:	01a8e8b3          	or	a7,a7,s10
1c008bf6:	01986833          	or	a6,a6,s9
1c008bfa:	01856533          	or	a0,a0,s8
1c008bfe:	0175e5b3          	or	a1,a1,s7
1c008c02:	01666633          	or	a2,a2,s6
1c008c06:	0156e6b3          	or	a3,a3,s5
1c008c0a:	01476733          	or	a4,a4,s4
1c008c0e:	0137e7b3          	or	a5,a5,s3
1c008c12:	01895913          	srli	s2,s2,0x18
1c008c16:	018f5f13          	srli	t5,t5,0x18
1c008c1a:	018ede93          	srli	t4,t4,0x18
1c008c1e:	018e5e13          	srli	t3,t3,0x18
1c008c22:	01835313          	srli	t1,t1,0x18
1c008c26:	80e1                	srli	s1,s1,0x18
1c008c28:	0183d393          	srli	t2,t2,0x18
1c008c2c:	0182d293          	srli	t0,t0,0x18
1c008c30:	0962                	slli	s2,s2,0x18
1c008c32:	04e2                	slli	s1,s1,0x18
1c008c34:	01f8f8b3          	and	a7,a7,t6
1c008c38:	0f62                	slli	t5,t5,0x18
1c008c3a:	01f87833          	and	a6,a6,t6
1c008c3e:	0ee2                	slli	t4,t4,0x18
1c008c40:	01f57533          	and	a0,a0,t6
1c008c44:	0e62                	slli	t3,t3,0x18
1c008c46:	01f5f5b3          	and	a1,a1,t6
1c008c4a:	0362                	slli	t1,t1,0x18
1c008c4c:	01f67633          	and	a2,a2,t6
1c008c50:	01f6f6b3          	and	a3,a3,t6
1c008c54:	03e2                	slli	t2,t2,0x18
1c008c56:	01f77733          	and	a4,a4,t6
1c008c5a:	02e2                	slli	t0,t0,0x18
1c008c5c:	01f7f7b3          	and	a5,a5,t6
1c008c60:	0128e8b3          	or	a7,a7,s2
1c008c64:	8ec5                	or	a3,a3,s1
1c008c66:	01e86833          	or	a6,a6,t5
1c008c6a:	01d56533          	or	a0,a0,t4
1c008c6e:	01c5e5b3          	or	a1,a1,t3
1c008c72:	00666633          	or	a2,a2,t1
1c008c76:	00776733          	or	a4,a4,t2
1c008c7a:	0057e7b3          	or	a5,a5,t0
1c008c7e:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c008c82:	01042223          	sw	a6,4(s0)
1c008c86:	c408                	sw	a0,8(s0)
1c008c88:	c44c                	sw	a1,12(s0)
1c008c8a:	c810                	sw	a2,16(s0)
1c008c8c:	c854                	sw	a3,20(s0)
1c008c8e:	cc18                	sw	a4,24(s0)
1c008c90:	cc5c                	sw	a5,28(s0)
1c008c92:	50fe                	lw	ra,252(sp)
1c008c94:	546e                	lw	s0,248(sp)
1c008c96:	54de                	lw	s1,244(sp)
1c008c98:	594e                	lw	s2,240(sp)
1c008c9a:	59be                	lw	s3,236(sp)
1c008c9c:	5a2e                	lw	s4,232(sp)
1c008c9e:	5a9e                	lw	s5,228(sp)
1c008ca0:	5b0e                	lw	s6,224(sp)
1c008ca2:	4bfe                	lw	s7,220(sp)
1c008ca4:	4c6e                	lw	s8,216(sp)
1c008ca6:	4cde                	lw	s9,212(sp)
1c008ca8:	4d4e                	lw	s10,208(sp)
1c008caa:	6111                	addi	sp,sp,256
1c008cac:	8082                	ret

1c008cae <sha3_512>:
1c008cae:	db010113          	addi	sp,sp,-592
1c008cb2:	24812423          	sw	s0,584(sp)
1c008cb6:	23312e23          	sw	s3,572(sp)
1c008cba:	23412c23          	sw	s4,568(sp)
1c008cbe:	24112623          	sw	ra,588(sp)
1c008cc2:	24912223          	sw	s1,580(sp)
1c008cc6:	25212023          	sw	s2,576(sp)
1c008cca:	23512a23          	sw	s5,564(sp)
1c008cce:	23612823          	sw	s6,560(sp)
1c008cd2:	23712623          	sw	s7,556(sp)
1c008cd6:	23812423          	sw	s8,552(sp)
1c008cda:	23912223          	sw	s9,548(sp)
1c008cde:	23a12023          	sw	s10,544(sp)
1c008ce2:	21b12e23          	sw	s11,540(sp)
1c008ce6:	842a                	mv	s0,a0
1c008ce8:	8a32                	mv	s4,a2
1c008cea:	14810993          	addi	s3,sp,328
1c008cee:	011c                	addi	a5,sp,128
1c008cf0:	4601                	li	a2,0
1c008cf2:	4681                	li	a3,0
1c008cf4:	c390                	sw	a2,0(a5)
1c008cf6:	c3d4                	sw	a3,4(a5)
1c008cf8:	07a1                	addi	a5,a5,8
1c008cfa:	fef99be3          	bne	s3,a5,1c008cf0 <sha3_512+0x42>
1c008cfe:	04700793          	li	a5,71
1c008d02:	0747fe63          	bleu	s4,a5,1c008d7e <sha3_512+0xd0>
1c008d06:	04700493          	li	s1,71
1c008d0a:	87ae                	mv	a5,a1
1c008d0c:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c008d10:	0114                	addi	a3,sp,128
1c008d12:	0017c703          	lbu	a4,1(a5)
1c008d16:	0027c583          	lbu	a1,2(a5)
1c008d1a:	0057c883          	lbu	a7,5(a5)
1c008d1e:	0047c303          	lbu	t1,4(a5)
1c008d22:	0067c803          	lbu	a6,6(a5)
1c008d26:	0007ce03          	lbu	t3,0(a5)
1c008d2a:	0037c503          	lbu	a0,3(a5)
1c008d2e:	0077c603          	lbu	a2,7(a5)
1c008d32:	05c2                	slli	a1,a1,0x10
1c008d34:	0722                	slli	a4,a4,0x8
1c008d36:	08a2                	slli	a7,a7,0x8
1c008d38:	8f4d                	or	a4,a4,a1
1c008d3a:	0068e8b3          	or	a7,a7,t1
1c008d3e:	0842                	slli	a6,a6,0x10
1c008d40:	428c                	lw	a1,0(a3)
1c008d42:	0046a303          	lw	t1,4(a3)
1c008d46:	01c76733          	or	a4,a4,t3
1c008d4a:	0562                	slli	a0,a0,0x18
1c008d4c:	01186833          	or	a6,a6,a7
1c008d50:	0662                	slli	a2,a2,0x18
1c008d52:	8f49                	or	a4,a4,a0
1c008d54:	01066633          	or	a2,a2,a6
1c008d58:	8f2d                	xor	a4,a4,a1
1c008d5a:	00c34633          	xor	a2,t1,a2
1c008d5e:	c298                	sw	a4,0(a3)
1c008d60:	c2d0                	sw	a2,4(a3)
1c008d62:	07a1                	addi	a5,a5,8
1c008d64:	06a1                	addi	a3,a3,8
1c008d66:	faf916e3          	bne	s2,a5,1c008d12 <sha3_512+0x64>
1c008d6a:	010c                	addi	a1,sp,128
1c008d6c:	852e                	mv	a0,a1
1c008d6e:	de2ff0ef          	jal	ra,1c008350 <KeccakF1600_StatePermute>
1c008d72:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c008d76:	87ca                	mv	a5,s2
1c008d78:	f944eae3          	bltu	s1,s4,1c008d0c <sha3_512+0x5e>
1c008d7c:	85ca                	mv	a1,s2
1c008d7e:	0b18                	addi	a4,sp,400
1c008d80:	87ce                	mv	a5,s3
1c008d82:	4681                	li	a3,0
1c008d84:	c394                	sw	a3,0(a5)
1c008d86:	0791                	addi	a5,a5,4
1c008d88:	fef71de3          	bne	a4,a5,1c008d82 <sha3_512+0xd4>
1c008d8c:	060a0563          	beqz	s4,1c008df6 <sha3_512+0x148>
1c008d90:	fffa0793          	addi	a5,s4,-1
1c008d94:	4709                	li	a4,2
1c008d96:	06f772e3          	bleu	a5,a4,1c0095fa <sha3_512+0x94c>
1c008d9a:	002a5613          	srli	a2,s4,0x2
1c008d9e:	872e                	mv	a4,a1
1c008da0:	4781                	li	a5,0
1c008da2:	4314                	lw	a3,0(a4)
1c008da4:	0785                	addi	a5,a5,1
1c008da6:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c008daa:	0711                	addi	a4,a4,4
1c008dac:	0991                	addi	s3,s3,4
1c008dae:	fec7eae3          	bltu	a5,a2,1c008da2 <sha3_512+0xf4>
1c008db2:	ffca7793          	andi	a5,s4,-4
1c008db6:	04fa0063          	beq	s4,a5,1c008df6 <sha3_512+0x148>
1c008dba:	00f58733          	add	a4,a1,a5
1c008dbe:	00074683          	lbu	a3,0(a4)
1c008dc2:	21010813          	addi	a6,sp,528
1c008dc6:	00f80733          	add	a4,a6,a5
1c008dca:	f2d70c23          	sb	a3,-200(a4)
1c008dce:	00178713          	addi	a4,a5,1
1c008dd2:	03477263          	bleu	s4,a4,1c008df6 <sha3_512+0x148>
1c008dd6:	00e586b3          	add	a3,a1,a4
1c008dda:	0006c683          	lbu	a3,0(a3)
1c008dde:	9742                	add	a4,a4,a6
1c008de0:	f2d70c23          	sb	a3,-200(a4)
1c008de4:	0789                	addi	a5,a5,2
1c008de6:	0147f863          	bleu	s4,a5,1c008df6 <sha3_512+0x148>
1c008dea:	95be                	add	a1,a1,a5
1c008dec:	0005c703          	lbu	a4,0(a1)
1c008df0:	97c2                	add	a5,a5,a6
1c008df2:	f2e78c23          	sb	a4,-200(a5)
1c008df6:	21010893          	addi	a7,sp,528
1c008dfa:	9a46                	add	s4,s4,a7
1c008dfc:	4799                	li	a5,6
1c008dfe:	f2fa0c23          	sb	a5,-200(s4)
1c008e02:	14a14703          	lbu	a4,330(sp)
1c008e06:	14914f03          	lbu	t5,329(sp)
1c008e0a:	15214783          	lbu	a5,338(sp)
1c008e0e:	15114e83          	lbu	t4,337(sp)
1c008e12:	15514303          	lbu	t1,341(sp)
1c008e16:	15414383          	lbu	t2,340(sp)
1c008e1a:	15614803          	lbu	a6,342(sp)
1c008e1e:	14814283          	lbu	t0,328(sp)
1c008e22:	14b14503          	lbu	a0,331(sp)
1c008e26:	15014f83          	lbu	t6,336(sp)
1c008e2a:	15314603          	lbu	a2,339(sp)
1c008e2e:	15714683          	lbu	a3,343(sp)
1c008e32:	0f22                	slli	t5,t5,0x8
1c008e34:	0ea2                	slli	t4,t4,0x8
1c008e36:	0742                	slli	a4,a4,0x10
1c008e38:	07c2                	slli	a5,a5,0x10
1c008e3a:	0322                	slli	t1,t1,0x8
1c008e3c:	14d14e03          	lbu	t3,333(sp)
1c008e40:	00736333          	or	t1,t1,t2
1c008e44:	01e76733          	or	a4,a4,t5
1c008e48:	01d7e7b3          	or	a5,a5,t4
1c008e4c:	0842                	slli	a6,a6,0x10
1c008e4e:	14c14483          	lbu	s1,332(sp)
1c008e52:	14e14883          	lbu	a7,334(sp)
1c008e56:	00576733          	or	a4,a4,t0
1c008e5a:	01f7e7b3          	or	a5,a5,t6
1c008e5e:	00686833          	or	a6,a6,t1
1c008e62:	0662                	slli	a2,a2,0x18
1c008e64:	06e2                	slli	a3,a3,0x18
1c008e66:	0562                	slli	a0,a0,0x18
1c008e68:	14f14583          	lbu	a1,335(sp)
1c008e6c:	8d59                	or	a0,a0,a4
1c008e6e:	0e22                	slli	t3,t3,0x8
1c008e70:	00f66733          	or	a4,a2,a5
1c008e74:	0106e7b3          	or	a5,a3,a6
1c008e78:	468a                	lw	a3,128(sp)
1c008e7a:	009e6e33          	or	t3,t3,s1
1c008e7e:	08c2                	slli	a7,a7,0x10
1c008e80:	01c8e8b3          	or	a7,a7,t3
1c008e84:	8d35                	xor	a0,a0,a3
1c008e86:	05e2                	slli	a1,a1,0x18
1c008e88:	469a                	lw	a3,132(sp)
1c008e8a:	0115e5b3          	or	a1,a1,a7
1c008e8e:	8db5                	xor	a1,a1,a3
1c008e90:	46aa                	lw	a3,136(sp)
1c008e92:	15a14803          	lbu	a6,346(sp)
1c008e96:	8eb9                	xor	a3,a3,a4
1c008e98:	473a                	lw	a4,140(sp)
1c008e9a:	15914483          	lbu	s1,345(sp)
1c008e9e:	8f3d                	xor	a4,a4,a5
1c008ea0:	15814a83          	lbu	s5,344(sp)
1c008ea4:	15b14a03          	lbu	s4,347(sp)
1c008ea8:	15c14d03          	lbu	s10,348(sp)
1c008eac:	18f14783          	lbu	a5,399(sp)
1c008eb0:	c12a                	sw	a0,128(sp)
1c008eb2:	c32e                	sw	a1,132(sp)
1c008eb4:	c536                	sw	a3,136(sp)
1c008eb6:	c73a                	sw	a4,140(sp)
1c008eb8:	15d14903          	lbu	s2,349(sp)
1c008ebc:	15e14f83          	lbu	t6,350(sp)
1c008ec0:	16114283          	lbu	t0,353(sp)
1c008ec4:	16214f03          	lbu	t5,354(sp)
1c008ec8:	16d14883          	lbu	a7,365(sp)
1c008ecc:	16c14b83          	lbu	s7,364(sp)
1c008ed0:	04a2                	slli	s1,s1,0x8
1c008ed2:	0842                	slli	a6,a6,0x10
1c008ed4:	02a2                	slli	t0,t0,0x8
1c008ed6:	08a2                	slli	a7,a7,0x8
1c008ed8:	00986833          	or	a6,a6,s1
1c008edc:	0f42                	slli	t5,t5,0x10
1c008ede:	01e2ef33          	or	t5,t0,t5
1c008ee2:	01586833          	or	a6,a6,s5
1c008ee6:	0178e2b3          	or	t0,a7,s7
1c008eea:	018a1893          	slli	a7,s4,0x18
1c008eee:	15f14503          	lbu	a0,351(sp)
1c008ef2:	0108e833          	or	a6,a7,a6
1c008ef6:	0922                	slli	s2,s2,0x8
1c008ef8:	48ca                	lw	a7,144(sp)
1c008efa:	01a96933          	or	s2,s2,s10
1c008efe:	0fc2                	slli	t6,t6,0x10
1c008f00:	16014983          	lbu	s3,352(sp)
1c008f04:	16514e83          	lbu	t4,357(sp)
1c008f08:	16314583          	lbu	a1,355(sp)
1c008f0c:	012fefb3          	or	t6,t6,s2
1c008f10:	0108c8b3          	xor	a7,a7,a6
1c008f14:	0562                	slli	a0,a0,0x18
1c008f16:	485a                	lw	a6,148(sp)
1c008f18:	16414c83          	lbu	s9,356(sp)
1c008f1c:	16614c03          	lbu	s8,358(sp)
1c008f20:	01f56533          	or	a0,a0,t6
1c008f24:	16914e03          	lbu	t3,361(sp)
1c008f28:	16a14303          	lbu	t1,362(sp)
1c008f2c:	16714603          	lbu	a2,359(sp)
1c008f30:	013f6f33          	or	t5,t5,s3
1c008f34:	00a84833          	xor	a6,a6,a0
1c008f38:	0ea2                	slli	t4,t4,0x8
1c008f3a:	456a                	lw	a0,152(sp)
1c008f3c:	05e2                	slli	a1,a1,0x18
1c008f3e:	019ee4b3          	or	s1,t4,s9
1c008f42:	01e5e5b3          	or	a1,a1,t5
1c008f46:	010c1e93          	slli	t4,s8,0x10
1c008f4a:	16814383          	lbu	t2,360(sp)
1c008f4e:	16b14683          	lbu	a3,363(sp)
1c008f52:	009eeeb3          	or	t4,t4,s1
1c008f56:	8d2d                	xor	a0,a0,a1
1c008f58:	0342                	slli	t1,t1,0x10
1c008f5a:	45fa                	lw	a1,156(sp)
1c008f5c:	0e22                	slli	t3,t3,0x8
1c008f5e:	0662                	slli	a2,a2,0x18
1c008f60:	16e14b03          	lbu	s6,366(sp)
1c008f64:	01d66633          	or	a2,a2,t4
1c008f68:	006e6e33          	or	t3,t3,t1
1c008f6c:	16f14703          	lbu	a4,367(sp)
1c008f70:	007e6e33          	or	t3,t3,t2
1c008f74:	8db1                	xor	a1,a1,a2
1c008f76:	06e2                	slli	a3,a3,0x18
1c008f78:	560a                	lw	a2,160(sp)
1c008f7a:	01c6e6b3          	or	a3,a3,t3
1c008f7e:	010b1313          	slli	t1,s6,0x10
1c008f82:	00536333          	or	t1,t1,t0
1c008f86:	8e35                	xor	a2,a2,a3
1c008f88:	0762                	slli	a4,a4,0x18
1c008f8a:	569a                	lw	a3,164(sp)
1c008f8c:	00676733          	or	a4,a4,t1
1c008f90:	8f35                	xor	a4,a4,a3
1c008f92:	c946                	sw	a7,144(sp)
1c008f94:	cb42                	sw	a6,148(sp)
1c008f96:	cd2a                	sw	a0,152(sp)
1c008f98:	cf2e                	sw	a1,156(sp)
1c008f9a:	d132                	sw	a2,160(sp)
1c008f9c:	d33a                	sw	a4,164(sp)
1c008f9e:	17114e83          	lbu	t4,369(sp)
1c008fa2:	17214a83          	lbu	s5,370(sp)
1c008fa6:	17014903          	lbu	s2,368(sp)
1c008faa:	18114803          	lbu	a6,385(sp)
1c008fae:	18214483          	lbu	s1,386(sp)
1c008fb2:	18014283          	lbu	t0,384(sp)
1c008fb6:	18314703          	lbu	a4,387(sp)
1c008fba:	04c2                	slli	s1,s1,0x10
1c008fbc:	0822                	slli	a6,a6,0x8
1c008fbe:	17514f83          	lbu	t6,373(sp)
1c008fc2:	17314503          	lbu	a0,371(sp)
1c008fc6:	0ac2                	slli	s5,s5,0x10
1c008fc8:	00986833          	or	a6,a6,s1
1c008fcc:	0ea2                	slli	t4,t4,0x8
1c008fce:	17414b03          	lbu	s6,372(sp)
1c008fd2:	00586833          	or	a6,a6,t0
1c008fd6:	17614e03          	lbu	t3,374(sp)
1c008fda:	015eeeb3          	or	t4,t4,s5
1c008fde:	0762                	slli	a4,a4,0x18
1c008fe0:	17914303          	lbu	t1,377(sp)
1c008fe4:	17a14983          	lbu	s3,378(sp)
1c008fe8:	17714583          	lbu	a1,375(sp)
1c008fec:	012eeeb3          	or	t4,t4,s2
1c008ff0:	01076733          	or	a4,a4,a6
1c008ff4:	0fa2                	slli	t6,t6,0x8
1c008ff6:	582a                	lw	a6,168(sp)
1c008ff8:	0562                	slli	a0,a0,0x18
1c008ffa:	016fefb3          	or	t6,t6,s6
1c008ffe:	01d56533          	or	a0,a0,t4
1c009002:	0e42                	slli	t3,t3,0x10
1c009004:	17814383          	lbu	t2,376(sp)
1c009008:	01fe6e33          	or	t3,t3,t6
1c00900c:	17d14f03          	lbu	t5,381(sp)
1c009010:	17b14603          	lbu	a2,379(sp)
1c009014:	00a84833          	xor	a6,a6,a0
1c009018:	09c2                	slli	s3,s3,0x10
1c00901a:	553a                	lw	a0,172(sp)
1c00901c:	0322                	slli	t1,t1,0x8
1c00901e:	05e2                	slli	a1,a1,0x18
1c009020:	17c14a03          	lbu	s4,380(sp)
1c009024:	17e14883          	lbu	a7,382(sp)
1c009028:	01c5e5b3          	or	a1,a1,t3
1c00902c:	01336333          	or	t1,t1,s3
1c009030:	00736333          	or	t1,t1,t2
1c009034:	17f14683          	lbu	a3,383(sp)
1c009038:	8d2d                	xor	a0,a0,a1
1c00903a:	0f22                	slli	t5,t5,0x8
1c00903c:	55ca                	lw	a1,176(sp)
1c00903e:	0662                	slli	a2,a2,0x18
1c009040:	014f6f33          	or	t5,t5,s4
1c009044:	00666633          	or	a2,a2,t1
1c009048:	08c2                	slli	a7,a7,0x10
1c00904a:	01e8e8b3          	or	a7,a7,t5
1c00904e:	8db1                	xor	a1,a1,a2
1c009050:	06e2                	slli	a3,a3,0x18
1c009052:	565a                	lw	a2,180(sp)
1c009054:	0116e6b3          	or	a3,a3,a7
1c009058:	8e35                	xor	a2,a2,a3
1c00905a:	56ea                	lw	a3,184(sp)
1c00905c:	18414f03          	lbu	t5,388(sp)
1c009060:	8f35                	xor	a4,a4,a3
1c009062:	d542                	sw	a6,168(sp)
1c009064:	d72a                	sw	a0,172(sp)
1c009066:	d92e                	sw	a1,176(sp)
1c009068:	db32                	sw	a2,180(sp)
1c00906a:	18514883          	lbu	a7,389(sp)
1c00906e:	18614503          	lbu	a0,390(sp)
1c009072:	18714603          	lbu	a2,391(sp)
1c009076:	dd3a                	sw	a4,184(sp)
1c009078:	18914703          	lbu	a4,393(sp)
1c00907c:	18a14303          	lbu	t1,394(sp)
1c009080:	18814e03          	lbu	t3,392(sp)
1c009084:	0342                	slli	t1,t1,0x10
1c009086:	18b14683          	lbu	a3,395(sp)
1c00908a:	0722                	slli	a4,a4,0x8
1c00908c:	00676733          	or	a4,a4,t1
1c009090:	08a2                	slli	a7,a7,0x8
1c009092:	01e8e8b3          	or	a7,a7,t5
1c009096:	01c76733          	or	a4,a4,t3
1c00909a:	06e2                	slli	a3,a3,0x18
1c00909c:	0542                	slli	a0,a0,0x10
1c00909e:	01156533          	or	a0,a0,a7
1c0090a2:	18d14803          	lbu	a6,397(sp)
1c0090a6:	8f55                	or	a4,a4,a3
1c0090a8:	0662                	slli	a2,a2,0x18
1c0090aa:	56fa                	lw	a3,188(sp)
1c0090ac:	18c14e83          	lbu	t4,396(sp)
1c0090b0:	18e14583          	lbu	a1,398(sp)
1c0090b4:	8e49                	or	a2,a2,a0
1c0090b6:	8e35                	xor	a2,a2,a3
1c0090b8:	0822                	slli	a6,a6,0x8
1c0090ba:	468e                	lw	a3,192(sp)
1c0090bc:	01d86833          	or	a6,a6,t4
1c0090c0:	0807e793          	ori	a5,a5,128
1c0090c4:	05c2                	slli	a1,a1,0x10
1c0090c6:	0105e5b3          	or	a1,a1,a6
1c0090ca:	8eb9                	xor	a3,a3,a4
1c0090cc:	07e2                	slli	a5,a5,0x18
1c0090ce:	471e                	lw	a4,196(sp)
1c0090d0:	8fcd                	or	a5,a5,a1
1c0090d2:	010c                	addi	a1,sp,128
1c0090d4:	8fb9                	xor	a5,a5,a4
1c0090d6:	852e                	mv	a0,a1
1c0090d8:	df32                	sw	a2,188(sp)
1c0090da:	c1b6                	sw	a3,192(sp)
1c0090dc:	c3be                	sw	a5,196(sp)
1c0090de:	a72ff0ef          	jal	ra,1c008350 <KeccakF1600_StatePermute>
1c0090e2:	581a                	lw	a6,164(sp)
1c0090e4:	552a                	lw	a0,168(sp)
1c0090e6:	55ba                	lw	a1,172(sp)
1c0090e8:	00885913          	srli	s2,a6,0x8
1c0090ec:	564a                	lw	a2,176(sp)
1c0090ee:	de4a                	sw	s2,60(sp)
1c0090f0:	00855913          	srli	s2,a0,0x8
1c0090f4:	56da                	lw	a3,180(sp)
1c0090f6:	d24a                	sw	s2,36(sp)
1c0090f8:	0085d913          	srli	s2,a1,0x8
1c0090fc:	576a                	lw	a4,184(sp)
1c0090fe:	d44a                	sw	s2,40(sp)
1c009100:	00865913          	srli	s2,a2,0x8
1c009104:	57fa                	lw	a5,188(sp)
1c009106:	d64a                	sw	s2,44(sp)
1c009108:	0086d913          	srli	s2,a3,0x8
1c00910c:	d84a                	sw	s2,48(sp)
1c00910e:	00875913          	srli	s2,a4,0x8
1c009112:	da4a                	sw	s2,52(sp)
1c009114:	0087d913          	srli	s2,a5,0x8
1c009118:	dc4a                	sw	s2,56(sp)
1c00911a:	5972                	lw	s2,60(sp)
1c00911c:	448a                	lw	s1,128(sp)
1c00911e:	0ff97913          	andi	s2,s2,255
1c009122:	c2ca                	sw	s2,68(sp)
1c009124:	5912                	lw	s2,36(sp)
1c009126:	439a                	lw	t2,132(sp)
1c009128:	0ff97913          	andi	s2,s2,255
1c00912c:	c4ca                	sw	s2,72(sp)
1c00912e:	5922                	lw	s2,40(sp)
1c009130:	42aa                	lw	t0,136(sp)
1c009132:	0ff97913          	andi	s2,s2,255
1c009136:	c8ca                	sw	s2,80(sp)
1c009138:	5932                	lw	s2,44(sp)
1c00913a:	4fba                	lw	t6,140(sp)
1c00913c:	0ff97913          	andi	s2,s2,255
1c009140:	ccca                	sw	s2,88(sp)
1c009142:	5942                	lw	s2,48(sp)
1c009144:	4f4a                	lw	t5,144(sp)
1c009146:	0ff97913          	andi	s2,s2,255
1c00914a:	4eda                	lw	t4,148(sp)
1c00914c:	4e6a                	lw	t3,152(sp)
1c00914e:	437a                	lw	t1,156(sp)
1c009150:	588a                	lw	a7,160(sp)
1c009152:	d0ca                	sw	s2,96(sp)
1c009154:	5952                	lw	s2,52(sp)
1c009156:	0082dc93          	srli	s9,t0,0x8
1c00915a:	0ff97913          	andi	s2,s2,255
1c00915e:	d4ca                	sw	s2,104(sp)
1c009160:	5962                	lw	s2,56(sp)
1c009162:	008fdc13          	srli	s8,t6,0x8
1c009166:	008f5b93          	srli	s7,t5,0x8
1c00916a:	008edb13          	srli	s6,t4,0x8
1c00916e:	0ff97913          	andi	s2,s2,255
1c009172:	d8ca                	sw	s2,112(sp)
1c009174:	0083dd13          	srli	s10,t2,0x8
1c009178:	0ff4f913          	andi	s2,s1,255
1c00917c:	0ffcfc93          	andi	s9,s9,255
1c009180:	0ffc7c13          	andi	s8,s8,255
1c009184:	0ffbfb93          	andi	s7,s7,255
1c009188:	0ffb7b13          	andi	s6,s6,255
1c00918c:	d24a                	sw	s2,36(sp)
1c00918e:	008e5a93          	srli	s5,t3,0x8
1c009192:	0ff2f913          	andi	s2,t0,255
1c009196:	0ca2                	slli	s9,s9,0x8
1c009198:	0c22                	slli	s8,s8,0x8
1c00919a:	0ba2                	slli	s7,s7,0x8
1c00919c:	0b22                	slli	s6,s6,0x8
1c00919e:	0ffd7d13          	andi	s10,s10,255
1c0091a2:	ce66                	sw	s9,28(sp)
1c0091a4:	d64a                	sw	s2,44(sp)
1c0091a6:	cc62                	sw	s8,24(sp)
1c0091a8:	ca5e                	sw	s7,20(sp)
1c0091aa:	0ffffc13          	andi	s8,t6,255
1c0091ae:	4b96                	lw	s7,68(sp)
1c0091b0:	0fff7c93          	andi	s9,t5,255
1c0091b4:	c85a                	sw	s6,16(sp)
1c0091b6:	0ffe7913          	andi	s2,t3,255
1c0091ba:	0ff8fb13          	andi	s6,a7,255
1c0091be:	0d22                	slli	s10,s10,0x8
1c0091c0:	0ffafa93          	andi	s5,s5,255
1c0091c4:	d06a                	sw	s10,32(sp)
1c0091c6:	d862                	sw	s8,48(sp)
1c0091c8:	0ff3fd13          	andi	s10,t2,255
1c0091cc:	da66                	sw	s9,52(sp)
1c0091ce:	de4a                	sw	s2,60(sp)
1c0091d0:	4ca6                	lw	s9,72(sp)
1c0091d2:	4946                	lw	s2,80(sp)
1c0091d4:	c0da                	sw	s6,64(sp)
1c0091d6:	0ff87c13          	andi	s8,a6,255
1c0091da:	4b66                	lw	s6,88(sp)
1c0091dc:	0aa2                	slli	s5,s5,0x8
1c0091de:	d46a                	sw	s10,40(sp)
1c0091e0:	c656                	sw	s5,12(sp)
1c0091e2:	0ffefd13          	andi	s10,t4,255
1c0091e6:	0ff37a93          	andi	s5,t1,255
1c0091ea:	c2e2                	sw	s8,68(sp)
1c0091ec:	0ba2                	slli	s7,s7,0x8
1c0091ee:	5c06                	lw	s8,96(sp)
1c0091f0:	dc6a                	sw	s10,56(sp)
1c0091f2:	dcd6                	sw	s5,120(sp)
1c0091f4:	dede                	sw	s7,124(sp)
1c0091f6:	0ff57d13          	andi	s10,a0,255
1c0091fa:	0ff5fa93          	andi	s5,a1,255
1c0091fe:	0ff67b93          	andi	s7,a2,255
1c009202:	0ca2                	slli	s9,s9,0x8
1c009204:	0922                	slli	s2,s2,0x8
1c009206:	0b22                	slli	s6,s6,0x8
1c009208:	c4e6                	sw	s9,72(sp)
1c00920a:	c6ea                	sw	s10,76(sp)
1c00920c:	c8ca                	sw	s2,80(sp)
1c00920e:	cad6                	sw	s5,84(sp)
1c009210:	ccda                	sw	s6,88(sp)
1c009212:	cede                	sw	s7,92(sp)
1c009214:	0c22                	slli	s8,s8,0x8
1c009216:	d0e2                	sw	s8,96(sp)
1c009218:	5ac6                	lw	s5,112(sp)
1c00921a:	5d26                	lw	s10,104(sp)
1c00921c:	0ff6fc93          	andi	s9,a3,255
1c009220:	0ff7fb13          	andi	s6,a5,255
1c009224:	0084dd93          	srli	s11,s1,0x8
1c009228:	0aa2                	slli	s5,s5,0x8
1c00922a:	5b92                	lw	s7,36(sp)
1c00922c:	5c22                	lw	s8,40(sp)
1c00922e:	d2e6                	sw	s9,100(sp)
1c009230:	d8d6                	sw	s5,112(sp)
1c009232:	5c82                	lw	s9,32(sp)
1c009234:	5ab2                	lw	s5,44(sp)
1c009236:	dada                	sw	s6,116(sp)
1c009238:	0ffdfd93          	andi	s11,s11,255
1c00923c:	4b72                	lw	s6,28(sp)
1c00923e:	0d22                	slli	s10,s10,0x8
1c009240:	0da2                	slli	s11,s11,0x8
1c009242:	d4ea                	sw	s10,104(sp)
1c009244:	01bbedb3          	or	s11,s7,s11
1c009248:	019c6d33          	or	s10,s8,s9
1c00924c:	5bc2                	lw	s7,48(sp)
1c00924e:	016aecb3          	or	s9,s5,s6
1c009252:	4ae2                	lw	s5,24(sp)
1c009254:	5b52                	lw	s6,52(sp)
1c009256:	015bec33          	or	s8,s7,s5
1c00925a:	4ad2                	lw	s5,20(sp)
1c00925c:	0088d993          	srli	s3,a7,0x8
1c009260:	015b6bb3          	or	s7,s6,s5
1c009264:	4ac2                	lw	s5,16(sp)
1c009266:	5b62                	lw	s6,56(sp)
1c009268:	00835a13          	srli	s4,t1,0x8
1c00926c:	015b6b33          	or	s6,s6,s5
1c009270:	c25a                	sw	s6,4(sp)
1c009272:	4ab2                	lw	s5,12(sp)
1c009274:	5b72                	lw	s6,60(sp)
1c009276:	0ff9f993          	andi	s3,s3,255
1c00927a:	015b6b33          	or	s6,s6,s5
1c00927e:	4a86                	lw	s5,64(sp)
1c009280:	c45a                	sw	s6,8(sp)
1c009282:	0ffa7a13          	andi	s4,s4,255
1c009286:	5b66                	lw	s6,120(sp)
1c009288:	09a2                	slli	s3,s3,0x8
1c00928a:	013ae9b3          	or	s3,s5,s3
1c00928e:	0a22                	slli	s4,s4,0x8
1c009290:	c0ce                	sw	s3,64(sp)
1c009292:	014b6a33          	or	s4,s6,s4
1c009296:	59f6                	lw	s3,124(sp)
1c009298:	4b16                	lw	s6,68(sp)
1c00929a:	4ab6                	lw	s5,76(sp)
1c00929c:	013b6b33          	or	s6,s6,s3
1c0092a0:	c2da                	sw	s6,68(sp)
1c0092a2:	4b26                	lw	s6,72(sp)
1c0092a4:	0ff77913          	andi	s2,a4,255
1c0092a8:	016aeab3          	or	s5,s5,s6
1c0092ac:	d6ca                	sw	s2,108(sp)
1c0092ae:	49d6                	lw	s3,84(sp)
1c0092b0:	c6d6                	sw	s5,76(sp)
1c0092b2:	4ac6                	lw	s5,80(sp)
1c0092b4:	4b76                	lw	s6,92(sp)
1c0092b6:	0159e9b3          	or	s3,s3,s5
1c0092ba:	cace                	sw	s3,84(sp)
1c0092bc:	49e6                	lw	s3,88(sp)
1c0092be:	5a96                	lw	s5,100(sp)
1c0092c0:	013b6b33          	or	s6,s6,s3
1c0092c4:	ceda                	sw	s6,92(sp)
1c0092c6:	5b06                	lw	s6,96(sp)
1c0092c8:	59b6                	lw	s3,108(sp)
1c0092ca:	016aeab3          	or	s5,s5,s6
1c0092ce:	d2d6                	sw	s5,100(sp)
1c0092d0:	5aa6                	lw	s5,104(sp)
1c0092d2:	5b56                	lw	s6,116(sp)
1c0092d4:	0159e9b3          	or	s3,s3,s5
1c0092d8:	d6ce                	sw	s3,108(sp)
1c0092da:	59c6                	lw	s3,112(sp)
1c0092dc:	ff010937          	lui	s2,0xff010
1c0092e0:	013b6b33          	or	s6,s6,s3
1c0092e4:	00ff09b7          	lui	s3,0xff0
1c0092e8:	0134fab3          	and	s5,s1,s3
1c0092ec:	0133f9b3          	and	s3,t2,s3
1c0092f0:	d44e                	sw	s3,40(sp)
1c0092f2:	00ff09b7          	lui	s3,0xff0
1c0092f6:	0132f9b3          	and	s3,t0,s3
1c0092fa:	d64e                	sw	s3,44(sp)
1c0092fc:	00ff09b7          	lui	s3,0xff0
1c009300:	013ff9b3          	and	s3,t6,s3
1c009304:	d84e                	sw	s3,48(sp)
1c009306:	00ff09b7          	lui	s3,0xff0
1c00930a:	013f79b3          	and	s3,t5,s3
1c00930e:	da4e                	sw	s3,52(sp)
1c009310:	00ff09b7          	lui	s3,0xff0
1c009314:	013ef9b3          	and	s3,t4,s3
1c009318:	dc4e                	sw	s3,56(sp)
1c00931a:	00ff09b7          	lui	s3,0xff0
1c00931e:	013e79b3          	and	s3,t3,s3
1c009322:	197d                	addi	s2,s2,-1
1c009324:	de4e                	sw	s3,60(sp)
1c009326:	00ff09b7          	lui	s3,0xff0
1c00932a:	012c7c33          	and	s8,s8,s2
1c00932e:	012bfbb3          	and	s7,s7,s2
1c009332:	013379b3          	and	s3,t1,s3
1c009336:	012cfcb3          	and	s9,s9,s2
1c00933a:	ca62                	sw	s8,20(sp)
1c00933c:	c85e                	sw	s7,16(sp)
1c00933e:	4c22                	lw	s8,8(sp)
1c009340:	4b92                	lw	s7,4(sp)
1c009342:	dcce                	sw	s3,120(sp)
1c009344:	00ff09b7          	lui	s3,0xff0
1c009348:	cc66                	sw	s9,24(sp)
1c00934a:	0138f9b3          	and	s3,a7,s3
1c00934e:	4c86                	lw	s9,64(sp)
1c009350:	012d7d33          	and	s10,s10,s2
1c009354:	012bfbb3          	and	s7,s7,s2
1c009358:	012c7c33          	and	s8,s8,s2
1c00935c:	012a7a33          	and	s4,s4,s2
1c009360:	dece                	sw	s3,124(sp)
1c009362:	00ff09b7          	lui	s3,0xff0
1c009366:	dada                	sw	s6,116(sp)
1c009368:	ce6a                	sw	s10,28(sp)
1c00936a:	c65e                	sw	s7,12(sp)
1c00936c:	c462                	sw	s8,8(sp)
1c00936e:	c252                	sw	s4,4(sp)
1c009370:	012cfcb3          	and	s9,s9,s2
1c009374:	013879b3          	and	s3,a6,s3
1c009378:	c0e6                	sw	s9,64(sp)
1c00937a:	c4ce                	sw	s3,72(sp)
1c00937c:	00ff09b7          	lui	s3,0xff0
1c009380:	013579b3          	and	s3,a0,s3
1c009384:	c8ce                	sw	s3,80(sp)
1c009386:	00ff09b7          	lui	s3,0xff0
1c00938a:	0135f9b3          	and	s3,a1,s3
1c00938e:	ccce                	sw	s3,88(sp)
1c009390:	49d6                	lw	s3,84(sp)
1c009392:	012dfb33          	and	s6,s11,s2
1c009396:	0129f9b3          	and	s3,s3,s2
1c00939a:	cace                	sw	s3,84(sp)
1c00939c:	00ff09b7          	lui	s3,0xff0
1c0093a0:	013679b3          	and	s3,a2,s3
1c0093a4:	d0ce                	sw	s3,96(sp)
1c0093a6:	00ff09b7          	lui	s3,0xff0
1c0093aa:	0136f9b3          	and	s3,a3,s3
1c0093ae:	d4ce                	sw	s3,104(sp)
1c0093b0:	00ff09b7          	lui	s3,0xff0
1c0093b4:	4db6                	lw	s11,76(sp)
1c0093b6:	4a76                	lw	s4,92(sp)
1c0093b8:	013779b3          	and	s3,a4,s3
1c0093bc:	d8ce                	sw	s3,112(sp)
1c0093be:	00ff09b7          	lui	s3,0xff0
1c0093c2:	4d16                	lw	s10,68(sp)
1c0093c4:	5b96                	lw	s7,100(sp)
1c0093c6:	012dfdb3          	and	s11,s11,s2
1c0093ca:	012a7a33          	and	s4,s4,s2
1c0093ce:	0137f9b3          	and	s3,a5,s3
1c0093d2:	5cd6                	lw	s9,116(sp)
1c0093d4:	5c36                	lw	s8,108(sp)
1c0093d6:	c6ee                	sw	s11,76(sp)
1c0093d8:	ced2                	sw	s4,92(sp)
1c0093da:	c04e                	sw	s3,0(sp)
1c0093dc:	5a22                	lw	s4,40(sp)
1c0093de:	49f2                	lw	s3,28(sp)
1c0093e0:	015b6db3          	or	s11,s6,s5
1c0093e4:	4ae2                	lw	s5,24(sp)
1c0093e6:	5b32                	lw	s6,44(sp)
1c0093e8:	012d7d33          	and	s10,s10,s2
1c0093ec:	012bfbb3          	and	s7,s7,s2
1c0093f0:	c2ea                	sw	s10,68(sp)
1c0093f2:	d2de                	sw	s7,100(sp)
1c0093f4:	012c7c33          	and	s8,s8,s2
1c0093f8:	4bd2                	lw	s7,20(sp)
1c0093fa:	012cf933          	and	s2,s9,s2
1c0093fe:	0149ed33          	or	s10,s3,s4
1c009402:	016aecb3          	or	s9,s5,s6
1c009406:	59c2                	lw	s3,48(sp)
1c009408:	4a42                	lw	s4,16(sp)
1c00940a:	5ad2                	lw	s5,52(sp)
1c00940c:	d6e2                	sw	s8,108(sp)
1c00940e:	013bec33          	or	s8,s7,s3
1c009412:	49b2                	lw	s3,12(sp)
1c009414:	015a6bb3          	or	s7,s4,s5
1c009418:	5a62                	lw	s4,56(sp)
1c00941a:	daca                	sw	s2,116(sp)
1c00941c:	0149eb33          	or	s6,s3,s4
1c009420:	49a2                	lw	s3,8(sp)
1c009422:	5a72                	lw	s4,60(sp)
1c009424:	80e1                	srli	s1,s1,0x18
1c009426:	0149eab3          	or	s5,s3,s4
1c00942a:	5a66                	lw	s4,120(sp)
1c00942c:	4992                	lw	s3,4(sp)
1c00942e:	04e2                	slli	s1,s1,0x18
1c009430:	0149e9b3          	or	s3,s3,s4
1c009434:	dcce                	sw	s3,120(sp)
1c009436:	5a76                	lw	s4,124(sp)
1c009438:	4986                	lw	s3,64(sp)
1c00943a:	01000937          	lui	s2,0x1000
1c00943e:	0149e9b3          	or	s3,s3,s4
1c009442:	d24e                	sw	s3,36(sp)
1c009444:	4a26                	lw	s4,72(sp)
1c009446:	4996                	lw	s3,68(sp)
1c009448:	197d                	addi	s2,s2,-1
1c00944a:	0149e9b3          	or	s3,s3,s4
1c00944e:	d44e                	sw	s3,40(sp)
1c009450:	4a46                	lw	s4,80(sp)
1c009452:	49b6                	lw	s3,76(sp)
1c009454:	c2a6                	sw	s1,68(sp)
1c009456:	0149e9b3          	or	s3,s3,s4
1c00945a:	d64e                	sw	s3,44(sp)
1c00945c:	4a66                	lw	s4,88(sp)
1c00945e:	49d6                	lw	s3,84(sp)
1c009460:	54e6                	lw	s1,120(sp)
1c009462:	0149e9b3          	or	s3,s3,s4
1c009466:	d84e                	sw	s3,48(sp)
1c009468:	5a06                	lw	s4,96(sp)
1c00946a:	49f6                	lw	s3,92(sp)
1c00946c:	018ede93          	srli	t4,t4,0x18
1c009470:	0149e9b3          	or	s3,s3,s4
1c009474:	da4e                	sw	s3,52(sp)
1c009476:	5a26                	lw	s4,104(sp)
1c009478:	5996                	lw	s3,100(sp)
1c00947a:	018e5e13          	srli	t3,t3,0x18
1c00947e:	0149e9b3          	or	s3,s3,s4
1c009482:	dc4e                	sw	s3,56(sp)
1c009484:	5a46                	lw	s4,112(sp)
1c009486:	59b6                	lw	s3,108(sp)
1c009488:	01835313          	srli	t1,t1,0x18
1c00948c:	0149e9b3          	or	s3,s3,s4
1c009490:	de4e                	sw	s3,60(sp)
1c009492:	4a02                	lw	s4,0(sp)
1c009494:	59d6                	lw	s3,116(sp)
1c009496:	012b7b33          	and	s6,s6,s2
1c00949a:	0149e9b3          	or	s3,s3,s4
1c00949e:	c0ce                	sw	s3,64(sp)
1c0094a0:	5992                	lw	s3,36(sp)
1c0094a2:	0124fa33          	and	s4,s1,s2
1c0094a6:	0129f9b3          	and	s3,s3,s2
1c0094aa:	d24e                	sw	s3,36(sp)
1c0094ac:	54a2                	lw	s1,40(sp)
1c0094ae:	59b2                	lw	s3,44(sp)
1c0094b0:	0124f4b3          	and	s1,s1,s2
1c0094b4:	d426                	sw	s1,40(sp)
1c0094b6:	54c2                	lw	s1,48(sp)
1c0094b8:	0129f9b3          	and	s3,s3,s2
1c0094bc:	d64e                	sw	s3,44(sp)
1c0094be:	0124f4b3          	and	s1,s1,s2
1c0094c2:	59d2                	lw	s3,52(sp)
1c0094c4:	d826                	sw	s1,48(sp)
1c0094c6:	54e2                	lw	s1,56(sp)
1c0094c8:	0129f9b3          	and	s3,s3,s2
1c0094cc:	da4e                	sw	s3,52(sp)
1c0094ce:	0124f4b3          	and	s1,s1,s2
1c0094d2:	59f2                	lw	s3,60(sp)
1c0094d4:	dc26                	sw	s1,56(sp)
1c0094d6:	4486                	lw	s1,64(sp)
1c0094d8:	012afab3          	and	s5,s5,s2
1c0094dc:	0129f9b3          	and	s3,s3,s2
1c0094e0:	0183d393          	srli	t2,t2,0x18
1c0094e4:	0182d293          	srli	t0,t0,0x18
1c0094e8:	018fdf93          	srli	t6,t6,0x18
1c0094ec:	018f5f13          	srli	t5,t5,0x18
1c0094f0:	0ee2                	slli	t4,t4,0x18
1c0094f2:	0e62                	slli	t3,t3,0x18
1c0094f4:	0362                	slli	t1,t1,0x18
1c0094f6:	de4e                	sw	s3,60(sp)
1c0094f8:	012dfdb3          	and	s11,s11,s2
1c0094fc:	0124f9b3          	and	s3,s1,s2
1c009500:	012d7d33          	and	s10,s10,s2
1c009504:	012cfcb3          	and	s9,s9,s2
1c009508:	012c7c33          	and	s8,s8,s2
1c00950c:	012bfbb3          	and	s7,s7,s2
1c009510:	01db6eb3          	or	t4,s6,t4
1c009514:	4916                	lw	s2,68(sp)
1c009516:	5b32                	lw	s6,44(sp)
1c009518:	01caee33          	or	t3,s5,t3
1c00951c:	006a6333          	or	t1,s4,t1
1c009520:	5aa2                	lw	s5,40(sp)
1c009522:	5a12                	lw	s4,36(sp)
1c009524:	0188d893          	srli	a7,a7,0x18
1c009528:	01885813          	srli	a6,a6,0x18
1c00952c:	8161                	srli	a0,a0,0x18
1c00952e:	03e2                	slli	t2,t2,0x18
1c009530:	02e2                	slli	t0,t0,0x18
1c009532:	0fe2                	slli	t6,t6,0x18
1c009534:	0f62                	slli	t5,t5,0x18
1c009536:	007d63b3          	or	t2,s10,t2
1c00953a:	005ce2b3          	or	t0,s9,t0
1c00953e:	5d72                	lw	s10,60(sp)
1c009540:	5ce2                	lw	s9,56(sp)
1c009542:	01fc6fb3          	or	t6,s8,t6
1c009546:	01ebef33          	or	t5,s7,t5
1c00954a:	5c52                	lw	s8,52(sp)
1c00954c:	5bc2                	lw	s7,48(sp)
1c00954e:	81e1                	srli	a1,a1,0x18
1c009550:	8261                	srli	a2,a2,0x18
1c009552:	82e1                	srli	a3,a3,0x18
1c009554:	8361                	srli	a4,a4,0x18
1c009556:	83e1                	srli	a5,a5,0x18
1c009558:	08e2                	slli	a7,a7,0x18
1c00955a:	0862                	slli	a6,a6,0x18
1c00955c:	0562                	slli	a0,a0,0x18
1c00955e:	012de4b3          	or	s1,s11,s2
1c009562:	05e2                	slli	a1,a1,0x18
1c009564:	011a6933          	or	s2,s4,a7
1c009568:	0662                	slli	a2,a2,0x18
1c00956a:	010aea33          	or	s4,s5,a6
1c00956e:	06e2                	slli	a3,a3,0x18
1c009570:	00ab6ab3          	or	s5,s6,a0
1c009574:	0762                	slli	a4,a4,0x18
1c009576:	07e2                	slli	a5,a5,0x18
1c009578:	c004                	sw	s1,0(s0)
1c00957a:	03242023          	sw	s2,32(s0)
1c00957e:	03442223          	sw	s4,36(s0)
1c009582:	03542423          	sw	s5,40(s0)
1c009586:	00bbe5b3          	or	a1,s7,a1
1c00958a:	00cc6633          	or	a2,s8,a2
1c00958e:	00dce6b3          	or	a3,s9,a3
1c009592:	00ed6733          	or	a4,s10,a4
1c009596:	00f9e7b3          	or	a5,s3,a5
1c00959a:	00742223          	sw	t2,4(s0)
1c00959e:	00542423          	sw	t0,8(s0)
1c0095a2:	01f42623          	sw	t6,12(s0)
1c0095a6:	01e42823          	sw	t5,16(s0)
1c0095aa:	01d42a23          	sw	t4,20(s0)
1c0095ae:	01c42c23          	sw	t3,24(s0)
1c0095b2:	00642e23          	sw	t1,28(s0)
1c0095b6:	d44c                	sw	a1,44(s0)
1c0095b8:	d810                	sw	a2,48(s0)
1c0095ba:	d854                	sw	a3,52(s0)
1c0095bc:	dc18                	sw	a4,56(s0)
1c0095be:	dc5c                	sw	a5,60(s0)
1c0095c0:	24c12083          	lw	ra,588(sp)
1c0095c4:	24812403          	lw	s0,584(sp)
1c0095c8:	24412483          	lw	s1,580(sp)
1c0095cc:	24012903          	lw	s2,576(sp)
1c0095d0:	23c12983          	lw	s3,572(sp)
1c0095d4:	23812a03          	lw	s4,568(sp)
1c0095d8:	23412a83          	lw	s5,564(sp)
1c0095dc:	23012b03          	lw	s6,560(sp)
1c0095e0:	22c12b83          	lw	s7,556(sp)
1c0095e4:	22812c03          	lw	s8,552(sp)
1c0095e8:	22412c83          	lw	s9,548(sp)
1c0095ec:	22012d03          	lw	s10,544(sp)
1c0095f0:	21c12d83          	lw	s11,540(sp)
1c0095f4:	25010113          	addi	sp,sp,592
1c0095f8:	8082                	ret
1c0095fa:	4781                	li	a5,0
1c0095fc:	fbeff06f          	j	1c008dba <sha3_512+0x10c>

1c009600 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair>:
1c009600:	b7010113          	addi	sp,sp,-1168
1c009604:	737d                	lui	t1,0xfffff
1c009606:	6785                	lui	a5,0x1
1c009608:	48112623          	sw	ra,1164(sp)
1c00960c:	48812423          	sw	s0,1160(sp)
1c009610:	48912223          	sw	s1,1156(sp)
1c009614:	49212023          	sw	s2,1152(sp)
1c009618:	47412c23          	sw	s4,1144(sp)
1c00961c:	47612823          	sw	s6,1136(sp)
1c009620:	47712623          	sw	s7,1132(sp)
1c009624:	47a12023          	sw	s10,1120(sp)
1c009628:	47312e23          	sw	s3,1148(sp)
1c00962c:	47512a23          	sw	s5,1140(sp)
1c009630:	47812423          	sw	s8,1128(sp)
1c009634:	47912223          	sw	s9,1124(sp)
1c009638:	45b12e23          	sw	s11,1116(sp)
1c00963c:	747d                	lui	s0,0xfffff
1c00963e:	911a                	add	sp,sp,t1
1c009640:	45078793          	addi	a5,a5,1104 # 1450 <__CTOR_LIST__-0x1bffebb4>
1c009644:	978a                	add	a5,a5,sp
1c009646:	bc040413          	addi	s0,s0,-1088 # ffffebc0 <pulp__FC+0xffffebc1>
1c00964a:	943e                	add	s0,s0,a5
1c00964c:	c62e                	sw	a1,12(sp)
1c00964e:	8b2a                	mv	s6,a0
1c009650:	02000593          	li	a1,32
1c009654:	8522                	mv	a0,s0
1c009656:	750000ef          	jal	ra,1c009da6 <randombytes>
1c00965a:	02000613          	li	a2,32
1c00965e:	85a2                	mv	a1,s0
1c009660:	8522                	mv	a0,s0
1c009662:	e4cff0ef          	jal	ra,1c008cae <sha3_512>
1c009666:	6785                	lui	a5,0x1
1c009668:	797d                	lui	s2,0xfffff
1c00966a:	45078793          	addi	a5,a5,1104 # 1450 <__CTOR_LIST__-0x1bffebb4>
1c00966e:	978a                	add	a5,a5,sp
1c009670:	40090493          	addi	s1,s2,1024 # fffff400 <pulp__FC+0xfffff401>
1c009674:	c202                	sw	zero,4(sp)
1c009676:	94be                	add	s1,s1,a5
1c009678:	6b85                	lui	s7,0x1
1c00967a:	4792                	lw	a5,4(sp)
1c00967c:	1f848a13          	addi	s4,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c009680:	fffb8d13          	addi	s10,s7,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c009684:	00a79413          	slli	s0,a5,0xa
1c009688:	0ff7f793          	andi	a5,a5,255
1c00968c:	c43e                	sw	a5,8(sp)
1c00968e:	6785                	lui	a5,0x1
1c009690:	c5078793          	addi	a5,a5,-944 # c50 <__CTOR_LIST__-0x1bfff3b4>
1c009694:	978a                	add	a5,a5,sp
1c009696:	943e                	add	s0,s0,a5
1c009698:	6785                	lui	a5,0x1
1c00969a:	45078793          	addi	a5,a5,1104 # 1450 <__CTOR_LIST__-0x1bffebb4>
1c00969e:	bc090a93          	addi	s5,s2,-1088
1c0096a2:	978a                	add	a5,a5,sp
1c0096a4:	4981                	li	s3,0
1c0096a6:	9abe                	add	s5,s5,a5
1c0096a8:	46a2                	lw	a3,8(sp)
1c0096aa:	85d6                	mv	a1,s5
1c0096ac:	45010513          	addi	a0,sp,1104
1c0096b0:	864e                	mv	a2,s3
1c0096b2:	1b5000ef          	jal	ra,1c00a066 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c0096b6:	8526                	mv	a0,s1
1c0096b8:	45010613          	addi	a2,sp,1104
1c0096bc:	458d                	li	a1,3
1c0096be:	904ff0ef          	jal	ra,1c0087c2 <shake128_squeezeblocks>
1c0096c2:	4c01                	li	s8,0
1c0096c4:	8726                	mv	a4,s1
1c0096c6:	d00b8513          	addi	a0,s7,-768
1c0096ca:	10000313          	li	t1,256
1c0096ce:	00174603          	lbu	a2,1(a4)
1c0096d2:	00074683          	lbu	a3,0(a4)
1c0096d6:	00861793          	slli	a5,a2,0x8
1c0096da:	8fd5                	or	a5,a5,a3
1c0096dc:	01a7f7b3          	and	a5,a5,s10
1c0096e0:	00274683          	lbu	a3,2(a4)
1c0096e4:	02f56963          	bltu	a0,a5,1c009716 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x116>
1c0096e8:	001c1593          	slli	a1,s8,0x1
1c0096ec:	95a2                	add	a1,a1,s0
1c0096ee:	001c0813          	addi	a6,s8,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c0096f2:	00f59023          	sh	a5,0(a1)
1c0096f6:	1c681b63          	bne	a6,t1,1c0098cc <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x2cc>
1c0096fa:	45010513          	addi	a0,sp,1104
1c0096fe:	984ff0ef          	jal	ra,1c008882 <shake128_ctx_release>
1c009702:	20040413          	addi	s0,s0,512
1c009706:	0a098c63          	beqz	s3,1c0097be <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x1be>
1c00970a:	4792                	lw	a5,4(sp)
1c00970c:	0b378b63          	beq	a5,s3,1c0097c2 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x1c2>
1c009710:	4785                	li	a5,1
1c009712:	c23e                	sw	a5,4(sp)
1c009714:	bf85                	j	1c009684 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x84>
1c009716:	8211                	srli	a2,a2,0x4
1c009718:	0692                	slli	a3,a3,0x4
1c00971a:	8ed1                	or	a3,a3,a2
1c00971c:	00d54863          	blt	a0,a3,1c00972c <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x12c>
1c009720:	001c1793          	slli	a5,s8,0x1
1c009724:	97a2                	add	a5,a5,s0
1c009726:	00d79023          	sh	a3,0(a5)
1c00972a:	0c05                	addi	s8,s8,1
1c00972c:	fc6c07e3          	beq	s8,t1,1c0096fa <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0xfa>
1c009730:	070d                	addi	a4,a4,3
1c009732:	f9471ee3          	bne	a4,s4,1c0096ce <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0xce>
1c009736:	0a848c93          	addi	s9,s1,168
1c00973a:	d00b8d93          	addi	s11,s7,-768
1c00973e:	a031                	j	1c00974a <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x14a>
1c009740:	9c2e                	add	s8,s8,a1
1c009742:	0ff00793          	li	a5,255
1c009746:	fb87eae3          	bltu	a5,s8,1c0096fa <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0xfa>
1c00974a:	4585                	li	a1,1
1c00974c:	8526                	mv	a0,s1
1c00974e:	45010613          	addi	a2,sp,1104
1c009752:	870ff0ef          	jal	ra,1c0087c2 <shake128_squeezeblocks>
1c009756:	001c1513          	slli	a0,s8,0x1
1c00975a:	10000e13          	li	t3,256
1c00975e:	9522                	add	a0,a0,s0
1c009760:	418e0e33          	sub	t3,t3,s8
1c009764:	86a6                	mv	a3,s1
1c009766:	4581                	li	a1,0
1c009768:	00159793          	slli	a5,a1,0x1
1c00976c:	00f50eb3          	add	t4,a0,a5
1c009770:	fcdc88e3          	beq	s9,a3,1c009740 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x140>
1c009774:	0016c703          	lbu	a4,1(a3)
1c009778:	0006c603          	lbu	a2,0(a3)
1c00977c:	00871793          	slli	a5,a4,0x8
1c009780:	8fd1                	or	a5,a5,a2
1c009782:	01a7f7b3          	and	a5,a5,s10
1c009786:	00475613          	srli	a2,a4,0x4
1c00978a:	0026c703          	lbu	a4,2(a3)
1c00978e:	00fde563          	bltu	s11,a5,1c009798 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x198>
1c009792:	00fe9023          	sh	a5,0(t4)
1c009796:	0585                	addi	a1,a1,1
1c009798:	00471793          	slli	a5,a4,0x4
1c00979c:	8fd1                	or	a5,a5,a2
1c00979e:	fbc5f1e3          	bleu	t3,a1,1c009740 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x140>
1c0097a2:	00159713          	slli	a4,a1,0x1
1c0097a6:	972a                	add	a4,a4,a0
1c0097a8:	00158613          	addi	a2,a1,1
1c0097ac:	00fdc763          	blt	s11,a5,1c0097ba <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x1ba>
1c0097b0:	00f71023          	sh	a5,0(a4)
1c0097b4:	85b2                	mv	a1,a2
1c0097b6:	f9c675e3          	bleu	t3,a2,1c009740 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x140>
1c0097ba:	068d                	addi	a3,a3,3
1c0097bc:	b775                	j	1c009768 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x168>
1c0097be:	4985                	li	s3,1
1c0097c0:	b5e5                	j	1c0096a8 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0xa8>
1c0097c2:	6785                	lui	a5,0x1
1c0097c4:	45078793          	addi	a5,a5,1104 # 1450 <__CTOR_LIST__-0x1bffebb4>
1c0097c8:	978a                	add	a5,a5,sp
1c0097ca:	012789b3          	add	s3,a5,s2
1c0097ce:	40090493          	addi	s1,s2,1024
1c0097d2:	94be                	add	s1,s1,a5
1c0097d4:	be098993          	addi	s3,s3,-1056 # fefbe0 <__CTOR_LIST__-0x1b010424>
1c0097d8:	85ce                	mv	a1,s3
1c0097da:	8526                	mv	a0,s1
1c0097dc:	4601                	li	a2,0
1c0097de:	2ec9                	jal	1c009bb0 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c0097e0:	85ce                	mv	a1,s3
1c0097e2:	20048513          	addi	a0,s1,512
1c0097e6:	4605                	li	a2,1
1c0097e8:	26e1                	jal	1c009bb0 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c0097ea:	6785                	lui	a5,0x1
1c0097ec:	45078793          	addi	a5,a5,1104 # 1450 <__CTOR_LIST__-0x1bffebb4>
1c0097f0:	978a                	add	a5,a5,sp
1c0097f2:	c0090413          	addi	s0,s2,-1024
1c0097f6:	943e                	add	s0,s0,a5
1c0097f8:	85ce                	mv	a1,s3
1c0097fa:	8522                	mv	a0,s0
1c0097fc:	4609                	li	a2,2
1c0097fe:	2e4d                	jal	1c009bb0 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c009800:	85ce                	mv	a1,s3
1c009802:	460d                	li	a2,3
1c009804:	20040513          	addi	a0,s0,512
1c009808:	2665                	jal	1c009bb0 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00980a:	8526                	mv	a0,s1
1c00980c:	29ed                	jal	1c009d06 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c00980e:	8522                	mv	a0,s0
1c009810:	29dd                	jal	1c009d06 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c009812:	6585                	lui	a1,0x1
1c009814:	c5058593          	addi	a1,a1,-944 # c50 <__CTOR_LIST__-0x1bfff3b4>
1c009818:	8626                	mv	a2,s1
1c00981a:	958a                	add	a1,a1,sp
1c00981c:	45010513          	addi	a0,sp,1104
1c009820:	29f5                	jal	1c009d1c <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c009822:	45010513          	addi	a0,sp,1104
1c009826:	2199                	jal	1c009c6c <PQCLEAN_KYBER512_CLEAN_poly_tomont>
1c009828:	6785                	lui	a5,0x1
1c00982a:	05078793          	addi	a5,a5,80 # 1050 <__CTOR_LIST__-0x1bffefb4>
1c00982e:	65010913          	addi	s2,sp,1616
1c009832:	00f105b3          	add	a1,sp,a5
1c009836:	8626                	mv	a2,s1
1c009838:	854a                	mv	a0,s2
1c00983a:	21cd                	jal	1c009d1c <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00983c:	854a                	mv	a0,s2
1c00983e:	213d                	jal	1c009c6c <PQCLEAN_KYBER512_CLEAN_poly_tomont>
1c009840:	45010593          	addi	a1,sp,1104
1c009844:	8622                	mv	a2,s0
1c009846:	852e                	mv	a0,a1
1c009848:	2b15                	jal	1c009d7c <PQCLEAN_KYBER512_CLEAN_polyvec_add>
1c00984a:	45010513          	addi	a0,sp,1104
1c00984e:	2b21                	jal	1c009d66 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>
1c009850:	4532                	lw	a0,12(sp)
1c009852:	85a6                	mv	a1,s1
1c009854:	2949                	jal	1c009ce6 <PQCLEAN_KYBER512_CLEAN_polyvec_tobytes>
1c009856:	45010593          	addi	a1,sp,1104
1c00985a:	855a                	mv	a0,s6
1c00985c:	2169                	jal	1c009ce6 <PQCLEAN_KYBER512_CLEAN_polyvec_tobytes>
1c00985e:	48c2                	lw	a7,16(sp)
1c009860:	4852                	lw	a6,20(sp)
1c009862:	4562                	lw	a0,24(sp)
1c009864:	45f2                	lw	a1,28(sp)
1c009866:	5602                	lw	a2,32(sp)
1c009868:	5692                	lw	a3,36(sp)
1c00986a:	5722                	lw	a4,40(sp)
1c00986c:	57b2                	lw	a5,44(sp)
1c00986e:	311b2023          	sw	a7,768(s6) # ff0300 <__CTOR_LIST__-0x1b00fd04>
1c009872:	310b2223          	sw	a6,772(s6)
1c009876:	30ab2423          	sw	a0,776(s6)
1c00987a:	30bb2623          	sw	a1,780(s6)
1c00987e:	30cb2823          	sw	a2,784(s6)
1c009882:	30db2a23          	sw	a3,788(s6)
1c009886:	30eb2c23          	sw	a4,792(s6)
1c00988a:	30fb2e23          	sw	a5,796(s6)
1c00988e:	6305                	lui	t1,0x1
1c009890:	911a                	add	sp,sp,t1
1c009892:	48c12083          	lw	ra,1164(sp)
1c009896:	48812403          	lw	s0,1160(sp)
1c00989a:	48412483          	lw	s1,1156(sp)
1c00989e:	48012903          	lw	s2,1152(sp)
1c0098a2:	47c12983          	lw	s3,1148(sp)
1c0098a6:	47812a03          	lw	s4,1144(sp)
1c0098aa:	47412a83          	lw	s5,1140(sp)
1c0098ae:	47012b03          	lw	s6,1136(sp)
1c0098b2:	46c12b83          	lw	s7,1132(sp)
1c0098b6:	46812c03          	lw	s8,1128(sp)
1c0098ba:	46412c83          	lw	s9,1124(sp)
1c0098be:	46012d03          	lw	s10,1120(sp)
1c0098c2:	45c12d83          	lw	s11,1116(sp)
1c0098c6:	49010113          	addi	sp,sp,1168
1c0098ca:	8082                	ret
1c0098cc:	00469793          	slli	a5,a3,0x4
1c0098d0:	00465693          	srli	a3,a2,0x4
1c0098d4:	8edd                	or	a3,a3,a5
1c0098d6:	8c42                	mv	s8,a6
1c0098d8:	e4d554e3          	ble	a3,a0,1c009720 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x120>
1c0098dc:	bd91                	j	1c009730 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair+0x130>

1c0098de <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair>:
1c0098de:	1141                	addi	sp,sp,-16
1c0098e0:	c422                	sw	s0,8(sp)
1c0098e2:	c226                	sw	s1,4(sp)
1c0098e4:	842a                	mv	s0,a0
1c0098e6:	84ae                	mv	s1,a1
1c0098e8:	c606                	sw	ra,12(sp)
1c0098ea:	3b19                	jal	1c009600 <PQCLEAN_KYBER512_CLEAN_indcpa_keypair>
1c0098ec:	30048793          	addi	a5,s1,768
1c0098f0:	00440713          	addi	a4,s0,4
1c0098f4:	00e7b733          	sltu	a4,a5,a4
1c0098f8:	00174713          	xori	a4,a4,1
1c0098fc:	0ff77713          	andi	a4,a4,255
1c009900:	eb11                	bnez	a4,1c009914 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x36>
1c009902:	30448713          	addi	a4,s1,772
1c009906:	00e43733          	sltu	a4,s0,a4
1c00990a:	00174713          	xori	a4,a4,1
1c00990e:	0ff77713          	andi	a4,a4,255
1c009912:	c369                	beqz	a4,1c0099d4 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0xf6>
1c009914:	408007b3          	neg	a5,s0
1c009918:	8b8d                	andi	a5,a5,3
1c00991a:	cfe9                	beqz	a5,1c0099f4 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x116>
1c00991c:	00044683          	lbu	a3,0(s0)
1c009920:	4705                	li	a4,1
1c009922:	30d48023          	sb	a3,768(s1)
1c009926:	0ce78363          	beq	a5,a4,1c0099ec <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x10e>
1c00992a:	00144683          	lbu	a3,1(s0)
1c00992e:	470d                	li	a4,3
1c009930:	30d480a3          	sb	a3,769(s1)
1c009934:	0ce79463          	bne	a5,a4,1c0099fc <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x11e>
1c009938:	00244703          	lbu	a4,2(s0)
1c00993c:	31d00893          	li	a7,797
1c009940:	30e48123          	sb	a4,770(s1)
1c009944:	450d                	li	a0,3
1c009946:	32000813          	li	a6,800
1c00994a:	40f80833          	sub	a6,a6,a5
1c00994e:	30078713          	addi	a4,a5,768
1c009952:	00285593          	srli	a1,a6,0x2
1c009956:	97a2                	add	a5,a5,s0
1c009958:	9726                	add	a4,a4,s1
1c00995a:	4681                	li	a3,0
1c00995c:	4390                	lw	a2,0(a5)
1c00995e:	0685                	addi	a3,a3,1
1c009960:	c310                	sw	a2,0(a4)
1c009962:	0791                	addi	a5,a5,4
1c009964:	0711                	addi	a4,a4,4
1c009966:	feb6ebe3          	bltu	a3,a1,1c00995c <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x7e>
1c00996a:	ffc87693          	andi	a3,a6,-4
1c00996e:	00d507b3          	add	a5,a0,a3
1c009972:	40d88733          	sub	a4,a7,a3
1c009976:	62048513          	addi	a0,s1,1568
1c00997a:	02d80d63          	beq	a6,a3,1c0099b4 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0xd6>
1c00997e:	00f406b3          	add	a3,s0,a5
1c009982:	0006c603          	lbu	a2,0(a3)
1c009986:	00f486b3          	add	a3,s1,a5
1c00998a:	30c68023          	sb	a2,768(a3)
1c00998e:	fff70593          	addi	a1,a4,-1
1c009992:	00178613          	addi	a2,a5,1
1c009996:	cd99                	beqz	a1,1c0099b4 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0xd6>
1c009998:	9622                	add	a2,a2,s0
1c00999a:	00064583          	lbu	a1,0(a2)
1c00999e:	4609                	li	a2,2
1c0099a0:	30b680a3          	sb	a1,769(a3)
1c0099a4:	0789                	addi	a5,a5,2
1c0099a6:	00c70763          	beq	a4,a2,1c0099b4 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0xd6>
1c0099aa:	97a2                	add	a5,a5,s0
1c0099ac:	0007c783          	lbu	a5,0(a5)
1c0099b0:	30f68123          	sb	a5,770(a3)
1c0099b4:	85a2                	mv	a1,s0
1c0099b6:	32000613          	li	a2,800
1c0099ba:	90cff0ef          	jal	ra,1c008ac6 <sha3_256>
1c0099be:	64048513          	addi	a0,s1,1600
1c0099c2:	02000593          	li	a1,32
1c0099c6:	26c5                	jal	1c009da6 <randombytes>
1c0099c8:	40b2                	lw	ra,12(sp)
1c0099ca:	4422                	lw	s0,8(sp)
1c0099cc:	4492                	lw	s1,4(sp)
1c0099ce:	4501                	li	a0,0
1c0099d0:	0141                	addi	sp,sp,16
1c0099d2:	8082                	ret
1c0099d4:	8722                	mv	a4,s0
1c0099d6:	62048513          	addi	a0,s1,1568
1c0099da:	00074683          	lbu	a3,0(a4)
1c0099de:	0785                	addi	a5,a5,1
1c0099e0:	fed78fa3          	sb	a3,-1(a5)
1c0099e4:	0705                	addi	a4,a4,1
1c0099e6:	fef51ae3          	bne	a0,a5,1c0099da <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0xfc>
1c0099ea:	b7e9                	j	1c0099b4 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0xd6>
1c0099ec:	31f00893          	li	a7,799
1c0099f0:	4505                	li	a0,1
1c0099f2:	bf91                	j	1c009946 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x68>
1c0099f4:	32000893          	li	a7,800
1c0099f8:	4501                	li	a0,0
1c0099fa:	b7b1                	j	1c009946 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x68>
1c0099fc:	31e00893          	li	a7,798
1c009a00:	4509                	li	a0,2
1c009a02:	b791                	j	1c009946 <PQCLEAN_KYBER512_CLEAN_crypto_kem_keypair+0x68>

1c009a04 <PQCLEAN_KYBER512_CLEAN_ntt>:
1c009a04:	7139                	addi	sp,sp,-64
1c009a06:	da26                	sw	s1,52(sp)
1c009a08:	d256                	sw	s5,36(sp)
1c009a0a:	d05a                	sw	s6,32(sp)
1c009a0c:	ce5e                	sw	s7,28(sp)
1c009a0e:	cc62                	sw	s8,24(sp)
1c009a10:	ca66                	sw	s9,20(sp)
1c009a12:	de06                	sw	ra,60(sp)
1c009a14:	dc22                	sw	s0,56(sp)
1c009a16:	d84a                	sw	s2,48(sp)
1c009a18:	d64e                	sw	s3,44(sp)
1c009a1a:	d452                	sw	s4,40(sp)
1c009a1c:	c86a                	sw	s10,16(sp)
1c009a1e:	c66e                	sw	s11,12(sp)
1c009a20:	8b2a                	mv	s6,a0
1c009a22:	4c9d                	li	s9,7
1c009a24:	d0a00493          	li	s1,-758
1c009a28:	4b85                	li	s7,1
1c009a2a:	08000a93          	li	s5,128
1c009a2e:	0ff00c13          	li	s8,255
1c009a32:	001b8993          	addi	s3,s7,1
1c009a36:	1c0007b7          	lui	a5,0x1c000
1c009a3a:	4401                	li	s0,0
1c009a3c:	00199a13          	slli	s4,s3,0x1
1c009a40:	15078793          	addi	a5,a5,336 # 1c000150 <PQCLEAN_KYBER512_CLEAN_zetas>
1c009a44:	008a8933          	add	s2,s5,s0
1c009a48:	9a3e                	add	s4,s4,a5
1c009a4a:	8bce                	mv	s7,s3
1c009a4c:	05247b63          	bleu	s2,s0,1c009aa2 <PQCLEAN_KYBER512_CLEAN_ntt+0x9e>
1c009a50:	00191793          	slli	a5,s2,0x1
1c009a54:	00fb0d33          	add	s10,s6,a5
1c009a58:	0406                	slli	s0,s0,0x1
1c009a5a:	945a                	add	s0,s0,s6
1c009a5c:	8dea                	mv	s11,s10
1c009a5e:	000d1503          	lh	a0,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c009a62:	0409                	addi	s0,s0,2
1c009a64:	02950533          	mul	a0,a0,s1
1c009a68:	2b6d                	jal	1c00a022 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c009a6a:	ffe45703          	lhu	a4,-2(s0)
1c009a6e:	0542                	slli	a0,a0,0x10
1c009a70:	8141                	srli	a0,a0,0x10
1c009a72:	8f09                	sub	a4,a4,a0
1c009a74:	00ed1023          	sh	a4,0(s10)
1c009a78:	ffe45703          	lhu	a4,-2(s0)
1c009a7c:	0d09                	addi	s10,s10,2
1c009a7e:	953a                	add	a0,a0,a4
1c009a80:	fea41f23          	sh	a0,-2(s0)
1c009a84:	fc8d9de3          	bne	s11,s0,1c009a5e <PQCLEAN_KYBER512_CLEAN_ntt+0x5a>
1c009a88:	01590433          	add	s0,s2,s5
1c009a8c:	008c6d63          	bltu	s8,s0,1c009aa6 <PQCLEAN_KYBER512_CLEAN_ntt+0xa2>
1c009a90:	0985                	addi	s3,s3,1
1c009a92:	008a8933          	add	s2,s5,s0
1c009a96:	000a1483          	lh	s1,0(s4)
1c009a9a:	8bce                	mv	s7,s3
1c009a9c:	0a09                	addi	s4,s4,2
1c009a9e:	fb2469e3          	bltu	s0,s2,1c009a50 <PQCLEAN_KYBER512_CLEAN_ntt+0x4c>
1c009aa2:	844a                	mv	s0,s2
1c009aa4:	b7f5                	j	1c009a90 <PQCLEAN_KYBER512_CLEAN_ntt+0x8c>
1c009aa6:	1cfd                	addi	s9,s9,-1
1c009aa8:	001ada93          	srli	s5,s5,0x1
1c009aac:	000c8b63          	beqz	s9,1c009ac2 <PQCLEAN_KYBER512_CLEAN_ntt+0xbe>
1c009ab0:	1c0007b7          	lui	a5,0x1c000
1c009ab4:	0986                	slli	s3,s3,0x1
1c009ab6:	15078793          	addi	a5,a5,336 # 1c000150 <PQCLEAN_KYBER512_CLEAN_zetas>
1c009aba:	99be                	add	s3,s3,a5
1c009abc:	00099483          	lh	s1,0(s3)
1c009ac0:	bf8d                	j	1c009a32 <PQCLEAN_KYBER512_CLEAN_ntt+0x2e>
1c009ac2:	50f2                	lw	ra,60(sp)
1c009ac4:	5462                	lw	s0,56(sp)
1c009ac6:	54d2                	lw	s1,52(sp)
1c009ac8:	5942                	lw	s2,48(sp)
1c009aca:	59b2                	lw	s3,44(sp)
1c009acc:	5a22                	lw	s4,40(sp)
1c009ace:	5a92                	lw	s5,36(sp)
1c009ad0:	5b02                	lw	s6,32(sp)
1c009ad2:	4bf2                	lw	s7,28(sp)
1c009ad4:	4c62                	lw	s8,24(sp)
1c009ad6:	4cd2                	lw	s9,20(sp)
1c009ad8:	4d42                	lw	s10,16(sp)
1c009ada:	4db2                	lw	s11,12(sp)
1c009adc:	6121                	addi	sp,sp,64
1c009ade:	8082                	ret

1c009ae0 <PQCLEAN_KYBER512_CLEAN_basemul>:
1c009ae0:	00261783          	lh	a5,2(a2)
1c009ae4:	00259703          	lh	a4,2(a1)
1c009ae8:	1101                	addi	sp,sp,-32
1c009aea:	cc22                	sw	s0,24(sp)
1c009aec:	842a                	mv	s0,a0
1c009aee:	02f70533          	mul	a0,a4,a5
1c009af2:	ce06                	sw	ra,28(sp)
1c009af4:	ca26                	sw	s1,20(sp)
1c009af6:	c84a                	sw	s2,16(sp)
1c009af8:	c64e                	sw	s3,12(sp)
1c009afa:	892e                	mv	s2,a1
1c009afc:	84b2                	mv	s1,a2
1c009afe:	89b6                	mv	s3,a3
1c009b00:	230d                	jal	1c00a022 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c009b02:	00a41023          	sh	a0,0(s0)
1c009b06:	03350533          	mul	a0,a0,s3
1c009b0a:	2b21                	jal	1c00a022 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c009b0c:	00a41023          	sh	a0,0(s0)
1c009b10:	00049783          	lh	a5,0(s1)
1c009b14:	00091503          	lh	a0,0(s2)
1c009b18:	02f50533          	mul	a0,a0,a5
1c009b1c:	2319                	jal	1c00a022 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c009b1e:	00045783          	lhu	a5,0(s0)
1c009b22:	953e                	add	a0,a0,a5
1c009b24:	00a41023          	sh	a0,0(s0)
1c009b28:	00249783          	lh	a5,2(s1)
1c009b2c:	00091503          	lh	a0,0(s2)
1c009b30:	02f50533          	mul	a0,a0,a5
1c009b34:	21fd                	jal	1c00a022 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c009b36:	00a41123          	sh	a0,2(s0)
1c009b3a:	00049783          	lh	a5,0(s1)
1c009b3e:	00291503          	lh	a0,2(s2)
1c009b42:	02f50533          	mul	a0,a0,a5
1c009b46:	29f1                	jal	1c00a022 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c009b48:	00245783          	lhu	a5,2(s0)
1c009b4c:	40f2                	lw	ra,28(sp)
1c009b4e:	953e                	add	a0,a0,a5
1c009b50:	00a41123          	sh	a0,2(s0)
1c009b54:	4462                	lw	s0,24(sp)
1c009b56:	44d2                	lw	s1,20(sp)
1c009b58:	4942                	lw	s2,16(sp)
1c009b5a:	49b2                	lw	s3,12(sp)
1c009b5c:	6105                	addi	sp,sp,32
1c009b5e:	8082                	ret

1c009b60 <PQCLEAN_KYBER512_CLEAN_poly_tobytes>:
1c009b60:	6805                	lui	a6,0x1
1c009b62:	18050893          	addi	a7,a0,384 # 1000180 <__CTOR_LIST__-0x1afffe84>
1c009b66:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009b6a:	00059703          	lh	a4,0(a1)
1c009b6e:	00259783          	lh	a5,2(a1)
1c009b72:	40f75613          	srai	a2,a4,0xf
1c009b76:	40f7d693          	srai	a3,a5,0xf
1c009b7a:	01067633          	and	a2,a2,a6
1c009b7e:	0106f6b3          	and	a3,a3,a6
1c009b82:	9732                	add	a4,a4,a2
1c009b84:	97b6                	add	a5,a5,a3
1c009b86:	0742                	slli	a4,a4,0x10
1c009b88:	07c2                	slli	a5,a5,0x10
1c009b8a:	8341                	srli	a4,a4,0x10
1c009b8c:	83c1                	srli	a5,a5,0x10
1c009b8e:	00479613          	slli	a2,a5,0x4
1c009b92:	00875693          	srli	a3,a4,0x8
1c009b96:	8ed1                	or	a3,a3,a2
1c009b98:	8391                	srli	a5,a5,0x4
1c009b9a:	00e50023          	sb	a4,0(a0)
1c009b9e:	00d500a3          	sb	a3,1(a0)
1c009ba2:	00f50123          	sb	a5,2(a0)
1c009ba6:	050d                	addi	a0,a0,3
1c009ba8:	0591                	addi	a1,a1,4
1c009baa:	fca890e3          	bne	a7,a0,1c009b6a <PQCLEAN_KYBER512_CLEAN_poly_tobytes+0xa>
1c009bae:	8082                	ret

1c009bb0 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>:
1c009bb0:	7155                	addi	sp,sp,-208
1c009bb2:	c5a2                	sw	s0,200(sp)
1c009bb4:	86b2                	mv	a3,a2
1c009bb6:	842a                	mv	s0,a0
1c009bb8:	862e                	mv	a2,a1
1c009bba:	850a                	mv	a0,sp
1c009bbc:	0c000593          	li	a1,192
1c009bc0:	c786                	sw	ra,204(sp)
1c009bc2:	29f1                	jal	1c00a09e <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c009bc4:	858a                	mv	a1,sp
1c009bc6:	8522                	mv	a0,s0
1c009bc8:	feefe0ef          	jal	ra,1c0083b6 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>
1c009bcc:	40be                	lw	ra,204(sp)
1c009bce:	442e                	lw	s0,200(sp)
1c009bd0:	6169                	addi	sp,sp,208
1c009bd2:	8082                	ret

1c009bd4 <PQCLEAN_KYBER512_CLEAN_poly_ntt>:
1c009bd4:	1141                	addi	sp,sp,-16
1c009bd6:	c422                	sw	s0,8(sp)
1c009bd8:	842a                	mv	s0,a0
1c009bda:	c226                	sw	s1,4(sp)
1c009bdc:	c606                	sw	ra,12(sp)
1c009bde:	20040493          	addi	s1,s0,512
1c009be2:	350d                	jal	1c009a04 <PQCLEAN_KYBER512_CLEAN_ntt>
1c009be4:	00041503          	lh	a0,0(s0)
1c009be8:	0409                	addi	s0,s0,2
1c009bea:	29a1                	jal	1c00a042 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c009bec:	fea41f23          	sh	a0,-2(s0)
1c009bf0:	fe941ae3          	bne	s0,s1,1c009be4 <PQCLEAN_KYBER512_CLEAN_poly_ntt+0x10>
1c009bf4:	40b2                	lw	ra,12(sp)
1c009bf6:	4422                	lw	s0,8(sp)
1c009bf8:	4492                	lw	s1,4(sp)
1c009bfa:	0141                	addi	sp,sp,16
1c009bfc:	8082                	ret

1c009bfe <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>:
1c009bfe:	1101                	addi	sp,sp,-32
1c009c00:	ca26                	sw	s1,20(sp)
1c009c02:	c256                	sw	s5,4(sp)
1c009c04:	1c0004b7          	lui	s1,0x1c000
1c009c08:	1c000ab7          	lui	s5,0x1c000
1c009c0c:	c84a                	sw	s2,16(sp)
1c009c0e:	c64e                	sw	s3,12(sp)
1c009c10:	c452                	sw	s4,8(sp)
1c009c12:	ce06                	sw	ra,28(sp)
1c009c14:	cc22                	sw	s0,24(sp)
1c009c16:	1d048493          	addi	s1,s1,464 # 1c0001d0 <PQCLEAN_KYBER512_CLEAN_zetas+0x80>
1c009c1a:	00450a13          	addi	s4,a0,4
1c009c1e:	00458993          	addi	s3,a1,4
1c009c22:	00460913          	addi	s2,a2,4
1c009c26:	250a8a93          	addi	s5,s5,592 # 1c000250 <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c009c2a:	00049403          	lh	s0,0(s1)
1c009c2e:	ffc90613          	addi	a2,s2,-4
1c009c32:	ffc98593          	addi	a1,s3,-4
1c009c36:	ffca0513          	addi	a0,s4,-4
1c009c3a:	86a2                	mv	a3,s0
1c009c3c:	3555                	jal	1c009ae0 <PQCLEAN_KYBER512_CLEAN_basemul>
1c009c3e:	408006b3          	neg	a3,s0
1c009c42:	06c2                	slli	a3,a3,0x10
1c009c44:	864a                	mv	a2,s2
1c009c46:	85ce                	mv	a1,s3
1c009c48:	8552                	mv	a0,s4
1c009c4a:	86c1                	srai	a3,a3,0x10
1c009c4c:	0489                	addi	s1,s1,2
1c009c4e:	3d49                	jal	1c009ae0 <PQCLEAN_KYBER512_CLEAN_basemul>
1c009c50:	0a21                	addi	s4,s4,8
1c009c52:	09a1                	addi	s3,s3,8
1c009c54:	0921                	addi	s2,s2,8
1c009c56:	fc9a9ae3          	bne	s5,s1,1c009c2a <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery+0x2c>
1c009c5a:	40f2                	lw	ra,28(sp)
1c009c5c:	4462                	lw	s0,24(sp)
1c009c5e:	44d2                	lw	s1,20(sp)
1c009c60:	4942                	lw	s2,16(sp)
1c009c62:	49b2                	lw	s3,12(sp)
1c009c64:	4a22                	lw	s4,8(sp)
1c009c66:	4a92                	lw	s5,4(sp)
1c009c68:	6105                	addi	sp,sp,32
1c009c6a:	8082                	ret

1c009c6c <PQCLEAN_KYBER512_CLEAN_poly_tomont>:
1c009c6c:	1141                	addi	sp,sp,-16
1c009c6e:	c422                	sw	s0,8(sp)
1c009c70:	c226                	sw	s1,4(sp)
1c009c72:	c04a                	sw	s2,0(sp)
1c009c74:	c606                	sw	ra,12(sp)
1c009c76:	842a                	mv	s0,a0
1c009c78:	20050913          	addi	s2,a0,512
1c009c7c:	54900493          	li	s1,1353
1c009c80:	00041503          	lh	a0,0(s0)
1c009c84:	0409                	addi	s0,s0,2
1c009c86:	02950533          	mul	a0,a0,s1
1c009c8a:	2e61                	jal	1c00a022 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c009c8c:	fea41f23          	sh	a0,-2(s0)
1c009c90:	ff2418e3          	bne	s0,s2,1c009c80 <PQCLEAN_KYBER512_CLEAN_poly_tomont+0x14>
1c009c94:	40b2                	lw	ra,12(sp)
1c009c96:	4422                	lw	s0,8(sp)
1c009c98:	4492                	lw	s1,4(sp)
1c009c9a:	4902                	lw	s2,0(sp)
1c009c9c:	0141                	addi	sp,sp,16
1c009c9e:	8082                	ret

1c009ca0 <PQCLEAN_KYBER512_CLEAN_poly_reduce>:
1c009ca0:	1141                	addi	sp,sp,-16
1c009ca2:	c422                	sw	s0,8(sp)
1c009ca4:	c226                	sw	s1,4(sp)
1c009ca6:	c606                	sw	ra,12(sp)
1c009ca8:	842a                	mv	s0,a0
1c009caa:	20050493          	addi	s1,a0,512
1c009cae:	00041503          	lh	a0,0(s0)
1c009cb2:	0409                	addi	s0,s0,2
1c009cb4:	2679                	jal	1c00a042 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c009cb6:	fea41f23          	sh	a0,-2(s0)
1c009cba:	fe941ae3          	bne	s0,s1,1c009cae <PQCLEAN_KYBER512_CLEAN_poly_reduce+0xe>
1c009cbe:	40b2                	lw	ra,12(sp)
1c009cc0:	4422                	lw	s0,8(sp)
1c009cc2:	4492                	lw	s1,4(sp)
1c009cc4:	0141                	addi	sp,sp,16
1c009cc6:	8082                	ret

1c009cc8 <PQCLEAN_KYBER512_CLEAN_poly_add>:
1c009cc8:	20058693          	addi	a3,a1,512
1c009ccc:	0005d783          	lhu	a5,0(a1)
1c009cd0:	00065703          	lhu	a4,0(a2)
1c009cd4:	0589                	addi	a1,a1,2
1c009cd6:	97ba                	add	a5,a5,a4
1c009cd8:	00f51023          	sh	a5,0(a0)
1c009cdc:	0609                	addi	a2,a2,2
1c009cde:	0509                	addi	a0,a0,2
1c009ce0:	fed596e3          	bne	a1,a3,1c009ccc <PQCLEAN_KYBER512_CLEAN_poly_add+0x4>
1c009ce4:	8082                	ret

1c009ce6 <PQCLEAN_KYBER512_CLEAN_polyvec_tobytes>:
1c009ce6:	1141                	addi	sp,sp,-16
1c009ce8:	c422                	sw	s0,8(sp)
1c009cea:	c226                	sw	s1,4(sp)
1c009cec:	c606                	sw	ra,12(sp)
1c009cee:	842a                	mv	s0,a0
1c009cf0:	84ae                	mv	s1,a1
1c009cf2:	35bd                	jal	1c009b60 <PQCLEAN_KYBER512_CLEAN_poly_tobytes>
1c009cf4:	18040513          	addi	a0,s0,384
1c009cf8:	4422                	lw	s0,8(sp)
1c009cfa:	40b2                	lw	ra,12(sp)
1c009cfc:	20048593          	addi	a1,s1,512
1c009d00:	4492                	lw	s1,4(sp)
1c009d02:	0141                	addi	sp,sp,16
1c009d04:	bdb1                	j	1c009b60 <PQCLEAN_KYBER512_CLEAN_poly_tobytes>

1c009d06 <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>:
1c009d06:	1141                	addi	sp,sp,-16
1c009d08:	c422                	sw	s0,8(sp)
1c009d0a:	c606                	sw	ra,12(sp)
1c009d0c:	842a                	mv	s0,a0
1c009d0e:	35d9                	jal	1c009bd4 <PQCLEAN_KYBER512_CLEAN_poly_ntt>
1c009d10:	20040513          	addi	a0,s0,512
1c009d14:	4422                	lw	s0,8(sp)
1c009d16:	40b2                	lw	ra,12(sp)
1c009d18:	0141                	addi	sp,sp,16
1c009d1a:	bd6d                	j	1c009bd4 <PQCLEAN_KYBER512_CLEAN_poly_ntt>

1c009d1c <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>:
1c009d1c:	df010113          	addi	sp,sp,-528
1c009d20:	20112623          	sw	ra,524(sp)
1c009d24:	20812423          	sw	s0,520(sp)
1c009d28:	20912223          	sw	s1,516(sp)
1c009d2c:	21212023          	sw	s2,512(sp)
1c009d30:	842a                	mv	s0,a0
1c009d32:	84ae                	mv	s1,a1
1c009d34:	8932                	mv	s2,a2
1c009d36:	35e1                	jal	1c009bfe <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c009d38:	20090613          	addi	a2,s2,512
1c009d3c:	20048593          	addi	a1,s1,512
1c009d40:	850a                	mv	a0,sp
1c009d42:	3d75                	jal	1c009bfe <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c009d44:	860a                	mv	a2,sp
1c009d46:	85a2                	mv	a1,s0
1c009d48:	8522                	mv	a0,s0
1c009d4a:	3fbd                	jal	1c009cc8 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c009d4c:	8522                	mv	a0,s0
1c009d4e:	3f89                	jal	1c009ca0 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c009d50:	20c12083          	lw	ra,524(sp)
1c009d54:	20812403          	lw	s0,520(sp)
1c009d58:	20412483          	lw	s1,516(sp)
1c009d5c:	20012903          	lw	s2,512(sp)
1c009d60:	21010113          	addi	sp,sp,528
1c009d64:	8082                	ret

1c009d66 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>:
1c009d66:	1141                	addi	sp,sp,-16
1c009d68:	c422                	sw	s0,8(sp)
1c009d6a:	c606                	sw	ra,12(sp)
1c009d6c:	842a                	mv	s0,a0
1c009d6e:	3f0d                	jal	1c009ca0 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c009d70:	20040513          	addi	a0,s0,512
1c009d74:	4422                	lw	s0,8(sp)
1c009d76:	40b2                	lw	ra,12(sp)
1c009d78:	0141                	addi	sp,sp,16
1c009d7a:	b71d                	j	1c009ca0 <PQCLEAN_KYBER512_CLEAN_poly_reduce>

1c009d7c <PQCLEAN_KYBER512_CLEAN_polyvec_add>:
1c009d7c:	1141                	addi	sp,sp,-16
1c009d7e:	c422                	sw	s0,8(sp)
1c009d80:	c226                	sw	s1,4(sp)
1c009d82:	c04a                	sw	s2,0(sp)
1c009d84:	c606                	sw	ra,12(sp)
1c009d86:	842a                	mv	s0,a0
1c009d88:	84ae                	mv	s1,a1
1c009d8a:	8932                	mv	s2,a2
1c009d8c:	3f35                	jal	1c009cc8 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c009d8e:	20040513          	addi	a0,s0,512
1c009d92:	4422                	lw	s0,8(sp)
1c009d94:	40b2                	lw	ra,12(sp)
1c009d96:	20090613          	addi	a2,s2,512
1c009d9a:	20048593          	addi	a1,s1,512
1c009d9e:	4902                	lw	s2,0(sp)
1c009da0:	4492                	lw	s1,4(sp)
1c009da2:	0141                	addi	sp,sp,16
1c009da4:	b715                	j	1c009cc8 <PQCLEAN_KYBER512_CLEAN_poly_add>

1c009da6 <randombytes>:
1c009da6:	26058d63          	beqz	a1,1c00a020 <randombytes+0x27a>
1c009daa:	1c0066b7          	lui	a3,0x1c006
1c009dae:	7139                	addi	sp,sp,-64
1c009db0:	2c468693          	addi	a3,a3,708 # 1c0062c4 <outleft>
1c009db4:	da4a                	sw	s2,52(sp)
1c009db6:	d84e                	sw	s3,48(sp)
1c009db8:	95aa                	add	a1,a1,a0
1c009dba:	1c006737          	lui	a4,0x1c006
1c009dbe:	1c0069b7          	lui	s3,0x1c006
1c009dc2:	9e378937          	lui	s2,0x9e378
1c009dc6:	429c                	lw	a5,0(a3)
1c009dc8:	d652                	sw	s4,44(sp)
1c009dca:	d456                	sw	s5,40(sp)
1c009dcc:	de22                	sw	s0,60(sp)
1c009dce:	dc26                	sw	s1,56(sp)
1c009dd0:	d25a                	sw	s6,36(sp)
1c009dd2:	d05e                	sw	s7,32(sp)
1c009dd4:	ce62                	sw	s8,28(sp)
1c009dd6:	cc66                	sw	s9,24(sp)
1c009dd8:	ca6a                	sw	s10,20(sp)
1c009dda:	c86e                	sw	s11,16(sp)
1c009ddc:	8aaa                	mv	s5,a0
1c009dde:	c62e                	sw	a1,12(sp)
1c009de0:	2a070a13          	addi	s4,a4,672 # 1c0062a0 <out>
1c009de4:	27098993          	addi	s3,s3,624 # 1c006270 <stack>
1c009de8:	9b990913          	addi	s2,s2,-1607 # 9e3779b9 <pulp__FC+0x9e3779ba>
1c009dec:	cf9d                	beqz	a5,1c009e2a <randombytes+0x84>
1c009dee:	17fd                	addi	a5,a5,-1
1c009df0:	00279713          	slli	a4,a5,0x2
1c009df4:	9752                	add	a4,a4,s4
1c009df6:	4318                	lw	a4,0(a4)
1c009df8:	1c0066b7          	lui	a3,0x1c006
1c009dfc:	00ea8023          	sb	a4,0(s5)
1c009e00:	2c468693          	addi	a3,a3,708 # 1c0062c4 <outleft>
1c009e04:	4732                	lw	a4,12(sp)
1c009e06:	c29c                	sw	a5,0(a3)
1c009e08:	0a85                	addi	s5,s5,1
1c009e0a:	feea91e3          	bne	s5,a4,1c009dec <randombytes+0x46>
1c009e0e:	5472                	lw	s0,60(sp)
1c009e10:	54e2                	lw	s1,56(sp)
1c009e12:	5952                	lw	s2,52(sp)
1c009e14:	59c2                	lw	s3,48(sp)
1c009e16:	5a32                	lw	s4,44(sp)
1c009e18:	5aa2                	lw	s5,40(sp)
1c009e1a:	5b12                	lw	s6,36(sp)
1c009e1c:	5b82                	lw	s7,32(sp)
1c009e1e:	4c72                	lw	s8,28(sp)
1c009e20:	4ce2                	lw	s9,24(sp)
1c009e22:	4d52                	lw	s10,20(sp)
1c009e24:	4dc2                	lw	s11,16(sp)
1c009e26:	6121                	addi	sp,sp,64
1c009e28:	8082                	ret
1c009e2a:	0009a583          	lw	a1,0(s3)
1c009e2e:	0049a283          	lw	t0,4(s3)
1c009e32:	0585                	addi	a1,a1,1
1c009e34:	00b9a023          	sw	a1,0(s3)
1c009e38:	0089a383          	lw	t2,8(s3)
1c009e3c:	00c9a403          	lw	s0,12(s3)
1c009e40:	e999                	bnez	a1,1c009e56 <randombytes+0xb0>
1c009e42:	0285                	addi	t0,t0,1
1c009e44:	0059a223          	sw	t0,4(s3)
1c009e48:	00029763          	bnez	t0,1c009e56 <randombytes+0xb0>
1c009e4c:	0385                	addi	t2,t2,1
1c009e4e:	0079a423          	sw	t2,8(s3)
1c009e52:	1c038363          	beqz	t2,1c00a018 <randombytes+0x272>
1c009e56:	0109af83          	lw	t6,16(s3)
1c009e5a:	0149af03          	lw	t5,20(s3)
1c009e5e:	0189ae83          	lw	t4,24(s3)
1c009e62:	01c9ae03          	lw	t3,28(s3)
1c009e66:	0209a303          	lw	t1,32(s3)
1c009e6a:	0249a883          	lw	a7,36(s3)
1c009e6e:	0289a803          	lw	a6,40(s3)
1c009e72:	02c9a503          	lw	a0,44(s3)
1c009e76:	478d                	li	a5,3
1c009e78:	470d                	li	a4,3
1c009e7a:	c23e                	sw	a5,4(sp)
1c009e7c:	0095c593          	xori	a1,a1,9
1c009e80:	0072c293          	xori	t0,t0,7
1c009e84:	0093c393          	xori	t2,t2,9
1c009e88:	00344413          	xori	s0,s0,3
1c009e8c:	002fcf93          	xori	t6,t6,2
1c009e90:	003f4f13          	xori	t5,t5,3
1c009e94:	008ece93          	xori	t4,t4,8
1c009e98:	004e4e13          	xori	t3,t3,4
1c009e9c:	00634313          	xori	t1,t1,6
1c009ea0:	0028c893          	xori	a7,a7,2
1c009ea4:	00684813          	xori	a6,a6,6
1c009ea8:	00454513          	xori	a0,a0,4
1c009eac:	4b15                	li	s6,5
1c009eae:	4ba5                	li	s7,9
1c009eb0:	4c1d                	li	s8,7
1c009eb2:	4c89                	li	s9,2
1c009eb4:	4d0d                	li	s10,3
1c009eb6:	4da1                	li	s11,8
1c009eb8:	c43a                	sw	a4,8(sp)
1c009eba:	4781                	li	a5,0
1c009ebc:	e377a737          	lui	a4,0xe377a
1c009ec0:	b9070713          	addi	a4,a4,-1136 # e3779b90 <pulp__FC+0xe3779b91>
1c009ec4:	00e784b3          	add	s1,a5,a4
1c009ec8:	97ca                	add	a5,a5,s2
1c009eca:	01b55613          	srli	a2,a0,0x1b
1c009ece:	00354713          	xori	a4,a0,3
1c009ed2:	00551693          	slli	a3,a0,0x5
1c009ed6:	8ed1                	or	a3,a3,a2
1c009ed8:	973e                	add	a4,a4,a5
1c009eda:	8f35                	xor	a4,a4,a3
1c009edc:	95ba                	add	a1,a1,a4
1c009ede:	0195d613          	srli	a2,a1,0x19
1c009ee2:	0015c713          	xori	a4,a1,1
1c009ee6:	00759693          	slli	a3,a1,0x7
1c009eea:	8ed1                	or	a3,a3,a2
1c009eec:	973e                	add	a4,a4,a5
1c009eee:	8f35                	xor	a4,a4,a3
1c009ef0:	92ba                	add	t0,t0,a4
1c009ef2:	0172d613          	srli	a2,t0,0x17
1c009ef6:	0042c713          	xori	a4,t0,4
1c009efa:	00929693          	slli	a3,t0,0x9
1c009efe:	8ed1                	or	a3,a3,a2
1c009f00:	973e                	add	a4,a4,a5
1c009f02:	8f35                	xor	a4,a4,a3
1c009f04:	93ba                	add	t2,t2,a4
1c009f06:	0133d613          	srli	a2,t2,0x13
1c009f0a:	0013c713          	xori	a4,t2,1
1c009f0e:	00d39693          	slli	a3,t2,0xd
1c009f12:	8ed1                	or	a3,a3,a2
1c009f14:	973e                	add	a4,a4,a5
1c009f16:	8f35                	xor	a4,a4,a3
1c009f18:	943a                	add	s0,s0,a4
1c009f1a:	01b45613          	srli	a2,s0,0x1b
1c009f1e:	00544713          	xori	a4,s0,5
1c009f22:	00541693          	slli	a3,s0,0x5
1c009f26:	8ed1                	or	a3,a3,a2
1c009f28:	973e                	add	a4,a4,a5
1c009f2a:	8f35                	xor	a4,a4,a3
1c009f2c:	9fba                	add	t6,t6,a4
1c009f2e:	019fd613          	srli	a2,t6,0x19
1c009f32:	009fc713          	xori	a4,t6,9
1c009f36:	007f9693          	slli	a3,t6,0x7
1c009f3a:	8ed1                	or	a3,a3,a2
1c009f3c:	973e                	add	a4,a4,a5
1c009f3e:	8f35                	xor	a4,a4,a3
1c009f40:	9f3a                	add	t5,t5,a4
1c009f42:	017f5613          	srli	a2,t5,0x17
1c009f46:	002f4713          	xori	a4,t5,2
1c009f4a:	009f1693          	slli	a3,t5,0x9
1c009f4e:	8ed1                	or	a3,a3,a2
1c009f50:	973e                	add	a4,a4,a5
1c009f52:	8f35                	xor	a4,a4,a3
1c009f54:	9eba                	add	t4,t4,a4
1c009f56:	013ed613          	srli	a2,t4,0x13
1c009f5a:	006ec713          	xori	a4,t4,6
1c009f5e:	00de9693          	slli	a3,t4,0xd
1c009f62:	8ed1                	or	a3,a3,a2
1c009f64:	973e                	add	a4,a4,a5
1c009f66:	8f35                	xor	a4,a4,a3
1c009f68:	9e3a                	add	t3,t3,a4
1c009f6a:	01be5613          	srli	a2,t3,0x1b
1c009f6e:	005e4713          	xori	a4,t3,5
1c009f72:	005e1693          	slli	a3,t3,0x5
1c009f76:	8ed1                	or	a3,a3,a2
1c009f78:	973e                	add	a4,a4,a5
1c009f7a:	8f35                	xor	a4,a4,a3
1c009f7c:	933a                	add	t1,t1,a4
1c009f7e:	01935613          	srli	a2,t1,0x19
1c009f82:	00334713          	xori	a4,t1,3
1c009f86:	00731693          	slli	a3,t1,0x7
1c009f8a:	8ed1                	or	a3,a3,a2
1c009f8c:	973e                	add	a4,a4,a5
1c009f8e:	8f35                	xor	a4,a4,a3
1c009f90:	98ba                	add	a7,a7,a4
1c009f92:	0178d613          	srli	a2,a7,0x17
1c009f96:	0058c713          	xori	a4,a7,5
1c009f9a:	00989693          	slli	a3,a7,0x9
1c009f9e:	8ed1                	or	a3,a3,a2
1c009fa0:	973e                	add	a4,a4,a5
1c009fa2:	8f35                	xor	a4,a4,a3
1c009fa4:	983a                	add	a6,a6,a4
1c009fa6:	00884713          	xori	a4,a6,8
1c009faa:	00d81693          	slli	a3,a6,0xd
1c009fae:	01385613          	srli	a2,a6,0x13
1c009fb2:	973e                	add	a4,a4,a5
1c009fb4:	8ed1                	or	a3,a3,a2
1c009fb6:	8f35                	xor	a4,a4,a3
1c009fb8:	953a                	add	a0,a0,a4
1c009fba:	f09797e3          	bne	a5,s1,1c009ec8 <randombytes+0x122>
1c009fbe:	4692                	lw	a3,4(sp)
1c009fc0:	4722                	lw	a4,8(sp)
1c009fc2:	01f6c6b3          	xor	a3,a3,t6
1c009fc6:	c236                	sw	a3,4(sp)
1c009fc8:	01e74733          	xor	a4,a4,t5
1c009fcc:	c6ef36b7          	lui	a3,0xc6ef3
1c009fd0:	c43a                	sw	a4,8(sp)
1c009fd2:	72068693          	addi	a3,a3,1824 # c6ef3720 <pulp__FC+0xc6ef3721>
1c009fd6:	01ddcdb3          	xor	s11,s11,t4
1c009fda:	01cd4d33          	xor	s10,s10,t3
1c009fde:	006cccb3          	xor	s9,s9,t1
1c009fe2:	011c4c33          	xor	s8,s8,a7
1c009fe6:	010bcbb3          	xor	s7,s7,a6
1c009fea:	00ab4b33          	xor	s6,s6,a0
1c009fee:	ecd797e3          	bne	a5,a3,1c009ebc <randombytes+0x116>
1c009ff2:	4792                	lw	a5,4(sp)
1c009ff4:	00ea2223          	sw	a4,4(s4)
1c009ff8:	00fa2023          	sw	a5,0(s4)
1c009ffc:	01ba2423          	sw	s11,8(s4)
1c00a000:	01aa2623          	sw	s10,12(s4)
1c00a004:	019a2823          	sw	s9,16(s4)
1c00a008:	018a2a23          	sw	s8,20(s4)
1c00a00c:	017a2c23          	sw	s7,24(s4)
1c00a010:	016a2e23          	sw	s6,28(s4)
1c00a014:	479d                	li	a5,7
1c00a016:	bbe9                	j	1c009df0 <randombytes+0x4a>
1c00a018:	0405                	addi	s0,s0,1
1c00a01a:	0089a623          	sw	s0,12(s3)
1c00a01e:	bd25                	j	1c009e56 <randombytes+0xb0>
1c00a020:	8082                	ret

1c00a022 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>:
1c00a022:	777d                	lui	a4,0xfffff
1c00a024:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00a028:	02f507b3          	mul	a5,a0,a5
1c00a02c:	07c2                	slli	a5,a5,0x10
1c00a02e:	2ff70713          	addi	a4,a4,767
1c00a032:	87c1                	srai	a5,a5,0x10
1c00a034:	02e787b3          	mul	a5,a5,a4
1c00a038:	953e                	add	a0,a0,a5
1c00a03a:	8541                	srai	a0,a0,0x10
1c00a03c:	0542                	slli	a0,a0,0x10
1c00a03e:	8541                	srai	a0,a0,0x10
1c00a040:	8082                	ret

1c00a042 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>:
1c00a042:	6795                	lui	a5,0x5
1c00a044:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a048:	02f507b3          	mul	a5,a0,a5
1c00a04c:	02000737          	lui	a4,0x2000
1c00a050:	97ba                	add	a5,a5,a4
1c00a052:	6705                	lui	a4,0x1
1c00a054:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a058:	87e9                	srai	a5,a5,0x1a
1c00a05a:	02e787b3          	mul	a5,a5,a4
1c00a05e:	8d1d                	sub	a0,a0,a5
1c00a060:	0542                	slli	a0,a0,0x10
1c00a062:	8541                	srai	a0,a0,0x10
1c00a064:	8082                	ret

1c00a066 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>:
1c00a066:	7139                	addi	sp,sp,-64
1c00a068:	da26                	sw	s1,52(sp)
1c00a06a:	d84a                	sw	s2,48(sp)
1c00a06c:	84b2                	mv	s1,a2
1c00a06e:	892a                	mv	s2,a0
1c00a070:	02000613          	li	a2,32
1c00a074:	0068                	addi	a0,sp,12
1c00a076:	de06                	sw	ra,60(sp)
1c00a078:	dc22                	sw	s0,56(sp)
1c00a07a:	8436                	mv	s0,a3
1c00a07c:	2049                	jal	1c00a0fe <memcpy>
1c00a07e:	006c                	addi	a1,sp,12
1c00a080:	854a                	mv	a0,s2
1c00a082:	02200613          	li	a2,34
1c00a086:	02910623          	sb	s1,44(sp)
1c00a08a:	028106a3          	sb	s0,45(sp)
1c00a08e:	d62fe0ef          	jal	ra,1c0085f0 <shake128_absorb>
1c00a092:	50f2                	lw	ra,60(sp)
1c00a094:	5462                	lw	s0,56(sp)
1c00a096:	54d2                	lw	s1,52(sp)
1c00a098:	5942                	lw	s2,48(sp)
1c00a09a:	6121                	addi	sp,sp,64
1c00a09c:	8082                	ret

1c00a09e <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>:
1c00a09e:	7139                	addi	sp,sp,-64
1c00a0a0:	87b2                	mv	a5,a2
1c00a0a2:	da26                	sw	s1,52(sp)
1c00a0a4:	d84a                	sw	s2,48(sp)
1c00a0a6:	84aa                	mv	s1,a0
1c00a0a8:	892e                	mv	s2,a1
1c00a0aa:	02000613          	li	a2,32
1c00a0ae:	85be                	mv	a1,a5
1c00a0b0:	0068                	addi	a0,sp,12
1c00a0b2:	de06                	sw	ra,60(sp)
1c00a0b4:	dc22                	sw	s0,56(sp)
1c00a0b6:	8436                	mv	s0,a3
1c00a0b8:	2099                	jal	1c00a0fe <memcpy>
1c00a0ba:	0070                	addi	a2,sp,12
1c00a0bc:	85ca                	mv	a1,s2
1c00a0be:	8526                	mv	a0,s1
1c00a0c0:	02100693          	li	a3,33
1c00a0c4:	02810623          	sb	s0,44(sp)
1c00a0c8:	fc4fe0ef          	jal	ra,1c00888c <shake256>
1c00a0cc:	50f2                	lw	ra,60(sp)
1c00a0ce:	5462                	lw	s0,56(sp)
1c00a0d0:	54d2                	lw	s1,52(sp)
1c00a0d2:	5942                	lw	s2,48(sp)
1c00a0d4:	6121                	addi	sp,sp,64
1c00a0d6:	8082                	ret

1c00a0d8 <pos_wait_forever>:
1c00a0d8:	f14027f3          	csrr	a5,mhartid
1c00a0dc:	8795                	srai	a5,a5,0x5
1c00a0de:	03f7f793          	andi	a5,a5,63
1c00a0e2:	477d                	li	a4,31
1c00a0e4:	00e78363          	beq	a5,a4,1c00a0ea <pos_wait_forever+0x12>
1c00a0e8:	a001                	j	1c00a0e8 <pos_wait_forever+0x10>
1c00a0ea:	1a10a7b7          	lui	a5,0x1a10a
1c00a0ee:	577d                	li	a4,-1
1c00a0f0:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a0f4:	10500073          	wfi
1c00a0f8:	10500073          	wfi
1c00a0fc:	bfe5                	j	1c00a0f4 <pos_wait_forever+0x1c>

1c00a0fe <memcpy>:
1c00a0fe:	00b567b3          	or	a5,a0,a1
1c00a102:	8b8d                	andi	a5,a5,3
1c00a104:	10078f63          	beqz	a5,1c00a222 <memcpy+0x124>
1c00a108:	14060063          	beqz	a2,1c00a248 <memcpy+0x14a>
1c00a10c:	00458793          	addi	a5,a1,4
1c00a110:	00450693          	addi	a3,a0,4
1c00a114:	00f537b3          	sltu	a5,a0,a5
1c00a118:	00d5b6b3          	sltu	a3,a1,a3
1c00a11c:	0017c793          	xori	a5,a5,1
1c00a120:	0016c693          	xori	a3,a3,1
1c00a124:	873e                	mv	a4,a5
1c00a126:	87b6                	mv	a5,a3
1c00a128:	8fd9                	or	a5,a5,a4
1c00a12a:	0ff7f793          	andi	a5,a5,255
1c00a12e:	cff9                	beqz	a5,1c00a20c <memcpy+0x10e>
1c00a130:	00863793          	sltiu	a5,a2,8
1c00a134:	0017c793          	xori	a5,a5,1
1c00a138:	0ff7f793          	andi	a5,a5,255
1c00a13c:	cbe1                	beqz	a5,1c00a20c <memcpy+0x10e>
1c00a13e:	40b007b3          	neg	a5,a1
1c00a142:	8b8d                	andi	a5,a5,3
1c00a144:	fff60313          	addi	t1,a2,-1
1c00a148:	cfe5                	beqz	a5,1c00a240 <memcpy+0x142>
1c00a14a:	0005c683          	lbu	a3,0(a1)
1c00a14e:	4705                	li	a4,1
1c00a150:	00d50023          	sb	a3,0(a0)
1c00a154:	00158893          	addi	a7,a1,1
1c00a158:	00150813          	addi	a6,a0,1
1c00a15c:	02e78963          	beq	a5,a4,1c00a18e <memcpy+0x90>
1c00a160:	0015c683          	lbu	a3,1(a1)
1c00a164:	470d                	li	a4,3
1c00a166:	00d500a3          	sb	a3,1(a0)
1c00a16a:	00258893          	addi	a7,a1,2
1c00a16e:	00250813          	addi	a6,a0,2
1c00a172:	ffe60313          	addi	t1,a2,-2
1c00a176:	00e79c63          	bne	a5,a4,1c00a18e <memcpy+0x90>
1c00a17a:	0025c703          	lbu	a4,2(a1)
1c00a17e:	00358893          	addi	a7,a1,3
1c00a182:	00350813          	addi	a6,a0,3
1c00a186:	00e50123          	sb	a4,2(a0)
1c00a18a:	ffd60313          	addi	t1,a2,-3
1c00a18e:	8e1d                	sub	a2,a2,a5
1c00a190:	95be                	add	a1,a1,a5
1c00a192:	00265e13          	srli	t3,a2,0x2
1c00a196:	97aa                	add	a5,a5,a0
1c00a198:	4701                	li	a4,0
1c00a19a:	4194                	lw	a3,0(a1)
1c00a19c:	0705                	addi	a4,a4,1
1c00a19e:	c394                	sw	a3,0(a5)
1c00a1a0:	0591                	addi	a1,a1,4
1c00a1a2:	0791                	addi	a5,a5,4
1c00a1a4:	ffc76be3          	bltu	a4,t3,1c00a19a <memcpy+0x9c>
1c00a1a8:	ffc67593          	andi	a1,a2,-4
1c00a1ac:	40b306b3          	sub	a3,t1,a1
1c00a1b0:	00b807b3          	add	a5,a6,a1
1c00a1b4:	00b88733          	add	a4,a7,a1
1c00a1b8:	06b60463          	beq	a2,a1,1c00a220 <memcpy+0x122>
1c00a1bc:	00074583          	lbu	a1,0(a4)
1c00a1c0:	fff68613          	addi	a2,a3,-1
1c00a1c4:	00b78023          	sb	a1,0(a5)
1c00a1c8:	ce21                	beqz	a2,1c00a220 <memcpy+0x122>
1c00a1ca:	00174583          	lbu	a1,1(a4)
1c00a1ce:	ffe68613          	addi	a2,a3,-2
1c00a1d2:	00b780a3          	sb	a1,1(a5)
1c00a1d6:	c629                	beqz	a2,1c00a220 <memcpy+0x122>
1c00a1d8:	00274583          	lbu	a1,2(a4)
1c00a1dc:	ffd68613          	addi	a2,a3,-3
1c00a1e0:	00b78123          	sb	a1,2(a5)
1c00a1e4:	ce15                	beqz	a2,1c00a220 <memcpy+0x122>
1c00a1e6:	00374583          	lbu	a1,3(a4)
1c00a1ea:	ffc68613          	addi	a2,a3,-4
1c00a1ee:	00b781a3          	sb	a1,3(a5)
1c00a1f2:	c61d                	beqz	a2,1c00a220 <memcpy+0x122>
1c00a1f4:	00474583          	lbu	a1,4(a4)
1c00a1f8:	4615                	li	a2,5
1c00a1fa:	00b78223          	sb	a1,4(a5)
1c00a1fe:	02c68163          	beq	a3,a2,1c00a220 <memcpy+0x122>
1c00a202:	00574703          	lbu	a4,5(a4)
1c00a206:	00e782a3          	sb	a4,5(a5)
1c00a20a:	8082                	ret
1c00a20c:	962e                	add	a2,a2,a1
1c00a20e:	87aa                	mv	a5,a0
1c00a210:	0585                	addi	a1,a1,1
1c00a212:	fff5c703          	lbu	a4,-1(a1)
1c00a216:	0785                	addi	a5,a5,1
1c00a218:	fee78fa3          	sb	a4,-1(a5)
1c00a21c:	fec59ae3          	bne	a1,a2,1c00a210 <memcpy+0x112>
1c00a220:	8082                	ret
1c00a222:	00367793          	andi	a5,a2,3
1c00a226:	ee0793e3          	bnez	a5,1c00a10c <memcpy+0xe>
1c00a22a:	da7d                	beqz	a2,1c00a220 <memcpy+0x122>
1c00a22c:	87aa                	mv	a5,a0
1c00a22e:	0591                	addi	a1,a1,4
1c00a230:	ffc5a703          	lw	a4,-4(a1)
1c00a234:	0791                	addi	a5,a5,4
1c00a236:	fee7ae23          	sw	a4,-4(a5)
1c00a23a:	1671                	addi	a2,a2,-4
1c00a23c:	fa6d                	bnez	a2,1c00a22e <memcpy+0x130>
1c00a23e:	8082                	ret
1c00a240:	88ae                	mv	a7,a1
1c00a242:	882a                	mv	a6,a0
1c00a244:	8332                	mv	t1,a2
1c00a246:	b7a1                	j	1c00a18e <memcpy+0x90>
1c00a248:	8082                	ret

1c00a24a <memmove>:
1c00a24a:	40b507b3          	sub	a5,a0,a1
1c00a24e:	10c7e463          	bltu	a5,a2,1c00a356 <memmove+0x10c>
1c00a252:	12060b63          	beqz	a2,1c00a388 <memmove+0x13e>
1c00a256:	00458793          	addi	a5,a1,4
1c00a25a:	00450693          	addi	a3,a0,4
1c00a25e:	00f537b3          	sltu	a5,a0,a5
1c00a262:	00d5b6b3          	sltu	a3,a1,a3
1c00a266:	0017c793          	xori	a5,a5,1
1c00a26a:	0016c693          	xori	a3,a3,1
1c00a26e:	873e                	mv	a4,a5
1c00a270:	87b6                	mv	a5,a3
1c00a272:	8fd9                	or	a5,a5,a4
1c00a274:	0ff7f793          	andi	a5,a5,255
1c00a278:	cfed                	beqz	a5,1c00a372 <memmove+0x128>
1c00a27a:	00863793          	sltiu	a5,a2,8
1c00a27e:	0017c793          	xori	a5,a5,1
1c00a282:	0ff7f793          	andi	a5,a5,255
1c00a286:	c7f5                	beqz	a5,1c00a372 <memmove+0x128>
1c00a288:	40b007b3          	neg	a5,a1
1c00a28c:	8b8d                	andi	a5,a5,3
1c00a28e:	fff60313          	addi	t1,a2,-1
1c00a292:	cfe5                	beqz	a5,1c00a38a <memmove+0x140>
1c00a294:	0005c683          	lbu	a3,0(a1)
1c00a298:	4705                	li	a4,1
1c00a29a:	00d50023          	sb	a3,0(a0)
1c00a29e:	00150813          	addi	a6,a0,1
1c00a2a2:	00158893          	addi	a7,a1,1
1c00a2a6:	02e78963          	beq	a5,a4,1c00a2d8 <memmove+0x8e>
1c00a2aa:	0015c683          	lbu	a3,1(a1)
1c00a2ae:	470d                	li	a4,3
1c00a2b0:	00d500a3          	sb	a3,1(a0)
1c00a2b4:	00250813          	addi	a6,a0,2
1c00a2b8:	00258893          	addi	a7,a1,2
1c00a2bc:	ffe60313          	addi	t1,a2,-2
1c00a2c0:	00e79c63          	bne	a5,a4,1c00a2d8 <memmove+0x8e>
1c00a2c4:	0025c703          	lbu	a4,2(a1)
1c00a2c8:	00350813          	addi	a6,a0,3
1c00a2cc:	00e50123          	sb	a4,2(a0)
1c00a2d0:	00358893          	addi	a7,a1,3
1c00a2d4:	ffd60313          	addi	t1,a2,-3
1c00a2d8:	8e1d                	sub	a2,a2,a5
1c00a2da:	95be                	add	a1,a1,a5
1c00a2dc:	00265e13          	srli	t3,a2,0x2
1c00a2e0:	97aa                	add	a5,a5,a0
1c00a2e2:	4701                	li	a4,0
1c00a2e4:	4194                	lw	a3,0(a1)
1c00a2e6:	0705                	addi	a4,a4,1
1c00a2e8:	c394                	sw	a3,0(a5)
1c00a2ea:	0591                	addi	a1,a1,4
1c00a2ec:	0791                	addi	a5,a5,4
1c00a2ee:	ffc76be3          	bltu	a4,t3,1c00a2e4 <memmove+0x9a>
1c00a2f2:	ffc67593          	andi	a1,a2,-4
1c00a2f6:	40b306b3          	sub	a3,t1,a1
1c00a2fa:	00b807b3          	add	a5,a6,a1
1c00a2fe:	00b88733          	add	a4,a7,a1
1c00a302:	08b60263          	beq	a2,a1,1c00a386 <memmove+0x13c>
1c00a306:	00074583          	lbu	a1,0(a4)
1c00a30a:	fff68613          	addi	a2,a3,-1
1c00a30e:	00b78023          	sb	a1,0(a5)
1c00a312:	ca35                	beqz	a2,1c00a386 <memmove+0x13c>
1c00a314:	00174583          	lbu	a1,1(a4)
1c00a318:	ffe68613          	addi	a2,a3,-2
1c00a31c:	00b780a3          	sb	a1,1(a5)
1c00a320:	c23d                	beqz	a2,1c00a386 <memmove+0x13c>
1c00a322:	00274583          	lbu	a1,2(a4)
1c00a326:	ffd68613          	addi	a2,a3,-3
1c00a32a:	00b78123          	sb	a1,2(a5)
1c00a32e:	ce21                	beqz	a2,1c00a386 <memmove+0x13c>
1c00a330:	00374583          	lbu	a1,3(a4)
1c00a334:	ffc68613          	addi	a2,a3,-4
1c00a338:	00b781a3          	sb	a1,3(a5)
1c00a33c:	c629                	beqz	a2,1c00a386 <memmove+0x13c>
1c00a33e:	00474583          	lbu	a1,4(a4)
1c00a342:	4615                	li	a2,5
1c00a344:	00b78223          	sb	a1,4(a5)
1c00a348:	02c68f63          	beq	a3,a2,1c00a386 <memmove+0x13c>
1c00a34c:	00574703          	lbu	a4,5(a4)
1c00a350:	00e782a3          	sb	a4,5(a5)
1c00a354:	8082                	ret
1c00a356:	167d                	addi	a2,a2,-1
1c00a358:	00c587b3          	add	a5,a1,a2
1c00a35c:	962a                	add	a2,a2,a0
1c00a35e:	15fd                	addi	a1,a1,-1
1c00a360:	0007c703          	lbu	a4,0(a5)
1c00a364:	17fd                	addi	a5,a5,-1
1c00a366:	00e60023          	sb	a4,0(a2)
1c00a36a:	167d                	addi	a2,a2,-1
1c00a36c:	feb79ae3          	bne	a5,a1,1c00a360 <memmove+0x116>
1c00a370:	8082                	ret
1c00a372:	962a                	add	a2,a2,a0
1c00a374:	87aa                	mv	a5,a0
1c00a376:	0005c703          	lbu	a4,0(a1)
1c00a37a:	0785                	addi	a5,a5,1
1c00a37c:	fee78fa3          	sb	a4,-1(a5)
1c00a380:	0585                	addi	a1,a1,1
1c00a382:	fec79ae3          	bne	a5,a2,1c00a376 <memmove+0x12c>
1c00a386:	8082                	ret
1c00a388:	8082                	ret
1c00a38a:	88ae                	mv	a7,a1
1c00a38c:	882a                	mv	a6,a0
1c00a38e:	8332                	mv	t1,a2
1c00a390:	b7a1                	j	1c00a2d8 <memmove+0x8e>

1c00a392 <strchr>:
1c00a392:	00054783          	lbu	a5,0(a0)
1c00a396:	0ff5f593          	andi	a1,a1,255
1c00a39a:	00b78863          	beq	a5,a1,1c00a3aa <strchr+0x18>
1c00a39e:	c799                	beqz	a5,1c00a3ac <strchr+0x1a>
1c00a3a0:	0505                	addi	a0,a0,1
1c00a3a2:	00054783          	lbu	a5,0(a0)
1c00a3a6:	feb79ce3          	bne	a5,a1,1c00a39e <strchr+0xc>
1c00a3aa:	8082                	ret
1c00a3ac:	0015b593          	seqz	a1,a1
1c00a3b0:	40b005b3          	neg	a1,a1
1c00a3b4:	8d6d                	and	a0,a0,a1
1c00a3b6:	8082                	ret

1c00a3b8 <puts>:
1c00a3b8:	00054783          	lbu	a5,0(a0)
1c00a3bc:	c78d                	beqz	a5,1c00a3e6 <puts+0x2e>
1c00a3be:	f14026f3          	csrr	a3,mhartid
1c00a3c2:	00369713          	slli	a4,a3,0x3
1c00a3c6:	1a10f637          	lui	a2,0x1a10f
1c00a3ca:	0ff77713          	andi	a4,a4,255
1c00a3ce:	9732                	add	a4,a4,a2
1c00a3d0:	6609                	lui	a2,0x2
1c00a3d2:	068a                	slli	a3,a3,0x2
1c00a3d4:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a3d8:	8ef1                	and	a3,a3,a2
1c00a3da:	9736                	add	a4,a4,a3
1c00a3dc:	c31c                	sw	a5,0(a4)
1c00a3de:	0505                	addi	a0,a0,1
1c00a3e0:	00054783          	lbu	a5,0(a0)
1c00a3e4:	ffe5                	bnez	a5,1c00a3dc <puts+0x24>
1c00a3e6:	f1402773          	csrr	a4,mhartid
1c00a3ea:	00371793          	slli	a5,a4,0x3
1c00a3ee:	1a10f6b7          	lui	a3,0x1a10f
1c00a3f2:	0ff7f793          	andi	a5,a5,255
1c00a3f6:	97b6                	add	a5,a5,a3
1c00a3f8:	6689                	lui	a3,0x2
1c00a3fa:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a3fe:	070a                	slli	a4,a4,0x2
1c00a400:	8f75                	and	a4,a4,a3
1c00a402:	97ba                	add	a5,a5,a4
1c00a404:	4729                	li	a4,10
1c00a406:	c398                	sw	a4,0(a5)
1c00a408:	4501                	li	a0,0
1c00a40a:	8082                	ret

1c00a40c <pos_libc_fputc_locked>:
1c00a40c:	6689                	lui	a3,0x2
1c00a40e:	f14027f3          	csrr	a5,mhartid
1c00a412:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a416:	00379713          	slli	a4,a5,0x3
1c00a41a:	078a                	slli	a5,a5,0x2
1c00a41c:	8ff5                	and	a5,a5,a3
1c00a41e:	0ff77713          	andi	a4,a4,255
1c00a422:	1a10f6b7          	lui	a3,0x1a10f
1c00a426:	9736                	add	a4,a4,a3
1c00a428:	0ff57513          	andi	a0,a0,255
1c00a42c:	97ba                	add	a5,a5,a4
1c00a42e:	c388                	sw	a0,0(a5)
1c00a430:	4501                	li	a0,0
1c00a432:	8082                	ret

1c00a434 <putchar>:
1c00a434:	6689                	lui	a3,0x2
1c00a436:	f14027f3          	csrr	a5,mhartid
1c00a43a:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a43e:	00379713          	slli	a4,a5,0x3
1c00a442:	078a                	slli	a5,a5,0x2
1c00a444:	8ff5                	and	a5,a5,a3
1c00a446:	0ff77713          	andi	a4,a4,255
1c00a44a:	1a10f6b7          	lui	a3,0x1a10f
1c00a44e:	9736                	add	a4,a4,a3
1c00a450:	0ff57513          	andi	a0,a0,255
1c00a454:	97ba                	add	a5,a5,a4
1c00a456:	c388                	sw	a0,0(a5)
1c00a458:	4501                	li	a0,0
1c00a45a:	8082                	ret

1c00a45c <pos_libc_prf_locked>:
1c00a45c:	a0b1                	j	1c00a4a8 <pos_libc_prf>

1c00a45e <exit>:
1c00a45e:	800007b7          	lui	a5,0x80000
1c00a462:	1141                	addi	sp,sp,-16
1c00a464:	8d5d                	or	a0,a0,a5
1c00a466:	c606                	sw	ra,12(sp)
1c00a468:	1a1047b7          	lui	a5,0x1a104
1c00a46c:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a470:	31a5                	jal	1c00a0d8 <pos_wait_forever>

1c00a472 <pos_io_start>:
1c00a472:	4501                	li	a0,0
1c00a474:	8082                	ret

1c00a476 <pos_io_stop>:
1c00a476:	4501                	li	a0,0
1c00a478:	8082                	ret

1c00a47a <printf>:
1c00a47a:	7139                	addi	sp,sp,-64
1c00a47c:	02410313          	addi	t1,sp,36
1c00a480:	d432                	sw	a2,40(sp)
1c00a482:	862a                	mv	a2,a0
1c00a484:	1c00a537          	lui	a0,0x1c00a
1c00a488:	d22e                	sw	a1,36(sp)
1c00a48a:	d636                	sw	a3,44(sp)
1c00a48c:	4589                	li	a1,2
1c00a48e:	869a                	mv	a3,t1
1c00a490:	40c50513          	addi	a0,a0,1036 # 1c00a40c <pos_libc_fputc_locked>
1c00a494:	ce06                	sw	ra,28(sp)
1c00a496:	d83a                	sw	a4,48(sp)
1c00a498:	da3e                	sw	a5,52(sp)
1c00a49a:	dc42                	sw	a6,56(sp)
1c00a49c:	de46                	sw	a7,60(sp)
1c00a49e:	c61a                	sw	t1,12(sp)
1c00a4a0:	3f75                	jal	1c00a45c <pos_libc_prf_locked>
1c00a4a2:	40f2                	lw	ra,28(sp)
1c00a4a4:	6121                	addi	sp,sp,64
1c00a4a6:	8082                	ret

1c00a4a8 <pos_libc_prf>:
1c00a4a8:	7169                	addi	sp,sp,-304
1c00a4aa:	12812423          	sw	s0,296(sp)
1c00a4ae:	12912223          	sw	s1,292(sp)
1c00a4b2:	11612823          	sw	s6,272(sp)
1c00a4b6:	11712623          	sw	s7,268(sp)
1c00a4ba:	11812423          	sw	s8,264(sp)
1c00a4be:	11912223          	sw	s9,260(sp)
1c00a4c2:	11a12023          	sw	s10,256(sp)
1c00a4c6:	12112623          	sw	ra,300(sp)
1c00a4ca:	13212023          	sw	s2,288(sp)
1c00a4ce:	11312e23          	sw	s3,284(sp)
1c00a4d2:	11412c23          	sw	s4,280(sp)
1c00a4d6:	11512a23          	sw	s5,276(sp)
1c00a4da:	dfee                	sw	s11,252(sp)
1c00a4dc:	8b2a                	mv	s6,a0
1c00a4de:	8d2e                	mv	s10,a1
1c00a4e0:	84b2                	mv	s1,a2
1c00a4e2:	8c36                	mv	s8,a3
1c00a4e4:	4401                	li	s0,0
1c00a4e6:	1c000bb7          	lui	s7,0x1c000
1c00a4ea:	02410c93          	addi	s9,sp,36
1c00a4ee:	0004c503          	lbu	a0,0(s1)
1c00a4f2:	0485                	addi	s1,s1,1
1c00a4f4:	cd19                	beqz	a0,1c00a512 <pos_libc_prf+0x6a>
1c00a4f6:	02500793          	li	a5,37
1c00a4fa:	04f50863          	beq	a0,a5,1c00a54a <pos_libc_prf+0xa2>
1c00a4fe:	85ea                	mv	a1,s10
1c00a500:	9b02                	jalr	s6
1c00a502:	57fd                	li	a5,-1
1c00a504:	24f50863          	beq	a0,a5,1c00a754 <pos_libc_prf+0x2ac>
1c00a508:	0405                	addi	s0,s0,1
1c00a50a:	0004c503          	lbu	a0,0(s1)
1c00a50e:	0485                	addi	s1,s1,1
1c00a510:	f17d                	bnez	a0,1c00a4f6 <pos_libc_prf+0x4e>
1c00a512:	8522                	mv	a0,s0
1c00a514:	12c12083          	lw	ra,300(sp)
1c00a518:	12812403          	lw	s0,296(sp)
1c00a51c:	12412483          	lw	s1,292(sp)
1c00a520:	12012903          	lw	s2,288(sp)
1c00a524:	11c12983          	lw	s3,284(sp)
1c00a528:	11812a03          	lw	s4,280(sp)
1c00a52c:	11412a83          	lw	s5,276(sp)
1c00a530:	11012b03          	lw	s6,272(sp)
1c00a534:	10c12b83          	lw	s7,268(sp)
1c00a538:	10812c03          	lw	s8,264(sp)
1c00a53c:	10412c83          	lw	s9,260(sp)
1c00a540:	10012d03          	lw	s10,256(sp)
1c00a544:	5dfe                	lw	s11,252(sp)
1c00a546:	6155                	addi	sp,sp,304
1c00a548:	8082                	ret
1c00a54a:	00148a93          	addi	s5,s1,1
1c00a54e:	fffacd83          	lbu	s11,-1(s5)
1c00a552:	02000713          	li	a4,32
1c00a556:	254b8513          	addi	a0,s7,596 # 1c000254 <PQCLEAN_KYBER512_CLEAN_zetas+0x104>
1c00a55a:	85ee                	mv	a1,s11
1c00a55c:	c83a                	sw	a4,16(sp)
1c00a55e:	cc02                	sw	zero,24(sp)
1c00a560:	ca02                	sw	zero,20(sp)
1c00a562:	ce02                	sw	zero,28(sp)
1c00a564:	c602                	sw	zero,12(sp)
1c00a566:	02300913          	li	s2,35
1c00a56a:	02d00a13          	li	s4,45
1c00a56e:	89d6                	mv	s3,s5
1c00a570:	350d                	jal	1c00a392 <strchr>
1c00a572:	c915                	beqz	a0,1c00a5a6 <pos_libc_prf+0xfe>
1c00a574:	212d8963          	beq	s11,s2,1c00a786 <pos_libc_prf+0x2de>
1c00a578:	1fb97063          	bleu	s11,s2,1c00a758 <pos_libc_prf+0x2b0>
1c00a57c:	214d8163          	beq	s11,s4,1c00a77e <pos_libc_prf+0x2d6>
1c00a580:	03000613          	li	a2,48
1c00a584:	1ecd8863          	beq	s11,a2,1c00a774 <pos_libc_prf+0x2cc>
1c00a588:	02b00693          	li	a3,43
1c00a58c:	1edd8063          	beq	s11,a3,1c00a76c <pos_libc_prf+0x2c4>
1c00a590:	84d6                	mv	s1,s5
1c00a592:	00148a93          	addi	s5,s1,1
1c00a596:	fffacd83          	lbu	s11,-1(s5)
1c00a59a:	254b8513          	addi	a0,s7,596
1c00a59e:	85ee                	mv	a1,s11
1c00a5a0:	89d6                	mv	s3,s5
1c00a5a2:	3bc5                	jal	1c00a392 <strchr>
1c00a5a4:	f961                	bnez	a0,1c00a574 <pos_libc_prf+0xcc>
1c00a5a6:	02a00613          	li	a2,42
1c00a5aa:	20cd8463          	beq	s11,a2,1c00a7b2 <pos_libc_prf+0x30a>
1c00a5ae:	fd0d8613          	addi	a2,s11,-48
1c00a5b2:	45a5                	li	a1,9
1c00a5b4:	4901                	li	s2,0
1c00a5b6:	1cc5fe63          	bleu	a2,a1,1c00a792 <pos_libc_prf+0x2ea>
1c00a5ba:	02e00713          	li	a4,46
1c00a5be:	5a7d                	li	s4,-1
1c00a5c0:	24ed8463          	beq	s11,a4,1c00a808 <pos_libc_prf+0x360>
1c00a5c4:	1c000837          	lui	a6,0x1c000
1c00a5c8:	85ee                	mv	a1,s11
1c00a5ca:	25c80513          	addi	a0,a6,604 # 1c00025c <PQCLEAN_KYBER512_CLEAN_zetas+0x10c>
1c00a5ce:	33d1                	jal	1c00a392 <strchr>
1c00a5d0:	84ce                	mv	s1,s3
1c00a5d2:	c509                	beqz	a0,1c00a5dc <pos_libc_prf+0x134>
1c00a5d4:	0009cd83          	lbu	s11,0(s3)
1c00a5d8:	00198493          	addi	s1,s3,1
1c00a5dc:	06700713          	li	a4,103
1c00a5e0:	1fb75963          	ble	s11,a4,1c00a7d2 <pos_libc_prf+0x32a>
1c00a5e4:	07000713          	li	a4,112
1c00a5e8:	12ed89e3          	beq	s11,a4,1c00af1a <pos_libc_prf+0xa72>
1c00a5ec:	25b75263          	ble	s11,a4,1c00a830 <pos_libc_prf+0x388>
1c00a5f0:	07500713          	li	a4,117
1c00a5f4:	0aed89e3          	beq	s11,a4,1c00aea6 <pos_libc_prf+0x9fe>
1c00a5f8:	07800713          	li	a4,120
1c00a5fc:	72ed8b63          	beq	s11,a4,1c00ad32 <pos_libc_prf+0x88a>
1c00a600:	07300713          	li	a4,115
1c00a604:	1aed9ce3          	bne	s11,a4,1c00afbc <pos_libc_prf+0xb14>
1c00a608:	000c2583          	lw	a1,0(s8)
1c00a60c:	004c0a93          	addi	s5,s8,4
1c00a610:	87ae                	mv	a5,a1
1c00a612:	4981                	li	s3,0
1c00a614:	0c800693          	li	a3,200
1c00a618:	a021                	j	1c00a620 <pos_libc_prf+0x178>
1c00a61a:	0985                	addi	s3,s3,1
1c00a61c:	5ad98be3          	beq	s3,a3,1c00b3d2 <pos_libc_prf+0xf2a>
1c00a620:	0007c703          	lbu	a4,0(a5)
1c00a624:	0785                	addi	a5,a5,1
1c00a626:	fb75                	bnez	a4,1c00a61a <pos_libc_prf+0x172>
1c00a628:	000a4563          	bltz	s4,1c00a632 <pos_libc_prf+0x18a>
1c00a62c:	013a5363          	ble	s3,s4,1c00a632 <pos_libc_prf+0x18a>
1c00a630:	89d2                	mv	s3,s4
1c00a632:	8c56                	mv	s8,s5
1c00a634:	ea098de3          	beqz	s3,1c00a4ee <pos_libc_prf+0x46>
1c00a638:	864e                	mv	a2,s3
1c00a63a:	8566                	mv	a0,s9
1c00a63c:	34c9                	jal	1c00a0fe <memcpy>
1c00a63e:	8c56                	mv	s8,s5
1c00a640:	0f29d963          	ble	s2,s3,1c00a732 <pos_libc_prf+0x28a>
1c00a644:	c602                	sw	zero,12(sp)
1c00a646:	48f2                	lw	a7,28(sp)
1c00a648:	1a0885e3          	beqz	a7,1c00aff2 <pos_libc_prf+0xb4a>
1c00a64c:	013c87b3          	add	a5,s9,s3
1c00a650:	40f007b3          	neg	a5,a5
1c00a654:	8b8d                	andi	a5,a5,3
1c00a656:	00378693          	addi	a3,a5,3
1c00a65a:	4715                	li	a4,5
1c00a65c:	413905b3          	sub	a1,s2,s3
1c00a660:	00e6f363          	bleu	a4,a3,1c00a666 <pos_libc_prf+0x1be>
1c00a664:	4695                	li	a3,5
1c00a666:	fff90713          	addi	a4,s2,-1
1c00a66a:	41370733          	sub	a4,a4,s3
1c00a66e:	06d76663          	bltu	a4,a3,1c00a6da <pos_libc_prf+0x232>
1c00a672:	86ce                	mv	a3,s3
1c00a674:	cb9d                	beqz	a5,1c00a6aa <pos_libc_prf+0x202>
1c00a676:	0f010813          	addi	a6,sp,240
1c00a67a:	013806b3          	add	a3,a6,s3
1c00a67e:	02000713          	li	a4,32
1c00a682:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00a686:	4605                	li	a2,1
1c00a688:	00198693          	addi	a3,s3,1
1c00a68c:	00c78f63          	beq	a5,a2,1c00a6aa <pos_libc_prf+0x202>
1c00a690:	96c2                	add	a3,a3,a6
1c00a692:	f2e68a23          	sb	a4,-204(a3)
1c00a696:	460d                	li	a2,3
1c00a698:	00298693          	addi	a3,s3,2
1c00a69c:	00c79763          	bne	a5,a2,1c00a6aa <pos_libc_prf+0x202>
1c00a6a0:	96c2                	add	a3,a3,a6
1c00a6a2:	f2e68a23          	sb	a4,-204(a3)
1c00a6a6:	00398693          	addi	a3,s3,3
1c00a6aa:	8d9d                	sub	a1,a1,a5
1c00a6ac:	97ce                	add	a5,a5,s3
1c00a6ae:	0025d613          	srli	a2,a1,0x2
1c00a6b2:	97e6                	add	a5,a5,s9
1c00a6b4:	4701                	li	a4,0
1c00a6b6:	1c0008b7          	lui	a7,0x1c000
1c00a6ba:	25088893          	addi	a7,a7,592 # 1c000250 <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c00a6be:	0008a883          	lw	a7,0(a7)
1c00a6c2:	0705                	addi	a4,a4,1
1c00a6c4:	0117a023          	sw	a7,0(a5)
1c00a6c8:	0791                	addi	a5,a5,4
1c00a6ca:	fec766e3          	bltu	a4,a2,1c00a6b6 <pos_libc_prf+0x20e>
1c00a6ce:	ffc5f793          	andi	a5,a1,-4
1c00a6d2:	00d789b3          	add	s3,a5,a3
1c00a6d6:	04b78b63          	beq	a5,a1,1c00a72c <pos_libc_prf+0x284>
1c00a6da:	1988                	addi	a0,sp,240
1c00a6dc:	01350733          	add	a4,a0,s3
1c00a6e0:	02000793          	li	a5,32
1c00a6e4:	f2f70a23          	sb	a5,-204(a4)
1c00a6e8:	00198713          	addi	a4,s3,1
1c00a6ec:	05275063          	ble	s2,a4,1c00a72c <pos_libc_prf+0x284>
1c00a6f0:	972a                	add	a4,a4,a0
1c00a6f2:	f2f70a23          	sb	a5,-204(a4)
1c00a6f6:	00298713          	addi	a4,s3,2
1c00a6fa:	03275963          	ble	s2,a4,1c00a72c <pos_libc_prf+0x284>
1c00a6fe:	972a                	add	a4,a4,a0
1c00a700:	f2f70a23          	sb	a5,-204(a4)
1c00a704:	00398713          	addi	a4,s3,3
1c00a708:	03275263          	ble	s2,a4,1c00a72c <pos_libc_prf+0x284>
1c00a70c:	972a                	add	a4,a4,a0
1c00a70e:	f2f70a23          	sb	a5,-204(a4)
1c00a712:	00498713          	addi	a4,s3,4
1c00a716:	01275b63          	ble	s2,a4,1c00a72c <pos_libc_prf+0x284>
1c00a71a:	972a                	add	a4,a4,a0
1c00a71c:	f2f70a23          	sb	a5,-204(a4)
1c00a720:	0995                	addi	s3,s3,5
1c00a722:	0129d563          	ble	s2,s3,1c00a72c <pos_libc_prf+0x284>
1c00a726:	99aa                	add	s3,s3,a0
1c00a728:	f2f98a23          	sb	a5,-204(s3)
1c00a72c:	89ca                	mv	s3,s2
1c00a72e:	dc0980e3          	beqz	s3,1c00a4ee <pos_libc_prf+0x46>
1c00a732:	8966                	mv	s2,s9
1c00a734:	5a7d                	li	s4,-1
1c00a736:	41940ab3          	sub	s5,s0,s9
1c00a73a:	a029                	j	1c00a744 <pos_libc_prf+0x29c>
1c00a73c:	01590433          	add	s0,s2,s5
1c00a740:	da0987e3          	beqz	s3,1c00a4ee <pos_libc_prf+0x46>
1c00a744:	00094503          	lbu	a0,0(s2)
1c00a748:	85ea                	mv	a1,s10
1c00a74a:	9b02                	jalr	s6
1c00a74c:	0905                	addi	s2,s2,1
1c00a74e:	19fd                	addi	s3,s3,-1
1c00a750:	ff4516e3          	bne	a0,s4,1c00a73c <pos_libc_prf+0x294>
1c00a754:	547d                	li	s0,-1
1c00a756:	bb75                	j	1c00a512 <pos_libc_prf+0x6a>
1c00a758:	da0d8de3          	beqz	s11,1c00a512 <pos_libc_prf+0x6a>
1c00a75c:	02000513          	li	a0,32
1c00a760:	e2ad98e3          	bne	s11,a0,1c00a590 <pos_libc_prf+0xe8>
1c00a764:	4785                	li	a5,1
1c00a766:	cc3e                	sw	a5,24(sp)
1c00a768:	84d6                	mv	s1,s5
1c00a76a:	b525                	j	1c00a592 <pos_libc_prf+0xea>
1c00a76c:	4705                	li	a4,1
1c00a76e:	ca3a                	sw	a4,20(sp)
1c00a770:	84d6                	mv	s1,s5
1c00a772:	b505                	j	1c00a592 <pos_libc_prf+0xea>
1c00a774:	03000893          	li	a7,48
1c00a778:	c846                	sw	a7,16(sp)
1c00a77a:	84d6                	mv	s1,s5
1c00a77c:	bd19                	j	1c00a592 <pos_libc_prf+0xea>
1c00a77e:	4685                	li	a3,1
1c00a780:	ce36                	sw	a3,28(sp)
1c00a782:	84d6                	mv	s1,s5
1c00a784:	b539                	j	1c00a592 <pos_libc_prf+0xea>
1c00a786:	4805                	li	a6,1
1c00a788:	c642                	sw	a6,12(sp)
1c00a78a:	84d6                	mv	s1,s5
1c00a78c:	b519                	j	1c00a592 <pos_libc_prf+0xea>
1c00a78e:	84d6                	mv	s1,s5
1c00a790:	0a85                	addi	s5,s5,1
1c00a792:	00291793          	slli	a5,s2,0x2
1c00a796:	97ca                	add	a5,a5,s2
1c00a798:	0786                	slli	a5,a5,0x1
1c00a79a:	97ee                	add	a5,a5,s11
1c00a79c:	000acd83          	lbu	s11,0(s5)
1c00a7a0:	fd078913          	addi	s2,a5,-48
1c00a7a4:	fd0d8793          	addi	a5,s11,-48
1c00a7a8:	fef5f3e3          	bleu	a5,a1,1c00a78e <pos_libc_prf+0x2e6>
1c00a7ac:	00248993          	addi	s3,s1,2
1c00a7b0:	a811                	j	1c00a7c4 <pos_libc_prf+0x31c>
1c00a7b2:	000c2903          	lw	s2,0(s8)
1c00a7b6:	0c11                	addi	s8,s8,4
1c00a7b8:	14094663          	bltz	s2,1c00a904 <pos_libc_prf+0x45c>
1c00a7bc:	000acd83          	lbu	s11,0(s5)
1c00a7c0:	00248993          	addi	s3,s1,2
1c00a7c4:	0c800713          	li	a4,200
1c00a7c8:	df2779e3          	bleu	s2,a4,1c00a5ba <pos_libc_prf+0x112>
1c00a7cc:	0c800913          	li	s2,200
1c00a7d0:	b3ed                	j	1c00a5ba <pos_libc_prf+0x112>
1c00a7d2:	06500713          	li	a4,101
1c00a7d6:	12eddc63          	ble	a4,s11,1c00a90e <pos_libc_prf+0x466>
1c00a7da:	04700713          	li	a4,71
1c00a7de:	55b74063          	blt	a4,s11,1c00ad1e <pos_libc_prf+0x876>
1c00a7e2:	04500713          	li	a4,69
1c00a7e6:	12edd463          	ble	a4,s11,1c00a90e <pos_libc_prf+0x466>
1c00a7ea:	d20d84e3          	beqz	s11,1c00a512 <pos_libc_prf+0x6a>
1c00a7ee:	02500713          	li	a4,37
1c00a7f2:	7ced9563          	bne	s11,a4,1c00afbc <pos_libc_prf+0xb14>
1c00a7f6:	85ea                	mv	a1,s10
1c00a7f8:	02500513          	li	a0,37
1c00a7fc:	9b02                	jalr	s6
1c00a7fe:	57fd                	li	a5,-1
1c00a800:	f4f50ae3          	beq	a0,a5,1c00a754 <pos_libc_prf+0x2ac>
1c00a804:	0405                	addi	s0,s0,1
1c00a806:	b311                	j	1c00a50a <pos_libc_prf+0x62>
1c00a808:	0009c783          	lbu	a5,0(s3)
1c00a80c:	02a00713          	li	a4,42
1c00a810:	00198693          	addi	a3,s3,1
1c00a814:	0ae79d63          	bne	a5,a4,1c00a8ce <pos_libc_prf+0x426>
1c00a818:	000c2a03          	lw	s4,0(s8)
1c00a81c:	0019cd83          	lbu	s11,1(s3)
1c00a820:	0c11                	addi	s8,s8,4
1c00a822:	0989                	addi	s3,s3,2
1c00a824:	0c800713          	li	a4,200
1c00a828:	d9475ee3          	ble	s4,a4,1c00a5c4 <pos_libc_prf+0x11c>
1c00a82c:	5a7d                	li	s4,-1
1c00a82e:	bb59                	j	1c00a5c4 <pos_libc_prf+0x11c>
1c00a830:	06e00713          	li	a4,110
1c00a834:	76ed8e63          	beq	s11,a4,1c00afb0 <pos_libc_prf+0xb08>
1c00a838:	5bb75663          	ble	s11,a4,1c00ade4 <pos_libc_prf+0x93c>
1c00a83c:	4732                	lw	a4,12(sp)
1c00a83e:	004c0513          	addi	a0,s8,4
1c00a842:	000c2683          	lw	a3,0(s8)
1c00a846:	1c070de3          	beqz	a4,1c00b220 <pos_libc_prf+0xd78>
1c00a84a:	03000793          	li	a5,48
1c00a84e:	02f10223          	sb	a5,36(sp)
1c00a852:	16068de3          	beqz	a3,1c00b1cc <pos_libc_prf+0xd24>
1c00a856:	02510593          	addi	a1,sp,37
1c00a85a:	872e                	mv	a4,a1
1c00a85c:	87ba                	mv	a5,a4
1c00a85e:	0076f613          	andi	a2,a3,7
1c00a862:	0785                	addi	a5,a5,1
1c00a864:	03060613          	addi	a2,a2,48
1c00a868:	828d                	srli	a3,a3,0x3
1c00a86a:	fec78fa3          	sb	a2,-1(a5)
1c00a86e:	fae5                	bnez	a3,1c00a85e <pos_libc_prf+0x3b6>
1c00a870:	40b789b3          	sub	s3,a5,a1
1c00a874:	0149db63          	ble	s4,s3,1c00a88a <pos_libc_prf+0x3e2>
1c00a878:	03000693          	li	a3,48
1c00a87c:	0785                	addi	a5,a5,1
1c00a87e:	fed78fa3          	sb	a3,-1(a5)
1c00a882:	40b789b3          	sub	s3,a5,a1
1c00a886:	ff49cbe3          	blt	s3,s4,1c00a87c <pos_libc_prf+0x3d4>
1c00a88a:	00078023          	sb	zero,0(a5)
1c00a88e:	17fd                	addi	a5,a5,-1
1c00a890:	00f77e63          	bleu	a5,a4,1c00a8ac <pos_libc_prf+0x404>
1c00a894:	00074603          	lbu	a2,0(a4)
1c00a898:	0007c683          	lbu	a3,0(a5)
1c00a89c:	00c78023          	sb	a2,0(a5)
1c00a8a0:	00d70023          	sb	a3,0(a4)
1c00a8a4:	17fd                	addi	a5,a5,-1
1c00a8a6:	0705                	addi	a4,a4,1
1c00a8a8:	fef766e3          	bltu	a4,a5,1c00a894 <pos_libc_prf+0x3ec>
1c00a8ac:	4832                	lw	a6,12(sp)
1c00a8ae:	57fd                	li	a5,-1
1c00a8b0:	99c2                	add	s3,s3,a6
1c00a8b2:	22fa0ee3          	beq	s4,a5,1c00b2ee <pos_libc_prf+0xe46>
1c00a8b6:	0c800793          	li	a5,200
1c00a8ba:	e937cde3          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00a8be:	02000693          	li	a3,32
1c00a8c2:	8c2a                	mv	s8,a0
1c00a8c4:	c602                	sw	zero,12(sp)
1c00a8c6:	c836                	sw	a3,16(sp)
1c00a8c8:	d729cfe3          	blt	s3,s2,1c00a646 <pos_libc_prf+0x19e>
1c00a8cc:	b58d                	j	1c00a72e <pos_libc_prf+0x286>
1c00a8ce:	fd078593          	addi	a1,a5,-48
1c00a8d2:	4725                	li	a4,9
1c00a8d4:	8dbe                	mv	s11,a5
1c00a8d6:	4a01                	li	s4,0
1c00a8d8:	4625                	li	a2,9
1c00a8da:	00b77663          	bleu	a1,a4,1c00a8e6 <pos_libc_prf+0x43e>
1c00a8de:	1070006f          	j	1c00b1e4 <pos_libc_prf+0xd3c>
1c00a8e2:	89b6                	mv	s3,a3
1c00a8e4:	0685                	addi	a3,a3,1
1c00a8e6:	002a1793          	slli	a5,s4,0x2
1c00a8ea:	97d2                	add	a5,a5,s4
1c00a8ec:	0786                	slli	a5,a5,0x1
1c00a8ee:	97ee                	add	a5,a5,s11
1c00a8f0:	0006cd83          	lbu	s11,0(a3)
1c00a8f4:	fd078a13          	addi	s4,a5,-48
1c00a8f8:	fd0d8793          	addi	a5,s11,-48
1c00a8fc:	fef673e3          	bleu	a5,a2,1c00a8e2 <pos_libc_prf+0x43a>
1c00a900:	0989                	addi	s3,s3,2
1c00a902:	b70d                	j	1c00a824 <pos_libc_prf+0x37c>
1c00a904:	4785                	li	a5,1
1c00a906:	41200933          	neg	s2,s2
1c00a90a:	ce3e                	sw	a5,28(sp)
1c00a90c:	bd45                	j	1c00a7bc <pos_libc_prf+0x314>
1c00a90e:	0c1d                	addi	s8,s8,7
1c00a910:	ff8c7c13          	andi	s8,s8,-8
1c00a914:	000c2703          	lw	a4,0(s8)
1c00a918:	004c2803          	lw	a6,4(s8)
1c00a91c:	01575693          	srli	a3,a4,0x15
1c00a920:	00b81613          	slli	a2,a6,0xb
1c00a924:	8e55                	or	a2,a2,a3
1c00a926:	01485513          	srli	a0,a6,0x14
1c00a92a:	00b71693          	slli	a3,a4,0xb
1c00a92e:	80000737          	lui	a4,0x80000
1c00a932:	fff74713          	not	a4,a4
1c00a936:	7ff57513          	andi	a0,a0,2047
1c00a93a:	7ff00593          	li	a1,2047
1c00a93e:	0c21                	addi	s8,s8,8
1c00a940:	8e79                	and	a2,a2,a4
1c00a942:	0ab504e3          	beq	a0,a1,1c00b1ea <pos_libc_prf+0xd42>
1c00a946:	04600593          	li	a1,70
1c00a94a:	00bd9463          	bne	s11,a1,1c00a952 <pos_libc_prf+0x4aa>
1c00a94e:	06600d93          	li	s11,102
1c00a952:	00d56733          	or	a4,a0,a3
1c00a956:	8f51                	or	a4,a4,a2
1c00a958:	7e070963          	beqz	a4,1c00b14a <pos_libc_prf+0xca2>
1c00a95c:	800005b7          	lui	a1,0x80000
1c00a960:	c0250513          	addi	a0,a0,-1022
1c00a964:	8dd1                	or	a1,a1,a2
1c00a966:	26084ae3          	bltz	a6,1c00b3da <pos_libc_prf+0xf32>
1c00a96a:	4852                	lw	a6,20(sp)
1c00a96c:	220808e3          	beqz	a6,1c00b39c <pos_libc_prf+0xef4>
1c00a970:	02b00713          	li	a4,43
1c00a974:	02e10223          	sb	a4,36(sp)
1c00a978:	02510e93          	addi	t4,sp,37
1c00a97c:	5779                	li	a4,-2
1c00a97e:	4301                	li	t1,0
1c00a980:	06e55763          	ble	a4,a0,1c00a9ee <pos_libc_prf+0x546>
1c00a984:	33333837          	lui	a6,0x33333
1c00a988:	800008b7          	lui	a7,0x80000
1c00a98c:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00a990:	fff8c893          	not	a7,a7
1c00a994:	5e79                	li	t3,-2
1c00a996:	a011                	j	1c00a99a <pos_libc_prf+0x4f2>
1c00a998:	853e                	mv	a0,a5
1c00a99a:	01f59613          	slli	a2,a1,0x1f
1c00a99e:	0016d713          	srli	a4,a3,0x1
1c00a9a2:	0016f793          	andi	a5,a3,1
1c00a9a6:	8f51                	or	a4,a4,a2
1c00a9a8:	00e786b3          	add	a3,a5,a4
1c00a9ac:	00f6b7b3          	sltu	a5,a3,a5
1c00a9b0:	8185                	srli	a1,a1,0x1
1c00a9b2:	95be                	add	a1,a1,a5
1c00a9b4:	00150793          	addi	a5,a0,1
1c00a9b8:	feb860e3          	bltu	a6,a1,1c00a998 <pos_libc_prf+0x4f0>
1c00a9bc:	00269613          	slli	a2,a3,0x2
1c00a9c0:	01e6df13          	srli	t5,a3,0x1e
1c00a9c4:	00259713          	slli	a4,a1,0x2
1c00a9c8:	96b2                	add	a3,a3,a2
1c00a9ca:	00ef6733          	or	a4,t5,a4
1c00a9ce:	95ba                	add	a1,a1,a4
1c00a9d0:	00c6b633          	sltu	a2,a3,a2
1c00a9d4:	95b2                	add	a1,a1,a2
1c00a9d6:	01f6d713          	srli	a4,a3,0x1f
1c00a9da:	0509                	addi	a0,a0,2
1c00a9dc:	137d                	addi	t1,t1,-1
1c00a9de:	01159663          	bne	a1,a7,1c00a9ea <pos_libc_prf+0x542>
1c00a9e2:	0686                	slli	a3,a3,0x1
1c00a9e4:	ffe76593          	ori	a1,a4,-2
1c00a9e8:	853e                	mv	a0,a5
1c00a9ea:	fbc548e3          	blt	a0,t3,1c00a99a <pos_libc_prf+0x4f2>
1c00a9ee:	06a05563          	blez	a0,1c00aa58 <pos_libc_prf+0x5b0>
1c00a9f2:	800008b7          	lui	a7,0x80000
1c00a9f6:	4e15                	li	t3,5
1c00a9f8:	fff8c893          	not	a7,a7
1c00a9fc:	00268613          	addi	a2,a3,2
1c00aa00:	00d636b3          	sltu	a3,a2,a3
1c00aa04:	95b6                	add	a1,a1,a3
1c00aa06:	03c5d7b3          	divu	a5,a1,t3
1c00aa0a:	00279713          	slli	a4,a5,0x2
1c00aa0e:	973e                	add	a4,a4,a5
1c00aa10:	8d99                	sub	a1,a1,a4
1c00aa12:	01d59713          	slli	a4,a1,0x1d
1c00aa16:	00365593          	srli	a1,a2,0x3
1c00aa1a:	8dd9                	or	a1,a1,a4
1c00aa1c:	03c5d5b3          	divu	a1,a1,t3
1c00aa20:	00359693          	slli	a3,a1,0x3
1c00aa24:	00559713          	slli	a4,a1,0x5
1c00aa28:	9736                	add	a4,a4,a3
1c00aa2a:	40e60733          	sub	a4,a2,a4
1c00aa2e:	03c75733          	divu	a4,a4,t3
1c00aa32:	81f5                	srli	a1,a1,0x1d
1c00aa34:	96ba                	add	a3,a3,a4
1c00aa36:	97ae                	add	a5,a5,a1
1c00aa38:	00e6b733          	sltu	a4,a3,a4
1c00aa3c:	00f705b3          	add	a1,a4,a5
1c00aa40:	157d                	addi	a0,a0,-1
1c00aa42:	0305                	addi	t1,t1,1
1c00aa44:	01f6d793          	srli	a5,a3,0x1f
1c00aa48:	0586                	slli	a1,a1,0x1
1c00aa4a:	8ddd                	or	a1,a1,a5
1c00aa4c:	0686                	slli	a3,a3,0x1
1c00aa4e:	157d                	addi	a0,a0,-1
1c00aa50:	feb8fae3          	bleu	a1,a7,1c00aa44 <pos_libc_prf+0x59c>
1c00aa54:	faa044e3          	bgtz	a0,1c00a9fc <pos_libc_prf+0x554>
1c00aa58:	4611                	li	a2,4
1c00aa5a:	01f59713          	slli	a4,a1,0x1f
1c00aa5e:	0016d793          	srli	a5,a3,0x1
1c00aa62:	8fd9                	or	a5,a5,a4
1c00aa64:	8a85                	andi	a3,a3,1
1c00aa66:	00f688b3          	add	a7,a3,a5
1c00aa6a:	8185                	srli	a1,a1,0x1
1c00aa6c:	00d8b6b3          	sltu	a3,a7,a3
1c00aa70:	00b68733          	add	a4,a3,a1
1c00aa74:	0505                	addi	a0,a0,1
1c00aa76:	86c6                	mv	a3,a7
1c00aa78:	85ba                	mv	a1,a4
1c00aa7a:	fec510e3          	bne	a0,a2,1c00aa5a <pos_libc_prf+0x5b2>
1c00aa7e:	06700693          	li	a3,103
1c00aa82:	040a48e3          	bltz	s4,1c00b2d2 <pos_libc_prf+0xe2a>
1c00aa86:	70dd8b63          	beq	s11,a3,1c00b19c <pos_libc_prf+0xcf4>
1c00aa8a:	04700693          	li	a3,71
1c00aa8e:	70dd8763          	beq	s11,a3,1c00b19c <pos_libc_prf+0xcf4>
1c00aa92:	06600693          	li	a3,102
1c00aa96:	08dd89e3          	beq	s11,a3,1c00b328 <pos_libc_prf+0xe80>
1c00aa9a:	001a0e13          	addi	t3,s4,1
1c00aa9e:	46c1                	li	a3,16
1c00aaa0:	01c6d363          	ble	t3,a3,1c00aaa6 <pos_libc_prf+0x5fe>
1c00aaa4:	4e41                	li	t3,16
1c00aaa6:	1e7d                	addi	t3,t3,-1
1c00aaa8:	4f81                	li	t6,0
1c00aaaa:	4681                	li	a3,0
1c00aaac:	08000637          	lui	a2,0x8000
1c00aab0:	4f15                	li	t5,5
1c00aab2:	52fd                	li	t0,-1
1c00aab4:	00268593          	addi	a1,a3,2
1c00aab8:	00d5b7b3          	sltu	a5,a1,a3
1c00aabc:	97b2                	add	a5,a5,a2
1c00aabe:	03e7d633          	divu	a2,a5,t5
1c00aac2:	00261693          	slli	a3,a2,0x2
1c00aac6:	96b2                	add	a3,a3,a2
1c00aac8:	8f95                	sub	a5,a5,a3
1c00aaca:	07f6                	slli	a5,a5,0x1d
1c00aacc:	0035d513          	srli	a0,a1,0x3
1c00aad0:	8d5d                	or	a0,a0,a5
1c00aad2:	03e55533          	divu	a0,a0,t5
1c00aad6:	00351693          	slli	a3,a0,0x3
1c00aada:	00551793          	slli	a5,a0,0x5
1c00aade:	97b6                	add	a5,a5,a3
1c00aae0:	40f587b3          	sub	a5,a1,a5
1c00aae4:	03e7d7b3          	divu	a5,a5,t5
1c00aae8:	8175                	srli	a0,a0,0x1d
1c00aaea:	96be                	add	a3,a3,a5
1c00aaec:	00f6b7b3          	sltu	a5,a3,a5
1c00aaf0:	962a                	add	a2,a2,a0
1c00aaf2:	963e                	add	a2,a2,a5
1c00aaf4:	01f61513          	slli	a0,a2,0x1f
1c00aaf8:	0016d793          	srli	a5,a3,0x1
1c00aafc:	0016f593          	andi	a1,a3,1
1c00ab00:	8fc9                	or	a5,a5,a0
1c00ab02:	00f586b3          	add	a3,a1,a5
1c00ab06:	8205                	srli	a2,a2,0x1
1c00ab08:	00b6b7b3          	sltu	a5,a3,a1
1c00ab0c:	1e7d                	addi	t3,t3,-1
1c00ab0e:	963e                	add	a2,a2,a5
1c00ab10:	fa5e12e3          	bne	t3,t0,1c00aab4 <pos_libc_prf+0x60c>
1c00ab14:	96c6                	add	a3,a3,a7
1c00ab16:	963a                	add	a2,a2,a4
1c00ab18:	0116b8b3          	sltu	a7,a3,a7
1c00ab1c:	9646                	add	a2,a2,a7
1c00ab1e:	f00005b7          	lui	a1,0xf0000
1c00ab22:	8df1                	and	a1,a1,a2
1c00ab24:	8736                	mv	a4,a3
1c00ab26:	cdb9                	beqz	a1,1c00ab84 <pos_libc_prf+0x6dc>
1c00ab28:	0689                	addi	a3,a3,2
1c00ab2a:	00e6b733          	sltu	a4,a3,a4
1c00ab2e:	963a                	add	a2,a2,a4
1c00ab30:	4815                	li	a6,5
1c00ab32:	03065533          	divu	a0,a2,a6
1c00ab36:	00251713          	slli	a4,a0,0x2
1c00ab3a:	972a                	add	a4,a4,a0
1c00ab3c:	8e19                	sub	a2,a2,a4
1c00ab3e:	01d61713          	slli	a4,a2,0x1d
1c00ab42:	0036d593          	srli	a1,a3,0x3
1c00ab46:	8dd9                	or	a1,a1,a4
1c00ab48:	0305d5b3          	divu	a1,a1,a6
1c00ab4c:	00359613          	slli	a2,a1,0x3
1c00ab50:	00559713          	slli	a4,a1,0x5
1c00ab54:	9732                	add	a4,a4,a2
1c00ab56:	40e68733          	sub	a4,a3,a4
1c00ab5a:	03075733          	divu	a4,a4,a6
1c00ab5e:	81f5                	srli	a1,a1,0x1d
1c00ab60:	963a                	add	a2,a2,a4
1c00ab62:	00e63733          	sltu	a4,a2,a4
1c00ab66:	95aa                	add	a1,a1,a0
1c00ab68:	00b706b3          	add	a3,a4,a1
1c00ab6c:	01f69593          	slli	a1,a3,0x1f
1c00ab70:	00165713          	srli	a4,a2,0x1
1c00ab74:	8f4d                	or	a4,a4,a1
1c00ab76:	8a05                	andi	a2,a2,1
1c00ab78:	9732                	add	a4,a4,a2
1c00ab7a:	8285                	srli	a3,a3,0x1
1c00ab7c:	00c73633          	sltu	a2,a4,a2
1c00ab80:	9636                	add	a2,a2,a3
1c00ab82:	0305                	addi	t1,t1,1
1c00ab84:	001e8993          	addi	s3,t4,1
1c00ab88:	06600693          	li	a3,102
1c00ab8c:	85ce                	mv	a1,s3
1c00ab8e:	6add8663          	beq	s11,a3,1c00b23a <pos_libc_prf+0xd92>
1c00ab92:	00271693          	slli	a3,a4,0x2
1c00ab96:	01e75593          	srli	a1,a4,0x1e
1c00ab9a:	00261513          	slli	a0,a2,0x2
1c00ab9e:	9736                	add	a4,a4,a3
1c00aba0:	8d4d                	or	a0,a0,a1
1c00aba2:	962a                	add	a2,a2,a0
1c00aba4:	00d735b3          	sltu	a1,a4,a3
1c00aba8:	95b2                	add	a1,a1,a2
1c00abaa:	01f75693          	srli	a3,a4,0x1f
1c00abae:	0586                	slli	a1,a1,0x1
1c00abb0:	8dd5                	or	a1,a1,a3
1c00abb2:	01c5d693          	srli	a3,a1,0x1c
1c00abb6:	03068613          	addi	a2,a3,48
1c00abba:	00d036b3          	snez	a3,a3
1c00abbe:	10000537          	lui	a0,0x10000
1c00abc2:	40d30333          	sub	t1,t1,a3
1c00abc6:	46b2                	lw	a3,12(sp)
1c00abc8:	157d                	addi	a0,a0,-1
1c00abca:	00ce8023          	sb	a2,0(t4)
1c00abce:	0706                	slli	a4,a4,0x1
1c00abd0:	8de9                	and	a1,a1,a0
1c00abd2:	64068b63          	beqz	a3,1c00b228 <pos_libc_prf+0xd80>
1c00abd6:	02e00693          	li	a3,46
1c00abda:	00de80a3          	sb	a3,1(t4)
1c00abde:	002e8513          	addi	a0,t4,2
1c00abe2:	020a00e3          	beqz	s4,1c00b402 <pos_libc_prf+0xf5a>
1c00abe6:	014509b3          	add	s3,a0,s4
1c00abea:	48bd                	li	a7,15
1c00abec:	03000e13          	li	t3,48
1c00abf0:	00271793          	slli	a5,a4,0x2
1c00abf4:	01e75813          	srli	a6,a4,0x1e
1c00abf8:	00259693          	slli	a3,a1,0x2
1c00abfc:	00e78633          	add	a2,a5,a4
1c00ac00:	00d866b3          	or	a3,a6,a3
1c00ac04:	96ae                	add	a3,a3,a1
1c00ac06:	00f637b3          	sltu	a5,a2,a5
1c00ac0a:	97b6                	add	a5,a5,a3
1c00ac0c:	0786                	slli	a5,a5,0x1
1c00ac0e:	01f65693          	srli	a3,a2,0x1f
1c00ac12:	8fd5                	or	a5,a5,a3
1c00ac14:	01c7d693          	srli	a3,a5,0x1c
1c00ac18:	03068693          	addi	a3,a3,48
1c00ac1c:	0505                	addi	a0,a0,1
1c00ac1e:	3b105663          	blez	a7,1c00afca <pos_libc_prf+0xb22>
1c00ac22:	10000837          	lui	a6,0x10000
1c00ac26:	187d                	addi	a6,a6,-1
1c00ac28:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00ac2c:	18fd                	addi	a7,a7,-1
1c00ac2e:	00161713          	slli	a4,a2,0x1
1c00ac32:	0107f5b3          	and	a1,a5,a6
1c00ac36:	faa99de3          	bne	s3,a0,1c00abf0 <pos_libc_prf+0x748>
1c00ac3a:	0c0f9263          	bnez	t6,1c00acfe <pos_libc_prf+0x856>
1c00ac3e:	fdfdf713          	andi	a4,s11,-33
1c00ac42:	04500693          	li	a3,69
1c00ac46:	02d71963          	bne	a4,a3,1c00ac78 <pos_libc_prf+0x7d0>
1c00ac4a:	87ee                	mv	a5,s11
1c00ac4c:	00f98023          	sb	a5,0(s3)
1c00ac50:	6a034763          	bltz	t1,1c00b2fe <pos_libc_prf+0xe56>
1c00ac54:	02b00793          	li	a5,43
1c00ac58:	00f980a3          	sb	a5,1(s3)
1c00ac5c:	47a9                	li	a5,10
1c00ac5e:	02f34733          	div	a4,t1,a5
1c00ac62:	02f367b3          	rem	a5,t1,a5
1c00ac66:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00ac6a:	03078793          	addi	a5,a5,48
1c00ac6e:	00e98123          	sb	a4,2(s3)
1c00ac72:	00f981a3          	sb	a5,3(s3)
1c00ac76:	0991                	addi	s3,s3,4
1c00ac78:	00098023          	sb	zero,0(s3)
1c00ac7c:	419989b3          	sub	s3,s3,s9
1c00ac80:	48d2                	lw	a7,20(sp)
1c00ac82:	4662                	lw	a2,24(sp)
1c00ac84:	00c8e8b3          	or	a7,a7,a2
1c00ac88:	c646                	sw	a7,12(sp)
1c00ac8a:	34089d63          	bnez	a7,1c00afe4 <pos_libc_prf+0xb3c>
1c00ac8e:	02414703          	lbu	a4,36(sp)
1c00ac92:	02d00793          	li	a5,45
1c00ac96:	34f70763          	beq	a4,a5,1c00afe4 <pos_libc_prf+0xb3c>
1c00ac9a:	0c800793          	li	a5,200
1c00ac9e:	ab37cbe3          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00aca2:	9b29c2e3          	blt	s3,s2,1c00a646 <pos_libc_prf+0x19e>
1c00aca6:	b461                	j	1c00a72e <pos_libc_prf+0x286>
1c00aca8:	0585                	addi	a1,a1,1
1c00acaa:	00271793          	slli	a5,a4,0x2
1c00acae:	01e75e13          	srli	t3,a4,0x1e
1c00acb2:	00261693          	slli	a3,a2,0x2
1c00acb6:	00e788b3          	add	a7,a5,a4
1c00acba:	00de66b3          	or	a3,t3,a3
1c00acbe:	96b2                	add	a3,a3,a2
1c00acc0:	00f8b7b3          	sltu	a5,a7,a5
1c00acc4:	97b6                	add	a5,a5,a3
1c00acc6:	0786                	slli	a5,a5,0x1
1c00acc8:	01f8d693          	srli	a3,a7,0x1f
1c00accc:	8fd5                	or	a5,a5,a3
1c00acce:	01c7de13          	srli	t3,a5,0x1c
1c00acd2:	03000693          	li	a3,48
1c00acd6:	00a05c63          	blez	a0,1c00acee <pos_libc_prf+0x846>
1c00acda:	00189713          	slli	a4,a7,0x1
1c00acde:	100008b7          	lui	a7,0x10000
1c00ace2:	18fd                	addi	a7,a7,-1
1c00ace4:	030e0693          	addi	a3,t3,48
1c00ace8:	157d                	addi	a0,a0,-1
1c00acea:	0117f633          	and	a2,a5,a7
1c00acee:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00acf2:	fab99be3          	bne	s3,a1,1c00aca8 <pos_libc_prf+0x800>
1c00acf6:	014809b3          	add	s3,a6,s4
1c00acfa:	f60f8fe3          	beqz	t6,1c00ac78 <pos_libc_prf+0x7d0>
1c00acfe:	03000613          	li	a2,48
1c00ad02:	a011                	j	1c00ad06 <pos_libc_prf+0x85e>
1c00ad04:	89ba                	mv	s3,a4
1c00ad06:	fff9c683          	lbu	a3,-1(s3)
1c00ad0a:	fff98713          	addi	a4,s3,-1
1c00ad0e:	fec68be3          	beq	a3,a2,1c00ad04 <pos_libc_prf+0x85c>
1c00ad12:	02e00613          	li	a2,46
1c00ad16:	f2c694e3          	bne	a3,a2,1c00ac3e <pos_libc_prf+0x796>
1c00ad1a:	89ba                	mv	s3,a4
1c00ad1c:	b70d                	j	1c00ac3e <pos_libc_prf+0x796>
1c00ad1e:	06300713          	li	a4,99
1c00ad22:	16ed8863          	beq	s11,a4,1c00ae92 <pos_libc_prf+0x9ea>
1c00ad26:	0db74363          	blt	a4,s11,1c00adec <pos_libc_prf+0x944>
1c00ad2a:	05800713          	li	a4,88
1c00ad2e:	28ed9763          	bne	s11,a4,1c00afbc <pos_libc_prf+0xb14>
1c00ad32:	48b2                	lw	a7,12(sp)
1c00ad34:	004c0813          	addi	a6,s8,4
1c00ad38:	000c2583          	lw	a1,0(s8)
1c00ad3c:	3c088a63          	beqz	a7,1c00b110 <pos_libc_prf+0xc68>
1c00ad40:	7761                	lui	a4,0xffff8
1c00ad42:	83074713          	xori	a4,a4,-2000
1c00ad46:	02e11223          	sh	a4,36(sp)
1c00ad4a:	4889                	li	a7,2
1c00ad4c:	02610693          	addi	a3,sp,38
1c00ad50:	8736                	mv	a4,a3
1c00ad52:	4e25                	li	t3,9
1c00ad54:	00f5f613          	andi	a2,a1,15
1c00ad58:	0ff67793          	andi	a5,a2,255
1c00ad5c:	03078513          	addi	a0,a5,48
1c00ad60:	8191                	srli	a1,a1,0x4
1c00ad62:	05778793          	addi	a5,a5,87
1c00ad66:	0705                	addi	a4,a4,1
1c00ad68:	06ce6a63          	bltu	t3,a2,1c00addc <pos_libc_prf+0x934>
1c00ad6c:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00ad70:	f1f5                	bnez	a1,1c00ad54 <pos_libc_prf+0x8ac>
1c00ad72:	40d709b3          	sub	s3,a4,a3
1c00ad76:	0149db63          	ble	s4,s3,1c00ad8c <pos_libc_prf+0x8e4>
1c00ad7a:	03000613          	li	a2,48
1c00ad7e:	0705                	addi	a4,a4,1
1c00ad80:	fec70fa3          	sb	a2,-1(a4)
1c00ad84:	40d709b3          	sub	s3,a4,a3
1c00ad88:	ff49cbe3          	blt	s3,s4,1c00ad7e <pos_libc_prf+0x8d6>
1c00ad8c:	00070023          	sb	zero,0(a4)
1c00ad90:	177d                	addi	a4,a4,-1
1c00ad92:	00e6fe63          	bleu	a4,a3,1c00adae <pos_libc_prf+0x906>
1c00ad96:	0006c603          	lbu	a2,0(a3)
1c00ad9a:	00074783          	lbu	a5,0(a4)
1c00ad9e:	00c70023          	sb	a2,0(a4)
1c00ada2:	00f68023          	sb	a5,0(a3)
1c00ada6:	177d                	addi	a4,a4,-1
1c00ada8:	0685                	addi	a3,a3,1
1c00adaa:	fee6e6e3          	bltu	a3,a4,1c00ad96 <pos_libc_prf+0x8ee>
1c00adae:	05800713          	li	a4,88
1c00adb2:	36ed8263          	beq	s11,a4,1c00b116 <pos_libc_prf+0xc6e>
1c00adb6:	46b2                	lw	a3,12(sp)
1c00adb8:	99c6                	add	s3,s3,a7
1c00adba:	c299                	beqz	a3,1c00adc0 <pos_libc_prf+0x918>
1c00adbc:	4709                	li	a4,2
1c00adbe:	c63a                	sw	a4,12(sp)
1c00adc0:	57fd                	li	a5,-1
1c00adc2:	3afa0263          	beq	s4,a5,1c00b166 <pos_libc_prf+0xcbe>
1c00adc6:	0c800793          	li	a5,200
1c00adca:	9937c5e3          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00adce:	02000793          	li	a5,32
1c00add2:	c83e                	sw	a5,16(sp)
1c00add4:	8c42                	mv	s8,a6
1c00add6:	8729c8e3          	blt	s3,s2,1c00a646 <pos_libc_prf+0x19e>
1c00adda:	ba91                	j	1c00a72e <pos_libc_prf+0x286>
1c00addc:	fef70fa3          	sb	a5,-1(a4)
1c00ade0:	f9b5                	bnez	a1,1c00ad54 <pos_libc_prf+0x8ac>
1c00ade2:	bf41                	j	1c00ad72 <pos_libc_prf+0x8ca>
1c00ade4:	06900713          	li	a4,105
1c00ade8:	1ced9a63          	bne	s11,a4,1c00afbc <pos_libc_prf+0xb14>
1c00adec:	000c2583          	lw	a1,0(s8)
1c00adf0:	0c11                	addi	s8,s8,4
1c00adf2:	3805c863          	bltz	a1,1c00b182 <pos_libc_prf+0xcda>
1c00adf6:	48d2                	lw	a7,20(sp)
1c00adf8:	872e                	mv	a4,a1
1c00adfa:	36089d63          	bnez	a7,1c00b174 <pos_libc_prf+0xccc>
1c00adfe:	4662                	lw	a2,24(sp)
1c00ae00:	87e6                	mv	a5,s9
1c00ae02:	c619                	beqz	a2,1c00ae10 <pos_libc_prf+0x968>
1c00ae04:	02000793          	li	a5,32
1c00ae08:	02f10223          	sb	a5,36(sp)
1c00ae0c:	02510793          	addi	a5,sp,37
1c00ae10:	89be                	mv	s3,a5
1c00ae12:	4629                	li	a2,10
1c00ae14:	02c776b3          	remu	a3,a4,a2
1c00ae18:	02c75733          	divu	a4,a4,a2
1c00ae1c:	0985                	addi	s3,s3,1
1c00ae1e:	03068693          	addi	a3,a3,48
1c00ae22:	fed98fa3          	sb	a3,-1(s3)
1c00ae26:	f77d                	bnez	a4,1c00ae14 <pos_libc_prf+0x96c>
1c00ae28:	40f98733          	sub	a4,s3,a5
1c00ae2c:	01475b63          	ble	s4,a4,1c00ae42 <pos_libc_prf+0x99a>
1c00ae30:	03000693          	li	a3,48
1c00ae34:	0985                	addi	s3,s3,1
1c00ae36:	fed98fa3          	sb	a3,-1(s3)
1c00ae3a:	40f98733          	sub	a4,s3,a5
1c00ae3e:	ff474be3          	blt	a4,s4,1c00ae34 <pos_libc_prf+0x98c>
1c00ae42:	00098023          	sb	zero,0(s3)
1c00ae46:	fff98713          	addi	a4,s3,-1
1c00ae4a:	00e7fe63          	bleu	a4,a5,1c00ae66 <pos_libc_prf+0x9be>
1c00ae4e:	0007c603          	lbu	a2,0(a5)
1c00ae52:	00074683          	lbu	a3,0(a4)
1c00ae56:	00c70023          	sb	a2,0(a4)
1c00ae5a:	00d78023          	sb	a3,0(a5)
1c00ae5e:	177d                	addi	a4,a4,-1
1c00ae60:	0785                	addi	a5,a5,1
1c00ae62:	fee7e6e3          	bltu	a5,a4,1c00ae4e <pos_libc_prf+0x9a6>
1c00ae66:	46d2                	lw	a3,20(sp)
1c00ae68:	4762                	lw	a4,24(sp)
1c00ae6a:	419989b3          	sub	s3,s3,s9
1c00ae6e:	8ed9                	or	a3,a3,a4
1c00ae70:	c636                	sw	a3,12(sp)
1c00ae72:	e299                	bnez	a3,1c00ae78 <pos_libc_prf+0x9d0>
1c00ae74:	81fd                	srli	a1,a1,0x1f
1c00ae76:	c62e                	sw	a1,12(sp)
1c00ae78:	57fd                	li	a5,-1
1c00ae7a:	e2fa00e3          	beq	s4,a5,1c00ac9a <pos_libc_prf+0x7f2>
1c00ae7e:	0c800793          	li	a5,200
1c00ae82:	8d37c9e3          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00ae86:	02000793          	li	a5,32
1c00ae8a:	c83e                	sw	a5,16(sp)
1c00ae8c:	fb29cd63          	blt	s3,s2,1c00a646 <pos_libc_prf+0x19e>
1c00ae90:	b879                	j	1c00a72e <pos_libc_prf+0x286>
1c00ae92:	000c2783          	lw	a5,0(s8)
1c00ae96:	020102a3          	sb	zero,37(sp)
1c00ae9a:	02f10223          	sb	a5,36(sp)
1c00ae9e:	0c11                	addi	s8,s8,4
1c00aea0:	4985                	li	s3,1
1c00aea2:	f9eff06f          	j	1c00a640 <pos_libc_prf+0x198>
1c00aea6:	000c2703          	lw	a4,0(s8)
1c00aeaa:	87e6                	mv	a5,s9
1c00aeac:	0c11                	addi	s8,s8,4
1c00aeae:	4629                	li	a2,10
1c00aeb0:	02c776b3          	remu	a3,a4,a2
1c00aeb4:	02c75733          	divu	a4,a4,a2
1c00aeb8:	0785                	addi	a5,a5,1
1c00aeba:	03068693          	addi	a3,a3,48
1c00aebe:	fed78fa3          	sb	a3,-1(a5)
1c00aec2:	f77d                	bnez	a4,1c00aeb0 <pos_libc_prf+0xa08>
1c00aec4:	419789b3          	sub	s3,a5,s9
1c00aec8:	0149db63          	ble	s4,s3,1c00aede <pos_libc_prf+0xa36>
1c00aecc:	03000713          	li	a4,48
1c00aed0:	0785                	addi	a5,a5,1
1c00aed2:	fee78fa3          	sb	a4,-1(a5)
1c00aed6:	419789b3          	sub	s3,a5,s9
1c00aeda:	ff49cbe3          	blt	s3,s4,1c00aed0 <pos_libc_prf+0xa28>
1c00aede:	00078023          	sb	zero,0(a5)
1c00aee2:	17fd                	addi	a5,a5,-1
1c00aee4:	00fcff63          	bleu	a5,s9,1c00af02 <pos_libc_prf+0xa5a>
1c00aee8:	8766                	mv	a4,s9
1c00aeea:	00074603          	lbu	a2,0(a4)
1c00aeee:	0007c683          	lbu	a3,0(a5)
1c00aef2:	00c78023          	sb	a2,0(a5)
1c00aef6:	00d70023          	sb	a3,0(a4)
1c00aefa:	17fd                	addi	a5,a5,-1
1c00aefc:	0705                	addi	a4,a4,1
1c00aefe:	fef766e3          	bltu	a4,a5,1c00aeea <pos_libc_prf+0xa42>
1c00af02:	57fd                	li	a5,-1
1c00af04:	0cfa0a63          	beq	s4,a5,1c00afd8 <pos_libc_prf+0xb30>
1c00af08:	0c800793          	li	a5,200
1c00af0c:	8537c4e3          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00af10:	02000813          	li	a6,32
1c00af14:	c602                	sw	zero,12(sp)
1c00af16:	c842                	sw	a6,16(sp)
1c00af18:	ba45                	j	1c00a8c8 <pos_libc_prf+0x420>
1c00af1a:	77e1                	lui	a5,0xffff8
1c00af1c:	8307c793          	xori	a5,a5,-2000
1c00af20:	02610713          	addi	a4,sp,38
1c00af24:	000c2603          	lw	a2,0(s8)
1c00af28:	02f11223          	sh	a5,36(sp)
1c00af2c:	0c11                	addi	s8,s8,4
1c00af2e:	87ba                	mv	a5,a4
1c00af30:	4825                	li	a6,9
1c00af32:	00f67593          	andi	a1,a2,15
1c00af36:	0ff5f693          	andi	a3,a1,255
1c00af3a:	03068513          	addi	a0,a3,48
1c00af3e:	8211                	srli	a2,a2,0x4
1c00af40:	05768693          	addi	a3,a3,87
1c00af44:	0785                	addi	a5,a5,1
1c00af46:	06b86163          	bltu	a6,a1,1c00afa8 <pos_libc_prf+0xb00>
1c00af4a:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00af4e:	f275                	bnez	a2,1c00af32 <pos_libc_prf+0xa8a>
1c00af50:	40e789b3          	sub	s3,a5,a4
1c00af54:	469d                	li	a3,7
1c00af56:	0136cb63          	blt	a3,s3,1c00af6c <pos_libc_prf+0xac4>
1c00af5a:	03000613          	li	a2,48
1c00af5e:	0785                	addi	a5,a5,1
1c00af60:	fec78fa3          	sb	a2,-1(a5)
1c00af64:	40e789b3          	sub	s3,a5,a4
1c00af68:	ff36dbe3          	ble	s3,a3,1c00af5e <pos_libc_prf+0xab6>
1c00af6c:	00078023          	sb	zero,0(a5)
1c00af70:	17fd                	addi	a5,a5,-1
1c00af72:	00f77e63          	bleu	a5,a4,1c00af8e <pos_libc_prf+0xae6>
1c00af76:	00074603          	lbu	a2,0(a4)
1c00af7a:	0007c683          	lbu	a3,0(a5)
1c00af7e:	00c78023          	sb	a2,0(a5)
1c00af82:	00d70023          	sb	a3,0(a4)
1c00af86:	17fd                	addi	a5,a5,-1
1c00af88:	0705                	addi	a4,a4,1
1c00af8a:	fef766e3          	bltu	a4,a5,1c00af76 <pos_libc_prf+0xace>
1c00af8e:	57fd                	li	a5,-1
1c00af90:	0989                	addi	s3,s3,2
1c00af92:	04fa0363          	beq	s4,a5,1c00afd8 <pos_libc_prf+0xb30>
1c00af96:	0c800793          	li	a5,200
1c00af9a:	fb37cd63          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00af9e:	02000893          	li	a7,32
1c00afa2:	c602                	sw	zero,12(sp)
1c00afa4:	c846                	sw	a7,16(sp)
1c00afa6:	b20d                	j	1c00a8c8 <pos_libc_prf+0x420>
1c00afa8:	fed78fa3          	sb	a3,-1(a5)
1c00afac:	f259                	bnez	a2,1c00af32 <pos_libc_prf+0xa8a>
1c00afae:	b74d                	j	1c00af50 <pos_libc_prf+0xaa8>
1c00afb0:	000c2783          	lw	a5,0(s8)
1c00afb4:	0c11                	addi	s8,s8,4
1c00afb6:	c380                	sw	s0,0(a5)
1c00afb8:	d36ff06f          	j	1c00a4ee <pos_libc_prf+0x46>
1c00afbc:	0c800713          	li	a4,200
1c00afc0:	d3b75763          	ble	s11,a4,1c00a4ee <pos_libc_prf+0x46>
1c00afc4:	547d                	li	s0,-1
1c00afc6:	d4cff06f          	j	1c00a512 <pos_libc_prf+0x6a>
1c00afca:	ffc50fa3          	sb	t3,-1(a0)
1c00afce:	c2a991e3          	bne	s3,a0,1c00abf0 <pos_libc_prf+0x748>
1c00afd2:	c60f86e3          	beqz	t6,1c00ac3e <pos_libc_prf+0x796>
1c00afd6:	b325                	j	1c00acfe <pos_libc_prf+0x856>
1c00afd8:	0c800793          	li	a5,200
1c00afdc:	f737cc63          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00afe0:	c602                	sw	zero,12(sp)
1c00afe2:	b0dd                	j	1c00a8c8 <pos_libc_prf+0x420>
1c00afe4:	0c800793          	li	a5,200
1c00afe8:	f737c663          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00afec:	4705                	li	a4,1
1c00afee:	c63a                	sw	a4,12(sp)
1c00aff0:	b8e1                	j	1c00a8c8 <pos_libc_prf+0x420>
1c00aff2:	41390a33          	sub	s4,s2,s3
1c00aff6:	00198613          	addi	a2,s3,1
1c00affa:	85e6                	mv	a1,s9
1c00affc:	014c8533          	add	a0,s9,s4
1c00b000:	a4aff0ef          	jal	ra,1c00a24a <memmove>
1c00b004:	46c2                	lw	a3,16(sp)
1c00b006:	02000793          	li	a5,32
1c00b00a:	30f68163          	beq	a3,a5,1c00b30c <pos_libc_prf+0xe64>
1c00b00e:	4732                	lw	a4,12(sp)
1c00b010:	89ca                	mv	s3,s2
1c00b012:	9a3a                	add	s4,s4,a4
1c00b014:	f1475d63          	ble	s4,a4,1c00a72e <pos_libc_prf+0x286>
1c00b018:	4832                	lw	a6,12(sp)
1c00b01a:	4715                	li	a4,5
1c00b01c:	010c87b3          	add	a5,s9,a6
1c00b020:	40f007b3          	neg	a5,a5
1c00b024:	8b8d                	andi	a5,a5,3
1c00b026:	00378693          	addi	a3,a5,3
1c00b02a:	410a05b3          	sub	a1,s4,a6
1c00b02e:	00e6f363          	bleu	a4,a3,1c00b034 <pos_libc_prf+0xb8c>
1c00b032:	4695                	li	a3,5
1c00b034:	48b2                	lw	a7,12(sp)
1c00b036:	fffa0713          	addi	a4,s4,-1
1c00b03a:	41170733          	sub	a4,a4,a7
1c00b03e:	06d76b63          	bltu	a4,a3,1c00b0b4 <pos_libc_prf+0xc0c>
1c00b042:	86c6                	mv	a3,a7
1c00b044:	cb9d                	beqz	a5,1c00b07a <pos_libc_prf+0xbd2>
1c00b046:	46c2                	lw	a3,16(sp)
1c00b048:	1988                	addi	a0,sp,240
1c00b04a:	01150733          	add	a4,a0,a7
1c00b04e:	f2d70a23          	sb	a3,-204(a4)
1c00b052:	4705                	li	a4,1
1c00b054:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00b058:	02e78163          	beq	a5,a4,1c00b07a <pos_libc_prf+0xbd2>
1c00b05c:	4742                	lw	a4,16(sp)
1c00b05e:	96aa                	add	a3,a3,a0
1c00b060:	f2e68a23          	sb	a4,-204(a3)
1c00b064:	470d                	li	a4,3
1c00b066:	00288693          	addi	a3,a7,2
1c00b06a:	00e79863          	bne	a5,a4,1c00b07a <pos_libc_prf+0xbd2>
1c00b06e:	4842                	lw	a6,16(sp)
1c00b070:	96aa                	add	a3,a3,a0
1c00b072:	f3068a23          	sb	a6,-204(a3)
1c00b076:	00388693          	addi	a3,a7,3
1c00b07a:	48c2                	lw	a7,16(sp)
1c00b07c:	4832                	lw	a6,12(sp)
1c00b07e:	00889713          	slli	a4,a7,0x8
1c00b082:	01089513          	slli	a0,a7,0x10
1c00b086:	00e8e733          	or	a4,a7,a4
1c00b08a:	8d9d                	sub	a1,a1,a5
1c00b08c:	01889613          	slli	a2,a7,0x18
1c00b090:	8f49                	or	a4,a4,a0
1c00b092:	97c2                	add	a5,a5,a6
1c00b094:	8f51                	or	a4,a4,a2
1c00b096:	0025d513          	srli	a0,a1,0x2
1c00b09a:	97e6                	add	a5,a5,s9
1c00b09c:	4601                	li	a2,0
1c00b09e:	c398                	sw	a4,0(a5)
1c00b0a0:	0605                	addi	a2,a2,1
1c00b0a2:	0791                	addi	a5,a5,4
1c00b0a4:	fea66de3          	bltu	a2,a0,1c00b09e <pos_libc_prf+0xbf6>
1c00b0a8:	ffc5f793          	andi	a5,a1,-4
1c00b0ac:	96be                	add	a3,a3,a5
1c00b0ae:	c636                	sw	a3,12(sp)
1c00b0b0:	e6b78e63          	beq	a5,a1,1c00a72c <pos_libc_prf+0x284>
1c00b0b4:	46b2                	lw	a3,12(sp)
1c00b0b6:	0f010893          	addi	a7,sp,240
1c00b0ba:	4742                	lw	a4,16(sp)
1c00b0bc:	00d887b3          	add	a5,a7,a3
1c00b0c0:	f2e78a23          	sb	a4,-204(a5)
1c00b0c4:	00168793          	addi	a5,a3,1
1c00b0c8:	e747d263          	ble	s4,a5,1c00a72c <pos_libc_prf+0x284>
1c00b0cc:	97c6                	add	a5,a5,a7
1c00b0ce:	f2e78a23          	sb	a4,-204(a5)
1c00b0d2:	00268793          	addi	a5,a3,2
1c00b0d6:	e547db63          	ble	s4,a5,1c00a72c <pos_libc_prf+0x284>
1c00b0da:	97c6                	add	a5,a5,a7
1c00b0dc:	f2e78a23          	sb	a4,-204(a5)
1c00b0e0:	00368793          	addi	a5,a3,3
1c00b0e4:	e547d463          	ble	s4,a5,1c00a72c <pos_libc_prf+0x284>
1c00b0e8:	97c6                	add	a5,a5,a7
1c00b0ea:	f2e78a23          	sb	a4,-204(a5)
1c00b0ee:	00468793          	addi	a5,a3,4
1c00b0f2:	e347dd63          	ble	s4,a5,1c00a72c <pos_libc_prf+0x284>
1c00b0f6:	97c6                	add	a5,a5,a7
1c00b0f8:	f2e78a23          	sb	a4,-204(a5)
1c00b0fc:	00568a93          	addi	s5,a3,5
1c00b100:	e34ad663          	ble	s4,s5,1c00a72c <pos_libc_prf+0x284>
1c00b104:	9ac6                	add	s5,s5,a7
1c00b106:	f2ea8a23          	sb	a4,-204(s5)
1c00b10a:	89ca                	mv	s3,s2
1c00b10c:	e22ff06f          	j	1c00a72e <pos_libc_prf+0x286>
1c00b110:	4881                	li	a7,0
1c00b112:	1054                	addi	a3,sp,36
1c00b114:	b935                	j	1c00ad50 <pos_libc_prf+0x8a8>
1c00b116:	02414783          	lbu	a5,36(sp)
1c00b11a:	1058                	addi	a4,sp,36
1c00b11c:	46e5                	li	a3,25
1c00b11e:	c8078ce3          	beqz	a5,1c00adb6 <pos_libc_prf+0x90e>
1c00b122:	fe078613          	addi	a2,a5,-32
1c00b126:	f9f78793          	addi	a5,a5,-97
1c00b12a:	0ff7f793          	andi	a5,a5,255
1c00b12e:	00f6e963          	bltu	a3,a5,1c00b140 <pos_libc_prf+0xc98>
1c00b132:	00c70023          	sb	a2,0(a4)
1c00b136:	0705                	addi	a4,a4,1
1c00b138:	00074783          	lbu	a5,0(a4)
1c00b13c:	f3fd                	bnez	a5,1c00b122 <pos_libc_prf+0xc7a>
1c00b13e:	b9a5                	j	1c00adb6 <pos_libc_prf+0x90e>
1c00b140:	0705                	addi	a4,a4,1
1c00b142:	00074783          	lbu	a5,0(a4)
1c00b146:	fff1                	bnez	a5,1c00b122 <pos_libc_prf+0xc7a>
1c00b148:	b1bd                	j	1c00adb6 <pos_libc_prf+0x90e>
1c00b14a:	47d2                	lw	a5,20(sp)
1c00b14c:	20078263          	beqz	a5,1c00b350 <pos_libc_prf+0xea8>
1c00b150:	02b00713          	li	a4,43
1c00b154:	02e10223          	sb	a4,36(sp)
1c00b158:	02510e93          	addi	t4,sp,37
1c00b15c:	4301                	li	t1,0
1c00b15e:	4501                	li	a0,0
1c00b160:	4681                	li	a3,0
1c00b162:	4581                	li	a1,0
1c00b164:	b8d5                	j	1c00aa58 <pos_libc_prf+0x5b0>
1c00b166:	0c800793          	li	a5,200
1c00b16a:	df37c563          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00b16e:	8c42                	mv	s8,a6
1c00b170:	f58ff06f          	j	1c00a8c8 <pos_libc_prf+0x420>
1c00b174:	02b00793          	li	a5,43
1c00b178:	02f10223          	sb	a5,36(sp)
1c00b17c:	02510793          	addi	a5,sp,37
1c00b180:	b941                	j	1c00ae10 <pos_libc_prf+0x968>
1c00b182:	02d00793          	li	a5,45
1c00b186:	02f10223          	sb	a5,36(sp)
1c00b18a:	800007b7          	lui	a5,0x80000
1c00b18e:	22f58363          	beq	a1,a5,1c00b3b4 <pos_libc_prf+0xf0c>
1c00b192:	40b00733          	neg	a4,a1
1c00b196:	02510793          	addi	a5,sp,37
1c00b19a:	b99d                	j	1c00ae10 <pos_libc_prf+0x968>
1c00b19c:	47b2                	lw	a5,12(sp)
1c00b19e:	4f81                	li	t6,0
1c00b1a0:	e399                	bnez	a5,1c00b1a6 <pos_libc_prf+0xcfe>
1c00b1a2:	01403fb3          	snez	t6,s4
1c00b1a6:	56f5                	li	a3,-3
1c00b1a8:	001a0e13          	addi	t3,s4,1
1c00b1ac:	00d34463          	blt	t1,a3,1c00b1b4 <pos_libc_prf+0xd0c>
1c00b1b0:	166e5d63          	ble	t1,t3,1c00b32a <pos_libc_prf+0xe82>
1c00b1b4:	46c1                	li	a3,16
1c00b1b6:	01c6d363          	ble	t3,a3,1c00b1bc <pos_libc_prf+0xd14>
1c00b1ba:	4e41                	li	t3,16
1c00b1bc:	06700693          	li	a3,103
1c00b1c0:	1e7d                	addi	t3,t3,-1
1c00b1c2:	1add8963          	beq	s11,a3,1c00b374 <pos_libc_prf+0xecc>
1c00b1c6:	04500d93          	li	s11,69
1c00b1ca:	b0c5                	j	1c00aaaa <pos_libc_prf+0x602>
1c00b1cc:	020102a3          	sb	zero,37(sp)
1c00b1d0:	57fd                	li	a5,-1
1c00b1d2:	89ba                	mv	s3,a4
1c00b1d4:	8c2a                	mv	s8,a0
1c00b1d6:	c6fa0563          	beq	s4,a5,1c00a640 <pos_libc_prf+0x198>
1c00b1da:	02000813          	li	a6,32
1c00b1de:	c842                	sw	a6,16(sp)
1c00b1e0:	c60ff06f          	j	1c00a640 <pos_libc_prf+0x198>
1c00b1e4:	89b6                	mv	s3,a3
1c00b1e6:	bdeff06f          	j	1c00a5c4 <pos_libc_prf+0x11c>
1c00b1ea:	8766                	mv	a4,s9
1c00b1ec:	1c084c63          	bltz	a6,1c00b3c4 <pos_libc_prf+0xf1c>
1c00b1f0:	8e55                	or	a2,a2,a3
1c00b1f2:	fbfd8793          	addi	a5,s11,-65
1c00b1f6:	00370993          	addi	s3,a4,3
1c00b1fa:	46e5                	li	a3,25
1c00b1fc:	10061a63          	bnez	a2,1c00b310 <pos_libc_prf+0xe68>
1c00b200:	16f6ee63          	bltu	a3,a5,1c00b37c <pos_libc_prf+0xed4>
1c00b204:	6795                	lui	a5,0x5
1c00b206:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c00b20a:	00f71023          	sh	a5,0(a4)
1c00b20e:	04600793          	li	a5,70
1c00b212:	00f70123          	sb	a5,2(a4)
1c00b216:	000701a3          	sb	zero,3(a4)
1c00b21a:	419989b3          	sub	s3,s3,s9
1c00b21e:	b48d                	j	1c00ac80 <pos_libc_prf+0x7d8>
1c00b220:	85e6                	mv	a1,s9
1c00b222:	8766                	mv	a4,s9
1c00b224:	e38ff06f          	j	1c00a85c <pos_libc_prf+0x3b4>
1c00b228:	a00a09e3          	beqz	s4,1c00ac3a <pos_libc_prf+0x792>
1c00b22c:	02e00693          	li	a3,46
1c00b230:	002e8513          	addi	a0,t4,2
1c00b234:	00de80a3          	sb	a3,1(t4)
1c00b238:	b27d                	j	1c00abe6 <pos_libc_prf+0x73e>
1c00b23a:	14605b63          	blez	t1,1c00b390 <pos_libc_prf+0xee8>
1c00b23e:	006e89b3          	add	s3,t4,t1
1c00b242:	4541                	li	a0,16
1c00b244:	03000893          	li	a7,48
1c00b248:	00271793          	slli	a5,a4,0x2
1c00b24c:	01e75313          	srli	t1,a4,0x1e
1c00b250:	00261693          	slli	a3,a2,0x2
1c00b254:	00e78833          	add	a6,a5,a4
1c00b258:	00d366b3          	or	a3,t1,a3
1c00b25c:	96b2                	add	a3,a3,a2
1c00b25e:	00f837b3          	sltu	a5,a6,a5
1c00b262:	97b6                	add	a5,a5,a3
1c00b264:	0786                	slli	a5,a5,0x1
1c00b266:	01f85693          	srli	a3,a6,0x1f
1c00b26a:	8fd5                	or	a5,a5,a3
1c00b26c:	01c7d693          	srli	a3,a5,0x1c
1c00b270:	03068693          	addi	a3,a3,48
1c00b274:	02a05063          	blez	a0,1c00b294 <pos_libc_prf+0xdec>
1c00b278:	00181713          	slli	a4,a6,0x1
1c00b27c:	10000837          	lui	a6,0x10000
1c00b280:	187d                	addi	a6,a6,-1
1c00b282:	fed58fa3          	sb	a3,-1(a1)
1c00b286:	157d                	addi	a0,a0,-1
1c00b288:	0107f633          	and	a2,a5,a6
1c00b28c:	00b98863          	beq	s3,a1,1c00b29c <pos_libc_prf+0xdf4>
1c00b290:	0585                	addi	a1,a1,1
1c00b292:	bf5d                	j	1c00b248 <pos_libc_prf+0xda0>
1c00b294:	ff158fa3          	sb	a7,-1(a1)
1c00b298:	feb99ce3          	bne	s3,a1,1c00b290 <pos_libc_prf+0xde8>
1c00b29c:	4301                	li	t1,0
1c00b29e:	48b2                	lw	a7,12(sp)
1c00b2a0:	00089463          	bnez	a7,1c00b2a8 <pos_libc_prf+0xe00>
1c00b2a4:	a40a0be3          	beqz	s4,1c00acfa <pos_libc_prf+0x852>
1c00b2a8:	00198813          	addi	a6,s3,1
1c00b2ac:	001a0693          	addi	a3,s4,1
1c00b2b0:	02e00593          	li	a1,46
1c00b2b4:	00b98023          	sb	a1,0(s3)
1c00b2b8:	99b6                	add	s3,s3,a3
1c00b2ba:	85c2                	mv	a1,a6
1c00b2bc:	03000693          	li	a3,48
1c00b2c0:	a2b98be3          	beq	s3,a1,1c00acf6 <pos_libc_prf+0x84e>
1c00b2c4:	0585                	addi	a1,a1,1
1c00b2c6:	9e0302e3          	beqz	t1,1c00acaa <pos_libc_prf+0x802>
1c00b2ca:	fed58fa3          	sb	a3,-1(a1)
1c00b2ce:	0305                	addi	t1,t1,1
1c00b2d0:	bfc5                	j	1c00b2c0 <pos_libc_prf+0xe18>
1c00b2d2:	4a19                	li	s4,6
1c00b2d4:	fadd9b63          	bne	s11,a3,1c00aa8a <pos_libc_prf+0x5e2>
1c00b2d8:	46b2                	lw	a3,12(sp)
1c00b2da:	57f5                	li	a5,-3
1c00b2dc:	0016cf93          	xori	t6,a3,1
1c00b2e0:	08f35663          	ble	a5,t1,1c00b36c <pos_libc_prf+0xec4>
1c00b2e4:	06500d93          	li	s11,101
1c00b2e8:	4e19                	li	t3,6
1c00b2ea:	fc0ff06f          	j	1c00aaaa <pos_libc_prf+0x602>
1c00b2ee:	0c800793          	li	a5,200
1c00b2f2:	c737c163          	blt	a5,s3,1c00a754 <pos_libc_prf+0x2ac>
1c00b2f6:	8c2a                	mv	s8,a0
1c00b2f8:	c602                	sw	zero,12(sp)
1c00b2fa:	dceff06f          	j	1c00a8c8 <pos_libc_prf+0x420>
1c00b2fe:	02d00793          	li	a5,45
1c00b302:	40600333          	neg	t1,t1
1c00b306:	00f980a3          	sb	a5,1(s3)
1c00b30a:	ba89                	j	1c00ac5c <pos_libc_prf+0x7b4>
1c00b30c:	c602                	sw	zero,12(sp)
1c00b30e:	b329                	j	1c00b018 <pos_libc_prf+0xb70>
1c00b310:	0cf6ed63          	bltu	a3,a5,1c00b3ea <pos_libc_prf+0xf42>
1c00b314:	6791                	lui	a5,0x4
1c00b316:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c00b31a:	00f71023          	sh	a5,0(a4)
1c00b31e:	04e00793          	li	a5,78
1c00b322:	00f70123          	sb	a5,2(a4)
1c00b326:	bdc5                	j	1c00b216 <pos_libc_prf+0xd6e>
1c00b328:	4f81                	li	t6,0
1c00b32a:	014307b3          	add	a5,t1,s4
1c00b32e:	0807c863          	bltz	a5,1c00b3be <pos_libc_prf+0xf16>
1c00b332:	46c1                	li	a3,16
1c00b334:	8e3e                	mv	t3,a5
1c00b336:	00f6d363          	ble	a5,a3,1c00b33c <pos_libc_prf+0xe94>
1c00b33a:	4e41                	li	t3,16
1c00b33c:	1e7d                	addi	t3,t3,-1
1c00b33e:	06600d93          	li	s11,102
1c00b342:	f6079463          	bnez	a5,1c00aaaa <pos_libc_prf+0x602>
1c00b346:	4681                	li	a3,0
1c00b348:	08000637          	lui	a2,0x8000
1c00b34c:	fc8ff06f          	j	1c00ab14 <pos_libc_prf+0x66c>
1c00b350:	47e2                	lw	a5,24(sp)
1c00b352:	c7d5                	beqz	a5,1c00b3fe <pos_libc_prf+0xf56>
1c00b354:	02000713          	li	a4,32
1c00b358:	02e10223          	sb	a4,36(sp)
1c00b35c:	02510e93          	addi	t4,sp,37
1c00b360:	4301                	li	t1,0
1c00b362:	4501                	li	a0,0
1c00b364:	4681                	li	a3,0
1c00b366:	4581                	li	a1,0
1c00b368:	ef0ff06f          	j	1c00aa58 <pos_libc_prf+0x5b0>
1c00b36c:	479d                	li	a5,7
1c00b36e:	fa67dee3          	ble	t1,a5,1c00b32a <pos_libc_prf+0xe82>
1c00b372:	4e19                	li	t3,6
1c00b374:	06500d93          	li	s11,101
1c00b378:	f32ff06f          	j	1c00aaaa <pos_libc_prf+0x602>
1c00b37c:	679d                	lui	a5,0x7
1c00b37e:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c00b382:	00f71023          	sh	a5,0(a4)
1c00b386:	06600793          	li	a5,102
1c00b38a:	00f70123          	sb	a5,2(a4)
1c00b38e:	b561                	j	1c00b216 <pos_libc_prf+0xd6e>
1c00b390:	03000693          	li	a3,48
1c00b394:	00de8023          	sb	a3,0(t4)
1c00b398:	4541                	li	a0,16
1c00b39a:	b711                	j	1c00b29e <pos_libc_prf+0xdf6>
1c00b39c:	48e2                	lw	a7,24(sp)
1c00b39e:	8ee6                	mv	t4,s9
1c00b3a0:	dc088e63          	beqz	a7,1c00a97c <pos_libc_prf+0x4d4>
1c00b3a4:	02000713          	li	a4,32
1c00b3a8:	02e10223          	sb	a4,36(sp)
1c00b3ac:	02510e93          	addi	t4,sp,37
1c00b3b0:	dccff06f          	j	1c00a97c <pos_libc_prf+0x4d4>
1c00b3b4:	80000737          	lui	a4,0x80000
1c00b3b8:	02510793          	addi	a5,sp,37
1c00b3bc:	bc91                	j	1c00ae10 <pos_libc_prf+0x968>
1c00b3be:	06600d93          	li	s11,102
1c00b3c2:	b751                	j	1c00b346 <pos_libc_prf+0xe9e>
1c00b3c4:	02d00713          	li	a4,45
1c00b3c8:	02e10223          	sb	a4,36(sp)
1c00b3cc:	02510713          	addi	a4,sp,37
1c00b3d0:	b505                	j	1c00b1f0 <pos_libc_prf+0xd48>
1c00b3d2:	a40a5d63          	bgez	s4,1c00a62c <pos_libc_prf+0x184>
1c00b3d6:	a62ff06f          	j	1c00a638 <pos_libc_prf+0x190>
1c00b3da:	02d00713          	li	a4,45
1c00b3de:	02e10223          	sb	a4,36(sp)
1c00b3e2:	02510e93          	addi	t4,sp,37
1c00b3e6:	d96ff06f          	j	1c00a97c <pos_libc_prf+0x4d4>
1c00b3ea:	6799                	lui	a5,0x6
1c00b3ec:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c00b3f0:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00b3f4:	06e00793          	li	a5,110
1c00b3f8:	00f70123          	sb	a5,2(a4)
1c00b3fc:	bd29                	j	1c00b216 <pos_libc_prf+0xd6e>
1c00b3fe:	8ee6                	mv	t4,s9
1c00b400:	b785                	j	1c00b360 <pos_libc_prf+0xeb8>
1c00b402:	89aa                	mv	s3,a0
1c00b404:	820f8de3          	beqz	t6,1c00ac3e <pos_libc_prf+0x796>
1c00b408:	b8dd                	j	1c00acfe <pos_libc_prf+0x856>

1c00b40a <pos_init_start>:
1c00b40a:	1141                	addi	sp,sp,-16
1c00b40c:	c422                	sw	s0,8(sp)
1c00b40e:	1c000437          	lui	s0,0x1c000
1c00b412:	c606                	sw	ra,12(sp)
1c00b414:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b418:	f13fc0ef          	jal	ra,1c00832a <pos_soc_init>
1c00b41c:	2275                	jal	1c00b5c8 <pos_irq_init>
1c00b41e:	2ae1                	jal	1c00b5f6 <pos_soc_event_init>
1c00b420:	2a31                	jal	1c00b53c <pos_allocs_init>
1c00b422:	405c                	lw	a5,4(s0)
1c00b424:	c791                	beqz	a5,1c00b430 <pos_init_start+0x26>
1c00b426:	0411                	addi	s0,s0,4
1c00b428:	0411                	addi	s0,s0,4
1c00b42a:	9782                	jalr	a5
1c00b42c:	401c                	lw	a5,0(s0)
1c00b42e:	ffed                	bnez	a5,1c00b428 <pos_init_start+0x1e>
1c00b430:	842ff0ef          	jal	ra,1c00a472 <pos_io_start>
1c00b434:	300467f3          	csrrsi	a5,mstatus,8
1c00b438:	40b2                	lw	ra,12(sp)
1c00b43a:	4422                	lw	s0,8(sp)
1c00b43c:	0141                	addi	sp,sp,16
1c00b43e:	8082                	ret

1c00b440 <pos_init_stop>:
1c00b440:	1141                	addi	sp,sp,-16
1c00b442:	c422                	sw	s0,8(sp)
1c00b444:	1c000437          	lui	s0,0x1c000
1c00b448:	c606                	sw	ra,12(sp)
1c00b44a:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b44e:	828ff0ef          	jal	ra,1c00a476 <pos_io_stop>
1c00b452:	405c                	lw	a5,4(s0)
1c00b454:	c791                	beqz	a5,1c00b460 <pos_init_stop+0x20>
1c00b456:	0411                	addi	s0,s0,4
1c00b458:	0411                	addi	s0,s0,4
1c00b45a:	9782                	jalr	a5
1c00b45c:	401c                	lw	a5,0(s0)
1c00b45e:	ffed                	bnez	a5,1c00b458 <pos_init_stop+0x18>
1c00b460:	40b2                	lw	ra,12(sp)
1c00b462:	4422                	lw	s0,8(sp)
1c00b464:	0141                	addi	sp,sp,16
1c00b466:	8082                	ret

1c00b468 <pos_alloc_init>:
1c00b468:	00758793          	addi	a5,a1,7
1c00b46c:	9be1                	andi	a5,a5,-8
1c00b46e:	40b785b3          	sub	a1,a5,a1
1c00b472:	c11c                	sw	a5,0(a0)
1c00b474:	8e0d                	sub	a2,a2,a1
1c00b476:	00c05663          	blez	a2,1c00b482 <pos_alloc_init+0x1a>
1c00b47a:	9a61                	andi	a2,a2,-8
1c00b47c:	c390                	sw	a2,0(a5)
1c00b47e:	0007a223          	sw	zero,4(a5)
1c00b482:	8082                	ret

1c00b484 <pos_alloc>:
1c00b484:	4110                	lw	a2,0(a0)
1c00b486:	059d                	addi	a1,a1,7
1c00b488:	99e1                	andi	a1,a1,-8
1c00b48a:	ca31                	beqz	a2,1c00b4de <pos_alloc+0x5a>
1c00b48c:	4218                	lw	a4,0(a2)
1c00b48e:	425c                	lw	a5,4(a2)
1c00b490:	02b75963          	ble	a1,a4,1c00b4c2 <pos_alloc+0x3e>
1c00b494:	cb81                	beqz	a5,1c00b4a4 <pos_alloc+0x20>
1c00b496:	4398                	lw	a4,0(a5)
1c00b498:	43d4                	lw	a3,4(a5)
1c00b49a:	00b75763          	ble	a1,a4,1c00b4a8 <pos_alloc+0x24>
1c00b49e:	863e                	mv	a2,a5
1c00b4a0:	87b6                	mv	a5,a3
1c00b4a2:	fbf5                	bnez	a5,1c00b496 <pos_alloc+0x12>
1c00b4a4:	853e                	mv	a0,a5
1c00b4a6:	8082                	ret
1c00b4a8:	00b70a63          	beq	a4,a1,1c00b4bc <pos_alloc+0x38>
1c00b4ac:	00b78533          	add	a0,a5,a1
1c00b4b0:	8f0d                	sub	a4,a4,a1
1c00b4b2:	c118                	sw	a4,0(a0)
1c00b4b4:	c154                	sw	a3,4(a0)
1c00b4b6:	c248                	sw	a0,4(a2)
1c00b4b8:	853e                	mv	a0,a5
1c00b4ba:	8082                	ret
1c00b4bc:	c254                	sw	a3,4(a2)
1c00b4be:	853e                	mv	a0,a5
1c00b4c0:	8082                	ret
1c00b4c2:	00e58b63          	beq	a1,a4,1c00b4d8 <pos_alloc+0x54>
1c00b4c6:	00b606b3          	add	a3,a2,a1
1c00b4ca:	8f0d                	sub	a4,a4,a1
1c00b4cc:	c2dc                	sw	a5,4(a3)
1c00b4ce:	c298                	sw	a4,0(a3)
1c00b4d0:	87b2                	mv	a5,a2
1c00b4d2:	c114                	sw	a3,0(a0)
1c00b4d4:	853e                	mv	a0,a5
1c00b4d6:	8082                	ret
1c00b4d8:	c11c                	sw	a5,0(a0)
1c00b4da:	87b2                	mv	a5,a2
1c00b4dc:	b7e1                	j	1c00b4a4 <pos_alloc+0x20>
1c00b4de:	4781                	li	a5,0
1c00b4e0:	b7d1                	j	1c00b4a4 <pos_alloc+0x20>

1c00b4e2 <pos_free>:
1c00b4e2:	4118                	lw	a4,0(a0)
1c00b4e4:	061d                	addi	a2,a2,7
1c00b4e6:	9a61                	andi	a2,a2,-8
1c00b4e8:	c729                	beqz	a4,1c00b532 <pos_free+0x50>
1c00b4ea:	00b76663          	bltu	a4,a1,1c00b4f6 <pos_free+0x14>
1c00b4ee:	a0a1                	j	1c00b536 <pos_free+0x54>
1c00b4f0:	00b7f563          	bleu	a1,a5,1c00b4fa <pos_free+0x18>
1c00b4f4:	873e                	mv	a4,a5
1c00b4f6:	435c                	lw	a5,4(a4)
1c00b4f8:	ffe5                	bnez	a5,1c00b4f0 <pos_free+0xe>
1c00b4fa:	00c586b3          	add	a3,a1,a2
1c00b4fe:	02d78463          	beq	a5,a3,1c00b526 <pos_free+0x44>
1c00b502:	c190                	sw	a2,0(a1)
1c00b504:	c1dc                	sw	a5,4(a1)
1c00b506:	cf11                	beqz	a4,1c00b522 <pos_free+0x40>
1c00b508:	431c                	lw	a5,0(a4)
1c00b50a:	00f706b3          	add	a3,a4,a5
1c00b50e:	00d58463          	beq	a1,a3,1c00b516 <pos_free+0x34>
1c00b512:	c34c                	sw	a1,4(a4)
1c00b514:	8082                	ret
1c00b516:	4194                	lw	a3,0(a1)
1c00b518:	41d0                	lw	a2,4(a1)
1c00b51a:	97b6                	add	a5,a5,a3
1c00b51c:	c31c                	sw	a5,0(a4)
1c00b51e:	c350                	sw	a2,4(a4)
1c00b520:	8082                	ret
1c00b522:	c10c                	sw	a1,0(a0)
1c00b524:	8082                	ret
1c00b526:	4394                	lw	a3,0(a5)
1c00b528:	43dc                	lw	a5,4(a5)
1c00b52a:	9636                	add	a2,a2,a3
1c00b52c:	c190                	sw	a2,0(a1)
1c00b52e:	c1dc                	sw	a5,4(a1)
1c00b530:	bfd9                	j	1c00b506 <pos_free+0x24>
1c00b532:	4781                	li	a5,0
1c00b534:	b7d9                	j	1c00b4fa <pos_free+0x18>
1c00b536:	87ba                	mv	a5,a4
1c00b538:	4701                	li	a4,0
1c00b53a:	b7c1                	j	1c00b4fa <pos_free+0x18>

1c00b53c <pos_allocs_init>:
1c00b53c:	1141                	addi	sp,sp,-16
1c00b53e:	1c0065b7          	lui	a1,0x1c006
1c00b542:	c606                	sw	ra,12(sp)
1c00b544:	2e858793          	addi	a5,a1,744 # 1c0062e8 <__l2_priv0_end>
1c00b548:	1c008637          	lui	a2,0x1c008
1c00b54c:	04c7cc63          	blt	a5,a2,1c00b5a4 <pos_allocs_init+0x68>
1c00b550:	4581                	li	a1,0
1c00b552:	4601                	li	a2,0
1c00b554:	1c006537          	lui	a0,0x1c006
1c00b558:	2dc50513          	addi	a0,a0,732 # 1c0062dc <pos_alloc_l2>
1c00b55c:	3731                	jal	1c00b468 <pos_alloc_init>
1c00b55e:	1c00b5b7          	lui	a1,0x1c00b
1c00b562:	61058793          	addi	a5,a1,1552 # 1c00b610 <__l2_priv1_end>
1c00b566:	1c010637          	lui	a2,0x1c010
1c00b56a:	02c7c963          	blt	a5,a2,1c00b59c <pos_allocs_init+0x60>
1c00b56e:	4581                	li	a1,0
1c00b570:	4601                	li	a2,0
1c00b572:	1c006537          	lui	a0,0x1c006
1c00b576:	2e050513          	addi	a0,a0,736 # 1c0062e0 <pos_alloc_l2+0x4>
1c00b57a:	35fd                	jal	1c00b468 <pos_alloc_init>
1c00b57c:	1c0105b7          	lui	a1,0x1c010
1c00b580:	00058793          	mv	a5,a1
1c00b584:	40b2                	lw	ra,12(sp)
1c00b586:	1c080637          	lui	a2,0x1c080
1c00b58a:	1c006537          	lui	a0,0x1c006
1c00b58e:	8e1d                	sub	a2,a2,a5
1c00b590:	00058593          	mv	a1,a1
1c00b594:	2e450513          	addi	a0,a0,740 # 1c0062e4 <pos_alloc_l2+0x8>
1c00b598:	0141                	addi	sp,sp,16
1c00b59a:	b5f9                	j	1c00b468 <pos_alloc_init>
1c00b59c:	8e1d                	sub	a2,a2,a5
1c00b59e:	61058593          	addi	a1,a1,1552 # 1c010610 <__l2_shared_end+0x610>
1c00b5a2:	bfc1                	j	1c00b572 <pos_allocs_init+0x36>
1c00b5a4:	8e1d                	sub	a2,a2,a5
1c00b5a6:	2e858593          	addi	a1,a1,744
1c00b5aa:	b76d                	j	1c00b554 <pos_allocs_init+0x18>

1c00b5ac <pi_l2_malloc>:
1c00b5ac:	85aa                	mv	a1,a0
1c00b5ae:	1c006537          	lui	a0,0x1c006
1c00b5b2:	2dc50513          	addi	a0,a0,732 # 1c0062dc <pos_alloc_l2>
1c00b5b6:	b5f9                	j	1c00b484 <pos_alloc>

1c00b5b8 <pi_l2_free>:
1c00b5b8:	862e                	mv	a2,a1
1c00b5ba:	85aa                	mv	a1,a0
1c00b5bc:	1c006537          	lui	a0,0x1c006
1c00b5c0:	2dc50513          	addi	a0,a0,732 # 1c0062dc <pos_alloc_l2>
1c00b5c4:	bf39                	j	1c00b4e2 <pos_free>

1c00b5c6 <__rt_handle_illegal_instr>:
1c00b5c6:	8082                	ret

1c00b5c8 <pos_irq_init>:
1c00b5c8:	1a10a737          	lui	a4,0x1a10a
1c00b5cc:	f14027f3          	csrr	a5,mhartid
1c00b5d0:	56fd                	li	a3,-1
1c00b5d2:	8795                	srai	a5,a5,0x5
1c00b5d4:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b5d8:	03f7f793          	andi	a5,a5,63
1c00b5dc:	477d                	li	a4,31
1c00b5de:	00e78363          	beq	a5,a4,1c00b5e4 <pos_irq_init+0x1c>
1c00b5e2:	8082                	ret
1c00b5e4:	1c0087b7          	lui	a5,0x1c008
1c00b5e8:	00078793          	mv	a5,a5
1c00b5ec:	0017e793          	ori	a5,a5,1
1c00b5f0:	30579073          	csrw	mtvec,a5
1c00b5f4:	8082                	ret

1c00b5f6 <pos_soc_event_init>:
1c00b5f6:	1a1067b7          	lui	a5,0x1a106
1c00b5fa:	577d                	li	a4,-1
1c00b5fc:	c3d8                	sw	a4,4(a5)
1c00b5fe:	c798                	sw	a4,8(a5)
1c00b600:	c7d8                	sw	a4,12(a5)
1c00b602:	cb98                	sw	a4,16(a5)
1c00b604:	cbd8                	sw	a4,20(a5)
1c00b606:	cf98                	sw	a4,24(a5)
1c00b608:	cfd8                	sw	a4,28(a5)
1c00b60a:	d398                	sw	a4,32(a5)
1c00b60c:	8082                	ret

1c00b60e <_endtext>:
	...
