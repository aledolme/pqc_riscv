riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber1024/keygen/build/keygen/keygen

/home/alessandra.dolmeta/pqc_riscv/test/kyber1024/keygen/build/keygen/keygen:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	6660306f          	j	1c00b666 <__rt_handle_illegal_instr>
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
1c008084:	5e20306f          	j	1c00b666 <__rt_handle_illegal_instr>

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
1c0080e2:	3b8030ef          	jal	ra,1c00b49a <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	3d4030ef          	jal	ra,1c00b4d0 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	416020ef          	jal	ra,1c00a518 <exit>
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
1c008172:	3c2020ef          	jal	ra,1c00a534 <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	3680206f          	j	1c00a4ee <putchar>

1c00818a <main>:
1c00818a:	737d                	lui	t1,0xfffff
1c00818c:	d7010113          	addi	sp,sp,-656
1c008190:	1c000537          	lui	a0,0x1c000
1c008194:	28112623          	sw	ra,652(sp)
1c008198:	28812423          	sw	s0,648(sp)
1c00819c:	28912223          	sw	s1,644(sp)
1c0081a0:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0081a4:	911a                	add	sp,sp,t1
1c0081a6:	2cc020ef          	jal	ra,1c00a472 <puts>
1c0081aa:	6705                	lui	a4,0x1
1c0081ac:	28070793          	addi	a5,a4,640 # 1280 <__CTOR_LIST__-0x1bffed84>
1c0081b0:	747d                	lui	s0,0xfffff
1c0081b2:	978a                	add	a5,a5,sp
1c0081b4:	3a040493          	addi	s1,s0,928 # fffff3a0 <__l2_shared_end+0xe3fef3a0>
1c0081b8:	94be                	add	s1,s1,a5
1c0081ba:	28070793          	addi	a5,a4,640
1c0081be:	978a                	add	a5,a5,sp
1c0081c0:	d8040413          	addi	s0,s0,-640
1c0081c4:	943e                	add	s0,s0,a5
1c0081c6:	85a6                	mv	a1,s1
1c0081c8:	8522                	mv	a0,s0
1c0081ca:	11f010ef          	jal	ra,1c009ae8 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair>
1c0081ce:	1c000537          	lui	a0,0x1c000
1c0081d2:	13450513          	addi	a0,a0,308 # 1c000134 <__clz_tab+0x118>
1c0081d6:	29c020ef          	jal	ra,1c00a472 <puts>
1c0081da:	1c000537          	lui	a0,0x1c000
1c0081de:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c0081e2:	290020ef          	jal	ra,1c00a472 <puts>
1c0081e6:	62000593          	li	a1,1568
1c0081ea:	8522                	mv	a0,s0
1c0081ec:	37a5                	jal	1c008154 <printbytes>
1c0081ee:	1c000537          	lui	a0,0x1c000
1c0081f2:	14850513          	addi	a0,a0,328 # 1c000148 <__clz_tab+0x12c>
1c0081f6:	27c020ef          	jal	ra,1c00a472 <puts>
1c0081fa:	6585                	lui	a1,0x1
1c0081fc:	8526                	mv	a0,s1
1c0081fe:	c6058593          	addi	a1,a1,-928 # c60 <__CTOR_LIST__-0x1bfff3a4>
1c008202:	3f89                	jal	1c008154 <printbytes>
1c008204:	6305                	lui	t1,0x1
1c008206:	911a                	add	sp,sp,t1
1c008208:	28c12083          	lw	ra,652(sp)
1c00820c:	28812403          	lw	s0,648(sp)
1c008210:	28412483          	lw	s1,644(sp)
1c008214:	4501                	li	a0,0
1c008216:	29010113          	addi	sp,sp,656
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

1c008442 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>:
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
1c008532:	f3f514e3          	bne	a0,t6,1c00845a <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1+0x18>
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
1c008736:	717020ef          	jal	ra,1c00b64c <pi_l2_malloc>
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
1c008908:	411010ef          	jal	ra,1c00a518 <exit>

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
1c008a06:	4530206f          	j	1c00b658 <pi_l2_free>

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
1c008a34:	419020ef          	jal	ra,1c00b64c <pi_l2_malloc>
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
1c008b4e:	30b0206f          	j	1c00b658 <pi_l2_free>
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
1c008c88:	091010ef          	jal	ra,1c00a518 <exit>

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

