riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber768/keygen/build/keygen/keygen

/home/alessandra.dolmeta/pqc_riscv/test/kyber768/keygen/build/keygen/keygen:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	7940306f          	j	1c00b794 <__rt_handle_illegal_instr>
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
1c008084:	7100306f          	j	1c00b794 <__rt_handle_illegal_instr>

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
1c0080c4:	0d028293          	addi	t0,t0,208 # 1c006190 <in>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	14030313          	addi	t1,t1,320 # 1c006208 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	0b610113          	addi	sp,sp,182 # 1c006190 <in>
1c0080e2:	4e6030ef          	jal	ra,1c00b5c8 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	502030ef          	jal	ra,1c00b5fe <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	544020ef          	jal	ra,1c00a646 <exit>
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
1c008172:	4f0020ef          	jal	ra,1c00a662 <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	4960206f          	j	1c00a61c <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	1c000537          	lui	a0,0x1c000
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	7e912223          	sw	s1,2020(sp)
1c00819e:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0081a2:	9e010113          	addi	sp,sp,-1568
1c0081a6:	3fa020ef          	jal	ra,1c00a5a0 <puts>
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
1c0081ca:	1eb010ef          	jal	ra,1c009bb4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c0081ce:	1c000537          	lui	a0,0x1c000
1c0081d2:	13450513          	addi	a0,a0,308 # 1c000134 <__clz_tab+0x118>
1c0081d6:	3ca020ef          	jal	ra,1c00a5a0 <puts>
1c0081da:	1c000537          	lui	a0,0x1c000
1c0081de:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c0081e2:	3be020ef          	jal	ra,1c00a5a0 <puts>
1c0081e6:	4a000593          	li	a1,1184
1c0081ea:	8522                	mv	a0,s0
1c0081ec:	37a5                	jal	1c008154 <printbytes>
1c0081ee:	1c000537          	lui	a0,0x1c000
1c0081f2:	14850513          	addi	a0,a0,328 # 1c000148 <__clz_tab+0x12c>
1c0081f6:	3aa020ef          	jal	ra,1c00a5a0 <puts>
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
1c008292:	1e840413          	addi	s0,s0,488 # 1c0061e8 <pos_fll_freq>
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
1c0082be:	1e068693          	addi	a3,a3,480 # 1c0061e0 <pos_fll_is_on>
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
1c0082f8:	1e068693          	addi	a3,a3,480 # 1c0061e0 <pos_fll_is_on>
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
1c008342:	1e878793          	addi	a5,a5,488 # 1c0061e8 <pos_fll_freq>
1c008346:	0007a023          	sw	zero,0(a5)
1c00834a:	0007a223          	sw	zero,4(a5)
1c00834e:	1c0067b7          	lui	a5,0x1c006
1c008352:	1e079023          	sh	zero,480(a5) # 1c0061e0 <pos_fll_is_on>
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
1c00836a:	1f040413          	addi	s0,s0,496 # 1c0061f0 <pos_freq_domains>
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
1c008432:	0001                	nop
1c008434:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c008438:	0591                	addi	a1,a1,4
1c00843a:	fef5ae23          	sw	a5,-4(a1)
1c00843e:	fed59ae3          	bne	a1,a3,1c008432 <KYBER_poly_ntt+0x4c>
1c008442:	8082                	ret

1c008444 <KYBER_poly_pwm>:
1c008444:	1a4007b7          	lui	a5,0x1a400
1c008448:	4709                	li	a4,2
1c00844a:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00844e:	3007a423          	sw	zero,776(a5)
1c008452:	20058693          	addi	a3,a1,512
1c008456:	1a400737          	lui	a4,0x1a400
1c00845a:	419c                	lw	a5,0(a1)
1c00845c:	0591                	addi	a1,a1,4
1c00845e:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008462:	fed59ce3          	bne	a1,a3,1c00845a <KYBER_poly_pwm+0x16>
1c008466:	47a1                	li	a5,8
1c008468:	30f72423          	sw	a5,776(a4)
1c00846c:	30072423          	sw	zero,776(a4)
1c008470:	20060693          	addi	a3,a2,512
1c008474:	1a400737          	lui	a4,0x1a400
1c008478:	421c                	lw	a5,0(a2)
1c00847a:	0611                	addi	a2,a2,4
1c00847c:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008480:	fec69ce3          	bne	a3,a2,1c008478 <KYBER_poly_pwm+0x34>
1c008484:	10000793          	li	a5,256
1c008488:	30f72423          	sw	a5,776(a4)
1c00848c:	30072423          	sw	zero,776(a4)
1c008490:	1a400737          	lui	a4,0x1a400
1c008494:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c008498:	8b85                	andi	a5,a5,1
1c00849a:	dfed                	beqz	a5,1c008494 <KYBER_poly_pwm+0x50>
1c00849c:	47c1                	li	a5,16
1c00849e:	30f72423          	sw	a5,776(a4)
1c0084a2:	30072423          	sw	zero,776(a4)
1c0084a6:	20050693          	addi	a3,a0,512
1c0084aa:	1a400737          	lui	a4,0x1a400
1c0084ae:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c0084b2:	0511                	addi	a0,a0,4
1c0084b4:	fef52e23          	sw	a5,-4(a0)
1c0084b8:	fed51be3          	bne	a0,a3,1c0084ae <KYBER_poly_pwm+0x6a>
1c0084bc:	8082                	ret

1c0084be <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0084be:	1101                	addi	sp,sp,-32
1c0084c0:	55555f37          	lui	t5,0x55555
1c0084c4:	ce22                	sw	s0,28(sp)
1c0084c6:	cc26                	sw	s1,24(sp)
1c0084c8:	ca4a                	sw	s2,20(sp)
1c0084ca:	c84e                	sw	s3,16(sp)
1c0084cc:	c652                	sw	s4,12(sp)
1c0084ce:	20050f93          	addi	t6,a0,512
1c0084d2:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0084d6:	0015c683          	lbu	a3,1(a1)
1c0084da:	0005c603          	lbu	a2,0(a1)
1c0084de:	0025c783          	lbu	a5,2(a1)
1c0084e2:	0035c703          	lbu	a4,3(a1)
1c0084e6:	06a2                	slli	a3,a3,0x8
1c0084e8:	8ed1                	or	a3,a3,a2
1c0084ea:	07c2                	slli	a5,a5,0x10
1c0084ec:	8fd5                	or	a5,a5,a3
1c0084ee:	0762                	slli	a4,a4,0x18
1c0084f0:	8f5d                	or	a4,a4,a5
1c0084f2:	00175793          	srli	a5,a4,0x1
1c0084f6:	01e7f7b3          	and	a5,a5,t5
1c0084fa:	01e77733          	and	a4,a4,t5
1c0084fe:	97ba                	add	a5,a5,a4
1c008500:	0027da13          	srli	s4,a5,0x2
1c008504:	0047d313          	srli	t1,a5,0x4
1c008508:	0067d993          	srli	s3,a5,0x6
1c00850c:	0087d893          	srli	a7,a5,0x8
1c008510:	00a7d913          	srli	s2,a5,0xa
1c008514:	00c7d813          	srli	a6,a5,0xc
1c008518:	00e7d493          	srli	s1,a5,0xe
1c00851c:	0107d613          	srli	a2,a5,0x10
1c008520:	0127d413          	srli	s0,a5,0x12
1c008524:	0147d693          	srli	a3,a5,0x14
1c008528:	0167d393          	srli	t2,a5,0x16
1c00852c:	0187d713          	srli	a4,a5,0x18
1c008530:	01a7d293          	srli	t0,a5,0x1a
1c008534:	01c7de93          	srli	t4,a5,0x1c
1c008538:	0037fe13          	andi	t3,a5,3
1c00853c:	003a7a13          	andi	s4,s4,3
1c008540:	00337313          	andi	t1,t1,3
1c008544:	0039f993          	andi	s3,s3,3
1c008548:	0038f893          	andi	a7,a7,3
1c00854c:	00397913          	andi	s2,s2,3
1c008550:	00387813          	andi	a6,a6,3
1c008554:	888d                	andi	s1,s1,3
1c008556:	8a0d                	andi	a2,a2,3
1c008558:	880d                	andi	s0,s0,3
1c00855a:	8a8d                	andi	a3,a3,3
1c00855c:	0033f393          	andi	t2,t2,3
1c008560:	8b0d                	andi	a4,a4,3
1c008562:	0032f293          	andi	t0,t0,3
1c008566:	003efe93          	andi	t4,t4,3
1c00856a:	83f9                	srli	a5,a5,0x1e
1c00856c:	414e0e33          	sub	t3,t3,s4
1c008570:	41330333          	sub	t1,t1,s3
1c008574:	412888b3          	sub	a7,a7,s2
1c008578:	40980833          	sub	a6,a6,s1
1c00857c:	8e01                	sub	a2,a2,s0
1c00857e:	407686b3          	sub	a3,a3,t2
1c008582:	40570733          	sub	a4,a4,t0
1c008586:	40fe87b3          	sub	a5,t4,a5
1c00858a:	01c51023          	sh	t3,0(a0)
1c00858e:	00651123          	sh	t1,2(a0)
1c008592:	01151223          	sh	a7,4(a0)
1c008596:	01051323          	sh	a6,6(a0)
1c00859a:	00c51423          	sh	a2,8(a0)
1c00859e:	00d51523          	sh	a3,10(a0)
1c0085a2:	00e51623          	sh	a4,12(a0)
1c0085a6:	00f51723          	sh	a5,14(a0)
1c0085aa:	0541                	addi	a0,a0,16
1c0085ac:	0591                	addi	a1,a1,4
1c0085ae:	f3f514e3          	bne	a0,t6,1c0084d6 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0085b2:	4472                	lw	s0,28(sp)
1c0085b4:	44e2                	lw	s1,24(sp)
1c0085b6:	4952                	lw	s2,20(sp)
1c0085b8:	49c2                	lw	s3,16(sp)
1c0085ba:	4a32                	lw	s4,12(sp)
1c0085bc:	6105                	addi	sp,sp,32
1c0085be:	8082                	ret

1c0085c0 <keccak_absorb.constprop.1>:
1c0085c0:	7151                	addi	sp,sp,-240
1c0085c2:	d3a6                	sw	s1,228(sp)
1c0085c4:	cfce                	sw	s3,220(sp)
1c0085c6:	cdd2                	sw	s4,216(sp)
1c0085c8:	cbd6                	sw	s5,212(sp)
1c0085ca:	84b6                	mv	s1,a3
1c0085cc:	d786                	sw	ra,236(sp)
1c0085ce:	d5a2                	sw	s0,232(sp)
1c0085d0:	d1ca                	sw	s2,224(sp)
1c0085d2:	c9da                	sw	s6,208(sp)
1c0085d4:	8a2a                	mv	s4,a0
1c0085d6:	87ae                	mv	a5,a1
1c0085d8:	8ab2                	mv	s5,a2
1c0085da:	89aa                	mv	s3,a0
1c0085dc:	0c850693          	addi	a3,a0,200
1c0085e0:	872a                	mv	a4,a0
1c0085e2:	4581                	li	a1,0
1c0085e4:	4601                	li	a2,0
1c0085e6:	c30c                	sw	a1,0(a4)
1c0085e8:	c350                	sw	a2,4(a4)
1c0085ea:	0721                	addi	a4,a4,8
1c0085ec:	fee69be3          	bne	a3,a4,1c0085e2 <keccak_absorb.constprop.1+0x22>
1c0085f0:	08700713          	li	a4,135
1c0085f4:	09577363          	bgeu	a4,s5,1c00867a <keccak_absorb.constprop.1+0xba>
1c0085f8:	08878b13          	addi	s6,a5,136
1c0085fc:	895a                	mv	s2,s6
1c0085fe:	08700413          	li	s0,135
1c008602:	86d2                	mv	a3,s4
1c008604:	0017c703          	lbu	a4,1(a5)
1c008608:	0027ce03          	lbu	t3,2(a5)
1c00860c:	0057c803          	lbu	a6,5(a5)
1c008610:	0047cf03          	lbu	t5,4(a5)
1c008614:	0067c503          	lbu	a0,6(a5)
1c008618:	0007ce83          	lbu	t4,0(a5)
1c00861c:	0037c583          	lbu	a1,3(a5)
1c008620:	0077c603          	lbu	a2,7(a5)
1c008624:	0722                	slli	a4,a4,0x8
1c008626:	0e42                	slli	t3,t3,0x10
1c008628:	0822                	slli	a6,a6,0x8
1c00862a:	0006a303          	lw	t1,0(a3)
1c00862e:	0046a883          	lw	a7,4(a3)
1c008632:	01c76733          	or	a4,a4,t3
1c008636:	01e86833          	or	a6,a6,t5
1c00863a:	0542                	slli	a0,a0,0x10
1c00863c:	01d76733          	or	a4,a4,t4
1c008640:	05e2                	slli	a1,a1,0x18
1c008642:	01056533          	or	a0,a0,a6
1c008646:	0662                	slli	a2,a2,0x18
1c008648:	8f4d                	or	a4,a4,a1
1c00864a:	8e49                	or	a2,a2,a0
1c00864c:	00e34733          	xor	a4,t1,a4
1c008650:	00c8c633          	xor	a2,a7,a2
1c008654:	c298                	sw	a4,0(a3)
1c008656:	c2d0                	sw	a2,4(a3)
1c008658:	07a1                	addi	a5,a5,8
1c00865a:	06a1                	addi	a3,a3,8
1c00865c:	faf914e3          	bne	s2,a5,1c008604 <keccak_absorb.constprop.1+0x44>
1c008660:	85d2                	mv	a1,s4
1c008662:	8552                	mv	a0,s4
1c008664:	3b29                	jal	1c00837e <KeccakF1600_StatePermute>
1c008666:	f78a8a93          	addi	s5,s5,-136
1c00866a:	08890913          	addi	s2,s2,136
1c00866e:	87da                	mv	a5,s6
1c008670:	01547563          	bgeu	s0,s5,1c00867a <keccak_absorb.constprop.1+0xba>
1c008674:	088b0b13          	addi	s6,s6,136
1c008678:	b769                	j	1c008602 <keccak_absorb.constprop.1+0x42>
1c00867a:	0038                	addi	a4,sp,8
1c00867c:	09010e13          	addi	t3,sp,144
1c008680:	86ba                	mv	a3,a4
1c008682:	0006a023          	sw	zero,0(a3)
1c008686:	0691                	addi	a3,a3,4
1c008688:	fede1de3          	bne	t3,a3,1c008682 <keccak_absorb.constprop.1+0xc2>
1c00868c:	080a8263          	beqz	s5,1c008710 <keccak_absorb.constprop.1+0x150>
1c008690:	fffa8693          	addi	a3,s5,-1
1c008694:	4609                	li	a2,2
1c008696:	10d67163          	bgeu	a2,a3,1c008798 <keccak_absorb.constprop.1+0x1d8>
1c00869a:	ffcaf313          	andi	t1,s5,-4
1c00869e:	86be                	mv	a3,a5
1c0086a0:	933e                	add	t1,t1,a5
1c0086a2:	883a                	mv	a6,a4
1c0086a4:	0016c503          	lbu	a0,1(a3)
1c0086a8:	0006c883          	lbu	a7,0(a3)
1c0086ac:	0026c583          	lbu	a1,2(a3)
1c0086b0:	0036c603          	lbu	a2,3(a3)
1c0086b4:	0522                	slli	a0,a0,0x8
1c0086b6:	01156533          	or	a0,a0,a7
1c0086ba:	05c2                	slli	a1,a1,0x10
1c0086bc:	8dc9                	or	a1,a1,a0
1c0086be:	0662                	slli	a2,a2,0x18
1c0086c0:	8e4d                	or	a2,a2,a1
1c0086c2:	00c82023          	sw	a2,0(a6)
1c0086c6:	0691                	addi	a3,a3,4
1c0086c8:	0811                	addi	a6,a6,4
1c0086ca:	fcd31de3          	bne	t1,a3,1c0086a4 <keccak_absorb.constprop.1+0xe4>
1c0086ce:	ffcaf693          	andi	a3,s5,-4
1c0086d2:	02da8f63          	beq	s5,a3,1c008710 <keccak_absorb.constprop.1+0x150>
1c0086d6:	00d78633          	add	a2,a5,a3
1c0086da:	00064503          	lbu	a0,0(a2)
1c0086de:	098c                	addi	a1,sp,208
1c0086e0:	95b6                	add	a1,a1,a3
1c0086e2:	00168613          	addi	a2,a3,1
1c0086e6:	f2a58c23          	sb	a0,-200(a1)
1c0086ea:	03567363          	bgeu	a2,s5,1c008710 <keccak_absorb.constprop.1+0x150>
1c0086ee:	00c785b3          	add	a1,a5,a2
1c0086f2:	0005c583          	lbu	a1,0(a1)
1c0086f6:	0988                	addi	a0,sp,208
1c0086f8:	962a                	add	a2,a2,a0
1c0086fa:	0689                	addi	a3,a3,2
1c0086fc:	f2b60c23          	sb	a1,-200(a2)
1c008700:	0156f863          	bgeu	a3,s5,1c008710 <keccak_absorb.constprop.1+0x150>
1c008704:	97b6                	add	a5,a5,a3
1c008706:	0007c783          	lbu	a5,0(a5)
1c00870a:	96aa                	add	a3,a3,a0
1c00870c:	f2f68c23          	sb	a5,-200(a3)
1c008710:	099c                	addi	a5,sp,208
1c008712:	9abe                	add	s5,s5,a5
1c008714:	f29a8c23          	sb	s1,-200(s5)
1c008718:	08f14783          	lbu	a5,143(sp)
1c00871c:	f807e793          	ori	a5,a5,-128
1c008720:	08f107a3          	sb	a5,143(sp)
1c008724:	00174783          	lbu	a5,1(a4)
1c008728:	00274303          	lbu	t1,2(a4)
1c00872c:	00574503          	lbu	a0,5(a4)
1c008730:	00474f03          	lbu	t5,4(a4)
1c008734:	00674583          	lbu	a1,6(a4)
1c008738:	00074e83          	lbu	t4,0(a4)
1c00873c:	00374603          	lbu	a2,3(a4)
1c008740:	00774683          	lbu	a3,7(a4)
1c008744:	07a2                	slli	a5,a5,0x8
1c008746:	0342                	slli	t1,t1,0x10
1c008748:	0522                	slli	a0,a0,0x8
1c00874a:	0009a883          	lw	a7,0(s3)
1c00874e:	0049a803          	lw	a6,4(s3)
1c008752:	0067e7b3          	or	a5,a5,t1
1c008756:	01e56533          	or	a0,a0,t5
1c00875a:	05c2                	slli	a1,a1,0x10
1c00875c:	01d7e7b3          	or	a5,a5,t4
1c008760:	0662                	slli	a2,a2,0x18
1c008762:	8dc9                	or	a1,a1,a0
1c008764:	06e2                	slli	a3,a3,0x18
1c008766:	8e5d                	or	a2,a2,a5
1c008768:	00b6e7b3          	or	a5,a3,a1
1c00876c:	00c8c633          	xor	a2,a7,a2
1c008770:	00f847b3          	xor	a5,a6,a5
1c008774:	00c9a023          	sw	a2,0(s3)
1c008778:	00f9a223          	sw	a5,4(s3)
1c00877c:	0721                	addi	a4,a4,8
1c00877e:	09a1                	addi	s3,s3,8
1c008780:	faee12e3          	bne	t3,a4,1c008724 <keccak_absorb.constprop.1+0x164>
1c008784:	50be                	lw	ra,236(sp)
1c008786:	542e                	lw	s0,232(sp)
1c008788:	549e                	lw	s1,228(sp)
1c00878a:	590e                	lw	s2,224(sp)
1c00878c:	49fe                	lw	s3,220(sp)
1c00878e:	4a6e                	lw	s4,216(sp)
1c008790:	4ade                	lw	s5,212(sp)
1c008792:	4b4e                	lw	s6,208(sp)
1c008794:	616d                	addi	sp,sp,240
1c008796:	8082                	ret
1c008798:	4681                	li	a3,0
1c00879a:	bf35                	j	1c0086d6 <keccak_absorb.constprop.1+0x116>

1c00879c <shake128_absorb>:
1c00879c:	7151                	addi	sp,sp,-240
1c00879e:	cfce                	sw	s3,220(sp)
1c0087a0:	89aa                	mv	s3,a0
1c0087a2:	0c800513          	li	a0,200
1c0087a6:	d5a2                	sw	s0,232(sp)
1c0087a8:	d3a6                	sw	s1,228(sp)
1c0087aa:	d786                	sw	ra,236(sp)
1c0087ac:	d1ca                	sw	s2,224(sp)
1c0087ae:	842e                	mv	s0,a1
1c0087b0:	84b2                	mv	s1,a2
1c0087b2:	7c9020ef          	jal	ra,1c00b77a <pi_l2_malloc>
1c0087b6:	00a9a023          	sw	a0,0(s3)
1c0087ba:	1c050363          	beqz	a0,1c008980 <shake128_absorb+0x1e4>
1c0087be:	892a                	mv	s2,a0
1c0087c0:	0c850713          	addi	a4,a0,200
1c0087c4:	87aa                	mv	a5,a0
1c0087c6:	4601                	li	a2,0
1c0087c8:	4681                	li	a3,0
1c0087ca:	c390                	sw	a2,0(a5)
1c0087cc:	c3d4                	sw	a3,4(a5)
1c0087ce:	07a1                	addi	a5,a5,8
1c0087d0:	fef71be3          	bne	a4,a5,1c0087c6 <shake128_absorb+0x2a>
1c0087d4:	0a700793          	li	a5,167
1c0087d8:	0897f063          	bgeu	a5,s1,1c008858 <shake128_absorb+0xbc>
1c0087dc:	0a700993          	li	s3,167
1c0087e0:	87a2                	mv	a5,s0
1c0087e2:	40890eb3          	sub	t4,s2,s0
1c0087e6:	0a840413          	addi	s0,s0,168
1c0087ea:	0017c703          	lbu	a4,1(a5)
1c0087ee:	0027ce03          	lbu	t3,2(a5)
1c0087f2:	0057c503          	lbu	a0,5(a5)
1c0087f6:	0047cf83          	lbu	t6,4(a5)
1c0087fa:	0067c583          	lbu	a1,6(a5)
1c0087fe:	0007cf03          	lbu	t5,0(a5)
1c008802:	0037c603          	lbu	a2,3(a5)
1c008806:	0077c683          	lbu	a3,7(a5)
1c00880a:	00fe8833          	add	a6,t4,a5
1c00880e:	0722                	slli	a4,a4,0x8
1c008810:	0e42                	slli	t3,t3,0x10
1c008812:	0522                	slli	a0,a0,0x8
1c008814:	00082303          	lw	t1,0(a6)
1c008818:	00482883          	lw	a7,4(a6)
1c00881c:	01c76733          	or	a4,a4,t3
1c008820:	01f56533          	or	a0,a0,t6
1c008824:	05c2                	slli	a1,a1,0x10
1c008826:	01e76733          	or	a4,a4,t5
1c00882a:	0662                	slli	a2,a2,0x18
1c00882c:	8dc9                	or	a1,a1,a0
1c00882e:	06e2                	slli	a3,a3,0x18
1c008830:	8f51                	or	a4,a4,a2
1c008832:	8ecd                	or	a3,a3,a1
1c008834:	00e34733          	xor	a4,t1,a4
1c008838:	00d8c6b3          	xor	a3,a7,a3
1c00883c:	00e82023          	sw	a4,0(a6)
1c008840:	00d82223          	sw	a3,4(a6)
1c008844:	07a1                	addi	a5,a5,8
1c008846:	faf412e3          	bne	s0,a5,1c0087ea <shake128_absorb+0x4e>
1c00884a:	f5848493          	addi	s1,s1,-168
1c00884e:	85ca                	mv	a1,s2
1c008850:	854a                	mv	a0,s2
1c008852:	3635                	jal	1c00837e <KeccakF1600_StatePermute>
1c008854:	f899e6e3          	bltu	s3,s1,1c0087e0 <shake128_absorb+0x44>
1c008858:	0b010313          	addi	t1,sp,176
1c00885c:	003c                	addi	a5,sp,8
1c00885e:	0007a023          	sw	zero,0(a5)
1c008862:	0791                	addi	a5,a5,4
1c008864:	fef31de3          	bne	t1,a5,1c00885e <shake128_absorb+0xc2>
1c008868:	c0d9                	beqz	s1,1c0088ee <shake128_absorb+0x152>
1c00886a:	fff48793          	addi	a5,s1,-1
1c00886e:	4709                	li	a4,2
1c008870:	10f77663          	bgeu	a4,a5,1c00897c <shake128_absorb+0x1e0>
1c008874:	ffc4f593          	andi	a1,s1,-4
1c008878:	87a2                	mv	a5,s0
1c00887a:	95a2                	add	a1,a1,s0
1c00887c:	0028                	addi	a0,sp,8
1c00887e:	0017c603          	lbu	a2,1(a5)
1c008882:	0007c803          	lbu	a6,0(a5)
1c008886:	0027c683          	lbu	a3,2(a5)
1c00888a:	0037c703          	lbu	a4,3(a5)
1c00888e:	0622                	slli	a2,a2,0x8
1c008890:	01066633          	or	a2,a2,a6
1c008894:	06c2                	slli	a3,a3,0x10
1c008896:	8ed1                	or	a3,a3,a2
1c008898:	0762                	slli	a4,a4,0x18
1c00889a:	8f55                	or	a4,a4,a3
1c00889c:	c118                	sw	a4,0(a0)
1c00889e:	0791                	addi	a5,a5,4
1c0088a0:	0511                	addi	a0,a0,4
1c0088a2:	fcf59ee3          	bne	a1,a5,1c00887e <shake128_absorb+0xe2>
1c0088a6:	ffc4f793          	andi	a5,s1,-4
1c0088aa:	04f48263          	beq	s1,a5,1c0088ee <shake128_absorb+0x152>
1c0088ae:	00f40733          	add	a4,s0,a5
1c0088b2:	00074603          	lbu	a2,0(a4)
1c0088b6:	0994                	addi	a3,sp,208
1c0088b8:	96be                	add	a3,a3,a5
1c0088ba:	00178713          	addi	a4,a5,1
1c0088be:	f2c68c23          	sb	a2,-200(a3)
1c0088c2:	02977663          	bgeu	a4,s1,1c0088ee <shake128_absorb+0x152>
1c0088c6:	00e406b3          	add	a3,s0,a4
1c0088ca:	0006c603          	lbu	a2,0(a3)
1c0088ce:	0994                	addi	a3,sp,208
1c0088d0:	96ba                	add	a3,a3,a4
1c0088d2:	f2c68c23          	sb	a2,-200(a3)
1c0088d6:	00278713          	addi	a4,a5,2
1c0088da:	00977a63          	bgeu	a4,s1,1c0088ee <shake128_absorb+0x152>
1c0088de:	00e407b3          	add	a5,s0,a4
1c0088e2:	0007c683          	lbu	a3,0(a5)
1c0088e6:	099c                	addi	a5,sp,208
1c0088e8:	97ba                	add	a5,a5,a4
1c0088ea:	f2d78c23          	sb	a3,-200(a5)
1c0088ee:	099c                	addi	a5,sp,208
1c0088f0:	00978633          	add	a2,a5,s1
1c0088f4:	47fd                	li	a5,31
1c0088f6:	f2f60c23          	sb	a5,-200(a2)
1c0088fa:	0af14703          	lbu	a4,175(sp)
1c0088fe:	003c                	addi	a5,sp,8
1c008900:	40f90933          	sub	s2,s2,a5
1c008904:	f8076713          	ori	a4,a4,-128
1c008908:	0ae107a3          	sb	a4,175(sp)
1c00890c:	0017c703          	lbu	a4,1(a5)
1c008910:	0027cf83          	lbu	t6,2(a5)
1c008914:	0057c883          	lbu	a7,5(a5)
1c008918:	0047c503          	lbu	a0,4(a5)
1c00891c:	0067c803          	lbu	a6,6(a5)
1c008920:	0007c583          	lbu	a1,0(a5)
1c008924:	0037c603          	lbu	a2,3(a5)
1c008928:	0077c683          	lbu	a3,7(a5)
1c00892c:	00f90e33          	add	t3,s2,a5
1c008930:	0722                	slli	a4,a4,0x8
1c008932:	0fc2                	slli	t6,t6,0x10
1c008934:	08a2                	slli	a7,a7,0x8
1c008936:	000e2f03          	lw	t5,0(t3)
1c00893a:	004e2e83          	lw	t4,4(t3)
1c00893e:	01f76733          	or	a4,a4,t6
1c008942:	00a8e8b3          	or	a7,a7,a0
1c008946:	0842                	slli	a6,a6,0x10
1c008948:	8f4d                	or	a4,a4,a1
1c00894a:	0662                	slli	a2,a2,0x18
1c00894c:	01186833          	or	a6,a6,a7
1c008950:	06e2                	slli	a3,a3,0x18
1c008952:	8f51                	or	a4,a4,a2
1c008954:	0106e6b3          	or	a3,a3,a6
1c008958:	00ef4733          	xor	a4,t5,a4
1c00895c:	00dec6b3          	xor	a3,t4,a3
1c008960:	00ee2023          	sw	a4,0(t3)
1c008964:	00de2223          	sw	a3,4(t3)
1c008968:	07a1                	addi	a5,a5,8
1c00896a:	faf311e3          	bne	t1,a5,1c00890c <shake128_absorb+0x170>
1c00896e:	50be                	lw	ra,236(sp)
1c008970:	542e                	lw	s0,232(sp)
1c008972:	549e                	lw	s1,228(sp)
1c008974:	590e                	lw	s2,224(sp)
1c008976:	49fe                	lw	s3,220(sp)
1c008978:	616d                	addi	sp,sp,240
1c00897a:	8082                	ret
1c00897c:	4781                	li	a5,0
1c00897e:	bf05                	j	1c0088ae <shake128_absorb+0x112>
1c008980:	06f00513          	li	a0,111
1c008984:	4c3010ef          	jal	ra,1c00a646 <exit>

1c008988 <shake128_squeezeblocks>:
1c008988:	1101                	addi	sp,sp,-32
1c00898a:	c05a                	sw	s6,0(sp)
1c00898c:	ce06                	sw	ra,28(sp)
1c00898e:	cc22                	sw	s0,24(sp)
1c008990:	ca26                	sw	s1,20(sp)
1c008992:	c84a                	sw	s2,16(sp)
1c008994:	c64e                	sw	s3,12(sp)
1c008996:	c452                	sw	s4,8(sp)
1c008998:	c256                	sw	s5,4(sp)
1c00899a:	00062b03          	lw	s6,0(a2)
1c00899e:	c5e9                	beqz	a1,1c008a68 <shake128_squeezeblocks+0xe0>
1c0089a0:	7ac1                	lui	s5,0xffff0
1c0089a2:	ff010a37          	lui	s4,0xff010
1c0089a6:	010009b7          	lui	s3,0x1000
1c0089aa:	84ae                	mv	s1,a1
1c0089ac:	892a                	mv	s2,a0
1c0089ae:	0a8b0413          	addi	s0,s6,168
1c0089b2:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c0089b6:	1a7d                	addi	s4,s4,-1
1c0089b8:	19fd                	addi	s3,s3,-1
1c0089ba:	85da                	mv	a1,s6
1c0089bc:	855a                	mv	a0,s6
1c0089be:	32c1                	jal	1c00837e <KeccakF1600_StatePermute>
1c0089c0:	85da                	mv	a1,s6
1c0089c2:	00490813          	addi	a6,s2,4
1c0089c6:	4198                	lw	a4,0(a1)
1c0089c8:	41dc                	lw	a5,4(a1)
1c0089ca:	05a1                	addi	a1,a1,8
1c0089cc:	00875893          	srli	a7,a4,0x8
1c0089d0:	0087d513          	srli	a0,a5,0x8
1c0089d4:	0ff77613          	andi	a2,a4,255
1c0089d8:	0ff7f693          	andi	a3,a5,255
1c0089dc:	0ff8f893          	andi	a7,a7,255
1c0089e0:	0ff57513          	andi	a0,a0,255
1c0089e4:	08a2                	slli	a7,a7,0x8
1c0089e6:	0522                	slli	a0,a0,0x8
1c0089e8:	01567633          	and	a2,a2,s5
1c0089ec:	0156f6b3          	and	a3,a3,s5
1c0089f0:	01166633          	or	a2,a2,a7
1c0089f4:	8ec9                	or	a3,a3,a0
1c0089f6:	00ff08b7          	lui	a7,0xff0
1c0089fa:	00ff0537          	lui	a0,0xff0
1c0089fe:	011778b3          	and	a7,a4,a7
1c008a02:	8d7d                	and	a0,a0,a5
1c008a04:	01467633          	and	a2,a2,s4
1c008a08:	0146f6b3          	and	a3,a3,s4
1c008a0c:	01166633          	or	a2,a2,a7
1c008a10:	8ec9                	or	a3,a3,a0
1c008a12:	8361                	srli	a4,a4,0x18
1c008a14:	83e1                	srli	a5,a5,0x18
1c008a16:	01367633          	and	a2,a2,s3
1c008a1a:	0136f6b3          	and	a3,a3,s3
1c008a1e:	0762                	slli	a4,a4,0x18
1c008a20:	07e2                	slli	a5,a5,0x18
1c008a22:	8f51                	or	a4,a4,a2
1c008a24:	8fd5                	or	a5,a5,a3
1c008a26:	00875e13          	srli	t3,a4,0x8
1c008a2a:	01075313          	srli	t1,a4,0x10
1c008a2e:	0087d893          	srli	a7,a5,0x8
1c008a32:	0107d513          	srli	a0,a5,0x10
1c008a36:	8361                	srli	a4,a4,0x18
1c008a38:	83e1                	srli	a5,a5,0x18
1c008a3a:	fec80e23          	sb	a2,-4(a6)
1c008a3e:	ffc80ea3          	sb	t3,-3(a6)
1c008a42:	fe680f23          	sb	t1,-2(a6)
1c008a46:	fee80fa3          	sb	a4,-1(a6)
1c008a4a:	00d80023          	sb	a3,0(a6)
1c008a4e:	011800a3          	sb	a7,1(a6)
1c008a52:	00a80123          	sb	a0,2(a6)
1c008a56:	00f801a3          	sb	a5,3(a6)
1c008a5a:	0821                	addi	a6,a6,8
1c008a5c:	f6b415e3          	bne	s0,a1,1c0089c6 <shake128_squeezeblocks+0x3e>
1c008a60:	14fd                	addi	s1,s1,-1
1c008a62:	0a890913          	addi	s2,s2,168
1c008a66:	f8b1                	bnez	s1,1c0089ba <shake128_squeezeblocks+0x32>
1c008a68:	40f2                	lw	ra,28(sp)
1c008a6a:	4462                	lw	s0,24(sp)
1c008a6c:	44d2                	lw	s1,20(sp)
1c008a6e:	4942                	lw	s2,16(sp)
1c008a70:	49b2                	lw	s3,12(sp)
1c008a72:	4a22                	lw	s4,8(sp)
1c008a74:	4a92                	lw	s5,4(sp)
1c008a76:	4b02                	lw	s6,0(sp)
1c008a78:	6105                	addi	sp,sp,32
1c008a7a:	8082                	ret

