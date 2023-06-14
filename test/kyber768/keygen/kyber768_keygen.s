riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber768/keygen/build/keygen/keygen

/home/alessandra.dolmeta/pqc_riscv/test/kyber768/keygen/build/keygen/keygen:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	6aa0306f          	j	1c00b6aa <__rt_handle_illegal_instr>
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
1c008084:	6260306f          	j	1c00b6aa <__rt_handle_illegal_instr>

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
1c0080c4:	1a028293          	addi	t0,t0,416 # 1c006260 <in>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	21030313          	addi	t1,t1,528 # 1c0062d8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	18610113          	addi	sp,sp,390 # 1c006260 <in>
1c0080e2:	3fc030ef          	jal	ra,1c00b4de <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	418030ef          	jal	ra,1c00b514 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	45a020ef          	jal	ra,1c00a55c <exit>
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
1c008172:	406020ef          	jal	ra,1c00a578 <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	3ac0206f          	j	1c00a532 <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	1c000537          	lui	a0,0x1c000
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	7e912223          	sw	s1,2020(sp)
1c00819e:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0081a2:	9e010113          	addi	sp,sp,-1568
1c0081a6:	310020ef          	jal	ra,1c00a4b6 <puts>
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
1c0081ca:	16f010ef          	jal	ra,1c009b38 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c0081ce:	1c000537          	lui	a0,0x1c000
1c0081d2:	13450513          	addi	a0,a0,308 # 1c000134 <__clz_tab+0x118>
1c0081d6:	2e0020ef          	jal	ra,1c00a4b6 <puts>
1c0081da:	1c000537          	lui	a0,0x1c000
1c0081de:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c0081e2:	2d4020ef          	jal	ra,1c00a4b6 <puts>
1c0081e6:	4a000593          	li	a1,1184
1c0081ea:	8522                	mv	a0,s0
1c0081ec:	37a5                	jal	1c008154 <printbytes>
1c0081ee:	1c000537          	lui	a0,0x1c000
1c0081f2:	14850513          	addi	a0,a0,328 # 1c000148 <__clz_tab+0x12c>
1c0081f6:	2c0020ef          	jal	ra,1c00a4b6 <puts>
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
1c008292:	2b840413          	addi	s0,s0,696 # 1c0062b8 <pos_fll_freq>
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
1c0082be:	2b068693          	addi	a3,a3,688 # 1c0062b0 <pos_fll_is_on>
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
1c0082f8:	2b068693          	addi	a3,a3,688 # 1c0062b0 <pos_fll_is_on>
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
1c008342:	2b878793          	addi	a5,a5,696 # 1c0062b8 <pos_fll_freq>
1c008346:	0007a023          	sw	zero,0(a5)
1c00834a:	0007a223          	sw	zero,4(a5)
1c00834e:	1c0067b7          	lui	a5,0x1c006
1c008352:	2a079823          	sh	zero,688(a5) # 1c0062b0 <pos_fll_is_on>
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
1c00836a:	2c040413          	addi	s0,s0,704 # 1c0062c0 <pos_freq_domains>
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
1c008736:	75b020ef          	jal	ra,1c00b690 <pi_l2_malloc>
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
1c008908:	455010ef          	jal	ra,1c00a55c <exit>

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
1c008a06:	4970206f          	j	1c00b69c <pi_l2_free>

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
1c008a34:	45d020ef          	jal	ra,1c00b690 <pi_l2_malloc>
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
1c008b4e:	34f0206f          	j	1c00b69c <pi_l2_free>
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
1c008c88:	0d5010ef          	jal	ra,1c00a55c <exit>

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
1c009774:	2df000ef          	jal	ra,1c00a252 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
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
1c00984e:	205000ef          	jal	ra,1c00a252 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
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
1c0098b0:	7379                	lui	t1,0xffffe
1c0098b2:	b7010113          	addi	sp,sp,-1168
1c0098b6:	48112623          	sw	ra,1164(sp)
1c0098ba:	48812423          	sw	s0,1160(sp)
1c0098be:	48912223          	sw	s1,1156(sp)
1c0098c2:	49212023          	sw	s2,1152(sp)
1c0098c6:	47312e23          	sw	s3,1148(sp)
1c0098ca:	47412c23          	sw	s4,1144(sp)
1c0098ce:	47512a23          	sw	s5,1140(sp)
1c0098d2:	47612823          	sw	s6,1136(sp)
1c0098d6:	47712623          	sw	s7,1132(sp)
1c0098da:	47812423          	sw	s8,1128(sp)
1c0098de:	47912223          	sw	s9,1124(sp)
1c0098e2:	47a12023          	sw	s10,1120(sp)
1c0098e6:	45b12e23          	sw	s11,1116(sp)
1c0098ea:	6a09                	lui	s4,0x2
1c0098ec:	911a                	add	sp,sp,t1
1c0098ee:	7979                	lui	s2,0xffffe
1c0098f0:	0818                	addi	a4,sp,16
1c0098f2:	440a0793          	addi	a5,s4,1088 # 2440 <__CTOR_LIST__-0x1bffdbc4>
1c0098f6:	97ba                	add	a5,a5,a4
1c0098f8:	bc090493          	addi	s1,s2,-1088 # ffffdbc0 <__l2_shared_end+0xe3fedbc0>
1c0098fc:	94be                	add	s1,s1,a5
1c0098fe:	842a                	mv	s0,a0
1c009900:	8b2e                	mv	s6,a1
1c009902:	8526                	mv	a0,s1
1c009904:	02000593          	li	a1,32
1c009908:	2595                	jal	1c009f6c <randombytes>
1c00990a:	85a6                	mv	a1,s1
1c00990c:	8526                	mv	a0,s1
1c00990e:	02000613          	li	a2,32
1c009912:	e5aff0ef          	jal	ra,1c008f6c <sha3_512>
1c009916:	0818                	addi	a4,sp,16
1c009918:	79fd                	lui	s3,0xfffff
1c00991a:	440a0793          	addi	a5,s4,1088
1c00991e:	97ba                	add	a5,a5,a4
1c009920:	e0098a93          	addi	s5,s3,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c009924:	9abe                	add	s5,s5,a5
1c009926:	85a6                	mv	a1,s1
1c009928:	8556                	mv	a0,s5
1c00992a:	4601                	li	a2,0
1c00992c:	33c1                	jal	1c0096ec <PQCLEAN_KYBER768_CLEAN_gen_matrix>
1c00992e:	0818                	addi	a4,sp,16
1c009930:	440a0793          	addi	a5,s4,1088
1c009934:	97ba                	add	a5,a5,a4
1c009936:	80098993          	addi	s3,s3,-2048
1c00993a:	99be                	add	s3,s3,a5
1c00993c:	02048493          	addi	s1,s1,32 # ff0020 <__CTOR_LIST__-0x1b00ffe4>
1c009940:	85a6                	mv	a1,s1
1c009942:	854e                	mv	a0,s3
1c009944:	4601                	li	a2,0
1c009946:	2e95                	jal	1c009cba <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009948:	85a6                	mv	a1,s1
1c00994a:	20098513          	addi	a0,s3,512
1c00994e:	4605                	li	a2,1
1c009950:	26ad                	jal	1c009cba <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009952:	85a6                	mv	a1,s1
1c009954:	40098513          	addi	a0,s3,1024
1c009958:	4609                	li	a2,2
1c00995a:	2685                	jal	1c009cba <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00995c:	8c52                	mv	s8,s4
1c00995e:	0818                	addi	a4,sp,16
1c009960:	440c0793          	addi	a5,s8,1088 # ff0440 <__CTOR_LIST__-0x1b00fbc4>
1c009964:	97ba                	add	a5,a5,a4
1c009966:	c0090a13          	addi	s4,s2,-1024
1c00996a:	9a3e                	add	s4,s4,a5
1c00996c:	85a6                	mv	a1,s1
1c00996e:	8552                	mv	a0,s4
1c009970:	460d                	li	a2,3
1c009972:	26a1                	jal	1c009cba <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009974:	85a6                	mv	a1,s1
1c009976:	200a0513          	addi	a0,s4,512
1c00997a:	4611                	li	a2,4
1c00997c:	2e3d                	jal	1c009cba <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00997e:	85a6                	mv	a1,s1
1c009980:	4615                	li	a2,5
1c009982:	400a0513          	addi	a0,s4,1024
1c009986:	2e15                	jal	1c009cba <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009988:	854e                	mv	a0,s3
1c00998a:	2985                	jal	1c009dfa <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00998c:	8552                	mv	a0,s4
1c00998e:	21b5                	jal	1c009dfa <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c009990:	0818                	addi	a4,sp,16
1c009992:	440c0793          	addi	a5,s8,1088
1c009996:	97ba                	add	a5,a5,a4
1c009998:	20090493          	addi	s1,s2,512
1c00999c:	94be                	add	s1,s1,a5
1c00999e:	864e                	mv	a2,s3
1c0099a0:	85d6                	mv	a1,s5
1c0099a2:	8526                	mv	a0,s1
1c0099a4:	2339                	jal	1c009eb2 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c0099a6:	8526                	mv	a0,s1
1c0099a8:	2655                	jal	1c009d4c <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c0099aa:	20048b93          	addi	s7,s1,512
1c0099ae:	864e                	mv	a2,s3
1c0099b0:	600a8593          	addi	a1,s5,1536
1c0099b4:	855e                	mv	a0,s7
1c0099b6:	29f5                	jal	1c009eb2 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c0099b8:	855e                	mv	a0,s7
1c0099ba:	2e49                	jal	1c009d4c <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c0099bc:	e40c0793          	addi	a5,s8,-448
1c0099c0:	0818                	addi	a4,sp,16
1c0099c2:	40048a93          	addi	s5,s1,1024
1c0099c6:	00f705b3          	add	a1,a4,a5
1c0099ca:	864e                	mv	a2,s3
1c0099cc:	8556                	mv	a0,s5
1c0099ce:	21d5                	jal	1c009eb2 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c0099d0:	8556                	mv	a0,s5
1c0099d2:	2ead                	jal	1c009d4c <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c0099d4:	8652                	mv	a2,s4
1c0099d6:	85a6                	mv	a1,s1
1c0099d8:	8526                	mv	a0,s1
1c0099da:	2b89                	jal	1c009f2c <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c0099dc:	8526                	mv	a0,s1
1c0099de:	2b0d                	jal	1c009f10 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c0099e0:	85ce                	mv	a1,s3
1c0099e2:	855a                	mv	a0,s6
1c0099e4:	26f5                	jal	1c009dd0 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c0099e6:	85a6                	mv	a1,s1
1c0099e8:	8522                	mv	a0,s0
1c0099ea:	26dd                	jal	1c009dd0 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c0099ec:	0818                	addi	a4,sp,16
1c0099ee:	440c0793          	addi	a5,s8,1088
1c0099f2:	97ba                	add	a5,a5,a4
1c0099f4:	97ca                	add	a5,a5,s2
1c0099f6:	c63e                	sw	a5,12(sp)
1c0099f8:	4732                	lw	a4,12(sp)
1c0099fa:	bc47a803          	lw	a6,-1084(a5)
1c0099fe:	bc87a503          	lw	a0,-1080(a5)
1c009a02:	bcc7a583          	lw	a1,-1076(a5)
1c009a06:	bd07a603          	lw	a2,-1072(a5)
1c009a0a:	bd47a683          	lw	a3,-1068(a5)
1c009a0e:	bc07a883          	lw	a7,-1088(a5)
1c009a12:	bd872703          	lw	a4,-1064(a4)
1c009a16:	bdc7a783          	lw	a5,-1060(a5)
1c009a1a:	0088dd93          	srli	s11,a7,0x8
1c009a1e:	0108dd13          	srli	s10,a7,0x10
1c009a22:	0188dc93          	srli	s9,a7,0x18
1c009a26:	00885c13          	srli	s8,a6,0x8
1c009a2a:	01085b93          	srli	s7,a6,0x10
1c009a2e:	01885b13          	srli	s6,a6,0x18
1c009a32:	00855a93          	srli	s5,a0,0x8
1c009a36:	01055a13          	srli	s4,a0,0x10
1c009a3a:	01855993          	srli	s3,a0,0x18
1c009a3e:	0085d913          	srli	s2,a1,0x8
1c009a42:	0105d493          	srli	s1,a1,0x10
1c009a46:	0185d393          	srli	t2,a1,0x18
1c009a4a:	00865293          	srli	t0,a2,0x8
1c009a4e:	01065f93          	srli	t6,a2,0x10
1c009a52:	01865f13          	srli	t5,a2,0x18
1c009a56:	0086de93          	srli	t4,a3,0x8
1c009a5a:	0186d313          	srli	t1,a3,0x18
1c009a5e:	49140023          	sb	a7,1152(s0)
1c009a62:	49b400a3          	sb	s11,1153(s0)
1c009a66:	49a40123          	sb	s10,1154(s0)
1c009a6a:	499401a3          	sb	s9,1155(s0)
1c009a6e:	49040223          	sb	a6,1156(s0)
1c009a72:	498402a3          	sb	s8,1157(s0)
1c009a76:	49740323          	sb	s7,1158(s0)
1c009a7a:	496403a3          	sb	s6,1159(s0)
1c009a7e:	48a40423          	sb	a0,1160(s0)
1c009a82:	495404a3          	sb	s5,1161(s0)
1c009a86:	49440523          	sb	s4,1162(s0)
1c009a8a:	493405a3          	sb	s3,1163(s0)
1c009a8e:	48b40623          	sb	a1,1164(s0)
1c009a92:	492406a3          	sb	s2,1165(s0)
1c009a96:	48940723          	sb	s1,1166(s0)
1c009a9a:	48c40823          	sb	a2,1168(s0)
1c009a9e:	48d40a23          	sb	a3,1172(s0)
1c009aa2:	0106de13          	srli	t3,a3,0x10
1c009aa6:	487407a3          	sb	t2,1167(s0)
1c009aaa:	485408a3          	sb	t0,1169(s0)
1c009aae:	49f40923          	sb	t6,1170(s0)
1c009ab2:	49e409a3          	sb	t5,1171(s0)
1c009ab6:	49d40aa3          	sb	t4,1173(s0)
1c009aba:	00875893          	srli	a7,a4,0x8
1c009abe:	01075813          	srli	a6,a4,0x10
1c009ac2:	01875513          	srli	a0,a4,0x18
1c009ac6:	0087d593          	srli	a1,a5,0x8
1c009aca:	0107d613          	srli	a2,a5,0x10
1c009ace:	0187d693          	srli	a3,a5,0x18
1c009ad2:	49c40b23          	sb	t3,1174(s0)
1c009ad6:	48640ba3          	sb	t1,1175(s0)
1c009ada:	48e40c23          	sb	a4,1176(s0)
1c009ade:	49140ca3          	sb	a7,1177(s0)
1c009ae2:	49040d23          	sb	a6,1178(s0)
1c009ae6:	48a40da3          	sb	a0,1179(s0)
1c009aea:	48f40e23          	sb	a5,1180(s0)
1c009aee:	48b40ea3          	sb	a1,1181(s0)
1c009af2:	48c40f23          	sb	a2,1182(s0)
1c009af6:	48d40fa3          	sb	a3,1183(s0)
1c009afa:	6309                	lui	t1,0x2
1c009afc:	911a                	add	sp,sp,t1
1c009afe:	48c12083          	lw	ra,1164(sp)
1c009b02:	48812403          	lw	s0,1160(sp)
1c009b06:	48412483          	lw	s1,1156(sp)
1c009b0a:	48012903          	lw	s2,1152(sp)
1c009b0e:	47c12983          	lw	s3,1148(sp)
1c009b12:	47812a03          	lw	s4,1144(sp)
1c009b16:	47412a83          	lw	s5,1140(sp)
1c009b1a:	47012b03          	lw	s6,1136(sp)
1c009b1e:	46c12b83          	lw	s7,1132(sp)
1c009b22:	46812c03          	lw	s8,1128(sp)
1c009b26:	46412c83          	lw	s9,1124(sp)
1c009b2a:	46012d03          	lw	s10,1120(sp)
1c009b2e:	45c12d83          	lw	s11,1116(sp)
1c009b32:	49010113          	addi	sp,sp,1168
1c009b36:	8082                	ret

1c009b38 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c009b38:	1141                	addi	sp,sp,-16
1c009b3a:	c422                	sw	s0,8(sp)
1c009b3c:	c226                	sw	s1,4(sp)
1c009b3e:	842a                	mv	s0,a0
1c009b40:	84ae                	mv	s1,a1
1c009b42:	c606                	sw	ra,12(sp)
1c009b44:	c04a                	sw	s2,0(sp)
1c009b46:	33ad                	jal	1c0098b0 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c009b48:	48048713          	addi	a4,s1,1152
1c009b4c:	00440793          	addi	a5,s0,4
1c009b50:	00f77663          	bgeu	a4,a5,1c009b5c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x24>
1c009b54:	48448793          	addi	a5,s1,1156
1c009b58:	06f46c63          	bltu	s0,a5,1c009bd0 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x98>
1c009b5c:	86a2                	mv	a3,s0
1c009b5e:	4a040313          	addi	t1,s0,1184
1c009b62:	0016c803          	lbu	a6,1(a3)
1c009b66:	0006c883          	lbu	a7,0(a3)
1c009b6a:	0026c603          	lbu	a2,2(a3)
1c009b6e:	0036c783          	lbu	a5,3(a3)
1c009b72:	0822                	slli	a6,a6,0x8
1c009b74:	01186833          	or	a6,a6,a7
1c009b78:	0642                	slli	a2,a2,0x10
1c009b7a:	01066633          	or	a2,a2,a6
1c009b7e:	07e2                	slli	a5,a5,0x18
1c009b80:	8fd1                	or	a5,a5,a2
1c009b82:	0087d893          	srli	a7,a5,0x8
1c009b86:	0107d813          	srli	a6,a5,0x10
1c009b8a:	83e1                	srli	a5,a5,0x18
1c009b8c:	00c70023          	sb	a2,0(a4)
1c009b90:	011700a3          	sb	a7,1(a4)
1c009b94:	01070123          	sb	a6,2(a4)
1c009b98:	00f701a3          	sb	a5,3(a4)
1c009b9c:	0691                	addi	a3,a3,4
1c009b9e:	0711                	addi	a4,a4,4
1c009ba0:	fc6691e3          	bne	a3,t1,1c009b62 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x2a>
1c009ba4:	6905                	lui	s2,0x1
1c009ba6:	92090513          	addi	a0,s2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c009baa:	85a2                	mv	a1,s0
1c009bac:	9526                	add	a0,a0,s1
1c009bae:	4a000613          	li	a2,1184
1c009bb2:	8daff0ef          	jal	ra,1c008c8c <sha3_256>
1c009bb6:	94090513          	addi	a0,s2,-1728
1c009bba:	9526                	add	a0,a0,s1
1c009bbc:	02000593          	li	a1,32
1c009bc0:	2675                	jal	1c009f6c <randombytes>
1c009bc2:	40b2                	lw	ra,12(sp)
1c009bc4:	4422                	lw	s0,8(sp)
1c009bc6:	4492                	lw	s1,4(sp)
1c009bc8:	4902                	lw	s2,0(sp)
1c009bca:	4501                	li	a0,0
1c009bcc:	0141                	addi	sp,sp,16
1c009bce:	8082                	ret
1c009bd0:	87a2                	mv	a5,s0
1c009bd2:	4a040613          	addi	a2,s0,1184
1c009bd6:	0007c683          	lbu	a3,0(a5)
1c009bda:	0785                	addi	a5,a5,1
1c009bdc:	0705                	addi	a4,a4,1
1c009bde:	fed70fa3          	sb	a3,-1(a4)
1c009be2:	fec79ae3          	bne	a5,a2,1c009bd6 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x9e>
1c009be6:	bf7d                	j	1c009ba4 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6c>

1c009be8 <PQCLEAN_KYBER768_CLEAN_basemul>:
1c009be8:	00261783          	lh	a5,2(a2)
1c009bec:	00259703          	lh	a4,2(a1)
1c009bf0:	1101                	addi	sp,sp,-32
1c009bf2:	cc22                	sw	s0,24(sp)
1c009bf4:	842a                	mv	s0,a0
1c009bf6:	02f70533          	mul	a0,a4,a5
1c009bfa:	ce06                	sw	ra,28(sp)
1c009bfc:	ca26                	sw	s1,20(sp)
1c009bfe:	c84a                	sw	s2,16(sp)
1c009c00:	c64e                	sw	s3,12(sp)
1c009c02:	892e                	mv	s2,a1
1c009c04:	84b2                	mv	s1,a2
1c009c06:	89b6                	mv	s3,a3
1c009c08:	2529                	jal	1c00a212 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c0a:	87aa                	mv	a5,a0
1c009c0c:	03350533          	mul	a0,a0,s3
1c009c10:	00f41023          	sh	a5,0(s0)
1c009c14:	2bfd                	jal	1c00a212 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c16:	00a41023          	sh	a0,0(s0)
1c009c1a:	00049783          	lh	a5,0(s1)
1c009c1e:	00091503          	lh	a0,0(s2)
1c009c22:	02f50533          	mul	a0,a0,a5
1c009c26:	23f5                	jal	1c00a212 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c28:	00045783          	lhu	a5,0(s0)
1c009c2c:	953e                	add	a0,a0,a5
1c009c2e:	00a41023          	sh	a0,0(s0)
1c009c32:	00249783          	lh	a5,2(s1)
1c009c36:	00091503          	lh	a0,0(s2)
1c009c3a:	02f50533          	mul	a0,a0,a5
1c009c3e:	2bd1                	jal	1c00a212 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c40:	00a41123          	sh	a0,2(s0)
1c009c44:	00049783          	lh	a5,0(s1)
1c009c48:	00291503          	lh	a0,2(s2)
1c009c4c:	02f50533          	mul	a0,a0,a5
1c009c50:	23c9                	jal	1c00a212 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009c52:	00245783          	lhu	a5,2(s0)
1c009c56:	40f2                	lw	ra,28(sp)
1c009c58:	44d2                	lw	s1,20(sp)
1c009c5a:	953e                	add	a0,a0,a5
1c009c5c:	00a41123          	sh	a0,2(s0)
1c009c60:	4462                	lw	s0,24(sp)
1c009c62:	4942                	lw	s2,16(sp)
1c009c64:	49b2                	lw	s3,12(sp)
1c009c66:	6105                	addi	sp,sp,32
1c009c68:	8082                	ret

