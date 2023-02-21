riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber768/1.keygen/build/keygen/keygen

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber768/1.keygen/build/keygen/keygen:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	70a0306f          	j	1c00b70a <__rt_handle_illegal_instr>
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
1c008084:	6860306f          	j	1c00b70a <__rt_handle_illegal_instr>

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
1c0080c0:	ffffc297          	auipc	t0,0xffffc
1c0080c4:	1b028293          	addi	t0,t0,432 # 1c004270 <stack>
1c0080c8:	ffffc317          	auipc	t1,0xffffc
1c0080cc:	22030313          	addi	t1,t1,544 # 1c0042e8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffc117          	auipc	sp,0xffffc
1c0080de:	19610113          	addi	sp,sp,406 # 1c004270 <stack>
1c0080e2:	46c030ef          	jal	ra,1c00b54e <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	08a38393          	addi	t2,t2,138 # 1c008178 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	488030ef          	jal	ra,1c00b584 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	4a0020ef          	jal	ra,1c00a5a2 <exit>

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
1c008160:	45e020ef          	jal	ra,1c00a5be <printf>
1c008164:	ff2419e3          	bne	s0,s2,1c008156 <printbytes+0x14>
1c008168:	4422                	lw	s0,8(sp)
1c00816a:	40b2                	lw	ra,12(sp)
1c00816c:	4492                	lw	s1,4(sp)
1c00816e:	4902                	lw	s2,0(sp)
1c008170:	4529                	li	a0,10
1c008172:	0141                	addi	sp,sp,16
1c008174:	4040206f          	j	1c00a578 <putchar>

1c008178 <main>:
1c008178:	81010113          	addi	sp,sp,-2032
1c00817c:	1c000537          	lui	a0,0x1c000
1c008180:	7e112623          	sw	ra,2028(sp)
1c008184:	7e812423          	sw	s0,2024(sp)
1c008188:	7e912223          	sw	s1,2020(sp)
1c00818c:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c008190:	9e010113          	addi	sp,sp,-1568
1c008194:	368020ef          	jal	ra,1c00a4fc <puts>
1c008198:	6785                	lui	a5,0x1
1c00819a:	747d                	lui	s0,0xfffff
1c00819c:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c0081a0:	978a                	add	a5,a5,sp
1c0081a2:	6a040493          	addi	s1,s0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c0081a6:	20040413          	addi	s0,s0,512
1c0081aa:	943e                	add	s0,s0,a5
1c0081ac:	94be                	add	s1,s1,a5
1c0081ae:	85a6                	mv	a1,s1
1c0081b0:	8522                	mv	a0,s0
1c0081b2:	023010ef          	jal	ra,1c0099d4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c0081b6:	1c000537          	lui	a0,0x1c000
1c0081ba:	12c50513          	addi	a0,a0,300 # 1c00012c <__DTOR_END__+0x110>
1c0081be:	33e020ef          	jal	ra,1c00a4fc <puts>
1c0081c2:	1c000537          	lui	a0,0x1c000
1c0081c6:	13c50513          	addi	a0,a0,316 # 1c00013c <__DTOR_END__+0x120>
1c0081ca:	332020ef          	jal	ra,1c00a4fc <puts>
1c0081ce:	4a000593          	li	a1,1184
1c0081d2:	8522                	mv	a0,s0
1c0081d4:	37bd                	jal	1c008142 <printbytes>
1c0081d6:	1c000537          	lui	a0,0x1c000
1c0081da:	14050513          	addi	a0,a0,320 # 1c000140 <__DTOR_END__+0x124>
1c0081de:	31e020ef          	jal	ra,1c00a4fc <puts>
1c0081e2:	6585                	lui	a1,0x1
1c0081e4:	8526                	mv	a0,s1
1c0081e6:	96058593          	addi	a1,a1,-1696 # 960 <__CTOR_LIST__-0x1bfff6a4>
1c0081ea:	3fa1                	jal	1c008142 <printbytes>
1c0081ec:	62010113          	addi	sp,sp,1568
1c0081f0:	7ec12083          	lw	ra,2028(sp)
1c0081f4:	4501                	li	a0,0
1c0081f6:	7e812403          	lw	s0,2024(sp)
1c0081fa:	7e412483          	lw	s1,2020(sp)
1c0081fe:	7f010113          	addi	sp,sp,2032
1c008202:	8082                	ret

1c008204 <pos_fll_init>:
1c008204:	1101                	addi	sp,sp,-32
1c008206:	1a100637          	lui	a2,0x1a100
1c00820a:	ca26                	sw	s1,20(sp)
1c00820c:	00451693          	slli	a3,a0,0x4
1c008210:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c008214:	94b6                	add	s1,s1,a3
1c008216:	4098                	lw	a4,0(s1)
1c008218:	c84a                	sw	s2,16(sp)
1c00821a:	ce06                	sw	ra,28(sp)
1c00821c:	cc22                	sw	s0,24(sp)
1c00821e:	c64e                	sw	s3,12(sp)
1c008220:	c452                	sw	s4,8(sp)
1c008222:	892a                	mv	s2,a0
1c008224:	87ba                	mv	a5,a4
1c008226:	04074563          	bltz	a4,1c008270 <pos_fll_init+0x6c>
1c00822a:	00860593          	addi	a1,a2,8
1c00822e:	95b6                	add	a1,a1,a3
1c008230:	419c                	lw	a5,0(a1)
1c008232:	7541                	lui	a0,0xffff0
1c008234:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c008238:	8fe9                	and	a5,a5,a0
1c00823a:	6509                	lui	a0,0x2
1c00823c:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c008240:	8fc9                	or	a5,a5,a0
1c008242:	f0010537          	lui	a0,0xf0010
1c008246:	157d                	addi	a0,a0,-1
1c008248:	8fe9                	and	a5,a5,a0
1c00824a:	00500537          	lui	a0,0x500
1c00824e:	8fc9                	or	a5,a5,a0
1c008250:	0631                	addi	a2,a2,12
1c008252:	c19c                	sw	a5,0(a1)
1c008254:	96b2                	add	a3,a3,a2
1c008256:	429c                	lw	a5,0(a3)
1c008258:	fc010637          	lui	a2,0xfc010
1c00825c:	167d                	addi	a2,a2,-1
1c00825e:	8ff1                	and	a5,a5,a2
1c008260:	014c0637          	lui	a2,0x14c0
1c008264:	8fd1                	or	a5,a5,a2
1c008266:	c29c                	sw	a5,0(a3)
1c008268:	c00007b7          	lui	a5,0xc0000
1c00826c:	8fd9                	or	a5,a5,a4
1c00826e:	c09c                	sw	a5,0(s1)
1c008270:	1c004437          	lui	s0,0x1c004
1c008274:	2c840413          	addi	s0,s0,712 # 1c0042c8 <pos_fll_freq>
1c008278:	00291993          	slli	s3,s2,0x2
1c00827c:	013406b3          	add	a3,s0,s3
1c008280:	0006aa03          	lw	s4,0(a3)
1c008284:	020a1d63          	bnez	s4,1c0082be <pos_fll_init+0xba>
1c008288:	83e9                	srli	a5,a5,0x1a
1c00828a:	0742                	slli	a4,a4,0x10
1c00828c:	8341                	srli	a4,a4,0x10
1c00828e:	8bbd                	andi	a5,a5,15
1c008290:	073e                	slli	a4,a4,0xf
1c008292:	17fd                	addi	a5,a5,-1
1c008294:	00f75a33          	srl	s4,a4,a5
1c008298:	1c004537          	lui	a0,0x1c004
1c00829c:	0146a023          	sw	s4,0(a3)
1c0082a0:	2c050513          	addi	a0,a0,704 # 1c0042c0 <pos_fll_is_on>
1c0082a4:	954a                	add	a0,a0,s2
1c0082a6:	4685                	li	a3,1
1c0082a8:	00d50023          	sb	a3,0(a0)
1c0082ac:	40f2                	lw	ra,28(sp)
1c0082ae:	4462                	lw	s0,24(sp)
1c0082b0:	8552                	mv	a0,s4
1c0082b2:	44d2                	lw	s1,20(sp)
1c0082b4:	4942                	lw	s2,16(sp)
1c0082b6:	49b2                	lw	s3,12(sp)
1c0082b8:	4a22                	lw	s4,8(sp)
1c0082ba:	6105                	addi	sp,sp,32
1c0082bc:	8082                	ret
1c0082be:	8552                	mv	a0,s4
1c0082c0:	3599                	jal	1c008106 <__clzsi2>
1c0082c2:	1579                	addi	a0,a0,-2
1c0082c4:	00155613          	srli	a2,a0,0x1
1c0082c8:	e631                	bnez	a2,1c008314 <pos_fll_init+0x110>
1c0082ca:	4709                	li	a4,2
1c0082cc:	4585                	li	a1,1
1c0082ce:	4605                	li	a2,1
1c0082d0:	00ca17b3          	sll	a5,s4,a2
1c0082d4:	76e1                	lui	a3,0xffff8
1c0082d6:	1c004537          	lui	a0,0x1c004
1c0082da:	8efd                	and	a3,a3,a5
1c0082dc:	2c050513          	addi	a0,a0,704 # 1c0042c0 <pos_fll_is_on>
1c0082e0:	96ae                	add	a3,a3,a1
1c0082e2:	012505b3          	add	a1,a0,s2
1c0082e6:	00c6d6b3          	srl	a3,a3,a2
1c0082ea:	944e                	add	s0,s0,s3
1c0082ec:	0005c603          	lbu	a2,0(a1)
1c0082f0:	c014                	sw	a3,0(s0)
1c0082f2:	da4d                	beqz	a2,1c0082a4 <pos_fll_init+0xa0>
1c0082f4:	4094                	lw	a3,0(s1)
1c0082f6:	83bd                	srli	a5,a5,0xf
1c0082f8:	07c2                	slli	a5,a5,0x10
1c0082fa:	7641                	lui	a2,0xffff0
1c0082fc:	83c1                	srli	a5,a5,0x10
1c0082fe:	8ef1                	and	a3,a3,a2
1c008300:	8edd                	or	a3,a3,a5
1c008302:	c40007b7          	lui	a5,0xc4000
1c008306:	8b3d                	andi	a4,a4,15
1c008308:	17fd                	addi	a5,a5,-1
1c00830a:	076a                	slli	a4,a4,0x1a
1c00830c:	8efd                	and	a3,a3,a5
1c00830e:	8ed9                	or	a3,a3,a4
1c008310:	c094                	sw	a3,0(s1)
1c008312:	bf49                	j	1c0082a4 <pos_fll_init+0xa0>
1c008314:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c008318:	4685                	li	a3,1
1c00831a:	00b695b3          	sll	a1,a3,a1
1c00831e:	00160713          	addi	a4,a2,1
1c008322:	b77d                	j	1c0082d0 <pos_fll_init+0xcc>

1c008324 <pos_fll_constructor>:
1c008324:	1c0047b7          	lui	a5,0x1c004
1c008328:	2c878793          	addi	a5,a5,712 # 1c0042c8 <pos_fll_freq>
1c00832c:	0007a023          	sw	zero,0(a5)
1c008330:	0007a223          	sw	zero,4(a5)
1c008334:	1c0047b7          	lui	a5,0x1c004
1c008338:	2c079023          	sh	zero,704(a5) # 1c0042c0 <pos_fll_is_on>
1c00833c:	8082                	ret

1c00833e <pos_soc_init>:
1c00833e:	1141                	addi	sp,sp,-16
1c008340:	c606                	sw	ra,12(sp)
1c008342:	c422                	sw	s0,8(sp)
1c008344:	37c5                	jal	1c008324 <pos_fll_constructor>
1c008346:	4501                	li	a0,0
1c008348:	3d75                	jal	1c008204 <pos_fll_init>
1c00834a:	1c004437          	lui	s0,0x1c004
1c00834e:	2ca42823          	sw	a0,720(s0) # 1c0042d0 <pos_freq_domains>
1c008352:	4505                	li	a0,1
1c008354:	3d45                	jal	1c008204 <pos_fll_init>
1c008356:	2d040413          	addi	s0,s0,720
1c00835a:	c408                	sw	a0,8(s0)
1c00835c:	40b2                	lw	ra,12(sp)
1c00835e:	4422                	lw	s0,8(sp)
1c008360:	0141                	addi	sp,sp,16
1c008362:	8082                	ret

1c008364 <KeccakF1600_StatePermute>:
1c008364:	1a4007b7          	lui	a5,0x1a400
1c008368:	1141                	addi	sp,sp,-16
1c00836a:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00836e:	4118                	lw	a4,0(a0)
1c008370:	0791                	addi	a5,a5,4
1c008372:	fee7ae23          	sw	a4,-4(a5)
1c008376:	0511                	addi	a0,a0,4
1c008378:	fed79be3          	bne	a5,a3,1c00836e <KeccakF1600_StatePermute+0xa>
1c00837c:	1a4007b7          	lui	a5,0x1a400
1c008380:	4705                	li	a4,1
1c008382:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008386:	1a400737          	lui	a4,0x1a400
1c00838a:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00838e:	8b85                	andi	a5,a5,1
1c008390:	dfed                	beqz	a5,1c00838a <KeccakF1600_StatePermute+0x26>
1c008392:	c602                	sw	zero,12(sp)
1c008394:	4732                	lw	a4,12(sp)
1c008396:	03100793          	li	a5,49
1c00839a:	02e7c663          	blt	a5,a4,1c0083c6 <KeccakF1600_StatePermute+0x62>
1c00839e:	1a400637          	lui	a2,0x1a400
1c0083a2:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0083a6:	03100513          	li	a0,49
1c0083aa:	4732                	lw	a4,12(sp)
1c0083ac:	47b2                	lw	a5,12(sp)
1c0083ae:	070a                	slli	a4,a4,0x2
1c0083b0:	9732                	add	a4,a4,a2
1c0083b2:	4314                	lw	a3,0(a4)
1c0083b4:	4732                	lw	a4,12(sp)
1c0083b6:	078a                	slli	a5,a5,0x2
1c0083b8:	0705                	addi	a4,a4,1
1c0083ba:	c63a                	sw	a4,12(sp)
1c0083bc:	97ae                	add	a5,a5,a1
1c0083be:	4732                	lw	a4,12(sp)
1c0083c0:	c394                	sw	a3,0(a5)
1c0083c2:	fee554e3          	ble	a4,a0,1c0083aa <KeccakF1600_StatePermute+0x46>
1c0083c6:	0141                	addi	sp,sp,16
1c0083c8:	8082                	ret

1c0083ca <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0083ca:	1141                	addi	sp,sp,-16
1c0083cc:	55555337          	lui	t1,0x55555
1c0083d0:	68c1                	lui	a7,0x10
1c0083d2:	c622                	sw	s0,12(sp)
1c0083d4:	c426                	sw	s1,8(sp)
1c0083d6:	c24a                	sw	s2,4(sp)
1c0083d8:	20050e13          	addi	t3,a0,512
1c0083dc:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0083e0:	18fd                	addi	a7,a7,-1
1c0083e2:	419c                	lw	a5,0(a1)
1c0083e4:	0541                	addi	a0,a0,16
1c0083e6:	0017d713          	srli	a4,a5,0x1
1c0083ea:	00677733          	and	a4,a4,t1
1c0083ee:	0067f7b3          	and	a5,a5,t1
1c0083f2:	97ba                	add	a5,a5,a4
1c0083f4:	0027d913          	srli	s2,a5,0x2
1c0083f8:	0087d693          	srli	a3,a5,0x8
1c0083fc:	00a7d493          	srli	s1,a5,0xa
1c008400:	0107d713          	srli	a4,a5,0x10
1c008404:	0127d413          	srli	s0,a5,0x12
1c008408:	0037f613          	andi	a2,a5,3
1c00840c:	00397913          	andi	s2,s2,3
1c008410:	8a8d                	andi	a3,a3,3
1c008412:	888d                	andi	s1,s1,3
1c008414:	8b0d                	andi	a4,a4,3
1c008416:	880d                	andi	s0,s0,3
1c008418:	0047df13          	srli	t5,a5,0x4
1c00841c:	0067d393          	srli	t2,a5,0x6
1c008420:	00c7de93          	srli	t4,a5,0xc
1c008424:	00e7d293          	srli	t0,a5,0xe
1c008428:	0147d813          	srli	a6,a5,0x14
1c00842c:	0167df93          	srli	t6,a5,0x16
1c008430:	41260633          	sub	a2,a2,s2
1c008434:	8e85                	sub	a3,a3,s1
1c008436:	8f01                	sub	a4,a4,s0
1c008438:	0033f393          	andi	t2,t2,3
1c00843c:	0032f293          	andi	t0,t0,3
1c008440:	003fff93          	andi	t6,t6,3
1c008444:	003f7f13          	andi	t5,t5,3
1c008448:	003efe93          	andi	t4,t4,3
1c00844c:	00387813          	andi	a6,a6,3
1c008450:	0642                	slli	a2,a2,0x10
1c008452:	06c2                	slli	a3,a3,0x10
1c008454:	0742                	slli	a4,a4,0x10
1c008456:	407f0f33          	sub	t5,t5,t2
1c00845a:	405e8eb3          	sub	t4,t4,t0
1c00845e:	41f80833          	sub	a6,a6,t6
1c008462:	0187d293          	srli	t0,a5,0x18
1c008466:	01a7d393          	srli	t2,a5,0x1a
1c00846a:	01c7df93          	srli	t6,a5,0x1c
1c00846e:	8241                	srli	a2,a2,0x10
1c008470:	82c1                	srli	a3,a3,0x10
1c008472:	8341                	srli	a4,a4,0x10
1c008474:	0842                	slli	a6,a6,0x10
1c008476:	0f42                	slli	t5,t5,0x10
1c008478:	01167633          	and	a2,a2,a7
1c00847c:	0ec2                	slli	t4,t4,0x10
1c00847e:	0116f6b3          	and	a3,a3,a7
1c008482:	01177733          	and	a4,a4,a7
1c008486:	0032f293          	andi	t0,t0,3
1c00848a:	0033f393          	andi	t2,t2,3
1c00848e:	003fff93          	andi	t6,t6,3
1c008492:	83f9                	srli	a5,a5,0x1e
1c008494:	01076733          	or	a4,a4,a6
1c008498:	01e66633          	or	a2,a2,t5
1c00849c:	01d6e6b3          	or	a3,a3,t4
1c0084a0:	40728833          	sub	a6,t0,t2
1c0084a4:	40ff87b3          	sub	a5,t6,a5
1c0084a8:	fec52823          	sw	a2,-16(a0)
1c0084ac:	fed52a23          	sw	a3,-12(a0)
1c0084b0:	fee52c23          	sw	a4,-8(a0)
1c0084b4:	ff051e23          	sh	a6,-4(a0)
1c0084b8:	fef51f23          	sh	a5,-2(a0)
1c0084bc:	0591                	addi	a1,a1,4
1c0084be:	f3c512e3          	bne	a0,t3,1c0083e2 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0084c2:	4432                	lw	s0,12(sp)
1c0084c4:	44a2                	lw	s1,8(sp)
1c0084c6:	4912                	lw	s2,4(sp)
1c0084c8:	0141                	addi	sp,sp,16
1c0084ca:	8082                	ret

1c0084cc <keccak_absorb.constprop.7>:
1c0084cc:	7151                	addi	sp,sp,-240
1c0084ce:	d3a6                	sw	s1,228(sp)
1c0084d0:	cfce                	sw	s3,220(sp)
1c0084d2:	cdd2                	sw	s4,216(sp)
1c0084d4:	cbd6                	sw	s5,212(sp)
1c0084d6:	d786                	sw	ra,236(sp)
1c0084d8:	d5a2                	sw	s0,232(sp)
1c0084da:	d1ca                	sw	s2,224(sp)
1c0084dc:	89aa                	mv	s3,a0
1c0084de:	8a32                	mv	s4,a2
1c0084e0:	84b6                	mv	s1,a3
1c0084e2:	8aaa                	mv	s5,a0
1c0084e4:	0c850713          	addi	a4,a0,200
1c0084e8:	87aa                	mv	a5,a0
1c0084ea:	4601                	li	a2,0
1c0084ec:	4681                	li	a3,0
1c0084ee:	c390                	sw	a2,0(a5)
1c0084f0:	c3d4                	sw	a3,4(a5)
1c0084f2:	07a1                	addi	a5,a5,8
1c0084f4:	fef71be3          	bne	a4,a5,1c0084ea <keccak_absorb.constprop.7+0x1e>
1c0084f8:	08700793          	li	a5,135
1c0084fc:	0747fb63          	bleu	s4,a5,1c008572 <keccak_absorb.constprop.7+0xa6>
1c008500:	08700413          	li	s0,135
1c008504:	08858913          	addi	s2,a1,136
1c008508:	874e                	mv	a4,s3
1c00850a:	0015c783          	lbu	a5,1(a1)
1c00850e:	0025c603          	lbu	a2,2(a1)
1c008512:	0055c883          	lbu	a7,5(a1)
1c008516:	0045c303          	lbu	t1,4(a1)
1c00851a:	0065c803          	lbu	a6,6(a1)
1c00851e:	0005ce03          	lbu	t3,0(a1)
1c008522:	0035c503          	lbu	a0,3(a1)
1c008526:	0075c683          	lbu	a3,7(a1)
1c00852a:	0642                	slli	a2,a2,0x10
1c00852c:	07a2                	slli	a5,a5,0x8
1c00852e:	08a2                	slli	a7,a7,0x8
1c008530:	8fd1                	or	a5,a5,a2
1c008532:	0068e8b3          	or	a7,a7,t1
1c008536:	0842                	slli	a6,a6,0x10
1c008538:	00072303          	lw	t1,0(a4)
1c00853c:	4350                	lw	a2,4(a4)
1c00853e:	01c7e7b3          	or	a5,a5,t3
1c008542:	0562                	slli	a0,a0,0x18
1c008544:	01186833          	or	a6,a6,a7
1c008548:	06e2                	slli	a3,a3,0x18
1c00854a:	8fc9                	or	a5,a5,a0
1c00854c:	0106e6b3          	or	a3,a3,a6
1c008550:	00f347b3          	xor	a5,t1,a5
1c008554:	8eb1                	xor	a3,a3,a2
1c008556:	c31c                	sw	a5,0(a4)
1c008558:	c354                	sw	a3,4(a4)
1c00855a:	05a1                	addi	a1,a1,8
1c00855c:	0721                	addi	a4,a4,8
1c00855e:	fab916e3          	bne	s2,a1,1c00850a <keccak_absorb.constprop.7+0x3e>
1c008562:	85ce                	mv	a1,s3
1c008564:	854e                	mv	a0,s3
1c008566:	3bfd                	jal	1c008364 <KeccakF1600_StatePermute>
1c008568:	f78a0a13          	addi	s4,s4,-136
1c00856c:	85ca                	mv	a1,s2
1c00856e:	f9446be3          	bltu	s0,s4,1c008504 <keccak_absorb.constprop.7+0x38>
1c008572:	003c                	addi	a5,sp,8
1c008574:	0918                	addi	a4,sp,144
1c008576:	883e                	mv	a6,a5
1c008578:	4681                	li	a3,0
1c00857a:	00d82023          	sw	a3,0(a6)
1c00857e:	0811                	addi	a6,a6,4
1c008580:	ff071ce3          	bne	a4,a6,1c008578 <keccak_absorb.constprop.7+0xac>
1c008584:	060a0463          	beqz	s4,1c0085ec <keccak_absorb.constprop.7+0x120>
1c008588:	fffa0713          	addi	a4,s4,-1
1c00858c:	4689                	li	a3,2
1c00858e:	0ee6f163          	bleu	a4,a3,1c008670 <keccak_absorb.constprop.7+0x1a4>
1c008592:	002a5893          	srli	a7,s4,0x2
1c008596:	862e                	mv	a2,a1
1c008598:	86be                	mv	a3,a5
1c00859a:	4701                	li	a4,0
1c00859c:	4208                	lw	a0,0(a2)
1c00859e:	0705                	addi	a4,a4,1
1c0085a0:	c288                	sw	a0,0(a3)
1c0085a2:	0611                	addi	a2,a2,4
1c0085a4:	0691                	addi	a3,a3,4
1c0085a6:	ff176be3          	bltu	a4,a7,1c00859c <keccak_absorb.constprop.7+0xd0>
1c0085aa:	ffca7713          	andi	a4,s4,-4
1c0085ae:	02ea0f63          	beq	s4,a4,1c0085ec <keccak_absorb.constprop.7+0x120>
1c0085b2:	00e586b3          	add	a3,a1,a4
1c0085b6:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c0085ba:	0988                	addi	a0,sp,208
1c0085bc:	00e506b3          	add	a3,a0,a4
1c0085c0:	f2c68c23          	sb	a2,-200(a3)
1c0085c4:	00170693          	addi	a3,a4,1
1c0085c8:	0346f263          	bleu	s4,a3,1c0085ec <keccak_absorb.constprop.7+0x120>
1c0085cc:	00d58633          	add	a2,a1,a3
1c0085d0:	00064603          	lbu	a2,0(a2)
1c0085d4:	96aa                	add	a3,a3,a0
1c0085d6:	f2c68c23          	sb	a2,-200(a3)
1c0085da:	0709                	addi	a4,a4,2
1c0085dc:	01477863          	bleu	s4,a4,1c0085ec <keccak_absorb.constprop.7+0x120>
1c0085e0:	95ba                	add	a1,a1,a4
1c0085e2:	0005c683          	lbu	a3,0(a1)
1c0085e6:	972a                	add	a4,a4,a0
1c0085e8:	f2d70c23          	sb	a3,-200(a4)
1c0085ec:	0990                	addi	a2,sp,208
1c0085ee:	9a32                	add	s4,s4,a2
1c0085f0:	f29a0c23          	sb	s1,-200(s4)
1c0085f4:	08f14703          	lbu	a4,143(sp)
1c0085f8:	f8076713          	ori	a4,a4,-128
1c0085fc:	08e107a3          	sb	a4,143(sp)
1c008600:	0017c703          	lbu	a4,1(a5)
1c008604:	0027c883          	lbu	a7,2(a5)
1c008608:	0057c503          	lbu	a0,5(a5)
1c00860c:	0047c303          	lbu	t1,4(a5)
1c008610:	0067c583          	lbu	a1,6(a5)
1c008614:	0007ce03          	lbu	t3,0(a5)
1c008618:	0037c603          	lbu	a2,3(a5)
1c00861c:	0077c683          	lbu	a3,7(a5)
1c008620:	08c2                	slli	a7,a7,0x10
1c008622:	0722                	slli	a4,a4,0x8
1c008624:	0522                	slli	a0,a0,0x8
1c008626:	01176733          	or	a4,a4,a7
1c00862a:	00656533          	or	a0,a0,t1
1c00862e:	05c2                	slli	a1,a1,0x10
1c008630:	000aa303          	lw	t1,0(s5)
1c008634:	004aa883          	lw	a7,4(s5)
1c008638:	01c76733          	or	a4,a4,t3
1c00863c:	0662                	slli	a2,a2,0x18
1c00863e:	8dc9                	or	a1,a1,a0
1c008640:	06e2                	slli	a3,a3,0x18
1c008642:	8f51                	or	a4,a4,a2
1c008644:	8ecd                	or	a3,a3,a1
1c008646:	00e34733          	xor	a4,t1,a4
1c00864a:	00d8c6b3          	xor	a3,a7,a3
1c00864e:	00eaa023          	sw	a4,0(s5)
1c008652:	00daa223          	sw	a3,4(s5)
1c008656:	07a1                	addi	a5,a5,8
1c008658:	0aa1                	addi	s5,s5,8
1c00865a:	faf813e3          	bne	a6,a5,1c008600 <keccak_absorb.constprop.7+0x134>
1c00865e:	50be                	lw	ra,236(sp)
1c008660:	542e                	lw	s0,232(sp)
1c008662:	549e                	lw	s1,228(sp)
1c008664:	590e                	lw	s2,224(sp)
1c008666:	49fe                	lw	s3,220(sp)
1c008668:	4a6e                	lw	s4,216(sp)
1c00866a:	4ade                	lw	s5,212(sp)
1c00866c:	616d                	addi	sp,sp,240
1c00866e:	8082                	ret
1c008670:	4701                	li	a4,0
1c008672:	b781                	j	1c0085b2 <keccak_absorb.constprop.7+0xe6>

1c008674 <shake128_absorb>:
1c008674:	7151                	addi	sp,sp,-240
1c008676:	d5a2                	sw	s0,232(sp)
1c008678:	842a                	mv	s0,a0
1c00867a:	0c800513          	li	a0,200
1c00867e:	d1ca                	sw	s2,224(sp)
1c008680:	cfce                	sw	s3,220(sp)
1c008682:	d786                	sw	ra,236(sp)
1c008684:	d3a6                	sw	s1,228(sp)
1c008686:	cdd2                	sw	s4,216(sp)
1c008688:	892e                	mv	s2,a1
1c00868a:	89b2                	mv	s3,a2
1c00868c:	064030ef          	jal	ra,1c00b6f0 <pi_l2_malloc>
1c008690:	c008                	sw	a0,0(s0)
1c008692:	1a050663          	beqz	a0,1c00883e <shake128_absorb+0x1ca>
1c008696:	8a2a                	mv	s4,a0
1c008698:	0c850713          	addi	a4,a0,200
1c00869c:	87aa                	mv	a5,a0
1c00869e:	4601                	li	a2,0
1c0086a0:	4681                	li	a3,0
1c0086a2:	c390                	sw	a2,0(a5)
1c0086a4:	c3d4                	sw	a3,4(a5)
1c0086a6:	07a1                	addi	a5,a5,8
1c0086a8:	fef71be3          	bne	a4,a5,1c00869e <shake128_absorb+0x2a>
1c0086ac:	0a700793          	li	a5,167
1c0086b0:	0937f163          	bleu	s3,a5,1c008732 <shake128_absorb+0xbe>
1c0086b4:	412a04b3          	sub	s1,s4,s2
1c0086b8:	0a700413          	li	s0,167
1c0086bc:	85ca                	mv	a1,s2
1c0086be:	0a890913          	addi	s2,s2,168
1c0086c2:	0015c783          	lbu	a5,1(a1)
1c0086c6:	0025c603          	lbu	a2,2(a1)
1c0086ca:	0055c803          	lbu	a6,5(a1)
1c0086ce:	0045c303          	lbu	t1,4(a1)
1c0086d2:	0065c503          	lbu	a0,6(a1)
1c0086d6:	0005ce03          	lbu	t3,0(a1)
1c0086da:	0035c683          	lbu	a3,3(a1)
1c0086de:	0075c703          	lbu	a4,7(a1)
1c0086e2:	0642                	slli	a2,a2,0x10
1c0086e4:	07a2                	slli	a5,a5,0x8
1c0086e6:	0822                	slli	a6,a6,0x8
1c0086e8:	00b488b3          	add	a7,s1,a1
1c0086ec:	8fd1                	or	a5,a5,a2
1c0086ee:	00686833          	or	a6,a6,t1
1c0086f2:	0542                	slli	a0,a0,0x10
1c0086f4:	0008a603          	lw	a2,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c0086f8:	0048a303          	lw	t1,4(a7)
1c0086fc:	01c7e7b3          	or	a5,a5,t3
1c008700:	06e2                	slli	a3,a3,0x18
1c008702:	01056533          	or	a0,a0,a6
1c008706:	0762                	slli	a4,a4,0x18
1c008708:	8fd5                	or	a5,a5,a3
1c00870a:	8f49                	or	a4,a4,a0
1c00870c:	8fb1                	xor	a5,a5,a2
1c00870e:	00e34733          	xor	a4,t1,a4
1c008712:	00f8a023          	sw	a5,0(a7)
1c008716:	00e8a223          	sw	a4,4(a7)
1c00871a:	05a1                	addi	a1,a1,8
1c00871c:	fab913e3          	bne	s2,a1,1c0086c2 <shake128_absorb+0x4e>
1c008720:	85d2                	mv	a1,s4
1c008722:	8552                	mv	a0,s4
1c008724:	f5898993          	addi	s3,s3,-168
1c008728:	3935                	jal	1c008364 <KeccakF1600_StatePermute>
1c00872a:	f5848493          	addi	s1,s1,-168
1c00872e:	f93467e3          	bltu	s0,s3,1c0086bc <shake128_absorb+0x48>
1c008732:	191c                	addi	a5,sp,176
1c008734:	00810813          	addi	a6,sp,8
1c008738:	4681                	li	a3,0
1c00873a:	00d82023          	sw	a3,0(a6)
1c00873e:	0811                	addi	a6,a6,4
1c008740:	ff079ce3          	bne	a5,a6,1c008738 <shake128_absorb+0xc4>
1c008744:	06098563          	beqz	s3,1c0087ae <shake128_absorb+0x13a>
1c008748:	fff98793          	addi	a5,s3,-1
1c00874c:	4709                	li	a4,2
1c00874e:	0ef77663          	bleu	a5,a4,1c00883a <shake128_absorb+0x1c6>
1c008752:	0029d513          	srli	a0,s3,0x2
1c008756:	86ca                	mv	a3,s2
1c008758:	0038                	addi	a4,sp,8
1c00875a:	4781                	li	a5,0
1c00875c:	4290                	lw	a2,0(a3)
1c00875e:	0785                	addi	a5,a5,1
1c008760:	c310                	sw	a2,0(a4)
1c008762:	0691                	addi	a3,a3,4
1c008764:	0711                	addi	a4,a4,4
1c008766:	fea7ebe3          	bltu	a5,a0,1c00875c <shake128_absorb+0xe8>
1c00876a:	ffc9f793          	andi	a5,s3,-4
1c00876e:	04f98063          	beq	s3,a5,1c0087ae <shake128_absorb+0x13a>
1c008772:	00f90733          	add	a4,s2,a5
1c008776:	00074683          	lbu	a3,0(a4)
1c00877a:	0990                	addi	a2,sp,208
1c00877c:	00f60733          	add	a4,a2,a5
1c008780:	f2d70c23          	sb	a3,-200(a4)
1c008784:	00178713          	addi	a4,a5,1
1c008788:	03377363          	bleu	s3,a4,1c0087ae <shake128_absorb+0x13a>
1c00878c:	00e906b3          	add	a3,s2,a4
1c008790:	0006c683          	lbu	a3,0(a3)
1c008794:	9732                	add	a4,a4,a2
1c008796:	f2d70c23          	sb	a3,-200(a4)
1c00879a:	0789                	addi	a5,a5,2
1c00879c:	0137f963          	bleu	s3,a5,1c0087ae <shake128_absorb+0x13a>
1c0087a0:	00f905b3          	add	a1,s2,a5
1c0087a4:	0005c703          	lbu	a4,0(a1)
1c0087a8:	97b2                	add	a5,a5,a2
1c0087aa:	f2e78c23          	sb	a4,-200(a5)
1c0087ae:	0994                	addi	a3,sp,208
1c0087b0:	47fd                	li	a5,31
1c0087b2:	99b6                	add	s3,s3,a3
1c0087b4:	f2f98c23          	sb	a5,-200(s3)
1c0087b8:	0af14703          	lbu	a4,175(sp)
1c0087bc:	003c                	addi	a5,sp,8
1c0087be:	f8076713          	ori	a4,a4,-128
1c0087c2:	0ae107a3          	sb	a4,175(sp)
1c0087c6:	40fa0a33          	sub	s4,s4,a5
1c0087ca:	0017c703          	lbu	a4,1(a5)
1c0087ce:	0027c303          	lbu	t1,2(a5)
1c0087d2:	0057c503          	lbu	a0,5(a5)
1c0087d6:	0047ce03          	lbu	t3,4(a5)
1c0087da:	0067c583          	lbu	a1,6(a5)
1c0087de:	0007ce83          	lbu	t4,0(a5)
1c0087e2:	0037c603          	lbu	a2,3(a5)
1c0087e6:	0077c683          	lbu	a3,7(a5)
1c0087ea:	0342                	slli	t1,t1,0x10
1c0087ec:	0722                	slli	a4,a4,0x8
1c0087ee:	0522                	slli	a0,a0,0x8
1c0087f0:	00fa08b3          	add	a7,s4,a5
1c0087f4:	00676733          	or	a4,a4,t1
1c0087f8:	01c56533          	or	a0,a0,t3
1c0087fc:	05c2                	slli	a1,a1,0x10
1c0087fe:	0008ae03          	lw	t3,0(a7)
1c008802:	0048a303          	lw	t1,4(a7)
1c008806:	01d76733          	or	a4,a4,t4
1c00880a:	0662                	slli	a2,a2,0x18
1c00880c:	8dc9                	or	a1,a1,a0
1c00880e:	06e2                	slli	a3,a3,0x18
1c008810:	8f51                	or	a4,a4,a2
1c008812:	8ecd                	or	a3,a3,a1
1c008814:	00ee4733          	xor	a4,t3,a4
1c008818:	00d346b3          	xor	a3,t1,a3
1c00881c:	00e8a023          	sw	a4,0(a7)
1c008820:	00d8a223          	sw	a3,4(a7)
1c008824:	07a1                	addi	a5,a5,8
1c008826:	faf812e3          	bne	a6,a5,1c0087ca <shake128_absorb+0x156>
1c00882a:	50be                	lw	ra,236(sp)
1c00882c:	542e                	lw	s0,232(sp)
1c00882e:	549e                	lw	s1,228(sp)
1c008830:	590e                	lw	s2,224(sp)
1c008832:	49fe                	lw	s3,220(sp)
1c008834:	4a6e                	lw	s4,216(sp)
1c008836:	616d                	addi	sp,sp,240
1c008838:	8082                	ret
1c00883a:	4781                	li	a5,0
1c00883c:	bf1d                	j	1c008772 <shake128_absorb+0xfe>
1c00883e:	06f00513          	li	a0,111
1c008842:	561010ef          	jal	ra,1c00a5a2 <exit>

