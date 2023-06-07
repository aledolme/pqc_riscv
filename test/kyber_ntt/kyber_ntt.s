riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/alessandra.dolmeta/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	6ed0106f          	j	1c009eec <__rt_handle_illegal_instr>
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
1c008084:	6690106f          	j	1c009eec <__rt_handle_illegal_instr>

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
1c0080c4:	16028293          	addi	t0,t0,352 # 1c006220 <pos_fll_is_on>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	17c30313          	addi	t1,t1,380 # 1c006244 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	14610113          	addi	sp,sp,326 # 1c006220 <pos_fll_is_on>
1c0080e2:	43f010ef          	jal	ra,1c009d20 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	06638393          	addi	t2,t2,102 # 1c008154 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	45b010ef          	jal	ra,1c009d56 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	49d000ef          	jal	ra,1c008d9e <exit>
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

1c008154 <main>:
1c008154:	81010113          	addi	sp,sp,-2032
1c008158:	1c000537          	lui	a0,0x1c000
1c00815c:	7e112623          	sw	ra,2028(sp)
1c008160:	11c50513          	addi	a0,a0,284 # 1c00011c <__clz_tab+0x100>
1c008164:	9e010113          	addi	sp,sp,-1568
1c008168:	3b9000ef          	jal	ra,1c008d20 <puts>
1c00816c:	6705                	lui	a4,0x1
1c00816e:	e0070793          	addi	a5,a4,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008172:	757d                	lui	a0,0xfffff
1c008174:	978a                	add	a5,a5,sp
1c008176:	6a050593          	addi	a1,a0,1696 # fffff6a0 <__l2_shared_end+0xe3fef6a0>
1c00817a:	95be                	add	a1,a1,a5
1c00817c:	e0070793          	addi	a5,a4,-512
1c008180:	978a                	add	a5,a5,sp
1c008182:	20050513          	addi	a0,a0,512
1c008186:	953e                	add	a0,a0,a5
1c008188:	7b4000ef          	jal	ra,1c00893c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c00818c:	1c000537          	lui	a0,0x1c000
1c008190:	12850513          	addi	a0,a0,296 # 1c000128 <__clz_tab+0x10c>
1c008194:	38d000ef          	jal	ra,1c008d20 <puts>
1c008198:	62010113          	addi	sp,sp,1568
1c00819c:	7ec12083          	lw	ra,2028(sp)
1c0081a0:	4501                	li	a0,0
1c0081a2:	7f010113          	addi	sp,sp,2032
1c0081a6:	8082                	ret

1c0081a8 <pos_fll_init>:
1c0081a8:	1101                	addi	sp,sp,-32
1c0081aa:	1a1005b7          	lui	a1,0x1a100
1c0081ae:	c64e                	sw	s3,12(sp)
1c0081b0:	00451613          	slli	a2,a0,0x4
1c0081b4:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c0081b8:	99b2                	add	s3,s3,a2
1c0081ba:	0009a703          	lw	a4,0(s3)
1c0081be:	ca26                	sw	s1,20(sp)
1c0081c0:	ce06                	sw	ra,28(sp)
1c0081c2:	cc22                	sw	s0,24(sp)
1c0081c4:	c84a                	sw	s2,16(sp)
1c0081c6:	c452                	sw	s4,8(sp)
1c0081c8:	84aa                	mv	s1,a0
1c0081ca:	87ba                	mv	a5,a4
1c0081cc:	04074763          	bltz	a4,1c00821a <pos_fll_init+0x72>
1c0081d0:	00858693          	addi	a3,a1,8
1c0081d4:	96b2                	add	a3,a3,a2
1c0081d6:	429c                	lw	a5,0(a3)
1c0081d8:	f0000537          	lui	a0,0xf0000
1c0081dc:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c0081e0:	8fe9                	and	a5,a5,a0
1c0081e2:	00502537          	lui	a0,0x502
1c0081e6:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c0081ea:	8fc9                	or	a5,a5,a0
1c0081ec:	05b1                	addi	a1,a1,12
1c0081ee:	c29c                	sw	a5,0(a3)
1c0081f0:	962e                	add	a2,a2,a1
1c0081f2:	4214                	lw	a3,0(a2)
1c0081f4:	fc0107b7          	lui	a5,0xfc010
1c0081f8:	17fd                	addi	a5,a5,-1
1c0081fa:	01875593          	srli	a1,a4,0x18
1c0081fe:	8efd                	and	a3,a3,a5
1c008200:	0c05e593          	ori	a1,a1,192
1c008204:	00871793          	slli	a5,a4,0x8
1c008208:	014c0537          	lui	a0,0x14c0
1c00820c:	8ec9                	or	a3,a3,a0
1c00820e:	05e2                	slli	a1,a1,0x18
1c008210:	83a1                	srli	a5,a5,0x8
1c008212:	c214                	sw	a3,0(a2)
1c008214:	8fcd                	or	a5,a5,a1
1c008216:	00f9a023          	sw	a5,0(s3)
1c00821a:	1c006437          	lui	s0,0x1c006
1c00821e:	22440413          	addi	s0,s0,548 # 1c006224 <pos_fll_freq>
1c008222:	00249a13          	slli	s4,s1,0x2
1c008226:	014406b3          	add	a3,s0,s4
1c00822a:	0006a903          	lw	s2,0(a3)
1c00822e:	02091d63          	bnez	s2,1c008268 <pos_fll_init+0xc0>
1c008232:	83e9                	srli	a5,a5,0x1a
1c008234:	0742                	slli	a4,a4,0x10
1c008236:	8341                	srli	a4,a4,0x10
1c008238:	8bbd                	andi	a5,a5,15
1c00823a:	073e                	slli	a4,a4,0xf
1c00823c:	17fd                	addi	a5,a5,-1
1c00823e:	00f75933          	srl	s2,a4,a5
1c008242:	0126a023          	sw	s2,0(a3)
1c008246:	1c0066b7          	lui	a3,0x1c006
1c00824a:	22068693          	addi	a3,a3,544 # 1c006220 <pos_fll_is_on>
1c00824e:	96a6                	add	a3,a3,s1
1c008250:	4785                	li	a5,1
1c008252:	00f68023          	sb	a5,0(a3)
1c008256:	40f2                	lw	ra,28(sp)
1c008258:	4462                	lw	s0,24(sp)
1c00825a:	44d2                	lw	s1,20(sp)
1c00825c:	49b2                	lw	s3,12(sp)
1c00825e:	4a22                	lw	s4,8(sp)
1c008260:	854a                	mv	a0,s2
1c008262:	4942                	lw	s2,16(sp)
1c008264:	6105                	addi	sp,sp,32
1c008266:	8082                	ret
1c008268:	854a                	mv	a0,s2
1c00826a:	3d79                	jal	1c008108 <__clzsi2>
1c00826c:	1579                	addi	a0,a0,-2
1c00826e:	8105                	srli	a0,a0,0x1
1c008270:	c939                	beqz	a0,1c0082c6 <pos_fll_init+0x11e>
1c008272:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c008276:	1c0066b7          	lui	a3,0x1c006
1c00827a:	4785                	li	a5,1
1c00827c:	00c797b3          	sll	a5,a5,a2
1c008280:	00a91733          	sll	a4,s2,a0
1c008284:	22068693          	addi	a3,a3,544 # 1c006220 <pos_fll_is_on>
1c008288:	7661                	lui	a2,0xffff8
1c00828a:	8e79                	and	a2,a2,a4
1c00828c:	009685b3          	add	a1,a3,s1
1c008290:	97b2                	add	a5,a5,a2
1c008292:	0005c603          	lbu	a2,0(a1)
1c008296:	9452                	add	s0,s0,s4
1c008298:	00a7d7b3          	srl	a5,a5,a0
1c00829c:	c01c                	sw	a5,0(s0)
1c00829e:	da45                	beqz	a2,1c00824e <pos_fll_init+0xa6>
1c0082a0:	0009a783          	lw	a5,0(s3)
1c0082a4:	833d                	srli	a4,a4,0xf
1c0082a6:	0742                	slli	a4,a4,0x10
1c0082a8:	7641                	lui	a2,0xffff0
1c0082aa:	8341                	srli	a4,a4,0x10
1c0082ac:	8ff1                	and	a5,a5,a2
1c0082ae:	8fd9                	or	a5,a5,a4
1c0082b0:	0505                	addi	a0,a0,1
1c0082b2:	c4000737          	lui	a4,0xc4000
1c0082b6:	893d                	andi	a0,a0,15
1c0082b8:	177d                	addi	a4,a4,-1
1c0082ba:	056a                	slli	a0,a0,0x1a
1c0082bc:	8ff9                	and	a5,a5,a4
1c0082be:	8d5d                	or	a0,a0,a5
1c0082c0:	00a9a023          	sw	a0,0(s3)
1c0082c4:	b769                	j	1c00824e <pos_fll_init+0xa6>
1c0082c6:	4505                	li	a0,1
1c0082c8:	b76d                	j	1c008272 <pos_fll_init+0xca>

1c0082ca <pos_fll_constructor>:
1c0082ca:	1c0067b7          	lui	a5,0x1c006
1c0082ce:	22478793          	addi	a5,a5,548 # 1c006224 <pos_fll_freq>
1c0082d2:	0007a023          	sw	zero,0(a5)
1c0082d6:	0007a223          	sw	zero,4(a5)
1c0082da:	1c0067b7          	lui	a5,0x1c006
1c0082de:	22079023          	sh	zero,544(a5) # 1c006220 <pos_fll_is_on>
1c0082e2:	8082                	ret

1c0082e4 <pos_soc_init>:
1c0082e4:	1141                	addi	sp,sp,-16
1c0082e6:	c606                	sw	ra,12(sp)
1c0082e8:	c422                	sw	s0,8(sp)
1c0082ea:	37c5                	jal	1c0082ca <pos_fll_constructor>
1c0082ec:	4501                	li	a0,0
1c0082ee:	3d6d                	jal	1c0081a8 <pos_fll_init>
1c0082f0:	1c006437          	lui	s0,0x1c006
1c0082f4:	87aa                	mv	a5,a0
1c0082f6:	22c40413          	addi	s0,s0,556 # 1c00622c <pos_freq_domains>
1c0082fa:	4505                	li	a0,1
1c0082fc:	c01c                	sw	a5,0(s0)
1c0082fe:	356d                	jal	1c0081a8 <pos_fll_init>
1c008300:	40b2                	lw	ra,12(sp)
1c008302:	c408                	sw	a0,8(s0)
1c008304:	4422                	lw	s0,8(sp)
1c008306:	0141                	addi	sp,sp,16
1c008308:	8082                	ret

1c00830a <KeccakF1600_StatePermute>:
1c00830a:	1a400837          	lui	a6,0x1a400
1c00830e:	87aa                	mv	a5,a0
1c008310:	0c850613          	addi	a2,a0,200
1c008314:	1141                	addi	sp,sp,-16
1c008316:	40a80533          	sub	a0,a6,a0
1c00831a:	4394                	lw	a3,0(a5)
1c00831c:	00f50733          	add	a4,a0,a5
1c008320:	0791                	addi	a5,a5,4
1c008322:	c314                	sw	a3,0(a4)
1c008324:	fec79be3          	bne	a5,a2,1c00831a <KeccakF1600_StatePermute+0x10>
1c008328:	4785                	li	a5,1
1c00832a:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00832e:	1a400737          	lui	a4,0x1a400
1c008332:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008336:	8b85                	andi	a5,a5,1
1c008338:	dfed                	beqz	a5,1c008332 <KeccakF1600_StatePermute+0x28>
1c00833a:	c602                	sw	zero,12(sp)
1c00833c:	4732                	lw	a4,12(sp)
1c00833e:	03100793          	li	a5,49
1c008342:	02e7c663          	blt	a5,a4,1c00836e <KeccakF1600_StatePermute+0x64>
1c008346:	1a400637          	lui	a2,0x1a400
1c00834a:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00834e:	03100513          	li	a0,49
1c008352:	4732                	lw	a4,12(sp)
1c008354:	47b2                	lw	a5,12(sp)
1c008356:	070a                	slli	a4,a4,0x2
1c008358:	9732                	add	a4,a4,a2
1c00835a:	4314                	lw	a3,0(a4)
1c00835c:	4732                	lw	a4,12(sp)
1c00835e:	078a                	slli	a5,a5,0x2
1c008360:	97ae                	add	a5,a5,a1
1c008362:	0705                	addi	a4,a4,1
1c008364:	c63a                	sw	a4,12(sp)
1c008366:	4732                	lw	a4,12(sp)
1c008368:	c394                	sw	a3,0(a5)
1c00836a:	fee554e3          	bge	a0,a4,1c008352 <KeccakF1600_StatePermute+0x48>
1c00836e:	0141                	addi	sp,sp,16
1c008370:	8082                	ret

1c008372 <KYBER_poly_ntt>:
1c008372:	1a4007b7          	lui	a5,0x1a400
1c008376:	4705                	li	a4,1
1c008378:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00837c:	3007a423          	sw	zero,776(a5)
1c008380:	20050693          	addi	a3,a0,512
1c008384:	1a400737          	lui	a4,0x1a400
1c008388:	411c                	lw	a5,0(a0)
1c00838a:	0511                	addi	a0,a0,4
1c00838c:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c008390:	fed51ce3          	bne	a0,a3,1c008388 <KYBER_poly_ntt+0x16>
1c008394:	08000793          	li	a5,128
1c008398:	30f72423          	sw	a5,776(a4)
1c00839c:	30072423          	sw	zero,776(a4)
1c0083a0:	1a400737          	lui	a4,0x1a400
1c0083a4:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c0083a8:	8b85                	andi	a5,a5,1
1c0083aa:	dfed                	beqz	a5,1c0083a4 <KYBER_poly_ntt+0x32>
1c0083ac:	47c1                	li	a5,16
1c0083ae:	30f72423          	sw	a5,776(a4)
1c0083b2:	30072423          	sw	zero,776(a4)
1c0083b6:	8082                	ret

1c0083b8 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0083b8:	1101                	addi	sp,sp,-32
1c0083ba:	55555f37          	lui	t5,0x55555
1c0083be:	ce22                	sw	s0,28(sp)
1c0083c0:	cc26                	sw	s1,24(sp)
1c0083c2:	ca4a                	sw	s2,20(sp)
1c0083c4:	c84e                	sw	s3,16(sp)
1c0083c6:	c652                	sw	s4,12(sp)
1c0083c8:	20050f93          	addi	t6,a0,512
1c0083cc:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0083d0:	0015c683          	lbu	a3,1(a1)
1c0083d4:	0005c603          	lbu	a2,0(a1)
1c0083d8:	0025c783          	lbu	a5,2(a1)
1c0083dc:	0035c703          	lbu	a4,3(a1)
1c0083e0:	06a2                	slli	a3,a3,0x8
1c0083e2:	8ed1                	or	a3,a3,a2
1c0083e4:	07c2                	slli	a5,a5,0x10
1c0083e6:	8fd5                	or	a5,a5,a3
1c0083e8:	0762                	slli	a4,a4,0x18
1c0083ea:	8f5d                	or	a4,a4,a5
1c0083ec:	00175793          	srli	a5,a4,0x1
1c0083f0:	01e7f7b3          	and	a5,a5,t5
1c0083f4:	01e77733          	and	a4,a4,t5
1c0083f8:	97ba                	add	a5,a5,a4
1c0083fa:	0027da13          	srli	s4,a5,0x2
1c0083fe:	0047d313          	srli	t1,a5,0x4
1c008402:	0067d993          	srli	s3,a5,0x6
1c008406:	0087d893          	srli	a7,a5,0x8
1c00840a:	00a7d913          	srli	s2,a5,0xa
1c00840e:	00c7d813          	srli	a6,a5,0xc
1c008412:	00e7d493          	srli	s1,a5,0xe
1c008416:	0107d613          	srli	a2,a5,0x10
1c00841a:	0127d413          	srli	s0,a5,0x12
1c00841e:	0147d693          	srli	a3,a5,0x14
1c008422:	0167d393          	srli	t2,a5,0x16
1c008426:	0187d713          	srli	a4,a5,0x18
1c00842a:	01a7d293          	srli	t0,a5,0x1a
1c00842e:	01c7de93          	srli	t4,a5,0x1c
1c008432:	0037fe13          	andi	t3,a5,3
1c008436:	003a7a13          	andi	s4,s4,3
1c00843a:	00337313          	andi	t1,t1,3
1c00843e:	0039f993          	andi	s3,s3,3
1c008442:	0038f893          	andi	a7,a7,3
1c008446:	00397913          	andi	s2,s2,3
1c00844a:	00387813          	andi	a6,a6,3
1c00844e:	888d                	andi	s1,s1,3
1c008450:	8a0d                	andi	a2,a2,3
1c008452:	880d                	andi	s0,s0,3
1c008454:	8a8d                	andi	a3,a3,3
1c008456:	0033f393          	andi	t2,t2,3
1c00845a:	8b0d                	andi	a4,a4,3
1c00845c:	0032f293          	andi	t0,t0,3
1c008460:	003efe93          	andi	t4,t4,3
1c008464:	83f9                	srli	a5,a5,0x1e
1c008466:	414e0e33          	sub	t3,t3,s4
1c00846a:	41330333          	sub	t1,t1,s3
1c00846e:	412888b3          	sub	a7,a7,s2
1c008472:	40980833          	sub	a6,a6,s1
1c008476:	8e01                	sub	a2,a2,s0
1c008478:	407686b3          	sub	a3,a3,t2
1c00847c:	40570733          	sub	a4,a4,t0
1c008480:	40fe87b3          	sub	a5,t4,a5
1c008484:	01c51023          	sh	t3,0(a0)
1c008488:	00651123          	sh	t1,2(a0)
1c00848c:	01151223          	sh	a7,4(a0)
1c008490:	01051323          	sh	a6,6(a0)
1c008494:	00c51423          	sh	a2,8(a0)
1c008498:	00d51523          	sh	a3,10(a0)
1c00849c:	00e51623          	sh	a4,12(a0)
1c0084a0:	00f51723          	sh	a5,14(a0)
1c0084a4:	0541                	addi	a0,a0,16
1c0084a6:	0591                	addi	a1,a1,4
1c0084a8:	f3f514e3          	bne	a0,t6,1c0083d0 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0084ac:	4472                	lw	s0,28(sp)
1c0084ae:	44e2                	lw	s1,24(sp)
1c0084b0:	4952                	lw	s2,20(sp)
1c0084b2:	49c2                	lw	s3,16(sp)
1c0084b4:	4a32                	lw	s4,12(sp)
1c0084b6:	6105                	addi	sp,sp,32
1c0084b8:	8082                	ret

