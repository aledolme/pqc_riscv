riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber768/keygen/build/keygen/keygen

/home/alessandra.dolmeta/pqc_riscv/test/kyber768/keygen/build/keygen/keygen:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	08f0306f          	j	1c00b88e <__rt_handle_illegal_instr>
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
1c008084:	00b0306f          	j	1c00b88e <__rt_handle_illegal_instr>

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
1c0080c4:	29028293          	addi	t0,t0,656 # 1c006350 <in>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	30030313          	addi	t1,t1,768 # 1c0063c8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	27610113          	addi	sp,sp,630 # 1c006350 <in>
1c0080e2:	5e0030ef          	jal	ra,1c00b6c2 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	5fc030ef          	jal	ra,1c00b6f8 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	63e020ef          	jal	ra,1c00a740 <exit>
	...

1c008108 <__clzsi2>:
1c008108:	000107b7          	lui	a5,0x10
1c00810c:	02f57a63          	bgeu	a0,a5,1c008140 <__clzsi2+0x38>
1c008110:	0ff00793          	li	a5,255
1c008114:	00a7b7b3          	sltu	a5,a5,a0
1c008118:	00379793          	slli	a5,a5,0x3
1c00811c:	1c000737          	lui	a4,0x1c000
1c008120:	02000693          	li	a3,32
1c008124:	40f686b3          	sub	a3,a3,a5
1c008128:	00f55533          	srl	a0,a0,a5
1c00812c:	01c70793          	addi	a5,a4,28 # 1c00001c <__clz_tab>
1c008130:	00a78533          	add	a0,a5,a0
1c008134:	00054503          	lbu	a0,0(a0)
1c008138:	40a68533          	sub	a0,a3,a0
1c00813c:	00008067          	ret
1c008140:	01000737          	lui	a4,0x1000
1c008144:	01000793          	li	a5,16
1c008148:	fce56ae3          	bltu	a0,a4,1c00811c <__clzsi2+0x14>
1c00814c:	01800793          	li	a5,24
1c008150:	fcdff06f          	j	1c00811c <__clzsi2+0x14>

1c008154 <printbytes>:
1c008154:	1141                	addi	sp,sp,-16
1c008156:	c422                	sw	s0,8(sp)
1c008158:	c226                	sw	s1,4(sp)
1c00815a:	c04a                	sw	s2,0(sp)
1c00815c:	c606                	sw	ra,12(sp)
1c00815e:	842a                	mv	s0,a0
1c008160:	00b504b3          	add	s1,a0,a1
1c008164:	1c000937          	lui	s2,0x1c000
1c008168:	00044583          	lbu	a1,0(s0)
1c00816c:	11c90513          	addi	a0,s2,284 # 1c00011c <__clz_tab+0x100>
1c008170:	0405                	addi	s0,s0,1
1c008172:	5ea020ef          	jal	ra,1c00a75c <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	5900206f          	j	1c00a716 <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	1c000537          	lui	a0,0x1c000
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	7e912223          	sw	s1,2020(sp)
1c00819e:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0081a2:	9e010113          	addi	sp,sp,-1568
1c0081a6:	4f4020ef          	jal	ra,1c00a69a <puts>
1c0081aa:	6705                	lui	a4,0x1
1c0081ac:	e0070793          	addi	a5,a4,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c0081b0:	747d                	lui	s0,0xfffff
1c0081b2:	978a                	add	a5,a5,sp
1c0081b4:	6a040493          	addi	s1,s0,1696 # fffff6a0 <__l2_shared_end+0xe3fef6a0>
1c0081b8:	94be                	add	s1,s1,a5
1c0081ba:	e0070793          	addi	a5,a4,-512
1c0081be:	978a                	add	a5,a5,sp
1c0081c0:	20040413          	addi	s0,s0,512
1c0081c4:	943e                	add	s0,s0,a5
1c0081c6:	85a6                	mv	a1,s1
1c0081c8:	8522                	mv	a0,s0
1c0081ca:	1fb010ef          	jal	ra,1c009bc4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c0081ce:	1c000537          	lui	a0,0x1c000
1c0081d2:	13450513          	addi	a0,a0,308 # 1c000134 <__clz_tab+0x118>
1c0081d6:	4c4020ef          	jal	ra,1c00a69a <puts>
1c0081da:	1c000537          	lui	a0,0x1c000
1c0081de:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c0081e2:	4b8020ef          	jal	ra,1c00a69a <puts>
1c0081e6:	4a000593          	li	a1,1184
1c0081ea:	8522                	mv	a0,s0
1c0081ec:	37a5                	jal	1c008154 <printbytes>
1c0081ee:	1c000537          	lui	a0,0x1c000
1c0081f2:	14850513          	addi	a0,a0,328 # 1c000148 <__clz_tab+0x12c>
1c0081f6:	4a4020ef          	jal	ra,1c00a69a <puts>
1c0081fa:	6585                	lui	a1,0x1
1c0081fc:	8526                	mv	a0,s1
1c0081fe:	96058593          	addi	a1,a1,-1696 # 960 <__CTOR_LIST__-0x1bfff6a4>
1c008202:	3f89                	jal	1c008154 <printbytes>
1c008204:	62010113          	addi	sp,sp,1568
1c008208:	7ec12083          	lw	ra,2028(sp)
1c00820c:	7e812403          	lw	s0,2024(sp)
1c008210:	7e412483          	lw	s1,2020(sp)
1c008214:	4501                	li	a0,0
1c008216:	7f010113          	addi	sp,sp,2032
1c00821a:	8082                	ret

1c00821c <pos_fll_init>:
1c00821c:	1101                	addi	sp,sp,-32
1c00821e:	1a1005b7          	lui	a1,0x1a100
1c008222:	c64e                	sw	s3,12(sp)
1c008224:	00451613          	slli	a2,a0,0x4
1c008228:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00822c:	99b2                	add	s3,s3,a2
1c00822e:	0009a703          	lw	a4,0(s3)
1c008232:	ca26                	sw	s1,20(sp)
1c008234:	ce06                	sw	ra,28(sp)
1c008236:	cc22                	sw	s0,24(sp)
1c008238:	c84a                	sw	s2,16(sp)
1c00823a:	c452                	sw	s4,8(sp)
1c00823c:	84aa                	mv	s1,a0
1c00823e:	87ba                	mv	a5,a4
1c008240:	04074763          	bltz	a4,1c00828e <pos_fll_init+0x72>
1c008244:	00858693          	addi	a3,a1,8
1c008248:	96b2                	add	a3,a3,a2
1c00824a:	429c                	lw	a5,0(a3)
1c00824c:	f0000537          	lui	a0,0xf0000
1c008250:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c008254:	8fe9                	and	a5,a5,a0
1c008256:	00502537          	lui	a0,0x502
1c00825a:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c00825e:	8fc9                	or	a5,a5,a0
1c008260:	05b1                	addi	a1,a1,12
1c008262:	c29c                	sw	a5,0(a3)
1c008264:	962e                	add	a2,a2,a1
1c008266:	4214                	lw	a3,0(a2)
1c008268:	fc0107b7          	lui	a5,0xfc010
1c00826c:	17fd                	addi	a5,a5,-1
1c00826e:	01875593          	srli	a1,a4,0x18
1c008272:	8efd                	and	a3,a3,a5
1c008274:	0c05e593          	ori	a1,a1,192
1c008278:	00871793          	slli	a5,a4,0x8
1c00827c:	014c0537          	lui	a0,0x14c0
1c008280:	8ec9                	or	a3,a3,a0
1c008282:	05e2                	slli	a1,a1,0x18
1c008284:	83a1                	srli	a5,a5,0x8
1c008286:	c214                	sw	a3,0(a2)
1c008288:	8fcd                	or	a5,a5,a1
1c00828a:	00f9a023          	sw	a5,0(s3)
1c00828e:	1c006437          	lui	s0,0x1c006
1c008292:	3a840413          	addi	s0,s0,936 # 1c0063a8 <pos_fll_freq>
1c008296:	00249a13          	slli	s4,s1,0x2
1c00829a:	014406b3          	add	a3,s0,s4
1c00829e:	0006a903          	lw	s2,0(a3)
1c0082a2:	02091d63          	bnez	s2,1c0082dc <pos_fll_init+0xc0>
1c0082a6:	83e9                	srli	a5,a5,0x1a
1c0082a8:	0742                	slli	a4,a4,0x10
1c0082aa:	8341                	srli	a4,a4,0x10
1c0082ac:	8bbd                	andi	a5,a5,15
1c0082ae:	073e                	slli	a4,a4,0xf
1c0082b0:	17fd                	addi	a5,a5,-1
1c0082b2:	00f75933          	srl	s2,a4,a5
1c0082b6:	0126a023          	sw	s2,0(a3)
1c0082ba:	1c0066b7          	lui	a3,0x1c006
1c0082be:	3a068693          	addi	a3,a3,928 # 1c0063a0 <pos_fll_is_on>
1c0082c2:	96a6                	add	a3,a3,s1
1c0082c4:	4785                	li	a5,1
1c0082c6:	00f68023          	sb	a5,0(a3)
1c0082ca:	40f2                	lw	ra,28(sp)
1c0082cc:	4462                	lw	s0,24(sp)
1c0082ce:	44d2                	lw	s1,20(sp)
1c0082d0:	49b2                	lw	s3,12(sp)
1c0082d2:	4a22                	lw	s4,8(sp)
1c0082d4:	854a                	mv	a0,s2
1c0082d6:	4942                	lw	s2,16(sp)
1c0082d8:	6105                	addi	sp,sp,32
1c0082da:	8082                	ret
1c0082dc:	854a                	mv	a0,s2
1c0082de:	352d                	jal	1c008108 <__clzsi2>
1c0082e0:	1579                	addi	a0,a0,-2
1c0082e2:	8105                	srli	a0,a0,0x1
1c0082e4:	c939                	beqz	a0,1c00833a <pos_fll_init+0x11e>
1c0082e6:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c0082ea:	1c0066b7          	lui	a3,0x1c006
1c0082ee:	4785                	li	a5,1
1c0082f0:	00c797b3          	sll	a5,a5,a2
1c0082f4:	00a91733          	sll	a4,s2,a0
1c0082f8:	3a068693          	addi	a3,a3,928 # 1c0063a0 <pos_fll_is_on>
1c0082fc:	7661                	lui	a2,0xffff8
1c0082fe:	8e79                	and	a2,a2,a4
1c008300:	009685b3          	add	a1,a3,s1
1c008304:	97b2                	add	a5,a5,a2
1c008306:	0005c603          	lbu	a2,0(a1)
1c00830a:	9452                	add	s0,s0,s4
1c00830c:	00a7d7b3          	srl	a5,a5,a0
1c008310:	c01c                	sw	a5,0(s0)
1c008312:	da45                	beqz	a2,1c0082c2 <pos_fll_init+0xa6>
1c008314:	0009a783          	lw	a5,0(s3)
1c008318:	833d                	srli	a4,a4,0xf
1c00831a:	0742                	slli	a4,a4,0x10
1c00831c:	7641                	lui	a2,0xffff0
1c00831e:	8341                	srli	a4,a4,0x10
1c008320:	8ff1                	and	a5,a5,a2
1c008322:	8fd9                	or	a5,a5,a4
1c008324:	0505                	addi	a0,a0,1
1c008326:	c4000737          	lui	a4,0xc4000
1c00832a:	893d                	andi	a0,a0,15
1c00832c:	177d                	addi	a4,a4,-1
1c00832e:	056a                	slli	a0,a0,0x1a
1c008330:	8ff9                	and	a5,a5,a4
1c008332:	8d5d                	or	a0,a0,a5
1c008334:	00a9a023          	sw	a0,0(s3)
1c008338:	b769                	j	1c0082c2 <pos_fll_init+0xa6>
1c00833a:	4505                	li	a0,1
1c00833c:	b76d                	j	1c0082e6 <pos_fll_init+0xca>

1c00833e <pos_fll_constructor>:
1c00833e:	1c0067b7          	lui	a5,0x1c006
1c008342:	3a878793          	addi	a5,a5,936 # 1c0063a8 <pos_fll_freq>
1c008346:	0007a023          	sw	zero,0(a5)
1c00834a:	0007a223          	sw	zero,4(a5)
1c00834e:	1c0067b7          	lui	a5,0x1c006
1c008352:	3a079023          	sh	zero,928(a5) # 1c0063a0 <pos_fll_is_on>
1c008356:	8082                	ret

1c008358 <pos_soc_init>:
1c008358:	1141                	addi	sp,sp,-16
1c00835a:	c606                	sw	ra,12(sp)
1c00835c:	c422                	sw	s0,8(sp)
1c00835e:	37c5                	jal	1c00833e <pos_fll_constructor>
1c008360:	4501                	li	a0,0
1c008362:	3d6d                	jal	1c00821c <pos_fll_init>
1c008364:	1c006437          	lui	s0,0x1c006
1c008368:	87aa                	mv	a5,a0
1c00836a:	3b040413          	addi	s0,s0,944 # 1c0063b0 <pos_freq_domains>
1c00836e:	4505                	li	a0,1
1c008370:	c01c                	sw	a5,0(s0)
1c008372:	356d                	jal	1c00821c <pos_fll_init>
1c008374:	40b2                	lw	ra,12(sp)
1c008376:	c408                	sw	a0,8(s0)
1c008378:	4422                	lw	s0,8(sp)
1c00837a:	0141                	addi	sp,sp,16
1c00837c:	8082                	ret

1c00837e <KeccakF1600_StatePermute>:
1c00837e:	1a400837          	lui	a6,0x1a400
1c008382:	87aa                	mv	a5,a0
1c008384:	0c850613          	addi	a2,a0,200
1c008388:	1141                	addi	sp,sp,-16
1c00838a:	40a80533          	sub	a0,a6,a0
1c00838e:	4394                	lw	a3,0(a5)
1c008390:	00f50733          	add	a4,a0,a5
1c008394:	0791                	addi	a5,a5,4
1c008396:	c314                	sw	a3,0(a4)
1c008398:	fec79be3          	bne	a5,a2,1c00838e <KeccakF1600_StatePermute+0x10>
1c00839c:	4785                	li	a5,1
1c00839e:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c0083a2:	1a400737          	lui	a4,0x1a400
1c0083a6:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c0083aa:	8b85                	andi	a5,a5,1
1c0083ac:	dfed                	beqz	a5,1c0083a6 <KeccakF1600_StatePermute+0x28>
1c0083ae:	c602                	sw	zero,12(sp)
1c0083b0:	4732                	lw	a4,12(sp)
1c0083b2:	03100793          	li	a5,49
1c0083b6:	02e7c663          	blt	a5,a4,1c0083e2 <KeccakF1600_StatePermute+0x64>
1c0083ba:	1a400637          	lui	a2,0x1a400
1c0083be:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0083c2:	03100513          	li	a0,49
1c0083c6:	4732                	lw	a4,12(sp)
1c0083c8:	47b2                	lw	a5,12(sp)
1c0083ca:	070a                	slli	a4,a4,0x2
1c0083cc:	9732                	add	a4,a4,a2
1c0083ce:	4314                	lw	a3,0(a4)
1c0083d0:	4732                	lw	a4,12(sp)
1c0083d2:	078a                	slli	a5,a5,0x2
1c0083d4:	97ae                	add	a5,a5,a1
1c0083d6:	0705                	addi	a4,a4,1
1c0083d8:	c63a                	sw	a4,12(sp)
1c0083da:	4732                	lw	a4,12(sp)
1c0083dc:	c394                	sw	a3,0(a5)
1c0083de:	fee554e3          	bge	a0,a4,1c0083c6 <KeccakF1600_StatePermute+0x48>
1c0083e2:	0141                	addi	sp,sp,16
1c0083e4:	8082                	ret

1c0083e6 <KYBER_poly_ntt>:
1c0083e6:	1a4007b7          	lui	a5,0x1a400
1c0083ea:	4705                	li	a4,1
1c0083ec:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c0083f0:	3007a423          	sw	zero,776(a5)
1c0083f4:	20050693          	addi	a3,a0,512
1c0083f8:	1a400737          	lui	a4,0x1a400
1c0083fc:	411c                	lw	a5,0(a0)
1c0083fe:	0511                	addi	a0,a0,4
1c008400:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008404:	fed51ce3          	bne	a0,a3,1c0083fc <KYBER_poly_ntt+0x16>
1c008408:	08000793          	li	a5,128
1c00840c:	30f72423          	sw	a5,776(a4)
1c008410:	30072423          	sw	zero,776(a4)
1c008414:	1a400737          	lui	a4,0x1a400
1c008418:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00841c:	8b85                	andi	a5,a5,1
1c00841e:	dfed                	beqz	a5,1c008418 <KYBER_poly_ntt+0x32>
1c008420:	47c1                	li	a5,16
1c008422:	30f72423          	sw	a5,776(a4)
1c008426:	30072423          	sw	zero,776(a4)
1c00842a:	20058693          	addi	a3,a1,512
1c00842e:	1a400737          	lui	a4,0x1a400
1c008432:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c008436:	0591                	addi	a1,a1,4
1c008438:	fef5ae23          	sw	a5,-4(a1)
1c00843c:	fed59be3          	bne	a1,a3,1c008432 <KYBER_poly_ntt+0x4c>
1c008440:	8082                	ret

1c008442 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c008442:	1101                	addi	sp,sp,-32
1c008444:	55555f37          	lui	t5,0x55555
1c008448:	ce22                	sw	s0,28(sp)
1c00844a:	cc26                	sw	s1,24(sp)
1c00844c:	ca4a                	sw	s2,20(sp)
1c00844e:	c84e                	sw	s3,16(sp)
1c008450:	c652                	sw	s4,12(sp)
1c008452:	20050f93          	addi	t6,a0,512
1c008456:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00845a:	0015c683          	lbu	a3,1(a1)
1c00845e:	0005c603          	lbu	a2,0(a1)
1c008462:	0025c783          	lbu	a5,2(a1)
1c008466:	0035c703          	lbu	a4,3(a1)
1c00846a:	06a2                	slli	a3,a3,0x8
1c00846c:	8ed1                	or	a3,a3,a2
1c00846e:	07c2                	slli	a5,a5,0x10
1c008470:	8fd5                	or	a5,a5,a3
1c008472:	0762                	slli	a4,a4,0x18
1c008474:	8f5d                	or	a4,a4,a5
1c008476:	00175793          	srli	a5,a4,0x1
1c00847a:	01e7f7b3          	and	a5,a5,t5
1c00847e:	01e77733          	and	a4,a4,t5
1c008482:	97ba                	add	a5,a5,a4
1c008484:	0027da13          	srli	s4,a5,0x2
1c008488:	0047d313          	srli	t1,a5,0x4
1c00848c:	0067d993          	srli	s3,a5,0x6
1c008490:	0087d893          	srli	a7,a5,0x8
1c008494:	00a7d913          	srli	s2,a5,0xa
1c008498:	00c7d813          	srli	a6,a5,0xc
1c00849c:	00e7d493          	srli	s1,a5,0xe
1c0084a0:	0107d613          	srli	a2,a5,0x10
1c0084a4:	0127d413          	srli	s0,a5,0x12
1c0084a8:	0147d693          	srli	a3,a5,0x14
1c0084ac:	0167d393          	srli	t2,a5,0x16
1c0084b0:	0187d713          	srli	a4,a5,0x18
1c0084b4:	01a7d293          	srli	t0,a5,0x1a
1c0084b8:	01c7de93          	srli	t4,a5,0x1c
1c0084bc:	0037fe13          	andi	t3,a5,3
1c0084c0:	003a7a13          	andi	s4,s4,3
1c0084c4:	00337313          	andi	t1,t1,3
1c0084c8:	0039f993          	andi	s3,s3,3
1c0084cc:	0038f893          	andi	a7,a7,3
1c0084d0:	00397913          	andi	s2,s2,3
1c0084d4:	00387813          	andi	a6,a6,3
1c0084d8:	888d                	andi	s1,s1,3
1c0084da:	8a0d                	andi	a2,a2,3
1c0084dc:	880d                	andi	s0,s0,3
1c0084de:	8a8d                	andi	a3,a3,3
1c0084e0:	0033f393          	andi	t2,t2,3
1c0084e4:	8b0d                	andi	a4,a4,3
1c0084e6:	0032f293          	andi	t0,t0,3
1c0084ea:	003efe93          	andi	t4,t4,3
1c0084ee:	83f9                	srli	a5,a5,0x1e
1c0084f0:	414e0e33          	sub	t3,t3,s4
1c0084f4:	41330333          	sub	t1,t1,s3
1c0084f8:	412888b3          	sub	a7,a7,s2
1c0084fc:	40980833          	sub	a6,a6,s1
1c008500:	8e01                	sub	a2,a2,s0
1c008502:	407686b3          	sub	a3,a3,t2
1c008506:	40570733          	sub	a4,a4,t0
1c00850a:	40fe87b3          	sub	a5,t4,a5
1c00850e:	01c51023          	sh	t3,0(a0)
1c008512:	00651123          	sh	t1,2(a0)
1c008516:	01151223          	sh	a7,4(a0)
1c00851a:	01051323          	sh	a6,6(a0)
1c00851e:	00c51423          	sh	a2,8(a0)
1c008522:	00d51523          	sh	a3,10(a0)
1c008526:	00e51623          	sh	a4,12(a0)
1c00852a:	00f51723          	sh	a5,14(a0)
1c00852e:	0541                	addi	a0,a0,16
1c008530:	0591                	addi	a1,a1,4
1c008532:	f3f514e3          	bne	a0,t6,1c00845a <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c008536:	4472                	lw	s0,28(sp)
1c008538:	44e2                	lw	s1,24(sp)
1c00853a:	4952                	lw	s2,20(sp)
1c00853c:	49c2                	lw	s3,16(sp)
1c00853e:	4a32                	lw	s4,12(sp)
1c008540:	6105                	addi	sp,sp,32
1c008542:	8082                	ret

1c008544 <keccak_absorb.constprop.1>:
1c008544:	7151                	addi	sp,sp,-240
1c008546:	d3a6                	sw	s1,228(sp)
1c008548:	cfce                	sw	s3,220(sp)
1c00854a:	cdd2                	sw	s4,216(sp)
1c00854c:	cbd6                	sw	s5,212(sp)
1c00854e:	84b6                	mv	s1,a3
1c008550:	d786                	sw	ra,236(sp)
1c008552:	d5a2                	sw	s0,232(sp)
1c008554:	d1ca                	sw	s2,224(sp)
1c008556:	c9da                	sw	s6,208(sp)
1c008558:	8a2a                	mv	s4,a0
1c00855a:	87ae                	mv	a5,a1
1c00855c:	8ab2                	mv	s5,a2
1c00855e:	89aa                	mv	s3,a0
1c008560:	0c850693          	addi	a3,a0,200
1c008564:	872a                	mv	a4,a0
1c008566:	4581                	li	a1,0
1c008568:	4601                	li	a2,0
1c00856a:	c30c                	sw	a1,0(a4)
1c00856c:	c350                	sw	a2,4(a4)
1c00856e:	0721                	addi	a4,a4,8
1c008570:	fee69be3          	bne	a3,a4,1c008566 <keccak_absorb.constprop.1+0x22>
1c008574:	08700713          	li	a4,135
1c008578:	09577363          	bgeu	a4,s5,1c0085fe <keccak_absorb.constprop.1+0xba>
1c00857c:	08878b13          	addi	s6,a5,136
1c008580:	895a                	mv	s2,s6
1c008582:	08700413          	li	s0,135
1c008586:	86d2                	mv	a3,s4
1c008588:	0017c703          	lbu	a4,1(a5)
1c00858c:	0027ce03          	lbu	t3,2(a5)
1c008590:	0057c803          	lbu	a6,5(a5)
1c008594:	0047cf03          	lbu	t5,4(a5)
1c008598:	0067c503          	lbu	a0,6(a5)
1c00859c:	0007ce83          	lbu	t4,0(a5)
1c0085a0:	0037c583          	lbu	a1,3(a5)
1c0085a4:	0077c603          	lbu	a2,7(a5)
1c0085a8:	0722                	slli	a4,a4,0x8
1c0085aa:	0e42                	slli	t3,t3,0x10
1c0085ac:	0822                	slli	a6,a6,0x8
1c0085ae:	0006a303          	lw	t1,0(a3)
1c0085b2:	0046a883          	lw	a7,4(a3)
1c0085b6:	01c76733          	or	a4,a4,t3
1c0085ba:	01e86833          	or	a6,a6,t5
1c0085be:	0542                	slli	a0,a0,0x10
1c0085c0:	01d76733          	or	a4,a4,t4
1c0085c4:	05e2                	slli	a1,a1,0x18
1c0085c6:	01056533          	or	a0,a0,a6
1c0085ca:	0662                	slli	a2,a2,0x18
1c0085cc:	8f4d                	or	a4,a4,a1
1c0085ce:	8e49                	or	a2,a2,a0
1c0085d0:	00e34733          	xor	a4,t1,a4
1c0085d4:	00c8c633          	xor	a2,a7,a2
1c0085d8:	c298                	sw	a4,0(a3)
1c0085da:	c2d0                	sw	a2,4(a3)
1c0085dc:	07a1                	addi	a5,a5,8
1c0085de:	06a1                	addi	a3,a3,8
1c0085e0:	faf914e3          	bne	s2,a5,1c008588 <keccak_absorb.constprop.1+0x44>
1c0085e4:	85d2                	mv	a1,s4
1c0085e6:	8552                	mv	a0,s4
1c0085e8:	3b59                	jal	1c00837e <KeccakF1600_StatePermute>
1c0085ea:	f78a8a93          	addi	s5,s5,-136
1c0085ee:	08890913          	addi	s2,s2,136
1c0085f2:	87da                	mv	a5,s6
1c0085f4:	01547563          	bgeu	s0,s5,1c0085fe <keccak_absorb.constprop.1+0xba>
1c0085f8:	088b0b13          	addi	s6,s6,136
1c0085fc:	b769                	j	1c008586 <keccak_absorb.constprop.1+0x42>
1c0085fe:	0038                	addi	a4,sp,8
1c008600:	09010e13          	addi	t3,sp,144
1c008604:	86ba                	mv	a3,a4
1c008606:	0006a023          	sw	zero,0(a3)
1c00860a:	0691                	addi	a3,a3,4
1c00860c:	fede1de3          	bne	t3,a3,1c008606 <keccak_absorb.constprop.1+0xc2>
1c008610:	080a8263          	beqz	s5,1c008694 <keccak_absorb.constprop.1+0x150>
1c008614:	fffa8693          	addi	a3,s5,-1
1c008618:	4609                	li	a2,2
1c00861a:	10d67163          	bgeu	a2,a3,1c00871c <keccak_absorb.constprop.1+0x1d8>
1c00861e:	ffcaf313          	andi	t1,s5,-4
1c008622:	86be                	mv	a3,a5
1c008624:	933e                	add	t1,t1,a5
1c008626:	883a                	mv	a6,a4
1c008628:	0016c503          	lbu	a0,1(a3)
1c00862c:	0006c883          	lbu	a7,0(a3)
1c008630:	0026c583          	lbu	a1,2(a3)
1c008634:	0036c603          	lbu	a2,3(a3)
1c008638:	0522                	slli	a0,a0,0x8
1c00863a:	01156533          	or	a0,a0,a7
1c00863e:	05c2                	slli	a1,a1,0x10
1c008640:	8dc9                	or	a1,a1,a0
1c008642:	0662                	slli	a2,a2,0x18
1c008644:	8e4d                	or	a2,a2,a1
1c008646:	00c82023          	sw	a2,0(a6)
1c00864a:	0691                	addi	a3,a3,4
1c00864c:	0811                	addi	a6,a6,4
1c00864e:	fcd31de3          	bne	t1,a3,1c008628 <keccak_absorb.constprop.1+0xe4>
1c008652:	ffcaf693          	andi	a3,s5,-4
1c008656:	02da8f63          	beq	s5,a3,1c008694 <keccak_absorb.constprop.1+0x150>
1c00865a:	00d78633          	add	a2,a5,a3
1c00865e:	00064503          	lbu	a0,0(a2)
1c008662:	098c                	addi	a1,sp,208
1c008664:	95b6                	add	a1,a1,a3
1c008666:	00168613          	addi	a2,a3,1
1c00866a:	f2a58c23          	sb	a0,-200(a1)
1c00866e:	03567363          	bgeu	a2,s5,1c008694 <keccak_absorb.constprop.1+0x150>
1c008672:	00c785b3          	add	a1,a5,a2
1c008676:	0005c583          	lbu	a1,0(a1)
1c00867a:	0988                	addi	a0,sp,208
1c00867c:	962a                	add	a2,a2,a0
1c00867e:	0689                	addi	a3,a3,2
1c008680:	f2b60c23          	sb	a1,-200(a2)
1c008684:	0156f863          	bgeu	a3,s5,1c008694 <keccak_absorb.constprop.1+0x150>
1c008688:	97b6                	add	a5,a5,a3
1c00868a:	0007c783          	lbu	a5,0(a5)
1c00868e:	96aa                	add	a3,a3,a0
1c008690:	f2f68c23          	sb	a5,-200(a3)
1c008694:	099c                	addi	a5,sp,208
1c008696:	9abe                	add	s5,s5,a5
1c008698:	f29a8c23          	sb	s1,-200(s5)
1c00869c:	08f14783          	lbu	a5,143(sp)
1c0086a0:	f807e793          	ori	a5,a5,-128
1c0086a4:	08f107a3          	sb	a5,143(sp)
1c0086a8:	00174783          	lbu	a5,1(a4)
1c0086ac:	00274303          	lbu	t1,2(a4)
1c0086b0:	00574503          	lbu	a0,5(a4)
1c0086b4:	00474f03          	lbu	t5,4(a4)
1c0086b8:	00674583          	lbu	a1,6(a4)
1c0086bc:	00074e83          	lbu	t4,0(a4)
1c0086c0:	00374603          	lbu	a2,3(a4)
1c0086c4:	00774683          	lbu	a3,7(a4)
1c0086c8:	07a2                	slli	a5,a5,0x8
1c0086ca:	0342                	slli	t1,t1,0x10
1c0086cc:	0522                	slli	a0,a0,0x8
1c0086ce:	0009a883          	lw	a7,0(s3)
1c0086d2:	0049a803          	lw	a6,4(s3)
1c0086d6:	0067e7b3          	or	a5,a5,t1
1c0086da:	01e56533          	or	a0,a0,t5
1c0086de:	05c2                	slli	a1,a1,0x10
1c0086e0:	01d7e7b3          	or	a5,a5,t4
1c0086e4:	0662                	slli	a2,a2,0x18
1c0086e6:	8dc9                	or	a1,a1,a0
1c0086e8:	06e2                	slli	a3,a3,0x18
1c0086ea:	8e5d                	or	a2,a2,a5
1c0086ec:	00b6e7b3          	or	a5,a3,a1
1c0086f0:	00c8c633          	xor	a2,a7,a2
1c0086f4:	00f847b3          	xor	a5,a6,a5
1c0086f8:	00c9a023          	sw	a2,0(s3)
1c0086fc:	00f9a223          	sw	a5,4(s3)
1c008700:	0721                	addi	a4,a4,8
1c008702:	09a1                	addi	s3,s3,8
1c008704:	faee12e3          	bne	t3,a4,1c0086a8 <keccak_absorb.constprop.1+0x164>
1c008708:	50be                	lw	ra,236(sp)
1c00870a:	542e                	lw	s0,232(sp)
1c00870c:	549e                	lw	s1,228(sp)
1c00870e:	590e                	lw	s2,224(sp)
1c008710:	49fe                	lw	s3,220(sp)
1c008712:	4a6e                	lw	s4,216(sp)
1c008714:	4ade                	lw	s5,212(sp)
1c008716:	4b4e                	lw	s6,208(sp)
1c008718:	616d                	addi	sp,sp,240
1c00871a:	8082                	ret
1c00871c:	4681                	li	a3,0
1c00871e:	bf35                	j	1c00865a <keccak_absorb.constprop.1+0x116>