1c008846 <shake128_squeezeblocks>:
1c008846:	1101                	addi	sp,sp,-32
1c008848:	c452                	sw	s4,8(sp)
1c00884a:	ce06                	sw	ra,28(sp)
1c00884c:	cc22                	sw	s0,24(sp)
1c00884e:	ca26                	sw	s1,20(sp)
1c008850:	c84a                	sw	s2,16(sp)
1c008852:	c64e                	sw	s3,12(sp)
1c008854:	c256                	sw	s5,4(sp)
1c008856:	00062a03          	lw	s4,0(a2)
1c00885a:	cdc9                	beqz	a1,1c0088f4 <shake128_squeezeblocks+0xae>
1c00885c:	7941                	lui	s2,0xffff0
1c00885e:	ff0104b7          	lui	s1,0xff010
1c008862:	01000437          	lui	s0,0x1000
1c008866:	89ae                	mv	s3,a1
1c008868:	8aaa                	mv	s5,a0
1c00886a:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c00886e:	14fd                	addi	s1,s1,-1
1c008870:	147d                	addi	s0,s0,-1
1c008872:	85d2                	mv	a1,s4
1c008874:	8552                	mv	a0,s4
1c008876:	34fd                	jal	1c008364 <KeccakF1600_StatePermute>
1c008878:	85d6                	mv	a1,s5
1c00887a:	8852                	mv	a6,s4
1c00887c:	0a8a8513          	addi	a0,s5,168
1c008880:	00082603          	lw	a2,0(a6)
1c008884:	00482683          	lw	a3,4(a6)
1c008888:	00865313          	srli	t1,a2,0x8
1c00888c:	0086d893          	srli	a7,a3,0x8
1c008890:	0ff67713          	andi	a4,a2,255
1c008894:	0ff6f793          	andi	a5,a3,255
1c008898:	0ff37313          	andi	t1,t1,255
1c00889c:	0ff8f893          	andi	a7,a7,255
1c0088a0:	0322                	slli	t1,t1,0x8
1c0088a2:	08a2                	slli	a7,a7,0x8
1c0088a4:	01277733          	and	a4,a4,s2
1c0088a8:	0127f7b3          	and	a5,a5,s2
1c0088ac:	00676733          	or	a4,a4,t1
1c0088b0:	0117e7b3          	or	a5,a5,a7
1c0088b4:	00ff0337          	lui	t1,0xff0
1c0088b8:	00ff08b7          	lui	a7,0xff0
1c0088bc:	00667333          	and	t1,a2,t1
1c0088c0:	0116f8b3          	and	a7,a3,a7
1c0088c4:	8f65                	and	a4,a4,s1
1c0088c6:	8fe5                	and	a5,a5,s1
1c0088c8:	00676733          	or	a4,a4,t1
1c0088cc:	8261                	srli	a2,a2,0x18
1c0088ce:	0117e7b3          	or	a5,a5,a7
1c0088d2:	82e1                	srli	a3,a3,0x18
1c0088d4:	0662                	slli	a2,a2,0x18
1c0088d6:	8f61                	and	a4,a4,s0
1c0088d8:	06e2                	slli	a3,a3,0x18
1c0088da:	8fe1                	and	a5,a5,s0
1c0088dc:	8f51                	or	a4,a4,a2
1c0088de:	8fd5                	or	a5,a5,a3
1c0088e0:	c198                	sw	a4,0(a1)
1c0088e2:	c1dc                	sw	a5,4(a1)
1c0088e4:	05a1                	addi	a1,a1,8
1c0088e6:	0821                	addi	a6,a6,8
1c0088e8:	f8b51ce3          	bne	a0,a1,1c008880 <shake128_squeezeblocks+0x3a>
1c0088ec:	19fd                	addi	s3,s3,-1
1c0088ee:	8aaa                	mv	s5,a0
1c0088f0:	f80991e3          	bnez	s3,1c008872 <shake128_squeezeblocks+0x2c>
1c0088f4:	40f2                	lw	ra,28(sp)
1c0088f6:	4462                	lw	s0,24(sp)
1c0088f8:	44d2                	lw	s1,20(sp)
1c0088fa:	4942                	lw	s2,16(sp)
1c0088fc:	49b2                	lw	s3,12(sp)
1c0088fe:	4a22                	lw	s4,8(sp)
1c008900:	4a92                	lw	s5,4(sp)
1c008902:	6105                	addi	sp,sp,32
1c008904:	8082                	ret

1c008906 <shake128_ctx_release>:
1c008906:	4108                	lw	a0,0(a0)
1c008908:	0c800593          	li	a1,200
1c00890c:	5f10206f          	j	1c00b6fc <pi_l2_free>

1c008910 <shake256>:
1c008910:	7131                	addi	sp,sp,-192
1c008912:	db26                	sw	s1,180(sp)
1c008914:	d94a                	sw	s2,176(sp)
1c008916:	08800493          	li	s1,136
1c00891a:	892a                	mv	s2,a0
1c00891c:	0c800513          	li	a0,200
1c008920:	dd22                	sw	s0,184(sp)
1c008922:	d74e                	sw	s3,172(sp)
1c008924:	d552                	sw	s4,168(sp)
1c008926:	df06                	sw	ra,188(sp)
1c008928:	d356                	sw	s5,164(sp)
1c00892a:	d15a                	sw	s6,160(sp)
1c00892c:	cf5e                	sw	s7,156(sp)
1c00892e:	cd62                	sw	s8,152(sp)
1c008930:	cb66                	sw	s9,148(sp)
1c008932:	89ae                	mv	s3,a1
1c008934:	8432                	mv	s0,a2
1c008936:	8a36                	mv	s4,a3
1c008938:	0295d4b3          	divu	s1,a1,s1
1c00893c:	5b5020ef          	jal	ra,1c00b6f0 <pi_l2_malloc>
1c008940:	20050163          	beqz	a0,1c008b42 <shake256+0x232>
1c008944:	46fd                	li	a3,31
1c008946:	8652                	mv	a2,s4
1c008948:	85a2                	mv	a1,s0
1c00894a:	8b2a                	mv	s6,a0
1c00894c:	3641                	jal	1c0084cc <keccak_absorb.constprop.7>
1c00894e:	c4dd                	beqz	s1,1c0089fc <shake256+0xec>
1c008950:	00449713          	slli	a4,s1,0x4
1c008954:	00970433          	add	s0,a4,s1
1c008958:	040e                	slli	s0,s0,0x3
1c00895a:	7bc1                	lui	s7,0xffff0
1c00895c:	ff010ab7          	lui	s5,0xff010
1c008960:	01000a37          	lui	s4,0x1000
1c008964:	412b0c33          	sub	s8,s6,s2
1c008968:	944a                	add	s0,s0,s2
1c00896a:	8cca                	mv	s9,s2
1c00896c:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c008970:	1afd                	addi	s5,s5,-1
1c008972:	1a7d                	addi	s4,s4,-1
1c008974:	85da                	mv	a1,s6
1c008976:	855a                	mv	a0,s6
1c008978:	32f5                	jal	1c008364 <KeccakF1600_StatePermute>
1c00897a:	8666                	mv	a2,s9
1c00897c:	088c8593          	addi	a1,s9,136
1c008980:	00cc07b3          	add	a5,s8,a2
1c008984:	4388                	lw	a0,0(a5)
1c008986:	43d4                	lw	a3,4(a5)
1c008988:	00855893          	srli	a7,a0,0x8
1c00898c:	0086d813          	srli	a6,a3,0x8
1c008990:	0ff57713          	andi	a4,a0,255
1c008994:	0ff6f793          	andi	a5,a3,255
1c008998:	0ff8f893          	andi	a7,a7,255
1c00899c:	0ff87813          	andi	a6,a6,255
1c0089a0:	08a2                	slli	a7,a7,0x8
1c0089a2:	0822                	slli	a6,a6,0x8
1c0089a4:	01777733          	and	a4,a4,s7
1c0089a8:	0177f7b3          	and	a5,a5,s7
1c0089ac:	01176733          	or	a4,a4,a7
1c0089b0:	0107e7b3          	or	a5,a5,a6
1c0089b4:	00ff08b7          	lui	a7,0xff0
1c0089b8:	00ff0837          	lui	a6,0xff0
1c0089bc:	011578b3          	and	a7,a0,a7
1c0089c0:	0106f833          	and	a6,a3,a6
1c0089c4:	01577733          	and	a4,a4,s5
1c0089c8:	0157f7b3          	and	a5,a5,s5
1c0089cc:	01176733          	or	a4,a4,a7
1c0089d0:	8161                	srli	a0,a0,0x18
1c0089d2:	0107e7b3          	or	a5,a5,a6
1c0089d6:	82e1                	srli	a3,a3,0x18
1c0089d8:	0562                	slli	a0,a0,0x18
1c0089da:	01477733          	and	a4,a4,s4
1c0089de:	06e2                	slli	a3,a3,0x18
1c0089e0:	0147f7b3          	and	a5,a5,s4
1c0089e4:	8f49                	or	a4,a4,a0
1c0089e6:	8fd5                	or	a5,a5,a3
1c0089e8:	c218                	sw	a4,0(a2)
1c0089ea:	c25c                	sw	a5,4(a2)
1c0089ec:	0621                	addi	a2,a2,8
1c0089ee:	f8c599e3          	bne	a1,a2,1c008980 <shake256+0x70>
1c0089f2:	8cae                	mv	s9,a1
1c0089f4:	f78c0c13          	addi	s8,s8,-136
1c0089f8:	f6b41ee3          	bne	s0,a1,1c008974 <shake256+0x64>
1c0089fc:	08800793          	li	a5,136
1c008a00:	02f9f9b3          	remu	s3,s3,a5
1c008a04:	02099363          	bnez	s3,1c008a2a <shake256+0x11a>
1c008a08:	546a                	lw	s0,184(sp)
1c008a0a:	50fa                	lw	ra,188(sp)
1c008a0c:	54da                	lw	s1,180(sp)
1c008a0e:	594a                	lw	s2,176(sp)
1c008a10:	59ba                	lw	s3,172(sp)
1c008a12:	5a2a                	lw	s4,168(sp)
1c008a14:	5a9a                	lw	s5,164(sp)
1c008a16:	4bfa                	lw	s7,156(sp)
1c008a18:	4c6a                	lw	s8,152(sp)
1c008a1a:	4cda                	lw	s9,148(sp)
1c008a1c:	855a                	mv	a0,s6
1c008a1e:	5b0a                	lw	s6,160(sp)
1c008a20:	0c800593          	li	a1,200
1c008a24:	6129                	addi	sp,sp,192
1c008a26:	4d70206f          	j	1c00b6fc <pi_l2_free>
1c008a2a:	85da                	mv	a1,s6
1c008a2c:	855a                	mv	a0,s6
1c008a2e:	3a1d                	jal	1c008364 <KeccakF1600_StatePermute>
1c008a30:	002c                	addi	a1,sp,8
1c008a32:	78c1                	lui	a7,0xffff0
1c008a34:	ff010837          	lui	a6,0xff010
1c008a38:	01000537          	lui	a0,0x1000
1c008a3c:	09010e13          	addi	t3,sp,144
1c008a40:	862e                	mv	a2,a1
1c008a42:	40bb0333          	sub	t1,s6,a1
1c008a46:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c008a4a:	187d                	addi	a6,a6,-1
1c008a4c:	157d                	addi	a0,a0,-1
1c008a4e:	00c307b3          	add	a5,t1,a2
1c008a52:	0007ae83          	lw	t4,0(a5)
1c008a56:	43d4                	lw	a3,4(a5)
1c008a58:	008edf93          	srli	t6,t4,0x8
1c008a5c:	0086df13          	srli	t5,a3,0x8
1c008a60:	0ffef713          	andi	a4,t4,255
1c008a64:	0ff6f793          	andi	a5,a3,255
1c008a68:	0fffff93          	andi	t6,t6,255
1c008a6c:	0fff7f13          	andi	t5,t5,255
1c008a70:	0fa2                	slli	t6,t6,0x8
1c008a72:	0f22                	slli	t5,t5,0x8
1c008a74:	01177733          	and	a4,a4,a7
1c008a78:	0117f7b3          	and	a5,a5,a7
1c008a7c:	01f76733          	or	a4,a4,t6
1c008a80:	01e7e7b3          	or	a5,a5,t5
1c008a84:	00ff0fb7          	lui	t6,0xff0
1c008a88:	00ff0f37          	lui	t5,0xff0
1c008a8c:	01feffb3          	and	t6,t4,t6
1c008a90:	01e6ff33          	and	t5,a3,t5
1c008a94:	01077733          	and	a4,a4,a6
1c008a98:	0107f7b3          	and	a5,a5,a6
1c008a9c:	01f76733          	or	a4,a4,t6
1c008aa0:	018ede93          	srli	t4,t4,0x18
1c008aa4:	01e7e7b3          	or	a5,a5,t5
1c008aa8:	82e1                	srli	a3,a3,0x18
1c008aaa:	0ee2                	slli	t4,t4,0x18
1c008aac:	8f69                	and	a4,a4,a0
1c008aae:	06e2                	slli	a3,a3,0x18
1c008ab0:	8fe9                	and	a5,a5,a0
1c008ab2:	01d76733          	or	a4,a4,t4
1c008ab6:	8fd5                	or	a5,a5,a3
1c008ab8:	c218                	sw	a4,0(a2)
1c008aba:	c25c                	sw	a5,4(a2)
1c008abc:	0621                	addi	a2,a2,8
1c008abe:	f8ce18e3          	bne	t3,a2,1c008a4e <shake256+0x13e>
1c008ac2:	fff98793          	addi	a5,s3,-1
1c008ac6:	4709                	li	a4,2
1c008ac8:	06f77963          	bleu	a5,a4,1c008b3a <shake256+0x22a>
1c008acc:	00449713          	slli	a4,s1,0x4
1c008ad0:	009707b3          	add	a5,a4,s1
1c008ad4:	078e                	slli	a5,a5,0x3
1c008ad6:	0029d513          	srli	a0,s3,0x2
1c008ada:	97ca                	add	a5,a5,s2
1c008adc:	4681                	li	a3,0
1c008ade:	4190                	lw	a2,0(a1)
1c008ae0:	0685                	addi	a3,a3,1
1c008ae2:	c390                	sw	a2,0(a5)
1c008ae4:	0591                	addi	a1,a1,4
1c008ae6:	0791                	addi	a5,a5,4
1c008ae8:	fea6ebe3          	bltu	a3,a0,1c008ade <shake256+0x1ce>
1c008aec:	ffc9f693          	andi	a3,s3,-4
1c008af0:	f0d98ce3          	beq	s3,a3,1c008a08 <shake256+0xf8>
1c008af4:	009707b3          	add	a5,a4,s1
1c008af8:	090c                	addi	a1,sp,144
1c008afa:	00d58733          	add	a4,a1,a3
1c008afe:	078e                	slli	a5,a5,0x3
1c008b00:	f7874603          	lbu	a2,-136(a4)
1c008b04:	97ca                	add	a5,a5,s2
1c008b06:	00d78733          	add	a4,a5,a3
1c008b0a:	00c70023          	sb	a2,0(a4)
1c008b0e:	00168713          	addi	a4,a3,1
1c008b12:	ef377be3          	bleu	s3,a4,1c008a08 <shake256+0xf8>
1c008b16:	00e58633          	add	a2,a1,a4
1c008b1a:	f7864603          	lbu	a2,-136(a2)
1c008b1e:	973e                	add	a4,a4,a5
1c008b20:	00c70023          	sb	a2,0(a4)
1c008b24:	0689                	addi	a3,a3,2
1c008b26:	ef36f1e3          	bleu	s3,a3,1c008a08 <shake256+0xf8>
1c008b2a:	00d58733          	add	a4,a1,a3
1c008b2e:	f7874703          	lbu	a4,-136(a4)
1c008b32:	97b6                	add	a5,a5,a3
1c008b34:	00e78023          	sb	a4,0(a5)
1c008b38:	bdc1                	j	1c008a08 <shake256+0xf8>
1c008b3a:	4681                	li	a3,0
1c008b3c:	00449713          	slli	a4,s1,0x4
1c008b40:	bf55                	j	1c008af4 <shake256+0x1e4>
1c008b42:	06f00513          	li	a0,111
1c008b46:	25d010ef          	jal	ra,1c00a5a2 <exit>

1c008b4a <sha3_256>:
1c008b4a:	7111                	addi	sp,sp,-256
1c008b4c:	dda2                	sw	s0,248(sp)
1c008b4e:	4699                	li	a3,6
1c008b50:	842a                	mv	s0,a0
1c008b52:	0028                	addi	a0,sp,8
1c008b54:	df86                	sw	ra,252(sp)
1c008b56:	dba6                	sw	s1,244(sp)
1c008b58:	d9ca                	sw	s2,240(sp)
1c008b5a:	d7ce                	sw	s3,236(sp)
1c008b5c:	d5d2                	sw	s4,232(sp)
1c008b5e:	d3d6                	sw	s5,228(sp)
1c008b60:	d1da                	sw	s6,224(sp)
1c008b62:	cfde                	sw	s7,220(sp)
1c008b64:	cde2                	sw	s8,216(sp)
1c008b66:	cbe6                	sw	s9,212(sp)
1c008b68:	c9ea                	sw	s10,208(sp)
1c008b6a:	328d                	jal	1c0084cc <keccak_absorb.constprop.7>
1c008b6c:	002c                	addi	a1,sp,8
1c008b6e:	852e                	mv	a0,a1
1c008b70:	ff4ff0ef          	jal	ra,1c008364 <KeccakF1600_StatePermute>
1c008b74:	4f32                	lw	t5,12(sp)
1c008b76:	4922                	lw	s2,8(sp)
1c008b78:	4ec2                	lw	t4,16(sp)
1c008b7a:	4e52                	lw	t3,20(sp)
1c008b7c:	4362                	lw	t1,24(sp)
1c008b7e:	44f2                	lw	s1,28(sp)
1c008b80:	5382                	lw	t2,32(sp)
1c008b82:	5292                	lw	t0,36(sp)
1c008b84:	00895813          	srli	a6,s2,0x8
1c008b88:	008f5513          	srli	a0,t5,0x8
1c008b8c:	008ed593          	srli	a1,t4,0x8
1c008b90:	008e5613          	srli	a2,t3,0x8
1c008b94:	00835693          	srli	a3,t1,0x8
1c008b98:	0084d713          	srli	a4,s1,0x8
1c008b9c:	0083d993          	srli	s3,t2,0x8
1c008ba0:	0082df93          	srli	t6,t0,0x8
1c008ba4:	0ff87813          	andi	a6,a6,255
1c008ba8:	0ff57513          	andi	a0,a0,255
1c008bac:	0ff5f593          	andi	a1,a1,255
1c008bb0:	0ff67613          	andi	a2,a2,255
1c008bb4:	0ff6f693          	andi	a3,a3,255
1c008bb8:	0ff77713          	andi	a4,a4,255
1c008bbc:	0ff9f993          	andi	s3,s3,255
1c008bc0:	0fffff93          	andi	t6,t6,255
1c008bc4:	0fff7d13          	andi	s10,t5,255
1c008bc8:	0ffefc93          	andi	s9,t4,255
1c008bcc:	0ffe7c13          	andi	s8,t3,255
1c008bd0:	0ff37b93          	andi	s7,t1,255
1c008bd4:	0ff4fb13          	andi	s6,s1,255
1c008bd8:	0ff3fa93          	andi	s5,t2,255
1c008bdc:	0ff2fa13          	andi	s4,t0,255
1c008be0:	0822                	slli	a6,a6,0x8
1c008be2:	0ff97893          	andi	a7,s2,255
1c008be6:	0522                	slli	a0,a0,0x8
1c008be8:	05a2                	slli	a1,a1,0x8
1c008bea:	0622                	slli	a2,a2,0x8
1c008bec:	06a2                	slli	a3,a3,0x8
1c008bee:	0722                	slli	a4,a4,0x8
1c008bf0:	09a2                	slli	s3,s3,0x8
1c008bf2:	0fa2                	slli	t6,t6,0x8
1c008bf4:	ff0107b7          	lui	a5,0xff010
1c008bf8:	17fd                	addi	a5,a5,-1
1c008bfa:	01fa6fb3          	or	t6,s4,t6
1c008bfe:	0108e8b3          	or	a7,a7,a6
1c008c02:	00ff0a37          	lui	s4,0xff0
1c008c06:	00ad6833          	or	a6,s10,a0
1c008c0a:	00bce533          	or	a0,s9,a1
1c008c0e:	00ff0d37          	lui	s10,0xff0
1c008c12:	00cc65b3          	or	a1,s8,a2
1c008c16:	00ff0cb7          	lui	s9,0xff0
1c008c1a:	00dbe633          	or	a2,s7,a3
1c008c1e:	00ff0c37          	lui	s8,0xff0
1c008c22:	00eb66b3          	or	a3,s6,a4
1c008c26:	00ff0bb7          	lui	s7,0xff0
1c008c2a:	013ae733          	or	a4,s5,s3
1c008c2e:	00ff0b37          	lui	s6,0xff0
1c008c32:	00ff0ab7          	lui	s5,0xff0
1c008c36:	00ff09b7          	lui	s3,0xff0
1c008c3a:	01a97d33          	and	s10,s2,s10
1c008c3e:	019f7cb3          	and	s9,t5,s9
1c008c42:	018efc33          	and	s8,t4,s8
1c008c46:	017e7bb3          	and	s7,t3,s7
1c008c4a:	01637b33          	and	s6,t1,s6
1c008c4e:	0154fab3          	and	s5,s1,s5
1c008c52:	0143fa33          	and	s4,t2,s4
1c008c56:	0132f9b3          	and	s3,t0,s3
1c008c5a:	00f8f8b3          	and	a7,a7,a5
1c008c5e:	00f87833          	and	a6,a6,a5
1c008c62:	8d7d                	and	a0,a0,a5
1c008c64:	8dfd                	and	a1,a1,a5
1c008c66:	8e7d                	and	a2,a2,a5
1c008c68:	8efd                	and	a3,a3,a5
1c008c6a:	8f7d                	and	a4,a4,a5
1c008c6c:	00fff7b3          	and	a5,t6,a5
1c008c70:	01000fb7          	lui	t6,0x1000
1c008c74:	1ffd                	addi	t6,t6,-1
1c008c76:	01a8e8b3          	or	a7,a7,s10
1c008c7a:	01986833          	or	a6,a6,s9
1c008c7e:	01856533          	or	a0,a0,s8
1c008c82:	0175e5b3          	or	a1,a1,s7
1c008c86:	01666633          	or	a2,a2,s6
1c008c8a:	0156e6b3          	or	a3,a3,s5
1c008c8e:	01476733          	or	a4,a4,s4
1c008c92:	0137e7b3          	or	a5,a5,s3
1c008c96:	01895913          	srli	s2,s2,0x18
1c008c9a:	018f5f13          	srli	t5,t5,0x18
1c008c9e:	018ede93          	srli	t4,t4,0x18
1c008ca2:	018e5e13          	srli	t3,t3,0x18
1c008ca6:	01835313          	srli	t1,t1,0x18
1c008caa:	80e1                	srli	s1,s1,0x18
1c008cac:	0183d393          	srli	t2,t2,0x18
1c008cb0:	0182d293          	srli	t0,t0,0x18
1c008cb4:	0962                	slli	s2,s2,0x18
1c008cb6:	04e2                	slli	s1,s1,0x18
1c008cb8:	01f8f8b3          	and	a7,a7,t6
1c008cbc:	0f62                	slli	t5,t5,0x18
1c008cbe:	01f87833          	and	a6,a6,t6
1c008cc2:	0ee2                	slli	t4,t4,0x18
1c008cc4:	01f57533          	and	a0,a0,t6
1c008cc8:	0e62                	slli	t3,t3,0x18
1c008cca:	01f5f5b3          	and	a1,a1,t6
1c008cce:	0362                	slli	t1,t1,0x18
1c008cd0:	01f67633          	and	a2,a2,t6
1c008cd4:	01f6f6b3          	and	a3,a3,t6
1c008cd8:	03e2                	slli	t2,t2,0x18
1c008cda:	01f77733          	and	a4,a4,t6
1c008cde:	02e2                	slli	t0,t0,0x18
1c008ce0:	01f7f7b3          	and	a5,a5,t6
1c008ce4:	0128e8b3          	or	a7,a7,s2
1c008ce8:	8ec5                	or	a3,a3,s1
1c008cea:	01e86833          	or	a6,a6,t5
1c008cee:	01d56533          	or	a0,a0,t4
1c008cf2:	01c5e5b3          	or	a1,a1,t3
1c008cf6:	00666633          	or	a2,a2,t1
1c008cfa:	00776733          	or	a4,a4,t2
1c008cfe:	0057e7b3          	or	a5,a5,t0
1c008d02:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c008d06:	01042223          	sw	a6,4(s0)
1c008d0a:	c408                	sw	a0,8(s0)
1c008d0c:	c44c                	sw	a1,12(s0)
1c008d0e:	c810                	sw	a2,16(s0)
1c008d10:	c854                	sw	a3,20(s0)
1c008d12:	cc18                	sw	a4,24(s0)
1c008d14:	cc5c                	sw	a5,28(s0)
1c008d16:	50fe                	lw	ra,252(sp)
1c008d18:	546e                	lw	s0,248(sp)
1c008d1a:	54de                	lw	s1,244(sp)
1c008d1c:	594e                	lw	s2,240(sp)
1c008d1e:	59be                	lw	s3,236(sp)
1c008d20:	5a2e                	lw	s4,232(sp)
1c008d22:	5a9e                	lw	s5,228(sp)
1c008d24:	5b0e                	lw	s6,224(sp)
1c008d26:	4bfe                	lw	s7,220(sp)
1c008d28:	4c6e                	lw	s8,216(sp)
1c008d2a:	4cde                	lw	s9,212(sp)
1c008d2c:	4d4e                	lw	s10,208(sp)
1c008d2e:	6111                	addi	sp,sp,256
1c008d30:	8082                	ret

