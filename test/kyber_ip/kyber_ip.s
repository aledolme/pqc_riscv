riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv_project/test/kyber_ip/build/testkyber/testkyber

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv_project/test/kyber_ip/build/testkyber/testkyber:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	5420206f          	j	1c00a542 <__rt_handle_illegal_instr>
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
1c008084:	4be0206f          	j	1c00a542 <__rt_handle_illegal_instr>

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
1c0080c4:	18028293          	addi	t0,t0,384 # 1c004240 <stack>
1c0080c8:	ffffc317          	auipc	t1,0xffffc
1c0080cc:	1f030313          	addi	t1,t1,496 # 1c0042b8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffc117          	auipc	sp,0xffffc
1c0080de:	16610113          	addi	sp,sp,358 # 1c004240 <stack>
1c0080e2:	2a8020ef          	jal	ra,1c00a38a <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	2c2020ef          	jal	ra,1c00a3be <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	26c020ef          	jal	ra,1c00a36e <exit>

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

1c008142 <main>:
1c008142:	81010113          	addi	sp,sp,-2032
1c008146:	1c000537          	lui	a0,0x1c000
1c00814a:	7e112623          	sw	ra,2028(sp)
1c00814e:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c008152:	9e010113          	addi	sp,sp,-1568
1c008156:	1c4020ef          	jal	ra,1c00a31a <puts>
1c00815a:	6785                	lui	a5,0x1
1c00815c:	757d                	lui	a0,0xfffff
1c00815e:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008162:	978a                	add	a5,a5,sp
1c008164:	6a050593          	addi	a1,a0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c008168:	20050513          	addi	a0,a0,512
1c00816c:	95be                	add	a1,a1,a5
1c00816e:	953e                	add	a0,a0,a5
1c008170:	7f0010ef          	jal	ra,1c009960 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c008174:	1c000537          	lui	a0,0x1c000
1c008178:	12c50513          	addi	a0,a0,300 # 1c00012c <__DTOR_END__+0x110>
1c00817c:	19e020ef          	jal	ra,1c00a31a <puts>
1c008180:	62010113          	addi	sp,sp,1568
1c008184:	7ec12083          	lw	ra,2028(sp)
1c008188:	4501                	li	a0,0
1c00818a:	7f010113          	addi	sp,sp,2032
1c00818e:	8082                	ret

1c008190 <pos_fll_init>:
1c008190:	1101                	addi	sp,sp,-32
1c008192:	1a100637          	lui	a2,0x1a100
1c008196:	ca26                	sw	s1,20(sp)
1c008198:	00451693          	slli	a3,a0,0x4
1c00819c:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c0081a0:	94b6                	add	s1,s1,a3
1c0081a2:	4098                	lw	a4,0(s1)
1c0081a4:	c84a                	sw	s2,16(sp)
1c0081a6:	ce06                	sw	ra,28(sp)
1c0081a8:	cc22                	sw	s0,24(sp)
1c0081aa:	c64e                	sw	s3,12(sp)
1c0081ac:	c452                	sw	s4,8(sp)
1c0081ae:	892a                	mv	s2,a0
1c0081b0:	87ba                	mv	a5,a4
1c0081b2:	04074563          	bltz	a4,1c0081fc <pos_fll_init+0x6c>
1c0081b6:	00860593          	addi	a1,a2,8
1c0081ba:	95b6                	add	a1,a1,a3
1c0081bc:	419c                	lw	a5,0(a1)
1c0081be:	7541                	lui	a0,0xffff0
1c0081c0:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c0081c4:	8fe9                	and	a5,a5,a0
1c0081c6:	6509                	lui	a0,0x2
1c0081c8:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c0081cc:	8fc9                	or	a5,a5,a0
1c0081ce:	f0010537          	lui	a0,0xf0010
1c0081d2:	157d                	addi	a0,a0,-1
1c0081d4:	8fe9                	and	a5,a5,a0
1c0081d6:	00500537          	lui	a0,0x500
1c0081da:	8fc9                	or	a5,a5,a0
1c0081dc:	0631                	addi	a2,a2,12
1c0081de:	c19c                	sw	a5,0(a1)
1c0081e0:	96b2                	add	a3,a3,a2
1c0081e2:	429c                	lw	a5,0(a3)
1c0081e4:	fc010637          	lui	a2,0xfc010
1c0081e8:	167d                	addi	a2,a2,-1
1c0081ea:	8ff1                	and	a5,a5,a2
1c0081ec:	014c0637          	lui	a2,0x14c0
1c0081f0:	8fd1                	or	a5,a5,a2
1c0081f2:	c29c                	sw	a5,0(a3)
1c0081f4:	c00007b7          	lui	a5,0xc0000
1c0081f8:	8fd9                	or	a5,a5,a4
1c0081fa:	c09c                	sw	a5,0(s1)
1c0081fc:	1c004437          	lui	s0,0x1c004
1c008200:	29840413          	addi	s0,s0,664 # 1c004298 <pos_fll_freq>
1c008204:	00291993          	slli	s3,s2,0x2
1c008208:	013406b3          	add	a3,s0,s3
1c00820c:	0006aa03          	lw	s4,0(a3)
1c008210:	020a1d63          	bnez	s4,1c00824a <pos_fll_init+0xba>
1c008214:	83e9                	srli	a5,a5,0x1a
1c008216:	0742                	slli	a4,a4,0x10
1c008218:	8341                	srli	a4,a4,0x10
1c00821a:	8bbd                	andi	a5,a5,15
1c00821c:	073e                	slli	a4,a4,0xf
1c00821e:	17fd                	addi	a5,a5,-1
1c008220:	00f75a33          	srl	s4,a4,a5
1c008224:	1c004537          	lui	a0,0x1c004
1c008228:	0146a023          	sw	s4,0(a3)
1c00822c:	29050513          	addi	a0,a0,656 # 1c004290 <pos_fll_is_on>
1c008230:	954a                	add	a0,a0,s2
1c008232:	4685                	li	a3,1
1c008234:	00d50023          	sb	a3,0(a0)
1c008238:	40f2                	lw	ra,28(sp)
1c00823a:	4462                	lw	s0,24(sp)
1c00823c:	8552                	mv	a0,s4
1c00823e:	44d2                	lw	s1,20(sp)
1c008240:	4942                	lw	s2,16(sp)
1c008242:	49b2                	lw	s3,12(sp)
1c008244:	4a22                	lw	s4,8(sp)
1c008246:	6105                	addi	sp,sp,32
1c008248:	8082                	ret
1c00824a:	8552                	mv	a0,s4
1c00824c:	3d6d                	jal	1c008106 <__clzsi2>
1c00824e:	1579                	addi	a0,a0,-2
1c008250:	00155613          	srli	a2,a0,0x1
1c008254:	e631                	bnez	a2,1c0082a0 <pos_fll_init+0x110>
1c008256:	4709                	li	a4,2
1c008258:	4585                	li	a1,1
1c00825a:	4605                	li	a2,1
1c00825c:	00ca17b3          	sll	a5,s4,a2
1c008260:	76e1                	lui	a3,0xffff8
1c008262:	1c004537          	lui	a0,0x1c004
1c008266:	8efd                	and	a3,a3,a5
1c008268:	29050513          	addi	a0,a0,656 # 1c004290 <pos_fll_is_on>
1c00826c:	96ae                	add	a3,a3,a1
1c00826e:	012505b3          	add	a1,a0,s2
1c008272:	00c6d6b3          	srl	a3,a3,a2
1c008276:	944e                	add	s0,s0,s3
1c008278:	0005c603          	lbu	a2,0(a1)
1c00827c:	c014                	sw	a3,0(s0)
1c00827e:	da4d                	beqz	a2,1c008230 <pos_fll_init+0xa0>
1c008280:	4094                	lw	a3,0(s1)
1c008282:	83bd                	srli	a5,a5,0xf
1c008284:	07c2                	slli	a5,a5,0x10
1c008286:	7641                	lui	a2,0xffff0
1c008288:	83c1                	srli	a5,a5,0x10
1c00828a:	8ef1                	and	a3,a3,a2
1c00828c:	8edd                	or	a3,a3,a5
1c00828e:	c40007b7          	lui	a5,0xc4000
1c008292:	8b3d                	andi	a4,a4,15
1c008294:	17fd                	addi	a5,a5,-1
1c008296:	076a                	slli	a4,a4,0x1a
1c008298:	8efd                	and	a3,a3,a5
1c00829a:	8ed9                	or	a3,a3,a4
1c00829c:	c094                	sw	a3,0(s1)
1c00829e:	bf49                	j	1c008230 <pos_fll_init+0xa0>
1c0082a0:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c0082a4:	4685                	li	a3,1
1c0082a6:	00b695b3          	sll	a1,a3,a1
1c0082aa:	00160713          	addi	a4,a2,1
1c0082ae:	b77d                	j	1c00825c <pos_fll_init+0xcc>

1c0082b0 <pos_fll_constructor>:
1c0082b0:	1c0047b7          	lui	a5,0x1c004
1c0082b4:	29878793          	addi	a5,a5,664 # 1c004298 <pos_fll_freq>
1c0082b8:	0007a023          	sw	zero,0(a5)
1c0082bc:	0007a223          	sw	zero,4(a5)
1c0082c0:	1c0047b7          	lui	a5,0x1c004
1c0082c4:	28079823          	sh	zero,656(a5) # 1c004290 <pos_fll_is_on>
1c0082c8:	8082                	ret

1c0082ca <pos_soc_init>:
1c0082ca:	1141                	addi	sp,sp,-16
1c0082cc:	c606                	sw	ra,12(sp)
1c0082ce:	c422                	sw	s0,8(sp)
1c0082d0:	37c5                	jal	1c0082b0 <pos_fll_constructor>
1c0082d2:	4501                	li	a0,0
1c0082d4:	3d75                	jal	1c008190 <pos_fll_init>
1c0082d6:	1c004437          	lui	s0,0x1c004
1c0082da:	2aa42023          	sw	a0,672(s0) # 1c0042a0 <pos_freq_domains>
1c0082de:	4505                	li	a0,1
1c0082e0:	3d45                	jal	1c008190 <pos_fll_init>
1c0082e2:	2a040413          	addi	s0,s0,672
1c0082e6:	c408                	sw	a0,8(s0)
1c0082e8:	40b2                	lw	ra,12(sp)
1c0082ea:	4422                	lw	s0,8(sp)
1c0082ec:	0141                	addi	sp,sp,16
1c0082ee:	8082                	ret

1c0082f0 <KeccakF1600_StatePermute>:
1c0082f0:	1a4007b7          	lui	a5,0x1a400
1c0082f4:	1141                	addi	sp,sp,-16
1c0082f6:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0082fa:	4118                	lw	a4,0(a0)
1c0082fc:	0791                	addi	a5,a5,4
1c0082fe:	fee7ae23          	sw	a4,-4(a5)
1c008302:	0511                	addi	a0,a0,4
1c008304:	fed79be3          	bne	a5,a3,1c0082fa <KeccakF1600_StatePermute+0xa>
1c008308:	1a4007b7          	lui	a5,0x1a400
1c00830c:	4705                	li	a4,1
1c00830e:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c008312:	1a400737          	lui	a4,0x1a400
1c008316:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00831a:	8b85                	andi	a5,a5,1
1c00831c:	dfed                	beqz	a5,1c008316 <KeccakF1600_StatePermute+0x26>
1c00831e:	c602                	sw	zero,12(sp)
1c008320:	4732                	lw	a4,12(sp)
1c008322:	03100793          	li	a5,49
1c008326:	02e7c663          	blt	a5,a4,1c008352 <KeccakF1600_StatePermute+0x62>
1c00832a:	1a400637          	lui	a2,0x1a400
1c00832e:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008332:	03100513          	li	a0,49
1c008336:	4732                	lw	a4,12(sp)
1c008338:	47b2                	lw	a5,12(sp)
1c00833a:	070a                	slli	a4,a4,0x2
1c00833c:	9732                	add	a4,a4,a2
1c00833e:	4314                	lw	a3,0(a4)
1c008340:	4732                	lw	a4,12(sp)
1c008342:	078a                	slli	a5,a5,0x2
1c008344:	0705                	addi	a4,a4,1
1c008346:	c63a                	sw	a4,12(sp)
1c008348:	97ae                	add	a5,a5,a1
1c00834a:	4732                	lw	a4,12(sp)
1c00834c:	c394                	sw	a3,0(a5)
1c00834e:	fee554e3          	ble	a4,a0,1c008336 <KeccakF1600_StatePermute+0x46>
1c008352:	0141                	addi	sp,sp,16
1c008354:	8082                	ret

1c008356 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c008356:	1141                	addi	sp,sp,-16
1c008358:	55555337          	lui	t1,0x55555
1c00835c:	68c1                	lui	a7,0x10
1c00835e:	c622                	sw	s0,12(sp)
1c008360:	c426                	sw	s1,8(sp)
1c008362:	c24a                	sw	s2,4(sp)
1c008364:	20050e13          	addi	t3,a0,512
1c008368:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00836c:	18fd                	addi	a7,a7,-1
1c00836e:	419c                	lw	a5,0(a1)
1c008370:	0541                	addi	a0,a0,16
1c008372:	0017d713          	srli	a4,a5,0x1
1c008376:	00677733          	and	a4,a4,t1
1c00837a:	0067f7b3          	and	a5,a5,t1
1c00837e:	97ba                	add	a5,a5,a4
1c008380:	0027d913          	srli	s2,a5,0x2
1c008384:	0087d693          	srli	a3,a5,0x8
1c008388:	00a7d493          	srli	s1,a5,0xa
1c00838c:	0107d713          	srli	a4,a5,0x10
1c008390:	0127d413          	srli	s0,a5,0x12
1c008394:	0037f613          	andi	a2,a5,3
1c008398:	00397913          	andi	s2,s2,3
1c00839c:	8a8d                	andi	a3,a3,3
1c00839e:	888d                	andi	s1,s1,3
1c0083a0:	8b0d                	andi	a4,a4,3
1c0083a2:	880d                	andi	s0,s0,3
1c0083a4:	0047df13          	srli	t5,a5,0x4
1c0083a8:	0067d393          	srli	t2,a5,0x6
1c0083ac:	00c7de93          	srli	t4,a5,0xc
1c0083b0:	00e7d293          	srli	t0,a5,0xe
1c0083b4:	0147d813          	srli	a6,a5,0x14
1c0083b8:	0167df93          	srli	t6,a5,0x16
1c0083bc:	41260633          	sub	a2,a2,s2
1c0083c0:	8e85                	sub	a3,a3,s1
1c0083c2:	8f01                	sub	a4,a4,s0
1c0083c4:	0033f393          	andi	t2,t2,3
1c0083c8:	0032f293          	andi	t0,t0,3
1c0083cc:	003fff93          	andi	t6,t6,3
1c0083d0:	003f7f13          	andi	t5,t5,3
1c0083d4:	003efe93          	andi	t4,t4,3
1c0083d8:	00387813          	andi	a6,a6,3
1c0083dc:	0642                	slli	a2,a2,0x10
1c0083de:	06c2                	slli	a3,a3,0x10
1c0083e0:	0742                	slli	a4,a4,0x10
1c0083e2:	407f0f33          	sub	t5,t5,t2
1c0083e6:	405e8eb3          	sub	t4,t4,t0
1c0083ea:	41f80833          	sub	a6,a6,t6
1c0083ee:	0187d293          	srli	t0,a5,0x18
1c0083f2:	01a7d393          	srli	t2,a5,0x1a
1c0083f6:	01c7df93          	srli	t6,a5,0x1c
1c0083fa:	8241                	srli	a2,a2,0x10
1c0083fc:	82c1                	srli	a3,a3,0x10
1c0083fe:	8341                	srli	a4,a4,0x10
1c008400:	0842                	slli	a6,a6,0x10
1c008402:	0f42                	slli	t5,t5,0x10
1c008404:	01167633          	and	a2,a2,a7
1c008408:	0ec2                	slli	t4,t4,0x10
1c00840a:	0116f6b3          	and	a3,a3,a7
1c00840e:	01177733          	and	a4,a4,a7
1c008412:	0032f293          	andi	t0,t0,3
1c008416:	0033f393          	andi	t2,t2,3
1c00841a:	003fff93          	andi	t6,t6,3
1c00841e:	83f9                	srli	a5,a5,0x1e
1c008420:	01076733          	or	a4,a4,a6
1c008424:	01e66633          	or	a2,a2,t5
1c008428:	01d6e6b3          	or	a3,a3,t4
1c00842c:	40728833          	sub	a6,t0,t2
1c008430:	40ff87b3          	sub	a5,t6,a5
1c008434:	fec52823          	sw	a2,-16(a0)
1c008438:	fed52a23          	sw	a3,-12(a0)
1c00843c:	fee52c23          	sw	a4,-8(a0)
1c008440:	ff051e23          	sh	a6,-4(a0)
1c008444:	fef51f23          	sh	a5,-2(a0)
1c008448:	0591                	addi	a1,a1,4
1c00844a:	f3c512e3          	bne	a0,t3,1c00836e <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c00844e:	4432                	lw	s0,12(sp)
1c008450:	44a2                	lw	s1,8(sp)
1c008452:	4912                	lw	s2,4(sp)
1c008454:	0141                	addi	sp,sp,16
1c008456:	8082                	ret

1c008458 <keccak_absorb.constprop.7>:
1c008458:	7151                	addi	sp,sp,-240
1c00845a:	d3a6                	sw	s1,228(sp)
1c00845c:	cfce                	sw	s3,220(sp)
1c00845e:	cdd2                	sw	s4,216(sp)
1c008460:	cbd6                	sw	s5,212(sp)
1c008462:	d786                	sw	ra,236(sp)
1c008464:	d5a2                	sw	s0,232(sp)
1c008466:	d1ca                	sw	s2,224(sp)
1c008468:	89aa                	mv	s3,a0
1c00846a:	8a32                	mv	s4,a2
1c00846c:	84b6                	mv	s1,a3
1c00846e:	8aaa                	mv	s5,a0
1c008470:	0c850713          	addi	a4,a0,200
1c008474:	87aa                	mv	a5,a0
1c008476:	4601                	li	a2,0
1c008478:	4681                	li	a3,0
1c00847a:	c390                	sw	a2,0(a5)
1c00847c:	c3d4                	sw	a3,4(a5)
1c00847e:	07a1                	addi	a5,a5,8
1c008480:	fef71be3          	bne	a4,a5,1c008476 <keccak_absorb.constprop.7+0x1e>
1c008484:	08700793          	li	a5,135
1c008488:	0747fb63          	bleu	s4,a5,1c0084fe <keccak_absorb.constprop.7+0xa6>
1c00848c:	08700413          	li	s0,135
1c008490:	08858913          	addi	s2,a1,136
1c008494:	874e                	mv	a4,s3
1c008496:	0015c783          	lbu	a5,1(a1)
1c00849a:	0025c603          	lbu	a2,2(a1)
1c00849e:	0055c883          	lbu	a7,5(a1)
1c0084a2:	0045c303          	lbu	t1,4(a1)
1c0084a6:	0065c803          	lbu	a6,6(a1)
1c0084aa:	0005ce03          	lbu	t3,0(a1)
1c0084ae:	0035c503          	lbu	a0,3(a1)
1c0084b2:	0075c683          	lbu	a3,7(a1)
1c0084b6:	0642                	slli	a2,a2,0x10
1c0084b8:	07a2                	slli	a5,a5,0x8
1c0084ba:	08a2                	slli	a7,a7,0x8
1c0084bc:	8fd1                	or	a5,a5,a2
1c0084be:	0068e8b3          	or	a7,a7,t1
1c0084c2:	0842                	slli	a6,a6,0x10
1c0084c4:	00072303          	lw	t1,0(a4)
1c0084c8:	4350                	lw	a2,4(a4)
1c0084ca:	01c7e7b3          	or	a5,a5,t3
1c0084ce:	0562                	slli	a0,a0,0x18
1c0084d0:	01186833          	or	a6,a6,a7
1c0084d4:	06e2                	slli	a3,a3,0x18
1c0084d6:	8fc9                	or	a5,a5,a0
1c0084d8:	0106e6b3          	or	a3,a3,a6
1c0084dc:	00f347b3          	xor	a5,t1,a5
1c0084e0:	8eb1                	xor	a3,a3,a2
1c0084e2:	c31c                	sw	a5,0(a4)
1c0084e4:	c354                	sw	a3,4(a4)
1c0084e6:	05a1                	addi	a1,a1,8
1c0084e8:	0721                	addi	a4,a4,8
1c0084ea:	fab916e3          	bne	s2,a1,1c008496 <keccak_absorb.constprop.7+0x3e>
1c0084ee:	85ce                	mv	a1,s3
1c0084f0:	854e                	mv	a0,s3
1c0084f2:	3bfd                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c0084f4:	f78a0a13          	addi	s4,s4,-136
1c0084f8:	85ca                	mv	a1,s2
1c0084fa:	f9446be3          	bltu	s0,s4,1c008490 <keccak_absorb.constprop.7+0x38>
1c0084fe:	003c                	addi	a5,sp,8
1c008500:	0918                	addi	a4,sp,144
1c008502:	883e                	mv	a6,a5
1c008504:	4681                	li	a3,0
1c008506:	00d82023          	sw	a3,0(a6)
1c00850a:	0811                	addi	a6,a6,4
1c00850c:	ff071ce3          	bne	a4,a6,1c008504 <keccak_absorb.constprop.7+0xac>
1c008510:	060a0463          	beqz	s4,1c008578 <keccak_absorb.constprop.7+0x120>
1c008514:	fffa0713          	addi	a4,s4,-1
1c008518:	4689                	li	a3,2
1c00851a:	0ee6f163          	bleu	a4,a3,1c0085fc <keccak_absorb.constprop.7+0x1a4>
1c00851e:	002a5893          	srli	a7,s4,0x2
1c008522:	862e                	mv	a2,a1
1c008524:	86be                	mv	a3,a5
1c008526:	4701                	li	a4,0
1c008528:	4208                	lw	a0,0(a2)
1c00852a:	0705                	addi	a4,a4,1
1c00852c:	c288                	sw	a0,0(a3)
1c00852e:	0611                	addi	a2,a2,4
1c008530:	0691                	addi	a3,a3,4
1c008532:	ff176be3          	bltu	a4,a7,1c008528 <keccak_absorb.constprop.7+0xd0>
1c008536:	ffca7713          	andi	a4,s4,-4
1c00853a:	02ea0f63          	beq	s4,a4,1c008578 <keccak_absorb.constprop.7+0x120>
1c00853e:	00e586b3          	add	a3,a1,a4
1c008542:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c008546:	0988                	addi	a0,sp,208
1c008548:	00e506b3          	add	a3,a0,a4
1c00854c:	f2c68c23          	sb	a2,-200(a3)
1c008550:	00170693          	addi	a3,a4,1
1c008554:	0346f263          	bleu	s4,a3,1c008578 <keccak_absorb.constprop.7+0x120>
1c008558:	00d58633          	add	a2,a1,a3
1c00855c:	00064603          	lbu	a2,0(a2)
1c008560:	96aa                	add	a3,a3,a0
1c008562:	f2c68c23          	sb	a2,-200(a3)
1c008566:	0709                	addi	a4,a4,2
1c008568:	01477863          	bleu	s4,a4,1c008578 <keccak_absorb.constprop.7+0x120>
1c00856c:	95ba                	add	a1,a1,a4
1c00856e:	0005c683          	lbu	a3,0(a1)
1c008572:	972a                	add	a4,a4,a0
1c008574:	f2d70c23          	sb	a3,-200(a4)
1c008578:	0990                	addi	a2,sp,208
1c00857a:	9a32                	add	s4,s4,a2
1c00857c:	f29a0c23          	sb	s1,-200(s4)
1c008580:	08f14703          	lbu	a4,143(sp)
1c008584:	f8076713          	ori	a4,a4,-128
1c008588:	08e107a3          	sb	a4,143(sp)
1c00858c:	0017c703          	lbu	a4,1(a5)
1c008590:	0027c883          	lbu	a7,2(a5)
1c008594:	0057c503          	lbu	a0,5(a5)
1c008598:	0047c303          	lbu	t1,4(a5)
1c00859c:	0067c583          	lbu	a1,6(a5)
1c0085a0:	0007ce03          	lbu	t3,0(a5)
1c0085a4:	0037c603          	lbu	a2,3(a5)
1c0085a8:	0077c683          	lbu	a3,7(a5)
1c0085ac:	08c2                	slli	a7,a7,0x10
1c0085ae:	0722                	slli	a4,a4,0x8
1c0085b0:	0522                	slli	a0,a0,0x8
1c0085b2:	01176733          	or	a4,a4,a7
1c0085b6:	00656533          	or	a0,a0,t1
1c0085ba:	05c2                	slli	a1,a1,0x10
1c0085bc:	000aa303          	lw	t1,0(s5)
1c0085c0:	004aa883          	lw	a7,4(s5)
1c0085c4:	01c76733          	or	a4,a4,t3
1c0085c8:	0662                	slli	a2,a2,0x18
1c0085ca:	8dc9                	or	a1,a1,a0
1c0085cc:	06e2                	slli	a3,a3,0x18
1c0085ce:	8f51                	or	a4,a4,a2
1c0085d0:	8ecd                	or	a3,a3,a1
1c0085d2:	00e34733          	xor	a4,t1,a4
1c0085d6:	00d8c6b3          	xor	a3,a7,a3
1c0085da:	00eaa023          	sw	a4,0(s5)
1c0085de:	00daa223          	sw	a3,4(s5)
1c0085e2:	07a1                	addi	a5,a5,8
1c0085e4:	0aa1                	addi	s5,s5,8
1c0085e6:	faf813e3          	bne	a6,a5,1c00858c <keccak_absorb.constprop.7+0x134>
1c0085ea:	50be                	lw	ra,236(sp)
1c0085ec:	542e                	lw	s0,232(sp)
1c0085ee:	549e                	lw	s1,228(sp)
1c0085f0:	590e                	lw	s2,224(sp)
1c0085f2:	49fe                	lw	s3,220(sp)
1c0085f4:	4a6e                	lw	s4,216(sp)
1c0085f6:	4ade                	lw	s5,212(sp)
1c0085f8:	616d                	addi	sp,sp,240
1c0085fa:	8082                	ret
1c0085fc:	4701                	li	a4,0
1c0085fe:	b781                	j	1c00853e <keccak_absorb.constprop.7+0xe6>