1c008720 <shake128_absorb>:
1c008720:	7151                	addi	sp,sp,-240
1c008722:	cfce                	sw	s3,220(sp)
1c008724:	89aa                	mv	s3,a0
1c008726:	0c800513          	li	a0,200
1c00872a:	d5a2                	sw	s0,232(sp)
1c00872c:	d3a6                	sw	s1,228(sp)
1c00872e:	d786                	sw	ra,236(sp)
1c008730:	d1ca                	sw	s2,224(sp)
1c008732:	842e                	mv	s0,a1
1c008734:	84b2                	mv	s1,a2
1c008736:	13e030ef          	jal	ra,1c00b874 <pi_l2_malloc>
1c00873a:	00a9a023          	sw	a0,0(s3)
1c00873e:	1c050363          	beqz	a0,1c008904 <shake128_absorb+0x1e4>
1c008742:	892a                	mv	s2,a0
1c008744:	0c850713          	addi	a4,a0,200
1c008748:	87aa                	mv	a5,a0
1c00874a:	4601                	li	a2,0
1c00874c:	4681                	li	a3,0
1c00874e:	c390                	sw	a2,0(a5)
1c008750:	c3d4                	sw	a3,4(a5)
1c008752:	07a1                	addi	a5,a5,8
1c008754:	fef71be3          	bne	a4,a5,1c00874a <shake128_absorb+0x2a>
1c008758:	0a700793          	li	a5,167
1c00875c:	0897f063          	bgeu	a5,s1,1c0087dc <shake128_absorb+0xbc>
1c008760:	0a700993          	li	s3,167
1c008764:	87a2                	mv	a5,s0
1c008766:	40890eb3          	sub	t4,s2,s0
1c00876a:	0a840413          	addi	s0,s0,168
1c00876e:	0017c703          	lbu	a4,1(a5)
1c008772:	0027ce03          	lbu	t3,2(a5)
1c008776:	0057c503          	lbu	a0,5(a5)
1c00877a:	0047cf83          	lbu	t6,4(a5)
1c00877e:	0067c583          	lbu	a1,6(a5)
1c008782:	0007cf03          	lbu	t5,0(a5)
1c008786:	0037c603          	lbu	a2,3(a5)
1c00878a:	0077c683          	lbu	a3,7(a5)
1c00878e:	00fe8833          	add	a6,t4,a5
1c008792:	0722                	slli	a4,a4,0x8
1c008794:	0e42                	slli	t3,t3,0x10
1c008796:	0522                	slli	a0,a0,0x8
1c008798:	00082303          	lw	t1,0(a6)
1c00879c:	00482883          	lw	a7,4(a6)
1c0087a0:	01c76733          	or	a4,a4,t3
1c0087a4:	01f56533          	or	a0,a0,t6
1c0087a8:	05c2                	slli	a1,a1,0x10
1c0087aa:	01e76733          	or	a4,a4,t5
1c0087ae:	0662                	slli	a2,a2,0x18
1c0087b0:	8dc9                	or	a1,a1,a0
1c0087b2:	06e2                	slli	a3,a3,0x18
1c0087b4:	8f51                	or	a4,a4,a2
1c0087b6:	8ecd                	or	a3,a3,a1
1c0087b8:	00e34733          	xor	a4,t1,a4
1c0087bc:	00d8c6b3          	xor	a3,a7,a3
1c0087c0:	00e82023          	sw	a4,0(a6)
1c0087c4:	00d82223          	sw	a3,4(a6)
1c0087c8:	07a1                	addi	a5,a5,8
1c0087ca:	faf412e3          	bne	s0,a5,1c00876e <shake128_absorb+0x4e>
1c0087ce:	f5848493          	addi	s1,s1,-168
1c0087d2:	85ca                	mv	a1,s2
1c0087d4:	854a                	mv	a0,s2
1c0087d6:	3665                	jal	1c00837e <KeccakF1600_StatePermute>
1c0087d8:	f899e6e3          	bltu	s3,s1,1c008764 <shake128_absorb+0x44>
1c0087dc:	0b010313          	addi	t1,sp,176
1c0087e0:	003c                	addi	a5,sp,8
1c0087e2:	0007a023          	sw	zero,0(a5)
1c0087e6:	0791                	addi	a5,a5,4
1c0087e8:	fef31de3          	bne	t1,a5,1c0087e2 <shake128_absorb+0xc2>
1c0087ec:	c0d9                	beqz	s1,1c008872 <shake128_absorb+0x152>
1c0087ee:	fff48793          	addi	a5,s1,-1
1c0087f2:	4709                	li	a4,2
1c0087f4:	10f77663          	bgeu	a4,a5,1c008900 <shake128_absorb+0x1e0>
1c0087f8:	ffc4f593          	andi	a1,s1,-4
1c0087fc:	87a2                	mv	a5,s0
1c0087fe:	95a2                	add	a1,a1,s0
1c008800:	0028                	addi	a0,sp,8
1c008802:	0017c603          	lbu	a2,1(a5)
1c008806:	0007c803          	lbu	a6,0(a5)
1c00880a:	0027c683          	lbu	a3,2(a5)
1c00880e:	0037c703          	lbu	a4,3(a5)
1c008812:	0622                	slli	a2,a2,0x8
1c008814:	01066633          	or	a2,a2,a6
1c008818:	06c2                	slli	a3,a3,0x10
1c00881a:	8ed1                	or	a3,a3,a2
1c00881c:	0762                	slli	a4,a4,0x18
1c00881e:	8f55                	or	a4,a4,a3
1c008820:	c118                	sw	a4,0(a0)
1c008822:	0791                	addi	a5,a5,4
1c008824:	0511                	addi	a0,a0,4
1c008826:	fcf59ee3          	bne	a1,a5,1c008802 <shake128_absorb+0xe2>
1c00882a:	ffc4f793          	andi	a5,s1,-4
1c00882e:	04f48263          	beq	s1,a5,1c008872 <shake128_absorb+0x152>
1c008832:	00f40733          	add	a4,s0,a5
1c008836:	00074603          	lbu	a2,0(a4)
1c00883a:	0994                	addi	a3,sp,208
1c00883c:	96be                	add	a3,a3,a5
1c00883e:	00178713          	addi	a4,a5,1
1c008842:	f2c68c23          	sb	a2,-200(a3)
1c008846:	02977663          	bgeu	a4,s1,1c008872 <shake128_absorb+0x152>
1c00884a:	00e406b3          	add	a3,s0,a4
1c00884e:	0006c603          	lbu	a2,0(a3)
1c008852:	0994                	addi	a3,sp,208
1c008854:	96ba                	add	a3,a3,a4
1c008856:	f2c68c23          	sb	a2,-200(a3)
1c00885a:	00278713          	addi	a4,a5,2
1c00885e:	00977a63          	bgeu	a4,s1,1c008872 <shake128_absorb+0x152>
1c008862:	00e407b3          	add	a5,s0,a4
1c008866:	0007c683          	lbu	a3,0(a5)
1c00886a:	099c                	addi	a5,sp,208
1c00886c:	97ba                	add	a5,a5,a4
1c00886e:	f2d78c23          	sb	a3,-200(a5)
1c008872:	099c                	addi	a5,sp,208
1c008874:	00978633          	add	a2,a5,s1
1c008878:	47fd                	li	a5,31
1c00887a:	f2f60c23          	sb	a5,-200(a2)
1c00887e:	0af14703          	lbu	a4,175(sp)
1c008882:	003c                	addi	a5,sp,8
1c008884:	40f90933          	sub	s2,s2,a5
1c008888:	f8076713          	ori	a4,a4,-128
1c00888c:	0ae107a3          	sb	a4,175(sp)
1c008890:	0017c703          	lbu	a4,1(a5)
1c008894:	0027cf83          	lbu	t6,2(a5)
1c008898:	0057c883          	lbu	a7,5(a5)
1c00889c:	0047c503          	lbu	a0,4(a5)
1c0088a0:	0067c803          	lbu	a6,6(a5)
1c0088a4:	0007c583          	lbu	a1,0(a5)
1c0088a8:	0037c603          	lbu	a2,3(a5)
1c0088ac:	0077c683          	lbu	a3,7(a5)
1c0088b0:	00f90e33          	add	t3,s2,a5
1c0088b4:	0722                	slli	a4,a4,0x8
1c0088b6:	0fc2                	slli	t6,t6,0x10
1c0088b8:	08a2                	slli	a7,a7,0x8
1c0088ba:	000e2f03          	lw	t5,0(t3)
1c0088be:	004e2e83          	lw	t4,4(t3)
1c0088c2:	01f76733          	or	a4,a4,t6
1c0088c6:	00a8e8b3          	or	a7,a7,a0
1c0088ca:	0842                	slli	a6,a6,0x10
1c0088cc:	8f4d                	or	a4,a4,a1
1c0088ce:	0662                	slli	a2,a2,0x18
1c0088d0:	01186833          	or	a6,a6,a7
1c0088d4:	06e2                	slli	a3,a3,0x18
1c0088d6:	8f51                	or	a4,a4,a2
1c0088d8:	0106e6b3          	or	a3,a3,a6
1c0088dc:	00ef4733          	xor	a4,t5,a4
1c0088e0:	00dec6b3          	xor	a3,t4,a3
1c0088e4:	00ee2023          	sw	a4,0(t3)
1c0088e8:	00de2223          	sw	a3,4(t3)
1c0088ec:	07a1                	addi	a5,a5,8
1c0088ee:	faf311e3          	bne	t1,a5,1c008890 <shake128_absorb+0x170>
1c0088f2:	50be                	lw	ra,236(sp)
1c0088f4:	542e                	lw	s0,232(sp)
1c0088f6:	549e                	lw	s1,228(sp)
1c0088f8:	590e                	lw	s2,224(sp)
1c0088fa:	49fe                	lw	s3,220(sp)
1c0088fc:	616d                	addi	sp,sp,240
1c0088fe:	8082                	ret
1c008900:	4781                	li	a5,0
1c008902:	bf05                	j	1c008832 <shake128_absorb+0x112>
1c008904:	06f00513          	li	a0,111
1c008908:	639010ef          	jal	ra,1c00a740 <exit>

1c00890c <shake128_squeezeblocks>:
1c00890c:	1101                	addi	sp,sp,-32
1c00890e:	c05a                	sw	s6,0(sp)
1c008910:	ce06                	sw	ra,28(sp)
1c008912:	cc22                	sw	s0,24(sp)
1c008914:	ca26                	sw	s1,20(sp)
1c008916:	c84a                	sw	s2,16(sp)
1c008918:	c64e                	sw	s3,12(sp)
1c00891a:	c452                	sw	s4,8(sp)
1c00891c:	c256                	sw	s5,4(sp)
1c00891e:	00062b03          	lw	s6,0(a2)
1c008922:	c5e9                	beqz	a1,1c0089ec <shake128_squeezeblocks+0xe0>
1c008924:	7ac1                	lui	s5,0xffff0
1c008926:	ff010a37          	lui	s4,0xff010
1c00892a:	010009b7          	lui	s3,0x1000
1c00892e:	84ae                	mv	s1,a1
1c008930:	892a                	mv	s2,a0
1c008932:	0a8b0413          	addi	s0,s6,168
1c008936:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00893a:	1a7d                	addi	s4,s4,-1
1c00893c:	19fd                	addi	s3,s3,-1
1c00893e:	85da                	mv	a1,s6
1c008940:	855a                	mv	a0,s6
1c008942:	3c35                	jal	1c00837e <KeccakF1600_StatePermute>
1c008944:	85da                	mv	a1,s6
1c008946:	00490813          	addi	a6,s2,4
1c00894a:	4198                	lw	a4,0(a1)
1c00894c:	41dc                	lw	a5,4(a1)
1c00894e:	05a1                	addi	a1,a1,8
1c008950:	00875893          	srli	a7,a4,0x8
1c008954:	0087d513          	srli	a0,a5,0x8
1c008958:	0ff77613          	andi	a2,a4,255
1c00895c:	0ff7f693          	andi	a3,a5,255
1c008960:	0ff8f893          	andi	a7,a7,255
1c008964:	0ff57513          	andi	a0,a0,255
1c008968:	08a2                	slli	a7,a7,0x8
1c00896a:	0522                	slli	a0,a0,0x8
1c00896c:	01567633          	and	a2,a2,s5
1c008970:	0156f6b3          	and	a3,a3,s5
1c008974:	01166633          	or	a2,a2,a7
1c008978:	8ec9                	or	a3,a3,a0
1c00897a:	00ff08b7          	lui	a7,0xff0
1c00897e:	00ff0537          	lui	a0,0xff0
1c008982:	011778b3          	and	a7,a4,a7
1c008986:	8d7d                	and	a0,a0,a5
1c008988:	01467633          	and	a2,a2,s4
1c00898c:	0146f6b3          	and	a3,a3,s4
1c008990:	01166633          	or	a2,a2,a7
1c008994:	8ec9                	or	a3,a3,a0
1c008996:	8361                	srli	a4,a4,0x18
1c008998:	83e1                	srli	a5,a5,0x18
1c00899a:	01367633          	and	a2,a2,s3
1c00899e:	0136f6b3          	and	a3,a3,s3
1c0089a2:	0762                	slli	a4,a4,0x18
1c0089a4:	07e2                	slli	a5,a5,0x18
1c0089a6:	8f51                	or	a4,a4,a2
1c0089a8:	8fd5                	or	a5,a5,a3
1c0089aa:	00875e13          	srli	t3,a4,0x8
1c0089ae:	01075313          	srli	t1,a4,0x10
1c0089b2:	0087d893          	srli	a7,a5,0x8
1c0089b6:	0107d513          	srli	a0,a5,0x10
1c0089ba:	8361                	srli	a4,a4,0x18
1c0089bc:	83e1                	srli	a5,a5,0x18
1c0089be:	fec80e23          	sb	a2,-4(a6)
1c0089c2:	ffc80ea3          	sb	t3,-3(a6)
1c0089c6:	fe680f23          	sb	t1,-2(a6)
1c0089ca:	fee80fa3          	sb	a4,-1(a6)
1c0089ce:	00d80023          	sb	a3,0(a6)
1c0089d2:	011800a3          	sb	a7,1(a6)
1c0089d6:	00a80123          	sb	a0,2(a6)
1c0089da:	00f801a3          	sb	a5,3(a6)
1c0089de:	0821                	addi	a6,a6,8
1c0089e0:	f6b415e3          	bne	s0,a1,1c00894a <shake128_squeezeblocks+0x3e>
1c0089e4:	14fd                	addi	s1,s1,-1
1c0089e6:	0a890913          	addi	s2,s2,168
1c0089ea:	f8b1                	bnez	s1,1c00893e <shake128_squeezeblocks+0x32>
1c0089ec:	40f2                	lw	ra,28(sp)
1c0089ee:	4462                	lw	s0,24(sp)
1c0089f0:	44d2                	lw	s1,20(sp)
1c0089f2:	4942                	lw	s2,16(sp)
1c0089f4:	49b2                	lw	s3,12(sp)
1c0089f6:	4a22                	lw	s4,8(sp)
1c0089f8:	4a92                	lw	s5,4(sp)
1c0089fa:	4b02                	lw	s6,0(sp)
1c0089fc:	6105                	addi	sp,sp,32
1c0089fe:	8082                	ret

1c008a00 <shake128_ctx_release>:
1c008a00:	4108                	lw	a0,0(a0)
1c008a02:	0c800593          	li	a1,200
1c008a06:	67b0206f          	j	1c00b880 <pi_l2_free>

1c008a0a <shake256>:
1c008a0a:	7131                	addi	sp,sp,-192
1c008a0c:	db26                	sw	s1,180(sp)
1c008a0e:	d74e                	sw	s3,172(sp)
1c008a10:	84aa                	mv	s1,a0
1c008a12:	08800993          	li	s3,136
1c008a16:	0c800513          	li	a0,200
1c008a1a:	dd22                	sw	s0,184(sp)
1c008a1c:	d94a                	sw	s2,176(sp)
1c008a1e:	d356                	sw	s5,164(sp)
1c008a20:	df06                	sw	ra,188(sp)
1c008a22:	d552                	sw	s4,168(sp)
1c008a24:	d15a                	sw	s6,160(sp)
1c008a26:	cf5e                	sw	s7,156(sp)
1c008a28:	cd62                	sw	s8,152(sp)
1c008a2a:	0335d9b3          	divu	s3,a1,s3
1c008a2e:	892e                	mv	s2,a1
1c008a30:	8432                	mv	s0,a2
1c008a32:	8ab6                	mv	s5,a3
1c008a34:	641020ef          	jal	ra,1c00b874 <pi_l2_malloc>
1c008a38:	24050663          	beqz	a0,1c008c84 <shake256+0x27a>
1c008a3c:	46fd                	li	a3,31
1c008a3e:	8656                	mv	a2,s5
1c008a40:	85a2                	mv	a1,s0
1c008a42:	8a2a                	mv	s4,a0
1c008a44:	3601                	jal	1c008544 <keccak_absorb.constprop.1>
1c008a46:	08700793          	li	a5,135
1c008a4a:	0d27fe63          	bgeu	a5,s2,1c008b26 <shake256+0x11c>
1c008a4e:	00499413          	slli	s0,s3,0x4
1c008a52:	944e                	add	s0,s0,s3
1c008a54:	040e                	slli	s0,s0,0x3
1c008a56:	7bc1                	lui	s7,0xffff0
1c008a58:	ff010b37          	lui	s6,0xff010
1c008a5c:	01000ab7          	lui	s5,0x1000
1c008a60:	9426                	add	s0,s0,s1
1c008a62:	8c26                	mv	s8,s1
1c008a64:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008a68:	1b7d                	addi	s6,s6,-1
1c008a6a:	1afd                	addi	s5,s5,-1
1c008a6c:	85d2                	mv	a1,s4
1c008a6e:	8552                	mv	a0,s4
1c008a70:	3239                	jal	1c00837e <KeccakF1600_StatePermute>
1c008a72:	87e2                	mv	a5,s8
1c008a74:	418a0533          	sub	a0,s4,s8
1c008a78:	088c0593          	addi	a1,s8,136
1c008a7c:	00f50733          	add	a4,a0,a5
1c008a80:	4314                	lw	a3,0(a4)
1c008a82:	4358                	lw	a4,4(a4)
1c008a84:	07a1                	addi	a5,a5,8
1c008a86:	0086d313          	srli	t1,a3,0x8
1c008a8a:	00875893          	srli	a7,a4,0x8
1c008a8e:	0ff6f813          	andi	a6,a3,255
1c008a92:	0ff77613          	andi	a2,a4,255
1c008a96:	0ff37313          	andi	t1,t1,255
1c008a9a:	0ff8f893          	andi	a7,a7,255
1c008a9e:	0322                	slli	t1,t1,0x8
1c008aa0:	08a2                	slli	a7,a7,0x8
1c008aa2:	01787833          	and	a6,a6,s7
1c008aa6:	01767633          	and	a2,a2,s7
1c008aaa:	00686833          	or	a6,a6,t1
1c008aae:	01166633          	or	a2,a2,a7
1c008ab2:	00ff0337          	lui	t1,0xff0
1c008ab6:	00ff08b7          	lui	a7,0xff0
1c008aba:	0066f333          	and	t1,a3,t1
1c008abe:	011778b3          	and	a7,a4,a7
1c008ac2:	01687833          	and	a6,a6,s6
1c008ac6:	01667633          	and	a2,a2,s6
1c008aca:	00686833          	or	a6,a6,t1
1c008ace:	01166633          	or	a2,a2,a7
1c008ad2:	82e1                	srli	a3,a3,0x18
1c008ad4:	8361                	srli	a4,a4,0x18
1c008ad6:	01587833          	and	a6,a6,s5
1c008ada:	01567633          	and	a2,a2,s5
1c008ade:	06e2                	slli	a3,a3,0x18
1c008ae0:	0762                	slli	a4,a4,0x18
1c008ae2:	00d866b3          	or	a3,a6,a3
1c008ae6:	8f51                	or	a4,a4,a2
1c008ae8:	0086de93          	srli	t4,a3,0x8
1c008aec:	0106de13          	srli	t3,a3,0x10
1c008af0:	00875313          	srli	t1,a4,0x8
1c008af4:	01075893          	srli	a7,a4,0x10
1c008af8:	82e1                	srli	a3,a3,0x18
1c008afa:	8361                	srli	a4,a4,0x18
1c008afc:	ff078c23          	sb	a6,-8(a5)
1c008b00:	ffd78ca3          	sb	t4,-7(a5)
1c008b04:	ffc78d23          	sb	t3,-6(a5)
1c008b08:	fed78da3          	sb	a3,-5(a5)
1c008b0c:	fec78e23          	sb	a2,-4(a5)
1c008b10:	fe678ea3          	sb	t1,-3(a5)
1c008b14:	ff178f23          	sb	a7,-2(a5)
1c008b18:	fee78fa3          	sb	a4,-1(a5)
1c008b1c:	f6f590e3          	bne	a1,a5,1c008a7c <shake256+0x72>
1c008b20:	8c2e                	mv	s8,a1
1c008b22:	f48595e3          	bne	a1,s0,1c008a6c <shake256+0x62>
1c008b26:	08800593          	li	a1,136
1c008b2a:	02b97933          	remu	s2,s2,a1
1c008b2e:	02091263          	bnez	s2,1c008b52 <shake256+0x148>
1c008b32:	546a                	lw	s0,184(sp)
1c008b34:	50fa                	lw	ra,188(sp)
1c008b36:	54da                	lw	s1,180(sp)
1c008b38:	594a                	lw	s2,176(sp)
1c008b3a:	59ba                	lw	s3,172(sp)
1c008b3c:	5a9a                	lw	s5,164(sp)
1c008b3e:	5b0a                	lw	s6,160(sp)
1c008b40:	4bfa                	lw	s7,156(sp)
1c008b42:	4c6a                	lw	s8,152(sp)
1c008b44:	8552                	mv	a0,s4
1c008b46:	5a2a                	lw	s4,168(sp)
1c008b48:	0c800593          	li	a1,200
1c008b4c:	6129                	addi	sp,sp,192
1c008b4e:	5330206f          	j	1c00b880 <pi_l2_free>
1c008b52:	85d2                	mv	a1,s4
1c008b54:	8552                	mv	a0,s4
1c008b56:	829ff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c008b5a:	002c                	addi	a1,sp,8
1c008b5c:	78c1                	lui	a7,0xffff0
1c008b5e:	ff010837          	lui	a6,0xff010
1c008b62:	01000537          	lui	a0,0x1000
1c008b66:	09010e13          	addi	t3,sp,144
1c008b6a:	862e                	mv	a2,a1
1c008b6c:	40ba0333          	sub	t1,s4,a1
1c008b70:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008b74:	187d                	addi	a6,a6,-1
1c008b76:	157d                	addi	a0,a0,-1
1c008b78:	00c307b3          	add	a5,t1,a2
1c008b7c:	0007ae83          	lw	t4,0(a5)
1c008b80:	43d4                	lw	a3,4(a5)
1c008b82:	0621                	addi	a2,a2,8
1c008b84:	008edf93          	srli	t6,t4,0x8
1c008b88:	0086df13          	srli	t5,a3,0x8
1c008b8c:	0ffef713          	andi	a4,t4,255
1c008b90:	0ff6f793          	andi	a5,a3,255
1c008b94:	0fffff93          	andi	t6,t6,255
1c008b98:	0fff7f13          	andi	t5,t5,255
1c008b9c:	0fa2                	slli	t6,t6,0x8
1c008b9e:	0f22                	slli	t5,t5,0x8
1c008ba0:	01177733          	and	a4,a4,a7
1c008ba4:	0117f7b3          	and	a5,a5,a7
1c008ba8:	01f76733          	or	a4,a4,t6
1c008bac:	01e7e7b3          	or	a5,a5,t5
1c008bb0:	00ff0fb7          	lui	t6,0xff0
1c008bb4:	00ff0f37          	lui	t5,0xff0
1c008bb8:	01feffb3          	and	t6,t4,t6
1c008bbc:	01e6ff33          	and	t5,a3,t5
1c008bc0:	01077733          	and	a4,a4,a6
1c008bc4:	0107f7b3          	and	a5,a5,a6
1c008bc8:	01f76733          	or	a4,a4,t6
1c008bcc:	018ede93          	srli	t4,t4,0x18
1c008bd0:	01e7e7b3          	or	a5,a5,t5
1c008bd4:	82e1                	srli	a3,a3,0x18
1c008bd6:	0ee2                	slli	t4,t4,0x18
1c008bd8:	8f69                	and	a4,a4,a0
1c008bda:	06e2                	slli	a3,a3,0x18
1c008bdc:	8fe9                	and	a5,a5,a0
1c008bde:	01d76733          	or	a4,a4,t4
1c008be2:	8fd5                	or	a5,a5,a3
1c008be4:	fee62c23          	sw	a4,-8(a2)
1c008be8:	fef62e23          	sw	a5,-4(a2)
1c008bec:	f8ce16e3          	bne	t3,a2,1c008b78 <shake256+0x16e>
1c008bf0:	fff90793          	addi	a5,s2,-1
1c008bf4:	4709                	li	a4,2
1c008bf6:	08f77363          	bgeu	a4,a5,1c008c7c <shake256+0x272>
1c008bfa:	00499413          	slli	s0,s3,0x4
1c008bfe:	013407b3          	add	a5,s0,s3
1c008c02:	078e                	slli	a5,a5,0x3
1c008c04:	97a6                	add	a5,a5,s1
1c008c06:	0fc97813          	andi	a6,s2,252
1c008c0a:	983e                	add	a6,a6,a5
1c008c0c:	4198                	lw	a4,0(a1)
1c008c0e:	0791                	addi	a5,a5,4
1c008c10:	0591                	addi	a1,a1,4
1c008c12:	00875513          	srli	a0,a4,0x8
1c008c16:	01075613          	srli	a2,a4,0x10
1c008c1a:	01875693          	srli	a3,a4,0x18
1c008c1e:	fea78ea3          	sb	a0,-3(a5)
1c008c22:	fec78f23          	sb	a2,-2(a5)
1c008c26:	fed78fa3          	sb	a3,-1(a5)
1c008c2a:	fee78e23          	sb	a4,-4(a5)
1c008c2e:	fcf81fe3          	bne	a6,a5,1c008c0c <shake256+0x202>
1c008c32:	ffc97793          	andi	a5,s2,-4
1c008c36:	eef90ee3          	beq	s2,a5,1c008b32 <shake256+0x128>
1c008c3a:	0918                	addi	a4,sp,144
1c008c3c:	973e                	add	a4,a4,a5
1c008c3e:	99a2                	add	s3,s3,s0
1c008c40:	f7874683          	lbu	a3,-136(a4)
1c008c44:	098e                	slli	s3,s3,0x3
1c008c46:	99a6                	add	s3,s3,s1
1c008c48:	00f98733          	add	a4,s3,a5
1c008c4c:	00d70023          	sb	a3,0(a4)
1c008c50:	00178713          	addi	a4,a5,1
1c008c54:	ed277fe3          	bgeu	a4,s2,1c008b32 <shake256+0x128>
1c008c58:	0914                	addi	a3,sp,144
1c008c5a:	96ba                	add	a3,a3,a4
1c008c5c:	f786c683          	lbu	a3,-136(a3)
1c008c60:	974e                	add	a4,a4,s3
1c008c62:	0789                	addi	a5,a5,2
1c008c64:	00d70023          	sb	a3,0(a4)
1c008c68:	ed27f5e3          	bgeu	a5,s2,1c008b32 <shake256+0x128>
1c008c6c:	0918                	addi	a4,sp,144
1c008c6e:	973e                	add	a4,a4,a5
1c008c70:	f7874703          	lbu	a4,-136(a4)
1c008c74:	99be                	add	s3,s3,a5
1c008c76:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c008c7a:	bd65                	j	1c008b32 <shake256+0x128>
1c008c7c:	4781                	li	a5,0
1c008c7e:	00499413          	slli	s0,s3,0x4
1c008c82:	bf65                	j	1c008c3a <shake256+0x230>
1c008c84:	06f00513          	li	a0,111
1c008c88:	2b9010ef          	jal	ra,1c00a740 <exit>

1c008c8c <sha3_256>:
1c008c8c:	712d                	addi	sp,sp,-288
1c008c8e:	10812c23          	sw	s0,280(sp)
1c008c92:	4699                	li	a3,6
1c008c94:	842a                	mv	s0,a0
1c008c96:	0828                	addi	a0,sp,24
1c008c98:	10112e23          	sw	ra,284(sp)
1c008c9c:	10912a23          	sw	s1,276(sp)
1c008ca0:	11212823          	sw	s2,272(sp)
1c008ca4:	11312623          	sw	s3,268(sp)
1c008ca8:	11412423          	sw	s4,264(sp)
1c008cac:	11512223          	sw	s5,260(sp)
1c008cb0:	11612023          	sw	s6,256(sp)
1c008cb4:	dfde                	sw	s7,252(sp)
1c008cb6:	dde2                	sw	s8,248(sp)
1c008cb8:	dbe6                	sw	s9,244(sp)
1c008cba:	d9ea                	sw	s10,240(sp)
1c008cbc:	d7ee                	sw	s11,236(sp)
1c008cbe:	3059                	jal	1c008544 <keccak_absorb.constprop.1>
1c008cc0:	082c                	addi	a1,sp,24
1c008cc2:	852e                	mv	a0,a1
1c008cc4:	ebaff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c008cc8:	4372                	lw	t1,28(sp)
1c008cca:	5612                	lw	a2,36(sp)
1c008ccc:	5732                	lw	a4,44(sp)
1c008cce:	5582                	lw	a1,32(sp)
1c008cd0:	56a2                	lw	a3,40(sp)
1c008cd2:	59d2                	lw	s3,52(sp)
1c008cd4:	4ae2                	lw	s5,24(sp)
1c008cd6:	00835293          	srli	t0,t1,0x8
1c008cda:	00865f13          	srli	t5,a2,0x8
1c008cde:	00875893          	srli	a7,a4,0x8
1c008ce2:	5a42                	lw	s4,48(sp)
1c008ce4:	0085df93          	srli	t6,a1,0x8
1c008ce8:	0086de93          	srli	t4,a3,0x8
1c008cec:	0ff2f293          	andi	t0,t0,255
1c008cf0:	0fff7f13          	andi	t5,t5,255
1c008cf4:	0ff8f893          	andi	a7,a7,255
1c008cf8:	0ff37b93          	andi	s7,t1,255
1c008cfc:	0ff67913          	andi	s2,a2,255
1c008d00:	0ff77e13          	andi	t3,a4,255
1c008d04:	008ad393          	srli	t2,s5,0x8
1c008d08:	0089d513          	srli	a0,s3,0x8
1c008d0c:	0fffff93          	andi	t6,t6,255
1c008d10:	0ffefe93          	andi	t4,t4,255
1c008d14:	02a2                	slli	t0,t0,0x8
1c008d16:	0f22                	slli	t5,t5,0x8
1c008d18:	08a2                	slli	a7,a7,0x8
1c008d1a:	ff0107b7          	lui	a5,0xff010
1c008d1e:	17fd                	addi	a5,a5,-1
1c008d20:	0ff5fb13          	andi	s6,a1,255
1c008d24:	0ff6f493          	andi	s1,a3,255
1c008d28:	005be2b3          	or	t0,s7,t0
1c008d2c:	01e96f33          	or	t5,s2,t5
1c008d30:	011e68b3          	or	a7,t3,a7
1c008d34:	0ff3f393          	andi	t2,t2,255
1c008d38:	0fa2                	slli	t6,t6,0x8
1c008d3a:	0ea2                	slli	t4,t4,0x8
1c008d3c:	0ff57513          	andi	a0,a0,255
1c008d40:	00ff0bb7          	lui	s7,0xff0
1c008d44:	0ffafc13          	andi	s8,s5,255
1c008d48:	0ff9f913          	andi	s2,s3,255
1c008d4c:	01767bb3          	and	s7,a2,s7
1c008d50:	00f8fe33          	and	t3,a7,a5
1c008d54:	008a5813          	srli	a6,s4,0x8
1c008d58:	01fb6fb3          	or	t6,s6,t6
1c008d5c:	01d4eeb3          	or	t4,s1,t4
1c008d60:	00ff7f33          	and	t5,t5,a5
1c008d64:	010008b7          	lui	a7,0x1000
1c008d68:	03a2                	slli	t2,t2,0x8
1c008d6a:	0522                	slli	a0,a0,0x8
1c008d6c:	00ff04b7          	lui	s1,0xff0
1c008d70:	00ff0b37          	lui	s6,0xff0
1c008d74:	8cf5                	and	s1,s1,a3
1c008d76:	01677b33          	and	s6,a4,s6
1c008d7a:	00a96533          	or	a0,s2,a0
1c008d7e:	007c63b3          	or	t2,s8,t2
1c008d82:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c008d86:	00fefeb3          	and	t4,t4,a5
1c008d8a:	017f6f33          	or	t5,t5,s7
1c008d8e:	0ff87813          	andi	a6,a6,255
1c008d92:	00ff0c37          	lui	s8,0xff0
1c008d96:	8261                	srli	a2,a2,0x18
1c008d98:	0ffa7d93          	andi	s11,s4,255
1c008d9c:	0185fc33          	and	s8,a1,s8
1c008da0:	012f7f33          	and	t5,t5,s2
1c008da4:	00ffffb3          	and	t6,t6,a5
1c008da8:	009eeeb3          	or	t4,t4,s1
1c008dac:	016e6e33          	or	t3,t3,s6
1c008db0:	8361                	srli	a4,a4,0x18
1c008db2:	0822                	slli	a6,a6,0x8
1c008db4:	00ff0d37          	lui	s10,0xff0
1c008db8:	82e1                	srli	a3,a3,0x18
1c008dba:	0662                	slli	a2,a2,0x18
1c008dbc:	01aafd33          	and	s10,s5,s10
1c008dc0:	010de833          	or	a6,s11,a6
1c008dc4:	012efeb3          	and	t4,t4,s2
1c008dc8:	012e7e33          	and	t3,t3,s2
1c008dcc:	00cf6633          	or	a2,t5,a2
1c008dd0:	018ada93          	srli	s5,s5,0x18
1c008dd4:	018fefb3          	or	t6,t6,s8
1c008dd8:	06e2                	slli	a3,a3,0x18
1c008dda:	01871c13          	slli	s8,a4,0x18
1c008dde:	00ff0bb7          	lui	s7,0xff0
1c008de2:	00f87b33          	and	s6,a6,a5
1c008de6:	00dee4b3          	or	s1,t4,a3
1c008dea:	017a7bb3          	and	s7,s4,s7
1c008dee:	018e66b3          	or	a3,t3,s8
1c008df2:	018a9813          	slli	a6,s5,0x18
1c008df6:	018a5713          	srli	a4,s4,0x18
1c008dfa:	00865a93          	srli	s5,a2,0x8
1c008dfe:	01065a13          	srli	s4,a2,0x10
1c008e02:	00ff0cb7          	lui	s9,0xff0
1c008e06:	8261                	srli	a2,a2,0x18
1c008e08:	c232                	sw	a2,4(sp)
1c008e0a:	01937cb3          	and	s9,t1,s9
1c008e0e:	0086d613          	srli	a2,a3,0x8
1c008e12:	00f3f3b3          	and	t2,t2,a5
1c008e16:	00f2f2b3          	and	t0,t0,a5
1c008e1a:	c432                	sw	a2,8(sp)
1c008e1c:	01a3e3b3          	or	t2,t2,s10
1c008e20:	0106d613          	srli	a2,a3,0x10
1c008e24:	0192e2b3          	or	t0,t0,s9
1c008e28:	01835313          	srli	t1,t1,0x18
1c008e2c:	81e1                	srli	a1,a1,0x18
1c008e2e:	00ff08b7          	lui	a7,0xff0
1c008e32:	8fe9                	and	a5,a5,a0
1c008e34:	0123f3b3          	and	t2,t2,s2
1c008e38:	0122f2b3          	and	t0,t0,s2
1c008e3c:	012fffb3          	and	t6,t6,s2
1c008e40:	c632                	sw	a2,12(sp)
1c008e42:	0119f8b3          	and	a7,s3,a7
1c008e46:	4612                	lw	a2,4(sp)
1c008e48:	01831513          	slli	a0,t1,0x18
1c008e4c:	05e2                	slli	a1,a1,0x18
1c008e4e:	017b6333          	or	t1,s6,s7
1c008e52:	0103e833          	or	a6,t2,a6
1c008e56:	00a2e533          	or	a0,t0,a0
1c008e5a:	00bfe5b3          	or	a1,t6,a1
1c008e5e:	0117e8b3          	or	a7,a5,a7
1c008e62:	01237333          	and	t1,t1,s2
1c008e66:	0128f8b3          	and	a7,a7,s2
1c008e6a:	00885d93          	srli	s11,a6,0x8
1c008e6e:	01085d13          	srli	s10,a6,0x10
1c008e72:	00855c93          	srli	s9,a0,0x8
1c008e76:	01055c13          	srli	s8,a0,0x10
1c008e7a:	0085db93          	srli	s7,a1,0x8
1c008e7e:	0105db13          	srli	s6,a1,0x10
1c008e82:	0104d913          	srli	s2,s1,0x10
1c008e86:	0189d793          	srli	a5,s3,0x18
1c008e8a:	8161                	srli	a0,a0,0x18
1c008e8c:	0084d993          	srli	s3,s1,0x8
1c008e90:	81e1                	srli	a1,a1,0x18
1c008e92:	80e1                	srli	s1,s1,0x18
1c008e94:	01885813          	srli	a6,a6,0x18
1c008e98:	01b400a3          	sb	s11,1(s0)
1c008e9c:	01a40123          	sb	s10,2(s0)
1c008ea0:	019402a3          	sb	s9,5(s0)
1c008ea4:	01840323          	sb	s8,6(s0)
1c008ea8:	00a403a3          	sb	a0,7(s0)
1c008eac:	017404a3          	sb	s7,9(s0)
1c008eb0:	01640523          	sb	s6,10(s0)
1c008eb4:	00b405a3          	sb	a1,11(s0)
1c008eb8:	015406a3          	sb	s5,13(s0)
1c008ebc:	01440723          	sb	s4,14(s0)
1c008ec0:	00c407a3          	sb	a2,15(s0)
1c008ec4:	013408a3          	sb	s3,17(s0)
1c008ec8:	01240923          	sb	s2,18(s0)
1c008ecc:	009409a3          	sb	s1,19(s0)
1c008ed0:	00740023          	sb	t2,0(s0)
1c008ed4:	010401a3          	sb	a6,3(s0)
1c008ed8:	00540223          	sb	t0,4(s0)
1c008edc:	01f40423          	sb	t6,8(s0)
1c008ee0:	01e40623          	sb	t5,12(s0)
1c008ee4:	01d40823          	sb	t4,16(s0)
1c008ee8:	01c40a23          	sb	t3,20(s0)
1c008eec:	4622                	lw	a2,8(sp)
1c008eee:	0762                	slli	a4,a4,0x18
1c008ef0:	07e2                	slli	a5,a5,0x18
1c008ef2:	00c40aa3          	sb	a2,21(s0)
1c008ef6:	4632                	lw	a2,12(sp)
1c008ef8:	00e36733          	or	a4,t1,a4
1c008efc:	00f8e7b3          	or	a5,a7,a5
1c008f00:	82e1                	srli	a3,a3,0x18
1c008f02:	00c40b23          	sb	a2,22(s0)
1c008f06:	00d40ba3          	sb	a3,23(s0)
1c008f0a:	00875513          	srli	a0,a4,0x8
1c008f0e:	01075593          	srli	a1,a4,0x10
1c008f12:	0087d613          	srli	a2,a5,0x8
1c008f16:	0107d693          	srli	a3,a5,0x10
1c008f1a:	8361                	srli	a4,a4,0x18
1c008f1c:	83e1                	srli	a5,a5,0x18
1c008f1e:	00640c23          	sb	t1,24(s0)
1c008f22:	00a40ca3          	sb	a0,25(s0)
1c008f26:	00b40d23          	sb	a1,26(s0)
1c008f2a:	00e40da3          	sb	a4,27(s0)
1c008f2e:	01140e23          	sb	a7,28(s0)
1c008f32:	00c40ea3          	sb	a2,29(s0)
1c008f36:	00d40f23          	sb	a3,30(s0)
1c008f3a:	00f40fa3          	sb	a5,31(s0)
1c008f3e:	11c12083          	lw	ra,284(sp)
1c008f42:	11812403          	lw	s0,280(sp)
1c008f46:	11412483          	lw	s1,276(sp)
1c008f4a:	11012903          	lw	s2,272(sp)
1c008f4e:	10c12983          	lw	s3,268(sp)
1c008f52:	10812a03          	lw	s4,264(sp)
1c008f56:	10412a83          	lw	s5,260(sp)
1c008f5a:	10012b03          	lw	s6,256(sp)
1c008f5e:	5bfe                	lw	s7,252(sp)
1c008f60:	5c6e                	lw	s8,248(sp)
1c008f62:	5cde                	lw	s9,244(sp)
1c008f64:	5d4e                	lw	s10,240(sp)
1c008f66:	5dbe                	lw	s11,236(sp)
1c008f68:	6115                	addi	sp,sp,288
1c008f6a:	8082                	ret