1c009c6a <PQCLEAN_KYBER768_CLEAN_poly_tobytes>:
1c009c6a:	6805                	lui	a6,0x1
1c009c6c:	18050893          	addi	a7,a0,384 # 1000180 <__CTOR_LIST__-0x1afffe84>
1c009c70:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009c74:	00059703          	lh	a4,0(a1)
1c009c78:	00259783          	lh	a5,2(a1)
1c009c7c:	050d                	addi	a0,a0,3
1c009c7e:	40f75613          	srai	a2,a4,0xf
1c009c82:	40f7d693          	srai	a3,a5,0xf
1c009c86:	01067633          	and	a2,a2,a6
1c009c8a:	0106f6b3          	and	a3,a3,a6
1c009c8e:	9732                	add	a4,a4,a2
1c009c90:	97b6                	add	a5,a5,a3
1c009c92:	0742                	slli	a4,a4,0x10
1c009c94:	07c2                	slli	a5,a5,0x10
1c009c96:	8341                	srli	a4,a4,0x10
1c009c98:	83c1                	srli	a5,a5,0x10
1c009c9a:	00479613          	slli	a2,a5,0x4
1c009c9e:	00875693          	srli	a3,a4,0x8
1c009ca2:	8ed1                	or	a3,a3,a2
1c009ca4:	8391                	srli	a5,a5,0x4
1c009ca6:	fee50ea3          	sb	a4,-3(a0)
1c009caa:	fed50f23          	sb	a3,-2(a0)
1c009cae:	fef50fa3          	sb	a5,-1(a0)
1c009cb2:	0591                	addi	a1,a1,4
1c009cb4:	fca890e3          	bne	a7,a0,1c009c74 <PQCLEAN_KYBER768_CLEAN_poly_tobytes+0xa>
1c009cb8:	8082                	ret

1c009cba <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c009cba:	7175                	addi	sp,sp,-144
1c009cbc:	c522                	sw	s0,136(sp)
1c009cbe:	86b2                	mv	a3,a2
1c009cc0:	842a                	mv	s0,a0
1c009cc2:	862e                	mv	a2,a1
1c009cc4:	850a                	mv	a0,sp
1c009cc6:	08000593          	li	a1,128
1c009cca:	c706                	sw	ra,140(sp)
1c009ccc:	2b7d                	jal	1c00a28a <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c009cce:	858a                	mv	a1,sp
1c009cd0:	8522                	mv	a0,s0
1c009cd2:	f70fe0ef          	jal	ra,1c008442 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c009cd6:	40ba                	lw	ra,140(sp)
1c009cd8:	442a                	lw	s0,136(sp)
1c009cda:	6149                	addi	sp,sp,144
1c009cdc:	8082                	ret

1c009cde <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c009cde:	1101                	addi	sp,sp,-32
1c009ce0:	c452                	sw	s4,8(sp)
1c009ce2:	c256                	sw	s5,4(sp)
1c009ce4:	1c000a37          	lui	s4,0x1c000
1c009ce8:	1c000ab7          	lui	s5,0x1c000
1c009cec:	ca26                	sw	s1,20(sp)
1c009cee:	c84a                	sw	s2,16(sp)
1c009cf0:	c64e                	sw	s3,12(sp)
1c009cf2:	ce06                	sw	ra,28(sp)
1c009cf4:	cc22                	sw	s0,24(sp)
1c009cf6:	1d0a0a13          	addi	s4,s4,464 # 1c0001d0 <PQCLEAN_KYBER768_CLEAN_zetas+0x80>
1c009cfa:	00450993          	addi	s3,a0,4
1c009cfe:	00458913          	addi	s2,a1,4
1c009d02:	00460493          	addi	s1,a2,4
1c009d06:	250a8a93          	addi	s5,s5,592 # 1c000250 <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c009d0a:	000a1403          	lh	s0,0(s4)
1c009d0e:	ffc48613          	addi	a2,s1,-4
1c009d12:	ffc90593          	addi	a1,s2,-4
1c009d16:	ffc98513          	addi	a0,s3,-4
1c009d1a:	86a2                	mv	a3,s0
1c009d1c:	35f1                	jal	1c009be8 <PQCLEAN_KYBER768_CLEAN_basemul>
1c009d1e:	408006b3          	neg	a3,s0
1c009d22:	06c2                	slli	a3,a3,0x10
1c009d24:	8626                	mv	a2,s1
1c009d26:	85ca                	mv	a1,s2
1c009d28:	854e                	mv	a0,s3
1c009d2a:	86c1                	srai	a3,a3,0x10
1c009d2c:	0a09                	addi	s4,s4,2
1c009d2e:	3d6d                	jal	1c009be8 <PQCLEAN_KYBER768_CLEAN_basemul>
1c009d30:	09a1                	addi	s3,s3,8
1c009d32:	0921                	addi	s2,s2,8
1c009d34:	04a1                	addi	s1,s1,8
1c009d36:	fd4a9ae3          	bne	s5,s4,1c009d0a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x2c>
1c009d3a:	40f2                	lw	ra,28(sp)
1c009d3c:	4462                	lw	s0,24(sp)
1c009d3e:	44d2                	lw	s1,20(sp)
1c009d40:	4942                	lw	s2,16(sp)
1c009d42:	49b2                	lw	s3,12(sp)
1c009d44:	4a22                	lw	s4,8(sp)
1c009d46:	4a92                	lw	s5,4(sp)
1c009d48:	6105                	addi	sp,sp,32
1c009d4a:	8082                	ret

1c009d4c <PQCLEAN_KYBER768_CLEAN_poly_tomont>:
1c009d4c:	1141                	addi	sp,sp,-16
1c009d4e:	c422                	sw	s0,8(sp)
1c009d50:	c226                	sw	s1,4(sp)
1c009d52:	c04a                	sw	s2,0(sp)
1c009d54:	c606                	sw	ra,12(sp)
1c009d56:	842a                	mv	s0,a0
1c009d58:	20050913          	addi	s2,a0,512
1c009d5c:	54900493          	li	s1,1353
1c009d60:	00041503          	lh	a0,0(s0)
1c009d64:	0409                	addi	s0,s0,2
1c009d66:	02950533          	mul	a0,a0,s1
1c009d6a:	2165                	jal	1c00a212 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009d6c:	fea41f23          	sh	a0,-2(s0)
1c009d70:	ff2418e3          	bne	s0,s2,1c009d60 <PQCLEAN_KYBER768_CLEAN_poly_tomont+0x14>
1c009d74:	40b2                	lw	ra,12(sp)
1c009d76:	4422                	lw	s0,8(sp)
1c009d78:	4492                	lw	s1,4(sp)
1c009d7a:	4902                	lw	s2,0(sp)
1c009d7c:	0141                	addi	sp,sp,16
1c009d7e:	8082                	ret

1c009d80 <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c009d80:	1141                	addi	sp,sp,-16
1c009d82:	c422                	sw	s0,8(sp)
1c009d84:	c226                	sw	s1,4(sp)
1c009d86:	c606                	sw	ra,12(sp)
1c009d88:	842a                	mv	s0,a0
1c009d8a:	20050493          	addi	s1,a0,512
1c009d8e:	00041503          	lh	a0,0(s0)
1c009d92:	0409                	addi	s0,s0,2
1c009d94:	2969                	jal	1c00a22e <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c009d96:	fea41f23          	sh	a0,-2(s0)
1c009d9a:	fe941ae3          	bne	s0,s1,1c009d8e <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c009d9e:	40b2                	lw	ra,12(sp)
1c009da0:	4422                	lw	s0,8(sp)
1c009da2:	4492                	lw	s1,4(sp)
1c009da4:	0141                	addi	sp,sp,16
1c009da6:	8082                	ret

1c009da8 <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c009da8:	4781                	li	a5,0
1c009daa:	20000893          	li	a7,512
1c009dae:	00f606b3          	add	a3,a2,a5
1c009db2:	00f58733          	add	a4,a1,a5
1c009db6:	0006d803          	lhu	a6,0(a3)
1c009dba:	00075703          	lhu	a4,0(a4)
1c009dbe:	00f506b3          	add	a3,a0,a5
1c009dc2:	0789                	addi	a5,a5,2
1c009dc4:	9742                	add	a4,a4,a6
1c009dc6:	00e69023          	sh	a4,0(a3)
1c009dca:	ff1792e3          	bne	a5,a7,1c009dae <PQCLEAN_KYBER768_CLEAN_poly_add+0x6>
1c009dce:	8082                	ret

1c009dd0 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>:
1c009dd0:	1141                	addi	sp,sp,-16
1c009dd2:	c606                	sw	ra,12(sp)
1c009dd4:	c422                	sw	s0,8(sp)
1c009dd6:	c226                	sw	s1,4(sp)
1c009dd8:	842a                	mv	s0,a0
1c009dda:	84ae                	mv	s1,a1
1c009ddc:	3579                	jal	1c009c6a <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009dde:	20048593          	addi	a1,s1,512
1c009de2:	18040513          	addi	a0,s0,384
1c009de6:	3551                	jal	1c009c6a <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009de8:	30040513          	addi	a0,s0,768
1c009dec:	4422                	lw	s0,8(sp)
1c009dee:	40b2                	lw	ra,12(sp)
1c009df0:	40048593          	addi	a1,s1,1024
1c009df4:	4492                	lw	s1,4(sp)
1c009df6:	0141                	addi	sp,sp,16
1c009df8:	bd8d                	j	1c009c6a <PQCLEAN_KYBER768_CLEAN_poly_tobytes>

1c009dfa <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c009dfa:	9e010113          	addi	sp,sp,-1568
1c009dfe:	60912a23          	sw	s1,1556(sp)
1c009e02:	64c1                	lui	s1,0x10
1c009e04:	60812c23          	sw	s0,1560(sp)
1c009e08:	61212823          	sw	s2,1552(sp)
1c009e0c:	61312623          	sw	s3,1548(sp)
1c009e10:	61412423          	sw	s4,1544(sp)
1c009e14:	60112e23          	sw	ra,1564(sp)
1c009e18:	8a2a                	mv	s4,a0
1c009e1a:	60050413          	addi	s0,a0,1536
1c009e1e:	40010993          	addi	s3,sp,1024
1c009e22:	14fd                	addi	s1,s1,-1
1c009e24:	10000913          	li	s2,256
1c009e28:	20000613          	li	a2,512
1c009e2c:	85d2                	mv	a1,s4
1c009e2e:	854e                	mv	a0,s3
1c009e30:	296d                	jal	1c00a2ea <memcpy>
1c009e32:	864e                	mv	a2,s3
1c009e34:	4681                	li	a3,0
1c009e36:	00061703          	lh	a4,0(a2)
1c009e3a:	00261583          	lh	a1,2(a2)
1c009e3e:	4016d793          	srai	a5,a3,0x1
1c009e42:	078a                	slli	a5,a5,0x2
1c009e44:	0742                	slli	a4,a4,0x10
1c009e46:	8de5                	and	a1,a1,s1
1c009e48:	60010513          	addi	a0,sp,1536
1c009e4c:	97aa                	add	a5,a5,a0
1c009e4e:	8f4d                	or	a4,a4,a1
1c009e50:	a0e7a023          	sw	a4,-1536(a5)
1c009e54:	0689                	addi	a3,a3,2
1c009e56:	0611                	addi	a2,a2,4
1c009e58:	fd269fe3          	bne	a3,s2,1c009e36 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x3c>
1c009e5c:	040c                	addi	a1,sp,512
1c009e5e:	850a                	mv	a0,sp
1c009e60:	d86fe0ef          	jal	ra,1c0083e6 <KYBER_poly_ntt>
1c009e64:	0418                	addi	a4,sp,512
1c009e66:	87d2                	mv	a5,s4
1c009e68:	4310                	lw	a2,0(a4)
1c009e6a:	4354                	lw	a3,4(a4)
1c009e6c:	0721                	addi	a4,a4,8
1c009e6e:	01065813          	srli	a6,a2,0x10
1c009e72:	0106d593          	srli	a1,a3,0x10
1c009e76:	01079023          	sh	a6,0(a5)
1c009e7a:	00b79123          	sh	a1,2(a5)
1c009e7e:	00c79223          	sh	a2,4(a5)
1c009e82:	00d79323          	sh	a3,6(a5)
1c009e86:	07a1                	addi	a5,a5,8
1c009e88:	fee990e3          	bne	s3,a4,1c009e68 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x6e>
1c009e8c:	200a0a13          	addi	s4,s4,512
1c009e90:	f9441ce3          	bne	s0,s4,1c009e28 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2e>
1c009e94:	61c12083          	lw	ra,1564(sp)
1c009e98:	61812403          	lw	s0,1560(sp)
1c009e9c:	61412483          	lw	s1,1556(sp)
1c009ea0:	61012903          	lw	s2,1552(sp)
1c009ea4:	60c12983          	lw	s3,1548(sp)
1c009ea8:	60812a03          	lw	s4,1544(sp)
1c009eac:	62010113          	addi	sp,sp,1568
1c009eb0:	8082                	ret

1c009eb2 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c009eb2:	df010113          	addi	sp,sp,-528
1c009eb6:	20112623          	sw	ra,524(sp)
1c009eba:	20812423          	sw	s0,520(sp)
1c009ebe:	20912223          	sw	s1,516(sp)
1c009ec2:	21212023          	sw	s2,512(sp)
1c009ec6:	842a                	mv	s0,a0
1c009ec8:	84ae                	mv	s1,a1
1c009eca:	8932                	mv	s2,a2
1c009ecc:	3d09                	jal	1c009cde <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009ece:	20090613          	addi	a2,s2,512
1c009ed2:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c009ed6:	850a                	mv	a0,sp
1c009ed8:	3519                	jal	1c009cde <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009eda:	860a                	mv	a2,sp
1c009edc:	85a2                	mv	a1,s0
1c009ede:	8522                	mv	a0,s0
1c009ee0:	35e1                	jal	1c009da8 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009ee2:	40090613          	addi	a2,s2,1024
1c009ee6:	40048593          	addi	a1,s1,1024
1c009eea:	850a                	mv	a0,sp
1c009eec:	3bcd                	jal	1c009cde <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009eee:	860a                	mv	a2,sp
1c009ef0:	85a2                	mv	a1,s0
1c009ef2:	8522                	mv	a0,s0
1c009ef4:	3d55                	jal	1c009da8 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009ef6:	8522                	mv	a0,s0
1c009ef8:	3561                	jal	1c009d80 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009efa:	20c12083          	lw	ra,524(sp)
1c009efe:	20812403          	lw	s0,520(sp)
1c009f02:	20412483          	lw	s1,516(sp)
1c009f06:	20012903          	lw	s2,512(sp)
1c009f0a:	21010113          	addi	sp,sp,528
1c009f0e:	8082                	ret

1c009f10 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c009f10:	1141                	addi	sp,sp,-16
1c009f12:	c606                	sw	ra,12(sp)
1c009f14:	c422                	sw	s0,8(sp)
1c009f16:	842a                	mv	s0,a0
1c009f18:	35a5                	jal	1c009d80 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009f1a:	20040513          	addi	a0,s0,512
1c009f1e:	358d                	jal	1c009d80 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009f20:	40040513          	addi	a0,s0,1024
1c009f24:	4422                	lw	s0,8(sp)
1c009f26:	40b2                	lw	ra,12(sp)
1c009f28:	0141                	addi	sp,sp,16
1c009f2a:	bd99                	j	1c009d80 <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c009f2c <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c009f2c:	1101                	addi	sp,sp,-32
1c009f2e:	cc22                	sw	s0,24(sp)
1c009f30:	ca26                	sw	s1,20(sp)
1c009f32:	c84a                	sw	s2,16(sp)
1c009f34:	c64e                	sw	s3,12(sp)
1c009f36:	c452                	sw	s4,8(sp)
1c009f38:	ce06                	sw	ra,28(sp)
1c009f3a:	89aa                	mv	s3,a0
1c009f3c:	892e                	mv	s2,a1
1c009f3e:	84b2                	mv	s1,a2
1c009f40:	4401                	li	s0,0
1c009f42:	60000a13          	li	s4,1536
1c009f46:	00848633          	add	a2,s1,s0
1c009f4a:	008905b3          	add	a1,s2,s0
1c009f4e:	00898533          	add	a0,s3,s0
1c009f52:	20040413          	addi	s0,s0,512
1c009f56:	3d89                	jal	1c009da8 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009f58:	ff4417e3          	bne	s0,s4,1c009f46 <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c009f5c:	40f2                	lw	ra,28(sp)
1c009f5e:	4462                	lw	s0,24(sp)
1c009f60:	44d2                	lw	s1,20(sp)
1c009f62:	4942                	lw	s2,16(sp)
1c009f64:	49b2                	lw	s3,12(sp)
1c009f66:	4a22                	lw	s4,8(sp)
1c009f68:	6105                	addi	sp,sp,32
1c009f6a:	8082                	ret

