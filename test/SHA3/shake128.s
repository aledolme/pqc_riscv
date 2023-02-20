riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/SHA3/build/shake128/shake128

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/SHA3/build/shake128/shake128:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	4c30106f          	j	1c009cc2 <__rt_handle_illegal_instr>
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
1c008084:	43f0106f          	j	1c009cc2 <__rt_handle_illegal_instr>

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
1c0080c4:	31028293          	addi	t0,t0,784 # 1c0043d0 <stack>
1c0080c8:	ffffc317          	auipc	t1,0xffffc
1c0080cc:	32c30313          	addi	t1,t1,812 # 1c0043f4 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffc117          	auipc	sp,0xffffc
1c0080de:	2f610113          	addi	sp,sp,758 # 1c0043d0 <stack>
1c0080e2:	225010ef          	jal	ra,1c009b06 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	241010ef          	jal	ra,1c009b3c <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	259000ef          	jal	ra,1c008b5a <exit>

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
1c008142:	7179                	addi	sp,sp,-48
1c008144:	1c000637          	lui	a2,0x1c000
1c008148:	38860613          	addi	a2,a2,904 # 1c000388 <plaintext>
1c00814c:	02000593          	li	a1,32
1c008150:	850a                	mv	a0,sp
1c008152:	02b00693          	li	a3,43
1c008156:	d422                	sw	s0,40(sp)
1c008158:	d606                	sw	ra,44(sp)
1c00815a:	d226                	sw	s1,36(sp)
1c00815c:	d04a                	sw	s2,32(sp)
1c00815e:	1c000437          	lui	s0,0x1c000
1c008162:	2135                	jal	1c00858e <shake128>
1c008164:	02000613          	li	a2,32
1c008168:	858a                	mv	a1,sp
1c00816a:	11c40513          	addi	a0,s0,284 # 1c00011c <expected>
1c00816e:	2db1                	jal	1c0087ca <memcmp>
1c008170:	cd25                	beqz	a0,1c0081e8 <main+0xa6>
1c008172:	1c000537          	lui	a0,0x1c000
1c008176:	31c50513          	addi	a0,a0,796 # 1c00031c <expected+0x200>
1c00817a:	13b000ef          	jal	ra,1c008ab4 <puts>
1c00817e:	1c000537          	lui	a0,0x1c000
1c008182:	35050513          	addi	a0,a0,848 # 1c000350 <expected+0x234>
1c008186:	11c40413          	addi	s0,s0,284
1c00818a:	1ed000ef          	jal	ra,1c008b76 <printf>
1c00818e:	02040913          	addi	s2,s0,32
1c008192:	1c0004b7          	lui	s1,0x1c000
1c008196:	00044583          	lbu	a1,0(s0)
1c00819a:	35c48513          	addi	a0,s1,860 # 1c00035c <expected+0x240>
1c00819e:	0405                	addi	s0,s0,1
1c0081a0:	1d7000ef          	jal	ra,1c008b76 <printf>
1c0081a4:	ff2419e3          	bne	s0,s2,1c008196 <main+0x54>
1c0081a8:	4529                	li	a0,10
1c0081aa:	187000ef          	jal	ra,1c008b30 <putchar>
1c0081ae:	1c000537          	lui	a0,0x1c000
1c0081b2:	36450513          	addi	a0,a0,868 # 1c000364 <expected+0x248>
1c0081b6:	1c1000ef          	jal	ra,1c008b76 <printf>
1c0081ba:	840a                	mv	s0,sp
1c0081bc:	02010913          	addi	s2,sp,32
1c0081c0:	00044583          	lbu	a1,0(s0)
1c0081c4:	35c48513          	addi	a0,s1,860
1c0081c8:	0405                	addi	s0,s0,1
1c0081ca:	1ad000ef          	jal	ra,1c008b76 <printf>
1c0081ce:	ff2419e3          	bne	s0,s2,1c0081c0 <main+0x7e>
1c0081d2:	4529                	li	a0,10
1c0081d4:	15d000ef          	jal	ra,1c008b30 <putchar>
1c0081d8:	4485                	li	s1,1
1c0081da:	50b2                	lw	ra,44(sp)
1c0081dc:	5422                	lw	s0,40(sp)
1c0081de:	8526                	mv	a0,s1
1c0081e0:	5902                	lw	s2,32(sp)
1c0081e2:	5492                	lw	s1,36(sp)
1c0081e4:	6145                	addi	sp,sp,48
1c0081e6:	8082                	ret
1c0081e8:	84aa                	mv	s1,a0
1c0081ea:	1c000537          	lui	a0,0x1c000
1c0081ee:	37050513          	addi	a0,a0,880 # 1c000370 <expected+0x254>
1c0081f2:	0c3000ef          	jal	ra,1c008ab4 <puts>
1c0081f6:	b7d5                	j	1c0081da <main+0x98>

1c0081f8 <pos_fll_init>:
1c0081f8:	1101                	addi	sp,sp,-32
1c0081fa:	1a100637          	lui	a2,0x1a100
1c0081fe:	ca26                	sw	s1,20(sp)
1c008200:	00451693          	slli	a3,a0,0x4
1c008204:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c008208:	94b6                	add	s1,s1,a3
1c00820a:	4098                	lw	a4,0(s1)
1c00820c:	c84a                	sw	s2,16(sp)
1c00820e:	ce06                	sw	ra,28(sp)
1c008210:	cc22                	sw	s0,24(sp)
1c008212:	c64e                	sw	s3,12(sp)
1c008214:	c452                	sw	s4,8(sp)
1c008216:	892a                	mv	s2,a0
1c008218:	87ba                	mv	a5,a4
1c00821a:	04074563          	bltz	a4,1c008264 <pos_fll_init+0x6c>
1c00821e:	00860593          	addi	a1,a2,8
1c008222:	95b6                	add	a1,a1,a3
1c008224:	419c                	lw	a5,0(a1)
1c008226:	7541                	lui	a0,0xffff0
1c008228:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c00822c:	8fe9                	and	a5,a5,a0
1c00822e:	6509                	lui	a0,0x2
1c008230:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c008234:	8fc9                	or	a5,a5,a0
1c008236:	f0010537          	lui	a0,0xf0010
1c00823a:	157d                	addi	a0,a0,-1
1c00823c:	8fe9                	and	a5,a5,a0
1c00823e:	00500537          	lui	a0,0x500
1c008242:	8fc9                	or	a5,a5,a0
1c008244:	0631                	addi	a2,a2,12
1c008246:	c19c                	sw	a5,0(a1)
1c008248:	96b2                	add	a3,a3,a2
1c00824a:	429c                	lw	a5,0(a3)
1c00824c:	fc010637          	lui	a2,0xfc010
1c008250:	167d                	addi	a2,a2,-1
1c008252:	8ff1                	and	a5,a5,a2
1c008254:	014c0637          	lui	a2,0x14c0
1c008258:	8fd1                	or	a5,a5,a2
1c00825a:	c29c                	sw	a5,0(a3)
1c00825c:	c00007b7          	lui	a5,0xc0000
1c008260:	8fd9                	or	a5,a5,a4
1c008262:	c09c                	sw	a5,0(s1)
1c008264:	1c004437          	lui	s0,0x1c004
1c008268:	3d440413          	addi	s0,s0,980 # 1c0043d4 <pos_fll_freq>
1c00826c:	00291993          	slli	s3,s2,0x2
1c008270:	013406b3          	add	a3,s0,s3
1c008274:	0006aa03          	lw	s4,0(a3)
1c008278:	020a1d63          	bnez	s4,1c0082b2 <pos_fll_init+0xba>
1c00827c:	83e9                	srli	a5,a5,0x1a
1c00827e:	0742                	slli	a4,a4,0x10
1c008280:	8341                	srli	a4,a4,0x10
1c008282:	8bbd                	andi	a5,a5,15
1c008284:	073e                	slli	a4,a4,0xf
1c008286:	17fd                	addi	a5,a5,-1
1c008288:	00f75a33          	srl	s4,a4,a5
1c00828c:	1c004537          	lui	a0,0x1c004
1c008290:	0146a023          	sw	s4,0(a3)
1c008294:	3d050513          	addi	a0,a0,976 # 1c0043d0 <stack>
1c008298:	954a                	add	a0,a0,s2
1c00829a:	4685                	li	a3,1
1c00829c:	00d50023          	sb	a3,0(a0)
1c0082a0:	40f2                	lw	ra,28(sp)
1c0082a2:	4462                	lw	s0,24(sp)
1c0082a4:	8552                	mv	a0,s4
1c0082a6:	44d2                	lw	s1,20(sp)
1c0082a8:	4942                	lw	s2,16(sp)
1c0082aa:	49b2                	lw	s3,12(sp)
1c0082ac:	4a22                	lw	s4,8(sp)
1c0082ae:	6105                	addi	sp,sp,32
1c0082b0:	8082                	ret
1c0082b2:	8552                	mv	a0,s4
1c0082b4:	3d89                	jal	1c008106 <__clzsi2>
1c0082b6:	1579                	addi	a0,a0,-2
1c0082b8:	00155613          	srli	a2,a0,0x1
1c0082bc:	e631                	bnez	a2,1c008308 <pos_fll_init+0x110>
1c0082be:	4709                	li	a4,2
1c0082c0:	4585                	li	a1,1
1c0082c2:	4605                	li	a2,1
1c0082c4:	00ca17b3          	sll	a5,s4,a2
1c0082c8:	76e1                	lui	a3,0xffff8
1c0082ca:	1c004537          	lui	a0,0x1c004
1c0082ce:	8efd                	and	a3,a3,a5
1c0082d0:	3d050513          	addi	a0,a0,976 # 1c0043d0 <stack>
1c0082d4:	96ae                	add	a3,a3,a1
1c0082d6:	012505b3          	add	a1,a0,s2
1c0082da:	00c6d6b3          	srl	a3,a3,a2
1c0082de:	944e                	add	s0,s0,s3
1c0082e0:	0005c603          	lbu	a2,0(a1)
1c0082e4:	c014                	sw	a3,0(s0)
1c0082e6:	da4d                	beqz	a2,1c008298 <pos_fll_init+0xa0>
1c0082e8:	4094                	lw	a3,0(s1)
1c0082ea:	83bd                	srli	a5,a5,0xf
1c0082ec:	07c2                	slli	a5,a5,0x10
1c0082ee:	7641                	lui	a2,0xffff0
1c0082f0:	83c1                	srli	a5,a5,0x10
1c0082f2:	8ef1                	and	a3,a3,a2
1c0082f4:	8edd                	or	a3,a3,a5
1c0082f6:	c40007b7          	lui	a5,0xc4000
1c0082fa:	8b3d                	andi	a4,a4,15
1c0082fc:	17fd                	addi	a5,a5,-1
1c0082fe:	076a                	slli	a4,a4,0x1a
1c008300:	8efd                	and	a3,a3,a5
1c008302:	8ed9                	or	a3,a3,a4
1c008304:	c094                	sw	a3,0(s1)
1c008306:	bf49                	j	1c008298 <pos_fll_init+0xa0>
1c008308:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c00830c:	4685                	li	a3,1
1c00830e:	00b695b3          	sll	a1,a3,a1
1c008312:	00160713          	addi	a4,a2,1
1c008316:	b77d                	j	1c0082c4 <pos_fll_init+0xcc>

1c008318 <pos_fll_constructor>:
1c008318:	1c0047b7          	lui	a5,0x1c004
1c00831c:	3d478793          	addi	a5,a5,980 # 1c0043d4 <pos_fll_freq>
1c008320:	0007a023          	sw	zero,0(a5)
1c008324:	0007a223          	sw	zero,4(a5)
1c008328:	1c0047b7          	lui	a5,0x1c004
1c00832c:	3c079823          	sh	zero,976(a5) # 1c0043d0 <stack>
1c008330:	8082                	ret

1c008332 <pos_soc_init>:
1c008332:	1141                	addi	sp,sp,-16
1c008334:	c606                	sw	ra,12(sp)
1c008336:	c422                	sw	s0,8(sp)
1c008338:	37c5                	jal	1c008318 <pos_fll_constructor>
1c00833a:	4501                	li	a0,0
1c00833c:	3d75                	jal	1c0081f8 <pos_fll_init>
1c00833e:	1c004437          	lui	s0,0x1c004
1c008342:	3ca42e23          	sw	a0,988(s0) # 1c0043dc <pos_freq_domains>
1c008346:	4505                	li	a0,1
1c008348:	3d45                	jal	1c0081f8 <pos_fll_init>
1c00834a:	3dc40413          	addi	s0,s0,988
1c00834e:	c408                	sw	a0,8(s0)
1c008350:	40b2                	lw	ra,12(sp)
1c008352:	4422                	lw	s0,8(sp)
1c008354:	0141                	addi	sp,sp,16
1c008356:	8082                	ret

1c008358 <KeccakF1600_StatePermute>:
1c008358:	1a4007b7          	lui	a5,0x1a400
1c00835c:	1141                	addi	sp,sp,-16
1c00835e:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c008362:	4118                	lw	a4,0(a0)
1c008364:	0791                	addi	a5,a5,4
1c008366:	fee7ae23          	sw	a4,-4(a5)
1c00836a:	0511                	addi	a0,a0,4
1c00836c:	fed79be3          	bne	a5,a3,1c008362 <KeccakF1600_StatePermute+0xa>
1c008370:	1a4007b7          	lui	a5,0x1a400
1c008374:	4705                	li	a4,1
1c008376:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00837a:	1a400737          	lui	a4,0x1a400
1c00837e:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c008382:	8b85                	andi	a5,a5,1
1c008384:	dfed                	beqz	a5,1c00837e <KeccakF1600_StatePermute+0x26>
1c008386:	c602                	sw	zero,12(sp)
1c008388:	4732                	lw	a4,12(sp)
1c00838a:	03100793          	li	a5,49
1c00838e:	02e7c663          	blt	a5,a4,1c0083ba <KeccakF1600_StatePermute+0x62>
1c008392:	1a400637          	lui	a2,0x1a400
1c008396:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00839a:	03100513          	li	a0,49
1c00839e:	4732                	lw	a4,12(sp)
1c0083a0:	47b2                	lw	a5,12(sp)
1c0083a2:	070a                	slli	a4,a4,0x2
1c0083a4:	9732                	add	a4,a4,a2
1c0083a6:	4314                	lw	a3,0(a4)
1c0083a8:	4732                	lw	a4,12(sp)
1c0083aa:	078a                	slli	a5,a5,0x2
1c0083ac:	0705                	addi	a4,a4,1
1c0083ae:	c63a                	sw	a4,12(sp)
1c0083b0:	97ae                	add	a5,a5,a1
1c0083b2:	4732                	lw	a4,12(sp)
1c0083b4:	c394                	sw	a3,0(a5)
1c0083b6:	fee554e3          	ble	a4,a0,1c00839e <KeccakF1600_StatePermute+0x46>
1c0083ba:	0141                	addi	sp,sp,16
1c0083bc:	8082                	ret

