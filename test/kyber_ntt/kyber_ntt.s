riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	7810106f          	j	1c009f80 <__rt_handle_illegal_instr>
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
1c008084:	6fd0106f          	j	1c009f80 <__rt_handle_illegal_instr>

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
1c0080c4:	19028293          	addi	t0,t0,400 # 1c006250 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	1ac30313          	addi	t1,t1,428 # 1c006274 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	17610113          	addi	sp,sp,374 # 1c006250 <stack>
1c0080e2:	4e3010ef          	jal	ra,1c009dc4 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	4ff010ef          	jal	ra,1c009dfa <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	517000ef          	jal	ra,1c008e18 <exit>

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
1c008156:	445000ef          	jal	ra,1c008d9a <puts>
1c00815a:	6785                	lui	a5,0x1
1c00815c:	757d                	lui	a0,0xfffff
1c00815e:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008162:	978a                	add	a5,a5,sp
1c008164:	6a050593          	addi	a1,a0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c008168:	20050513          	addi	a0,a0,512
1c00816c:	95be                	add	a1,a1,a5
1c00816e:	953e                	add	a0,a0,a5
1c008170:	031000ef          	jal	ra,1c0089a0 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c008174:	1c000537          	lui	a0,0x1c000
1c008178:	12850513          	addi	a0,a0,296 # 1c000128 <__DTOR_END__+0x10c>
1c00817c:	41f000ef          	jal	ra,1c008d9a <puts>
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
1c0081fc:	1c006437          	lui	s0,0x1c006
1c008200:	25440413          	addi	s0,s0,596 # 1c006254 <pos_fll_freq>
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
1c008224:	1c006537          	lui	a0,0x1c006
1c008228:	0146a023          	sw	s4,0(a3)
1c00822c:	25050513          	addi	a0,a0,592 # 1c006250 <stack>
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
1c008262:	1c006537          	lui	a0,0x1c006
1c008266:	8efd                	and	a3,a3,a5
1c008268:	25050513          	addi	a0,a0,592 # 1c006250 <stack>
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
1c0082b0:	1c0067b7          	lui	a5,0x1c006
1c0082b4:	25478793          	addi	a5,a5,596 # 1c006254 <pos_fll_freq>
1c0082b8:	0007a023          	sw	zero,0(a5)
1c0082bc:	0007a223          	sw	zero,4(a5)
1c0082c0:	1c0067b7          	lui	a5,0x1c006
1c0082c4:	24079823          	sh	zero,592(a5) # 1c006250 <stack>
1c0082c8:	8082                	ret

1c0082ca <pos_soc_init>:
1c0082ca:	1141                	addi	sp,sp,-16
1c0082cc:	c606                	sw	ra,12(sp)
1c0082ce:	c422                	sw	s0,8(sp)
1c0082d0:	37c5                	jal	1c0082b0 <pos_fll_constructor>
1c0082d2:	4501                	li	a0,0
1c0082d4:	3d75                	jal	1c008190 <pos_fll_init>
1c0082d6:	1c006437          	lui	s0,0x1c006
1c0082da:	24a42e23          	sw	a0,604(s0) # 1c00625c <pos_freq_domains>
1c0082de:	4505                	li	a0,1
1c0082e0:	3d45                	jal	1c008190 <pos_fll_init>
1c0082e2:	25c40413          	addi	s0,s0,604
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

1c008356 <KYBER_poly_ntt>:
1c008356:	1101                	addi	sp,sp,-32
1c008358:	ca26                	sw	s1,20(sp)
1c00835a:	84aa                	mv	s1,a0
1c00835c:	1c000537          	lui	a0,0x1c000
1c008360:	13450513          	addi	a0,a0,308 # 1c000134 <__DTOR_END__+0x118>
1c008364:	c64e                	sw	s3,12(sp)
1c008366:	ce06                	sw	ra,28(sp)
1c008368:	cc22                	sw	s0,24(sp)
1c00836a:	c84a                	sw	s2,16(sp)
1c00836c:	89ae                	mv	s3,a1
1c00836e:	22d000ef          	jal	ra,1c008d9a <puts>
1c008372:	1a401437          	lui	s0,0x1a401
1c008376:	4785                	li	a5,1
1c008378:	c41c                	sw	a5,8(s0)
1c00837a:	00042423          	sw	zero,8(s0) # 1a401008 <__CTOR_LIST__-0x1bfeffc>
1c00837e:	00042423          	sw	zero,8(s0)
1c008382:	00042423          	sw	zero,8(s0)
1c008386:	00042423          	sw	zero,8(s0)
1c00838a:	00042423          	sw	zero,8(s0)
1c00838e:	00042423          	sw	zero,8(s0)
1c008392:	00042423          	sw	zero,8(s0)
1c008396:	00042423          	sw	zero,8(s0)
1c00839a:	00042423          	sw	zero,8(s0)
1c00839e:	1c000537          	lui	a0,0x1c000
1c0083a2:	14850513          	addi	a0,a0,328 # 1c000148 <__DTOR_END__+0x12c>
1c0083a6:	1f5000ef          	jal	ra,1c008d9a <puts>
1c0083aa:	20049583          	lh	a1,512(s1)
1c0083ae:	00042423          	sw	zero,8(s0)
1c0083b2:	1a4017b7          	lui	a5,0x1a401
1c0083b6:	e5bff637          	lui	a2,0xe5bff
1c0083ba:	20078693          	addi	a3,a5,512 # 1a401200 <__CTOR_LIST__-0x1bfee04>
1c0083be:	00f58733          	add	a4,a1,a5
1c0083c2:	9732                	add	a4,a4,a2
1c0083c4:	00071703          	lh	a4,0(a4)
1c0083c8:	0789                	addi	a5,a5,2
1c0083ca:	fee79f23          	sh	a4,-2(a5)
1c0083ce:	fed798e3          	bne	a5,a3,1c0083be <KYBER_poly_ntt+0x68>
1c0083d2:	4401                	li	s0,0
1c0083d4:	1c0004b7          	lui	s1,0x1c000
1c0083d8:	4965                	li	s2,25
1c0083da:	0405                	addi	s0,s0,1
1c0083dc:	85a2                	mv	a1,s0
1c0083de:	19c48513          	addi	a0,s1,412 # 1c00019c <__DTOR_END__+0x180>
1c0083e2:	253000ef          	jal	ra,1c008e34 <printf>
1c0083e6:	ff241ae3          	bne	s0,s2,1c0083da <KYBER_poly_ntt+0x84>
1c0083ea:	1c000537          	lui	a0,0x1c000
1c0083ee:	1a050513          	addi	a0,a0,416 # 1c0001a0 <__DTOR_END__+0x184>
1c0083f2:	1a9000ef          	jal	ra,1c008d9a <puts>
1c0083f6:	1a4017b7          	lui	a5,0x1a401
1c0083fa:	08000713          	li	a4,128
1c0083fe:	c798                	sw	a4,8(a5)
1c008400:	1c000537          	lui	a0,0x1c000
1c008404:	18050513          	addi	a0,a0,384 # 1c000180 <__DTOR_END__+0x164>
1c008408:	193000ef          	jal	ra,1c008d9a <puts>
1c00840c:	4401                	li	s0,0
1c00840e:	38800913          	li	s2,904
1c008412:	0405                	addi	s0,s0,1
1c008414:	85a2                	mv	a1,s0
1c008416:	19c48513          	addi	a0,s1,412
1c00841a:	21b000ef          	jal	ra,1c008e34 <printf>
1c00841e:	ff241ae3          	bne	s0,s2,1c008412 <KYBER_poly_ntt+0xbc>
1c008422:	1c000537          	lui	a0,0x1c000
1c008426:	19050513          	addi	a0,a0,400 # 1c000190 <__DTOR_END__+0x174>
1c00842a:	171000ef          	jal	ra,1c008d9a <puts>
1c00842e:	1a401437          	lui	s0,0x1a401
1c008432:	47c1                	li	a5,16
1c008434:	c41c                	sw	a5,8(s0)
1c008436:	1c000537          	lui	a0,0x1c000
1c00843a:	16450513          	addi	a0,a0,356 # 1c000164 <__DTOR_END__+0x148>
1c00843e:	15d000ef          	jal	ra,1c008d9a <puts>
1c008442:	20099503          	lh	a0,512(s3)
1c008446:	00042423          	sw	zero,8(s0) # 1a401008 <__CTOR_LIST__-0x1bfeffc>
1c00844a:	e5bff5b7          	lui	a1,0xe5bff
1c00844e:	00440793          	addi	a5,s0,4
1c008452:	20440613          	addi	a2,s0,516
1c008456:	0007d683          	lhu	a3,0(a5) # 1a401000 <__CTOR_LIST__-0x1bff004>
1c00845a:	00f50733          	add	a4,a0,a5
1c00845e:	972e                	add	a4,a4,a1
1c008460:	fed71e23          	sh	a3,-4(a4)
1c008464:	0789                	addi	a5,a5,2
1c008466:	fec798e3          	bne	a5,a2,1c008456 <KYBER_poly_ntt+0x100>
1c00846a:	4401                	li	s0,0
1c00846c:	4965                	li	s2,25
1c00846e:	0405                	addi	s0,s0,1
1c008470:	85a2                	mv	a1,s0
1c008472:	19c48513          	addi	a0,s1,412
1c008476:	1bf000ef          	jal	ra,1c008e34 <printf>
1c00847a:	ff241ae3          	bne	s0,s2,1c00846e <KYBER_poly_ntt+0x118>
1c00847e:	4462                	lw	s0,24(sp)
1c008480:	40f2                	lw	ra,28(sp)
1c008482:	44d2                	lw	s1,20(sp)
1c008484:	4942                	lw	s2,16(sp)
1c008486:	49b2                	lw	s3,12(sp)
1c008488:	1c000537          	lui	a0,0x1c000
1c00848c:	1b450513          	addi	a0,a0,436 # 1c0001b4 <__DTOR_END__+0x198>
1c008490:	6105                	addi	sp,sp,32
1c008492:	1090006f          	j	1c008d9a <puts>

1c008496 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c008496:	1141                	addi	sp,sp,-16
1c008498:	55555337          	lui	t1,0x55555
1c00849c:	68c1                	lui	a7,0x10
1c00849e:	c622                	sw	s0,12(sp)
1c0084a0:	c426                	sw	s1,8(sp)
1c0084a2:	c24a                	sw	s2,4(sp)
1c0084a4:	20050e13          	addi	t3,a0,512
1c0084a8:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0084ac:	18fd                	addi	a7,a7,-1
1c0084ae:	419c                	lw	a5,0(a1)
1c0084b0:	0541                	addi	a0,a0,16
1c0084b2:	0017d713          	srli	a4,a5,0x1
1c0084b6:	00677733          	and	a4,a4,t1
1c0084ba:	0067f7b3          	and	a5,a5,t1
1c0084be:	97ba                	add	a5,a5,a4
1c0084c0:	0027d913          	srli	s2,a5,0x2
1c0084c4:	0087d693          	srli	a3,a5,0x8
1c0084c8:	00a7d493          	srli	s1,a5,0xa
1c0084cc:	0107d713          	srli	a4,a5,0x10
1c0084d0:	0127d413          	srli	s0,a5,0x12
1c0084d4:	0037f613          	andi	a2,a5,3
1c0084d8:	00397913          	andi	s2,s2,3
1c0084dc:	8a8d                	andi	a3,a3,3
1c0084de:	888d                	andi	s1,s1,3
1c0084e0:	8b0d                	andi	a4,a4,3
1c0084e2:	880d                	andi	s0,s0,3
1c0084e4:	0047df13          	srli	t5,a5,0x4
1c0084e8:	0067d393          	srli	t2,a5,0x6
1c0084ec:	00c7de93          	srli	t4,a5,0xc
1c0084f0:	00e7d293          	srli	t0,a5,0xe
1c0084f4:	0147d813          	srli	a6,a5,0x14
1c0084f8:	0167df93          	srli	t6,a5,0x16
1c0084fc:	41260633          	sub	a2,a2,s2
1c008500:	8e85                	sub	a3,a3,s1
1c008502:	8f01                	sub	a4,a4,s0
1c008504:	0033f393          	andi	t2,t2,3
1c008508:	0032f293          	andi	t0,t0,3
1c00850c:	003fff93          	andi	t6,t6,3
1c008510:	003f7f13          	andi	t5,t5,3
1c008514:	003efe93          	andi	t4,t4,3
1c008518:	00387813          	andi	a6,a6,3
1c00851c:	0642                	slli	a2,a2,0x10
1c00851e:	06c2                	slli	a3,a3,0x10
1c008520:	0742                	slli	a4,a4,0x10
1c008522:	407f0f33          	sub	t5,t5,t2
1c008526:	405e8eb3          	sub	t4,t4,t0
1c00852a:	41f80833          	sub	a6,a6,t6
1c00852e:	0187d293          	srli	t0,a5,0x18
1c008532:	01a7d393          	srli	t2,a5,0x1a
1c008536:	01c7df93          	srli	t6,a5,0x1c
1c00853a:	8241                	srli	a2,a2,0x10
1c00853c:	82c1                	srli	a3,a3,0x10
1c00853e:	8341                	srli	a4,a4,0x10
1c008540:	0842                	slli	a6,a6,0x10
1c008542:	0f42                	slli	t5,t5,0x10
1c008544:	01167633          	and	a2,a2,a7
1c008548:	0ec2                	slli	t4,t4,0x10
1c00854a:	0116f6b3          	and	a3,a3,a7
1c00854e:	01177733          	and	a4,a4,a7
1c008552:	0032f293          	andi	t0,t0,3
1c008556:	0033f393          	andi	t2,t2,3
1c00855a:	003fff93          	andi	t6,t6,3
1c00855e:	83f9                	srli	a5,a5,0x1e
1c008560:	01076733          	or	a4,a4,a6
1c008564:	01e66633          	or	a2,a2,t5
1c008568:	01d6e6b3          	or	a3,a3,t4
1c00856c:	40728833          	sub	a6,t0,t2
1c008570:	40ff87b3          	sub	a5,t6,a5
1c008574:	fec52823          	sw	a2,-16(a0)
1c008578:	fed52a23          	sw	a3,-12(a0)
1c00857c:	fee52c23          	sw	a4,-8(a0)
1c008580:	ff051e23          	sh	a6,-4(a0)
1c008584:	fef51f23          	sh	a5,-2(a0)
1c008588:	0591                	addi	a1,a1,4
1c00858a:	f3c512e3          	bne	a0,t3,1c0084ae <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c00858e:	4432                	lw	s0,12(sp)
1c008590:	44a2                	lw	s1,8(sp)
1c008592:	4912                	lw	s2,4(sp)
1c008594:	0141                	addi	sp,sp,16
1c008596:	8082                	ret

1c008598 <keccak_absorb.constprop.7>:
1c008598:	7151                	addi	sp,sp,-240
1c00859a:	d3a6                	sw	s1,228(sp)
1c00859c:	cfce                	sw	s3,220(sp)
1c00859e:	cdd2                	sw	s4,216(sp)
1c0085a0:	cbd6                	sw	s5,212(sp)
1c0085a2:	d786                	sw	ra,236(sp)
1c0085a4:	d5a2                	sw	s0,232(sp)
1c0085a6:	d1ca                	sw	s2,224(sp)
1c0085a8:	89aa                	mv	s3,a0
1c0085aa:	8a32                	mv	s4,a2
1c0085ac:	84b6                	mv	s1,a3
1c0085ae:	8aaa                	mv	s5,a0
1c0085b0:	0c850713          	addi	a4,a0,200
1c0085b4:	87aa                	mv	a5,a0
1c0085b6:	4601                	li	a2,0
1c0085b8:	4681                	li	a3,0
1c0085ba:	c390                	sw	a2,0(a5)
1c0085bc:	c3d4                	sw	a3,4(a5)
1c0085be:	07a1                	addi	a5,a5,8
1c0085c0:	fef71be3          	bne	a4,a5,1c0085b6 <keccak_absorb.constprop.7+0x1e>
1c0085c4:	08700793          	li	a5,135
1c0085c8:	0747fb63          	bleu	s4,a5,1c00863e <keccak_absorb.constprop.7+0xa6>
1c0085cc:	08700413          	li	s0,135
1c0085d0:	08858913          	addi	s2,a1,136 # e5bff088 <pulp__FC+0xe5bff089>
1c0085d4:	874e                	mv	a4,s3
1c0085d6:	0015c783          	lbu	a5,1(a1)
1c0085da:	0025c603          	lbu	a2,2(a1)
1c0085de:	0055c883          	lbu	a7,5(a1)
1c0085e2:	0045c303          	lbu	t1,4(a1)
1c0085e6:	0065c803          	lbu	a6,6(a1)
1c0085ea:	0005ce03          	lbu	t3,0(a1)
1c0085ee:	0035c503          	lbu	a0,3(a1)
1c0085f2:	0075c683          	lbu	a3,7(a1)
1c0085f6:	0642                	slli	a2,a2,0x10
1c0085f8:	07a2                	slli	a5,a5,0x8
1c0085fa:	08a2                	slli	a7,a7,0x8
1c0085fc:	8fd1                	or	a5,a5,a2
1c0085fe:	0068e8b3          	or	a7,a7,t1
1c008602:	0842                	slli	a6,a6,0x10
1c008604:	00072303          	lw	t1,0(a4)
1c008608:	4350                	lw	a2,4(a4)
1c00860a:	01c7e7b3          	or	a5,a5,t3
1c00860e:	0562                	slli	a0,a0,0x18
1c008610:	01186833          	or	a6,a6,a7
1c008614:	06e2                	slli	a3,a3,0x18
1c008616:	8fc9                	or	a5,a5,a0
1c008618:	0106e6b3          	or	a3,a3,a6
1c00861c:	00f347b3          	xor	a5,t1,a5
1c008620:	8eb1                	xor	a3,a3,a2
1c008622:	c31c                	sw	a5,0(a4)
1c008624:	c354                	sw	a3,4(a4)
1c008626:	05a1                	addi	a1,a1,8
1c008628:	0721                	addi	a4,a4,8
1c00862a:	fab916e3          	bne	s2,a1,1c0085d6 <keccak_absorb.constprop.7+0x3e>
1c00862e:	85ce                	mv	a1,s3
1c008630:	854e                	mv	a0,s3
1c008632:	397d                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c008634:	f78a0a13          	addi	s4,s4,-136
1c008638:	85ca                	mv	a1,s2
1c00863a:	f9446be3          	bltu	s0,s4,1c0085d0 <keccak_absorb.constprop.7+0x38>
1c00863e:	003c                	addi	a5,sp,8
1c008640:	0918                	addi	a4,sp,144
1c008642:	883e                	mv	a6,a5
1c008644:	4681                	li	a3,0
1c008646:	00d82023          	sw	a3,0(a6)
1c00864a:	0811                	addi	a6,a6,4
1c00864c:	ff071ce3          	bne	a4,a6,1c008644 <keccak_absorb.constprop.7+0xac>
1c008650:	060a0463          	beqz	s4,1c0086b8 <keccak_absorb.constprop.7+0x120>
1c008654:	fffa0713          	addi	a4,s4,-1
1c008658:	4689                	li	a3,2
1c00865a:	0ee6f163          	bleu	a4,a3,1c00873c <keccak_absorb.constprop.7+0x1a4>
1c00865e:	002a5893          	srli	a7,s4,0x2
1c008662:	862e                	mv	a2,a1
1c008664:	86be                	mv	a3,a5
1c008666:	4701                	li	a4,0
1c008668:	4208                	lw	a0,0(a2)
1c00866a:	0705                	addi	a4,a4,1
1c00866c:	c288                	sw	a0,0(a3)
1c00866e:	0611                	addi	a2,a2,4
1c008670:	0691                	addi	a3,a3,4
1c008672:	ff176be3          	bltu	a4,a7,1c008668 <keccak_absorb.constprop.7+0xd0>
1c008676:	ffca7713          	andi	a4,s4,-4
1c00867a:	02ea0f63          	beq	s4,a4,1c0086b8 <keccak_absorb.constprop.7+0x120>
1c00867e:	00e586b3          	add	a3,a1,a4
1c008682:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c008686:	0988                	addi	a0,sp,208
1c008688:	00e506b3          	add	a3,a0,a4
1c00868c:	f2c68c23          	sb	a2,-200(a3)
1c008690:	00170693          	addi	a3,a4,1
1c008694:	0346f263          	bleu	s4,a3,1c0086b8 <keccak_absorb.constprop.7+0x120>
1c008698:	00d58633          	add	a2,a1,a3
1c00869c:	00064603          	lbu	a2,0(a2) # e5bff000 <pulp__FC+0xe5bff001>
1c0086a0:	96aa                	add	a3,a3,a0
1c0086a2:	f2c68c23          	sb	a2,-200(a3)
1c0086a6:	0709                	addi	a4,a4,2
1c0086a8:	01477863          	bleu	s4,a4,1c0086b8 <keccak_absorb.constprop.7+0x120>
1c0086ac:	95ba                	add	a1,a1,a4
1c0086ae:	0005c683          	lbu	a3,0(a1)
1c0086b2:	972a                	add	a4,a4,a0
1c0086b4:	f2d70c23          	sb	a3,-200(a4)
1c0086b8:	0990                	addi	a2,sp,208
1c0086ba:	9a32                	add	s4,s4,a2
1c0086bc:	f29a0c23          	sb	s1,-200(s4)
1c0086c0:	08f14703          	lbu	a4,143(sp)
1c0086c4:	f8076713          	ori	a4,a4,-128
1c0086c8:	08e107a3          	sb	a4,143(sp)
1c0086cc:	0017c703          	lbu	a4,1(a5)
1c0086d0:	0027c883          	lbu	a7,2(a5)
1c0086d4:	0057c503          	lbu	a0,5(a5)
1c0086d8:	0047c303          	lbu	t1,4(a5)
1c0086dc:	0067c583          	lbu	a1,6(a5)
1c0086e0:	0007ce03          	lbu	t3,0(a5)
1c0086e4:	0037c603          	lbu	a2,3(a5)
1c0086e8:	0077c683          	lbu	a3,7(a5)
1c0086ec:	08c2                	slli	a7,a7,0x10
1c0086ee:	0722                	slli	a4,a4,0x8
1c0086f0:	0522                	slli	a0,a0,0x8
1c0086f2:	01176733          	or	a4,a4,a7
1c0086f6:	00656533          	or	a0,a0,t1
1c0086fa:	05c2                	slli	a1,a1,0x10
1c0086fc:	000aa303          	lw	t1,0(s5)
1c008700:	004aa883          	lw	a7,4(s5)
1c008704:	01c76733          	or	a4,a4,t3
1c008708:	0662                	slli	a2,a2,0x18
1c00870a:	8dc9                	or	a1,a1,a0
1c00870c:	06e2                	slli	a3,a3,0x18
1c00870e:	8f51                	or	a4,a4,a2
1c008710:	8ecd                	or	a3,a3,a1
1c008712:	00e34733          	xor	a4,t1,a4
1c008716:	00d8c6b3          	xor	a3,a7,a3
1c00871a:	00eaa023          	sw	a4,0(s5)
1c00871e:	00daa223          	sw	a3,4(s5)
1c008722:	07a1                	addi	a5,a5,8
1c008724:	0aa1                	addi	s5,s5,8
1c008726:	faf813e3          	bne	a6,a5,1c0086cc <keccak_absorb.constprop.7+0x134>
1c00872a:	50be                	lw	ra,236(sp)
1c00872c:	542e                	lw	s0,232(sp)
1c00872e:	549e                	lw	s1,228(sp)
1c008730:	590e                	lw	s2,224(sp)
1c008732:	49fe                	lw	s3,220(sp)
1c008734:	4a6e                	lw	s4,216(sp)
1c008736:	4ade                	lw	s5,212(sp)
1c008738:	616d                	addi	sp,sp,240
1c00873a:	8082                	ret
1c00873c:	4701                	li	a4,0
1c00873e:	b781                	j	1c00867e <keccak_absorb.constprop.7+0xe6>