1c008600 <shake128_absorb>:
1c008600:	7151                	addi	sp,sp,-240
1c008602:	d5a2                	sw	s0,232(sp)
1c008604:	842a                	mv	s0,a0
1c008606:	0c800513          	li	a0,200
1c00860a:	d1ca                	sw	s2,224(sp)
1c00860c:	cfce                	sw	s3,220(sp)
1c00860e:	d786                	sw	ra,236(sp)
1c008610:	d3a6                	sw	s1,228(sp)
1c008612:	cdd2                	sw	s4,216(sp)
1c008614:	892e                	mv	s2,a1
1c008616:	89b2                	mv	s3,a2
1c008618:	711010ef          	jal	ra,1c00a528 <pi_l2_malloc>
1c00861c:	c008                	sw	a0,0(s0)
1c00861e:	1a050663          	beqz	a0,1c0087ca <shake128_absorb+0x1ca>
1c008622:	8a2a                	mv	s4,a0
1c008624:	0c850713          	addi	a4,a0,200
1c008628:	87aa                	mv	a5,a0
1c00862a:	4601                	li	a2,0
1c00862c:	4681                	li	a3,0
1c00862e:	c390                	sw	a2,0(a5)
1c008630:	c3d4                	sw	a3,4(a5)
1c008632:	07a1                	addi	a5,a5,8
1c008634:	fef71be3          	bne	a4,a5,1c00862a <shake128_absorb+0x2a>
1c008638:	0a700793          	li	a5,167
1c00863c:	0937f163          	bleu	s3,a5,1c0086be <shake128_absorb+0xbe>
1c008640:	412a04b3          	sub	s1,s4,s2
1c008644:	0a700413          	li	s0,167
1c008648:	85ca                	mv	a1,s2
1c00864a:	0a890913          	addi	s2,s2,168
1c00864e:	0015c783          	lbu	a5,1(a1)
1c008652:	0025c603          	lbu	a2,2(a1)
1c008656:	0055c803          	lbu	a6,5(a1)
1c00865a:	0045c303          	lbu	t1,4(a1)
1c00865e:	0065c503          	lbu	a0,6(a1)
1c008662:	0005ce03          	lbu	t3,0(a1)
1c008666:	0035c683          	lbu	a3,3(a1)
1c00866a:	0075c703          	lbu	a4,7(a1)
1c00866e:	0642                	slli	a2,a2,0x10
1c008670:	07a2                	slli	a5,a5,0x8
1c008672:	0822                	slli	a6,a6,0x8
1c008674:	00b488b3          	add	a7,s1,a1
1c008678:	8fd1                	or	a5,a5,a2
1c00867a:	00686833          	or	a6,a6,t1
1c00867e:	0542                	slli	a0,a0,0x10
1c008680:	0008a603          	lw	a2,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c008684:	0048a303          	lw	t1,4(a7)
1c008688:	01c7e7b3          	or	a5,a5,t3
1c00868c:	06e2                	slli	a3,a3,0x18
1c00868e:	01056533          	or	a0,a0,a6
1c008692:	0762                	slli	a4,a4,0x18
1c008694:	8fd5                	or	a5,a5,a3
1c008696:	8f49                	or	a4,a4,a0
1c008698:	8fb1                	xor	a5,a5,a2
1c00869a:	00e34733          	xor	a4,t1,a4
1c00869e:	00f8a023          	sw	a5,0(a7)
1c0086a2:	00e8a223          	sw	a4,4(a7)
1c0086a6:	05a1                	addi	a1,a1,8
1c0086a8:	fab913e3          	bne	s2,a1,1c00864e <shake128_absorb+0x4e>
1c0086ac:	85d2                	mv	a1,s4
1c0086ae:	8552                	mv	a0,s4
1c0086b0:	f5898993          	addi	s3,s3,-168
1c0086b4:	3935                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c0086b6:	f5848493          	addi	s1,s1,-168
1c0086ba:	f93467e3          	bltu	s0,s3,1c008648 <shake128_absorb+0x48>
1c0086be:	191c                	addi	a5,sp,176
1c0086c0:	00810813          	addi	a6,sp,8
1c0086c4:	4681                	li	a3,0
1c0086c6:	00d82023          	sw	a3,0(a6)
1c0086ca:	0811                	addi	a6,a6,4
1c0086cc:	ff079ce3          	bne	a5,a6,1c0086c4 <shake128_absorb+0xc4>
1c0086d0:	06098563          	beqz	s3,1c00873a <shake128_absorb+0x13a>
1c0086d4:	fff98793          	addi	a5,s3,-1
1c0086d8:	4709                	li	a4,2
1c0086da:	0ef77663          	bleu	a5,a4,1c0087c6 <shake128_absorb+0x1c6>
1c0086de:	0029d513          	srli	a0,s3,0x2
1c0086e2:	86ca                	mv	a3,s2
1c0086e4:	0038                	addi	a4,sp,8
1c0086e6:	4781                	li	a5,0
1c0086e8:	4290                	lw	a2,0(a3)
1c0086ea:	0785                	addi	a5,a5,1
1c0086ec:	c310                	sw	a2,0(a4)
1c0086ee:	0691                	addi	a3,a3,4
1c0086f0:	0711                	addi	a4,a4,4
1c0086f2:	fea7ebe3          	bltu	a5,a0,1c0086e8 <shake128_absorb+0xe8>
1c0086f6:	ffc9f793          	andi	a5,s3,-4
1c0086fa:	04f98063          	beq	s3,a5,1c00873a <shake128_absorb+0x13a>
1c0086fe:	00f90733          	add	a4,s2,a5
1c008702:	00074683          	lbu	a3,0(a4)
1c008706:	0990                	addi	a2,sp,208
1c008708:	00f60733          	add	a4,a2,a5
1c00870c:	f2d70c23          	sb	a3,-200(a4)
1c008710:	00178713          	addi	a4,a5,1
1c008714:	03377363          	bleu	s3,a4,1c00873a <shake128_absorb+0x13a>
1c008718:	00e906b3          	add	a3,s2,a4
1c00871c:	0006c683          	lbu	a3,0(a3)
1c008720:	9732                	add	a4,a4,a2
1c008722:	f2d70c23          	sb	a3,-200(a4)
1c008726:	0789                	addi	a5,a5,2
1c008728:	0137f963          	bleu	s3,a5,1c00873a <shake128_absorb+0x13a>
1c00872c:	00f905b3          	add	a1,s2,a5
1c008730:	0005c703          	lbu	a4,0(a1)
1c008734:	97b2                	add	a5,a5,a2
1c008736:	f2e78c23          	sb	a4,-200(a5)
1c00873a:	0994                	addi	a3,sp,208
1c00873c:	47fd                	li	a5,31
1c00873e:	99b6                	add	s3,s3,a3
1c008740:	f2f98c23          	sb	a5,-200(s3)
1c008744:	0af14703          	lbu	a4,175(sp)
1c008748:	003c                	addi	a5,sp,8
1c00874a:	f8076713          	ori	a4,a4,-128
1c00874e:	0ae107a3          	sb	a4,175(sp)
1c008752:	40fa0a33          	sub	s4,s4,a5
1c008756:	0017c703          	lbu	a4,1(a5)
1c00875a:	0027c303          	lbu	t1,2(a5)
1c00875e:	0057c503          	lbu	a0,5(a5)
1c008762:	0047ce03          	lbu	t3,4(a5)
1c008766:	0067c583          	lbu	a1,6(a5)
1c00876a:	0007ce83          	lbu	t4,0(a5)
1c00876e:	0037c603          	lbu	a2,3(a5)
1c008772:	0077c683          	lbu	a3,7(a5)
1c008776:	0342                	slli	t1,t1,0x10
1c008778:	0722                	slli	a4,a4,0x8
1c00877a:	0522                	slli	a0,a0,0x8
1c00877c:	00fa08b3          	add	a7,s4,a5
1c008780:	00676733          	or	a4,a4,t1
1c008784:	01c56533          	or	a0,a0,t3
1c008788:	05c2                	slli	a1,a1,0x10
1c00878a:	0008ae03          	lw	t3,0(a7)
1c00878e:	0048a303          	lw	t1,4(a7)
1c008792:	01d76733          	or	a4,a4,t4
1c008796:	0662                	slli	a2,a2,0x18
1c008798:	8dc9                	or	a1,a1,a0
1c00879a:	06e2                	slli	a3,a3,0x18
1c00879c:	8f51                	or	a4,a4,a2
1c00879e:	8ecd                	or	a3,a3,a1
1c0087a0:	00ee4733          	xor	a4,t3,a4
1c0087a4:	00d346b3          	xor	a3,t1,a3
1c0087a8:	00e8a023          	sw	a4,0(a7)
1c0087ac:	00d8a223          	sw	a3,4(a7)
1c0087b0:	07a1                	addi	a5,a5,8
1c0087b2:	faf812e3          	bne	a6,a5,1c008756 <shake128_absorb+0x156>
1c0087b6:	50be                	lw	ra,236(sp)
1c0087b8:	542e                	lw	s0,232(sp)
1c0087ba:	549e                	lw	s1,228(sp)
1c0087bc:	590e                	lw	s2,224(sp)
1c0087be:	49fe                	lw	s3,220(sp)
1c0087c0:	4a6e                	lw	s4,216(sp)
1c0087c2:	616d                	addi	sp,sp,240
1c0087c4:	8082                	ret
1c0087c6:	4781                	li	a5,0
1c0087c8:	bf1d                	j	1c0086fe <shake128_absorb+0xfe>
1c0087ca:	06f00513          	li	a0,111
1c0087ce:	3a1010ef          	jal	ra,1c00a36e <exit>

1c0087d2 <shake128_squeezeblocks>:
1c0087d2:	1101                	addi	sp,sp,-32
1c0087d4:	c452                	sw	s4,8(sp)
1c0087d6:	ce06                	sw	ra,28(sp)
1c0087d8:	cc22                	sw	s0,24(sp)
1c0087da:	ca26                	sw	s1,20(sp)
1c0087dc:	c84a                	sw	s2,16(sp)
1c0087de:	c64e                	sw	s3,12(sp)
1c0087e0:	c256                	sw	s5,4(sp)
1c0087e2:	00062a03          	lw	s4,0(a2)
1c0087e6:	cdc9                	beqz	a1,1c008880 <shake128_squeezeblocks+0xae>
1c0087e8:	7941                	lui	s2,0xffff0
1c0087ea:	ff0104b7          	lui	s1,0xff010
1c0087ee:	01000437          	lui	s0,0x1000
1c0087f2:	89ae                	mv	s3,a1
1c0087f4:	8aaa                	mv	s5,a0
1c0087f6:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c0087fa:	14fd                	addi	s1,s1,-1
1c0087fc:	147d                	addi	s0,s0,-1
1c0087fe:	85d2                	mv	a1,s4
1c008800:	8552                	mv	a0,s4
1c008802:	34fd                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c008804:	85d6                	mv	a1,s5
1c008806:	8852                	mv	a6,s4
1c008808:	0a8a8513          	addi	a0,s5,168
1c00880c:	00082603          	lw	a2,0(a6)
1c008810:	00482683          	lw	a3,4(a6)
1c008814:	00865313          	srli	t1,a2,0x8
1c008818:	0086d893          	srli	a7,a3,0x8
1c00881c:	0ff67713          	andi	a4,a2,255
1c008820:	0ff6f793          	andi	a5,a3,255
1c008824:	0ff37313          	andi	t1,t1,255
1c008828:	0ff8f893          	andi	a7,a7,255
1c00882c:	0322                	slli	t1,t1,0x8
1c00882e:	08a2                	slli	a7,a7,0x8
1c008830:	01277733          	and	a4,a4,s2
1c008834:	0127f7b3          	and	a5,a5,s2
1c008838:	00676733          	or	a4,a4,t1
1c00883c:	0117e7b3          	or	a5,a5,a7
1c008840:	00ff0337          	lui	t1,0xff0
1c008844:	00ff08b7          	lui	a7,0xff0
1c008848:	00667333          	and	t1,a2,t1
1c00884c:	0116f8b3          	and	a7,a3,a7
1c008850:	8f65                	and	a4,a4,s1
1c008852:	8fe5                	and	a5,a5,s1
1c008854:	00676733          	or	a4,a4,t1
1c008858:	8261                	srli	a2,a2,0x18
1c00885a:	0117e7b3          	or	a5,a5,a7
1c00885e:	82e1                	srli	a3,a3,0x18
1c008860:	0662                	slli	a2,a2,0x18
1c008862:	8f61                	and	a4,a4,s0
1c008864:	06e2                	slli	a3,a3,0x18
1c008866:	8fe1                	and	a5,a5,s0
1c008868:	8f51                	or	a4,a4,a2
1c00886a:	8fd5                	or	a5,a5,a3
1c00886c:	c198                	sw	a4,0(a1)
1c00886e:	c1dc                	sw	a5,4(a1)
1c008870:	05a1                	addi	a1,a1,8
1c008872:	0821                	addi	a6,a6,8
1c008874:	f8b51ce3          	bne	a0,a1,1c00880c <shake128_squeezeblocks+0x3a>
1c008878:	19fd                	addi	s3,s3,-1
1c00887a:	8aaa                	mv	s5,a0
1c00887c:	f80991e3          	bnez	s3,1c0087fe <shake128_squeezeblocks+0x2c>
1c008880:	40f2                	lw	ra,28(sp)
1c008882:	4462                	lw	s0,24(sp)
1c008884:	44d2                	lw	s1,20(sp)
1c008886:	4942                	lw	s2,16(sp)
1c008888:	49b2                	lw	s3,12(sp)
1c00888a:	4a22                	lw	s4,8(sp)
1c00888c:	4a92                	lw	s5,4(sp)
1c00888e:	6105                	addi	sp,sp,32
1c008890:	8082                	ret

1c008892 <shake128_ctx_release>:
1c008892:	4108                	lw	a0,0(a0)
1c008894:	0c800593          	li	a1,200
1c008898:	49d0106f          	j	1c00a534 <pi_l2_free>

1c00889c <shake256>:
1c00889c:	7131                	addi	sp,sp,-192
1c00889e:	db26                	sw	s1,180(sp)
1c0088a0:	d94a                	sw	s2,176(sp)
1c0088a2:	08800493          	li	s1,136
1c0088a6:	892a                	mv	s2,a0
1c0088a8:	0c800513          	li	a0,200
1c0088ac:	dd22                	sw	s0,184(sp)
1c0088ae:	d74e                	sw	s3,172(sp)
1c0088b0:	d552                	sw	s4,168(sp)
1c0088b2:	df06                	sw	ra,188(sp)
1c0088b4:	d356                	sw	s5,164(sp)
1c0088b6:	d15a                	sw	s6,160(sp)
1c0088b8:	cf5e                	sw	s7,156(sp)
1c0088ba:	cd62                	sw	s8,152(sp)
1c0088bc:	cb66                	sw	s9,148(sp)
1c0088be:	89ae                	mv	s3,a1
1c0088c0:	8432                	mv	s0,a2
1c0088c2:	8a36                	mv	s4,a3
1c0088c4:	0295d4b3          	divu	s1,a1,s1
1c0088c8:	461010ef          	jal	ra,1c00a528 <pi_l2_malloc>
1c0088cc:	20050163          	beqz	a0,1c008ace <shake256+0x232>
1c0088d0:	46fd                	li	a3,31
1c0088d2:	8652                	mv	a2,s4
1c0088d4:	85a2                	mv	a1,s0
1c0088d6:	8b2a                	mv	s6,a0
1c0088d8:	3641                	jal	1c008458 <keccak_absorb.constprop.7>
1c0088da:	c4dd                	beqz	s1,1c008988 <shake256+0xec>
1c0088dc:	00449713          	slli	a4,s1,0x4
1c0088e0:	00970433          	add	s0,a4,s1
1c0088e4:	040e                	slli	s0,s0,0x3
1c0088e6:	7bc1                	lui	s7,0xffff0
1c0088e8:	ff010ab7          	lui	s5,0xff010
1c0088ec:	01000a37          	lui	s4,0x1000
1c0088f0:	412b0c33          	sub	s8,s6,s2
1c0088f4:	944a                	add	s0,s0,s2
1c0088f6:	8cca                	mv	s9,s2
1c0088f8:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0088fc:	1afd                	addi	s5,s5,-1
1c0088fe:	1a7d                	addi	s4,s4,-1
1c008900:	85da                	mv	a1,s6
1c008902:	855a                	mv	a0,s6
1c008904:	32f5                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c008906:	8666                	mv	a2,s9
1c008908:	088c8593          	addi	a1,s9,136
1c00890c:	00cc07b3          	add	a5,s8,a2
1c008910:	4388                	lw	a0,0(a5)
1c008912:	43d4                	lw	a3,4(a5)
1c008914:	00855893          	srli	a7,a0,0x8
1c008918:	0086d813          	srli	a6,a3,0x8
1c00891c:	0ff57713          	andi	a4,a0,255
1c008920:	0ff6f793          	andi	a5,a3,255
1c008924:	0ff8f893          	andi	a7,a7,255
1c008928:	0ff87813          	andi	a6,a6,255
1c00892c:	08a2                	slli	a7,a7,0x8
1c00892e:	0822                	slli	a6,a6,0x8
1c008930:	01777733          	and	a4,a4,s7
1c008934:	0177f7b3          	and	a5,a5,s7
1c008938:	01176733          	or	a4,a4,a7
1c00893c:	0107e7b3          	or	a5,a5,a6
1c008940:	00ff08b7          	lui	a7,0xff0
1c008944:	00ff0837          	lui	a6,0xff0
1c008948:	011578b3          	and	a7,a0,a7
1c00894c:	0106f833          	and	a6,a3,a6
1c008950:	01577733          	and	a4,a4,s5
1c008954:	0157f7b3          	and	a5,a5,s5
1c008958:	01176733          	or	a4,a4,a7
1c00895c:	8161                	srli	a0,a0,0x18
1c00895e:	0107e7b3          	or	a5,a5,a6
1c008962:	82e1                	srli	a3,a3,0x18
1c008964:	0562                	slli	a0,a0,0x18
1c008966:	01477733          	and	a4,a4,s4
1c00896a:	06e2                	slli	a3,a3,0x18
1c00896c:	0147f7b3          	and	a5,a5,s4
1c008970:	8f49                	or	a4,a4,a0
1c008972:	8fd5                	or	a5,a5,a3
1c008974:	c218                	sw	a4,0(a2)
1c008976:	c25c                	sw	a5,4(a2)
1c008978:	0621                	addi	a2,a2,8
1c00897a:	f8c599e3          	bne	a1,a2,1c00890c <shake256+0x70>
1c00897e:	8cae                	mv	s9,a1
1c008980:	f78c0c13          	addi	s8,s8,-136
1c008984:	f6b41ee3          	bne	s0,a1,1c008900 <shake256+0x64>
1c008988:	08800793          	li	a5,136
1c00898c:	02f9f9b3          	remu	s3,s3,a5
1c008990:	02099363          	bnez	s3,1c0089b6 <shake256+0x11a>
1c008994:	546a                	lw	s0,184(sp)
1c008996:	50fa                	lw	ra,188(sp)
1c008998:	54da                	lw	s1,180(sp)
1c00899a:	594a                	lw	s2,176(sp)
1c00899c:	59ba                	lw	s3,172(sp)
1c00899e:	5a2a                	lw	s4,168(sp)
1c0089a0:	5a9a                	lw	s5,164(sp)
1c0089a2:	4bfa                	lw	s7,156(sp)
1c0089a4:	4c6a                	lw	s8,152(sp)
1c0089a6:	4cda                	lw	s9,148(sp)
1c0089a8:	855a                	mv	a0,s6
1c0089aa:	5b0a                	lw	s6,160(sp)
1c0089ac:	0c800593          	li	a1,200
1c0089b0:	6129                	addi	sp,sp,192
1c0089b2:	3830106f          	j	1c00a534 <pi_l2_free>
1c0089b6:	85da                	mv	a1,s6
1c0089b8:	855a                	mv	a0,s6
1c0089ba:	3a1d                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c0089bc:	002c                	addi	a1,sp,8
1c0089be:	78c1                	lui	a7,0xffff0
1c0089c0:	ff010837          	lui	a6,0xff010
1c0089c4:	01000537          	lui	a0,0x1000
1c0089c8:	09010e13          	addi	t3,sp,144
1c0089cc:	862e                	mv	a2,a1
1c0089ce:	40bb0333          	sub	t1,s6,a1
1c0089d2:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0089d6:	187d                	addi	a6,a6,-1
1c0089d8:	157d                	addi	a0,a0,-1
1c0089da:	00c307b3          	add	a5,t1,a2
1c0089de:	0007ae83          	lw	t4,0(a5)
1c0089e2:	43d4                	lw	a3,4(a5)
1c0089e4:	008edf93          	srli	t6,t4,0x8
1c0089e8:	0086df13          	srli	t5,a3,0x8
1c0089ec:	0ffef713          	andi	a4,t4,255
1c0089f0:	0ff6f793          	andi	a5,a3,255
1c0089f4:	0fffff93          	andi	t6,t6,255
1c0089f8:	0fff7f13          	andi	t5,t5,255
1c0089fc:	0fa2                	slli	t6,t6,0x8
1c0089fe:	0f22                	slli	t5,t5,0x8
1c008a00:	01177733          	and	a4,a4,a7
1c008a04:	0117f7b3          	and	a5,a5,a7
1c008a08:	01f76733          	or	a4,a4,t6
1c008a0c:	01e7e7b3          	or	a5,a5,t5
1c008a10:	00ff0fb7          	lui	t6,0xff0
1c008a14:	00ff0f37          	lui	t5,0xff0
1c008a18:	01feffb3          	and	t6,t4,t6
1c008a1c:	01e6ff33          	and	t5,a3,t5
1c008a20:	01077733          	and	a4,a4,a6
1c008a24:	0107f7b3          	and	a5,a5,a6
1c008a28:	01f76733          	or	a4,a4,t6
1c008a2c:	018ede93          	srli	t4,t4,0x18
1c008a30:	01e7e7b3          	or	a5,a5,t5
1c008a34:	82e1                	srli	a3,a3,0x18
1c008a36:	0ee2                	slli	t4,t4,0x18
1c008a38:	8f69                	and	a4,a4,a0
1c008a3a:	06e2                	slli	a3,a3,0x18
1c008a3c:	8fe9                	and	a5,a5,a0
1c008a3e:	01d76733          	or	a4,a4,t4
1c008a42:	8fd5                	or	a5,a5,a3
1c008a44:	c218                	sw	a4,0(a2)
1c008a46:	c25c                	sw	a5,4(a2)
1c008a48:	0621                	addi	a2,a2,8
1c008a4a:	f8ce18e3          	bne	t3,a2,1c0089da <shake256+0x13e>
1c008a4e:	fff98793          	addi	a5,s3,-1
1c008a52:	4709                	li	a4,2
1c008a54:	06f77963          	bleu	a5,a4,1c008ac6 <shake256+0x22a>
1c008a58:	00449713          	slli	a4,s1,0x4
1c008a5c:	009707b3          	add	a5,a4,s1
1c008a60:	078e                	slli	a5,a5,0x3
1c008a62:	0029d513          	srli	a0,s3,0x2
1c008a66:	97ca                	add	a5,a5,s2
1c008a68:	4681                	li	a3,0
1c008a6a:	4190                	lw	a2,0(a1)
1c008a6c:	0685                	addi	a3,a3,1
1c008a6e:	c390                	sw	a2,0(a5)
1c008a70:	0591                	addi	a1,a1,4
1c008a72:	0791                	addi	a5,a5,4
1c008a74:	fea6ebe3          	bltu	a3,a0,1c008a6a <shake256+0x1ce>
1c008a78:	ffc9f693          	andi	a3,s3,-4
1c008a7c:	f0d98ce3          	beq	s3,a3,1c008994 <shake256+0xf8>
1c008a80:	009707b3          	add	a5,a4,s1
1c008a84:	090c                	addi	a1,sp,144
1c008a86:	00d58733          	add	a4,a1,a3
1c008a8a:	078e                	slli	a5,a5,0x3
1c008a8c:	f7874603          	lbu	a2,-136(a4)
1c008a90:	97ca                	add	a5,a5,s2
1c008a92:	00d78733          	add	a4,a5,a3
1c008a96:	00c70023          	sb	a2,0(a4)
1c008a9a:	00168713          	addi	a4,a3,1
1c008a9e:	ef377be3          	bleu	s3,a4,1c008994 <shake256+0xf8>
1c008aa2:	00e58633          	add	a2,a1,a4
1c008aa6:	f7864603          	lbu	a2,-136(a2)
1c008aaa:	973e                	add	a4,a4,a5
1c008aac:	00c70023          	sb	a2,0(a4)
1c008ab0:	0689                	addi	a3,a3,2
1c008ab2:	ef36f1e3          	bleu	s3,a3,1c008994 <shake256+0xf8>
1c008ab6:	00d58733          	add	a4,a1,a3
1c008aba:	f7874703          	lbu	a4,-136(a4)
1c008abe:	97b6                	add	a5,a5,a3
1c008ac0:	00e78023          	sb	a4,0(a5)
1c008ac4:	bdc1                	j	1c008994 <shake256+0xf8>
1c008ac6:	4681                	li	a3,0
1c008ac8:	00449713          	slli	a4,s1,0x4
1c008acc:	bf55                	j	1c008a80 <shake256+0x1e4>
1c008ace:	06f00513          	li	a0,111
1c008ad2:	09d010ef          	jal	ra,1c00a36e <exit>