1c0083be <shake128_absorb>:
1c0083be:	7151                	addi	sp,sp,-240
1c0083c0:	d5a2                	sw	s0,232(sp)
1c0083c2:	842a                	mv	s0,a0
1c0083c4:	0c800513          	li	a0,200
1c0083c8:	d1ca                	sw	s2,224(sp)
1c0083ca:	cfce                	sw	s3,220(sp)
1c0083cc:	d786                	sw	ra,236(sp)
1c0083ce:	d3a6                	sw	s1,228(sp)
1c0083d0:	cdd2                	sw	s4,216(sp)
1c0083d2:	892e                	mv	s2,a1
1c0083d4:	89b2                	mv	s3,a2
1c0083d6:	0d3010ef          	jal	ra,1c009ca8 <pi_l2_malloc>
1c0083da:	c008                	sw	a0,0(s0)
1c0083dc:	1a050663          	beqz	a0,1c008588 <shake128_absorb+0x1ca>
1c0083e0:	8a2a                	mv	s4,a0
1c0083e2:	0c850713          	addi	a4,a0,200
1c0083e6:	87aa                	mv	a5,a0
1c0083e8:	4601                	li	a2,0
1c0083ea:	4681                	li	a3,0
1c0083ec:	c390                	sw	a2,0(a5)
1c0083ee:	c3d4                	sw	a3,4(a5)
1c0083f0:	07a1                	addi	a5,a5,8
1c0083f2:	fef71be3          	bne	a4,a5,1c0083e8 <shake128_absorb+0x2a>
1c0083f6:	0a700793          	li	a5,167
1c0083fa:	0937f163          	bleu	s3,a5,1c00847c <shake128_absorb+0xbe>
1c0083fe:	412a04b3          	sub	s1,s4,s2
1c008402:	0a700413          	li	s0,167
1c008406:	85ca                	mv	a1,s2
1c008408:	0a890913          	addi	s2,s2,168
1c00840c:	0015c783          	lbu	a5,1(a1)
1c008410:	0025c603          	lbu	a2,2(a1)
1c008414:	0055c803          	lbu	a6,5(a1)
1c008418:	0045c303          	lbu	t1,4(a1)
1c00841c:	0065c503          	lbu	a0,6(a1)
1c008420:	0005ce03          	lbu	t3,0(a1)
1c008424:	0035c683          	lbu	a3,3(a1)
1c008428:	0075c703          	lbu	a4,7(a1)
1c00842c:	0642                	slli	a2,a2,0x10
1c00842e:	07a2                	slli	a5,a5,0x8
1c008430:	0822                	slli	a6,a6,0x8
1c008432:	00b488b3          	add	a7,s1,a1
1c008436:	8fd1                	or	a5,a5,a2
1c008438:	00686833          	or	a6,a6,t1
1c00843c:	0542                	slli	a0,a0,0x10
1c00843e:	0008a603          	lw	a2,0(a7)
1c008442:	0048a303          	lw	t1,4(a7)
1c008446:	01c7e7b3          	or	a5,a5,t3
1c00844a:	06e2                	slli	a3,a3,0x18
1c00844c:	01056533          	or	a0,a0,a6
1c008450:	0762                	slli	a4,a4,0x18
1c008452:	8fd5                	or	a5,a5,a3
1c008454:	8f49                	or	a4,a4,a0
1c008456:	8fb1                	xor	a5,a5,a2
1c008458:	00e34733          	xor	a4,t1,a4
1c00845c:	00f8a023          	sw	a5,0(a7)
1c008460:	00e8a223          	sw	a4,4(a7)
1c008464:	05a1                	addi	a1,a1,8
1c008466:	fab913e3          	bne	s2,a1,1c00840c <shake128_absorb+0x4e>
1c00846a:	85d2                	mv	a1,s4
1c00846c:	8552                	mv	a0,s4
1c00846e:	f5898993          	addi	s3,s3,-168
1c008472:	35dd                	jal	1c008358 <KeccakF1600_StatePermute>
1c008474:	f5848493          	addi	s1,s1,-168
1c008478:	f93467e3          	bltu	s0,s3,1c008406 <shake128_absorb+0x48>
1c00847c:	191c                	addi	a5,sp,176
1c00847e:	00810813          	addi	a6,sp,8
1c008482:	4681                	li	a3,0
1c008484:	00d82023          	sw	a3,0(a6)
1c008488:	0811                	addi	a6,a6,4
1c00848a:	ff079ce3          	bne	a5,a6,1c008482 <shake128_absorb+0xc4>
1c00848e:	06098563          	beqz	s3,1c0084f8 <shake128_absorb+0x13a>
1c008492:	fff98793          	addi	a5,s3,-1
1c008496:	4709                	li	a4,2
1c008498:	0ef77663          	bleu	a5,a4,1c008584 <shake128_absorb+0x1c6>
1c00849c:	0029d513          	srli	a0,s3,0x2
1c0084a0:	86ca                	mv	a3,s2
1c0084a2:	0038                	addi	a4,sp,8
1c0084a4:	4781                	li	a5,0
1c0084a6:	4290                	lw	a2,0(a3)
1c0084a8:	0785                	addi	a5,a5,1
1c0084aa:	c310                	sw	a2,0(a4)
1c0084ac:	0691                	addi	a3,a3,4
1c0084ae:	0711                	addi	a4,a4,4
1c0084b0:	fea7ebe3          	bltu	a5,a0,1c0084a6 <shake128_absorb+0xe8>
1c0084b4:	ffc9f793          	andi	a5,s3,-4
1c0084b8:	04f98063          	beq	s3,a5,1c0084f8 <shake128_absorb+0x13a>
1c0084bc:	00f90733          	add	a4,s2,a5
1c0084c0:	00074683          	lbu	a3,0(a4)
1c0084c4:	0990                	addi	a2,sp,208
1c0084c6:	00f60733          	add	a4,a2,a5
1c0084ca:	f2d70c23          	sb	a3,-200(a4)
1c0084ce:	00178713          	addi	a4,a5,1
1c0084d2:	03377363          	bleu	s3,a4,1c0084f8 <shake128_absorb+0x13a>
1c0084d6:	00e906b3          	add	a3,s2,a4
1c0084da:	0006c683          	lbu	a3,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c0084de:	9732                	add	a4,a4,a2
1c0084e0:	f2d70c23          	sb	a3,-200(a4)
1c0084e4:	0789                	addi	a5,a5,2
1c0084e6:	0137f963          	bleu	s3,a5,1c0084f8 <shake128_absorb+0x13a>
1c0084ea:	00f905b3          	add	a1,s2,a5
1c0084ee:	0005c703          	lbu	a4,0(a1)
1c0084f2:	97b2                	add	a5,a5,a2
1c0084f4:	f2e78c23          	sb	a4,-200(a5)
1c0084f8:	0994                	addi	a3,sp,208
1c0084fa:	47fd                	li	a5,31
1c0084fc:	99b6                	add	s3,s3,a3
1c0084fe:	f2f98c23          	sb	a5,-200(s3)
1c008502:	0af14703          	lbu	a4,175(sp)
1c008506:	003c                	addi	a5,sp,8
1c008508:	f8076713          	ori	a4,a4,-128
1c00850c:	0ae107a3          	sb	a4,175(sp)
1c008510:	40fa0a33          	sub	s4,s4,a5
1c008514:	0017c703          	lbu	a4,1(a5)
1c008518:	0027c303          	lbu	t1,2(a5)
1c00851c:	0057c503          	lbu	a0,5(a5)
1c008520:	0047ce03          	lbu	t3,4(a5)
1c008524:	0067c583          	lbu	a1,6(a5)
1c008528:	0007ce83          	lbu	t4,0(a5)
1c00852c:	0037c603          	lbu	a2,3(a5)
1c008530:	0077c683          	lbu	a3,7(a5)
1c008534:	0342                	slli	t1,t1,0x10
1c008536:	0722                	slli	a4,a4,0x8
1c008538:	0522                	slli	a0,a0,0x8
1c00853a:	00fa08b3          	add	a7,s4,a5
1c00853e:	00676733          	or	a4,a4,t1
1c008542:	01c56533          	or	a0,a0,t3
1c008546:	05c2                	slli	a1,a1,0x10
1c008548:	0008ae03          	lw	t3,0(a7)
1c00854c:	0048a303          	lw	t1,4(a7)
1c008550:	01d76733          	or	a4,a4,t4
1c008554:	0662                	slli	a2,a2,0x18
1c008556:	8dc9                	or	a1,a1,a0
1c008558:	06e2                	slli	a3,a3,0x18
1c00855a:	8f51                	or	a4,a4,a2
1c00855c:	8ecd                	or	a3,a3,a1
1c00855e:	00ee4733          	xor	a4,t3,a4
1c008562:	00d346b3          	xor	a3,t1,a3
1c008566:	00e8a023          	sw	a4,0(a7)
1c00856a:	00d8a223          	sw	a3,4(a7)
1c00856e:	07a1                	addi	a5,a5,8
1c008570:	faf812e3          	bne	a6,a5,1c008514 <shake128_absorb+0x156>
1c008574:	50be                	lw	ra,236(sp)
1c008576:	542e                	lw	s0,232(sp)
1c008578:	549e                	lw	s1,228(sp)
1c00857a:	590e                	lw	s2,224(sp)
1c00857c:	49fe                	lw	s3,220(sp)
1c00857e:	4a6e                	lw	s4,216(sp)
1c008580:	616d                	addi	sp,sp,240
1c008582:	8082                	ret
1c008584:	4781                	li	a5,0
1c008586:	bf1d                	j	1c0084bc <shake128_absorb+0xfe>
1c008588:	06f00513          	li	a0,111
1c00858c:	23f9                	jal	1c008b5a <exit>

1c00858e <shake128>:
1c00858e:	7115                	addi	sp,sp,-224
1c008590:	cda2                	sw	s0,216(sp)
1c008592:	0a800413          	li	s0,168
1c008596:	c9ca                	sw	s2,208(sp)
1c008598:	0285d933          	divu	s2,a1,s0
1c00859c:	cba6                	sw	s1,212(sp)
1c00859e:	c7ce                	sw	s3,204(sp)
1c0085a0:	84aa                	mv	s1,a0
1c0085a2:	89ae                	mv	s3,a1
1c0085a4:	0048                	addi	a0,sp,4
1c0085a6:	85b2                	mv	a1,a2
1c0085a8:	8636                	mv	a2,a3
1c0085aa:	df5e                	sw	s7,188(sp)
1c0085ac:	cf86                	sw	ra,220(sp)
1c0085ae:	c5d2                	sw	s4,200(sp)
1c0085b0:	c3d6                	sw	s5,196(sp)
1c0085b2:	c1da                	sw	s6,192(sp)
1c0085b4:	dd62                	sw	s8,184(sp)
1c0085b6:	3521                	jal	1c0083be <shake128_absorb>
1c0085b8:	4b92                	lw	s7,4(sp)
1c0085ba:	0a090563          	beqz	s2,1c008664 <shake128+0xd6>
1c0085be:	02890433          	mul	s0,s2,s0
1c0085c2:	7b41                	lui	s6,0xffff0
1c0085c4:	ff010ab7          	lui	s5,0xff010
1c0085c8:	01000a37          	lui	s4,0x1000
1c0085cc:	9426                	add	s0,s0,s1
1c0085ce:	8c26                	mv	s8,s1
1c0085d0:	0ffb0b13          	addi	s6,s6,255 # ffff00ff <pulp__FC+0xffff0100>
1c0085d4:	1afd                	addi	s5,s5,-1
1c0085d6:	1a7d                	addi	s4,s4,-1
1c0085d8:	85de                	mv	a1,s7
1c0085da:	855e                	mv	a0,s7
1c0085dc:	3bb5                	jal	1c008358 <KeccakF1600_StatePermute>
1c0085de:	8662                	mv	a2,s8
1c0085e0:	85de                	mv	a1,s7
1c0085e2:	0a8c0513          	addi	a0,s8,168
1c0085e6:	0005a803          	lw	a6,0(a1)
1c0085ea:	41d4                	lw	a3,4(a1)
1c0085ec:	00885313          	srli	t1,a6,0x8
1c0085f0:	0086d893          	srli	a7,a3,0x8
1c0085f4:	0ff87713          	andi	a4,a6,255
1c0085f8:	0ff6f793          	andi	a5,a3,255
1c0085fc:	0ff37313          	andi	t1,t1,255
1c008600:	0ff8f893          	andi	a7,a7,255
1c008604:	0322                	slli	t1,t1,0x8
1c008606:	08a2                	slli	a7,a7,0x8
1c008608:	01677733          	and	a4,a4,s6
1c00860c:	0167f7b3          	and	a5,a5,s6
1c008610:	00676733          	or	a4,a4,t1
1c008614:	0117e7b3          	or	a5,a5,a7
1c008618:	00ff0337          	lui	t1,0xff0
1c00861c:	00ff08b7          	lui	a7,0xff0
1c008620:	00687333          	and	t1,a6,t1
1c008624:	0116f8b3          	and	a7,a3,a7
1c008628:	01577733          	and	a4,a4,s5
1c00862c:	0157f7b3          	and	a5,a5,s5
1c008630:	00676733          	or	a4,a4,t1
1c008634:	01885813          	srli	a6,a6,0x18
1c008638:	0117e7b3          	or	a5,a5,a7
1c00863c:	82e1                	srli	a3,a3,0x18
1c00863e:	0862                	slli	a6,a6,0x18
1c008640:	01477733          	and	a4,a4,s4
1c008644:	06e2                	slli	a3,a3,0x18
1c008646:	0147f7b3          	and	a5,a5,s4
1c00864a:	01076733          	or	a4,a4,a6
1c00864e:	8fd5                	or	a5,a5,a3
1c008650:	c218                	sw	a4,0(a2)
1c008652:	c25c                	sw	a5,4(a2)
1c008654:	0621                	addi	a2,a2,8
1c008656:	05a1                	addi	a1,a1,8
1c008658:	f8c517e3          	bne	a0,a2,1c0085e6 <shake128+0x58>
1c00865c:	8c2a                	mv	s8,a0
1c00865e:	f6851de3          	bne	a0,s0,1c0085d8 <shake128+0x4a>
1c008662:	4b92                	lw	s7,4(sp)
1c008664:	0a800793          	li	a5,168
1c008668:	02f9f9b3          	remu	s3,s3,a5
1c00866c:	02099363          	bnez	s3,1c008692 <shake128+0x104>
1c008670:	855e                	mv	a0,s7
1c008672:	0c800593          	li	a1,200
1c008676:	63e010ef          	jal	ra,1c009cb4 <pi_l2_free>
1c00867a:	40fe                	lw	ra,220(sp)
1c00867c:	446e                	lw	s0,216(sp)
1c00867e:	44de                	lw	s1,212(sp)
1c008680:	494e                	lw	s2,208(sp)
1c008682:	49be                	lw	s3,204(sp)
1c008684:	4a2e                	lw	s4,200(sp)
1c008686:	4a9e                	lw	s5,196(sp)
1c008688:	4b0e                	lw	s6,192(sp)
1c00868a:	5bfa                	lw	s7,188(sp)
1c00868c:	5c6a                	lw	s8,184(sp)
1c00868e:	612d                	addi	sp,sp,224
1c008690:	8082                	ret
1c008692:	85de                	mv	a1,s7
1c008694:	855e                	mv	a0,s7
1c008696:	31c9                	jal	1c008358 <KeccakF1600_StatePermute>
1c008698:	0028                	addi	a0,sp,8
1c00869a:	7341                	lui	t1,0xffff0
1c00869c:	ff0108b7          	lui	a7,0xff010
1c0086a0:	01000837          	lui	a6,0x1000
1c0086a4:	0b010e13          	addi	t3,sp,176
1c0086a8:	85aa                	mv	a1,a0
1c0086aa:	0ff30313          	addi	t1,t1,255 # ffff00ff <pulp__FC+0xffff0100>
1c0086ae:	18fd                	addi	a7,a7,-1
1c0086b0:	187d                	addi	a6,a6,-1
1c0086b2:	000ba603          	lw	a2,0(s7)
1c0086b6:	004ba683          	lw	a3,4(s7)
1c0086ba:	00865f13          	srli	t5,a2,0x8
1c0086be:	0086de93          	srli	t4,a3,0x8
1c0086c2:	0ff67713          	andi	a4,a2,255
1c0086c6:	0ff6f793          	andi	a5,a3,255
1c0086ca:	0fff7f13          	andi	t5,t5,255
1c0086ce:	0ffefe93          	andi	t4,t4,255
1c0086d2:	0f22                	slli	t5,t5,0x8
1c0086d4:	0ea2                	slli	t4,t4,0x8
1c0086d6:	00677733          	and	a4,a4,t1
1c0086da:	0067f7b3          	and	a5,a5,t1
1c0086de:	01e76733          	or	a4,a4,t5
1c0086e2:	01d7e7b3          	or	a5,a5,t4
1c0086e6:	00ff0f37          	lui	t5,0xff0
1c0086ea:	00ff0eb7          	lui	t4,0xff0
1c0086ee:	01e67f33          	and	t5,a2,t5
1c0086f2:	01d6feb3          	and	t4,a3,t4
1c0086f6:	01177733          	and	a4,a4,a7
1c0086fa:	0117f7b3          	and	a5,a5,a7
1c0086fe:	01e76733          	or	a4,a4,t5
1c008702:	8261                	srli	a2,a2,0x18
1c008704:	01d7e7b3          	or	a5,a5,t4
1c008708:	82e1                	srli	a3,a3,0x18
1c00870a:	0662                	slli	a2,a2,0x18
1c00870c:	01077733          	and	a4,a4,a6
1c008710:	06e2                	slli	a3,a3,0x18
1c008712:	0107f7b3          	and	a5,a5,a6
1c008716:	8f51                	or	a4,a4,a2
1c008718:	8fd5                	or	a5,a5,a3
1c00871a:	c198                	sw	a4,0(a1)
1c00871c:	c1dc                	sw	a5,4(a1)
1c00871e:	05a1                	addi	a1,a1,8
1c008720:	0ba1                	addi	s7,s7,8
1c008722:	f8be18e3          	bne	t3,a1,1c0086b2 <shake128+0x124>
1c008726:	fff98793          	addi	a5,s3,-1
1c00872a:	4709                	li	a4,2
1c00872c:	06f77a63          	bleu	a5,a4,1c0087a0 <shake128+0x212>
1c008730:	0a800793          	li	a5,168
1c008734:	02f907b3          	mul	a5,s2,a5
1c008738:	0029d613          	srli	a2,s3,0x2
1c00873c:	97a6                	add	a5,a5,s1
1c00873e:	4701                	li	a4,0
1c008740:	4114                	lw	a3,0(a0)
1c008742:	0705                	addi	a4,a4,1
1c008744:	c394                	sw	a3,0(a5)
1c008746:	0511                	addi	a0,a0,4
1c008748:	0791                	addi	a5,a5,4
1c00874a:	fec76be3          	bltu	a4,a2,1c008740 <shake128+0x1b2>
1c00874e:	ffc9f793          	andi	a5,s3,-4
1c008752:	04f98563          	beq	s3,a5,1c00879c <shake128+0x20e>
1c008756:	0a800713          	li	a4,168
1c00875a:	1910                	addi	a2,sp,176
1c00875c:	02e90933          	mul	s2,s2,a4
1c008760:	00f60733          	add	a4,a2,a5
1c008764:	f5874683          	lbu	a3,-168(a4)
1c008768:	94ca                	add	s1,s1,s2
1c00876a:	00f48733          	add	a4,s1,a5
1c00876e:	00d70023          	sb	a3,0(a4)
1c008772:	00178713          	addi	a4,a5,1
1c008776:	03377363          	bleu	s3,a4,1c00879c <shake128+0x20e>
1c00877a:	00e606b3          	add	a3,a2,a4
1c00877e:	f586c683          	lbu	a3,-168(a3)
1c008782:	9726                	add	a4,a4,s1
1c008784:	00d70023          	sb	a3,0(a4)
1c008788:	0789                	addi	a5,a5,2
1c00878a:	0137f963          	bleu	s3,a5,1c00879c <shake128+0x20e>
1c00878e:	00f60733          	add	a4,a2,a5
1c008792:	f5874703          	lbu	a4,-168(a4)
1c008796:	94be                	add	s1,s1,a5
1c008798:	00e48023          	sb	a4,0(s1)
1c00879c:	4b92                	lw	s7,4(sp)
1c00879e:	bdc9                	j	1c008670 <shake128+0xe2>
1c0087a0:	4781                	li	a5,0
1c0087a2:	bf55                	j	1c008756 <shake128+0x1c8>

1c0087a4 <pos_wait_forever>:
1c0087a4:	f14027f3          	csrr	a5,mhartid
1c0087a8:	8795                	srai	a5,a5,0x5
1c0087aa:	03f7f793          	andi	a5,a5,63
1c0087ae:	477d                	li	a4,31
1c0087b0:	00e78363          	beq	a5,a4,1c0087b6 <pos_wait_forever+0x12>
1c0087b4:	a001                	j	1c0087b4 <pos_wait_forever+0x10>
1c0087b6:	1a10a7b7          	lui	a5,0x1a10a
1c0087ba:	577d                	li	a4,-1
1c0087bc:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c0087c0:	10500073          	wfi
1c0087c4:	10500073          	wfi
1c0087c8:	bfe5                	j	1c0087c0 <pos_wait_forever+0x1c>

1c0087ca <memcmp>:
1c0087ca:	c21d                	beqz	a2,1c0087f0 <memcmp+0x26>
1c0087cc:	00054783          	lbu	a5,0(a0)
1c0087d0:	0005c703          	lbu	a4,0(a1)
1c0087d4:	962a                	add	a2,a2,a0
1c0087d6:	00f70963          	beq	a4,a5,1c0087e8 <memcmp+0x1e>
1c0087da:	a829                	j	1c0087f4 <memcmp+0x2a>
1c0087dc:	00054783          	lbu	a5,0(a0)
1c0087e0:	0005c703          	lbu	a4,0(a1)
1c0087e4:	00e79863          	bne	a5,a4,1c0087f4 <memcmp+0x2a>
1c0087e8:	0505                	addi	a0,a0,1
1c0087ea:	0585                	addi	a1,a1,1
1c0087ec:	fea618e3          	bne	a2,a0,1c0087dc <memcmp+0x12>
1c0087f0:	4501                	li	a0,0
1c0087f2:	8082                	ret
1c0087f4:	40e78533          	sub	a0,a5,a4
1c0087f8:	8082                	ret