1c008a7c <shake128_ctx_release>:
1c008a7c:	4108                	lw	a0,0(a0)
1c008a7e:	0c800593          	li	a1,200
1c008a82:	5050206f          	j	1c00b786 <pi_l2_free>

1c008a86 <shake256>:
1c008a86:	7131                	addi	sp,sp,-192
1c008a88:	db26                	sw	s1,180(sp)
1c008a8a:	d74e                	sw	s3,172(sp)
1c008a8c:	84aa                	mv	s1,a0
1c008a8e:	08800993          	li	s3,136
1c008a92:	0c800513          	li	a0,200
1c008a96:	dd22                	sw	s0,184(sp)
1c008a98:	d94a                	sw	s2,176(sp)
1c008a9a:	d356                	sw	s5,164(sp)
1c008a9c:	df06                	sw	ra,188(sp)
1c008a9e:	d552                	sw	s4,168(sp)
1c008aa0:	d15a                	sw	s6,160(sp)
1c008aa2:	cf5e                	sw	s7,156(sp)
1c008aa4:	cd62                	sw	s8,152(sp)
1c008aa6:	0335d9b3          	divu	s3,a1,s3
1c008aaa:	892e                	mv	s2,a1
1c008aac:	8432                	mv	s0,a2
1c008aae:	8ab6                	mv	s5,a3
1c008ab0:	4cb020ef          	jal	ra,1c00b77a <pi_l2_malloc>
1c008ab4:	24050663          	beqz	a0,1c008d00 <shake256+0x27a>
1c008ab8:	46fd                	li	a3,31
1c008aba:	8656                	mv	a2,s5
1c008abc:	85a2                	mv	a1,s0
1c008abe:	8a2a                	mv	s4,a0
1c008ac0:	3601                	jal	1c0085c0 <keccak_absorb.constprop.1>
1c008ac2:	08700793          	li	a5,135
1c008ac6:	0d27fe63          	bgeu	a5,s2,1c008ba2 <shake256+0x11c>
1c008aca:	00499413          	slli	s0,s3,0x4
1c008ace:	944e                	add	s0,s0,s3
1c008ad0:	040e                	slli	s0,s0,0x3
1c008ad2:	7bc1                	lui	s7,0xffff0
1c008ad4:	ff010b37          	lui	s6,0xff010
1c008ad8:	01000ab7          	lui	s5,0x1000
1c008adc:	9426                	add	s0,s0,s1
1c008ade:	8c26                	mv	s8,s1
1c008ae0:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008ae4:	1b7d                	addi	s6,s6,-1
1c008ae6:	1afd                	addi	s5,s5,-1
1c008ae8:	85d2                	mv	a1,s4
1c008aea:	8552                	mv	a0,s4
1c008aec:	3849                	jal	1c00837e <KeccakF1600_StatePermute>
1c008aee:	87e2                	mv	a5,s8
1c008af0:	418a0533          	sub	a0,s4,s8
1c008af4:	088c0593          	addi	a1,s8,136
1c008af8:	00f50733          	add	a4,a0,a5
1c008afc:	4314                	lw	a3,0(a4)
1c008afe:	4358                	lw	a4,4(a4)
1c008b00:	07a1                	addi	a5,a5,8
1c008b02:	0086d313          	srli	t1,a3,0x8
1c008b06:	00875893          	srli	a7,a4,0x8
1c008b0a:	0ff6f813          	andi	a6,a3,255
1c008b0e:	0ff77613          	andi	a2,a4,255
1c008b12:	0ff37313          	andi	t1,t1,255
1c008b16:	0ff8f893          	andi	a7,a7,255
1c008b1a:	0322                	slli	t1,t1,0x8
1c008b1c:	08a2                	slli	a7,a7,0x8
1c008b1e:	01787833          	and	a6,a6,s7
1c008b22:	01767633          	and	a2,a2,s7
1c008b26:	00686833          	or	a6,a6,t1
1c008b2a:	01166633          	or	a2,a2,a7
1c008b2e:	00ff0337          	lui	t1,0xff0
1c008b32:	00ff08b7          	lui	a7,0xff0
1c008b36:	0066f333          	and	t1,a3,t1
1c008b3a:	011778b3          	and	a7,a4,a7
1c008b3e:	01687833          	and	a6,a6,s6
1c008b42:	01667633          	and	a2,a2,s6
1c008b46:	00686833          	or	a6,a6,t1
1c008b4a:	01166633          	or	a2,a2,a7
1c008b4e:	82e1                	srli	a3,a3,0x18
1c008b50:	8361                	srli	a4,a4,0x18
1c008b52:	01587833          	and	a6,a6,s5
1c008b56:	01567633          	and	a2,a2,s5
1c008b5a:	06e2                	slli	a3,a3,0x18
1c008b5c:	0762                	slli	a4,a4,0x18
1c008b5e:	00d866b3          	or	a3,a6,a3
1c008b62:	8f51                	or	a4,a4,a2
1c008b64:	0086de93          	srli	t4,a3,0x8
1c008b68:	0106de13          	srli	t3,a3,0x10
1c008b6c:	00875313          	srli	t1,a4,0x8
1c008b70:	01075893          	srli	a7,a4,0x10
1c008b74:	82e1                	srli	a3,a3,0x18
1c008b76:	8361                	srli	a4,a4,0x18
1c008b78:	ff078c23          	sb	a6,-8(a5)
1c008b7c:	ffd78ca3          	sb	t4,-7(a5)
1c008b80:	ffc78d23          	sb	t3,-6(a5)
1c008b84:	fed78da3          	sb	a3,-5(a5)
1c008b88:	fec78e23          	sb	a2,-4(a5)
1c008b8c:	fe678ea3          	sb	t1,-3(a5)
1c008b90:	ff178f23          	sb	a7,-2(a5)
1c008b94:	fee78fa3          	sb	a4,-1(a5)
1c008b98:	f6f590e3          	bne	a1,a5,1c008af8 <shake256+0x72>
1c008b9c:	8c2e                	mv	s8,a1
1c008b9e:	f48595e3          	bne	a1,s0,1c008ae8 <shake256+0x62>
1c008ba2:	08800593          	li	a1,136
1c008ba6:	02b97933          	remu	s2,s2,a1
1c008baa:	02091263          	bnez	s2,1c008bce <shake256+0x148>
1c008bae:	546a                	lw	s0,184(sp)
1c008bb0:	50fa                	lw	ra,188(sp)
1c008bb2:	54da                	lw	s1,180(sp)
1c008bb4:	594a                	lw	s2,176(sp)
1c008bb6:	59ba                	lw	s3,172(sp)
1c008bb8:	5a9a                	lw	s5,164(sp)
1c008bba:	5b0a                	lw	s6,160(sp)
1c008bbc:	4bfa                	lw	s7,156(sp)
1c008bbe:	4c6a                	lw	s8,152(sp)
1c008bc0:	8552                	mv	a0,s4
1c008bc2:	5a2a                	lw	s4,168(sp)
1c008bc4:	0c800593          	li	a1,200
1c008bc8:	6129                	addi	sp,sp,192
1c008bca:	3bd0206f          	j	1c00b786 <pi_l2_free>
1c008bce:	85d2                	mv	a1,s4
1c008bd0:	8552                	mv	a0,s4
1c008bd2:	facff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c008bd6:	002c                	addi	a1,sp,8
1c008bd8:	78c1                	lui	a7,0xffff0
1c008bda:	ff010837          	lui	a6,0xff010
1c008bde:	01000537          	lui	a0,0x1000
1c008be2:	09010e13          	addi	t3,sp,144
1c008be6:	862e                	mv	a2,a1
1c008be8:	40ba0333          	sub	t1,s4,a1
1c008bec:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008bf0:	187d                	addi	a6,a6,-1
1c008bf2:	157d                	addi	a0,a0,-1
1c008bf4:	00c307b3          	add	a5,t1,a2
1c008bf8:	0007ae83          	lw	t4,0(a5)
1c008bfc:	43d4                	lw	a3,4(a5)
1c008bfe:	0621                	addi	a2,a2,8
1c008c00:	008edf93          	srli	t6,t4,0x8
1c008c04:	0086df13          	srli	t5,a3,0x8
1c008c08:	0ffef713          	andi	a4,t4,255
1c008c0c:	0ff6f793          	andi	a5,a3,255
1c008c10:	0fffff93          	andi	t6,t6,255
1c008c14:	0fff7f13          	andi	t5,t5,255
1c008c18:	0fa2                	slli	t6,t6,0x8
1c008c1a:	0f22                	slli	t5,t5,0x8
1c008c1c:	01177733          	and	a4,a4,a7
1c008c20:	0117f7b3          	and	a5,a5,a7
1c008c24:	01f76733          	or	a4,a4,t6
1c008c28:	01e7e7b3          	or	a5,a5,t5
1c008c2c:	00ff0fb7          	lui	t6,0xff0
1c008c30:	00ff0f37          	lui	t5,0xff0
1c008c34:	01feffb3          	and	t6,t4,t6
1c008c38:	01e6ff33          	and	t5,a3,t5
1c008c3c:	01077733          	and	a4,a4,a6
1c008c40:	0107f7b3          	and	a5,a5,a6
1c008c44:	01f76733          	or	a4,a4,t6
1c008c48:	018ede93          	srli	t4,t4,0x18
1c008c4c:	01e7e7b3          	or	a5,a5,t5
1c008c50:	82e1                	srli	a3,a3,0x18
1c008c52:	0ee2                	slli	t4,t4,0x18
1c008c54:	8f69                	and	a4,a4,a0
1c008c56:	06e2                	slli	a3,a3,0x18
1c008c58:	8fe9                	and	a5,a5,a0
1c008c5a:	01d76733          	or	a4,a4,t4
1c008c5e:	8fd5                	or	a5,a5,a3
1c008c60:	fee62c23          	sw	a4,-8(a2)
1c008c64:	fef62e23          	sw	a5,-4(a2)
1c008c68:	f8ce16e3          	bne	t3,a2,1c008bf4 <shake256+0x16e>
1c008c6c:	fff90793          	addi	a5,s2,-1
1c008c70:	4709                	li	a4,2
1c008c72:	08f77363          	bgeu	a4,a5,1c008cf8 <shake256+0x272>
1c008c76:	00499413          	slli	s0,s3,0x4
1c008c7a:	013407b3          	add	a5,s0,s3
1c008c7e:	078e                	slli	a5,a5,0x3
1c008c80:	97a6                	add	a5,a5,s1
1c008c82:	0fc97813          	andi	a6,s2,252
1c008c86:	983e                	add	a6,a6,a5
1c008c88:	4198                	lw	a4,0(a1)
1c008c8a:	0791                	addi	a5,a5,4
1c008c8c:	0591                	addi	a1,a1,4
1c008c8e:	00875513          	srli	a0,a4,0x8
1c008c92:	01075613          	srli	a2,a4,0x10
1c008c96:	01875693          	srli	a3,a4,0x18
1c008c9a:	fea78ea3          	sb	a0,-3(a5)
1c008c9e:	fec78f23          	sb	a2,-2(a5)
1c008ca2:	fed78fa3          	sb	a3,-1(a5)
1c008ca6:	fee78e23          	sb	a4,-4(a5)
1c008caa:	fcf81fe3          	bne	a6,a5,1c008c88 <shake256+0x202>
1c008cae:	ffc97793          	andi	a5,s2,-4
1c008cb2:	eef90ee3          	beq	s2,a5,1c008bae <shake256+0x128>
1c008cb6:	0918                	addi	a4,sp,144
1c008cb8:	973e                	add	a4,a4,a5
1c008cba:	99a2                	add	s3,s3,s0
1c008cbc:	f7874683          	lbu	a3,-136(a4)
1c008cc0:	098e                	slli	s3,s3,0x3
1c008cc2:	99a6                	add	s3,s3,s1
1c008cc4:	00f98733          	add	a4,s3,a5
1c008cc8:	00d70023          	sb	a3,0(a4)
1c008ccc:	00178713          	addi	a4,a5,1
1c008cd0:	ed277fe3          	bgeu	a4,s2,1c008bae <shake256+0x128>
1c008cd4:	0914                	addi	a3,sp,144
1c008cd6:	96ba                	add	a3,a3,a4
1c008cd8:	f786c683          	lbu	a3,-136(a3)
1c008cdc:	974e                	add	a4,a4,s3
1c008cde:	0789                	addi	a5,a5,2
1c008ce0:	00d70023          	sb	a3,0(a4)
1c008ce4:	ed27f5e3          	bgeu	a5,s2,1c008bae <shake256+0x128>
1c008ce8:	0918                	addi	a4,sp,144
1c008cea:	973e                	add	a4,a4,a5
1c008cec:	f7874703          	lbu	a4,-136(a4)
1c008cf0:	99be                	add	s3,s3,a5
1c008cf2:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c008cf6:	bd65                	j	1c008bae <shake256+0x128>
1c008cf8:	4781                	li	a5,0
1c008cfa:	00499413          	slli	s0,s3,0x4
1c008cfe:	bf65                	j	1c008cb6 <shake256+0x230>
1c008d00:	06f00513          	li	a0,111
1c008d04:	143010ef          	jal	ra,1c00a646 <exit>

1c008d08 <sha3_256>:
1c008d08:	712d                	addi	sp,sp,-288
1c008d0a:	10812c23          	sw	s0,280(sp)
1c008d0e:	4699                	li	a3,6
1c008d10:	842a                	mv	s0,a0
1c008d12:	0828                	addi	a0,sp,24
1c008d14:	10112e23          	sw	ra,284(sp)
1c008d18:	10912a23          	sw	s1,276(sp)
1c008d1c:	11212823          	sw	s2,272(sp)
1c008d20:	11312623          	sw	s3,268(sp)
1c008d24:	11412423          	sw	s4,264(sp)
1c008d28:	11512223          	sw	s5,260(sp)
1c008d2c:	11612023          	sw	s6,256(sp)
1c008d30:	dfde                	sw	s7,252(sp)
1c008d32:	dde2                	sw	s8,248(sp)
1c008d34:	dbe6                	sw	s9,244(sp)
1c008d36:	d9ea                	sw	s10,240(sp)
1c008d38:	d7ee                	sw	s11,236(sp)
1c008d3a:	3059                	jal	1c0085c0 <keccak_absorb.constprop.1>
1c008d3c:	082c                	addi	a1,sp,24
1c008d3e:	852e                	mv	a0,a1
1c008d40:	e3eff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c008d44:	4372                	lw	t1,28(sp)
1c008d46:	5612                	lw	a2,36(sp)
1c008d48:	5732                	lw	a4,44(sp)
1c008d4a:	5582                	lw	a1,32(sp)
1c008d4c:	56a2                	lw	a3,40(sp)
1c008d4e:	59d2                	lw	s3,52(sp)
1c008d50:	4ae2                	lw	s5,24(sp)
1c008d52:	00835293          	srli	t0,t1,0x8
1c008d56:	00865f13          	srli	t5,a2,0x8
1c008d5a:	00875893          	srli	a7,a4,0x8
1c008d5e:	5a42                	lw	s4,48(sp)
1c008d60:	0085df93          	srli	t6,a1,0x8
1c008d64:	0086de93          	srli	t4,a3,0x8
1c008d68:	0ff2f293          	andi	t0,t0,255
1c008d6c:	0fff7f13          	andi	t5,t5,255
1c008d70:	0ff8f893          	andi	a7,a7,255
1c008d74:	0ff37b93          	andi	s7,t1,255
1c008d78:	0ff67913          	andi	s2,a2,255
1c008d7c:	0ff77e13          	andi	t3,a4,255
1c008d80:	008ad393          	srli	t2,s5,0x8
1c008d84:	0089d513          	srli	a0,s3,0x8
1c008d88:	0fffff93          	andi	t6,t6,255
1c008d8c:	0ffefe93          	andi	t4,t4,255
1c008d90:	02a2                	slli	t0,t0,0x8
1c008d92:	0f22                	slli	t5,t5,0x8
1c008d94:	08a2                	slli	a7,a7,0x8
1c008d96:	ff0107b7          	lui	a5,0xff010
1c008d9a:	17fd                	addi	a5,a5,-1
1c008d9c:	0ff5fb13          	andi	s6,a1,255
1c008da0:	0ff6f493          	andi	s1,a3,255
1c008da4:	005be2b3          	or	t0,s7,t0
1c008da8:	01e96f33          	or	t5,s2,t5
1c008dac:	011e68b3          	or	a7,t3,a7
1c008db0:	0ff3f393          	andi	t2,t2,255
1c008db4:	0fa2                	slli	t6,t6,0x8
1c008db6:	0ea2                	slli	t4,t4,0x8
1c008db8:	0ff57513          	andi	a0,a0,255
1c008dbc:	00ff0bb7          	lui	s7,0xff0
1c008dc0:	0ffafc13          	andi	s8,s5,255
1c008dc4:	0ff9f913          	andi	s2,s3,255
1c008dc8:	01767bb3          	and	s7,a2,s7
1c008dcc:	00f8fe33          	and	t3,a7,a5
1c008dd0:	008a5813          	srli	a6,s4,0x8
1c008dd4:	01fb6fb3          	or	t6,s6,t6
1c008dd8:	01d4eeb3          	or	t4,s1,t4
1c008ddc:	00ff7f33          	and	t5,t5,a5
1c008de0:	010008b7          	lui	a7,0x1000
1c008de4:	03a2                	slli	t2,t2,0x8
1c008de6:	0522                	slli	a0,a0,0x8
1c008de8:	00ff04b7          	lui	s1,0xff0
1c008dec:	00ff0b37          	lui	s6,0xff0
1c008df0:	8cf5                	and	s1,s1,a3
1c008df2:	01677b33          	and	s6,a4,s6
1c008df6:	00a96533          	or	a0,s2,a0
1c008dfa:	007c63b3          	or	t2,s8,t2
1c008dfe:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c008e02:	00fefeb3          	and	t4,t4,a5
1c008e06:	017f6f33          	or	t5,t5,s7
1c008e0a:	0ff87813          	andi	a6,a6,255
1c008e0e:	00ff0c37          	lui	s8,0xff0
1c008e12:	8261                	srli	a2,a2,0x18
1c008e14:	0ffa7d93          	andi	s11,s4,255
1c008e18:	0185fc33          	and	s8,a1,s8
1c008e1c:	012f7f33          	and	t5,t5,s2
1c008e20:	00ffffb3          	and	t6,t6,a5
1c008e24:	009eeeb3          	or	t4,t4,s1
1c008e28:	016e6e33          	or	t3,t3,s6
1c008e2c:	8361                	srli	a4,a4,0x18
1c008e2e:	0822                	slli	a6,a6,0x8
1c008e30:	00ff0d37          	lui	s10,0xff0
1c008e34:	82e1                	srli	a3,a3,0x18
1c008e36:	0662                	slli	a2,a2,0x18
1c008e38:	01aafd33          	and	s10,s5,s10
1c008e3c:	010de833          	or	a6,s11,a6
1c008e40:	012efeb3          	and	t4,t4,s2
1c008e44:	012e7e33          	and	t3,t3,s2
1c008e48:	00cf6633          	or	a2,t5,a2
1c008e4c:	018ada93          	srli	s5,s5,0x18
1c008e50:	018fefb3          	or	t6,t6,s8
1c008e54:	06e2                	slli	a3,a3,0x18
1c008e56:	01871c13          	slli	s8,a4,0x18
1c008e5a:	00ff0bb7          	lui	s7,0xff0
1c008e5e:	00f87b33          	and	s6,a6,a5
1c008e62:	00dee4b3          	or	s1,t4,a3
1c008e66:	017a7bb3          	and	s7,s4,s7
1c008e6a:	018e66b3          	or	a3,t3,s8
1c008e6e:	018a9813          	slli	a6,s5,0x18
1c008e72:	018a5713          	srli	a4,s4,0x18
1c008e76:	00865a93          	srli	s5,a2,0x8
1c008e7a:	01065a13          	srli	s4,a2,0x10
1c008e7e:	00ff0cb7          	lui	s9,0xff0
1c008e82:	8261                	srli	a2,a2,0x18
1c008e84:	c232                	sw	a2,4(sp)
1c008e86:	01937cb3          	and	s9,t1,s9
1c008e8a:	0086d613          	srli	a2,a3,0x8
1c008e8e:	00f3f3b3          	and	t2,t2,a5
1c008e92:	00f2f2b3          	and	t0,t0,a5
1c008e96:	c432                	sw	a2,8(sp)
1c008e98:	01a3e3b3          	or	t2,t2,s10
1c008e9c:	0106d613          	srli	a2,a3,0x10
1c008ea0:	0192e2b3          	or	t0,t0,s9
1c008ea4:	01835313          	srli	t1,t1,0x18
1c008ea8:	81e1                	srli	a1,a1,0x18
1c008eaa:	00ff08b7          	lui	a7,0xff0
1c008eae:	8fe9                	and	a5,a5,a0
1c008eb0:	0123f3b3          	and	t2,t2,s2
1c008eb4:	0122f2b3          	and	t0,t0,s2
1c008eb8:	012fffb3          	and	t6,t6,s2
1c008ebc:	c632                	sw	a2,12(sp)
1c008ebe:	0119f8b3          	and	a7,s3,a7
1c008ec2:	4612                	lw	a2,4(sp)
1c008ec4:	01831513          	slli	a0,t1,0x18
1c008ec8:	05e2                	slli	a1,a1,0x18
1c008eca:	017b6333          	or	t1,s6,s7
1c008ece:	0103e833          	or	a6,t2,a6
1c008ed2:	00a2e533          	or	a0,t0,a0
1c008ed6:	00bfe5b3          	or	a1,t6,a1
1c008eda:	0117e8b3          	or	a7,a5,a7
1c008ede:	01237333          	and	t1,t1,s2
1c008ee2:	0128f8b3          	and	a7,a7,s2
1c008ee6:	00885d93          	srli	s11,a6,0x8
1c008eea:	01085d13          	srli	s10,a6,0x10
1c008eee:	00855c93          	srli	s9,a0,0x8
1c008ef2:	01055c13          	srli	s8,a0,0x10
1c008ef6:	0085db93          	srli	s7,a1,0x8
1c008efa:	0105db13          	srli	s6,a1,0x10
1c008efe:	0104d913          	srli	s2,s1,0x10
1c008f02:	0189d793          	srli	a5,s3,0x18
1c008f06:	8161                	srli	a0,a0,0x18
1c008f08:	0084d993          	srli	s3,s1,0x8
1c008f0c:	81e1                	srli	a1,a1,0x18
1c008f0e:	80e1                	srli	s1,s1,0x18
1c008f10:	01885813          	srli	a6,a6,0x18
1c008f14:	01b400a3          	sb	s11,1(s0)
1c008f18:	01a40123          	sb	s10,2(s0)
1c008f1c:	019402a3          	sb	s9,5(s0)
1c008f20:	01840323          	sb	s8,6(s0)
1c008f24:	00a403a3          	sb	a0,7(s0)
1c008f28:	017404a3          	sb	s7,9(s0)
1c008f2c:	01640523          	sb	s6,10(s0)
1c008f30:	00b405a3          	sb	a1,11(s0)
1c008f34:	015406a3          	sb	s5,13(s0)
1c008f38:	01440723          	sb	s4,14(s0)
1c008f3c:	00c407a3          	sb	a2,15(s0)
1c008f40:	013408a3          	sb	s3,17(s0)
1c008f44:	01240923          	sb	s2,18(s0)
1c008f48:	009409a3          	sb	s1,19(s0)
1c008f4c:	00740023          	sb	t2,0(s0)
1c008f50:	010401a3          	sb	a6,3(s0)
1c008f54:	00540223          	sb	t0,4(s0)
1c008f58:	01f40423          	sb	t6,8(s0)
1c008f5c:	01e40623          	sb	t5,12(s0)
1c008f60:	01d40823          	sb	t4,16(s0)
1c008f64:	01c40a23          	sb	t3,20(s0)
1c008f68:	4622                	lw	a2,8(sp)
1c008f6a:	0762                	slli	a4,a4,0x18
1c008f6c:	07e2                	slli	a5,a5,0x18
1c008f6e:	00c40aa3          	sb	a2,21(s0)
1c008f72:	4632                	lw	a2,12(sp)
1c008f74:	00e36733          	or	a4,t1,a4
1c008f78:	00f8e7b3          	or	a5,a7,a5
1c008f7c:	82e1                	srli	a3,a3,0x18
1c008f7e:	00c40b23          	sb	a2,22(s0)
1c008f82:	00d40ba3          	sb	a3,23(s0)
1c008f86:	00875513          	srli	a0,a4,0x8
1c008f8a:	01075593          	srli	a1,a4,0x10
1c008f8e:	0087d613          	srli	a2,a5,0x8
1c008f92:	0107d693          	srli	a3,a5,0x10
1c008f96:	8361                	srli	a4,a4,0x18
1c008f98:	83e1                	srli	a5,a5,0x18
1c008f9a:	00640c23          	sb	t1,24(s0)
1c008f9e:	00a40ca3          	sb	a0,25(s0)
1c008fa2:	00b40d23          	sb	a1,26(s0)
1c008fa6:	00e40da3          	sb	a4,27(s0)
1c008faa:	01140e23          	sb	a7,28(s0)
1c008fae:	00c40ea3          	sb	a2,29(s0)
1c008fb2:	00d40f23          	sb	a3,30(s0)
1c008fb6:	00f40fa3          	sb	a5,31(s0)
1c008fba:	11c12083          	lw	ra,284(sp)
1c008fbe:	11812403          	lw	s0,280(sp)
1c008fc2:	11412483          	lw	s1,276(sp)
1c008fc6:	11012903          	lw	s2,272(sp)
1c008fca:	10c12983          	lw	s3,268(sp)
1c008fce:	10812a03          	lw	s4,264(sp)
1c008fd2:	10412a83          	lw	s5,260(sp)
1c008fd6:	10012b03          	lw	s6,256(sp)
1c008fda:	5bfe                	lw	s7,252(sp)
1c008fdc:	5c6e                	lw	s8,248(sp)
1c008fde:	5cde                	lw	s9,244(sp)
1c008fe0:	5d4e                	lw	s10,240(sp)
1c008fe2:	5dbe                	lw	s11,236(sp)
1c008fe4:	6115                	addi	sp,sp,288
1c008fe6:	8082                	ret