1c008ad6 <sha3_256>:
1c008ad6:	7111                	addi	sp,sp,-256
1c008ad8:	dda2                	sw	s0,248(sp)
1c008ada:	4699                	li	a3,6
1c008adc:	842a                	mv	s0,a0
1c008ade:	0028                	addi	a0,sp,8
1c008ae0:	df86                	sw	ra,252(sp)
1c008ae2:	dba6                	sw	s1,244(sp)
1c008ae4:	d9ca                	sw	s2,240(sp)
1c008ae6:	d7ce                	sw	s3,236(sp)
1c008ae8:	d5d2                	sw	s4,232(sp)
1c008aea:	d3d6                	sw	s5,228(sp)
1c008aec:	d1da                	sw	s6,224(sp)
1c008aee:	cfde                	sw	s7,220(sp)
1c008af0:	cde2                	sw	s8,216(sp)
1c008af2:	cbe6                	sw	s9,212(sp)
1c008af4:	c9ea                	sw	s10,208(sp)
1c008af6:	328d                	jal	1c008458 <keccak_absorb.constprop.7>
1c008af8:	002c                	addi	a1,sp,8
1c008afa:	852e                	mv	a0,a1
1c008afc:	ff4ff0ef          	jal	ra,1c0082f0 <KeccakF1600_StatePermute>
1c008b00:	4f32                	lw	t5,12(sp)
1c008b02:	4922                	lw	s2,8(sp)
1c008b04:	4ec2                	lw	t4,16(sp)
1c008b06:	4e52                	lw	t3,20(sp)
1c008b08:	4362                	lw	t1,24(sp)
1c008b0a:	44f2                	lw	s1,28(sp)
1c008b0c:	5382                	lw	t2,32(sp)
1c008b0e:	5292                	lw	t0,36(sp)
1c008b10:	00895813          	srli	a6,s2,0x8
1c008b14:	008f5513          	srli	a0,t5,0x8
1c008b18:	008ed593          	srli	a1,t4,0x8
1c008b1c:	008e5613          	srli	a2,t3,0x8
1c008b20:	00835693          	srli	a3,t1,0x8
1c008b24:	0084d713          	srli	a4,s1,0x8
1c008b28:	0083d993          	srli	s3,t2,0x8
1c008b2c:	0082df93          	srli	t6,t0,0x8
1c008b30:	0ff87813          	andi	a6,a6,255
1c008b34:	0ff57513          	andi	a0,a0,255
1c008b38:	0ff5f593          	andi	a1,a1,255
1c008b3c:	0ff67613          	andi	a2,a2,255
1c008b40:	0ff6f693          	andi	a3,a3,255
1c008b44:	0ff77713          	andi	a4,a4,255
1c008b48:	0ff9f993          	andi	s3,s3,255
1c008b4c:	0fffff93          	andi	t6,t6,255
1c008b50:	0fff7d13          	andi	s10,t5,255
1c008b54:	0ffefc93          	andi	s9,t4,255
1c008b58:	0ffe7c13          	andi	s8,t3,255
1c008b5c:	0ff37b93          	andi	s7,t1,255
1c008b60:	0ff4fb13          	andi	s6,s1,255
1c008b64:	0ff3fa93          	andi	s5,t2,255
1c008b68:	0ff2fa13          	andi	s4,t0,255
1c008b6c:	0822                	slli	a6,a6,0x8
1c008b6e:	0ff97893          	andi	a7,s2,255
1c008b72:	0522                	slli	a0,a0,0x8
1c008b74:	05a2                	slli	a1,a1,0x8
1c008b76:	0622                	slli	a2,a2,0x8
1c008b78:	06a2                	slli	a3,a3,0x8
1c008b7a:	0722                	slli	a4,a4,0x8
1c008b7c:	09a2                	slli	s3,s3,0x8
1c008b7e:	0fa2                	slli	t6,t6,0x8
1c008b80:	ff0107b7          	lui	a5,0xff010
1c008b84:	17fd                	addi	a5,a5,-1
1c008b86:	01fa6fb3          	or	t6,s4,t6
1c008b8a:	0108e8b3          	or	a7,a7,a6
1c008b8e:	00ff0a37          	lui	s4,0xff0
1c008b92:	00ad6833          	or	a6,s10,a0
1c008b96:	00bce533          	or	a0,s9,a1
1c008b9a:	00ff0d37          	lui	s10,0xff0
1c008b9e:	00cc65b3          	or	a1,s8,a2
1c008ba2:	00ff0cb7          	lui	s9,0xff0
1c008ba6:	00dbe633          	or	a2,s7,a3
1c008baa:	00ff0c37          	lui	s8,0xff0
1c008bae:	00eb66b3          	or	a3,s6,a4
1c008bb2:	00ff0bb7          	lui	s7,0xff0
1c008bb6:	013ae733          	or	a4,s5,s3
1c008bba:	00ff0b37          	lui	s6,0xff0
1c008bbe:	00ff0ab7          	lui	s5,0xff0
1c008bc2:	00ff09b7          	lui	s3,0xff0
1c008bc6:	01a97d33          	and	s10,s2,s10
1c008bca:	019f7cb3          	and	s9,t5,s9
1c008bce:	018efc33          	and	s8,t4,s8
1c008bd2:	017e7bb3          	and	s7,t3,s7
1c008bd6:	01637b33          	and	s6,t1,s6
1c008bda:	0154fab3          	and	s5,s1,s5
1c008bde:	0143fa33          	and	s4,t2,s4
1c008be2:	0132f9b3          	and	s3,t0,s3
1c008be6:	00f8f8b3          	and	a7,a7,a5
1c008bea:	00f87833          	and	a6,a6,a5
1c008bee:	8d7d                	and	a0,a0,a5
1c008bf0:	8dfd                	and	a1,a1,a5
1c008bf2:	8e7d                	and	a2,a2,a5
1c008bf4:	8efd                	and	a3,a3,a5
1c008bf6:	8f7d                	and	a4,a4,a5
1c008bf8:	00fff7b3          	and	a5,t6,a5
1c008bfc:	01000fb7          	lui	t6,0x1000
1c008c00:	1ffd                	addi	t6,t6,-1
1c008c02:	01a8e8b3          	or	a7,a7,s10
1c008c06:	01986833          	or	a6,a6,s9
1c008c0a:	01856533          	or	a0,a0,s8
1c008c0e:	0175e5b3          	or	a1,a1,s7
1c008c12:	01666633          	or	a2,a2,s6
1c008c16:	0156e6b3          	or	a3,a3,s5
1c008c1a:	01476733          	or	a4,a4,s4
1c008c1e:	0137e7b3          	or	a5,a5,s3
1c008c22:	01895913          	srli	s2,s2,0x18
1c008c26:	018f5f13          	srli	t5,t5,0x18
1c008c2a:	018ede93          	srli	t4,t4,0x18
1c008c2e:	018e5e13          	srli	t3,t3,0x18
1c008c32:	01835313          	srli	t1,t1,0x18
1c008c36:	80e1                	srli	s1,s1,0x18
1c008c38:	0183d393          	srli	t2,t2,0x18
1c008c3c:	0182d293          	srli	t0,t0,0x18
1c008c40:	0962                	slli	s2,s2,0x18
1c008c42:	04e2                	slli	s1,s1,0x18
1c008c44:	01f8f8b3          	and	a7,a7,t6
1c008c48:	0f62                	slli	t5,t5,0x18
1c008c4a:	01f87833          	and	a6,a6,t6
1c008c4e:	0ee2                	slli	t4,t4,0x18
1c008c50:	01f57533          	and	a0,a0,t6
1c008c54:	0e62                	slli	t3,t3,0x18
1c008c56:	01f5f5b3          	and	a1,a1,t6
1c008c5a:	0362                	slli	t1,t1,0x18
1c008c5c:	01f67633          	and	a2,a2,t6
1c008c60:	01f6f6b3          	and	a3,a3,t6
1c008c64:	03e2                	slli	t2,t2,0x18
1c008c66:	01f77733          	and	a4,a4,t6
1c008c6a:	02e2                	slli	t0,t0,0x18
1c008c6c:	01f7f7b3          	and	a5,a5,t6
1c008c70:	0128e8b3          	or	a7,a7,s2
1c008c74:	8ec5                	or	a3,a3,s1
1c008c76:	01e86833          	or	a6,a6,t5
1c008c7a:	01d56533          	or	a0,a0,t4
1c008c7e:	01c5e5b3          	or	a1,a1,t3
1c008c82:	00666633          	or	a2,a2,t1
1c008c86:	00776733          	or	a4,a4,t2
1c008c8a:	0057e7b3          	or	a5,a5,t0
1c008c8e:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c008c92:	01042223          	sw	a6,4(s0)
1c008c96:	c408                	sw	a0,8(s0)
1c008c98:	c44c                	sw	a1,12(s0)
1c008c9a:	c810                	sw	a2,16(s0)
1c008c9c:	c854                	sw	a3,20(s0)
1c008c9e:	cc18                	sw	a4,24(s0)
1c008ca0:	cc5c                	sw	a5,28(s0)
1c008ca2:	50fe                	lw	ra,252(sp)
1c008ca4:	546e                	lw	s0,248(sp)
1c008ca6:	54de                	lw	s1,244(sp)
1c008ca8:	594e                	lw	s2,240(sp)
1c008caa:	59be                	lw	s3,236(sp)
1c008cac:	5a2e                	lw	s4,232(sp)
1c008cae:	5a9e                	lw	s5,228(sp)
1c008cb0:	5b0e                	lw	s6,224(sp)
1c008cb2:	4bfe                	lw	s7,220(sp)
1c008cb4:	4c6e                	lw	s8,216(sp)
1c008cb6:	4cde                	lw	s9,212(sp)
1c008cb8:	4d4e                	lw	s10,208(sp)
1c008cba:	6111                	addi	sp,sp,256
1c008cbc:	8082                	ret