1c008740 <shake256>:
1c008740:	7131                	addi	sp,sp,-192
1c008742:	db26                	sw	s1,180(sp)
1c008744:	d94a                	sw	s2,176(sp)
1c008746:	08800493          	li	s1,136
1c00874a:	892a                	mv	s2,a0
1c00874c:	0c800513          	li	a0,200
1c008750:	dd22                	sw	s0,184(sp)
1c008752:	d74e                	sw	s3,172(sp)
1c008754:	d552                	sw	s4,168(sp)
1c008756:	df06                	sw	ra,188(sp)
1c008758:	d356                	sw	s5,164(sp)
1c00875a:	d15a                	sw	s6,160(sp)
1c00875c:	cf5e                	sw	s7,156(sp)
1c00875e:	cd62                	sw	s8,152(sp)
1c008760:	cb66                	sw	s9,148(sp)
1c008762:	89ae                	mv	s3,a1
1c008764:	8432                	mv	s0,a2
1c008766:	8a36                	mv	s4,a3
1c008768:	0295d4b3          	divu	s1,a1,s1
1c00876c:	7fa010ef          	jal	ra,1c009f66 <pi_l2_malloc>
1c008770:	20050163          	beqz	a0,1c008972 <shake256+0x232>
1c008774:	46fd                	li	a3,31
1c008776:	8652                	mv	a2,s4
1c008778:	85a2                	mv	a1,s0
1c00877a:	8b2a                	mv	s6,a0
1c00877c:	3d31                	jal	1c008598 <keccak_absorb.constprop.7>
1c00877e:	c4dd                	beqz	s1,1c00882c <shake256+0xec>
1c008780:	00449713          	slli	a4,s1,0x4
1c008784:	00970433          	add	s0,a4,s1
1c008788:	040e                	slli	s0,s0,0x3
1c00878a:	7bc1                	lui	s7,0xffff0
1c00878c:	ff010ab7          	lui	s5,0xff010
1c008790:	01000a37          	lui	s4,0x1000
1c008794:	412b0c33          	sub	s8,s6,s2
1c008798:	944a                	add	s0,s0,s2
1c00879a:	8cca                	mv	s9,s2
1c00879c:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c0087a0:	1afd                	addi	s5,s5,-1
1c0087a2:	1a7d                	addi	s4,s4,-1
1c0087a4:	85da                	mv	a1,s6
1c0087a6:	855a                	mv	a0,s6
1c0087a8:	36a1                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c0087aa:	8666                	mv	a2,s9
1c0087ac:	088c8593          	addi	a1,s9,136
1c0087b0:	00cc07b3          	add	a5,s8,a2
1c0087b4:	4388                	lw	a0,0(a5)
1c0087b6:	43d4                	lw	a3,4(a5)
1c0087b8:	00855893          	srli	a7,a0,0x8
1c0087bc:	0086d813          	srli	a6,a3,0x8
1c0087c0:	0ff57713          	andi	a4,a0,255
1c0087c4:	0ff6f793          	andi	a5,a3,255
1c0087c8:	0ff8f893          	andi	a7,a7,255
1c0087cc:	0ff87813          	andi	a6,a6,255
1c0087d0:	08a2                	slli	a7,a7,0x8
1c0087d2:	0822                	slli	a6,a6,0x8
1c0087d4:	01777733          	and	a4,a4,s7
1c0087d8:	0177f7b3          	and	a5,a5,s7
1c0087dc:	01176733          	or	a4,a4,a7
1c0087e0:	0107e7b3          	or	a5,a5,a6
1c0087e4:	00ff08b7          	lui	a7,0xff0
1c0087e8:	00ff0837          	lui	a6,0xff0
1c0087ec:	011578b3          	and	a7,a0,a7
1c0087f0:	0106f833          	and	a6,a3,a6
1c0087f4:	01577733          	and	a4,a4,s5
1c0087f8:	0157f7b3          	and	a5,a5,s5
1c0087fc:	01176733          	or	a4,a4,a7
1c008800:	8161                	srli	a0,a0,0x18
1c008802:	0107e7b3          	or	a5,a5,a6
1c008806:	82e1                	srli	a3,a3,0x18
1c008808:	0562                	slli	a0,a0,0x18
1c00880a:	01477733          	and	a4,a4,s4
1c00880e:	06e2                	slli	a3,a3,0x18
1c008810:	0147f7b3          	and	a5,a5,s4
1c008814:	8f49                	or	a4,a4,a0
1c008816:	8fd5                	or	a5,a5,a3
1c008818:	c218                	sw	a4,0(a2)
1c00881a:	c25c                	sw	a5,4(a2)
1c00881c:	0621                	addi	a2,a2,8
1c00881e:	f8c599e3          	bne	a1,a2,1c0087b0 <shake256+0x70>
1c008822:	8cae                	mv	s9,a1
1c008824:	f78c0c13          	addi	s8,s8,-136
1c008828:	f6b41ee3          	bne	s0,a1,1c0087a4 <shake256+0x64>
1c00882c:	08800793          	li	a5,136
1c008830:	02f9f9b3          	remu	s3,s3,a5
1c008834:	02099363          	bnez	s3,1c00885a <shake256+0x11a>
1c008838:	546a                	lw	s0,184(sp)
1c00883a:	50fa                	lw	ra,188(sp)
1c00883c:	54da                	lw	s1,180(sp)
1c00883e:	594a                	lw	s2,176(sp)
1c008840:	59ba                	lw	s3,172(sp)
1c008842:	5a2a                	lw	s4,168(sp)
1c008844:	5a9a                	lw	s5,164(sp)
1c008846:	4bfa                	lw	s7,156(sp)
1c008848:	4c6a                	lw	s8,152(sp)
1c00884a:	4cda                	lw	s9,148(sp)
1c00884c:	855a                	mv	a0,s6
1c00884e:	5b0a                	lw	s6,160(sp)
1c008850:	0c800593          	li	a1,200
1c008854:	6129                	addi	sp,sp,192
1c008856:	71c0106f          	j	1c009f72 <pi_l2_free>
1c00885a:	85da                	mv	a1,s6
1c00885c:	855a                	mv	a0,s6
1c00885e:	3c49                	jal	1c0082f0 <KeccakF1600_StatePermute>
1c008860:	002c                	addi	a1,sp,8
1c008862:	78c1                	lui	a7,0xffff0
1c008864:	ff010837          	lui	a6,0xff010
1c008868:	01000537          	lui	a0,0x1000
1c00886c:	09010e13          	addi	t3,sp,144
1c008870:	862e                	mv	a2,a1
1c008872:	40bb0333          	sub	t1,s6,a1
1c008876:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00887a:	187d                	addi	a6,a6,-1
1c00887c:	157d                	addi	a0,a0,-1
1c00887e:	00c307b3          	add	a5,t1,a2
1c008882:	0007ae83          	lw	t4,0(a5)
1c008886:	43d4                	lw	a3,4(a5)
1c008888:	008edf93          	srli	t6,t4,0x8
1c00888c:	0086df13          	srli	t5,a3,0x8
1c008890:	0ffef713          	andi	a4,t4,255
1c008894:	0ff6f793          	andi	a5,a3,255
1c008898:	0fffff93          	andi	t6,t6,255
1c00889c:	0fff7f13          	andi	t5,t5,255
1c0088a0:	0fa2                	slli	t6,t6,0x8
1c0088a2:	0f22                	slli	t5,t5,0x8
1c0088a4:	01177733          	and	a4,a4,a7
1c0088a8:	0117f7b3          	and	a5,a5,a7
1c0088ac:	01f76733          	or	a4,a4,t6
1c0088b0:	01e7e7b3          	or	a5,a5,t5
1c0088b4:	00ff0fb7          	lui	t6,0xff0
1c0088b8:	00ff0f37          	lui	t5,0xff0
1c0088bc:	01feffb3          	and	t6,t4,t6
1c0088c0:	01e6ff33          	and	t5,a3,t5
1c0088c4:	01077733          	and	a4,a4,a6
1c0088c8:	0107f7b3          	and	a5,a5,a6
1c0088cc:	01f76733          	or	a4,a4,t6
1c0088d0:	018ede93          	srli	t4,t4,0x18
1c0088d4:	01e7e7b3          	or	a5,a5,t5
1c0088d8:	82e1                	srli	a3,a3,0x18
1c0088da:	0ee2                	slli	t4,t4,0x18
1c0088dc:	8f69                	and	a4,a4,a0
1c0088de:	06e2                	slli	a3,a3,0x18
1c0088e0:	8fe9                	and	a5,a5,a0
1c0088e2:	01d76733          	or	a4,a4,t4
1c0088e6:	8fd5                	or	a5,a5,a3
1c0088e8:	c218                	sw	a4,0(a2)
1c0088ea:	c25c                	sw	a5,4(a2)
1c0088ec:	0621                	addi	a2,a2,8
1c0088ee:	f8ce18e3          	bne	t3,a2,1c00887e <shake256+0x13e>
1c0088f2:	fff98793          	addi	a5,s3,-1
1c0088f6:	4709                	li	a4,2
1c0088f8:	06f77963          	bleu	a5,a4,1c00896a <shake256+0x22a>
1c0088fc:	00449713          	slli	a4,s1,0x4
1c008900:	009707b3          	add	a5,a4,s1
1c008904:	078e                	slli	a5,a5,0x3
1c008906:	0029d513          	srli	a0,s3,0x2
1c00890a:	97ca                	add	a5,a5,s2
1c00890c:	4681                	li	a3,0
1c00890e:	4190                	lw	a2,0(a1)
1c008910:	0685                	addi	a3,a3,1
1c008912:	c390                	sw	a2,0(a5)
1c008914:	0591                	addi	a1,a1,4
1c008916:	0791                	addi	a5,a5,4
1c008918:	fea6ebe3          	bltu	a3,a0,1c00890e <shake256+0x1ce>
1c00891c:	ffc9f693          	andi	a3,s3,-4
1c008920:	f0d98ce3          	beq	s3,a3,1c008838 <shake256+0xf8>
1c008924:	009707b3          	add	a5,a4,s1
1c008928:	090c                	addi	a1,sp,144
1c00892a:	00d58733          	add	a4,a1,a3
1c00892e:	078e                	slli	a5,a5,0x3
1c008930:	f7874603          	lbu	a2,-136(a4)
1c008934:	97ca                	add	a5,a5,s2
1c008936:	00d78733          	add	a4,a5,a3
1c00893a:	00c70023          	sb	a2,0(a4)
1c00893e:	00168713          	addi	a4,a3,1
1c008942:	ef377be3          	bleu	s3,a4,1c008838 <shake256+0xf8>
1c008946:	00e58633          	add	a2,a1,a4
1c00894a:	f7864603          	lbu	a2,-136(a2)
1c00894e:	973e                	add	a4,a4,a5
1c008950:	00c70023          	sb	a2,0(a4)
1c008954:	0689                	addi	a3,a3,2
1c008956:	ef36f1e3          	bleu	s3,a3,1c008838 <shake256+0xf8>
1c00895a:	00d58733          	add	a4,a1,a3
1c00895e:	f7874703          	lbu	a4,-136(a4)
1c008962:	97b6                	add	a5,a5,a3
1c008964:	00e78023          	sb	a4,0(a5)
1c008968:	bdc1                	j	1c008838 <shake256+0xf8>
1c00896a:	4681                	li	a3,0
1c00896c:	00449713          	slli	a4,s1,0x4
1c008970:	bf55                	j	1c008924 <shake256+0x1e4>
1c008972:	06f00513          	li	a0,111
1c008976:	214d                	jal	1c008e18 <exit>

1c008978 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c008978:	9b010113          	addi	sp,sp,-1616
1c00897c:	100c                	addi	a1,sp,32
1c00897e:	4601                	li	a2,0
1c008980:	0088                	addi	a0,sp,64
1c008982:	64112623          	sw	ra,1612(sp)
1c008986:	2025                	jal	1c0089ae <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c008988:	1c000537          	lui	a0,0x1c000
1c00898c:	1c850513          	addi	a0,a0,456 # 1c0001c8 <__DTOR_END__+0x1ac>
1c008990:	2129                	jal	1c008d9a <puts>
1c008992:	0088                	addi	a0,sp,64
1c008994:	2835                	jal	1c0089d0 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c008996:	64c12083          	lw	ra,1612(sp)
1c00899a:	65010113          	addi	sp,sp,1616
1c00899e:	8082                	ret

1c0089a0 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c0089a0:	1141                	addi	sp,sp,-16
1c0089a2:	c606                	sw	ra,12(sp)
1c0089a4:	3fd1                	jal	1c008978 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c0089a6:	40b2                	lw	ra,12(sp)
1c0089a8:	4501                	li	a0,0
1c0089aa:	0141                	addi	sp,sp,16
1c0089ac:	8082                	ret

1c0089ae <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c0089ae:	7175                	addi	sp,sp,-144
1c0089b0:	c522                	sw	s0,136(sp)
1c0089b2:	86b2                	mv	a3,a2
1c0089b4:	842a                	mv	s0,a0
1c0089b6:	862e                	mv	a2,a1
1c0089b8:	850a                	mv	a0,sp
1c0089ba:	08000593          	li	a1,128
1c0089be:	c706                	sw	ra,140(sp)
1c0089c0:	20c9                	jal	1c008a82 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c0089c2:	858a                	mv	a1,sp
1c0089c4:	8522                	mv	a0,s0
1c0089c6:	3cc1                	jal	1c008496 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c0089c8:	40ba                	lw	ra,140(sp)
1c0089ca:	442a                	lw	s0,136(sp)
1c0089cc:	6149                	addi	sp,sp,144
1c0089ce:	8082                	ret

