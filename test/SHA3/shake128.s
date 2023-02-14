riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv_project/test/SHA3/build/shake128/shake128

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv_project/test/SHA3/build/shake128/shake128:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	7a60306f          	j	1c00b7a6 <__rt_handle_illegal_instr>
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
1c008084:	7220306f          	j	1c00b7a6 <__rt_handle_illegal_instr>

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
1c0080c4:	3d028293          	addi	t0,t0,976 # 1c004490 <stack>
1c0080c8:	ffffc317          	auipc	t1,0xffffc
1c0080cc:	3ec30313          	addi	t1,t1,1004 # 1c0044b4 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffc117          	auipc	sp,0xffffc
1c0080de:	3b610113          	addi	sp,sp,950 # 1c004490 <stack>
1c0080e2:	508030ef          	jal	ra,1c00b5ea <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	524030ef          	jal	ra,1c00b620 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	53c020ef          	jal	ra,1c00a63e <exit>

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
1c008124:	02050513          	addi	a0,a0,32 # 1c000020 <__clz_tab>
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
1c008148:	38c60613          	addi	a2,a2,908 # 1c00038c <plaintext>
1c00814c:	02000593          	li	a1,32
1c008150:	850a                	mv	a0,sp
1c008152:	02b00693          	li	a3,43
1c008156:	d422                	sw	s0,40(sp)
1c008158:	d606                	sw	ra,44(sp)
1c00815a:	d226                	sw	s1,36(sp)
1c00815c:	d04a                	sw	s2,32(sp)
1c00815e:	1c000437          	lui	s0,0x1c000
1c008162:	711010ef          	jal	ra,1c00a072 <shake128>
1c008166:	02000613          	li	a2,32
1c00816a:	858a                	mv	a1,sp
1c00816c:	12040513          	addi	a0,s0,288 # 1c000120 <expected>
1c008170:	13e020ef          	jal	ra,1c00a2ae <memcmp>
1c008174:	cd25                	beqz	a0,1c0081ec <main+0xaa>
1c008176:	1c000537          	lui	a0,0x1c000
1c00817a:	32050513          	addi	a0,a0,800 # 1c000320 <expected+0x200>
1c00817e:	41a020ef          	jal	ra,1c00a598 <puts>
1c008182:	1c000537          	lui	a0,0x1c000
1c008186:	35450513          	addi	a0,a0,852 # 1c000354 <expected+0x234>
1c00818a:	12040413          	addi	s0,s0,288
1c00818e:	4cc020ef          	jal	ra,1c00a65a <printf>
1c008192:	02040913          	addi	s2,s0,32
1c008196:	1c0004b7          	lui	s1,0x1c000
1c00819a:	00044583          	lbu	a1,0(s0)
1c00819e:	36048513          	addi	a0,s1,864 # 1c000360 <expected+0x240>
1c0081a2:	0405                	addi	s0,s0,1
1c0081a4:	4b6020ef          	jal	ra,1c00a65a <printf>
1c0081a8:	ff2419e3          	bne	s0,s2,1c00819a <main+0x58>
1c0081ac:	4529                	li	a0,10
1c0081ae:	466020ef          	jal	ra,1c00a614 <putchar>
1c0081b2:	1c000537          	lui	a0,0x1c000
1c0081b6:	36850513          	addi	a0,a0,872 # 1c000368 <expected+0x248>
1c0081ba:	4a0020ef          	jal	ra,1c00a65a <printf>
1c0081be:	840a                	mv	s0,sp
1c0081c0:	02010913          	addi	s2,sp,32
1c0081c4:	00044583          	lbu	a1,0(s0)
1c0081c8:	36048513          	addi	a0,s1,864
1c0081cc:	0405                	addi	s0,s0,1
1c0081ce:	48c020ef          	jal	ra,1c00a65a <printf>
1c0081d2:	ff2419e3          	bne	s0,s2,1c0081c4 <main+0x82>
1c0081d6:	4529                	li	a0,10
1c0081d8:	43c020ef          	jal	ra,1c00a614 <putchar>
1c0081dc:	4485                	li	s1,1
1c0081de:	50b2                	lw	ra,44(sp)
1c0081e0:	5422                	lw	s0,40(sp)
1c0081e2:	8526                	mv	a0,s1
1c0081e4:	5902                	lw	s2,32(sp)
1c0081e6:	5492                	lw	s1,36(sp)
1c0081e8:	6145                	addi	sp,sp,48
1c0081ea:	8082                	ret
1c0081ec:	84aa                	mv	s1,a0
1c0081ee:	1c000537          	lui	a0,0x1c000
1c0081f2:	37450513          	addi	a0,a0,884 # 1c000374 <expected+0x254>
1c0081f6:	3a2020ef          	jal	ra,1c00a598 <puts>
1c0081fa:	b7d5                	j	1c0081de <main+0x9c>

1c0081fc <pos_fll_init>:
1c0081fc:	1101                	addi	sp,sp,-32
1c0081fe:	1a100637          	lui	a2,0x1a100
1c008202:	ca26                	sw	s1,20(sp)
1c008204:	00451693          	slli	a3,a0,0x4
1c008208:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00820c:	94b6                	add	s1,s1,a3
1c00820e:	4098                	lw	a4,0(s1)
1c008210:	c84a                	sw	s2,16(sp)
1c008212:	ce06                	sw	ra,28(sp)
1c008214:	cc22                	sw	s0,24(sp)
1c008216:	c64e                	sw	s3,12(sp)
1c008218:	c452                	sw	s4,8(sp)
1c00821a:	892a                	mv	s2,a0
1c00821c:	87ba                	mv	a5,a4
1c00821e:	04074563          	bltz	a4,1c008268 <pos_fll_init+0x6c>
1c008222:	00860593          	addi	a1,a2,8
1c008226:	95b6                	add	a1,a1,a3
1c008228:	419c                	lw	a5,0(a1)
1c00822a:	7541                	lui	a0,0xffff0
1c00822c:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c008230:	8fe9                	and	a5,a5,a0
1c008232:	6509                	lui	a0,0x2
1c008234:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c008238:	8fc9                	or	a5,a5,a0
1c00823a:	f0010537          	lui	a0,0xf0010
1c00823e:	157d                	addi	a0,a0,-1
1c008240:	8fe9                	and	a5,a5,a0
1c008242:	00500537          	lui	a0,0x500
1c008246:	8fc9                	or	a5,a5,a0
1c008248:	0631                	addi	a2,a2,12
1c00824a:	c19c                	sw	a5,0(a1)
1c00824c:	96b2                	add	a3,a3,a2
1c00824e:	429c                	lw	a5,0(a3)
1c008250:	fc010637          	lui	a2,0xfc010
1c008254:	167d                	addi	a2,a2,-1
1c008256:	8ff1                	and	a5,a5,a2
1c008258:	014c0637          	lui	a2,0x14c0
1c00825c:	8fd1                	or	a5,a5,a2
1c00825e:	c29c                	sw	a5,0(a3)
1c008260:	c00007b7          	lui	a5,0xc0000
1c008264:	8fd9                	or	a5,a5,a4
1c008266:	c09c                	sw	a5,0(s1)
1c008268:	1c004437          	lui	s0,0x1c004
1c00826c:	49440413          	addi	s0,s0,1172 # 1c004494 <pos_fll_freq>
1c008270:	00291993          	slli	s3,s2,0x2
1c008274:	013406b3          	add	a3,s0,s3
1c008278:	0006aa03          	lw	s4,0(a3)
1c00827c:	020a1d63          	bnez	s4,1c0082b6 <pos_fll_init+0xba>
1c008280:	83e9                	srli	a5,a5,0x1a
1c008282:	0742                	slli	a4,a4,0x10
1c008284:	8341                	srli	a4,a4,0x10
1c008286:	8bbd                	andi	a5,a5,15
1c008288:	073e                	slli	a4,a4,0xf
1c00828a:	17fd                	addi	a5,a5,-1
1c00828c:	00f75a33          	srl	s4,a4,a5
1c008290:	1c004537          	lui	a0,0x1c004
1c008294:	0146a023          	sw	s4,0(a3)
1c008298:	49050513          	addi	a0,a0,1168 # 1c004490 <stack>
1c00829c:	954a                	add	a0,a0,s2
1c00829e:	4685                	li	a3,1
1c0082a0:	00d50023          	sb	a3,0(a0)
1c0082a4:	40f2                	lw	ra,28(sp)
1c0082a6:	4462                	lw	s0,24(sp)
1c0082a8:	8552                	mv	a0,s4
1c0082aa:	44d2                	lw	s1,20(sp)
1c0082ac:	4942                	lw	s2,16(sp)
1c0082ae:	49b2                	lw	s3,12(sp)
1c0082b0:	4a22                	lw	s4,8(sp)
1c0082b2:	6105                	addi	sp,sp,32
1c0082b4:	8082                	ret
1c0082b6:	8552                	mv	a0,s4
1c0082b8:	35b9                	jal	1c008106 <__clzsi2>
1c0082ba:	1579                	addi	a0,a0,-2
1c0082bc:	00155613          	srli	a2,a0,0x1
1c0082c0:	e631                	bnez	a2,1c00830c <pos_fll_init+0x110>
1c0082c2:	4709                	li	a4,2
1c0082c4:	4585                	li	a1,1
1c0082c6:	4605                	li	a2,1
1c0082c8:	00ca17b3          	sll	a5,s4,a2
1c0082cc:	76e1                	lui	a3,0xffff8
1c0082ce:	1c004537          	lui	a0,0x1c004
1c0082d2:	8efd                	and	a3,a3,a5
1c0082d4:	49050513          	addi	a0,a0,1168 # 1c004490 <stack>
1c0082d8:	96ae                	add	a3,a3,a1
1c0082da:	012505b3          	add	a1,a0,s2
1c0082de:	00c6d6b3          	srl	a3,a3,a2
1c0082e2:	944e                	add	s0,s0,s3
1c0082e4:	0005c603          	lbu	a2,0(a1)
1c0082e8:	c014                	sw	a3,0(s0)
1c0082ea:	da4d                	beqz	a2,1c00829c <pos_fll_init+0xa0>
1c0082ec:	4094                	lw	a3,0(s1)
1c0082ee:	83bd                	srli	a5,a5,0xf
1c0082f0:	07c2                	slli	a5,a5,0x10
1c0082f2:	7641                	lui	a2,0xffff0
1c0082f4:	83c1                	srli	a5,a5,0x10
1c0082f6:	8ef1                	and	a3,a3,a2
1c0082f8:	8edd                	or	a3,a3,a5
1c0082fa:	c40007b7          	lui	a5,0xc4000
1c0082fe:	8b3d                	andi	a4,a4,15
1c008300:	17fd                	addi	a5,a5,-1
1c008302:	076a                	slli	a4,a4,0x1a
1c008304:	8efd                	and	a3,a3,a5
1c008306:	8ed9                	or	a3,a3,a4
1c008308:	c094                	sw	a3,0(s1)
1c00830a:	bf49                	j	1c00829c <pos_fll_init+0xa0>
1c00830c:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c008310:	4685                	li	a3,1
1c008312:	00b695b3          	sll	a1,a3,a1
1c008316:	00160713          	addi	a4,a2,1
1c00831a:	b77d                	j	1c0082c8 <pos_fll_init+0xcc>

1c00831c <pos_fll_constructor>:
1c00831c:	1c0047b7          	lui	a5,0x1c004
1c008320:	49478793          	addi	a5,a5,1172 # 1c004494 <pos_fll_freq>
1c008324:	0007a023          	sw	zero,0(a5)
1c008328:	0007a223          	sw	zero,4(a5)
1c00832c:	1c0047b7          	lui	a5,0x1c004
1c008330:	48079823          	sh	zero,1168(a5) # 1c004490 <stack>
1c008334:	8082                	ret

1c008336 <pos_soc_init>:
1c008336:	1141                	addi	sp,sp,-16
1c008338:	c606                	sw	ra,12(sp)
1c00833a:	c422                	sw	s0,8(sp)
1c00833c:	37c5                	jal	1c00831c <pos_fll_constructor>
1c00833e:	4501                	li	a0,0
1c008340:	3d75                	jal	1c0081fc <pos_fll_init>
1c008342:	1c004437          	lui	s0,0x1c004
1c008346:	48a42e23          	sw	a0,1180(s0) # 1c00449c <pos_freq_domains>
1c00834a:	4505                	li	a0,1
1c00834c:	3d45                	jal	1c0081fc <pos_fll_init>
1c00834e:	49c40413          	addi	s0,s0,1180
1c008352:	c408                	sw	a0,8(s0)
1c008354:	40b2                	lw	ra,12(sp)
1c008356:	4422                	lw	s0,8(sp)
1c008358:	0141                	addi	sp,sp,16
1c00835a:	8082                	ret