1c008cbe <sha3_512>:
1c008cbe:	db010113          	addi	sp,sp,-592
1c008cc2:	24812423          	sw	s0,584(sp)
1c008cc6:	23312e23          	sw	s3,572(sp)
1c008cca:	23412c23          	sw	s4,568(sp)
1c008cce:	24112623          	sw	ra,588(sp)
1c008cd2:	24912223          	sw	s1,580(sp)
1c008cd6:	25212023          	sw	s2,576(sp)
1c008cda:	23512a23          	sw	s5,564(sp)
1c008cde:	23612823          	sw	s6,560(sp)
1c008ce2:	23712623          	sw	s7,556(sp)
1c008ce6:	23812423          	sw	s8,552(sp)
1c008cea:	23912223          	sw	s9,548(sp)
1c008cee:	23a12023          	sw	s10,544(sp)
1c008cf2:	21b12e23          	sw	s11,540(sp)
1c008cf6:	842a                	mv	s0,a0
1c008cf8:	8a32                	mv	s4,a2
1c008cfa:	14810993          	addi	s3,sp,328
1c008cfe:	011c                	addi	a5,sp,128
1c008d00:	4601                	li	a2,0
1c008d02:	4681                	li	a3,0
1c008d04:	c390                	sw	a2,0(a5)
1c008d06:	c3d4                	sw	a3,4(a5)
1c008d08:	07a1                	addi	a5,a5,8
1c008d0a:	fef99be3          	bne	s3,a5,1c008d00 <sha3_512+0x42>
1c008d0e:	04700793          	li	a5,71
1c008d12:	0747fe63          	bleu	s4,a5,1c008d8e <sha3_512+0xd0>
1c008d16:	04700493          	li	s1,71
1c008d1a:	87ae                	mv	a5,a1
1c008d1c:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c008d20:	0114                	addi	a3,sp,128
1c008d22:	0017c703          	lbu	a4,1(a5)
1c008d26:	0027c583          	lbu	a1,2(a5)
1c008d2a:	0057c883          	lbu	a7,5(a5)
1c008d2e:	0047c303          	lbu	t1,4(a5)
1c008d32:	0067c803          	lbu	a6,6(a5)
1c008d36:	0007ce03          	lbu	t3,0(a5)
1c008d3a:	0037c503          	lbu	a0,3(a5)
1c008d3e:	0077c603          	lbu	a2,7(a5)
1c008d42:	05c2                	slli	a1,a1,0x10
1c008d44:	0722                	slli	a4,a4,0x8
1c008d46:	08a2                	slli	a7,a7,0x8
1c008d48:	8f4d                	or	a4,a4,a1
1c008d4a:	0068e8b3          	or	a7,a7,t1
1c008d4e:	0842                	slli	a6,a6,0x10
1c008d50:	428c                	lw	a1,0(a3)
1c008d52:	0046a303          	lw	t1,4(a3)
1c008d56:	01c76733          	or	a4,a4,t3
1c008d5a:	0562                	slli	a0,a0,0x18
1c008d5c:	01186833          	or	a6,a6,a7
1c008d60:	0662                	slli	a2,a2,0x18
1c008d62:	8f49                	or	a4,a4,a0
1c008d64:	01066633          	or	a2,a2,a6
1c008d68:	8f2d                	xor	a4,a4,a1
1c008d6a:	00c34633          	xor	a2,t1,a2
1c008d6e:	c298                	sw	a4,0(a3)
1c008d70:	c2d0                	sw	a2,4(a3)
1c008d72:	07a1                	addi	a5,a5,8
1c008d74:	06a1                	addi	a3,a3,8
1c008d76:	faf916e3          	bne	s2,a5,1c008d22 <sha3_512+0x64>
1c008d7a:	010c                	addi	a1,sp,128
1c008d7c:	852e                	mv	a0,a1
1c008d7e:	d72ff0ef          	jal	ra,1c0082f0 <KeccakF1600_StatePermute>
1c008d82:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c008d86:	87ca                	mv	a5,s2
1c008d88:	f944eae3          	bltu	s1,s4,1c008d1c <sha3_512+0x5e>
1c008d8c:	85ca                	mv	a1,s2
1c008d8e:	0b18                	addi	a4,sp,400
1c008d90:	87ce                	mv	a5,s3
1c008d92:	4681                	li	a3,0
1c008d94:	c394                	sw	a3,0(a5)
1c008d96:	0791                	addi	a5,a5,4
1c008d98:	fef71de3          	bne	a4,a5,1c008d92 <sha3_512+0xd4>
1c008d9c:	060a0563          	beqz	s4,1c008e06 <sha3_512+0x148>
1c008da0:	fffa0793          	addi	a5,s4,-1
1c008da4:	4709                	li	a4,2
1c008da6:	06f772e3          	bleu	a5,a4,1c00960a <sha3_512+0x94c>
1c008daa:	002a5613          	srli	a2,s4,0x2
1c008dae:	872e                	mv	a4,a1
1c008db0:	4781                	li	a5,0
1c008db2:	4314                	lw	a3,0(a4)
1c008db4:	0785                	addi	a5,a5,1
1c008db6:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c008dba:	0711                	addi	a4,a4,4
1c008dbc:	0991                	addi	s3,s3,4
1c008dbe:	fec7eae3          	bltu	a5,a2,1c008db2 <sha3_512+0xf4>
1c008dc2:	ffca7793          	andi	a5,s4,-4
1c008dc6:	04fa0063          	beq	s4,a5,1c008e06 <sha3_512+0x148>
1c008dca:	00f58733          	add	a4,a1,a5
1c008dce:	00074683          	lbu	a3,0(a4)
1c008dd2:	21010813          	addi	a6,sp,528
1c008dd6:	00f80733          	add	a4,a6,a5
1c008dda:	f2d70c23          	sb	a3,-200(a4)
1c008dde:	00178713          	addi	a4,a5,1
1c008de2:	03477263          	bleu	s4,a4,1c008e06 <sha3_512+0x148>
1c008de6:	00e586b3          	add	a3,a1,a4
1c008dea:	0006c683          	lbu	a3,0(a3)
1c008dee:	9742                	add	a4,a4,a6
1c008df0:	f2d70c23          	sb	a3,-200(a4)
1c008df4:	0789                	addi	a5,a5,2
1c008df6:	0147f863          	bleu	s4,a5,1c008e06 <sha3_512+0x148>
1c008dfa:	95be                	add	a1,a1,a5
1c008dfc:	0005c703          	lbu	a4,0(a1)
1c008e00:	97c2                	add	a5,a5,a6
1c008e02:	f2e78c23          	sb	a4,-200(a5)
1c008e06:	21010893          	addi	a7,sp,528
1c008e0a:	9a46                	add	s4,s4,a7
1c008e0c:	4799                	li	a5,6
1c008e0e:	f2fa0c23          	sb	a5,-200(s4)
1c008e12:	14a14703          	lbu	a4,330(sp)
1c008e16:	14914f03          	lbu	t5,329(sp)
1c008e1a:	15214783          	lbu	a5,338(sp)
1c008e1e:	15114e83          	lbu	t4,337(sp)
1c008e22:	15514303          	lbu	t1,341(sp)
1c008e26:	15414383          	lbu	t2,340(sp)
1c008e2a:	15614803          	lbu	a6,342(sp)
1c008e2e:	14814283          	lbu	t0,328(sp)
1c008e32:	14b14503          	lbu	a0,331(sp)
1c008e36:	15014f83          	lbu	t6,336(sp)
1c008e3a:	15314603          	lbu	a2,339(sp)
1c008e3e:	15714683          	lbu	a3,343(sp)
1c008e42:	0f22                	slli	t5,t5,0x8
1c008e44:	0ea2                	slli	t4,t4,0x8
1c008e46:	0742                	slli	a4,a4,0x10
1c008e48:	07c2                	slli	a5,a5,0x10
1c008e4a:	0322                	slli	t1,t1,0x8
1c008e4c:	14d14e03          	lbu	t3,333(sp)
1c008e50:	00736333          	or	t1,t1,t2
1c008e54:	01e76733          	or	a4,a4,t5
1c008e58:	01d7e7b3          	or	a5,a5,t4
1c008e5c:	0842                	slli	a6,a6,0x10
1c008e5e:	14c14483          	lbu	s1,332(sp)
1c008e62:	14e14883          	lbu	a7,334(sp)
1c008e66:	00576733          	or	a4,a4,t0
1c008e6a:	01f7e7b3          	or	a5,a5,t6
1c008e6e:	00686833          	or	a6,a6,t1
1c008e72:	0662                	slli	a2,a2,0x18
1c008e74:	06e2                	slli	a3,a3,0x18
1c008e76:	0562                	slli	a0,a0,0x18
1c008e78:	14f14583          	lbu	a1,335(sp)
1c008e7c:	8d59                	or	a0,a0,a4
1c008e7e:	0e22                	slli	t3,t3,0x8
1c008e80:	00f66733          	or	a4,a2,a5
1c008e84:	0106e7b3          	or	a5,a3,a6
1c008e88:	468a                	lw	a3,128(sp)
1c008e8a:	009e6e33          	or	t3,t3,s1
1c008e8e:	08c2                	slli	a7,a7,0x10
1c008e90:	01c8e8b3          	or	a7,a7,t3
1c008e94:	8d35                	xor	a0,a0,a3
1c008e96:	05e2                	slli	a1,a1,0x18
1c008e98:	469a                	lw	a3,132(sp)
1c008e9a:	0115e5b3          	or	a1,a1,a7
1c008e9e:	8db5                	xor	a1,a1,a3
1c008ea0:	46aa                	lw	a3,136(sp)
1c008ea2:	15a14803          	lbu	a6,346(sp)
1c008ea6:	8eb9                	xor	a3,a3,a4
1c008ea8:	473a                	lw	a4,140(sp)
1c008eaa:	15914483          	lbu	s1,345(sp)
1c008eae:	8f3d                	xor	a4,a4,a5
1c008eb0:	15814a83          	lbu	s5,344(sp)
1c008eb4:	15b14a03          	lbu	s4,347(sp)
1c008eb8:	15c14d03          	lbu	s10,348(sp)
1c008ebc:	18f14783          	lbu	a5,399(sp)
1c008ec0:	c12a                	sw	a0,128(sp)
1c008ec2:	c32e                	sw	a1,132(sp)
1c008ec4:	c536                	sw	a3,136(sp)
1c008ec6:	c73a                	sw	a4,140(sp)
1c008ec8:	15d14903          	lbu	s2,349(sp)
1c008ecc:	15e14f83          	lbu	t6,350(sp)
1c008ed0:	16114283          	lbu	t0,353(sp)
1c008ed4:	16214f03          	lbu	t5,354(sp)
1c008ed8:	16d14883          	lbu	a7,365(sp)
1c008edc:	16c14b83          	lbu	s7,364(sp)
1c008ee0:	04a2                	slli	s1,s1,0x8
1c008ee2:	0842                	slli	a6,a6,0x10
1c008ee4:	02a2                	slli	t0,t0,0x8
1c008ee6:	08a2                	slli	a7,a7,0x8
1c008ee8:	00986833          	or	a6,a6,s1
1c008eec:	0f42                	slli	t5,t5,0x10
1c008eee:	01e2ef33          	or	t5,t0,t5
1c008ef2:	01586833          	or	a6,a6,s5
1c008ef6:	0178e2b3          	or	t0,a7,s7
1c008efa:	018a1893          	slli	a7,s4,0x18
1c008efe:	15f14503          	lbu	a0,351(sp)
1c008f02:	0108e833          	or	a6,a7,a6
1c008f06:	0922                	slli	s2,s2,0x8
1c008f08:	48ca                	lw	a7,144(sp)
1c008f0a:	01a96933          	or	s2,s2,s10
1c008f0e:	0fc2                	slli	t6,t6,0x10
1c008f10:	16014983          	lbu	s3,352(sp)
1c008f14:	16514e83          	lbu	t4,357(sp)
1c008f18:	16314583          	lbu	a1,355(sp)
1c008f1c:	012fefb3          	or	t6,t6,s2
1c008f20:	0108c8b3          	xor	a7,a7,a6
1c008f24:	0562                	slli	a0,a0,0x18
1c008f26:	485a                	lw	a6,148(sp)
1c008f28:	16414c83          	lbu	s9,356(sp)
1c008f2c:	16614c03          	lbu	s8,358(sp)
1c008f30:	01f56533          	or	a0,a0,t6
1c008f34:	16914e03          	lbu	t3,361(sp)
1c008f38:	16a14303          	lbu	t1,362(sp)
1c008f3c:	16714603          	lbu	a2,359(sp)
1c008f40:	013f6f33          	or	t5,t5,s3
1c008f44:	00a84833          	xor	a6,a6,a0
1c008f48:	0ea2                	slli	t4,t4,0x8
1c008f4a:	456a                	lw	a0,152(sp)
1c008f4c:	05e2                	slli	a1,a1,0x18
1c008f4e:	019ee4b3          	or	s1,t4,s9
1c008f52:	01e5e5b3          	or	a1,a1,t5
1c008f56:	010c1e93          	slli	t4,s8,0x10
1c008f5a:	16814383          	lbu	t2,360(sp)
1c008f5e:	16b14683          	lbu	a3,363(sp)
1c008f62:	009eeeb3          	or	t4,t4,s1
1c008f66:	8d2d                	xor	a0,a0,a1
1c008f68:	0342                	slli	t1,t1,0x10
1c008f6a:	45fa                	lw	a1,156(sp)
1c008f6c:	0e22                	slli	t3,t3,0x8
1c008f6e:	0662                	slli	a2,a2,0x18
1c008f70:	16e14b03          	lbu	s6,366(sp)
1c008f74:	01d66633          	or	a2,a2,t4
1c008f78:	006e6e33          	or	t3,t3,t1
1c008f7c:	16f14703          	lbu	a4,367(sp)
1c008f80:	007e6e33          	or	t3,t3,t2
1c008f84:	8db1                	xor	a1,a1,a2
1c008f86:	06e2                	slli	a3,a3,0x18
1c008f88:	560a                	lw	a2,160(sp)
1c008f8a:	01c6e6b3          	or	a3,a3,t3
1c008f8e:	010b1313          	slli	t1,s6,0x10
1c008f92:	00536333          	or	t1,t1,t0
1c008f96:	8e35                	xor	a2,a2,a3
1c008f98:	0762                	slli	a4,a4,0x18
1c008f9a:	569a                	lw	a3,164(sp)
1c008f9c:	00676733          	or	a4,a4,t1
1c008fa0:	8f35                	xor	a4,a4,a3
1c008fa2:	c946                	sw	a7,144(sp)
1c008fa4:	cb42                	sw	a6,148(sp)
1c008fa6:	cd2a                	sw	a0,152(sp)
1c008fa8:	cf2e                	sw	a1,156(sp)
1c008faa:	d132                	sw	a2,160(sp)
1c008fac:	d33a                	sw	a4,164(sp)
1c008fae:	17114e83          	lbu	t4,369(sp)
1c008fb2:	17214a83          	lbu	s5,370(sp)
1c008fb6:	17014903          	lbu	s2,368(sp)
1c008fba:	18114803          	lbu	a6,385(sp)
1c008fbe:	18214483          	lbu	s1,386(sp)
1c008fc2:	18014283          	lbu	t0,384(sp)
1c008fc6:	18314703          	lbu	a4,387(sp)
1c008fca:	04c2                	slli	s1,s1,0x10
1c008fcc:	0822                	slli	a6,a6,0x8
1c008fce:	17514f83          	lbu	t6,373(sp)
1c008fd2:	17314503          	lbu	a0,371(sp)
1c008fd6:	0ac2                	slli	s5,s5,0x10
1c008fd8:	00986833          	or	a6,a6,s1
1c008fdc:	0ea2                	slli	t4,t4,0x8
1c008fde:	17414b03          	lbu	s6,372(sp)
1c008fe2:	00586833          	or	a6,a6,t0
1c008fe6:	17614e03          	lbu	t3,374(sp)
1c008fea:	015eeeb3          	or	t4,t4,s5
1c008fee:	0762                	slli	a4,a4,0x18
1c008ff0:	17914303          	lbu	t1,377(sp)
1c008ff4:	17a14983          	lbu	s3,378(sp)
1c008ff8:	17714583          	lbu	a1,375(sp)
1c008ffc:	012eeeb3          	or	t4,t4,s2
1c009000:	01076733          	or	a4,a4,a6
1c009004:	0fa2                	slli	t6,t6,0x8
1c009006:	582a                	lw	a6,168(sp)
1c009008:	0562                	slli	a0,a0,0x18
1c00900a:	016fefb3          	or	t6,t6,s6
1c00900e:	01d56533          	or	a0,a0,t4
1c009012:	0e42                	slli	t3,t3,0x10
1c009014:	17814383          	lbu	t2,376(sp)
1c009018:	01fe6e33          	or	t3,t3,t6
1c00901c:	17d14f03          	lbu	t5,381(sp)
1c009020:	17b14603          	lbu	a2,379(sp)
1c009024:	00a84833          	xor	a6,a6,a0
1c009028:	09c2                	slli	s3,s3,0x10
1c00902a:	553a                	lw	a0,172(sp)
1c00902c:	0322                	slli	t1,t1,0x8
1c00902e:	05e2                	slli	a1,a1,0x18
1c009030:	17c14a03          	lbu	s4,380(sp)
1c009034:	17e14883          	lbu	a7,382(sp)
1c009038:	01c5e5b3          	or	a1,a1,t3
1c00903c:	01336333          	or	t1,t1,s3
1c009040:	00736333          	or	t1,t1,t2
1c009044:	17f14683          	lbu	a3,383(sp)
1c009048:	8d2d                	xor	a0,a0,a1
1c00904a:	0f22                	slli	t5,t5,0x8
1c00904c:	55ca                	lw	a1,176(sp)
1c00904e:	0662                	slli	a2,a2,0x18
1c009050:	014f6f33          	or	t5,t5,s4
1c009054:	00666633          	or	a2,a2,t1
1c009058:	08c2                	slli	a7,a7,0x10
1c00905a:	01e8e8b3          	or	a7,a7,t5
1c00905e:	8db1                	xor	a1,a1,a2
1c009060:	06e2                	slli	a3,a3,0x18
1c009062:	565a                	lw	a2,180(sp)
1c009064:	0116e6b3          	or	a3,a3,a7
1c009068:	8e35                	xor	a2,a2,a3
1c00906a:	56ea                	lw	a3,184(sp)
1c00906c:	18414f03          	lbu	t5,388(sp)
1c009070:	8f35                	xor	a4,a4,a3
1c009072:	d542                	sw	a6,168(sp)
1c009074:	d72a                	sw	a0,172(sp)
1c009076:	d92e                	sw	a1,176(sp)
1c009078:	db32                	sw	a2,180(sp)
1c00907a:	18514883          	lbu	a7,389(sp)
1c00907e:	18614503          	lbu	a0,390(sp)
1c009082:	18714603          	lbu	a2,391(sp)
1c009086:	dd3a                	sw	a4,184(sp)
1c009088:	18914703          	lbu	a4,393(sp)
1c00908c:	18a14303          	lbu	t1,394(sp)
1c009090:	18814e03          	lbu	t3,392(sp)
1c009094:	0342                	slli	t1,t1,0x10
1c009096:	18b14683          	lbu	a3,395(sp)
1c00909a:	0722                	slli	a4,a4,0x8
1c00909c:	00676733          	or	a4,a4,t1
1c0090a0:	08a2                	slli	a7,a7,0x8
1c0090a2:	01e8e8b3          	or	a7,a7,t5
1c0090a6:	01c76733          	or	a4,a4,t3
1c0090aa:	06e2                	slli	a3,a3,0x18
1c0090ac:	0542                	slli	a0,a0,0x10
1c0090ae:	01156533          	or	a0,a0,a7
1c0090b2:	18d14803          	lbu	a6,397(sp)
1c0090b6:	8f55                	or	a4,a4,a3
1c0090b8:	0662                	slli	a2,a2,0x18
1c0090ba:	56fa                	lw	a3,188(sp)
1c0090bc:	18c14e83          	lbu	t4,396(sp)
1c0090c0:	18e14583          	lbu	a1,398(sp)
1c0090c4:	8e49                	or	a2,a2,a0
1c0090c6:	8e35                	xor	a2,a2,a3
1c0090c8:	0822                	slli	a6,a6,0x8
1c0090ca:	468e                	lw	a3,192(sp)
1c0090cc:	01d86833          	or	a6,a6,t4
1c0090d0:	0807e793          	ori	a5,a5,128
1c0090d4:	05c2                	slli	a1,a1,0x10
1c0090d6:	0105e5b3          	or	a1,a1,a6
1c0090da:	8eb9                	xor	a3,a3,a4
1c0090dc:	07e2                	slli	a5,a5,0x18
1c0090de:	471e                	lw	a4,196(sp)
1c0090e0:	8fcd                	or	a5,a5,a1
1c0090e2:	010c                	addi	a1,sp,128
1c0090e4:	8fb9                	xor	a5,a5,a4
1c0090e6:	852e                	mv	a0,a1
1c0090e8:	df32                	sw	a2,188(sp)
1c0090ea:	c1b6                	sw	a3,192(sp)
1c0090ec:	c3be                	sw	a5,196(sp)
1c0090ee:	a02ff0ef          	jal	ra,1c0082f0 <KeccakF1600_StatePermute>
1c0090f2:	581a                	lw	a6,164(sp)
1c0090f4:	552a                	lw	a0,168(sp)
1c0090f6:	55ba                	lw	a1,172(sp)
1c0090f8:	00885913          	srli	s2,a6,0x8
1c0090fc:	564a                	lw	a2,176(sp)
1c0090fe:	de4a                	sw	s2,60(sp)
1c009100:	00855913          	srli	s2,a0,0x8
1c009104:	56da                	lw	a3,180(sp)
1c009106:	d24a                	sw	s2,36(sp)
1c009108:	0085d913          	srli	s2,a1,0x8
1c00910c:	576a                	lw	a4,184(sp)
1c00910e:	d44a                	sw	s2,40(sp)
1c009110:	00865913          	srli	s2,a2,0x8
1c009114:	57fa                	lw	a5,188(sp)
1c009116:	d64a                	sw	s2,44(sp)
1c009118:	0086d913          	srli	s2,a3,0x8
1c00911c:	d84a                	sw	s2,48(sp)
1c00911e:	00875913          	srli	s2,a4,0x8
1c009122:	da4a                	sw	s2,52(sp)
1c009124:	0087d913          	srli	s2,a5,0x8
1c009128:	dc4a                	sw	s2,56(sp)
1c00912a:	5972                	lw	s2,60(sp)
1c00912c:	448a                	lw	s1,128(sp)
1c00912e:	0ff97913          	andi	s2,s2,255
1c009132:	c2ca                	sw	s2,68(sp)
1c009134:	5912                	lw	s2,36(sp)
1c009136:	439a                	lw	t2,132(sp)
1c009138:	0ff97913          	andi	s2,s2,255
1c00913c:	c4ca                	sw	s2,72(sp)
1c00913e:	5922                	lw	s2,40(sp)
1c009140:	42aa                	lw	t0,136(sp)
1c009142:	0ff97913          	andi	s2,s2,255
1c009146:	c8ca                	sw	s2,80(sp)
1c009148:	5932                	lw	s2,44(sp)
1c00914a:	4fba                	lw	t6,140(sp)
1c00914c:	0ff97913          	andi	s2,s2,255
1c009150:	ccca                	sw	s2,88(sp)
1c009152:	5942                	lw	s2,48(sp)
1c009154:	4f4a                	lw	t5,144(sp)
1c009156:	0ff97913          	andi	s2,s2,255
1c00915a:	4eda                	lw	t4,148(sp)
1c00915c:	4e6a                	lw	t3,152(sp)
1c00915e:	437a                	lw	t1,156(sp)
1c009160:	588a                	lw	a7,160(sp)
1c009162:	d0ca                	sw	s2,96(sp)
1c009164:	5952                	lw	s2,52(sp)
1c009166:	0082dc93          	srli	s9,t0,0x8
1c00916a:	0ff97913          	andi	s2,s2,255
1c00916e:	d4ca                	sw	s2,104(sp)
1c009170:	5962                	lw	s2,56(sp)
1c009172:	008fdc13          	srli	s8,t6,0x8
1c009176:	008f5b93          	srli	s7,t5,0x8
1c00917a:	008edb13          	srli	s6,t4,0x8
1c00917e:	0ff97913          	andi	s2,s2,255
1c009182:	d8ca                	sw	s2,112(sp)
1c009184:	0083dd13          	srli	s10,t2,0x8
1c009188:	0ff4f913          	andi	s2,s1,255
1c00918c:	0ffcfc93          	andi	s9,s9,255
1c009190:	0ffc7c13          	andi	s8,s8,255
1c009194:	0ffbfb93          	andi	s7,s7,255
1c009198:	0ffb7b13          	andi	s6,s6,255
1c00919c:	d24a                	sw	s2,36(sp)
1c00919e:	008e5a93          	srli	s5,t3,0x8
1c0091a2:	0ff2f913          	andi	s2,t0,255
1c0091a6:	0ca2                	slli	s9,s9,0x8
1c0091a8:	0c22                	slli	s8,s8,0x8
1c0091aa:	0ba2                	slli	s7,s7,0x8
1c0091ac:	0b22                	slli	s6,s6,0x8
1c0091ae:	0ffd7d13          	andi	s10,s10,255
1c0091b2:	ce66                	sw	s9,28(sp)
1c0091b4:	d64a                	sw	s2,44(sp)
1c0091b6:	cc62                	sw	s8,24(sp)
1c0091b8:	ca5e                	sw	s7,20(sp)
1c0091ba:	0ffffc13          	andi	s8,t6,255
1c0091be:	4b96                	lw	s7,68(sp)
1c0091c0:	0fff7c93          	andi	s9,t5,255
1c0091c4:	c85a                	sw	s6,16(sp)
1c0091c6:	0ffe7913          	andi	s2,t3,255
1c0091ca:	0ff8fb13          	andi	s6,a7,255
1c0091ce:	0d22                	slli	s10,s10,0x8
1c0091d0:	0ffafa93          	andi	s5,s5,255
1c0091d4:	d06a                	sw	s10,32(sp)
1c0091d6:	d862                	sw	s8,48(sp)
1c0091d8:	0ff3fd13          	andi	s10,t2,255
1c0091dc:	da66                	sw	s9,52(sp)
1c0091de:	de4a                	sw	s2,60(sp)
1c0091e0:	4ca6                	lw	s9,72(sp)
1c0091e2:	4946                	lw	s2,80(sp)
1c0091e4:	c0da                	sw	s6,64(sp)
1c0091e6:	0ff87c13          	andi	s8,a6,255
1c0091ea:	4b66                	lw	s6,88(sp)
1c0091ec:	0aa2                	slli	s5,s5,0x8
1c0091ee:	d46a                	sw	s10,40(sp)
1c0091f0:	c656                	sw	s5,12(sp)
1c0091f2:	0ffefd13          	andi	s10,t4,255
1c0091f6:	0ff37a93          	andi	s5,t1,255
1c0091fa:	c2e2                	sw	s8,68(sp)
1c0091fc:	0ba2                	slli	s7,s7,0x8
1c0091fe:	5c06                	lw	s8,96(sp)
1c009200:	dc6a                	sw	s10,56(sp)
1c009202:	dcd6                	sw	s5,120(sp)
1c009204:	dede                	sw	s7,124(sp)
1c009206:	0ff57d13          	andi	s10,a0,255
1c00920a:	0ff5fa93          	andi	s5,a1,255
1c00920e:	0ff67b93          	andi	s7,a2,255
1c009212:	0ca2                	slli	s9,s9,0x8
1c009214:	0922                	slli	s2,s2,0x8
1c009216:	0b22                	slli	s6,s6,0x8
1c009218:	c4e6                	sw	s9,72(sp)
1c00921a:	c6ea                	sw	s10,76(sp)
1c00921c:	c8ca                	sw	s2,80(sp)
1c00921e:	cad6                	sw	s5,84(sp)
1c009220:	ccda                	sw	s6,88(sp)
1c009222:	cede                	sw	s7,92(sp)
1c009224:	0c22                	slli	s8,s8,0x8
1c009226:	d0e2                	sw	s8,96(sp)
1c009228:	5ac6                	lw	s5,112(sp)
1c00922a:	5d26                	lw	s10,104(sp)
1c00922c:	0ff6fc93          	andi	s9,a3,255
1c009230:	0ff7fb13          	andi	s6,a5,255
1c009234:	0084dd93          	srli	s11,s1,0x8
1c009238:	0aa2                	slli	s5,s5,0x8
1c00923a:	5b92                	lw	s7,36(sp)
1c00923c:	5c22                	lw	s8,40(sp)
1c00923e:	d2e6                	sw	s9,100(sp)
1c009240:	d8d6                	sw	s5,112(sp)
1c009242:	5c82                	lw	s9,32(sp)
1c009244:	5ab2                	lw	s5,44(sp)
1c009246:	dada                	sw	s6,116(sp)
1c009248:	0ffdfd93          	andi	s11,s11,255
1c00924c:	4b72                	lw	s6,28(sp)
1c00924e:	0d22                	slli	s10,s10,0x8
1c009250:	0da2                	slli	s11,s11,0x8
1c009252:	d4ea                	sw	s10,104(sp)
1c009254:	01bbedb3          	or	s11,s7,s11
1c009258:	019c6d33          	or	s10,s8,s9
1c00925c:	5bc2                	lw	s7,48(sp)
1c00925e:	016aecb3          	or	s9,s5,s6
1c009262:	4ae2                	lw	s5,24(sp)
1c009264:	5b52                	lw	s6,52(sp)
1c009266:	015bec33          	or	s8,s7,s5
1c00926a:	4ad2                	lw	s5,20(sp)
1c00926c:	0088d993          	srli	s3,a7,0x8
1c009270:	015b6bb3          	or	s7,s6,s5
1c009274:	4ac2                	lw	s5,16(sp)
1c009276:	5b62                	lw	s6,56(sp)
1c009278:	00835a13          	srli	s4,t1,0x8
1c00927c:	015b6b33          	or	s6,s6,s5
1c009280:	c25a                	sw	s6,4(sp)
1c009282:	4ab2                	lw	s5,12(sp)
1c009284:	5b72                	lw	s6,60(sp)
1c009286:	0ff9f993          	andi	s3,s3,255
1c00928a:	015b6b33          	or	s6,s6,s5
1c00928e:	4a86                	lw	s5,64(sp)
1c009290:	c45a                	sw	s6,8(sp)
1c009292:	0ffa7a13          	andi	s4,s4,255
1c009296:	5b66                	lw	s6,120(sp)
1c009298:	09a2                	slli	s3,s3,0x8
1c00929a:	013ae9b3          	or	s3,s5,s3
1c00929e:	0a22                	slli	s4,s4,0x8
1c0092a0:	c0ce                	sw	s3,64(sp)
1c0092a2:	014b6a33          	or	s4,s6,s4
1c0092a6:	59f6                	lw	s3,124(sp)
1c0092a8:	4b16                	lw	s6,68(sp)
1c0092aa:	4ab6                	lw	s5,76(sp)
1c0092ac:	013b6b33          	or	s6,s6,s3
1c0092b0:	c2da                	sw	s6,68(sp)
1c0092b2:	4b26                	lw	s6,72(sp)
1c0092b4:	0ff77913          	andi	s2,a4,255
1c0092b8:	016aeab3          	or	s5,s5,s6
1c0092bc:	d6ca                	sw	s2,108(sp)
1c0092be:	49d6                	lw	s3,84(sp)
1c0092c0:	c6d6                	sw	s5,76(sp)
1c0092c2:	4ac6                	lw	s5,80(sp)
1c0092c4:	4b76                	lw	s6,92(sp)
1c0092c6:	0159e9b3          	or	s3,s3,s5
1c0092ca:	cace                	sw	s3,84(sp)
1c0092cc:	49e6                	lw	s3,88(sp)
1c0092ce:	5a96                	lw	s5,100(sp)
1c0092d0:	013b6b33          	or	s6,s6,s3
1c0092d4:	ceda                	sw	s6,92(sp)
1c0092d6:	5b06                	lw	s6,96(sp)
1c0092d8:	59b6                	lw	s3,108(sp)
1c0092da:	016aeab3          	or	s5,s5,s6
1c0092de:	d2d6                	sw	s5,100(sp)
1c0092e0:	5aa6                	lw	s5,104(sp)
1c0092e2:	5b56                	lw	s6,116(sp)
1c0092e4:	0159e9b3          	or	s3,s3,s5
1c0092e8:	d6ce                	sw	s3,108(sp)
1c0092ea:	59c6                	lw	s3,112(sp)
1c0092ec:	ff010937          	lui	s2,0xff010
1c0092f0:	013b6b33          	or	s6,s6,s3
1c0092f4:	00ff09b7          	lui	s3,0xff0
1c0092f8:	0134fab3          	and	s5,s1,s3
1c0092fc:	0133f9b3          	and	s3,t2,s3
1c009300:	d44e                	sw	s3,40(sp)
1c009302:	00ff09b7          	lui	s3,0xff0
1c009306:	0132f9b3          	and	s3,t0,s3
1c00930a:	d64e                	sw	s3,44(sp)
1c00930c:	00ff09b7          	lui	s3,0xff0
1c009310:	013ff9b3          	and	s3,t6,s3
1c009314:	d84e                	sw	s3,48(sp)
1c009316:	00ff09b7          	lui	s3,0xff0
1c00931a:	013f79b3          	and	s3,t5,s3
1c00931e:	da4e                	sw	s3,52(sp)
1c009320:	00ff09b7          	lui	s3,0xff0
1c009324:	013ef9b3          	and	s3,t4,s3
1c009328:	dc4e                	sw	s3,56(sp)
1c00932a:	00ff09b7          	lui	s3,0xff0
1c00932e:	013e79b3          	and	s3,t3,s3
1c009332:	197d                	addi	s2,s2,-1
1c009334:	de4e                	sw	s3,60(sp)
1c009336:	00ff09b7          	lui	s3,0xff0
1c00933a:	012c7c33          	and	s8,s8,s2
1c00933e:	012bfbb3          	and	s7,s7,s2
1c009342:	013379b3          	and	s3,t1,s3
1c009346:	012cfcb3          	and	s9,s9,s2
1c00934a:	ca62                	sw	s8,20(sp)
1c00934c:	c85e                	sw	s7,16(sp)
1c00934e:	4c22                	lw	s8,8(sp)
1c009350:	4b92                	lw	s7,4(sp)
1c009352:	dcce                	sw	s3,120(sp)
1c009354:	00ff09b7          	lui	s3,0xff0
1c009358:	cc66                	sw	s9,24(sp)
1c00935a:	0138f9b3          	and	s3,a7,s3
1c00935e:	4c86                	lw	s9,64(sp)
1c009360:	012d7d33          	and	s10,s10,s2
1c009364:	012bfbb3          	and	s7,s7,s2
1c009368:	012c7c33          	and	s8,s8,s2
1c00936c:	012a7a33          	and	s4,s4,s2
1c009370:	dece                	sw	s3,124(sp)
1c009372:	00ff09b7          	lui	s3,0xff0
1c009376:	dada                	sw	s6,116(sp)
1c009378:	ce6a                	sw	s10,28(sp)
1c00937a:	c65e                	sw	s7,12(sp)
1c00937c:	c462                	sw	s8,8(sp)
1c00937e:	c252                	sw	s4,4(sp)
1c009380:	012cfcb3          	and	s9,s9,s2
1c009384:	013879b3          	and	s3,a6,s3
1c009388:	c0e6                	sw	s9,64(sp)
1c00938a:	c4ce                	sw	s3,72(sp)
1c00938c:	00ff09b7          	lui	s3,0xff0
1c009390:	013579b3          	and	s3,a0,s3
1c009394:	c8ce                	sw	s3,80(sp)
1c009396:	00ff09b7          	lui	s3,0xff0
1c00939a:	0135f9b3          	and	s3,a1,s3
1c00939e:	ccce                	sw	s3,88(sp)
1c0093a0:	49d6                	lw	s3,84(sp)
1c0093a2:	012dfb33          	and	s6,s11,s2
1c0093a6:	0129f9b3          	and	s3,s3,s2
1c0093aa:	cace                	sw	s3,84(sp)
1c0093ac:	00ff09b7          	lui	s3,0xff0
1c0093b0:	013679b3          	and	s3,a2,s3
1c0093b4:	d0ce                	sw	s3,96(sp)
1c0093b6:	00ff09b7          	lui	s3,0xff0
1c0093ba:	0136f9b3          	and	s3,a3,s3
1c0093be:	d4ce                	sw	s3,104(sp)
1c0093c0:	00ff09b7          	lui	s3,0xff0
1c0093c4:	4db6                	lw	s11,76(sp)
1c0093c6:	4a76                	lw	s4,92(sp)
1c0093c8:	013779b3          	and	s3,a4,s3
1c0093cc:	d8ce                	sw	s3,112(sp)
1c0093ce:	00ff09b7          	lui	s3,0xff0
1c0093d2:	4d16                	lw	s10,68(sp)
1c0093d4:	5b96                	lw	s7,100(sp)
1c0093d6:	012dfdb3          	and	s11,s11,s2
1c0093da:	012a7a33          	and	s4,s4,s2
1c0093de:	0137f9b3          	and	s3,a5,s3
1c0093e2:	5cd6                	lw	s9,116(sp)
1c0093e4:	5c36                	lw	s8,108(sp)
1c0093e6:	c6ee                	sw	s11,76(sp)
1c0093e8:	ced2                	sw	s4,92(sp)
1c0093ea:	c04e                	sw	s3,0(sp)
1c0093ec:	5a22                	lw	s4,40(sp)
1c0093ee:	49f2                	lw	s3,28(sp)
1c0093f0:	015b6db3          	or	s11,s6,s5
1c0093f4:	4ae2                	lw	s5,24(sp)
1c0093f6:	5b32                	lw	s6,44(sp)
1c0093f8:	012d7d33          	and	s10,s10,s2
1c0093fc:	012bfbb3          	and	s7,s7,s2
1c009400:	c2ea                	sw	s10,68(sp)
1c009402:	d2de                	sw	s7,100(sp)
1c009404:	012c7c33          	and	s8,s8,s2
1c009408:	4bd2                	lw	s7,20(sp)
1c00940a:	012cf933          	and	s2,s9,s2
1c00940e:	0149ed33          	or	s10,s3,s4
1c009412:	016aecb3          	or	s9,s5,s6
1c009416:	59c2                	lw	s3,48(sp)
1c009418:	4a42                	lw	s4,16(sp)
1c00941a:	5ad2                	lw	s5,52(sp)
1c00941c:	d6e2                	sw	s8,108(sp)
1c00941e:	013bec33          	or	s8,s7,s3
1c009422:	49b2                	lw	s3,12(sp)
1c009424:	015a6bb3          	or	s7,s4,s5
1c009428:	5a62                	lw	s4,56(sp)
1c00942a:	daca                	sw	s2,116(sp)
1c00942c:	0149eb33          	or	s6,s3,s4
1c009430:	49a2                	lw	s3,8(sp)
1c009432:	5a72                	lw	s4,60(sp)
1c009434:	80e1                	srli	s1,s1,0x18
1c009436:	0149eab3          	or	s5,s3,s4
1c00943a:	5a66                	lw	s4,120(sp)
1c00943c:	4992                	lw	s3,4(sp)
1c00943e:	04e2                	slli	s1,s1,0x18
1c009440:	0149e9b3          	or	s3,s3,s4
1c009444:	dcce                	sw	s3,120(sp)
1c009446:	5a76                	lw	s4,124(sp)
1c009448:	4986                	lw	s3,64(sp)
1c00944a:	01000937          	lui	s2,0x1000
1c00944e:	0149e9b3          	or	s3,s3,s4
1c009452:	d24e                	sw	s3,36(sp)
1c009454:	4a26                	lw	s4,72(sp)
1c009456:	4996                	lw	s3,68(sp)
1c009458:	197d                	addi	s2,s2,-1
1c00945a:	0149e9b3          	or	s3,s3,s4
1c00945e:	d44e                	sw	s3,40(sp)
1c009460:	4a46                	lw	s4,80(sp)
1c009462:	49b6                	lw	s3,76(sp)
1c009464:	c2a6                	sw	s1,68(sp)
1c009466:	0149e9b3          	or	s3,s3,s4
1c00946a:	d64e                	sw	s3,44(sp)
1c00946c:	4a66                	lw	s4,88(sp)
1c00946e:	49d6                	lw	s3,84(sp)
1c009470:	54e6                	lw	s1,120(sp)
1c009472:	0149e9b3          	or	s3,s3,s4
1c009476:	d84e                	sw	s3,48(sp)
1c009478:	5a06                	lw	s4,96(sp)
1c00947a:	49f6                	lw	s3,92(sp)
1c00947c:	018ede93          	srli	t4,t4,0x18
1c009480:	0149e9b3          	or	s3,s3,s4
1c009484:	da4e                	sw	s3,52(sp)
1c009486:	5a26                	lw	s4,104(sp)
1c009488:	5996                	lw	s3,100(sp)
1c00948a:	018e5e13          	srli	t3,t3,0x18
1c00948e:	0149e9b3          	or	s3,s3,s4
1c009492:	dc4e                	sw	s3,56(sp)
1c009494:	5a46                	lw	s4,112(sp)
1c009496:	59b6                	lw	s3,108(sp)
1c009498:	01835313          	srli	t1,t1,0x18
1c00949c:	0149e9b3          	or	s3,s3,s4
1c0094a0:	de4e                	sw	s3,60(sp)
1c0094a2:	4a02                	lw	s4,0(sp)
1c0094a4:	59d6                	lw	s3,116(sp)
1c0094a6:	012b7b33          	and	s6,s6,s2
1c0094aa:	0149e9b3          	or	s3,s3,s4
1c0094ae:	c0ce                	sw	s3,64(sp)
1c0094b0:	5992                	lw	s3,36(sp)
1c0094b2:	0124fa33          	and	s4,s1,s2
1c0094b6:	0129f9b3          	and	s3,s3,s2
1c0094ba:	d24e                	sw	s3,36(sp)
1c0094bc:	54a2                	lw	s1,40(sp)
1c0094be:	59b2                	lw	s3,44(sp)
1c0094c0:	0124f4b3          	and	s1,s1,s2
1c0094c4:	d426                	sw	s1,40(sp)
1c0094c6:	54c2                	lw	s1,48(sp)
1c0094c8:	0129f9b3          	and	s3,s3,s2
1c0094cc:	d64e                	sw	s3,44(sp)
1c0094ce:	0124f4b3          	and	s1,s1,s2
1c0094d2:	59d2                	lw	s3,52(sp)
1c0094d4:	d826                	sw	s1,48(sp)
1c0094d6:	54e2                	lw	s1,56(sp)
1c0094d8:	0129f9b3          	and	s3,s3,s2
1c0094dc:	da4e                	sw	s3,52(sp)
1c0094de:	0124f4b3          	and	s1,s1,s2
1c0094e2:	59f2                	lw	s3,60(sp)
1c0094e4:	dc26                	sw	s1,56(sp)
1c0094e6:	4486                	lw	s1,64(sp)
1c0094e8:	012afab3          	and	s5,s5,s2
1c0094ec:	0129f9b3          	and	s3,s3,s2
1c0094f0:	0183d393          	srli	t2,t2,0x18
1c0094f4:	0182d293          	srli	t0,t0,0x18
1c0094f8:	018fdf93          	srli	t6,t6,0x18
1c0094fc:	018f5f13          	srli	t5,t5,0x18
1c009500:	0ee2                	slli	t4,t4,0x18
1c009502:	0e62                	slli	t3,t3,0x18
1c009504:	0362                	slli	t1,t1,0x18
1c009506:	de4e                	sw	s3,60(sp)
1c009508:	012dfdb3          	and	s11,s11,s2
1c00950c:	0124f9b3          	and	s3,s1,s2
1c009510:	012d7d33          	and	s10,s10,s2
1c009514:	012cfcb3          	and	s9,s9,s2
1c009518:	012c7c33          	and	s8,s8,s2
1c00951c:	012bfbb3          	and	s7,s7,s2
1c009520:	01db6eb3          	or	t4,s6,t4
1c009524:	4916                	lw	s2,68(sp)
1c009526:	5b32                	lw	s6,44(sp)
1c009528:	01caee33          	or	t3,s5,t3
1c00952c:	006a6333          	or	t1,s4,t1
1c009530:	5aa2                	lw	s5,40(sp)
1c009532:	5a12                	lw	s4,36(sp)
1c009534:	0188d893          	srli	a7,a7,0x18
1c009538:	01885813          	srli	a6,a6,0x18
1c00953c:	8161                	srli	a0,a0,0x18
1c00953e:	03e2                	slli	t2,t2,0x18
1c009540:	02e2                	slli	t0,t0,0x18
1c009542:	0fe2                	slli	t6,t6,0x18
1c009544:	0f62                	slli	t5,t5,0x18
1c009546:	007d63b3          	or	t2,s10,t2
1c00954a:	005ce2b3          	or	t0,s9,t0
1c00954e:	5d72                	lw	s10,60(sp)
1c009550:	5ce2                	lw	s9,56(sp)
1c009552:	01fc6fb3          	or	t6,s8,t6
1c009556:	01ebef33          	or	t5,s7,t5
1c00955a:	5c52                	lw	s8,52(sp)
1c00955c:	5bc2                	lw	s7,48(sp)
1c00955e:	81e1                	srli	a1,a1,0x18
1c009560:	8261                	srli	a2,a2,0x18
1c009562:	82e1                	srli	a3,a3,0x18
1c009564:	8361                	srli	a4,a4,0x18
1c009566:	83e1                	srli	a5,a5,0x18
1c009568:	08e2                	slli	a7,a7,0x18
1c00956a:	0862                	slli	a6,a6,0x18
1c00956c:	0562                	slli	a0,a0,0x18
1c00956e:	012de4b3          	or	s1,s11,s2
1c009572:	05e2                	slli	a1,a1,0x18
1c009574:	011a6933          	or	s2,s4,a7
1c009578:	0662                	slli	a2,a2,0x18
1c00957a:	010aea33          	or	s4,s5,a6
1c00957e:	06e2                	slli	a3,a3,0x18
1c009580:	00ab6ab3          	or	s5,s6,a0
1c009584:	0762                	slli	a4,a4,0x18
1c009586:	07e2                	slli	a5,a5,0x18
1c009588:	c004                	sw	s1,0(s0)
1c00958a:	03242023          	sw	s2,32(s0)
1c00958e:	03442223          	sw	s4,36(s0)
1c009592:	03542423          	sw	s5,40(s0)
1c009596:	00bbe5b3          	or	a1,s7,a1
1c00959a:	00cc6633          	or	a2,s8,a2
1c00959e:	00dce6b3          	or	a3,s9,a3
1c0095a2:	00ed6733          	or	a4,s10,a4
1c0095a6:	00f9e7b3          	or	a5,s3,a5
1c0095aa:	00742223          	sw	t2,4(s0)
1c0095ae:	00542423          	sw	t0,8(s0)
1c0095b2:	01f42623          	sw	t6,12(s0)
1c0095b6:	01e42823          	sw	t5,16(s0)
1c0095ba:	01d42a23          	sw	t4,20(s0)
1c0095be:	01c42c23          	sw	t3,24(s0)
1c0095c2:	00642e23          	sw	t1,28(s0)
1c0095c6:	d44c                	sw	a1,44(s0)
1c0095c8:	d810                	sw	a2,48(s0)
1c0095ca:	d854                	sw	a3,52(s0)
1c0095cc:	dc18                	sw	a4,56(s0)
1c0095ce:	dc5c                	sw	a5,60(s0)
1c0095d0:	24c12083          	lw	ra,588(sp)
1c0095d4:	24812403          	lw	s0,584(sp)
1c0095d8:	24412483          	lw	s1,580(sp)
1c0095dc:	24012903          	lw	s2,576(sp)
1c0095e0:	23c12983          	lw	s3,572(sp)
1c0095e4:	23812a03          	lw	s4,568(sp)
1c0095e8:	23412a83          	lw	s5,564(sp)
1c0095ec:	23012b03          	lw	s6,560(sp)
1c0095f0:	22c12b83          	lw	s7,556(sp)
1c0095f4:	22812c03          	lw	s8,552(sp)
1c0095f8:	22412c83          	lw	s9,548(sp)
1c0095fc:	22012d03          	lw	s10,544(sp)
1c009600:	21c12d83          	lw	s11,540(sp)
1c009604:	25010113          	addi	sp,sp,592
1c009608:	8082                	ret
1c00960a:	4781                	li	a5,0
1c00960c:	fbeff06f          	j	1c008dca <sha3_512+0x10c>