1c0089d0 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c0089d0:	9f010113          	addi	sp,sp,-1552
1c0089d4:	85aa                	mv	a1,a0
1c0089d6:	20000613          	li	a2,512
1c0089da:	40010513          	addi	a0,sp,1024
1c0089de:	60112623          	sw	ra,1548(sp)
1c0089e2:	60812423          	sw	s0,1544(sp)
1c0089e6:	60912223          	sw	s1,1540(sp)
1c0089ea:	61212023          	sw	s2,1536(sp)
1c0089ee:	28cd                	jal	1c008ae0 <memcpy>
1c0089f0:	6541                	lui	a0,0x10
1c0089f2:	40010693          	addi	a3,sp,1024
1c0089f6:	4601                	li	a2,0
1c0089f8:	157d                	addi	a0,a0,-1
1c0089fa:	10000813          	li	a6,256
1c0089fe:	00069703          	lh	a4,0(a3)
1c008a02:	00269583          	lh	a1,2(a3)
1c008a06:	00165793          	srli	a5,a2,0x1
1c008a0a:	078a                	slli	a5,a5,0x2
1c008a0c:	0742                	slli	a4,a4,0x10
1c008a0e:	8de9                	and	a1,a1,a0
1c008a10:	60010893          	addi	a7,sp,1536
1c008a14:	97c6                	add	a5,a5,a7
1c008a16:	8f4d                	or	a4,a4,a1
1c008a18:	a0e7a023          	sw	a4,-1536(a5)
1c008a1c:	0609                	addi	a2,a2,2
1c008a1e:	0691                	addi	a3,a3,4
1c008a20:	fd061fe3          	bne	a2,a6,1c0089fe <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2e>
1c008a24:	848a                	mv	s1,sp
1c008a26:	0400                	addi	s0,sp,512
1c008a28:	1c000937          	lui	s2,0x1c000
1c008a2c:	408c                	lw	a1,0(s1)
1c008a2e:	1dc90513          	addi	a0,s2,476 # 1c0001dc <__DTOR_END__+0x1c0>
1c008a32:	0491                	addi	s1,s1,4
1c008a34:	2101                	jal	1c008e34 <printf>
1c008a36:	fe941be3          	bne	s0,s1,1c008a2c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x5c>
1c008a3a:	1c000537          	lui	a0,0x1c000
1c008a3e:	1e450513          	addi	a0,a0,484 # 1c0001e4 <__DTOR_END__+0x1c8>
1c008a42:	2ea1                	jal	1c008d9a <puts>
1c008a44:	60012583          	lw	a1,1536(sp)
1c008a48:	40012503          	lw	a0,1024(sp)
1c008a4c:	60010913          	addi	s2,sp,1536
1c008a50:	3219                	jal	1c008356 <KYBER_poly_ntt>
1c008a52:	1c0004b7          	lui	s1,0x1c000
1c008a56:	400c                	lw	a1,0(s0)
1c008a58:	20848513          	addi	a0,s1,520 # 1c000208 <__DTOR_END__+0x1ec>
1c008a5c:	0411                	addi	s0,s0,4
1c008a5e:	2ed9                	jal	1c008e34 <printf>
1c008a60:	fe891be3          	bne	s2,s0,1c008a56 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x86>
1c008a64:	60812403          	lw	s0,1544(sp)
1c008a68:	60c12083          	lw	ra,1548(sp)
1c008a6c:	60412483          	lw	s1,1540(sp)
1c008a70:	60012903          	lw	s2,1536(sp)
1c008a74:	1c000537          	lui	a0,0x1c000
1c008a78:	21050513          	addi	a0,a0,528 # 1c000210 <__DTOR_END__+0x1f4>
1c008a7c:	61010113          	addi	sp,sp,1552
1c008a80:	ae29                	j	1c008d9a <puts>

1c008a82 <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c008a82:	7139                	addi	sp,sp,-64
1c008a84:	87b2                	mv	a5,a2
1c008a86:	da26                	sw	s1,52(sp)
1c008a88:	d84a                	sw	s2,48(sp)
1c008a8a:	84aa                	mv	s1,a0
1c008a8c:	892e                	mv	s2,a1
1c008a8e:	02000613          	li	a2,32
1c008a92:	85be                	mv	a1,a5
1c008a94:	0068                	addi	a0,sp,12
1c008a96:	de06                	sw	ra,60(sp)
1c008a98:	dc22                	sw	s0,56(sp)
1c008a9a:	8436                	mv	s0,a3
1c008a9c:	2091                	jal	1c008ae0 <memcpy>
1c008a9e:	0070                	addi	a2,sp,12
1c008aa0:	85ca                	mv	a1,s2
1c008aa2:	8526                	mv	a0,s1
1c008aa4:	02100693          	li	a3,33
1c008aa8:	02810623          	sb	s0,44(sp)
1c008aac:	3951                	jal	1c008740 <shake256>
1c008aae:	50f2                	lw	ra,60(sp)
1c008ab0:	5462                	lw	s0,56(sp)
1c008ab2:	54d2                	lw	s1,52(sp)
1c008ab4:	5942                	lw	s2,48(sp)
1c008ab6:	6121                	addi	sp,sp,64
1c008ab8:	8082                	ret

1c008aba <pos_wait_forever>:
1c008aba:	f14027f3          	csrr	a5,mhartid
1c008abe:	8795                	srai	a5,a5,0x5
1c008ac0:	03f7f793          	andi	a5,a5,63
1c008ac4:	477d                	li	a4,31
1c008ac6:	00e78363          	beq	a5,a4,1c008acc <pos_wait_forever+0x12>
1c008aca:	a001                	j	1c008aca <pos_wait_forever+0x10>
1c008acc:	1a10a7b7          	lui	a5,0x1a10a
1c008ad0:	577d                	li	a4,-1
1c008ad2:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008ad6:	10500073          	wfi
1c008ada:	10500073          	wfi
1c008ade:	bfe5                	j	1c008ad6 <pos_wait_forever+0x1c>

1c008ae0 <memcpy>:
1c008ae0:	00b567b3          	or	a5,a0,a1
1c008ae4:	8b8d                	andi	a5,a5,3
1c008ae6:	10078f63          	beqz	a5,1c008c04 <memcpy+0x124>
1c008aea:	14060063          	beqz	a2,1c008c2a <memcpy+0x14a>
1c008aee:	00458793          	addi	a5,a1,4
1c008af2:	00450693          	addi	a3,a0,4
1c008af6:	00f537b3          	sltu	a5,a0,a5
1c008afa:	00d5b6b3          	sltu	a3,a1,a3
1c008afe:	0017c793          	xori	a5,a5,1
1c008b02:	0016c693          	xori	a3,a3,1
1c008b06:	873e                	mv	a4,a5
1c008b08:	87b6                	mv	a5,a3
1c008b0a:	8fd9                	or	a5,a5,a4
1c008b0c:	0ff7f793          	andi	a5,a5,255
1c008b10:	cff9                	beqz	a5,1c008bee <memcpy+0x10e>
1c008b12:	00863793          	sltiu	a5,a2,8
1c008b16:	0017c793          	xori	a5,a5,1
1c008b1a:	0ff7f793          	andi	a5,a5,255
1c008b1e:	cbe1                	beqz	a5,1c008bee <memcpy+0x10e>
1c008b20:	40b007b3          	neg	a5,a1
1c008b24:	8b8d                	andi	a5,a5,3
1c008b26:	fff60313          	addi	t1,a2,-1
1c008b2a:	cfe5                	beqz	a5,1c008c22 <memcpy+0x142>
1c008b2c:	0005c683          	lbu	a3,0(a1)
1c008b30:	4705                	li	a4,1
1c008b32:	00d50023          	sb	a3,0(a0)
1c008b36:	00158893          	addi	a7,a1,1
1c008b3a:	00150813          	addi	a6,a0,1
1c008b3e:	02e78963          	beq	a5,a4,1c008b70 <memcpy+0x90>
1c008b42:	0015c683          	lbu	a3,1(a1)
1c008b46:	470d                	li	a4,3
1c008b48:	00d500a3          	sb	a3,1(a0)
1c008b4c:	00258893          	addi	a7,a1,2
1c008b50:	00250813          	addi	a6,a0,2
1c008b54:	ffe60313          	addi	t1,a2,-2
1c008b58:	00e79c63          	bne	a5,a4,1c008b70 <memcpy+0x90>
1c008b5c:	0025c703          	lbu	a4,2(a1)
1c008b60:	00358893          	addi	a7,a1,3
1c008b64:	00350813          	addi	a6,a0,3
1c008b68:	00e50123          	sb	a4,2(a0)
1c008b6c:	ffd60313          	addi	t1,a2,-3
1c008b70:	8e1d                	sub	a2,a2,a5
1c008b72:	95be                	add	a1,a1,a5
1c008b74:	00265e13          	srli	t3,a2,0x2
1c008b78:	97aa                	add	a5,a5,a0
1c008b7a:	4701                	li	a4,0
1c008b7c:	4194                	lw	a3,0(a1)
1c008b7e:	0705                	addi	a4,a4,1
1c008b80:	c394                	sw	a3,0(a5)
1c008b82:	0591                	addi	a1,a1,4
1c008b84:	0791                	addi	a5,a5,4
1c008b86:	ffc76be3          	bltu	a4,t3,1c008b7c <memcpy+0x9c>
1c008b8a:	ffc67593          	andi	a1,a2,-4
1c008b8e:	40b306b3          	sub	a3,t1,a1
1c008b92:	00b807b3          	add	a5,a6,a1
1c008b96:	00b88733          	add	a4,a7,a1
1c008b9a:	06b60463          	beq	a2,a1,1c008c02 <memcpy+0x122>
1c008b9e:	00074583          	lbu	a1,0(a4)
1c008ba2:	fff68613          	addi	a2,a3,-1
1c008ba6:	00b78023          	sb	a1,0(a5)
1c008baa:	ce21                	beqz	a2,1c008c02 <memcpy+0x122>
1c008bac:	00174583          	lbu	a1,1(a4)
1c008bb0:	ffe68613          	addi	a2,a3,-2
1c008bb4:	00b780a3          	sb	a1,1(a5)
1c008bb8:	c629                	beqz	a2,1c008c02 <memcpy+0x122>
1c008bba:	00274583          	lbu	a1,2(a4)
1c008bbe:	ffd68613          	addi	a2,a3,-3
1c008bc2:	00b78123          	sb	a1,2(a5)
1c008bc6:	ce15                	beqz	a2,1c008c02 <memcpy+0x122>
1c008bc8:	00374583          	lbu	a1,3(a4)
1c008bcc:	ffc68613          	addi	a2,a3,-4
1c008bd0:	00b781a3          	sb	a1,3(a5)
1c008bd4:	c61d                	beqz	a2,1c008c02 <memcpy+0x122>
1c008bd6:	00474583          	lbu	a1,4(a4)
1c008bda:	4615                	li	a2,5
1c008bdc:	00b78223          	sb	a1,4(a5)
1c008be0:	02c68163          	beq	a3,a2,1c008c02 <memcpy+0x122>
1c008be4:	00574703          	lbu	a4,5(a4)
1c008be8:	00e782a3          	sb	a4,5(a5)
1c008bec:	8082                	ret
1c008bee:	962e                	add	a2,a2,a1
1c008bf0:	87aa                	mv	a5,a0
1c008bf2:	0585                	addi	a1,a1,1
1c008bf4:	fff5c703          	lbu	a4,-1(a1)
1c008bf8:	0785                	addi	a5,a5,1
1c008bfa:	fee78fa3          	sb	a4,-1(a5)
1c008bfe:	fec59ae3          	bne	a1,a2,1c008bf2 <memcpy+0x112>
1c008c02:	8082                	ret
1c008c04:	00367793          	andi	a5,a2,3
1c008c08:	ee0793e3          	bnez	a5,1c008aee <memcpy+0xe>
1c008c0c:	da7d                	beqz	a2,1c008c02 <memcpy+0x122>
1c008c0e:	87aa                	mv	a5,a0
1c008c10:	0591                	addi	a1,a1,4
1c008c12:	ffc5a703          	lw	a4,-4(a1)
1c008c16:	0791                	addi	a5,a5,4
1c008c18:	fee7ae23          	sw	a4,-4(a5)
1c008c1c:	1671                	addi	a2,a2,-4
1c008c1e:	fa6d                	bnez	a2,1c008c10 <memcpy+0x130>
1c008c20:	8082                	ret
1c008c22:	88ae                	mv	a7,a1
1c008c24:	882a                	mv	a6,a0
1c008c26:	8332                	mv	t1,a2
1c008c28:	b7a1                	j	1c008b70 <memcpy+0x90>
1c008c2a:	8082                	ret

1c008c2c <memmove>:
1c008c2c:	40b507b3          	sub	a5,a0,a1
1c008c30:	10c7e463          	bltu	a5,a2,1c008d38 <memmove+0x10c>
1c008c34:	12060b63          	beqz	a2,1c008d6a <memmove+0x13e>
1c008c38:	00458793          	addi	a5,a1,4
1c008c3c:	00450693          	addi	a3,a0,4
1c008c40:	00f537b3          	sltu	a5,a0,a5
1c008c44:	00d5b6b3          	sltu	a3,a1,a3
1c008c48:	0017c793          	xori	a5,a5,1
1c008c4c:	0016c693          	xori	a3,a3,1
1c008c50:	873e                	mv	a4,a5
1c008c52:	87b6                	mv	a5,a3
1c008c54:	8fd9                	or	a5,a5,a4
1c008c56:	0ff7f793          	andi	a5,a5,255
1c008c5a:	cfed                	beqz	a5,1c008d54 <memmove+0x128>
1c008c5c:	00863793          	sltiu	a5,a2,8
1c008c60:	0017c793          	xori	a5,a5,1
1c008c64:	0ff7f793          	andi	a5,a5,255
1c008c68:	c7f5                	beqz	a5,1c008d54 <memmove+0x128>
1c008c6a:	40b007b3          	neg	a5,a1
1c008c6e:	8b8d                	andi	a5,a5,3
1c008c70:	fff60313          	addi	t1,a2,-1
1c008c74:	cfe5                	beqz	a5,1c008d6c <memmove+0x140>
1c008c76:	0005c683          	lbu	a3,0(a1)
1c008c7a:	4705                	li	a4,1
1c008c7c:	00d50023          	sb	a3,0(a0)
1c008c80:	00150813          	addi	a6,a0,1
1c008c84:	00158893          	addi	a7,a1,1
1c008c88:	02e78963          	beq	a5,a4,1c008cba <memmove+0x8e>
1c008c8c:	0015c683          	lbu	a3,1(a1)
1c008c90:	470d                	li	a4,3
1c008c92:	00d500a3          	sb	a3,1(a0)
1c008c96:	00250813          	addi	a6,a0,2
1c008c9a:	00258893          	addi	a7,a1,2
1c008c9e:	ffe60313          	addi	t1,a2,-2
1c008ca2:	00e79c63          	bne	a5,a4,1c008cba <memmove+0x8e>
1c008ca6:	0025c703          	lbu	a4,2(a1)
1c008caa:	00350813          	addi	a6,a0,3
1c008cae:	00e50123          	sb	a4,2(a0)
1c008cb2:	00358893          	addi	a7,a1,3
1c008cb6:	ffd60313          	addi	t1,a2,-3
1c008cba:	8e1d                	sub	a2,a2,a5
1c008cbc:	95be                	add	a1,a1,a5
1c008cbe:	00265e13          	srli	t3,a2,0x2
1c008cc2:	97aa                	add	a5,a5,a0
1c008cc4:	4701                	li	a4,0
1c008cc6:	4194                	lw	a3,0(a1)
1c008cc8:	0705                	addi	a4,a4,1
1c008cca:	c394                	sw	a3,0(a5)
1c008ccc:	0591                	addi	a1,a1,4
1c008cce:	0791                	addi	a5,a5,4
1c008cd0:	ffc76be3          	bltu	a4,t3,1c008cc6 <memmove+0x9a>
1c008cd4:	ffc67593          	andi	a1,a2,-4
1c008cd8:	40b306b3          	sub	a3,t1,a1
1c008cdc:	00b807b3          	add	a5,a6,a1
1c008ce0:	00b88733          	add	a4,a7,a1
1c008ce4:	08b60263          	beq	a2,a1,1c008d68 <memmove+0x13c>
1c008ce8:	00074583          	lbu	a1,0(a4)
1c008cec:	fff68613          	addi	a2,a3,-1
1c008cf0:	00b78023          	sb	a1,0(a5)
1c008cf4:	ca35                	beqz	a2,1c008d68 <memmove+0x13c>
1c008cf6:	00174583          	lbu	a1,1(a4)
1c008cfa:	ffe68613          	addi	a2,a3,-2
1c008cfe:	00b780a3          	sb	a1,1(a5)
1c008d02:	c23d                	beqz	a2,1c008d68 <memmove+0x13c>
1c008d04:	00274583          	lbu	a1,2(a4)
1c008d08:	ffd68613          	addi	a2,a3,-3
1c008d0c:	00b78123          	sb	a1,2(a5)
1c008d10:	ce21                	beqz	a2,1c008d68 <memmove+0x13c>
1c008d12:	00374583          	lbu	a1,3(a4)
1c008d16:	ffc68613          	addi	a2,a3,-4
1c008d1a:	00b781a3          	sb	a1,3(a5)
1c008d1e:	c629                	beqz	a2,1c008d68 <memmove+0x13c>
1c008d20:	00474583          	lbu	a1,4(a4)
1c008d24:	4615                	li	a2,5
1c008d26:	00b78223          	sb	a1,4(a5)
1c008d2a:	02c68f63          	beq	a3,a2,1c008d68 <memmove+0x13c>
1c008d2e:	00574703          	lbu	a4,5(a4)
1c008d32:	00e782a3          	sb	a4,5(a5)
1c008d36:	8082                	ret
1c008d38:	167d                	addi	a2,a2,-1
1c008d3a:	00c587b3          	add	a5,a1,a2
1c008d3e:	962a                	add	a2,a2,a0
1c008d40:	15fd                	addi	a1,a1,-1
1c008d42:	0007c703          	lbu	a4,0(a5)
1c008d46:	17fd                	addi	a5,a5,-1
1c008d48:	00e60023          	sb	a4,0(a2)
1c008d4c:	167d                	addi	a2,a2,-1
1c008d4e:	feb79ae3          	bne	a5,a1,1c008d42 <memmove+0x116>
1c008d52:	8082                	ret
1c008d54:	962a                	add	a2,a2,a0
1c008d56:	87aa                	mv	a5,a0
1c008d58:	0005c703          	lbu	a4,0(a1)
1c008d5c:	0785                	addi	a5,a5,1
1c008d5e:	fee78fa3          	sb	a4,-1(a5)
1c008d62:	0585                	addi	a1,a1,1
1c008d64:	fec79ae3          	bne	a5,a2,1c008d58 <memmove+0x12c>
1c008d68:	8082                	ret
1c008d6a:	8082                	ret
1c008d6c:	88ae                	mv	a7,a1
1c008d6e:	882a                	mv	a6,a0
1c008d70:	8332                	mv	t1,a2
1c008d72:	b7a1                	j	1c008cba <memmove+0x8e>

1c008d74 <strchr>:
1c008d74:	00054783          	lbu	a5,0(a0)
1c008d78:	0ff5f593          	andi	a1,a1,255
1c008d7c:	00b78863          	beq	a5,a1,1c008d8c <strchr+0x18>
1c008d80:	c799                	beqz	a5,1c008d8e <strchr+0x1a>
1c008d82:	0505                	addi	a0,a0,1
1c008d84:	00054783          	lbu	a5,0(a0)
1c008d88:	feb79ce3          	bne	a5,a1,1c008d80 <strchr+0xc>
1c008d8c:	8082                	ret
1c008d8e:	0015b593          	seqz	a1,a1
1c008d92:	40b005b3          	neg	a1,a1
1c008d96:	8d6d                	and	a0,a0,a1
1c008d98:	8082                	ret

1c008d9a <puts>:
1c008d9a:	00054783          	lbu	a5,0(a0)
1c008d9e:	c78d                	beqz	a5,1c008dc8 <puts+0x2e>
1c008da0:	f14026f3          	csrr	a3,mhartid
1c008da4:	00369713          	slli	a4,a3,0x3
1c008da8:	1a10f637          	lui	a2,0x1a10f
1c008dac:	0ff77713          	andi	a4,a4,255
1c008db0:	9732                	add	a4,a4,a2
1c008db2:	6609                	lui	a2,0x2
1c008db4:	068a                	slli	a3,a3,0x2
1c008db6:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008dba:	8ef1                	and	a3,a3,a2
1c008dbc:	9736                	add	a4,a4,a3
1c008dbe:	c31c                	sw	a5,0(a4)
1c008dc0:	0505                	addi	a0,a0,1
1c008dc2:	00054783          	lbu	a5,0(a0)
1c008dc6:	ffe5                	bnez	a5,1c008dbe <puts+0x24>
1c008dc8:	f1402773          	csrr	a4,mhartid
1c008dcc:	00371793          	slli	a5,a4,0x3
1c008dd0:	1a10f6b7          	lui	a3,0x1a10f
1c008dd4:	0ff7f793          	andi	a5,a5,255
1c008dd8:	97b6                	add	a5,a5,a3
1c008dda:	6689                	lui	a3,0x2
1c008ddc:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008de0:	070a                	slli	a4,a4,0x2
1c008de2:	8f75                	and	a4,a4,a3
1c008de4:	97ba                	add	a5,a5,a4
1c008de6:	4729                	li	a4,10
1c008de8:	c398                	sw	a4,0(a5)
1c008dea:	4501                	li	a0,0
1c008dec:	8082                	ret