1c0087fa <memcpy>:
1c0087fa:	00b567b3          	or	a5,a0,a1
1c0087fe:	8b8d                	andi	a5,a5,3
1c008800:	10078f63          	beqz	a5,1c00891e <memcpy+0x124>
1c008804:	14060063          	beqz	a2,1c008944 <memcpy+0x14a>
1c008808:	00458793          	addi	a5,a1,4
1c00880c:	00450693          	addi	a3,a0,4
1c008810:	00f537b3          	sltu	a5,a0,a5
1c008814:	00d5b6b3          	sltu	a3,a1,a3
1c008818:	0017c793          	xori	a5,a5,1
1c00881c:	0016c693          	xori	a3,a3,1
1c008820:	873e                	mv	a4,a5
1c008822:	87b6                	mv	a5,a3
1c008824:	8fd9                	or	a5,a5,a4
1c008826:	0ff7f793          	andi	a5,a5,255
1c00882a:	cff9                	beqz	a5,1c008908 <memcpy+0x10e>
1c00882c:	00863793          	sltiu	a5,a2,8
1c008830:	0017c793          	xori	a5,a5,1
1c008834:	0ff7f793          	andi	a5,a5,255
1c008838:	cbe1                	beqz	a5,1c008908 <memcpy+0x10e>
1c00883a:	40b007b3          	neg	a5,a1
1c00883e:	8b8d                	andi	a5,a5,3
1c008840:	fff60313          	addi	t1,a2,-1
1c008844:	cfe5                	beqz	a5,1c00893c <memcpy+0x142>
1c008846:	0005c683          	lbu	a3,0(a1)
1c00884a:	4705                	li	a4,1
1c00884c:	00d50023          	sb	a3,0(a0)
1c008850:	00158893          	addi	a7,a1,1
1c008854:	00150813          	addi	a6,a0,1
1c008858:	02e78963          	beq	a5,a4,1c00888a <memcpy+0x90>
1c00885c:	0015c683          	lbu	a3,1(a1)
1c008860:	470d                	li	a4,3
1c008862:	00d500a3          	sb	a3,1(a0)
1c008866:	00258893          	addi	a7,a1,2
1c00886a:	00250813          	addi	a6,a0,2
1c00886e:	ffe60313          	addi	t1,a2,-2
1c008872:	00e79c63          	bne	a5,a4,1c00888a <memcpy+0x90>
1c008876:	0025c703          	lbu	a4,2(a1)
1c00887a:	00358893          	addi	a7,a1,3
1c00887e:	00350813          	addi	a6,a0,3
1c008882:	00e50123          	sb	a4,2(a0)
1c008886:	ffd60313          	addi	t1,a2,-3
1c00888a:	8e1d                	sub	a2,a2,a5
1c00888c:	95be                	add	a1,a1,a5
1c00888e:	00265e13          	srli	t3,a2,0x2
1c008892:	97aa                	add	a5,a5,a0
1c008894:	4701                	li	a4,0
1c008896:	4194                	lw	a3,0(a1)
1c008898:	0705                	addi	a4,a4,1
1c00889a:	c394                	sw	a3,0(a5)
1c00889c:	0591                	addi	a1,a1,4
1c00889e:	0791                	addi	a5,a5,4
1c0088a0:	ffc76be3          	bltu	a4,t3,1c008896 <memcpy+0x9c>
1c0088a4:	ffc67593          	andi	a1,a2,-4
1c0088a8:	40b306b3          	sub	a3,t1,a1
1c0088ac:	00b807b3          	add	a5,a6,a1
1c0088b0:	00b88733          	add	a4,a7,a1
1c0088b4:	06b60463          	beq	a2,a1,1c00891c <memcpy+0x122>
1c0088b8:	00074583          	lbu	a1,0(a4)
1c0088bc:	fff68613          	addi	a2,a3,-1
1c0088c0:	00b78023          	sb	a1,0(a5)
1c0088c4:	ce21                	beqz	a2,1c00891c <memcpy+0x122>
1c0088c6:	00174583          	lbu	a1,1(a4)
1c0088ca:	ffe68613          	addi	a2,a3,-2
1c0088ce:	00b780a3          	sb	a1,1(a5)
1c0088d2:	c629                	beqz	a2,1c00891c <memcpy+0x122>
1c0088d4:	00274583          	lbu	a1,2(a4)
1c0088d8:	ffd68613          	addi	a2,a3,-3
1c0088dc:	00b78123          	sb	a1,2(a5)
1c0088e0:	ce15                	beqz	a2,1c00891c <memcpy+0x122>
1c0088e2:	00374583          	lbu	a1,3(a4)
1c0088e6:	ffc68613          	addi	a2,a3,-4
1c0088ea:	00b781a3          	sb	a1,3(a5)
1c0088ee:	c61d                	beqz	a2,1c00891c <memcpy+0x122>
1c0088f0:	00474583          	lbu	a1,4(a4)
1c0088f4:	4615                	li	a2,5
1c0088f6:	00b78223          	sb	a1,4(a5)
1c0088fa:	02c68163          	beq	a3,a2,1c00891c <memcpy+0x122>
1c0088fe:	00574703          	lbu	a4,5(a4)
1c008902:	00e782a3          	sb	a4,5(a5)
1c008906:	8082                	ret
1c008908:	962e                	add	a2,a2,a1
1c00890a:	87aa                	mv	a5,a0
1c00890c:	0585                	addi	a1,a1,1
1c00890e:	fff5c703          	lbu	a4,-1(a1)
1c008912:	0785                	addi	a5,a5,1
1c008914:	fee78fa3          	sb	a4,-1(a5)
1c008918:	fec59ae3          	bne	a1,a2,1c00890c <memcpy+0x112>
1c00891c:	8082                	ret
1c00891e:	00367793          	andi	a5,a2,3
1c008922:	ee0793e3          	bnez	a5,1c008808 <memcpy+0xe>
1c008926:	da7d                	beqz	a2,1c00891c <memcpy+0x122>
1c008928:	87aa                	mv	a5,a0
1c00892a:	0591                	addi	a1,a1,4
1c00892c:	ffc5a703          	lw	a4,-4(a1)
1c008930:	0791                	addi	a5,a5,4
1c008932:	fee7ae23          	sw	a4,-4(a5)
1c008936:	1671                	addi	a2,a2,-4
1c008938:	fa6d                	bnez	a2,1c00892a <memcpy+0x130>
1c00893a:	8082                	ret
1c00893c:	88ae                	mv	a7,a1
1c00893e:	882a                	mv	a6,a0
1c008940:	8332                	mv	t1,a2
1c008942:	b7a1                	j	1c00888a <memcpy+0x90>
1c008944:	8082                	ret

1c008946 <memmove>:
1c008946:	40b507b3          	sub	a5,a0,a1
1c00894a:	10c7e463          	bltu	a5,a2,1c008a52 <memmove+0x10c>
1c00894e:	12060b63          	beqz	a2,1c008a84 <memmove+0x13e>
1c008952:	00458793          	addi	a5,a1,4
1c008956:	00450693          	addi	a3,a0,4
1c00895a:	00f537b3          	sltu	a5,a0,a5
1c00895e:	00d5b6b3          	sltu	a3,a1,a3
1c008962:	0017c793          	xori	a5,a5,1
1c008966:	0016c693          	xori	a3,a3,1
1c00896a:	873e                	mv	a4,a5
1c00896c:	87b6                	mv	a5,a3
1c00896e:	8fd9                	or	a5,a5,a4
1c008970:	0ff7f793          	andi	a5,a5,255
1c008974:	cfed                	beqz	a5,1c008a6e <memmove+0x128>
1c008976:	00863793          	sltiu	a5,a2,8
1c00897a:	0017c793          	xori	a5,a5,1
1c00897e:	0ff7f793          	andi	a5,a5,255
1c008982:	c7f5                	beqz	a5,1c008a6e <memmove+0x128>
1c008984:	40b007b3          	neg	a5,a1
1c008988:	8b8d                	andi	a5,a5,3
1c00898a:	fff60313          	addi	t1,a2,-1
1c00898e:	cfe5                	beqz	a5,1c008a86 <memmove+0x140>
1c008990:	0005c683          	lbu	a3,0(a1)
1c008994:	4705                	li	a4,1
1c008996:	00d50023          	sb	a3,0(a0)
1c00899a:	00150813          	addi	a6,a0,1
1c00899e:	00158893          	addi	a7,a1,1
1c0089a2:	02e78963          	beq	a5,a4,1c0089d4 <memmove+0x8e>
1c0089a6:	0015c683          	lbu	a3,1(a1)
1c0089aa:	470d                	li	a4,3
1c0089ac:	00d500a3          	sb	a3,1(a0)
1c0089b0:	00250813          	addi	a6,a0,2
1c0089b4:	00258893          	addi	a7,a1,2
1c0089b8:	ffe60313          	addi	t1,a2,-2
1c0089bc:	00e79c63          	bne	a5,a4,1c0089d4 <memmove+0x8e>
1c0089c0:	0025c703          	lbu	a4,2(a1)
1c0089c4:	00350813          	addi	a6,a0,3
1c0089c8:	00e50123          	sb	a4,2(a0)
1c0089cc:	00358893          	addi	a7,a1,3
1c0089d0:	ffd60313          	addi	t1,a2,-3
1c0089d4:	8e1d                	sub	a2,a2,a5
1c0089d6:	95be                	add	a1,a1,a5
1c0089d8:	00265e13          	srli	t3,a2,0x2
1c0089dc:	97aa                	add	a5,a5,a0
1c0089de:	4701                	li	a4,0
1c0089e0:	4194                	lw	a3,0(a1)
1c0089e2:	0705                	addi	a4,a4,1
1c0089e4:	c394                	sw	a3,0(a5)
1c0089e6:	0591                	addi	a1,a1,4
1c0089e8:	0791                	addi	a5,a5,4
1c0089ea:	ffc76be3          	bltu	a4,t3,1c0089e0 <memmove+0x9a>
1c0089ee:	ffc67593          	andi	a1,a2,-4
1c0089f2:	40b306b3          	sub	a3,t1,a1
1c0089f6:	00b807b3          	add	a5,a6,a1
1c0089fa:	00b88733          	add	a4,a7,a1
1c0089fe:	08b60263          	beq	a2,a1,1c008a82 <memmove+0x13c>
1c008a02:	00074583          	lbu	a1,0(a4)
1c008a06:	fff68613          	addi	a2,a3,-1
1c008a0a:	00b78023          	sb	a1,0(a5)
1c008a0e:	ca35                	beqz	a2,1c008a82 <memmove+0x13c>
1c008a10:	00174583          	lbu	a1,1(a4)
1c008a14:	ffe68613          	addi	a2,a3,-2
1c008a18:	00b780a3          	sb	a1,1(a5)
1c008a1c:	c23d                	beqz	a2,1c008a82 <memmove+0x13c>
1c008a1e:	00274583          	lbu	a1,2(a4)
1c008a22:	ffd68613          	addi	a2,a3,-3
1c008a26:	00b78123          	sb	a1,2(a5)
1c008a2a:	ce21                	beqz	a2,1c008a82 <memmove+0x13c>
1c008a2c:	00374583          	lbu	a1,3(a4)
1c008a30:	ffc68613          	addi	a2,a3,-4
1c008a34:	00b781a3          	sb	a1,3(a5)
1c008a38:	c629                	beqz	a2,1c008a82 <memmove+0x13c>
1c008a3a:	00474583          	lbu	a1,4(a4)
1c008a3e:	4615                	li	a2,5
1c008a40:	00b78223          	sb	a1,4(a5)
1c008a44:	02c68f63          	beq	a3,a2,1c008a82 <memmove+0x13c>
1c008a48:	00574703          	lbu	a4,5(a4)
1c008a4c:	00e782a3          	sb	a4,5(a5)
1c008a50:	8082                	ret
1c008a52:	167d                	addi	a2,a2,-1
1c008a54:	00c587b3          	add	a5,a1,a2
1c008a58:	962a                	add	a2,a2,a0
1c008a5a:	15fd                	addi	a1,a1,-1
1c008a5c:	0007c703          	lbu	a4,0(a5)
1c008a60:	17fd                	addi	a5,a5,-1
1c008a62:	00e60023          	sb	a4,0(a2)
1c008a66:	167d                	addi	a2,a2,-1
1c008a68:	feb79ae3          	bne	a5,a1,1c008a5c <memmove+0x116>
1c008a6c:	8082                	ret
1c008a6e:	962a                	add	a2,a2,a0
1c008a70:	87aa                	mv	a5,a0
1c008a72:	0005c703          	lbu	a4,0(a1)
1c008a76:	0785                	addi	a5,a5,1
1c008a78:	fee78fa3          	sb	a4,-1(a5)
1c008a7c:	0585                	addi	a1,a1,1
1c008a7e:	fec79ae3          	bne	a5,a2,1c008a72 <memmove+0x12c>
1c008a82:	8082                	ret
1c008a84:	8082                	ret
1c008a86:	88ae                	mv	a7,a1
1c008a88:	882a                	mv	a6,a0
1c008a8a:	8332                	mv	t1,a2
1c008a8c:	b7a1                	j	1c0089d4 <memmove+0x8e>

1c008a8e <strchr>:
1c008a8e:	00054783          	lbu	a5,0(a0)
1c008a92:	0ff5f593          	andi	a1,a1,255
1c008a96:	00b78863          	beq	a5,a1,1c008aa6 <strchr+0x18>
1c008a9a:	c799                	beqz	a5,1c008aa8 <strchr+0x1a>
1c008a9c:	0505                	addi	a0,a0,1
1c008a9e:	00054783          	lbu	a5,0(a0)
1c008aa2:	feb79ce3          	bne	a5,a1,1c008a9a <strchr+0xc>
1c008aa6:	8082                	ret
1c008aa8:	0015b593          	seqz	a1,a1
1c008aac:	40b005b3          	neg	a1,a1
1c008ab0:	8d6d                	and	a0,a0,a1
1c008ab2:	8082                	ret

1c008ab4 <puts>:
1c008ab4:	00054783          	lbu	a5,0(a0)
1c008ab8:	c78d                	beqz	a5,1c008ae2 <puts+0x2e>
1c008aba:	f14026f3          	csrr	a3,mhartid
1c008abe:	00369713          	slli	a4,a3,0x3
1c008ac2:	1a10f637          	lui	a2,0x1a10f
1c008ac6:	0ff77713          	andi	a4,a4,255
1c008aca:	9732                	add	a4,a4,a2
1c008acc:	6609                	lui	a2,0x2
1c008ace:	068a                	slli	a3,a3,0x2
1c008ad0:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008ad4:	8ef1                	and	a3,a3,a2
1c008ad6:	9736                	add	a4,a4,a3
1c008ad8:	c31c                	sw	a5,0(a4)
1c008ada:	0505                	addi	a0,a0,1
1c008adc:	00054783          	lbu	a5,0(a0)
1c008ae0:	ffe5                	bnez	a5,1c008ad8 <puts+0x24>
1c008ae2:	f1402773          	csrr	a4,mhartid
1c008ae6:	00371793          	slli	a5,a4,0x3
1c008aea:	1a10f6b7          	lui	a3,0x1a10f
1c008aee:	0ff7f793          	andi	a5,a5,255
1c008af2:	97b6                	add	a5,a5,a3
1c008af4:	6689                	lui	a3,0x2
1c008af6:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008afa:	070a                	slli	a4,a4,0x2
1c008afc:	8f75                	and	a4,a4,a3
1c008afe:	97ba                	add	a5,a5,a4
1c008b00:	4729                	li	a4,10
1c008b02:	c398                	sw	a4,0(a5)
1c008b04:	4501                	li	a0,0
1c008b06:	8082                	ret

1c008b08 <pos_libc_fputc_locked>:
1c008b08:	6689                	lui	a3,0x2
1c008b0a:	f14027f3          	csrr	a5,mhartid
1c008b0e:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008b12:	00379713          	slli	a4,a5,0x3
1c008b16:	078a                	slli	a5,a5,0x2
1c008b18:	8ff5                	and	a5,a5,a3
1c008b1a:	0ff77713          	andi	a4,a4,255
1c008b1e:	1a10f6b7          	lui	a3,0x1a10f
1c008b22:	9736                	add	a4,a4,a3
1c008b24:	0ff57513          	andi	a0,a0,255
1c008b28:	97ba                	add	a5,a5,a4
1c008b2a:	c388                	sw	a0,0(a5)
1c008b2c:	4501                	li	a0,0
1c008b2e:	8082                	ret

1c008b30 <putchar>:
1c008b30:	6689                	lui	a3,0x2
1c008b32:	f14027f3          	csrr	a5,mhartid
1c008b36:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c008b3a:	00379713          	slli	a4,a5,0x3
1c008b3e:	078a                	slli	a5,a5,0x2
1c008b40:	8ff5                	and	a5,a5,a3
1c008b42:	0ff77713          	andi	a4,a4,255
1c008b46:	1a10f6b7          	lui	a3,0x1a10f
1c008b4a:	9736                	add	a4,a4,a3
1c008b4c:	0ff57513          	andi	a0,a0,255
1c008b50:	97ba                	add	a5,a5,a4
1c008b52:	c388                	sw	a0,0(a5)
1c008b54:	4501                	li	a0,0
1c008b56:	8082                	ret

1c008b58 <pos_libc_prf_locked>:
1c008b58:	a0b1                	j	1c008ba4 <pos_libc_prf>

1c008b5a <exit>:
1c008b5a:	800007b7          	lui	a5,0x80000
1c008b5e:	1141                	addi	sp,sp,-16
1c008b60:	8d5d                	or	a0,a0,a5
1c008b62:	c606                	sw	ra,12(sp)
1c008b64:	1a1047b7          	lui	a5,0x1a104
1c008b68:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c008b6c:	3925                	jal	1c0087a4 <pos_wait_forever>

1c008b6e <pos_io_start>:
1c008b6e:	4501                	li	a0,0
1c008b70:	8082                	ret

1c008b72 <pos_io_stop>:
1c008b72:	4501                	li	a0,0
1c008b74:	8082                	ret

1c008b76 <printf>:
1c008b76:	7139                	addi	sp,sp,-64
1c008b78:	02410313          	addi	t1,sp,36
1c008b7c:	d432                	sw	a2,40(sp)
1c008b7e:	862a                	mv	a2,a0
1c008b80:	1c009537          	lui	a0,0x1c009
1c008b84:	d22e                	sw	a1,36(sp)
1c008b86:	d636                	sw	a3,44(sp)
1c008b88:	4589                	li	a1,2
1c008b8a:	869a                	mv	a3,t1
1c008b8c:	b0850513          	addi	a0,a0,-1272 # 1c008b08 <pos_libc_fputc_locked>
1c008b90:	ce06                	sw	ra,28(sp)
1c008b92:	d83a                	sw	a4,48(sp)
1c008b94:	da3e                	sw	a5,52(sp)
1c008b96:	dc42                	sw	a6,56(sp)
1c008b98:	de46                	sw	a7,60(sp)
1c008b9a:	c61a                	sw	t1,12(sp)
1c008b9c:	3f75                	jal	1c008b58 <pos_libc_prf_locked>
1c008b9e:	40f2                	lw	ra,28(sp)
1c008ba0:	6121                	addi	sp,sp,64
1c008ba2:	8082                	ret