1c008fe8 <sha3_512>:
1c008fe8:	7105                	addi	sp,sp,-480
1c008fea:	1c812c23          	sw	s0,472(sp)
1c008fee:	1d312623          	sw	s3,460(sp)
1c008ff2:	1d412423          	sw	s4,456(sp)
1c008ff6:	1c112e23          	sw	ra,476(sp)
1c008ffa:	1c912a23          	sw	s1,468(sp)
1c008ffe:	1d212823          	sw	s2,464(sp)
1c009002:	1d512223          	sw	s5,452(sp)
1c009006:	1d612023          	sw	s6,448(sp)
1c00900a:	1b712e23          	sw	s7,444(sp)
1c00900e:	1b812c23          	sw	s8,440(sp)
1c009012:	1b912a23          	sw	s9,436(sp)
1c009016:	1ba12823          	sw	s10,432(sp)
1c00901a:	1bb12623          	sw	s11,428(sp)
1c00901e:	842a                	mv	s0,a0
1c009020:	8a32                	mv	s4,a2
1c009022:	0d810993          	addi	s3,sp,216
1c009026:	081c                	addi	a5,sp,16
1c009028:	4681                	li	a3,0
1c00902a:	4701                	li	a4,0
1c00902c:	c394                	sw	a3,0(a5)
1c00902e:	c3d8                	sw	a4,4(a5)
1c009030:	07a1                	addi	a5,a5,8
1c009032:	ff379be3          	bne	a5,s3,1c009028 <sha3_512+0x40>
1c009036:	04700793          	li	a5,71
1c00903a:	0947f463          	bgeu	a5,s4,1c0090c2 <sha3_512+0xda>
1c00903e:	04858a93          	addi	s5,a1,72
1c009042:	8956                	mv	s2,s5
1c009044:	04700493          	li	s1,71
1c009048:	0818                	addi	a4,sp,16
1c00904a:	0015c783          	lbu	a5,1(a1)
1c00904e:	0025ce03          	lbu	t3,2(a1)
1c009052:	0055c803          	lbu	a6,5(a1)
1c009056:	0045cf03          	lbu	t5,4(a1)
1c00905a:	0065c503          	lbu	a0,6(a1)
1c00905e:	0005ce83          	lbu	t4,0(a1)
1c009062:	0035c603          	lbu	a2,3(a1)
1c009066:	0075c683          	lbu	a3,7(a1)
1c00906a:	07a2                	slli	a5,a5,0x8
1c00906c:	0e42                	slli	t3,t3,0x10
1c00906e:	0822                	slli	a6,a6,0x8
1c009070:	00072303          	lw	t1,0(a4)
1c009074:	00472883          	lw	a7,4(a4)
1c009078:	01c7e7b3          	or	a5,a5,t3
1c00907c:	01e86833          	or	a6,a6,t5
1c009080:	0542                	slli	a0,a0,0x10
1c009082:	01d7e7b3          	or	a5,a5,t4
1c009086:	0662                	slli	a2,a2,0x18
1c009088:	01056533          	or	a0,a0,a6
1c00908c:	06e2                	slli	a3,a3,0x18
1c00908e:	8fd1                	or	a5,a5,a2
1c009090:	8ec9                	or	a3,a3,a0
1c009092:	00f347b3          	xor	a5,t1,a5
1c009096:	00d8c6b3          	xor	a3,a7,a3
1c00909a:	c31c                	sw	a5,0(a4)
1c00909c:	c354                	sw	a3,4(a4)
1c00909e:	05a1                	addi	a1,a1,8
1c0090a0:	0721                	addi	a4,a4,8
1c0090a2:	fb2594e3          	bne	a1,s2,1c00904a <sha3_512+0x62>
1c0090a6:	080c                	addi	a1,sp,16
1c0090a8:	852e                	mv	a0,a1
1c0090aa:	ad4ff0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c0090ae:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c0090b2:	04890913          	addi	s2,s2,72
1c0090b6:	85d6                	mv	a1,s5
1c0090b8:	0144f563          	bgeu	s1,s4,1c0090c2 <sha3_512+0xda>
1c0090bc:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c0090c0:	b761                	j	1c009048 <sha3_512+0x60>
1c0090c2:	1218                	addi	a4,sp,288
1c0090c4:	87ce                	mv	a5,s3
1c0090c6:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c0090ca:	0791                	addi	a5,a5,4
1c0090cc:	fee79de3          	bne	a5,a4,1c0090c6 <sha3_512+0xde>
1c0090d0:	080a0063          	beqz	s4,1c009150 <sha3_512+0x168>
1c0090d4:	fffa0793          	addi	a5,s4,-1
1c0090d8:	4709                	li	a4,2
1c0090da:	68f77563          	bgeu	a4,a5,1c009764 <sha3_512+0x77c>
1c0090de:	ffca7813          	andi	a6,s4,-4
1c0090e2:	87ae                	mv	a5,a1
1c0090e4:	982e                	add	a6,a6,a1
1c0090e6:	0017c603          	lbu	a2,1(a5)
1c0090ea:	0007c503          	lbu	a0,0(a5)
1c0090ee:	0027c683          	lbu	a3,2(a5)
1c0090f2:	0037c703          	lbu	a4,3(a5)
1c0090f6:	0622                	slli	a2,a2,0x8
1c0090f8:	8e49                	or	a2,a2,a0
1c0090fa:	06c2                	slli	a3,a3,0x10
1c0090fc:	8ed1                	or	a3,a3,a2
1c0090fe:	0762                	slli	a4,a4,0x18
1c009100:	8f55                	or	a4,a4,a3
1c009102:	00e9a023          	sw	a4,0(s3)
1c009106:	0791                	addi	a5,a5,4
1c009108:	0991                	addi	s3,s3,4
1c00910a:	fd079ee3          	bne	a5,a6,1c0090e6 <sha3_512+0xfe>
1c00910e:	ffca7793          	andi	a5,s4,-4
1c009112:	03478f63          	beq	a5,s4,1c009150 <sha3_512+0x168>
1c009116:	00f58733          	add	a4,a1,a5
1c00911a:	00074603          	lbu	a2,0(a4)
1c00911e:	1314                	addi	a3,sp,416
1c009120:	96be                	add	a3,a3,a5
1c009122:	00178713          	addi	a4,a5,1
1c009126:	f2c68c23          	sb	a2,-200(a3)
1c00912a:	03477363          	bgeu	a4,s4,1c009150 <sha3_512+0x168>
1c00912e:	00e586b3          	add	a3,a1,a4
1c009132:	0006c683          	lbu	a3,0(a3)
1c009136:	1310                	addi	a2,sp,416
1c009138:	9732                	add	a4,a4,a2
1c00913a:	0789                	addi	a5,a5,2
1c00913c:	f2d70c23          	sb	a3,-200(a4)
1c009140:	0147f863          	bgeu	a5,s4,1c009150 <sha3_512+0x168>
1c009144:	95be                	add	a1,a1,a5
1c009146:	0005c703          	lbu	a4,0(a1)
1c00914a:	97b2                	add	a5,a5,a2
1c00914c:	f2e78c23          	sb	a4,-200(a5)
1c009150:	131c                	addi	a5,sp,416
1c009152:	9a3e                	add	s4,s4,a5
1c009154:	4799                	li	a5,6
1c009156:	f2fa0c23          	sb	a5,-200(s4)
1c00915a:	0da14703          	lbu	a4,218(sp)
1c00915e:	0d914f83          	lbu	t6,217(sp)
1c009162:	0e214783          	lbu	a5,226(sp)
1c009166:	0e114e83          	lbu	t4,225(sp)
1c00916a:	0e514303          	lbu	t1,229(sp)
1c00916e:	0e414383          	lbu	t2,228(sp)
1c009172:	0e614803          	lbu	a6,230(sp)
1c009176:	0d814283          	lbu	t0,216(sp)
1c00917a:	0e014f03          	lbu	t5,224(sp)
1c00917e:	0db14503          	lbu	a0,219(sp)
1c009182:	0e314603          	lbu	a2,227(sp)
1c009186:	0e714683          	lbu	a3,231(sp)
1c00918a:	0fa2                	slli	t6,t6,0x8
1c00918c:	0ea2                	slli	t4,t4,0x8
1c00918e:	0742                	slli	a4,a4,0x10
1c009190:	07c2                	slli	a5,a5,0x10
1c009192:	0322                	slli	t1,t1,0x8
1c009194:	00736333          	or	t1,t1,t2
1c009198:	01f76733          	or	a4,a4,t6
1c00919c:	01d7e7b3          	or	a5,a5,t4
1c0091a0:	0842                	slli	a6,a6,0x10
1c0091a2:	0dd14e03          	lbu	t3,221(sp)
1c0091a6:	00576733          	or	a4,a4,t0
1c0091aa:	01e7e7b3          	or	a5,a5,t5
1c0091ae:	00686833          	or	a6,a6,t1
1c0091b2:	0662                	slli	a2,a2,0x18
1c0091b4:	06e2                	slli	a3,a3,0x18
1c0091b6:	0562                	slli	a0,a0,0x18
1c0091b8:	0dc14483          	lbu	s1,220(sp)
1c0091bc:	0de14883          	lbu	a7,222(sp)
1c0091c0:	8d59                	or	a0,a0,a4
1c0091c2:	00f66733          	or	a4,a2,a5
1c0091c6:	0106e7b3          	or	a5,a3,a6
1c0091ca:	46c2                	lw	a3,16(sp)
1c0091cc:	0df14583          	lbu	a1,223(sp)
1c0091d0:	0e22                	slli	t3,t3,0x8
1c0091d2:	009e6e33          	or	t3,t3,s1
1c0091d6:	8d35                	xor	a0,a0,a3
1c0091d8:	08c2                	slli	a7,a7,0x10
1c0091da:	46d2                	lw	a3,20(sp)
1c0091dc:	01c8e8b3          	or	a7,a7,t3
1c0091e0:	05e2                	slli	a1,a1,0x18
1c0091e2:	0115e5b3          	or	a1,a1,a7
1c0091e6:	8db5                	xor	a1,a1,a3
1c0091e8:	46e2                	lw	a3,24(sp)
1c0091ea:	0ea14803          	lbu	a6,234(sp)
1c0091ee:	0e914483          	lbu	s1,233(sp)
1c0091f2:	8eb9                	xor	a3,a3,a4
1c0091f4:	4772                	lw	a4,28(sp)
1c0091f6:	0e814a83          	lbu	s5,232(sp)
1c0091fa:	0eb14a03          	lbu	s4,235(sp)
1c0091fe:	8f3d                	xor	a4,a4,a5
1c009200:	0ec14d03          	lbu	s10,236(sp)
1c009204:	11f14783          	lbu	a5,287(sp)
1c009208:	0ed14903          	lbu	s2,237(sp)
1c00920c:	c82a                	sw	a0,16(sp)
1c00920e:	ca2e                	sw	a1,20(sp)
1c009210:	cc36                	sw	a3,24(sp)
1c009212:	ce3a                	sw	a4,28(sp)
1c009214:	0ee14f83          	lbu	t6,238(sp)
1c009218:	0f214283          	lbu	t0,242(sp)
1c00921c:	0f114f03          	lbu	t5,241(sp)
1c009220:	0fd14883          	lbu	a7,253(sp)
1c009224:	0fc14b83          	lbu	s7,252(sp)
1c009228:	04a2                	slli	s1,s1,0x8
1c00922a:	0842                	slli	a6,a6,0x10
1c00922c:	02c2                	slli	t0,t0,0x10
1c00922e:	08a2                	slli	a7,a7,0x8
1c009230:	00986833          	or	a6,a6,s1
1c009234:	0f22                	slli	t5,t5,0x8
1c009236:	01e2ef33          	or	t5,t0,t5
1c00923a:	01586833          	or	a6,a6,s5
1c00923e:	0178e2b3          	or	t0,a7,s7
1c009242:	018a1893          	slli	a7,s4,0x18
1c009246:	0108e833          	or	a6,a7,a6
1c00924a:	5882                	lw	a7,32(sp)
1c00924c:	0ef14503          	lbu	a0,239(sp)
1c009250:	0922                	slli	s2,s2,0x8
1c009252:	01a96933          	or	s2,s2,s10
1c009256:	0108c8b3          	xor	a7,a7,a6
1c00925a:	0fc2                	slli	t6,t6,0x10
1c00925c:	5812                	lw	a6,36(sp)
1c00925e:	0f014983          	lbu	s3,240(sp)
1c009262:	0f314583          	lbu	a1,243(sp)
1c009266:	012fefb3          	or	t6,t6,s2
1c00926a:	0562                	slli	a0,a0,0x18
1c00926c:	0f514e83          	lbu	t4,245(sp)
1c009270:	01f56533          	or	a0,a0,t6
1c009274:	0f414c83          	lbu	s9,244(sp)
1c009278:	0f614c03          	lbu	s8,246(sp)
1c00927c:	00a84833          	xor	a6,a6,a0
1c009280:	5522                	lw	a0,40(sp)
1c009282:	0f714603          	lbu	a2,247(sp)
1c009286:	013f6f33          	or	t5,t5,s3
1c00928a:	05e2                	slli	a1,a1,0x18
1c00928c:	0f914e03          	lbu	t3,249(sp)
1c009290:	0fa14303          	lbu	t1,250(sp)
1c009294:	01e5e5b3          	or	a1,a1,t5
1c009298:	0ea2                	slli	t4,t4,0x8
1c00929a:	019ee4b3          	or	s1,t4,s9
1c00929e:	8d2d                	xor	a0,a0,a1
1c0092a0:	010c1e93          	slli	t4,s8,0x10
1c0092a4:	55b2                	lw	a1,44(sp)
1c0092a6:	0f814383          	lbu	t2,248(sp)
1c0092aa:	0fb14683          	lbu	a3,251(sp)
1c0092ae:	009eeeb3          	or	t4,t4,s1
1c0092b2:	0662                	slli	a2,a2,0x18
1c0092b4:	01d66633          	or	a2,a2,t4
1c0092b8:	0342                	slli	t1,t1,0x10
1c0092ba:	0e22                	slli	t3,t3,0x8
1c0092bc:	0fe14b03          	lbu	s6,254(sp)
1c0092c0:	8db1                	xor	a1,a1,a2
1c0092c2:	006e6e33          	or	t3,t3,t1
1c0092c6:	5642                	lw	a2,48(sp)
1c0092c8:	0ff14703          	lbu	a4,255(sp)
1c0092cc:	007e6e33          	or	t3,t3,t2
1c0092d0:	06e2                	slli	a3,a3,0x18
1c0092d2:	01c6e6b3          	or	a3,a3,t3
1c0092d6:	8e35                	xor	a2,a2,a3
1c0092d8:	010b1313          	slli	t1,s6,0x10
1c0092dc:	56d2                	lw	a3,52(sp)
1c0092de:	00536333          	or	t1,t1,t0
1c0092e2:	0762                	slli	a4,a4,0x18
1c0092e4:	00676733          	or	a4,a4,t1
1c0092e8:	8f35                	xor	a4,a4,a3
1c0092ea:	10114e83          	lbu	t4,257(sp)
1c0092ee:	10214a83          	lbu	s5,258(sp)
1c0092f2:	d046                	sw	a7,32(sp)
1c0092f4:	d242                	sw	a6,36(sp)
1c0092f6:	d42a                	sw	a0,40(sp)
1c0092f8:	d62e                	sw	a1,44(sp)
1c0092fa:	d832                	sw	a2,48(sp)
1c0092fc:	da3a                	sw	a4,52(sp)
1c0092fe:	10014903          	lbu	s2,256(sp)
1c009302:	10914303          	lbu	t1,265(sp)
1c009306:	10a14983          	lbu	s3,266(sp)
1c00930a:	10814383          	lbu	t2,264(sp)
1c00930e:	10514f83          	lbu	t6,261(sp)
1c009312:	10b14603          	lbu	a2,267(sp)
1c009316:	10414b03          	lbu	s6,260(sp)
1c00931a:	10614e03          	lbu	t3,262(sp)
1c00931e:	09c2                	slli	s3,s3,0x10
1c009320:	0322                	slli	t1,t1,0x8
1c009322:	10714583          	lbu	a1,263(sp)
1c009326:	01336333          	or	t1,t1,s3
1c00932a:	00736333          	or	t1,t1,t2
1c00932e:	10d14f03          	lbu	t5,269(sp)
1c009332:	0fa2                	slli	t6,t6,0x8
1c009334:	0662                	slli	a2,a2,0x18
1c009336:	10c14a03          	lbu	s4,268(sp)
1c00933a:	016fefb3          	or	t6,t6,s6
1c00933e:	11114803          	lbu	a6,273(sp)
1c009342:	11214483          	lbu	s1,274(sp)
1c009346:	10e14883          	lbu	a7,270(sp)
1c00934a:	00666633          	or	a2,a2,t1
1c00934e:	0e42                	slli	t3,t3,0x10
1c009350:	5372                	lw	t1,60(sp)
1c009352:	01fe6e33          	or	t3,t3,t6
1c009356:	10f14683          	lbu	a3,271(sp)
1c00935a:	05e2                	slli	a1,a1,0x18
1c00935c:	11014283          	lbu	t0,272(sp)
1c009360:	11314703          	lbu	a4,275(sp)
1c009364:	01c5e5b3          	or	a1,a1,t3
1c009368:	0f22                	slli	t5,t5,0x8
1c00936a:	014f6f33          	or	t5,t5,s4
1c00936e:	00b34333          	xor	t1,t1,a1
1c009372:	04c2                	slli	s1,s1,0x10
1c009374:	4596                	lw	a1,68(sp)
1c009376:	0822                	slli	a6,a6,0x8
1c009378:	08c2                	slli	a7,a7,0x10
1c00937a:	10314503          	lbu	a0,259(sp)
1c00937e:	01e8e8b3          	or	a7,a7,t5
1c009382:	00986833          	or	a6,a6,s1
1c009386:	06e2                	slli	a3,a3,0x18
1c009388:	00586833          	or	a6,a6,t0
1c00938c:	0116e6b3          	or	a3,a3,a7
1c009390:	0ac2                	slli	s5,s5,0x10
1c009392:	0ea2                	slli	t4,t4,0x8
1c009394:	0762                	slli	a4,a4,0x18
1c009396:	5e62                	lw	t3,56(sp)
1c009398:	8db5                	xor	a1,a1,a3
1c00939a:	015eeeb3          	or	t4,t4,s5
1c00939e:	46a6                	lw	a3,72(sp)
1c0093a0:	01076733          	or	a4,a4,a6
1c0093a4:	4806                	lw	a6,64(sp)
1c0093a6:	012eeeb3          	or	t4,t4,s2
1c0093aa:	0562                	slli	a0,a0,0x18
1c0093ac:	01d56533          	or	a0,a0,t4
1c0093b0:	00ae4e33          	xor	t3,t3,a0
1c0093b4:	00c84833          	xor	a6,a6,a2
1c0093b8:	8f35                	xor	a4,a4,a3
1c0093ba:	11414f03          	lbu	t5,276(sp)
1c0093be:	11514883          	lbu	a7,277(sp)
1c0093c2:	11614503          	lbu	a0,278(sp)
1c0093c6:	11714603          	lbu	a2,279(sp)
1c0093ca:	dc72                	sw	t3,56(sp)
1c0093cc:	de1a                	sw	t1,60(sp)
1c0093ce:	c0c2                	sw	a6,64(sp)
1c0093d0:	c2ae                	sw	a1,68(sp)
1c0093d2:	c4ba                	sw	a4,72(sp)
1c0093d4:	11914703          	lbu	a4,281(sp)
1c0093d8:	11a14303          	lbu	t1,282(sp)
1c0093dc:	11814e03          	lbu	t3,280(sp)
1c0093e0:	11b14683          	lbu	a3,283(sp)
1c0093e4:	0342                	slli	t1,t1,0x10
1c0093e6:	0722                	slli	a4,a4,0x8
1c0093e8:	00676733          	or	a4,a4,t1
1c0093ec:	01c76733          	or	a4,a4,t3
1c0093f0:	06e2                	slli	a3,a3,0x18
1c0093f2:	08a2                	slli	a7,a7,0x8
1c0093f4:	01e8e8b3          	or	a7,a7,t5
1c0093f8:	8f55                	or	a4,a4,a3
1c0093fa:	0542                	slli	a0,a0,0x10
1c0093fc:	46b6                	lw	a3,76(sp)
1c0093fe:	01156533          	or	a0,a0,a7
1c009402:	0662                	slli	a2,a2,0x18
1c009404:	11d14803          	lbu	a6,285(sp)
1c009408:	8e49                	or	a2,a2,a0
1c00940a:	11c14e83          	lbu	t4,284(sp)
1c00940e:	8e35                	xor	a2,a2,a3
1c009410:	11e14583          	lbu	a1,286(sp)
1c009414:	46c6                	lw	a3,80(sp)
1c009416:	0822                	slli	a6,a6,0x8
1c009418:	01d86833          	or	a6,a6,t4
1c00941c:	8eb9                	xor	a3,a3,a4
1c00941e:	0807e793          	ori	a5,a5,128
1c009422:	4756                	lw	a4,84(sp)
1c009424:	05c2                	slli	a1,a1,0x10
1c009426:	0105e5b3          	or	a1,a1,a6
1c00942a:	07e2                	slli	a5,a5,0x18
1c00942c:	8fcd                	or	a5,a5,a1
1c00942e:	080c                	addi	a1,sp,16
1c009430:	8fb9                	xor	a5,a5,a4
1c009432:	852e                	mv	a0,a1
1c009434:	c6b2                	sw	a2,76(sp)
1c009436:	c8b6                	sw	a3,80(sp)
1c009438:	cabe                	sw	a5,84(sp)
1c00943a:	f45fe0ef          	jal	ra,1c00837e <KeccakF1600_StatePermute>
1c00943e:	4552                	lw	a0,20(sp)
1c009440:	45f2                	lw	a1,28(sp)
1c009442:	5612                	lw	a2,36(sp)
1c009444:	56b2                	lw	a3,44(sp)
1c009446:	57d2                	lw	a5,52(sp)
1c009448:	5772                	lw	a4,60(sp)
1c00944a:	00855b13          	srli	s6,a0,0x8
1c00944e:	01055a93          	srli	s5,a0,0x10
1c009452:	01855a13          	srli	s4,a0,0x18
1c009456:	0085d993          	srli	s3,a1,0x8
1c00945a:	0105d913          	srli	s2,a1,0x10
1c00945e:	0185d493          	srli	s1,a1,0x18
1c009462:	0ca10e23          	sb	a0,220(sp)
1c009466:	0d610ea3          	sb	s6,221(sp)
1c00946a:	0d510f23          	sb	s5,222(sp)
1c00946e:	0d410fa3          	sb	s4,223(sp)
1c009472:	00865393          	srli	t2,a2,0x8
1c009476:	01065293          	srli	t0,a2,0x10
1c00947a:	01865f93          	srli	t6,a2,0x18
1c00947e:	0086df13          	srli	t5,a3,0x8
1c009482:	0106de93          	srli	t4,a3,0x10
1c009486:	0186de13          	srli	t3,a3,0x18
1c00948a:	0087d313          	srli	t1,a5,0x8
1c00948e:	0107d893          	srli	a7,a5,0x10
1c009492:	0187d813          	srli	a6,a5,0x18
1c009496:	0eb10223          	sb	a1,228(sp)
1c00949a:	0f3102a3          	sb	s3,229(sp)
1c00949e:	0f210323          	sb	s2,230(sp)
1c0094a2:	0e9103a3          	sb	s1,231(sp)
1c0094a6:	45c2                	lw	a1,16(sp)
1c0094a8:	4536                	lw	a0,76(sp)
1c0094aa:	0ec10623          	sb	a2,236(sp)
1c0094ae:	0e7106a3          	sb	t2,237(sp)
1c0094b2:	467e                	lw	a2,220(sp)
1c0094b4:	0e510723          	sb	t0,238(sp)
1c0094b8:	0ff107a3          	sb	t6,239(sp)
1c0094bc:	0ed10a23          	sb	a3,244(sp)
1c0094c0:	0fe10aa3          	sb	t5,245(sp)
1c0094c4:	46e2                	lw	a3,24(sp)
1c0094c6:	0fd10b23          	sb	t4,246(sp)
1c0094ca:	0fc10ba3          	sb	t3,247(sp)
1c0094ce:	0e610ea3          	sb	t1,253(sp)
1c0094d2:	0f110f23          	sb	a7,254(sp)
1c0094d6:	0f010fa3          	sb	a6,255(sp)
1c0094da:	10e10223          	sb	a4,260(sp)
1c0094de:	4816                	lw	a6,68(sp)
1c0094e0:	0ef10e23          	sb	a5,252(sp)
1c0094e4:	579e                	lw	a5,228(sp)
1c0094e6:	00875d93          	srli	s11,a4,0x8
1c0094ea:	01075d13          	srli	s10,a4,0x10
1c0094ee:	00885c93          	srli	s9,a6,0x8
1c0094f2:	01085c13          	srli	s8,a6,0x10
1c0094f6:	01885b93          	srli	s7,a6,0x18
1c0094fa:	00855b13          	srli	s6,a0,0x8
1c0094fe:	01055a93          	srli	s5,a0,0x10
1c009502:	01855a13          	srli	s4,a0,0x18
1c009506:	0085d993          	srli	s3,a1,0x8
1c00950a:	0105d913          	srli	s2,a1,0x10
1c00950e:	0185d493          	srli	s1,a1,0x18
1c009512:	00865393          	srli	t2,a2,0x8
1c009516:	01065293          	srli	t0,a2,0x10
1c00951a:	01865f93          	srli	t6,a2,0x18
1c00951e:	0086df13          	srli	t5,a3,0x8
1c009522:	0106de93          	srli	t4,a3,0x10
1c009526:	0186de13          	srli	t3,a3,0x18
1c00952a:	0087d313          	srli	t1,a5,0x8
1c00952e:	0107d893          	srli	a7,a5,0x10
1c009532:	00f40623          	sb	a5,12(s0)
1c009536:	8361                	srli	a4,a4,0x18
1c009538:	83e1                	srli	a5,a5,0x18
1c00953a:	11b102a3          	sb	s11,261(sp)
1c00953e:	11a10323          	sb	s10,262(sp)
1c009542:	10e103a3          	sb	a4,263(sp)
1c009546:	11010623          	sb	a6,268(sp)
1c00954a:	4706                	lw	a4,64(sp)
1c00954c:	119106a3          	sb	s9,269(sp)
1c009550:	11810723          	sb	s8,270(sp)
1c009554:	117107a3          	sb	s7,271(sp)
1c009558:	10a10a23          	sb	a0,276(sp)
1c00955c:	11610aa3          	sb	s6,277(sp)
1c009560:	11510b23          	sb	s5,278(sp)
1c009564:	11410ba3          	sb	s4,279(sp)
1c009568:	00b40023          	sb	a1,0(s0)
1c00956c:	4a26                	lw	s4,72(sp)
1c00956e:	55be                	lw	a1,236(sp)
1c009570:	013400a3          	sb	s3,1(s0)
1c009574:	01240123          	sb	s2,2(s0)
1c009578:	009401a3          	sb	s1,3(s0)
1c00957c:	00c40223          	sb	a2,4(s0)
1c009580:	007402a3          	sb	t2,5(s0)
1c009584:	565e                	lw	a2,244(sp)
1c009586:	00540323          	sb	t0,6(s0)
1c00958a:	01f403a3          	sb	t6,7(s0)
1c00958e:	01e404a3          	sb	t5,9(s0)
1c009592:	01d40523          	sb	t4,10(s0)
1c009596:	01c405a3          	sb	t3,11(s0)
1c00959a:	006406a3          	sb	t1,13(s0)
1c00959e:	01140723          	sb	a7,14(s0)
1c0095a2:	00f407a3          	sb	a5,15(s0)
1c0095a6:	00d40423          	sb	a3,8(s0)
1c0095aa:	56fe                	lw	a3,252(sp)
1c0095ac:	5502                	lw	a0,32(sp)
1c0095ae:	54a2                	lw	s1,40(sp)
1c0095b0:	0185db13          	srli	s6,a1,0x18
1c0095b4:	00855d93          	srli	s11,a0,0x8
1c0095b8:	01055d13          	srli	s10,a0,0x10
1c0095bc:	01855c93          	srli	s9,a0,0x18
1c0095c0:	5522                	lw	a0,40(sp)
1c0095c2:	5842                	lw	a6,48(sp)
1c0095c4:	0085dc13          	srli	s8,a1,0x8
1c0095c8:	00855a93          	srli	s5,a0,0x8
1c0095cc:	8141                	srli	a0,a0,0x10
1c0095ce:	c42a                	sw	a0,8(sp)
1c0095d0:	5562                	lw	a0,56(sp)
1c0095d2:	0105db93          	srli	s7,a1,0x10
1c0095d6:	00b40a23          	sb	a1,20(s0)
1c0095da:	8161                	srli	a0,a0,0x18
1c0095dc:	c22a                	sw	a0,4(sp)
1c0095de:	5502                	lw	a0,32(sp)
1c0095e0:	45a2                	lw	a1,8(sp)
1c0095e2:	01640ba3          	sb	s6,23(s0)
1c0095e6:	c62a                	sw	a0,12(sp)
1c0095e8:	00c14503          	lbu	a0,12(sp)
1c0095ec:	5b22                	lw	s6,40(sp)
1c0095ee:	0184d993          	srli	s3,s1,0x18
1c0095f2:	00865913          	srli	s2,a2,0x8
1c0095f6:	01065493          	srli	s1,a2,0x10
1c0095fa:	01865393          	srli	t2,a2,0x18
1c0095fe:	00a10623          	sb	a0,12(sp)
1c009602:	0ff57513          	andi	a0,a0,255
1c009606:	10412783          	lw	a5,260(sp)
1c00960a:	00885293          	srli	t0,a6,0x8
1c00960e:	01085f93          	srli	t6,a6,0x10
1c009612:	01885f13          	srli	t5,a6,0x18
1c009616:	0086de93          	srli	t4,a3,0x8
1c00961a:	5862                	lw	a6,56(sp)
1c00961c:	0106de13          	srli	t3,a3,0x10
1c009620:	0186d313          	srli	t1,a3,0x18
1c009624:	00a40823          	sb	a0,16(s0)
1c009628:	01b408a3          	sb	s11,17(s0)
1c00962c:	01a40923          	sb	s10,18(s0)
1c009630:	019409a3          	sb	s9,19(s0)
1c009634:	01840aa3          	sb	s8,21(s0)
1c009638:	01740b23          	sb	s7,22(s0)
1c00963c:	01640c23          	sb	s6,24(s0)
1c009640:	01540ca3          	sb	s5,25(s0)
1c009644:	00b40d23          	sb	a1,26(s0)
1c009648:	01340da3          	sb	s3,27(s0)
1c00964c:	01240ea3          	sb	s2,29(s0)
1c009650:	00940f23          	sb	s1,30(s0)
1c009654:	00740fa3          	sb	t2,31(s0)
1c009658:	00c40e23          	sb	a2,28(s0)
1c00965c:	5642                	lw	a2,48(sp)
1c00965e:	02d40223          	sb	a3,36(s0)
1c009662:	56e2                	lw	a3,56(sp)
1c009664:	02c40023          	sb	a2,32(s0)
1c009668:	10c12603          	lw	a2,268(sp)
1c00966c:	02d40423          	sb	a3,40(s0)
1c009670:	4692                	lw	a3,4(sp)
1c009672:	00885893          	srli	a7,a6,0x8
1c009676:	025400a3          	sb	t0,33(s0)
1c00967a:	02d405a3          	sb	a3,43(s0)
1c00967e:	11412683          	lw	a3,276(sp)
1c009682:	03f40123          	sb	t6,34(s0)
1c009686:	03e401a3          	sb	t5,35(s0)
1c00968a:	03d402a3          	sb	t4,37(s0)
1c00968e:	03c40323          	sb	t3,38(s0)
1c009692:	026403a3          	sb	t1,39(s0)
1c009696:	02f40623          	sb	a5,44(s0)
1c00969a:	0087d993          	srli	s3,a5,0x8
1c00969e:	0107d913          	srli	s2,a5,0x10
1c0096a2:	01085813          	srli	a6,a6,0x10
1c0096a6:	00875493          	srli	s1,a4,0x8
1c0096aa:	008a5e13          	srli	t3,s4,0x8
1c0096ae:	010a5313          	srli	t1,s4,0x10
1c0096b2:	83e1                	srli	a5,a5,0x18
1c0096b4:	01075393          	srli	t2,a4,0x10
1c0096b8:	01875293          	srli	t0,a4,0x18
1c0096bc:	00865f93          	srli	t6,a2,0x8
1c0096c0:	01065f13          	srli	t5,a2,0x10
1c0096c4:	01865e93          	srli	t4,a2,0x18
1c0096c8:	031404a3          	sb	a7,41(s0)
1c0096cc:	03040523          	sb	a6,42(s0)
1c0096d0:	033406a3          	sb	s3,45(s0)
1c0096d4:	03240723          	sb	s2,46(s0)
1c0096d8:	029408a3          	sb	s1,49(s0)
1c0096dc:	03440c23          	sb	s4,56(s0)
1c0096e0:	018a5893          	srli	a7,s4,0x18
1c0096e4:	02f407a3          	sb	a5,47(s0)
1c0096e8:	02e40823          	sb	a4,48(s0)
1c0096ec:	02740923          	sb	t2,50(s0)
1c0096f0:	025409a3          	sb	t0,51(s0)
1c0096f4:	02c40a23          	sb	a2,52(s0)
1c0096f8:	03f40aa3          	sb	t6,53(s0)
1c0096fc:	03e40b23          	sb	t5,54(s0)
1c009700:	03d40ba3          	sb	t4,55(s0)
1c009704:	03c40ca3          	sb	t3,57(s0)
1c009708:	02640d23          	sb	t1,58(s0)
1c00970c:	0086d813          	srli	a6,a3,0x8
1c009710:	0106d513          	srli	a0,a3,0x10
1c009714:	0186d593          	srli	a1,a3,0x18
1c009718:	03140da3          	sb	a7,59(s0)
1c00971c:	02d40e23          	sb	a3,60(s0)
1c009720:	03040ea3          	sb	a6,61(s0)
1c009724:	02a40f23          	sb	a0,62(s0)
1c009728:	02b40fa3          	sb	a1,63(s0)
1c00972c:	1dc12083          	lw	ra,476(sp)
1c009730:	1d812403          	lw	s0,472(sp)
1c009734:	1d412483          	lw	s1,468(sp)
1c009738:	1d012903          	lw	s2,464(sp)
1c00973c:	1cc12983          	lw	s3,460(sp)
1c009740:	1c812a03          	lw	s4,456(sp)
1c009744:	1c412a83          	lw	s5,452(sp)
1c009748:	1c012b03          	lw	s6,448(sp)
1c00974c:	1bc12b83          	lw	s7,444(sp)
1c009750:	1b812c03          	lw	s8,440(sp)
1c009754:	1b412c83          	lw	s9,436(sp)
1c009758:	1b012d03          	lw	s10,432(sp)
1c00975c:	1ac12d83          	lw	s11,428(sp)
1c009760:	613d                	addi	sp,sp,480
1c009762:	8082                	ret
1c009764:	4781                	li	a5,0
1c009766:	ba45                	j	1c009116 <sha3_512+0x12e>

1c009768 <PQCLEAN_KYBER768_CLEAN_gen_matrix>:
1c009768:	db010113          	addi	sp,sp,-592
1c00976c:	21b12e23          	sw	s11,540(sp)
1c009770:	6d85                	lui	s11,0x1
1c009772:	24912223          	sw	s1,580(sp)
1c009776:	25212023          	sw	s2,576(sp)
1c00977a:	23512a23          	sw	s5,564(sp)
1c00977e:	23612823          	sw	s6,560(sp)
1c009782:	23912223          	sw	s9,548(sp)
1c009786:	23a12023          	sw	s10,544(sp)
1c00978a:	24112623          	sw	ra,588(sp)
1c00978e:	fffd8d13          	addi	s10,s11,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c009792:	24812423          	sw	s0,584(sp)
1c009796:	23312e23          	sw	s3,572(sp)
1c00979a:	23412c23          	sw	s4,568(sp)
1c00979e:	23712623          	sw	s7,556(sp)
1c0097a2:	23812423          	sw	s8,552(sp)
1c0097a6:	8cae                	mv	s9,a1
1c0097a8:	c432                	sw	a2,8(sp)
1c0097aa:	c62a                	sw	a0,12(sp)
1c0097ac:	4b01                	li	s6,0
1c0097ae:	20c10a93          	addi	s5,sp,524
1c0097b2:	d00d8d93          	addi	s11,s11,-768
1c0097b6:	10000913          	li	s2,256
1c0097ba:	1964                	addi	s1,sp,188
1c0097bc:	4432                	lw	s0,12(sp)
1c0097be:	0ffb7c13          	andi	s8,s6,255
1c0097c2:	4981                	li	s3,0
1c0097c4:	a831                	j	1c0097e0 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x78>
1c0097c6:	00f69023          	sh	a5,0(a3)
1c0097ca:	15251763          	bne	a0,s2,1c009918 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1b0>
1c0097ce:	0808                	addi	a0,sp,16
1c0097d0:	aacff0ef          	jal	ra,1c008a7c <shake128_ctx_release>
1c0097d4:	0985                	addi	s3,s3,1
1c0097d6:	478d                	li	a5,3
1c0097d8:	20040413          	addi	s0,s0,512
1c0097dc:	0ef98a63          	beq	s3,a5,1c0098d0 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x168>
1c0097e0:	47a2                	lw	a5,8(sp)
1c0097e2:	0ff9f613          	andi	a2,s3,255
1c0097e6:	cff9                	beqz	a5,1c0098c4 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x15c>
1c0097e8:	86b2                	mv	a3,a2
1c0097ea:	85e6                	mv	a1,s9
1c0097ec:	8662                	mv	a2,s8
1c0097ee:	0808                	addi	a0,sp,16
1c0097f0:	34d000ef          	jal	ra,1c00a33c <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c0097f4:	0810                	addi	a2,sp,16
1c0097f6:	458d                	li	a1,3
1c0097f8:	0848                	addi	a0,sp,20
1c0097fa:	98eff0ef          	jal	ra,1c008988 <shake128_squeezeblocks>
1c0097fe:	4b81                	li	s7,0
1c009800:	0858                	addi	a4,sp,20
1c009802:	00174583          	lbu	a1,1(a4)
1c009806:	00074603          	lbu	a2,0(a4)
1c00980a:	001b9693          	slli	a3,s7,0x1
1c00980e:	00859793          	slli	a5,a1,0x8
1c009812:	8fd1                	or	a5,a5,a2
1c009814:	01a7f7b3          	and	a5,a5,s10
1c009818:	07c2                	slli	a5,a5,0x10
1c00981a:	83c1                	srli	a5,a5,0x10
1c00981c:	00274603          	lbu	a2,2(a4)
1c009820:	96a2                	add	a3,a3,s0
1c009822:	0045d313          	srli	t1,a1,0x4
1c009826:	001b8513          	addi	a0,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00982a:	f8fdfee3          	bgeu	s11,a5,1c0097c6 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x5e>
1c00982e:	0612                	slli	a2,a2,0x4
1c009830:	00666633          	or	a2,a2,t1
1c009834:	00cdc863          	blt	s11,a2,1c009844 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xdc>
1c009838:	001b9793          	slli	a5,s7,0x1
1c00983c:	97a2                	add	a5,a5,s0
1c00983e:	00c79023          	sh	a2,0(a5)
1c009842:	0b85                	addi	s7,s7,1
1c009844:	f92b85e3          	beq	s7,s2,1c0097ce <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c009848:	070d                	addi	a4,a4,3
1c00984a:	faea9ce3          	bne	s5,a4,1c009802 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x9a>
1c00984e:	0ff00a13          	li	s4,255
1c009852:	a821                	j	1c00986a <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x102>
1c009854:	00171593          	slli	a1,a4,0x1
1c009858:	95aa                	add	a1,a1,a0
1c00985a:	0705                	addi	a4,a4,1
1c00985c:	00f59023          	sh	a5,0(a1)
1c009860:	0c676363          	bltu	a4,t1,1c009926 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1be>
1c009864:	9bba                	add	s7,s7,a4
1c009866:	f77a64e3          	bltu	s4,s7,1c0097ce <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00986a:	0810                	addi	a2,sp,16
1c00986c:	0848                	addi	a0,sp,20
1c00986e:	4585                	li	a1,1
1c009870:	918ff0ef          	jal	ra,1c008988 <shake128_squeezeblocks>
1c009874:	001b9513          	slli	a0,s7,0x1
1c009878:	9522                	add	a0,a0,s0
1c00987a:	41790333          	sub	t1,s2,s7
1c00987e:	0850                	addi	a2,sp,20
1c009880:	4701                	li	a4,0
1c009882:	00164583          	lbu	a1,1(a2)
1c009886:	00064e03          	lbu	t3,0(a2)
1c00988a:	00264683          	lbu	a3,2(a2)
1c00988e:	00859793          	slli	a5,a1,0x8
1c009892:	01c7e7b3          	or	a5,a5,t3
1c009896:	01a7f7b3          	and	a5,a5,s10
1c00989a:	07c2                	slli	a5,a5,0x10
1c00989c:	0692                	slli	a3,a3,0x4
1c00989e:	8191                	srli	a1,a1,0x4
1c0098a0:	83c1                	srli	a5,a5,0x10
1c0098a2:	8ecd                	or	a3,a3,a1
1c0098a4:	fafdf8e3          	bgeu	s11,a5,1c009854 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xec>
1c0098a8:	00ddc863          	blt	s11,a3,1c0098b8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x150>
1c0098ac:	00171793          	slli	a5,a4,0x1
1c0098b0:	97aa                	add	a5,a5,a0
1c0098b2:	00d79023          	sh	a3,0(a5)
1c0098b6:	0705                	addi	a4,a4,1
1c0098b8:	fa6776e3          	bgeu	a4,t1,1c009864 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c0098bc:	060d                	addi	a2,a2,3
1c0098be:	fcc492e3          	bne	s1,a2,1c009882 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x11a>
1c0098c2:	b74d                	j	1c009864 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c0098c4:	86e2                	mv	a3,s8
1c0098c6:	85e6                	mv	a1,s9
1c0098c8:	0808                	addi	a0,sp,16
1c0098ca:	273000ef          	jal	ra,1c00a33c <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c0098ce:	b71d                	j	1c0097f4 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x8c>
1c0098d0:	47b2                	lw	a5,12(sp)
1c0098d2:	0b05                	addi	s6,s6,1
1c0098d4:	60078793          	addi	a5,a5,1536
1c0098d8:	c63e                	sw	a5,12(sp)
1c0098da:	ef3b11e3          	bne	s6,s3,1c0097bc <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x54>
1c0098de:	24c12083          	lw	ra,588(sp)
1c0098e2:	24812403          	lw	s0,584(sp)
1c0098e6:	24412483          	lw	s1,580(sp)
1c0098ea:	24012903          	lw	s2,576(sp)
1c0098ee:	23c12983          	lw	s3,572(sp)
1c0098f2:	23812a03          	lw	s4,568(sp)
1c0098f6:	23412a83          	lw	s5,564(sp)
1c0098fa:	23012b03          	lw	s6,560(sp)
1c0098fe:	22c12b83          	lw	s7,556(sp)
1c009902:	22812c03          	lw	s8,552(sp)
1c009906:	22412c83          	lw	s9,548(sp)
1c00990a:	22012d03          	lw	s10,544(sp)
1c00990e:	21c12d83          	lw	s11,540(sp)
1c009912:	25010113          	addi	sp,sp,592
1c009916:	8082                	ret
1c009918:	8191                	srli	a1,a1,0x4
1c00991a:	0612                	slli	a2,a2,0x4
1c00991c:	8e4d                	or	a2,a2,a1
1c00991e:	8baa                	mv	s7,a0
1c009920:	f0cddce3          	bge	s11,a2,1c009838 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xd0>
1c009924:	b715                	j	1c009848 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xe0>
1c009926:	f8ddd3e3          	bge	s11,a3,1c0098ac <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x144>
1c00992a:	bf49                	j	1c0098bc <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x154>