1c008dee <pos_libc_fputc_locked>:
1c008dee:	6689                	lui	a3,0x2
1c008df0:	f14027f3          	csrr	a5,mhartid
1c008df4:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008df8:	00379713          	slli	a4,a5,0x3
1c008dfc:	078a                	slli	a5,a5,0x2
1c008dfe:	8ff5                	and	a5,a5,a3
1c008e00:	0ff77713          	andi	a4,a4,255
1c008e04:	1a10f6b7          	lui	a3,0x1a10f
1c008e08:	9736                	add	a4,a4,a3
1c008e0a:	0ff57513          	andi	a0,a0,255
1c008e0e:	97ba                	add	a5,a5,a4
1c008e10:	c388                	sw	a0,0(a5)
1c008e12:	4501                	li	a0,0
1c008e14:	8082                	ret

1c008e16 <pos_libc_prf_locked>:
1c008e16:	a0b1                	j	1c008e62 <pos_libc_prf>

1c008e18 <exit>:
1c008e18:	800007b7          	lui	a5,0x80000
1c008e1c:	1141                	addi	sp,sp,-16
1c008e1e:	8d5d                	or	a0,a0,a5
1c008e20:	c606                	sw	ra,12(sp)
1c008e22:	1a1047b7          	lui	a5,0x1a104
1c008e26:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008e2a:	3941                	jal	1c008aba <pos_wait_forever>

1c008e2c <pos_io_start>:
1c008e2c:	4501                	li	a0,0
1c008e2e:	8082                	ret

1c008e30 <pos_io_stop>:
1c008e30:	4501                	li	a0,0
1c008e32:	8082                	ret

1c008e34 <printf>:
1c008e34:	7139                	addi	sp,sp,-64
1c008e36:	02410313          	addi	t1,sp,36
1c008e3a:	d432                	sw	a2,40(sp)
1c008e3c:	862a                	mv	a2,a0
1c008e3e:	1c009537          	lui	a0,0x1c009
1c008e42:	d22e                	sw	a1,36(sp)
1c008e44:	d636                	sw	a3,44(sp)
1c008e46:	4589                	li	a1,2
1c008e48:	869a                	mv	a3,t1
1c008e4a:	dee50513          	addi	a0,a0,-530 # 1c008dee <pos_libc_fputc_locked>
1c008e4e:	ce06                	sw	ra,28(sp)
1c008e50:	d83a                	sw	a4,48(sp)
1c008e52:	da3e                	sw	a5,52(sp)
1c008e54:	dc42                	sw	a6,56(sp)
1c008e56:	de46                	sw	a7,60(sp)
1c008e58:	c61a                	sw	t1,12(sp)
1c008e5a:	3f75                	jal	1c008e16 <pos_libc_prf_locked>
1c008e5c:	40f2                	lw	ra,28(sp)
1c008e5e:	6121                	addi	sp,sp,64
1c008e60:	8082                	ret