1c009f6c <randombytes>:
1c009f6c:	2a058263          	beqz	a1,1c00a210 <randombytes+0x2a4>
1c009f70:	715d                	addi	sp,sp,-80
1c009f72:	00b50733          	add	a4,a0,a1
1c009f76:	c63a                	sw	a4,12(sp)
1c009f78:	9e378737          	lui	a4,0x9e378
1c009f7c:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c009f80:	1c0067b7          	lui	a5,0x1c006
1c009f84:	c43a                	sw	a4,8(sp)
1c009f86:	e377a737          	lui	a4,0xe377a
1c009f8a:	2b478793          	addi	a5,a5,692 # 1c0062b4 <outleft>
1c009f8e:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c009f92:	c83e                	sw	a5,16(sp)
1c009f94:	ca3a                	sw	a4,20(sp)
1c009f96:	439c                	lw	a5,0(a5)
1c009f98:	c6ef3737          	lui	a4,0xc6ef3
1c009f9c:	c6a2                	sw	s0,76(sp)
1c009f9e:	1c0062b7          	lui	t0,0x1c006
1c009fa2:	1c006437          	lui	s0,0x1c006
1c009fa6:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c009faa:	d06e                	sw	s11,32(sp)
1c009fac:	c4a6                	sw	s1,72(sp)
1c009fae:	c2ca                	sw	s2,68(sp)
1c009fb0:	c0ce                	sw	s3,64(sp)
1c009fb2:	de52                	sw	s4,60(sp)
1c009fb4:	dc56                	sw	s5,56(sp)
1c009fb6:	da5a                	sw	s6,52(sp)
1c009fb8:	d85e                	sw	s7,48(sp)
1c009fba:	d662                	sw	s8,44(sp)
1c009fbc:	d466                	sw	s9,40(sp)
1c009fbe:	d26a                	sw	s10,36(sp)
1c009fc0:	8daa                	mv	s11,a0
1c009fc2:	29040413          	addi	s0,s0,656 # 1c006290 <out>
1c009fc6:	26028293          	addi	t0,t0,608 # 1c006260 <in>
1c009fca:	cc3a                	sw	a4,24(sp)
1c009fcc:	cf85                	beqz	a5,1c00a004 <randombytes+0x98>
1c009fce:	17fd                	addi	a5,a5,-1
1c009fd0:	00279713          	slli	a4,a5,0x2
1c009fd4:	9722                	add	a4,a4,s0
1c009fd6:	4304                	lw	s1,0(a4)
1c009fd8:	4742                	lw	a4,16(sp)
1c009fda:	009d8023          	sb	s1,0(s11)
1c009fde:	0d85                	addi	s11,s11,1
1c009fe0:	c31c                	sw	a5,0(a4)
1c009fe2:	4732                	lw	a4,12(sp)
1c009fe4:	feed94e3          	bne	s11,a4,1c009fcc <randombytes+0x60>
1c009fe8:	4436                	lw	s0,76(sp)
1c009fea:	44a6                	lw	s1,72(sp)
1c009fec:	4916                	lw	s2,68(sp)
1c009fee:	4986                	lw	s3,64(sp)
1c009ff0:	5a72                	lw	s4,60(sp)
1c009ff2:	5ae2                	lw	s5,56(sp)
1c009ff4:	5b52                	lw	s6,52(sp)
1c009ff6:	5bc2                	lw	s7,48(sp)
1c009ff8:	5c32                	lw	s8,44(sp)
1c009ffa:	5ca2                	lw	s9,40(sp)
1c009ffc:	5d12                	lw	s10,36(sp)
1c009ffe:	5d82                	lw	s11,32(sp)
1c00a000:	6161                	addi	sp,sp,80
1c00a002:	8082                	ret
1c00a004:	0002a703          	lw	a4,0(t0)
1c00a008:	0042ae83          	lw	t4,4(t0)
1c00a00c:	0082af03          	lw	t5,8(t0)
1c00a010:	0705                	addi	a4,a4,1
1c00a012:	00e2a023          	sw	a4,0(t0)
1c00a016:	00c2af83          	lw	t6,12(t0)
1c00a01a:	ef11                	bnez	a4,1c00a036 <randombytes+0xca>
1c00a01c:	0e85                	addi	t4,t4,1
1c00a01e:	01d2a223          	sw	t4,4(t0)
1c00a022:	000e9a63          	bnez	t4,1c00a036 <randombytes+0xca>
1c00a026:	0f05                	addi	t5,t5,1
1c00a028:	01e2a423          	sw	t5,8(t0)
1c00a02c:	000f1563          	bnez	t5,1c00a036 <randombytes+0xca>
1c00a030:	0f85                	addi	t6,t6,1
1c00a032:	01f2a623          	sw	t6,12(t0)
1c00a036:	0102ae03          	lw	t3,16(t0)
1c00a03a:	0142a303          	lw	t1,20(t0)
1c00a03e:	0182a883          	lw	a7,24(t0)
1c00a042:	01c2a803          	lw	a6,28(t0)
1c00a046:	0202a503          	lw	a0,32(t0)
1c00a04a:	0242a583          	lw	a1,36(t0)
1c00a04e:	0282a603          	lw	a2,40(t0)
1c00a052:	02c2a683          	lw	a3,44(t0)
1c00a056:	00974713          	xori	a4,a4,9
1c00a05a:	007ece93          	xori	t4,t4,7
1c00a05e:	009f4f13          	xori	t5,t5,9
1c00a062:	003fcf93          	xori	t6,t6,3
1c00a066:	002e4e13          	xori	t3,t3,2
1c00a06a:	00334313          	xori	t1,t1,3
1c00a06e:	0088c893          	xori	a7,a7,8
1c00a072:	00484813          	xori	a6,a6,4
1c00a076:	00654513          	xori	a0,a0,6
1c00a07a:	0025c593          	xori	a1,a1,2
1c00a07e:	00664613          	xori	a2,a2,6
1c00a082:	0046c693          	xori	a3,a3,4
1c00a086:	4495                	li	s1,5
1c00a088:	49a5                	li	s3,9
1c00a08a:	4a1d                	li	s4,7
1c00a08c:	4a89                	li	s5,2
1c00a08e:	4b0d                	li	s6,3
1c00a090:	4ba1                	li	s7,8
1c00a092:	4d0d                	li	s10,3
1c00a094:	4c0d                	li	s8,3
1c00a096:	4781                	li	a5,0
1c00a098:	ce6e                	sw	s11,28(sp)
1c00a09a:	43d2                	lw	t2,20(sp)
1c00a09c:	00778db3          	add	s11,a5,t2
1c00a0a0:	43a2                	lw	t2,8(sp)
1c00a0a2:	01b6dc93          	srli	s9,a3,0x1b
1c00a0a6:	00569913          	slli	s2,a3,0x5
1c00a0aa:	979e                	add	a5,a5,t2
1c00a0ac:	0036c393          	xori	t2,a3,3
1c00a0b0:	01996933          	or	s2,s2,s9
1c00a0b4:	93be                	add	t2,t2,a5
1c00a0b6:	0123c3b3          	xor	t2,t2,s2
1c00a0ba:	971e                	add	a4,a4,t2
1c00a0bc:	01975c93          	srli	s9,a4,0x19
1c00a0c0:	00174393          	xori	t2,a4,1
1c00a0c4:	00771913          	slli	s2,a4,0x7
1c00a0c8:	01996933          	or	s2,s2,s9
1c00a0cc:	93be                	add	t2,t2,a5
1c00a0ce:	0123c3b3          	xor	t2,t2,s2
1c00a0d2:	9e9e                	add	t4,t4,t2
1c00a0d4:	017edc93          	srli	s9,t4,0x17
1c00a0d8:	004ec393          	xori	t2,t4,4
1c00a0dc:	009e9913          	slli	s2,t4,0x9
1c00a0e0:	01996933          	or	s2,s2,s9
1c00a0e4:	93be                	add	t2,t2,a5
1c00a0e6:	0123c3b3          	xor	t2,t2,s2
1c00a0ea:	9f1e                	add	t5,t5,t2
1c00a0ec:	013f5c93          	srli	s9,t5,0x13
1c00a0f0:	001f4393          	xori	t2,t5,1
1c00a0f4:	00df1913          	slli	s2,t5,0xd
1c00a0f8:	01996933          	or	s2,s2,s9
1c00a0fc:	93be                	add	t2,t2,a5
1c00a0fe:	0123c3b3          	xor	t2,t2,s2
1c00a102:	9f9e                	add	t6,t6,t2
1c00a104:	01bfdc93          	srli	s9,t6,0x1b
1c00a108:	005fc393          	xori	t2,t6,5
1c00a10c:	005f9913          	slli	s2,t6,0x5
1c00a110:	01996933          	or	s2,s2,s9
1c00a114:	93be                	add	t2,t2,a5
1c00a116:	0123c3b3          	xor	t2,t2,s2
1c00a11a:	9e1e                	add	t3,t3,t2
1c00a11c:	019e5c93          	srli	s9,t3,0x19
1c00a120:	009e4393          	xori	t2,t3,9
1c00a124:	007e1913          	slli	s2,t3,0x7
1c00a128:	01996933          	or	s2,s2,s9
1c00a12c:	93be                	add	t2,t2,a5
1c00a12e:	0123c3b3          	xor	t2,t2,s2
1c00a132:	931e                	add	t1,t1,t2
1c00a134:	01735c93          	srli	s9,t1,0x17
1c00a138:	00234393          	xori	t2,t1,2
1c00a13c:	00931913          	slli	s2,t1,0x9
1c00a140:	01996933          	or	s2,s2,s9
1c00a144:	93be                	add	t2,t2,a5
1c00a146:	0123c3b3          	xor	t2,t2,s2
1c00a14a:	989e                	add	a7,a7,t2
1c00a14c:	0138dc93          	srli	s9,a7,0x13
1c00a150:	0068c393          	xori	t2,a7,6
1c00a154:	00d89913          	slli	s2,a7,0xd
1c00a158:	01996933          	or	s2,s2,s9
1c00a15c:	93be                	add	t2,t2,a5
1c00a15e:	0123c3b3          	xor	t2,t2,s2
1c00a162:	981e                	add	a6,a6,t2
1c00a164:	01b85c93          	srli	s9,a6,0x1b
1c00a168:	00584393          	xori	t2,a6,5
1c00a16c:	00581913          	slli	s2,a6,0x5
1c00a170:	01996933          	or	s2,s2,s9
1c00a174:	93be                	add	t2,t2,a5
1c00a176:	0123c3b3          	xor	t2,t2,s2
1c00a17a:	951e                	add	a0,a0,t2
1c00a17c:	01955c93          	srli	s9,a0,0x19
1c00a180:	00354393          	xori	t2,a0,3
1c00a184:	00751913          	slli	s2,a0,0x7
1c00a188:	01996933          	or	s2,s2,s9
1c00a18c:	93be                	add	t2,t2,a5
1c00a18e:	0123c3b3          	xor	t2,t2,s2
1c00a192:	959e                	add	a1,a1,t2
1c00a194:	0175dc93          	srli	s9,a1,0x17
1c00a198:	0055c393          	xori	t2,a1,5
1c00a19c:	00959913          	slli	s2,a1,0x9
1c00a1a0:	01996933          	or	s2,s2,s9
1c00a1a4:	93be                	add	t2,t2,a5
1c00a1a6:	0123c3b3          	xor	t2,t2,s2
1c00a1aa:	961e                	add	a2,a2,t2
1c00a1ac:	00864393          	xori	t2,a2,8
1c00a1b0:	00d61913          	slli	s2,a2,0xd
1c00a1b4:	01365c93          	srli	s9,a2,0x13
1c00a1b8:	93be                	add	t2,t2,a5
1c00a1ba:	01996933          	or	s2,s2,s9
1c00a1be:	0123c3b3          	xor	t2,t2,s2
1c00a1c2:	969e                	add	a3,a3,t2
1c00a1c4:	edb79ee3          	bne	a5,s11,1c00a0a0 <randombytes+0x134>
1c00a1c8:	43e2                	lw	t2,24(sp)
1c00a1ca:	01cc4c33          	xor	s8,s8,t3
1c00a1ce:	006d4d33          	xor	s10,s10,t1
1c00a1d2:	011bcbb3          	xor	s7,s7,a7
1c00a1d6:	010b4b33          	xor	s6,s6,a6
1c00a1da:	00aacab3          	xor	s5,s5,a0
1c00a1de:	00ba4a33          	xor	s4,s4,a1
1c00a1e2:	00c9c9b3          	xor	s3,s3,a2
1c00a1e6:	8cb5                	xor	s1,s1,a3
1c00a1e8:	ea7799e3          	bne	a5,t2,1c00a09a <randombytes+0x12e>
1c00a1ec:	4df2                	lw	s11,28(sp)
1c00a1ee:	01842023          	sw	s8,0(s0)
1c00a1f2:	01a42223          	sw	s10,4(s0)
1c00a1f6:	01742423          	sw	s7,8(s0)
1c00a1fa:	01642623          	sw	s6,12(s0)
1c00a1fe:	01542823          	sw	s5,16(s0)
1c00a202:	01442a23          	sw	s4,20(s0)
1c00a206:	01342c23          	sw	s3,24(s0)
1c00a20a:	cc44                	sw	s1,28(s0)
1c00a20c:	479d                	li	a5,7
1c00a20e:	b3e9                	j	1c009fd8 <randombytes+0x6c>
1c00a210:	8082                	ret

1c00a212 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00a212:	777d                	lui	a4,0xfffff
1c00a214:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00a218:	02f507b3          	mul	a5,a0,a5
1c00a21c:	2ff70713          	addi	a4,a4,767
1c00a220:	07c2                	slli	a5,a5,0x10
1c00a222:	87c1                	srai	a5,a5,0x10
1c00a224:	02e787b3          	mul	a5,a5,a4
1c00a228:	953e                	add	a0,a0,a5
1c00a22a:	8541                	srai	a0,a0,0x10
1c00a22c:	8082                	ret

1c00a22e <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00a22e:	6795                	lui	a5,0x5
1c00a230:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a234:	02f507b3          	mul	a5,a0,a5
1c00a238:	02000737          	lui	a4,0x2000
1c00a23c:	97ba                	add	a5,a5,a4
1c00a23e:	6705                	lui	a4,0x1
1c00a240:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a244:	87e9                	srai	a5,a5,0x1a
1c00a246:	02e787b3          	mul	a5,a5,a4
1c00a24a:	8d1d                	sub	a0,a0,a5
1c00a24c:	0542                	slli	a0,a0,0x10
1c00a24e:	8541                	srai	a0,a0,0x10
1c00a250:	8082                	ret

1c00a252 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00a252:	7139                	addi	sp,sp,-64
1c00a254:	da26                	sw	s1,52(sp)
1c00a256:	d84a                	sw	s2,48(sp)
1c00a258:	84b2                	mv	s1,a2
1c00a25a:	892a                	mv	s2,a0
1c00a25c:	02000613          	li	a2,32
1c00a260:	0068                	addi	a0,sp,12
1c00a262:	de06                	sw	ra,60(sp)
1c00a264:	dc22                	sw	s0,56(sp)
1c00a266:	8436                	mv	s0,a3
1c00a268:	2049                	jal	1c00a2ea <memcpy>
1c00a26a:	006c                	addi	a1,sp,12
1c00a26c:	854a                	mv	a0,s2
1c00a26e:	02200613          	li	a2,34
1c00a272:	02910623          	sb	s1,44(sp)
1c00a276:	028106a3          	sb	s0,45(sp)
1c00a27a:	ca6fe0ef          	jal	ra,1c008720 <shake128_absorb>
1c00a27e:	50f2                	lw	ra,60(sp)
1c00a280:	5462                	lw	s0,56(sp)
1c00a282:	54d2                	lw	s1,52(sp)
1c00a284:	5942                	lw	s2,48(sp)
1c00a286:	6121                	addi	sp,sp,64
1c00a288:	8082                	ret

1c00a28a <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00a28a:	7139                	addi	sp,sp,-64
1c00a28c:	87b2                	mv	a5,a2
1c00a28e:	da26                	sw	s1,52(sp)
1c00a290:	d84a                	sw	s2,48(sp)
1c00a292:	84aa                	mv	s1,a0
1c00a294:	892e                	mv	s2,a1
1c00a296:	02000613          	li	a2,32
1c00a29a:	85be                	mv	a1,a5
1c00a29c:	0068                	addi	a0,sp,12
1c00a29e:	de06                	sw	ra,60(sp)
1c00a2a0:	dc22                	sw	s0,56(sp)
1c00a2a2:	8436                	mv	s0,a3
1c00a2a4:	2099                	jal	1c00a2ea <memcpy>
1c00a2a6:	0070                	addi	a2,sp,12
1c00a2a8:	85ca                	mv	a1,s2
1c00a2aa:	8526                	mv	a0,s1
1c00a2ac:	02100693          	li	a3,33
1c00a2b0:	02810623          	sb	s0,44(sp)
1c00a2b4:	f56fe0ef          	jal	ra,1c008a0a <shake256>
1c00a2b8:	50f2                	lw	ra,60(sp)
1c00a2ba:	5462                	lw	s0,56(sp)
1c00a2bc:	54d2                	lw	s1,52(sp)
1c00a2be:	5942                	lw	s2,48(sp)
1c00a2c0:	6121                	addi	sp,sp,64
1c00a2c2:	8082                	ret

1c00a2c4 <pos_wait_forever>:
1c00a2c4:	f14027f3          	csrr	a5,mhartid
1c00a2c8:	8795                	srai	a5,a5,0x5
1c00a2ca:	03f7f793          	andi	a5,a5,63
1c00a2ce:	477d                	li	a4,31
1c00a2d0:	00e78363          	beq	a5,a4,1c00a2d6 <pos_wait_forever+0x12>
1c00a2d4:	a001                	j	1c00a2d4 <pos_wait_forever+0x10>
1c00a2d6:	1a10a7b7          	lui	a5,0x1a10a
1c00a2da:	577d                	li	a4,-1
1c00a2dc:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a2e0:	10500073          	wfi
1c00a2e4:	10500073          	wfi
1c00a2e8:	bfe5                	j	1c00a2e0 <pos_wait_forever+0x1c>

1c00a2ea <memcpy>:
1c00a2ea:	00c5e7b3          	or	a5,a1,a2
1c00a2ee:	8fc9                	or	a5,a5,a0
1c00a2f0:	8b8d                	andi	a5,a5,3
1c00a2f2:	872e                	mv	a4,a1
1c00a2f4:	882a                	mv	a6,a0
1c00a2f6:	cbc5                	beqz	a5,1c00a3a6 <memcpy+0xbc>
1c00a2f8:	c279                	beqz	a2,1c00a3be <memcpy+0xd4>
1c00a2fa:	00350793          	addi	a5,a0,3
1c00a2fe:	8f8d                	sub	a5,a5,a1
1c00a300:	0077b793          	sltiu	a5,a5,7
1c00a304:	e7d1                	bnez	a5,1c00a390 <memcpy+0xa6>
1c00a306:	fff60793          	addi	a5,a2,-1
1c00a30a:	0047b793          	sltiu	a5,a5,4
1c00a30e:	e3c9                	bnez	a5,1c00a390 <memcpy+0xa6>
1c00a310:	ffc67e13          	andi	t3,a2,-4
1c00a314:	9e2e                	add	t3,t3,a1
1c00a316:	00174883          	lbu	a7,1(a4)
1c00a31a:	00074303          	lbu	t1,0(a4)
1c00a31e:	00274683          	lbu	a3,2(a4)
1c00a322:	00374783          	lbu	a5,3(a4)
1c00a326:	08a2                	slli	a7,a7,0x8
1c00a328:	0068e8b3          	or	a7,a7,t1
1c00a32c:	06c2                	slli	a3,a3,0x10
1c00a32e:	0116e6b3          	or	a3,a3,a7
1c00a332:	07e2                	slli	a5,a5,0x18
1c00a334:	8fd5                	or	a5,a5,a3
1c00a336:	0087d313          	srli	t1,a5,0x8
1c00a33a:	0107d893          	srli	a7,a5,0x10
1c00a33e:	83e1                	srli	a5,a5,0x18
1c00a340:	00d80023          	sb	a3,0(a6)
1c00a344:	006800a3          	sb	t1,1(a6)
1c00a348:	01180123          	sb	a7,2(a6)
1c00a34c:	00f801a3          	sb	a5,3(a6)
1c00a350:	0711                	addi	a4,a4,4
1c00a352:	0811                	addi	a6,a6,4
1c00a354:	fdc711e3          	bne	a4,t3,1c00a316 <memcpy+0x2c>
1c00a358:	ffc67793          	andi	a5,a2,-4
1c00a35c:	00367693          	andi	a3,a2,3
1c00a360:	00f50733          	add	a4,a0,a5
1c00a364:	95be                	add	a1,a1,a5
1c00a366:	02f60f63          	beq	a2,a5,1c00a3a4 <memcpy+0xba>
1c00a36a:	0005c603          	lbu	a2,0(a1)
1c00a36e:	fff68793          	addi	a5,a3,-1
1c00a372:	00c70023          	sb	a2,0(a4)
1c00a376:	c79d                	beqz	a5,1c00a3a4 <memcpy+0xba>
1c00a378:	0015c603          	lbu	a2,1(a1)
1c00a37c:	4789                	li	a5,2
1c00a37e:	00c700a3          	sb	a2,1(a4)
1c00a382:	02f68163          	beq	a3,a5,1c00a3a4 <memcpy+0xba>
1c00a386:	0025c783          	lbu	a5,2(a1)
1c00a38a:	00f70123          	sb	a5,2(a4)
1c00a38e:	8082                	ret
1c00a390:	962e                	add	a2,a2,a1
1c00a392:	87aa                	mv	a5,a0
1c00a394:	0005c703          	lbu	a4,0(a1)
1c00a398:	0585                	addi	a1,a1,1
1c00a39a:	0785                	addi	a5,a5,1
1c00a39c:	fee78fa3          	sb	a4,-1(a5)
1c00a3a0:	fec59ae3          	bne	a1,a2,1c00a394 <memcpy+0xaa>
1c00a3a4:	8082                	ret
1c00a3a6:	de7d                	beqz	a2,1c00a3a4 <memcpy+0xba>
1c00a3a8:	87aa                	mv	a5,a0
1c00a3aa:	4194                	lw	a3,0(a1)
1c00a3ac:	0791                	addi	a5,a5,4
1c00a3ae:	40c78733          	sub	a4,a5,a2
1c00a3b2:	fed7ae23          	sw	a3,-4(a5)
1c00a3b6:	0591                	addi	a1,a1,4
1c00a3b8:	fea719e3          	bne	a4,a0,1c00a3aa <memcpy+0xc0>
1c00a3bc:	8082                	ret
1c00a3be:	8082                	ret

