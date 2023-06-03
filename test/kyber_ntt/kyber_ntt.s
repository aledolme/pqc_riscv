riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber_ntt/build/kyber_ntt/kyber_ntt:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	76d0106f          	j	1c009f6c <__rt_handle_illegal_instr>
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
1c008084:	6e90106f          	j	1c009f6c <__rt_handle_illegal_instr>

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
1c0080c4:	18028293          	addi	t0,t0,384 # 1c006240 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	19c30313          	addi	t1,t1,412 # 1c006264 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	16610113          	addi	sp,sp,358 # 1c006240 <stack>
1c0080e2:	4cf010ef          	jal	ra,1c009db0 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	4eb010ef          	jal	ra,1c009de6 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	503000ef          	jal	ra,1c008e04 <exit>

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
1c008156:	431000ef          	jal	ra,1c008d86 <puts>
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
1c00817c:	40b000ef          	jal	ra,1c008d86 <puts>
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
1c008200:	24440413          	addi	s0,s0,580 # 1c006244 <pos_fll_freq>
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
1c00822c:	24050513          	addi	a0,a0,576 # 1c006240 <stack>
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
1c008268:	24050513          	addi	a0,a0,576 # 1c006240 <stack>
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
1c0082b4:	24478793          	addi	a5,a5,580 # 1c006244 <pos_fll_freq>
1c0082b8:	0007a023          	sw	zero,0(a5)
1c0082bc:	0007a223          	sw	zero,4(a5)
1c0082c0:	1c0067b7          	lui	a5,0x1c006
1c0082c4:	24079023          	sh	zero,576(a5) # 1c006240 <stack>
1c0082c8:	8082                	ret

1c0082ca <pos_soc_init>:
1c0082ca:	1141                	addi	sp,sp,-16
1c0082cc:	c606                	sw	ra,12(sp)
1c0082ce:	c422                	sw	s0,8(sp)
1c0082d0:	37c5                	jal	1c0082b0 <pos_fll_constructor>
1c0082d2:	4501                	li	a0,0
1c0082d4:	3d75                	jal	1c008190 <pos_fll_init>
1c0082d6:	1c006437          	lui	s0,0x1c006
1c0082da:	24a42623          	sw	a0,588(s0) # 1c00624c <pos_freq_domains>
1c0082de:	4505                	li	a0,1
1c0082e0:	3d45                	jal	1c008190 <pos_fll_init>
1c0082e2:	24c40413          	addi	s0,s0,588
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
1c00836e:	219000ef          	jal	ra,1c008d86 <puts>
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
1c0083a6:	1e1000ef          	jal	ra,1c008d86 <puts>
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
1c0083e2:	23f000ef          	jal	ra,1c008e20 <printf>
1c0083e6:	ff241ae3          	bne	s0,s2,1c0083da <KYBER_poly_ntt+0x84>
1c0083ea:	1c000537          	lui	a0,0x1c000
1c0083ee:	1a050513          	addi	a0,a0,416 # 1c0001a0 <__DTOR_END__+0x184>
1c0083f2:	195000ef          	jal	ra,1c008d86 <puts>
1c0083f6:	1a4017b7          	lui	a5,0x1a401
1c0083fa:	08000713          	li	a4,128
1c0083fe:	c798                	sw	a4,8(a5)
1c008400:	1c000537          	lui	a0,0x1c000
1c008404:	18050513          	addi	a0,a0,384 # 1c000180 <__DTOR_END__+0x164>
1c008408:	17f000ef          	jal	ra,1c008d86 <puts>
1c00840c:	4401                	li	s0,0
1c00840e:	38800913          	li	s2,904
1c008412:	0405                	addi	s0,s0,1
1c008414:	85a2                	mv	a1,s0
1c008416:	19c48513          	addi	a0,s1,412
1c00841a:	207000ef          	jal	ra,1c008e20 <printf>
1c00841e:	ff241ae3          	bne	s0,s2,1c008412 <KYBER_poly_ntt+0xbc>
1c008422:	1c000537          	lui	a0,0x1c000
1c008426:	19050513          	addi	a0,a0,400 # 1c000190 <__DTOR_END__+0x174>
1c00842a:	15d000ef          	jal	ra,1c008d86 <puts>
1c00842e:	1a401437          	lui	s0,0x1a401
1c008432:	47c1                	li	a5,16
1c008434:	c41c                	sw	a5,8(s0)
1c008436:	1c000537          	lui	a0,0x1c000
1c00843a:	16450513          	addi	a0,a0,356 # 1c000164 <__DTOR_END__+0x148>
1c00843e:	149000ef          	jal	ra,1c008d86 <puts>
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
1c008476:	1ab000ef          	jal	ra,1c008e20 <printf>
1c00847a:	ff241ae3          	bne	s0,s2,1c00846e <KYBER_poly_ntt+0x118>
1c00847e:	4462                	lw	s0,24(sp)
1c008480:	40f2                	lw	ra,28(sp)
1c008482:	44d2                	lw	s1,20(sp)
1c008484:	4942                	lw	s2,16(sp)
1c008486:	49b2                	lw	s3,12(sp)
1c008488:	1c000537          	lui	a0,0x1c000
1c00848c:	1b450513          	addi	a0,a0,436 # 1c0001b4 <__DTOR_END__+0x198>
1c008490:	6105                	addi	sp,sp,32
1c008492:	0f50006f          	j	1c008d86 <puts>

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
1c00876c:	7e6010ef          	jal	ra,1c009f52 <pi_l2_malloc>
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
1c008856:	7080106f          	j	1c009f5e <pi_l2_free>
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
1c008976:	2179                	jal	1c008e04 <exit>

1c008978 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c008978:	9b010113          	addi	sp,sp,-1616
1c00897c:	100c                	addi	a1,sp,32
1c00897e:	4601                	li	a2,0
1c008980:	0088                	addi	a0,sp,64
1c008982:	64112623          	sw	ra,1612(sp)
1c008986:	2025                	jal	1c0089ae <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c008988:	1c000537          	lui	a0,0x1c000
1c00898c:	1c850513          	addi	a0,a0,456 # 1c0001c8 <__DTOR_END__+0x1ac>
1c008990:	2edd                	jal	1c008d86 <puts>
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
1c0089c0:	207d                	jal	1c008a6e <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c0089c2:	858a                	mv	a1,sp
1c0089c4:	8522                	mv	a0,s0
1c0089c6:	3cc1                	jal	1c008496 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c0089c8:	40ba                	lw	ra,140(sp)
1c0089ca:	442a                	lw	s0,136(sp)
1c0089cc:	6149                	addi	sp,sp,144
1c0089ce:	8082                	ret

1c0089d0 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c0089d0:	9e010113          	addi	sp,sp,-1568
1c0089d4:	61412423          	sw	s4,1544(sp)
1c0089d8:	40010a13          	addi	s4,sp,1024
1c0089dc:	85aa                	mv	a1,a0
1c0089de:	20000613          	li	a2,512
1c0089e2:	8552                	mv	a0,s4
1c0089e4:	60812c23          	sw	s0,1560(sp)
1c0089e8:	60912a23          	sw	s1,1556(sp)
1c0089ec:	61212823          	sw	s2,1552(sp)
1c0089f0:	60112e23          	sw	ra,1564(sp)
1c0089f4:	61312623          	sw	s3,1548(sp)
1c0089f8:	28d1                	jal	1c008acc <memcpy>
1c0089fa:	848a                	mv	s1,sp
1c0089fc:	0400                	addi	s0,sp,512
1c0089fe:	87d2                	mv	a5,s4
1c008a00:	890a                	mv	s2,sp
1c008a02:	4398                	lw	a4,0(a5)
1c008a04:	0911                	addi	s2,s2,4
1c008a06:	fee92e23          	sw	a4,-4(s2)
1c008a0a:	0791                	addi	a5,a5,4
1c008a0c:	fe891be3          	bne	s2,s0,1c008a02 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x32>
1c008a10:	1c0009b7          	lui	s3,0x1c000
1c008a14:	00049583          	lh	a1,0(s1)
1c008a18:	1dc98513          	addi	a0,s3,476 # 1c0001dc <__DTOR_END__+0x1c0>
1c008a1c:	0489                	addi	s1,s1,2
1c008a1e:	2109                	jal	1c008e20 <printf>
1c008a20:	ff249ae3          	bne	s1,s2,1c008a14 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x44>
1c008a24:	1c000537          	lui	a0,0x1c000
1c008a28:	1e450513          	addi	a0,a0,484 # 1c0001e4 <__DTOR_END__+0x1c8>
1c008a2c:	2ea9                	jal	1c008d86 <puts>
1c008a2e:	40011583          	lh	a1,1024(sp)
1c008a32:	20011503          	lh	a0,512(sp)
1c008a36:	3205                	jal	1c008356 <KYBER_poly_ntt>
1c008a38:	00041583          	lh	a1,0(s0)
1c008a3c:	1dc98513          	addi	a0,s3,476
1c008a40:	0409                	addi	s0,s0,2
1c008a42:	2ef9                	jal	1c008e20 <printf>
1c008a44:	fe8a1ae3          	bne	s4,s0,1c008a38 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x68>
1c008a48:	61812403          	lw	s0,1560(sp)
1c008a4c:	61c12083          	lw	ra,1564(sp)
1c008a50:	61412483          	lw	s1,1556(sp)
1c008a54:	61012903          	lw	s2,1552(sp)
1c008a58:	60c12983          	lw	s3,1548(sp)
1c008a5c:	60812a03          	lw	s4,1544(sp)
1c008a60:	1c000537          	lui	a0,0x1c000
1c008a64:	20850513          	addi	a0,a0,520 # 1c000208 <__DTOR_END__+0x1ec>
1c008a68:	62010113          	addi	sp,sp,1568
1c008a6c:	ae29                	j	1c008d86 <puts>

1c008a6e <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c008a6e:	7139                	addi	sp,sp,-64
1c008a70:	87b2                	mv	a5,a2
1c008a72:	da26                	sw	s1,52(sp)
1c008a74:	d84a                	sw	s2,48(sp)
1c008a76:	84aa                	mv	s1,a0
1c008a78:	892e                	mv	s2,a1
1c008a7a:	02000613          	li	a2,32
1c008a7e:	85be                	mv	a1,a5
1c008a80:	0068                	addi	a0,sp,12
1c008a82:	de06                	sw	ra,60(sp)
1c008a84:	dc22                	sw	s0,56(sp)
1c008a86:	8436                	mv	s0,a3
1c008a88:	2091                	jal	1c008acc <memcpy>
1c008a8a:	0070                	addi	a2,sp,12
1c008a8c:	85ca                	mv	a1,s2
1c008a8e:	8526                	mv	a0,s1
1c008a90:	02100693          	li	a3,33
1c008a94:	02810623          	sb	s0,44(sp)
1c008a98:	3165                	jal	1c008740 <shake256>
1c008a9a:	50f2                	lw	ra,60(sp)
1c008a9c:	5462                	lw	s0,56(sp)
1c008a9e:	54d2                	lw	s1,52(sp)
1c008aa0:	5942                	lw	s2,48(sp)
1c008aa2:	6121                	addi	sp,sp,64
1c008aa4:	8082                	ret

1c008aa6 <pos_wait_forever>:
1c008aa6:	f14027f3          	csrr	a5,mhartid
1c008aaa:	8795                	srai	a5,a5,0x5
1c008aac:	03f7f793          	andi	a5,a5,63
1c008ab0:	477d                	li	a4,31
1c008ab2:	00e78363          	beq	a5,a4,1c008ab8 <pos_wait_forever+0x12>
1c008ab6:	a001                	j	1c008ab6 <pos_wait_forever+0x10>
1c008ab8:	1a10a7b7          	lui	a5,0x1a10a
1c008abc:	577d                	li	a4,-1
1c008abe:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c008ac2:	10500073          	wfi
1c008ac6:	10500073          	wfi
1c008aca:	bfe5                	j	1c008ac2 <pos_wait_forever+0x1c>

1c008acc <memcpy>:
1c008acc:	00b567b3          	or	a5,a0,a1
1c008ad0:	8b8d                	andi	a5,a5,3
1c008ad2:	10078f63          	beqz	a5,1c008bf0 <memcpy+0x124>
1c008ad6:	14060063          	beqz	a2,1c008c16 <memcpy+0x14a>
1c008ada:	00458793          	addi	a5,a1,4
1c008ade:	00450693          	addi	a3,a0,4
1c008ae2:	00f537b3          	sltu	a5,a0,a5
1c008ae6:	00d5b6b3          	sltu	a3,a1,a3
1c008aea:	0017c793          	xori	a5,a5,1
1c008aee:	0016c693          	xori	a3,a3,1
1c008af2:	873e                	mv	a4,a5
1c008af4:	87b6                	mv	a5,a3
1c008af6:	8fd9                	or	a5,a5,a4
1c008af8:	0ff7f793          	andi	a5,a5,255
1c008afc:	cff9                	beqz	a5,1c008bda <memcpy+0x10e>
1c008afe:	00863793          	sltiu	a5,a2,8
1c008b02:	0017c793          	xori	a5,a5,1
1c008b06:	0ff7f793          	andi	a5,a5,255
1c008b0a:	cbe1                	beqz	a5,1c008bda <memcpy+0x10e>
1c008b0c:	40b007b3          	neg	a5,a1
1c008b10:	8b8d                	andi	a5,a5,3
1c008b12:	fff60313          	addi	t1,a2,-1
1c008b16:	cfe5                	beqz	a5,1c008c0e <memcpy+0x142>
1c008b18:	0005c683          	lbu	a3,0(a1)
1c008b1c:	4705                	li	a4,1
1c008b1e:	00d50023          	sb	a3,0(a0)
1c008b22:	00158893          	addi	a7,a1,1
1c008b26:	00150813          	addi	a6,a0,1
1c008b2a:	02e78963          	beq	a5,a4,1c008b5c <memcpy+0x90>
1c008b2e:	0015c683          	lbu	a3,1(a1)
1c008b32:	470d                	li	a4,3
1c008b34:	00d500a3          	sb	a3,1(a0)
1c008b38:	00258893          	addi	a7,a1,2
1c008b3c:	00250813          	addi	a6,a0,2
1c008b40:	ffe60313          	addi	t1,a2,-2
1c008b44:	00e79c63          	bne	a5,a4,1c008b5c <memcpy+0x90>
1c008b48:	0025c703          	lbu	a4,2(a1)
1c008b4c:	00358893          	addi	a7,a1,3
1c008b50:	00350813          	addi	a6,a0,3
1c008b54:	00e50123          	sb	a4,2(a0)
1c008b58:	ffd60313          	addi	t1,a2,-3
1c008b5c:	8e1d                	sub	a2,a2,a5
1c008b5e:	95be                	add	a1,a1,a5
1c008b60:	00265e13          	srli	t3,a2,0x2
1c008b64:	97aa                	add	a5,a5,a0
1c008b66:	4701                	li	a4,0
1c008b68:	4194                	lw	a3,0(a1)
1c008b6a:	0705                	addi	a4,a4,1
1c008b6c:	c394                	sw	a3,0(a5)
1c008b6e:	0591                	addi	a1,a1,4
1c008b70:	0791                	addi	a5,a5,4
1c008b72:	ffc76be3          	bltu	a4,t3,1c008b68 <memcpy+0x9c>
1c008b76:	ffc67593          	andi	a1,a2,-4
1c008b7a:	40b306b3          	sub	a3,t1,a1
1c008b7e:	00b807b3          	add	a5,a6,a1
1c008b82:	00b88733          	add	a4,a7,a1
1c008b86:	06b60463          	beq	a2,a1,1c008bee <memcpy+0x122>
1c008b8a:	00074583          	lbu	a1,0(a4)
1c008b8e:	fff68613          	addi	a2,a3,-1
1c008b92:	00b78023          	sb	a1,0(a5)
1c008b96:	ce21                	beqz	a2,1c008bee <memcpy+0x122>
1c008b98:	00174583          	lbu	a1,1(a4)
1c008b9c:	ffe68613          	addi	a2,a3,-2
1c008ba0:	00b780a3          	sb	a1,1(a5)
1c008ba4:	c629                	beqz	a2,1c008bee <memcpy+0x122>
1c008ba6:	00274583          	lbu	a1,2(a4)
1c008baa:	ffd68613          	addi	a2,a3,-3
1c008bae:	00b78123          	sb	a1,2(a5)
1c008bb2:	ce15                	beqz	a2,1c008bee <memcpy+0x122>
1c008bb4:	00374583          	lbu	a1,3(a4)
1c008bb8:	ffc68613          	addi	a2,a3,-4
1c008bbc:	00b781a3          	sb	a1,3(a5)
1c008bc0:	c61d                	beqz	a2,1c008bee <memcpy+0x122>
1c008bc2:	00474583          	lbu	a1,4(a4)
1c008bc6:	4615                	li	a2,5
1c008bc8:	00b78223          	sb	a1,4(a5)
1c008bcc:	02c68163          	beq	a3,a2,1c008bee <memcpy+0x122>
1c008bd0:	00574703          	lbu	a4,5(a4)
1c008bd4:	00e782a3          	sb	a4,5(a5)
1c008bd8:	8082                	ret
1c008bda:	962e                	add	a2,a2,a1
1c008bdc:	87aa                	mv	a5,a0
1c008bde:	0585                	addi	a1,a1,1
1c008be0:	fff5c703          	lbu	a4,-1(a1)
1c008be4:	0785                	addi	a5,a5,1
1c008be6:	fee78fa3          	sb	a4,-1(a5)
1c008bea:	fec59ae3          	bne	a1,a2,1c008bde <memcpy+0x112>
1c008bee:	8082                	ret
1c008bf0:	00367793          	andi	a5,a2,3
1c008bf4:	ee0793e3          	bnez	a5,1c008ada <memcpy+0xe>
1c008bf8:	da7d                	beqz	a2,1c008bee <memcpy+0x122>
1c008bfa:	87aa                	mv	a5,a0
1c008bfc:	0591                	addi	a1,a1,4
1c008bfe:	ffc5a703          	lw	a4,-4(a1)
1c008c02:	0791                	addi	a5,a5,4
1c008c04:	fee7ae23          	sw	a4,-4(a5)
1c008c08:	1671                	addi	a2,a2,-4
1c008c0a:	fa6d                	bnez	a2,1c008bfc <memcpy+0x130>
1c008c0c:	8082                	ret
1c008c0e:	88ae                	mv	a7,a1
1c008c10:	882a                	mv	a6,a0
1c008c12:	8332                	mv	t1,a2
1c008c14:	b7a1                	j	1c008b5c <memcpy+0x90>
1c008c16:	8082                	ret