1c008f6c <sha3_512>:
1c008f6c:	7105                	addi	sp,sp,-480
1c008f6e:	1c812c23          	sw	s0,472(sp)
1c008f72:	1d312623          	sw	s3,460(sp)
1c008f76:	1d412423          	sw	s4,456(sp)
1c008f7a:	1c112e23          	sw	ra,476(sp)
1c008f7e:	1c912a23          	sw	s1,468(sp)
1c008f82:	1d212823          	sw	s2,464(sp)
1c008f86:	1d512223          	sw	s5,452(sp)
1c008f8a:	1d612023          	sw	s6,448(sp)
1c008f8e:	1b712e23          	sw	s7,444(sp)
1c008f92:	1b812c23          	sw	s8,440(sp)
1c008f96:	1b912a23          	sw	s9,436(sp)
1c008f9a:	1ba12823          	sw	s10,432(sp)
1c008f9e:	1bb12623          	sw	s11,428(sp)
1c008fa2:	842a                	mv	s0,a0
1c008fa4:	8a32                	mv	s4,a2
1c008fa6:	0d810993          	addi	s3,sp,216
1c008faa:	081c                	addi	a5,sp,16
1c008fac:	4681                	li	a3,0
1c008fae:	4701                	li	a4,0
1c008fb0:	c394                	sw	a3,0(a5)
1c008fb2:	c3d8                	sw	a4,4(a5)
1c008fb4:	07a1                	addi	a5,a5,8
1c008fb6:	ff379be3          	bne	a5,s3,1c008fac <sha3_512+0x40>
1c008fba:	04700793          	li	a5,71
1c008fbe:	0947f463          	bgeu	a5,s4,1c009046 <sha3_512+0xda>
1c008fc2:	04858a93          	addi	s5,a1,72
1c008fc6:	8956                	mv	s2,s5
1c008fc8:	04700493          	li	s1,71
1c008fcc:	0818                	addi	a4,sp,16
1c008fce:	0015c783          	lbu	a5,1(a1)
1c008fd2:	0025ce03          	lbu	t3,2(a1)
1c008fd6:	0055c803          	lbu	a6,5(a1)
1c008fda:	0045cf03          	lbu	t5,4(a1)
1c008fde:	0065c503          	lbu	a0,6(a1)
1c008fe2:	0005ce83          	lbu	t4,0(a1)
1c008fe6:	0035c603          	lbu	a2,3(a1)
1c008fea:	0075c683          	lbu	a3,7(a1)
1c008fee:	07a2                	slli	a5,a5,0x8
1c008ff0:	0e42                	slli	t3,t3,0x10
1c008ff2:	0822                	slli	a6,a6,0x8
1c008ff4:	00072303          	lw	t1,0(a4)
1c008ff8:	00472883          	lw	a7,4(a4)
1c008ffc:	01c7e7b3          	or	a5,a5,t3
1c009000:	01e86833          	or	a6,a6,t5
1c009004:	0542                	slli	a0,a0,0x10
1c009006:	01d7e7b3          	or	a5,a5,t4
1c00900a:	0662                	slli	a2,a2,0x18
1c00900c:	01056533          	or	a0,a0,a6
1c009010:	06e2                	slli	a3,a3,0x18
1c009012:	8fd1                	or	a5,a5,a2
1c009014:	8ec9                	or	a3,a3,a0
1c009016:	00f347b3          	xor	a5,t1,a5
1c00901a:	00d8c6b3          	xor	a3,a7,a3
1c00901e:	c31c                	sw	a5,0(a4)
1c009020:	c354                	sw	a3,4(a4)
1c009022:	05a1                	addi	a1,a1,8
1c009024:	0721                	addi	a4,a4,8
1c009026:	fb2594e3          	bne	a1,s2,1c008fce <sha3_512+0x62>
1c00902a:	080c                	addi	a1,sp,16
1c00902c:	852e                	mv	a0,a1
1c00902e:	b50ff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c009032:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c009036:	04890913          	addi	s2,s2,72
1c00903a:	85d6                	mv	a1,s5
1c00903c:	0144f563          	bgeu	s1,s4,1c009046 <sha3_512+0xda>
1c009040:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c009044:	b761                	j	1c008fcc <sha3_512+0x60>
1c009046:	1218                	addi	a4,sp,288
1c009048:	87ce                	mv	a5,s3
1c00904a:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00904e:	0791                	addi	a5,a5,4
1c009050:	fee79de3          	bne	a5,a4,1c00904a <sha3_512+0xde>
1c009054:	080a0063          	beqz	s4,1c0090d4 <sha3_512+0x168>
1c009058:	fffa0793          	addi	a5,s4,-1
1c00905c:	4709                	li	a4,2
1c00905e:	68f77563          	bgeu	a4,a5,1c0096e8 <sha3_512+0x77c>
1c009062:	ffca7813          	andi	a6,s4,-4
1c009066:	87ae                	mv	a5,a1
1c009068:	982e                	add	a6,a6,a1
1c00906a:	0017c603          	lbu	a2,1(a5)
1c00906e:	0007c503          	lbu	a0,0(a5)
1c009072:	0027c683          	lbu	a3,2(a5)
1c009076:	0037c703          	lbu	a4,3(a5)
1c00907a:	0622                	slli	a2,a2,0x8
1c00907c:	8e49                	or	a2,a2,a0
1c00907e:	06c2                	slli	a3,a3,0x10
1c009080:	8ed1                	or	a3,a3,a2
1c009082:	0762                	slli	a4,a4,0x18
1c009084:	8f55                	or	a4,a4,a3
1c009086:	00e9a023          	sw	a4,0(s3)
1c00908a:	0791                	addi	a5,a5,4
1c00908c:	0991                	addi	s3,s3,4
1c00908e:	fd079ee3          	bne	a5,a6,1c00906a <sha3_512+0xfe>
1c009092:	ffca7793          	andi	a5,s4,-4
1c009096:	03478f63          	beq	a5,s4,1c0090d4 <sha3_512+0x168>
1c00909a:	00f58733          	add	a4,a1,a5
1c00909e:	00074603          	lbu	a2,0(a4)
1c0090a2:	1314                	addi	a3,sp,416
1c0090a4:	96be                	add	a3,a3,a5
1c0090a6:	00178713          	addi	a4,a5,1
1c0090aa:	f2c68c23          	sb	a2,-200(a3)
1c0090ae:	03477363          	bgeu	a4,s4,1c0090d4 <sha3_512+0x168>
1c0090b2:	00e586b3          	add	a3,a1,a4
1c0090b6:	0006c683          	lbu	a3,0(a3)
1c0090ba:	1310                	addi	a2,sp,416
1c0090bc:	9732                	add	a4,a4,a2
1c0090be:	0789                	addi	a5,a5,2
1c0090c0:	f2d70c23          	sb	a3,-200(a4)
1c0090c4:	0147f863          	bgeu	a5,s4,1c0090d4 <sha3_512+0x168>
1c0090c8:	95be                	add	a1,a1,a5
1c0090ca:	0005c703          	lbu	a4,0(a1)
1c0090ce:	97b2                	add	a5,a5,a2
1c0090d0:	f2e78c23          	sb	a4,-200(a5)
1c0090d4:	131c                	addi	a5,sp,416
1c0090d6:	9a3e                	add	s4,s4,a5
1c0090d8:	4799                	li	a5,6
1c0090da:	f2fa0c23          	sb	a5,-200(s4)
1c0090de:	0da14703          	lbu	a4,218(sp)
1c0090e2:	0d914f83          	lbu	t6,217(sp)
1c0090e6:	0e214783          	lbu	a5,226(sp)
1c0090ea:	0e114e83          	lbu	t4,225(sp)
1c0090ee:	0e514303          	lbu	t1,229(sp)
1c0090f2:	0e414383          	lbu	t2,228(sp)
1c0090f6:	0e614803          	lbu	a6,230(sp)
1c0090fa:	0d814283          	lbu	t0,216(sp)
1c0090fe:	0e014f03          	lbu	t5,224(sp)
1c009102:	0db14503          	lbu	a0,219(sp)
1c009106:	0e314603          	lbu	a2,227(sp)
1c00910a:	0e714683          	lbu	a3,231(sp)
1c00910e:	0fa2                	slli	t6,t6,0x8
1c009110:	0ea2                	slli	t4,t4,0x8
1c009112:	0742                	slli	a4,a4,0x10
1c009114:	07c2                	slli	a5,a5,0x10
1c009116:	0322                	slli	t1,t1,0x8
1c009118:	00736333          	or	t1,t1,t2
1c00911c:	01f76733          	or	a4,a4,t6
1c009120:	01d7e7b3          	or	a5,a5,t4
1c009124:	0842                	slli	a6,a6,0x10
1c009126:	0dd14e03          	lbu	t3,221(sp)
1c00912a:	00576733          	or	a4,a4,t0
1c00912e:	01e7e7b3          	or	a5,a5,t5
1c009132:	00686833          	or	a6,a6,t1
1c009136:	0662                	slli	a2,a2,0x18
1c009138:	06e2                	slli	a3,a3,0x18
1c00913a:	0562                	slli	a0,a0,0x18
1c00913c:	0dc14483          	lbu	s1,220(sp)
1c009140:	0de14883          	lbu	a7,222(sp)
1c009144:	8d59                	or	a0,a0,a4
1c009146:	00f66733          	or	a4,a2,a5
1c00914a:	0106e7b3          	or	a5,a3,a6
1c00914e:	46c2                	lw	a3,16(sp)
1c009150:	0df14583          	lbu	a1,223(sp)
1c009154:	0e22                	slli	t3,t3,0x8
1c009156:	009e6e33          	or	t3,t3,s1
1c00915a:	8d35                	xor	a0,a0,a3
1c00915c:	08c2                	slli	a7,a7,0x10
1c00915e:	46d2                	lw	a3,20(sp)
1c009160:	01c8e8b3          	or	a7,a7,t3
1c009164:	05e2                	slli	a1,a1,0x18
1c009166:	0115e5b3          	or	a1,a1,a7
1c00916a:	8db5                	xor	a1,a1,a3
1c00916c:	46e2                	lw	a3,24(sp)
1c00916e:	0ea14803          	lbu	a6,234(sp)
1c009172:	0e914483          	lbu	s1,233(sp)
1c009176:	8eb9                	xor	a3,a3,a4
1c009178:	4772                	lw	a4,28(sp)
1c00917a:	0e814a83          	lbu	s5,232(sp)
1c00917e:	0eb14a03          	lbu	s4,235(sp)
1c009182:	8f3d                	xor	a4,a4,a5
1c009184:	0ec14d03          	lbu	s10,236(sp)
1c009188:	11f14783          	lbu	a5,287(sp)
1c00918c:	0ed14903          	lbu	s2,237(sp)
1c009190:	c82a                	sw	a0,16(sp)
1c009192:	ca2e                	sw	a1,20(sp)
1c009194:	cc36                	sw	a3,24(sp)
1c009196:	ce3a                	sw	a4,28(sp)
1c009198:	0ee14f83          	lbu	t6,238(sp)
1c00919c:	0f214283          	lbu	t0,242(sp)
1c0091a0:	0f114f03          	lbu	t5,241(sp)
1c0091a4:	0fd14883          	lbu	a7,253(sp)
1c0091a8:	0fc14b83          	lbu	s7,252(sp)
1c0091ac:	04a2                	slli	s1,s1,0x8
1c0091ae:	0842                	slli	a6,a6,0x10
1c0091b0:	02c2                	slli	t0,t0,0x10
1c0091b2:	08a2                	slli	a7,a7,0x8
1c0091b4:	00986833          	or	a6,a6,s1
1c0091b8:	0f22                	slli	t5,t5,0x8
1c0091ba:	01e2ef33          	or	t5,t0,t5
1c0091be:	01586833          	or	a6,a6,s5
1c0091c2:	0178e2b3          	or	t0,a7,s7
1c0091c6:	018a1893          	slli	a7,s4,0x18
1c0091ca:	0108e833          	or	a6,a7,a6
1c0091ce:	5882                	lw	a7,32(sp)
1c0091d0:	0ef14503          	lbu	a0,239(sp)
1c0091d4:	0922                	slli	s2,s2,0x8
1c0091d6:	01a96933          	or	s2,s2,s10
1c0091da:	0108c8b3          	xor	a7,a7,a6
1c0091de:	0fc2                	slli	t6,t6,0x10
1c0091e0:	5812                	lw	a6,36(sp)
1c0091e2:	0f014983          	lbu	s3,240(sp)
1c0091e6:	0f314583          	lbu	a1,243(sp)
1c0091ea:	012fefb3          	or	t6,t6,s2
1c0091ee:	0562                	slli	a0,a0,0x18
1c0091f0:	0f514e83          	lbu	t4,245(sp)
1c0091f4:	01f56533          	or	a0,a0,t6
1c0091f8:	0f414c83          	lbu	s9,244(sp)
1c0091fc:	0f614c03          	lbu	s8,246(sp)
1c009200:	00a84833          	xor	a6,a6,a0
1c009204:	5522                	lw	a0,40(sp)
1c009206:	0f714603          	lbu	a2,247(sp)
1c00920a:	013f6f33          	or	t5,t5,s3
1c00920e:	05e2                	slli	a1,a1,0x18
1c009210:	0f914e03          	lbu	t3,249(sp)
1c009214:	0fa14303          	lbu	t1,250(sp)
1c009218:	01e5e5b3          	or	a1,a1,t5
1c00921c:	0ea2                	slli	t4,t4,0x8
1c00921e:	019ee4b3          	or	s1,t4,s9
1c009222:	8d2d                	xor	a0,a0,a1
1c009224:	010c1e93          	slli	t4,s8,0x10
1c009228:	55b2                	lw	a1,44(sp)
1c00922a:	0f814383          	lbu	t2,248(sp)
1c00922e:	0fb14683          	lbu	a3,251(sp)
1c009232:	009eeeb3          	or	t4,t4,s1
1c009236:	0662                	slli	a2,a2,0x18
1c009238:	01d66633          	or	a2,a2,t4
1c00923c:	0342                	slli	t1,t1,0x10
1c00923e:	0e22                	slli	t3,t3,0x8
1c009240:	0fe14b03          	lbu	s6,254(sp)
1c009244:	8db1                	xor	a1,a1,a2
1c009246:	006e6e33          	or	t3,t3,t1
1c00924a:	5642                	lw	a2,48(sp)
1c00924c:	0ff14703          	lbu	a4,255(sp)
1c009250:	007e6e33          	or	t3,t3,t2
1c009254:	06e2                	slli	a3,a3,0x18
1c009256:	01c6e6b3          	or	a3,a3,t3
1c00925a:	8e35                	xor	a2,a2,a3
1c00925c:	010b1313          	slli	t1,s6,0x10
1c009260:	56d2                	lw	a3,52(sp)
1c009262:	00536333          	or	t1,t1,t0
1c009266:	0762                	slli	a4,a4,0x18
1c009268:	00676733          	or	a4,a4,t1
1c00926c:	8f35                	xor	a4,a4,a3
1c00926e:	10114e83          	lbu	t4,257(sp)
1c009272:	10214a83          	lbu	s5,258(sp)
1c009276:	d046                	sw	a7,32(sp)
1c009278:	d242                	sw	a6,36(sp)
1c00927a:	d42a                	sw	a0,40(sp)
1c00927c:	d62e                	sw	a1,44(sp)
1c00927e:	d832                	sw	a2,48(sp)
1c009280:	da3a                	sw	a4,52(sp)
1c009282:	10014903          	lbu	s2,256(sp)
1c009286:	10914303          	lbu	t1,265(sp)
1c00928a:	10a14983          	lbu	s3,266(sp)
1c00928e:	10814383          	lbu	t2,264(sp)
1c009292:	10514f83          	lbu	t6,261(sp)
1c009296:	10b14603          	lbu	a2,267(sp)
1c00929a:	10414b03          	lbu	s6,260(sp)
1c00929e:	10614e03          	lbu	t3,262(sp)
1c0092a2:	09c2                	slli	s3,s3,0x10
1c0092a4:	0322                	slli	t1,t1,0x8
1c0092a6:	10714583          	lbu	a1,263(sp)
1c0092aa:	01336333          	or	t1,t1,s3
1c0092ae:	00736333          	or	t1,t1,t2
1c0092b2:	10d14f03          	lbu	t5,269(sp)
1c0092b6:	0fa2                	slli	t6,t6,0x8
1c0092b8:	0662                	slli	a2,a2,0x18
1c0092ba:	10c14a03          	lbu	s4,268(sp)
1c0092be:	016fefb3          	or	t6,t6,s6
1c0092c2:	11114803          	lbu	a6,273(sp)
1c0092c6:	11214483          	lbu	s1,274(sp)
1c0092ca:	10e14883          	lbu	a7,270(sp)
1c0092ce:	00666633          	or	a2,a2,t1
1c0092d2:	0e42                	slli	t3,t3,0x10
1c0092d4:	5372                	lw	t1,60(sp)
1c0092d6:	01fe6e33          	or	t3,t3,t6
1c0092da:	10f14683          	lbu	a3,271(sp)
1c0092de:	05e2                	slli	a1,a1,0x18
1c0092e0:	11014283          	lbu	t0,272(sp)
1c0092e4:	11314703          	lbu	a4,275(sp)
1c0092e8:	01c5e5b3          	or	a1,a1,t3
1c0092ec:	0f22                	slli	t5,t5,0x8
1c0092ee:	014f6f33          	or	t5,t5,s4
1c0092f2:	00b34333          	xor	t1,t1,a1
1c0092f6:	04c2                	slli	s1,s1,0x10
1c0092f8:	4596                	lw	a1,68(sp)
1c0092fa:	0822                	slli	a6,a6,0x8
1c0092fc:	08c2                	slli	a7,a7,0x10
1c0092fe:	10314503          	lbu	a0,259(sp)
1c009302:	01e8e8b3          	or	a7,a7,t5
1c009306:	00986833          	or	a6,a6,s1
1c00930a:	06e2                	slli	a3,a3,0x18
1c00930c:	00586833          	or	a6,a6,t0
1c009310:	0116e6b3          	or	a3,a3,a7
1c009314:	0ac2                	slli	s5,s5,0x10
1c009316:	0ea2                	slli	t4,t4,0x8
1c009318:	0762                	slli	a4,a4,0x18
1c00931a:	5e62                	lw	t3,56(sp)
1c00931c:	8db5                	xor	a1,a1,a3
1c00931e:	015eeeb3          	or	t4,t4,s5
1c009322:	46a6                	lw	a3,72(sp)
1c009324:	01076733          	or	a4,a4,a6
1c009328:	4806                	lw	a6,64(sp)
1c00932a:	012eeeb3          	or	t4,t4,s2
1c00932e:	0562                	slli	a0,a0,0x18
1c009330:	01d56533          	or	a0,a0,t4
1c009334:	00ae4e33          	xor	t3,t3,a0
1c009338:	00c84833          	xor	a6,a6,a2
1c00933c:	8f35                	xor	a4,a4,a3
1c00933e:	11414f03          	lbu	t5,276(sp)
1c009342:	11514883          	lbu	a7,277(sp)
1c009346:	11614503          	lbu	a0,278(sp)
1c00934a:	11714603          	lbu	a2,279(sp)
1c00934e:	dc72                	sw	t3,56(sp)
1c009350:	de1a                	sw	t1,60(sp)
1c009352:	c0c2                	sw	a6,64(sp)
1c009354:	c2ae                	sw	a1,68(sp)
1c009356:	c4ba                	sw	a4,72(sp)
1c009358:	11914703          	lbu	a4,281(sp)
1c00935c:	11a14303          	lbu	t1,282(sp)
1c009360:	11814e03          	lbu	t3,280(sp)
1c009364:	11b14683          	lbu	a3,283(sp)
1c009368:	0342                	slli	t1,t1,0x10
1c00936a:	0722                	slli	a4,a4,0x8
1c00936c:	00676733          	or	a4,a4,t1
1c009370:	01c76733          	or	a4,a4,t3
1c009374:	06e2                	slli	a3,a3,0x18
1c009376:	08a2                	slli	a7,a7,0x8
1c009378:	01e8e8b3          	or	a7,a7,t5
1c00937c:	8f55                	or	a4,a4,a3
1c00937e:	0542                	slli	a0,a0,0x10
1c009380:	46b6                	lw	a3,76(sp)
1c009382:	01156533          	or	a0,a0,a7
1c009386:	0662                	slli	a2,a2,0x18
1c009388:	11d14803          	lbu	a6,285(sp)
1c00938c:	8e49                	or	a2,a2,a0
1c00938e:	11c14e83          	lbu	t4,284(sp)
1c009392:	8e35                	xor	a2,a2,a3
1c009394:	11e14583          	lbu	a1,286(sp)
1c009398:	46c6                	lw	a3,80(sp)
1c00939a:	0822                	slli	a6,a6,0x8
1c00939c:	01d86833          	or	a6,a6,t4
1c0093a0:	8eb9                	xor	a3,a3,a4
1c0093a2:	0807e793          	ori	a5,a5,128
1c0093a6:	4756                	lw	a4,84(sp)
1c0093a8:	05c2                	slli	a1,a1,0x10
1c0093aa:	0105e5b3          	or	a1,a1,a6
1c0093ae:	07e2                	slli	a5,a5,0x18
1c0093b0:	8fcd                	or	a5,a5,a1
1c0093b2:	080c                	addi	a1,sp,16
1c0093b4:	8fb9                	xor	a5,a5,a4
1c0093b6:	852e                	mv	a0,a1
1c0093b8:	c6b2                	sw	a2,76(sp)
1c0093ba:	c8b6                	sw	a3,80(sp)
1c0093bc:	cabe                	sw	a5,84(sp)
1c0093be:	fc1fe0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c0093c2:	4552                	lw	a0,20(sp)
1c0093c4:	45f2                	lw	a1,28(sp)
1c0093c6:	5612                	lw	a2,36(sp)
1c0093c8:	56b2                	lw	a3,44(sp)
1c0093ca:	57d2                	lw	a5,52(sp)
1c0093cc:	5772                	lw	a4,60(sp)
1c0093ce:	00855b13          	srli	s6,a0,0x8
1c0093d2:	01055a93          	srli	s5,a0,0x10
1c0093d6:	01855a13          	srli	s4,a0,0x18
1c0093da:	0085d993          	srli	s3,a1,0x8
1c0093de:	0105d913          	srli	s2,a1,0x10
1c0093e2:	0185d493          	srli	s1,a1,0x18
1c0093e6:	0ca10e23          	sb	a0,220(sp)
1c0093ea:	0d610ea3          	sb	s6,221(sp)
1c0093ee:	0d510f23          	sb	s5,222(sp)
1c0093f2:	0d410fa3          	sb	s4,223(sp)
1c0093f6:	00865393          	srli	t2,a2,0x8
1c0093fa:	01065293          	srli	t0,a2,0x10
1c0093fe:	01865f93          	srli	t6,a2,0x18
1c009402:	0086df13          	srli	t5,a3,0x8
1c009406:	0106de93          	srli	t4,a3,0x10
1c00940a:	0186de13          	srli	t3,a3,0x18
1c00940e:	0087d313          	srli	t1,a5,0x8
1c009412:	0107d893          	srli	a7,a5,0x10
1c009416:	0187d813          	srli	a6,a5,0x18
1c00941a:	0eb10223          	sb	a1,228(sp)
1c00941e:	0f3102a3          	sb	s3,229(sp)
1c009422:	0f210323          	sb	s2,230(sp)
1c009426:	0e9103a3          	sb	s1,231(sp)
1c00942a:	45c2                	lw	a1,16(sp)
1c00942c:	4536                	lw	a0,76(sp)
1c00942e:	0ec10623          	sb	a2,236(sp)
1c009432:	0e7106a3          	sb	t2,237(sp)
1c009436:	467e                	lw	a2,220(sp)
1c009438:	0e510723          	sb	t0,238(sp)
1c00943c:	0ff107a3          	sb	t6,239(sp)
1c009440:	0ed10a23          	sb	a3,244(sp)
1c009444:	0fe10aa3          	sb	t5,245(sp)
1c009448:	46e2                	lw	a3,24(sp)
1c00944a:	0fd10b23          	sb	t4,246(sp)
1c00944e:	0fc10ba3          	sb	t3,247(sp)
1c009452:	0e610ea3          	sb	t1,253(sp)
1c009456:	0f110f23          	sb	a7,254(sp)
1c00945a:	0f010fa3          	sb	a6,255(sp)
1c00945e:	10e10223          	sb	a4,260(sp)
1c009462:	4816                	lw	a6,68(sp)
1c009464:	0ef10e23          	sb	a5,252(sp)
1c009468:	579e                	lw	a5,228(sp)
1c00946a:	00875d93          	srli	s11,a4,0x8
1c00946e:	01075d13          	srli	s10,a4,0x10
1c009472:	00885c93          	srli	s9,a6,0x8
1c009476:	01085c13          	srli	s8,a6,0x10
1c00947a:	01885b93          	srli	s7,a6,0x18
1c00947e:	00855b13          	srli	s6,a0,0x8
1c009482:	01055a93          	srli	s5,a0,0x10
1c009486:	01855a13          	srli	s4,a0,0x18
1c00948a:	0085d993          	srli	s3,a1,0x8
1c00948e:	0105d913          	srli	s2,a1,0x10
1c009492:	0185d493          	srli	s1,a1,0x18
1c009496:	00865393          	srli	t2,a2,0x8
1c00949a:	01065293          	srli	t0,a2,0x10
1c00949e:	01865f93          	srli	t6,a2,0x18
1c0094a2:	0086df13          	srli	t5,a3,0x8
1c0094a6:	0106de93          	srli	t4,a3,0x10
1c0094aa:	0186de13          	srli	t3,a3,0x18
1c0094ae:	0087d313          	srli	t1,a5,0x8
1c0094b2:	0107d893          	srli	a7,a5,0x10
1c0094b6:	00f40623          	sb	a5,12(s0)
1c0094ba:	8361                	srli	a4,a4,0x18
1c0094bc:	83e1                	srli	a5,a5,0x18
1c0094be:	11b102a3          	sb	s11,261(sp)
1c0094c2:	11a10323          	sb	s10,262(sp)
1c0094c6:	10e103a3          	sb	a4,263(sp)
1c0094ca:	11010623          	sb	a6,268(sp)
1c0094ce:	4706                	lw	a4,64(sp)
1c0094d0:	119106a3          	sb	s9,269(sp)
1c0094d4:	11810723          	sb	s8,270(sp)
1c0094d8:	117107a3          	sb	s7,271(sp)
1c0094dc:	10a10a23          	sb	a0,276(sp)
1c0094e0:	11610aa3          	sb	s6,277(sp)
1c0094e4:	11510b23          	sb	s5,278(sp)
1c0094e8:	11410ba3          	sb	s4,279(sp)
1c0094ec:	00b40023          	sb	a1,0(s0)
1c0094f0:	4a26                	lw	s4,72(sp)
1c0094f2:	55be                	lw	a1,236(sp)
1c0094f4:	013400a3          	sb	s3,1(s0)
1c0094f8:	01240123          	sb	s2,2(s0)
1c0094fc:	009401a3          	sb	s1,3(s0)
1c009500:	00c40223          	sb	a2,4(s0)
1c009504:	007402a3          	sb	t2,5(s0)
1c009508:	565e                	lw	a2,244(sp)
1c00950a:	00540323          	sb	t0,6(s0)
1c00950e:	01f403a3          	sb	t6,7(s0)
1c009512:	01e404a3          	sb	t5,9(s0)
1c009516:	01d40523          	sb	t4,10(s0)
1c00951a:	01c405a3          	sb	t3,11(s0)
1c00951e:	006406a3          	sb	t1,13(s0)
1c009522:	01140723          	sb	a7,14(s0)
1c009526:	00f407a3          	sb	a5,15(s0)
1c00952a:	00d40423          	sb	a3,8(s0)
1c00952e:	56fe                	lw	a3,252(sp)
1c009530:	5502                	lw	a0,32(sp)
1c009532:	54a2                	lw	s1,40(sp)
1c009534:	0185db13          	srli	s6,a1,0x18
1c009538:	00855d93          	srli	s11,a0,0x8
1c00953c:	01055d13          	srli	s10,a0,0x10
1c009540:	01855c93          	srli	s9,a0,0x18
1c009544:	5522                	lw	a0,40(sp)
1c009546:	5842                	lw	a6,48(sp)
1c009548:	0085dc13          	srli	s8,a1,0x8
1c00954c:	00855a93          	srli	s5,a0,0x8
1c009550:	8141                	srli	a0,a0,0x10
1c009552:	c42a                	sw	a0,8(sp)
1c009554:	5562                	lw	a0,56(sp)
1c009556:	0105db93          	srli	s7,a1,0x10
1c00955a:	00b40a23          	sb	a1,20(s0)
1c00955e:	8161                	srli	a0,a0,0x18
1c009560:	c22a                	sw	a0,4(sp)
1c009562:	5502                	lw	a0,32(sp)
1c009564:	45a2                	lw	a1,8(sp)
1c009566:	01640ba3          	sb	s6,23(s0)
1c00956a:	c62a                	sw	a0,12(sp)
1c00956c:	00c14503          	lbu	a0,12(sp)
1c009570:	5b22                	lw	s6,40(sp)
1c009572:	0184d993          	srli	s3,s1,0x18
1c009576:	00865913          	srli	s2,a2,0x8
1c00957a:	01065493          	srli	s1,a2,0x10
1c00957e:	01865393          	srli	t2,a2,0x18
1c009582:	00a10623          	sb	a0,12(sp)
1c009586:	0ff57513          	andi	a0,a0,255
1c00958a:	10412783          	lw	a5,260(sp)
1c00958e:	00885293          	srli	t0,a6,0x8
1c009592:	01085f93          	srli	t6,a6,0x10
1c009596:	01885f13          	srli	t5,a6,0x18
1c00959a:	0086de93          	srli	t4,a3,0x8
1c00959e:	5862                	lw	a6,56(sp)
1c0095a0:	0106de13          	srli	t3,a3,0x10
1c0095a4:	0186d313          	srli	t1,a3,0x18
1c0095a8:	00a40823          	sb	a0,16(s0)
1c0095ac:	01b408a3          	sb	s11,17(s0)
1c0095b0:	01a40923          	sb	s10,18(s0)
1c0095b4:	019409a3          	sb	s9,19(s0)
1c0095b8:	01840aa3          	sb	s8,21(s0)
1c0095bc:	01740b23          	sb	s7,22(s0)
1c0095c0:	01640c23          	sb	s6,24(s0)
1c0095c4:	01540ca3          	sb	s5,25(s0)
1c0095c8:	00b40d23          	sb	a1,26(s0)
1c0095cc:	01340da3          	sb	s3,27(s0)
1c0095d0:	01240ea3          	sb	s2,29(s0)
1c0095d4:	00940f23          	sb	s1,30(s0)
1c0095d8:	00740fa3          	sb	t2,31(s0)
1c0095dc:	00c40e23          	sb	a2,28(s0)
1c0095e0:	5642                	lw	a2,48(sp)
1c0095e2:	02d40223          	sb	a3,36(s0)
1c0095e6:	56e2                	lw	a3,56(sp)
1c0095e8:	02c40023          	sb	a2,32(s0)
1c0095ec:	10c12603          	lw	a2,268(sp)
1c0095f0:	02d40423          	sb	a3,40(s0)
1c0095f4:	4692                	lw	a3,4(sp)
1c0095f6:	00885893          	srli	a7,a6,0x8
1c0095fa:	025400a3          	sb	t0,33(s0)
1c0095fe:	02d405a3          	sb	a3,43(s0)
1c009602:	11412683          	lw	a3,276(sp)
1c009606:	03f40123          	sb	t6,34(s0)
1c00960a:	03e401a3          	sb	t5,35(s0)
1c00960e:	03d402a3          	sb	t4,37(s0)
1c009612:	03c40323          	sb	t3,38(s0)
1c009616:	026403a3          	sb	t1,39(s0)
1c00961a:	02f40623          	sb	a5,44(s0)
1c00961e:	0087d993          	srli	s3,a5,0x8
1c009622:	0107d913          	srli	s2,a5,0x10
1c009626:	01085813          	srli	a6,a6,0x10
1c00962a:	00875493          	srli	s1,a4,0x8
1c00962e:	008a5e13          	srli	t3,s4,0x8
1c009632:	010a5313          	srli	t1,s4,0x10
1c009636:	83e1                	srli	a5,a5,0x18
1c009638:	01075393          	srli	t2,a4,0x10
1c00963c:	01875293          	srli	t0,a4,0x18
1c009640:	00865f93          	srli	t6,a2,0x8
1c009644:	01065f13          	srli	t5,a2,0x10
1c009648:	01865e93          	srli	t4,a2,0x18
1c00964c:	031404a3          	sb	a7,41(s0)
1c009650:	03040523          	sb	a6,42(s0)
1c009654:	033406a3          	sb	s3,45(s0)
1c009658:	03240723          	sb	s2,46(s0)
1c00965c:	029408a3          	sb	s1,49(s0)
1c009660:	03440c23          	sb	s4,56(s0)
1c009664:	018a5893          	srli	a7,s4,0x18
1c009668:	02f407a3          	sb	a5,47(s0)
1c00966c:	02e40823          	sb	a4,48(s0)
1c009670:	02740923          	sb	t2,50(s0)
1c009674:	025409a3          	sb	t0,51(s0)
1c009678:	02c40a23          	sb	a2,52(s0)
1c00967c:	03f40aa3          	sb	t6,53(s0)
1c009680:	03e40b23          	sb	t5,54(s0)
1c009684:	03d40ba3          	sb	t4,55(s0)
1c009688:	03c40ca3          	sb	t3,57(s0)
1c00968c:	02640d23          	sb	t1,58(s0)
1c009690:	0086d813          	srli	a6,a3,0x8
1c009694:	0106d513          	srli	a0,a3,0x10
1c009698:	0186d593          	srli	a1,a3,0x18
1c00969c:	03140da3          	sb	a7,59(s0)
1c0096a0:	02d40e23          	sb	a3,60(s0)
1c0096a4:	03040ea3          	sb	a6,61(s0)
1c0096a8:	02a40f23          	sb	a0,62(s0)
1c0096ac:	02b40fa3          	sb	a1,63(s0)
1c0096b0:	1dc12083          	lw	ra,476(sp)
1c0096b4:	1d812403          	lw	s0,472(sp)
1c0096b8:	1d412483          	lw	s1,468(sp)
1c0096bc:	1d012903          	lw	s2,464(sp)
1c0096c0:	1cc12983          	lw	s3,460(sp)
1c0096c4:	1c812a03          	lw	s4,456(sp)
1c0096c8:	1c412a83          	lw	s5,452(sp)
1c0096cc:	1c012b03          	lw	s6,448(sp)
1c0096d0:	1bc12b83          	lw	s7,444(sp)
1c0096d4:	1b812c03          	lw	s8,440(sp)
1c0096d8:	1b412c83          	lw	s9,436(sp)
1c0096dc:	1b012d03          	lw	s10,432(sp)
1c0096e0:	1ac12d83          	lw	s11,428(sp)
1c0096e4:	613d                	addi	sp,sp,480
1c0096e6:	8082                	ret
1c0096e8:	4781                	li	a5,0
1c0096ea:	ba45                	j	1c00909a <sha3_512+0x12e>