1c00a3c0 <memmove>:
1c00a3c0:	40b507b3          	sub	a5,a0,a1
1c00a3c4:	0ac7e063          	bltu	a5,a2,1c00a464 <memmove+0xa4>
1c00a3c8:	c661                	beqz	a2,1c00a490 <memmove+0xd0>
1c00a3ca:	00350793          	addi	a5,a0,3
1c00a3ce:	8f8d                	sub	a5,a5,a1
1c00a3d0:	0077b793          	sltiu	a5,a5,7
1c00a3d4:	e3dd                	bnez	a5,1c00a47a <memmove+0xba>
1c00a3d6:	fff60793          	addi	a5,a2,-1
1c00a3da:	0047b793          	sltiu	a5,a5,4
1c00a3de:	efd1                	bnez	a5,1c00a47a <memmove+0xba>
1c00a3e0:	ffc67e13          	andi	t3,a2,-4
1c00a3e4:	872e                	mv	a4,a1
1c00a3e6:	882a                	mv	a6,a0
1c00a3e8:	9e2e                	add	t3,t3,a1
1c00a3ea:	00174883          	lbu	a7,1(a4)
1c00a3ee:	00074303          	lbu	t1,0(a4)
1c00a3f2:	00274683          	lbu	a3,2(a4)
1c00a3f6:	00374783          	lbu	a5,3(a4)
1c00a3fa:	08a2                	slli	a7,a7,0x8
1c00a3fc:	0068e8b3          	or	a7,a7,t1
1c00a400:	06c2                	slli	a3,a3,0x10
1c00a402:	0116e6b3          	or	a3,a3,a7
1c00a406:	07e2                	slli	a5,a5,0x18
1c00a408:	8fd5                	or	a5,a5,a3
1c00a40a:	0087d313          	srli	t1,a5,0x8
1c00a40e:	0107d893          	srli	a7,a5,0x10
1c00a412:	83e1                	srli	a5,a5,0x18
1c00a414:	00d80023          	sb	a3,0(a6)
1c00a418:	006800a3          	sb	t1,1(a6)
1c00a41c:	01180123          	sb	a7,2(a6)
1c00a420:	00f801a3          	sb	a5,3(a6)
1c00a424:	0711                	addi	a4,a4,4
1c00a426:	0811                	addi	a6,a6,4
1c00a428:	fdc711e3          	bne	a4,t3,1c00a3ea <memmove+0x2a>
1c00a42c:	ffc67793          	andi	a5,a2,-4
1c00a430:	00367693          	andi	a3,a2,3
1c00a434:	00f50733          	add	a4,a0,a5
1c00a438:	95be                	add	a1,a1,a5
1c00a43a:	04f60a63          	beq	a2,a5,1c00a48e <memmove+0xce>
1c00a43e:	0005c603          	lbu	a2,0(a1)
1c00a442:	fff68793          	addi	a5,a3,-1
1c00a446:	00c70023          	sb	a2,0(a4)
1c00a44a:	c3b1                	beqz	a5,1c00a48e <memmove+0xce>
1c00a44c:	0015c603          	lbu	a2,1(a1)
1c00a450:	4789                	li	a5,2
1c00a452:	00c700a3          	sb	a2,1(a4)
1c00a456:	02f68c63          	beq	a3,a5,1c00a48e <memmove+0xce>
1c00a45a:	0025c783          	lbu	a5,2(a1)
1c00a45e:	00f70123          	sb	a5,2(a4)
1c00a462:	8082                	ret
1c00a464:	167d                	addi	a2,a2,-1
1c00a466:	00c587b3          	add	a5,a1,a2
1c00a46a:	0007c703          	lbu	a4,0(a5)
1c00a46e:	00c507b3          	add	a5,a0,a2
1c00a472:	00e78023          	sb	a4,0(a5)
1c00a476:	f67d                	bnez	a2,1c00a464 <memmove+0xa4>
1c00a478:	8082                	ret
1c00a47a:	962a                	add	a2,a2,a0
1c00a47c:	87aa                	mv	a5,a0
1c00a47e:	0005c703          	lbu	a4,0(a1)
1c00a482:	0785                	addi	a5,a5,1
1c00a484:	0585                	addi	a1,a1,1
1c00a486:	fee78fa3          	sb	a4,-1(a5)
1c00a48a:	fec79ae3          	bne	a5,a2,1c00a47e <memmove+0xbe>
1c00a48e:	8082                	ret
1c00a490:	8082                	ret

1c00a492 <strchr>:
1c00a492:	00054703          	lbu	a4,0(a0)
1c00a496:	0ff5f593          	andi	a1,a1,255
1c00a49a:	87aa                	mv	a5,a0
1c00a49c:	00b70863          	beq	a4,a1,1c00a4ac <strchr+0x1a>
1c00a4a0:	cb01                	beqz	a4,1c00a4b0 <strchr+0x1e>
1c00a4a2:	0017c703          	lbu	a4,1(a5)
1c00a4a6:	0785                	addi	a5,a5,1
1c00a4a8:	feb71ce3          	bne	a4,a1,1c00a4a0 <strchr+0xe>
1c00a4ac:	853e                	mv	a0,a5
1c00a4ae:	8082                	ret
1c00a4b0:	4501                	li	a0,0
1c00a4b2:	dded                	beqz	a1,1c00a4ac <strchr+0x1a>
1c00a4b4:	8082                	ret

1c00a4b6 <puts>:
1c00a4b6:	00054783          	lbu	a5,0(a0)
1c00a4ba:	c78d                	beqz	a5,1c00a4e4 <puts+0x2e>
1c00a4bc:	f14026f3          	csrr	a3,mhartid
1c00a4c0:	00369713          	slli	a4,a3,0x3
1c00a4c4:	1a10f637          	lui	a2,0x1a10f
1c00a4c8:	0ff77713          	andi	a4,a4,255
1c00a4cc:	9732                	add	a4,a4,a2
1c00a4ce:	6609                	lui	a2,0x2
1c00a4d0:	068a                	slli	a3,a3,0x2
1c00a4d2:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a4d6:	8ef1                	and	a3,a3,a2
1c00a4d8:	9736                	add	a4,a4,a3
1c00a4da:	c31c                	sw	a5,0(a4)
1c00a4dc:	00154783          	lbu	a5,1(a0)
1c00a4e0:	0505                	addi	a0,a0,1
1c00a4e2:	ffe5                	bnez	a5,1c00a4da <puts+0x24>
1c00a4e4:	f1402773          	csrr	a4,mhartid
1c00a4e8:	00371793          	slli	a5,a4,0x3
1c00a4ec:	1a10f6b7          	lui	a3,0x1a10f
1c00a4f0:	0ff7f793          	andi	a5,a5,255
1c00a4f4:	97b6                	add	a5,a5,a3
1c00a4f6:	6689                	lui	a3,0x2
1c00a4f8:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a4fc:	070a                	slli	a4,a4,0x2
1c00a4fe:	8f75                	and	a4,a4,a3
1c00a500:	97ba                	add	a5,a5,a4
1c00a502:	4729                	li	a4,10
1c00a504:	c398                	sw	a4,0(a5)
1c00a506:	4501                	li	a0,0
1c00a508:	8082                	ret

1c00a50a <pos_libc_fputc_locked>:
1c00a50a:	6689                	lui	a3,0x2
1c00a50c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a510:	f14027f3          	csrr	a5,mhartid
1c00a514:	00379713          	slli	a4,a5,0x3
1c00a518:	078a                	slli	a5,a5,0x2
1c00a51a:	8ff5                	and	a5,a5,a3
1c00a51c:	0ff77713          	andi	a4,a4,255
1c00a520:	1a10f6b7          	lui	a3,0x1a10f
1c00a524:	9736                	add	a4,a4,a3
1c00a526:	97ba                	add	a5,a5,a4
1c00a528:	0ff57513          	andi	a0,a0,255
1c00a52c:	c388                	sw	a0,0(a5)
1c00a52e:	4501                	li	a0,0
1c00a530:	8082                	ret

1c00a532 <putchar>:
1c00a532:	6689                	lui	a3,0x2
1c00a534:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a538:	f14027f3          	csrr	a5,mhartid
1c00a53c:	00379713          	slli	a4,a5,0x3
1c00a540:	078a                	slli	a5,a5,0x2
1c00a542:	8ff5                	and	a5,a5,a3
1c00a544:	0ff77713          	andi	a4,a4,255
1c00a548:	1a10f6b7          	lui	a3,0x1a10f
1c00a54c:	9736                	add	a4,a4,a3
1c00a54e:	97ba                	add	a5,a5,a4
1c00a550:	0ff57513          	andi	a0,a0,255
1c00a554:	c388                	sw	a0,0(a5)
1c00a556:	4501                	li	a0,0
1c00a558:	8082                	ret

1c00a55a <pos_libc_prf_locked>:
1c00a55a:	a0b1                	j	1c00a5a6 <pos_libc_prf>

1c00a55c <exit>:
1c00a55c:	800007b7          	lui	a5,0x80000
1c00a560:	1141                	addi	sp,sp,-16
1c00a562:	8d5d                	or	a0,a0,a5
1c00a564:	c606                	sw	ra,12(sp)
1c00a566:	1a1047b7          	lui	a5,0x1a104
1c00a56a:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a56e:	3b99                	jal	1c00a2c4 <pos_wait_forever>

1c00a570 <pos_io_start>:
1c00a570:	4501                	li	a0,0
1c00a572:	8082                	ret

1c00a574 <pos_io_stop>:
1c00a574:	4501                	li	a0,0
1c00a576:	8082                	ret

1c00a578 <printf>:
1c00a578:	7139                	addi	sp,sp,-64
1c00a57a:	02410313          	addi	t1,sp,36
1c00a57e:	d432                	sw	a2,40(sp)
1c00a580:	862a                	mv	a2,a0
1c00a582:	1c00a537          	lui	a0,0x1c00a
1c00a586:	d22e                	sw	a1,36(sp)
1c00a588:	d636                	sw	a3,44(sp)
1c00a58a:	4589                	li	a1,2
1c00a58c:	869a                	mv	a3,t1
1c00a58e:	50a50513          	addi	a0,a0,1290 # 1c00a50a <pos_libc_fputc_locked>
1c00a592:	ce06                	sw	ra,28(sp)
1c00a594:	d83a                	sw	a4,48(sp)
1c00a596:	da3e                	sw	a5,52(sp)
1c00a598:	dc42                	sw	a6,56(sp)
1c00a59a:	de46                	sw	a7,60(sp)
1c00a59c:	c61a                	sw	t1,12(sp)
1c00a59e:	3f75                	jal	1c00a55a <pos_libc_prf_locked>
1c00a5a0:	40f2                	lw	ra,28(sp)
1c00a5a2:	6121                	addi	sp,sp,64
1c00a5a4:	8082                	ret