1c008c18 <memmove>:
1c008c18:	40b507b3          	sub	a5,a0,a1
1c008c1c:	10c7e463          	bltu	a5,a2,1c008d24 <memmove+0x10c>
1c008c20:	12060b63          	beqz	a2,1c008d56 <memmove+0x13e>
1c008c24:	00458793          	addi	a5,a1,4
1c008c28:	00450693          	addi	a3,a0,4
1c008c2c:	00f537b3          	sltu	a5,a0,a5
1c008c30:	00d5b6b3          	sltu	a3,a1,a3
1c008c34:	0017c793          	xori	a5,a5,1
1c008c38:	0016c693          	xori	a3,a3,1
1c008c3c:	873e                	mv	a4,a5
1c008c3e:	87b6                	mv	a5,a3
1c008c40:	8fd9                	or	a5,a5,a4
1c008c42:	0ff7f793          	andi	a5,a5,255
1c008c46:	cfed                	beqz	a5,1c008d40 <memmove+0x128>
1c008c48:	00863793          	sltiu	a5,a2,8
1c008c4c:	0017c793          	xori	a5,a5,1
1c008c50:	0ff7f793          	andi	a5,a5,255
1c008c54:	c7f5                	beqz	a5,1c008d40 <memmove+0x128>
1c008c56:	40b007b3          	neg	a5,a1
1c008c5a:	8b8d                	andi	a5,a5,3
1c008c5c:	fff60313          	addi	t1,a2,-1
1c008c60:	cfe5                	beqz	a5,1c008d58 <memmove+0x140>
1c008c62:	0005c683          	lbu	a3,0(a1)
1c008c66:	4705                	li	a4,1
1c008c68:	00d50023          	sb	a3,0(a0)
1c008c6c:	00150813          	addi	a6,a0,1
1c008c70:	00158893          	addi	a7,a1,1
1c008c74:	02e78963          	beq	a5,a4,1c008ca6 <memmove+0x8e>
1c008c78:	0015c683          	lbu	a3,1(a1)
1c008c7c:	470d                	li	a4,3
1c008c7e:	00d500a3          	sb	a3,1(a0)
1c008c82:	00250813          	addi	a6,a0,2
1c008c86:	00258893          	addi	a7,a1,2
1c008c8a:	ffe60313          	addi	t1,a2,-2
1c008c8e:	00e79c63          	bne	a5,a4,1c008ca6 <memmove+0x8e>
1c008c92:	0025c703          	lbu	a4,2(a1)
1c008c96:	00350813          	addi	a6,a0,3
1c008c9a:	00e50123          	sb	a4,2(a0)
1c008c9e:	00358893          	addi	a7,a1,3
1c008ca2:	ffd60313          	addi	t1,a2,-3
1c008ca6:	8e1d                	sub	a2,a2,a5
1c008ca8:	95be                	add	a1,a1,a5
1c008caa:	00265e13          	srli	t3,a2,0x2
1c008cae:	97aa                	add	a5,a5,a0
1c008cb0:	4701                	li	a4,0
1c008cb2:	4194                	lw	a3,0(a1)
1c008cb4:	0705                	addi	a4,a4,1
1c008cb6:	c394                	sw	a3,0(a5)
1c008cb8:	0591                	addi	a1,a1,4
1c008cba:	0791                	addi	a5,a5,4
1c008cbc:	ffc76be3          	bltu	a4,t3,1c008cb2 <memmove+0x9a>
1c008cc0:	ffc67593          	andi	a1,a2,-4
1c008cc4:	40b306b3          	sub	a3,t1,a1
1c008cc8:	00b807b3          	add	a5,a6,a1
1c008ccc:	00b88733          	add	a4,a7,a1
1c008cd0:	08b60263          	beq	a2,a1,1c008d54 <memmove+0x13c>
1c008cd4:	00074583          	lbu	a1,0(a4)
1c008cd8:	fff68613          	addi	a2,a3,-1
1c008cdc:	00b78023          	sb	a1,0(a5)
1c008ce0:	ca35                	beqz	a2,1c008d54 <memmove+0x13c>
1c008ce2:	00174583          	lbu	a1,1(a4)
1c008ce6:	ffe68613          	addi	a2,a3,-2
1c008cea:	00b780a3          	sb	a1,1(a5)
1c008cee:	c23d                	beqz	a2,1c008d54 <memmove+0x13c>
1c008cf0:	00274583          	lbu	a1,2(a4)
1c008cf4:	ffd68613          	addi	a2,a3,-3
1c008cf8:	00b78123          	sb	a1,2(a5)
1c008cfc:	ce21                	beqz	a2,1c008d54 <memmove+0x13c>
1c008cfe:	00374583          	lbu	a1,3(a4)
1c008d02:	ffc68613          	addi	a2,a3,-4
1c008d06:	00b781a3          	sb	a1,3(a5)
1c008d0a:	c629                	beqz	a2,1c008d54 <memmove+0x13c>
1c008d0c:	00474583          	lbu	a1,4(a4)
1c008d10:	4615                	li	a2,5
1c008d12:	00b78223          	sb	a1,4(a5)
1c008d16:	02c68f63          	beq	a3,a2,1c008d54 <memmove+0x13c>
1c008d1a:	00574703          	lbu	a4,5(a4)
1c008d1e:	00e782a3          	sb	a4,5(a5)
1c008d22:	8082                	ret
1c008d24:	167d                	addi	a2,a2,-1
1c008d26:	00c587b3          	add	a5,a1,a2
1c008d2a:	962a                	add	a2,a2,a0
1c008d2c:	15fd                	addi	a1,a1,-1
1c008d2e:	0007c703          	lbu	a4,0(a5)
1c008d32:	17fd                	addi	a5,a5,-1
1c008d34:	00e60023          	sb	a4,0(a2)
1c008d38:	167d                	addi	a2,a2,-1
1c008d3a:	feb79ae3          	bne	a5,a1,1c008d2e <memmove+0x116>
1c008d3e:	8082                	ret
1c008d40:	962a                	add	a2,a2,a0
1c008d42:	87aa                	mv	a5,a0
1c008d44:	0005c703          	lbu	a4,0(a1)
1c008d48:	0785                	addi	a5,a5,1
1c008d4a:	fee78fa3          	sb	a4,-1(a5)
1c008d4e:	0585                	addi	a1,a1,1
1c008d50:	fec79ae3          	bne	a5,a2,1c008d44 <memmove+0x12c>
1c008d54:	8082                	ret
1c008d56:	8082                	ret
1c008d58:	88ae                	mv	a7,a1
1c008d5a:	882a                	mv	a6,a0
1c008d5c:	8332                	mv	t1,a2
1c008d5e:	b7a1                	j	1c008ca6 <memmove+0x8e>

1c008d60 <strchr>:
1c008d60:	00054783          	lbu	a5,0(a0)
1c008d64:	0ff5f593          	andi	a1,a1,255
1c008d68:	00b78863          	beq	a5,a1,1c008d78 <strchr+0x18>
1c008d6c:	c799                	beqz	a5,1c008d7a <strchr+0x1a>
1c008d6e:	0505                	addi	a0,a0,1
1c008d70:	00054783          	lbu	a5,0(a0)
1c008d74:	feb79ce3          	bne	a5,a1,1c008d6c <strchr+0xc>
1c008d78:	8082                	ret
1c008d7a:	0015b593          	seqz	a1,a1
1c008d7e:	40b005b3          	neg	a1,a1
1c008d82:	8d6d                	and	a0,a0,a1
1c008d84:	8082                	ret

1c008d86 <puts>:
1c008d86:	00054783          	lbu	a5,0(a0)
1c008d8a:	c78d                	beqz	a5,1c008db4 <puts+0x2e>
1c008d8c:	f14026f3          	csrr	a3,mhartid
1c008d90:	00369713          	slli	a4,a3,0x3
1c008d94:	1a10f637          	lui	a2,0x1a10f
1c008d98:	0ff77713          	andi	a4,a4,255
1c008d9c:	9732                	add	a4,a4,a2
1c008d9e:	6609                	lui	a2,0x2
1c008da0:	068a                	slli	a3,a3,0x2
1c008da2:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008da6:	8ef1                	and	a3,a3,a2
1c008da8:	9736                	add	a4,a4,a3
1c008daa:	c31c                	sw	a5,0(a4)
1c008dac:	0505                	addi	a0,a0,1
1c008dae:	00054783          	lbu	a5,0(a0)
1c008db2:	ffe5                	bnez	a5,1c008daa <puts+0x24>
1c008db4:	f1402773          	csrr	a4,mhartid
1c008db8:	00371793          	slli	a5,a4,0x3
1c008dbc:	1a10f6b7          	lui	a3,0x1a10f
1c008dc0:	0ff7f793          	andi	a5,a5,255
1c008dc4:	97b6                	add	a5,a5,a3
1c008dc6:	6689                	lui	a3,0x2
1c008dc8:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008dcc:	070a                	slli	a4,a4,0x2
1c008dce:	8f75                	and	a4,a4,a3
1c008dd0:	97ba                	add	a5,a5,a4
1c008dd2:	4729                	li	a4,10
1c008dd4:	c398                	sw	a4,0(a5)
1c008dd6:	4501                	li	a0,0
1c008dd8:	8082                	ret

1c008dda <pos_libc_fputc_locked>:
1c008dda:	6689                	lui	a3,0x2
1c008ddc:	f14027f3          	csrr	a5,mhartid
1c008de0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008de4:	00379713          	slli	a4,a5,0x3
1c008de8:	078a                	slli	a5,a5,0x2
1c008dea:	8ff5                	and	a5,a5,a3
1c008dec:	0ff77713          	andi	a4,a4,255
1c008df0:	1a10f6b7          	lui	a3,0x1a10f
1c008df4:	9736                	add	a4,a4,a3
1c008df6:	0ff57513          	andi	a0,a0,255
1c008dfa:	97ba                	add	a5,a5,a4
1c008dfc:	c388                	sw	a0,0(a5)
1c008dfe:	4501                	li	a0,0
1c008e00:	8082                	ret

1c008e02 <pos_libc_prf_locked>:
1c008e02:	a0b1                	j	1c008e4e <pos_libc_prf>

1c008e04 <exit>:
1c008e04:	800007b7          	lui	a5,0x80000
1c008e08:	1141                	addi	sp,sp,-16
1c008e0a:	8d5d                	or	a0,a0,a5
1c008e0c:	c606                	sw	ra,12(sp)
1c008e0e:	1a1047b7          	lui	a5,0x1a104
1c008e12:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008e16:	3941                	jal	1c008aa6 <pos_wait_forever>

1c008e18 <pos_io_start>:
1c008e18:	4501                	li	a0,0
1c008e1a:	8082                	ret

1c008e1c <pos_io_stop>:
1c008e1c:	4501                	li	a0,0
1c008e1e:	8082                	ret

1c008e20 <printf>:
1c008e20:	7139                	addi	sp,sp,-64
1c008e22:	02410313          	addi	t1,sp,36
1c008e26:	d432                	sw	a2,40(sp)
1c008e28:	862a                	mv	a2,a0
1c008e2a:	1c009537          	lui	a0,0x1c009
1c008e2e:	d22e                	sw	a1,36(sp)
1c008e30:	d636                	sw	a3,44(sp)
1c008e32:	4589                	li	a1,2
1c008e34:	869a                	mv	a3,t1
1c008e36:	dda50513          	addi	a0,a0,-550 # 1c008dda <pos_libc_fputc_locked>
1c008e3a:	ce06                	sw	ra,28(sp)
1c008e3c:	d83a                	sw	a4,48(sp)
1c008e3e:	da3e                	sw	a5,52(sp)
1c008e40:	dc42                	sw	a6,56(sp)
1c008e42:	de46                	sw	a7,60(sp)
1c008e44:	c61a                	sw	t1,12(sp)
1c008e46:	3f75                	jal	1c008e02 <pos_libc_prf_locked>
1c008e48:	40f2                	lw	ra,28(sp)
1c008e4a:	6121                	addi	sp,sp,64
1c008e4c:	8082                	ret