1c008e62 <pos_libc_prf>:
1c008e62:	7169                	addi	sp,sp,-304
1c008e64:	12812423          	sw	s0,296(sp)
1c008e68:	12912223          	sw	s1,292(sp)
1c008e6c:	11612823          	sw	s6,272(sp)
1c008e70:	11712623          	sw	s7,268(sp)
1c008e74:	11812423          	sw	s8,264(sp)
1c008e78:	11912223          	sw	s9,260(sp)
1c008e7c:	11a12023          	sw	s10,256(sp)
1c008e80:	12112623          	sw	ra,300(sp)
1c008e84:	13212023          	sw	s2,288(sp)
1c008e88:	11312e23          	sw	s3,284(sp)
1c008e8c:	11412c23          	sw	s4,280(sp)
1c008e90:	11512a23          	sw	s5,276(sp)
1c008e94:	dfee                	sw	s11,252(sp)
1c008e96:	8b2a                	mv	s6,a0
1c008e98:	8d2e                	mv	s10,a1
1c008e9a:	84b2                	mv	s1,a2
1c008e9c:	8c36                	mv	s8,a3
1c008e9e:	4401                	li	s0,0
1c008ea0:	1c000bb7          	lui	s7,0x1c000
1c008ea4:	02410c93          	addi	s9,sp,36
1c008ea8:	0004c503          	lbu	a0,0(s1)
1c008eac:	0485                	addi	s1,s1,1
1c008eae:	cd19                	beqz	a0,1c008ecc <pos_libc_prf+0x6a>
1c008eb0:	02500793          	li	a5,37
1c008eb4:	04f50863          	beq	a0,a5,1c008f04 <pos_libc_prf+0xa2>
1c008eb8:	85ea                	mv	a1,s10
1c008eba:	9b02                	jalr	s6
1c008ebc:	57fd                	li	a5,-1
1c008ebe:	24f50863          	beq	a0,a5,1c00910e <pos_libc_prf+0x2ac>
1c008ec2:	0405                	addi	s0,s0,1
1c008ec4:	0004c503          	lbu	a0,0(s1)
1c008ec8:	0485                	addi	s1,s1,1
1c008eca:	f17d                	bnez	a0,1c008eb0 <pos_libc_prf+0x4e>
1c008ecc:	8522                	mv	a0,s0
1c008ece:	12c12083          	lw	ra,300(sp)
1c008ed2:	12812403          	lw	s0,296(sp)
1c008ed6:	12412483          	lw	s1,292(sp)
1c008eda:	12012903          	lw	s2,288(sp)
1c008ede:	11c12983          	lw	s3,284(sp)
1c008ee2:	11812a03          	lw	s4,280(sp)
1c008ee6:	11412a83          	lw	s5,276(sp)
1c008eea:	11012b03          	lw	s6,272(sp)
1c008eee:	10c12b83          	lw	s7,268(sp)
1c008ef2:	10812c03          	lw	s8,264(sp)
1c008ef6:	10412c83          	lw	s9,260(sp)
1c008efa:	10012d03          	lw	s10,256(sp)
1c008efe:	5dfe                	lw	s11,252(sp)
1c008f00:	6155                	addi	sp,sp,304
1c008f02:	8082                	ret
1c008f04:	00148a93          	addi	s5,s1,1
1c008f08:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c008f0c:	02000713          	li	a4,32
1c008f10:	234b8513          	addi	a0,s7,564 # 1c000234 <__DTOR_END__+0x218>
1c008f14:	85ee                	mv	a1,s11
1c008f16:	c83a                	sw	a4,16(sp)
1c008f18:	cc02                	sw	zero,24(sp)
1c008f1a:	ca02                	sw	zero,20(sp)
1c008f1c:	ce02                	sw	zero,28(sp)
1c008f1e:	c602                	sw	zero,12(sp)
1c008f20:	02300913          	li	s2,35
1c008f24:	02d00a13          	li	s4,45
1c008f28:	89d6                	mv	s3,s5
1c008f2a:	35a9                	jal	1c008d74 <strchr>
1c008f2c:	c915                	beqz	a0,1c008f60 <pos_libc_prf+0xfe>
1c008f2e:	212d8963          	beq	s11,s2,1c009140 <pos_libc_prf+0x2de>
1c008f32:	1fb97063          	bleu	s11,s2,1c009112 <pos_libc_prf+0x2b0>
1c008f36:	214d8163          	beq	s11,s4,1c009138 <pos_libc_prf+0x2d6>
1c008f3a:	03000613          	li	a2,48
1c008f3e:	1ecd8863          	beq	s11,a2,1c00912e <pos_libc_prf+0x2cc>
1c008f42:	02b00693          	li	a3,43
1c008f46:	1edd8063          	beq	s11,a3,1c009126 <pos_libc_prf+0x2c4>
1c008f4a:	84d6                	mv	s1,s5
1c008f4c:	00148a93          	addi	s5,s1,1
1c008f50:	fffacd83          	lbu	s11,-1(s5)
1c008f54:	234b8513          	addi	a0,s7,564
1c008f58:	85ee                	mv	a1,s11
1c008f5a:	89d6                	mv	s3,s5
1c008f5c:	3d21                	jal	1c008d74 <strchr>
1c008f5e:	f961                	bnez	a0,1c008f2e <pos_libc_prf+0xcc>
1c008f60:	02a00613          	li	a2,42
1c008f64:	20cd8463          	beq	s11,a2,1c00916c <pos_libc_prf+0x30a>
1c008f68:	fd0d8613          	addi	a2,s11,-48
1c008f6c:	45a5                	li	a1,9
1c008f6e:	4901                	li	s2,0
1c008f70:	1cc5fe63          	bleu	a2,a1,1c00914c <pos_libc_prf+0x2ea>
1c008f74:	02e00713          	li	a4,46
1c008f78:	5a7d                	li	s4,-1
1c008f7a:	24ed8463          	beq	s11,a4,1c0091c2 <pos_libc_prf+0x360>
1c008f7e:	1c000837          	lui	a6,0x1c000
1c008f82:	85ee                	mv	a1,s11
1c008f84:	23c80513          	addi	a0,a6,572 # 1c00023c <__DTOR_END__+0x220>
1c008f88:	33f5                	jal	1c008d74 <strchr>
1c008f8a:	84ce                	mv	s1,s3
1c008f8c:	c509                	beqz	a0,1c008f96 <pos_libc_prf+0x134>
1c008f8e:	0009cd83          	lbu	s11,0(s3)
1c008f92:	00198493          	addi	s1,s3,1
1c008f96:	06700713          	li	a4,103
1c008f9a:	1fb75963          	ble	s11,a4,1c00918c <pos_libc_prf+0x32a>
1c008f9e:	07000713          	li	a4,112
1c008fa2:	12ed89e3          	beq	s11,a4,1c0098d4 <pos_libc_prf+0xa72>
1c008fa6:	25b75263          	ble	s11,a4,1c0091ea <pos_libc_prf+0x388>
1c008faa:	07500713          	li	a4,117
1c008fae:	0aed89e3          	beq	s11,a4,1c009860 <pos_libc_prf+0x9fe>
1c008fb2:	07800713          	li	a4,120
1c008fb6:	72ed8b63          	beq	s11,a4,1c0096ec <pos_libc_prf+0x88a>
1c008fba:	07300713          	li	a4,115
1c008fbe:	1aed9ce3          	bne	s11,a4,1c009976 <pos_libc_prf+0xb14>
1c008fc2:	000c2583          	lw	a1,0(s8)
1c008fc6:	004c0a93          	addi	s5,s8,4
1c008fca:	87ae                	mv	a5,a1
1c008fcc:	4981                	li	s3,0
1c008fce:	0c800693          	li	a3,200
1c008fd2:	a021                	j	1c008fda <pos_libc_prf+0x178>
1c008fd4:	0985                	addi	s3,s3,1
1c008fd6:	5ad98be3          	beq	s3,a3,1c009d8c <pos_libc_prf+0xf2a>
1c008fda:	0007c703          	lbu	a4,0(a5)
1c008fde:	0785                	addi	a5,a5,1
1c008fe0:	fb75                	bnez	a4,1c008fd4 <pos_libc_prf+0x172>
1c008fe2:	000a4563          	bltz	s4,1c008fec <pos_libc_prf+0x18a>
1c008fe6:	013a5363          	ble	s3,s4,1c008fec <pos_libc_prf+0x18a>
1c008fea:	89d2                	mv	s3,s4
1c008fec:	8c56                	mv	s8,s5
1c008fee:	ea098de3          	beqz	s3,1c008ea8 <pos_libc_prf+0x46>
1c008ff2:	864e                	mv	a2,s3
1c008ff4:	8566                	mv	a0,s9
1c008ff6:	34ed                	jal	1c008ae0 <memcpy>
1c008ff8:	8c56                	mv	s8,s5
1c008ffa:	0f29d963          	ble	s2,s3,1c0090ec <pos_libc_prf+0x28a>
1c008ffe:	c602                	sw	zero,12(sp)
1c009000:	48f2                	lw	a7,28(sp)
1c009002:	1a0885e3          	beqz	a7,1c0099ac <pos_libc_prf+0xb4a>
1c009006:	013c87b3          	add	a5,s9,s3
1c00900a:	40f007b3          	neg	a5,a5
1c00900e:	8b8d                	andi	a5,a5,3
1c009010:	00378693          	addi	a3,a5,3
1c009014:	4715                	li	a4,5
1c009016:	413905b3          	sub	a1,s2,s3
1c00901a:	00e6f363          	bleu	a4,a3,1c009020 <pos_libc_prf+0x1be>
1c00901e:	4695                	li	a3,5
1c009020:	fff90713          	addi	a4,s2,-1
1c009024:	41370733          	sub	a4,a4,s3
1c009028:	06d76663          	bltu	a4,a3,1c009094 <pos_libc_prf+0x232>
1c00902c:	86ce                	mv	a3,s3
1c00902e:	cb9d                	beqz	a5,1c009064 <pos_libc_prf+0x202>
1c009030:	0f010813          	addi	a6,sp,240
1c009034:	013806b3          	add	a3,a6,s3
1c009038:	02000713          	li	a4,32
1c00903c:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c009040:	4605                	li	a2,1
1c009042:	00198693          	addi	a3,s3,1
1c009046:	00c78f63          	beq	a5,a2,1c009064 <pos_libc_prf+0x202>
1c00904a:	96c2                	add	a3,a3,a6
1c00904c:	f2e68a23          	sb	a4,-204(a3)
1c009050:	460d                	li	a2,3
1c009052:	00298693          	addi	a3,s3,2
1c009056:	00c79763          	bne	a5,a2,1c009064 <pos_libc_prf+0x202>
1c00905a:	96c2                	add	a3,a3,a6
1c00905c:	f2e68a23          	sb	a4,-204(a3)
1c009060:	00398693          	addi	a3,s3,3
1c009064:	8d9d                	sub	a1,a1,a5
1c009066:	97ce                	add	a5,a5,s3
1c009068:	0025d613          	srli	a2,a1,0x2
1c00906c:	97e6                	add	a5,a5,s9
1c00906e:	4701                	li	a4,0
1c009070:	1c0008b7          	lui	a7,0x1c000
1c009074:	23088893          	addi	a7,a7,560 # 1c000230 <__DTOR_END__+0x214>
1c009078:	0008a883          	lw	a7,0(a7)
1c00907c:	0705                	addi	a4,a4,1
1c00907e:	0117a023          	sw	a7,0(a5)
1c009082:	0791                	addi	a5,a5,4
1c009084:	fec766e3          	bltu	a4,a2,1c009070 <pos_libc_prf+0x20e>
1c009088:	ffc5f793          	andi	a5,a1,-4
1c00908c:	00d789b3          	add	s3,a5,a3
1c009090:	04b78b63          	beq	a5,a1,1c0090e6 <pos_libc_prf+0x284>
1c009094:	1988                	addi	a0,sp,240
1c009096:	01350733          	add	a4,a0,s3
1c00909a:	02000793          	li	a5,32
1c00909e:	f2f70a23          	sb	a5,-204(a4)
1c0090a2:	00198713          	addi	a4,s3,1
1c0090a6:	05275063          	ble	s2,a4,1c0090e6 <pos_libc_prf+0x284>
1c0090aa:	972a                	add	a4,a4,a0
1c0090ac:	f2f70a23          	sb	a5,-204(a4)
1c0090b0:	00298713          	addi	a4,s3,2
1c0090b4:	03275963          	ble	s2,a4,1c0090e6 <pos_libc_prf+0x284>
1c0090b8:	972a                	add	a4,a4,a0
1c0090ba:	f2f70a23          	sb	a5,-204(a4)
1c0090be:	00398713          	addi	a4,s3,3
1c0090c2:	03275263          	ble	s2,a4,1c0090e6 <pos_libc_prf+0x284>
1c0090c6:	972a                	add	a4,a4,a0
1c0090c8:	f2f70a23          	sb	a5,-204(a4)
1c0090cc:	00498713          	addi	a4,s3,4
1c0090d0:	01275b63          	ble	s2,a4,1c0090e6 <pos_libc_prf+0x284>
1c0090d4:	972a                	add	a4,a4,a0
1c0090d6:	f2f70a23          	sb	a5,-204(a4)
1c0090da:	0995                	addi	s3,s3,5
1c0090dc:	0129d563          	ble	s2,s3,1c0090e6 <pos_libc_prf+0x284>
1c0090e0:	99aa                	add	s3,s3,a0
1c0090e2:	f2f98a23          	sb	a5,-204(s3)
1c0090e6:	89ca                	mv	s3,s2
1c0090e8:	dc0980e3          	beqz	s3,1c008ea8 <pos_libc_prf+0x46>
1c0090ec:	8966                	mv	s2,s9
1c0090ee:	5a7d                	li	s4,-1
1c0090f0:	41940ab3          	sub	s5,s0,s9
1c0090f4:	a029                	j	1c0090fe <pos_libc_prf+0x29c>
1c0090f6:	01590433          	add	s0,s2,s5
1c0090fa:	da0987e3          	beqz	s3,1c008ea8 <pos_libc_prf+0x46>
1c0090fe:	00094503          	lbu	a0,0(s2)
1c009102:	85ea                	mv	a1,s10
1c009104:	9b02                	jalr	s6
1c009106:	0905                	addi	s2,s2,1
1c009108:	19fd                	addi	s3,s3,-1
1c00910a:	ff4516e3          	bne	a0,s4,1c0090f6 <pos_libc_prf+0x294>
1c00910e:	547d                	li	s0,-1
1c009110:	bb75                	j	1c008ecc <pos_libc_prf+0x6a>
1c009112:	da0d8de3          	beqz	s11,1c008ecc <pos_libc_prf+0x6a>
1c009116:	02000513          	li	a0,32
1c00911a:	e2ad98e3          	bne	s11,a0,1c008f4a <pos_libc_prf+0xe8>
1c00911e:	4785                	li	a5,1
1c009120:	cc3e                	sw	a5,24(sp)
1c009122:	84d6                	mv	s1,s5
1c009124:	b525                	j	1c008f4c <pos_libc_prf+0xea>
1c009126:	4705                	li	a4,1
1c009128:	ca3a                	sw	a4,20(sp)
1c00912a:	84d6                	mv	s1,s5
1c00912c:	b505                	j	1c008f4c <pos_libc_prf+0xea>
1c00912e:	03000893          	li	a7,48
1c009132:	c846                	sw	a7,16(sp)
1c009134:	84d6                	mv	s1,s5
1c009136:	bd19                	j	1c008f4c <pos_libc_prf+0xea>
1c009138:	4685                	li	a3,1
1c00913a:	ce36                	sw	a3,28(sp)
1c00913c:	84d6                	mv	s1,s5
1c00913e:	b539                	j	1c008f4c <pos_libc_prf+0xea>
1c009140:	4805                	li	a6,1
1c009142:	c642                	sw	a6,12(sp)
1c009144:	84d6                	mv	s1,s5
1c009146:	b519                	j	1c008f4c <pos_libc_prf+0xea>
1c009148:	84d6                	mv	s1,s5
1c00914a:	0a85                	addi	s5,s5,1
1c00914c:	00291793          	slli	a5,s2,0x2
1c009150:	97ca                	add	a5,a5,s2
1c009152:	0786                	slli	a5,a5,0x1
1c009154:	97ee                	add	a5,a5,s11
1c009156:	000acd83          	lbu	s11,0(s5)
1c00915a:	fd078913          	addi	s2,a5,-48
1c00915e:	fd0d8793          	addi	a5,s11,-48
1c009162:	fef5f3e3          	bleu	a5,a1,1c009148 <pos_libc_prf+0x2e6>
1c009166:	00248993          	addi	s3,s1,2
1c00916a:	a811                	j	1c00917e <pos_libc_prf+0x31c>
1c00916c:	000c2903          	lw	s2,0(s8)
1c009170:	0c11                	addi	s8,s8,4
1c009172:	14094663          	bltz	s2,1c0092be <pos_libc_prf+0x45c>
1c009176:	000acd83          	lbu	s11,0(s5)
1c00917a:	00248993          	addi	s3,s1,2
1c00917e:	0c800713          	li	a4,200
1c009182:	df2779e3          	bleu	s2,a4,1c008f74 <pos_libc_prf+0x112>
1c009186:	0c800913          	li	s2,200
1c00918a:	b3ed                	j	1c008f74 <pos_libc_prf+0x112>
1c00918c:	06500713          	li	a4,101
1c009190:	12eddc63          	ble	a4,s11,1c0092c8 <pos_libc_prf+0x466>
1c009194:	04700713          	li	a4,71
1c009198:	55b74063          	blt	a4,s11,1c0096d8 <pos_libc_prf+0x876>
1c00919c:	04500713          	li	a4,69
1c0091a0:	12edd463          	ble	a4,s11,1c0092c8 <pos_libc_prf+0x466>
1c0091a4:	d20d84e3          	beqz	s11,1c008ecc <pos_libc_prf+0x6a>
1c0091a8:	02500713          	li	a4,37
1c0091ac:	7ced9563          	bne	s11,a4,1c009976 <pos_libc_prf+0xb14>
1c0091b0:	85ea                	mv	a1,s10
1c0091b2:	02500513          	li	a0,37
1c0091b6:	9b02                	jalr	s6
1c0091b8:	57fd                	li	a5,-1
1c0091ba:	f4f50ae3          	beq	a0,a5,1c00910e <pos_libc_prf+0x2ac>
1c0091be:	0405                	addi	s0,s0,1
1c0091c0:	b311                	j	1c008ec4 <pos_libc_prf+0x62>
1c0091c2:	0009c783          	lbu	a5,0(s3)
1c0091c6:	02a00713          	li	a4,42
1c0091ca:	00198693          	addi	a3,s3,1
1c0091ce:	0ae79d63          	bne	a5,a4,1c009288 <pos_libc_prf+0x426>
1c0091d2:	000c2a03          	lw	s4,0(s8)
1c0091d6:	0019cd83          	lbu	s11,1(s3)
1c0091da:	0c11                	addi	s8,s8,4
1c0091dc:	0989                	addi	s3,s3,2
1c0091de:	0c800713          	li	a4,200
1c0091e2:	d9475ee3          	ble	s4,a4,1c008f7e <pos_libc_prf+0x11c>
1c0091e6:	5a7d                	li	s4,-1
1c0091e8:	bb59                	j	1c008f7e <pos_libc_prf+0x11c>
1c0091ea:	06e00713          	li	a4,110
1c0091ee:	76ed8e63          	beq	s11,a4,1c00996a <pos_libc_prf+0xb08>
1c0091f2:	5bb75663          	ble	s11,a4,1c00979e <pos_libc_prf+0x93c>
1c0091f6:	4732                	lw	a4,12(sp)
1c0091f8:	004c0513          	addi	a0,s8,4
1c0091fc:	000c2683          	lw	a3,0(s8)
1c009200:	1c070de3          	beqz	a4,1c009bda <pos_libc_prf+0xd78>
1c009204:	03000793          	li	a5,48
1c009208:	02f10223          	sb	a5,36(sp)
1c00920c:	16068de3          	beqz	a3,1c009b86 <pos_libc_prf+0xd24>
1c009210:	02510593          	addi	a1,sp,37
1c009214:	872e                	mv	a4,a1
1c009216:	87ba                	mv	a5,a4
1c009218:	0076f613          	andi	a2,a3,7
1c00921c:	0785                	addi	a5,a5,1
1c00921e:	03060613          	addi	a2,a2,48
1c009222:	828d                	srli	a3,a3,0x3
1c009224:	fec78fa3          	sb	a2,-1(a5)
1c009228:	fae5                	bnez	a3,1c009218 <pos_libc_prf+0x3b6>
1c00922a:	40b789b3          	sub	s3,a5,a1
1c00922e:	0149db63          	ble	s4,s3,1c009244 <pos_libc_prf+0x3e2>
1c009232:	03000693          	li	a3,48
1c009236:	0785                	addi	a5,a5,1
1c009238:	fed78fa3          	sb	a3,-1(a5)
1c00923c:	40b789b3          	sub	s3,a5,a1
1c009240:	ff49cbe3          	blt	s3,s4,1c009236 <pos_libc_prf+0x3d4>
1c009244:	00078023          	sb	zero,0(a5)
1c009248:	17fd                	addi	a5,a5,-1
1c00924a:	00f77e63          	bleu	a5,a4,1c009266 <pos_libc_prf+0x404>
1c00924e:	00074603          	lbu	a2,0(a4)
1c009252:	0007c683          	lbu	a3,0(a5)
1c009256:	00c78023          	sb	a2,0(a5)
1c00925a:	00d70023          	sb	a3,0(a4)
1c00925e:	17fd                	addi	a5,a5,-1
1c009260:	0705                	addi	a4,a4,1
1c009262:	fef766e3          	bltu	a4,a5,1c00924e <pos_libc_prf+0x3ec>
1c009266:	4832                	lw	a6,12(sp)
1c009268:	57fd                	li	a5,-1
1c00926a:	99c2                	add	s3,s3,a6
1c00926c:	22fa0ee3          	beq	s4,a5,1c009ca8 <pos_libc_prf+0xe46>
1c009270:	0c800793          	li	a5,200
1c009274:	e937cde3          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c009278:	02000693          	li	a3,32
1c00927c:	8c2a                	mv	s8,a0
1c00927e:	c602                	sw	zero,12(sp)
1c009280:	c836                	sw	a3,16(sp)
1c009282:	d729cfe3          	blt	s3,s2,1c009000 <pos_libc_prf+0x19e>
1c009286:	b58d                	j	1c0090e8 <pos_libc_prf+0x286>
1c009288:	fd078593          	addi	a1,a5,-48
1c00928c:	4725                	li	a4,9
1c00928e:	8dbe                	mv	s11,a5
1c009290:	4a01                	li	s4,0
1c009292:	4625                	li	a2,9
1c009294:	00b77663          	bleu	a1,a4,1c0092a0 <pos_libc_prf+0x43e>
1c009298:	1070006f          	j	1c009b9e <pos_libc_prf+0xd3c>
1c00929c:	89b6                	mv	s3,a3
1c00929e:	0685                	addi	a3,a3,1
1c0092a0:	002a1793          	slli	a5,s4,0x2
1c0092a4:	97d2                	add	a5,a5,s4
1c0092a6:	0786                	slli	a5,a5,0x1
1c0092a8:	97ee                	add	a5,a5,s11
1c0092aa:	0006cd83          	lbu	s11,0(a3)
1c0092ae:	fd078a13          	addi	s4,a5,-48
1c0092b2:	fd0d8793          	addi	a5,s11,-48
1c0092b6:	fef673e3          	bleu	a5,a2,1c00929c <pos_libc_prf+0x43a>
1c0092ba:	0989                	addi	s3,s3,2
1c0092bc:	b70d                	j	1c0091de <pos_libc_prf+0x37c>
1c0092be:	4785                	li	a5,1
1c0092c0:	41200933          	neg	s2,s2
1c0092c4:	ce3e                	sw	a5,28(sp)
1c0092c6:	bd45                	j	1c009176 <pos_libc_prf+0x314>
1c0092c8:	0c1d                	addi	s8,s8,7
1c0092ca:	ff8c7c13          	andi	s8,s8,-8
1c0092ce:	000c2703          	lw	a4,0(s8)
1c0092d2:	004c2803          	lw	a6,4(s8)
1c0092d6:	01575693          	srli	a3,a4,0x15
1c0092da:	00b81613          	slli	a2,a6,0xb
1c0092de:	8e55                	or	a2,a2,a3
1c0092e0:	01485513          	srli	a0,a6,0x14
1c0092e4:	00b71693          	slli	a3,a4,0xb
1c0092e8:	80000737          	lui	a4,0x80000
1c0092ec:	fff74713          	not	a4,a4
1c0092f0:	7ff57513          	andi	a0,a0,2047
1c0092f4:	7ff00593          	li	a1,2047
1c0092f8:	0c21                	addi	s8,s8,8
1c0092fa:	8e79                	and	a2,a2,a4
1c0092fc:	0ab504e3          	beq	a0,a1,1c009ba4 <pos_libc_prf+0xd42>
1c009300:	04600593          	li	a1,70
1c009304:	00bd9463          	bne	s11,a1,1c00930c <pos_libc_prf+0x4aa>
1c009308:	06600d93          	li	s11,102
1c00930c:	00d56733          	or	a4,a0,a3
1c009310:	8f51                	or	a4,a4,a2
1c009312:	7e070963          	beqz	a4,1c009b04 <pos_libc_prf+0xca2>
1c009316:	800005b7          	lui	a1,0x80000
1c00931a:	c0250513          	addi	a0,a0,-1022
1c00931e:	8dd1                	or	a1,a1,a2
1c009320:	26084ae3          	bltz	a6,1c009d94 <pos_libc_prf+0xf32>
1c009324:	4852                	lw	a6,20(sp)
1c009326:	220808e3          	beqz	a6,1c009d56 <pos_libc_prf+0xef4>
1c00932a:	02b00713          	li	a4,43
1c00932e:	02e10223          	sb	a4,36(sp)
1c009332:	02510e93          	addi	t4,sp,37
1c009336:	5779                	li	a4,-2
1c009338:	4301                	li	t1,0
1c00933a:	06e55763          	ble	a4,a0,1c0093a8 <pos_libc_prf+0x546>
1c00933e:	33333837          	lui	a6,0x33333
1c009342:	800008b7          	lui	a7,0x80000
1c009346:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00934a:	fff8c893          	not	a7,a7
1c00934e:	5e79                	li	t3,-2
1c009350:	a011                	j	1c009354 <pos_libc_prf+0x4f2>
1c009352:	853e                	mv	a0,a5
1c009354:	01f59613          	slli	a2,a1,0x1f
1c009358:	0016d713          	srli	a4,a3,0x1
1c00935c:	0016f793          	andi	a5,a3,1
1c009360:	8f51                	or	a4,a4,a2
1c009362:	00e786b3          	add	a3,a5,a4
1c009366:	00f6b7b3          	sltu	a5,a3,a5
1c00936a:	8185                	srli	a1,a1,0x1
1c00936c:	95be                	add	a1,a1,a5
1c00936e:	00150793          	addi	a5,a0,1
1c009372:	feb860e3          	bltu	a6,a1,1c009352 <pos_libc_prf+0x4f0>
1c009376:	00269613          	slli	a2,a3,0x2
1c00937a:	01e6df13          	srli	t5,a3,0x1e
1c00937e:	00259713          	slli	a4,a1,0x2
1c009382:	96b2                	add	a3,a3,a2
1c009384:	00ef6733          	or	a4,t5,a4
1c009388:	95ba                	add	a1,a1,a4
1c00938a:	00c6b633          	sltu	a2,a3,a2
1c00938e:	95b2                	add	a1,a1,a2
1c009390:	01f6d713          	srli	a4,a3,0x1f
1c009394:	0509                	addi	a0,a0,2
1c009396:	137d                	addi	t1,t1,-1
1c009398:	01159663          	bne	a1,a7,1c0093a4 <pos_libc_prf+0x542>
1c00939c:	0686                	slli	a3,a3,0x1
1c00939e:	ffe76593          	ori	a1,a4,-2
1c0093a2:	853e                	mv	a0,a5
1c0093a4:	fbc548e3          	blt	a0,t3,1c009354 <pos_libc_prf+0x4f2>
1c0093a8:	06a05563          	blez	a0,1c009412 <pos_libc_prf+0x5b0>
1c0093ac:	800008b7          	lui	a7,0x80000
1c0093b0:	4e15                	li	t3,5
1c0093b2:	fff8c893          	not	a7,a7
1c0093b6:	00268613          	addi	a2,a3,2
1c0093ba:	00d636b3          	sltu	a3,a2,a3
1c0093be:	95b6                	add	a1,a1,a3
1c0093c0:	03c5d7b3          	divu	a5,a1,t3
1c0093c4:	00279713          	slli	a4,a5,0x2
1c0093c8:	973e                	add	a4,a4,a5
1c0093ca:	8d99                	sub	a1,a1,a4
1c0093cc:	01d59713          	slli	a4,a1,0x1d
1c0093d0:	00365593          	srli	a1,a2,0x3
1c0093d4:	8dd9                	or	a1,a1,a4
1c0093d6:	03c5d5b3          	divu	a1,a1,t3
1c0093da:	00359693          	slli	a3,a1,0x3
1c0093de:	00559713          	slli	a4,a1,0x5
1c0093e2:	9736                	add	a4,a4,a3
1c0093e4:	40e60733          	sub	a4,a2,a4
1c0093e8:	03c75733          	divu	a4,a4,t3
1c0093ec:	81f5                	srli	a1,a1,0x1d
1c0093ee:	96ba                	add	a3,a3,a4
1c0093f0:	97ae                	add	a5,a5,a1
1c0093f2:	00e6b733          	sltu	a4,a3,a4
1c0093f6:	00f705b3          	add	a1,a4,a5
1c0093fa:	157d                	addi	a0,a0,-1
1c0093fc:	0305                	addi	t1,t1,1
1c0093fe:	01f6d793          	srli	a5,a3,0x1f
1c009402:	0586                	slli	a1,a1,0x1
1c009404:	8ddd                	or	a1,a1,a5
1c009406:	0686                	slli	a3,a3,0x1
1c009408:	157d                	addi	a0,a0,-1
1c00940a:	feb8fae3          	bleu	a1,a7,1c0093fe <pos_libc_prf+0x59c>
1c00940e:	faa044e3          	bgtz	a0,1c0093b6 <pos_libc_prf+0x554>
1c009412:	4611                	li	a2,4
1c009414:	01f59713          	slli	a4,a1,0x1f
1c009418:	0016d793          	srli	a5,a3,0x1
1c00941c:	8fd9                	or	a5,a5,a4
1c00941e:	8a85                	andi	a3,a3,1
1c009420:	00f688b3          	add	a7,a3,a5
1c009424:	8185                	srli	a1,a1,0x1
1c009426:	00d8b6b3          	sltu	a3,a7,a3
1c00942a:	00b68733          	add	a4,a3,a1
1c00942e:	0505                	addi	a0,a0,1
1c009430:	86c6                	mv	a3,a7
1c009432:	85ba                	mv	a1,a4
1c009434:	fec510e3          	bne	a0,a2,1c009414 <pos_libc_prf+0x5b2>
1c009438:	06700693          	li	a3,103
1c00943c:	040a48e3          	bltz	s4,1c009c8c <pos_libc_prf+0xe2a>
1c009440:	70dd8b63          	beq	s11,a3,1c009b56 <pos_libc_prf+0xcf4>
1c009444:	04700693          	li	a3,71
1c009448:	70dd8763          	beq	s11,a3,1c009b56 <pos_libc_prf+0xcf4>
1c00944c:	06600693          	li	a3,102
1c009450:	08dd89e3          	beq	s11,a3,1c009ce2 <pos_libc_prf+0xe80>
1c009454:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c009458:	46c1                	li	a3,16
1c00945a:	01c6d363          	ble	t3,a3,1c009460 <pos_libc_prf+0x5fe>
1c00945e:	4e41                	li	t3,16
1c009460:	1e7d                	addi	t3,t3,-1
1c009462:	4f81                	li	t6,0
1c009464:	4681                	li	a3,0
1c009466:	08000637          	lui	a2,0x8000
1c00946a:	4f15                	li	t5,5
1c00946c:	52fd                	li	t0,-1
1c00946e:	00268593          	addi	a1,a3,2
1c009472:	00d5b7b3          	sltu	a5,a1,a3
1c009476:	97b2                	add	a5,a5,a2
1c009478:	03e7d633          	divu	a2,a5,t5
1c00947c:	00261693          	slli	a3,a2,0x2
1c009480:	96b2                	add	a3,a3,a2
1c009482:	8f95                	sub	a5,a5,a3
1c009484:	07f6                	slli	a5,a5,0x1d
1c009486:	0035d513          	srli	a0,a1,0x3
1c00948a:	8d5d                	or	a0,a0,a5
1c00948c:	03e55533          	divu	a0,a0,t5
1c009490:	00351693          	slli	a3,a0,0x3
1c009494:	00551793          	slli	a5,a0,0x5
1c009498:	97b6                	add	a5,a5,a3
1c00949a:	40f587b3          	sub	a5,a1,a5
1c00949e:	03e7d7b3          	divu	a5,a5,t5
1c0094a2:	8175                	srli	a0,a0,0x1d
1c0094a4:	96be                	add	a3,a3,a5
1c0094a6:	00f6b7b3          	sltu	a5,a3,a5
1c0094aa:	962a                	add	a2,a2,a0
1c0094ac:	963e                	add	a2,a2,a5
1c0094ae:	01f61513          	slli	a0,a2,0x1f
1c0094b2:	0016d793          	srli	a5,a3,0x1
1c0094b6:	0016f593          	andi	a1,a3,1
1c0094ba:	8fc9                	or	a5,a5,a0
1c0094bc:	00f586b3          	add	a3,a1,a5
1c0094c0:	8205                	srli	a2,a2,0x1
1c0094c2:	00b6b7b3          	sltu	a5,a3,a1
1c0094c6:	1e7d                	addi	t3,t3,-1
1c0094c8:	963e                	add	a2,a2,a5
1c0094ca:	fa5e12e3          	bne	t3,t0,1c00946e <pos_libc_prf+0x60c>
1c0094ce:	96c6                	add	a3,a3,a7
1c0094d0:	963a                	add	a2,a2,a4
1c0094d2:	0116b8b3          	sltu	a7,a3,a7
1c0094d6:	9646                	add	a2,a2,a7
1c0094d8:	f00005b7          	lui	a1,0xf0000
1c0094dc:	8df1                	and	a1,a1,a2
1c0094de:	8736                	mv	a4,a3
1c0094e0:	cdb9                	beqz	a1,1c00953e <pos_libc_prf+0x6dc>
1c0094e2:	0689                	addi	a3,a3,2
1c0094e4:	00e6b733          	sltu	a4,a3,a4
1c0094e8:	963a                	add	a2,a2,a4
1c0094ea:	4815                	li	a6,5
1c0094ec:	03065533          	divu	a0,a2,a6
1c0094f0:	00251713          	slli	a4,a0,0x2
1c0094f4:	972a                	add	a4,a4,a0
1c0094f6:	8e19                	sub	a2,a2,a4
1c0094f8:	01d61713          	slli	a4,a2,0x1d
1c0094fc:	0036d593          	srli	a1,a3,0x3
1c009500:	8dd9                	or	a1,a1,a4
1c009502:	0305d5b3          	divu	a1,a1,a6
1c009506:	00359613          	slli	a2,a1,0x3
1c00950a:	00559713          	slli	a4,a1,0x5
1c00950e:	9732                	add	a4,a4,a2
1c009510:	40e68733          	sub	a4,a3,a4
1c009514:	03075733          	divu	a4,a4,a6
1c009518:	81f5                	srli	a1,a1,0x1d
1c00951a:	963a                	add	a2,a2,a4
1c00951c:	00e63733          	sltu	a4,a2,a4
1c009520:	95aa                	add	a1,a1,a0
1c009522:	00b706b3          	add	a3,a4,a1
1c009526:	01f69593          	slli	a1,a3,0x1f
1c00952a:	00165713          	srli	a4,a2,0x1
1c00952e:	8f4d                	or	a4,a4,a1
1c009530:	8a05                	andi	a2,a2,1
1c009532:	9732                	add	a4,a4,a2
1c009534:	8285                	srli	a3,a3,0x1
1c009536:	00c73633          	sltu	a2,a4,a2
1c00953a:	9636                	add	a2,a2,a3
1c00953c:	0305                	addi	t1,t1,1
1c00953e:	001e8993          	addi	s3,t4,1
1c009542:	06600693          	li	a3,102
1c009546:	85ce                	mv	a1,s3
1c009548:	6add8663          	beq	s11,a3,1c009bf4 <pos_libc_prf+0xd92>
1c00954c:	00271693          	slli	a3,a4,0x2
1c009550:	01e75593          	srli	a1,a4,0x1e
1c009554:	00261513          	slli	a0,a2,0x2
1c009558:	9736                	add	a4,a4,a3
1c00955a:	8d4d                	or	a0,a0,a1
1c00955c:	962a                	add	a2,a2,a0
1c00955e:	00d735b3          	sltu	a1,a4,a3
1c009562:	95b2                	add	a1,a1,a2
1c009564:	01f75693          	srli	a3,a4,0x1f
1c009568:	0586                	slli	a1,a1,0x1
1c00956a:	8dd5                	or	a1,a1,a3
1c00956c:	01c5d693          	srli	a3,a1,0x1c
1c009570:	03068613          	addi	a2,a3,48
1c009574:	00d036b3          	snez	a3,a3
1c009578:	10000537          	lui	a0,0x10000
1c00957c:	40d30333          	sub	t1,t1,a3
1c009580:	46b2                	lw	a3,12(sp)
1c009582:	157d                	addi	a0,a0,-1
1c009584:	00ce8023          	sb	a2,0(t4)
1c009588:	0706                	slli	a4,a4,0x1
1c00958a:	8de9                	and	a1,a1,a0
1c00958c:	64068b63          	beqz	a3,1c009be2 <pos_libc_prf+0xd80>
1c009590:	02e00693          	li	a3,46
1c009594:	00de80a3          	sb	a3,1(t4)
1c009598:	002e8513          	addi	a0,t4,2
1c00959c:	020a00e3          	beqz	s4,1c009dbc <pos_libc_prf+0xf5a>
1c0095a0:	014509b3          	add	s3,a0,s4
1c0095a4:	48bd                	li	a7,15
1c0095a6:	03000e13          	li	t3,48
1c0095aa:	00271793          	slli	a5,a4,0x2
1c0095ae:	01e75813          	srli	a6,a4,0x1e
1c0095b2:	00259693          	slli	a3,a1,0x2
1c0095b6:	00e78633          	add	a2,a5,a4
1c0095ba:	00d866b3          	or	a3,a6,a3
1c0095be:	96ae                	add	a3,a3,a1
1c0095c0:	00f637b3          	sltu	a5,a2,a5
1c0095c4:	97b6                	add	a5,a5,a3
1c0095c6:	0786                	slli	a5,a5,0x1
1c0095c8:	01f65693          	srli	a3,a2,0x1f
1c0095cc:	8fd5                	or	a5,a5,a3
1c0095ce:	01c7d693          	srli	a3,a5,0x1c
1c0095d2:	03068693          	addi	a3,a3,48
1c0095d6:	0505                	addi	a0,a0,1
1c0095d8:	3b105663          	blez	a7,1c009984 <pos_libc_prf+0xb22>
1c0095dc:	10000837          	lui	a6,0x10000
1c0095e0:	187d                	addi	a6,a6,-1
1c0095e2:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c0095e6:	18fd                	addi	a7,a7,-1
1c0095e8:	00161713          	slli	a4,a2,0x1
1c0095ec:	0107f5b3          	and	a1,a5,a6
1c0095f0:	faa99de3          	bne	s3,a0,1c0095aa <pos_libc_prf+0x748>
1c0095f4:	0c0f9263          	bnez	t6,1c0096b8 <pos_libc_prf+0x856>
1c0095f8:	fdfdf713          	andi	a4,s11,-33
1c0095fc:	04500693          	li	a3,69
1c009600:	02d71963          	bne	a4,a3,1c009632 <pos_libc_prf+0x7d0>
1c009604:	87ee                	mv	a5,s11
1c009606:	00f98023          	sb	a5,0(s3)
1c00960a:	6a034763          	bltz	t1,1c009cb8 <pos_libc_prf+0xe56>
1c00960e:	02b00793          	li	a5,43
1c009612:	00f980a3          	sb	a5,1(s3)
1c009616:	47a9                	li	a5,10
1c009618:	02f34733          	div	a4,t1,a5
1c00961c:	02f367b3          	rem	a5,t1,a5
1c009620:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c009624:	03078793          	addi	a5,a5,48
1c009628:	00e98123          	sb	a4,2(s3)
1c00962c:	00f981a3          	sb	a5,3(s3)
1c009630:	0991                	addi	s3,s3,4
1c009632:	00098023          	sb	zero,0(s3)
1c009636:	419989b3          	sub	s3,s3,s9
1c00963a:	48d2                	lw	a7,20(sp)
1c00963c:	4662                	lw	a2,24(sp)
1c00963e:	00c8e8b3          	or	a7,a7,a2
1c009642:	c646                	sw	a7,12(sp)
1c009644:	34089d63          	bnez	a7,1c00999e <pos_libc_prf+0xb3c>
1c009648:	02414703          	lbu	a4,36(sp)
1c00964c:	02d00793          	li	a5,45
1c009650:	34f70763          	beq	a4,a5,1c00999e <pos_libc_prf+0xb3c>
1c009654:	0c800793          	li	a5,200
1c009658:	ab37cbe3          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c00965c:	9b29c2e3          	blt	s3,s2,1c009000 <pos_libc_prf+0x19e>
1c009660:	b461                	j	1c0090e8 <pos_libc_prf+0x286>
1c009662:	0585                	addi	a1,a1,1
1c009664:	00271793          	slli	a5,a4,0x2
1c009668:	01e75e13          	srli	t3,a4,0x1e
1c00966c:	00261693          	slli	a3,a2,0x2
1c009670:	00e788b3          	add	a7,a5,a4
1c009674:	00de66b3          	or	a3,t3,a3
1c009678:	96b2                	add	a3,a3,a2
1c00967a:	00f8b7b3          	sltu	a5,a7,a5
1c00967e:	97b6                	add	a5,a5,a3
1c009680:	0786                	slli	a5,a5,0x1
1c009682:	01f8d693          	srli	a3,a7,0x1f
1c009686:	8fd5                	or	a5,a5,a3
1c009688:	01c7de13          	srli	t3,a5,0x1c
1c00968c:	03000693          	li	a3,48
1c009690:	00a05c63          	blez	a0,1c0096a8 <pos_libc_prf+0x846>
1c009694:	00189713          	slli	a4,a7,0x1
1c009698:	100008b7          	lui	a7,0x10000
1c00969c:	18fd                	addi	a7,a7,-1
1c00969e:	030e0693          	addi	a3,t3,48
1c0096a2:	157d                	addi	a0,a0,-1
1c0096a4:	0117f633          	and	a2,a5,a7
1c0096a8:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c0096ac:	fab99be3          	bne	s3,a1,1c009662 <pos_libc_prf+0x800>
1c0096b0:	014809b3          	add	s3,a6,s4
1c0096b4:	f60f8fe3          	beqz	t6,1c009632 <pos_libc_prf+0x7d0>
1c0096b8:	03000613          	li	a2,48
1c0096bc:	a011                	j	1c0096c0 <pos_libc_prf+0x85e>
1c0096be:	89ba                	mv	s3,a4
1c0096c0:	fff9c683          	lbu	a3,-1(s3)
1c0096c4:	fff98713          	addi	a4,s3,-1
1c0096c8:	fec68be3          	beq	a3,a2,1c0096be <pos_libc_prf+0x85c>
1c0096cc:	02e00613          	li	a2,46
1c0096d0:	f2c694e3          	bne	a3,a2,1c0095f8 <pos_libc_prf+0x796>
1c0096d4:	89ba                	mv	s3,a4
1c0096d6:	b70d                	j	1c0095f8 <pos_libc_prf+0x796>
1c0096d8:	06300713          	li	a4,99
1c0096dc:	16ed8863          	beq	s11,a4,1c00984c <pos_libc_prf+0x9ea>
1c0096e0:	0db74363          	blt	a4,s11,1c0097a6 <pos_libc_prf+0x944>
1c0096e4:	05800713          	li	a4,88
1c0096e8:	28ed9763          	bne	s11,a4,1c009976 <pos_libc_prf+0xb14>
1c0096ec:	48b2                	lw	a7,12(sp)
1c0096ee:	004c0813          	addi	a6,s8,4
1c0096f2:	000c2583          	lw	a1,0(s8)
1c0096f6:	3c088a63          	beqz	a7,1c009aca <pos_libc_prf+0xc68>
1c0096fa:	7761                	lui	a4,0xffff8
1c0096fc:	83074713          	xori	a4,a4,-2000
1c009700:	02e11223          	sh	a4,36(sp)
1c009704:	4889                	li	a7,2
1c009706:	02610693          	addi	a3,sp,38
1c00970a:	8736                	mv	a4,a3
1c00970c:	4e25                	li	t3,9
1c00970e:	00f5f613          	andi	a2,a1,15
1c009712:	0ff67793          	andi	a5,a2,255
1c009716:	03078513          	addi	a0,a5,48
1c00971a:	8191                	srli	a1,a1,0x4
1c00971c:	05778793          	addi	a5,a5,87
1c009720:	0705                	addi	a4,a4,1
1c009722:	06ce6a63          	bltu	t3,a2,1c009796 <pos_libc_prf+0x934>
1c009726:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00972a:	f1f5                	bnez	a1,1c00970e <pos_libc_prf+0x8ac>
1c00972c:	40d709b3          	sub	s3,a4,a3
1c009730:	0149db63          	ble	s4,s3,1c009746 <pos_libc_prf+0x8e4>
1c009734:	03000613          	li	a2,48
1c009738:	0705                	addi	a4,a4,1
1c00973a:	fec70fa3          	sb	a2,-1(a4)
1c00973e:	40d709b3          	sub	s3,a4,a3
1c009742:	ff49cbe3          	blt	s3,s4,1c009738 <pos_libc_prf+0x8d6>
1c009746:	00070023          	sb	zero,0(a4)
1c00974a:	177d                	addi	a4,a4,-1
1c00974c:	00e6fe63          	bleu	a4,a3,1c009768 <pos_libc_prf+0x906>
1c009750:	0006c603          	lbu	a2,0(a3)
1c009754:	00074783          	lbu	a5,0(a4)
1c009758:	00c70023          	sb	a2,0(a4)
1c00975c:	00f68023          	sb	a5,0(a3)
1c009760:	177d                	addi	a4,a4,-1
1c009762:	0685                	addi	a3,a3,1
1c009764:	fee6e6e3          	bltu	a3,a4,1c009750 <pos_libc_prf+0x8ee>
1c009768:	05800713          	li	a4,88
1c00976c:	36ed8263          	beq	s11,a4,1c009ad0 <pos_libc_prf+0xc6e>
1c009770:	46b2                	lw	a3,12(sp)
1c009772:	99c6                	add	s3,s3,a7
1c009774:	c299                	beqz	a3,1c00977a <pos_libc_prf+0x918>
1c009776:	4709                	li	a4,2
1c009778:	c63a                	sw	a4,12(sp)
1c00977a:	57fd                	li	a5,-1
1c00977c:	3afa0263          	beq	s4,a5,1c009b20 <pos_libc_prf+0xcbe>
1c009780:	0c800793          	li	a5,200
1c009784:	9937c5e3          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c009788:	02000793          	li	a5,32
1c00978c:	c83e                	sw	a5,16(sp)
1c00978e:	8c42                	mv	s8,a6
1c009790:	8729c8e3          	blt	s3,s2,1c009000 <pos_libc_prf+0x19e>
1c009794:	ba91                	j	1c0090e8 <pos_libc_prf+0x286>
1c009796:	fef70fa3          	sb	a5,-1(a4)
1c00979a:	f9b5                	bnez	a1,1c00970e <pos_libc_prf+0x8ac>
1c00979c:	bf41                	j	1c00972c <pos_libc_prf+0x8ca>
1c00979e:	06900713          	li	a4,105
1c0097a2:	1ced9a63          	bne	s11,a4,1c009976 <pos_libc_prf+0xb14>
1c0097a6:	000c2583          	lw	a1,0(s8)
1c0097aa:	0c11                	addi	s8,s8,4
1c0097ac:	3805c863          	bltz	a1,1c009b3c <pos_libc_prf+0xcda>
1c0097b0:	48d2                	lw	a7,20(sp)
1c0097b2:	872e                	mv	a4,a1
1c0097b4:	36089d63          	bnez	a7,1c009b2e <pos_libc_prf+0xccc>
1c0097b8:	4662                	lw	a2,24(sp)
1c0097ba:	87e6                	mv	a5,s9
1c0097bc:	c619                	beqz	a2,1c0097ca <pos_libc_prf+0x968>
1c0097be:	02000793          	li	a5,32
1c0097c2:	02f10223          	sb	a5,36(sp)
1c0097c6:	02510793          	addi	a5,sp,37
1c0097ca:	89be                	mv	s3,a5
1c0097cc:	4629                	li	a2,10
1c0097ce:	02c776b3          	remu	a3,a4,a2
1c0097d2:	02c75733          	divu	a4,a4,a2
1c0097d6:	0985                	addi	s3,s3,1
1c0097d8:	03068693          	addi	a3,a3,48
1c0097dc:	fed98fa3          	sb	a3,-1(s3)
1c0097e0:	f77d                	bnez	a4,1c0097ce <pos_libc_prf+0x96c>
1c0097e2:	40f98733          	sub	a4,s3,a5
1c0097e6:	01475b63          	ble	s4,a4,1c0097fc <pos_libc_prf+0x99a>
1c0097ea:	03000693          	li	a3,48
1c0097ee:	0985                	addi	s3,s3,1
1c0097f0:	fed98fa3          	sb	a3,-1(s3)
1c0097f4:	40f98733          	sub	a4,s3,a5
1c0097f8:	ff474be3          	blt	a4,s4,1c0097ee <pos_libc_prf+0x98c>
1c0097fc:	00098023          	sb	zero,0(s3)
1c009800:	fff98713          	addi	a4,s3,-1
1c009804:	00e7fe63          	bleu	a4,a5,1c009820 <pos_libc_prf+0x9be>
1c009808:	0007c603          	lbu	a2,0(a5)
1c00980c:	00074683          	lbu	a3,0(a4)
1c009810:	00c70023          	sb	a2,0(a4)
1c009814:	00d78023          	sb	a3,0(a5)
1c009818:	177d                	addi	a4,a4,-1
1c00981a:	0785                	addi	a5,a5,1
1c00981c:	fee7e6e3          	bltu	a5,a4,1c009808 <pos_libc_prf+0x9a6>
1c009820:	46d2                	lw	a3,20(sp)
1c009822:	4762                	lw	a4,24(sp)
1c009824:	419989b3          	sub	s3,s3,s9
1c009828:	8ed9                	or	a3,a3,a4
1c00982a:	c636                	sw	a3,12(sp)
1c00982c:	e299                	bnez	a3,1c009832 <pos_libc_prf+0x9d0>
1c00982e:	81fd                	srli	a1,a1,0x1f
1c009830:	c62e                	sw	a1,12(sp)
1c009832:	57fd                	li	a5,-1
1c009834:	e2fa00e3          	beq	s4,a5,1c009654 <pos_libc_prf+0x7f2>
1c009838:	0c800793          	li	a5,200
1c00983c:	8d37c9e3          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c009840:	02000793          	li	a5,32
1c009844:	c83e                	sw	a5,16(sp)
1c009846:	fb29cd63          	blt	s3,s2,1c009000 <pos_libc_prf+0x19e>
1c00984a:	b879                	j	1c0090e8 <pos_libc_prf+0x286>
1c00984c:	000c2783          	lw	a5,0(s8)
1c009850:	020102a3          	sb	zero,37(sp)
1c009854:	02f10223          	sb	a5,36(sp)
1c009858:	0c11                	addi	s8,s8,4
1c00985a:	4985                	li	s3,1
1c00985c:	f9eff06f          	j	1c008ffa <pos_libc_prf+0x198>
1c009860:	000c2703          	lw	a4,0(s8)
1c009864:	87e6                	mv	a5,s9
1c009866:	0c11                	addi	s8,s8,4
1c009868:	4629                	li	a2,10
1c00986a:	02c776b3          	remu	a3,a4,a2
1c00986e:	02c75733          	divu	a4,a4,a2
1c009872:	0785                	addi	a5,a5,1
1c009874:	03068693          	addi	a3,a3,48
1c009878:	fed78fa3          	sb	a3,-1(a5)
1c00987c:	f77d                	bnez	a4,1c00986a <pos_libc_prf+0xa08>
1c00987e:	419789b3          	sub	s3,a5,s9
1c009882:	0149db63          	ble	s4,s3,1c009898 <pos_libc_prf+0xa36>
1c009886:	03000713          	li	a4,48
1c00988a:	0785                	addi	a5,a5,1
1c00988c:	fee78fa3          	sb	a4,-1(a5)
1c009890:	419789b3          	sub	s3,a5,s9
1c009894:	ff49cbe3          	blt	s3,s4,1c00988a <pos_libc_prf+0xa28>
1c009898:	00078023          	sb	zero,0(a5)
1c00989c:	17fd                	addi	a5,a5,-1
1c00989e:	00fcff63          	bleu	a5,s9,1c0098bc <pos_libc_prf+0xa5a>
1c0098a2:	8766                	mv	a4,s9
1c0098a4:	00074603          	lbu	a2,0(a4)
1c0098a8:	0007c683          	lbu	a3,0(a5)
1c0098ac:	00c78023          	sb	a2,0(a5)
1c0098b0:	00d70023          	sb	a3,0(a4)
1c0098b4:	17fd                	addi	a5,a5,-1
1c0098b6:	0705                	addi	a4,a4,1
1c0098b8:	fef766e3          	bltu	a4,a5,1c0098a4 <pos_libc_prf+0xa42>
1c0098bc:	57fd                	li	a5,-1
1c0098be:	0cfa0a63          	beq	s4,a5,1c009992 <pos_libc_prf+0xb30>
1c0098c2:	0c800793          	li	a5,200
1c0098c6:	8537c4e3          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c0098ca:	02000813          	li	a6,32
1c0098ce:	c602                	sw	zero,12(sp)
1c0098d0:	c842                	sw	a6,16(sp)
1c0098d2:	ba45                	j	1c009282 <pos_libc_prf+0x420>
1c0098d4:	77e1                	lui	a5,0xffff8
1c0098d6:	8307c793          	xori	a5,a5,-2000
1c0098da:	02610713          	addi	a4,sp,38
1c0098de:	000c2603          	lw	a2,0(s8)
1c0098e2:	02f11223          	sh	a5,36(sp)
1c0098e6:	0c11                	addi	s8,s8,4
1c0098e8:	87ba                	mv	a5,a4
1c0098ea:	4825                	li	a6,9
1c0098ec:	00f67593          	andi	a1,a2,15
1c0098f0:	0ff5f693          	andi	a3,a1,255
1c0098f4:	03068513          	addi	a0,a3,48
1c0098f8:	8211                	srli	a2,a2,0x4
1c0098fa:	05768693          	addi	a3,a3,87
1c0098fe:	0785                	addi	a5,a5,1
1c009900:	06b86163          	bltu	a6,a1,1c009962 <pos_libc_prf+0xb00>
1c009904:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c009908:	f275                	bnez	a2,1c0098ec <pos_libc_prf+0xa8a>
1c00990a:	40e789b3          	sub	s3,a5,a4
1c00990e:	469d                	li	a3,7
1c009910:	0136cb63          	blt	a3,s3,1c009926 <pos_libc_prf+0xac4>
1c009914:	03000613          	li	a2,48
1c009918:	0785                	addi	a5,a5,1
1c00991a:	fec78fa3          	sb	a2,-1(a5)
1c00991e:	40e789b3          	sub	s3,a5,a4
1c009922:	ff36dbe3          	ble	s3,a3,1c009918 <pos_libc_prf+0xab6>
1c009926:	00078023          	sb	zero,0(a5)
1c00992a:	17fd                	addi	a5,a5,-1
1c00992c:	00f77e63          	bleu	a5,a4,1c009948 <pos_libc_prf+0xae6>
1c009930:	00074603          	lbu	a2,0(a4)
1c009934:	0007c683          	lbu	a3,0(a5)
1c009938:	00c78023          	sb	a2,0(a5)
1c00993c:	00d70023          	sb	a3,0(a4)
1c009940:	17fd                	addi	a5,a5,-1
1c009942:	0705                	addi	a4,a4,1
1c009944:	fef766e3          	bltu	a4,a5,1c009930 <pos_libc_prf+0xace>
1c009948:	57fd                	li	a5,-1
1c00994a:	0989                	addi	s3,s3,2
1c00994c:	04fa0363          	beq	s4,a5,1c009992 <pos_libc_prf+0xb30>
1c009950:	0c800793          	li	a5,200
1c009954:	fb37cd63          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c009958:	02000893          	li	a7,32
1c00995c:	c602                	sw	zero,12(sp)
1c00995e:	c846                	sw	a7,16(sp)
1c009960:	b20d                	j	1c009282 <pos_libc_prf+0x420>
1c009962:	fed78fa3          	sb	a3,-1(a5)
1c009966:	f259                	bnez	a2,1c0098ec <pos_libc_prf+0xa8a>
1c009968:	b74d                	j	1c00990a <pos_libc_prf+0xaa8>
1c00996a:	000c2783          	lw	a5,0(s8)
1c00996e:	0c11                	addi	s8,s8,4
1c009970:	c380                	sw	s0,0(a5)
1c009972:	d36ff06f          	j	1c008ea8 <pos_libc_prf+0x46>
1c009976:	0c800713          	li	a4,200
1c00997a:	d3b75763          	ble	s11,a4,1c008ea8 <pos_libc_prf+0x46>
1c00997e:	547d                	li	s0,-1
1c009980:	d4cff06f          	j	1c008ecc <pos_libc_prf+0x6a>
1c009984:	ffc50fa3          	sb	t3,-1(a0)
1c009988:	c2a991e3          	bne	s3,a0,1c0095aa <pos_libc_prf+0x748>
1c00998c:	c60f86e3          	beqz	t6,1c0095f8 <pos_libc_prf+0x796>
1c009990:	b325                	j	1c0096b8 <pos_libc_prf+0x856>
1c009992:	0c800793          	li	a5,200
1c009996:	f737cc63          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c00999a:	c602                	sw	zero,12(sp)
1c00999c:	b0dd                	j	1c009282 <pos_libc_prf+0x420>
1c00999e:	0c800793          	li	a5,200
1c0099a2:	f737c663          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c0099a6:	4705                	li	a4,1
1c0099a8:	c63a                	sw	a4,12(sp)
1c0099aa:	b8e1                	j	1c009282 <pos_libc_prf+0x420>
1c0099ac:	41390a33          	sub	s4,s2,s3
1c0099b0:	00198613          	addi	a2,s3,1
1c0099b4:	85e6                	mv	a1,s9
1c0099b6:	014c8533          	add	a0,s9,s4
1c0099ba:	a72ff0ef          	jal	ra,1c008c2c <memmove>
1c0099be:	46c2                	lw	a3,16(sp)
1c0099c0:	02000793          	li	a5,32
1c0099c4:	30f68163          	beq	a3,a5,1c009cc6 <pos_libc_prf+0xe64>
1c0099c8:	4732                	lw	a4,12(sp)
1c0099ca:	89ca                	mv	s3,s2
1c0099cc:	9a3a                	add	s4,s4,a4
1c0099ce:	f1475d63          	ble	s4,a4,1c0090e8 <pos_libc_prf+0x286>
1c0099d2:	4832                	lw	a6,12(sp)
1c0099d4:	4715                	li	a4,5
1c0099d6:	010c87b3          	add	a5,s9,a6
1c0099da:	40f007b3          	neg	a5,a5
1c0099de:	8b8d                	andi	a5,a5,3
1c0099e0:	00378693          	addi	a3,a5,3
1c0099e4:	410a05b3          	sub	a1,s4,a6
1c0099e8:	00e6f363          	bleu	a4,a3,1c0099ee <pos_libc_prf+0xb8c>
1c0099ec:	4695                	li	a3,5
1c0099ee:	48b2                	lw	a7,12(sp)
1c0099f0:	fffa0713          	addi	a4,s4,-1
1c0099f4:	41170733          	sub	a4,a4,a7
1c0099f8:	06d76b63          	bltu	a4,a3,1c009a6e <pos_libc_prf+0xc0c>
1c0099fc:	86c6                	mv	a3,a7
1c0099fe:	cb9d                	beqz	a5,1c009a34 <pos_libc_prf+0xbd2>
1c009a00:	46c2                	lw	a3,16(sp)
1c009a02:	1988                	addi	a0,sp,240
1c009a04:	01150733          	add	a4,a0,a7
1c009a08:	f2d70a23          	sb	a3,-204(a4)
1c009a0c:	4705                	li	a4,1
1c009a0e:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c009a12:	02e78163          	beq	a5,a4,1c009a34 <pos_libc_prf+0xbd2>
1c009a16:	4742                	lw	a4,16(sp)
1c009a18:	96aa                	add	a3,a3,a0
1c009a1a:	f2e68a23          	sb	a4,-204(a3)
1c009a1e:	470d                	li	a4,3
1c009a20:	00288693          	addi	a3,a7,2
1c009a24:	00e79863          	bne	a5,a4,1c009a34 <pos_libc_prf+0xbd2>
1c009a28:	4842                	lw	a6,16(sp)
1c009a2a:	96aa                	add	a3,a3,a0
1c009a2c:	f3068a23          	sb	a6,-204(a3)
1c009a30:	00388693          	addi	a3,a7,3
1c009a34:	48c2                	lw	a7,16(sp)
1c009a36:	4832                	lw	a6,12(sp)
1c009a38:	00889713          	slli	a4,a7,0x8
1c009a3c:	01089513          	slli	a0,a7,0x10
1c009a40:	00e8e733          	or	a4,a7,a4
1c009a44:	8d9d                	sub	a1,a1,a5
1c009a46:	01889613          	slli	a2,a7,0x18
1c009a4a:	8f49                	or	a4,a4,a0
1c009a4c:	97c2                	add	a5,a5,a6
1c009a4e:	8f51                	or	a4,a4,a2
1c009a50:	0025d513          	srli	a0,a1,0x2
1c009a54:	97e6                	add	a5,a5,s9
1c009a56:	4601                	li	a2,0
1c009a58:	c398                	sw	a4,0(a5)
1c009a5a:	0605                	addi	a2,a2,1
1c009a5c:	0791                	addi	a5,a5,4
1c009a5e:	fea66de3          	bltu	a2,a0,1c009a58 <pos_libc_prf+0xbf6>
1c009a62:	ffc5f793          	andi	a5,a1,-4
1c009a66:	96be                	add	a3,a3,a5
1c009a68:	c636                	sw	a3,12(sp)
1c009a6a:	e6b78e63          	beq	a5,a1,1c0090e6 <pos_libc_prf+0x284>
1c009a6e:	46b2                	lw	a3,12(sp)
1c009a70:	0f010893          	addi	a7,sp,240
1c009a74:	4742                	lw	a4,16(sp)
1c009a76:	00d887b3          	add	a5,a7,a3
1c009a7a:	f2e78a23          	sb	a4,-204(a5)
1c009a7e:	00168793          	addi	a5,a3,1
1c009a82:	e747d263          	ble	s4,a5,1c0090e6 <pos_libc_prf+0x284>
1c009a86:	97c6                	add	a5,a5,a7
1c009a88:	f2e78a23          	sb	a4,-204(a5)
1c009a8c:	00268793          	addi	a5,a3,2
1c009a90:	e547db63          	ble	s4,a5,1c0090e6 <pos_libc_prf+0x284>
1c009a94:	97c6                	add	a5,a5,a7
1c009a96:	f2e78a23          	sb	a4,-204(a5)
1c009a9a:	00368793          	addi	a5,a3,3
1c009a9e:	e547d463          	ble	s4,a5,1c0090e6 <pos_libc_prf+0x284>
1c009aa2:	97c6                	add	a5,a5,a7
1c009aa4:	f2e78a23          	sb	a4,-204(a5)
1c009aa8:	00468793          	addi	a5,a3,4
1c009aac:	e347dd63          	ble	s4,a5,1c0090e6 <pos_libc_prf+0x284>
1c009ab0:	97c6                	add	a5,a5,a7
1c009ab2:	f2e78a23          	sb	a4,-204(a5)
1c009ab6:	00568a93          	addi	s5,a3,5
1c009aba:	e34ad663          	ble	s4,s5,1c0090e6 <pos_libc_prf+0x284>
1c009abe:	9ac6                	add	s5,s5,a7
1c009ac0:	f2ea8a23          	sb	a4,-204(s5)
1c009ac4:	89ca                	mv	s3,s2
1c009ac6:	e22ff06f          	j	1c0090e8 <pos_libc_prf+0x286>
1c009aca:	4881                	li	a7,0
1c009acc:	1054                	addi	a3,sp,36
1c009ace:	b935                	j	1c00970a <pos_libc_prf+0x8a8>
1c009ad0:	02414783          	lbu	a5,36(sp)
1c009ad4:	1058                	addi	a4,sp,36
1c009ad6:	46e5                	li	a3,25
1c009ad8:	c8078ce3          	beqz	a5,1c009770 <pos_libc_prf+0x90e>
1c009adc:	fe078613          	addi	a2,a5,-32
1c009ae0:	f9f78793          	addi	a5,a5,-97
1c009ae4:	0ff7f793          	andi	a5,a5,255
1c009ae8:	00f6e963          	bltu	a3,a5,1c009afa <pos_libc_prf+0xc98>
1c009aec:	00c70023          	sb	a2,0(a4)
1c009af0:	0705                	addi	a4,a4,1
1c009af2:	00074783          	lbu	a5,0(a4)
1c009af6:	f3fd                	bnez	a5,1c009adc <pos_libc_prf+0xc7a>
1c009af8:	b9a5                	j	1c009770 <pos_libc_prf+0x90e>
1c009afa:	0705                	addi	a4,a4,1
1c009afc:	00074783          	lbu	a5,0(a4)
1c009b00:	fff1                	bnez	a5,1c009adc <pos_libc_prf+0xc7a>
1c009b02:	b1bd                	j	1c009770 <pos_libc_prf+0x90e>
1c009b04:	47d2                	lw	a5,20(sp)
1c009b06:	20078263          	beqz	a5,1c009d0a <pos_libc_prf+0xea8>
1c009b0a:	02b00713          	li	a4,43
1c009b0e:	02e10223          	sb	a4,36(sp)
1c009b12:	02510e93          	addi	t4,sp,37
1c009b16:	4301                	li	t1,0
1c009b18:	4501                	li	a0,0
1c009b1a:	4681                	li	a3,0
1c009b1c:	4581                	li	a1,0
1c009b1e:	b8d5                	j	1c009412 <pos_libc_prf+0x5b0>
1c009b20:	0c800793          	li	a5,200
1c009b24:	df37c563          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c009b28:	8c42                	mv	s8,a6
1c009b2a:	f58ff06f          	j	1c009282 <pos_libc_prf+0x420>
1c009b2e:	02b00793          	li	a5,43
1c009b32:	02f10223          	sb	a5,36(sp)
1c009b36:	02510793          	addi	a5,sp,37
1c009b3a:	b941                	j	1c0097ca <pos_libc_prf+0x968>
1c009b3c:	02d00793          	li	a5,45
1c009b40:	02f10223          	sb	a5,36(sp)
1c009b44:	800007b7          	lui	a5,0x80000
1c009b48:	22f58363          	beq	a1,a5,1c009d6e <pos_libc_prf+0xf0c>
1c009b4c:	40b00733          	neg	a4,a1
1c009b50:	02510793          	addi	a5,sp,37
1c009b54:	b99d                	j	1c0097ca <pos_libc_prf+0x968>
1c009b56:	47b2                	lw	a5,12(sp)
1c009b58:	4f81                	li	t6,0
1c009b5a:	e399                	bnez	a5,1c009b60 <pos_libc_prf+0xcfe>
1c009b5c:	01403fb3          	snez	t6,s4
1c009b60:	56f5                	li	a3,-3
1c009b62:	001a0e13          	addi	t3,s4,1
1c009b66:	00d34463          	blt	t1,a3,1c009b6e <pos_libc_prf+0xd0c>
1c009b6a:	166e5d63          	ble	t1,t3,1c009ce4 <pos_libc_prf+0xe82>
1c009b6e:	46c1                	li	a3,16
1c009b70:	01c6d363          	ble	t3,a3,1c009b76 <pos_libc_prf+0xd14>
1c009b74:	4e41                	li	t3,16
1c009b76:	06700693          	li	a3,103
1c009b7a:	1e7d                	addi	t3,t3,-1
1c009b7c:	1add8963          	beq	s11,a3,1c009d2e <pos_libc_prf+0xecc>
1c009b80:	04500d93          	li	s11,69
1c009b84:	b0c5                	j	1c009464 <pos_libc_prf+0x602>
1c009b86:	020102a3          	sb	zero,37(sp)
1c009b8a:	57fd                	li	a5,-1
1c009b8c:	89ba                	mv	s3,a4
1c009b8e:	8c2a                	mv	s8,a0
1c009b90:	c6fa0563          	beq	s4,a5,1c008ffa <pos_libc_prf+0x198>
1c009b94:	02000813          	li	a6,32
1c009b98:	c842                	sw	a6,16(sp)
1c009b9a:	c60ff06f          	j	1c008ffa <pos_libc_prf+0x198>
1c009b9e:	89b6                	mv	s3,a3
1c009ba0:	bdeff06f          	j	1c008f7e <pos_libc_prf+0x11c>
1c009ba4:	8766                	mv	a4,s9
1c009ba6:	1c084c63          	bltz	a6,1c009d7e <pos_libc_prf+0xf1c>
1c009baa:	8e55                	or	a2,a2,a3
1c009bac:	fbfd8793          	addi	a5,s11,-65
1c009bb0:	00370993          	addi	s3,a4,3
1c009bb4:	46e5                	li	a3,25
1c009bb6:	10061a63          	bnez	a2,1c009cca <pos_libc_prf+0xe68>
1c009bba:	16f6ee63          	bltu	a3,a5,1c009d36 <pos_libc_prf+0xed4>
1c009bbe:	6795                	lui	a5,0x5
1c009bc0:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c009bc4:	00f71023          	sh	a5,0(a4)
1c009bc8:	04600793          	li	a5,70
1c009bcc:	00f70123          	sb	a5,2(a4)
1c009bd0:	000701a3          	sb	zero,3(a4)
1c009bd4:	419989b3          	sub	s3,s3,s9
1c009bd8:	b48d                	j	1c00963a <pos_libc_prf+0x7d8>
1c009bda:	85e6                	mv	a1,s9
1c009bdc:	8766                	mv	a4,s9
1c009bde:	e38ff06f          	j	1c009216 <pos_libc_prf+0x3b4>
1c009be2:	a00a09e3          	beqz	s4,1c0095f4 <pos_libc_prf+0x792>
1c009be6:	02e00693          	li	a3,46
1c009bea:	002e8513          	addi	a0,t4,2
1c009bee:	00de80a3          	sb	a3,1(t4)
1c009bf2:	b27d                	j	1c0095a0 <pos_libc_prf+0x73e>
1c009bf4:	14605b63          	blez	t1,1c009d4a <pos_libc_prf+0xee8>
1c009bf8:	006e89b3          	add	s3,t4,t1
1c009bfc:	4541                	li	a0,16
1c009bfe:	03000893          	li	a7,48
1c009c02:	00271793          	slli	a5,a4,0x2
1c009c06:	01e75313          	srli	t1,a4,0x1e
1c009c0a:	00261693          	slli	a3,a2,0x2
1c009c0e:	00e78833          	add	a6,a5,a4
1c009c12:	00d366b3          	or	a3,t1,a3
1c009c16:	96b2                	add	a3,a3,a2
1c009c18:	00f837b3          	sltu	a5,a6,a5
1c009c1c:	97b6                	add	a5,a5,a3
1c009c1e:	0786                	slli	a5,a5,0x1
1c009c20:	01f85693          	srli	a3,a6,0x1f
1c009c24:	8fd5                	or	a5,a5,a3
1c009c26:	01c7d693          	srli	a3,a5,0x1c
1c009c2a:	03068693          	addi	a3,a3,48
1c009c2e:	02a05063          	blez	a0,1c009c4e <pos_libc_prf+0xdec>
1c009c32:	00181713          	slli	a4,a6,0x1
1c009c36:	10000837          	lui	a6,0x10000
1c009c3a:	187d                	addi	a6,a6,-1
1c009c3c:	fed58fa3          	sb	a3,-1(a1)
1c009c40:	157d                	addi	a0,a0,-1
1c009c42:	0107f633          	and	a2,a5,a6
1c009c46:	00b98863          	beq	s3,a1,1c009c56 <pos_libc_prf+0xdf4>
1c009c4a:	0585                	addi	a1,a1,1
1c009c4c:	bf5d                	j	1c009c02 <pos_libc_prf+0xda0>
1c009c4e:	ff158fa3          	sb	a7,-1(a1)
1c009c52:	feb99ce3          	bne	s3,a1,1c009c4a <pos_libc_prf+0xde8>
1c009c56:	4301                	li	t1,0
1c009c58:	48b2                	lw	a7,12(sp)
1c009c5a:	00089463          	bnez	a7,1c009c62 <pos_libc_prf+0xe00>
1c009c5e:	a40a0be3          	beqz	s4,1c0096b4 <pos_libc_prf+0x852>
1c009c62:	00198813          	addi	a6,s3,1
1c009c66:	001a0693          	addi	a3,s4,1
1c009c6a:	02e00593          	li	a1,46
1c009c6e:	00b98023          	sb	a1,0(s3)
1c009c72:	99b6                	add	s3,s3,a3
1c009c74:	85c2                	mv	a1,a6
1c009c76:	03000693          	li	a3,48
1c009c7a:	a2b98be3          	beq	s3,a1,1c0096b0 <pos_libc_prf+0x84e>
1c009c7e:	0585                	addi	a1,a1,1
1c009c80:	9e0302e3          	beqz	t1,1c009664 <pos_libc_prf+0x802>
1c009c84:	fed58fa3          	sb	a3,-1(a1)
1c009c88:	0305                	addi	t1,t1,1
1c009c8a:	bfc5                	j	1c009c7a <pos_libc_prf+0xe18>
1c009c8c:	4a19                	li	s4,6
1c009c8e:	fadd9b63          	bne	s11,a3,1c009444 <pos_libc_prf+0x5e2>
1c009c92:	46b2                	lw	a3,12(sp)
1c009c94:	57f5                	li	a5,-3
1c009c96:	0016cf93          	xori	t6,a3,1
1c009c9a:	08f35663          	ble	a5,t1,1c009d26 <pos_libc_prf+0xec4>
1c009c9e:	06500d93          	li	s11,101
1c009ca2:	4e19                	li	t3,6
1c009ca4:	fc0ff06f          	j	1c009464 <pos_libc_prf+0x602>
1c009ca8:	0c800793          	li	a5,200
1c009cac:	c737c163          	blt	a5,s3,1c00910e <pos_libc_prf+0x2ac>
1c009cb0:	8c2a                	mv	s8,a0
1c009cb2:	c602                	sw	zero,12(sp)
1c009cb4:	dceff06f          	j	1c009282 <pos_libc_prf+0x420>
1c009cb8:	02d00793          	li	a5,45
1c009cbc:	40600333          	neg	t1,t1
1c009cc0:	00f980a3          	sb	a5,1(s3)
1c009cc4:	ba89                	j	1c009616 <pos_libc_prf+0x7b4>
1c009cc6:	c602                	sw	zero,12(sp)
1c009cc8:	b329                	j	1c0099d2 <pos_libc_prf+0xb70>
1c009cca:	0cf6ed63          	bltu	a3,a5,1c009da4 <pos_libc_prf+0xf42>
1c009cce:	6791                	lui	a5,0x4
1c009cd0:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c009cd4:	00f71023          	sh	a5,0(a4)
1c009cd8:	04e00793          	li	a5,78
1c009cdc:	00f70123          	sb	a5,2(a4)
1c009ce0:	bdc5                	j	1c009bd0 <pos_libc_prf+0xd6e>
1c009ce2:	4f81                	li	t6,0
1c009ce4:	014307b3          	add	a5,t1,s4
1c009ce8:	0807c863          	bltz	a5,1c009d78 <pos_libc_prf+0xf16>
1c009cec:	46c1                	li	a3,16
1c009cee:	8e3e                	mv	t3,a5
1c009cf0:	00f6d363          	ble	a5,a3,1c009cf6 <pos_libc_prf+0xe94>
1c009cf4:	4e41                	li	t3,16
1c009cf6:	1e7d                	addi	t3,t3,-1
1c009cf8:	06600d93          	li	s11,102
1c009cfc:	f6079463          	bnez	a5,1c009464 <pos_libc_prf+0x602>
1c009d00:	4681                	li	a3,0
1c009d02:	08000637          	lui	a2,0x8000
1c009d06:	fc8ff06f          	j	1c0094ce <pos_libc_prf+0x66c>
1c009d0a:	47e2                	lw	a5,24(sp)
1c009d0c:	c7d5                	beqz	a5,1c009db8 <pos_libc_prf+0xf56>
1c009d0e:	02000713          	li	a4,32
1c009d12:	02e10223          	sb	a4,36(sp)
1c009d16:	02510e93          	addi	t4,sp,37
1c009d1a:	4301                	li	t1,0
1c009d1c:	4501                	li	a0,0
1c009d1e:	4681                	li	a3,0
1c009d20:	4581                	li	a1,0
1c009d22:	ef0ff06f          	j	1c009412 <pos_libc_prf+0x5b0>
1c009d26:	479d                	li	a5,7
1c009d28:	fa67dee3          	ble	t1,a5,1c009ce4 <pos_libc_prf+0xe82>
1c009d2c:	4e19                	li	t3,6
1c009d2e:	06500d93          	li	s11,101
1c009d32:	f32ff06f          	j	1c009464 <pos_libc_prf+0x602>
1c009d36:	679d                	lui	a5,0x7
1c009d38:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c009d3c:	00f71023          	sh	a5,0(a4)
1c009d40:	06600793          	li	a5,102
1c009d44:	00f70123          	sb	a5,2(a4)
1c009d48:	b561                	j	1c009bd0 <pos_libc_prf+0xd6e>
1c009d4a:	03000693          	li	a3,48
1c009d4e:	00de8023          	sb	a3,0(t4)
1c009d52:	4541                	li	a0,16
1c009d54:	b711                	j	1c009c58 <pos_libc_prf+0xdf6>
1c009d56:	48e2                	lw	a7,24(sp)
1c009d58:	8ee6                	mv	t4,s9
1c009d5a:	dc088e63          	beqz	a7,1c009336 <pos_libc_prf+0x4d4>
1c009d5e:	02000713          	li	a4,32
1c009d62:	02e10223          	sb	a4,36(sp)
1c009d66:	02510e93          	addi	t4,sp,37
1c009d6a:	dccff06f          	j	1c009336 <pos_libc_prf+0x4d4>
1c009d6e:	80000737          	lui	a4,0x80000
1c009d72:	02510793          	addi	a5,sp,37
1c009d76:	bc91                	j	1c0097ca <pos_libc_prf+0x968>
1c009d78:	06600d93          	li	s11,102
1c009d7c:	b751                	j	1c009d00 <pos_libc_prf+0xe9e>
1c009d7e:	02d00713          	li	a4,45
1c009d82:	02e10223          	sb	a4,36(sp)
1c009d86:	02510713          	addi	a4,sp,37
1c009d8a:	b505                	j	1c009baa <pos_libc_prf+0xd48>
1c009d8c:	a40a5d63          	bgez	s4,1c008fe6 <pos_libc_prf+0x184>
1c009d90:	a62ff06f          	j	1c008ff2 <pos_libc_prf+0x190>
1c009d94:	02d00713          	li	a4,45
1c009d98:	02e10223          	sb	a4,36(sp)
1c009d9c:	02510e93          	addi	t4,sp,37
1c009da0:	d96ff06f          	j	1c009336 <pos_libc_prf+0x4d4>
1c009da4:	6799                	lui	a5,0x6
1c009da6:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c009daa:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c009dae:	06e00793          	li	a5,110
1c009db2:	00f70123          	sb	a5,2(a4)
1c009db6:	bd29                	j	1c009bd0 <pos_libc_prf+0xd6e>
1c009db8:	8ee6                	mv	t4,s9
1c009dba:	b785                	j	1c009d1a <pos_libc_prf+0xeb8>
1c009dbc:	89aa                	mv	s3,a0
1c009dbe:	820f8de3          	beqz	t6,1c0095f8 <pos_libc_prf+0x796>
1c009dc2:	b8dd                	j	1c0096b8 <pos_libc_prf+0x856>