1c008d32 <sha3_512>:
1c008d32:	db010113          	addi	sp,sp,-592
1c008d36:	24812423          	sw	s0,584(sp)
1c008d3a:	23312e23          	sw	s3,572(sp)
1c008d3e:	23412c23          	sw	s4,568(sp)
1c008d42:	24112623          	sw	ra,588(sp)
1c008d46:	24912223          	sw	s1,580(sp)
1c008d4a:	25212023          	sw	s2,576(sp)
1c008d4e:	23512a23          	sw	s5,564(sp)
1c008d52:	23612823          	sw	s6,560(sp)
1c008d56:	23712623          	sw	s7,556(sp)
1c008d5a:	23812423          	sw	s8,552(sp)
1c008d5e:	23912223          	sw	s9,548(sp)
1c008d62:	23a12023          	sw	s10,544(sp)
1c008d66:	21b12e23          	sw	s11,540(sp)
1c008d6a:	842a                	mv	s0,a0
1c008d6c:	8a32                	mv	s4,a2
1c008d6e:	14810993          	addi	s3,sp,328
1c008d72:	011c                	addi	a5,sp,128
1c008d74:	4601                	li	a2,0
1c008d76:	4681                	li	a3,0
1c008d78:	c390                	sw	a2,0(a5)
1c008d7a:	c3d4                	sw	a3,4(a5)
1c008d7c:	07a1                	addi	a5,a5,8
1c008d7e:	fef99be3          	bne	s3,a5,1c008d74 <sha3_512+0x42>
1c008d82:	04700793          	li	a5,71
1c008d86:	0747fe63          	bleu	s4,a5,1c008e02 <sha3_512+0xd0>
1c008d8a:	04700493          	li	s1,71
1c008d8e:	87ae                	mv	a5,a1
1c008d90:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c008d94:	0114                	addi	a3,sp,128
1c008d96:	0017c703          	lbu	a4,1(a5)
1c008d9a:	0027c583          	lbu	a1,2(a5)
1c008d9e:	0057c883          	lbu	a7,5(a5)
1c008da2:	0047c303          	lbu	t1,4(a5)
1c008da6:	0067c803          	lbu	a6,6(a5)
1c008daa:	0007ce03          	lbu	t3,0(a5)
1c008dae:	0037c503          	lbu	a0,3(a5)
1c008db2:	0077c603          	lbu	a2,7(a5)
1c008db6:	05c2                	slli	a1,a1,0x10
1c008db8:	0722                	slli	a4,a4,0x8
1c008dba:	08a2                	slli	a7,a7,0x8
1c008dbc:	8f4d                	or	a4,a4,a1
1c008dbe:	0068e8b3          	or	a7,a7,t1
1c008dc2:	0842                	slli	a6,a6,0x10
1c008dc4:	428c                	lw	a1,0(a3)
1c008dc6:	0046a303          	lw	t1,4(a3)
1c008dca:	01c76733          	or	a4,a4,t3
1c008dce:	0562                	slli	a0,a0,0x18
1c008dd0:	01186833          	or	a6,a6,a7
1c008dd4:	0662                	slli	a2,a2,0x18
1c008dd6:	8f49                	or	a4,a4,a0
1c008dd8:	01066633          	or	a2,a2,a6
1c008ddc:	8f2d                	xor	a4,a4,a1
1c008dde:	00c34633          	xor	a2,t1,a2
1c008de2:	c298                	sw	a4,0(a3)
1c008de4:	c2d0                	sw	a2,4(a3)
1c008de6:	07a1                	addi	a5,a5,8
1c008de8:	06a1                	addi	a3,a3,8
1c008dea:	faf916e3          	bne	s2,a5,1c008d96 <sha3_512+0x64>
1c008dee:	010c                	addi	a1,sp,128
1c008df0:	852e                	mv	a0,a1
1c008df2:	d72ff0ef          	jal	ra,1c008364 <KeccakF1600_StatePermute>
1c008df6:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c008dfa:	87ca                	mv	a5,s2
1c008dfc:	f944eae3          	bltu	s1,s4,1c008d90 <sha3_512+0x5e>
1c008e00:	85ca                	mv	a1,s2
1c008e02:	0b18                	addi	a4,sp,400
1c008e04:	87ce                	mv	a5,s3
1c008e06:	4681                	li	a3,0
1c008e08:	c394                	sw	a3,0(a5)
1c008e0a:	0791                	addi	a5,a5,4
1c008e0c:	fef71de3          	bne	a4,a5,1c008e06 <sha3_512+0xd4>
1c008e10:	060a0563          	beqz	s4,1c008e7a <sha3_512+0x148>
1c008e14:	fffa0793          	addi	a5,s4,-1
1c008e18:	4709                	li	a4,2
1c008e1a:	06f772e3          	bleu	a5,a4,1c00967e <sha3_512+0x94c>
1c008e1e:	002a5613          	srli	a2,s4,0x2
1c008e22:	872e                	mv	a4,a1
1c008e24:	4781                	li	a5,0
1c008e26:	4314                	lw	a3,0(a4)
1c008e28:	0785                	addi	a5,a5,1
1c008e2a:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c008e2e:	0711                	addi	a4,a4,4
1c008e30:	0991                	addi	s3,s3,4
1c008e32:	fec7eae3          	bltu	a5,a2,1c008e26 <sha3_512+0xf4>
1c008e36:	ffca7793          	andi	a5,s4,-4
1c008e3a:	04fa0063          	beq	s4,a5,1c008e7a <sha3_512+0x148>
1c008e3e:	00f58733          	add	a4,a1,a5
1c008e42:	00074683          	lbu	a3,0(a4)
1c008e46:	21010813          	addi	a6,sp,528
1c008e4a:	00f80733          	add	a4,a6,a5
1c008e4e:	f2d70c23          	sb	a3,-200(a4)
1c008e52:	00178713          	addi	a4,a5,1
1c008e56:	03477263          	bleu	s4,a4,1c008e7a <sha3_512+0x148>
1c008e5a:	00e586b3          	add	a3,a1,a4
1c008e5e:	0006c683          	lbu	a3,0(a3)
1c008e62:	9742                	add	a4,a4,a6
1c008e64:	f2d70c23          	sb	a3,-200(a4)
1c008e68:	0789                	addi	a5,a5,2
1c008e6a:	0147f863          	bleu	s4,a5,1c008e7a <sha3_512+0x148>
1c008e6e:	95be                	add	a1,a1,a5
1c008e70:	0005c703          	lbu	a4,0(a1)
1c008e74:	97c2                	add	a5,a5,a6
1c008e76:	f2e78c23          	sb	a4,-200(a5)
1c008e7a:	21010893          	addi	a7,sp,528
1c008e7e:	9a46                	add	s4,s4,a7
1c008e80:	4799                	li	a5,6
1c008e82:	f2fa0c23          	sb	a5,-200(s4)
1c008e86:	14a14703          	lbu	a4,330(sp)
1c008e8a:	14914f03          	lbu	t5,329(sp)
1c008e8e:	15214783          	lbu	a5,338(sp)
1c008e92:	15114e83          	lbu	t4,337(sp)
1c008e96:	15514303          	lbu	t1,341(sp)
1c008e9a:	15414383          	lbu	t2,340(sp)
1c008e9e:	15614803          	lbu	a6,342(sp)
1c008ea2:	14814283          	lbu	t0,328(sp)
1c008ea6:	14b14503          	lbu	a0,331(sp)
1c008eaa:	15014f83          	lbu	t6,336(sp)
1c008eae:	15314603          	lbu	a2,339(sp)
1c008eb2:	15714683          	lbu	a3,343(sp)
1c008eb6:	0f22                	slli	t5,t5,0x8
1c008eb8:	0ea2                	slli	t4,t4,0x8
1c008eba:	0742                	slli	a4,a4,0x10
1c008ebc:	07c2                	slli	a5,a5,0x10
1c008ebe:	0322                	slli	t1,t1,0x8
1c008ec0:	14d14e03          	lbu	t3,333(sp)
1c008ec4:	00736333          	or	t1,t1,t2
1c008ec8:	01e76733          	or	a4,a4,t5
1c008ecc:	01d7e7b3          	or	a5,a5,t4
1c008ed0:	0842                	slli	a6,a6,0x10
1c008ed2:	14c14483          	lbu	s1,332(sp)
1c008ed6:	14e14883          	lbu	a7,334(sp)
1c008eda:	00576733          	or	a4,a4,t0
1c008ede:	01f7e7b3          	or	a5,a5,t6
1c008ee2:	00686833          	or	a6,a6,t1
1c008ee6:	0662                	slli	a2,a2,0x18
1c008ee8:	06e2                	slli	a3,a3,0x18
1c008eea:	0562                	slli	a0,a0,0x18
1c008eec:	14f14583          	lbu	a1,335(sp)
1c008ef0:	8d59                	or	a0,a0,a4
1c008ef2:	0e22                	slli	t3,t3,0x8
1c008ef4:	00f66733          	or	a4,a2,a5
1c008ef8:	0106e7b3          	or	a5,a3,a6
1c008efc:	468a                	lw	a3,128(sp)
1c008efe:	009e6e33          	or	t3,t3,s1
1c008f02:	08c2                	slli	a7,a7,0x10
1c008f04:	01c8e8b3          	or	a7,a7,t3
1c008f08:	8d35                	xor	a0,a0,a3
1c008f0a:	05e2                	slli	a1,a1,0x18
1c008f0c:	469a                	lw	a3,132(sp)
1c008f0e:	0115e5b3          	or	a1,a1,a7
1c008f12:	8db5                	xor	a1,a1,a3
1c008f14:	46aa                	lw	a3,136(sp)
1c008f16:	15a14803          	lbu	a6,346(sp)
1c008f1a:	8eb9                	xor	a3,a3,a4
1c008f1c:	473a                	lw	a4,140(sp)
1c008f1e:	15914483          	lbu	s1,345(sp)
1c008f22:	8f3d                	xor	a4,a4,a5
1c008f24:	15814a83          	lbu	s5,344(sp)
1c008f28:	15b14a03          	lbu	s4,347(sp)
1c008f2c:	15c14d03          	lbu	s10,348(sp)
1c008f30:	18f14783          	lbu	a5,399(sp)
1c008f34:	c12a                	sw	a0,128(sp)
1c008f36:	c32e                	sw	a1,132(sp)
1c008f38:	c536                	sw	a3,136(sp)
1c008f3a:	c73a                	sw	a4,140(sp)
1c008f3c:	15d14903          	lbu	s2,349(sp)
1c008f40:	15e14f83          	lbu	t6,350(sp)
1c008f44:	16114283          	lbu	t0,353(sp)
1c008f48:	16214f03          	lbu	t5,354(sp)
1c008f4c:	16d14883          	lbu	a7,365(sp)
1c008f50:	16c14b83          	lbu	s7,364(sp)
1c008f54:	04a2                	slli	s1,s1,0x8
1c008f56:	0842                	slli	a6,a6,0x10
1c008f58:	02a2                	slli	t0,t0,0x8
1c008f5a:	08a2                	slli	a7,a7,0x8
1c008f5c:	00986833          	or	a6,a6,s1
1c008f60:	0f42                	slli	t5,t5,0x10
1c008f62:	01e2ef33          	or	t5,t0,t5
1c008f66:	01586833          	or	a6,a6,s5
1c008f6a:	0178e2b3          	or	t0,a7,s7
1c008f6e:	018a1893          	slli	a7,s4,0x18
1c008f72:	15f14503          	lbu	a0,351(sp)
1c008f76:	0108e833          	or	a6,a7,a6
1c008f7a:	0922                	slli	s2,s2,0x8
1c008f7c:	48ca                	lw	a7,144(sp)
1c008f7e:	01a96933          	or	s2,s2,s10
1c008f82:	0fc2                	slli	t6,t6,0x10
1c008f84:	16014983          	lbu	s3,352(sp)
1c008f88:	16514e83          	lbu	t4,357(sp)
1c008f8c:	16314583          	lbu	a1,355(sp)
1c008f90:	012fefb3          	or	t6,t6,s2
1c008f94:	0108c8b3          	xor	a7,a7,a6
1c008f98:	0562                	slli	a0,a0,0x18
1c008f9a:	485a                	lw	a6,148(sp)
1c008f9c:	16414c83          	lbu	s9,356(sp)
1c008fa0:	16614c03          	lbu	s8,358(sp)
1c008fa4:	01f56533          	or	a0,a0,t6
1c008fa8:	16914e03          	lbu	t3,361(sp)
1c008fac:	16a14303          	lbu	t1,362(sp)
1c008fb0:	16714603          	lbu	a2,359(sp)
1c008fb4:	013f6f33          	or	t5,t5,s3
1c008fb8:	00a84833          	xor	a6,a6,a0
1c008fbc:	0ea2                	slli	t4,t4,0x8
1c008fbe:	456a                	lw	a0,152(sp)
1c008fc0:	05e2                	slli	a1,a1,0x18
1c008fc2:	019ee4b3          	or	s1,t4,s9
1c008fc6:	01e5e5b3          	or	a1,a1,t5
1c008fca:	010c1e93          	slli	t4,s8,0x10
1c008fce:	16814383          	lbu	t2,360(sp)
1c008fd2:	16b14683          	lbu	a3,363(sp)
1c008fd6:	009eeeb3          	or	t4,t4,s1
1c008fda:	8d2d                	xor	a0,a0,a1
1c008fdc:	0342                	slli	t1,t1,0x10
1c008fde:	45fa                	lw	a1,156(sp)
1c008fe0:	0e22                	slli	t3,t3,0x8
1c008fe2:	0662                	slli	a2,a2,0x18
1c008fe4:	16e14b03          	lbu	s6,366(sp)
1c008fe8:	01d66633          	or	a2,a2,t4
1c008fec:	006e6e33          	or	t3,t3,t1
1c008ff0:	16f14703          	lbu	a4,367(sp)
1c008ff4:	007e6e33          	or	t3,t3,t2
1c008ff8:	8db1                	xor	a1,a1,a2
1c008ffa:	06e2                	slli	a3,a3,0x18
1c008ffc:	560a                	lw	a2,160(sp)
1c008ffe:	01c6e6b3          	or	a3,a3,t3
1c009002:	010b1313          	slli	t1,s6,0x10
1c009006:	00536333          	or	t1,t1,t0
1c00900a:	8e35                	xor	a2,a2,a3
1c00900c:	0762                	slli	a4,a4,0x18
1c00900e:	569a                	lw	a3,164(sp)
1c009010:	00676733          	or	a4,a4,t1
1c009014:	8f35                	xor	a4,a4,a3
1c009016:	c946                	sw	a7,144(sp)
1c009018:	cb42                	sw	a6,148(sp)
1c00901a:	cd2a                	sw	a0,152(sp)
1c00901c:	cf2e                	sw	a1,156(sp)
1c00901e:	d132                	sw	a2,160(sp)
1c009020:	d33a                	sw	a4,164(sp)
1c009022:	17114e83          	lbu	t4,369(sp)
1c009026:	17214a83          	lbu	s5,370(sp)
1c00902a:	17014903          	lbu	s2,368(sp)
1c00902e:	18114803          	lbu	a6,385(sp)
1c009032:	18214483          	lbu	s1,386(sp)
1c009036:	18014283          	lbu	t0,384(sp)
1c00903a:	18314703          	lbu	a4,387(sp)
1c00903e:	04c2                	slli	s1,s1,0x10
1c009040:	0822                	slli	a6,a6,0x8
1c009042:	17514f83          	lbu	t6,373(sp)
1c009046:	17314503          	lbu	a0,371(sp)
1c00904a:	0ac2                	slli	s5,s5,0x10
1c00904c:	00986833          	or	a6,a6,s1
1c009050:	0ea2                	slli	t4,t4,0x8
1c009052:	17414b03          	lbu	s6,372(sp)
1c009056:	00586833          	or	a6,a6,t0
1c00905a:	17614e03          	lbu	t3,374(sp)
1c00905e:	015eeeb3          	or	t4,t4,s5
1c009062:	0762                	slli	a4,a4,0x18
1c009064:	17914303          	lbu	t1,377(sp)
1c009068:	17a14983          	lbu	s3,378(sp)
1c00906c:	17714583          	lbu	a1,375(sp)
1c009070:	012eeeb3          	or	t4,t4,s2
1c009074:	01076733          	or	a4,a4,a6
1c009078:	0fa2                	slli	t6,t6,0x8
1c00907a:	582a                	lw	a6,168(sp)
1c00907c:	0562                	slli	a0,a0,0x18
1c00907e:	016fefb3          	or	t6,t6,s6
1c009082:	01d56533          	or	a0,a0,t4
1c009086:	0e42                	slli	t3,t3,0x10
1c009088:	17814383          	lbu	t2,376(sp)
1c00908c:	01fe6e33          	or	t3,t3,t6
1c009090:	17d14f03          	lbu	t5,381(sp)
1c009094:	17b14603          	lbu	a2,379(sp)
1c009098:	00a84833          	xor	a6,a6,a0
1c00909c:	09c2                	slli	s3,s3,0x10
1c00909e:	553a                	lw	a0,172(sp)
1c0090a0:	0322                	slli	t1,t1,0x8
1c0090a2:	05e2                	slli	a1,a1,0x18
1c0090a4:	17c14a03          	lbu	s4,380(sp)
1c0090a8:	17e14883          	lbu	a7,382(sp)
1c0090ac:	01c5e5b3          	or	a1,a1,t3
1c0090b0:	01336333          	or	t1,t1,s3
1c0090b4:	00736333          	or	t1,t1,t2
1c0090b8:	17f14683          	lbu	a3,383(sp)
1c0090bc:	8d2d                	xor	a0,a0,a1
1c0090be:	0f22                	slli	t5,t5,0x8
1c0090c0:	55ca                	lw	a1,176(sp)
1c0090c2:	0662                	slli	a2,a2,0x18
1c0090c4:	014f6f33          	or	t5,t5,s4
1c0090c8:	00666633          	or	a2,a2,t1
1c0090cc:	08c2                	slli	a7,a7,0x10
1c0090ce:	01e8e8b3          	or	a7,a7,t5
1c0090d2:	8db1                	xor	a1,a1,a2
1c0090d4:	06e2                	slli	a3,a3,0x18
1c0090d6:	565a                	lw	a2,180(sp)
1c0090d8:	0116e6b3          	or	a3,a3,a7
1c0090dc:	8e35                	xor	a2,a2,a3
1c0090de:	56ea                	lw	a3,184(sp)
1c0090e0:	18414f03          	lbu	t5,388(sp)
1c0090e4:	8f35                	xor	a4,a4,a3
1c0090e6:	d542                	sw	a6,168(sp)
1c0090e8:	d72a                	sw	a0,172(sp)
1c0090ea:	d92e                	sw	a1,176(sp)
1c0090ec:	db32                	sw	a2,180(sp)
1c0090ee:	18514883          	lbu	a7,389(sp)
1c0090f2:	18614503          	lbu	a0,390(sp)
1c0090f6:	18714603          	lbu	a2,391(sp)
1c0090fa:	dd3a                	sw	a4,184(sp)
1c0090fc:	18914703          	lbu	a4,393(sp)
1c009100:	18a14303          	lbu	t1,394(sp)
1c009104:	18814e03          	lbu	t3,392(sp)
1c009108:	0342                	slli	t1,t1,0x10
1c00910a:	18b14683          	lbu	a3,395(sp)
1c00910e:	0722                	slli	a4,a4,0x8
1c009110:	00676733          	or	a4,a4,t1
1c009114:	08a2                	slli	a7,a7,0x8
1c009116:	01e8e8b3          	or	a7,a7,t5
1c00911a:	01c76733          	or	a4,a4,t3
1c00911e:	06e2                	slli	a3,a3,0x18
1c009120:	0542                	slli	a0,a0,0x10
1c009122:	01156533          	or	a0,a0,a7
1c009126:	18d14803          	lbu	a6,397(sp)
1c00912a:	8f55                	or	a4,a4,a3
1c00912c:	0662                	slli	a2,a2,0x18
1c00912e:	56fa                	lw	a3,188(sp)
1c009130:	18c14e83          	lbu	t4,396(sp)
1c009134:	18e14583          	lbu	a1,398(sp)
1c009138:	8e49                	or	a2,a2,a0
1c00913a:	8e35                	xor	a2,a2,a3
1c00913c:	0822                	slli	a6,a6,0x8
1c00913e:	468e                	lw	a3,192(sp)
1c009140:	01d86833          	or	a6,a6,t4
1c009144:	0807e793          	ori	a5,a5,128
1c009148:	05c2                	slli	a1,a1,0x10
1c00914a:	0105e5b3          	or	a1,a1,a6
1c00914e:	8eb9                	xor	a3,a3,a4
1c009150:	07e2                	slli	a5,a5,0x18
1c009152:	471e                	lw	a4,196(sp)
1c009154:	8fcd                	or	a5,a5,a1
1c009156:	010c                	addi	a1,sp,128
1c009158:	8fb9                	xor	a5,a5,a4
1c00915a:	852e                	mv	a0,a1
1c00915c:	df32                	sw	a2,188(sp)
1c00915e:	c1b6                	sw	a3,192(sp)
1c009160:	c3be                	sw	a5,196(sp)
1c009162:	a02ff0ef          	jal	ra,1c008364 <KeccakF1600_StatePermute>
1c009166:	581a                	lw	a6,164(sp)
1c009168:	552a                	lw	a0,168(sp)
1c00916a:	55ba                	lw	a1,172(sp)
1c00916c:	00885913          	srli	s2,a6,0x8
1c009170:	564a                	lw	a2,176(sp)
1c009172:	de4a                	sw	s2,60(sp)
1c009174:	00855913          	srli	s2,a0,0x8
1c009178:	56da                	lw	a3,180(sp)
1c00917a:	d24a                	sw	s2,36(sp)
1c00917c:	0085d913          	srli	s2,a1,0x8
1c009180:	576a                	lw	a4,184(sp)
1c009182:	d44a                	sw	s2,40(sp)
1c009184:	00865913          	srli	s2,a2,0x8
1c009188:	57fa                	lw	a5,188(sp)
1c00918a:	d64a                	sw	s2,44(sp)
1c00918c:	0086d913          	srli	s2,a3,0x8
1c009190:	d84a                	sw	s2,48(sp)
1c009192:	00875913          	srli	s2,a4,0x8
1c009196:	da4a                	sw	s2,52(sp)
1c009198:	0087d913          	srli	s2,a5,0x8
1c00919c:	dc4a                	sw	s2,56(sp)
1c00919e:	5972                	lw	s2,60(sp)
1c0091a0:	448a                	lw	s1,128(sp)
1c0091a2:	0ff97913          	andi	s2,s2,255
1c0091a6:	c2ca                	sw	s2,68(sp)
1c0091a8:	5912                	lw	s2,36(sp)
1c0091aa:	439a                	lw	t2,132(sp)
1c0091ac:	0ff97913          	andi	s2,s2,255
1c0091b0:	c4ca                	sw	s2,72(sp)
1c0091b2:	5922                	lw	s2,40(sp)
1c0091b4:	42aa                	lw	t0,136(sp)
1c0091b6:	0ff97913          	andi	s2,s2,255
1c0091ba:	c8ca                	sw	s2,80(sp)
1c0091bc:	5932                	lw	s2,44(sp)
1c0091be:	4fba                	lw	t6,140(sp)
1c0091c0:	0ff97913          	andi	s2,s2,255
1c0091c4:	ccca                	sw	s2,88(sp)
1c0091c6:	5942                	lw	s2,48(sp)
1c0091c8:	4f4a                	lw	t5,144(sp)
1c0091ca:	0ff97913          	andi	s2,s2,255
1c0091ce:	4eda                	lw	t4,148(sp)
1c0091d0:	4e6a                	lw	t3,152(sp)
1c0091d2:	437a                	lw	t1,156(sp)
1c0091d4:	588a                	lw	a7,160(sp)
1c0091d6:	d0ca                	sw	s2,96(sp)
1c0091d8:	5952                	lw	s2,52(sp)
1c0091da:	0082dc93          	srli	s9,t0,0x8
1c0091de:	0ff97913          	andi	s2,s2,255
1c0091e2:	d4ca                	sw	s2,104(sp)
1c0091e4:	5962                	lw	s2,56(sp)
1c0091e6:	008fdc13          	srli	s8,t6,0x8
1c0091ea:	008f5b93          	srli	s7,t5,0x8
1c0091ee:	008edb13          	srli	s6,t4,0x8
1c0091f2:	0ff97913          	andi	s2,s2,255
1c0091f6:	d8ca                	sw	s2,112(sp)
1c0091f8:	0083dd13          	srli	s10,t2,0x8
1c0091fc:	0ff4f913          	andi	s2,s1,255
1c009200:	0ffcfc93          	andi	s9,s9,255
1c009204:	0ffc7c13          	andi	s8,s8,255
1c009208:	0ffbfb93          	andi	s7,s7,255
1c00920c:	0ffb7b13          	andi	s6,s6,255
1c009210:	d24a                	sw	s2,36(sp)
1c009212:	008e5a93          	srli	s5,t3,0x8
1c009216:	0ff2f913          	andi	s2,t0,255
1c00921a:	0ca2                	slli	s9,s9,0x8
1c00921c:	0c22                	slli	s8,s8,0x8
1c00921e:	0ba2                	slli	s7,s7,0x8
1c009220:	0b22                	slli	s6,s6,0x8
1c009222:	0ffd7d13          	andi	s10,s10,255
1c009226:	ce66                	sw	s9,28(sp)
1c009228:	d64a                	sw	s2,44(sp)
1c00922a:	cc62                	sw	s8,24(sp)
1c00922c:	ca5e                	sw	s7,20(sp)
1c00922e:	0ffffc13          	andi	s8,t6,255
1c009232:	4b96                	lw	s7,68(sp)
1c009234:	0fff7c93          	andi	s9,t5,255
1c009238:	c85a                	sw	s6,16(sp)
1c00923a:	0ffe7913          	andi	s2,t3,255
1c00923e:	0ff8fb13          	andi	s6,a7,255
1c009242:	0d22                	slli	s10,s10,0x8
1c009244:	0ffafa93          	andi	s5,s5,255
1c009248:	d06a                	sw	s10,32(sp)
1c00924a:	d862                	sw	s8,48(sp)
1c00924c:	0ff3fd13          	andi	s10,t2,255
1c009250:	da66                	sw	s9,52(sp)
1c009252:	de4a                	sw	s2,60(sp)
1c009254:	4ca6                	lw	s9,72(sp)
1c009256:	4946                	lw	s2,80(sp)
1c009258:	c0da                	sw	s6,64(sp)
1c00925a:	0ff87c13          	andi	s8,a6,255
1c00925e:	4b66                	lw	s6,88(sp)
1c009260:	0aa2                	slli	s5,s5,0x8
1c009262:	d46a                	sw	s10,40(sp)
1c009264:	c656                	sw	s5,12(sp)
1c009266:	0ffefd13          	andi	s10,t4,255
1c00926a:	0ff37a93          	andi	s5,t1,255
1c00926e:	c2e2                	sw	s8,68(sp)
1c009270:	0ba2                	slli	s7,s7,0x8
1c009272:	5c06                	lw	s8,96(sp)
1c009274:	dc6a                	sw	s10,56(sp)
1c009276:	dcd6                	sw	s5,120(sp)
1c009278:	dede                	sw	s7,124(sp)
1c00927a:	0ff57d13          	andi	s10,a0,255
1c00927e:	0ff5fa93          	andi	s5,a1,255
1c009282:	0ff67b93          	andi	s7,a2,255
1c009286:	0ca2                	slli	s9,s9,0x8
1c009288:	0922                	slli	s2,s2,0x8
1c00928a:	0b22                	slli	s6,s6,0x8
1c00928c:	c4e6                	sw	s9,72(sp)
1c00928e:	c6ea                	sw	s10,76(sp)
1c009290:	c8ca                	sw	s2,80(sp)
1c009292:	cad6                	sw	s5,84(sp)
1c009294:	ccda                	sw	s6,88(sp)
1c009296:	cede                	sw	s7,92(sp)
1c009298:	0c22                	slli	s8,s8,0x8
1c00929a:	d0e2                	sw	s8,96(sp)
1c00929c:	5ac6                	lw	s5,112(sp)
1c00929e:	5d26                	lw	s10,104(sp)
1c0092a0:	0ff6fc93          	andi	s9,a3,255
1c0092a4:	0ff7fb13          	andi	s6,a5,255
1c0092a8:	0084dd93          	srli	s11,s1,0x8
1c0092ac:	0aa2                	slli	s5,s5,0x8
1c0092ae:	5b92                	lw	s7,36(sp)
1c0092b0:	5c22                	lw	s8,40(sp)
1c0092b2:	d2e6                	sw	s9,100(sp)
1c0092b4:	d8d6                	sw	s5,112(sp)
1c0092b6:	5c82                	lw	s9,32(sp)
1c0092b8:	5ab2                	lw	s5,44(sp)
1c0092ba:	dada                	sw	s6,116(sp)
1c0092bc:	0ffdfd93          	andi	s11,s11,255
1c0092c0:	4b72                	lw	s6,28(sp)
1c0092c2:	0d22                	slli	s10,s10,0x8
1c0092c4:	0da2                	slli	s11,s11,0x8
1c0092c6:	d4ea                	sw	s10,104(sp)
1c0092c8:	01bbedb3          	or	s11,s7,s11
1c0092cc:	019c6d33          	or	s10,s8,s9
1c0092d0:	5bc2                	lw	s7,48(sp)
1c0092d2:	016aecb3          	or	s9,s5,s6
1c0092d6:	4ae2                	lw	s5,24(sp)
1c0092d8:	5b52                	lw	s6,52(sp)
1c0092da:	015bec33          	or	s8,s7,s5
1c0092de:	4ad2                	lw	s5,20(sp)
1c0092e0:	0088d993          	srli	s3,a7,0x8
1c0092e4:	015b6bb3          	or	s7,s6,s5
1c0092e8:	4ac2                	lw	s5,16(sp)
1c0092ea:	5b62                	lw	s6,56(sp)
1c0092ec:	00835a13          	srli	s4,t1,0x8
1c0092f0:	015b6b33          	or	s6,s6,s5
1c0092f4:	c25a                	sw	s6,4(sp)
1c0092f6:	4ab2                	lw	s5,12(sp)
1c0092f8:	5b72                	lw	s6,60(sp)
1c0092fa:	0ff9f993          	andi	s3,s3,255
1c0092fe:	015b6b33          	or	s6,s6,s5
1c009302:	4a86                	lw	s5,64(sp)
1c009304:	c45a                	sw	s6,8(sp)
1c009306:	0ffa7a13          	andi	s4,s4,255
1c00930a:	5b66                	lw	s6,120(sp)
1c00930c:	09a2                	slli	s3,s3,0x8
1c00930e:	013ae9b3          	or	s3,s5,s3
1c009312:	0a22                	slli	s4,s4,0x8
1c009314:	c0ce                	sw	s3,64(sp)
1c009316:	014b6a33          	or	s4,s6,s4
1c00931a:	59f6                	lw	s3,124(sp)
1c00931c:	4b16                	lw	s6,68(sp)
1c00931e:	4ab6                	lw	s5,76(sp)
1c009320:	013b6b33          	or	s6,s6,s3
1c009324:	c2da                	sw	s6,68(sp)
1c009326:	4b26                	lw	s6,72(sp)
1c009328:	0ff77913          	andi	s2,a4,255
1c00932c:	016aeab3          	or	s5,s5,s6
1c009330:	d6ca                	sw	s2,108(sp)
1c009332:	49d6                	lw	s3,84(sp)
1c009334:	c6d6                	sw	s5,76(sp)
1c009336:	4ac6                	lw	s5,80(sp)
1c009338:	4b76                	lw	s6,92(sp)
1c00933a:	0159e9b3          	or	s3,s3,s5
1c00933e:	cace                	sw	s3,84(sp)
1c009340:	49e6                	lw	s3,88(sp)
1c009342:	5a96                	lw	s5,100(sp)
1c009344:	013b6b33          	or	s6,s6,s3
1c009348:	ceda                	sw	s6,92(sp)
1c00934a:	5b06                	lw	s6,96(sp)
1c00934c:	59b6                	lw	s3,108(sp)
1c00934e:	016aeab3          	or	s5,s5,s6
1c009352:	d2d6                	sw	s5,100(sp)
1c009354:	5aa6                	lw	s5,104(sp)
1c009356:	5b56                	lw	s6,116(sp)
1c009358:	0159e9b3          	or	s3,s3,s5
1c00935c:	d6ce                	sw	s3,108(sp)
1c00935e:	59c6                	lw	s3,112(sp)
1c009360:	ff010937          	lui	s2,0xff010
1c009364:	013b6b33          	or	s6,s6,s3
1c009368:	00ff09b7          	lui	s3,0xff0
1c00936c:	0134fab3          	and	s5,s1,s3
1c009370:	0133f9b3          	and	s3,t2,s3
1c009374:	d44e                	sw	s3,40(sp)
1c009376:	00ff09b7          	lui	s3,0xff0
1c00937a:	0132f9b3          	and	s3,t0,s3
1c00937e:	d64e                	sw	s3,44(sp)
1c009380:	00ff09b7          	lui	s3,0xff0
1c009384:	013ff9b3          	and	s3,t6,s3
1c009388:	d84e                	sw	s3,48(sp)
1c00938a:	00ff09b7          	lui	s3,0xff0
1c00938e:	013f79b3          	and	s3,t5,s3
1c009392:	da4e                	sw	s3,52(sp)
1c009394:	00ff09b7          	lui	s3,0xff0
1c009398:	013ef9b3          	and	s3,t4,s3
1c00939c:	dc4e                	sw	s3,56(sp)
1c00939e:	00ff09b7          	lui	s3,0xff0
1c0093a2:	013e79b3          	and	s3,t3,s3
1c0093a6:	197d                	addi	s2,s2,-1
1c0093a8:	de4e                	sw	s3,60(sp)
1c0093aa:	00ff09b7          	lui	s3,0xff0
1c0093ae:	012c7c33          	and	s8,s8,s2
1c0093b2:	012bfbb3          	and	s7,s7,s2
1c0093b6:	013379b3          	and	s3,t1,s3
1c0093ba:	012cfcb3          	and	s9,s9,s2
1c0093be:	ca62                	sw	s8,20(sp)
1c0093c0:	c85e                	sw	s7,16(sp)
1c0093c2:	4c22                	lw	s8,8(sp)
1c0093c4:	4b92                	lw	s7,4(sp)
1c0093c6:	dcce                	sw	s3,120(sp)
1c0093c8:	00ff09b7          	lui	s3,0xff0
1c0093cc:	cc66                	sw	s9,24(sp)
1c0093ce:	0138f9b3          	and	s3,a7,s3
1c0093d2:	4c86                	lw	s9,64(sp)
1c0093d4:	012d7d33          	and	s10,s10,s2
1c0093d8:	012bfbb3          	and	s7,s7,s2
1c0093dc:	012c7c33          	and	s8,s8,s2
1c0093e0:	012a7a33          	and	s4,s4,s2
1c0093e4:	dece                	sw	s3,124(sp)
1c0093e6:	00ff09b7          	lui	s3,0xff0
1c0093ea:	dada                	sw	s6,116(sp)
1c0093ec:	ce6a                	sw	s10,28(sp)
1c0093ee:	c65e                	sw	s7,12(sp)
1c0093f0:	c462                	sw	s8,8(sp)
1c0093f2:	c252                	sw	s4,4(sp)
1c0093f4:	012cfcb3          	and	s9,s9,s2
1c0093f8:	013879b3          	and	s3,a6,s3
1c0093fc:	c0e6                	sw	s9,64(sp)
1c0093fe:	c4ce                	sw	s3,72(sp)
1c009400:	00ff09b7          	lui	s3,0xff0
1c009404:	013579b3          	and	s3,a0,s3
1c009408:	c8ce                	sw	s3,80(sp)
1c00940a:	00ff09b7          	lui	s3,0xff0
1c00940e:	0135f9b3          	and	s3,a1,s3
1c009412:	ccce                	sw	s3,88(sp)
1c009414:	49d6                	lw	s3,84(sp)
1c009416:	012dfb33          	and	s6,s11,s2
1c00941a:	0129f9b3          	and	s3,s3,s2
1c00941e:	cace                	sw	s3,84(sp)
1c009420:	00ff09b7          	lui	s3,0xff0
1c009424:	013679b3          	and	s3,a2,s3
1c009428:	d0ce                	sw	s3,96(sp)
1c00942a:	00ff09b7          	lui	s3,0xff0
1c00942e:	0136f9b3          	and	s3,a3,s3
1c009432:	d4ce                	sw	s3,104(sp)
1c009434:	00ff09b7          	lui	s3,0xff0
1c009438:	4db6                	lw	s11,76(sp)
1c00943a:	4a76                	lw	s4,92(sp)
1c00943c:	013779b3          	and	s3,a4,s3
1c009440:	d8ce                	sw	s3,112(sp)
1c009442:	00ff09b7          	lui	s3,0xff0
1c009446:	4d16                	lw	s10,68(sp)
1c009448:	5b96                	lw	s7,100(sp)
1c00944a:	012dfdb3          	and	s11,s11,s2
1c00944e:	012a7a33          	and	s4,s4,s2
1c009452:	0137f9b3          	and	s3,a5,s3
1c009456:	5cd6                	lw	s9,116(sp)
1c009458:	5c36                	lw	s8,108(sp)
1c00945a:	c6ee                	sw	s11,76(sp)
1c00945c:	ced2                	sw	s4,92(sp)
1c00945e:	c04e                	sw	s3,0(sp)
1c009460:	5a22                	lw	s4,40(sp)
1c009462:	49f2                	lw	s3,28(sp)
1c009464:	015b6db3          	or	s11,s6,s5
1c009468:	4ae2                	lw	s5,24(sp)
1c00946a:	5b32                	lw	s6,44(sp)
1c00946c:	012d7d33          	and	s10,s10,s2
1c009470:	012bfbb3          	and	s7,s7,s2
1c009474:	c2ea                	sw	s10,68(sp)
1c009476:	d2de                	sw	s7,100(sp)
1c009478:	012c7c33          	and	s8,s8,s2
1c00947c:	4bd2                	lw	s7,20(sp)
1c00947e:	012cf933          	and	s2,s9,s2
1c009482:	0149ed33          	or	s10,s3,s4
1c009486:	016aecb3          	or	s9,s5,s6
1c00948a:	59c2                	lw	s3,48(sp)
1c00948c:	4a42                	lw	s4,16(sp)
1c00948e:	5ad2                	lw	s5,52(sp)
1c009490:	d6e2                	sw	s8,108(sp)
1c009492:	013bec33          	or	s8,s7,s3
1c009496:	49b2                	lw	s3,12(sp)
1c009498:	015a6bb3          	or	s7,s4,s5
1c00949c:	5a62                	lw	s4,56(sp)
1c00949e:	daca                	sw	s2,116(sp)
1c0094a0:	0149eb33          	or	s6,s3,s4
1c0094a4:	49a2                	lw	s3,8(sp)
1c0094a6:	5a72                	lw	s4,60(sp)
1c0094a8:	80e1                	srli	s1,s1,0x18
1c0094aa:	0149eab3          	or	s5,s3,s4
1c0094ae:	5a66                	lw	s4,120(sp)
1c0094b0:	4992                	lw	s3,4(sp)
1c0094b2:	04e2                	slli	s1,s1,0x18
1c0094b4:	0149e9b3          	or	s3,s3,s4
1c0094b8:	dcce                	sw	s3,120(sp)
1c0094ba:	5a76                	lw	s4,124(sp)
1c0094bc:	4986                	lw	s3,64(sp)
1c0094be:	01000937          	lui	s2,0x1000
1c0094c2:	0149e9b3          	or	s3,s3,s4
1c0094c6:	d24e                	sw	s3,36(sp)
1c0094c8:	4a26                	lw	s4,72(sp)
1c0094ca:	4996                	lw	s3,68(sp)
1c0094cc:	197d                	addi	s2,s2,-1
1c0094ce:	0149e9b3          	or	s3,s3,s4
1c0094d2:	d44e                	sw	s3,40(sp)
1c0094d4:	4a46                	lw	s4,80(sp)
1c0094d6:	49b6                	lw	s3,76(sp)
1c0094d8:	c2a6                	sw	s1,68(sp)
1c0094da:	0149e9b3          	or	s3,s3,s4
1c0094de:	d64e                	sw	s3,44(sp)
1c0094e0:	4a66                	lw	s4,88(sp)
1c0094e2:	49d6                	lw	s3,84(sp)
1c0094e4:	54e6                	lw	s1,120(sp)
1c0094e6:	0149e9b3          	or	s3,s3,s4
1c0094ea:	d84e                	sw	s3,48(sp)
1c0094ec:	5a06                	lw	s4,96(sp)
1c0094ee:	49f6                	lw	s3,92(sp)
1c0094f0:	018ede93          	srli	t4,t4,0x18
1c0094f4:	0149e9b3          	or	s3,s3,s4
1c0094f8:	da4e                	sw	s3,52(sp)
1c0094fa:	5a26                	lw	s4,104(sp)
1c0094fc:	5996                	lw	s3,100(sp)
1c0094fe:	018e5e13          	srli	t3,t3,0x18
1c009502:	0149e9b3          	or	s3,s3,s4
1c009506:	dc4e                	sw	s3,56(sp)
1c009508:	5a46                	lw	s4,112(sp)
1c00950a:	59b6                	lw	s3,108(sp)
1c00950c:	01835313          	srli	t1,t1,0x18
1c009510:	0149e9b3          	or	s3,s3,s4
1c009514:	de4e                	sw	s3,60(sp)
1c009516:	4a02                	lw	s4,0(sp)
1c009518:	59d6                	lw	s3,116(sp)
1c00951a:	012b7b33          	and	s6,s6,s2
1c00951e:	0149e9b3          	or	s3,s3,s4
1c009522:	c0ce                	sw	s3,64(sp)
1c009524:	5992                	lw	s3,36(sp)
1c009526:	0124fa33          	and	s4,s1,s2
1c00952a:	0129f9b3          	and	s3,s3,s2
1c00952e:	d24e                	sw	s3,36(sp)
1c009530:	54a2                	lw	s1,40(sp)
1c009532:	59b2                	lw	s3,44(sp)
1c009534:	0124f4b3          	and	s1,s1,s2
1c009538:	d426                	sw	s1,40(sp)
1c00953a:	54c2                	lw	s1,48(sp)
1c00953c:	0129f9b3          	and	s3,s3,s2
1c009540:	d64e                	sw	s3,44(sp)
1c009542:	0124f4b3          	and	s1,s1,s2
1c009546:	59d2                	lw	s3,52(sp)
1c009548:	d826                	sw	s1,48(sp)
1c00954a:	54e2                	lw	s1,56(sp)
1c00954c:	0129f9b3          	and	s3,s3,s2
1c009550:	da4e                	sw	s3,52(sp)
1c009552:	0124f4b3          	and	s1,s1,s2
1c009556:	59f2                	lw	s3,60(sp)
1c009558:	dc26                	sw	s1,56(sp)
1c00955a:	4486                	lw	s1,64(sp)
1c00955c:	012afab3          	and	s5,s5,s2
1c009560:	0129f9b3          	and	s3,s3,s2
1c009564:	0183d393          	srli	t2,t2,0x18
1c009568:	0182d293          	srli	t0,t0,0x18
1c00956c:	018fdf93          	srli	t6,t6,0x18
1c009570:	018f5f13          	srli	t5,t5,0x18
1c009574:	0ee2                	slli	t4,t4,0x18
1c009576:	0e62                	slli	t3,t3,0x18
1c009578:	0362                	slli	t1,t1,0x18
1c00957a:	de4e                	sw	s3,60(sp)
1c00957c:	012dfdb3          	and	s11,s11,s2
1c009580:	0124f9b3          	and	s3,s1,s2
1c009584:	012d7d33          	and	s10,s10,s2
1c009588:	012cfcb3          	and	s9,s9,s2
1c00958c:	012c7c33          	and	s8,s8,s2
1c009590:	012bfbb3          	and	s7,s7,s2
1c009594:	01db6eb3          	or	t4,s6,t4
1c009598:	4916                	lw	s2,68(sp)
1c00959a:	5b32                	lw	s6,44(sp)
1c00959c:	01caee33          	or	t3,s5,t3
1c0095a0:	006a6333          	or	t1,s4,t1
1c0095a4:	5aa2                	lw	s5,40(sp)
1c0095a6:	5a12                	lw	s4,36(sp)
1c0095a8:	0188d893          	srli	a7,a7,0x18
1c0095ac:	01885813          	srli	a6,a6,0x18
1c0095b0:	8161                	srli	a0,a0,0x18
1c0095b2:	03e2                	slli	t2,t2,0x18
1c0095b4:	02e2                	slli	t0,t0,0x18
1c0095b6:	0fe2                	slli	t6,t6,0x18
1c0095b8:	0f62                	slli	t5,t5,0x18
1c0095ba:	007d63b3          	or	t2,s10,t2
1c0095be:	005ce2b3          	or	t0,s9,t0
1c0095c2:	5d72                	lw	s10,60(sp)
1c0095c4:	5ce2                	lw	s9,56(sp)
1c0095c6:	01fc6fb3          	or	t6,s8,t6
1c0095ca:	01ebef33          	or	t5,s7,t5
1c0095ce:	5c52                	lw	s8,52(sp)
1c0095d0:	5bc2                	lw	s7,48(sp)
1c0095d2:	81e1                	srli	a1,a1,0x18
1c0095d4:	8261                	srli	a2,a2,0x18
1c0095d6:	82e1                	srli	a3,a3,0x18
1c0095d8:	8361                	srli	a4,a4,0x18
1c0095da:	83e1                	srli	a5,a5,0x18
1c0095dc:	08e2                	slli	a7,a7,0x18
1c0095de:	0862                	slli	a6,a6,0x18
1c0095e0:	0562                	slli	a0,a0,0x18
1c0095e2:	012de4b3          	or	s1,s11,s2
1c0095e6:	05e2                	slli	a1,a1,0x18
1c0095e8:	011a6933          	or	s2,s4,a7
1c0095ec:	0662                	slli	a2,a2,0x18
1c0095ee:	010aea33          	or	s4,s5,a6
1c0095f2:	06e2                	slli	a3,a3,0x18
1c0095f4:	00ab6ab3          	or	s5,s6,a0
1c0095f8:	0762                	slli	a4,a4,0x18
1c0095fa:	07e2                	slli	a5,a5,0x18
1c0095fc:	c004                	sw	s1,0(s0)
1c0095fe:	03242023          	sw	s2,32(s0)
1c009602:	03442223          	sw	s4,36(s0)
1c009606:	03542423          	sw	s5,40(s0)
1c00960a:	00bbe5b3          	or	a1,s7,a1
1c00960e:	00cc6633          	or	a2,s8,a2
1c009612:	00dce6b3          	or	a3,s9,a3
1c009616:	00ed6733          	or	a4,s10,a4
1c00961a:	00f9e7b3          	or	a5,s3,a5
1c00961e:	00742223          	sw	t2,4(s0)
1c009622:	00542423          	sw	t0,8(s0)
1c009626:	01f42623          	sw	t6,12(s0)
1c00962a:	01e42823          	sw	t5,16(s0)
1c00962e:	01d42a23          	sw	t4,20(s0)
1c009632:	01c42c23          	sw	t3,24(s0)
1c009636:	00642e23          	sw	t1,28(s0)
1c00963a:	d44c                	sw	a1,44(s0)
1c00963c:	d810                	sw	a2,48(s0)
1c00963e:	d854                	sw	a3,52(s0)
1c009640:	dc18                	sw	a4,56(s0)
1c009642:	dc5c                	sw	a5,60(s0)
1c009644:	24c12083          	lw	ra,588(sp)
1c009648:	24812403          	lw	s0,584(sp)
1c00964c:	24412483          	lw	s1,580(sp)
1c009650:	24012903          	lw	s2,576(sp)
1c009654:	23c12983          	lw	s3,572(sp)
1c009658:	23812a03          	lw	s4,568(sp)
1c00965c:	23412a83          	lw	s5,564(sp)
1c009660:	23012b03          	lw	s6,560(sp)
1c009664:	22c12b83          	lw	s7,556(sp)
1c009668:	22812c03          	lw	s8,552(sp)
1c00966c:	22412c83          	lw	s9,548(sp)
1c009670:	22012d03          	lw	s10,544(sp)
1c009674:	21c12d83          	lw	s11,540(sp)
1c009678:	25010113          	addi	sp,sp,592
1c00967c:	8082                	ret
1c00967e:	4781                	li	a5,0
1c009680:	fbeff06f          	j	1c008e3e <sha3_512+0x10c>