1c008e4e <pos_libc_prf>:
1c008e4e:	7169                	addi	sp,sp,-304
1c008e50:	12812423          	sw	s0,296(sp)
1c008e54:	12912223          	sw	s1,292(sp)
1c008e58:	11612823          	sw	s6,272(sp)
1c008e5c:	11712623          	sw	s7,268(sp)
1c008e60:	11812423          	sw	s8,264(sp)
1c008e64:	11912223          	sw	s9,260(sp)
1c008e68:	11a12023          	sw	s10,256(sp)
1c008e6c:	12112623          	sw	ra,300(sp)
1c008e70:	13212023          	sw	s2,288(sp)
1c008e74:	11312e23          	sw	s3,284(sp)
1c008e78:	11412c23          	sw	s4,280(sp)
1c008e7c:	11512a23          	sw	s5,276(sp)
1c008e80:	dfee                	sw	s11,252(sp)
1c008e82:	8b2a                	mv	s6,a0
1c008e84:	8d2e                	mv	s10,a1
1c008e86:	84b2                	mv	s1,a2
1c008e88:	8c36                	mv	s8,a3
1c008e8a:	4401                	li	s0,0
1c008e8c:	1c000bb7          	lui	s7,0x1c000
1c008e90:	02410c93          	addi	s9,sp,36
1c008e94:	0004c503          	lbu	a0,0(s1)
1c008e98:	0485                	addi	s1,s1,1
1c008e9a:	cd19                	beqz	a0,1c008eb8 <pos_libc_prf+0x6a>
1c008e9c:	02500793          	li	a5,37
1c008ea0:	04f50863          	beq	a0,a5,1c008ef0 <pos_libc_prf+0xa2>
1c008ea4:	85ea                	mv	a1,s10
1c008ea6:	9b02                	jalr	s6
1c008ea8:	57fd                	li	a5,-1
1c008eaa:	24f50863          	beq	a0,a5,1c0090fa <pos_libc_prf+0x2ac>
1c008eae:	0405                	addi	s0,s0,1
1c008eb0:	0004c503          	lbu	a0,0(s1)
1c008eb4:	0485                	addi	s1,s1,1
1c008eb6:	f17d                	bnez	a0,1c008e9c <pos_libc_prf+0x4e>
1c008eb8:	8522                	mv	a0,s0
1c008eba:	12c12083          	lw	ra,300(sp)
1c008ebe:	12812403          	lw	s0,296(sp)
1c008ec2:	12412483          	lw	s1,292(sp)
1c008ec6:	12012903          	lw	s2,288(sp)
1c008eca:	11c12983          	lw	s3,284(sp)
1c008ece:	11812a03          	lw	s4,280(sp)
1c008ed2:	11412a83          	lw	s5,276(sp)
1c008ed6:	11012b03          	lw	s6,272(sp)
1c008eda:	10c12b83          	lw	s7,268(sp)
1c008ede:	10812c03          	lw	s8,264(sp)
1c008ee2:	10412c83          	lw	s9,260(sp)
1c008ee6:	10012d03          	lw	s10,256(sp)
1c008eea:	5dfe                	lw	s11,252(sp)
1c008eec:	6155                	addi	sp,sp,304
1c008eee:	8082                	ret
1c008ef0:	00148a93          	addi	s5,s1,1
1c008ef4:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c008ef8:	02000713          	li	a4,32
1c008efc:	22cb8513          	addi	a0,s7,556 # 1c00022c <__DTOR_END__+0x210>
1c008f00:	85ee                	mv	a1,s11
1c008f02:	c83a                	sw	a4,16(sp)
1c008f04:	cc02                	sw	zero,24(sp)
1c008f06:	ca02                	sw	zero,20(sp)
1c008f08:	ce02                	sw	zero,28(sp)
1c008f0a:	c602                	sw	zero,12(sp)
1c008f0c:	02300913          	li	s2,35
1c008f10:	02d00a13          	li	s4,45
1c008f14:	89d6                	mv	s3,s5
1c008f16:	35a9                	jal	1c008d60 <strchr>
1c008f18:	c915                	beqz	a0,1c008f4c <pos_libc_prf+0xfe>
1c008f1a:	212d8963          	beq	s11,s2,1c00912c <pos_libc_prf+0x2de>
1c008f1e:	1fb97063          	bleu	s11,s2,1c0090fe <pos_libc_prf+0x2b0>
1c008f22:	214d8163          	beq	s11,s4,1c009124 <pos_libc_prf+0x2d6>
1c008f26:	03000613          	li	a2,48
1c008f2a:	1ecd8863          	beq	s11,a2,1c00911a <pos_libc_prf+0x2cc>
1c008f2e:	02b00693          	li	a3,43
1c008f32:	1edd8063          	beq	s11,a3,1c009112 <pos_libc_prf+0x2c4>
1c008f36:	84d6                	mv	s1,s5
1c008f38:	00148a93          	addi	s5,s1,1
1c008f3c:	fffacd83          	lbu	s11,-1(s5)
1c008f40:	22cb8513          	addi	a0,s7,556
1c008f44:	85ee                	mv	a1,s11
1c008f46:	89d6                	mv	s3,s5
1c008f48:	3d21                	jal	1c008d60 <strchr>
1c008f4a:	f961                	bnez	a0,1c008f1a <pos_libc_prf+0xcc>
1c008f4c:	02a00613          	li	a2,42
1c008f50:	20cd8463          	beq	s11,a2,1c009158 <pos_libc_prf+0x30a>
1c008f54:	fd0d8613          	addi	a2,s11,-48
1c008f58:	45a5                	li	a1,9
1c008f5a:	4901                	li	s2,0
1c008f5c:	1cc5fe63          	bleu	a2,a1,1c009138 <pos_libc_prf+0x2ea>
1c008f60:	02e00713          	li	a4,46
1c008f64:	5a7d                	li	s4,-1
1c008f66:	24ed8463          	beq	s11,a4,1c0091ae <pos_libc_prf+0x360>
1c008f6a:	1c000837          	lui	a6,0x1c000
1c008f6e:	85ee                	mv	a1,s11
1c008f70:	23480513          	addi	a0,a6,564 # 1c000234 <__DTOR_END__+0x218>
1c008f74:	33f5                	jal	1c008d60 <strchr>
1c008f76:	84ce                	mv	s1,s3
1c008f78:	c509                	beqz	a0,1c008f82 <pos_libc_prf+0x134>
1c008f7a:	0009cd83          	lbu	s11,0(s3)
1c008f7e:	00198493          	addi	s1,s3,1
1c008f82:	06700713          	li	a4,103
1c008f86:	1fb75963          	ble	s11,a4,1c009178 <pos_libc_prf+0x32a>
1c008f8a:	07000713          	li	a4,112
1c008f8e:	12ed89e3          	beq	s11,a4,1c0098c0 <pos_libc_prf+0xa72>
1c008f92:	25b75263          	ble	s11,a4,1c0091d6 <pos_libc_prf+0x388>
1c008f96:	07500713          	li	a4,117
1c008f9a:	0aed89e3          	beq	s11,a4,1c00984c <pos_libc_prf+0x9fe>
1c008f9e:	07800713          	li	a4,120
1c008fa2:	72ed8b63          	beq	s11,a4,1c0096d8 <pos_libc_prf+0x88a>
1c008fa6:	07300713          	li	a4,115
1c008faa:	1aed9ce3          	bne	s11,a4,1c009962 <pos_libc_prf+0xb14>
1c008fae:	000c2583          	lw	a1,0(s8)
1c008fb2:	004c0a93          	addi	s5,s8,4
1c008fb6:	87ae                	mv	a5,a1
1c008fb8:	4981                	li	s3,0
1c008fba:	0c800693          	li	a3,200
1c008fbe:	a021                	j	1c008fc6 <pos_libc_prf+0x178>
1c008fc0:	0985                	addi	s3,s3,1
1c008fc2:	5ad98be3          	beq	s3,a3,1c009d78 <pos_libc_prf+0xf2a>
1c008fc6:	0007c703          	lbu	a4,0(a5)
1c008fca:	0785                	addi	a5,a5,1
1c008fcc:	fb75                	bnez	a4,1c008fc0 <pos_libc_prf+0x172>
1c008fce:	000a4563          	bltz	s4,1c008fd8 <pos_libc_prf+0x18a>
1c008fd2:	013a5363          	ble	s3,s4,1c008fd8 <pos_libc_prf+0x18a>
1c008fd6:	89d2                	mv	s3,s4
1c008fd8:	8c56                	mv	s8,s5
1c008fda:	ea098de3          	beqz	s3,1c008e94 <pos_libc_prf+0x46>
1c008fde:	864e                	mv	a2,s3
1c008fe0:	8566                	mv	a0,s9
1c008fe2:	34ed                	jal	1c008acc <memcpy>
1c008fe4:	8c56                	mv	s8,s5
1c008fe6:	0f29d963          	ble	s2,s3,1c0090d8 <pos_libc_prf+0x28a>
1c008fea:	c602                	sw	zero,12(sp)
1c008fec:	48f2                	lw	a7,28(sp)
1c008fee:	1a0885e3          	beqz	a7,1c009998 <pos_libc_prf+0xb4a>
1c008ff2:	013c87b3          	add	a5,s9,s3
1c008ff6:	40f007b3          	neg	a5,a5
1c008ffa:	8b8d                	andi	a5,a5,3
1c008ffc:	00378693          	addi	a3,a5,3
1c009000:	4715                	li	a4,5
1c009002:	413905b3          	sub	a1,s2,s3
1c009006:	00e6f363          	bleu	a4,a3,1c00900c <pos_libc_prf+0x1be>
1c00900a:	4695                	li	a3,5
1c00900c:	fff90713          	addi	a4,s2,-1
1c009010:	41370733          	sub	a4,a4,s3
1c009014:	06d76663          	bltu	a4,a3,1c009080 <pos_libc_prf+0x232>
1c009018:	86ce                	mv	a3,s3
1c00901a:	cb9d                	beqz	a5,1c009050 <pos_libc_prf+0x202>
1c00901c:	0f010813          	addi	a6,sp,240
1c009020:	013806b3          	add	a3,a6,s3
1c009024:	02000713          	li	a4,32
1c009028:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00902c:	4605                	li	a2,1
1c00902e:	00198693          	addi	a3,s3,1
1c009032:	00c78f63          	beq	a5,a2,1c009050 <pos_libc_prf+0x202>
1c009036:	96c2                	add	a3,a3,a6
1c009038:	f2e68a23          	sb	a4,-204(a3)
1c00903c:	460d                	li	a2,3
1c00903e:	00298693          	addi	a3,s3,2
1c009042:	00c79763          	bne	a5,a2,1c009050 <pos_libc_prf+0x202>
1c009046:	96c2                	add	a3,a3,a6
1c009048:	f2e68a23          	sb	a4,-204(a3)
1c00904c:	00398693          	addi	a3,s3,3
1c009050:	8d9d                	sub	a1,a1,a5
1c009052:	97ce                	add	a5,a5,s3
1c009054:	0025d613          	srli	a2,a1,0x2
1c009058:	97e6                	add	a5,a5,s9
1c00905a:	4701                	li	a4,0
1c00905c:	1c0008b7          	lui	a7,0x1c000
1c009060:	22888893          	addi	a7,a7,552 # 1c000228 <__DTOR_END__+0x20c>
1c009064:	0008a883          	lw	a7,0(a7)
1c009068:	0705                	addi	a4,a4,1
1c00906a:	0117a023          	sw	a7,0(a5)
1c00906e:	0791                	addi	a5,a5,4
1c009070:	fec766e3          	bltu	a4,a2,1c00905c <pos_libc_prf+0x20e>
1c009074:	ffc5f793          	andi	a5,a1,-4
1c009078:	00d789b3          	add	s3,a5,a3
1c00907c:	04b78b63          	beq	a5,a1,1c0090d2 <pos_libc_prf+0x284>
1c009080:	1988                	addi	a0,sp,240
1c009082:	01350733          	add	a4,a0,s3
1c009086:	02000793          	li	a5,32
1c00908a:	f2f70a23          	sb	a5,-204(a4)
1c00908e:	00198713          	addi	a4,s3,1
1c009092:	05275063          	ble	s2,a4,1c0090d2 <pos_libc_prf+0x284>
1c009096:	972a                	add	a4,a4,a0
1c009098:	f2f70a23          	sb	a5,-204(a4)
1c00909c:	00298713          	addi	a4,s3,2
1c0090a0:	03275963          	ble	s2,a4,1c0090d2 <pos_libc_prf+0x284>
1c0090a4:	972a                	add	a4,a4,a0
1c0090a6:	f2f70a23          	sb	a5,-204(a4)
1c0090aa:	00398713          	addi	a4,s3,3
1c0090ae:	03275263          	ble	s2,a4,1c0090d2 <pos_libc_prf+0x284>
1c0090b2:	972a                	add	a4,a4,a0
1c0090b4:	f2f70a23          	sb	a5,-204(a4)
1c0090b8:	00498713          	addi	a4,s3,4
1c0090bc:	01275b63          	ble	s2,a4,1c0090d2 <pos_libc_prf+0x284>
1c0090c0:	972a                	add	a4,a4,a0
1c0090c2:	f2f70a23          	sb	a5,-204(a4)
1c0090c6:	0995                	addi	s3,s3,5
1c0090c8:	0129d563          	ble	s2,s3,1c0090d2 <pos_libc_prf+0x284>
1c0090cc:	99aa                	add	s3,s3,a0
1c0090ce:	f2f98a23          	sb	a5,-204(s3)
1c0090d2:	89ca                	mv	s3,s2
1c0090d4:	dc0980e3          	beqz	s3,1c008e94 <pos_libc_prf+0x46>
1c0090d8:	8966                	mv	s2,s9
1c0090da:	5a7d                	li	s4,-1
1c0090dc:	41940ab3          	sub	s5,s0,s9
1c0090e0:	a029                	j	1c0090ea <pos_libc_prf+0x29c>
1c0090e2:	01590433          	add	s0,s2,s5
1c0090e6:	da0987e3          	beqz	s3,1c008e94 <pos_libc_prf+0x46>
1c0090ea:	00094503          	lbu	a0,0(s2)
1c0090ee:	85ea                	mv	a1,s10
1c0090f0:	9b02                	jalr	s6
1c0090f2:	0905                	addi	s2,s2,1
1c0090f4:	19fd                	addi	s3,s3,-1
1c0090f6:	ff4516e3          	bne	a0,s4,1c0090e2 <pos_libc_prf+0x294>
1c0090fa:	547d                	li	s0,-1
1c0090fc:	bb75                	j	1c008eb8 <pos_libc_prf+0x6a>
1c0090fe:	da0d8de3          	beqz	s11,1c008eb8 <pos_libc_prf+0x6a>
1c009102:	02000513          	li	a0,32
1c009106:	e2ad98e3          	bne	s11,a0,1c008f36 <pos_libc_prf+0xe8>
1c00910a:	4785                	li	a5,1
1c00910c:	cc3e                	sw	a5,24(sp)
1c00910e:	84d6                	mv	s1,s5
1c009110:	b525                	j	1c008f38 <pos_libc_prf+0xea>
1c009112:	4705                	li	a4,1
1c009114:	ca3a                	sw	a4,20(sp)
1c009116:	84d6                	mv	s1,s5
1c009118:	b505                	j	1c008f38 <pos_libc_prf+0xea>
1c00911a:	03000893          	li	a7,48
1c00911e:	c846                	sw	a7,16(sp)
1c009120:	84d6                	mv	s1,s5
1c009122:	bd19                	j	1c008f38 <pos_libc_prf+0xea>
1c009124:	4685                	li	a3,1
1c009126:	ce36                	sw	a3,28(sp)
1c009128:	84d6                	mv	s1,s5
1c00912a:	b539                	j	1c008f38 <pos_libc_prf+0xea>
1c00912c:	4805                	li	a6,1
1c00912e:	c642                	sw	a6,12(sp)
1c009130:	84d6                	mv	s1,s5
1c009132:	b519                	j	1c008f38 <pos_libc_prf+0xea>
1c009134:	84d6                	mv	s1,s5
1c009136:	0a85                	addi	s5,s5,1
1c009138:	00291793          	slli	a5,s2,0x2
1c00913c:	97ca                	add	a5,a5,s2
1c00913e:	0786                	slli	a5,a5,0x1
1c009140:	97ee                	add	a5,a5,s11
1c009142:	000acd83          	lbu	s11,0(s5)
1c009146:	fd078913          	addi	s2,a5,-48
1c00914a:	fd0d8793          	addi	a5,s11,-48
1c00914e:	fef5f3e3          	bleu	a5,a1,1c009134 <pos_libc_prf+0x2e6>
1c009152:	00248993          	addi	s3,s1,2
1c009156:	a811                	j	1c00916a <pos_libc_prf+0x31c>
1c009158:	000c2903          	lw	s2,0(s8)
1c00915c:	0c11                	addi	s8,s8,4
1c00915e:	14094663          	bltz	s2,1c0092aa <pos_libc_prf+0x45c>
1c009162:	000acd83          	lbu	s11,0(s5)
1c009166:	00248993          	addi	s3,s1,2
1c00916a:	0c800713          	li	a4,200
1c00916e:	df2779e3          	bleu	s2,a4,1c008f60 <pos_libc_prf+0x112>
1c009172:	0c800913          	li	s2,200
1c009176:	b3ed                	j	1c008f60 <pos_libc_prf+0x112>
1c009178:	06500713          	li	a4,101
1c00917c:	12eddc63          	ble	a4,s11,1c0092b4 <pos_libc_prf+0x466>
1c009180:	04700713          	li	a4,71
1c009184:	55b74063          	blt	a4,s11,1c0096c4 <pos_libc_prf+0x876>
1c009188:	04500713          	li	a4,69
1c00918c:	12edd463          	ble	a4,s11,1c0092b4 <pos_libc_prf+0x466>
1c009190:	d20d84e3          	beqz	s11,1c008eb8 <pos_libc_prf+0x6a>
1c009194:	02500713          	li	a4,37
1c009198:	7ced9563          	bne	s11,a4,1c009962 <pos_libc_prf+0xb14>
1c00919c:	85ea                	mv	a1,s10
1c00919e:	02500513          	li	a0,37
1c0091a2:	9b02                	jalr	s6
1c0091a4:	57fd                	li	a5,-1
1c0091a6:	f4f50ae3          	beq	a0,a5,1c0090fa <pos_libc_prf+0x2ac>
1c0091aa:	0405                	addi	s0,s0,1
1c0091ac:	b311                	j	1c008eb0 <pos_libc_prf+0x62>
1c0091ae:	0009c783          	lbu	a5,0(s3)
1c0091b2:	02a00713          	li	a4,42
1c0091b6:	00198693          	addi	a3,s3,1
1c0091ba:	0ae79d63          	bne	a5,a4,1c009274 <pos_libc_prf+0x426>
1c0091be:	000c2a03          	lw	s4,0(s8)
1c0091c2:	0019cd83          	lbu	s11,1(s3)
1c0091c6:	0c11                	addi	s8,s8,4
1c0091c8:	0989                	addi	s3,s3,2
1c0091ca:	0c800713          	li	a4,200
1c0091ce:	d9475ee3          	ble	s4,a4,1c008f6a <pos_libc_prf+0x11c>
1c0091d2:	5a7d                	li	s4,-1
1c0091d4:	bb59                	j	1c008f6a <pos_libc_prf+0x11c>
1c0091d6:	06e00713          	li	a4,110
1c0091da:	76ed8e63          	beq	s11,a4,1c009956 <pos_libc_prf+0xb08>
1c0091de:	5bb75663          	ble	s11,a4,1c00978a <pos_libc_prf+0x93c>
1c0091e2:	4732                	lw	a4,12(sp)
1c0091e4:	004c0513          	addi	a0,s8,4
1c0091e8:	000c2683          	lw	a3,0(s8)
1c0091ec:	1c070de3          	beqz	a4,1c009bc6 <pos_libc_prf+0xd78>
1c0091f0:	03000793          	li	a5,48
1c0091f4:	02f10223          	sb	a5,36(sp)
1c0091f8:	16068de3          	beqz	a3,1c009b72 <pos_libc_prf+0xd24>
1c0091fc:	02510593          	addi	a1,sp,37
1c009200:	872e                	mv	a4,a1
1c009202:	87ba                	mv	a5,a4
1c009204:	0076f613          	andi	a2,a3,7
1c009208:	0785                	addi	a5,a5,1
1c00920a:	03060613          	addi	a2,a2,48
1c00920e:	828d                	srli	a3,a3,0x3
1c009210:	fec78fa3          	sb	a2,-1(a5)
1c009214:	fae5                	bnez	a3,1c009204 <pos_libc_prf+0x3b6>
1c009216:	40b789b3          	sub	s3,a5,a1
1c00921a:	0149db63          	ble	s4,s3,1c009230 <pos_libc_prf+0x3e2>
1c00921e:	03000693          	li	a3,48
1c009222:	0785                	addi	a5,a5,1
1c009224:	fed78fa3          	sb	a3,-1(a5)
1c009228:	40b789b3          	sub	s3,a5,a1
1c00922c:	ff49cbe3          	blt	s3,s4,1c009222 <pos_libc_prf+0x3d4>
1c009230:	00078023          	sb	zero,0(a5)
1c009234:	17fd                	addi	a5,a5,-1
1c009236:	00f77e63          	bleu	a5,a4,1c009252 <pos_libc_prf+0x404>
1c00923a:	00074603          	lbu	a2,0(a4)
1c00923e:	0007c683          	lbu	a3,0(a5)
1c009242:	00c78023          	sb	a2,0(a5)
1c009246:	00d70023          	sb	a3,0(a4)
1c00924a:	17fd                	addi	a5,a5,-1
1c00924c:	0705                	addi	a4,a4,1
1c00924e:	fef766e3          	bltu	a4,a5,1c00923a <pos_libc_prf+0x3ec>
1c009252:	4832                	lw	a6,12(sp)
1c009254:	57fd                	li	a5,-1
1c009256:	99c2                	add	s3,s3,a6
1c009258:	22fa0ee3          	beq	s4,a5,1c009c94 <pos_libc_prf+0xe46>
1c00925c:	0c800793          	li	a5,200
1c009260:	e937cde3          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c009264:	02000693          	li	a3,32
1c009268:	8c2a                	mv	s8,a0
1c00926a:	c602                	sw	zero,12(sp)
1c00926c:	c836                	sw	a3,16(sp)
1c00926e:	d729cfe3          	blt	s3,s2,1c008fec <pos_libc_prf+0x19e>
1c009272:	b58d                	j	1c0090d4 <pos_libc_prf+0x286>
1c009274:	fd078593          	addi	a1,a5,-48
1c009278:	4725                	li	a4,9
1c00927a:	8dbe                	mv	s11,a5
1c00927c:	4a01                	li	s4,0
1c00927e:	4625                	li	a2,9
1c009280:	00b77663          	bleu	a1,a4,1c00928c <pos_libc_prf+0x43e>
1c009284:	1070006f          	j	1c009b8a <pos_libc_prf+0xd3c>
1c009288:	89b6                	mv	s3,a3
1c00928a:	0685                	addi	a3,a3,1
1c00928c:	002a1793          	slli	a5,s4,0x2
1c009290:	97d2                	add	a5,a5,s4
1c009292:	0786                	slli	a5,a5,0x1
1c009294:	97ee                	add	a5,a5,s11
1c009296:	0006cd83          	lbu	s11,0(a3)
1c00929a:	fd078a13          	addi	s4,a5,-48
1c00929e:	fd0d8793          	addi	a5,s11,-48
1c0092a2:	fef673e3          	bleu	a5,a2,1c009288 <pos_libc_prf+0x43a>
1c0092a6:	0989                	addi	s3,s3,2
1c0092a8:	b70d                	j	1c0091ca <pos_libc_prf+0x37c>
1c0092aa:	4785                	li	a5,1
1c0092ac:	41200933          	neg	s2,s2
1c0092b0:	ce3e                	sw	a5,28(sp)
1c0092b2:	bd45                	j	1c009162 <pos_libc_prf+0x314>
1c0092b4:	0c1d                	addi	s8,s8,7
1c0092b6:	ff8c7c13          	andi	s8,s8,-8
1c0092ba:	000c2703          	lw	a4,0(s8)
1c0092be:	004c2803          	lw	a6,4(s8)
1c0092c2:	01575693          	srli	a3,a4,0x15
1c0092c6:	00b81613          	slli	a2,a6,0xb
1c0092ca:	8e55                	or	a2,a2,a3
1c0092cc:	01485513          	srli	a0,a6,0x14
1c0092d0:	00b71693          	slli	a3,a4,0xb
1c0092d4:	80000737          	lui	a4,0x80000
1c0092d8:	fff74713          	not	a4,a4
1c0092dc:	7ff57513          	andi	a0,a0,2047
1c0092e0:	7ff00593          	li	a1,2047
1c0092e4:	0c21                	addi	s8,s8,8
1c0092e6:	8e79                	and	a2,a2,a4
1c0092e8:	0ab504e3          	beq	a0,a1,1c009b90 <pos_libc_prf+0xd42>
1c0092ec:	04600593          	li	a1,70
1c0092f0:	00bd9463          	bne	s11,a1,1c0092f8 <pos_libc_prf+0x4aa>
1c0092f4:	06600d93          	li	s11,102
1c0092f8:	00d56733          	or	a4,a0,a3
1c0092fc:	8f51                	or	a4,a4,a2
1c0092fe:	7e070963          	beqz	a4,1c009af0 <pos_libc_prf+0xca2>
1c009302:	800005b7          	lui	a1,0x80000
1c009306:	c0250513          	addi	a0,a0,-1022
1c00930a:	8dd1                	or	a1,a1,a2
1c00930c:	26084ae3          	bltz	a6,1c009d80 <pos_libc_prf+0xf32>
1c009310:	4852                	lw	a6,20(sp)
1c009312:	220808e3          	beqz	a6,1c009d42 <pos_libc_prf+0xef4>
1c009316:	02b00713          	li	a4,43
1c00931a:	02e10223          	sb	a4,36(sp)
1c00931e:	02510e93          	addi	t4,sp,37
1c009322:	5779                	li	a4,-2
1c009324:	4301                	li	t1,0
1c009326:	06e55763          	ble	a4,a0,1c009394 <pos_libc_prf+0x546>
1c00932a:	33333837          	lui	a6,0x33333
1c00932e:	800008b7          	lui	a7,0x80000
1c009332:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c009336:	fff8c893          	not	a7,a7
1c00933a:	5e79                	li	t3,-2
1c00933c:	a011                	j	1c009340 <pos_libc_prf+0x4f2>
1c00933e:	853e                	mv	a0,a5
1c009340:	01f59613          	slli	a2,a1,0x1f
1c009344:	0016d713          	srli	a4,a3,0x1
1c009348:	0016f793          	andi	a5,a3,1
1c00934c:	8f51                	or	a4,a4,a2
1c00934e:	00e786b3          	add	a3,a5,a4
1c009352:	00f6b7b3          	sltu	a5,a3,a5
1c009356:	8185                	srli	a1,a1,0x1
1c009358:	95be                	add	a1,a1,a5
1c00935a:	00150793          	addi	a5,a0,1
1c00935e:	feb860e3          	bltu	a6,a1,1c00933e <pos_libc_prf+0x4f0>
1c009362:	00269613          	slli	a2,a3,0x2
1c009366:	01e6df13          	srli	t5,a3,0x1e
1c00936a:	00259713          	slli	a4,a1,0x2
1c00936e:	96b2                	add	a3,a3,a2
1c009370:	00ef6733          	or	a4,t5,a4
1c009374:	95ba                	add	a1,a1,a4
1c009376:	00c6b633          	sltu	a2,a3,a2
1c00937a:	95b2                	add	a1,a1,a2
1c00937c:	01f6d713          	srli	a4,a3,0x1f
1c009380:	0509                	addi	a0,a0,2
1c009382:	137d                	addi	t1,t1,-1
1c009384:	01159663          	bne	a1,a7,1c009390 <pos_libc_prf+0x542>
1c009388:	0686                	slli	a3,a3,0x1
1c00938a:	ffe76593          	ori	a1,a4,-2
1c00938e:	853e                	mv	a0,a5
1c009390:	fbc548e3          	blt	a0,t3,1c009340 <pos_libc_prf+0x4f2>
1c009394:	06a05563          	blez	a0,1c0093fe <pos_libc_prf+0x5b0>
1c009398:	800008b7          	lui	a7,0x80000
1c00939c:	4e15                	li	t3,5
1c00939e:	fff8c893          	not	a7,a7
1c0093a2:	00268613          	addi	a2,a3,2
1c0093a6:	00d636b3          	sltu	a3,a2,a3
1c0093aa:	95b6                	add	a1,a1,a3
1c0093ac:	03c5d7b3          	divu	a5,a1,t3
1c0093b0:	00279713          	slli	a4,a5,0x2
1c0093b4:	973e                	add	a4,a4,a5
1c0093b6:	8d99                	sub	a1,a1,a4
1c0093b8:	01d59713          	slli	a4,a1,0x1d
1c0093bc:	00365593          	srli	a1,a2,0x3
1c0093c0:	8dd9                	or	a1,a1,a4
1c0093c2:	03c5d5b3          	divu	a1,a1,t3
1c0093c6:	00359693          	slli	a3,a1,0x3
1c0093ca:	00559713          	slli	a4,a1,0x5
1c0093ce:	9736                	add	a4,a4,a3
1c0093d0:	40e60733          	sub	a4,a2,a4
1c0093d4:	03c75733          	divu	a4,a4,t3
1c0093d8:	81f5                	srli	a1,a1,0x1d
1c0093da:	96ba                	add	a3,a3,a4
1c0093dc:	97ae                	add	a5,a5,a1
1c0093de:	00e6b733          	sltu	a4,a3,a4
1c0093e2:	00f705b3          	add	a1,a4,a5
1c0093e6:	157d                	addi	a0,a0,-1
1c0093e8:	0305                	addi	t1,t1,1
1c0093ea:	01f6d793          	srli	a5,a3,0x1f
1c0093ee:	0586                	slli	a1,a1,0x1
1c0093f0:	8ddd                	or	a1,a1,a5
1c0093f2:	0686                	slli	a3,a3,0x1
1c0093f4:	157d                	addi	a0,a0,-1
1c0093f6:	feb8fae3          	bleu	a1,a7,1c0093ea <pos_libc_prf+0x59c>
1c0093fa:	faa044e3          	bgtz	a0,1c0093a2 <pos_libc_prf+0x554>
1c0093fe:	4611                	li	a2,4
1c009400:	01f59713          	slli	a4,a1,0x1f
1c009404:	0016d793          	srli	a5,a3,0x1
1c009408:	8fd9                	or	a5,a5,a4
1c00940a:	8a85                	andi	a3,a3,1
1c00940c:	00f688b3          	add	a7,a3,a5
1c009410:	8185                	srli	a1,a1,0x1
1c009412:	00d8b6b3          	sltu	a3,a7,a3
1c009416:	00b68733          	add	a4,a3,a1
1c00941a:	0505                	addi	a0,a0,1
1c00941c:	86c6                	mv	a3,a7
1c00941e:	85ba                	mv	a1,a4
1c009420:	fec510e3          	bne	a0,a2,1c009400 <pos_libc_prf+0x5b2>
1c009424:	06700693          	li	a3,103
1c009428:	040a48e3          	bltz	s4,1c009c78 <pos_libc_prf+0xe2a>
1c00942c:	70dd8b63          	beq	s11,a3,1c009b42 <pos_libc_prf+0xcf4>
1c009430:	04700693          	li	a3,71
1c009434:	70dd8763          	beq	s11,a3,1c009b42 <pos_libc_prf+0xcf4>
1c009438:	06600693          	li	a3,102
1c00943c:	08dd89e3          	beq	s11,a3,1c009cce <pos_libc_prf+0xe80>
1c009440:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c009444:	46c1                	li	a3,16
1c009446:	01c6d363          	ble	t3,a3,1c00944c <pos_libc_prf+0x5fe>
1c00944a:	4e41                	li	t3,16
1c00944c:	1e7d                	addi	t3,t3,-1
1c00944e:	4f81                	li	t6,0
1c009450:	4681                	li	a3,0
1c009452:	08000637          	lui	a2,0x8000
1c009456:	4f15                	li	t5,5
1c009458:	52fd                	li	t0,-1
1c00945a:	00268593          	addi	a1,a3,2
1c00945e:	00d5b7b3          	sltu	a5,a1,a3
1c009462:	97b2                	add	a5,a5,a2
1c009464:	03e7d633          	divu	a2,a5,t5
1c009468:	00261693          	slli	a3,a2,0x2
1c00946c:	96b2                	add	a3,a3,a2
1c00946e:	8f95                	sub	a5,a5,a3
1c009470:	07f6                	slli	a5,a5,0x1d
1c009472:	0035d513          	srli	a0,a1,0x3
1c009476:	8d5d                	or	a0,a0,a5
1c009478:	03e55533          	divu	a0,a0,t5
1c00947c:	00351693          	slli	a3,a0,0x3
1c009480:	00551793          	slli	a5,a0,0x5
1c009484:	97b6                	add	a5,a5,a3
1c009486:	40f587b3          	sub	a5,a1,a5
1c00948a:	03e7d7b3          	divu	a5,a5,t5
1c00948e:	8175                	srli	a0,a0,0x1d
1c009490:	96be                	add	a3,a3,a5
1c009492:	00f6b7b3          	sltu	a5,a3,a5
1c009496:	962a                	add	a2,a2,a0
1c009498:	963e                	add	a2,a2,a5
1c00949a:	01f61513          	slli	a0,a2,0x1f
1c00949e:	0016d793          	srli	a5,a3,0x1
1c0094a2:	0016f593          	andi	a1,a3,1
1c0094a6:	8fc9                	or	a5,a5,a0
1c0094a8:	00f586b3          	add	a3,a1,a5
1c0094ac:	8205                	srli	a2,a2,0x1
1c0094ae:	00b6b7b3          	sltu	a5,a3,a1
1c0094b2:	1e7d                	addi	t3,t3,-1
1c0094b4:	963e                	add	a2,a2,a5
1c0094b6:	fa5e12e3          	bne	t3,t0,1c00945a <pos_libc_prf+0x60c>
1c0094ba:	96c6                	add	a3,a3,a7
1c0094bc:	963a                	add	a2,a2,a4
1c0094be:	0116b8b3          	sltu	a7,a3,a7
1c0094c2:	9646                	add	a2,a2,a7
1c0094c4:	f00005b7          	lui	a1,0xf0000
1c0094c8:	8df1                	and	a1,a1,a2
1c0094ca:	8736                	mv	a4,a3
1c0094cc:	cdb9                	beqz	a1,1c00952a <pos_libc_prf+0x6dc>
1c0094ce:	0689                	addi	a3,a3,2
1c0094d0:	00e6b733          	sltu	a4,a3,a4
1c0094d4:	963a                	add	a2,a2,a4
1c0094d6:	4815                	li	a6,5
1c0094d8:	03065533          	divu	a0,a2,a6
1c0094dc:	00251713          	slli	a4,a0,0x2
1c0094e0:	972a                	add	a4,a4,a0
1c0094e2:	8e19                	sub	a2,a2,a4
1c0094e4:	01d61713          	slli	a4,a2,0x1d
1c0094e8:	0036d593          	srli	a1,a3,0x3
1c0094ec:	8dd9                	or	a1,a1,a4
1c0094ee:	0305d5b3          	divu	a1,a1,a6
1c0094f2:	00359613          	slli	a2,a1,0x3
1c0094f6:	00559713          	slli	a4,a1,0x5
1c0094fa:	9732                	add	a4,a4,a2
1c0094fc:	40e68733          	sub	a4,a3,a4
1c009500:	03075733          	divu	a4,a4,a6
1c009504:	81f5                	srli	a1,a1,0x1d
1c009506:	963a                	add	a2,a2,a4
1c009508:	00e63733          	sltu	a4,a2,a4
1c00950c:	95aa                	add	a1,a1,a0
1c00950e:	00b706b3          	add	a3,a4,a1
1c009512:	01f69593          	slli	a1,a3,0x1f
1c009516:	00165713          	srli	a4,a2,0x1
1c00951a:	8f4d                	or	a4,a4,a1
1c00951c:	8a05                	andi	a2,a2,1
1c00951e:	9732                	add	a4,a4,a2
1c009520:	8285                	srli	a3,a3,0x1
1c009522:	00c73633          	sltu	a2,a4,a2
1c009526:	9636                	add	a2,a2,a3
1c009528:	0305                	addi	t1,t1,1
1c00952a:	001e8993          	addi	s3,t4,1
1c00952e:	06600693          	li	a3,102
1c009532:	85ce                	mv	a1,s3
1c009534:	6add8663          	beq	s11,a3,1c009be0 <pos_libc_prf+0xd92>
1c009538:	00271693          	slli	a3,a4,0x2
1c00953c:	01e75593          	srli	a1,a4,0x1e
1c009540:	00261513          	slli	a0,a2,0x2
1c009544:	9736                	add	a4,a4,a3
1c009546:	8d4d                	or	a0,a0,a1
1c009548:	962a                	add	a2,a2,a0
1c00954a:	00d735b3          	sltu	a1,a4,a3
1c00954e:	95b2                	add	a1,a1,a2
1c009550:	01f75693          	srli	a3,a4,0x1f
1c009554:	0586                	slli	a1,a1,0x1
1c009556:	8dd5                	or	a1,a1,a3
1c009558:	01c5d693          	srli	a3,a1,0x1c
1c00955c:	03068613          	addi	a2,a3,48
1c009560:	00d036b3          	snez	a3,a3
1c009564:	10000537          	lui	a0,0x10000
1c009568:	40d30333          	sub	t1,t1,a3
1c00956c:	46b2                	lw	a3,12(sp)
1c00956e:	157d                	addi	a0,a0,-1
1c009570:	00ce8023          	sb	a2,0(t4)
1c009574:	0706                	slli	a4,a4,0x1
1c009576:	8de9                	and	a1,a1,a0
1c009578:	64068b63          	beqz	a3,1c009bce <pos_libc_prf+0xd80>
1c00957c:	02e00693          	li	a3,46
1c009580:	00de80a3          	sb	a3,1(t4)
1c009584:	002e8513          	addi	a0,t4,2
1c009588:	020a00e3          	beqz	s4,1c009da8 <pos_libc_prf+0xf5a>
1c00958c:	014509b3          	add	s3,a0,s4
1c009590:	48bd                	li	a7,15
1c009592:	03000e13          	li	t3,48
1c009596:	00271793          	slli	a5,a4,0x2
1c00959a:	01e75813          	srli	a6,a4,0x1e
1c00959e:	00259693          	slli	a3,a1,0x2
1c0095a2:	00e78633          	add	a2,a5,a4
1c0095a6:	00d866b3          	or	a3,a6,a3
1c0095aa:	96ae                	add	a3,a3,a1
1c0095ac:	00f637b3          	sltu	a5,a2,a5
1c0095b0:	97b6                	add	a5,a5,a3
1c0095b2:	0786                	slli	a5,a5,0x1
1c0095b4:	01f65693          	srli	a3,a2,0x1f
1c0095b8:	8fd5                	or	a5,a5,a3
1c0095ba:	01c7d693          	srli	a3,a5,0x1c
1c0095be:	03068693          	addi	a3,a3,48
1c0095c2:	0505                	addi	a0,a0,1
1c0095c4:	3b105663          	blez	a7,1c009970 <pos_libc_prf+0xb22>
1c0095c8:	10000837          	lui	a6,0x10000
1c0095cc:	187d                	addi	a6,a6,-1
1c0095ce:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c0095d2:	18fd                	addi	a7,a7,-1
1c0095d4:	00161713          	slli	a4,a2,0x1
1c0095d8:	0107f5b3          	and	a1,a5,a6
1c0095dc:	faa99de3          	bne	s3,a0,1c009596 <pos_libc_prf+0x748>
1c0095e0:	0c0f9263          	bnez	t6,1c0096a4 <pos_libc_prf+0x856>
1c0095e4:	fdfdf713          	andi	a4,s11,-33
1c0095e8:	04500693          	li	a3,69
1c0095ec:	02d71963          	bne	a4,a3,1c00961e <pos_libc_prf+0x7d0>
1c0095f0:	87ee                	mv	a5,s11
1c0095f2:	00f98023          	sb	a5,0(s3)
1c0095f6:	6a034763          	bltz	t1,1c009ca4 <pos_libc_prf+0xe56>
1c0095fa:	02b00793          	li	a5,43
1c0095fe:	00f980a3          	sb	a5,1(s3)
1c009602:	47a9                	li	a5,10
1c009604:	02f34733          	div	a4,t1,a5
1c009608:	02f367b3          	rem	a5,t1,a5
1c00960c:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c009610:	03078793          	addi	a5,a5,48
1c009614:	00e98123          	sb	a4,2(s3)
1c009618:	00f981a3          	sb	a5,3(s3)
1c00961c:	0991                	addi	s3,s3,4
1c00961e:	00098023          	sb	zero,0(s3)
1c009622:	419989b3          	sub	s3,s3,s9
1c009626:	48d2                	lw	a7,20(sp)
1c009628:	4662                	lw	a2,24(sp)
1c00962a:	00c8e8b3          	or	a7,a7,a2
1c00962e:	c646                	sw	a7,12(sp)
1c009630:	34089d63          	bnez	a7,1c00998a <pos_libc_prf+0xb3c>
1c009634:	02414703          	lbu	a4,36(sp)
1c009638:	02d00793          	li	a5,45
1c00963c:	34f70763          	beq	a4,a5,1c00998a <pos_libc_prf+0xb3c>
1c009640:	0c800793          	li	a5,200
1c009644:	ab37cbe3          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c009648:	9b29c2e3          	blt	s3,s2,1c008fec <pos_libc_prf+0x19e>
1c00964c:	b461                	j	1c0090d4 <pos_libc_prf+0x286>
1c00964e:	0585                	addi	a1,a1,1
1c009650:	00271793          	slli	a5,a4,0x2
1c009654:	01e75e13          	srli	t3,a4,0x1e
1c009658:	00261693          	slli	a3,a2,0x2
1c00965c:	00e788b3          	add	a7,a5,a4
1c009660:	00de66b3          	or	a3,t3,a3
1c009664:	96b2                	add	a3,a3,a2
1c009666:	00f8b7b3          	sltu	a5,a7,a5
1c00966a:	97b6                	add	a5,a5,a3
1c00966c:	0786                	slli	a5,a5,0x1
1c00966e:	01f8d693          	srli	a3,a7,0x1f
1c009672:	8fd5                	or	a5,a5,a3
1c009674:	01c7de13          	srli	t3,a5,0x1c
1c009678:	03000693          	li	a3,48
1c00967c:	00a05c63          	blez	a0,1c009694 <pos_libc_prf+0x846>
1c009680:	00189713          	slli	a4,a7,0x1
1c009684:	100008b7          	lui	a7,0x10000
1c009688:	18fd                	addi	a7,a7,-1
1c00968a:	030e0693          	addi	a3,t3,48
1c00968e:	157d                	addi	a0,a0,-1
1c009690:	0117f633          	and	a2,a5,a7
1c009694:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c009698:	fab99be3          	bne	s3,a1,1c00964e <pos_libc_prf+0x800>
1c00969c:	014809b3          	add	s3,a6,s4
1c0096a0:	f60f8fe3          	beqz	t6,1c00961e <pos_libc_prf+0x7d0>
1c0096a4:	03000613          	li	a2,48
1c0096a8:	a011                	j	1c0096ac <pos_libc_prf+0x85e>
1c0096aa:	89ba                	mv	s3,a4
1c0096ac:	fff9c683          	lbu	a3,-1(s3)
1c0096b0:	fff98713          	addi	a4,s3,-1
1c0096b4:	fec68be3          	beq	a3,a2,1c0096aa <pos_libc_prf+0x85c>
1c0096b8:	02e00613          	li	a2,46
1c0096bc:	f2c694e3          	bne	a3,a2,1c0095e4 <pos_libc_prf+0x796>
1c0096c0:	89ba                	mv	s3,a4
1c0096c2:	b70d                	j	1c0095e4 <pos_libc_prf+0x796>
1c0096c4:	06300713          	li	a4,99
1c0096c8:	16ed8863          	beq	s11,a4,1c009838 <pos_libc_prf+0x9ea>
1c0096cc:	0db74363          	blt	a4,s11,1c009792 <pos_libc_prf+0x944>
1c0096d0:	05800713          	li	a4,88
1c0096d4:	28ed9763          	bne	s11,a4,1c009962 <pos_libc_prf+0xb14>
1c0096d8:	48b2                	lw	a7,12(sp)
1c0096da:	004c0813          	addi	a6,s8,4
1c0096de:	000c2583          	lw	a1,0(s8)
1c0096e2:	3c088a63          	beqz	a7,1c009ab6 <pos_libc_prf+0xc68>
1c0096e6:	7761                	lui	a4,0xffff8
1c0096e8:	83074713          	xori	a4,a4,-2000
1c0096ec:	02e11223          	sh	a4,36(sp)
1c0096f0:	4889                	li	a7,2
1c0096f2:	02610693          	addi	a3,sp,38
1c0096f6:	8736                	mv	a4,a3
1c0096f8:	4e25                	li	t3,9
1c0096fa:	00f5f613          	andi	a2,a1,15
1c0096fe:	0ff67793          	andi	a5,a2,255
1c009702:	03078513          	addi	a0,a5,48
1c009706:	8191                	srli	a1,a1,0x4
1c009708:	05778793          	addi	a5,a5,87
1c00970c:	0705                	addi	a4,a4,1
1c00970e:	06ce6a63          	bltu	t3,a2,1c009782 <pos_libc_prf+0x934>
1c009712:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c009716:	f1f5                	bnez	a1,1c0096fa <pos_libc_prf+0x8ac>
1c009718:	40d709b3          	sub	s3,a4,a3
1c00971c:	0149db63          	ble	s4,s3,1c009732 <pos_libc_prf+0x8e4>
1c009720:	03000613          	li	a2,48
1c009724:	0705                	addi	a4,a4,1
1c009726:	fec70fa3          	sb	a2,-1(a4)
1c00972a:	40d709b3          	sub	s3,a4,a3
1c00972e:	ff49cbe3          	blt	s3,s4,1c009724 <pos_libc_prf+0x8d6>
1c009732:	00070023          	sb	zero,0(a4)
1c009736:	177d                	addi	a4,a4,-1
1c009738:	00e6fe63          	bleu	a4,a3,1c009754 <pos_libc_prf+0x906>
1c00973c:	0006c603          	lbu	a2,0(a3)
1c009740:	00074783          	lbu	a5,0(a4)
1c009744:	00c70023          	sb	a2,0(a4)
1c009748:	00f68023          	sb	a5,0(a3)
1c00974c:	177d                	addi	a4,a4,-1
1c00974e:	0685                	addi	a3,a3,1
1c009750:	fee6e6e3          	bltu	a3,a4,1c00973c <pos_libc_prf+0x8ee>
1c009754:	05800713          	li	a4,88
1c009758:	36ed8263          	beq	s11,a4,1c009abc <pos_libc_prf+0xc6e>
1c00975c:	46b2                	lw	a3,12(sp)
1c00975e:	99c6                	add	s3,s3,a7
1c009760:	c299                	beqz	a3,1c009766 <pos_libc_prf+0x918>
1c009762:	4709                	li	a4,2
1c009764:	c63a                	sw	a4,12(sp)
1c009766:	57fd                	li	a5,-1
1c009768:	3afa0263          	beq	s4,a5,1c009b0c <pos_libc_prf+0xcbe>
1c00976c:	0c800793          	li	a5,200
1c009770:	9937c5e3          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c009774:	02000793          	li	a5,32
1c009778:	c83e                	sw	a5,16(sp)
1c00977a:	8c42                	mv	s8,a6
1c00977c:	8729c8e3          	blt	s3,s2,1c008fec <pos_libc_prf+0x19e>
1c009780:	ba91                	j	1c0090d4 <pos_libc_prf+0x286>
1c009782:	fef70fa3          	sb	a5,-1(a4)
1c009786:	f9b5                	bnez	a1,1c0096fa <pos_libc_prf+0x8ac>
1c009788:	bf41                	j	1c009718 <pos_libc_prf+0x8ca>
1c00978a:	06900713          	li	a4,105
1c00978e:	1ced9a63          	bne	s11,a4,1c009962 <pos_libc_prf+0xb14>
1c009792:	000c2583          	lw	a1,0(s8)
1c009796:	0c11                	addi	s8,s8,4
1c009798:	3805c863          	bltz	a1,1c009b28 <pos_libc_prf+0xcda>
1c00979c:	48d2                	lw	a7,20(sp)
1c00979e:	872e                	mv	a4,a1
1c0097a0:	36089d63          	bnez	a7,1c009b1a <pos_libc_prf+0xccc>
1c0097a4:	4662                	lw	a2,24(sp)
1c0097a6:	87e6                	mv	a5,s9
1c0097a8:	c619                	beqz	a2,1c0097b6 <pos_libc_prf+0x968>
1c0097aa:	02000793          	li	a5,32
1c0097ae:	02f10223          	sb	a5,36(sp)
1c0097b2:	02510793          	addi	a5,sp,37
1c0097b6:	89be                	mv	s3,a5
1c0097b8:	4629                	li	a2,10
1c0097ba:	02c776b3          	remu	a3,a4,a2
1c0097be:	02c75733          	divu	a4,a4,a2
1c0097c2:	0985                	addi	s3,s3,1
1c0097c4:	03068693          	addi	a3,a3,48
1c0097c8:	fed98fa3          	sb	a3,-1(s3)
1c0097cc:	f77d                	bnez	a4,1c0097ba <pos_libc_prf+0x96c>
1c0097ce:	40f98733          	sub	a4,s3,a5
1c0097d2:	01475b63          	ble	s4,a4,1c0097e8 <pos_libc_prf+0x99a>
1c0097d6:	03000693          	li	a3,48
1c0097da:	0985                	addi	s3,s3,1
1c0097dc:	fed98fa3          	sb	a3,-1(s3)
1c0097e0:	40f98733          	sub	a4,s3,a5
1c0097e4:	ff474be3          	blt	a4,s4,1c0097da <pos_libc_prf+0x98c>
1c0097e8:	00098023          	sb	zero,0(s3)
1c0097ec:	fff98713          	addi	a4,s3,-1
1c0097f0:	00e7fe63          	bleu	a4,a5,1c00980c <pos_libc_prf+0x9be>
1c0097f4:	0007c603          	lbu	a2,0(a5)
1c0097f8:	00074683          	lbu	a3,0(a4)
1c0097fc:	00c70023          	sb	a2,0(a4)
1c009800:	00d78023          	sb	a3,0(a5)
1c009804:	177d                	addi	a4,a4,-1
1c009806:	0785                	addi	a5,a5,1
1c009808:	fee7e6e3          	bltu	a5,a4,1c0097f4 <pos_libc_prf+0x9a6>
1c00980c:	46d2                	lw	a3,20(sp)
1c00980e:	4762                	lw	a4,24(sp)
1c009810:	419989b3          	sub	s3,s3,s9
1c009814:	8ed9                	or	a3,a3,a4
1c009816:	c636                	sw	a3,12(sp)
1c009818:	e299                	bnez	a3,1c00981e <pos_libc_prf+0x9d0>
1c00981a:	81fd                	srli	a1,a1,0x1f
1c00981c:	c62e                	sw	a1,12(sp)
1c00981e:	57fd                	li	a5,-1
1c009820:	e2fa00e3          	beq	s4,a5,1c009640 <pos_libc_prf+0x7f2>
1c009824:	0c800793          	li	a5,200
1c009828:	8d37c9e3          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c00982c:	02000793          	li	a5,32
1c009830:	c83e                	sw	a5,16(sp)
1c009832:	fb29cd63          	blt	s3,s2,1c008fec <pos_libc_prf+0x19e>
1c009836:	b879                	j	1c0090d4 <pos_libc_prf+0x286>
1c009838:	000c2783          	lw	a5,0(s8)
1c00983c:	020102a3          	sb	zero,37(sp)
1c009840:	02f10223          	sb	a5,36(sp)
1c009844:	0c11                	addi	s8,s8,4
1c009846:	4985                	li	s3,1
1c009848:	f9eff06f          	j	1c008fe6 <pos_libc_prf+0x198>
1c00984c:	000c2703          	lw	a4,0(s8)
1c009850:	87e6                	mv	a5,s9
1c009852:	0c11                	addi	s8,s8,4
1c009854:	4629                	li	a2,10
1c009856:	02c776b3          	remu	a3,a4,a2
1c00985a:	02c75733          	divu	a4,a4,a2
1c00985e:	0785                	addi	a5,a5,1
1c009860:	03068693          	addi	a3,a3,48
1c009864:	fed78fa3          	sb	a3,-1(a5)
1c009868:	f77d                	bnez	a4,1c009856 <pos_libc_prf+0xa08>
1c00986a:	419789b3          	sub	s3,a5,s9
1c00986e:	0149db63          	ble	s4,s3,1c009884 <pos_libc_prf+0xa36>
1c009872:	03000713          	li	a4,48
1c009876:	0785                	addi	a5,a5,1
1c009878:	fee78fa3          	sb	a4,-1(a5)
1c00987c:	419789b3          	sub	s3,a5,s9
1c009880:	ff49cbe3          	blt	s3,s4,1c009876 <pos_libc_prf+0xa28>
1c009884:	00078023          	sb	zero,0(a5)
1c009888:	17fd                	addi	a5,a5,-1
1c00988a:	00fcff63          	bleu	a5,s9,1c0098a8 <pos_libc_prf+0xa5a>
1c00988e:	8766                	mv	a4,s9
1c009890:	00074603          	lbu	a2,0(a4)
1c009894:	0007c683          	lbu	a3,0(a5)
1c009898:	00c78023          	sb	a2,0(a5)
1c00989c:	00d70023          	sb	a3,0(a4)
1c0098a0:	17fd                	addi	a5,a5,-1
1c0098a2:	0705                	addi	a4,a4,1
1c0098a4:	fef766e3          	bltu	a4,a5,1c009890 <pos_libc_prf+0xa42>
1c0098a8:	57fd                	li	a5,-1
1c0098aa:	0cfa0a63          	beq	s4,a5,1c00997e <pos_libc_prf+0xb30>
1c0098ae:	0c800793          	li	a5,200
1c0098b2:	8537c4e3          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c0098b6:	02000813          	li	a6,32
1c0098ba:	c602                	sw	zero,12(sp)
1c0098bc:	c842                	sw	a6,16(sp)
1c0098be:	ba45                	j	1c00926e <pos_libc_prf+0x420>
1c0098c0:	77e1                	lui	a5,0xffff8
1c0098c2:	8307c793          	xori	a5,a5,-2000
1c0098c6:	02610713          	addi	a4,sp,38
1c0098ca:	000c2603          	lw	a2,0(s8)
1c0098ce:	02f11223          	sh	a5,36(sp)
1c0098d2:	0c11                	addi	s8,s8,4
1c0098d4:	87ba                	mv	a5,a4
1c0098d6:	4825                	li	a6,9
1c0098d8:	00f67593          	andi	a1,a2,15
1c0098dc:	0ff5f693          	andi	a3,a1,255
1c0098e0:	03068513          	addi	a0,a3,48
1c0098e4:	8211                	srli	a2,a2,0x4
1c0098e6:	05768693          	addi	a3,a3,87
1c0098ea:	0785                	addi	a5,a5,1
1c0098ec:	06b86163          	bltu	a6,a1,1c00994e <pos_libc_prf+0xb00>
1c0098f0:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c0098f4:	f275                	bnez	a2,1c0098d8 <pos_libc_prf+0xa8a>
1c0098f6:	40e789b3          	sub	s3,a5,a4
1c0098fa:	469d                	li	a3,7
1c0098fc:	0136cb63          	blt	a3,s3,1c009912 <pos_libc_prf+0xac4>
1c009900:	03000613          	li	a2,48
1c009904:	0785                	addi	a5,a5,1
1c009906:	fec78fa3          	sb	a2,-1(a5)
1c00990a:	40e789b3          	sub	s3,a5,a4
1c00990e:	ff36dbe3          	ble	s3,a3,1c009904 <pos_libc_prf+0xab6>
1c009912:	00078023          	sb	zero,0(a5)
1c009916:	17fd                	addi	a5,a5,-1
1c009918:	00f77e63          	bleu	a5,a4,1c009934 <pos_libc_prf+0xae6>
1c00991c:	00074603          	lbu	a2,0(a4)
1c009920:	0007c683          	lbu	a3,0(a5)
1c009924:	00c78023          	sb	a2,0(a5)
1c009928:	00d70023          	sb	a3,0(a4)
1c00992c:	17fd                	addi	a5,a5,-1
1c00992e:	0705                	addi	a4,a4,1
1c009930:	fef766e3          	bltu	a4,a5,1c00991c <pos_libc_prf+0xace>
1c009934:	57fd                	li	a5,-1
1c009936:	0989                	addi	s3,s3,2
1c009938:	04fa0363          	beq	s4,a5,1c00997e <pos_libc_prf+0xb30>
1c00993c:	0c800793          	li	a5,200
1c009940:	fb37cd63          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c009944:	02000893          	li	a7,32
1c009948:	c602                	sw	zero,12(sp)
1c00994a:	c846                	sw	a7,16(sp)
1c00994c:	b20d                	j	1c00926e <pos_libc_prf+0x420>
1c00994e:	fed78fa3          	sb	a3,-1(a5)
1c009952:	f259                	bnez	a2,1c0098d8 <pos_libc_prf+0xa8a>
1c009954:	b74d                	j	1c0098f6 <pos_libc_prf+0xaa8>
1c009956:	000c2783          	lw	a5,0(s8)
1c00995a:	0c11                	addi	s8,s8,4
1c00995c:	c380                	sw	s0,0(a5)
1c00995e:	d36ff06f          	j	1c008e94 <pos_libc_prf+0x46>
1c009962:	0c800713          	li	a4,200
1c009966:	d3b75763          	ble	s11,a4,1c008e94 <pos_libc_prf+0x46>
1c00996a:	547d                	li	s0,-1
1c00996c:	d4cff06f          	j	1c008eb8 <pos_libc_prf+0x6a>
1c009970:	ffc50fa3          	sb	t3,-1(a0)
1c009974:	c2a991e3          	bne	s3,a0,1c009596 <pos_libc_prf+0x748>
1c009978:	c60f86e3          	beqz	t6,1c0095e4 <pos_libc_prf+0x796>
1c00997c:	b325                	j	1c0096a4 <pos_libc_prf+0x856>
1c00997e:	0c800793          	li	a5,200
1c009982:	f737cc63          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c009986:	c602                	sw	zero,12(sp)
1c009988:	b0dd                	j	1c00926e <pos_libc_prf+0x420>
1c00998a:	0c800793          	li	a5,200
1c00998e:	f737c663          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c009992:	4705                	li	a4,1
1c009994:	c63a                	sw	a4,12(sp)
1c009996:	b8e1                	j	1c00926e <pos_libc_prf+0x420>
1c009998:	41390a33          	sub	s4,s2,s3
1c00999c:	00198613          	addi	a2,s3,1
1c0099a0:	85e6                	mv	a1,s9
1c0099a2:	014c8533          	add	a0,s9,s4
1c0099a6:	a72ff0ef          	jal	ra,1c008c18 <memmove>
1c0099aa:	46c2                	lw	a3,16(sp)
1c0099ac:	02000793          	li	a5,32
1c0099b0:	30f68163          	beq	a3,a5,1c009cb2 <pos_libc_prf+0xe64>
1c0099b4:	4732                	lw	a4,12(sp)
1c0099b6:	89ca                	mv	s3,s2
1c0099b8:	9a3a                	add	s4,s4,a4
1c0099ba:	f1475d63          	ble	s4,a4,1c0090d4 <pos_libc_prf+0x286>
1c0099be:	4832                	lw	a6,12(sp)
1c0099c0:	4715                	li	a4,5
1c0099c2:	010c87b3          	add	a5,s9,a6
1c0099c6:	40f007b3          	neg	a5,a5
1c0099ca:	8b8d                	andi	a5,a5,3
1c0099cc:	00378693          	addi	a3,a5,3
1c0099d0:	410a05b3          	sub	a1,s4,a6
1c0099d4:	00e6f363          	bleu	a4,a3,1c0099da <pos_libc_prf+0xb8c>
1c0099d8:	4695                	li	a3,5
1c0099da:	48b2                	lw	a7,12(sp)
1c0099dc:	fffa0713          	addi	a4,s4,-1
1c0099e0:	41170733          	sub	a4,a4,a7
1c0099e4:	06d76b63          	bltu	a4,a3,1c009a5a <pos_libc_prf+0xc0c>
1c0099e8:	86c6                	mv	a3,a7
1c0099ea:	cb9d                	beqz	a5,1c009a20 <pos_libc_prf+0xbd2>
1c0099ec:	46c2                	lw	a3,16(sp)
1c0099ee:	1988                	addi	a0,sp,240
1c0099f0:	01150733          	add	a4,a0,a7
1c0099f4:	f2d70a23          	sb	a3,-204(a4)
1c0099f8:	4705                	li	a4,1
1c0099fa:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c0099fe:	02e78163          	beq	a5,a4,1c009a20 <pos_libc_prf+0xbd2>
1c009a02:	4742                	lw	a4,16(sp)
1c009a04:	96aa                	add	a3,a3,a0
1c009a06:	f2e68a23          	sb	a4,-204(a3)
1c009a0a:	470d                	li	a4,3
1c009a0c:	00288693          	addi	a3,a7,2
1c009a10:	00e79863          	bne	a5,a4,1c009a20 <pos_libc_prf+0xbd2>
1c009a14:	4842                	lw	a6,16(sp)
1c009a16:	96aa                	add	a3,a3,a0
1c009a18:	f3068a23          	sb	a6,-204(a3)
1c009a1c:	00388693          	addi	a3,a7,3
1c009a20:	48c2                	lw	a7,16(sp)
1c009a22:	4832                	lw	a6,12(sp)
1c009a24:	00889713          	slli	a4,a7,0x8
1c009a28:	01089513          	slli	a0,a7,0x10
1c009a2c:	00e8e733          	or	a4,a7,a4
1c009a30:	8d9d                	sub	a1,a1,a5
1c009a32:	01889613          	slli	a2,a7,0x18
1c009a36:	8f49                	or	a4,a4,a0
1c009a38:	97c2                	add	a5,a5,a6
1c009a3a:	8f51                	or	a4,a4,a2
1c009a3c:	0025d513          	srli	a0,a1,0x2
1c009a40:	97e6                	add	a5,a5,s9
1c009a42:	4601                	li	a2,0
1c009a44:	c398                	sw	a4,0(a5)
1c009a46:	0605                	addi	a2,a2,1
1c009a48:	0791                	addi	a5,a5,4
1c009a4a:	fea66de3          	bltu	a2,a0,1c009a44 <pos_libc_prf+0xbf6>
1c009a4e:	ffc5f793          	andi	a5,a1,-4
1c009a52:	96be                	add	a3,a3,a5
1c009a54:	c636                	sw	a3,12(sp)
1c009a56:	e6b78e63          	beq	a5,a1,1c0090d2 <pos_libc_prf+0x284>
1c009a5a:	46b2                	lw	a3,12(sp)
1c009a5c:	0f010893          	addi	a7,sp,240
1c009a60:	4742                	lw	a4,16(sp)
1c009a62:	00d887b3          	add	a5,a7,a3
1c009a66:	f2e78a23          	sb	a4,-204(a5)
1c009a6a:	00168793          	addi	a5,a3,1
1c009a6e:	e747d263          	ble	s4,a5,1c0090d2 <pos_libc_prf+0x284>
1c009a72:	97c6                	add	a5,a5,a7
1c009a74:	f2e78a23          	sb	a4,-204(a5)
1c009a78:	00268793          	addi	a5,a3,2
1c009a7c:	e547db63          	ble	s4,a5,1c0090d2 <pos_libc_prf+0x284>
1c009a80:	97c6                	add	a5,a5,a7
1c009a82:	f2e78a23          	sb	a4,-204(a5)
1c009a86:	00368793          	addi	a5,a3,3
1c009a8a:	e547d463          	ble	s4,a5,1c0090d2 <pos_libc_prf+0x284>
1c009a8e:	97c6                	add	a5,a5,a7
1c009a90:	f2e78a23          	sb	a4,-204(a5)
1c009a94:	00468793          	addi	a5,a3,4
1c009a98:	e347dd63          	ble	s4,a5,1c0090d2 <pos_libc_prf+0x284>
1c009a9c:	97c6                	add	a5,a5,a7
1c009a9e:	f2e78a23          	sb	a4,-204(a5)
1c009aa2:	00568a93          	addi	s5,a3,5
1c009aa6:	e34ad663          	ble	s4,s5,1c0090d2 <pos_libc_prf+0x284>
1c009aaa:	9ac6                	add	s5,s5,a7
1c009aac:	f2ea8a23          	sb	a4,-204(s5)
1c009ab0:	89ca                	mv	s3,s2
1c009ab2:	e22ff06f          	j	1c0090d4 <pos_libc_prf+0x286>
1c009ab6:	4881                	li	a7,0
1c009ab8:	1054                	addi	a3,sp,36
1c009aba:	b935                	j	1c0096f6 <pos_libc_prf+0x8a8>
1c009abc:	02414783          	lbu	a5,36(sp)
1c009ac0:	1058                	addi	a4,sp,36
1c009ac2:	46e5                	li	a3,25
1c009ac4:	c8078ce3          	beqz	a5,1c00975c <pos_libc_prf+0x90e>
1c009ac8:	fe078613          	addi	a2,a5,-32
1c009acc:	f9f78793          	addi	a5,a5,-97
1c009ad0:	0ff7f793          	andi	a5,a5,255
1c009ad4:	00f6e963          	bltu	a3,a5,1c009ae6 <pos_libc_prf+0xc98>
1c009ad8:	00c70023          	sb	a2,0(a4)
1c009adc:	0705                	addi	a4,a4,1
1c009ade:	00074783          	lbu	a5,0(a4)
1c009ae2:	f3fd                	bnez	a5,1c009ac8 <pos_libc_prf+0xc7a>
1c009ae4:	b9a5                	j	1c00975c <pos_libc_prf+0x90e>
1c009ae6:	0705                	addi	a4,a4,1
1c009ae8:	00074783          	lbu	a5,0(a4)
1c009aec:	fff1                	bnez	a5,1c009ac8 <pos_libc_prf+0xc7a>
1c009aee:	b1bd                	j	1c00975c <pos_libc_prf+0x90e>
1c009af0:	47d2                	lw	a5,20(sp)
1c009af2:	20078263          	beqz	a5,1c009cf6 <pos_libc_prf+0xea8>
1c009af6:	02b00713          	li	a4,43
1c009afa:	02e10223          	sb	a4,36(sp)
1c009afe:	02510e93          	addi	t4,sp,37
1c009b02:	4301                	li	t1,0
1c009b04:	4501                	li	a0,0
1c009b06:	4681                	li	a3,0
1c009b08:	4581                	li	a1,0
1c009b0a:	b8d5                	j	1c0093fe <pos_libc_prf+0x5b0>
1c009b0c:	0c800793          	li	a5,200
1c009b10:	df37c563          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c009b14:	8c42                	mv	s8,a6
1c009b16:	f58ff06f          	j	1c00926e <pos_libc_prf+0x420>
1c009b1a:	02b00793          	li	a5,43
1c009b1e:	02f10223          	sb	a5,36(sp)
1c009b22:	02510793          	addi	a5,sp,37
1c009b26:	b941                	j	1c0097b6 <pos_libc_prf+0x968>
1c009b28:	02d00793          	li	a5,45
1c009b2c:	02f10223          	sb	a5,36(sp)
1c009b30:	800007b7          	lui	a5,0x80000
1c009b34:	22f58363          	beq	a1,a5,1c009d5a <pos_libc_prf+0xf0c>
1c009b38:	40b00733          	neg	a4,a1
1c009b3c:	02510793          	addi	a5,sp,37
1c009b40:	b99d                	j	1c0097b6 <pos_libc_prf+0x968>
1c009b42:	47b2                	lw	a5,12(sp)
1c009b44:	4f81                	li	t6,0
1c009b46:	e399                	bnez	a5,1c009b4c <pos_libc_prf+0xcfe>
1c009b48:	01403fb3          	snez	t6,s4
1c009b4c:	56f5                	li	a3,-3
1c009b4e:	001a0e13          	addi	t3,s4,1
1c009b52:	00d34463          	blt	t1,a3,1c009b5a <pos_libc_prf+0xd0c>
1c009b56:	166e5d63          	ble	t1,t3,1c009cd0 <pos_libc_prf+0xe82>
1c009b5a:	46c1                	li	a3,16
1c009b5c:	01c6d363          	ble	t3,a3,1c009b62 <pos_libc_prf+0xd14>
1c009b60:	4e41                	li	t3,16
1c009b62:	06700693          	li	a3,103
1c009b66:	1e7d                	addi	t3,t3,-1
1c009b68:	1add8963          	beq	s11,a3,1c009d1a <pos_libc_prf+0xecc>
1c009b6c:	04500d93          	li	s11,69
1c009b70:	b0c5                	j	1c009450 <pos_libc_prf+0x602>
1c009b72:	020102a3          	sb	zero,37(sp)
1c009b76:	57fd                	li	a5,-1
1c009b78:	89ba                	mv	s3,a4
1c009b7a:	8c2a                	mv	s8,a0
1c009b7c:	c6fa0563          	beq	s4,a5,1c008fe6 <pos_libc_prf+0x198>
1c009b80:	02000813          	li	a6,32
1c009b84:	c842                	sw	a6,16(sp)
1c009b86:	c60ff06f          	j	1c008fe6 <pos_libc_prf+0x198>
1c009b8a:	89b6                	mv	s3,a3
1c009b8c:	bdeff06f          	j	1c008f6a <pos_libc_prf+0x11c>
1c009b90:	8766                	mv	a4,s9
1c009b92:	1c084c63          	bltz	a6,1c009d6a <pos_libc_prf+0xf1c>
1c009b96:	8e55                	or	a2,a2,a3
1c009b98:	fbfd8793          	addi	a5,s11,-65
1c009b9c:	00370993          	addi	s3,a4,3
1c009ba0:	46e5                	li	a3,25
1c009ba2:	10061a63          	bnez	a2,1c009cb6 <pos_libc_prf+0xe68>
1c009ba6:	16f6ee63          	bltu	a3,a5,1c009d22 <pos_libc_prf+0xed4>
1c009baa:	6795                	lui	a5,0x5
1c009bac:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c009bb0:	00f71023          	sh	a5,0(a4)
1c009bb4:	04600793          	li	a5,70
1c009bb8:	00f70123          	sb	a5,2(a4)
1c009bbc:	000701a3          	sb	zero,3(a4)
1c009bc0:	419989b3          	sub	s3,s3,s9
1c009bc4:	b48d                	j	1c009626 <pos_libc_prf+0x7d8>
1c009bc6:	85e6                	mv	a1,s9
1c009bc8:	8766                	mv	a4,s9
1c009bca:	e38ff06f          	j	1c009202 <pos_libc_prf+0x3b4>
1c009bce:	a00a09e3          	beqz	s4,1c0095e0 <pos_libc_prf+0x792>
1c009bd2:	02e00693          	li	a3,46
1c009bd6:	002e8513          	addi	a0,t4,2
1c009bda:	00de80a3          	sb	a3,1(t4)
1c009bde:	b27d                	j	1c00958c <pos_libc_prf+0x73e>
1c009be0:	14605b63          	blez	t1,1c009d36 <pos_libc_prf+0xee8>
1c009be4:	006e89b3          	add	s3,t4,t1
1c009be8:	4541                	li	a0,16
1c009bea:	03000893          	li	a7,48
1c009bee:	00271793          	slli	a5,a4,0x2
1c009bf2:	01e75313          	srli	t1,a4,0x1e
1c009bf6:	00261693          	slli	a3,a2,0x2
1c009bfa:	00e78833          	add	a6,a5,a4
1c009bfe:	00d366b3          	or	a3,t1,a3
1c009c02:	96b2                	add	a3,a3,a2
1c009c04:	00f837b3          	sltu	a5,a6,a5
1c009c08:	97b6                	add	a5,a5,a3
1c009c0a:	0786                	slli	a5,a5,0x1
1c009c0c:	01f85693          	srli	a3,a6,0x1f
1c009c10:	8fd5                	or	a5,a5,a3
1c009c12:	01c7d693          	srli	a3,a5,0x1c
1c009c16:	03068693          	addi	a3,a3,48
1c009c1a:	02a05063          	blez	a0,1c009c3a <pos_libc_prf+0xdec>
1c009c1e:	00181713          	slli	a4,a6,0x1
1c009c22:	10000837          	lui	a6,0x10000
1c009c26:	187d                	addi	a6,a6,-1
1c009c28:	fed58fa3          	sb	a3,-1(a1)
1c009c2c:	157d                	addi	a0,a0,-1
1c009c2e:	0107f633          	and	a2,a5,a6
1c009c32:	00b98863          	beq	s3,a1,1c009c42 <pos_libc_prf+0xdf4>
1c009c36:	0585                	addi	a1,a1,1
1c009c38:	bf5d                	j	1c009bee <pos_libc_prf+0xda0>
1c009c3a:	ff158fa3          	sb	a7,-1(a1)
1c009c3e:	feb99ce3          	bne	s3,a1,1c009c36 <pos_libc_prf+0xde8>
1c009c42:	4301                	li	t1,0
1c009c44:	48b2                	lw	a7,12(sp)
1c009c46:	00089463          	bnez	a7,1c009c4e <pos_libc_prf+0xe00>
1c009c4a:	a40a0be3          	beqz	s4,1c0096a0 <pos_libc_prf+0x852>
1c009c4e:	00198813          	addi	a6,s3,1
1c009c52:	001a0693          	addi	a3,s4,1
1c009c56:	02e00593          	li	a1,46
1c009c5a:	00b98023          	sb	a1,0(s3)
1c009c5e:	99b6                	add	s3,s3,a3
1c009c60:	85c2                	mv	a1,a6
1c009c62:	03000693          	li	a3,48
1c009c66:	a2b98be3          	beq	s3,a1,1c00969c <pos_libc_prf+0x84e>
1c009c6a:	0585                	addi	a1,a1,1
1c009c6c:	9e0302e3          	beqz	t1,1c009650 <pos_libc_prf+0x802>
1c009c70:	fed58fa3          	sb	a3,-1(a1)
1c009c74:	0305                	addi	t1,t1,1
1c009c76:	bfc5                	j	1c009c66 <pos_libc_prf+0xe18>
1c009c78:	4a19                	li	s4,6
1c009c7a:	fadd9b63          	bne	s11,a3,1c009430 <pos_libc_prf+0x5e2>
1c009c7e:	46b2                	lw	a3,12(sp)
1c009c80:	57f5                	li	a5,-3
1c009c82:	0016cf93          	xori	t6,a3,1
1c009c86:	08f35663          	ble	a5,t1,1c009d12 <pos_libc_prf+0xec4>
1c009c8a:	06500d93          	li	s11,101
1c009c8e:	4e19                	li	t3,6
1c009c90:	fc0ff06f          	j	1c009450 <pos_libc_prf+0x602>
1c009c94:	0c800793          	li	a5,200
1c009c98:	c737c163          	blt	a5,s3,1c0090fa <pos_libc_prf+0x2ac>
1c009c9c:	8c2a                	mv	s8,a0
1c009c9e:	c602                	sw	zero,12(sp)
1c009ca0:	dceff06f          	j	1c00926e <pos_libc_prf+0x420>
1c009ca4:	02d00793          	li	a5,45
1c009ca8:	40600333          	neg	t1,t1
1c009cac:	00f980a3          	sb	a5,1(s3)
1c009cb0:	ba89                	j	1c009602 <pos_libc_prf+0x7b4>
1c009cb2:	c602                	sw	zero,12(sp)
1c009cb4:	b329                	j	1c0099be <pos_libc_prf+0xb70>
1c009cb6:	0cf6ed63          	bltu	a3,a5,1c009d90 <pos_libc_prf+0xf42>
1c009cba:	6791                	lui	a5,0x4
1c009cbc:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c009cc0:	00f71023          	sh	a5,0(a4)
1c009cc4:	04e00793          	li	a5,78
1c009cc8:	00f70123          	sb	a5,2(a4)
1c009ccc:	bdc5                	j	1c009bbc <pos_libc_prf+0xd6e>
1c009cce:	4f81                	li	t6,0
1c009cd0:	014307b3          	add	a5,t1,s4
1c009cd4:	0807c863          	bltz	a5,1c009d64 <pos_libc_prf+0xf16>
1c009cd8:	46c1                	li	a3,16
1c009cda:	8e3e                	mv	t3,a5
1c009cdc:	00f6d363          	ble	a5,a3,1c009ce2 <pos_libc_prf+0xe94>
1c009ce0:	4e41                	li	t3,16
1c009ce2:	1e7d                	addi	t3,t3,-1
1c009ce4:	06600d93          	li	s11,102
1c009ce8:	f6079463          	bnez	a5,1c009450 <pos_libc_prf+0x602>
1c009cec:	4681                	li	a3,0
1c009cee:	08000637          	lui	a2,0x8000
1c009cf2:	fc8ff06f          	j	1c0094ba <pos_libc_prf+0x66c>
1c009cf6:	47e2                	lw	a5,24(sp)
1c009cf8:	c7d5                	beqz	a5,1c009da4 <pos_libc_prf+0xf56>
1c009cfa:	02000713          	li	a4,32
1c009cfe:	02e10223          	sb	a4,36(sp)
1c009d02:	02510e93          	addi	t4,sp,37
1c009d06:	4301                	li	t1,0
1c009d08:	4501                	li	a0,0
1c009d0a:	4681                	li	a3,0
1c009d0c:	4581                	li	a1,0
1c009d0e:	ef0ff06f          	j	1c0093fe <pos_libc_prf+0x5b0>
1c009d12:	479d                	li	a5,7
1c009d14:	fa67dee3          	ble	t1,a5,1c009cd0 <pos_libc_prf+0xe82>
1c009d18:	4e19                	li	t3,6
1c009d1a:	06500d93          	li	s11,101
1c009d1e:	f32ff06f          	j	1c009450 <pos_libc_prf+0x602>
1c009d22:	679d                	lui	a5,0x7
1c009d24:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c009d28:	00f71023          	sh	a5,0(a4)
1c009d2c:	06600793          	li	a5,102
1c009d30:	00f70123          	sb	a5,2(a4)
1c009d34:	b561                	j	1c009bbc <pos_libc_prf+0xd6e>
1c009d36:	03000693          	li	a3,48
1c009d3a:	00de8023          	sb	a3,0(t4)
1c009d3e:	4541                	li	a0,16
1c009d40:	b711                	j	1c009c44 <pos_libc_prf+0xdf6>
1c009d42:	48e2                	lw	a7,24(sp)
1c009d44:	8ee6                	mv	t4,s9
1c009d46:	dc088e63          	beqz	a7,1c009322 <pos_libc_prf+0x4d4>
1c009d4a:	02000713          	li	a4,32
1c009d4e:	02e10223          	sb	a4,36(sp)
1c009d52:	02510e93          	addi	t4,sp,37
1c009d56:	dccff06f          	j	1c009322 <pos_libc_prf+0x4d4>
1c009d5a:	80000737          	lui	a4,0x80000
1c009d5e:	02510793          	addi	a5,sp,37
1c009d62:	bc91                	j	1c0097b6 <pos_libc_prf+0x968>
1c009d64:	06600d93          	li	s11,102
1c009d68:	b751                	j	1c009cec <pos_libc_prf+0xe9e>
1c009d6a:	02d00713          	li	a4,45
1c009d6e:	02e10223          	sb	a4,36(sp)
1c009d72:	02510713          	addi	a4,sp,37
1c009d76:	b505                	j	1c009b96 <pos_libc_prf+0xd48>
1c009d78:	a40a5d63          	bgez	s4,1c008fd2 <pos_libc_prf+0x184>
1c009d7c:	a62ff06f          	j	1c008fde <pos_libc_prf+0x190>
1c009d80:	02d00713          	li	a4,45
1c009d84:	02e10223          	sb	a4,36(sp)
1c009d88:	02510e93          	addi	t4,sp,37
1c009d8c:	d96ff06f          	j	1c009322 <pos_libc_prf+0x4d4>
1c009d90:	6799                	lui	a5,0x6
1c009d92:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c009d96:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c009d9a:	06e00793          	li	a5,110
1c009d9e:	00f70123          	sb	a5,2(a4)
1c009da2:	bd29                	j	1c009bbc <pos_libc_prf+0xd6e>
1c009da4:	8ee6                	mv	t4,s9
1c009da6:	b785                	j	1c009d06 <pos_libc_prf+0xeb8>
1c009da8:	89aa                	mv	s3,a0
1c009daa:	820f8de3          	beqz	t6,1c0095e4 <pos_libc_prf+0x796>
1c009dae:	b8dd                	j	1c0096a4 <pos_libc_prf+0x856>