1c00992c <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c00992c:	7379                	lui	t1,0xffffe
1c00992e:	b7010113          	addi	sp,sp,-1168
1c009932:	48112623          	sw	ra,1164(sp)
1c009936:	48812423          	sw	s0,1160(sp)
1c00993a:	48912223          	sw	s1,1156(sp)
1c00993e:	49212023          	sw	s2,1152(sp)
1c009942:	47312e23          	sw	s3,1148(sp)
1c009946:	47412c23          	sw	s4,1144(sp)
1c00994a:	47512a23          	sw	s5,1140(sp)
1c00994e:	47612823          	sw	s6,1136(sp)
1c009952:	47712623          	sw	s7,1132(sp)
1c009956:	47812423          	sw	s8,1128(sp)
1c00995a:	47912223          	sw	s9,1124(sp)
1c00995e:	47a12023          	sw	s10,1120(sp)
1c009962:	45b12e23          	sw	s11,1116(sp)
1c009966:	6a09                	lui	s4,0x2
1c009968:	911a                	add	sp,sp,t1
1c00996a:	7979                	lui	s2,0xffffe
1c00996c:	0818                	addi	a4,sp,16
1c00996e:	440a0793          	addi	a5,s4,1088 # 2440 <__CTOR_LIST__-0x1bffdbc4>
1c009972:	97ba                	add	a5,a5,a4
1c009974:	bc090493          	addi	s1,s2,-1088 # ffffdbc0 <__l2_shared_end+0xe3fedbc0>
1c009978:	94be                	add	s1,s1,a5
1c00997a:	842a                	mv	s0,a0
1c00997c:	8b2e                	mv	s6,a1
1c00997e:	8526                	mv	a0,s1
1c009980:	02000593          	li	a1,32
1c009984:	2dc9                	jal	1c00a056 <randombytes>
1c009986:	85a6                	mv	a1,s1
1c009988:	8526                	mv	a0,s1
1c00998a:	02000613          	li	a2,32
1c00998e:	e5aff0ef          	jal	ra,1c008fe8 <sha3_512>
1c009992:	0818                	addi	a4,sp,16
1c009994:	79fd                	lui	s3,0xfffff
1c009996:	440a0793          	addi	a5,s4,1088
1c00999a:	97ba                	add	a5,a5,a4
1c00999c:	e0098a93          	addi	s5,s3,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c0099a0:	9abe                	add	s5,s5,a5
1c0099a2:	85a6                	mv	a1,s1
1c0099a4:	8556                	mv	a0,s5
1c0099a6:	4601                	li	a2,0
1c0099a8:	33c1                	jal	1c009768 <PQCLEAN_KYBER768_CLEAN_gen_matrix>
1c0099aa:	0818                	addi	a4,sp,16
1c0099ac:	440a0793          	addi	a5,s4,1088
1c0099b0:	97ba                	add	a5,a5,a4
1c0099b2:	80098993          	addi	s3,s3,-2048
1c0099b6:	99be                	add	s3,s3,a5
1c0099b8:	02048493          	addi	s1,s1,32 # ff0020 <__CTOR_LIST__-0x1b00ffe4>
1c0099bc:	85a6                	mv	a1,s1
1c0099be:	854e                	mv	a0,s3
1c0099c0:	4601                	li	a2,0
1c0099c2:	2ccd                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0099c4:	85a6                	mv	a1,s1
1c0099c6:	20098513          	addi	a0,s3,512
1c0099ca:	4605                	li	a2,1
1c0099cc:	24e5                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0099ce:	85a6                	mv	a1,s1
1c0099d0:	40098513          	addi	a0,s3,1024
1c0099d4:	4609                	li	a2,2
1c0099d6:	2cf9                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0099d8:	8c52                	mv	s8,s4
1c0099da:	0818                	addi	a4,sp,16
1c0099dc:	440c0793          	addi	a5,s8,1088 # ff0440 <__CTOR_LIST__-0x1b00fbc4>
1c0099e0:	97ba                	add	a5,a5,a4
1c0099e2:	c0090a13          	addi	s4,s2,-1024
1c0099e6:	9a3e                	add	s4,s4,a5
1c0099e8:	85a6                	mv	a1,s1
1c0099ea:	8552                	mv	a0,s4
1c0099ec:	460d                	li	a2,3
1c0099ee:	24d9                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0099f0:	85a6                	mv	a1,s1
1c0099f2:	200a0513          	addi	a0,s4,512
1c0099f6:	4611                	li	a2,4
1c0099f8:	2c75                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c0099fa:	85a6                	mv	a1,s1
1c0099fc:	4615                	li	a2,5
1c0099fe:	400a0513          	addi	a0,s4,1024
1c009a02:	2c4d                	jal	1c009cb4 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009a04:	854e                	mv	a0,s3
1c009a06:	29f9                	jal	1c009ee4 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c009a08:	8552                	mv	a0,s4
1c009a0a:	29e9                	jal	1c009ee4 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c009a0c:	0818                	addi	a4,sp,16
1c009a0e:	440c0793          	addi	a5,s8,1088
1c009a12:	97ba                	add	a5,a5,a4
1c009a14:	20090493          	addi	s1,s2,512
1c009a18:	94be                	add	s1,s1,a5
1c009a1a:	864e                	mv	a2,s3
1c009a1c:	85d6                	mv	a1,s5
1c009a1e:	8526                	mv	a0,s1
1c009a20:	2bb5                	jal	1c009f9c <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009a22:	8526                	mv	a0,s1
1c009a24:	2909                	jal	1c009e36 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009a26:	20048b93          	addi	s7,s1,512
1c009a2a:	864e                	mv	a2,s3
1c009a2c:	600a8593          	addi	a1,s5,1536
1c009a30:	855e                	mv	a0,s7
1c009a32:	23ad                	jal	1c009f9c <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009a34:	855e                	mv	a0,s7
1c009a36:	2101                	jal	1c009e36 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009a38:	e40c0793          	addi	a5,s8,-448
1c009a3c:	0818                	addi	a4,sp,16
1c009a3e:	40048a93          	addi	s5,s1,1024
1c009a42:	00f705b3          	add	a1,a4,a5
1c009a46:	864e                	mv	a2,s3
1c009a48:	8556                	mv	a0,s5
1c009a4a:	2b89                	jal	1c009f9c <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009a4c:	8556                	mv	a0,s5
1c009a4e:	26e5                	jal	1c009e36 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009a50:	8652                	mv	a2,s4
1c009a52:	85a6                	mv	a1,s1
1c009a54:	8526                	mv	a0,s1
1c009a56:	23c1                	jal	1c00a016 <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c009a58:	8526                	mv	a0,s1
1c009a5a:	2345                	jal	1c009ffa <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c009a5c:	85ce                	mv	a1,s3
1c009a5e:	855a                	mv	a0,s6
1c009a60:	29a9                	jal	1c009eba <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c009a62:	85a6                	mv	a1,s1
1c009a64:	8522                	mv	a0,s0
1c009a66:	2991                	jal	1c009eba <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c009a68:	0818                	addi	a4,sp,16
1c009a6a:	440c0793          	addi	a5,s8,1088
1c009a6e:	97ba                	add	a5,a5,a4
1c009a70:	97ca                	add	a5,a5,s2
1c009a72:	c63e                	sw	a5,12(sp)
1c009a74:	4732                	lw	a4,12(sp)
1c009a76:	bc47a803          	lw	a6,-1084(a5)
1c009a7a:	bc87a503          	lw	a0,-1080(a5)
1c009a7e:	bcc7a583          	lw	a1,-1076(a5)
1c009a82:	bd07a603          	lw	a2,-1072(a5)
1c009a86:	bd47a683          	lw	a3,-1068(a5)
1c009a8a:	bc07a883          	lw	a7,-1088(a5)
1c009a8e:	bd872703          	lw	a4,-1064(a4)
1c009a92:	bdc7a783          	lw	a5,-1060(a5)
1c009a96:	0088dd93          	srli	s11,a7,0x8
1c009a9a:	0108dd13          	srli	s10,a7,0x10
1c009a9e:	0188dc93          	srli	s9,a7,0x18
1c009aa2:	00885c13          	srli	s8,a6,0x8
1c009aa6:	01085b93          	srli	s7,a6,0x10
1c009aaa:	01885b13          	srli	s6,a6,0x18
1c009aae:	00855a93          	srli	s5,a0,0x8
1c009ab2:	01055a13          	srli	s4,a0,0x10
1c009ab6:	01855993          	srli	s3,a0,0x18
1c009aba:	0085d913          	srli	s2,a1,0x8
1c009abe:	0105d493          	srli	s1,a1,0x10
1c009ac2:	0185d393          	srli	t2,a1,0x18
1c009ac6:	00865293          	srli	t0,a2,0x8
1c009aca:	01065f93          	srli	t6,a2,0x10
1c009ace:	01865f13          	srli	t5,a2,0x18
1c009ad2:	0086de93          	srli	t4,a3,0x8
1c009ad6:	0186d313          	srli	t1,a3,0x18
1c009ada:	49140023          	sb	a7,1152(s0)
1c009ade:	49b400a3          	sb	s11,1153(s0)
1c009ae2:	49a40123          	sb	s10,1154(s0)
1c009ae6:	499401a3          	sb	s9,1155(s0)
1c009aea:	49040223          	sb	a6,1156(s0)
1c009aee:	498402a3          	sb	s8,1157(s0)
1c009af2:	49740323          	sb	s7,1158(s0)
1c009af6:	496403a3          	sb	s6,1159(s0)
1c009afa:	48a40423          	sb	a0,1160(s0)
1c009afe:	495404a3          	sb	s5,1161(s0)
1c009b02:	49440523          	sb	s4,1162(s0)
1c009b06:	493405a3          	sb	s3,1163(s0)
1c009b0a:	48b40623          	sb	a1,1164(s0)
1c009b0e:	492406a3          	sb	s2,1165(s0)
1c009b12:	48940723          	sb	s1,1166(s0)
1c009b16:	48c40823          	sb	a2,1168(s0)
1c009b1a:	48d40a23          	sb	a3,1172(s0)
1c009b1e:	0106de13          	srli	t3,a3,0x10
1c009b22:	487407a3          	sb	t2,1167(s0)
1c009b26:	485408a3          	sb	t0,1169(s0)
1c009b2a:	49f40923          	sb	t6,1170(s0)
1c009b2e:	49e409a3          	sb	t5,1171(s0)
1c009b32:	49d40aa3          	sb	t4,1173(s0)
1c009b36:	00875893          	srli	a7,a4,0x8
1c009b3a:	01075813          	srli	a6,a4,0x10
1c009b3e:	01875513          	srli	a0,a4,0x18
1c009b42:	0087d593          	srli	a1,a5,0x8
1c009b46:	0107d613          	srli	a2,a5,0x10
1c009b4a:	0187d693          	srli	a3,a5,0x18
1c009b4e:	49c40b23          	sb	t3,1174(s0)
1c009b52:	48640ba3          	sb	t1,1175(s0)
1c009b56:	48e40c23          	sb	a4,1176(s0)
1c009b5a:	49140ca3          	sb	a7,1177(s0)
1c009b5e:	49040d23          	sb	a6,1178(s0)
1c009b62:	48a40da3          	sb	a0,1179(s0)
1c009b66:	48f40e23          	sb	a5,1180(s0)
1c009b6a:	48b40ea3          	sb	a1,1181(s0)
1c009b6e:	48c40f23          	sb	a2,1182(s0)
1c009b72:	48d40fa3          	sb	a3,1183(s0)
1c009b76:	6309                	lui	t1,0x2
1c009b78:	911a                	add	sp,sp,t1
1c009b7a:	48c12083          	lw	ra,1164(sp)
1c009b7e:	48812403          	lw	s0,1160(sp)
1c009b82:	48412483          	lw	s1,1156(sp)
1c009b86:	48012903          	lw	s2,1152(sp)
1c009b8a:	47c12983          	lw	s3,1148(sp)
1c009b8e:	47812a03          	lw	s4,1144(sp)
1c009b92:	47412a83          	lw	s5,1140(sp)
1c009b96:	47012b03          	lw	s6,1136(sp)
1c009b9a:	46c12b83          	lw	s7,1132(sp)
1c009b9e:	46812c03          	lw	s8,1128(sp)
1c009ba2:	46412c83          	lw	s9,1124(sp)
1c009ba6:	46012d03          	lw	s10,1120(sp)
1c009baa:	45c12d83          	lw	s11,1116(sp)
1c009bae:	49010113          	addi	sp,sp,1168
1c009bb2:	8082                	ret

1c009bb4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c009bb4:	1141                	addi	sp,sp,-16
1c009bb6:	c422                	sw	s0,8(sp)
1c009bb8:	c226                	sw	s1,4(sp)
1c009bba:	842a                	mv	s0,a0
1c009bbc:	84ae                	mv	s1,a1
1c009bbe:	c606                	sw	ra,12(sp)
1c009bc0:	c04a                	sw	s2,0(sp)
1c009bc2:	33ad                	jal	1c00992c <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c009bc4:	48048713          	addi	a4,s1,1152
1c009bc8:	00440793          	addi	a5,s0,4
1c009bcc:	00f77663          	bgeu	a4,a5,1c009bd8 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x24>
1c009bd0:	48448793          	addi	a5,s1,1156
1c009bd4:	06f46c63          	bltu	s0,a5,1c009c4c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x98>
1c009bd8:	86a2                	mv	a3,s0
1c009bda:	4a040313          	addi	t1,s0,1184
1c009bde:	0016c803          	lbu	a6,1(a3)
1c009be2:	0006c883          	lbu	a7,0(a3)
1c009be6:	0026c603          	lbu	a2,2(a3)
1c009bea:	0036c783          	lbu	a5,3(a3)
1c009bee:	0822                	slli	a6,a6,0x8
1c009bf0:	01186833          	or	a6,a6,a7
1c009bf4:	0642                	slli	a2,a2,0x10
1c009bf6:	01066633          	or	a2,a2,a6
1c009bfa:	07e2                	slli	a5,a5,0x18
1c009bfc:	8fd1                	or	a5,a5,a2
1c009bfe:	0087d893          	srli	a7,a5,0x8
1c009c02:	0107d813          	srli	a6,a5,0x10
1c009c06:	83e1                	srli	a5,a5,0x18
1c009c08:	00c70023          	sb	a2,0(a4)
1c009c0c:	011700a3          	sb	a7,1(a4)
1c009c10:	01070123          	sb	a6,2(a4)
1c009c14:	00f701a3          	sb	a5,3(a4)
1c009c18:	0691                	addi	a3,a3,4
1c009c1a:	0711                	addi	a4,a4,4
1c009c1c:	fc6691e3          	bne	a3,t1,1c009bde <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x2a>
1c009c20:	6905                	lui	s2,0x1
1c009c22:	92090513          	addi	a0,s2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c009c26:	85a2                	mv	a1,s0
1c009c28:	9526                	add	a0,a0,s1
1c009c2a:	4a000613          	li	a2,1184
1c009c2e:	8daff0ef          	jal	ra,1c008d08 <sha3_256>
1c009c32:	94090513          	addi	a0,s2,-1728
1c009c36:	9526                	add	a0,a0,s1
1c009c38:	02000593          	li	a1,32
1c009c3c:	2929                	jal	1c00a056 <randombytes>
1c009c3e:	40b2                	lw	ra,12(sp)
1c009c40:	4422                	lw	s0,8(sp)
1c009c42:	4492                	lw	s1,4(sp)
1c009c44:	4902                	lw	s2,0(sp)
1c009c46:	4501                	li	a0,0
1c009c48:	0141                	addi	sp,sp,16
1c009c4a:	8082                	ret
1c009c4c:	87a2                	mv	a5,s0
1c009c4e:	4a040613          	addi	a2,s0,1184
1c009c52:	0007c683          	lbu	a3,0(a5)
1c009c56:	0785                	addi	a5,a5,1
1c009c58:	0705                	addi	a4,a4,1
1c009c5a:	fed70fa3          	sb	a3,-1(a4)
1c009c5e:	fec79ae3          	bne	a5,a2,1c009c52 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x9e>
1c009c62:	bf7d                	j	1c009c20 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6c>

1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>:
1c009c64:	6805                	lui	a6,0x1
1c009c66:	18050893          	addi	a7,a0,384 # 1000180 <__CTOR_LIST__-0x1afffe84>
1c009c6a:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009c6e:	00059703          	lh	a4,0(a1)
1c009c72:	00259783          	lh	a5,2(a1)
1c009c76:	050d                	addi	a0,a0,3
1c009c78:	40f75613          	srai	a2,a4,0xf
1c009c7c:	40f7d693          	srai	a3,a5,0xf
1c009c80:	01067633          	and	a2,a2,a6
1c009c84:	0106f6b3          	and	a3,a3,a6
1c009c88:	9732                	add	a4,a4,a2
1c009c8a:	97b6                	add	a5,a5,a3
1c009c8c:	0742                	slli	a4,a4,0x10
1c009c8e:	07c2                	slli	a5,a5,0x10
1c009c90:	8341                	srli	a4,a4,0x10
1c009c92:	83c1                	srli	a5,a5,0x10
1c009c94:	00479613          	slli	a2,a5,0x4
1c009c98:	00875693          	srli	a3,a4,0x8
1c009c9c:	8ed1                	or	a3,a3,a2
1c009c9e:	8391                	srli	a5,a5,0x4
1c009ca0:	fee50ea3          	sb	a4,-3(a0)
1c009ca4:	fed50f23          	sb	a3,-2(a0)
1c009ca8:	fef50fa3          	sb	a5,-1(a0)
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
1c009cc6:	257d                	jal	1c00a374 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c009cc8:	858a                	mv	a1,sp
1c009cca:	8522                	mv	a0,s0
1c009ccc:	ff2fe0ef          	jal	ra,1c0084be <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c009cd0:	40ba                	lw	ra,140(sp)
1c009cd2:	442a                	lw	s0,136(sp)
1c009cd4:	6149                	addi	sp,sp,144
1c009cd6:	8082                	ret

1c009cd8 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c009cd8:	9e010113          	addi	sp,sp,-1568
1c009cdc:	6341                	lui	t1,0x10
1c009cde:	61212823          	sw	s2,1552(sp)
1c009ce2:	60112e23          	sw	ra,1564(sp)
1c009ce6:	60812c23          	sw	s0,1560(sp)
1c009cea:	60912a23          	sw	s1,1556(sp)
1c009cee:	61312623          	sw	s3,1548(sp)
1c009cf2:	61412423          	sw	s4,1544(sp)
1c009cf6:	892a                	mv	s2,a0
1c009cf8:	4e01                	li	t3,0
1c009cfa:	137d                	addi	t1,t1,-1
1c009cfc:	10000f93          	li	t6,256
1c009d00:	00061503          	lh	a0,0(a2)
1c009d04:	00461383          	lh	t2,4(a2)
1c009d08:	00059803          	lh	a6,0(a1)
1c009d0c:	00459283          	lh	t0,4(a1)
1c009d10:	00259683          	lh	a3,2(a1)
1c009d14:	00659f03          	lh	t5,6(a1)
1c009d18:	00261703          	lh	a4,2(a2)
1c009d1c:	00661e83          	lh	t4,6(a2)
1c009d20:	401e5793          	srai	a5,t3,0x1
1c009d24:	00279893          	slli	a7,a5,0x2
1c009d28:	60010413          	addi	s0,sp,1536
1c009d2c:	0542                	slli	a0,a0,0x10
1c009d2e:	0063f3b3          	and	t2,t2,t1
1c009d32:	0842                	slli	a6,a6,0x10
1c009d34:	0062f2b3          	and	t0,t0,t1
1c009d38:	0785                	addi	a5,a5,1
1c009d3a:	98a2                	add	a7,a7,s0
1c009d3c:	06c2                	slli	a3,a3,0x10
1c009d3e:	006f7f33          	and	t5,t5,t1
1c009d42:	00756533          	or	a0,a0,t2
1c009d46:	0742                	slli	a4,a4,0x10
1c009d48:	006efeb3          	and	t4,t4,t1
1c009d4c:	00586833          	or	a6,a6,t0
1c009d50:	078a                	slli	a5,a5,0x2
1c009d52:	97a2                	add	a5,a5,s0
1c009d54:	01e6e6b3          	or	a3,a3,t5
1c009d58:	01d76733          	or	a4,a4,t4
1c009d5c:	a108a023          	sw	a6,-1536(a7) # fefa00 <__CTOR_LIST__-0x1b010604>
1c009d60:	c0a8a023          	sw	a0,-1024(a7)
1c009d64:	a0d7a023          	sw	a3,-1536(a5)
1c009d68:	c0e7a023          	sw	a4,-1024(a5)
1c009d6c:	0e11                	addi	t3,t3,4
1c009d6e:	05a1                	addi	a1,a1,8
1c009d70:	0621                	addi	a2,a2,8
1c009d72:	f9fe17e3          	bne	t3,t6,1c009d00 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x28>
1c009d76:	1c000537          	lui	a0,0x1c000
1c009d7a:	15050513          	addi	a0,a0,336 # 1c000150 <__clz_tab+0x134>
1c009d7e:	023000ef          	jal	ra,1c00a5a0 <puts>
1c009d82:	840a                	mv	s0,sp
1c009d84:	20010a13          	addi	s4,sp,512
1c009d88:	1c0009b7          	lui	s3,0x1c000
1c009d8c:	400c                	lw	a1,0(s0)
1c009d8e:	16498513          	addi	a0,s3,356 # 1c000164 <__clz_tab+0x148>
1c009d92:	0411                	addi	s0,s0,4
1c009d94:	0cf000ef          	jal	ra,1c00a662 <printf>
1c009d98:	fe8a1ae3          	bne	s4,s0,1c009d8c <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0xb4>
1c009d9c:	1c000537          	lui	a0,0x1c000
1c009da0:	16c50513          	addi	a0,a0,364 # 1c00016c <__clz_tab+0x150>
1c009da4:	7fc000ef          	jal	ra,1c00a5a0 <puts>
1c009da8:	84d2                	mv	s1,s4
1c009daa:	40010413          	addi	s0,sp,1024
1c009dae:	408c                	lw	a1,0(s1)
1c009db0:	16498513          	addi	a0,s3,356
1c009db4:	0491                	addi	s1,s1,4
1c009db6:	0ad000ef          	jal	ra,1c00a662 <printf>
1c009dba:	fe941ae3          	bne	s0,s1,1c009dae <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0xd6>
1c009dbe:	8652                	mv	a2,s4
1c009dc0:	858a                	mv	a1,sp
1c009dc2:	8522                	mv	a0,s0
1c009dc4:	e80fe0ef          	jal	ra,1c008444 <KYBER_poly_pwm>
1c009dc8:	84ca                	mv	s1,s2
1c009dca:	87a2                	mv	a5,s0
1c009dcc:	60010813          	addi	a6,sp,1536
1c009dd0:	874a                	mv	a4,s2
1c009dd2:	4390                	lw	a2,0(a5)
1c009dd4:	43d4                	lw	a3,4(a5)
1c009dd6:	07a1                	addi	a5,a5,8
1c009dd8:	01065513          	srli	a0,a2,0x10
1c009ddc:	0106d593          	srli	a1,a3,0x10
1c009de0:	00a71023          	sh	a0,0(a4)
1c009de4:	00b71123          	sh	a1,2(a4)
1c009de8:	00c71223          	sh	a2,4(a4)
1c009dec:	00d71323          	sh	a3,6(a4)
1c009df0:	0721                	addi	a4,a4,8
1c009df2:	fef810e3          	bne	a6,a5,1c009dd2 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0xfa>
1c009df6:	1c000537          	lui	a0,0x1c000
1c009dfa:	17450513          	addi	a0,a0,372 # 1c000174 <__clz_tab+0x158>
1c009dfe:	7a2000ef          	jal	ra,1c00a5a0 <puts>
1c009e02:	20090913          	addi	s2,s2,512
1c009e06:	00049583          	lh	a1,0(s1)
1c009e0a:	16498513          	addi	a0,s3,356
1c009e0e:	0489                	addi	s1,s1,2
1c009e10:	053000ef          	jal	ra,1c00a662 <printf>
1c009e14:	ff2499e3          	bne	s1,s2,1c009e06 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x12e>
1c009e18:	61c12083          	lw	ra,1564(sp)
1c009e1c:	61812403          	lw	s0,1560(sp)
1c009e20:	61412483          	lw	s1,1556(sp)
1c009e24:	61012903          	lw	s2,1552(sp)
1c009e28:	60c12983          	lw	s3,1548(sp)
1c009e2c:	60812a03          	lw	s4,1544(sp)
1c009e30:	62010113          	addi	sp,sp,1568
1c009e34:	8082                	ret

1c009e36 <PQCLEAN_KYBER768_CLEAN_poly_tomont>:
1c009e36:	1141                	addi	sp,sp,-16
1c009e38:	c422                	sw	s0,8(sp)
1c009e3a:	c226                	sw	s1,4(sp)
1c009e3c:	c04a                	sw	s2,0(sp)
1c009e3e:	c606                	sw	ra,12(sp)
1c009e40:	842a                	mv	s0,a0
1c009e42:	20050913          	addi	s2,a0,512
1c009e46:	54900493          	li	s1,1353
1c009e4a:	00041503          	lh	a0,0(s0)
1c009e4e:	0409                	addi	s0,s0,2
1c009e50:	02950533          	mul	a0,a0,s1
1c009e54:	2165                	jal	1c00a2fc <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009e56:	fea41f23          	sh	a0,-2(s0)
1c009e5a:	ff2418e3          	bne	s0,s2,1c009e4a <PQCLEAN_KYBER768_CLEAN_poly_tomont+0x14>
1c009e5e:	40b2                	lw	ra,12(sp)
1c009e60:	4422                	lw	s0,8(sp)
1c009e62:	4492                	lw	s1,4(sp)
1c009e64:	4902                	lw	s2,0(sp)
1c009e66:	0141                	addi	sp,sp,16
1c009e68:	8082                	ret

1c009e6a <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c009e6a:	1141                	addi	sp,sp,-16
1c009e6c:	c422                	sw	s0,8(sp)
1c009e6e:	c226                	sw	s1,4(sp)
1c009e70:	c606                	sw	ra,12(sp)
1c009e72:	842a                	mv	s0,a0
1c009e74:	20050493          	addi	s1,a0,512
1c009e78:	00041503          	lh	a0,0(s0)
1c009e7c:	0409                	addi	s0,s0,2
1c009e7e:	2969                	jal	1c00a318 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c009e80:	fea41f23          	sh	a0,-2(s0)
1c009e84:	fe941ae3          	bne	s0,s1,1c009e78 <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c009e88:	40b2                	lw	ra,12(sp)
1c009e8a:	4422                	lw	s0,8(sp)
1c009e8c:	4492                	lw	s1,4(sp)
1c009e8e:	0141                	addi	sp,sp,16
1c009e90:	8082                	ret

1c009e92 <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c009e92:	4781                	li	a5,0
1c009e94:	20000893          	li	a7,512
1c009e98:	00f606b3          	add	a3,a2,a5
1c009e9c:	00f58733          	add	a4,a1,a5
1c009ea0:	0006d803          	lhu	a6,0(a3)
1c009ea4:	00075703          	lhu	a4,0(a4)
1c009ea8:	00f506b3          	add	a3,a0,a5
1c009eac:	0789                	addi	a5,a5,2
1c009eae:	9742                	add	a4,a4,a6
1c009eb0:	00e69023          	sh	a4,0(a3)
1c009eb4:	ff1792e3          	bne	a5,a7,1c009e98 <PQCLEAN_KYBER768_CLEAN_poly_add+0x6>
1c009eb8:	8082                	ret

1c009eba <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>:
1c009eba:	1141                	addi	sp,sp,-16
1c009ebc:	c606                	sw	ra,12(sp)
1c009ebe:	c422                	sw	s0,8(sp)
1c009ec0:	c226                	sw	s1,4(sp)
1c009ec2:	842a                	mv	s0,a0
1c009ec4:	84ae                	mv	s1,a1
1c009ec6:	3b79                	jal	1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009ec8:	20048593          	addi	a1,s1,512
1c009ecc:	18040513          	addi	a0,s0,384
1c009ed0:	3b51                	jal	1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009ed2:	30040513          	addi	a0,s0,768
1c009ed6:	4422                	lw	s0,8(sp)
1c009ed8:	40b2                	lw	ra,12(sp)
1c009eda:	40048593          	addi	a1,s1,1024
1c009ede:	4492                	lw	s1,4(sp)
1c009ee0:	0141                	addi	sp,sp,16
1c009ee2:	b349                	j	1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>

1c009ee4 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c009ee4:	9e010113          	addi	sp,sp,-1568
1c009ee8:	60912a23          	sw	s1,1556(sp)
1c009eec:	64c1                	lui	s1,0x10
1c009eee:	60812c23          	sw	s0,1560(sp)
1c009ef2:	61212823          	sw	s2,1552(sp)
1c009ef6:	61312623          	sw	s3,1548(sp)
1c009efa:	61412423          	sw	s4,1544(sp)
1c009efe:	60112e23          	sw	ra,1564(sp)
1c009f02:	8a2a                	mv	s4,a0
1c009f04:	60050413          	addi	s0,a0,1536
1c009f08:	40010993          	addi	s3,sp,1024
1c009f0c:	14fd                	addi	s1,s1,-1
1c009f0e:	10000913          	li	s2,256
1c009f12:	20000613          	li	a2,512
1c009f16:	85d2                	mv	a1,s4
1c009f18:	854e                	mv	a0,s3
1c009f1a:	296d                	jal	1c00a3d4 <memcpy>
1c009f1c:	864e                	mv	a2,s3
1c009f1e:	4681                	li	a3,0
1c009f20:	00061703          	lh	a4,0(a2)
1c009f24:	00261583          	lh	a1,2(a2)
1c009f28:	4016d793          	srai	a5,a3,0x1
1c009f2c:	078a                	slli	a5,a5,0x2
1c009f2e:	0742                	slli	a4,a4,0x10
1c009f30:	8de5                	and	a1,a1,s1
1c009f32:	60010513          	addi	a0,sp,1536
1c009f36:	97aa                	add	a5,a5,a0
1c009f38:	8f4d                	or	a4,a4,a1
1c009f3a:	a0e7a023          	sw	a4,-1536(a5)
1c009f3e:	0689                	addi	a3,a3,2
1c009f40:	0611                	addi	a2,a2,4
1c009f42:	fd269fe3          	bne	a3,s2,1c009f20 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x3c>
1c009f46:	040c                	addi	a1,sp,512
1c009f48:	850a                	mv	a0,sp
1c009f4a:	c9cfe0ef          	jal	ra,1c0083e6 <KYBER_poly_ntt>
1c009f4e:	0418                	addi	a4,sp,512
1c009f50:	87d2                	mv	a5,s4
1c009f52:	4310                	lw	a2,0(a4)
1c009f54:	4354                	lw	a3,4(a4)
1c009f56:	0721                	addi	a4,a4,8
1c009f58:	01065813          	srli	a6,a2,0x10
1c009f5c:	0106d593          	srli	a1,a3,0x10
1c009f60:	01079023          	sh	a6,0(a5)
1c009f64:	00b79123          	sh	a1,2(a5)
1c009f68:	00c79223          	sh	a2,4(a5)
1c009f6c:	00d79323          	sh	a3,6(a5)
1c009f70:	07a1                	addi	a5,a5,8
1c009f72:	fee990e3          	bne	s3,a4,1c009f52 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x6e>
1c009f76:	200a0a13          	addi	s4,s4,512
1c009f7a:	f9441ce3          	bne	s0,s4,1c009f12 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2e>
1c009f7e:	61c12083          	lw	ra,1564(sp)
1c009f82:	61812403          	lw	s0,1560(sp)
1c009f86:	61412483          	lw	s1,1556(sp)
1c009f8a:	61012903          	lw	s2,1552(sp)
1c009f8e:	60c12983          	lw	s3,1548(sp)
1c009f92:	60812a03          	lw	s4,1544(sp)
1c009f96:	62010113          	addi	sp,sp,1568
1c009f9a:	8082                	ret