1c009dc4 <pos_init_start>:
1c009dc4:	1141                	addi	sp,sp,-16
1c009dc6:	c422                	sw	s0,8(sp)
1c009dc8:	1c000437          	lui	s0,0x1c000
1c009dcc:	c606                	sw	ra,12(sp)
1c009dce:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009dd2:	cf8fe0ef          	jal	ra,1c0082ca <pos_soc_init>
1c009dd6:	2275                	jal	1c009f82 <pos_irq_init>
1c009dd8:	2ae1                	jal	1c009fb0 <pos_soc_event_init>
1c009dda:	2a31                	jal	1c009ef6 <pos_allocs_init>
1c009ddc:	405c                	lw	a5,4(s0)
1c009dde:	c791                	beqz	a5,1c009dea <pos_init_start+0x26>
1c009de0:	0411                	addi	s0,s0,4
1c009de2:	0411                	addi	s0,s0,4
1c009de4:	9782                	jalr	a5
1c009de6:	401c                	lw	a5,0(s0)
1c009de8:	ffed                	bnez	a5,1c009de2 <pos_init_start+0x1e>
1c009dea:	842ff0ef          	jal	ra,1c008e2c <pos_io_start>
1c009dee:	300467f3          	csrrsi	a5,mstatus,8
1c009df2:	40b2                	lw	ra,12(sp)
1c009df4:	4422                	lw	s0,8(sp)
1c009df6:	0141                	addi	sp,sp,16
1c009df8:	8082                	ret