1c009610 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c009610:	b6010113          	addi	sp,sp,-1184
1c009614:	7379                	lui	t1,0xffffe
1c009616:	48112e23          	sw	ra,1180(sp)
1c00961a:	48812c23          	sw	s0,1176(sp)
1c00961e:	48912a23          	sw	s1,1172(sp)
1c009622:	49612023          	sw	s6,1152(sp)
1c009626:	47912a23          	sw	s9,1140(sp)
1c00962a:	49212823          	sw	s2,1168(sp)
1c00962e:	49312623          	sw	s3,1164(sp)
1c009632:	49412423          	sw	s4,1160(sp)
1c009636:	49512223          	sw	s5,1156(sp)
1c00963a:	47712e23          	sw	s7,1148(sp)
1c00963e:	47812c23          	sw	s8,1144(sp)
1c009642:	47a12823          	sw	s10,1136(sp)
1c009646:	47b12623          	sw	s11,1132(sp)
1c00964a:	911a                	add	sp,sp,t1
1c00964c:	6309                	lui	t1,0x2
1c00964e:	7479                	lui	s0,0xffffe
1c009650:	46030313          	addi	t1,t1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c009654:	930a                	add	t1,t1,sp
1c009656:	bc040413          	addi	s0,s0,-1088 # ffffdbc0 <pulp__FC+0xffffdbc1>
1c00965a:	941a                	add	s0,s0,t1
1c00965c:	cc2a                	sw	a0,24(sp)
1c00965e:	ce2e                	sw	a1,28(sp)
1c009660:	8522                	mv	a0,s0
1c009662:	02000593          	li	a1,32
1c009666:	011000ef          	jal	ra,1c009e76 <randombytes>
1c00966a:	8522                	mv	a0,s0
1c00966c:	02000613          	li	a2,32
1c009670:	85a2                	mv	a1,s0
1c009672:	e4cff0ef          	jal	ra,1c008cbe <sha3_512>
1c009676:	6509                	lui	a0,0x2
1c009678:	77fd                	lui	a5,0xfffff
1c00967a:	46050513          	addi	a0,a0,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00967e:	80078493          	addi	s1,a5,-2048 # ffffe800 <pulp__FC+0xffffe801>
1c009682:	950a                	add	a0,a0,sp
1c009684:	e0078793          	addi	a5,a5,-512
1c009688:	00f50733          	add	a4,a0,a5
1c00968c:	94aa                	add	s1,s1,a0
1c00968e:	6785                	lui	a5,0x1
1c009690:	ca3a                	sw	a4,20(sp)
1c009692:	c602                	sw	zero,12(sp)
1c009694:	1f848b13          	addi	s6,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c009698:	fff78c93          	addi	s9,a5,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00969c:	4832                	lw	a6,12(sp)
1c00969e:	6889                	lui	a7,0x2
1c0096a0:	7a79                	lui	s4,0xffffe
1c0096a2:	46088893          	addi	a7,a7,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c0096a6:	bc0a0b93          	addi	s7,s4,-1088 # ffffdbc0 <pulp__FC+0xffffdbc1>
1c0096aa:	0ff87813          	andi	a6,a6,255
1c0096ae:	988a                	add	a7,a7,sp
1c0096b0:	c842                	sw	a6,16(sp)
1c0096b2:	4452                	lw	s0,20(sp)
1c0096b4:	4901                	li	s2,0
1c0096b6:	9bc6                	add	s7,s7,a7
1c0096b8:	a815                	j	1c0096ec <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xdc>
1c0096ba:	001c1813          	slli	a6,s8,0x1
1c0096be:	9822                	add	a6,a6,s0
1c0096c0:	001c0893          	addi	a7,s8,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c0096c4:	00f81023          	sh	a5,0(a6) # ff010000 <pulp__FC+0xff010001>
1c0096c8:	28a89363          	bne	a7,a0,1c00994e <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x33e>
1c0096cc:	6509                	lui	a0,0x2
1c0096ce:	46050513          	addi	a0,a0,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c0096d2:	950a                	add	a0,a0,sp
1c0096d4:	200a0993          	addi	s3,s4,512
1c0096d8:	99aa                	add	s3,s3,a0
1c0096da:	854e                	mv	a0,s3
1c0096dc:	9b6ff0ef          	jal	ra,1c008892 <shake128_ctx_release>
1c0096e0:	0905                	addi	s2,s2,1
1c0096e2:	478d                	li	a5,3
1c0096e4:	20040413          	addi	s0,s0,512
1c0096e8:	10f90463          	beq	s2,a5,1c0097f0 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x1e0>
1c0096ec:	6809                	lui	a6,0x2
1c0096ee:	46080813          	addi	a6,a6,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c0096f2:	980a                	add	a6,a6,sp
1c0096f4:	200a0993          	addi	s3,s4,512
1c0096f8:	99c2                	add	s3,s3,a6
1c0096fa:	46c2                	lw	a3,16(sp)
1c0096fc:	85de                	mv	a1,s7
1c0096fe:	854e                	mv	a0,s3
1c009700:	0ff97613          	andi	a2,s2,255
1c009704:	233000ef          	jal	ra,1c00a136 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c009708:	458d                	li	a1,3
1c00970a:	8526                	mv	a0,s1
1c00970c:	864e                	mv	a2,s3
1c00970e:	8c4ff0ef          	jal	ra,1c0087d2 <shake128_squeezeblocks>
1c009712:	6885                	lui	a7,0x1
1c009714:	4c01                	li	s8,0
1c009716:	8726                	mv	a4,s1
1c009718:	d0088593          	addi	a1,a7,-768 # d00 <__CTOR_LIST__-0x1bfff304>
1c00971c:	10000513          	li	a0,256
1c009720:	00174603          	lbu	a2,1(a4)
1c009724:	00074683          	lbu	a3,0(a4)
1c009728:	00861793          	slli	a5,a2,0x8
1c00972c:	8fd5                	or	a5,a5,a3
1c00972e:	0197f7b3          	and	a5,a5,s9
1c009732:	00274683          	lbu	a3,2(a4)
1c009736:	f8f5f2e3          	bleu	a5,a1,1c0096ba <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xaa>
1c00973a:	8211                	srli	a2,a2,0x4
1c00973c:	0692                	slli	a3,a3,0x4
1c00973e:	8ed1                	or	a3,a3,a2
1c009740:	00d5c863          	blt	a1,a3,1c009750 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x140>
1c009744:	001c1793          	slli	a5,s8,0x1
1c009748:	97a2                	add	a5,a5,s0
1c00974a:	00d79023          	sh	a3,0(a5)
1c00974e:	0c05                	addi	s8,s8,1
1c009750:	f6ac0ee3          	beq	s8,a0,1c0096cc <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xbc>
1c009754:	070d                	addi	a4,a4,3
1c009756:	fd6715e3          	bne	a4,s6,1c009720 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x110>
1c00975a:	6309                	lui	t1,0x2
1c00975c:	46030313          	addi	t1,t1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c009760:	200a0993          	addi	s3,s4,512
1c009764:	930a                	add	t1,t1,sp
1c009766:	6505                	lui	a0,0x1
1c009768:	0a848d13          	addi	s10,s1,168
1c00976c:	999a                	add	s3,s3,t1
1c00976e:	10000a93          	li	s5,256
1c009772:	d0050d93          	addi	s11,a0,-768 # d00 <__CTOR_LIST__-0x1bfff304>
1c009776:	a031                	j	1c009782 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x172>
1c009778:	9c2e                	add	s8,s8,a1
1c00977a:	0ff00793          	li	a5,255
1c00977e:	f587e7e3          	bltu	a5,s8,1c0096cc <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xbc>
1c009782:	4585                	li	a1,1
1c009784:	8526                	mv	a0,s1
1c009786:	864e                	mv	a2,s3
1c009788:	84aff0ef          	jal	ra,1c0087d2 <shake128_squeezeblocks>
1c00978c:	001c1513          	slli	a0,s8,0x1
1c009790:	9522                	add	a0,a0,s0
1c009792:	418a8eb3          	sub	t4,s5,s8
1c009796:	86a6                	mv	a3,s1
1c009798:	4581                	li	a1,0
1c00979a:	00159793          	slli	a5,a1,0x1
1c00979e:	00f50f33          	add	t5,a0,a5
1c0097a2:	fcdd0be3          	beq	s10,a3,1c009778 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x168>
1c0097a6:	0016c703          	lbu	a4,1(a3)
1c0097aa:	0006c603          	lbu	a2,0(a3)
1c0097ae:	00871793          	slli	a5,a4,0x8
1c0097b2:	8fd1                	or	a5,a5,a2
1c0097b4:	0197f7b3          	and	a5,a5,s9
1c0097b8:	00475613          	srli	a2,a4,0x4
1c0097bc:	0026c703          	lbu	a4,2(a3)
1c0097c0:	00fde563          	bltu	s11,a5,1c0097ca <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x1ba>
1c0097c4:	00ff1023          	sh	a5,0(t5) # ff0000 <__CTOR_LIST__-0x1b010004>
1c0097c8:	0585                	addi	a1,a1,1
1c0097ca:	00471793          	slli	a5,a4,0x4
1c0097ce:	8fd1                	or	a5,a5,a2
1c0097d0:	fbd5f4e3          	bleu	t4,a1,1c009778 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x168>
1c0097d4:	00159713          	slli	a4,a1,0x1
1c0097d8:	972a                	add	a4,a4,a0
1c0097da:	00158613          	addi	a2,a1,1
1c0097de:	00fdc763          	blt	s11,a5,1c0097ec <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x1dc>
1c0097e2:	00f71023          	sh	a5,0(a4)
1c0097e6:	85b2                	mv	a1,a2
1c0097e8:	f9d678e3          	bleu	t4,a2,1c009778 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x168>
1c0097ec:	068d                	addi	a3,a3,3
1c0097ee:	b775                	j	1c00979a <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x18a>
1c0097f0:	4732                	lw	a4,12(sp)
1c0097f2:	47d2                	lw	a5,20(sp)
1c0097f4:	0705                	addi	a4,a4,1
1c0097f6:	60078793          	addi	a5,a5,1536
1c0097fa:	c63a                	sw	a4,12(sp)
1c0097fc:	ca3e                	sw	a5,20(sp)
1c0097fe:	e9271fe3          	bne	a4,s2,1c00969c <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x8c>
1c009802:	6309                	lui	t1,0x2
1c009804:	46030313          	addi	t1,t1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c009808:	930a                	add	t1,t1,sp
1c00980a:	7afd                	lui	s5,0xfffff
1c00980c:	014304b3          	add	s1,t1,s4
1c009810:	800a8413          	addi	s0,s5,-2048 # ffffe800 <pulp__FC+0xffffe801>
1c009814:	941a                	add	s0,s0,t1
1c009816:	be048493          	addi	s1,s1,-1056
1c00981a:	85a6                	mv	a1,s1
1c00981c:	8522                	mv	a0,s0
1c00981e:	4601                	li	a2,0
1c009820:	2105                	jal	1c009c40 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009822:	85a6                	mv	a1,s1
1c009824:	20040513          	addi	a0,s0,512
1c009828:	4605                	li	a2,1
1c00982a:	2919                	jal	1c009c40 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00982c:	85a6                	mv	a1,s1
1c00982e:	40040513          	addi	a0,s0,1024
1c009832:	4609                	li	a2,2
1c009834:	2131                	jal	1c009c40 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009836:	6509                	lui	a0,0x2
1c009838:	46050513          	addi	a0,a0,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00983c:	950a                	add	a0,a0,sp
1c00983e:	c00a0913          	addi	s2,s4,-1024
1c009842:	992a                	add	s2,s2,a0
1c009844:	85a6                	mv	a1,s1
1c009846:	854a                	mv	a0,s2
1c009848:	460d                	li	a2,3
1c00984a:	2edd                	jal	1c009c40 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00984c:	85a6                	mv	a1,s1
1c00984e:	20090513          	addi	a0,s2,512 # 1000200 <__CTOR_LIST__-0x1afffe04>
1c009852:	4611                	li	a2,4
1c009854:	26f5                	jal	1c009c40 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009856:	85a6                	mv	a1,s1
1c009858:	4615                	li	a2,5
1c00985a:	40090513          	addi	a0,s2,1024
1c00985e:	26cd                	jal	1c009c40 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c009860:	8522                	mv	a0,s0
1c009862:	2b3d                	jal	1c009da0 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c009864:	854a                	mv	a0,s2
1c009866:	2b2d                	jal	1c009da0 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c009868:	6589                	lui	a1,0x2
1c00986a:	46058593          	addi	a1,a1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00986e:	958a                	add	a1,a1,sp
1c009870:	e00a8493          	addi	s1,s5,-512
1c009874:	94ae                	add	s1,s1,a1
1c009876:	8622                	mv	a2,s0
1c009878:	85a6                	mv	a1,s1
1c00987a:	854e                	mv	a0,s3
1c00987c:	2381                	jal	1c009dbc <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00987e:	854e                	mv	a0,s3
1c009880:	29b5                	jal	1c009cfc <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009882:	20098a93          	addi	s5,s3,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c009886:	8622                	mv	a2,s0
1c009888:	60048593          	addi	a1,s1,1536
1c00988c:	8556                	mv	a0,s5
1c00988e:	233d                	jal	1c009dbc <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c009890:	8556                	mv	a0,s5
1c009892:	21ad                	jal	1c009cfc <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c009894:	6689                	lui	a3,0x2
1c009896:	e6068693          	addi	a3,a3,-416 # 1e60 <__CTOR_LIST__-0x1bffe1a4>
1c00989a:	40098493          	addi	s1,s3,1024
1c00989e:	00d105b3          	add	a1,sp,a3
1c0098a2:	8622                	mv	a2,s0
1c0098a4:	8526                	mv	a0,s1
1c0098a6:	2b19                	jal	1c009dbc <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c0098a8:	8526                	mv	a0,s1
1c0098aa:	2989                	jal	1c009cfc <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c0098ac:	864a                	mv	a2,s2
1c0098ae:	85ce                	mv	a1,s3
1c0098b0:	854e                	mv	a0,s3
1c0098b2:	2351                	jal	1c009e36 <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c0098b4:	854e                	mv	a0,s3
1c0098b6:	2395                	jal	1c009e1a <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c0098b8:	4572                	lw	a0,28(sp)
1c0098ba:	85a2                	mv	a1,s0
1c0098bc:	296d                	jal	1c009d76 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c0098be:	4562                	lw	a0,24(sp)
1c0098c0:	85ce                	mv	a1,s3
1c0098c2:	2955                	jal	1c009d76 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c0098c4:	6709                	lui	a4,0x2
1c0098c6:	46070713          	addi	a4,a4,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c0098ca:	970a                	add	a4,a4,sp
1c0098cc:	9a3a                	add	s4,s4,a4
1c0098ce:	4362                	lw	t1,24(sp)
1c0098d0:	bc0a2883          	lw	a7,-1088(s4)
1c0098d4:	bc4a2803          	lw	a6,-1084(s4)
1c0098d8:	bc8a2503          	lw	a0,-1080(s4)
1c0098dc:	bcca2583          	lw	a1,-1076(s4)
1c0098e0:	bd0a2603          	lw	a2,-1072(s4)
1c0098e4:	bd4a2683          	lw	a3,-1068(s4)
1c0098e8:	bd8a2703          	lw	a4,-1064(s4)
1c0098ec:	bdca2783          	lw	a5,-1060(s4)
1c0098f0:	49132023          	sw	a7,1152(t1)
1c0098f4:	49032223          	sw	a6,1156(t1)
1c0098f8:	48a32423          	sw	a0,1160(t1)
1c0098fc:	48b32623          	sw	a1,1164(t1)
1c009900:	48c32823          	sw	a2,1168(t1)
1c009904:	48d32a23          	sw	a3,1172(t1)
1c009908:	48e32c23          	sw	a4,1176(t1)
1c00990c:	48f32e23          	sw	a5,1180(t1)
1c009910:	6309                	lui	t1,0x2
1c009912:	911a                	add	sp,sp,t1
1c009914:	49c12083          	lw	ra,1180(sp)
1c009918:	49812403          	lw	s0,1176(sp)
1c00991c:	49412483          	lw	s1,1172(sp)
1c009920:	49012903          	lw	s2,1168(sp)
1c009924:	48c12983          	lw	s3,1164(sp)
1c009928:	48812a03          	lw	s4,1160(sp)
1c00992c:	48412a83          	lw	s5,1156(sp)
1c009930:	48012b03          	lw	s6,1152(sp)
1c009934:	47c12b83          	lw	s7,1148(sp)
1c009938:	47812c03          	lw	s8,1144(sp)
1c00993c:	47412c83          	lw	s9,1140(sp)
1c009940:	47012d03          	lw	s10,1136(sp)
1c009944:	46c12d83          	lw	s11,1132(sp)
1c009948:	4a010113          	addi	sp,sp,1184
1c00994c:	8082                	ret
1c00994e:	00469793          	slli	a5,a3,0x4
1c009952:	00465693          	srli	a3,a2,0x4
1c009956:	8edd                	or	a3,a3,a5
1c009958:	8c46                	mv	s8,a7
1c00995a:	ded5d5e3          	ble	a3,a1,1c009744 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x134>
1c00995e:	bbdd                	j	1c009754 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x144>