1c009684 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c009684:	b6010113          	addi	sp,sp,-1184
1c009688:	7379                	lui	t1,0xffffe
1c00968a:	48112e23          	sw	ra,1180(sp)
1c00968e:	48812c23          	sw	s0,1176(sp)
1c009692:	48912a23          	sw	s1,1172(sp)
1c009696:	49612023          	sw	s6,1152(sp)
1c00969a:	47912a23          	sw	s9,1140(sp)
1c00969e:	49212823          	sw	s2,1168(sp)
1c0096a2:	49312623          	sw	s3,1164(sp)
1c0096a6:	49412423          	sw	s4,1160(sp)
1c0096aa:	49512223          	sw	s5,1156(sp)
1c0096ae:	47712e23          	sw	s7,1148(sp)
1c0096b2:	47812c23          	sw	s8,1144(sp)
1c0096b6:	47a12823          	sw	s10,1136(sp)
1c0096ba:	47b12623          	sw	s11,1132(sp)
1c0096be:	911a                	add	sp,sp,t1
1c0096c0:	6309                	lui	t1,0x2
1c0096c2:	7479                	lui	s0,0xffffe
1c0096c4:	46030313          	addi	t1,t1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c0096c8:	930a                	add	t1,t1,sp
1c0096ca:	bc040413          	addi	s0,s0,-1088 # ffffdbc0 <pulp__FC+0xffffdbc1>
1c0096ce:	941a                	add	s0,s0,t1
1c0096d0:	cc2a                	sw	a0,24(sp)
1c0096d2:	ce2e                	sw	a1,28(sp)
1c0096d4:	8522                	mv	a0,s0
1c0096d6:	02000593          	li	a1,32
1c0096da:	011000ef          	jal	ra,1c009eea <randombytes>
1c0096de:	8522                	mv	a0,s0
1c0096e0:	02000613          	li	a2,32
1c0096e4:	85a2                	mv	a1,s0
1c0096e6:	e4cff0ef          	jal	ra,1c008d32 <sha3_512>
1c0096ea:	6509                	lui	a0,0x2
1c0096ec:	77fd                	lui	a5,0xfffff
1c0096ee:	46050513          	addi	a0,a0,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c0096f2:	80078493          	addi	s1,a5,-2048 # ffffe800 <pulp__FC+0xffffe801>
1c0096f6:	950a                	add	a0,a0,sp
1c0096f8:	e0078793          	addi	a5,a5,-512
1c0096fc:	00f50733          	add	a4,a0,a5
1c009700:	94aa                	add	s1,s1,a0
1c009702:	6785                	lui	a5,0x1
1c009704:	ca3a                	sw	a4,20(sp)
1c009706:	c602                	sw	zero,12(sp)
1c009708:	1f848b13          	addi	s6,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c00970c:	fff78c93          	addi	s9,a5,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c009710:	4832                	lw	a6,12(sp)
1c009712:	6889                	lui	a7,0x2
1c009714:	7a79                	lui	s4,0xffffe
1c009716:	46088893          	addi	a7,a7,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00971a:	bc0a0b93          	addi	s7,s4,-1088 # ffffdbc0 <pulp__FC+0xffffdbc1>
1c00971e:	0ff87813          	andi	a6,a6,255
1c009722:	988a                	add	a7,a7,sp
1c009724:	c842                	sw	a6,16(sp)
1c009726:	4452                	lw	s0,20(sp)
1c009728:	4901                	li	s2,0
1c00972a:	9bc6                	add	s7,s7,a7
1c00972c:	a815                	j	1c009760 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xdc>
1c00972e:	001c1813          	slli	a6,s8,0x1
1c009732:	9822                	add	a6,a6,s0
1c009734:	001c0893          	addi	a7,s8,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c009738:	00f81023          	sh	a5,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00973c:	28a89363          	bne	a7,a0,1c0099c2 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x33e>
1c009740:	6509                	lui	a0,0x2
1c009742:	46050513          	addi	a0,a0,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c009746:	950a                	add	a0,a0,sp
1c009748:	200a0993          	addi	s3,s4,512
1c00974c:	99aa                	add	s3,s3,a0
1c00974e:	854e                	mv	a0,s3
1c009750:	9b6ff0ef          	jal	ra,1c008906 <shake128_ctx_release>
1c009754:	0905                	addi	s2,s2,1
1c009756:	478d                	li	a5,3
1c009758:	20040413          	addi	s0,s0,512
1c00975c:	10f90463          	beq	s2,a5,1c009864 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x1e0>
1c009760:	6809                	lui	a6,0x2
1c009762:	46080813          	addi	a6,a6,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c009766:	980a                	add	a6,a6,sp
1c009768:	200a0993          	addi	s3,s4,512
1c00976c:	99c2                	add	s3,s3,a6
1c00976e:	46c2                	lw	a3,16(sp)
1c009770:	85de                	mv	a1,s7
1c009772:	854e                	mv	a0,s3
1c009774:	0ff97613          	andi	a2,s2,255
1c009778:	233000ef          	jal	ra,1c00a1aa <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00977c:	458d                	li	a1,3
1c00977e:	8526                	mv	a0,s1
1c009780:	864e                	mv	a2,s3
1c009782:	8c4ff0ef          	jal	ra,1c008846 <shake128_squeezeblocks>
1c009786:	6885                	lui	a7,0x1
1c009788:	4c01                	li	s8,0
1c00978a:	8726                	mv	a4,s1
1c00978c:	d0088593          	addi	a1,a7,-768 # d00 <__CTOR_LIST__-0x1bfff304>
1c009790:	10000513          	li	a0,256
1c009794:	00174603          	lbu	a2,1(a4)
1c009798:	00074683          	lbu	a3,0(a4)
1c00979c:	00861793          	slli	a5,a2,0x8
1c0097a0:	8fd5                	or	a5,a5,a3
1c0097a2:	0197f7b3          	and	a5,a5,s9
1c0097a6:	00274683          	lbu	a3,2(a4)
1c0097aa:	f8f5f2e3          	bleu	a5,a1,1c00972e <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xaa>
1c0097ae:	8211                	srli	a2,a2,0x4
1c0097b0:	0692                	slli	a3,a3,0x4
1c0097b2:	8ed1                	or	a3,a3,a2
1c0097b4:	00d5c863          	blt	a1,a3,1c0097c4 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x140>
1c0097b8:	001c1793          	slli	a5,s8,0x1
1c0097bc:	97a2                	add	a5,a5,s0
1c0097be:	00d79023          	sh	a3,0(a5)
1c0097c2:	0c05                	addi	s8,s8,1
1c0097c4:	f6ac0ee3          	beq	s8,a0,1c009740 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xbc>
1c0097c8:	070d                	addi	a4,a4,3
1c0097ca:	fd6715e3          	bne	a4,s6,1c009794 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x110>
1c0097ce:	6309                	lui	t1,0x2
1c0097d0:	46030313          	addi	t1,t1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c0097d4:	200a0993          	addi	s3,s4,512
1c0097d8:	930a                	add	t1,t1,sp
1c0097da:	6505                	lui	a0,0x1
1c0097dc:	0a848d13          	addi	s10,s1,168
1c0097e0:	999a                	add	s3,s3,t1
1c0097e2:	10000a93          	li	s5,256
1c0097e6:	d0050d93          	addi	s11,a0,-768 # d00 <__CTOR_LIST__-0x1bfff304>
1c0097ea:	a031                	j	1c0097f6 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x172>
1c0097ec:	9c2e                	add	s8,s8,a1
1c0097ee:	0ff00793          	li	a5,255
1c0097f2:	f587e7e3          	bltu	a5,s8,1c009740 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xbc>
1c0097f6:	4585                	li	a1,1
1c0097f8:	8526                	mv	a0,s1
1c0097fa:	864e                	mv	a2,s3
1c0097fc:	84aff0ef          	jal	ra,1c008846 <shake128_squeezeblocks>
1c009800:	001c1513          	slli	a0,s8,0x1
1c009804:	9522                	add	a0,a0,s0
1c009806:	418a8eb3          	sub	t4,s5,s8
1c00980a:	86a6                	mv	a3,s1
1c00980c:	4581                	li	a1,0
1c00980e:	00159793          	slli	a5,a1,0x1
1c009812:	00f50f33          	add	t5,a0,a5
1c009816:	fcdd0be3          	beq	s10,a3,1c0097ec <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x168>
1c00981a:	0016c703          	lbu	a4,1(a3)
1c00981e:	0006c603          	lbu	a2,0(a3)
1c009822:	00871793          	slli	a5,a4,0x8
1c009826:	8fd1                	or	a5,a5,a2
1c009828:	0197f7b3          	and	a5,a5,s9
1c00982c:	00475613          	srli	a2,a4,0x4
1c009830:	0026c703          	lbu	a4,2(a3)
1c009834:	00fde563          	bltu	s11,a5,1c00983e <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x1ba>
1c009838:	00ff1023          	sh	a5,0(t5) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00983c:	0585                	addi	a1,a1,1
1c00983e:	00471793          	slli	a5,a4,0x4
1c009842:	8fd1                	or	a5,a5,a2
1c009844:	fbd5f4e3          	bleu	t4,a1,1c0097ec <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x168>
1c009848:	00159713          	slli	a4,a1,0x1
1c00984c:	972a                	add	a4,a4,a0
1c00984e:	00158613          	addi	a2,a1,1
1c009852:	00fdc763          	blt	s11,a5,1c009860 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x1dc>
1c009856:	00f71023          	sh	a5,0(a4)
1c00985a:	85b2                	mv	a1,a2
1c00985c:	f9d678e3          	bleu	t4,a2,1c0097ec <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x168>
1c009860:	068d                	addi	a3,a3,3
1c009862:	b775                	j	1c00980e <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x18a>
1c009864:	4732                	lw	a4,12(sp)
1c009866:	47d2                	lw	a5,20(sp)
1c009868:	0705                	addi	a4,a4,1
1c00986a:	60078793          	addi	a5,a5,1536
1c00986e:	c63a                	sw	a4,12(sp)
1c009870:	ca3e                	sw	a5,20(sp)
1c009872:	e9271fe3          	bne	a4,s2,1c009710 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x8c>
1c009876:	6309                	lui	t1,0x2
1c009878:	46030313          	addi	t1,t1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00987c:	930a                	add	t1,t1,sp
1c00987e:	7afd                	lui	s5,0xfffff
1c009880:	014304b3          	add	s1,t1,s4
1c009884:	800a8413          	addi	s0,s5,-2048 # ffffe800 <pulp__FC+0xffffe801>
1c009888:	941a                	add	s0,s0,t1
1c00988a:	be048493          	addi	s1,s1,-1056
1c00988e:	85a6                	mv	a1,s1
1c009890:	8522                	mv	a0,s0
1c009892:	4601                	li	a2,0
1c009894:	2105                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009896:	85a6                	mv	a1,s1
1c009898:	20040513          	addi	a0,s0,512
1c00989c:	4605                	li	a2,1
1c00989e:	2919                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0098a0:	85a6                	mv	a1,s1
1c0098a2:	40040513          	addi	a0,s0,1024
1c0098a6:	4609                	li	a2,2
1c0098a8:	2131                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0098aa:	6509                	lui	a0,0x2
1c0098ac:	46050513          	addi	a0,a0,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c0098b0:	950a                	add	a0,a0,sp
1c0098b2:	c00a0913          	addi	s2,s4,-1024
1c0098b6:	992a                	add	s2,s2,a0
1c0098b8:	85a6                	mv	a1,s1
1c0098ba:	854a                	mv	a0,s2
1c0098bc:	460d                	li	a2,3
1c0098be:	2edd                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0098c0:	85a6                	mv	a1,s1
1c0098c2:	20090513          	addi	a0,s2,512 # 1000200 <__CTOR_LIST__-0x1afffe04>
1c0098c6:	4611                	li	a2,4
1c0098c8:	26f5                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0098ca:	85a6                	mv	a1,s1
1c0098cc:	4615                	li	a2,5
1c0098ce:	40090513          	addi	a0,s2,1024
1c0098d2:	26cd                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0098d4:	8522                	mv	a0,s0
1c0098d6:	2b3d                	jal	1c009e14 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c0098d8:	854a                	mv	a0,s2
1c0098da:	2b2d                	jal	1c009e14 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c0098dc:	6589                	lui	a1,0x2
1c0098de:	46058593          	addi	a1,a1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c0098e2:	958a                	add	a1,a1,sp
1c0098e4:	e00a8493          	addi	s1,s5,-512
1c0098e8:	94ae                	add	s1,s1,a1
1c0098ea:	8622                	mv	a2,s0
1c0098ec:	85a6                	mv	a1,s1
1c0098ee:	854e                	mv	a0,s3
1c0098f0:	2381                	jal	1c009e30 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c0098f2:	854e                	mv	a0,s3
1c0098f4:	29b5                	jal	1c009d70 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c0098f6:	20098a93          	addi	s5,s3,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c0098fa:	8622                	mv	a2,s0
1c0098fc:	60048593          	addi	a1,s1,1536
1c009900:	8556                	mv	a0,s5
1c009902:	233d                	jal	1c009e30 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009904:	8556                	mv	a0,s5
1c009906:	21ad                	jal	1c009d70 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009908:	6689                	lui	a3,0x2
1c00990a:	e6068693          	addi	a3,a3,-416 # 1e60 <__CTOR_LIST__-0x1bffe1a4>
1c00990e:	40098493          	addi	s1,s3,1024
1c009912:	00d105b3          	add	a1,sp,a3
1c009916:	8622                	mv	a2,s0
1c009918:	8526                	mv	a0,s1
1c00991a:	2b19                	jal	1c009e30 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00991c:	8526                	mv	a0,s1
1c00991e:	2989                	jal	1c009d70 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009920:	864a                	mv	a2,s2
1c009922:	85ce                	mv	a1,s3
1c009924:	854e                	mv	a0,s3
1c009926:	2351                	jal	1c009eaa <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c009928:	854e                	mv	a0,s3
1c00992a:	2395                	jal	1c009e8e <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c00992c:	4572                	lw	a0,28(sp)
1c00992e:	85a2                	mv	a1,s0
1c009930:	296d                	jal	1c009dea <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c009932:	4562                	lw	a0,24(sp)
1c009934:	85ce                	mv	a1,s3
1c009936:	2955                	jal	1c009dea <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c009938:	6709                	lui	a4,0x2
1c00993a:	46070713          	addi	a4,a4,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00993e:	970a                	add	a4,a4,sp
1c009940:	9a3a                	add	s4,s4,a4
1c009942:	4362                	lw	t1,24(sp)
1c009944:	bc0a2883          	lw	a7,-1088(s4)
1c009948:	bc4a2803          	lw	a6,-1084(s4)
1c00994c:	bc8a2503          	lw	a0,-1080(s4)
1c009950:	bcca2583          	lw	a1,-1076(s4)
1c009954:	bd0a2603          	lw	a2,-1072(s4)
1c009958:	bd4a2683          	lw	a3,-1068(s4)
1c00995c:	bd8a2703          	lw	a4,-1064(s4)
1c009960:	bdca2783          	lw	a5,-1060(s4)
1c009964:	49132023          	sw	a7,1152(t1)
1c009968:	49032223          	sw	a6,1156(t1)
1c00996c:	48a32423          	sw	a0,1160(t1)
1c009970:	48b32623          	sw	a1,1164(t1)
1c009974:	48c32823          	sw	a2,1168(t1)
1c009978:	48d32a23          	sw	a3,1172(t1)
1c00997c:	48e32c23          	sw	a4,1176(t1)
1c009980:	48f32e23          	sw	a5,1180(t1)
1c009984:	6309                	lui	t1,0x2
1c009986:	911a                	add	sp,sp,t1
1c009988:	49c12083          	lw	ra,1180(sp)
1c00998c:	49812403          	lw	s0,1176(sp)
1c009990:	49412483          	lw	s1,1172(sp)
1c009994:	49012903          	lw	s2,1168(sp)
1c009998:	48c12983          	lw	s3,1164(sp)
1c00999c:	48812a03          	lw	s4,1160(sp)
1c0099a0:	48412a83          	lw	s5,1156(sp)
1c0099a4:	48012b03          	lw	s6,1152(sp)
1c0099a8:	47c12b83          	lw	s7,1148(sp)
1c0099ac:	47812c03          	lw	s8,1144(sp)
1c0099b0:	47412c83          	lw	s9,1140(sp)
1c0099b4:	47012d03          	lw	s10,1136(sp)
1c0099b8:	46c12d83          	lw	s11,1132(sp)
1c0099bc:	4a010113          	addi	sp,sp,1184
1c0099c0:	8082                	ret
1c0099c2:	00469793          	slli	a5,a3,0x4
1c0099c6:	00465693          	srli	a3,a2,0x4
1c0099ca:	8edd                	or	a3,a3,a5
1c0099cc:	8c46                	mv	s8,a7
1c0099ce:	ded5d5e3          	ble	a3,a1,1c0097b8 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x134>
1c0099d2:	bbdd                	j	1c0097c8 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x144>

1c0099d4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c0099d4:	1141                	addi	sp,sp,-16
1c0099d6:	c422                	sw	s0,8(sp)
1c0099d8:	c226                	sw	s1,4(sp)
1c0099da:	842a                	mv	s0,a0
1c0099dc:	84ae                	mv	s1,a1
1c0099de:	c606                	sw	ra,12(sp)
1c0099e0:	c04a                	sw	s2,0(sp)
1c0099e2:	314d                	jal	1c009684 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c0099e4:	48048793          	addi	a5,s1,1152
1c0099e8:	00440713          	addi	a4,s0,4
1c0099ec:	00e7b733          	sltu	a4,a5,a4
1c0099f0:	00174713          	xori	a4,a4,1
1c0099f4:	0ff77713          	andi	a4,a4,255
1c0099f8:	eb11                	bnez	a4,1c009a0c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x38>
1c0099fa:	48448713          	addi	a4,s1,1156
1c0099fe:	00e43733          	sltu	a4,s0,a4
1c009a02:	00174713          	xori	a4,a4,1
1c009a06:	0ff77713          	andi	a4,a4,255
1c009a0a:	c769                	beqz	a4,1c009ad4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x100>
1c009a0c:	408007b3          	neg	a5,s0
1c009a10:	8b8d                	andi	a5,a5,3
1c009a12:	c3fd                	beqz	a5,1c009af8 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x124>
1c009a14:	00044683          	lbu	a3,0(s0)
1c009a18:	4705                	li	a4,1
1c009a1a:	48d48023          	sb	a3,1152(s1)
1c009a1e:	0ce78963          	beq	a5,a4,1c009af0 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x11c>
1c009a22:	00144683          	lbu	a3,1(s0)
1c009a26:	470d                	li	a4,3
1c009a28:	48d480a3          	sb	a3,1153(s1)
1c009a2c:	0ce79a63          	bne	a5,a4,1c009b00 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x12c>
1c009a30:	00244703          	lbu	a4,2(s0)
1c009a34:	49d00893          	li	a7,1181
1c009a38:	48e48123          	sb	a4,1154(s1)
1c009a3c:	450d                	li	a0,3
1c009a3e:	4a000813          	li	a6,1184
1c009a42:	40f80833          	sub	a6,a6,a5
1c009a46:	48078713          	addi	a4,a5,1152
1c009a4a:	00285593          	srli	a1,a6,0x2
1c009a4e:	97a2                	add	a5,a5,s0
1c009a50:	9726                	add	a4,a4,s1
1c009a52:	4681                	li	a3,0
1c009a54:	4390                	lw	a2,0(a5)
1c009a56:	0685                	addi	a3,a3,1
1c009a58:	c310                	sw	a2,0(a4)
1c009a5a:	0791                	addi	a5,a5,4
1c009a5c:	0711                	addi	a4,a4,4
1c009a5e:	feb6ebe3          	bltu	a3,a1,1c009a54 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x80>
1c009a62:	ffc87693          	andi	a3,a6,-4
1c009a66:	00d507b3          	add	a5,a0,a3
1c009a6a:	40d88733          	sub	a4,a7,a3
1c009a6e:	02d80d63          	beq	a6,a3,1c009aa8 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c009a72:	00f406b3          	add	a3,s0,a5
1c009a76:	0006c603          	lbu	a2,0(a3)
1c009a7a:	00f486b3          	add	a3,s1,a5
1c009a7e:	48c68023          	sb	a2,1152(a3)
1c009a82:	fff70593          	addi	a1,a4,-1
1c009a86:	00178613          	addi	a2,a5,1
1c009a8a:	cd99                	beqz	a1,1c009aa8 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c009a8c:	9622                	add	a2,a2,s0
1c009a8e:	00064583          	lbu	a1,0(a2)
1c009a92:	4609                	li	a2,2
1c009a94:	48b680a3          	sb	a1,1153(a3)
1c009a98:	0789                	addi	a5,a5,2
1c009a9a:	00c70763          	beq	a4,a2,1c009aa8 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c009a9e:	97a2                	add	a5,a5,s0
1c009aa0:	0007c783          	lbu	a5,0(a5)
1c009aa4:	48f68123          	sb	a5,1154(a3)
1c009aa8:	6905                	lui	s2,0x1
1c009aaa:	92090513          	addi	a0,s2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c009aae:	85a2                	mv	a1,s0
1c009ab0:	9526                	add	a0,a0,s1
1c009ab2:	4a000613          	li	a2,1184
1c009ab6:	894ff0ef          	jal	ra,1c008b4a <sha3_256>
1c009aba:	94090513          	addi	a0,s2,-1728
1c009abe:	9526                	add	a0,a0,s1
1c009ac0:	02000593          	li	a1,32
1c009ac4:	211d                	jal	1c009eea <randombytes>
1c009ac6:	40b2                	lw	ra,12(sp)
1c009ac8:	4422                	lw	s0,8(sp)
1c009aca:	4492                	lw	s1,4(sp)
1c009acc:	4902                	lw	s2,0(sp)
1c009ace:	4501                	li	a0,0
1c009ad0:	0141                	addi	sp,sp,16
1c009ad2:	8082                	ret
1c009ad4:	6605                	lui	a2,0x1
1c009ad6:	92060613          	addi	a2,a2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c009ada:	8722                	mv	a4,s0
1c009adc:	9626                	add	a2,a2,s1
1c009ade:	00074683          	lbu	a3,0(a4)
1c009ae2:	0785                	addi	a5,a5,1
1c009ae4:	fed78fa3          	sb	a3,-1(a5)
1c009ae8:	0705                	addi	a4,a4,1
1c009aea:	fec79ae3          	bne	a5,a2,1c009ade <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x10a>
1c009aee:	bf6d                	j	1c009aa8 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c009af0:	49f00893          	li	a7,1183
1c009af4:	4505                	li	a0,1
1c009af6:	b7a1                	j	1c009a3e <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6a>
1c009af8:	4a000893          	li	a7,1184
1c009afc:	4501                	li	a0,0
1c009afe:	b781                	j	1c009a3e <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6a>
1c009b00:	49e00893          	li	a7,1182
1c009b04:	4509                	li	a0,2
1c009b06:	bf25                	j	1c009a3e <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6a>

1c009b08 <PQCLEAN_KYBER768_CLEAN_ntt>:
1c009b08:	7139                	addi	sp,sp,-64
1c009b0a:	da26                	sw	s1,52(sp)
1c009b0c:	d256                	sw	s5,36(sp)
1c009b0e:	d05a                	sw	s6,32(sp)
1c009b10:	ce5e                	sw	s7,28(sp)
1c009b12:	cc62                	sw	s8,24(sp)
1c009b14:	ca66                	sw	s9,20(sp)
1c009b16:	de06                	sw	ra,60(sp)
1c009b18:	dc22                	sw	s0,56(sp)
1c009b1a:	d84a                	sw	s2,48(sp)
1c009b1c:	d64e                	sw	s3,44(sp)
1c009b1e:	d452                	sw	s4,40(sp)
1c009b20:	c86a                	sw	s10,16(sp)
1c009b22:	c66e                	sw	s11,12(sp)
1c009b24:	8b2a                	mv	s6,a0
1c009b26:	4c9d                	li	s9,7
1c009b28:	d0a00493          	li	s1,-758
1c009b2c:	4b85                	li	s7,1
1c009b2e:	08000a93          	li	s5,128
1c009b32:	0ff00c13          	li	s8,255
1c009b36:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c009b3a:	1c0007b7          	lui	a5,0x1c000
1c009b3e:	4401                	li	s0,0
1c009b40:	00199a13          	slli	s4,s3,0x1
1c009b44:	15078793          	addi	a5,a5,336 # 1c000150 <PQCLEAN_KYBER768_CLEAN_zetas>
1c009b48:	008a8933          	add	s2,s5,s0
1c009b4c:	9a3e                	add	s4,s4,a5
1c009b4e:	8bce                	mv	s7,s3
1c009b50:	05247b63          	bleu	s2,s0,1c009ba6 <PQCLEAN_KYBER768_CLEAN_ntt+0x9e>
1c009b54:	00191793          	slli	a5,s2,0x1
1c009b58:	00fb0d33          	add	s10,s6,a5
1c009b5c:	0406                	slli	s0,s0,0x1
1c009b5e:	945a                	add	s0,s0,s6
1c009b60:	8dea                	mv	s11,s10
1c009b62:	000d1503          	lh	a0,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c009b66:	0409                	addi	s0,s0,2
1c009b68:	02950533          	mul	a0,a0,s1
1c009b6c:	2bed                	jal	1c00a166 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009b6e:	ffe45703          	lhu	a4,-2(s0)
1c009b72:	0542                	slli	a0,a0,0x10
1c009b74:	8141                	srli	a0,a0,0x10
1c009b76:	8f09                	sub	a4,a4,a0
1c009b78:	00ed1023          	sh	a4,0(s10)
1c009b7c:	ffe45703          	lhu	a4,-2(s0)
1c009b80:	0d09                	addi	s10,s10,2
1c009b82:	953a                	add	a0,a0,a4
1c009b84:	fea41f23          	sh	a0,-2(s0)
1c009b88:	fc8d9de3          	bne	s11,s0,1c009b62 <PQCLEAN_KYBER768_CLEAN_ntt+0x5a>
1c009b8c:	01590433          	add	s0,s2,s5
1c009b90:	008c6d63          	bltu	s8,s0,1c009baa <PQCLEAN_KYBER768_CLEAN_ntt+0xa2>
1c009b94:	0985                	addi	s3,s3,1
1c009b96:	008a8933          	add	s2,s5,s0
1c009b9a:	000a1483          	lh	s1,0(s4)
1c009b9e:	8bce                	mv	s7,s3
1c009ba0:	0a09                	addi	s4,s4,2
1c009ba2:	fb2469e3          	bltu	s0,s2,1c009b54 <PQCLEAN_KYBER768_CLEAN_ntt+0x4c>
1c009ba6:	844a                	mv	s0,s2
1c009ba8:	b7f5                	j	1c009b94 <PQCLEAN_KYBER768_CLEAN_ntt+0x8c>
1c009baa:	1cfd                	addi	s9,s9,-1
1c009bac:	001ada93          	srli	s5,s5,0x1
1c009bb0:	000c8b63          	beqz	s9,1c009bc6 <PQCLEAN_KYBER768_CLEAN_ntt+0xbe>
1c009bb4:	1c0007b7          	lui	a5,0x1c000
1c009bb8:	0986                	slli	s3,s3,0x1
1c009bba:	15078793          	addi	a5,a5,336 # 1c000150 <PQCLEAN_KYBER768_CLEAN_zetas>
1c009bbe:	99be                	add	s3,s3,a5
1c009bc0:	00099483          	lh	s1,0(s3)
1c009bc4:	bf8d                	j	1c009b36 <PQCLEAN_KYBER768_CLEAN_ntt+0x2e>
1c009bc6:	50f2                	lw	ra,60(sp)
1c009bc8:	5462                	lw	s0,56(sp)
1c009bca:	54d2                	lw	s1,52(sp)
1c009bcc:	5942                	lw	s2,48(sp)
1c009bce:	59b2                	lw	s3,44(sp)
1c009bd0:	5a22                	lw	s4,40(sp)
1c009bd2:	5a92                	lw	s5,36(sp)
1c009bd4:	5b02                	lw	s6,32(sp)
1c009bd6:	4bf2                	lw	s7,28(sp)
1c009bd8:	4c62                	lw	s8,24(sp)
1c009bda:	4cd2                	lw	s9,20(sp)
1c009bdc:	4d42                	lw	s10,16(sp)
1c009bde:	4db2                	lw	s11,12(sp)
1c009be0:	6121                	addi	sp,sp,64
1c009be2:	8082                	ret

1c009be4 <PQCLEAN_KYBER768_CLEAN_basemul>:
1c009be4:	00261783          	lh	a5,2(a2)
1c009be8:	00259703          	lh	a4,2(a1)
1c009bec:	1101                	addi	sp,sp,-32
1c009bee:	cc22                	sw	s0,24(sp)
1c009bf0:	842a                	mv	s0,a0
1c009bf2:	02f70533          	mul	a0,a4,a5
1c009bf6:	ce06                	sw	ra,28(sp)
1c009bf8:	ca26                	sw	s1,20(sp)
1c009bfa:	c84a                	sw	s2,16(sp)
1c009bfc:	c64e                	sw	s3,12(sp)
1c009bfe:	892e                	mv	s2,a1
1c009c00:	84b2                	mv	s1,a2
1c009c02:	89b6                	mv	s3,a3
1c009c04:	238d                	jal	1c00a166 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c06:	00a41023          	sh	a0,0(s0)
1c009c0a:	03350533          	mul	a0,a0,s3
1c009c0e:	2ba1                	jal	1c00a166 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c10:	00a41023          	sh	a0,0(s0)
1c009c14:	00049783          	lh	a5,0(s1)
1c009c18:	00091503          	lh	a0,0(s2)
1c009c1c:	02f50533          	mul	a0,a0,a5
1c009c20:	2399                	jal	1c00a166 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c22:	00045783          	lhu	a5,0(s0)
1c009c26:	953e                	add	a0,a0,a5
1c009c28:	00a41023          	sh	a0,0(s0)
1c009c2c:	00249783          	lh	a5,2(s1)
1c009c30:	00091503          	lh	a0,0(s2)
1c009c34:	02f50533          	mul	a0,a0,a5
1c009c38:	233d                	jal	1c00a166 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c3a:	00a41123          	sh	a0,2(s0)
1c009c3e:	00049783          	lh	a5,0(s1)
1c009c42:	00291503          	lh	a0,2(s2)
1c009c46:	02f50533          	mul	a0,a0,a5
1c009c4a:	2b31                	jal	1c00a166 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c4c:	00245783          	lhu	a5,2(s0)
1c009c50:	40f2                	lw	ra,28(sp)
1c009c52:	953e                	add	a0,a0,a5
1c009c54:	00a41123          	sh	a0,2(s0)
1c009c58:	4462                	lw	s0,24(sp)
1c009c5a:	44d2                	lw	s1,20(sp)
1c009c5c:	4942                	lw	s2,16(sp)
1c009c5e:	49b2                	lw	s3,12(sp)
1c009c60:	6105                	addi	sp,sp,32
1c009c62:	8082                	ret

1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>:
1c009c64:	6805                	lui	a6,0x1
1c009c66:	18050893          	addi	a7,a0,384
1c009c6a:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009c6e:	00059703          	lh	a4,0(a1)
1c009c72:	00259783          	lh	a5,2(a1)
1c009c76:	40f75613          	srai	a2,a4,0xf
1c009c7a:	40f7d693          	srai	a3,a5,0xf
1c009c7e:	01067633          	and	a2,a2,a6
1c009c82:	0106f6b3          	and	a3,a3,a6
1c009c86:	9732                	add	a4,a4,a2
1c009c88:	97b6                	add	a5,a5,a3
1c009c8a:	0742                	slli	a4,a4,0x10
1c009c8c:	07c2                	slli	a5,a5,0x10
1c009c8e:	8341                	srli	a4,a4,0x10
1c009c90:	83c1                	srli	a5,a5,0x10
1c009c92:	00479613          	slli	a2,a5,0x4
1c009c96:	00875693          	srli	a3,a4,0x8
1c009c9a:	8ed1                	or	a3,a3,a2
1c009c9c:	8391                	srli	a5,a5,0x4
1c009c9e:	00e50023          	sb	a4,0(a0)
1c009ca2:	00d500a3          	sb	a3,1(a0)
1c009ca6:	00f50123          	sb	a5,2(a0)
1c009caa:	050d                	addi	a0,a0,3
1c009cac:	0591                	addi	a1,a1,4
1c009cae:	fca890e3          	bne	a7,a0,1c009c6e <PQCLEAN_KYBER768_CLEAN_poly_tobytes+0xa>
1c009cb2:	8082                	ret

1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c009cb4:	7175                	addi	sp,sp,-144
1c009cb6:	c522                	sw	s0,136(sp)
1c009cb8:	86b2                	mv	a3,a2
1c009cba:	842a                	mv	s0,a0
1c009cbc:	862e                	mv	a2,a1
1c009cbe:	850a                	mv	a0,sp
1c009cc0:	08000593          	li	a1,128
1c009cc4:	c706                	sw	ra,140(sp)
1c009cc6:	2b31                	jal	1c00a1e2 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c009cc8:	858a                	mv	a1,sp
1c009cca:	8522                	mv	a0,s0
1c009ccc:	efefe0ef          	jal	ra,1c0083ca <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c009cd0:	40ba                	lw	ra,140(sp)
1c009cd2:	442a                	lw	s0,136(sp)
1c009cd4:	6149                	addi	sp,sp,144
1c009cd6:	8082                	ret

1c009cd8 <PQCLEAN_KYBER768_CLEAN_poly_ntt>:
1c009cd8:	1141                	addi	sp,sp,-16
1c009cda:	c422                	sw	s0,8(sp)
1c009cdc:	842a                	mv	s0,a0
1c009cde:	c226                	sw	s1,4(sp)
1c009ce0:	c606                	sw	ra,12(sp)
1c009ce2:	20040493          	addi	s1,s0,512
1c009ce6:	350d                	jal	1c009b08 <PQCLEAN_KYBER768_CLEAN_ntt>
1c009ce8:	00041503          	lh	a0,0(s0)
1c009cec:	0409                	addi	s0,s0,2
1c009cee:	2961                	jal	1c00a186 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c009cf0:	fea41f23          	sh	a0,-2(s0)
1c009cf4:	fe941ae3          	bne	s0,s1,1c009ce8 <PQCLEAN_KYBER768_CLEAN_poly_ntt+0x10>
1c009cf8:	40b2                	lw	ra,12(sp)
1c009cfa:	4422                	lw	s0,8(sp)
1c009cfc:	4492                	lw	s1,4(sp)
1c009cfe:	0141                	addi	sp,sp,16
1c009d00:	8082                	ret