1c00835c <KeccakF1600_StatePermute>:
1c00835c:	7145                	addi	sp,sp,-464
1c00835e:	12a12423          	sw	a0,296(sp)
1c008362:	12812583          	lw	a1,296(sp)
1c008366:	12812603          	lw	a2,296(sp)
1c00836a:	00052283          	lw	t0,0(a0)
1c00836e:	00452303          	lw	t1,4(a0)
1c008372:	00852383          	lw	t2,8(a0)
1c008376:	4d8c                	lw	a1,24(a1)
1c008378:	4e50                	lw	a2,28(a2)
1c00837a:	1c812623          	sw	s0,460(sp)
1c00837e:	1c912423          	sw	s1,456(sp)
1c008382:	4540                	lw	s0,12(a0)
1c008384:	4904                	lw	s1,16(a0)
1c008386:	12812683          	lw	a3,296(sp)
1c00838a:	4948                	lw	a0,20(a0)
1c00838c:	1d212223          	sw	s2,452(sp)
1c008390:	1d312023          	sw	s3,448(sp)
1c008394:	1b412e23          	sw	s4,444(sp)
1c008398:	1b512c23          	sw	s5,440(sp)
1c00839c:	1b612a23          	sw	s6,436(sp)
1c0083a0:	1b712823          	sw	s7,432(sp)
1c0083a4:	1b812623          	sw	s8,428(sp)
1c0083a8:	1b912423          	sw	s9,424(sp)
1c0083ac:	1ba12223          	sw	s10,420(sp)
1c0083b0:	1bb12023          	sw	s11,416(sp)
1c0083b4:	db16                	sw	t0,180(sp)
1c0083b6:	dd1a                	sw	t1,184(sp)
1c0083b8:	c99e                	sw	t2,208(sp)
1c0083ba:	cba2                	sw	s0,212(sp)
1c0083bc:	d3a6                	sw	s1,228(sp)
1c0083be:	10a12c23          	sw	a0,280(sp)
1c0083c2:	10b12e23          	sw	a1,284(sp)
1c0083c6:	d5b2                	sw	a2,232(sp)
1c0083c8:	5294                	lw	a3,32(a3)
1c0083ca:	12812783          	lw	a5,296(sp)
1c0083ce:	12812883          	lw	a7,296(sp)
1c0083d2:	12812703          	lw	a4,296(sp)
1c0083d6:	12812803          	lw	a6,296(sp)
1c0083da:	579c                	lw	a5,40(a5)
1c0083dc:	0388a903          	lw	s2,56(a7)
1c0083e0:	03c8a983          	lw	s3,60(a7)
1c0083e4:	0408aa03          	lw	s4,64(a7)
1c0083e8:	0448aa83          	lw	s5,68(a7)
1c0083ec:	0488ab03          	lw	s6,72(a7)
1c0083f0:	04c8ab83          	lw	s7,76(a7)
1c0083f4:	0508ad03          	lw	s10,80(a7)
1c0083f8:	0588ae03          	lw	t3,88(a7)
1c0083fc:	5358                	lw	a4,36(a4)
1c0083fe:	02c82803          	lw	a6,44(a6)
1c008402:	05c8ae83          	lw	t4,92(a7)
1c008406:	dbbe                	sw	a5,244(sp)
1c008408:	1c0007b7          	lui	a5,0x1c000
1c00840c:	d7b6                	sw	a3,236(sp)
1c00840e:	d9ba                	sw	a4,240(sp)
1c008410:	ddc2                	sw	a6,248(sp)
1c008412:	ccca                	sw	s2,88(sp)
1c008414:	cece                	sw	s3,92(sp)
1c008416:	dfd2                	sw	s4,252(sp)
1c008418:	11512023          	sw	s5,256(sp)
1c00841c:	dcda                	sw	s6,120(sp)
1c00841e:	dede                	sw	s7,124(sp)
1c008420:	d0ea                	sw	s10,96(sp)
1c008422:	11c12223          	sw	t3,260(sp)
1c008426:	3b878793          	addi	a5,a5,952 # 1c0003b8 <KeccakF_RoundConstants>
1c00842a:	0348ac83          	lw	s9,52(a7)
1c00842e:	0308ad83          	lw	s11,48(a7)
1c008432:	0548a483          	lw	s1,84(a7)
1c008436:	11d12423          	sw	t4,264(sp)
1c00843a:	0608af03          	lw	t5,96(a7)
1c00843e:	0688af83          	lw	t6,104(a7)
1c008442:	0788a403          	lw	s0,120(a7)
1c008446:	06c8a283          	lw	t0,108(a7)
1c00844a:	0708a303          	lw	t1,112(a7)
1c00844e:	0748a383          	lw	t2,116(a7)
1c008452:	07c8a503          	lw	a0,124(a7)
1c008456:	0808a583          	lw	a1,128(a7)
1c00845a:	0848a603          	lw	a2,132(a7)
1c00845e:	0888a683          	lw	a3,136(a7)
1c008462:	08c8a703          	lw	a4,140(a7)
1c008466:	0988a803          	lw	a6,152(a7)
1c00846a:	0648aa83          	lw	s5,100(a7)
1c00846e:	12f12623          	sw	a5,300(sp)
1c008472:	0908ab83          	lw	s7,144(a7)
1c008476:	0948a783          	lw	a5,148(a7)
1c00847a:	12812903          	lw	s2,296(sp)
1c00847e:	09c8a883          	lw	a7,156(a7)
1c008482:	d2fa                	sw	t5,100(sp)
1c008484:	d4fe                	sw	t6,104(sp)
1c008486:	12812223          	sw	s0,292(sp)
1c00848a:	c516                	sw	t0,136(sp)
1c00848c:	10612623          	sw	t1,268(sp)
1c008490:	12712023          	sw	t2,288(sp)
1c008494:	12a12823          	sw	a0,304(sp)
1c008498:	c72e                	sw	a1,140(sp)
1c00849a:	c932                	sw	a2,144(sp)
1c00849c:	d336                	sw	a3,164(sp)
1c00849e:	d53a                	sw	a4,168(sp)
1c0084a0:	cb3e                	sw	a5,148(sp)
1c0084a2:	cd42                	sw	a6,152(sp)
1c0084a4:	cf46                	sw	a7,156(sp)
1c0084a6:	0a092903          	lw	s2,160(s2)
1c0084aa:	12812f83          	lw	t6,296(sp)
1c0084ae:	12812983          	lw	s3,296(sp)
1c0084b2:	12812a03          	lw	s4,296(sp)
1c0084b6:	12812b03          	lw	s6,296(sp)
1c0084ba:	12812d03          	lw	s10,296(sp)
1c0084be:	12812e03          	lw	t3,296(sp)
1c0084c2:	12812e83          	lw	t4,296(sp)
1c0084c6:	12812f03          	lw	t5,296(sp)
1c0084ca:	0a49a983          	lw	s3,164(s3)
1c0084ce:	0a8a2a03          	lw	s4,168(s4)
1c0084d2:	0acb2b03          	lw	s6,172(s6)
1c0084d6:	d14a                	sw	s2,160(sp)
1c0084d8:	0b0d2d03          	lw	s10,176(s10)
1c0084dc:	0b4e2e03          	lw	t3,180(t3)
1c0084e0:	0b8eae83          	lw	t4,184(t4)
1c0084e4:	0bcf2f03          	lw	t5,188(t5)
1c0084e8:	0c0fa403          	lw	s0,192(t6)
1c0084ec:	0c4fa903          	lw	s2,196(t6)
1c0084f0:	c14e                	sw	s3,128(sp)
1c0084f2:	d8d2                	sw	s4,112(sp)
1c0084f4:	dada                	sw	s6,116(sp)
1c0084f6:	89e6                	mv	s3,s9
1c0084f8:	c36a                	sw	s10,132(sp)
1c0084fa:	d6f2                	sw	t3,108(sp)
1c0084fc:	d776                	sw	t4,172(sp)
1c0084fe:	c0fa                	sw	t5,64(sp)
1c008500:	8a6e                	mv	s4,s11
1c008502:	8b26                	mv	s6,s1
1c008504:	8c22                	mv	s8,s0
1c008506:	8cca                	mv	s9,s2
1c008508:	52da                	lw	t0,180(sp)
1c00850a:	535e                	lw	t1,244(sp)
1c00850c:	53ea                	lw	t2,184(sp)
1c00850e:	546e                	lw	s0,248(sp)
1c008510:	0062c5b3          	xor	a1,t0,t1
1c008514:	0083c633          	xor	a2,t2,s0
1c008518:	44ce                	lw	s1,208(sp)
1c00851a:	581e                	lw	a6,228(sp)
1c00851c:	48e6                	lw	a7,88(sp)
1c00851e:	11812903          	lw	s2,280(sp)
1c008522:	4d76                	lw	s10,92(sp)
1c008524:	11c12e83          	lw	t4,284(sp)
1c008528:	5f7e                	lw	t5,252(sp)
1c00852a:	5fae                	lw	t6,232(sp)
1c00852c:	10012283          	lw	t0,256(sp)
1c008530:	53be                	lw	t2,236(sp)
1c008532:	5466                	lw	s0,120(sp)
1c008534:	455e                	lw	a0,212(sp)
1c008536:	0144c6b3          	xor	a3,s1,s4
1c00853a:	011847b3          	xor	a5,a6,a7
1c00853e:	01a94e33          	xor	t3,s2,s10
1c008542:	01eec333          	xor	t1,t4,t5
1c008546:	005fc8b3          	xor	a7,t6,t0
1c00854a:	0083c833          	xor	a6,t2,s0
1c00854e:	54ce                	lw	s1,240(sp)
1c008550:	5976                	lw	s2,124(sp)
1c008552:	5d06                	lw	s10,96(sp)
1c008554:	10412e83          	lw	t4,260(sp)
1c008558:	10812f03          	lw	t5,264(sp)
1c00855c:	5f96                	lw	t6,100(sp)
1c00855e:	52a6                	lw	t0,104(sp)
1c008560:	10c12403          	lw	s0,268(sp)
1c008564:	43aa                	lw	t2,136(sp)
1c008566:	01354733          	xor	a4,a0,s3
1c00856a:	01a5c5b3          	xor	a1,a1,s10
1c00856e:	0124c533          	xor	a0,s1,s2
1c008572:	13012d03          	lw	s10,304(sp)
1c008576:	12012483          	lw	s1,288(sp)
1c00857a:	12412903          	lw	s2,292(sp)
1c00857e:	01d6c6b3          	xor	a3,a3,t4
1c008582:	01e74733          	xor	a4,a4,t5
1c008586:	4eba                	lw	t4,140(sp)
1c008588:	4f4a                	lw	t5,144(sp)
1c00858a:	01f7c7b3          	xor	a5,a5,t6
1c00858e:	00534333          	xor	t1,t1,t0
1c008592:	5f9a                	lw	t6,164(sp)
1c008594:	52aa                	lw	t0,168(sp)
1c008596:	0078c8b3          	xor	a7,a7,t2
1c00859a:	00884833          	xor	a6,a6,s0
1c00859e:	43da                	lw	t2,148(sp)
1c0085a0:	446a                	lw	s0,152(sp)
1c0085a2:	01664633          	xor	a2,a2,s6
1c0085a6:	015e4e33          	xor	t3,t3,s5
1c0085aa:	01a64633          	xor	a2,a2,s10
1c0085ae:	00884833          	xor	a6,a6,s0
1c0085b2:	4d0a                	lw	s10,128(sp)
1c0085b4:	4406                	lw	s0,64(sp)
1c0085b6:	005e4e33          	xor	t3,t3,t0
1c0085ba:	0078c8b3          	xor	a7,a7,t2
1c0085be:	52b6                	lw	t0,108(sp)
1c0085c0:	53ba                	lw	t2,172(sp)
1c0085c2:	0125c5b3          	xor	a1,a1,s2
1c0085c6:	590a                	lw	s2,160(sp)
1c0085c8:	01a64633          	xor	a2,a2,s10
1c0085cc:	01734333          	xor	t1,t1,s7
1c0085d0:	0088cd33          	xor	s10,a7,s0
1c0085d4:	8d25                	xor	a0,a0,s1
1c0085d6:	44fa                	lw	s1,156(sp)
1c0085d8:	00734db3          	xor	s11,t1,t2
1c0085dc:	0125c5b3          	xor	a1,a1,s2
1c0085e0:	01884833          	xor	a6,a6,s8
1c0085e4:	005e4933          	xor	s2,t3,t0
1c0085e8:	001d1413          	slli	s0,s10,0x1
1c0085ec:	01d6c6b3          	xor	a3,a3,t4
1c0085f0:	01e74733          	xor	a4,a4,t5
1c0085f4:	5ec6                	lw	t4,112(sp)
1c0085f6:	5f56                	lw	t5,116(sp)
1c0085f8:	01fdd893          	srli	a7,s11,0x1f
1c0085fc:	d422                	sw	s0,40(sp)
1c0085fe:	8d25                	xor	a0,a0,s1
1c008600:	01f85413          	srli	s0,a6,0x1f
1c008604:	01f95493          	srli	s1,s2,0x1f
1c008608:	01d6c6b3          	xor	a3,a3,t4
1c00860c:	01954533          	xor	a0,a0,s9
1c008610:	01e74733          	xor	a4,a4,t5
1c008614:	c4c6                	sw	a7,72(sp)
1c008616:	dc26                	sw	s1,56(sp)
1c008618:	001d9893          	slli	a7,s11,0x1
1c00861c:	01fd5493          	srli	s1,s10,0x1f
1c008620:	de22                	sw	s0,60(sp)
1c008622:	00181413          	slli	s0,a6,0x1
1c008626:	01f6de13          	srli	t3,a3,0x1f
1c00862a:	00171e93          	slli	t4,a4,0x1
1c00862e:	d626                	sw	s1,44(sp)
1c008630:	c6c6                	sw	a7,76(sp)
1c008632:	00151493          	slli	s1,a0,0x1
1c008636:	01f55893          	srli	a7,a0,0x1f
1c00863a:	01f7c7b3          	xor	a5,a5,t6
1c00863e:	d822                	sw	s0,48(sp)
1c008640:	4f9a                	lw	t6,132(sp)
1c008642:	01f65413          	srli	s0,a2,0x1f
1c008646:	c8a6                	sw	s1,80(sp)
1c008648:	cac6                	sw	a7,84(sp)
1c00864a:	01f5d493          	srli	s1,a1,0x1f
1c00864e:	00161893          	slli	a7,a2,0x1
1c008652:	df22                	sw	s0,188(sp)
1c008654:	01de6433          	or	s0,t3,t4
1c008658:	4e26                	lw	t3,72(sp)
1c00865a:	5ea2                	lw	t4,40(sp)
1c00865c:	01f7c7b3          	xor	a5,a5,t6
1c008660:	01f75f13          	srli	t5,a4,0x1f
1c008664:	00169f93          	slli	t6,a3,0x1
1c008668:	da26                	sw	s1,52(sp)
1c00866a:	d946                	sw	a7,176(sp)
1c00866c:	00159493          	slli	s1,a1,0x1
1c008670:	58e2                	lw	a7,56(sp)
1c008672:	01f7d313          	srli	t1,a5,0x1f
1c008676:	00191293          	slli	t0,s2,0x1
1c00867a:	00179393          	slli	t2,a5,0x1
1c00867e:	ce26                	sw	s1,28(sp)
1c008680:	01ff64b3          	or	s1,t5,t6
1c008684:	01de6f33          	or	t5,t3,t4
1c008688:	4ec6                	lw	t4,80(sp)
1c00868a:	5e72                	lw	t3,60(sp)
1c00868c:	005362b3          	or	t0,t1,t0
1c008690:	0078e3b3          	or	t2,a7,t2
1c008694:	5332                	lw	t1,44(sp)
1c008696:	48b6                	lw	a7,76(sp)
1c008698:	01de6e33          	or	t3,t3,t4
1c00869c:	01136fb3          	or	t6,t1,a7
1c0086a0:	c4f2                	sw	t3,72(sp)
1c0086a2:	4356                	lw	t1,84(sp)
1c0086a4:	58c2                	lw	a7,48(sp)
1c0086a6:	5e52                	lw	t3,52(sp)
1c0086a8:	01136eb3          	or	t4,t1,a7
1c0086ac:	534a                	lw	t1,176(sp)
1c0086ae:	58fa                	lw	a7,188(sp)
1c0086b0:	006e6e33          	or	t3,t3,t1
1c0086b4:	c2f2                	sw	t3,68(sp)
1c0086b6:	4e72                	lw	t3,28(sp)
1c0086b8:	00feceb3          	xor	t4,t4,a5
1c0086bc:	de76                	sw	t4,60(sp)
1c0086be:	01c8e333          	or	t1,a7,t3
1c0086c2:	00ef4f33          	xor	t5,t5,a4
1c0086c6:	4ea6                	lw	t4,72(sp)
1c0086c8:	00c2c2b3          	xor	t0,t0,a2
1c0086cc:	8c29                	xor	s0,s0,a0
1c0086ce:	d67a                	sw	t5,44(sp)
1c0086d0:	01b34333          	xor	t1,t1,s11
1c0086d4:	4f16                	lw	t5,68(sp)
1c0086d6:	0104c4b3          	xor	s1,s1,a6
1c0086da:	012ec933          	xor	s2,t4,s2
1c0086de:	da1a                	sw	t1,52(sp)
1c0086e0:	0132c9b3          	xor	s3,t0,s3
1c0086e4:	5332                	lw	t1,44(sp)
1c0086e6:	58f6                	lw	a7,124(sp)
1c0086e8:	d022                	sw	s0,32(sp)
1c0086ea:	dc16                	sw	t0,56(sp)
1c0086ec:	5472                	lw	s0,60(sp)
1c0086ee:	5296                	lw	t0,100(sp)
1c0086f0:	01af4d33          	xor	s10,t5,s10
1c0086f4:	00b3c3b3          	xor	t2,t2,a1
1c0086f8:	00dfcfb3          	xor	t6,t6,a3
1c0086fc:	cc26                	sw	s1,24(sp)
1c0086fe:	d84a                	sw	s2,48(sp)
1c008700:	015344b3          	xor	s1,t1,s5
1c008704:	005fc933          	xor	s2,t6,t0
1c008708:	5542                	lw	a0,48(sp)
1c00870a:	5652                	lw	a2,52(sp)
1c00870c:	019d42b3          	xor	t0,s10,s9
1c008710:	011d4e33          	xor	t3,s10,a7
1c008714:	0143ca33          	xor	s4,t2,s4
1c008718:	45da                	lw	a1,148(sp)
1c00871a:	56f2                	lw	a3,60(sp)
1c00871c:	11c12703          	lw	a4,284(sp)
1c008720:	57ae                	lw	a5,232(sp)
1c008722:	5866                	lw	a6,120(sp)
1c008724:	4ae2                	lw	s5,24(sp)
1c008726:	d21e                	sw	t2,36(sp)
1c008728:	d47e                	sw	t6,40(sp)
1c00872a:	017443b3          	xor	t2,s0,s7
1c00872e:	ce6a                	sw	s10,28(sp)
1c008730:	5b86                	lw	s7,96(sp)
1c008732:	5d02                	lw	s10,32(sp)
1c008734:	00b54433          	xor	s0,a0,a1
1c008738:	01864fb3          	xor	t6,a2,s8
1c00873c:	00e6ceb3          	xor	t4,a3,a4
1c008740:	00f54f33          	xor	t5,a0,a5
1c008744:	01064333          	xor	t1,a2,a6
1c008748:	016d48b3          	xor	a7,s10,s6
1c00874c:	017ac833          	xor	a6,s5,s7
1c008750:	5592                	lw	a1,36(sp)
1c008752:	463a                	lw	a2,140(sp)
1c008754:	56e2                	lw	a3,56(sp)
1c008756:	474a                	lw	a4,144(sp)
1c008758:	57a2                	lw	a5,40(sp)
1c00875a:	4a9a                	lw	s5,132(sp)
1c00875c:	5b32                	lw	s6,44(sp)
1c00875e:	5bb6                	lw	s7,108(sp)
1c008760:	00c5c533          	xor	a0,a1,a2
1c008764:	5d12                	lw	s10,36(sp)
1c008766:	00e6c5b3          	xor	a1,a3,a4
1c00876a:	0157c633          	xor	a2,a5,s5
1c00876e:	017b46b3          	xor	a3,s6,s7
1c008772:	474e                	lw	a4,208(sp)
1c008774:	5ae2                	lw	s5,56(sp)
1c008776:	4b5e                	lw	s6,212(sp)
1c008778:	00ed47b3          	xor	a5,s10,a4
1c00877c:	5ba2                	lw	s7,40(sp)
1c00877e:	016ac733          	xor	a4,s5,s6
1c008782:	4d66                	lw	s10,88(sp)
1c008784:	4b76                	lw	s6,92(sp)
1c008786:	5ab2                	lw	s5,44(sp)
1c008788:	01abcbb3          	xor	s7,s7,s10
1c00878c:	016acab3          	xor	s5,s5,s6
1c008790:	5d26                	lw	s10,104(sp)
1c008792:	4b2a                	lw	s6,136(sp)
1c008794:	c2de                	sw	s7,68(sp)
1c008796:	c4d6                	sw	s5,72(sp)
1c008798:	5bf2                	lw	s7,60(sp)
1c00879a:	5ac2                	lw	s5,48(sp)
1c00879c:	01abcbb3          	xor	s7,s7,s10
1c0087a0:	016acab3          	xor	s5,s5,s6
1c0087a4:	c6de                	sw	s7,76(sp)
1c0087a6:	4b7a                	lw	s6,156(sp)
1c0087a8:	c8d6                	sw	s5,80(sp)
1c0087aa:	5bd2                	lw	s7,52(sp)
1c0087ac:	4d6a                	lw	s10,152(sp)
1c0087ae:	4af2                	lw	s5,28(sp)
1c0087b0:	01abcbb3          	xor	s7,s7,s10
1c0087b4:	016acab3          	xor	s5,s5,s6
1c0087b8:	cade                	sw	s7,84(sp)
1c0087ba:	c5d6                	sw	s5,200(sp)
1c0087bc:	4be2                	lw	s7,24(sp)
1c0087be:	5d0a                	lw	s10,160(sp)
1c0087c0:	4b0a                	lw	s6,128(sp)
1c0087c2:	01abcbb3          	xor	s7,s7,s10
1c0087c6:	c7de                	sw	s7,204(sp)
1c0087c8:	014a5d13          	srli	s10,s4,0x14
1c0087cc:	00c99b93          	slli	s7,s3,0xc
1c0087d0:	0a32                	slli	s4,s4,0xc
1c0087d2:	0149d993          	srli	s3,s3,0x14
1c0087d6:	c552                	sw	s4,136(sp)
1c0087d8:	c74e                	sw	s3,140(sp)
1c0087da:	01595a13          	srli	s4,s2,0x15
1c0087de:	00b49993          	slli	s3,s1,0xb
1c0087e2:	dcce                	sw	s3,120(sp)
1c0087e4:	ded2                	sw	s4,124(sp)
1c0087e6:	00d59993          	slli	s3,a1,0xd
1c0087ea:	01355a13          	srli	s4,a0,0x13
1c0087ee:	c14e                	sw	s3,128(sp)
1c0087f0:	c352                	sw	s4,132(sp)
1c0087f2:	01d69993          	slli	s3,a3,0x1d
1c0087f6:	00365a13          	srli	s4,a2,0x3
1c0087fa:	ccde                	sw	s7,88(sp)
1c0087fc:	ceea                	sw	s10,92(sp)
1c0087fe:	d6ce                	sw	s3,108(sp)
1c008800:	df52                	sw	s4,188(sp)
1c008802:	01f7d993          	srli	s3,a5,0x1f
1c008806:	00171a13          	slli	s4,a4,0x1
1c00880a:	c1ce                	sw	s3,192(sp)
1c00880c:	c3d2                	sw	s4,196(sp)
1c00880e:	49e6                	lw	s3,88(sp)
1c008810:	4a76                	lw	s4,92(sp)
1c008812:	5a82                	lw	s5,32(sp)
1c008814:	0149e9b3          	or	s3,s3,s4
1c008818:	ccce                	sw	s3,88(sp)
1c00881a:	4a3a                	lw	s4,140(sp)
1c00881c:	49aa                	lw	s3,136(sp)
1c00881e:	016acab3          	xor	s5,s5,s6
1c008822:	0149e9b3          	or	s3,s3,s4
1c008826:	01541b13          	slli	s6,s0,0x15
1c00882a:	d956                	sw	s5,176(sp)
1c00882c:	092e                	slli	s2,s2,0xb
1c00882e:	00b3da93          	srli	s5,t2,0xb
1c008832:	80d5                	srli	s1,s1,0x15
1c008834:	5a76                	lw	s4,124(sp)
1c008836:	d0d6                	sw	s5,96(sp)
1c008838:	d2da                	sw	s6,100(sp)
1c00883a:	009964b3          	or	s1,s2,s1
1c00883e:	cece                	sw	s3,92(sp)
1c008840:	59e6                	lw	s3,120(sp)
1c008842:	012fdb93          	srli	s7,t6,0x12
1c008846:	5916                	lw	s2,100(sp)
1c008848:	dea6                	sw	s1,124(sp)
1c00884a:	5486                	lw	s1,96(sp)
1c00884c:	00c35c13          	srli	s8,t1,0xc
1c008850:	01d85b13          	srli	s6,a6,0x1d
1c008854:	0149e9b3          	or	s3,s3,s4
1c008858:	d4de                	sw	s7,104(sp)
1c00885a:	00389a93          	slli	s5,a7,0x3
1c00885e:	014e1b93          	slli	s7,t3,0x14
1c008862:	004edd13          	srli	s10,t4,0x4
1c008866:	0124e4b3          	or	s1,s1,s2
1c00886a:	017c6bb3          	or	s7,s8,s7
1c00886e:	015b6ab3          	or	s5,s6,s5
1c008872:	00e29d93          	slli	s11,t0,0xe
1c008876:	01cf1c93          	slli	s9,t5,0x1c
1c00887a:	0122d293          	srli	t0,t0,0x12
1c00887e:	00ce5e13          	srli	t3,t3,0xc
1c008882:	dcce                	sw	s3,120(sp)
1c008884:	0fba                	slli	t6,t6,0xe
1c008886:	0352                	slli	t1,t1,0x14
1c008888:	d2a6                	sw	s1,100(sp)
1c00888a:	01f2efb3          	or	t6,t0,t6
1c00888e:	59a6                	lw	s3,104(sp)
1c008890:	019d6cb3          	or	s9,s10,s9
1c008894:	006e6333          	or	t1,t3,t1
1c008898:	4a0a                	lw	s4,128(sp)
1c00889a:	4e1e                	lw	t3,196(sp)
1c00889c:	5b36                	lw	s6,108(sp)
1c00889e:	4d0e                	lw	s10,192(sp)
1c0088a0:	802d                	srli	s0,s0,0xb
1c0088a2:	004f5f13          	srli	t5,t5,0x4
1c0088a6:	cd5e                	sw	s7,152(sp)
1c0088a8:	d156                	sw	s5,160(sp)
1c0088aa:	5bfa                	lw	s7,188(sp)
1c0088ac:	4a9a                	lw	s5,132(sp)
1c0088ae:	03d6                	slli	t2,t2,0x15
1c0088b0:	0ef2                	slli	t4,t4,0x1c
1c0088b2:	007463b3          	or	t2,s0,t2
1c0088b6:	01df6eb3          	or	t4,t5,t4
1c0088ba:	52ce                	lw	t0,240(sp)
1c0088bc:	01d8d893          	srli	a7,a7,0x1d
1c0088c0:	0536                	slli	a0,a0,0xd
1c0088c2:	0676                	slli	a2,a2,0x1d
1c0088c4:	837d                	srli	a4,a4,0x1f
1c0088c6:	d4fe                	sw	t6,104(sp)
1c0088c8:	080e                	slli	a6,a6,0x3
1c0088ca:	4ff2                	lw	t6,28(sp)
1c0088cc:	81cd                	srli	a1,a1,0x13
1c0088ce:	828d                	srli	a3,a3,0x3
1c0088d0:	0786                	slli	a5,a5,0x1
1c0088d2:	01b9edb3          	or	s11,s3,s11
1c0088d6:	0108e833          	or	a6,a7,a6
1c0088da:	015a6a33          	or	s4,s4,s5
1c0088de:	8dc9                	or	a1,a1,a0
1c0088e0:	017b6b33          	or	s6,s6,s7
1c0088e4:	8ed1                	or	a3,a3,a2
1c0088e6:	01cd6d33          	or	s10,s10,t3
1c0088ea:	8fd9                	or	a5,a5,a4
1c0088ec:	5f3e                	lw	t5,236(sp)
1c0088ee:	d09e                	sw	t2,96(sp)
1c0088f0:	c776                	sw	t4,140(sp)
1c0088f2:	53de                	lw	t2,244(sp)
1c0088f4:	5ed2                	lw	t4,52(sp)
1c0088f6:	cb1a                	sw	t1,148(sp)
1c0088f8:	4362                	lw	t1,24(sp)
1c0088fa:	5402                	lw	s0,32(sp)
1c0088fc:	54ee                	lw	s1,248(sp)
1c0088fe:	5512                	lw	a0,36(sp)
1c008900:	c56e                	sw	s11,136(sp)
1c008902:	c966                	sw	s9,144(sp)
1c008904:	005fcdb3          	xor	s11,t6,t0
1c008908:	cf42                	sw	a6,156(sp)
1c00890a:	c152                	sw	s4,128(sp)
1c00890c:	c32e                	sw	a1,132(sp)
1c00890e:	d6da                	sw	s6,108(sp)
1c008910:	10412583          	lw	a1,260(sp)
1c008914:	df36                	sw	a3,188(sp)
1c008916:	c3ea                	sw	s10,196(sp)
1c008918:	c1be                	sw	a5,192(sp)
1c00891a:	5662                	lw	a2,56(sp)
1c00891c:	579a                	lw	a5,164(sp)
1c00891e:	10812683          	lw	a3,264(sp)
1c008922:	5722                	lw	a4,40(sp)
1c008924:	5832                	lw	a6,44(sp)
1c008926:	58aa                	lw	a7,168(sp)
1c008928:	12c12f83          	lw	t6,300(sp)
1c00892c:	12c12283          	lw	t0,300(sp)
1c008930:	01eeccb3          	xor	s9,t4,t5
1c008934:	007349b3          	xor	s3,t1,t2
1c008938:	4f06                	lw	t5,64(sp)
1c00893a:	43a6                	lw	t2,72(sp)
1c00893c:	5ec2                	lw	t4,48(sp)
1c00893e:	00d64bb3          	xor	s7,a2,a3
1c008942:	00f74c33          	xor	s8,a4,a5
1c008946:	01184b33          	xor	s6,a6,a7
1c00894a:	4636                	lw	a2,76(sp)
1c00894c:	47ae                	lw	a5,200(sp)
1c00894e:	483e                	lw	a6,204(sp)
1c008950:	5972                	lw	s2,60(sp)
1c008952:	5e3a                	lw	t3,172(sp)
1c008954:	000faf83          	lw	t6,0(t6)
1c008958:	0042a283          	lw	t0,4(t0)
1c00895c:	00944a33          	xor	s4,s0,s1
1c008960:	01eeceb3          	xor	t4,t4,t5
1c008964:	01a3d413          	srli	s0,t2,0x1a
1c008968:	4316                	lw	t1,68(sp)
1c00896a:	01c94d33          	xor	s10,s2,t3
1c00896e:	c0f6                	sw	t4,64(sp)
1c008970:	4962                	lw	s2,24(sp)
1c008972:	00e85e93          	srli	t4,a6,0xe
1c008976:	ca7e                	sw	t6,20(sp)
1c008978:	c816                	sw	t0,16(sp)
1c00897a:	01961f93          	slli	t6,a2,0x19
1c00897e:	c4a2                	sw	s0,72(sp)
1c008980:	00879293          	slli	t0,a5,0x8
1c008984:	00765413          	srli	s0,a2,0x7
1c008988:	0187d613          	srli	a2,a5,0x18
1c00898c:	01281793          	slli	a5,a6,0x12
1c008990:	585a                	lw	a6,180(sp)
1c008992:	01a35313          	srli	t1,t1,0x1a
1c008996:	00b54ab3          	xor	s5,a0,a1
1c00899a:	46c6                	lw	a3,80(sp)
1c00899c:	4756                	lw	a4,84(sp)
1c00899e:	58ca                	lw	a7,176(sp)
1c0089a0:	4596                	lw	a1,68(sp)
1c0089a2:	d31a                	sw	t1,164(sp)
1c0089a4:	01094333          	xor	t1,s2,a6
1c0089a8:	586a                	lw	a6,184(sp)
1c0089aa:	5902                	lw	s2,32(sp)
1c0089ac:	01969f13          	slli	t5,a3,0x19
1c0089b0:	00639493          	slli	s1,t2,0x6
1c0089b4:	00659513          	slli	a0,a1,0x6
1c0089b8:	01875393          	srli	t2,a4,0x18
1c0089bc:	0076d593          	srli	a1,a3,0x7
1c0089c0:	01289e13          	slli	t3,a7,0x12
1c0089c4:	00871693          	slli	a3,a4,0x8
1c0089c8:	00e8d713          	srli	a4,a7,0xe
1c0089cc:	010948b3          	xor	a7,s2,a6
1c0089d0:	591a                	lw	s2,164(sp)
1c0089d2:	01e46433          	or	s0,s0,t5
1c0089d6:	009964b3          	or	s1,s2,s1
1c0089da:	d526                	sw	s1,168(sp)
1c0089dc:	44a6                	lw	s1,72(sp)
1c0089de:	01f5e5b3          	or	a1,a1,t6
1c0089e2:	8d45                	or	a0,a0,s1
1c0089e4:	8e55                	or	a2,a2,a3
1c0089e6:	01ceee33          	or	t3,t4,t3
1c0089ea:	00f76fb3          	or	t6,a4,a5
1c0089ee:	569e                	lw	a3,228(sp)
1c0089f0:	11812783          	lw	a5,280(sp)
1c0089f4:	597e                	lw	s2,252(sp)
1c0089f6:	10012f03          	lw	t5,256(sp)
1c0089fa:	d32a                	sw	a0,164(sp)
1c0089fc:	5732                	lw	a4,44(sp)
1c0089fe:	5522                	lw	a0,40(sp)
1c008a00:	5872                	lw	a6,60(sp)
1c008a02:	5ec2                	lw	t4,48(sp)
1c008a04:	8d35                	xor	a0,a0,a3
1c008a06:	8f3d                	xor	a4,a4,a5
1c008a08:	01284833          	xor	a6,a6,s2
1c008a0c:	01eeceb3          	xor	t4,t4,t5
1c008a10:	0053e2b3          	or	t0,t2,t0
1c008a14:	5f46                	lw	t5,112(sp)
1c008a16:	44f2                	lw	s1,28(sp)
1c008a18:	c2aa                	sw	a0,68(sp)
1c008a1a:	c4ba                	sw	a4,72(sp)
1c008a1c:	12012503          	lw	a0,288(sp)
1c008a20:	12412703          	lw	a4,292(sp)
1c008a24:	c6c2                	sw	a6,76(sp)
1c008a26:	c8f6                	sw	t4,80(sp)
1c008a28:	13012803          	lw	a6,304(sp)
1c008a2c:	46e2                	lw	a3,24(sp)
1c008a2e:	5782                	lw	a5,32(sp)
1c008a30:	5e92                	lw	t4,36(sp)
1c008a32:	d716                	sw	t0,172(sp)
1c008a34:	10c12383          	lw	t2,268(sp)
1c008a38:	52d2                	lw	t0,52(sp)
1c008a3a:	8ca9                	xor	s1,s1,a0
1c008a3c:	8eb9                	xor	a3,a3,a4
1c008a3e:	0107c7b3          	xor	a5,a5,a6
1c008a42:	01eeceb3          	xor	t4,t4,t5
1c008a46:	0072c933          	xor	s2,t0,t2
1c008a4a:	ce26                	sw	s1,28(sp)
1c008a4c:	cab6                	sw	a3,84(sp)
1c008a4e:	c5be                	sw	a5,200(sp)
1c008a50:	d8f6                	sw	t4,112(sp)
1c008a52:	52e2                	lw	t0,56(sp)
1c008a54:	53d6                	lw	t2,116(sp)
1c008a56:	57f6                	lw	a5,124(sp)
1c008a58:	5806                	lw	a6,96(sp)
1c008a5a:	0072c2b3          	xor	t0,t0,t2
1c008a5e:	44e6                	lw	s1,88(sp)
1c008a60:	4576                	lw	a0,92(sp)
1c008a62:	56e6                	lw	a3,120(sp)
1c008a64:	da96                	sw	t0,116(sp)
1c008a66:	fff84813          	not	a6,a6
1c008a6a:	fff7c293          	not	t0,a5
1c008a6e:	47ea                	lw	a5,152(sp)
1c008a70:	fff4ce93          	not	t4,s1
1c008a74:	fff54f13          	not	t5,a0
1c008a78:	fff6c713          	not	a4,a3
1c008a7c:	cbc2                	sw	a6,212(sp)
1c008a7e:	5396                	lw	t2,100(sp)
1c008a80:	54a6                	lw	s1,104(sp)
1c008a82:	452a                	lw	a0,136(sp)
1c008a84:	46da                	lw	a3,148(sp)
1c008a86:	487a                	lw	a6,156(sp)
1c008a88:	fff7c793          	not	a5,a5
1c008a8c:	fff3c393          	not	t2,t2
1c008a90:	fff4c493          	not	s1,s1
1c008a94:	fff54513          	not	a0,a0
1c008a98:	fff6c693          	not	a3,a3
1c008a9c:	d7be                	sw	a5,236(sp)
1c008a9e:	fff84813          	not	a6,a6
1c008aa2:	57fa                	lw	a5,188(sp)
1c008aa4:	c79e                	sw	t2,204(sp)
1c008aa6:	d926                	sw	s1,176(sp)
1c008aa8:	d1aa                	sw	a0,224(sp)
1c008aaa:	d5b6                	sw	a3,232(sp)
1c008aac:	d9c2                	sw	a6,240(sp)
1c008aae:	538a                	lw	t2,160(sp)
1c008ab0:	448a                	lw	s1,128(sp)
1c008ab2:	451a                	lw	a0,132(sp)
1c008ab4:	56b6                	lw	a3,108(sp)
1c008ab6:	483a                	lw	a6,140(sp)
1c008ab8:	fff7c793          	not	a5,a5
1c008abc:	fff3c393          	not	t2,t2
1c008ac0:	fff4c493          	not	s1,s1
1c008ac4:	fff54513          	not	a0,a0
1c008ac8:	fff6c693          	not	a3,a3
1c008acc:	10f12223          	sw	a5,260(sp)
1c008ad0:	fff84813          	not	a6,a6
1c008ad4:	004a1793          	slli	a5,s4,0x4
1c008ad8:	dda6                	sw	s1,248(sp)
1c008ada:	dfaa                	sw	a0,252(sp)
1c008adc:	10d12023          	sw	a3,256(sp)
1c008ae0:	11012423          	sw	a6,264(sp)
1c008ae4:	db9e                	sw	t2,244(sp)
1c008ae6:	43ca                	lw	t2,144(sp)
1c008ae8:	d23e                	sw	a5,36(sp)
1c008aea:	4786                	lw	a5,64(sp)
1c008aec:	005cd693          	srli	a3,s9,0x5
1c008af0:	07e2                	slli	a5,a5,0x18
1c008af2:	d83e                	sw	a5,48(sp)
1c008af4:	4786                	lw	a5,64(sp)
1c008af6:	448e                	lw	s1,192(sp)
1c008af8:	cc36                	sw	a3,24(sp)
1c008afa:	451e                	lw	a0,196(sp)
1c008afc:	83a1                	srli	a5,a5,0x8
1c008afe:	da3e                	sw	a5,52(sp)
1c008b00:	016ad813          	srli	a6,s5,0x16
1c008b04:	47e2                	lw	a5,24(sp)
1c008b06:	fff3c393          	not	t2,t2
1c008b0a:	fff4c493          	not	s1,s1
1c008b0e:	d442                	sw	a6,40(sp)
1c008b10:	00fb1693          	slli	a3,s6,0xf
1c008b14:	10712623          	sw	t2,268(sp)
1c008b18:	12912023          	sw	s1,288(sp)
1c008b1c:	fff54513          	not	a0,a0
1c008b20:	01bd9493          	slli	s1,s11,0x1b
1c008b24:	01c9d393          	srli	t2,s3,0x1c
1c008b28:	00ab9813          	slli	a6,s7,0xa
1c008b2c:	0992                	slli	s3,s3,0x4
1c008b2e:	016bdb93          	srli	s7,s7,0x16
1c008b32:	01ca5a13          	srli	s4,s4,0x1c
1c008b36:	0aaa                	slli	s5,s5,0xa
1c008b38:	d636                	sw	a3,44(sp)
1c008b3a:	8cdd                	or	s1,s1,a5
1c008b3c:	0149ea33          	or	s4,s3,s4
1c008b40:	015beab3          	or	s5,s7,s5
1c008b44:	12a12223          	sw	a0,292(sp)
1c008b48:	011b5b13          	srli	s6,s6,0x11
1c008b4c:	011c5513          	srli	a0,s8,0x11
1c008b50:	0c3e                	slli	s8,s8,0xf
1c008b52:	57a2                	lw	a5,40(sp)
1c008b54:	59b2                	lw	s3,44(sp)
1c008b56:	018b6c33          	or	s8,s6,s8
1c008b5a:	d026                	sw	s1,32(sp)
1c008b5c:	dc52                	sw	s4,56(sp)
1c008b5e:	5492                	lw	s1,36(sp)
1c008b60:	5a42                	lw	s4,48(sp)
1c008b62:	d456                	sw	s5,40(sp)
1c008b64:	4b52                	lw	s6,20(sp)
1c008b66:	5ad2                	lw	s5,52(sp)
1c008b68:	005ddd93          	srli	s11,s11,0x5
1c008b6c:	008d5693          	srli	a3,s10,0x8
1c008b70:	4bc2                	lw	s7,16(sp)
1c008b72:	0cee                	slli	s9,s9,0x1b
1c008b74:	0d62                	slli	s10,s10,0x18
1c008b76:	019decb3          	or	s9,s11,s9
1c008b7a:	0074e3b3          	or	t2,s1,t2
1c008b7e:	01356533          	or	a0,a0,s3
1c008b82:	00da66b3          	or	a3,s4,a3
1c008b86:	015d6d33          	or	s10,s10,s5
1c008b8a:	006b4b33          	xor	s6,s6,t1
1c008b8e:	011bcbb3          	xor	s7,s7,a7
1c008b92:	cc66                	sw	s9,24(sp)
1c008b94:	d21e                	sw	t2,36(sp)
1c008b96:	de2a                	sw	a0,60(sp)
1c008b98:	d662                	sw	s8,44(sp)
1c008b9a:	d836                	sw	a3,48(sp)
1c008b9c:	da6a                	sw	s10,52(sp)
1c008b9e:	11612823          	sw	s6,272(sp)
1c008ba2:	11712a23          	sw	s7,276(sp)
1c008ba6:	5486                	lw	s1,96(sp)
1c008ba8:	5516                	lw	a0,100(sp)
1c008baa:	8f65                	and	a4,a4,s1
1c008bac:	46de                	lw	a3,212(sp)
1c008bae:	dd3a                	sw	a4,184(sp)
1c008bb0:	5726                	lw	a4,104(sp)
1c008bb2:	53f6                	lw	t2,124(sp)
1c008bb4:	00a2f2b3          	and	t0,t0,a0
1c008bb8:	8ef9                	and	a3,a3,a4
1c008bba:	0107e833          	or	a6,a5,a6
1c008bbe:	007f7f33          	and	t5,t5,t2
1c008bc2:	49aa                	lw	s3,136(sp)
1c008bc4:	5b2e                	lw	s6,232(sp)
1c008bc6:	4bfa                	lw	s7,156(sp)
1c008bc8:	438a                	lw	t2,128(sp)
1c008bca:	5736                	lw	a4,108(sp)
1c008bcc:	c996                	sw	t0,208(sp)
1c008bce:	cbb6                	sw	a3,212(sp)
1c008bd0:	52ce                	lw	t0,240(sp)
1c008bd2:	47be                	lw	a5,204(sp)
1c008bd4:	5a4a                	lw	s4,176(sp)
1c008bd6:	5a8e                	lw	s5,224(sp)
1c008bd8:	56ee                	lw	a3,248(sp)
1c008bda:	5d66                	lw	s10,120(sp)
1c008bdc:	0137f7b3          	and	a5,a5,s3
1c008be0:	006a7a33          	and	s4,s4,t1
1c008be4:	011afab3          	and	s5,s5,a7
1c008be8:	017b7b33          	and	s6,s6,s7
1c008bec:	0072f2b3          	and	t0,t0,t2
1c008bf0:	8ef9                	and	a3,a3,a4
1c008bf2:	fff8c893          	not	a7,a7
1c008bf6:	54de                	lw	s1,244(sp)
1c008bf8:	451a                	lw	a0,132(sp)
1c008bfa:	01aefeb3          	and	t4,t4,s10
1c008bfe:	db7a                	sw	t5,180(sp)
1c008c00:	5d3e                	lw	s10,236(sp)
1c008c02:	5f0a                	lw	t5,160(sp)
1c008c04:	d3be                	sw	a5,228(sp)
1c008c06:	11412c23          	sw	s4,280(sp)
1c008c0a:	11512e23          	sw	s5,284(sp)
1c008c0e:	d5da                	sw	s6,232(sp)
1c008c10:	d796                	sw	t0,236(sp)
1c008c12:	d9b6                	sw	a3,240(sp)
1c008c14:	57fe                	lw	a5,252(sp)
1c008c16:	13112823          	sw	a7,304(sp)
1c008c1a:	58fa                	lw	a7,188(sp)
1c008c1c:	10012983          	lw	s3,256(sp)
1c008c20:	4a3a                	lw	s4,140(sp)
1c008c22:	10412a83          	lw	s5,260(sp)
1c008c26:	4b4a                	lw	s6,144(sp)
1c008c28:	0149f9b3          	and	s3,s3,s4
1c008c2c:	01ed7cb3          	and	s9,s10,t5
1c008c30:	0117f7b3          	and	a5,a5,a7
1c008c34:	016afab3          	and	s5,s5,s6
1c008c38:	10812b83          	lw	s7,264(sp)
1c008c3c:	4d5a                	lw	s10,148(sp)
1c008c3e:	ddce                	sw	s3,248(sp)
1c008c40:	12012883          	lw	a7,288(sp)
1c008c44:	599a                	lw	s3,164(sp)
1c008c46:	12412a03          	lw	s4,292(sp)
1c008c4a:	dfd6                	sw	s5,252(sp)
1c008c4c:	5aaa                	lw	s5,168(sp)
1c008c4e:	01abfbb3          	and	s7,s7,s10
1c008c52:	10c12f03          	lw	t5,268(sp)
1c008c56:	42ea                	lw	t0,152(sp)
1c008c58:	0138f8b3          	and	a7,a7,s3
1c008c5c:	573a                	lw	a4,172(sp)
1c008c5e:	4d16                	lw	s10,68(sp)
1c008c60:	11712023          	sw	s7,256(sp)
1c008c64:	11112623          	sw	a7,268(sp)
1c008c68:	015a7bb3          	and	s7,s4,s5
1c008c6c:	48a6                	lw	a7,72(sp)
1c008c6e:	4a46                	lw	s4,80(sp)
1c008c70:	005f7f33          	and	t5,t5,t0
1c008c74:	4ab6                	lw	s5,76(sp)
1c008c76:	4b26                	lw	s6,72(sp)
1c008c78:	fff64693          	not	a3,a2
1c008c7c:	11e12223          	sw	t5,260(sp)
1c008c80:	002d5d13          	srli	s10,s10,0x2
1c008c84:	fff74f13          	not	t5,a4
1c008c88:	0028d893          	srli	a7,a7,0x2
1c008c8c:	4716                	lw	a4,68(sp)
1c008c8e:	0a5e                	slli	s4,s4,0x17
1c008c90:	dbbe                	sw	a5,244(sp)
1c008c92:	10d12423          	sw	a3,264(sp)
1c008c96:	c0ea                	sw	s10,64(sp)
1c008c98:	c2c6                	sw	a7,68(sp)
1c008c9a:	c4d2                	sw	s4,72(sp)
1c008c9c:	009ada93          	srli	s5,s5,0x9
1c008ca0:	00a4fc33          	and	s8,s1,a0
1c008ca4:	539a                	lw	t2,164(sp)
1c008ca6:	54aa                	lw	s1,168(sp)
1c008ca8:	01eb1993          	slli	s3,s6,0x1e
1c008cac:	c7d6                	sw	s5,204(sp)
1c008cae:	01e71b13          	slli	s6,a4,0x1e
1c008cb2:	4746                	lw	a4,80(sp)
1c008cb4:	4d36                	lw	s10,76(sp)
1c008cb6:	00975a93          	srli	s5,a4,0x9
1c008cba:	472e                	lw	a4,200(sp)
1c008cbc:	017d1a13          	slli	s4,s10,0x17
1c008cc0:	0726                	slli	a4,a4,0x9
1c008cc2:	c6ba                	sw	a4,76(sp)
1c008cc4:	4756                	lw	a4,84(sp)
1c008cc6:	4d72                	lw	s10,28(sp)
1c008cc8:	835d                	srli	a4,a4,0x17
1c008cca:	c8ba                	sw	a4,80(sp)
1c008ccc:	4756                	lw	a4,84(sp)
1c008cce:	01995d93          	srli	s11,s2,0x19
1c008cd2:	0726                	slli	a4,a4,0x9
1c008cd4:	caba                	sw	a4,84(sp)
1c008cd6:	472e                	lw	a4,200(sp)
1c008cd8:	007d1893          	slli	a7,s10,0x7
1c008cdc:	835d                	srli	a4,a4,0x17
1c008cde:	c5ba                	sw	a4,200(sp)
1c008ce0:	5746                	lw	a4,112(sp)
1c008ce2:	091e                	slli	s2,s2,0x7
1c008ce4:	8379                	srli	a4,a4,0x1e
1c008ce6:	d93a                	sw	a4,176(sp)
1c008ce8:	5756                	lw	a4,116(sp)
1c008cea:	019d5d13          	srli	s10,s10,0x19
1c008cee:	070a                	slli	a4,a4,0x2
1c008cf0:	cdba                	sw	a4,216(sp)
1c008cf2:	5756                	lw	a4,116(sp)
1c008cf4:	01a96d33          	or	s10,s2,s10
1c008cf8:	8379                	srli	a4,a4,0x1e
1c008cfa:	cfba                	sw	a4,220(sp)
1c008cfc:	5746                	lw	a4,112(sp)
1c008cfe:	4936                	lw	s2,76(sp)
1c008d00:	070a                	slli	a4,a4,0x2
1c008d02:	d1ba                	sw	a4,224(sp)
1c008d04:	4706                	lw	a4,64(sp)
1c008d06:	015a6ab3          	or	s5,s4,s5
1c008d0a:	00e9e9b3          	or	s3,s3,a4
1c008d0e:	ce4e                	sw	s3,28(sp)
1c008d10:	4996                	lw	s3,68(sp)
1c008d12:	473e                	lw	a4,204(sp)
1c008d14:	013b6b33          	or	s6,s6,s3
1c008d18:	d8da                	sw	s6,112(sp)
1c008d1a:	49c6                	lw	s3,80(sp)
1c008d1c:	4b26                	lw	s6,72(sp)
1c008d1e:	01396933          	or	s2,s2,s3
1c008d22:	00eb6b33          	or	s6,s6,a4
1c008d26:	dada                	sw	s6,116(sp)
1c008d28:	c2ea                	sw	s10,68(sp)
1c008d2a:	c4ca                	sw	s2,72(sp)
1c008d2c:	4a56                	lw	s4,84(sp)
1c008d2e:	c0d6                	sw	s5,64(sp)
1c008d30:	4aae                	lw	s5,200(sp)
1c008d32:	4d6e                	lw	s10,216(sp)
1c008d34:	5b4a                	lw	s6,176(sp)
1c008d36:	590e                	lw	s2,224(sp)
1c008d38:	11012983          	lw	s3,272(sp)
1c008d3c:	477e                	lw	a4,220(sp)
1c008d3e:	015a6a33          	or	s4,s4,s5
1c008d42:	01ab6b33          	or	s6,s6,s10
1c008d46:	01276733          	or	a4,a4,s2
1c008d4a:	01d9ceb3          	xor	t4,s3,t4
1c008d4e:	5ada                	lw	s5,180(sp)
1c008d50:	4d66                	lw	s10,88(sp)
1c008d52:	c6d2                	sw	s4,76(sp)
1c008d54:	cada                	sw	s6,84(sp)
1c008d56:	c8ba                	sw	a4,80(sp)
1c008d58:	c5f6                	sw	t4,200(sp)
1c008d5a:	4776                	lw	a4,92(sp)
1c008d5c:	11412a03          	lw	s4,276(sp)
1c008d60:	5b6a                	lw	s6,184(sp)
1c008d62:	4ece                	lw	t4,208(sp)
1c008d64:	015a4a33          	xor	s4,s4,s5
1c008d68:	01ab4b33          	xor	s6,s6,s10
1c008d6c:	00eeceb3          	xor	t4,t4,a4
1c008d70:	5af6                	lw	s5,124(sp)
1c008d72:	5d06                	lw	s10,96(sp)
1c008d74:	5716                	lw	a4,100(sp)
1c008d76:	59e6                	lw	s3,120(sp)
1c008d78:	c7d2                	sw	s4,204(sp)
1c008d7a:	d95a                	sw	s6,176(sp)
1c008d7c:	cdf6                	sw	t4,216(sp)
1c008d7e:	495e                	lw	s2,212(sp)
1c008d80:	5a1e                	lw	s4,228(sp)
1c008d82:	11812b03          	lw	s6,280(sp)
1c008d86:	11c12e83          	lw	t4,284(sp)
1c008d8a:	01394933          	xor	s2,s2,s3
1c008d8e:	015a4a33          	xor	s4,s4,s5
1c008d92:	01ab4b33          	xor	s6,s6,s10
1c008d96:	00eeceb3          	xor	t4,t4,a4
1c008d9a:	dcca                	sw	s2,120(sp)
1c008d9c:	ded2                	sw	s4,124(sp)
1c008d9e:	d0da                	sw	s6,96(sp)
1c008da0:	d2f6                	sw	t4,100(sp)
1c008da2:	592e                	lw	s2,232(sp)
1c008da4:	49ba                	lw	s3,140(sp)
1c008da6:	4b5a                	lw	s6,148(sp)
1c008da8:	5abe                	lw	s5,236(sp)
1c008daa:	4a4a                	lw	s4,144(sp)
1c008dac:	01394933          	xor	s2,s2,s3
1c008db0:	016acab3          	xor	s5,s5,s6
1c008db4:	477a                	lw	a4,156(sp)
1c008db6:	598a                	lw	s3,160(sp)
1c008db8:	014cccb3          	xor	s9,s9,s4
1c008dbc:	c74a                	sw	s2,140(sp)
1c008dbe:	cb56                	sw	s5,148(sp)
1c008dc0:	5ece                	lw	t4,240(sp)
1c008dc2:	4a8a                	lw	s5,128(sp)
1c008dc4:	595e                	lw	s2,244(sp)
1c008dc6:	5a6e                	lw	s4,248(sp)
1c008dc8:	4d6a                	lw	s10,152(sp)
1c008dca:	00eeceb3          	xor	t4,t4,a4
1c008dce:	01394933          	xor	s2,s2,s3
1c008dd2:	015a4a33          	xor	s4,s4,s5
1c008dd6:	5736                	lw	a4,108(sp)
1c008dd8:	59fa                	lw	s3,188(sp)
1c008dda:	01ac4c33          	xor	s8,s8,s10
1c008dde:	cf76                	sw	t4,156(sp)
1c008de0:	4d1a                	lw	s10,132(sp)
1c008de2:	d14a                	sw	s2,160(sp)
1c008de4:	c152                	sw	s4,128(sp)
1c008de6:	5b7e                	lw	s6,252(sp)
1c008de8:	10012e83          	lw	t4,256(sp)
1c008dec:	10412903          	lw	s2,260(sp)
1c008df0:	10c12a03          	lw	s4,268(sp)
1c008df4:	01ab4b33          	xor	s6,s6,s10
1c008df8:	00eeceb3          	xor	t4,t4,a4
1c008dfc:	01394933          	xor	s2,s2,s3
1c008e00:	01fa4a33          	xor	s4,s4,t6
1c008e04:	01cbcbb3          	xor	s7,s7,t3
1c008e08:	4ae6                	lw	s5,88(sp)
1c008e0a:	fffe4293          	not	t0,t3
1c008e0e:	c966                	sw	s9,144(sp)
1c008e10:	cd62                	sw	s8,152(sp)
1c008e12:	c35a                	sw	s6,132(sp)
1c008e14:	d6f6                	sw	t4,108(sp)
1c008e16:	13012b03          	lw	s6,304(sp)
1c008e1a:	df4a                	sw	s2,188(sp)
1c008e1c:	d1d2                	sw	s4,224(sp)
1c008e1e:	01cf7f33          	and	t5,t5,t3
1c008e22:	11712823          	sw	s7,272(sp)
1c008e26:	4bf6                	lw	s7,92(sp)
1c008e28:	499e                	lw	s3,196(sp)
1c008e2a:	5e32                	lw	t3,44(sp)
1c008e2c:	10812e83          	lw	t4,264(sp)
1c008e30:	017b7733          	and	a4,s6,s7
1c008e34:	5a12                	lw	s4,36(sp)
1c008e36:	0132f2b3          	and	t0,t0,s3
1c008e3a:	fffe4b93          	not	s7,t3
1c008e3e:	59d2                	lw	s3,52(sp)
1c008e40:	4e62                	lw	t3,24(sp)
1c008e42:	490e                	lw	s2,192(sp)
1c008e44:	5b22                	lw	s6,40(sp)
1c008e46:	ffffc693          	not	a3,t6
1c008e4a:	01feffb3          	and	t6,t4,t6
1c008e4e:	5ef2                	lw	t4,60(sp)
1c008e50:	01b8e8b3          	or	a7,a7,s11
1c008e54:	fff34313          	not	t1,t1
1c008e58:	fffa4d93          	not	s11,s4
1c008e5c:	fff9ca13          	not	s4,s3
1c008e60:	fffe4993          	not	s3,t3
1c008e64:	5e26                	lw	t3,104(sp)
1c008e66:	5d3a                	lw	s10,172(sp)
1c008e68:	01537333          	and	t1,t1,s5
1c008e6c:	0126f6b3          	and	a3,a3,s2
1c008e70:	5ae2                	lw	s5,56(sp)
1c008e72:	5942                	lw	s2,48(sp)
1c008e74:	fffb4c93          	not	s9,s6
1c008e78:	fffecb13          	not	s6,t4
1c008e7c:	5e82                	lw	t4,32(sp)
1c008e7e:	01c34333          	xor	t1,t1,t3
1c008e82:	fff3c793          	not	a5,t2
1c008e86:	fff4c393          	not	t2,s1
1c008e8a:	fff44493          	not	s1,s0
1c008e8e:	01a4f4b3          	and	s1,s1,s10
1c008e92:	cc9a                	sw	t1,88(sp)
1c008e94:	fffacd13          	not	s10,s5
1c008e98:	430e                	lw	t1,192(sp)
1c008e9a:	fff94a93          	not	s5,s2
1c008e9e:	fffec913          	not	s2,t4
1c008ea2:	4eaa                	lw	t4,136(sp)
1c008ea4:	8fed                	and	a5,a5,a1
1c008ea6:	01d74733          	xor	a4,a4,t4
1c008eaa:	0067c7b3          	xor	a5,a5,t1
1c008eae:	5e2a                	lw	t3,168(sp)
1c008eb0:	5eba                	lw	t4,172(sp)
1c008eb2:	fff5c513          	not	a0,a1
1c008eb6:	ceba                	sw	a4,92(sp)
1c008eb8:	d4be                	sw	a5,104(sp)
1c008eba:	471e                	lw	a4,196(sp)
1c008ebc:	579a                	lw	a5,164(sp)
1c008ebe:	0083f3b3          	and	t2,t2,s0
1c008ec2:	8d71                	and	a0,a0,a2
1c008ec4:	00e3c3b3          	xor	t2,t2,a4
1c008ec8:	8d3d                	xor	a0,a0,a5
1c008eca:	01c4c4b3          	xor	s1,s1,t3
1c008ece:	00bfcfb3          	xor	t6,t6,a1
1c008ed2:	008f4f33          	xor	t5,t5,s0
1c008ed6:	8eb1                	xor	a3,a3,a2
1c008ed8:	01d2c2b3          	xor	t0,t0,t4
1c008edc:	c51e                	sw	t2,136(sp)
1c008ede:	c1aa                	sw	a0,192(sp)
1c008ee0:	c3a6                	sw	s1,196(sp)
1c008ee2:	d57a                	sw	t5,168(sp)
1c008ee4:	cfb6                	sw	a3,220(sp)
1c008ee6:	5f22                	lw	t5,40(sp)
1c008ee8:	d716                	sw	t0,172(sp)
1c008eea:	d37e                	sw	t6,164(sp)
1c008eec:	5fb2                	lw	t6,44(sp)
1c008eee:	5342                	lw	t1,48(sp)
1c008ef0:	47a6                	lw	a5,72(sp)
1c008ef2:	52f2                	lw	t0,60(sp)
1c008ef4:	4462                	lw	s0,24(sp)
1c008ef6:	5482                	lw	s1,32(sp)
1c008ef8:	5656                	lw	a2,116(sp)
1c008efa:	4686                	lw	a3,64(sp)
1c008efc:	4716                	lw	a4,68(sp)
1c008efe:	fff84c13          	not	s8,a6
1c008f02:	01fcfcb3          	and	s9,s9,t6
1c008f06:	006bfbb3          	and	s7,s7,t1
1c008f0a:	fff7c793          	not	a5,a5
1c008f0e:	4e36                	lw	t3,76(sp)
1c008f10:	4ff2                	lw	t6,28(sp)
1c008f12:	5346                	lw	t1,112(sp)
1c008f14:	55e2                	lw	a1,56(sp)
1c008f16:	01edfdb3          	and	s11,s11,t5
1c008f1a:	005c7c33          	and	s8,s8,t0
1c008f1e:	4f56                	lw	t5,84(sp)
1c008f20:	008afab3          	and	s5,s5,s0
1c008f24:	009a7a33          	and	s4,s4,s1
1c008f28:	fff6c413          	not	s0,a3
1c008f2c:	fff64493          	not	s1,a2
1c008f30:	46ba                	lw	a3,140(sp)
1c008f32:	462e                	lw	a2,200(sp)
1c008f34:	fff74293          	not	t0,a4
1c008f38:	db3e                	sw	a5,180(sp)
1c008f3a:	473e                	lw	a4,204(sp)
1c008f3c:	47ca                	lw	a5,144(sp)
1c008f3e:	fffe4e13          	not	t3,t3
1c008f42:	ffffcf93          	not	t6,t6
1c008f46:	fff34313          	not	t1,t1
1c008f4a:	5512                	lw	a0,36(sp)
1c008f4c:	4ec6                	lw	t4,80(sp)
1c008f4e:	00b97933          	and	s2,s2,a1
1c008f52:	dd72                	sw	t3,184(sp)
1c008f54:	ffff4593          	not	a1,t5
1c008f58:	5e4a                	lw	t3,176(sp)
1c008f5a:	00f74f33          	xor	t5,a4,a5
1c008f5e:	d5fe                	sw	t6,232(sp)
1c008f60:	47fa                	lw	a5,156(sp)
1c008f62:	00d64fb3          	xor	t6,a2,a3
1c008f66:	d79a                	sw	t1,236(sp)
1c008f68:	466e                	lw	a2,216(sp)
1c008f6a:	435a                	lw	t1,148(sp)
1c008f6c:	46ea                	lw	a3,152(sp)
1c008f6e:	5766                	lw	a4,120(sp)
1c008f70:	53d2                	lw	t2,52(sp)
1c008f72:	00a9f9b3          	and	s3,s3,a0
1c008f76:	fffec513          	not	a0,t4
1c008f7a:	006e4eb3          	xor	t4,t3,t1
1c008f7e:	00d64e33          	xor	t3,a2,a3
1c008f82:	00f74333          	xor	t1,a4,a5
1c008f86:	56f6                	lw	a3,124(sp)
1c008f88:	570a                	lw	a4,160(sp)
1c008f8a:	5786                	lw	a5,96(sp)
1c008f8c:	00e6c633          	xor	a2,a3,a4
1c008f90:	470a                	lw	a4,128(sp)
1c008f92:	007b7b33          	and	s6,s6,t2
1c008f96:	00e7c6b3          	xor	a3,a5,a4
1c008f9a:	471a                	lw	a4,132(sp)
1c008f9c:	5796                	lw	a5,100(sp)
1c008f9e:	010b4b33          	xor	s6,s6,a6
1c008fa2:	8fb9                	xor	a5,a5,a4
1c008fa4:	c9be                	sw	a5,208(sp)
1c008fa6:	570e                	lw	a4,224(sp)
1c008fa8:	57b6                	lw	a5,108(sp)
1c008faa:	010d7d33          	and	s10,s10,a6
1c008fae:	8fb9                	xor	a5,a5,a4
1c008fb0:	cbbe                	sw	a5,212(sp)
1c008fb2:	11012703          	lw	a4,272(sp)
1c008fb6:	57fa                	lw	a5,188(sp)
1c008fb8:	5872                	lw	a6,60(sp)
1c008fba:	8fb9                	xor	a5,a5,a4
1c008fbc:	d3be                	sw	a5,228(sp)
1c008fbe:	47e2                	lw	a5,24(sp)
1c008fc0:	5702                	lw	a4,32(sp)
1c008fc2:	00fdcdb3          	xor	s11,s11,a5
1c008fc6:	5792                	lw	a5,36(sp)
1c008fc8:	00ed4d33          	xor	s10,s10,a4
1c008fcc:	010a4a33          	xor	s4,s4,a6
1c008fd0:	00fcccb3          	xor	s9,s9,a5
1c008fd4:	5722                	lw	a4,40(sp)
1c008fd6:	57b2                	lw	a5,44(sp)
1c008fd8:	d06a                	sw	s10,32(sp)
1c008fda:	11612a23          	sw	s6,276(sp)
1c008fde:	5d62                	lw	s10,56(sp)
1c008fe0:	5b52                	lw	s6,52(sp)
1c008fe2:	d652                	sw	s4,44(sp)
1c008fe4:	5a42                	lw	s4,48(sp)
1c008fe6:	01ac4c33          	xor	s8,s8,s10
1c008fea:	00ebcbb3          	xor	s7,s7,a4
1c008fee:	0149c9b3          	xor	s3,s3,s4
1c008ff2:	01694933          	xor	s2,s2,s6
1c008ff6:	00facab3          	xor	s5,s5,a5
1c008ffa:	4d26                	lw	s10,72(sp)
1c008ffc:	cc6e                	sw	s11,24(sp)
1c008ffe:	d266                	sw	s9,36(sp)
1c009000:	dc62                	sw	s8,56(sp)
1c009002:	d45e                	sw	s7,40(sp)
1c009004:	de4e                	sw	s3,60(sp)
1c009006:	4b96                	lw	s7,68(sp)
1c009008:	d84a                	sw	s2,48(sp)
1c00900a:	4736                	lw	a4,76(sp)
1c00900c:	57da                	lw	a5,180(sp)
1c00900e:	4846                	lw	a6,80(sp)
1c009010:	596a                	lw	s2,184(sp)
1c009012:	49d6                	lw	s3,84(sp)
1c009014:	fff8c393          	not	t2,a7
1c009018:	4a72                	lw	s4,28(sp)
1c00901a:	5b46                	lw	s6,112(sp)
1c00901c:	0107fdb3          	and	s11,a5,a6
1c009020:	01747433          	and	s0,s0,s7
1c009024:	57d6                	lw	a5,116(sp)
1c009026:	5bae                	lw	s7,232(sp)
1c009028:	583e                	lw	a6,236(sp)
1c00902a:	01a3f3b3          	and	t2,t2,s10
1c00902e:	01397d33          	and	s10,s2,s3
1c009032:	4906                	lw	s2,64(sp)
1c009034:	59a6                	lw	s3,104(sp)
1c009036:	00e2f2b3          	and	t0,t0,a4
1c00903a:	01457533          	and	a0,a0,s4
1c00903e:	00fbf733          	and	a4,s7,a5
1c009042:	4a2a                	lw	s4,136(sp)
1c009044:	012877b3          	and	a5,a6,s2
1c009048:	4b9e                	lw	s7,196(sp)
1c00904a:	581a                	lw	a6,164(sp)
1c00904c:	0165f5b3          	and	a1,a1,s6
1c009050:	4b0e                	lw	s6,192(sp)
1c009052:	592a                	lw	s2,168(sp)
1c009054:	013fcfb3          	xor	t6,t6,s3
1c009058:	014f4f33          	xor	t5,t5,s4
1c00905c:	49fe                	lw	s3,220(sp)
1c00905e:	4a4e                	lw	s4,208(sp)
1c009060:	016eceb3          	xor	t4,t4,s6
1c009064:	017e4e33          	xor	t3,t3,s7
1c009068:	5b3a                	lw	s6,172(sp)
1c00906a:	4bde                	lw	s7,212(sp)
1c00906c:	01034333          	xor	t1,t1,a6
1c009070:	4866                	lw	a6,88(sp)
1c009072:	01264633          	xor	a2,a2,s2
1c009076:	0136c6b3          	xor	a3,a3,s3
1c00907a:	591e                	lw	s2,228(sp)
1c00907c:	016a49b3          	xor	s3,s4,s6
1c009080:	010bca33          	xor	s4,s7,a6
1c009084:	4bf6                	lw	s7,92(sp)
1c009086:	4872                	lw	a6,28(sp)
1c009088:	01794b33          	xor	s6,s2,s7
1c00908c:	5bd6                	lw	s7,116(sp)
1c00908e:	5946                	lw	s2,112(sp)
1c009090:	0173c3b3          	xor	t2,t2,s7
1c009094:	d89e                	sw	t2,112(sp)
1c009096:	4386                	lw	t2,64(sp)
1c009098:	0114f4b3          	and	s1,s1,a7
1c00909c:	0104c4b3          	xor	s1,s1,a6
1c0090a0:	01244433          	xor	s0,s0,s2
1c0090a4:	0072c2b3          	xor	t0,t0,t2
1c0090a8:	da26                	sw	s1,52(sp)
1c0090aa:	da96                	sw	t0,116(sp)
1c0090ac:	ce22                	sw	s0,28(sp)
1c0090ae:	4416                	lw	s0,68(sp)
1c0090b0:	44a6                	lw	s1,72(sp)
1c0090b2:	008d4d33          	xor	s10,s10,s0
1c0090b6:	8d25                	xor	a0,a0,s1
1c0090b8:	c0aa                	sw	a0,64(sp)
1c0090ba:	4536                	lw	a0,76(sp)
1c0090bc:	5802                	lw	a6,32(sp)
1c0090be:	8da9                	xor	a1,a1,a0
1c0090c0:	c2ae                	sw	a1,68(sp)
1c0090c2:	45c6                	lw	a1,80(sp)
1c0090c4:	d9ea                	sw	s10,240(sp)
1c0090c6:	00b74933          	xor	s2,a4,a1
1c0090ca:	4756                	lw	a4,84(sp)
1c0090cc:	5ba2                	lw	s7,40(sp)
1c0090ce:	00e7ccb3          	xor	s9,a5,a4
1c0090d2:	47e2                	lw	a5,24(sp)
1c0090d4:	11412d03          	lw	s10,276(sp)
1c0090d8:	011dcdb3          	xor	s11,s11,a7
1c0090dc:	52b2                	lw	t0,44(sp)
1c0090de:	5892                	lw	a7,36(sp)
1c0090e0:	5472                	lw	s0,60(sp)
1c0090e2:	54c2                	lw	s1,48(sp)
1c0090e4:	00ffcfb3          	xor	t6,t6,a5
1c0090e8:	010f4f33          	xor	t5,t5,a6
1c0090ec:	57d6                	lw	a5,116(sp)
1c0090ee:	584e                	lw	a6,240(sp)
1c0090f0:	01a64633          	xor	a2,a2,s10
1c0090f4:	5552                	lw	a0,52(sp)
1c0090f6:	5746                	lw	a4,112(sp)
1c0090f8:	018e4e33          	xor	t3,t3,s8
1c0090fc:	01734333          	xor	t1,t1,s7
1c009100:	4b96                	lw	s7,68(sp)
1c009102:	00fe4e33          	xor	t3,t3,a5
1c009106:	008a43b3          	xor	t2,s4,s0
1c00910a:	45f2                	lw	a1,28(sp)
1c00910c:	011eceb3          	xor	t4,t4,a7
1c009110:	0059c9b3          	xor	s3,s3,t0
1c009114:	4886                	lw	a7,64(sp)
1c009116:	009b42b3          	xor	t0,s6,s1
1c00911a:	01064b33          	xor	s6,a2,a6
1c00911e:	00afcfb3          	xor	t6,t6,a0
1c009122:	00eeceb3          	xor	t4,t4,a4
1c009126:	01b34333          	xor	t1,t1,s11
1c00912a:	0179c9b3          	xor	s3,s3,s7
1c00912e:	0123c3b3          	xor	t2,t2,s2
1c009132:	0192c2b3          	xor	t0,t0,s9
1c009136:	0156c6b3          	xor	a3,a3,s5
1c00913a:	01fe5493          	srli	s1,t3,0x1f
1c00913e:	001b1613          	slli	a2,s6,0x1
1c009142:	00bf4f33          	xor	t5,t5,a1
1c009146:	0116ca33          	xor	s4,a3,a7
1c00914a:	001e9513          	slli	a0,t4,0x1
1c00914e:	01f35593          	srli	a1,t1,0x1f
1c009152:	01fb5693          	srli	a3,s6,0x1f
1c009156:	01f9d713          	srli	a4,s3,0x1f
1c00915a:	01f3d793          	srli	a5,t2,0x1f
1c00915e:	d3a6                	sw	s1,228(sp)
1c009160:	c8b2                	sw	a2,80(sp)
1c009162:	01f2d493          	srli	s1,t0,0x1f
1c009166:	01ffd613          	srli	a2,t6,0x1f
1c00916a:	001e1d13          	slli	s10,t3,0x1
1c00916e:	01fed413          	srli	s0,t4,0x1f
1c009172:	c6aa                	sw	a0,76(sp)
1c009174:	d5ae                	sw	a1,232(sp)
1c009176:	d7b6                	sw	a3,236(sp)
1c009178:	caba                	sw	a4,84(sp)
1c00917a:	db3e                	sw	a5,180(sp)
1c00917c:	01ff5713          	srli	a4,t5,0x1f
1c009180:	dd26                	sw	s1,184(sp)
1c009182:	c9b2                	sw	a2,208(sp)
1c009184:	cbba                	sw	a4,212(sp)
1c009186:	01a46433          	or	s0,s0,s10
1c00918a:	579e                	lw	a5,228(sp)
1c00918c:	4d36                	lw	s10,76(sp)
1c00918e:	572e                	lw	a4,232(sp)
1c009190:	01a7e4b3          	or	s1,a5,s10
1c009194:	4d46                	lw	s10,80(sp)
1c009196:	00131c13          	slli	s8,t1,0x1
1c00919a:	01a767b3          	or	a5,a4,s10
1c00919e:	5d3e                	lw	s10,236(sp)
1c0091a0:	01fa5b93          	srli	s7,s4,0x1f
1c0091a4:	00199813          	slli	a6,s3,0x1
1c0091a8:	018d6733          	or	a4,s10,s8
1c0091ac:	010be833          	or	a6,s7,a6
1c0091b0:	5d5a                	lw	s10,180(sp)
1c0091b2:	4bd6                	lw	s7,84(sp)
1c0091b4:	001a1893          	slli	a7,s4,0x1
1c0091b8:	00129593          	slli	a1,t0,0x1
1c0091bc:	011be8b3          	or	a7,s7,a7
1c0091c0:	00bd65b3          	or	a1,s10,a1
1c0091c4:	5bea                	lw	s7,184(sp)
1c0091c6:	4d4e                	lw	s10,208(sp)
1c0091c8:	00139513          	slli	a0,t2,0x1
1c0091cc:	001f1693          	slli	a3,t5,0x1
1c0091d0:	00dd66b3          	or	a3,s10,a3
1c0091d4:	00abe533          	or	a0,s7,a0
1c0091d8:	4d5a                	lw	s10,148(sp)
1c0091da:	4bde                	lw	s7,212(sp)
1c0091dc:	005442b3          	xor	t0,s0,t0
1c0091e0:	01f74733          	xor	a4,a4,t6
1c0091e4:	542a                	lw	s0,168(sp)
1c0091e6:	001f9613          	slli	a2,t6,0x1
1c0091ea:	01d8c8b3          	xor	a7,a7,t4
1c0091ee:	01c84833          	xor	a6,a6,t3
1c0091f2:	00654533          	xor	a0,a0,t1
1c0091f6:	4e6a                	lw	t3,152(sp)
1c0091f8:	00ed4333          	xor	t1,s10,a4
1c0091fc:	5e9a                	lw	t4,164(sp)
1c0091fe:	5d7a                	lw	s10,188(sp)
1c009200:	00cbe633          	or	a2,s7,a2
1c009204:	0136cbb3          	xor	s7,a3,s3
1c009208:	5686                	lw	a3,96(sp)
1c00920a:	0074c3b3          	xor	t2,s1,t2
1c00920e:	01e7c7b3          	xor	a5,a5,t5
1c009212:	01464633          	xor	a2,a2,s4
1c009216:	01044f33          	xor	t5,s0,a6
1c00921a:	54b2                	lw	s1,44(sp)
1c00921c:	5426                	lw	s0,104(sp)
1c00921e:	0165c5b3          	xor	a1,a1,s6
1c009222:	00fe4c33          	xor	s8,t3,a5
1c009226:	011ecfb3          	xor	t6,t4,a7
1c00922a:	00c94e33          	xor	t3,s2,a2
1c00922e:	00a6ceb3          	xor	t4,a3,a0
1c009232:	5916                	lw	s2,100(sp)
1c009234:	017d46b3          	xor	a3,s10,s7
1c009238:	5b36                	lw	s6,108(sp)
1c00923a:	4d2a                	lw	s10,136(sp)
1c00923c:	00b4ca33          	xor	s4,s1,a1
1c009240:	007444b3          	xor	s1,s0,t2
1c009244:	5412                	lw	s0,36(sp)
1c009246:	00b949b3          	xor	s3,s2,a1
1c00924a:	00cb4933          	xor	s2,s6,a2
1c00924e:	005d4b33          	xor	s6,s10,t0
1c009252:	5d62                	lw	s10,56(sp)
1c009254:	8c39                	xor	s0,s0,a4
1c009256:	d222                	sw	s0,36(sp)
1c009258:	00fd4433          	xor	s0,s10,a5
1c00925c:	5d4e                	lw	s10,240(sp)
1c00925e:	011dcdb3          	xor	s11,s11,a7
1c009262:	010d4d33          	xor	s10,s10,a6
1c009266:	db6a                	sw	s10,180(sp)
1c009268:	5d4a                	lw	s10,176(sp)
1c00926a:	00aacab3          	xor	s5,s5,a0
1c00926e:	00ed4d33          	xor	s10,s10,a4
1c009272:	dc6a                	sw	s10,56(sp)
1c009274:	4d6e                	lw	s10,216(sp)
1c009276:	017cccb3          	xor	s9,s9,s7
1c00927a:	00fd4d33          	xor	s10,s10,a5
1c00927e:	d66a                	sw	s10,44(sp)
1c009280:	4d7a                	lw	s10,156(sp)
1c009282:	011d4d33          	xor	s10,s10,a7
1c009286:	d0ea                	sw	s10,96(sp)
1c009288:	5d0a                	lw	s10,160(sp)
1c00928a:	010d4d33          	xor	s10,s10,a6
1c00928e:	d2ea                	sw	s10,100(sp)
1c009290:	4d7e                	lw	s10,220(sp)
1c009292:	00ad4d33          	xor	s10,s10,a0
1c009296:	d4ea                	sw	s10,104(sp)
1c009298:	5d3a                	lw	s10,172(sp)
1c00929a:	00bd4d33          	xor	s10,s10,a1
1c00929e:	c56a                	sw	s10,136(sp)
1c0092a0:	5d72                	lw	s10,60(sp)
1c0092a2:	00cd4d33          	xor	s10,s10,a2
1c0092a6:	de6a                	sw	s10,60(sp)
1c0092a8:	5d42                	lw	s10,48(sp)
1c0092aa:	017d4d33          	xor	s10,s10,s7
1c0092ae:	d86a                	sw	s10,48(sp)
1c0092b0:	5d52                	lw	s10,52(sp)
1c0092b2:	007d4d33          	xor	s10,s10,t2
1c0092b6:	da6a                	sw	s10,52(sp)
1c0092b8:	4d72                	lw	s10,28(sp)
1c0092ba:	005d4d33          	xor	s10,s10,t0
1c0092be:	ce6a                	sw	s10,28(sp)
1c0092c0:	4d66                	lw	s10,88(sp)
1c0092c2:	00cd4d33          	xor	s10,s10,a2
1c0092c6:	ccea                	sw	s10,88(sp)
1c0092c8:	4d76                	lw	s10,92(sp)
1c0092ca:	017d4d33          	xor	s10,s10,s7
1c0092ce:	ceea                	sw	s10,92(sp)
1c0092d0:	4d3a                	lw	s10,140(sp)
1c0092d2:	007d4d33          	xor	s10,s10,t2
1c0092d6:	c76a                	sw	s10,140(sp)
1c0092d8:	4d4a                	lw	s10,144(sp)
1c0092da:	005d4d33          	xor	s10,s10,t0
1c0092de:	c96a                	sw	s10,144(sp)
1c0092e0:	4d0e                	lw	s10,192(sp)
1c0092e2:	00ed4d33          	xor	s10,s10,a4
1c0092e6:	cb6a                	sw	s10,148(sp)
1c0092e8:	4d1e                	lw	s10,196(sp)
1c0092ea:	00fd4d33          	xor	s10,s10,a5
1c0092ee:	cd6a                	sw	s10,152(sp)
1c0092f0:	5d22                	lw	s10,40(sp)
1c0092f2:	011d4d33          	xor	s10,s10,a7
1c0092f6:	d46a                	sw	s10,40(sp)
1c0092f8:	11412d03          	lw	s10,276(sp)
1c0092fc:	010d4d33          	xor	s10,s10,a6
1c009300:	cf6a                	sw	s10,156(sp)
1c009302:	4d06                	lw	s10,64(sp)
1c009304:	00ad4d33          	xor	s10,s10,a0
1c009308:	d16a                	sw	s10,160(sp)
1c00930a:	4d16                	lw	s10,68(sp)
1c00930c:	00bd4d33          	xor	s10,s10,a1
1c009310:	d6ea                	sw	s10,108(sp)
1c009312:	5d66                	lw	s10,120(sp)
1c009314:	011d48b3          	xor	a7,s10,a7
1c009318:	5d76                	lw	s10,124(sp)
1c00931a:	010d4833          	xor	a6,s10,a6
1c00931e:	4d0a                	lw	s10,128(sp)
1c009320:	00ad4533          	xor	a0,s10,a0
1c009324:	4d1a                	lw	s10,132(sp)
1c009326:	00bd45b3          	xor	a1,s10,a1
1c00932a:	5d0e                	lw	s10,224(sp)
1c00932c:	00cd4633          	xor	a2,s10,a2
1c009330:	11012d03          	lw	s10,272(sp)
1c009334:	017d4bb3          	xor	s7,s10,s7
1c009338:	4d62                	lw	s10,24(sp)
1c00933a:	007d4d33          	xor	s10,s10,t2
1c00933e:	cc6a                	sw	s10,24(sp)
1c009340:	5d02                	lw	s10,32(sp)
1c009342:	005d4d33          	xor	s10,s10,t0
1c009346:	d06a                	sw	s10,32(sp)
1c009348:	5d46                	lw	s10,112(sp)
1c00934a:	00ed4733          	xor	a4,s10,a4
1c00934e:	5d56                	lw	s10,116(sp)
1c009350:	00fd47b3          	xor	a5,s10,a5
1c009354:	00cc1d13          	slli	s10,s8,0xc
1c009358:	dcea                	sw	s10,120(sp)
1c00935a:	01435d13          	srli	s10,t1,0x14
1c00935e:	deea                	sw	s10,124(sp)
1c009360:	0332                	slli	t1,t1,0xc
1c009362:	015fdd13          	srli	s10,t6,0x15
1c009366:	c21a                	sw	t1,4(sp)
1c009368:	c36a                	sw	s10,132(sp)
1c00936a:	00bf1313          	slli	t1,t5,0xb
1c00936e:	012e5d13          	srli	s10,t3,0x12
1c009372:	0fae                	slli	t6,t6,0xb
1c009374:	c11a                	sw	t1,128(sp)
1c009376:	df7e                	sw	t6,188(sp)
1c009378:	015a1313          	slli	t1,s4,0x15
1c00937c:	00badf93          	srli	t6,s5,0xb
1c009380:	d36a                	sw	s10,164(sp)
1c009382:	01c99d13          	slli	s10,s3,0x1c
1c009386:	c1fe                	sw	t6,192(sp)
1c009388:	c39a                	sw	t1,196(sp)
1c00938a:	00ec9f93          	slli	t6,s9,0xe
1c00938e:	004ed313          	srli	t1,t4,0x4
1c009392:	d8ea                	sw	s10,112(sp)
1c009394:	01d4dd13          	srli	s10,s1,0x1d
1c009398:	d57e                	sw	t6,168(sp)
1c00939a:	d71a                	sw	t1,172(sp)
1c00939c:	00c95f93          	srli	t6,s2,0xc
1c0093a0:	01469313          	slli	t1,a3,0x14
1c0093a4:	c2ea                	sw	s10,68(sp)
1c0093a6:	5d12                	lw	s10,36(sp)
1c0093a8:	dafe                	sw	t6,116(sp)
1c0093aa:	c09a                	sw	t1,64(sp)
1c0093ac:	003b1f93          	slli	t6,s6,0x3
1c0093b0:	00d41313          	slli	t1,s0,0xd
1c0093b4:	c4fe                	sw	t6,72(sp)
1c0093b6:	c69a                	sw	t1,76(sp)
1c0093b8:	013d5d13          	srli	s10,s10,0x13
1c0093bc:	c8ea                	sw	s10,80(sp)
1c0093be:	535a                	lw	t1,180(sp)
1c0093c0:	5f92                	lw	t6,36(sp)
1c0093c2:	0376                	slli	t1,t1,0x1d
1c0093c4:	0fb6                	slli	t6,t6,0xd
1c0093c6:	d91a                	sw	t1,176(sp)
1c0093c8:	5362                	lw	t1,56(sp)
1c0093ca:	cafe                	sw	t6,84(sp)
1c0093cc:	5fda                	lw	t6,180(sp)
1c0093ce:	003ddd13          	srli	s10,s11,0x3
1c0093d2:	01f35313          	srli	t1,t1,0x1f
1c0093d6:	cdea                	sw	s10,216(sp)
1c0093d8:	cf9a                	sw	t1,220(sp)
1c0093da:	003fdd13          	srli	s10,t6,0x3
1c0093de:	5332                	lw	t1,44(sp)
1c0093e0:	5fb2                	lw	t6,44(sp)
1c0093e2:	01f35313          	srli	t1,t1,0x1f
1c0093e6:	0f86                	slli	t6,t6,0x1
1c0093e8:	d1fe                	sw	t6,224(sp)
1c0093ea:	10612823          	sw	t1,272(sp)
1c0093ee:	5fe2                	lw	t6,56(sp)
1c0093f0:	5306                	lw	t1,96(sp)
1c0093f2:	0f86                	slli	t6,t6,0x1
1c0093f4:	01a35313          	srli	t1,t1,0x1a
1c0093f8:	11f12a23          	sw	t6,276(sp)
1c0093fc:	db1a                	sw	t1,180(sp)
1c0093fe:	5f96                	lw	t6,100(sp)
1c009400:	5316                	lw	t1,100(sp)
1c009402:	0f9a                	slli	t6,t6,0x6
1c009404:	01a35313          	srli	t1,t1,0x1a
1c009408:	dd7e                	sw	t6,184(sp)
1c00940a:	c99a                	sw	t1,208(sp)
1c00940c:	5f86                	lw	t6,96(sp)
1c00940e:	5326                	lw	t1,104(sp)
1c009410:	0f9a                	slli	t6,t6,0x6
1c009412:	00735313          	srli	t1,t1,0x7
1c009416:	cbfe                	sw	t6,212(sp)
1c009418:	d39a                	sw	t1,228(sp)
1c00941a:	4faa                	lw	t6,136(sp)
1c00941c:	432a                	lw	t1,136(sp)
1c00941e:	0fe6                	slli	t6,t6,0x19
1c009420:	00735313          	srli	t1,t1,0x7
1c009424:	11f12c23          	sw	t6,280(sp)
1c009428:	10612e23          	sw	t1,284(sp)
1c00942c:	5fa6                	lw	t6,104(sp)
1c00942e:	5372                	lw	t1,60(sp)
1c009430:	0fe6                	slli	t6,t6,0x19
1c009432:	01835313          	srli	t1,t1,0x18
1c009436:	d79a                	sw	t1,236(sp)
1c009438:	d5fe                	sw	t6,232(sp)
1c00943a:	5fc2                	lw	t6,48(sp)
1c00943c:	5342                	lw	t1,48(sp)
1c00943e:	0fa2                	slli	t6,t6,0x8
1c009440:	01835313          	srli	t1,t1,0x18
1c009444:	d9fe                	sw	t6,240(sp)
1c009446:	db9a                	sw	t1,244(sp)
1c009448:	5ff2                	lw	t6,60(sp)
1c00944a:	5352                	lw	t1,52(sp)
1c00944c:	0fa2                	slli	t6,t6,0x8
1c00944e:	00e35313          	srli	t1,t1,0xe
1c009452:	ddfe                	sw	t6,248(sp)
1c009454:	df9a                	sw	t1,252(sp)
1c009456:	4ff2                	lw	t6,28(sp)
1c009458:	4372                	lw	t1,28(sp)
1c00945a:	0fca                	slli	t6,t6,0x12
1c00945c:	00e35313          	srli	t1,t1,0xe
1c009460:	11f12023          	sw	t6,256(sp)
1c009464:	10612223          	sw	t1,260(sp)
1c009468:	5fd2                	lw	t6,52(sp)
1c00946a:	4366                	lw	t1,88(sp)
1c00946c:	0fca                	slli	t6,t6,0x12
1c00946e:	00535313          	srli	t1,t1,0x5
1c009472:	11f12423          	sw	t6,264(sp)
1c009476:	10612623          	sw	t1,268(sp)
1c00947a:	4ff6                	lw	t6,92(sp)
1c00947c:	4376                	lw	t1,92(sp)
1c00947e:	0fee                	slli	t6,t6,0x1b
1c009480:	00535313          	srli	t1,t1,0x5
1c009484:	13f12023          	sw	t6,288(sp)
1c009488:	12612223          	sw	t1,292(sp)
1c00948c:	4fe6                	lw	t6,88(sp)
1c00948e:	434a                	lw	t1,144(sp)
1c009490:	0fee                	slli	t6,t6,0x1b
1c009492:	0312                	slli	t1,t1,0x4
1c009494:	13f12823          	sw	t6,304(sp)
1c009498:	14612e23          	sw	t1,348(sp)
1c00949c:	4fba                	lw	t6,140(sp)
1c00949e:	433a                	lw	t1,140(sp)
1c0094a0:	01cfdf93          	srli	t6,t6,0x1c
1c0094a4:	0312                	slli	t1,t1,0x4
1c0094a6:	17f12023          	sw	t6,352(sp)
1c0094aa:	16612223          	sw	t1,356(sp)
1c0094ae:	4fca                	lw	t6,144(sp)
1c0094b0:	435a                	lw	t1,148(sp)
1c0094b2:	01cfdf93          	srli	t6,t6,0x1c
1c0094b6:	01635313          	srli	t1,t1,0x16
1c0094ba:	16612623          	sw	t1,364(sp)
1c0094be:	17f12423          	sw	t6,360(sp)
1c0094c2:	4fea                	lw	t6,152(sp)
1c0094c4:	436a                	lw	t1,152(sp)
1c0094c6:	0faa                	slli	t6,t6,0xa
1c0094c8:	17f12823          	sw	t6,368(sp)
1c0094cc:	01635313          	srli	t1,t1,0x16
1c0094d0:	4fda                	lw	t6,148(sp)
1c0094d2:	16612a23          	sw	t1,372(sp)
1c0094d6:	5322                	lw	t1,40(sp)
1c0094d8:	0faa                	slli	t6,t6,0xa
1c0094da:	17f12c23          	sw	t6,376(sp)
1c0094de:	01135313          	srli	t1,t1,0x11
1c0094e2:	4ffa                	lw	t6,156(sp)
1c0094e4:	12612a23          	sw	t1,308(sp)
1c0094e8:	437a                	lw	t1,156(sp)
1c0094ea:	0fbe                	slli	t6,t6,0xf
1c0094ec:	13f12c23          	sw	t6,312(sp)
1c0094f0:	01135313          	srli	t1,t1,0x11
1c0094f4:	5fa2                	lw	t6,40(sp)
1c0094f6:	12612e23          	sw	t1,316(sp)
1c0094fa:	5336                	lw	t1,108(sp)
1c0094fc:	0fbe                	slli	t6,t6,0xf
1c0094fe:	15f12023          	sw	t6,320(sp)
1c009502:	0362                	slli	t1,t1,0x18
1c009504:	5f8a                	lw	t6,160(sp)
1c009506:	14612223          	sw	t1,324(sp)
1c00950a:	530a                	lw	t1,160(sp)
1c00950c:	008fdf93          	srli	t6,t6,0x8
1c009510:	15f12423          	sw	t6,328(sp)
1c009514:	0362                	slli	t1,t1,0x18
1c009516:	5fb6                	lw	t6,108(sp)
1c009518:	14612623          	sw	t1,332(sp)
1c00951c:	01e81313          	slli	t1,a6,0x1e
1c009520:	008fdf93          	srli	t6,t6,0x8
1c009524:	14612a23          	sw	t1,340(sp)
1c009528:	01759313          	slli	t1,a1,0x17
1c00952c:	15f12823          	sw	t6,336(sp)
1c009530:	16612e23          	sw	t1,380(sp)
1c009534:	0028df93          	srli	t6,a7,0x2
1c009538:	007b9313          	slli	t1,s7,0x7
1c00953c:	15f12c23          	sw	t6,344(sp)
1c009540:	18612223          	sw	t1,388(sp)
1c009544:	00955f93          	srli	t6,a0,0x9
1c009548:	5302                	lw	t1,32(sp)
1c00954a:	19f12023          	sw	t6,384(sp)
1c00954e:	01965f93          	srli	t6,a2,0x19
1c009552:	19f12423          	sw	t6,392(sp)
1c009556:	00931f93          	slli	t6,t1,0x9
1c00955a:	4362                	lw	t1,24(sp)
1c00955c:	014c5c13          	srli	s8,s8,0x14
1c009560:	01735313          	srli	t1,t1,0x17
1c009564:	18612623          	sw	t1,396(sp)
1c009568:	4362                	lw	t1,24(sp)
1c00956a:	00ba5a13          	srli	s4,s4,0xb
1c00956e:	0326                	slli	t1,t1,0x9
1c009570:	18612823          	sw	t1,400(sp)
1c009574:	5302                	lw	t1,32(sp)
1c009576:	015f5f13          	srli	t5,t5,0x15
1c00957a:	01735313          	srli	t1,t1,0x17
1c00957e:	18612a23          	sw	t1,404(sp)
1c009582:	01e75313          	srli	t1,a4,0x1e
1c009586:	18612c23          	sw	t1,408(sp)
1c00958a:	00279313          	slli	t1,a5,0x2
1c00958e:	18612e23          	sw	t1,412(sp)
1c009592:	432e                	lw	t1,200(sp)
1c009594:	0ad6                	slli	s5,s5,0x15
1c009596:	007343b3          	xor	t2,t1,t2
1c00959a:	cc1e                	sw	t2,24(sp)
1c00959c:	43be                	lw	t2,204(sp)
1c00959e:	5376                	lw	t1,124(sp)
1c0095a0:	0053c2b3          	xor	t0,t2,t0
1c0095a4:	d016                	sw	t0,32(sp)
1c0095a6:	52e6                	lw	t0,120(sp)
1c0095a8:	4392                	lw	t2,4(sp)
1c0095aa:	0062e2b3          	or	t0,t0,t1
1c0095ae:	0183ec33          	or	s8,t2,s8
1c0095b2:	431a                	lw	t1,132(sp)
1c0095b4:	53fa                	lw	t2,188(sp)
1c0095b6:	d216                	sw	t0,36(sp)
1c0095b8:	428a                	lw	t0,128(sp)
1c0095ba:	01e3ef33          	or	t5,t2,t5
1c0095be:	0062e2b3          	or	t0,t0,t1
1c0095c2:	015a6ab3          	or	s5,s4,s5
1c0095c6:	012cdc93          	srli	s9,s9,0x12
1c0095ca:	0049d993          	srli	s3,s3,0x4
1c0095ce:	0e3a                	slli	t3,t3,0xe
1c0095d0:	0ef2                	slli	t4,t4,0x1c
1c0095d2:	53aa                	lw	t2,168(sp)
1c0095d4:	01ccee33          	or	t3,s9,t3
1c0095d8:	01d9eeb3          	or	t4,s3,t4
1c0095dc:	d416                	sw	t0,40(sp)
1c0095de:	d67a                	sw	t5,44(sp)
1c0095e0:	429e                	lw	t0,196(sp)
1c0095e2:	4f0e                	lw	t5,192(sp)
1c0095e4:	de56                	sw	s5,60(sp)
1c0095e6:	531a                	lw	t1,164(sp)
1c0095e8:	5ac6                	lw	s5,112(sp)
1c0095ea:	5a3a                	lw	s4,172(sp)
1c0095ec:	da72                	sw	t3,52(sp)
1c0095ee:	ccf6                	sw	t4,88(sp)
1c0095f0:	5e56                	lw	t3,116(sp)
1c0095f2:	4e86                	lw	t4,64(sp)
1c0095f4:	005f6f33          	or	t5,t5,t0
1c0095f8:	00736333          	or	t1,t1,t2
1c0095fc:	015a6a33          	or	s4,s4,s5
1c009600:	01db5b13          	srli	s6,s6,0x1d
1c009604:	048e                	slli	s1,s1,0x3
1c009606:	01de6e33          	or	t3,t3,t4
1c00960a:	009b64b3          	or	s1,s6,s1
1c00960e:	dc62                	sw	s8,56(sp)
1c009610:	d87a                	sw	t5,48(sp)
1c009612:	ce1a                	sw	t1,28(sp)
1c009614:	ced2                	sw	s4,92(sp)
1c009616:	def2                	sw	t3,124(sp)
1c009618:	42a6                	lw	t0,72(sp)
1c00961a:	43c6                	lw	t2,80(sp)
1c00961c:	4f16                	lw	t5,68(sp)
1c00961e:	d0a6                	sw	s1,96(sp)
1c009620:	4336                	lw	t1,76(sp)
1c009622:	44d6                	lw	s1,84(sp)
1c009624:	82b1                	srli	a3,a3,0xc
1c009626:	0df6                	slli	s11,s11,0x1d
1c009628:	0952                	slli	s2,s2,0x14
1c00962a:	804d                	srli	s0,s0,0x13
1c00962c:	0126e933          	or	s2,a3,s2
1c009630:	005f6f33          	or	t5,t5,t0
1c009634:	00736333          	or	t1,t1,t2
1c009638:	8c45                	or	s0,s0,s1
1c00963a:	01aded33          	or	s10,s11,s10
1c00963e:	5a0e                	lw	s4,224(sp)
1c009640:	11412b03          	lw	s6,276(sp)
1c009644:	5e6a                	lw	t3,184(sp)
1c009646:	dcca                	sw	s2,120(sp)
1c009648:	d2fa                	sw	t5,100(sp)
1c00964a:	496e                	lw	s2,216(sp)
1c00964c:	4f5e                	lw	t5,212(sp)
1c00964e:	d49a                	sw	t1,104(sp)
1c009650:	c522                	sw	s0,136(sp)
1c009652:	11812303          	lw	t1,280(sp)
1c009656:	542e                	lw	s0,232(sp)
1c009658:	56ca                	lw	a3,176(sp)
1c00965a:	c96a                	sw	s10,144(sp)
1c00965c:	49fe                	lw	s3,220(sp)
1c00965e:	11012a83          	lw	s5,272(sp)
1c009662:	5d5a                	lw	s10,180(sp)
1c009664:	4ece                	lw	t4,208(sp)
1c009666:	529e                	lw	t0,228(sp)
1c009668:	11c12383          	lw	t2,284(sp)
1c00966c:	0126e6b3          	or	a3,a3,s2
1c009670:	0149e9b3          	or	s3,s3,s4
1c009674:	016aeab3          	or	s5,s5,s6
1c009678:	01cd6d33          	or	s10,s10,t3
1c00967c:	01eeeeb3          	or	t4,t4,t5
1c009680:	0062e2b3          	or	t0,t0,t1
1c009684:	0083e3b3          	or	t2,t2,s0
1c009688:	c736                	sw	a3,140(sp)
1c00968a:	cd4e                	sw	s3,152(sp)
1c00968c:	cb56                	sw	s5,148(sp)
1c00968e:	d16a                	sw	s10,160(sp)
1c009690:	cf76                	sw	t4,156(sp)
1c009692:	c316                	sw	t0,132(sp)
1c009694:	c11e                	sw	t2,128(sp)
1c009696:	54be                	lw	s1,236(sp)
1c009698:	56ce                	lw	a3,240(sp)
1c00969a:	59ee                	lw	s3,248(sp)
1c00969c:	10012a83          	lw	s5,256(sp)
1c0096a0:	595e                	lw	s2,244(sp)
1c0096a2:	5a7e                	lw	s4,252(sp)
1c0096a4:	10812d03          	lw	s10,264(sp)
1c0096a8:	10412b03          	lw	s6,260(sp)
1c0096ac:	8cd5                	or	s1,s1,a3
1c0096ae:	01396933          	or	s2,s2,s3
1c0096b2:	015a6a33          	or	s4,s4,s5
1c0096b6:	01ab6b33          	or	s6,s6,s10
1c0096ba:	12012e83          	lw	t4,288(sp)
1c0096be:	13012283          	lw	t0,304(sp)
1c0096c2:	16012383          	lw	t2,352(sp)
1c0096c6:	df26                	sw	s1,188(sp)
1c0096c8:	d6ca                	sw	s2,108(sp)
1c0096ca:	16812483          	lw	s1,360(sp)
1c0096ce:	17012903          	lw	s2,368(sp)
1c0096d2:	c3d2                	sw	s4,196(sp)
1c0096d4:	10c12e03          	lw	t3,268(sp)
1c0096d8:	17812a03          	lw	s4,376(sp)
1c0096dc:	12412f03          	lw	t5,292(sp)
1c0096e0:	15c12303          	lw	t1,348(sp)
1c0096e4:	16412403          	lw	s0,356(sp)
1c0096e8:	16c12683          	lw	a3,364(sp)
1c0096ec:	17412983          	lw	s3,372(sp)
1c0096f0:	c1da                	sw	s6,192(sp)
1c0096f2:	13412a83          	lw	s5,308(sp)
1c0096f6:	13812b03          	lw	s6,312(sp)
1c0096fa:	01de6e33          	or	t3,t3,t4
1c0096fe:	005f6f33          	or	t5,t5,t0
1c009702:	00736333          	or	t1,t1,t2
1c009706:	8c45                	or	s0,s0,s1
1c009708:	0126e6b3          	or	a3,a3,s2
1c00970c:	0149e9b3          	or	s3,s3,s4
1c009710:	061e                	slli	a2,a2,0x7
1c009712:	019bdb93          	srli	s7,s7,0x19
1c009716:	016aeab3          	or	s5,s5,s6
1c00971a:	01766bb3          	or	s7,a2,s7
1c00971e:	08fa                	slli	a7,a7,0x1e
1c009720:	d572                	sw	t3,168(sp)
1c009722:	d37a                	sw	t5,164(sp)
1c009724:	d71a                	sw	t1,172(sp)
1c009726:	d8a2                	sw	s0,112(sp)
1c009728:	c0b6                	sw	a3,64(sp)
1c00972a:	dace                	sw	s3,116(sp)
1c00972c:	00285813          	srli	a6,a6,0x2
1c009730:	c4d6                	sw	s5,72(sp)
1c009732:	0108e833          	or	a6,a7,a6
1c009736:	cfde                	sw	s7,220(sp)
1c009738:	12c12b83          	lw	s7,300(sp)
1c00973c:	14012e03          	lw	t3,320(sp)
1c009740:	14812f03          	lw	t5,328(sp)
1c009744:	15012303          	lw	t1,336(sp)
1c009748:	15812403          	lw	s0,344(sp)
1c00974c:	18012683          	lw	a3,384(sp)
1c009750:	18812883          	lw	a7,392(sp)
1c009754:	19412a03          	lw	s4,404(sp)
1c009758:	19c12b03          	lw	s6,412(sp)
1c00975c:	13c12d03          	lw	s10,316(sp)
1c009760:	14412e83          	lw	t4,324(sp)
1c009764:	14c12283          	lw	t0,332(sp)
1c009768:	15412383          	lw	t2,340(sp)
1c00976c:	c5c2                	sw	a6,200(sp)
1c00976e:	17c12483          	lw	s1,380(sp)
1c009772:	18412803          	lw	a6,388(sp)
1c009776:	19012983          	lw	s3,400(sp)
1c00977a:	19812a83          	lw	s5,408(sp)
1c00977e:	008bab83          	lw	s7,8(s7)
1c009782:	055e                	slli	a0,a0,0x17
1c009784:	83f9                	srli	a5,a5,0x1e
1c009786:	81a5                	srli	a1,a1,0x9
1c009788:	070a                	slli	a4,a4,0x2
1c00978a:	01cd6d33          	or	s10,s10,t3
1c00978e:	01eeeeb3          	or	t4,t4,t5
1c009792:	0062e2b3          	or	t0,t0,t1
1c009796:	0083e3b3          	or	t2,t2,s0
1c00979a:	8cd5                	or	s1,s1,a3
1c00979c:	8dc9                	or	a1,a1,a0
1c00979e:	01186833          	or	a6,a6,a7
1c0097a2:	0149e9b3          	or	s3,s3,s4
1c0097a6:	016aeab3          	or	s5,s5,s6
1c0097aa:	8f5d                	or	a4,a4,a5
1c0097ac:	18c12903          	lw	s2,396(sp)
1c0097b0:	c6f6                	sw	t4,76(sp)
1c0097b2:	c896                	sw	t0,80(sp)
1c0097b4:	ca9e                	sw	t2,84(sp)
1c0097b6:	c7a6                	sw	s1,204(sp)
1c0097b8:	d92e                	sw	a1,176(sp)
1c0097ba:	cdc2                	sw	a6,216(sp)
1c0097bc:	d1ce                	sw	s3,224(sp)
1c0097be:	11512a23          	sw	s5,276(sp)
1c0097c2:	10e12823          	sw	a4,272(sp)
1c0097c6:	c65e                	sw	s7,12(sp)
1c0097c8:	c2ea                	sw	s10,68(sp)
1c0097ca:	12c12d03          	lw	s10,300(sp)
1c0097ce:	5332                	lw	t1,44(sp)
1c0097d0:	5702                	lw	a4,32(sp)
1c0097d2:	57e6                	lw	a5,120(sp)
1c0097d4:	54f2                	lw	s1,60(sp)
1c0097d6:	5e12                	lw	t3,36(sp)
1c0097d8:	46e2                	lw	a3,24(sp)
1c0097da:	5876                	lw	a6,124(sp)
1c0097dc:	fff34313          	not	t1,t1
1c0097e0:	10612623          	sw	t1,268(sp)
1c0097e4:	fff4c493          	not	s1,s1
1c0097e8:	fff74d93          	not	s11,a4
1c0097ec:	fff7cb13          	not	s6,a5
1c0097f0:	434a                	lw	t1,144(sp)
1c0097f2:	477a                	lw	a4,156(sp)
1c0097f4:	578a                	lw	a5,160(sp)
1c0097f6:	00cd2d03          	lw	s10,12(s10)
1c0097fa:	5f22                	lw	t5,40(sp)
1c0097fc:	5542                	lw	a0,48(sp)
1c0097fe:	4672                	lw	a2,28(sp)
1c009800:	5886                	lw	a7,96(sp)
1c009802:	5aa6                	lw	s5,104(sp)
1c009804:	fffe4413          	not	s0,t3
1c009808:	fffc4393          	not	t2,s8
1c00980c:	4e3a                	lw	t3,140(sp)
1c00980e:	12912023          	sw	s1,288(sp)
1c009812:	fff6cc93          	not	s9,a3
1c009816:	44e6                	lw	s1,88(sp)
1c009818:	fff84c13          	not	s8,a6
1c00981c:	46f6                	lw	a3,92(sp)
1c00981e:	480a                	lw	a6,128(sp)
1c009820:	fff34313          	not	t1,t1
1c009824:	fff74713          	not	a4,a4
1c009828:	fff7c793          	not	a5,a5
1c00982c:	012fefb3          	or	t6,t6,s2
1c009830:	55d2                	lw	a1,52(sp)
1c009832:	5916                	lw	s2,100(sp)
1c009834:	4baa                	lw	s7,136(sp)
1c009836:	c46a                	sw	s10,8(sp)
1c009838:	ffff4293          	not	t0,t5
1c00983c:	fff54d13          	not	s10,a0
1c009840:	fff64f13          	not	t5,a2
1c009844:	fff8ca13          	not	s4,a7
1c009848:	fffac513          	not	a0,s5
1c00984c:	489a                	lw	a7,132(sp)
1c00984e:	fffe4613          	not	a2,t3
1c009852:	12612223          	sw	t1,292(sp)
1c009856:	fff6ce13          	not	t3,a3
1c00985a:	fff4c313          	not	t1,s1
1c00985e:	12e12823          	sw	a4,304(sp)
1c009862:	54b6                	lw	s1,108(sp)
1c009864:	14f12e23          	sw	a5,348(sp)
1c009868:	fff84a93          	not	s5,a6
1c00986c:	56fa                	lw	a3,188(sp)
1c00986e:	470e                	lw	a4,192(sp)
1c009870:	479e                	lw	a5,196(sp)
1c009872:	485a                	lw	a6,148(sp)
1c009874:	fff6c693          	not	a3,a3
1c009878:	fff74713          	not	a4,a4
1c00987c:	fff7c793          	not	a5,a5
1c009880:	fff84813          	not	a6,a6
1c009884:	fff5ce93          	not	t4,a1
1c009888:	fff94993          	not	s3,s2
1c00988c:	fffbc593          	not	a1,s7
1c009890:	fff4c913          	not	s2,s1
1c009894:	fff8cb93          	not	s7,a7
1c009898:	16d12023          	sw	a3,352(sp)
1c00989c:	c9ba                	sw	a4,208(sp)
1c00989e:	cbbe                	sw	a5,212(sp)
1c0098a0:	d3c2                	sw	a6,228(sp)
1c0098a2:	48ea                	lw	a7,152(sp)
1c0098a4:	54ba                	lw	s1,172(sp)
1c0098a6:	56c6                	lw	a3,112(sp)
1c0098a8:	5756                	lw	a4,116(sp)
1c0098aa:	4786                	lw	a5,64(sp)
1c0098ac:	4816                	lw	a6,68(sp)
1c0098ae:	fff8c893          	not	a7,a7
1c0098b2:	fff4c493          	not	s1,s1
1c0098b6:	fff6c693          	not	a3,a3
1c0098ba:	fff74713          	not	a4,a4
1c0098be:	fff7c793          	not	a5,a5
1c0098c2:	fff84813          	not	a6,a6
1c0098c6:	11112c23          	sw	a7,280(sp)
1c0098ca:	10912e23          	sw	s1,284(sp)
1c0098ce:	d5b6                	sw	a3,232(sp)
1c0098d0:	d7ba                	sw	a4,236(sp)
1c0098d2:	d9be                	sw	a5,240(sp)
1c0098d4:	dbc2                	sw	a6,244(sp)
1c0098d6:	48a6                	lw	a7,72(sp)
1c0098d8:	44b6                	lw	s1,76(sp)
1c0098da:	46c6                	lw	a3,80(sp)
1c0098dc:	571a                	lw	a4,164(sp)
1c0098de:	57aa                	lw	a5,168(sp)
1c0098e0:	483e                	lw	a6,204(sp)
1c0098e2:	fff8c893          	not	a7,a7
1c0098e6:	fff4c493          	not	s1,s1
1c0098ea:	fff6c693          	not	a3,a3
1c0098ee:	fff74713          	not	a4,a4
1c0098f2:	fff7c793          	not	a5,a5
1c0098f6:	fff84813          	not	a6,a6
1c0098fa:	dfa6                	sw	s1,252(sp)
1c0098fc:	10d12023          	sw	a3,256(sp)
1c009900:	10e12223          	sw	a4,260(sp)
1c009904:	10f12423          	sw	a5,264(sp)
1c009908:	13012a23          	sw	a6,308(sp)
1c00990c:	ddc6                	sw	a7,248(sp)
1c00990e:	58ca                	lw	a7,176(sp)
1c009910:	44ee                	lw	s1,216(sp)
1c009912:	fff8c893          	not	a7,a7
1c009916:	13112c23          	sw	a7,312(sp)
1c00991a:	fff4c493          	not	s1,s1
1c00991e:	11012803          	lw	a6,272(sp)
1c009922:	11412883          	lw	a7,276(sp)
1c009926:	12912e23          	sw	s1,316(sp)
1c00992a:	46fe                	lw	a3,220(sp)
1c00992c:	578e                	lw	a5,224(sp)
1c00992e:	44d6                	lw	s1,84(sp)
1c009930:	fff84813          	not	a6,a6
1c009934:	fff8c893          	not	a7,a7
1c009938:	ffffc713          	not	a4,t6
1c00993c:	fff6c693          	not	a3,a3
1c009940:	fff7c793          	not	a5,a5
1c009944:	15012623          	sw	a6,332(sp)
1c009948:	15112823          	sw	a7,336(sp)
1c00994c:	fff4c493          	not	s1,s1
1c009950:	5882                	lw	a7,32(sp)
1c009952:	4822                	lw	a6,8(sp)
1c009954:	14d12023          	sw	a3,320(sp)
1c009958:	14e12223          	sw	a4,324(sp)
1c00995c:	14f12423          	sw	a5,328(sp)
1c009960:	14912a23          	sw	s1,340(sp)
1c009964:	47e2                	lw	a5,24(sp)
1c009966:	54a2                	lw	s1,40(sp)
1c009968:	46ae                	lw	a3,200(sp)
1c00996a:	4732                	lw	a4,12(sp)
1c00996c:	01184833          	xor	a6,a6,a7
1c009970:	8f3d                	xor	a4,a4,a5
1c009972:	fff6c693          	not	a3,a3
1c009976:	dd42                	sw	a6,184(sp)
1c009978:	8c65                	and	s0,s0,s1
1c00997a:	5842                	lw	a6,48(sp)
1c00997c:	54d2                	lw	s1,52(sp)
1c00997e:	10c12783          	lw	a5,268(sp)
1c009982:	12012883          	lw	a7,288(sp)
1c009986:	14d12c23          	sw	a3,344(sp)
1c00998a:	db3a                	sw	a4,180(sp)
1c00998c:	56b2                	lw	a3,44(sp)
1c00998e:	5772                	lw	a4,60(sp)
1c009990:	0107f7b3          	and	a5,a5,a6
1c009994:	0098f8b3          	and	a7,a7,s1
1c009998:	00d3f3b3          	and	t2,t2,a3
1c00999c:	00e2f2b3          	and	t0,t0,a4
1c0099a0:	16f12e23          	sw	a5,380(sp)
1c0099a4:	19112023          	sw	a7,384(sp)
1c0099a8:	46f2                	lw	a3,28(sp)
1c0099aa:	4762                	lw	a4,24(sp)
1c0099ac:	5782                	lw	a5,32(sp)
1c0099ae:	5812                	lw	a6,36(sp)
1c0099b0:	5486                	lw	s1,96(sp)
1c0099b2:	00eefeb3          	and	t4,t4,a4
1c0099b6:	00ff7f33          	and	t5,t5,a5
1c0099ba:	5726                	lw	a4,104(sp)
1c0099bc:	47aa                	lw	a5,136(sp)
1c0099be:	58e2                	lw	a7,56(sp)
1c0099c0:	00dd7d33          	and	s10,s10,a3
1c0099c4:	010cfcb3          	and	s9,s9,a6
1c0099c8:	5696                	lw	a3,100(sp)
1c0099ca:	483a                	lw	a6,140(sp)
1c0099cc:	009b7b33          	and	s6,s6,s1
1c0099d0:	00ea7a33          	and	s4,s4,a4
1c0099d4:	44e6                	lw	s1,88(sp)
1c0099d6:	12412703          	lw	a4,292(sp)
1c0099da:	00f9f9b3          	and	s3,s3,a5
1c0099de:	47f6                	lw	a5,92(sp)
1c0099e0:	011dfdb3          	and	s11,s11,a7
1c0099e4:	00dc7c33          	and	s8,s8,a3
1c0099e8:	48ca                	lw	a7,144(sp)
1c0099ea:	00f776b3          	and	a3,a4,a5
1c0099ee:	01057533          	and	a0,a0,a6
1c0099f2:	470a                	lw	a4,128(sp)
1c0099f4:	5866                	lw	a6,120(sp)
1c0099f6:	8e65                	and	a2,a2,s1
1c0099f8:	13012483          	lw	s1,304(sp)
1c0099fc:	15c12783          	lw	a5,348(sp)
1c009a00:	0115f5b3          	and	a1,a1,a7
1c009a04:	01037333          	and	t1,t1,a6
1c009a08:	58f6                	lw	a7,124(sp)
1c009a0a:	00e4f833          	and	a6,s1,a4
1c009a0e:	449a                	lw	s1,132(sp)
1c009a10:	5736                	lw	a4,108(sp)
1c009a12:	011e7e33          	and	t3,t3,a7
1c009a16:	0097f8b3          	and	a7,a5,s1
1c009a1a:	57fa                	lw	a5,188(sp)
1c009a1c:	448e                	lw	s1,192(sp)
1c009a1e:	00eafab3          	and	s5,s5,a4
1c009a22:	00fbfbb3          	and	s7,s7,a5
1c009a26:	16012703          	lw	a4,352(sp)
1c009a2a:	479e                	lw	a5,196(sp)
1c009a2c:	00997933          	and	s2,s2,s1
1c009a30:	00f774b3          	and	s1,a4,a5
1c009a34:	47da                	lw	a5,148(sp)
1c009a36:	474e                	lw	a4,208(sp)
1c009a38:	8f7d                	and	a4,a4,a5
1c009a3a:	cc3a                	sw	a4,24(sp)
1c009a3c:	47ea                	lw	a5,152(sp)
1c009a3e:	475e                	lw	a4,212(sp)
1c009a40:	8f7d                	and	a4,a4,a5
1c009a42:	d03a                	sw	a4,32(sp)
1c009a44:	571e                	lw	a4,228(sp)
1c009a46:	47fa                	lw	a5,156(sp)
1c009a48:	8f7d                	and	a4,a4,a5
1c009a4a:	10e12623          	sw	a4,268(sp)
1c009a4e:	578a                	lw	a5,160(sp)
1c009a50:	11812703          	lw	a4,280(sp)
1c009a54:	8f7d                	and	a4,a4,a5
1c009a56:	12e12023          	sw	a4,288(sp)
1c009a5a:	57d6                	lw	a5,116(sp)
1c009a5c:	11c12703          	lw	a4,284(sp)
1c009a60:	8f7d                	and	a4,a4,a5
1c009a62:	12e12223          	sw	a4,292(sp)
1c009a66:	4786                	lw	a5,64(sp)
1c009a68:	572e                	lw	a4,232(sp)
1c009a6a:	8f7d                	and	a4,a4,a5
1c009a6c:	12e12823          	sw	a4,304(sp)
1c009a70:	4796                	lw	a5,68(sp)
1c009a72:	573e                	lw	a4,236(sp)
1c009a74:	8f7d                	and	a4,a4,a5
1c009a76:	14e12e23          	sw	a4,348(sp)
1c009a7a:	47a6                	lw	a5,72(sp)
1c009a7c:	574e                	lw	a4,240(sp)
1c009a7e:	8f7d                	and	a4,a4,a5
1c009a80:	16e12023          	sw	a4,352(sp)
1c009a84:	47b6                	lw	a5,76(sp)
1c009a86:	575e                	lw	a4,244(sp)
1c009a88:	8f7d                	and	a4,a4,a5
1c009a8a:	16e12223          	sw	a4,356(sp)
1c009a8e:	47c6                	lw	a5,80(sp)
1c009a90:	576e                	lw	a4,248(sp)
1c009a92:	8f7d                	and	a4,a4,a5
1c009a94:	16e12423          	sw	a4,360(sp)
1c009a98:	579a                	lw	a5,164(sp)
1c009a9a:	577e                	lw	a4,252(sp)
1c009a9c:	8f7d                	and	a4,a4,a5
1c009a9e:	16e12623          	sw	a4,364(sp)
1c009aa2:	57aa                	lw	a5,168(sp)
1c009aa4:	10012703          	lw	a4,256(sp)
1c009aa8:	8f7d                	and	a4,a4,a5
1c009aaa:	16e12823          	sw	a4,368(sp)
1c009aae:	57ba                	lw	a5,172(sp)
1c009ab0:	10412703          	lw	a4,260(sp)
1c009ab4:	8f7d                	and	a4,a4,a5
1c009ab6:	16e12a23          	sw	a4,372(sp)
1c009aba:	10812703          	lw	a4,264(sp)
1c009abe:	57c6                	lw	a5,112(sp)
1c009ac0:	8f7d                	and	a4,a4,a5
1c009ac2:	16e12c23          	sw	a4,376(sp)
1c009ac6:	47ee                	lw	a5,216(sp)
1c009ac8:	13412703          	lw	a4,308(sp)
1c009acc:	8f7d                	and	a4,a4,a5
1c009ace:	12e12a23          	sw	a4,308(sp)
1c009ad2:	47fe                	lw	a5,220(sp)
1c009ad4:	13812703          	lw	a4,312(sp)
1c009ad8:	8f7d                	and	a4,a4,a5
1c009ada:	12e12c23          	sw	a4,312(sp)
1c009ade:	13c12703          	lw	a4,316(sp)
1c009ae2:	14012783          	lw	a5,320(sp)
1c009ae6:	01f77733          	and	a4,a4,t6
1c009aea:	12e12e23          	sw	a4,316(sp)
1c009aee:	570e                	lw	a4,224(sp)
1c009af0:	8ff9                	and	a5,a5,a4
1c009af2:	14f12023          	sw	a5,320(sp)
1c009af6:	11012703          	lw	a4,272(sp)
1c009afa:	14412783          	lw	a5,324(sp)
1c009afe:	8ff9                	and	a5,a5,a4
1c009b00:	14f12223          	sw	a5,324(sp)
1c009b04:	11412703          	lw	a4,276(sp)
1c009b08:	14812783          	lw	a5,328(sp)
1c009b0c:	8ff9                	and	a5,a5,a4
1c009b0e:	14f12423          	sw	a5,328(sp)
1c009b12:	4756                	lw	a4,84(sp)
1c009b14:	14c12783          	lw	a5,332(sp)
1c009b18:	8ff9                	and	a5,a5,a4
1c009b1a:	14f12623          	sw	a5,332(sp)
1c009b1e:	472e                	lw	a4,200(sp)
1c009b20:	15012783          	lw	a5,336(sp)
1c009b24:	8ff9                	and	a5,a5,a4
1c009b26:	14f12823          	sw	a5,336(sp)
1c009b2a:	473e                	lw	a4,204(sp)
1c009b2c:	15412783          	lw	a5,340(sp)
1c009b30:	8ff9                	and	a5,a5,a4
1c009b32:	14f12a23          	sw	a5,340(sp)
1c009b36:	574a                	lw	a4,176(sp)
1c009b38:	15812783          	lw	a5,344(sp)
1c009b3c:	8ff9                	and	a5,a5,a4
1c009b3e:	14f12c23          	sw	a5,344(sp)
1c009b42:	12c12783          	lw	a5,300(sp)
1c009b46:	575a                	lw	a4,180(sp)
1c009b48:	07c1                	addi	a5,a5,16
1c009b4a:	12f12623          	sw	a5,300(sp)
1c009b4e:	57ea                	lw	a5,184(sp)
1c009b50:	8c39                	xor	s0,s0,a4
1c009b52:	0077c3b3          	xor	t2,a5,t2
1c009b56:	5762                	lw	a4,56(sp)
1c009b58:	db22                	sw	s0,180(sp)
1c009b5a:	dd1e                	sw	t2,184(sp)
1c009b5c:	17c12403          	lw	s0,380(sp)
1c009b60:	5392                	lw	t2,36(sp)
1c009b62:	8c39                	xor	s0,s0,a4
1c009b64:	0072c2b3          	xor	t0,t0,t2
1c009b68:	5742                	lw	a4,48(sp)
1c009b6a:	53b2                	lw	t2,44(sp)
1c009b6c:	c996                	sw	t0,208(sp)
1c009b6e:	cba2                	sw	s0,212(sp)
1c009b70:	52a2                	lw	t0,40(sp)
1c009b72:	5472                	lw	s0,60(sp)
1c009b74:	18012783          	lw	a5,384(sp)
1c009b78:	007d4d33          	xor	s10,s10,t2
1c009b7c:	0057c7b3          	xor	a5,a5,t0
1c009b80:	008eceb3          	xor	t4,t4,s0
1c009b84:	00ef4f33          	xor	t5,t5,a4
1c009b88:	5406                	lw	s0,96(sp)
1c009b8a:	d3be                	sw	a5,228(sp)
1c009b8c:	11a12c23          	sw	s10,280(sp)
1c009b90:	57d2                	lw	a5,52(sp)
1c009b92:	4d72                	lw	s10,28(sp)
1c009b94:	11d12e23          	sw	t4,284(sp)
1c009b98:	d5fa                	sw	t5,232(sp)
1c009b9a:	4ee6                	lw	t4,88(sp)
1c009b9c:	4f76                	lw	t5,92(sp)
1c009b9e:	00fcccb3          	xor	s9,s9,a5
1c009ba2:	01db4b33          	xor	s6,s6,t4
1c009ba6:	01ec4c33          	xor	s8,s8,t5
1c009baa:	8d21                	xor	a0,a0,s0
1c009bac:	01adcdb3          	xor	s11,s11,s10
1c009bb0:	52e6                	lw	t0,120(sp)
1c009bb2:	53f6                	lw	t2,124(sp)
1c009bb4:	d7e6                	sw	s9,236(sp)
1c009bb6:	dbda                	sw	s6,244(sp)
1c009bb8:	dde2                	sw	s8,248(sp)
1c009bba:	d9ee                	sw	s11,240(sp)
1c009bbc:	ccaa                	sw	a0,88(sp)
1c009bbe:	5516                	lw	a0,100(sp)
1c009bc0:	47da                	lw	a5,148(sp)
1c009bc2:	8da9                	xor	a1,a1,a0
1c009bc4:	00f84833          	xor	a6,a6,a5
1c009bc8:	ceae                	sw	a1,92(sp)
1c009bca:	55a6                	lw	a1,104(sp)
1c009bcc:	d0c2                	sw	a6,96(sp)
1c009bce:	486a                	lw	a6,152(sp)
1c009bd0:	8e2d                	xor	a2,a2,a1
1c009bd2:	dfb2                	sw	a2,252(sp)
1c009bd4:	0108cb33          	xor	s6,a7,a6
1c009bd8:	462a                	lw	a2,136(sp)
1c009bda:	48fa                	lw	a7,156(sp)
1c009bdc:	8eb1                	xor	a3,a3,a2
1c009bde:	011acab3          	xor	s5,s5,a7
1c009be2:	474a                	lw	a4,144(sp)
1c009be4:	10d12023          	sw	a3,256(sp)
1c009be8:	11512223          	sw	s5,260(sp)
1c009bec:	46ba                	lw	a3,140(sp)
1c009bee:	5a8a                	lw	s5,160(sp)
1c009bf0:	4d1a                	lw	s10,132(sp)
1c009bf2:	00d34333          	xor	t1,t1,a3
1c009bf6:	00ee4e33          	xor	t3,t3,a4
1c009bfa:	015bcbb3          	xor	s7,s7,s5
1c009bfe:	5eb6                	lw	t4,108(sp)
1c009c00:	12012403          	lw	s0,288(sp)
1c009c04:	dc9a                	sw	t1,120(sp)
1c009c06:	def2                	sw	t3,124(sp)
1c009c08:	10c12303          	lw	t1,268(sp)
1c009c0c:	11712423          	sw	s7,264(sp)
1c009c10:	01a4cab3          	xor	s5,s1,s10
1c009c14:	4b8a                	lw	s7,128(sp)
1c009c16:	449e                	lw	s1,196(sp)
1c009c18:	4e62                	lw	t3,24(sp)
1c009c1a:	5f02                	lw	t5,32(sp)
1c009c1c:	005a4a33          	xor	s4,s4,t0
1c009c20:	0079c9b3          	xor	s3,s3,t2
1c009c24:	52fa                	lw	t0,188(sp)
1c009c26:	438e                	lw	t2,192(sp)
1c009c28:	01794933          	xor	s2,s2,s7
1c009c2c:	01de4e33          	xor	t3,t3,t4
1c009c30:	005f4f33          	xor	t5,t5,t0
1c009c34:	00734333          	xor	t1,t1,t2
1c009c38:	8c25                	xor	s0,s0,s1
1c009c3a:	d2ca                	sw	s2,100(sp)
1c009c3c:	d4f2                	sw	t3,104(sp)
1c009c3e:	c57a                	sw	t5,136(sp)
1c009c40:	10612623          	sw	t1,268(sp)
1c009c44:	12812023          	sw	s0,288(sp)
1c009c48:	12412503          	lw	a0,292(sp)
1c009c4c:	559a                	lw	a1,164(sp)
1c009c4e:	13012603          	lw	a2,304(sp)
1c009c52:	56aa                	lw	a3,168(sp)
1c009c54:	8d2d                	xor	a0,a0,a1
1c009c56:	8e35                	xor	a2,a2,a3
1c009c58:	57ba                	lw	a5,172(sp)
1c009c5a:	58c6                	lw	a7,112(sp)
1c009c5c:	5bd6                	lw	s7,116(sp)
1c009c5e:	4e06                	lw	t3,64(sp)
1c009c60:	4326                	lw	t1,72(sp)
1c009c62:	4436                	lw	s0,76(sp)
1c009c64:	12a12223          	sw	a0,292(sp)
1c009c68:	12c12823          	sw	a2,304(sp)
1c009c6c:	4546                	lw	a0,80(sp)
1c009c6e:	4656                	lw	a2,84(sp)
1c009c70:	15c12703          	lw	a4,348(sp)
1c009c74:	16012803          	lw	a6,352(sp)
1c009c78:	16412903          	lw	s2,356(sp)
1c009c7c:	16812d03          	lw	s10,360(sp)
1c009c80:	17012283          	lw	t0,368(sp)
1c009c84:	17412383          	lw	t2,372(sp)
1c009c88:	17812483          	lw	s1,376(sp)
1c009c8c:	13412583          	lw	a1,308(sp)
1c009c90:	8f3d                	xor	a4,a4,a5
1c009c92:	01184833          	xor	a6,a6,a7
1c009c96:	01794933          	xor	s2,s2,s7
1c009c9a:	01cd4d33          	xor	s10,s10,t3
1c009c9e:	16c12e83          	lw	t4,364(sp)
1c009ca2:	4f16                	lw	t5,68(sp)
1c009ca4:	0062c2b3          	xor	t0,t0,t1
1c009ca8:	0083c3b3          	xor	t2,t2,s0
1c009cac:	8ca9                	xor	s1,s1,a0
1c009cae:	8db1                	xor	a1,a1,a2
1c009cb0:	c73a                	sw	a4,140(sp)
1c009cb2:	c942                	sw	a6,144(sp)
1c009cb4:	d34a                	sw	s2,164(sp)
1c009cb6:	d56a                	sw	s10,168(sp)
1c009cb8:	cb16                	sw	t0,148(sp)
1c009cba:	cd1e                	sw	t2,152(sp)
1c009cbc:	cf26                	sw	s1,156(sp)
1c009cbe:	d12e                	sw	a1,160(sp)
1c009cc0:	13812683          	lw	a3,312(sp)
1c009cc4:	472e                	lw	a4,200(sp)
1c009cc6:	01eecbb3          	xor	s7,t4,t5
1c009cca:	13c12783          	lw	a5,316(sp)
1c009cce:	483e                	lw	a6,204(sp)
1c009cd0:	14012883          	lw	a7,320(sp)
1c009cd4:	594a                	lw	s2,176(sp)
1c009cd6:	14412d03          	lw	s10,324(sp)
1c009cda:	4e6e                	lw	t3,216(sp)
1c009cdc:	14812e83          	lw	t4,328(sp)
1c009ce0:	4f7e                	lw	t5,220(sp)
1c009ce2:	14c12283          	lw	t0,332(sp)
1c009ce6:	15012303          	lw	t1,336(sp)
1c009cea:	538e                	lw	t2,224(sp)
1c009cec:	8eb9                	xor	a3,a3,a4
1c009cee:	c136                	sw	a3,128(sp)
1c009cf0:	0107c7b3          	xor	a5,a5,a6
1c009cf4:	0128c8b3          	xor	a7,a7,s2
1c009cf8:	01cd4d33          	xor	s10,s10,t3
1c009cfc:	01eeceb3          	xor	t4,t4,t5
1c009d00:	01f2cfb3          	xor	t6,t0,t6
1c009d04:	00734333          	xor	t1,t1,t2
1c009d08:	15412403          	lw	s0,340(sp)
1c009d0c:	11012483          	lw	s1,272(sp)
1c009d10:	15812503          	lw	a0,344(sp)
1c009d14:	11412583          	lw	a1,276(sp)
1c009d18:	1c000637          	lui	a2,0x1c000
1c009d1c:	12c12683          	lw	a3,300(sp)
1c009d20:	d8be                	sw	a5,112(sp)
1c009d22:	dac6                	sw	a7,116(sp)
1c009d24:	c36a                	sw	s10,132(sp)
1c009d26:	d6f6                	sw	t4,108(sp)
1c009d28:	d77e                	sw	t6,172(sp)
1c009d2a:	c09a                	sw	t1,64(sp)
1c009d2c:	47860613          	addi	a2,a2,1144 # 1c000478 <KeccakF_RoundConstants+0xc0>
1c009d30:	00944c33          	xor	s8,s0,s1
1c009d34:	00b54cb3          	xor	s9,a0,a1
1c009d38:	00d60463          	beq	a2,a3,1c009d40 <KeccakF1600_StatePermute+0x19e4>
1c009d3c:	fccfe06f          	j	1c008508 <KeccakF1600_StatePermute+0x1ac>
1c009d40:	12812703          	lw	a4,296(sp)
1c009d44:	57da                	lw	a5,180(sp)
1c009d46:	586a                	lw	a6,184(sp)
1c009d48:	48ce                	lw	a7,208(sp)
1c009d4a:	11c12d03          	lw	s10,284(sp)
1c009d4e:	5e2e                	lw	t3,232(sp)
1c009d50:	5ebe                	lw	t4,236(sp)
1c009d52:	5fde                	lw	t6,244(sp)
1c009d54:	52ee                	lw	t0,248(sp)
1c009d56:	4366                	lw	t1,88(sp)
1c009d58:	43f6                	lw	t2,92(sp)
1c009d5a:	557e                	lw	a0,252(sp)
1c009d5c:	8f6e                	mv	t5,s11
1c009d5e:	84da                	mv	s1,s6
1c009d60:	8dd2                	mv	s11,s4
1c009d62:	11812b03          	lw	s6,280(sp)
1c009d66:	5a1e                	lw	s4,228(sp)
1c009d68:	8966                	mv	s2,s9
1c009d6a:	8cce                	mv	s9,s3
1c009d6c:	49de                	lw	s3,212(sp)
1c009d6e:	c31c                	sw	a5,0(a4)
1c009d70:	01072223          	sw	a6,4(a4) # 1000004 <__CTOR_LIST__-0x1b000000>
1c009d74:	01172423          	sw	a7,8(a4)
1c009d78:	01372623          	sw	s3,12(a4)
1c009d7c:	01472823          	sw	s4,16(a4)
1c009d80:	01672a23          	sw	s6,20(a4)
1c009d84:	01a72c23          	sw	s10,24(a4)
1c009d88:	01c72e23          	sw	t3,28(a4)
1c009d8c:	03d72023          	sw	t4,32(a4)
1c009d90:	03e72223          	sw	t5,36(a4)
1c009d94:	03f72423          	sw	t6,40(a4)
1c009d98:	02572623          	sw	t0,44(a4)
1c009d9c:	03b72823          	sw	s11,48(a4)
1c009da0:	03972a23          	sw	s9,52(a4)
1c009da4:	02672c23          	sw	t1,56(a4)
1c009da8:	02772e23          	sw	t2,60(a4)
1c009dac:	c328                	sw	a0,64(a4)
1c009dae:	10012583          	lw	a1,256(sp)
1c009db2:	5666                	lw	a2,120(sp)
1c009db4:	56f6                	lw	a3,124(sp)
1c009db6:	5786                	lw	a5,96(sp)
1c009db8:	10412803          	lw	a6,260(sp)
1c009dbc:	10812883          	lw	a7,264(sp)
1c009dc0:	5996                	lw	s3,100(sp)
1c009dc2:	5a26                	lw	s4,104(sp)
1c009dc4:	10c12b03          	lw	s6,268(sp)
1c009dc8:	12012d03          	lw	s10,288(sp)
1c009dcc:	12412e03          	lw	t3,292(sp)
1c009dd0:	13012e83          	lw	t4,304(sp)
1c009dd4:	4f3a                	lw	t5,140(sp)
1c009dd6:	4fca                	lw	t6,144(sp)
1c009dd8:	07572223          	sw	s5,100(a4)
1c009ddc:	4aaa                	lw	s5,136(sp)
1c009dde:	c36c                	sw	a1,68(a4)
1c009de0:	c730                	sw	a2,72(a4)
1c009de2:	c774                	sw	a3,76(a4)
1c009de4:	cb3c                	sw	a5,80(a4)
1c009de6:	cb64                	sw	s1,84(a4)
1c009de8:	05072c23          	sw	a6,88(a4)
1c009dec:	05172e23          	sw	a7,92(a4)
1c009df0:	07372023          	sw	s3,96(a4)
1c009df4:	07472423          	sw	s4,104(a4)
1c009df8:	07572623          	sw	s5,108(a4)
1c009dfc:	07672823          	sw	s6,112(a4)
1c009e00:	07a72a23          	sw	s10,116(a4)
1c009e04:	07c72c23          	sw	t3,120(a4)
1c009e08:	07d72e23          	sw	t4,124(a4)
1c009e0c:	09e72023          	sw	t5,128(a4)
1c009e10:	09f72223          	sw	t6,132(a4)
1c009e14:	529a                	lw	t0,164(sp)
1c009e16:	44ea                	lw	s1,152(sp)
1c009e18:	4a06                	lw	s4,64(sp)
1c009e1a:	532a                	lw	t1,168(sp)
1c009e1c:	43da                	lw	t2,148(sp)
1c009e1e:	457a                	lw	a0,156(sp)
1c009e20:	558a                	lw	a1,160(sp)
1c009e22:	460a                	lw	a2,128(sp)
1c009e24:	56c6                	lw	a3,112(sp)
1c009e26:	57d6                	lw	a5,116(sp)
1c009e28:	481a                	lw	a6,132(sp)
1c009e2a:	58b6                	lw	a7,108(sp)
1c009e2c:	59ba                	lw	s3,172(sp)
1c009e2e:	1cc12403          	lw	s0,460(sp)
1c009e32:	09772823          	sw	s7,144(a4)
1c009e36:	08972c23          	sw	s1,152(a4)
1c009e3a:	0b472e23          	sw	s4,188(a4)
1c009e3e:	0d872023          	sw	s8,192(a4)
1c009e42:	0d272223          	sw	s2,196(a4)
1c009e46:	1c812483          	lw	s1,456(sp)
1c009e4a:	1c412903          	lw	s2,452(sp)
1c009e4e:	08572423          	sw	t0,136(a4)
1c009e52:	08672623          	sw	t1,140(a4)
1c009e56:	08772a23          	sw	t2,148(a4)
1c009e5a:	08a72e23          	sw	a0,156(a4)
1c009e5e:	0ab72023          	sw	a1,160(a4)
1c009e62:	0ac72223          	sw	a2,164(a4)
1c009e66:	0ad72423          	sw	a3,168(a4)
1c009e6a:	0af72623          	sw	a5,172(a4)
1c009e6e:	0b072823          	sw	a6,176(a4)
1c009e72:	0b172a23          	sw	a7,180(a4)
1c009e76:	0b372c23          	sw	s3,184(a4)
1c009e7a:	1c012983          	lw	s3,448(sp)
1c009e7e:	1bc12a03          	lw	s4,444(sp)
1c009e82:	1b812a83          	lw	s5,440(sp)
1c009e86:	1b412b03          	lw	s6,436(sp)
1c009e8a:	1b012b83          	lw	s7,432(sp)
1c009e8e:	1ac12c03          	lw	s8,428(sp)
1c009e92:	1a812c83          	lw	s9,424(sp)
1c009e96:	1a412d03          	lw	s10,420(sp)
1c009e9a:	1a012d83          	lw	s11,416(sp)
1c009e9e:	6179                	addi	sp,sp,464
1c009ea0:	8082                	ret