1c00a5a6 <pos_libc_prf>:
1c00a5a6:	7169                	addi	sp,sp,-304
1c00a5a8:	12112623          	sw	ra,300(sp)
1c00a5ac:	12812423          	sw	s0,296(sp)
1c00a5b0:	12912223          	sw	s1,292(sp)
1c00a5b4:	13212023          	sw	s2,288(sp)
1c00a5b8:	11312e23          	sw	s3,284(sp)
1c00a5bc:	11412c23          	sw	s4,280(sp)
1c00a5c0:	11512a23          	sw	s5,276(sp)
1c00a5c4:	11612823          	sw	s6,272(sp)
1c00a5c8:	11712623          	sw	s7,268(sp)
1c00a5cc:	11812423          	sw	s8,264(sp)
1c00a5d0:	11912223          	sw	s9,260(sp)
1c00a5d4:	11a12023          	sw	s10,256(sp)
1c00a5d8:	dfee                	sw	s11,252(sp)
1c00a5da:	00064783          	lbu	a5,0(a2)
1c00a5de:	c636                	sw	a3,12(sp)
1c00a5e0:	3c0781e3          	beqz	a5,1c00b1a2 <pos_libc_prf+0xbfc>
1c00a5e4:	7741                	lui	a4,0xffff0
1c00a5e6:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a5ea:	cc3a                	sw	a4,24(sp)
1c00a5ec:	10000737          	lui	a4,0x10000
1c00a5f0:	177d                	addi	a4,a4,-1
1c00a5f2:	8caa                	mv	s9,a0
1c00a5f4:	84ae                	mv	s1,a1
1c00a5f6:	00160c13          	addi	s8,a2,1
1c00a5fa:	4401                	li	s0,0
1c00a5fc:	1c000d37          	lui	s10,0x1c000
1c00a600:	ca3a                	sw	a4,20(sp)
1c00a602:	853e                	mv	a0,a5
1c00a604:	02500793          	li	a5,37
1c00a608:	04f50863          	beq	a0,a5,1c00a658 <pos_libc_prf+0xb2>
1c00a60c:	85a6                	mv	a1,s1
1c00a60e:	9c82                	jalr	s9
1c00a610:	57fd                	li	a5,-1
1c00a612:	4cf50b63          	beq	a0,a5,1c00aae8 <pos_libc_prf+0x542>
1c00a616:	0405                	addi	s0,s0,1
1c00a618:	000c4503          	lbu	a0,0(s8)
1c00a61c:	0c05                	addi	s8,s8,1
1c00a61e:	f17d                	bnez	a0,1c00a604 <pos_libc_prf+0x5e>
1c00a620:	12c12083          	lw	ra,300(sp)
1c00a624:	8522                	mv	a0,s0
1c00a626:	12812403          	lw	s0,296(sp)
1c00a62a:	12412483          	lw	s1,292(sp)
1c00a62e:	12012903          	lw	s2,288(sp)
1c00a632:	11c12983          	lw	s3,284(sp)
1c00a636:	11812a03          	lw	s4,280(sp)
1c00a63a:	11412a83          	lw	s5,276(sp)
1c00a63e:	11012b03          	lw	s6,272(sp)
1c00a642:	10c12b83          	lw	s7,268(sp)
1c00a646:	10812c03          	lw	s8,264(sp)
1c00a64a:	10412c83          	lw	s9,260(sp)
1c00a64e:	10012d03          	lw	s10,256(sp)
1c00a652:	5dfe                	lw	s11,252(sp)
1c00a654:	6155                	addi	sp,sp,304
1c00a656:	8082                	ret
1c00a658:	8de2                	mv	s11,s8
1c00a65a:	000dcc03          	lbu	s8,0(s11)
1c00a65e:	250d0513          	addi	a0,s10,592 # 1c000250 <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00a662:	c826                	sw	s1,16(sp)
1c00a664:	85e2                	mv	a1,s8
1c00a666:	c202                	sw	zero,4(sp)
1c00a668:	c402                	sw	zero,8(sp)
1c00a66a:	c002                	sw	zero,0(sp)
1c00a66c:	001d8493          	addi	s1,s11,1
1c00a670:	350d                	jal	1c00a492 <strchr>
1c00a672:	02000913          	li	s2,32
1c00a676:	4b81                	li	s7,0
1c00a678:	02b00993          	li	s3,43
1c00a67c:	02d00b13          	li	s6,45
1c00a680:	03000a93          	li	s5,48
1c00a684:	02000a13          	li	s4,32
1c00a688:	8626                	mv	a2,s1
1c00a68a:	c51d                	beqz	a0,1c00a6b8 <pos_libc_prf+0x112>
1c00a68c:	413c0e63          	beq	s8,s3,1c00aaa8 <pos_libc_prf+0x502>
1c00a690:	3f89ec63          	bltu	s3,s8,1c00aa88 <pos_libc_prf+0x4e2>
1c00a694:	414c0663          	beq	s8,s4,1c00aaa0 <pos_libc_prf+0x4fa>
1c00a698:	02300793          	li	a5,35
1c00a69c:	3efc1363          	bne	s8,a5,1c00aa82 <pos_libc_prf+0x4dc>
1c00a6a0:	4b85                	li	s7,1
1c00a6a2:	8da6                	mv	s11,s1
1c00a6a4:	000dcc03          	lbu	s8,0(s11)
1c00a6a8:	250d0513          	addi	a0,s10,592
1c00a6ac:	001d8493          	addi	s1,s11,1
1c00a6b0:	85e2                	mv	a1,s8
1c00a6b2:	33c5                	jal	1c00a492 <strchr>
1c00a6b4:	8626                	mv	a2,s1
1c00a6b6:	f979                	bnez	a0,1c00a68c <pos_libc_prf+0xe6>
1c00a6b8:	87e2                	mv	a5,s8
1c00a6ba:	ce5e                	sw	s7,28(sp)
1c00a6bc:	02a00693          	li	a3,42
1c00a6c0:	8c6e                	mv	s8,s11
1c00a6c2:	8ba6                	mv	s7,s1
1c00a6c4:	8dbe                	mv	s11,a5
1c00a6c6:	44c2                	lw	s1,16(sp)
1c00a6c8:	42d78263          	beq	a5,a3,1c00aaec <pos_libc_prf+0x546>
1c00a6cc:	fd078693          	addi	a3,a5,-48
1c00a6d0:	4525                	li	a0,9
1c00a6d2:	4a01                	li	s4,0
1c00a6d4:	3cd57f63          	bgeu	a0,a3,1c00aab2 <pos_libc_prf+0x50c>
1c00a6d8:	02e00793          	li	a5,46
1c00a6dc:	5afd                	li	s5,-1
1c00a6de:	74fd8363          	beq	s11,a5,1c00ae24 <pos_libc_prf+0x87e>
1c00a6e2:	1c0007b7          	lui	a5,0x1c000
1c00a6e6:	85ee                	mv	a1,s11
1c00a6e8:	25878513          	addi	a0,a5,600 # 1c000258 <PQCLEAN_KYBER768_CLEAN_zetas+0x108>
1c00a6ec:	c832                	sw	a2,16(sp)
1c00a6ee:	3355                	jal	1c00a492 <strchr>
1c00a6f0:	4642                	lw	a2,16(sp)
1c00a6f2:	8c32                	mv	s8,a2
1c00a6f4:	c509                	beqz	a0,1c00a6fe <pos_libc_prf+0x158>
1c00a6f6:	00064d83          	lbu	s11,0(a2)
1c00a6fa:	00160c13          	addi	s8,a2,1
1c00a6fe:	06900793          	li	a5,105
1c00a702:	0afd8ee3          	beq	s11,a5,1c00afbe <pos_libc_prf+0xa18>
1c00a706:	4db7c763          	blt	a5,s11,1c00abd4 <pos_libc_prf+0x62e>
1c00a70a:	05800793          	li	a5,88
1c00a70e:	4efd8163          	beq	s11,a5,1c00abf0 <pos_libc_prf+0x64a>
1c00a712:	41b7c163          	blt	a5,s11,1c00ab14 <pos_libc_prf+0x56e>
1c00a716:	02500793          	li	a5,37
1c00a71a:	26fd8ae3          	beq	s11,a5,1c00b18e <pos_libc_prf+0xbe8>
1c00a71e:	3fb7d863          	bge	a5,s11,1c00ab0e <pos_libc_prf+0x568>
1c00a722:	fbbd8793          	addi	a5,s11,-69
1c00a726:	4689                	li	a3,2
1c00a728:	eef6e8e3          	bltu	a3,a5,1c00a618 <pos_libc_prf+0x72>
1c00a72c:	47b2                	lw	a5,12(sp)
1c00a72e:	7ff00893          	li	a7,2047
1c00a732:	00778b13          	addi	s6,a5,7
1c00a736:	ff8b7b13          	andi	s6,s6,-8
1c00a73a:	004b2783          	lw	a5,4(s6) # ff0004 <__CTOR_LIST__-0x1b010000>
1c00a73e:	000b2603          	lw	a2,0(s6)
1c00a742:	0b21                	addi	s6,s6,8
1c00a744:	00b79693          	slli	a3,a5,0xb
1c00a748:	01565513          	srli	a0,a2,0x15
1c00a74c:	8ec9                	or	a3,a3,a0
1c00a74e:	0147d813          	srli	a6,a5,0x14
1c00a752:	0686                	slli	a3,a3,0x1
1c00a754:	7ff87813          	andi	a6,a6,2047
1c00a758:	0016d513          	srli	a0,a3,0x1
1c00a75c:	00b61313          	slli	t1,a2,0xb
1c00a760:	86be                	mv	a3,a5
1c00a762:	41180263          	beq	a6,a7,1c00ab66 <pos_libc_prf+0x5c0>
1c00a766:	04600793          	li	a5,70
1c00a76a:	00fd9463          	bne	s11,a5,1c00a772 <pos_libc_prf+0x1cc>
1c00a76e:	06600d93          	li	s11,102
1c00a772:	006867b3          	or	a5,a6,t1
1c00a776:	00a7e8b3          	or	a7,a5,a0
1c00a77a:	862a                	mv	a2,a0
1c00a77c:	340885e3          	beqz	a7,1c00b2c6 <pos_libc_prf+0xd20>
1c00a780:	80000637          	lui	a2,0x80000
1c00a784:	c0280813          	addi	a6,a6,-1022
1c00a788:	879a                	mv	a5,t1
1c00a78a:	8e49                	or	a2,a2,a0
1c00a78c:	4606c7e3          	bltz	a3,1c00b3fa <pos_libc_prf+0xe54>
1c00a790:	4722                	lw	a4,8(sp)
1c00a792:	480708e3          	beqz	a4,1c00b422 <pos_libc_prf+0xe7c>
1c00a796:	02b00693          	li	a3,43
1c00a79a:	02d10223          	sb	a3,36(sp)
1c00a79e:	02510f13          	addi	t5,sp,37
1c00a7a2:	56f9                	li	a3,-2
1c00a7a4:	4301                	li	t1,0
1c00a7a6:	06d85663          	bge	a6,a3,1c00a812 <pos_libc_prf+0x26c>
1c00a7aa:	333338b7          	lui	a7,0x33333
1c00a7ae:	80000e37          	lui	t3,0x80000
1c00a7b2:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00a7b6:	fffe4e13          	not	t3,t3
1c00a7ba:	5ef9                	li	t4,-2
1c00a7bc:	01f61593          	slli	a1,a2,0x1f
1c00a7c0:	0017d693          	srli	a3,a5,0x1
1c00a7c4:	0017f713          	andi	a4,a5,1
1c00a7c8:	8ecd                	or	a3,a3,a1
1c00a7ca:	00d707b3          	add	a5,a4,a3
1c00a7ce:	00e7b733          	sltu	a4,a5,a4
1c00a7d2:	8205                	srli	a2,a2,0x1
1c00a7d4:	963a                	add	a2,a2,a4
1c00a7d6:	8742                	mv	a4,a6
1c00a7d8:	0805                	addi	a6,a6,1
1c00a7da:	fec8e1e3          	bltu	a7,a2,1c00a7bc <pos_libc_prf+0x216>
1c00a7de:	00279593          	slli	a1,a5,0x2
1c00a7e2:	01e7d513          	srli	a0,a5,0x1e
1c00a7e6:	00261693          	slli	a3,a2,0x2
1c00a7ea:	97ae                	add	a5,a5,a1
1c00a7ec:	8ec9                	or	a3,a3,a0
1c00a7ee:	9636                	add	a2,a2,a3
1c00a7f0:	00b7b5b3          	sltu	a1,a5,a1
1c00a7f4:	962e                	add	a2,a2,a1
1c00a7f6:	01f7d693          	srli	a3,a5,0x1f
1c00a7fa:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00a7fe:	137d                	addi	t1,t1,-1
1c00a800:	01c61763          	bne	a2,t3,1c00a80e <pos_libc_prf+0x268>
1c00a804:	00170813          	addi	a6,a4,1
1c00a808:	0786                	slli	a5,a5,0x1
1c00a80a:	ffe6e613          	ori	a2,a3,-2
1c00a80e:	fbd847e3          	blt	a6,t4,1c00a7bc <pos_libc_prf+0x216>
1c00a812:	07005363          	blez	a6,1c00a878 <pos_libc_prf+0x2d2>
1c00a816:	800008b7          	lui	a7,0x80000
1c00a81a:	4e15                	li	t3,5
1c00a81c:	fff8c893          	not	a7,a7
1c00a820:	00278693          	addi	a3,a5,2
1c00a824:	00f6b7b3          	sltu	a5,a3,a5
1c00a828:	963e                	add	a2,a2,a5
1c00a82a:	03c657b3          	divu	a5,a2,t3
1c00a82e:	0036d713          	srli	a4,a3,0x3
1c00a832:	187d                	addi	a6,a6,-1
1c00a834:	0305                	addi	t1,t1,1
1c00a836:	00279593          	slli	a1,a5,0x2
1c00a83a:	95be                	add	a1,a1,a5
1c00a83c:	8e0d                	sub	a2,a2,a1
1c00a83e:	0676                	slli	a2,a2,0x1d
1c00a840:	8f51                	or	a4,a4,a2
1c00a842:	03c75633          	divu	a2,a4,t3
1c00a846:	00361713          	slli	a4,a2,0x3
1c00a84a:	00561593          	slli	a1,a2,0x5
1c00a84e:	95ba                	add	a1,a1,a4
1c00a850:	8e8d                	sub	a3,a3,a1
1c00a852:	03c6d6b3          	divu	a3,a3,t3
1c00a856:	8275                	srli	a2,a2,0x1d
1c00a858:	963e                	add	a2,a2,a5
1c00a85a:	00e687b3          	add	a5,a3,a4
1c00a85e:	00d7b6b3          	sltu	a3,a5,a3
1c00a862:	9636                	add	a2,a2,a3
1c00a864:	01f7d713          	srli	a4,a5,0x1f
1c00a868:	0606                	slli	a2,a2,0x1
1c00a86a:	8e59                	or	a2,a2,a4
1c00a86c:	0786                	slli	a5,a5,0x1
1c00a86e:	187d                	addi	a6,a6,-1
1c00a870:	fec8fae3          	bgeu	a7,a2,1c00a864 <pos_libc_prf+0x2be>
1c00a874:	fb0046e3          	bgtz	a6,1c00a820 <pos_libc_prf+0x27a>
1c00a878:	4e11                	li	t3,4
1c00a87a:	01f61693          	slli	a3,a2,0x1f
1c00a87e:	0017d713          	srli	a4,a5,0x1
1c00a882:	8f55                	or	a4,a4,a3
1c00a884:	8b85                	andi	a5,a5,1
1c00a886:	00e78533          	add	a0,a5,a4
1c00a88a:	8205                	srli	a2,a2,0x1
1c00a88c:	00f537b3          	sltu	a5,a0,a5
1c00a890:	00c788b3          	add	a7,a5,a2
1c00a894:	0805                	addi	a6,a6,1
1c00a896:	87aa                	mv	a5,a0
1c00a898:	8646                	mv	a2,a7
1c00a89a:	ffc810e3          	bne	a6,t3,1c00a87a <pos_libc_prf+0x2d4>
1c00a89e:	06700793          	li	a5,103
1c00a8a2:	2a0acee3          	bltz	s5,1c00b35e <pos_libc_prf+0xdb8>
1c00a8a6:	28fd83e3          	beq	s11,a5,1c00b32c <pos_libc_prf+0xd86>
1c00a8aa:	04700793          	li	a5,71
1c00a8ae:	26fd8fe3          	beq	s11,a5,1c00b32c <pos_libc_prf+0xd86>
1c00a8b2:	06600793          	li	a5,102
1c00a8b6:	2cfd85e3          	beq	s11,a5,1c00b380 <pos_libc_prf+0xdda>
1c00a8ba:	001a8813          	addi	a6,s5,1
1c00a8be:	47c1                	li	a5,16
1c00a8c0:	0107d363          	bge	a5,a6,1c00a8c6 <pos_libc_prf+0x320>
1c00a8c4:	4841                	li	a6,16
1c00a8c6:	187d                	addi	a6,a6,-1
1c00a8c8:	4601                	li	a2,0
1c00a8ca:	4781                	li	a5,0
1c00a8cc:	080006b7          	lui	a3,0x8000
1c00a8d0:	4e15                	li	t3,5
1c00a8d2:	5efd                	li	t4,-1
1c00a8d4:	00278713          	addi	a4,a5,2
1c00a8d8:	00f737b3          	sltu	a5,a4,a5
1c00a8dc:	97b6                	add	a5,a5,a3
1c00a8de:	03c7dfb3          	divu	t6,a5,t3
1c00a8e2:	00375593          	srli	a1,a4,0x3
1c00a8e6:	187d                	addi	a6,a6,-1
1c00a8e8:	002f9693          	slli	a3,t6,0x2
1c00a8ec:	96fe                	add	a3,a3,t6
1c00a8ee:	8f95                	sub	a5,a5,a3
1c00a8f0:	07f6                	slli	a5,a5,0x1d
1c00a8f2:	8ddd                	or	a1,a1,a5
1c00a8f4:	03c5d5b3          	divu	a1,a1,t3
1c00a8f8:	00359693          	slli	a3,a1,0x3
1c00a8fc:	00559793          	slli	a5,a1,0x5
1c00a900:	97b6                	add	a5,a5,a3
1c00a902:	8f1d                	sub	a4,a4,a5
1c00a904:	03c757b3          	divu	a5,a4,t3
1c00a908:	81f5                	srli	a1,a1,0x1d
1c00a90a:	95fe                	add	a1,a1,t6
1c00a90c:	96be                	add	a3,a3,a5
1c00a90e:	00f6b733          	sltu	a4,a3,a5
1c00a912:	972e                	add	a4,a4,a1
1c00a914:	01f71593          	slli	a1,a4,0x1f
1c00a918:	0016d793          	srli	a5,a3,0x1
1c00a91c:	8fcd                	or	a5,a5,a1
1c00a91e:	8a85                	andi	a3,a3,1
1c00a920:	97b6                	add	a5,a5,a3
1c00a922:	8305                	srli	a4,a4,0x1
1c00a924:	00d7b6b3          	sltu	a3,a5,a3
1c00a928:	96ba                	add	a3,a3,a4
1c00a92a:	fbd815e3          	bne	a6,t4,1c00a8d4 <pos_libc_prf+0x32e>
1c00a92e:	97aa                	add	a5,a5,a0
1c00a930:	96c6                	add	a3,a3,a7
1c00a932:	00a7b533          	sltu	a0,a5,a0
1c00a936:	00d508b3          	add	a7,a0,a3
1c00a93a:	f00006b7          	lui	a3,0xf0000
1c00a93e:	0116f6b3          	and	a3,a3,a7
1c00a942:	c2b5                	beqz	a3,1c00a9a6 <pos_libc_prf+0x400>
1c00a944:	00278813          	addi	a6,a5,2
1c00a948:	00f836b3          	sltu	a3,a6,a5
1c00a94c:	98b6                	add	a7,a7,a3
1c00a94e:	4e95                	li	t4,5
1c00a950:	03d8de33          	divu	t3,a7,t4
1c00a954:	00385693          	srli	a3,a6,0x3
1c00a958:	0305                	addi	t1,t1,1
1c00a95a:	002e1513          	slli	a0,t3,0x2
1c00a95e:	9572                	add	a0,a0,t3
1c00a960:	40a888b3          	sub	a7,a7,a0
1c00a964:	01d89513          	slli	a0,a7,0x1d
1c00a968:	8ec9                	or	a3,a3,a0
1c00a96a:	03d6d6b3          	divu	a3,a3,t4
1c00a96e:	00369513          	slli	a0,a3,0x3
1c00a972:	00569793          	slli	a5,a3,0x5
1c00a976:	97aa                	add	a5,a5,a0
1c00a978:	40f807b3          	sub	a5,a6,a5
1c00a97c:	03d7d7b3          	divu	a5,a5,t4
1c00a980:	82f5                	srli	a3,a3,0x1d
1c00a982:	96f2                	add	a3,a3,t3
1c00a984:	953e                	add	a0,a0,a5
1c00a986:	00f537b3          	sltu	a5,a0,a5
1c00a98a:	96be                	add	a3,a3,a5
1c00a98c:	01f69813          	slli	a6,a3,0x1f
1c00a990:	00155793          	srli	a5,a0,0x1
1c00a994:	00f867b3          	or	a5,a6,a5
1c00a998:	8905                	andi	a0,a0,1
1c00a99a:	97aa                	add	a5,a5,a0
1c00a99c:	8285                	srli	a3,a3,0x1
1c00a99e:	00a7b533          	sltu	a0,a5,a0
1c00a9a2:	00d508b3          	add	a7,a0,a3
1c00a9a6:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00a9aa:	06600693          	li	a3,102
1c00a9ae:	884e                	mv	a6,s3
1c00a9b0:	4edd8163          	beq	s11,a3,1c00ae92 <pos_libc_prf+0x8ec>
1c00a9b4:	00279693          	slli	a3,a5,0x2
1c00a9b8:	01e7d513          	srli	a0,a5,0x1e
1c00a9bc:	00289e13          	slli	t3,a7,0x2
1c00a9c0:	97b6                	add	a5,a5,a3
1c00a9c2:	01c56e33          	or	t3,a0,t3
1c00a9c6:	00d7b833          	sltu	a6,a5,a3
1c00a9ca:	011e06b3          	add	a3,t3,a7
1c00a9ce:	9836                	add	a6,a6,a3
1c00a9d0:	0806                	slli	a6,a6,0x1
1c00a9d2:	01f7d693          	srli	a3,a5,0x1f
1c00a9d6:	0106e833          	or	a6,a3,a6
1c00a9da:	01c85693          	srli	a3,a6,0x1c
1c00a9de:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00a9e2:	4772                	lw	a4,28(sp)
1c00a9e4:	00af0023          	sb	a0,0(t5)
1c00a9e8:	00179513          	slli	a0,a5,0x1
1c00a9ec:	47d2                	lw	a5,20(sp)
1c00a9ee:	00d036b3          	snez	a3,a3
1c00a9f2:	01576bb3          	or	s7,a4,s5
1c00a9f6:	00f87833          	and	a6,a6,a5
1c00a9fa:	40d30333          	sub	t1,t1,a3
1c00a9fe:	060b8463          	beqz	s7,1c00aa66 <pos_libc_prf+0x4c0>
1c00aa02:	02e00793          	li	a5,46
1c00aa06:	00ff00a3          	sb	a5,1(t5)
1c00aa0a:	002f0993          	addi	s3,t5,2
1c00aa0e:	040a8c63          	beqz	s5,1c00aa66 <pos_libc_prf+0x4c0>
1c00aa12:	002a8793          	addi	a5,s5,2
1c00aa16:	9f3e                	add	t5,t5,a5
1c00aa18:	88ce                	mv	a7,s3
1c00aa1a:	4ebd                	li	t4,15
1c00aa1c:	03000f93          	li	t6,48
1c00aa20:	00251793          	slli	a5,a0,0x2
1c00aa24:	01e55693          	srli	a3,a0,0x1e
1c00aa28:	00281713          	slli	a4,a6,0x2
1c00aa2c:	00a785b3          	add	a1,a5,a0
1c00aa30:	8f55                	or	a4,a4,a3
1c00aa32:	9742                	add	a4,a4,a6
1c00aa34:	00f5b7b3          	sltu	a5,a1,a5
1c00aa38:	97ba                	add	a5,a5,a4
1c00aa3a:	0786                	slli	a5,a5,0x1
1c00aa3c:	01f5d713          	srli	a4,a1,0x1f
1c00aa40:	8fd9                	or	a5,a5,a4
1c00aa42:	01c7d713          	srli	a4,a5,0x1c
1c00aa46:	03070713          	addi	a4,a4,48
1c00aa4a:	0885                	addi	a7,a7,1
1c00aa4c:	53d05763          	blez	t4,1c00af7a <pos_libc_prf+0x9d4>
1c00aa50:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00aa54:	4752                	lw	a4,20(sp)
1c00aa56:	1efd                	addi	t4,t4,-1
1c00aa58:	00159513          	slli	a0,a1,0x1
1c00aa5c:	00e7f833          	and	a6,a5,a4
1c00aa60:	fd1f10e3          	bne	t5,a7,1c00aa20 <pos_libc_prf+0x47a>
1c00aa64:	99d6                	add	s3,s3,s5
1c00aa66:	4e061c63          	bnez	a2,1c00af5e <pos_libc_prf+0x9b8>
1c00aa6a:	fdfdf793          	andi	a5,s11,-33
1c00aa6e:	04500693          	li	a3,69
1c00aa72:	00d781e3          	beq	a5,a3,1c00b274 <pos_libc_prf+0xcce>
1c00aa76:	105c                	addi	a5,sp,36
1c00aa78:	00098023          	sb	zero,0(s3)
1c00aa7c:	40f989b3          	sub	s3,s3,a5
1c00aa80:	aa05                	j	1c00abb0 <pos_libc_prf+0x60a>
1c00aa82:	b80c0fe3          	beqz	s8,1c00a620 <pos_libc_prf+0x7a>
1c00aa86:	b931                	j	1c00a6a2 <pos_libc_prf+0xfc>
1c00aa88:	016c0863          	beq	s8,s6,1c00aa98 <pos_libc_prf+0x4f2>
1c00aa8c:	c15c1be3          	bne	s8,s5,1c00a6a2 <pos_libc_prf+0xfc>
1c00aa90:	03000913          	li	s2,48
1c00aa94:	8da6                	mv	s11,s1
1c00aa96:	b139                	j	1c00a6a4 <pos_libc_prf+0xfe>
1c00aa98:	4785                	li	a5,1
1c00aa9a:	c03e                	sw	a5,0(sp)
1c00aa9c:	8da6                	mv	s11,s1
1c00aa9e:	b119                	j	1c00a6a4 <pos_libc_prf+0xfe>
1c00aaa0:	4785                	li	a5,1
1c00aaa2:	c23e                	sw	a5,4(sp)
1c00aaa4:	8da6                	mv	s11,s1
1c00aaa6:	befd                	j	1c00a6a4 <pos_libc_prf+0xfe>
1c00aaa8:	4785                	li	a5,1
1c00aaaa:	c43e                	sw	a5,8(sp)
1c00aaac:	8da6                	mv	s11,s1
1c00aaae:	bedd                	j	1c00a6a4 <pos_libc_prf+0xfe>
1c00aab0:	0b85                	addi	s7,s7,1
1c00aab2:	002a1793          	slli	a5,s4,0x2
1c00aab6:	97d2                	add	a5,a5,s4
1c00aab8:	0786                	slli	a5,a5,0x1
1c00aaba:	97ee                	add	a5,a5,s11
1c00aabc:	000bcd83          	lbu	s11,0(s7)
1c00aac0:	fd078a13          	addi	s4,a5,-48
1c00aac4:	8662                	mv	a2,s8
1c00aac6:	fd0d8793          	addi	a5,s11,-48
1c00aaca:	8c5e                	mv	s8,s7
1c00aacc:	fef572e3          	bgeu	a0,a5,1c00aab0 <pos_libc_prf+0x50a>
1c00aad0:	0609                	addi	a2,a2,2
1c00aad2:	0c800793          	li	a5,200
1c00aad6:	c147f1e3          	bgeu	a5,s4,1c00a6d8 <pos_libc_prf+0x132>
1c00aada:	0c800a13          	li	s4,200
1c00aade:	beed                	j	1c00a6d8 <pos_libc_prf+0x132>
1c00aae0:	0c800793          	li	a5,200
1c00aae4:	b3b7dae3          	bge	a5,s11,1c00a618 <pos_libc_prf+0x72>
1c00aae8:	547d                	li	s0,-1
1c00aaea:	be1d                	j	1c00a620 <pos_libc_prf+0x7a>
1c00aaec:	47b2                	lw	a5,12(sp)
1c00aaee:	0007aa03          	lw	s4,0(a5)
1c00aaf2:	00478693          	addi	a3,a5,4
1c00aaf6:	000a5663          	bgez	s4,1c00ab02 <pos_libc_prf+0x55c>
1c00aafa:	4785                	li	a5,1
1c00aafc:	41400a33          	neg	s4,s4
1c00ab00:	c03e                	sw	a5,0(sp)
1c00ab02:	000bcd83          	lbu	s11,0(s7)
1c00ab06:	c636                	sw	a3,12(sp)
1c00ab08:	002c0613          	addi	a2,s8,2
1c00ab0c:	b7d9                	j	1c00aad2 <pos_libc_prf+0x52c>
1c00ab0e:	b00d89e3          	beqz	s11,1c00a620 <pos_libc_prf+0x7a>
1c00ab12:	b619                	j	1c00a618 <pos_libc_prf+0x72>
1c00ab14:	06400793          	li	a5,100
1c00ab18:	4afd8363          	beq	s11,a5,1c00afbe <pos_libc_prf+0xa18>
1c00ab1c:	19b7d963          	bge	a5,s11,1c00acae <pos_libc_prf+0x708>
1c00ab20:	f9bd8793          	addi	a5,s11,-101
1c00ab24:	4689                	li	a3,2
1c00ab26:	aef6e9e3          	bltu	a3,a5,1c00a618 <pos_libc_prf+0x72>
1c00ab2a:	47b2                	lw	a5,12(sp)
1c00ab2c:	7ff00893          	li	a7,2047
1c00ab30:	00778b13          	addi	s6,a5,7
1c00ab34:	ff8b7b13          	andi	s6,s6,-8
1c00ab38:	004b2783          	lw	a5,4(s6)
1c00ab3c:	000b2603          	lw	a2,0(s6)
1c00ab40:	0b21                	addi	s6,s6,8
1c00ab42:	00b79693          	slli	a3,a5,0xb
1c00ab46:	01565813          	srli	a6,a2,0x15
1c00ab4a:	0147d513          	srli	a0,a5,0x14
1c00ab4e:	00d866b3          	or	a3,a6,a3
1c00ab52:	0686                	slli	a3,a3,0x1
1c00ab54:	7ff57813          	andi	a6,a0,2047
1c00ab58:	00b61313          	slli	t1,a2,0xb
1c00ab5c:	0016d513          	srli	a0,a3,0x1
1c00ab60:	86be                	mv	a3,a5
1c00ab62:	c11818e3          	bne	a6,a7,1c00a772 <pos_libc_prf+0x1cc>
1c00ab66:	105c                	addi	a5,sp,36
1c00ab68:	0006d863          	bgez	a3,1c00ab78 <pos_libc_prf+0x5d2>
1c00ab6c:	02d00793          	li	a5,45
1c00ab70:	02f10223          	sb	a5,36(sp)
1c00ab74:	02510793          	addi	a5,sp,37
1c00ab78:	00a36633          	or	a2,t1,a0
1c00ab7c:	fbfd8593          	addi	a1,s11,-65
1c00ab80:	00378993          	addi	s3,a5,3
1c00ab84:	46e5                	li	a3,25
1c00ab86:	0c0612e3          	bnez	a2,1c00b44a <pos_libc_prf+0xea4>
1c00ab8a:	10b6e5e3          	bltu	a3,a1,1c00b494 <pos_libc_prf+0xeee>
1c00ab8e:	04900693          	li	a3,73
1c00ab92:	00d78023          	sb	a3,0(a5)
1c00ab96:	04e00693          	li	a3,78
1c00ab9a:	00d780a3          	sb	a3,1(a5)
1c00ab9e:	04600693          	li	a3,70
1c00aba2:	00d78123          	sb	a3,2(a5)
1c00aba6:	000781a3          	sb	zero,3(a5)
1c00abaa:	105c                	addi	a5,sp,36
1c00abac:	40f989b3          	sub	s3,s3,a5
1c00abb0:	47a2                	lw	a5,8(sp)
1c00abb2:	4712                	lw	a4,4(sp)
1c00abb4:	8fd9                	or	a5,a5,a4
1c00abb6:	ce3e                	sw	a5,28(sp)
1c00abb8:	5e079b63          	bnez	a5,1c00b1ae <pos_libc_prf+0xc08>
1c00abbc:	02414683          	lbu	a3,36(sp)
1c00abc0:	02d00793          	li	a5,45
1c00abc4:	5ef68563          	beq	a3,a5,1c00b1ae <pos_libc_prf+0xc08>
1c00abc8:	0c800793          	li	a5,200
1c00abcc:	0d37d863          	bge	a5,s3,1c00ac9c <pos_libc_prf+0x6f6>
1c00abd0:	547d                	li	s0,-1
1c00abd2:	b4b9                	j	1c00a620 <pos_libc_prf+0x7a>
1c00abd4:	07000793          	li	a5,112
1c00abd8:	46fd8f63          	beq	s11,a5,1c00b056 <pos_libc_prf+0xab0>
1c00abdc:	1bb7d663          	bge	a5,s11,1c00ad88 <pos_libc_prf+0x7e2>
1c00abe0:	07500793          	li	a5,117
1c00abe4:	52fd8763          	beq	s11,a5,1c00b112 <pos_libc_prf+0xb6c>
1c00abe8:	07800793          	li	a5,120
1c00abec:	16fd9163          	bne	s11,a5,1c00ad4e <pos_libc_prf+0x7a8>
1c00abf0:	47b2                	lw	a5,12(sp)
1c00abf2:	1054                	addi	a3,sp,36
1c00abf4:	4390                	lw	a2,0(a5)
1c00abf6:	00478b13          	addi	s6,a5,4
1c00abfa:	47f2                	lw	a5,28(sp)
1c00abfc:	28079163          	bnez	a5,1c00ae7e <pos_libc_prf+0x8d8>
1c00ac00:	87b6                	mv	a5,a3
1c00ac02:	4ea5                	li	t4,9
1c00ac04:	4e3d                	li	t3,15
1c00ac06:	a039                	j	1c00ac14 <pos_libc_prf+0x66e>
1c00ac08:	ff098fa3          	sb	a6,-1(s3)
1c00ac0c:	02ce7663          	bgeu	t3,a2,1c00ac38 <pos_libc_prf+0x692>
1c00ac10:	862a                	mv	a2,a0
1c00ac12:	87ce                	mv	a5,s3
1c00ac14:	00f67593          	andi	a1,a2,15
1c00ac18:	00178993          	addi	s3,a5,1
1c00ac1c:	05758813          	addi	a6,a1,87
1c00ac20:	03058713          	addi	a4,a1,48
1c00ac24:	00465513          	srli	a0,a2,0x4
1c00ac28:	febee0e3          	bltu	t4,a1,1c00ac08 <pos_libc_prf+0x662>
1c00ac2c:	00e78023          	sb	a4,0(a5)
1c00ac30:	00178993          	addi	s3,a5,1
1c00ac34:	fcce6ee3          	bltu	t3,a2,1c00ac10 <pos_libc_prf+0x66a>
1c00ac38:	40d98633          	sub	a2,s3,a3
1c00ac3c:	01565c63          	bge	a2,s5,1c00ac54 <pos_libc_prf+0x6ae>
1c00ac40:	03000513          	li	a0,48
1c00ac44:	87ce                	mv	a5,s3
1c00ac46:	0985                	addi	s3,s3,1
1c00ac48:	40d98733          	sub	a4,s3,a3
1c00ac4c:	fea98fa3          	sb	a0,-1(s3)
1c00ac50:	ff574ae3          	blt	a4,s5,1c00ac44 <pos_libc_prf+0x69e>
1c00ac54:	00098023          	sb	zero,0(s3)
1c00ac58:	00f6fe63          	bgeu	a3,a5,1c00ac74 <pos_libc_prf+0x6ce>
1c00ac5c:	0006c603          	lbu	a2,0(a3)
1c00ac60:	0007c703          	lbu	a4,0(a5)
1c00ac64:	0685                	addi	a3,a3,1
1c00ac66:	00c78023          	sb	a2,0(a5)
1c00ac6a:	fee68fa3          	sb	a4,-1(a3)
1c00ac6e:	17fd                	addi	a5,a5,-1
1c00ac70:	fef6e6e3          	bltu	a3,a5,1c00ac5c <pos_libc_prf+0x6b6>
1c00ac74:	05800793          	li	a5,88
1c00ac78:	66fd8463          	beq	s11,a5,1c00b2e0 <pos_libc_prf+0xd3a>
1c00ac7c:	105c                	addi	a5,sp,36
1c00ac7e:	40f989b3          	sub	s3,s3,a5
1c00ac82:	47f2                	lw	a5,28(sp)
1c00ac84:	c399                	beqz	a5,1c00ac8a <pos_libc_prf+0x6e4>
1c00ac86:	4789                	li	a5,2
1c00ac88:	ce3e                	sw	a5,28(sp)
1c00ac8a:	57fd                	li	a5,-1
1c00ac8c:	f2fa8ee3          	beq	s5,a5,1c00abc8 <pos_libc_prf+0x622>
1c00ac90:	0c800793          	li	a5,200
1c00ac94:	e537cae3          	blt	a5,s3,1c00aae8 <pos_libc_prf+0x542>
1c00ac98:	02000913          	li	s2,32
1c00ac9c:	00198613          	addi	a2,s3,1
1c00aca0:	0349c963          	blt	s3,s4,1c00acd2 <pos_libc_prf+0x72c>
1c00aca4:	c65a                	sw	s6,12(sp)
1c00aca6:	8a4e                	mv	s4,s3
1c00aca8:	1a0a1663          	bnez	s4,1c00ae54 <pos_libc_prf+0x8ae>
1c00acac:	b2b5                	j	1c00a618 <pos_libc_prf+0x72>
1c00acae:	06300793          	li	a5,99
1c00acb2:	96fd93e3          	bne	s11,a5,1c00a618 <pos_libc_prf+0x72>
1c00acb6:	4732                	lw	a4,12(sp)
1c00acb8:	020102a3          	sb	zero,37(sp)
1c00acbc:	4785                	li	a5,1
1c00acbe:	4314                	lw	a3,0(a4)
1c00acc0:	00470b13          	addi	s6,a4,4
1c00acc4:	02d10223          	sb	a3,36(sp)
1c00acc8:	1947d463          	bge	a5,s4,1c00ae50 <pos_libc_prf+0x8aa>
1c00accc:	4609                	li	a2,2
1c00acce:	4985                	li	s3,1
1c00acd0:	ce02                	sw	zero,28(sp)
1c00acd2:	4782                	lw	a5,0(sp)
1c00acd4:	4e078463          	beqz	a5,1c00b1bc <pos_libc_prf+0xc16>
1c00acd8:	413a07b3          	sub	a5,s4,s3
1c00acdc:	4585                	li	a1,1
1c00acde:	0149d363          	bge	s3,s4,1c00ace4 <pos_libc_prf+0x73e>
1c00ace2:	85be                	mv	a1,a5
1c00ace4:	17fd                	addi	a5,a5,-1
1c00ace6:	0037b793          	sltiu	a5,a5,3
1c00acea:	eb95                	bnez	a5,1c00ad1e <pos_libc_prf+0x778>
1c00acec:	0349d963          	bge	s3,s4,1c00ad1e <pos_libc_prf+0x778>
1c00acf0:	105c                	addi	a5,sp,36
1c00acf2:	97ce                	add	a5,a5,s3
1c00acf4:	ffc5f613          	andi	a2,a1,-4
1c00acf8:	963e                	add	a2,a2,a5
1c00acfa:	02000693          	li	a3,32
1c00acfe:	00d78023          	sb	a3,0(a5)
1c00ad02:	00d780a3          	sb	a3,1(a5)
1c00ad06:	00d78123          	sb	a3,2(a5)
1c00ad0a:	00d781a3          	sb	a3,3(a5)
1c00ad0e:	0791                	addi	a5,a5,4
1c00ad10:	fef617e3          	bne	a2,a5,1c00acfe <pos_libc_prf+0x758>
1c00ad14:	ffc5f793          	andi	a5,a1,-4
1c00ad18:	99be                	add	s3,s3,a5
1c00ad1a:	02b78663          	beq	a5,a1,1c00ad46 <pos_libc_prf+0x7a0>
1c00ad1e:	199c                	addi	a5,sp,240
1c00ad20:	97ce                	add	a5,a5,s3
1c00ad22:	02000693          	li	a3,32
1c00ad26:	f2d78a23          	sb	a3,-204(a5)
1c00ad2a:	00198793          	addi	a5,s3,1
1c00ad2e:	0147dc63          	bge	a5,s4,1c00ad46 <pos_libc_prf+0x7a0>
1c00ad32:	1998                	addi	a4,sp,240
1c00ad34:	97ba                	add	a5,a5,a4
1c00ad36:	f2d78a23          	sb	a3,-204(a5)
1c00ad3a:	0989                	addi	s3,s3,2
1c00ad3c:	0149d563          	bge	s3,s4,1c00ad46 <pos_libc_prf+0x7a0>
1c00ad40:	99ba                	add	s3,s3,a4
1c00ad42:	f2d98a23          	sb	a3,-204(s3)
1c00ad46:	c65a                	sw	s6,12(sp)
1c00ad48:	100a1663          	bnez	s4,1c00ae54 <pos_libc_prf+0x8ae>
1c00ad4c:	b0f1                	j	1c00a618 <pos_libc_prf+0x72>
1c00ad4e:	07300793          	li	a5,115
1c00ad52:	d8fd97e3          	bne	s11,a5,1c00aae0 <pos_libc_prf+0x53a>
1c00ad56:	47b2                	lw	a5,12(sp)
1c00ad58:	4981                	li	s3,0
1c00ad5a:	0c800693          	li	a3,200
1c00ad5e:	438c                	lw	a1,0(a5)
1c00ad60:	00478b13          	addi	s6,a5,4
1c00ad64:	a021                	j	1c00ad6c <pos_libc_prf+0x7c6>
1c00ad66:	0985                	addi	s3,s3,1
1c00ad68:	6ad98163          	beq	s3,a3,1c00b40a <pos_libc_prf+0xe64>
1c00ad6c:	013587b3          	add	a5,a1,s3
1c00ad70:	0007c783          	lbu	a5,0(a5)
1c00ad74:	fbed                	bnez	a5,1c00ad66 <pos_libc_prf+0x7c0>
1c00ad76:	000ac563          	bltz	s5,1c00ad80 <pos_libc_prf+0x7da>
1c00ad7a:	013ad363          	bge	s5,s3,1c00ad80 <pos_libc_prf+0x7da>
1c00ad7e:	89d6                	mv	s3,s5
1c00ad80:	5a099163          	bnez	s3,1c00b322 <pos_libc_prf+0xd7c>
1c00ad84:	c65a                	sw	s6,12(sp)
1c00ad86:	b849                	j	1c00a618 <pos_libc_prf+0x72>
1c00ad88:	06e00793          	li	a5,110
1c00ad8c:	36fd8c63          	beq	s11,a5,1c00b104 <pos_libc_prf+0xb5e>
1c00ad90:	06f00793          	li	a5,111
1c00ad94:	88fd92e3          	bne	s11,a5,1c00a618 <pos_libc_prf+0x72>
1c00ad98:	47b2                	lw	a5,12(sp)
1c00ad9a:	4390                	lw	a2,0(a5)
1c00ad9c:	00478b13          	addi	s6,a5,4
1c00ada0:	47f2                	lw	a5,28(sp)
1c00ada2:	c7f5                	beqz	a5,1c00ae8e <pos_libc_prf+0x8e8>
1c00ada4:	03000793          	li	a5,48
1c00ada8:	02f10223          	sb	a5,36(sp)
1c00adac:	02510693          	addi	a3,sp,37
1c00adb0:	60060b63          	beqz	a2,1c00b3c6 <pos_libc_prf+0xe20>
1c00adb4:	89b6                	mv	s3,a3
1c00adb6:	481d                	li	a6,7
1c00adb8:	00767713          	andi	a4,a2,7
1c00adbc:	03070713          	addi	a4,a4,48
1c00adc0:	85b2                	mv	a1,a2
1c00adc2:	00e98023          	sb	a4,0(s3)
1c00adc6:	87ce                	mv	a5,s3
1c00adc8:	820d                	srli	a2,a2,0x3
1c00adca:	0985                	addi	s3,s3,1
1c00adcc:	feb866e3          	bltu	a6,a1,1c00adb8 <pos_libc_prf+0x812>
1c00add0:	40d98633          	sub	a2,s3,a3
1c00add4:	01565c63          	bge	a2,s5,1c00adec <pos_libc_prf+0x846>
1c00add8:	03000593          	li	a1,48
1c00addc:	87ce                	mv	a5,s3
1c00adde:	0985                	addi	s3,s3,1
1c00ade0:	40d98733          	sub	a4,s3,a3
1c00ade4:	feb98fa3          	sb	a1,-1(s3)
1c00ade8:	ff574ae3          	blt	a4,s5,1c00addc <pos_libc_prf+0x836>
1c00adec:	00098023          	sb	zero,0(s3)
1c00adf0:	00f6fe63          	bgeu	a3,a5,1c00ae0c <pos_libc_prf+0x866>
1c00adf4:	0006c603          	lbu	a2,0(a3)
1c00adf8:	0007c703          	lbu	a4,0(a5)
1c00adfc:	0685                	addi	a3,a3,1
1c00adfe:	00c78023          	sb	a2,0(a5)
1c00ae02:	fee68fa3          	sb	a4,-1(a3)
1c00ae06:	17fd                	addi	a5,a5,-1
1c00ae08:	fef6e6e3          	bltu	a3,a5,1c00adf4 <pos_libc_prf+0x84e>
1c00ae0c:	1058                	addi	a4,sp,36
1c00ae0e:	57fd                	li	a5,-1
1c00ae10:	40e989b3          	sub	s3,s3,a4
1c00ae14:	36fa8763          	beq	s5,a5,1c00b182 <pos_libc_prf+0xbdc>
1c00ae18:	0c800793          	li	a5,200
1c00ae1c:	cd37c6e3          	blt	a5,s3,1c00aae8 <pos_libc_prf+0x542>
1c00ae20:	ce02                	sw	zero,28(sp)
1c00ae22:	bd9d                	j	1c00ac98 <pos_libc_prf+0x6f2>
1c00ae24:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00ae28:	02a00793          	li	a5,42
1c00ae2c:	00160693          	addi	a3,a2,1
1c00ae30:	14f59b63          	bne	a1,a5,1c00af86 <pos_libc_prf+0x9e0>
1c00ae34:	47b2                	lw	a5,12(sp)
1c00ae36:	00164d83          	lbu	s11,1(a2)
1c00ae3a:	0609                	addi	a2,a2,2
1c00ae3c:	0007aa83          	lw	s5,0(a5)
1c00ae40:	0791                	addi	a5,a5,4
1c00ae42:	c63e                	sw	a5,12(sp)
1c00ae44:	0c800793          	li	a5,200
1c00ae48:	8957dde3          	bge	a5,s5,1c00a6e2 <pos_libc_prf+0x13c>
1c00ae4c:	5afd                	li	s5,-1
1c00ae4e:	b851                	j	1c00a6e2 <pos_libc_prf+0x13c>
1c00ae50:	c65a                	sw	s6,12(sp)
1c00ae52:	4a05                	li	s4,1
1c00ae54:	02410913          	addi	s2,sp,36
1c00ae58:	59fd                	li	s3,-1
1c00ae5a:	41240ab3          	sub	s5,s0,s2
1c00ae5e:	9a4a                	add	s4,s4,s2
1c00ae60:	a029                	j	1c00ae6a <pos_libc_prf+0x8c4>
1c00ae62:	012a8433          	add	s0,s5,s2
1c00ae66:	fb490963          	beq	s2,s4,1c00a618 <pos_libc_prf+0x72>
1c00ae6a:	00094503          	lbu	a0,0(s2)
1c00ae6e:	85a6                	mv	a1,s1
1c00ae70:	0905                	addi	s2,s2,1
1c00ae72:	9c82                	jalr	s9
1c00ae74:	ff3517e3          	bne	a0,s3,1c00ae62 <pos_libc_prf+0x8bc>
1c00ae78:	547d                	li	s0,-1
1c00ae7a:	fa6ff06f          	j	1c00a620 <pos_libc_prf+0x7a>
1c00ae7e:	77e1                	lui	a5,0xffff8
1c00ae80:	8307c793          	xori	a5,a5,-2000
1c00ae84:	02f11223          	sh	a5,36(sp)
1c00ae88:	02610693          	addi	a3,sp,38
1c00ae8c:	bb95                	j	1c00ac00 <pos_libc_prf+0x65a>
1c00ae8e:	1054                	addi	a3,sp,36
1c00ae90:	b715                	j	1c00adb4 <pos_libc_prf+0x80e>
1c00ae92:	5c605a63          	blez	t1,1c00b466 <pos_libc_prf+0xec0>
1c00ae96:	006f09b3          	add	s3,t5,t1
1c00ae9a:	4541                	li	a0,16
1c00ae9c:	03000e13          	li	t3,48
1c00aea0:	00279713          	slli	a4,a5,0x2
1c00aea4:	01e7d593          	srli	a1,a5,0x1e
1c00aea8:	00289693          	slli	a3,a7,0x2
1c00aeac:	00f70333          	add	t1,a4,a5
1c00aeb0:	8ecd                	or	a3,a3,a1
1c00aeb2:	96c6                	add	a3,a3,a7
1c00aeb4:	00e33733          	sltu	a4,t1,a4
1c00aeb8:	9736                	add	a4,a4,a3
1c00aeba:	0706                	slli	a4,a4,0x1
1c00aebc:	01f35693          	srli	a3,t1,0x1f
1c00aec0:	8f55                	or	a4,a4,a3
1c00aec2:	01c75693          	srli	a3,a4,0x1c
1c00aec6:	03068693          	addi	a3,a3,48
1c00aeca:	4ea05463          	blez	a0,1c00b3b2 <pos_libc_prf+0xe0c>
1c00aece:	fed80fa3          	sb	a3,-1(a6)
1c00aed2:	46d2                	lw	a3,20(sp)
1c00aed4:	157d                	addi	a0,a0,-1
1c00aed6:	00131793          	slli	a5,t1,0x1
1c00aeda:	00d778b3          	and	a7,a4,a3
1c00aede:	4d099e63          	bne	s3,a6,1c00b3ba <pos_libc_prf+0xe14>
1c00aee2:	4301                	li	t1,0
1c00aee4:	4772                	lw	a4,28(sp)
1c00aee6:	01576bb3          	or	s7,a4,s5
1c00aeea:	060b8863          	beqz	s7,1c00af5a <pos_libc_prf+0x9b4>
1c00aeee:	02e00693          	li	a3,46
1c00aef2:	00d98023          	sb	a3,0(s3)
1c00aef6:	00198e93          	addi	t4,s3,1
1c00aefa:	5c0a8763          	beqz	s5,1c00b4c8 <pos_libc_prf+0xf22>
1c00aefe:	001a8693          	addi	a3,s5,1
1c00af02:	99b6                	add	s3,s3,a3
1c00af04:	8876                	mv	a6,t4
1c00af06:	03000f13          	li	t5,48
1c00af0a:	0805                	addi	a6,a6,1
1c00af0c:	4a031963          	bnez	t1,1c00b3be <pos_libc_prf+0xe18>
1c00af10:	00279713          	slli	a4,a5,0x2
1c00af14:	01e7d593          	srli	a1,a5,0x1e
1c00af18:	00289693          	slli	a3,a7,0x2
1c00af1c:	00f70e33          	add	t3,a4,a5
1c00af20:	8ecd                	or	a3,a3,a1
1c00af22:	96c6                	add	a3,a3,a7
1c00af24:	00ee3733          	sltu	a4,t3,a4
1c00af28:	9736                	add	a4,a4,a3
1c00af2a:	0706                	slli	a4,a4,0x1
1c00af2c:	01fe5693          	srli	a3,t3,0x1f
1c00af30:	8f55                	or	a4,a4,a3
1c00af32:	01c75593          	srli	a1,a4,0x1c
1c00af36:	03000693          	li	a3,48
1c00af3a:	00a05a63          	blez	a0,1c00af4e <pos_libc_prf+0x9a8>
1c00af3e:	03058693          	addi	a3,a1,48
1c00af42:	45d2                	lw	a1,20(sp)
1c00af44:	157d                	addi	a0,a0,-1
1c00af46:	001e1793          	slli	a5,t3,0x1
1c00af4a:	00b778b3          	and	a7,a4,a1
1c00af4e:	fed80fa3          	sb	a3,-1(a6)
1c00af52:	fb099ce3          	bne	s3,a6,1c00af0a <pos_libc_prf+0x964>
1c00af56:	015e89b3          	add	s3,t4,s5
1c00af5a:	b0060ee3          	beqz	a2,1c00aa76 <pos_libc_prf+0x4d0>
1c00af5e:	03000613          	li	a2,48
1c00af62:	fff9c783          	lbu	a5,-1(s3)
1c00af66:	86ce                	mv	a3,s3
1c00af68:	19fd                	addi	s3,s3,-1
1c00af6a:	fec78ce3          	beq	a5,a2,1c00af62 <pos_libc_prf+0x9bc>
1c00af6e:	02e00613          	li	a2,46
1c00af72:	aec78ce3          	beq	a5,a2,1c00aa6a <pos_libc_prf+0x4c4>
1c00af76:	89b6                	mv	s3,a3
1c00af78:	bccd                	j	1c00aa6a <pos_libc_prf+0x4c4>
1c00af7a:	fff88fa3          	sb	t6,-1(a7)
1c00af7e:	ab1f11e3          	bne	t5,a7,1c00aa20 <pos_libc_prf+0x47a>
1c00af82:	99d6                	add	s3,s3,s5
1c00af84:	b4cd                	j	1c00aa66 <pos_libc_prf+0x4c0>
1c00af86:	fd058713          	addi	a4,a1,-48
1c00af8a:	47a5                	li	a5,9
1c00af8c:	8dae                	mv	s11,a1
1c00af8e:	4a81                	li	s5,0
1c00af90:	4525                	li	a0,9
1c00af92:	00e7f463          	bgeu	a5,a4,1c00af9a <pos_libc_prf+0x9f4>
1c00af96:	a199                	j	1c00b3dc <pos_libc_prf+0xe36>
1c00af98:	0685                	addi	a3,a3,1
1c00af9a:	002a9793          	slli	a5,s5,0x2
1c00af9e:	97d6                	add	a5,a5,s5
1c00afa0:	0786                	slli	a5,a5,0x1
1c00afa2:	97ee                	add	a5,a5,s11
1c00afa4:	0006cd83          	lbu	s11,0(a3)
1c00afa8:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00afac:	8732                	mv	a4,a2
1c00afae:	fd0d8793          	addi	a5,s11,-48
1c00afb2:	8636                	mv	a2,a3
1c00afb4:	fef572e3          	bgeu	a0,a5,1c00af98 <pos_libc_prf+0x9f2>
1c00afb8:	00270613          	addi	a2,a4,2
1c00afbc:	b561                	j	1c00ae44 <pos_libc_prf+0x89e>
1c00afbe:	47b2                	lw	a5,12(sp)
1c00afc0:	0007a303          	lw	t1,0(a5)
1c00afc4:	00478b13          	addi	s6,a5,4
1c00afc8:	2e034263          	bltz	t1,1c00b2ac <pos_libc_prf+0xd06>
1c00afcc:	47a2                	lw	a5,8(sp)
1c00afce:	861a                	mv	a2,t1
1c00afd0:	3c078663          	beqz	a5,1c00b39c <pos_libc_prf+0xdf6>
1c00afd4:	02b00793          	li	a5,43
1c00afd8:	02f10223          	sb	a5,36(sp)
1c00afdc:	02510693          	addi	a3,sp,37
1c00afe0:	89b6                	mv	s3,a3
1c00afe2:	4529                	li	a0,10
1c00afe4:	48a5                	li	a7,9
1c00afe6:	02a67733          	remu	a4,a2,a0
1c00afea:	87ce                	mv	a5,s3
1c00afec:	0985                	addi	s3,s3,1
1c00afee:	85b2                	mv	a1,a2
1c00aff0:	03070713          	addi	a4,a4,48
1c00aff4:	fee98fa3          	sb	a4,-1(s3)
1c00aff8:	02a65633          	divu	a2,a2,a0
1c00affc:	feb8e5e3          	bltu	a7,a1,1c00afe6 <pos_libc_prf+0xa40>
1c00b000:	40d98633          	sub	a2,s3,a3
1c00b004:	01565c63          	bge	a2,s5,1c00b01c <pos_libc_prf+0xa76>
1c00b008:	03000593          	li	a1,48
1c00b00c:	87ce                	mv	a5,s3
1c00b00e:	0985                	addi	s3,s3,1
1c00b010:	40d98733          	sub	a4,s3,a3
1c00b014:	feb98fa3          	sb	a1,-1(s3)
1c00b018:	ff574ae3          	blt	a4,s5,1c00b00c <pos_libc_prf+0xa66>
1c00b01c:	00098023          	sb	zero,0(s3)
1c00b020:	00f6fe63          	bgeu	a3,a5,1c00b03c <pos_libc_prf+0xa96>
1c00b024:	0006c603          	lbu	a2,0(a3)
1c00b028:	0007c703          	lbu	a4,0(a5)
1c00b02c:	0685                	addi	a3,a3,1
1c00b02e:	00c78023          	sb	a2,0(a5)
1c00b032:	fee68fa3          	sb	a4,-1(a3)
1c00b036:	17fd                	addi	a5,a5,-1
1c00b038:	fef6e6e3          	bltu	a3,a5,1c00b024 <pos_libc_prf+0xa7e>
1c00b03c:	4712                	lw	a4,4(sp)
1c00b03e:	47a2                	lw	a5,8(sp)
1c00b040:	8fd9                	or	a5,a5,a4
1c00b042:	ce3e                	sw	a5,28(sp)
1c00b044:	1058                	addi	a4,sp,36
1c00b046:	40e989b3          	sub	s3,s3,a4
1c00b04a:	c40790e3          	bnez	a5,1c00ac8a <pos_libc_prf+0x6e4>
1c00b04e:	01f35793          	srli	a5,t1,0x1f
1c00b052:	ce3e                	sw	a5,28(sp)
1c00b054:	b91d                	j	1c00ac8a <pos_libc_prf+0x6e4>
1c00b056:	47b2                	lw	a5,12(sp)
1c00b058:	02610613          	addi	a2,sp,38
1c00b05c:	4ea5                	li	t4,9
1c00b05e:	438c                	lw	a1,0(a5)
1c00b060:	00478b13          	addi	s6,a5,4
1c00b064:	77e1                	lui	a5,0xffff8
1c00b066:	8307c793          	xori	a5,a5,-2000
1c00b06a:	02f11223          	sh	a5,36(sp)
1c00b06e:	4e3d                	li	t3,15
1c00b070:	87b2                	mv	a5,a2
1c00b072:	a039                	j	1c00b080 <pos_libc_prf+0xada>
1c00b074:	ff168fa3          	sb	a7,-1(a3)
1c00b078:	02be7663          	bgeu	t3,a1,1c00b0a4 <pos_libc_prf+0xafe>
1c00b07c:	85c2                	mv	a1,a6
1c00b07e:	87b6                	mv	a5,a3
1c00b080:	00f5f513          	andi	a0,a1,15
1c00b084:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00b088:	05750893          	addi	a7,a0,87
1c00b08c:	03050713          	addi	a4,a0,48
1c00b090:	0045d813          	srli	a6,a1,0x4
1c00b094:	feaee0e3          	bltu	t4,a0,1c00b074 <pos_libc_prf+0xace>
1c00b098:	00e78023          	sb	a4,0(a5)
1c00b09c:	00178693          	addi	a3,a5,1
1c00b0a0:	fcbe6ee3          	bltu	t3,a1,1c00b07c <pos_libc_prf+0xad6>
1c00b0a4:	40c689b3          	sub	s3,a3,a2
1c00b0a8:	459d                	li	a1,7
1c00b0aa:	0135cc63          	blt	a1,s3,1c00b0c2 <pos_libc_prf+0xb1c>
1c00b0ae:	03000513          	li	a0,48
1c00b0b2:	87b6                	mv	a5,a3
1c00b0b4:	0685                	addi	a3,a3,1
1c00b0b6:	40c689b3          	sub	s3,a3,a2
1c00b0ba:	fea68fa3          	sb	a0,-1(a3)
1c00b0be:	ff35dae3          	bge	a1,s3,1c00b0b2 <pos_libc_prf+0xb0c>
1c00b0c2:	00068023          	sb	zero,0(a3)
1c00b0c6:	86b2                	mv	a3,a2
1c00b0c8:	00f67e63          	bgeu	a2,a5,1c00b0e4 <pos_libc_prf+0xb3e>
1c00b0cc:	0006c603          	lbu	a2,0(a3)
1c00b0d0:	0007c703          	lbu	a4,0(a5)
1c00b0d4:	0685                	addi	a3,a3,1
1c00b0d6:	00c78023          	sb	a2,0(a5)
1c00b0da:	fee68fa3          	sb	a4,-1(a3)
1c00b0de:	17fd                	addi	a5,a5,-1
1c00b0e0:	fef6e6e3          	bltu	a3,a5,1c00b0cc <pos_libc_prf+0xb26>
1c00b0e4:	57fd                	li	a5,-1
1c00b0e6:	0989                	addi	s3,s3,2
1c00b0e8:	22fa8663          	beq	s5,a5,1c00b314 <pos_libc_prf+0xd6e>
1c00b0ec:	0c800793          	li	a5,200
1c00b0f0:	9f37cce3          	blt	a5,s3,1c00aae8 <pos_libc_prf+0x542>
1c00b0f4:	02000913          	li	s2,32
1c00b0f8:	0b49d863          	bge	s3,s4,1c00b1a8 <pos_libc_prf+0xc02>
1c00b0fc:	00198613          	addi	a2,s3,1
1c00b100:	ce02                	sw	zero,28(sp)
1c00b102:	bec1                	j	1c00acd2 <pos_libc_prf+0x72c>
1c00b104:	4732                	lw	a4,12(sp)
1c00b106:	431c                	lw	a5,0(a4)
1c00b108:	0711                	addi	a4,a4,4
1c00b10a:	c63a                	sw	a4,12(sp)
1c00b10c:	c380                	sw	s0,0(a5)
1c00b10e:	d0aff06f          	j	1c00a618 <pos_libc_prf+0x72>
1c00b112:	47b2                	lw	a5,12(sp)
1c00b114:	4529                	li	a0,10
1c00b116:	48a5                	li	a7,9
1c00b118:	4390                	lw	a2,0(a5)
1c00b11a:	00478b13          	addi	s6,a5,4
1c00b11e:	105c                	addi	a5,sp,36
1c00b120:	02a67733          	remu	a4,a2,a0
1c00b124:	86be                	mv	a3,a5
1c00b126:	0785                	addi	a5,a5,1
1c00b128:	85b2                	mv	a1,a2
1c00b12a:	03070713          	addi	a4,a4,48
1c00b12e:	fee78fa3          	sb	a4,-1(a5)
1c00b132:	02a65633          	divu	a2,a2,a0
1c00b136:	feb8e5e3          	bltu	a7,a1,1c00b120 <pos_libc_prf+0xb7a>
1c00b13a:	1058                	addi	a4,sp,36
1c00b13c:	40e789b3          	sub	s3,a5,a4
1c00b140:	0159dd63          	bge	s3,s5,1c00b15a <pos_libc_prf+0xbb4>
1c00b144:	03000613          	li	a2,48
1c00b148:	86be                	mv	a3,a5
1c00b14a:	1058                	addi	a4,sp,36
1c00b14c:	0785                	addi	a5,a5,1
1c00b14e:	40e789b3          	sub	s3,a5,a4
1c00b152:	fec78fa3          	sb	a2,-1(a5)
1c00b156:	ff59c9e3          	blt	s3,s5,1c00b148 <pos_libc_prf+0xba2>
1c00b15a:	00078023          	sb	zero,0(a5)
1c00b15e:	105c                	addi	a5,sp,36
1c00b160:	00d7fe63          	bgeu	a5,a3,1c00b17c <pos_libc_prf+0xbd6>
1c00b164:	0007c603          	lbu	a2,0(a5)
1c00b168:	0006c703          	lbu	a4,0(a3)
1c00b16c:	0785                	addi	a5,a5,1
1c00b16e:	00c68023          	sb	a2,0(a3)
1c00b172:	fee78fa3          	sb	a4,-1(a5)
1c00b176:	16fd                	addi	a3,a3,-1
1c00b178:	fed7e6e3          	bltu	a5,a3,1c00b164 <pos_libc_prf+0xbbe>
1c00b17c:	57fd                	li	a5,-1
1c00b17e:	c8fa9de3          	bne	s5,a5,1c00ae18 <pos_libc_prf+0x872>
1c00b182:	0c800793          	li	a5,200
1c00b186:	9737c1e3          	blt	a5,s3,1c00aae8 <pos_libc_prf+0x542>
1c00b18a:	ce02                	sw	zero,28(sp)
1c00b18c:	be01                	j	1c00ac9c <pos_libc_prf+0x6f6>
1c00b18e:	85a6                	mv	a1,s1
1c00b190:	02500513          	li	a0,37
1c00b194:	9c82                	jalr	s9
1c00b196:	57fd                	li	a5,-1
1c00b198:	c6f51f63          	bne	a0,a5,1c00a616 <pos_libc_prf+0x70>
1c00b19c:	547d                	li	s0,-1
1c00b19e:	c82ff06f          	j	1c00a620 <pos_libc_prf+0x7a>
1c00b1a2:	4401                	li	s0,0
1c00b1a4:	c7cff06f          	j	1c00a620 <pos_libc_prf+0x7a>
1c00b1a8:	8a4e                	mv	s4,s3
1c00b1aa:	c65a                	sw	s6,12(sp)
1c00b1ac:	b165                	j	1c00ae54 <pos_libc_prf+0x8ae>
1c00b1ae:	0c800793          	li	a5,200
1c00b1b2:	9337cbe3          	blt	a5,s3,1c00aae8 <pos_libc_prf+0x542>
1c00b1b6:	4785                	li	a5,1
1c00b1b8:	ce3e                	sw	a5,28(sp)
1c00b1ba:	b4cd                	j	1c00ac9c <pos_libc_prf+0x6f6>
1c00b1bc:	104c                	addi	a1,sp,36
1c00b1be:	413a09b3          	sub	s3,s4,s3
1c00b1c2:	01358533          	add	a0,a1,s3
1c00b1c6:	9faff0ef          	jal	ra,1c00a3c0 <memmove>
1c00b1ca:	02000793          	li	a5,32
1c00b1ce:	24f90863          	beq	s2,a5,1c00b41e <pos_libc_prf+0xe78>
1c00b1d2:	47f2                	lw	a5,28(sp)
1c00b1d4:	99be                	add	s3,s3,a5
1c00b1d6:	47f2                	lw	a5,28(sp)
1c00b1d8:	b737d7e3          	bge	a5,s3,1c00ad46 <pos_libc_prf+0x7a0>
1c00b1dc:	4772                	lw	a4,28(sp)
1c00b1de:	4789                	li	a5,2
1c00b1e0:	40e988b3          	sub	a7,s3,a4
1c00b1e4:	fff88693          	addi	a3,a7,-1
1c00b1e8:	06d7f063          	bgeu	a5,a3,1c00b248 <pos_libc_prf+0xca2>
1c00b1ec:	47e2                	lw	a5,24(sp)
1c00b1ee:	00891613          	slli	a2,s2,0x8
1c00b1f2:	ffc8f593          	andi	a1,a7,-4
1c00b1f6:	00f976b3          	and	a3,s2,a5
1c00b1fa:	8ed1                	or	a3,a3,a2
1c00b1fc:	01091793          	slli	a5,s2,0x10
1c00b200:	8edd                	or	a3,a3,a5
1c00b202:	01891613          	slli	a2,s2,0x18
1c00b206:	8e55                	or	a2,a2,a3
1c00b208:	105c                	addi	a5,sp,36
1c00b20a:	00865813          	srli	a6,a2,0x8
1c00b20e:	01065513          	srli	a0,a2,0x10
1c00b212:	97ba                	add	a5,a5,a4
1c00b214:	95be                	add	a1,a1,a5
1c00b216:	0306f693          	andi	a3,a3,48
1c00b21a:	8261                	srli	a2,a2,0x18
1c00b21c:	0ff87813          	andi	a6,a6,255
1c00b220:	0ff57513          	andi	a0,a0,255
1c00b224:	00d78023          	sb	a3,0(a5)
1c00b228:	010780a3          	sb	a6,1(a5)
1c00b22c:	00a78123          	sb	a0,2(a5)
1c00b230:	00c781a3          	sb	a2,3(a5)
1c00b234:	0791                	addi	a5,a5,4
1c00b236:	fef597e3          	bne	a1,a5,1c00b224 <pos_libc_prf+0xc7e>
1c00b23a:	4772                	lw	a4,28(sp)
1c00b23c:	ffc8f793          	andi	a5,a7,-4
1c00b240:	973e                	add	a4,a4,a5
1c00b242:	ce3a                	sw	a4,28(sp)
1c00b244:	b11781e3          	beq	a5,a7,1c00ad46 <pos_libc_prf+0x7a0>
1c00b248:	4772                	lw	a4,28(sp)
1c00b24a:	199c                	addi	a5,sp,240
1c00b24c:	97ba                	add	a5,a5,a4
1c00b24e:	f3278a23          	sb	s2,-204(a5)
1c00b252:	00170793          	addi	a5,a4,1
1c00b256:	af37d8e3          	bge	a5,s3,1c00ad46 <pos_libc_prf+0x7a0>
1c00b25a:	1994                	addi	a3,sp,240
1c00b25c:	97b6                	add	a5,a5,a3
1c00b25e:	f3278a23          	sb	s2,-204(a5)
1c00b262:	00270b93          	addi	s7,a4,2
1c00b266:	af3bd0e3          	bge	s7,s3,1c00ad46 <pos_libc_prf+0x7a0>
1c00b26a:	9bb6                	add	s7,s7,a3
1c00b26c:	f32b8a23          	sb	s2,-204(s7)
1c00b270:	c65a                	sw	s6,12(sp)
1c00b272:	bcd9                	j	1c00ad48 <pos_libc_prf+0x7a2>
1c00b274:	01b98023          	sb	s11,0(s3)
1c00b278:	02b00613          	li	a2,43
1c00b27c:	00035663          	bgez	t1,1c00b288 <pos_libc_prf+0xce2>
1c00b280:	40600333          	neg	t1,t1
1c00b284:	02d00613          	li	a2,45
1c00b288:	47a9                	li	a5,10
1c00b28a:	02f346b3          	div	a3,t1,a5
1c00b28e:	00c980a3          	sb	a2,1(s3)
1c00b292:	0991                	addi	s3,s3,4
1c00b294:	02f367b3          	rem	a5,t1,a5
1c00b298:	03068693          	addi	a3,a3,48
1c00b29c:	fed98f23          	sb	a3,-2(s3)
1c00b2a0:	03078793          	addi	a5,a5,48
1c00b2a4:	fef98fa3          	sb	a5,-1(s3)
1c00b2a8:	fceff06f          	j	1c00aa76 <pos_libc_prf+0x4d0>
1c00b2ac:	02d00793          	li	a5,45
1c00b2b0:	02f10223          	sb	a5,36(sp)
1c00b2b4:	800007b7          	lui	a5,0x80000
1c00b2b8:	14f30e63          	beq	t1,a5,1c00b414 <pos_libc_prf+0xe6e>
1c00b2bc:	40600633          	neg	a2,t1
1c00b2c0:	02510693          	addi	a3,sp,37
1c00b2c4:	bb31                	j	1c00afe0 <pos_libc_prf+0xa3a>
1c00b2c6:	4722                	lw	a4,8(sp)
1c00b2c8:	10070d63          	beqz	a4,1c00b3e2 <pos_libc_prf+0xe3c>
1c00b2cc:	02b00693          	li	a3,43
1c00b2d0:	02d10223          	sb	a3,36(sp)
1c00b2d4:	02510f13          	addi	t5,sp,37
1c00b2d8:	4301                	li	t1,0
1c00b2da:	4801                	li	a6,0
1c00b2dc:	d9cff06f          	j	1c00a878 <pos_libc_prf+0x2d2>
1c00b2e0:	02414783          	lbu	a5,36(sp)
1c00b2e4:	98078ce3          	beqz	a5,1c00ac7c <pos_libc_prf+0x6d6>
1c00b2e8:	1054                	addi	a3,sp,36
1c00b2ea:	45e5                	li	a1,25
1c00b2ec:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00b2f0:	f9f78793          	addi	a5,a5,-97
1c00b2f4:	0ff7f793          	andi	a5,a5,255
1c00b2f8:	00f5e963          	bltu	a1,a5,1c00b30a <pos_libc_prf+0xd64>
1c00b2fc:	0016c783          	lbu	a5,1(a3)
1c00b300:	00e68023          	sb	a4,0(a3)
1c00b304:	0685                	addi	a3,a3,1
1c00b306:	f3fd                	bnez	a5,1c00b2ec <pos_libc_prf+0xd46>
1c00b308:	ba95                	j	1c00ac7c <pos_libc_prf+0x6d6>
1c00b30a:	0016c783          	lbu	a5,1(a3)
1c00b30e:	0685                	addi	a3,a3,1
1c00b310:	fff1                	bnez	a5,1c00b2ec <pos_libc_prf+0xd46>
1c00b312:	b2ad                	j	1c00ac7c <pos_libc_prf+0x6d6>
1c00b314:	0c800793          	li	a5,200
1c00b318:	df37d0e3          	bge	a5,s3,1c00b0f8 <pos_libc_prf+0xb52>
1c00b31c:	547d                	li	s0,-1
1c00b31e:	b02ff06f          	j	1c00a620 <pos_libc_prf+0x7a>
1c00b322:	864e                	mv	a2,s3
1c00b324:	1048                	addi	a0,sp,36
1c00b326:	fc5fe0ef          	jal	ra,1c00a2ea <memcpy>
1c00b32a:	b3f9                	j	1c00b0f8 <pos_libc_prf+0xb52>
1c00b32c:	47f2                	lw	a5,28(sp)
1c00b32e:	4601                	li	a2,0
1c00b330:	e399                	bnez	a5,1c00b336 <pos_libc_prf+0xd90>
1c00b332:	01503633          	snez	a2,s5
1c00b336:	57f5                	li	a5,-3
1c00b338:	001a8813          	addi	a6,s5,1
1c00b33c:	00f34463          	blt	t1,a5,1c00b344 <pos_libc_prf+0xd9e>
1c00b340:	04685163          	bge	a6,t1,1c00b382 <pos_libc_prf+0xddc>
1c00b344:	47c1                	li	a5,16
1c00b346:	0107d363          	bge	a5,a6,1c00b34c <pos_libc_prf+0xda6>
1c00b34a:	4841                	li	a6,16
1c00b34c:	06700793          	li	a5,103
1c00b350:	187d                	addi	a6,a6,-1
1c00b352:	02fd8363          	beq	s11,a5,1c00b378 <pos_libc_prf+0xdd2>
1c00b356:	04500d93          	li	s11,69
1c00b35a:	d70ff06f          	j	1c00a8ca <pos_libc_prf+0x324>
1c00b35e:	4a99                	li	s5,6
1c00b360:	d4fd9563          	bne	s11,a5,1c00a8aa <pos_libc_prf+0x304>
1c00b364:	4772                	lw	a4,28(sp)
1c00b366:	4605                	li	a2,1
1c00b368:	57f5                	li	a5,-3
1c00b36a:	8e19                	sub	a2,a2,a4
1c00b36c:	00f34563          	blt	t1,a5,1c00b376 <pos_libc_prf+0xdd0>
1c00b370:	479d                	li	a5,7
1c00b372:	0067d863          	bge	a5,t1,1c00b382 <pos_libc_prf+0xddc>
1c00b376:	4819                	li	a6,6
1c00b378:	06500d93          	li	s11,101
1c00b37c:	d4eff06f          	j	1c00a8ca <pos_libc_prf+0x324>
1c00b380:	4601                	li	a2,0
1c00b382:	006a8833          	add	a6,s5,t1
1c00b386:	0b005b63          	blez	a6,1c00b43c <pos_libc_prf+0xe96>
1c00b38a:	47c1                	li	a5,16
1c00b38c:	0107d363          	bge	a5,a6,1c00b392 <pos_libc_prf+0xdec>
1c00b390:	4841                	li	a6,16
1c00b392:	187d                	addi	a6,a6,-1
1c00b394:	06600d93          	li	s11,102
1c00b398:	d32ff06f          	j	1c00a8ca <pos_libc_prf+0x324>
1c00b39c:	4792                	lw	a5,4(sp)
1c00b39e:	1054                	addi	a3,sp,36
1c00b3a0:	c40780e3          	beqz	a5,1c00afe0 <pos_libc_prf+0xa3a>
1c00b3a4:	02000793          	li	a5,32
1c00b3a8:	02f10223          	sb	a5,36(sp)
1c00b3ac:	02510693          	addi	a3,sp,37
1c00b3b0:	b905                	j	1c00afe0 <pos_libc_prf+0xa3a>
1c00b3b2:	ffc80fa3          	sb	t3,-1(a6)
1c00b3b6:	b30986e3          	beq	s3,a6,1c00aee2 <pos_libc_prf+0x93c>
1c00b3ba:	0805                	addi	a6,a6,1
1c00b3bc:	b4d5                	j	1c00aea0 <pos_libc_prf+0x8fa>
1c00b3be:	ffe80fa3          	sb	t5,-1(a6)
1c00b3c2:	0305                	addi	t1,t1,1
1c00b3c4:	b679                	j	1c00af52 <pos_libc_prf+0x9ac>
1c00b3c6:	020102a3          	sb	zero,37(sp)
1c00b3ca:	57fd                	li	a5,-1
1c00b3cc:	0cfa8263          	beq	s5,a5,1c00b490 <pos_libc_prf+0xeea>
1c00b3d0:	4785                	li	a5,1
1c00b3d2:	0b47c063          	blt	a5,s4,1c00b472 <pos_libc_prf+0xecc>
1c00b3d6:	4a72                	lw	s4,28(sp)
1c00b3d8:	c65a                	sw	s6,12(sp)
1c00b3da:	bcad                	j	1c00ae54 <pos_libc_prf+0x8ae>
1c00b3dc:	8636                	mv	a2,a3
1c00b3de:	b04ff06f          	j	1c00a6e2 <pos_libc_prf+0x13c>
1c00b3e2:	4712                	lw	a4,4(sp)
1c00b3e4:	c77d                	beqz	a4,1c00b4d2 <pos_libc_prf+0xf2c>
1c00b3e6:	02000693          	li	a3,32
1c00b3ea:	02d10223          	sb	a3,36(sp)
1c00b3ee:	4301                	li	t1,0
1c00b3f0:	4801                	li	a6,0
1c00b3f2:	02510f13          	addi	t5,sp,37
1c00b3f6:	c82ff06f          	j	1c00a878 <pos_libc_prf+0x2d2>
1c00b3fa:	02d00693          	li	a3,45
1c00b3fe:	02d10223          	sb	a3,36(sp)
1c00b402:	02510f13          	addi	t5,sp,37
1c00b406:	b9cff06f          	j	1c00a7a2 <pos_libc_prf+0x1fc>
1c00b40a:	0c800613          	li	a2,200
1c00b40e:	960ad6e3          	bgez	s5,1c00ad7a <pos_libc_prf+0x7d4>
1c00b412:	bf09                	j	1c00b324 <pos_libc_prf+0xd7e>
1c00b414:	80000637          	lui	a2,0x80000
1c00b418:	02510693          	addi	a3,sp,37
1c00b41c:	b6d1                	j	1c00afe0 <pos_libc_prf+0xa3a>
1c00b41e:	ce02                	sw	zero,28(sp)
1c00b420:	bb5d                	j	1c00b1d6 <pos_libc_prf+0xc30>
1c00b422:	4712                	lw	a4,4(sp)
1c00b424:	02410f13          	addi	t5,sp,36
1c00b428:	b6070d63          	beqz	a4,1c00a7a2 <pos_libc_prf+0x1fc>
1c00b42c:	02000693          	li	a3,32
1c00b430:	02d10223          	sb	a3,36(sp)
1c00b434:	02510f13          	addi	t5,sp,37
1c00b438:	b6aff06f          	j	1c00a7a2 <pos_libc_prf+0x1fc>
1c00b43c:	06600d93          	li	s11,102
1c00b440:	4781                	li	a5,0
1c00b442:	080006b7          	lui	a3,0x8000
1c00b446:	ce8ff06f          	j	1c00a92e <pos_libc_prf+0x388>
1c00b44a:	06b6e363          	bltu	a3,a1,1c00b4b0 <pos_libc_prf+0xf0a>
1c00b44e:	04e00693          	li	a3,78
1c00b452:	04100613          	li	a2,65
1c00b456:	00d78023          	sb	a3,0(a5)
1c00b45a:	00c780a3          	sb	a2,1(a5)
1c00b45e:	00d78123          	sb	a3,2(a5)
1c00b462:	f44ff06f          	j	1c00aba6 <pos_libc_prf+0x600>
1c00b466:	03000693          	li	a3,48
1c00b46a:	00df0023          	sb	a3,0(t5)
1c00b46e:	4541                	li	a0,16
1c00b470:	bc95                	j	1c00aee4 <pos_libc_prf+0x93e>
1c00b472:	4982                	lw	s3,0(sp)
1c00b474:	860992e3          	bnez	s3,1c00acd8 <pos_libc_prf+0x732>
1c00b478:	104c                	addi	a1,sp,36
1c00b47a:	fffa0993          	addi	s3,s4,-1
1c00b47e:	4609                	li	a2,2
1c00b480:	01358533          	add	a0,a1,s3
1c00b484:	f3dfe0ef          	jal	ra,1c00a3c0 <memmove>
1c00b488:	02000913          	li	s2,32
1c00b48c:	ce02                	sw	zero,28(sp)
1c00b48e:	b3b9                	j	1c00b1dc <pos_libc_prf+0xc36>
1c00b490:	49f2                	lw	s3,28(sp)
1c00b492:	b19d                	j	1c00b0f8 <pos_libc_prf+0xb52>
1c00b494:	06900693          	li	a3,105
1c00b498:	00d78023          	sb	a3,0(a5)
1c00b49c:	06e00693          	li	a3,110
1c00b4a0:	00d780a3          	sb	a3,1(a5)
1c00b4a4:	06600693          	li	a3,102
1c00b4a8:	00d78123          	sb	a3,2(a5)
1c00b4ac:	efaff06f          	j	1c00aba6 <pos_libc_prf+0x600>
1c00b4b0:	06e00693          	li	a3,110
1c00b4b4:	06100613          	li	a2,97
1c00b4b8:	00d78023          	sb	a3,0(a5)
1c00b4bc:	00c780a3          	sb	a2,1(a5)
1c00b4c0:	00d78123          	sb	a3,2(a5)
1c00b4c4:	ee2ff06f          	j	1c00aba6 <pos_libc_prf+0x600>
1c00b4c8:	89f6                	mv	s3,t4
1c00b4ca:	a8061ae3          	bnez	a2,1c00af5e <pos_libc_prf+0x9b8>
1c00b4ce:	da8ff06f          	j	1c00aa76 <pos_libc_prf+0x4d0>
1c00b4d2:	4301                	li	t1,0
1c00b4d4:	4801                	li	a6,0
1c00b4d6:	02410f13          	addi	t5,sp,36
1c00b4da:	b9eff06f          	j	1c00a878 <pos_libc_prf+0x2d2>