1c009db0 <pos_init_start>:
1c009db0:	1141                	addi	sp,sp,-16
1c009db2:	c422                	sw	s0,8(sp)
1c009db4:	1c000437          	lui	s0,0x1c000
1c009db8:	c606                	sw	ra,12(sp)
1c009dba:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009dbe:	d0cfe0ef          	jal	ra,1c0082ca <pos_soc_init>
1c009dc2:	2275                	jal	1c009f6e <pos_irq_init>
1c009dc4:	2ae1                	jal	1c009f9c <pos_soc_event_init>
1c009dc6:	2a31                	jal	1c009ee2 <pos_allocs_init>
1c009dc8:	405c                	lw	a5,4(s0)
1c009dca:	c791                	beqz	a5,1c009dd6 <pos_init_start+0x26>
1c009dcc:	0411                	addi	s0,s0,4
1c009dce:	0411                	addi	s0,s0,4
1c009dd0:	9782                	jalr	a5
1c009dd2:	401c                	lw	a5,0(s0)
1c009dd4:	ffed                	bnez	a5,1c009dce <pos_init_start+0x1e>
1c009dd6:	842ff0ef          	jal	ra,1c008e18 <pos_io_start>
1c009dda:	300467f3          	csrrsi	a5,mstatus,8
1c009dde:	40b2                	lw	ra,12(sp)
1c009de0:	4422                	lw	s0,8(sp)
1c009de2:	0141                	addi	sp,sp,16
1c009de4:	8082                	ret