1c009ea2 <shake128_absorb>:
1c009ea2:	7151                	addi	sp,sp,-240
1c009ea4:	d5a2                	sw	s0,232(sp)
1c009ea6:	842a                	mv	s0,a0
1c009ea8:	0c800513          	li	a0,200
1c009eac:	d1ca                	sw	s2,224(sp)
1c009eae:	cfce                	sw	s3,220(sp)
1c009eb0:	d786                	sw	ra,236(sp)
1c009eb2:	d3a6                	sw	s1,228(sp)
1c009eb4:	cdd2                	sw	s4,216(sp)
1c009eb6:	892e                	mv	s2,a1
1c009eb8:	89b2                	mv	s3,a2
1c009eba:	0d3010ef          	jal	ra,1c00b78c <pi_l2_malloc>
1c009ebe:	c008                	sw	a0,0(s0)
1c009ec0:	1a050663          	beqz	a0,1c00a06c <shake128_absorb+0x1ca>
1c009ec4:	8a2a                	mv	s4,a0
1c009ec6:	0c850713          	addi	a4,a0,200
1c009eca:	87aa                	mv	a5,a0
1c009ecc:	4601                	li	a2,0
1c009ece:	4681                	li	a3,0
1c009ed0:	c390                	sw	a2,0(a5)
1c009ed2:	c3d4                	sw	a3,4(a5)
1c009ed4:	07a1                	addi	a5,a5,8
1c009ed6:	fef71be3          	bne	a4,a5,1c009ecc <shake128_absorb+0x2a>
1c009eda:	0a700793          	li	a5,167
1c009ede:	0937f163          	bleu	s3,a5,1c009f60 <shake128_absorb+0xbe>
1c009ee2:	412a04b3          	sub	s1,s4,s2
1c009ee6:	0a700413          	li	s0,167
1c009eea:	85ca                	mv	a1,s2
1c009eec:	0a890913          	addi	s2,s2,168
1c009ef0:	0015c783          	lbu	a5,1(a1)
1c009ef4:	0025c603          	lbu	a2,2(a1)
1c009ef8:	0055c803          	lbu	a6,5(a1)
1c009efc:	0045c303          	lbu	t1,4(a1)
1c009f00:	0065c503          	lbu	a0,6(a1)
1c009f04:	0005ce03          	lbu	t3,0(a1)
1c009f08:	0035c683          	lbu	a3,3(a1)
1c009f0c:	0075c703          	lbu	a4,7(a1)
1c009f10:	0642                	slli	a2,a2,0x10
1c009f12:	07a2                	slli	a5,a5,0x8
1c009f14:	0822                	slli	a6,a6,0x8
1c009f16:	00b488b3          	add	a7,s1,a1
1c009f1a:	8fd1                	or	a5,a5,a2
1c009f1c:	00686833          	or	a6,a6,t1
1c009f20:	0542                	slli	a0,a0,0x10
1c009f22:	0008a603          	lw	a2,0(a7)
1c009f26:	0048a303          	lw	t1,4(a7)
1c009f2a:	01c7e7b3          	or	a5,a5,t3
1c009f2e:	06e2                	slli	a3,a3,0x18
1c009f30:	01056533          	or	a0,a0,a6
1c009f34:	0762                	slli	a4,a4,0x18
1c009f36:	8fd5                	or	a5,a5,a3
1c009f38:	8f49                	or	a4,a4,a0
1c009f3a:	8fb1                	xor	a5,a5,a2
1c009f3c:	00e34733          	xor	a4,t1,a4
1c009f40:	00f8a023          	sw	a5,0(a7)
1c009f44:	00e8a223          	sw	a4,4(a7)
1c009f48:	05a1                	addi	a1,a1,8
1c009f4a:	fab913e3          	bne	s2,a1,1c009ef0 <shake128_absorb+0x4e>
1c009f4e:	8552                	mv	a0,s4
1c009f50:	f5898993          	addi	s3,s3,-168
1c009f54:	c08fe0ef          	jal	ra,1c00835c <KeccakF1600_StatePermute>
1c009f58:	f5848493          	addi	s1,s1,-168
1c009f5c:	f93467e3          	bltu	s0,s3,1c009eea <shake128_absorb+0x48>
1c009f60:	191c                	addi	a5,sp,176
1c009f62:	00810813          	addi	a6,sp,8
1c009f66:	4681                	li	a3,0
1c009f68:	00d82023          	sw	a3,0(a6)
1c009f6c:	0811                	addi	a6,a6,4
1c009f6e:	ff079ce3          	bne	a5,a6,1c009f66 <shake128_absorb+0xc4>
1c009f72:	06098563          	beqz	s3,1c009fdc <shake128_absorb+0x13a>
1c009f76:	fff98793          	addi	a5,s3,-1
1c009f7a:	4709                	li	a4,2
1c009f7c:	0ef77663          	bleu	a5,a4,1c00a068 <shake128_absorb+0x1c6>
1c009f80:	0029d513          	srli	a0,s3,0x2
1c009f84:	86ca                	mv	a3,s2
1c009f86:	0038                	addi	a4,sp,8
1c009f88:	4781                	li	a5,0
1c009f8a:	4290                	lw	a2,0(a3)
1c009f8c:	0785                	addi	a5,a5,1
1c009f8e:	c310                	sw	a2,0(a4)
1c009f90:	0691                	addi	a3,a3,4
1c009f92:	0711                	addi	a4,a4,4
1c009f94:	fea7ebe3          	bltu	a5,a0,1c009f8a <shake128_absorb+0xe8>
1c009f98:	ffc9f793          	andi	a5,s3,-4
1c009f9c:	04f98063          	beq	s3,a5,1c009fdc <shake128_absorb+0x13a>
1c009fa0:	00f90733          	add	a4,s2,a5
1c009fa4:	00074683          	lbu	a3,0(a4)
1c009fa8:	0990                	addi	a2,sp,208
1c009faa:	00f60733          	add	a4,a2,a5
1c009fae:	f2d70c23          	sb	a3,-200(a4)
1c009fb2:	00178713          	addi	a4,a5,1
1c009fb6:	03377363          	bleu	s3,a4,1c009fdc <shake128_absorb+0x13a>
1c009fba:	00e906b3          	add	a3,s2,a4
1c009fbe:	0006c683          	lbu	a3,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c009fc2:	9732                	add	a4,a4,a2
1c009fc4:	f2d70c23          	sb	a3,-200(a4)
1c009fc8:	0789                	addi	a5,a5,2
1c009fca:	0137f963          	bleu	s3,a5,1c009fdc <shake128_absorb+0x13a>
1c009fce:	00f905b3          	add	a1,s2,a5
1c009fd2:	0005c703          	lbu	a4,0(a1)
1c009fd6:	97b2                	add	a5,a5,a2
1c009fd8:	f2e78c23          	sb	a4,-200(a5)
1c009fdc:	0994                	addi	a3,sp,208
1c009fde:	47fd                	li	a5,31
1c009fe0:	99b6                	add	s3,s3,a3
1c009fe2:	f2f98c23          	sb	a5,-200(s3)
1c009fe6:	0af14703          	lbu	a4,175(sp)
1c009fea:	003c                	addi	a5,sp,8
1c009fec:	f8076713          	ori	a4,a4,-128
1c009ff0:	0ae107a3          	sb	a4,175(sp)
1c009ff4:	40fa0a33          	sub	s4,s4,a5
1c009ff8:	0017c703          	lbu	a4,1(a5)
1c009ffc:	0027c303          	lbu	t1,2(a5)
1c00a000:	0057c503          	lbu	a0,5(a5)
1c00a004:	0047ce03          	lbu	t3,4(a5)
1c00a008:	0067c583          	lbu	a1,6(a5)
1c00a00c:	0007ce83          	lbu	t4,0(a5)
1c00a010:	0037c603          	lbu	a2,3(a5)
1c00a014:	0077c683          	lbu	a3,7(a5)
1c00a018:	0342                	slli	t1,t1,0x10
1c00a01a:	0722                	slli	a4,a4,0x8
1c00a01c:	0522                	slli	a0,a0,0x8
1c00a01e:	00fa08b3          	add	a7,s4,a5
1c00a022:	00676733          	or	a4,a4,t1
1c00a026:	01c56533          	or	a0,a0,t3
1c00a02a:	05c2                	slli	a1,a1,0x10
1c00a02c:	0008ae03          	lw	t3,0(a7)
1c00a030:	0048a303          	lw	t1,4(a7)
1c00a034:	01d76733          	or	a4,a4,t4
1c00a038:	0662                	slli	a2,a2,0x18
1c00a03a:	8dc9                	or	a1,a1,a0
1c00a03c:	06e2                	slli	a3,a3,0x18
1c00a03e:	8f51                	or	a4,a4,a2
1c00a040:	8ecd                	or	a3,a3,a1
1c00a042:	00ee4733          	xor	a4,t3,a4
1c00a046:	00d346b3          	xor	a3,t1,a3
1c00a04a:	00e8a023          	sw	a4,0(a7)
1c00a04e:	00d8a223          	sw	a3,4(a7)
1c00a052:	07a1                	addi	a5,a5,8
1c00a054:	faf812e3          	bne	a6,a5,1c009ff8 <shake128_absorb+0x156>
1c00a058:	50be                	lw	ra,236(sp)
1c00a05a:	542e                	lw	s0,232(sp)
1c00a05c:	549e                	lw	s1,228(sp)
1c00a05e:	590e                	lw	s2,224(sp)
1c00a060:	49fe                	lw	s3,220(sp)
1c00a062:	4a6e                	lw	s4,216(sp)
1c00a064:	616d                	addi	sp,sp,240
1c00a066:	8082                	ret
1c00a068:	4781                	li	a5,0
1c00a06a:	bf1d                	j	1c009fa0 <shake128_absorb+0xfe>
1c00a06c:	06f00513          	li	a0,111
1c00a070:	23f9                	jal	1c00a63e <exit>