1c008ba4 <pos_libc_prf>:
1c008ba4:	7169                	addi	sp,sp,-304
1c008ba6:	12812423          	sw	s0,296(sp)
1c008baa:	12912223          	sw	s1,292(sp)
1c008bae:	11612823          	sw	s6,272(sp)
1c008bb2:	11712623          	sw	s7,268(sp)
1c008bb6:	11812423          	sw	s8,264(sp)
1c008bba:	11912223          	sw	s9,260(sp)
1c008bbe:	11a12023          	sw	s10,256(sp)
1c008bc2:	12112623          	sw	ra,300(sp)
1c008bc6:	13212023          	sw	s2,288(sp)
1c008bca:	11312e23          	sw	s3,284(sp)
1c008bce:	11412c23          	sw	s4,280(sp)
1c008bd2:	11512a23          	sw	s5,276(sp)
1c008bd6:	dfee                	sw	s11,252(sp)
1c008bd8:	8b2a                	mv	s6,a0
1c008bda:	8d2e                	mv	s10,a1
1c008bdc:	84b2                	mv	s1,a2
1c008bde:	8c36                	mv	s8,a3
1c008be0:	4401                	li	s0,0
1c008be2:	1c000bb7          	lui	s7,0x1c000
1c008be6:	02410c93          	addi	s9,sp,36
1c008bea:	0004c503          	lbu	a0,0(s1)
1c008bee:	0485                	addi	s1,s1,1
1c008bf0:	cd19                	beqz	a0,1c008c0e <pos_libc_prf+0x6a>
1c008bf2:	02500793          	li	a5,37
1c008bf6:	04f50863          	beq	a0,a5,1c008c46 <pos_libc_prf+0xa2>
1c008bfa:	85ea                	mv	a1,s10
1c008bfc:	9b02                	jalr	s6
1c008bfe:	57fd                	li	a5,-1
1c008c00:	24f50863          	beq	a0,a5,1c008e50 <pos_libc_prf+0x2ac>
1c008c04:	0405                	addi	s0,s0,1
1c008c06:	0004c503          	lbu	a0,0(s1)
1c008c0a:	0485                	addi	s1,s1,1
1c008c0c:	f17d                	bnez	a0,1c008bf2 <pos_libc_prf+0x4e>
1c008c0e:	8522                	mv	a0,s0
1c008c10:	12c12083          	lw	ra,300(sp)
1c008c14:	12812403          	lw	s0,296(sp)
1c008c18:	12412483          	lw	s1,292(sp)
1c008c1c:	12012903          	lw	s2,288(sp)
1c008c20:	11c12983          	lw	s3,284(sp)
1c008c24:	11812a03          	lw	s4,280(sp)
1c008c28:	11412a83          	lw	s5,276(sp)
1c008c2c:	11012b03          	lw	s6,272(sp)
1c008c30:	10c12b83          	lw	s7,268(sp)
1c008c34:	10812c03          	lw	s8,264(sp)
1c008c38:	10412c83          	lw	s9,260(sp)
1c008c3c:	10012d03          	lw	s10,256(sp)
1c008c40:	5dfe                	lw	s11,252(sp)
1c008c42:	6155                	addi	sp,sp,304
1c008c44:	8082                	ret
1c008c46:	00148a93          	addi	s5,s1,1
1c008c4a:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c008c4e:	02000713          	li	a4,32
1c008c52:	3b8b8513          	addi	a0,s7,952 # 1c0003b8 <plaintext+0x30>
1c008c56:	85ee                	mv	a1,s11
1c008c58:	c83a                	sw	a4,16(sp)
1c008c5a:	cc02                	sw	zero,24(sp)
1c008c5c:	ca02                	sw	zero,20(sp)
1c008c5e:	ce02                	sw	zero,28(sp)
1c008c60:	c602                	sw	zero,12(sp)
1c008c62:	02300913          	li	s2,35
1c008c66:	02d00a13          	li	s4,45
1c008c6a:	89d6                	mv	s3,s5
1c008c6c:	350d                	jal	1c008a8e <strchr>
1c008c6e:	c915                	beqz	a0,1c008ca2 <pos_libc_prf+0xfe>
1c008c70:	212d8963          	beq	s11,s2,1c008e82 <pos_libc_prf+0x2de>
1c008c74:	1fb97063          	bleu	s11,s2,1c008e54 <pos_libc_prf+0x2b0>
1c008c78:	214d8163          	beq	s11,s4,1c008e7a <pos_libc_prf+0x2d6>
1c008c7c:	03000613          	li	a2,48
1c008c80:	1ecd8863          	beq	s11,a2,1c008e70 <pos_libc_prf+0x2cc>
1c008c84:	02b00693          	li	a3,43
1c008c88:	1edd8063          	beq	s11,a3,1c008e68 <pos_libc_prf+0x2c4>
1c008c8c:	84d6                	mv	s1,s5
1c008c8e:	00148a93          	addi	s5,s1,1
1c008c92:	fffacd83          	lbu	s11,-1(s5)
1c008c96:	3b8b8513          	addi	a0,s7,952
1c008c9a:	85ee                	mv	a1,s11
1c008c9c:	89d6                	mv	s3,s5
1c008c9e:	3bc5                	jal	1c008a8e <strchr>
1c008ca0:	f961                	bnez	a0,1c008c70 <pos_libc_prf+0xcc>
1c008ca2:	02a00613          	li	a2,42
1c008ca6:	20cd8463          	beq	s11,a2,1c008eae <pos_libc_prf+0x30a>
1c008caa:	fd0d8613          	addi	a2,s11,-48
1c008cae:	45a5                	li	a1,9
1c008cb0:	4901                	li	s2,0
1c008cb2:	1cc5fe63          	bleu	a2,a1,1c008e8e <pos_libc_prf+0x2ea>
1c008cb6:	02e00713          	li	a4,46
1c008cba:	5a7d                	li	s4,-1
1c008cbc:	24ed8463          	beq	s11,a4,1c008f04 <pos_libc_prf+0x360>
1c008cc0:	1c000837          	lui	a6,0x1c000
1c008cc4:	85ee                	mv	a1,s11
1c008cc6:	3c080513          	addi	a0,a6,960 # 1c0003c0 <plaintext+0x38>
1c008cca:	33d1                	jal	1c008a8e <strchr>
1c008ccc:	84ce                	mv	s1,s3
1c008cce:	c509                	beqz	a0,1c008cd8 <pos_libc_prf+0x134>
1c008cd0:	0009cd83          	lbu	s11,0(s3)
1c008cd4:	00198493          	addi	s1,s3,1
1c008cd8:	06700713          	li	a4,103
1c008cdc:	1fb75963          	ble	s11,a4,1c008ece <pos_libc_prf+0x32a>
1c008ce0:	07000713          	li	a4,112
1c008ce4:	12ed89e3          	beq	s11,a4,1c009616 <pos_libc_prf+0xa72>
1c008ce8:	25b75263          	ble	s11,a4,1c008f2c <pos_libc_prf+0x388>
1c008cec:	07500713          	li	a4,117
1c008cf0:	0aed89e3          	beq	s11,a4,1c0095a2 <pos_libc_prf+0x9fe>
1c008cf4:	07800713          	li	a4,120
1c008cf8:	72ed8b63          	beq	s11,a4,1c00942e <pos_libc_prf+0x88a>
1c008cfc:	07300713          	li	a4,115
1c008d00:	1aed9ce3          	bne	s11,a4,1c0096b8 <pos_libc_prf+0xb14>
1c008d04:	000c2583          	lw	a1,0(s8)
1c008d08:	004c0a93          	addi	s5,s8,4
1c008d0c:	87ae                	mv	a5,a1
1c008d0e:	4981                	li	s3,0
1c008d10:	0c800693          	li	a3,200
1c008d14:	a021                	j	1c008d1c <pos_libc_prf+0x178>
1c008d16:	0985                	addi	s3,s3,1
1c008d18:	5ad98be3          	beq	s3,a3,1c009ace <pos_libc_prf+0xf2a>
1c008d1c:	0007c703          	lbu	a4,0(a5)
1c008d20:	0785                	addi	a5,a5,1
1c008d22:	fb75                	bnez	a4,1c008d16 <pos_libc_prf+0x172>
1c008d24:	000a4563          	bltz	s4,1c008d2e <pos_libc_prf+0x18a>
1c008d28:	013a5363          	ble	s3,s4,1c008d2e <pos_libc_prf+0x18a>
1c008d2c:	89d2                	mv	s3,s4
1c008d2e:	8c56                	mv	s8,s5
1c008d30:	ea098de3          	beqz	s3,1c008bea <pos_libc_prf+0x46>
1c008d34:	864e                	mv	a2,s3
1c008d36:	8566                	mv	a0,s9
1c008d38:	34c9                	jal	1c0087fa <memcpy>
1c008d3a:	8c56                	mv	s8,s5
1c008d3c:	0f29d963          	ble	s2,s3,1c008e2e <pos_libc_prf+0x28a>
1c008d40:	c602                	sw	zero,12(sp)
1c008d42:	48f2                	lw	a7,28(sp)
1c008d44:	1a0885e3          	beqz	a7,1c0096ee <pos_libc_prf+0xb4a>
1c008d48:	013c87b3          	add	a5,s9,s3
1c008d4c:	40f007b3          	neg	a5,a5
1c008d50:	8b8d                	andi	a5,a5,3
1c008d52:	00378693          	addi	a3,a5,3
1c008d56:	4715                	li	a4,5
1c008d58:	413905b3          	sub	a1,s2,s3
1c008d5c:	00e6f363          	bleu	a4,a3,1c008d62 <pos_libc_prf+0x1be>
1c008d60:	4695                	li	a3,5
1c008d62:	fff90713          	addi	a4,s2,-1
1c008d66:	41370733          	sub	a4,a4,s3
1c008d6a:	06d76663          	bltu	a4,a3,1c008dd6 <pos_libc_prf+0x232>
1c008d6e:	86ce                	mv	a3,s3
1c008d70:	cb9d                	beqz	a5,1c008da6 <pos_libc_prf+0x202>
1c008d72:	0f010813          	addi	a6,sp,240
1c008d76:	013806b3          	add	a3,a6,s3
1c008d7a:	02000713          	li	a4,32
1c008d7e:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c008d82:	4605                	li	a2,1
1c008d84:	00198693          	addi	a3,s3,1
1c008d88:	00c78f63          	beq	a5,a2,1c008da6 <pos_libc_prf+0x202>
1c008d8c:	96c2                	add	a3,a3,a6
1c008d8e:	f2e68a23          	sb	a4,-204(a3)
1c008d92:	460d                	li	a2,3
1c008d94:	00298693          	addi	a3,s3,2
1c008d98:	00c79763          	bne	a5,a2,1c008da6 <pos_libc_prf+0x202>
1c008d9c:	96c2                	add	a3,a3,a6
1c008d9e:	f2e68a23          	sb	a4,-204(a3)
1c008da2:	00398693          	addi	a3,s3,3
1c008da6:	8d9d                	sub	a1,a1,a5
1c008da8:	97ce                	add	a5,a5,s3
1c008daa:	0025d613          	srli	a2,a1,0x2
1c008dae:	97e6                	add	a5,a5,s9
1c008db0:	4701                	li	a4,0
1c008db2:	1c0008b7          	lui	a7,0x1c000
1c008db6:	3b488893          	addi	a7,a7,948 # 1c0003b4 <plaintext+0x2c>
1c008dba:	0008a883          	lw	a7,0(a7)
1c008dbe:	0705                	addi	a4,a4,1
1c008dc0:	0117a023          	sw	a7,0(a5)
1c008dc4:	0791                	addi	a5,a5,4
1c008dc6:	fec766e3          	bltu	a4,a2,1c008db2 <pos_libc_prf+0x20e>
1c008dca:	ffc5f793          	andi	a5,a1,-4
1c008dce:	00d789b3          	add	s3,a5,a3
1c008dd2:	04b78b63          	beq	a5,a1,1c008e28 <pos_libc_prf+0x284>
1c008dd6:	1988                	addi	a0,sp,240
1c008dd8:	01350733          	add	a4,a0,s3
1c008ddc:	02000793          	li	a5,32
1c008de0:	f2f70a23          	sb	a5,-204(a4)
1c008de4:	00198713          	addi	a4,s3,1
1c008de8:	05275063          	ble	s2,a4,1c008e28 <pos_libc_prf+0x284>
1c008dec:	972a                	add	a4,a4,a0
1c008dee:	f2f70a23          	sb	a5,-204(a4)
1c008df2:	00298713          	addi	a4,s3,2
1c008df6:	03275963          	ble	s2,a4,1c008e28 <pos_libc_prf+0x284>
1c008dfa:	972a                	add	a4,a4,a0
1c008dfc:	f2f70a23          	sb	a5,-204(a4)
1c008e00:	00398713          	addi	a4,s3,3
1c008e04:	03275263          	ble	s2,a4,1c008e28 <pos_libc_prf+0x284>
1c008e08:	972a                	add	a4,a4,a0
1c008e0a:	f2f70a23          	sb	a5,-204(a4)
1c008e0e:	00498713          	addi	a4,s3,4
1c008e12:	01275b63          	ble	s2,a4,1c008e28 <pos_libc_prf+0x284>
1c008e16:	972a                	add	a4,a4,a0
1c008e18:	f2f70a23          	sb	a5,-204(a4)
1c008e1c:	0995                	addi	s3,s3,5
1c008e1e:	0129d563          	ble	s2,s3,1c008e28 <pos_libc_prf+0x284>
1c008e22:	99aa                	add	s3,s3,a0
1c008e24:	f2f98a23          	sb	a5,-204(s3)
1c008e28:	89ca                	mv	s3,s2
1c008e2a:	dc0980e3          	beqz	s3,1c008bea <pos_libc_prf+0x46>
1c008e2e:	8966                	mv	s2,s9
1c008e30:	5a7d                	li	s4,-1
1c008e32:	41940ab3          	sub	s5,s0,s9
1c008e36:	a029                	j	1c008e40 <pos_libc_prf+0x29c>
1c008e38:	01590433          	add	s0,s2,s5
1c008e3c:	da0987e3          	beqz	s3,1c008bea <pos_libc_prf+0x46>
1c008e40:	00094503          	lbu	a0,0(s2)
1c008e44:	85ea                	mv	a1,s10
1c008e46:	9b02                	jalr	s6
1c008e48:	0905                	addi	s2,s2,1
1c008e4a:	19fd                	addi	s3,s3,-1
1c008e4c:	ff4516e3          	bne	a0,s4,1c008e38 <pos_libc_prf+0x294>
1c008e50:	547d                	li	s0,-1
1c008e52:	bb75                	j	1c008c0e <pos_libc_prf+0x6a>
1c008e54:	da0d8de3          	beqz	s11,1c008c0e <pos_libc_prf+0x6a>
1c008e58:	02000513          	li	a0,32
1c008e5c:	e2ad98e3          	bne	s11,a0,1c008c8c <pos_libc_prf+0xe8>
1c008e60:	4785                	li	a5,1
1c008e62:	cc3e                	sw	a5,24(sp)
1c008e64:	84d6                	mv	s1,s5
1c008e66:	b525                	j	1c008c8e <pos_libc_prf+0xea>
1c008e68:	4705                	li	a4,1
1c008e6a:	ca3a                	sw	a4,20(sp)
1c008e6c:	84d6                	mv	s1,s5
1c008e6e:	b505                	j	1c008c8e <pos_libc_prf+0xea>
1c008e70:	03000893          	li	a7,48
1c008e74:	c846                	sw	a7,16(sp)
1c008e76:	84d6                	mv	s1,s5
1c008e78:	bd19                	j	1c008c8e <pos_libc_prf+0xea>
1c008e7a:	4685                	li	a3,1
1c008e7c:	ce36                	sw	a3,28(sp)
1c008e7e:	84d6                	mv	s1,s5
1c008e80:	b539                	j	1c008c8e <pos_libc_prf+0xea>
1c008e82:	4805                	li	a6,1
1c008e84:	c642                	sw	a6,12(sp)
1c008e86:	84d6                	mv	s1,s5
1c008e88:	b519                	j	1c008c8e <pos_libc_prf+0xea>
1c008e8a:	84d6                	mv	s1,s5
1c008e8c:	0a85                	addi	s5,s5,1
1c008e8e:	00291793          	slli	a5,s2,0x2
1c008e92:	97ca                	add	a5,a5,s2
1c008e94:	0786                	slli	a5,a5,0x1
1c008e96:	97ee                	add	a5,a5,s11
1c008e98:	000acd83          	lbu	s11,0(s5)
1c008e9c:	fd078913          	addi	s2,a5,-48
1c008ea0:	fd0d8793          	addi	a5,s11,-48
1c008ea4:	fef5f3e3          	bleu	a5,a1,1c008e8a <pos_libc_prf+0x2e6>
1c008ea8:	00248993          	addi	s3,s1,2
1c008eac:	a811                	j	1c008ec0 <pos_libc_prf+0x31c>
1c008eae:	000c2903          	lw	s2,0(s8)
1c008eb2:	0c11                	addi	s8,s8,4
1c008eb4:	14094663          	bltz	s2,1c009000 <pos_libc_prf+0x45c>
1c008eb8:	000acd83          	lbu	s11,0(s5)
1c008ebc:	00248993          	addi	s3,s1,2
1c008ec0:	0c800713          	li	a4,200
1c008ec4:	df2779e3          	bleu	s2,a4,1c008cb6 <pos_libc_prf+0x112>
1c008ec8:	0c800913          	li	s2,200
1c008ecc:	b3ed                	j	1c008cb6 <pos_libc_prf+0x112>
1c008ece:	06500713          	li	a4,101
1c008ed2:	12eddc63          	ble	a4,s11,1c00900a <pos_libc_prf+0x466>
1c008ed6:	04700713          	li	a4,71
1c008eda:	55b74063          	blt	a4,s11,1c00941a <pos_libc_prf+0x876>
1c008ede:	04500713          	li	a4,69
1c008ee2:	12edd463          	ble	a4,s11,1c00900a <pos_libc_prf+0x466>
1c008ee6:	d20d84e3          	beqz	s11,1c008c0e <pos_libc_prf+0x6a>
1c008eea:	02500713          	li	a4,37
1c008eee:	7ced9563          	bne	s11,a4,1c0096b8 <pos_libc_prf+0xb14>
1c008ef2:	85ea                	mv	a1,s10
1c008ef4:	02500513          	li	a0,37
1c008ef8:	9b02                	jalr	s6
1c008efa:	57fd                	li	a5,-1
1c008efc:	f4f50ae3          	beq	a0,a5,1c008e50 <pos_libc_prf+0x2ac>
1c008f00:	0405                	addi	s0,s0,1
1c008f02:	b311                	j	1c008c06 <pos_libc_prf+0x62>
1c008f04:	0009c783          	lbu	a5,0(s3)
1c008f08:	02a00713          	li	a4,42
1c008f0c:	00198693          	addi	a3,s3,1
1c008f10:	0ae79d63          	bne	a5,a4,1c008fca <pos_libc_prf+0x426>
1c008f14:	000c2a03          	lw	s4,0(s8)
1c008f18:	0019cd83          	lbu	s11,1(s3)
1c008f1c:	0c11                	addi	s8,s8,4
1c008f1e:	0989                	addi	s3,s3,2
1c008f20:	0c800713          	li	a4,200
1c008f24:	d9475ee3          	ble	s4,a4,1c008cc0 <pos_libc_prf+0x11c>
1c008f28:	5a7d                	li	s4,-1
1c008f2a:	bb59                	j	1c008cc0 <pos_libc_prf+0x11c>
1c008f2c:	06e00713          	li	a4,110
1c008f30:	76ed8e63          	beq	s11,a4,1c0096ac <pos_libc_prf+0xb08>
1c008f34:	5bb75663          	ble	s11,a4,1c0094e0 <pos_libc_prf+0x93c>
1c008f38:	4732                	lw	a4,12(sp)
1c008f3a:	004c0513          	addi	a0,s8,4
1c008f3e:	000c2683          	lw	a3,0(s8)
1c008f42:	1c070de3          	beqz	a4,1c00991c <pos_libc_prf+0xd78>
1c008f46:	03000793          	li	a5,48
1c008f4a:	02f10223          	sb	a5,36(sp)
1c008f4e:	16068de3          	beqz	a3,1c0098c8 <pos_libc_prf+0xd24>
1c008f52:	02510593          	addi	a1,sp,37
1c008f56:	872e                	mv	a4,a1
1c008f58:	87ba                	mv	a5,a4
1c008f5a:	0076f613          	andi	a2,a3,7
1c008f5e:	0785                	addi	a5,a5,1
1c008f60:	03060613          	addi	a2,a2,48
1c008f64:	828d                	srli	a3,a3,0x3
1c008f66:	fec78fa3          	sb	a2,-1(a5)
1c008f6a:	fae5                	bnez	a3,1c008f5a <pos_libc_prf+0x3b6>
1c008f6c:	40b789b3          	sub	s3,a5,a1
1c008f70:	0149db63          	ble	s4,s3,1c008f86 <pos_libc_prf+0x3e2>
1c008f74:	03000693          	li	a3,48
1c008f78:	0785                	addi	a5,a5,1
1c008f7a:	fed78fa3          	sb	a3,-1(a5)
1c008f7e:	40b789b3          	sub	s3,a5,a1
1c008f82:	ff49cbe3          	blt	s3,s4,1c008f78 <pos_libc_prf+0x3d4>
1c008f86:	00078023          	sb	zero,0(a5)
1c008f8a:	17fd                	addi	a5,a5,-1
1c008f8c:	00f77e63          	bleu	a5,a4,1c008fa8 <pos_libc_prf+0x404>
1c008f90:	00074603          	lbu	a2,0(a4)
1c008f94:	0007c683          	lbu	a3,0(a5)
1c008f98:	00c78023          	sb	a2,0(a5)
1c008f9c:	00d70023          	sb	a3,0(a4)
1c008fa0:	17fd                	addi	a5,a5,-1
1c008fa2:	0705                	addi	a4,a4,1
1c008fa4:	fef766e3          	bltu	a4,a5,1c008f90 <pos_libc_prf+0x3ec>
1c008fa8:	4832                	lw	a6,12(sp)
1c008faa:	57fd                	li	a5,-1
1c008fac:	99c2                	add	s3,s3,a6
1c008fae:	22fa0ee3          	beq	s4,a5,1c0099ea <pos_libc_prf+0xe46>
1c008fb2:	0c800793          	li	a5,200
1c008fb6:	e937cde3          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c008fba:	02000693          	li	a3,32
1c008fbe:	8c2a                	mv	s8,a0
1c008fc0:	c602                	sw	zero,12(sp)
1c008fc2:	c836                	sw	a3,16(sp)
1c008fc4:	d729cfe3          	blt	s3,s2,1c008d42 <pos_libc_prf+0x19e>
1c008fc8:	b58d                	j	1c008e2a <pos_libc_prf+0x286>
1c008fca:	fd078593          	addi	a1,a5,-48
1c008fce:	4725                	li	a4,9
1c008fd0:	8dbe                	mv	s11,a5
1c008fd2:	4a01                	li	s4,0
1c008fd4:	4625                	li	a2,9
1c008fd6:	00b77663          	bleu	a1,a4,1c008fe2 <pos_libc_prf+0x43e>
1c008fda:	1070006f          	j	1c0098e0 <pos_libc_prf+0xd3c>
1c008fde:	89b6                	mv	s3,a3
1c008fe0:	0685                	addi	a3,a3,1
1c008fe2:	002a1793          	slli	a5,s4,0x2
1c008fe6:	97d2                	add	a5,a5,s4
1c008fe8:	0786                	slli	a5,a5,0x1
1c008fea:	97ee                	add	a5,a5,s11
1c008fec:	0006cd83          	lbu	s11,0(a3)
1c008ff0:	fd078a13          	addi	s4,a5,-48
1c008ff4:	fd0d8793          	addi	a5,s11,-48
1c008ff8:	fef673e3          	bleu	a5,a2,1c008fde <pos_libc_prf+0x43a>
1c008ffc:	0989                	addi	s3,s3,2
1c008ffe:	b70d                	j	1c008f20 <pos_libc_prf+0x37c>
1c009000:	4785                	li	a5,1
1c009002:	41200933          	neg	s2,s2
1c009006:	ce3e                	sw	a5,28(sp)
1c009008:	bd45                	j	1c008eb8 <pos_libc_prf+0x314>
1c00900a:	0c1d                	addi	s8,s8,7
1c00900c:	ff8c7c13          	andi	s8,s8,-8
1c009010:	000c2703          	lw	a4,0(s8)
1c009014:	004c2803          	lw	a6,4(s8)
1c009018:	01575693          	srli	a3,a4,0x15
1c00901c:	00b81613          	slli	a2,a6,0xb
1c009020:	8e55                	or	a2,a2,a3
1c009022:	01485513          	srli	a0,a6,0x14
1c009026:	00b71693          	slli	a3,a4,0xb
1c00902a:	80000737          	lui	a4,0x80000
1c00902e:	fff74713          	not	a4,a4
1c009032:	7ff57513          	andi	a0,a0,2047
1c009036:	7ff00593          	li	a1,2047
1c00903a:	0c21                	addi	s8,s8,8
1c00903c:	8e79                	and	a2,a2,a4
1c00903e:	0ab504e3          	beq	a0,a1,1c0098e6 <pos_libc_prf+0xd42>
1c009042:	04600593          	li	a1,70
1c009046:	00bd9463          	bne	s11,a1,1c00904e <pos_libc_prf+0x4aa>
1c00904a:	06600d93          	li	s11,102
1c00904e:	00d56733          	or	a4,a0,a3
1c009052:	8f51                	or	a4,a4,a2
1c009054:	7e070963          	beqz	a4,1c009846 <pos_libc_prf+0xca2>
1c009058:	800005b7          	lui	a1,0x80000
1c00905c:	c0250513          	addi	a0,a0,-1022
1c009060:	8dd1                	or	a1,a1,a2
1c009062:	26084ae3          	bltz	a6,1c009ad6 <pos_libc_prf+0xf32>
1c009066:	4852                	lw	a6,20(sp)
1c009068:	220808e3          	beqz	a6,1c009a98 <pos_libc_prf+0xef4>
1c00906c:	02b00713          	li	a4,43
1c009070:	02e10223          	sb	a4,36(sp)
1c009074:	02510e93          	addi	t4,sp,37
1c009078:	5779                	li	a4,-2
1c00907a:	4301                	li	t1,0
1c00907c:	06e55763          	ble	a4,a0,1c0090ea <pos_libc_prf+0x546>
1c009080:	33333837          	lui	a6,0x33333
1c009084:	800008b7          	lui	a7,0x80000
1c009088:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00908c:	fff8c893          	not	a7,a7
1c009090:	5e79                	li	t3,-2
1c009092:	a011                	j	1c009096 <pos_libc_prf+0x4f2>
1c009094:	853e                	mv	a0,a5
1c009096:	01f59613          	slli	a2,a1,0x1f
1c00909a:	0016d713          	srli	a4,a3,0x1
1c00909e:	0016f793          	andi	a5,a3,1
1c0090a2:	8f51                	or	a4,a4,a2
1c0090a4:	00e786b3          	add	a3,a5,a4
1c0090a8:	00f6b7b3          	sltu	a5,a3,a5
1c0090ac:	8185                	srli	a1,a1,0x1
1c0090ae:	95be                	add	a1,a1,a5
1c0090b0:	00150793          	addi	a5,a0,1
1c0090b4:	feb860e3          	bltu	a6,a1,1c009094 <pos_libc_prf+0x4f0>
1c0090b8:	00269613          	slli	a2,a3,0x2
1c0090bc:	01e6df13          	srli	t5,a3,0x1e
1c0090c0:	00259713          	slli	a4,a1,0x2
1c0090c4:	96b2                	add	a3,a3,a2
1c0090c6:	00ef6733          	or	a4,t5,a4
1c0090ca:	95ba                	add	a1,a1,a4
1c0090cc:	00c6b633          	sltu	a2,a3,a2
1c0090d0:	95b2                	add	a1,a1,a2
1c0090d2:	01f6d713          	srli	a4,a3,0x1f
1c0090d6:	0509                	addi	a0,a0,2
1c0090d8:	137d                	addi	t1,t1,-1
1c0090da:	01159663          	bne	a1,a7,1c0090e6 <pos_libc_prf+0x542>
1c0090de:	0686                	slli	a3,a3,0x1
1c0090e0:	ffe76593          	ori	a1,a4,-2
1c0090e4:	853e                	mv	a0,a5
1c0090e6:	fbc548e3          	blt	a0,t3,1c009096 <pos_libc_prf+0x4f2>
1c0090ea:	06a05563          	blez	a0,1c009154 <pos_libc_prf+0x5b0>
1c0090ee:	800008b7          	lui	a7,0x80000
1c0090f2:	4e15                	li	t3,5
1c0090f4:	fff8c893          	not	a7,a7
1c0090f8:	00268613          	addi	a2,a3,2
1c0090fc:	00d636b3          	sltu	a3,a2,a3
1c009100:	95b6                	add	a1,a1,a3
1c009102:	03c5d7b3          	divu	a5,a1,t3
1c009106:	00279713          	slli	a4,a5,0x2
1c00910a:	973e                	add	a4,a4,a5
1c00910c:	8d99                	sub	a1,a1,a4
1c00910e:	01d59713          	slli	a4,a1,0x1d
1c009112:	00365593          	srli	a1,a2,0x3
1c009116:	8dd9                	or	a1,a1,a4
1c009118:	03c5d5b3          	divu	a1,a1,t3
1c00911c:	00359693          	slli	a3,a1,0x3
1c009120:	00559713          	slli	a4,a1,0x5
1c009124:	9736                	add	a4,a4,a3
1c009126:	40e60733          	sub	a4,a2,a4
1c00912a:	03c75733          	divu	a4,a4,t3
1c00912e:	81f5                	srli	a1,a1,0x1d
1c009130:	96ba                	add	a3,a3,a4
1c009132:	97ae                	add	a5,a5,a1
1c009134:	00e6b733          	sltu	a4,a3,a4
1c009138:	00f705b3          	add	a1,a4,a5
1c00913c:	157d                	addi	a0,a0,-1
1c00913e:	0305                	addi	t1,t1,1
1c009140:	01f6d793          	srli	a5,a3,0x1f
1c009144:	0586                	slli	a1,a1,0x1
1c009146:	8ddd                	or	a1,a1,a5
1c009148:	0686                	slli	a3,a3,0x1
1c00914a:	157d                	addi	a0,a0,-1
1c00914c:	feb8fae3          	bleu	a1,a7,1c009140 <pos_libc_prf+0x59c>
1c009150:	faa044e3          	bgtz	a0,1c0090f8 <pos_libc_prf+0x554>
1c009154:	4611                	li	a2,4
1c009156:	01f59713          	slli	a4,a1,0x1f
1c00915a:	0016d793          	srli	a5,a3,0x1
1c00915e:	8fd9                	or	a5,a5,a4
1c009160:	8a85                	andi	a3,a3,1
1c009162:	00f688b3          	add	a7,a3,a5
1c009166:	8185                	srli	a1,a1,0x1
1c009168:	00d8b6b3          	sltu	a3,a7,a3
1c00916c:	00b68733          	add	a4,a3,a1
1c009170:	0505                	addi	a0,a0,1
1c009172:	86c6                	mv	a3,a7
1c009174:	85ba                	mv	a1,a4
1c009176:	fec510e3          	bne	a0,a2,1c009156 <pos_libc_prf+0x5b2>
1c00917a:	06700693          	li	a3,103
1c00917e:	040a48e3          	bltz	s4,1c0099ce <pos_libc_prf+0xe2a>
1c009182:	70dd8b63          	beq	s11,a3,1c009898 <pos_libc_prf+0xcf4>
1c009186:	04700693          	li	a3,71
1c00918a:	70dd8763          	beq	s11,a3,1c009898 <pos_libc_prf+0xcf4>
1c00918e:	06600693          	li	a3,102
1c009192:	08dd89e3          	beq	s11,a3,1c009a24 <pos_libc_prf+0xe80>
1c009196:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c00919a:	46c1                	li	a3,16
1c00919c:	01c6d363          	ble	t3,a3,1c0091a2 <pos_libc_prf+0x5fe>
1c0091a0:	4e41                	li	t3,16
1c0091a2:	1e7d                	addi	t3,t3,-1
1c0091a4:	4f81                	li	t6,0
1c0091a6:	4681                	li	a3,0
1c0091a8:	08000637          	lui	a2,0x8000
1c0091ac:	4f15                	li	t5,5
1c0091ae:	52fd                	li	t0,-1
1c0091b0:	00268593          	addi	a1,a3,2
1c0091b4:	00d5b7b3          	sltu	a5,a1,a3
1c0091b8:	97b2                	add	a5,a5,a2
1c0091ba:	03e7d633          	divu	a2,a5,t5
1c0091be:	00261693          	slli	a3,a2,0x2
1c0091c2:	96b2                	add	a3,a3,a2
1c0091c4:	8f95                	sub	a5,a5,a3
1c0091c6:	07f6                	slli	a5,a5,0x1d
1c0091c8:	0035d513          	srli	a0,a1,0x3
1c0091cc:	8d5d                	or	a0,a0,a5
1c0091ce:	03e55533          	divu	a0,a0,t5
1c0091d2:	00351693          	slli	a3,a0,0x3
1c0091d6:	00551793          	slli	a5,a0,0x5
1c0091da:	97b6                	add	a5,a5,a3
1c0091dc:	40f587b3          	sub	a5,a1,a5
1c0091e0:	03e7d7b3          	divu	a5,a5,t5
1c0091e4:	8175                	srli	a0,a0,0x1d
1c0091e6:	96be                	add	a3,a3,a5
1c0091e8:	00f6b7b3          	sltu	a5,a3,a5
1c0091ec:	962a                	add	a2,a2,a0
1c0091ee:	963e                	add	a2,a2,a5
1c0091f0:	01f61513          	slli	a0,a2,0x1f
1c0091f4:	0016d793          	srli	a5,a3,0x1
1c0091f8:	0016f593          	andi	a1,a3,1
1c0091fc:	8fc9                	or	a5,a5,a0
1c0091fe:	00f586b3          	add	a3,a1,a5
1c009202:	8205                	srli	a2,a2,0x1
1c009204:	00b6b7b3          	sltu	a5,a3,a1
1c009208:	1e7d                	addi	t3,t3,-1
1c00920a:	963e                	add	a2,a2,a5
1c00920c:	fa5e12e3          	bne	t3,t0,1c0091b0 <pos_libc_prf+0x60c>
1c009210:	96c6                	add	a3,a3,a7
1c009212:	963a                	add	a2,a2,a4
1c009214:	0116b8b3          	sltu	a7,a3,a7
1c009218:	9646                	add	a2,a2,a7
1c00921a:	f00005b7          	lui	a1,0xf0000
1c00921e:	8df1                	and	a1,a1,a2
1c009220:	8736                	mv	a4,a3
1c009222:	cdb9                	beqz	a1,1c009280 <pos_libc_prf+0x6dc>
1c009224:	0689                	addi	a3,a3,2
1c009226:	00e6b733          	sltu	a4,a3,a4
1c00922a:	963a                	add	a2,a2,a4
1c00922c:	4815                	li	a6,5
1c00922e:	03065533          	divu	a0,a2,a6
1c009232:	00251713          	slli	a4,a0,0x2
1c009236:	972a                	add	a4,a4,a0
1c009238:	8e19                	sub	a2,a2,a4
1c00923a:	01d61713          	slli	a4,a2,0x1d
1c00923e:	0036d593          	srli	a1,a3,0x3
1c009242:	8dd9                	or	a1,a1,a4
1c009244:	0305d5b3          	divu	a1,a1,a6
1c009248:	00359613          	slli	a2,a1,0x3
1c00924c:	00559713          	slli	a4,a1,0x5
1c009250:	9732                	add	a4,a4,a2
1c009252:	40e68733          	sub	a4,a3,a4
1c009256:	03075733          	divu	a4,a4,a6
1c00925a:	81f5                	srli	a1,a1,0x1d
1c00925c:	963a                	add	a2,a2,a4
1c00925e:	00e63733          	sltu	a4,a2,a4
1c009262:	95aa                	add	a1,a1,a0
1c009264:	00b706b3          	add	a3,a4,a1
1c009268:	01f69593          	slli	a1,a3,0x1f
1c00926c:	00165713          	srli	a4,a2,0x1
1c009270:	8f4d                	or	a4,a4,a1
1c009272:	8a05                	andi	a2,a2,1
1c009274:	9732                	add	a4,a4,a2
1c009276:	8285                	srli	a3,a3,0x1
1c009278:	00c73633          	sltu	a2,a4,a2
1c00927c:	9636                	add	a2,a2,a3
1c00927e:	0305                	addi	t1,t1,1
1c009280:	001e8993          	addi	s3,t4,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c009284:	06600693          	li	a3,102
1c009288:	85ce                	mv	a1,s3
1c00928a:	6add8663          	beq	s11,a3,1c009936 <pos_libc_prf+0xd92>
1c00928e:	00271693          	slli	a3,a4,0x2
1c009292:	01e75593          	srli	a1,a4,0x1e
1c009296:	00261513          	slli	a0,a2,0x2
1c00929a:	9736                	add	a4,a4,a3
1c00929c:	8d4d                	or	a0,a0,a1
1c00929e:	962a                	add	a2,a2,a0
1c0092a0:	00d735b3          	sltu	a1,a4,a3
1c0092a4:	95b2                	add	a1,a1,a2
1c0092a6:	01f75693          	srli	a3,a4,0x1f
1c0092aa:	0586                	slli	a1,a1,0x1
1c0092ac:	8dd5                	or	a1,a1,a3
1c0092ae:	01c5d693          	srli	a3,a1,0x1c
1c0092b2:	03068613          	addi	a2,a3,48
1c0092b6:	00d036b3          	snez	a3,a3
1c0092ba:	10000537          	lui	a0,0x10000
1c0092be:	40d30333          	sub	t1,t1,a3
1c0092c2:	46b2                	lw	a3,12(sp)
1c0092c4:	157d                	addi	a0,a0,-1
1c0092c6:	00ce8023          	sb	a2,0(t4)
1c0092ca:	0706                	slli	a4,a4,0x1
1c0092cc:	8de9                	and	a1,a1,a0
1c0092ce:	64068b63          	beqz	a3,1c009924 <pos_libc_prf+0xd80>
1c0092d2:	02e00693          	li	a3,46
1c0092d6:	00de80a3          	sb	a3,1(t4)
1c0092da:	002e8513          	addi	a0,t4,2
1c0092de:	020a00e3          	beqz	s4,1c009afe <pos_libc_prf+0xf5a>
1c0092e2:	014509b3          	add	s3,a0,s4
1c0092e6:	48bd                	li	a7,15
1c0092e8:	03000e13          	li	t3,48
1c0092ec:	00271793          	slli	a5,a4,0x2
1c0092f0:	01e75813          	srli	a6,a4,0x1e
1c0092f4:	00259693          	slli	a3,a1,0x2
1c0092f8:	00e78633          	add	a2,a5,a4
1c0092fc:	00d866b3          	or	a3,a6,a3
1c009300:	96ae                	add	a3,a3,a1
1c009302:	00f637b3          	sltu	a5,a2,a5
1c009306:	97b6                	add	a5,a5,a3
1c009308:	0786                	slli	a5,a5,0x1
1c00930a:	01f65693          	srli	a3,a2,0x1f
1c00930e:	8fd5                	or	a5,a5,a3
1c009310:	01c7d693          	srli	a3,a5,0x1c
1c009314:	03068693          	addi	a3,a3,48
1c009318:	0505                	addi	a0,a0,1
1c00931a:	3b105663          	blez	a7,1c0096c6 <pos_libc_prf+0xb22>
1c00931e:	10000837          	lui	a6,0x10000
1c009322:	187d                	addi	a6,a6,-1
1c009324:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c009328:	18fd                	addi	a7,a7,-1
1c00932a:	00161713          	slli	a4,a2,0x1
1c00932e:	0107f5b3          	and	a1,a5,a6
1c009332:	faa99de3          	bne	s3,a0,1c0092ec <pos_libc_prf+0x748>
1c009336:	0c0f9263          	bnez	t6,1c0093fa <pos_libc_prf+0x856>
1c00933a:	fdfdf713          	andi	a4,s11,-33
1c00933e:	04500693          	li	a3,69
1c009342:	02d71963          	bne	a4,a3,1c009374 <pos_libc_prf+0x7d0>
1c009346:	87ee                	mv	a5,s11
1c009348:	00f98023          	sb	a5,0(s3)
1c00934c:	6a034763          	bltz	t1,1c0099fa <pos_libc_prf+0xe56>
1c009350:	02b00793          	li	a5,43
1c009354:	00f980a3          	sb	a5,1(s3)
1c009358:	47a9                	li	a5,10
1c00935a:	02f34733          	div	a4,t1,a5
1c00935e:	02f367b3          	rem	a5,t1,a5
1c009362:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c009366:	03078793          	addi	a5,a5,48
1c00936a:	00e98123          	sb	a4,2(s3)
1c00936e:	00f981a3          	sb	a5,3(s3)
1c009372:	0991                	addi	s3,s3,4
1c009374:	00098023          	sb	zero,0(s3)
1c009378:	419989b3          	sub	s3,s3,s9
1c00937c:	48d2                	lw	a7,20(sp)
1c00937e:	4662                	lw	a2,24(sp)
1c009380:	00c8e8b3          	or	a7,a7,a2
1c009384:	c646                	sw	a7,12(sp)
1c009386:	34089d63          	bnez	a7,1c0096e0 <pos_libc_prf+0xb3c>
1c00938a:	02414703          	lbu	a4,36(sp)
1c00938e:	02d00793          	li	a5,45
1c009392:	34f70763          	beq	a4,a5,1c0096e0 <pos_libc_prf+0xb3c>
1c009396:	0c800793          	li	a5,200
1c00939a:	ab37cbe3          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c00939e:	9b29c2e3          	blt	s3,s2,1c008d42 <pos_libc_prf+0x19e>
1c0093a2:	b461                	j	1c008e2a <pos_libc_prf+0x286>
1c0093a4:	0585                	addi	a1,a1,1
1c0093a6:	00271793          	slli	a5,a4,0x2
1c0093aa:	01e75e13          	srli	t3,a4,0x1e
1c0093ae:	00261693          	slli	a3,a2,0x2
1c0093b2:	00e788b3          	add	a7,a5,a4
1c0093b6:	00de66b3          	or	a3,t3,a3
1c0093ba:	96b2                	add	a3,a3,a2
1c0093bc:	00f8b7b3          	sltu	a5,a7,a5
1c0093c0:	97b6                	add	a5,a5,a3
1c0093c2:	0786                	slli	a5,a5,0x1
1c0093c4:	01f8d693          	srli	a3,a7,0x1f
1c0093c8:	8fd5                	or	a5,a5,a3
1c0093ca:	01c7de13          	srli	t3,a5,0x1c
1c0093ce:	03000693          	li	a3,48
1c0093d2:	00a05c63          	blez	a0,1c0093ea <pos_libc_prf+0x846>
1c0093d6:	00189713          	slli	a4,a7,0x1
1c0093da:	100008b7          	lui	a7,0x10000
1c0093de:	18fd                	addi	a7,a7,-1
1c0093e0:	030e0693          	addi	a3,t3,48
1c0093e4:	157d                	addi	a0,a0,-1
1c0093e6:	0117f633          	and	a2,a5,a7
1c0093ea:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c0093ee:	fab99be3          	bne	s3,a1,1c0093a4 <pos_libc_prf+0x800>
1c0093f2:	014809b3          	add	s3,a6,s4
1c0093f6:	f60f8fe3          	beqz	t6,1c009374 <pos_libc_prf+0x7d0>
1c0093fa:	03000613          	li	a2,48
1c0093fe:	a011                	j	1c009402 <pos_libc_prf+0x85e>
1c009400:	89ba                	mv	s3,a4
1c009402:	fff9c683          	lbu	a3,-1(s3)
1c009406:	fff98713          	addi	a4,s3,-1
1c00940a:	fec68be3          	beq	a3,a2,1c009400 <pos_libc_prf+0x85c>
1c00940e:	02e00613          	li	a2,46
1c009412:	f2c694e3          	bne	a3,a2,1c00933a <pos_libc_prf+0x796>
1c009416:	89ba                	mv	s3,a4
1c009418:	b70d                	j	1c00933a <pos_libc_prf+0x796>
1c00941a:	06300713          	li	a4,99
1c00941e:	16ed8863          	beq	s11,a4,1c00958e <pos_libc_prf+0x9ea>
1c009422:	0db74363          	blt	a4,s11,1c0094e8 <pos_libc_prf+0x944>
1c009426:	05800713          	li	a4,88
1c00942a:	28ed9763          	bne	s11,a4,1c0096b8 <pos_libc_prf+0xb14>
1c00942e:	48b2                	lw	a7,12(sp)
1c009430:	004c0813          	addi	a6,s8,4
1c009434:	000c2583          	lw	a1,0(s8)
1c009438:	3c088a63          	beqz	a7,1c00980c <pos_libc_prf+0xc68>
1c00943c:	7761                	lui	a4,0xffff8
1c00943e:	83074713          	xori	a4,a4,-2000
1c009442:	02e11223          	sh	a4,36(sp)
1c009446:	4889                	li	a7,2
1c009448:	02610693          	addi	a3,sp,38
1c00944c:	8736                	mv	a4,a3
1c00944e:	4e25                	li	t3,9
1c009450:	00f5f613          	andi	a2,a1,15
1c009454:	0ff67793          	andi	a5,a2,255
1c009458:	03078513          	addi	a0,a5,48
1c00945c:	8191                	srli	a1,a1,0x4
1c00945e:	05778793          	addi	a5,a5,87
1c009462:	0705                	addi	a4,a4,1
1c009464:	06ce6a63          	bltu	t3,a2,1c0094d8 <pos_libc_prf+0x934>
1c009468:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00946c:	f1f5                	bnez	a1,1c009450 <pos_libc_prf+0x8ac>
1c00946e:	40d709b3          	sub	s3,a4,a3
1c009472:	0149db63          	ble	s4,s3,1c009488 <pos_libc_prf+0x8e4>
1c009476:	03000613          	li	a2,48
1c00947a:	0705                	addi	a4,a4,1
1c00947c:	fec70fa3          	sb	a2,-1(a4)
1c009480:	40d709b3          	sub	s3,a4,a3
1c009484:	ff49cbe3          	blt	s3,s4,1c00947a <pos_libc_prf+0x8d6>
1c009488:	00070023          	sb	zero,0(a4)
1c00948c:	177d                	addi	a4,a4,-1
1c00948e:	00e6fe63          	bleu	a4,a3,1c0094aa <pos_libc_prf+0x906>
1c009492:	0006c603          	lbu	a2,0(a3)
1c009496:	00074783          	lbu	a5,0(a4)
1c00949a:	00c70023          	sb	a2,0(a4)
1c00949e:	00f68023          	sb	a5,0(a3)
1c0094a2:	177d                	addi	a4,a4,-1
1c0094a4:	0685                	addi	a3,a3,1
1c0094a6:	fee6e6e3          	bltu	a3,a4,1c009492 <pos_libc_prf+0x8ee>
1c0094aa:	05800713          	li	a4,88
1c0094ae:	36ed8263          	beq	s11,a4,1c009812 <pos_libc_prf+0xc6e>
1c0094b2:	46b2                	lw	a3,12(sp)
1c0094b4:	99c6                	add	s3,s3,a7
1c0094b6:	c299                	beqz	a3,1c0094bc <pos_libc_prf+0x918>
1c0094b8:	4709                	li	a4,2
1c0094ba:	c63a                	sw	a4,12(sp)
1c0094bc:	57fd                	li	a5,-1
1c0094be:	3afa0263          	beq	s4,a5,1c009862 <pos_libc_prf+0xcbe>
1c0094c2:	0c800793          	li	a5,200
1c0094c6:	9937c5e3          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c0094ca:	02000793          	li	a5,32
1c0094ce:	c83e                	sw	a5,16(sp)
1c0094d0:	8c42                	mv	s8,a6
1c0094d2:	8729c8e3          	blt	s3,s2,1c008d42 <pos_libc_prf+0x19e>
1c0094d6:	ba91                	j	1c008e2a <pos_libc_prf+0x286>
1c0094d8:	fef70fa3          	sb	a5,-1(a4)
1c0094dc:	f9b5                	bnez	a1,1c009450 <pos_libc_prf+0x8ac>
1c0094de:	bf41                	j	1c00946e <pos_libc_prf+0x8ca>
1c0094e0:	06900713          	li	a4,105
1c0094e4:	1ced9a63          	bne	s11,a4,1c0096b8 <pos_libc_prf+0xb14>
1c0094e8:	000c2583          	lw	a1,0(s8)
1c0094ec:	0c11                	addi	s8,s8,4
1c0094ee:	3805c863          	bltz	a1,1c00987e <pos_libc_prf+0xcda>
1c0094f2:	48d2                	lw	a7,20(sp)
1c0094f4:	872e                	mv	a4,a1
1c0094f6:	36089d63          	bnez	a7,1c009870 <pos_libc_prf+0xccc>
1c0094fa:	4662                	lw	a2,24(sp)
1c0094fc:	87e6                	mv	a5,s9
1c0094fe:	c619                	beqz	a2,1c00950c <pos_libc_prf+0x968>
1c009500:	02000793          	li	a5,32
1c009504:	02f10223          	sb	a5,36(sp)
1c009508:	02510793          	addi	a5,sp,37
1c00950c:	89be                	mv	s3,a5
1c00950e:	4629                	li	a2,10
1c009510:	02c776b3          	remu	a3,a4,a2
1c009514:	02c75733          	divu	a4,a4,a2
1c009518:	0985                	addi	s3,s3,1
1c00951a:	03068693          	addi	a3,a3,48
1c00951e:	fed98fa3          	sb	a3,-1(s3)
1c009522:	f77d                	bnez	a4,1c009510 <pos_libc_prf+0x96c>
1c009524:	40f98733          	sub	a4,s3,a5
1c009528:	01475b63          	ble	s4,a4,1c00953e <pos_libc_prf+0x99a>
1c00952c:	03000693          	li	a3,48
1c009530:	0985                	addi	s3,s3,1
1c009532:	fed98fa3          	sb	a3,-1(s3)
1c009536:	40f98733          	sub	a4,s3,a5
1c00953a:	ff474be3          	blt	a4,s4,1c009530 <pos_libc_prf+0x98c>
1c00953e:	00098023          	sb	zero,0(s3)
1c009542:	fff98713          	addi	a4,s3,-1
1c009546:	00e7fe63          	bleu	a4,a5,1c009562 <pos_libc_prf+0x9be>
1c00954a:	0007c603          	lbu	a2,0(a5)
1c00954e:	00074683          	lbu	a3,0(a4)
1c009552:	00c70023          	sb	a2,0(a4)
1c009556:	00d78023          	sb	a3,0(a5)
1c00955a:	177d                	addi	a4,a4,-1
1c00955c:	0785                	addi	a5,a5,1
1c00955e:	fee7e6e3          	bltu	a5,a4,1c00954a <pos_libc_prf+0x9a6>
1c009562:	46d2                	lw	a3,20(sp)
1c009564:	4762                	lw	a4,24(sp)
1c009566:	419989b3          	sub	s3,s3,s9
1c00956a:	8ed9                	or	a3,a3,a4
1c00956c:	c636                	sw	a3,12(sp)
1c00956e:	e299                	bnez	a3,1c009574 <pos_libc_prf+0x9d0>
1c009570:	81fd                	srli	a1,a1,0x1f
1c009572:	c62e                	sw	a1,12(sp)
1c009574:	57fd                	li	a5,-1
1c009576:	e2fa00e3          	beq	s4,a5,1c009396 <pos_libc_prf+0x7f2>
1c00957a:	0c800793          	li	a5,200
1c00957e:	8d37c9e3          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c009582:	02000793          	li	a5,32
1c009586:	c83e                	sw	a5,16(sp)
1c009588:	fb29cd63          	blt	s3,s2,1c008d42 <pos_libc_prf+0x19e>
1c00958c:	b879                	j	1c008e2a <pos_libc_prf+0x286>
1c00958e:	000c2783          	lw	a5,0(s8)
1c009592:	020102a3          	sb	zero,37(sp)
1c009596:	02f10223          	sb	a5,36(sp)
1c00959a:	0c11                	addi	s8,s8,4
1c00959c:	4985                	li	s3,1
1c00959e:	f9eff06f          	j	1c008d3c <pos_libc_prf+0x198>
1c0095a2:	000c2703          	lw	a4,0(s8)
1c0095a6:	87e6                	mv	a5,s9
1c0095a8:	0c11                	addi	s8,s8,4
1c0095aa:	4629                	li	a2,10
1c0095ac:	02c776b3          	remu	a3,a4,a2
1c0095b0:	02c75733          	divu	a4,a4,a2
1c0095b4:	0785                	addi	a5,a5,1
1c0095b6:	03068693          	addi	a3,a3,48
1c0095ba:	fed78fa3          	sb	a3,-1(a5)
1c0095be:	f77d                	bnez	a4,1c0095ac <pos_libc_prf+0xa08>
1c0095c0:	419789b3          	sub	s3,a5,s9
1c0095c4:	0149db63          	ble	s4,s3,1c0095da <pos_libc_prf+0xa36>
1c0095c8:	03000713          	li	a4,48
1c0095cc:	0785                	addi	a5,a5,1
1c0095ce:	fee78fa3          	sb	a4,-1(a5)
1c0095d2:	419789b3          	sub	s3,a5,s9
1c0095d6:	ff49cbe3          	blt	s3,s4,1c0095cc <pos_libc_prf+0xa28>
1c0095da:	00078023          	sb	zero,0(a5)
1c0095de:	17fd                	addi	a5,a5,-1
1c0095e0:	00fcff63          	bleu	a5,s9,1c0095fe <pos_libc_prf+0xa5a>
1c0095e4:	8766                	mv	a4,s9
1c0095e6:	00074603          	lbu	a2,0(a4)
1c0095ea:	0007c683          	lbu	a3,0(a5)
1c0095ee:	00c78023          	sb	a2,0(a5)
1c0095f2:	00d70023          	sb	a3,0(a4)
1c0095f6:	17fd                	addi	a5,a5,-1
1c0095f8:	0705                	addi	a4,a4,1
1c0095fa:	fef766e3          	bltu	a4,a5,1c0095e6 <pos_libc_prf+0xa42>
1c0095fe:	57fd                	li	a5,-1
1c009600:	0cfa0a63          	beq	s4,a5,1c0096d4 <pos_libc_prf+0xb30>
1c009604:	0c800793          	li	a5,200
1c009608:	8537c4e3          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c00960c:	02000813          	li	a6,32
1c009610:	c602                	sw	zero,12(sp)
1c009612:	c842                	sw	a6,16(sp)
1c009614:	ba45                	j	1c008fc4 <pos_libc_prf+0x420>
1c009616:	77e1                	lui	a5,0xffff8
1c009618:	8307c793          	xori	a5,a5,-2000
1c00961c:	02610713          	addi	a4,sp,38
1c009620:	000c2603          	lw	a2,0(s8)
1c009624:	02f11223          	sh	a5,36(sp)
1c009628:	0c11                	addi	s8,s8,4
1c00962a:	87ba                	mv	a5,a4
1c00962c:	4825                	li	a6,9
1c00962e:	00f67593          	andi	a1,a2,15
1c009632:	0ff5f693          	andi	a3,a1,255
1c009636:	03068513          	addi	a0,a3,48
1c00963a:	8211                	srli	a2,a2,0x4
1c00963c:	05768693          	addi	a3,a3,87
1c009640:	0785                	addi	a5,a5,1
1c009642:	06b86163          	bltu	a6,a1,1c0096a4 <pos_libc_prf+0xb00>
1c009646:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00964a:	f275                	bnez	a2,1c00962e <pos_libc_prf+0xa8a>
1c00964c:	40e789b3          	sub	s3,a5,a4
1c009650:	469d                	li	a3,7
1c009652:	0136cb63          	blt	a3,s3,1c009668 <pos_libc_prf+0xac4>
1c009656:	03000613          	li	a2,48
1c00965a:	0785                	addi	a5,a5,1
1c00965c:	fec78fa3          	sb	a2,-1(a5)
1c009660:	40e789b3          	sub	s3,a5,a4
1c009664:	ff36dbe3          	ble	s3,a3,1c00965a <pos_libc_prf+0xab6>
1c009668:	00078023          	sb	zero,0(a5)
1c00966c:	17fd                	addi	a5,a5,-1
1c00966e:	00f77e63          	bleu	a5,a4,1c00968a <pos_libc_prf+0xae6>
1c009672:	00074603          	lbu	a2,0(a4)
1c009676:	0007c683          	lbu	a3,0(a5)
1c00967a:	00c78023          	sb	a2,0(a5)
1c00967e:	00d70023          	sb	a3,0(a4)
1c009682:	17fd                	addi	a5,a5,-1
1c009684:	0705                	addi	a4,a4,1
1c009686:	fef766e3          	bltu	a4,a5,1c009672 <pos_libc_prf+0xace>
1c00968a:	57fd                	li	a5,-1
1c00968c:	0989                	addi	s3,s3,2
1c00968e:	04fa0363          	beq	s4,a5,1c0096d4 <pos_libc_prf+0xb30>
1c009692:	0c800793          	li	a5,200
1c009696:	fb37cd63          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c00969a:	02000893          	li	a7,32
1c00969e:	c602                	sw	zero,12(sp)
1c0096a0:	c846                	sw	a7,16(sp)
1c0096a2:	b20d                	j	1c008fc4 <pos_libc_prf+0x420>
1c0096a4:	fed78fa3          	sb	a3,-1(a5)
1c0096a8:	f259                	bnez	a2,1c00962e <pos_libc_prf+0xa8a>
1c0096aa:	b74d                	j	1c00964c <pos_libc_prf+0xaa8>
1c0096ac:	000c2783          	lw	a5,0(s8)
1c0096b0:	0c11                	addi	s8,s8,4
1c0096b2:	c380                	sw	s0,0(a5)
1c0096b4:	d36ff06f          	j	1c008bea <pos_libc_prf+0x46>
1c0096b8:	0c800713          	li	a4,200
1c0096bc:	d3b75763          	ble	s11,a4,1c008bea <pos_libc_prf+0x46>
1c0096c0:	547d                	li	s0,-1
1c0096c2:	d4cff06f          	j	1c008c0e <pos_libc_prf+0x6a>
1c0096c6:	ffc50fa3          	sb	t3,-1(a0)
1c0096ca:	c2a991e3          	bne	s3,a0,1c0092ec <pos_libc_prf+0x748>
1c0096ce:	c60f86e3          	beqz	t6,1c00933a <pos_libc_prf+0x796>
1c0096d2:	b325                	j	1c0093fa <pos_libc_prf+0x856>
1c0096d4:	0c800793          	li	a5,200
1c0096d8:	f737cc63          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c0096dc:	c602                	sw	zero,12(sp)
1c0096de:	b0dd                	j	1c008fc4 <pos_libc_prf+0x420>
1c0096e0:	0c800793          	li	a5,200
1c0096e4:	f737c663          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c0096e8:	4705                	li	a4,1
1c0096ea:	c63a                	sw	a4,12(sp)
1c0096ec:	b8e1                	j	1c008fc4 <pos_libc_prf+0x420>
1c0096ee:	41390a33          	sub	s4,s2,s3
1c0096f2:	00198613          	addi	a2,s3,1
1c0096f6:	85e6                	mv	a1,s9
1c0096f8:	014c8533          	add	a0,s9,s4
1c0096fc:	a4aff0ef          	jal	ra,1c008946 <memmove>
1c009700:	46c2                	lw	a3,16(sp)
1c009702:	02000793          	li	a5,32
1c009706:	30f68163          	beq	a3,a5,1c009a08 <pos_libc_prf+0xe64>
1c00970a:	4732                	lw	a4,12(sp)
1c00970c:	89ca                	mv	s3,s2
1c00970e:	9a3a                	add	s4,s4,a4
1c009710:	f1475d63          	ble	s4,a4,1c008e2a <pos_libc_prf+0x286>
1c009714:	4832                	lw	a6,12(sp)
1c009716:	4715                	li	a4,5
1c009718:	010c87b3          	add	a5,s9,a6
1c00971c:	40f007b3          	neg	a5,a5
1c009720:	8b8d                	andi	a5,a5,3
1c009722:	00378693          	addi	a3,a5,3
1c009726:	410a05b3          	sub	a1,s4,a6
1c00972a:	00e6f363          	bleu	a4,a3,1c009730 <pos_libc_prf+0xb8c>
1c00972e:	4695                	li	a3,5
1c009730:	48b2                	lw	a7,12(sp)
1c009732:	fffa0713          	addi	a4,s4,-1
1c009736:	41170733          	sub	a4,a4,a7
1c00973a:	06d76b63          	bltu	a4,a3,1c0097b0 <pos_libc_prf+0xc0c>
1c00973e:	86c6                	mv	a3,a7
1c009740:	cb9d                	beqz	a5,1c009776 <pos_libc_prf+0xbd2>
1c009742:	46c2                	lw	a3,16(sp)
1c009744:	1988                	addi	a0,sp,240
1c009746:	01150733          	add	a4,a0,a7
1c00974a:	f2d70a23          	sb	a3,-204(a4)
1c00974e:	4705                	li	a4,1
1c009750:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c009754:	02e78163          	beq	a5,a4,1c009776 <pos_libc_prf+0xbd2>
1c009758:	4742                	lw	a4,16(sp)
1c00975a:	96aa                	add	a3,a3,a0
1c00975c:	f2e68a23          	sb	a4,-204(a3)
1c009760:	470d                	li	a4,3
1c009762:	00288693          	addi	a3,a7,2
1c009766:	00e79863          	bne	a5,a4,1c009776 <pos_libc_prf+0xbd2>
1c00976a:	4842                	lw	a6,16(sp)
1c00976c:	96aa                	add	a3,a3,a0
1c00976e:	f3068a23          	sb	a6,-204(a3)
1c009772:	00388693          	addi	a3,a7,3
1c009776:	48c2                	lw	a7,16(sp)
1c009778:	4832                	lw	a6,12(sp)
1c00977a:	00889713          	slli	a4,a7,0x8
1c00977e:	01089513          	slli	a0,a7,0x10
1c009782:	00e8e733          	or	a4,a7,a4
1c009786:	8d9d                	sub	a1,a1,a5
1c009788:	01889613          	slli	a2,a7,0x18
1c00978c:	8f49                	or	a4,a4,a0
1c00978e:	97c2                	add	a5,a5,a6
1c009790:	8f51                	or	a4,a4,a2
1c009792:	0025d513          	srli	a0,a1,0x2
1c009796:	97e6                	add	a5,a5,s9
1c009798:	4601                	li	a2,0
1c00979a:	c398                	sw	a4,0(a5)
1c00979c:	0605                	addi	a2,a2,1
1c00979e:	0791                	addi	a5,a5,4
1c0097a0:	fea66de3          	bltu	a2,a0,1c00979a <pos_libc_prf+0xbf6>
1c0097a4:	ffc5f793          	andi	a5,a1,-4
1c0097a8:	96be                	add	a3,a3,a5
1c0097aa:	c636                	sw	a3,12(sp)
1c0097ac:	e6b78e63          	beq	a5,a1,1c008e28 <pos_libc_prf+0x284>
1c0097b0:	46b2                	lw	a3,12(sp)
1c0097b2:	0f010893          	addi	a7,sp,240
1c0097b6:	4742                	lw	a4,16(sp)
1c0097b8:	00d887b3          	add	a5,a7,a3
1c0097bc:	f2e78a23          	sb	a4,-204(a5)
1c0097c0:	00168793          	addi	a5,a3,1
1c0097c4:	e747d263          	ble	s4,a5,1c008e28 <pos_libc_prf+0x284>
1c0097c8:	97c6                	add	a5,a5,a7
1c0097ca:	f2e78a23          	sb	a4,-204(a5)
1c0097ce:	00268793          	addi	a5,a3,2
1c0097d2:	e547db63          	ble	s4,a5,1c008e28 <pos_libc_prf+0x284>
1c0097d6:	97c6                	add	a5,a5,a7
1c0097d8:	f2e78a23          	sb	a4,-204(a5)
1c0097dc:	00368793          	addi	a5,a3,3
1c0097e0:	e547d463          	ble	s4,a5,1c008e28 <pos_libc_prf+0x284>
1c0097e4:	97c6                	add	a5,a5,a7
1c0097e6:	f2e78a23          	sb	a4,-204(a5)
1c0097ea:	00468793          	addi	a5,a3,4
1c0097ee:	e347dd63          	ble	s4,a5,1c008e28 <pos_libc_prf+0x284>
1c0097f2:	97c6                	add	a5,a5,a7
1c0097f4:	f2e78a23          	sb	a4,-204(a5)
1c0097f8:	00568a93          	addi	s5,a3,5
1c0097fc:	e34ad663          	ble	s4,s5,1c008e28 <pos_libc_prf+0x284>
1c009800:	9ac6                	add	s5,s5,a7
1c009802:	f2ea8a23          	sb	a4,-204(s5)
1c009806:	89ca                	mv	s3,s2
1c009808:	e22ff06f          	j	1c008e2a <pos_libc_prf+0x286>
1c00980c:	4881                	li	a7,0
1c00980e:	1054                	addi	a3,sp,36
1c009810:	b935                	j	1c00944c <pos_libc_prf+0x8a8>
1c009812:	02414783          	lbu	a5,36(sp)
1c009816:	1058                	addi	a4,sp,36
1c009818:	46e5                	li	a3,25
1c00981a:	c8078ce3          	beqz	a5,1c0094b2 <pos_libc_prf+0x90e>
1c00981e:	fe078613          	addi	a2,a5,-32
1c009822:	f9f78793          	addi	a5,a5,-97
1c009826:	0ff7f793          	andi	a5,a5,255
1c00982a:	00f6e963          	bltu	a3,a5,1c00983c <pos_libc_prf+0xc98>
1c00982e:	00c70023          	sb	a2,0(a4)
1c009832:	0705                	addi	a4,a4,1
1c009834:	00074783          	lbu	a5,0(a4)
1c009838:	f3fd                	bnez	a5,1c00981e <pos_libc_prf+0xc7a>
1c00983a:	b9a5                	j	1c0094b2 <pos_libc_prf+0x90e>
1c00983c:	0705                	addi	a4,a4,1
1c00983e:	00074783          	lbu	a5,0(a4)
1c009842:	fff1                	bnez	a5,1c00981e <pos_libc_prf+0xc7a>
1c009844:	b1bd                	j	1c0094b2 <pos_libc_prf+0x90e>
1c009846:	47d2                	lw	a5,20(sp)
1c009848:	20078263          	beqz	a5,1c009a4c <pos_libc_prf+0xea8>
1c00984c:	02b00713          	li	a4,43
1c009850:	02e10223          	sb	a4,36(sp)
1c009854:	02510e93          	addi	t4,sp,37
1c009858:	4301                	li	t1,0
1c00985a:	4501                	li	a0,0
1c00985c:	4681                	li	a3,0
1c00985e:	4581                	li	a1,0
1c009860:	b8d5                	j	1c009154 <pos_libc_prf+0x5b0>
1c009862:	0c800793          	li	a5,200
1c009866:	df37c563          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c00986a:	8c42                	mv	s8,a6
1c00986c:	f58ff06f          	j	1c008fc4 <pos_libc_prf+0x420>
1c009870:	02b00793          	li	a5,43
1c009874:	02f10223          	sb	a5,36(sp)
1c009878:	02510793          	addi	a5,sp,37
1c00987c:	b941                	j	1c00950c <pos_libc_prf+0x968>
1c00987e:	02d00793          	li	a5,45
1c009882:	02f10223          	sb	a5,36(sp)
1c009886:	800007b7          	lui	a5,0x80000
1c00988a:	22f58363          	beq	a1,a5,1c009ab0 <pos_libc_prf+0xf0c>
1c00988e:	40b00733          	neg	a4,a1
1c009892:	02510793          	addi	a5,sp,37
1c009896:	b99d                	j	1c00950c <pos_libc_prf+0x968>
1c009898:	47b2                	lw	a5,12(sp)
1c00989a:	4f81                	li	t6,0
1c00989c:	e399                	bnez	a5,1c0098a2 <pos_libc_prf+0xcfe>
1c00989e:	01403fb3          	snez	t6,s4
1c0098a2:	56f5                	li	a3,-3
1c0098a4:	001a0e13          	addi	t3,s4,1
1c0098a8:	00d34463          	blt	t1,a3,1c0098b0 <pos_libc_prf+0xd0c>
1c0098ac:	166e5d63          	ble	t1,t3,1c009a26 <pos_libc_prf+0xe82>
1c0098b0:	46c1                	li	a3,16
1c0098b2:	01c6d363          	ble	t3,a3,1c0098b8 <pos_libc_prf+0xd14>
1c0098b6:	4e41                	li	t3,16
1c0098b8:	06700693          	li	a3,103
1c0098bc:	1e7d                	addi	t3,t3,-1
1c0098be:	1add8963          	beq	s11,a3,1c009a70 <pos_libc_prf+0xecc>
1c0098c2:	04500d93          	li	s11,69
1c0098c6:	b0c5                	j	1c0091a6 <pos_libc_prf+0x602>
1c0098c8:	020102a3          	sb	zero,37(sp)
1c0098cc:	57fd                	li	a5,-1
1c0098ce:	89ba                	mv	s3,a4
1c0098d0:	8c2a                	mv	s8,a0
1c0098d2:	c6fa0563          	beq	s4,a5,1c008d3c <pos_libc_prf+0x198>
1c0098d6:	02000813          	li	a6,32
1c0098da:	c842                	sw	a6,16(sp)
1c0098dc:	c60ff06f          	j	1c008d3c <pos_libc_prf+0x198>
1c0098e0:	89b6                	mv	s3,a3
1c0098e2:	bdeff06f          	j	1c008cc0 <pos_libc_prf+0x11c>
1c0098e6:	8766                	mv	a4,s9
1c0098e8:	1c084c63          	bltz	a6,1c009ac0 <pos_libc_prf+0xf1c>
1c0098ec:	8e55                	or	a2,a2,a3
1c0098ee:	fbfd8793          	addi	a5,s11,-65
1c0098f2:	00370993          	addi	s3,a4,3
1c0098f6:	46e5                	li	a3,25
1c0098f8:	10061a63          	bnez	a2,1c009a0c <pos_libc_prf+0xe68>
1c0098fc:	16f6ee63          	bltu	a3,a5,1c009a78 <pos_libc_prf+0xed4>
1c009900:	6795                	lui	a5,0x5
1c009902:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c009906:	00f71023          	sh	a5,0(a4)
1c00990a:	04600793          	li	a5,70
1c00990e:	00f70123          	sb	a5,2(a4)
1c009912:	000701a3          	sb	zero,3(a4)
1c009916:	419989b3          	sub	s3,s3,s9
1c00991a:	b48d                	j	1c00937c <pos_libc_prf+0x7d8>
1c00991c:	85e6                	mv	a1,s9
1c00991e:	8766                	mv	a4,s9
1c009920:	e38ff06f          	j	1c008f58 <pos_libc_prf+0x3b4>
1c009924:	a00a09e3          	beqz	s4,1c009336 <pos_libc_prf+0x792>
1c009928:	02e00693          	li	a3,46
1c00992c:	002e8513          	addi	a0,t4,2
1c009930:	00de80a3          	sb	a3,1(t4)
1c009934:	b27d                	j	1c0092e2 <pos_libc_prf+0x73e>
1c009936:	14605b63          	blez	t1,1c009a8c <pos_libc_prf+0xee8>
1c00993a:	006e89b3          	add	s3,t4,t1
1c00993e:	4541                	li	a0,16
1c009940:	03000893          	li	a7,48
1c009944:	00271793          	slli	a5,a4,0x2
1c009948:	01e75313          	srli	t1,a4,0x1e
1c00994c:	00261693          	slli	a3,a2,0x2
1c009950:	00e78833          	add	a6,a5,a4
1c009954:	00d366b3          	or	a3,t1,a3
1c009958:	96b2                	add	a3,a3,a2
1c00995a:	00f837b3          	sltu	a5,a6,a5
1c00995e:	97b6                	add	a5,a5,a3
1c009960:	0786                	slli	a5,a5,0x1
1c009962:	01f85693          	srli	a3,a6,0x1f
1c009966:	8fd5                	or	a5,a5,a3
1c009968:	01c7d693          	srli	a3,a5,0x1c
1c00996c:	03068693          	addi	a3,a3,48
1c009970:	02a05063          	blez	a0,1c009990 <pos_libc_prf+0xdec>
1c009974:	00181713          	slli	a4,a6,0x1
1c009978:	10000837          	lui	a6,0x10000
1c00997c:	187d                	addi	a6,a6,-1
1c00997e:	fed58fa3          	sb	a3,-1(a1)
1c009982:	157d                	addi	a0,a0,-1
1c009984:	0107f633          	and	a2,a5,a6
1c009988:	00b98863          	beq	s3,a1,1c009998 <pos_libc_prf+0xdf4>
1c00998c:	0585                	addi	a1,a1,1
1c00998e:	bf5d                	j	1c009944 <pos_libc_prf+0xda0>
1c009990:	ff158fa3          	sb	a7,-1(a1)
1c009994:	feb99ce3          	bne	s3,a1,1c00998c <pos_libc_prf+0xde8>
1c009998:	4301                	li	t1,0
1c00999a:	48b2                	lw	a7,12(sp)
1c00999c:	00089463          	bnez	a7,1c0099a4 <pos_libc_prf+0xe00>
1c0099a0:	a40a0be3          	beqz	s4,1c0093f6 <pos_libc_prf+0x852>
1c0099a4:	00198813          	addi	a6,s3,1
1c0099a8:	001a0693          	addi	a3,s4,1
1c0099ac:	02e00593          	li	a1,46
1c0099b0:	00b98023          	sb	a1,0(s3)
1c0099b4:	99b6                	add	s3,s3,a3
1c0099b6:	85c2                	mv	a1,a6
1c0099b8:	03000693          	li	a3,48
1c0099bc:	a2b98be3          	beq	s3,a1,1c0093f2 <pos_libc_prf+0x84e>
1c0099c0:	0585                	addi	a1,a1,1
1c0099c2:	9e0302e3          	beqz	t1,1c0093a6 <pos_libc_prf+0x802>
1c0099c6:	fed58fa3          	sb	a3,-1(a1)
1c0099ca:	0305                	addi	t1,t1,1
1c0099cc:	bfc5                	j	1c0099bc <pos_libc_prf+0xe18>
1c0099ce:	4a19                	li	s4,6
1c0099d0:	fadd9b63          	bne	s11,a3,1c009186 <pos_libc_prf+0x5e2>
1c0099d4:	46b2                	lw	a3,12(sp)
1c0099d6:	57f5                	li	a5,-3
1c0099d8:	0016cf93          	xori	t6,a3,1
1c0099dc:	08f35663          	ble	a5,t1,1c009a68 <pos_libc_prf+0xec4>
1c0099e0:	06500d93          	li	s11,101
1c0099e4:	4e19                	li	t3,6
1c0099e6:	fc0ff06f          	j	1c0091a6 <pos_libc_prf+0x602>
1c0099ea:	0c800793          	li	a5,200
1c0099ee:	c737c163          	blt	a5,s3,1c008e50 <pos_libc_prf+0x2ac>
1c0099f2:	8c2a                	mv	s8,a0
1c0099f4:	c602                	sw	zero,12(sp)
1c0099f6:	dceff06f          	j	1c008fc4 <pos_libc_prf+0x420>
1c0099fa:	02d00793          	li	a5,45
1c0099fe:	40600333          	neg	t1,t1
1c009a02:	00f980a3          	sb	a5,1(s3)
1c009a06:	ba89                	j	1c009358 <pos_libc_prf+0x7b4>
1c009a08:	c602                	sw	zero,12(sp)
1c009a0a:	b329                	j	1c009714 <pos_libc_prf+0xb70>
1c009a0c:	0cf6ed63          	bltu	a3,a5,1c009ae6 <pos_libc_prf+0xf42>
1c009a10:	6791                	lui	a5,0x4
1c009a12:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c009a16:	00f71023          	sh	a5,0(a4)
1c009a1a:	04e00793          	li	a5,78
1c009a1e:	00f70123          	sb	a5,2(a4)
1c009a22:	bdc5                	j	1c009912 <pos_libc_prf+0xd6e>
1c009a24:	4f81                	li	t6,0
1c009a26:	014307b3          	add	a5,t1,s4
1c009a2a:	0807c863          	bltz	a5,1c009aba <pos_libc_prf+0xf16>
1c009a2e:	46c1                	li	a3,16
1c009a30:	8e3e                	mv	t3,a5
1c009a32:	00f6d363          	ble	a5,a3,1c009a38 <pos_libc_prf+0xe94>
1c009a36:	4e41                	li	t3,16
1c009a38:	1e7d                	addi	t3,t3,-1
1c009a3a:	06600d93          	li	s11,102
1c009a3e:	f6079463          	bnez	a5,1c0091a6 <pos_libc_prf+0x602>
1c009a42:	4681                	li	a3,0
1c009a44:	08000637          	lui	a2,0x8000
1c009a48:	fc8ff06f          	j	1c009210 <pos_libc_prf+0x66c>
1c009a4c:	47e2                	lw	a5,24(sp)
1c009a4e:	c7d5                	beqz	a5,1c009afa <pos_libc_prf+0xf56>
1c009a50:	02000713          	li	a4,32
1c009a54:	02e10223          	sb	a4,36(sp)
1c009a58:	02510e93          	addi	t4,sp,37
1c009a5c:	4301                	li	t1,0
1c009a5e:	4501                	li	a0,0
1c009a60:	4681                	li	a3,0
1c009a62:	4581                	li	a1,0
1c009a64:	ef0ff06f          	j	1c009154 <pos_libc_prf+0x5b0>
1c009a68:	479d                	li	a5,7
1c009a6a:	fa67dee3          	ble	t1,a5,1c009a26 <pos_libc_prf+0xe82>
1c009a6e:	4e19                	li	t3,6
1c009a70:	06500d93          	li	s11,101
1c009a74:	f32ff06f          	j	1c0091a6 <pos_libc_prf+0x602>
1c009a78:	679d                	lui	a5,0x7
1c009a7a:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c009a7e:	00f71023          	sh	a5,0(a4)
1c009a82:	06600793          	li	a5,102
1c009a86:	00f70123          	sb	a5,2(a4)
1c009a8a:	b561                	j	1c009912 <pos_libc_prf+0xd6e>
1c009a8c:	03000693          	li	a3,48
1c009a90:	00de8023          	sb	a3,0(t4)
1c009a94:	4541                	li	a0,16
1c009a96:	b711                	j	1c00999a <pos_libc_prf+0xdf6>
1c009a98:	48e2                	lw	a7,24(sp)
1c009a9a:	8ee6                	mv	t4,s9
1c009a9c:	dc088e63          	beqz	a7,1c009078 <pos_libc_prf+0x4d4>
1c009aa0:	02000713          	li	a4,32
1c009aa4:	02e10223          	sb	a4,36(sp)
1c009aa8:	02510e93          	addi	t4,sp,37
1c009aac:	dccff06f          	j	1c009078 <pos_libc_prf+0x4d4>
1c009ab0:	80000737          	lui	a4,0x80000
1c009ab4:	02510793          	addi	a5,sp,37
1c009ab8:	bc91                	j	1c00950c <pos_libc_prf+0x968>
1c009aba:	06600d93          	li	s11,102
1c009abe:	b751                	j	1c009a42 <pos_libc_prf+0xe9e>
1c009ac0:	02d00713          	li	a4,45
1c009ac4:	02e10223          	sb	a4,36(sp)
1c009ac8:	02510713          	addi	a4,sp,37
1c009acc:	b505                	j	1c0098ec <pos_libc_prf+0xd48>
1c009ace:	a40a5d63          	bgez	s4,1c008d28 <pos_libc_prf+0x184>
1c009ad2:	a62ff06f          	j	1c008d34 <pos_libc_prf+0x190>
1c009ad6:	02d00713          	li	a4,45
1c009ada:	02e10223          	sb	a4,36(sp)
1c009ade:	02510e93          	addi	t4,sp,37
1c009ae2:	d96ff06f          	j	1c009078 <pos_libc_prf+0x4d4>
1c009ae6:	6799                	lui	a5,0x6
1c009ae8:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c009aec:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c009af0:	06e00793          	li	a5,110
1c009af4:	00f70123          	sb	a5,2(a4)
1c009af8:	bd29                	j	1c009912 <pos_libc_prf+0xd6e>
1c009afa:	8ee6                	mv	t4,s9
1c009afc:	b785                	j	1c009a5c <pos_libc_prf+0xeb8>
1c009afe:	89aa                	mv	s3,a0
1c009b00:	820f8de3          	beqz	t6,1c00933a <pos_libc_prf+0x796>
1c009b04:	b8dd                	j	1c0093fa <pos_libc_prf+0x856>