1c009d02 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c009d02:	1101                	addi	sp,sp,-32
1c009d04:	ca26                	sw	s1,20(sp)
1c009d06:	c256                	sw	s5,4(sp)
1c009d08:	1c0004b7          	lui	s1,0x1c000
1c009d0c:	1c000ab7          	lui	s5,0x1c000
1c009d10:	c84a                	sw	s2,16(sp)
1c009d12:	c64e                	sw	s3,12(sp)
1c009d14:	c452                	sw	s4,8(sp)
1c009d16:	ce06                	sw	ra,28(sp)
1c009d18:	cc22                	sw	s0,24(sp)
1c009d1a:	1d048493          	addi	s1,s1,464 # 1c0001d0 <PQCLEAN_KYBER768_CLEAN_zetas+0x80>
1c009d1e:	00450a13          	addi	s4,a0,4
1c009d22:	00458993          	addi	s3,a1,4
1c009d26:	00460913          	addi	s2,a2,4
1c009d2a:	250a8a93          	addi	s5,s5,592 # 1c000250 <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c009d2e:	00049403          	lh	s0,0(s1)
1c009d32:	ffc90613          	addi	a2,s2,-4
1c009d36:	ffc98593          	addi	a1,s3,-4
1c009d3a:	ffca0513          	addi	a0,s4,-4
1c009d3e:	86a2                	mv	a3,s0
1c009d40:	3555                	jal	1c009be4 <PQCLEAN_KYBER768_CLEAN_basemul>
1c009d42:	408006b3          	neg	a3,s0
1c009d46:	06c2                	slli	a3,a3,0x10
1c009d48:	864a                	mv	a2,s2
1c009d4a:	85ce                	mv	a1,s3
1c009d4c:	8552                	mv	a0,s4
1c009d4e:	86c1                	srai	a3,a3,0x10
1c009d50:	0489                	addi	s1,s1,2
1c009d52:	3d49                	jal	1c009be4 <PQCLEAN_KYBER768_CLEAN_basemul>
1c009d54:	0a21                	addi	s4,s4,8
1c009d56:	09a1                	addi	s3,s3,8
1c009d58:	0921                	addi	s2,s2,8
1c009d5a:	fc9a9ae3          	bne	s5,s1,1c009d2e <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x2c>
1c009d5e:	40f2                	lw	ra,28(sp)
1c009d60:	4462                	lw	s0,24(sp)
1c009d62:	44d2                	lw	s1,20(sp)
1c009d64:	4942                	lw	s2,16(sp)
1c009d66:	49b2                	lw	s3,12(sp)
1c009d68:	4a22                	lw	s4,8(sp)
1c009d6a:	4a92                	lw	s5,4(sp)
1c009d6c:	6105                	addi	sp,sp,32
1c009d6e:	8082                	ret

1c009d70 <PQCLEAN_KYBER768_CLEAN_poly_tomont>:
1c009d70:	1141                	addi	sp,sp,-16
1c009d72:	c422                	sw	s0,8(sp)
1c009d74:	c226                	sw	s1,4(sp)
1c009d76:	c04a                	sw	s2,0(sp)
1c009d78:	c606                	sw	ra,12(sp)
1c009d7a:	842a                	mv	s0,a0
1c009d7c:	20050913          	addi	s2,a0,512
1c009d80:	54900493          	li	s1,1353
1c009d84:	00041503          	lh	a0,0(s0)
1c009d88:	0409                	addi	s0,s0,2
1c009d8a:	02950533          	mul	a0,a0,s1
1c009d8e:	2ee1                	jal	1c00a166 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009d90:	fea41f23          	sh	a0,-2(s0)
1c009d94:	ff2418e3          	bne	s0,s2,1c009d84 <PQCLEAN_KYBER768_CLEAN_poly_tomont+0x14>
1c009d98:	40b2                	lw	ra,12(sp)
1c009d9a:	4422                	lw	s0,8(sp)
1c009d9c:	4492                	lw	s1,4(sp)
1c009d9e:	4902                	lw	s2,0(sp)
1c009da0:	0141                	addi	sp,sp,16
1c009da2:	8082                	ret

1c009da4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c009da4:	1141                	addi	sp,sp,-16
1c009da6:	c422                	sw	s0,8(sp)
1c009da8:	c226                	sw	s1,4(sp)
1c009daa:	c606                	sw	ra,12(sp)
1c009dac:	842a                	mv	s0,a0
1c009dae:	20050493          	addi	s1,a0,512
1c009db2:	00041503          	lh	a0,0(s0)
1c009db6:	0409                	addi	s0,s0,2
1c009db8:	26f9                	jal	1c00a186 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c009dba:	fea41f23          	sh	a0,-2(s0)
1c009dbe:	fe941ae3          	bne	s0,s1,1c009db2 <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c009dc2:	40b2                	lw	ra,12(sp)
1c009dc4:	4422                	lw	s0,8(sp)
1c009dc6:	4492                	lw	s1,4(sp)
1c009dc8:	0141                	addi	sp,sp,16
1c009dca:	8082                	ret

1c009dcc <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c009dcc:	20058693          	addi	a3,a1,512
1c009dd0:	0005d783          	lhu	a5,0(a1)
1c009dd4:	00065703          	lhu	a4,0(a2)
1c009dd8:	0589                	addi	a1,a1,2
1c009dda:	97ba                	add	a5,a5,a4
1c009ddc:	00f51023          	sh	a5,0(a0)
1c009de0:	0609                	addi	a2,a2,2
1c009de2:	0509                	addi	a0,a0,2
1c009de4:	fed596e3          	bne	a1,a3,1c009dd0 <PQCLEAN_KYBER768_CLEAN_poly_add+0x4>
1c009de8:	8082                	ret

1c009dea <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>:
1c009dea:	1141                	addi	sp,sp,-16
1c009dec:	c606                	sw	ra,12(sp)
1c009dee:	c422                	sw	s0,8(sp)
1c009df0:	c226                	sw	s1,4(sp)
1c009df2:	842a                	mv	s0,a0
1c009df4:	84ae                	mv	s1,a1
1c009df6:	35bd                	jal	1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009df8:	20048593          	addi	a1,s1,512
1c009dfc:	18040513          	addi	a0,s0,384
1c009e00:	3595                	jal	1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009e02:	30040513          	addi	a0,s0,768
1c009e06:	4422                	lw	s0,8(sp)
1c009e08:	40b2                	lw	ra,12(sp)
1c009e0a:	40048593          	addi	a1,s1,1024
1c009e0e:	4492                	lw	s1,4(sp)
1c009e10:	0141                	addi	sp,sp,16
1c009e12:	bd89                	j	1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>

1c009e14 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c009e14:	1141                	addi	sp,sp,-16
1c009e16:	c606                	sw	ra,12(sp)
1c009e18:	c422                	sw	s0,8(sp)
1c009e1a:	842a                	mv	s0,a0
1c009e1c:	3d75                	jal	1c009cd8 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c009e1e:	20040513          	addi	a0,s0,512
1c009e22:	3d5d                	jal	1c009cd8 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c009e24:	40040513          	addi	a0,s0,1024
1c009e28:	4422                	lw	s0,8(sp)
1c009e2a:	40b2                	lw	ra,12(sp)
1c009e2c:	0141                	addi	sp,sp,16
1c009e2e:	b56d                	j	1c009cd8 <PQCLEAN_KYBER768_CLEAN_poly_ntt>

1c009e30 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c009e30:	df010113          	addi	sp,sp,-528
1c009e34:	20112623          	sw	ra,524(sp)
1c009e38:	20812423          	sw	s0,520(sp)
1c009e3c:	20912223          	sw	s1,516(sp)
1c009e40:	21212023          	sw	s2,512(sp)
1c009e44:	842a                	mv	s0,a0
1c009e46:	84ae                	mv	s1,a1
1c009e48:	8932                	mv	s2,a2
1c009e4a:	3d65                	jal	1c009d02 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009e4c:	20090613          	addi	a2,s2,512
1c009e50:	20048593          	addi	a1,s1,512
1c009e54:	850a                	mv	a0,sp
1c009e56:	3575                	jal	1c009d02 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009e58:	860a                	mv	a2,sp
1c009e5a:	85a2                	mv	a1,s0
1c009e5c:	8522                	mv	a0,s0
1c009e5e:	37bd                	jal	1c009dcc <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009e60:	40090613          	addi	a2,s2,1024
1c009e64:	40048593          	addi	a1,s1,1024
1c009e68:	850a                	mv	a0,sp
1c009e6a:	3d61                	jal	1c009d02 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009e6c:	860a                	mv	a2,sp
1c009e6e:	85a2                	mv	a1,s0
1c009e70:	8522                	mv	a0,s0
1c009e72:	3fa9                	jal	1c009dcc <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009e74:	8522                	mv	a0,s0
1c009e76:	373d                	jal	1c009da4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009e78:	20c12083          	lw	ra,524(sp)
1c009e7c:	20812403          	lw	s0,520(sp)
1c009e80:	20412483          	lw	s1,516(sp)
1c009e84:	20012903          	lw	s2,512(sp)
1c009e88:	21010113          	addi	sp,sp,528
1c009e8c:	8082                	ret

1c009e8e <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c009e8e:	1141                	addi	sp,sp,-16
1c009e90:	c606                	sw	ra,12(sp)
1c009e92:	c422                	sw	s0,8(sp)
1c009e94:	842a                	mv	s0,a0
1c009e96:	3739                	jal	1c009da4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009e98:	20040513          	addi	a0,s0,512
1c009e9c:	3721                	jal	1c009da4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009e9e:	40040513          	addi	a0,s0,1024
1c009ea2:	4422                	lw	s0,8(sp)
1c009ea4:	40b2                	lw	ra,12(sp)
1c009ea6:	0141                	addi	sp,sp,16
1c009ea8:	bdf5                	j	1c009da4 <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c009eaa <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c009eaa:	1101                	addi	sp,sp,-32
1c009eac:	cc22                	sw	s0,24(sp)
1c009eae:	ca26                	sw	s1,20(sp)
1c009eb0:	c84a                	sw	s2,16(sp)
1c009eb2:	c64e                	sw	s3,12(sp)
1c009eb4:	c452                	sw	s4,8(sp)
1c009eb6:	ce06                	sw	ra,28(sp)
1c009eb8:	8a2a                	mv	s4,a0
1c009eba:	89ae                	mv	s3,a1
1c009ebc:	8932                	mv	s2,a2
1c009ebe:	4401                	li	s0,0
1c009ec0:	60000493          	li	s1,1536
1c009ec4:	00890633          	add	a2,s2,s0
1c009ec8:	008985b3          	add	a1,s3,s0
1c009ecc:	008a0533          	add	a0,s4,s0
1c009ed0:	20040413          	addi	s0,s0,512
1c009ed4:	3de5                	jal	1c009dcc <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009ed6:	fe9417e3          	bne	s0,s1,1c009ec4 <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c009eda:	40f2                	lw	ra,28(sp)
1c009edc:	4462                	lw	s0,24(sp)
1c009ede:	44d2                	lw	s1,20(sp)
1c009ee0:	4942                	lw	s2,16(sp)
1c009ee2:	49b2                	lw	s3,12(sp)
1c009ee4:	4a22                	lw	s4,8(sp)
1c009ee6:	6105                	addi	sp,sp,32
1c009ee8:	8082                	ret

1c009eea <randombytes>:
1c009eea:	26058d63          	beqz	a1,1c00a164 <randombytes+0x27a>
1c009eee:	1c0046b7          	lui	a3,0x1c004
1c009ef2:	7139                	addi	sp,sp,-64
1c009ef4:	2c468693          	addi	a3,a3,708 # 1c0042c4 <outleft>
1c009ef8:	da4a                	sw	s2,52(sp)
1c009efa:	d84e                	sw	s3,48(sp)
1c009efc:	95aa                	add	a1,a1,a0
1c009efe:	1c004737          	lui	a4,0x1c004
1c009f02:	1c0049b7          	lui	s3,0x1c004
1c009f06:	9e378937          	lui	s2,0x9e378
1c009f0a:	429c                	lw	a5,0(a3)
1c009f0c:	d652                	sw	s4,44(sp)
1c009f0e:	d456                	sw	s5,40(sp)
1c009f10:	de22                	sw	s0,60(sp)
1c009f12:	dc26                	sw	s1,56(sp)
1c009f14:	d25a                	sw	s6,36(sp)
1c009f16:	d05e                	sw	s7,32(sp)
1c009f18:	ce62                	sw	s8,28(sp)
1c009f1a:	cc66                	sw	s9,24(sp)
1c009f1c:	ca6a                	sw	s10,20(sp)
1c009f1e:	c86e                	sw	s11,16(sp)
1c009f20:	8aaa                	mv	s5,a0
1c009f22:	c62e                	sw	a1,12(sp)
1c009f24:	2a070a13          	addi	s4,a4,672 # 1c0042a0 <out>
1c009f28:	27098993          	addi	s3,s3,624 # 1c004270 <stack>
1c009f2c:	9b990913          	addi	s2,s2,-1607 # 9e3779b9 <pulp__FC+0x9e3779ba>
1c009f30:	cf9d                	beqz	a5,1c009f6e <randombytes+0x84>
1c009f32:	17fd                	addi	a5,a5,-1
1c009f34:	00279713          	slli	a4,a5,0x2
1c009f38:	9752                	add	a4,a4,s4
1c009f3a:	4318                	lw	a4,0(a4)
1c009f3c:	1c0046b7          	lui	a3,0x1c004
1c009f40:	00ea8023          	sb	a4,0(s5)
1c009f44:	2c468693          	addi	a3,a3,708 # 1c0042c4 <outleft>
1c009f48:	4732                	lw	a4,12(sp)
1c009f4a:	c29c                	sw	a5,0(a3)
1c009f4c:	0a85                	addi	s5,s5,1
1c009f4e:	feea91e3          	bne	s5,a4,1c009f30 <randombytes+0x46>
1c009f52:	5472                	lw	s0,60(sp)
1c009f54:	54e2                	lw	s1,56(sp)
1c009f56:	5952                	lw	s2,52(sp)
1c009f58:	59c2                	lw	s3,48(sp)
1c009f5a:	5a32                	lw	s4,44(sp)
1c009f5c:	5aa2                	lw	s5,40(sp)
1c009f5e:	5b12                	lw	s6,36(sp)
1c009f60:	5b82                	lw	s7,32(sp)
1c009f62:	4c72                	lw	s8,28(sp)
1c009f64:	4ce2                	lw	s9,24(sp)
1c009f66:	4d52                	lw	s10,20(sp)
1c009f68:	4dc2                	lw	s11,16(sp)
1c009f6a:	6121                	addi	sp,sp,64
1c009f6c:	8082                	ret
1c009f6e:	0009a583          	lw	a1,0(s3)
1c009f72:	0049a283          	lw	t0,4(s3)
1c009f76:	0585                	addi	a1,a1,1
1c009f78:	00b9a023          	sw	a1,0(s3)
1c009f7c:	0089a383          	lw	t2,8(s3)
1c009f80:	00c9a403          	lw	s0,12(s3)
1c009f84:	e999                	bnez	a1,1c009f9a <randombytes+0xb0>
1c009f86:	0285                	addi	t0,t0,1
1c009f88:	0059a223          	sw	t0,4(s3)
1c009f8c:	00029763          	bnez	t0,1c009f9a <randombytes+0xb0>
1c009f90:	0385                	addi	t2,t2,1
1c009f92:	0079a423          	sw	t2,8(s3)
1c009f96:	1c038363          	beqz	t2,1c00a15c <randombytes+0x272>
1c009f9a:	0109af83          	lw	t6,16(s3)
1c009f9e:	0149af03          	lw	t5,20(s3)
1c009fa2:	0189ae83          	lw	t4,24(s3)
1c009fa6:	01c9ae03          	lw	t3,28(s3)
1c009faa:	0209a303          	lw	t1,32(s3)
1c009fae:	0249a883          	lw	a7,36(s3)
1c009fb2:	0289a803          	lw	a6,40(s3)
1c009fb6:	02c9a503          	lw	a0,44(s3)
1c009fba:	478d                	li	a5,3
1c009fbc:	470d                	li	a4,3
1c009fbe:	c23e                	sw	a5,4(sp)
1c009fc0:	0095c593          	xori	a1,a1,9
1c009fc4:	0072c293          	xori	t0,t0,7
1c009fc8:	0093c393          	xori	t2,t2,9
1c009fcc:	00344413          	xori	s0,s0,3
1c009fd0:	002fcf93          	xori	t6,t6,2
1c009fd4:	003f4f13          	xori	t5,t5,3
1c009fd8:	008ece93          	xori	t4,t4,8
1c009fdc:	004e4e13          	xori	t3,t3,4
1c009fe0:	00634313          	xori	t1,t1,6
1c009fe4:	0028c893          	xori	a7,a7,2
1c009fe8:	00684813          	xori	a6,a6,6
1c009fec:	00454513          	xori	a0,a0,4
1c009ff0:	4b15                	li	s6,5
1c009ff2:	4ba5                	li	s7,9
1c009ff4:	4c1d                	li	s8,7
1c009ff6:	4c89                	li	s9,2
1c009ff8:	4d0d                	li	s10,3
1c009ffa:	4da1                	li	s11,8
1c009ffc:	c43a                	sw	a4,8(sp)
1c009ffe:	4781                	li	a5,0
1c00a000:	e377a737          	lui	a4,0xe377a
1c00a004:	b9070713          	addi	a4,a4,-1136 # e3779b90 <pulp__FC+0xe3779b91>
1c00a008:	00e784b3          	add	s1,a5,a4
1c00a00c:	97ca                	add	a5,a5,s2
1c00a00e:	01b55613          	srli	a2,a0,0x1b
1c00a012:	00354713          	xori	a4,a0,3
1c00a016:	00551693          	slli	a3,a0,0x5
1c00a01a:	8ed1                	or	a3,a3,a2
1c00a01c:	973e                	add	a4,a4,a5
1c00a01e:	8f35                	xor	a4,a4,a3
1c00a020:	95ba                	add	a1,a1,a4
1c00a022:	0195d613          	srli	a2,a1,0x19
1c00a026:	0015c713          	xori	a4,a1,1
1c00a02a:	00759693          	slli	a3,a1,0x7
1c00a02e:	8ed1                	or	a3,a3,a2
1c00a030:	973e                	add	a4,a4,a5
1c00a032:	8f35                	xor	a4,a4,a3
1c00a034:	92ba                	add	t0,t0,a4
1c00a036:	0172d613          	srli	a2,t0,0x17
1c00a03a:	0042c713          	xori	a4,t0,4
1c00a03e:	00929693          	slli	a3,t0,0x9
1c00a042:	8ed1                	or	a3,a3,a2
1c00a044:	973e                	add	a4,a4,a5
1c00a046:	8f35                	xor	a4,a4,a3
1c00a048:	93ba                	add	t2,t2,a4
1c00a04a:	0133d613          	srli	a2,t2,0x13
1c00a04e:	0013c713          	xori	a4,t2,1
1c00a052:	00d39693          	slli	a3,t2,0xd
1c00a056:	8ed1                	or	a3,a3,a2
1c00a058:	973e                	add	a4,a4,a5
1c00a05a:	8f35                	xor	a4,a4,a3
1c00a05c:	943a                	add	s0,s0,a4
1c00a05e:	01b45613          	srli	a2,s0,0x1b
1c00a062:	00544713          	xori	a4,s0,5
1c00a066:	00541693          	slli	a3,s0,0x5
1c00a06a:	8ed1                	or	a3,a3,a2
1c00a06c:	973e                	add	a4,a4,a5
1c00a06e:	8f35                	xor	a4,a4,a3
1c00a070:	9fba                	add	t6,t6,a4
1c00a072:	019fd613          	srli	a2,t6,0x19
1c00a076:	009fc713          	xori	a4,t6,9
1c00a07a:	007f9693          	slli	a3,t6,0x7
1c00a07e:	8ed1                	or	a3,a3,a2
1c00a080:	973e                	add	a4,a4,a5
1c00a082:	8f35                	xor	a4,a4,a3
1c00a084:	9f3a                	add	t5,t5,a4
1c00a086:	017f5613          	srli	a2,t5,0x17
1c00a08a:	002f4713          	xori	a4,t5,2
1c00a08e:	009f1693          	slli	a3,t5,0x9
1c00a092:	8ed1                	or	a3,a3,a2
1c00a094:	973e                	add	a4,a4,a5
1c00a096:	8f35                	xor	a4,a4,a3
1c00a098:	9eba                	add	t4,t4,a4
1c00a09a:	013ed613          	srli	a2,t4,0x13
1c00a09e:	006ec713          	xori	a4,t4,6
1c00a0a2:	00de9693          	slli	a3,t4,0xd
1c00a0a6:	8ed1                	or	a3,a3,a2
1c00a0a8:	973e                	add	a4,a4,a5
1c00a0aa:	8f35                	xor	a4,a4,a3
1c00a0ac:	9e3a                	add	t3,t3,a4
1c00a0ae:	01be5613          	srli	a2,t3,0x1b
1c00a0b2:	005e4713          	xori	a4,t3,5
1c00a0b6:	005e1693          	slli	a3,t3,0x5
1c00a0ba:	8ed1                	or	a3,a3,a2
1c00a0bc:	973e                	add	a4,a4,a5
1c00a0be:	8f35                	xor	a4,a4,a3
1c00a0c0:	933a                	add	t1,t1,a4
1c00a0c2:	01935613          	srli	a2,t1,0x19
1c00a0c6:	00334713          	xori	a4,t1,3
1c00a0ca:	00731693          	slli	a3,t1,0x7
1c00a0ce:	8ed1                	or	a3,a3,a2
1c00a0d0:	973e                	add	a4,a4,a5
1c00a0d2:	8f35                	xor	a4,a4,a3
1c00a0d4:	98ba                	add	a7,a7,a4
1c00a0d6:	0178d613          	srli	a2,a7,0x17
1c00a0da:	0058c713          	xori	a4,a7,5
1c00a0de:	00989693          	slli	a3,a7,0x9
1c00a0e2:	8ed1                	or	a3,a3,a2
1c00a0e4:	973e                	add	a4,a4,a5
1c00a0e6:	8f35                	xor	a4,a4,a3
1c00a0e8:	983a                	add	a6,a6,a4
1c00a0ea:	00884713          	xori	a4,a6,8
1c00a0ee:	00d81693          	slli	a3,a6,0xd
1c00a0f2:	01385613          	srli	a2,a6,0x13
1c00a0f6:	973e                	add	a4,a4,a5
1c00a0f8:	8ed1                	or	a3,a3,a2
1c00a0fa:	8f35                	xor	a4,a4,a3
1c00a0fc:	953a                	add	a0,a0,a4
1c00a0fe:	f09797e3          	bne	a5,s1,1c00a00c <randombytes+0x122>
1c00a102:	4692                	lw	a3,4(sp)
1c00a104:	4722                	lw	a4,8(sp)
1c00a106:	01f6c6b3          	xor	a3,a3,t6
1c00a10a:	c236                	sw	a3,4(sp)
1c00a10c:	01e74733          	xor	a4,a4,t5
1c00a110:	c6ef36b7          	lui	a3,0xc6ef3
1c00a114:	c43a                	sw	a4,8(sp)
1c00a116:	72068693          	addi	a3,a3,1824 # c6ef3720 <pulp__FC+0xc6ef3721>
1c00a11a:	01ddcdb3          	xor	s11,s11,t4
1c00a11e:	01cd4d33          	xor	s10,s10,t3
1c00a122:	006cccb3          	xor	s9,s9,t1
1c00a126:	011c4c33          	xor	s8,s8,a7
1c00a12a:	010bcbb3          	xor	s7,s7,a6
1c00a12e:	00ab4b33          	xor	s6,s6,a0
1c00a132:	ecd797e3          	bne	a5,a3,1c00a000 <randombytes+0x116>
1c00a136:	4792                	lw	a5,4(sp)
1c00a138:	00ea2223          	sw	a4,4(s4)
1c00a13c:	00fa2023          	sw	a5,0(s4)
1c00a140:	01ba2423          	sw	s11,8(s4)
1c00a144:	01aa2623          	sw	s10,12(s4)
1c00a148:	019a2823          	sw	s9,16(s4)
1c00a14c:	018a2a23          	sw	s8,20(s4)
1c00a150:	017a2c23          	sw	s7,24(s4)
1c00a154:	016a2e23          	sw	s6,28(s4)
1c00a158:	479d                	li	a5,7
1c00a15a:	bbe9                	j	1c009f34 <randombytes+0x4a>
1c00a15c:	0405                	addi	s0,s0,1
1c00a15e:	0089a623          	sw	s0,12(s3)
1c00a162:	bd25                	j	1c009f9a <randombytes+0xb0>
1c00a164:	8082                	ret

1c00a166 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00a166:	777d                	lui	a4,0xfffff
1c00a168:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00a16c:	02f507b3          	mul	a5,a0,a5
1c00a170:	07c2                	slli	a5,a5,0x10
1c00a172:	2ff70713          	addi	a4,a4,767
1c00a176:	87c1                	srai	a5,a5,0x10
1c00a178:	02e787b3          	mul	a5,a5,a4
1c00a17c:	953e                	add	a0,a0,a5
1c00a17e:	8541                	srai	a0,a0,0x10
1c00a180:	0542                	slli	a0,a0,0x10
1c00a182:	8541                	srai	a0,a0,0x10
1c00a184:	8082                	ret

1c00a186 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00a186:	6795                	lui	a5,0x5
1c00a188:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a18c:	02f507b3          	mul	a5,a0,a5
1c00a190:	02000737          	lui	a4,0x2000
1c00a194:	97ba                	add	a5,a5,a4
1c00a196:	6705                	lui	a4,0x1
1c00a198:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a19c:	87e9                	srai	a5,a5,0x1a
1c00a19e:	02e787b3          	mul	a5,a5,a4
1c00a1a2:	8d1d                	sub	a0,a0,a5
1c00a1a4:	0542                	slli	a0,a0,0x10
1c00a1a6:	8541                	srai	a0,a0,0x10
1c00a1a8:	8082                	ret

1c00a1aa <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00a1aa:	7139                	addi	sp,sp,-64
1c00a1ac:	da26                	sw	s1,52(sp)
1c00a1ae:	d84a                	sw	s2,48(sp)
1c00a1b0:	84b2                	mv	s1,a2
1c00a1b2:	892a                	mv	s2,a0
1c00a1b4:	02000613          	li	a2,32
1c00a1b8:	0068                	addi	a0,sp,12
1c00a1ba:	de06                	sw	ra,60(sp)
1c00a1bc:	dc22                	sw	s0,56(sp)
1c00a1be:	8436                	mv	s0,a3
1c00a1c0:	2049                	jal	1c00a242 <memcpy>
1c00a1c2:	006c                	addi	a1,sp,12
1c00a1c4:	854a                	mv	a0,s2
1c00a1c6:	02200613          	li	a2,34
1c00a1ca:	02910623          	sb	s1,44(sp)
1c00a1ce:	028106a3          	sb	s0,45(sp)
1c00a1d2:	ca2fe0ef          	jal	ra,1c008674 <shake128_absorb>
1c00a1d6:	50f2                	lw	ra,60(sp)
1c00a1d8:	5462                	lw	s0,56(sp)
1c00a1da:	54d2                	lw	s1,52(sp)
1c00a1dc:	5942                	lw	s2,48(sp)
1c00a1de:	6121                	addi	sp,sp,64
1c00a1e0:	8082                	ret

1c00a1e2 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00a1e2:	7139                	addi	sp,sp,-64
1c00a1e4:	87b2                	mv	a5,a2
1c00a1e6:	da26                	sw	s1,52(sp)
1c00a1e8:	d84a                	sw	s2,48(sp)
1c00a1ea:	84aa                	mv	s1,a0
1c00a1ec:	892e                	mv	s2,a1
1c00a1ee:	02000613          	li	a2,32
1c00a1f2:	85be                	mv	a1,a5
1c00a1f4:	0068                	addi	a0,sp,12
1c00a1f6:	de06                	sw	ra,60(sp)
1c00a1f8:	dc22                	sw	s0,56(sp)
1c00a1fa:	8436                	mv	s0,a3
1c00a1fc:	2099                	jal	1c00a242 <memcpy>
1c00a1fe:	0070                	addi	a2,sp,12
1c00a200:	85ca                	mv	a1,s2
1c00a202:	8526                	mv	a0,s1
1c00a204:	02100693          	li	a3,33
1c00a208:	02810623          	sb	s0,44(sp)
1c00a20c:	f04fe0ef          	jal	ra,1c008910 <shake256>
1c00a210:	50f2                	lw	ra,60(sp)
1c00a212:	5462                	lw	s0,56(sp)
1c00a214:	54d2                	lw	s1,52(sp)
1c00a216:	5942                	lw	s2,48(sp)
1c00a218:	6121                	addi	sp,sp,64
1c00a21a:	8082                	ret

1c00a21c <pos_wait_forever>:
1c00a21c:	f14027f3          	csrr	a5,mhartid
1c00a220:	8795                	srai	a5,a5,0x5
1c00a222:	03f7f793          	andi	a5,a5,63
1c00a226:	477d                	li	a4,31
1c00a228:	00e78363          	beq	a5,a4,1c00a22e <pos_wait_forever+0x12>
1c00a22c:	a001                	j	1c00a22c <pos_wait_forever+0x10>
1c00a22e:	1a10a7b7          	lui	a5,0x1a10a
1c00a232:	577d                	li	a4,-1
1c00a234:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a238:	10500073          	wfi
1c00a23c:	10500073          	wfi
1c00a240:	bfe5                	j	1c00a238 <pos_wait_forever+0x1c>

1c00a242 <memcpy>:
1c00a242:	00b567b3          	or	a5,a0,a1
1c00a246:	8b8d                	andi	a5,a5,3
1c00a248:	10078f63          	beqz	a5,1c00a366 <memcpy+0x124>
1c00a24c:	14060063          	beqz	a2,1c00a38c <memcpy+0x14a>
1c00a250:	00458793          	addi	a5,a1,4
1c00a254:	00450693          	addi	a3,a0,4
1c00a258:	00f537b3          	sltu	a5,a0,a5
1c00a25c:	00d5b6b3          	sltu	a3,a1,a3
1c00a260:	0017c793          	xori	a5,a5,1
1c00a264:	0016c693          	xori	a3,a3,1
1c00a268:	873e                	mv	a4,a5
1c00a26a:	87b6                	mv	a5,a3
1c00a26c:	8fd9                	or	a5,a5,a4
1c00a26e:	0ff7f793          	andi	a5,a5,255
1c00a272:	cff9                	beqz	a5,1c00a350 <memcpy+0x10e>
1c00a274:	00863793          	sltiu	a5,a2,8
1c00a278:	0017c793          	xori	a5,a5,1
1c00a27c:	0ff7f793          	andi	a5,a5,255
1c00a280:	cbe1                	beqz	a5,1c00a350 <memcpy+0x10e>
1c00a282:	40b007b3          	neg	a5,a1
1c00a286:	8b8d                	andi	a5,a5,3
1c00a288:	fff60313          	addi	t1,a2,-1
1c00a28c:	cfe5                	beqz	a5,1c00a384 <memcpy+0x142>
1c00a28e:	0005c683          	lbu	a3,0(a1)
1c00a292:	4705                	li	a4,1
1c00a294:	00d50023          	sb	a3,0(a0)
1c00a298:	00158893          	addi	a7,a1,1
1c00a29c:	00150813          	addi	a6,a0,1
1c00a2a0:	02e78963          	beq	a5,a4,1c00a2d2 <memcpy+0x90>
1c00a2a4:	0015c683          	lbu	a3,1(a1)
1c00a2a8:	470d                	li	a4,3
1c00a2aa:	00d500a3          	sb	a3,1(a0)
1c00a2ae:	00258893          	addi	a7,a1,2
1c00a2b2:	00250813          	addi	a6,a0,2
1c00a2b6:	ffe60313          	addi	t1,a2,-2
1c00a2ba:	00e79c63          	bne	a5,a4,1c00a2d2 <memcpy+0x90>
1c00a2be:	0025c703          	lbu	a4,2(a1)
1c00a2c2:	00358893          	addi	a7,a1,3
1c00a2c6:	00350813          	addi	a6,a0,3
1c00a2ca:	00e50123          	sb	a4,2(a0)
1c00a2ce:	ffd60313          	addi	t1,a2,-3
1c00a2d2:	8e1d                	sub	a2,a2,a5
1c00a2d4:	95be                	add	a1,a1,a5
1c00a2d6:	00265e13          	srli	t3,a2,0x2
1c00a2da:	97aa                	add	a5,a5,a0
1c00a2dc:	4701                	li	a4,0
1c00a2de:	4194                	lw	a3,0(a1)
1c00a2e0:	0705                	addi	a4,a4,1
1c00a2e2:	c394                	sw	a3,0(a5)
1c00a2e4:	0591                	addi	a1,a1,4
1c00a2e6:	0791                	addi	a5,a5,4
1c00a2e8:	ffc76be3          	bltu	a4,t3,1c00a2de <memcpy+0x9c>
1c00a2ec:	ffc67593          	andi	a1,a2,-4
1c00a2f0:	40b306b3          	sub	a3,t1,a1
1c00a2f4:	00b807b3          	add	a5,a6,a1
1c00a2f8:	00b88733          	add	a4,a7,a1
1c00a2fc:	06b60463          	beq	a2,a1,1c00a364 <memcpy+0x122>
1c00a300:	00074583          	lbu	a1,0(a4)
1c00a304:	fff68613          	addi	a2,a3,-1
1c00a308:	00b78023          	sb	a1,0(a5)
1c00a30c:	ce21                	beqz	a2,1c00a364 <memcpy+0x122>
1c00a30e:	00174583          	lbu	a1,1(a4)
1c00a312:	ffe68613          	addi	a2,a3,-2
1c00a316:	00b780a3          	sb	a1,1(a5)
1c00a31a:	c629                	beqz	a2,1c00a364 <memcpy+0x122>
1c00a31c:	00274583          	lbu	a1,2(a4)
1c00a320:	ffd68613          	addi	a2,a3,-3
1c00a324:	00b78123          	sb	a1,2(a5)
1c00a328:	ce15                	beqz	a2,1c00a364 <memcpy+0x122>
1c00a32a:	00374583          	lbu	a1,3(a4)
1c00a32e:	ffc68613          	addi	a2,a3,-4
1c00a332:	00b781a3          	sb	a1,3(a5)
1c00a336:	c61d                	beqz	a2,1c00a364 <memcpy+0x122>
1c00a338:	00474583          	lbu	a1,4(a4)
1c00a33c:	4615                	li	a2,5
1c00a33e:	00b78223          	sb	a1,4(a5)
1c00a342:	02c68163          	beq	a3,a2,1c00a364 <memcpy+0x122>
1c00a346:	00574703          	lbu	a4,5(a4)
1c00a34a:	00e782a3          	sb	a4,5(a5)
1c00a34e:	8082                	ret
1c00a350:	962e                	add	a2,a2,a1
1c00a352:	87aa                	mv	a5,a0
1c00a354:	0585                	addi	a1,a1,1
1c00a356:	fff5c703          	lbu	a4,-1(a1)
1c00a35a:	0785                	addi	a5,a5,1
1c00a35c:	fee78fa3          	sb	a4,-1(a5)
1c00a360:	fec59ae3          	bne	a1,a2,1c00a354 <memcpy+0x112>
1c00a364:	8082                	ret
1c00a366:	00367793          	andi	a5,a2,3
1c00a36a:	ee0793e3          	bnez	a5,1c00a250 <memcpy+0xe>
1c00a36e:	da7d                	beqz	a2,1c00a364 <memcpy+0x122>
1c00a370:	87aa                	mv	a5,a0
1c00a372:	0591                	addi	a1,a1,4
1c00a374:	ffc5a703          	lw	a4,-4(a1)
1c00a378:	0791                	addi	a5,a5,4
1c00a37a:	fee7ae23          	sw	a4,-4(a5)
1c00a37e:	1671                	addi	a2,a2,-4
1c00a380:	fa6d                	bnez	a2,1c00a372 <memcpy+0x130>
1c00a382:	8082                	ret
1c00a384:	88ae                	mv	a7,a1
1c00a386:	882a                	mv	a6,a0
1c00a388:	8332                	mv	t1,a2
1c00a38a:	b7a1                	j	1c00a2d2 <memcpy+0x90>
1c00a38c:	8082                	ret