1c00a072 <shake128>:
1c00a072:	7115                	addi	sp,sp,-224
1c00a074:	cda2                	sw	s0,216(sp)
1c00a076:	0a800413          	li	s0,168
1c00a07a:	c9ca                	sw	s2,208(sp)
1c00a07c:	0285d933          	divu	s2,a1,s0
1c00a080:	cba6                	sw	s1,212(sp)
1c00a082:	c7ce                	sw	s3,204(sp)
1c00a084:	84aa                	mv	s1,a0
1c00a086:	89ae                	mv	s3,a1
1c00a088:	0048                	addi	a0,sp,4
1c00a08a:	85b2                	mv	a1,a2
1c00a08c:	8636                	mv	a2,a3
1c00a08e:	c1da                	sw	s6,192(sp)
1c00a090:	cf86                	sw	ra,220(sp)
1c00a092:	c5d2                	sw	s4,200(sp)
1c00a094:	c3d6                	sw	s5,196(sp)
1c00a096:	df5e                	sw	s7,188(sp)
1c00a098:	dd62                	sw	s8,184(sp)
1c00a09a:	3521                	jal	1c009ea2 <shake128_absorb>
1c00a09c:	4b12                	lw	s6,4(sp)
1c00a09e:	0a090563          	beqz	s2,1c00a148 <shake128+0xd6>
1c00a0a2:	02890433          	mul	s0,s2,s0
1c00a0a6:	7bc1                	lui	s7,0xffff0
1c00a0a8:	ff010ab7          	lui	s5,0xff010
1c00a0ac:	01000a37          	lui	s4,0x1000
1c00a0b0:	9426                	add	s0,s0,s1
1c00a0b2:	8c26                	mv	s8,s1
1c00a0b4:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a0b8:	1afd                	addi	s5,s5,-1
1c00a0ba:	1a7d                	addi	s4,s4,-1
1c00a0bc:	855a                	mv	a0,s6
1c00a0be:	a9efe0ef          	jal	ra,1c00835c <KeccakF1600_StatePermute>
1c00a0c2:	8662                	mv	a2,s8
1c00a0c4:	85da                	mv	a1,s6
1c00a0c6:	0a8c0513          	addi	a0,s8,168
1c00a0ca:	0005a803          	lw	a6,0(a1)
1c00a0ce:	41d4                	lw	a3,4(a1)
1c00a0d0:	00885313          	srli	t1,a6,0x8
1c00a0d4:	0086d893          	srli	a7,a3,0x8
1c00a0d8:	0ff87713          	andi	a4,a6,255
1c00a0dc:	0ff6f793          	andi	a5,a3,255
1c00a0e0:	0ff37313          	andi	t1,t1,255
1c00a0e4:	0ff8f893          	andi	a7,a7,255
1c00a0e8:	0322                	slli	t1,t1,0x8
1c00a0ea:	08a2                	slli	a7,a7,0x8
1c00a0ec:	01777733          	and	a4,a4,s7
1c00a0f0:	0177f7b3          	and	a5,a5,s7
1c00a0f4:	00676733          	or	a4,a4,t1
1c00a0f8:	0117e7b3          	or	a5,a5,a7
1c00a0fc:	00ff0337          	lui	t1,0xff0
1c00a100:	00ff08b7          	lui	a7,0xff0
1c00a104:	00687333          	and	t1,a6,t1
1c00a108:	0116f8b3          	and	a7,a3,a7
1c00a10c:	01577733          	and	a4,a4,s5
1c00a110:	0157f7b3          	and	a5,a5,s5
1c00a114:	00676733          	or	a4,a4,t1
1c00a118:	01885813          	srli	a6,a6,0x18
1c00a11c:	0117e7b3          	or	a5,a5,a7
1c00a120:	82e1                	srli	a3,a3,0x18
1c00a122:	0862                	slli	a6,a6,0x18
1c00a124:	01477733          	and	a4,a4,s4
1c00a128:	06e2                	slli	a3,a3,0x18
1c00a12a:	0147f7b3          	and	a5,a5,s4
1c00a12e:	01076733          	or	a4,a4,a6
1c00a132:	8fd5                	or	a5,a5,a3
1c00a134:	c218                	sw	a4,0(a2)
1c00a136:	c25c                	sw	a5,4(a2)
1c00a138:	0621                	addi	a2,a2,8
1c00a13a:	05a1                	addi	a1,a1,8
1c00a13c:	f8c517e3          	bne	a0,a2,1c00a0ca <shake128+0x58>
1c00a140:	8c2a                	mv	s8,a0
1c00a142:	f6851de3          	bne	a0,s0,1c00a0bc <shake128+0x4a>
1c00a146:	4b12                	lw	s6,4(sp)
1c00a148:	0a800793          	li	a5,168
1c00a14c:	02f9f9b3          	remu	s3,s3,a5
1c00a150:	02099363          	bnez	s3,1c00a176 <shake128+0x104>
1c00a154:	855a                	mv	a0,s6
1c00a156:	0c800593          	li	a1,200
1c00a15a:	63e010ef          	jal	ra,1c00b798 <pi_l2_free>
1c00a15e:	40fe                	lw	ra,220(sp)
1c00a160:	446e                	lw	s0,216(sp)
1c00a162:	44de                	lw	s1,212(sp)
1c00a164:	494e                	lw	s2,208(sp)
1c00a166:	49be                	lw	s3,204(sp)
1c00a168:	4a2e                	lw	s4,200(sp)
1c00a16a:	4a9e                	lw	s5,196(sp)
1c00a16c:	4b0e                	lw	s6,192(sp)
1c00a16e:	5bfa                	lw	s7,188(sp)
1c00a170:	5c6a                	lw	s8,184(sp)
1c00a172:	612d                	addi	sp,sp,224
1c00a174:	8082                	ret
1c00a176:	855a                	mv	a0,s6
1c00a178:	9e4fe0ef          	jal	ra,1c00835c <KeccakF1600_StatePermute>
1c00a17c:	0028                	addi	a0,sp,8
1c00a17e:	7341                	lui	t1,0xffff0
1c00a180:	ff0108b7          	lui	a7,0xff010
1c00a184:	01000837          	lui	a6,0x1000
1c00a188:	0b010e13          	addi	t3,sp,176
1c00a18c:	85aa                	mv	a1,a0
1c00a18e:	0ff30313          	addi	t1,t1,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a192:	18fd                	addi	a7,a7,-1
1c00a194:	187d                	addi	a6,a6,-1
1c00a196:	000b2603          	lw	a2,0(s6)
1c00a19a:	004b2683          	lw	a3,4(s6)
1c00a19e:	00865f13          	srli	t5,a2,0x8
1c00a1a2:	0086de93          	srli	t4,a3,0x8
1c00a1a6:	0ff67713          	andi	a4,a2,255
1c00a1aa:	0ff6f793          	andi	a5,a3,255
1c00a1ae:	0fff7f13          	andi	t5,t5,255
1c00a1b2:	0ffefe93          	andi	t4,t4,255
1c00a1b6:	0f22                	slli	t5,t5,0x8
1c00a1b8:	0ea2                	slli	t4,t4,0x8
1c00a1ba:	00677733          	and	a4,a4,t1
1c00a1be:	0067f7b3          	and	a5,a5,t1
1c00a1c2:	01e76733          	or	a4,a4,t5
1c00a1c6:	01d7e7b3          	or	a5,a5,t4
1c00a1ca:	00ff0f37          	lui	t5,0xff0
1c00a1ce:	00ff0eb7          	lui	t4,0xff0
1c00a1d2:	01e67f33          	and	t5,a2,t5
1c00a1d6:	01d6feb3          	and	t4,a3,t4
1c00a1da:	01177733          	and	a4,a4,a7
1c00a1de:	0117f7b3          	and	a5,a5,a7
1c00a1e2:	01e76733          	or	a4,a4,t5
1c00a1e6:	8261                	srli	a2,a2,0x18
1c00a1e8:	01d7e7b3          	or	a5,a5,t4
1c00a1ec:	82e1                	srli	a3,a3,0x18
1c00a1ee:	0662                	slli	a2,a2,0x18
1c00a1f0:	01077733          	and	a4,a4,a6
1c00a1f4:	06e2                	slli	a3,a3,0x18
1c00a1f6:	0107f7b3          	and	a5,a5,a6
1c00a1fa:	8f51                	or	a4,a4,a2
1c00a1fc:	8fd5                	or	a5,a5,a3
1c00a1fe:	c198                	sw	a4,0(a1)
1c00a200:	c1dc                	sw	a5,4(a1)
1c00a202:	05a1                	addi	a1,a1,8
1c00a204:	0b21                	addi	s6,s6,8
1c00a206:	f8be18e3          	bne	t3,a1,1c00a196 <shake128+0x124>
1c00a20a:	fff98793          	addi	a5,s3,-1
1c00a20e:	4709                	li	a4,2
1c00a210:	06f77a63          	bleu	a5,a4,1c00a284 <shake128+0x212>
1c00a214:	0a800793          	li	a5,168
1c00a218:	02f907b3          	mul	a5,s2,a5
1c00a21c:	0029d613          	srli	a2,s3,0x2
1c00a220:	97a6                	add	a5,a5,s1
1c00a222:	4701                	li	a4,0
1c00a224:	4114                	lw	a3,0(a0)
1c00a226:	0705                	addi	a4,a4,1
1c00a228:	c394                	sw	a3,0(a5)
1c00a22a:	0511                	addi	a0,a0,4
1c00a22c:	0791                	addi	a5,a5,4
1c00a22e:	fec76be3          	bltu	a4,a2,1c00a224 <shake128+0x1b2>
1c00a232:	ffc9f793          	andi	a5,s3,-4
1c00a236:	04f98563          	beq	s3,a5,1c00a280 <shake128+0x20e>
1c00a23a:	0a800713          	li	a4,168
1c00a23e:	1910                	addi	a2,sp,176
1c00a240:	02e90933          	mul	s2,s2,a4
1c00a244:	00f60733          	add	a4,a2,a5
1c00a248:	f5874683          	lbu	a3,-168(a4)
1c00a24c:	94ca                	add	s1,s1,s2
1c00a24e:	00f48733          	add	a4,s1,a5
1c00a252:	00d70023          	sb	a3,0(a4)
1c00a256:	00178713          	addi	a4,a5,1
1c00a25a:	03377363          	bleu	s3,a4,1c00a280 <shake128+0x20e>
1c00a25e:	00e606b3          	add	a3,a2,a4
1c00a262:	f586c683          	lbu	a3,-168(a3)
1c00a266:	9726                	add	a4,a4,s1
1c00a268:	00d70023          	sb	a3,0(a4)
1c00a26c:	0789                	addi	a5,a5,2
1c00a26e:	0137f963          	bleu	s3,a5,1c00a280 <shake128+0x20e>
1c00a272:	00f60733          	add	a4,a2,a5
1c00a276:	f5874703          	lbu	a4,-168(a4)
1c00a27a:	94be                	add	s1,s1,a5
1c00a27c:	00e48023          	sb	a4,0(s1)
1c00a280:	4b12                	lw	s6,4(sp)
1c00a282:	bdc9                	j	1c00a154 <shake128+0xe2>
1c00a284:	4781                	li	a5,0
1c00a286:	bf55                	j	1c00a23a <shake128+0x1c8>