1c0084ba <keccak_absorb.constprop.1>:
1c0084ba:	7151                	addi	sp,sp,-240
1c0084bc:	d3a6                	sw	s1,228(sp)
1c0084be:	cfce                	sw	s3,220(sp)
1c0084c0:	cdd2                	sw	s4,216(sp)
1c0084c2:	cbd6                	sw	s5,212(sp)
1c0084c4:	84b6                	mv	s1,a3
1c0084c6:	d786                	sw	ra,236(sp)
1c0084c8:	d5a2                	sw	s0,232(sp)
1c0084ca:	d1ca                	sw	s2,224(sp)
1c0084cc:	c9da                	sw	s6,208(sp)
1c0084ce:	8a2a                	mv	s4,a0
1c0084d0:	87ae                	mv	a5,a1
1c0084d2:	8ab2                	mv	s5,a2
1c0084d4:	89aa                	mv	s3,a0
1c0084d6:	0c850693          	addi	a3,a0,200
1c0084da:	872a                	mv	a4,a0
1c0084dc:	4581                	li	a1,0
1c0084de:	4601                	li	a2,0
1c0084e0:	c30c                	sw	a1,0(a4)
1c0084e2:	c350                	sw	a2,4(a4)
1c0084e4:	0721                	addi	a4,a4,8
1c0084e6:	fee69be3          	bne	a3,a4,1c0084dc <keccak_absorb.constprop.1+0x22>
1c0084ea:	08700713          	li	a4,135
1c0084ee:	09577363          	bgeu	a4,s5,1c008574 <keccak_absorb.constprop.1+0xba>
1c0084f2:	08878b13          	addi	s6,a5,136
1c0084f6:	895a                	mv	s2,s6
1c0084f8:	08700413          	li	s0,135
1c0084fc:	86d2                	mv	a3,s4
1c0084fe:	0017c703          	lbu	a4,1(a5)
1c008502:	0027ce03          	lbu	t3,2(a5)
1c008506:	0057c803          	lbu	a6,5(a5)
1c00850a:	0047cf03          	lbu	t5,4(a5)
1c00850e:	0067c503          	lbu	a0,6(a5)
1c008512:	0007ce83          	lbu	t4,0(a5)
1c008516:	0037c583          	lbu	a1,3(a5)
1c00851a:	0077c603          	lbu	a2,7(a5)
1c00851e:	0722                	slli	a4,a4,0x8
1c008520:	0e42                	slli	t3,t3,0x10
1c008522:	0822                	slli	a6,a6,0x8
1c008524:	0006a303          	lw	t1,0(a3)
1c008528:	0046a883          	lw	a7,4(a3)
1c00852c:	01c76733          	or	a4,a4,t3
1c008530:	01e86833          	or	a6,a6,t5
1c008534:	0542                	slli	a0,a0,0x10
1c008536:	01d76733          	or	a4,a4,t4
1c00853a:	05e2                	slli	a1,a1,0x18
1c00853c:	01056533          	or	a0,a0,a6
1c008540:	0662                	slli	a2,a2,0x18
1c008542:	8f4d                	or	a4,a4,a1
1c008544:	8e49                	or	a2,a2,a0
1c008546:	00e34733          	xor	a4,t1,a4
1c00854a:	00c8c633          	xor	a2,a7,a2
1c00854e:	c298                	sw	a4,0(a3)
1c008550:	c2d0                	sw	a2,4(a3)
1c008552:	07a1                	addi	a5,a5,8
1c008554:	06a1                	addi	a3,a3,8
1c008556:	faf914e3          	bne	s2,a5,1c0084fe <keccak_absorb.constprop.1+0x44>
1c00855a:	85d2                	mv	a1,s4
1c00855c:	8552                	mv	a0,s4
1c00855e:	3375                	jal	1c00830a <KeccakF1600_StatePermute>
1c008560:	f78a8a93          	addi	s5,s5,-136
1c008564:	08890913          	addi	s2,s2,136
1c008568:	87da                	mv	a5,s6
1c00856a:	01547563          	bgeu	s0,s5,1c008574 <keccak_absorb.constprop.1+0xba>
1c00856e:	088b0b13          	addi	s6,s6,136
1c008572:	b769                	j	1c0084fc <keccak_absorb.constprop.1+0x42>
1c008574:	0038                	addi	a4,sp,8
1c008576:	09010e13          	addi	t3,sp,144
1c00857a:	86ba                	mv	a3,a4
1c00857c:	0006a023          	sw	zero,0(a3)
1c008580:	0691                	addi	a3,a3,4
1c008582:	fede1de3          	bne	t3,a3,1c00857c <keccak_absorb.constprop.1+0xc2>
1c008586:	080a8263          	beqz	s5,1c00860a <keccak_absorb.constprop.1+0x150>
1c00858a:	fffa8693          	addi	a3,s5,-1
1c00858e:	4609                	li	a2,2
1c008590:	10d67163          	bgeu	a2,a3,1c008692 <keccak_absorb.constprop.1+0x1d8>
1c008594:	ffcaf313          	andi	t1,s5,-4
1c008598:	86be                	mv	a3,a5
1c00859a:	933e                	add	t1,t1,a5
1c00859c:	883a                	mv	a6,a4
1c00859e:	0016c503          	lbu	a0,1(a3)
1c0085a2:	0006c883          	lbu	a7,0(a3)
1c0085a6:	0026c583          	lbu	a1,2(a3)
1c0085aa:	0036c603          	lbu	a2,3(a3)
1c0085ae:	0522                	slli	a0,a0,0x8
1c0085b0:	01156533          	or	a0,a0,a7
1c0085b4:	05c2                	slli	a1,a1,0x10
1c0085b6:	8dc9                	or	a1,a1,a0
1c0085b8:	0662                	slli	a2,a2,0x18
1c0085ba:	8e4d                	or	a2,a2,a1
1c0085bc:	00c82023          	sw	a2,0(a6)
1c0085c0:	0691                	addi	a3,a3,4
1c0085c2:	0811                	addi	a6,a6,4
1c0085c4:	fcd31de3          	bne	t1,a3,1c00859e <keccak_absorb.constprop.1+0xe4>
1c0085c8:	ffcaf693          	andi	a3,s5,-4
1c0085cc:	02da8f63          	beq	s5,a3,1c00860a <keccak_absorb.constprop.1+0x150>
1c0085d0:	00d78633          	add	a2,a5,a3
1c0085d4:	00064503          	lbu	a0,0(a2)
1c0085d8:	098c                	addi	a1,sp,208
1c0085da:	95b6                	add	a1,a1,a3
1c0085dc:	00168613          	addi	a2,a3,1
1c0085e0:	f2a58c23          	sb	a0,-200(a1)
1c0085e4:	03567363          	bgeu	a2,s5,1c00860a <keccak_absorb.constprop.1+0x150>
1c0085e8:	00c785b3          	add	a1,a5,a2
1c0085ec:	0005c583          	lbu	a1,0(a1)
1c0085f0:	0988                	addi	a0,sp,208
1c0085f2:	962a                	add	a2,a2,a0
1c0085f4:	0689                	addi	a3,a3,2
1c0085f6:	f2b60c23          	sb	a1,-200(a2)
1c0085fa:	0156f863          	bgeu	a3,s5,1c00860a <keccak_absorb.constprop.1+0x150>
1c0085fe:	97b6                	add	a5,a5,a3
1c008600:	0007c783          	lbu	a5,0(a5)
1c008604:	96aa                	add	a3,a3,a0
1c008606:	f2f68c23          	sb	a5,-200(a3)
1c00860a:	099c                	addi	a5,sp,208
1c00860c:	9abe                	add	s5,s5,a5
1c00860e:	f29a8c23          	sb	s1,-200(s5)
1c008612:	08f14783          	lbu	a5,143(sp)
1c008616:	f807e793          	ori	a5,a5,-128
1c00861a:	08f107a3          	sb	a5,143(sp)
1c00861e:	00174783          	lbu	a5,1(a4)
1c008622:	00274303          	lbu	t1,2(a4)
1c008626:	00574503          	lbu	a0,5(a4)
1c00862a:	00474f03          	lbu	t5,4(a4)
1c00862e:	00674583          	lbu	a1,6(a4)
1c008632:	00074e83          	lbu	t4,0(a4)
1c008636:	00374603          	lbu	a2,3(a4)
1c00863a:	00774683          	lbu	a3,7(a4)
1c00863e:	07a2                	slli	a5,a5,0x8
1c008640:	0342                	slli	t1,t1,0x10
1c008642:	0522                	slli	a0,a0,0x8
1c008644:	0009a883          	lw	a7,0(s3)
1c008648:	0049a803          	lw	a6,4(s3)
1c00864c:	0067e7b3          	or	a5,a5,t1
1c008650:	01e56533          	or	a0,a0,t5
1c008654:	05c2                	slli	a1,a1,0x10
1c008656:	01d7e7b3          	or	a5,a5,t4
1c00865a:	0662                	slli	a2,a2,0x18
1c00865c:	8dc9                	or	a1,a1,a0
1c00865e:	06e2                	slli	a3,a3,0x18
1c008660:	8e5d                	or	a2,a2,a5
1c008662:	00b6e7b3          	or	a5,a3,a1
1c008666:	00c8c633          	xor	a2,a7,a2
1c00866a:	00f847b3          	xor	a5,a6,a5
1c00866e:	00c9a023          	sw	a2,0(s3)
1c008672:	00f9a223          	sw	a5,4(s3)
1c008676:	0721                	addi	a4,a4,8
1c008678:	09a1                	addi	s3,s3,8
1c00867a:	faee12e3          	bne	t3,a4,1c00861e <keccak_absorb.constprop.1+0x164>
1c00867e:	50be                	lw	ra,236(sp)
1c008680:	542e                	lw	s0,232(sp)
1c008682:	549e                	lw	s1,228(sp)
1c008684:	590e                	lw	s2,224(sp)
1c008686:	49fe                	lw	s3,220(sp)
1c008688:	4a6e                	lw	s4,216(sp)
1c00868a:	4ade                	lw	s5,212(sp)
1c00868c:	4b4e                	lw	s6,208(sp)
1c00868e:	616d                	addi	sp,sp,240
1c008690:	8082                	ret
1c008692:	4681                	li	a3,0
1c008694:	bf35                	j	1c0085d0 <keccak_absorb.constprop.1+0x116>

1c008696 <shake256>:
1c008696:	7131                	addi	sp,sp,-192
1c008698:	db26                	sw	s1,180(sp)
1c00869a:	d74e                	sw	s3,172(sp)
1c00869c:	84aa                	mv	s1,a0
1c00869e:	08800993          	li	s3,136
1c0086a2:	0c800513          	li	a0,200
1c0086a6:	dd22                	sw	s0,184(sp)
1c0086a8:	d94a                	sw	s2,176(sp)
1c0086aa:	d356                	sw	s5,164(sp)
1c0086ac:	df06                	sw	ra,188(sp)
1c0086ae:	d552                	sw	s4,168(sp)
1c0086b0:	d15a                	sw	s6,160(sp)
1c0086b2:	cf5e                	sw	s7,156(sp)
1c0086b4:	cd62                	sw	s8,152(sp)
1c0086b6:	0335d9b3          	divu	s3,a1,s3
1c0086ba:	892e                	mv	s2,a1
1c0086bc:	8432                	mv	s0,a2
1c0086be:	8ab6                	mv	s5,a3
1c0086c0:	013010ef          	jal	ra,1c009ed2 <pi_l2_malloc>
1c0086c4:	24050563          	beqz	a0,1c00890e <shake256+0x278>
1c0086c8:	46fd                	li	a3,31
1c0086ca:	8656                	mv	a2,s5
1c0086cc:	85a2                	mv	a1,s0
1c0086ce:	8a2a                	mv	s4,a0
1c0086d0:	33ed                	jal	1c0084ba <keccak_absorb.constprop.1>
1c0086d2:	08700793          	li	a5,135
1c0086d6:	0d27fe63          	bgeu	a5,s2,1c0087b2 <shake256+0x11c>
1c0086da:	00499413          	slli	s0,s3,0x4
1c0086de:	944e                	add	s0,s0,s3
1c0086e0:	040e                	slli	s0,s0,0x3
1c0086e2:	7bc1                	lui	s7,0xffff0
1c0086e4:	ff010b37          	lui	s6,0xff010
1c0086e8:	01000ab7          	lui	s5,0x1000
1c0086ec:	9426                	add	s0,s0,s1
1c0086ee:	8c26                	mv	s8,s1
1c0086f0:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c0086f4:	1b7d                	addi	s6,s6,-1
1c0086f6:	1afd                	addi	s5,s5,-1
1c0086f8:	85d2                	mv	a1,s4
1c0086fa:	8552                	mv	a0,s4
1c0086fc:	3139                	jal	1c00830a <KeccakF1600_StatePermute>
1c0086fe:	87e2                	mv	a5,s8
1c008700:	418a0533          	sub	a0,s4,s8
1c008704:	088c0593          	addi	a1,s8,136
1c008708:	00f50733          	add	a4,a0,a5
1c00870c:	4314                	lw	a3,0(a4)
1c00870e:	4358                	lw	a4,4(a4)
1c008710:	07a1                	addi	a5,a5,8
1c008712:	0086d313          	srli	t1,a3,0x8
1c008716:	00875893          	srli	a7,a4,0x8
1c00871a:	0ff6f813          	andi	a6,a3,255
1c00871e:	0ff77613          	andi	a2,a4,255
1c008722:	0ff37313          	andi	t1,t1,255
1c008726:	0ff8f893          	andi	a7,a7,255
1c00872a:	0322                	slli	t1,t1,0x8
1c00872c:	08a2                	slli	a7,a7,0x8
1c00872e:	01787833          	and	a6,a6,s7
1c008732:	01767633          	and	a2,a2,s7
1c008736:	00686833          	or	a6,a6,t1
1c00873a:	01166633          	or	a2,a2,a7
1c00873e:	00ff0337          	lui	t1,0xff0
1c008742:	00ff08b7          	lui	a7,0xff0
1c008746:	0066f333          	and	t1,a3,t1
1c00874a:	011778b3          	and	a7,a4,a7
1c00874e:	01687833          	and	a6,a6,s6
1c008752:	01667633          	and	a2,a2,s6
1c008756:	00686833          	or	a6,a6,t1
1c00875a:	01166633          	or	a2,a2,a7
1c00875e:	82e1                	srli	a3,a3,0x18
1c008760:	8361                	srli	a4,a4,0x18
1c008762:	01587833          	and	a6,a6,s5
1c008766:	01567633          	and	a2,a2,s5
1c00876a:	06e2                	slli	a3,a3,0x18
1c00876c:	0762                	slli	a4,a4,0x18
1c00876e:	00d866b3          	or	a3,a6,a3
1c008772:	8f51                	or	a4,a4,a2
1c008774:	0086de93          	srli	t4,a3,0x8
1c008778:	0106de13          	srli	t3,a3,0x10
1c00877c:	00875313          	srli	t1,a4,0x8
1c008780:	01075893          	srli	a7,a4,0x10
1c008784:	82e1                	srli	a3,a3,0x18
1c008786:	8361                	srli	a4,a4,0x18
1c008788:	ff078c23          	sb	a6,-8(a5)
1c00878c:	ffd78ca3          	sb	t4,-7(a5)
1c008790:	ffc78d23          	sb	t3,-6(a5)
1c008794:	fed78da3          	sb	a3,-5(a5)
1c008798:	fec78e23          	sb	a2,-4(a5)
1c00879c:	fe678ea3          	sb	t1,-3(a5)
1c0087a0:	ff178f23          	sb	a7,-2(a5)
1c0087a4:	fee78fa3          	sb	a4,-1(a5)
1c0087a8:	f6f590e3          	bne	a1,a5,1c008708 <shake256+0x72>
1c0087ac:	8c2e                	mv	s8,a1
1c0087ae:	f48595e3          	bne	a1,s0,1c0086f8 <shake256+0x62>
1c0087b2:	08800593          	li	a1,136
1c0087b6:	02b97933          	remu	s2,s2,a1
1c0087ba:	02091263          	bnez	s2,1c0087de <shake256+0x148>
1c0087be:	546a                	lw	s0,184(sp)
1c0087c0:	50fa                	lw	ra,188(sp)
1c0087c2:	54da                	lw	s1,180(sp)
1c0087c4:	594a                	lw	s2,176(sp)
1c0087c6:	59ba                	lw	s3,172(sp)
1c0087c8:	5a9a                	lw	s5,164(sp)
1c0087ca:	5b0a                	lw	s6,160(sp)
1c0087cc:	4bfa                	lw	s7,156(sp)
1c0087ce:	4c6a                	lw	s8,152(sp)
1c0087d0:	8552                	mv	a0,s4
1c0087d2:	5a2a                	lw	s4,168(sp)
1c0087d4:	0c800593          	li	a1,200
1c0087d8:	6129                	addi	sp,sp,192
1c0087da:	7040106f          	j	1c009ede <pi_l2_free>
1c0087de:	85d2                	mv	a1,s4
1c0087e0:	8552                	mv	a0,s4
1c0087e2:	3625                	jal	1c00830a <KeccakF1600_StatePermute>
1c0087e4:	002c                	addi	a1,sp,8
1c0087e6:	78c1                	lui	a7,0xffff0
1c0087e8:	ff010837          	lui	a6,0xff010
1c0087ec:	01000537          	lui	a0,0x1000
1c0087f0:	09010e13          	addi	t3,sp,144
1c0087f4:	862e                	mv	a2,a1
1c0087f6:	40ba0333          	sub	t1,s4,a1
1c0087fa:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c0087fe:	187d                	addi	a6,a6,-1
1c008800:	157d                	addi	a0,a0,-1
1c008802:	00c307b3          	add	a5,t1,a2
1c008806:	0007ae83          	lw	t4,0(a5)
1c00880a:	43d4                	lw	a3,4(a5)
1c00880c:	0621                	addi	a2,a2,8
1c00880e:	008edf93          	srli	t6,t4,0x8
1c008812:	0086df13          	srli	t5,a3,0x8
1c008816:	0ffef713          	andi	a4,t4,255
1c00881a:	0ff6f793          	andi	a5,a3,255
1c00881e:	0fffff93          	andi	t6,t6,255
1c008822:	0fff7f13          	andi	t5,t5,255
1c008826:	0fa2                	slli	t6,t6,0x8
1c008828:	0f22                	slli	t5,t5,0x8
1c00882a:	01177733          	and	a4,a4,a7
1c00882e:	0117f7b3          	and	a5,a5,a7
1c008832:	01f76733          	or	a4,a4,t6
1c008836:	01e7e7b3          	or	a5,a5,t5
1c00883a:	00ff0fb7          	lui	t6,0xff0
1c00883e:	00ff0f37          	lui	t5,0xff0
1c008842:	01feffb3          	and	t6,t4,t6
1c008846:	01e6ff33          	and	t5,a3,t5
1c00884a:	01077733          	and	a4,a4,a6
1c00884e:	0107f7b3          	and	a5,a5,a6
1c008852:	01f76733          	or	a4,a4,t6
1c008856:	018ede93          	srli	t4,t4,0x18
1c00885a:	01e7e7b3          	or	a5,a5,t5
1c00885e:	82e1                	srli	a3,a3,0x18
1c008860:	0ee2                	slli	t4,t4,0x18
1c008862:	8f69                	and	a4,a4,a0
1c008864:	06e2                	slli	a3,a3,0x18
1c008866:	8fe9                	and	a5,a5,a0
1c008868:	01d76733          	or	a4,a4,t4
1c00886c:	8fd5                	or	a5,a5,a3
1c00886e:	fee62c23          	sw	a4,-8(a2)
1c008872:	fef62e23          	sw	a5,-4(a2)
1c008876:	f8ce16e3          	bne	t3,a2,1c008802 <shake256+0x16c>
1c00887a:	fff90793          	addi	a5,s2,-1
1c00887e:	4709                	li	a4,2
1c008880:	08f77363          	bgeu	a4,a5,1c008906 <shake256+0x270>
1c008884:	00499413          	slli	s0,s3,0x4
1c008888:	013407b3          	add	a5,s0,s3
1c00888c:	078e                	slli	a5,a5,0x3
1c00888e:	97a6                	add	a5,a5,s1
1c008890:	0fc97813          	andi	a6,s2,252
1c008894:	983e                	add	a6,a6,a5
1c008896:	4198                	lw	a4,0(a1)
1c008898:	0791                	addi	a5,a5,4
1c00889a:	0591                	addi	a1,a1,4
1c00889c:	00875513          	srli	a0,a4,0x8
1c0088a0:	01075613          	srli	a2,a4,0x10
1c0088a4:	01875693          	srli	a3,a4,0x18
1c0088a8:	fea78ea3          	sb	a0,-3(a5)
1c0088ac:	fec78f23          	sb	a2,-2(a5)
1c0088b0:	fed78fa3          	sb	a3,-1(a5)
1c0088b4:	fee78e23          	sb	a4,-4(a5)
1c0088b8:	fcf81fe3          	bne	a6,a5,1c008896 <shake256+0x200>
1c0088bc:	ffc97793          	andi	a5,s2,-4
1c0088c0:	eef90fe3          	beq	s2,a5,1c0087be <shake256+0x128>
1c0088c4:	0918                	addi	a4,sp,144
1c0088c6:	973e                	add	a4,a4,a5
1c0088c8:	99a2                	add	s3,s3,s0
1c0088ca:	f7874683          	lbu	a3,-136(a4)
1c0088ce:	098e                	slli	s3,s3,0x3
1c0088d0:	99a6                	add	s3,s3,s1
1c0088d2:	00f98733          	add	a4,s3,a5
1c0088d6:	00d70023          	sb	a3,0(a4)
1c0088da:	00178713          	addi	a4,a5,1
1c0088de:	ef2770e3          	bgeu	a4,s2,1c0087be <shake256+0x128>
1c0088e2:	0914                	addi	a3,sp,144
1c0088e4:	96ba                	add	a3,a3,a4
1c0088e6:	f786c683          	lbu	a3,-136(a3)
1c0088ea:	974e                	add	a4,a4,s3
1c0088ec:	0789                	addi	a5,a5,2
1c0088ee:	00d70023          	sb	a3,0(a4)
1c0088f2:	ed27f6e3          	bgeu	a5,s2,1c0087be <shake256+0x128>
1c0088f6:	0918                	addi	a4,sp,144
1c0088f8:	973e                	add	a4,a4,a5
1c0088fa:	f7874703          	lbu	a4,-136(a4)
1c0088fe:	99be                	add	s3,s3,a5
1c008900:	00e98023          	sb	a4,0(s3)
1c008904:	bd6d                	j	1c0087be <shake256+0x128>
1c008906:	4781                	li	a5,0
1c008908:	00499413          	slli	s0,s3,0x4
1c00890c:	bf65                	j	1c0088c4 <shake256+0x22e>
1c00890e:	06f00513          	li	a0,111
1c008912:	2171                	jal	1c008d9e <exit>