1c009b06 <pos_init_start>:
1c009b06:	1141                	addi	sp,sp,-16
1c009b08:	c422                	sw	s0,8(sp)
1c009b0a:	1c000437          	lui	s0,0x1c000
1c009b0e:	c606                	sw	ra,12(sp)
1c009b10:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c009b14:	81ffe0ef          	jal	ra,1c008332 <pos_soc_init>
1c009b18:	2275                	jal	1c009cc4 <pos_irq_init>
1c009b1a:	2ae1                	jal	1c009cf2 <pos_soc_event_init>
1c009b1c:	2a31                	jal	1c009c38 <pos_allocs_init>
1c009b1e:	405c                	lw	a5,4(s0)
1c009b20:	c791                	beqz	a5,1c009b2c <pos_init_start+0x26>
1c009b22:	0411                	addi	s0,s0,4
1c009b24:	0411                	addi	s0,s0,4
1c009b26:	9782                	jalr	a5
1c009b28:	401c                	lw	a5,0(s0)
1c009b2a:	ffed                	bnez	a5,1c009b24 <pos_init_start+0x1e>
1c009b2c:	842ff0ef          	jal	ra,1c008b6e <pos_io_start>
1c009b30:	300467f3          	csrrsi	a5,mstatus,8
1c009b34:	40b2                	lw	ra,12(sp)
1c009b36:	4422                	lw	s0,8(sp)
1c009b38:	0141                	addi	sp,sp,16
1c009b3a:	8082                	ret