1c009960 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c009960:	1141                	addi	sp,sp,-16
1c009962:	c422                	sw	s0,8(sp)
1c009964:	c226                	sw	s1,4(sp)
1c009966:	842a                	mv	s0,a0
1c009968:	84ae                	mv	s1,a1
1c00996a:	c606                	sw	ra,12(sp)
1c00996c:	c04a                	sw	s2,0(sp)
1c00996e:	314d                	jal	1c009610 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c009970:	48048793          	addi	a5,s1,1152
1c009974:	00440713          	addi	a4,s0,4
1c009978:	00e7b733          	sltu	a4,a5,a4
1c00997c:	00174713          	xori	a4,a4,1
1c009980:	0ff77713          	andi	a4,a4,255
1c009984:	eb11                	bnez	a4,1c009998 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x38>
1c009986:	48448713          	addi	a4,s1,1156
1c00998a:	00e43733          	sltu	a4,s0,a4
1c00998e:	00174713          	xori	a4,a4,1
1c009992:	0ff77713          	andi	a4,a4,255
1c009996:	c769                	beqz	a4,1c009a60 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x100>
1c009998:	408007b3          	neg	a5,s0
1c00999c:	8b8d                	andi	a5,a5,3
1c00999e:	c3fd                	beqz	a5,1c009a84 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x124>
1c0099a0:	00044683          	lbu	a3,0(s0)
1c0099a4:	4705                	li	a4,1
1c0099a6:	48d48023          	sb	a3,1152(s1)
1c0099aa:	0ce78963          	beq	a5,a4,1c009a7c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x11c>
1c0099ae:	00144683          	lbu	a3,1(s0)
1c0099b2:	470d                	li	a4,3
1c0099b4:	48d480a3          	sb	a3,1153(s1)
1c0099b8:	0ce79a63          	bne	a5,a4,1c009a8c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x12c>
1c0099bc:	00244703          	lbu	a4,2(s0)
1c0099c0:	49d00893          	li	a7,1181
1c0099c4:	48e48123          	sb	a4,1154(s1)
1c0099c8:	450d                	li	a0,3
1c0099ca:	4a000813          	li	a6,1184
1c0099ce:	40f80833          	sub	a6,a6,a5
1c0099d2:	48078713          	addi	a4,a5,1152
1c0099d6:	00285593          	srli	a1,a6,0x2
1c0099da:	97a2                	add	a5,a5,s0
1c0099dc:	9726                	add	a4,a4,s1
1c0099de:	4681                	li	a3,0
1c0099e0:	4390                	lw	a2,0(a5)
1c0099e2:	0685                	addi	a3,a3,1
1c0099e4:	c310                	sw	a2,0(a4)
1c0099e6:	0791                	addi	a5,a5,4
1c0099e8:	0711                	addi	a4,a4,4
1c0099ea:	feb6ebe3          	bltu	a3,a1,1c0099e0 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x80>
1c0099ee:	ffc87693          	andi	a3,a6,-4
1c0099f2:	00d507b3          	add	a5,a0,a3
1c0099f6:	40d88733          	sub	a4,a7,a3
1c0099fa:	02d80d63          	beq	a6,a3,1c009a34 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c0099fe:	00f406b3          	add	a3,s0,a5
1c009a02:	0006c603          	lbu	a2,0(a3)
1c009a06:	00f486b3          	add	a3,s1,a5
1c009a0a:	48c68023          	sb	a2,1152(a3)
1c009a0e:	fff70593          	addi	a1,a4,-1
1c009a12:	00178613          	addi	a2,a5,1
1c009a16:	cd99                	beqz	a1,1c009a34 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c009a18:	9622                	add	a2,a2,s0
1c009a1a:	00064583          	lbu	a1,0(a2)
1c009a1e:	4609                	li	a2,2
1c009a20:	48b680a3          	sb	a1,1153(a3)
1c009a24:	0789                	addi	a5,a5,2
1c009a26:	00c70763          	beq	a4,a2,1c009a34 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c009a2a:	97a2                	add	a5,a5,s0
1c009a2c:	0007c783          	lbu	a5,0(a5)
1c009a30:	48f68123          	sb	a5,1154(a3)
1c009a34:	6905                	lui	s2,0x1
1c009a36:	92090513          	addi	a0,s2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c009a3a:	85a2                	mv	a1,s0
1c009a3c:	9526                	add	a0,a0,s1
1c009a3e:	4a000613          	li	a2,1184
1c009a42:	894ff0ef          	jal	ra,1c008ad6 <sha3_256>
1c009a46:	94090513          	addi	a0,s2,-1728
1c009a4a:	9526                	add	a0,a0,s1
1c009a4c:	02000593          	li	a1,32
1c009a50:	211d                	jal	1c009e76 <randombytes>
1c009a52:	40b2                	lw	ra,12(sp)
1c009a54:	4422                	lw	s0,8(sp)
1c009a56:	4492                	lw	s1,4(sp)
1c009a58:	4902                	lw	s2,0(sp)
1c009a5a:	4501                	li	a0,0
1c009a5c:	0141                	addi	sp,sp,16
1c009a5e:	8082                	ret
1c009a60:	6605                	lui	a2,0x1
1c009a62:	92060613          	addi	a2,a2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c009a66:	8722                	mv	a4,s0
1c009a68:	9626                	add	a2,a2,s1
1c009a6a:	00074683          	lbu	a3,0(a4)
1c009a6e:	0785                	addi	a5,a5,1
1c009a70:	fed78fa3          	sb	a3,-1(a5)
1c009a74:	0705                	addi	a4,a4,1
1c009a76:	fec79ae3          	bne	a5,a2,1c009a6a <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x10a>
1c009a7a:	bf6d                	j	1c009a34 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c009a7c:	49f00893          	li	a7,1183
1c009a80:	4505                	li	a0,1
1c009a82:	b7a1                	j	1c0099ca <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6a>
1c009a84:	4a000893          	li	a7,1184
1c009a88:	4501                	li	a0,0
1c009a8a:	b781                	j	1c0099ca <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6a>
1c009a8c:	49e00893          	li	a7,1182
1c009a90:	4509                	li	a0,2
1c009a92:	bf25                	j	1c0099ca <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6a>

1c009a94 <PQCLEAN_KYBER768_CLEAN_ntt>:
1c009a94:	7139                	addi	sp,sp,-64
1c009a96:	da26                	sw	s1,52(sp)
1c009a98:	d256                	sw	s5,36(sp)
1c009a9a:	d05a                	sw	s6,32(sp)
1c009a9c:	ce5e                	sw	s7,28(sp)
1c009a9e:	cc62                	sw	s8,24(sp)
1c009aa0:	ca66                	sw	s9,20(sp)
1c009aa2:	de06                	sw	ra,60(sp)
1c009aa4:	dc22                	sw	s0,56(sp)
1c009aa6:	d84a                	sw	s2,48(sp)
1c009aa8:	d64e                	sw	s3,44(sp)
1c009aaa:	d452                	sw	s4,40(sp)
1c009aac:	c86a                	sw	s10,16(sp)
1c009aae:	c66e                	sw	s11,12(sp)
1c009ab0:	8b2a                	mv	s6,a0
1c009ab2:	4c9d                	li	s9,7
1c009ab4:	d0a00493          	li	s1,-758
1c009ab8:	4b85                	li	s7,1
1c009aba:	08000a93          	li	s5,128
1c009abe:	0ff00c13          	li	s8,255
1c009ac2:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c009ac6:	1c0007b7          	lui	a5,0x1c000
1c009aca:	4401                	li	s0,0
1c009acc:	00199a13          	slli	s4,s3,0x1
1c009ad0:	13c78793          	addi	a5,a5,316 # 1c00013c <PQCLEAN_KYBER768_CLEAN_zetas>
1c009ad4:	008a8933          	add	s2,s5,s0
1c009ad8:	9a3e                	add	s4,s4,a5
1c009ada:	8bce                	mv	s7,s3
1c009adc:	05247b63          	bleu	s2,s0,1c009b32 <PQCLEAN_KYBER768_CLEAN_ntt+0x9e>
1c009ae0:	00191793          	slli	a5,s2,0x1
1c009ae4:	00fb0d33          	add	s10,s6,a5
1c009ae8:	0406                	slli	s0,s0,0x1
1c009aea:	945a                	add	s0,s0,s6
1c009aec:	8dea                	mv	s11,s10
1c009aee:	000d1503          	lh	a0,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c009af2:	0409                	addi	s0,s0,2
1c009af4:	02950533          	mul	a0,a0,s1
1c009af8:	2bed                	jal	1c00a0f2 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009afa:	ffe45703          	lhu	a4,-2(s0)
1c009afe:	0542                	slli	a0,a0,0x10
1c009b00:	8141                	srli	a0,a0,0x10
1c009b02:	8f09                	sub	a4,a4,a0
1c009b04:	00ed1023          	sh	a4,0(s10)
1c009b08:	ffe45703          	lhu	a4,-2(s0)
1c009b0c:	0d09                	addi	s10,s10,2
1c009b0e:	953a                	add	a0,a0,a4
1c009b10:	fea41f23          	sh	a0,-2(s0)
1c009b14:	fc8d9de3          	bne	s11,s0,1c009aee <PQCLEAN_KYBER768_CLEAN_ntt+0x5a>
1c009b18:	01590433          	add	s0,s2,s5
1c009b1c:	008c6d63          	bltu	s8,s0,1c009b36 <PQCLEAN_KYBER768_CLEAN_ntt+0xa2>
1c009b20:	0985                	addi	s3,s3,1
1c009b22:	008a8933          	add	s2,s5,s0
1c009b26:	000a1483          	lh	s1,0(s4)
1c009b2a:	8bce                	mv	s7,s3
1c009b2c:	0a09                	addi	s4,s4,2
1c009b2e:	fb2469e3          	bltu	s0,s2,1c009ae0 <PQCLEAN_KYBER768_CLEAN_ntt+0x4c>
1c009b32:	844a                	mv	s0,s2
1c009b34:	b7f5                	j	1c009b20 <PQCLEAN_KYBER768_CLEAN_ntt+0x8c>
1c009b36:	1cfd                	addi	s9,s9,-1
1c009b38:	001ada93          	srli	s5,s5,0x1
1c009b3c:	000c8b63          	beqz	s9,1c009b52 <PQCLEAN_KYBER768_CLEAN_ntt+0xbe>
1c009b40:	1c0007b7          	lui	a5,0x1c000
1c009b44:	0986                	slli	s3,s3,0x1
1c009b46:	13c78793          	addi	a5,a5,316 # 1c00013c <PQCLEAN_KYBER768_CLEAN_zetas>
1c009b4a:	99be                	add	s3,s3,a5
1c009b4c:	00099483          	lh	s1,0(s3)
1c009b50:	bf8d                	j	1c009ac2 <PQCLEAN_KYBER768_CLEAN_ntt+0x2e>
1c009b52:	50f2                	lw	ra,60(sp)
1c009b54:	5462                	lw	s0,56(sp)
1c009b56:	54d2                	lw	s1,52(sp)
1c009b58:	5942                	lw	s2,48(sp)
1c009b5a:	59b2                	lw	s3,44(sp)
1c009b5c:	5a22                	lw	s4,40(sp)
1c009b5e:	5a92                	lw	s5,36(sp)
1c009b60:	5b02                	lw	s6,32(sp)
1c009b62:	4bf2                	lw	s7,28(sp)
1c009b64:	4c62                	lw	s8,24(sp)
1c009b66:	4cd2                	lw	s9,20(sp)
1c009b68:	4d42                	lw	s10,16(sp)
1c009b6a:	4db2                	lw	s11,12(sp)
1c009b6c:	6121                	addi	sp,sp,64
1c009b6e:	8082                	ret

1c009b70 <PQCLEAN_KYBER768_CLEAN_basemul>:
1c009b70:	00261783          	lh	a5,2(a2)
1c009b74:	00259703          	lh	a4,2(a1)
1c009b78:	1101                	addi	sp,sp,-32
1c009b7a:	cc22                	sw	s0,24(sp)
1c009b7c:	842a                	mv	s0,a0
1c009b7e:	02f70533          	mul	a0,a4,a5
1c009b82:	ce06                	sw	ra,28(sp)
1c009b84:	ca26                	sw	s1,20(sp)
1c009b86:	c84a                	sw	s2,16(sp)
1c009b88:	c64e                	sw	s3,12(sp)
1c009b8a:	892e                	mv	s2,a1
1c009b8c:	84b2                	mv	s1,a2
1c009b8e:	89b6                	mv	s3,a3
1c009b90:	238d                	jal	1c00a0f2 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009b92:	00a41023          	sh	a0,0(s0)
1c009b96:	03350533          	mul	a0,a0,s3
1c009b9a:	2ba1                	jal	1c00a0f2 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009b9c:	00a41023          	sh	a0,0(s0)
1c009ba0:	00049783          	lh	a5,0(s1)
1c009ba4:	00091503          	lh	a0,0(s2)
1c009ba8:	02f50533          	mul	a0,a0,a5
1c009bac:	2399                	jal	1c00a0f2 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009bae:	00045783          	lhu	a5,0(s0)
1c009bb2:	953e                	add	a0,a0,a5
1c009bb4:	00a41023          	sh	a0,0(s0)
1c009bb8:	00249783          	lh	a5,2(s1)
1c009bbc:	00091503          	lh	a0,0(s2)
1c009bc0:	02f50533          	mul	a0,a0,a5
1c009bc4:	233d                	jal	1c00a0f2 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009bc6:	00a41123          	sh	a0,2(s0)
1c009bca:	00049783          	lh	a5,0(s1)
1c009bce:	00291503          	lh	a0,2(s2)
1c009bd2:	02f50533          	mul	a0,a0,a5
1c009bd6:	2b31                	jal	1c00a0f2 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009bd8:	00245783          	lhu	a5,2(s0)
1c009bdc:	40f2                	lw	ra,28(sp)
1c009bde:	953e                	add	a0,a0,a5
1c009be0:	00a41123          	sh	a0,2(s0)
1c009be4:	4462                	lw	s0,24(sp)
1c009be6:	44d2                	lw	s1,20(sp)
1c009be8:	4942                	lw	s2,16(sp)
1c009bea:	49b2                	lw	s3,12(sp)
1c009bec:	6105                	addi	sp,sp,32
1c009bee:	8082                	ret

1c009bf0 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>:
1c009bf0:	6805                	lui	a6,0x1
1c009bf2:	18050893          	addi	a7,a0,384
1c009bf6:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c009bfa:	00059703          	lh	a4,0(a1)
1c009bfe:	00259783          	lh	a5,2(a1)
1c009c02:	40f75613          	srai	a2,a4,0xf
1c009c06:	40f7d693          	srai	a3,a5,0xf
1c009c0a:	01067633          	and	a2,a2,a6
1c009c0e:	0106f6b3          	and	a3,a3,a6
1c009c12:	9732                	add	a4,a4,a2
1c009c14:	97b6                	add	a5,a5,a3
1c009c16:	0742                	slli	a4,a4,0x10
1c009c18:	07c2                	slli	a5,a5,0x10
1c009c1a:	8341                	srli	a4,a4,0x10
1c009c1c:	83c1                	srli	a5,a5,0x10
1c009c1e:	00479613          	slli	a2,a5,0x4
1c009c22:	00875693          	srli	a3,a4,0x8
1c009c26:	8ed1                	or	a3,a3,a2
1c009c28:	8391                	srli	a5,a5,0x4
1c009c2a:	00e50023          	sb	a4,0(a0)
1c009c2e:	00d500a3          	sb	a3,1(a0)
1c009c32:	00f50123          	sb	a5,2(a0)
1c009c36:	050d                	addi	a0,a0,3
1c009c38:	0591                	addi	a1,a1,4
1c009c3a:	fca890e3          	bne	a7,a0,1c009bfa <PQCLEAN_KYBER768_CLEAN_poly_tobytes+0xa>
1c009c3e:	8082                	ret

1c009c40 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c009c40:	7175                	addi	sp,sp,-144
1c009c42:	c522                	sw	s0,136(sp)
1c009c44:	86b2                	mv	a3,a2
1c009c46:	842a                	mv	s0,a0
1c009c48:	862e                	mv	a2,a1
1c009c4a:	850a                	mv	a0,sp
1c009c4c:	08000593          	li	a1,128
1c009c50:	c706                	sw	ra,140(sp)
1c009c52:	2b31                	jal	1c00a16e <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c009c54:	858a                	mv	a1,sp
1c009c56:	8522                	mv	a0,s0
1c009c58:	efefe0ef          	jal	ra,1c008356 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c009c5c:	40ba                	lw	ra,140(sp)
1c009c5e:	442a                	lw	s0,136(sp)
1c009c60:	6149                	addi	sp,sp,144
1c009c62:	8082                	ret

1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_ntt>:
1c009c64:	1141                	addi	sp,sp,-16
1c009c66:	c422                	sw	s0,8(sp)
1c009c68:	842a                	mv	s0,a0
1c009c6a:	c226                	sw	s1,4(sp)
1c009c6c:	c606                	sw	ra,12(sp)
1c009c6e:	20040493          	addi	s1,s0,512
1c009c72:	350d                	jal	1c009a94 <PQCLEAN_KYBER768_CLEAN_ntt>
1c009c74:	00041503          	lh	a0,0(s0)
1c009c78:	0409                	addi	s0,s0,2
1c009c7a:	2961                	jal	1c00a112 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c009c7c:	fea41f23          	sh	a0,-2(s0)
1c009c80:	fe941ae3          	bne	s0,s1,1c009c74 <PQCLEAN_KYBER768_CLEAN_poly_ntt+0x10>
1c009c84:	40b2                	lw	ra,12(sp)
1c009c86:	4422                	lw	s0,8(sp)
1c009c88:	4492                	lw	s1,4(sp)
1c009c8a:	0141                	addi	sp,sp,16
1c009c8c:	8082                	ret

1c009c8e <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c009c8e:	1101                	addi	sp,sp,-32
1c009c90:	ca26                	sw	s1,20(sp)
1c009c92:	c256                	sw	s5,4(sp)
1c009c94:	1c0004b7          	lui	s1,0x1c000
1c009c98:	1c000ab7          	lui	s5,0x1c000
1c009c9c:	c84a                	sw	s2,16(sp)
1c009c9e:	c64e                	sw	s3,12(sp)
1c009ca0:	c452                	sw	s4,8(sp)
1c009ca2:	ce06                	sw	ra,28(sp)
1c009ca4:	cc22                	sw	s0,24(sp)
1c009ca6:	1bc48493          	addi	s1,s1,444 # 1c0001bc <PQCLEAN_KYBER768_CLEAN_zetas+0x80>
1c009caa:	00450a13          	addi	s4,a0,4
1c009cae:	00458993          	addi	s3,a1,4
1c009cb2:	00460913          	addi	s2,a2,4
1c009cb6:	23ca8a93          	addi	s5,s5,572 # 1c00023c <.got>
1c009cba:	00049403          	lh	s0,0(s1)
1c009cbe:	ffc90613          	addi	a2,s2,-4
1c009cc2:	ffc98593          	addi	a1,s3,-4
1c009cc6:	ffca0513          	addi	a0,s4,-4
1c009cca:	86a2                	mv	a3,s0
1c009ccc:	3555                	jal	1c009b70 <PQCLEAN_KYBER768_CLEAN_basemul>
1c009cce:	408006b3          	neg	a3,s0
1c009cd2:	06c2                	slli	a3,a3,0x10
1c009cd4:	864a                	mv	a2,s2
1c009cd6:	85ce                	mv	a1,s3
1c009cd8:	8552                	mv	a0,s4
1c009cda:	86c1                	srai	a3,a3,0x10
1c009cdc:	0489                	addi	s1,s1,2
1c009cde:	3d49                	jal	1c009b70 <PQCLEAN_KYBER768_CLEAN_basemul>
1c009ce0:	0a21                	addi	s4,s4,8
1c009ce2:	09a1                	addi	s3,s3,8
1c009ce4:	0921                	addi	s2,s2,8
1c009ce6:	fc9a9ae3          	bne	s5,s1,1c009cba <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x2c>
1c009cea:	40f2                	lw	ra,28(sp)
1c009cec:	4462                	lw	s0,24(sp)
1c009cee:	44d2                	lw	s1,20(sp)
1c009cf0:	4942                	lw	s2,16(sp)
1c009cf2:	49b2                	lw	s3,12(sp)
1c009cf4:	4a22                	lw	s4,8(sp)
1c009cf6:	4a92                	lw	s5,4(sp)
1c009cf8:	6105                	addi	sp,sp,32
1c009cfa:	8082                	ret