1c009de6 <pos_init_stop>:
1c009de6:	1141                	addi	sp,sp,-16
1c009de8:	c422                	sw	s0,8(sp)
1c009dea:	1c000437          	lui	s0,0x1c000
1c009dee:	c606                	sw	ra,12(sp)
1c009df0:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009df4:	828ff0ef          	jal	ra,1c008e1c <pos_io_stop>
1c009df8:	405c                	lw	a5,4(s0)
1c009dfa:	c791                	beqz	a5,1c009e06 <pos_init_stop+0x20>
1c009dfc:	0411                	addi	s0,s0,4
1c009dfe:	0411                	addi	s0,s0,4
1c009e00:	9782                	jalr	a5
1c009e02:	401c                	lw	a5,0(s0)
1c009e04:	ffed                	bnez	a5,1c009dfe <pos_init_stop+0x18>
1c009e06:	40b2                	lw	ra,12(sp)
1c009e08:	4422                	lw	s0,8(sp)
1c009e0a:	0141                	addi	sp,sp,16
1c009e0c:	8082                	ret

1c009e0e <pos_alloc_init>:
1c009e0e:	00758793          	addi	a5,a1,7
1c009e12:	9be1                	andi	a5,a5,-8
1c009e14:	40b785b3          	sub	a1,a5,a1
1c009e18:	c11c                	sw	a5,0(a0)
1c009e1a:	8e0d                	sub	a2,a2,a1
1c009e1c:	00c05663          	blez	a2,1c009e28 <pos_alloc_init+0x1a>
1c009e20:	9a61                	andi	a2,a2,-8
1c009e22:	c390                	sw	a2,0(a5)
1c009e24:	0007a223          	sw	zero,4(a5)
1c009e28:	8082                	ret