1c00b4de <pos_init_start>:
1c00b4de:	1141                	addi	sp,sp,-16
1c00b4e0:	c422                	sw	s0,8(sp)
1c00b4e2:	1c000437          	lui	s0,0x1c000
1c00b4e6:	c606                	sw	ra,12(sp)
1c00b4e8:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b4ec:	e6dfc0ef          	jal	ra,1c008358 <pos_soc_init>
1c00b4f0:	2a75                	jal	1c00b6ac <pos_irq_init>
1c00b4f2:	22e5                	jal	1c00b6da <pos_soc_event_init>
1c00b4f4:	2225                	jal	1c00b61c <pos_allocs_init>
1c00b4f6:	405c                	lw	a5,4(s0)
1c00b4f8:	c791                	beqz	a5,1c00b504 <pos_init_start+0x26>
1c00b4fa:	0411                	addi	s0,s0,4
1c00b4fc:	0411                	addi	s0,s0,4
1c00b4fe:	9782                	jalr	a5
1c00b500:	401c                	lw	a5,0(s0)
1c00b502:	ffed                	bnez	a5,1c00b4fc <pos_init_start+0x1e>
1c00b504:	86cff0ef          	jal	ra,1c00a570 <pos_io_start>
1c00b508:	300467f3          	csrrsi	a5,mstatus,8
1c00b50c:	40b2                	lw	ra,12(sp)
1c00b50e:	4422                	lw	s0,8(sp)
1c00b510:	0141                	addi	sp,sp,16
1c00b512:	8082                	ret