1c008914 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c008914:	9b010113          	addi	sp,sp,-1616
1c008918:	100c                	addi	a1,sp,32
1c00891a:	4601                	li	a2,0
1c00891c:	0088                	addi	a0,sp,64
1c00891e:	64112623          	sw	ra,1612(sp)
1c008922:	2025                	jal	1c00894a <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c008924:	1c000537          	lui	a0,0x1c000
1c008928:	13450513          	addi	a0,a0,308 # 1c000134 <__clz_tab+0x118>
1c00892c:	2ed5                	jal	1c008d20 <puts>
1c00892e:	0088                	addi	a0,sp,64
1c008930:	2835                	jal	1c00896c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c008932:	64c12083          	lw	ra,1612(sp)
1c008936:	65010113          	addi	sp,sp,1616
1c00893a:	8082                	ret

1c00893c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c00893c:	1141                	addi	sp,sp,-16
1c00893e:	c606                	sw	ra,12(sp)
1c008940:	3fd1                	jal	1c008914 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c008942:	40b2                	lw	ra,12(sp)
1c008944:	4501                	li	a0,0
1c008946:	0141                	addi	sp,sp,16
1c008948:	8082                	ret

1c00894a <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00894a:	7175                	addi	sp,sp,-144
1c00894c:	c522                	sw	s0,136(sp)
1c00894e:	86b2                	mv	a3,a2
1c008950:	842a                	mv	s0,a0
1c008952:	862e                	mv	a2,a1
1c008954:	850a                	mv	a0,sp
1c008956:	08000593          	li	a1,128
1c00895a:	c706                	sw	ra,140(sp)
1c00895c:	2a19                	jal	1c008a72 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00895e:	858a                	mv	a1,sp
1c008960:	8522                	mv	a0,s0
1c008962:	3c99                	jal	1c0083b8 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c008964:	40ba                	lw	ra,140(sp)
1c008966:	442a                	lw	s0,136(sp)
1c008968:	6149                	addi	sp,sp,144
1c00896a:	8082                	ret

1c00896c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c00896c:	86010113          	addi	sp,sp,-1952
1c008970:	78812c23          	sw	s0,1944(sp)
1c008974:	0c800613          	li	a2,200
1c008978:	842a                	mv	s0,a0
1c00897a:	4581                	li	a1,0
1c00897c:	850a                	mv	a0,sp
1c00897e:	78112e23          	sw	ra,1948(sp)
1c008982:	78912a23          	sw	s1,1940(sp)
1c008986:	79212823          	sw	s2,1936(sp)
1c00898a:	2299                	jal	1c008ad0 <memset>
1c00898c:	0c800613          	li	a2,200
1c008990:	4581                	li	a1,0
1c008992:	01a8                	addi	a0,sp,200
1c008994:	2a35                	jal	1c008ad0 <memset>
1c008996:	20000613          	li	a2,512
1c00899a:	4581                	li	a1,0
1c00899c:	0b08                	addi	a0,sp,400
1c00899e:	2a0d                	jal	1c008ad0 <memset>
1c0089a0:	0f04                	addi	s1,sp,912
1c0089a2:	20000613          	li	a2,512
1c0089a6:	4581                	li	a1,0
1c0089a8:	8526                	mv	a0,s1
1c0089aa:	221d                	jal	1c008ad0 <memset>
1c0089ac:	20000613          	li	a2,512
1c0089b0:	85a2                	mv	a1,s0
1c0089b2:	59010513          	addi	a0,sp,1424
1c0089b6:	2a79                	jal	1c008b54 <memcpy>
1c0089b8:	6541                	lui	a0,0x10
1c0089ba:	59010693          	addi	a3,sp,1424
1c0089be:	4601                	li	a2,0
1c0089c0:	157d                	addi	a0,a0,-1
1c0089c2:	10000813          	li	a6,256
1c0089c6:	00069703          	lh	a4,0(a3)
1c0089ca:	00269583          	lh	a1,2(a3)
1c0089ce:	00165793          	srli	a5,a2,0x1
1c0089d2:	078a                	slli	a5,a5,0x2
1c0089d4:	0742                	slli	a4,a4,0x10
1c0089d6:	8de9                	and	a1,a1,a0
1c0089d8:	79010413          	addi	s0,sp,1936
1c0089dc:	97a2                	add	a5,a5,s0
1c0089de:	8f4d                	or	a4,a4,a1
1c0089e0:	a0e7a023          	sw	a4,-1536(a5)
1c0089e4:	0609                	addi	a2,a2,2
1c0089e6:	0691                	addi	a3,a3,4
1c0089e8:	fd061fe3          	bne	a2,a6,1c0089c6 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x5a>
1c0089ec:	0b00                	addi	s0,sp,400
1c0089ee:	1c000937          	lui	s2,0x1c000
1c0089f2:	400c                	lw	a1,0(s0)
1c0089f4:	14890513          	addi	a0,s2,328 # 1c000148 <__clz_tab+0x12c>
1c0089f8:	0411                	addi	s0,s0,4
1c0089fa:	26c1                	jal	1c008dba <printf>
1c0089fc:	fe849be3          	bne	s1,s0,1c0089f2 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x86>
1c008a00:	1c000537          	lui	a0,0x1c000
1c008a04:	15050513          	addi	a0,a0,336 # 1c000150 <__clz_tab+0x134>
1c008a08:	2e21                	jal	1c008d20 <puts>
1c008a0a:	85a6                	mv	a1,s1
1c008a0c:	0b08                	addi	a0,sp,400
1c008a0e:	3295                	jal	1c008372 <KYBER_poly_ntt>
1c008a10:	1c000537          	lui	a0,0x1c000
1c008a14:	17450513          	addi	a0,a0,372 # 1c000174 <__clz_tab+0x158>
1c008a18:	2621                	jal	1c008d20 <puts>
1c008a1a:	1c000537          	lui	a0,0x1c000
1c008a1e:	19450513          	addi	a0,a0,404 # 1c000194 <__clz_tab+0x178>
1c008a22:	2e61                	jal	1c008dba <printf>
1c008a24:	7369c7b7          	lui	a5,0x7369c
1c008a28:	66778793          	addi	a5,a5,1639 # 7369c667 <__l2_shared_end+0x5768c667>
1c008a2c:	c03e                	sw	a5,0(sp)
1c008a2e:	ec4b07b7          	lui	a5,0xec4b0
1c008a32:	f5178793          	addi	a5,a5,-175 # ec4aff51 <__l2_shared_end+0xd049ff51>
1c008a36:	c23e                	sw	a5,4(sp)
1c008a38:	abbad7b7          	lui	a5,0xabbad
1c008a3c:	d2978793          	addi	a5,a5,-727 # abbacd29 <__l2_shared_end+0x8fb9cd29>
1c008a40:	c43e                	sw	a5,8(sp)
1c008a42:	47c1                	li	a5,16
1c008a44:	01ac                	addi	a1,sp,200
1c008a46:	c63e                	sw	a5,12(sp)
1c008a48:	850a                	mv	a0,sp
1c008a4a:	800007b7          	lui	a5,0x80000
1c008a4e:	debe                	sw	a5,124(sp)
1c008a50:	386d                	jal	1c00830a <KeccakF1600_StatePermute>
1c008a52:	1c000537          	lui	a0,0x1c000
1c008a56:	1cc50513          	addi	a0,a0,460 # 1c0001cc <__clz_tab+0x1b0>
1c008a5a:	2685                	jal	1c008dba <printf>
1c008a5c:	79c12083          	lw	ra,1948(sp)
1c008a60:	79812403          	lw	s0,1944(sp)
1c008a64:	79412483          	lw	s1,1940(sp)
1c008a68:	79012903          	lw	s2,1936(sp)
1c008a6c:	7a010113          	addi	sp,sp,1952
1c008a70:	8082                	ret

1c008a72 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c008a72:	7139                	addi	sp,sp,-64
1c008a74:	87b2                	mv	a5,a2
1c008a76:	da26                	sw	s1,52(sp)
1c008a78:	d84a                	sw	s2,48(sp)
1c008a7a:	84aa                	mv	s1,a0
1c008a7c:	892e                	mv	s2,a1
1c008a7e:	02000613          	li	a2,32
1c008a82:	85be                	mv	a1,a5
1c008a84:	0068                	addi	a0,sp,12
1c008a86:	de06                	sw	ra,60(sp)
1c008a88:	dc22                	sw	s0,56(sp)
1c008a8a:	8436                	mv	s0,a3
1c008a8c:	20e1                	jal	1c008b54 <memcpy>
1c008a8e:	0070                	addi	a2,sp,12
1c008a90:	85ca                	mv	a1,s2
1c008a92:	8526                	mv	a0,s1
1c008a94:	02100693          	li	a3,33
1c008a98:	02810623          	sb	s0,44(sp)
1c008a9c:	3eed                	jal	1c008696 <shake256>
1c008a9e:	50f2                	lw	ra,60(sp)
1c008aa0:	5462                	lw	s0,56(sp)
1c008aa2:	54d2                	lw	s1,52(sp)
1c008aa4:	5942                	lw	s2,48(sp)
1c008aa6:	6121                	addi	sp,sp,64
1c008aa8:	8082                	ret

1c008aaa <pos_wait_forever>:
1c008aaa:	f14027f3          	csrr	a5,mhartid
1c008aae:	8795                	srai	a5,a5,0x5
1c008ab0:	03f7f793          	andi	a5,a5,63
1c008ab4:	477d                	li	a4,31
1c008ab6:	00e78363          	beq	a5,a4,1c008abc <pos_wait_forever+0x12>
1c008aba:	a001                	j	1c008aba <pos_wait_forever+0x10>
1c008abc:	1a10a7b7          	lui	a5,0x1a10a
1c008ac0:	577d                	li	a4,-1
1c008ac2:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008ac6:	10500073          	wfi
1c008aca:	10500073          	wfi
1c008ace:	bfe5                	j	1c008ac6 <pos_wait_forever+0x1c>

1c008ad0 <memset>:
1c008ad0:	fff60e13          	addi	t3,a2,-1
1c008ad4:	ce25                	beqz	a2,1c008b4c <memset+0x7c>
1c008ad6:	4789                	li	a5,2
1c008ad8:	0ff5f593          	andi	a1,a1,255
1c008adc:	07c7fa63          	bgeu	a5,t3,1c008b50 <memset+0x80>
1c008ae0:	00859793          	slli	a5,a1,0x8
1c008ae4:	8fcd                	or	a5,a5,a1
1c008ae6:	01059713          	slli	a4,a1,0x10
1c008aea:	8f5d                	or	a4,a4,a5
1c008aec:	01859693          	slli	a3,a1,0x18
1c008af0:	8ed9                	or	a3,a3,a4
1c008af2:	0086d313          	srli	t1,a3,0x8
1c008af6:	0106d893          	srli	a7,a3,0x10
1c008afa:	ffc67813          	andi	a6,a2,-4
1c008afe:	87aa                	mv	a5,a0
1c008b00:	982a                	add	a6,a6,a0
1c008b02:	0ff77713          	andi	a4,a4,255
1c008b06:	82e1                	srli	a3,a3,0x18
1c008b08:	0ff37313          	andi	t1,t1,255
1c008b0c:	0ff8f893          	andi	a7,a7,255
1c008b10:	00e78023          	sb	a4,0(a5)
1c008b14:	006780a3          	sb	t1,1(a5)
1c008b18:	01178123          	sb	a7,2(a5)
1c008b1c:	00d781a3          	sb	a3,3(a5)
1c008b20:	0791                	addi	a5,a5,4
1c008b22:	ff0797e3          	bne	a5,a6,1c008b10 <memset+0x40>
1c008b26:	ffc67793          	andi	a5,a2,-4
1c008b2a:	00f50733          	add	a4,a0,a5
1c008b2e:	40fe0e33          	sub	t3,t3,a5
1c008b32:	00f60e63          	beq	a2,a5,1c008b4e <memset+0x7e>
1c008b36:	00b70023          	sb	a1,0(a4)
1c008b3a:	000e0963          	beqz	t3,1c008b4c <memset+0x7c>
1c008b3e:	00b700a3          	sb	a1,1(a4)
1c008b42:	4785                	li	a5,1
1c008b44:	00fe0463          	beq	t3,a5,1c008b4c <memset+0x7c>
1c008b48:	00b70123          	sb	a1,2(a4)
1c008b4c:	8082                	ret
1c008b4e:	8082                	ret
1c008b50:	872a                	mv	a4,a0
1c008b52:	b7d5                	j	1c008b36 <memset+0x66>

1c008b54 <memcpy>:
1c008b54:	00c5e7b3          	or	a5,a1,a2
1c008b58:	8fc9                	or	a5,a5,a0
1c008b5a:	8b8d                	andi	a5,a5,3
1c008b5c:	872e                	mv	a4,a1
1c008b5e:	882a                	mv	a6,a0
1c008b60:	cbc5                	beqz	a5,1c008c10 <memcpy+0xbc>
1c008b62:	c279                	beqz	a2,1c008c28 <memcpy+0xd4>
1c008b64:	00350793          	addi	a5,a0,3
1c008b68:	8f8d                	sub	a5,a5,a1
1c008b6a:	0077b793          	sltiu	a5,a5,7
1c008b6e:	e7d1                	bnez	a5,1c008bfa <memcpy+0xa6>
1c008b70:	fff60793          	addi	a5,a2,-1
1c008b74:	0047b793          	sltiu	a5,a5,4
1c008b78:	e3c9                	bnez	a5,1c008bfa <memcpy+0xa6>
1c008b7a:	ffc67e13          	andi	t3,a2,-4
1c008b7e:	9e2e                	add	t3,t3,a1
1c008b80:	00174883          	lbu	a7,1(a4)
1c008b84:	00074303          	lbu	t1,0(a4)
1c008b88:	00274683          	lbu	a3,2(a4)
1c008b8c:	00374783          	lbu	a5,3(a4)
1c008b90:	08a2                	slli	a7,a7,0x8
1c008b92:	0068e8b3          	or	a7,a7,t1
1c008b96:	06c2                	slli	a3,a3,0x10
1c008b98:	0116e6b3          	or	a3,a3,a7
1c008b9c:	07e2                	slli	a5,a5,0x18
1c008b9e:	8fd5                	or	a5,a5,a3
1c008ba0:	0087d313          	srli	t1,a5,0x8
1c008ba4:	0107d893          	srli	a7,a5,0x10
1c008ba8:	83e1                	srli	a5,a5,0x18
1c008baa:	00d80023          	sb	a3,0(a6) # ff010000 <__l2_shared_end+0xe3000000>
1c008bae:	006800a3          	sb	t1,1(a6)
1c008bb2:	01180123          	sb	a7,2(a6)
1c008bb6:	00f801a3          	sb	a5,3(a6)
1c008bba:	0711                	addi	a4,a4,4
1c008bbc:	0811                	addi	a6,a6,4
1c008bbe:	fdc711e3          	bne	a4,t3,1c008b80 <memcpy+0x2c>
1c008bc2:	ffc67793          	andi	a5,a2,-4
1c008bc6:	00367693          	andi	a3,a2,3
1c008bca:	00f50733          	add	a4,a0,a5
1c008bce:	95be                	add	a1,a1,a5
1c008bd0:	02f60f63          	beq	a2,a5,1c008c0e <memcpy+0xba>
1c008bd4:	0005c603          	lbu	a2,0(a1)
1c008bd8:	fff68793          	addi	a5,a3,-1
1c008bdc:	00c70023          	sb	a2,0(a4)
1c008be0:	c79d                	beqz	a5,1c008c0e <memcpy+0xba>
1c008be2:	0015c603          	lbu	a2,1(a1)
1c008be6:	4789                	li	a5,2
1c008be8:	00c700a3          	sb	a2,1(a4)
1c008bec:	02f68163          	beq	a3,a5,1c008c0e <memcpy+0xba>
1c008bf0:	0025c783          	lbu	a5,2(a1)
1c008bf4:	00f70123          	sb	a5,2(a4)
1c008bf8:	8082                	ret
1c008bfa:	962e                	add	a2,a2,a1
1c008bfc:	87aa                	mv	a5,a0
1c008bfe:	0005c703          	lbu	a4,0(a1)
1c008c02:	0585                	addi	a1,a1,1
1c008c04:	0785                	addi	a5,a5,1
1c008c06:	fee78fa3          	sb	a4,-1(a5)
1c008c0a:	fec59ae3          	bne	a1,a2,1c008bfe <memcpy+0xaa>
1c008c0e:	8082                	ret
1c008c10:	de7d                	beqz	a2,1c008c0e <memcpy+0xba>
1c008c12:	87aa                	mv	a5,a0
1c008c14:	4194                	lw	a3,0(a1)
1c008c16:	0791                	addi	a5,a5,4
1c008c18:	40c78733          	sub	a4,a5,a2
1c008c1c:	fed7ae23          	sw	a3,-4(a5)
1c008c20:	0591                	addi	a1,a1,4
1c008c22:	fea719e3          	bne	a4,a0,1c008c14 <memcpy+0xc0>
1c008c26:	8082                	ret
1c008c28:	8082                	ret

1c008c2a <memmove>:
1c008c2a:	40b507b3          	sub	a5,a0,a1
1c008c2e:	0ac7e063          	bltu	a5,a2,1c008cce <memmove+0xa4>
1c008c32:	c661                	beqz	a2,1c008cfa <memmove+0xd0>
1c008c34:	00350793          	addi	a5,a0,3
1c008c38:	8f8d                	sub	a5,a5,a1
1c008c3a:	0077b793          	sltiu	a5,a5,7
1c008c3e:	e3dd                	bnez	a5,1c008ce4 <memmove+0xba>
1c008c40:	fff60793          	addi	a5,a2,-1
1c008c44:	0047b793          	sltiu	a5,a5,4
1c008c48:	efd1                	bnez	a5,1c008ce4 <memmove+0xba>
1c008c4a:	ffc67e13          	andi	t3,a2,-4
1c008c4e:	872e                	mv	a4,a1
1c008c50:	882a                	mv	a6,a0
1c008c52:	9e2e                	add	t3,t3,a1
1c008c54:	00174883          	lbu	a7,1(a4)
1c008c58:	00074303          	lbu	t1,0(a4)
1c008c5c:	00274683          	lbu	a3,2(a4)
1c008c60:	00374783          	lbu	a5,3(a4)
1c008c64:	08a2                	slli	a7,a7,0x8
1c008c66:	0068e8b3          	or	a7,a7,t1
1c008c6a:	06c2                	slli	a3,a3,0x10
1c008c6c:	0116e6b3          	or	a3,a3,a7
1c008c70:	07e2                	slli	a5,a5,0x18
1c008c72:	8fd5                	or	a5,a5,a3
1c008c74:	0087d313          	srli	t1,a5,0x8
1c008c78:	0107d893          	srli	a7,a5,0x10
1c008c7c:	83e1                	srli	a5,a5,0x18
1c008c7e:	00d80023          	sb	a3,0(a6)
1c008c82:	006800a3          	sb	t1,1(a6)
1c008c86:	01180123          	sb	a7,2(a6)
1c008c8a:	00f801a3          	sb	a5,3(a6)
1c008c8e:	0711                	addi	a4,a4,4
1c008c90:	0811                	addi	a6,a6,4
1c008c92:	fdc711e3          	bne	a4,t3,1c008c54 <memmove+0x2a>
1c008c96:	ffc67793          	andi	a5,a2,-4
1c008c9a:	00367693          	andi	a3,a2,3
1c008c9e:	00f50733          	add	a4,a0,a5
1c008ca2:	95be                	add	a1,a1,a5
1c008ca4:	04f60a63          	beq	a2,a5,1c008cf8 <memmove+0xce>
1c008ca8:	0005c603          	lbu	a2,0(a1)
1c008cac:	fff68793          	addi	a5,a3,-1
1c008cb0:	00c70023          	sb	a2,0(a4)
1c008cb4:	c3b1                	beqz	a5,1c008cf8 <memmove+0xce>
1c008cb6:	0015c603          	lbu	a2,1(a1)
1c008cba:	4789                	li	a5,2
1c008cbc:	00c700a3          	sb	a2,1(a4)
1c008cc0:	02f68c63          	beq	a3,a5,1c008cf8 <memmove+0xce>
1c008cc4:	0025c783          	lbu	a5,2(a1)
1c008cc8:	00f70123          	sb	a5,2(a4)
1c008ccc:	8082                	ret
1c008cce:	167d                	addi	a2,a2,-1
1c008cd0:	00c587b3          	add	a5,a1,a2
1c008cd4:	0007c703          	lbu	a4,0(a5)
1c008cd8:	00c507b3          	add	a5,a0,a2
1c008cdc:	00e78023          	sb	a4,0(a5)
1c008ce0:	f67d                	bnez	a2,1c008cce <memmove+0xa4>
1c008ce2:	8082                	ret
1c008ce4:	962a                	add	a2,a2,a0
1c008ce6:	87aa                	mv	a5,a0
1c008ce8:	0005c703          	lbu	a4,0(a1)
1c008cec:	0785                	addi	a5,a5,1
1c008cee:	0585                	addi	a1,a1,1
1c008cf0:	fee78fa3          	sb	a4,-1(a5)
1c008cf4:	fec79ae3          	bne	a5,a2,1c008ce8 <memmove+0xbe>
1c008cf8:	8082                	ret
1c008cfa:	8082                	ret