1c009b3c <pos_init_stop>:
1c009b3c:	1141                	addi	sp,sp,-16
1c009b3e:	c422                	sw	s0,8(sp)
1c009b40:	1c000437          	lui	s0,0x1c000
1c009b44:	c606                	sw	ra,12(sp)
1c009b46:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c009b4a:	828ff0ef          	jal	ra,1c008b72 <pos_io_stop>
1c009b4e:	405c                	lw	a5,4(s0)
1c009b50:	c791                	beqz	a5,1c009b5c <pos_init_stop+0x20>
1c009b52:	0411                	addi	s0,s0,4
1c009b54:	0411                	addi	s0,s0,4
1c009b56:	9782                	jalr	a5
1c009b58:	401c                	lw	a5,0(s0)
1c009b5a:	ffed                	bnez	a5,1c009b54 <pos_init_stop+0x18>
1c009b5c:	40b2                	lw	ra,12(sp)
1c009b5e:	4422                	lw	s0,8(sp)
1c009b60:	0141                	addi	sp,sp,16
1c009b62:	8082                	ret

1c009b64 <pos_alloc_init>:
1c009b64:	00758793          	addi	a5,a1,7
1c009b68:	9be1                	andi	a5,a5,-8
1c009b6a:	40b785b3          	sub	a1,a5,a1
1c009b6e:	c11c                	sw	a5,0(a0)
1c009b70:	8e0d                	sub	a2,a2,a1
1c009b72:	00c05663          	blez	a2,1c009b7e <pos_alloc_init+0x1a>
1c009b76:	9a61                	andi	a2,a2,-8
1c009b78:	c390                	sw	a2,0(a5)
1c009b7a:	0007a223          	sw	zero,4(a5)
1c009b7e:	8082                	ret