1c009f9c <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c009f9c:	df010113          	addi	sp,sp,-528
1c009fa0:	20112623          	sw	ra,524(sp)
1c009fa4:	20812423          	sw	s0,520(sp)
1c009fa8:	20912223          	sw	s1,516(sp)
1c009fac:	21212023          	sw	s2,512(sp)
1c009fb0:	842a                	mv	s0,a0
1c009fb2:	84ae                	mv	s1,a1
1c009fb4:	8932                	mv	s2,a2
1c009fb6:	330d                	jal	1c009cd8 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009fb8:	20090613          	addi	a2,s2,512
1c009fbc:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c009fc0:	850a                	mv	a0,sp
1c009fc2:	3b19                	jal	1c009cd8 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009fc4:	860a                	mv	a2,sp
1c009fc6:	85a2                	mv	a1,s0
1c009fc8:	8522                	mv	a0,s0
1c009fca:	35e1                	jal	1c009e92 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009fcc:	40090613          	addi	a2,s2,1024
1c009fd0:	40048593          	addi	a1,s1,1024
1c009fd4:	850a                	mv	a0,sp
1c009fd6:	3309                	jal	1c009cd8 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009fd8:	860a                	mv	a2,sp
1c009fda:	85a2                	mv	a1,s0
1c009fdc:	8522                	mv	a0,s0
1c009fde:	3d55                	jal	1c009e92 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009fe0:	8522                	mv	a0,s0
1c009fe2:	3561                	jal	1c009e6a <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009fe4:	20c12083          	lw	ra,524(sp)
1c009fe8:	20812403          	lw	s0,520(sp)
1c009fec:	20412483          	lw	s1,516(sp)
1c009ff0:	20012903          	lw	s2,512(sp)
1c009ff4:	21010113          	addi	sp,sp,528
1c009ff8:	8082                	ret

1c009ffa <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c009ffa:	1141                	addi	sp,sp,-16
1c009ffc:	c606                	sw	ra,12(sp)
1c009ffe:	c422                	sw	s0,8(sp)
1c00a000:	842a                	mv	s0,a0
1c00a002:	35a5                	jal	1c009e6a <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00a004:	20040513          	addi	a0,s0,512
1c00a008:	358d                	jal	1c009e6a <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00a00a:	40040513          	addi	a0,s0,1024
1c00a00e:	4422                	lw	s0,8(sp)
1c00a010:	40b2                	lw	ra,12(sp)
1c00a012:	0141                	addi	sp,sp,16
1c00a014:	bd99                	j	1c009e6a <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c00a016 <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c00a016:	1101                	addi	sp,sp,-32
1c00a018:	cc22                	sw	s0,24(sp)
1c00a01a:	ca26                	sw	s1,20(sp)
1c00a01c:	c84a                	sw	s2,16(sp)
1c00a01e:	c64e                	sw	s3,12(sp)
1c00a020:	c452                	sw	s4,8(sp)
1c00a022:	ce06                	sw	ra,28(sp)
1c00a024:	89aa                	mv	s3,a0
1c00a026:	892e                	mv	s2,a1
1c00a028:	84b2                	mv	s1,a2
1c00a02a:	4401                	li	s0,0
1c00a02c:	60000a13          	li	s4,1536
1c00a030:	00848633          	add	a2,s1,s0
1c00a034:	008905b3          	add	a1,s2,s0
1c00a038:	00898533          	add	a0,s3,s0
1c00a03c:	20040413          	addi	s0,s0,512
1c00a040:	3d89                	jal	1c009e92 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00a042:	ff4417e3          	bne	s0,s4,1c00a030 <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00a046:	40f2                	lw	ra,28(sp)
1c00a048:	4462                	lw	s0,24(sp)
1c00a04a:	44d2                	lw	s1,20(sp)
1c00a04c:	4942                	lw	s2,16(sp)
1c00a04e:	49b2                	lw	s3,12(sp)
1c00a050:	4a22                	lw	s4,8(sp)
1c00a052:	6105                	addi	sp,sp,32
1c00a054:	8082                	ret

1c00a056 <randombytes>:
1c00a056:	2a058263          	beqz	a1,1c00a2fa <randombytes+0x2a4>
1c00a05a:	715d                	addi	sp,sp,-80
1c00a05c:	00b50733          	add	a4,a0,a1
1c00a060:	c63a                	sw	a4,12(sp)
1c00a062:	9e378737          	lui	a4,0x9e378
1c00a066:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c00a06a:	1c0067b7          	lui	a5,0x1c006
1c00a06e:	c43a                	sw	a4,8(sp)
1c00a070:	e377a737          	lui	a4,0xe377a
1c00a074:	1e478793          	addi	a5,a5,484 # 1c0061e4 <outleft>
1c00a078:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c00a07c:	c83e                	sw	a5,16(sp)
1c00a07e:	ca3a                	sw	a4,20(sp)
1c00a080:	439c                	lw	a5,0(a5)
1c00a082:	c6ef3737          	lui	a4,0xc6ef3
1c00a086:	c6a2                	sw	s0,76(sp)
1c00a088:	1c0062b7          	lui	t0,0x1c006
1c00a08c:	1c006437          	lui	s0,0x1c006
1c00a090:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c00a094:	d06e                	sw	s11,32(sp)
1c00a096:	c4a6                	sw	s1,72(sp)
1c00a098:	c2ca                	sw	s2,68(sp)
1c00a09a:	c0ce                	sw	s3,64(sp)
1c00a09c:	de52                	sw	s4,60(sp)
1c00a09e:	dc56                	sw	s5,56(sp)
1c00a0a0:	da5a                	sw	s6,52(sp)
1c00a0a2:	d85e                	sw	s7,48(sp)
1c00a0a4:	d662                	sw	s8,44(sp)
1c00a0a6:	d466                	sw	s9,40(sp)
1c00a0a8:	d26a                	sw	s10,36(sp)
1c00a0aa:	8daa                	mv	s11,a0
1c00a0ac:	1c040413          	addi	s0,s0,448 # 1c0061c0 <out>
1c00a0b0:	19028293          	addi	t0,t0,400 # 1c006190 <in>
1c00a0b4:	cc3a                	sw	a4,24(sp)
1c00a0b6:	cf85                	beqz	a5,1c00a0ee <randombytes+0x98>
1c00a0b8:	17fd                	addi	a5,a5,-1
1c00a0ba:	00279713          	slli	a4,a5,0x2
1c00a0be:	9722                	add	a4,a4,s0
1c00a0c0:	4304                	lw	s1,0(a4)
1c00a0c2:	4742                	lw	a4,16(sp)
1c00a0c4:	009d8023          	sb	s1,0(s11)
1c00a0c8:	0d85                	addi	s11,s11,1
1c00a0ca:	c31c                	sw	a5,0(a4)
1c00a0cc:	4732                	lw	a4,12(sp)
1c00a0ce:	feed94e3          	bne	s11,a4,1c00a0b6 <randombytes+0x60>
1c00a0d2:	4436                	lw	s0,76(sp)
1c00a0d4:	44a6                	lw	s1,72(sp)
1c00a0d6:	4916                	lw	s2,68(sp)
1c00a0d8:	4986                	lw	s3,64(sp)
1c00a0da:	5a72                	lw	s4,60(sp)
1c00a0dc:	5ae2                	lw	s5,56(sp)
1c00a0de:	5b52                	lw	s6,52(sp)
1c00a0e0:	5bc2                	lw	s7,48(sp)
1c00a0e2:	5c32                	lw	s8,44(sp)
1c00a0e4:	5ca2                	lw	s9,40(sp)
1c00a0e6:	5d12                	lw	s10,36(sp)
1c00a0e8:	5d82                	lw	s11,32(sp)
1c00a0ea:	6161                	addi	sp,sp,80
1c00a0ec:	8082                	ret
1c00a0ee:	0002a703          	lw	a4,0(t0)
1c00a0f2:	0042ae83          	lw	t4,4(t0)
1c00a0f6:	0082af03          	lw	t5,8(t0)
1c00a0fa:	0705                	addi	a4,a4,1
1c00a0fc:	00e2a023          	sw	a4,0(t0)
1c00a100:	00c2af83          	lw	t6,12(t0)
1c00a104:	ef11                	bnez	a4,1c00a120 <randombytes+0xca>
1c00a106:	0e85                	addi	t4,t4,1
1c00a108:	01d2a223          	sw	t4,4(t0)
1c00a10c:	000e9a63          	bnez	t4,1c00a120 <randombytes+0xca>
1c00a110:	0f05                	addi	t5,t5,1
1c00a112:	01e2a423          	sw	t5,8(t0)
1c00a116:	000f1563          	bnez	t5,1c00a120 <randombytes+0xca>
1c00a11a:	0f85                	addi	t6,t6,1
1c00a11c:	01f2a623          	sw	t6,12(t0)
1c00a120:	0102ae03          	lw	t3,16(t0)
1c00a124:	0142a303          	lw	t1,20(t0)
1c00a128:	0182a883          	lw	a7,24(t0)
1c00a12c:	01c2a803          	lw	a6,28(t0)
1c00a130:	0202a503          	lw	a0,32(t0)
1c00a134:	0242a583          	lw	a1,36(t0)
1c00a138:	0282a603          	lw	a2,40(t0)
1c00a13c:	02c2a683          	lw	a3,44(t0)
1c00a140:	00974713          	xori	a4,a4,9
1c00a144:	007ece93          	xori	t4,t4,7
1c00a148:	009f4f13          	xori	t5,t5,9
1c00a14c:	003fcf93          	xori	t6,t6,3
1c00a150:	002e4e13          	xori	t3,t3,2
1c00a154:	00334313          	xori	t1,t1,3
1c00a158:	0088c893          	xori	a7,a7,8
1c00a15c:	00484813          	xori	a6,a6,4
1c00a160:	00654513          	xori	a0,a0,6
1c00a164:	0025c593          	xori	a1,a1,2
1c00a168:	00664613          	xori	a2,a2,6
1c00a16c:	0046c693          	xori	a3,a3,4
1c00a170:	4495                	li	s1,5
1c00a172:	49a5                	li	s3,9
1c00a174:	4a1d                	li	s4,7
1c00a176:	4a89                	li	s5,2
1c00a178:	4b0d                	li	s6,3
1c00a17a:	4ba1                	li	s7,8
1c00a17c:	4d0d                	li	s10,3
1c00a17e:	4c0d                	li	s8,3
1c00a180:	4781                	li	a5,0
1c00a182:	ce6e                	sw	s11,28(sp)
1c00a184:	43d2                	lw	t2,20(sp)
1c00a186:	00778db3          	add	s11,a5,t2
1c00a18a:	43a2                	lw	t2,8(sp)
1c00a18c:	01b6dc93          	srli	s9,a3,0x1b
1c00a190:	00569913          	slli	s2,a3,0x5
1c00a194:	979e                	add	a5,a5,t2
1c00a196:	0036c393          	xori	t2,a3,3
1c00a19a:	01996933          	or	s2,s2,s9
1c00a19e:	93be                	add	t2,t2,a5
1c00a1a0:	0123c3b3          	xor	t2,t2,s2
1c00a1a4:	971e                	add	a4,a4,t2
1c00a1a6:	01975c93          	srli	s9,a4,0x19
1c00a1aa:	00174393          	xori	t2,a4,1
1c00a1ae:	00771913          	slli	s2,a4,0x7
1c00a1b2:	01996933          	or	s2,s2,s9
1c00a1b6:	93be                	add	t2,t2,a5
1c00a1b8:	0123c3b3          	xor	t2,t2,s2
1c00a1bc:	9e9e                	add	t4,t4,t2
1c00a1be:	017edc93          	srli	s9,t4,0x17
1c00a1c2:	004ec393          	xori	t2,t4,4
1c00a1c6:	009e9913          	slli	s2,t4,0x9
1c00a1ca:	01996933          	or	s2,s2,s9
1c00a1ce:	93be                	add	t2,t2,a5
1c00a1d0:	0123c3b3          	xor	t2,t2,s2
1c00a1d4:	9f1e                	add	t5,t5,t2
1c00a1d6:	013f5c93          	srli	s9,t5,0x13
1c00a1da:	001f4393          	xori	t2,t5,1
1c00a1de:	00df1913          	slli	s2,t5,0xd
1c00a1e2:	01996933          	or	s2,s2,s9
1c00a1e6:	93be                	add	t2,t2,a5
1c00a1e8:	0123c3b3          	xor	t2,t2,s2
1c00a1ec:	9f9e                	add	t6,t6,t2
1c00a1ee:	01bfdc93          	srli	s9,t6,0x1b
1c00a1f2:	005fc393          	xori	t2,t6,5
1c00a1f6:	005f9913          	slli	s2,t6,0x5
1c00a1fa:	01996933          	or	s2,s2,s9
1c00a1fe:	93be                	add	t2,t2,a5
1c00a200:	0123c3b3          	xor	t2,t2,s2
1c00a204:	9e1e                	add	t3,t3,t2
1c00a206:	019e5c93          	srli	s9,t3,0x19
1c00a20a:	009e4393          	xori	t2,t3,9
1c00a20e:	007e1913          	slli	s2,t3,0x7
1c00a212:	01996933          	or	s2,s2,s9
1c00a216:	93be                	add	t2,t2,a5
1c00a218:	0123c3b3          	xor	t2,t2,s2
1c00a21c:	931e                	add	t1,t1,t2
1c00a21e:	01735c93          	srli	s9,t1,0x17
1c00a222:	00234393          	xori	t2,t1,2
1c00a226:	00931913          	slli	s2,t1,0x9
1c00a22a:	01996933          	or	s2,s2,s9
1c00a22e:	93be                	add	t2,t2,a5
1c00a230:	0123c3b3          	xor	t2,t2,s2
1c00a234:	989e                	add	a7,a7,t2
1c00a236:	0138dc93          	srli	s9,a7,0x13
1c00a23a:	0068c393          	xori	t2,a7,6
1c00a23e:	00d89913          	slli	s2,a7,0xd
1c00a242:	01996933          	or	s2,s2,s9
1c00a246:	93be                	add	t2,t2,a5
1c00a248:	0123c3b3          	xor	t2,t2,s2
1c00a24c:	981e                	add	a6,a6,t2
1c00a24e:	01b85c93          	srli	s9,a6,0x1b
1c00a252:	00584393          	xori	t2,a6,5
1c00a256:	00581913          	slli	s2,a6,0x5
1c00a25a:	01996933          	or	s2,s2,s9
1c00a25e:	93be                	add	t2,t2,a5
1c00a260:	0123c3b3          	xor	t2,t2,s2
1c00a264:	951e                	add	a0,a0,t2
1c00a266:	01955c93          	srli	s9,a0,0x19
1c00a26a:	00354393          	xori	t2,a0,3
1c00a26e:	00751913          	slli	s2,a0,0x7
1c00a272:	01996933          	or	s2,s2,s9
1c00a276:	93be                	add	t2,t2,a5
1c00a278:	0123c3b3          	xor	t2,t2,s2
1c00a27c:	959e                	add	a1,a1,t2
1c00a27e:	0175dc93          	srli	s9,a1,0x17
1c00a282:	0055c393          	xori	t2,a1,5
1c00a286:	00959913          	slli	s2,a1,0x9
1c00a28a:	01996933          	or	s2,s2,s9
1c00a28e:	93be                	add	t2,t2,a5
1c00a290:	0123c3b3          	xor	t2,t2,s2
1c00a294:	961e                	add	a2,a2,t2
1c00a296:	00864393          	xori	t2,a2,8
1c00a29a:	00d61913          	slli	s2,a2,0xd
1c00a29e:	01365c93          	srli	s9,a2,0x13
1c00a2a2:	93be                	add	t2,t2,a5
1c00a2a4:	01996933          	or	s2,s2,s9
1c00a2a8:	0123c3b3          	xor	t2,t2,s2
1c00a2ac:	969e                	add	a3,a3,t2
1c00a2ae:	edb79ee3          	bne	a5,s11,1c00a18a <randombytes+0x134>
1c00a2b2:	43e2                	lw	t2,24(sp)
1c00a2b4:	01cc4c33          	xor	s8,s8,t3
1c00a2b8:	006d4d33          	xor	s10,s10,t1
1c00a2bc:	011bcbb3          	xor	s7,s7,a7
1c00a2c0:	010b4b33          	xor	s6,s6,a6
1c00a2c4:	00aacab3          	xor	s5,s5,a0
1c00a2c8:	00ba4a33          	xor	s4,s4,a1
1c00a2cc:	00c9c9b3          	xor	s3,s3,a2
1c00a2d0:	8cb5                	xor	s1,s1,a3
1c00a2d2:	ea7799e3          	bne	a5,t2,1c00a184 <randombytes+0x12e>
1c00a2d6:	4df2                	lw	s11,28(sp)
1c00a2d8:	01842023          	sw	s8,0(s0)
1c00a2dc:	01a42223          	sw	s10,4(s0)
1c00a2e0:	01742423          	sw	s7,8(s0)
1c00a2e4:	01642623          	sw	s6,12(s0)
1c00a2e8:	01542823          	sw	s5,16(s0)
1c00a2ec:	01442a23          	sw	s4,20(s0)
1c00a2f0:	01342c23          	sw	s3,24(s0)
1c00a2f4:	cc44                	sw	s1,28(s0)
1c00a2f6:	479d                	li	a5,7
1c00a2f8:	b3e9                	j	1c00a0c2 <randombytes+0x6c>
1c00a2fa:	8082                	ret

1c00a2fc <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00a2fc:	777d                	lui	a4,0xfffff
1c00a2fe:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00a302:	02f507b3          	mul	a5,a0,a5
1c00a306:	2ff70713          	addi	a4,a4,767
1c00a30a:	07c2                	slli	a5,a5,0x10
1c00a30c:	87c1                	srai	a5,a5,0x10
1c00a30e:	02e787b3          	mul	a5,a5,a4
1c00a312:	953e                	add	a0,a0,a5
1c00a314:	8541                	srai	a0,a0,0x10
1c00a316:	8082                	ret

1c00a318 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00a318:	6795                	lui	a5,0x5
1c00a31a:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a31e:	02f507b3          	mul	a5,a0,a5
1c00a322:	02000737          	lui	a4,0x2000
1c00a326:	97ba                	add	a5,a5,a4
1c00a328:	6705                	lui	a4,0x1
1c00a32a:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a32e:	87e9                	srai	a5,a5,0x1a
1c00a330:	02e787b3          	mul	a5,a5,a4
1c00a334:	8d1d                	sub	a0,a0,a5
1c00a336:	0542                	slli	a0,a0,0x10
1c00a338:	8541                	srai	a0,a0,0x10
1c00a33a:	8082                	ret

1c00a33c <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00a33c:	7139                	addi	sp,sp,-64
1c00a33e:	da26                	sw	s1,52(sp)
1c00a340:	d84a                	sw	s2,48(sp)
1c00a342:	84b2                	mv	s1,a2
1c00a344:	892a                	mv	s2,a0
1c00a346:	02000613          	li	a2,32
1c00a34a:	0068                	addi	a0,sp,12
1c00a34c:	de06                	sw	ra,60(sp)
1c00a34e:	dc22                	sw	s0,56(sp)
1c00a350:	8436                	mv	s0,a3
1c00a352:	2049                	jal	1c00a3d4 <memcpy>
1c00a354:	006c                	addi	a1,sp,12
1c00a356:	854a                	mv	a0,s2
1c00a358:	02200613          	li	a2,34
1c00a35c:	02910623          	sb	s1,44(sp)
1c00a360:	028106a3          	sb	s0,45(sp)
1c00a364:	c38fe0ef          	jal	ra,1c00879c <shake128_absorb>
1c00a368:	50f2                	lw	ra,60(sp)
1c00a36a:	5462                	lw	s0,56(sp)
1c00a36c:	54d2                	lw	s1,52(sp)
1c00a36e:	5942                	lw	s2,48(sp)
1c00a370:	6121                	addi	sp,sp,64
1c00a372:	8082                	ret

1c00a374 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00a374:	7139                	addi	sp,sp,-64
1c00a376:	87b2                	mv	a5,a2
1c00a378:	da26                	sw	s1,52(sp)
1c00a37a:	d84a                	sw	s2,48(sp)
1c00a37c:	84aa                	mv	s1,a0
1c00a37e:	892e                	mv	s2,a1
1c00a380:	02000613          	li	a2,32
1c00a384:	85be                	mv	a1,a5
1c00a386:	0068                	addi	a0,sp,12
1c00a388:	de06                	sw	ra,60(sp)
1c00a38a:	dc22                	sw	s0,56(sp)
1c00a38c:	8436                	mv	s0,a3
1c00a38e:	2099                	jal	1c00a3d4 <memcpy>
1c00a390:	0070                	addi	a2,sp,12
1c00a392:	85ca                	mv	a1,s2
1c00a394:	8526                	mv	a0,s1
1c00a396:	02100693          	li	a3,33
1c00a39a:	02810623          	sb	s0,44(sp)
1c00a39e:	ee8fe0ef          	jal	ra,1c008a86 <shake256>
1c00a3a2:	50f2                	lw	ra,60(sp)
1c00a3a4:	5462                	lw	s0,56(sp)
1c00a3a6:	54d2                	lw	s1,52(sp)
1c00a3a8:	5942                	lw	s2,48(sp)
1c00a3aa:	6121                	addi	sp,sp,64
1c00a3ac:	8082                	ret

1c00a3ae <pos_wait_forever>:
1c00a3ae:	f14027f3          	csrr	a5,mhartid
1c00a3b2:	8795                	srai	a5,a5,0x5
1c00a3b4:	03f7f793          	andi	a5,a5,63
1c00a3b8:	477d                	li	a4,31
1c00a3ba:	00e78363          	beq	a5,a4,1c00a3c0 <pos_wait_forever+0x12>
1c00a3be:	a001                	j	1c00a3be <pos_wait_forever+0x10>
1c00a3c0:	1a10a7b7          	lui	a5,0x1a10a
1c00a3c4:	577d                	li	a4,-1
1c00a3c6:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a3ca:	10500073          	wfi
1c00a3ce:	10500073          	wfi
1c00a3d2:	bfe5                	j	1c00a3ca <pos_wait_forever+0x1c>

1c00a3d4 <memcpy>:
1c00a3d4:	00c5e7b3          	or	a5,a1,a2
1c00a3d8:	8fc9                	or	a5,a5,a0
1c00a3da:	8b8d                	andi	a5,a5,3
1c00a3dc:	872e                	mv	a4,a1
1c00a3de:	882a                	mv	a6,a0
1c00a3e0:	cbc5                	beqz	a5,1c00a490 <memcpy+0xbc>
1c00a3e2:	c279                	beqz	a2,1c00a4a8 <memcpy+0xd4>
1c00a3e4:	00350793          	addi	a5,a0,3
1c00a3e8:	8f8d                	sub	a5,a5,a1
1c00a3ea:	0077b793          	sltiu	a5,a5,7
1c00a3ee:	e7d1                	bnez	a5,1c00a47a <memcpy+0xa6>
1c00a3f0:	fff60793          	addi	a5,a2,-1
1c00a3f4:	0047b793          	sltiu	a5,a5,4
1c00a3f8:	e3c9                	bnez	a5,1c00a47a <memcpy+0xa6>
1c00a3fa:	ffc67e13          	andi	t3,a2,-4
1c00a3fe:	9e2e                	add	t3,t3,a1
1c00a400:	00174883          	lbu	a7,1(a4)
1c00a404:	00074303          	lbu	t1,0(a4)
1c00a408:	00274683          	lbu	a3,2(a4)
1c00a40c:	00374783          	lbu	a5,3(a4)
1c00a410:	08a2                	slli	a7,a7,0x8
1c00a412:	0068e8b3          	or	a7,a7,t1
1c00a416:	06c2                	slli	a3,a3,0x10
1c00a418:	0116e6b3          	or	a3,a3,a7
1c00a41c:	07e2                	slli	a5,a5,0x18
1c00a41e:	8fd5                	or	a5,a5,a3
1c00a420:	0087d313          	srli	t1,a5,0x8
1c00a424:	0107d893          	srli	a7,a5,0x10
1c00a428:	83e1                	srli	a5,a5,0x18
1c00a42a:	00d80023          	sb	a3,0(a6)
1c00a42e:	006800a3          	sb	t1,1(a6)
1c00a432:	01180123          	sb	a7,2(a6)
1c00a436:	00f801a3          	sb	a5,3(a6)
1c00a43a:	0711                	addi	a4,a4,4
1c00a43c:	0811                	addi	a6,a6,4
1c00a43e:	fdc711e3          	bne	a4,t3,1c00a400 <memcpy+0x2c>
1c00a442:	ffc67793          	andi	a5,a2,-4
1c00a446:	00367693          	andi	a3,a2,3
1c00a44a:	00f50733          	add	a4,a0,a5
1c00a44e:	95be                	add	a1,a1,a5
1c00a450:	02f60f63          	beq	a2,a5,1c00a48e <memcpy+0xba>
1c00a454:	0005c603          	lbu	a2,0(a1)
1c00a458:	fff68793          	addi	a5,a3,-1
1c00a45c:	00c70023          	sb	a2,0(a4)
1c00a460:	c79d                	beqz	a5,1c00a48e <memcpy+0xba>
1c00a462:	0015c603          	lbu	a2,1(a1)
1c00a466:	4789                	li	a5,2
1c00a468:	00c700a3          	sb	a2,1(a4)
1c00a46c:	02f68163          	beq	a3,a5,1c00a48e <memcpy+0xba>
1c00a470:	0025c783          	lbu	a5,2(a1)
1c00a474:	00f70123          	sb	a5,2(a4)
1c00a478:	8082                	ret
1c00a47a:	962e                	add	a2,a2,a1
1c00a47c:	87aa                	mv	a5,a0
1c00a47e:	0005c703          	lbu	a4,0(a1)
1c00a482:	0585                	addi	a1,a1,1
1c00a484:	0785                	addi	a5,a5,1
1c00a486:	fee78fa3          	sb	a4,-1(a5)
1c00a48a:	fec59ae3          	bne	a1,a2,1c00a47e <memcpy+0xaa>
1c00a48e:	8082                	ret
1c00a490:	de7d                	beqz	a2,1c00a48e <memcpy+0xba>
1c00a492:	87aa                	mv	a5,a0
1c00a494:	4194                	lw	a3,0(a1)
1c00a496:	0791                	addi	a5,a5,4
1c00a498:	40c78733          	sub	a4,a5,a2
1c00a49c:	fed7ae23          	sw	a3,-4(a5)
1c00a4a0:	0591                	addi	a1,a1,4
1c00a4a2:	fea719e3          	bne	a4,a0,1c00a494 <memcpy+0xc0>
1c00a4a6:	8082                	ret
1c00a4a8:	8082                	ret

1c00a4aa <memmove>:
1c00a4aa:	40b507b3          	sub	a5,a0,a1
1c00a4ae:	0ac7e063          	bltu	a5,a2,1c00a54e <memmove+0xa4>
1c00a4b2:	c661                	beqz	a2,1c00a57a <memmove+0xd0>
1c00a4b4:	00350793          	addi	a5,a0,3
1c00a4b8:	8f8d                	sub	a5,a5,a1
1c00a4ba:	0077b793          	sltiu	a5,a5,7
1c00a4be:	e3dd                	bnez	a5,1c00a564 <memmove+0xba>
1c00a4c0:	fff60793          	addi	a5,a2,-1
1c00a4c4:	0047b793          	sltiu	a5,a5,4
1c00a4c8:	efd1                	bnez	a5,1c00a564 <memmove+0xba>
1c00a4ca:	ffc67e13          	andi	t3,a2,-4
1c00a4ce:	872e                	mv	a4,a1
1c00a4d0:	882a                	mv	a6,a0
1c00a4d2:	9e2e                	add	t3,t3,a1
1c00a4d4:	00174883          	lbu	a7,1(a4)
1c00a4d8:	00074303          	lbu	t1,0(a4)
1c00a4dc:	00274683          	lbu	a3,2(a4)
1c00a4e0:	00374783          	lbu	a5,3(a4)
1c00a4e4:	08a2                	slli	a7,a7,0x8
1c00a4e6:	0068e8b3          	or	a7,a7,t1
1c00a4ea:	06c2                	slli	a3,a3,0x10
1c00a4ec:	0116e6b3          	or	a3,a3,a7
1c00a4f0:	07e2                	slli	a5,a5,0x18
1c00a4f2:	8fd5                	or	a5,a5,a3
1c00a4f4:	0087d313          	srli	t1,a5,0x8
1c00a4f8:	0107d893          	srli	a7,a5,0x10
1c00a4fc:	83e1                	srli	a5,a5,0x18
1c00a4fe:	00d80023          	sb	a3,0(a6)
1c00a502:	006800a3          	sb	t1,1(a6)
1c00a506:	01180123          	sb	a7,2(a6)
1c00a50a:	00f801a3          	sb	a5,3(a6)
1c00a50e:	0711                	addi	a4,a4,4
1c00a510:	0811                	addi	a6,a6,4
1c00a512:	fdc711e3          	bne	a4,t3,1c00a4d4 <memmove+0x2a>
1c00a516:	ffc67793          	andi	a5,a2,-4
1c00a51a:	00367693          	andi	a3,a2,3
1c00a51e:	00f50733          	add	a4,a0,a5
1c00a522:	95be                	add	a1,a1,a5
1c00a524:	04f60a63          	beq	a2,a5,1c00a578 <memmove+0xce>
1c00a528:	0005c603          	lbu	a2,0(a1)
1c00a52c:	fff68793          	addi	a5,a3,-1
1c00a530:	00c70023          	sb	a2,0(a4)
1c00a534:	c3b1                	beqz	a5,1c00a578 <memmove+0xce>
1c00a536:	0015c603          	lbu	a2,1(a1)
1c00a53a:	4789                	li	a5,2
1c00a53c:	00c700a3          	sb	a2,1(a4)
1c00a540:	02f68c63          	beq	a3,a5,1c00a578 <memmove+0xce>
1c00a544:	0025c783          	lbu	a5,2(a1)
1c00a548:	00f70123          	sb	a5,2(a4)
1c00a54c:	8082                	ret
1c00a54e:	167d                	addi	a2,a2,-1
1c00a550:	00c587b3          	add	a5,a1,a2
1c00a554:	0007c703          	lbu	a4,0(a5)
1c00a558:	00c507b3          	add	a5,a0,a2
1c00a55c:	00e78023          	sb	a4,0(a5)
1c00a560:	f67d                	bnez	a2,1c00a54e <memmove+0xa4>
1c00a562:	8082                	ret
1c00a564:	962a                	add	a2,a2,a0
1c00a566:	87aa                	mv	a5,a0
1c00a568:	0005c703          	lbu	a4,0(a1)
1c00a56c:	0785                	addi	a5,a5,1
1c00a56e:	0585                	addi	a1,a1,1
1c00a570:	fee78fa3          	sb	a4,-1(a5)
1c00a574:	fec79ae3          	bne	a5,a2,1c00a568 <memmove+0xbe>
1c00a578:	8082                	ret
1c00a57a:	8082                	ret

1c00a57c <strchr>:
1c00a57c:	00054703          	lbu	a4,0(a0)
1c00a580:	0ff5f593          	andi	a1,a1,255
1c00a584:	87aa                	mv	a5,a0
1c00a586:	00b70863          	beq	a4,a1,1c00a596 <strchr+0x1a>
1c00a58a:	cb01                	beqz	a4,1c00a59a <strchr+0x1e>
1c00a58c:	0017c703          	lbu	a4,1(a5)
1c00a590:	0785                	addi	a5,a5,1
1c00a592:	feb71ce3          	bne	a4,a1,1c00a58a <strchr+0xe>
1c00a596:	853e                	mv	a0,a5
1c00a598:	8082                	ret
1c00a59a:	4501                	li	a0,0
1c00a59c:	dded                	beqz	a1,1c00a596 <strchr+0x1a>
1c00a59e:	8082                	ret