1c00a288 <pos_wait_forever>:
1c00a288:	f14027f3          	csrr	a5,mhartid
1c00a28c:	8795                	srai	a5,a5,0x5
1c00a28e:	03f7f793          	andi	a5,a5,63
1c00a292:	477d                	li	a4,31
1c00a294:	00e78363          	beq	a5,a4,1c00a29a <pos_wait_forever+0x12>
1c00a298:	a001                	j	1c00a298 <pos_wait_forever+0x10>
1c00a29a:	1a10a7b7          	lui	a5,0x1a10a
1c00a29e:	577d                	li	a4,-1
1c00a2a0:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00a2a4:	10500073          	wfi
1c00a2a8:	10500073          	wfi
1c00a2ac:	bfe5                	j	1c00a2a4 <pos_wait_forever+0x1c>

1c00a2ae <memcmp>:
1c00a2ae:	c21d                	beqz	a2,1c00a2d4 <memcmp+0x26>
1c00a2b0:	00054783          	lbu	a5,0(a0)
1c00a2b4:	0005c703          	lbu	a4,0(a1)
1c00a2b8:	962a                	add	a2,a2,a0
1c00a2ba:	00f70963          	beq	a4,a5,1c00a2cc <memcmp+0x1e>
1c00a2be:	a829                	j	1c00a2d8 <memcmp+0x2a>
1c00a2c0:	00054783          	lbu	a5,0(a0)
1c00a2c4:	0005c703          	lbu	a4,0(a1)
1c00a2c8:	00e79863          	bne	a5,a4,1c00a2d8 <memcmp+0x2a>
1c00a2cc:	0505                	addi	a0,a0,1
1c00a2ce:	0585                	addi	a1,a1,1
1c00a2d0:	fea618e3          	bne	a2,a0,1c00a2c0 <memcmp+0x12>
1c00a2d4:	4501                	li	a0,0
1c00a2d6:	8082                	ret
1c00a2d8:	40e78533          	sub	a0,a5,a4
1c00a2dc:	8082                	ret

1c00a2de <memcpy>:
1c00a2de:	00b567b3          	or	a5,a0,a1
1c00a2e2:	8b8d                	andi	a5,a5,3
1c00a2e4:	10078f63          	beqz	a5,1c00a402 <memcpy+0x124>
1c00a2e8:	14060063          	beqz	a2,1c00a428 <memcpy+0x14a>
1c00a2ec:	00458793          	addi	a5,a1,4
1c00a2f0:	00450693          	addi	a3,a0,4
1c00a2f4:	00f537b3          	sltu	a5,a0,a5
1c00a2f8:	00d5b6b3          	sltu	a3,a1,a3
1c00a2fc:	0017c793          	xori	a5,a5,1
1c00a300:	0016c693          	xori	a3,a3,1
1c00a304:	873e                	mv	a4,a5
1c00a306:	87b6                	mv	a5,a3
1c00a308:	8fd9                	or	a5,a5,a4
1c00a30a:	0ff7f793          	andi	a5,a5,255
1c00a30e:	cff9                	beqz	a5,1c00a3ec <memcpy+0x10e>
1c00a310:	00863793          	sltiu	a5,a2,8
1c00a314:	0017c793          	xori	a5,a5,1
1c00a318:	0ff7f793          	andi	a5,a5,255
1c00a31c:	cbe1                	beqz	a5,1c00a3ec <memcpy+0x10e>
1c00a31e:	40b007b3          	neg	a5,a1
1c00a322:	8b8d                	andi	a5,a5,3
1c00a324:	fff60313          	addi	t1,a2,-1
1c00a328:	cfe5                	beqz	a5,1c00a420 <memcpy+0x142>
1c00a32a:	0005c683          	lbu	a3,0(a1)
1c00a32e:	4705                	li	a4,1
1c00a330:	00d50023          	sb	a3,0(a0)
1c00a334:	00158893          	addi	a7,a1,1
1c00a338:	00150813          	addi	a6,a0,1
1c00a33c:	02e78963          	beq	a5,a4,1c00a36e <memcpy+0x90>
1c00a340:	0015c683          	lbu	a3,1(a1)
1c00a344:	470d                	li	a4,3
1c00a346:	00d500a3          	sb	a3,1(a0)
1c00a34a:	00258893          	addi	a7,a1,2
1c00a34e:	00250813          	addi	a6,a0,2
1c00a352:	ffe60313          	addi	t1,a2,-2
1c00a356:	00e79c63          	bne	a5,a4,1c00a36e <memcpy+0x90>
1c00a35a:	0025c703          	lbu	a4,2(a1)
1c00a35e:	00358893          	addi	a7,a1,3
1c00a362:	00350813          	addi	a6,a0,3
1c00a366:	00e50123          	sb	a4,2(a0)
1c00a36a:	ffd60313          	addi	t1,a2,-3
1c00a36e:	8e1d                	sub	a2,a2,a5
1c00a370:	95be                	add	a1,a1,a5
1c00a372:	00265e13          	srli	t3,a2,0x2
1c00a376:	97aa                	add	a5,a5,a0
1c00a378:	4701                	li	a4,0
1c00a37a:	4194                	lw	a3,0(a1)
1c00a37c:	0705                	addi	a4,a4,1
1c00a37e:	c394                	sw	a3,0(a5)
1c00a380:	0591                	addi	a1,a1,4
1c00a382:	0791                	addi	a5,a5,4
1c00a384:	ffc76be3          	bltu	a4,t3,1c00a37a <memcpy+0x9c>
1c00a388:	ffc67593          	andi	a1,a2,-4
1c00a38c:	40b306b3          	sub	a3,t1,a1
1c00a390:	00b807b3          	add	a5,a6,a1
1c00a394:	00b88733          	add	a4,a7,a1
1c00a398:	06b60463          	beq	a2,a1,1c00a400 <memcpy+0x122>
1c00a39c:	00074583          	lbu	a1,0(a4)
1c00a3a0:	fff68613          	addi	a2,a3,-1
1c00a3a4:	00b78023          	sb	a1,0(a5)
1c00a3a8:	ce21                	beqz	a2,1c00a400 <memcpy+0x122>
1c00a3aa:	00174583          	lbu	a1,1(a4)
1c00a3ae:	ffe68613          	addi	a2,a3,-2
1c00a3b2:	00b780a3          	sb	a1,1(a5)
1c00a3b6:	c629                	beqz	a2,1c00a400 <memcpy+0x122>
1c00a3b8:	00274583          	lbu	a1,2(a4)
1c00a3bc:	ffd68613          	addi	a2,a3,-3
1c00a3c0:	00b78123          	sb	a1,2(a5)
1c00a3c4:	ce15                	beqz	a2,1c00a400 <memcpy+0x122>
1c00a3c6:	00374583          	lbu	a1,3(a4)
1c00a3ca:	ffc68613          	addi	a2,a3,-4
1c00a3ce:	00b781a3          	sb	a1,3(a5)
1c00a3d2:	c61d                	beqz	a2,1c00a400 <memcpy+0x122>
1c00a3d4:	00474583          	lbu	a1,4(a4)
1c00a3d8:	4615                	li	a2,5
1c00a3da:	00b78223          	sb	a1,4(a5)
1c00a3de:	02c68163          	beq	a3,a2,1c00a400 <memcpy+0x122>
1c00a3e2:	00574703          	lbu	a4,5(a4)
1c00a3e6:	00e782a3          	sb	a4,5(a5)
1c00a3ea:	8082                	ret
1c00a3ec:	962e                	add	a2,a2,a1
1c00a3ee:	87aa                	mv	a5,a0
1c00a3f0:	0585                	addi	a1,a1,1
1c00a3f2:	fff5c703          	lbu	a4,-1(a1)
1c00a3f6:	0785                	addi	a5,a5,1
1c00a3f8:	fee78fa3          	sb	a4,-1(a5)
1c00a3fc:	fec59ae3          	bne	a1,a2,1c00a3f0 <memcpy+0x112>
1c00a400:	8082                	ret
1c00a402:	00367793          	andi	a5,a2,3
1c00a406:	ee0793e3          	bnez	a5,1c00a2ec <memcpy+0xe>
1c00a40a:	da7d                	beqz	a2,1c00a400 <memcpy+0x122>
1c00a40c:	87aa                	mv	a5,a0
1c00a40e:	0591                	addi	a1,a1,4
1c00a410:	ffc5a703          	lw	a4,-4(a1)
1c00a414:	0791                	addi	a5,a5,4
1c00a416:	fee7ae23          	sw	a4,-4(a5)
1c00a41a:	1671                	addi	a2,a2,-4
1c00a41c:	fa6d                	bnez	a2,1c00a40e <memcpy+0x130>
1c00a41e:	8082                	ret
1c00a420:	88ae                	mv	a7,a1
1c00a422:	882a                	mv	a6,a0
1c00a424:	8332                	mv	t1,a2
1c00a426:	b7a1                	j	1c00a36e <memcpy+0x90>
1c00a428:	8082                	ret