1c009dfa <pos_init_stop>:
1c009dfa:	1141                	addi	sp,sp,-16
1c009dfc:	c422                	sw	s0,8(sp)
1c009dfe:	1c000437          	lui	s0,0x1c000
1c009e02:	c606                	sw	ra,12(sp)
1c009e04:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009e08:	828ff0ef          	jal	ra,1c008e30 <pos_io_stop>
1c009e0c:	405c                	lw	a5,4(s0)
1c009e0e:	c791                	beqz	a5,1c009e1a <pos_init_stop+0x20>
1c009e10:	0411                	addi	s0,s0,4
1c009e12:	0411                	addi	s0,s0,4
1c009e14:	9782                	jalr	a5
1c009e16:	401c                	lw	a5,0(s0)
1c009e18:	ffed                	bnez	a5,1c009e12 <pos_init_stop+0x18>
1c009e1a:	40b2                	lw	ra,12(sp)
1c009e1c:	4422                	lw	s0,8(sp)
1c009e1e:	0141                	addi	sp,sp,16
1c009e20:	8082                	ret

1c009e22 <pos_alloc_init>:
1c009e22:	00758793          	addi	a5,a1,7
1c009e26:	9be1                	andi	a5,a5,-8
1c009e28:	40b785b3          	sub	a1,a5,a1
1c009e2c:	c11c                	sw	a5,0(a0)
1c009e2e:	8e0d                	sub	a2,a2,a1
1c009e30:	00c05663          	blez	a2,1c009e3c <pos_alloc_init+0x1a>
1c009e34:	9a61                	andi	a2,a2,-8
1c009e36:	c390                	sw	a2,0(a5)
1c009e38:	0007a223          	sw	zero,4(a5)
1c009e3c:	8082                	ret