1c009cfc <PQCLEAN_KYBER768_CLEAN_poly_tomont>:
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
1c009d1a:	2ee1                	jal	1c00a0f2 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c009d1c:	fea41f23          	sh	a0,-2(s0)
1c009d20:	ff2418e3          	bne	s0,s2,1c009d10 <PQCLEAN_KYBER768_CLEAN_poly_tomont+0x14>
1c009d24:	40b2                	lw	ra,12(sp)
1c009d26:	4422                	lw	s0,8(sp)
1c009d28:	4492                	lw	s1,4(sp)
1c009d2a:	4902                	lw	s2,0(sp)
1c009d2c:	0141                	addi	sp,sp,16
1c009d2e:	8082                	ret

1c009d30 <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c009d30:	1141                	addi	sp,sp,-16
1c009d32:	c422                	sw	s0,8(sp)
1c009d34:	c226                	sw	s1,4(sp)
1c009d36:	c606                	sw	ra,12(sp)
1c009d38:	842a                	mv	s0,a0
1c009d3a:	20050493          	addi	s1,a0,512
1c009d3e:	00041503          	lh	a0,0(s0)
1c009d42:	0409                	addi	s0,s0,2
1c009d44:	26f9                	jal	1c00a112 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c009d46:	fea41f23          	sh	a0,-2(s0)
1c009d4a:	fe941ae3          	bne	s0,s1,1c009d3e <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c009d4e:	40b2                	lw	ra,12(sp)
1c009d50:	4422                	lw	s0,8(sp)
1c009d52:	4492                	lw	s1,4(sp)
1c009d54:	0141                	addi	sp,sp,16
1c009d56:	8082                	ret

1c009d58 <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c009d58:	20058693          	addi	a3,a1,512
1c009d5c:	0005d783          	lhu	a5,0(a1)
1c009d60:	00065703          	lhu	a4,0(a2)
1c009d64:	0589                	addi	a1,a1,2
1c009d66:	97ba                	add	a5,a5,a4
1c009d68:	00f51023          	sh	a5,0(a0)
1c009d6c:	0609                	addi	a2,a2,2
1c009d6e:	0509                	addi	a0,a0,2
1c009d70:	fed596e3          	bne	a1,a3,1c009d5c <PQCLEAN_KYBER768_CLEAN_poly_add+0x4>
1c009d74:	8082                	ret

1c009d76 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>:
1c009d76:	1141                	addi	sp,sp,-16
1c009d78:	c606                	sw	ra,12(sp)
1c009d7a:	c422                	sw	s0,8(sp)
1c009d7c:	c226                	sw	s1,4(sp)
1c009d7e:	842a                	mv	s0,a0
1c009d80:	84ae                	mv	s1,a1
1c009d82:	35bd                	jal	1c009bf0 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009d84:	20048593          	addi	a1,s1,512
1c009d88:	18040513          	addi	a0,s0,384
1c009d8c:	3595                	jal	1c009bf0 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c009d8e:	30040513          	addi	a0,s0,768
1c009d92:	4422                	lw	s0,8(sp)
1c009d94:	40b2                	lw	ra,12(sp)
1c009d96:	40048593          	addi	a1,s1,1024
1c009d9a:	4492                	lw	s1,4(sp)
1c009d9c:	0141                	addi	sp,sp,16
1c009d9e:	bd89                	j	1c009bf0 <PQCLEAN_KYBER768_CLEAN_poly_tobytes>

1c009da0 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c009da0:	1141                	addi	sp,sp,-16
1c009da2:	c606                	sw	ra,12(sp)
1c009da4:	c422                	sw	s0,8(sp)
1c009da6:	842a                	mv	s0,a0
1c009da8:	3d75                	jal	1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c009daa:	20040513          	addi	a0,s0,512
1c009dae:	3d5d                	jal	1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c009db0:	40040513          	addi	a0,s0,1024
1c009db4:	4422                	lw	s0,8(sp)
1c009db6:	40b2                	lw	ra,12(sp)
1c009db8:	0141                	addi	sp,sp,16
1c009dba:	b56d                	j	1c009c64 <PQCLEAN_KYBER768_CLEAN_poly_ntt>

1c009dbc <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c009dbc:	df010113          	addi	sp,sp,-528
1c009dc0:	20112623          	sw	ra,524(sp)
1c009dc4:	20812423          	sw	s0,520(sp)
1c009dc8:	20912223          	sw	s1,516(sp)
1c009dcc:	21212023          	sw	s2,512(sp)
1c009dd0:	842a                	mv	s0,a0
1c009dd2:	84ae                	mv	s1,a1
1c009dd4:	8932                	mv	s2,a2
1c009dd6:	3d65                	jal	1c009c8e <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009dd8:	20090613          	addi	a2,s2,512
1c009ddc:	20048593          	addi	a1,s1,512
1c009de0:	850a                	mv	a0,sp
1c009de2:	3575                	jal	1c009c8e <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009de4:	860a                	mv	a2,sp
1c009de6:	85a2                	mv	a1,s0
1c009de8:	8522                	mv	a0,s0
1c009dea:	37bd                	jal	1c009d58 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009dec:	40090613          	addi	a2,s2,1024
1c009df0:	40048593          	addi	a1,s1,1024
1c009df4:	850a                	mv	a0,sp
1c009df6:	3d61                	jal	1c009c8e <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c009df8:	860a                	mv	a2,sp
1c009dfa:	85a2                	mv	a1,s0
1c009dfc:	8522                	mv	a0,s0
1c009dfe:	3fa9                	jal	1c009d58 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009e00:	8522                	mv	a0,s0
1c009e02:	373d                	jal	1c009d30 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009e04:	20c12083          	lw	ra,524(sp)
1c009e08:	20812403          	lw	s0,520(sp)
1c009e0c:	20412483          	lw	s1,516(sp)
1c009e10:	20012903          	lw	s2,512(sp)
1c009e14:	21010113          	addi	sp,sp,528
1c009e18:	8082                	ret

1c009e1a <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c009e1a:	1141                	addi	sp,sp,-16
1c009e1c:	c606                	sw	ra,12(sp)
1c009e1e:	c422                	sw	s0,8(sp)
1c009e20:	842a                	mv	s0,a0
1c009e22:	3739                	jal	1c009d30 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009e24:	20040513          	addi	a0,s0,512
1c009e28:	3721                	jal	1c009d30 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c009e2a:	40040513          	addi	a0,s0,1024
1c009e2e:	4422                	lw	s0,8(sp)
1c009e30:	40b2                	lw	ra,12(sp)
1c009e32:	0141                	addi	sp,sp,16
1c009e34:	bdf5                	j	1c009d30 <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c009e36 <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c009e36:	1101                	addi	sp,sp,-32
1c009e38:	cc22                	sw	s0,24(sp)
1c009e3a:	ca26                	sw	s1,20(sp)
1c009e3c:	c84a                	sw	s2,16(sp)
1c009e3e:	c64e                	sw	s3,12(sp)
1c009e40:	c452                	sw	s4,8(sp)
1c009e42:	ce06                	sw	ra,28(sp)
1c009e44:	8a2a                	mv	s4,a0
1c009e46:	89ae                	mv	s3,a1
1c009e48:	8932                	mv	s2,a2
1c009e4a:	4401                	li	s0,0
1c009e4c:	60000493          	li	s1,1536
1c009e50:	00890633          	add	a2,s2,s0
1c009e54:	008985b3          	add	a1,s3,s0
1c009e58:	008a0533          	add	a0,s4,s0
1c009e5c:	20040413          	addi	s0,s0,512
1c009e60:	3de5                	jal	1c009d58 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c009e62:	fe9417e3          	bne	s0,s1,1c009e50 <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c009e66:	40f2                	lw	ra,28(sp)
1c009e68:	4462                	lw	s0,24(sp)
1c009e6a:	44d2                	lw	s1,20(sp)
1c009e6c:	4942                	lw	s2,16(sp)
1c009e6e:	49b2                	lw	s3,12(sp)
1c009e70:	4a22                	lw	s4,8(sp)
1c009e72:	6105                	addi	sp,sp,32
1c009e74:	8082                	ret

1c009e76 <randombytes>:
1c009e76:	26058d63          	beqz	a1,1c00a0f0 <randombytes+0x27a>
1c009e7a:	1c0046b7          	lui	a3,0x1c004
1c009e7e:	7139                	addi	sp,sp,-64
1c009e80:	29468693          	addi	a3,a3,660 # 1c004294 <outleft>
1c009e84:	da4a                	sw	s2,52(sp)
1c009e86:	d84e                	sw	s3,48(sp)
1c009e88:	95aa                	add	a1,a1,a0
1c009e8a:	1c004737          	lui	a4,0x1c004
1c009e8e:	1c0049b7          	lui	s3,0x1c004
1c009e92:	9e378937          	lui	s2,0x9e378
1c009e96:	429c                	lw	a5,0(a3)
1c009e98:	d652                	sw	s4,44(sp)
1c009e9a:	d456                	sw	s5,40(sp)
1c009e9c:	de22                	sw	s0,60(sp)
1c009e9e:	dc26                	sw	s1,56(sp)
1c009ea0:	d25a                	sw	s6,36(sp)
1c009ea2:	d05e                	sw	s7,32(sp)
1c009ea4:	ce62                	sw	s8,28(sp)
1c009ea6:	cc66                	sw	s9,24(sp)
1c009ea8:	ca6a                	sw	s10,20(sp)
1c009eaa:	c86e                	sw	s11,16(sp)
1c009eac:	8aaa                	mv	s5,a0
1c009eae:	c62e                	sw	a1,12(sp)
1c009eb0:	27070a13          	addi	s4,a4,624 # 1c004270 <out>
1c009eb4:	24098993          	addi	s3,s3,576 # 1c004240 <stack>
1c009eb8:	9b990913          	addi	s2,s2,-1607 # 9e3779b9 <pulp__FC+0x9e3779ba>
1c009ebc:	cf9d                	beqz	a5,1c009efa <randombytes+0x84>
1c009ebe:	17fd                	addi	a5,a5,-1
1c009ec0:	00279713          	slli	a4,a5,0x2
1c009ec4:	9752                	add	a4,a4,s4
1c009ec6:	4318                	lw	a4,0(a4)
1c009ec8:	1c0046b7          	lui	a3,0x1c004
1c009ecc:	00ea8023          	sb	a4,0(s5)
1c009ed0:	29468693          	addi	a3,a3,660 # 1c004294 <outleft>
1c009ed4:	4732                	lw	a4,12(sp)
1c009ed6:	c29c                	sw	a5,0(a3)
1c009ed8:	0a85                	addi	s5,s5,1
1c009eda:	feea91e3          	bne	s5,a4,1c009ebc <randombytes+0x46>
1c009ede:	5472                	lw	s0,60(sp)
1c009ee0:	54e2                	lw	s1,56(sp)
1c009ee2:	5952                	lw	s2,52(sp)
1c009ee4:	59c2                	lw	s3,48(sp)
1c009ee6:	5a32                	lw	s4,44(sp)
1c009ee8:	5aa2                	lw	s5,40(sp)
1c009eea:	5b12                	lw	s6,36(sp)
1c009eec:	5b82                	lw	s7,32(sp)
1c009eee:	4c72                	lw	s8,28(sp)
1c009ef0:	4ce2                	lw	s9,24(sp)
1c009ef2:	4d52                	lw	s10,20(sp)
1c009ef4:	4dc2                	lw	s11,16(sp)
1c009ef6:	6121                	addi	sp,sp,64
1c009ef8:	8082                	ret
1c009efa:	0009a583          	lw	a1,0(s3)
1c009efe:	0049a283          	lw	t0,4(s3)
1c009f02:	0585                	addi	a1,a1,1
1c009f04:	00b9a023          	sw	a1,0(s3)
1c009f08:	0089a383          	lw	t2,8(s3)
1c009f0c:	00c9a403          	lw	s0,12(s3)
1c009f10:	e999                	bnez	a1,1c009f26 <randombytes+0xb0>
1c009f12:	0285                	addi	t0,t0,1
1c009f14:	0059a223          	sw	t0,4(s3)
1c009f18:	00029763          	bnez	t0,1c009f26 <randombytes+0xb0>
1c009f1c:	0385                	addi	t2,t2,1
1c009f1e:	0079a423          	sw	t2,8(s3)
1c009f22:	1c038363          	beqz	t2,1c00a0e8 <randombytes+0x272>
1c009f26:	0109af83          	lw	t6,16(s3)
1c009f2a:	0149af03          	lw	t5,20(s3)
1c009f2e:	0189ae83          	lw	t4,24(s3)
1c009f32:	01c9ae03          	lw	t3,28(s3)
1c009f36:	0209a303          	lw	t1,32(s3)
1c009f3a:	0249a883          	lw	a7,36(s3)
1c009f3e:	0289a803          	lw	a6,40(s3)
1c009f42:	02c9a503          	lw	a0,44(s3)
1c009f46:	478d                	li	a5,3
1c009f48:	470d                	li	a4,3
1c009f4a:	c23e                	sw	a5,4(sp)
1c009f4c:	0095c593          	xori	a1,a1,9
1c009f50:	0072c293          	xori	t0,t0,7
1c009f54:	0093c393          	xori	t2,t2,9
1c009f58:	00344413          	xori	s0,s0,3
1c009f5c:	002fcf93          	xori	t6,t6,2
1c009f60:	003f4f13          	xori	t5,t5,3
1c009f64:	008ece93          	xori	t4,t4,8
1c009f68:	004e4e13          	xori	t3,t3,4
1c009f6c:	00634313          	xori	t1,t1,6
1c009f70:	0028c893          	xori	a7,a7,2
1c009f74:	00684813          	xori	a6,a6,6
1c009f78:	00454513          	xori	a0,a0,4
1c009f7c:	4b15                	li	s6,5
1c009f7e:	4ba5                	li	s7,9
1c009f80:	4c1d                	li	s8,7
1c009f82:	4c89                	li	s9,2
1c009f84:	4d0d                	li	s10,3
1c009f86:	4da1                	li	s11,8
1c009f88:	c43a                	sw	a4,8(sp)
1c009f8a:	4781                	li	a5,0
1c009f8c:	e377a737          	lui	a4,0xe377a
1c009f90:	b9070713          	addi	a4,a4,-1136 # e3779b90 <pulp__FC+0xe3779b91>
1c009f94:	00e784b3          	add	s1,a5,a4
1c009f98:	97ca                	add	a5,a5,s2
1c009f9a:	01b55613          	srli	a2,a0,0x1b
1c009f9e:	00354713          	xori	a4,a0,3
1c009fa2:	00551693          	slli	a3,a0,0x5
1c009fa6:	8ed1                	or	a3,a3,a2
1c009fa8:	973e                	add	a4,a4,a5
1c009faa:	8f35                	xor	a4,a4,a3
1c009fac:	95ba                	add	a1,a1,a4
1c009fae:	0195d613          	srli	a2,a1,0x19
1c009fb2:	0015c713          	xori	a4,a1,1
1c009fb6:	00759693          	slli	a3,a1,0x7
1c009fba:	8ed1                	or	a3,a3,a2
1c009fbc:	973e                	add	a4,a4,a5
1c009fbe:	8f35                	xor	a4,a4,a3
1c009fc0:	92ba                	add	t0,t0,a4
1c009fc2:	0172d613          	srli	a2,t0,0x17
1c009fc6:	0042c713          	xori	a4,t0,4
1c009fca:	00929693          	slli	a3,t0,0x9
1c009fce:	8ed1                	or	a3,a3,a2
1c009fd0:	973e                	add	a4,a4,a5
1c009fd2:	8f35                	xor	a4,a4,a3
1c009fd4:	93ba                	add	t2,t2,a4
1c009fd6:	0133d613          	srli	a2,t2,0x13
1c009fda:	0013c713          	xori	a4,t2,1
1c009fde:	00d39693          	slli	a3,t2,0xd
1c009fe2:	8ed1                	or	a3,a3,a2
1c009fe4:	973e                	add	a4,a4,a5
1c009fe6:	8f35                	xor	a4,a4,a3
1c009fe8:	943a                	add	s0,s0,a4
1c009fea:	01b45613          	srli	a2,s0,0x1b
1c009fee:	00544713          	xori	a4,s0,5
1c009ff2:	00541693          	slli	a3,s0,0x5
1c009ff6:	8ed1                	or	a3,a3,a2
1c009ff8:	973e                	add	a4,a4,a5
1c009ffa:	8f35                	xor	a4,a4,a3
1c009ffc:	9fba                	add	t6,t6,a4
1c009ffe:	019fd613          	srli	a2,t6,0x19
1c00a002:	009fc713          	xori	a4,t6,9
1c00a006:	007f9693          	slli	a3,t6,0x7
1c00a00a:	8ed1                	or	a3,a3,a2
1c00a00c:	973e                	add	a4,a4,a5
1c00a00e:	8f35                	xor	a4,a4,a3
1c00a010:	9f3a                	add	t5,t5,a4
1c00a012:	017f5613          	srli	a2,t5,0x17
1c00a016:	002f4713          	xori	a4,t5,2
1c00a01a:	009f1693          	slli	a3,t5,0x9
1c00a01e:	8ed1                	or	a3,a3,a2
1c00a020:	973e                	add	a4,a4,a5
1c00a022:	8f35                	xor	a4,a4,a3
1c00a024:	9eba                	add	t4,t4,a4
1c00a026:	013ed613          	srli	a2,t4,0x13
1c00a02a:	006ec713          	xori	a4,t4,6
1c00a02e:	00de9693          	slli	a3,t4,0xd
1c00a032:	8ed1                	or	a3,a3,a2
1c00a034:	973e                	add	a4,a4,a5
1c00a036:	8f35                	xor	a4,a4,a3
1c00a038:	9e3a                	add	t3,t3,a4
1c00a03a:	01be5613          	srli	a2,t3,0x1b
1c00a03e:	005e4713          	xori	a4,t3,5
1c00a042:	005e1693          	slli	a3,t3,0x5
1c00a046:	8ed1                	or	a3,a3,a2
1c00a048:	973e                	add	a4,a4,a5
1c00a04a:	8f35                	xor	a4,a4,a3
1c00a04c:	933a                	add	t1,t1,a4
1c00a04e:	01935613          	srli	a2,t1,0x19
1c00a052:	00334713          	xori	a4,t1,3
1c00a056:	00731693          	slli	a3,t1,0x7
1c00a05a:	8ed1                	or	a3,a3,a2
1c00a05c:	973e                	add	a4,a4,a5
1c00a05e:	8f35                	xor	a4,a4,a3
1c00a060:	98ba                	add	a7,a7,a4
1c00a062:	0178d613          	srli	a2,a7,0x17
1c00a066:	0058c713          	xori	a4,a7,5
1c00a06a:	00989693          	slli	a3,a7,0x9
1c00a06e:	8ed1                	or	a3,a3,a2
1c00a070:	973e                	add	a4,a4,a5
1c00a072:	8f35                	xor	a4,a4,a3
1c00a074:	983a                	add	a6,a6,a4
1c00a076:	00884713          	xori	a4,a6,8
1c00a07a:	00d81693          	slli	a3,a6,0xd
1c00a07e:	01385613          	srli	a2,a6,0x13
1c00a082:	973e                	add	a4,a4,a5
1c00a084:	8ed1                	or	a3,a3,a2
1c00a086:	8f35                	xor	a4,a4,a3
1c00a088:	953a                	add	a0,a0,a4
1c00a08a:	f09797e3          	bne	a5,s1,1c009f98 <randombytes+0x122>
1c00a08e:	4692                	lw	a3,4(sp)
1c00a090:	4722                	lw	a4,8(sp)
1c00a092:	01f6c6b3          	xor	a3,a3,t6
1c00a096:	c236                	sw	a3,4(sp)
1c00a098:	01e74733          	xor	a4,a4,t5
1c00a09c:	c6ef36b7          	lui	a3,0xc6ef3
1c00a0a0:	c43a                	sw	a4,8(sp)
1c00a0a2:	72068693          	addi	a3,a3,1824 # c6ef3720 <pulp__FC+0xc6ef3721>
1c00a0a6:	01ddcdb3          	xor	s11,s11,t4
1c00a0aa:	01cd4d33          	xor	s10,s10,t3
1c00a0ae:	006cccb3          	xor	s9,s9,t1
1c00a0b2:	011c4c33          	xor	s8,s8,a7
1c00a0b6:	010bcbb3          	xor	s7,s7,a6
1c00a0ba:	00ab4b33          	xor	s6,s6,a0
1c00a0be:	ecd797e3          	bne	a5,a3,1c009f8c <randombytes+0x116>
1c00a0c2:	4792                	lw	a5,4(sp)
1c00a0c4:	00ea2223          	sw	a4,4(s4)
1c00a0c8:	00fa2023          	sw	a5,0(s4)
1c00a0cc:	01ba2423          	sw	s11,8(s4)
1c00a0d0:	01aa2623          	sw	s10,12(s4)
1c00a0d4:	019a2823          	sw	s9,16(s4)
1c00a0d8:	018a2a23          	sw	s8,20(s4)
1c00a0dc:	017a2c23          	sw	s7,24(s4)
1c00a0e0:	016a2e23          	sw	s6,28(s4)
1c00a0e4:	479d                	li	a5,7
1c00a0e6:	bbe9                	j	1c009ec0 <randombytes+0x4a>
1c00a0e8:	0405                	addi	s0,s0,1
1c00a0ea:	0089a623          	sw	s0,12(s3)
1c00a0ee:	bd25                	j	1c009f26 <randombytes+0xb0>
1c00a0f0:	8082                	ret

1c00a0f2 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00a0f2:	777d                	lui	a4,0xfffff
1c00a0f4:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00a0f8:	02f507b3          	mul	a5,a0,a5
1c00a0fc:	07c2                	slli	a5,a5,0x10
1c00a0fe:	2ff70713          	addi	a4,a4,767
1c00a102:	87c1                	srai	a5,a5,0x10
1c00a104:	02e787b3          	mul	a5,a5,a4
1c00a108:	953e                	add	a0,a0,a5
1c00a10a:	8541                	srai	a0,a0,0x10
1c00a10c:	0542                	slli	a0,a0,0x10
1c00a10e:	8541                	srai	a0,a0,0x10
1c00a110:	8082                	ret

1c00a112 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00a112:	6795                	lui	a5,0x5
1c00a114:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00a118:	02f507b3          	mul	a5,a0,a5
1c00a11c:	02000737          	lui	a4,0x2000
1c00a120:	97ba                	add	a5,a5,a4
1c00a122:	6705                	lui	a4,0x1
1c00a124:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00a128:	87e9                	srai	a5,a5,0x1a
1c00a12a:	02e787b3          	mul	a5,a5,a4
1c00a12e:	8d1d                	sub	a0,a0,a5
1c00a130:	0542                	slli	a0,a0,0x10
1c00a132:	8541                	srai	a0,a0,0x10
1c00a134:	8082                	ret

1c00a136 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00a136:	7139                	addi	sp,sp,-64
1c00a138:	da26                	sw	s1,52(sp)
1c00a13a:	d84a                	sw	s2,48(sp)
1c00a13c:	84b2                	mv	s1,a2
1c00a13e:	892a                	mv	s2,a0
1c00a140:	02000613          	li	a2,32
1c00a144:	0068                	addi	a0,sp,12
1c00a146:	de06                	sw	ra,60(sp)
1c00a148:	dc22                	sw	s0,56(sp)
1c00a14a:	8436                	mv	s0,a3
1c00a14c:	2049                	jal	1c00a1ce <memcpy>
1c00a14e:	006c                	addi	a1,sp,12
1c00a150:	854a                	mv	a0,s2
1c00a152:	02200613          	li	a2,34
1c00a156:	02910623          	sb	s1,44(sp)
1c00a15a:	028106a3          	sb	s0,45(sp)
1c00a15e:	ca2fe0ef          	jal	ra,1c008600 <shake128_absorb>
1c00a162:	50f2                	lw	ra,60(sp)
1c00a164:	5462                	lw	s0,56(sp)
1c00a166:	54d2                	lw	s1,52(sp)
1c00a168:	5942                	lw	s2,48(sp)
1c00a16a:	6121                	addi	sp,sp,64
1c00a16c:	8082                	ret