1c0096ec <PQCLEAN_KYBER768_CLEAN_gen_matrix>:
1c0096ec:	db010113          	addi	sp,sp,-592
1c0096f0:	21b12e23          	sw	s11,540(sp)
1c0096f4:	6d85                	lui	s11,0x1
1c0096f6:	24912223          	sw	s1,580(sp)
1c0096fa:	25212023          	sw	s2,576(sp)
1c0096fe:	23512a23          	sw	s5,564(sp)
1c009702:	23612823          	sw	s6,560(sp)
1c009706:	23912223          	sw	s9,548(sp)
1c00970a:	23a12023          	sw	s10,544(sp)
1c00970e:	24112623          	sw	ra,588(sp)
1c009712:	fffd8d13          	addi	s10,s11,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c009716:	24812423          	sw	s0,584(sp)
1c00971a:	23312e23          	sw	s3,572(sp)
1c00971e:	23412c23          	sw	s4,568(sp)
1c009722:	23712623          	sw	s7,556(sp)
1c009726:	23812423          	sw	s8,552(sp)
1c00972a:	8cae                	mv	s9,a1
1c00972c:	c432                	sw	a2,8(sp)
1c00972e:	c62a                	sw	a0,12(sp)
1c009730:	4b01                	li	s6,0
1c009732:	20c10a93          	addi	s5,sp,524
1c009736:	d00d8d93          	addi	s11,s11,-768
1c00973a:	10000913          	li	s2,256
1c00973e:	1964                	addi	s1,sp,188
1c009740:	4432                	lw	s0,12(sp)
1c009742:	0ffb7c13          	andi	s8,s6,255
1c009746:	4981                	li	s3,0
1c009748:	a831                	j	1c009764 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x78>
1c00974a:	00f69023          	sh	a5,0(a3)
1c00974e:	15251763          	bne	a0,s2,1c00989c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1b0>
1c009752:	0808                	addi	a0,sp,16
1c009754:	aacff0ef          	jal	ra,1c008a00 <shake128_ctx_release>
1c009758:	0985                	addi	s3,s3,1
1c00975a:	478d                	li	a5,3
1c00975c:	20040413          	addi	s0,s0,512
1c009760:	0ef98a63          	beq	s3,a5,1c009854 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x168>
1c009764:	47a2                	lw	a5,8(sp)
1c009766:	0ff9f613          	andi	a2,s3,255
1c00976a:	cff9                	beqz	a5,1c009848 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x15c>
1c00976c:	86b2                	mv	a3,a2
1c00976e:	85e6                	mv	a1,s9
1c009770:	8662                	mv	a2,s8
1c009772:	0808                	addi	a0,sp,16
1c009774:	43f000ef          	jal	ra,1c00a3b2 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c009778:	0810                	addi	a2,sp,16
1c00977a:	458d                	li	a1,3
1c00977c:	0848                	addi	a0,sp,20
1c00977e:	98eff0ef          	jal	ra,1c00890c <shake128_squeezeblocks>
1c009782:	4b81                	li	s7,0
1c009784:	0858                	addi	a4,sp,20
1c009786:	00174583          	lbu	a1,1(a4)
1c00978a:	00074603          	lbu	a2,0(a4)
1c00978e:	001b9693          	slli	a3,s7,0x1
1c009792:	00859793          	slli	a5,a1,0x8
1c009796:	8fd1                	or	a5,a5,a2
1c009798:	01a7f7b3          	and	a5,a5,s10
1c00979c:	07c2                	slli	a5,a5,0x10
1c00979e:	83c1                	srli	a5,a5,0x10
1c0097a0:	00274603          	lbu	a2,2(a4)
1c0097a4:	96a2                	add	a3,a3,s0
1c0097a6:	0045d313          	srli	t1,a1,0x4
1c0097aa:	001b8513          	addi	a0,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c0097ae:	f8fdfee3          	bgeu	s11,a5,1c00974a <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x5e>
1c0097b2:	0612                	slli	a2,a2,0x4
1c0097b4:	00666633          	or	a2,a2,t1
1c0097b8:	00cdc863          	blt	s11,a2,1c0097c8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xdc>
1c0097bc:	001b9793          	slli	a5,s7,0x1
1c0097c0:	97a2                	add	a5,a5,s0
1c0097c2:	00c79023          	sh	a2,0(a5)
1c0097c6:	0b85                	addi	s7,s7,1
1c0097c8:	f92b85e3          	beq	s7,s2,1c009752 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c0097cc:	070d                	addi	a4,a4,3
1c0097ce:	faea9ce3          	bne	s5,a4,1c009786 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x9a>
1c0097d2:	0ff00a13          	li	s4,255
1c0097d6:	a821                	j	1c0097ee <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x102>
1c0097d8:	00171593          	slli	a1,a4,0x1
1c0097dc:	95aa                	add	a1,a1,a0
1c0097de:	0705                	addi	a4,a4,1
1c0097e0:	00f59023          	sh	a5,0(a1)
1c0097e4:	0c676363          	bltu	a4,t1,1c0098aa <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1be>
1c0097e8:	9bba                	add	s7,s7,a4
1c0097ea:	f77a64e3          	bltu	s4,s7,1c009752 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c0097ee:	0810                	addi	a2,sp,16
1c0097f0:	0848                	addi	a0,sp,20
1c0097f2:	4585                	li	a1,1
1c0097f4:	918ff0ef          	jal	ra,1c00890c <shake128_squeezeblocks>
1c0097f8:	001b9513          	slli	a0,s7,0x1
1c0097fc:	9522                	add	a0,a0,s0
1c0097fe:	41790333          	sub	t1,s2,s7
1c009802:	0850                	addi	a2,sp,20
1c009804:	4701                	li	a4,0
1c009806:	00164583          	lbu	a1,1(a2)
1c00980a:	00064e03          	lbu	t3,0(a2)
1c00980e:	00264683          	lbu	a3,2(a2)
1c009812:	00859793          	slli	a5,a1,0x8
1c009816:	01c7e7b3          	or	a5,a5,t3
1c00981a:	01a7f7b3          	and	a5,a5,s10
1c00981e:	07c2                	slli	a5,a5,0x10
1c009820:	0692                	slli	a3,a3,0x4
1c009822:	8191                	srli	a1,a1,0x4
1c009824:	83c1                	srli	a5,a5,0x10
1c009826:	8ecd                	or	a3,a3,a1
1c009828:	fafdf8e3          	bgeu	s11,a5,1c0097d8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xec>
1c00982c:	00ddc863          	blt	s11,a3,1c00983c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x150>
1c009830:	00171793          	slli	a5,a4,0x1
1c009834:	97aa                	add	a5,a5,a0
1c009836:	00d79023          	sh	a3,0(a5)
1c00983a:	0705                	addi	a4,a4,1
1c00983c:	fa6776e3          	bgeu	a4,t1,1c0097e8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c009840:	060d                	addi	a2,a2,3
1c009842:	fcc492e3          	bne	s1,a2,1c009806 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x11a>
1c009846:	b74d                	j	1c0097e8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c009848:	86e2                	mv	a3,s8
1c00984a:	85e6                	mv	a1,s9
1c00984c:	0808                	addi	a0,sp,16
1c00984e:	365000ef          	jal	ra,1c00a3b2 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c009852:	b71d                	j	1c009778 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x8c>
1c009854:	47b2                	lw	a5,12(sp)
1c009856:	0b05                	addi	s6,s6,1
1c009858:	60078793          	addi	a5,a5,1536
1c00985c:	c63e                	sw	a5,12(sp)
1c00985e:	ef3b11e3          	bne	s6,s3,1c009740 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x54>
1c009862:	24c12083          	lw	ra,588(sp)
1c009866:	24812403          	lw	s0,584(sp)
1c00986a:	24412483          	lw	s1,580(sp)
1c00986e:	24012903          	lw	s2,576(sp)
1c009872:	23c12983          	lw	s3,572(sp)
1c009876:	23812a03          	lw	s4,568(sp)
1c00987a:	23412a83          	lw	s5,564(sp)
1c00987e:	23012b03          	lw	s6,560(sp)
1c009882:	22c12b83          	lw	s7,556(sp)
1c009886:	22812c03          	lw	s8,552(sp)
1c00988a:	22412c83          	lw	s9,548(sp)
1c00988e:	22012d03          	lw	s10,544(sp)
1c009892:	21c12d83          	lw	s11,540(sp)
1c009896:	25010113          	addi	sp,sp,592
1c00989a:	8082                	ret
1c00989c:	8191                	srli	a1,a1,0x4
1c00989e:	0612                	slli	a2,a2,0x4
1c0098a0:	8e4d                	or	a2,a2,a1
1c0098a2:	8baa                	mv	s7,a0
1c0098a4:	f0cddce3          	bge	s11,a2,1c0097bc <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xd0>
1c0098a8:	b715                	j	1c0097cc <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xe0>
1c0098aa:	f8ddd3e3          	bge	s11,a3,1c009830 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x144>
1c0098ae:	bf49                	j	1c009840 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x154>

1c0098b0 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c0098b0:	b7010113          	addi	sp,sp,-1168
1c0098b4:	7379                	lui	t1,0xffffe
1c0098b6:	48112623          	sw	ra,1164(sp)
1c0098ba:	48812423          	sw	s0,1160(sp)
1c0098be:	48912223          	sw	s1,1156(sp)
1c0098c2:	49212023          	sw	s2,1152(sp)
1c0098c6:	47312e23          	sw	s3,1148(sp)
1c0098ca:	6909                	lui	s2,0x2
1c0098cc:	47412c23          	sw	s4,1144(sp)
1c0098d0:	47512a23          	sw	s5,1140(sp)
1c0098d4:	47612823          	sw	s6,1136(sp)
1c0098d8:	47712623          	sw	s7,1132(sp)
1c0098dc:	47812423          	sw	s8,1128(sp)
1c0098e0:	47912223          	sw	s9,1124(sp)
1c0098e4:	47a12023          	sw	s10,1120(sp)
1c0098e8:	45b12e23          	sw	s11,1116(sp)
1c0098ec:	911a                	add	sp,sp,t1
1c0098ee:	0818                	addi	a4,sp,16
1c0098f0:	7a79                	lui	s4,0xffffe
1c0098f2:	44090793          	addi	a5,s2,1088 # 2440 <__CTOR_LIST__-0x1bffdbc4>
1c0098f6:	97ba                	add	a5,a5,a4
1c0098f8:	bc0a0413          	addi	s0,s4,-1088 # ffffdbc0 <__l2_shared_end+0xe3fedbc0>
1c0098fc:	943e                	add	s0,s0,a5
1c0098fe:	89aa                	mv	s3,a0
1c009900:	8aae                	mv	s5,a1
1c009902:	8522                	mv	a0,s0
1c009904:	02000593          	li	a1,32
1c009908:	7c4000ef          	jal	ra,1c00a0cc <randombytes>
1c00990c:	85a2                	mv	a1,s0
1c00990e:	8522                	mv	a0,s0
1c009910:	02000613          	li	a2,32
1c009914:	e58ff0ef          	jal	ra,1c008f6c <sha3_512>
1c009918:	0818                	addi	a4,sp,16
1c00991a:	74fd                	lui	s1,0xfffff
1c00991c:	44090793          	addi	a5,s2,1088
1c009920:	97ba                	add	a5,a5,a4
1c009922:	e0048513          	addi	a0,s1,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c009926:	85a2                	mv	a1,s0
1c009928:	953e                	add	a0,a0,a5
1c00992a:	4601                	li	a2,0
1c00992c:	33c1                	jal	1c0096ec <PQCLEAN_KYBER768_CLEAN_gen_matrix>
1c00992e:	0818                	addi	a4,sp,16
1c009930:	44090793          	addi	a5,s2,1088
1c009934:	97ba                	add	a5,a5,a4
1c009936:	80048493          	addi	s1,s1,-2048
1c00993a:	02040413          	addi	s0,s0,32
1c00993e:	8b4a                	mv	s6,s2
1c009940:	00978933          	add	s2,a5,s1
1c009944:	854a                	mv	a0,s2
1c009946:	4601                	li	a2,0
1c009948:	85a2                	mv	a1,s0
1c00994a:	2ef5                	jal	1c009d46 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00994c:	20090493          	addi	s1,s2,512
1c009950:	4605                	li	a2,1
1c009952:	85a2                	mv	a1,s0
1c009954:	8526                	mv	a0,s1
1c009956:	2ec5                	jal	1c009d46 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009958:	40090513          	addi	a0,s2,1024
1c00995c:	4609                	li	a2,2
1c00995e:	85a2                	mv	a1,s0
1c009960:	26dd                	jal	1c009d46 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009962:	0818                	addi	a4,sp,16
1c009964:	440b0793          	addi	a5,s6,1088 # ff0440 <__CTOR_LIST__-0x1b00fbc4>
1c009968:	97ba                	add	a5,a5,a4
1c00996a:	c00a0a13          	addi	s4,s4,-1024
1c00996e:	9a3e                	add	s4,s4,a5
1c009970:	8552                	mv	a0,s4
1c009972:	460d                	li	a2,3
1c009974:	85a2                	mv	a1,s0
1c009976:	2ec1                	jal	1c009d46 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009978:	200a0513          	addi	a0,s4,512
1c00997c:	4611                	li	a2,4
1c00997e:	85a2                	mv	a1,s0
1c009980:	26d9                	jal	1c009d46 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009982:	4615                	li	a2,5
1c009984:	85a2                	mv	a1,s0
1c009986:	400a0513          	addi	a0,s4,1024
1c00998a:	2e75                	jal	1c009d46 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00998c:	854a                	mv	a0,s2
1c00998e:	29e5                	jal	1c009e86 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c009990:	1c000537          	lui	a0,0x1c000
1c009994:	15050513          	addi	a0,a0,336 # 1c000150 <__clz_tab+0x134>
1c009998:	503000ef          	jal	ra,1c00a69a <puts>
1c00999c:	4a01                	li	s4,0
1c00999e:	1c000c37          	lui	s8,0x1c000
1c0099a2:	1c000937          	lui	s2,0x1c000
1c0099a6:	1c000bb7          	lui	s7,0x1c000
1c0099aa:	4b0d                	li	s6,3
1c0099ac:	85d2                	mv	a1,s4
1c0099ae:	160c0513          	addi	a0,s8,352 # 1c000160 <__clz_tab+0x144>
1c0099b2:	5ab000ef          	jal	ra,1c00a75c <printf>
1c0099b6:	e0048413          	addi	s0,s1,-512
1c0099ba:	00041583          	lh	a1,0(s0)
1c0099be:	17890513          	addi	a0,s2,376 # 1c000178 <__clz_tab+0x15c>
1c0099c2:	0409                	addi	s0,s0,2
1c0099c4:	599000ef          	jal	ra,1c00a75c <printf>
1c0099c8:	fe8499e3          	bne	s1,s0,1c0099ba <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x10a>
1c0099cc:	180b8513          	addi	a0,s7,384 # 1c000180 <__clz_tab+0x164>
1c0099d0:	0a05                	addi	s4,s4,1
1c0099d2:	58b000ef          	jal	ra,1c00a75c <printf>
1c0099d6:	20048493          	addi	s1,s1,512
1c0099da:	fd6a19e3          	bne	s4,s6,1c0099ac <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xfc>
1c0099de:	1c000537          	lui	a0,0x1c000
1c0099e2:	1a050513          	addi	a0,a0,416 # 1c0001a0 <__clz_tab+0x184>
1c0099e6:	4b5000ef          	jal	ra,1c00a69a <puts>
1c0099ea:	6c09                	lui	s8,0x2
1c0099ec:	7479                	lui	s0,0xffffe
1c0099ee:	0818                	addi	a4,sp,16
1c0099f0:	440c0793          	addi	a5,s8,1088 # 2440 <__CTOR_LIST__-0x1bffdbc4>
1c0099f4:	97ba                	add	a5,a5,a4
1c0099f6:	c0040b13          	addi	s6,s0,-1024 # ffffdc00 <__l2_shared_end+0xe3fedc00>
1c0099fa:	9b3e                	add	s6,s6,a5
1c0099fc:	855a                	mv	a0,s6
1c0099fe:	2161                	jal	1c009e86 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c009a00:	0814                	addi	a3,sp,16
1c009a02:	440c0713          	addi	a4,s8,1088
1c009a06:	9736                	add	a4,a4,a3
1c009a08:	20040493          	addi	s1,s0,512
1c009a0c:	94ba                	add	s1,s1,a4
1c009a0e:	77fd                	lui	a5,0xfffff
1c009a10:	440c0713          	addi	a4,s8,1088
1c009a14:	9736                	add	a4,a4,a3
1c009a16:	80078a13          	addi	s4,a5,-2048 # ffffe800 <__l2_shared_end+0xe3fee800>
1c009a1a:	9a3a                	add	s4,s4,a4
1c009a1c:	440c0713          	addi	a4,s8,1088
1c009a20:	9736                	add	a4,a4,a3
1c009a22:	e0078793          	addi	a5,a5,-512
1c009a26:	00f70933          	add	s2,a4,a5
1c009a2a:	8652                	mv	a2,s4
1c009a2c:	85ca                	mv	a1,s2
1c009a2e:	8526                	mv	a0,s1
1c009a30:	23cd                	jal	1c00a012 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009a32:	8526                	mv	a0,s1
1c009a34:	2655                	jal	1c009dd8 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009a36:	20048b93          	addi	s7,s1,512
1c009a3a:	8652                	mv	a2,s4
1c009a3c:	60090593          	addi	a1,s2,1536
1c009a40:	855e                	mv	a0,s7
1c009a42:	2bc1                	jal	1c00a012 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009a44:	855e                	mv	a0,s7
1c009a46:	2e49                	jal	1c009dd8 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009a48:	e40c0793          	addi	a5,s8,-448
1c009a4c:	0818                	addi	a4,sp,16
1c009a4e:	40048913          	addi	s2,s1,1024
1c009a52:	00f705b3          	add	a1,a4,a5
1c009a56:	8652                	mv	a2,s4
1c009a58:	854a                	mv	a0,s2
1c009a5a:	2b65                	jal	1c00a012 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009a5c:	854a                	mv	a0,s2
1c009a5e:	2ead                	jal	1c009dd8 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009a60:	865a                	mv	a2,s6
1c009a62:	85a6                	mv	a1,s1
1c009a64:	8526                	mv	a0,s1
1c009a66:	251d                	jal	1c00a08c <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c009a68:	8526                	mv	a0,s1
1c009a6a:	2519                	jal	1c00a070 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c009a6c:	85d2                	mv	a1,s4
1c009a6e:	8556                	mv	a0,s5
1c009a70:	26f5                	jal	1c009e5c <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c009a72:	85a6                	mv	a1,s1
1c009a74:	854e                	mv	a0,s3
1c009a76:	26dd                	jal	1c009e5c <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c009a78:	0818                	addi	a4,sp,16
1c009a7a:	440c0793          	addi	a5,s8,1088
1c009a7e:	97ba                	add	a5,a5,a4
1c009a80:	97a2                	add	a5,a5,s0
1c009a82:	c63e                	sw	a5,12(sp)
1c009a84:	4732                	lw	a4,12(sp)
1c009a86:	bc47a803          	lw	a6,-1084(a5)
1c009a8a:	bc87a503          	lw	a0,-1080(a5)
1c009a8e:	bcc7a583          	lw	a1,-1076(a5)
1c009a92:	bd07a603          	lw	a2,-1072(a5)
1c009a96:	bd47a683          	lw	a3,-1068(a5)
1c009a9a:	bc07a883          	lw	a7,-1088(a5)
1c009a9e:	bd872703          	lw	a4,-1064(a4)
1c009aa2:	bdc7a783          	lw	a5,-1060(a5)
1c009aa6:	0105d413          	srli	s0,a1,0x10
1c009aaa:	0088dd93          	srli	s11,a7,0x8
1c009aae:	0108dd13          	srli	s10,a7,0x10
1c009ab2:	0188dc93          	srli	s9,a7,0x18
1c009ab6:	00885c13          	srli	s8,a6,0x8
1c009aba:	01085b93          	srli	s7,a6,0x10
1c009abe:	01885b13          	srli	s6,a6,0x18
1c009ac2:	00855a93          	srli	s5,a0,0x8
1c009ac6:	01055a13          	srli	s4,a0,0x10
1c009aca:	01855913          	srli	s2,a0,0x18
1c009ace:	0085d493          	srli	s1,a1,0x8
1c009ad2:	0185d393          	srli	t2,a1,0x18
1c009ad6:	00865293          	srli	t0,a2,0x8
1c009ada:	01065f93          	srli	t6,a2,0x10
1c009ade:	01865f13          	srli	t5,a2,0x18
1c009ae2:	0086de93          	srli	t4,a3,0x8
1c009ae6:	0186d313          	srli	t1,a3,0x18
1c009aea:	49198023          	sb	a7,1152(s3)
1c009aee:	49b980a3          	sb	s11,1153(s3)
1c009af2:	49a98123          	sb	s10,1154(s3)
1c009af6:	499981a3          	sb	s9,1155(s3)
1c009afa:	49098223          	sb	a6,1156(s3)
1c009afe:	498982a3          	sb	s8,1157(s3)
1c009b02:	49798323          	sb	s7,1158(s3)
1c009b06:	496983a3          	sb	s6,1159(s3)
1c009b0a:	48a98423          	sb	a0,1160(s3)
1c009b0e:	495984a3          	sb	s5,1161(s3)
1c009b12:	49498523          	sb	s4,1162(s3)
1c009b16:	492985a3          	sb	s2,1163(s3)
1c009b1a:	48b98623          	sb	a1,1164(s3)
1c009b1e:	489986a3          	sb	s1,1165(s3)
1c009b22:	48898723          	sb	s0,1166(s3)
1c009b26:	48c98823          	sb	a2,1168(s3)
1c009b2a:	48d98a23          	sb	a3,1172(s3)
1c009b2e:	0106de13          	srli	t3,a3,0x10
1c009b32:	487987a3          	sb	t2,1167(s3)
1c009b36:	485988a3          	sb	t0,1169(s3)
1c009b3a:	49f98923          	sb	t6,1170(s3)
1c009b3e:	49e989a3          	sb	t5,1171(s3)
1c009b42:	49d98aa3          	sb	t4,1173(s3)
1c009b46:	00875893          	srli	a7,a4,0x8
1c009b4a:	01075813          	srli	a6,a4,0x10
1c009b4e:	01875513          	srli	a0,a4,0x18
1c009b52:	0087d593          	srli	a1,a5,0x8
1c009b56:	0107d613          	srli	a2,a5,0x10
1c009b5a:	0187d693          	srli	a3,a5,0x18
1c009b5e:	49c98b23          	sb	t3,1174(s3)
1c009b62:	48698ba3          	sb	t1,1175(s3)
1c009b66:	48e98c23          	sb	a4,1176(s3)
1c009b6a:	49198ca3          	sb	a7,1177(s3)
1c009b6e:	49098d23          	sb	a6,1178(s3)
1c009b72:	48a98da3          	sb	a0,1179(s3)
1c009b76:	48f98e23          	sb	a5,1180(s3)
1c009b7a:	48b98ea3          	sb	a1,1181(s3)
1c009b7e:	48c98f23          	sb	a2,1182(s3)
1c009b82:	48d98fa3          	sb	a3,1183(s3)
1c009b86:	6309                	lui	t1,0x2
1c009b88:	911a                	add	sp,sp,t1
1c009b8a:	48c12083          	lw	ra,1164(sp)
1c009b8e:	48812403          	lw	s0,1160(sp)
1c009b92:	48412483          	lw	s1,1156(sp)
1c009b96:	48012903          	lw	s2,1152(sp)
1c009b9a:	47c12983          	lw	s3,1148(sp)
1c009b9e:	47812a03          	lw	s4,1144(sp)
1c009ba2:	47412a83          	lw	s5,1140(sp)
1c009ba6:	47012b03          	lw	s6,1136(sp)
1c009baa:	46c12b83          	lw	s7,1132(sp)
1c009bae:	46812c03          	lw	s8,1128(sp)
1c009bb2:	46412c83          	lw	s9,1124(sp)
1c009bb6:	46012d03          	lw	s10,1120(sp)
1c009bba:	45c12d83          	lw	s11,1116(sp)
1c009bbe:	49010113          	addi	sp,sp,1168
1c009bc2:	8082                	ret

1c009bc4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c009bc4:	1141                	addi	sp,sp,-16
1c009bc6:	c422                	sw	s0,8(sp)
1c009bc8:	c226                	sw	s1,4(sp)
1c009bca:	842a                	mv	s0,a0
1c009bcc:	84ae                	mv	s1,a1
1c009bce:	c606                	sw	ra,12(sp)
1c009bd0:	c04a                	sw	s2,0(sp)
1c009bd2:	39f9                	jal	1c0098b0 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c009bd4:	48048713          	addi	a4,s1,1152
1c009bd8:	00440793          	addi	a5,s0,4
1c009bdc:	00f77663          	bgeu	a4,a5,1c009be8 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x24>
1c009be0:	48448793          	addi	a5,s1,1156
1c009be4:	06f46c63          	bltu	s0,a5,1c009c5c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x98>
1c009be8:	86a2                	mv	a3,s0
1c009bea:	4a040313          	addi	t1,s0,1184
1c009bee:	0016c803          	lbu	a6,1(a3)
1c009bf2:	0006c883          	lbu	a7,0(a3)
1c009bf6:	0026c603          	lbu	a2,2(a3)
1c009bfa:	0036c783          	lbu	a5,3(a3)
1c009bfe:	0822                	slli	a6,a6,0x8
1c009c00:	01186833          	or	a6,a6,a7
1c009c04:	0642                	slli	a2,a2,0x10
1c009c06:	01066633          	or	a2,a2,a6
1c009c0a:	07e2                	slli	a5,a5,0x18
1c009c0c:	8fd1                	or	a5,a5,a2
1c009c0e:	0087d893          	srli	a7,a5,0x8
1c009c12:	0107d813          	srli	a6,a5,0x10
1c009c16:	83e1                	srli	a5,a5,0x18
1c009c18:	00c70023          	sb	a2,0(a4)
1c009c1c:	011700a3          	sb	a7,1(a4)
1c009c20:	01070123          	sb	a6,2(a4)
1c009c24:	00f701a3          	sb	a5,3(a4)
1c009c28:	0691                	addi	a3,a3,4
1c009c2a:	0711                	addi	a4,a4,4
1c009c2c:	fc6691e3          	bne	a3,t1,1c009bee <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x2a>
1c009c30:	6905                	lui	s2,0x1
1c009c32:	92090513          	addi	a0,s2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c009c36:	85a2                	mv	a1,s0
1c009c38:	9526                	add	a0,a0,s1
1c009c3a:	4a000613          	li	a2,1184
1c009c3e:	84eff0ef          	jal	ra,1c008c8c <sha3_256>
1c009c42:	94090513          	addi	a0,s2,-1728
1c009c46:	9526                	add	a0,a0,s1
1c009c48:	02000593          	li	a1,32
1c009c4c:	2141                	jal	1c00a0cc <randombytes>
1c009c4e:	40b2                	lw	ra,12(sp)
1c009c50:	4422                	lw	s0,8(sp)
1c009c52:	4492                	lw	s1,4(sp)
1c009c54:	4902                	lw	s2,0(sp)
1c009c56:	4501                	li	a0,0
1c009c58:	0141                	addi	sp,sp,16
1c009c5a:	8082                	ret
1c009c5c:	87a2                	mv	a5,s0
1c009c5e:	4a040613          	addi	a2,s0,1184
1c009c62:	0007c683          	lbu	a3,0(a5)
1c009c66:	0785                	addi	a5,a5,1
1c009c68:	0705                	addi	a4,a4,1
1c009c6a:	fed70fa3          	sb	a3,-1(a4)
1c009c6e:	fec79ae3          	bne	a5,a2,1c009c62 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x9e>
1c009c72:	bf7d                	j	1c009c30 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6c>

1c009c74 <PQCLEAN_KYBER768_CLEAN_basemul>:
1c009c74:	00261783          	lh	a5,2(a2)
1c009c78:	00259703          	lh	a4,2(a1)
1c009c7c:	1101                	addi	sp,sp,-32
1c009c7e:	cc22                	sw	s0,24(sp)
1c009c80:	842a                	mv	s0,a0
1c009c82:	02f70533          	mul	a0,a4,a5
1c009c86:	ce06                	sw	ra,28(sp)
1c009c88:	ca26                	sw	s1,20(sp)
1c009c8a:	c84a                	sw	s2,16(sp)
1c009c8c:	c64e                	sw	s3,12(sp)
1c009c8e:	892e                	mv	s2,a1
1c009c90:	84b2                	mv	s1,a2
1c009c92:	89b6                	mv	s3,a3
1c009c94:	2df9                	jal	1c00a372 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c96:	87aa                	mv	a5,a0
1c009c98:	03350533          	mul	a0,a0,s3
1c009c9c:	00f41023          	sh	a5,0(s0)
1c009ca0:	2dc9                	jal	1c00a372 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009ca2:	00a41023          	sh	a0,0(s0)
1c009ca6:	00049783          	lh	a5,0(s1)
1c009caa:	00091503          	lh	a0,0(s2)
1c009cae:	02f50533          	mul	a0,a0,a5
1c009cb2:	25c1                	jal	1c00a372 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009cb4:	00045783          	lhu	a5,0(s0)
1c009cb8:	953e                	add	a0,a0,a5
1c009cba:	00a41023          	sh	a0,0(s0)
1c009cbe:	00249783          	lh	a5,2(s1)
1c009cc2:	00091503          	lh	a0,0(s2)
1c009cc6:	02f50533          	mul	a0,a0,a5
1c009cca:	2565                	jal	1c00a372 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009ccc:	00a41123          	sh	a0,2(s0)
1c009cd0:	00049783          	lh	a5,0(s1)
1c009cd4:	00291503          	lh	a0,2(s2)
1c009cd8:	02f50533          	mul	a0,a0,a5
1c009cdc:	2d59                	jal	1c00a372 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009cde:	00245783          	lhu	a5,2(s0)
1c009ce2:	40f2                	lw	ra,28(sp)
1c009ce4:	44d2                	lw	s1,20(sp)
1c009ce6:	953e                	add	a0,a0,a5
1c009ce8:	00a41123          	sh	a0,2(s0)
1c009cec:	4462                	lw	s0,24(sp)
1c009cee:	4942                	lw	s2,16(sp)
1c009cf0:	49b2                	lw	s3,12(sp)
1c009cf2:	6105                	addi	sp,sp,32
1c009cf4:	8082                	ret

1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>:
1c009cf6:	6805                	lui	a6,0x1
1c009cf8:	18050893          	addi	a7,a0,384
1c009cfc:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009d00:	00059703          	lh	a4,0(a1)
1c009d04:	00259783          	lh	a5,2(a1)
1c009d08:	050d                	addi	a0,a0,3
1c009d0a:	40f75613          	srai	a2,a4,0xf
1c009d0e:	40f7d693          	srai	a3,a5,0xf
1c009d12:	01067633          	and	a2,a2,a6
1c009d16:	0106f6b3          	and	a3,a3,a6
1c009d1a:	9732                	add	a4,a4,a2
1c009d1c:	97b6                	add	a5,a5,a3
1c009d1e:	0742                	slli	a4,a4,0x10
1c009d20:	07c2                	slli	a5,a5,0x10
1c009d22:	8341                	srli	a4,a4,0x10
1c009d24:	83c1                	srli	a5,a5,0x10
1c009d26:	00479613          	slli	a2,a5,0x4
1c009d2a:	00875693          	srli	a3,a4,0x8
1c009d2e:	8ed1                	or	a3,a3,a2
1c009d30:	8391                	srli	a5,a5,0x4
1c009d32:	fee50ea3          	sb	a4,-3(a0)
1c009d36:	fed50f23          	sb	a3,-2(a0)
1c009d3a:	fef50fa3          	sb	a5,-1(a0)
1c009d3e:	0591                	addi	a1,a1,4
1c009d40:	fca890e3          	bne	a7,a0,1c009d00 <PQCLEAN_KYBER768_CLEAN_poly_tobytes+0xa>
1c009d44:	8082                	ret

1c009d46 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c009d46:	7175                	addi	sp,sp,-144
1c009d48:	c522                	sw	s0,136(sp)
1c009d4a:	86b2                	mv	a3,a2
1c009d4c:	842a                	mv	s0,a0
1c009d4e:	862e                	mv	a2,a1
1c009d50:	850a                	mv	a0,sp
1c009d52:	08000593          	li	a1,128
1c009d56:	c706                	sw	ra,140(sp)
1c009d58:	2d49                	jal	1c00a3ea <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c009d5a:	858a                	mv	a1,sp
1c009d5c:	8522                	mv	a0,s0
1c009d5e:	ee4fe0ef          	jal	ra,1c008442 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c009d62:	40ba                	lw	ra,140(sp)
1c009d64:	442a                	lw	s0,136(sp)
1c009d66:	6149                	addi	sp,sp,144
1c009d68:	8082                	ret

1c009d6a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c009d6a:	1101                	addi	sp,sp,-32
1c009d6c:	c452                	sw	s4,8(sp)
1c009d6e:	c256                	sw	s5,4(sp)
1c009d70:	1c000a37          	lui	s4,0x1c000
1c009d74:	1c000ab7          	lui	s5,0x1c000
1c009d78:	ca26                	sw	s1,20(sp)
1c009d7a:	c84a                	sw	s2,16(sp)
1c009d7c:	c64e                	sw	s3,12(sp)
1c009d7e:	ce06                	sw	ra,28(sp)
1c009d80:	cc22                	sw	s0,24(sp)
1c009d82:	24ca0a13          	addi	s4,s4,588 # 1c00024c <PQCLEAN_KYBER768_CLEAN_zetas+0x80>
1c009d86:	00450993          	addi	s3,a0,4
1c009d8a:	00458913          	addi	s2,a1,4
1c009d8e:	00460493          	addi	s1,a2,4
1c009d92:	2cca8a93          	addi	s5,s5,716 # 1c0002cc <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c009d96:	000a1403          	lh	s0,0(s4)
1c009d9a:	ffc48613          	addi	a2,s1,-4
1c009d9e:	ffc90593          	addi	a1,s2,-4
1c009da2:	ffc98513          	addi	a0,s3,-4
1c009da6:	86a2                	mv	a3,s0
1c009da8:	35f1                	jal	1c009c74 <PQCLEAN_KYBER768_CLEAN_basemul>
1c009daa:	408006b3          	neg	a3,s0
1c009dae:	06c2                	slli	a3,a3,0x10
1c009db0:	8626                	mv	a2,s1
1c009db2:	85ca                	mv	a1,s2
1c009db4:	854e                	mv	a0,s3
1c009db6:	86c1                	srai	a3,a3,0x10
1c009db8:	0a09                	addi	s4,s4,2
1c009dba:	3d6d                	jal	1c009c74 <PQCLEAN_KYBER768_CLEAN_basemul>
1c009dbc:	09a1                	addi	s3,s3,8
1c009dbe:	0921                	addi	s2,s2,8
1c009dc0:	04a1                	addi	s1,s1,8
1c009dc2:	fd4a9ae3          	bne	s5,s4,1c009d96 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x2c>
1c009dc6:	40f2                	lw	ra,28(sp)
1c009dc8:	4462                	lw	s0,24(sp)
1c009dca:	44d2                	lw	s1,20(sp)
1c009dcc:	4942                	lw	s2,16(sp)
1c009dce:	49b2                	lw	s3,12(sp)
1c009dd0:	4a22                	lw	s4,8(sp)
1c009dd2:	4a92                	lw	s5,4(sp)
1c009dd4:	6105                	addi	sp,sp,32
1c009dd6:	8082                	ret

1c009dd8 <PQCLEAN_KYBER768_CLEAN_poly_tomont>:
1c009dd8:	1141                	addi	sp,sp,-16
1c009dda:	c422                	sw	s0,8(sp)
1c009ddc:	c226                	sw	s1,4(sp)
1c009dde:	c04a                	sw	s2,0(sp)
1c009de0:	c606                	sw	ra,12(sp)
1c009de2:	842a                	mv	s0,a0
1c009de4:	20050913          	addi	s2,a0,512
1c009de8:	54900493          	li	s1,1353
1c009dec:	00041503          	lh	a0,0(s0)
1c009df0:	0409                	addi	s0,s0,2
1c009df2:	02950533          	mul	a0,a0,s1
1c009df6:	2bb5                	jal	1c00a372 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009df8:	fea41f23          	sh	a0,-2(s0)
1c009dfc:	ff2418e3          	bne	s0,s2,1c009dec <PQCLEAN_KYBER768_CLEAN_poly_tomont+0x14>
1c009e00:	40b2                	lw	ra,12(sp)
1c009e02:	4422                	lw	s0,8(sp)
1c009e04:	4492                	lw	s1,4(sp)
1c009e06:	4902                	lw	s2,0(sp)
1c009e08:	0141                	addi	sp,sp,16
1c009e0a:	8082                	ret

1c009e0c <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c009e0c:	1141                	addi	sp,sp,-16
1c009e0e:	c422                	sw	s0,8(sp)
1c009e10:	c226                	sw	s1,4(sp)
1c009e12:	c606                	sw	ra,12(sp)
1c009e14:	842a                	mv	s0,a0
1c009e16:	20050493          	addi	s1,a0,512
1c009e1a:	00041503          	lh	a0,0(s0)
1c009e1e:	0409                	addi	s0,s0,2
1c009e20:	23bd                	jal	1c00a38e <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c009e22:	fea41f23          	sh	a0,-2(s0)
1c009e26:	fe941ae3          	bne	s0,s1,1c009e1a <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c009e2a:	40b2                	lw	ra,12(sp)
1c009e2c:	4422                	lw	s0,8(sp)
1c009e2e:	4492                	lw	s1,4(sp)
1c009e30:	0141                	addi	sp,sp,16
1c009e32:	8082                	ret

1c009e34 <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c009e34:	4781                	li	a5,0
1c009e36:	20000893          	li	a7,512
1c009e3a:	00f606b3          	add	a3,a2,a5
1c009e3e:	00f58733          	add	a4,a1,a5
1c009e42:	0006d803          	lhu	a6,0(a3)
1c009e46:	00075703          	lhu	a4,0(a4)
1c009e4a:	00f506b3          	add	a3,a0,a5
1c009e4e:	0789                	addi	a5,a5,2
1c009e50:	9742                	add	a4,a4,a6
1c009e52:	00e69023          	sh	a4,0(a3)
1c009e56:	ff1792e3          	bne	a5,a7,1c009e3a <PQCLEAN_KYBER768_CLEAN_poly_add+0x6>
1c009e5a:	8082                	ret