1c00b514 <pos_init_stop>:
1c00b514:	1141                	addi	sp,sp,-16
1c00b516:	c422                	sw	s0,8(sp)
1c00b518:	1c000437          	lui	s0,0x1c000
1c00b51c:	c606                	sw	ra,12(sp)
1c00b51e:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b522:	852ff0ef          	jal	ra,1c00a574 <pos_io_stop>
1c00b526:	405c                	lw	a5,4(s0)
1c00b528:	c791                	beqz	a5,1c00b534 <pos_init_stop+0x20>
1c00b52a:	0411                	addi	s0,s0,4
1c00b52c:	0411                	addi	s0,s0,4
1c00b52e:	9782                	jalr	a5
1c00b530:	401c                	lw	a5,0(s0)
1c00b532:	ffed                	bnez	a5,1c00b52c <pos_init_stop+0x18>
1c00b534:	40b2                	lw	ra,12(sp)
1c00b536:	4422                	lw	s0,8(sp)
1c00b538:	0141                	addi	sp,sp,16
1c00b53a:	8082                	ret

1c00b53c <pos_alloc_init>:
1c00b53c:	00758793          	addi	a5,a1,7
1c00b540:	9be1                	andi	a5,a5,-8
1c00b542:	40b785b3          	sub	a1,a5,a1
1c00b546:	c11c                	sw	a5,0(a0)
1c00b548:	40b605b3          	sub	a1,a2,a1
1c00b54c:	00b05663          	blez	a1,1c00b558 <pos_alloc_init+0x1c>
1c00b550:	99e1                	andi	a1,a1,-8
1c00b552:	c38c                	sw	a1,0(a5)
1c00b554:	0007a223          	sw	zero,4(a5)
1c00b558:	8082                	ret