1c008cfc <strchr>:
1c008cfc:	00054703          	lbu	a4,0(a0)
1c008d00:	0ff5f593          	andi	a1,a1,255
1c008d04:	87aa                	mv	a5,a0
1c008d06:	00b70863          	beq	a4,a1,1c008d16 <strchr+0x1a>
1c008d0a:	cb01                	beqz	a4,1c008d1a <strchr+0x1e>
1c008d0c:	0017c703          	lbu	a4,1(a5)
1c008d10:	0785                	addi	a5,a5,1
1c008d12:	feb71ce3          	bne	a4,a1,1c008d0a <strchr+0xe>
1c008d16:	853e                	mv	a0,a5
1c008d18:	8082                	ret
1c008d1a:	4501                	li	a0,0
1c008d1c:	dded                	beqz	a1,1c008d16 <strchr+0x1a>
1c008d1e:	8082                	ret

1c008d20 <puts>:
1c008d20:	00054783          	lbu	a5,0(a0)
1c008d24:	c78d                	beqz	a5,1c008d4e <puts+0x2e>
1c008d26:	f14026f3          	csrr	a3,mhartid
1c008d2a:	00369713          	slli	a4,a3,0x3
1c008d2e:	1a10f637          	lui	a2,0x1a10f
1c008d32:	0ff77713          	andi	a4,a4,255
1c008d36:	9732                	add	a4,a4,a2
1c008d38:	6609                	lui	a2,0x2
1c008d3a:	068a                	slli	a3,a3,0x2
1c008d3c:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d40:	8ef1                	and	a3,a3,a2
1c008d42:	9736                	add	a4,a4,a3
1c008d44:	c31c                	sw	a5,0(a4)
1c008d46:	00154783          	lbu	a5,1(a0)
1c008d4a:	0505                	addi	a0,a0,1
1c008d4c:	ffe5                	bnez	a5,1c008d44 <puts+0x24>
1c008d4e:	f1402773          	csrr	a4,mhartid
1c008d52:	00371793          	slli	a5,a4,0x3
1c008d56:	1a10f6b7          	lui	a3,0x1a10f
1c008d5a:	0ff7f793          	andi	a5,a5,255
1c008d5e:	97b6                	add	a5,a5,a3
1c008d60:	6689                	lui	a3,0x2
1c008d62:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d66:	070a                	slli	a4,a4,0x2
1c008d68:	8f75                	and	a4,a4,a3
1c008d6a:	97ba                	add	a5,a5,a4
1c008d6c:	4729                	li	a4,10
1c008d6e:	c398                	sw	a4,0(a5)
1c008d70:	4501                	li	a0,0
1c008d72:	8082                	ret

1c008d74 <pos_libc_fputc_locked>:
1c008d74:	6689                	lui	a3,0x2
1c008d76:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008d7a:	f14027f3          	csrr	a5,mhartid
1c008d7e:	00379713          	slli	a4,a5,0x3
1c008d82:	078a                	slli	a5,a5,0x2
1c008d84:	8ff5                	and	a5,a5,a3
1c008d86:	0ff77713          	andi	a4,a4,255
1c008d8a:	1a10f6b7          	lui	a3,0x1a10f
1c008d8e:	9736                	add	a4,a4,a3
1c008d90:	97ba                	add	a5,a5,a4
1c008d92:	0ff57513          	andi	a0,a0,255
1c008d96:	c388                	sw	a0,0(a5)
1c008d98:	4501                	li	a0,0
1c008d9a:	8082                	ret

1c008d9c <pos_libc_prf_locked>:
1c008d9c:	a0b1                	j	1c008de8 <pos_libc_prf>

1c008d9e <exit>:
1c008d9e:	800007b7          	lui	a5,0x80000
1c008da2:	1141                	addi	sp,sp,-16
1c008da4:	8d5d                	or	a0,a0,a5
1c008da6:	c606                	sw	ra,12(sp)
1c008da8:	1a1047b7          	lui	a5,0x1a104
1c008dac:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008db0:	39ed                	jal	1c008aaa <pos_wait_forever>

1c008db2 <pos_io_start>:
1c008db2:	4501                	li	a0,0
1c008db4:	8082                	ret

1c008db6 <pos_io_stop>:
1c008db6:	4501                	li	a0,0
1c008db8:	8082                	ret

1c008dba <printf>:
1c008dba:	7139                	addi	sp,sp,-64
1c008dbc:	02410313          	addi	t1,sp,36
1c008dc0:	d432                	sw	a2,40(sp)
1c008dc2:	862a                	mv	a2,a0
1c008dc4:	1c009537          	lui	a0,0x1c009
1c008dc8:	d22e                	sw	a1,36(sp)
1c008dca:	d636                	sw	a3,44(sp)
1c008dcc:	4589                	li	a1,2
1c008dce:	869a                	mv	a3,t1
1c008dd0:	d7450513          	addi	a0,a0,-652 # 1c008d74 <pos_libc_fputc_locked>
1c008dd4:	ce06                	sw	ra,28(sp)
1c008dd6:	d83a                	sw	a4,48(sp)
1c008dd8:	da3e                	sw	a5,52(sp)
1c008dda:	dc42                	sw	a6,56(sp)
1c008ddc:	de46                	sw	a7,60(sp)
1c008dde:	c61a                	sw	t1,12(sp)
1c008de0:	3f75                	jal	1c008d9c <pos_libc_prf_locked>
1c008de2:	40f2                	lw	ra,28(sp)
1c008de4:	6121                	addi	sp,sp,64
1c008de6:	8082                	ret