1c009e3e <pos_alloc>:
1c009e3e:	4110                	lw	a2,0(a0)
1c009e40:	059d                	addi	a1,a1,7
1c009e42:	99e1                	andi	a1,a1,-8
1c009e44:	ca31                	beqz	a2,1c009e98 <pos_alloc+0x5a>
1c009e46:	4218                	lw	a4,0(a2)
1c009e48:	425c                	lw	a5,4(a2)
1c009e4a:	02b75963          	ble	a1,a4,1c009e7c <pos_alloc+0x3e>
1c009e4e:	cb81                	beqz	a5,1c009e5e <pos_alloc+0x20>
1c009e50:	4398                	lw	a4,0(a5)
1c009e52:	43d4                	lw	a3,4(a5)
1c009e54:	00b75763          	ble	a1,a4,1c009e62 <pos_alloc+0x24>
1c009e58:	863e                	mv	a2,a5
1c009e5a:	87b6                	mv	a5,a3
1c009e5c:	fbf5                	bnez	a5,1c009e50 <pos_alloc+0x12>
1c009e5e:	853e                	mv	a0,a5
1c009e60:	8082                	ret
1c009e62:	00b70a63          	beq	a4,a1,1c009e76 <pos_alloc+0x38>
1c009e66:	00b78533          	add	a0,a5,a1
1c009e6a:	8f0d                	sub	a4,a4,a1
1c009e6c:	c118                	sw	a4,0(a0)
1c009e6e:	c154                	sw	a3,4(a0)
1c009e70:	c248                	sw	a0,4(a2)
1c009e72:	853e                	mv	a0,a5
1c009e74:	8082                	ret
1c009e76:	c254                	sw	a3,4(a2)
1c009e78:	853e                	mv	a0,a5
1c009e7a:	8082                	ret
1c009e7c:	00e58b63          	beq	a1,a4,1c009e92 <pos_alloc+0x54>
1c009e80:	00b606b3          	add	a3,a2,a1
1c009e84:	8f0d                	sub	a4,a4,a1
1c009e86:	c2dc                	sw	a5,4(a3)
1c009e88:	c298                	sw	a4,0(a3)
1c009e8a:	87b2                	mv	a5,a2
1c009e8c:	c114                	sw	a3,0(a0)
1c009e8e:	853e                	mv	a0,a5
1c009e90:	8082                	ret
1c009e92:	c11c                	sw	a5,0(a0)
1c009e94:	87b2                	mv	a5,a2
1c009e96:	b7e1                	j	1c009e5e <pos_alloc+0x20>
1c009e98:	4781                	li	a5,0
1c009e9a:	b7d1                	j	1c009e5e <pos_alloc+0x20>

1c009e9c <pos_free>:
1c009e9c:	4118                	lw	a4,0(a0)
1c009e9e:	061d                	addi	a2,a2,7
1c009ea0:	9a61                	andi	a2,a2,-8
1c009ea2:	c729                	beqz	a4,1c009eec <pos_free+0x50>
1c009ea4:	00b76663          	bltu	a4,a1,1c009eb0 <pos_free+0x14>
1c009ea8:	a0a1                	j	1c009ef0 <pos_free+0x54>
1c009eaa:	00b7f563          	bleu	a1,a5,1c009eb4 <pos_free+0x18>
1c009eae:	873e                	mv	a4,a5
1c009eb0:	435c                	lw	a5,4(a4)
1c009eb2:	ffe5                	bnez	a5,1c009eaa <pos_free+0xe>
1c009eb4:	00c586b3          	add	a3,a1,a2
1c009eb8:	02d78463          	beq	a5,a3,1c009ee0 <pos_free+0x44>
1c009ebc:	c190                	sw	a2,0(a1)
1c009ebe:	c1dc                	sw	a5,4(a1)
1c009ec0:	cf11                	beqz	a4,1c009edc <pos_free+0x40>
1c009ec2:	431c                	lw	a5,0(a4)
1c009ec4:	00f706b3          	add	a3,a4,a5
1c009ec8:	00d58463          	beq	a1,a3,1c009ed0 <pos_free+0x34>
1c009ecc:	c34c                	sw	a1,4(a4)
1c009ece:	8082                	ret
1c009ed0:	4194                	lw	a3,0(a1)
1c009ed2:	41d0                	lw	a2,4(a1)
1c009ed4:	97b6                	add	a5,a5,a3
1c009ed6:	c31c                	sw	a5,0(a4)
1c009ed8:	c350                	sw	a2,4(a4)
1c009eda:	8082                	ret
1c009edc:	c10c                	sw	a1,0(a0)
1c009ede:	8082                	ret
1c009ee0:	4394                	lw	a3,0(a5)
1c009ee2:	43dc                	lw	a5,4(a5)
1c009ee4:	9636                	add	a2,a2,a3
1c009ee6:	c190                	sw	a2,0(a1)
1c009ee8:	c1dc                	sw	a5,4(a1)
1c009eea:	bfd9                	j	1c009ec0 <pos_free+0x24>
1c009eec:	4781                	li	a5,0
1c009eee:	b7d9                	j	1c009eb4 <pos_free+0x18>
1c009ef0:	87ba                	mv	a5,a4
1c009ef2:	4701                	li	a4,0
1c009ef4:	b7c1                	j	1c009eb4 <pos_free+0x18>

1c009ef6 <pos_allocs_init>:
1c009ef6:	1141                	addi	sp,sp,-16
1c009ef8:	1c0065b7          	lui	a1,0x1c006
1c009efc:	c606                	sw	ra,12(sp)
1c009efe:	27458793          	addi	a5,a1,628 # 1c006274 <__l2_priv0_end>
1c009f02:	1c008637          	lui	a2,0x1c008
1c009f06:	04c7cc63          	blt	a5,a2,1c009f5e <pos_allocs_init+0x68>
1c009f0a:	4581                	li	a1,0
1c009f0c:	4601                	li	a2,0
1c009f0e:	1c006537          	lui	a0,0x1c006
1c009f12:	26850513          	addi	a0,a0,616 # 1c006268 <pos_alloc_l2>
1c009f16:	3731                	jal	1c009e22 <pos_alloc_init>
1c009f18:	1c00a5b7          	lui	a1,0x1c00a
1c009f1c:	fc858793          	addi	a5,a1,-56 # 1c009fc8 <__l2_priv1_end>
1c009f20:	1c010637          	lui	a2,0x1c010
1c009f24:	02c7c963          	blt	a5,a2,1c009f56 <pos_allocs_init+0x60>
1c009f28:	4581                	li	a1,0
1c009f2a:	4601                	li	a2,0
1c009f2c:	1c006537          	lui	a0,0x1c006
1c009f30:	26c50513          	addi	a0,a0,620 # 1c00626c <pos_alloc_l2+0x4>
1c009f34:	35fd                	jal	1c009e22 <pos_alloc_init>
1c009f36:	1c0105b7          	lui	a1,0x1c010
1c009f3a:	00058793          	mv	a5,a1
1c009f3e:	40b2                	lw	ra,12(sp)
1c009f40:	1c080637          	lui	a2,0x1c080
1c009f44:	1c006537          	lui	a0,0x1c006
1c009f48:	8e1d                	sub	a2,a2,a5
1c009f4a:	00058593          	mv	a1,a1
1c009f4e:	27050513          	addi	a0,a0,624 # 1c006270 <pos_alloc_l2+0x8>
1c009f52:	0141                	addi	sp,sp,16
1c009f54:	b5f9                	j	1c009e22 <pos_alloc_init>
1c009f56:	8e1d                	sub	a2,a2,a5
1c009f58:	fc858593          	addi	a1,a1,-56 # 1c00ffc8 <__l2_priv1_end+0x6000>
1c009f5c:	bfc1                	j	1c009f2c <pos_allocs_init+0x36>
1c009f5e:	8e1d                	sub	a2,a2,a5
1c009f60:	27458593          	addi	a1,a1,628
1c009f64:	b76d                	j	1c009f0e <pos_allocs_init+0x18>

1c009f66 <pi_l2_malloc>:
1c009f66:	85aa                	mv	a1,a0
1c009f68:	1c006537          	lui	a0,0x1c006
1c009f6c:	26850513          	addi	a0,a0,616 # 1c006268 <pos_alloc_l2>
1c009f70:	b5f9                	j	1c009e3e <pos_alloc>

1c009f72 <pi_l2_free>:
1c009f72:	862e                	mv	a2,a1
1c009f74:	85aa                	mv	a1,a0
1c009f76:	1c006537          	lui	a0,0x1c006
1c009f7a:	26850513          	addi	a0,a0,616 # 1c006268 <pos_alloc_l2>
1c009f7e:	bf39                	j	1c009e9c <pos_free>

1c009f80 <__rt_handle_illegal_instr>:
1c009f80:	8082                	ret

1c009f82 <pos_irq_init>:
1c009f82:	1a10a737          	lui	a4,0x1a10a
1c009f86:	f14027f3          	csrr	a5,mhartid
1c009f8a:	56fd                	li	a3,-1
1c009f8c:	8795                	srai	a5,a5,0x5
1c009f8e:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009f92:	03f7f793          	andi	a5,a5,63
1c009f96:	477d                	li	a4,31
1c009f98:	00e78363          	beq	a5,a4,1c009f9e <pos_irq_init+0x1c>
1c009f9c:	8082                	ret
1c009f9e:	1c0087b7          	lui	a5,0x1c008
1c009fa2:	00078793          	mv	a5,a5
1c009fa6:	0017e793          	ori	a5,a5,1
1c009faa:	30579073          	csrw	mtvec,a5
1c009fae:	8082                	ret

1c009fb0 <pos_soc_event_init>:
1c009fb0:	1a1067b7          	lui	a5,0x1a106
1c009fb4:	577d                	li	a4,-1
1c009fb6:	c3d8                	sw	a4,4(a5)
1c009fb8:	c798                	sw	a4,8(a5)
1c009fba:	c7d8                	sw	a4,12(a5)
1c009fbc:	cb98                	sw	a4,16(a5)
1c009fbe:	cbd8                	sw	a4,20(a5)
1c009fc0:	cf98                	sw	a4,24(a5)
1c009fc2:	cfd8                	sw	a4,28(a5)
1c009fc4:	d398                	sw	a4,32(a5)
1c009fc6:	8082                	ret