1c00a5a0 <puts>:
1c00a5a0:	00054783          	lbu	a5,0(a0)
1c00a5a4:	c78d                	beqz	a5,1c00a5ce <puts+0x2e>
1c00a5a6:	f14026f3          	csrr	a3,mhartid
1c00a5aa:	00369713          	slli	a4,a3,0x3
1c00a5ae:	1a10f637          	lui	a2,0x1a10f
1c00a5b2:	0ff77713          	andi	a4,a4,255
1c00a5b6:	9732                	add	a4,a4,a2
1c00a5b8:	6609                	lui	a2,0x2
1c00a5ba:	068a                	slli	a3,a3,0x2
1c00a5bc:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a5c0:	8ef1                	and	a3,a3,a2
1c00a5c2:	9736                	add	a4,a4,a3
1c00a5c4:	c31c                	sw	a5,0(a4)
1c00a5c6:	00154783          	lbu	a5,1(a0)
1c00a5ca:	0505                	addi	a0,a0,1
1c00a5cc:	ffe5                	bnez	a5,1c00a5c4 <puts+0x24>
1c00a5ce:	f1402773          	csrr	a4,mhartid
1c00a5d2:	00371793          	slli	a5,a4,0x3
1c00a5d6:	1a10f6b7          	lui	a3,0x1a10f
1c00a5da:	0ff7f793          	andi	a5,a5,255
1c00a5de:	97b6                	add	a5,a5,a3
1c00a5e0:	6689                	lui	a3,0x2
1c00a5e2:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a5e6:	070a                	slli	a4,a4,0x2
1c00a5e8:	8f75                	and	a4,a4,a3
1c00a5ea:	97ba                	add	a5,a5,a4
1c00a5ec:	4729                	li	a4,10
1c00a5ee:	c398                	sw	a4,0(a5)
1c00a5f0:	4501                	li	a0,0
1c00a5f2:	8082                	ret

1c00a5f4 <pos_libc_fputc_locked>:
1c00a5f4:	6689                	lui	a3,0x2
1c00a5f6:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a5fa:	f14027f3          	csrr	a5,mhartid
1c00a5fe:	00379713          	slli	a4,a5,0x3
1c00a602:	078a                	slli	a5,a5,0x2
1c00a604:	8ff5                	and	a5,a5,a3
1c00a606:	0ff77713          	andi	a4,a4,255
1c00a60a:	1a10f6b7          	lui	a3,0x1a10f
1c00a60e:	9736                	add	a4,a4,a3
1c00a610:	97ba                	add	a5,a5,a4
1c00a612:	0ff57513          	andi	a0,a0,255
1c00a616:	c388                	sw	a0,0(a5)
1c00a618:	4501                	li	a0,0
1c00a61a:	8082                	ret

1c00a61c <putchar>:
1c00a61c:	6689                	lui	a3,0x2
1c00a61e:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a622:	f14027f3          	csrr	a5,mhartid
1c00a626:	00379713          	slli	a4,a5,0x3
1c00a62a:	078a                	slli	a5,a5,0x2
1c00a62c:	8ff5                	and	a5,a5,a3
1c00a62e:	0ff77713          	andi	a4,a4,255
1c00a632:	1a10f6b7          	lui	a3,0x1a10f
1c00a636:	9736                	add	a4,a4,a3
1c00a638:	97ba                	add	a5,a5,a4
1c00a63a:	0ff57513          	andi	a0,a0,255
1c00a63e:	c388                	sw	a0,0(a5)
1c00a640:	4501                	li	a0,0
1c00a642:	8082                	ret

1c00a644 <pos_libc_prf_locked>:
1c00a644:	a0b1                	j	1c00a690 <pos_libc_prf>

1c00a646 <exit>:
1c00a646:	800007b7          	lui	a5,0x80000
1c00a64a:	1141                	addi	sp,sp,-16
1c00a64c:	8d5d                	or	a0,a0,a5
1c00a64e:	c606                	sw	ra,12(sp)
1c00a650:	1a1047b7          	lui	a5,0x1a104
1c00a654:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a658:	3b99                	jal	1c00a3ae <pos_wait_forever>

1c00a65a <pos_io_start>:
1c00a65a:	4501                	li	a0,0
1c00a65c:	8082                	ret

1c00a65e <pos_io_stop>:
1c00a65e:	4501                	li	a0,0
1c00a660:	8082                	ret

1c00a662 <printf>:
1c00a662:	7139                	addi	sp,sp,-64
1c00a664:	02410313          	addi	t1,sp,36
1c00a668:	d432                	sw	a2,40(sp)
1c00a66a:	862a                	mv	a2,a0
1c00a66c:	1c00a537          	lui	a0,0x1c00a
1c00a670:	d22e                	sw	a1,36(sp)
1c00a672:	d636                	sw	a3,44(sp)
1c00a674:	4589                	li	a1,2
1c00a676:	869a                	mv	a3,t1
1c00a678:	5f450513          	addi	a0,a0,1524 # 1c00a5f4 <pos_libc_fputc_locked>
1c00a67c:	ce06                	sw	ra,28(sp)
1c00a67e:	d83a                	sw	a4,48(sp)
1c00a680:	da3e                	sw	a5,52(sp)
1c00a682:	dc42                	sw	a6,56(sp)
1c00a684:	de46                	sw	a7,60(sp)
1c00a686:	c61a                	sw	t1,12(sp)
1c00a688:	3f75                	jal	1c00a644 <pos_libc_prf_locked>
1c00a68a:	40f2                	lw	ra,28(sp)
1c00a68c:	6121                	addi	sp,sp,64
1c00a68e:	8082                	ret