1c009e5c <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>:
1c009e5c:	1141                	addi	sp,sp,-16
1c009e5e:	c606                	sw	ra,12(sp)
1c009e60:	c422                	sw	s0,8(sp)
1c009e62:	c226                	sw	s1,4(sp)
1c009e64:	842a                	mv	s0,a0
1c009e66:	84ae                	mv	s1,a1
1c009e68:	3579                	jal	1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009e6a:	20048593          	addi	a1,s1,512
1c009e6e:	18040513          	addi	a0,s0,384
1c009e72:	3551                	jal	1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009e74:	30040513          	addi	a0,s0,768
1c009e78:	4422                	lw	s0,8(sp)
1c009e7a:	40b2                	lw	ra,12(sp)
1c009e7c:	40048593          	addi	a1,s1,1024
1c009e80:	4492                	lw	s1,4(sp)
1c009e82:	0141                	addi	sp,sp,16
1c009e84:	bd8d                	j	1c009cf6 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>

1c009e86 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c009e86:	9c010113          	addi	sp,sp,-1600
1c009e8a:	63412423          	sw	s4,1576(sp)
1c009e8e:	61912a23          	sw	s9,1556(sp)
1c009e92:	6a41                	lui	s4,0x10
1c009e94:	20050c93          	addi	s9,a0,512
1c009e98:	62812c23          	sw	s0,1592(sp)
1c009e9c:	62912a23          	sw	s1,1588(sp)
1c009ea0:	63212823          	sw	s2,1584(sp)
1c009ea4:	63312623          	sw	s3,1580(sp)
1c009ea8:	63512223          	sw	s5,1572(sp)
1c009eac:	63612023          	sw	s6,1568(sp)
1c009eb0:	61712e23          	sw	s7,1564(sp)
1c009eb4:	61812c23          	sw	s8,1560(sp)
1c009eb8:	62112e23          	sw	ra,1596(sp)
1c009ebc:	61a12823          	sw	s10,1552(sp)
1c009ec0:	61b12623          	sw	s11,1548(sp)
1c009ec4:	8c2a                	mv	s8,a0
1c009ec6:	89e6                	mv	s3,s9
1c009ec8:	4b81                	li	s7,0
1c009eca:	40010493          	addi	s1,sp,1024
1c009ece:	20010913          	addi	s2,sp,512
1c009ed2:	1c000437          	lui	s0,0x1c000
1c009ed6:	1c000b37          	lui	s6,0x1c000
1c009eda:	1a7d                	addi	s4,s4,-1
1c009edc:	10000a93          	li	s5,256
1c009ee0:	20000613          	li	a2,512
1c009ee4:	85e2                	mv	a1,s8
1c009ee6:	8526                	mv	a0,s1
1c009ee8:	23dd                	jal	1c00a4ce <memcpy>
1c009eea:	20000613          	li	a2,512
1c009eee:	4581                	li	a1,0
1c009ef0:	850a                	mv	a0,sp
1c009ef2:	2ba1                	jal	1c00a44a <memset>
1c009ef4:	20000613          	li	a2,512
1c009ef8:	4581                	li	a1,0
1c009efa:	854a                	mv	a0,s2
1c009efc:	23b9                	jal	1c00a44a <memset>
1c009efe:	8626                	mv	a2,s1
1c009f00:	4681                	li	a3,0
1c009f02:	00061703          	lh	a4,0(a2)
1c009f06:	00261583          	lh	a1,2(a2)
1c009f0a:	4016d793          	srai	a5,a3,0x1
1c009f0e:	078a                	slli	a5,a5,0x2
1c009f10:	0742                	slli	a4,a4,0x10
1c009f12:	0145f5b3          	and	a1,a1,s4
1c009f16:	60010513          	addi	a0,sp,1536
1c009f1a:	97aa                	add	a5,a5,a0
1c009f1c:	8f4d                	or	a4,a4,a1
1c009f1e:	a0e7a023          	sw	a4,-1536(a5)
1c009f22:	0689                	addi	a3,a3,2
1c009f24:	0611                	addi	a2,a2,4
1c009f26:	fd569ee3          	bne	a3,s5,1c009f02 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x7c>
1c009f2a:	1c0007b7          	lui	a5,0x1c000
1c009f2e:	85de                	mv	a1,s7
1c009f30:	2cc78513          	addi	a0,a5,716 # 1c0002cc <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c009f34:	029000ef          	jal	ra,1c00a75c <printf>
1c009f38:	8d0a                	mv	s10,sp
1c009f3a:	000d2583          	lw	a1,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c009f3e:	2e840513          	addi	a0,s0,744 # 1c0002e8 <PQCLEAN_KYBER768_CLEAN_zetas+0x11c>
1c009f42:	0d11                	addi	s10,s10,4
1c009f44:	019000ef          	jal	ra,1c00a75c <printf>
1c009f48:	ffa919e3          	bne	s2,s10,1c009f3a <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0xb4>
1c009f4c:	85ca                	mv	a1,s2
1c009f4e:	850a                	mv	a0,sp
1c009f50:	c96fe0ef          	jal	ra,1c0083e6 <KYBER_poly_ntt>
1c009f54:	1c0007b7          	lui	a5,0x1c000
1c009f58:	85de                	mv	a1,s7
1c009f5a:	2f078513          	addi	a0,a5,752 # 1c0002f0 <PQCLEAN_KYBER768_CLEAN_zetas+0x124>
1c009f5e:	7fe000ef          	jal	ra,1c00a75c <printf>
1c009f62:	8d4a                	mv	s10,s2
1c009f64:	8dca                	mv	s11,s2
1c009f66:	000da583          	lw	a1,0(s11)
1c009f6a:	2e840513          	addi	a0,s0,744
1c009f6e:	0d91                	addi	s11,s11,4
1c009f70:	7ec000ef          	jal	ra,1c00a75c <printf>
1c009f74:	fe9d99e3          	bne	s11,s1,1c009f66 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0xe0>
1c009f78:	87e2                	mv	a5,s8
1c009f7a:	000d2603          	lw	a2,0(s10)
1c009f7e:	004d2683          	lw	a3,4(s10)
1c009f82:	0d21                	addi	s10,s10,8
1c009f84:	01065513          	srli	a0,a2,0x10
1c009f88:	0106d593          	srli	a1,a3,0x10
1c009f8c:	00a79023          	sh	a0,0(a5)
1c009f90:	00b79123          	sh	a1,2(a5)
1c009f94:	00c79223          	sh	a2,4(a5)
1c009f98:	00d79323          	sh	a3,6(a5)
1c009f9c:	07a1                	addi	a5,a5,8
1c009f9e:	fc9d1ee3          	bne	s10,s1,1c009f7a <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0xf4>
1c009fa2:	1c0007b7          	lui	a5,0x1c000
1c009fa6:	85de                	mv	a1,s7
1c009fa8:	31078513          	addi	a0,a5,784 # 1c000310 <PQCLEAN_KYBER768_CLEAN_zetas+0x144>
1c009fac:	7b0000ef          	jal	ra,1c00a75c <printf>
1c009fb0:	8d62                	mv	s10,s8
1c009fb2:	000d1583          	lh	a1,0(s10)
1c009fb6:	32cb0513          	addi	a0,s6,812 # 1c00032c <PQCLEAN_KYBER768_CLEAN_zetas+0x160>
1c009fba:	0d09                	addi	s10,s10,2
1c009fbc:	7a0000ef          	jal	ra,1c00a75c <printf>
1c009fc0:	ff3d19e3          	bne	s10,s3,1c009fb2 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x12c>
1c009fc4:	0b85                	addi	s7,s7,1
1c009fc6:	478d                	li	a5,3
1c009fc8:	8c66                	mv	s8,s9
1c009fca:	200d0993          	addi	s3,s10,512
1c009fce:	00fb8563          	beq	s7,a5,1c009fd8 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x152>
1c009fd2:	200c8c93          	addi	s9,s9,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c009fd6:	b729                	j	1c009ee0 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x5a>
1c009fd8:	63c12083          	lw	ra,1596(sp)
1c009fdc:	63812403          	lw	s0,1592(sp)
1c009fe0:	63412483          	lw	s1,1588(sp)
1c009fe4:	63012903          	lw	s2,1584(sp)
1c009fe8:	62c12983          	lw	s3,1580(sp)
1c009fec:	62812a03          	lw	s4,1576(sp)
1c009ff0:	62412a83          	lw	s5,1572(sp)
1c009ff4:	62012b03          	lw	s6,1568(sp)
1c009ff8:	61c12b83          	lw	s7,1564(sp)
1c009ffc:	61812c03          	lw	s8,1560(sp)
1c00a000:	61412c83          	lw	s9,1556(sp)
1c00a004:	61012d03          	lw	s10,1552(sp)
1c00a008:	60c12d83          	lw	s11,1548(sp)
1c00a00c:	64010113          	addi	sp,sp,1600
1c00a010:	8082                	ret

1c00a012 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c00a012:	df010113          	addi	sp,sp,-528
1c00a016:	20112623          	sw	ra,524(sp)
1c00a01a:	20812423          	sw	s0,520(sp)
1c00a01e:	20912223          	sw	s1,516(sp)
1c00a022:	21212023          	sw	s2,512(sp)
1c00a026:	842a                	mv	s0,a0
1c00a028:	84ae                	mv	s1,a1
1c00a02a:	8932                	mv	s2,a2
1c00a02c:	3b3d                	jal	1c009d6a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00a02e:	20090613          	addi	a2,s2,512
1c00a032:	20048593          	addi	a1,s1,512
1c00a036:	850a                	mv	a0,sp
1c00a038:	3b0d                	jal	1c009d6a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00a03a:	860a                	mv	a2,sp
1c00a03c:	85a2                	mv	a1,s0
1c00a03e:	8522                	mv	a0,s0
1c00a040:	3bd5                	jal	1c009e34 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00a042:	40090613          	addi	a2,s2,1024
1c00a046:	40048593          	addi	a1,s1,1024
1c00a04a:	850a                	mv	a0,sp
1c00a04c:	3b39                	jal	1c009d6a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00a04e:	860a                	mv	a2,sp
1c00a050:	85a2                	mv	a1,s0
1c00a052:	8522                	mv	a0,s0
1c00a054:	33c5                	jal	1c009e34 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00a056:	8522                	mv	a0,s0
1c00a058:	3b55                	jal	1c009e0c <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00a05a:	20c12083          	lw	ra,524(sp)
1c00a05e:	20812403          	lw	s0,520(sp)
1c00a062:	20412483          	lw	s1,516(sp)
1c00a066:	20012903          	lw	s2,512(sp)
1c00a06a:	21010113          	addi	sp,sp,528
1c00a06e:	8082                	ret

1c00a070 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c00a070:	1141                	addi	sp,sp,-16
1c00a072:	c606                	sw	ra,12(sp)
1c00a074:	c422                	sw	s0,8(sp)
1c00a076:	842a                	mv	s0,a0
1c00a078:	3b51                	jal	1c009e0c <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00a07a:	20040513          	addi	a0,s0,512
1c00a07e:	3379                	jal	1c009e0c <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00a080:	40040513          	addi	a0,s0,1024
1c00a084:	4422                	lw	s0,8(sp)
1c00a086:	40b2                	lw	ra,12(sp)
1c00a088:	0141                	addi	sp,sp,16
1c00a08a:	b349                	j	1c009e0c <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c00a08c <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c00a08c:	1101                	addi	sp,sp,-32
1c00a08e:	cc22                	sw	s0,24(sp)
1c00a090:	ca26                	sw	s1,20(sp)
1c00a092:	c84a                	sw	s2,16(sp)
1c00a094:	c64e                	sw	s3,12(sp)
1c00a096:	c452                	sw	s4,8(sp)
1c00a098:	ce06                	sw	ra,28(sp)
1c00a09a:	89aa                	mv	s3,a0
1c00a09c:	892e                	mv	s2,a1
1c00a09e:	84b2                	mv	s1,a2
1c00a0a0:	4401                	li	s0,0
1c00a0a2:	60000a13          	li	s4,1536
1c00a0a6:	00848633          	add	a2,s1,s0
1c00a0aa:	008905b3          	add	a1,s2,s0
1c00a0ae:	00898533          	add	a0,s3,s0
1c00a0b2:	20040413          	addi	s0,s0,512
1c00a0b6:	3bbd                	jal	1c009e34 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00a0b8:	ff4417e3          	bne	s0,s4,1c00a0a6 <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00a0bc:	40f2                	lw	ra,28(sp)
1c00a0be:	4462                	lw	s0,24(sp)
1c00a0c0:	44d2                	lw	s1,20(sp)
1c00a0c2:	4942                	lw	s2,16(sp)
1c00a0c4:	49b2                	lw	s3,12(sp)
1c00a0c6:	4a22                	lw	s4,8(sp)
1c00a0c8:	6105                	addi	sp,sp,32
1c00a0ca:	8082                	ret

1c00a0cc <randombytes>:
1c00a0cc:	2a058263          	beqz	a1,1c00a370 <randombytes+0x2a4>
1c00a0d0:	715d                	addi	sp,sp,-80
1c00a0d2:	00b50733          	add	a4,a0,a1
1c00a0d6:	c63a                	sw	a4,12(sp)
1c00a0d8:	9e378737          	lui	a4,0x9e378
1c00a0dc:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c00a0e0:	1c0067b7          	lui	a5,0x1c006
1c00a0e4:	c43a                	sw	a4,8(sp)
1c00a0e6:	e377a737          	lui	a4,0xe377a
1c00a0ea:	3a478793          	addi	a5,a5,932 # 1c0063a4 <outleft>
1c00a0ee:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c00a0f2:	c83e                	sw	a5,16(sp)
1c00a0f4:	ca3a                	sw	a4,20(sp)
1c00a0f6:	439c                	lw	a5,0(a5)
1c00a0f8:	c6ef3737          	lui	a4,0xc6ef3
1c00a0fc:	c6a2                	sw	s0,76(sp)
1c00a0fe:	1c0062b7          	lui	t0,0x1c006
1c00a102:	1c006437          	lui	s0,0x1c006
1c00a106:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c00a10a:	d06e                	sw	s11,32(sp)
1c00a10c:	c4a6                	sw	s1,72(sp)
1c00a10e:	c2ca                	sw	s2,68(sp)
1c00a110:	c0ce                	sw	s3,64(sp)
1c00a112:	de52                	sw	s4,60(sp)
1c00a114:	dc56                	sw	s5,56(sp)
1c00a116:	da5a                	sw	s6,52(sp)
1c00a118:	d85e                	sw	s7,48(sp)
1c00a11a:	d662                	sw	s8,44(sp)
1c00a11c:	d466                	sw	s9,40(sp)
1c00a11e:	d26a                	sw	s10,36(sp)
1c00a120:	8daa                	mv	s11,a0
1c00a122:	38040413          	addi	s0,s0,896 # 1c006380 <out>
1c00a126:	35028293          	addi	t0,t0,848 # 1c006350 <in>
1c00a12a:	cc3a                	sw	a4,24(sp)
1c00a12c:	cf85                	beqz	a5,1c00a164 <randombytes+0x98>
1c00a12e:	17fd                	addi	a5,a5,-1
1c00a130:	00279713          	slli	a4,a5,0x2
1c00a134:	9722                	add	a4,a4,s0
1c00a136:	4304                	lw	s1,0(a4)
1c00a138:	4742                	lw	a4,16(sp)
1c00a13a:	009d8023          	sb	s1,0(s11)
1c00a13e:	0d85                	addi	s11,s11,1
1c00a140:	c31c                	sw	a5,0(a4)
1c00a142:	4732                	lw	a4,12(sp)
1c00a144:	feed94e3          	bne	s11,a4,1c00a12c <randombytes+0x60>
1c00a148:	4436                	lw	s0,76(sp)
1c00a14a:	44a6                	lw	s1,72(sp)
1c00a14c:	4916                	lw	s2,68(sp)
1c00a14e:	4986                	lw	s3,64(sp)
1c00a150:	5a72                	lw	s4,60(sp)
1c00a152:	5ae2                	lw	s5,56(sp)
1c00a154:	5b52                	lw	s6,52(sp)
1c00a156:	5bc2                	lw	s7,48(sp)
1c00a158:	5c32                	lw	s8,44(sp)
1c00a15a:	5ca2                	lw	s9,40(sp)
1c00a15c:	5d12                	lw	s10,36(sp)
1c00a15e:	5d82                	lw	s11,32(sp)
1c00a160:	6161                	addi	sp,sp,80
1c00a162:	8082                	ret
1c00a164:	0002a703          	lw	a4,0(t0)
1c00a168:	0042ae83          	lw	t4,4(t0)
1c00a16c:	0082af03          	lw	t5,8(t0)
1c00a170:	0705                	addi	a4,a4,1
1c00a172:	00e2a023          	sw	a4,0(t0)
1c00a176:	00c2af83          	lw	t6,12(t0)
1c00a17a:	ef11                	bnez	a4,1c00a196 <randombytes+0xca>
1c00a17c:	0e85                	addi	t4,t4,1
1c00a17e:	01d2a223          	sw	t4,4(t0)
1c00a182:	000e9a63          	bnez	t4,1c00a196 <randombytes+0xca>
1c00a186:	0f05                	addi	t5,t5,1
1c00a188:	01e2a423          	sw	t5,8(t0)
1c00a18c:	000f1563          	bnez	t5,1c00a196 <randombytes+0xca>
1c00a190:	0f85                	addi	t6,t6,1
1c00a192:	01f2a623          	sw	t6,12(t0)
1c00a196:	0102ae03          	lw	t3,16(t0)
1c00a19a:	0142a303          	lw	t1,20(t0)
1c00a19e:	0182a883          	lw	a7,24(t0)
1c00a1a2:	01c2a803          	lw	a6,28(t0)
1c00a1a6:	0202a503          	lw	a0,32(t0)
1c00a1aa:	0242a583          	lw	a1,36(t0)
1c00a1ae:	0282a603          	lw	a2,40(t0)
1c00a1b2:	02c2a683          	lw	a3,44(t0)
1c00a1b6:	00974713          	xori	a4,a4,9
1c00a1ba:	007ece93          	xori	t4,t4,7
1c00a1be:	009f4f13          	xori	t5,t5,9
1c00a1c2:	003fcf93          	xori	t6,t6,3
1c00a1c6:	002e4e13          	xori	t3,t3,2
1c00a1ca:	00334313          	xori	t1,t1,3
1c00a1ce:	0088c893          	xori	a7,a7,8
1c00a1d2:	00484813          	xori	a6,a6,4
1c00a1d6:	00654513          	xori	a0,a0,6
1c00a1da:	0025c593          	xori	a1,a1,2
1c00a1de:	00664613          	xori	a2,a2,6
1c00a1e2:	0046c693          	xori	a3,a3,4
1c00a1e6:	4495                	li	s1,5
1c00a1e8:	49a5                	li	s3,9
1c00a1ea:	4a1d                	li	s4,7
1c00a1ec:	4a89                	li	s5,2
1c00a1ee:	4b0d                	li	s6,3
1c00a1f0:	4ba1                	li	s7,8
1c00a1f2:	4d0d                	li	s10,3
1c00a1f4:	4c0d                	li	s8,3
1c00a1f6:	4781                	li	a5,0
1c00a1f8:	ce6e                	sw	s11,28(sp)
1c00a1fa:	43d2                	lw	t2,20(sp)
1c00a1fc:	00778db3          	add	s11,a5,t2
1c00a200:	43a2                	lw	t2,8(sp)
1c00a202:	01b6dc93          	srli	s9,a3,0x1b
1c00a206:	00569913          	slli	s2,a3,0x5
1c00a20a:	979e                	add	a5,a5,t2
1c00a20c:	0036c393          	xori	t2,a3,3
1c00a210:	01996933          	or	s2,s2,s9
1c00a214:	93be                	add	t2,t2,a5
1c00a216:	0123c3b3          	xor	t2,t2,s2
1c00a21a:	971e                	add	a4,a4,t2
1c00a21c:	01975c93          	srli	s9,a4,0x19
1c00a220:	00174393          	xori	t2,a4,1
1c00a224:	00771913          	slli	s2,a4,0x7
1c00a228:	01996933          	or	s2,s2,s9
1c00a22c:	93be                	add	t2,t2,a5
1c00a22e:	0123c3b3          	xor	t2,t2,s2
1c00a232:	9e9e                	add	t4,t4,t2
1c00a234:	017edc93          	srli	s9,t4,0x17
1c00a238:	004ec393          	xori	t2,t4,4
1c00a23c:	009e9913          	slli	s2,t4,0x9
1c00a240:	01996933          	or	s2,s2,s9
1c00a244:	93be                	add	t2,t2,a5
1c00a246:	0123c3b3          	xor	t2,t2,s2
1c00a24a:	9f1e                	add	t5,t5,t2
1c00a24c:	013f5c93          	srli	s9,t5,0x13
1c00a250:	001f4393          	xori	t2,t5,1
1c00a254:	00df1913          	slli	s2,t5,0xd
1c00a258:	01996933          	or	s2,s2,s9
1c00a25c:	93be                	add	t2,t2,a5
1c00a25e:	0123c3b3          	xor	t2,t2,s2
1c00a262:	9f9e                	add	t6,t6,t2
1c00a264:	01bfdc93          	srli	s9,t6,0x1b
1c00a268:	005fc393          	xori	t2,t6,5
1c00a26c:	005f9913          	slli	s2,t6,0x5
1c00a270:	01996933          	or	s2,s2,s9
1c00a274:	93be                	add	t2,t2,a5
1c00a276:	0123c3b3          	xor	t2,t2,s2
1c00a27a:	9e1e                	add	t3,t3,t2
1c00a27c:	019e5c93          	srli	s9,t3,0x19
1c00a280:	009e4393          	xori	t2,t3,9
1c00a284:	007e1913          	slli	s2,t3,0x7
1c00a288:	01996933          	or	s2,s2,s9
1c00a28c:	93be                	add	t2,t2,a5
1c00a28e:	0123c3b3          	xor	t2,t2,s2
1c00a292:	931e                	add	t1,t1,t2
1c00a294:	01735c93          	srli	s9,t1,0x17
1c00a298:	00234393          	xori	t2,t1,2
1c00a29c:	00931913          	slli	s2,t1,0x9
1c00a2a0:	01996933          	or	s2,s2,s9
1c00a2a4:	93be                	add	t2,t2,a5
1c00a2a6:	0123c3b3          	xor	t2,t2,s2
1c00a2aa:	989e                	add	a7,a7,t2
1c00a2ac:	0138dc93          	srli	s9,a7,0x13
1c00a2b0:	0068c393          	xori	t2,a7,6
1c00a2b4:	00d89913          	slli	s2,a7,0xd
1c00a2b8:	01996933          	or	s2,s2,s9
1c00a2bc:	93be                	add	t2,t2,a5
1c00a2be:	0123c3b3          	xor	t2,t2,s2
1c00a2c2:	981e                	add	a6,a6,t2
1c00a2c4:	01b85c93          	srli	s9,a6,0x1b
1c00a2c8:	00584393          	xori	t2,a6,5
1c00a2cc:	00581913          	slli	s2,a6,0x5
1c00a2d0:	01996933          	or	s2,s2,s9
1c00a2d4:	93be                	add	t2,t2,a5
1c00a2d6:	0123c3b3          	xor	t2,t2,s2
1c00a2da:	951e                	add	a0,a0,t2
1c00a2dc:	01955c93          	srli	s9,a0,0x19
1c00a2e0:	00354393          	xori	t2,a0,3
1c00a2e4:	00751913          	slli	s2,a0,0x7
1c00a2e8:	01996933          	or	s2,s2,s9
1c00a2ec:	93be                	add	t2,t2,a5
1c00a2ee:	0123c3b3          	xor	t2,t2,s2
1c00a2f2:	959e                	add	a1,a1,t2
1c00a2f4:	0175dc93          	srli	s9,a1,0x17
1c00a2f8:	0055c393          	xori	t2,a1,5
1c00a2fc:	00959913          	slli	s2,a1,0x9
1c00a300:	01996933          	or	s2,s2,s9
1c00a304:	93be                	add	t2,t2,a5
1c00a306:	0123c3b3          	xor	t2,t2,s2
1c00a30a:	961e                	add	a2,a2,t2
1c00a30c:	00864393          	xori	t2,a2,8
1c00a310:	00d61913          	slli	s2,a2,0xd
1c00a314:	01365c93          	srli	s9,a2,0x13
1c00a318:	93be                	add	t2,t2,a5
1c00a31a:	01996933          	or	s2,s2,s9
1c00a31e:	0123c3b3          	xor	t2,t2,s2
1c00a322:	969e                	add	a3,a3,t2
1c00a324:	edb79ee3          	bne	a5,s11,1c00a200 <randombytes+0x134>
1c00a328:	43e2                	lw	t2,24(sp)
1c00a32a:	01cc4c33          	xor	s8,s8,t3
1c00a32e:	006d4d33          	xor	s10,s10,t1
1c00a332:	011bcbb3          	xor	s7,s7,a7
1c00a336:	010b4b33          	xor	s6,s6,a6
1c00a33a:	00aacab3          	xor	s5,s5,a0
1c00a33e:	00ba4a33          	xor	s4,s4,a1
1c00a342:	00c9c9b3          	xor	s3,s3,a2
1c00a346:	8cb5                	xor	s1,s1,a3
1c00a348:	ea7799e3          	bne	a5,t2,1c00a1fa <randombytes+0x12e>
1c00a34c:	4df2                	lw	s11,28(sp)
1c00a34e:	01842023          	sw	s8,0(s0)
1c00a352:	01a42223          	sw	s10,4(s0)
1c00a356:	01742423          	sw	s7,8(s0)
1c00a35a:	01642623          	sw	s6,12(s0)
1c00a35e:	01542823          	sw	s5,16(s0)
1c00a362:	01442a23          	sw	s4,20(s0)
1c00a366:	01342c23          	sw	s3,24(s0)
1c00a36a:	cc44                	sw	s1,28(s0)
1c00a36c:	479d                	li	a5,7
1c00a36e:	b3e9                	j	1c00a138 <randombytes+0x6c>
1c00a370:	8082                	ret

1c00a372 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00a372:	777d                	lui	a4,0xfffff
1c00a374:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00a378:	02f507b3          	mul	a5,a0,a5
1c00a37c:	2ff70713          	addi	a4,a4,767
1c00a380:	07c2                	slli	a5,a5,0x10
1c00a382:	87c1                	srai	a5,a5,0x10
1c00a384:	02e787b3          	mul	a5,a5,a4
1c00a388:	953e                	add	a0,a0,a5
1c00a38a:	8541                	srai	a0,a0,0x10
1c00a38c:	8082                	ret

1c00a38e <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00a38e:	6795                	lui	a5,0x5
1c00a390:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a394:	02f507b3          	mul	a5,a0,a5
1c00a398:	02000737          	lui	a4,0x2000
1c00a39c:	97ba                	add	a5,a5,a4
1c00a39e:	6705                	lui	a4,0x1
1c00a3a0:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a3a4:	87e9                	srai	a5,a5,0x1a
1c00a3a6:	02e787b3          	mul	a5,a5,a4
1c00a3aa:	8d1d                	sub	a0,a0,a5
1c00a3ac:	0542                	slli	a0,a0,0x10
1c00a3ae:	8541                	srai	a0,a0,0x10
1c00a3b0:	8082                	ret

1c00a3b2 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00a3b2:	7139                	addi	sp,sp,-64
1c00a3b4:	da26                	sw	s1,52(sp)
1c00a3b6:	d84a                	sw	s2,48(sp)
1c00a3b8:	84b2                	mv	s1,a2
1c00a3ba:	892a                	mv	s2,a0
1c00a3bc:	02000613          	li	a2,32
1c00a3c0:	0068                	addi	a0,sp,12
1c00a3c2:	de06                	sw	ra,60(sp)
1c00a3c4:	dc22                	sw	s0,56(sp)
1c00a3c6:	8436                	mv	s0,a3
1c00a3c8:	2219                	jal	1c00a4ce <memcpy>
1c00a3ca:	006c                	addi	a1,sp,12
1c00a3cc:	854a                	mv	a0,s2
1c00a3ce:	02200613          	li	a2,34
1c00a3d2:	02910623          	sb	s1,44(sp)
1c00a3d6:	028106a3          	sb	s0,45(sp)
1c00a3da:	b46fe0ef          	jal	ra,1c008720 <shake128_absorb>
1c00a3de:	50f2                	lw	ra,60(sp)
1c00a3e0:	5462                	lw	s0,56(sp)
1c00a3e2:	54d2                	lw	s1,52(sp)
1c00a3e4:	5942                	lw	s2,48(sp)
1c00a3e6:	6121                	addi	sp,sp,64
1c00a3e8:	8082                	ret

1c00a3ea <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00a3ea:	7139                	addi	sp,sp,-64
1c00a3ec:	87b2                	mv	a5,a2
1c00a3ee:	da26                	sw	s1,52(sp)
1c00a3f0:	d84a                	sw	s2,48(sp)
1c00a3f2:	84aa                	mv	s1,a0
1c00a3f4:	892e                	mv	s2,a1
1c00a3f6:	02000613          	li	a2,32
1c00a3fa:	85be                	mv	a1,a5
1c00a3fc:	0068                	addi	a0,sp,12
1c00a3fe:	de06                	sw	ra,60(sp)
1c00a400:	dc22                	sw	s0,56(sp)
1c00a402:	8436                	mv	s0,a3
1c00a404:	20e9                	jal	1c00a4ce <memcpy>
1c00a406:	0070                	addi	a2,sp,12
1c00a408:	85ca                	mv	a1,s2
1c00a40a:	8526                	mv	a0,s1
1c00a40c:	02100693          	li	a3,33
1c00a410:	02810623          	sb	s0,44(sp)
1c00a414:	df6fe0ef          	jal	ra,1c008a0a <shake256>
1c00a418:	50f2                	lw	ra,60(sp)
1c00a41a:	5462                	lw	s0,56(sp)
1c00a41c:	54d2                	lw	s1,52(sp)
1c00a41e:	5942                	lw	s2,48(sp)
1c00a420:	6121                	addi	sp,sp,64
1c00a422:	8082                	ret

1c00a424 <pos_wait_forever>:
1c00a424:	f14027f3          	csrr	a5,mhartid
1c00a428:	8795                	srai	a5,a5,0x5
1c00a42a:	03f7f793          	andi	a5,a5,63
1c00a42e:	477d                	li	a4,31
1c00a430:	00e78363          	beq	a5,a4,1c00a436 <pos_wait_forever+0x12>
1c00a434:	a001                	j	1c00a434 <pos_wait_forever+0x10>
1c00a436:	1a10a7b7          	lui	a5,0x1a10a
1c00a43a:	577d                	li	a4,-1
1c00a43c:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a440:	10500073          	wfi
1c00a444:	10500073          	wfi
1c00a448:	bfe5                	j	1c00a440 <pos_wait_forever+0x1c>

1c00a44a <memset>:
1c00a44a:	fff60e13          	addi	t3,a2,-1
1c00a44e:	ce25                	beqz	a2,1c00a4c6 <memset+0x7c>
1c00a450:	4789                	li	a5,2
1c00a452:	0ff5f593          	andi	a1,a1,255
1c00a456:	07c7fa63          	bgeu	a5,t3,1c00a4ca <memset+0x80>
1c00a45a:	00859793          	slli	a5,a1,0x8
1c00a45e:	8fcd                	or	a5,a5,a1
1c00a460:	01059713          	slli	a4,a1,0x10
1c00a464:	8f5d                	or	a4,a4,a5
1c00a466:	01859693          	slli	a3,a1,0x18
1c00a46a:	8ed9                	or	a3,a3,a4
1c00a46c:	0086d313          	srli	t1,a3,0x8
1c00a470:	0106d893          	srli	a7,a3,0x10
1c00a474:	ffc67813          	andi	a6,a2,-4
1c00a478:	87aa                	mv	a5,a0
1c00a47a:	982a                	add	a6,a6,a0
1c00a47c:	0ff77713          	andi	a4,a4,255
1c00a480:	82e1                	srli	a3,a3,0x18
1c00a482:	0ff37313          	andi	t1,t1,255
1c00a486:	0ff8f893          	andi	a7,a7,255
1c00a48a:	00e78023          	sb	a4,0(a5)
1c00a48e:	006780a3          	sb	t1,1(a5)
1c00a492:	01178123          	sb	a7,2(a5)
1c00a496:	00d781a3          	sb	a3,3(a5)
1c00a49a:	0791                	addi	a5,a5,4
1c00a49c:	ff0797e3          	bne	a5,a6,1c00a48a <memset+0x40>
1c00a4a0:	ffc67793          	andi	a5,a2,-4
1c00a4a4:	00f50733          	add	a4,a0,a5
1c00a4a8:	40fe0e33          	sub	t3,t3,a5
1c00a4ac:	00f60e63          	beq	a2,a5,1c00a4c8 <memset+0x7e>
1c00a4b0:	00b70023          	sb	a1,0(a4)
1c00a4b4:	000e0963          	beqz	t3,1c00a4c6 <memset+0x7c>
1c00a4b8:	00b700a3          	sb	a1,1(a4)
1c00a4bc:	4785                	li	a5,1
1c00a4be:	00fe0463          	beq	t3,a5,1c00a4c6 <memset+0x7c>
1c00a4c2:	00b70123          	sb	a1,2(a4)
1c00a4c6:	8082                	ret
1c00a4c8:	8082                	ret
1c00a4ca:	872a                	mv	a4,a0
1c00a4cc:	b7d5                	j	1c00a4b0 <memset+0x66>

1c00a4ce <memcpy>:
1c00a4ce:	00c5e7b3          	or	a5,a1,a2
1c00a4d2:	8fc9                	or	a5,a5,a0
1c00a4d4:	8b8d                	andi	a5,a5,3
1c00a4d6:	872e                	mv	a4,a1
1c00a4d8:	882a                	mv	a6,a0
1c00a4da:	cbc5                	beqz	a5,1c00a58a <memcpy+0xbc>
1c00a4dc:	c279                	beqz	a2,1c00a5a2 <memcpy+0xd4>
1c00a4de:	00350793          	addi	a5,a0,3
1c00a4e2:	8f8d                	sub	a5,a5,a1
1c00a4e4:	0077b793          	sltiu	a5,a5,7
1c00a4e8:	e7d1                	bnez	a5,1c00a574 <memcpy+0xa6>
1c00a4ea:	fff60793          	addi	a5,a2,-1
1c00a4ee:	0047b793          	sltiu	a5,a5,4
1c00a4f2:	e3c9                	bnez	a5,1c00a574 <memcpy+0xa6>
1c00a4f4:	ffc67e13          	andi	t3,a2,-4
1c00a4f8:	9e2e                	add	t3,t3,a1
1c00a4fa:	00174883          	lbu	a7,1(a4)
1c00a4fe:	00074303          	lbu	t1,0(a4)
1c00a502:	00274683          	lbu	a3,2(a4)
1c00a506:	00374783          	lbu	a5,3(a4)
1c00a50a:	08a2                	slli	a7,a7,0x8
1c00a50c:	0068e8b3          	or	a7,a7,t1
1c00a510:	06c2                	slli	a3,a3,0x10
1c00a512:	0116e6b3          	or	a3,a3,a7
1c00a516:	07e2                	slli	a5,a5,0x18
1c00a518:	8fd5                	or	a5,a5,a3
1c00a51a:	0087d313          	srli	t1,a5,0x8
1c00a51e:	0107d893          	srli	a7,a5,0x10
1c00a522:	83e1                	srli	a5,a5,0x18
1c00a524:	00d80023          	sb	a3,0(a6)
1c00a528:	006800a3          	sb	t1,1(a6)
1c00a52c:	01180123          	sb	a7,2(a6)
1c00a530:	00f801a3          	sb	a5,3(a6)
1c00a534:	0711                	addi	a4,a4,4
1c00a536:	0811                	addi	a6,a6,4
1c00a538:	fdc711e3          	bne	a4,t3,1c00a4fa <memcpy+0x2c>
1c00a53c:	ffc67793          	andi	a5,a2,-4
1c00a540:	00367693          	andi	a3,a2,3
1c00a544:	00f50733          	add	a4,a0,a5
1c00a548:	95be                	add	a1,a1,a5
1c00a54a:	02f60f63          	beq	a2,a5,1c00a588 <memcpy+0xba>
1c00a54e:	0005c603          	lbu	a2,0(a1)
1c00a552:	fff68793          	addi	a5,a3,-1
1c00a556:	00c70023          	sb	a2,0(a4)
1c00a55a:	c79d                	beqz	a5,1c00a588 <memcpy+0xba>
1c00a55c:	0015c603          	lbu	a2,1(a1)
1c00a560:	4789                	li	a5,2
1c00a562:	00c700a3          	sb	a2,1(a4)
1c00a566:	02f68163          	beq	a3,a5,1c00a588 <memcpy+0xba>
1c00a56a:	0025c783          	lbu	a5,2(a1)
1c00a56e:	00f70123          	sb	a5,2(a4)
1c00a572:	8082                	ret
1c00a574:	962e                	add	a2,a2,a1
1c00a576:	87aa                	mv	a5,a0
1c00a578:	0005c703          	lbu	a4,0(a1)
1c00a57c:	0585                	addi	a1,a1,1
1c00a57e:	0785                	addi	a5,a5,1
1c00a580:	fee78fa3          	sb	a4,-1(a5)
1c00a584:	fec59ae3          	bne	a1,a2,1c00a578 <memcpy+0xaa>
1c00a588:	8082                	ret
1c00a58a:	de7d                	beqz	a2,1c00a588 <memcpy+0xba>
1c00a58c:	87aa                	mv	a5,a0
1c00a58e:	4194                	lw	a3,0(a1)
1c00a590:	0791                	addi	a5,a5,4
1c00a592:	40c78733          	sub	a4,a5,a2
1c00a596:	fed7ae23          	sw	a3,-4(a5)
1c00a59a:	0591                	addi	a1,a1,4
1c00a59c:	fea719e3          	bne	a4,a0,1c00a58e <memcpy+0xc0>
1c00a5a0:	8082                	ret
1c00a5a2:	8082                	ret