1c00a42a <memmove>:
1c00a42a:	40b507b3          	sub	a5,a0,a1
1c00a42e:	10c7e463          	bltu	a5,a2,1c00a536 <memmove+0x10c>
1c00a432:	12060b63          	beqz	a2,1c00a568 <memmove+0x13e>
1c00a436:	00458793          	addi	a5,a1,4
1c00a43a:	00450693          	addi	a3,a0,4
1c00a43e:	00f537b3          	sltu	a5,a0,a5
1c00a442:	00d5b6b3          	sltu	a3,a1,a3
1c00a446:	0017c793          	xori	a5,a5,1
1c00a44a:	0016c693          	xori	a3,a3,1
1c00a44e:	873e                	mv	a4,a5
1c00a450:	87b6                	mv	a5,a3
1c00a452:	8fd9                	or	a5,a5,a4
1c00a454:	0ff7f793          	andi	a5,a5,255
1c00a458:	cfed                	beqz	a5,1c00a552 <memmove+0x128>
1c00a45a:	00863793          	sltiu	a5,a2,8
1c00a45e:	0017c793          	xori	a5,a5,1
1c00a462:	0ff7f793          	andi	a5,a5,255
1c00a466:	c7f5                	beqz	a5,1c00a552 <memmove+0x128>
1c00a468:	40b007b3          	neg	a5,a1
1c00a46c:	8b8d                	andi	a5,a5,3
1c00a46e:	fff60313          	addi	t1,a2,-1
1c00a472:	cfe5                	beqz	a5,1c00a56a <memmove+0x140>
1c00a474:	0005c683          	lbu	a3,0(a1)
1c00a478:	4705                	li	a4,1
1c00a47a:	00d50023          	sb	a3,0(a0)
1c00a47e:	00150813          	addi	a6,a0,1
1c00a482:	00158893          	addi	a7,a1,1
1c00a486:	02e78963          	beq	a5,a4,1c00a4b8 <memmove+0x8e>
1c00a48a:	0015c683          	lbu	a3,1(a1)
1c00a48e:	470d                	li	a4,3
1c00a490:	00d500a3          	sb	a3,1(a0)
1c00a494:	00250813          	addi	a6,a0,2
1c00a498:	00258893          	addi	a7,a1,2
1c00a49c:	ffe60313          	addi	t1,a2,-2
1c00a4a0:	00e79c63          	bne	a5,a4,1c00a4b8 <memmove+0x8e>
1c00a4a4:	0025c703          	lbu	a4,2(a1)
1c00a4a8:	00350813          	addi	a6,a0,3
1c00a4ac:	00e50123          	sb	a4,2(a0)
1c00a4b0:	00358893          	addi	a7,a1,3
1c00a4b4:	ffd60313          	addi	t1,a2,-3
1c00a4b8:	8e1d                	sub	a2,a2,a5
1c00a4ba:	95be                	add	a1,a1,a5
1c00a4bc:	00265e13          	srli	t3,a2,0x2
1c00a4c0:	97aa                	add	a5,a5,a0
1c00a4c2:	4701                	li	a4,0
1c00a4c4:	4194                	lw	a3,0(a1)
1c00a4c6:	0705                	addi	a4,a4,1
1c00a4c8:	c394                	sw	a3,0(a5)
1c00a4ca:	0591                	addi	a1,a1,4
1c00a4cc:	0791                	addi	a5,a5,4
1c00a4ce:	ffc76be3          	bltu	a4,t3,1c00a4c4 <memmove+0x9a>
1c00a4d2:	ffc67593          	andi	a1,a2,-4
1c00a4d6:	40b306b3          	sub	a3,t1,a1
1c00a4da:	00b807b3          	add	a5,a6,a1
1c00a4de:	00b88733          	add	a4,a7,a1
1c00a4e2:	08b60263          	beq	a2,a1,1c00a566 <memmove+0x13c>
1c00a4e6:	00074583          	lbu	a1,0(a4)
1c00a4ea:	fff68613          	addi	a2,a3,-1
1c00a4ee:	00b78023          	sb	a1,0(a5)
1c00a4f2:	ca35                	beqz	a2,1c00a566 <memmove+0x13c>
1c00a4f4:	00174583          	lbu	a1,1(a4)
1c00a4f8:	ffe68613          	addi	a2,a3,-2
1c00a4fc:	00b780a3          	sb	a1,1(a5)
1c00a500:	c23d                	beqz	a2,1c00a566 <memmove+0x13c>
1c00a502:	00274583          	lbu	a1,2(a4)
1c00a506:	ffd68613          	addi	a2,a3,-3
1c00a50a:	00b78123          	sb	a1,2(a5)
1c00a50e:	ce21                	beqz	a2,1c00a566 <memmove+0x13c>
1c00a510:	00374583          	lbu	a1,3(a4)
1c00a514:	ffc68613          	addi	a2,a3,-4
1c00a518:	00b781a3          	sb	a1,3(a5)
1c00a51c:	c629                	beqz	a2,1c00a566 <memmove+0x13c>
1c00a51e:	00474583          	lbu	a1,4(a4)
1c00a522:	4615                	li	a2,5
1c00a524:	00b78223          	sb	a1,4(a5)
1c00a528:	02c68f63          	beq	a3,a2,1c00a566 <memmove+0x13c>
1c00a52c:	00574703          	lbu	a4,5(a4)
1c00a530:	00e782a3          	sb	a4,5(a5)
1c00a534:	8082                	ret
1c00a536:	167d                	addi	a2,a2,-1
1c00a538:	00c587b3          	add	a5,a1,a2
1c00a53c:	962a                	add	a2,a2,a0
1c00a53e:	15fd                	addi	a1,a1,-1
1c00a540:	0007c703          	lbu	a4,0(a5)
1c00a544:	17fd                	addi	a5,a5,-1
1c00a546:	00e60023          	sb	a4,0(a2)
1c00a54a:	167d                	addi	a2,a2,-1
1c00a54c:	feb79ae3          	bne	a5,a1,1c00a540 <memmove+0x116>
1c00a550:	8082                	ret
1c00a552:	962a                	add	a2,a2,a0
1c00a554:	87aa                	mv	a5,a0
1c00a556:	0005c703          	lbu	a4,0(a1)
1c00a55a:	0785                	addi	a5,a5,1
1c00a55c:	fee78fa3          	sb	a4,-1(a5)
1c00a560:	0585                	addi	a1,a1,1
1c00a562:	fec79ae3          	bne	a5,a2,1c00a556 <memmove+0x12c>
1c00a566:	8082                	ret
1c00a568:	8082                	ret
1c00a56a:	88ae                	mv	a7,a1
1c00a56c:	882a                	mv	a6,a0
1c00a56e:	8332                	mv	t1,a2
1c00a570:	b7a1                	j	1c00a4b8 <memmove+0x8e>

1c00a572 <strchr>:
1c00a572:	00054783          	lbu	a5,0(a0)
1c00a576:	0ff5f593          	andi	a1,a1,255
1c00a57a:	00b78863          	beq	a5,a1,1c00a58a <strchr+0x18>
1c00a57e:	c799                	beqz	a5,1c00a58c <strchr+0x1a>
1c00a580:	0505                	addi	a0,a0,1
1c00a582:	00054783          	lbu	a5,0(a0)
1c00a586:	feb79ce3          	bne	a5,a1,1c00a57e <strchr+0xc>
1c00a58a:	8082                	ret
1c00a58c:	0015b593          	seqz	a1,a1
1c00a590:	40b005b3          	neg	a1,a1
1c00a594:	8d6d                	and	a0,a0,a1
1c00a596:	8082                	ret

1c00a598 <puts>:
1c00a598:	00054783          	lbu	a5,0(a0)
1c00a59c:	c78d                	beqz	a5,1c00a5c6 <puts+0x2e>
1c00a59e:	f14026f3          	csrr	a3,mhartid
1c00a5a2:	00369713          	slli	a4,a3,0x3
1c00a5a6:	1a10f637          	lui	a2,0x1a10f
1c00a5aa:	0ff77713          	andi	a4,a4,255
1c00a5ae:	9732                	add	a4,a4,a2
1c00a5b0:	6609                	lui	a2,0x2
1c00a5b2:	068a                	slli	a3,a3,0x2
1c00a5b4:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a5b8:	8ef1                	and	a3,a3,a2
1c00a5ba:	9736                	add	a4,a4,a3
1c00a5bc:	c31c                	sw	a5,0(a4)
1c00a5be:	0505                	addi	a0,a0,1
1c00a5c0:	00054783          	lbu	a5,0(a0)
1c00a5c4:	ffe5                	bnez	a5,1c00a5bc <puts+0x24>
1c00a5c6:	f1402773          	csrr	a4,mhartid
1c00a5ca:	00371793          	slli	a5,a4,0x3
1c00a5ce:	1a10f6b7          	lui	a3,0x1a10f
1c00a5d2:	0ff7f793          	andi	a5,a5,255
1c00a5d6:	97b6                	add	a5,a5,a3
1c00a5d8:	6689                	lui	a3,0x2
1c00a5da:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a5de:	070a                	slli	a4,a4,0x2
1c00a5e0:	8f75                	and	a4,a4,a3
1c00a5e2:	97ba                	add	a5,a5,a4
1c00a5e4:	4729                	li	a4,10
1c00a5e6:	c398                	sw	a4,0(a5)
1c00a5e8:	4501                	li	a0,0
1c00a5ea:	8082                	ret

1c00a5ec <pos_libc_fputc_locked>:
1c00a5ec:	6689                	lui	a3,0x2
1c00a5ee:	f14027f3          	csrr	a5,mhartid
1c00a5f2:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a5f6:	00379713          	slli	a4,a5,0x3
1c00a5fa:	078a                	slli	a5,a5,0x2
1c00a5fc:	8ff5                	and	a5,a5,a3
1c00a5fe:	0ff77713          	andi	a4,a4,255
1c00a602:	1a10f6b7          	lui	a3,0x1a10f
1c00a606:	9736                	add	a4,a4,a3
1c00a608:	0ff57513          	andi	a0,a0,255
1c00a60c:	97ba                	add	a5,a5,a4
1c00a60e:	c388                	sw	a0,0(a5)
1c00a610:	4501                	li	a0,0
1c00a612:	8082                	ret

1c00a614 <putchar>:
1c00a614:	6689                	lui	a3,0x2
1c00a616:	f14027f3          	csrr	a5,mhartid
1c00a61a:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00a61e:	00379713          	slli	a4,a5,0x3
1c00a622:	078a                	slli	a5,a5,0x2
1c00a624:	8ff5                	and	a5,a5,a3
1c00a626:	0ff77713          	andi	a4,a4,255
1c00a62a:	1a10f6b7          	lui	a3,0x1a10f
1c00a62e:	9736                	add	a4,a4,a3
1c00a630:	0ff57513          	andi	a0,a0,255
1c00a634:	97ba                	add	a5,a5,a4
1c00a636:	c388                	sw	a0,0(a5)
1c00a638:	4501                	li	a0,0
1c00a63a:	8082                	ret

1c00a63c <pos_libc_prf_locked>:
1c00a63c:	a0b1                	j	1c00a688 <pos_libc_prf>

1c00a63e <exit>:
1c00a63e:	800007b7          	lui	a5,0x80000
1c00a642:	1141                	addi	sp,sp,-16
1c00a644:	8d5d                	or	a0,a0,a5
1c00a646:	c606                	sw	ra,12(sp)
1c00a648:	1a1047b7          	lui	a5,0x1a104
1c00a64c:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00a650:	3925                	jal	1c00a288 <pos_wait_forever>

1c00a652 <pos_io_start>:
1c00a652:	4501                	li	a0,0
1c00a654:	8082                	ret

1c00a656 <pos_io_stop>:
1c00a656:	4501                	li	a0,0
1c00a658:	8082                	ret

1c00a65a <printf>:
1c00a65a:	7139                	addi	sp,sp,-64
1c00a65c:	02410313          	addi	t1,sp,36
1c00a660:	d432                	sw	a2,40(sp)
1c00a662:	862a                	mv	a2,a0
1c00a664:	1c00a537          	lui	a0,0x1c00a
1c00a668:	d22e                	sw	a1,36(sp)
1c00a66a:	d636                	sw	a3,44(sp)
1c00a66c:	4589                	li	a1,2
1c00a66e:	869a                	mv	a3,t1
1c00a670:	5ec50513          	addi	a0,a0,1516 # 1c00a5ec <pos_libc_fputc_locked>
1c00a674:	ce06                	sw	ra,28(sp)
1c00a676:	d83a                	sw	a4,48(sp)
1c00a678:	da3e                	sw	a5,52(sp)
1c00a67a:	dc42                	sw	a6,56(sp)
1c00a67c:	de46                	sw	a7,60(sp)
1c00a67e:	c61a                	sw	t1,12(sp)
1c00a680:	3f75                	jal	1c00a63c <pos_libc_prf_locked>
1c00a682:	40f2                	lw	ra,28(sp)
1c00a684:	6121                	addi	sp,sp,64
1c00a686:	8082                	ret