1c00a38e <memmove>:
1c00a38e:	40b507b3          	sub	a5,a0,a1
1c00a392:	10c7e463          	bltu	a5,a2,1c00a49a <memmove+0x10c>
1c00a396:	12060b63          	beqz	a2,1c00a4cc <memmove+0x13e>
1c00a39a:	00458793          	addi	a5,a1,4
1c00a39e:	00450693          	addi	a3,a0,4
1c00a3a2:	00f537b3          	sltu	a5,a0,a5
1c00a3a6:	00d5b6b3          	sltu	a3,a1,a3
1c00a3aa:	0017c793          	xori	a5,a5,1
1c00a3ae:	0016c693          	xori	a3,a3,1
1c00a3b2:	873e                	mv	a4,a5
1c00a3b4:	87b6                	mv	a5,a3
1c00a3b6:	8fd9                	or	a5,a5,a4
1c00a3b8:	0ff7f793          	andi	a5,a5,255
1c00a3bc:	cfed                	beqz	a5,1c00a4b6 <memmove+0x128>
1c00a3be:	00863793          	sltiu	a5,a2,8
1c00a3c2:	0017c793          	xori	a5,a5,1
1c00a3c6:	0ff7f793          	andi	a5,a5,255
1c00a3ca:	c7f5                	beqz	a5,1c00a4b6 <memmove+0x128>
1c00a3cc:	40b007b3          	neg	a5,a1
1c00a3d0:	8b8d                	andi	a5,a5,3
1c00a3d2:	fff60313          	addi	t1,a2,-1
1c00a3d6:	cfe5                	beqz	a5,1c00a4ce <memmove+0x140>
1c00a3d8:	0005c683          	lbu	a3,0(a1)
1c00a3dc:	4705                	li	a4,1
1c00a3de:	00d50023          	sb	a3,0(a0)
1c00a3e2:	00150813          	addi	a6,a0,1
1c00a3e6:	00158893          	addi	a7,a1,1
1c00a3ea:	02e78963          	beq	a5,a4,1c00a41c <memmove+0x8e>
1c00a3ee:	0015c683          	lbu	a3,1(a1)
1c00a3f2:	470d                	li	a4,3
1c00a3f4:	00d500a3          	sb	a3,1(a0)
1c00a3f8:	00250813          	addi	a6,a0,2
1c00a3fc:	00258893          	addi	a7,a1,2
1c00a400:	ffe60313          	addi	t1,a2,-2
1c00a404:	00e79c63          	bne	a5,a4,1c00a41c <memmove+0x8e>
1c00a408:	0025c703          	lbu	a4,2(a1)
1c00a40c:	00350813          	addi	a6,a0,3
1c00a410:	00e50123          	sb	a4,2(a0)
1c00a414:	00358893          	addi	a7,a1,3
1c00a418:	ffd60313          	addi	t1,a2,-3
1c00a41c:	8e1d                	sub	a2,a2,a5
1c00a41e:	95be                	add	a1,a1,a5
1c00a420:	00265e13          	srli	t3,a2,0x2
1c00a424:	97aa                	add	a5,a5,a0
1c00a426:	4701                	li	a4,0
1c00a428:	4194                	lw	a3,0(a1)
1c00a42a:	0705                	addi	a4,a4,1
1c00a42c:	c394                	sw	a3,0(a5)
1c00a42e:	0591                	addi	a1,a1,4
1c00a430:	0791                	addi	a5,a5,4
1c00a432:	ffc76be3          	bltu	a4,t3,1c00a428 <memmove+0x9a>
1c00a436:	ffc67593          	andi	a1,a2,-4
1c00a43a:	40b306b3          	sub	a3,t1,a1
1c00a43e:	00b807b3          	add	a5,a6,a1
1c00a442:	00b88733          	add	a4,a7,a1
1c00a446:	08b60263          	beq	a2,a1,1c00a4ca <memmove+0x13c>
1c00a44a:	00074583          	lbu	a1,0(a4)
1c00a44e:	fff68613          	addi	a2,a3,-1
1c00a452:	00b78023          	sb	a1,0(a5)
1c00a456:	ca35                	beqz	a2,1c00a4ca <memmove+0x13c>
1c00a458:	00174583          	lbu	a1,1(a4)
1c00a45c:	ffe68613          	addi	a2,a3,-2
1c00a460:	00b780a3          	sb	a1,1(a5)
1c00a464:	c23d                	beqz	a2,1c00a4ca <memmove+0x13c>
1c00a466:	00274583          	lbu	a1,2(a4)
1c00a46a:	ffd68613          	addi	a2,a3,-3
1c00a46e:	00b78123          	sb	a1,2(a5)
1c00a472:	ce21                	beqz	a2,1c00a4ca <memmove+0x13c>
1c00a474:	00374583          	lbu	a1,3(a4)
1c00a478:	ffc68613          	addi	a2,a3,-4
1c00a47c:	00b781a3          	sb	a1,3(a5)
1c00a480:	c629                	beqz	a2,1c00a4ca <memmove+0x13c>
1c00a482:	00474583          	lbu	a1,4(a4)
1c00a486:	4615                	li	a2,5
1c00a488:	00b78223          	sb	a1,4(a5)
1c00a48c:	02c68f63          	beq	a3,a2,1c00a4ca <memmove+0x13c>
1c00a490:	00574703          	lbu	a4,5(a4)
1c00a494:	00e782a3          	sb	a4,5(a5)
1c00a498:	8082                	ret
1c00a49a:	167d                	addi	a2,a2,-1
1c00a49c:	00c587b3          	add	a5,a1,a2
1c00a4a0:	962a                	add	a2,a2,a0
1c00a4a2:	15fd                	addi	a1,a1,-1
1c00a4a4:	0007c703          	lbu	a4,0(a5)
1c00a4a8:	17fd                	addi	a5,a5,-1
1c00a4aa:	00e60023          	sb	a4,0(a2)
1c00a4ae:	167d                	addi	a2,a2,-1
1c00a4b0:	feb79ae3          	bne	a5,a1,1c00a4a4 <memmove+0x116>
1c00a4b4:	8082                	ret
1c00a4b6:	962a                	add	a2,a2,a0
1c00a4b8:	87aa                	mv	a5,a0
1c00a4ba:	0005c703          	lbu	a4,0(a1)
1c00a4be:	0785                	addi	a5,a5,1
1c00a4c0:	fee78fa3          	sb	a4,-1(a5)
1c00a4c4:	0585                	addi	a1,a1,1
1c00a4c6:	fec79ae3          	bne	a5,a2,1c00a4ba <memmove+0x12c>
1c00a4ca:	8082                	ret
1c00a4cc:	8082                	ret
1c00a4ce:	88ae                	mv	a7,a1
1c00a4d0:	882a                	mv	a6,a0
1c00a4d2:	8332                	mv	t1,a2
1c00a4d4:	b7a1                	j	1c00a41c <memmove+0x8e>

1c00a4d6 <strchr>:
1c00a4d6:	00054783          	lbu	a5,0(a0)
1c00a4da:	0ff5f593          	andi	a1,a1,255
1c00a4de:	00b78863          	beq	a5,a1,1c00a4ee <strchr+0x18>
1c00a4e2:	c799                	beqz	a5,1c00a4f0 <strchr+0x1a>
1c00a4e4:	0505                	addi	a0,a0,1
1c00a4e6:	00054783          	lbu	a5,0(a0)
1c00a4ea:	feb79ce3          	bne	a5,a1,1c00a4e2 <strchr+0xc>
1c00a4ee:	8082                	ret
1c00a4f0:	0015b593          	seqz	a1,a1
1c00a4f4:	40b005b3          	neg	a1,a1
1c00a4f8:	8d6d                	and	a0,a0,a1
1c00a4fa:	8082                	ret

1c00a4fc <puts>:
1c00a4fc:	00054783          	lbu	a5,0(a0)
1c00a500:	c78d                	beqz	a5,1c00a52a <puts+0x2e>
1c00a502:	f14026f3          	csrr	a3,mhartid
1c00a506:	00369713          	slli	a4,a3,0x3
1c00a50a:	1a10f637          	lui	a2,0x1a10f
1c00a50e:	0ff77713          	andi	a4,a4,255
1c00a512:	9732                	add	a4,a4,a2
1c00a514:	6609                	lui	a2,0x2
1c00a516:	068a                	slli	a3,a3,0x2
1c00a518:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a51c:	8ef1                	and	a3,a3,a2
1c00a51e:	9736                	add	a4,a4,a3
1c00a520:	c31c                	sw	a5,0(a4)
1c00a522:	0505                	addi	a0,a0,1
1c00a524:	00054783          	lbu	a5,0(a0)
1c00a528:	ffe5                	bnez	a5,1c00a520 <puts+0x24>
1c00a52a:	f1402773          	csrr	a4,mhartid
1c00a52e:	00371793          	slli	a5,a4,0x3
1c00a532:	1a10f6b7          	lui	a3,0x1a10f
1c00a536:	0ff7f793          	andi	a5,a5,255
1c00a53a:	97b6                	add	a5,a5,a3
1c00a53c:	6689                	lui	a3,0x2
1c00a53e:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a542:	070a                	slli	a4,a4,0x2
1c00a544:	8f75                	and	a4,a4,a3
1c00a546:	97ba                	add	a5,a5,a4
1c00a548:	4729                	li	a4,10
1c00a54a:	c398                	sw	a4,0(a5)
1c00a54c:	4501                	li	a0,0
1c00a54e:	8082                	ret

1c00a550 <pos_libc_fputc_locked>:
1c00a550:	6689                	lui	a3,0x2
1c00a552:	f14027f3          	csrr	a5,mhartid
1c00a556:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a55a:	00379713          	slli	a4,a5,0x3
1c00a55e:	078a                	slli	a5,a5,0x2
1c00a560:	8ff5                	and	a5,a5,a3
1c00a562:	0ff77713          	andi	a4,a4,255
1c00a566:	1a10f6b7          	lui	a3,0x1a10f
1c00a56a:	9736                	add	a4,a4,a3
1c00a56c:	0ff57513          	andi	a0,a0,255
1c00a570:	97ba                	add	a5,a5,a4
1c00a572:	c388                	sw	a0,0(a5)
1c00a574:	4501                	li	a0,0
1c00a576:	8082                	ret

1c00a578 <putchar>:
1c00a578:	6689                	lui	a3,0x2
1c00a57a:	f14027f3          	csrr	a5,mhartid
1c00a57e:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a582:	00379713          	slli	a4,a5,0x3
1c00a586:	078a                	slli	a5,a5,0x2
1c00a588:	8ff5                	and	a5,a5,a3
1c00a58a:	0ff77713          	andi	a4,a4,255
1c00a58e:	1a10f6b7          	lui	a3,0x1a10f
1c00a592:	9736                	add	a4,a4,a3
1c00a594:	0ff57513          	andi	a0,a0,255
1c00a598:	97ba                	add	a5,a5,a4
1c00a59a:	c388                	sw	a0,0(a5)
1c00a59c:	4501                	li	a0,0
1c00a59e:	8082                	ret

1c00a5a0 <pos_libc_prf_locked>:
1c00a5a0:	a0b1                	j	1c00a5ec <pos_libc_prf>

1c00a5a2 <exit>:
1c00a5a2:	800007b7          	lui	a5,0x80000
1c00a5a6:	1141                	addi	sp,sp,-16
1c00a5a8:	8d5d                	or	a0,a0,a5
1c00a5aa:	c606                	sw	ra,12(sp)
1c00a5ac:	1a1047b7          	lui	a5,0x1a104
1c00a5b0:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a5b4:	31a5                	jal	1c00a21c <pos_wait_forever>

1c00a5b6 <pos_io_start>:
1c00a5b6:	4501                	li	a0,0
1c00a5b8:	8082                	ret

1c00a5ba <pos_io_stop>:
1c00a5ba:	4501                	li	a0,0
1c00a5bc:	8082                	ret

1c00a5be <printf>:
1c00a5be:	7139                	addi	sp,sp,-64
1c00a5c0:	02410313          	addi	t1,sp,36
1c00a5c4:	d432                	sw	a2,40(sp)
1c00a5c6:	862a                	mv	a2,a0
1c00a5c8:	1c00a537          	lui	a0,0x1c00a
1c00a5cc:	d22e                	sw	a1,36(sp)
1c00a5ce:	d636                	sw	a3,44(sp)
1c00a5d0:	4589                	li	a1,2
1c00a5d2:	869a                	mv	a3,t1
1c00a5d4:	55050513          	addi	a0,a0,1360 # 1c00a550 <pos_libc_fputc_locked>
1c00a5d8:	ce06                	sw	ra,28(sp)
1c00a5da:	d83a                	sw	a4,48(sp)
1c00a5dc:	da3e                	sw	a5,52(sp)
1c00a5de:	dc42                	sw	a6,56(sp)
1c00a5e0:	de46                	sw	a7,60(sp)
1c00a5e2:	c61a                	sw	t1,12(sp)
1c00a5e4:	3f75                	jal	1c00a5a0 <pos_libc_prf_locked>
1c00a5e6:	40f2                	lw	ra,28(sp)
1c00a5e8:	6121                	addi	sp,sp,64
1c00a5ea:	8082                	ret