1c009e2a <pos_alloc>:
1c009e2a:	4110                	lw	a2,0(a0)
1c009e2c:	059d                	addi	a1,a1,7
1c009e2e:	99e1                	andi	a1,a1,-8
1c009e30:	ca31                	beqz	a2,1c009e84 <pos_alloc+0x5a>
1c009e32:	4218                	lw	a4,0(a2)
1c009e34:	425c                	lw	a5,4(a2)
1c009e36:	02b75963          	ble	a1,a4,1c009e68 <pos_alloc+0x3e>
1c009e3a:	cb81                	beqz	a5,1c009e4a <pos_alloc+0x20>
1c009e3c:	4398                	lw	a4,0(a5)
1c009e3e:	43d4                	lw	a3,4(a5)
1c009e40:	00b75763          	ble	a1,a4,1c009e4e <pos_alloc+0x24>
1c009e44:	863e                	mv	a2,a5
1c009e46:	87b6                	mv	a5,a3
1c009e48:	fbf5                	bnez	a5,1c009e3c <pos_alloc+0x12>
1c009e4a:	853e                	mv	a0,a5
1c009e4c:	8082                	ret
1c009e4e:	00b70a63          	beq	a4,a1,1c009e62 <pos_alloc+0x38>
1c009e52:	00b78533          	add	a0,a5,a1
1c009e56:	8f0d                	sub	a4,a4,a1
1c009e58:	c118                	sw	a4,0(a0)
1c009e5a:	c154                	sw	a3,4(a0)
1c009e5c:	c248                	sw	a0,4(a2)
1c009e5e:	853e                	mv	a0,a5
1c009e60:	8082                	ret
1c009e62:	c254                	sw	a3,4(a2)
1c009e64:	853e                	mv	a0,a5
1c009e66:	8082                	ret
1c009e68:	00e58b63          	beq	a1,a4,1c009e7e <pos_alloc+0x54>
1c009e6c:	00b606b3          	add	a3,a2,a1
1c009e70:	8f0d                	sub	a4,a4,a1
1c009e72:	c2dc                	sw	a5,4(a3)
1c009e74:	c298                	sw	a4,0(a3)
1c009e76:	87b2                	mv	a5,a2
1c009e78:	c114                	sw	a3,0(a0)
1c009e7a:	853e                	mv	a0,a5
1c009e7c:	8082                	ret
1c009e7e:	c11c                	sw	a5,0(a0)
1c009e80:	87b2                	mv	a5,a2
1c009e82:	b7e1                	j	1c009e4a <pos_alloc+0x20>
1c009e84:	4781                	li	a5,0
1c009e86:	b7d1                	j	1c009e4a <pos_alloc+0x20>