1c00a690 <pos_libc_prf>:
1c00a690:	7169                	addi	sp,sp,-304
1c00a692:	12112623          	sw	ra,300(sp)
1c00a696:	12812423          	sw	s0,296(sp)
1c00a69a:	12912223          	sw	s1,292(sp)
1c00a69e:	13212023          	sw	s2,288(sp)
1c00a6a2:	11312e23          	sw	s3,284(sp)
1c00a6a6:	11412c23          	sw	s4,280(sp)
1c00a6aa:	11512a23          	sw	s5,276(sp)
1c00a6ae:	11612823          	sw	s6,272(sp)
1c00a6b2:	11712623          	sw	s7,268(sp)
1c00a6b6:	11812423          	sw	s8,264(sp)
1c00a6ba:	11912223          	sw	s9,260(sp)
1c00a6be:	11a12023          	sw	s10,256(sp)
1c00a6c2:	dfee                	sw	s11,252(sp)
1c00a6c4:	00064783          	lbu	a5,0(a2)
1c00a6c8:	c636                	sw	a3,12(sp)
1c00a6ca:	3c0781e3          	beqz	a5,1c00b28c <pos_libc_prf+0xbfc>
1c00a6ce:	7741                	lui	a4,0xffff0
1c00a6d0:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a6d4:	cc3a                	sw	a4,24(sp)
1c00a6d6:	10000737          	lui	a4,0x10000
1c00a6da:	177d                	addi	a4,a4,-1
1c00a6dc:	8caa                	mv	s9,a0
1c00a6de:	84ae                	mv	s1,a1
1c00a6e0:	00160c13          	addi	s8,a2,1
1c00a6e4:	4401                	li	s0,0
1c00a6e6:	1c000d37          	lui	s10,0x1c000
1c00a6ea:	ca3a                	sw	a4,20(sp)
1c00a6ec:	853e                	mv	a0,a5
1c00a6ee:	02500793          	li	a5,37
1c00a6f2:	04f50863          	beq	a0,a5,1c00a742 <pos_libc_prf+0xb2>
1c00a6f6:	85a6                	mv	a1,s1
1c00a6f8:	9c82                	jalr	s9
1c00a6fa:	57fd                	li	a5,-1
1c00a6fc:	4cf50b63          	beq	a0,a5,1c00abd2 <pos_libc_prf+0x542>
1c00a700:	0405                	addi	s0,s0,1
1c00a702:	000c4503          	lbu	a0,0(s8)
1c00a706:	0c05                	addi	s8,s8,1
1c00a708:	f17d                	bnez	a0,1c00a6ee <pos_libc_prf+0x5e>
1c00a70a:	12c12083          	lw	ra,300(sp)
1c00a70e:	8522                	mv	a0,s0
1c00a710:	12812403          	lw	s0,296(sp)
1c00a714:	12412483          	lw	s1,292(sp)
1c00a718:	12012903          	lw	s2,288(sp)
1c00a71c:	11c12983          	lw	s3,284(sp)
1c00a720:	11812a03          	lw	s4,280(sp)
1c00a724:	11412a83          	lw	s5,276(sp)
1c00a728:	11012b03          	lw	s6,272(sp)
1c00a72c:	10c12b83          	lw	s7,268(sp)
1c00a730:	10812c03          	lw	s8,264(sp)
1c00a734:	10412c83          	lw	s9,260(sp)
1c00a738:	10012d03          	lw	s10,256(sp)
1c00a73c:	5dfe                	lw	s11,252(sp)
1c00a73e:	6155                	addi	sp,sp,304
1c00a740:	8082                	ret
1c00a742:	8de2                	mv	s11,s8
1c00a744:	000dcc03          	lbu	s8,0(s11)
1c00a748:	17cd0513          	addi	a0,s10,380 # 1c00017c <__clz_tab+0x160>
1c00a74c:	c826                	sw	s1,16(sp)
1c00a74e:	85e2                	mv	a1,s8
1c00a750:	c202                	sw	zero,4(sp)
1c00a752:	c402                	sw	zero,8(sp)
1c00a754:	c002                	sw	zero,0(sp)
1c00a756:	001d8493          	addi	s1,s11,1
1c00a75a:	350d                	jal	1c00a57c <strchr>
1c00a75c:	02000913          	li	s2,32
1c00a760:	4b81                	li	s7,0
1c00a762:	02b00993          	li	s3,43
1c00a766:	02d00b13          	li	s6,45
1c00a76a:	03000a93          	li	s5,48
1c00a76e:	02000a13          	li	s4,32
1c00a772:	8626                	mv	a2,s1
1c00a774:	c51d                	beqz	a0,1c00a7a2 <pos_libc_prf+0x112>
1c00a776:	413c0e63          	beq	s8,s3,1c00ab92 <pos_libc_prf+0x502>
1c00a77a:	3f89ec63          	bltu	s3,s8,1c00ab72 <pos_libc_prf+0x4e2>
1c00a77e:	414c0663          	beq	s8,s4,1c00ab8a <pos_libc_prf+0x4fa>
1c00a782:	02300793          	li	a5,35
1c00a786:	3efc1363          	bne	s8,a5,1c00ab6c <pos_libc_prf+0x4dc>
1c00a78a:	4b85                	li	s7,1
1c00a78c:	8da6                	mv	s11,s1
1c00a78e:	000dcc03          	lbu	s8,0(s11)
1c00a792:	17cd0513          	addi	a0,s10,380
1c00a796:	001d8493          	addi	s1,s11,1
1c00a79a:	85e2                	mv	a1,s8
1c00a79c:	33c5                	jal	1c00a57c <strchr>
1c00a79e:	8626                	mv	a2,s1
1c00a7a0:	f979                	bnez	a0,1c00a776 <pos_libc_prf+0xe6>
1c00a7a2:	87e2                	mv	a5,s8
1c00a7a4:	ce5e                	sw	s7,28(sp)
1c00a7a6:	02a00693          	li	a3,42
1c00a7aa:	8c6e                	mv	s8,s11
1c00a7ac:	8ba6                	mv	s7,s1
1c00a7ae:	8dbe                	mv	s11,a5
1c00a7b0:	44c2                	lw	s1,16(sp)
1c00a7b2:	42d78263          	beq	a5,a3,1c00abd6 <pos_libc_prf+0x546>
1c00a7b6:	fd078693          	addi	a3,a5,-48
1c00a7ba:	4525                	li	a0,9
1c00a7bc:	4a01                	li	s4,0
1c00a7be:	3cd57f63          	bgeu	a0,a3,1c00ab9c <pos_libc_prf+0x50c>
1c00a7c2:	02e00793          	li	a5,46
1c00a7c6:	5afd                	li	s5,-1
1c00a7c8:	74fd8363          	beq	s11,a5,1c00af0e <pos_libc_prf+0x87e>
1c00a7cc:	1c0007b7          	lui	a5,0x1c000
1c00a7d0:	85ee                	mv	a1,s11
1c00a7d2:	18478513          	addi	a0,a5,388 # 1c000184 <__clz_tab+0x168>
1c00a7d6:	c832                	sw	a2,16(sp)
1c00a7d8:	3355                	jal	1c00a57c <strchr>
1c00a7da:	4642                	lw	a2,16(sp)
1c00a7dc:	8c32                	mv	s8,a2
1c00a7de:	c509                	beqz	a0,1c00a7e8 <pos_libc_prf+0x158>
1c00a7e0:	00064d83          	lbu	s11,0(a2)
1c00a7e4:	00160c13          	addi	s8,a2,1
1c00a7e8:	06900793          	li	a5,105
1c00a7ec:	0afd8ee3          	beq	s11,a5,1c00b0a8 <pos_libc_prf+0xa18>
1c00a7f0:	4db7c763          	blt	a5,s11,1c00acbe <pos_libc_prf+0x62e>
1c00a7f4:	05800793          	li	a5,88
1c00a7f8:	4efd8163          	beq	s11,a5,1c00acda <pos_libc_prf+0x64a>
1c00a7fc:	41b7c163          	blt	a5,s11,1c00abfe <pos_libc_prf+0x56e>
1c00a800:	02500793          	li	a5,37
1c00a804:	26fd8ae3          	beq	s11,a5,1c00b278 <pos_libc_prf+0xbe8>
1c00a808:	3fb7d863          	bge	a5,s11,1c00abf8 <pos_libc_prf+0x568>
1c00a80c:	fbbd8793          	addi	a5,s11,-69
1c00a810:	4689                	li	a3,2
1c00a812:	eef6e8e3          	bltu	a3,a5,1c00a702 <pos_libc_prf+0x72>
1c00a816:	47b2                	lw	a5,12(sp)
1c00a818:	7ff00893          	li	a7,2047
1c00a81c:	00778b13          	addi	s6,a5,7
1c00a820:	ff8b7b13          	andi	s6,s6,-8
1c00a824:	004b2783          	lw	a5,4(s6) # ff0004 <__CTOR_LIST__-0x1b010000>
1c00a828:	000b2603          	lw	a2,0(s6)
1c00a82c:	0b21                	addi	s6,s6,8
1c00a82e:	00b79693          	slli	a3,a5,0xb
1c00a832:	01565513          	srli	a0,a2,0x15
1c00a836:	8ec9                	or	a3,a3,a0
1c00a838:	0147d813          	srli	a6,a5,0x14
1c00a83c:	0686                	slli	a3,a3,0x1
1c00a83e:	7ff87813          	andi	a6,a6,2047
1c00a842:	0016d513          	srli	a0,a3,0x1
1c00a846:	00b61313          	slli	t1,a2,0xb
1c00a84a:	86be                	mv	a3,a5
1c00a84c:	41180263          	beq	a6,a7,1c00ac50 <pos_libc_prf+0x5c0>
1c00a850:	04600793          	li	a5,70
1c00a854:	00fd9463          	bne	s11,a5,1c00a85c <pos_libc_prf+0x1cc>
1c00a858:	06600d93          	li	s11,102
1c00a85c:	006867b3          	or	a5,a6,t1
1c00a860:	00a7e8b3          	or	a7,a5,a0
1c00a864:	862a                	mv	a2,a0
1c00a866:	340885e3          	beqz	a7,1c00b3b0 <pos_libc_prf+0xd20>
1c00a86a:	80000637          	lui	a2,0x80000
1c00a86e:	c0280813          	addi	a6,a6,-1022
1c00a872:	879a                	mv	a5,t1
1c00a874:	8e49                	or	a2,a2,a0
1c00a876:	4606c7e3          	bltz	a3,1c00b4e4 <pos_libc_prf+0xe54>
1c00a87a:	4722                	lw	a4,8(sp)
1c00a87c:	480708e3          	beqz	a4,1c00b50c <pos_libc_prf+0xe7c>
1c00a880:	02b00693          	li	a3,43
1c00a884:	02d10223          	sb	a3,36(sp)
1c00a888:	02510f13          	addi	t5,sp,37
1c00a88c:	56f9                	li	a3,-2
1c00a88e:	4301                	li	t1,0
1c00a890:	06d85663          	bge	a6,a3,1c00a8fc <pos_libc_prf+0x26c>
1c00a894:	333338b7          	lui	a7,0x33333
1c00a898:	80000e37          	lui	t3,0x80000
1c00a89c:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00a8a0:	fffe4e13          	not	t3,t3
1c00a8a4:	5ef9                	li	t4,-2
1c00a8a6:	01f61593          	slli	a1,a2,0x1f
1c00a8aa:	0017d693          	srli	a3,a5,0x1
1c00a8ae:	0017f713          	andi	a4,a5,1
1c00a8b2:	8ecd                	or	a3,a3,a1
1c00a8b4:	00d707b3          	add	a5,a4,a3
1c00a8b8:	00e7b733          	sltu	a4,a5,a4
1c00a8bc:	8205                	srli	a2,a2,0x1
1c00a8be:	963a                	add	a2,a2,a4
1c00a8c0:	8742                	mv	a4,a6
1c00a8c2:	0805                	addi	a6,a6,1
1c00a8c4:	fec8e1e3          	bltu	a7,a2,1c00a8a6 <pos_libc_prf+0x216>
1c00a8c8:	00279593          	slli	a1,a5,0x2
1c00a8cc:	01e7d513          	srli	a0,a5,0x1e
1c00a8d0:	00261693          	slli	a3,a2,0x2
1c00a8d4:	97ae                	add	a5,a5,a1
1c00a8d6:	8ec9                	or	a3,a3,a0
1c00a8d8:	9636                	add	a2,a2,a3
1c00a8da:	00b7b5b3          	sltu	a1,a5,a1
1c00a8de:	962e                	add	a2,a2,a1
1c00a8e0:	01f7d693          	srli	a3,a5,0x1f
1c00a8e4:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00a8e8:	137d                	addi	t1,t1,-1
1c00a8ea:	01c61763          	bne	a2,t3,1c00a8f8 <pos_libc_prf+0x268>
1c00a8ee:	00170813          	addi	a6,a4,1
1c00a8f2:	0786                	slli	a5,a5,0x1
1c00a8f4:	ffe6e613          	ori	a2,a3,-2
1c00a8f8:	fbd847e3          	blt	a6,t4,1c00a8a6 <pos_libc_prf+0x216>
1c00a8fc:	07005363          	blez	a6,1c00a962 <pos_libc_prf+0x2d2>
1c00a900:	800008b7          	lui	a7,0x80000
1c00a904:	4e15                	li	t3,5
1c00a906:	fff8c893          	not	a7,a7
1c00a90a:	00278693          	addi	a3,a5,2
1c00a90e:	00f6b7b3          	sltu	a5,a3,a5
1c00a912:	963e                	add	a2,a2,a5
1c00a914:	03c657b3          	divu	a5,a2,t3
1c00a918:	0036d713          	srli	a4,a3,0x3
1c00a91c:	187d                	addi	a6,a6,-1
1c00a91e:	0305                	addi	t1,t1,1
1c00a920:	00279593          	slli	a1,a5,0x2
1c00a924:	95be                	add	a1,a1,a5
1c00a926:	8e0d                	sub	a2,a2,a1
1c00a928:	0676                	slli	a2,a2,0x1d
1c00a92a:	8f51                	or	a4,a4,a2
1c00a92c:	03c75633          	divu	a2,a4,t3
1c00a930:	00361713          	slli	a4,a2,0x3
1c00a934:	00561593          	slli	a1,a2,0x5
1c00a938:	95ba                	add	a1,a1,a4
1c00a93a:	8e8d                	sub	a3,a3,a1
1c00a93c:	03c6d6b3          	divu	a3,a3,t3
1c00a940:	8275                	srli	a2,a2,0x1d
1c00a942:	963e                	add	a2,a2,a5
1c00a944:	00e687b3          	add	a5,a3,a4
1c00a948:	00d7b6b3          	sltu	a3,a5,a3
1c00a94c:	9636                	add	a2,a2,a3
1c00a94e:	01f7d713          	srli	a4,a5,0x1f
1c00a952:	0606                	slli	a2,a2,0x1
1c00a954:	8e59                	or	a2,a2,a4
1c00a956:	0786                	slli	a5,a5,0x1
1c00a958:	187d                	addi	a6,a6,-1
1c00a95a:	fec8fae3          	bgeu	a7,a2,1c00a94e <pos_libc_prf+0x2be>
1c00a95e:	fb0046e3          	bgtz	a6,1c00a90a <pos_libc_prf+0x27a>
1c00a962:	4e11                	li	t3,4
1c00a964:	01f61693          	slli	a3,a2,0x1f
1c00a968:	0017d713          	srli	a4,a5,0x1
1c00a96c:	8f55                	or	a4,a4,a3
1c00a96e:	8b85                	andi	a5,a5,1
1c00a970:	00e78533          	add	a0,a5,a4
1c00a974:	8205                	srli	a2,a2,0x1
1c00a976:	00f537b3          	sltu	a5,a0,a5
1c00a97a:	00c788b3          	add	a7,a5,a2
1c00a97e:	0805                	addi	a6,a6,1
1c00a980:	87aa                	mv	a5,a0
1c00a982:	8646                	mv	a2,a7
1c00a984:	ffc810e3          	bne	a6,t3,1c00a964 <pos_libc_prf+0x2d4>
1c00a988:	06700793          	li	a5,103
1c00a98c:	2a0acee3          	bltz	s5,1c00b448 <pos_libc_prf+0xdb8>
1c00a990:	28fd83e3          	beq	s11,a5,1c00b416 <pos_libc_prf+0xd86>
1c00a994:	04700793          	li	a5,71
1c00a998:	26fd8fe3          	beq	s11,a5,1c00b416 <pos_libc_prf+0xd86>
1c00a99c:	06600793          	li	a5,102
1c00a9a0:	2cfd85e3          	beq	s11,a5,1c00b46a <pos_libc_prf+0xdda>
1c00a9a4:	001a8813          	addi	a6,s5,1
1c00a9a8:	47c1                	li	a5,16
1c00a9aa:	0107d363          	bge	a5,a6,1c00a9b0 <pos_libc_prf+0x320>
1c00a9ae:	4841                	li	a6,16
1c00a9b0:	187d                	addi	a6,a6,-1
1c00a9b2:	4601                	li	a2,0
1c00a9b4:	4781                	li	a5,0
1c00a9b6:	080006b7          	lui	a3,0x8000
1c00a9ba:	4e15                	li	t3,5
1c00a9bc:	5efd                	li	t4,-1
1c00a9be:	00278713          	addi	a4,a5,2
1c00a9c2:	00f737b3          	sltu	a5,a4,a5
1c00a9c6:	97b6                	add	a5,a5,a3
1c00a9c8:	03c7dfb3          	divu	t6,a5,t3
1c00a9cc:	00375593          	srli	a1,a4,0x3
1c00a9d0:	187d                	addi	a6,a6,-1
1c00a9d2:	002f9693          	slli	a3,t6,0x2
1c00a9d6:	96fe                	add	a3,a3,t6
1c00a9d8:	8f95                	sub	a5,a5,a3
1c00a9da:	07f6                	slli	a5,a5,0x1d
1c00a9dc:	8ddd                	or	a1,a1,a5
1c00a9de:	03c5d5b3          	divu	a1,a1,t3
1c00a9e2:	00359693          	slli	a3,a1,0x3
1c00a9e6:	00559793          	slli	a5,a1,0x5
1c00a9ea:	97b6                	add	a5,a5,a3
1c00a9ec:	8f1d                	sub	a4,a4,a5
1c00a9ee:	03c757b3          	divu	a5,a4,t3
1c00a9f2:	81f5                	srli	a1,a1,0x1d
1c00a9f4:	95fe                	add	a1,a1,t6
1c00a9f6:	96be                	add	a3,a3,a5
1c00a9f8:	00f6b733          	sltu	a4,a3,a5
1c00a9fc:	972e                	add	a4,a4,a1
1c00a9fe:	01f71593          	slli	a1,a4,0x1f
1c00aa02:	0016d793          	srli	a5,a3,0x1
1c00aa06:	8fcd                	or	a5,a5,a1
1c00aa08:	8a85                	andi	a3,a3,1
1c00aa0a:	97b6                	add	a5,a5,a3
1c00aa0c:	8305                	srli	a4,a4,0x1
1c00aa0e:	00d7b6b3          	sltu	a3,a5,a3
1c00aa12:	96ba                	add	a3,a3,a4
1c00aa14:	fbd815e3          	bne	a6,t4,1c00a9be <pos_libc_prf+0x32e>
1c00aa18:	97aa                	add	a5,a5,a0
1c00aa1a:	96c6                	add	a3,a3,a7
1c00aa1c:	00a7b533          	sltu	a0,a5,a0
1c00aa20:	00d508b3          	add	a7,a0,a3
1c00aa24:	f00006b7          	lui	a3,0xf0000
1c00aa28:	0116f6b3          	and	a3,a3,a7
1c00aa2c:	c2b5                	beqz	a3,1c00aa90 <pos_libc_prf+0x400>
1c00aa2e:	00278813          	addi	a6,a5,2
1c00aa32:	00f836b3          	sltu	a3,a6,a5
1c00aa36:	98b6                	add	a7,a7,a3
1c00aa38:	4e95                	li	t4,5
1c00aa3a:	03d8de33          	divu	t3,a7,t4
1c00aa3e:	00385693          	srli	a3,a6,0x3
1c00aa42:	0305                	addi	t1,t1,1
1c00aa44:	002e1513          	slli	a0,t3,0x2
1c00aa48:	9572                	add	a0,a0,t3
1c00aa4a:	40a888b3          	sub	a7,a7,a0
1c00aa4e:	01d89513          	slli	a0,a7,0x1d
1c00aa52:	8ec9                	or	a3,a3,a0
1c00aa54:	03d6d6b3          	divu	a3,a3,t4
1c00aa58:	00369513          	slli	a0,a3,0x3
1c00aa5c:	00569793          	slli	a5,a3,0x5
1c00aa60:	97aa                	add	a5,a5,a0
1c00aa62:	40f807b3          	sub	a5,a6,a5
1c00aa66:	03d7d7b3          	divu	a5,a5,t4
1c00aa6a:	82f5                	srli	a3,a3,0x1d
1c00aa6c:	96f2                	add	a3,a3,t3
1c00aa6e:	953e                	add	a0,a0,a5
1c00aa70:	00f537b3          	sltu	a5,a0,a5
1c00aa74:	96be                	add	a3,a3,a5
1c00aa76:	01f69813          	slli	a6,a3,0x1f
1c00aa7a:	00155793          	srli	a5,a0,0x1
1c00aa7e:	00f867b3          	or	a5,a6,a5
1c00aa82:	8905                	andi	a0,a0,1
1c00aa84:	97aa                	add	a5,a5,a0
1c00aa86:	8285                	srli	a3,a3,0x1
1c00aa88:	00a7b533          	sltu	a0,a5,a0
1c00aa8c:	00d508b3          	add	a7,a0,a3
1c00aa90:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00aa94:	06600693          	li	a3,102
1c00aa98:	884e                	mv	a6,s3
1c00aa9a:	4edd8163          	beq	s11,a3,1c00af7c <pos_libc_prf+0x8ec>
1c00aa9e:	00279693          	slli	a3,a5,0x2
1c00aaa2:	01e7d513          	srli	a0,a5,0x1e
1c00aaa6:	00289e13          	slli	t3,a7,0x2
1c00aaaa:	97b6                	add	a5,a5,a3
1c00aaac:	01c56e33          	or	t3,a0,t3
1c00aab0:	00d7b833          	sltu	a6,a5,a3
1c00aab4:	011e06b3          	add	a3,t3,a7
1c00aab8:	9836                	add	a6,a6,a3
1c00aaba:	0806                	slli	a6,a6,0x1
1c00aabc:	01f7d693          	srli	a3,a5,0x1f
1c00aac0:	0106e833          	or	a6,a3,a6
1c00aac4:	01c85693          	srli	a3,a6,0x1c
1c00aac8:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00aacc:	4772                	lw	a4,28(sp)
1c00aace:	00af0023          	sb	a0,0(t5)
1c00aad2:	00179513          	slli	a0,a5,0x1
1c00aad6:	47d2                	lw	a5,20(sp)
1c00aad8:	00d036b3          	snez	a3,a3
1c00aadc:	01576bb3          	or	s7,a4,s5
1c00aae0:	00f87833          	and	a6,a6,a5
1c00aae4:	40d30333          	sub	t1,t1,a3
1c00aae8:	060b8463          	beqz	s7,1c00ab50 <pos_libc_prf+0x4c0>
1c00aaec:	02e00793          	li	a5,46
1c00aaf0:	00ff00a3          	sb	a5,1(t5)
1c00aaf4:	002f0993          	addi	s3,t5,2
1c00aaf8:	040a8c63          	beqz	s5,1c00ab50 <pos_libc_prf+0x4c0>
1c00aafc:	002a8793          	addi	a5,s5,2
1c00ab00:	9f3e                	add	t5,t5,a5
1c00ab02:	88ce                	mv	a7,s3
1c00ab04:	4ebd                	li	t4,15
1c00ab06:	03000f93          	li	t6,48
1c00ab0a:	00251793          	slli	a5,a0,0x2
1c00ab0e:	01e55693          	srli	a3,a0,0x1e
1c00ab12:	00281713          	slli	a4,a6,0x2
1c00ab16:	00a785b3          	add	a1,a5,a0
1c00ab1a:	8f55                	or	a4,a4,a3
1c00ab1c:	9742                	add	a4,a4,a6
1c00ab1e:	00f5b7b3          	sltu	a5,a1,a5
1c00ab22:	97ba                	add	a5,a5,a4
1c00ab24:	0786                	slli	a5,a5,0x1
1c00ab26:	01f5d713          	srli	a4,a1,0x1f
1c00ab2a:	8fd9                	or	a5,a5,a4
1c00ab2c:	01c7d713          	srli	a4,a5,0x1c
1c00ab30:	03070713          	addi	a4,a4,48
1c00ab34:	0885                	addi	a7,a7,1
1c00ab36:	53d05763          	blez	t4,1c00b064 <pos_libc_prf+0x9d4>
1c00ab3a:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00ab3e:	4752                	lw	a4,20(sp)
1c00ab40:	1efd                	addi	t4,t4,-1
1c00ab42:	00159513          	slli	a0,a1,0x1
1c00ab46:	00e7f833          	and	a6,a5,a4
1c00ab4a:	fd1f10e3          	bne	t5,a7,1c00ab0a <pos_libc_prf+0x47a>
1c00ab4e:	99d6                	add	s3,s3,s5
1c00ab50:	4e061c63          	bnez	a2,1c00b048 <pos_libc_prf+0x9b8>
1c00ab54:	fdfdf793          	andi	a5,s11,-33
1c00ab58:	04500693          	li	a3,69
1c00ab5c:	00d781e3          	beq	a5,a3,1c00b35e <pos_libc_prf+0xcce>
1c00ab60:	105c                	addi	a5,sp,36
1c00ab62:	00098023          	sb	zero,0(s3)
1c00ab66:	40f989b3          	sub	s3,s3,a5
1c00ab6a:	aa05                	j	1c00ac9a <pos_libc_prf+0x60a>
1c00ab6c:	b80c0fe3          	beqz	s8,1c00a70a <pos_libc_prf+0x7a>
1c00ab70:	b931                	j	1c00a78c <pos_libc_prf+0xfc>
1c00ab72:	016c0863          	beq	s8,s6,1c00ab82 <pos_libc_prf+0x4f2>
1c00ab76:	c15c1be3          	bne	s8,s5,1c00a78c <pos_libc_prf+0xfc>
1c00ab7a:	03000913          	li	s2,48
1c00ab7e:	8da6                	mv	s11,s1
1c00ab80:	b139                	j	1c00a78e <pos_libc_prf+0xfe>
1c00ab82:	4785                	li	a5,1
1c00ab84:	c03e                	sw	a5,0(sp)
1c00ab86:	8da6                	mv	s11,s1
1c00ab88:	b119                	j	1c00a78e <pos_libc_prf+0xfe>
1c00ab8a:	4785                	li	a5,1
1c00ab8c:	c23e                	sw	a5,4(sp)
1c00ab8e:	8da6                	mv	s11,s1
1c00ab90:	befd                	j	1c00a78e <pos_libc_prf+0xfe>
1c00ab92:	4785                	li	a5,1
1c00ab94:	c43e                	sw	a5,8(sp)
1c00ab96:	8da6                	mv	s11,s1
1c00ab98:	bedd                	j	1c00a78e <pos_libc_prf+0xfe>
1c00ab9a:	0b85                	addi	s7,s7,1
1c00ab9c:	002a1793          	slli	a5,s4,0x2
1c00aba0:	97d2                	add	a5,a5,s4
1c00aba2:	0786                	slli	a5,a5,0x1
1c00aba4:	97ee                	add	a5,a5,s11
1c00aba6:	000bcd83          	lbu	s11,0(s7)
1c00abaa:	fd078a13          	addi	s4,a5,-48
1c00abae:	8662                	mv	a2,s8
1c00abb0:	fd0d8793          	addi	a5,s11,-48
1c00abb4:	8c5e                	mv	s8,s7
1c00abb6:	fef572e3          	bgeu	a0,a5,1c00ab9a <pos_libc_prf+0x50a>
1c00abba:	0609                	addi	a2,a2,2
1c00abbc:	0c800793          	li	a5,200
1c00abc0:	c147f1e3          	bgeu	a5,s4,1c00a7c2 <pos_libc_prf+0x132>
1c00abc4:	0c800a13          	li	s4,200
1c00abc8:	beed                	j	1c00a7c2 <pos_libc_prf+0x132>
1c00abca:	0c800793          	li	a5,200
1c00abce:	b3b7dae3          	bge	a5,s11,1c00a702 <pos_libc_prf+0x72>
1c00abd2:	547d                	li	s0,-1
1c00abd4:	be1d                	j	1c00a70a <pos_libc_prf+0x7a>
1c00abd6:	47b2                	lw	a5,12(sp)
1c00abd8:	0007aa03          	lw	s4,0(a5)
1c00abdc:	00478693          	addi	a3,a5,4
1c00abe0:	000a5663          	bgez	s4,1c00abec <pos_libc_prf+0x55c>
1c00abe4:	4785                	li	a5,1
1c00abe6:	41400a33          	neg	s4,s4
1c00abea:	c03e                	sw	a5,0(sp)
1c00abec:	000bcd83          	lbu	s11,0(s7)
1c00abf0:	c636                	sw	a3,12(sp)
1c00abf2:	002c0613          	addi	a2,s8,2
1c00abf6:	b7d9                	j	1c00abbc <pos_libc_prf+0x52c>
1c00abf8:	b00d89e3          	beqz	s11,1c00a70a <pos_libc_prf+0x7a>
1c00abfc:	b619                	j	1c00a702 <pos_libc_prf+0x72>
1c00abfe:	06400793          	li	a5,100
1c00ac02:	4afd8363          	beq	s11,a5,1c00b0a8 <pos_libc_prf+0xa18>
1c00ac06:	19b7d963          	bge	a5,s11,1c00ad98 <pos_libc_prf+0x708>
1c00ac0a:	f9bd8793          	addi	a5,s11,-101
1c00ac0e:	4689                	li	a3,2
1c00ac10:	aef6e9e3          	bltu	a3,a5,1c00a702 <pos_libc_prf+0x72>
1c00ac14:	47b2                	lw	a5,12(sp)
1c00ac16:	7ff00893          	li	a7,2047
1c00ac1a:	00778b13          	addi	s6,a5,7
1c00ac1e:	ff8b7b13          	andi	s6,s6,-8
1c00ac22:	004b2783          	lw	a5,4(s6)
1c00ac26:	000b2603          	lw	a2,0(s6)
1c00ac2a:	0b21                	addi	s6,s6,8
1c00ac2c:	00b79693          	slli	a3,a5,0xb
1c00ac30:	01565813          	srli	a6,a2,0x15
1c00ac34:	0147d513          	srli	a0,a5,0x14
1c00ac38:	00d866b3          	or	a3,a6,a3
1c00ac3c:	0686                	slli	a3,a3,0x1
1c00ac3e:	7ff57813          	andi	a6,a0,2047
1c00ac42:	00b61313          	slli	t1,a2,0xb
1c00ac46:	0016d513          	srli	a0,a3,0x1
1c00ac4a:	86be                	mv	a3,a5
1c00ac4c:	c11818e3          	bne	a6,a7,1c00a85c <pos_libc_prf+0x1cc>
1c00ac50:	105c                	addi	a5,sp,36
1c00ac52:	0006d863          	bgez	a3,1c00ac62 <pos_libc_prf+0x5d2>
1c00ac56:	02d00793          	li	a5,45
1c00ac5a:	02f10223          	sb	a5,36(sp)
1c00ac5e:	02510793          	addi	a5,sp,37
1c00ac62:	00a36633          	or	a2,t1,a0
1c00ac66:	fbfd8593          	addi	a1,s11,-65
1c00ac6a:	00378993          	addi	s3,a5,3
1c00ac6e:	46e5                	li	a3,25
1c00ac70:	0c0612e3          	bnez	a2,1c00b534 <pos_libc_prf+0xea4>
1c00ac74:	10b6e5e3          	bltu	a3,a1,1c00b57e <pos_libc_prf+0xeee>
1c00ac78:	04900693          	li	a3,73
1c00ac7c:	00d78023          	sb	a3,0(a5)
1c00ac80:	04e00693          	li	a3,78
1c00ac84:	00d780a3          	sb	a3,1(a5)
1c00ac88:	04600693          	li	a3,70
1c00ac8c:	00d78123          	sb	a3,2(a5)
1c00ac90:	000781a3          	sb	zero,3(a5)
1c00ac94:	105c                	addi	a5,sp,36
1c00ac96:	40f989b3          	sub	s3,s3,a5
1c00ac9a:	47a2                	lw	a5,8(sp)
1c00ac9c:	4712                	lw	a4,4(sp)
1c00ac9e:	8fd9                	or	a5,a5,a4
1c00aca0:	ce3e                	sw	a5,28(sp)
1c00aca2:	5e079b63          	bnez	a5,1c00b298 <pos_libc_prf+0xc08>
1c00aca6:	02414683          	lbu	a3,36(sp)
1c00acaa:	02d00793          	li	a5,45
1c00acae:	5ef68563          	beq	a3,a5,1c00b298 <pos_libc_prf+0xc08>
1c00acb2:	0c800793          	li	a5,200
1c00acb6:	0d37d863          	bge	a5,s3,1c00ad86 <pos_libc_prf+0x6f6>
1c00acba:	547d                	li	s0,-1
1c00acbc:	b4b9                	j	1c00a70a <pos_libc_prf+0x7a>
1c00acbe:	07000793          	li	a5,112
1c00acc2:	46fd8f63          	beq	s11,a5,1c00b140 <pos_libc_prf+0xab0>
1c00acc6:	1bb7d663          	bge	a5,s11,1c00ae72 <pos_libc_prf+0x7e2>
1c00acca:	07500793          	li	a5,117
1c00acce:	52fd8763          	beq	s11,a5,1c00b1fc <pos_libc_prf+0xb6c>
1c00acd2:	07800793          	li	a5,120
1c00acd6:	16fd9163          	bne	s11,a5,1c00ae38 <pos_libc_prf+0x7a8>
1c00acda:	47b2                	lw	a5,12(sp)
1c00acdc:	1054                	addi	a3,sp,36
1c00acde:	4390                	lw	a2,0(a5)
1c00ace0:	00478b13          	addi	s6,a5,4
1c00ace4:	47f2                	lw	a5,28(sp)
1c00ace6:	28079163          	bnez	a5,1c00af68 <pos_libc_prf+0x8d8>
1c00acea:	87b6                	mv	a5,a3
1c00acec:	4ea5                	li	t4,9
1c00acee:	4e3d                	li	t3,15
1c00acf0:	a039                	j	1c00acfe <pos_libc_prf+0x66e>
1c00acf2:	ff098fa3          	sb	a6,-1(s3)
1c00acf6:	02ce7663          	bgeu	t3,a2,1c00ad22 <pos_libc_prf+0x692>
1c00acfa:	862a                	mv	a2,a0
1c00acfc:	87ce                	mv	a5,s3
1c00acfe:	00f67593          	andi	a1,a2,15
1c00ad02:	00178993          	addi	s3,a5,1
1c00ad06:	05758813          	addi	a6,a1,87
1c00ad0a:	03058713          	addi	a4,a1,48
1c00ad0e:	00465513          	srli	a0,a2,0x4
1c00ad12:	febee0e3          	bltu	t4,a1,1c00acf2 <pos_libc_prf+0x662>
1c00ad16:	00e78023          	sb	a4,0(a5)
1c00ad1a:	00178993          	addi	s3,a5,1
1c00ad1e:	fcce6ee3          	bltu	t3,a2,1c00acfa <pos_libc_prf+0x66a>
1c00ad22:	40d98633          	sub	a2,s3,a3
1c00ad26:	01565c63          	bge	a2,s5,1c00ad3e <pos_libc_prf+0x6ae>
1c00ad2a:	03000513          	li	a0,48
1c00ad2e:	87ce                	mv	a5,s3
1c00ad30:	0985                	addi	s3,s3,1
1c00ad32:	40d98733          	sub	a4,s3,a3
1c00ad36:	fea98fa3          	sb	a0,-1(s3)
1c00ad3a:	ff574ae3          	blt	a4,s5,1c00ad2e <pos_libc_prf+0x69e>
1c00ad3e:	00098023          	sb	zero,0(s3)
1c00ad42:	00f6fe63          	bgeu	a3,a5,1c00ad5e <pos_libc_prf+0x6ce>
1c00ad46:	0006c603          	lbu	a2,0(a3)
1c00ad4a:	0007c703          	lbu	a4,0(a5)
1c00ad4e:	0685                	addi	a3,a3,1
1c00ad50:	00c78023          	sb	a2,0(a5)
1c00ad54:	fee68fa3          	sb	a4,-1(a3)
1c00ad58:	17fd                	addi	a5,a5,-1
1c00ad5a:	fef6e6e3          	bltu	a3,a5,1c00ad46 <pos_libc_prf+0x6b6>
1c00ad5e:	05800793          	li	a5,88
1c00ad62:	66fd8463          	beq	s11,a5,1c00b3ca <pos_libc_prf+0xd3a>
1c00ad66:	105c                	addi	a5,sp,36
1c00ad68:	40f989b3          	sub	s3,s3,a5
1c00ad6c:	47f2                	lw	a5,28(sp)
1c00ad6e:	c399                	beqz	a5,1c00ad74 <pos_libc_prf+0x6e4>
1c00ad70:	4789                	li	a5,2
1c00ad72:	ce3e                	sw	a5,28(sp)
1c00ad74:	57fd                	li	a5,-1
1c00ad76:	f2fa8ee3          	beq	s5,a5,1c00acb2 <pos_libc_prf+0x622>
1c00ad7a:	0c800793          	li	a5,200
1c00ad7e:	e537cae3          	blt	a5,s3,1c00abd2 <pos_libc_prf+0x542>
1c00ad82:	02000913          	li	s2,32
1c00ad86:	00198613          	addi	a2,s3,1
1c00ad8a:	0349c963          	blt	s3,s4,1c00adbc <pos_libc_prf+0x72c>
1c00ad8e:	c65a                	sw	s6,12(sp)
1c00ad90:	8a4e                	mv	s4,s3
1c00ad92:	1a0a1663          	bnez	s4,1c00af3e <pos_libc_prf+0x8ae>
1c00ad96:	b2b5                	j	1c00a702 <pos_libc_prf+0x72>
1c00ad98:	06300793          	li	a5,99
1c00ad9c:	96fd93e3          	bne	s11,a5,1c00a702 <pos_libc_prf+0x72>
1c00ada0:	4732                	lw	a4,12(sp)
1c00ada2:	020102a3          	sb	zero,37(sp)
1c00ada6:	4785                	li	a5,1
1c00ada8:	4314                	lw	a3,0(a4)
1c00adaa:	00470b13          	addi	s6,a4,4
1c00adae:	02d10223          	sb	a3,36(sp)
1c00adb2:	1947d463          	bge	a5,s4,1c00af3a <pos_libc_prf+0x8aa>
1c00adb6:	4609                	li	a2,2
1c00adb8:	4985                	li	s3,1
1c00adba:	ce02                	sw	zero,28(sp)
1c00adbc:	4782                	lw	a5,0(sp)
1c00adbe:	4e078463          	beqz	a5,1c00b2a6 <pos_libc_prf+0xc16>
1c00adc2:	413a07b3          	sub	a5,s4,s3
1c00adc6:	4585                	li	a1,1
1c00adc8:	0149d363          	bge	s3,s4,1c00adce <pos_libc_prf+0x73e>
1c00adcc:	85be                	mv	a1,a5
1c00adce:	17fd                	addi	a5,a5,-1
1c00add0:	0037b793          	sltiu	a5,a5,3
1c00add4:	eb95                	bnez	a5,1c00ae08 <pos_libc_prf+0x778>
1c00add6:	0349d963          	bge	s3,s4,1c00ae08 <pos_libc_prf+0x778>
1c00adda:	105c                	addi	a5,sp,36
1c00addc:	97ce                	add	a5,a5,s3
1c00adde:	ffc5f613          	andi	a2,a1,-4
1c00ade2:	963e                	add	a2,a2,a5
1c00ade4:	02000693          	li	a3,32
1c00ade8:	00d78023          	sb	a3,0(a5)
1c00adec:	00d780a3          	sb	a3,1(a5)
1c00adf0:	00d78123          	sb	a3,2(a5)
1c00adf4:	00d781a3          	sb	a3,3(a5)
1c00adf8:	0791                	addi	a5,a5,4
1c00adfa:	fef617e3          	bne	a2,a5,1c00ade8 <pos_libc_prf+0x758>
1c00adfe:	ffc5f793          	andi	a5,a1,-4
1c00ae02:	99be                	add	s3,s3,a5
1c00ae04:	02b78663          	beq	a5,a1,1c00ae30 <pos_libc_prf+0x7a0>
1c00ae08:	199c                	addi	a5,sp,240
1c00ae0a:	97ce                	add	a5,a5,s3
1c00ae0c:	02000693          	li	a3,32
1c00ae10:	f2d78a23          	sb	a3,-204(a5)
1c00ae14:	00198793          	addi	a5,s3,1
1c00ae18:	0147dc63          	bge	a5,s4,1c00ae30 <pos_libc_prf+0x7a0>
1c00ae1c:	1998                	addi	a4,sp,240
1c00ae1e:	97ba                	add	a5,a5,a4
1c00ae20:	f2d78a23          	sb	a3,-204(a5)
1c00ae24:	0989                	addi	s3,s3,2
1c00ae26:	0149d563          	bge	s3,s4,1c00ae30 <pos_libc_prf+0x7a0>
1c00ae2a:	99ba                	add	s3,s3,a4
1c00ae2c:	f2d98a23          	sb	a3,-204(s3)
1c00ae30:	c65a                	sw	s6,12(sp)
1c00ae32:	100a1663          	bnez	s4,1c00af3e <pos_libc_prf+0x8ae>
1c00ae36:	b0f1                	j	1c00a702 <pos_libc_prf+0x72>
1c00ae38:	07300793          	li	a5,115
1c00ae3c:	d8fd97e3          	bne	s11,a5,1c00abca <pos_libc_prf+0x53a>
1c00ae40:	47b2                	lw	a5,12(sp)
1c00ae42:	4981                	li	s3,0
1c00ae44:	0c800693          	li	a3,200
1c00ae48:	438c                	lw	a1,0(a5)
1c00ae4a:	00478b13          	addi	s6,a5,4
1c00ae4e:	a021                	j	1c00ae56 <pos_libc_prf+0x7c6>
1c00ae50:	0985                	addi	s3,s3,1
1c00ae52:	6ad98163          	beq	s3,a3,1c00b4f4 <pos_libc_prf+0xe64>
1c00ae56:	013587b3          	add	a5,a1,s3
1c00ae5a:	0007c783          	lbu	a5,0(a5)
1c00ae5e:	fbed                	bnez	a5,1c00ae50 <pos_libc_prf+0x7c0>
1c00ae60:	000ac563          	bltz	s5,1c00ae6a <pos_libc_prf+0x7da>
1c00ae64:	013ad363          	bge	s5,s3,1c00ae6a <pos_libc_prf+0x7da>
1c00ae68:	89d6                	mv	s3,s5
1c00ae6a:	5a099163          	bnez	s3,1c00b40c <pos_libc_prf+0xd7c>
1c00ae6e:	c65a                	sw	s6,12(sp)
1c00ae70:	b849                	j	1c00a702 <pos_libc_prf+0x72>
1c00ae72:	06e00793          	li	a5,110
1c00ae76:	36fd8c63          	beq	s11,a5,1c00b1ee <pos_libc_prf+0xb5e>
1c00ae7a:	06f00793          	li	a5,111
1c00ae7e:	88fd92e3          	bne	s11,a5,1c00a702 <pos_libc_prf+0x72>
1c00ae82:	47b2                	lw	a5,12(sp)
1c00ae84:	4390                	lw	a2,0(a5)
1c00ae86:	00478b13          	addi	s6,a5,4
1c00ae8a:	47f2                	lw	a5,28(sp)
1c00ae8c:	c7f5                	beqz	a5,1c00af78 <pos_libc_prf+0x8e8>
1c00ae8e:	03000793          	li	a5,48
1c00ae92:	02f10223          	sb	a5,36(sp)
1c00ae96:	02510693          	addi	a3,sp,37
1c00ae9a:	60060b63          	beqz	a2,1c00b4b0 <pos_libc_prf+0xe20>
1c00ae9e:	89b6                	mv	s3,a3
1c00aea0:	481d                	li	a6,7
1c00aea2:	00767713          	andi	a4,a2,7
1c00aea6:	03070713          	addi	a4,a4,48
1c00aeaa:	85b2                	mv	a1,a2
1c00aeac:	00e98023          	sb	a4,0(s3)
1c00aeb0:	87ce                	mv	a5,s3
1c00aeb2:	820d                	srli	a2,a2,0x3
1c00aeb4:	0985                	addi	s3,s3,1
1c00aeb6:	feb866e3          	bltu	a6,a1,1c00aea2 <pos_libc_prf+0x812>
1c00aeba:	40d98633          	sub	a2,s3,a3
1c00aebe:	01565c63          	bge	a2,s5,1c00aed6 <pos_libc_prf+0x846>
1c00aec2:	03000593          	li	a1,48
1c00aec6:	87ce                	mv	a5,s3
1c00aec8:	0985                	addi	s3,s3,1
1c00aeca:	40d98733          	sub	a4,s3,a3
1c00aece:	feb98fa3          	sb	a1,-1(s3)
1c00aed2:	ff574ae3          	blt	a4,s5,1c00aec6 <pos_libc_prf+0x836>
1c00aed6:	00098023          	sb	zero,0(s3)
1c00aeda:	00f6fe63          	bgeu	a3,a5,1c00aef6 <pos_libc_prf+0x866>
1c00aede:	0006c603          	lbu	a2,0(a3)
1c00aee2:	0007c703          	lbu	a4,0(a5)
1c00aee6:	0685                	addi	a3,a3,1
1c00aee8:	00c78023          	sb	a2,0(a5)
1c00aeec:	fee68fa3          	sb	a4,-1(a3)
1c00aef0:	17fd                	addi	a5,a5,-1
1c00aef2:	fef6e6e3          	bltu	a3,a5,1c00aede <pos_libc_prf+0x84e>
1c00aef6:	1058                	addi	a4,sp,36
1c00aef8:	57fd                	li	a5,-1
1c00aefa:	40e989b3          	sub	s3,s3,a4
1c00aefe:	36fa8763          	beq	s5,a5,1c00b26c <pos_libc_prf+0xbdc>
1c00af02:	0c800793          	li	a5,200
1c00af06:	cd37c6e3          	blt	a5,s3,1c00abd2 <pos_libc_prf+0x542>
1c00af0a:	ce02                	sw	zero,28(sp)
1c00af0c:	bd9d                	j	1c00ad82 <pos_libc_prf+0x6f2>
1c00af0e:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00af12:	02a00793          	li	a5,42
1c00af16:	00160693          	addi	a3,a2,1
1c00af1a:	14f59b63          	bne	a1,a5,1c00b070 <pos_libc_prf+0x9e0>
1c00af1e:	47b2                	lw	a5,12(sp)
1c00af20:	00164d83          	lbu	s11,1(a2)
1c00af24:	0609                	addi	a2,a2,2
1c00af26:	0007aa83          	lw	s5,0(a5)
1c00af2a:	0791                	addi	a5,a5,4
1c00af2c:	c63e                	sw	a5,12(sp)
1c00af2e:	0c800793          	li	a5,200
1c00af32:	8957dde3          	bge	a5,s5,1c00a7cc <pos_libc_prf+0x13c>
1c00af36:	5afd                	li	s5,-1
1c00af38:	b851                	j	1c00a7cc <pos_libc_prf+0x13c>
1c00af3a:	c65a                	sw	s6,12(sp)
1c00af3c:	4a05                	li	s4,1
1c00af3e:	02410913          	addi	s2,sp,36
1c00af42:	59fd                	li	s3,-1
1c00af44:	41240ab3          	sub	s5,s0,s2
1c00af48:	9a4a                	add	s4,s4,s2
1c00af4a:	a029                	j	1c00af54 <pos_libc_prf+0x8c4>
1c00af4c:	012a8433          	add	s0,s5,s2
1c00af50:	fb490963          	beq	s2,s4,1c00a702 <pos_libc_prf+0x72>
1c00af54:	00094503          	lbu	a0,0(s2)
1c00af58:	85a6                	mv	a1,s1
1c00af5a:	0905                	addi	s2,s2,1
1c00af5c:	9c82                	jalr	s9
1c00af5e:	ff3517e3          	bne	a0,s3,1c00af4c <pos_libc_prf+0x8bc>
1c00af62:	547d                	li	s0,-1
1c00af64:	fa6ff06f          	j	1c00a70a <pos_libc_prf+0x7a>
1c00af68:	77e1                	lui	a5,0xffff8
1c00af6a:	8307c793          	xori	a5,a5,-2000
1c00af6e:	02f11223          	sh	a5,36(sp)
1c00af72:	02610693          	addi	a3,sp,38
1c00af76:	bb95                	j	1c00acea <pos_libc_prf+0x65a>
1c00af78:	1054                	addi	a3,sp,36
1c00af7a:	b715                	j	1c00ae9e <pos_libc_prf+0x80e>
1c00af7c:	5c605a63          	blez	t1,1c00b550 <pos_libc_prf+0xec0>
1c00af80:	006f09b3          	add	s3,t5,t1
1c00af84:	4541                	li	a0,16
1c00af86:	03000e13          	li	t3,48
1c00af8a:	00279713          	slli	a4,a5,0x2
1c00af8e:	01e7d593          	srli	a1,a5,0x1e
1c00af92:	00289693          	slli	a3,a7,0x2
1c00af96:	00f70333          	add	t1,a4,a5
1c00af9a:	8ecd                	or	a3,a3,a1
1c00af9c:	96c6                	add	a3,a3,a7
1c00af9e:	00e33733          	sltu	a4,t1,a4
1c00afa2:	9736                	add	a4,a4,a3
1c00afa4:	0706                	slli	a4,a4,0x1
1c00afa6:	01f35693          	srli	a3,t1,0x1f
1c00afaa:	8f55                	or	a4,a4,a3
1c00afac:	01c75693          	srli	a3,a4,0x1c
1c00afb0:	03068693          	addi	a3,a3,48
1c00afb4:	4ea05463          	blez	a0,1c00b49c <pos_libc_prf+0xe0c>
1c00afb8:	fed80fa3          	sb	a3,-1(a6)
1c00afbc:	46d2                	lw	a3,20(sp)
1c00afbe:	157d                	addi	a0,a0,-1
1c00afc0:	00131793          	slli	a5,t1,0x1
1c00afc4:	00d778b3          	and	a7,a4,a3
1c00afc8:	4d099e63          	bne	s3,a6,1c00b4a4 <pos_libc_prf+0xe14>
1c00afcc:	4301                	li	t1,0
1c00afce:	4772                	lw	a4,28(sp)
1c00afd0:	01576bb3          	or	s7,a4,s5
1c00afd4:	060b8863          	beqz	s7,1c00b044 <pos_libc_prf+0x9b4>
1c00afd8:	02e00693          	li	a3,46
1c00afdc:	00d98023          	sb	a3,0(s3)
1c00afe0:	00198e93          	addi	t4,s3,1
1c00afe4:	5c0a8763          	beqz	s5,1c00b5b2 <pos_libc_prf+0xf22>
1c00afe8:	001a8693          	addi	a3,s5,1
1c00afec:	99b6                	add	s3,s3,a3
1c00afee:	8876                	mv	a6,t4
1c00aff0:	03000f13          	li	t5,48
1c00aff4:	0805                	addi	a6,a6,1
1c00aff6:	4a031963          	bnez	t1,1c00b4a8 <pos_libc_prf+0xe18>
1c00affa:	00279713          	slli	a4,a5,0x2
1c00affe:	01e7d593          	srli	a1,a5,0x1e
1c00b002:	00289693          	slli	a3,a7,0x2
1c00b006:	00f70e33          	add	t3,a4,a5
1c00b00a:	8ecd                	or	a3,a3,a1
1c00b00c:	96c6                	add	a3,a3,a7
1c00b00e:	00ee3733          	sltu	a4,t3,a4
1c00b012:	9736                	add	a4,a4,a3
1c00b014:	0706                	slli	a4,a4,0x1
1c00b016:	01fe5693          	srli	a3,t3,0x1f
1c00b01a:	8f55                	or	a4,a4,a3
1c00b01c:	01c75593          	srli	a1,a4,0x1c
1c00b020:	03000693          	li	a3,48
1c00b024:	00a05a63          	blez	a0,1c00b038 <pos_libc_prf+0x9a8>
1c00b028:	03058693          	addi	a3,a1,48
1c00b02c:	45d2                	lw	a1,20(sp)
1c00b02e:	157d                	addi	a0,a0,-1
1c00b030:	001e1793          	slli	a5,t3,0x1
1c00b034:	00b778b3          	and	a7,a4,a1
1c00b038:	fed80fa3          	sb	a3,-1(a6)
1c00b03c:	fb099ce3          	bne	s3,a6,1c00aff4 <pos_libc_prf+0x964>
1c00b040:	015e89b3          	add	s3,t4,s5
1c00b044:	b0060ee3          	beqz	a2,1c00ab60 <pos_libc_prf+0x4d0>
1c00b048:	03000613          	li	a2,48
1c00b04c:	fff9c783          	lbu	a5,-1(s3)
1c00b050:	86ce                	mv	a3,s3
1c00b052:	19fd                	addi	s3,s3,-1
1c00b054:	fec78ce3          	beq	a5,a2,1c00b04c <pos_libc_prf+0x9bc>
1c00b058:	02e00613          	li	a2,46
1c00b05c:	aec78ce3          	beq	a5,a2,1c00ab54 <pos_libc_prf+0x4c4>
1c00b060:	89b6                	mv	s3,a3
1c00b062:	bccd                	j	1c00ab54 <pos_libc_prf+0x4c4>
1c00b064:	fff88fa3          	sb	t6,-1(a7)
1c00b068:	ab1f11e3          	bne	t5,a7,1c00ab0a <pos_libc_prf+0x47a>
1c00b06c:	99d6                	add	s3,s3,s5
1c00b06e:	b4cd                	j	1c00ab50 <pos_libc_prf+0x4c0>
1c00b070:	fd058713          	addi	a4,a1,-48
1c00b074:	47a5                	li	a5,9
1c00b076:	8dae                	mv	s11,a1
1c00b078:	4a81                	li	s5,0
1c00b07a:	4525                	li	a0,9
1c00b07c:	00e7f463          	bgeu	a5,a4,1c00b084 <pos_libc_prf+0x9f4>
1c00b080:	a199                	j	1c00b4c6 <pos_libc_prf+0xe36>
1c00b082:	0685                	addi	a3,a3,1
1c00b084:	002a9793          	slli	a5,s5,0x2
1c00b088:	97d6                	add	a5,a5,s5
1c00b08a:	0786                	slli	a5,a5,0x1
1c00b08c:	97ee                	add	a5,a5,s11
1c00b08e:	0006cd83          	lbu	s11,0(a3)
1c00b092:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00b096:	8732                	mv	a4,a2
1c00b098:	fd0d8793          	addi	a5,s11,-48
1c00b09c:	8636                	mv	a2,a3
1c00b09e:	fef572e3          	bgeu	a0,a5,1c00b082 <pos_libc_prf+0x9f2>
1c00b0a2:	00270613          	addi	a2,a4,2
1c00b0a6:	b561                	j	1c00af2e <pos_libc_prf+0x89e>
1c00b0a8:	47b2                	lw	a5,12(sp)
1c00b0aa:	0007a303          	lw	t1,0(a5)
1c00b0ae:	00478b13          	addi	s6,a5,4
1c00b0b2:	2e034263          	bltz	t1,1c00b396 <pos_libc_prf+0xd06>
1c00b0b6:	47a2                	lw	a5,8(sp)
1c00b0b8:	861a                	mv	a2,t1
1c00b0ba:	3c078663          	beqz	a5,1c00b486 <pos_libc_prf+0xdf6>
1c00b0be:	02b00793          	li	a5,43
1c00b0c2:	02f10223          	sb	a5,36(sp)
1c00b0c6:	02510693          	addi	a3,sp,37
1c00b0ca:	89b6                	mv	s3,a3
1c00b0cc:	4529                	li	a0,10
1c00b0ce:	48a5                	li	a7,9
1c00b0d0:	02a67733          	remu	a4,a2,a0
1c00b0d4:	87ce                	mv	a5,s3
1c00b0d6:	0985                	addi	s3,s3,1
1c00b0d8:	85b2                	mv	a1,a2
1c00b0da:	03070713          	addi	a4,a4,48
1c00b0de:	fee98fa3          	sb	a4,-1(s3)
1c00b0e2:	02a65633          	divu	a2,a2,a0
1c00b0e6:	feb8e5e3          	bltu	a7,a1,1c00b0d0 <pos_libc_prf+0xa40>
1c00b0ea:	40d98633          	sub	a2,s3,a3
1c00b0ee:	01565c63          	bge	a2,s5,1c00b106 <pos_libc_prf+0xa76>
1c00b0f2:	03000593          	li	a1,48
1c00b0f6:	87ce                	mv	a5,s3
1c00b0f8:	0985                	addi	s3,s3,1
1c00b0fa:	40d98733          	sub	a4,s3,a3
1c00b0fe:	feb98fa3          	sb	a1,-1(s3)
1c00b102:	ff574ae3          	blt	a4,s5,1c00b0f6 <pos_libc_prf+0xa66>
1c00b106:	00098023          	sb	zero,0(s3)
1c00b10a:	00f6fe63          	bgeu	a3,a5,1c00b126 <pos_libc_prf+0xa96>
1c00b10e:	0006c603          	lbu	a2,0(a3)
1c00b112:	0007c703          	lbu	a4,0(a5)
1c00b116:	0685                	addi	a3,a3,1
1c00b118:	00c78023          	sb	a2,0(a5)
1c00b11c:	fee68fa3          	sb	a4,-1(a3)
1c00b120:	17fd                	addi	a5,a5,-1
1c00b122:	fef6e6e3          	bltu	a3,a5,1c00b10e <pos_libc_prf+0xa7e>
1c00b126:	4712                	lw	a4,4(sp)
1c00b128:	47a2                	lw	a5,8(sp)
1c00b12a:	8fd9                	or	a5,a5,a4
1c00b12c:	ce3e                	sw	a5,28(sp)
1c00b12e:	1058                	addi	a4,sp,36
1c00b130:	40e989b3          	sub	s3,s3,a4
1c00b134:	c40790e3          	bnez	a5,1c00ad74 <pos_libc_prf+0x6e4>
1c00b138:	01f35793          	srli	a5,t1,0x1f
1c00b13c:	ce3e                	sw	a5,28(sp)
1c00b13e:	b91d                	j	1c00ad74 <pos_libc_prf+0x6e4>
1c00b140:	47b2                	lw	a5,12(sp)
1c00b142:	02610613          	addi	a2,sp,38
1c00b146:	4ea5                	li	t4,9
1c00b148:	438c                	lw	a1,0(a5)
1c00b14a:	00478b13          	addi	s6,a5,4
1c00b14e:	77e1                	lui	a5,0xffff8
1c00b150:	8307c793          	xori	a5,a5,-2000
1c00b154:	02f11223          	sh	a5,36(sp)
1c00b158:	4e3d                	li	t3,15
1c00b15a:	87b2                	mv	a5,a2
1c00b15c:	a039                	j	1c00b16a <pos_libc_prf+0xada>
1c00b15e:	ff168fa3          	sb	a7,-1(a3)
1c00b162:	02be7663          	bgeu	t3,a1,1c00b18e <pos_libc_prf+0xafe>
1c00b166:	85c2                	mv	a1,a6
1c00b168:	87b6                	mv	a5,a3
1c00b16a:	00f5f513          	andi	a0,a1,15
1c00b16e:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00b172:	05750893          	addi	a7,a0,87
1c00b176:	03050713          	addi	a4,a0,48
1c00b17a:	0045d813          	srli	a6,a1,0x4
1c00b17e:	feaee0e3          	bltu	t4,a0,1c00b15e <pos_libc_prf+0xace>
1c00b182:	00e78023          	sb	a4,0(a5)
1c00b186:	00178693          	addi	a3,a5,1
1c00b18a:	fcbe6ee3          	bltu	t3,a1,1c00b166 <pos_libc_prf+0xad6>
1c00b18e:	40c689b3          	sub	s3,a3,a2
1c00b192:	459d                	li	a1,7
1c00b194:	0135cc63          	blt	a1,s3,1c00b1ac <pos_libc_prf+0xb1c>
1c00b198:	03000513          	li	a0,48
1c00b19c:	87b6                	mv	a5,a3
1c00b19e:	0685                	addi	a3,a3,1
1c00b1a0:	40c689b3          	sub	s3,a3,a2
1c00b1a4:	fea68fa3          	sb	a0,-1(a3)
1c00b1a8:	ff35dae3          	bge	a1,s3,1c00b19c <pos_libc_prf+0xb0c>
1c00b1ac:	00068023          	sb	zero,0(a3)
1c00b1b0:	86b2                	mv	a3,a2
1c00b1b2:	00f67e63          	bgeu	a2,a5,1c00b1ce <pos_libc_prf+0xb3e>
1c00b1b6:	0006c603          	lbu	a2,0(a3)
1c00b1ba:	0007c703          	lbu	a4,0(a5)
1c00b1be:	0685                	addi	a3,a3,1
1c00b1c0:	00c78023          	sb	a2,0(a5)
1c00b1c4:	fee68fa3          	sb	a4,-1(a3)
1c00b1c8:	17fd                	addi	a5,a5,-1
1c00b1ca:	fef6e6e3          	bltu	a3,a5,1c00b1b6 <pos_libc_prf+0xb26>
1c00b1ce:	57fd                	li	a5,-1
1c00b1d0:	0989                	addi	s3,s3,2
1c00b1d2:	22fa8663          	beq	s5,a5,1c00b3fe <pos_libc_prf+0xd6e>
1c00b1d6:	0c800793          	li	a5,200
1c00b1da:	9f37cce3          	blt	a5,s3,1c00abd2 <pos_libc_prf+0x542>
1c00b1de:	02000913          	li	s2,32
1c00b1e2:	0b49d863          	bge	s3,s4,1c00b292 <pos_libc_prf+0xc02>
1c00b1e6:	00198613          	addi	a2,s3,1
1c00b1ea:	ce02                	sw	zero,28(sp)
1c00b1ec:	bec1                	j	1c00adbc <pos_libc_prf+0x72c>
1c00b1ee:	4732                	lw	a4,12(sp)
1c00b1f0:	431c                	lw	a5,0(a4)
1c00b1f2:	0711                	addi	a4,a4,4
1c00b1f4:	c63a                	sw	a4,12(sp)
1c00b1f6:	c380                	sw	s0,0(a5)
1c00b1f8:	d0aff06f          	j	1c00a702 <pos_libc_prf+0x72>
1c00b1fc:	47b2                	lw	a5,12(sp)
1c00b1fe:	4529                	li	a0,10
1c00b200:	48a5                	li	a7,9
1c00b202:	4390                	lw	a2,0(a5)
1c00b204:	00478b13          	addi	s6,a5,4
1c00b208:	105c                	addi	a5,sp,36
1c00b20a:	02a67733          	remu	a4,a2,a0
1c00b20e:	86be                	mv	a3,a5
1c00b210:	0785                	addi	a5,a5,1
1c00b212:	85b2                	mv	a1,a2
1c00b214:	03070713          	addi	a4,a4,48
1c00b218:	fee78fa3          	sb	a4,-1(a5)
1c00b21c:	02a65633          	divu	a2,a2,a0
1c00b220:	feb8e5e3          	bltu	a7,a1,1c00b20a <pos_libc_prf+0xb7a>
1c00b224:	1058                	addi	a4,sp,36
1c00b226:	40e789b3          	sub	s3,a5,a4
1c00b22a:	0159dd63          	bge	s3,s5,1c00b244 <pos_libc_prf+0xbb4>
1c00b22e:	03000613          	li	a2,48
1c00b232:	86be                	mv	a3,a5
1c00b234:	1058                	addi	a4,sp,36
1c00b236:	0785                	addi	a5,a5,1
1c00b238:	40e789b3          	sub	s3,a5,a4
1c00b23c:	fec78fa3          	sb	a2,-1(a5)
1c00b240:	ff59c9e3          	blt	s3,s5,1c00b232 <pos_libc_prf+0xba2>
1c00b244:	00078023          	sb	zero,0(a5)
1c00b248:	105c                	addi	a5,sp,36
1c00b24a:	00d7fe63          	bgeu	a5,a3,1c00b266 <pos_libc_prf+0xbd6>
1c00b24e:	0007c603          	lbu	a2,0(a5)
1c00b252:	0006c703          	lbu	a4,0(a3)
1c00b256:	0785                	addi	a5,a5,1
1c00b258:	00c68023          	sb	a2,0(a3)
1c00b25c:	fee78fa3          	sb	a4,-1(a5)
1c00b260:	16fd                	addi	a3,a3,-1
1c00b262:	fed7e6e3          	bltu	a5,a3,1c00b24e <pos_libc_prf+0xbbe>
1c00b266:	57fd                	li	a5,-1
1c00b268:	c8fa9de3          	bne	s5,a5,1c00af02 <pos_libc_prf+0x872>
1c00b26c:	0c800793          	li	a5,200
1c00b270:	9737c1e3          	blt	a5,s3,1c00abd2 <pos_libc_prf+0x542>
1c00b274:	ce02                	sw	zero,28(sp)
1c00b276:	be01                	j	1c00ad86 <pos_libc_prf+0x6f6>
1c00b278:	85a6                	mv	a1,s1
1c00b27a:	02500513          	li	a0,37
1c00b27e:	9c82                	jalr	s9
1c00b280:	57fd                	li	a5,-1
1c00b282:	c6f51f63          	bne	a0,a5,1c00a700 <pos_libc_prf+0x70>
1c00b286:	547d                	li	s0,-1
1c00b288:	c82ff06f          	j	1c00a70a <pos_libc_prf+0x7a>
1c00b28c:	4401                	li	s0,0
1c00b28e:	c7cff06f          	j	1c00a70a <pos_libc_prf+0x7a>
1c00b292:	8a4e                	mv	s4,s3
1c00b294:	c65a                	sw	s6,12(sp)
1c00b296:	b165                	j	1c00af3e <pos_libc_prf+0x8ae>
1c00b298:	0c800793          	li	a5,200
1c00b29c:	9337cbe3          	blt	a5,s3,1c00abd2 <pos_libc_prf+0x542>
1c00b2a0:	4785                	li	a5,1
1c00b2a2:	ce3e                	sw	a5,28(sp)
1c00b2a4:	b4cd                	j	1c00ad86 <pos_libc_prf+0x6f6>
1c00b2a6:	104c                	addi	a1,sp,36
1c00b2a8:	413a09b3          	sub	s3,s4,s3
1c00b2ac:	01358533          	add	a0,a1,s3
1c00b2b0:	9faff0ef          	jal	ra,1c00a4aa <memmove>
1c00b2b4:	02000793          	li	a5,32
1c00b2b8:	24f90863          	beq	s2,a5,1c00b508 <pos_libc_prf+0xe78>
1c00b2bc:	47f2                	lw	a5,28(sp)
1c00b2be:	99be                	add	s3,s3,a5
1c00b2c0:	47f2                	lw	a5,28(sp)
1c00b2c2:	b737d7e3          	bge	a5,s3,1c00ae30 <pos_libc_prf+0x7a0>
1c00b2c6:	4772                	lw	a4,28(sp)
1c00b2c8:	4789                	li	a5,2
1c00b2ca:	40e988b3          	sub	a7,s3,a4
1c00b2ce:	fff88693          	addi	a3,a7,-1
1c00b2d2:	06d7f063          	bgeu	a5,a3,1c00b332 <pos_libc_prf+0xca2>
1c00b2d6:	47e2                	lw	a5,24(sp)
1c00b2d8:	00891613          	slli	a2,s2,0x8
1c00b2dc:	ffc8f593          	andi	a1,a7,-4
1c00b2e0:	00f976b3          	and	a3,s2,a5
1c00b2e4:	8ed1                	or	a3,a3,a2
1c00b2e6:	01091793          	slli	a5,s2,0x10
1c00b2ea:	8edd                	or	a3,a3,a5
1c00b2ec:	01891613          	slli	a2,s2,0x18
1c00b2f0:	8e55                	or	a2,a2,a3
1c00b2f2:	105c                	addi	a5,sp,36
1c00b2f4:	00865813          	srli	a6,a2,0x8
1c00b2f8:	01065513          	srli	a0,a2,0x10
1c00b2fc:	97ba                	add	a5,a5,a4
1c00b2fe:	95be                	add	a1,a1,a5
1c00b300:	0306f693          	andi	a3,a3,48
1c00b304:	8261                	srli	a2,a2,0x18
1c00b306:	0ff87813          	andi	a6,a6,255
1c00b30a:	0ff57513          	andi	a0,a0,255
1c00b30e:	00d78023          	sb	a3,0(a5)
1c00b312:	010780a3          	sb	a6,1(a5)
1c00b316:	00a78123          	sb	a0,2(a5)
1c00b31a:	00c781a3          	sb	a2,3(a5)
1c00b31e:	0791                	addi	a5,a5,4
1c00b320:	fef597e3          	bne	a1,a5,1c00b30e <pos_libc_prf+0xc7e>
1c00b324:	4772                	lw	a4,28(sp)
1c00b326:	ffc8f793          	andi	a5,a7,-4
1c00b32a:	973e                	add	a4,a4,a5
1c00b32c:	ce3a                	sw	a4,28(sp)
1c00b32e:	b11781e3          	beq	a5,a7,1c00ae30 <pos_libc_prf+0x7a0>
1c00b332:	4772                	lw	a4,28(sp)
1c00b334:	199c                	addi	a5,sp,240
1c00b336:	97ba                	add	a5,a5,a4
1c00b338:	f3278a23          	sb	s2,-204(a5)
1c00b33c:	00170793          	addi	a5,a4,1
1c00b340:	af37d8e3          	bge	a5,s3,1c00ae30 <pos_libc_prf+0x7a0>
1c00b344:	1994                	addi	a3,sp,240
1c00b346:	97b6                	add	a5,a5,a3
1c00b348:	f3278a23          	sb	s2,-204(a5)
1c00b34c:	00270b93          	addi	s7,a4,2
1c00b350:	af3bd0e3          	bge	s7,s3,1c00ae30 <pos_libc_prf+0x7a0>
1c00b354:	9bb6                	add	s7,s7,a3
1c00b356:	f32b8a23          	sb	s2,-204(s7)
1c00b35a:	c65a                	sw	s6,12(sp)
1c00b35c:	bcd9                	j	1c00ae32 <pos_libc_prf+0x7a2>
1c00b35e:	01b98023          	sb	s11,0(s3)
1c00b362:	02b00613          	li	a2,43
1c00b366:	00035663          	bgez	t1,1c00b372 <pos_libc_prf+0xce2>
1c00b36a:	40600333          	neg	t1,t1
1c00b36e:	02d00613          	li	a2,45
1c00b372:	47a9                	li	a5,10
1c00b374:	02f346b3          	div	a3,t1,a5
1c00b378:	00c980a3          	sb	a2,1(s3)
1c00b37c:	0991                	addi	s3,s3,4
1c00b37e:	02f367b3          	rem	a5,t1,a5
1c00b382:	03068693          	addi	a3,a3,48
1c00b386:	fed98f23          	sb	a3,-2(s3)
1c00b38a:	03078793          	addi	a5,a5,48
1c00b38e:	fef98fa3          	sb	a5,-1(s3)
1c00b392:	fceff06f          	j	1c00ab60 <pos_libc_prf+0x4d0>
1c00b396:	02d00793          	li	a5,45
1c00b39a:	02f10223          	sb	a5,36(sp)
1c00b39e:	800007b7          	lui	a5,0x80000
1c00b3a2:	14f30e63          	beq	t1,a5,1c00b4fe <pos_libc_prf+0xe6e>
1c00b3a6:	40600633          	neg	a2,t1
1c00b3aa:	02510693          	addi	a3,sp,37
1c00b3ae:	bb31                	j	1c00b0ca <pos_libc_prf+0xa3a>
1c00b3b0:	4722                	lw	a4,8(sp)
1c00b3b2:	10070d63          	beqz	a4,1c00b4cc <pos_libc_prf+0xe3c>
1c00b3b6:	02b00693          	li	a3,43
1c00b3ba:	02d10223          	sb	a3,36(sp)
1c00b3be:	02510f13          	addi	t5,sp,37
1c00b3c2:	4301                	li	t1,0
1c00b3c4:	4801                	li	a6,0
1c00b3c6:	d9cff06f          	j	1c00a962 <pos_libc_prf+0x2d2>
1c00b3ca:	02414783          	lbu	a5,36(sp)
1c00b3ce:	98078ce3          	beqz	a5,1c00ad66 <pos_libc_prf+0x6d6>
1c00b3d2:	1054                	addi	a3,sp,36
1c00b3d4:	45e5                	li	a1,25
1c00b3d6:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00b3da:	f9f78793          	addi	a5,a5,-97
1c00b3de:	0ff7f793          	andi	a5,a5,255
1c00b3e2:	00f5e963          	bltu	a1,a5,1c00b3f4 <pos_libc_prf+0xd64>
1c00b3e6:	0016c783          	lbu	a5,1(a3)
1c00b3ea:	00e68023          	sb	a4,0(a3)
1c00b3ee:	0685                	addi	a3,a3,1
1c00b3f0:	f3fd                	bnez	a5,1c00b3d6 <pos_libc_prf+0xd46>
1c00b3f2:	ba95                	j	1c00ad66 <pos_libc_prf+0x6d6>
1c00b3f4:	0016c783          	lbu	a5,1(a3)
1c00b3f8:	0685                	addi	a3,a3,1
1c00b3fa:	fff1                	bnez	a5,1c00b3d6 <pos_libc_prf+0xd46>
1c00b3fc:	b2ad                	j	1c00ad66 <pos_libc_prf+0x6d6>
1c00b3fe:	0c800793          	li	a5,200
1c00b402:	df37d0e3          	bge	a5,s3,1c00b1e2 <pos_libc_prf+0xb52>
1c00b406:	547d                	li	s0,-1
1c00b408:	b02ff06f          	j	1c00a70a <pos_libc_prf+0x7a>
1c00b40c:	864e                	mv	a2,s3
1c00b40e:	1048                	addi	a0,sp,36
1c00b410:	fc5fe0ef          	jal	ra,1c00a3d4 <memcpy>
1c00b414:	b3f9                	j	1c00b1e2 <pos_libc_prf+0xb52>
1c00b416:	47f2                	lw	a5,28(sp)
1c00b418:	4601                	li	a2,0
1c00b41a:	e399                	bnez	a5,1c00b420 <pos_libc_prf+0xd90>
1c00b41c:	01503633          	snez	a2,s5
1c00b420:	57f5                	li	a5,-3
1c00b422:	001a8813          	addi	a6,s5,1
1c00b426:	00f34463          	blt	t1,a5,1c00b42e <pos_libc_prf+0xd9e>
1c00b42a:	04685163          	bge	a6,t1,1c00b46c <pos_libc_prf+0xddc>
1c00b42e:	47c1                	li	a5,16
1c00b430:	0107d363          	bge	a5,a6,1c00b436 <pos_libc_prf+0xda6>
1c00b434:	4841                	li	a6,16
1c00b436:	06700793          	li	a5,103
1c00b43a:	187d                	addi	a6,a6,-1
1c00b43c:	02fd8363          	beq	s11,a5,1c00b462 <pos_libc_prf+0xdd2>
1c00b440:	04500d93          	li	s11,69
1c00b444:	d70ff06f          	j	1c00a9b4 <pos_libc_prf+0x324>
1c00b448:	4a99                	li	s5,6
1c00b44a:	d4fd9563          	bne	s11,a5,1c00a994 <pos_libc_prf+0x304>
1c00b44e:	4772                	lw	a4,28(sp)
1c00b450:	4605                	li	a2,1
1c00b452:	57f5                	li	a5,-3
1c00b454:	8e19                	sub	a2,a2,a4
1c00b456:	00f34563          	blt	t1,a5,1c00b460 <pos_libc_prf+0xdd0>
1c00b45a:	479d                	li	a5,7
1c00b45c:	0067d863          	bge	a5,t1,1c00b46c <pos_libc_prf+0xddc>
1c00b460:	4819                	li	a6,6
1c00b462:	06500d93          	li	s11,101
1c00b466:	d4eff06f          	j	1c00a9b4 <pos_libc_prf+0x324>
1c00b46a:	4601                	li	a2,0
1c00b46c:	006a8833          	add	a6,s5,t1
1c00b470:	0b005b63          	blez	a6,1c00b526 <pos_libc_prf+0xe96>
1c00b474:	47c1                	li	a5,16
1c00b476:	0107d363          	bge	a5,a6,1c00b47c <pos_libc_prf+0xdec>
1c00b47a:	4841                	li	a6,16
1c00b47c:	187d                	addi	a6,a6,-1
1c00b47e:	06600d93          	li	s11,102
1c00b482:	d32ff06f          	j	1c00a9b4 <pos_libc_prf+0x324>
1c00b486:	4792                	lw	a5,4(sp)
1c00b488:	1054                	addi	a3,sp,36
1c00b48a:	c40780e3          	beqz	a5,1c00b0ca <pos_libc_prf+0xa3a>
1c00b48e:	02000793          	li	a5,32
1c00b492:	02f10223          	sb	a5,36(sp)
1c00b496:	02510693          	addi	a3,sp,37
1c00b49a:	b905                	j	1c00b0ca <pos_libc_prf+0xa3a>
1c00b49c:	ffc80fa3          	sb	t3,-1(a6)
1c00b4a0:	b30986e3          	beq	s3,a6,1c00afcc <pos_libc_prf+0x93c>
1c00b4a4:	0805                	addi	a6,a6,1
1c00b4a6:	b4d5                	j	1c00af8a <pos_libc_prf+0x8fa>
1c00b4a8:	ffe80fa3          	sb	t5,-1(a6)
1c00b4ac:	0305                	addi	t1,t1,1
1c00b4ae:	b679                	j	1c00b03c <pos_libc_prf+0x9ac>
1c00b4b0:	020102a3          	sb	zero,37(sp)
1c00b4b4:	57fd                	li	a5,-1
1c00b4b6:	0cfa8263          	beq	s5,a5,1c00b57a <pos_libc_prf+0xeea>
1c00b4ba:	4785                	li	a5,1
1c00b4bc:	0b47c063          	blt	a5,s4,1c00b55c <pos_libc_prf+0xecc>
1c00b4c0:	4a72                	lw	s4,28(sp)
1c00b4c2:	c65a                	sw	s6,12(sp)
1c00b4c4:	bcad                	j	1c00af3e <pos_libc_prf+0x8ae>
1c00b4c6:	8636                	mv	a2,a3
1c00b4c8:	b04ff06f          	j	1c00a7cc <pos_libc_prf+0x13c>
1c00b4cc:	4712                	lw	a4,4(sp)
1c00b4ce:	c77d                	beqz	a4,1c00b5bc <pos_libc_prf+0xf2c>
1c00b4d0:	02000693          	li	a3,32
1c00b4d4:	02d10223          	sb	a3,36(sp)
1c00b4d8:	4301                	li	t1,0
1c00b4da:	4801                	li	a6,0
1c00b4dc:	02510f13          	addi	t5,sp,37
1c00b4e0:	c82ff06f          	j	1c00a962 <pos_libc_prf+0x2d2>
1c00b4e4:	02d00693          	li	a3,45
1c00b4e8:	02d10223          	sb	a3,36(sp)
1c00b4ec:	02510f13          	addi	t5,sp,37
1c00b4f0:	b9cff06f          	j	1c00a88c <pos_libc_prf+0x1fc>
1c00b4f4:	0c800613          	li	a2,200
1c00b4f8:	960ad6e3          	bgez	s5,1c00ae64 <pos_libc_prf+0x7d4>
1c00b4fc:	bf09                	j	1c00b40e <pos_libc_prf+0xd7e>
1c00b4fe:	80000637          	lui	a2,0x80000
1c00b502:	02510693          	addi	a3,sp,37
1c00b506:	b6d1                	j	1c00b0ca <pos_libc_prf+0xa3a>
1c00b508:	ce02                	sw	zero,28(sp)
1c00b50a:	bb5d                	j	1c00b2c0 <pos_libc_prf+0xc30>
1c00b50c:	4712                	lw	a4,4(sp)
1c00b50e:	02410f13          	addi	t5,sp,36
1c00b512:	b6070d63          	beqz	a4,1c00a88c <pos_libc_prf+0x1fc>
1c00b516:	02000693          	li	a3,32
1c00b51a:	02d10223          	sb	a3,36(sp)
1c00b51e:	02510f13          	addi	t5,sp,37
1c00b522:	b6aff06f          	j	1c00a88c <pos_libc_prf+0x1fc>
1c00b526:	06600d93          	li	s11,102
1c00b52a:	4781                	li	a5,0
1c00b52c:	080006b7          	lui	a3,0x8000
1c00b530:	ce8ff06f          	j	1c00aa18 <pos_libc_prf+0x388>
1c00b534:	06b6e363          	bltu	a3,a1,1c00b59a <pos_libc_prf+0xf0a>
1c00b538:	04e00693          	li	a3,78
1c00b53c:	04100613          	li	a2,65
1c00b540:	00d78023          	sb	a3,0(a5)
1c00b544:	00c780a3          	sb	a2,1(a5)
1c00b548:	00d78123          	sb	a3,2(a5)
1c00b54c:	f44ff06f          	j	1c00ac90 <pos_libc_prf+0x600>
1c00b550:	03000693          	li	a3,48
1c00b554:	00df0023          	sb	a3,0(t5)
1c00b558:	4541                	li	a0,16
1c00b55a:	bc95                	j	1c00afce <pos_libc_prf+0x93e>
1c00b55c:	4982                	lw	s3,0(sp)
1c00b55e:	860992e3          	bnez	s3,1c00adc2 <pos_libc_prf+0x732>
1c00b562:	104c                	addi	a1,sp,36
1c00b564:	fffa0993          	addi	s3,s4,-1
1c00b568:	4609                	li	a2,2
1c00b56a:	01358533          	add	a0,a1,s3
1c00b56e:	f3dfe0ef          	jal	ra,1c00a4aa <memmove>
1c00b572:	02000913          	li	s2,32
1c00b576:	ce02                	sw	zero,28(sp)
1c00b578:	b3b9                	j	1c00b2c6 <pos_libc_prf+0xc36>
1c00b57a:	49f2                	lw	s3,28(sp)
1c00b57c:	b19d                	j	1c00b1e2 <pos_libc_prf+0xb52>
1c00b57e:	06900693          	li	a3,105
1c00b582:	00d78023          	sb	a3,0(a5)
1c00b586:	06e00693          	li	a3,110
1c00b58a:	00d780a3          	sb	a3,1(a5)
1c00b58e:	06600693          	li	a3,102
1c00b592:	00d78123          	sb	a3,2(a5)
1c00b596:	efaff06f          	j	1c00ac90 <pos_libc_prf+0x600>
1c00b59a:	06e00693          	li	a3,110
1c00b59e:	06100613          	li	a2,97
1c00b5a2:	00d78023          	sb	a3,0(a5)
1c00b5a6:	00c780a3          	sb	a2,1(a5)
1c00b5aa:	00d78123          	sb	a3,2(a5)
1c00b5ae:	ee2ff06f          	j	1c00ac90 <pos_libc_prf+0x600>
1c00b5b2:	89f6                	mv	s3,t4
1c00b5b4:	a8061ae3          	bnez	a2,1c00b048 <pos_libc_prf+0x9b8>
1c00b5b8:	da8ff06f          	j	1c00ab60 <pos_libc_prf+0x4d0>
1c00b5bc:	4301                	li	t1,0
1c00b5be:	4801                	li	a6,0
1c00b5c0:	02410f13          	addi	t5,sp,36
1c00b5c4:	b9eff06f          	j	1c00a962 <pos_libc_prf+0x2d2>