1c008de8 <pos_libc_prf>:
1c008de8:	7169                	addi	sp,sp,-304
1c008dea:	12112623          	sw	ra,300(sp)
1c008dee:	12812423          	sw	s0,296(sp)
1c008df2:	12912223          	sw	s1,292(sp)
1c008df6:	13212023          	sw	s2,288(sp)
1c008dfa:	11312e23          	sw	s3,284(sp)
1c008dfe:	11412c23          	sw	s4,280(sp)
1c008e02:	11512a23          	sw	s5,276(sp)
1c008e06:	11612823          	sw	s6,272(sp)
1c008e0a:	11712623          	sw	s7,268(sp)
1c008e0e:	11812423          	sw	s8,264(sp)
1c008e12:	11912223          	sw	s9,260(sp)
1c008e16:	11a12023          	sw	s10,256(sp)
1c008e1a:	dfee                	sw	s11,252(sp)
1c008e1c:	00064783          	lbu	a5,0(a2)
1c008e20:	c636                	sw	a3,12(sp)
1c008e22:	3c0781e3          	beqz	a5,1c0099e4 <pos_libc_prf+0xbfc>
1c008e26:	7741                	lui	a4,0xffff0
1c008e28:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c008e2c:	cc3a                	sw	a4,24(sp)
1c008e2e:	10000737          	lui	a4,0x10000
1c008e32:	177d                	addi	a4,a4,-1
1c008e34:	8caa                	mv	s9,a0
1c008e36:	84ae                	mv	s1,a1
1c008e38:	00160c13          	addi	s8,a2,1
1c008e3c:	4401                	li	s0,0
1c008e3e:	1c000d37          	lui	s10,0x1c000
1c008e42:	ca3a                	sw	a4,20(sp)
1c008e44:	853e                	mv	a0,a5
1c008e46:	02500793          	li	a5,37
1c008e4a:	04f50863          	beq	a0,a5,1c008e9a <pos_libc_prf+0xb2>
1c008e4e:	85a6                	mv	a1,s1
1c008e50:	9c82                	jalr	s9
1c008e52:	57fd                	li	a5,-1
1c008e54:	4cf50b63          	beq	a0,a5,1c00932a <pos_libc_prf+0x542>
1c008e58:	0405                	addi	s0,s0,1
1c008e5a:	000c4503          	lbu	a0,0(s8)
1c008e5e:	0c05                	addi	s8,s8,1
1c008e60:	f17d                	bnez	a0,1c008e46 <pos_libc_prf+0x5e>
1c008e62:	12c12083          	lw	ra,300(sp)
1c008e66:	8522                	mv	a0,s0
1c008e68:	12812403          	lw	s0,296(sp)
1c008e6c:	12412483          	lw	s1,292(sp)
1c008e70:	12012903          	lw	s2,288(sp)
1c008e74:	11c12983          	lw	s3,284(sp)
1c008e78:	11812a03          	lw	s4,280(sp)
1c008e7c:	11412a83          	lw	s5,276(sp)
1c008e80:	11012b03          	lw	s6,272(sp)
1c008e84:	10c12b83          	lw	s7,268(sp)
1c008e88:	10812c03          	lw	s8,264(sp)
1c008e8c:	10412c83          	lw	s9,260(sp)
1c008e90:	10012d03          	lw	s10,256(sp)
1c008e94:	5dfe                	lw	s11,252(sp)
1c008e96:	6155                	addi	sp,sp,304
1c008e98:	8082                	ret
1c008e9a:	8de2                	mv	s11,s8
1c008e9c:	000dcc03          	lbu	s8,0(s11)
1c008ea0:	204d0513          	addi	a0,s10,516 # 1c000204 <__clz_tab+0x1e8>
1c008ea4:	c826                	sw	s1,16(sp)
1c008ea6:	85e2                	mv	a1,s8
1c008ea8:	c202                	sw	zero,4(sp)
1c008eaa:	c402                	sw	zero,8(sp)
1c008eac:	c002                	sw	zero,0(sp)
1c008eae:	001d8493          	addi	s1,s11,1
1c008eb2:	35a9                	jal	1c008cfc <strchr>
1c008eb4:	02000913          	li	s2,32
1c008eb8:	4b81                	li	s7,0
1c008eba:	02b00993          	li	s3,43
1c008ebe:	02d00b13          	li	s6,45
1c008ec2:	03000a93          	li	s5,48
1c008ec6:	02000a13          	li	s4,32
1c008eca:	8626                	mv	a2,s1
1c008ecc:	c51d                	beqz	a0,1c008efa <pos_libc_prf+0x112>
1c008ece:	413c0e63          	beq	s8,s3,1c0092ea <pos_libc_prf+0x502>
1c008ed2:	3f89ec63          	bltu	s3,s8,1c0092ca <pos_libc_prf+0x4e2>
1c008ed6:	414c0663          	beq	s8,s4,1c0092e2 <pos_libc_prf+0x4fa>
1c008eda:	02300793          	li	a5,35
1c008ede:	3efc1363          	bne	s8,a5,1c0092c4 <pos_libc_prf+0x4dc>
1c008ee2:	4b85                	li	s7,1
1c008ee4:	8da6                	mv	s11,s1
1c008ee6:	000dcc03          	lbu	s8,0(s11)
1c008eea:	204d0513          	addi	a0,s10,516
1c008eee:	001d8493          	addi	s1,s11,1
1c008ef2:	85e2                	mv	a1,s8
1c008ef4:	3521                	jal	1c008cfc <strchr>
1c008ef6:	8626                	mv	a2,s1
1c008ef8:	f979                	bnez	a0,1c008ece <pos_libc_prf+0xe6>
1c008efa:	87e2                	mv	a5,s8
1c008efc:	ce5e                	sw	s7,28(sp)
1c008efe:	02a00693          	li	a3,42
1c008f02:	8c6e                	mv	s8,s11
1c008f04:	8ba6                	mv	s7,s1
1c008f06:	8dbe                	mv	s11,a5
1c008f08:	44c2                	lw	s1,16(sp)
1c008f0a:	42d78263          	beq	a5,a3,1c00932e <pos_libc_prf+0x546>
1c008f0e:	fd078693          	addi	a3,a5,-48
1c008f12:	4525                	li	a0,9
1c008f14:	4a01                	li	s4,0
1c008f16:	3cd57f63          	bgeu	a0,a3,1c0092f4 <pos_libc_prf+0x50c>
1c008f1a:	02e00793          	li	a5,46
1c008f1e:	5afd                	li	s5,-1
1c008f20:	74fd8363          	beq	s11,a5,1c009666 <pos_libc_prf+0x87e>
1c008f24:	1c0007b7          	lui	a5,0x1c000
1c008f28:	85ee                	mv	a1,s11
1c008f2a:	20c78513          	addi	a0,a5,524 # 1c00020c <__clz_tab+0x1f0>
1c008f2e:	c832                	sw	a2,16(sp)
1c008f30:	33f1                	jal	1c008cfc <strchr>
1c008f32:	4642                	lw	a2,16(sp)
1c008f34:	8c32                	mv	s8,a2
1c008f36:	c509                	beqz	a0,1c008f40 <pos_libc_prf+0x158>
1c008f38:	00064d83          	lbu	s11,0(a2)
1c008f3c:	00160c13          	addi	s8,a2,1
1c008f40:	06900793          	li	a5,105
1c008f44:	0afd8ee3          	beq	s11,a5,1c009800 <pos_libc_prf+0xa18>
1c008f48:	4db7c763          	blt	a5,s11,1c009416 <pos_libc_prf+0x62e>
1c008f4c:	05800793          	li	a5,88
1c008f50:	4efd8163          	beq	s11,a5,1c009432 <pos_libc_prf+0x64a>
1c008f54:	41b7c163          	blt	a5,s11,1c009356 <pos_libc_prf+0x56e>
1c008f58:	02500793          	li	a5,37
1c008f5c:	26fd8ae3          	beq	s11,a5,1c0099d0 <pos_libc_prf+0xbe8>
1c008f60:	3fb7d863          	bge	a5,s11,1c009350 <pos_libc_prf+0x568>
1c008f64:	fbbd8793          	addi	a5,s11,-69
1c008f68:	4689                	li	a3,2
1c008f6a:	eef6e8e3          	bltu	a3,a5,1c008e5a <pos_libc_prf+0x72>
1c008f6e:	47b2                	lw	a5,12(sp)
1c008f70:	7ff00893          	li	a7,2047
1c008f74:	00778b13          	addi	s6,a5,7
1c008f78:	ff8b7b13          	andi	s6,s6,-8
1c008f7c:	004b2783          	lw	a5,4(s6) # ff010004 <__l2_shared_end+0xe3000004>
1c008f80:	000b2603          	lw	a2,0(s6)
1c008f84:	0b21                	addi	s6,s6,8
1c008f86:	00b79693          	slli	a3,a5,0xb
1c008f8a:	01565513          	srli	a0,a2,0x15
1c008f8e:	8ec9                	or	a3,a3,a0
1c008f90:	0147d813          	srli	a6,a5,0x14
1c008f94:	0686                	slli	a3,a3,0x1
1c008f96:	7ff87813          	andi	a6,a6,2047
1c008f9a:	0016d513          	srli	a0,a3,0x1
1c008f9e:	00b61313          	slli	t1,a2,0xb
1c008fa2:	86be                	mv	a3,a5
1c008fa4:	41180263          	beq	a6,a7,1c0093a8 <pos_libc_prf+0x5c0>
1c008fa8:	04600793          	li	a5,70
1c008fac:	00fd9463          	bne	s11,a5,1c008fb4 <pos_libc_prf+0x1cc>
1c008fb0:	06600d93          	li	s11,102
1c008fb4:	006867b3          	or	a5,a6,t1
1c008fb8:	00a7e8b3          	or	a7,a5,a0
1c008fbc:	862a                	mv	a2,a0
1c008fbe:	340885e3          	beqz	a7,1c009b08 <pos_libc_prf+0xd20>
1c008fc2:	80000637          	lui	a2,0x80000
1c008fc6:	c0280813          	addi	a6,a6,-1022
1c008fca:	879a                	mv	a5,t1
1c008fcc:	8e49                	or	a2,a2,a0
1c008fce:	4606c7e3          	bltz	a3,1c009c3c <pos_libc_prf+0xe54>
1c008fd2:	4722                	lw	a4,8(sp)
1c008fd4:	480708e3          	beqz	a4,1c009c64 <pos_libc_prf+0xe7c>
1c008fd8:	02b00693          	li	a3,43
1c008fdc:	02d10223          	sb	a3,36(sp)
1c008fe0:	02510f13          	addi	t5,sp,37
1c008fe4:	56f9                	li	a3,-2
1c008fe6:	4301                	li	t1,0
1c008fe8:	06d85663          	bge	a6,a3,1c009054 <pos_libc_prf+0x26c>
1c008fec:	333338b7          	lui	a7,0x33333
1c008ff0:	80000e37          	lui	t3,0x80000
1c008ff4:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c008ff8:	fffe4e13          	not	t3,t3
1c008ffc:	5ef9                	li	t4,-2
1c008ffe:	01f61593          	slli	a1,a2,0x1f
1c009002:	0017d693          	srli	a3,a5,0x1
1c009006:	0017f713          	andi	a4,a5,1
1c00900a:	8ecd                	or	a3,a3,a1
1c00900c:	00d707b3          	add	a5,a4,a3
1c009010:	00e7b733          	sltu	a4,a5,a4
1c009014:	8205                	srli	a2,a2,0x1
1c009016:	963a                	add	a2,a2,a4
1c009018:	8742                	mv	a4,a6
1c00901a:	0805                	addi	a6,a6,1
1c00901c:	fec8e1e3          	bltu	a7,a2,1c008ffe <pos_libc_prf+0x216>
1c009020:	00279593          	slli	a1,a5,0x2
1c009024:	01e7d513          	srli	a0,a5,0x1e
1c009028:	00261693          	slli	a3,a2,0x2
1c00902c:	97ae                	add	a5,a5,a1
1c00902e:	8ec9                	or	a3,a3,a0
1c009030:	9636                	add	a2,a2,a3
1c009032:	00b7b5b3          	sltu	a1,a5,a1
1c009036:	962e                	add	a2,a2,a1
1c009038:	01f7d693          	srli	a3,a5,0x1f
1c00903c:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c009040:	137d                	addi	t1,t1,-1
1c009042:	01c61763          	bne	a2,t3,1c009050 <pos_libc_prf+0x268>
1c009046:	00170813          	addi	a6,a4,1
1c00904a:	0786                	slli	a5,a5,0x1
1c00904c:	ffe6e613          	ori	a2,a3,-2
1c009050:	fbd847e3          	blt	a6,t4,1c008ffe <pos_libc_prf+0x216>
1c009054:	07005363          	blez	a6,1c0090ba <pos_libc_prf+0x2d2>
1c009058:	800008b7          	lui	a7,0x80000
1c00905c:	4e15                	li	t3,5
1c00905e:	fff8c893          	not	a7,a7
1c009062:	00278693          	addi	a3,a5,2
1c009066:	00f6b7b3          	sltu	a5,a3,a5
1c00906a:	963e                	add	a2,a2,a5
1c00906c:	03c657b3          	divu	a5,a2,t3
1c009070:	0036d713          	srli	a4,a3,0x3
1c009074:	187d                	addi	a6,a6,-1
1c009076:	0305                	addi	t1,t1,1
1c009078:	00279593          	slli	a1,a5,0x2
1c00907c:	95be                	add	a1,a1,a5
1c00907e:	8e0d                	sub	a2,a2,a1
1c009080:	0676                	slli	a2,a2,0x1d
1c009082:	8f51                	or	a4,a4,a2
1c009084:	03c75633          	divu	a2,a4,t3
1c009088:	00361713          	slli	a4,a2,0x3
1c00908c:	00561593          	slli	a1,a2,0x5
1c009090:	95ba                	add	a1,a1,a4
1c009092:	8e8d                	sub	a3,a3,a1
1c009094:	03c6d6b3          	divu	a3,a3,t3
1c009098:	8275                	srli	a2,a2,0x1d
1c00909a:	963e                	add	a2,a2,a5
1c00909c:	00e687b3          	add	a5,a3,a4
1c0090a0:	00d7b6b3          	sltu	a3,a5,a3
1c0090a4:	9636                	add	a2,a2,a3
1c0090a6:	01f7d713          	srli	a4,a5,0x1f
1c0090aa:	0606                	slli	a2,a2,0x1
1c0090ac:	8e59                	or	a2,a2,a4
1c0090ae:	0786                	slli	a5,a5,0x1
1c0090b0:	187d                	addi	a6,a6,-1
1c0090b2:	fec8fae3          	bgeu	a7,a2,1c0090a6 <pos_libc_prf+0x2be>
1c0090b6:	fb0046e3          	bgtz	a6,1c009062 <pos_libc_prf+0x27a>
1c0090ba:	4e11                	li	t3,4
1c0090bc:	01f61693          	slli	a3,a2,0x1f
1c0090c0:	0017d713          	srli	a4,a5,0x1
1c0090c4:	8f55                	or	a4,a4,a3
1c0090c6:	8b85                	andi	a5,a5,1
1c0090c8:	00e78533          	add	a0,a5,a4
1c0090cc:	8205                	srli	a2,a2,0x1
1c0090ce:	00f537b3          	sltu	a5,a0,a5
1c0090d2:	00c788b3          	add	a7,a5,a2
1c0090d6:	0805                	addi	a6,a6,1
1c0090d8:	87aa                	mv	a5,a0
1c0090da:	8646                	mv	a2,a7
1c0090dc:	ffc810e3          	bne	a6,t3,1c0090bc <pos_libc_prf+0x2d4>
1c0090e0:	06700793          	li	a5,103
1c0090e4:	2a0acee3          	bltz	s5,1c009ba0 <pos_libc_prf+0xdb8>
1c0090e8:	28fd83e3          	beq	s11,a5,1c009b6e <pos_libc_prf+0xd86>
1c0090ec:	04700793          	li	a5,71
1c0090f0:	26fd8fe3          	beq	s11,a5,1c009b6e <pos_libc_prf+0xd86>
1c0090f4:	06600793          	li	a5,102
1c0090f8:	2cfd85e3          	beq	s11,a5,1c009bc2 <pos_libc_prf+0xdda>
1c0090fc:	001a8813          	addi	a6,s5,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c009100:	47c1                	li	a5,16
1c009102:	0107d363          	bge	a5,a6,1c009108 <pos_libc_prf+0x320>
1c009106:	4841                	li	a6,16
1c009108:	187d                	addi	a6,a6,-1
1c00910a:	4601                	li	a2,0
1c00910c:	4781                	li	a5,0
1c00910e:	080006b7          	lui	a3,0x8000
1c009112:	4e15                	li	t3,5
1c009114:	5efd                	li	t4,-1
1c009116:	00278713          	addi	a4,a5,2
1c00911a:	00f737b3          	sltu	a5,a4,a5
1c00911e:	97b6                	add	a5,a5,a3
1c009120:	03c7dfb3          	divu	t6,a5,t3
1c009124:	00375593          	srli	a1,a4,0x3
1c009128:	187d                	addi	a6,a6,-1
1c00912a:	002f9693          	slli	a3,t6,0x2
1c00912e:	96fe                	add	a3,a3,t6
1c009130:	8f95                	sub	a5,a5,a3
1c009132:	07f6                	slli	a5,a5,0x1d
1c009134:	8ddd                	or	a1,a1,a5
1c009136:	03c5d5b3          	divu	a1,a1,t3
1c00913a:	00359693          	slli	a3,a1,0x3
1c00913e:	00559793          	slli	a5,a1,0x5
1c009142:	97b6                	add	a5,a5,a3
1c009144:	8f1d                	sub	a4,a4,a5
1c009146:	03c757b3          	divu	a5,a4,t3
1c00914a:	81f5                	srli	a1,a1,0x1d
1c00914c:	95fe                	add	a1,a1,t6
1c00914e:	96be                	add	a3,a3,a5
1c009150:	00f6b733          	sltu	a4,a3,a5
1c009154:	972e                	add	a4,a4,a1
1c009156:	01f71593          	slli	a1,a4,0x1f
1c00915a:	0016d793          	srli	a5,a3,0x1
1c00915e:	8fcd                	or	a5,a5,a1
1c009160:	8a85                	andi	a3,a3,1
1c009162:	97b6                	add	a5,a5,a3
1c009164:	8305                	srli	a4,a4,0x1
1c009166:	00d7b6b3          	sltu	a3,a5,a3
1c00916a:	96ba                	add	a3,a3,a4
1c00916c:	fbd815e3          	bne	a6,t4,1c009116 <pos_libc_prf+0x32e>
1c009170:	97aa                	add	a5,a5,a0
1c009172:	96c6                	add	a3,a3,a7
1c009174:	00a7b533          	sltu	a0,a5,a0
1c009178:	00d508b3          	add	a7,a0,a3
1c00917c:	f00006b7          	lui	a3,0xf0000
1c009180:	0116f6b3          	and	a3,a3,a7
1c009184:	c2b5                	beqz	a3,1c0091e8 <pos_libc_prf+0x400>
1c009186:	00278813          	addi	a6,a5,2
1c00918a:	00f836b3          	sltu	a3,a6,a5
1c00918e:	98b6                	add	a7,a7,a3
1c009190:	4e95                	li	t4,5
1c009192:	03d8de33          	divu	t3,a7,t4
1c009196:	00385693          	srli	a3,a6,0x3
1c00919a:	0305                	addi	t1,t1,1
1c00919c:	002e1513          	slli	a0,t3,0x2
1c0091a0:	9572                	add	a0,a0,t3
1c0091a2:	40a888b3          	sub	a7,a7,a0
1c0091a6:	01d89513          	slli	a0,a7,0x1d
1c0091aa:	8ec9                	or	a3,a3,a0
1c0091ac:	03d6d6b3          	divu	a3,a3,t4
1c0091b0:	00369513          	slli	a0,a3,0x3
1c0091b4:	00569793          	slli	a5,a3,0x5
1c0091b8:	97aa                	add	a5,a5,a0
1c0091ba:	40f807b3          	sub	a5,a6,a5
1c0091be:	03d7d7b3          	divu	a5,a5,t4
1c0091c2:	82f5                	srli	a3,a3,0x1d
1c0091c4:	96f2                	add	a3,a3,t3
1c0091c6:	953e                	add	a0,a0,a5
1c0091c8:	00f537b3          	sltu	a5,a0,a5
1c0091cc:	96be                	add	a3,a3,a5
1c0091ce:	01f69813          	slli	a6,a3,0x1f
1c0091d2:	00155793          	srli	a5,a0,0x1
1c0091d6:	00f867b3          	or	a5,a6,a5
1c0091da:	8905                	andi	a0,a0,1
1c0091dc:	97aa                	add	a5,a5,a0
1c0091de:	8285                	srli	a3,a3,0x1
1c0091e0:	00a7b533          	sltu	a0,a5,a0
1c0091e4:	00d508b3          	add	a7,a0,a3
1c0091e8:	001f0993          	addi	s3,t5,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c0091ec:	06600693          	li	a3,102
1c0091f0:	884e                	mv	a6,s3
1c0091f2:	4edd8163          	beq	s11,a3,1c0096d4 <pos_libc_prf+0x8ec>
1c0091f6:	00279693          	slli	a3,a5,0x2
1c0091fa:	01e7d513          	srli	a0,a5,0x1e
1c0091fe:	00289e13          	slli	t3,a7,0x2
1c009202:	97b6                	add	a5,a5,a3
1c009204:	01c56e33          	or	t3,a0,t3
1c009208:	00d7b833          	sltu	a6,a5,a3
1c00920c:	011e06b3          	add	a3,t3,a7
1c009210:	9836                	add	a6,a6,a3
1c009212:	0806                	slli	a6,a6,0x1
1c009214:	01f7d693          	srli	a3,a5,0x1f
1c009218:	0106e833          	or	a6,a3,a6
1c00921c:	01c85693          	srli	a3,a6,0x1c
1c009220:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c009224:	4772                	lw	a4,28(sp)
1c009226:	00af0023          	sb	a0,0(t5)
1c00922a:	00179513          	slli	a0,a5,0x1
1c00922e:	47d2                	lw	a5,20(sp)
1c009230:	00d036b3          	snez	a3,a3
1c009234:	01576bb3          	or	s7,a4,s5
1c009238:	00f87833          	and	a6,a6,a5
1c00923c:	40d30333          	sub	t1,t1,a3
1c009240:	060b8463          	beqz	s7,1c0092a8 <pos_libc_prf+0x4c0>
1c009244:	02e00793          	li	a5,46
1c009248:	00ff00a3          	sb	a5,1(t5)
1c00924c:	002f0993          	addi	s3,t5,2
1c009250:	040a8c63          	beqz	s5,1c0092a8 <pos_libc_prf+0x4c0>
1c009254:	002a8793          	addi	a5,s5,2
1c009258:	9f3e                	add	t5,t5,a5
1c00925a:	88ce                	mv	a7,s3
1c00925c:	4ebd                	li	t4,15
1c00925e:	03000f93          	li	t6,48
1c009262:	00251793          	slli	a5,a0,0x2
1c009266:	01e55693          	srli	a3,a0,0x1e
1c00926a:	00281713          	slli	a4,a6,0x2
1c00926e:	00a785b3          	add	a1,a5,a0
1c009272:	8f55                	or	a4,a4,a3
1c009274:	9742                	add	a4,a4,a6
1c009276:	00f5b7b3          	sltu	a5,a1,a5
1c00927a:	97ba                	add	a5,a5,a4
1c00927c:	0786                	slli	a5,a5,0x1
1c00927e:	01f5d713          	srli	a4,a1,0x1f
1c009282:	8fd9                	or	a5,a5,a4
1c009284:	01c7d713          	srli	a4,a5,0x1c
1c009288:	03070713          	addi	a4,a4,48
1c00928c:	0885                	addi	a7,a7,1
1c00928e:	53d05763          	blez	t4,1c0097bc <pos_libc_prf+0x9d4>
1c009292:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c009296:	4752                	lw	a4,20(sp)
1c009298:	1efd                	addi	t4,t4,-1
1c00929a:	00159513          	slli	a0,a1,0x1
1c00929e:	00e7f833          	and	a6,a5,a4
1c0092a2:	fd1f10e3          	bne	t5,a7,1c009262 <pos_libc_prf+0x47a>
1c0092a6:	99d6                	add	s3,s3,s5
1c0092a8:	4e061c63          	bnez	a2,1c0097a0 <pos_libc_prf+0x9b8>
1c0092ac:	fdfdf793          	andi	a5,s11,-33
1c0092b0:	04500693          	li	a3,69
1c0092b4:	00d781e3          	beq	a5,a3,1c009ab6 <pos_libc_prf+0xcce>
1c0092b8:	105c                	addi	a5,sp,36
1c0092ba:	00098023          	sb	zero,0(s3)
1c0092be:	40f989b3          	sub	s3,s3,a5
1c0092c2:	aa05                	j	1c0093f2 <pos_libc_prf+0x60a>
1c0092c4:	b80c0fe3          	beqz	s8,1c008e62 <pos_libc_prf+0x7a>
1c0092c8:	b931                	j	1c008ee4 <pos_libc_prf+0xfc>
1c0092ca:	016c0863          	beq	s8,s6,1c0092da <pos_libc_prf+0x4f2>
1c0092ce:	c15c1be3          	bne	s8,s5,1c008ee4 <pos_libc_prf+0xfc>
1c0092d2:	03000913          	li	s2,48
1c0092d6:	8da6                	mv	s11,s1
1c0092d8:	b139                	j	1c008ee6 <pos_libc_prf+0xfe>
1c0092da:	4785                	li	a5,1
1c0092dc:	c03e                	sw	a5,0(sp)
1c0092de:	8da6                	mv	s11,s1
1c0092e0:	b119                	j	1c008ee6 <pos_libc_prf+0xfe>
1c0092e2:	4785                	li	a5,1
1c0092e4:	c23e                	sw	a5,4(sp)
1c0092e6:	8da6                	mv	s11,s1
1c0092e8:	befd                	j	1c008ee6 <pos_libc_prf+0xfe>
1c0092ea:	4785                	li	a5,1
1c0092ec:	c43e                	sw	a5,8(sp)
1c0092ee:	8da6                	mv	s11,s1
1c0092f0:	bedd                	j	1c008ee6 <pos_libc_prf+0xfe>
1c0092f2:	0b85                	addi	s7,s7,1
1c0092f4:	002a1793          	slli	a5,s4,0x2
1c0092f8:	97d2                	add	a5,a5,s4
1c0092fa:	0786                	slli	a5,a5,0x1
1c0092fc:	97ee                	add	a5,a5,s11
1c0092fe:	000bcd83          	lbu	s11,0(s7)
1c009302:	fd078a13          	addi	s4,a5,-48
1c009306:	8662                	mv	a2,s8
1c009308:	fd0d8793          	addi	a5,s11,-48
1c00930c:	8c5e                	mv	s8,s7
1c00930e:	fef572e3          	bgeu	a0,a5,1c0092f2 <pos_libc_prf+0x50a>
1c009312:	0609                	addi	a2,a2,2
1c009314:	0c800793          	li	a5,200
1c009318:	c147f1e3          	bgeu	a5,s4,1c008f1a <pos_libc_prf+0x132>
1c00931c:	0c800a13          	li	s4,200
1c009320:	beed                	j	1c008f1a <pos_libc_prf+0x132>
1c009322:	0c800793          	li	a5,200
1c009326:	b3b7dae3          	bge	a5,s11,1c008e5a <pos_libc_prf+0x72>
1c00932a:	547d                	li	s0,-1
1c00932c:	be1d                	j	1c008e62 <pos_libc_prf+0x7a>
1c00932e:	47b2                	lw	a5,12(sp)
1c009330:	0007aa03          	lw	s4,0(a5)
1c009334:	00478693          	addi	a3,a5,4
1c009338:	000a5663          	bgez	s4,1c009344 <pos_libc_prf+0x55c>
1c00933c:	4785                	li	a5,1
1c00933e:	41400a33          	neg	s4,s4
1c009342:	c03e                	sw	a5,0(sp)
1c009344:	000bcd83          	lbu	s11,0(s7)
1c009348:	c636                	sw	a3,12(sp)
1c00934a:	002c0613          	addi	a2,s8,2
1c00934e:	b7d9                	j	1c009314 <pos_libc_prf+0x52c>
1c009350:	b00d89e3          	beqz	s11,1c008e62 <pos_libc_prf+0x7a>
1c009354:	b619                	j	1c008e5a <pos_libc_prf+0x72>
1c009356:	06400793          	li	a5,100
1c00935a:	4afd8363          	beq	s11,a5,1c009800 <pos_libc_prf+0xa18>
1c00935e:	19b7d963          	bge	a5,s11,1c0094f0 <pos_libc_prf+0x708>
1c009362:	f9bd8793          	addi	a5,s11,-101
1c009366:	4689                	li	a3,2
1c009368:	aef6e9e3          	bltu	a3,a5,1c008e5a <pos_libc_prf+0x72>
1c00936c:	47b2                	lw	a5,12(sp)
1c00936e:	7ff00893          	li	a7,2047
1c009372:	00778b13          	addi	s6,a5,7
1c009376:	ff8b7b13          	andi	s6,s6,-8
1c00937a:	004b2783          	lw	a5,4(s6)
1c00937e:	000b2603          	lw	a2,0(s6)
1c009382:	0b21                	addi	s6,s6,8
1c009384:	00b79693          	slli	a3,a5,0xb
1c009388:	01565813          	srli	a6,a2,0x15
1c00938c:	0147d513          	srli	a0,a5,0x14
1c009390:	00d866b3          	or	a3,a6,a3
1c009394:	0686                	slli	a3,a3,0x1
1c009396:	7ff57813          	andi	a6,a0,2047
1c00939a:	00b61313          	slli	t1,a2,0xb
1c00939e:	0016d513          	srli	a0,a3,0x1
1c0093a2:	86be                	mv	a3,a5
1c0093a4:	c11818e3          	bne	a6,a7,1c008fb4 <pos_libc_prf+0x1cc>
1c0093a8:	105c                	addi	a5,sp,36
1c0093aa:	0006d863          	bgez	a3,1c0093ba <pos_libc_prf+0x5d2>
1c0093ae:	02d00793          	li	a5,45
1c0093b2:	02f10223          	sb	a5,36(sp)
1c0093b6:	02510793          	addi	a5,sp,37
1c0093ba:	00a36633          	or	a2,t1,a0
1c0093be:	fbfd8593          	addi	a1,s11,-65
1c0093c2:	00378993          	addi	s3,a5,3
1c0093c6:	46e5                	li	a3,25
1c0093c8:	0c0612e3          	bnez	a2,1c009c8c <pos_libc_prf+0xea4>
1c0093cc:	10b6e5e3          	bltu	a3,a1,1c009cd6 <pos_libc_prf+0xeee>
1c0093d0:	04900693          	li	a3,73
1c0093d4:	00d78023          	sb	a3,0(a5)
1c0093d8:	04e00693          	li	a3,78
1c0093dc:	00d780a3          	sb	a3,1(a5)
1c0093e0:	04600693          	li	a3,70
1c0093e4:	00d78123          	sb	a3,2(a5)
1c0093e8:	000781a3          	sb	zero,3(a5)
1c0093ec:	105c                	addi	a5,sp,36
1c0093ee:	40f989b3          	sub	s3,s3,a5
1c0093f2:	47a2                	lw	a5,8(sp)
1c0093f4:	4712                	lw	a4,4(sp)
1c0093f6:	8fd9                	or	a5,a5,a4
1c0093f8:	ce3e                	sw	a5,28(sp)
1c0093fa:	5e079b63          	bnez	a5,1c0099f0 <pos_libc_prf+0xc08>
1c0093fe:	02414683          	lbu	a3,36(sp)
1c009402:	02d00793          	li	a5,45
1c009406:	5ef68563          	beq	a3,a5,1c0099f0 <pos_libc_prf+0xc08>
1c00940a:	0c800793          	li	a5,200
1c00940e:	0d37d863          	bge	a5,s3,1c0094de <pos_libc_prf+0x6f6>
1c009412:	547d                	li	s0,-1
1c009414:	b4b9                	j	1c008e62 <pos_libc_prf+0x7a>
1c009416:	07000793          	li	a5,112
1c00941a:	46fd8f63          	beq	s11,a5,1c009898 <pos_libc_prf+0xab0>
1c00941e:	1bb7d663          	bge	a5,s11,1c0095ca <pos_libc_prf+0x7e2>
1c009422:	07500793          	li	a5,117
1c009426:	52fd8763          	beq	s11,a5,1c009954 <pos_libc_prf+0xb6c>
1c00942a:	07800793          	li	a5,120
1c00942e:	16fd9163          	bne	s11,a5,1c009590 <pos_libc_prf+0x7a8>
1c009432:	47b2                	lw	a5,12(sp)
1c009434:	1054                	addi	a3,sp,36
1c009436:	4390                	lw	a2,0(a5)
1c009438:	00478b13          	addi	s6,a5,4
1c00943c:	47f2                	lw	a5,28(sp)
1c00943e:	28079163          	bnez	a5,1c0096c0 <pos_libc_prf+0x8d8>
1c009442:	87b6                	mv	a5,a3
1c009444:	4ea5                	li	t4,9
1c009446:	4e3d                	li	t3,15
1c009448:	a039                	j	1c009456 <pos_libc_prf+0x66e>
1c00944a:	ff098fa3          	sb	a6,-1(s3)
1c00944e:	02ce7663          	bgeu	t3,a2,1c00947a <pos_libc_prf+0x692>
1c009452:	862a                	mv	a2,a0
1c009454:	87ce                	mv	a5,s3
1c009456:	00f67593          	andi	a1,a2,15
1c00945a:	00178993          	addi	s3,a5,1
1c00945e:	05758813          	addi	a6,a1,87
1c009462:	03058713          	addi	a4,a1,48
1c009466:	00465513          	srli	a0,a2,0x4
1c00946a:	febee0e3          	bltu	t4,a1,1c00944a <pos_libc_prf+0x662>
1c00946e:	00e78023          	sb	a4,0(a5)
1c009472:	00178993          	addi	s3,a5,1
1c009476:	fcce6ee3          	bltu	t3,a2,1c009452 <pos_libc_prf+0x66a>
1c00947a:	40d98633          	sub	a2,s3,a3
1c00947e:	01565c63          	bge	a2,s5,1c009496 <pos_libc_prf+0x6ae>
1c009482:	03000513          	li	a0,48
1c009486:	87ce                	mv	a5,s3
1c009488:	0985                	addi	s3,s3,1
1c00948a:	40d98733          	sub	a4,s3,a3
1c00948e:	fea98fa3          	sb	a0,-1(s3)
1c009492:	ff574ae3          	blt	a4,s5,1c009486 <pos_libc_prf+0x69e>
1c009496:	00098023          	sb	zero,0(s3)
1c00949a:	00f6fe63          	bgeu	a3,a5,1c0094b6 <pos_libc_prf+0x6ce>
1c00949e:	0006c603          	lbu	a2,0(a3)
1c0094a2:	0007c703          	lbu	a4,0(a5)
1c0094a6:	0685                	addi	a3,a3,1
1c0094a8:	00c78023          	sb	a2,0(a5)
1c0094ac:	fee68fa3          	sb	a4,-1(a3)
1c0094b0:	17fd                	addi	a5,a5,-1
1c0094b2:	fef6e6e3          	bltu	a3,a5,1c00949e <pos_libc_prf+0x6b6>
1c0094b6:	05800793          	li	a5,88
1c0094ba:	66fd8463          	beq	s11,a5,1c009b22 <pos_libc_prf+0xd3a>
1c0094be:	105c                	addi	a5,sp,36
1c0094c0:	40f989b3          	sub	s3,s3,a5
1c0094c4:	47f2                	lw	a5,28(sp)
1c0094c6:	c399                	beqz	a5,1c0094cc <pos_libc_prf+0x6e4>
1c0094c8:	4789                	li	a5,2
1c0094ca:	ce3e                	sw	a5,28(sp)
1c0094cc:	57fd                	li	a5,-1
1c0094ce:	f2fa8ee3          	beq	s5,a5,1c00940a <pos_libc_prf+0x622>
1c0094d2:	0c800793          	li	a5,200
1c0094d6:	e537cae3          	blt	a5,s3,1c00932a <pos_libc_prf+0x542>
1c0094da:	02000913          	li	s2,32
1c0094de:	00198613          	addi	a2,s3,1
1c0094e2:	0349c963          	blt	s3,s4,1c009514 <pos_libc_prf+0x72c>
1c0094e6:	c65a                	sw	s6,12(sp)
1c0094e8:	8a4e                	mv	s4,s3
1c0094ea:	1a0a1663          	bnez	s4,1c009696 <pos_libc_prf+0x8ae>
1c0094ee:	b2b5                	j	1c008e5a <pos_libc_prf+0x72>
1c0094f0:	06300793          	li	a5,99
1c0094f4:	96fd93e3          	bne	s11,a5,1c008e5a <pos_libc_prf+0x72>
1c0094f8:	4732                	lw	a4,12(sp)
1c0094fa:	020102a3          	sb	zero,37(sp)
1c0094fe:	4785                	li	a5,1
1c009500:	4314                	lw	a3,0(a4)
1c009502:	00470b13          	addi	s6,a4,4
1c009506:	02d10223          	sb	a3,36(sp)
1c00950a:	1947d463          	bge	a5,s4,1c009692 <pos_libc_prf+0x8aa>
1c00950e:	4609                	li	a2,2
1c009510:	4985                	li	s3,1
1c009512:	ce02                	sw	zero,28(sp)
1c009514:	4782                	lw	a5,0(sp)
1c009516:	4e078463          	beqz	a5,1c0099fe <pos_libc_prf+0xc16>
1c00951a:	413a07b3          	sub	a5,s4,s3
1c00951e:	4585                	li	a1,1
1c009520:	0149d363          	bge	s3,s4,1c009526 <pos_libc_prf+0x73e>
1c009524:	85be                	mv	a1,a5
1c009526:	17fd                	addi	a5,a5,-1
1c009528:	0037b793          	sltiu	a5,a5,3
1c00952c:	eb95                	bnez	a5,1c009560 <pos_libc_prf+0x778>
1c00952e:	0349d963          	bge	s3,s4,1c009560 <pos_libc_prf+0x778>
1c009532:	105c                	addi	a5,sp,36
1c009534:	97ce                	add	a5,a5,s3
1c009536:	ffc5f613          	andi	a2,a1,-4
1c00953a:	963e                	add	a2,a2,a5
1c00953c:	02000693          	li	a3,32
1c009540:	00d78023          	sb	a3,0(a5)
1c009544:	00d780a3          	sb	a3,1(a5)
1c009548:	00d78123          	sb	a3,2(a5)
1c00954c:	00d781a3          	sb	a3,3(a5)
1c009550:	0791                	addi	a5,a5,4
1c009552:	fef617e3          	bne	a2,a5,1c009540 <pos_libc_prf+0x758>
1c009556:	ffc5f793          	andi	a5,a1,-4
1c00955a:	99be                	add	s3,s3,a5
1c00955c:	02b78663          	beq	a5,a1,1c009588 <pos_libc_prf+0x7a0>
1c009560:	199c                	addi	a5,sp,240
1c009562:	97ce                	add	a5,a5,s3
1c009564:	02000693          	li	a3,32
1c009568:	f2d78a23          	sb	a3,-204(a5)
1c00956c:	00198793          	addi	a5,s3,1
1c009570:	0147dc63          	bge	a5,s4,1c009588 <pos_libc_prf+0x7a0>
1c009574:	1998                	addi	a4,sp,240
1c009576:	97ba                	add	a5,a5,a4
1c009578:	f2d78a23          	sb	a3,-204(a5)
1c00957c:	0989                	addi	s3,s3,2
1c00957e:	0149d563          	bge	s3,s4,1c009588 <pos_libc_prf+0x7a0>
1c009582:	99ba                	add	s3,s3,a4
1c009584:	f2d98a23          	sb	a3,-204(s3)
1c009588:	c65a                	sw	s6,12(sp)
1c00958a:	100a1663          	bnez	s4,1c009696 <pos_libc_prf+0x8ae>
1c00958e:	b0f1                	j	1c008e5a <pos_libc_prf+0x72>
1c009590:	07300793          	li	a5,115
1c009594:	d8fd97e3          	bne	s11,a5,1c009322 <pos_libc_prf+0x53a>
1c009598:	47b2                	lw	a5,12(sp)
1c00959a:	4981                	li	s3,0
1c00959c:	0c800693          	li	a3,200
1c0095a0:	438c                	lw	a1,0(a5)
1c0095a2:	00478b13          	addi	s6,a5,4
1c0095a6:	a021                	j	1c0095ae <pos_libc_prf+0x7c6>
1c0095a8:	0985                	addi	s3,s3,1
1c0095aa:	6ad98163          	beq	s3,a3,1c009c4c <pos_libc_prf+0xe64>
1c0095ae:	013587b3          	add	a5,a1,s3
1c0095b2:	0007c783          	lbu	a5,0(a5)
1c0095b6:	fbed                	bnez	a5,1c0095a8 <pos_libc_prf+0x7c0>
1c0095b8:	000ac563          	bltz	s5,1c0095c2 <pos_libc_prf+0x7da>
1c0095bc:	013ad363          	bge	s5,s3,1c0095c2 <pos_libc_prf+0x7da>
1c0095c0:	89d6                	mv	s3,s5
1c0095c2:	5a099163          	bnez	s3,1c009b64 <pos_libc_prf+0xd7c>
1c0095c6:	c65a                	sw	s6,12(sp)
1c0095c8:	b849                	j	1c008e5a <pos_libc_prf+0x72>
1c0095ca:	06e00793          	li	a5,110
1c0095ce:	36fd8c63          	beq	s11,a5,1c009946 <pos_libc_prf+0xb5e>
1c0095d2:	06f00793          	li	a5,111
1c0095d6:	88fd92e3          	bne	s11,a5,1c008e5a <pos_libc_prf+0x72>
1c0095da:	47b2                	lw	a5,12(sp)
1c0095dc:	4390                	lw	a2,0(a5)
1c0095de:	00478b13          	addi	s6,a5,4
1c0095e2:	47f2                	lw	a5,28(sp)
1c0095e4:	c7f5                	beqz	a5,1c0096d0 <pos_libc_prf+0x8e8>
1c0095e6:	03000793          	li	a5,48
1c0095ea:	02f10223          	sb	a5,36(sp)
1c0095ee:	02510693          	addi	a3,sp,37
1c0095f2:	60060b63          	beqz	a2,1c009c08 <pos_libc_prf+0xe20>
1c0095f6:	89b6                	mv	s3,a3
1c0095f8:	481d                	li	a6,7
1c0095fa:	00767713          	andi	a4,a2,7
1c0095fe:	03070713          	addi	a4,a4,48
1c009602:	85b2                	mv	a1,a2
1c009604:	00e98023          	sb	a4,0(s3)
1c009608:	87ce                	mv	a5,s3
1c00960a:	820d                	srli	a2,a2,0x3
1c00960c:	0985                	addi	s3,s3,1
1c00960e:	feb866e3          	bltu	a6,a1,1c0095fa <pos_libc_prf+0x812>
1c009612:	40d98633          	sub	a2,s3,a3
1c009616:	01565c63          	bge	a2,s5,1c00962e <pos_libc_prf+0x846>
1c00961a:	03000593          	li	a1,48
1c00961e:	87ce                	mv	a5,s3
1c009620:	0985                	addi	s3,s3,1
1c009622:	40d98733          	sub	a4,s3,a3
1c009626:	feb98fa3          	sb	a1,-1(s3)
1c00962a:	ff574ae3          	blt	a4,s5,1c00961e <pos_libc_prf+0x836>
1c00962e:	00098023          	sb	zero,0(s3)
1c009632:	00f6fe63          	bgeu	a3,a5,1c00964e <pos_libc_prf+0x866>
1c009636:	0006c603          	lbu	a2,0(a3)
1c00963a:	0007c703          	lbu	a4,0(a5)
1c00963e:	0685                	addi	a3,a3,1
1c009640:	00c78023          	sb	a2,0(a5)
1c009644:	fee68fa3          	sb	a4,-1(a3)
1c009648:	17fd                	addi	a5,a5,-1
1c00964a:	fef6e6e3          	bltu	a3,a5,1c009636 <pos_libc_prf+0x84e>
1c00964e:	1058                	addi	a4,sp,36
1c009650:	57fd                	li	a5,-1
1c009652:	40e989b3          	sub	s3,s3,a4
1c009656:	36fa8763          	beq	s5,a5,1c0099c4 <pos_libc_prf+0xbdc>
1c00965a:	0c800793          	li	a5,200
1c00965e:	cd37c6e3          	blt	a5,s3,1c00932a <pos_libc_prf+0x542>
1c009662:	ce02                	sw	zero,28(sp)
1c009664:	bd9d                	j	1c0094da <pos_libc_prf+0x6f2>
1c009666:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00966a:	02a00793          	li	a5,42
1c00966e:	00160693          	addi	a3,a2,1
1c009672:	14f59b63          	bne	a1,a5,1c0097c8 <pos_libc_prf+0x9e0>
1c009676:	47b2                	lw	a5,12(sp)
1c009678:	00164d83          	lbu	s11,1(a2)
1c00967c:	0609                	addi	a2,a2,2
1c00967e:	0007aa83          	lw	s5,0(a5)
1c009682:	0791                	addi	a5,a5,4
1c009684:	c63e                	sw	a5,12(sp)
1c009686:	0c800793          	li	a5,200
1c00968a:	8957dde3          	bge	a5,s5,1c008f24 <pos_libc_prf+0x13c>
1c00968e:	5afd                	li	s5,-1
1c009690:	b851                	j	1c008f24 <pos_libc_prf+0x13c>
1c009692:	c65a                	sw	s6,12(sp)
1c009694:	4a05                	li	s4,1
1c009696:	02410913          	addi	s2,sp,36
1c00969a:	59fd                	li	s3,-1
1c00969c:	41240ab3          	sub	s5,s0,s2
1c0096a0:	9a4a                	add	s4,s4,s2
1c0096a2:	a029                	j	1c0096ac <pos_libc_prf+0x8c4>
1c0096a4:	012a8433          	add	s0,s5,s2
1c0096a8:	fb490963          	beq	s2,s4,1c008e5a <pos_libc_prf+0x72>
1c0096ac:	00094503          	lbu	a0,0(s2)
1c0096b0:	85a6                	mv	a1,s1
1c0096b2:	0905                	addi	s2,s2,1
1c0096b4:	9c82                	jalr	s9
1c0096b6:	ff3517e3          	bne	a0,s3,1c0096a4 <pos_libc_prf+0x8bc>
1c0096ba:	547d                	li	s0,-1
1c0096bc:	fa6ff06f          	j	1c008e62 <pos_libc_prf+0x7a>
1c0096c0:	77e1                	lui	a5,0xffff8
1c0096c2:	8307c793          	xori	a5,a5,-2000
1c0096c6:	02f11223          	sh	a5,36(sp)
1c0096ca:	02610693          	addi	a3,sp,38
1c0096ce:	bb95                	j	1c009442 <pos_libc_prf+0x65a>
1c0096d0:	1054                	addi	a3,sp,36
1c0096d2:	b715                	j	1c0095f6 <pos_libc_prf+0x80e>
1c0096d4:	5c605a63          	blez	t1,1c009ca8 <pos_libc_prf+0xec0>
1c0096d8:	006f09b3          	add	s3,t5,t1
1c0096dc:	4541                	li	a0,16
1c0096de:	03000e13          	li	t3,48
1c0096e2:	00279713          	slli	a4,a5,0x2
1c0096e6:	01e7d593          	srli	a1,a5,0x1e
1c0096ea:	00289693          	slli	a3,a7,0x2
1c0096ee:	00f70333          	add	t1,a4,a5
1c0096f2:	8ecd                	or	a3,a3,a1
1c0096f4:	96c6                	add	a3,a3,a7
1c0096f6:	00e33733          	sltu	a4,t1,a4
1c0096fa:	9736                	add	a4,a4,a3
1c0096fc:	0706                	slli	a4,a4,0x1
1c0096fe:	01f35693          	srli	a3,t1,0x1f
1c009702:	8f55                	or	a4,a4,a3
1c009704:	01c75693          	srli	a3,a4,0x1c
1c009708:	03068693          	addi	a3,a3,48
1c00970c:	4ea05463          	blez	a0,1c009bf4 <pos_libc_prf+0xe0c>
1c009710:	fed80fa3          	sb	a3,-1(a6)
1c009714:	46d2                	lw	a3,20(sp)
1c009716:	157d                	addi	a0,a0,-1
1c009718:	00131793          	slli	a5,t1,0x1
1c00971c:	00d778b3          	and	a7,a4,a3
1c009720:	4d099e63          	bne	s3,a6,1c009bfc <pos_libc_prf+0xe14>
1c009724:	4301                	li	t1,0
1c009726:	4772                	lw	a4,28(sp)
1c009728:	01576bb3          	or	s7,a4,s5
1c00972c:	060b8863          	beqz	s7,1c00979c <pos_libc_prf+0x9b4>
1c009730:	02e00693          	li	a3,46
1c009734:	00d98023          	sb	a3,0(s3)
1c009738:	00198e93          	addi	t4,s3,1
1c00973c:	5c0a8763          	beqz	s5,1c009d0a <pos_libc_prf+0xf22>
1c009740:	001a8693          	addi	a3,s5,1
1c009744:	99b6                	add	s3,s3,a3
1c009746:	8876                	mv	a6,t4
1c009748:	03000f13          	li	t5,48
1c00974c:	0805                	addi	a6,a6,1
1c00974e:	4a031963          	bnez	t1,1c009c00 <pos_libc_prf+0xe18>
1c009752:	00279713          	slli	a4,a5,0x2
1c009756:	01e7d593          	srli	a1,a5,0x1e
1c00975a:	00289693          	slli	a3,a7,0x2
1c00975e:	00f70e33          	add	t3,a4,a5
1c009762:	8ecd                	or	a3,a3,a1
1c009764:	96c6                	add	a3,a3,a7
1c009766:	00ee3733          	sltu	a4,t3,a4
1c00976a:	9736                	add	a4,a4,a3
1c00976c:	0706                	slli	a4,a4,0x1
1c00976e:	01fe5693          	srli	a3,t3,0x1f
1c009772:	8f55                	or	a4,a4,a3
1c009774:	01c75593          	srli	a1,a4,0x1c
1c009778:	03000693          	li	a3,48
1c00977c:	00a05a63          	blez	a0,1c009790 <pos_libc_prf+0x9a8>
1c009780:	03058693          	addi	a3,a1,48
1c009784:	45d2                	lw	a1,20(sp)
1c009786:	157d                	addi	a0,a0,-1
1c009788:	001e1793          	slli	a5,t3,0x1
1c00978c:	00b778b3          	and	a7,a4,a1
1c009790:	fed80fa3          	sb	a3,-1(a6)
1c009794:	fb099ce3          	bne	s3,a6,1c00974c <pos_libc_prf+0x964>
1c009798:	015e89b3          	add	s3,t4,s5
1c00979c:	b0060ee3          	beqz	a2,1c0092b8 <pos_libc_prf+0x4d0>
1c0097a0:	03000613          	li	a2,48
1c0097a4:	fff9c783          	lbu	a5,-1(s3)
1c0097a8:	86ce                	mv	a3,s3
1c0097aa:	19fd                	addi	s3,s3,-1
1c0097ac:	fec78ce3          	beq	a5,a2,1c0097a4 <pos_libc_prf+0x9bc>
1c0097b0:	02e00613          	li	a2,46
1c0097b4:	aec78ce3          	beq	a5,a2,1c0092ac <pos_libc_prf+0x4c4>
1c0097b8:	89b6                	mv	s3,a3
1c0097ba:	bccd                	j	1c0092ac <pos_libc_prf+0x4c4>
1c0097bc:	fff88fa3          	sb	t6,-1(a7)
1c0097c0:	ab1f11e3          	bne	t5,a7,1c009262 <pos_libc_prf+0x47a>
1c0097c4:	99d6                	add	s3,s3,s5
1c0097c6:	b4cd                	j	1c0092a8 <pos_libc_prf+0x4c0>
1c0097c8:	fd058713          	addi	a4,a1,-48
1c0097cc:	47a5                	li	a5,9
1c0097ce:	8dae                	mv	s11,a1
1c0097d0:	4a81                	li	s5,0
1c0097d2:	4525                	li	a0,9
1c0097d4:	00e7f463          	bgeu	a5,a4,1c0097dc <pos_libc_prf+0x9f4>
1c0097d8:	a199                	j	1c009c1e <pos_libc_prf+0xe36>
1c0097da:	0685                	addi	a3,a3,1
1c0097dc:	002a9793          	slli	a5,s5,0x2
1c0097e0:	97d6                	add	a5,a5,s5
1c0097e2:	0786                	slli	a5,a5,0x1
1c0097e4:	97ee                	add	a5,a5,s11
1c0097e6:	0006cd83          	lbu	s11,0(a3)
1c0097ea:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c0097ee:	8732                	mv	a4,a2
1c0097f0:	fd0d8793          	addi	a5,s11,-48
1c0097f4:	8636                	mv	a2,a3
1c0097f6:	fef572e3          	bgeu	a0,a5,1c0097da <pos_libc_prf+0x9f2>
1c0097fa:	00270613          	addi	a2,a4,2
1c0097fe:	b561                	j	1c009686 <pos_libc_prf+0x89e>
1c009800:	47b2                	lw	a5,12(sp)
1c009802:	0007a303          	lw	t1,0(a5)
1c009806:	00478b13          	addi	s6,a5,4
1c00980a:	2e034263          	bltz	t1,1c009aee <pos_libc_prf+0xd06>
1c00980e:	47a2                	lw	a5,8(sp)
1c009810:	861a                	mv	a2,t1
1c009812:	3c078663          	beqz	a5,1c009bde <pos_libc_prf+0xdf6>
1c009816:	02b00793          	li	a5,43
1c00981a:	02f10223          	sb	a5,36(sp)
1c00981e:	02510693          	addi	a3,sp,37
1c009822:	89b6                	mv	s3,a3
1c009824:	4529                	li	a0,10
1c009826:	48a5                	li	a7,9
1c009828:	02a67733          	remu	a4,a2,a0
1c00982c:	87ce                	mv	a5,s3
1c00982e:	0985                	addi	s3,s3,1
1c009830:	85b2                	mv	a1,a2
1c009832:	03070713          	addi	a4,a4,48
1c009836:	fee98fa3          	sb	a4,-1(s3)
1c00983a:	02a65633          	divu	a2,a2,a0
1c00983e:	feb8e5e3          	bltu	a7,a1,1c009828 <pos_libc_prf+0xa40>
1c009842:	40d98633          	sub	a2,s3,a3
1c009846:	01565c63          	bge	a2,s5,1c00985e <pos_libc_prf+0xa76>
1c00984a:	03000593          	li	a1,48
1c00984e:	87ce                	mv	a5,s3
1c009850:	0985                	addi	s3,s3,1
1c009852:	40d98733          	sub	a4,s3,a3
1c009856:	feb98fa3          	sb	a1,-1(s3)
1c00985a:	ff574ae3          	blt	a4,s5,1c00984e <pos_libc_prf+0xa66>
1c00985e:	00098023          	sb	zero,0(s3)
1c009862:	00f6fe63          	bgeu	a3,a5,1c00987e <pos_libc_prf+0xa96>
1c009866:	0006c603          	lbu	a2,0(a3)
1c00986a:	0007c703          	lbu	a4,0(a5)
1c00986e:	0685                	addi	a3,a3,1
1c009870:	00c78023          	sb	a2,0(a5)
1c009874:	fee68fa3          	sb	a4,-1(a3)
1c009878:	17fd                	addi	a5,a5,-1
1c00987a:	fef6e6e3          	bltu	a3,a5,1c009866 <pos_libc_prf+0xa7e>
1c00987e:	4712                	lw	a4,4(sp)
1c009880:	47a2                	lw	a5,8(sp)
1c009882:	8fd9                	or	a5,a5,a4
1c009884:	ce3e                	sw	a5,28(sp)
1c009886:	1058                	addi	a4,sp,36
1c009888:	40e989b3          	sub	s3,s3,a4
1c00988c:	c40790e3          	bnez	a5,1c0094cc <pos_libc_prf+0x6e4>
1c009890:	01f35793          	srli	a5,t1,0x1f
1c009894:	ce3e                	sw	a5,28(sp)
1c009896:	b91d                	j	1c0094cc <pos_libc_prf+0x6e4>
1c009898:	47b2                	lw	a5,12(sp)
1c00989a:	02610613          	addi	a2,sp,38
1c00989e:	4ea5                	li	t4,9
1c0098a0:	438c                	lw	a1,0(a5)
1c0098a2:	00478b13          	addi	s6,a5,4
1c0098a6:	77e1                	lui	a5,0xffff8
1c0098a8:	8307c793          	xori	a5,a5,-2000
1c0098ac:	02f11223          	sh	a5,36(sp)
1c0098b0:	4e3d                	li	t3,15
1c0098b2:	87b2                	mv	a5,a2
1c0098b4:	a039                	j	1c0098c2 <pos_libc_prf+0xada>
1c0098b6:	ff168fa3          	sb	a7,-1(a3)
1c0098ba:	02be7663          	bgeu	t3,a1,1c0098e6 <pos_libc_prf+0xafe>
1c0098be:	85c2                	mv	a1,a6
1c0098c0:	87b6                	mv	a5,a3
1c0098c2:	00f5f513          	andi	a0,a1,15
1c0098c6:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c0098ca:	05750893          	addi	a7,a0,87
1c0098ce:	03050713          	addi	a4,a0,48
1c0098d2:	0045d813          	srli	a6,a1,0x4
1c0098d6:	feaee0e3          	bltu	t4,a0,1c0098b6 <pos_libc_prf+0xace>
1c0098da:	00e78023          	sb	a4,0(a5)
1c0098de:	00178693          	addi	a3,a5,1
1c0098e2:	fcbe6ee3          	bltu	t3,a1,1c0098be <pos_libc_prf+0xad6>
1c0098e6:	40c689b3          	sub	s3,a3,a2
1c0098ea:	459d                	li	a1,7
1c0098ec:	0135cc63          	blt	a1,s3,1c009904 <pos_libc_prf+0xb1c>
1c0098f0:	03000513          	li	a0,48
1c0098f4:	87b6                	mv	a5,a3
1c0098f6:	0685                	addi	a3,a3,1
1c0098f8:	40c689b3          	sub	s3,a3,a2
1c0098fc:	fea68fa3          	sb	a0,-1(a3)
1c009900:	ff35dae3          	bge	a1,s3,1c0098f4 <pos_libc_prf+0xb0c>
1c009904:	00068023          	sb	zero,0(a3)
1c009908:	86b2                	mv	a3,a2
1c00990a:	00f67e63          	bgeu	a2,a5,1c009926 <pos_libc_prf+0xb3e>
1c00990e:	0006c603          	lbu	a2,0(a3)
1c009912:	0007c703          	lbu	a4,0(a5)
1c009916:	0685                	addi	a3,a3,1
1c009918:	00c78023          	sb	a2,0(a5)
1c00991c:	fee68fa3          	sb	a4,-1(a3)
1c009920:	17fd                	addi	a5,a5,-1
1c009922:	fef6e6e3          	bltu	a3,a5,1c00990e <pos_libc_prf+0xb26>
1c009926:	57fd                	li	a5,-1
1c009928:	0989                	addi	s3,s3,2
1c00992a:	22fa8663          	beq	s5,a5,1c009b56 <pos_libc_prf+0xd6e>
1c00992e:	0c800793          	li	a5,200
1c009932:	9f37cce3          	blt	a5,s3,1c00932a <pos_libc_prf+0x542>
1c009936:	02000913          	li	s2,32
1c00993a:	0b49d863          	bge	s3,s4,1c0099ea <pos_libc_prf+0xc02>
1c00993e:	00198613          	addi	a2,s3,1
1c009942:	ce02                	sw	zero,28(sp)
1c009944:	bec1                	j	1c009514 <pos_libc_prf+0x72c>
1c009946:	4732                	lw	a4,12(sp)
1c009948:	431c                	lw	a5,0(a4)
1c00994a:	0711                	addi	a4,a4,4
1c00994c:	c63a                	sw	a4,12(sp)
1c00994e:	c380                	sw	s0,0(a5)
1c009950:	d0aff06f          	j	1c008e5a <pos_libc_prf+0x72>
1c009954:	47b2                	lw	a5,12(sp)
1c009956:	4529                	li	a0,10
1c009958:	48a5                	li	a7,9
1c00995a:	4390                	lw	a2,0(a5)
1c00995c:	00478b13          	addi	s6,a5,4
1c009960:	105c                	addi	a5,sp,36
1c009962:	02a67733          	remu	a4,a2,a0
1c009966:	86be                	mv	a3,a5
1c009968:	0785                	addi	a5,a5,1
1c00996a:	85b2                	mv	a1,a2
1c00996c:	03070713          	addi	a4,a4,48
1c009970:	fee78fa3          	sb	a4,-1(a5)
1c009974:	02a65633          	divu	a2,a2,a0
1c009978:	feb8e5e3          	bltu	a7,a1,1c009962 <pos_libc_prf+0xb7a>
1c00997c:	1058                	addi	a4,sp,36
1c00997e:	40e789b3          	sub	s3,a5,a4
1c009982:	0159dd63          	bge	s3,s5,1c00999c <pos_libc_prf+0xbb4>
1c009986:	03000613          	li	a2,48
1c00998a:	86be                	mv	a3,a5
1c00998c:	1058                	addi	a4,sp,36
1c00998e:	0785                	addi	a5,a5,1
1c009990:	40e789b3          	sub	s3,a5,a4
1c009994:	fec78fa3          	sb	a2,-1(a5)
1c009998:	ff59c9e3          	blt	s3,s5,1c00998a <pos_libc_prf+0xba2>
1c00999c:	00078023          	sb	zero,0(a5)
1c0099a0:	105c                	addi	a5,sp,36
1c0099a2:	00d7fe63          	bgeu	a5,a3,1c0099be <pos_libc_prf+0xbd6>
1c0099a6:	0007c603          	lbu	a2,0(a5)
1c0099aa:	0006c703          	lbu	a4,0(a3)
1c0099ae:	0785                	addi	a5,a5,1
1c0099b0:	00c68023          	sb	a2,0(a3)
1c0099b4:	fee78fa3          	sb	a4,-1(a5)
1c0099b8:	16fd                	addi	a3,a3,-1
1c0099ba:	fed7e6e3          	bltu	a5,a3,1c0099a6 <pos_libc_prf+0xbbe>
1c0099be:	57fd                	li	a5,-1
1c0099c0:	c8fa9de3          	bne	s5,a5,1c00965a <pos_libc_prf+0x872>
1c0099c4:	0c800793          	li	a5,200
1c0099c8:	9737c1e3          	blt	a5,s3,1c00932a <pos_libc_prf+0x542>
1c0099cc:	ce02                	sw	zero,28(sp)
1c0099ce:	be01                	j	1c0094de <pos_libc_prf+0x6f6>
1c0099d0:	85a6                	mv	a1,s1
1c0099d2:	02500513          	li	a0,37
1c0099d6:	9c82                	jalr	s9
1c0099d8:	57fd                	li	a5,-1
1c0099da:	c6f51f63          	bne	a0,a5,1c008e58 <pos_libc_prf+0x70>
1c0099de:	547d                	li	s0,-1
1c0099e0:	c82ff06f          	j	1c008e62 <pos_libc_prf+0x7a>
1c0099e4:	4401                	li	s0,0
1c0099e6:	c7cff06f          	j	1c008e62 <pos_libc_prf+0x7a>
1c0099ea:	8a4e                	mv	s4,s3
1c0099ec:	c65a                	sw	s6,12(sp)
1c0099ee:	b165                	j	1c009696 <pos_libc_prf+0x8ae>
1c0099f0:	0c800793          	li	a5,200
1c0099f4:	9337cbe3          	blt	a5,s3,1c00932a <pos_libc_prf+0x542>
1c0099f8:	4785                	li	a5,1
1c0099fa:	ce3e                	sw	a5,28(sp)
1c0099fc:	b4cd                	j	1c0094de <pos_libc_prf+0x6f6>
1c0099fe:	104c                	addi	a1,sp,36
1c009a00:	413a09b3          	sub	s3,s4,s3
1c009a04:	01358533          	add	a0,a1,s3
1c009a08:	a22ff0ef          	jal	ra,1c008c2a <memmove>
1c009a0c:	02000793          	li	a5,32
1c009a10:	24f90863          	beq	s2,a5,1c009c60 <pos_libc_prf+0xe78>
1c009a14:	47f2                	lw	a5,28(sp)
1c009a16:	99be                	add	s3,s3,a5
1c009a18:	47f2                	lw	a5,28(sp)
1c009a1a:	b737d7e3          	bge	a5,s3,1c009588 <pos_libc_prf+0x7a0>
1c009a1e:	4772                	lw	a4,28(sp)
1c009a20:	4789                	li	a5,2
1c009a22:	40e988b3          	sub	a7,s3,a4
1c009a26:	fff88693          	addi	a3,a7,-1
1c009a2a:	06d7f063          	bgeu	a5,a3,1c009a8a <pos_libc_prf+0xca2>
1c009a2e:	47e2                	lw	a5,24(sp)
1c009a30:	00891613          	slli	a2,s2,0x8
1c009a34:	ffc8f593          	andi	a1,a7,-4
1c009a38:	00f976b3          	and	a3,s2,a5
1c009a3c:	8ed1                	or	a3,a3,a2
1c009a3e:	01091793          	slli	a5,s2,0x10
1c009a42:	8edd                	or	a3,a3,a5
1c009a44:	01891613          	slli	a2,s2,0x18
1c009a48:	8e55                	or	a2,a2,a3
1c009a4a:	105c                	addi	a5,sp,36
1c009a4c:	00865813          	srli	a6,a2,0x8
1c009a50:	01065513          	srli	a0,a2,0x10
1c009a54:	97ba                	add	a5,a5,a4
1c009a56:	95be                	add	a1,a1,a5
1c009a58:	0306f693          	andi	a3,a3,48
1c009a5c:	8261                	srli	a2,a2,0x18
1c009a5e:	0ff87813          	andi	a6,a6,255
1c009a62:	0ff57513          	andi	a0,a0,255
1c009a66:	00d78023          	sb	a3,0(a5)
1c009a6a:	010780a3          	sb	a6,1(a5)
1c009a6e:	00a78123          	sb	a0,2(a5)
1c009a72:	00c781a3          	sb	a2,3(a5)
1c009a76:	0791                	addi	a5,a5,4
1c009a78:	fef597e3          	bne	a1,a5,1c009a66 <pos_libc_prf+0xc7e>
1c009a7c:	4772                	lw	a4,28(sp)
1c009a7e:	ffc8f793          	andi	a5,a7,-4
1c009a82:	973e                	add	a4,a4,a5
1c009a84:	ce3a                	sw	a4,28(sp)
1c009a86:	b11781e3          	beq	a5,a7,1c009588 <pos_libc_prf+0x7a0>
1c009a8a:	4772                	lw	a4,28(sp)
1c009a8c:	199c                	addi	a5,sp,240
1c009a8e:	97ba                	add	a5,a5,a4
1c009a90:	f3278a23          	sb	s2,-204(a5)
1c009a94:	00170793          	addi	a5,a4,1
1c009a98:	af37d8e3          	bge	a5,s3,1c009588 <pos_libc_prf+0x7a0>
1c009a9c:	1994                	addi	a3,sp,240
1c009a9e:	97b6                	add	a5,a5,a3
1c009aa0:	f3278a23          	sb	s2,-204(a5)
1c009aa4:	00270b93          	addi	s7,a4,2
1c009aa8:	af3bd0e3          	bge	s7,s3,1c009588 <pos_libc_prf+0x7a0>
1c009aac:	9bb6                	add	s7,s7,a3
1c009aae:	f32b8a23          	sb	s2,-204(s7)
1c009ab2:	c65a                	sw	s6,12(sp)
1c009ab4:	bcd9                	j	1c00958a <pos_libc_prf+0x7a2>
1c009ab6:	01b98023          	sb	s11,0(s3)
1c009aba:	02b00613          	li	a2,43
1c009abe:	00035663          	bgez	t1,1c009aca <pos_libc_prf+0xce2>
1c009ac2:	40600333          	neg	t1,t1
1c009ac6:	02d00613          	li	a2,45
1c009aca:	47a9                	li	a5,10
1c009acc:	02f346b3          	div	a3,t1,a5
1c009ad0:	00c980a3          	sb	a2,1(s3)
1c009ad4:	0991                	addi	s3,s3,4
1c009ad6:	02f367b3          	rem	a5,t1,a5
1c009ada:	03068693          	addi	a3,a3,48
1c009ade:	fed98f23          	sb	a3,-2(s3)
1c009ae2:	03078793          	addi	a5,a5,48
1c009ae6:	fef98fa3          	sb	a5,-1(s3)
1c009aea:	fceff06f          	j	1c0092b8 <pos_libc_prf+0x4d0>
1c009aee:	02d00793          	li	a5,45
1c009af2:	02f10223          	sb	a5,36(sp)
1c009af6:	800007b7          	lui	a5,0x80000
1c009afa:	14f30e63          	beq	t1,a5,1c009c56 <pos_libc_prf+0xe6e>
1c009afe:	40600633          	neg	a2,t1
1c009b02:	02510693          	addi	a3,sp,37
1c009b06:	bb31                	j	1c009822 <pos_libc_prf+0xa3a>
1c009b08:	4722                	lw	a4,8(sp)
1c009b0a:	10070d63          	beqz	a4,1c009c24 <pos_libc_prf+0xe3c>
1c009b0e:	02b00693          	li	a3,43
1c009b12:	02d10223          	sb	a3,36(sp)
1c009b16:	02510f13          	addi	t5,sp,37
1c009b1a:	4301                	li	t1,0
1c009b1c:	4801                	li	a6,0
1c009b1e:	d9cff06f          	j	1c0090ba <pos_libc_prf+0x2d2>
1c009b22:	02414783          	lbu	a5,36(sp)
1c009b26:	98078ce3          	beqz	a5,1c0094be <pos_libc_prf+0x6d6>
1c009b2a:	1054                	addi	a3,sp,36
1c009b2c:	45e5                	li	a1,25
1c009b2e:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c009b32:	f9f78793          	addi	a5,a5,-97
1c009b36:	0ff7f793          	andi	a5,a5,255
1c009b3a:	00f5e963          	bltu	a1,a5,1c009b4c <pos_libc_prf+0xd64>
1c009b3e:	0016c783          	lbu	a5,1(a3)
1c009b42:	00e68023          	sb	a4,0(a3)
1c009b46:	0685                	addi	a3,a3,1
1c009b48:	f3fd                	bnez	a5,1c009b2e <pos_libc_prf+0xd46>
1c009b4a:	ba95                	j	1c0094be <pos_libc_prf+0x6d6>
1c009b4c:	0016c783          	lbu	a5,1(a3)
1c009b50:	0685                	addi	a3,a3,1
1c009b52:	fff1                	bnez	a5,1c009b2e <pos_libc_prf+0xd46>
1c009b54:	b2ad                	j	1c0094be <pos_libc_prf+0x6d6>
1c009b56:	0c800793          	li	a5,200
1c009b5a:	df37d0e3          	bge	a5,s3,1c00993a <pos_libc_prf+0xb52>
1c009b5e:	547d                	li	s0,-1
1c009b60:	b02ff06f          	j	1c008e62 <pos_libc_prf+0x7a>
1c009b64:	864e                	mv	a2,s3
1c009b66:	1048                	addi	a0,sp,36
1c009b68:	fedfe0ef          	jal	ra,1c008b54 <memcpy>
1c009b6c:	b3f9                	j	1c00993a <pos_libc_prf+0xb52>
1c009b6e:	47f2                	lw	a5,28(sp)
1c009b70:	4601                	li	a2,0
1c009b72:	e399                	bnez	a5,1c009b78 <pos_libc_prf+0xd90>
1c009b74:	01503633          	snez	a2,s5
1c009b78:	57f5                	li	a5,-3
1c009b7a:	001a8813          	addi	a6,s5,1
1c009b7e:	00f34463          	blt	t1,a5,1c009b86 <pos_libc_prf+0xd9e>
1c009b82:	04685163          	bge	a6,t1,1c009bc4 <pos_libc_prf+0xddc>
1c009b86:	47c1                	li	a5,16
1c009b88:	0107d363          	bge	a5,a6,1c009b8e <pos_libc_prf+0xda6>
1c009b8c:	4841                	li	a6,16
1c009b8e:	06700793          	li	a5,103
1c009b92:	187d                	addi	a6,a6,-1
1c009b94:	02fd8363          	beq	s11,a5,1c009bba <pos_libc_prf+0xdd2>
1c009b98:	04500d93          	li	s11,69
1c009b9c:	d70ff06f          	j	1c00910c <pos_libc_prf+0x324>
1c009ba0:	4a99                	li	s5,6
1c009ba2:	d4fd9563          	bne	s11,a5,1c0090ec <pos_libc_prf+0x304>
1c009ba6:	4772                	lw	a4,28(sp)
1c009ba8:	4605                	li	a2,1
1c009baa:	57f5                	li	a5,-3
1c009bac:	8e19                	sub	a2,a2,a4
1c009bae:	00f34563          	blt	t1,a5,1c009bb8 <pos_libc_prf+0xdd0>
1c009bb2:	479d                	li	a5,7
1c009bb4:	0067d863          	bge	a5,t1,1c009bc4 <pos_libc_prf+0xddc>
1c009bb8:	4819                	li	a6,6
1c009bba:	06500d93          	li	s11,101
1c009bbe:	d4eff06f          	j	1c00910c <pos_libc_prf+0x324>
1c009bc2:	4601                	li	a2,0
1c009bc4:	006a8833          	add	a6,s5,t1
1c009bc8:	0b005b63          	blez	a6,1c009c7e <pos_libc_prf+0xe96>
1c009bcc:	47c1                	li	a5,16
1c009bce:	0107d363          	bge	a5,a6,1c009bd4 <pos_libc_prf+0xdec>
1c009bd2:	4841                	li	a6,16
1c009bd4:	187d                	addi	a6,a6,-1
1c009bd6:	06600d93          	li	s11,102
1c009bda:	d32ff06f          	j	1c00910c <pos_libc_prf+0x324>
1c009bde:	4792                	lw	a5,4(sp)
1c009be0:	1054                	addi	a3,sp,36
1c009be2:	c40780e3          	beqz	a5,1c009822 <pos_libc_prf+0xa3a>
1c009be6:	02000793          	li	a5,32
1c009bea:	02f10223          	sb	a5,36(sp)
1c009bee:	02510693          	addi	a3,sp,37
1c009bf2:	b905                	j	1c009822 <pos_libc_prf+0xa3a>
1c009bf4:	ffc80fa3          	sb	t3,-1(a6)
1c009bf8:	b30986e3          	beq	s3,a6,1c009724 <pos_libc_prf+0x93c>
1c009bfc:	0805                	addi	a6,a6,1
1c009bfe:	b4d5                	j	1c0096e2 <pos_libc_prf+0x8fa>
1c009c00:	ffe80fa3          	sb	t5,-1(a6)
1c009c04:	0305                	addi	t1,t1,1
1c009c06:	b679                	j	1c009794 <pos_libc_prf+0x9ac>
1c009c08:	020102a3          	sb	zero,37(sp)
1c009c0c:	57fd                	li	a5,-1
1c009c0e:	0cfa8263          	beq	s5,a5,1c009cd2 <pos_libc_prf+0xeea>
1c009c12:	4785                	li	a5,1
1c009c14:	0b47c063          	blt	a5,s4,1c009cb4 <pos_libc_prf+0xecc>
1c009c18:	4a72                	lw	s4,28(sp)
1c009c1a:	c65a                	sw	s6,12(sp)
1c009c1c:	bcad                	j	1c009696 <pos_libc_prf+0x8ae>
1c009c1e:	8636                	mv	a2,a3
1c009c20:	b04ff06f          	j	1c008f24 <pos_libc_prf+0x13c>
1c009c24:	4712                	lw	a4,4(sp)
1c009c26:	c77d                	beqz	a4,1c009d14 <pos_libc_prf+0xf2c>
1c009c28:	02000693          	li	a3,32
1c009c2c:	02d10223          	sb	a3,36(sp)
1c009c30:	4301                	li	t1,0
1c009c32:	4801                	li	a6,0
1c009c34:	02510f13          	addi	t5,sp,37
1c009c38:	c82ff06f          	j	1c0090ba <pos_libc_prf+0x2d2>
1c009c3c:	02d00693          	li	a3,45
1c009c40:	02d10223          	sb	a3,36(sp)
1c009c44:	02510f13          	addi	t5,sp,37
1c009c48:	b9cff06f          	j	1c008fe4 <pos_libc_prf+0x1fc>
1c009c4c:	0c800613          	li	a2,200
1c009c50:	960ad6e3          	bgez	s5,1c0095bc <pos_libc_prf+0x7d4>
1c009c54:	bf09                	j	1c009b66 <pos_libc_prf+0xd7e>
1c009c56:	80000637          	lui	a2,0x80000
1c009c5a:	02510693          	addi	a3,sp,37
1c009c5e:	b6d1                	j	1c009822 <pos_libc_prf+0xa3a>
1c009c60:	ce02                	sw	zero,28(sp)
1c009c62:	bb5d                	j	1c009a18 <pos_libc_prf+0xc30>
1c009c64:	4712                	lw	a4,4(sp)
1c009c66:	02410f13          	addi	t5,sp,36
1c009c6a:	b6070d63          	beqz	a4,1c008fe4 <pos_libc_prf+0x1fc>
1c009c6e:	02000693          	li	a3,32
1c009c72:	02d10223          	sb	a3,36(sp)
1c009c76:	02510f13          	addi	t5,sp,37
1c009c7a:	b6aff06f          	j	1c008fe4 <pos_libc_prf+0x1fc>
1c009c7e:	06600d93          	li	s11,102
1c009c82:	4781                	li	a5,0
1c009c84:	080006b7          	lui	a3,0x8000
1c009c88:	ce8ff06f          	j	1c009170 <pos_libc_prf+0x388>
1c009c8c:	06b6e363          	bltu	a3,a1,1c009cf2 <pos_libc_prf+0xf0a>
1c009c90:	04e00693          	li	a3,78
1c009c94:	04100613          	li	a2,65
1c009c98:	00d78023          	sb	a3,0(a5)
1c009c9c:	00c780a3          	sb	a2,1(a5)
1c009ca0:	00d78123          	sb	a3,2(a5)
1c009ca4:	f44ff06f          	j	1c0093e8 <pos_libc_prf+0x600>
1c009ca8:	03000693          	li	a3,48
1c009cac:	00df0023          	sb	a3,0(t5)
1c009cb0:	4541                	li	a0,16
1c009cb2:	bc95                	j	1c009726 <pos_libc_prf+0x93e>
1c009cb4:	4982                	lw	s3,0(sp)
1c009cb6:	860992e3          	bnez	s3,1c00951a <pos_libc_prf+0x732>
1c009cba:	104c                	addi	a1,sp,36
1c009cbc:	fffa0993          	addi	s3,s4,-1
1c009cc0:	4609                	li	a2,2
1c009cc2:	01358533          	add	a0,a1,s3
1c009cc6:	f65fe0ef          	jal	ra,1c008c2a <memmove>
1c009cca:	02000913          	li	s2,32
1c009cce:	ce02                	sw	zero,28(sp)
1c009cd0:	b3b9                	j	1c009a1e <pos_libc_prf+0xc36>
1c009cd2:	49f2                	lw	s3,28(sp)
1c009cd4:	b19d                	j	1c00993a <pos_libc_prf+0xb52>
1c009cd6:	06900693          	li	a3,105
1c009cda:	00d78023          	sb	a3,0(a5)
1c009cde:	06e00693          	li	a3,110
1c009ce2:	00d780a3          	sb	a3,1(a5)
1c009ce6:	06600693          	li	a3,102
1c009cea:	00d78123          	sb	a3,2(a5)
1c009cee:	efaff06f          	j	1c0093e8 <pos_libc_prf+0x600>
1c009cf2:	06e00693          	li	a3,110
1c009cf6:	06100613          	li	a2,97
1c009cfa:	00d78023          	sb	a3,0(a5)
1c009cfe:	00c780a3          	sb	a2,1(a5)
1c009d02:	00d78123          	sb	a3,2(a5)
1c009d06:	ee2ff06f          	j	1c0093e8 <pos_libc_prf+0x600>
1c009d0a:	89f6                	mv	s3,t4
1c009d0c:	a8061ae3          	bnez	a2,1c0097a0 <pos_libc_prf+0x9b8>
1c009d10:	da8ff06f          	j	1c0092b8 <pos_libc_prf+0x4d0>
1c009d14:	4301                	li	t1,0
1c009d16:	4801                	li	a6,0
1c009d18:	02410f13          	addi	t5,sp,36
1c009d1c:	b9eff06f          	j	1c0090ba <pos_libc_prf+0x2d2>