1c00a5a4 <memmove>:
1c00a5a4:	40b507b3          	sub	a5,a0,a1
1c00a5a8:	0ac7e063          	bltu	a5,a2,1c00a648 <memmove+0xa4>
1c00a5ac:	c661                	beqz	a2,1c00a674 <memmove+0xd0>
1c00a5ae:	00350793          	addi	a5,a0,3
1c00a5b2:	8f8d                	sub	a5,a5,a1
1c00a5b4:	0077b793          	sltiu	a5,a5,7
1c00a5b8:	e3dd                	bnez	a5,1c00a65e <memmove+0xba>
1c00a5ba:	fff60793          	addi	a5,a2,-1
1c00a5be:	0047b793          	sltiu	a5,a5,4
1c00a5c2:	efd1                	bnez	a5,1c00a65e <memmove+0xba>
1c00a5c4:	ffc67e13          	andi	t3,a2,-4
1c00a5c8:	872e                	mv	a4,a1
1c00a5ca:	882a                	mv	a6,a0
1c00a5cc:	9e2e                	add	t3,t3,a1
1c00a5ce:	00174883          	lbu	a7,1(a4)
1c00a5d2:	00074303          	lbu	t1,0(a4)
1c00a5d6:	00274683          	lbu	a3,2(a4)
1c00a5da:	00374783          	lbu	a5,3(a4)
1c00a5de:	08a2                	slli	a7,a7,0x8
1c00a5e0:	0068e8b3          	or	a7,a7,t1
1c00a5e4:	06c2                	slli	a3,a3,0x10
1c00a5e6:	0116e6b3          	or	a3,a3,a7
1c00a5ea:	07e2                	slli	a5,a5,0x18
1c00a5ec:	8fd5                	or	a5,a5,a3
1c00a5ee:	0087d313          	srli	t1,a5,0x8
1c00a5f2:	0107d893          	srli	a7,a5,0x10
1c00a5f6:	83e1                	srli	a5,a5,0x18
1c00a5f8:	00d80023          	sb	a3,0(a6)
1c00a5fc:	006800a3          	sb	t1,1(a6)
1c00a600:	01180123          	sb	a7,2(a6)
1c00a604:	00f801a3          	sb	a5,3(a6)
1c00a608:	0711                	addi	a4,a4,4
1c00a60a:	0811                	addi	a6,a6,4
1c00a60c:	fdc711e3          	bne	a4,t3,1c00a5ce <memmove+0x2a>
1c00a610:	ffc67793          	andi	a5,a2,-4
1c00a614:	00367693          	andi	a3,a2,3
1c00a618:	00f50733          	add	a4,a0,a5
1c00a61c:	95be                	add	a1,a1,a5
1c00a61e:	04f60a63          	beq	a2,a5,1c00a672 <memmove+0xce>
1c00a622:	0005c603          	lbu	a2,0(a1)
1c00a626:	fff68793          	addi	a5,a3,-1
1c00a62a:	00c70023          	sb	a2,0(a4)
1c00a62e:	c3b1                	beqz	a5,1c00a672 <memmove+0xce>
1c00a630:	0015c603          	lbu	a2,1(a1)
1c00a634:	4789                	li	a5,2
1c00a636:	00c700a3          	sb	a2,1(a4)
1c00a63a:	02f68c63          	beq	a3,a5,1c00a672 <memmove+0xce>
1c00a63e:	0025c783          	lbu	a5,2(a1)
1c00a642:	00f70123          	sb	a5,2(a4)
1c00a646:	8082                	ret
1c00a648:	167d                	addi	a2,a2,-1
1c00a64a:	00c587b3          	add	a5,a1,a2
1c00a64e:	0007c703          	lbu	a4,0(a5)
1c00a652:	00c507b3          	add	a5,a0,a2
1c00a656:	00e78023          	sb	a4,0(a5)
1c00a65a:	f67d                	bnez	a2,1c00a648 <memmove+0xa4>
1c00a65c:	8082                	ret
1c00a65e:	962a                	add	a2,a2,a0
1c00a660:	87aa                	mv	a5,a0
1c00a662:	0005c703          	lbu	a4,0(a1)
1c00a666:	0785                	addi	a5,a5,1
1c00a668:	0585                	addi	a1,a1,1
1c00a66a:	fee78fa3          	sb	a4,-1(a5)
1c00a66e:	fec79ae3          	bne	a5,a2,1c00a662 <memmove+0xbe>
1c00a672:	8082                	ret
1c00a674:	8082                	ret

1c00a676 <strchr>:
1c00a676:	00054703          	lbu	a4,0(a0)
1c00a67a:	0ff5f593          	andi	a1,a1,255
1c00a67e:	87aa                	mv	a5,a0
1c00a680:	00b70863          	beq	a4,a1,1c00a690 <strchr+0x1a>
1c00a684:	cb01                	beqz	a4,1c00a694 <strchr+0x1e>
1c00a686:	0017c703          	lbu	a4,1(a5)
1c00a68a:	0785                	addi	a5,a5,1
1c00a68c:	feb71ce3          	bne	a4,a1,1c00a684 <strchr+0xe>
1c00a690:	853e                	mv	a0,a5
1c00a692:	8082                	ret
1c00a694:	4501                	li	a0,0
1c00a696:	dded                	beqz	a1,1c00a690 <strchr+0x1a>
1c00a698:	8082                	ret

1c00a69a <puts>:
1c00a69a:	00054783          	lbu	a5,0(a0)
1c00a69e:	c78d                	beqz	a5,1c00a6c8 <puts+0x2e>
1c00a6a0:	f14026f3          	csrr	a3,mhartid
1c00a6a4:	00369713          	slli	a4,a3,0x3
1c00a6a8:	1a10f637          	lui	a2,0x1a10f
1c00a6ac:	0ff77713          	andi	a4,a4,255
1c00a6b0:	9732                	add	a4,a4,a2
1c00a6b2:	6609                	lui	a2,0x2
1c00a6b4:	068a                	slli	a3,a3,0x2
1c00a6b6:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a6ba:	8ef1                	and	a3,a3,a2
1c00a6bc:	9736                	add	a4,a4,a3
1c00a6be:	c31c                	sw	a5,0(a4)
1c00a6c0:	00154783          	lbu	a5,1(a0)
1c00a6c4:	0505                	addi	a0,a0,1
1c00a6c6:	ffe5                	bnez	a5,1c00a6be <puts+0x24>
1c00a6c8:	f1402773          	csrr	a4,mhartid
1c00a6cc:	00371793          	slli	a5,a4,0x3
1c00a6d0:	1a10f6b7          	lui	a3,0x1a10f
1c00a6d4:	0ff7f793          	andi	a5,a5,255
1c00a6d8:	97b6                	add	a5,a5,a3
1c00a6da:	6689                	lui	a3,0x2
1c00a6dc:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a6e0:	070a                	slli	a4,a4,0x2
1c00a6e2:	8f75                	and	a4,a4,a3
1c00a6e4:	97ba                	add	a5,a5,a4
1c00a6e6:	4729                	li	a4,10
1c00a6e8:	c398                	sw	a4,0(a5)
1c00a6ea:	4501                	li	a0,0
1c00a6ec:	8082                	ret

1c00a6ee <pos_libc_fputc_locked>:
1c00a6ee:	6689                	lui	a3,0x2
1c00a6f0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a6f4:	f14027f3          	csrr	a5,mhartid
1c00a6f8:	00379713          	slli	a4,a5,0x3
1c00a6fc:	078a                	slli	a5,a5,0x2
1c00a6fe:	8ff5                	and	a5,a5,a3
1c00a700:	0ff77713          	andi	a4,a4,255
1c00a704:	1a10f6b7          	lui	a3,0x1a10f
1c00a708:	9736                	add	a4,a4,a3
1c00a70a:	97ba                	add	a5,a5,a4
1c00a70c:	0ff57513          	andi	a0,a0,255
1c00a710:	c388                	sw	a0,0(a5)
1c00a712:	4501                	li	a0,0
1c00a714:	8082                	ret

1c00a716 <putchar>:
1c00a716:	6689                	lui	a3,0x2
1c00a718:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a71c:	f14027f3          	csrr	a5,mhartid
1c00a720:	00379713          	slli	a4,a5,0x3
1c00a724:	078a                	slli	a5,a5,0x2
1c00a726:	8ff5                	and	a5,a5,a3
1c00a728:	0ff77713          	andi	a4,a4,255
1c00a72c:	1a10f6b7          	lui	a3,0x1a10f
1c00a730:	9736                	add	a4,a4,a3
1c00a732:	97ba                	add	a5,a5,a4
1c00a734:	0ff57513          	andi	a0,a0,255
1c00a738:	c388                	sw	a0,0(a5)
1c00a73a:	4501                	li	a0,0
1c00a73c:	8082                	ret

1c00a73e <pos_libc_prf_locked>:
1c00a73e:	a0b1                	j	1c00a78a <pos_libc_prf>

1c00a740 <exit>:
1c00a740:	800007b7          	lui	a5,0x80000
1c00a744:	1141                	addi	sp,sp,-16
1c00a746:	8d5d                	or	a0,a0,a5
1c00a748:	c606                	sw	ra,12(sp)
1c00a74a:	1a1047b7          	lui	a5,0x1a104
1c00a74e:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a752:	39c9                	jal	1c00a424 <pos_wait_forever>

1c00a754 <pos_io_start>:
1c00a754:	4501                	li	a0,0
1c00a756:	8082                	ret

1c00a758 <pos_io_stop>:
1c00a758:	4501                	li	a0,0
1c00a75a:	8082                	ret

1c00a75c <printf>:
1c00a75c:	7139                	addi	sp,sp,-64
1c00a75e:	02410313          	addi	t1,sp,36
1c00a762:	d432                	sw	a2,40(sp)
1c00a764:	862a                	mv	a2,a0
1c00a766:	1c00a537          	lui	a0,0x1c00a
1c00a76a:	d22e                	sw	a1,36(sp)
1c00a76c:	d636                	sw	a3,44(sp)
1c00a76e:	4589                	li	a1,2
1c00a770:	869a                	mv	a3,t1
1c00a772:	6ee50513          	addi	a0,a0,1774 # 1c00a6ee <pos_libc_fputc_locked>
1c00a776:	ce06                	sw	ra,28(sp)
1c00a778:	d83a                	sw	a4,48(sp)
1c00a77a:	da3e                	sw	a5,52(sp)
1c00a77c:	dc42                	sw	a6,56(sp)
1c00a77e:	de46                	sw	a7,60(sp)
1c00a780:	c61a                	sw	t1,12(sp)
1c00a782:	3f75                	jal	1c00a73e <pos_libc_prf_locked>
1c00a784:	40f2                	lw	ra,28(sp)
1c00a786:	6121                	addi	sp,sp,64
1c00a788:	8082                	ret