1c00a688 <pos_libc_prf>:
1c00a688:	7169                	addi	sp,sp,-304
1c00a68a:	12812423          	sw	s0,296(sp)
1c00a68e:	12912223          	sw	s1,292(sp)
1c00a692:	11612823          	sw	s6,272(sp)
1c00a696:	11712623          	sw	s7,268(sp)
1c00a69a:	11812423          	sw	s8,264(sp)
1c00a69e:	11912223          	sw	s9,260(sp)
1c00a6a2:	11a12023          	sw	s10,256(sp)
1c00a6a6:	12112623          	sw	ra,300(sp)
1c00a6aa:	13212023          	sw	s2,288(sp)
1c00a6ae:	11312e23          	sw	s3,284(sp)
1c00a6b2:	11412c23          	sw	s4,280(sp)
1c00a6b6:	11512a23          	sw	s5,276(sp)
1c00a6ba:	dfee                	sw	s11,252(sp)
1c00a6bc:	8b2a                	mv	s6,a0
1c00a6be:	8d2e                	mv	s10,a1
1c00a6c0:	84b2                	mv	s1,a2
1c00a6c2:	8c36                	mv	s8,a3
1c00a6c4:	4401                	li	s0,0
1c00a6c6:	1c000bb7          	lui	s7,0x1c000
1c00a6ca:	02410c93          	addi	s9,sp,36
1c00a6ce:	0004c503          	lbu	a0,0(s1)
1c00a6d2:	0485                	addi	s1,s1,1
1c00a6d4:	cd19                	beqz	a0,1c00a6f2 <pos_libc_prf+0x6a>
1c00a6d6:	02500793          	li	a5,37
1c00a6da:	04f50863          	beq	a0,a5,1c00a72a <pos_libc_prf+0xa2>
1c00a6de:	85ea                	mv	a1,s10
1c00a6e0:	9b02                	jalr	s6
1c00a6e2:	57fd                	li	a5,-1
1c00a6e4:	24f50863          	beq	a0,a5,1c00a934 <pos_libc_prf+0x2ac>
1c00a6e8:	0405                	addi	s0,s0,1
1c00a6ea:	0004c503          	lbu	a0,0(s1)
1c00a6ee:	0485                	addi	s1,s1,1
1c00a6f0:	f17d                	bnez	a0,1c00a6d6 <pos_libc_prf+0x4e>
1c00a6f2:	8522                	mv	a0,s0
1c00a6f4:	12c12083          	lw	ra,300(sp)
1c00a6f8:	12812403          	lw	s0,296(sp)
1c00a6fc:	12412483          	lw	s1,292(sp)
1c00a700:	12012903          	lw	s2,288(sp)
1c00a704:	11c12983          	lw	s3,284(sp)
1c00a708:	11812a03          	lw	s4,280(sp)
1c00a70c:	11412a83          	lw	s5,276(sp)
1c00a710:	11012b03          	lw	s6,272(sp)
1c00a714:	10c12b83          	lw	s7,268(sp)
1c00a718:	10812c03          	lw	s8,264(sp)
1c00a71c:	10412c83          	lw	s9,260(sp)
1c00a720:	10012d03          	lw	s10,256(sp)
1c00a724:	5dfe                	lw	s11,252(sp)
1c00a726:	6155                	addi	sp,sp,304
1c00a728:	8082                	ret
1c00a72a:	00148a93          	addi	s5,s1,1
1c00a72e:	fffacd83          	lbu	s11,-1(s5) # ff00ffff <pulp__FC+0xff010000>
1c00a732:	02000713          	li	a4,32
1c00a736:	47cb8513          	addi	a0,s7,1148 # 1c00047c <KeccakF_RoundConstants+0xc4>
1c00a73a:	85ee                	mv	a1,s11
1c00a73c:	c83a                	sw	a4,16(sp)
1c00a73e:	cc02                	sw	zero,24(sp)
1c00a740:	ca02                	sw	zero,20(sp)
1c00a742:	ce02                	sw	zero,28(sp)
1c00a744:	c602                	sw	zero,12(sp)
1c00a746:	02300913          	li	s2,35
1c00a74a:	02d00a13          	li	s4,45
1c00a74e:	89d6                	mv	s3,s5
1c00a750:	350d                	jal	1c00a572 <strchr>
1c00a752:	c915                	beqz	a0,1c00a786 <pos_libc_prf+0xfe>
1c00a754:	212d8963          	beq	s11,s2,1c00a966 <pos_libc_prf+0x2de>
1c00a758:	1fb97063          	bleu	s11,s2,1c00a938 <pos_libc_prf+0x2b0>
1c00a75c:	214d8163          	beq	s11,s4,1c00a95e <pos_libc_prf+0x2d6>
1c00a760:	03000613          	li	a2,48
1c00a764:	1ecd8863          	beq	s11,a2,1c00a954 <pos_libc_prf+0x2cc>
1c00a768:	02b00693          	li	a3,43
1c00a76c:	1edd8063          	beq	s11,a3,1c00a94c <pos_libc_prf+0x2c4>
1c00a770:	84d6                	mv	s1,s5
1c00a772:	00148a93          	addi	s5,s1,1
1c00a776:	fffacd83          	lbu	s11,-1(s5)
1c00a77a:	47cb8513          	addi	a0,s7,1148
1c00a77e:	85ee                	mv	a1,s11
1c00a780:	89d6                	mv	s3,s5
1c00a782:	3bc5                	jal	1c00a572 <strchr>
1c00a784:	f961                	bnez	a0,1c00a754 <pos_libc_prf+0xcc>
1c00a786:	02a00613          	li	a2,42
1c00a78a:	20cd8463          	beq	s11,a2,1c00a992 <pos_libc_prf+0x30a>
1c00a78e:	fd0d8613          	addi	a2,s11,-48
1c00a792:	45a5                	li	a1,9
1c00a794:	4901                	li	s2,0
1c00a796:	1cc5fe63          	bleu	a2,a1,1c00a972 <pos_libc_prf+0x2ea>
1c00a79a:	02e00713          	li	a4,46
1c00a79e:	5a7d                	li	s4,-1
1c00a7a0:	24ed8463          	beq	s11,a4,1c00a9e8 <pos_libc_prf+0x360>
1c00a7a4:	1c000837          	lui	a6,0x1c000
1c00a7a8:	85ee                	mv	a1,s11
1c00a7aa:	48480513          	addi	a0,a6,1156 # 1c000484 <KeccakF_RoundConstants+0xcc>
1c00a7ae:	33d1                	jal	1c00a572 <strchr>
1c00a7b0:	84ce                	mv	s1,s3
1c00a7b2:	c509                	beqz	a0,1c00a7bc <pos_libc_prf+0x134>
1c00a7b4:	0009cd83          	lbu	s11,0(s3)
1c00a7b8:	00198493          	addi	s1,s3,1
1c00a7bc:	06700713          	li	a4,103
1c00a7c0:	1fb75963          	ble	s11,a4,1c00a9b2 <pos_libc_prf+0x32a>
1c00a7c4:	07000713          	li	a4,112
1c00a7c8:	12ed89e3          	beq	s11,a4,1c00b0fa <pos_libc_prf+0xa72>
1c00a7cc:	25b75263          	ble	s11,a4,1c00aa10 <pos_libc_prf+0x388>
1c00a7d0:	07500713          	li	a4,117
1c00a7d4:	0aed89e3          	beq	s11,a4,1c00b086 <pos_libc_prf+0x9fe>
1c00a7d8:	07800713          	li	a4,120
1c00a7dc:	72ed8b63          	beq	s11,a4,1c00af12 <pos_libc_prf+0x88a>
1c00a7e0:	07300713          	li	a4,115
1c00a7e4:	1aed9ce3          	bne	s11,a4,1c00b19c <pos_libc_prf+0xb14>
1c00a7e8:	000c2583          	lw	a1,0(s8)
1c00a7ec:	004c0a93          	addi	s5,s8,4
1c00a7f0:	87ae                	mv	a5,a1
1c00a7f2:	4981                	li	s3,0
1c00a7f4:	0c800693          	li	a3,200
1c00a7f8:	a021                	j	1c00a800 <pos_libc_prf+0x178>
1c00a7fa:	0985                	addi	s3,s3,1
1c00a7fc:	5ad98be3          	beq	s3,a3,1c00b5b2 <pos_libc_prf+0xf2a>
1c00a800:	0007c703          	lbu	a4,0(a5)
1c00a804:	0785                	addi	a5,a5,1
1c00a806:	fb75                	bnez	a4,1c00a7fa <pos_libc_prf+0x172>
1c00a808:	000a4563          	bltz	s4,1c00a812 <pos_libc_prf+0x18a>
1c00a80c:	013a5363          	ble	s3,s4,1c00a812 <pos_libc_prf+0x18a>
1c00a810:	89d2                	mv	s3,s4
1c00a812:	8c56                	mv	s8,s5
1c00a814:	ea098de3          	beqz	s3,1c00a6ce <pos_libc_prf+0x46>
1c00a818:	864e                	mv	a2,s3
1c00a81a:	8566                	mv	a0,s9
1c00a81c:	34c9                	jal	1c00a2de <memcpy>
1c00a81e:	8c56                	mv	s8,s5
1c00a820:	0f29d963          	ble	s2,s3,1c00a912 <pos_libc_prf+0x28a>
1c00a824:	c602                	sw	zero,12(sp)
1c00a826:	48f2                	lw	a7,28(sp)
1c00a828:	1a0885e3          	beqz	a7,1c00b1d2 <pos_libc_prf+0xb4a>
1c00a82c:	013c87b3          	add	a5,s9,s3
1c00a830:	40f007b3          	neg	a5,a5
1c00a834:	8b8d                	andi	a5,a5,3
1c00a836:	00378693          	addi	a3,a5,3
1c00a83a:	4715                	li	a4,5
1c00a83c:	413905b3          	sub	a1,s2,s3
1c00a840:	00e6f363          	bleu	a4,a3,1c00a846 <pos_libc_prf+0x1be>
1c00a844:	4695                	li	a3,5
1c00a846:	fff90713          	addi	a4,s2,-1
1c00a84a:	41370733          	sub	a4,a4,s3
1c00a84e:	06d76663          	bltu	a4,a3,1c00a8ba <pos_libc_prf+0x232>
1c00a852:	86ce                	mv	a3,s3
1c00a854:	cb9d                	beqz	a5,1c00a88a <pos_libc_prf+0x202>
1c00a856:	0f010813          	addi	a6,sp,240
1c00a85a:	013806b3          	add	a3,a6,s3
1c00a85e:	02000713          	li	a4,32
1c00a862:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00a866:	4605                	li	a2,1
1c00a868:	00198693          	addi	a3,s3,1
1c00a86c:	00c78f63          	beq	a5,a2,1c00a88a <pos_libc_prf+0x202>
1c00a870:	96c2                	add	a3,a3,a6
1c00a872:	f2e68a23          	sb	a4,-204(a3)
1c00a876:	460d                	li	a2,3
1c00a878:	00298693          	addi	a3,s3,2
1c00a87c:	00c79763          	bne	a5,a2,1c00a88a <pos_libc_prf+0x202>
1c00a880:	96c2                	add	a3,a3,a6
1c00a882:	f2e68a23          	sb	a4,-204(a3)
1c00a886:	00398693          	addi	a3,s3,3
1c00a88a:	8d9d                	sub	a1,a1,a5
1c00a88c:	97ce                	add	a5,a5,s3
1c00a88e:	0025d613          	srli	a2,a1,0x2
1c00a892:	97e6                	add	a5,a5,s9
1c00a894:	4701                	li	a4,0
1c00a896:	1c0008b7          	lui	a7,0x1c000
1c00a89a:	47888893          	addi	a7,a7,1144 # 1c000478 <KeccakF_RoundConstants+0xc0>
1c00a89e:	0008a883          	lw	a7,0(a7)
1c00a8a2:	0705                	addi	a4,a4,1
1c00a8a4:	0117a023          	sw	a7,0(a5)
1c00a8a8:	0791                	addi	a5,a5,4
1c00a8aa:	fec766e3          	bltu	a4,a2,1c00a896 <pos_libc_prf+0x20e>
1c00a8ae:	ffc5f793          	andi	a5,a1,-4
1c00a8b2:	00d789b3          	add	s3,a5,a3
1c00a8b6:	04b78b63          	beq	a5,a1,1c00a90c <pos_libc_prf+0x284>
1c00a8ba:	1988                	addi	a0,sp,240
1c00a8bc:	01350733          	add	a4,a0,s3
1c00a8c0:	02000793          	li	a5,32
1c00a8c4:	f2f70a23          	sb	a5,-204(a4)
1c00a8c8:	00198713          	addi	a4,s3,1
1c00a8cc:	05275063          	ble	s2,a4,1c00a90c <pos_libc_prf+0x284>
1c00a8d0:	972a                	add	a4,a4,a0
1c00a8d2:	f2f70a23          	sb	a5,-204(a4)
1c00a8d6:	00298713          	addi	a4,s3,2
1c00a8da:	03275963          	ble	s2,a4,1c00a90c <pos_libc_prf+0x284>
1c00a8de:	972a                	add	a4,a4,a0
1c00a8e0:	f2f70a23          	sb	a5,-204(a4)
1c00a8e4:	00398713          	addi	a4,s3,3
1c00a8e8:	03275263          	ble	s2,a4,1c00a90c <pos_libc_prf+0x284>
1c00a8ec:	972a                	add	a4,a4,a0
1c00a8ee:	f2f70a23          	sb	a5,-204(a4)
1c00a8f2:	00498713          	addi	a4,s3,4
1c00a8f6:	01275b63          	ble	s2,a4,1c00a90c <pos_libc_prf+0x284>
1c00a8fa:	972a                	add	a4,a4,a0
1c00a8fc:	f2f70a23          	sb	a5,-204(a4)
1c00a900:	0995                	addi	s3,s3,5
1c00a902:	0129d563          	ble	s2,s3,1c00a90c <pos_libc_prf+0x284>
1c00a906:	99aa                	add	s3,s3,a0
1c00a908:	f2f98a23          	sb	a5,-204(s3)
1c00a90c:	89ca                	mv	s3,s2
1c00a90e:	dc0980e3          	beqz	s3,1c00a6ce <pos_libc_prf+0x46>
1c00a912:	8966                	mv	s2,s9
1c00a914:	5a7d                	li	s4,-1
1c00a916:	41940ab3          	sub	s5,s0,s9
1c00a91a:	a029                	j	1c00a924 <pos_libc_prf+0x29c>
1c00a91c:	01590433          	add	s0,s2,s5
1c00a920:	da0987e3          	beqz	s3,1c00a6ce <pos_libc_prf+0x46>
1c00a924:	00094503          	lbu	a0,0(s2)
1c00a928:	85ea                	mv	a1,s10
1c00a92a:	9b02                	jalr	s6
1c00a92c:	0905                	addi	s2,s2,1
1c00a92e:	19fd                	addi	s3,s3,-1
1c00a930:	ff4516e3          	bne	a0,s4,1c00a91c <pos_libc_prf+0x294>
1c00a934:	547d                	li	s0,-1
1c00a936:	bb75                	j	1c00a6f2 <pos_libc_prf+0x6a>
1c00a938:	da0d8de3          	beqz	s11,1c00a6f2 <pos_libc_prf+0x6a>
1c00a93c:	02000513          	li	a0,32
1c00a940:	e2ad98e3          	bne	s11,a0,1c00a770 <pos_libc_prf+0xe8>
1c00a944:	4785                	li	a5,1
1c00a946:	cc3e                	sw	a5,24(sp)
1c00a948:	84d6                	mv	s1,s5
1c00a94a:	b525                	j	1c00a772 <pos_libc_prf+0xea>
1c00a94c:	4705                	li	a4,1
1c00a94e:	ca3a                	sw	a4,20(sp)
1c00a950:	84d6                	mv	s1,s5
1c00a952:	b505                	j	1c00a772 <pos_libc_prf+0xea>
1c00a954:	03000893          	li	a7,48
1c00a958:	c846                	sw	a7,16(sp)
1c00a95a:	84d6                	mv	s1,s5
1c00a95c:	bd19                	j	1c00a772 <pos_libc_prf+0xea>
1c00a95e:	4685                	li	a3,1
1c00a960:	ce36                	sw	a3,28(sp)
1c00a962:	84d6                	mv	s1,s5
1c00a964:	b539                	j	1c00a772 <pos_libc_prf+0xea>
1c00a966:	4805                	li	a6,1
1c00a968:	c642                	sw	a6,12(sp)
1c00a96a:	84d6                	mv	s1,s5
1c00a96c:	b519                	j	1c00a772 <pos_libc_prf+0xea>
1c00a96e:	84d6                	mv	s1,s5
1c00a970:	0a85                	addi	s5,s5,1
1c00a972:	00291793          	slli	a5,s2,0x2
1c00a976:	97ca                	add	a5,a5,s2
1c00a978:	0786                	slli	a5,a5,0x1
1c00a97a:	97ee                	add	a5,a5,s11
1c00a97c:	000acd83          	lbu	s11,0(s5)
1c00a980:	fd078913          	addi	s2,a5,-48
1c00a984:	fd0d8793          	addi	a5,s11,-48
1c00a988:	fef5f3e3          	bleu	a5,a1,1c00a96e <pos_libc_prf+0x2e6>
1c00a98c:	00248993          	addi	s3,s1,2
1c00a990:	a811                	j	1c00a9a4 <pos_libc_prf+0x31c>
1c00a992:	000c2903          	lw	s2,0(s8)
1c00a996:	0c11                	addi	s8,s8,4
1c00a998:	14094663          	bltz	s2,1c00aae4 <pos_libc_prf+0x45c>
1c00a99c:	000acd83          	lbu	s11,0(s5)
1c00a9a0:	00248993          	addi	s3,s1,2
1c00a9a4:	0c800713          	li	a4,200
1c00a9a8:	df2779e3          	bleu	s2,a4,1c00a79a <pos_libc_prf+0x112>
1c00a9ac:	0c800913          	li	s2,200
1c00a9b0:	b3ed                	j	1c00a79a <pos_libc_prf+0x112>
1c00a9b2:	06500713          	li	a4,101
1c00a9b6:	12eddc63          	ble	a4,s11,1c00aaee <pos_libc_prf+0x466>
1c00a9ba:	04700713          	li	a4,71
1c00a9be:	55b74063          	blt	a4,s11,1c00aefe <pos_libc_prf+0x876>
1c00a9c2:	04500713          	li	a4,69
1c00a9c6:	12edd463          	ble	a4,s11,1c00aaee <pos_libc_prf+0x466>
1c00a9ca:	d20d84e3          	beqz	s11,1c00a6f2 <pos_libc_prf+0x6a>
1c00a9ce:	02500713          	li	a4,37
1c00a9d2:	7ced9563          	bne	s11,a4,1c00b19c <pos_libc_prf+0xb14>
1c00a9d6:	85ea                	mv	a1,s10
1c00a9d8:	02500513          	li	a0,37
1c00a9dc:	9b02                	jalr	s6
1c00a9de:	57fd                	li	a5,-1
1c00a9e0:	f4f50ae3          	beq	a0,a5,1c00a934 <pos_libc_prf+0x2ac>
1c00a9e4:	0405                	addi	s0,s0,1
1c00a9e6:	b311                	j	1c00a6ea <pos_libc_prf+0x62>
1c00a9e8:	0009c783          	lbu	a5,0(s3)
1c00a9ec:	02a00713          	li	a4,42
1c00a9f0:	00198693          	addi	a3,s3,1
1c00a9f4:	0ae79d63          	bne	a5,a4,1c00aaae <pos_libc_prf+0x426>
1c00a9f8:	000c2a03          	lw	s4,0(s8)
1c00a9fc:	0019cd83          	lbu	s11,1(s3)
1c00aa00:	0c11                	addi	s8,s8,4
1c00aa02:	0989                	addi	s3,s3,2
1c00aa04:	0c800713          	li	a4,200
1c00aa08:	d9475ee3          	ble	s4,a4,1c00a7a4 <pos_libc_prf+0x11c>
1c00aa0c:	5a7d                	li	s4,-1
1c00aa0e:	bb59                	j	1c00a7a4 <pos_libc_prf+0x11c>
1c00aa10:	06e00713          	li	a4,110
1c00aa14:	76ed8e63          	beq	s11,a4,1c00b190 <pos_libc_prf+0xb08>
1c00aa18:	5bb75663          	ble	s11,a4,1c00afc4 <pos_libc_prf+0x93c>
1c00aa1c:	4732                	lw	a4,12(sp)
1c00aa1e:	004c0513          	addi	a0,s8,4
1c00aa22:	000c2683          	lw	a3,0(s8)
1c00aa26:	1c070de3          	beqz	a4,1c00b400 <pos_libc_prf+0xd78>
1c00aa2a:	03000793          	li	a5,48
1c00aa2e:	02f10223          	sb	a5,36(sp)
1c00aa32:	16068de3          	beqz	a3,1c00b3ac <pos_libc_prf+0xd24>
1c00aa36:	02510593          	addi	a1,sp,37
1c00aa3a:	872e                	mv	a4,a1
1c00aa3c:	87ba                	mv	a5,a4
1c00aa3e:	0076f613          	andi	a2,a3,7
1c00aa42:	0785                	addi	a5,a5,1
1c00aa44:	03060613          	addi	a2,a2,48
1c00aa48:	828d                	srli	a3,a3,0x3
1c00aa4a:	fec78fa3          	sb	a2,-1(a5)
1c00aa4e:	fae5                	bnez	a3,1c00aa3e <pos_libc_prf+0x3b6>
1c00aa50:	40b789b3          	sub	s3,a5,a1
1c00aa54:	0149db63          	ble	s4,s3,1c00aa6a <pos_libc_prf+0x3e2>
1c00aa58:	03000693          	li	a3,48
1c00aa5c:	0785                	addi	a5,a5,1
1c00aa5e:	fed78fa3          	sb	a3,-1(a5)
1c00aa62:	40b789b3          	sub	s3,a5,a1
1c00aa66:	ff49cbe3          	blt	s3,s4,1c00aa5c <pos_libc_prf+0x3d4>
1c00aa6a:	00078023          	sb	zero,0(a5)
1c00aa6e:	17fd                	addi	a5,a5,-1
1c00aa70:	00f77e63          	bleu	a5,a4,1c00aa8c <pos_libc_prf+0x404>
1c00aa74:	00074603          	lbu	a2,0(a4)
1c00aa78:	0007c683          	lbu	a3,0(a5)
1c00aa7c:	00c78023          	sb	a2,0(a5)
1c00aa80:	00d70023          	sb	a3,0(a4)
1c00aa84:	17fd                	addi	a5,a5,-1
1c00aa86:	0705                	addi	a4,a4,1
1c00aa88:	fef766e3          	bltu	a4,a5,1c00aa74 <pos_libc_prf+0x3ec>
1c00aa8c:	4832                	lw	a6,12(sp)
1c00aa8e:	57fd                	li	a5,-1
1c00aa90:	99c2                	add	s3,s3,a6
1c00aa92:	22fa0ee3          	beq	s4,a5,1c00b4ce <pos_libc_prf+0xe46>
1c00aa96:	0c800793          	li	a5,200
1c00aa9a:	e937cde3          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00aa9e:	02000693          	li	a3,32
1c00aaa2:	8c2a                	mv	s8,a0
1c00aaa4:	c602                	sw	zero,12(sp)
1c00aaa6:	c836                	sw	a3,16(sp)
1c00aaa8:	d729cfe3          	blt	s3,s2,1c00a826 <pos_libc_prf+0x19e>
1c00aaac:	b58d                	j	1c00a90e <pos_libc_prf+0x286>
1c00aaae:	fd078593          	addi	a1,a5,-48
1c00aab2:	4725                	li	a4,9
1c00aab4:	8dbe                	mv	s11,a5
1c00aab6:	4a01                	li	s4,0
1c00aab8:	4625                	li	a2,9
1c00aaba:	00b77663          	bleu	a1,a4,1c00aac6 <pos_libc_prf+0x43e>
1c00aabe:	1070006f          	j	1c00b3c4 <pos_libc_prf+0xd3c>
1c00aac2:	89b6                	mv	s3,a3
1c00aac4:	0685                	addi	a3,a3,1
1c00aac6:	002a1793          	slli	a5,s4,0x2
1c00aaca:	97d2                	add	a5,a5,s4
1c00aacc:	0786                	slli	a5,a5,0x1
1c00aace:	97ee                	add	a5,a5,s11
1c00aad0:	0006cd83          	lbu	s11,0(a3)
1c00aad4:	fd078a13          	addi	s4,a5,-48
1c00aad8:	fd0d8793          	addi	a5,s11,-48
1c00aadc:	fef673e3          	bleu	a5,a2,1c00aac2 <pos_libc_prf+0x43a>
1c00aae0:	0989                	addi	s3,s3,2
1c00aae2:	b70d                	j	1c00aa04 <pos_libc_prf+0x37c>
1c00aae4:	4785                	li	a5,1
1c00aae6:	41200933          	neg	s2,s2
1c00aaea:	ce3e                	sw	a5,28(sp)
1c00aaec:	bd45                	j	1c00a99c <pos_libc_prf+0x314>
1c00aaee:	0c1d                	addi	s8,s8,7
1c00aaf0:	ff8c7c13          	andi	s8,s8,-8
1c00aaf4:	000c2703          	lw	a4,0(s8)
1c00aaf8:	004c2803          	lw	a6,4(s8)
1c00aafc:	01575693          	srli	a3,a4,0x15
1c00ab00:	00b81613          	slli	a2,a6,0xb
1c00ab04:	8e55                	or	a2,a2,a3
1c00ab06:	01485513          	srli	a0,a6,0x14
1c00ab0a:	00b71693          	slli	a3,a4,0xb
1c00ab0e:	80000737          	lui	a4,0x80000
1c00ab12:	fff74713          	not	a4,a4
1c00ab16:	7ff57513          	andi	a0,a0,2047
1c00ab1a:	7ff00593          	li	a1,2047
1c00ab1e:	0c21                	addi	s8,s8,8
1c00ab20:	8e79                	and	a2,a2,a4
1c00ab22:	0ab504e3          	beq	a0,a1,1c00b3ca <pos_libc_prf+0xd42>
1c00ab26:	04600593          	li	a1,70
1c00ab2a:	00bd9463          	bne	s11,a1,1c00ab32 <pos_libc_prf+0x4aa>
1c00ab2e:	06600d93          	li	s11,102
1c00ab32:	00d56733          	or	a4,a0,a3
1c00ab36:	8f51                	or	a4,a4,a2
1c00ab38:	7e070963          	beqz	a4,1c00b32a <pos_libc_prf+0xca2>
1c00ab3c:	800005b7          	lui	a1,0x80000
1c00ab40:	c0250513          	addi	a0,a0,-1022
1c00ab44:	8dd1                	or	a1,a1,a2
1c00ab46:	26084ae3          	bltz	a6,1c00b5ba <pos_libc_prf+0xf32>
1c00ab4a:	4852                	lw	a6,20(sp)
1c00ab4c:	220808e3          	beqz	a6,1c00b57c <pos_libc_prf+0xef4>
1c00ab50:	02b00713          	li	a4,43
1c00ab54:	02e10223          	sb	a4,36(sp)
1c00ab58:	02510e93          	addi	t4,sp,37
1c00ab5c:	5779                	li	a4,-2
1c00ab5e:	4301                	li	t1,0
1c00ab60:	06e55763          	ble	a4,a0,1c00abce <pos_libc_prf+0x546>
1c00ab64:	33333837          	lui	a6,0x33333
1c00ab68:	800008b7          	lui	a7,0x80000
1c00ab6c:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00ab70:	fff8c893          	not	a7,a7
1c00ab74:	5e79                	li	t3,-2
1c00ab76:	a011                	j	1c00ab7a <pos_libc_prf+0x4f2>
1c00ab78:	853e                	mv	a0,a5
1c00ab7a:	01f59613          	slli	a2,a1,0x1f
1c00ab7e:	0016d713          	srli	a4,a3,0x1
1c00ab82:	0016f793          	andi	a5,a3,1
1c00ab86:	8f51                	or	a4,a4,a2
1c00ab88:	00e786b3          	add	a3,a5,a4
1c00ab8c:	00f6b7b3          	sltu	a5,a3,a5
1c00ab90:	8185                	srli	a1,a1,0x1
1c00ab92:	95be                	add	a1,a1,a5
1c00ab94:	00150793          	addi	a5,a0,1
1c00ab98:	feb860e3          	bltu	a6,a1,1c00ab78 <pos_libc_prf+0x4f0>
1c00ab9c:	00269613          	slli	a2,a3,0x2
1c00aba0:	01e6df13          	srli	t5,a3,0x1e
1c00aba4:	00259713          	slli	a4,a1,0x2
1c00aba8:	96b2                	add	a3,a3,a2
1c00abaa:	00ef6733          	or	a4,t5,a4
1c00abae:	95ba                	add	a1,a1,a4
1c00abb0:	00c6b633          	sltu	a2,a3,a2
1c00abb4:	95b2                	add	a1,a1,a2
1c00abb6:	01f6d713          	srli	a4,a3,0x1f
1c00abba:	0509                	addi	a0,a0,2
1c00abbc:	137d                	addi	t1,t1,-1
1c00abbe:	01159663          	bne	a1,a7,1c00abca <pos_libc_prf+0x542>
1c00abc2:	0686                	slli	a3,a3,0x1
1c00abc4:	ffe76593          	ori	a1,a4,-2
1c00abc8:	853e                	mv	a0,a5
1c00abca:	fbc548e3          	blt	a0,t3,1c00ab7a <pos_libc_prf+0x4f2>
1c00abce:	06a05563          	blez	a0,1c00ac38 <pos_libc_prf+0x5b0>
1c00abd2:	800008b7          	lui	a7,0x80000
1c00abd6:	4e15                	li	t3,5
1c00abd8:	fff8c893          	not	a7,a7
1c00abdc:	00268613          	addi	a2,a3,2
1c00abe0:	00d636b3          	sltu	a3,a2,a3
1c00abe4:	95b6                	add	a1,a1,a3
1c00abe6:	03c5d7b3          	divu	a5,a1,t3
1c00abea:	00279713          	slli	a4,a5,0x2
1c00abee:	973e                	add	a4,a4,a5
1c00abf0:	8d99                	sub	a1,a1,a4
1c00abf2:	01d59713          	slli	a4,a1,0x1d
1c00abf6:	00365593          	srli	a1,a2,0x3
1c00abfa:	8dd9                	or	a1,a1,a4
1c00abfc:	03c5d5b3          	divu	a1,a1,t3
1c00ac00:	00359693          	slli	a3,a1,0x3
1c00ac04:	00559713          	slli	a4,a1,0x5
1c00ac08:	9736                	add	a4,a4,a3
1c00ac0a:	40e60733          	sub	a4,a2,a4
1c00ac0e:	03c75733          	divu	a4,a4,t3
1c00ac12:	81f5                	srli	a1,a1,0x1d
1c00ac14:	96ba                	add	a3,a3,a4
1c00ac16:	97ae                	add	a5,a5,a1
1c00ac18:	00e6b733          	sltu	a4,a3,a4
1c00ac1c:	00f705b3          	add	a1,a4,a5
1c00ac20:	157d                	addi	a0,a0,-1
1c00ac22:	0305                	addi	t1,t1,1
1c00ac24:	01f6d793          	srli	a5,a3,0x1f
1c00ac28:	0586                	slli	a1,a1,0x1
1c00ac2a:	8ddd                	or	a1,a1,a5
1c00ac2c:	0686                	slli	a3,a3,0x1
1c00ac2e:	157d                	addi	a0,a0,-1
1c00ac30:	feb8fae3          	bleu	a1,a7,1c00ac24 <pos_libc_prf+0x59c>
1c00ac34:	faa044e3          	bgtz	a0,1c00abdc <pos_libc_prf+0x554>
1c00ac38:	4611                	li	a2,4
1c00ac3a:	01f59713          	slli	a4,a1,0x1f
1c00ac3e:	0016d793          	srli	a5,a3,0x1
1c00ac42:	8fd9                	or	a5,a5,a4
1c00ac44:	8a85                	andi	a3,a3,1
1c00ac46:	00f688b3          	add	a7,a3,a5
1c00ac4a:	8185                	srli	a1,a1,0x1
1c00ac4c:	00d8b6b3          	sltu	a3,a7,a3
1c00ac50:	00b68733          	add	a4,a3,a1
1c00ac54:	0505                	addi	a0,a0,1
1c00ac56:	86c6                	mv	a3,a7
1c00ac58:	85ba                	mv	a1,a4
1c00ac5a:	fec510e3          	bne	a0,a2,1c00ac3a <pos_libc_prf+0x5b2>
1c00ac5e:	06700693          	li	a3,103
1c00ac62:	040a48e3          	bltz	s4,1c00b4b2 <pos_libc_prf+0xe2a>
1c00ac66:	70dd8b63          	beq	s11,a3,1c00b37c <pos_libc_prf+0xcf4>
1c00ac6a:	04700693          	li	a3,71
1c00ac6e:	70dd8763          	beq	s11,a3,1c00b37c <pos_libc_prf+0xcf4>
1c00ac72:	06600693          	li	a3,102
1c00ac76:	08dd89e3          	beq	s11,a3,1c00b508 <pos_libc_prf+0xe80>
1c00ac7a:	001a0e13          	addi	t3,s4,1 # 1000001 <__CTOR_LIST__-0x1b000003>
1c00ac7e:	46c1                	li	a3,16
1c00ac80:	01c6d363          	ble	t3,a3,1c00ac86 <pos_libc_prf+0x5fe>
1c00ac84:	4e41                	li	t3,16
1c00ac86:	1e7d                	addi	t3,t3,-1
1c00ac88:	4f81                	li	t6,0
1c00ac8a:	4681                	li	a3,0
1c00ac8c:	08000637          	lui	a2,0x8000
1c00ac90:	4f15                	li	t5,5
1c00ac92:	52fd                	li	t0,-1
1c00ac94:	00268593          	addi	a1,a3,2
1c00ac98:	00d5b7b3          	sltu	a5,a1,a3
1c00ac9c:	97b2                	add	a5,a5,a2
1c00ac9e:	03e7d633          	divu	a2,a5,t5
1c00aca2:	00261693          	slli	a3,a2,0x2
1c00aca6:	96b2                	add	a3,a3,a2
1c00aca8:	8f95                	sub	a5,a5,a3
1c00acaa:	07f6                	slli	a5,a5,0x1d
1c00acac:	0035d513          	srli	a0,a1,0x3
1c00acb0:	8d5d                	or	a0,a0,a5
1c00acb2:	03e55533          	divu	a0,a0,t5
1c00acb6:	00351693          	slli	a3,a0,0x3
1c00acba:	00551793          	slli	a5,a0,0x5
1c00acbe:	97b6                	add	a5,a5,a3
1c00acc0:	40f587b3          	sub	a5,a1,a5
1c00acc4:	03e7d7b3          	divu	a5,a5,t5
1c00acc8:	8175                	srli	a0,a0,0x1d
1c00acca:	96be                	add	a3,a3,a5
1c00accc:	00f6b7b3          	sltu	a5,a3,a5
1c00acd0:	962a                	add	a2,a2,a0
1c00acd2:	963e                	add	a2,a2,a5
1c00acd4:	01f61513          	slli	a0,a2,0x1f
1c00acd8:	0016d793          	srli	a5,a3,0x1
1c00acdc:	0016f593          	andi	a1,a3,1
1c00ace0:	8fc9                	or	a5,a5,a0
1c00ace2:	00f586b3          	add	a3,a1,a5
1c00ace6:	8205                	srli	a2,a2,0x1
1c00ace8:	00b6b7b3          	sltu	a5,a3,a1
1c00acec:	1e7d                	addi	t3,t3,-1
1c00acee:	963e                	add	a2,a2,a5
1c00acf0:	fa5e12e3          	bne	t3,t0,1c00ac94 <pos_libc_prf+0x60c>
1c00acf4:	96c6                	add	a3,a3,a7
1c00acf6:	963a                	add	a2,a2,a4
1c00acf8:	0116b8b3          	sltu	a7,a3,a7
1c00acfc:	9646                	add	a2,a2,a7
1c00acfe:	f00005b7          	lui	a1,0xf0000
1c00ad02:	8df1                	and	a1,a1,a2
1c00ad04:	8736                	mv	a4,a3
1c00ad06:	cdb9                	beqz	a1,1c00ad64 <pos_libc_prf+0x6dc>
1c00ad08:	0689                	addi	a3,a3,2
1c00ad0a:	00e6b733          	sltu	a4,a3,a4
1c00ad0e:	963a                	add	a2,a2,a4
1c00ad10:	4815                	li	a6,5
1c00ad12:	03065533          	divu	a0,a2,a6
1c00ad16:	00251713          	slli	a4,a0,0x2
1c00ad1a:	972a                	add	a4,a4,a0
1c00ad1c:	8e19                	sub	a2,a2,a4
1c00ad1e:	01d61713          	slli	a4,a2,0x1d
1c00ad22:	0036d593          	srli	a1,a3,0x3
1c00ad26:	8dd9                	or	a1,a1,a4
1c00ad28:	0305d5b3          	divu	a1,a1,a6
1c00ad2c:	00359613          	slli	a2,a1,0x3
1c00ad30:	00559713          	slli	a4,a1,0x5
1c00ad34:	9732                	add	a4,a4,a2
1c00ad36:	40e68733          	sub	a4,a3,a4
1c00ad3a:	03075733          	divu	a4,a4,a6
1c00ad3e:	81f5                	srli	a1,a1,0x1d
1c00ad40:	963a                	add	a2,a2,a4
1c00ad42:	00e63733          	sltu	a4,a2,a4
1c00ad46:	95aa                	add	a1,a1,a0
1c00ad48:	00b706b3          	add	a3,a4,a1
1c00ad4c:	01f69593          	slli	a1,a3,0x1f
1c00ad50:	00165713          	srli	a4,a2,0x1
1c00ad54:	8f4d                	or	a4,a4,a1
1c00ad56:	8a05                	andi	a2,a2,1
1c00ad58:	9732                	add	a4,a4,a2
1c00ad5a:	8285                	srli	a3,a3,0x1
1c00ad5c:	00c73633          	sltu	a2,a4,a2
1c00ad60:	9636                	add	a2,a2,a3
1c00ad62:	0305                	addi	t1,t1,1
1c00ad64:	001e8993          	addi	s3,t4,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00ad68:	06600693          	li	a3,102
1c00ad6c:	85ce                	mv	a1,s3
1c00ad6e:	6add8663          	beq	s11,a3,1c00b41a <pos_libc_prf+0xd92>
1c00ad72:	00271693          	slli	a3,a4,0x2
1c00ad76:	01e75593          	srli	a1,a4,0x1e
1c00ad7a:	00261513          	slli	a0,a2,0x2
1c00ad7e:	9736                	add	a4,a4,a3
1c00ad80:	8d4d                	or	a0,a0,a1
1c00ad82:	962a                	add	a2,a2,a0
1c00ad84:	00d735b3          	sltu	a1,a4,a3
1c00ad88:	95b2                	add	a1,a1,a2
1c00ad8a:	01f75693          	srli	a3,a4,0x1f
1c00ad8e:	0586                	slli	a1,a1,0x1
1c00ad90:	8dd5                	or	a1,a1,a3
1c00ad92:	01c5d693          	srli	a3,a1,0x1c
1c00ad96:	03068613          	addi	a2,a3,48
1c00ad9a:	00d036b3          	snez	a3,a3
1c00ad9e:	10000537          	lui	a0,0x10000
1c00ada2:	40d30333          	sub	t1,t1,a3
1c00ada6:	46b2                	lw	a3,12(sp)
1c00ada8:	157d                	addi	a0,a0,-1
1c00adaa:	00ce8023          	sb	a2,0(t4)
1c00adae:	0706                	slli	a4,a4,0x1
1c00adb0:	8de9                	and	a1,a1,a0
1c00adb2:	64068b63          	beqz	a3,1c00b408 <pos_libc_prf+0xd80>
1c00adb6:	02e00693          	li	a3,46
1c00adba:	00de80a3          	sb	a3,1(t4)
1c00adbe:	002e8513          	addi	a0,t4,2
1c00adc2:	020a00e3          	beqz	s4,1c00b5e2 <pos_libc_prf+0xf5a>
1c00adc6:	014509b3          	add	s3,a0,s4
1c00adca:	48bd                	li	a7,15
1c00adcc:	03000e13          	li	t3,48
1c00add0:	00271793          	slli	a5,a4,0x2
1c00add4:	01e75813          	srli	a6,a4,0x1e
1c00add8:	00259693          	slli	a3,a1,0x2
1c00addc:	00e78633          	add	a2,a5,a4
1c00ade0:	00d866b3          	or	a3,a6,a3
1c00ade4:	96ae                	add	a3,a3,a1
1c00ade6:	00f637b3          	sltu	a5,a2,a5
1c00adea:	97b6                	add	a5,a5,a3
1c00adec:	0786                	slli	a5,a5,0x1
1c00adee:	01f65693          	srli	a3,a2,0x1f
1c00adf2:	8fd5                	or	a5,a5,a3
1c00adf4:	01c7d693          	srli	a3,a5,0x1c
1c00adf8:	03068693          	addi	a3,a3,48
1c00adfc:	0505                	addi	a0,a0,1
1c00adfe:	3b105663          	blez	a7,1c00b1aa <pos_libc_prf+0xb22>
1c00ae02:	10000837          	lui	a6,0x10000
1c00ae06:	187d                	addi	a6,a6,-1
1c00ae08:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00ae0c:	18fd                	addi	a7,a7,-1
1c00ae0e:	00161713          	slli	a4,a2,0x1
1c00ae12:	0107f5b3          	and	a1,a5,a6
1c00ae16:	faa99de3          	bne	s3,a0,1c00add0 <pos_libc_prf+0x748>
1c00ae1a:	0c0f9263          	bnez	t6,1c00aede <pos_libc_prf+0x856>
1c00ae1e:	fdfdf713          	andi	a4,s11,-33
1c00ae22:	04500693          	li	a3,69
1c00ae26:	02d71963          	bne	a4,a3,1c00ae58 <pos_libc_prf+0x7d0>
1c00ae2a:	87ee                	mv	a5,s11
1c00ae2c:	00f98023          	sb	a5,0(s3)
1c00ae30:	6a034763          	bltz	t1,1c00b4de <pos_libc_prf+0xe56>
1c00ae34:	02b00793          	li	a5,43
1c00ae38:	00f980a3          	sb	a5,1(s3)
1c00ae3c:	47a9                	li	a5,10
1c00ae3e:	02f34733          	div	a4,t1,a5
1c00ae42:	02f367b3          	rem	a5,t1,a5
1c00ae46:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00ae4a:	03078793          	addi	a5,a5,48
1c00ae4e:	00e98123          	sb	a4,2(s3)
1c00ae52:	00f981a3          	sb	a5,3(s3)
1c00ae56:	0991                	addi	s3,s3,4
1c00ae58:	00098023          	sb	zero,0(s3)
1c00ae5c:	419989b3          	sub	s3,s3,s9
1c00ae60:	48d2                	lw	a7,20(sp)
1c00ae62:	4662                	lw	a2,24(sp)
1c00ae64:	00c8e8b3          	or	a7,a7,a2
1c00ae68:	c646                	sw	a7,12(sp)
1c00ae6a:	34089d63          	bnez	a7,1c00b1c4 <pos_libc_prf+0xb3c>
1c00ae6e:	02414703          	lbu	a4,36(sp)
1c00ae72:	02d00793          	li	a5,45
1c00ae76:	34f70763          	beq	a4,a5,1c00b1c4 <pos_libc_prf+0xb3c>
1c00ae7a:	0c800793          	li	a5,200
1c00ae7e:	ab37cbe3          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00ae82:	9b29c2e3          	blt	s3,s2,1c00a826 <pos_libc_prf+0x19e>
1c00ae86:	b461                	j	1c00a90e <pos_libc_prf+0x286>
1c00ae88:	0585                	addi	a1,a1,1
1c00ae8a:	00271793          	slli	a5,a4,0x2
1c00ae8e:	01e75e13          	srli	t3,a4,0x1e
1c00ae92:	00261693          	slli	a3,a2,0x2
1c00ae96:	00e788b3          	add	a7,a5,a4
1c00ae9a:	00de66b3          	or	a3,t3,a3
1c00ae9e:	96b2                	add	a3,a3,a2
1c00aea0:	00f8b7b3          	sltu	a5,a7,a5
1c00aea4:	97b6                	add	a5,a5,a3
1c00aea6:	0786                	slli	a5,a5,0x1
1c00aea8:	01f8d693          	srli	a3,a7,0x1f
1c00aeac:	8fd5                	or	a5,a5,a3
1c00aeae:	01c7de13          	srli	t3,a5,0x1c
1c00aeb2:	03000693          	li	a3,48
1c00aeb6:	00a05c63          	blez	a0,1c00aece <pos_libc_prf+0x846>
1c00aeba:	00189713          	slli	a4,a7,0x1
1c00aebe:	100008b7          	lui	a7,0x10000
1c00aec2:	18fd                	addi	a7,a7,-1
1c00aec4:	030e0693          	addi	a3,t3,48
1c00aec8:	157d                	addi	a0,a0,-1
1c00aeca:	0117f633          	and	a2,a5,a7
1c00aece:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00aed2:	fab99be3          	bne	s3,a1,1c00ae88 <pos_libc_prf+0x800>
1c00aed6:	014809b3          	add	s3,a6,s4
1c00aeda:	f60f8fe3          	beqz	t6,1c00ae58 <pos_libc_prf+0x7d0>
1c00aede:	03000613          	li	a2,48
1c00aee2:	a011                	j	1c00aee6 <pos_libc_prf+0x85e>
1c00aee4:	89ba                	mv	s3,a4
1c00aee6:	fff9c683          	lbu	a3,-1(s3)
1c00aeea:	fff98713          	addi	a4,s3,-1
1c00aeee:	fec68be3          	beq	a3,a2,1c00aee4 <pos_libc_prf+0x85c>
1c00aef2:	02e00613          	li	a2,46
1c00aef6:	f2c694e3          	bne	a3,a2,1c00ae1e <pos_libc_prf+0x796>
1c00aefa:	89ba                	mv	s3,a4
1c00aefc:	b70d                	j	1c00ae1e <pos_libc_prf+0x796>
1c00aefe:	06300713          	li	a4,99
1c00af02:	16ed8863          	beq	s11,a4,1c00b072 <pos_libc_prf+0x9ea>
1c00af06:	0db74363          	blt	a4,s11,1c00afcc <pos_libc_prf+0x944>
1c00af0a:	05800713          	li	a4,88
1c00af0e:	28ed9763          	bne	s11,a4,1c00b19c <pos_libc_prf+0xb14>
1c00af12:	48b2                	lw	a7,12(sp)
1c00af14:	004c0813          	addi	a6,s8,4
1c00af18:	000c2583          	lw	a1,0(s8)
1c00af1c:	3c088a63          	beqz	a7,1c00b2f0 <pos_libc_prf+0xc68>
1c00af20:	7761                	lui	a4,0xffff8
1c00af22:	83074713          	xori	a4,a4,-2000
1c00af26:	02e11223          	sh	a4,36(sp)
1c00af2a:	4889                	li	a7,2
1c00af2c:	02610693          	addi	a3,sp,38
1c00af30:	8736                	mv	a4,a3
1c00af32:	4e25                	li	t3,9
1c00af34:	00f5f613          	andi	a2,a1,15
1c00af38:	0ff67793          	andi	a5,a2,255
1c00af3c:	03078513          	addi	a0,a5,48
1c00af40:	8191                	srli	a1,a1,0x4
1c00af42:	05778793          	addi	a5,a5,87
1c00af46:	0705                	addi	a4,a4,1
1c00af48:	06ce6a63          	bltu	t3,a2,1c00afbc <pos_libc_prf+0x934>
1c00af4c:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00af50:	f1f5                	bnez	a1,1c00af34 <pos_libc_prf+0x8ac>
1c00af52:	40d709b3          	sub	s3,a4,a3
1c00af56:	0149db63          	ble	s4,s3,1c00af6c <pos_libc_prf+0x8e4>
1c00af5a:	03000613          	li	a2,48
1c00af5e:	0705                	addi	a4,a4,1
1c00af60:	fec70fa3          	sb	a2,-1(a4)
1c00af64:	40d709b3          	sub	s3,a4,a3
1c00af68:	ff49cbe3          	blt	s3,s4,1c00af5e <pos_libc_prf+0x8d6>
1c00af6c:	00070023          	sb	zero,0(a4)
1c00af70:	177d                	addi	a4,a4,-1
1c00af72:	00e6fe63          	bleu	a4,a3,1c00af8e <pos_libc_prf+0x906>
1c00af76:	0006c603          	lbu	a2,0(a3)
1c00af7a:	00074783          	lbu	a5,0(a4)
1c00af7e:	00c70023          	sb	a2,0(a4)
1c00af82:	00f68023          	sb	a5,0(a3)
1c00af86:	177d                	addi	a4,a4,-1
1c00af88:	0685                	addi	a3,a3,1
1c00af8a:	fee6e6e3          	bltu	a3,a4,1c00af76 <pos_libc_prf+0x8ee>
1c00af8e:	05800713          	li	a4,88
1c00af92:	36ed8263          	beq	s11,a4,1c00b2f6 <pos_libc_prf+0xc6e>
1c00af96:	46b2                	lw	a3,12(sp)
1c00af98:	99c6                	add	s3,s3,a7
1c00af9a:	c299                	beqz	a3,1c00afa0 <pos_libc_prf+0x918>
1c00af9c:	4709                	li	a4,2
1c00af9e:	c63a                	sw	a4,12(sp)
1c00afa0:	57fd                	li	a5,-1
1c00afa2:	3afa0263          	beq	s4,a5,1c00b346 <pos_libc_prf+0xcbe>
1c00afa6:	0c800793          	li	a5,200
1c00afaa:	9937c5e3          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00afae:	02000793          	li	a5,32
1c00afb2:	c83e                	sw	a5,16(sp)
1c00afb4:	8c42                	mv	s8,a6
1c00afb6:	8729c8e3          	blt	s3,s2,1c00a826 <pos_libc_prf+0x19e>
1c00afba:	ba91                	j	1c00a90e <pos_libc_prf+0x286>
1c00afbc:	fef70fa3          	sb	a5,-1(a4)
1c00afc0:	f9b5                	bnez	a1,1c00af34 <pos_libc_prf+0x8ac>
1c00afc2:	bf41                	j	1c00af52 <pos_libc_prf+0x8ca>
1c00afc4:	06900713          	li	a4,105
1c00afc8:	1ced9a63          	bne	s11,a4,1c00b19c <pos_libc_prf+0xb14>
1c00afcc:	000c2583          	lw	a1,0(s8)
1c00afd0:	0c11                	addi	s8,s8,4
1c00afd2:	3805c863          	bltz	a1,1c00b362 <pos_libc_prf+0xcda>
1c00afd6:	48d2                	lw	a7,20(sp)
1c00afd8:	872e                	mv	a4,a1
1c00afda:	36089d63          	bnez	a7,1c00b354 <pos_libc_prf+0xccc>
1c00afde:	4662                	lw	a2,24(sp)
1c00afe0:	87e6                	mv	a5,s9
1c00afe2:	c619                	beqz	a2,1c00aff0 <pos_libc_prf+0x968>
1c00afe4:	02000793          	li	a5,32
1c00afe8:	02f10223          	sb	a5,36(sp)
1c00afec:	02510793          	addi	a5,sp,37
1c00aff0:	89be                	mv	s3,a5
1c00aff2:	4629                	li	a2,10
1c00aff4:	02c776b3          	remu	a3,a4,a2
1c00aff8:	02c75733          	divu	a4,a4,a2
1c00affc:	0985                	addi	s3,s3,1
1c00affe:	03068693          	addi	a3,a3,48
1c00b002:	fed98fa3          	sb	a3,-1(s3)
1c00b006:	f77d                	bnez	a4,1c00aff4 <pos_libc_prf+0x96c>
1c00b008:	40f98733          	sub	a4,s3,a5
1c00b00c:	01475b63          	ble	s4,a4,1c00b022 <pos_libc_prf+0x99a>
1c00b010:	03000693          	li	a3,48
1c00b014:	0985                	addi	s3,s3,1
1c00b016:	fed98fa3          	sb	a3,-1(s3)
1c00b01a:	40f98733          	sub	a4,s3,a5
1c00b01e:	ff474be3          	blt	a4,s4,1c00b014 <pos_libc_prf+0x98c>
1c00b022:	00098023          	sb	zero,0(s3)
1c00b026:	fff98713          	addi	a4,s3,-1
1c00b02a:	00e7fe63          	bleu	a4,a5,1c00b046 <pos_libc_prf+0x9be>
1c00b02e:	0007c603          	lbu	a2,0(a5)
1c00b032:	00074683          	lbu	a3,0(a4)
1c00b036:	00c70023          	sb	a2,0(a4)
1c00b03a:	00d78023          	sb	a3,0(a5)
1c00b03e:	177d                	addi	a4,a4,-1
1c00b040:	0785                	addi	a5,a5,1
1c00b042:	fee7e6e3          	bltu	a5,a4,1c00b02e <pos_libc_prf+0x9a6>
1c00b046:	46d2                	lw	a3,20(sp)
1c00b048:	4762                	lw	a4,24(sp)
1c00b04a:	419989b3          	sub	s3,s3,s9
1c00b04e:	8ed9                	or	a3,a3,a4
1c00b050:	c636                	sw	a3,12(sp)
1c00b052:	e299                	bnez	a3,1c00b058 <pos_libc_prf+0x9d0>
1c00b054:	81fd                	srli	a1,a1,0x1f
1c00b056:	c62e                	sw	a1,12(sp)
1c00b058:	57fd                	li	a5,-1
1c00b05a:	e2fa00e3          	beq	s4,a5,1c00ae7a <pos_libc_prf+0x7f2>
1c00b05e:	0c800793          	li	a5,200
1c00b062:	8d37c9e3          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00b066:	02000793          	li	a5,32
1c00b06a:	c83e                	sw	a5,16(sp)
1c00b06c:	fb29cd63          	blt	s3,s2,1c00a826 <pos_libc_prf+0x19e>
1c00b070:	b879                	j	1c00a90e <pos_libc_prf+0x286>
1c00b072:	000c2783          	lw	a5,0(s8)
1c00b076:	020102a3          	sb	zero,37(sp)
1c00b07a:	02f10223          	sb	a5,36(sp)
1c00b07e:	0c11                	addi	s8,s8,4
1c00b080:	4985                	li	s3,1
1c00b082:	f9eff06f          	j	1c00a820 <pos_libc_prf+0x198>
1c00b086:	000c2703          	lw	a4,0(s8)
1c00b08a:	87e6                	mv	a5,s9
1c00b08c:	0c11                	addi	s8,s8,4
1c00b08e:	4629                	li	a2,10
1c00b090:	02c776b3          	remu	a3,a4,a2
1c00b094:	02c75733          	divu	a4,a4,a2
1c00b098:	0785                	addi	a5,a5,1
1c00b09a:	03068693          	addi	a3,a3,48
1c00b09e:	fed78fa3          	sb	a3,-1(a5)
1c00b0a2:	f77d                	bnez	a4,1c00b090 <pos_libc_prf+0xa08>
1c00b0a4:	419789b3          	sub	s3,a5,s9
1c00b0a8:	0149db63          	ble	s4,s3,1c00b0be <pos_libc_prf+0xa36>
1c00b0ac:	03000713          	li	a4,48
1c00b0b0:	0785                	addi	a5,a5,1
1c00b0b2:	fee78fa3          	sb	a4,-1(a5)
1c00b0b6:	419789b3          	sub	s3,a5,s9
1c00b0ba:	ff49cbe3          	blt	s3,s4,1c00b0b0 <pos_libc_prf+0xa28>
1c00b0be:	00078023          	sb	zero,0(a5)
1c00b0c2:	17fd                	addi	a5,a5,-1
1c00b0c4:	00fcff63          	bleu	a5,s9,1c00b0e2 <pos_libc_prf+0xa5a>
1c00b0c8:	8766                	mv	a4,s9
1c00b0ca:	00074603          	lbu	a2,0(a4)
1c00b0ce:	0007c683          	lbu	a3,0(a5)
1c00b0d2:	00c78023          	sb	a2,0(a5)
1c00b0d6:	00d70023          	sb	a3,0(a4)
1c00b0da:	17fd                	addi	a5,a5,-1
1c00b0dc:	0705                	addi	a4,a4,1
1c00b0de:	fef766e3          	bltu	a4,a5,1c00b0ca <pos_libc_prf+0xa42>
1c00b0e2:	57fd                	li	a5,-1
1c00b0e4:	0cfa0a63          	beq	s4,a5,1c00b1b8 <pos_libc_prf+0xb30>
1c00b0e8:	0c800793          	li	a5,200
1c00b0ec:	8537c4e3          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00b0f0:	02000813          	li	a6,32
1c00b0f4:	c602                	sw	zero,12(sp)
1c00b0f6:	c842                	sw	a6,16(sp)
1c00b0f8:	ba45                	j	1c00aaa8 <pos_libc_prf+0x420>
1c00b0fa:	77e1                	lui	a5,0xffff8
1c00b0fc:	8307c793          	xori	a5,a5,-2000
1c00b100:	02610713          	addi	a4,sp,38
1c00b104:	000c2603          	lw	a2,0(s8)
1c00b108:	02f11223          	sh	a5,36(sp)
1c00b10c:	0c11                	addi	s8,s8,4
1c00b10e:	87ba                	mv	a5,a4
1c00b110:	4825                	li	a6,9
1c00b112:	00f67593          	andi	a1,a2,15
1c00b116:	0ff5f693          	andi	a3,a1,255
1c00b11a:	03068513          	addi	a0,a3,48
1c00b11e:	8211                	srli	a2,a2,0x4
1c00b120:	05768693          	addi	a3,a3,87
1c00b124:	0785                	addi	a5,a5,1
1c00b126:	06b86163          	bltu	a6,a1,1c00b188 <pos_libc_prf+0xb00>
1c00b12a:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00b12e:	f275                	bnez	a2,1c00b112 <pos_libc_prf+0xa8a>
1c00b130:	40e789b3          	sub	s3,a5,a4
1c00b134:	469d                	li	a3,7
1c00b136:	0136cb63          	blt	a3,s3,1c00b14c <pos_libc_prf+0xac4>
1c00b13a:	03000613          	li	a2,48
1c00b13e:	0785                	addi	a5,a5,1
1c00b140:	fec78fa3          	sb	a2,-1(a5)
1c00b144:	40e789b3          	sub	s3,a5,a4
1c00b148:	ff36dbe3          	ble	s3,a3,1c00b13e <pos_libc_prf+0xab6>
1c00b14c:	00078023          	sb	zero,0(a5)
1c00b150:	17fd                	addi	a5,a5,-1
1c00b152:	00f77e63          	bleu	a5,a4,1c00b16e <pos_libc_prf+0xae6>
1c00b156:	00074603          	lbu	a2,0(a4)
1c00b15a:	0007c683          	lbu	a3,0(a5)
1c00b15e:	00c78023          	sb	a2,0(a5)
1c00b162:	00d70023          	sb	a3,0(a4)
1c00b166:	17fd                	addi	a5,a5,-1
1c00b168:	0705                	addi	a4,a4,1
1c00b16a:	fef766e3          	bltu	a4,a5,1c00b156 <pos_libc_prf+0xace>
1c00b16e:	57fd                	li	a5,-1
1c00b170:	0989                	addi	s3,s3,2
1c00b172:	04fa0363          	beq	s4,a5,1c00b1b8 <pos_libc_prf+0xb30>
1c00b176:	0c800793          	li	a5,200
1c00b17a:	fb37cd63          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00b17e:	02000893          	li	a7,32
1c00b182:	c602                	sw	zero,12(sp)
1c00b184:	c846                	sw	a7,16(sp)
1c00b186:	b20d                	j	1c00aaa8 <pos_libc_prf+0x420>
1c00b188:	fed78fa3          	sb	a3,-1(a5)
1c00b18c:	f259                	bnez	a2,1c00b112 <pos_libc_prf+0xa8a>
1c00b18e:	b74d                	j	1c00b130 <pos_libc_prf+0xaa8>
1c00b190:	000c2783          	lw	a5,0(s8)
1c00b194:	0c11                	addi	s8,s8,4
1c00b196:	c380                	sw	s0,0(a5)
1c00b198:	d36ff06f          	j	1c00a6ce <pos_libc_prf+0x46>
1c00b19c:	0c800713          	li	a4,200
1c00b1a0:	d3b75763          	ble	s11,a4,1c00a6ce <pos_libc_prf+0x46>
1c00b1a4:	547d                	li	s0,-1
1c00b1a6:	d4cff06f          	j	1c00a6f2 <pos_libc_prf+0x6a>
1c00b1aa:	ffc50fa3          	sb	t3,-1(a0)
1c00b1ae:	c2a991e3          	bne	s3,a0,1c00add0 <pos_libc_prf+0x748>
1c00b1b2:	c60f86e3          	beqz	t6,1c00ae1e <pos_libc_prf+0x796>
1c00b1b6:	b325                	j	1c00aede <pos_libc_prf+0x856>
1c00b1b8:	0c800793          	li	a5,200
1c00b1bc:	f737cc63          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00b1c0:	c602                	sw	zero,12(sp)
1c00b1c2:	b0dd                	j	1c00aaa8 <pos_libc_prf+0x420>
1c00b1c4:	0c800793          	li	a5,200
1c00b1c8:	f737c663          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00b1cc:	4705                	li	a4,1
1c00b1ce:	c63a                	sw	a4,12(sp)
1c00b1d0:	b8e1                	j	1c00aaa8 <pos_libc_prf+0x420>
1c00b1d2:	41390a33          	sub	s4,s2,s3
1c00b1d6:	00198613          	addi	a2,s3,1
1c00b1da:	85e6                	mv	a1,s9
1c00b1dc:	014c8533          	add	a0,s9,s4
1c00b1e0:	a4aff0ef          	jal	ra,1c00a42a <memmove>
1c00b1e4:	46c2                	lw	a3,16(sp)
1c00b1e6:	02000793          	li	a5,32
1c00b1ea:	30f68163          	beq	a3,a5,1c00b4ec <pos_libc_prf+0xe64>
1c00b1ee:	4732                	lw	a4,12(sp)
1c00b1f0:	89ca                	mv	s3,s2
1c00b1f2:	9a3a                	add	s4,s4,a4
1c00b1f4:	f1475d63          	ble	s4,a4,1c00a90e <pos_libc_prf+0x286>
1c00b1f8:	4832                	lw	a6,12(sp)
1c00b1fa:	4715                	li	a4,5
1c00b1fc:	010c87b3          	add	a5,s9,a6
1c00b200:	40f007b3          	neg	a5,a5
1c00b204:	8b8d                	andi	a5,a5,3
1c00b206:	00378693          	addi	a3,a5,3
1c00b20a:	410a05b3          	sub	a1,s4,a6
1c00b20e:	00e6f363          	bleu	a4,a3,1c00b214 <pos_libc_prf+0xb8c>
1c00b212:	4695                	li	a3,5
1c00b214:	48b2                	lw	a7,12(sp)
1c00b216:	fffa0713          	addi	a4,s4,-1
1c00b21a:	41170733          	sub	a4,a4,a7
1c00b21e:	06d76b63          	bltu	a4,a3,1c00b294 <pos_libc_prf+0xc0c>
1c00b222:	86c6                	mv	a3,a7
1c00b224:	cb9d                	beqz	a5,1c00b25a <pos_libc_prf+0xbd2>
1c00b226:	46c2                	lw	a3,16(sp)
1c00b228:	1988                	addi	a0,sp,240
1c00b22a:	01150733          	add	a4,a0,a7
1c00b22e:	f2d70a23          	sb	a3,-204(a4)
1c00b232:	4705                	li	a4,1
1c00b234:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00b238:	02e78163          	beq	a5,a4,1c00b25a <pos_libc_prf+0xbd2>
1c00b23c:	4742                	lw	a4,16(sp)
1c00b23e:	96aa                	add	a3,a3,a0
1c00b240:	f2e68a23          	sb	a4,-204(a3)
1c00b244:	470d                	li	a4,3
1c00b246:	00288693          	addi	a3,a7,2
1c00b24a:	00e79863          	bne	a5,a4,1c00b25a <pos_libc_prf+0xbd2>
1c00b24e:	4842                	lw	a6,16(sp)
1c00b250:	96aa                	add	a3,a3,a0
1c00b252:	f3068a23          	sb	a6,-204(a3)
1c00b256:	00388693          	addi	a3,a7,3
1c00b25a:	48c2                	lw	a7,16(sp)
1c00b25c:	4832                	lw	a6,12(sp)
1c00b25e:	00889713          	slli	a4,a7,0x8
1c00b262:	01089513          	slli	a0,a7,0x10
1c00b266:	00e8e733          	or	a4,a7,a4
1c00b26a:	8d9d                	sub	a1,a1,a5
1c00b26c:	01889613          	slli	a2,a7,0x18
1c00b270:	8f49                	or	a4,a4,a0
1c00b272:	97c2                	add	a5,a5,a6
1c00b274:	8f51                	or	a4,a4,a2
1c00b276:	0025d513          	srli	a0,a1,0x2
1c00b27a:	97e6                	add	a5,a5,s9
1c00b27c:	4601                	li	a2,0
1c00b27e:	c398                	sw	a4,0(a5)
1c00b280:	0605                	addi	a2,a2,1
1c00b282:	0791                	addi	a5,a5,4
1c00b284:	fea66de3          	bltu	a2,a0,1c00b27e <pos_libc_prf+0xbf6>
1c00b288:	ffc5f793          	andi	a5,a1,-4
1c00b28c:	96be                	add	a3,a3,a5
1c00b28e:	c636                	sw	a3,12(sp)
1c00b290:	e6b78e63          	beq	a5,a1,1c00a90c <pos_libc_prf+0x284>
1c00b294:	46b2                	lw	a3,12(sp)
1c00b296:	0f010893          	addi	a7,sp,240
1c00b29a:	4742                	lw	a4,16(sp)
1c00b29c:	00d887b3          	add	a5,a7,a3
1c00b2a0:	f2e78a23          	sb	a4,-204(a5)
1c00b2a4:	00168793          	addi	a5,a3,1
1c00b2a8:	e747d263          	ble	s4,a5,1c00a90c <pos_libc_prf+0x284>
1c00b2ac:	97c6                	add	a5,a5,a7
1c00b2ae:	f2e78a23          	sb	a4,-204(a5)
1c00b2b2:	00268793          	addi	a5,a3,2
1c00b2b6:	e547db63          	ble	s4,a5,1c00a90c <pos_libc_prf+0x284>
1c00b2ba:	97c6                	add	a5,a5,a7
1c00b2bc:	f2e78a23          	sb	a4,-204(a5)
1c00b2c0:	00368793          	addi	a5,a3,3
1c00b2c4:	e547d463          	ble	s4,a5,1c00a90c <pos_libc_prf+0x284>
1c00b2c8:	97c6                	add	a5,a5,a7
1c00b2ca:	f2e78a23          	sb	a4,-204(a5)
1c00b2ce:	00468793          	addi	a5,a3,4
1c00b2d2:	e347dd63          	ble	s4,a5,1c00a90c <pos_libc_prf+0x284>
1c00b2d6:	97c6                	add	a5,a5,a7
1c00b2d8:	f2e78a23          	sb	a4,-204(a5)
1c00b2dc:	00568a93          	addi	s5,a3,5
1c00b2e0:	e34ad663          	ble	s4,s5,1c00a90c <pos_libc_prf+0x284>
1c00b2e4:	9ac6                	add	s5,s5,a7
1c00b2e6:	f2ea8a23          	sb	a4,-204(s5)
1c00b2ea:	89ca                	mv	s3,s2
1c00b2ec:	e22ff06f          	j	1c00a90e <pos_libc_prf+0x286>
1c00b2f0:	4881                	li	a7,0
1c00b2f2:	1054                	addi	a3,sp,36
1c00b2f4:	b935                	j	1c00af30 <pos_libc_prf+0x8a8>
1c00b2f6:	02414783          	lbu	a5,36(sp)
1c00b2fa:	1058                	addi	a4,sp,36
1c00b2fc:	46e5                	li	a3,25
1c00b2fe:	c8078ce3          	beqz	a5,1c00af96 <pos_libc_prf+0x90e>
1c00b302:	fe078613          	addi	a2,a5,-32
1c00b306:	f9f78793          	addi	a5,a5,-97
1c00b30a:	0ff7f793          	andi	a5,a5,255
1c00b30e:	00f6e963          	bltu	a3,a5,1c00b320 <pos_libc_prf+0xc98>
1c00b312:	00c70023          	sb	a2,0(a4)
1c00b316:	0705                	addi	a4,a4,1
1c00b318:	00074783          	lbu	a5,0(a4)
1c00b31c:	f3fd                	bnez	a5,1c00b302 <pos_libc_prf+0xc7a>
1c00b31e:	b9a5                	j	1c00af96 <pos_libc_prf+0x90e>
1c00b320:	0705                	addi	a4,a4,1
1c00b322:	00074783          	lbu	a5,0(a4)
1c00b326:	fff1                	bnez	a5,1c00b302 <pos_libc_prf+0xc7a>
1c00b328:	b1bd                	j	1c00af96 <pos_libc_prf+0x90e>
1c00b32a:	47d2                	lw	a5,20(sp)
1c00b32c:	20078263          	beqz	a5,1c00b530 <pos_libc_prf+0xea8>
1c00b330:	02b00713          	li	a4,43
1c00b334:	02e10223          	sb	a4,36(sp)
1c00b338:	02510e93          	addi	t4,sp,37
1c00b33c:	4301                	li	t1,0
1c00b33e:	4501                	li	a0,0
1c00b340:	4681                	li	a3,0
1c00b342:	4581                	li	a1,0
1c00b344:	b8d5                	j	1c00ac38 <pos_libc_prf+0x5b0>
1c00b346:	0c800793          	li	a5,200
1c00b34a:	df37c563          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00b34e:	8c42                	mv	s8,a6
1c00b350:	f58ff06f          	j	1c00aaa8 <pos_libc_prf+0x420>
1c00b354:	02b00793          	li	a5,43
1c00b358:	02f10223          	sb	a5,36(sp)
1c00b35c:	02510793          	addi	a5,sp,37
1c00b360:	b941                	j	1c00aff0 <pos_libc_prf+0x968>
1c00b362:	02d00793          	li	a5,45
1c00b366:	02f10223          	sb	a5,36(sp)
1c00b36a:	800007b7          	lui	a5,0x80000
1c00b36e:	22f58363          	beq	a1,a5,1c00b594 <pos_libc_prf+0xf0c>
1c00b372:	40b00733          	neg	a4,a1
1c00b376:	02510793          	addi	a5,sp,37
1c00b37a:	b99d                	j	1c00aff0 <pos_libc_prf+0x968>
1c00b37c:	47b2                	lw	a5,12(sp)
1c00b37e:	4f81                	li	t6,0
1c00b380:	e399                	bnez	a5,1c00b386 <pos_libc_prf+0xcfe>
1c00b382:	01403fb3          	snez	t6,s4
1c00b386:	56f5                	li	a3,-3
1c00b388:	001a0e13          	addi	t3,s4,1
1c00b38c:	00d34463          	blt	t1,a3,1c00b394 <pos_libc_prf+0xd0c>
1c00b390:	166e5d63          	ble	t1,t3,1c00b50a <pos_libc_prf+0xe82>
1c00b394:	46c1                	li	a3,16
1c00b396:	01c6d363          	ble	t3,a3,1c00b39c <pos_libc_prf+0xd14>
1c00b39a:	4e41                	li	t3,16
1c00b39c:	06700693          	li	a3,103
1c00b3a0:	1e7d                	addi	t3,t3,-1
1c00b3a2:	1add8963          	beq	s11,a3,1c00b554 <pos_libc_prf+0xecc>
1c00b3a6:	04500d93          	li	s11,69
1c00b3aa:	b0c5                	j	1c00ac8a <pos_libc_prf+0x602>
1c00b3ac:	020102a3          	sb	zero,37(sp)
1c00b3b0:	57fd                	li	a5,-1
1c00b3b2:	89ba                	mv	s3,a4
1c00b3b4:	8c2a                	mv	s8,a0
1c00b3b6:	c6fa0563          	beq	s4,a5,1c00a820 <pos_libc_prf+0x198>
1c00b3ba:	02000813          	li	a6,32
1c00b3be:	c842                	sw	a6,16(sp)
1c00b3c0:	c60ff06f          	j	1c00a820 <pos_libc_prf+0x198>
1c00b3c4:	89b6                	mv	s3,a3
1c00b3c6:	bdeff06f          	j	1c00a7a4 <pos_libc_prf+0x11c>
1c00b3ca:	8766                	mv	a4,s9
1c00b3cc:	1c084c63          	bltz	a6,1c00b5a4 <pos_libc_prf+0xf1c>
1c00b3d0:	8e55                	or	a2,a2,a3
1c00b3d2:	fbfd8793          	addi	a5,s11,-65
1c00b3d6:	00370993          	addi	s3,a4,3
1c00b3da:	46e5                	li	a3,25
1c00b3dc:	10061a63          	bnez	a2,1c00b4f0 <pos_libc_prf+0xe68>
1c00b3e0:	16f6ee63          	bltu	a3,a5,1c00b55c <pos_libc_prf+0xed4>
1c00b3e4:	6795                	lui	a5,0x5
1c00b3e6:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c00b3ea:	00f71023          	sh	a5,0(a4)
1c00b3ee:	04600793          	li	a5,70
1c00b3f2:	00f70123          	sb	a5,2(a4)
1c00b3f6:	000701a3          	sb	zero,3(a4)
1c00b3fa:	419989b3          	sub	s3,s3,s9
1c00b3fe:	b48d                	j	1c00ae60 <pos_libc_prf+0x7d8>
1c00b400:	85e6                	mv	a1,s9
1c00b402:	8766                	mv	a4,s9
1c00b404:	e38ff06f          	j	1c00aa3c <pos_libc_prf+0x3b4>
1c00b408:	a00a09e3          	beqz	s4,1c00ae1a <pos_libc_prf+0x792>
1c00b40c:	02e00693          	li	a3,46
1c00b410:	002e8513          	addi	a0,t4,2
1c00b414:	00de80a3          	sb	a3,1(t4)
1c00b418:	b27d                	j	1c00adc6 <pos_libc_prf+0x73e>
1c00b41a:	14605b63          	blez	t1,1c00b570 <pos_libc_prf+0xee8>
1c00b41e:	006e89b3          	add	s3,t4,t1
1c00b422:	4541                	li	a0,16
1c00b424:	03000893          	li	a7,48
1c00b428:	00271793          	slli	a5,a4,0x2
1c00b42c:	01e75313          	srli	t1,a4,0x1e
1c00b430:	00261693          	slli	a3,a2,0x2
1c00b434:	00e78833          	add	a6,a5,a4
1c00b438:	00d366b3          	or	a3,t1,a3
1c00b43c:	96b2                	add	a3,a3,a2
1c00b43e:	00f837b3          	sltu	a5,a6,a5
1c00b442:	97b6                	add	a5,a5,a3
1c00b444:	0786                	slli	a5,a5,0x1
1c00b446:	01f85693          	srli	a3,a6,0x1f
1c00b44a:	8fd5                	or	a5,a5,a3
1c00b44c:	01c7d693          	srli	a3,a5,0x1c
1c00b450:	03068693          	addi	a3,a3,48
1c00b454:	02a05063          	blez	a0,1c00b474 <pos_libc_prf+0xdec>
1c00b458:	00181713          	slli	a4,a6,0x1
1c00b45c:	10000837          	lui	a6,0x10000
1c00b460:	187d                	addi	a6,a6,-1
1c00b462:	fed58fa3          	sb	a3,-1(a1)
1c00b466:	157d                	addi	a0,a0,-1
1c00b468:	0107f633          	and	a2,a5,a6
1c00b46c:	00b98863          	beq	s3,a1,1c00b47c <pos_libc_prf+0xdf4>
1c00b470:	0585                	addi	a1,a1,1
1c00b472:	bf5d                	j	1c00b428 <pos_libc_prf+0xda0>
1c00b474:	ff158fa3          	sb	a7,-1(a1)
1c00b478:	feb99ce3          	bne	s3,a1,1c00b470 <pos_libc_prf+0xde8>
1c00b47c:	4301                	li	t1,0
1c00b47e:	48b2                	lw	a7,12(sp)
1c00b480:	00089463          	bnez	a7,1c00b488 <pos_libc_prf+0xe00>
1c00b484:	a40a0be3          	beqz	s4,1c00aeda <pos_libc_prf+0x852>
1c00b488:	00198813          	addi	a6,s3,1
1c00b48c:	001a0693          	addi	a3,s4,1
1c00b490:	02e00593          	li	a1,46
1c00b494:	00b98023          	sb	a1,0(s3)
1c00b498:	99b6                	add	s3,s3,a3
1c00b49a:	85c2                	mv	a1,a6
1c00b49c:	03000693          	li	a3,48
1c00b4a0:	a2b98be3          	beq	s3,a1,1c00aed6 <pos_libc_prf+0x84e>
1c00b4a4:	0585                	addi	a1,a1,1
1c00b4a6:	9e0302e3          	beqz	t1,1c00ae8a <pos_libc_prf+0x802>
1c00b4aa:	fed58fa3          	sb	a3,-1(a1)
1c00b4ae:	0305                	addi	t1,t1,1
1c00b4b0:	bfc5                	j	1c00b4a0 <pos_libc_prf+0xe18>
1c00b4b2:	4a19                	li	s4,6
1c00b4b4:	fadd9b63          	bne	s11,a3,1c00ac6a <pos_libc_prf+0x5e2>
1c00b4b8:	46b2                	lw	a3,12(sp)
1c00b4ba:	57f5                	li	a5,-3
1c00b4bc:	0016cf93          	xori	t6,a3,1
1c00b4c0:	08f35663          	ble	a5,t1,1c00b54c <pos_libc_prf+0xec4>
1c00b4c4:	06500d93          	li	s11,101
1c00b4c8:	4e19                	li	t3,6
1c00b4ca:	fc0ff06f          	j	1c00ac8a <pos_libc_prf+0x602>
1c00b4ce:	0c800793          	li	a5,200
1c00b4d2:	c737c163          	blt	a5,s3,1c00a934 <pos_libc_prf+0x2ac>
1c00b4d6:	8c2a                	mv	s8,a0
1c00b4d8:	c602                	sw	zero,12(sp)
1c00b4da:	dceff06f          	j	1c00aaa8 <pos_libc_prf+0x420>
1c00b4de:	02d00793          	li	a5,45
1c00b4e2:	40600333          	neg	t1,t1
1c00b4e6:	00f980a3          	sb	a5,1(s3)
1c00b4ea:	ba89                	j	1c00ae3c <pos_libc_prf+0x7b4>
1c00b4ec:	c602                	sw	zero,12(sp)
1c00b4ee:	b329                	j	1c00b1f8 <pos_libc_prf+0xb70>
1c00b4f0:	0cf6ed63          	bltu	a3,a5,1c00b5ca <pos_libc_prf+0xf42>
1c00b4f4:	6791                	lui	a5,0x4
1c00b4f6:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c00b4fa:	00f71023          	sh	a5,0(a4)
1c00b4fe:	04e00793          	li	a5,78
1c00b502:	00f70123          	sb	a5,2(a4)
1c00b506:	bdc5                	j	1c00b3f6 <pos_libc_prf+0xd6e>
1c00b508:	4f81                	li	t6,0
1c00b50a:	014307b3          	add	a5,t1,s4
1c00b50e:	0807c863          	bltz	a5,1c00b59e <pos_libc_prf+0xf16>
1c00b512:	46c1                	li	a3,16
1c00b514:	8e3e                	mv	t3,a5
1c00b516:	00f6d363          	ble	a5,a3,1c00b51c <pos_libc_prf+0xe94>
1c00b51a:	4e41                	li	t3,16
1c00b51c:	1e7d                	addi	t3,t3,-1
1c00b51e:	06600d93          	li	s11,102
1c00b522:	f6079463          	bnez	a5,1c00ac8a <pos_libc_prf+0x602>
1c00b526:	4681                	li	a3,0
1c00b528:	08000637          	lui	a2,0x8000
1c00b52c:	fc8ff06f          	j	1c00acf4 <pos_libc_prf+0x66c>
1c00b530:	47e2                	lw	a5,24(sp)
1c00b532:	c7d5                	beqz	a5,1c00b5de <pos_libc_prf+0xf56>
1c00b534:	02000713          	li	a4,32
1c00b538:	02e10223          	sb	a4,36(sp)
1c00b53c:	02510e93          	addi	t4,sp,37
1c00b540:	4301                	li	t1,0
1c00b542:	4501                	li	a0,0
1c00b544:	4681                	li	a3,0
1c00b546:	4581                	li	a1,0
1c00b548:	ef0ff06f          	j	1c00ac38 <pos_libc_prf+0x5b0>
1c00b54c:	479d                	li	a5,7
1c00b54e:	fa67dee3          	ble	t1,a5,1c00b50a <pos_libc_prf+0xe82>
1c00b552:	4e19                	li	t3,6
1c00b554:	06500d93          	li	s11,101
1c00b558:	f32ff06f          	j	1c00ac8a <pos_libc_prf+0x602>
1c00b55c:	679d                	lui	a5,0x7
1c00b55e:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c00b562:	00f71023          	sh	a5,0(a4)
1c00b566:	06600793          	li	a5,102
1c00b56a:	00f70123          	sb	a5,2(a4)
1c00b56e:	b561                	j	1c00b3f6 <pos_libc_prf+0xd6e>
1c00b570:	03000693          	li	a3,48
1c00b574:	00de8023          	sb	a3,0(t4)
1c00b578:	4541                	li	a0,16
1c00b57a:	b711                	j	1c00b47e <pos_libc_prf+0xdf6>
1c00b57c:	48e2                	lw	a7,24(sp)
1c00b57e:	8ee6                	mv	t4,s9
1c00b580:	dc088e63          	beqz	a7,1c00ab5c <pos_libc_prf+0x4d4>
1c00b584:	02000713          	li	a4,32
1c00b588:	02e10223          	sb	a4,36(sp)
1c00b58c:	02510e93          	addi	t4,sp,37
1c00b590:	dccff06f          	j	1c00ab5c <pos_libc_prf+0x4d4>
1c00b594:	80000737          	lui	a4,0x80000
1c00b598:	02510793          	addi	a5,sp,37
1c00b59c:	bc91                	j	1c00aff0 <pos_libc_prf+0x968>
1c00b59e:	06600d93          	li	s11,102
1c00b5a2:	b751                	j	1c00b526 <pos_libc_prf+0xe9e>
1c00b5a4:	02d00713          	li	a4,45
1c00b5a8:	02e10223          	sb	a4,36(sp)
1c00b5ac:	02510713          	addi	a4,sp,37
1c00b5b0:	b505                	j	1c00b3d0 <pos_libc_prf+0xd48>
1c00b5b2:	a40a5d63          	bgez	s4,1c00a80c <pos_libc_prf+0x184>
1c00b5b6:	a62ff06f          	j	1c00a818 <pos_libc_prf+0x190>
1c00b5ba:	02d00713          	li	a4,45
1c00b5be:	02e10223          	sb	a4,36(sp)
1c00b5c2:	02510e93          	addi	t4,sp,37
1c00b5c6:	d96ff06f          	j	1c00ab5c <pos_libc_prf+0x4d4>
1c00b5ca:	6799                	lui	a5,0x6
1c00b5cc:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c00b5d0:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00b5d4:	06e00793          	li	a5,110
1c00b5d8:	00f70123          	sb	a5,2(a4)
1c00b5dc:	bd29                	j	1c00b3f6 <pos_libc_prf+0xd6e>
1c00b5de:	8ee6                	mv	t4,s9
1c00b5e0:	b785                	j	1c00b540 <pos_libc_prf+0xeb8>
1c00b5e2:	89aa                	mv	s3,a0
1c00b5e4:	820f8de3          	beqz	t6,1c00ae1e <pos_libc_prf+0x796>
1c00b5e8:	b8dd                	j	1c00aede <pos_libc_prf+0x856>