1c009d20 <pos_init_start>:
1c009d20:	1141                	addi	sp,sp,-16
1c009d22:	c422                	sw	s0,8(sp)
1c009d24:	1c000437          	lui	s0,0x1c000
1c009d28:	c606                	sw	ra,12(sp)
1c009d2a:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009d2e:	db6fe0ef          	jal	ra,1c0082e4 <pos_soc_init>
1c009d32:	2a75                	jal	1c009eee <pos_irq_init>
1c009d34:	22e5                	jal	1c009f1c <pos_soc_event_init>
1c009d36:	2225                	jal	1c009e5e <pos_allocs_init>
1c009d38:	405c                	lw	a5,4(s0)
1c009d3a:	c791                	beqz	a5,1c009d46 <pos_init_start+0x26>
1c009d3c:	0411                	addi	s0,s0,4
1c009d3e:	0411                	addi	s0,s0,4
1c009d40:	9782                	jalr	a5
1c009d42:	401c                	lw	a5,0(s0)
1c009d44:	ffed                	bnez	a5,1c009d3e <pos_init_start+0x1e>
1c009d46:	86cff0ef          	jal	ra,1c008db2 <pos_io_start>
1c009d4a:	300467f3          	csrrsi	a5,mstatus,8
1c009d4e:	40b2                	lw	ra,12(sp)
1c009d50:	4422                	lw	s0,8(sp)
1c009d52:	0141                	addi	sp,sp,16
1c009d54:	8082                	ret