1c00a5ec <pos_libc_prf>:
1c00a5ec:	7169                	addi	sp,sp,-304
1c00a5ee:	12812423          	sw	s0,296(sp)
1c00a5f2:	12912223          	sw	s1,292(sp)
1c00a5f6:	11612823          	sw	s6,272(sp)
1c00a5fa:	11712623          	sw	s7,268(sp)
1c00a5fe:	11812423          	sw	s8,264(sp)
1c00a602:	11912223          	sw	s9,260(sp)
1c00a606:	11a12023          	sw	s10,256(sp)
1c00a60a:	12112623          	sw	ra,300(sp)
1c00a60e:	13212023          	sw	s2,288(sp)
1c00a612:	11312e23          	sw	s3,284(sp)
1c00a616:	11412c23          	sw	s4,280(sp)
1c00a61a:	11512a23          	sw	s5,276(sp)
1c00a61e:	dfee                	sw	s11,252(sp)
1c00a620:	8b2a                	mv	s6,a0
1c00a622:	8d2e                	mv	s10,a1
1c00a624:	84b2                	mv	s1,a2
1c00a626:	8c36                	mv	s8,a3
1c00a628:	4401                	li	s0,0
1c00a62a:	1c000bb7          	lui	s7,0x1c000
1c00a62e:	02410c93          	addi	s9,sp,36
1c00a632:	0004c503          	lbu	a0,0(s1)
1c00a636:	0485                	addi	s1,s1,1
1c00a638:	cd19                	beqz	a0,1c00a656 <pos_libc_prf+0x6a>
1c00a63a:	02500793          	li	a5,37
1c00a63e:	04f50863          	beq	a0,a5,1c00a68e <pos_libc_prf+0xa2>
1c00a642:	85ea                	mv	a1,s10
1c00a644:	9b02                	jalr	s6
1c00a646:	57fd                	li	a5,-1
1c00a648:	24f50863          	beq	a0,a5,1c00a898 <pos_libc_prf+0x2ac>
1c00a64c:	0405                	addi	s0,s0,1
1c00a64e:	0004c503          	lbu	a0,0(s1)
1c00a652:	0485                	addi	s1,s1,1
1c00a654:	f17d                	bnez	a0,1c00a63a <pos_libc_prf+0x4e>
1c00a656:	8522                	mv	a0,s0
1c00a658:	12c12083          	lw	ra,300(sp)
1c00a65c:	12812403          	lw	s0,296(sp)
1c00a660:	12412483          	lw	s1,292(sp)
1c00a664:	12012903          	lw	s2,288(sp)
1c00a668:	11c12983          	lw	s3,284(sp)
1c00a66c:	11812a03          	lw	s4,280(sp)
1c00a670:	11412a83          	lw	s5,276(sp)
1c00a674:	11012b03          	lw	s6,272(sp)
1c00a678:	10c12b83          	lw	s7,268(sp)
1c00a67c:	10812c03          	lw	s8,264(sp)
1c00a680:	10412c83          	lw	s9,260(sp)
1c00a684:	10012d03          	lw	s10,256(sp)
1c00a688:	5dfe                	lw	s11,252(sp)
1c00a68a:	6155                	addi	sp,sp,304
1c00a68c:	8082                	ret
1c00a68e:	00148a93          	addi	s5,s1,1
1c00a692:	fffacd83          	lbu	s11,-1(s5)
1c00a696:	02000713          	li	a4,32
1c00a69a:	254b8513          	addi	a0,s7,596 # 1c000254 <PQCLEAN_KYBER768_CLEAN_zetas+0x104>
1c00a69e:	85ee                	mv	a1,s11
1c00a6a0:	c83a                	sw	a4,16(sp)
1c00a6a2:	cc02                	sw	zero,24(sp)
1c00a6a4:	ca02                	sw	zero,20(sp)
1c00a6a6:	ce02                	sw	zero,28(sp)
1c00a6a8:	c602                	sw	zero,12(sp)
1c00a6aa:	02300913          	li	s2,35
1c00a6ae:	02d00a13          	li	s4,45
1c00a6b2:	89d6                	mv	s3,s5
1c00a6b4:	350d                	jal	1c00a4d6 <strchr>
1c00a6b6:	c915                	beqz	a0,1c00a6ea <pos_libc_prf+0xfe>
1c00a6b8:	212d8963          	beq	s11,s2,1c00a8ca <pos_libc_prf+0x2de>
1c00a6bc:	1fb97063          	bleu	s11,s2,1c00a89c <pos_libc_prf+0x2b0>
1c00a6c0:	214d8163          	beq	s11,s4,1c00a8c2 <pos_libc_prf+0x2d6>
1c00a6c4:	03000613          	li	a2,48
1c00a6c8:	1ecd8863          	beq	s11,a2,1c00a8b8 <pos_libc_prf+0x2cc>
1c00a6cc:	02b00693          	li	a3,43
1c00a6d0:	1edd8063          	beq	s11,a3,1c00a8b0 <pos_libc_prf+0x2c4>
1c00a6d4:	84d6                	mv	s1,s5
1c00a6d6:	00148a93          	addi	s5,s1,1
1c00a6da:	fffacd83          	lbu	s11,-1(s5)
1c00a6de:	254b8513          	addi	a0,s7,596
1c00a6e2:	85ee                	mv	a1,s11
1c00a6e4:	89d6                	mv	s3,s5
1c00a6e6:	3bc5                	jal	1c00a4d6 <strchr>
1c00a6e8:	f961                	bnez	a0,1c00a6b8 <pos_libc_prf+0xcc>
1c00a6ea:	02a00613          	li	a2,42
1c00a6ee:	20cd8463          	beq	s11,a2,1c00a8f6 <pos_libc_prf+0x30a>
1c00a6f2:	fd0d8613          	addi	a2,s11,-48
1c00a6f6:	45a5                	li	a1,9
1c00a6f8:	4901                	li	s2,0
1c00a6fa:	1cc5fe63          	bleu	a2,a1,1c00a8d6 <pos_libc_prf+0x2ea>
1c00a6fe:	02e00713          	li	a4,46
1c00a702:	5a7d                	li	s4,-1
1c00a704:	24ed8463          	beq	s11,a4,1c00a94c <pos_libc_prf+0x360>
1c00a708:	1c000837          	lui	a6,0x1c000
1c00a70c:	85ee                	mv	a1,s11
1c00a70e:	25c80513          	addi	a0,a6,604 # 1c00025c <PQCLEAN_KYBER768_CLEAN_zetas+0x10c>
1c00a712:	33d1                	jal	1c00a4d6 <strchr>
1c00a714:	84ce                	mv	s1,s3
1c00a716:	c509                	beqz	a0,1c00a720 <pos_libc_prf+0x134>
1c00a718:	0009cd83          	lbu	s11,0(s3)
1c00a71c:	00198493          	addi	s1,s3,1
1c00a720:	06700713          	li	a4,103
1c00a724:	1fb75963          	ble	s11,a4,1c00a916 <pos_libc_prf+0x32a>
1c00a728:	07000713          	li	a4,112
1c00a72c:	12ed89e3          	beq	s11,a4,1c00b05e <pos_libc_prf+0xa72>
1c00a730:	25b75263          	ble	s11,a4,1c00a974 <pos_libc_prf+0x388>
1c00a734:	07500713          	li	a4,117
1c00a738:	0aed89e3          	beq	s11,a4,1c00afea <pos_libc_prf+0x9fe>
1c00a73c:	07800713          	li	a4,120
1c00a740:	72ed8b63          	beq	s11,a4,1c00ae76 <pos_libc_prf+0x88a>
1c00a744:	07300713          	li	a4,115
1c00a748:	1aed9ce3          	bne	s11,a4,1c00b100 <pos_libc_prf+0xb14>
1c00a74c:	000c2583          	lw	a1,0(s8)
1c00a750:	004c0a93          	addi	s5,s8,4
1c00a754:	87ae                	mv	a5,a1
1c00a756:	4981                	li	s3,0
1c00a758:	0c800693          	li	a3,200
1c00a75c:	a021                	j	1c00a764 <pos_libc_prf+0x178>
1c00a75e:	0985                	addi	s3,s3,1
1c00a760:	5ad98be3          	beq	s3,a3,1c00b516 <pos_libc_prf+0xf2a>
1c00a764:	0007c703          	lbu	a4,0(a5)
1c00a768:	0785                	addi	a5,a5,1
1c00a76a:	fb75                	bnez	a4,1c00a75e <pos_libc_prf+0x172>
1c00a76c:	000a4563          	bltz	s4,1c00a776 <pos_libc_prf+0x18a>
1c00a770:	013a5363          	ble	s3,s4,1c00a776 <pos_libc_prf+0x18a>
1c00a774:	89d2                	mv	s3,s4
1c00a776:	8c56                	mv	s8,s5
1c00a778:	ea098de3          	beqz	s3,1c00a632 <pos_libc_prf+0x46>
1c00a77c:	864e                	mv	a2,s3
1c00a77e:	8566                	mv	a0,s9
1c00a780:	34c9                	jal	1c00a242 <memcpy>
1c00a782:	8c56                	mv	s8,s5
1c00a784:	0f29d963          	ble	s2,s3,1c00a876 <pos_libc_prf+0x28a>
1c00a788:	c602                	sw	zero,12(sp)
1c00a78a:	48f2                	lw	a7,28(sp)
1c00a78c:	1a0885e3          	beqz	a7,1c00b136 <pos_libc_prf+0xb4a>
1c00a790:	013c87b3          	add	a5,s9,s3
1c00a794:	40f007b3          	neg	a5,a5
1c00a798:	8b8d                	andi	a5,a5,3
1c00a79a:	00378693          	addi	a3,a5,3
1c00a79e:	4715                	li	a4,5
1c00a7a0:	413905b3          	sub	a1,s2,s3
1c00a7a4:	00e6f363          	bleu	a4,a3,1c00a7aa <pos_libc_prf+0x1be>
1c00a7a8:	4695                	li	a3,5
1c00a7aa:	fff90713          	addi	a4,s2,-1
1c00a7ae:	41370733          	sub	a4,a4,s3
1c00a7b2:	06d76663          	bltu	a4,a3,1c00a81e <pos_libc_prf+0x232>
1c00a7b6:	86ce                	mv	a3,s3
1c00a7b8:	cb9d                	beqz	a5,1c00a7ee <pos_libc_prf+0x202>
1c00a7ba:	0f010813          	addi	a6,sp,240
1c00a7be:	013806b3          	add	a3,a6,s3
1c00a7c2:	02000713          	li	a4,32
1c00a7c6:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00a7ca:	4605                	li	a2,1
1c00a7cc:	00198693          	addi	a3,s3,1
1c00a7d0:	00c78f63          	beq	a5,a2,1c00a7ee <pos_libc_prf+0x202>
1c00a7d4:	96c2                	add	a3,a3,a6
1c00a7d6:	f2e68a23          	sb	a4,-204(a3)
1c00a7da:	460d                	li	a2,3
1c00a7dc:	00298693          	addi	a3,s3,2
1c00a7e0:	00c79763          	bne	a5,a2,1c00a7ee <pos_libc_prf+0x202>
1c00a7e4:	96c2                	add	a3,a3,a6
1c00a7e6:	f2e68a23          	sb	a4,-204(a3)
1c00a7ea:	00398693          	addi	a3,s3,3
1c00a7ee:	8d9d                	sub	a1,a1,a5
1c00a7f0:	97ce                	add	a5,a5,s3
1c00a7f2:	0025d613          	srli	a2,a1,0x2
1c00a7f6:	97e6                	add	a5,a5,s9
1c00a7f8:	4701                	li	a4,0
1c00a7fa:	1c0008b7          	lui	a7,0x1c000
1c00a7fe:	25088893          	addi	a7,a7,592 # 1c000250 <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00a802:	0008a883          	lw	a7,0(a7)
1c00a806:	0705                	addi	a4,a4,1
1c00a808:	0117a023          	sw	a7,0(a5)
1c00a80c:	0791                	addi	a5,a5,4
1c00a80e:	fec766e3          	bltu	a4,a2,1c00a7fa <pos_libc_prf+0x20e>
1c00a812:	ffc5f793          	andi	a5,a1,-4
1c00a816:	00d789b3          	add	s3,a5,a3
1c00a81a:	04b78b63          	beq	a5,a1,1c00a870 <pos_libc_prf+0x284>
1c00a81e:	1988                	addi	a0,sp,240
1c00a820:	01350733          	add	a4,a0,s3
1c00a824:	02000793          	li	a5,32
1c00a828:	f2f70a23          	sb	a5,-204(a4)
1c00a82c:	00198713          	addi	a4,s3,1
1c00a830:	05275063          	ble	s2,a4,1c00a870 <pos_libc_prf+0x284>
1c00a834:	972a                	add	a4,a4,a0
1c00a836:	f2f70a23          	sb	a5,-204(a4)
1c00a83a:	00298713          	addi	a4,s3,2
1c00a83e:	03275963          	ble	s2,a4,1c00a870 <pos_libc_prf+0x284>
1c00a842:	972a                	add	a4,a4,a0
1c00a844:	f2f70a23          	sb	a5,-204(a4)
1c00a848:	00398713          	addi	a4,s3,3
1c00a84c:	03275263          	ble	s2,a4,1c00a870 <pos_libc_prf+0x284>
1c00a850:	972a                	add	a4,a4,a0
1c00a852:	f2f70a23          	sb	a5,-204(a4)
1c00a856:	00498713          	addi	a4,s3,4
1c00a85a:	01275b63          	ble	s2,a4,1c00a870 <pos_libc_prf+0x284>
1c00a85e:	972a                	add	a4,a4,a0
1c00a860:	f2f70a23          	sb	a5,-204(a4)
1c00a864:	0995                	addi	s3,s3,5
1c00a866:	0129d563          	ble	s2,s3,1c00a870 <pos_libc_prf+0x284>
1c00a86a:	99aa                	add	s3,s3,a0
1c00a86c:	f2f98a23          	sb	a5,-204(s3)
1c00a870:	89ca                	mv	s3,s2
1c00a872:	dc0980e3          	beqz	s3,1c00a632 <pos_libc_prf+0x46>
1c00a876:	8966                	mv	s2,s9
1c00a878:	5a7d                	li	s4,-1
1c00a87a:	41940ab3          	sub	s5,s0,s9
1c00a87e:	a029                	j	1c00a888 <pos_libc_prf+0x29c>
1c00a880:	01590433          	add	s0,s2,s5
1c00a884:	da0987e3          	beqz	s3,1c00a632 <pos_libc_prf+0x46>
1c00a888:	00094503          	lbu	a0,0(s2)
1c00a88c:	85ea                	mv	a1,s10
1c00a88e:	9b02                	jalr	s6
1c00a890:	0905                	addi	s2,s2,1
1c00a892:	19fd                	addi	s3,s3,-1
1c00a894:	ff4516e3          	bne	a0,s4,1c00a880 <pos_libc_prf+0x294>
1c00a898:	547d                	li	s0,-1
1c00a89a:	bb75                	j	1c00a656 <pos_libc_prf+0x6a>
1c00a89c:	da0d8de3          	beqz	s11,1c00a656 <pos_libc_prf+0x6a>
1c00a8a0:	02000513          	li	a0,32
1c00a8a4:	e2ad98e3          	bne	s11,a0,1c00a6d4 <pos_libc_prf+0xe8>
1c00a8a8:	4785                	li	a5,1
1c00a8aa:	cc3e                	sw	a5,24(sp)
1c00a8ac:	84d6                	mv	s1,s5
1c00a8ae:	b525                	j	1c00a6d6 <pos_libc_prf+0xea>
1c00a8b0:	4705                	li	a4,1
1c00a8b2:	ca3a                	sw	a4,20(sp)
1c00a8b4:	84d6                	mv	s1,s5
1c00a8b6:	b505                	j	1c00a6d6 <pos_libc_prf+0xea>
1c00a8b8:	03000893          	li	a7,48
1c00a8bc:	c846                	sw	a7,16(sp)
1c00a8be:	84d6                	mv	s1,s5
1c00a8c0:	bd19                	j	1c00a6d6 <pos_libc_prf+0xea>
1c00a8c2:	4685                	li	a3,1
1c00a8c4:	ce36                	sw	a3,28(sp)
1c00a8c6:	84d6                	mv	s1,s5
1c00a8c8:	b539                	j	1c00a6d6 <pos_libc_prf+0xea>
1c00a8ca:	4805                	li	a6,1
1c00a8cc:	c642                	sw	a6,12(sp)
1c00a8ce:	84d6                	mv	s1,s5
1c00a8d0:	b519                	j	1c00a6d6 <pos_libc_prf+0xea>
1c00a8d2:	84d6                	mv	s1,s5
1c00a8d4:	0a85                	addi	s5,s5,1
1c00a8d6:	00291793          	slli	a5,s2,0x2
1c00a8da:	97ca                	add	a5,a5,s2
1c00a8dc:	0786                	slli	a5,a5,0x1
1c00a8de:	97ee                	add	a5,a5,s11
1c00a8e0:	000acd83          	lbu	s11,0(s5)
1c00a8e4:	fd078913          	addi	s2,a5,-48
1c00a8e8:	fd0d8793          	addi	a5,s11,-48
1c00a8ec:	fef5f3e3          	bleu	a5,a1,1c00a8d2 <pos_libc_prf+0x2e6>
1c00a8f0:	00248993          	addi	s3,s1,2
1c00a8f4:	a811                	j	1c00a908 <pos_libc_prf+0x31c>
1c00a8f6:	000c2903          	lw	s2,0(s8)
1c00a8fa:	0c11                	addi	s8,s8,4
1c00a8fc:	14094663          	bltz	s2,1c00aa48 <pos_libc_prf+0x45c>
1c00a900:	000acd83          	lbu	s11,0(s5)
1c00a904:	00248993          	addi	s3,s1,2
1c00a908:	0c800713          	li	a4,200
1c00a90c:	df2779e3          	bleu	s2,a4,1c00a6fe <pos_libc_prf+0x112>
1c00a910:	0c800913          	li	s2,200
1c00a914:	b3ed                	j	1c00a6fe <pos_libc_prf+0x112>
1c00a916:	06500713          	li	a4,101
1c00a91a:	12eddc63          	ble	a4,s11,1c00aa52 <pos_libc_prf+0x466>
1c00a91e:	04700713          	li	a4,71
1c00a922:	55b74063          	blt	a4,s11,1c00ae62 <pos_libc_prf+0x876>
1c00a926:	04500713          	li	a4,69
1c00a92a:	12edd463          	ble	a4,s11,1c00aa52 <pos_libc_prf+0x466>
1c00a92e:	d20d84e3          	beqz	s11,1c00a656 <pos_libc_prf+0x6a>
1c00a932:	02500713          	li	a4,37
1c00a936:	7ced9563          	bne	s11,a4,1c00b100 <pos_libc_prf+0xb14>
1c00a93a:	85ea                	mv	a1,s10
1c00a93c:	02500513          	li	a0,37
1c00a940:	9b02                	jalr	s6
1c00a942:	57fd                	li	a5,-1
1c00a944:	f4f50ae3          	beq	a0,a5,1c00a898 <pos_libc_prf+0x2ac>
1c00a948:	0405                	addi	s0,s0,1
1c00a94a:	b311                	j	1c00a64e <pos_libc_prf+0x62>
1c00a94c:	0009c783          	lbu	a5,0(s3)
1c00a950:	02a00713          	li	a4,42
1c00a954:	00198693          	addi	a3,s3,1
1c00a958:	0ae79d63          	bne	a5,a4,1c00aa12 <pos_libc_prf+0x426>
1c00a95c:	000c2a03          	lw	s4,0(s8)
1c00a960:	0019cd83          	lbu	s11,1(s3)
1c00a964:	0c11                	addi	s8,s8,4
1c00a966:	0989                	addi	s3,s3,2
1c00a968:	0c800713          	li	a4,200
1c00a96c:	d9475ee3          	ble	s4,a4,1c00a708 <pos_libc_prf+0x11c>
1c00a970:	5a7d                	li	s4,-1
1c00a972:	bb59                	j	1c00a708 <pos_libc_prf+0x11c>
1c00a974:	06e00713          	li	a4,110
1c00a978:	76ed8e63          	beq	s11,a4,1c00b0f4 <pos_libc_prf+0xb08>
1c00a97c:	5bb75663          	ble	s11,a4,1c00af28 <pos_libc_prf+0x93c>
1c00a980:	4732                	lw	a4,12(sp)
1c00a982:	004c0513          	addi	a0,s8,4
1c00a986:	000c2683          	lw	a3,0(s8)
1c00a98a:	1c070de3          	beqz	a4,1c00b364 <pos_libc_prf+0xd78>
1c00a98e:	03000793          	li	a5,48
1c00a992:	02f10223          	sb	a5,36(sp)
1c00a996:	16068de3          	beqz	a3,1c00b310 <pos_libc_prf+0xd24>
1c00a99a:	02510593          	addi	a1,sp,37
1c00a99e:	872e                	mv	a4,a1
1c00a9a0:	87ba                	mv	a5,a4
1c00a9a2:	0076f613          	andi	a2,a3,7
1c00a9a6:	0785                	addi	a5,a5,1
1c00a9a8:	03060613          	addi	a2,a2,48
1c00a9ac:	828d                	srli	a3,a3,0x3
1c00a9ae:	fec78fa3          	sb	a2,-1(a5)
1c00a9b2:	fae5                	bnez	a3,1c00a9a2 <pos_libc_prf+0x3b6>
1c00a9b4:	40b789b3          	sub	s3,a5,a1
1c00a9b8:	0149db63          	ble	s4,s3,1c00a9ce <pos_libc_prf+0x3e2>
1c00a9bc:	03000693          	li	a3,48
1c00a9c0:	0785                	addi	a5,a5,1
1c00a9c2:	fed78fa3          	sb	a3,-1(a5)
1c00a9c6:	40b789b3          	sub	s3,a5,a1
1c00a9ca:	ff49cbe3          	blt	s3,s4,1c00a9c0 <pos_libc_prf+0x3d4>
1c00a9ce:	00078023          	sb	zero,0(a5)
1c00a9d2:	17fd                	addi	a5,a5,-1
1c00a9d4:	00f77e63          	bleu	a5,a4,1c00a9f0 <pos_libc_prf+0x404>
1c00a9d8:	00074603          	lbu	a2,0(a4)
1c00a9dc:	0007c683          	lbu	a3,0(a5)
1c00a9e0:	00c78023          	sb	a2,0(a5)
1c00a9e4:	00d70023          	sb	a3,0(a4)
1c00a9e8:	17fd                	addi	a5,a5,-1
1c00a9ea:	0705                	addi	a4,a4,1
1c00a9ec:	fef766e3          	bltu	a4,a5,1c00a9d8 <pos_libc_prf+0x3ec>
1c00a9f0:	4832                	lw	a6,12(sp)
1c00a9f2:	57fd                	li	a5,-1
1c00a9f4:	99c2                	add	s3,s3,a6
1c00a9f6:	22fa0ee3          	beq	s4,a5,1c00b432 <pos_libc_prf+0xe46>
1c00a9fa:	0c800793          	li	a5,200
1c00a9fe:	e937cde3          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00aa02:	02000693          	li	a3,32
1c00aa06:	8c2a                	mv	s8,a0
1c00aa08:	c602                	sw	zero,12(sp)
1c00aa0a:	c836                	sw	a3,16(sp)
1c00aa0c:	d729cfe3          	blt	s3,s2,1c00a78a <pos_libc_prf+0x19e>
1c00aa10:	b58d                	j	1c00a872 <pos_libc_prf+0x286>
1c00aa12:	fd078593          	addi	a1,a5,-48
1c00aa16:	4725                	li	a4,9
1c00aa18:	8dbe                	mv	s11,a5
1c00aa1a:	4a01                	li	s4,0
1c00aa1c:	4625                	li	a2,9
1c00aa1e:	00b77663          	bleu	a1,a4,1c00aa2a <pos_libc_prf+0x43e>
1c00aa22:	1070006f          	j	1c00b328 <pos_libc_prf+0xd3c>
1c00aa26:	89b6                	mv	s3,a3
1c00aa28:	0685                	addi	a3,a3,1
1c00aa2a:	002a1793          	slli	a5,s4,0x2
1c00aa2e:	97d2                	add	a5,a5,s4
1c00aa30:	0786                	slli	a5,a5,0x1
1c00aa32:	97ee                	add	a5,a5,s11
1c00aa34:	0006cd83          	lbu	s11,0(a3)
1c00aa38:	fd078a13          	addi	s4,a5,-48
1c00aa3c:	fd0d8793          	addi	a5,s11,-48
1c00aa40:	fef673e3          	bleu	a5,a2,1c00aa26 <pos_libc_prf+0x43a>
1c00aa44:	0989                	addi	s3,s3,2
1c00aa46:	b70d                	j	1c00a968 <pos_libc_prf+0x37c>
1c00aa48:	4785                	li	a5,1
1c00aa4a:	41200933          	neg	s2,s2
1c00aa4e:	ce3e                	sw	a5,28(sp)
1c00aa50:	bd45                	j	1c00a900 <pos_libc_prf+0x314>
1c00aa52:	0c1d                	addi	s8,s8,7
1c00aa54:	ff8c7c13          	andi	s8,s8,-8
1c00aa58:	000c2703          	lw	a4,0(s8)
1c00aa5c:	004c2803          	lw	a6,4(s8)
1c00aa60:	01575693          	srli	a3,a4,0x15
1c00aa64:	00b81613          	slli	a2,a6,0xb
1c00aa68:	8e55                	or	a2,a2,a3
1c00aa6a:	01485513          	srli	a0,a6,0x14
1c00aa6e:	00b71693          	slli	a3,a4,0xb
1c00aa72:	80000737          	lui	a4,0x80000
1c00aa76:	fff74713          	not	a4,a4
1c00aa7a:	7ff57513          	andi	a0,a0,2047
1c00aa7e:	7ff00593          	li	a1,2047
1c00aa82:	0c21                	addi	s8,s8,8
1c00aa84:	8e79                	and	a2,a2,a4
1c00aa86:	0ab504e3          	beq	a0,a1,1c00b32e <pos_libc_prf+0xd42>
1c00aa8a:	04600593          	li	a1,70
1c00aa8e:	00bd9463          	bne	s11,a1,1c00aa96 <pos_libc_prf+0x4aa>
1c00aa92:	06600d93          	li	s11,102
1c00aa96:	00d56733          	or	a4,a0,a3
1c00aa9a:	8f51                	or	a4,a4,a2
1c00aa9c:	7e070963          	beqz	a4,1c00b28e <pos_libc_prf+0xca2>
1c00aaa0:	800005b7          	lui	a1,0x80000
1c00aaa4:	c0250513          	addi	a0,a0,-1022
1c00aaa8:	8dd1                	or	a1,a1,a2
1c00aaaa:	26084ae3          	bltz	a6,1c00b51e <pos_libc_prf+0xf32>
1c00aaae:	4852                	lw	a6,20(sp)
1c00aab0:	220808e3          	beqz	a6,1c00b4e0 <pos_libc_prf+0xef4>
1c00aab4:	02b00713          	li	a4,43
1c00aab8:	02e10223          	sb	a4,36(sp)
1c00aabc:	02510e93          	addi	t4,sp,37
1c00aac0:	5779                	li	a4,-2
1c00aac2:	4301                	li	t1,0
1c00aac4:	06e55763          	ble	a4,a0,1c00ab32 <pos_libc_prf+0x546>
1c00aac8:	33333837          	lui	a6,0x33333
1c00aacc:	800008b7          	lui	a7,0x80000
1c00aad0:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00aad4:	fff8c893          	not	a7,a7
1c00aad8:	5e79                	li	t3,-2
1c00aada:	a011                	j	1c00aade <pos_libc_prf+0x4f2>
1c00aadc:	853e                	mv	a0,a5
1c00aade:	01f59613          	slli	a2,a1,0x1f
1c00aae2:	0016d713          	srli	a4,a3,0x1
1c00aae6:	0016f793          	andi	a5,a3,1
1c00aaea:	8f51                	or	a4,a4,a2
1c00aaec:	00e786b3          	add	a3,a5,a4
1c00aaf0:	00f6b7b3          	sltu	a5,a3,a5
1c00aaf4:	8185                	srli	a1,a1,0x1
1c00aaf6:	95be                	add	a1,a1,a5
1c00aaf8:	00150793          	addi	a5,a0,1
1c00aafc:	feb860e3          	bltu	a6,a1,1c00aadc <pos_libc_prf+0x4f0>
1c00ab00:	00269613          	slli	a2,a3,0x2
1c00ab04:	01e6df13          	srli	t5,a3,0x1e
1c00ab08:	00259713          	slli	a4,a1,0x2
1c00ab0c:	96b2                	add	a3,a3,a2
1c00ab0e:	00ef6733          	or	a4,t5,a4
1c00ab12:	95ba                	add	a1,a1,a4
1c00ab14:	00c6b633          	sltu	a2,a3,a2
1c00ab18:	95b2                	add	a1,a1,a2
1c00ab1a:	01f6d713          	srli	a4,a3,0x1f
1c00ab1e:	0509                	addi	a0,a0,2
1c00ab20:	137d                	addi	t1,t1,-1
1c00ab22:	01159663          	bne	a1,a7,1c00ab2e <pos_libc_prf+0x542>
1c00ab26:	0686                	slli	a3,a3,0x1
1c00ab28:	ffe76593          	ori	a1,a4,-2
1c00ab2c:	853e                	mv	a0,a5
1c00ab2e:	fbc548e3          	blt	a0,t3,1c00aade <pos_libc_prf+0x4f2>
1c00ab32:	06a05563          	blez	a0,1c00ab9c <pos_libc_prf+0x5b0>
1c00ab36:	800008b7          	lui	a7,0x80000
1c00ab3a:	4e15                	li	t3,5
1c00ab3c:	fff8c893          	not	a7,a7
1c00ab40:	00268613          	addi	a2,a3,2
1c00ab44:	00d636b3          	sltu	a3,a2,a3
1c00ab48:	95b6                	add	a1,a1,a3
1c00ab4a:	03c5d7b3          	divu	a5,a1,t3
1c00ab4e:	00279713          	slli	a4,a5,0x2
1c00ab52:	973e                	add	a4,a4,a5
1c00ab54:	8d99                	sub	a1,a1,a4
1c00ab56:	01d59713          	slli	a4,a1,0x1d
1c00ab5a:	00365593          	srli	a1,a2,0x3
1c00ab5e:	8dd9                	or	a1,a1,a4
1c00ab60:	03c5d5b3          	divu	a1,a1,t3
1c00ab64:	00359693          	slli	a3,a1,0x3
1c00ab68:	00559713          	slli	a4,a1,0x5
1c00ab6c:	9736                	add	a4,a4,a3
1c00ab6e:	40e60733          	sub	a4,a2,a4
1c00ab72:	03c75733          	divu	a4,a4,t3
1c00ab76:	81f5                	srli	a1,a1,0x1d
1c00ab78:	96ba                	add	a3,a3,a4
1c00ab7a:	97ae                	add	a5,a5,a1
1c00ab7c:	00e6b733          	sltu	a4,a3,a4
1c00ab80:	00f705b3          	add	a1,a4,a5
1c00ab84:	157d                	addi	a0,a0,-1
1c00ab86:	0305                	addi	t1,t1,1
1c00ab88:	01f6d793          	srli	a5,a3,0x1f
1c00ab8c:	0586                	slli	a1,a1,0x1
1c00ab8e:	8ddd                	or	a1,a1,a5
1c00ab90:	0686                	slli	a3,a3,0x1
1c00ab92:	157d                	addi	a0,a0,-1
1c00ab94:	feb8fae3          	bleu	a1,a7,1c00ab88 <pos_libc_prf+0x59c>
1c00ab98:	faa044e3          	bgtz	a0,1c00ab40 <pos_libc_prf+0x554>
1c00ab9c:	4611                	li	a2,4
1c00ab9e:	01f59713          	slli	a4,a1,0x1f
1c00aba2:	0016d793          	srli	a5,a3,0x1
1c00aba6:	8fd9                	or	a5,a5,a4
1c00aba8:	8a85                	andi	a3,a3,1
1c00abaa:	00f688b3          	add	a7,a3,a5
1c00abae:	8185                	srli	a1,a1,0x1
1c00abb0:	00d8b6b3          	sltu	a3,a7,a3
1c00abb4:	00b68733          	add	a4,a3,a1
1c00abb8:	0505                	addi	a0,a0,1
1c00abba:	86c6                	mv	a3,a7
1c00abbc:	85ba                	mv	a1,a4
1c00abbe:	fec510e3          	bne	a0,a2,1c00ab9e <pos_libc_prf+0x5b2>
1c00abc2:	06700693          	li	a3,103
1c00abc6:	040a48e3          	bltz	s4,1c00b416 <pos_libc_prf+0xe2a>
1c00abca:	70dd8b63          	beq	s11,a3,1c00b2e0 <pos_libc_prf+0xcf4>
1c00abce:	04700693          	li	a3,71
1c00abd2:	70dd8763          	beq	s11,a3,1c00b2e0 <pos_libc_prf+0xcf4>
1c00abd6:	06600693          	li	a3,102
1c00abda:	08dd89e3          	beq	s11,a3,1c00b46c <pos_libc_prf+0xe80>
1c00abde:	001a0e13          	addi	t3,s4,1
1c00abe2:	46c1                	li	a3,16
1c00abe4:	01c6d363          	ble	t3,a3,1c00abea <pos_libc_prf+0x5fe>
1c00abe8:	4e41                	li	t3,16
1c00abea:	1e7d                	addi	t3,t3,-1
1c00abec:	4f81                	li	t6,0
1c00abee:	4681                	li	a3,0
1c00abf0:	08000637          	lui	a2,0x8000
1c00abf4:	4f15                	li	t5,5
1c00abf6:	52fd                	li	t0,-1
1c00abf8:	00268593          	addi	a1,a3,2
1c00abfc:	00d5b7b3          	sltu	a5,a1,a3
1c00ac00:	97b2                	add	a5,a5,a2
1c00ac02:	03e7d633          	divu	a2,a5,t5
1c00ac06:	00261693          	slli	a3,a2,0x2
1c00ac0a:	96b2                	add	a3,a3,a2
1c00ac0c:	8f95                	sub	a5,a5,a3
1c00ac0e:	07f6                	slli	a5,a5,0x1d
1c00ac10:	0035d513          	srli	a0,a1,0x3
1c00ac14:	8d5d                	or	a0,a0,a5
1c00ac16:	03e55533          	divu	a0,a0,t5
1c00ac1a:	00351693          	slli	a3,a0,0x3
1c00ac1e:	00551793          	slli	a5,a0,0x5
1c00ac22:	97b6                	add	a5,a5,a3
1c00ac24:	40f587b3          	sub	a5,a1,a5
1c00ac28:	03e7d7b3          	divu	a5,a5,t5
1c00ac2c:	8175                	srli	a0,a0,0x1d
1c00ac2e:	96be                	add	a3,a3,a5
1c00ac30:	00f6b7b3          	sltu	a5,a3,a5
1c00ac34:	962a                	add	a2,a2,a0
1c00ac36:	963e                	add	a2,a2,a5
1c00ac38:	01f61513          	slli	a0,a2,0x1f
1c00ac3c:	0016d793          	srli	a5,a3,0x1
1c00ac40:	0016f593          	andi	a1,a3,1
1c00ac44:	8fc9                	or	a5,a5,a0
1c00ac46:	00f586b3          	add	a3,a1,a5
1c00ac4a:	8205                	srli	a2,a2,0x1
1c00ac4c:	00b6b7b3          	sltu	a5,a3,a1
1c00ac50:	1e7d                	addi	t3,t3,-1
1c00ac52:	963e                	add	a2,a2,a5
1c00ac54:	fa5e12e3          	bne	t3,t0,1c00abf8 <pos_libc_prf+0x60c>
1c00ac58:	96c6                	add	a3,a3,a7
1c00ac5a:	963a                	add	a2,a2,a4
1c00ac5c:	0116b8b3          	sltu	a7,a3,a7
1c00ac60:	9646                	add	a2,a2,a7
1c00ac62:	f00005b7          	lui	a1,0xf0000
1c00ac66:	8df1                	and	a1,a1,a2
1c00ac68:	8736                	mv	a4,a3
1c00ac6a:	cdb9                	beqz	a1,1c00acc8 <pos_libc_prf+0x6dc>
1c00ac6c:	0689                	addi	a3,a3,2
1c00ac6e:	00e6b733          	sltu	a4,a3,a4
1c00ac72:	963a                	add	a2,a2,a4
1c00ac74:	4815                	li	a6,5
1c00ac76:	03065533          	divu	a0,a2,a6
1c00ac7a:	00251713          	slli	a4,a0,0x2
1c00ac7e:	972a                	add	a4,a4,a0
1c00ac80:	8e19                	sub	a2,a2,a4
1c00ac82:	01d61713          	slli	a4,a2,0x1d
1c00ac86:	0036d593          	srli	a1,a3,0x3
1c00ac8a:	8dd9                	or	a1,a1,a4
1c00ac8c:	0305d5b3          	divu	a1,a1,a6
1c00ac90:	00359613          	slli	a2,a1,0x3
1c00ac94:	00559713          	slli	a4,a1,0x5
1c00ac98:	9732                	add	a4,a4,a2
1c00ac9a:	40e68733          	sub	a4,a3,a4
1c00ac9e:	03075733          	divu	a4,a4,a6
1c00aca2:	81f5                	srli	a1,a1,0x1d
1c00aca4:	963a                	add	a2,a2,a4
1c00aca6:	00e63733          	sltu	a4,a2,a4
1c00acaa:	95aa                	add	a1,a1,a0
1c00acac:	00b706b3          	add	a3,a4,a1
1c00acb0:	01f69593          	slli	a1,a3,0x1f
1c00acb4:	00165713          	srli	a4,a2,0x1
1c00acb8:	8f4d                	or	a4,a4,a1
1c00acba:	8a05                	andi	a2,a2,1
1c00acbc:	9732                	add	a4,a4,a2
1c00acbe:	8285                	srli	a3,a3,0x1
1c00acc0:	00c73633          	sltu	a2,a4,a2
1c00acc4:	9636                	add	a2,a2,a3
1c00acc6:	0305                	addi	t1,t1,1
1c00acc8:	001e8993          	addi	s3,t4,1
1c00accc:	06600693          	li	a3,102
1c00acd0:	85ce                	mv	a1,s3
1c00acd2:	6add8663          	beq	s11,a3,1c00b37e <pos_libc_prf+0xd92>
1c00acd6:	00271693          	slli	a3,a4,0x2
1c00acda:	01e75593          	srli	a1,a4,0x1e
1c00acde:	00261513          	slli	a0,a2,0x2
1c00ace2:	9736                	add	a4,a4,a3
1c00ace4:	8d4d                	or	a0,a0,a1
1c00ace6:	962a                	add	a2,a2,a0
1c00ace8:	00d735b3          	sltu	a1,a4,a3
1c00acec:	95b2                	add	a1,a1,a2
1c00acee:	01f75693          	srli	a3,a4,0x1f
1c00acf2:	0586                	slli	a1,a1,0x1
1c00acf4:	8dd5                	or	a1,a1,a3
1c00acf6:	01c5d693          	srli	a3,a1,0x1c
1c00acfa:	03068613          	addi	a2,a3,48
1c00acfe:	00d036b3          	snez	a3,a3
1c00ad02:	10000537          	lui	a0,0x10000
1c00ad06:	40d30333          	sub	t1,t1,a3
1c00ad0a:	46b2                	lw	a3,12(sp)
1c00ad0c:	157d                	addi	a0,a0,-1
1c00ad0e:	00ce8023          	sb	a2,0(t4)
1c00ad12:	0706                	slli	a4,a4,0x1
1c00ad14:	8de9                	and	a1,a1,a0
1c00ad16:	64068b63          	beqz	a3,1c00b36c <pos_libc_prf+0xd80>
1c00ad1a:	02e00693          	li	a3,46
1c00ad1e:	00de80a3          	sb	a3,1(t4)
1c00ad22:	002e8513          	addi	a0,t4,2
1c00ad26:	020a00e3          	beqz	s4,1c00b546 <pos_libc_prf+0xf5a>
1c00ad2a:	014509b3          	add	s3,a0,s4
1c00ad2e:	48bd                	li	a7,15
1c00ad30:	03000e13          	li	t3,48
1c00ad34:	00271793          	slli	a5,a4,0x2
1c00ad38:	01e75813          	srli	a6,a4,0x1e
1c00ad3c:	00259693          	slli	a3,a1,0x2
1c00ad40:	00e78633          	add	a2,a5,a4
1c00ad44:	00d866b3          	or	a3,a6,a3
1c00ad48:	96ae                	add	a3,a3,a1
1c00ad4a:	00f637b3          	sltu	a5,a2,a5
1c00ad4e:	97b6                	add	a5,a5,a3
1c00ad50:	0786                	slli	a5,a5,0x1
1c00ad52:	01f65693          	srli	a3,a2,0x1f
1c00ad56:	8fd5                	or	a5,a5,a3
1c00ad58:	01c7d693          	srli	a3,a5,0x1c
1c00ad5c:	03068693          	addi	a3,a3,48
1c00ad60:	0505                	addi	a0,a0,1
1c00ad62:	3b105663          	blez	a7,1c00b10e <pos_libc_prf+0xb22>
1c00ad66:	10000837          	lui	a6,0x10000
1c00ad6a:	187d                	addi	a6,a6,-1
1c00ad6c:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00ad70:	18fd                	addi	a7,a7,-1
1c00ad72:	00161713          	slli	a4,a2,0x1
1c00ad76:	0107f5b3          	and	a1,a5,a6
1c00ad7a:	faa99de3          	bne	s3,a0,1c00ad34 <pos_libc_prf+0x748>
1c00ad7e:	0c0f9263          	bnez	t6,1c00ae42 <pos_libc_prf+0x856>
1c00ad82:	fdfdf713          	andi	a4,s11,-33
1c00ad86:	04500693          	li	a3,69
1c00ad8a:	02d71963          	bne	a4,a3,1c00adbc <pos_libc_prf+0x7d0>
1c00ad8e:	87ee                	mv	a5,s11
1c00ad90:	00f98023          	sb	a5,0(s3)
1c00ad94:	6a034763          	bltz	t1,1c00b442 <pos_libc_prf+0xe56>
1c00ad98:	02b00793          	li	a5,43
1c00ad9c:	00f980a3          	sb	a5,1(s3)
1c00ada0:	47a9                	li	a5,10
1c00ada2:	02f34733          	div	a4,t1,a5
1c00ada6:	02f367b3          	rem	a5,t1,a5
1c00adaa:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00adae:	03078793          	addi	a5,a5,48
1c00adb2:	00e98123          	sb	a4,2(s3)
1c00adb6:	00f981a3          	sb	a5,3(s3)
1c00adba:	0991                	addi	s3,s3,4
1c00adbc:	00098023          	sb	zero,0(s3)
1c00adc0:	419989b3          	sub	s3,s3,s9
1c00adc4:	48d2                	lw	a7,20(sp)
1c00adc6:	4662                	lw	a2,24(sp)
1c00adc8:	00c8e8b3          	or	a7,a7,a2
1c00adcc:	c646                	sw	a7,12(sp)
1c00adce:	34089d63          	bnez	a7,1c00b128 <pos_libc_prf+0xb3c>
1c00add2:	02414703          	lbu	a4,36(sp)
1c00add6:	02d00793          	li	a5,45
1c00adda:	34f70763          	beq	a4,a5,1c00b128 <pos_libc_prf+0xb3c>
1c00adde:	0c800793          	li	a5,200
1c00ade2:	ab37cbe3          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00ade6:	9b29c2e3          	blt	s3,s2,1c00a78a <pos_libc_prf+0x19e>
1c00adea:	b461                	j	1c00a872 <pos_libc_prf+0x286>
1c00adec:	0585                	addi	a1,a1,1
1c00adee:	00271793          	slli	a5,a4,0x2
1c00adf2:	01e75e13          	srli	t3,a4,0x1e
1c00adf6:	00261693          	slli	a3,a2,0x2
1c00adfa:	00e788b3          	add	a7,a5,a4
1c00adfe:	00de66b3          	or	a3,t3,a3
1c00ae02:	96b2                	add	a3,a3,a2
1c00ae04:	00f8b7b3          	sltu	a5,a7,a5
1c00ae08:	97b6                	add	a5,a5,a3
1c00ae0a:	0786                	slli	a5,a5,0x1
1c00ae0c:	01f8d693          	srli	a3,a7,0x1f
1c00ae10:	8fd5                	or	a5,a5,a3
1c00ae12:	01c7de13          	srli	t3,a5,0x1c
1c00ae16:	03000693          	li	a3,48
1c00ae1a:	00a05c63          	blez	a0,1c00ae32 <pos_libc_prf+0x846>
1c00ae1e:	00189713          	slli	a4,a7,0x1
1c00ae22:	100008b7          	lui	a7,0x10000
1c00ae26:	18fd                	addi	a7,a7,-1
1c00ae28:	030e0693          	addi	a3,t3,48
1c00ae2c:	157d                	addi	a0,a0,-1
1c00ae2e:	0117f633          	and	a2,a5,a7
1c00ae32:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00ae36:	fab99be3          	bne	s3,a1,1c00adec <pos_libc_prf+0x800>
1c00ae3a:	014809b3          	add	s3,a6,s4
1c00ae3e:	f60f8fe3          	beqz	t6,1c00adbc <pos_libc_prf+0x7d0>
1c00ae42:	03000613          	li	a2,48
1c00ae46:	a011                	j	1c00ae4a <pos_libc_prf+0x85e>
1c00ae48:	89ba                	mv	s3,a4
1c00ae4a:	fff9c683          	lbu	a3,-1(s3)
1c00ae4e:	fff98713          	addi	a4,s3,-1
1c00ae52:	fec68be3          	beq	a3,a2,1c00ae48 <pos_libc_prf+0x85c>
1c00ae56:	02e00613          	li	a2,46
1c00ae5a:	f2c694e3          	bne	a3,a2,1c00ad82 <pos_libc_prf+0x796>
1c00ae5e:	89ba                	mv	s3,a4
1c00ae60:	b70d                	j	1c00ad82 <pos_libc_prf+0x796>
1c00ae62:	06300713          	li	a4,99
1c00ae66:	16ed8863          	beq	s11,a4,1c00afd6 <pos_libc_prf+0x9ea>
1c00ae6a:	0db74363          	blt	a4,s11,1c00af30 <pos_libc_prf+0x944>
1c00ae6e:	05800713          	li	a4,88
1c00ae72:	28ed9763          	bne	s11,a4,1c00b100 <pos_libc_prf+0xb14>
1c00ae76:	48b2                	lw	a7,12(sp)
1c00ae78:	004c0813          	addi	a6,s8,4
1c00ae7c:	000c2583          	lw	a1,0(s8)
1c00ae80:	3c088a63          	beqz	a7,1c00b254 <pos_libc_prf+0xc68>
1c00ae84:	7761                	lui	a4,0xffff8
1c00ae86:	83074713          	xori	a4,a4,-2000
1c00ae8a:	02e11223          	sh	a4,36(sp)
1c00ae8e:	4889                	li	a7,2
1c00ae90:	02610693          	addi	a3,sp,38
1c00ae94:	8736                	mv	a4,a3
1c00ae96:	4e25                	li	t3,9
1c00ae98:	00f5f613          	andi	a2,a1,15
1c00ae9c:	0ff67793          	andi	a5,a2,255
1c00aea0:	03078513          	addi	a0,a5,48
1c00aea4:	8191                	srli	a1,a1,0x4
1c00aea6:	05778793          	addi	a5,a5,87
1c00aeaa:	0705                	addi	a4,a4,1
1c00aeac:	06ce6a63          	bltu	t3,a2,1c00af20 <pos_libc_prf+0x934>
1c00aeb0:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00aeb4:	f1f5                	bnez	a1,1c00ae98 <pos_libc_prf+0x8ac>
1c00aeb6:	40d709b3          	sub	s3,a4,a3
1c00aeba:	0149db63          	ble	s4,s3,1c00aed0 <pos_libc_prf+0x8e4>
1c00aebe:	03000613          	li	a2,48
1c00aec2:	0705                	addi	a4,a4,1
1c00aec4:	fec70fa3          	sb	a2,-1(a4)
1c00aec8:	40d709b3          	sub	s3,a4,a3
1c00aecc:	ff49cbe3          	blt	s3,s4,1c00aec2 <pos_libc_prf+0x8d6>
1c00aed0:	00070023          	sb	zero,0(a4)
1c00aed4:	177d                	addi	a4,a4,-1
1c00aed6:	00e6fe63          	bleu	a4,a3,1c00aef2 <pos_libc_prf+0x906>
1c00aeda:	0006c603          	lbu	a2,0(a3)
1c00aede:	00074783          	lbu	a5,0(a4)
1c00aee2:	00c70023          	sb	a2,0(a4)
1c00aee6:	00f68023          	sb	a5,0(a3)
1c00aeea:	177d                	addi	a4,a4,-1
1c00aeec:	0685                	addi	a3,a3,1
1c00aeee:	fee6e6e3          	bltu	a3,a4,1c00aeda <pos_libc_prf+0x8ee>
1c00aef2:	05800713          	li	a4,88
1c00aef6:	36ed8263          	beq	s11,a4,1c00b25a <pos_libc_prf+0xc6e>
1c00aefa:	46b2                	lw	a3,12(sp)
1c00aefc:	99c6                	add	s3,s3,a7
1c00aefe:	c299                	beqz	a3,1c00af04 <pos_libc_prf+0x918>
1c00af00:	4709                	li	a4,2
1c00af02:	c63a                	sw	a4,12(sp)
1c00af04:	57fd                	li	a5,-1
1c00af06:	3afa0263          	beq	s4,a5,1c00b2aa <pos_libc_prf+0xcbe>
1c00af0a:	0c800793          	li	a5,200
1c00af0e:	9937c5e3          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00af12:	02000793          	li	a5,32
1c00af16:	c83e                	sw	a5,16(sp)
1c00af18:	8c42                	mv	s8,a6
1c00af1a:	8729c8e3          	blt	s3,s2,1c00a78a <pos_libc_prf+0x19e>
1c00af1e:	ba91                	j	1c00a872 <pos_libc_prf+0x286>
1c00af20:	fef70fa3          	sb	a5,-1(a4)
1c00af24:	f9b5                	bnez	a1,1c00ae98 <pos_libc_prf+0x8ac>
1c00af26:	bf41                	j	1c00aeb6 <pos_libc_prf+0x8ca>
1c00af28:	06900713          	li	a4,105
1c00af2c:	1ced9a63          	bne	s11,a4,1c00b100 <pos_libc_prf+0xb14>
1c00af30:	000c2583          	lw	a1,0(s8)
1c00af34:	0c11                	addi	s8,s8,4
1c00af36:	3805c863          	bltz	a1,1c00b2c6 <pos_libc_prf+0xcda>
1c00af3a:	48d2                	lw	a7,20(sp)
1c00af3c:	872e                	mv	a4,a1
1c00af3e:	36089d63          	bnez	a7,1c00b2b8 <pos_libc_prf+0xccc>
1c00af42:	4662                	lw	a2,24(sp)
1c00af44:	87e6                	mv	a5,s9
1c00af46:	c619                	beqz	a2,1c00af54 <pos_libc_prf+0x968>
1c00af48:	02000793          	li	a5,32
1c00af4c:	02f10223          	sb	a5,36(sp)
1c00af50:	02510793          	addi	a5,sp,37
1c00af54:	89be                	mv	s3,a5
1c00af56:	4629                	li	a2,10
1c00af58:	02c776b3          	remu	a3,a4,a2
1c00af5c:	02c75733          	divu	a4,a4,a2
1c00af60:	0985                	addi	s3,s3,1
1c00af62:	03068693          	addi	a3,a3,48
1c00af66:	fed98fa3          	sb	a3,-1(s3)
1c00af6a:	f77d                	bnez	a4,1c00af58 <pos_libc_prf+0x96c>
1c00af6c:	40f98733          	sub	a4,s3,a5
1c00af70:	01475b63          	ble	s4,a4,1c00af86 <pos_libc_prf+0x99a>
1c00af74:	03000693          	li	a3,48
1c00af78:	0985                	addi	s3,s3,1
1c00af7a:	fed98fa3          	sb	a3,-1(s3)
1c00af7e:	40f98733          	sub	a4,s3,a5
1c00af82:	ff474be3          	blt	a4,s4,1c00af78 <pos_libc_prf+0x98c>
1c00af86:	00098023          	sb	zero,0(s3)
1c00af8a:	fff98713          	addi	a4,s3,-1
1c00af8e:	00e7fe63          	bleu	a4,a5,1c00afaa <pos_libc_prf+0x9be>
1c00af92:	0007c603          	lbu	a2,0(a5)
1c00af96:	00074683          	lbu	a3,0(a4)
1c00af9a:	00c70023          	sb	a2,0(a4)
1c00af9e:	00d78023          	sb	a3,0(a5)
1c00afa2:	177d                	addi	a4,a4,-1
1c00afa4:	0785                	addi	a5,a5,1
1c00afa6:	fee7e6e3          	bltu	a5,a4,1c00af92 <pos_libc_prf+0x9a6>
1c00afaa:	46d2                	lw	a3,20(sp)
1c00afac:	4762                	lw	a4,24(sp)
1c00afae:	419989b3          	sub	s3,s3,s9
1c00afb2:	8ed9                	or	a3,a3,a4
1c00afb4:	c636                	sw	a3,12(sp)
1c00afb6:	e299                	bnez	a3,1c00afbc <pos_libc_prf+0x9d0>
1c00afb8:	81fd                	srli	a1,a1,0x1f
1c00afba:	c62e                	sw	a1,12(sp)
1c00afbc:	57fd                	li	a5,-1
1c00afbe:	e2fa00e3          	beq	s4,a5,1c00adde <pos_libc_prf+0x7f2>
1c00afc2:	0c800793          	li	a5,200
1c00afc6:	8d37c9e3          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00afca:	02000793          	li	a5,32
1c00afce:	c83e                	sw	a5,16(sp)
1c00afd0:	fb29cd63          	blt	s3,s2,1c00a78a <pos_libc_prf+0x19e>
1c00afd4:	b879                	j	1c00a872 <pos_libc_prf+0x286>
1c00afd6:	000c2783          	lw	a5,0(s8)
1c00afda:	020102a3          	sb	zero,37(sp)
1c00afde:	02f10223          	sb	a5,36(sp)
1c00afe2:	0c11                	addi	s8,s8,4
1c00afe4:	4985                	li	s3,1
1c00afe6:	f9eff06f          	j	1c00a784 <pos_libc_prf+0x198>
1c00afea:	000c2703          	lw	a4,0(s8)
1c00afee:	87e6                	mv	a5,s9
1c00aff0:	0c11                	addi	s8,s8,4
1c00aff2:	4629                	li	a2,10
1c00aff4:	02c776b3          	remu	a3,a4,a2
1c00aff8:	02c75733          	divu	a4,a4,a2
1c00affc:	0785                	addi	a5,a5,1
1c00affe:	03068693          	addi	a3,a3,48
1c00b002:	fed78fa3          	sb	a3,-1(a5)
1c00b006:	f77d                	bnez	a4,1c00aff4 <pos_libc_prf+0xa08>
1c00b008:	419789b3          	sub	s3,a5,s9
1c00b00c:	0149db63          	ble	s4,s3,1c00b022 <pos_libc_prf+0xa36>
1c00b010:	03000713          	li	a4,48
1c00b014:	0785                	addi	a5,a5,1
1c00b016:	fee78fa3          	sb	a4,-1(a5)
1c00b01a:	419789b3          	sub	s3,a5,s9
1c00b01e:	ff49cbe3          	blt	s3,s4,1c00b014 <pos_libc_prf+0xa28>
1c00b022:	00078023          	sb	zero,0(a5)
1c00b026:	17fd                	addi	a5,a5,-1
1c00b028:	00fcff63          	bleu	a5,s9,1c00b046 <pos_libc_prf+0xa5a>
1c00b02c:	8766                	mv	a4,s9
1c00b02e:	00074603          	lbu	a2,0(a4)
1c00b032:	0007c683          	lbu	a3,0(a5)
1c00b036:	00c78023          	sb	a2,0(a5)
1c00b03a:	00d70023          	sb	a3,0(a4)
1c00b03e:	17fd                	addi	a5,a5,-1
1c00b040:	0705                	addi	a4,a4,1
1c00b042:	fef766e3          	bltu	a4,a5,1c00b02e <pos_libc_prf+0xa42>
1c00b046:	57fd                	li	a5,-1
1c00b048:	0cfa0a63          	beq	s4,a5,1c00b11c <pos_libc_prf+0xb30>
1c00b04c:	0c800793          	li	a5,200
1c00b050:	8537c4e3          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00b054:	02000813          	li	a6,32
1c00b058:	c602                	sw	zero,12(sp)
1c00b05a:	c842                	sw	a6,16(sp)
1c00b05c:	ba45                	j	1c00aa0c <pos_libc_prf+0x420>
1c00b05e:	77e1                	lui	a5,0xffff8
1c00b060:	8307c793          	xori	a5,a5,-2000
1c00b064:	02610713          	addi	a4,sp,38
1c00b068:	000c2603          	lw	a2,0(s8)
1c00b06c:	02f11223          	sh	a5,36(sp)
1c00b070:	0c11                	addi	s8,s8,4
1c00b072:	87ba                	mv	a5,a4
1c00b074:	4825                	li	a6,9
1c00b076:	00f67593          	andi	a1,a2,15
1c00b07a:	0ff5f693          	andi	a3,a1,255
1c00b07e:	03068513          	addi	a0,a3,48
1c00b082:	8211                	srli	a2,a2,0x4
1c00b084:	05768693          	addi	a3,a3,87
1c00b088:	0785                	addi	a5,a5,1
1c00b08a:	06b86163          	bltu	a6,a1,1c00b0ec <pos_libc_prf+0xb00>
1c00b08e:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00b092:	f275                	bnez	a2,1c00b076 <pos_libc_prf+0xa8a>
1c00b094:	40e789b3          	sub	s3,a5,a4
1c00b098:	469d                	li	a3,7
1c00b09a:	0136cb63          	blt	a3,s3,1c00b0b0 <pos_libc_prf+0xac4>
1c00b09e:	03000613          	li	a2,48
1c00b0a2:	0785                	addi	a5,a5,1
1c00b0a4:	fec78fa3          	sb	a2,-1(a5)
1c00b0a8:	40e789b3          	sub	s3,a5,a4
1c00b0ac:	ff36dbe3          	ble	s3,a3,1c00b0a2 <pos_libc_prf+0xab6>
1c00b0b0:	00078023          	sb	zero,0(a5)
1c00b0b4:	17fd                	addi	a5,a5,-1
1c00b0b6:	00f77e63          	bleu	a5,a4,1c00b0d2 <pos_libc_prf+0xae6>
1c00b0ba:	00074603          	lbu	a2,0(a4)
1c00b0be:	0007c683          	lbu	a3,0(a5)
1c00b0c2:	00c78023          	sb	a2,0(a5)
1c00b0c6:	00d70023          	sb	a3,0(a4)
1c00b0ca:	17fd                	addi	a5,a5,-1
1c00b0cc:	0705                	addi	a4,a4,1
1c00b0ce:	fef766e3          	bltu	a4,a5,1c00b0ba <pos_libc_prf+0xace>
1c00b0d2:	57fd                	li	a5,-1
1c00b0d4:	0989                	addi	s3,s3,2
1c00b0d6:	04fa0363          	beq	s4,a5,1c00b11c <pos_libc_prf+0xb30>
1c00b0da:	0c800793          	li	a5,200
1c00b0de:	fb37cd63          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00b0e2:	02000893          	li	a7,32
1c00b0e6:	c602                	sw	zero,12(sp)
1c00b0e8:	c846                	sw	a7,16(sp)
1c00b0ea:	b20d                	j	1c00aa0c <pos_libc_prf+0x420>
1c00b0ec:	fed78fa3          	sb	a3,-1(a5)
1c00b0f0:	f259                	bnez	a2,1c00b076 <pos_libc_prf+0xa8a>
1c00b0f2:	b74d                	j	1c00b094 <pos_libc_prf+0xaa8>
1c00b0f4:	000c2783          	lw	a5,0(s8)
1c00b0f8:	0c11                	addi	s8,s8,4
1c00b0fa:	c380                	sw	s0,0(a5)
1c00b0fc:	d36ff06f          	j	1c00a632 <pos_libc_prf+0x46>
1c00b100:	0c800713          	li	a4,200
1c00b104:	d3b75763          	ble	s11,a4,1c00a632 <pos_libc_prf+0x46>
1c00b108:	547d                	li	s0,-1
1c00b10a:	d4cff06f          	j	1c00a656 <pos_libc_prf+0x6a>
1c00b10e:	ffc50fa3          	sb	t3,-1(a0)
1c00b112:	c2a991e3          	bne	s3,a0,1c00ad34 <pos_libc_prf+0x748>
1c00b116:	c60f86e3          	beqz	t6,1c00ad82 <pos_libc_prf+0x796>
1c00b11a:	b325                	j	1c00ae42 <pos_libc_prf+0x856>
1c00b11c:	0c800793          	li	a5,200
1c00b120:	f737cc63          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00b124:	c602                	sw	zero,12(sp)
1c00b126:	b0dd                	j	1c00aa0c <pos_libc_prf+0x420>
1c00b128:	0c800793          	li	a5,200
1c00b12c:	f737c663          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00b130:	4705                	li	a4,1
1c00b132:	c63a                	sw	a4,12(sp)
1c00b134:	b8e1                	j	1c00aa0c <pos_libc_prf+0x420>
1c00b136:	41390a33          	sub	s4,s2,s3
1c00b13a:	00198613          	addi	a2,s3,1
1c00b13e:	85e6                	mv	a1,s9
1c00b140:	014c8533          	add	a0,s9,s4
1c00b144:	a4aff0ef          	jal	ra,1c00a38e <memmove>
1c00b148:	46c2                	lw	a3,16(sp)
1c00b14a:	02000793          	li	a5,32
1c00b14e:	30f68163          	beq	a3,a5,1c00b450 <pos_libc_prf+0xe64>
1c00b152:	4732                	lw	a4,12(sp)
1c00b154:	89ca                	mv	s3,s2
1c00b156:	9a3a                	add	s4,s4,a4
1c00b158:	f1475d63          	ble	s4,a4,1c00a872 <pos_libc_prf+0x286>
1c00b15c:	4832                	lw	a6,12(sp)
1c00b15e:	4715                	li	a4,5
1c00b160:	010c87b3          	add	a5,s9,a6
1c00b164:	40f007b3          	neg	a5,a5
1c00b168:	8b8d                	andi	a5,a5,3
1c00b16a:	00378693          	addi	a3,a5,3
1c00b16e:	410a05b3          	sub	a1,s4,a6
1c00b172:	00e6f363          	bleu	a4,a3,1c00b178 <pos_libc_prf+0xb8c>
1c00b176:	4695                	li	a3,5
1c00b178:	48b2                	lw	a7,12(sp)
1c00b17a:	fffa0713          	addi	a4,s4,-1
1c00b17e:	41170733          	sub	a4,a4,a7
1c00b182:	06d76b63          	bltu	a4,a3,1c00b1f8 <pos_libc_prf+0xc0c>
1c00b186:	86c6                	mv	a3,a7
1c00b188:	cb9d                	beqz	a5,1c00b1be <pos_libc_prf+0xbd2>
1c00b18a:	46c2                	lw	a3,16(sp)
1c00b18c:	1988                	addi	a0,sp,240
1c00b18e:	01150733          	add	a4,a0,a7
1c00b192:	f2d70a23          	sb	a3,-204(a4)
1c00b196:	4705                	li	a4,1
1c00b198:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00b19c:	02e78163          	beq	a5,a4,1c00b1be <pos_libc_prf+0xbd2>
1c00b1a0:	4742                	lw	a4,16(sp)
1c00b1a2:	96aa                	add	a3,a3,a0
1c00b1a4:	f2e68a23          	sb	a4,-204(a3)
1c00b1a8:	470d                	li	a4,3
1c00b1aa:	00288693          	addi	a3,a7,2
1c00b1ae:	00e79863          	bne	a5,a4,1c00b1be <pos_libc_prf+0xbd2>
1c00b1b2:	4842                	lw	a6,16(sp)
1c00b1b4:	96aa                	add	a3,a3,a0
1c00b1b6:	f3068a23          	sb	a6,-204(a3)
1c00b1ba:	00388693          	addi	a3,a7,3
1c00b1be:	48c2                	lw	a7,16(sp)
1c00b1c0:	4832                	lw	a6,12(sp)
1c00b1c2:	00889713          	slli	a4,a7,0x8
1c00b1c6:	01089513          	slli	a0,a7,0x10
1c00b1ca:	00e8e733          	or	a4,a7,a4
1c00b1ce:	8d9d                	sub	a1,a1,a5
1c00b1d0:	01889613          	slli	a2,a7,0x18
1c00b1d4:	8f49                	or	a4,a4,a0
1c00b1d6:	97c2                	add	a5,a5,a6
1c00b1d8:	8f51                	or	a4,a4,a2
1c00b1da:	0025d513          	srli	a0,a1,0x2
1c00b1de:	97e6                	add	a5,a5,s9
1c00b1e0:	4601                	li	a2,0
1c00b1e2:	c398                	sw	a4,0(a5)
1c00b1e4:	0605                	addi	a2,a2,1
1c00b1e6:	0791                	addi	a5,a5,4
1c00b1e8:	fea66de3          	bltu	a2,a0,1c00b1e2 <pos_libc_prf+0xbf6>
1c00b1ec:	ffc5f793          	andi	a5,a1,-4
1c00b1f0:	96be                	add	a3,a3,a5
1c00b1f2:	c636                	sw	a3,12(sp)
1c00b1f4:	e6b78e63          	beq	a5,a1,1c00a870 <pos_libc_prf+0x284>
1c00b1f8:	46b2                	lw	a3,12(sp)
1c00b1fa:	0f010893          	addi	a7,sp,240
1c00b1fe:	4742                	lw	a4,16(sp)
1c00b200:	00d887b3          	add	a5,a7,a3
1c00b204:	f2e78a23          	sb	a4,-204(a5)
1c00b208:	00168793          	addi	a5,a3,1
1c00b20c:	e747d263          	ble	s4,a5,1c00a870 <pos_libc_prf+0x284>
1c00b210:	97c6                	add	a5,a5,a7
1c00b212:	f2e78a23          	sb	a4,-204(a5)
1c00b216:	00268793          	addi	a5,a3,2
1c00b21a:	e547db63          	ble	s4,a5,1c00a870 <pos_libc_prf+0x284>
1c00b21e:	97c6                	add	a5,a5,a7
1c00b220:	f2e78a23          	sb	a4,-204(a5)
1c00b224:	00368793          	addi	a5,a3,3
1c00b228:	e547d463          	ble	s4,a5,1c00a870 <pos_libc_prf+0x284>
1c00b22c:	97c6                	add	a5,a5,a7
1c00b22e:	f2e78a23          	sb	a4,-204(a5)
1c00b232:	00468793          	addi	a5,a3,4
1c00b236:	e347dd63          	ble	s4,a5,1c00a870 <pos_libc_prf+0x284>
1c00b23a:	97c6                	add	a5,a5,a7
1c00b23c:	f2e78a23          	sb	a4,-204(a5)
1c00b240:	00568a93          	addi	s5,a3,5
1c00b244:	e34ad663          	ble	s4,s5,1c00a870 <pos_libc_prf+0x284>
1c00b248:	9ac6                	add	s5,s5,a7
1c00b24a:	f2ea8a23          	sb	a4,-204(s5)
1c00b24e:	89ca                	mv	s3,s2
1c00b250:	e22ff06f          	j	1c00a872 <pos_libc_prf+0x286>
1c00b254:	4881                	li	a7,0
1c00b256:	1054                	addi	a3,sp,36
1c00b258:	b935                	j	1c00ae94 <pos_libc_prf+0x8a8>
1c00b25a:	02414783          	lbu	a5,36(sp)
1c00b25e:	1058                	addi	a4,sp,36
1c00b260:	46e5                	li	a3,25
1c00b262:	c8078ce3          	beqz	a5,1c00aefa <pos_libc_prf+0x90e>
1c00b266:	fe078613          	addi	a2,a5,-32
1c00b26a:	f9f78793          	addi	a5,a5,-97
1c00b26e:	0ff7f793          	andi	a5,a5,255
1c00b272:	00f6e963          	bltu	a3,a5,1c00b284 <pos_libc_prf+0xc98>
1c00b276:	00c70023          	sb	a2,0(a4)
1c00b27a:	0705                	addi	a4,a4,1
1c00b27c:	00074783          	lbu	a5,0(a4)
1c00b280:	f3fd                	bnez	a5,1c00b266 <pos_libc_prf+0xc7a>
1c00b282:	b9a5                	j	1c00aefa <pos_libc_prf+0x90e>
1c00b284:	0705                	addi	a4,a4,1
1c00b286:	00074783          	lbu	a5,0(a4)
1c00b28a:	fff1                	bnez	a5,1c00b266 <pos_libc_prf+0xc7a>
1c00b28c:	b1bd                	j	1c00aefa <pos_libc_prf+0x90e>
1c00b28e:	47d2                	lw	a5,20(sp)
1c00b290:	20078263          	beqz	a5,1c00b494 <pos_libc_prf+0xea8>
1c00b294:	02b00713          	li	a4,43
1c00b298:	02e10223          	sb	a4,36(sp)
1c00b29c:	02510e93          	addi	t4,sp,37
1c00b2a0:	4301                	li	t1,0
1c00b2a2:	4501                	li	a0,0
1c00b2a4:	4681                	li	a3,0
1c00b2a6:	4581                	li	a1,0
1c00b2a8:	b8d5                	j	1c00ab9c <pos_libc_prf+0x5b0>
1c00b2aa:	0c800793          	li	a5,200
1c00b2ae:	df37c563          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00b2b2:	8c42                	mv	s8,a6
1c00b2b4:	f58ff06f          	j	1c00aa0c <pos_libc_prf+0x420>
1c00b2b8:	02b00793          	li	a5,43
1c00b2bc:	02f10223          	sb	a5,36(sp)
1c00b2c0:	02510793          	addi	a5,sp,37
1c00b2c4:	b941                	j	1c00af54 <pos_libc_prf+0x968>
1c00b2c6:	02d00793          	li	a5,45
1c00b2ca:	02f10223          	sb	a5,36(sp)
1c00b2ce:	800007b7          	lui	a5,0x80000
1c00b2d2:	22f58363          	beq	a1,a5,1c00b4f8 <pos_libc_prf+0xf0c>
1c00b2d6:	40b00733          	neg	a4,a1
1c00b2da:	02510793          	addi	a5,sp,37
1c00b2de:	b99d                	j	1c00af54 <pos_libc_prf+0x968>
1c00b2e0:	47b2                	lw	a5,12(sp)
1c00b2e2:	4f81                	li	t6,0
1c00b2e4:	e399                	bnez	a5,1c00b2ea <pos_libc_prf+0xcfe>
1c00b2e6:	01403fb3          	snez	t6,s4
1c00b2ea:	56f5                	li	a3,-3
1c00b2ec:	001a0e13          	addi	t3,s4,1
1c00b2f0:	00d34463          	blt	t1,a3,1c00b2f8 <pos_libc_prf+0xd0c>
1c00b2f4:	166e5d63          	ble	t1,t3,1c00b46e <pos_libc_prf+0xe82>
1c00b2f8:	46c1                	li	a3,16
1c00b2fa:	01c6d363          	ble	t3,a3,1c00b300 <pos_libc_prf+0xd14>
1c00b2fe:	4e41                	li	t3,16
1c00b300:	06700693          	li	a3,103
1c00b304:	1e7d                	addi	t3,t3,-1
1c00b306:	1add8963          	beq	s11,a3,1c00b4b8 <pos_libc_prf+0xecc>
1c00b30a:	04500d93          	li	s11,69
1c00b30e:	b0c5                	j	1c00abee <pos_libc_prf+0x602>
1c00b310:	020102a3          	sb	zero,37(sp)
1c00b314:	57fd                	li	a5,-1
1c00b316:	89ba                	mv	s3,a4
1c00b318:	8c2a                	mv	s8,a0
1c00b31a:	c6fa0563          	beq	s4,a5,1c00a784 <pos_libc_prf+0x198>
1c00b31e:	02000813          	li	a6,32
1c00b322:	c842                	sw	a6,16(sp)
1c00b324:	c60ff06f          	j	1c00a784 <pos_libc_prf+0x198>
1c00b328:	89b6                	mv	s3,a3
1c00b32a:	bdeff06f          	j	1c00a708 <pos_libc_prf+0x11c>
1c00b32e:	8766                	mv	a4,s9
1c00b330:	1c084c63          	bltz	a6,1c00b508 <pos_libc_prf+0xf1c>
1c00b334:	8e55                	or	a2,a2,a3
1c00b336:	fbfd8793          	addi	a5,s11,-65
1c00b33a:	00370993          	addi	s3,a4,3
1c00b33e:	46e5                	li	a3,25
1c00b340:	10061a63          	bnez	a2,1c00b454 <pos_libc_prf+0xe68>
1c00b344:	16f6ee63          	bltu	a3,a5,1c00b4c0 <pos_libc_prf+0xed4>
1c00b348:	6795                	lui	a5,0x5
1c00b34a:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c00b34e:	00f71023          	sh	a5,0(a4)
1c00b352:	04600793          	li	a5,70
1c00b356:	00f70123          	sb	a5,2(a4)
1c00b35a:	000701a3          	sb	zero,3(a4)
1c00b35e:	419989b3          	sub	s3,s3,s9
1c00b362:	b48d                	j	1c00adc4 <pos_libc_prf+0x7d8>
1c00b364:	85e6                	mv	a1,s9
1c00b366:	8766                	mv	a4,s9
1c00b368:	e38ff06f          	j	1c00a9a0 <pos_libc_prf+0x3b4>
1c00b36c:	a00a09e3          	beqz	s4,1c00ad7e <pos_libc_prf+0x792>
1c00b370:	02e00693          	li	a3,46
1c00b374:	002e8513          	addi	a0,t4,2
1c00b378:	00de80a3          	sb	a3,1(t4)
1c00b37c:	b27d                	j	1c00ad2a <pos_libc_prf+0x73e>
1c00b37e:	14605b63          	blez	t1,1c00b4d4 <pos_libc_prf+0xee8>
1c00b382:	006e89b3          	add	s3,t4,t1
1c00b386:	4541                	li	a0,16
1c00b388:	03000893          	li	a7,48
1c00b38c:	00271793          	slli	a5,a4,0x2
1c00b390:	01e75313          	srli	t1,a4,0x1e
1c00b394:	00261693          	slli	a3,a2,0x2
1c00b398:	00e78833          	add	a6,a5,a4
1c00b39c:	00d366b3          	or	a3,t1,a3
1c00b3a0:	96b2                	add	a3,a3,a2
1c00b3a2:	00f837b3          	sltu	a5,a6,a5
1c00b3a6:	97b6                	add	a5,a5,a3
1c00b3a8:	0786                	slli	a5,a5,0x1
1c00b3aa:	01f85693          	srli	a3,a6,0x1f
1c00b3ae:	8fd5                	or	a5,a5,a3
1c00b3b0:	01c7d693          	srli	a3,a5,0x1c
1c00b3b4:	03068693          	addi	a3,a3,48
1c00b3b8:	02a05063          	blez	a0,1c00b3d8 <pos_libc_prf+0xdec>
1c00b3bc:	00181713          	slli	a4,a6,0x1
1c00b3c0:	10000837          	lui	a6,0x10000
1c00b3c4:	187d                	addi	a6,a6,-1
1c00b3c6:	fed58fa3          	sb	a3,-1(a1)
1c00b3ca:	157d                	addi	a0,a0,-1
1c00b3cc:	0107f633          	and	a2,a5,a6
1c00b3d0:	00b98863          	beq	s3,a1,1c00b3e0 <pos_libc_prf+0xdf4>
1c00b3d4:	0585                	addi	a1,a1,1
1c00b3d6:	bf5d                	j	1c00b38c <pos_libc_prf+0xda0>
1c00b3d8:	ff158fa3          	sb	a7,-1(a1)
1c00b3dc:	feb99ce3          	bne	s3,a1,1c00b3d4 <pos_libc_prf+0xde8>
1c00b3e0:	4301                	li	t1,0
1c00b3e2:	48b2                	lw	a7,12(sp)
1c00b3e4:	00089463          	bnez	a7,1c00b3ec <pos_libc_prf+0xe00>
1c00b3e8:	a40a0be3          	beqz	s4,1c00ae3e <pos_libc_prf+0x852>
1c00b3ec:	00198813          	addi	a6,s3,1
1c00b3f0:	001a0693          	addi	a3,s4,1
1c00b3f4:	02e00593          	li	a1,46
1c00b3f8:	00b98023          	sb	a1,0(s3)
1c00b3fc:	99b6                	add	s3,s3,a3
1c00b3fe:	85c2                	mv	a1,a6
1c00b400:	03000693          	li	a3,48
1c00b404:	a2b98be3          	beq	s3,a1,1c00ae3a <pos_libc_prf+0x84e>
1c00b408:	0585                	addi	a1,a1,1
1c00b40a:	9e0302e3          	beqz	t1,1c00adee <pos_libc_prf+0x802>
1c00b40e:	fed58fa3          	sb	a3,-1(a1)
1c00b412:	0305                	addi	t1,t1,1
1c00b414:	bfc5                	j	1c00b404 <pos_libc_prf+0xe18>
1c00b416:	4a19                	li	s4,6
1c00b418:	fadd9b63          	bne	s11,a3,1c00abce <pos_libc_prf+0x5e2>
1c00b41c:	46b2                	lw	a3,12(sp)
1c00b41e:	57f5                	li	a5,-3
1c00b420:	0016cf93          	xori	t6,a3,1
1c00b424:	08f35663          	ble	a5,t1,1c00b4b0 <pos_libc_prf+0xec4>
1c00b428:	06500d93          	li	s11,101
1c00b42c:	4e19                	li	t3,6
1c00b42e:	fc0ff06f          	j	1c00abee <pos_libc_prf+0x602>
1c00b432:	0c800793          	li	a5,200
1c00b436:	c737c163          	blt	a5,s3,1c00a898 <pos_libc_prf+0x2ac>
1c00b43a:	8c2a                	mv	s8,a0
1c00b43c:	c602                	sw	zero,12(sp)
1c00b43e:	dceff06f          	j	1c00aa0c <pos_libc_prf+0x420>
1c00b442:	02d00793          	li	a5,45
1c00b446:	40600333          	neg	t1,t1
1c00b44a:	00f980a3          	sb	a5,1(s3)
1c00b44e:	ba89                	j	1c00ada0 <pos_libc_prf+0x7b4>
1c00b450:	c602                	sw	zero,12(sp)
1c00b452:	b329                	j	1c00b15c <pos_libc_prf+0xb70>
1c00b454:	0cf6ed63          	bltu	a3,a5,1c00b52e <pos_libc_prf+0xf42>
1c00b458:	6791                	lui	a5,0x4
1c00b45a:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c00b45e:	00f71023          	sh	a5,0(a4)
1c00b462:	04e00793          	li	a5,78
1c00b466:	00f70123          	sb	a5,2(a4)
1c00b46a:	bdc5                	j	1c00b35a <pos_libc_prf+0xd6e>
1c00b46c:	4f81                	li	t6,0
1c00b46e:	014307b3          	add	a5,t1,s4
1c00b472:	0807c863          	bltz	a5,1c00b502 <pos_libc_prf+0xf16>
1c00b476:	46c1                	li	a3,16
1c00b478:	8e3e                	mv	t3,a5
1c00b47a:	00f6d363          	ble	a5,a3,1c00b480 <pos_libc_prf+0xe94>
1c00b47e:	4e41                	li	t3,16
1c00b480:	1e7d                	addi	t3,t3,-1
1c00b482:	06600d93          	li	s11,102
1c00b486:	f6079463          	bnez	a5,1c00abee <pos_libc_prf+0x602>
1c00b48a:	4681                	li	a3,0
1c00b48c:	08000637          	lui	a2,0x8000
1c00b490:	fc8ff06f          	j	1c00ac58 <pos_libc_prf+0x66c>
1c00b494:	47e2                	lw	a5,24(sp)
1c00b496:	c7d5                	beqz	a5,1c00b542 <pos_libc_prf+0xf56>
1c00b498:	02000713          	li	a4,32
1c00b49c:	02e10223          	sb	a4,36(sp)
1c00b4a0:	02510e93          	addi	t4,sp,37
1c00b4a4:	4301                	li	t1,0
1c00b4a6:	4501                	li	a0,0
1c00b4a8:	4681                	li	a3,0
1c00b4aa:	4581                	li	a1,0
1c00b4ac:	ef0ff06f          	j	1c00ab9c <pos_libc_prf+0x5b0>
1c00b4b0:	479d                	li	a5,7
1c00b4b2:	fa67dee3          	ble	t1,a5,1c00b46e <pos_libc_prf+0xe82>
1c00b4b6:	4e19                	li	t3,6
1c00b4b8:	06500d93          	li	s11,101
1c00b4bc:	f32ff06f          	j	1c00abee <pos_libc_prf+0x602>
1c00b4c0:	679d                	lui	a5,0x7
1c00b4c2:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c00b4c6:	00f71023          	sh	a5,0(a4)
1c00b4ca:	06600793          	li	a5,102
1c00b4ce:	00f70123          	sb	a5,2(a4)
1c00b4d2:	b561                	j	1c00b35a <pos_libc_prf+0xd6e>
1c00b4d4:	03000693          	li	a3,48
1c00b4d8:	00de8023          	sb	a3,0(t4)
1c00b4dc:	4541                	li	a0,16
1c00b4de:	b711                	j	1c00b3e2 <pos_libc_prf+0xdf6>
1c00b4e0:	48e2                	lw	a7,24(sp)
1c00b4e2:	8ee6                	mv	t4,s9
1c00b4e4:	dc088e63          	beqz	a7,1c00aac0 <pos_libc_prf+0x4d4>
1c00b4e8:	02000713          	li	a4,32
1c00b4ec:	02e10223          	sb	a4,36(sp)
1c00b4f0:	02510e93          	addi	t4,sp,37
1c00b4f4:	dccff06f          	j	1c00aac0 <pos_libc_prf+0x4d4>
1c00b4f8:	80000737          	lui	a4,0x80000
1c00b4fc:	02510793          	addi	a5,sp,37
1c00b500:	bc91                	j	1c00af54 <pos_libc_prf+0x968>
1c00b502:	06600d93          	li	s11,102
1c00b506:	b751                	j	1c00b48a <pos_libc_prf+0xe9e>
1c00b508:	02d00713          	li	a4,45
1c00b50c:	02e10223          	sb	a4,36(sp)
1c00b510:	02510713          	addi	a4,sp,37
1c00b514:	b505                	j	1c00b334 <pos_libc_prf+0xd48>
1c00b516:	a40a5d63          	bgez	s4,1c00a770 <pos_libc_prf+0x184>
1c00b51a:	a62ff06f          	j	1c00a77c <pos_libc_prf+0x190>
1c00b51e:	02d00713          	li	a4,45
1c00b522:	02e10223          	sb	a4,36(sp)
1c00b526:	02510e93          	addi	t4,sp,37
1c00b52a:	d96ff06f          	j	1c00aac0 <pos_libc_prf+0x4d4>
1c00b52e:	6799                	lui	a5,0x6
1c00b530:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c00b534:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00b538:	06e00793          	li	a5,110
1c00b53c:	00f70123          	sb	a5,2(a4)
1c00b540:	bd29                	j	1c00b35a <pos_libc_prf+0xd6e>
1c00b542:	8ee6                	mv	t4,s9
1c00b544:	b785                	j	1c00b4a4 <pos_libc_prf+0xeb8>
1c00b546:	89aa                	mv	s3,a0
1c00b548:	820f8de3          	beqz	t6,1c00ad82 <pos_libc_prf+0x796>
1c00b54c:	b8dd                	j	1c00ae42 <pos_libc_prf+0x856>