1c00a78a <pos_libc_prf>:
1c00a78a:	7169                	addi	sp,sp,-304
1c00a78c:	12112623          	sw	ra,300(sp)
1c00a790:	12812423          	sw	s0,296(sp)
1c00a794:	12912223          	sw	s1,292(sp)
1c00a798:	13212023          	sw	s2,288(sp)
1c00a79c:	11312e23          	sw	s3,284(sp)
1c00a7a0:	11412c23          	sw	s4,280(sp)
1c00a7a4:	11512a23          	sw	s5,276(sp)
1c00a7a8:	11612823          	sw	s6,272(sp)
1c00a7ac:	11712623          	sw	s7,268(sp)
1c00a7b0:	11812423          	sw	s8,264(sp)
1c00a7b4:	11912223          	sw	s9,260(sp)
1c00a7b8:	11a12023          	sw	s10,256(sp)
1c00a7bc:	dfee                	sw	s11,252(sp)
1c00a7be:	00064783          	lbu	a5,0(a2)
1c00a7c2:	c636                	sw	a3,12(sp)
1c00a7c4:	3c0781e3          	beqz	a5,1c00b386 <pos_libc_prf+0xbfc>
1c00a7c8:	7741                	lui	a4,0xffff0
1c00a7ca:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a7ce:	cc3a                	sw	a4,24(sp)
1c00a7d0:	10000737          	lui	a4,0x10000
1c00a7d4:	177d                	addi	a4,a4,-1
1c00a7d6:	8caa                	mv	s9,a0
1c00a7d8:	84ae                	mv	s1,a1
1c00a7da:	00160c13          	addi	s8,a2,1
1c00a7de:	4401                	li	s0,0
1c00a7e0:	1c000d37          	lui	s10,0x1c000
1c00a7e4:	ca3a                	sw	a4,20(sp)
1c00a7e6:	853e                	mv	a0,a5
1c00a7e8:	02500793          	li	a5,37
1c00a7ec:	04f50863          	beq	a0,a5,1c00a83c <pos_libc_prf+0xb2>
1c00a7f0:	85a6                	mv	a1,s1
1c00a7f2:	9c82                	jalr	s9
1c00a7f4:	57fd                	li	a5,-1
1c00a7f6:	4cf50b63          	beq	a0,a5,1c00accc <pos_libc_prf+0x542>
1c00a7fa:	0405                	addi	s0,s0,1
1c00a7fc:	000c4503          	lbu	a0,0(s8)
1c00a800:	0c05                	addi	s8,s8,1
1c00a802:	f17d                	bnez	a0,1c00a7e8 <pos_libc_prf+0x5e>
1c00a804:	12c12083          	lw	ra,300(sp)
1c00a808:	8522                	mv	a0,s0
1c00a80a:	12812403          	lw	s0,296(sp)
1c00a80e:	12412483          	lw	s1,292(sp)
1c00a812:	12012903          	lw	s2,288(sp)
1c00a816:	11c12983          	lw	s3,284(sp)
1c00a81a:	11812a03          	lw	s4,280(sp)
1c00a81e:	11412a83          	lw	s5,276(sp)
1c00a822:	11012b03          	lw	s6,272(sp)
1c00a826:	10c12b83          	lw	s7,268(sp)
1c00a82a:	10812c03          	lw	s8,264(sp)
1c00a82e:	10412c83          	lw	s9,260(sp)
1c00a832:	10012d03          	lw	s10,256(sp)
1c00a836:	5dfe                	lw	s11,252(sp)
1c00a838:	6155                	addi	sp,sp,304
1c00a83a:	8082                	ret
1c00a83c:	8de2                	mv	s11,s8
1c00a83e:	000dcc03          	lbu	s8,0(s11)
1c00a842:	334d0513          	addi	a0,s10,820 # 1c000334 <PQCLEAN_KYBER768_CLEAN_zetas+0x168>
1c00a846:	c826                	sw	s1,16(sp)
1c00a848:	85e2                	mv	a1,s8
1c00a84a:	c202                	sw	zero,4(sp)
1c00a84c:	c402                	sw	zero,8(sp)
1c00a84e:	c002                	sw	zero,0(sp)
1c00a850:	001d8493          	addi	s1,s11,1
1c00a854:	350d                	jal	1c00a676 <strchr>
1c00a856:	02000913          	li	s2,32
1c00a85a:	4b81                	li	s7,0
1c00a85c:	02b00993          	li	s3,43
1c00a860:	02d00b13          	li	s6,45
1c00a864:	03000a93          	li	s5,48
1c00a868:	02000a13          	li	s4,32
1c00a86c:	8626                	mv	a2,s1
1c00a86e:	c51d                	beqz	a0,1c00a89c <pos_libc_prf+0x112>
1c00a870:	413c0e63          	beq	s8,s3,1c00ac8c <pos_libc_prf+0x502>
1c00a874:	3f89ec63          	bltu	s3,s8,1c00ac6c <pos_libc_prf+0x4e2>
1c00a878:	414c0663          	beq	s8,s4,1c00ac84 <pos_libc_prf+0x4fa>
1c00a87c:	02300793          	li	a5,35
1c00a880:	3efc1363          	bne	s8,a5,1c00ac66 <pos_libc_prf+0x4dc>
1c00a884:	4b85                	li	s7,1
1c00a886:	8da6                	mv	s11,s1
1c00a888:	000dcc03          	lbu	s8,0(s11)
1c00a88c:	334d0513          	addi	a0,s10,820
1c00a890:	001d8493          	addi	s1,s11,1
1c00a894:	85e2                	mv	a1,s8
1c00a896:	33c5                	jal	1c00a676 <strchr>
1c00a898:	8626                	mv	a2,s1
1c00a89a:	f979                	bnez	a0,1c00a870 <pos_libc_prf+0xe6>
1c00a89c:	87e2                	mv	a5,s8
1c00a89e:	ce5e                	sw	s7,28(sp)
1c00a8a0:	02a00693          	li	a3,42
1c00a8a4:	8c6e                	mv	s8,s11
1c00a8a6:	8ba6                	mv	s7,s1
1c00a8a8:	8dbe                	mv	s11,a5
1c00a8aa:	44c2                	lw	s1,16(sp)
1c00a8ac:	42d78263          	beq	a5,a3,1c00acd0 <pos_libc_prf+0x546>
1c00a8b0:	fd078693          	addi	a3,a5,-48
1c00a8b4:	4525                	li	a0,9
1c00a8b6:	4a01                	li	s4,0
1c00a8b8:	3cd57f63          	bgeu	a0,a3,1c00ac96 <pos_libc_prf+0x50c>
1c00a8bc:	02e00793          	li	a5,46
1c00a8c0:	5afd                	li	s5,-1
1c00a8c2:	74fd8363          	beq	s11,a5,1c00b008 <pos_libc_prf+0x87e>
1c00a8c6:	1c0007b7          	lui	a5,0x1c000
1c00a8ca:	85ee                	mv	a1,s11
1c00a8cc:	33c78513          	addi	a0,a5,828 # 1c00033c <PQCLEAN_KYBER768_CLEAN_zetas+0x170>
1c00a8d0:	c832                	sw	a2,16(sp)
1c00a8d2:	3355                	jal	1c00a676 <strchr>
1c00a8d4:	4642                	lw	a2,16(sp)
1c00a8d6:	8c32                	mv	s8,a2
1c00a8d8:	c509                	beqz	a0,1c00a8e2 <pos_libc_prf+0x158>
1c00a8da:	00064d83          	lbu	s11,0(a2)
1c00a8de:	00160c13          	addi	s8,a2,1
1c00a8e2:	06900793          	li	a5,105
1c00a8e6:	0afd8ee3          	beq	s11,a5,1c00b1a2 <pos_libc_prf+0xa18>
1c00a8ea:	4db7c763          	blt	a5,s11,1c00adb8 <pos_libc_prf+0x62e>
1c00a8ee:	05800793          	li	a5,88
1c00a8f2:	4efd8163          	beq	s11,a5,1c00add4 <pos_libc_prf+0x64a>
1c00a8f6:	41b7c163          	blt	a5,s11,1c00acf8 <pos_libc_prf+0x56e>
1c00a8fa:	02500793          	li	a5,37
1c00a8fe:	26fd8ae3          	beq	s11,a5,1c00b372 <pos_libc_prf+0xbe8>
1c00a902:	3fb7d863          	bge	a5,s11,1c00acf2 <pos_libc_prf+0x568>
1c00a906:	fbbd8793          	addi	a5,s11,-69
1c00a90a:	4689                	li	a3,2
1c00a90c:	eef6e8e3          	bltu	a3,a5,1c00a7fc <pos_libc_prf+0x72>
1c00a910:	47b2                	lw	a5,12(sp)
1c00a912:	7ff00893          	li	a7,2047
1c00a916:	00778b13          	addi	s6,a5,7
1c00a91a:	ff8b7b13          	andi	s6,s6,-8
1c00a91e:	004b2783          	lw	a5,4(s6)
1c00a922:	000b2603          	lw	a2,0(s6)
1c00a926:	0b21                	addi	s6,s6,8
1c00a928:	00b79693          	slli	a3,a5,0xb
1c00a92c:	01565513          	srli	a0,a2,0x15
1c00a930:	8ec9                	or	a3,a3,a0
1c00a932:	0147d813          	srli	a6,a5,0x14
1c00a936:	0686                	slli	a3,a3,0x1
1c00a938:	7ff87813          	andi	a6,a6,2047
1c00a93c:	0016d513          	srli	a0,a3,0x1
1c00a940:	00b61313          	slli	t1,a2,0xb
1c00a944:	86be                	mv	a3,a5
1c00a946:	41180263          	beq	a6,a7,1c00ad4a <pos_libc_prf+0x5c0>
1c00a94a:	04600793          	li	a5,70
1c00a94e:	00fd9463          	bne	s11,a5,1c00a956 <pos_libc_prf+0x1cc>
1c00a952:	06600d93          	li	s11,102
1c00a956:	006867b3          	or	a5,a6,t1
1c00a95a:	00a7e8b3          	or	a7,a5,a0
1c00a95e:	862a                	mv	a2,a0
1c00a960:	340885e3          	beqz	a7,1c00b4aa <pos_libc_prf+0xd20>
1c00a964:	80000637          	lui	a2,0x80000
1c00a968:	c0280813          	addi	a6,a6,-1022
1c00a96c:	879a                	mv	a5,t1
1c00a96e:	8e49                	or	a2,a2,a0
1c00a970:	4606c7e3          	bltz	a3,1c00b5de <pos_libc_prf+0xe54>
1c00a974:	4722                	lw	a4,8(sp)
1c00a976:	480708e3          	beqz	a4,1c00b606 <pos_libc_prf+0xe7c>
1c00a97a:	02b00693          	li	a3,43
1c00a97e:	02d10223          	sb	a3,36(sp)
1c00a982:	02510f13          	addi	t5,sp,37
1c00a986:	56f9                	li	a3,-2
1c00a988:	4301                	li	t1,0
1c00a98a:	06d85663          	bge	a6,a3,1c00a9f6 <pos_libc_prf+0x26c>
1c00a98e:	333338b7          	lui	a7,0x33333
1c00a992:	80000e37          	lui	t3,0x80000
1c00a996:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00a99a:	fffe4e13          	not	t3,t3
1c00a99e:	5ef9                	li	t4,-2
1c00a9a0:	01f61593          	slli	a1,a2,0x1f
1c00a9a4:	0017d693          	srli	a3,a5,0x1
1c00a9a8:	0017f713          	andi	a4,a5,1
1c00a9ac:	8ecd                	or	a3,a3,a1
1c00a9ae:	00d707b3          	add	a5,a4,a3
1c00a9b2:	00e7b733          	sltu	a4,a5,a4
1c00a9b6:	8205                	srli	a2,a2,0x1
1c00a9b8:	963a                	add	a2,a2,a4
1c00a9ba:	8742                	mv	a4,a6
1c00a9bc:	0805                	addi	a6,a6,1
1c00a9be:	fec8e1e3          	bltu	a7,a2,1c00a9a0 <pos_libc_prf+0x216>
1c00a9c2:	00279593          	slli	a1,a5,0x2
1c00a9c6:	01e7d513          	srli	a0,a5,0x1e
1c00a9ca:	00261693          	slli	a3,a2,0x2
1c00a9ce:	97ae                	add	a5,a5,a1
1c00a9d0:	8ec9                	or	a3,a3,a0
1c00a9d2:	9636                	add	a2,a2,a3
1c00a9d4:	00b7b5b3          	sltu	a1,a5,a1
1c00a9d8:	962e                	add	a2,a2,a1
1c00a9da:	01f7d693          	srli	a3,a5,0x1f
1c00a9de:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00a9e2:	137d                	addi	t1,t1,-1
1c00a9e4:	01c61763          	bne	a2,t3,1c00a9f2 <pos_libc_prf+0x268>
1c00a9e8:	00170813          	addi	a6,a4,1
1c00a9ec:	0786                	slli	a5,a5,0x1
1c00a9ee:	ffe6e613          	ori	a2,a3,-2
1c00a9f2:	fbd847e3          	blt	a6,t4,1c00a9a0 <pos_libc_prf+0x216>
1c00a9f6:	07005363          	blez	a6,1c00aa5c <pos_libc_prf+0x2d2>
1c00a9fa:	800008b7          	lui	a7,0x80000
1c00a9fe:	4e15                	li	t3,5
1c00aa00:	fff8c893          	not	a7,a7
1c00aa04:	00278693          	addi	a3,a5,2
1c00aa08:	00f6b7b3          	sltu	a5,a3,a5
1c00aa0c:	963e                	add	a2,a2,a5
1c00aa0e:	03c657b3          	divu	a5,a2,t3
1c00aa12:	0036d713          	srli	a4,a3,0x3
1c00aa16:	187d                	addi	a6,a6,-1
1c00aa18:	0305                	addi	t1,t1,1
1c00aa1a:	00279593          	slli	a1,a5,0x2
1c00aa1e:	95be                	add	a1,a1,a5
1c00aa20:	8e0d                	sub	a2,a2,a1
1c00aa22:	0676                	slli	a2,a2,0x1d
1c00aa24:	8f51                	or	a4,a4,a2
1c00aa26:	03c75633          	divu	a2,a4,t3
1c00aa2a:	00361713          	slli	a4,a2,0x3
1c00aa2e:	00561593          	slli	a1,a2,0x5
1c00aa32:	95ba                	add	a1,a1,a4
1c00aa34:	8e8d                	sub	a3,a3,a1
1c00aa36:	03c6d6b3          	divu	a3,a3,t3
1c00aa3a:	8275                	srli	a2,a2,0x1d
1c00aa3c:	963e                	add	a2,a2,a5
1c00aa3e:	00e687b3          	add	a5,a3,a4
1c00aa42:	00d7b6b3          	sltu	a3,a5,a3
1c00aa46:	9636                	add	a2,a2,a3
1c00aa48:	01f7d713          	srli	a4,a5,0x1f
1c00aa4c:	0606                	slli	a2,a2,0x1
1c00aa4e:	8e59                	or	a2,a2,a4
1c00aa50:	0786                	slli	a5,a5,0x1
1c00aa52:	187d                	addi	a6,a6,-1
1c00aa54:	fec8fae3          	bgeu	a7,a2,1c00aa48 <pos_libc_prf+0x2be>
1c00aa58:	fb0046e3          	bgtz	a6,1c00aa04 <pos_libc_prf+0x27a>
1c00aa5c:	4e11                	li	t3,4
1c00aa5e:	01f61693          	slli	a3,a2,0x1f
1c00aa62:	0017d713          	srli	a4,a5,0x1
1c00aa66:	8f55                	or	a4,a4,a3
1c00aa68:	8b85                	andi	a5,a5,1
1c00aa6a:	00e78533          	add	a0,a5,a4
1c00aa6e:	8205                	srli	a2,a2,0x1
1c00aa70:	00f537b3          	sltu	a5,a0,a5
1c00aa74:	00c788b3          	add	a7,a5,a2
1c00aa78:	0805                	addi	a6,a6,1
1c00aa7a:	87aa                	mv	a5,a0
1c00aa7c:	8646                	mv	a2,a7
1c00aa7e:	ffc810e3          	bne	a6,t3,1c00aa5e <pos_libc_prf+0x2d4>
1c00aa82:	06700793          	li	a5,103
1c00aa86:	2a0acee3          	bltz	s5,1c00b542 <pos_libc_prf+0xdb8>
1c00aa8a:	28fd83e3          	beq	s11,a5,1c00b510 <pos_libc_prf+0xd86>
1c00aa8e:	04700793          	li	a5,71
1c00aa92:	26fd8fe3          	beq	s11,a5,1c00b510 <pos_libc_prf+0xd86>
1c00aa96:	06600793          	li	a5,102
1c00aa9a:	2cfd85e3          	beq	s11,a5,1c00b564 <pos_libc_prf+0xdda>
1c00aa9e:	001a8813          	addi	a6,s5,1
1c00aaa2:	47c1                	li	a5,16
1c00aaa4:	0107d363          	bge	a5,a6,1c00aaaa <pos_libc_prf+0x320>
1c00aaa8:	4841                	li	a6,16
1c00aaaa:	187d                	addi	a6,a6,-1
1c00aaac:	4601                	li	a2,0
1c00aaae:	4781                	li	a5,0
1c00aab0:	080006b7          	lui	a3,0x8000
1c00aab4:	4e15                	li	t3,5
1c00aab6:	5efd                	li	t4,-1
1c00aab8:	00278713          	addi	a4,a5,2
1c00aabc:	00f737b3          	sltu	a5,a4,a5
1c00aac0:	97b6                	add	a5,a5,a3
1c00aac2:	03c7dfb3          	divu	t6,a5,t3
1c00aac6:	00375593          	srli	a1,a4,0x3
1c00aaca:	187d                	addi	a6,a6,-1
1c00aacc:	002f9693          	slli	a3,t6,0x2
1c00aad0:	96fe                	add	a3,a3,t6
1c00aad2:	8f95                	sub	a5,a5,a3
1c00aad4:	07f6                	slli	a5,a5,0x1d
1c00aad6:	8ddd                	or	a1,a1,a5
1c00aad8:	03c5d5b3          	divu	a1,a1,t3
1c00aadc:	00359693          	slli	a3,a1,0x3
1c00aae0:	00559793          	slli	a5,a1,0x5
1c00aae4:	97b6                	add	a5,a5,a3
1c00aae6:	8f1d                	sub	a4,a4,a5
1c00aae8:	03c757b3          	divu	a5,a4,t3
1c00aaec:	81f5                	srli	a1,a1,0x1d
1c00aaee:	95fe                	add	a1,a1,t6
1c00aaf0:	96be                	add	a3,a3,a5
1c00aaf2:	00f6b733          	sltu	a4,a3,a5
1c00aaf6:	972e                	add	a4,a4,a1
1c00aaf8:	01f71593          	slli	a1,a4,0x1f
1c00aafc:	0016d793          	srli	a5,a3,0x1
1c00ab00:	8fcd                	or	a5,a5,a1
1c00ab02:	8a85                	andi	a3,a3,1
1c00ab04:	97b6                	add	a5,a5,a3
1c00ab06:	8305                	srli	a4,a4,0x1
1c00ab08:	00d7b6b3          	sltu	a3,a5,a3
1c00ab0c:	96ba                	add	a3,a3,a4
1c00ab0e:	fbd815e3          	bne	a6,t4,1c00aab8 <pos_libc_prf+0x32e>
1c00ab12:	97aa                	add	a5,a5,a0
1c00ab14:	96c6                	add	a3,a3,a7
1c00ab16:	00a7b533          	sltu	a0,a5,a0
1c00ab1a:	00d508b3          	add	a7,a0,a3
1c00ab1e:	f00006b7          	lui	a3,0xf0000
1c00ab22:	0116f6b3          	and	a3,a3,a7
1c00ab26:	c2b5                	beqz	a3,1c00ab8a <pos_libc_prf+0x400>
1c00ab28:	00278813          	addi	a6,a5,2
1c00ab2c:	00f836b3          	sltu	a3,a6,a5
1c00ab30:	98b6                	add	a7,a7,a3
1c00ab32:	4e95                	li	t4,5
1c00ab34:	03d8de33          	divu	t3,a7,t4
1c00ab38:	00385693          	srli	a3,a6,0x3
1c00ab3c:	0305                	addi	t1,t1,1
1c00ab3e:	002e1513          	slli	a0,t3,0x2
1c00ab42:	9572                	add	a0,a0,t3
1c00ab44:	40a888b3          	sub	a7,a7,a0
1c00ab48:	01d89513          	slli	a0,a7,0x1d
1c00ab4c:	8ec9                	or	a3,a3,a0
1c00ab4e:	03d6d6b3          	divu	a3,a3,t4
1c00ab52:	00369513          	slli	a0,a3,0x3
1c00ab56:	00569793          	slli	a5,a3,0x5
1c00ab5a:	97aa                	add	a5,a5,a0
1c00ab5c:	40f807b3          	sub	a5,a6,a5
1c00ab60:	03d7d7b3          	divu	a5,a5,t4
1c00ab64:	82f5                	srli	a3,a3,0x1d
1c00ab66:	96f2                	add	a3,a3,t3
1c00ab68:	953e                	add	a0,a0,a5
1c00ab6a:	00f537b3          	sltu	a5,a0,a5
1c00ab6e:	96be                	add	a3,a3,a5
1c00ab70:	01f69813          	slli	a6,a3,0x1f
1c00ab74:	00155793          	srli	a5,a0,0x1
1c00ab78:	00f867b3          	or	a5,a6,a5
1c00ab7c:	8905                	andi	a0,a0,1
1c00ab7e:	97aa                	add	a5,a5,a0
1c00ab80:	8285                	srli	a3,a3,0x1
1c00ab82:	00a7b533          	sltu	a0,a5,a0
1c00ab86:	00d508b3          	add	a7,a0,a3
1c00ab8a:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00ab8e:	06600693          	li	a3,102
1c00ab92:	884e                	mv	a6,s3
1c00ab94:	4edd8163          	beq	s11,a3,1c00b076 <pos_libc_prf+0x8ec>
1c00ab98:	00279693          	slli	a3,a5,0x2
1c00ab9c:	01e7d513          	srli	a0,a5,0x1e
1c00aba0:	00289e13          	slli	t3,a7,0x2
1c00aba4:	97b6                	add	a5,a5,a3
1c00aba6:	01c56e33          	or	t3,a0,t3
1c00abaa:	00d7b833          	sltu	a6,a5,a3
1c00abae:	011e06b3          	add	a3,t3,a7
1c00abb2:	9836                	add	a6,a6,a3
1c00abb4:	0806                	slli	a6,a6,0x1
1c00abb6:	01f7d693          	srli	a3,a5,0x1f
1c00abba:	0106e833          	or	a6,a3,a6
1c00abbe:	01c85693          	srli	a3,a6,0x1c
1c00abc2:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00abc6:	4772                	lw	a4,28(sp)
1c00abc8:	00af0023          	sb	a0,0(t5)
1c00abcc:	00179513          	slli	a0,a5,0x1
1c00abd0:	47d2                	lw	a5,20(sp)
1c00abd2:	00d036b3          	snez	a3,a3
1c00abd6:	01576bb3          	or	s7,a4,s5
1c00abda:	00f87833          	and	a6,a6,a5
1c00abde:	40d30333          	sub	t1,t1,a3
1c00abe2:	060b8463          	beqz	s7,1c00ac4a <pos_libc_prf+0x4c0>
1c00abe6:	02e00793          	li	a5,46
1c00abea:	00ff00a3          	sb	a5,1(t5)
1c00abee:	002f0993          	addi	s3,t5,2
1c00abf2:	040a8c63          	beqz	s5,1c00ac4a <pos_libc_prf+0x4c0>
1c00abf6:	002a8793          	addi	a5,s5,2
1c00abfa:	9f3e                	add	t5,t5,a5
1c00abfc:	88ce                	mv	a7,s3
1c00abfe:	4ebd                	li	t4,15
1c00ac00:	03000f93          	li	t6,48
1c00ac04:	00251793          	slli	a5,a0,0x2
1c00ac08:	01e55693          	srli	a3,a0,0x1e
1c00ac0c:	00281713          	slli	a4,a6,0x2
1c00ac10:	00a785b3          	add	a1,a5,a0
1c00ac14:	8f55                	or	a4,a4,a3
1c00ac16:	9742                	add	a4,a4,a6
1c00ac18:	00f5b7b3          	sltu	a5,a1,a5
1c00ac1c:	97ba                	add	a5,a5,a4
1c00ac1e:	0786                	slli	a5,a5,0x1
1c00ac20:	01f5d713          	srli	a4,a1,0x1f
1c00ac24:	8fd9                	or	a5,a5,a4
1c00ac26:	01c7d713          	srli	a4,a5,0x1c
1c00ac2a:	03070713          	addi	a4,a4,48
1c00ac2e:	0885                	addi	a7,a7,1
1c00ac30:	53d05763          	blez	t4,1c00b15e <pos_libc_prf+0x9d4>
1c00ac34:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00ac38:	4752                	lw	a4,20(sp)
1c00ac3a:	1efd                	addi	t4,t4,-1
1c00ac3c:	00159513          	slli	a0,a1,0x1
1c00ac40:	00e7f833          	and	a6,a5,a4
1c00ac44:	fd1f10e3          	bne	t5,a7,1c00ac04 <pos_libc_prf+0x47a>
1c00ac48:	99d6                	add	s3,s3,s5
1c00ac4a:	4e061c63          	bnez	a2,1c00b142 <pos_libc_prf+0x9b8>
1c00ac4e:	fdfdf793          	andi	a5,s11,-33
1c00ac52:	04500693          	li	a3,69
1c00ac56:	00d781e3          	beq	a5,a3,1c00b458 <pos_libc_prf+0xcce>
1c00ac5a:	105c                	addi	a5,sp,36
1c00ac5c:	00098023          	sb	zero,0(s3)
1c00ac60:	40f989b3          	sub	s3,s3,a5
1c00ac64:	aa05                	j	1c00ad94 <pos_libc_prf+0x60a>
1c00ac66:	b80c0fe3          	beqz	s8,1c00a804 <pos_libc_prf+0x7a>
1c00ac6a:	b931                	j	1c00a886 <pos_libc_prf+0xfc>
1c00ac6c:	016c0863          	beq	s8,s6,1c00ac7c <pos_libc_prf+0x4f2>
1c00ac70:	c15c1be3          	bne	s8,s5,1c00a886 <pos_libc_prf+0xfc>
1c00ac74:	03000913          	li	s2,48
1c00ac78:	8da6                	mv	s11,s1
1c00ac7a:	b139                	j	1c00a888 <pos_libc_prf+0xfe>
1c00ac7c:	4785                	li	a5,1
1c00ac7e:	c03e                	sw	a5,0(sp)
1c00ac80:	8da6                	mv	s11,s1
1c00ac82:	b119                	j	1c00a888 <pos_libc_prf+0xfe>
1c00ac84:	4785                	li	a5,1
1c00ac86:	c23e                	sw	a5,4(sp)
1c00ac88:	8da6                	mv	s11,s1
1c00ac8a:	befd                	j	1c00a888 <pos_libc_prf+0xfe>
1c00ac8c:	4785                	li	a5,1
1c00ac8e:	c43e                	sw	a5,8(sp)
1c00ac90:	8da6                	mv	s11,s1
1c00ac92:	bedd                	j	1c00a888 <pos_libc_prf+0xfe>
1c00ac94:	0b85                	addi	s7,s7,1
1c00ac96:	002a1793          	slli	a5,s4,0x2
1c00ac9a:	97d2                	add	a5,a5,s4
1c00ac9c:	0786                	slli	a5,a5,0x1
1c00ac9e:	97ee                	add	a5,a5,s11
1c00aca0:	000bcd83          	lbu	s11,0(s7)
1c00aca4:	fd078a13          	addi	s4,a5,-48
1c00aca8:	8662                	mv	a2,s8
1c00acaa:	fd0d8793          	addi	a5,s11,-48
1c00acae:	8c5e                	mv	s8,s7
1c00acb0:	fef572e3          	bgeu	a0,a5,1c00ac94 <pos_libc_prf+0x50a>
1c00acb4:	0609                	addi	a2,a2,2
1c00acb6:	0c800793          	li	a5,200
1c00acba:	c147f1e3          	bgeu	a5,s4,1c00a8bc <pos_libc_prf+0x132>
1c00acbe:	0c800a13          	li	s4,200
1c00acc2:	beed                	j	1c00a8bc <pos_libc_prf+0x132>
1c00acc4:	0c800793          	li	a5,200
1c00acc8:	b3b7dae3          	bge	a5,s11,1c00a7fc <pos_libc_prf+0x72>
1c00accc:	547d                	li	s0,-1
1c00acce:	be1d                	j	1c00a804 <pos_libc_prf+0x7a>
1c00acd0:	47b2                	lw	a5,12(sp)
1c00acd2:	0007aa03          	lw	s4,0(a5)
1c00acd6:	00478693          	addi	a3,a5,4
1c00acda:	000a5663          	bgez	s4,1c00ace6 <pos_libc_prf+0x55c>
1c00acde:	4785                	li	a5,1
1c00ace0:	41400a33          	neg	s4,s4
1c00ace4:	c03e                	sw	a5,0(sp)
1c00ace6:	000bcd83          	lbu	s11,0(s7)
1c00acea:	c636                	sw	a3,12(sp)
1c00acec:	002c0613          	addi	a2,s8,2
1c00acf0:	b7d9                	j	1c00acb6 <pos_libc_prf+0x52c>
1c00acf2:	b00d89e3          	beqz	s11,1c00a804 <pos_libc_prf+0x7a>
1c00acf6:	b619                	j	1c00a7fc <pos_libc_prf+0x72>
1c00acf8:	06400793          	li	a5,100
1c00acfc:	4afd8363          	beq	s11,a5,1c00b1a2 <pos_libc_prf+0xa18>
1c00ad00:	19b7d963          	bge	a5,s11,1c00ae92 <pos_libc_prf+0x708>
1c00ad04:	f9bd8793          	addi	a5,s11,-101
1c00ad08:	4689                	li	a3,2
1c00ad0a:	aef6e9e3          	bltu	a3,a5,1c00a7fc <pos_libc_prf+0x72>
1c00ad0e:	47b2                	lw	a5,12(sp)
1c00ad10:	7ff00893          	li	a7,2047
1c00ad14:	00778b13          	addi	s6,a5,7
1c00ad18:	ff8b7b13          	andi	s6,s6,-8
1c00ad1c:	004b2783          	lw	a5,4(s6)
1c00ad20:	000b2603          	lw	a2,0(s6)
1c00ad24:	0b21                	addi	s6,s6,8
1c00ad26:	00b79693          	slli	a3,a5,0xb
1c00ad2a:	01565813          	srli	a6,a2,0x15
1c00ad2e:	0147d513          	srli	a0,a5,0x14
1c00ad32:	00d866b3          	or	a3,a6,a3
1c00ad36:	0686                	slli	a3,a3,0x1
1c00ad38:	7ff57813          	andi	a6,a0,2047
1c00ad3c:	00b61313          	slli	t1,a2,0xb
1c00ad40:	0016d513          	srli	a0,a3,0x1
1c00ad44:	86be                	mv	a3,a5
1c00ad46:	c11818e3          	bne	a6,a7,1c00a956 <pos_libc_prf+0x1cc>
1c00ad4a:	105c                	addi	a5,sp,36
1c00ad4c:	0006d863          	bgez	a3,1c00ad5c <pos_libc_prf+0x5d2>
1c00ad50:	02d00793          	li	a5,45
1c00ad54:	02f10223          	sb	a5,36(sp)
1c00ad58:	02510793          	addi	a5,sp,37
1c00ad5c:	00a36633          	or	a2,t1,a0
1c00ad60:	fbfd8593          	addi	a1,s11,-65
1c00ad64:	00378993          	addi	s3,a5,3
1c00ad68:	46e5                	li	a3,25
1c00ad6a:	0c0612e3          	bnez	a2,1c00b62e <pos_libc_prf+0xea4>
1c00ad6e:	10b6e5e3          	bltu	a3,a1,1c00b678 <pos_libc_prf+0xeee>
1c00ad72:	04900693          	li	a3,73
1c00ad76:	00d78023          	sb	a3,0(a5)
1c00ad7a:	04e00693          	li	a3,78
1c00ad7e:	00d780a3          	sb	a3,1(a5)
1c00ad82:	04600693          	li	a3,70
1c00ad86:	00d78123          	sb	a3,2(a5)
1c00ad8a:	000781a3          	sb	zero,3(a5)
1c00ad8e:	105c                	addi	a5,sp,36
1c00ad90:	40f989b3          	sub	s3,s3,a5
1c00ad94:	47a2                	lw	a5,8(sp)
1c00ad96:	4712                	lw	a4,4(sp)
1c00ad98:	8fd9                	or	a5,a5,a4
1c00ad9a:	ce3e                	sw	a5,28(sp)
1c00ad9c:	5e079b63          	bnez	a5,1c00b392 <pos_libc_prf+0xc08>
1c00ada0:	02414683          	lbu	a3,36(sp)
1c00ada4:	02d00793          	li	a5,45
1c00ada8:	5ef68563          	beq	a3,a5,1c00b392 <pos_libc_prf+0xc08>
1c00adac:	0c800793          	li	a5,200
1c00adb0:	0d37d863          	bge	a5,s3,1c00ae80 <pos_libc_prf+0x6f6>
1c00adb4:	547d                	li	s0,-1
1c00adb6:	b4b9                	j	1c00a804 <pos_libc_prf+0x7a>
1c00adb8:	07000793          	li	a5,112
1c00adbc:	46fd8f63          	beq	s11,a5,1c00b23a <pos_libc_prf+0xab0>
1c00adc0:	1bb7d663          	bge	a5,s11,1c00af6c <pos_libc_prf+0x7e2>
1c00adc4:	07500793          	li	a5,117
1c00adc8:	52fd8763          	beq	s11,a5,1c00b2f6 <pos_libc_prf+0xb6c>
1c00adcc:	07800793          	li	a5,120
1c00add0:	16fd9163          	bne	s11,a5,1c00af32 <pos_libc_prf+0x7a8>
1c00add4:	47b2                	lw	a5,12(sp)
1c00add6:	1054                	addi	a3,sp,36
1c00add8:	4390                	lw	a2,0(a5)
1c00adda:	00478b13          	addi	s6,a5,4
1c00adde:	47f2                	lw	a5,28(sp)
1c00ade0:	28079163          	bnez	a5,1c00b062 <pos_libc_prf+0x8d8>
1c00ade4:	87b6                	mv	a5,a3
1c00ade6:	4ea5                	li	t4,9
1c00ade8:	4e3d                	li	t3,15
1c00adea:	a039                	j	1c00adf8 <pos_libc_prf+0x66e>
1c00adec:	ff098fa3          	sb	a6,-1(s3)
1c00adf0:	02ce7663          	bgeu	t3,a2,1c00ae1c <pos_libc_prf+0x692>
1c00adf4:	862a                	mv	a2,a0
1c00adf6:	87ce                	mv	a5,s3
1c00adf8:	00f67593          	andi	a1,a2,15
1c00adfc:	00178993          	addi	s3,a5,1
1c00ae00:	05758813          	addi	a6,a1,87
1c00ae04:	03058713          	addi	a4,a1,48
1c00ae08:	00465513          	srli	a0,a2,0x4
1c00ae0c:	febee0e3          	bltu	t4,a1,1c00adec <pos_libc_prf+0x662>
1c00ae10:	00e78023          	sb	a4,0(a5)
1c00ae14:	00178993          	addi	s3,a5,1
1c00ae18:	fcce6ee3          	bltu	t3,a2,1c00adf4 <pos_libc_prf+0x66a>
1c00ae1c:	40d98633          	sub	a2,s3,a3
1c00ae20:	01565c63          	bge	a2,s5,1c00ae38 <pos_libc_prf+0x6ae>
1c00ae24:	03000513          	li	a0,48
1c00ae28:	87ce                	mv	a5,s3
1c00ae2a:	0985                	addi	s3,s3,1
1c00ae2c:	40d98733          	sub	a4,s3,a3
1c00ae30:	fea98fa3          	sb	a0,-1(s3)
1c00ae34:	ff574ae3          	blt	a4,s5,1c00ae28 <pos_libc_prf+0x69e>
1c00ae38:	00098023          	sb	zero,0(s3)
1c00ae3c:	00f6fe63          	bgeu	a3,a5,1c00ae58 <pos_libc_prf+0x6ce>
1c00ae40:	0006c603          	lbu	a2,0(a3)
1c00ae44:	0007c703          	lbu	a4,0(a5)
1c00ae48:	0685                	addi	a3,a3,1
1c00ae4a:	00c78023          	sb	a2,0(a5)
1c00ae4e:	fee68fa3          	sb	a4,-1(a3)
1c00ae52:	17fd                	addi	a5,a5,-1
1c00ae54:	fef6e6e3          	bltu	a3,a5,1c00ae40 <pos_libc_prf+0x6b6>
1c00ae58:	05800793          	li	a5,88
1c00ae5c:	66fd8463          	beq	s11,a5,1c00b4c4 <pos_libc_prf+0xd3a>
1c00ae60:	105c                	addi	a5,sp,36
1c00ae62:	40f989b3          	sub	s3,s3,a5
1c00ae66:	47f2                	lw	a5,28(sp)
1c00ae68:	c399                	beqz	a5,1c00ae6e <pos_libc_prf+0x6e4>
1c00ae6a:	4789                	li	a5,2
1c00ae6c:	ce3e                	sw	a5,28(sp)
1c00ae6e:	57fd                	li	a5,-1
1c00ae70:	f2fa8ee3          	beq	s5,a5,1c00adac <pos_libc_prf+0x622>
1c00ae74:	0c800793          	li	a5,200
1c00ae78:	e537cae3          	blt	a5,s3,1c00accc <pos_libc_prf+0x542>
1c00ae7c:	02000913          	li	s2,32
1c00ae80:	00198613          	addi	a2,s3,1
1c00ae84:	0349c963          	blt	s3,s4,1c00aeb6 <pos_libc_prf+0x72c>
1c00ae88:	c65a                	sw	s6,12(sp)
1c00ae8a:	8a4e                	mv	s4,s3
1c00ae8c:	1a0a1663          	bnez	s4,1c00b038 <pos_libc_prf+0x8ae>
1c00ae90:	b2b5                	j	1c00a7fc <pos_libc_prf+0x72>
1c00ae92:	06300793          	li	a5,99
1c00ae96:	96fd93e3          	bne	s11,a5,1c00a7fc <pos_libc_prf+0x72>
1c00ae9a:	4732                	lw	a4,12(sp)
1c00ae9c:	020102a3          	sb	zero,37(sp)
1c00aea0:	4785                	li	a5,1
1c00aea2:	4314                	lw	a3,0(a4)
1c00aea4:	00470b13          	addi	s6,a4,4
1c00aea8:	02d10223          	sb	a3,36(sp)
1c00aeac:	1947d463          	bge	a5,s4,1c00b034 <pos_libc_prf+0x8aa>
1c00aeb0:	4609                	li	a2,2
1c00aeb2:	4985                	li	s3,1
1c00aeb4:	ce02                	sw	zero,28(sp)
1c00aeb6:	4782                	lw	a5,0(sp)
1c00aeb8:	4e078463          	beqz	a5,1c00b3a0 <pos_libc_prf+0xc16>
1c00aebc:	413a07b3          	sub	a5,s4,s3
1c00aec0:	4585                	li	a1,1
1c00aec2:	0149d363          	bge	s3,s4,1c00aec8 <pos_libc_prf+0x73e>
1c00aec6:	85be                	mv	a1,a5
1c00aec8:	17fd                	addi	a5,a5,-1
1c00aeca:	0037b793          	sltiu	a5,a5,3
1c00aece:	eb95                	bnez	a5,1c00af02 <pos_libc_prf+0x778>
1c00aed0:	0349d963          	bge	s3,s4,1c00af02 <pos_libc_prf+0x778>
1c00aed4:	105c                	addi	a5,sp,36
1c00aed6:	97ce                	add	a5,a5,s3
1c00aed8:	ffc5f613          	andi	a2,a1,-4
1c00aedc:	963e                	add	a2,a2,a5
1c00aede:	02000693          	li	a3,32
1c00aee2:	00d78023          	sb	a3,0(a5)
1c00aee6:	00d780a3          	sb	a3,1(a5)
1c00aeea:	00d78123          	sb	a3,2(a5)
1c00aeee:	00d781a3          	sb	a3,3(a5)
1c00aef2:	0791                	addi	a5,a5,4
1c00aef4:	fef617e3          	bne	a2,a5,1c00aee2 <pos_libc_prf+0x758>
1c00aef8:	ffc5f793          	andi	a5,a1,-4
1c00aefc:	99be                	add	s3,s3,a5
1c00aefe:	02b78663          	beq	a5,a1,1c00af2a <pos_libc_prf+0x7a0>
1c00af02:	199c                	addi	a5,sp,240
1c00af04:	97ce                	add	a5,a5,s3
1c00af06:	02000693          	li	a3,32
1c00af0a:	f2d78a23          	sb	a3,-204(a5)
1c00af0e:	00198793          	addi	a5,s3,1
1c00af12:	0147dc63          	bge	a5,s4,1c00af2a <pos_libc_prf+0x7a0>
1c00af16:	1998                	addi	a4,sp,240
1c00af18:	97ba                	add	a5,a5,a4
1c00af1a:	f2d78a23          	sb	a3,-204(a5)
1c00af1e:	0989                	addi	s3,s3,2
1c00af20:	0149d563          	bge	s3,s4,1c00af2a <pos_libc_prf+0x7a0>
1c00af24:	99ba                	add	s3,s3,a4
1c00af26:	f2d98a23          	sb	a3,-204(s3)
1c00af2a:	c65a                	sw	s6,12(sp)
1c00af2c:	100a1663          	bnez	s4,1c00b038 <pos_libc_prf+0x8ae>
1c00af30:	b0f1                	j	1c00a7fc <pos_libc_prf+0x72>
1c00af32:	07300793          	li	a5,115
1c00af36:	d8fd97e3          	bne	s11,a5,1c00acc4 <pos_libc_prf+0x53a>
1c00af3a:	47b2                	lw	a5,12(sp)
1c00af3c:	4981                	li	s3,0
1c00af3e:	0c800693          	li	a3,200
1c00af42:	438c                	lw	a1,0(a5)
1c00af44:	00478b13          	addi	s6,a5,4
1c00af48:	a021                	j	1c00af50 <pos_libc_prf+0x7c6>
1c00af4a:	0985                	addi	s3,s3,1
1c00af4c:	6ad98163          	beq	s3,a3,1c00b5ee <pos_libc_prf+0xe64>
1c00af50:	013587b3          	add	a5,a1,s3
1c00af54:	0007c783          	lbu	a5,0(a5)
1c00af58:	fbed                	bnez	a5,1c00af4a <pos_libc_prf+0x7c0>
1c00af5a:	000ac563          	bltz	s5,1c00af64 <pos_libc_prf+0x7da>
1c00af5e:	013ad363          	bge	s5,s3,1c00af64 <pos_libc_prf+0x7da>
1c00af62:	89d6                	mv	s3,s5
1c00af64:	5a099163          	bnez	s3,1c00b506 <pos_libc_prf+0xd7c>
1c00af68:	c65a                	sw	s6,12(sp)
1c00af6a:	b849                	j	1c00a7fc <pos_libc_prf+0x72>
1c00af6c:	06e00793          	li	a5,110
1c00af70:	36fd8c63          	beq	s11,a5,1c00b2e8 <pos_libc_prf+0xb5e>
1c00af74:	06f00793          	li	a5,111
1c00af78:	88fd92e3          	bne	s11,a5,1c00a7fc <pos_libc_prf+0x72>
1c00af7c:	47b2                	lw	a5,12(sp)
1c00af7e:	4390                	lw	a2,0(a5)
1c00af80:	00478b13          	addi	s6,a5,4
1c00af84:	47f2                	lw	a5,28(sp)
1c00af86:	c7f5                	beqz	a5,1c00b072 <pos_libc_prf+0x8e8>
1c00af88:	03000793          	li	a5,48
1c00af8c:	02f10223          	sb	a5,36(sp)
1c00af90:	02510693          	addi	a3,sp,37
1c00af94:	60060b63          	beqz	a2,1c00b5aa <pos_libc_prf+0xe20>
1c00af98:	89b6                	mv	s3,a3
1c00af9a:	481d                	li	a6,7
1c00af9c:	00767713          	andi	a4,a2,7
1c00afa0:	03070713          	addi	a4,a4,48
1c00afa4:	85b2                	mv	a1,a2
1c00afa6:	00e98023          	sb	a4,0(s3)
1c00afaa:	87ce                	mv	a5,s3
1c00afac:	820d                	srli	a2,a2,0x3
1c00afae:	0985                	addi	s3,s3,1
1c00afb0:	feb866e3          	bltu	a6,a1,1c00af9c <pos_libc_prf+0x812>
1c00afb4:	40d98633          	sub	a2,s3,a3
1c00afb8:	01565c63          	bge	a2,s5,1c00afd0 <pos_libc_prf+0x846>
1c00afbc:	03000593          	li	a1,48
1c00afc0:	87ce                	mv	a5,s3
1c00afc2:	0985                	addi	s3,s3,1
1c00afc4:	40d98733          	sub	a4,s3,a3
1c00afc8:	feb98fa3          	sb	a1,-1(s3)
1c00afcc:	ff574ae3          	blt	a4,s5,1c00afc0 <pos_libc_prf+0x836>
1c00afd0:	00098023          	sb	zero,0(s3)
1c00afd4:	00f6fe63          	bgeu	a3,a5,1c00aff0 <pos_libc_prf+0x866>
1c00afd8:	0006c603          	lbu	a2,0(a3)
1c00afdc:	0007c703          	lbu	a4,0(a5)
1c00afe0:	0685                	addi	a3,a3,1
1c00afe2:	00c78023          	sb	a2,0(a5)
1c00afe6:	fee68fa3          	sb	a4,-1(a3)
1c00afea:	17fd                	addi	a5,a5,-1
1c00afec:	fef6e6e3          	bltu	a3,a5,1c00afd8 <pos_libc_prf+0x84e>
1c00aff0:	1058                	addi	a4,sp,36
1c00aff2:	57fd                	li	a5,-1
1c00aff4:	40e989b3          	sub	s3,s3,a4
1c00aff8:	36fa8763          	beq	s5,a5,1c00b366 <pos_libc_prf+0xbdc>
1c00affc:	0c800793          	li	a5,200
1c00b000:	cd37c6e3          	blt	a5,s3,1c00accc <pos_libc_prf+0x542>
1c00b004:	ce02                	sw	zero,28(sp)
1c00b006:	bd9d                	j	1c00ae7c <pos_libc_prf+0x6f2>
1c00b008:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00b00c:	02a00793          	li	a5,42
1c00b010:	00160693          	addi	a3,a2,1
1c00b014:	14f59b63          	bne	a1,a5,1c00b16a <pos_libc_prf+0x9e0>
1c00b018:	47b2                	lw	a5,12(sp)
1c00b01a:	00164d83          	lbu	s11,1(a2)
1c00b01e:	0609                	addi	a2,a2,2
1c00b020:	0007aa83          	lw	s5,0(a5)
1c00b024:	0791                	addi	a5,a5,4
1c00b026:	c63e                	sw	a5,12(sp)
1c00b028:	0c800793          	li	a5,200
1c00b02c:	8957dde3          	bge	a5,s5,1c00a8c6 <pos_libc_prf+0x13c>
1c00b030:	5afd                	li	s5,-1
1c00b032:	b851                	j	1c00a8c6 <pos_libc_prf+0x13c>
1c00b034:	c65a                	sw	s6,12(sp)
1c00b036:	4a05                	li	s4,1
1c00b038:	02410913          	addi	s2,sp,36
1c00b03c:	59fd                	li	s3,-1
1c00b03e:	41240ab3          	sub	s5,s0,s2
1c00b042:	9a4a                	add	s4,s4,s2
1c00b044:	a029                	j	1c00b04e <pos_libc_prf+0x8c4>
1c00b046:	012a8433          	add	s0,s5,s2
1c00b04a:	fb490963          	beq	s2,s4,1c00a7fc <pos_libc_prf+0x72>
1c00b04e:	00094503          	lbu	a0,0(s2)
1c00b052:	85a6                	mv	a1,s1
1c00b054:	0905                	addi	s2,s2,1
1c00b056:	9c82                	jalr	s9
1c00b058:	ff3517e3          	bne	a0,s3,1c00b046 <pos_libc_prf+0x8bc>
1c00b05c:	547d                	li	s0,-1
1c00b05e:	fa6ff06f          	j	1c00a804 <pos_libc_prf+0x7a>
1c00b062:	77e1                	lui	a5,0xffff8
1c00b064:	8307c793          	xori	a5,a5,-2000
1c00b068:	02f11223          	sh	a5,36(sp)
1c00b06c:	02610693          	addi	a3,sp,38
1c00b070:	bb95                	j	1c00ade4 <pos_libc_prf+0x65a>
1c00b072:	1054                	addi	a3,sp,36
1c00b074:	b715                	j	1c00af98 <pos_libc_prf+0x80e>
1c00b076:	5c605a63          	blez	t1,1c00b64a <pos_libc_prf+0xec0>
1c00b07a:	006f09b3          	add	s3,t5,t1
1c00b07e:	4541                	li	a0,16
1c00b080:	03000e13          	li	t3,48
1c00b084:	00279713          	slli	a4,a5,0x2
1c00b088:	01e7d593          	srli	a1,a5,0x1e
1c00b08c:	00289693          	slli	a3,a7,0x2
1c00b090:	00f70333          	add	t1,a4,a5
1c00b094:	8ecd                	or	a3,a3,a1
1c00b096:	96c6                	add	a3,a3,a7
1c00b098:	00e33733          	sltu	a4,t1,a4
1c00b09c:	9736                	add	a4,a4,a3
1c00b09e:	0706                	slli	a4,a4,0x1
1c00b0a0:	01f35693          	srli	a3,t1,0x1f
1c00b0a4:	8f55                	or	a4,a4,a3
1c00b0a6:	01c75693          	srli	a3,a4,0x1c
1c00b0aa:	03068693          	addi	a3,a3,48
1c00b0ae:	4ea05463          	blez	a0,1c00b596 <pos_libc_prf+0xe0c>
1c00b0b2:	fed80fa3          	sb	a3,-1(a6)
1c00b0b6:	46d2                	lw	a3,20(sp)
1c00b0b8:	157d                	addi	a0,a0,-1
1c00b0ba:	00131793          	slli	a5,t1,0x1
1c00b0be:	00d778b3          	and	a7,a4,a3
1c00b0c2:	4d099e63          	bne	s3,a6,1c00b59e <pos_libc_prf+0xe14>
1c00b0c6:	4301                	li	t1,0
1c00b0c8:	4772                	lw	a4,28(sp)
1c00b0ca:	01576bb3          	or	s7,a4,s5
1c00b0ce:	060b8863          	beqz	s7,1c00b13e <pos_libc_prf+0x9b4>
1c00b0d2:	02e00693          	li	a3,46
1c00b0d6:	00d98023          	sb	a3,0(s3)
1c00b0da:	00198e93          	addi	t4,s3,1
1c00b0de:	5c0a8763          	beqz	s5,1c00b6ac <pos_libc_prf+0xf22>
1c00b0e2:	001a8693          	addi	a3,s5,1
1c00b0e6:	99b6                	add	s3,s3,a3
1c00b0e8:	8876                	mv	a6,t4
1c00b0ea:	03000f13          	li	t5,48
1c00b0ee:	0805                	addi	a6,a6,1
1c00b0f0:	4a031963          	bnez	t1,1c00b5a2 <pos_libc_prf+0xe18>
1c00b0f4:	00279713          	slli	a4,a5,0x2
1c00b0f8:	01e7d593          	srli	a1,a5,0x1e
1c00b0fc:	00289693          	slli	a3,a7,0x2
1c00b100:	00f70e33          	add	t3,a4,a5
1c00b104:	8ecd                	or	a3,a3,a1
1c00b106:	96c6                	add	a3,a3,a7
1c00b108:	00ee3733          	sltu	a4,t3,a4
1c00b10c:	9736                	add	a4,a4,a3
1c00b10e:	0706                	slli	a4,a4,0x1
1c00b110:	01fe5693          	srli	a3,t3,0x1f
1c00b114:	8f55                	or	a4,a4,a3
1c00b116:	01c75593          	srli	a1,a4,0x1c
1c00b11a:	03000693          	li	a3,48
1c00b11e:	00a05a63          	blez	a0,1c00b132 <pos_libc_prf+0x9a8>
1c00b122:	03058693          	addi	a3,a1,48
1c00b126:	45d2                	lw	a1,20(sp)
1c00b128:	157d                	addi	a0,a0,-1
1c00b12a:	001e1793          	slli	a5,t3,0x1
1c00b12e:	00b778b3          	and	a7,a4,a1
1c00b132:	fed80fa3          	sb	a3,-1(a6)
1c00b136:	fb099ce3          	bne	s3,a6,1c00b0ee <pos_libc_prf+0x964>
1c00b13a:	015e89b3          	add	s3,t4,s5
1c00b13e:	b0060ee3          	beqz	a2,1c00ac5a <pos_libc_prf+0x4d0>
1c00b142:	03000613          	li	a2,48
1c00b146:	fff9c783          	lbu	a5,-1(s3)
1c00b14a:	86ce                	mv	a3,s3
1c00b14c:	19fd                	addi	s3,s3,-1
1c00b14e:	fec78ce3          	beq	a5,a2,1c00b146 <pos_libc_prf+0x9bc>
1c00b152:	02e00613          	li	a2,46
1c00b156:	aec78ce3          	beq	a5,a2,1c00ac4e <pos_libc_prf+0x4c4>
1c00b15a:	89b6                	mv	s3,a3
1c00b15c:	bccd                	j	1c00ac4e <pos_libc_prf+0x4c4>
1c00b15e:	fff88fa3          	sb	t6,-1(a7)
1c00b162:	ab1f11e3          	bne	t5,a7,1c00ac04 <pos_libc_prf+0x47a>
1c00b166:	99d6                	add	s3,s3,s5
1c00b168:	b4cd                	j	1c00ac4a <pos_libc_prf+0x4c0>
1c00b16a:	fd058713          	addi	a4,a1,-48
1c00b16e:	47a5                	li	a5,9
1c00b170:	8dae                	mv	s11,a1
1c00b172:	4a81                	li	s5,0
1c00b174:	4525                	li	a0,9
1c00b176:	00e7f463          	bgeu	a5,a4,1c00b17e <pos_libc_prf+0x9f4>
1c00b17a:	a199                	j	1c00b5c0 <pos_libc_prf+0xe36>
1c00b17c:	0685                	addi	a3,a3,1
1c00b17e:	002a9793          	slli	a5,s5,0x2
1c00b182:	97d6                	add	a5,a5,s5
1c00b184:	0786                	slli	a5,a5,0x1
1c00b186:	97ee                	add	a5,a5,s11
1c00b188:	0006cd83          	lbu	s11,0(a3)
1c00b18c:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00b190:	8732                	mv	a4,a2
1c00b192:	fd0d8793          	addi	a5,s11,-48
1c00b196:	8636                	mv	a2,a3
1c00b198:	fef572e3          	bgeu	a0,a5,1c00b17c <pos_libc_prf+0x9f2>
1c00b19c:	00270613          	addi	a2,a4,2
1c00b1a0:	b561                	j	1c00b028 <pos_libc_prf+0x89e>
1c00b1a2:	47b2                	lw	a5,12(sp)
1c00b1a4:	0007a303          	lw	t1,0(a5)
1c00b1a8:	00478b13          	addi	s6,a5,4
1c00b1ac:	2e034263          	bltz	t1,1c00b490 <pos_libc_prf+0xd06>
1c00b1b0:	47a2                	lw	a5,8(sp)
1c00b1b2:	861a                	mv	a2,t1
1c00b1b4:	3c078663          	beqz	a5,1c00b580 <pos_libc_prf+0xdf6>
1c00b1b8:	02b00793          	li	a5,43
1c00b1bc:	02f10223          	sb	a5,36(sp)
1c00b1c0:	02510693          	addi	a3,sp,37
1c00b1c4:	89b6                	mv	s3,a3
1c00b1c6:	4529                	li	a0,10
1c00b1c8:	48a5                	li	a7,9
1c00b1ca:	02a67733          	remu	a4,a2,a0
1c00b1ce:	87ce                	mv	a5,s3
1c00b1d0:	0985                	addi	s3,s3,1
1c00b1d2:	85b2                	mv	a1,a2
1c00b1d4:	03070713          	addi	a4,a4,48
1c00b1d8:	fee98fa3          	sb	a4,-1(s3)
1c00b1dc:	02a65633          	divu	a2,a2,a0
1c00b1e0:	feb8e5e3          	bltu	a7,a1,1c00b1ca <pos_libc_prf+0xa40>
1c00b1e4:	40d98633          	sub	a2,s3,a3
1c00b1e8:	01565c63          	bge	a2,s5,1c00b200 <pos_libc_prf+0xa76>
1c00b1ec:	03000593          	li	a1,48
1c00b1f0:	87ce                	mv	a5,s3
1c00b1f2:	0985                	addi	s3,s3,1
1c00b1f4:	40d98733          	sub	a4,s3,a3
1c00b1f8:	feb98fa3          	sb	a1,-1(s3)
1c00b1fc:	ff574ae3          	blt	a4,s5,1c00b1f0 <pos_libc_prf+0xa66>
1c00b200:	00098023          	sb	zero,0(s3)
1c00b204:	00f6fe63          	bgeu	a3,a5,1c00b220 <pos_libc_prf+0xa96>
1c00b208:	0006c603          	lbu	a2,0(a3)
1c00b20c:	0007c703          	lbu	a4,0(a5)
1c00b210:	0685                	addi	a3,a3,1
1c00b212:	00c78023          	sb	a2,0(a5)
1c00b216:	fee68fa3          	sb	a4,-1(a3)
1c00b21a:	17fd                	addi	a5,a5,-1
1c00b21c:	fef6e6e3          	bltu	a3,a5,1c00b208 <pos_libc_prf+0xa7e>
1c00b220:	4712                	lw	a4,4(sp)
1c00b222:	47a2                	lw	a5,8(sp)
1c00b224:	8fd9                	or	a5,a5,a4
1c00b226:	ce3e                	sw	a5,28(sp)
1c00b228:	1058                	addi	a4,sp,36
1c00b22a:	40e989b3          	sub	s3,s3,a4
1c00b22e:	c40790e3          	bnez	a5,1c00ae6e <pos_libc_prf+0x6e4>
1c00b232:	01f35793          	srli	a5,t1,0x1f
1c00b236:	ce3e                	sw	a5,28(sp)
1c00b238:	b91d                	j	1c00ae6e <pos_libc_prf+0x6e4>
1c00b23a:	47b2                	lw	a5,12(sp)
1c00b23c:	02610613          	addi	a2,sp,38
1c00b240:	4ea5                	li	t4,9
1c00b242:	438c                	lw	a1,0(a5)
1c00b244:	00478b13          	addi	s6,a5,4
1c00b248:	77e1                	lui	a5,0xffff8
1c00b24a:	8307c793          	xori	a5,a5,-2000
1c00b24e:	02f11223          	sh	a5,36(sp)
1c00b252:	4e3d                	li	t3,15
1c00b254:	87b2                	mv	a5,a2
1c00b256:	a039                	j	1c00b264 <pos_libc_prf+0xada>
1c00b258:	ff168fa3          	sb	a7,-1(a3)
1c00b25c:	02be7663          	bgeu	t3,a1,1c00b288 <pos_libc_prf+0xafe>
1c00b260:	85c2                	mv	a1,a6
1c00b262:	87b6                	mv	a5,a3
1c00b264:	00f5f513          	andi	a0,a1,15
1c00b268:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00b26c:	05750893          	addi	a7,a0,87
1c00b270:	03050713          	addi	a4,a0,48
1c00b274:	0045d813          	srli	a6,a1,0x4
1c00b278:	feaee0e3          	bltu	t4,a0,1c00b258 <pos_libc_prf+0xace>
1c00b27c:	00e78023          	sb	a4,0(a5)
1c00b280:	00178693          	addi	a3,a5,1
1c00b284:	fcbe6ee3          	bltu	t3,a1,1c00b260 <pos_libc_prf+0xad6>
1c00b288:	40c689b3          	sub	s3,a3,a2
1c00b28c:	459d                	li	a1,7
1c00b28e:	0135cc63          	blt	a1,s3,1c00b2a6 <pos_libc_prf+0xb1c>
1c00b292:	03000513          	li	a0,48
1c00b296:	87b6                	mv	a5,a3
1c00b298:	0685                	addi	a3,a3,1
1c00b29a:	40c689b3          	sub	s3,a3,a2
1c00b29e:	fea68fa3          	sb	a0,-1(a3)
1c00b2a2:	ff35dae3          	bge	a1,s3,1c00b296 <pos_libc_prf+0xb0c>
1c00b2a6:	00068023          	sb	zero,0(a3)
1c00b2aa:	86b2                	mv	a3,a2
1c00b2ac:	00f67e63          	bgeu	a2,a5,1c00b2c8 <pos_libc_prf+0xb3e>
1c00b2b0:	0006c603          	lbu	a2,0(a3)
1c00b2b4:	0007c703          	lbu	a4,0(a5)
1c00b2b8:	0685                	addi	a3,a3,1
1c00b2ba:	00c78023          	sb	a2,0(a5)
1c00b2be:	fee68fa3          	sb	a4,-1(a3)
1c00b2c2:	17fd                	addi	a5,a5,-1
1c00b2c4:	fef6e6e3          	bltu	a3,a5,1c00b2b0 <pos_libc_prf+0xb26>
1c00b2c8:	57fd                	li	a5,-1
1c00b2ca:	0989                	addi	s3,s3,2
1c00b2cc:	22fa8663          	beq	s5,a5,1c00b4f8 <pos_libc_prf+0xd6e>
1c00b2d0:	0c800793          	li	a5,200
1c00b2d4:	9f37cce3          	blt	a5,s3,1c00accc <pos_libc_prf+0x542>
1c00b2d8:	02000913          	li	s2,32
1c00b2dc:	0b49d863          	bge	s3,s4,1c00b38c <pos_libc_prf+0xc02>
1c00b2e0:	00198613          	addi	a2,s3,1
1c00b2e4:	ce02                	sw	zero,28(sp)
1c00b2e6:	bec1                	j	1c00aeb6 <pos_libc_prf+0x72c>
1c00b2e8:	4732                	lw	a4,12(sp)
1c00b2ea:	431c                	lw	a5,0(a4)
1c00b2ec:	0711                	addi	a4,a4,4
1c00b2ee:	c63a                	sw	a4,12(sp)
1c00b2f0:	c380                	sw	s0,0(a5)
1c00b2f2:	d0aff06f          	j	1c00a7fc <pos_libc_prf+0x72>
1c00b2f6:	47b2                	lw	a5,12(sp)
1c00b2f8:	4529                	li	a0,10
1c00b2fa:	48a5                	li	a7,9
1c00b2fc:	4390                	lw	a2,0(a5)
1c00b2fe:	00478b13          	addi	s6,a5,4
1c00b302:	105c                	addi	a5,sp,36
1c00b304:	02a67733          	remu	a4,a2,a0
1c00b308:	86be                	mv	a3,a5
1c00b30a:	0785                	addi	a5,a5,1
1c00b30c:	85b2                	mv	a1,a2
1c00b30e:	03070713          	addi	a4,a4,48
1c00b312:	fee78fa3          	sb	a4,-1(a5)
1c00b316:	02a65633          	divu	a2,a2,a0
1c00b31a:	feb8e5e3          	bltu	a7,a1,1c00b304 <pos_libc_prf+0xb7a>
1c00b31e:	1058                	addi	a4,sp,36
1c00b320:	40e789b3          	sub	s3,a5,a4
1c00b324:	0159dd63          	bge	s3,s5,1c00b33e <pos_libc_prf+0xbb4>
1c00b328:	03000613          	li	a2,48
1c00b32c:	86be                	mv	a3,a5
1c00b32e:	1058                	addi	a4,sp,36
1c00b330:	0785                	addi	a5,a5,1
1c00b332:	40e789b3          	sub	s3,a5,a4
1c00b336:	fec78fa3          	sb	a2,-1(a5)
1c00b33a:	ff59c9e3          	blt	s3,s5,1c00b32c <pos_libc_prf+0xba2>
1c00b33e:	00078023          	sb	zero,0(a5)
1c00b342:	105c                	addi	a5,sp,36
1c00b344:	00d7fe63          	bgeu	a5,a3,1c00b360 <pos_libc_prf+0xbd6>
1c00b348:	0007c603          	lbu	a2,0(a5)
1c00b34c:	0006c703          	lbu	a4,0(a3)
1c00b350:	0785                	addi	a5,a5,1
1c00b352:	00c68023          	sb	a2,0(a3)
1c00b356:	fee78fa3          	sb	a4,-1(a5)
1c00b35a:	16fd                	addi	a3,a3,-1
1c00b35c:	fed7e6e3          	bltu	a5,a3,1c00b348 <pos_libc_prf+0xbbe>
1c00b360:	57fd                	li	a5,-1
1c00b362:	c8fa9de3          	bne	s5,a5,1c00affc <pos_libc_prf+0x872>
1c00b366:	0c800793          	li	a5,200
1c00b36a:	9737c1e3          	blt	a5,s3,1c00accc <pos_libc_prf+0x542>
1c00b36e:	ce02                	sw	zero,28(sp)
1c00b370:	be01                	j	1c00ae80 <pos_libc_prf+0x6f6>
1c00b372:	85a6                	mv	a1,s1
1c00b374:	02500513          	li	a0,37
1c00b378:	9c82                	jalr	s9
1c00b37a:	57fd                	li	a5,-1
1c00b37c:	c6f51f63          	bne	a0,a5,1c00a7fa <pos_libc_prf+0x70>
1c00b380:	547d                	li	s0,-1
1c00b382:	c82ff06f          	j	1c00a804 <pos_libc_prf+0x7a>
1c00b386:	4401                	li	s0,0
1c00b388:	c7cff06f          	j	1c00a804 <pos_libc_prf+0x7a>
1c00b38c:	8a4e                	mv	s4,s3
1c00b38e:	c65a                	sw	s6,12(sp)
1c00b390:	b165                	j	1c00b038 <pos_libc_prf+0x8ae>
1c00b392:	0c800793          	li	a5,200
1c00b396:	9337cbe3          	blt	a5,s3,1c00accc <pos_libc_prf+0x542>
1c00b39a:	4785                	li	a5,1
1c00b39c:	ce3e                	sw	a5,28(sp)
1c00b39e:	b4cd                	j	1c00ae80 <pos_libc_prf+0x6f6>
1c00b3a0:	104c                	addi	a1,sp,36
1c00b3a2:	413a09b3          	sub	s3,s4,s3
1c00b3a6:	01358533          	add	a0,a1,s3
1c00b3aa:	9faff0ef          	jal	ra,1c00a5a4 <memmove>
1c00b3ae:	02000793          	li	a5,32
1c00b3b2:	24f90863          	beq	s2,a5,1c00b602 <pos_libc_prf+0xe78>
1c00b3b6:	47f2                	lw	a5,28(sp)
1c00b3b8:	99be                	add	s3,s3,a5
1c00b3ba:	47f2                	lw	a5,28(sp)
1c00b3bc:	b737d7e3          	bge	a5,s3,1c00af2a <pos_libc_prf+0x7a0>
1c00b3c0:	4772                	lw	a4,28(sp)
1c00b3c2:	4789                	li	a5,2
1c00b3c4:	40e988b3          	sub	a7,s3,a4
1c00b3c8:	fff88693          	addi	a3,a7,-1
1c00b3cc:	06d7f063          	bgeu	a5,a3,1c00b42c <pos_libc_prf+0xca2>
1c00b3d0:	47e2                	lw	a5,24(sp)
1c00b3d2:	00891613          	slli	a2,s2,0x8
1c00b3d6:	ffc8f593          	andi	a1,a7,-4
1c00b3da:	00f976b3          	and	a3,s2,a5
1c00b3de:	8ed1                	or	a3,a3,a2
1c00b3e0:	01091793          	slli	a5,s2,0x10
1c00b3e4:	8edd                	or	a3,a3,a5
1c00b3e6:	01891613          	slli	a2,s2,0x18
1c00b3ea:	8e55                	or	a2,a2,a3
1c00b3ec:	105c                	addi	a5,sp,36
1c00b3ee:	00865813          	srli	a6,a2,0x8
1c00b3f2:	01065513          	srli	a0,a2,0x10
1c00b3f6:	97ba                	add	a5,a5,a4
1c00b3f8:	95be                	add	a1,a1,a5
1c00b3fa:	0306f693          	andi	a3,a3,48
1c00b3fe:	8261                	srli	a2,a2,0x18
1c00b400:	0ff87813          	andi	a6,a6,255
1c00b404:	0ff57513          	andi	a0,a0,255
1c00b408:	00d78023          	sb	a3,0(a5)
1c00b40c:	010780a3          	sb	a6,1(a5)
1c00b410:	00a78123          	sb	a0,2(a5)
1c00b414:	00c781a3          	sb	a2,3(a5)
1c00b418:	0791                	addi	a5,a5,4
1c00b41a:	fef597e3          	bne	a1,a5,1c00b408 <pos_libc_prf+0xc7e>
1c00b41e:	4772                	lw	a4,28(sp)
1c00b420:	ffc8f793          	andi	a5,a7,-4
1c00b424:	973e                	add	a4,a4,a5
1c00b426:	ce3a                	sw	a4,28(sp)
1c00b428:	b11781e3          	beq	a5,a7,1c00af2a <pos_libc_prf+0x7a0>
1c00b42c:	4772                	lw	a4,28(sp)
1c00b42e:	199c                	addi	a5,sp,240
1c00b430:	97ba                	add	a5,a5,a4
1c00b432:	f3278a23          	sb	s2,-204(a5)
1c00b436:	00170793          	addi	a5,a4,1
1c00b43a:	af37d8e3          	bge	a5,s3,1c00af2a <pos_libc_prf+0x7a0>
1c00b43e:	1994                	addi	a3,sp,240
1c00b440:	97b6                	add	a5,a5,a3
1c00b442:	f3278a23          	sb	s2,-204(a5)
1c00b446:	00270b93          	addi	s7,a4,2
1c00b44a:	af3bd0e3          	bge	s7,s3,1c00af2a <pos_libc_prf+0x7a0>
1c00b44e:	9bb6                	add	s7,s7,a3
1c00b450:	f32b8a23          	sb	s2,-204(s7)
1c00b454:	c65a                	sw	s6,12(sp)
1c00b456:	bcd9                	j	1c00af2c <pos_libc_prf+0x7a2>
1c00b458:	01b98023          	sb	s11,0(s3)
1c00b45c:	02b00613          	li	a2,43
1c00b460:	00035663          	bgez	t1,1c00b46c <pos_libc_prf+0xce2>
1c00b464:	40600333          	neg	t1,t1
1c00b468:	02d00613          	li	a2,45
1c00b46c:	47a9                	li	a5,10
1c00b46e:	02f346b3          	div	a3,t1,a5
1c00b472:	00c980a3          	sb	a2,1(s3)
1c00b476:	0991                	addi	s3,s3,4
1c00b478:	02f367b3          	rem	a5,t1,a5
1c00b47c:	03068693          	addi	a3,a3,48
1c00b480:	fed98f23          	sb	a3,-2(s3)
1c00b484:	03078793          	addi	a5,a5,48
1c00b488:	fef98fa3          	sb	a5,-1(s3)
1c00b48c:	fceff06f          	j	1c00ac5a <pos_libc_prf+0x4d0>
1c00b490:	02d00793          	li	a5,45
1c00b494:	02f10223          	sb	a5,36(sp)
1c00b498:	800007b7          	lui	a5,0x80000
1c00b49c:	14f30e63          	beq	t1,a5,1c00b5f8 <pos_libc_prf+0xe6e>
1c00b4a0:	40600633          	neg	a2,t1
1c00b4a4:	02510693          	addi	a3,sp,37
1c00b4a8:	bb31                	j	1c00b1c4 <pos_libc_prf+0xa3a>
1c00b4aa:	4722                	lw	a4,8(sp)
1c00b4ac:	10070d63          	beqz	a4,1c00b5c6 <pos_libc_prf+0xe3c>
1c00b4b0:	02b00693          	li	a3,43
1c00b4b4:	02d10223          	sb	a3,36(sp)
1c00b4b8:	02510f13          	addi	t5,sp,37
1c00b4bc:	4301                	li	t1,0
1c00b4be:	4801                	li	a6,0
1c00b4c0:	d9cff06f          	j	1c00aa5c <pos_libc_prf+0x2d2>
1c00b4c4:	02414783          	lbu	a5,36(sp)
1c00b4c8:	98078ce3          	beqz	a5,1c00ae60 <pos_libc_prf+0x6d6>
1c00b4cc:	1054                	addi	a3,sp,36
1c00b4ce:	45e5                	li	a1,25
1c00b4d0:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00b4d4:	f9f78793          	addi	a5,a5,-97
1c00b4d8:	0ff7f793          	andi	a5,a5,255
1c00b4dc:	00f5e963          	bltu	a1,a5,1c00b4ee <pos_libc_prf+0xd64>
1c00b4e0:	0016c783          	lbu	a5,1(a3)
1c00b4e4:	00e68023          	sb	a4,0(a3)
1c00b4e8:	0685                	addi	a3,a3,1
1c00b4ea:	f3fd                	bnez	a5,1c00b4d0 <pos_libc_prf+0xd46>
1c00b4ec:	ba95                	j	1c00ae60 <pos_libc_prf+0x6d6>
1c00b4ee:	0016c783          	lbu	a5,1(a3)
1c00b4f2:	0685                	addi	a3,a3,1
1c00b4f4:	fff1                	bnez	a5,1c00b4d0 <pos_libc_prf+0xd46>
1c00b4f6:	b2ad                	j	1c00ae60 <pos_libc_prf+0x6d6>
1c00b4f8:	0c800793          	li	a5,200
1c00b4fc:	df37d0e3          	bge	a5,s3,1c00b2dc <pos_libc_prf+0xb52>
1c00b500:	547d                	li	s0,-1
1c00b502:	b02ff06f          	j	1c00a804 <pos_libc_prf+0x7a>
1c00b506:	864e                	mv	a2,s3
1c00b508:	1048                	addi	a0,sp,36
1c00b50a:	fc5fe0ef          	jal	ra,1c00a4ce <memcpy>
1c00b50e:	b3f9                	j	1c00b2dc <pos_libc_prf+0xb52>
1c00b510:	47f2                	lw	a5,28(sp)
1c00b512:	4601                	li	a2,0
1c00b514:	e399                	bnez	a5,1c00b51a <pos_libc_prf+0xd90>
1c00b516:	01503633          	snez	a2,s5
1c00b51a:	57f5                	li	a5,-3
1c00b51c:	001a8813          	addi	a6,s5,1
1c00b520:	00f34463          	blt	t1,a5,1c00b528 <pos_libc_prf+0xd9e>
1c00b524:	04685163          	bge	a6,t1,1c00b566 <pos_libc_prf+0xddc>
1c00b528:	47c1                	li	a5,16
1c00b52a:	0107d363          	bge	a5,a6,1c00b530 <pos_libc_prf+0xda6>
1c00b52e:	4841                	li	a6,16
1c00b530:	06700793          	li	a5,103
1c00b534:	187d                	addi	a6,a6,-1
1c00b536:	02fd8363          	beq	s11,a5,1c00b55c <pos_libc_prf+0xdd2>
1c00b53a:	04500d93          	li	s11,69
1c00b53e:	d70ff06f          	j	1c00aaae <pos_libc_prf+0x324>
1c00b542:	4a99                	li	s5,6
1c00b544:	d4fd9563          	bne	s11,a5,1c00aa8e <pos_libc_prf+0x304>
1c00b548:	4772                	lw	a4,28(sp)
1c00b54a:	4605                	li	a2,1
1c00b54c:	57f5                	li	a5,-3
1c00b54e:	8e19                	sub	a2,a2,a4
1c00b550:	00f34563          	blt	t1,a5,1c00b55a <pos_libc_prf+0xdd0>
1c00b554:	479d                	li	a5,7
1c00b556:	0067d863          	bge	a5,t1,1c00b566 <pos_libc_prf+0xddc>
1c00b55a:	4819                	li	a6,6
1c00b55c:	06500d93          	li	s11,101
1c00b560:	d4eff06f          	j	1c00aaae <pos_libc_prf+0x324>
1c00b564:	4601                	li	a2,0
1c00b566:	006a8833          	add	a6,s5,t1
1c00b56a:	0b005b63          	blez	a6,1c00b620 <pos_libc_prf+0xe96>
1c00b56e:	47c1                	li	a5,16
1c00b570:	0107d363          	bge	a5,a6,1c00b576 <pos_libc_prf+0xdec>
1c00b574:	4841                	li	a6,16
1c00b576:	187d                	addi	a6,a6,-1
1c00b578:	06600d93          	li	s11,102
1c00b57c:	d32ff06f          	j	1c00aaae <pos_libc_prf+0x324>
1c00b580:	4792                	lw	a5,4(sp)
1c00b582:	1054                	addi	a3,sp,36
1c00b584:	c40780e3          	beqz	a5,1c00b1c4 <pos_libc_prf+0xa3a>
1c00b588:	02000793          	li	a5,32
1c00b58c:	02f10223          	sb	a5,36(sp)
1c00b590:	02510693          	addi	a3,sp,37
1c00b594:	b905                	j	1c00b1c4 <pos_libc_prf+0xa3a>
1c00b596:	ffc80fa3          	sb	t3,-1(a6)
1c00b59a:	b30986e3          	beq	s3,a6,1c00b0c6 <pos_libc_prf+0x93c>
1c00b59e:	0805                	addi	a6,a6,1
1c00b5a0:	b4d5                	j	1c00b084 <pos_libc_prf+0x8fa>
1c00b5a2:	ffe80fa3          	sb	t5,-1(a6)
1c00b5a6:	0305                	addi	t1,t1,1
1c00b5a8:	b679                	j	1c00b136 <pos_libc_prf+0x9ac>
1c00b5aa:	020102a3          	sb	zero,37(sp)
1c00b5ae:	57fd                	li	a5,-1
1c00b5b0:	0cfa8263          	beq	s5,a5,1c00b674 <pos_libc_prf+0xeea>
1c00b5b4:	4785                	li	a5,1
1c00b5b6:	0b47c063          	blt	a5,s4,1c00b656 <pos_libc_prf+0xecc>
1c00b5ba:	4a72                	lw	s4,28(sp)
1c00b5bc:	c65a                	sw	s6,12(sp)
1c00b5be:	bcad                	j	1c00b038 <pos_libc_prf+0x8ae>
1c00b5c0:	8636                	mv	a2,a3
1c00b5c2:	b04ff06f          	j	1c00a8c6 <pos_libc_prf+0x13c>
1c00b5c6:	4712                	lw	a4,4(sp)
1c00b5c8:	c77d                	beqz	a4,1c00b6b6 <pos_libc_prf+0xf2c>
1c00b5ca:	02000693          	li	a3,32
1c00b5ce:	02d10223          	sb	a3,36(sp)
1c00b5d2:	4301                	li	t1,0
1c00b5d4:	4801                	li	a6,0
1c00b5d6:	02510f13          	addi	t5,sp,37
1c00b5da:	c82ff06f          	j	1c00aa5c <pos_libc_prf+0x2d2>
1c00b5de:	02d00693          	li	a3,45
1c00b5e2:	02d10223          	sb	a3,36(sp)
1c00b5e6:	02510f13          	addi	t5,sp,37
1c00b5ea:	b9cff06f          	j	1c00a986 <pos_libc_prf+0x1fc>
1c00b5ee:	0c800613          	li	a2,200
1c00b5f2:	960ad6e3          	bgez	s5,1c00af5e <pos_libc_prf+0x7d4>
1c00b5f6:	bf09                	j	1c00b508 <pos_libc_prf+0xd7e>
1c00b5f8:	80000637          	lui	a2,0x80000
1c00b5fc:	02510693          	addi	a3,sp,37
1c00b600:	b6d1                	j	1c00b1c4 <pos_libc_prf+0xa3a>
1c00b602:	ce02                	sw	zero,28(sp)
1c00b604:	bb5d                	j	1c00b3ba <pos_libc_prf+0xc30>
1c00b606:	4712                	lw	a4,4(sp)
1c00b608:	02410f13          	addi	t5,sp,36
1c00b60c:	b6070d63          	beqz	a4,1c00a986 <pos_libc_prf+0x1fc>
1c00b610:	02000693          	li	a3,32
1c00b614:	02d10223          	sb	a3,36(sp)
1c00b618:	02510f13          	addi	t5,sp,37
1c00b61c:	b6aff06f          	j	1c00a986 <pos_libc_prf+0x1fc>
1c00b620:	06600d93          	li	s11,102
1c00b624:	4781                	li	a5,0
1c00b626:	080006b7          	lui	a3,0x8000
1c00b62a:	ce8ff06f          	j	1c00ab12 <pos_libc_prf+0x388>
1c00b62e:	06b6e363          	bltu	a3,a1,1c00b694 <pos_libc_prf+0xf0a>
1c00b632:	04e00693          	li	a3,78
1c00b636:	04100613          	li	a2,65
1c00b63a:	00d78023          	sb	a3,0(a5)
1c00b63e:	00c780a3          	sb	a2,1(a5)
1c00b642:	00d78123          	sb	a3,2(a5)
1c00b646:	f44ff06f          	j	1c00ad8a <pos_libc_prf+0x600>
1c00b64a:	03000693          	li	a3,48
1c00b64e:	00df0023          	sb	a3,0(t5)
1c00b652:	4541                	li	a0,16
1c00b654:	bc95                	j	1c00b0c8 <pos_libc_prf+0x93e>
1c00b656:	4982                	lw	s3,0(sp)
1c00b658:	860992e3          	bnez	s3,1c00aebc <pos_libc_prf+0x732>
1c00b65c:	104c                	addi	a1,sp,36
1c00b65e:	fffa0993          	addi	s3,s4,-1 # ffff <__CTOR_LIST__-0x1bff0005>
1c00b662:	4609                	li	a2,2
1c00b664:	01358533          	add	a0,a1,s3
1c00b668:	f3dfe0ef          	jal	ra,1c00a5a4 <memmove>
1c00b66c:	02000913          	li	s2,32
1c00b670:	ce02                	sw	zero,28(sp)
1c00b672:	b3b9                	j	1c00b3c0 <pos_libc_prf+0xc36>
1c00b674:	49f2                	lw	s3,28(sp)
1c00b676:	b19d                	j	1c00b2dc <pos_libc_prf+0xb52>
1c00b678:	06900693          	li	a3,105
1c00b67c:	00d78023          	sb	a3,0(a5)
1c00b680:	06e00693          	li	a3,110
1c00b684:	00d780a3          	sb	a3,1(a5)
1c00b688:	06600693          	li	a3,102
1c00b68c:	00d78123          	sb	a3,2(a5)
1c00b690:	efaff06f          	j	1c00ad8a <pos_libc_prf+0x600>
1c00b694:	06e00693          	li	a3,110
1c00b698:	06100613          	li	a2,97
1c00b69c:	00d78023          	sb	a3,0(a5)
1c00b6a0:	00c780a3          	sb	a2,1(a5)
1c00b6a4:	00d78123          	sb	a3,2(a5)
1c00b6a8:	ee2ff06f          	j	1c00ad8a <pos_libc_prf+0x600>
1c00b6ac:	89f6                	mv	s3,t4
1c00b6ae:	a8061ae3          	bnez	a2,1c00b142 <pos_libc_prf+0x9b8>
1c00b6b2:	da8ff06f          	j	1c00ac5a <pos_libc_prf+0x4d0>
1c00b6b6:	4301                	li	t1,0
1c00b6b8:	4801                	li	a6,0
1c00b6ba:	02410f13          	addi	t5,sp,36
1c00b6be:	b9eff06f          	j	1c00aa5c <pos_libc_prf+0x2d2>