1c009e88 <pos_free>:
1c009e88:	4118                	lw	a4,0(a0)
1c009e8a:	061d                	addi	a2,a2,7
1c009e8c:	9a61                	andi	a2,a2,-8
1c009e8e:	c729                	beqz	a4,1c009ed8 <pos_free+0x50>
1c009e90:	00b76663          	bltu	a4,a1,1c009e9c <pos_free+0x14>
1c009e94:	a0a1                	j	1c009edc <pos_free+0x54>
1c009e96:	00b7f563          	bleu	a1,a5,1c009ea0 <pos_free+0x18>
1c009e9a:	873e                	mv	a4,a5
1c009e9c:	435c                	lw	a5,4(a4)
1c009e9e:	ffe5                	bnez	a5,1c009e96 <pos_free+0xe>
1c009ea0:	00c586b3          	add	a3,a1,a2
1c009ea4:	02d78463          	beq	a5,a3,1c009ecc <pos_free+0x44>
1c009ea8:	c190                	sw	a2,0(a1)
1c009eaa:	c1dc                	sw	a5,4(a1)
1c009eac:	cf11                	beqz	a4,1c009ec8 <pos_free+0x40>
1c009eae:	431c                	lw	a5,0(a4)
1c009eb0:	00f706b3          	add	a3,a4,a5
1c009eb4:	00d58463          	beq	a1,a3,1c009ebc <pos_free+0x34>
1c009eb8:	c34c                	sw	a1,4(a4)
1c009eba:	8082                	ret
1c009ebc:	4194                	lw	a3,0(a1)
1c009ebe:	41d0                	lw	a2,4(a1)
1c009ec0:	97b6                	add	a5,a5,a3
1c009ec2:	c31c                	sw	a5,0(a4)
1c009ec4:	c350                	sw	a2,4(a4)
1c009ec6:	8082                	ret
1c009ec8:	c10c                	sw	a1,0(a0)
1c009eca:	8082                	ret
1c009ecc:	4394                	lw	a3,0(a5)
1c009ece:	43dc                	lw	a5,4(a5)
1c009ed0:	9636                	add	a2,a2,a3
1c009ed2:	c190                	sw	a2,0(a1)
1c009ed4:	c1dc                	sw	a5,4(a1)
1c009ed6:	bfd9                	j	1c009eac <pos_free+0x24>
1c009ed8:	4781                	li	a5,0
1c009eda:	b7d9                	j	1c009ea0 <pos_free+0x18>
1c009edc:	87ba                	mv	a5,a4
1c009ede:	4701                	li	a4,0
1c009ee0:	b7c1                	j	1c009ea0 <pos_free+0x18>