1c009b80 <pos_alloc>:
1c009b80:	4110                	lw	a2,0(a0)
1c009b82:	059d                	addi	a1,a1,7
1c009b84:	99e1                	andi	a1,a1,-8
1c009b86:	ca31                	beqz	a2,1c009bda <pos_alloc+0x5a>
1c009b88:	4218                	lw	a4,0(a2)
1c009b8a:	425c                	lw	a5,4(a2)
1c009b8c:	02b75963          	ble	a1,a4,1c009bbe <pos_alloc+0x3e>
1c009b90:	cb81                	beqz	a5,1c009ba0 <pos_alloc+0x20>
1c009b92:	4398                	lw	a4,0(a5)
1c009b94:	43d4                	lw	a3,4(a5)
1c009b96:	00b75763          	ble	a1,a4,1c009ba4 <pos_alloc+0x24>
1c009b9a:	863e                	mv	a2,a5
1c009b9c:	87b6                	mv	a5,a3
1c009b9e:	fbf5                	bnez	a5,1c009b92 <pos_alloc+0x12>
1c009ba0:	853e                	mv	a0,a5
1c009ba2:	8082                	ret
1c009ba4:	00b70a63          	beq	a4,a1,1c009bb8 <pos_alloc+0x38>
1c009ba8:	00b78533          	add	a0,a5,a1
1c009bac:	8f0d                	sub	a4,a4,a1
1c009bae:	c118                	sw	a4,0(a0)
1c009bb0:	c154                	sw	a3,4(a0)
1c009bb2:	c248                	sw	a0,4(a2)
1c009bb4:	853e                	mv	a0,a5
1c009bb6:	8082                	ret
1c009bb8:	c254                	sw	a3,4(a2)
1c009bba:	853e                	mv	a0,a5
1c009bbc:	8082                	ret
1c009bbe:	00e58b63          	beq	a1,a4,1c009bd4 <pos_alloc+0x54>
1c009bc2:	00b606b3          	add	a3,a2,a1
1c009bc6:	8f0d                	sub	a4,a4,a1
1c009bc8:	c2dc                	sw	a5,4(a3)
1c009bca:	c298                	sw	a4,0(a3)
1c009bcc:	87b2                	mv	a5,a2
1c009bce:	c114                	sw	a3,0(a0)
1c009bd0:	853e                	mv	a0,a5
1c009bd2:	8082                	ret
1c009bd4:	c11c                	sw	a5,0(a0)
1c009bd6:	87b2                	mv	a5,a2
1c009bd8:	b7e1                	j	1c009ba0 <pos_alloc+0x20>
1c009bda:	4781                	li	a5,0
1c009bdc:	b7d1                	j	1c009ba0 <pos_alloc+0x20>