1c009d56 <pos_init_stop>:
1c009d56:	1141                	addi	sp,sp,-16
1c009d58:	c422                	sw	s0,8(sp)
1c009d5a:	1c000437          	lui	s0,0x1c000
1c009d5e:	c606                	sw	ra,12(sp)
1c009d60:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009d64:	852ff0ef          	jal	ra,1c008db6 <pos_io_stop>
1c009d68:	405c                	lw	a5,4(s0)
1c009d6a:	c791                	beqz	a5,1c009d76 <pos_init_stop+0x20>
1c009d6c:	0411                	addi	s0,s0,4
1c009d6e:	0411                	addi	s0,s0,4
1c009d70:	9782                	jalr	a5
1c009d72:	401c                	lw	a5,0(s0)
1c009d74:	ffed                	bnez	a5,1c009d6e <pos_init_stop+0x18>
1c009d76:	40b2                	lw	ra,12(sp)
1c009d78:	4422                	lw	s0,8(sp)
1c009d7a:	0141                	addi	sp,sp,16
1c009d7c:	8082                	ret

1c009d7e <pos_alloc_init>:
1c009d7e:	00758793          	addi	a5,a1,7
1c009d82:	9be1                	andi	a5,a5,-8
1c009d84:	40b785b3          	sub	a1,a5,a1
1c009d88:	c11c                	sw	a5,0(a0)
1c009d8a:	40b605b3          	sub	a1,a2,a1
1c009d8e:	00b05663          	blez	a1,1c009d9a <pos_alloc_init+0x1c>
1c009d92:	99e1                	andi	a1,a1,-8
1c009d94:	c38c                	sw	a1,0(a5)
1c009d96:	0007a223          	sw	zero,4(a5)
1c009d9a:	8082                	ret