1c009ee2 <pos_allocs_init>:
1c009ee2:	1141                	addi	sp,sp,-16
1c009ee4:	1c0065b7          	lui	a1,0x1c006
1c009ee8:	c606                	sw	ra,12(sp)
1c009eea:	26458793          	addi	a5,a1,612 # 1c006264 <__l2_priv0_end>
1c009eee:	1c008637          	lui	a2,0x1c008
1c009ef2:	04c7cc63          	blt	a5,a2,1c009f4a <pos_allocs_init+0x68>
1c009ef6:	4581                	li	a1,0
1c009ef8:	4601                	li	a2,0
1c009efa:	1c006537          	lui	a0,0x1c006
1c009efe:	25850513          	addi	a0,a0,600 # 1c006258 <pos_alloc_l2>
1c009f02:	3731                	jal	1c009e0e <pos_alloc_init>
1c009f04:	1c00a5b7          	lui	a1,0x1c00a
1c009f08:	fb458793          	addi	a5,a1,-76 # 1c009fb4 <__l2_priv1_end>
1c009f0c:	1c010637          	lui	a2,0x1c010
1c009f10:	02c7c963          	blt	a5,a2,1c009f42 <pos_allocs_init+0x60>
1c009f14:	4581                	li	a1,0
1c009f16:	4601                	li	a2,0
1c009f18:	1c006537          	lui	a0,0x1c006
1c009f1c:	25c50513          	addi	a0,a0,604 # 1c00625c <pos_alloc_l2+0x4>
1c009f20:	35fd                	jal	1c009e0e <pos_alloc_init>
1c009f22:	1c0105b7          	lui	a1,0x1c010
1c009f26:	00058793          	mv	a5,a1
1c009f2a:	40b2                	lw	ra,12(sp)
1c009f2c:	1c080637          	lui	a2,0x1c080
1c009f30:	1c006537          	lui	a0,0x1c006
1c009f34:	8e1d                	sub	a2,a2,a5
1c009f36:	00058593          	mv	a1,a1
1c009f3a:	26050513          	addi	a0,a0,608 # 1c006260 <pos_alloc_l2+0x8>
1c009f3e:	0141                	addi	sp,sp,16
1c009f40:	b5f9                	j	1c009e0e <pos_alloc_init>
1c009f42:	8e1d                	sub	a2,a2,a5
1c009f44:	fb458593          	addi	a1,a1,-76 # 1c00ffb4 <__l2_priv1_end+0x6000>
1c009f48:	bfc1                	j	1c009f18 <pos_allocs_init+0x36>
1c009f4a:	8e1d                	sub	a2,a2,a5
1c009f4c:	26458593          	addi	a1,a1,612
1c009f50:	b76d                	j	1c009efa <pos_allocs_init+0x18>

1c009f52 <pi_l2_malloc>:
1c009f52:	85aa                	mv	a1,a0
1c009f54:	1c006537          	lui	a0,0x1c006
1c009f58:	25850513          	addi	a0,a0,600 # 1c006258 <pos_alloc_l2>
1c009f5c:	b5f9                	j	1c009e2a <pos_alloc>

1c009f5e <pi_l2_free>:
1c009f5e:	862e                	mv	a2,a1
1c009f60:	85aa                	mv	a1,a0
1c009f62:	1c006537          	lui	a0,0x1c006
1c009f66:	25850513          	addi	a0,a0,600 # 1c006258 <pos_alloc_l2>
1c009f6a:	bf39                	j	1c009e88 <pos_free>

1c009f6c <__rt_handle_illegal_instr>:
1c009f6c:	8082                	ret

1c009f6e <pos_irq_init>:
1c009f6e:	1a10a737          	lui	a4,0x1a10a
1c009f72:	f14027f3          	csrr	a5,mhartid
1c009f76:	56fd                	li	a3,-1
1c009f78:	8795                	srai	a5,a5,0x5
1c009f7a:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009f7e:	03f7f793          	andi	a5,a5,63
1c009f82:	477d                	li	a4,31
1c009f84:	00e78363          	beq	a5,a4,1c009f8a <pos_irq_init+0x1c>
1c009f88:	8082                	ret
1c009f8a:	1c0087b7          	lui	a5,0x1c008
1c009f8e:	00078793          	mv	a5,a5
1c009f92:	0017e793          	ori	a5,a5,1
1c009f96:	30579073          	csrw	mtvec,a5
1c009f9a:	8082                	ret

1c009f9c <pos_soc_event_init>:
1c009f9c:	1a1067b7          	lui	a5,0x1a106
1c009fa0:	577d                	li	a4,-1
1c009fa2:	c3d8                	sw	a4,4(a5)
1c009fa4:	c798                	sw	a4,8(a5)
1c009fa6:	c7d8                	sw	a4,12(a5)
1c009fa8:	cb98                	sw	a4,16(a5)
1c009faa:	cbd8                	sw	a4,20(a5)
1c009fac:	cf98                	sw	a4,24(a5)
1c009fae:	cfd8                	sw	a4,28(a5)
1c009fb0:	d398                	sw	a4,32(a5)
1c009fb2:	8082                	ret