1c00a16e <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00a16e:	7139                	addi	sp,sp,-64
1c00a170:	87b2                	mv	a5,a2
1c00a172:	da26                	sw	s1,52(sp)
1c00a174:	d84a                	sw	s2,48(sp)
1c00a176:	84aa                	mv	s1,a0
1c00a178:	892e                	mv	s2,a1
1c00a17a:	02000613          	li	a2,32
1c00a17e:	85be                	mv	a1,a5
1c00a180:	0068                	addi	a0,sp,12
1c00a182:	de06                	sw	ra,60(sp)
1c00a184:	dc22                	sw	s0,56(sp)
1c00a186:	8436                	mv	s0,a3
1c00a188:	2099                	jal	1c00a1ce <memcpy>
1c00a18a:	0070                	addi	a2,sp,12
1c00a18c:	85ca                	mv	a1,s2
1c00a18e:	8526                	mv	a0,s1
1c00a190:	02100693          	li	a3,33
1c00a194:	02810623          	sb	s0,44(sp)
1c00a198:	f04fe0ef          	jal	ra,1c00889c <shake256>
1c00a19c:	50f2                	lw	ra,60(sp)
1c00a19e:	5462                	lw	s0,56(sp)
1c00a1a0:	54d2                	lw	s1,52(sp)
1c00a1a2:	5942                	lw	s2,48(sp)
1c00a1a4:	6121                	addi	sp,sp,64
1c00a1a6:	8082                	ret

1c00a1a8 <pos_wait_forever>:
1c00a1a8:	f14027f3          	csrr	a5,mhartid
1c00a1ac:	8795                	srai	a5,a5,0x5
1c00a1ae:	03f7f793          	andi	a5,a5,63
1c00a1b2:	477d                	li	a4,31
1c00a1b4:	00e78363          	beq	a5,a4,1c00a1ba <pos_wait_forever+0x12>
1c00a1b8:	a001                	j	1c00a1b8 <pos_wait_forever+0x10>
1c00a1ba:	1a10a7b7          	lui	a5,0x1a10a
1c00a1be:	577d                	li	a4,-1
1c00a1c0:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a1c4:	10500073          	wfi
1c00a1c8:	10500073          	wfi
1c00a1cc:	bfe5                	j	1c00a1c4 <pos_wait_forever+0x1c>

1c00a1ce <memcpy>:
1c00a1ce:	00b567b3          	or	a5,a0,a1
1c00a1d2:	8b8d                	andi	a5,a5,3
1c00a1d4:	10078f63          	beqz	a5,1c00a2f2 <memcpy+0x124>
1c00a1d8:	14060063          	beqz	a2,1c00a318 <memcpy+0x14a>
1c00a1dc:	00458793          	addi	a5,a1,4
1c00a1e0:	00450693          	addi	a3,a0,4
1c00a1e4:	00f537b3          	sltu	a5,a0,a5
1c00a1e8:	00d5b6b3          	sltu	a3,a1,a3
1c00a1ec:	0017c793          	xori	a5,a5,1
1c00a1f0:	0016c693          	xori	a3,a3,1
1c00a1f4:	873e                	mv	a4,a5
1c00a1f6:	87b6                	mv	a5,a3
1c00a1f8:	8fd9                	or	a5,a5,a4
1c00a1fa:	0ff7f793          	andi	a5,a5,255
1c00a1fe:	cff9                	beqz	a5,1c00a2dc <memcpy+0x10e>
1c00a200:	00863793          	sltiu	a5,a2,8
1c00a204:	0017c793          	xori	a5,a5,1
1c00a208:	0ff7f793          	andi	a5,a5,255
1c00a20c:	cbe1                	beqz	a5,1c00a2dc <memcpy+0x10e>
1c00a20e:	40b007b3          	neg	a5,a1
1c00a212:	8b8d                	andi	a5,a5,3
1c00a214:	fff60313          	addi	t1,a2,-1
1c00a218:	cfe5                	beqz	a5,1c00a310 <memcpy+0x142>
1c00a21a:	0005c683          	lbu	a3,0(a1)
1c00a21e:	4705                	li	a4,1
1c00a220:	00d50023          	sb	a3,0(a0)
1c00a224:	00158893          	addi	a7,a1,1
1c00a228:	00150813          	addi	a6,a0,1
1c00a22c:	02e78963          	beq	a5,a4,1c00a25e <memcpy+0x90>
1c00a230:	0015c683          	lbu	a3,1(a1)
1c00a234:	470d                	li	a4,3
1c00a236:	00d500a3          	sb	a3,1(a0)
1c00a23a:	00258893          	addi	a7,a1,2
1c00a23e:	00250813          	addi	a6,a0,2
1c00a242:	ffe60313          	addi	t1,a2,-2
1c00a246:	00e79c63          	bne	a5,a4,1c00a25e <memcpy+0x90>
1c00a24a:	0025c703          	lbu	a4,2(a1)
1c00a24e:	00358893          	addi	a7,a1,3
1c00a252:	00350813          	addi	a6,a0,3
1c00a256:	00e50123          	sb	a4,2(a0)
1c00a25a:	ffd60313          	addi	t1,a2,-3
1c00a25e:	8e1d                	sub	a2,a2,a5
1c00a260:	95be                	add	a1,a1,a5
1c00a262:	00265e13          	srli	t3,a2,0x2
1c00a266:	97aa                	add	a5,a5,a0
1c00a268:	4701                	li	a4,0
1c00a26a:	4194                	lw	a3,0(a1)
1c00a26c:	0705                	addi	a4,a4,1
1c00a26e:	c394                	sw	a3,0(a5)
1c00a270:	0591                	addi	a1,a1,4
1c00a272:	0791                	addi	a5,a5,4
1c00a274:	ffc76be3          	bltu	a4,t3,1c00a26a <memcpy+0x9c>
1c00a278:	ffc67593          	andi	a1,a2,-4
1c00a27c:	40b306b3          	sub	a3,t1,a1
1c00a280:	00b807b3          	add	a5,a6,a1
1c00a284:	00b88733          	add	a4,a7,a1
1c00a288:	06b60463          	beq	a2,a1,1c00a2f0 <memcpy+0x122>
1c00a28c:	00074583          	lbu	a1,0(a4)
1c00a290:	fff68613          	addi	a2,a3,-1
1c00a294:	00b78023          	sb	a1,0(a5)
1c00a298:	ce21                	beqz	a2,1c00a2f0 <memcpy+0x122>
1c00a29a:	00174583          	lbu	a1,1(a4)
1c00a29e:	ffe68613          	addi	a2,a3,-2
1c00a2a2:	00b780a3          	sb	a1,1(a5)
1c00a2a6:	c629                	beqz	a2,1c00a2f0 <memcpy+0x122>
1c00a2a8:	00274583          	lbu	a1,2(a4)
1c00a2ac:	ffd68613          	addi	a2,a3,-3
1c00a2b0:	00b78123          	sb	a1,2(a5)
1c00a2b4:	ce15                	beqz	a2,1c00a2f0 <memcpy+0x122>
1c00a2b6:	00374583          	lbu	a1,3(a4)
1c00a2ba:	ffc68613          	addi	a2,a3,-4
1c00a2be:	00b781a3          	sb	a1,3(a5)
1c00a2c2:	c61d                	beqz	a2,1c00a2f0 <memcpy+0x122>
1c00a2c4:	00474583          	lbu	a1,4(a4)
1c00a2c8:	4615                	li	a2,5
1c00a2ca:	00b78223          	sb	a1,4(a5)
1c00a2ce:	02c68163          	beq	a3,a2,1c00a2f0 <memcpy+0x122>
1c00a2d2:	00574703          	lbu	a4,5(a4)
1c00a2d6:	00e782a3          	sb	a4,5(a5)
1c00a2da:	8082                	ret
1c00a2dc:	962e                	add	a2,a2,a1
1c00a2de:	87aa                	mv	a5,a0
1c00a2e0:	0585                	addi	a1,a1,1
1c00a2e2:	fff5c703          	lbu	a4,-1(a1)
1c00a2e6:	0785                	addi	a5,a5,1
1c00a2e8:	fee78fa3          	sb	a4,-1(a5)
1c00a2ec:	fec59ae3          	bne	a1,a2,1c00a2e0 <memcpy+0x112>
1c00a2f0:	8082                	ret
1c00a2f2:	00367793          	andi	a5,a2,3
1c00a2f6:	ee0793e3          	bnez	a5,1c00a1dc <memcpy+0xe>
1c00a2fa:	da7d                	beqz	a2,1c00a2f0 <memcpy+0x122>
1c00a2fc:	87aa                	mv	a5,a0
1c00a2fe:	0591                	addi	a1,a1,4
1c00a300:	ffc5a703          	lw	a4,-4(a1)
1c00a304:	0791                	addi	a5,a5,4
1c00a306:	fee7ae23          	sw	a4,-4(a5)
1c00a30a:	1671                	addi	a2,a2,-4
1c00a30c:	fa6d                	bnez	a2,1c00a2fe <memcpy+0x130>
1c00a30e:	8082                	ret
1c00a310:	88ae                	mv	a7,a1
1c00a312:	882a                	mv	a6,a0
1c00a314:	8332                	mv	t1,a2
1c00a316:	b7a1                	j	1c00a25e <memcpy+0x90>
1c00a318:	8082                	ret

1c00a31a <puts>:
1c00a31a:	00054783          	lbu	a5,0(a0)
1c00a31e:	c78d                	beqz	a5,1c00a348 <puts+0x2e>
1c00a320:	f14026f3          	csrr	a3,mhartid
1c00a324:	00369713          	slli	a4,a3,0x3
1c00a328:	1a10f637          	lui	a2,0x1a10f
1c00a32c:	0ff77713          	andi	a4,a4,255
1c00a330:	9732                	add	a4,a4,a2
1c00a332:	6609                	lui	a2,0x2
1c00a334:	068a                	slli	a3,a3,0x2
1c00a336:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a33a:	8ef1                	and	a3,a3,a2
1c00a33c:	9736                	add	a4,a4,a3
1c00a33e:	c31c                	sw	a5,0(a4)
1c00a340:	0505                	addi	a0,a0,1
1c00a342:	00054783          	lbu	a5,0(a0)
1c00a346:	ffe5                	bnez	a5,1c00a33e <puts+0x24>
1c00a348:	f1402773          	csrr	a4,mhartid
1c00a34c:	00371793          	slli	a5,a4,0x3
1c00a350:	1a10f6b7          	lui	a3,0x1a10f
1c00a354:	0ff7f793          	andi	a5,a5,255
1c00a358:	97b6                	add	a5,a5,a3
1c00a35a:	6689                	lui	a3,0x2
1c00a35c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a360:	070a                	slli	a4,a4,0x2
1c00a362:	8f75                	and	a4,a4,a3
1c00a364:	97ba                	add	a5,a5,a4
1c00a366:	4729                	li	a4,10
1c00a368:	c398                	sw	a4,0(a5)
1c00a36a:	4501                	li	a0,0
1c00a36c:	8082                	ret

1c00a36e <exit>:
1c00a36e:	800007b7          	lui	a5,0x80000
1c00a372:	1141                	addi	sp,sp,-16
1c00a374:	8d5d                	or	a0,a0,a5
1c00a376:	c606                	sw	ra,12(sp)
1c00a378:	1a1047b7          	lui	a5,0x1a104
1c00a37c:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a380:	3525                	jal	1c00a1a8 <pos_wait_forever>

1c00a382 <pos_io_start>:
1c00a382:	4501                	li	a0,0
1c00a384:	8082                	ret

1c00a386 <pos_io_stop>:
1c00a386:	4501                	li	a0,0
1c00a388:	8082                	ret

1c00a38a <pos_init_start>:
1c00a38a:	1141                	addi	sp,sp,-16
1c00a38c:	c422                	sw	s0,8(sp)
1c00a38e:	1c000437          	lui	s0,0x1c000
1c00a392:	c606                	sw	ra,12(sp)
1c00a394:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00a398:	f33fd0ef          	jal	ra,1c0082ca <pos_soc_init>
1c00a39c:	2265                	jal	1c00a544 <pos_irq_init>
1c00a39e:	2ad1                	jal	1c00a572 <pos_soc_event_init>
1c00a3a0:	2a21                	jal	1c00a4b8 <pos_allocs_init>
1c00a3a2:	405c                	lw	a5,4(s0)
1c00a3a4:	c791                	beqz	a5,1c00a3b0 <pos_init_start+0x26>
1c00a3a6:	0411                	addi	s0,s0,4
1c00a3a8:	0411                	addi	s0,s0,4
1c00a3aa:	9782                	jalr	a5
1c00a3ac:	401c                	lw	a5,0(s0)
1c00a3ae:	ffed                	bnez	a5,1c00a3a8 <pos_init_start+0x1e>
1c00a3b0:	3fc9                	jal	1c00a382 <pos_io_start>
1c00a3b2:	300467f3          	csrrsi	a5,mstatus,8
1c00a3b6:	40b2                	lw	ra,12(sp)
1c00a3b8:	4422                	lw	s0,8(sp)
1c00a3ba:	0141                	addi	sp,sp,16
1c00a3bc:	8082                	ret

1c00a3be <pos_init_stop>:
1c00a3be:	1141                	addi	sp,sp,-16
1c00a3c0:	c422                	sw	s0,8(sp)
1c00a3c2:	1c000437          	lui	s0,0x1c000
1c00a3c6:	c606                	sw	ra,12(sp)
1c00a3c8:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00a3cc:	3f6d                	jal	1c00a386 <pos_io_stop>
1c00a3ce:	405c                	lw	a5,4(s0)
1c00a3d0:	c791                	beqz	a5,1c00a3dc <pos_init_stop+0x1e>
1c00a3d2:	0411                	addi	s0,s0,4
1c00a3d4:	0411                	addi	s0,s0,4
1c00a3d6:	9782                	jalr	a5
1c00a3d8:	401c                	lw	a5,0(s0)
1c00a3da:	ffed                	bnez	a5,1c00a3d4 <pos_init_stop+0x16>
1c00a3dc:	40b2                	lw	ra,12(sp)
1c00a3de:	4422                	lw	s0,8(sp)
1c00a3e0:	0141                	addi	sp,sp,16
1c00a3e2:	8082                	ret

1c00a3e4 <pos_alloc_init>:
1c00a3e4:	00758793          	addi	a5,a1,7
1c00a3e8:	9be1                	andi	a5,a5,-8
1c00a3ea:	40b785b3          	sub	a1,a5,a1
1c00a3ee:	c11c                	sw	a5,0(a0)
1c00a3f0:	8e0d                	sub	a2,a2,a1
1c00a3f2:	00c05663          	blez	a2,1c00a3fe <pos_alloc_init+0x1a>
1c00a3f6:	9a61                	andi	a2,a2,-8
1c00a3f8:	c390                	sw	a2,0(a5)
1c00a3fa:	0007a223          	sw	zero,4(a5)
1c00a3fe:	8082                	ret

1c00a400 <pos_alloc>:
1c00a400:	4110                	lw	a2,0(a0)
1c00a402:	059d                	addi	a1,a1,7
1c00a404:	99e1                	andi	a1,a1,-8
1c00a406:	ca31                	beqz	a2,1c00a45a <pos_alloc+0x5a>
1c00a408:	4218                	lw	a4,0(a2)
1c00a40a:	425c                	lw	a5,4(a2)
1c00a40c:	02b75963          	ble	a1,a4,1c00a43e <pos_alloc+0x3e>
1c00a410:	cb81                	beqz	a5,1c00a420 <pos_alloc+0x20>
1c00a412:	4398                	lw	a4,0(a5)
1c00a414:	43d4                	lw	a3,4(a5)
1c00a416:	00b75763          	ble	a1,a4,1c00a424 <pos_alloc+0x24>
1c00a41a:	863e                	mv	a2,a5
1c00a41c:	87b6                	mv	a5,a3
1c00a41e:	fbf5                	bnez	a5,1c00a412 <pos_alloc+0x12>
1c00a420:	853e                	mv	a0,a5
1c00a422:	8082                	ret
1c00a424:	00b70a63          	beq	a4,a1,1c00a438 <pos_alloc+0x38>
1c00a428:	00b78533          	add	a0,a5,a1
1c00a42c:	8f0d                	sub	a4,a4,a1
1c00a42e:	c118                	sw	a4,0(a0)
1c00a430:	c154                	sw	a3,4(a0)
1c00a432:	c248                	sw	a0,4(a2)
1c00a434:	853e                	mv	a0,a5
1c00a436:	8082                	ret
1c00a438:	c254                	sw	a3,4(a2)
1c00a43a:	853e                	mv	a0,a5
1c00a43c:	8082                	ret
1c00a43e:	00e58b63          	beq	a1,a4,1c00a454 <pos_alloc+0x54>
1c00a442:	00b606b3          	add	a3,a2,a1
1c00a446:	8f0d                	sub	a4,a4,a1
1c00a448:	c2dc                	sw	a5,4(a3)
1c00a44a:	c298                	sw	a4,0(a3)
1c00a44c:	87b2                	mv	a5,a2
1c00a44e:	c114                	sw	a3,0(a0)
1c00a450:	853e                	mv	a0,a5
1c00a452:	8082                	ret
1c00a454:	c11c                	sw	a5,0(a0)
1c00a456:	87b2                	mv	a5,a2
1c00a458:	b7e1                	j	1c00a420 <pos_alloc+0x20>
1c00a45a:	4781                	li	a5,0
1c00a45c:	b7d1                	j	1c00a420 <pos_alloc+0x20>

1c00a45e <pos_free>:
1c00a45e:	4118                	lw	a4,0(a0)
1c00a460:	061d                	addi	a2,a2,7
1c00a462:	9a61                	andi	a2,a2,-8
1c00a464:	c729                	beqz	a4,1c00a4ae <pos_free+0x50>
1c00a466:	00b76663          	bltu	a4,a1,1c00a472 <pos_free+0x14>
1c00a46a:	a0a1                	j	1c00a4b2 <pos_free+0x54>
1c00a46c:	00b7f563          	bleu	a1,a5,1c00a476 <pos_free+0x18>
1c00a470:	873e                	mv	a4,a5
1c00a472:	435c                	lw	a5,4(a4)
1c00a474:	ffe5                	bnez	a5,1c00a46c <pos_free+0xe>
1c00a476:	00c586b3          	add	a3,a1,a2
1c00a47a:	02d78463          	beq	a5,a3,1c00a4a2 <pos_free+0x44>
1c00a47e:	c190                	sw	a2,0(a1)
1c00a480:	c1dc                	sw	a5,4(a1)
1c00a482:	cf11                	beqz	a4,1c00a49e <pos_free+0x40>
1c00a484:	431c                	lw	a5,0(a4)
1c00a486:	00f706b3          	add	a3,a4,a5
1c00a48a:	00d58463          	beq	a1,a3,1c00a492 <pos_free+0x34>
1c00a48e:	c34c                	sw	a1,4(a4)
1c00a490:	8082                	ret
1c00a492:	4194                	lw	a3,0(a1)
1c00a494:	41d0                	lw	a2,4(a1)
1c00a496:	97b6                	add	a5,a5,a3
1c00a498:	c31c                	sw	a5,0(a4)
1c00a49a:	c350                	sw	a2,4(a4)
1c00a49c:	8082                	ret
1c00a49e:	c10c                	sw	a1,0(a0)
1c00a4a0:	8082                	ret
1c00a4a2:	4394                	lw	a3,0(a5)
1c00a4a4:	43dc                	lw	a5,4(a5)
1c00a4a6:	9636                	add	a2,a2,a3
1c00a4a8:	c190                	sw	a2,0(a1)
1c00a4aa:	c1dc                	sw	a5,4(a1)
1c00a4ac:	bfd9                	j	1c00a482 <pos_free+0x24>
1c00a4ae:	4781                	li	a5,0
1c00a4b0:	b7d9                	j	1c00a476 <pos_free+0x18>
1c00a4b2:	87ba                	mv	a5,a4
1c00a4b4:	4701                	li	a4,0
1c00a4b6:	b7c1                	j	1c00a476 <pos_free+0x18>

1c00a4b8 <pos_allocs_init>:
1c00a4b8:	1141                	addi	sp,sp,-16
1c00a4ba:	1c0045b7          	lui	a1,0x1c004
1c00a4be:	c606                	sw	ra,12(sp)
1c00a4c0:	2b858793          	addi	a5,a1,696 # 1c0042b8 <__l2_priv0_end>
1c00a4c4:	1c008637          	lui	a2,0x1c008
1c00a4c8:	04c7cc63          	blt	a5,a2,1c00a520 <pos_allocs_init+0x68>
1c00a4cc:	4581                	li	a1,0
1c00a4ce:	4601                	li	a2,0
1c00a4d0:	1c004537          	lui	a0,0x1c004
1c00a4d4:	2ac50513          	addi	a0,a0,684 # 1c0042ac <pos_alloc_l2>
1c00a4d8:	3731                	jal	1c00a3e4 <pos_alloc_init>
1c00a4da:	1c00a5b7          	lui	a1,0x1c00a
1c00a4de:	58c58793          	addi	a5,a1,1420 # 1c00a58c <__l2_priv1_end>
1c00a4e2:	1c010637          	lui	a2,0x1c010
1c00a4e6:	02c7c963          	blt	a5,a2,1c00a518 <pos_allocs_init+0x60>
1c00a4ea:	4581                	li	a1,0
1c00a4ec:	4601                	li	a2,0
1c00a4ee:	1c004537          	lui	a0,0x1c004
1c00a4f2:	2b050513          	addi	a0,a0,688 # 1c0042b0 <pos_alloc_l2+0x4>
1c00a4f6:	35fd                	jal	1c00a3e4 <pos_alloc_init>
1c00a4f8:	1c0105b7          	lui	a1,0x1c010
1c00a4fc:	00058793          	mv	a5,a1
1c00a500:	40b2                	lw	ra,12(sp)
1c00a502:	1c080637          	lui	a2,0x1c080
1c00a506:	1c004537          	lui	a0,0x1c004
1c00a50a:	8e1d                	sub	a2,a2,a5
1c00a50c:	00058593          	mv	a1,a1
1c00a510:	2b450513          	addi	a0,a0,692 # 1c0042b4 <pos_alloc_l2+0x8>
1c00a514:	0141                	addi	sp,sp,16
1c00a516:	b5f9                	j	1c00a3e4 <pos_alloc_init>
1c00a518:	8e1d                	sub	a2,a2,a5
1c00a51a:	58c58593          	addi	a1,a1,1420 # 1c01058c <__l2_shared_end+0x58c>
1c00a51e:	bfc1                	j	1c00a4ee <pos_allocs_init+0x36>
1c00a520:	8e1d                	sub	a2,a2,a5
1c00a522:	2b858593          	addi	a1,a1,696
1c00a526:	b76d                	j	1c00a4d0 <pos_allocs_init+0x18>

1c00a528 <pi_l2_malloc>:
1c00a528:	85aa                	mv	a1,a0
1c00a52a:	1c004537          	lui	a0,0x1c004
1c00a52e:	2ac50513          	addi	a0,a0,684 # 1c0042ac <pos_alloc_l2>
1c00a532:	b5f9                	j	1c00a400 <pos_alloc>

1c00a534 <pi_l2_free>:
1c00a534:	862e                	mv	a2,a1
1c00a536:	85aa                	mv	a1,a0
1c00a538:	1c004537          	lui	a0,0x1c004
1c00a53c:	2ac50513          	addi	a0,a0,684 # 1c0042ac <pos_alloc_l2>
1c00a540:	bf39                	j	1c00a45e <pos_free>

1c00a542 <__rt_handle_illegal_instr>:
1c00a542:	8082                	ret

1c00a544 <pos_irq_init>:
1c00a544:	1a10a737          	lui	a4,0x1a10a
1c00a548:	f14027f3          	csrr	a5,mhartid
1c00a54c:	56fd                	li	a3,-1
1c00a54e:	8795                	srai	a5,a5,0x5
1c00a550:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a554:	03f7f793          	andi	a5,a5,63
1c00a558:	477d                	li	a4,31
1c00a55a:	00e78363          	beq	a5,a4,1c00a560 <pos_irq_init+0x1c>
1c00a55e:	8082                	ret
1c00a560:	1c0087b7          	lui	a5,0x1c008
1c00a564:	00078793          	mv	a5,a5
1c00a568:	0017e793          	ori	a5,a5,1
1c00a56c:	30579073          	csrw	mtvec,a5
1c00a570:	8082                	ret

1c00a572 <pos_soc_event_init>:
1c00a572:	1a1067b7          	lui	a5,0x1a106
1c00a576:	577d                	li	a4,-1
1c00a578:	c3d8                	sw	a4,4(a5)
1c00a57a:	c798                	sw	a4,8(a5)
1c00a57c:	c7d8                	sw	a4,12(a5)
1c00a57e:	cb98                	sw	a4,16(a5)
1c00a580:	cbd8                	sw	a4,20(a5)
1c00a582:	cf98                	sw	a4,24(a5)
1c00a584:	cfd8                	sw	a4,28(a5)
1c00a586:	d398                	sw	a4,32(a5)
1c00a588:	8082                	ret

1c00a58a <_endtext>:
	...