1c00b5ea <pos_init_start>:
1c00b5ea:	1141                	addi	sp,sp,-16
1c00b5ec:	c422                	sw	s0,8(sp)
1c00b5ee:	1c000437          	lui	s0,0x1c000
1c00b5f2:	c606                	sw	ra,12(sp)
1c00b5f4:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00b5f8:	d3ffc0ef          	jal	ra,1c008336 <pos_soc_init>
1c00b5fc:	2275                	jal	1c00b7a8 <pos_irq_init>
1c00b5fe:	2ae1                	jal	1c00b7d6 <pos_soc_event_init>
1c00b600:	2a31                	jal	1c00b71c <pos_allocs_init>
1c00b602:	405c                	lw	a5,4(s0)
1c00b604:	c791                	beqz	a5,1c00b610 <pos_init_start+0x26>
1c00b606:	0411                	addi	s0,s0,4
1c00b608:	0411                	addi	s0,s0,4
1c00b60a:	9782                	jalr	a5
1c00b60c:	401c                	lw	a5,0(s0)
1c00b60e:	ffed                	bnez	a5,1c00b608 <pos_init_start+0x1e>
1c00b610:	842ff0ef          	jal	ra,1c00a652 <pos_io_start>
1c00b614:	300467f3          	csrrsi	a5,mstatus,8
1c00b618:	40b2                	lw	ra,12(sp)
1c00b61a:	4422                	lw	s0,8(sp)
1c00b61c:	0141                	addi	sp,sp,16
1c00b61e:	8082                	ret

1c00b620 <pos_init_stop>:
1c00b620:	1141                	addi	sp,sp,-16
1c00b622:	c422                	sw	s0,8(sp)
1c00b624:	1c000437          	lui	s0,0x1c000
1c00b628:	c606                	sw	ra,12(sp)
1c00b62a:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00b62e:	828ff0ef          	jal	ra,1c00a656 <pos_io_stop>
1c00b632:	405c                	lw	a5,4(s0)
1c00b634:	c791                	beqz	a5,1c00b640 <pos_init_stop+0x20>
1c00b636:	0411                	addi	s0,s0,4
1c00b638:	0411                	addi	s0,s0,4
1c00b63a:	9782                	jalr	a5
1c00b63c:	401c                	lw	a5,0(s0)
1c00b63e:	ffed                	bnez	a5,1c00b638 <pos_init_stop+0x18>
1c00b640:	40b2                	lw	ra,12(sp)
1c00b642:	4422                	lw	s0,8(sp)
1c00b644:	0141                	addi	sp,sp,16
1c00b646:	8082                	ret

1c00b648 <pos_alloc_init>:
1c00b648:	00758793          	addi	a5,a1,7
1c00b64c:	9be1                	andi	a5,a5,-8
1c00b64e:	40b785b3          	sub	a1,a5,a1
1c00b652:	c11c                	sw	a5,0(a0)
1c00b654:	8e0d                	sub	a2,a2,a1
1c00b656:	00c05663          	blez	a2,1c00b662 <pos_alloc_init+0x1a>
1c00b65a:	9a61                	andi	a2,a2,-8
1c00b65c:	c390                	sw	a2,0(a5)
1c00b65e:	0007a223          	sw	zero,4(a5)
1c00b662:	8082                	ret

1c00b664 <pos_alloc>:
1c00b664:	4110                	lw	a2,0(a0)
1c00b666:	059d                	addi	a1,a1,7
1c00b668:	99e1                	andi	a1,a1,-8
1c00b66a:	ca31                	beqz	a2,1c00b6be <pos_alloc+0x5a>
1c00b66c:	4218                	lw	a4,0(a2)
1c00b66e:	425c                	lw	a5,4(a2)
1c00b670:	02b75963          	ble	a1,a4,1c00b6a2 <pos_alloc+0x3e>
1c00b674:	cb81                	beqz	a5,1c00b684 <pos_alloc+0x20>
1c00b676:	4398                	lw	a4,0(a5)
1c00b678:	43d4                	lw	a3,4(a5)
1c00b67a:	00b75763          	ble	a1,a4,1c00b688 <pos_alloc+0x24>
1c00b67e:	863e                	mv	a2,a5
1c00b680:	87b6                	mv	a5,a3
1c00b682:	fbf5                	bnez	a5,1c00b676 <pos_alloc+0x12>
1c00b684:	853e                	mv	a0,a5
1c00b686:	8082                	ret
1c00b688:	00b70a63          	beq	a4,a1,1c00b69c <pos_alloc+0x38>
1c00b68c:	00b78533          	add	a0,a5,a1
1c00b690:	8f0d                	sub	a4,a4,a1
1c00b692:	c118                	sw	a4,0(a0)
1c00b694:	c154                	sw	a3,4(a0)
1c00b696:	c248                	sw	a0,4(a2)
1c00b698:	853e                	mv	a0,a5
1c00b69a:	8082                	ret
1c00b69c:	c254                	sw	a3,4(a2)
1c00b69e:	853e                	mv	a0,a5
1c00b6a0:	8082                	ret
1c00b6a2:	00e58b63          	beq	a1,a4,1c00b6b8 <pos_alloc+0x54>
1c00b6a6:	00b606b3          	add	a3,a2,a1
1c00b6aa:	8f0d                	sub	a4,a4,a1
1c00b6ac:	c2dc                	sw	a5,4(a3)
1c00b6ae:	c298                	sw	a4,0(a3)
1c00b6b0:	87b2                	mv	a5,a2
1c00b6b2:	c114                	sw	a3,0(a0)
1c00b6b4:	853e                	mv	a0,a5
1c00b6b6:	8082                	ret
1c00b6b8:	c11c                	sw	a5,0(a0)
1c00b6ba:	87b2                	mv	a5,a2
1c00b6bc:	b7e1                	j	1c00b684 <pos_alloc+0x20>
1c00b6be:	4781                	li	a5,0
1c00b6c0:	b7d1                	j	1c00b684 <pos_alloc+0x20>

1c00b6c2 <pos_free>:
1c00b6c2:	4118                	lw	a4,0(a0)
1c00b6c4:	061d                	addi	a2,a2,7
1c00b6c6:	9a61                	andi	a2,a2,-8
1c00b6c8:	c729                	beqz	a4,1c00b712 <pos_free+0x50>
1c00b6ca:	00b76663          	bltu	a4,a1,1c00b6d6 <pos_free+0x14>
1c00b6ce:	a0a1                	j	1c00b716 <pos_free+0x54>
1c00b6d0:	00b7f563          	bleu	a1,a5,1c00b6da <pos_free+0x18>
1c00b6d4:	873e                	mv	a4,a5
1c00b6d6:	435c                	lw	a5,4(a4)
1c00b6d8:	ffe5                	bnez	a5,1c00b6d0 <pos_free+0xe>
1c00b6da:	00c586b3          	add	a3,a1,a2
1c00b6de:	02d78463          	beq	a5,a3,1c00b706 <pos_free+0x44>
1c00b6e2:	c190                	sw	a2,0(a1)
1c00b6e4:	c1dc                	sw	a5,4(a1)
1c00b6e6:	cf11                	beqz	a4,1c00b702 <pos_free+0x40>
1c00b6e8:	431c                	lw	a5,0(a4)
1c00b6ea:	00f706b3          	add	a3,a4,a5
1c00b6ee:	00d58463          	beq	a1,a3,1c00b6f6 <pos_free+0x34>
1c00b6f2:	c34c                	sw	a1,4(a4)
1c00b6f4:	8082                	ret
1c00b6f6:	4194                	lw	a3,0(a1)
1c00b6f8:	41d0                	lw	a2,4(a1)
1c00b6fa:	97b6                	add	a5,a5,a3
1c00b6fc:	c31c                	sw	a5,0(a4)
1c00b6fe:	c350                	sw	a2,4(a4)
1c00b700:	8082                	ret
1c00b702:	c10c                	sw	a1,0(a0)
1c00b704:	8082                	ret
1c00b706:	4394                	lw	a3,0(a5)
1c00b708:	43dc                	lw	a5,4(a5)
1c00b70a:	9636                	add	a2,a2,a3
1c00b70c:	c190                	sw	a2,0(a1)
1c00b70e:	c1dc                	sw	a5,4(a1)
1c00b710:	bfd9                	j	1c00b6e6 <pos_free+0x24>
1c00b712:	4781                	li	a5,0
1c00b714:	b7d9                	j	1c00b6da <pos_free+0x18>
1c00b716:	87ba                	mv	a5,a4
1c00b718:	4701                	li	a4,0
1c00b71a:	b7c1                	j	1c00b6da <pos_free+0x18>

1c00b71c <pos_allocs_init>:
1c00b71c:	1141                	addi	sp,sp,-16
1c00b71e:	1c0045b7          	lui	a1,0x1c004
1c00b722:	c606                	sw	ra,12(sp)
1c00b724:	4b458793          	addi	a5,a1,1204 # 1c0044b4 <__l2_priv0_end>
1c00b728:	1c008637          	lui	a2,0x1c008
1c00b72c:	04c7cc63          	blt	a5,a2,1c00b784 <pos_allocs_init+0x68>
1c00b730:	4581                	li	a1,0
1c00b732:	4601                	li	a2,0
1c00b734:	1c004537          	lui	a0,0x1c004
1c00b738:	4a850513          	addi	a0,a0,1192 # 1c0044a8 <pos_alloc_l2>
1c00b73c:	3731                	jal	1c00b648 <pos_alloc_init>
1c00b73e:	1c00b5b7          	lui	a1,0x1c00b
1c00b742:	7f058793          	addi	a5,a1,2032 # 1c00b7f0 <__l2_priv1_end>
1c00b746:	1c010637          	lui	a2,0x1c010
1c00b74a:	02c7c963          	blt	a5,a2,1c00b77c <pos_allocs_init+0x60>
1c00b74e:	4581                	li	a1,0
1c00b750:	4601                	li	a2,0
1c00b752:	1c004537          	lui	a0,0x1c004
1c00b756:	4ac50513          	addi	a0,a0,1196 # 1c0044ac <pos_alloc_l2+0x4>
1c00b75a:	35fd                	jal	1c00b648 <pos_alloc_init>
1c00b75c:	1c0105b7          	lui	a1,0x1c010
1c00b760:	00058793          	mv	a5,a1
1c00b764:	40b2                	lw	ra,12(sp)
1c00b766:	1c080637          	lui	a2,0x1c080
1c00b76a:	1c004537          	lui	a0,0x1c004
1c00b76e:	8e1d                	sub	a2,a2,a5
1c00b770:	00058593          	mv	a1,a1
1c00b774:	4b050513          	addi	a0,a0,1200 # 1c0044b0 <pos_alloc_l2+0x8>
1c00b778:	0141                	addi	sp,sp,16
1c00b77a:	b5f9                	j	1c00b648 <pos_alloc_init>
1c00b77c:	8e1d                	sub	a2,a2,a5
1c00b77e:	7f058593          	addi	a1,a1,2032 # 1c0107f0 <__l2_shared_end+0x7f0>
1c00b782:	bfc1                	j	1c00b752 <pos_allocs_init+0x36>
1c00b784:	8e1d                	sub	a2,a2,a5
1c00b786:	4b458593          	addi	a1,a1,1204
1c00b78a:	b76d                	j	1c00b734 <pos_allocs_init+0x18>

1c00b78c <pi_l2_malloc>:
1c00b78c:	85aa                	mv	a1,a0
1c00b78e:	1c004537          	lui	a0,0x1c004
1c00b792:	4a850513          	addi	a0,a0,1192 # 1c0044a8 <pos_alloc_l2>
1c00b796:	b5f9                	j	1c00b664 <pos_alloc>

1c00b798 <pi_l2_free>:
1c00b798:	862e                	mv	a2,a1
1c00b79a:	85aa                	mv	a1,a0
1c00b79c:	1c004537          	lui	a0,0x1c004
1c00b7a0:	4a850513          	addi	a0,a0,1192 # 1c0044a8 <pos_alloc_l2>
1c00b7a4:	bf39                	j	1c00b6c2 <pos_free>

1c00b7a6 <__rt_handle_illegal_instr>:
1c00b7a6:	8082                	ret

1c00b7a8 <pos_irq_init>:
1c00b7a8:	1a10a737          	lui	a4,0x1a10a
1c00b7ac:	f14027f3          	csrr	a5,mhartid
1c00b7b0:	56fd                	li	a3,-1
1c00b7b2:	8795                	srai	a5,a5,0x5
1c00b7b4:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b7b8:	03f7f793          	andi	a5,a5,63
1c00b7bc:	477d                	li	a4,31
1c00b7be:	00e78363          	beq	a5,a4,1c00b7c4 <pos_irq_init+0x1c>
1c00b7c2:	8082                	ret
1c00b7c4:	1c0087b7          	lui	a5,0x1c008
1c00b7c8:	00078793          	mv	a5,a5
1c00b7cc:	0017e793          	ori	a5,a5,1
1c00b7d0:	30579073          	csrw	mtvec,a5
1c00b7d4:	8082                	ret

1c00b7d6 <pos_soc_event_init>:
1c00b7d6:	1a1067b7          	lui	a5,0x1a106
1c00b7da:	577d                	li	a4,-1
1c00b7dc:	c3d8                	sw	a4,4(a5)
1c00b7de:	c798                	sw	a4,8(a5)
1c00b7e0:	c7d8                	sw	a4,12(a5)
1c00b7e2:	cb98                	sw	a4,16(a5)
1c00b7e4:	cbd8                	sw	a4,20(a5)
1c00b7e6:	cf98                	sw	a4,24(a5)
1c00b7e8:	cfd8                	sw	a4,28(a5)
1c00b7ea:	d398                	sw	a4,32(a5)
1c00b7ec:	8082                	ret

1c00b7ee <_endtext>:
	...