1c00b54e <pos_init_start>:
1c00b54e:	1141                	addi	sp,sp,-16
1c00b550:	c422                	sw	s0,8(sp)
1c00b552:	1c000437          	lui	s0,0x1c000
1c00b556:	c606                	sw	ra,12(sp)
1c00b558:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b55c:	de3fc0ef          	jal	ra,1c00833e <pos_soc_init>
1c00b560:	2275                	jal	1c00b70c <pos_irq_init>
1c00b562:	2ae1                	jal	1c00b73a <pos_soc_event_init>
1c00b564:	2a31                	jal	1c00b680 <pos_allocs_init>
1c00b566:	405c                	lw	a5,4(s0)
1c00b568:	c791                	beqz	a5,1c00b574 <pos_init_start+0x26>
1c00b56a:	0411                	addi	s0,s0,4
1c00b56c:	0411                	addi	s0,s0,4
1c00b56e:	9782                	jalr	a5
1c00b570:	401c                	lw	a5,0(s0)
1c00b572:	ffed                	bnez	a5,1c00b56c <pos_init_start+0x1e>
1c00b574:	842ff0ef          	jal	ra,1c00a5b6 <pos_io_start>
1c00b578:	300467f3          	csrrsi	a5,mstatus,8
1c00b57c:	40b2                	lw	ra,12(sp)
1c00b57e:	4422                	lw	s0,8(sp)
1c00b580:	0141                	addi	sp,sp,16
1c00b582:	8082                	ret

1c00b584 <pos_init_stop>:
1c00b584:	1141                	addi	sp,sp,-16
1c00b586:	c422                	sw	s0,8(sp)
1c00b588:	1c000437          	lui	s0,0x1c000
1c00b58c:	c606                	sw	ra,12(sp)
1c00b58e:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b592:	828ff0ef          	jal	ra,1c00a5ba <pos_io_stop>
1c00b596:	405c                	lw	a5,4(s0)
1c00b598:	c791                	beqz	a5,1c00b5a4 <pos_init_stop+0x20>
1c00b59a:	0411                	addi	s0,s0,4
1c00b59c:	0411                	addi	s0,s0,4
1c00b59e:	9782                	jalr	a5
1c00b5a0:	401c                	lw	a5,0(s0)
1c00b5a2:	ffed                	bnez	a5,1c00b59c <pos_init_stop+0x18>
1c00b5a4:	40b2                	lw	ra,12(sp)
1c00b5a6:	4422                	lw	s0,8(sp)
1c00b5a8:	0141                	addi	sp,sp,16
1c00b5aa:	8082                	ret

1c00b5ac <pos_alloc_init>:
1c00b5ac:	00758793          	addi	a5,a1,7
1c00b5b0:	9be1                	andi	a5,a5,-8
1c00b5b2:	40b785b3          	sub	a1,a5,a1
1c00b5b6:	c11c                	sw	a5,0(a0)
1c00b5b8:	8e0d                	sub	a2,a2,a1
1c00b5ba:	00c05663          	blez	a2,1c00b5c6 <pos_alloc_init+0x1a>
1c00b5be:	9a61                	andi	a2,a2,-8
1c00b5c0:	c390                	sw	a2,0(a5)
1c00b5c2:	0007a223          	sw	zero,4(a5)
1c00b5c6:	8082                	ret

1c00b5c8 <pos_alloc>:
1c00b5c8:	4110                	lw	a2,0(a0)
1c00b5ca:	059d                	addi	a1,a1,7
1c00b5cc:	99e1                	andi	a1,a1,-8
1c00b5ce:	ca31                	beqz	a2,1c00b622 <pos_alloc+0x5a>
1c00b5d0:	4218                	lw	a4,0(a2)
1c00b5d2:	425c                	lw	a5,4(a2)
1c00b5d4:	02b75963          	ble	a1,a4,1c00b606 <pos_alloc+0x3e>
1c00b5d8:	cb81                	beqz	a5,1c00b5e8 <pos_alloc+0x20>
1c00b5da:	4398                	lw	a4,0(a5)
1c00b5dc:	43d4                	lw	a3,4(a5)
1c00b5de:	00b75763          	ble	a1,a4,1c00b5ec <pos_alloc+0x24>
1c00b5e2:	863e                	mv	a2,a5
1c00b5e4:	87b6                	mv	a5,a3
1c00b5e6:	fbf5                	bnez	a5,1c00b5da <pos_alloc+0x12>
1c00b5e8:	853e                	mv	a0,a5
1c00b5ea:	8082                	ret
1c00b5ec:	00b70a63          	beq	a4,a1,1c00b600 <pos_alloc+0x38>
1c00b5f0:	00b78533          	add	a0,a5,a1
1c00b5f4:	8f0d                	sub	a4,a4,a1
1c00b5f6:	c118                	sw	a4,0(a0)
1c00b5f8:	c154                	sw	a3,4(a0)
1c00b5fa:	c248                	sw	a0,4(a2)
1c00b5fc:	853e                	mv	a0,a5
1c00b5fe:	8082                	ret
1c00b600:	c254                	sw	a3,4(a2)
1c00b602:	853e                	mv	a0,a5
1c00b604:	8082                	ret
1c00b606:	00e58b63          	beq	a1,a4,1c00b61c <pos_alloc+0x54>
1c00b60a:	00b606b3          	add	a3,a2,a1
1c00b60e:	8f0d                	sub	a4,a4,a1
1c00b610:	c2dc                	sw	a5,4(a3)
1c00b612:	c298                	sw	a4,0(a3)
1c00b614:	87b2                	mv	a5,a2
1c00b616:	c114                	sw	a3,0(a0)
1c00b618:	853e                	mv	a0,a5
1c00b61a:	8082                	ret
1c00b61c:	c11c                	sw	a5,0(a0)
1c00b61e:	87b2                	mv	a5,a2
1c00b620:	b7e1                	j	1c00b5e8 <pos_alloc+0x20>
1c00b622:	4781                	li	a5,0
1c00b624:	b7d1                	j	1c00b5e8 <pos_alloc+0x20>

1c00b626 <pos_free>:
1c00b626:	4118                	lw	a4,0(a0)
1c00b628:	061d                	addi	a2,a2,7
1c00b62a:	9a61                	andi	a2,a2,-8
1c00b62c:	c729                	beqz	a4,1c00b676 <pos_free+0x50>
1c00b62e:	00b76663          	bltu	a4,a1,1c00b63a <pos_free+0x14>
1c00b632:	a0a1                	j	1c00b67a <pos_free+0x54>
1c00b634:	00b7f563          	bleu	a1,a5,1c00b63e <pos_free+0x18>
1c00b638:	873e                	mv	a4,a5
1c00b63a:	435c                	lw	a5,4(a4)
1c00b63c:	ffe5                	bnez	a5,1c00b634 <pos_free+0xe>
1c00b63e:	00c586b3          	add	a3,a1,a2
1c00b642:	02d78463          	beq	a5,a3,1c00b66a <pos_free+0x44>
1c00b646:	c190                	sw	a2,0(a1)
1c00b648:	c1dc                	sw	a5,4(a1)
1c00b64a:	cf11                	beqz	a4,1c00b666 <pos_free+0x40>
1c00b64c:	431c                	lw	a5,0(a4)
1c00b64e:	00f706b3          	add	a3,a4,a5
1c00b652:	00d58463          	beq	a1,a3,1c00b65a <pos_free+0x34>
1c00b656:	c34c                	sw	a1,4(a4)
1c00b658:	8082                	ret
1c00b65a:	4194                	lw	a3,0(a1)
1c00b65c:	41d0                	lw	a2,4(a1)
1c00b65e:	97b6                	add	a5,a5,a3
1c00b660:	c31c                	sw	a5,0(a4)
1c00b662:	c350                	sw	a2,4(a4)
1c00b664:	8082                	ret
1c00b666:	c10c                	sw	a1,0(a0)
1c00b668:	8082                	ret
1c00b66a:	4394                	lw	a3,0(a5)
1c00b66c:	43dc                	lw	a5,4(a5)
1c00b66e:	9636                	add	a2,a2,a3
1c00b670:	c190                	sw	a2,0(a1)
1c00b672:	c1dc                	sw	a5,4(a1)
1c00b674:	bfd9                	j	1c00b64a <pos_free+0x24>
1c00b676:	4781                	li	a5,0
1c00b678:	b7d9                	j	1c00b63e <pos_free+0x18>
1c00b67a:	87ba                	mv	a5,a4
1c00b67c:	4701                	li	a4,0
1c00b67e:	b7c1                	j	1c00b63e <pos_free+0x18>

1c00b680 <pos_allocs_init>:
1c00b680:	1141                	addi	sp,sp,-16
1c00b682:	1c0045b7          	lui	a1,0x1c004
1c00b686:	c606                	sw	ra,12(sp)
1c00b688:	2e858793          	addi	a5,a1,744 # 1c0042e8 <__l2_priv0_end>
1c00b68c:	1c008637          	lui	a2,0x1c008
1c00b690:	04c7cc63          	blt	a5,a2,1c00b6e8 <pos_allocs_init+0x68>
1c00b694:	4581                	li	a1,0
1c00b696:	4601                	li	a2,0
1c00b698:	1c004537          	lui	a0,0x1c004
1c00b69c:	2dc50513          	addi	a0,a0,732 # 1c0042dc <pos_alloc_l2>
1c00b6a0:	3731                	jal	1c00b5ac <pos_alloc_init>
1c00b6a2:	1c00b5b7          	lui	a1,0x1c00b
1c00b6a6:	75458793          	addi	a5,a1,1876 # 1c00b754 <__l2_priv1_end>
1c00b6aa:	1c010637          	lui	a2,0x1c010
1c00b6ae:	02c7c963          	blt	a5,a2,1c00b6e0 <pos_allocs_init+0x60>
1c00b6b2:	4581                	li	a1,0
1c00b6b4:	4601                	li	a2,0
1c00b6b6:	1c004537          	lui	a0,0x1c004
1c00b6ba:	2e050513          	addi	a0,a0,736 # 1c0042e0 <pos_alloc_l2+0x4>
1c00b6be:	35fd                	jal	1c00b5ac <pos_alloc_init>
1c00b6c0:	1c0105b7          	lui	a1,0x1c010
1c00b6c4:	00058793          	mv	a5,a1
1c00b6c8:	40b2                	lw	ra,12(sp)
1c00b6ca:	1c080637          	lui	a2,0x1c080
1c00b6ce:	1c004537          	lui	a0,0x1c004
1c00b6d2:	8e1d                	sub	a2,a2,a5
1c00b6d4:	00058593          	mv	a1,a1
1c00b6d8:	2e450513          	addi	a0,a0,740 # 1c0042e4 <pos_alloc_l2+0x8>
1c00b6dc:	0141                	addi	sp,sp,16
1c00b6de:	b5f9                	j	1c00b5ac <pos_alloc_init>
1c00b6e0:	8e1d                	sub	a2,a2,a5
1c00b6e2:	75458593          	addi	a1,a1,1876 # 1c010754 <__l2_shared_end+0x754>
1c00b6e6:	bfc1                	j	1c00b6b6 <pos_allocs_init+0x36>
1c00b6e8:	8e1d                	sub	a2,a2,a5
1c00b6ea:	2e858593          	addi	a1,a1,744
1c00b6ee:	b76d                	j	1c00b698 <pos_allocs_init+0x18>

1c00b6f0 <pi_l2_malloc>:
1c00b6f0:	85aa                	mv	a1,a0
1c00b6f2:	1c004537          	lui	a0,0x1c004
1c00b6f6:	2dc50513          	addi	a0,a0,732 # 1c0042dc <pos_alloc_l2>
1c00b6fa:	b5f9                	j	1c00b5c8 <pos_alloc>

1c00b6fc <pi_l2_free>:
1c00b6fc:	862e                	mv	a2,a1
1c00b6fe:	85aa                	mv	a1,a0
1c00b700:	1c004537          	lui	a0,0x1c004
1c00b704:	2dc50513          	addi	a0,a0,732 # 1c0042dc <pos_alloc_l2>
1c00b708:	bf39                	j	1c00b626 <pos_free>

1c00b70a <__rt_handle_illegal_instr>:
1c00b70a:	8082                	ret

1c00b70c <pos_irq_init>:
1c00b70c:	1a10a737          	lui	a4,0x1a10a
1c00b710:	f14027f3          	csrr	a5,mhartid
1c00b714:	56fd                	li	a3,-1
1c00b716:	8795                	srai	a5,a5,0x5
1c00b718:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b71c:	03f7f793          	andi	a5,a5,63
1c00b720:	477d                	li	a4,31
1c00b722:	00e78363          	beq	a5,a4,1c00b728 <pos_irq_init+0x1c>
1c00b726:	8082                	ret
1c00b728:	1c0087b7          	lui	a5,0x1c008
1c00b72c:	00078793          	mv	a5,a5
1c00b730:	0017e793          	ori	a5,a5,1
1c00b734:	30579073          	csrw	mtvec,a5
1c00b738:	8082                	ret

1c00b73a <pos_soc_event_init>:
1c00b73a:	1a1067b7          	lui	a5,0x1a106
1c00b73e:	577d                	li	a4,-1
1c00b740:	c3d8                	sw	a4,4(a5)
1c00b742:	c798                	sw	a4,8(a5)
1c00b744:	c7d8                	sw	a4,12(a5)
1c00b746:	cb98                	sw	a4,16(a5)
1c00b748:	cbd8                	sw	a4,20(a5)
1c00b74a:	cf98                	sw	a4,24(a5)
1c00b74c:	cfd8                	sw	a4,28(a5)
1c00b74e:	d398                	sw	a4,32(a5)
1c00b750:	8082                	ret

1c00b752 <_endtext>:
	...