1c009d9c <pos_alloc>:
1c009d9c:	411c                	lw	a5,0(a0)
1c009d9e:	00758713          	addi	a4,a1,7
1c009da2:	862a                	mv	a2,a0
1c009da4:	ff877593          	andi	a1,a4,-8
1c009da8:	4681                	li	a3,0
1c009daa:	e789                	bnez	a5,1c009db4 <pos_alloc+0x18>
1c009dac:	a091                	j	1c009df0 <pos_alloc+0x54>
1c009dae:	86be                	mv	a3,a5
1c009db0:	c505                	beqz	a0,1c009dd8 <pos_alloc+0x3c>
1c009db2:	87aa                	mv	a5,a0
1c009db4:	4398                	lw	a4,0(a5)
1c009db6:	43c8                	lw	a0,4(a5)
1c009db8:	feb74be3          	blt	a4,a1,1c009dae <pos_alloc+0x12>
1c009dbc:	00b70f63          	beq	a4,a1,1c009dda <pos_alloc+0x3e>
1c009dc0:	00b78833          	add	a6,a5,a1
1c009dc4:	8f0d                	sub	a4,a4,a1
1c009dc6:	00e82023          	sw	a4,0(a6)
1c009dca:	00a82223          	sw	a0,4(a6)
1c009dce:	ca91                	beqz	a3,1c009de2 <pos_alloc+0x46>
1c009dd0:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c009dd4:	853e                	mv	a0,a5
1c009dd6:	8082                	ret
1c009dd8:	8082                	ret
1c009dda:	ca81                	beqz	a3,1c009dea <pos_alloc+0x4e>
1c009ddc:	c2c8                	sw	a0,4(a3)
1c009dde:	853e                	mv	a0,a5
1c009de0:	8082                	ret
1c009de2:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c009de6:	853e                	mv	a0,a5
1c009de8:	8082                	ret
1c009dea:	c208                	sw	a0,0(a2)
1c009dec:	853e                	mv	a0,a5
1c009dee:	8082                	ret
1c009df0:	4501                	li	a0,0
1c009df2:	8082                	ret

1c009df4 <pos_free>:
1c009df4:	411c                	lw	a5,0(a0)
1c009df6:	061d                	addi	a2,a2,7
1c009df8:	9a61                	andi	a2,a2,-8
1c009dfa:	c7a1                	beqz	a5,1c009e42 <pos_free+0x4e>
1c009dfc:	00b7e563          	bltu	a5,a1,1c009e06 <pos_free+0x12>
1c009e00:	a089                	j	1c009e42 <pos_free+0x4e>
1c009e02:	00b7f563          	bgeu	a5,a1,1c009e0c <pos_free+0x18>
1c009e06:	873e                	mv	a4,a5
1c009e08:	43dc                	lw	a5,4(a5)
1c009e0a:	ffe5                	bnez	a5,1c009e02 <pos_free+0xe>
1c009e0c:	00c586b3          	add	a3,a1,a2
1c009e10:	00d78b63          	beq	a5,a3,1c009e26 <pos_free+0x32>
1c009e14:	c190                	sw	a2,0(a1)
1c009e16:	4314                	lw	a3,0(a4)
1c009e18:	c1dc                	sw	a5,4(a1)
1c009e1a:	00d70533          	add	a0,a4,a3
1c009e1e:	00a58e63          	beq	a1,a0,1c009e3a <pos_free+0x46>
1c009e22:	c34c                	sw	a1,4(a4)
1c009e24:	8082                	ret
1c009e26:	4394                	lw	a3,0(a5)
1c009e28:	43dc                	lw	a5,4(a5)
1c009e2a:	9636                	add	a2,a2,a3
1c009e2c:	c190                	sw	a2,0(a1)
1c009e2e:	4314                	lw	a3,0(a4)
1c009e30:	c1dc                	sw	a5,4(a1)
1c009e32:	00d70533          	add	a0,a4,a3
1c009e36:	fea596e3          	bne	a1,a0,1c009e22 <pos_free+0x2e>
1c009e3a:	9636                	add	a2,a2,a3
1c009e3c:	c310                	sw	a2,0(a4)
1c009e3e:	c35c                	sw	a5,4(a4)
1c009e40:	8082                	ret
1c009e42:	00c58733          	add	a4,a1,a2
1c009e46:	00e78663          	beq	a5,a4,1c009e52 <pos_free+0x5e>
1c009e4a:	c1dc                	sw	a5,4(a1)
1c009e4c:	c190                	sw	a2,0(a1)
1c009e4e:	c10c                	sw	a1,0(a0)
1c009e50:	8082                	ret
1c009e52:	4398                	lw	a4,0(a5)
1c009e54:	43dc                	lw	a5,4(a5)
1c009e56:	963a                	add	a2,a2,a4
1c009e58:	c1dc                	sw	a5,4(a1)
1c009e5a:	c190                	sw	a2,0(a1)
1c009e5c:	bfcd                	j	1c009e4e <pos_free+0x5a>

1c009e5e <pos_allocs_init>:
1c009e5e:	1c0065b7          	lui	a1,0x1c006
1c009e62:	1141                	addi	sp,sp,-16
1c009e64:	24458613          	addi	a2,a1,580 # 1c006244 <__l2_priv0_end>
1c009e68:	1c0087b7          	lui	a5,0x1c008
1c009e6c:	c606                	sw	ra,12(sp)
1c009e6e:	24458593          	addi	a1,a1,580
1c009e72:	40c78633          	sub	a2,a5,a2
1c009e76:	04f5d863          	bge	a1,a5,1c009ec6 <pos_allocs_init+0x68>
1c009e7a:	1c006537          	lui	a0,0x1c006
1c009e7e:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009e82:	3df5                	jal	1c009d7e <pos_alloc_init>
1c009e84:	1c00a5b7          	lui	a1,0x1c00a
1c009e88:	f3458613          	addi	a2,a1,-204 # 1c009f34 <__l2_priv1_end>
1c009e8c:	1c0107b7          	lui	a5,0x1c010
1c009e90:	f3458593          	addi	a1,a1,-204
1c009e94:	40c78633          	sub	a2,a5,a2
1c009e98:	02f5da63          	bge	a1,a5,1c009ecc <pos_allocs_init+0x6e>
1c009e9c:	1c006537          	lui	a0,0x1c006
1c009ea0:	23c50513          	addi	a0,a0,572 # 1c00623c <pos_alloc_l2+0x4>
1c009ea4:	3de9                	jal	1c009d7e <pos_alloc_init>
1c009ea6:	40b2                	lw	ra,12(sp)
1c009ea8:	1c0105b7          	lui	a1,0x1c010
1c009eac:	00058793          	mv	a5,a1
1c009eb0:	1c080637          	lui	a2,0x1c080
1c009eb4:	1c006537          	lui	a0,0x1c006
1c009eb8:	8e1d                	sub	a2,a2,a5
1c009eba:	00058593          	mv	a1,a1
1c009ebe:	24050513          	addi	a0,a0,576 # 1c006240 <pos_alloc_l2+0x8>
1c009ec2:	0141                	addi	sp,sp,16
1c009ec4:	bd6d                	j	1c009d7e <pos_alloc_init>
1c009ec6:	4581                	li	a1,0
1c009ec8:	4601                	li	a2,0
1c009eca:	bf45                	j	1c009e7a <pos_allocs_init+0x1c>
1c009ecc:	4581                	li	a1,0
1c009ece:	4601                	li	a2,0
1c009ed0:	b7f1                	j	1c009e9c <pos_allocs_init+0x3e>

1c009ed2 <pi_l2_malloc>:
1c009ed2:	85aa                	mv	a1,a0
1c009ed4:	1c006537          	lui	a0,0x1c006
1c009ed8:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009edc:	b5c1                	j	1c009d9c <pos_alloc>

1c009ede <pi_l2_free>:
1c009ede:	862e                	mv	a2,a1
1c009ee0:	85aa                	mv	a1,a0
1c009ee2:	1c006537          	lui	a0,0x1c006
1c009ee6:	23850513          	addi	a0,a0,568 # 1c006238 <pos_alloc_l2>
1c009eea:	b729                	j	1c009df4 <pos_free>

1c009eec <__rt_handle_illegal_instr>:
1c009eec:	8082                	ret

1c009eee <pos_irq_init>:
1c009eee:	1a10a737          	lui	a4,0x1a10a
1c009ef2:	56fd                	li	a3,-1
1c009ef4:	f14027f3          	csrr	a5,mhartid
1c009ef8:	8795                	srai	a5,a5,0x5
1c009efa:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009efe:	03f7f793          	andi	a5,a5,63
1c009f02:	477d                	li	a4,31
1c009f04:	00e78363          	beq	a5,a4,1c009f0a <pos_irq_init+0x1c>
1c009f08:	8082                	ret
1c009f0a:	1c0087b7          	lui	a5,0x1c008
1c009f0e:	00078793          	mv	a5,a5
1c009f12:	0017e793          	ori	a5,a5,1
1c009f16:	30579073          	csrw	mtvec,a5
1c009f1a:	8082                	ret

1c009f1c <pos_soc_event_init>:
1c009f1c:	1a1067b7          	lui	a5,0x1a106
1c009f20:	577d                	li	a4,-1
1c009f22:	c3d8                	sw	a4,4(a5)
1c009f24:	c798                	sw	a4,8(a5)
1c009f26:	c7d8                	sw	a4,12(a5)
1c009f28:	cb98                	sw	a4,16(a5)
1c009f2a:	cbd8                	sw	a4,20(a5)
1c009f2c:	cf98                	sw	a4,24(a5)
1c009f2e:	cfd8                	sw	a4,28(a5)
1c009f30:	d398                	sw	a4,32(a5)
1c009f32:	8082                	ret