1c00b5c8 <pos_init_start>:
1c00b5c8:	1141                	addi	sp,sp,-16
1c00b5ca:	c422                	sw	s0,8(sp)
1c00b5cc:	1c000437          	lui	s0,0x1c000
1c00b5d0:	c606                	sw	ra,12(sp)
1c00b5d2:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b5d6:	d83fc0ef          	jal	ra,1c008358 <pos_soc_init>
1c00b5da:	2a75                	jal	1c00b796 <pos_irq_init>
1c00b5dc:	22e5                	jal	1c00b7c4 <pos_soc_event_init>
1c00b5de:	2225                	jal	1c00b706 <pos_allocs_init>
1c00b5e0:	405c                	lw	a5,4(s0)
1c00b5e2:	c791                	beqz	a5,1c00b5ee <pos_init_start+0x26>
1c00b5e4:	0411                	addi	s0,s0,4
1c00b5e6:	0411                	addi	s0,s0,4
1c00b5e8:	9782                	jalr	a5
1c00b5ea:	401c                	lw	a5,0(s0)
1c00b5ec:	ffed                	bnez	a5,1c00b5e6 <pos_init_start+0x1e>
1c00b5ee:	86cff0ef          	jal	ra,1c00a65a <pos_io_start>
1c00b5f2:	300467f3          	csrrsi	a5,mstatus,8
1c00b5f6:	40b2                	lw	ra,12(sp)
1c00b5f8:	4422                	lw	s0,8(sp)
1c00b5fa:	0141                	addi	sp,sp,16
1c00b5fc:	8082                	ret

1c00b5fe <pos_init_stop>:
1c00b5fe:	1141                	addi	sp,sp,-16
1c00b600:	c422                	sw	s0,8(sp)
1c00b602:	1c000437          	lui	s0,0x1c000
1c00b606:	c606                	sw	ra,12(sp)
1c00b608:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b60c:	852ff0ef          	jal	ra,1c00a65e <pos_io_stop>
1c00b610:	405c                	lw	a5,4(s0)
1c00b612:	c791                	beqz	a5,1c00b61e <pos_init_stop+0x20>
1c00b614:	0411                	addi	s0,s0,4
1c00b616:	0411                	addi	s0,s0,4
1c00b618:	9782                	jalr	a5
1c00b61a:	401c                	lw	a5,0(s0)
1c00b61c:	ffed                	bnez	a5,1c00b616 <pos_init_stop+0x18>
1c00b61e:	40b2                	lw	ra,12(sp)
1c00b620:	4422                	lw	s0,8(sp)
1c00b622:	0141                	addi	sp,sp,16
1c00b624:	8082                	ret

1c00b626 <pos_alloc_init>:
1c00b626:	00758793          	addi	a5,a1,7
1c00b62a:	9be1                	andi	a5,a5,-8
1c00b62c:	40b785b3          	sub	a1,a5,a1
1c00b630:	c11c                	sw	a5,0(a0)
1c00b632:	40b605b3          	sub	a1,a2,a1
1c00b636:	00b05663          	blez	a1,1c00b642 <pos_alloc_init+0x1c>
1c00b63a:	99e1                	andi	a1,a1,-8
1c00b63c:	c38c                	sw	a1,0(a5)
1c00b63e:	0007a223          	sw	zero,4(a5)
1c00b642:	8082                	ret

1c00b644 <pos_alloc>:
1c00b644:	411c                	lw	a5,0(a0)
1c00b646:	00758713          	addi	a4,a1,7
1c00b64a:	862a                	mv	a2,a0
1c00b64c:	ff877593          	andi	a1,a4,-8
1c00b650:	4681                	li	a3,0
1c00b652:	e789                	bnez	a5,1c00b65c <pos_alloc+0x18>
1c00b654:	a091                	j	1c00b698 <pos_alloc+0x54>
1c00b656:	86be                	mv	a3,a5
1c00b658:	c505                	beqz	a0,1c00b680 <pos_alloc+0x3c>
1c00b65a:	87aa                	mv	a5,a0
1c00b65c:	4398                	lw	a4,0(a5)
1c00b65e:	43c8                	lw	a0,4(a5)
1c00b660:	feb74be3          	blt	a4,a1,1c00b656 <pos_alloc+0x12>
1c00b664:	00b70f63          	beq	a4,a1,1c00b682 <pos_alloc+0x3e>
1c00b668:	00b78833          	add	a6,a5,a1
1c00b66c:	8f0d                	sub	a4,a4,a1
1c00b66e:	00e82023          	sw	a4,0(a6)
1c00b672:	00a82223          	sw	a0,4(a6)
1c00b676:	ca91                	beqz	a3,1c00b68a <pos_alloc+0x46>
1c00b678:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00b67c:	853e                	mv	a0,a5
1c00b67e:	8082                	ret
1c00b680:	8082                	ret
1c00b682:	ca81                	beqz	a3,1c00b692 <pos_alloc+0x4e>
1c00b684:	c2c8                	sw	a0,4(a3)
1c00b686:	853e                	mv	a0,a5
1c00b688:	8082                	ret
1c00b68a:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00b68e:	853e                	mv	a0,a5
1c00b690:	8082                	ret
1c00b692:	c208                	sw	a0,0(a2)
1c00b694:	853e                	mv	a0,a5
1c00b696:	8082                	ret
1c00b698:	4501                	li	a0,0
1c00b69a:	8082                	ret

1c00b69c <pos_free>:
1c00b69c:	411c                	lw	a5,0(a0)
1c00b69e:	061d                	addi	a2,a2,7
1c00b6a0:	9a61                	andi	a2,a2,-8
1c00b6a2:	c7a1                	beqz	a5,1c00b6ea <pos_free+0x4e>
1c00b6a4:	00b7e563          	bltu	a5,a1,1c00b6ae <pos_free+0x12>
1c00b6a8:	a089                	j	1c00b6ea <pos_free+0x4e>
1c00b6aa:	00b7f563          	bgeu	a5,a1,1c00b6b4 <pos_free+0x18>
1c00b6ae:	873e                	mv	a4,a5
1c00b6b0:	43dc                	lw	a5,4(a5)
1c00b6b2:	ffe5                	bnez	a5,1c00b6aa <pos_free+0xe>
1c00b6b4:	00c586b3          	add	a3,a1,a2
1c00b6b8:	00d78b63          	beq	a5,a3,1c00b6ce <pos_free+0x32>
1c00b6bc:	c190                	sw	a2,0(a1)
1c00b6be:	4314                	lw	a3,0(a4)
1c00b6c0:	c1dc                	sw	a5,4(a1)
1c00b6c2:	00d70533          	add	a0,a4,a3
1c00b6c6:	00a58e63          	beq	a1,a0,1c00b6e2 <pos_free+0x46>
1c00b6ca:	c34c                	sw	a1,4(a4)
1c00b6cc:	8082                	ret
1c00b6ce:	4394                	lw	a3,0(a5)
1c00b6d0:	43dc                	lw	a5,4(a5)
1c00b6d2:	9636                	add	a2,a2,a3
1c00b6d4:	c190                	sw	a2,0(a1)
1c00b6d6:	4314                	lw	a3,0(a4)
1c00b6d8:	c1dc                	sw	a5,4(a1)
1c00b6da:	00d70533          	add	a0,a4,a3
1c00b6de:	fea596e3          	bne	a1,a0,1c00b6ca <pos_free+0x2e>
1c00b6e2:	9636                	add	a2,a2,a3
1c00b6e4:	c310                	sw	a2,0(a4)
1c00b6e6:	c35c                	sw	a5,4(a4)
1c00b6e8:	8082                	ret
1c00b6ea:	00c58733          	add	a4,a1,a2
1c00b6ee:	00e78663          	beq	a5,a4,1c00b6fa <pos_free+0x5e>
1c00b6f2:	c1dc                	sw	a5,4(a1)
1c00b6f4:	c190                	sw	a2,0(a1)
1c00b6f6:	c10c                	sw	a1,0(a0)
1c00b6f8:	8082                	ret
1c00b6fa:	4398                	lw	a4,0(a5)
1c00b6fc:	43dc                	lw	a5,4(a5)
1c00b6fe:	963a                	add	a2,a2,a4
1c00b700:	c1dc                	sw	a5,4(a1)
1c00b702:	c190                	sw	a2,0(a1)
1c00b704:	bfcd                	j	1c00b6f6 <pos_free+0x5a>

1c00b706 <pos_allocs_init>:
1c00b706:	1c0065b7          	lui	a1,0x1c006
1c00b70a:	1141                	addi	sp,sp,-16
1c00b70c:	20858613          	addi	a2,a1,520 # 1c006208 <__l2_priv0_end>
1c00b710:	1c0087b7          	lui	a5,0x1c008
1c00b714:	c606                	sw	ra,12(sp)
1c00b716:	20858593          	addi	a1,a1,520
1c00b71a:	40c78633          	sub	a2,a5,a2
1c00b71e:	04f5d863          	bge	a1,a5,1c00b76e <pos_allocs_init+0x68>
1c00b722:	1c006537          	lui	a0,0x1c006
1c00b726:	1fc50513          	addi	a0,a0,508 # 1c0061fc <pos_alloc_l2>
1c00b72a:	3df5                	jal	1c00b626 <pos_alloc_init>
1c00b72c:	1c00b5b7          	lui	a1,0x1c00b
1c00b730:	7dc58613          	addi	a2,a1,2012 # 1c00b7dc <__l2_priv1_end>
1c00b734:	1c0107b7          	lui	a5,0x1c010
1c00b738:	7dc58593          	addi	a1,a1,2012
1c00b73c:	40c78633          	sub	a2,a5,a2
1c00b740:	02f5da63          	bge	a1,a5,1c00b774 <pos_allocs_init+0x6e>
1c00b744:	1c006537          	lui	a0,0x1c006
1c00b748:	20050513          	addi	a0,a0,512 # 1c006200 <pos_alloc_l2+0x4>
1c00b74c:	3de9                	jal	1c00b626 <pos_alloc_init>
1c00b74e:	40b2                	lw	ra,12(sp)
1c00b750:	1c0105b7          	lui	a1,0x1c010
1c00b754:	00058793          	mv	a5,a1
1c00b758:	1c080637          	lui	a2,0x1c080
1c00b75c:	1c006537          	lui	a0,0x1c006
1c00b760:	8e1d                	sub	a2,a2,a5
1c00b762:	00058593          	mv	a1,a1
1c00b766:	20450513          	addi	a0,a0,516 # 1c006204 <pos_alloc_l2+0x8>
1c00b76a:	0141                	addi	sp,sp,16
1c00b76c:	bd6d                	j	1c00b626 <pos_alloc_init>
1c00b76e:	4581                	li	a1,0
1c00b770:	4601                	li	a2,0
1c00b772:	bf45                	j	1c00b722 <pos_allocs_init+0x1c>
1c00b774:	4581                	li	a1,0
1c00b776:	4601                	li	a2,0
1c00b778:	b7f1                	j	1c00b744 <pos_allocs_init+0x3e>

1c00b77a <pi_l2_malloc>:
1c00b77a:	85aa                	mv	a1,a0
1c00b77c:	1c006537          	lui	a0,0x1c006
1c00b780:	1fc50513          	addi	a0,a0,508 # 1c0061fc <pos_alloc_l2>
1c00b784:	b5c1                	j	1c00b644 <pos_alloc>

1c00b786 <pi_l2_free>:
1c00b786:	862e                	mv	a2,a1
1c00b788:	85aa                	mv	a1,a0
1c00b78a:	1c006537          	lui	a0,0x1c006
1c00b78e:	1fc50513          	addi	a0,a0,508 # 1c0061fc <pos_alloc_l2>
1c00b792:	b729                	j	1c00b69c <pos_free>

1c00b794 <__rt_handle_illegal_instr>:
1c00b794:	8082                	ret

1c00b796 <pos_irq_init>:
1c00b796:	1a10a737          	lui	a4,0x1a10a
1c00b79a:	56fd                	li	a3,-1
1c00b79c:	f14027f3          	csrr	a5,mhartid
1c00b7a0:	8795                	srai	a5,a5,0x5
1c00b7a2:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b7a6:	03f7f793          	andi	a5,a5,63
1c00b7aa:	477d                	li	a4,31
1c00b7ac:	00e78363          	beq	a5,a4,1c00b7b2 <pos_irq_init+0x1c>
1c00b7b0:	8082                	ret
1c00b7b2:	1c0087b7          	lui	a5,0x1c008
1c00b7b6:	00078793          	mv	a5,a5
1c00b7ba:	0017e793          	ori	a5,a5,1
1c00b7be:	30579073          	csrw	mtvec,a5
1c00b7c2:	8082                	ret

1c00b7c4 <pos_soc_event_init>:
1c00b7c4:	1a1067b7          	lui	a5,0x1a106
1c00b7c8:	577d                	li	a4,-1
1c00b7ca:	c3d8                	sw	a4,4(a5)
1c00b7cc:	c798                	sw	a4,8(a5)
1c00b7ce:	c7d8                	sw	a4,12(a5)
1c00b7d0:	cb98                	sw	a4,16(a5)
1c00b7d2:	cbd8                	sw	a4,20(a5)
1c00b7d4:	cf98                	sw	a4,24(a5)
1c00b7d6:	cfd8                	sw	a4,28(a5)
1c00b7d8:	d398                	sw	a4,32(a5)
1c00b7da:	8082                	ret