1c0096ec <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair>:
1c0096ec:	7371                	lui	t1,0xffffc
1c0096ee:	715d                	addi	sp,sp,-80
1c0096f0:	7b030313          	addi	t1,t1,1968 # ffffc7b0 <__l2_shared_end+0xe3fec7b0>
1c0096f4:	ce6e                	sw	s11,28(sp)
1c0096f6:	c686                	sw	ra,76(sp)
1c0096f8:	c4a2                	sw	s0,72(sp)
1c0096fa:	c0ca                	sw	s2,64(sp)
1c0096fc:	d65e                	sw	s7,44(sp)
1c0096fe:	d462                	sw	s8,40(sp)
1c009700:	d266                	sw	s9,36(sp)
1c009702:	6411                	lui	s0,0x4
1c009704:	c2a6                	sw	s1,68(sp)
1c009706:	de4e                	sw	s3,60(sp)
1c009708:	dc52                	sw	s4,56(sp)
1c00970a:	da56                	sw	s5,52(sp)
1c00970c:	d85a                	sw	s6,48(sp)
1c00970e:	d06a                	sw	s10,32(sp)
1c009710:	911a                	add	sp,sp,t1
1c009712:	1018                	addi	a4,sp,32
1c009714:	7cf1                	lui	s9,0xffffc
1c009716:	84040793          	addi	a5,s0,-1984 # 3840 <__CTOR_LIST__-0x1bffc7c4>
1c00971a:	97ba                	add	a5,a5,a4
1c00971c:	7c0c8c93          	addi	s9,s9,1984 # ffffc7c0 <__l2_shared_end+0xe3fec7c0>
1c009720:	9cbe                	add	s9,s9,a5
1c009722:	8baa                	mv	s7,a0
1c009724:	87ae                	mv	a5,a1
1c009726:	8566                	mv	a0,s9
1c009728:	02000593          	li	a1,32
1c00972c:	ce3e                	sw	a5,28(sp)
1c00972e:	7fa000ef          	jal	ra,1c009f28 <randombytes>
1c009732:	02000613          	li	a2,32
1c009736:	85e6                	mv	a1,s9
1c009738:	8566                	mv	a0,s9
1c00973a:	833ff0ef          	jal	ra,1c008f6c <sha3_512>
1c00973e:	1018                	addi	a4,sp,32
1c009740:	84040793          	addi	a5,s0,-1984
1c009744:	7df9                	lui	s11,0xffffe
1c009746:	97ba                	add	a5,a5,a4
1c009748:	1014                	addi	a3,sp,32
1c00974a:	84040713          	addi	a4,s0,-1984
1c00974e:	800d8913          	addi	s2,s11,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c009752:	9736                	add	a4,a4,a3
1c009754:	97ee                	add	a5,a5,s11
1c009756:	993a                	add	s2,s2,a4
1c009758:	cc3e                	sw	a5,24(sp)
1c00975a:	ca3e                	sw	a5,20(sp)
1c00975c:	c802                	sw	zero,16(sp)
1c00975e:	c666                	sw	s9,12(sp)
1c009760:	0a890c13          	addi	s8,s2,168
1c009764:	6405                	lui	s0,0x1
1c009766:	fff40993          	addi	s3,s0,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00976a:	01014d03          	lbu	s10,16(sp)
1c00976e:	4dd2                	lw	s11,20(sp)
1c009770:	4481                	li	s1,0
1c009772:	1f890b13          	addi	s6,s2,504
1c009776:	d0040413          	addi	s0,s0,-768
1c00977a:	a015                	j	1c00979e <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0xb2>
1c00977c:	00d59023          	sh	a3,0(a1)
1c009780:	34a31863          	bne	t1,a0,1c009ad0 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x3e4>
1c009784:	6785                	lui	a5,0x1
1c009786:	84078513          	addi	a0,a5,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c00978a:	101c                	addi	a5,sp,32
1c00978c:	953e                	add	a0,a0,a5
1c00978e:	a72ff0ef          	jal	ra,1c008a00 <shake128_ctx_release>
1c009792:	0485                	addi	s1,s1,1
1c009794:	4791                	li	a5,4
1c009796:	200d8d93          	addi	s11,s11,512
1c00979a:	10f48063          	beq	s1,a5,1c00989a <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x1ae>
1c00979e:	45b2                	lw	a1,12(sp)
1c0097a0:	6a05                	lui	s4,0x1
1c0097a2:	101c                	addi	a5,sp,32
1c0097a4:	840a0513          	addi	a0,s4,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c0097a8:	953e                	add	a0,a0,a5
1c0097aa:	86ea                	mv	a3,s10
1c0097ac:	0ff4f613          	andi	a2,s1,255
1c0097b0:	25f000ef          	jal	ra,1c00a20e <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>
1c0097b4:	101c                	addi	a5,sp,32
1c0097b6:	840a0613          	addi	a2,s4,-1984
1c0097ba:	963e                	add	a2,a2,a5
1c0097bc:	854a                	mv	a0,s2
1c0097be:	458d                	li	a1,3
1c0097c0:	94cff0ef          	jal	ra,1c00890c <shake128_squeezeblocks>
1c0097c4:	4c81                	li	s9,0
1c0097c6:	864a                	mv	a2,s2
1c0097c8:	10000513          	li	a0,256
1c0097cc:	00164883          	lbu	a7,1(a2)
1c0097d0:	00064703          	lbu	a4,0(a2)
1c0097d4:	001c9593          	slli	a1,s9,0x1
1c0097d8:	00889693          	slli	a3,a7,0x8
1c0097dc:	8ed9                	or	a3,a3,a4
1c0097de:	0136f6b3          	and	a3,a3,s3
1c0097e2:	00264703          	lbu	a4,2(a2)
1c0097e6:	95ee                	add	a1,a1,s11
1c0097e8:	0048de13          	srli	t3,a7,0x4
1c0097ec:	001c8313          	addi	t1,s9,1
1c0097f0:	f8d476e3          	bgeu	s0,a3,1c00977c <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x90>
1c0097f4:	0712                	slli	a4,a4,0x4
1c0097f6:	01c76733          	or	a4,a4,t3
1c0097fa:	00e44863          	blt	s0,a4,1c00980a <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x11e>
1c0097fe:	001c9693          	slli	a3,s9,0x1
1c009802:	96ee                	add	a3,a3,s11
1c009804:	00e69023          	sh	a4,0(a3)
1c009808:	0c85                	addi	s9,s9,1
1c00980a:	f6ac8de3          	beq	s9,a0,1c009784 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x98>
1c00980e:	060d                	addi	a2,a2,3
1c009810:	fb661ee3          	bne	a2,s6,1c0097cc <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0xe0>
1c009814:	10000a93          	li	s5,256
1c009818:	0ff00a13          	li	s4,255
1c00981c:	a809                	j	1c00982e <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x142>
1c00981e:	00b51023          	sh	a1,0(a0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c009822:	8776                	mv	a4,t4
1c009824:	2bceef63          	bltu	t4,t3,1c009ae2 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x3f6>
1c009828:	9cba                	add	s9,s9,a4
1c00982a:	f59a6de3          	bltu	s4,s9,1c009784 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x98>
1c00982e:	6785                	lui	a5,0x1
1c009830:	84078613          	addi	a2,a5,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c009834:	101c                	addi	a5,sp,32
1c009836:	963e                	add	a2,a2,a5
1c009838:	4585                	li	a1,1
1c00983a:	854a                	mv	a0,s2
1c00983c:	8d0ff0ef          	jal	ra,1c00890c <shake128_squeezeblocks>
1c009840:	001c9893          	slli	a7,s9,0x1
1c009844:	98ee                	add	a7,a7,s11
1c009846:	419a8e33          	sub	t3,s5,s9
1c00984a:	864a                	mv	a2,s2
1c00984c:	4701                	li	a4,0
1c00984e:	00164303          	lbu	t1,1(a2)
1c009852:	00064e83          	lbu	t4,0(a2)
1c009856:	00264683          	lbu	a3,2(a2)
1c00985a:	00831593          	slli	a1,t1,0x8
1c00985e:	01d5e5b3          	or	a1,a1,t4
1c009862:	00171513          	slli	a0,a4,0x1
1c009866:	0692                	slli	a3,a3,0x4
1c009868:	00435313          	srli	t1,t1,0x4
1c00986c:	0135f5b3          	and	a1,a1,s3
1c009870:	9546                	add	a0,a0,a7
1c009872:	00170e93          	addi	t4,a4,1
1c009876:	0066e6b3          	or	a3,a3,t1
1c00987a:	fab472e3          	bgeu	s0,a1,1c00981e <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x132>
1c00987e:	00d44863          	blt	s0,a3,1c00988e <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x1a2>
1c009882:	00171593          	slli	a1,a4,0x1
1c009886:	95c6                	add	a1,a1,a7
1c009888:	00d59023          	sh	a3,0(a1)
1c00988c:	0705                	addi	a4,a4,1
1c00988e:	f9c77de3          	bgeu	a4,t3,1c009828 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x13c>
1c009892:	060d                	addi	a2,a2,3
1c009894:	facc1de3          	bne	s8,a2,1c00984e <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x162>
1c009898:	bf41                	j	1c009828 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x13c>
1c00989a:	47c2                	lw	a5,16(sp)
1c00989c:	4752                	lw	a4,20(sp)
1c00989e:	6985                	lui	s3,0x1
1c0098a0:	80098993          	addi	s3,s3,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c0098a4:	0785                	addi	a5,a5,1
1c0098a6:	974e                	add	a4,a4,s3
1c0098a8:	c83e                	sw	a5,16(sp)
1c0098aa:	ca3a                	sw	a4,20(sp)
1c0098ac:	ea979ce3          	bne	a5,s1,1c009764 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x78>
1c0098b0:	6791                	lui	a5,0x4
1c0098b2:	1014                	addi	a3,sp,32
1c0098b4:	84078713          	addi	a4,a5,-1984 # 3840 <__CTOR_LIST__-0x1bffc7c4>
1c0098b8:	9736                	add	a4,a4,a3
1c0098ba:	8a3e                	mv	s4,a5
1c0098bc:	7471                	lui	s0,0xffffc
1c0098be:	74f9                	lui	s1,0xffffe
1c0098c0:	84078793          	addi	a5,a5,-1984
1c0098c4:	97b6                	add	a5,a5,a3
1c0098c6:	943a                	add	s0,s0,a4
1c0098c8:	80048493          	addi	s1,s1,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c0098cc:	94be                	add	s1,s1,a5
1c0098ce:	7e040413          	addi	s0,s0,2016 # ffffc7e0 <__l2_shared_end+0xe3fec7e0>
1c0098d2:	85a2                	mv	a1,s0
1c0098d4:	4601                	li	a2,0
1c0098d6:	8526                	mv	a0,s1
1c0098d8:	2e49                	jal	1c009c6a <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c0098da:	85a2                	mv	a1,s0
1c0098dc:	4605                	li	a2,1
1c0098de:	20048513          	addi	a0,s1,512
1c0098e2:	2661                	jal	1c009c6a <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c0098e4:	85a2                	mv	a1,s0
1c0098e6:	4609                	li	a2,2
1c0098e8:	40048513          	addi	a0,s1,1024
1c0098ec:	2ebd                	jal	1c009c6a <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c0098ee:	85a2                	mv	a1,s0
1c0098f0:	460d                	li	a2,3
1c0098f2:	60048513          	addi	a0,s1,1536
1c0098f6:	2e95                	jal	1c009c6a <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c0098f8:	77f5                	lui	a5,0xffffd
1c0098fa:	1018                	addi	a4,sp,32
1c0098fc:	80078913          	addi	s2,a5,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c009900:	840a0793          	addi	a5,s4,-1984
1c009904:	97ba                	add	a5,a5,a4
1c009906:	993e                	add	s2,s2,a5
1c009908:	85a2                	mv	a1,s0
1c00990a:	854a                	mv	a0,s2
1c00990c:	4611                	li	a2,4
1c00990e:	2eb1                	jal	1c009c6a <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c009910:	85a2                	mv	a1,s0
1c009912:	20090513          	addi	a0,s2,512
1c009916:	4615                	li	a2,5
1c009918:	2e89                	jal	1c009c6a <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00991a:	85a2                	mv	a1,s0
1c00991c:	40090513          	addi	a0,s2,1024
1c009920:	4619                	li	a2,6
1c009922:	26a1                	jal	1c009c6a <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c009924:	85a2                	mv	a1,s0
1c009926:	461d                	li	a2,7
1c009928:	60090513          	addi	a0,s2,1536
1c00992c:	2e3d                	jal	1c009c6a <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00992e:	8526                	mv	a0,s1
1c009930:	2141                	jal	1c009db0 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c009932:	6785                	lui	a5,0x1
1c009934:	84078413          	addi	s0,a5,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c009938:	101c                	addi	a5,sp,32
1c00993a:	854a                	mv	a0,s2
1c00993c:	943e                	add	s0,s0,a5
1c00993e:	01340933          	add	s2,s0,s3
1c009942:	21bd                	jal	1c009db0 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c009944:	4a62                	lw	s4,24(sp)
1c009946:	8522                	mv	a0,s0
1c009948:	8626                	mv	a2,s1
1c00994a:	85d2                	mv	a1,s4
1c00994c:	2305                	jal	1c009e6c <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00994e:	8522                	mv	a0,s0
1c009950:	2675                	jal	1c009cfc <PQCLEAN_KYBER1024_CLEAN_poly_tomont>
1c009952:	013a07b3          	add	a5,s4,s3
1c009956:	20040413          	addi	s0,s0,512
1c00995a:	cc3e                	sw	a5,24(sp)
1c00995c:	fe8914e3          	bne	s2,s0,1c009944 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x258>
1c009960:	6405                	lui	s0,0x1
1c009962:	6911                	lui	s2,0x4
1c009964:	1018                	addi	a4,sp,32
1c009966:	84090793          	addi	a5,s2,-1984 # 3840 <__CTOR_LIST__-0x1bffc7c4>
1c00996a:	84040593          	addi	a1,s0,-1984 # 840 <__CTOR_LIST__-0x1bfff7c4>
1c00996e:	7675                	lui	a2,0xffffd
1c009970:	97ba                	add	a5,a5,a4
1c009972:	95ba                	add	a1,a1,a4
1c009974:	80060613          	addi	a2,a2,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c009978:	963e                	add	a2,a2,a5
1c00997a:	852e                	mv	a0,a1
1c00997c:	2b8d                	jal	1c009eee <PQCLEAN_KYBER1024_CLEAN_polyvec_add>
1c00997e:	101c                	addi	a5,sp,32
1c009980:	84040513          	addi	a0,s0,-1984
1c009984:	953e                	add	a0,a0,a5
1c009986:	2399                	jal	1c009ecc <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>
1c009988:	4572                	lw	a0,28(sp)
1c00998a:	85a6                	mv	a1,s1
1c00998c:	2ed5                	jal	1c009d80 <PQCLEAN_KYBER1024_CLEAN_polyvec_tobytes>
1c00998e:	101c                	addi	a5,sp,32
1c009990:	84040593          	addi	a1,s0,-1984
1c009994:	95be                	add	a1,a1,a5
1c009996:	855e                	mv	a0,s7
1c009998:	26e5                	jal	1c009d80 <PQCLEAN_KYBER1024_CLEAN_polyvec_tobytes>
1c00999a:	1014                	addi	a3,sp,32
1c00999c:	84090713          	addi	a4,s2,-1984
1c0099a0:	9736                	add	a4,a4,a3
1c0099a2:	77f1                	lui	a5,0xffffc
1c0099a4:	97ba                	add	a5,a5,a4
1c0099a6:	c63e                	sw	a5,12(sp)
1c0099a8:	4732                	lw	a4,12(sp)
1c0099aa:	7c47a803          	lw	a6,1988(a5) # ffffc7c4 <__l2_shared_end+0xe3fec7c4>
1c0099ae:	7c87a503          	lw	a0,1992(a5)
1c0099b2:	7cc7a583          	lw	a1,1996(a5)
1c0099b6:	7d07a603          	lw	a2,2000(a5)
1c0099ba:	7d47a683          	lw	a3,2004(a5)
1c0099be:	7c07a883          	lw	a7,1984(a5)
1c0099c2:	7d872703          	lw	a4,2008(a4)
1c0099c6:	7dc7a783          	lw	a5,2012(a5)
1c0099ca:	0105d413          	srli	s0,a1,0x10
1c0099ce:	0088dd93          	srli	s11,a7,0x8
1c0099d2:	0108dd13          	srli	s10,a7,0x10
1c0099d6:	0188dc93          	srli	s9,a7,0x18
1c0099da:	00885c13          	srli	s8,a6,0x8
1c0099de:	01085b13          	srli	s6,a6,0x10
1c0099e2:	01885a93          	srli	s5,a6,0x18
1c0099e6:	00855a13          	srli	s4,a0,0x8
1c0099ea:	01055993          	srli	s3,a0,0x10
1c0099ee:	01855913          	srli	s2,a0,0x18
1c0099f2:	0085d493          	srli	s1,a1,0x8
1c0099f6:	0185d393          	srli	t2,a1,0x18
1c0099fa:	00865293          	srli	t0,a2,0x8
1c0099fe:	01065f93          	srli	t6,a2,0x10
1c009a02:	01865f13          	srli	t5,a2,0x18
1c009a06:	0086de93          	srli	t4,a3,0x8
1c009a0a:	0186d313          	srli	t1,a3,0x18
1c009a0e:	611b8023          	sb	a7,1536(s7) # ff0600 <__CTOR_LIST__-0x1b00fa04>
1c009a12:	61bb80a3          	sb	s11,1537(s7)
1c009a16:	61ab8123          	sb	s10,1538(s7)
1c009a1a:	619b81a3          	sb	s9,1539(s7)
1c009a1e:	610b8223          	sb	a6,1540(s7)
1c009a22:	618b82a3          	sb	s8,1541(s7)
1c009a26:	616b8323          	sb	s6,1542(s7)
1c009a2a:	615b83a3          	sb	s5,1543(s7)
1c009a2e:	60ab8423          	sb	a0,1544(s7)
1c009a32:	614b84a3          	sb	s4,1545(s7)
1c009a36:	613b8523          	sb	s3,1546(s7)
1c009a3a:	612b85a3          	sb	s2,1547(s7)
1c009a3e:	60bb8623          	sb	a1,1548(s7)
1c009a42:	609b86a3          	sb	s1,1549(s7)
1c009a46:	608b8723          	sb	s0,1550(s7)
1c009a4a:	60cb8823          	sb	a2,1552(s7)
1c009a4e:	60db8a23          	sb	a3,1556(s7)
1c009a52:	0106de13          	srli	t3,a3,0x10
1c009a56:	607b87a3          	sb	t2,1551(s7)
1c009a5a:	605b88a3          	sb	t0,1553(s7)
1c009a5e:	61fb8923          	sb	t6,1554(s7)
1c009a62:	61eb89a3          	sb	t5,1555(s7)
1c009a66:	61db8aa3          	sb	t4,1557(s7)
1c009a6a:	61cb8b23          	sb	t3,1558(s7)
1c009a6e:	00875893          	srli	a7,a4,0x8
1c009a72:	606b8ba3          	sb	t1,1559(s7)
1c009a76:	01075813          	srli	a6,a4,0x10
1c009a7a:	01875513          	srli	a0,a4,0x18
1c009a7e:	0087d593          	srli	a1,a5,0x8
1c009a82:	0107d613          	srli	a2,a5,0x10
1c009a86:	0187d693          	srli	a3,a5,0x18
1c009a8a:	6311                	lui	t1,0x4
1c009a8c:	60eb8c23          	sb	a4,1560(s7)
1c009a90:	611b8ca3          	sb	a7,1561(s7)
1c009a94:	610b8d23          	sb	a6,1562(s7)
1c009a98:	60ab8da3          	sb	a0,1563(s7)
1c009a9c:	60fb8e23          	sb	a5,1564(s7)
1c009aa0:	60bb8ea3          	sb	a1,1565(s7)
1c009aa4:	60cb8f23          	sb	a2,1566(s7)
1c009aa8:	60db8fa3          	sb	a3,1567(s7)
1c009aac:	85030313          	addi	t1,t1,-1968 # 3850 <__CTOR_LIST__-0x1bffc7b4>
1c009ab0:	911a                	add	sp,sp,t1
1c009ab2:	40b6                	lw	ra,76(sp)
1c009ab4:	4426                	lw	s0,72(sp)
1c009ab6:	4496                	lw	s1,68(sp)
1c009ab8:	4906                	lw	s2,64(sp)
1c009aba:	59f2                	lw	s3,60(sp)
1c009abc:	5a62                	lw	s4,56(sp)
1c009abe:	5ad2                	lw	s5,52(sp)
1c009ac0:	5b42                	lw	s6,48(sp)
1c009ac2:	5bb2                	lw	s7,44(sp)
1c009ac4:	5c22                	lw	s8,40(sp)
1c009ac6:	5c92                	lw	s9,36(sp)
1c009ac8:	5d02                	lw	s10,32(sp)
1c009aca:	4df2                	lw	s11,28(sp)
1c009acc:	6161                	addi	sp,sp,80
1c009ace:	8082                	ret
1c009ad0:	0048d893          	srli	a7,a7,0x4
1c009ad4:	0712                	slli	a4,a4,0x4
1c009ad6:	01176733          	or	a4,a4,a7
1c009ada:	8c9a                	mv	s9,t1
1c009adc:	d2e451e3          	bge	s0,a4,1c0097fe <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x112>
1c009ae0:	b33d                	j	1c00980e <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x122>
1c009ae2:	dad450e3          	bge	s0,a3,1c009882 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x196>
1c009ae6:	b375                	j	1c009892 <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair+0x1a6>

1c009ae8 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair>:
1c009ae8:	1141                	addi	sp,sp,-16
1c009aea:	c422                	sw	s0,8(sp)
1c009aec:	c226                	sw	s1,4(sp)
1c009aee:	842a                	mv	s0,a0
1c009af0:	84ae                	mv	s1,a1
1c009af2:	c606                	sw	ra,12(sp)
1c009af4:	c04a                	sw	s2,0(sp)
1c009af6:	3edd                	jal	1c0096ec <PQCLEAN_KYBER1024_CLEAN_indcpa_keypair>
1c009af8:	60048713          	addi	a4,s1,1536
1c009afc:	00440793          	addi	a5,s0,4
1c009b00:	00f77663          	bgeu	a4,a5,1c009b0c <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x24>
1c009b04:	60448793          	addi	a5,s1,1540
1c009b08:	06f46c63          	bltu	s0,a5,1c009b80 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x98>
1c009b0c:	86a2                	mv	a3,s0
1c009b0e:	62040313          	addi	t1,s0,1568
1c009b12:	0016c803          	lbu	a6,1(a3)
1c009b16:	0006c883          	lbu	a7,0(a3)
1c009b1a:	0026c603          	lbu	a2,2(a3)
1c009b1e:	0036c783          	lbu	a5,3(a3)
1c009b22:	0822                	slli	a6,a6,0x8
1c009b24:	01186833          	or	a6,a6,a7
1c009b28:	0642                	slli	a2,a2,0x10
1c009b2a:	01066633          	or	a2,a2,a6
1c009b2e:	07e2                	slli	a5,a5,0x18
1c009b30:	8fd1                	or	a5,a5,a2
1c009b32:	0087d893          	srli	a7,a5,0x8
1c009b36:	0107d813          	srli	a6,a5,0x10
1c009b3a:	83e1                	srli	a5,a5,0x18
1c009b3c:	00c70023          	sb	a2,0(a4)
1c009b40:	011700a3          	sb	a7,1(a4)
1c009b44:	01070123          	sb	a6,2(a4)
1c009b48:	00f701a3          	sb	a5,3(a4)
1c009b4c:	0691                	addi	a3,a3,4
1c009b4e:	0711                	addi	a4,a4,4
1c009b50:	fc6691e3          	bne	a3,t1,1c009b12 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x2a>
1c009b54:	6905                	lui	s2,0x1
1c009b56:	c2090513          	addi	a0,s2,-992 # c20 <__CTOR_LIST__-0x1bfff3e4>
1c009b5a:	85a2                	mv	a1,s0
1c009b5c:	9526                	add	a0,a0,s1
1c009b5e:	62000613          	li	a2,1568
1c009b62:	92aff0ef          	jal	ra,1c008c8c <sha3_256>
1c009b66:	c4090513          	addi	a0,s2,-960
1c009b6a:	9526                	add	a0,a0,s1
1c009b6c:	02000593          	li	a1,32
1c009b70:	2e65                	jal	1c009f28 <randombytes>
1c009b72:	40b2                	lw	ra,12(sp)
1c009b74:	4422                	lw	s0,8(sp)
1c009b76:	4492                	lw	s1,4(sp)
1c009b78:	4902                	lw	s2,0(sp)
1c009b7a:	4501                	li	a0,0
1c009b7c:	0141                	addi	sp,sp,16
1c009b7e:	8082                	ret
1c009b80:	87a2                	mv	a5,s0
1c009b82:	62040613          	addi	a2,s0,1568
1c009b86:	0007c683          	lbu	a3,0(a5)
1c009b8a:	0785                	addi	a5,a5,1
1c009b8c:	0705                	addi	a4,a4,1
1c009b8e:	fed70fa3          	sb	a3,-1(a4)
1c009b92:	fec79ae3          	bne	a5,a2,1c009b86 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x9e>
1c009b96:	bf7d                	j	1c009b54 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_keypair+0x6c>

1c009b98 <PQCLEAN_KYBER1024_CLEAN_basemul>:
1c009b98:	00261783          	lh	a5,2(a2)
1c009b9c:	00259703          	lh	a4,2(a1)
1c009ba0:	1101                	addi	sp,sp,-32
1c009ba2:	cc22                	sw	s0,24(sp)
1c009ba4:	842a                	mv	s0,a0
1c009ba6:	02f70533          	mul	a0,a4,a5
1c009baa:	ce06                	sw	ra,28(sp)
1c009bac:	ca26                	sw	s1,20(sp)
1c009bae:	c84a                	sw	s2,16(sp)
1c009bb0:	c64e                	sw	s3,12(sp)
1c009bb2:	892e                	mv	s2,a1
1c009bb4:	84b2                	mv	s1,a2
1c009bb6:	89b6                	mv	s3,a3
1c009bb8:	2d19                	jal	1c00a1ce <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c009bba:	87aa                	mv	a5,a0
1c009bbc:	03350533          	mul	a0,a0,s3
1c009bc0:	00f41023          	sh	a5,0(s0)
1c009bc4:	2529                	jal	1c00a1ce <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c009bc6:	00a41023          	sh	a0,0(s0)
1c009bca:	00049783          	lh	a5,0(s1)
1c009bce:	00091503          	lh	a0,0(s2)
1c009bd2:	02f50533          	mul	a0,a0,a5
1c009bd6:	2be5                	jal	1c00a1ce <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c009bd8:	00045783          	lhu	a5,0(s0)
1c009bdc:	953e                	add	a0,a0,a5
1c009bde:	00a41023          	sh	a0,0(s0)
1c009be2:	00249783          	lh	a5,2(s1)
1c009be6:	00091503          	lh	a0,0(s2)
1c009bea:	02f50533          	mul	a0,a0,a5
1c009bee:	23c5                	jal	1c00a1ce <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c009bf0:	00a41123          	sh	a0,2(s0)
1c009bf4:	00049783          	lh	a5,0(s1)
1c009bf8:	00291503          	lh	a0,2(s2)
1c009bfc:	02f50533          	mul	a0,a0,a5
1c009c00:	23f9                	jal	1c00a1ce <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c009c02:	00245783          	lhu	a5,2(s0)
1c009c06:	40f2                	lw	ra,28(sp)
1c009c08:	44d2                	lw	s1,20(sp)
1c009c0a:	953e                	add	a0,a0,a5
1c009c0c:	00a41123          	sh	a0,2(s0)
1c009c10:	4462                	lw	s0,24(sp)
1c009c12:	4942                	lw	s2,16(sp)
1c009c14:	49b2                	lw	s3,12(sp)
1c009c16:	6105                	addi	sp,sp,32
1c009c18:	8082                	ret

1c009c1a <PQCLEAN_KYBER1024_CLEAN_poly_tobytes>:
1c009c1a:	6805                	lui	a6,0x1
1c009c1c:	18050893          	addi	a7,a0,384
1c009c20:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009c24:	00059703          	lh	a4,0(a1)
1c009c28:	00259783          	lh	a5,2(a1)
1c009c2c:	050d                	addi	a0,a0,3
1c009c2e:	40f75613          	srai	a2,a4,0xf
1c009c32:	40f7d693          	srai	a3,a5,0xf
1c009c36:	01067633          	and	a2,a2,a6
1c009c3a:	0106f6b3          	and	a3,a3,a6
1c009c3e:	9732                	add	a4,a4,a2
1c009c40:	97b6                	add	a5,a5,a3
1c009c42:	0742                	slli	a4,a4,0x10
1c009c44:	07c2                	slli	a5,a5,0x10
1c009c46:	8341                	srli	a4,a4,0x10
1c009c48:	83c1                	srli	a5,a5,0x10
1c009c4a:	00479613          	slli	a2,a5,0x4
1c009c4e:	00875693          	srli	a3,a4,0x8
1c009c52:	8ed1                	or	a3,a3,a2
1c009c54:	8391                	srli	a5,a5,0x4
1c009c56:	fee50ea3          	sb	a4,-3(a0)
1c009c5a:	fed50f23          	sb	a3,-2(a0)
1c009c5e:	fef50fa3          	sb	a5,-1(a0)
1c009c62:	0591                	addi	a1,a1,4
1c009c64:	fca890e3          	bne	a7,a0,1c009c24 <PQCLEAN_KYBER1024_CLEAN_poly_tobytes+0xa>
1c009c68:	8082                	ret

1c009c6a <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>:
1c009c6a:	7175                	addi	sp,sp,-144
1c009c6c:	c522                	sw	s0,136(sp)
1c009c6e:	86b2                	mv	a3,a2
1c009c70:	842a                	mv	s0,a0
1c009c72:	862e                	mv	a2,a1
1c009c74:	850a                	mv	a0,sp
1c009c76:	08000593          	li	a1,128
1c009c7a:	c706                	sw	ra,140(sp)
1c009c7c:	23e9                	jal	1c00a246 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c009c7e:	858a                	mv	a1,sp
1c009c80:	8522                	mv	a0,s0
1c009c82:	fc0fe0ef          	jal	ra,1c008442 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>
1c009c86:	40ba                	lw	ra,140(sp)
1c009c88:	442a                	lw	s0,136(sp)
1c009c8a:	6149                	addi	sp,sp,144
1c009c8c:	8082                	ret

1c009c8e <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>:
1c009c8e:	1101                	addi	sp,sp,-32
1c009c90:	c452                	sw	s4,8(sp)
1c009c92:	c256                	sw	s5,4(sp)
1c009c94:	1c000a37          	lui	s4,0x1c000
1c009c98:	1c000ab7          	lui	s5,0x1c000
1c009c9c:	ca26                	sw	s1,20(sp)
1c009c9e:	c84a                	sw	s2,16(sp)
1c009ca0:	c64e                	sw	s3,12(sp)
1c009ca2:	ce06                	sw	ra,28(sp)
1c009ca4:	cc22                	sw	s0,24(sp)
1c009ca6:	1d0a0a13          	addi	s4,s4,464 # 1c0001d0 <PQCLEAN_KYBER1024_CLEAN_zetas+0x80>
1c009caa:	00450993          	addi	s3,a0,4
1c009cae:	00458913          	addi	s2,a1,4
1c009cb2:	00460493          	addi	s1,a2,4
1c009cb6:	250a8a93          	addi	s5,s5,592 # 1c000250 <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c009cba:	000a1403          	lh	s0,0(s4)
1c009cbe:	ffc48613          	addi	a2,s1,-4
1c009cc2:	ffc90593          	addi	a1,s2,-4
1c009cc6:	ffc98513          	addi	a0,s3,-4
1c009cca:	86a2                	mv	a3,s0
1c009ccc:	35f1                	jal	1c009b98 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c009cce:	408006b3          	neg	a3,s0
1c009cd2:	06c2                	slli	a3,a3,0x10
1c009cd4:	8626                	mv	a2,s1
1c009cd6:	85ca                	mv	a1,s2
1c009cd8:	854e                	mv	a0,s3
1c009cda:	86c1                	srai	a3,a3,0x10
1c009cdc:	0a09                	addi	s4,s4,2
1c009cde:	3d6d                	jal	1c009b98 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c009ce0:	09a1                	addi	s3,s3,8
1c009ce2:	0921                	addi	s2,s2,8
1c009ce4:	04a1                	addi	s1,s1,8
1c009ce6:	fd4a9ae3          	bne	s5,s4,1c009cba <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0x2c>
1c009cea:	40f2                	lw	ra,28(sp)
1c009cec:	4462                	lw	s0,24(sp)
1c009cee:	44d2                	lw	s1,20(sp)
1c009cf0:	4942                	lw	s2,16(sp)
1c009cf2:	49b2                	lw	s3,12(sp)
1c009cf4:	4a22                	lw	s4,8(sp)
1c009cf6:	4a92                	lw	s5,4(sp)
1c009cf8:	6105                	addi	sp,sp,32
1c009cfa:	8082                	ret

1c009cfc <PQCLEAN_KYBER1024_CLEAN_poly_tomont>:
1c009cfc:	1141                	addi	sp,sp,-16
1c009cfe:	c422                	sw	s0,8(sp)
1c009d00:	c226                	sw	s1,4(sp)
1c009d02:	c04a                	sw	s2,0(sp)
1c009d04:	c606                	sw	ra,12(sp)
1c009d06:	842a                	mv	s0,a0
1c009d08:	20050913          	addi	s2,a0,512
1c009d0c:	54900493          	li	s1,1353
1c009d10:	00041503          	lh	a0,0(s0)
1c009d14:	0409                	addi	s0,s0,2
1c009d16:	02950533          	mul	a0,a0,s1
1c009d1a:	2955                	jal	1c00a1ce <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c009d1c:	fea41f23          	sh	a0,-2(s0)
1c009d20:	ff2418e3          	bne	s0,s2,1c009d10 <PQCLEAN_KYBER1024_CLEAN_poly_tomont+0x14>
1c009d24:	40b2                	lw	ra,12(sp)
1c009d26:	4422                	lw	s0,8(sp)
1c009d28:	4492                	lw	s1,4(sp)
1c009d2a:	4902                	lw	s2,0(sp)
1c009d2c:	0141                	addi	sp,sp,16
1c009d2e:	8082                	ret

1c009d30 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>:
1c009d30:	1141                	addi	sp,sp,-16
1c009d32:	c422                	sw	s0,8(sp)
1c009d34:	c226                	sw	s1,4(sp)
1c009d36:	c606                	sw	ra,12(sp)
1c009d38:	842a                	mv	s0,a0
1c009d3a:	20050493          	addi	s1,a0,512
1c009d3e:	00041503          	lh	a0,0(s0)
1c009d42:	0409                	addi	s0,s0,2
1c009d44:	215d                	jal	1c00a1ea <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c009d46:	fea41f23          	sh	a0,-2(s0)
1c009d4a:	fe941ae3          	bne	s0,s1,1c009d3e <PQCLEAN_KYBER1024_CLEAN_poly_reduce+0xe>
1c009d4e:	40b2                	lw	ra,12(sp)
1c009d50:	4422                	lw	s0,8(sp)
1c009d52:	4492                	lw	s1,4(sp)
1c009d54:	0141                	addi	sp,sp,16
1c009d56:	8082                	ret

1c009d58 <PQCLEAN_KYBER1024_CLEAN_poly_add>:
1c009d58:	4781                	li	a5,0
1c009d5a:	20000893          	li	a7,512
1c009d5e:	00f606b3          	add	a3,a2,a5
1c009d62:	00f58733          	add	a4,a1,a5
1c009d66:	0006d803          	lhu	a6,0(a3)
1c009d6a:	00075703          	lhu	a4,0(a4)
1c009d6e:	00f506b3          	add	a3,a0,a5
1c009d72:	0789                	addi	a5,a5,2
1c009d74:	9742                	add	a4,a4,a6
1c009d76:	00e69023          	sh	a4,0(a3)
1c009d7a:	ff1792e3          	bne	a5,a7,1c009d5e <PQCLEAN_KYBER1024_CLEAN_poly_add+0x6>
1c009d7e:	8082                	ret

1c009d80 <PQCLEAN_KYBER1024_CLEAN_polyvec_tobytes>:
1c009d80:	1141                	addi	sp,sp,-16
1c009d82:	c422                	sw	s0,8(sp)
1c009d84:	c226                	sw	s1,4(sp)
1c009d86:	c04a                	sw	s2,0(sp)
1c009d88:	c606                	sw	ra,12(sp)
1c009d8a:	842a                	mv	s0,a0
1c009d8c:	84ae                	mv	s1,a1
1c009d8e:	60050913          	addi	s2,a0,1536
1c009d92:	85a6                	mv	a1,s1
1c009d94:	8522                	mv	a0,s0
1c009d96:	18040413          	addi	s0,s0,384
1c009d9a:	3541                	jal	1c009c1a <PQCLEAN_KYBER1024_CLEAN_poly_tobytes>
1c009d9c:	20048493          	addi	s1,s1,512
1c009da0:	ff2419e3          	bne	s0,s2,1c009d92 <PQCLEAN_KYBER1024_CLEAN_polyvec_tobytes+0x12>
1c009da4:	40b2                	lw	ra,12(sp)
1c009da6:	4422                	lw	s0,8(sp)
1c009da8:	4492                	lw	s1,4(sp)
1c009daa:	4902                	lw	s2,0(sp)
1c009dac:	0141                	addi	sp,sp,16
1c009dae:	8082                	ret

1c009db0 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>:
1c009db0:	9e010113          	addi	sp,sp,-1568
1c009db4:	60812c23          	sw	s0,1560(sp)
1c009db8:	6405                	lui	s0,0x1
1c009dba:	60912a23          	sw	s1,1556(sp)
1c009dbe:	80040413          	addi	s0,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c009dc2:	64c1                	lui	s1,0x10
1c009dc4:	61212823          	sw	s2,1552(sp)
1c009dc8:	61312623          	sw	s3,1548(sp)
1c009dcc:	61412423          	sw	s4,1544(sp)
1c009dd0:	60112e23          	sw	ra,1564(sp)
1c009dd4:	8a2a                	mv	s4,a0
1c009dd6:	942a                	add	s0,s0,a0
1c009dd8:	40010993          	addi	s3,sp,1024
1c009ddc:	14fd                	addi	s1,s1,-1
1c009dde:	10000913          	li	s2,256
1c009de2:	20000613          	li	a2,512
1c009de6:	85d2                	mv	a1,s4
1c009de8:	854e                	mv	a0,s3
1c009dea:	2975                	jal	1c00a2a6 <memcpy>
1c009dec:	864e                	mv	a2,s3
1c009dee:	4681                	li	a3,0
1c009df0:	00061703          	lh	a4,0(a2)
1c009df4:	00261583          	lh	a1,2(a2)
1c009df8:	4016d793          	srai	a5,a3,0x1
1c009dfc:	078a                	slli	a5,a5,0x2
1c009dfe:	0742                	slli	a4,a4,0x10
1c009e00:	8de5                	and	a1,a1,s1
1c009e02:	60010513          	addi	a0,sp,1536
1c009e06:	97aa                	add	a5,a5,a0
1c009e08:	8f4d                	or	a4,a4,a1
1c009e0a:	a0e7a023          	sw	a4,-1536(a5)
1c009e0e:	0689                	addi	a3,a3,2
1c009e10:	0611                	addi	a2,a2,4
1c009e12:	fd269fe3          	bne	a3,s2,1c009df0 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x40>
1c009e16:	040c                	addi	a1,sp,512
1c009e18:	850a                	mv	a0,sp
1c009e1a:	dccfe0ef          	jal	ra,1c0083e6 <KYBER_poly_ntt>
1c009e1e:	0418                	addi	a4,sp,512
1c009e20:	87d2                	mv	a5,s4
1c009e22:	4310                	lw	a2,0(a4)
1c009e24:	4354                	lw	a3,4(a4)
1c009e26:	0721                	addi	a4,a4,8
1c009e28:	01065813          	srli	a6,a2,0x10
1c009e2c:	0106d593          	srli	a1,a3,0x10
1c009e30:	01079023          	sh	a6,0(a5)
1c009e34:	00b79123          	sh	a1,2(a5)
1c009e38:	00c79223          	sh	a2,4(a5)
1c009e3c:	00d79323          	sh	a3,6(a5)
1c009e40:	07a1                	addi	a5,a5,8
1c009e42:	fee990e3          	bne	s3,a4,1c009e22 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x72>
1c009e46:	200a0a13          	addi	s4,s4,512
1c009e4a:	f9441ce3          	bne	s0,s4,1c009de2 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x32>
1c009e4e:	61c12083          	lw	ra,1564(sp)
1c009e52:	61812403          	lw	s0,1560(sp)
1c009e56:	61412483          	lw	s1,1556(sp)
1c009e5a:	61012903          	lw	s2,1552(sp)
1c009e5e:	60c12983          	lw	s3,1548(sp)
1c009e62:	60812a03          	lw	s4,1544(sp)
1c009e66:	62010113          	addi	sp,sp,1568
1c009e6a:	8082                	ret

1c009e6c <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>:
1c009e6c:	de010113          	addi	sp,sp,-544
1c009e70:	20812c23          	sw	s0,536(sp)
1c009e74:	20912a23          	sw	s1,532(sp)
1c009e78:	21212823          	sw	s2,528(sp)
1c009e7c:	21312623          	sw	s3,524(sp)
1c009e80:	20112e23          	sw	ra,540(sp)
1c009e84:	84aa                	mv	s1,a0
1c009e86:	89ae                	mv	s3,a1
1c009e88:	8932                	mv	s2,a2
1c009e8a:	20000413          	li	s0,512
1c009e8e:	3501                	jal	1c009c8e <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c009e90:	00890633          	add	a2,s2,s0
1c009e94:	008985b3          	add	a1,s3,s0
1c009e98:	850a                	mv	a0,sp
1c009e9a:	3bd5                	jal	1c009c8e <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c009e9c:	860a                	mv	a2,sp
1c009e9e:	85a6                	mv	a1,s1
1c009ea0:	8526                	mv	a0,s1
1c009ea2:	20040413          	addi	s0,s0,512
1c009ea6:	3d4d                	jal	1c009d58 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c009ea8:	80040793          	addi	a5,s0,-2048
1c009eac:	f3f5                	bnez	a5,1c009e90 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery+0x24>
1c009eae:	8526                	mv	a0,s1
1c009eb0:	3541                	jal	1c009d30 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c009eb2:	21c12083          	lw	ra,540(sp)
1c009eb6:	21812403          	lw	s0,536(sp)
1c009eba:	21412483          	lw	s1,532(sp)
1c009ebe:	21012903          	lw	s2,528(sp)
1c009ec2:	20c12983          	lw	s3,524(sp)
1c009ec6:	22010113          	addi	sp,sp,544
1c009eca:	8082                	ret

1c009ecc <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>:
1c009ecc:	1141                	addi	sp,sp,-16
1c009ece:	c606                	sw	ra,12(sp)
1c009ed0:	c422                	sw	s0,8(sp)
1c009ed2:	842a                	mv	s0,a0
1c009ed4:	3db1                	jal	1c009d30 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c009ed6:	20040513          	addi	a0,s0,512
1c009eda:	3d99                	jal	1c009d30 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c009edc:	40040513          	addi	a0,s0,1024
1c009ee0:	3d81                	jal	1c009d30 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c009ee2:	60040513          	addi	a0,s0,1536
1c009ee6:	4422                	lw	s0,8(sp)
1c009ee8:	40b2                	lw	ra,12(sp)
1c009eea:	0141                	addi	sp,sp,16
1c009eec:	b591                	j	1c009d30 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>

1c009eee <PQCLEAN_KYBER1024_CLEAN_polyvec_add>:
1c009eee:	1101                	addi	sp,sp,-32
1c009ef0:	cc22                	sw	s0,24(sp)
1c009ef2:	ca26                	sw	s1,20(sp)
1c009ef4:	c84a                	sw	s2,16(sp)
1c009ef6:	c64e                	sw	s3,12(sp)
1c009ef8:	ce06                	sw	ra,28(sp)
1c009efa:	89aa                	mv	s3,a0
1c009efc:	892e                	mv	s2,a1
1c009efe:	84b2                	mv	s1,a2
1c009f00:	4401                	li	s0,0
1c009f02:	00848633          	add	a2,s1,s0
1c009f06:	008905b3          	add	a1,s2,s0
1c009f0a:	00898533          	add	a0,s3,s0
1c009f0e:	35a9                	jal	1c009d58 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c009f10:	20040413          	addi	s0,s0,512
1c009f14:	80040793          	addi	a5,s0,-2048
1c009f18:	f7ed                	bnez	a5,1c009f02 <PQCLEAN_KYBER1024_CLEAN_polyvec_add+0x14>
1c009f1a:	40f2                	lw	ra,28(sp)
1c009f1c:	4462                	lw	s0,24(sp)
1c009f1e:	44d2                	lw	s1,20(sp)
1c009f20:	4942                	lw	s2,16(sp)
1c009f22:	49b2                	lw	s3,12(sp)
1c009f24:	6105                	addi	sp,sp,32
1c009f26:	8082                	ret

1c009f28 <randombytes>:
1c009f28:	2a058263          	beqz	a1,1c00a1cc <randombytes+0x2a4>
1c009f2c:	715d                	addi	sp,sp,-80
1c009f2e:	00b50733          	add	a4,a0,a1
1c009f32:	c63a                	sw	a4,12(sp)
1c009f34:	9e378737          	lui	a4,0x9e378
1c009f38:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c009f3c:	1c0067b7          	lui	a5,0x1c006
1c009f40:	c43a                	sw	a4,8(sp)
1c009f42:	e377a737          	lui	a4,0xe377a
1c009f46:	2b478793          	addi	a5,a5,692 # 1c0062b4 <outleft>
1c009f4a:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c009f4e:	c83e                	sw	a5,16(sp)
1c009f50:	ca3a                	sw	a4,20(sp)
1c009f52:	439c                	lw	a5,0(a5)
1c009f54:	c6ef3737          	lui	a4,0xc6ef3
1c009f58:	c6a2                	sw	s0,76(sp)
1c009f5a:	1c0062b7          	lui	t0,0x1c006
1c009f5e:	1c006437          	lui	s0,0x1c006
1c009f62:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c009f66:	d06e                	sw	s11,32(sp)
1c009f68:	c4a6                	sw	s1,72(sp)
1c009f6a:	c2ca                	sw	s2,68(sp)
1c009f6c:	c0ce                	sw	s3,64(sp)
1c009f6e:	de52                	sw	s4,60(sp)
1c009f70:	dc56                	sw	s5,56(sp)
1c009f72:	da5a                	sw	s6,52(sp)
1c009f74:	d85e                	sw	s7,48(sp)
1c009f76:	d662                	sw	s8,44(sp)
1c009f78:	d466                	sw	s9,40(sp)
1c009f7a:	d26a                	sw	s10,36(sp)
1c009f7c:	8daa                	mv	s11,a0
1c009f7e:	29040413          	addi	s0,s0,656 # 1c006290 <out>
1c009f82:	26028293          	addi	t0,t0,608 # 1c006260 <in>
1c009f86:	cc3a                	sw	a4,24(sp)
1c009f88:	cf85                	beqz	a5,1c009fc0 <randombytes+0x98>
1c009f8a:	17fd                	addi	a5,a5,-1
1c009f8c:	00279713          	slli	a4,a5,0x2
1c009f90:	9722                	add	a4,a4,s0
1c009f92:	4304                	lw	s1,0(a4)
1c009f94:	4742                	lw	a4,16(sp)
1c009f96:	009d8023          	sb	s1,0(s11)
1c009f9a:	0d85                	addi	s11,s11,1
1c009f9c:	c31c                	sw	a5,0(a4)
1c009f9e:	4732                	lw	a4,12(sp)
1c009fa0:	feed94e3          	bne	s11,a4,1c009f88 <randombytes+0x60>
1c009fa4:	4436                	lw	s0,76(sp)
1c009fa6:	44a6                	lw	s1,72(sp)
1c009fa8:	4916                	lw	s2,68(sp)
1c009faa:	4986                	lw	s3,64(sp)
1c009fac:	5a72                	lw	s4,60(sp)
1c009fae:	5ae2                	lw	s5,56(sp)
1c009fb0:	5b52                	lw	s6,52(sp)
1c009fb2:	5bc2                	lw	s7,48(sp)
1c009fb4:	5c32                	lw	s8,44(sp)
1c009fb6:	5ca2                	lw	s9,40(sp)
1c009fb8:	5d12                	lw	s10,36(sp)
1c009fba:	5d82                	lw	s11,32(sp)
1c009fbc:	6161                	addi	sp,sp,80
1c009fbe:	8082                	ret
1c009fc0:	0002a703          	lw	a4,0(t0)
1c009fc4:	0042ae83          	lw	t4,4(t0)
1c009fc8:	0082af03          	lw	t5,8(t0)
1c009fcc:	0705                	addi	a4,a4,1
1c009fce:	00e2a023          	sw	a4,0(t0)
1c009fd2:	00c2af83          	lw	t6,12(t0)
1c009fd6:	ef11                	bnez	a4,1c009ff2 <randombytes+0xca>
1c009fd8:	0e85                	addi	t4,t4,1
1c009fda:	01d2a223          	sw	t4,4(t0)
1c009fde:	000e9a63          	bnez	t4,1c009ff2 <randombytes+0xca>
1c009fe2:	0f05                	addi	t5,t5,1
1c009fe4:	01e2a423          	sw	t5,8(t0)
1c009fe8:	000f1563          	bnez	t5,1c009ff2 <randombytes+0xca>
1c009fec:	0f85                	addi	t6,t6,1
1c009fee:	01f2a623          	sw	t6,12(t0)
1c009ff2:	0102ae03          	lw	t3,16(t0)
1c009ff6:	0142a303          	lw	t1,20(t0)
1c009ffa:	0182a883          	lw	a7,24(t0)
1c009ffe:	01c2a803          	lw	a6,28(t0)
1c00a002:	0202a503          	lw	a0,32(t0)
1c00a006:	0242a583          	lw	a1,36(t0)
1c00a00a:	0282a603          	lw	a2,40(t0)
1c00a00e:	02c2a683          	lw	a3,44(t0)
1c00a012:	00974713          	xori	a4,a4,9
1c00a016:	007ece93          	xori	t4,t4,7
1c00a01a:	009f4f13          	xori	t5,t5,9
1c00a01e:	003fcf93          	xori	t6,t6,3
1c00a022:	002e4e13          	xori	t3,t3,2
1c00a026:	00334313          	xori	t1,t1,3
1c00a02a:	0088c893          	xori	a7,a7,8
1c00a02e:	00484813          	xori	a6,a6,4
1c00a032:	00654513          	xori	a0,a0,6
1c00a036:	0025c593          	xori	a1,a1,2
1c00a03a:	00664613          	xori	a2,a2,6
1c00a03e:	0046c693          	xori	a3,a3,4
1c00a042:	4495                	li	s1,5
1c00a044:	49a5                	li	s3,9
1c00a046:	4a1d                	li	s4,7
1c00a048:	4a89                	li	s5,2
1c00a04a:	4b0d                	li	s6,3
1c00a04c:	4ba1                	li	s7,8
1c00a04e:	4d0d                	li	s10,3
1c00a050:	4c0d                	li	s8,3
1c00a052:	4781                	li	a5,0
1c00a054:	ce6e                	sw	s11,28(sp)
1c00a056:	43d2                	lw	t2,20(sp)
1c00a058:	00778db3          	add	s11,a5,t2
1c00a05c:	43a2                	lw	t2,8(sp)
1c00a05e:	01b6dc93          	srli	s9,a3,0x1b
1c00a062:	00569913          	slli	s2,a3,0x5
1c00a066:	979e                	add	a5,a5,t2
1c00a068:	0036c393          	xori	t2,a3,3
1c00a06c:	01996933          	or	s2,s2,s9
1c00a070:	93be                	add	t2,t2,a5
1c00a072:	0123c3b3          	xor	t2,t2,s2
1c00a076:	971e                	add	a4,a4,t2
1c00a078:	01975c93          	srli	s9,a4,0x19
1c00a07c:	00174393          	xori	t2,a4,1
1c00a080:	00771913          	slli	s2,a4,0x7
1c00a084:	01996933          	or	s2,s2,s9
1c00a088:	93be                	add	t2,t2,a5
1c00a08a:	0123c3b3          	xor	t2,t2,s2
1c00a08e:	9e9e                	add	t4,t4,t2
1c00a090:	017edc93          	srli	s9,t4,0x17
1c00a094:	004ec393          	xori	t2,t4,4
1c00a098:	009e9913          	slli	s2,t4,0x9
1c00a09c:	01996933          	or	s2,s2,s9
1c00a0a0:	93be                	add	t2,t2,a5
1c00a0a2:	0123c3b3          	xor	t2,t2,s2
1c00a0a6:	9f1e                	add	t5,t5,t2
1c00a0a8:	013f5c93          	srli	s9,t5,0x13
1c00a0ac:	001f4393          	xori	t2,t5,1
1c00a0b0:	00df1913          	slli	s2,t5,0xd
1c00a0b4:	01996933          	or	s2,s2,s9
1c00a0b8:	93be                	add	t2,t2,a5
1c00a0ba:	0123c3b3          	xor	t2,t2,s2
1c00a0be:	9f9e                	add	t6,t6,t2
1c00a0c0:	01bfdc93          	srli	s9,t6,0x1b
1c00a0c4:	005fc393          	xori	t2,t6,5
1c00a0c8:	005f9913          	slli	s2,t6,0x5
1c00a0cc:	01996933          	or	s2,s2,s9
1c00a0d0:	93be                	add	t2,t2,a5
1c00a0d2:	0123c3b3          	xor	t2,t2,s2
1c00a0d6:	9e1e                	add	t3,t3,t2
1c00a0d8:	019e5c93          	srli	s9,t3,0x19
1c00a0dc:	009e4393          	xori	t2,t3,9
1c00a0e0:	007e1913          	slli	s2,t3,0x7
1c00a0e4:	01996933          	or	s2,s2,s9
1c00a0e8:	93be                	add	t2,t2,a5
1c00a0ea:	0123c3b3          	xor	t2,t2,s2
1c00a0ee:	931e                	add	t1,t1,t2
1c00a0f0:	01735c93          	srli	s9,t1,0x17
1c00a0f4:	00234393          	xori	t2,t1,2
1c00a0f8:	00931913          	slli	s2,t1,0x9
1c00a0fc:	01996933          	or	s2,s2,s9
1c00a100:	93be                	add	t2,t2,a5
1c00a102:	0123c3b3          	xor	t2,t2,s2
1c00a106:	989e                	add	a7,a7,t2
1c00a108:	0138dc93          	srli	s9,a7,0x13
1c00a10c:	0068c393          	xori	t2,a7,6
1c00a110:	00d89913          	slli	s2,a7,0xd
1c00a114:	01996933          	or	s2,s2,s9
1c00a118:	93be                	add	t2,t2,a5
1c00a11a:	0123c3b3          	xor	t2,t2,s2
1c00a11e:	981e                	add	a6,a6,t2
1c00a120:	01b85c93          	srli	s9,a6,0x1b
1c00a124:	00584393          	xori	t2,a6,5
1c00a128:	00581913          	slli	s2,a6,0x5
1c00a12c:	01996933          	or	s2,s2,s9
1c00a130:	93be                	add	t2,t2,a5
1c00a132:	0123c3b3          	xor	t2,t2,s2
1c00a136:	951e                	add	a0,a0,t2
1c00a138:	01955c93          	srli	s9,a0,0x19
1c00a13c:	00354393          	xori	t2,a0,3
1c00a140:	00751913          	slli	s2,a0,0x7
1c00a144:	01996933          	or	s2,s2,s9
1c00a148:	93be                	add	t2,t2,a5
1c00a14a:	0123c3b3          	xor	t2,t2,s2
1c00a14e:	959e                	add	a1,a1,t2
1c00a150:	0175dc93          	srli	s9,a1,0x17
1c00a154:	0055c393          	xori	t2,a1,5
1c00a158:	00959913          	slli	s2,a1,0x9
1c00a15c:	01996933          	or	s2,s2,s9
1c00a160:	93be                	add	t2,t2,a5
1c00a162:	0123c3b3          	xor	t2,t2,s2
1c00a166:	961e                	add	a2,a2,t2
1c00a168:	00864393          	xori	t2,a2,8
1c00a16c:	00d61913          	slli	s2,a2,0xd
1c00a170:	01365c93          	srli	s9,a2,0x13
1c00a174:	93be                	add	t2,t2,a5
1c00a176:	01996933          	or	s2,s2,s9
1c00a17a:	0123c3b3          	xor	t2,t2,s2
1c00a17e:	969e                	add	a3,a3,t2
1c00a180:	edb79ee3          	bne	a5,s11,1c00a05c <randombytes+0x134>
1c00a184:	43e2                	lw	t2,24(sp)
1c00a186:	01cc4c33          	xor	s8,s8,t3
1c00a18a:	006d4d33          	xor	s10,s10,t1
1c00a18e:	011bcbb3          	xor	s7,s7,a7
1c00a192:	010b4b33          	xor	s6,s6,a6
1c00a196:	00aacab3          	xor	s5,s5,a0
1c00a19a:	00ba4a33          	xor	s4,s4,a1
1c00a19e:	00c9c9b3          	xor	s3,s3,a2
1c00a1a2:	8cb5                	xor	s1,s1,a3
1c00a1a4:	ea7799e3          	bne	a5,t2,1c00a056 <randombytes+0x12e>
1c00a1a8:	4df2                	lw	s11,28(sp)
1c00a1aa:	01842023          	sw	s8,0(s0)
1c00a1ae:	01a42223          	sw	s10,4(s0)
1c00a1b2:	01742423          	sw	s7,8(s0)
1c00a1b6:	01642623          	sw	s6,12(s0)
1c00a1ba:	01542823          	sw	s5,16(s0)
1c00a1be:	01442a23          	sw	s4,20(s0)
1c00a1c2:	01342c23          	sw	s3,24(s0)
1c00a1c6:	cc44                	sw	s1,28(s0)
1c00a1c8:	479d                	li	a5,7
1c00a1ca:	b3e9                	j	1c009f94 <randombytes+0x6c>
1c00a1cc:	8082                	ret

1c00a1ce <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>:
1c00a1ce:	777d                	lui	a4,0xfffff
1c00a1d0:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00a1d4:	02f507b3          	mul	a5,a0,a5
1c00a1d8:	2ff70713          	addi	a4,a4,767
1c00a1dc:	07c2                	slli	a5,a5,0x10
1c00a1de:	87c1                	srai	a5,a5,0x10
1c00a1e0:	02e787b3          	mul	a5,a5,a4
1c00a1e4:	953e                	add	a0,a0,a5
1c00a1e6:	8541                	srai	a0,a0,0x10
1c00a1e8:	8082                	ret

1c00a1ea <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>:
1c00a1ea:	6795                	lui	a5,0x5
1c00a1ec:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a1f0:	02f507b3          	mul	a5,a0,a5
1c00a1f4:	02000737          	lui	a4,0x2000
1c00a1f8:	97ba                	add	a5,a5,a4
1c00a1fa:	6705                	lui	a4,0x1
1c00a1fc:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a200:	87e9                	srai	a5,a5,0x1a
1c00a202:	02e787b3          	mul	a5,a5,a4
1c00a206:	8d1d                	sub	a0,a0,a5
1c00a208:	0542                	slli	a0,a0,0x10
1c00a20a:	8541                	srai	a0,a0,0x10
1c00a20c:	8082                	ret

1c00a20e <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>:
1c00a20e:	7139                	addi	sp,sp,-64
1c00a210:	da26                	sw	s1,52(sp)
1c00a212:	d84a                	sw	s2,48(sp)
1c00a214:	84b2                	mv	s1,a2
1c00a216:	892a                	mv	s2,a0
1c00a218:	02000613          	li	a2,32
1c00a21c:	0068                	addi	a0,sp,12
1c00a21e:	de06                	sw	ra,60(sp)
1c00a220:	dc22                	sw	s0,56(sp)
1c00a222:	8436                	mv	s0,a3
1c00a224:	2049                	jal	1c00a2a6 <memcpy>
1c00a226:	006c                	addi	a1,sp,12
1c00a228:	854a                	mv	a0,s2
1c00a22a:	02200613          	li	a2,34
1c00a22e:	02910623          	sb	s1,44(sp)
1c00a232:	028106a3          	sb	s0,45(sp)
1c00a236:	ceafe0ef          	jal	ra,1c008720 <shake128_absorb>
1c00a23a:	50f2                	lw	ra,60(sp)
1c00a23c:	5462                	lw	s0,56(sp)
1c00a23e:	54d2                	lw	s1,52(sp)
1c00a240:	5942                	lw	s2,48(sp)
1c00a242:	6121                	addi	sp,sp,64
1c00a244:	8082                	ret

1c00a246 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>:
1c00a246:	7139                	addi	sp,sp,-64
1c00a248:	87b2                	mv	a5,a2
1c00a24a:	da26                	sw	s1,52(sp)
1c00a24c:	d84a                	sw	s2,48(sp)
1c00a24e:	84aa                	mv	s1,a0
1c00a250:	892e                	mv	s2,a1
1c00a252:	02000613          	li	a2,32
1c00a256:	85be                	mv	a1,a5
1c00a258:	0068                	addi	a0,sp,12
1c00a25a:	de06                	sw	ra,60(sp)
1c00a25c:	dc22                	sw	s0,56(sp)
1c00a25e:	8436                	mv	s0,a3
1c00a260:	2099                	jal	1c00a2a6 <memcpy>
1c00a262:	0070                	addi	a2,sp,12
1c00a264:	85ca                	mv	a1,s2
1c00a266:	8526                	mv	a0,s1
1c00a268:	02100693          	li	a3,33
1c00a26c:	02810623          	sb	s0,44(sp)
1c00a270:	f9afe0ef          	jal	ra,1c008a0a <shake256>
1c00a274:	50f2                	lw	ra,60(sp)
1c00a276:	5462                	lw	s0,56(sp)
1c00a278:	54d2                	lw	s1,52(sp)
1c00a27a:	5942                	lw	s2,48(sp)
1c00a27c:	6121                	addi	sp,sp,64
1c00a27e:	8082                	ret

1c00a280 <pos_wait_forever>:
1c00a280:	f14027f3          	csrr	a5,mhartid
1c00a284:	8795                	srai	a5,a5,0x5
1c00a286:	03f7f793          	andi	a5,a5,63
1c00a28a:	477d                	li	a4,31
1c00a28c:	00e78363          	beq	a5,a4,1c00a292 <pos_wait_forever+0x12>
1c00a290:	a001                	j	1c00a290 <pos_wait_forever+0x10>
1c00a292:	1a10a7b7          	lui	a5,0x1a10a
1c00a296:	577d                	li	a4,-1
1c00a298:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a29c:	10500073          	wfi
1c00a2a0:	10500073          	wfi
1c00a2a4:	bfe5                	j	1c00a29c <pos_wait_forever+0x1c>

1c00a2a6 <memcpy>:
1c00a2a6:	00c5e7b3          	or	a5,a1,a2
1c00a2aa:	8fc9                	or	a5,a5,a0
1c00a2ac:	8b8d                	andi	a5,a5,3
1c00a2ae:	872e                	mv	a4,a1
1c00a2b0:	882a                	mv	a6,a0
1c00a2b2:	cbc5                	beqz	a5,1c00a362 <memcpy+0xbc>
1c00a2b4:	c279                	beqz	a2,1c00a37a <memcpy+0xd4>
1c00a2b6:	00350793          	addi	a5,a0,3
1c00a2ba:	8f8d                	sub	a5,a5,a1
1c00a2bc:	0077b793          	sltiu	a5,a5,7
1c00a2c0:	e7d1                	bnez	a5,1c00a34c <memcpy+0xa6>
1c00a2c2:	fff60793          	addi	a5,a2,-1
1c00a2c6:	0047b793          	sltiu	a5,a5,4
1c00a2ca:	e3c9                	bnez	a5,1c00a34c <memcpy+0xa6>
1c00a2cc:	ffc67e13          	andi	t3,a2,-4
1c00a2d0:	9e2e                	add	t3,t3,a1
1c00a2d2:	00174883          	lbu	a7,1(a4)
1c00a2d6:	00074303          	lbu	t1,0(a4)
1c00a2da:	00274683          	lbu	a3,2(a4)
1c00a2de:	00374783          	lbu	a5,3(a4)
1c00a2e2:	08a2                	slli	a7,a7,0x8
1c00a2e4:	0068e8b3          	or	a7,a7,t1
1c00a2e8:	06c2                	slli	a3,a3,0x10
1c00a2ea:	0116e6b3          	or	a3,a3,a7
1c00a2ee:	07e2                	slli	a5,a5,0x18
1c00a2f0:	8fd5                	or	a5,a5,a3
1c00a2f2:	0087d313          	srli	t1,a5,0x8
1c00a2f6:	0107d893          	srli	a7,a5,0x10
1c00a2fa:	83e1                	srli	a5,a5,0x18
1c00a2fc:	00d80023          	sb	a3,0(a6)
1c00a300:	006800a3          	sb	t1,1(a6)
1c00a304:	01180123          	sb	a7,2(a6)
1c00a308:	00f801a3          	sb	a5,3(a6)
1c00a30c:	0711                	addi	a4,a4,4
1c00a30e:	0811                	addi	a6,a6,4
1c00a310:	fdc711e3          	bne	a4,t3,1c00a2d2 <memcpy+0x2c>
1c00a314:	ffc67793          	andi	a5,a2,-4
1c00a318:	00367693          	andi	a3,a2,3
1c00a31c:	00f50733          	add	a4,a0,a5
1c00a320:	95be                	add	a1,a1,a5
1c00a322:	02f60f63          	beq	a2,a5,1c00a360 <memcpy+0xba>
1c00a326:	0005c603          	lbu	a2,0(a1)
1c00a32a:	fff68793          	addi	a5,a3,-1
1c00a32e:	00c70023          	sb	a2,0(a4)
1c00a332:	c79d                	beqz	a5,1c00a360 <memcpy+0xba>
1c00a334:	0015c603          	lbu	a2,1(a1)
1c00a338:	4789                	li	a5,2
1c00a33a:	00c700a3          	sb	a2,1(a4)
1c00a33e:	02f68163          	beq	a3,a5,1c00a360 <memcpy+0xba>
1c00a342:	0025c783          	lbu	a5,2(a1)
1c00a346:	00f70123          	sb	a5,2(a4)
1c00a34a:	8082                	ret
1c00a34c:	962e                	add	a2,a2,a1
1c00a34e:	87aa                	mv	a5,a0
1c00a350:	0005c703          	lbu	a4,0(a1)
1c00a354:	0585                	addi	a1,a1,1
1c00a356:	0785                	addi	a5,a5,1
1c00a358:	fee78fa3          	sb	a4,-1(a5)
1c00a35c:	fec59ae3          	bne	a1,a2,1c00a350 <memcpy+0xaa>
1c00a360:	8082                	ret
1c00a362:	de7d                	beqz	a2,1c00a360 <memcpy+0xba>
1c00a364:	87aa                	mv	a5,a0
1c00a366:	4194                	lw	a3,0(a1)
1c00a368:	0791                	addi	a5,a5,4
1c00a36a:	40c78733          	sub	a4,a5,a2
1c00a36e:	fed7ae23          	sw	a3,-4(a5)
1c00a372:	0591                	addi	a1,a1,4
1c00a374:	fea719e3          	bne	a4,a0,1c00a366 <memcpy+0xc0>
1c00a378:	8082                	ret
1c00a37a:	8082                	ret

1c00a37c <memmove>:
1c00a37c:	40b507b3          	sub	a5,a0,a1
1c00a380:	0ac7e063          	bltu	a5,a2,1c00a420 <memmove+0xa4>
1c00a384:	c661                	beqz	a2,1c00a44c <memmove+0xd0>
1c00a386:	00350793          	addi	a5,a0,3
1c00a38a:	8f8d                	sub	a5,a5,a1
1c00a38c:	0077b793          	sltiu	a5,a5,7
1c00a390:	e3dd                	bnez	a5,1c00a436 <memmove+0xba>
1c00a392:	fff60793          	addi	a5,a2,-1
1c00a396:	0047b793          	sltiu	a5,a5,4
1c00a39a:	efd1                	bnez	a5,1c00a436 <memmove+0xba>
1c00a39c:	ffc67e13          	andi	t3,a2,-4
1c00a3a0:	872e                	mv	a4,a1
1c00a3a2:	882a                	mv	a6,a0
1c00a3a4:	9e2e                	add	t3,t3,a1
1c00a3a6:	00174883          	lbu	a7,1(a4)
1c00a3aa:	00074303          	lbu	t1,0(a4)
1c00a3ae:	00274683          	lbu	a3,2(a4)
1c00a3b2:	00374783          	lbu	a5,3(a4)
1c00a3b6:	08a2                	slli	a7,a7,0x8
1c00a3b8:	0068e8b3          	or	a7,a7,t1
1c00a3bc:	06c2                	slli	a3,a3,0x10
1c00a3be:	0116e6b3          	or	a3,a3,a7
1c00a3c2:	07e2                	slli	a5,a5,0x18
1c00a3c4:	8fd5                	or	a5,a5,a3
1c00a3c6:	0087d313          	srli	t1,a5,0x8
1c00a3ca:	0107d893          	srli	a7,a5,0x10
1c00a3ce:	83e1                	srli	a5,a5,0x18
1c00a3d0:	00d80023          	sb	a3,0(a6)
1c00a3d4:	006800a3          	sb	t1,1(a6)
1c00a3d8:	01180123          	sb	a7,2(a6)
1c00a3dc:	00f801a3          	sb	a5,3(a6)
1c00a3e0:	0711                	addi	a4,a4,4
1c00a3e2:	0811                	addi	a6,a6,4
1c00a3e4:	fdc711e3          	bne	a4,t3,1c00a3a6 <memmove+0x2a>
1c00a3e8:	ffc67793          	andi	a5,a2,-4
1c00a3ec:	00367693          	andi	a3,a2,3
1c00a3f0:	00f50733          	add	a4,a0,a5
1c00a3f4:	95be                	add	a1,a1,a5
1c00a3f6:	04f60a63          	beq	a2,a5,1c00a44a <memmove+0xce>
1c00a3fa:	0005c603          	lbu	a2,0(a1)
1c00a3fe:	fff68793          	addi	a5,a3,-1
1c00a402:	00c70023          	sb	a2,0(a4)
1c00a406:	c3b1                	beqz	a5,1c00a44a <memmove+0xce>
1c00a408:	0015c603          	lbu	a2,1(a1)
1c00a40c:	4789                	li	a5,2
1c00a40e:	00c700a3          	sb	a2,1(a4)
1c00a412:	02f68c63          	beq	a3,a5,1c00a44a <memmove+0xce>
1c00a416:	0025c783          	lbu	a5,2(a1)
1c00a41a:	00f70123          	sb	a5,2(a4)
1c00a41e:	8082                	ret
1c00a420:	167d                	addi	a2,a2,-1
1c00a422:	00c587b3          	add	a5,a1,a2
1c00a426:	0007c703          	lbu	a4,0(a5)
1c00a42a:	00c507b3          	add	a5,a0,a2
1c00a42e:	00e78023          	sb	a4,0(a5)
1c00a432:	f67d                	bnez	a2,1c00a420 <memmove+0xa4>
1c00a434:	8082                	ret
1c00a436:	962a                	add	a2,a2,a0
1c00a438:	87aa                	mv	a5,a0
1c00a43a:	0005c703          	lbu	a4,0(a1)
1c00a43e:	0785                	addi	a5,a5,1
1c00a440:	0585                	addi	a1,a1,1
1c00a442:	fee78fa3          	sb	a4,-1(a5)
1c00a446:	fec79ae3          	bne	a5,a2,1c00a43a <memmove+0xbe>
1c00a44a:	8082                	ret
1c00a44c:	8082                	ret

1c00a44e <strchr>:
1c00a44e:	00054703          	lbu	a4,0(a0)
1c00a452:	0ff5f593          	andi	a1,a1,255
1c00a456:	87aa                	mv	a5,a0
1c00a458:	00b70863          	beq	a4,a1,1c00a468 <strchr+0x1a>
1c00a45c:	cb01                	beqz	a4,1c00a46c <strchr+0x1e>
1c00a45e:	0017c703          	lbu	a4,1(a5)
1c00a462:	0785                	addi	a5,a5,1
1c00a464:	feb71ce3          	bne	a4,a1,1c00a45c <strchr+0xe>
1c00a468:	853e                	mv	a0,a5
1c00a46a:	8082                	ret
1c00a46c:	4501                	li	a0,0
1c00a46e:	dded                	beqz	a1,1c00a468 <strchr+0x1a>
1c00a470:	8082                	ret

1c00a472 <puts>:
1c00a472:	00054783          	lbu	a5,0(a0)
1c00a476:	c78d                	beqz	a5,1c00a4a0 <puts+0x2e>
1c00a478:	f14026f3          	csrr	a3,mhartid
1c00a47c:	00369713          	slli	a4,a3,0x3
1c00a480:	1a10f637          	lui	a2,0x1a10f
1c00a484:	0ff77713          	andi	a4,a4,255
1c00a488:	9732                	add	a4,a4,a2
1c00a48a:	6609                	lui	a2,0x2
1c00a48c:	068a                	slli	a3,a3,0x2
1c00a48e:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a492:	8ef1                	and	a3,a3,a2
1c00a494:	9736                	add	a4,a4,a3
1c00a496:	c31c                	sw	a5,0(a4)
1c00a498:	00154783          	lbu	a5,1(a0)
1c00a49c:	0505                	addi	a0,a0,1
1c00a49e:	ffe5                	bnez	a5,1c00a496 <puts+0x24>
1c00a4a0:	f1402773          	csrr	a4,mhartid
1c00a4a4:	00371793          	slli	a5,a4,0x3
1c00a4a8:	1a10f6b7          	lui	a3,0x1a10f
1c00a4ac:	0ff7f793          	andi	a5,a5,255
1c00a4b0:	97b6                	add	a5,a5,a3
1c00a4b2:	6689                	lui	a3,0x2
1c00a4b4:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a4b8:	070a                	slli	a4,a4,0x2
1c00a4ba:	8f75                	and	a4,a4,a3
1c00a4bc:	97ba                	add	a5,a5,a4
1c00a4be:	4729                	li	a4,10
1c00a4c0:	c398                	sw	a4,0(a5)
1c00a4c2:	4501                	li	a0,0
1c00a4c4:	8082                	ret

1c00a4c6 <pos_libc_fputc_locked>:
1c00a4c6:	6689                	lui	a3,0x2
1c00a4c8:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a4cc:	f14027f3          	csrr	a5,mhartid
1c00a4d0:	00379713          	slli	a4,a5,0x3
1c00a4d4:	078a                	slli	a5,a5,0x2
1c00a4d6:	8ff5                	and	a5,a5,a3
1c00a4d8:	0ff77713          	andi	a4,a4,255
1c00a4dc:	1a10f6b7          	lui	a3,0x1a10f
1c00a4e0:	9736                	add	a4,a4,a3
1c00a4e2:	97ba                	add	a5,a5,a4
1c00a4e4:	0ff57513          	andi	a0,a0,255
1c00a4e8:	c388                	sw	a0,0(a5)
1c00a4ea:	4501                	li	a0,0
1c00a4ec:	8082                	ret

1c00a4ee <putchar>:
1c00a4ee:	6689                	lui	a3,0x2
1c00a4f0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a4f4:	f14027f3          	csrr	a5,mhartid
1c00a4f8:	00379713          	slli	a4,a5,0x3
1c00a4fc:	078a                	slli	a5,a5,0x2
1c00a4fe:	8ff5                	and	a5,a5,a3
1c00a500:	0ff77713          	andi	a4,a4,255
1c00a504:	1a10f6b7          	lui	a3,0x1a10f
1c00a508:	9736                	add	a4,a4,a3
1c00a50a:	97ba                	add	a5,a5,a4
1c00a50c:	0ff57513          	andi	a0,a0,255
1c00a510:	c388                	sw	a0,0(a5)
1c00a512:	4501                	li	a0,0
1c00a514:	8082                	ret

1c00a516 <pos_libc_prf_locked>:
1c00a516:	a0b1                	j	1c00a562 <pos_libc_prf>

1c00a518 <exit>:
1c00a518:	800007b7          	lui	a5,0x80000
1c00a51c:	1141                	addi	sp,sp,-16
1c00a51e:	8d5d                	or	a0,a0,a5
1c00a520:	c606                	sw	ra,12(sp)
1c00a522:	1a1047b7          	lui	a5,0x1a104
1c00a526:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a52a:	3b99                	jal	1c00a280 <pos_wait_forever>

1c00a52c <pos_io_start>:
1c00a52c:	4501                	li	a0,0
1c00a52e:	8082                	ret

1c00a530 <pos_io_stop>:
1c00a530:	4501                	li	a0,0
1c00a532:	8082                	ret

1c00a534 <printf>:
1c00a534:	7139                	addi	sp,sp,-64
1c00a536:	02410313          	addi	t1,sp,36
1c00a53a:	d432                	sw	a2,40(sp)
1c00a53c:	862a                	mv	a2,a0
1c00a53e:	1c00a537          	lui	a0,0x1c00a
1c00a542:	d22e                	sw	a1,36(sp)
1c00a544:	d636                	sw	a3,44(sp)
1c00a546:	4589                	li	a1,2
1c00a548:	869a                	mv	a3,t1
1c00a54a:	4c650513          	addi	a0,a0,1222 # 1c00a4c6 <pos_libc_fputc_locked>
1c00a54e:	ce06                	sw	ra,28(sp)
1c00a550:	d83a                	sw	a4,48(sp)
1c00a552:	da3e                	sw	a5,52(sp)
1c00a554:	dc42                	sw	a6,56(sp)
1c00a556:	de46                	sw	a7,60(sp)
1c00a558:	c61a                	sw	t1,12(sp)
1c00a55a:	3f75                	jal	1c00a516 <pos_libc_prf_locked>
1c00a55c:	40f2                	lw	ra,28(sp)
1c00a55e:	6121                	addi	sp,sp,64
1c00a560:	8082                	ret

1c00a562 <pos_libc_prf>:
1c00a562:	7169                	addi	sp,sp,-304
1c00a564:	12112623          	sw	ra,300(sp)
1c00a568:	12812423          	sw	s0,296(sp)
1c00a56c:	12912223          	sw	s1,292(sp)
1c00a570:	13212023          	sw	s2,288(sp)
1c00a574:	11312e23          	sw	s3,284(sp)
1c00a578:	11412c23          	sw	s4,280(sp)
1c00a57c:	11512a23          	sw	s5,276(sp)
1c00a580:	11612823          	sw	s6,272(sp)
1c00a584:	11712623          	sw	s7,268(sp)
1c00a588:	11812423          	sw	s8,264(sp)
1c00a58c:	11912223          	sw	s9,260(sp)
1c00a590:	11a12023          	sw	s10,256(sp)
1c00a594:	dfee                	sw	s11,252(sp)
1c00a596:	00064783          	lbu	a5,0(a2)
1c00a59a:	c636                	sw	a3,12(sp)
1c00a59c:	3c0781e3          	beqz	a5,1c00b15e <pos_libc_prf+0xbfc>
1c00a5a0:	7741                	lui	a4,0xffff0
1c00a5a2:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a5a6:	cc3a                	sw	a4,24(sp)
1c00a5a8:	10000737          	lui	a4,0x10000
1c00a5ac:	177d                	addi	a4,a4,-1
1c00a5ae:	8caa                	mv	s9,a0
1c00a5b0:	84ae                	mv	s1,a1
1c00a5b2:	00160c13          	addi	s8,a2,1
1c00a5b6:	4401                	li	s0,0
1c00a5b8:	1c000d37          	lui	s10,0x1c000
1c00a5bc:	ca3a                	sw	a4,20(sp)
1c00a5be:	853e                	mv	a0,a5
1c00a5c0:	02500793          	li	a5,37
1c00a5c4:	04f50863          	beq	a0,a5,1c00a614 <pos_libc_prf+0xb2>
1c00a5c8:	85a6                	mv	a1,s1
1c00a5ca:	9c82                	jalr	s9
1c00a5cc:	57fd                	li	a5,-1
1c00a5ce:	4cf50b63          	beq	a0,a5,1c00aaa4 <pos_libc_prf+0x542>
1c00a5d2:	0405                	addi	s0,s0,1
1c00a5d4:	000c4503          	lbu	a0,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00a5d8:	0c05                	addi	s8,s8,1
1c00a5da:	f17d                	bnez	a0,1c00a5c0 <pos_libc_prf+0x5e>
1c00a5dc:	12c12083          	lw	ra,300(sp)
1c00a5e0:	8522                	mv	a0,s0
1c00a5e2:	12812403          	lw	s0,296(sp)
1c00a5e6:	12412483          	lw	s1,292(sp)
1c00a5ea:	12012903          	lw	s2,288(sp)
1c00a5ee:	11c12983          	lw	s3,284(sp)
1c00a5f2:	11812a03          	lw	s4,280(sp)
1c00a5f6:	11412a83          	lw	s5,276(sp)
1c00a5fa:	11012b03          	lw	s6,272(sp)
1c00a5fe:	10c12b83          	lw	s7,268(sp)
1c00a602:	10812c03          	lw	s8,264(sp)
1c00a606:	10412c83          	lw	s9,260(sp)
1c00a60a:	10012d03          	lw	s10,256(sp)
1c00a60e:	5dfe                	lw	s11,252(sp)
1c00a610:	6155                	addi	sp,sp,304
1c00a612:	8082                	ret
1c00a614:	8de2                	mv	s11,s8
1c00a616:	000dcc03          	lbu	s8,0(s11)
1c00a61a:	250d0513          	addi	a0,s10,592 # 1c000250 <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c00a61e:	c826                	sw	s1,16(sp)
1c00a620:	85e2                	mv	a1,s8
1c00a622:	c202                	sw	zero,4(sp)
1c00a624:	c402                	sw	zero,8(sp)
1c00a626:	c002                	sw	zero,0(sp)
1c00a628:	001d8493          	addi	s1,s11,1
1c00a62c:	350d                	jal	1c00a44e <strchr>
1c00a62e:	02000913          	li	s2,32
1c00a632:	4b81                	li	s7,0
1c00a634:	02b00993          	li	s3,43
1c00a638:	02d00b13          	li	s6,45
1c00a63c:	03000a93          	li	s5,48
1c00a640:	02000a13          	li	s4,32
1c00a644:	8626                	mv	a2,s1
1c00a646:	c51d                	beqz	a0,1c00a674 <pos_libc_prf+0x112>
1c00a648:	413c0e63          	beq	s8,s3,1c00aa64 <pos_libc_prf+0x502>
1c00a64c:	3f89ec63          	bltu	s3,s8,1c00aa44 <pos_libc_prf+0x4e2>
1c00a650:	414c0663          	beq	s8,s4,1c00aa5c <pos_libc_prf+0x4fa>
1c00a654:	02300793          	li	a5,35
1c00a658:	3efc1363          	bne	s8,a5,1c00aa3e <pos_libc_prf+0x4dc>
1c00a65c:	4b85                	li	s7,1
1c00a65e:	8da6                	mv	s11,s1
1c00a660:	000dcc03          	lbu	s8,0(s11)
1c00a664:	250d0513          	addi	a0,s10,592
1c00a668:	001d8493          	addi	s1,s11,1
1c00a66c:	85e2                	mv	a1,s8
1c00a66e:	33c5                	jal	1c00a44e <strchr>
1c00a670:	8626                	mv	a2,s1
1c00a672:	f979                	bnez	a0,1c00a648 <pos_libc_prf+0xe6>
1c00a674:	87e2                	mv	a5,s8
1c00a676:	ce5e                	sw	s7,28(sp)
1c00a678:	02a00693          	li	a3,42
1c00a67c:	8c6e                	mv	s8,s11
1c00a67e:	8ba6                	mv	s7,s1
1c00a680:	8dbe                	mv	s11,a5
1c00a682:	44c2                	lw	s1,16(sp)
1c00a684:	42d78263          	beq	a5,a3,1c00aaa8 <pos_libc_prf+0x546>
1c00a688:	fd078693          	addi	a3,a5,-48
1c00a68c:	4525                	li	a0,9
1c00a68e:	4a01                	li	s4,0
1c00a690:	3cd57f63          	bgeu	a0,a3,1c00aa6e <pos_libc_prf+0x50c>
1c00a694:	02e00793          	li	a5,46
1c00a698:	5afd                	li	s5,-1
1c00a69a:	74fd8363          	beq	s11,a5,1c00ade0 <pos_libc_prf+0x87e>
1c00a69e:	1c0007b7          	lui	a5,0x1c000
1c00a6a2:	85ee                	mv	a1,s11
1c00a6a4:	25878513          	addi	a0,a5,600 # 1c000258 <PQCLEAN_KYBER1024_CLEAN_zetas+0x108>
1c00a6a8:	c832                	sw	a2,16(sp)
1c00a6aa:	3355                	jal	1c00a44e <strchr>
1c00a6ac:	4642                	lw	a2,16(sp)
1c00a6ae:	8c32                	mv	s8,a2
1c00a6b0:	c509                	beqz	a0,1c00a6ba <pos_libc_prf+0x158>
1c00a6b2:	00064d83          	lbu	s11,0(a2)
1c00a6b6:	00160c13          	addi	s8,a2,1
1c00a6ba:	06900793          	li	a5,105
1c00a6be:	0afd8ee3          	beq	s11,a5,1c00af7a <pos_libc_prf+0xa18>
1c00a6c2:	4db7c763          	blt	a5,s11,1c00ab90 <pos_libc_prf+0x62e>
1c00a6c6:	05800793          	li	a5,88
1c00a6ca:	4efd8163          	beq	s11,a5,1c00abac <pos_libc_prf+0x64a>
1c00a6ce:	41b7c163          	blt	a5,s11,1c00aad0 <pos_libc_prf+0x56e>
1c00a6d2:	02500793          	li	a5,37
1c00a6d6:	26fd8ae3          	beq	s11,a5,1c00b14a <pos_libc_prf+0xbe8>
1c00a6da:	3fb7d863          	bge	a5,s11,1c00aaca <pos_libc_prf+0x568>
1c00a6de:	fbbd8793          	addi	a5,s11,-69
1c00a6e2:	4689                	li	a3,2
1c00a6e4:	eef6e8e3          	bltu	a3,a5,1c00a5d4 <pos_libc_prf+0x72>
1c00a6e8:	47b2                	lw	a5,12(sp)
1c00a6ea:	7ff00893          	li	a7,2047
1c00a6ee:	00778b13          	addi	s6,a5,7
1c00a6f2:	ff8b7b13          	andi	s6,s6,-8
1c00a6f6:	004b2783          	lw	a5,4(s6) # ff0004 <__CTOR_LIST__-0x1b010000>
1c00a6fa:	000b2603          	lw	a2,0(s6)
1c00a6fe:	0b21                	addi	s6,s6,8
1c00a700:	00b79693          	slli	a3,a5,0xb
1c00a704:	01565513          	srli	a0,a2,0x15
1c00a708:	8ec9                	or	a3,a3,a0
1c00a70a:	0147d813          	srli	a6,a5,0x14
1c00a70e:	0686                	slli	a3,a3,0x1
1c00a710:	7ff87813          	andi	a6,a6,2047
1c00a714:	0016d513          	srli	a0,a3,0x1
1c00a718:	00b61313          	slli	t1,a2,0xb
1c00a71c:	86be                	mv	a3,a5
1c00a71e:	41180263          	beq	a6,a7,1c00ab22 <pos_libc_prf+0x5c0>
1c00a722:	04600793          	li	a5,70
1c00a726:	00fd9463          	bne	s11,a5,1c00a72e <pos_libc_prf+0x1cc>
1c00a72a:	06600d93          	li	s11,102
1c00a72e:	006867b3          	or	a5,a6,t1
1c00a732:	00a7e8b3          	or	a7,a5,a0
1c00a736:	862a                	mv	a2,a0
1c00a738:	340885e3          	beqz	a7,1c00b282 <pos_libc_prf+0xd20>
1c00a73c:	80000637          	lui	a2,0x80000
1c00a740:	c0280813          	addi	a6,a6,-1022
1c00a744:	879a                	mv	a5,t1
1c00a746:	8e49                	or	a2,a2,a0
1c00a748:	4606c7e3          	bltz	a3,1c00b3b6 <pos_libc_prf+0xe54>
1c00a74c:	4722                	lw	a4,8(sp)
1c00a74e:	480708e3          	beqz	a4,1c00b3de <pos_libc_prf+0xe7c>
1c00a752:	02b00693          	li	a3,43
1c00a756:	02d10223          	sb	a3,36(sp)
1c00a75a:	02510f13          	addi	t5,sp,37
1c00a75e:	56f9                	li	a3,-2
1c00a760:	4301                	li	t1,0
1c00a762:	06d85663          	bge	a6,a3,1c00a7ce <pos_libc_prf+0x26c>
1c00a766:	333338b7          	lui	a7,0x33333
1c00a76a:	80000e37          	lui	t3,0x80000
1c00a76e:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00a772:	fffe4e13          	not	t3,t3
1c00a776:	5ef9                	li	t4,-2
1c00a778:	01f61593          	slli	a1,a2,0x1f
1c00a77c:	0017d693          	srli	a3,a5,0x1
1c00a780:	0017f713          	andi	a4,a5,1
1c00a784:	8ecd                	or	a3,a3,a1
1c00a786:	00d707b3          	add	a5,a4,a3
1c00a78a:	00e7b733          	sltu	a4,a5,a4
1c00a78e:	8205                	srli	a2,a2,0x1
1c00a790:	963a                	add	a2,a2,a4
1c00a792:	8742                	mv	a4,a6
1c00a794:	0805                	addi	a6,a6,1
1c00a796:	fec8e1e3          	bltu	a7,a2,1c00a778 <pos_libc_prf+0x216>
1c00a79a:	00279593          	slli	a1,a5,0x2
1c00a79e:	01e7d513          	srli	a0,a5,0x1e
1c00a7a2:	00261693          	slli	a3,a2,0x2
1c00a7a6:	97ae                	add	a5,a5,a1
1c00a7a8:	8ec9                	or	a3,a3,a0
1c00a7aa:	9636                	add	a2,a2,a3
1c00a7ac:	00b7b5b3          	sltu	a1,a5,a1
1c00a7b0:	962e                	add	a2,a2,a1
1c00a7b2:	01f7d693          	srli	a3,a5,0x1f
1c00a7b6:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00a7ba:	137d                	addi	t1,t1,-1
1c00a7bc:	01c61763          	bne	a2,t3,1c00a7ca <pos_libc_prf+0x268>
1c00a7c0:	00170813          	addi	a6,a4,1
1c00a7c4:	0786                	slli	a5,a5,0x1
1c00a7c6:	ffe6e613          	ori	a2,a3,-2
1c00a7ca:	fbd847e3          	blt	a6,t4,1c00a778 <pos_libc_prf+0x216>
1c00a7ce:	07005363          	blez	a6,1c00a834 <pos_libc_prf+0x2d2>
1c00a7d2:	800008b7          	lui	a7,0x80000
1c00a7d6:	4e15                	li	t3,5
1c00a7d8:	fff8c893          	not	a7,a7
1c00a7dc:	00278693          	addi	a3,a5,2
1c00a7e0:	00f6b7b3          	sltu	a5,a3,a5
1c00a7e4:	963e                	add	a2,a2,a5
1c00a7e6:	03c657b3          	divu	a5,a2,t3
1c00a7ea:	0036d713          	srli	a4,a3,0x3
1c00a7ee:	187d                	addi	a6,a6,-1
1c00a7f0:	0305                	addi	t1,t1,1
1c00a7f2:	00279593          	slli	a1,a5,0x2
1c00a7f6:	95be                	add	a1,a1,a5
1c00a7f8:	8e0d                	sub	a2,a2,a1
1c00a7fa:	0676                	slli	a2,a2,0x1d
1c00a7fc:	8f51                	or	a4,a4,a2
1c00a7fe:	03c75633          	divu	a2,a4,t3
1c00a802:	00361713          	slli	a4,a2,0x3
1c00a806:	00561593          	slli	a1,a2,0x5
1c00a80a:	95ba                	add	a1,a1,a4
1c00a80c:	8e8d                	sub	a3,a3,a1
1c00a80e:	03c6d6b3          	divu	a3,a3,t3
1c00a812:	8275                	srli	a2,a2,0x1d
1c00a814:	963e                	add	a2,a2,a5
1c00a816:	00e687b3          	add	a5,a3,a4
1c00a81a:	00d7b6b3          	sltu	a3,a5,a3
1c00a81e:	9636                	add	a2,a2,a3
1c00a820:	01f7d713          	srli	a4,a5,0x1f
1c00a824:	0606                	slli	a2,a2,0x1
1c00a826:	8e59                	or	a2,a2,a4
1c00a828:	0786                	slli	a5,a5,0x1
1c00a82a:	187d                	addi	a6,a6,-1
1c00a82c:	fec8fae3          	bgeu	a7,a2,1c00a820 <pos_libc_prf+0x2be>
1c00a830:	fb0046e3          	bgtz	a6,1c00a7dc <pos_libc_prf+0x27a>
1c00a834:	4e11                	li	t3,4
1c00a836:	01f61693          	slli	a3,a2,0x1f
1c00a83a:	0017d713          	srli	a4,a5,0x1
1c00a83e:	8f55                	or	a4,a4,a3
1c00a840:	8b85                	andi	a5,a5,1
1c00a842:	00e78533          	add	a0,a5,a4
1c00a846:	8205                	srli	a2,a2,0x1
1c00a848:	00f537b3          	sltu	a5,a0,a5
1c00a84c:	00c788b3          	add	a7,a5,a2
1c00a850:	0805                	addi	a6,a6,1
1c00a852:	87aa                	mv	a5,a0
1c00a854:	8646                	mv	a2,a7
1c00a856:	ffc810e3          	bne	a6,t3,1c00a836 <pos_libc_prf+0x2d4>
1c00a85a:	06700793          	li	a5,103
1c00a85e:	2a0acee3          	bltz	s5,1c00b31a <pos_libc_prf+0xdb8>
1c00a862:	28fd83e3          	beq	s11,a5,1c00b2e8 <pos_libc_prf+0xd86>
1c00a866:	04700793          	li	a5,71
1c00a86a:	26fd8fe3          	beq	s11,a5,1c00b2e8 <pos_libc_prf+0xd86>
1c00a86e:	06600793          	li	a5,102
1c00a872:	2cfd85e3          	beq	s11,a5,1c00b33c <pos_libc_prf+0xdda>
1c00a876:	001a8813          	addi	a6,s5,1
1c00a87a:	47c1                	li	a5,16
1c00a87c:	0107d363          	bge	a5,a6,1c00a882 <pos_libc_prf+0x320>
1c00a880:	4841                	li	a6,16
1c00a882:	187d                	addi	a6,a6,-1
1c00a884:	4601                	li	a2,0
1c00a886:	4781                	li	a5,0
1c00a888:	080006b7          	lui	a3,0x8000
1c00a88c:	4e15                	li	t3,5
1c00a88e:	5efd                	li	t4,-1
1c00a890:	00278713          	addi	a4,a5,2
1c00a894:	00f737b3          	sltu	a5,a4,a5
1c00a898:	97b6                	add	a5,a5,a3
1c00a89a:	03c7dfb3          	divu	t6,a5,t3
1c00a89e:	00375593          	srli	a1,a4,0x3
1c00a8a2:	187d                	addi	a6,a6,-1
1c00a8a4:	002f9693          	slli	a3,t6,0x2
1c00a8a8:	96fe                	add	a3,a3,t6
1c00a8aa:	8f95                	sub	a5,a5,a3
1c00a8ac:	07f6                	slli	a5,a5,0x1d
1c00a8ae:	8ddd                	or	a1,a1,a5
1c00a8b0:	03c5d5b3          	divu	a1,a1,t3
1c00a8b4:	00359693          	slli	a3,a1,0x3
1c00a8b8:	00559793          	slli	a5,a1,0x5
1c00a8bc:	97b6                	add	a5,a5,a3
1c00a8be:	8f1d                	sub	a4,a4,a5
1c00a8c0:	03c757b3          	divu	a5,a4,t3
1c00a8c4:	81f5                	srli	a1,a1,0x1d
1c00a8c6:	95fe                	add	a1,a1,t6
1c00a8c8:	96be                	add	a3,a3,a5
1c00a8ca:	00f6b733          	sltu	a4,a3,a5
1c00a8ce:	972e                	add	a4,a4,a1
1c00a8d0:	01f71593          	slli	a1,a4,0x1f
1c00a8d4:	0016d793          	srli	a5,a3,0x1
1c00a8d8:	8fcd                	or	a5,a5,a1
1c00a8da:	8a85                	andi	a3,a3,1
1c00a8dc:	97b6                	add	a5,a5,a3
1c00a8de:	8305                	srli	a4,a4,0x1
1c00a8e0:	00d7b6b3          	sltu	a3,a5,a3
1c00a8e4:	96ba                	add	a3,a3,a4
1c00a8e6:	fbd815e3          	bne	a6,t4,1c00a890 <pos_libc_prf+0x32e>
1c00a8ea:	97aa                	add	a5,a5,a0
1c00a8ec:	96c6                	add	a3,a3,a7
1c00a8ee:	00a7b533          	sltu	a0,a5,a0
1c00a8f2:	00d508b3          	add	a7,a0,a3
1c00a8f6:	f00006b7          	lui	a3,0xf0000
1c00a8fa:	0116f6b3          	and	a3,a3,a7
1c00a8fe:	c2b5                	beqz	a3,1c00a962 <pos_libc_prf+0x400>
1c00a900:	00278813          	addi	a6,a5,2
1c00a904:	00f836b3          	sltu	a3,a6,a5
1c00a908:	98b6                	add	a7,a7,a3
1c00a90a:	4e95                	li	t4,5
1c00a90c:	03d8de33          	divu	t3,a7,t4
1c00a910:	00385693          	srli	a3,a6,0x3
1c00a914:	0305                	addi	t1,t1,1
1c00a916:	002e1513          	slli	a0,t3,0x2
1c00a91a:	9572                	add	a0,a0,t3
1c00a91c:	40a888b3          	sub	a7,a7,a0
1c00a920:	01d89513          	slli	a0,a7,0x1d
1c00a924:	8ec9                	or	a3,a3,a0
1c00a926:	03d6d6b3          	divu	a3,a3,t4
1c00a92a:	00369513          	slli	a0,a3,0x3
1c00a92e:	00569793          	slli	a5,a3,0x5
1c00a932:	97aa                	add	a5,a5,a0
1c00a934:	40f807b3          	sub	a5,a6,a5
1c00a938:	03d7d7b3          	divu	a5,a5,t4
1c00a93c:	82f5                	srli	a3,a3,0x1d
1c00a93e:	96f2                	add	a3,a3,t3
1c00a940:	953e                	add	a0,a0,a5
1c00a942:	00f537b3          	sltu	a5,a0,a5
1c00a946:	96be                	add	a3,a3,a5
1c00a948:	01f69813          	slli	a6,a3,0x1f
1c00a94c:	00155793          	srli	a5,a0,0x1
1c00a950:	00f867b3          	or	a5,a6,a5
1c00a954:	8905                	andi	a0,a0,1
1c00a956:	97aa                	add	a5,a5,a0
1c00a958:	8285                	srli	a3,a3,0x1
1c00a95a:	00a7b533          	sltu	a0,a5,a0
1c00a95e:	00d508b3          	add	a7,a0,a3
1c00a962:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00a966:	06600693          	li	a3,102
1c00a96a:	884e                	mv	a6,s3
1c00a96c:	4edd8163          	beq	s11,a3,1c00ae4e <pos_libc_prf+0x8ec>
1c00a970:	00279693          	slli	a3,a5,0x2
1c00a974:	01e7d513          	srli	a0,a5,0x1e
1c00a978:	00289e13          	slli	t3,a7,0x2
1c00a97c:	97b6                	add	a5,a5,a3
1c00a97e:	01c56e33          	or	t3,a0,t3
1c00a982:	00d7b833          	sltu	a6,a5,a3
1c00a986:	011e06b3          	add	a3,t3,a7
1c00a98a:	9836                	add	a6,a6,a3
1c00a98c:	0806                	slli	a6,a6,0x1
1c00a98e:	01f7d693          	srli	a3,a5,0x1f
1c00a992:	0106e833          	or	a6,a3,a6
1c00a996:	01c85693          	srli	a3,a6,0x1c
1c00a99a:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00a99e:	4772                	lw	a4,28(sp)
1c00a9a0:	00af0023          	sb	a0,0(t5)
1c00a9a4:	00179513          	slli	a0,a5,0x1
1c00a9a8:	47d2                	lw	a5,20(sp)
1c00a9aa:	00d036b3          	snez	a3,a3
1c00a9ae:	01576bb3          	or	s7,a4,s5
1c00a9b2:	00f87833          	and	a6,a6,a5
1c00a9b6:	40d30333          	sub	t1,t1,a3
1c00a9ba:	060b8463          	beqz	s7,1c00aa22 <pos_libc_prf+0x4c0>
1c00a9be:	02e00793          	li	a5,46
1c00a9c2:	00ff00a3          	sb	a5,1(t5)
1c00a9c6:	002f0993          	addi	s3,t5,2
1c00a9ca:	040a8c63          	beqz	s5,1c00aa22 <pos_libc_prf+0x4c0>
1c00a9ce:	002a8793          	addi	a5,s5,2
1c00a9d2:	9f3e                	add	t5,t5,a5
1c00a9d4:	88ce                	mv	a7,s3
1c00a9d6:	4ebd                	li	t4,15
1c00a9d8:	03000f93          	li	t6,48
1c00a9dc:	00251793          	slli	a5,a0,0x2
1c00a9e0:	01e55693          	srli	a3,a0,0x1e
1c00a9e4:	00281713          	slli	a4,a6,0x2
1c00a9e8:	00a785b3          	add	a1,a5,a0
1c00a9ec:	8f55                	or	a4,a4,a3
1c00a9ee:	9742                	add	a4,a4,a6
1c00a9f0:	00f5b7b3          	sltu	a5,a1,a5
1c00a9f4:	97ba                	add	a5,a5,a4
1c00a9f6:	0786                	slli	a5,a5,0x1
1c00a9f8:	01f5d713          	srli	a4,a1,0x1f
1c00a9fc:	8fd9                	or	a5,a5,a4
1c00a9fe:	01c7d713          	srli	a4,a5,0x1c
1c00aa02:	03070713          	addi	a4,a4,48
1c00aa06:	0885                	addi	a7,a7,1
1c00aa08:	53d05763          	blez	t4,1c00af36 <pos_libc_prf+0x9d4>
1c00aa0c:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00aa10:	4752                	lw	a4,20(sp)
1c00aa12:	1efd                	addi	t4,t4,-1
1c00aa14:	00159513          	slli	a0,a1,0x1
1c00aa18:	00e7f833          	and	a6,a5,a4
1c00aa1c:	fd1f10e3          	bne	t5,a7,1c00a9dc <pos_libc_prf+0x47a>
1c00aa20:	99d6                	add	s3,s3,s5
1c00aa22:	4e061c63          	bnez	a2,1c00af1a <pos_libc_prf+0x9b8>
1c00aa26:	fdfdf793          	andi	a5,s11,-33
1c00aa2a:	04500693          	li	a3,69
1c00aa2e:	00d781e3          	beq	a5,a3,1c00b230 <pos_libc_prf+0xcce>
1c00aa32:	105c                	addi	a5,sp,36
1c00aa34:	00098023          	sb	zero,0(s3)
1c00aa38:	40f989b3          	sub	s3,s3,a5
1c00aa3c:	aa05                	j	1c00ab6c <pos_libc_prf+0x60a>
1c00aa3e:	b80c0fe3          	beqz	s8,1c00a5dc <pos_libc_prf+0x7a>
1c00aa42:	b931                	j	1c00a65e <pos_libc_prf+0xfc>
1c00aa44:	016c0863          	beq	s8,s6,1c00aa54 <pos_libc_prf+0x4f2>
1c00aa48:	c15c1be3          	bne	s8,s5,1c00a65e <pos_libc_prf+0xfc>
1c00aa4c:	03000913          	li	s2,48
1c00aa50:	8da6                	mv	s11,s1
1c00aa52:	b139                	j	1c00a660 <pos_libc_prf+0xfe>
1c00aa54:	4785                	li	a5,1
1c00aa56:	c03e                	sw	a5,0(sp)
1c00aa58:	8da6                	mv	s11,s1
1c00aa5a:	b119                	j	1c00a660 <pos_libc_prf+0xfe>
1c00aa5c:	4785                	li	a5,1
1c00aa5e:	c23e                	sw	a5,4(sp)
1c00aa60:	8da6                	mv	s11,s1
1c00aa62:	befd                	j	1c00a660 <pos_libc_prf+0xfe>
1c00aa64:	4785                	li	a5,1
1c00aa66:	c43e                	sw	a5,8(sp)
1c00aa68:	8da6                	mv	s11,s1
1c00aa6a:	bedd                	j	1c00a660 <pos_libc_prf+0xfe>
1c00aa6c:	0b85                	addi	s7,s7,1
1c00aa6e:	002a1793          	slli	a5,s4,0x2
1c00aa72:	97d2                	add	a5,a5,s4
1c00aa74:	0786                	slli	a5,a5,0x1
1c00aa76:	97ee                	add	a5,a5,s11
1c00aa78:	000bcd83          	lbu	s11,0(s7)
1c00aa7c:	fd078a13          	addi	s4,a5,-48
1c00aa80:	8662                	mv	a2,s8
1c00aa82:	fd0d8793          	addi	a5,s11,-48
1c00aa86:	8c5e                	mv	s8,s7
1c00aa88:	fef572e3          	bgeu	a0,a5,1c00aa6c <pos_libc_prf+0x50a>
1c00aa8c:	0609                	addi	a2,a2,2
1c00aa8e:	0c800793          	li	a5,200
1c00aa92:	c147f1e3          	bgeu	a5,s4,1c00a694 <pos_libc_prf+0x132>
1c00aa96:	0c800a13          	li	s4,200
1c00aa9a:	beed                	j	1c00a694 <pos_libc_prf+0x132>
1c00aa9c:	0c800793          	li	a5,200
1c00aaa0:	b3b7dae3          	bge	a5,s11,1c00a5d4 <pos_libc_prf+0x72>
1c00aaa4:	547d                	li	s0,-1
1c00aaa6:	be1d                	j	1c00a5dc <pos_libc_prf+0x7a>
1c00aaa8:	47b2                	lw	a5,12(sp)
1c00aaaa:	0007aa03          	lw	s4,0(a5)
1c00aaae:	00478693          	addi	a3,a5,4
1c00aab2:	000a5663          	bgez	s4,1c00aabe <pos_libc_prf+0x55c>
1c00aab6:	4785                	li	a5,1
1c00aab8:	41400a33          	neg	s4,s4
1c00aabc:	c03e                	sw	a5,0(sp)
1c00aabe:	000bcd83          	lbu	s11,0(s7)
1c00aac2:	c636                	sw	a3,12(sp)
1c00aac4:	002c0613          	addi	a2,s8,2
1c00aac8:	b7d9                	j	1c00aa8e <pos_libc_prf+0x52c>
1c00aaca:	b00d89e3          	beqz	s11,1c00a5dc <pos_libc_prf+0x7a>
1c00aace:	b619                	j	1c00a5d4 <pos_libc_prf+0x72>
1c00aad0:	06400793          	li	a5,100
1c00aad4:	4afd8363          	beq	s11,a5,1c00af7a <pos_libc_prf+0xa18>
1c00aad8:	19b7d963          	bge	a5,s11,1c00ac6a <pos_libc_prf+0x708>
1c00aadc:	f9bd8793          	addi	a5,s11,-101
1c00aae0:	4689                	li	a3,2
1c00aae2:	aef6e9e3          	bltu	a3,a5,1c00a5d4 <pos_libc_prf+0x72>
1c00aae6:	47b2                	lw	a5,12(sp)
1c00aae8:	7ff00893          	li	a7,2047
1c00aaec:	00778b13          	addi	s6,a5,7
1c00aaf0:	ff8b7b13          	andi	s6,s6,-8
1c00aaf4:	004b2783          	lw	a5,4(s6)
1c00aaf8:	000b2603          	lw	a2,0(s6)
1c00aafc:	0b21                	addi	s6,s6,8
1c00aafe:	00b79693          	slli	a3,a5,0xb
1c00ab02:	01565813          	srli	a6,a2,0x15
1c00ab06:	0147d513          	srli	a0,a5,0x14
1c00ab0a:	00d866b3          	or	a3,a6,a3
1c00ab0e:	0686                	slli	a3,a3,0x1
1c00ab10:	7ff57813          	andi	a6,a0,2047
1c00ab14:	00b61313          	slli	t1,a2,0xb
1c00ab18:	0016d513          	srli	a0,a3,0x1
1c00ab1c:	86be                	mv	a3,a5
1c00ab1e:	c11818e3          	bne	a6,a7,1c00a72e <pos_libc_prf+0x1cc>
1c00ab22:	105c                	addi	a5,sp,36
1c00ab24:	0006d863          	bgez	a3,1c00ab34 <pos_libc_prf+0x5d2>
1c00ab28:	02d00793          	li	a5,45
1c00ab2c:	02f10223          	sb	a5,36(sp)
1c00ab30:	02510793          	addi	a5,sp,37
1c00ab34:	00a36633          	or	a2,t1,a0
1c00ab38:	fbfd8593          	addi	a1,s11,-65
1c00ab3c:	00378993          	addi	s3,a5,3
1c00ab40:	46e5                	li	a3,25
1c00ab42:	0c0612e3          	bnez	a2,1c00b406 <pos_libc_prf+0xea4>
1c00ab46:	10b6e5e3          	bltu	a3,a1,1c00b450 <pos_libc_prf+0xeee>
1c00ab4a:	04900693          	li	a3,73
1c00ab4e:	00d78023          	sb	a3,0(a5)
1c00ab52:	04e00693          	li	a3,78
1c00ab56:	00d780a3          	sb	a3,1(a5)
1c00ab5a:	04600693          	li	a3,70
1c00ab5e:	00d78123          	sb	a3,2(a5)
1c00ab62:	000781a3          	sb	zero,3(a5)
1c00ab66:	105c                	addi	a5,sp,36
1c00ab68:	40f989b3          	sub	s3,s3,a5
1c00ab6c:	47a2                	lw	a5,8(sp)
1c00ab6e:	4712                	lw	a4,4(sp)
1c00ab70:	8fd9                	or	a5,a5,a4
1c00ab72:	ce3e                	sw	a5,28(sp)
1c00ab74:	5e079b63          	bnez	a5,1c00b16a <pos_libc_prf+0xc08>
1c00ab78:	02414683          	lbu	a3,36(sp)
1c00ab7c:	02d00793          	li	a5,45
1c00ab80:	5ef68563          	beq	a3,a5,1c00b16a <pos_libc_prf+0xc08>
1c00ab84:	0c800793          	li	a5,200
1c00ab88:	0d37d863          	bge	a5,s3,1c00ac58 <pos_libc_prf+0x6f6>
1c00ab8c:	547d                	li	s0,-1
1c00ab8e:	b4b9                	j	1c00a5dc <pos_libc_prf+0x7a>
1c00ab90:	07000793          	li	a5,112
1c00ab94:	46fd8f63          	beq	s11,a5,1c00b012 <pos_libc_prf+0xab0>
1c00ab98:	1bb7d663          	bge	a5,s11,1c00ad44 <pos_libc_prf+0x7e2>
1c00ab9c:	07500793          	li	a5,117
1c00aba0:	52fd8763          	beq	s11,a5,1c00b0ce <pos_libc_prf+0xb6c>
1c00aba4:	07800793          	li	a5,120
1c00aba8:	16fd9163          	bne	s11,a5,1c00ad0a <pos_libc_prf+0x7a8>
1c00abac:	47b2                	lw	a5,12(sp)
1c00abae:	1054                	addi	a3,sp,36
1c00abb0:	4390                	lw	a2,0(a5)
1c00abb2:	00478b13          	addi	s6,a5,4
1c00abb6:	47f2                	lw	a5,28(sp)
1c00abb8:	28079163          	bnez	a5,1c00ae3a <pos_libc_prf+0x8d8>
1c00abbc:	87b6                	mv	a5,a3
1c00abbe:	4ea5                	li	t4,9
1c00abc0:	4e3d                	li	t3,15
1c00abc2:	a039                	j	1c00abd0 <pos_libc_prf+0x66e>
1c00abc4:	ff098fa3          	sb	a6,-1(s3)
1c00abc8:	02ce7663          	bgeu	t3,a2,1c00abf4 <pos_libc_prf+0x692>
1c00abcc:	862a                	mv	a2,a0
1c00abce:	87ce                	mv	a5,s3
1c00abd0:	00f67593          	andi	a1,a2,15
1c00abd4:	00178993          	addi	s3,a5,1
1c00abd8:	05758813          	addi	a6,a1,87
1c00abdc:	03058713          	addi	a4,a1,48
1c00abe0:	00465513          	srli	a0,a2,0x4
1c00abe4:	febee0e3          	bltu	t4,a1,1c00abc4 <pos_libc_prf+0x662>
1c00abe8:	00e78023          	sb	a4,0(a5)
1c00abec:	00178993          	addi	s3,a5,1
1c00abf0:	fcce6ee3          	bltu	t3,a2,1c00abcc <pos_libc_prf+0x66a>
1c00abf4:	40d98633          	sub	a2,s3,a3
1c00abf8:	01565c63          	bge	a2,s5,1c00ac10 <pos_libc_prf+0x6ae>
1c00abfc:	03000513          	li	a0,48
1c00ac00:	87ce                	mv	a5,s3
1c00ac02:	0985                	addi	s3,s3,1
1c00ac04:	40d98733          	sub	a4,s3,a3
1c00ac08:	fea98fa3          	sb	a0,-1(s3)
1c00ac0c:	ff574ae3          	blt	a4,s5,1c00ac00 <pos_libc_prf+0x69e>
1c00ac10:	00098023          	sb	zero,0(s3)
1c00ac14:	00f6fe63          	bgeu	a3,a5,1c00ac30 <pos_libc_prf+0x6ce>
1c00ac18:	0006c603          	lbu	a2,0(a3)
1c00ac1c:	0007c703          	lbu	a4,0(a5)
1c00ac20:	0685                	addi	a3,a3,1
1c00ac22:	00c78023          	sb	a2,0(a5)
1c00ac26:	fee68fa3          	sb	a4,-1(a3)
1c00ac2a:	17fd                	addi	a5,a5,-1
1c00ac2c:	fef6e6e3          	bltu	a3,a5,1c00ac18 <pos_libc_prf+0x6b6>
1c00ac30:	05800793          	li	a5,88
1c00ac34:	66fd8463          	beq	s11,a5,1c00b29c <pos_libc_prf+0xd3a>
1c00ac38:	105c                	addi	a5,sp,36
1c00ac3a:	40f989b3          	sub	s3,s3,a5
1c00ac3e:	47f2                	lw	a5,28(sp)
1c00ac40:	c399                	beqz	a5,1c00ac46 <pos_libc_prf+0x6e4>
1c00ac42:	4789                	li	a5,2
1c00ac44:	ce3e                	sw	a5,28(sp)
1c00ac46:	57fd                	li	a5,-1
1c00ac48:	f2fa8ee3          	beq	s5,a5,1c00ab84 <pos_libc_prf+0x622>
1c00ac4c:	0c800793          	li	a5,200
1c00ac50:	e537cae3          	blt	a5,s3,1c00aaa4 <pos_libc_prf+0x542>
1c00ac54:	02000913          	li	s2,32
1c00ac58:	00198613          	addi	a2,s3,1
1c00ac5c:	0349c963          	blt	s3,s4,1c00ac8e <pos_libc_prf+0x72c>
1c00ac60:	c65a                	sw	s6,12(sp)
1c00ac62:	8a4e                	mv	s4,s3
1c00ac64:	1a0a1663          	bnez	s4,1c00ae10 <pos_libc_prf+0x8ae>
1c00ac68:	b2b5                	j	1c00a5d4 <pos_libc_prf+0x72>
1c00ac6a:	06300793          	li	a5,99
1c00ac6e:	96fd93e3          	bne	s11,a5,1c00a5d4 <pos_libc_prf+0x72>
1c00ac72:	4732                	lw	a4,12(sp)
1c00ac74:	020102a3          	sb	zero,37(sp)
1c00ac78:	4785                	li	a5,1
1c00ac7a:	4314                	lw	a3,0(a4)
1c00ac7c:	00470b13          	addi	s6,a4,4
1c00ac80:	02d10223          	sb	a3,36(sp)
1c00ac84:	1947d463          	bge	a5,s4,1c00ae0c <pos_libc_prf+0x8aa>
1c00ac88:	4609                	li	a2,2
1c00ac8a:	4985                	li	s3,1
1c00ac8c:	ce02                	sw	zero,28(sp)
1c00ac8e:	4782                	lw	a5,0(sp)
1c00ac90:	4e078463          	beqz	a5,1c00b178 <pos_libc_prf+0xc16>
1c00ac94:	413a07b3          	sub	a5,s4,s3
1c00ac98:	4585                	li	a1,1
1c00ac9a:	0149d363          	bge	s3,s4,1c00aca0 <pos_libc_prf+0x73e>
1c00ac9e:	85be                	mv	a1,a5
1c00aca0:	17fd                	addi	a5,a5,-1
1c00aca2:	0037b793          	sltiu	a5,a5,3
1c00aca6:	eb95                	bnez	a5,1c00acda <pos_libc_prf+0x778>
1c00aca8:	0349d963          	bge	s3,s4,1c00acda <pos_libc_prf+0x778>
1c00acac:	105c                	addi	a5,sp,36
1c00acae:	97ce                	add	a5,a5,s3
1c00acb0:	ffc5f613          	andi	a2,a1,-4
1c00acb4:	963e                	add	a2,a2,a5
1c00acb6:	02000693          	li	a3,32
1c00acba:	00d78023          	sb	a3,0(a5)
1c00acbe:	00d780a3          	sb	a3,1(a5)
1c00acc2:	00d78123          	sb	a3,2(a5)
1c00acc6:	00d781a3          	sb	a3,3(a5)
1c00acca:	0791                	addi	a5,a5,4
1c00accc:	fef617e3          	bne	a2,a5,1c00acba <pos_libc_prf+0x758>
1c00acd0:	ffc5f793          	andi	a5,a1,-4
1c00acd4:	99be                	add	s3,s3,a5
1c00acd6:	02b78663          	beq	a5,a1,1c00ad02 <pos_libc_prf+0x7a0>
1c00acda:	199c                	addi	a5,sp,240
1c00acdc:	97ce                	add	a5,a5,s3
1c00acde:	02000693          	li	a3,32
1c00ace2:	f2d78a23          	sb	a3,-204(a5)
1c00ace6:	00198793          	addi	a5,s3,1
1c00acea:	0147dc63          	bge	a5,s4,1c00ad02 <pos_libc_prf+0x7a0>
1c00acee:	1998                	addi	a4,sp,240
1c00acf0:	97ba                	add	a5,a5,a4
1c00acf2:	f2d78a23          	sb	a3,-204(a5)
1c00acf6:	0989                	addi	s3,s3,2
1c00acf8:	0149d563          	bge	s3,s4,1c00ad02 <pos_libc_prf+0x7a0>
1c00acfc:	99ba                	add	s3,s3,a4
1c00acfe:	f2d98a23          	sb	a3,-204(s3)
1c00ad02:	c65a                	sw	s6,12(sp)
1c00ad04:	100a1663          	bnez	s4,1c00ae10 <pos_libc_prf+0x8ae>
1c00ad08:	b0f1                	j	1c00a5d4 <pos_libc_prf+0x72>
1c00ad0a:	07300793          	li	a5,115
1c00ad0e:	d8fd97e3          	bne	s11,a5,1c00aa9c <pos_libc_prf+0x53a>
1c00ad12:	47b2                	lw	a5,12(sp)
1c00ad14:	4981                	li	s3,0
1c00ad16:	0c800693          	li	a3,200
1c00ad1a:	438c                	lw	a1,0(a5)
1c00ad1c:	00478b13          	addi	s6,a5,4
1c00ad20:	a021                	j	1c00ad28 <pos_libc_prf+0x7c6>
1c00ad22:	0985                	addi	s3,s3,1
1c00ad24:	6ad98163          	beq	s3,a3,1c00b3c6 <pos_libc_prf+0xe64>
1c00ad28:	013587b3          	add	a5,a1,s3
1c00ad2c:	0007c783          	lbu	a5,0(a5)
1c00ad30:	fbed                	bnez	a5,1c00ad22 <pos_libc_prf+0x7c0>
1c00ad32:	000ac563          	bltz	s5,1c00ad3c <pos_libc_prf+0x7da>
1c00ad36:	013ad363          	bge	s5,s3,1c00ad3c <pos_libc_prf+0x7da>
1c00ad3a:	89d6                	mv	s3,s5
1c00ad3c:	5a099163          	bnez	s3,1c00b2de <pos_libc_prf+0xd7c>
1c00ad40:	c65a                	sw	s6,12(sp)
1c00ad42:	b849                	j	1c00a5d4 <pos_libc_prf+0x72>
1c00ad44:	06e00793          	li	a5,110
1c00ad48:	36fd8c63          	beq	s11,a5,1c00b0c0 <pos_libc_prf+0xb5e>
1c00ad4c:	06f00793          	li	a5,111
1c00ad50:	88fd92e3          	bne	s11,a5,1c00a5d4 <pos_libc_prf+0x72>
1c00ad54:	47b2                	lw	a5,12(sp)
1c00ad56:	4390                	lw	a2,0(a5)
1c00ad58:	00478b13          	addi	s6,a5,4
1c00ad5c:	47f2                	lw	a5,28(sp)
1c00ad5e:	c7f5                	beqz	a5,1c00ae4a <pos_libc_prf+0x8e8>
1c00ad60:	03000793          	li	a5,48
1c00ad64:	02f10223          	sb	a5,36(sp)
1c00ad68:	02510693          	addi	a3,sp,37
1c00ad6c:	60060b63          	beqz	a2,1c00b382 <pos_libc_prf+0xe20>
1c00ad70:	89b6                	mv	s3,a3
1c00ad72:	481d                	li	a6,7
1c00ad74:	00767713          	andi	a4,a2,7
1c00ad78:	03070713          	addi	a4,a4,48
1c00ad7c:	85b2                	mv	a1,a2
1c00ad7e:	00e98023          	sb	a4,0(s3)
1c00ad82:	87ce                	mv	a5,s3
1c00ad84:	820d                	srli	a2,a2,0x3
1c00ad86:	0985                	addi	s3,s3,1
1c00ad88:	feb866e3          	bltu	a6,a1,1c00ad74 <pos_libc_prf+0x812>
1c00ad8c:	40d98633          	sub	a2,s3,a3
1c00ad90:	01565c63          	bge	a2,s5,1c00ada8 <pos_libc_prf+0x846>
1c00ad94:	03000593          	li	a1,48
1c00ad98:	87ce                	mv	a5,s3
1c00ad9a:	0985                	addi	s3,s3,1
1c00ad9c:	40d98733          	sub	a4,s3,a3
1c00ada0:	feb98fa3          	sb	a1,-1(s3)
1c00ada4:	ff574ae3          	blt	a4,s5,1c00ad98 <pos_libc_prf+0x836>
1c00ada8:	00098023          	sb	zero,0(s3)
1c00adac:	00f6fe63          	bgeu	a3,a5,1c00adc8 <pos_libc_prf+0x866>
1c00adb0:	0006c603          	lbu	a2,0(a3)
1c00adb4:	0007c703          	lbu	a4,0(a5)
1c00adb8:	0685                	addi	a3,a3,1
1c00adba:	00c78023          	sb	a2,0(a5)
1c00adbe:	fee68fa3          	sb	a4,-1(a3)
1c00adc2:	17fd                	addi	a5,a5,-1
1c00adc4:	fef6e6e3          	bltu	a3,a5,1c00adb0 <pos_libc_prf+0x84e>
1c00adc8:	1058                	addi	a4,sp,36
1c00adca:	57fd                	li	a5,-1
1c00adcc:	40e989b3          	sub	s3,s3,a4
1c00add0:	36fa8763          	beq	s5,a5,1c00b13e <pos_libc_prf+0xbdc>
1c00add4:	0c800793          	li	a5,200
1c00add8:	cd37c6e3          	blt	a5,s3,1c00aaa4 <pos_libc_prf+0x542>
1c00addc:	ce02                	sw	zero,28(sp)
1c00adde:	bd9d                	j	1c00ac54 <pos_libc_prf+0x6f2>
1c00ade0:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00ade4:	02a00793          	li	a5,42
1c00ade8:	00160693          	addi	a3,a2,1
1c00adec:	14f59b63          	bne	a1,a5,1c00af42 <pos_libc_prf+0x9e0>
1c00adf0:	47b2                	lw	a5,12(sp)
1c00adf2:	00164d83          	lbu	s11,1(a2)
1c00adf6:	0609                	addi	a2,a2,2
1c00adf8:	0007aa83          	lw	s5,0(a5)
1c00adfc:	0791                	addi	a5,a5,4
1c00adfe:	c63e                	sw	a5,12(sp)
1c00ae00:	0c800793          	li	a5,200
1c00ae04:	8957dde3          	bge	a5,s5,1c00a69e <pos_libc_prf+0x13c>
1c00ae08:	5afd                	li	s5,-1
1c00ae0a:	b851                	j	1c00a69e <pos_libc_prf+0x13c>
1c00ae0c:	c65a                	sw	s6,12(sp)
1c00ae0e:	4a05                	li	s4,1
1c00ae10:	02410913          	addi	s2,sp,36
1c00ae14:	59fd                	li	s3,-1
1c00ae16:	41240ab3          	sub	s5,s0,s2
1c00ae1a:	9a4a                	add	s4,s4,s2
1c00ae1c:	a029                	j	1c00ae26 <pos_libc_prf+0x8c4>
1c00ae1e:	012a8433          	add	s0,s5,s2
1c00ae22:	fb490963          	beq	s2,s4,1c00a5d4 <pos_libc_prf+0x72>
1c00ae26:	00094503          	lbu	a0,0(s2)
1c00ae2a:	85a6                	mv	a1,s1
1c00ae2c:	0905                	addi	s2,s2,1
1c00ae2e:	9c82                	jalr	s9
1c00ae30:	ff3517e3          	bne	a0,s3,1c00ae1e <pos_libc_prf+0x8bc>
1c00ae34:	547d                	li	s0,-1
1c00ae36:	fa6ff06f          	j	1c00a5dc <pos_libc_prf+0x7a>
1c00ae3a:	77e1                	lui	a5,0xffff8
1c00ae3c:	8307c793          	xori	a5,a5,-2000
1c00ae40:	02f11223          	sh	a5,36(sp)
1c00ae44:	02610693          	addi	a3,sp,38
1c00ae48:	bb95                	j	1c00abbc <pos_libc_prf+0x65a>
1c00ae4a:	1054                	addi	a3,sp,36
1c00ae4c:	b715                	j	1c00ad70 <pos_libc_prf+0x80e>
1c00ae4e:	5c605a63          	blez	t1,1c00b422 <pos_libc_prf+0xec0>
1c00ae52:	006f09b3          	add	s3,t5,t1
1c00ae56:	4541                	li	a0,16
1c00ae58:	03000e13          	li	t3,48
1c00ae5c:	00279713          	slli	a4,a5,0x2
1c00ae60:	01e7d593          	srli	a1,a5,0x1e
1c00ae64:	00289693          	slli	a3,a7,0x2
1c00ae68:	00f70333          	add	t1,a4,a5
1c00ae6c:	8ecd                	or	a3,a3,a1
1c00ae6e:	96c6                	add	a3,a3,a7
1c00ae70:	00e33733          	sltu	a4,t1,a4
1c00ae74:	9736                	add	a4,a4,a3
1c00ae76:	0706                	slli	a4,a4,0x1
1c00ae78:	01f35693          	srli	a3,t1,0x1f
1c00ae7c:	8f55                	or	a4,a4,a3
1c00ae7e:	01c75693          	srli	a3,a4,0x1c
1c00ae82:	03068693          	addi	a3,a3,48
1c00ae86:	4ea05463          	blez	a0,1c00b36e <pos_libc_prf+0xe0c>
1c00ae8a:	fed80fa3          	sb	a3,-1(a6)
1c00ae8e:	46d2                	lw	a3,20(sp)
1c00ae90:	157d                	addi	a0,a0,-1
1c00ae92:	00131793          	slli	a5,t1,0x1
1c00ae96:	00d778b3          	and	a7,a4,a3
1c00ae9a:	4d099e63          	bne	s3,a6,1c00b376 <pos_libc_prf+0xe14>
1c00ae9e:	4301                	li	t1,0
1c00aea0:	4772                	lw	a4,28(sp)
1c00aea2:	01576bb3          	or	s7,a4,s5
1c00aea6:	060b8863          	beqz	s7,1c00af16 <pos_libc_prf+0x9b4>
1c00aeaa:	02e00693          	li	a3,46
1c00aeae:	00d98023          	sb	a3,0(s3)
1c00aeb2:	00198e93          	addi	t4,s3,1
1c00aeb6:	5c0a8763          	beqz	s5,1c00b484 <pos_libc_prf+0xf22>
1c00aeba:	001a8693          	addi	a3,s5,1
1c00aebe:	99b6                	add	s3,s3,a3
1c00aec0:	8876                	mv	a6,t4
1c00aec2:	03000f13          	li	t5,48
1c00aec6:	0805                	addi	a6,a6,1
1c00aec8:	4a031963          	bnez	t1,1c00b37a <pos_libc_prf+0xe18>
1c00aecc:	00279713          	slli	a4,a5,0x2
1c00aed0:	01e7d593          	srli	a1,a5,0x1e
1c00aed4:	00289693          	slli	a3,a7,0x2
1c00aed8:	00f70e33          	add	t3,a4,a5
1c00aedc:	8ecd                	or	a3,a3,a1
1c00aede:	96c6                	add	a3,a3,a7
1c00aee0:	00ee3733          	sltu	a4,t3,a4
1c00aee4:	9736                	add	a4,a4,a3
1c00aee6:	0706                	slli	a4,a4,0x1
1c00aee8:	01fe5693          	srli	a3,t3,0x1f
1c00aeec:	8f55                	or	a4,a4,a3
1c00aeee:	01c75593          	srli	a1,a4,0x1c
1c00aef2:	03000693          	li	a3,48
1c00aef6:	00a05a63          	blez	a0,1c00af0a <pos_libc_prf+0x9a8>
1c00aefa:	03058693          	addi	a3,a1,48
1c00aefe:	45d2                	lw	a1,20(sp)
1c00af00:	157d                	addi	a0,a0,-1
1c00af02:	001e1793          	slli	a5,t3,0x1
1c00af06:	00b778b3          	and	a7,a4,a1
1c00af0a:	fed80fa3          	sb	a3,-1(a6)
1c00af0e:	fb099ce3          	bne	s3,a6,1c00aec6 <pos_libc_prf+0x964>
1c00af12:	015e89b3          	add	s3,t4,s5
1c00af16:	b0060ee3          	beqz	a2,1c00aa32 <pos_libc_prf+0x4d0>
1c00af1a:	03000613          	li	a2,48
1c00af1e:	fff9c783          	lbu	a5,-1(s3)
1c00af22:	86ce                	mv	a3,s3
1c00af24:	19fd                	addi	s3,s3,-1
1c00af26:	fec78ce3          	beq	a5,a2,1c00af1e <pos_libc_prf+0x9bc>
1c00af2a:	02e00613          	li	a2,46
1c00af2e:	aec78ce3          	beq	a5,a2,1c00aa26 <pos_libc_prf+0x4c4>
1c00af32:	89b6                	mv	s3,a3
1c00af34:	bccd                	j	1c00aa26 <pos_libc_prf+0x4c4>
1c00af36:	fff88fa3          	sb	t6,-1(a7)
1c00af3a:	ab1f11e3          	bne	t5,a7,1c00a9dc <pos_libc_prf+0x47a>
1c00af3e:	99d6                	add	s3,s3,s5
1c00af40:	b4cd                	j	1c00aa22 <pos_libc_prf+0x4c0>
1c00af42:	fd058713          	addi	a4,a1,-48
1c00af46:	47a5                	li	a5,9
1c00af48:	8dae                	mv	s11,a1
1c00af4a:	4a81                	li	s5,0
1c00af4c:	4525                	li	a0,9
1c00af4e:	00e7f463          	bgeu	a5,a4,1c00af56 <pos_libc_prf+0x9f4>
1c00af52:	a199                	j	1c00b398 <pos_libc_prf+0xe36>
1c00af54:	0685                	addi	a3,a3,1
1c00af56:	002a9793          	slli	a5,s5,0x2
1c00af5a:	97d6                	add	a5,a5,s5
1c00af5c:	0786                	slli	a5,a5,0x1
1c00af5e:	97ee                	add	a5,a5,s11
1c00af60:	0006cd83          	lbu	s11,0(a3)
1c00af64:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00af68:	8732                	mv	a4,a2
1c00af6a:	fd0d8793          	addi	a5,s11,-48
1c00af6e:	8636                	mv	a2,a3
1c00af70:	fef572e3          	bgeu	a0,a5,1c00af54 <pos_libc_prf+0x9f2>
1c00af74:	00270613          	addi	a2,a4,2
1c00af78:	b561                	j	1c00ae00 <pos_libc_prf+0x89e>
1c00af7a:	47b2                	lw	a5,12(sp)
1c00af7c:	0007a303          	lw	t1,0(a5)
1c00af80:	00478b13          	addi	s6,a5,4
1c00af84:	2e034263          	bltz	t1,1c00b268 <pos_libc_prf+0xd06>
1c00af88:	47a2                	lw	a5,8(sp)
1c00af8a:	861a                	mv	a2,t1
1c00af8c:	3c078663          	beqz	a5,1c00b358 <pos_libc_prf+0xdf6>
1c00af90:	02b00793          	li	a5,43
1c00af94:	02f10223          	sb	a5,36(sp)
1c00af98:	02510693          	addi	a3,sp,37
1c00af9c:	89b6                	mv	s3,a3
1c00af9e:	4529                	li	a0,10
1c00afa0:	48a5                	li	a7,9
1c00afa2:	02a67733          	remu	a4,a2,a0
1c00afa6:	87ce                	mv	a5,s3
1c00afa8:	0985                	addi	s3,s3,1
1c00afaa:	85b2                	mv	a1,a2
1c00afac:	03070713          	addi	a4,a4,48
1c00afb0:	fee98fa3          	sb	a4,-1(s3)
1c00afb4:	02a65633          	divu	a2,a2,a0
1c00afb8:	feb8e5e3          	bltu	a7,a1,1c00afa2 <pos_libc_prf+0xa40>
1c00afbc:	40d98633          	sub	a2,s3,a3
1c00afc0:	01565c63          	bge	a2,s5,1c00afd8 <pos_libc_prf+0xa76>
1c00afc4:	03000593          	li	a1,48
1c00afc8:	87ce                	mv	a5,s3
1c00afca:	0985                	addi	s3,s3,1
1c00afcc:	40d98733          	sub	a4,s3,a3
1c00afd0:	feb98fa3          	sb	a1,-1(s3)
1c00afd4:	ff574ae3          	blt	a4,s5,1c00afc8 <pos_libc_prf+0xa66>
1c00afd8:	00098023          	sb	zero,0(s3)
1c00afdc:	00f6fe63          	bgeu	a3,a5,1c00aff8 <pos_libc_prf+0xa96>
1c00afe0:	0006c603          	lbu	a2,0(a3)
1c00afe4:	0007c703          	lbu	a4,0(a5)
1c00afe8:	0685                	addi	a3,a3,1
1c00afea:	00c78023          	sb	a2,0(a5)
1c00afee:	fee68fa3          	sb	a4,-1(a3)
1c00aff2:	17fd                	addi	a5,a5,-1
1c00aff4:	fef6e6e3          	bltu	a3,a5,1c00afe0 <pos_libc_prf+0xa7e>
1c00aff8:	4712                	lw	a4,4(sp)
1c00affa:	47a2                	lw	a5,8(sp)
1c00affc:	8fd9                	or	a5,a5,a4
1c00affe:	ce3e                	sw	a5,28(sp)
1c00b000:	1058                	addi	a4,sp,36
1c00b002:	40e989b3          	sub	s3,s3,a4
1c00b006:	c40790e3          	bnez	a5,1c00ac46 <pos_libc_prf+0x6e4>
1c00b00a:	01f35793          	srli	a5,t1,0x1f
1c00b00e:	ce3e                	sw	a5,28(sp)
1c00b010:	b91d                	j	1c00ac46 <pos_libc_prf+0x6e4>
1c00b012:	47b2                	lw	a5,12(sp)
1c00b014:	02610613          	addi	a2,sp,38
1c00b018:	4ea5                	li	t4,9
1c00b01a:	438c                	lw	a1,0(a5)
1c00b01c:	00478b13          	addi	s6,a5,4
1c00b020:	77e1                	lui	a5,0xffff8
1c00b022:	8307c793          	xori	a5,a5,-2000
1c00b026:	02f11223          	sh	a5,36(sp)
1c00b02a:	4e3d                	li	t3,15
1c00b02c:	87b2                	mv	a5,a2
1c00b02e:	a039                	j	1c00b03c <pos_libc_prf+0xada>
1c00b030:	ff168fa3          	sb	a7,-1(a3)
1c00b034:	02be7663          	bgeu	t3,a1,1c00b060 <pos_libc_prf+0xafe>
1c00b038:	85c2                	mv	a1,a6
1c00b03a:	87b6                	mv	a5,a3
1c00b03c:	00f5f513          	andi	a0,a1,15
1c00b040:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00b044:	05750893          	addi	a7,a0,87
1c00b048:	03050713          	addi	a4,a0,48
1c00b04c:	0045d813          	srli	a6,a1,0x4
1c00b050:	feaee0e3          	bltu	t4,a0,1c00b030 <pos_libc_prf+0xace>
1c00b054:	00e78023          	sb	a4,0(a5)
1c00b058:	00178693          	addi	a3,a5,1
1c00b05c:	fcbe6ee3          	bltu	t3,a1,1c00b038 <pos_libc_prf+0xad6>
1c00b060:	40c689b3          	sub	s3,a3,a2
1c00b064:	459d                	li	a1,7
1c00b066:	0135cc63          	blt	a1,s3,1c00b07e <pos_libc_prf+0xb1c>
1c00b06a:	03000513          	li	a0,48
1c00b06e:	87b6                	mv	a5,a3
1c00b070:	0685                	addi	a3,a3,1
1c00b072:	40c689b3          	sub	s3,a3,a2
1c00b076:	fea68fa3          	sb	a0,-1(a3)
1c00b07a:	ff35dae3          	bge	a1,s3,1c00b06e <pos_libc_prf+0xb0c>
1c00b07e:	00068023          	sb	zero,0(a3)
1c00b082:	86b2                	mv	a3,a2
1c00b084:	00f67e63          	bgeu	a2,a5,1c00b0a0 <pos_libc_prf+0xb3e>
1c00b088:	0006c603          	lbu	a2,0(a3)
1c00b08c:	0007c703          	lbu	a4,0(a5)
1c00b090:	0685                	addi	a3,a3,1
1c00b092:	00c78023          	sb	a2,0(a5)
1c00b096:	fee68fa3          	sb	a4,-1(a3)
1c00b09a:	17fd                	addi	a5,a5,-1
1c00b09c:	fef6e6e3          	bltu	a3,a5,1c00b088 <pos_libc_prf+0xb26>
1c00b0a0:	57fd                	li	a5,-1
1c00b0a2:	0989                	addi	s3,s3,2
1c00b0a4:	22fa8663          	beq	s5,a5,1c00b2d0 <pos_libc_prf+0xd6e>
1c00b0a8:	0c800793          	li	a5,200
1c00b0ac:	9f37cce3          	blt	a5,s3,1c00aaa4 <pos_libc_prf+0x542>
1c00b0b0:	02000913          	li	s2,32
1c00b0b4:	0b49d863          	bge	s3,s4,1c00b164 <pos_libc_prf+0xc02>
1c00b0b8:	00198613          	addi	a2,s3,1
1c00b0bc:	ce02                	sw	zero,28(sp)
1c00b0be:	bec1                	j	1c00ac8e <pos_libc_prf+0x72c>
1c00b0c0:	4732                	lw	a4,12(sp)
1c00b0c2:	431c                	lw	a5,0(a4)
1c00b0c4:	0711                	addi	a4,a4,4
1c00b0c6:	c63a                	sw	a4,12(sp)
1c00b0c8:	c380                	sw	s0,0(a5)
1c00b0ca:	d0aff06f          	j	1c00a5d4 <pos_libc_prf+0x72>
1c00b0ce:	47b2                	lw	a5,12(sp)
1c00b0d0:	4529                	li	a0,10
1c00b0d2:	48a5                	li	a7,9
1c00b0d4:	4390                	lw	a2,0(a5)
1c00b0d6:	00478b13          	addi	s6,a5,4
1c00b0da:	105c                	addi	a5,sp,36
1c00b0dc:	02a67733          	remu	a4,a2,a0
1c00b0e0:	86be                	mv	a3,a5
1c00b0e2:	0785                	addi	a5,a5,1
1c00b0e4:	85b2                	mv	a1,a2
1c00b0e6:	03070713          	addi	a4,a4,48
1c00b0ea:	fee78fa3          	sb	a4,-1(a5)
1c00b0ee:	02a65633          	divu	a2,a2,a0
1c00b0f2:	feb8e5e3          	bltu	a7,a1,1c00b0dc <pos_libc_prf+0xb7a>
1c00b0f6:	1058                	addi	a4,sp,36
1c00b0f8:	40e789b3          	sub	s3,a5,a4
1c00b0fc:	0159dd63          	bge	s3,s5,1c00b116 <pos_libc_prf+0xbb4>
1c00b100:	03000613          	li	a2,48
1c00b104:	86be                	mv	a3,a5
1c00b106:	1058                	addi	a4,sp,36
1c00b108:	0785                	addi	a5,a5,1
1c00b10a:	40e789b3          	sub	s3,a5,a4
1c00b10e:	fec78fa3          	sb	a2,-1(a5)
1c00b112:	ff59c9e3          	blt	s3,s5,1c00b104 <pos_libc_prf+0xba2>
1c00b116:	00078023          	sb	zero,0(a5)
1c00b11a:	105c                	addi	a5,sp,36
1c00b11c:	00d7fe63          	bgeu	a5,a3,1c00b138 <pos_libc_prf+0xbd6>
1c00b120:	0007c603          	lbu	a2,0(a5)
1c00b124:	0006c703          	lbu	a4,0(a3)
1c00b128:	0785                	addi	a5,a5,1
1c00b12a:	00c68023          	sb	a2,0(a3)
1c00b12e:	fee78fa3          	sb	a4,-1(a5)
1c00b132:	16fd                	addi	a3,a3,-1
1c00b134:	fed7e6e3          	bltu	a5,a3,1c00b120 <pos_libc_prf+0xbbe>
1c00b138:	57fd                	li	a5,-1
1c00b13a:	c8fa9de3          	bne	s5,a5,1c00add4 <pos_libc_prf+0x872>
1c00b13e:	0c800793          	li	a5,200
1c00b142:	9737c1e3          	blt	a5,s3,1c00aaa4 <pos_libc_prf+0x542>
1c00b146:	ce02                	sw	zero,28(sp)
1c00b148:	be01                	j	1c00ac58 <pos_libc_prf+0x6f6>
1c00b14a:	85a6                	mv	a1,s1
1c00b14c:	02500513          	li	a0,37
1c00b150:	9c82                	jalr	s9
1c00b152:	57fd                	li	a5,-1
1c00b154:	c6f51f63          	bne	a0,a5,1c00a5d2 <pos_libc_prf+0x70>
1c00b158:	547d                	li	s0,-1
1c00b15a:	c82ff06f          	j	1c00a5dc <pos_libc_prf+0x7a>
1c00b15e:	4401                	li	s0,0
1c00b160:	c7cff06f          	j	1c00a5dc <pos_libc_prf+0x7a>
1c00b164:	8a4e                	mv	s4,s3
1c00b166:	c65a                	sw	s6,12(sp)
1c00b168:	b165                	j	1c00ae10 <pos_libc_prf+0x8ae>
1c00b16a:	0c800793          	li	a5,200
1c00b16e:	9337cbe3          	blt	a5,s3,1c00aaa4 <pos_libc_prf+0x542>
1c00b172:	4785                	li	a5,1
1c00b174:	ce3e                	sw	a5,28(sp)
1c00b176:	b4cd                	j	1c00ac58 <pos_libc_prf+0x6f6>
1c00b178:	104c                	addi	a1,sp,36
1c00b17a:	413a09b3          	sub	s3,s4,s3
1c00b17e:	01358533          	add	a0,a1,s3
1c00b182:	9faff0ef          	jal	ra,1c00a37c <memmove>
1c00b186:	02000793          	li	a5,32
1c00b18a:	24f90863          	beq	s2,a5,1c00b3da <pos_libc_prf+0xe78>
1c00b18e:	47f2                	lw	a5,28(sp)
1c00b190:	99be                	add	s3,s3,a5
1c00b192:	47f2                	lw	a5,28(sp)
1c00b194:	b737d7e3          	bge	a5,s3,1c00ad02 <pos_libc_prf+0x7a0>
1c00b198:	4772                	lw	a4,28(sp)
1c00b19a:	4789                	li	a5,2
1c00b19c:	40e988b3          	sub	a7,s3,a4
1c00b1a0:	fff88693          	addi	a3,a7,-1
1c00b1a4:	06d7f063          	bgeu	a5,a3,1c00b204 <pos_libc_prf+0xca2>
1c00b1a8:	47e2                	lw	a5,24(sp)
1c00b1aa:	00891613          	slli	a2,s2,0x8
1c00b1ae:	ffc8f593          	andi	a1,a7,-4
1c00b1b2:	00f976b3          	and	a3,s2,a5
1c00b1b6:	8ed1                	or	a3,a3,a2
1c00b1b8:	01091793          	slli	a5,s2,0x10
1c00b1bc:	8edd                	or	a3,a3,a5
1c00b1be:	01891613          	slli	a2,s2,0x18
1c00b1c2:	8e55                	or	a2,a2,a3
1c00b1c4:	105c                	addi	a5,sp,36
1c00b1c6:	00865813          	srli	a6,a2,0x8
1c00b1ca:	01065513          	srli	a0,a2,0x10
1c00b1ce:	97ba                	add	a5,a5,a4
1c00b1d0:	95be                	add	a1,a1,a5
1c00b1d2:	0306f693          	andi	a3,a3,48
1c00b1d6:	8261                	srli	a2,a2,0x18
1c00b1d8:	0ff87813          	andi	a6,a6,255
1c00b1dc:	0ff57513          	andi	a0,a0,255
1c00b1e0:	00d78023          	sb	a3,0(a5)
1c00b1e4:	010780a3          	sb	a6,1(a5)
1c00b1e8:	00a78123          	sb	a0,2(a5)
1c00b1ec:	00c781a3          	sb	a2,3(a5)
1c00b1f0:	0791                	addi	a5,a5,4
1c00b1f2:	fef597e3          	bne	a1,a5,1c00b1e0 <pos_libc_prf+0xc7e>
1c00b1f6:	4772                	lw	a4,28(sp)
1c00b1f8:	ffc8f793          	andi	a5,a7,-4
1c00b1fc:	973e                	add	a4,a4,a5
1c00b1fe:	ce3a                	sw	a4,28(sp)
1c00b200:	b11781e3          	beq	a5,a7,1c00ad02 <pos_libc_prf+0x7a0>
1c00b204:	4772                	lw	a4,28(sp)
1c00b206:	199c                	addi	a5,sp,240
1c00b208:	97ba                	add	a5,a5,a4
1c00b20a:	f3278a23          	sb	s2,-204(a5)
1c00b20e:	00170793          	addi	a5,a4,1
1c00b212:	af37d8e3          	bge	a5,s3,1c00ad02 <pos_libc_prf+0x7a0>
1c00b216:	1994                	addi	a3,sp,240
1c00b218:	97b6                	add	a5,a5,a3
1c00b21a:	f3278a23          	sb	s2,-204(a5)
1c00b21e:	00270b93          	addi	s7,a4,2
1c00b222:	af3bd0e3          	bge	s7,s3,1c00ad02 <pos_libc_prf+0x7a0>
1c00b226:	9bb6                	add	s7,s7,a3
1c00b228:	f32b8a23          	sb	s2,-204(s7)
1c00b22c:	c65a                	sw	s6,12(sp)
1c00b22e:	bcd9                	j	1c00ad04 <pos_libc_prf+0x7a2>
1c00b230:	01b98023          	sb	s11,0(s3)
1c00b234:	02b00613          	li	a2,43
1c00b238:	00035663          	bgez	t1,1c00b244 <pos_libc_prf+0xce2>
1c00b23c:	40600333          	neg	t1,t1
1c00b240:	02d00613          	li	a2,45
1c00b244:	47a9                	li	a5,10
1c00b246:	02f346b3          	div	a3,t1,a5
1c00b24a:	00c980a3          	sb	a2,1(s3)
1c00b24e:	0991                	addi	s3,s3,4
1c00b250:	02f367b3          	rem	a5,t1,a5
1c00b254:	03068693          	addi	a3,a3,48
1c00b258:	fed98f23          	sb	a3,-2(s3)
1c00b25c:	03078793          	addi	a5,a5,48
1c00b260:	fef98fa3          	sb	a5,-1(s3)
1c00b264:	fceff06f          	j	1c00aa32 <pos_libc_prf+0x4d0>
1c00b268:	02d00793          	li	a5,45
1c00b26c:	02f10223          	sb	a5,36(sp)
1c00b270:	800007b7          	lui	a5,0x80000
1c00b274:	14f30e63          	beq	t1,a5,1c00b3d0 <pos_libc_prf+0xe6e>
1c00b278:	40600633          	neg	a2,t1
1c00b27c:	02510693          	addi	a3,sp,37
1c00b280:	bb31                	j	1c00af9c <pos_libc_prf+0xa3a>
1c00b282:	4722                	lw	a4,8(sp)
1c00b284:	10070d63          	beqz	a4,1c00b39e <pos_libc_prf+0xe3c>
1c00b288:	02b00693          	li	a3,43
1c00b28c:	02d10223          	sb	a3,36(sp)
1c00b290:	02510f13          	addi	t5,sp,37
1c00b294:	4301                	li	t1,0
1c00b296:	4801                	li	a6,0
1c00b298:	d9cff06f          	j	1c00a834 <pos_libc_prf+0x2d2>
1c00b29c:	02414783          	lbu	a5,36(sp)
1c00b2a0:	98078ce3          	beqz	a5,1c00ac38 <pos_libc_prf+0x6d6>
1c00b2a4:	1054                	addi	a3,sp,36
1c00b2a6:	45e5                	li	a1,25
1c00b2a8:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00b2ac:	f9f78793          	addi	a5,a5,-97
1c00b2b0:	0ff7f793          	andi	a5,a5,255
1c00b2b4:	00f5e963          	bltu	a1,a5,1c00b2c6 <pos_libc_prf+0xd64>
1c00b2b8:	0016c783          	lbu	a5,1(a3)
1c00b2bc:	00e68023          	sb	a4,0(a3)
1c00b2c0:	0685                	addi	a3,a3,1
1c00b2c2:	f3fd                	bnez	a5,1c00b2a8 <pos_libc_prf+0xd46>
1c00b2c4:	ba95                	j	1c00ac38 <pos_libc_prf+0x6d6>
1c00b2c6:	0016c783          	lbu	a5,1(a3)
1c00b2ca:	0685                	addi	a3,a3,1
1c00b2cc:	fff1                	bnez	a5,1c00b2a8 <pos_libc_prf+0xd46>
1c00b2ce:	b2ad                	j	1c00ac38 <pos_libc_prf+0x6d6>
1c00b2d0:	0c800793          	li	a5,200
1c00b2d4:	df37d0e3          	bge	a5,s3,1c00b0b4 <pos_libc_prf+0xb52>
1c00b2d8:	547d                	li	s0,-1
1c00b2da:	b02ff06f          	j	1c00a5dc <pos_libc_prf+0x7a>
1c00b2de:	864e                	mv	a2,s3
1c00b2e0:	1048                	addi	a0,sp,36
1c00b2e2:	fc5fe0ef          	jal	ra,1c00a2a6 <memcpy>
1c00b2e6:	b3f9                	j	1c00b0b4 <pos_libc_prf+0xb52>
1c00b2e8:	47f2                	lw	a5,28(sp)
1c00b2ea:	4601                	li	a2,0
1c00b2ec:	e399                	bnez	a5,1c00b2f2 <pos_libc_prf+0xd90>
1c00b2ee:	01503633          	snez	a2,s5
1c00b2f2:	57f5                	li	a5,-3
1c00b2f4:	001a8813          	addi	a6,s5,1
1c00b2f8:	00f34463          	blt	t1,a5,1c00b300 <pos_libc_prf+0xd9e>
1c00b2fc:	04685163          	bge	a6,t1,1c00b33e <pos_libc_prf+0xddc>
1c00b300:	47c1                	li	a5,16
1c00b302:	0107d363          	bge	a5,a6,1c00b308 <pos_libc_prf+0xda6>
1c00b306:	4841                	li	a6,16
1c00b308:	06700793          	li	a5,103
1c00b30c:	187d                	addi	a6,a6,-1
1c00b30e:	02fd8363          	beq	s11,a5,1c00b334 <pos_libc_prf+0xdd2>
1c00b312:	04500d93          	li	s11,69
1c00b316:	d70ff06f          	j	1c00a886 <pos_libc_prf+0x324>
1c00b31a:	4a99                	li	s5,6
1c00b31c:	d4fd9563          	bne	s11,a5,1c00a866 <pos_libc_prf+0x304>
1c00b320:	4772                	lw	a4,28(sp)
1c00b322:	4605                	li	a2,1
1c00b324:	57f5                	li	a5,-3
1c00b326:	8e19                	sub	a2,a2,a4
1c00b328:	00f34563          	blt	t1,a5,1c00b332 <pos_libc_prf+0xdd0>
1c00b32c:	479d                	li	a5,7
1c00b32e:	0067d863          	bge	a5,t1,1c00b33e <pos_libc_prf+0xddc>
1c00b332:	4819                	li	a6,6
1c00b334:	06500d93          	li	s11,101
1c00b338:	d4eff06f          	j	1c00a886 <pos_libc_prf+0x324>
1c00b33c:	4601                	li	a2,0
1c00b33e:	006a8833          	add	a6,s5,t1
1c00b342:	0b005b63          	blez	a6,1c00b3f8 <pos_libc_prf+0xe96>
1c00b346:	47c1                	li	a5,16
1c00b348:	0107d363          	bge	a5,a6,1c00b34e <pos_libc_prf+0xdec>
1c00b34c:	4841                	li	a6,16
1c00b34e:	187d                	addi	a6,a6,-1
1c00b350:	06600d93          	li	s11,102
1c00b354:	d32ff06f          	j	1c00a886 <pos_libc_prf+0x324>
1c00b358:	4792                	lw	a5,4(sp)
1c00b35a:	1054                	addi	a3,sp,36
1c00b35c:	c40780e3          	beqz	a5,1c00af9c <pos_libc_prf+0xa3a>
1c00b360:	02000793          	li	a5,32
1c00b364:	02f10223          	sb	a5,36(sp)
1c00b368:	02510693          	addi	a3,sp,37
1c00b36c:	b905                	j	1c00af9c <pos_libc_prf+0xa3a>
1c00b36e:	ffc80fa3          	sb	t3,-1(a6)
1c00b372:	b30986e3          	beq	s3,a6,1c00ae9e <pos_libc_prf+0x93c>
1c00b376:	0805                	addi	a6,a6,1
1c00b378:	b4d5                	j	1c00ae5c <pos_libc_prf+0x8fa>
1c00b37a:	ffe80fa3          	sb	t5,-1(a6)
1c00b37e:	0305                	addi	t1,t1,1
1c00b380:	b679                	j	1c00af0e <pos_libc_prf+0x9ac>
1c00b382:	020102a3          	sb	zero,37(sp)
1c00b386:	57fd                	li	a5,-1
1c00b388:	0cfa8263          	beq	s5,a5,1c00b44c <pos_libc_prf+0xeea>
1c00b38c:	4785                	li	a5,1
1c00b38e:	0b47c063          	blt	a5,s4,1c00b42e <pos_libc_prf+0xecc>
1c00b392:	4a72                	lw	s4,28(sp)
1c00b394:	c65a                	sw	s6,12(sp)
1c00b396:	bcad                	j	1c00ae10 <pos_libc_prf+0x8ae>
1c00b398:	8636                	mv	a2,a3
1c00b39a:	b04ff06f          	j	1c00a69e <pos_libc_prf+0x13c>
1c00b39e:	4712                	lw	a4,4(sp)
1c00b3a0:	c77d                	beqz	a4,1c00b48e <pos_libc_prf+0xf2c>
1c00b3a2:	02000693          	li	a3,32
1c00b3a6:	02d10223          	sb	a3,36(sp)
1c00b3aa:	4301                	li	t1,0
1c00b3ac:	4801                	li	a6,0
1c00b3ae:	02510f13          	addi	t5,sp,37
1c00b3b2:	c82ff06f          	j	1c00a834 <pos_libc_prf+0x2d2>
1c00b3b6:	02d00693          	li	a3,45
1c00b3ba:	02d10223          	sb	a3,36(sp)
1c00b3be:	02510f13          	addi	t5,sp,37
1c00b3c2:	b9cff06f          	j	1c00a75e <pos_libc_prf+0x1fc>
1c00b3c6:	0c800613          	li	a2,200
1c00b3ca:	960ad6e3          	bgez	s5,1c00ad36 <pos_libc_prf+0x7d4>
1c00b3ce:	bf09                	j	1c00b2e0 <pos_libc_prf+0xd7e>
1c00b3d0:	80000637          	lui	a2,0x80000
1c00b3d4:	02510693          	addi	a3,sp,37
1c00b3d8:	b6d1                	j	1c00af9c <pos_libc_prf+0xa3a>
1c00b3da:	ce02                	sw	zero,28(sp)
1c00b3dc:	bb5d                	j	1c00b192 <pos_libc_prf+0xc30>
1c00b3de:	4712                	lw	a4,4(sp)
1c00b3e0:	02410f13          	addi	t5,sp,36
1c00b3e4:	b6070d63          	beqz	a4,1c00a75e <pos_libc_prf+0x1fc>
1c00b3e8:	02000693          	li	a3,32
1c00b3ec:	02d10223          	sb	a3,36(sp)
1c00b3f0:	02510f13          	addi	t5,sp,37
1c00b3f4:	b6aff06f          	j	1c00a75e <pos_libc_prf+0x1fc>
1c00b3f8:	06600d93          	li	s11,102
1c00b3fc:	4781                	li	a5,0
1c00b3fe:	080006b7          	lui	a3,0x8000
1c00b402:	ce8ff06f          	j	1c00a8ea <pos_libc_prf+0x388>
1c00b406:	06b6e363          	bltu	a3,a1,1c00b46c <pos_libc_prf+0xf0a>
1c00b40a:	04e00693          	li	a3,78
1c00b40e:	04100613          	li	a2,65
1c00b412:	00d78023          	sb	a3,0(a5)
1c00b416:	00c780a3          	sb	a2,1(a5)
1c00b41a:	00d78123          	sb	a3,2(a5)
1c00b41e:	f44ff06f          	j	1c00ab62 <pos_libc_prf+0x600>
1c00b422:	03000693          	li	a3,48
1c00b426:	00df0023          	sb	a3,0(t5)
1c00b42a:	4541                	li	a0,16
1c00b42c:	bc95                	j	1c00aea0 <pos_libc_prf+0x93e>
1c00b42e:	4982                	lw	s3,0(sp)
1c00b430:	860992e3          	bnez	s3,1c00ac94 <pos_libc_prf+0x732>
1c00b434:	104c                	addi	a1,sp,36
1c00b436:	fffa0993          	addi	s3,s4,-1
1c00b43a:	4609                	li	a2,2
1c00b43c:	01358533          	add	a0,a1,s3
1c00b440:	f3dfe0ef          	jal	ra,1c00a37c <memmove>
1c00b444:	02000913          	li	s2,32
1c00b448:	ce02                	sw	zero,28(sp)
1c00b44a:	b3b9                	j	1c00b198 <pos_libc_prf+0xc36>
1c00b44c:	49f2                	lw	s3,28(sp)
1c00b44e:	b19d                	j	1c00b0b4 <pos_libc_prf+0xb52>
1c00b450:	06900693          	li	a3,105
1c00b454:	00d78023          	sb	a3,0(a5)
1c00b458:	06e00693          	li	a3,110
1c00b45c:	00d780a3          	sb	a3,1(a5)
1c00b460:	06600693          	li	a3,102
1c00b464:	00d78123          	sb	a3,2(a5)
1c00b468:	efaff06f          	j	1c00ab62 <pos_libc_prf+0x600>
1c00b46c:	06e00693          	li	a3,110
1c00b470:	06100613          	li	a2,97
1c00b474:	00d78023          	sb	a3,0(a5)
1c00b478:	00c780a3          	sb	a2,1(a5)
1c00b47c:	00d78123          	sb	a3,2(a5)
1c00b480:	ee2ff06f          	j	1c00ab62 <pos_libc_prf+0x600>
1c00b484:	89f6                	mv	s3,t4
1c00b486:	a8061ae3          	bnez	a2,1c00af1a <pos_libc_prf+0x9b8>
1c00b48a:	da8ff06f          	j	1c00aa32 <pos_libc_prf+0x4d0>
1c00b48e:	4301                	li	t1,0
1c00b490:	4801                	li	a6,0
1c00b492:	02410f13          	addi	t5,sp,36
1c00b496:	b9eff06f          	j	1c00a834 <pos_libc_prf+0x2d2>

1c00b49a <pos_init_start>:
1c00b49a:	1141                	addi	sp,sp,-16
1c00b49c:	c422                	sw	s0,8(sp)
1c00b49e:	1c000437          	lui	s0,0x1c000
1c00b4a2:	c606                	sw	ra,12(sp)
1c00b4a4:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b4a8:	eb1fc0ef          	jal	ra,1c008358 <pos_soc_init>
1c00b4ac:	2a75                	jal	1c00b668 <pos_irq_init>
1c00b4ae:	22e5                	jal	1c00b696 <pos_soc_event_init>
1c00b4b0:	2225                	jal	1c00b5d8 <pos_allocs_init>
1c00b4b2:	405c                	lw	a5,4(s0)
1c00b4b4:	c791                	beqz	a5,1c00b4c0 <pos_init_start+0x26>
1c00b4b6:	0411                	addi	s0,s0,4
1c00b4b8:	0411                	addi	s0,s0,4
1c00b4ba:	9782                	jalr	a5
1c00b4bc:	401c                	lw	a5,0(s0)
1c00b4be:	ffed                	bnez	a5,1c00b4b8 <pos_init_start+0x1e>
1c00b4c0:	86cff0ef          	jal	ra,1c00a52c <pos_io_start>
1c00b4c4:	300467f3          	csrrsi	a5,mstatus,8
1c00b4c8:	40b2                	lw	ra,12(sp)
1c00b4ca:	4422                	lw	s0,8(sp)
1c00b4cc:	0141                	addi	sp,sp,16
1c00b4ce:	8082                	ret

1c00b4d0 <pos_init_stop>:
1c00b4d0:	1141                	addi	sp,sp,-16
1c00b4d2:	c422                	sw	s0,8(sp)
1c00b4d4:	1c000437          	lui	s0,0x1c000
1c00b4d8:	c606                	sw	ra,12(sp)
1c00b4da:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b4de:	852ff0ef          	jal	ra,1c00a530 <pos_io_stop>
1c00b4e2:	405c                	lw	a5,4(s0)
1c00b4e4:	c791                	beqz	a5,1c00b4f0 <pos_init_stop+0x20>
1c00b4e6:	0411                	addi	s0,s0,4
1c00b4e8:	0411                	addi	s0,s0,4
1c00b4ea:	9782                	jalr	a5
1c00b4ec:	401c                	lw	a5,0(s0)
1c00b4ee:	ffed                	bnez	a5,1c00b4e8 <pos_init_stop+0x18>
1c00b4f0:	40b2                	lw	ra,12(sp)
1c00b4f2:	4422                	lw	s0,8(sp)
1c00b4f4:	0141                	addi	sp,sp,16
1c00b4f6:	8082                	ret

1c00b4f8 <pos_alloc_init>:
1c00b4f8:	00758793          	addi	a5,a1,7
1c00b4fc:	9be1                	andi	a5,a5,-8
1c00b4fe:	40b785b3          	sub	a1,a5,a1
1c00b502:	c11c                	sw	a5,0(a0)
1c00b504:	40b605b3          	sub	a1,a2,a1
1c00b508:	00b05663          	blez	a1,1c00b514 <pos_alloc_init+0x1c>
1c00b50c:	99e1                	andi	a1,a1,-8
1c00b50e:	c38c                	sw	a1,0(a5)
1c00b510:	0007a223          	sw	zero,4(a5)
1c00b514:	8082                	ret

1c00b516 <pos_alloc>:
1c00b516:	411c                	lw	a5,0(a0)
1c00b518:	00758713          	addi	a4,a1,7
1c00b51c:	862a                	mv	a2,a0
1c00b51e:	ff877593          	andi	a1,a4,-8
1c00b522:	4681                	li	a3,0
1c00b524:	e789                	bnez	a5,1c00b52e <pos_alloc+0x18>
1c00b526:	a091                	j	1c00b56a <pos_alloc+0x54>
1c00b528:	86be                	mv	a3,a5
1c00b52a:	c505                	beqz	a0,1c00b552 <pos_alloc+0x3c>
1c00b52c:	87aa                	mv	a5,a0
1c00b52e:	4398                	lw	a4,0(a5)
1c00b530:	43c8                	lw	a0,4(a5)
1c00b532:	feb74be3          	blt	a4,a1,1c00b528 <pos_alloc+0x12>
1c00b536:	00b70f63          	beq	a4,a1,1c00b554 <pos_alloc+0x3e>
1c00b53a:	00b78833          	add	a6,a5,a1
1c00b53e:	8f0d                	sub	a4,a4,a1
1c00b540:	00e82023          	sw	a4,0(a6)
1c00b544:	00a82223          	sw	a0,4(a6)
1c00b548:	ca91                	beqz	a3,1c00b55c <pos_alloc+0x46>
1c00b54a:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00b54e:	853e                	mv	a0,a5
1c00b550:	8082                	ret
1c00b552:	8082                	ret
1c00b554:	ca81                	beqz	a3,1c00b564 <pos_alloc+0x4e>
1c00b556:	c2c8                	sw	a0,4(a3)
1c00b558:	853e                	mv	a0,a5
1c00b55a:	8082                	ret
1c00b55c:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00b560:	853e                	mv	a0,a5
1c00b562:	8082                	ret
1c00b564:	c208                	sw	a0,0(a2)
1c00b566:	853e                	mv	a0,a5
1c00b568:	8082                	ret
1c00b56a:	4501                	li	a0,0
1c00b56c:	8082                	ret

1c00b56e <pos_free>:
1c00b56e:	411c                	lw	a5,0(a0)
1c00b570:	061d                	addi	a2,a2,7
1c00b572:	9a61                	andi	a2,a2,-8
1c00b574:	c7a1                	beqz	a5,1c00b5bc <pos_free+0x4e>
1c00b576:	00b7e563          	bltu	a5,a1,1c00b580 <pos_free+0x12>
1c00b57a:	a089                	j	1c00b5bc <pos_free+0x4e>
1c00b57c:	00b7f563          	bgeu	a5,a1,1c00b586 <pos_free+0x18>
1c00b580:	873e                	mv	a4,a5
1c00b582:	43dc                	lw	a5,4(a5)
1c00b584:	ffe5                	bnez	a5,1c00b57c <pos_free+0xe>
1c00b586:	00c586b3          	add	a3,a1,a2
1c00b58a:	00d78b63          	beq	a5,a3,1c00b5a0 <pos_free+0x32>
1c00b58e:	c190                	sw	a2,0(a1)
1c00b590:	4314                	lw	a3,0(a4)
1c00b592:	c1dc                	sw	a5,4(a1)
1c00b594:	00d70533          	add	a0,a4,a3
1c00b598:	00a58e63          	beq	a1,a0,1c00b5b4 <pos_free+0x46>
1c00b59c:	c34c                	sw	a1,4(a4)
1c00b59e:	8082                	ret
1c00b5a0:	4394                	lw	a3,0(a5)
1c00b5a2:	43dc                	lw	a5,4(a5)
1c00b5a4:	9636                	add	a2,a2,a3
1c00b5a6:	c190                	sw	a2,0(a1)
1c00b5a8:	4314                	lw	a3,0(a4)
1c00b5aa:	c1dc                	sw	a5,4(a1)
1c00b5ac:	00d70533          	add	a0,a4,a3
1c00b5b0:	fea596e3          	bne	a1,a0,1c00b59c <pos_free+0x2e>
1c00b5b4:	9636                	add	a2,a2,a3
1c00b5b6:	c310                	sw	a2,0(a4)
1c00b5b8:	c35c                	sw	a5,4(a4)
1c00b5ba:	8082                	ret
1c00b5bc:	00c58733          	add	a4,a1,a2
1c00b5c0:	00e78663          	beq	a5,a4,1c00b5cc <pos_free+0x5e>
1c00b5c4:	c1dc                	sw	a5,4(a1)
1c00b5c6:	c190                	sw	a2,0(a1)
1c00b5c8:	c10c                	sw	a1,0(a0)
1c00b5ca:	8082                	ret
1c00b5cc:	4398                	lw	a4,0(a5)
1c00b5ce:	43dc                	lw	a5,4(a5)
1c00b5d0:	963a                	add	a2,a2,a4
1c00b5d2:	c1dc                	sw	a5,4(a1)
1c00b5d4:	c190                	sw	a2,0(a1)
1c00b5d6:	bfcd                	j	1c00b5c8 <pos_free+0x5a>

1c00b5d8 <pos_allocs_init>:
1c00b5d8:	1c0065b7          	lui	a1,0x1c006
1c00b5dc:	1141                	addi	sp,sp,-16
1c00b5de:	2d858613          	addi	a2,a1,728 # 1c0062d8 <__l2_priv0_end>
1c00b5e2:	1c0087b7          	lui	a5,0x1c008
1c00b5e6:	c606                	sw	ra,12(sp)
1c00b5e8:	2d858593          	addi	a1,a1,728
1c00b5ec:	40c78633          	sub	a2,a5,a2
1c00b5f0:	04f5d863          	bge	a1,a5,1c00b640 <pos_allocs_init+0x68>
1c00b5f4:	1c006537          	lui	a0,0x1c006
1c00b5f8:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00b5fc:	3df5                	jal	1c00b4f8 <pos_alloc_init>
1c00b5fe:	1c00b5b7          	lui	a1,0x1c00b
1c00b602:	6b058613          	addi	a2,a1,1712 # 1c00b6b0 <__l2_priv1_end>
1c00b606:	1c0107b7          	lui	a5,0x1c010
1c00b60a:	6b058593          	addi	a1,a1,1712
1c00b60e:	40c78633          	sub	a2,a5,a2
1c00b612:	02f5da63          	bge	a1,a5,1c00b646 <pos_allocs_init+0x6e>
1c00b616:	1c006537          	lui	a0,0x1c006
1c00b61a:	2d050513          	addi	a0,a0,720 # 1c0062d0 <pos_alloc_l2+0x4>
1c00b61e:	3de9                	jal	1c00b4f8 <pos_alloc_init>
1c00b620:	40b2                	lw	ra,12(sp)
1c00b622:	1c0105b7          	lui	a1,0x1c010
1c00b626:	00058793          	mv	a5,a1
1c00b62a:	1c080637          	lui	a2,0x1c080
1c00b62e:	1c006537          	lui	a0,0x1c006
1c00b632:	8e1d                	sub	a2,a2,a5
1c00b634:	00058593          	mv	a1,a1
1c00b638:	2d450513          	addi	a0,a0,724 # 1c0062d4 <pos_alloc_l2+0x8>
1c00b63c:	0141                	addi	sp,sp,16
1c00b63e:	bd6d                	j	1c00b4f8 <pos_alloc_init>
1c00b640:	4581                	li	a1,0
1c00b642:	4601                	li	a2,0
1c00b644:	bf45                	j	1c00b5f4 <pos_allocs_init+0x1c>
1c00b646:	4581                	li	a1,0
1c00b648:	4601                	li	a2,0
1c00b64a:	b7f1                	j	1c00b616 <pos_allocs_init+0x3e>

1c00b64c <pi_l2_malloc>:
1c00b64c:	85aa                	mv	a1,a0
1c00b64e:	1c006537          	lui	a0,0x1c006
1c00b652:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00b656:	b5c1                	j	1c00b516 <pos_alloc>

1c00b658 <pi_l2_free>:
1c00b658:	862e                	mv	a2,a1
1c00b65a:	85aa                	mv	a1,a0
1c00b65c:	1c006537          	lui	a0,0x1c006
1c00b660:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00b664:	b729                	j	1c00b56e <pos_free>

1c00b666 <__rt_handle_illegal_instr>:
1c00b666:	8082                	ret

1c00b668 <pos_irq_init>:
1c00b668:	1a10a737          	lui	a4,0x1a10a
1c00b66c:	56fd                	li	a3,-1
1c00b66e:	f14027f3          	csrr	a5,mhartid
1c00b672:	8795                	srai	a5,a5,0x5
1c00b674:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b678:	03f7f793          	andi	a5,a5,63
1c00b67c:	477d                	li	a4,31
1c00b67e:	00e78363          	beq	a5,a4,1c00b684 <pos_irq_init+0x1c>
1c00b682:	8082                	ret
1c00b684:	1c0087b7          	lui	a5,0x1c008
1c00b688:	00078793          	mv	a5,a5
1c00b68c:	0017e793          	ori	a5,a5,1
1c00b690:	30579073          	csrw	mtvec,a5
1c00b694:	8082                	ret

1c00b696 <pos_soc_event_init>:
1c00b696:	1a1067b7          	lui	a5,0x1a106
1c00b69a:	577d                	li	a4,-1
1c00b69c:	c3d8                	sw	a4,4(a5)
1c00b69e:	c798                	sw	a4,8(a5)
1c00b6a0:	c7d8                	sw	a4,12(a5)
1c00b6a2:	cb98                	sw	a4,16(a5)
1c00b6a4:	cbd8                	sw	a4,20(a5)
1c00b6a6:	cf98                	sw	a4,24(a5)
1c00b6a8:	cfd8                	sw	a4,28(a5)
1c00b6aa:	d398                	sw	a4,32(a5)
1c00b6ac:	8082                	ret

1c00b6ae <_endtext>:
	...