1c00b55a <pos_alloc>:
1c00b55a:	411c                	lw	a5,0(a0)
1c00b55c:	00758713          	addi	a4,a1,7
1c00b560:	862a                	mv	a2,a0
1c00b562:	ff877593          	andi	a1,a4,-8
1c00b566:	4681                	li	a3,0
1c00b568:	e789                	bnez	a5,1c00b572 <pos_alloc+0x18>
1c00b56a:	a091                	j	1c00b5ae <pos_alloc+0x54>
1c00b56c:	86be                	mv	a3,a5
1c00b56e:	c505                	beqz	a0,1c00b596 <pos_alloc+0x3c>
1c00b570:	87aa                	mv	a5,a0
1c00b572:	4398                	lw	a4,0(a5)
1c00b574:	43c8                	lw	a0,4(a5)
1c00b576:	feb74be3          	blt	a4,a1,1c00b56c <pos_alloc+0x12>
1c00b57a:	00b70f63          	beq	a4,a1,1c00b598 <pos_alloc+0x3e>
1c00b57e:	00b78833          	add	a6,a5,a1
1c00b582:	8f0d                	sub	a4,a4,a1
1c00b584:	00e82023          	sw	a4,0(a6)
1c00b588:	00a82223          	sw	a0,4(a6)
1c00b58c:	ca91                	beqz	a3,1c00b5a0 <pos_alloc+0x46>
1c00b58e:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00b592:	853e                	mv	a0,a5
1c00b594:	8082                	ret
1c00b596:	8082                	ret
1c00b598:	ca81                	beqz	a3,1c00b5a8 <pos_alloc+0x4e>
1c00b59a:	c2c8                	sw	a0,4(a3)
1c00b59c:	853e                	mv	a0,a5
1c00b59e:	8082                	ret
1c00b5a0:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00b5a4:	853e                	mv	a0,a5
1c00b5a6:	8082                	ret
1c00b5a8:	c208                	sw	a0,0(a2)
1c00b5aa:	853e                	mv	a0,a5
1c00b5ac:	8082                	ret
1c00b5ae:	4501                	li	a0,0
1c00b5b0:	8082                	ret

1c00b5b2 <pos_free>:
1c00b5b2:	411c                	lw	a5,0(a0)
1c00b5b4:	061d                	addi	a2,a2,7
1c00b5b6:	9a61                	andi	a2,a2,-8
1c00b5b8:	c7a1                	beqz	a5,1c00b600 <pos_free+0x4e>
1c00b5ba:	00b7e563          	bltu	a5,a1,1c00b5c4 <pos_free+0x12>
1c00b5be:	a089                	j	1c00b600 <pos_free+0x4e>
1c00b5c0:	00b7f563          	bgeu	a5,a1,1c00b5ca <pos_free+0x18>
1c00b5c4:	873e                	mv	a4,a5
1c00b5c6:	43dc                	lw	a5,4(a5)
1c00b5c8:	ffe5                	bnez	a5,1c00b5c0 <pos_free+0xe>
1c00b5ca:	00c586b3          	add	a3,a1,a2
1c00b5ce:	00d78b63          	beq	a5,a3,1c00b5e4 <pos_free+0x32>
1c00b5d2:	c190                	sw	a2,0(a1)
1c00b5d4:	4314                	lw	a3,0(a4)
1c00b5d6:	c1dc                	sw	a5,4(a1)
1c00b5d8:	00d70533          	add	a0,a4,a3
1c00b5dc:	00a58e63          	beq	a1,a0,1c00b5f8 <pos_free+0x46>
1c00b5e0:	c34c                	sw	a1,4(a4)
1c00b5e2:	8082                	ret
1c00b5e4:	4394                	lw	a3,0(a5)
1c00b5e6:	43dc                	lw	a5,4(a5)
1c00b5e8:	9636                	add	a2,a2,a3
1c00b5ea:	c190                	sw	a2,0(a1)
1c00b5ec:	4314                	lw	a3,0(a4)
1c00b5ee:	c1dc                	sw	a5,4(a1)
1c00b5f0:	00d70533          	add	a0,a4,a3
1c00b5f4:	fea596e3          	bne	a1,a0,1c00b5e0 <pos_free+0x2e>
1c00b5f8:	9636                	add	a2,a2,a3
1c00b5fa:	c310                	sw	a2,0(a4)
1c00b5fc:	c35c                	sw	a5,4(a4)
1c00b5fe:	8082                	ret
1c00b600:	00c58733          	add	a4,a1,a2
1c00b604:	00e78663          	beq	a5,a4,1c00b610 <pos_free+0x5e>
1c00b608:	c1dc                	sw	a5,4(a1)
1c00b60a:	c190                	sw	a2,0(a1)
1c00b60c:	c10c                	sw	a1,0(a0)
1c00b60e:	8082                	ret
1c00b610:	4398                	lw	a4,0(a5)
1c00b612:	43dc                	lw	a5,4(a5)
1c00b614:	963a                	add	a2,a2,a4
1c00b616:	c1dc                	sw	a5,4(a1)
1c00b618:	c190                	sw	a2,0(a1)
1c00b61a:	bfcd                	j	1c00b60c <pos_free+0x5a>

1c00b61c <pos_allocs_init>:
1c00b61c:	1c0065b7          	lui	a1,0x1c006
1c00b620:	1141                	addi	sp,sp,-16
1c00b622:	2d858613          	addi	a2,a1,728 # 1c0062d8 <__l2_priv0_end>
1c00b626:	1c0087b7          	lui	a5,0x1c008
1c00b62a:	c606                	sw	ra,12(sp)
1c00b62c:	2d858593          	addi	a1,a1,728
1c00b630:	40c78633          	sub	a2,a5,a2
1c00b634:	04f5d863          	bge	a1,a5,1c00b684 <pos_allocs_init+0x68>
1c00b638:	1c006537          	lui	a0,0x1c006
1c00b63c:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00b640:	3df5                	jal	1c00b53c <pos_alloc_init>
1c00b642:	1c00b5b7          	lui	a1,0x1c00b
1c00b646:	6f458613          	addi	a2,a1,1780 # 1c00b6f4 <__l2_priv1_end>
1c00b64a:	1c0107b7          	lui	a5,0x1c010
1c00b64e:	6f458593          	addi	a1,a1,1780
1c00b652:	40c78633          	sub	a2,a5,a2
1c00b656:	02f5da63          	bge	a1,a5,1c00b68a <pos_allocs_init+0x6e>
1c00b65a:	1c006537          	lui	a0,0x1c006
1c00b65e:	2d050513          	addi	a0,a0,720 # 1c0062d0 <pos_alloc_l2+0x4>
1c00b662:	3de9                	jal	1c00b53c <pos_alloc_init>
1c00b664:	40b2                	lw	ra,12(sp)
1c00b666:	1c0105b7          	lui	a1,0x1c010
1c00b66a:	00058793          	mv	a5,a1
1c00b66e:	1c080637          	lui	a2,0x1c080
1c00b672:	1c006537          	lui	a0,0x1c006
1c00b676:	8e1d                	sub	a2,a2,a5
1c00b678:	00058593          	mv	a1,a1
1c00b67c:	2d450513          	addi	a0,a0,724 # 1c0062d4 <pos_alloc_l2+0x8>
1c00b680:	0141                	addi	sp,sp,16
1c00b682:	bd6d                	j	1c00b53c <pos_alloc_init>
1c00b684:	4581                	li	a1,0
1c00b686:	4601                	li	a2,0
1c00b688:	bf45                	j	1c00b638 <pos_allocs_init+0x1c>
1c00b68a:	4581                	li	a1,0
1c00b68c:	4601                	li	a2,0
1c00b68e:	b7f1                	j	1c00b65a <pos_allocs_init+0x3e>

1c00b690 <pi_l2_malloc>:
1c00b690:	85aa                	mv	a1,a0
1c00b692:	1c006537          	lui	a0,0x1c006
1c00b696:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00b69a:	b5c1                	j	1c00b55a <pos_alloc>

1c00b69c <pi_l2_free>:
1c00b69c:	862e                	mv	a2,a1
1c00b69e:	85aa                	mv	a1,a0
1c00b6a0:	1c006537          	lui	a0,0x1c006
1c00b6a4:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00b6a8:	b729                	j	1c00b5b2 <pos_free>

1c00b6aa <__rt_handle_illegal_instr>:
1c00b6aa:	8082                	ret

1c00b6ac <pos_irq_init>:
1c00b6ac:	1a10a737          	lui	a4,0x1a10a
1c00b6b0:	56fd                	li	a3,-1
1c00b6b2:	f14027f3          	csrr	a5,mhartid
1c00b6b6:	8795                	srai	a5,a5,0x5
1c00b6b8:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b6bc:	03f7f793          	andi	a5,a5,63
1c00b6c0:	477d                	li	a4,31
1c00b6c2:	00e78363          	beq	a5,a4,1c00b6c8 <pos_irq_init+0x1c>
1c00b6c6:	8082                	ret
1c00b6c8:	1c0087b7          	lui	a5,0x1c008
1c00b6cc:	00078793          	mv	a5,a5
1c00b6d0:	0017e793          	ori	a5,a5,1
1c00b6d4:	30579073          	csrw	mtvec,a5
1c00b6d8:	8082                	ret

1c00b6da <pos_soc_event_init>:
1c00b6da:	1a1067b7          	lui	a5,0x1a106
1c00b6de:	577d                	li	a4,-1
1c00b6e0:	c3d8                	sw	a4,4(a5)
1c00b6e2:	c798                	sw	a4,8(a5)
1c00b6e4:	c7d8                	sw	a4,12(a5)
1c00b6e6:	cb98                	sw	a4,16(a5)
1c00b6e8:	cbd8                	sw	a4,20(a5)
1c00b6ea:	cf98                	sw	a4,24(a5)
1c00b6ec:	cfd8                	sw	a4,28(a5)
1c00b6ee:	d398                	sw	a4,32(a5)
1c00b6f0:	8082                	ret

1c00b6f2 <_endtext>:
	...