1c009bde <pos_free>:
1c009bde:	4118                	lw	a4,0(a0)
1c009be0:	061d                	addi	a2,a2,7
1c009be2:	9a61                	andi	a2,a2,-8
1c009be4:	c729                	beqz	a4,1c009c2e <pos_free+0x50>
1c009be6:	00b76663          	bltu	a4,a1,1c009bf2 <pos_free+0x14>
1c009bea:	a0a1                	j	1c009c32 <pos_free+0x54>
1c009bec:	00b7f563          	bleu	a1,a5,1c009bf6 <pos_free+0x18>
1c009bf0:	873e                	mv	a4,a5
1c009bf2:	435c                	lw	a5,4(a4)
1c009bf4:	ffe5                	bnez	a5,1c009bec <pos_free+0xe>
1c009bf6:	00c586b3          	add	a3,a1,a2
1c009bfa:	02d78463          	beq	a5,a3,1c009c22 <pos_free+0x44>
1c009bfe:	c190                	sw	a2,0(a1)
1c009c00:	c1dc                	sw	a5,4(a1)
1c009c02:	cf11                	beqz	a4,1c009c1e <pos_free+0x40>
1c009c04:	431c                	lw	a5,0(a4)
1c009c06:	00f706b3          	add	a3,a4,a5
1c009c0a:	00d58463          	beq	a1,a3,1c009c12 <pos_free+0x34>
1c009c0e:	c34c                	sw	a1,4(a4)
1c009c10:	8082                	ret
1c009c12:	4194                	lw	a3,0(a1)
1c009c14:	41d0                	lw	a2,4(a1)
1c009c16:	97b6                	add	a5,a5,a3
1c009c18:	c31c                	sw	a5,0(a4)
1c009c1a:	c350                	sw	a2,4(a4)
1c009c1c:	8082                	ret
1c009c1e:	c10c                	sw	a1,0(a0)
1c009c20:	8082                	ret
1c009c22:	4394                	lw	a3,0(a5)
1c009c24:	43dc                	lw	a5,4(a5)
1c009c26:	9636                	add	a2,a2,a3
1c009c28:	c190                	sw	a2,0(a1)
1c009c2a:	c1dc                	sw	a5,4(a1)
1c009c2c:	bfd9                	j	1c009c02 <pos_free+0x24>
1c009c2e:	4781                	li	a5,0
1c009c30:	b7d9                	j	1c009bf6 <pos_free+0x18>
1c009c32:	87ba                	mv	a5,a4
1c009c34:	4701                	li	a4,0
1c009c36:	b7c1                	j	1c009bf6 <pos_free+0x18>

1c009c38 <pos_allocs_init>:
1c009c38:	1141                	addi	sp,sp,-16
1c009c3a:	1c0045b7          	lui	a1,0x1c004
1c009c3e:	c606                	sw	ra,12(sp)
1c009c40:	3f458793          	addi	a5,a1,1012 # 1c0043f4 <__l2_priv0_end>
1c009c44:	1c008637          	lui	a2,0x1c008
1c009c48:	04c7cc63          	blt	a5,a2,1c009ca0 <pos_allocs_init+0x68>
1c009c4c:	4581                	li	a1,0
1c009c4e:	4601                	li	a2,0
1c009c50:	1c004537          	lui	a0,0x1c004
1c009c54:	3e850513          	addi	a0,a0,1000 # 1c0043e8 <pos_alloc_l2>
1c009c58:	3731                	jal	1c009b64 <pos_alloc_init>
1c009c5a:	1c00a5b7          	lui	a1,0x1c00a
1c009c5e:	d0c58793          	addi	a5,a1,-756 # 1c009d0c <__l2_priv1_end>
1c009c62:	1c010637          	lui	a2,0x1c010
1c009c66:	02c7c963          	blt	a5,a2,1c009c98 <pos_allocs_init+0x60>
1c009c6a:	4581                	li	a1,0
1c009c6c:	4601                	li	a2,0
1c009c6e:	1c004537          	lui	a0,0x1c004
1c009c72:	3ec50513          	addi	a0,a0,1004 # 1c0043ec <pos_alloc_l2+0x4>
1c009c76:	35fd                	jal	1c009b64 <pos_alloc_init>
1c009c78:	1c0105b7          	lui	a1,0x1c010
1c009c7c:	00058793          	mv	a5,a1
1c009c80:	40b2                	lw	ra,12(sp)
1c009c82:	1c080637          	lui	a2,0x1c080
1c009c86:	1c004537          	lui	a0,0x1c004
1c009c8a:	8e1d                	sub	a2,a2,a5
1c009c8c:	00058593          	mv	a1,a1
1c009c90:	3f050513          	addi	a0,a0,1008 # 1c0043f0 <pos_alloc_l2+0x8>
1c009c94:	0141                	addi	sp,sp,16
1c009c96:	b5f9                	j	1c009b64 <pos_alloc_init>
1c009c98:	8e1d                	sub	a2,a2,a5
1c009c9a:	d0c58593          	addi	a1,a1,-756 # 1c00fd0c <__l2_priv1_end+0x6000>
1c009c9e:	bfc1                	j	1c009c6e <pos_allocs_init+0x36>
1c009ca0:	8e1d                	sub	a2,a2,a5
1c009ca2:	3f458593          	addi	a1,a1,1012
1c009ca6:	b76d                	j	1c009c50 <pos_allocs_init+0x18>

1c009ca8 <pi_l2_malloc>:
1c009ca8:	85aa                	mv	a1,a0
1c009caa:	1c004537          	lui	a0,0x1c004
1c009cae:	3e850513          	addi	a0,a0,1000 # 1c0043e8 <pos_alloc_l2>
1c009cb2:	b5f9                	j	1c009b80 <pos_alloc>

1c009cb4 <pi_l2_free>:
1c009cb4:	862e                	mv	a2,a1
1c009cb6:	85aa                	mv	a1,a0
1c009cb8:	1c004537          	lui	a0,0x1c004
1c009cbc:	3e850513          	addi	a0,a0,1000 # 1c0043e8 <pos_alloc_l2>
1c009cc0:	bf39                	j	1c009bde <pos_free>

1c009cc2 <__rt_handle_illegal_instr>:
1c009cc2:	8082                	ret

1c009cc4 <pos_irq_init>:
1c009cc4:	1a10a737          	lui	a4,0x1a10a
1c009cc8:	f14027f3          	csrr	a5,mhartid
1c009ccc:	56fd                	li	a3,-1
1c009cce:	8795                	srai	a5,a5,0x5
1c009cd0:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c009cd4:	03f7f793          	andi	a5,a5,63
1c009cd8:	477d                	li	a4,31
1c009cda:	00e78363          	beq	a5,a4,1c009ce0 <pos_irq_init+0x1c>
1c009cde:	8082                	ret
1c009ce0:	1c0087b7          	lui	a5,0x1c008
1c009ce4:	00078793          	mv	a5,a5
1c009ce8:	0017e793          	ori	a5,a5,1
1c009cec:	30579073          	csrw	mtvec,a5
1c009cf0:	8082                	ret

1c009cf2 <pos_soc_event_init>:
1c009cf2:	1a1067b7          	lui	a5,0x1a106
1c009cf6:	577d                	li	a4,-1
1c009cf8:	c3d8                	sw	a4,4(a5)
1c009cfa:	c798                	sw	a4,8(a5)
1c009cfc:	c7d8                	sw	a4,12(a5)
1c009cfe:	cb98                	sw	a4,16(a5)
1c009d00:	cbd8                	sw	a4,20(a5)
1c009d02:	cf98                	sw	a4,24(a5)
1c009d04:	cfd8                	sw	a4,28(a5)
1c009d06:	d398                	sw	a4,32(a5)
1c009d08:	8082                	ret

1c009d0a <_endtext>:
	...