1c00b6c2 <pos_init_start>:
1c00b6c2:	1141                	addi	sp,sp,-16
1c00b6c4:	c422                	sw	s0,8(sp)
1c00b6c6:	1c000437          	lui	s0,0x1c000
1c00b6ca:	c606                	sw	ra,12(sp)
1c00b6cc:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b6d0:	c89fc0ef          	jal	ra,1c008358 <pos_soc_init>
1c00b6d4:	2a75                	jal	1c00b890 <pos_irq_init>
1c00b6d6:	22e5                	jal	1c00b8be <pos_soc_event_init>
1c00b6d8:	2225                	jal	1c00b800 <pos_allocs_init>
1c00b6da:	405c                	lw	a5,4(s0)
1c00b6dc:	c791                	beqz	a5,1c00b6e8 <pos_init_start+0x26>
1c00b6de:	0411                	addi	s0,s0,4
1c00b6e0:	0411                	addi	s0,s0,4
1c00b6e2:	9782                	jalr	a5
1c00b6e4:	401c                	lw	a5,0(s0)
1c00b6e6:	ffed                	bnez	a5,1c00b6e0 <pos_init_start+0x1e>
1c00b6e8:	86cff0ef          	jal	ra,1c00a754 <pos_io_start>
1c00b6ec:	300467f3          	csrrsi	a5,mstatus,8
1c00b6f0:	40b2                	lw	ra,12(sp)
1c00b6f2:	4422                	lw	s0,8(sp)
1c00b6f4:	0141                	addi	sp,sp,16
1c00b6f6:	8082                	ret

1c00b6f8 <pos_init_stop>:
1c00b6f8:	1141                	addi	sp,sp,-16
1c00b6fa:	c422                	sw	s0,8(sp)
1c00b6fc:	1c000437          	lui	s0,0x1c000
1c00b700:	c606                	sw	ra,12(sp)
1c00b702:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b706:	852ff0ef          	jal	ra,1c00a758 <pos_io_stop>
1c00b70a:	405c                	lw	a5,4(s0)
1c00b70c:	c791                	beqz	a5,1c00b718 <pos_init_stop+0x20>
1c00b70e:	0411                	addi	s0,s0,4
1c00b710:	0411                	addi	s0,s0,4
1c00b712:	9782                	jalr	a5
1c00b714:	401c                	lw	a5,0(s0)
1c00b716:	ffed                	bnez	a5,1c00b710 <pos_init_stop+0x18>
1c00b718:	40b2                	lw	ra,12(sp)
1c00b71a:	4422                	lw	s0,8(sp)
1c00b71c:	0141                	addi	sp,sp,16
1c00b71e:	8082                	ret

1c00b720 <pos_alloc_init>:
1c00b720:	00758793          	addi	a5,a1,7
1c00b724:	9be1                	andi	a5,a5,-8
1c00b726:	40b785b3          	sub	a1,a5,a1
1c00b72a:	c11c                	sw	a5,0(a0)
1c00b72c:	40b605b3          	sub	a1,a2,a1
1c00b730:	00b05663          	blez	a1,1c00b73c <pos_alloc_init+0x1c>
1c00b734:	99e1                	andi	a1,a1,-8
1c00b736:	c38c                	sw	a1,0(a5)
1c00b738:	0007a223          	sw	zero,4(a5)
1c00b73c:	8082                	ret

1c00b73e <pos_alloc>:
1c00b73e:	411c                	lw	a5,0(a0)
1c00b740:	00758713          	addi	a4,a1,7
1c00b744:	862a                	mv	a2,a0
1c00b746:	ff877593          	andi	a1,a4,-8
1c00b74a:	4681                	li	a3,0
1c00b74c:	e789                	bnez	a5,1c00b756 <pos_alloc+0x18>
1c00b74e:	a091                	j	1c00b792 <pos_alloc+0x54>
1c00b750:	86be                	mv	a3,a5
1c00b752:	c505                	beqz	a0,1c00b77a <pos_alloc+0x3c>
1c00b754:	87aa                	mv	a5,a0
1c00b756:	4398                	lw	a4,0(a5)
1c00b758:	43c8                	lw	a0,4(a5)
1c00b75a:	feb74be3          	blt	a4,a1,1c00b750 <pos_alloc+0x12>
1c00b75e:	00b70f63          	beq	a4,a1,1c00b77c <pos_alloc+0x3e>
1c00b762:	00b78833          	add	a6,a5,a1
1c00b766:	8f0d                	sub	a4,a4,a1
1c00b768:	00e82023          	sw	a4,0(a6)
1c00b76c:	00a82223          	sw	a0,4(a6)
1c00b770:	ca91                	beqz	a3,1c00b784 <pos_alloc+0x46>
1c00b772:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00b776:	853e                	mv	a0,a5
1c00b778:	8082                	ret
1c00b77a:	8082                	ret
1c00b77c:	ca81                	beqz	a3,1c00b78c <pos_alloc+0x4e>
1c00b77e:	c2c8                	sw	a0,4(a3)
1c00b780:	853e                	mv	a0,a5
1c00b782:	8082                	ret
1c00b784:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00b788:	853e                	mv	a0,a5
1c00b78a:	8082                	ret
1c00b78c:	c208                	sw	a0,0(a2)
1c00b78e:	853e                	mv	a0,a5
1c00b790:	8082                	ret
1c00b792:	4501                	li	a0,0
1c00b794:	8082                	ret

1c00b796 <pos_free>:
1c00b796:	411c                	lw	a5,0(a0)
1c00b798:	061d                	addi	a2,a2,7
1c00b79a:	9a61                	andi	a2,a2,-8
1c00b79c:	c7a1                	beqz	a5,1c00b7e4 <pos_free+0x4e>
1c00b79e:	00b7e563          	bltu	a5,a1,1c00b7a8 <pos_free+0x12>
1c00b7a2:	a089                	j	1c00b7e4 <pos_free+0x4e>
1c00b7a4:	00b7f563          	bgeu	a5,a1,1c00b7ae <pos_free+0x18>
1c00b7a8:	873e                	mv	a4,a5
1c00b7aa:	43dc                	lw	a5,4(a5)
1c00b7ac:	ffe5                	bnez	a5,1c00b7a4 <pos_free+0xe>
1c00b7ae:	00c586b3          	add	a3,a1,a2
1c00b7b2:	00d78b63          	beq	a5,a3,1c00b7c8 <pos_free+0x32>
1c00b7b6:	c190                	sw	a2,0(a1)
1c00b7b8:	4314                	lw	a3,0(a4)
1c00b7ba:	c1dc                	sw	a5,4(a1)
1c00b7bc:	00d70533          	add	a0,a4,a3
1c00b7c0:	00a58e63          	beq	a1,a0,1c00b7dc <pos_free+0x46>
1c00b7c4:	c34c                	sw	a1,4(a4)
1c00b7c6:	8082                	ret
1c00b7c8:	4394                	lw	a3,0(a5)
1c00b7ca:	43dc                	lw	a5,4(a5)
1c00b7cc:	9636                	add	a2,a2,a3
1c00b7ce:	c190                	sw	a2,0(a1)
1c00b7d0:	4314                	lw	a3,0(a4)
1c00b7d2:	c1dc                	sw	a5,4(a1)
1c00b7d4:	00d70533          	add	a0,a4,a3
1c00b7d8:	fea596e3          	bne	a1,a0,1c00b7c4 <pos_free+0x2e>
1c00b7dc:	9636                	add	a2,a2,a3
1c00b7de:	c310                	sw	a2,0(a4)
1c00b7e0:	c35c                	sw	a5,4(a4)
1c00b7e2:	8082                	ret
1c00b7e4:	00c58733          	add	a4,a1,a2
1c00b7e8:	00e78663          	beq	a5,a4,1c00b7f4 <pos_free+0x5e>
1c00b7ec:	c1dc                	sw	a5,4(a1)
1c00b7ee:	c190                	sw	a2,0(a1)
1c00b7f0:	c10c                	sw	a1,0(a0)
1c00b7f2:	8082                	ret
1c00b7f4:	4398                	lw	a4,0(a5)
1c00b7f6:	43dc                	lw	a5,4(a5)
1c00b7f8:	963a                	add	a2,a2,a4
1c00b7fa:	c1dc                	sw	a5,4(a1)
1c00b7fc:	c190                	sw	a2,0(a1)
1c00b7fe:	bfcd                	j	1c00b7f0 <pos_free+0x5a>

1c00b800 <pos_allocs_init>:
1c00b800:	1c0065b7          	lui	a1,0x1c006
1c00b804:	1141                	addi	sp,sp,-16
1c00b806:	3c858613          	addi	a2,a1,968 # 1c0063c8 <__l2_priv0_end>
1c00b80a:	1c0087b7          	lui	a5,0x1c008
1c00b80e:	c606                	sw	ra,12(sp)
1c00b810:	3c858593          	addi	a1,a1,968
1c00b814:	40c78633          	sub	a2,a5,a2
1c00b818:	04f5d863          	bge	a1,a5,1c00b868 <pos_allocs_init+0x68>
1c00b81c:	1c006537          	lui	a0,0x1c006
1c00b820:	3bc50513          	addi	a0,a0,956 # 1c0063bc <pos_alloc_l2>
1c00b824:	3df5                	jal	1c00b720 <pos_alloc_init>
1c00b826:	1c00c5b7          	lui	a1,0x1c00c
1c00b82a:	8d858613          	addi	a2,a1,-1832 # 1c00b8d8 <__l2_priv1_end>
1c00b82e:	1c0107b7          	lui	a5,0x1c010
1c00b832:	8d858593          	addi	a1,a1,-1832
1c00b836:	40c78633          	sub	a2,a5,a2
1c00b83a:	02f5da63          	bge	a1,a5,1c00b86e <pos_allocs_init+0x6e>
1c00b83e:	1c006537          	lui	a0,0x1c006
1c00b842:	3c050513          	addi	a0,a0,960 # 1c0063c0 <pos_alloc_l2+0x4>
1c00b846:	3de9                	jal	1c00b720 <pos_alloc_init>
1c00b848:	40b2                	lw	ra,12(sp)
1c00b84a:	1c0105b7          	lui	a1,0x1c010
1c00b84e:	00058793          	mv	a5,a1
1c00b852:	1c080637          	lui	a2,0x1c080
1c00b856:	1c006537          	lui	a0,0x1c006
1c00b85a:	8e1d                	sub	a2,a2,a5
1c00b85c:	00058593          	mv	a1,a1
1c00b860:	3c450513          	addi	a0,a0,964 # 1c0063c4 <pos_alloc_l2+0x8>
1c00b864:	0141                	addi	sp,sp,16
1c00b866:	bd6d                	j	1c00b720 <pos_alloc_init>
1c00b868:	4581                	li	a1,0
1c00b86a:	4601                	li	a2,0
1c00b86c:	bf45                	j	1c00b81c <pos_allocs_init+0x1c>
1c00b86e:	4581                	li	a1,0
1c00b870:	4601                	li	a2,0
1c00b872:	b7f1                	j	1c00b83e <pos_allocs_init+0x3e>

1c00b874 <pi_l2_malloc>:
1c00b874:	85aa                	mv	a1,a0
1c00b876:	1c006537          	lui	a0,0x1c006
1c00b87a:	3bc50513          	addi	a0,a0,956 # 1c0063bc <pos_alloc_l2>
1c00b87e:	b5c1                	j	1c00b73e <pos_alloc>

1c00b880 <pi_l2_free>:
1c00b880:	862e                	mv	a2,a1
1c00b882:	85aa                	mv	a1,a0
1c00b884:	1c006537          	lui	a0,0x1c006
1c00b888:	3bc50513          	addi	a0,a0,956 # 1c0063bc <pos_alloc_l2>
1c00b88c:	b729                	j	1c00b796 <pos_free>

1c00b88e <__rt_handle_illegal_instr>:
1c00b88e:	8082                	ret

1c00b890 <pos_irq_init>:
1c00b890:	1a10a737          	lui	a4,0x1a10a
1c00b894:	56fd                	li	a3,-1
1c00b896:	f14027f3          	csrr	a5,mhartid
1c00b89a:	8795                	srai	a5,a5,0x5
1c00b89c:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b8a0:	03f7f793          	andi	a5,a5,63
1c00b8a4:	477d                	li	a4,31
1c00b8a6:	00e78363          	beq	a5,a4,1c00b8ac <pos_irq_init+0x1c>
1c00b8aa:	8082                	ret
1c00b8ac:	1c0087b7          	lui	a5,0x1c008
1c00b8b0:	00078793          	mv	a5,a5
1c00b8b4:	0017e793          	ori	a5,a5,1
1c00b8b8:	30579073          	csrw	mtvec,a5
1c00b8bc:	8082                	ret

1c00b8be <pos_soc_event_init>:
1c00b8be:	1a1067b7          	lui	a5,0x1a106
1c00b8c2:	577d                	li	a4,-1
1c00b8c4:	c3d8                	sw	a4,4(a5)
1c00b8c6:	c798                	sw	a4,8(a5)
1c00b8c8:	c7d8                	sw	a4,12(a5)
1c00b8ca:	cb98                	sw	a4,16(a5)
1c00b8cc:	cbd8                	sw	a4,20(a5)
1c00b8ce:	cf98                	sw	a4,24(a5)
1c00b8d0:	cfd8                	sw	a4,28(a5)
1c00b8d2:	d398                	sw	a4,32(a5)
1c00b8d4:	8082                	ret

1c00b8d6 <_endtext>:
	...
