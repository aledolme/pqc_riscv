riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv_project/test/kyber/build/testvector/testvector

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv_project/test/kyber/build/testvector/testvector:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	01e0406f          	j	1c00c01e <__rt_handle_illegal_instr>
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
1c008084:	79b0306f          	j	1c00c01e <__rt_handle_illegal_instr>

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
1c0080c4:	24028293          	addi	t0,t0,576 # 1c004300 <stack>
1c0080c8:	ffffc317          	auipc	t1,0xffffc
1c0080cc:	2b030313          	addi	t1,t1,688 # 1c004378 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffc117          	auipc	sp,0xffffc
1c0080de:	22610113          	addi	sp,sp,550 # 1c004300 <stack>
1c0080e2:	585030ef          	jal	ra,1c00be66 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	59f030ef          	jal	ra,1c00be9a <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	549030ef          	jal	ra,1c00be4a <exit>

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
1c008142:	81010113          	addi	sp,sp,-2032
1c008146:	1c000537          	lui	a0,0x1c000
1c00814a:	7e112623          	sw	ra,2028(sp)
1c00814e:	12050513          	addi	a0,a0,288 # 1c000120 <__clz_tab+0x100>
1c008152:	9e010113          	addi	sp,sp,-1568
1c008156:	4a1030ef          	jal	ra,1c00bdf6 <puts>
1c00815a:	6785                	lui	a5,0x1
1c00815c:	757d                	lui	a0,0xfffff
1c00815e:	e0078793          	addi	a5,a5,-512 # e00 <__CTOR_LIST__-0x1bfff204>
1c008162:	978a                	add	a5,a5,sp
1c008164:	6a050593          	addi	a1,a0,1696 # fffff6a0 <pulp__FC+0xfffff6a1>
1c008168:	20050513          	addi	a0,a0,512
1c00816c:	95be                	add	a1,a1,a5
1c00816e:	953e                	add	a0,a0,a5
1c008170:	2cc030ef          	jal	ra,1c00b43c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>
1c008174:	1c000537          	lui	a0,0x1c000
1c008178:	13050513          	addi	a0,a0,304 # 1c000130 <__clz_tab+0x110>
1c00817c:	47b030ef          	jal	ra,1c00bdf6 <puts>
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
1c008200:	35840413          	addi	s0,s0,856 # 1c004358 <pos_fll_freq>
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
1c00822c:	35050513          	addi	a0,a0,848 # 1c004350 <pos_fll_is_on>
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
1c008268:	35050513          	addi	a0,a0,848 # 1c004350 <pos_fll_is_on>
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
1c0082b4:	35878793          	addi	a5,a5,856 # 1c004358 <pos_fll_freq>
1c0082b8:	0007a023          	sw	zero,0(a5)
1c0082bc:	0007a223          	sw	zero,4(a5)
1c0082c0:	1c0047b7          	lui	a5,0x1c004
1c0082c4:	34079823          	sh	zero,848(a5) # 1c004350 <pos_fll_is_on>
1c0082c8:	8082                	ret

1c0082ca <pos_soc_init>:
1c0082ca:	1141                	addi	sp,sp,-16
1c0082cc:	c606                	sw	ra,12(sp)
1c0082ce:	c422                	sw	s0,8(sp)
1c0082d0:	37c5                	jal	1c0082b0 <pos_fll_constructor>
1c0082d2:	4501                	li	a0,0
1c0082d4:	3d75                	jal	1c008190 <pos_fll_init>
1c0082d6:	1c004437          	lui	s0,0x1c004
1c0082da:	36a42023          	sw	a0,864(s0) # 1c004360 <pos_freq_domains>
1c0082de:	4505                	li	a0,1
1c0082e0:	3d45                	jal	1c008190 <pos_fll_init>
1c0082e2:	36040413          	addi	s0,s0,864
1c0082e6:	c408                	sw	a0,8(s0)
1c0082e8:	40b2                	lw	ra,12(sp)
1c0082ea:	4422                	lw	s0,8(sp)
1c0082ec:	0141                	addi	sp,sp,16
1c0082ee:	8082                	ret

1c0082f0 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0082f0:	1141                	addi	sp,sp,-16
1c0082f2:	55555337          	lui	t1,0x55555
1c0082f6:	68c1                	lui	a7,0x10
1c0082f8:	c622                	sw	s0,12(sp)
1c0082fa:	c426                	sw	s1,8(sp)
1c0082fc:	c24a                	sw	s2,4(sp)
1c0082fe:	20050e13          	addi	t3,a0,512
1c008302:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c008306:	18fd                	addi	a7,a7,-1
1c008308:	419c                	lw	a5,0(a1)
1c00830a:	0541                	addi	a0,a0,16
1c00830c:	0017d713          	srli	a4,a5,0x1
1c008310:	00677733          	and	a4,a4,t1
1c008314:	0067f7b3          	and	a5,a5,t1
1c008318:	97ba                	add	a5,a5,a4
1c00831a:	0027d913          	srli	s2,a5,0x2
1c00831e:	0087d693          	srli	a3,a5,0x8
1c008322:	00a7d493          	srli	s1,a5,0xa
1c008326:	0107d713          	srli	a4,a5,0x10
1c00832a:	0127d413          	srli	s0,a5,0x12
1c00832e:	0037f613          	andi	a2,a5,3
1c008332:	00397913          	andi	s2,s2,3
1c008336:	8a8d                	andi	a3,a3,3
1c008338:	888d                	andi	s1,s1,3
1c00833a:	8b0d                	andi	a4,a4,3
1c00833c:	880d                	andi	s0,s0,3
1c00833e:	0047df13          	srli	t5,a5,0x4
1c008342:	0067d393          	srli	t2,a5,0x6
1c008346:	00c7de93          	srli	t4,a5,0xc
1c00834a:	00e7d293          	srli	t0,a5,0xe
1c00834e:	0147d813          	srli	a6,a5,0x14
1c008352:	0167df93          	srli	t6,a5,0x16
1c008356:	41260633          	sub	a2,a2,s2
1c00835a:	8e85                	sub	a3,a3,s1
1c00835c:	8f01                	sub	a4,a4,s0
1c00835e:	0033f393          	andi	t2,t2,3
1c008362:	0032f293          	andi	t0,t0,3
1c008366:	003fff93          	andi	t6,t6,3
1c00836a:	003f7f13          	andi	t5,t5,3
1c00836e:	003efe93          	andi	t4,t4,3
1c008372:	00387813          	andi	a6,a6,3
1c008376:	0642                	slli	a2,a2,0x10
1c008378:	06c2                	slli	a3,a3,0x10
1c00837a:	0742                	slli	a4,a4,0x10
1c00837c:	407f0f33          	sub	t5,t5,t2
1c008380:	405e8eb3          	sub	t4,t4,t0
1c008384:	41f80833          	sub	a6,a6,t6
1c008388:	0187d293          	srli	t0,a5,0x18
1c00838c:	01a7d393          	srli	t2,a5,0x1a
1c008390:	01c7df93          	srli	t6,a5,0x1c
1c008394:	8241                	srli	a2,a2,0x10
1c008396:	82c1                	srli	a3,a3,0x10
1c008398:	8341                	srli	a4,a4,0x10
1c00839a:	0842                	slli	a6,a6,0x10
1c00839c:	0f42                	slli	t5,t5,0x10
1c00839e:	01167633          	and	a2,a2,a7
1c0083a2:	0ec2                	slli	t4,t4,0x10
1c0083a4:	0116f6b3          	and	a3,a3,a7
1c0083a8:	01177733          	and	a4,a4,a7
1c0083ac:	0032f293          	andi	t0,t0,3
1c0083b0:	0033f393          	andi	t2,t2,3
1c0083b4:	003fff93          	andi	t6,t6,3
1c0083b8:	83f9                	srli	a5,a5,0x1e
1c0083ba:	01076733          	or	a4,a4,a6
1c0083be:	01e66633          	or	a2,a2,t5
1c0083c2:	01d6e6b3          	or	a3,a3,t4
1c0083c6:	40728833          	sub	a6,t0,t2
1c0083ca:	40ff87b3          	sub	a5,t6,a5
1c0083ce:	fec52823          	sw	a2,-16(a0)
1c0083d2:	fed52a23          	sw	a3,-12(a0)
1c0083d6:	fee52c23          	sw	a4,-8(a0)
1c0083da:	ff051e23          	sh	a6,-4(a0)
1c0083de:	fef51f23          	sh	a5,-2(a0)
1c0083e2:	0591                	addi	a1,a1,4
1c0083e4:	f3c512e3          	bne	a0,t3,1c008308 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0083e8:	4432                	lw	s0,12(sp)
1c0083ea:	44a2                	lw	s1,8(sp)
1c0083ec:	4912                	lw	s2,4(sp)
1c0083ee:	0141                	addi	sp,sp,16
1c0083f0:	8082                	ret

1c0083f2 <KeccakF1600_StatePermute>:
1c0083f2:	7145                	addi	sp,sp,-464
1c0083f4:	12a12423          	sw	a0,296(sp)
1c0083f8:	12812583          	lw	a1,296(sp)
1c0083fc:	12812603          	lw	a2,296(sp)
1c008400:	00052283          	lw	t0,0(a0)
1c008404:	00452303          	lw	t1,4(a0)
1c008408:	00852383          	lw	t2,8(a0)
1c00840c:	4d8c                	lw	a1,24(a1)
1c00840e:	4e50                	lw	a2,28(a2)
1c008410:	1c812623          	sw	s0,460(sp)
1c008414:	1c912423          	sw	s1,456(sp)
1c008418:	4540                	lw	s0,12(a0)
1c00841a:	4904                	lw	s1,16(a0)
1c00841c:	12812683          	lw	a3,296(sp)
1c008420:	4948                	lw	a0,20(a0)
1c008422:	1d212223          	sw	s2,452(sp)
1c008426:	1d312023          	sw	s3,448(sp)
1c00842a:	1b412e23          	sw	s4,444(sp)
1c00842e:	1b512c23          	sw	s5,440(sp)
1c008432:	1b612a23          	sw	s6,436(sp)
1c008436:	1b712823          	sw	s7,432(sp)
1c00843a:	1b812623          	sw	s8,428(sp)
1c00843e:	1b912423          	sw	s9,424(sp)
1c008442:	1ba12223          	sw	s10,420(sp)
1c008446:	1bb12023          	sw	s11,416(sp)
1c00844a:	db16                	sw	t0,180(sp)
1c00844c:	dd1a                	sw	t1,184(sp)
1c00844e:	c99e                	sw	t2,208(sp)
1c008450:	cba2                	sw	s0,212(sp)
1c008452:	d3a6                	sw	s1,228(sp)
1c008454:	10a12c23          	sw	a0,280(sp)
1c008458:	10b12e23          	sw	a1,284(sp)
1c00845c:	d5b2                	sw	a2,232(sp)
1c00845e:	5294                	lw	a3,32(a3)
1c008460:	12812783          	lw	a5,296(sp)
1c008464:	12812883          	lw	a7,296(sp)
1c008468:	12812703          	lw	a4,296(sp)
1c00846c:	12812803          	lw	a6,296(sp)
1c008470:	579c                	lw	a5,40(a5)
1c008472:	0388a903          	lw	s2,56(a7) # 10038 <__CTOR_LIST__-0x1bfeffcc>
1c008476:	03c8a983          	lw	s3,60(a7)
1c00847a:	0408aa03          	lw	s4,64(a7)
1c00847e:	0448aa83          	lw	s5,68(a7)
1c008482:	0488ab03          	lw	s6,72(a7)
1c008486:	04c8ab83          	lw	s7,76(a7)
1c00848a:	0508ad03          	lw	s10,80(a7)
1c00848e:	0588ae03          	lw	t3,88(a7)
1c008492:	5358                	lw	a4,36(a4)
1c008494:	02c82803          	lw	a6,44(a6)
1c008498:	05c8ae83          	lw	t4,92(a7)
1c00849c:	dbbe                	sw	a5,244(sp)
1c00849e:	1c0007b7          	lui	a5,0x1c000
1c0084a2:	d7b6                	sw	a3,236(sp)
1c0084a4:	d9ba                	sw	a4,240(sp)
1c0084a6:	ddc2                	sw	a6,248(sp)
1c0084a8:	ccca                	sw	s2,88(sp)
1c0084aa:	cece                	sw	s3,92(sp)
1c0084ac:	dfd2                	sw	s4,252(sp)
1c0084ae:	11512023          	sw	s5,256(sp)
1c0084b2:	dcda                	sw	s6,120(sp)
1c0084b4:	dede                	sw	s7,124(sp)
1c0084b6:	d0ea                	sw	s10,96(sp)
1c0084b8:	11c12223          	sw	t3,260(sp)
1c0084bc:	14078793          	addi	a5,a5,320 # 1c000140 <KeccakF_RoundConstants>
1c0084c0:	0348ac83          	lw	s9,52(a7)
1c0084c4:	0308ad83          	lw	s11,48(a7)
1c0084c8:	0548a483          	lw	s1,84(a7)
1c0084cc:	11d12423          	sw	t4,264(sp)
1c0084d0:	0608af03          	lw	t5,96(a7)
1c0084d4:	0688af83          	lw	t6,104(a7)
1c0084d8:	0788a403          	lw	s0,120(a7)
1c0084dc:	06c8a283          	lw	t0,108(a7)
1c0084e0:	0708a303          	lw	t1,112(a7)
1c0084e4:	0748a383          	lw	t2,116(a7)
1c0084e8:	07c8a503          	lw	a0,124(a7)
1c0084ec:	0808a583          	lw	a1,128(a7)
1c0084f0:	0848a603          	lw	a2,132(a7)
1c0084f4:	0888a683          	lw	a3,136(a7)
1c0084f8:	08c8a703          	lw	a4,140(a7)
1c0084fc:	0988a803          	lw	a6,152(a7)
1c008500:	0648aa83          	lw	s5,100(a7)
1c008504:	12f12623          	sw	a5,300(sp)
1c008508:	0908ab83          	lw	s7,144(a7)
1c00850c:	0948a783          	lw	a5,148(a7)
1c008510:	12812903          	lw	s2,296(sp)
1c008514:	09c8a883          	lw	a7,156(a7)
1c008518:	d2fa                	sw	t5,100(sp)
1c00851a:	d4fe                	sw	t6,104(sp)
1c00851c:	12812223          	sw	s0,292(sp)
1c008520:	c516                	sw	t0,136(sp)
1c008522:	10612623          	sw	t1,268(sp)
1c008526:	12712023          	sw	t2,288(sp)
1c00852a:	12a12823          	sw	a0,304(sp)
1c00852e:	c72e                	sw	a1,140(sp)
1c008530:	c932                	sw	a2,144(sp)
1c008532:	d336                	sw	a3,164(sp)
1c008534:	d53a                	sw	a4,168(sp)
1c008536:	cb3e                	sw	a5,148(sp)
1c008538:	cd42                	sw	a6,152(sp)
1c00853a:	cf46                	sw	a7,156(sp)
1c00853c:	0a092903          	lw	s2,160(s2)
1c008540:	12812f83          	lw	t6,296(sp)
1c008544:	12812983          	lw	s3,296(sp)
1c008548:	12812a03          	lw	s4,296(sp)
1c00854c:	12812b03          	lw	s6,296(sp)
1c008550:	12812d03          	lw	s10,296(sp)
1c008554:	12812e03          	lw	t3,296(sp)
1c008558:	12812e83          	lw	t4,296(sp)
1c00855c:	12812f03          	lw	t5,296(sp)
1c008560:	0a49a983          	lw	s3,164(s3)
1c008564:	0a8a2a03          	lw	s4,168(s4)
1c008568:	0acb2b03          	lw	s6,172(s6)
1c00856c:	d14a                	sw	s2,160(sp)
1c00856e:	0b0d2d03          	lw	s10,176(s10)
1c008572:	0b4e2e03          	lw	t3,180(t3)
1c008576:	0b8eae83          	lw	t4,184(t4)
1c00857a:	0bcf2f03          	lw	t5,188(t5)
1c00857e:	0c0fa403          	lw	s0,192(t6)
1c008582:	0c4fa903          	lw	s2,196(t6)
1c008586:	c14e                	sw	s3,128(sp)
1c008588:	d8d2                	sw	s4,112(sp)
1c00858a:	dada                	sw	s6,116(sp)
1c00858c:	89e6                	mv	s3,s9
1c00858e:	c36a                	sw	s10,132(sp)
1c008590:	d6f2                	sw	t3,108(sp)
1c008592:	d776                	sw	t4,172(sp)
1c008594:	c0fa                	sw	t5,64(sp)
1c008596:	8a6e                	mv	s4,s11
1c008598:	8b26                	mv	s6,s1
1c00859a:	8c22                	mv	s8,s0
1c00859c:	8cca                	mv	s9,s2
1c00859e:	52da                	lw	t0,180(sp)
1c0085a0:	535e                	lw	t1,244(sp)
1c0085a2:	53ea                	lw	t2,184(sp)
1c0085a4:	546e                	lw	s0,248(sp)
1c0085a6:	0062c5b3          	xor	a1,t0,t1
1c0085aa:	0083c633          	xor	a2,t2,s0
1c0085ae:	44ce                	lw	s1,208(sp)
1c0085b0:	581e                	lw	a6,228(sp)
1c0085b2:	48e6                	lw	a7,88(sp)
1c0085b4:	11812903          	lw	s2,280(sp)
1c0085b8:	4d76                	lw	s10,92(sp)
1c0085ba:	11c12e83          	lw	t4,284(sp)
1c0085be:	5f7e                	lw	t5,252(sp)
1c0085c0:	5fae                	lw	t6,232(sp)
1c0085c2:	10012283          	lw	t0,256(sp)
1c0085c6:	53be                	lw	t2,236(sp)
1c0085c8:	5466                	lw	s0,120(sp)
1c0085ca:	455e                	lw	a0,212(sp)
1c0085cc:	0144c6b3          	xor	a3,s1,s4
1c0085d0:	011847b3          	xor	a5,a6,a7
1c0085d4:	01a94e33          	xor	t3,s2,s10
1c0085d8:	01eec333          	xor	t1,t4,t5
1c0085dc:	005fc8b3          	xor	a7,t6,t0
1c0085e0:	0083c833          	xor	a6,t2,s0
1c0085e4:	54ce                	lw	s1,240(sp)
1c0085e6:	5976                	lw	s2,124(sp)
1c0085e8:	5d06                	lw	s10,96(sp)
1c0085ea:	10412e83          	lw	t4,260(sp)
1c0085ee:	10812f03          	lw	t5,264(sp)
1c0085f2:	5f96                	lw	t6,100(sp)
1c0085f4:	52a6                	lw	t0,104(sp)
1c0085f6:	10c12403          	lw	s0,268(sp)
1c0085fa:	43aa                	lw	t2,136(sp)
1c0085fc:	01354733          	xor	a4,a0,s3
1c008600:	01a5c5b3          	xor	a1,a1,s10
1c008604:	0124c533          	xor	a0,s1,s2
1c008608:	13012d03          	lw	s10,304(sp)
1c00860c:	12012483          	lw	s1,288(sp)
1c008610:	12412903          	lw	s2,292(sp)
1c008614:	01d6c6b3          	xor	a3,a3,t4
1c008618:	01e74733          	xor	a4,a4,t5
1c00861c:	4eba                	lw	t4,140(sp)
1c00861e:	4f4a                	lw	t5,144(sp)
1c008620:	01f7c7b3          	xor	a5,a5,t6
1c008624:	00534333          	xor	t1,t1,t0
1c008628:	5f9a                	lw	t6,164(sp)
1c00862a:	52aa                	lw	t0,168(sp)
1c00862c:	0078c8b3          	xor	a7,a7,t2
1c008630:	00884833          	xor	a6,a6,s0
1c008634:	43da                	lw	t2,148(sp)
1c008636:	446a                	lw	s0,152(sp)
1c008638:	01664633          	xor	a2,a2,s6
1c00863c:	015e4e33          	xor	t3,t3,s5
1c008640:	01a64633          	xor	a2,a2,s10
1c008644:	00884833          	xor	a6,a6,s0
1c008648:	4d0a                	lw	s10,128(sp)
1c00864a:	4406                	lw	s0,64(sp)
1c00864c:	005e4e33          	xor	t3,t3,t0
1c008650:	0078c8b3          	xor	a7,a7,t2
1c008654:	52b6                	lw	t0,108(sp)
1c008656:	53ba                	lw	t2,172(sp)
1c008658:	0125c5b3          	xor	a1,a1,s2
1c00865c:	590a                	lw	s2,160(sp)
1c00865e:	01a64633          	xor	a2,a2,s10
1c008662:	01734333          	xor	t1,t1,s7
1c008666:	0088cd33          	xor	s10,a7,s0
1c00866a:	8d25                	xor	a0,a0,s1
1c00866c:	44fa                	lw	s1,156(sp)
1c00866e:	00734db3          	xor	s11,t1,t2
1c008672:	0125c5b3          	xor	a1,a1,s2
1c008676:	01884833          	xor	a6,a6,s8
1c00867a:	005e4933          	xor	s2,t3,t0
1c00867e:	001d1413          	slli	s0,s10,0x1
1c008682:	01d6c6b3          	xor	a3,a3,t4
1c008686:	01e74733          	xor	a4,a4,t5
1c00868a:	5ec6                	lw	t4,112(sp)
1c00868c:	5f56                	lw	t5,116(sp)
1c00868e:	01fdd893          	srli	a7,s11,0x1f
1c008692:	d422                	sw	s0,40(sp)
1c008694:	8d25                	xor	a0,a0,s1
1c008696:	01f85413          	srli	s0,a6,0x1f
1c00869a:	01f95493          	srli	s1,s2,0x1f
1c00869e:	01d6c6b3          	xor	a3,a3,t4
1c0086a2:	01954533          	xor	a0,a0,s9
1c0086a6:	01e74733          	xor	a4,a4,t5
1c0086aa:	c4c6                	sw	a7,72(sp)
1c0086ac:	dc26                	sw	s1,56(sp)
1c0086ae:	001d9893          	slli	a7,s11,0x1
1c0086b2:	01fd5493          	srli	s1,s10,0x1f
1c0086b6:	de22                	sw	s0,60(sp)
1c0086b8:	00181413          	slli	s0,a6,0x1
1c0086bc:	01f6de13          	srli	t3,a3,0x1f
1c0086c0:	00171e93          	slli	t4,a4,0x1
1c0086c4:	d626                	sw	s1,44(sp)
1c0086c6:	c6c6                	sw	a7,76(sp)
1c0086c8:	00151493          	slli	s1,a0,0x1
1c0086cc:	01f55893          	srli	a7,a0,0x1f
1c0086d0:	01f7c7b3          	xor	a5,a5,t6
1c0086d4:	d822                	sw	s0,48(sp)
1c0086d6:	4f9a                	lw	t6,132(sp)
1c0086d8:	01f65413          	srli	s0,a2,0x1f
1c0086dc:	c8a6                	sw	s1,80(sp)
1c0086de:	cac6                	sw	a7,84(sp)
1c0086e0:	01f5d493          	srli	s1,a1,0x1f
1c0086e4:	00161893          	slli	a7,a2,0x1
1c0086e8:	df22                	sw	s0,188(sp)
1c0086ea:	01de6433          	or	s0,t3,t4
1c0086ee:	4e26                	lw	t3,72(sp)
1c0086f0:	5ea2                	lw	t4,40(sp)
1c0086f2:	01f7c7b3          	xor	a5,a5,t6
1c0086f6:	01f75f13          	srli	t5,a4,0x1f
1c0086fa:	00169f93          	slli	t6,a3,0x1
1c0086fe:	da26                	sw	s1,52(sp)
1c008700:	d946                	sw	a7,176(sp)
1c008702:	00159493          	slli	s1,a1,0x1
1c008706:	58e2                	lw	a7,56(sp)
1c008708:	01f7d313          	srli	t1,a5,0x1f
1c00870c:	00191293          	slli	t0,s2,0x1
1c008710:	00179393          	slli	t2,a5,0x1
1c008714:	ce26                	sw	s1,28(sp)
1c008716:	01ff64b3          	or	s1,t5,t6
1c00871a:	01de6f33          	or	t5,t3,t4
1c00871e:	4ec6                	lw	t4,80(sp)
1c008720:	5e72                	lw	t3,60(sp)
1c008722:	005362b3          	or	t0,t1,t0
1c008726:	0078e3b3          	or	t2,a7,t2
1c00872a:	5332                	lw	t1,44(sp)
1c00872c:	48b6                	lw	a7,76(sp)
1c00872e:	01de6e33          	or	t3,t3,t4
1c008732:	01136fb3          	or	t6,t1,a7
1c008736:	c4f2                	sw	t3,72(sp)
1c008738:	4356                	lw	t1,84(sp)
1c00873a:	58c2                	lw	a7,48(sp)
1c00873c:	5e52                	lw	t3,52(sp)
1c00873e:	01136eb3          	or	t4,t1,a7
1c008742:	534a                	lw	t1,176(sp)
1c008744:	58fa                	lw	a7,188(sp)
1c008746:	006e6e33          	or	t3,t3,t1
1c00874a:	c2f2                	sw	t3,68(sp)
1c00874c:	4e72                	lw	t3,28(sp)
1c00874e:	00feceb3          	xor	t4,t4,a5
1c008752:	de76                	sw	t4,60(sp)
1c008754:	01c8e333          	or	t1,a7,t3
1c008758:	00ef4f33          	xor	t5,t5,a4
1c00875c:	4ea6                	lw	t4,72(sp)
1c00875e:	00c2c2b3          	xor	t0,t0,a2
1c008762:	8c29                	xor	s0,s0,a0
1c008764:	d67a                	sw	t5,44(sp)
1c008766:	01b34333          	xor	t1,t1,s11
1c00876a:	4f16                	lw	t5,68(sp)
1c00876c:	0104c4b3          	xor	s1,s1,a6
1c008770:	012ec933          	xor	s2,t4,s2
1c008774:	da1a                	sw	t1,52(sp)
1c008776:	0132c9b3          	xor	s3,t0,s3
1c00877a:	5332                	lw	t1,44(sp)
1c00877c:	58f6                	lw	a7,124(sp)
1c00877e:	d022                	sw	s0,32(sp)
1c008780:	dc16                	sw	t0,56(sp)
1c008782:	5472                	lw	s0,60(sp)
1c008784:	5296                	lw	t0,100(sp)
1c008786:	01af4d33          	xor	s10,t5,s10
1c00878a:	00b3c3b3          	xor	t2,t2,a1
1c00878e:	00dfcfb3          	xor	t6,t6,a3
1c008792:	cc26                	sw	s1,24(sp)
1c008794:	d84a                	sw	s2,48(sp)
1c008796:	015344b3          	xor	s1,t1,s5
1c00879a:	005fc933          	xor	s2,t6,t0
1c00879e:	5542                	lw	a0,48(sp)
1c0087a0:	5652                	lw	a2,52(sp)
1c0087a2:	019d42b3          	xor	t0,s10,s9
1c0087a6:	011d4e33          	xor	t3,s10,a7
1c0087aa:	0143ca33          	xor	s4,t2,s4
1c0087ae:	45da                	lw	a1,148(sp)
1c0087b0:	56f2                	lw	a3,60(sp)
1c0087b2:	11c12703          	lw	a4,284(sp)
1c0087b6:	57ae                	lw	a5,232(sp)
1c0087b8:	5866                	lw	a6,120(sp)
1c0087ba:	4ae2                	lw	s5,24(sp)
1c0087bc:	d21e                	sw	t2,36(sp)
1c0087be:	d47e                	sw	t6,40(sp)
1c0087c0:	017443b3          	xor	t2,s0,s7
1c0087c4:	ce6a                	sw	s10,28(sp)
1c0087c6:	5b86                	lw	s7,96(sp)
1c0087c8:	5d02                	lw	s10,32(sp)
1c0087ca:	00b54433          	xor	s0,a0,a1
1c0087ce:	01864fb3          	xor	t6,a2,s8
1c0087d2:	00e6ceb3          	xor	t4,a3,a4
1c0087d6:	00f54f33          	xor	t5,a0,a5
1c0087da:	01064333          	xor	t1,a2,a6
1c0087de:	016d48b3          	xor	a7,s10,s6
1c0087e2:	017ac833          	xor	a6,s5,s7
1c0087e6:	5592                	lw	a1,36(sp)
1c0087e8:	463a                	lw	a2,140(sp)
1c0087ea:	56e2                	lw	a3,56(sp)
1c0087ec:	474a                	lw	a4,144(sp)
1c0087ee:	57a2                	lw	a5,40(sp)
1c0087f0:	4a9a                	lw	s5,132(sp)
1c0087f2:	5b32                	lw	s6,44(sp)
1c0087f4:	5bb6                	lw	s7,108(sp)
1c0087f6:	00c5c533          	xor	a0,a1,a2
1c0087fa:	5d12                	lw	s10,36(sp)
1c0087fc:	00e6c5b3          	xor	a1,a3,a4
1c008800:	0157c633          	xor	a2,a5,s5
1c008804:	017b46b3          	xor	a3,s6,s7
1c008808:	474e                	lw	a4,208(sp)
1c00880a:	5ae2                	lw	s5,56(sp)
1c00880c:	4b5e                	lw	s6,212(sp)
1c00880e:	00ed47b3          	xor	a5,s10,a4
1c008812:	5ba2                	lw	s7,40(sp)
1c008814:	016ac733          	xor	a4,s5,s6
1c008818:	4d66                	lw	s10,88(sp)
1c00881a:	4b76                	lw	s6,92(sp)
1c00881c:	5ab2                	lw	s5,44(sp)
1c00881e:	01abcbb3          	xor	s7,s7,s10
1c008822:	016acab3          	xor	s5,s5,s6
1c008826:	5d26                	lw	s10,104(sp)
1c008828:	4b2a                	lw	s6,136(sp)
1c00882a:	c2de                	sw	s7,68(sp)
1c00882c:	c4d6                	sw	s5,72(sp)
1c00882e:	5bf2                	lw	s7,60(sp)
1c008830:	5ac2                	lw	s5,48(sp)
1c008832:	01abcbb3          	xor	s7,s7,s10
1c008836:	016acab3          	xor	s5,s5,s6
1c00883a:	c6de                	sw	s7,76(sp)
1c00883c:	4b7a                	lw	s6,156(sp)
1c00883e:	c8d6                	sw	s5,80(sp)
1c008840:	5bd2                	lw	s7,52(sp)
1c008842:	4d6a                	lw	s10,152(sp)
1c008844:	4af2                	lw	s5,28(sp)
1c008846:	01abcbb3          	xor	s7,s7,s10
1c00884a:	016acab3          	xor	s5,s5,s6
1c00884e:	cade                	sw	s7,84(sp)
1c008850:	c5d6                	sw	s5,200(sp)
1c008852:	4be2                	lw	s7,24(sp)
1c008854:	5d0a                	lw	s10,160(sp)
1c008856:	4b0a                	lw	s6,128(sp)
1c008858:	01abcbb3          	xor	s7,s7,s10
1c00885c:	c7de                	sw	s7,204(sp)
1c00885e:	014a5d13          	srli	s10,s4,0x14
1c008862:	00c99b93          	slli	s7,s3,0xc
1c008866:	0a32                	slli	s4,s4,0xc
1c008868:	0149d993          	srli	s3,s3,0x14
1c00886c:	c552                	sw	s4,136(sp)
1c00886e:	c74e                	sw	s3,140(sp)
1c008870:	01595a13          	srli	s4,s2,0x15
1c008874:	00b49993          	slli	s3,s1,0xb
1c008878:	dcce                	sw	s3,120(sp)
1c00887a:	ded2                	sw	s4,124(sp)
1c00887c:	00d59993          	slli	s3,a1,0xd
1c008880:	01355a13          	srli	s4,a0,0x13
1c008884:	c14e                	sw	s3,128(sp)
1c008886:	c352                	sw	s4,132(sp)
1c008888:	01d69993          	slli	s3,a3,0x1d
1c00888c:	00365a13          	srli	s4,a2,0x3
1c008890:	ccde                	sw	s7,88(sp)
1c008892:	ceea                	sw	s10,92(sp)
1c008894:	d6ce                	sw	s3,108(sp)
1c008896:	df52                	sw	s4,188(sp)
1c008898:	01f7d993          	srli	s3,a5,0x1f
1c00889c:	00171a13          	slli	s4,a4,0x1
1c0088a0:	c1ce                	sw	s3,192(sp)
1c0088a2:	c3d2                	sw	s4,196(sp)
1c0088a4:	49e6                	lw	s3,88(sp)
1c0088a6:	4a76                	lw	s4,92(sp)
1c0088a8:	5a82                	lw	s5,32(sp)
1c0088aa:	0149e9b3          	or	s3,s3,s4
1c0088ae:	ccce                	sw	s3,88(sp)
1c0088b0:	4a3a                	lw	s4,140(sp)
1c0088b2:	49aa                	lw	s3,136(sp)
1c0088b4:	016acab3          	xor	s5,s5,s6
1c0088b8:	0149e9b3          	or	s3,s3,s4
1c0088bc:	01541b13          	slli	s6,s0,0x15
1c0088c0:	d956                	sw	s5,176(sp)
1c0088c2:	092e                	slli	s2,s2,0xb
1c0088c4:	00b3da93          	srli	s5,t2,0xb
1c0088c8:	80d5                	srli	s1,s1,0x15
1c0088ca:	5a76                	lw	s4,124(sp)
1c0088cc:	d0d6                	sw	s5,96(sp)
1c0088ce:	d2da                	sw	s6,100(sp)
1c0088d0:	009964b3          	or	s1,s2,s1
1c0088d4:	cece                	sw	s3,92(sp)
1c0088d6:	59e6                	lw	s3,120(sp)
1c0088d8:	012fdb93          	srli	s7,t6,0x12
1c0088dc:	5916                	lw	s2,100(sp)
1c0088de:	dea6                	sw	s1,124(sp)
1c0088e0:	5486                	lw	s1,96(sp)
1c0088e2:	00c35c13          	srli	s8,t1,0xc
1c0088e6:	01d85b13          	srli	s6,a6,0x1d
1c0088ea:	0149e9b3          	or	s3,s3,s4
1c0088ee:	d4de                	sw	s7,104(sp)
1c0088f0:	00389a93          	slli	s5,a7,0x3
1c0088f4:	014e1b93          	slli	s7,t3,0x14
1c0088f8:	004edd13          	srli	s10,t4,0x4
1c0088fc:	0124e4b3          	or	s1,s1,s2
1c008900:	017c6bb3          	or	s7,s8,s7
1c008904:	015b6ab3          	or	s5,s6,s5
1c008908:	00e29d93          	slli	s11,t0,0xe
1c00890c:	01cf1c93          	slli	s9,t5,0x1c
1c008910:	0122d293          	srli	t0,t0,0x12
1c008914:	00ce5e13          	srli	t3,t3,0xc
1c008918:	dcce                	sw	s3,120(sp)
1c00891a:	0fba                	slli	t6,t6,0xe
1c00891c:	0352                	slli	t1,t1,0x14
1c00891e:	d2a6                	sw	s1,100(sp)
1c008920:	01f2efb3          	or	t6,t0,t6
1c008924:	59a6                	lw	s3,104(sp)
1c008926:	019d6cb3          	or	s9,s10,s9
1c00892a:	006e6333          	or	t1,t3,t1
1c00892e:	4a0a                	lw	s4,128(sp)
1c008930:	4e1e                	lw	t3,196(sp)
1c008932:	5b36                	lw	s6,108(sp)
1c008934:	4d0e                	lw	s10,192(sp)
1c008936:	802d                	srli	s0,s0,0xb
1c008938:	004f5f13          	srli	t5,t5,0x4
1c00893c:	cd5e                	sw	s7,152(sp)
1c00893e:	d156                	sw	s5,160(sp)
1c008940:	5bfa                	lw	s7,188(sp)
1c008942:	4a9a                	lw	s5,132(sp)
1c008944:	03d6                	slli	t2,t2,0x15
1c008946:	0ef2                	slli	t4,t4,0x1c
1c008948:	007463b3          	or	t2,s0,t2
1c00894c:	01df6eb3          	or	t4,t5,t4
1c008950:	52ce                	lw	t0,240(sp)
1c008952:	01d8d893          	srli	a7,a7,0x1d
1c008956:	0536                	slli	a0,a0,0xd
1c008958:	0676                	slli	a2,a2,0x1d
1c00895a:	837d                	srli	a4,a4,0x1f
1c00895c:	d4fe                	sw	t6,104(sp)
1c00895e:	080e                	slli	a6,a6,0x3
1c008960:	4ff2                	lw	t6,28(sp)
1c008962:	81cd                	srli	a1,a1,0x13
1c008964:	828d                	srli	a3,a3,0x3
1c008966:	0786                	slli	a5,a5,0x1
1c008968:	01b9edb3          	or	s11,s3,s11
1c00896c:	0108e833          	or	a6,a7,a6
1c008970:	015a6a33          	or	s4,s4,s5
1c008974:	8dc9                	or	a1,a1,a0
1c008976:	017b6b33          	or	s6,s6,s7
1c00897a:	8ed1                	or	a3,a3,a2
1c00897c:	01cd6d33          	or	s10,s10,t3
1c008980:	8fd9                	or	a5,a5,a4
1c008982:	5f3e                	lw	t5,236(sp)
1c008984:	d09e                	sw	t2,96(sp)
1c008986:	c776                	sw	t4,140(sp)
1c008988:	53de                	lw	t2,244(sp)
1c00898a:	5ed2                	lw	t4,52(sp)
1c00898c:	cb1a                	sw	t1,148(sp)
1c00898e:	4362                	lw	t1,24(sp)
1c008990:	5402                	lw	s0,32(sp)
1c008992:	54ee                	lw	s1,248(sp)
1c008994:	5512                	lw	a0,36(sp)
1c008996:	c56e                	sw	s11,136(sp)
1c008998:	c966                	sw	s9,144(sp)
1c00899a:	005fcdb3          	xor	s11,t6,t0
1c00899e:	cf42                	sw	a6,156(sp)
1c0089a0:	c152                	sw	s4,128(sp)
1c0089a2:	c32e                	sw	a1,132(sp)
1c0089a4:	d6da                	sw	s6,108(sp)
1c0089a6:	10412583          	lw	a1,260(sp)
1c0089aa:	df36                	sw	a3,188(sp)
1c0089ac:	c3ea                	sw	s10,196(sp)
1c0089ae:	c1be                	sw	a5,192(sp)
1c0089b0:	5662                	lw	a2,56(sp)
1c0089b2:	579a                	lw	a5,164(sp)
1c0089b4:	10812683          	lw	a3,264(sp)
1c0089b8:	5722                	lw	a4,40(sp)
1c0089ba:	5832                	lw	a6,44(sp)
1c0089bc:	58aa                	lw	a7,168(sp)
1c0089be:	12c12f83          	lw	t6,300(sp)
1c0089c2:	12c12283          	lw	t0,300(sp)
1c0089c6:	01eeccb3          	xor	s9,t4,t5
1c0089ca:	007349b3          	xor	s3,t1,t2
1c0089ce:	4f06                	lw	t5,64(sp)
1c0089d0:	43a6                	lw	t2,72(sp)
1c0089d2:	5ec2                	lw	t4,48(sp)
1c0089d4:	00d64bb3          	xor	s7,a2,a3
1c0089d8:	00f74c33          	xor	s8,a4,a5
1c0089dc:	01184b33          	xor	s6,a6,a7
1c0089e0:	4636                	lw	a2,76(sp)
1c0089e2:	47ae                	lw	a5,200(sp)
1c0089e4:	483e                	lw	a6,204(sp)
1c0089e6:	5972                	lw	s2,60(sp)
1c0089e8:	5e3a                	lw	t3,172(sp)
1c0089ea:	000faf83          	lw	t6,0(t6)
1c0089ee:	0042a283          	lw	t0,4(t0)
1c0089f2:	00944a33          	xor	s4,s0,s1
1c0089f6:	01eeceb3          	xor	t4,t4,t5
1c0089fa:	01a3d413          	srli	s0,t2,0x1a
1c0089fe:	4316                	lw	t1,68(sp)
1c008a00:	01c94d33          	xor	s10,s2,t3
1c008a04:	c0f6                	sw	t4,64(sp)
1c008a06:	4962                	lw	s2,24(sp)
1c008a08:	00e85e93          	srli	t4,a6,0xe
1c008a0c:	ca7e                	sw	t6,20(sp)
1c008a0e:	c816                	sw	t0,16(sp)
1c008a10:	01961f93          	slli	t6,a2,0x19
1c008a14:	c4a2                	sw	s0,72(sp)
1c008a16:	00879293          	slli	t0,a5,0x8
1c008a1a:	00765413          	srli	s0,a2,0x7
1c008a1e:	0187d613          	srli	a2,a5,0x18
1c008a22:	01281793          	slli	a5,a6,0x12
1c008a26:	585a                	lw	a6,180(sp)
1c008a28:	01a35313          	srli	t1,t1,0x1a
1c008a2c:	00b54ab3          	xor	s5,a0,a1
1c008a30:	46c6                	lw	a3,80(sp)
1c008a32:	4756                	lw	a4,84(sp)
1c008a34:	58ca                	lw	a7,176(sp)
1c008a36:	4596                	lw	a1,68(sp)
1c008a38:	d31a                	sw	t1,164(sp)
1c008a3a:	01094333          	xor	t1,s2,a6
1c008a3e:	586a                	lw	a6,184(sp)
1c008a40:	5902                	lw	s2,32(sp)
1c008a42:	01969f13          	slli	t5,a3,0x19
1c008a46:	00639493          	slli	s1,t2,0x6
1c008a4a:	00659513          	slli	a0,a1,0x6
1c008a4e:	01875393          	srli	t2,a4,0x18
1c008a52:	0076d593          	srli	a1,a3,0x7
1c008a56:	01289e13          	slli	t3,a7,0x12
1c008a5a:	00871693          	slli	a3,a4,0x8
1c008a5e:	00e8d713          	srli	a4,a7,0xe
1c008a62:	010948b3          	xor	a7,s2,a6
1c008a66:	591a                	lw	s2,164(sp)
1c008a68:	01e46433          	or	s0,s0,t5
1c008a6c:	009964b3          	or	s1,s2,s1
1c008a70:	d526                	sw	s1,168(sp)
1c008a72:	44a6                	lw	s1,72(sp)
1c008a74:	01f5e5b3          	or	a1,a1,t6
1c008a78:	8d45                	or	a0,a0,s1
1c008a7a:	8e55                	or	a2,a2,a3
1c008a7c:	01ceee33          	or	t3,t4,t3
1c008a80:	00f76fb3          	or	t6,a4,a5
1c008a84:	569e                	lw	a3,228(sp)
1c008a86:	11812783          	lw	a5,280(sp)
1c008a8a:	597e                	lw	s2,252(sp)
1c008a8c:	10012f03          	lw	t5,256(sp)
1c008a90:	d32a                	sw	a0,164(sp)
1c008a92:	5732                	lw	a4,44(sp)
1c008a94:	5522                	lw	a0,40(sp)
1c008a96:	5872                	lw	a6,60(sp)
1c008a98:	5ec2                	lw	t4,48(sp)
1c008a9a:	8d35                	xor	a0,a0,a3
1c008a9c:	8f3d                	xor	a4,a4,a5
1c008a9e:	01284833          	xor	a6,a6,s2
1c008aa2:	01eeceb3          	xor	t4,t4,t5
1c008aa6:	0053e2b3          	or	t0,t2,t0
1c008aaa:	5f46                	lw	t5,112(sp)
1c008aac:	44f2                	lw	s1,28(sp)
1c008aae:	c2aa                	sw	a0,68(sp)
1c008ab0:	c4ba                	sw	a4,72(sp)
1c008ab2:	12012503          	lw	a0,288(sp)
1c008ab6:	12412703          	lw	a4,292(sp)
1c008aba:	c6c2                	sw	a6,76(sp)
1c008abc:	c8f6                	sw	t4,80(sp)
1c008abe:	13012803          	lw	a6,304(sp)
1c008ac2:	46e2                	lw	a3,24(sp)
1c008ac4:	5782                	lw	a5,32(sp)
1c008ac6:	5e92                	lw	t4,36(sp)
1c008ac8:	d716                	sw	t0,172(sp)
1c008aca:	10c12383          	lw	t2,268(sp)
1c008ace:	52d2                	lw	t0,52(sp)
1c008ad0:	8ca9                	xor	s1,s1,a0
1c008ad2:	8eb9                	xor	a3,a3,a4
1c008ad4:	0107c7b3          	xor	a5,a5,a6
1c008ad8:	01eeceb3          	xor	t4,t4,t5
1c008adc:	0072c933          	xor	s2,t0,t2
1c008ae0:	ce26                	sw	s1,28(sp)
1c008ae2:	cab6                	sw	a3,84(sp)
1c008ae4:	c5be                	sw	a5,200(sp)
1c008ae6:	d8f6                	sw	t4,112(sp)
1c008ae8:	52e2                	lw	t0,56(sp)
1c008aea:	53d6                	lw	t2,116(sp)
1c008aec:	57f6                	lw	a5,124(sp)
1c008aee:	5806                	lw	a6,96(sp)
1c008af0:	0072c2b3          	xor	t0,t0,t2
1c008af4:	44e6                	lw	s1,88(sp)
1c008af6:	4576                	lw	a0,92(sp)
1c008af8:	56e6                	lw	a3,120(sp)
1c008afa:	da96                	sw	t0,116(sp)
1c008afc:	fff84813          	not	a6,a6
1c008b00:	fff7c293          	not	t0,a5
1c008b04:	47ea                	lw	a5,152(sp)
1c008b06:	fff4ce93          	not	t4,s1
1c008b0a:	fff54f13          	not	t5,a0
1c008b0e:	fff6c713          	not	a4,a3
1c008b12:	cbc2                	sw	a6,212(sp)
1c008b14:	5396                	lw	t2,100(sp)
1c008b16:	54a6                	lw	s1,104(sp)
1c008b18:	452a                	lw	a0,136(sp)
1c008b1a:	46da                	lw	a3,148(sp)
1c008b1c:	487a                	lw	a6,156(sp)
1c008b1e:	fff7c793          	not	a5,a5
1c008b22:	fff3c393          	not	t2,t2
1c008b26:	fff4c493          	not	s1,s1
1c008b2a:	fff54513          	not	a0,a0
1c008b2e:	fff6c693          	not	a3,a3
1c008b32:	d7be                	sw	a5,236(sp)
1c008b34:	fff84813          	not	a6,a6
1c008b38:	57fa                	lw	a5,188(sp)
1c008b3a:	c79e                	sw	t2,204(sp)
1c008b3c:	d926                	sw	s1,176(sp)
1c008b3e:	d1aa                	sw	a0,224(sp)
1c008b40:	d5b6                	sw	a3,232(sp)
1c008b42:	d9c2                	sw	a6,240(sp)
1c008b44:	538a                	lw	t2,160(sp)
1c008b46:	448a                	lw	s1,128(sp)
1c008b48:	451a                	lw	a0,132(sp)
1c008b4a:	56b6                	lw	a3,108(sp)
1c008b4c:	483a                	lw	a6,140(sp)
1c008b4e:	fff7c793          	not	a5,a5
1c008b52:	fff3c393          	not	t2,t2
1c008b56:	fff4c493          	not	s1,s1
1c008b5a:	fff54513          	not	a0,a0
1c008b5e:	fff6c693          	not	a3,a3
1c008b62:	10f12223          	sw	a5,260(sp)
1c008b66:	fff84813          	not	a6,a6
1c008b6a:	004a1793          	slli	a5,s4,0x4
1c008b6e:	dda6                	sw	s1,248(sp)
1c008b70:	dfaa                	sw	a0,252(sp)
1c008b72:	10d12023          	sw	a3,256(sp)
1c008b76:	11012423          	sw	a6,264(sp)
1c008b7a:	db9e                	sw	t2,244(sp)
1c008b7c:	43ca                	lw	t2,144(sp)
1c008b7e:	d23e                	sw	a5,36(sp)
1c008b80:	4786                	lw	a5,64(sp)
1c008b82:	005cd693          	srli	a3,s9,0x5
1c008b86:	07e2                	slli	a5,a5,0x18
1c008b88:	d83e                	sw	a5,48(sp)
1c008b8a:	4786                	lw	a5,64(sp)
1c008b8c:	448e                	lw	s1,192(sp)
1c008b8e:	cc36                	sw	a3,24(sp)
1c008b90:	451e                	lw	a0,196(sp)
1c008b92:	83a1                	srli	a5,a5,0x8
1c008b94:	da3e                	sw	a5,52(sp)
1c008b96:	016ad813          	srli	a6,s5,0x16
1c008b9a:	47e2                	lw	a5,24(sp)
1c008b9c:	fff3c393          	not	t2,t2
1c008ba0:	fff4c493          	not	s1,s1
1c008ba4:	d442                	sw	a6,40(sp)
1c008ba6:	00fb1693          	slli	a3,s6,0xf
1c008baa:	10712623          	sw	t2,268(sp)
1c008bae:	12912023          	sw	s1,288(sp)
1c008bb2:	fff54513          	not	a0,a0
1c008bb6:	01bd9493          	slli	s1,s11,0x1b
1c008bba:	01c9d393          	srli	t2,s3,0x1c
1c008bbe:	00ab9813          	slli	a6,s7,0xa
1c008bc2:	0992                	slli	s3,s3,0x4
1c008bc4:	016bdb93          	srli	s7,s7,0x16
1c008bc8:	01ca5a13          	srli	s4,s4,0x1c
1c008bcc:	0aaa                	slli	s5,s5,0xa
1c008bce:	d636                	sw	a3,44(sp)
1c008bd0:	8cdd                	or	s1,s1,a5
1c008bd2:	0149ea33          	or	s4,s3,s4
1c008bd6:	015beab3          	or	s5,s7,s5
1c008bda:	12a12223          	sw	a0,292(sp)
1c008bde:	011b5b13          	srli	s6,s6,0x11
1c008be2:	011c5513          	srli	a0,s8,0x11
1c008be6:	0c3e                	slli	s8,s8,0xf
1c008be8:	57a2                	lw	a5,40(sp)
1c008bea:	59b2                	lw	s3,44(sp)
1c008bec:	018b6c33          	or	s8,s6,s8
1c008bf0:	d026                	sw	s1,32(sp)
1c008bf2:	dc52                	sw	s4,56(sp)
1c008bf4:	5492                	lw	s1,36(sp)
1c008bf6:	5a42                	lw	s4,48(sp)
1c008bf8:	d456                	sw	s5,40(sp)
1c008bfa:	4b52                	lw	s6,20(sp)
1c008bfc:	5ad2                	lw	s5,52(sp)
1c008bfe:	005ddd93          	srli	s11,s11,0x5
1c008c02:	008d5693          	srli	a3,s10,0x8
1c008c06:	4bc2                	lw	s7,16(sp)
1c008c08:	0cee                	slli	s9,s9,0x1b
1c008c0a:	0d62                	slli	s10,s10,0x18
1c008c0c:	019decb3          	or	s9,s11,s9
1c008c10:	0074e3b3          	or	t2,s1,t2
1c008c14:	01356533          	or	a0,a0,s3
1c008c18:	00da66b3          	or	a3,s4,a3
1c008c1c:	015d6d33          	or	s10,s10,s5
1c008c20:	006b4b33          	xor	s6,s6,t1
1c008c24:	011bcbb3          	xor	s7,s7,a7
1c008c28:	cc66                	sw	s9,24(sp)
1c008c2a:	d21e                	sw	t2,36(sp)
1c008c2c:	de2a                	sw	a0,60(sp)
1c008c2e:	d662                	sw	s8,44(sp)
1c008c30:	d836                	sw	a3,48(sp)
1c008c32:	da6a                	sw	s10,52(sp)
1c008c34:	11612823          	sw	s6,272(sp)
1c008c38:	11712a23          	sw	s7,276(sp)
1c008c3c:	5486                	lw	s1,96(sp)
1c008c3e:	5516                	lw	a0,100(sp)
1c008c40:	8f65                	and	a4,a4,s1
1c008c42:	46de                	lw	a3,212(sp)
1c008c44:	dd3a                	sw	a4,184(sp)
1c008c46:	5726                	lw	a4,104(sp)
1c008c48:	53f6                	lw	t2,124(sp)
1c008c4a:	00a2f2b3          	and	t0,t0,a0
1c008c4e:	8ef9                	and	a3,a3,a4
1c008c50:	0107e833          	or	a6,a5,a6
1c008c54:	007f7f33          	and	t5,t5,t2
1c008c58:	49aa                	lw	s3,136(sp)
1c008c5a:	5b2e                	lw	s6,232(sp)
1c008c5c:	4bfa                	lw	s7,156(sp)
1c008c5e:	438a                	lw	t2,128(sp)
1c008c60:	5736                	lw	a4,108(sp)
1c008c62:	c996                	sw	t0,208(sp)
1c008c64:	cbb6                	sw	a3,212(sp)
1c008c66:	52ce                	lw	t0,240(sp)
1c008c68:	47be                	lw	a5,204(sp)
1c008c6a:	5a4a                	lw	s4,176(sp)
1c008c6c:	5a8e                	lw	s5,224(sp)
1c008c6e:	56ee                	lw	a3,248(sp)
1c008c70:	5d66                	lw	s10,120(sp)
1c008c72:	0137f7b3          	and	a5,a5,s3
1c008c76:	006a7a33          	and	s4,s4,t1
1c008c7a:	011afab3          	and	s5,s5,a7
1c008c7e:	017b7b33          	and	s6,s6,s7
1c008c82:	0072f2b3          	and	t0,t0,t2
1c008c86:	8ef9                	and	a3,a3,a4
1c008c88:	fff8c893          	not	a7,a7
1c008c8c:	54de                	lw	s1,244(sp)
1c008c8e:	451a                	lw	a0,132(sp)
1c008c90:	01aefeb3          	and	t4,t4,s10
1c008c94:	db7a                	sw	t5,180(sp)
1c008c96:	5d3e                	lw	s10,236(sp)
1c008c98:	5f0a                	lw	t5,160(sp)
1c008c9a:	d3be                	sw	a5,228(sp)
1c008c9c:	11412c23          	sw	s4,280(sp)
1c008ca0:	11512e23          	sw	s5,284(sp)
1c008ca4:	d5da                	sw	s6,232(sp)
1c008ca6:	d796                	sw	t0,236(sp)
1c008ca8:	d9b6                	sw	a3,240(sp)
1c008caa:	57fe                	lw	a5,252(sp)
1c008cac:	13112823          	sw	a7,304(sp)
1c008cb0:	58fa                	lw	a7,188(sp)
1c008cb2:	10012983          	lw	s3,256(sp)
1c008cb6:	4a3a                	lw	s4,140(sp)
1c008cb8:	10412a83          	lw	s5,260(sp)
1c008cbc:	4b4a                	lw	s6,144(sp)
1c008cbe:	0149f9b3          	and	s3,s3,s4
1c008cc2:	01ed7cb3          	and	s9,s10,t5
1c008cc6:	0117f7b3          	and	a5,a5,a7
1c008cca:	016afab3          	and	s5,s5,s6
1c008cce:	10812b83          	lw	s7,264(sp)
1c008cd2:	4d5a                	lw	s10,148(sp)
1c008cd4:	ddce                	sw	s3,248(sp)
1c008cd6:	12012883          	lw	a7,288(sp)
1c008cda:	599a                	lw	s3,164(sp)
1c008cdc:	12412a03          	lw	s4,292(sp)
1c008ce0:	dfd6                	sw	s5,252(sp)
1c008ce2:	5aaa                	lw	s5,168(sp)
1c008ce4:	01abfbb3          	and	s7,s7,s10
1c008ce8:	10c12f03          	lw	t5,268(sp)
1c008cec:	42ea                	lw	t0,152(sp)
1c008cee:	0138f8b3          	and	a7,a7,s3
1c008cf2:	573a                	lw	a4,172(sp)
1c008cf4:	4d16                	lw	s10,68(sp)
1c008cf6:	11712023          	sw	s7,256(sp)
1c008cfa:	11112623          	sw	a7,268(sp)
1c008cfe:	015a7bb3          	and	s7,s4,s5
1c008d02:	48a6                	lw	a7,72(sp)
1c008d04:	4a46                	lw	s4,80(sp)
1c008d06:	005f7f33          	and	t5,t5,t0
1c008d0a:	4ab6                	lw	s5,76(sp)
1c008d0c:	4b26                	lw	s6,72(sp)
1c008d0e:	fff64693          	not	a3,a2
1c008d12:	11e12223          	sw	t5,260(sp)
1c008d16:	002d5d13          	srli	s10,s10,0x2
1c008d1a:	fff74f13          	not	t5,a4
1c008d1e:	0028d893          	srli	a7,a7,0x2
1c008d22:	4716                	lw	a4,68(sp)
1c008d24:	0a5e                	slli	s4,s4,0x17
1c008d26:	dbbe                	sw	a5,244(sp)
1c008d28:	10d12423          	sw	a3,264(sp)
1c008d2c:	c0ea                	sw	s10,64(sp)
1c008d2e:	c2c6                	sw	a7,68(sp)
1c008d30:	c4d2                	sw	s4,72(sp)
1c008d32:	009ada93          	srli	s5,s5,0x9
1c008d36:	00a4fc33          	and	s8,s1,a0
1c008d3a:	539a                	lw	t2,164(sp)
1c008d3c:	54aa                	lw	s1,168(sp)
1c008d3e:	01eb1993          	slli	s3,s6,0x1e
1c008d42:	c7d6                	sw	s5,204(sp)
1c008d44:	01e71b13          	slli	s6,a4,0x1e
1c008d48:	4746                	lw	a4,80(sp)
1c008d4a:	4d36                	lw	s10,76(sp)
1c008d4c:	00975a93          	srli	s5,a4,0x9
1c008d50:	472e                	lw	a4,200(sp)
1c008d52:	017d1a13          	slli	s4,s10,0x17
1c008d56:	0726                	slli	a4,a4,0x9
1c008d58:	c6ba                	sw	a4,76(sp)
1c008d5a:	4756                	lw	a4,84(sp)
1c008d5c:	4d72                	lw	s10,28(sp)
1c008d5e:	835d                	srli	a4,a4,0x17
1c008d60:	c8ba                	sw	a4,80(sp)
1c008d62:	4756                	lw	a4,84(sp)
1c008d64:	01995d93          	srli	s11,s2,0x19
1c008d68:	0726                	slli	a4,a4,0x9
1c008d6a:	caba                	sw	a4,84(sp)
1c008d6c:	472e                	lw	a4,200(sp)
1c008d6e:	007d1893          	slli	a7,s10,0x7
1c008d72:	835d                	srli	a4,a4,0x17
1c008d74:	c5ba                	sw	a4,200(sp)
1c008d76:	5746                	lw	a4,112(sp)
1c008d78:	091e                	slli	s2,s2,0x7
1c008d7a:	8379                	srli	a4,a4,0x1e
1c008d7c:	d93a                	sw	a4,176(sp)
1c008d7e:	5756                	lw	a4,116(sp)
1c008d80:	019d5d13          	srli	s10,s10,0x19
1c008d84:	070a                	slli	a4,a4,0x2
1c008d86:	cdba                	sw	a4,216(sp)
1c008d88:	5756                	lw	a4,116(sp)
1c008d8a:	01a96d33          	or	s10,s2,s10
1c008d8e:	8379                	srli	a4,a4,0x1e
1c008d90:	cfba                	sw	a4,220(sp)
1c008d92:	5746                	lw	a4,112(sp)
1c008d94:	4936                	lw	s2,76(sp)
1c008d96:	070a                	slli	a4,a4,0x2
1c008d98:	d1ba                	sw	a4,224(sp)
1c008d9a:	4706                	lw	a4,64(sp)
1c008d9c:	015a6ab3          	or	s5,s4,s5
1c008da0:	00e9e9b3          	or	s3,s3,a4
1c008da4:	ce4e                	sw	s3,28(sp)
1c008da6:	4996                	lw	s3,68(sp)
1c008da8:	473e                	lw	a4,204(sp)
1c008daa:	013b6b33          	or	s6,s6,s3
1c008dae:	d8da                	sw	s6,112(sp)
1c008db0:	49c6                	lw	s3,80(sp)
1c008db2:	4b26                	lw	s6,72(sp)
1c008db4:	01396933          	or	s2,s2,s3
1c008db8:	00eb6b33          	or	s6,s6,a4
1c008dbc:	dada                	sw	s6,116(sp)
1c008dbe:	c2ea                	sw	s10,68(sp)
1c008dc0:	c4ca                	sw	s2,72(sp)
1c008dc2:	4a56                	lw	s4,84(sp)
1c008dc4:	c0d6                	sw	s5,64(sp)
1c008dc6:	4aae                	lw	s5,200(sp)
1c008dc8:	4d6e                	lw	s10,216(sp)
1c008dca:	5b4a                	lw	s6,176(sp)
1c008dcc:	590e                	lw	s2,224(sp)
1c008dce:	11012983          	lw	s3,272(sp)
1c008dd2:	477e                	lw	a4,220(sp)
1c008dd4:	015a6a33          	or	s4,s4,s5
1c008dd8:	01ab6b33          	or	s6,s6,s10
1c008ddc:	01276733          	or	a4,a4,s2
1c008de0:	01d9ceb3          	xor	t4,s3,t4
1c008de4:	5ada                	lw	s5,180(sp)
1c008de6:	4d66                	lw	s10,88(sp)
1c008de8:	c6d2                	sw	s4,76(sp)
1c008dea:	cada                	sw	s6,84(sp)
1c008dec:	c8ba                	sw	a4,80(sp)
1c008dee:	c5f6                	sw	t4,200(sp)
1c008df0:	4776                	lw	a4,92(sp)
1c008df2:	11412a03          	lw	s4,276(sp)
1c008df6:	5b6a                	lw	s6,184(sp)
1c008df8:	4ece                	lw	t4,208(sp)
1c008dfa:	015a4a33          	xor	s4,s4,s5
1c008dfe:	01ab4b33          	xor	s6,s6,s10
1c008e02:	00eeceb3          	xor	t4,t4,a4
1c008e06:	5af6                	lw	s5,124(sp)
1c008e08:	5d06                	lw	s10,96(sp)
1c008e0a:	5716                	lw	a4,100(sp)
1c008e0c:	59e6                	lw	s3,120(sp)
1c008e0e:	c7d2                	sw	s4,204(sp)
1c008e10:	d95a                	sw	s6,176(sp)
1c008e12:	cdf6                	sw	t4,216(sp)
1c008e14:	495e                	lw	s2,212(sp)
1c008e16:	5a1e                	lw	s4,228(sp)
1c008e18:	11812b03          	lw	s6,280(sp)
1c008e1c:	11c12e83          	lw	t4,284(sp)
1c008e20:	01394933          	xor	s2,s2,s3
1c008e24:	015a4a33          	xor	s4,s4,s5
1c008e28:	01ab4b33          	xor	s6,s6,s10
1c008e2c:	00eeceb3          	xor	t4,t4,a4
1c008e30:	dcca                	sw	s2,120(sp)
1c008e32:	ded2                	sw	s4,124(sp)
1c008e34:	d0da                	sw	s6,96(sp)
1c008e36:	d2f6                	sw	t4,100(sp)
1c008e38:	592e                	lw	s2,232(sp)
1c008e3a:	49ba                	lw	s3,140(sp)
1c008e3c:	4b5a                	lw	s6,148(sp)
1c008e3e:	5abe                	lw	s5,236(sp)
1c008e40:	4a4a                	lw	s4,144(sp)
1c008e42:	01394933          	xor	s2,s2,s3
1c008e46:	016acab3          	xor	s5,s5,s6
1c008e4a:	477a                	lw	a4,156(sp)
1c008e4c:	598a                	lw	s3,160(sp)
1c008e4e:	014cccb3          	xor	s9,s9,s4
1c008e52:	c74a                	sw	s2,140(sp)
1c008e54:	cb56                	sw	s5,148(sp)
1c008e56:	5ece                	lw	t4,240(sp)
1c008e58:	4a8a                	lw	s5,128(sp)
1c008e5a:	595e                	lw	s2,244(sp)
1c008e5c:	5a6e                	lw	s4,248(sp)
1c008e5e:	4d6a                	lw	s10,152(sp)
1c008e60:	00eeceb3          	xor	t4,t4,a4
1c008e64:	01394933          	xor	s2,s2,s3
1c008e68:	015a4a33          	xor	s4,s4,s5
1c008e6c:	5736                	lw	a4,108(sp)
1c008e6e:	59fa                	lw	s3,188(sp)
1c008e70:	01ac4c33          	xor	s8,s8,s10
1c008e74:	cf76                	sw	t4,156(sp)
1c008e76:	4d1a                	lw	s10,132(sp)
1c008e78:	d14a                	sw	s2,160(sp)
1c008e7a:	c152                	sw	s4,128(sp)
1c008e7c:	5b7e                	lw	s6,252(sp)
1c008e7e:	10012e83          	lw	t4,256(sp)
1c008e82:	10412903          	lw	s2,260(sp)
1c008e86:	10c12a03          	lw	s4,268(sp)
1c008e8a:	01ab4b33          	xor	s6,s6,s10
1c008e8e:	00eeceb3          	xor	t4,t4,a4
1c008e92:	01394933          	xor	s2,s2,s3
1c008e96:	01fa4a33          	xor	s4,s4,t6
1c008e9a:	01cbcbb3          	xor	s7,s7,t3
1c008e9e:	4ae6                	lw	s5,88(sp)
1c008ea0:	fffe4293          	not	t0,t3
1c008ea4:	c966                	sw	s9,144(sp)
1c008ea6:	cd62                	sw	s8,152(sp)
1c008ea8:	c35a                	sw	s6,132(sp)
1c008eaa:	d6f6                	sw	t4,108(sp)
1c008eac:	13012b03          	lw	s6,304(sp)
1c008eb0:	df4a                	sw	s2,188(sp)
1c008eb2:	d1d2                	sw	s4,224(sp)
1c008eb4:	01cf7f33          	and	t5,t5,t3
1c008eb8:	11712823          	sw	s7,272(sp)
1c008ebc:	4bf6                	lw	s7,92(sp)
1c008ebe:	499e                	lw	s3,196(sp)
1c008ec0:	5e32                	lw	t3,44(sp)
1c008ec2:	10812e83          	lw	t4,264(sp)
1c008ec6:	017b7733          	and	a4,s6,s7
1c008eca:	5a12                	lw	s4,36(sp)
1c008ecc:	0132f2b3          	and	t0,t0,s3
1c008ed0:	fffe4b93          	not	s7,t3
1c008ed4:	59d2                	lw	s3,52(sp)
1c008ed6:	4e62                	lw	t3,24(sp)
1c008ed8:	490e                	lw	s2,192(sp)
1c008eda:	5b22                	lw	s6,40(sp)
1c008edc:	ffffc693          	not	a3,t6
1c008ee0:	01feffb3          	and	t6,t4,t6
1c008ee4:	5ef2                	lw	t4,60(sp)
1c008ee6:	01b8e8b3          	or	a7,a7,s11
1c008eea:	fff34313          	not	t1,t1
1c008eee:	fffa4d93          	not	s11,s4
1c008ef2:	fff9ca13          	not	s4,s3
1c008ef6:	fffe4993          	not	s3,t3
1c008efa:	5e26                	lw	t3,104(sp)
1c008efc:	5d3a                	lw	s10,172(sp)
1c008efe:	01537333          	and	t1,t1,s5
1c008f02:	0126f6b3          	and	a3,a3,s2
1c008f06:	5ae2                	lw	s5,56(sp)
1c008f08:	5942                	lw	s2,48(sp)
1c008f0a:	fffb4c93          	not	s9,s6
1c008f0e:	fffecb13          	not	s6,t4
1c008f12:	5e82                	lw	t4,32(sp)
1c008f14:	01c34333          	xor	t1,t1,t3
1c008f18:	fff3c793          	not	a5,t2
1c008f1c:	fff4c393          	not	t2,s1
1c008f20:	fff44493          	not	s1,s0
1c008f24:	01a4f4b3          	and	s1,s1,s10
1c008f28:	cc9a                	sw	t1,88(sp)
1c008f2a:	fffacd13          	not	s10,s5
1c008f2e:	430e                	lw	t1,192(sp)
1c008f30:	fff94a93          	not	s5,s2
1c008f34:	fffec913          	not	s2,t4
1c008f38:	4eaa                	lw	t4,136(sp)
1c008f3a:	8fed                	and	a5,a5,a1
1c008f3c:	01d74733          	xor	a4,a4,t4
1c008f40:	0067c7b3          	xor	a5,a5,t1
1c008f44:	5e2a                	lw	t3,168(sp)
1c008f46:	5eba                	lw	t4,172(sp)
1c008f48:	fff5c513          	not	a0,a1
1c008f4c:	ceba                	sw	a4,92(sp)
1c008f4e:	d4be                	sw	a5,104(sp)
1c008f50:	471e                	lw	a4,196(sp)
1c008f52:	579a                	lw	a5,164(sp)
1c008f54:	0083f3b3          	and	t2,t2,s0
1c008f58:	8d71                	and	a0,a0,a2
1c008f5a:	00e3c3b3          	xor	t2,t2,a4
1c008f5e:	8d3d                	xor	a0,a0,a5
1c008f60:	01c4c4b3          	xor	s1,s1,t3
1c008f64:	00bfcfb3          	xor	t6,t6,a1
1c008f68:	008f4f33          	xor	t5,t5,s0
1c008f6c:	8eb1                	xor	a3,a3,a2
1c008f6e:	01d2c2b3          	xor	t0,t0,t4
1c008f72:	c51e                	sw	t2,136(sp)
1c008f74:	c1aa                	sw	a0,192(sp)
1c008f76:	c3a6                	sw	s1,196(sp)
1c008f78:	d57a                	sw	t5,168(sp)
1c008f7a:	cfb6                	sw	a3,220(sp)
1c008f7c:	5f22                	lw	t5,40(sp)
1c008f7e:	d716                	sw	t0,172(sp)
1c008f80:	d37e                	sw	t6,164(sp)
1c008f82:	5fb2                	lw	t6,44(sp)
1c008f84:	5342                	lw	t1,48(sp)
1c008f86:	47a6                	lw	a5,72(sp)
1c008f88:	52f2                	lw	t0,60(sp)
1c008f8a:	4462                	lw	s0,24(sp)
1c008f8c:	5482                	lw	s1,32(sp)
1c008f8e:	5656                	lw	a2,116(sp)
1c008f90:	4686                	lw	a3,64(sp)
1c008f92:	4716                	lw	a4,68(sp)
1c008f94:	fff84c13          	not	s8,a6
1c008f98:	01fcfcb3          	and	s9,s9,t6
1c008f9c:	006bfbb3          	and	s7,s7,t1
1c008fa0:	fff7c793          	not	a5,a5
1c008fa4:	4e36                	lw	t3,76(sp)
1c008fa6:	4ff2                	lw	t6,28(sp)
1c008fa8:	5346                	lw	t1,112(sp)
1c008faa:	55e2                	lw	a1,56(sp)
1c008fac:	01edfdb3          	and	s11,s11,t5
1c008fb0:	005c7c33          	and	s8,s8,t0
1c008fb4:	4f56                	lw	t5,84(sp)
1c008fb6:	008afab3          	and	s5,s5,s0
1c008fba:	009a7a33          	and	s4,s4,s1
1c008fbe:	fff6c413          	not	s0,a3
1c008fc2:	fff64493          	not	s1,a2
1c008fc6:	46ba                	lw	a3,140(sp)
1c008fc8:	462e                	lw	a2,200(sp)
1c008fca:	fff74293          	not	t0,a4
1c008fce:	db3e                	sw	a5,180(sp)
1c008fd0:	473e                	lw	a4,204(sp)
1c008fd2:	47ca                	lw	a5,144(sp)
1c008fd4:	fffe4e13          	not	t3,t3
1c008fd8:	ffffcf93          	not	t6,t6
1c008fdc:	fff34313          	not	t1,t1
1c008fe0:	5512                	lw	a0,36(sp)
1c008fe2:	4ec6                	lw	t4,80(sp)
1c008fe4:	00b97933          	and	s2,s2,a1
1c008fe8:	dd72                	sw	t3,184(sp)
1c008fea:	ffff4593          	not	a1,t5
1c008fee:	5e4a                	lw	t3,176(sp)
1c008ff0:	00f74f33          	xor	t5,a4,a5
1c008ff4:	d5fe                	sw	t6,232(sp)
1c008ff6:	47fa                	lw	a5,156(sp)
1c008ff8:	00d64fb3          	xor	t6,a2,a3
1c008ffc:	d79a                	sw	t1,236(sp)
1c008ffe:	466e                	lw	a2,216(sp)
1c009000:	435a                	lw	t1,148(sp)
1c009002:	46ea                	lw	a3,152(sp)
1c009004:	5766                	lw	a4,120(sp)
1c009006:	53d2                	lw	t2,52(sp)
1c009008:	00a9f9b3          	and	s3,s3,a0
1c00900c:	fffec513          	not	a0,t4
1c009010:	006e4eb3          	xor	t4,t3,t1
1c009014:	00d64e33          	xor	t3,a2,a3
1c009018:	00f74333          	xor	t1,a4,a5
1c00901c:	56f6                	lw	a3,124(sp)
1c00901e:	570a                	lw	a4,160(sp)
1c009020:	5786                	lw	a5,96(sp)
1c009022:	00e6c633          	xor	a2,a3,a4
1c009026:	470a                	lw	a4,128(sp)
1c009028:	007b7b33          	and	s6,s6,t2
1c00902c:	00e7c6b3          	xor	a3,a5,a4
1c009030:	471a                	lw	a4,132(sp)
1c009032:	5796                	lw	a5,100(sp)
1c009034:	010b4b33          	xor	s6,s6,a6
1c009038:	8fb9                	xor	a5,a5,a4
1c00903a:	c9be                	sw	a5,208(sp)
1c00903c:	570e                	lw	a4,224(sp)
1c00903e:	57b6                	lw	a5,108(sp)
1c009040:	010d7d33          	and	s10,s10,a6
1c009044:	8fb9                	xor	a5,a5,a4
1c009046:	cbbe                	sw	a5,212(sp)
1c009048:	11012703          	lw	a4,272(sp)
1c00904c:	57fa                	lw	a5,188(sp)
1c00904e:	5872                	lw	a6,60(sp)
1c009050:	8fb9                	xor	a5,a5,a4
1c009052:	d3be                	sw	a5,228(sp)
1c009054:	47e2                	lw	a5,24(sp)
1c009056:	5702                	lw	a4,32(sp)
1c009058:	00fdcdb3          	xor	s11,s11,a5
1c00905c:	5792                	lw	a5,36(sp)
1c00905e:	00ed4d33          	xor	s10,s10,a4
1c009062:	010a4a33          	xor	s4,s4,a6
1c009066:	00fcccb3          	xor	s9,s9,a5
1c00906a:	5722                	lw	a4,40(sp)
1c00906c:	57b2                	lw	a5,44(sp)
1c00906e:	d06a                	sw	s10,32(sp)
1c009070:	11612a23          	sw	s6,276(sp)
1c009074:	5d62                	lw	s10,56(sp)
1c009076:	5b52                	lw	s6,52(sp)
1c009078:	d652                	sw	s4,44(sp)
1c00907a:	5a42                	lw	s4,48(sp)
1c00907c:	01ac4c33          	xor	s8,s8,s10
1c009080:	00ebcbb3          	xor	s7,s7,a4
1c009084:	0149c9b3          	xor	s3,s3,s4
1c009088:	01694933          	xor	s2,s2,s6
1c00908c:	00facab3          	xor	s5,s5,a5
1c009090:	4d26                	lw	s10,72(sp)
1c009092:	cc6e                	sw	s11,24(sp)
1c009094:	d266                	sw	s9,36(sp)
1c009096:	dc62                	sw	s8,56(sp)
1c009098:	d45e                	sw	s7,40(sp)
1c00909a:	de4e                	sw	s3,60(sp)
1c00909c:	4b96                	lw	s7,68(sp)
1c00909e:	d84a                	sw	s2,48(sp)
1c0090a0:	4736                	lw	a4,76(sp)
1c0090a2:	57da                	lw	a5,180(sp)
1c0090a4:	4846                	lw	a6,80(sp)
1c0090a6:	596a                	lw	s2,184(sp)
1c0090a8:	49d6                	lw	s3,84(sp)
1c0090aa:	fff8c393          	not	t2,a7
1c0090ae:	4a72                	lw	s4,28(sp)
1c0090b0:	5b46                	lw	s6,112(sp)
1c0090b2:	0107fdb3          	and	s11,a5,a6
1c0090b6:	01747433          	and	s0,s0,s7
1c0090ba:	57d6                	lw	a5,116(sp)
1c0090bc:	5bae                	lw	s7,232(sp)
1c0090be:	583e                	lw	a6,236(sp)
1c0090c0:	01a3f3b3          	and	t2,t2,s10
1c0090c4:	01397d33          	and	s10,s2,s3
1c0090c8:	4906                	lw	s2,64(sp)
1c0090ca:	59a6                	lw	s3,104(sp)
1c0090cc:	00e2f2b3          	and	t0,t0,a4
1c0090d0:	01457533          	and	a0,a0,s4
1c0090d4:	00fbf733          	and	a4,s7,a5
1c0090d8:	4a2a                	lw	s4,136(sp)
1c0090da:	012877b3          	and	a5,a6,s2
1c0090de:	4b9e                	lw	s7,196(sp)
1c0090e0:	581a                	lw	a6,164(sp)
1c0090e2:	0165f5b3          	and	a1,a1,s6
1c0090e6:	4b0e                	lw	s6,192(sp)
1c0090e8:	592a                	lw	s2,168(sp)
1c0090ea:	013fcfb3          	xor	t6,t6,s3
1c0090ee:	014f4f33          	xor	t5,t5,s4
1c0090f2:	49fe                	lw	s3,220(sp)
1c0090f4:	4a4e                	lw	s4,208(sp)
1c0090f6:	016eceb3          	xor	t4,t4,s6
1c0090fa:	017e4e33          	xor	t3,t3,s7
1c0090fe:	5b3a                	lw	s6,172(sp)
1c009100:	4bde                	lw	s7,212(sp)
1c009102:	01034333          	xor	t1,t1,a6
1c009106:	4866                	lw	a6,88(sp)
1c009108:	01264633          	xor	a2,a2,s2
1c00910c:	0136c6b3          	xor	a3,a3,s3
1c009110:	591e                	lw	s2,228(sp)
1c009112:	016a49b3          	xor	s3,s4,s6
1c009116:	010bca33          	xor	s4,s7,a6
1c00911a:	4bf6                	lw	s7,92(sp)
1c00911c:	4872                	lw	a6,28(sp)
1c00911e:	01794b33          	xor	s6,s2,s7
1c009122:	5bd6                	lw	s7,116(sp)
1c009124:	5946                	lw	s2,112(sp)
1c009126:	0173c3b3          	xor	t2,t2,s7
1c00912a:	d89e                	sw	t2,112(sp)
1c00912c:	4386                	lw	t2,64(sp)
1c00912e:	0114f4b3          	and	s1,s1,a7
1c009132:	0104c4b3          	xor	s1,s1,a6
1c009136:	01244433          	xor	s0,s0,s2
1c00913a:	0072c2b3          	xor	t0,t0,t2
1c00913e:	da26                	sw	s1,52(sp)
1c009140:	da96                	sw	t0,116(sp)
1c009142:	ce22                	sw	s0,28(sp)
1c009144:	4416                	lw	s0,68(sp)
1c009146:	44a6                	lw	s1,72(sp)
1c009148:	008d4d33          	xor	s10,s10,s0
1c00914c:	8d25                	xor	a0,a0,s1
1c00914e:	c0aa                	sw	a0,64(sp)
1c009150:	4536                	lw	a0,76(sp)
1c009152:	5802                	lw	a6,32(sp)
1c009154:	8da9                	xor	a1,a1,a0
1c009156:	c2ae                	sw	a1,68(sp)
1c009158:	45c6                	lw	a1,80(sp)
1c00915a:	d9ea                	sw	s10,240(sp)
1c00915c:	00b74933          	xor	s2,a4,a1
1c009160:	4756                	lw	a4,84(sp)
1c009162:	5ba2                	lw	s7,40(sp)
1c009164:	00e7ccb3          	xor	s9,a5,a4
1c009168:	47e2                	lw	a5,24(sp)
1c00916a:	11412d03          	lw	s10,276(sp)
1c00916e:	011dcdb3          	xor	s11,s11,a7
1c009172:	52b2                	lw	t0,44(sp)
1c009174:	5892                	lw	a7,36(sp)
1c009176:	5472                	lw	s0,60(sp)
1c009178:	54c2                	lw	s1,48(sp)
1c00917a:	00ffcfb3          	xor	t6,t6,a5
1c00917e:	010f4f33          	xor	t5,t5,a6
1c009182:	57d6                	lw	a5,116(sp)
1c009184:	584e                	lw	a6,240(sp)
1c009186:	01a64633          	xor	a2,a2,s10
1c00918a:	5552                	lw	a0,52(sp)
1c00918c:	5746                	lw	a4,112(sp)
1c00918e:	018e4e33          	xor	t3,t3,s8
1c009192:	01734333          	xor	t1,t1,s7
1c009196:	4b96                	lw	s7,68(sp)
1c009198:	00fe4e33          	xor	t3,t3,a5
1c00919c:	008a43b3          	xor	t2,s4,s0
1c0091a0:	45f2                	lw	a1,28(sp)
1c0091a2:	011eceb3          	xor	t4,t4,a7
1c0091a6:	0059c9b3          	xor	s3,s3,t0
1c0091aa:	4886                	lw	a7,64(sp)
1c0091ac:	009b42b3          	xor	t0,s6,s1
1c0091b0:	01064b33          	xor	s6,a2,a6
1c0091b4:	00afcfb3          	xor	t6,t6,a0
1c0091b8:	00eeceb3          	xor	t4,t4,a4
1c0091bc:	01b34333          	xor	t1,t1,s11
1c0091c0:	0179c9b3          	xor	s3,s3,s7
1c0091c4:	0123c3b3          	xor	t2,t2,s2
1c0091c8:	0192c2b3          	xor	t0,t0,s9
1c0091cc:	0156c6b3          	xor	a3,a3,s5
1c0091d0:	01fe5493          	srli	s1,t3,0x1f
1c0091d4:	001b1613          	slli	a2,s6,0x1
1c0091d8:	00bf4f33          	xor	t5,t5,a1
1c0091dc:	0116ca33          	xor	s4,a3,a7
1c0091e0:	001e9513          	slli	a0,t4,0x1
1c0091e4:	01f35593          	srli	a1,t1,0x1f
1c0091e8:	01fb5693          	srli	a3,s6,0x1f
1c0091ec:	01f9d713          	srli	a4,s3,0x1f
1c0091f0:	01f3d793          	srli	a5,t2,0x1f
1c0091f4:	d3a6                	sw	s1,228(sp)
1c0091f6:	c8b2                	sw	a2,80(sp)
1c0091f8:	01f2d493          	srli	s1,t0,0x1f
1c0091fc:	01ffd613          	srli	a2,t6,0x1f
1c009200:	001e1d13          	slli	s10,t3,0x1
1c009204:	01fed413          	srli	s0,t4,0x1f
1c009208:	c6aa                	sw	a0,76(sp)
1c00920a:	d5ae                	sw	a1,232(sp)
1c00920c:	d7b6                	sw	a3,236(sp)
1c00920e:	caba                	sw	a4,84(sp)
1c009210:	db3e                	sw	a5,180(sp)
1c009212:	01ff5713          	srli	a4,t5,0x1f
1c009216:	dd26                	sw	s1,184(sp)
1c009218:	c9b2                	sw	a2,208(sp)
1c00921a:	cbba                	sw	a4,212(sp)
1c00921c:	01a46433          	or	s0,s0,s10
1c009220:	579e                	lw	a5,228(sp)
1c009222:	4d36                	lw	s10,76(sp)
1c009224:	572e                	lw	a4,232(sp)
1c009226:	01a7e4b3          	or	s1,a5,s10
1c00922a:	4d46                	lw	s10,80(sp)
1c00922c:	00131c13          	slli	s8,t1,0x1
1c009230:	01a767b3          	or	a5,a4,s10
1c009234:	5d3e                	lw	s10,236(sp)
1c009236:	01fa5b93          	srli	s7,s4,0x1f
1c00923a:	00199813          	slli	a6,s3,0x1
1c00923e:	018d6733          	or	a4,s10,s8
1c009242:	010be833          	or	a6,s7,a6
1c009246:	5d5a                	lw	s10,180(sp)
1c009248:	4bd6                	lw	s7,84(sp)
1c00924a:	001a1893          	slli	a7,s4,0x1
1c00924e:	00129593          	slli	a1,t0,0x1
1c009252:	011be8b3          	or	a7,s7,a7
1c009256:	00bd65b3          	or	a1,s10,a1
1c00925a:	5bea                	lw	s7,184(sp)
1c00925c:	4d4e                	lw	s10,208(sp)
1c00925e:	00139513          	slli	a0,t2,0x1
1c009262:	001f1693          	slli	a3,t5,0x1
1c009266:	00dd66b3          	or	a3,s10,a3
1c00926a:	00abe533          	or	a0,s7,a0
1c00926e:	4d5a                	lw	s10,148(sp)
1c009270:	4bde                	lw	s7,212(sp)
1c009272:	005442b3          	xor	t0,s0,t0
1c009276:	01f74733          	xor	a4,a4,t6
1c00927a:	542a                	lw	s0,168(sp)
1c00927c:	001f9613          	slli	a2,t6,0x1
1c009280:	01d8c8b3          	xor	a7,a7,t4
1c009284:	01c84833          	xor	a6,a6,t3
1c009288:	00654533          	xor	a0,a0,t1
1c00928c:	4e6a                	lw	t3,152(sp)
1c00928e:	00ed4333          	xor	t1,s10,a4
1c009292:	5e9a                	lw	t4,164(sp)
1c009294:	5d7a                	lw	s10,188(sp)
1c009296:	00cbe633          	or	a2,s7,a2
1c00929a:	0136cbb3          	xor	s7,a3,s3
1c00929e:	5686                	lw	a3,96(sp)
1c0092a0:	0074c3b3          	xor	t2,s1,t2
1c0092a4:	01e7c7b3          	xor	a5,a5,t5
1c0092a8:	01464633          	xor	a2,a2,s4
1c0092ac:	01044f33          	xor	t5,s0,a6
1c0092b0:	54b2                	lw	s1,44(sp)
1c0092b2:	5426                	lw	s0,104(sp)
1c0092b4:	0165c5b3          	xor	a1,a1,s6
1c0092b8:	00fe4c33          	xor	s8,t3,a5
1c0092bc:	011ecfb3          	xor	t6,t4,a7
1c0092c0:	00c94e33          	xor	t3,s2,a2
1c0092c4:	00a6ceb3          	xor	t4,a3,a0
1c0092c8:	5916                	lw	s2,100(sp)
1c0092ca:	017d46b3          	xor	a3,s10,s7
1c0092ce:	5b36                	lw	s6,108(sp)
1c0092d0:	4d2a                	lw	s10,136(sp)
1c0092d2:	00b4ca33          	xor	s4,s1,a1
1c0092d6:	007444b3          	xor	s1,s0,t2
1c0092da:	5412                	lw	s0,36(sp)
1c0092dc:	00b949b3          	xor	s3,s2,a1
1c0092e0:	00cb4933          	xor	s2,s6,a2
1c0092e4:	005d4b33          	xor	s6,s10,t0
1c0092e8:	5d62                	lw	s10,56(sp)
1c0092ea:	8c39                	xor	s0,s0,a4
1c0092ec:	d222                	sw	s0,36(sp)
1c0092ee:	00fd4433          	xor	s0,s10,a5
1c0092f2:	5d4e                	lw	s10,240(sp)
1c0092f4:	011dcdb3          	xor	s11,s11,a7
1c0092f8:	010d4d33          	xor	s10,s10,a6
1c0092fc:	db6a                	sw	s10,180(sp)
1c0092fe:	5d4a                	lw	s10,176(sp)
1c009300:	00aacab3          	xor	s5,s5,a0
1c009304:	00ed4d33          	xor	s10,s10,a4
1c009308:	dc6a                	sw	s10,56(sp)
1c00930a:	4d6e                	lw	s10,216(sp)
1c00930c:	017cccb3          	xor	s9,s9,s7
1c009310:	00fd4d33          	xor	s10,s10,a5
1c009314:	d66a                	sw	s10,44(sp)
1c009316:	4d7a                	lw	s10,156(sp)
1c009318:	011d4d33          	xor	s10,s10,a7
1c00931c:	d0ea                	sw	s10,96(sp)
1c00931e:	5d0a                	lw	s10,160(sp)
1c009320:	010d4d33          	xor	s10,s10,a6
1c009324:	d2ea                	sw	s10,100(sp)
1c009326:	4d7e                	lw	s10,220(sp)
1c009328:	00ad4d33          	xor	s10,s10,a0
1c00932c:	d4ea                	sw	s10,104(sp)
1c00932e:	5d3a                	lw	s10,172(sp)
1c009330:	00bd4d33          	xor	s10,s10,a1
1c009334:	c56a                	sw	s10,136(sp)
1c009336:	5d72                	lw	s10,60(sp)
1c009338:	00cd4d33          	xor	s10,s10,a2
1c00933c:	de6a                	sw	s10,60(sp)
1c00933e:	5d42                	lw	s10,48(sp)
1c009340:	017d4d33          	xor	s10,s10,s7
1c009344:	d86a                	sw	s10,48(sp)
1c009346:	5d52                	lw	s10,52(sp)
1c009348:	007d4d33          	xor	s10,s10,t2
1c00934c:	da6a                	sw	s10,52(sp)
1c00934e:	4d72                	lw	s10,28(sp)
1c009350:	005d4d33          	xor	s10,s10,t0
1c009354:	ce6a                	sw	s10,28(sp)
1c009356:	4d66                	lw	s10,88(sp)
1c009358:	00cd4d33          	xor	s10,s10,a2
1c00935c:	ccea                	sw	s10,88(sp)
1c00935e:	4d76                	lw	s10,92(sp)
1c009360:	017d4d33          	xor	s10,s10,s7
1c009364:	ceea                	sw	s10,92(sp)
1c009366:	4d3a                	lw	s10,140(sp)
1c009368:	007d4d33          	xor	s10,s10,t2
1c00936c:	c76a                	sw	s10,140(sp)
1c00936e:	4d4a                	lw	s10,144(sp)
1c009370:	005d4d33          	xor	s10,s10,t0
1c009374:	c96a                	sw	s10,144(sp)
1c009376:	4d0e                	lw	s10,192(sp)
1c009378:	00ed4d33          	xor	s10,s10,a4
1c00937c:	cb6a                	sw	s10,148(sp)
1c00937e:	4d1e                	lw	s10,196(sp)
1c009380:	00fd4d33          	xor	s10,s10,a5
1c009384:	cd6a                	sw	s10,152(sp)
1c009386:	5d22                	lw	s10,40(sp)
1c009388:	011d4d33          	xor	s10,s10,a7
1c00938c:	d46a                	sw	s10,40(sp)
1c00938e:	11412d03          	lw	s10,276(sp)
1c009392:	010d4d33          	xor	s10,s10,a6
1c009396:	cf6a                	sw	s10,156(sp)
1c009398:	4d06                	lw	s10,64(sp)
1c00939a:	00ad4d33          	xor	s10,s10,a0
1c00939e:	d16a                	sw	s10,160(sp)
1c0093a0:	4d16                	lw	s10,68(sp)
1c0093a2:	00bd4d33          	xor	s10,s10,a1
1c0093a6:	d6ea                	sw	s10,108(sp)
1c0093a8:	5d66                	lw	s10,120(sp)
1c0093aa:	011d48b3          	xor	a7,s10,a7
1c0093ae:	5d76                	lw	s10,124(sp)
1c0093b0:	010d4833          	xor	a6,s10,a6
1c0093b4:	4d0a                	lw	s10,128(sp)
1c0093b6:	00ad4533          	xor	a0,s10,a0
1c0093ba:	4d1a                	lw	s10,132(sp)
1c0093bc:	00bd45b3          	xor	a1,s10,a1
1c0093c0:	5d0e                	lw	s10,224(sp)
1c0093c2:	00cd4633          	xor	a2,s10,a2
1c0093c6:	11012d03          	lw	s10,272(sp)
1c0093ca:	017d4bb3          	xor	s7,s10,s7
1c0093ce:	4d62                	lw	s10,24(sp)
1c0093d0:	007d4d33          	xor	s10,s10,t2
1c0093d4:	cc6a                	sw	s10,24(sp)
1c0093d6:	5d02                	lw	s10,32(sp)
1c0093d8:	005d4d33          	xor	s10,s10,t0
1c0093dc:	d06a                	sw	s10,32(sp)
1c0093de:	5d46                	lw	s10,112(sp)
1c0093e0:	00ed4733          	xor	a4,s10,a4
1c0093e4:	5d56                	lw	s10,116(sp)
1c0093e6:	00fd47b3          	xor	a5,s10,a5
1c0093ea:	00cc1d13          	slli	s10,s8,0xc
1c0093ee:	dcea                	sw	s10,120(sp)
1c0093f0:	01435d13          	srli	s10,t1,0x14
1c0093f4:	deea                	sw	s10,124(sp)
1c0093f6:	0332                	slli	t1,t1,0xc
1c0093f8:	015fdd13          	srli	s10,t6,0x15
1c0093fc:	c21a                	sw	t1,4(sp)
1c0093fe:	c36a                	sw	s10,132(sp)
1c009400:	00bf1313          	slli	t1,t5,0xb
1c009404:	012e5d13          	srli	s10,t3,0x12
1c009408:	0fae                	slli	t6,t6,0xb
1c00940a:	c11a                	sw	t1,128(sp)
1c00940c:	df7e                	sw	t6,188(sp)
1c00940e:	015a1313          	slli	t1,s4,0x15
1c009412:	00badf93          	srli	t6,s5,0xb
1c009416:	d36a                	sw	s10,164(sp)
1c009418:	01c99d13          	slli	s10,s3,0x1c
1c00941c:	c1fe                	sw	t6,192(sp)
1c00941e:	c39a                	sw	t1,196(sp)
1c009420:	00ec9f93          	slli	t6,s9,0xe
1c009424:	004ed313          	srli	t1,t4,0x4
1c009428:	d8ea                	sw	s10,112(sp)
1c00942a:	01d4dd13          	srli	s10,s1,0x1d
1c00942e:	d57e                	sw	t6,168(sp)
1c009430:	d71a                	sw	t1,172(sp)
1c009432:	00c95f93          	srli	t6,s2,0xc
1c009436:	01469313          	slli	t1,a3,0x14
1c00943a:	c2ea                	sw	s10,68(sp)
1c00943c:	5d12                	lw	s10,36(sp)
1c00943e:	dafe                	sw	t6,116(sp)
1c009440:	c09a                	sw	t1,64(sp)
1c009442:	003b1f93          	slli	t6,s6,0x3
1c009446:	00d41313          	slli	t1,s0,0xd
1c00944a:	c4fe                	sw	t6,72(sp)
1c00944c:	c69a                	sw	t1,76(sp)
1c00944e:	013d5d13          	srli	s10,s10,0x13
1c009452:	c8ea                	sw	s10,80(sp)
1c009454:	535a                	lw	t1,180(sp)
1c009456:	5f92                	lw	t6,36(sp)
1c009458:	0376                	slli	t1,t1,0x1d
1c00945a:	0fb6                	slli	t6,t6,0xd
1c00945c:	d91a                	sw	t1,176(sp)
1c00945e:	5362                	lw	t1,56(sp)
1c009460:	cafe                	sw	t6,84(sp)
1c009462:	5fda                	lw	t6,180(sp)
1c009464:	003ddd13          	srli	s10,s11,0x3
1c009468:	01f35313          	srli	t1,t1,0x1f
1c00946c:	cdea                	sw	s10,216(sp)
1c00946e:	cf9a                	sw	t1,220(sp)
1c009470:	003fdd13          	srli	s10,t6,0x3
1c009474:	5332                	lw	t1,44(sp)
1c009476:	5fb2                	lw	t6,44(sp)
1c009478:	01f35313          	srli	t1,t1,0x1f
1c00947c:	0f86                	slli	t6,t6,0x1
1c00947e:	d1fe                	sw	t6,224(sp)
1c009480:	10612823          	sw	t1,272(sp)
1c009484:	5fe2                	lw	t6,56(sp)
1c009486:	5306                	lw	t1,96(sp)
1c009488:	0f86                	slli	t6,t6,0x1
1c00948a:	01a35313          	srli	t1,t1,0x1a
1c00948e:	11f12a23          	sw	t6,276(sp)
1c009492:	db1a                	sw	t1,180(sp)
1c009494:	5f96                	lw	t6,100(sp)
1c009496:	5316                	lw	t1,100(sp)
1c009498:	0f9a                	slli	t6,t6,0x6
1c00949a:	01a35313          	srli	t1,t1,0x1a
1c00949e:	dd7e                	sw	t6,184(sp)
1c0094a0:	c99a                	sw	t1,208(sp)
1c0094a2:	5f86                	lw	t6,96(sp)
1c0094a4:	5326                	lw	t1,104(sp)
1c0094a6:	0f9a                	slli	t6,t6,0x6
1c0094a8:	00735313          	srli	t1,t1,0x7
1c0094ac:	cbfe                	sw	t6,212(sp)
1c0094ae:	d39a                	sw	t1,228(sp)
1c0094b0:	4faa                	lw	t6,136(sp)
1c0094b2:	432a                	lw	t1,136(sp)
1c0094b4:	0fe6                	slli	t6,t6,0x19
1c0094b6:	00735313          	srli	t1,t1,0x7
1c0094ba:	11f12c23          	sw	t6,280(sp)
1c0094be:	10612e23          	sw	t1,284(sp)
1c0094c2:	5fa6                	lw	t6,104(sp)
1c0094c4:	5372                	lw	t1,60(sp)
1c0094c6:	0fe6                	slli	t6,t6,0x19
1c0094c8:	01835313          	srli	t1,t1,0x18
1c0094cc:	d79a                	sw	t1,236(sp)
1c0094ce:	d5fe                	sw	t6,232(sp)
1c0094d0:	5fc2                	lw	t6,48(sp)
1c0094d2:	5342                	lw	t1,48(sp)
1c0094d4:	0fa2                	slli	t6,t6,0x8
1c0094d6:	01835313          	srli	t1,t1,0x18
1c0094da:	d9fe                	sw	t6,240(sp)
1c0094dc:	db9a                	sw	t1,244(sp)
1c0094de:	5ff2                	lw	t6,60(sp)
1c0094e0:	5352                	lw	t1,52(sp)
1c0094e2:	0fa2                	slli	t6,t6,0x8
1c0094e4:	00e35313          	srli	t1,t1,0xe
1c0094e8:	ddfe                	sw	t6,248(sp)
1c0094ea:	df9a                	sw	t1,252(sp)
1c0094ec:	4ff2                	lw	t6,28(sp)
1c0094ee:	4372                	lw	t1,28(sp)
1c0094f0:	0fca                	slli	t6,t6,0x12
1c0094f2:	00e35313          	srli	t1,t1,0xe
1c0094f6:	11f12023          	sw	t6,256(sp)
1c0094fa:	10612223          	sw	t1,260(sp)
1c0094fe:	5fd2                	lw	t6,52(sp)
1c009500:	4366                	lw	t1,88(sp)
1c009502:	0fca                	slli	t6,t6,0x12
1c009504:	00535313          	srli	t1,t1,0x5
1c009508:	11f12423          	sw	t6,264(sp)
1c00950c:	10612623          	sw	t1,268(sp)
1c009510:	4ff6                	lw	t6,92(sp)
1c009512:	4376                	lw	t1,92(sp)
1c009514:	0fee                	slli	t6,t6,0x1b
1c009516:	00535313          	srli	t1,t1,0x5
1c00951a:	13f12023          	sw	t6,288(sp)
1c00951e:	12612223          	sw	t1,292(sp)
1c009522:	4fe6                	lw	t6,88(sp)
1c009524:	434a                	lw	t1,144(sp)
1c009526:	0fee                	slli	t6,t6,0x1b
1c009528:	0312                	slli	t1,t1,0x4
1c00952a:	13f12823          	sw	t6,304(sp)
1c00952e:	14612e23          	sw	t1,348(sp)
1c009532:	4fba                	lw	t6,140(sp)
1c009534:	433a                	lw	t1,140(sp)
1c009536:	01cfdf93          	srli	t6,t6,0x1c
1c00953a:	0312                	slli	t1,t1,0x4
1c00953c:	17f12023          	sw	t6,352(sp)
1c009540:	16612223          	sw	t1,356(sp)
1c009544:	4fca                	lw	t6,144(sp)
1c009546:	435a                	lw	t1,148(sp)
1c009548:	01cfdf93          	srli	t6,t6,0x1c
1c00954c:	01635313          	srli	t1,t1,0x16
1c009550:	16612623          	sw	t1,364(sp)
1c009554:	17f12423          	sw	t6,360(sp)
1c009558:	4fea                	lw	t6,152(sp)
1c00955a:	436a                	lw	t1,152(sp)
1c00955c:	0faa                	slli	t6,t6,0xa
1c00955e:	17f12823          	sw	t6,368(sp)
1c009562:	01635313          	srli	t1,t1,0x16
1c009566:	4fda                	lw	t6,148(sp)
1c009568:	16612a23          	sw	t1,372(sp)
1c00956c:	5322                	lw	t1,40(sp)
1c00956e:	0faa                	slli	t6,t6,0xa
1c009570:	17f12c23          	sw	t6,376(sp)
1c009574:	01135313          	srli	t1,t1,0x11
1c009578:	4ffa                	lw	t6,156(sp)
1c00957a:	12612a23          	sw	t1,308(sp)
1c00957e:	437a                	lw	t1,156(sp)
1c009580:	0fbe                	slli	t6,t6,0xf
1c009582:	13f12c23          	sw	t6,312(sp)
1c009586:	01135313          	srli	t1,t1,0x11
1c00958a:	5fa2                	lw	t6,40(sp)
1c00958c:	12612e23          	sw	t1,316(sp)
1c009590:	5336                	lw	t1,108(sp)
1c009592:	0fbe                	slli	t6,t6,0xf
1c009594:	15f12023          	sw	t6,320(sp)
1c009598:	0362                	slli	t1,t1,0x18
1c00959a:	5f8a                	lw	t6,160(sp)
1c00959c:	14612223          	sw	t1,324(sp)
1c0095a0:	530a                	lw	t1,160(sp)
1c0095a2:	008fdf93          	srli	t6,t6,0x8
1c0095a6:	15f12423          	sw	t6,328(sp)
1c0095aa:	0362                	slli	t1,t1,0x18
1c0095ac:	5fb6                	lw	t6,108(sp)
1c0095ae:	14612623          	sw	t1,332(sp)
1c0095b2:	01e81313          	slli	t1,a6,0x1e
1c0095b6:	008fdf93          	srli	t6,t6,0x8
1c0095ba:	14612a23          	sw	t1,340(sp)
1c0095be:	01759313          	slli	t1,a1,0x17
1c0095c2:	15f12823          	sw	t6,336(sp)
1c0095c6:	16612e23          	sw	t1,380(sp)
1c0095ca:	0028df93          	srli	t6,a7,0x2
1c0095ce:	007b9313          	slli	t1,s7,0x7
1c0095d2:	15f12c23          	sw	t6,344(sp)
1c0095d6:	18612223          	sw	t1,388(sp)
1c0095da:	00955f93          	srli	t6,a0,0x9
1c0095de:	5302                	lw	t1,32(sp)
1c0095e0:	19f12023          	sw	t6,384(sp)
1c0095e4:	01965f93          	srli	t6,a2,0x19
1c0095e8:	19f12423          	sw	t6,392(sp)
1c0095ec:	00931f93          	slli	t6,t1,0x9
1c0095f0:	4362                	lw	t1,24(sp)
1c0095f2:	014c5c13          	srli	s8,s8,0x14
1c0095f6:	01735313          	srli	t1,t1,0x17
1c0095fa:	18612623          	sw	t1,396(sp)
1c0095fe:	4362                	lw	t1,24(sp)
1c009600:	00ba5a13          	srli	s4,s4,0xb
1c009604:	0326                	slli	t1,t1,0x9
1c009606:	18612823          	sw	t1,400(sp)
1c00960a:	5302                	lw	t1,32(sp)
1c00960c:	015f5f13          	srli	t5,t5,0x15
1c009610:	01735313          	srli	t1,t1,0x17
1c009614:	18612a23          	sw	t1,404(sp)
1c009618:	01e75313          	srli	t1,a4,0x1e
1c00961c:	18612c23          	sw	t1,408(sp)
1c009620:	00279313          	slli	t1,a5,0x2
1c009624:	18612e23          	sw	t1,412(sp)
1c009628:	432e                	lw	t1,200(sp)
1c00962a:	0ad6                	slli	s5,s5,0x15
1c00962c:	007343b3          	xor	t2,t1,t2
1c009630:	cc1e                	sw	t2,24(sp)
1c009632:	43be                	lw	t2,204(sp)
1c009634:	5376                	lw	t1,124(sp)
1c009636:	0053c2b3          	xor	t0,t2,t0
1c00963a:	d016                	sw	t0,32(sp)
1c00963c:	52e6                	lw	t0,120(sp)
1c00963e:	4392                	lw	t2,4(sp)
1c009640:	0062e2b3          	or	t0,t0,t1
1c009644:	0183ec33          	or	s8,t2,s8
1c009648:	431a                	lw	t1,132(sp)
1c00964a:	53fa                	lw	t2,188(sp)
1c00964c:	d216                	sw	t0,36(sp)
1c00964e:	428a                	lw	t0,128(sp)
1c009650:	01e3ef33          	or	t5,t2,t5
1c009654:	0062e2b3          	or	t0,t0,t1
1c009658:	015a6ab3          	or	s5,s4,s5
1c00965c:	012cdc93          	srli	s9,s9,0x12
1c009660:	0049d993          	srli	s3,s3,0x4
1c009664:	0e3a                	slli	t3,t3,0xe
1c009666:	0ef2                	slli	t4,t4,0x1c
1c009668:	53aa                	lw	t2,168(sp)
1c00966a:	01ccee33          	or	t3,s9,t3
1c00966e:	01d9eeb3          	or	t4,s3,t4
1c009672:	d416                	sw	t0,40(sp)
1c009674:	d67a                	sw	t5,44(sp)
1c009676:	429e                	lw	t0,196(sp)
1c009678:	4f0e                	lw	t5,192(sp)
1c00967a:	de56                	sw	s5,60(sp)
1c00967c:	531a                	lw	t1,164(sp)
1c00967e:	5ac6                	lw	s5,112(sp)
1c009680:	5a3a                	lw	s4,172(sp)
1c009682:	da72                	sw	t3,52(sp)
1c009684:	ccf6                	sw	t4,88(sp)
1c009686:	5e56                	lw	t3,116(sp)
1c009688:	4e86                	lw	t4,64(sp)
1c00968a:	005f6f33          	or	t5,t5,t0
1c00968e:	00736333          	or	t1,t1,t2
1c009692:	015a6a33          	or	s4,s4,s5
1c009696:	01db5b13          	srli	s6,s6,0x1d
1c00969a:	048e                	slli	s1,s1,0x3
1c00969c:	01de6e33          	or	t3,t3,t4
1c0096a0:	009b64b3          	or	s1,s6,s1
1c0096a4:	dc62                	sw	s8,56(sp)
1c0096a6:	d87a                	sw	t5,48(sp)
1c0096a8:	ce1a                	sw	t1,28(sp)
1c0096aa:	ced2                	sw	s4,92(sp)
1c0096ac:	def2                	sw	t3,124(sp)
1c0096ae:	42a6                	lw	t0,72(sp)
1c0096b0:	43c6                	lw	t2,80(sp)
1c0096b2:	4f16                	lw	t5,68(sp)
1c0096b4:	d0a6                	sw	s1,96(sp)
1c0096b6:	4336                	lw	t1,76(sp)
1c0096b8:	44d6                	lw	s1,84(sp)
1c0096ba:	82b1                	srli	a3,a3,0xc
1c0096bc:	0df6                	slli	s11,s11,0x1d
1c0096be:	0952                	slli	s2,s2,0x14
1c0096c0:	804d                	srli	s0,s0,0x13
1c0096c2:	0126e933          	or	s2,a3,s2
1c0096c6:	005f6f33          	or	t5,t5,t0
1c0096ca:	00736333          	or	t1,t1,t2
1c0096ce:	8c45                	or	s0,s0,s1
1c0096d0:	01aded33          	or	s10,s11,s10
1c0096d4:	5a0e                	lw	s4,224(sp)
1c0096d6:	11412b03          	lw	s6,276(sp)
1c0096da:	5e6a                	lw	t3,184(sp)
1c0096dc:	dcca                	sw	s2,120(sp)
1c0096de:	d2fa                	sw	t5,100(sp)
1c0096e0:	496e                	lw	s2,216(sp)
1c0096e2:	4f5e                	lw	t5,212(sp)
1c0096e4:	d49a                	sw	t1,104(sp)
1c0096e6:	c522                	sw	s0,136(sp)
1c0096e8:	11812303          	lw	t1,280(sp)
1c0096ec:	542e                	lw	s0,232(sp)
1c0096ee:	56ca                	lw	a3,176(sp)
1c0096f0:	c96a                	sw	s10,144(sp)
1c0096f2:	49fe                	lw	s3,220(sp)
1c0096f4:	11012a83          	lw	s5,272(sp)
1c0096f8:	5d5a                	lw	s10,180(sp)
1c0096fa:	4ece                	lw	t4,208(sp)
1c0096fc:	529e                	lw	t0,228(sp)
1c0096fe:	11c12383          	lw	t2,284(sp)
1c009702:	0126e6b3          	or	a3,a3,s2
1c009706:	0149e9b3          	or	s3,s3,s4
1c00970a:	016aeab3          	or	s5,s5,s6
1c00970e:	01cd6d33          	or	s10,s10,t3
1c009712:	01eeeeb3          	or	t4,t4,t5
1c009716:	0062e2b3          	or	t0,t0,t1
1c00971a:	0083e3b3          	or	t2,t2,s0
1c00971e:	c736                	sw	a3,140(sp)
1c009720:	cd4e                	sw	s3,152(sp)
1c009722:	cb56                	sw	s5,148(sp)
1c009724:	d16a                	sw	s10,160(sp)
1c009726:	cf76                	sw	t4,156(sp)
1c009728:	c316                	sw	t0,132(sp)
1c00972a:	c11e                	sw	t2,128(sp)
1c00972c:	54be                	lw	s1,236(sp)
1c00972e:	56ce                	lw	a3,240(sp)
1c009730:	59ee                	lw	s3,248(sp)
1c009732:	10012a83          	lw	s5,256(sp)
1c009736:	595e                	lw	s2,244(sp)
1c009738:	5a7e                	lw	s4,252(sp)
1c00973a:	10812d03          	lw	s10,264(sp)
1c00973e:	10412b03          	lw	s6,260(sp)
1c009742:	8cd5                	or	s1,s1,a3
1c009744:	01396933          	or	s2,s2,s3
1c009748:	015a6a33          	or	s4,s4,s5
1c00974c:	01ab6b33          	or	s6,s6,s10
1c009750:	12012e83          	lw	t4,288(sp)
1c009754:	13012283          	lw	t0,304(sp)
1c009758:	16012383          	lw	t2,352(sp)
1c00975c:	df26                	sw	s1,188(sp)
1c00975e:	d6ca                	sw	s2,108(sp)
1c009760:	16812483          	lw	s1,360(sp)
1c009764:	17012903          	lw	s2,368(sp)
1c009768:	c3d2                	sw	s4,196(sp)
1c00976a:	10c12e03          	lw	t3,268(sp)
1c00976e:	17812a03          	lw	s4,376(sp)
1c009772:	12412f03          	lw	t5,292(sp)
1c009776:	15c12303          	lw	t1,348(sp)
1c00977a:	16412403          	lw	s0,356(sp)
1c00977e:	16c12683          	lw	a3,364(sp)
1c009782:	17412983          	lw	s3,372(sp)
1c009786:	c1da                	sw	s6,192(sp)
1c009788:	13412a83          	lw	s5,308(sp)
1c00978c:	13812b03          	lw	s6,312(sp)
1c009790:	01de6e33          	or	t3,t3,t4
1c009794:	005f6f33          	or	t5,t5,t0
1c009798:	00736333          	or	t1,t1,t2
1c00979c:	8c45                	or	s0,s0,s1
1c00979e:	0126e6b3          	or	a3,a3,s2
1c0097a2:	0149e9b3          	or	s3,s3,s4
1c0097a6:	061e                	slli	a2,a2,0x7
1c0097a8:	019bdb93          	srli	s7,s7,0x19
1c0097ac:	016aeab3          	or	s5,s5,s6
1c0097b0:	01766bb3          	or	s7,a2,s7
1c0097b4:	08fa                	slli	a7,a7,0x1e
1c0097b6:	d572                	sw	t3,168(sp)
1c0097b8:	d37a                	sw	t5,164(sp)
1c0097ba:	d71a                	sw	t1,172(sp)
1c0097bc:	d8a2                	sw	s0,112(sp)
1c0097be:	c0b6                	sw	a3,64(sp)
1c0097c0:	dace                	sw	s3,116(sp)
1c0097c2:	00285813          	srli	a6,a6,0x2
1c0097c6:	c4d6                	sw	s5,72(sp)
1c0097c8:	0108e833          	or	a6,a7,a6
1c0097cc:	cfde                	sw	s7,220(sp)
1c0097ce:	12c12b83          	lw	s7,300(sp)
1c0097d2:	14012e03          	lw	t3,320(sp)
1c0097d6:	14812f03          	lw	t5,328(sp)
1c0097da:	15012303          	lw	t1,336(sp)
1c0097de:	15812403          	lw	s0,344(sp)
1c0097e2:	18012683          	lw	a3,384(sp)
1c0097e6:	18812883          	lw	a7,392(sp)
1c0097ea:	19412a03          	lw	s4,404(sp)
1c0097ee:	19c12b03          	lw	s6,412(sp)
1c0097f2:	13c12d03          	lw	s10,316(sp)
1c0097f6:	14412e83          	lw	t4,324(sp)
1c0097fa:	14c12283          	lw	t0,332(sp)
1c0097fe:	15412383          	lw	t2,340(sp)
1c009802:	c5c2                	sw	a6,200(sp)
1c009804:	17c12483          	lw	s1,380(sp)
1c009808:	18412803          	lw	a6,388(sp)
1c00980c:	19012983          	lw	s3,400(sp)
1c009810:	19812a83          	lw	s5,408(sp)
1c009814:	008bab83          	lw	s7,8(s7)
1c009818:	055e                	slli	a0,a0,0x17
1c00981a:	83f9                	srli	a5,a5,0x1e
1c00981c:	81a5                	srli	a1,a1,0x9
1c00981e:	070a                	slli	a4,a4,0x2
1c009820:	01cd6d33          	or	s10,s10,t3
1c009824:	01eeeeb3          	or	t4,t4,t5
1c009828:	0062e2b3          	or	t0,t0,t1
1c00982c:	0083e3b3          	or	t2,t2,s0
1c009830:	8cd5                	or	s1,s1,a3
1c009832:	8dc9                	or	a1,a1,a0
1c009834:	01186833          	or	a6,a6,a7
1c009838:	0149e9b3          	or	s3,s3,s4
1c00983c:	016aeab3          	or	s5,s5,s6
1c009840:	8f5d                	or	a4,a4,a5
1c009842:	18c12903          	lw	s2,396(sp)
1c009846:	c6f6                	sw	t4,76(sp)
1c009848:	c896                	sw	t0,80(sp)
1c00984a:	ca9e                	sw	t2,84(sp)
1c00984c:	c7a6                	sw	s1,204(sp)
1c00984e:	d92e                	sw	a1,176(sp)
1c009850:	cdc2                	sw	a6,216(sp)
1c009852:	d1ce                	sw	s3,224(sp)
1c009854:	11512a23          	sw	s5,276(sp)
1c009858:	10e12823          	sw	a4,272(sp)
1c00985c:	c65e                	sw	s7,12(sp)
1c00985e:	c2ea                	sw	s10,68(sp)
1c009860:	12c12d03          	lw	s10,300(sp)
1c009864:	5332                	lw	t1,44(sp)
1c009866:	5702                	lw	a4,32(sp)
1c009868:	57e6                	lw	a5,120(sp)
1c00986a:	54f2                	lw	s1,60(sp)
1c00986c:	5e12                	lw	t3,36(sp)
1c00986e:	46e2                	lw	a3,24(sp)
1c009870:	5876                	lw	a6,124(sp)
1c009872:	fff34313          	not	t1,t1
1c009876:	10612623          	sw	t1,268(sp)
1c00987a:	fff4c493          	not	s1,s1
1c00987e:	fff74d93          	not	s11,a4
1c009882:	fff7cb13          	not	s6,a5
1c009886:	434a                	lw	t1,144(sp)
1c009888:	477a                	lw	a4,156(sp)
1c00988a:	578a                	lw	a5,160(sp)
1c00988c:	00cd2d03          	lw	s10,12(s10)
1c009890:	5f22                	lw	t5,40(sp)
1c009892:	5542                	lw	a0,48(sp)
1c009894:	4672                	lw	a2,28(sp)
1c009896:	5886                	lw	a7,96(sp)
1c009898:	5aa6                	lw	s5,104(sp)
1c00989a:	fffe4413          	not	s0,t3
1c00989e:	fffc4393          	not	t2,s8
1c0098a2:	4e3a                	lw	t3,140(sp)
1c0098a4:	12912023          	sw	s1,288(sp)
1c0098a8:	fff6cc93          	not	s9,a3
1c0098ac:	44e6                	lw	s1,88(sp)
1c0098ae:	fff84c13          	not	s8,a6
1c0098b2:	46f6                	lw	a3,92(sp)
1c0098b4:	480a                	lw	a6,128(sp)
1c0098b6:	fff34313          	not	t1,t1
1c0098ba:	fff74713          	not	a4,a4
1c0098be:	fff7c793          	not	a5,a5
1c0098c2:	012fefb3          	or	t6,t6,s2
1c0098c6:	55d2                	lw	a1,52(sp)
1c0098c8:	5916                	lw	s2,100(sp)
1c0098ca:	4baa                	lw	s7,136(sp)
1c0098cc:	c46a                	sw	s10,8(sp)
1c0098ce:	ffff4293          	not	t0,t5
1c0098d2:	fff54d13          	not	s10,a0
1c0098d6:	fff64f13          	not	t5,a2
1c0098da:	fff8ca13          	not	s4,a7
1c0098de:	fffac513          	not	a0,s5
1c0098e2:	489a                	lw	a7,132(sp)
1c0098e4:	fffe4613          	not	a2,t3
1c0098e8:	12612223          	sw	t1,292(sp)
1c0098ec:	fff6ce13          	not	t3,a3
1c0098f0:	fff4c313          	not	t1,s1
1c0098f4:	12e12823          	sw	a4,304(sp)
1c0098f8:	54b6                	lw	s1,108(sp)
1c0098fa:	14f12e23          	sw	a5,348(sp)
1c0098fe:	fff84a93          	not	s5,a6
1c009902:	56fa                	lw	a3,188(sp)
1c009904:	470e                	lw	a4,192(sp)
1c009906:	479e                	lw	a5,196(sp)
1c009908:	485a                	lw	a6,148(sp)
1c00990a:	fff6c693          	not	a3,a3
1c00990e:	fff74713          	not	a4,a4
1c009912:	fff7c793          	not	a5,a5
1c009916:	fff84813          	not	a6,a6
1c00991a:	fff5ce93          	not	t4,a1
1c00991e:	fff94993          	not	s3,s2
1c009922:	fffbc593          	not	a1,s7
1c009926:	fff4c913          	not	s2,s1
1c00992a:	fff8cb93          	not	s7,a7
1c00992e:	16d12023          	sw	a3,352(sp)
1c009932:	c9ba                	sw	a4,208(sp)
1c009934:	cbbe                	sw	a5,212(sp)
1c009936:	d3c2                	sw	a6,228(sp)
1c009938:	48ea                	lw	a7,152(sp)
1c00993a:	54ba                	lw	s1,172(sp)
1c00993c:	56c6                	lw	a3,112(sp)
1c00993e:	5756                	lw	a4,116(sp)
1c009940:	4786                	lw	a5,64(sp)
1c009942:	4816                	lw	a6,68(sp)
1c009944:	fff8c893          	not	a7,a7
1c009948:	fff4c493          	not	s1,s1
1c00994c:	fff6c693          	not	a3,a3
1c009950:	fff74713          	not	a4,a4
1c009954:	fff7c793          	not	a5,a5
1c009958:	fff84813          	not	a6,a6
1c00995c:	11112c23          	sw	a7,280(sp)
1c009960:	10912e23          	sw	s1,284(sp)
1c009964:	d5b6                	sw	a3,232(sp)
1c009966:	d7ba                	sw	a4,236(sp)
1c009968:	d9be                	sw	a5,240(sp)
1c00996a:	dbc2                	sw	a6,244(sp)
1c00996c:	48a6                	lw	a7,72(sp)
1c00996e:	44b6                	lw	s1,76(sp)
1c009970:	46c6                	lw	a3,80(sp)
1c009972:	571a                	lw	a4,164(sp)
1c009974:	57aa                	lw	a5,168(sp)
1c009976:	483e                	lw	a6,204(sp)
1c009978:	fff8c893          	not	a7,a7
1c00997c:	fff4c493          	not	s1,s1
1c009980:	fff6c693          	not	a3,a3
1c009984:	fff74713          	not	a4,a4
1c009988:	fff7c793          	not	a5,a5
1c00998c:	fff84813          	not	a6,a6
1c009990:	dfa6                	sw	s1,252(sp)
1c009992:	10d12023          	sw	a3,256(sp)
1c009996:	10e12223          	sw	a4,260(sp)
1c00999a:	10f12423          	sw	a5,264(sp)
1c00999e:	13012a23          	sw	a6,308(sp)
1c0099a2:	ddc6                	sw	a7,248(sp)
1c0099a4:	58ca                	lw	a7,176(sp)
1c0099a6:	44ee                	lw	s1,216(sp)
1c0099a8:	fff8c893          	not	a7,a7
1c0099ac:	13112c23          	sw	a7,312(sp)
1c0099b0:	fff4c493          	not	s1,s1
1c0099b4:	11012803          	lw	a6,272(sp)
1c0099b8:	11412883          	lw	a7,276(sp)
1c0099bc:	12912e23          	sw	s1,316(sp)
1c0099c0:	46fe                	lw	a3,220(sp)
1c0099c2:	578e                	lw	a5,224(sp)
1c0099c4:	44d6                	lw	s1,84(sp)
1c0099c6:	fff84813          	not	a6,a6
1c0099ca:	fff8c893          	not	a7,a7
1c0099ce:	ffffc713          	not	a4,t6
1c0099d2:	fff6c693          	not	a3,a3
1c0099d6:	fff7c793          	not	a5,a5
1c0099da:	15012623          	sw	a6,332(sp)
1c0099de:	15112823          	sw	a7,336(sp)
1c0099e2:	fff4c493          	not	s1,s1
1c0099e6:	5882                	lw	a7,32(sp)
1c0099e8:	4822                	lw	a6,8(sp)
1c0099ea:	14d12023          	sw	a3,320(sp)
1c0099ee:	14e12223          	sw	a4,324(sp)
1c0099f2:	14f12423          	sw	a5,328(sp)
1c0099f6:	14912a23          	sw	s1,340(sp)
1c0099fa:	47e2                	lw	a5,24(sp)
1c0099fc:	54a2                	lw	s1,40(sp)
1c0099fe:	46ae                	lw	a3,200(sp)
1c009a00:	4732                	lw	a4,12(sp)
1c009a02:	01184833          	xor	a6,a6,a7
1c009a06:	8f3d                	xor	a4,a4,a5
1c009a08:	fff6c693          	not	a3,a3
1c009a0c:	dd42                	sw	a6,184(sp)
1c009a0e:	8c65                	and	s0,s0,s1
1c009a10:	5842                	lw	a6,48(sp)
1c009a12:	54d2                	lw	s1,52(sp)
1c009a14:	10c12783          	lw	a5,268(sp)
1c009a18:	12012883          	lw	a7,288(sp)
1c009a1c:	14d12c23          	sw	a3,344(sp)
1c009a20:	db3a                	sw	a4,180(sp)
1c009a22:	56b2                	lw	a3,44(sp)
1c009a24:	5772                	lw	a4,60(sp)
1c009a26:	0107f7b3          	and	a5,a5,a6
1c009a2a:	0098f8b3          	and	a7,a7,s1
1c009a2e:	00d3f3b3          	and	t2,t2,a3
1c009a32:	00e2f2b3          	and	t0,t0,a4
1c009a36:	16f12e23          	sw	a5,380(sp)
1c009a3a:	19112023          	sw	a7,384(sp)
1c009a3e:	46f2                	lw	a3,28(sp)
1c009a40:	4762                	lw	a4,24(sp)
1c009a42:	5782                	lw	a5,32(sp)
1c009a44:	5812                	lw	a6,36(sp)
1c009a46:	5486                	lw	s1,96(sp)
1c009a48:	00eefeb3          	and	t4,t4,a4
1c009a4c:	00ff7f33          	and	t5,t5,a5
1c009a50:	5726                	lw	a4,104(sp)
1c009a52:	47aa                	lw	a5,136(sp)
1c009a54:	58e2                	lw	a7,56(sp)
1c009a56:	00dd7d33          	and	s10,s10,a3
1c009a5a:	010cfcb3          	and	s9,s9,a6
1c009a5e:	5696                	lw	a3,100(sp)
1c009a60:	483a                	lw	a6,140(sp)
1c009a62:	009b7b33          	and	s6,s6,s1
1c009a66:	00ea7a33          	and	s4,s4,a4
1c009a6a:	44e6                	lw	s1,88(sp)
1c009a6c:	12412703          	lw	a4,292(sp)
1c009a70:	00f9f9b3          	and	s3,s3,a5
1c009a74:	47f6                	lw	a5,92(sp)
1c009a76:	011dfdb3          	and	s11,s11,a7
1c009a7a:	00dc7c33          	and	s8,s8,a3
1c009a7e:	48ca                	lw	a7,144(sp)
1c009a80:	00f776b3          	and	a3,a4,a5
1c009a84:	01057533          	and	a0,a0,a6
1c009a88:	470a                	lw	a4,128(sp)
1c009a8a:	5866                	lw	a6,120(sp)
1c009a8c:	8e65                	and	a2,a2,s1
1c009a8e:	13012483          	lw	s1,304(sp)
1c009a92:	15c12783          	lw	a5,348(sp)
1c009a96:	0115f5b3          	and	a1,a1,a7
1c009a9a:	01037333          	and	t1,t1,a6
1c009a9e:	58f6                	lw	a7,124(sp)
1c009aa0:	00e4f833          	and	a6,s1,a4
1c009aa4:	449a                	lw	s1,132(sp)
1c009aa6:	5736                	lw	a4,108(sp)
1c009aa8:	011e7e33          	and	t3,t3,a7
1c009aac:	0097f8b3          	and	a7,a5,s1
1c009ab0:	57fa                	lw	a5,188(sp)
1c009ab2:	448e                	lw	s1,192(sp)
1c009ab4:	00eafab3          	and	s5,s5,a4
1c009ab8:	00fbfbb3          	and	s7,s7,a5
1c009abc:	16012703          	lw	a4,352(sp)
1c009ac0:	479e                	lw	a5,196(sp)
1c009ac2:	00997933          	and	s2,s2,s1
1c009ac6:	00f774b3          	and	s1,a4,a5
1c009aca:	47da                	lw	a5,148(sp)
1c009acc:	474e                	lw	a4,208(sp)
1c009ace:	8f7d                	and	a4,a4,a5
1c009ad0:	cc3a                	sw	a4,24(sp)
1c009ad2:	47ea                	lw	a5,152(sp)
1c009ad4:	475e                	lw	a4,212(sp)
1c009ad6:	8f7d                	and	a4,a4,a5
1c009ad8:	d03a                	sw	a4,32(sp)
1c009ada:	571e                	lw	a4,228(sp)
1c009adc:	47fa                	lw	a5,156(sp)
1c009ade:	8f7d                	and	a4,a4,a5
1c009ae0:	10e12623          	sw	a4,268(sp)
1c009ae4:	578a                	lw	a5,160(sp)
1c009ae6:	11812703          	lw	a4,280(sp)
1c009aea:	8f7d                	and	a4,a4,a5
1c009aec:	12e12023          	sw	a4,288(sp)
1c009af0:	57d6                	lw	a5,116(sp)
1c009af2:	11c12703          	lw	a4,284(sp)
1c009af6:	8f7d                	and	a4,a4,a5
1c009af8:	12e12223          	sw	a4,292(sp)
1c009afc:	4786                	lw	a5,64(sp)
1c009afe:	572e                	lw	a4,232(sp)
1c009b00:	8f7d                	and	a4,a4,a5
1c009b02:	12e12823          	sw	a4,304(sp)
1c009b06:	4796                	lw	a5,68(sp)
1c009b08:	573e                	lw	a4,236(sp)
1c009b0a:	8f7d                	and	a4,a4,a5
1c009b0c:	14e12e23          	sw	a4,348(sp)
1c009b10:	47a6                	lw	a5,72(sp)
1c009b12:	574e                	lw	a4,240(sp)
1c009b14:	8f7d                	and	a4,a4,a5
1c009b16:	16e12023          	sw	a4,352(sp)
1c009b1a:	47b6                	lw	a5,76(sp)
1c009b1c:	575e                	lw	a4,244(sp)
1c009b1e:	8f7d                	and	a4,a4,a5
1c009b20:	16e12223          	sw	a4,356(sp)
1c009b24:	47c6                	lw	a5,80(sp)
1c009b26:	576e                	lw	a4,248(sp)
1c009b28:	8f7d                	and	a4,a4,a5
1c009b2a:	16e12423          	sw	a4,360(sp)
1c009b2e:	579a                	lw	a5,164(sp)
1c009b30:	577e                	lw	a4,252(sp)
1c009b32:	8f7d                	and	a4,a4,a5
1c009b34:	16e12623          	sw	a4,364(sp)
1c009b38:	57aa                	lw	a5,168(sp)
1c009b3a:	10012703          	lw	a4,256(sp)
1c009b3e:	8f7d                	and	a4,a4,a5
1c009b40:	16e12823          	sw	a4,368(sp)
1c009b44:	57ba                	lw	a5,172(sp)
1c009b46:	10412703          	lw	a4,260(sp)
1c009b4a:	8f7d                	and	a4,a4,a5
1c009b4c:	16e12a23          	sw	a4,372(sp)
1c009b50:	10812703          	lw	a4,264(sp)
1c009b54:	57c6                	lw	a5,112(sp)
1c009b56:	8f7d                	and	a4,a4,a5
1c009b58:	16e12c23          	sw	a4,376(sp)
1c009b5c:	47ee                	lw	a5,216(sp)
1c009b5e:	13412703          	lw	a4,308(sp)
1c009b62:	8f7d                	and	a4,a4,a5
1c009b64:	12e12a23          	sw	a4,308(sp)
1c009b68:	47fe                	lw	a5,220(sp)
1c009b6a:	13812703          	lw	a4,312(sp)
1c009b6e:	8f7d                	and	a4,a4,a5
1c009b70:	12e12c23          	sw	a4,312(sp)
1c009b74:	13c12703          	lw	a4,316(sp)
1c009b78:	14012783          	lw	a5,320(sp)
1c009b7c:	01f77733          	and	a4,a4,t6
1c009b80:	12e12e23          	sw	a4,316(sp)
1c009b84:	570e                	lw	a4,224(sp)
1c009b86:	8ff9                	and	a5,a5,a4
1c009b88:	14f12023          	sw	a5,320(sp)
1c009b8c:	11012703          	lw	a4,272(sp)
1c009b90:	14412783          	lw	a5,324(sp)
1c009b94:	8ff9                	and	a5,a5,a4
1c009b96:	14f12223          	sw	a5,324(sp)
1c009b9a:	11412703          	lw	a4,276(sp)
1c009b9e:	14812783          	lw	a5,328(sp)
1c009ba2:	8ff9                	and	a5,a5,a4
1c009ba4:	14f12423          	sw	a5,328(sp)
1c009ba8:	4756                	lw	a4,84(sp)
1c009baa:	14c12783          	lw	a5,332(sp)
1c009bae:	8ff9                	and	a5,a5,a4
1c009bb0:	14f12623          	sw	a5,332(sp)
1c009bb4:	472e                	lw	a4,200(sp)
1c009bb6:	15012783          	lw	a5,336(sp)
1c009bba:	8ff9                	and	a5,a5,a4
1c009bbc:	14f12823          	sw	a5,336(sp)
1c009bc0:	473e                	lw	a4,204(sp)
1c009bc2:	15412783          	lw	a5,340(sp)
1c009bc6:	8ff9                	and	a5,a5,a4
1c009bc8:	14f12a23          	sw	a5,340(sp)
1c009bcc:	574a                	lw	a4,176(sp)
1c009bce:	15812783          	lw	a5,344(sp)
1c009bd2:	8ff9                	and	a5,a5,a4
1c009bd4:	14f12c23          	sw	a5,344(sp)
1c009bd8:	12c12783          	lw	a5,300(sp)
1c009bdc:	575a                	lw	a4,180(sp)
1c009bde:	07c1                	addi	a5,a5,16
1c009be0:	12f12623          	sw	a5,300(sp)
1c009be4:	57ea                	lw	a5,184(sp)
1c009be6:	8c39                	xor	s0,s0,a4
1c009be8:	0077c3b3          	xor	t2,a5,t2
1c009bec:	5762                	lw	a4,56(sp)
1c009bee:	db22                	sw	s0,180(sp)
1c009bf0:	dd1e                	sw	t2,184(sp)
1c009bf2:	17c12403          	lw	s0,380(sp)
1c009bf6:	5392                	lw	t2,36(sp)
1c009bf8:	8c39                	xor	s0,s0,a4
1c009bfa:	0072c2b3          	xor	t0,t0,t2
1c009bfe:	5742                	lw	a4,48(sp)
1c009c00:	53b2                	lw	t2,44(sp)
1c009c02:	c996                	sw	t0,208(sp)
1c009c04:	cba2                	sw	s0,212(sp)
1c009c06:	52a2                	lw	t0,40(sp)
1c009c08:	5472                	lw	s0,60(sp)
1c009c0a:	18012783          	lw	a5,384(sp)
1c009c0e:	007d4d33          	xor	s10,s10,t2
1c009c12:	0057c7b3          	xor	a5,a5,t0
1c009c16:	008eceb3          	xor	t4,t4,s0
1c009c1a:	00ef4f33          	xor	t5,t5,a4
1c009c1e:	5406                	lw	s0,96(sp)
1c009c20:	d3be                	sw	a5,228(sp)
1c009c22:	11a12c23          	sw	s10,280(sp)
1c009c26:	57d2                	lw	a5,52(sp)
1c009c28:	4d72                	lw	s10,28(sp)
1c009c2a:	11d12e23          	sw	t4,284(sp)
1c009c2e:	d5fa                	sw	t5,232(sp)
1c009c30:	4ee6                	lw	t4,88(sp)
1c009c32:	4f76                	lw	t5,92(sp)
1c009c34:	00fcccb3          	xor	s9,s9,a5
1c009c38:	01db4b33          	xor	s6,s6,t4
1c009c3c:	01ec4c33          	xor	s8,s8,t5
1c009c40:	8d21                	xor	a0,a0,s0
1c009c42:	01adcdb3          	xor	s11,s11,s10
1c009c46:	52e6                	lw	t0,120(sp)
1c009c48:	53f6                	lw	t2,124(sp)
1c009c4a:	d7e6                	sw	s9,236(sp)
1c009c4c:	dbda                	sw	s6,244(sp)
1c009c4e:	dde2                	sw	s8,248(sp)
1c009c50:	d9ee                	sw	s11,240(sp)
1c009c52:	ccaa                	sw	a0,88(sp)
1c009c54:	5516                	lw	a0,100(sp)
1c009c56:	47da                	lw	a5,148(sp)
1c009c58:	8da9                	xor	a1,a1,a0
1c009c5a:	00f84833          	xor	a6,a6,a5
1c009c5e:	ceae                	sw	a1,92(sp)
1c009c60:	55a6                	lw	a1,104(sp)
1c009c62:	d0c2                	sw	a6,96(sp)
1c009c64:	486a                	lw	a6,152(sp)
1c009c66:	8e2d                	xor	a2,a2,a1
1c009c68:	dfb2                	sw	a2,252(sp)
1c009c6a:	0108cb33          	xor	s6,a7,a6
1c009c6e:	462a                	lw	a2,136(sp)
1c009c70:	48fa                	lw	a7,156(sp)
1c009c72:	8eb1                	xor	a3,a3,a2
1c009c74:	011acab3          	xor	s5,s5,a7
1c009c78:	474a                	lw	a4,144(sp)
1c009c7a:	10d12023          	sw	a3,256(sp)
1c009c7e:	11512223          	sw	s5,260(sp)
1c009c82:	46ba                	lw	a3,140(sp)
1c009c84:	5a8a                	lw	s5,160(sp)
1c009c86:	4d1a                	lw	s10,132(sp)
1c009c88:	00d34333          	xor	t1,t1,a3
1c009c8c:	00ee4e33          	xor	t3,t3,a4
1c009c90:	015bcbb3          	xor	s7,s7,s5
1c009c94:	5eb6                	lw	t4,108(sp)
1c009c96:	12012403          	lw	s0,288(sp)
1c009c9a:	dc9a                	sw	t1,120(sp)
1c009c9c:	def2                	sw	t3,124(sp)
1c009c9e:	10c12303          	lw	t1,268(sp)
1c009ca2:	11712423          	sw	s7,264(sp)
1c009ca6:	01a4cab3          	xor	s5,s1,s10
1c009caa:	4b8a                	lw	s7,128(sp)
1c009cac:	449e                	lw	s1,196(sp)
1c009cae:	4e62                	lw	t3,24(sp)
1c009cb0:	5f02                	lw	t5,32(sp)
1c009cb2:	005a4a33          	xor	s4,s4,t0
1c009cb6:	0079c9b3          	xor	s3,s3,t2
1c009cba:	52fa                	lw	t0,188(sp)
1c009cbc:	438e                	lw	t2,192(sp)
1c009cbe:	01794933          	xor	s2,s2,s7
1c009cc2:	01de4e33          	xor	t3,t3,t4
1c009cc6:	005f4f33          	xor	t5,t5,t0
1c009cca:	00734333          	xor	t1,t1,t2
1c009cce:	8c25                	xor	s0,s0,s1
1c009cd0:	d2ca                	sw	s2,100(sp)
1c009cd2:	d4f2                	sw	t3,104(sp)
1c009cd4:	c57a                	sw	t5,136(sp)
1c009cd6:	10612623          	sw	t1,268(sp)
1c009cda:	12812023          	sw	s0,288(sp)
1c009cde:	12412503          	lw	a0,292(sp)
1c009ce2:	559a                	lw	a1,164(sp)
1c009ce4:	13012603          	lw	a2,304(sp)
1c009ce8:	56aa                	lw	a3,168(sp)
1c009cea:	8d2d                	xor	a0,a0,a1
1c009cec:	8e35                	xor	a2,a2,a3
1c009cee:	57ba                	lw	a5,172(sp)
1c009cf0:	58c6                	lw	a7,112(sp)
1c009cf2:	5bd6                	lw	s7,116(sp)
1c009cf4:	4e06                	lw	t3,64(sp)
1c009cf6:	4326                	lw	t1,72(sp)
1c009cf8:	4436                	lw	s0,76(sp)
1c009cfa:	12a12223          	sw	a0,292(sp)
1c009cfe:	12c12823          	sw	a2,304(sp)
1c009d02:	4546                	lw	a0,80(sp)
1c009d04:	4656                	lw	a2,84(sp)
1c009d06:	15c12703          	lw	a4,348(sp)
1c009d0a:	16012803          	lw	a6,352(sp)
1c009d0e:	16412903          	lw	s2,356(sp)
1c009d12:	16812d03          	lw	s10,360(sp)
1c009d16:	17012283          	lw	t0,368(sp)
1c009d1a:	17412383          	lw	t2,372(sp)
1c009d1e:	17812483          	lw	s1,376(sp)
1c009d22:	13412583          	lw	a1,308(sp)
1c009d26:	8f3d                	xor	a4,a4,a5
1c009d28:	01184833          	xor	a6,a6,a7
1c009d2c:	01794933          	xor	s2,s2,s7
1c009d30:	01cd4d33          	xor	s10,s10,t3
1c009d34:	16c12e83          	lw	t4,364(sp)
1c009d38:	4f16                	lw	t5,68(sp)
1c009d3a:	0062c2b3          	xor	t0,t0,t1
1c009d3e:	0083c3b3          	xor	t2,t2,s0
1c009d42:	8ca9                	xor	s1,s1,a0
1c009d44:	8db1                	xor	a1,a1,a2
1c009d46:	c73a                	sw	a4,140(sp)
1c009d48:	c942                	sw	a6,144(sp)
1c009d4a:	d34a                	sw	s2,164(sp)
1c009d4c:	d56a                	sw	s10,168(sp)
1c009d4e:	cb16                	sw	t0,148(sp)
1c009d50:	cd1e                	sw	t2,152(sp)
1c009d52:	cf26                	sw	s1,156(sp)
1c009d54:	d12e                	sw	a1,160(sp)
1c009d56:	13812683          	lw	a3,312(sp)
1c009d5a:	472e                	lw	a4,200(sp)
1c009d5c:	01eecbb3          	xor	s7,t4,t5
1c009d60:	13c12783          	lw	a5,316(sp)
1c009d64:	483e                	lw	a6,204(sp)
1c009d66:	14012883          	lw	a7,320(sp)
1c009d6a:	594a                	lw	s2,176(sp)
1c009d6c:	14412d03          	lw	s10,324(sp)
1c009d70:	4e6e                	lw	t3,216(sp)
1c009d72:	14812e83          	lw	t4,328(sp)
1c009d76:	4f7e                	lw	t5,220(sp)
1c009d78:	14c12283          	lw	t0,332(sp)
1c009d7c:	15012303          	lw	t1,336(sp)
1c009d80:	538e                	lw	t2,224(sp)
1c009d82:	8eb9                	xor	a3,a3,a4
1c009d84:	c136                	sw	a3,128(sp)
1c009d86:	0107c7b3          	xor	a5,a5,a6
1c009d8a:	0128c8b3          	xor	a7,a7,s2
1c009d8e:	01cd4d33          	xor	s10,s10,t3
1c009d92:	01eeceb3          	xor	t4,t4,t5
1c009d96:	01f2cfb3          	xor	t6,t0,t6
1c009d9a:	00734333          	xor	t1,t1,t2
1c009d9e:	15412403          	lw	s0,340(sp)
1c009da2:	11012483          	lw	s1,272(sp)
1c009da6:	15812503          	lw	a0,344(sp)
1c009daa:	11412583          	lw	a1,276(sp)
1c009dae:	1c000637          	lui	a2,0x1c000
1c009db2:	12c12683          	lw	a3,300(sp)
1c009db6:	d8be                	sw	a5,112(sp)
1c009db8:	dac6                	sw	a7,116(sp)
1c009dba:	c36a                	sw	s10,132(sp)
1c009dbc:	d6f6                	sw	t4,108(sp)
1c009dbe:	d77e                	sw	t6,172(sp)
1c009dc0:	c09a                	sw	t1,64(sp)
1c009dc2:	20060613          	addi	a2,a2,512 # 1c000200 <PQCLEAN_KYBER768_CLEAN_zetas>
1c009dc6:	00944c33          	xor	s8,s0,s1
1c009dca:	00b54cb3          	xor	s9,a0,a1
1c009dce:	00d60463          	beq	a2,a3,1c009dd6 <KeccakF1600_StatePermute+0x19e4>
1c009dd2:	fccfe06f          	j	1c00859e <KeccakF1600_StatePermute+0x1ac>
1c009dd6:	12812703          	lw	a4,296(sp)
1c009dda:	57da                	lw	a5,180(sp)
1c009ddc:	586a                	lw	a6,184(sp)
1c009dde:	48ce                	lw	a7,208(sp)
1c009de0:	11c12d03          	lw	s10,284(sp)
1c009de4:	5e2e                	lw	t3,232(sp)
1c009de6:	5ebe                	lw	t4,236(sp)
1c009de8:	5fde                	lw	t6,244(sp)
1c009dea:	52ee                	lw	t0,248(sp)
1c009dec:	4366                	lw	t1,88(sp)
1c009dee:	43f6                	lw	t2,92(sp)
1c009df0:	557e                	lw	a0,252(sp)
1c009df2:	8f6e                	mv	t5,s11
1c009df4:	84da                	mv	s1,s6
1c009df6:	8dd2                	mv	s11,s4
1c009df8:	11812b03          	lw	s6,280(sp)
1c009dfc:	5a1e                	lw	s4,228(sp)
1c009dfe:	8966                	mv	s2,s9
1c009e00:	8cce                	mv	s9,s3
1c009e02:	49de                	lw	s3,212(sp)
1c009e04:	c31c                	sw	a5,0(a4)
1c009e06:	01072223          	sw	a6,4(a4) # 1000004 <__CTOR_LIST__-0x1b000000>
1c009e0a:	01172423          	sw	a7,8(a4)
1c009e0e:	01372623          	sw	s3,12(a4)
1c009e12:	01472823          	sw	s4,16(a4)
1c009e16:	01672a23          	sw	s6,20(a4)
1c009e1a:	01a72c23          	sw	s10,24(a4)
1c009e1e:	01c72e23          	sw	t3,28(a4)
1c009e22:	03d72023          	sw	t4,32(a4)
1c009e26:	03e72223          	sw	t5,36(a4)
1c009e2a:	03f72423          	sw	t6,40(a4)
1c009e2e:	02572623          	sw	t0,44(a4)
1c009e32:	03b72823          	sw	s11,48(a4)
1c009e36:	03972a23          	sw	s9,52(a4)
1c009e3a:	02672c23          	sw	t1,56(a4)
1c009e3e:	02772e23          	sw	t2,60(a4)
1c009e42:	c328                	sw	a0,64(a4)
1c009e44:	10012583          	lw	a1,256(sp)
1c009e48:	5666                	lw	a2,120(sp)
1c009e4a:	56f6                	lw	a3,124(sp)
1c009e4c:	5786                	lw	a5,96(sp)
1c009e4e:	10412803          	lw	a6,260(sp)
1c009e52:	10812883          	lw	a7,264(sp)
1c009e56:	5996                	lw	s3,100(sp)
1c009e58:	5a26                	lw	s4,104(sp)
1c009e5a:	10c12b03          	lw	s6,268(sp)
1c009e5e:	12012d03          	lw	s10,288(sp)
1c009e62:	12412e03          	lw	t3,292(sp)
1c009e66:	13012e83          	lw	t4,304(sp)
1c009e6a:	4f3a                	lw	t5,140(sp)
1c009e6c:	4fca                	lw	t6,144(sp)
1c009e6e:	07572223          	sw	s5,100(a4)
1c009e72:	4aaa                	lw	s5,136(sp)
1c009e74:	c36c                	sw	a1,68(a4)
1c009e76:	c730                	sw	a2,72(a4)
1c009e78:	c774                	sw	a3,76(a4)
1c009e7a:	cb3c                	sw	a5,80(a4)
1c009e7c:	cb64                	sw	s1,84(a4)
1c009e7e:	05072c23          	sw	a6,88(a4)
1c009e82:	05172e23          	sw	a7,92(a4)
1c009e86:	07372023          	sw	s3,96(a4)
1c009e8a:	07472423          	sw	s4,104(a4)
1c009e8e:	07572623          	sw	s5,108(a4)
1c009e92:	07672823          	sw	s6,112(a4)
1c009e96:	07a72a23          	sw	s10,116(a4)
1c009e9a:	07c72c23          	sw	t3,120(a4)
1c009e9e:	07d72e23          	sw	t4,124(a4)
1c009ea2:	09e72023          	sw	t5,128(a4)
1c009ea6:	09f72223          	sw	t6,132(a4)
1c009eaa:	529a                	lw	t0,164(sp)
1c009eac:	44ea                	lw	s1,152(sp)
1c009eae:	4a06                	lw	s4,64(sp)
1c009eb0:	532a                	lw	t1,168(sp)
1c009eb2:	43da                	lw	t2,148(sp)
1c009eb4:	457a                	lw	a0,156(sp)
1c009eb6:	558a                	lw	a1,160(sp)
1c009eb8:	460a                	lw	a2,128(sp)
1c009eba:	56c6                	lw	a3,112(sp)
1c009ebc:	57d6                	lw	a5,116(sp)
1c009ebe:	481a                	lw	a6,132(sp)
1c009ec0:	58b6                	lw	a7,108(sp)
1c009ec2:	59ba                	lw	s3,172(sp)
1c009ec4:	1cc12403          	lw	s0,460(sp)
1c009ec8:	09772823          	sw	s7,144(a4)
1c009ecc:	08972c23          	sw	s1,152(a4)
1c009ed0:	0b472e23          	sw	s4,188(a4)
1c009ed4:	0d872023          	sw	s8,192(a4)
1c009ed8:	0d272223          	sw	s2,196(a4)
1c009edc:	1c812483          	lw	s1,456(sp)
1c009ee0:	1c412903          	lw	s2,452(sp)
1c009ee4:	08572423          	sw	t0,136(a4)
1c009ee8:	08672623          	sw	t1,140(a4)
1c009eec:	08772a23          	sw	t2,148(a4)
1c009ef0:	08a72e23          	sw	a0,156(a4)
1c009ef4:	0ab72023          	sw	a1,160(a4)
1c009ef8:	0ac72223          	sw	a2,164(a4)
1c009efc:	0ad72423          	sw	a3,168(a4)
1c009f00:	0af72623          	sw	a5,172(a4)
1c009f04:	0b072823          	sw	a6,176(a4)
1c009f08:	0b172a23          	sw	a7,180(a4)
1c009f0c:	0b372c23          	sw	s3,184(a4)
1c009f10:	1c012983          	lw	s3,448(sp)
1c009f14:	1bc12a03          	lw	s4,444(sp)
1c009f18:	1b812a83          	lw	s5,440(sp)
1c009f1c:	1b412b03          	lw	s6,436(sp)
1c009f20:	1b012b83          	lw	s7,432(sp)
1c009f24:	1ac12c03          	lw	s8,428(sp)
1c009f28:	1a812c83          	lw	s9,424(sp)
1c009f2c:	1a412d03          	lw	s10,420(sp)
1c009f30:	1a012d83          	lw	s11,416(sp)
1c009f34:	6179                	addi	sp,sp,464
1c009f36:	8082                	ret

1c009f38 <keccak_absorb.constprop.7>:
1c009f38:	7151                	addi	sp,sp,-240
1c009f3a:	d3a6                	sw	s1,228(sp)
1c009f3c:	d1ca                	sw	s2,224(sp)
1c009f3e:	cdd2                	sw	s4,216(sp)
1c009f40:	cbd6                	sw	s5,212(sp)
1c009f42:	d786                	sw	ra,236(sp)
1c009f44:	d5a2                	sw	s0,232(sp)
1c009f46:	cfce                	sw	s3,220(sp)
1c009f48:	892a                	mv	s2,a0
1c009f4a:	8a32                	mv	s4,a2
1c009f4c:	84b6                	mv	s1,a3
1c009f4e:	8aaa                	mv	s5,a0
1c009f50:	0c850713          	addi	a4,a0,200
1c009f54:	87aa                	mv	a5,a0
1c009f56:	4601                	li	a2,0
1c009f58:	4681                	li	a3,0
1c009f5a:	c390                	sw	a2,0(a5)
1c009f5c:	c3d4                	sw	a3,4(a5)
1c009f5e:	07a1                	addi	a5,a5,8
1c009f60:	fef71be3          	bne	a4,a5,1c009f56 <keccak_absorb.constprop.7+0x1e>
1c009f64:	08700793          	li	a5,135
1c009f68:	0747fb63          	bleu	s4,a5,1c009fde <keccak_absorb.constprop.7+0xa6>
1c009f6c:	08700413          	li	s0,135
1c009f70:	08858993          	addi	s3,a1,136
1c009f74:	874a                	mv	a4,s2
1c009f76:	0015c783          	lbu	a5,1(a1)
1c009f7a:	0025c603          	lbu	a2,2(a1)
1c009f7e:	0055c883          	lbu	a7,5(a1)
1c009f82:	0045c303          	lbu	t1,4(a1)
1c009f86:	0065c803          	lbu	a6,6(a1)
1c009f8a:	0005ce03          	lbu	t3,0(a1)
1c009f8e:	0035c503          	lbu	a0,3(a1)
1c009f92:	0075c683          	lbu	a3,7(a1)
1c009f96:	0642                	slli	a2,a2,0x10
1c009f98:	07a2                	slli	a5,a5,0x8
1c009f9a:	08a2                	slli	a7,a7,0x8
1c009f9c:	8fd1                	or	a5,a5,a2
1c009f9e:	0068e8b3          	or	a7,a7,t1
1c009fa2:	0842                	slli	a6,a6,0x10
1c009fa4:	4310                	lw	a2,0(a4)
1c009fa6:	00472303          	lw	t1,4(a4)
1c009faa:	01c7e7b3          	or	a5,a5,t3
1c009fae:	0562                	slli	a0,a0,0x18
1c009fb0:	01186833          	or	a6,a6,a7
1c009fb4:	06e2                	slli	a3,a3,0x18
1c009fb6:	8fc9                	or	a5,a5,a0
1c009fb8:	0106e6b3          	or	a3,a3,a6
1c009fbc:	8fb1                	xor	a5,a5,a2
1c009fbe:	00d346b3          	xor	a3,t1,a3
1c009fc2:	c31c                	sw	a5,0(a4)
1c009fc4:	c354                	sw	a3,4(a4)
1c009fc6:	05a1                	addi	a1,a1,8
1c009fc8:	0721                	addi	a4,a4,8
1c009fca:	fab996e3          	bne	s3,a1,1c009f76 <keccak_absorb.constprop.7+0x3e>
1c009fce:	854a                	mv	a0,s2
1c009fd0:	c22fe0ef          	jal	ra,1c0083f2 <KeccakF1600_StatePermute>
1c009fd4:	f78a0a13          	addi	s4,s4,-136
1c009fd8:	85ce                	mv	a1,s3
1c009fda:	f9446be3          	bltu	s0,s4,1c009f70 <keccak_absorb.constprop.7+0x38>
1c009fde:	003c                	addi	a5,sp,8
1c009fe0:	0918                	addi	a4,sp,144
1c009fe2:	883e                	mv	a6,a5
1c009fe4:	4681                	li	a3,0
1c009fe6:	00d82023          	sw	a3,0(a6)
1c009fea:	0811                	addi	a6,a6,4
1c009fec:	ff071ce3          	bne	a4,a6,1c009fe4 <keccak_absorb.constprop.7+0xac>
1c009ff0:	060a0463          	beqz	s4,1c00a058 <keccak_absorb.constprop.7+0x120>
1c009ff4:	fffa0713          	addi	a4,s4,-1
1c009ff8:	4689                	li	a3,2
1c009ffa:	0ee6f163          	bleu	a4,a3,1c00a0dc <keccak_absorb.constprop.7+0x1a4>
1c009ffe:	002a5893          	srli	a7,s4,0x2
1c00a002:	862e                	mv	a2,a1
1c00a004:	86be                	mv	a3,a5
1c00a006:	4701                	li	a4,0
1c00a008:	4208                	lw	a0,0(a2)
1c00a00a:	0705                	addi	a4,a4,1
1c00a00c:	c288                	sw	a0,0(a3)
1c00a00e:	0611                	addi	a2,a2,4
1c00a010:	0691                	addi	a3,a3,4
1c00a012:	ff176be3          	bltu	a4,a7,1c00a008 <keccak_absorb.constprop.7+0xd0>
1c00a016:	ffca7713          	andi	a4,s4,-4
1c00a01a:	02ea0f63          	beq	s4,a4,1c00a058 <keccak_absorb.constprop.7+0x120>
1c00a01e:	00e586b3          	add	a3,a1,a4
1c00a022:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c00a026:	0988                	addi	a0,sp,208
1c00a028:	00e506b3          	add	a3,a0,a4
1c00a02c:	f2c68c23          	sb	a2,-200(a3)
1c00a030:	00170693          	addi	a3,a4,1
1c00a034:	0346f263          	bleu	s4,a3,1c00a058 <keccak_absorb.constprop.7+0x120>
1c00a038:	00d58633          	add	a2,a1,a3
1c00a03c:	00064603          	lbu	a2,0(a2)
1c00a040:	96aa                	add	a3,a3,a0
1c00a042:	f2c68c23          	sb	a2,-200(a3)
1c00a046:	0709                	addi	a4,a4,2
1c00a048:	01477863          	bleu	s4,a4,1c00a058 <keccak_absorb.constprop.7+0x120>
1c00a04c:	95ba                	add	a1,a1,a4
1c00a04e:	0005c683          	lbu	a3,0(a1)
1c00a052:	972a                	add	a4,a4,a0
1c00a054:	f2d70c23          	sb	a3,-200(a4)
1c00a058:	0990                	addi	a2,sp,208
1c00a05a:	9a32                	add	s4,s4,a2
1c00a05c:	f29a0c23          	sb	s1,-200(s4)
1c00a060:	08f14703          	lbu	a4,143(sp)
1c00a064:	f8076713          	ori	a4,a4,-128
1c00a068:	08e107a3          	sb	a4,143(sp)
1c00a06c:	0017c703          	lbu	a4,1(a5)
1c00a070:	0027c883          	lbu	a7,2(a5)
1c00a074:	0057c503          	lbu	a0,5(a5)
1c00a078:	0047c303          	lbu	t1,4(a5)
1c00a07c:	0067c583          	lbu	a1,6(a5)
1c00a080:	0007ce03          	lbu	t3,0(a5)
1c00a084:	0037c603          	lbu	a2,3(a5)
1c00a088:	0077c683          	lbu	a3,7(a5)
1c00a08c:	08c2                	slli	a7,a7,0x10
1c00a08e:	0722                	slli	a4,a4,0x8
1c00a090:	0522                	slli	a0,a0,0x8
1c00a092:	01176733          	or	a4,a4,a7
1c00a096:	00656533          	or	a0,a0,t1
1c00a09a:	05c2                	slli	a1,a1,0x10
1c00a09c:	000aa303          	lw	t1,0(s5)
1c00a0a0:	004aa883          	lw	a7,4(s5)
1c00a0a4:	01c76733          	or	a4,a4,t3
1c00a0a8:	0662                	slli	a2,a2,0x18
1c00a0aa:	8dc9                	or	a1,a1,a0
1c00a0ac:	06e2                	slli	a3,a3,0x18
1c00a0ae:	8f51                	or	a4,a4,a2
1c00a0b0:	8ecd                	or	a3,a3,a1
1c00a0b2:	00e34733          	xor	a4,t1,a4
1c00a0b6:	00d8c6b3          	xor	a3,a7,a3
1c00a0ba:	00eaa023          	sw	a4,0(s5)
1c00a0be:	00daa223          	sw	a3,4(s5)
1c00a0c2:	07a1                	addi	a5,a5,8
1c00a0c4:	0aa1                	addi	s5,s5,8
1c00a0c6:	faf813e3          	bne	a6,a5,1c00a06c <keccak_absorb.constprop.7+0x134>
1c00a0ca:	50be                	lw	ra,236(sp)
1c00a0cc:	542e                	lw	s0,232(sp)
1c00a0ce:	549e                	lw	s1,228(sp)
1c00a0d0:	590e                	lw	s2,224(sp)
1c00a0d2:	49fe                	lw	s3,220(sp)
1c00a0d4:	4a6e                	lw	s4,216(sp)
1c00a0d6:	4ade                	lw	s5,212(sp)
1c00a0d8:	616d                	addi	sp,sp,240
1c00a0da:	8082                	ret
1c00a0dc:	4701                	li	a4,0
1c00a0de:	b781                	j	1c00a01e <keccak_absorb.constprop.7+0xe6>

1c00a0e0 <shake128_absorb>:
1c00a0e0:	7151                	addi	sp,sp,-240
1c00a0e2:	d5a2                	sw	s0,232(sp)
1c00a0e4:	842a                	mv	s0,a0
1c00a0e6:	0c800513          	li	a0,200
1c00a0ea:	d1ca                	sw	s2,224(sp)
1c00a0ec:	cfce                	sw	s3,220(sp)
1c00a0ee:	d786                	sw	ra,236(sp)
1c00a0f0:	d3a6                	sw	s1,228(sp)
1c00a0f2:	cdd2                	sw	s4,216(sp)
1c00a0f4:	892e                	mv	s2,a1
1c00a0f6:	89b2                	mv	s3,a2
1c00a0f8:	70d010ef          	jal	ra,1c00c004 <pi_l2_malloc>
1c00a0fc:	c008                	sw	a0,0(s0)
1c00a0fe:	1a050663          	beqz	a0,1c00a2aa <shake128_absorb+0x1ca>
1c00a102:	8a2a                	mv	s4,a0
1c00a104:	0c850713          	addi	a4,a0,200
1c00a108:	87aa                	mv	a5,a0
1c00a10a:	4601                	li	a2,0
1c00a10c:	4681                	li	a3,0
1c00a10e:	c390                	sw	a2,0(a5)
1c00a110:	c3d4                	sw	a3,4(a5)
1c00a112:	07a1                	addi	a5,a5,8
1c00a114:	fef71be3          	bne	a4,a5,1c00a10a <shake128_absorb+0x2a>
1c00a118:	0a700793          	li	a5,167
1c00a11c:	0937f163          	bleu	s3,a5,1c00a19e <shake128_absorb+0xbe>
1c00a120:	412a04b3          	sub	s1,s4,s2
1c00a124:	0a700413          	li	s0,167
1c00a128:	85ca                	mv	a1,s2
1c00a12a:	0a890913          	addi	s2,s2,168
1c00a12e:	0015c783          	lbu	a5,1(a1)
1c00a132:	0025c603          	lbu	a2,2(a1)
1c00a136:	0055c803          	lbu	a6,5(a1)
1c00a13a:	0045c303          	lbu	t1,4(a1)
1c00a13e:	0065c503          	lbu	a0,6(a1)
1c00a142:	0005ce03          	lbu	t3,0(a1)
1c00a146:	0035c683          	lbu	a3,3(a1)
1c00a14a:	0075c703          	lbu	a4,7(a1)
1c00a14e:	0642                	slli	a2,a2,0x10
1c00a150:	07a2                	slli	a5,a5,0x8
1c00a152:	0822                	slli	a6,a6,0x8
1c00a154:	00b488b3          	add	a7,s1,a1
1c00a158:	8fd1                	or	a5,a5,a2
1c00a15a:	00686833          	or	a6,a6,t1
1c00a15e:	0542                	slli	a0,a0,0x10
1c00a160:	0008a603          	lw	a2,0(a7)
1c00a164:	0048a303          	lw	t1,4(a7)
1c00a168:	01c7e7b3          	or	a5,a5,t3
1c00a16c:	06e2                	slli	a3,a3,0x18
1c00a16e:	01056533          	or	a0,a0,a6
1c00a172:	0762                	slli	a4,a4,0x18
1c00a174:	8fd5                	or	a5,a5,a3
1c00a176:	8f49                	or	a4,a4,a0
1c00a178:	8fb1                	xor	a5,a5,a2
1c00a17a:	00e34733          	xor	a4,t1,a4
1c00a17e:	00f8a023          	sw	a5,0(a7)
1c00a182:	00e8a223          	sw	a4,4(a7)
1c00a186:	05a1                	addi	a1,a1,8
1c00a188:	fab913e3          	bne	s2,a1,1c00a12e <shake128_absorb+0x4e>
1c00a18c:	8552                	mv	a0,s4
1c00a18e:	f5898993          	addi	s3,s3,-168
1c00a192:	a60fe0ef          	jal	ra,1c0083f2 <KeccakF1600_StatePermute>
1c00a196:	f5848493          	addi	s1,s1,-168
1c00a19a:	f93467e3          	bltu	s0,s3,1c00a128 <shake128_absorb+0x48>
1c00a19e:	191c                	addi	a5,sp,176
1c00a1a0:	00810813          	addi	a6,sp,8
1c00a1a4:	4681                	li	a3,0
1c00a1a6:	00d82023          	sw	a3,0(a6)
1c00a1aa:	0811                	addi	a6,a6,4
1c00a1ac:	ff079ce3          	bne	a5,a6,1c00a1a4 <shake128_absorb+0xc4>
1c00a1b0:	06098563          	beqz	s3,1c00a21a <shake128_absorb+0x13a>
1c00a1b4:	fff98793          	addi	a5,s3,-1
1c00a1b8:	4709                	li	a4,2
1c00a1ba:	0ef77663          	bleu	a5,a4,1c00a2a6 <shake128_absorb+0x1c6>
1c00a1be:	0029d513          	srli	a0,s3,0x2
1c00a1c2:	86ca                	mv	a3,s2
1c00a1c4:	0038                	addi	a4,sp,8
1c00a1c6:	4781                	li	a5,0
1c00a1c8:	4290                	lw	a2,0(a3)
1c00a1ca:	0785                	addi	a5,a5,1
1c00a1cc:	c310                	sw	a2,0(a4)
1c00a1ce:	0691                	addi	a3,a3,4
1c00a1d0:	0711                	addi	a4,a4,4
1c00a1d2:	fea7ebe3          	bltu	a5,a0,1c00a1c8 <shake128_absorb+0xe8>
1c00a1d6:	ffc9f793          	andi	a5,s3,-4
1c00a1da:	04f98063          	beq	s3,a5,1c00a21a <shake128_absorb+0x13a>
1c00a1de:	00f90733          	add	a4,s2,a5
1c00a1e2:	00074683          	lbu	a3,0(a4)
1c00a1e6:	0990                	addi	a2,sp,208
1c00a1e8:	00f60733          	add	a4,a2,a5
1c00a1ec:	f2d70c23          	sb	a3,-200(a4)
1c00a1f0:	00178713          	addi	a4,a5,1
1c00a1f4:	03377363          	bleu	s3,a4,1c00a21a <shake128_absorb+0x13a>
1c00a1f8:	00e906b3          	add	a3,s2,a4
1c00a1fc:	0006c683          	lbu	a3,0(a3)
1c00a200:	9732                	add	a4,a4,a2
1c00a202:	f2d70c23          	sb	a3,-200(a4)
1c00a206:	0789                	addi	a5,a5,2
1c00a208:	0137f963          	bleu	s3,a5,1c00a21a <shake128_absorb+0x13a>
1c00a20c:	00f905b3          	add	a1,s2,a5
1c00a210:	0005c703          	lbu	a4,0(a1)
1c00a214:	97b2                	add	a5,a5,a2
1c00a216:	f2e78c23          	sb	a4,-200(a5)
1c00a21a:	0994                	addi	a3,sp,208
1c00a21c:	47fd                	li	a5,31
1c00a21e:	99b6                	add	s3,s3,a3
1c00a220:	f2f98c23          	sb	a5,-200(s3)
1c00a224:	0af14703          	lbu	a4,175(sp)
1c00a228:	003c                	addi	a5,sp,8
1c00a22a:	f8076713          	ori	a4,a4,-128
1c00a22e:	0ae107a3          	sb	a4,175(sp)
1c00a232:	40fa0a33          	sub	s4,s4,a5
1c00a236:	0017c703          	lbu	a4,1(a5)
1c00a23a:	0027c303          	lbu	t1,2(a5)
1c00a23e:	0057c503          	lbu	a0,5(a5)
1c00a242:	0047ce03          	lbu	t3,4(a5)
1c00a246:	0067c583          	lbu	a1,6(a5)
1c00a24a:	0007ce83          	lbu	t4,0(a5)
1c00a24e:	0037c603          	lbu	a2,3(a5)
1c00a252:	0077c683          	lbu	a3,7(a5)
1c00a256:	0342                	slli	t1,t1,0x10
1c00a258:	0722                	slli	a4,a4,0x8
1c00a25a:	0522                	slli	a0,a0,0x8
1c00a25c:	00fa08b3          	add	a7,s4,a5
1c00a260:	00676733          	or	a4,a4,t1
1c00a264:	01c56533          	or	a0,a0,t3
1c00a268:	05c2                	slli	a1,a1,0x10
1c00a26a:	0008ae03          	lw	t3,0(a7)
1c00a26e:	0048a303          	lw	t1,4(a7)
1c00a272:	01d76733          	or	a4,a4,t4
1c00a276:	0662                	slli	a2,a2,0x18
1c00a278:	8dc9                	or	a1,a1,a0
1c00a27a:	06e2                	slli	a3,a3,0x18
1c00a27c:	8f51                	or	a4,a4,a2
1c00a27e:	8ecd                	or	a3,a3,a1
1c00a280:	00ee4733          	xor	a4,t3,a4
1c00a284:	00d346b3          	xor	a3,t1,a3
1c00a288:	00e8a023          	sw	a4,0(a7)
1c00a28c:	00d8a223          	sw	a3,4(a7)
1c00a290:	07a1                	addi	a5,a5,8
1c00a292:	faf812e3          	bne	a6,a5,1c00a236 <shake128_absorb+0x156>
1c00a296:	50be                	lw	ra,236(sp)
1c00a298:	542e                	lw	s0,232(sp)
1c00a29a:	549e                	lw	s1,228(sp)
1c00a29c:	590e                	lw	s2,224(sp)
1c00a29e:	49fe                	lw	s3,220(sp)
1c00a2a0:	4a6e                	lw	s4,216(sp)
1c00a2a2:	616d                	addi	sp,sp,240
1c00a2a4:	8082                	ret
1c00a2a6:	4781                	li	a5,0
1c00a2a8:	bf1d                	j	1c00a1de <shake128_absorb+0xfe>
1c00a2aa:	06f00513          	li	a0,111
1c00a2ae:	39d010ef          	jal	ra,1c00be4a <exit>

1c00a2b2 <shake128_squeezeblocks>:
1c00a2b2:	1101                	addi	sp,sp,-32
1c00a2b4:	c452                	sw	s4,8(sp)
1c00a2b6:	ce06                	sw	ra,28(sp)
1c00a2b8:	cc22                	sw	s0,24(sp)
1c00a2ba:	ca26                	sw	s1,20(sp)
1c00a2bc:	c84a                	sw	s2,16(sp)
1c00a2be:	c64e                	sw	s3,12(sp)
1c00a2c0:	c256                	sw	s5,4(sp)
1c00a2c2:	00062a03          	lw	s4,0(a2)
1c00a2c6:	cdc9                	beqz	a1,1c00a360 <shake128_squeezeblocks+0xae>
1c00a2c8:	7941                	lui	s2,0xffff0
1c00a2ca:	ff0104b7          	lui	s1,0xff010
1c00a2ce:	01000437          	lui	s0,0x1000
1c00a2d2:	89ae                	mv	s3,a1
1c00a2d4:	8aaa                	mv	s5,a0
1c00a2d6:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a2da:	14fd                	addi	s1,s1,-1
1c00a2dc:	147d                	addi	s0,s0,-1
1c00a2de:	8552                	mv	a0,s4
1c00a2e0:	912fe0ef          	jal	ra,1c0083f2 <KeccakF1600_StatePermute>
1c00a2e4:	8556                	mv	a0,s5
1c00a2e6:	8852                	mv	a6,s4
1c00a2e8:	0a8a8593          	addi	a1,s5,168
1c00a2ec:	00082603          	lw	a2,0(a6)
1c00a2f0:	00482683          	lw	a3,4(a6)
1c00a2f4:	00865313          	srli	t1,a2,0x8
1c00a2f8:	0086d893          	srli	a7,a3,0x8
1c00a2fc:	0ff67713          	andi	a4,a2,255
1c00a300:	0ff6f793          	andi	a5,a3,255
1c00a304:	0ff37313          	andi	t1,t1,255
1c00a308:	0ff8f893          	andi	a7,a7,255
1c00a30c:	0322                	slli	t1,t1,0x8
1c00a30e:	08a2                	slli	a7,a7,0x8
1c00a310:	01277733          	and	a4,a4,s2
1c00a314:	0127f7b3          	and	a5,a5,s2
1c00a318:	00676733          	or	a4,a4,t1
1c00a31c:	0117e7b3          	or	a5,a5,a7
1c00a320:	00ff0337          	lui	t1,0xff0
1c00a324:	00ff08b7          	lui	a7,0xff0
1c00a328:	00667333          	and	t1,a2,t1
1c00a32c:	0116f8b3          	and	a7,a3,a7
1c00a330:	8f65                	and	a4,a4,s1
1c00a332:	8fe5                	and	a5,a5,s1
1c00a334:	00676733          	or	a4,a4,t1
1c00a338:	8261                	srli	a2,a2,0x18
1c00a33a:	0117e7b3          	or	a5,a5,a7
1c00a33e:	82e1                	srli	a3,a3,0x18
1c00a340:	0662                	slli	a2,a2,0x18
1c00a342:	8f61                	and	a4,a4,s0
1c00a344:	06e2                	slli	a3,a3,0x18
1c00a346:	8fe1                	and	a5,a5,s0
1c00a348:	8f51                	or	a4,a4,a2
1c00a34a:	8fd5                	or	a5,a5,a3
1c00a34c:	c118                	sw	a4,0(a0)
1c00a34e:	c15c                	sw	a5,4(a0)
1c00a350:	0521                	addi	a0,a0,8
1c00a352:	0821                	addi	a6,a6,8
1c00a354:	f8a59ce3          	bne	a1,a0,1c00a2ec <shake128_squeezeblocks+0x3a>
1c00a358:	19fd                	addi	s3,s3,-1
1c00a35a:	8aae                	mv	s5,a1
1c00a35c:	f80991e3          	bnez	s3,1c00a2de <shake128_squeezeblocks+0x2c>
1c00a360:	40f2                	lw	ra,28(sp)
1c00a362:	4462                	lw	s0,24(sp)
1c00a364:	44d2                	lw	s1,20(sp)
1c00a366:	4942                	lw	s2,16(sp)
1c00a368:	49b2                	lw	s3,12(sp)
1c00a36a:	4a22                	lw	s4,8(sp)
1c00a36c:	4a92                	lw	s5,4(sp)
1c00a36e:	6105                	addi	sp,sp,32
1c00a370:	8082                	ret

1c00a372 <shake128_ctx_release>:
1c00a372:	4108                	lw	a0,0(a0)
1c00a374:	0c800593          	li	a1,200
1c00a378:	4990106f          	j	1c00c010 <pi_l2_free>

1c00a37c <shake256>:
1c00a37c:	7131                	addi	sp,sp,-192
1c00a37e:	d94a                	sw	s2,176(sp)
1c00a380:	d74e                	sw	s3,172(sp)
1c00a382:	08800913          	li	s2,136
1c00a386:	89aa                	mv	s3,a0
1c00a388:	0c800513          	li	a0,200
1c00a38c:	dd22                	sw	s0,184(sp)
1c00a38e:	d552                	sw	s4,168(sp)
1c00a390:	d356                	sw	s5,164(sp)
1c00a392:	df06                	sw	ra,188(sp)
1c00a394:	db26                	sw	s1,180(sp)
1c00a396:	d15a                	sw	s6,160(sp)
1c00a398:	cf5e                	sw	s7,156(sp)
1c00a39a:	cd62                	sw	s8,152(sp)
1c00a39c:	cb66                	sw	s9,148(sp)
1c00a39e:	8a2e                	mv	s4,a1
1c00a3a0:	8432                	mv	s0,a2
1c00a3a2:	8ab6                	mv	s5,a3
1c00a3a4:	0325d933          	divu	s2,a1,s2
1c00a3a8:	45d010ef          	jal	ra,1c00c004 <pi_l2_malloc>
1c00a3ac:	20050263          	beqz	a0,1c00a5b0 <shake256+0x234>
1c00a3b0:	46fd                	li	a3,31
1c00a3b2:	8656                	mv	a2,s5
1c00a3b4:	85a2                	mv	a1,s0
1c00a3b6:	84aa                	mv	s1,a0
1c00a3b8:	3641                	jal	1c009f38 <keccak_absorb.constprop.7>
1c00a3ba:	0a090863          	beqz	s2,1c00a46a <shake256+0xee>
1c00a3be:	00491713          	slli	a4,s2,0x4
1c00a3c2:	01270433          	add	s0,a4,s2
1c00a3c6:	040e                	slli	s0,s0,0x3
1c00a3c8:	7bc1                	lui	s7,0xffff0
1c00a3ca:	ff010b37          	lui	s6,0xff010
1c00a3ce:	01000ab7          	lui	s5,0x1000
1c00a3d2:	41348c33          	sub	s8,s1,s3
1c00a3d6:	944e                	add	s0,s0,s3
1c00a3d8:	8cce                	mv	s9,s3
1c00a3da:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a3de:	1b7d                	addi	s6,s6,-1
1c00a3e0:	1afd                	addi	s5,s5,-1
1c00a3e2:	8526                	mv	a0,s1
1c00a3e4:	80efe0ef          	jal	ra,1c0083f2 <KeccakF1600_StatePermute>
1c00a3e8:	8666                	mv	a2,s9
1c00a3ea:	088c8593          	addi	a1,s9,136
1c00a3ee:	00cc07b3          	add	a5,s8,a2
1c00a3f2:	4388                	lw	a0,0(a5)
1c00a3f4:	43d4                	lw	a3,4(a5)
1c00a3f6:	00855893          	srli	a7,a0,0x8
1c00a3fa:	0086d813          	srli	a6,a3,0x8
1c00a3fe:	0ff57713          	andi	a4,a0,255
1c00a402:	0ff6f793          	andi	a5,a3,255
1c00a406:	0ff8f893          	andi	a7,a7,255
1c00a40a:	0ff87813          	andi	a6,a6,255
1c00a40e:	08a2                	slli	a7,a7,0x8
1c00a410:	0822                	slli	a6,a6,0x8
1c00a412:	01777733          	and	a4,a4,s7
1c00a416:	0177f7b3          	and	a5,a5,s7
1c00a41a:	01176733          	or	a4,a4,a7
1c00a41e:	0107e7b3          	or	a5,a5,a6
1c00a422:	00ff08b7          	lui	a7,0xff0
1c00a426:	00ff0837          	lui	a6,0xff0
1c00a42a:	011578b3          	and	a7,a0,a7
1c00a42e:	0106f833          	and	a6,a3,a6
1c00a432:	01677733          	and	a4,a4,s6
1c00a436:	0167f7b3          	and	a5,a5,s6
1c00a43a:	01176733          	or	a4,a4,a7
1c00a43e:	8161                	srli	a0,a0,0x18
1c00a440:	0107e7b3          	or	a5,a5,a6
1c00a444:	82e1                	srli	a3,a3,0x18
1c00a446:	0562                	slli	a0,a0,0x18
1c00a448:	01577733          	and	a4,a4,s5
1c00a44c:	06e2                	slli	a3,a3,0x18
1c00a44e:	0157f7b3          	and	a5,a5,s5
1c00a452:	8f49                	or	a4,a4,a0
1c00a454:	8fd5                	or	a5,a5,a3
1c00a456:	c218                	sw	a4,0(a2)
1c00a458:	c25c                	sw	a5,4(a2)
1c00a45a:	0621                	addi	a2,a2,8
1c00a45c:	f8c599e3          	bne	a1,a2,1c00a3ee <shake256+0x72>
1c00a460:	8cae                	mv	s9,a1
1c00a462:	f78c0c13          	addi	s8,s8,-136
1c00a466:	f6b41ee3          	bne	s0,a1,1c00a3e2 <shake256+0x66>
1c00a46a:	08800793          	li	a5,136
1c00a46e:	02fa7a33          	remu	s4,s4,a5
1c00a472:	020a1363          	bnez	s4,1c00a498 <shake256+0x11c>
1c00a476:	546a                	lw	s0,184(sp)
1c00a478:	50fa                	lw	ra,188(sp)
1c00a47a:	594a                	lw	s2,176(sp)
1c00a47c:	59ba                	lw	s3,172(sp)
1c00a47e:	5a2a                	lw	s4,168(sp)
1c00a480:	5a9a                	lw	s5,164(sp)
1c00a482:	5b0a                	lw	s6,160(sp)
1c00a484:	4bfa                	lw	s7,156(sp)
1c00a486:	4c6a                	lw	s8,152(sp)
1c00a488:	4cda                	lw	s9,148(sp)
1c00a48a:	8526                	mv	a0,s1
1c00a48c:	54da                	lw	s1,180(sp)
1c00a48e:	0c800593          	li	a1,200
1c00a492:	6129                	addi	sp,sp,192
1c00a494:	37d0106f          	j	1c00c010 <pi_l2_free>
1c00a498:	8526                	mv	a0,s1
1c00a49a:	f59fd0ef          	jal	ra,1c0083f2 <KeccakF1600_StatePermute>
1c00a49e:	002c                	addi	a1,sp,8
1c00a4a0:	78c1                	lui	a7,0xffff0
1c00a4a2:	ff010837          	lui	a6,0xff010
1c00a4a6:	01000537          	lui	a0,0x1000
1c00a4aa:	09010e13          	addi	t3,sp,144
1c00a4ae:	862e                	mv	a2,a1
1c00a4b0:	40b48333          	sub	t1,s1,a1
1c00a4b4:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a4b8:	187d                	addi	a6,a6,-1
1c00a4ba:	157d                	addi	a0,a0,-1
1c00a4bc:	00c307b3          	add	a5,t1,a2
1c00a4c0:	0007ae83          	lw	t4,0(a5)
1c00a4c4:	43d4                	lw	a3,4(a5)
1c00a4c6:	008edf93          	srli	t6,t4,0x8
1c00a4ca:	0086df13          	srli	t5,a3,0x8
1c00a4ce:	0ffef713          	andi	a4,t4,255
1c00a4d2:	0ff6f793          	andi	a5,a3,255
1c00a4d6:	0fffff93          	andi	t6,t6,255
1c00a4da:	0fff7f13          	andi	t5,t5,255
1c00a4de:	0fa2                	slli	t6,t6,0x8
1c00a4e0:	0f22                	slli	t5,t5,0x8
1c00a4e2:	01177733          	and	a4,a4,a7
1c00a4e6:	0117f7b3          	and	a5,a5,a7
1c00a4ea:	01f76733          	or	a4,a4,t6
1c00a4ee:	01e7e7b3          	or	a5,a5,t5
1c00a4f2:	00ff0fb7          	lui	t6,0xff0
1c00a4f6:	00ff0f37          	lui	t5,0xff0
1c00a4fa:	01feffb3          	and	t6,t4,t6
1c00a4fe:	01e6ff33          	and	t5,a3,t5
1c00a502:	01077733          	and	a4,a4,a6
1c00a506:	0107f7b3          	and	a5,a5,a6
1c00a50a:	01f76733          	or	a4,a4,t6
1c00a50e:	018ede93          	srli	t4,t4,0x18
1c00a512:	01e7e7b3          	or	a5,a5,t5
1c00a516:	82e1                	srli	a3,a3,0x18
1c00a518:	0ee2                	slli	t4,t4,0x18
1c00a51a:	8f69                	and	a4,a4,a0
1c00a51c:	06e2                	slli	a3,a3,0x18
1c00a51e:	8fe9                	and	a5,a5,a0
1c00a520:	01d76733          	or	a4,a4,t4
1c00a524:	8fd5                	or	a5,a5,a3
1c00a526:	c218                	sw	a4,0(a2)
1c00a528:	c25c                	sw	a5,4(a2)
1c00a52a:	0621                	addi	a2,a2,8
1c00a52c:	f8ce18e3          	bne	t3,a2,1c00a4bc <shake256+0x140>
1c00a530:	fffa0793          	addi	a5,s4,-1
1c00a534:	4709                	li	a4,2
1c00a536:	06f77963          	bleu	a5,a4,1c00a5a8 <shake256+0x22c>
1c00a53a:	00491713          	slli	a4,s2,0x4
1c00a53e:	012707b3          	add	a5,a4,s2
1c00a542:	078e                	slli	a5,a5,0x3
1c00a544:	002a5513          	srli	a0,s4,0x2
1c00a548:	97ce                	add	a5,a5,s3
1c00a54a:	4681                	li	a3,0
1c00a54c:	4190                	lw	a2,0(a1)
1c00a54e:	0685                	addi	a3,a3,1
1c00a550:	c390                	sw	a2,0(a5)
1c00a552:	0591                	addi	a1,a1,4
1c00a554:	0791                	addi	a5,a5,4
1c00a556:	fea6ebe3          	bltu	a3,a0,1c00a54c <shake256+0x1d0>
1c00a55a:	ffca7693          	andi	a3,s4,-4
1c00a55e:	f0da0ce3          	beq	s4,a3,1c00a476 <shake256+0xfa>
1c00a562:	012707b3          	add	a5,a4,s2
1c00a566:	090c                	addi	a1,sp,144
1c00a568:	00d58733          	add	a4,a1,a3
1c00a56c:	078e                	slli	a5,a5,0x3
1c00a56e:	f7874603          	lbu	a2,-136(a4)
1c00a572:	97ce                	add	a5,a5,s3
1c00a574:	00d78733          	add	a4,a5,a3
1c00a578:	00c70023          	sb	a2,0(a4)
1c00a57c:	00168713          	addi	a4,a3,1
1c00a580:	ef477be3          	bleu	s4,a4,1c00a476 <shake256+0xfa>
1c00a584:	00e58633          	add	a2,a1,a4
1c00a588:	f7864603          	lbu	a2,-136(a2)
1c00a58c:	973e                	add	a4,a4,a5
1c00a58e:	00c70023          	sb	a2,0(a4)
1c00a592:	0689                	addi	a3,a3,2
1c00a594:	ef46f1e3          	bleu	s4,a3,1c00a476 <shake256+0xfa>
1c00a598:	00d58733          	add	a4,a1,a3
1c00a59c:	f7874703          	lbu	a4,-136(a4)
1c00a5a0:	97b6                	add	a5,a5,a3
1c00a5a2:	00e78023          	sb	a4,0(a5)
1c00a5a6:	bdc1                	j	1c00a476 <shake256+0xfa>
1c00a5a8:	4681                	li	a3,0
1c00a5aa:	00491713          	slli	a4,s2,0x4
1c00a5ae:	bf55                	j	1c00a562 <shake256+0x1e6>
1c00a5b0:	06f00513          	li	a0,111
1c00a5b4:	097010ef          	jal	ra,1c00be4a <exit>

1c00a5b8 <sha3_256>:
1c00a5b8:	7111                	addi	sp,sp,-256
1c00a5ba:	dda2                	sw	s0,248(sp)
1c00a5bc:	4699                	li	a3,6
1c00a5be:	842a                	mv	s0,a0
1c00a5c0:	0028                	addi	a0,sp,8
1c00a5c2:	df86                	sw	ra,252(sp)
1c00a5c4:	dba6                	sw	s1,244(sp)
1c00a5c6:	d9ca                	sw	s2,240(sp)
1c00a5c8:	d7ce                	sw	s3,236(sp)
1c00a5ca:	d5d2                	sw	s4,232(sp)
1c00a5cc:	d3d6                	sw	s5,228(sp)
1c00a5ce:	d1da                	sw	s6,224(sp)
1c00a5d0:	cfde                	sw	s7,220(sp)
1c00a5d2:	cde2                	sw	s8,216(sp)
1c00a5d4:	cbe6                	sw	s9,212(sp)
1c00a5d6:	c9ea                	sw	s10,208(sp)
1c00a5d8:	3285                	jal	1c009f38 <keccak_absorb.constprop.7>
1c00a5da:	0028                	addi	a0,sp,8
1c00a5dc:	e17fd0ef          	jal	ra,1c0083f2 <KeccakF1600_StatePermute>
1c00a5e0:	4f32                	lw	t5,12(sp)
1c00a5e2:	4922                	lw	s2,8(sp)
1c00a5e4:	4ec2                	lw	t4,16(sp)
1c00a5e6:	4e52                	lw	t3,20(sp)
1c00a5e8:	4362                	lw	t1,24(sp)
1c00a5ea:	44f2                	lw	s1,28(sp)
1c00a5ec:	5382                	lw	t2,32(sp)
1c00a5ee:	5292                	lw	t0,36(sp)
1c00a5f0:	00895813          	srli	a6,s2,0x8
1c00a5f4:	008f5513          	srli	a0,t5,0x8
1c00a5f8:	008ed593          	srli	a1,t4,0x8
1c00a5fc:	008e5613          	srli	a2,t3,0x8
1c00a600:	00835693          	srli	a3,t1,0x8
1c00a604:	0084d713          	srli	a4,s1,0x8
1c00a608:	0083d993          	srli	s3,t2,0x8
1c00a60c:	0082df93          	srli	t6,t0,0x8
1c00a610:	0ff87813          	andi	a6,a6,255
1c00a614:	0ff57513          	andi	a0,a0,255
1c00a618:	0ff5f593          	andi	a1,a1,255
1c00a61c:	0ff67613          	andi	a2,a2,255
1c00a620:	0ff6f693          	andi	a3,a3,255
1c00a624:	0ff77713          	andi	a4,a4,255
1c00a628:	0ff9f993          	andi	s3,s3,255
1c00a62c:	0fffff93          	andi	t6,t6,255
1c00a630:	0fff7d13          	andi	s10,t5,255
1c00a634:	0ffefc93          	andi	s9,t4,255
1c00a638:	0ffe7c13          	andi	s8,t3,255
1c00a63c:	0ff37b93          	andi	s7,t1,255
1c00a640:	0ff4fb13          	andi	s6,s1,255
1c00a644:	0ff3fa93          	andi	s5,t2,255
1c00a648:	0ff2fa13          	andi	s4,t0,255
1c00a64c:	0822                	slli	a6,a6,0x8
1c00a64e:	0ff97893          	andi	a7,s2,255
1c00a652:	0522                	slli	a0,a0,0x8
1c00a654:	05a2                	slli	a1,a1,0x8
1c00a656:	0622                	slli	a2,a2,0x8
1c00a658:	06a2                	slli	a3,a3,0x8
1c00a65a:	0722                	slli	a4,a4,0x8
1c00a65c:	09a2                	slli	s3,s3,0x8
1c00a65e:	0fa2                	slli	t6,t6,0x8
1c00a660:	ff0107b7          	lui	a5,0xff010
1c00a664:	17fd                	addi	a5,a5,-1
1c00a666:	01fa6fb3          	or	t6,s4,t6
1c00a66a:	0108e8b3          	or	a7,a7,a6
1c00a66e:	00ff0a37          	lui	s4,0xff0
1c00a672:	00ad6833          	or	a6,s10,a0
1c00a676:	00bce533          	or	a0,s9,a1
1c00a67a:	00ff0d37          	lui	s10,0xff0
1c00a67e:	00cc65b3          	or	a1,s8,a2
1c00a682:	00ff0cb7          	lui	s9,0xff0
1c00a686:	00dbe633          	or	a2,s7,a3
1c00a68a:	00ff0c37          	lui	s8,0xff0
1c00a68e:	00eb66b3          	or	a3,s6,a4
1c00a692:	00ff0bb7          	lui	s7,0xff0
1c00a696:	013ae733          	or	a4,s5,s3
1c00a69a:	00ff0b37          	lui	s6,0xff0
1c00a69e:	00ff0ab7          	lui	s5,0xff0
1c00a6a2:	00ff09b7          	lui	s3,0xff0
1c00a6a6:	01a97d33          	and	s10,s2,s10
1c00a6aa:	019f7cb3          	and	s9,t5,s9
1c00a6ae:	018efc33          	and	s8,t4,s8
1c00a6b2:	017e7bb3          	and	s7,t3,s7
1c00a6b6:	01637b33          	and	s6,t1,s6
1c00a6ba:	0154fab3          	and	s5,s1,s5
1c00a6be:	0143fa33          	and	s4,t2,s4
1c00a6c2:	0132f9b3          	and	s3,t0,s3
1c00a6c6:	00f8f8b3          	and	a7,a7,a5
1c00a6ca:	00f87833          	and	a6,a6,a5
1c00a6ce:	8d7d                	and	a0,a0,a5
1c00a6d0:	8dfd                	and	a1,a1,a5
1c00a6d2:	8e7d                	and	a2,a2,a5
1c00a6d4:	8efd                	and	a3,a3,a5
1c00a6d6:	8f7d                	and	a4,a4,a5
1c00a6d8:	00fff7b3          	and	a5,t6,a5
1c00a6dc:	01000fb7          	lui	t6,0x1000
1c00a6e0:	1ffd                	addi	t6,t6,-1
1c00a6e2:	01a8e8b3          	or	a7,a7,s10
1c00a6e6:	01986833          	or	a6,a6,s9
1c00a6ea:	01856533          	or	a0,a0,s8
1c00a6ee:	0175e5b3          	or	a1,a1,s7
1c00a6f2:	01666633          	or	a2,a2,s6
1c00a6f6:	0156e6b3          	or	a3,a3,s5
1c00a6fa:	01476733          	or	a4,a4,s4
1c00a6fe:	0137e7b3          	or	a5,a5,s3
1c00a702:	01895913          	srli	s2,s2,0x18
1c00a706:	018f5f13          	srli	t5,t5,0x18
1c00a70a:	018ede93          	srli	t4,t4,0x18
1c00a70e:	018e5e13          	srli	t3,t3,0x18
1c00a712:	01835313          	srli	t1,t1,0x18
1c00a716:	80e1                	srli	s1,s1,0x18
1c00a718:	0183d393          	srli	t2,t2,0x18
1c00a71c:	0182d293          	srli	t0,t0,0x18
1c00a720:	0962                	slli	s2,s2,0x18
1c00a722:	04e2                	slli	s1,s1,0x18
1c00a724:	01f8f8b3          	and	a7,a7,t6
1c00a728:	0f62                	slli	t5,t5,0x18
1c00a72a:	01f87833          	and	a6,a6,t6
1c00a72e:	0ee2                	slli	t4,t4,0x18
1c00a730:	01f57533          	and	a0,a0,t6
1c00a734:	0e62                	slli	t3,t3,0x18
1c00a736:	01f5f5b3          	and	a1,a1,t6
1c00a73a:	0362                	slli	t1,t1,0x18
1c00a73c:	01f67633          	and	a2,a2,t6
1c00a740:	01f6f6b3          	and	a3,a3,t6
1c00a744:	03e2                	slli	t2,t2,0x18
1c00a746:	01f77733          	and	a4,a4,t6
1c00a74a:	02e2                	slli	t0,t0,0x18
1c00a74c:	01f7f7b3          	and	a5,a5,t6
1c00a750:	0128e8b3          	or	a7,a7,s2
1c00a754:	8ec5                	or	a3,a3,s1
1c00a756:	01e86833          	or	a6,a6,t5
1c00a75a:	01d56533          	or	a0,a0,t4
1c00a75e:	01c5e5b3          	or	a1,a1,t3
1c00a762:	00666633          	or	a2,a2,t1
1c00a766:	00776733          	or	a4,a4,t2
1c00a76a:	0057e7b3          	or	a5,a5,t0
1c00a76e:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00a772:	01042223          	sw	a6,4(s0)
1c00a776:	c408                	sw	a0,8(s0)
1c00a778:	c44c                	sw	a1,12(s0)
1c00a77a:	c810                	sw	a2,16(s0)
1c00a77c:	c854                	sw	a3,20(s0)
1c00a77e:	cc18                	sw	a4,24(s0)
1c00a780:	cc5c                	sw	a5,28(s0)
1c00a782:	50fe                	lw	ra,252(sp)
1c00a784:	546e                	lw	s0,248(sp)
1c00a786:	54de                	lw	s1,244(sp)
1c00a788:	594e                	lw	s2,240(sp)
1c00a78a:	59be                	lw	s3,236(sp)
1c00a78c:	5a2e                	lw	s4,232(sp)
1c00a78e:	5a9e                	lw	s5,228(sp)
1c00a790:	5b0e                	lw	s6,224(sp)
1c00a792:	4bfe                	lw	s7,220(sp)
1c00a794:	4c6e                	lw	s8,216(sp)
1c00a796:	4cde                	lw	s9,212(sp)
1c00a798:	4d4e                	lw	s10,208(sp)
1c00a79a:	6111                	addi	sp,sp,256
1c00a79c:	8082                	ret

1c00a79e <sha3_512>:
1c00a79e:	db010113          	addi	sp,sp,-592
1c00a7a2:	24812423          	sw	s0,584(sp)
1c00a7a6:	23312e23          	sw	s3,572(sp)
1c00a7aa:	23412c23          	sw	s4,568(sp)
1c00a7ae:	24112623          	sw	ra,588(sp)
1c00a7b2:	24912223          	sw	s1,580(sp)
1c00a7b6:	25212023          	sw	s2,576(sp)
1c00a7ba:	23512a23          	sw	s5,564(sp)
1c00a7be:	23612823          	sw	s6,560(sp)
1c00a7c2:	23712623          	sw	s7,556(sp)
1c00a7c6:	23812423          	sw	s8,552(sp)
1c00a7ca:	23912223          	sw	s9,548(sp)
1c00a7ce:	23a12023          	sw	s10,544(sp)
1c00a7d2:	21b12e23          	sw	s11,540(sp)
1c00a7d6:	842a                	mv	s0,a0
1c00a7d8:	8a32                	mv	s4,a2
1c00a7da:	14810993          	addi	s3,sp,328
1c00a7de:	011c                	addi	a5,sp,128
1c00a7e0:	4601                	li	a2,0
1c00a7e2:	4681                	li	a3,0
1c00a7e4:	c390                	sw	a2,0(a5)
1c00a7e6:	c3d4                	sw	a3,4(a5)
1c00a7e8:	07a1                	addi	a5,a5,8
1c00a7ea:	fef99be3          	bne	s3,a5,1c00a7e0 <sha3_512+0x42>
1c00a7ee:	04700793          	li	a5,71
1c00a7f2:	0747fd63          	bleu	s4,a5,1c00a86c <sha3_512+0xce>
1c00a7f6:	04700493          	li	s1,71
1c00a7fa:	87ae                	mv	a5,a1
1c00a7fc:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c00a800:	0114                	addi	a3,sp,128
1c00a802:	0017c703          	lbu	a4,1(a5)
1c00a806:	0027c583          	lbu	a1,2(a5)
1c00a80a:	0057c883          	lbu	a7,5(a5)
1c00a80e:	0047c303          	lbu	t1,4(a5)
1c00a812:	0067c803          	lbu	a6,6(a5)
1c00a816:	0007ce03          	lbu	t3,0(a5)
1c00a81a:	0037c503          	lbu	a0,3(a5)
1c00a81e:	0077c603          	lbu	a2,7(a5)
1c00a822:	05c2                	slli	a1,a1,0x10
1c00a824:	0722                	slli	a4,a4,0x8
1c00a826:	08a2                	slli	a7,a7,0x8
1c00a828:	8f4d                	or	a4,a4,a1
1c00a82a:	0068e8b3          	or	a7,a7,t1
1c00a82e:	0842                	slli	a6,a6,0x10
1c00a830:	428c                	lw	a1,0(a3)
1c00a832:	0046a303          	lw	t1,4(a3)
1c00a836:	01c76733          	or	a4,a4,t3
1c00a83a:	0562                	slli	a0,a0,0x18
1c00a83c:	01186833          	or	a6,a6,a7
1c00a840:	0662                	slli	a2,a2,0x18
1c00a842:	8f49                	or	a4,a4,a0
1c00a844:	01066633          	or	a2,a2,a6
1c00a848:	8f2d                	xor	a4,a4,a1
1c00a84a:	00c34633          	xor	a2,t1,a2
1c00a84e:	c298                	sw	a4,0(a3)
1c00a850:	c2d0                	sw	a2,4(a3)
1c00a852:	07a1                	addi	a5,a5,8
1c00a854:	06a1                	addi	a3,a3,8
1c00a856:	faf916e3          	bne	s2,a5,1c00a802 <sha3_512+0x64>
1c00a85a:	0108                	addi	a0,sp,128
1c00a85c:	b97fd0ef          	jal	ra,1c0083f2 <KeccakF1600_StatePermute>
1c00a860:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c00a864:	87ca                	mv	a5,s2
1c00a866:	f944ebe3          	bltu	s1,s4,1c00a7fc <sha3_512+0x5e>
1c00a86a:	85ca                	mv	a1,s2
1c00a86c:	0b18                	addi	a4,sp,400
1c00a86e:	87ce                	mv	a5,s3
1c00a870:	4681                	li	a3,0
1c00a872:	c394                	sw	a3,0(a5)
1c00a874:	0791                	addi	a5,a5,4
1c00a876:	fef71de3          	bne	a4,a5,1c00a870 <sha3_512+0xd2>
1c00a87a:	060a0563          	beqz	s4,1c00a8e4 <sha3_512+0x146>
1c00a87e:	fffa0793          	addi	a5,s4,-1
1c00a882:	4709                	li	a4,2
1c00a884:	06f771e3          	bleu	a5,a4,1c00b0e6 <sha3_512+0x948>
1c00a888:	002a5613          	srli	a2,s4,0x2
1c00a88c:	872e                	mv	a4,a1
1c00a88e:	4781                	li	a5,0
1c00a890:	4314                	lw	a3,0(a4)
1c00a892:	0785                	addi	a5,a5,1
1c00a894:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00a898:	0711                	addi	a4,a4,4
1c00a89a:	0991                	addi	s3,s3,4
1c00a89c:	fec7eae3          	bltu	a5,a2,1c00a890 <sha3_512+0xf2>
1c00a8a0:	ffca7793          	andi	a5,s4,-4
1c00a8a4:	04fa0063          	beq	s4,a5,1c00a8e4 <sha3_512+0x146>
1c00a8a8:	00f58733          	add	a4,a1,a5
1c00a8ac:	00074683          	lbu	a3,0(a4)
1c00a8b0:	21010813          	addi	a6,sp,528
1c00a8b4:	00f80733          	add	a4,a6,a5
1c00a8b8:	f2d70c23          	sb	a3,-200(a4)
1c00a8bc:	00178713          	addi	a4,a5,1
1c00a8c0:	03477263          	bleu	s4,a4,1c00a8e4 <sha3_512+0x146>
1c00a8c4:	00e586b3          	add	a3,a1,a4
1c00a8c8:	0006c683          	lbu	a3,0(a3)
1c00a8cc:	9742                	add	a4,a4,a6
1c00a8ce:	f2d70c23          	sb	a3,-200(a4)
1c00a8d2:	0789                	addi	a5,a5,2
1c00a8d4:	0147f863          	bleu	s4,a5,1c00a8e4 <sha3_512+0x146>
1c00a8d8:	95be                	add	a1,a1,a5
1c00a8da:	0005c703          	lbu	a4,0(a1)
1c00a8de:	97c2                	add	a5,a5,a6
1c00a8e0:	f2e78c23          	sb	a4,-200(a5)
1c00a8e4:	21010893          	addi	a7,sp,528
1c00a8e8:	9a46                	add	s4,s4,a7
1c00a8ea:	4799                	li	a5,6
1c00a8ec:	f2fa0c23          	sb	a5,-200(s4)
1c00a8f0:	14a14703          	lbu	a4,330(sp)
1c00a8f4:	14914f03          	lbu	t5,329(sp)
1c00a8f8:	15214783          	lbu	a5,338(sp)
1c00a8fc:	15114e83          	lbu	t4,337(sp)
1c00a900:	15514303          	lbu	t1,341(sp)
1c00a904:	15414383          	lbu	t2,340(sp)
1c00a908:	15614803          	lbu	a6,342(sp)
1c00a90c:	14814283          	lbu	t0,328(sp)
1c00a910:	14b14503          	lbu	a0,331(sp)
1c00a914:	15014f83          	lbu	t6,336(sp)
1c00a918:	15314603          	lbu	a2,339(sp)
1c00a91c:	15714683          	lbu	a3,343(sp)
1c00a920:	0f22                	slli	t5,t5,0x8
1c00a922:	0ea2                	slli	t4,t4,0x8
1c00a924:	0742                	slli	a4,a4,0x10
1c00a926:	07c2                	slli	a5,a5,0x10
1c00a928:	0322                	slli	t1,t1,0x8
1c00a92a:	14d14e03          	lbu	t3,333(sp)
1c00a92e:	00736333          	or	t1,t1,t2
1c00a932:	01e76733          	or	a4,a4,t5
1c00a936:	01d7e7b3          	or	a5,a5,t4
1c00a93a:	0842                	slli	a6,a6,0x10
1c00a93c:	14c14483          	lbu	s1,332(sp)
1c00a940:	14e14883          	lbu	a7,334(sp)
1c00a944:	00576733          	or	a4,a4,t0
1c00a948:	01f7e7b3          	or	a5,a5,t6
1c00a94c:	00686833          	or	a6,a6,t1
1c00a950:	0662                	slli	a2,a2,0x18
1c00a952:	06e2                	slli	a3,a3,0x18
1c00a954:	0562                	slli	a0,a0,0x18
1c00a956:	14f14583          	lbu	a1,335(sp)
1c00a95a:	8d59                	or	a0,a0,a4
1c00a95c:	0e22                	slli	t3,t3,0x8
1c00a95e:	00f66733          	or	a4,a2,a5
1c00a962:	0106e7b3          	or	a5,a3,a6
1c00a966:	468a                	lw	a3,128(sp)
1c00a968:	009e6e33          	or	t3,t3,s1
1c00a96c:	08c2                	slli	a7,a7,0x10
1c00a96e:	01c8e8b3          	or	a7,a7,t3
1c00a972:	8d35                	xor	a0,a0,a3
1c00a974:	05e2                	slli	a1,a1,0x18
1c00a976:	469a                	lw	a3,132(sp)
1c00a978:	0115e5b3          	or	a1,a1,a7
1c00a97c:	8db5                	xor	a1,a1,a3
1c00a97e:	46aa                	lw	a3,136(sp)
1c00a980:	15a14803          	lbu	a6,346(sp)
1c00a984:	8eb9                	xor	a3,a3,a4
1c00a986:	473a                	lw	a4,140(sp)
1c00a988:	15914483          	lbu	s1,345(sp)
1c00a98c:	8f3d                	xor	a4,a4,a5
1c00a98e:	15814a83          	lbu	s5,344(sp)
1c00a992:	15b14a03          	lbu	s4,347(sp)
1c00a996:	15c14d03          	lbu	s10,348(sp)
1c00a99a:	18f14783          	lbu	a5,399(sp)
1c00a99e:	c12a                	sw	a0,128(sp)
1c00a9a0:	c32e                	sw	a1,132(sp)
1c00a9a2:	c536                	sw	a3,136(sp)
1c00a9a4:	c73a                	sw	a4,140(sp)
1c00a9a6:	15d14903          	lbu	s2,349(sp)
1c00a9aa:	15e14f83          	lbu	t6,350(sp)
1c00a9ae:	16114283          	lbu	t0,353(sp)
1c00a9b2:	16214f03          	lbu	t5,354(sp)
1c00a9b6:	16d14883          	lbu	a7,365(sp)
1c00a9ba:	16c14b83          	lbu	s7,364(sp)
1c00a9be:	04a2                	slli	s1,s1,0x8
1c00a9c0:	0842                	slli	a6,a6,0x10
1c00a9c2:	02a2                	slli	t0,t0,0x8
1c00a9c4:	08a2                	slli	a7,a7,0x8
1c00a9c6:	00986833          	or	a6,a6,s1
1c00a9ca:	0f42                	slli	t5,t5,0x10
1c00a9cc:	01e2ef33          	or	t5,t0,t5
1c00a9d0:	01586833          	or	a6,a6,s5
1c00a9d4:	0178e2b3          	or	t0,a7,s7
1c00a9d8:	018a1893          	slli	a7,s4,0x18
1c00a9dc:	15f14503          	lbu	a0,351(sp)
1c00a9e0:	0108e833          	or	a6,a7,a6
1c00a9e4:	0922                	slli	s2,s2,0x8
1c00a9e6:	48ca                	lw	a7,144(sp)
1c00a9e8:	01a96933          	or	s2,s2,s10
1c00a9ec:	0fc2                	slli	t6,t6,0x10
1c00a9ee:	16014983          	lbu	s3,352(sp)
1c00a9f2:	16514e83          	lbu	t4,357(sp)
1c00a9f6:	16314583          	lbu	a1,355(sp)
1c00a9fa:	012fefb3          	or	t6,t6,s2
1c00a9fe:	0108c8b3          	xor	a7,a7,a6
1c00aa02:	0562                	slli	a0,a0,0x18
1c00aa04:	485a                	lw	a6,148(sp)
1c00aa06:	16414c83          	lbu	s9,356(sp)
1c00aa0a:	16614c03          	lbu	s8,358(sp)
1c00aa0e:	01f56533          	or	a0,a0,t6
1c00aa12:	16914e03          	lbu	t3,361(sp)
1c00aa16:	16a14303          	lbu	t1,362(sp)
1c00aa1a:	16714603          	lbu	a2,359(sp)
1c00aa1e:	013f6f33          	or	t5,t5,s3
1c00aa22:	00a84833          	xor	a6,a6,a0
1c00aa26:	0ea2                	slli	t4,t4,0x8
1c00aa28:	456a                	lw	a0,152(sp)
1c00aa2a:	05e2                	slli	a1,a1,0x18
1c00aa2c:	019ee4b3          	or	s1,t4,s9
1c00aa30:	01e5e5b3          	or	a1,a1,t5
1c00aa34:	010c1e93          	slli	t4,s8,0x10
1c00aa38:	16814383          	lbu	t2,360(sp)
1c00aa3c:	16b14683          	lbu	a3,363(sp)
1c00aa40:	009eeeb3          	or	t4,t4,s1
1c00aa44:	8d2d                	xor	a0,a0,a1
1c00aa46:	0342                	slli	t1,t1,0x10
1c00aa48:	45fa                	lw	a1,156(sp)
1c00aa4a:	0e22                	slli	t3,t3,0x8
1c00aa4c:	0662                	slli	a2,a2,0x18
1c00aa4e:	16e14b03          	lbu	s6,366(sp)
1c00aa52:	01d66633          	or	a2,a2,t4
1c00aa56:	006e6e33          	or	t3,t3,t1
1c00aa5a:	16f14703          	lbu	a4,367(sp)
1c00aa5e:	007e6e33          	or	t3,t3,t2
1c00aa62:	8db1                	xor	a1,a1,a2
1c00aa64:	06e2                	slli	a3,a3,0x18
1c00aa66:	560a                	lw	a2,160(sp)
1c00aa68:	01c6e6b3          	or	a3,a3,t3
1c00aa6c:	010b1313          	slli	t1,s6,0x10
1c00aa70:	00536333          	or	t1,t1,t0
1c00aa74:	8e35                	xor	a2,a2,a3
1c00aa76:	0762                	slli	a4,a4,0x18
1c00aa78:	569a                	lw	a3,164(sp)
1c00aa7a:	00676733          	or	a4,a4,t1
1c00aa7e:	8f35                	xor	a4,a4,a3
1c00aa80:	c946                	sw	a7,144(sp)
1c00aa82:	cb42                	sw	a6,148(sp)
1c00aa84:	cd2a                	sw	a0,152(sp)
1c00aa86:	cf2e                	sw	a1,156(sp)
1c00aa88:	d132                	sw	a2,160(sp)
1c00aa8a:	d33a                	sw	a4,164(sp)
1c00aa8c:	17114e83          	lbu	t4,369(sp)
1c00aa90:	17214a83          	lbu	s5,370(sp)
1c00aa94:	17014903          	lbu	s2,368(sp)
1c00aa98:	18114803          	lbu	a6,385(sp)
1c00aa9c:	18214483          	lbu	s1,386(sp)
1c00aaa0:	18014283          	lbu	t0,384(sp)
1c00aaa4:	18314703          	lbu	a4,387(sp)
1c00aaa8:	04c2                	slli	s1,s1,0x10
1c00aaaa:	0822                	slli	a6,a6,0x8
1c00aaac:	17514f83          	lbu	t6,373(sp)
1c00aab0:	17314503          	lbu	a0,371(sp)
1c00aab4:	0ac2                	slli	s5,s5,0x10
1c00aab6:	00986833          	or	a6,a6,s1
1c00aaba:	0ea2                	slli	t4,t4,0x8
1c00aabc:	17414b03          	lbu	s6,372(sp)
1c00aac0:	00586833          	or	a6,a6,t0
1c00aac4:	17614e03          	lbu	t3,374(sp)
1c00aac8:	015eeeb3          	or	t4,t4,s5
1c00aacc:	0762                	slli	a4,a4,0x18
1c00aace:	17914303          	lbu	t1,377(sp)
1c00aad2:	17a14983          	lbu	s3,378(sp)
1c00aad6:	17714583          	lbu	a1,375(sp)
1c00aada:	012eeeb3          	or	t4,t4,s2
1c00aade:	01076733          	or	a4,a4,a6
1c00aae2:	0fa2                	slli	t6,t6,0x8
1c00aae4:	582a                	lw	a6,168(sp)
1c00aae6:	0562                	slli	a0,a0,0x18
1c00aae8:	016fefb3          	or	t6,t6,s6
1c00aaec:	01d56533          	or	a0,a0,t4
1c00aaf0:	0e42                	slli	t3,t3,0x10
1c00aaf2:	17814383          	lbu	t2,376(sp)
1c00aaf6:	01fe6e33          	or	t3,t3,t6
1c00aafa:	17d14f03          	lbu	t5,381(sp)
1c00aafe:	17b14603          	lbu	a2,379(sp)
1c00ab02:	00a84833          	xor	a6,a6,a0
1c00ab06:	09c2                	slli	s3,s3,0x10
1c00ab08:	553a                	lw	a0,172(sp)
1c00ab0a:	0322                	slli	t1,t1,0x8
1c00ab0c:	05e2                	slli	a1,a1,0x18
1c00ab0e:	17c14a03          	lbu	s4,380(sp)
1c00ab12:	17e14883          	lbu	a7,382(sp)
1c00ab16:	01c5e5b3          	or	a1,a1,t3
1c00ab1a:	01336333          	or	t1,t1,s3
1c00ab1e:	00736333          	or	t1,t1,t2
1c00ab22:	17f14683          	lbu	a3,383(sp)
1c00ab26:	8d2d                	xor	a0,a0,a1
1c00ab28:	0f22                	slli	t5,t5,0x8
1c00ab2a:	55ca                	lw	a1,176(sp)
1c00ab2c:	0662                	slli	a2,a2,0x18
1c00ab2e:	014f6f33          	or	t5,t5,s4
1c00ab32:	00666633          	or	a2,a2,t1
1c00ab36:	08c2                	slli	a7,a7,0x10
1c00ab38:	01e8e8b3          	or	a7,a7,t5
1c00ab3c:	8db1                	xor	a1,a1,a2
1c00ab3e:	06e2                	slli	a3,a3,0x18
1c00ab40:	565a                	lw	a2,180(sp)
1c00ab42:	0116e6b3          	or	a3,a3,a7
1c00ab46:	8e35                	xor	a2,a2,a3
1c00ab48:	56ea                	lw	a3,184(sp)
1c00ab4a:	18414f03          	lbu	t5,388(sp)
1c00ab4e:	8f35                	xor	a4,a4,a3
1c00ab50:	d542                	sw	a6,168(sp)
1c00ab52:	d72a                	sw	a0,172(sp)
1c00ab54:	d92e                	sw	a1,176(sp)
1c00ab56:	db32                	sw	a2,180(sp)
1c00ab58:	18514883          	lbu	a7,389(sp)
1c00ab5c:	18614503          	lbu	a0,390(sp)
1c00ab60:	18714603          	lbu	a2,391(sp)
1c00ab64:	dd3a                	sw	a4,184(sp)
1c00ab66:	18914703          	lbu	a4,393(sp)
1c00ab6a:	18a14303          	lbu	t1,394(sp)
1c00ab6e:	18814e03          	lbu	t3,392(sp)
1c00ab72:	0342                	slli	t1,t1,0x10
1c00ab74:	18b14683          	lbu	a3,395(sp)
1c00ab78:	0722                	slli	a4,a4,0x8
1c00ab7a:	00676733          	or	a4,a4,t1
1c00ab7e:	08a2                	slli	a7,a7,0x8
1c00ab80:	01e8e8b3          	or	a7,a7,t5
1c00ab84:	01c76733          	or	a4,a4,t3
1c00ab88:	06e2                	slli	a3,a3,0x18
1c00ab8a:	0542                	slli	a0,a0,0x10
1c00ab8c:	01156533          	or	a0,a0,a7
1c00ab90:	18d14803          	lbu	a6,397(sp)
1c00ab94:	8f55                	or	a4,a4,a3
1c00ab96:	0662                	slli	a2,a2,0x18
1c00ab98:	56fa                	lw	a3,188(sp)
1c00ab9a:	18c14e83          	lbu	t4,396(sp)
1c00ab9e:	18e14583          	lbu	a1,398(sp)
1c00aba2:	8e49                	or	a2,a2,a0
1c00aba4:	8e35                	xor	a2,a2,a3
1c00aba6:	0822                	slli	a6,a6,0x8
1c00aba8:	468e                	lw	a3,192(sp)
1c00abaa:	01d86833          	or	a6,a6,t4
1c00abae:	0807e793          	ori	a5,a5,128
1c00abb2:	05c2                	slli	a1,a1,0x10
1c00abb4:	0105e5b3          	or	a1,a1,a6
1c00abb8:	8eb9                	xor	a3,a3,a4
1c00abba:	07e2                	slli	a5,a5,0x18
1c00abbc:	471e                	lw	a4,196(sp)
1c00abbe:	8fcd                	or	a5,a5,a1
1c00abc0:	8fb9                	xor	a5,a5,a4
1c00abc2:	0108                	addi	a0,sp,128
1c00abc4:	df32                	sw	a2,188(sp)
1c00abc6:	c1b6                	sw	a3,192(sp)
1c00abc8:	c3be                	sw	a5,196(sp)
1c00abca:	829fd0ef          	jal	ra,1c0083f2 <KeccakF1600_StatePermute>
1c00abce:	581a                	lw	a6,164(sp)
1c00abd0:	552a                	lw	a0,168(sp)
1c00abd2:	55ba                	lw	a1,172(sp)
1c00abd4:	00885913          	srli	s2,a6,0x8
1c00abd8:	564a                	lw	a2,176(sp)
1c00abda:	de4a                	sw	s2,60(sp)
1c00abdc:	00855913          	srli	s2,a0,0x8
1c00abe0:	56da                	lw	a3,180(sp)
1c00abe2:	d24a                	sw	s2,36(sp)
1c00abe4:	0085d913          	srli	s2,a1,0x8
1c00abe8:	576a                	lw	a4,184(sp)
1c00abea:	d44a                	sw	s2,40(sp)
1c00abec:	00865913          	srli	s2,a2,0x8
1c00abf0:	57fa                	lw	a5,188(sp)
1c00abf2:	d64a                	sw	s2,44(sp)
1c00abf4:	0086d913          	srli	s2,a3,0x8
1c00abf8:	d84a                	sw	s2,48(sp)
1c00abfa:	00875913          	srli	s2,a4,0x8
1c00abfe:	da4a                	sw	s2,52(sp)
1c00ac00:	0087d913          	srli	s2,a5,0x8
1c00ac04:	dc4a                	sw	s2,56(sp)
1c00ac06:	5972                	lw	s2,60(sp)
1c00ac08:	448a                	lw	s1,128(sp)
1c00ac0a:	0ff97913          	andi	s2,s2,255
1c00ac0e:	c2ca                	sw	s2,68(sp)
1c00ac10:	5912                	lw	s2,36(sp)
1c00ac12:	439a                	lw	t2,132(sp)
1c00ac14:	0ff97913          	andi	s2,s2,255
1c00ac18:	c4ca                	sw	s2,72(sp)
1c00ac1a:	5922                	lw	s2,40(sp)
1c00ac1c:	42aa                	lw	t0,136(sp)
1c00ac1e:	0ff97913          	andi	s2,s2,255
1c00ac22:	c8ca                	sw	s2,80(sp)
1c00ac24:	5932                	lw	s2,44(sp)
1c00ac26:	4fba                	lw	t6,140(sp)
1c00ac28:	0ff97913          	andi	s2,s2,255
1c00ac2c:	ccca                	sw	s2,88(sp)
1c00ac2e:	5942                	lw	s2,48(sp)
1c00ac30:	4f4a                	lw	t5,144(sp)
1c00ac32:	0ff97913          	andi	s2,s2,255
1c00ac36:	4eda                	lw	t4,148(sp)
1c00ac38:	4e6a                	lw	t3,152(sp)
1c00ac3a:	437a                	lw	t1,156(sp)
1c00ac3c:	588a                	lw	a7,160(sp)
1c00ac3e:	d0ca                	sw	s2,96(sp)
1c00ac40:	5952                	lw	s2,52(sp)
1c00ac42:	0082dc93          	srli	s9,t0,0x8
1c00ac46:	0ff97913          	andi	s2,s2,255
1c00ac4a:	d4ca                	sw	s2,104(sp)
1c00ac4c:	5962                	lw	s2,56(sp)
1c00ac4e:	008fdc13          	srli	s8,t6,0x8
1c00ac52:	008f5b93          	srli	s7,t5,0x8
1c00ac56:	008edb13          	srli	s6,t4,0x8
1c00ac5a:	0ff97913          	andi	s2,s2,255
1c00ac5e:	d8ca                	sw	s2,112(sp)
1c00ac60:	0083dd13          	srli	s10,t2,0x8
1c00ac64:	0ff4f913          	andi	s2,s1,255
1c00ac68:	0ffcfc93          	andi	s9,s9,255
1c00ac6c:	0ffc7c13          	andi	s8,s8,255
1c00ac70:	0ffbfb93          	andi	s7,s7,255
1c00ac74:	0ffb7b13          	andi	s6,s6,255
1c00ac78:	d24a                	sw	s2,36(sp)
1c00ac7a:	008e5a93          	srli	s5,t3,0x8
1c00ac7e:	0ff2f913          	andi	s2,t0,255
1c00ac82:	0ca2                	slli	s9,s9,0x8
1c00ac84:	0c22                	slli	s8,s8,0x8
1c00ac86:	0ba2                	slli	s7,s7,0x8
1c00ac88:	0b22                	slli	s6,s6,0x8
1c00ac8a:	0ffd7d13          	andi	s10,s10,255
1c00ac8e:	ce66                	sw	s9,28(sp)
1c00ac90:	d64a                	sw	s2,44(sp)
1c00ac92:	cc62                	sw	s8,24(sp)
1c00ac94:	ca5e                	sw	s7,20(sp)
1c00ac96:	0ffffc13          	andi	s8,t6,255
1c00ac9a:	4b96                	lw	s7,68(sp)
1c00ac9c:	0fff7c93          	andi	s9,t5,255
1c00aca0:	c85a                	sw	s6,16(sp)
1c00aca2:	0ffe7913          	andi	s2,t3,255
1c00aca6:	0ff8fb13          	andi	s6,a7,255
1c00acaa:	0d22                	slli	s10,s10,0x8
1c00acac:	0ffafa93          	andi	s5,s5,255
1c00acb0:	d06a                	sw	s10,32(sp)
1c00acb2:	d862                	sw	s8,48(sp)
1c00acb4:	0ff3fd13          	andi	s10,t2,255
1c00acb8:	da66                	sw	s9,52(sp)
1c00acba:	de4a                	sw	s2,60(sp)
1c00acbc:	4ca6                	lw	s9,72(sp)
1c00acbe:	4946                	lw	s2,80(sp)
1c00acc0:	c0da                	sw	s6,64(sp)
1c00acc2:	0ff87c13          	andi	s8,a6,255
1c00acc6:	4b66                	lw	s6,88(sp)
1c00acc8:	0aa2                	slli	s5,s5,0x8
1c00acca:	d46a                	sw	s10,40(sp)
1c00accc:	c656                	sw	s5,12(sp)
1c00acce:	0ffefd13          	andi	s10,t4,255
1c00acd2:	0ff37a93          	andi	s5,t1,255
1c00acd6:	c2e2                	sw	s8,68(sp)
1c00acd8:	0ba2                	slli	s7,s7,0x8
1c00acda:	5c06                	lw	s8,96(sp)
1c00acdc:	dc6a                	sw	s10,56(sp)
1c00acde:	dcd6                	sw	s5,120(sp)
1c00ace0:	dede                	sw	s7,124(sp)
1c00ace2:	0ff57d13          	andi	s10,a0,255
1c00ace6:	0ff5fa93          	andi	s5,a1,255
1c00acea:	0ff67b93          	andi	s7,a2,255
1c00acee:	0ca2                	slli	s9,s9,0x8
1c00acf0:	0922                	slli	s2,s2,0x8
1c00acf2:	0b22                	slli	s6,s6,0x8
1c00acf4:	c4e6                	sw	s9,72(sp)
1c00acf6:	c6ea                	sw	s10,76(sp)
1c00acf8:	c8ca                	sw	s2,80(sp)
1c00acfa:	cad6                	sw	s5,84(sp)
1c00acfc:	ccda                	sw	s6,88(sp)
1c00acfe:	cede                	sw	s7,92(sp)
1c00ad00:	0c22                	slli	s8,s8,0x8
1c00ad02:	d0e2                	sw	s8,96(sp)
1c00ad04:	5ac6                	lw	s5,112(sp)
1c00ad06:	5d26                	lw	s10,104(sp)
1c00ad08:	0ff6fc93          	andi	s9,a3,255
1c00ad0c:	0ff7fb13          	andi	s6,a5,255
1c00ad10:	0084dd93          	srli	s11,s1,0x8
1c00ad14:	0aa2                	slli	s5,s5,0x8
1c00ad16:	5b92                	lw	s7,36(sp)
1c00ad18:	5c22                	lw	s8,40(sp)
1c00ad1a:	d2e6                	sw	s9,100(sp)
1c00ad1c:	d8d6                	sw	s5,112(sp)
1c00ad1e:	5c82                	lw	s9,32(sp)
1c00ad20:	5ab2                	lw	s5,44(sp)
1c00ad22:	dada                	sw	s6,116(sp)
1c00ad24:	0ffdfd93          	andi	s11,s11,255
1c00ad28:	4b72                	lw	s6,28(sp)
1c00ad2a:	0d22                	slli	s10,s10,0x8
1c00ad2c:	0da2                	slli	s11,s11,0x8
1c00ad2e:	d4ea                	sw	s10,104(sp)
1c00ad30:	01bbedb3          	or	s11,s7,s11
1c00ad34:	019c6d33          	or	s10,s8,s9
1c00ad38:	5bc2                	lw	s7,48(sp)
1c00ad3a:	016aecb3          	or	s9,s5,s6
1c00ad3e:	4ae2                	lw	s5,24(sp)
1c00ad40:	5b52                	lw	s6,52(sp)
1c00ad42:	015bec33          	or	s8,s7,s5
1c00ad46:	4ad2                	lw	s5,20(sp)
1c00ad48:	0088d993          	srli	s3,a7,0x8
1c00ad4c:	015b6bb3          	or	s7,s6,s5
1c00ad50:	4ac2                	lw	s5,16(sp)
1c00ad52:	5b62                	lw	s6,56(sp)
1c00ad54:	00835a13          	srli	s4,t1,0x8
1c00ad58:	015b6b33          	or	s6,s6,s5
1c00ad5c:	c25a                	sw	s6,4(sp)
1c00ad5e:	4ab2                	lw	s5,12(sp)
1c00ad60:	5b72                	lw	s6,60(sp)
1c00ad62:	0ff9f993          	andi	s3,s3,255
1c00ad66:	015b6b33          	or	s6,s6,s5
1c00ad6a:	4a86                	lw	s5,64(sp)
1c00ad6c:	c45a                	sw	s6,8(sp)
1c00ad6e:	0ffa7a13          	andi	s4,s4,255
1c00ad72:	5b66                	lw	s6,120(sp)
1c00ad74:	09a2                	slli	s3,s3,0x8
1c00ad76:	013ae9b3          	or	s3,s5,s3
1c00ad7a:	0a22                	slli	s4,s4,0x8
1c00ad7c:	c0ce                	sw	s3,64(sp)
1c00ad7e:	014b6a33          	or	s4,s6,s4
1c00ad82:	59f6                	lw	s3,124(sp)
1c00ad84:	4b16                	lw	s6,68(sp)
1c00ad86:	4ab6                	lw	s5,76(sp)
1c00ad88:	013b6b33          	or	s6,s6,s3
1c00ad8c:	c2da                	sw	s6,68(sp)
1c00ad8e:	4b26                	lw	s6,72(sp)
1c00ad90:	0ff77913          	andi	s2,a4,255
1c00ad94:	016aeab3          	or	s5,s5,s6
1c00ad98:	d6ca                	sw	s2,108(sp)
1c00ad9a:	49d6                	lw	s3,84(sp)
1c00ad9c:	c6d6                	sw	s5,76(sp)
1c00ad9e:	4ac6                	lw	s5,80(sp)
1c00ada0:	4b76                	lw	s6,92(sp)
1c00ada2:	0159e9b3          	or	s3,s3,s5
1c00ada6:	cace                	sw	s3,84(sp)
1c00ada8:	49e6                	lw	s3,88(sp)
1c00adaa:	5a96                	lw	s5,100(sp)
1c00adac:	013b6b33          	or	s6,s6,s3
1c00adb0:	ceda                	sw	s6,92(sp)
1c00adb2:	5b06                	lw	s6,96(sp)
1c00adb4:	59b6                	lw	s3,108(sp)
1c00adb6:	016aeab3          	or	s5,s5,s6
1c00adba:	d2d6                	sw	s5,100(sp)
1c00adbc:	5aa6                	lw	s5,104(sp)
1c00adbe:	5b56                	lw	s6,116(sp)
1c00adc0:	0159e9b3          	or	s3,s3,s5
1c00adc4:	d6ce                	sw	s3,108(sp)
1c00adc6:	59c6                	lw	s3,112(sp)
1c00adc8:	ff010937          	lui	s2,0xff010
1c00adcc:	013b6b33          	or	s6,s6,s3
1c00add0:	00ff09b7          	lui	s3,0xff0
1c00add4:	0134fab3          	and	s5,s1,s3
1c00add8:	0133f9b3          	and	s3,t2,s3
1c00addc:	d44e                	sw	s3,40(sp)
1c00adde:	00ff09b7          	lui	s3,0xff0
1c00ade2:	0132f9b3          	and	s3,t0,s3
1c00ade6:	d64e                	sw	s3,44(sp)
1c00ade8:	00ff09b7          	lui	s3,0xff0
1c00adec:	013ff9b3          	and	s3,t6,s3
1c00adf0:	d84e                	sw	s3,48(sp)
1c00adf2:	00ff09b7          	lui	s3,0xff0
1c00adf6:	013f79b3          	and	s3,t5,s3
1c00adfa:	da4e                	sw	s3,52(sp)
1c00adfc:	00ff09b7          	lui	s3,0xff0
1c00ae00:	013ef9b3          	and	s3,t4,s3
1c00ae04:	dc4e                	sw	s3,56(sp)
1c00ae06:	00ff09b7          	lui	s3,0xff0
1c00ae0a:	013e79b3          	and	s3,t3,s3
1c00ae0e:	197d                	addi	s2,s2,-1
1c00ae10:	de4e                	sw	s3,60(sp)
1c00ae12:	00ff09b7          	lui	s3,0xff0
1c00ae16:	012c7c33          	and	s8,s8,s2
1c00ae1a:	012bfbb3          	and	s7,s7,s2
1c00ae1e:	013379b3          	and	s3,t1,s3
1c00ae22:	012cfcb3          	and	s9,s9,s2
1c00ae26:	ca62                	sw	s8,20(sp)
1c00ae28:	c85e                	sw	s7,16(sp)
1c00ae2a:	4c22                	lw	s8,8(sp)
1c00ae2c:	4b92                	lw	s7,4(sp)
1c00ae2e:	dcce                	sw	s3,120(sp)
1c00ae30:	00ff09b7          	lui	s3,0xff0
1c00ae34:	cc66                	sw	s9,24(sp)
1c00ae36:	0138f9b3          	and	s3,a7,s3
1c00ae3a:	4c86                	lw	s9,64(sp)
1c00ae3c:	012d7d33          	and	s10,s10,s2
1c00ae40:	012bfbb3          	and	s7,s7,s2
1c00ae44:	012c7c33          	and	s8,s8,s2
1c00ae48:	012a7a33          	and	s4,s4,s2
1c00ae4c:	dece                	sw	s3,124(sp)
1c00ae4e:	00ff09b7          	lui	s3,0xff0
1c00ae52:	dada                	sw	s6,116(sp)
1c00ae54:	ce6a                	sw	s10,28(sp)
1c00ae56:	c65e                	sw	s7,12(sp)
1c00ae58:	c462                	sw	s8,8(sp)
1c00ae5a:	c252                	sw	s4,4(sp)
1c00ae5c:	012cfcb3          	and	s9,s9,s2
1c00ae60:	013879b3          	and	s3,a6,s3
1c00ae64:	c0e6                	sw	s9,64(sp)
1c00ae66:	c4ce                	sw	s3,72(sp)
1c00ae68:	00ff09b7          	lui	s3,0xff0
1c00ae6c:	013579b3          	and	s3,a0,s3
1c00ae70:	c8ce                	sw	s3,80(sp)
1c00ae72:	00ff09b7          	lui	s3,0xff0
1c00ae76:	0135f9b3          	and	s3,a1,s3
1c00ae7a:	ccce                	sw	s3,88(sp)
1c00ae7c:	49d6                	lw	s3,84(sp)
1c00ae7e:	012dfb33          	and	s6,s11,s2
1c00ae82:	0129f9b3          	and	s3,s3,s2
1c00ae86:	cace                	sw	s3,84(sp)
1c00ae88:	00ff09b7          	lui	s3,0xff0
1c00ae8c:	013679b3          	and	s3,a2,s3
1c00ae90:	d0ce                	sw	s3,96(sp)
1c00ae92:	00ff09b7          	lui	s3,0xff0
1c00ae96:	0136f9b3          	and	s3,a3,s3
1c00ae9a:	d4ce                	sw	s3,104(sp)
1c00ae9c:	00ff09b7          	lui	s3,0xff0
1c00aea0:	4db6                	lw	s11,76(sp)
1c00aea2:	4a76                	lw	s4,92(sp)
1c00aea4:	013779b3          	and	s3,a4,s3
1c00aea8:	d8ce                	sw	s3,112(sp)
1c00aeaa:	00ff09b7          	lui	s3,0xff0
1c00aeae:	4d16                	lw	s10,68(sp)
1c00aeb0:	5b96                	lw	s7,100(sp)
1c00aeb2:	012dfdb3          	and	s11,s11,s2
1c00aeb6:	012a7a33          	and	s4,s4,s2
1c00aeba:	0137f9b3          	and	s3,a5,s3
1c00aebe:	5cd6                	lw	s9,116(sp)
1c00aec0:	5c36                	lw	s8,108(sp)
1c00aec2:	c6ee                	sw	s11,76(sp)
1c00aec4:	ced2                	sw	s4,92(sp)
1c00aec6:	c04e                	sw	s3,0(sp)
1c00aec8:	5a22                	lw	s4,40(sp)
1c00aeca:	49f2                	lw	s3,28(sp)
1c00aecc:	015b6db3          	or	s11,s6,s5
1c00aed0:	4ae2                	lw	s5,24(sp)
1c00aed2:	5b32                	lw	s6,44(sp)
1c00aed4:	012d7d33          	and	s10,s10,s2
1c00aed8:	012bfbb3          	and	s7,s7,s2
1c00aedc:	c2ea                	sw	s10,68(sp)
1c00aede:	d2de                	sw	s7,100(sp)
1c00aee0:	012c7c33          	and	s8,s8,s2
1c00aee4:	4bd2                	lw	s7,20(sp)
1c00aee6:	012cf933          	and	s2,s9,s2
1c00aeea:	0149ed33          	or	s10,s3,s4
1c00aeee:	016aecb3          	or	s9,s5,s6
1c00aef2:	59c2                	lw	s3,48(sp)
1c00aef4:	4a42                	lw	s4,16(sp)
1c00aef6:	5ad2                	lw	s5,52(sp)
1c00aef8:	d6e2                	sw	s8,108(sp)
1c00aefa:	013bec33          	or	s8,s7,s3
1c00aefe:	49b2                	lw	s3,12(sp)
1c00af00:	015a6bb3          	or	s7,s4,s5
1c00af04:	5a62                	lw	s4,56(sp)
1c00af06:	daca                	sw	s2,116(sp)
1c00af08:	0149eb33          	or	s6,s3,s4
1c00af0c:	49a2                	lw	s3,8(sp)
1c00af0e:	5a72                	lw	s4,60(sp)
1c00af10:	80e1                	srli	s1,s1,0x18
1c00af12:	0149eab3          	or	s5,s3,s4
1c00af16:	5a66                	lw	s4,120(sp)
1c00af18:	4992                	lw	s3,4(sp)
1c00af1a:	04e2                	slli	s1,s1,0x18
1c00af1c:	0149e9b3          	or	s3,s3,s4
1c00af20:	dcce                	sw	s3,120(sp)
1c00af22:	5a76                	lw	s4,124(sp)
1c00af24:	4986                	lw	s3,64(sp)
1c00af26:	01000937          	lui	s2,0x1000
1c00af2a:	0149e9b3          	or	s3,s3,s4
1c00af2e:	d24e                	sw	s3,36(sp)
1c00af30:	4a26                	lw	s4,72(sp)
1c00af32:	4996                	lw	s3,68(sp)
1c00af34:	197d                	addi	s2,s2,-1
1c00af36:	0149e9b3          	or	s3,s3,s4
1c00af3a:	d44e                	sw	s3,40(sp)
1c00af3c:	4a46                	lw	s4,80(sp)
1c00af3e:	49b6                	lw	s3,76(sp)
1c00af40:	c2a6                	sw	s1,68(sp)
1c00af42:	0149e9b3          	or	s3,s3,s4
1c00af46:	d64e                	sw	s3,44(sp)
1c00af48:	4a66                	lw	s4,88(sp)
1c00af4a:	49d6                	lw	s3,84(sp)
1c00af4c:	54e6                	lw	s1,120(sp)
1c00af4e:	0149e9b3          	or	s3,s3,s4
1c00af52:	d84e                	sw	s3,48(sp)
1c00af54:	5a06                	lw	s4,96(sp)
1c00af56:	49f6                	lw	s3,92(sp)
1c00af58:	018ede93          	srli	t4,t4,0x18
1c00af5c:	0149e9b3          	or	s3,s3,s4
1c00af60:	da4e                	sw	s3,52(sp)
1c00af62:	5a26                	lw	s4,104(sp)
1c00af64:	5996                	lw	s3,100(sp)
1c00af66:	018e5e13          	srli	t3,t3,0x18
1c00af6a:	0149e9b3          	or	s3,s3,s4
1c00af6e:	dc4e                	sw	s3,56(sp)
1c00af70:	5a46                	lw	s4,112(sp)
1c00af72:	59b6                	lw	s3,108(sp)
1c00af74:	01835313          	srli	t1,t1,0x18
1c00af78:	0149e9b3          	or	s3,s3,s4
1c00af7c:	de4e                	sw	s3,60(sp)
1c00af7e:	4a02                	lw	s4,0(sp)
1c00af80:	59d6                	lw	s3,116(sp)
1c00af82:	012b7b33          	and	s6,s6,s2
1c00af86:	0149e9b3          	or	s3,s3,s4
1c00af8a:	c0ce                	sw	s3,64(sp)
1c00af8c:	5992                	lw	s3,36(sp)
1c00af8e:	0124fa33          	and	s4,s1,s2
1c00af92:	0129f9b3          	and	s3,s3,s2
1c00af96:	d24e                	sw	s3,36(sp)
1c00af98:	54a2                	lw	s1,40(sp)
1c00af9a:	59b2                	lw	s3,44(sp)
1c00af9c:	0124f4b3          	and	s1,s1,s2
1c00afa0:	d426                	sw	s1,40(sp)
1c00afa2:	54c2                	lw	s1,48(sp)
1c00afa4:	0129f9b3          	and	s3,s3,s2
1c00afa8:	d64e                	sw	s3,44(sp)
1c00afaa:	0124f4b3          	and	s1,s1,s2
1c00afae:	59d2                	lw	s3,52(sp)
1c00afb0:	d826                	sw	s1,48(sp)
1c00afb2:	54e2                	lw	s1,56(sp)
1c00afb4:	0129f9b3          	and	s3,s3,s2
1c00afb8:	da4e                	sw	s3,52(sp)
1c00afba:	0124f4b3          	and	s1,s1,s2
1c00afbe:	59f2                	lw	s3,60(sp)
1c00afc0:	dc26                	sw	s1,56(sp)
1c00afc2:	4486                	lw	s1,64(sp)
1c00afc4:	012afab3          	and	s5,s5,s2
1c00afc8:	0129f9b3          	and	s3,s3,s2
1c00afcc:	0183d393          	srli	t2,t2,0x18
1c00afd0:	0182d293          	srli	t0,t0,0x18
1c00afd4:	018fdf93          	srli	t6,t6,0x18
1c00afd8:	018f5f13          	srli	t5,t5,0x18
1c00afdc:	0ee2                	slli	t4,t4,0x18
1c00afde:	0e62                	slli	t3,t3,0x18
1c00afe0:	0362                	slli	t1,t1,0x18
1c00afe2:	de4e                	sw	s3,60(sp)
1c00afe4:	012dfdb3          	and	s11,s11,s2
1c00afe8:	0124f9b3          	and	s3,s1,s2
1c00afec:	012d7d33          	and	s10,s10,s2
1c00aff0:	012cfcb3          	and	s9,s9,s2
1c00aff4:	012c7c33          	and	s8,s8,s2
1c00aff8:	012bfbb3          	and	s7,s7,s2
1c00affc:	01db6eb3          	or	t4,s6,t4
1c00b000:	4916                	lw	s2,68(sp)
1c00b002:	5b32                	lw	s6,44(sp)
1c00b004:	01caee33          	or	t3,s5,t3
1c00b008:	006a6333          	or	t1,s4,t1
1c00b00c:	5aa2                	lw	s5,40(sp)
1c00b00e:	5a12                	lw	s4,36(sp)
1c00b010:	0188d893          	srli	a7,a7,0x18
1c00b014:	01885813          	srli	a6,a6,0x18
1c00b018:	8161                	srli	a0,a0,0x18
1c00b01a:	03e2                	slli	t2,t2,0x18
1c00b01c:	02e2                	slli	t0,t0,0x18
1c00b01e:	0fe2                	slli	t6,t6,0x18
1c00b020:	0f62                	slli	t5,t5,0x18
1c00b022:	007d63b3          	or	t2,s10,t2
1c00b026:	005ce2b3          	or	t0,s9,t0
1c00b02a:	5d72                	lw	s10,60(sp)
1c00b02c:	5ce2                	lw	s9,56(sp)
1c00b02e:	01fc6fb3          	or	t6,s8,t6
1c00b032:	01ebef33          	or	t5,s7,t5
1c00b036:	5c52                	lw	s8,52(sp)
1c00b038:	5bc2                	lw	s7,48(sp)
1c00b03a:	81e1                	srli	a1,a1,0x18
1c00b03c:	8261                	srli	a2,a2,0x18
1c00b03e:	82e1                	srli	a3,a3,0x18
1c00b040:	8361                	srli	a4,a4,0x18
1c00b042:	83e1                	srli	a5,a5,0x18
1c00b044:	08e2                	slli	a7,a7,0x18
1c00b046:	0862                	slli	a6,a6,0x18
1c00b048:	0562                	slli	a0,a0,0x18
1c00b04a:	012de4b3          	or	s1,s11,s2
1c00b04e:	05e2                	slli	a1,a1,0x18
1c00b050:	011a6933          	or	s2,s4,a7
1c00b054:	0662                	slli	a2,a2,0x18
1c00b056:	010aea33          	or	s4,s5,a6
1c00b05a:	06e2                	slli	a3,a3,0x18
1c00b05c:	00ab6ab3          	or	s5,s6,a0
1c00b060:	0762                	slli	a4,a4,0x18
1c00b062:	07e2                	slli	a5,a5,0x18
1c00b064:	c004                	sw	s1,0(s0)
1c00b066:	03242023          	sw	s2,32(s0)
1c00b06a:	03442223          	sw	s4,36(s0)
1c00b06e:	03542423          	sw	s5,40(s0)
1c00b072:	00bbe5b3          	or	a1,s7,a1
1c00b076:	00cc6633          	or	a2,s8,a2
1c00b07a:	00dce6b3          	or	a3,s9,a3
1c00b07e:	00ed6733          	or	a4,s10,a4
1c00b082:	00f9e7b3          	or	a5,s3,a5
1c00b086:	00742223          	sw	t2,4(s0)
1c00b08a:	00542423          	sw	t0,8(s0)
1c00b08e:	01f42623          	sw	t6,12(s0)
1c00b092:	01e42823          	sw	t5,16(s0)
1c00b096:	01d42a23          	sw	t4,20(s0)
1c00b09a:	01c42c23          	sw	t3,24(s0)
1c00b09e:	00642e23          	sw	t1,28(s0)
1c00b0a2:	d44c                	sw	a1,44(s0)
1c00b0a4:	d810                	sw	a2,48(s0)
1c00b0a6:	d854                	sw	a3,52(s0)
1c00b0a8:	dc18                	sw	a4,56(s0)
1c00b0aa:	dc5c                	sw	a5,60(s0)
1c00b0ac:	24c12083          	lw	ra,588(sp)
1c00b0b0:	24812403          	lw	s0,584(sp)
1c00b0b4:	24412483          	lw	s1,580(sp)
1c00b0b8:	24012903          	lw	s2,576(sp)
1c00b0bc:	23c12983          	lw	s3,572(sp)
1c00b0c0:	23812a03          	lw	s4,568(sp)
1c00b0c4:	23412a83          	lw	s5,564(sp)
1c00b0c8:	23012b03          	lw	s6,560(sp)
1c00b0cc:	22c12b83          	lw	s7,556(sp)
1c00b0d0:	22812c03          	lw	s8,552(sp)
1c00b0d4:	22412c83          	lw	s9,548(sp)
1c00b0d8:	22012d03          	lw	s10,544(sp)
1c00b0dc:	21c12d83          	lw	s11,540(sp)
1c00b0e0:	25010113          	addi	sp,sp,592
1c00b0e4:	8082                	ret
1c00b0e6:	4781                	li	a5,0
1c00b0e8:	fc0ff06f          	j	1c00a8a8 <sha3_512+0x10a>

1c00b0ec <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>:
1c00b0ec:	b6010113          	addi	sp,sp,-1184
1c00b0f0:	7379                	lui	t1,0xffffe
1c00b0f2:	48112e23          	sw	ra,1180(sp)
1c00b0f6:	48812c23          	sw	s0,1176(sp)
1c00b0fa:	48912a23          	sw	s1,1172(sp)
1c00b0fe:	49612023          	sw	s6,1152(sp)
1c00b102:	47912a23          	sw	s9,1140(sp)
1c00b106:	49212823          	sw	s2,1168(sp)
1c00b10a:	49312623          	sw	s3,1164(sp)
1c00b10e:	49412423          	sw	s4,1160(sp)
1c00b112:	49512223          	sw	s5,1156(sp)
1c00b116:	47712e23          	sw	s7,1148(sp)
1c00b11a:	47812c23          	sw	s8,1144(sp)
1c00b11e:	47a12823          	sw	s10,1136(sp)
1c00b122:	47b12623          	sw	s11,1132(sp)
1c00b126:	911a                	add	sp,sp,t1
1c00b128:	6309                	lui	t1,0x2
1c00b12a:	7479                	lui	s0,0xffffe
1c00b12c:	46030313          	addi	t1,t1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b130:	930a                	add	t1,t1,sp
1c00b132:	bc040413          	addi	s0,s0,-1088 # ffffdbc0 <pulp__FC+0xffffdbc1>
1c00b136:	941a                	add	s0,s0,t1
1c00b138:	cc2a                	sw	a0,24(sp)
1c00b13a:	ce2e                	sw	a1,28(sp)
1c00b13c:	8522                	mv	a0,s0
1c00b13e:	02000593          	li	a1,32
1c00b142:	011000ef          	jal	ra,1c00b952 <randombytes>
1c00b146:	8522                	mv	a0,s0
1c00b148:	02000613          	li	a2,32
1c00b14c:	85a2                	mv	a1,s0
1c00b14e:	e50ff0ef          	jal	ra,1c00a79e <sha3_512>
1c00b152:	6509                	lui	a0,0x2
1c00b154:	77fd                	lui	a5,0xfffff
1c00b156:	46050513          	addi	a0,a0,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b15a:	80078493          	addi	s1,a5,-2048 # ffffe800 <pulp__FC+0xffffe801>
1c00b15e:	950a                	add	a0,a0,sp
1c00b160:	e0078793          	addi	a5,a5,-512
1c00b164:	00f50733          	add	a4,a0,a5
1c00b168:	94aa                	add	s1,s1,a0
1c00b16a:	6785                	lui	a5,0x1
1c00b16c:	ca3a                	sw	a4,20(sp)
1c00b16e:	c602                	sw	zero,12(sp)
1c00b170:	1f848b13          	addi	s6,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c00b174:	fff78c93          	addi	s9,a5,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00b178:	4832                	lw	a6,12(sp)
1c00b17a:	6889                	lui	a7,0x2
1c00b17c:	7a79                	lui	s4,0xffffe
1c00b17e:	46088893          	addi	a7,a7,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b182:	bc0a0b93          	addi	s7,s4,-1088 # ffffdbc0 <pulp__FC+0xffffdbc1>
1c00b186:	0ff87813          	andi	a6,a6,255
1c00b18a:	988a                	add	a7,a7,sp
1c00b18c:	c842                	sw	a6,16(sp)
1c00b18e:	4452                	lw	s0,20(sp)
1c00b190:	4901                	li	s2,0
1c00b192:	9bc6                	add	s7,s7,a7
1c00b194:	a815                	j	1c00b1c8 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xdc>
1c00b196:	001c1813          	slli	a6,s8,0x1
1c00b19a:	9822                	add	a6,a6,s0
1c00b19c:	001c0893          	addi	a7,s8,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00b1a0:	00f81023          	sh	a5,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00b1a4:	28a89363          	bne	a7,a0,1c00b42a <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x33e>
1c00b1a8:	6509                	lui	a0,0x2
1c00b1aa:	46050513          	addi	a0,a0,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b1ae:	950a                	add	a0,a0,sp
1c00b1b0:	200a0993          	addi	s3,s4,512
1c00b1b4:	99aa                	add	s3,s3,a0
1c00b1b6:	854e                	mv	a0,s3
1c00b1b8:	9baff0ef          	jal	ra,1c00a372 <shake128_ctx_release>
1c00b1bc:	0905                	addi	s2,s2,1
1c00b1be:	478d                	li	a5,3
1c00b1c0:	20040413          	addi	s0,s0,512
1c00b1c4:	10f90463          	beq	s2,a5,1c00b2cc <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x1e0>
1c00b1c8:	6809                	lui	a6,0x2
1c00b1ca:	46080813          	addi	a6,a6,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b1ce:	980a                	add	a6,a6,sp
1c00b1d0:	200a0993          	addi	s3,s4,512
1c00b1d4:	99c2                	add	s3,s3,a6
1c00b1d6:	46c2                	lw	a3,16(sp)
1c00b1d8:	85de                	mv	a1,s7
1c00b1da:	854e                	mv	a0,s3
1c00b1dc:	0ff97613          	andi	a2,s2,255
1c00b1e0:	233000ef          	jal	ra,1c00bc12 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00b1e4:	458d                	li	a1,3
1c00b1e6:	8526                	mv	a0,s1
1c00b1e8:	864e                	mv	a2,s3
1c00b1ea:	8c8ff0ef          	jal	ra,1c00a2b2 <shake128_squeezeblocks>
1c00b1ee:	6885                	lui	a7,0x1
1c00b1f0:	4c01                	li	s8,0
1c00b1f2:	8726                	mv	a4,s1
1c00b1f4:	d0088593          	addi	a1,a7,-768 # d00 <__CTOR_LIST__-0x1bfff304>
1c00b1f8:	10000513          	li	a0,256
1c00b1fc:	00174603          	lbu	a2,1(a4)
1c00b200:	00074683          	lbu	a3,0(a4)
1c00b204:	00861793          	slli	a5,a2,0x8
1c00b208:	8fd5                	or	a5,a5,a3
1c00b20a:	0197f7b3          	and	a5,a5,s9
1c00b20e:	00274683          	lbu	a3,2(a4)
1c00b212:	f8f5f2e3          	bleu	a5,a1,1c00b196 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xaa>
1c00b216:	8211                	srli	a2,a2,0x4
1c00b218:	0692                	slli	a3,a3,0x4
1c00b21a:	8ed1                	or	a3,a3,a2
1c00b21c:	00d5c863          	blt	a1,a3,1c00b22c <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x140>
1c00b220:	001c1793          	slli	a5,s8,0x1
1c00b224:	97a2                	add	a5,a5,s0
1c00b226:	00d79023          	sh	a3,0(a5)
1c00b22a:	0c05                	addi	s8,s8,1
1c00b22c:	f6ac0ee3          	beq	s8,a0,1c00b1a8 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xbc>
1c00b230:	070d                	addi	a4,a4,3
1c00b232:	fd6715e3          	bne	a4,s6,1c00b1fc <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x110>
1c00b236:	6309                	lui	t1,0x2
1c00b238:	46030313          	addi	t1,t1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b23c:	200a0993          	addi	s3,s4,512
1c00b240:	930a                	add	t1,t1,sp
1c00b242:	6505                	lui	a0,0x1
1c00b244:	0a848d13          	addi	s10,s1,168
1c00b248:	999a                	add	s3,s3,t1
1c00b24a:	10000a93          	li	s5,256
1c00b24e:	d0050d93          	addi	s11,a0,-768 # d00 <__CTOR_LIST__-0x1bfff304>
1c00b252:	a031                	j	1c00b25e <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x172>
1c00b254:	9c2e                	add	s8,s8,a1
1c00b256:	0ff00793          	li	a5,255
1c00b25a:	f587e7e3          	bltu	a5,s8,1c00b1a8 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0xbc>
1c00b25e:	4585                	li	a1,1
1c00b260:	8526                	mv	a0,s1
1c00b262:	864e                	mv	a2,s3
1c00b264:	84eff0ef          	jal	ra,1c00a2b2 <shake128_squeezeblocks>
1c00b268:	001c1513          	slli	a0,s8,0x1
1c00b26c:	9522                	add	a0,a0,s0
1c00b26e:	418a8eb3          	sub	t4,s5,s8
1c00b272:	86a6                	mv	a3,s1
1c00b274:	4581                	li	a1,0
1c00b276:	00159793          	slli	a5,a1,0x1
1c00b27a:	00f50f33          	add	t5,a0,a5
1c00b27e:	fcdd0be3          	beq	s10,a3,1c00b254 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x168>
1c00b282:	0016c703          	lbu	a4,1(a3)
1c00b286:	0006c603          	lbu	a2,0(a3)
1c00b28a:	00871793          	slli	a5,a4,0x8
1c00b28e:	8fd1                	or	a5,a5,a2
1c00b290:	0197f7b3          	and	a5,a5,s9
1c00b294:	00475613          	srli	a2,a4,0x4
1c00b298:	0026c703          	lbu	a4,2(a3)
1c00b29c:	00fde563          	bltu	s11,a5,1c00b2a6 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x1ba>
1c00b2a0:	00ff1023          	sh	a5,0(t5) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b2a4:	0585                	addi	a1,a1,1
1c00b2a6:	00471793          	slli	a5,a4,0x4
1c00b2aa:	8fd1                	or	a5,a5,a2
1c00b2ac:	fbd5f4e3          	bleu	t4,a1,1c00b254 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x168>
1c00b2b0:	00159713          	slli	a4,a1,0x1
1c00b2b4:	972a                	add	a4,a4,a0
1c00b2b6:	00158613          	addi	a2,a1,1
1c00b2ba:	00fdc763          	blt	s11,a5,1c00b2c8 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x1dc>
1c00b2be:	00f71023          	sh	a5,0(a4)
1c00b2c2:	85b2                	mv	a1,a2
1c00b2c4:	f9d678e3          	bleu	t4,a2,1c00b254 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x168>
1c00b2c8:	068d                	addi	a3,a3,3
1c00b2ca:	b775                	j	1c00b276 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x18a>
1c00b2cc:	4732                	lw	a4,12(sp)
1c00b2ce:	47d2                	lw	a5,20(sp)
1c00b2d0:	0705                	addi	a4,a4,1
1c00b2d2:	60078793          	addi	a5,a5,1536
1c00b2d6:	c63a                	sw	a4,12(sp)
1c00b2d8:	ca3e                	sw	a5,20(sp)
1c00b2da:	e9271fe3          	bne	a4,s2,1c00b178 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x8c>
1c00b2de:	6309                	lui	t1,0x2
1c00b2e0:	46030313          	addi	t1,t1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b2e4:	930a                	add	t1,t1,sp
1c00b2e6:	7afd                	lui	s5,0xfffff
1c00b2e8:	014304b3          	add	s1,t1,s4
1c00b2ec:	800a8413          	addi	s0,s5,-2048 # ffffe800 <pulp__FC+0xffffe801>
1c00b2f0:	941a                	add	s0,s0,t1
1c00b2f2:	be048493          	addi	s1,s1,-1056
1c00b2f6:	85a6                	mv	a1,s1
1c00b2f8:	8522                	mv	a0,s0
1c00b2fa:	4601                	li	a2,0
1c00b2fc:	2105                	jal	1c00b71c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00b2fe:	85a6                	mv	a1,s1
1c00b300:	20040513          	addi	a0,s0,512
1c00b304:	4605                	li	a2,1
1c00b306:	2919                	jal	1c00b71c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00b308:	85a6                	mv	a1,s1
1c00b30a:	40040513          	addi	a0,s0,1024
1c00b30e:	4609                	li	a2,2
1c00b310:	2131                	jal	1c00b71c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00b312:	6509                	lui	a0,0x2
1c00b314:	46050513          	addi	a0,a0,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b318:	950a                	add	a0,a0,sp
1c00b31a:	c00a0913          	addi	s2,s4,-1024
1c00b31e:	992a                	add	s2,s2,a0
1c00b320:	85a6                	mv	a1,s1
1c00b322:	854a                	mv	a0,s2
1c00b324:	460d                	li	a2,3
1c00b326:	2edd                	jal	1c00b71c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00b328:	85a6                	mv	a1,s1
1c00b32a:	20090513          	addi	a0,s2,512 # 1000200 <__CTOR_LIST__-0x1afffe04>
1c00b32e:	4611                	li	a2,4
1c00b330:	26f5                	jal	1c00b71c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00b332:	85a6                	mv	a1,s1
1c00b334:	4615                	li	a2,5
1c00b336:	40090513          	addi	a0,s2,1024
1c00b33a:	26cd                	jal	1c00b71c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00b33c:	8522                	mv	a0,s0
1c00b33e:	2b3d                	jal	1c00b87c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00b340:	854a                	mv	a0,s2
1c00b342:	2b2d                	jal	1c00b87c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00b344:	6589                	lui	a1,0x2
1c00b346:	46058593          	addi	a1,a1,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b34a:	958a                	add	a1,a1,sp
1c00b34c:	e00a8493          	addi	s1,s5,-512
1c00b350:	94ae                	add	s1,s1,a1
1c00b352:	8622                	mv	a2,s0
1c00b354:	85a6                	mv	a1,s1
1c00b356:	854e                	mv	a0,s3
1c00b358:	2381                	jal	1c00b898 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00b35a:	854e                	mv	a0,s3
1c00b35c:	29b5                	jal	1c00b7d8 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c00b35e:	20098a93          	addi	s5,s3,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c00b362:	8622                	mv	a2,s0
1c00b364:	60048593          	addi	a1,s1,1536
1c00b368:	8556                	mv	a0,s5
1c00b36a:	233d                	jal	1c00b898 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00b36c:	8556                	mv	a0,s5
1c00b36e:	21ad                	jal	1c00b7d8 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c00b370:	6689                	lui	a3,0x2
1c00b372:	e6068693          	addi	a3,a3,-416 # 1e60 <__CTOR_LIST__-0x1bffe1a4>
1c00b376:	40098493          	addi	s1,s3,1024
1c00b37a:	00d105b3          	add	a1,sp,a3
1c00b37e:	8622                	mv	a2,s0
1c00b380:	8526                	mv	a0,s1
1c00b382:	2b19                	jal	1c00b898 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00b384:	8526                	mv	a0,s1
1c00b386:	2989                	jal	1c00b7d8 <PQCLEAN_KYBER768_CLEAN_poly_tomont>
1c00b388:	864a                	mv	a2,s2
1c00b38a:	85ce                	mv	a1,s3
1c00b38c:	854e                	mv	a0,s3
1c00b38e:	2351                	jal	1c00b912 <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c00b390:	854e                	mv	a0,s3
1c00b392:	2395                	jal	1c00b8f6 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c00b394:	4572                	lw	a0,28(sp)
1c00b396:	85a2                	mv	a1,s0
1c00b398:	296d                	jal	1c00b852 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c00b39a:	4562                	lw	a0,24(sp)
1c00b39c:	85ce                	mv	a1,s3
1c00b39e:	2955                	jal	1c00b852 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>
1c00b3a0:	6709                	lui	a4,0x2
1c00b3a2:	46070713          	addi	a4,a4,1120 # 2460 <__CTOR_LIST__-0x1bffdba4>
1c00b3a6:	970a                	add	a4,a4,sp
1c00b3a8:	9a3a                	add	s4,s4,a4
1c00b3aa:	4362                	lw	t1,24(sp)
1c00b3ac:	bc0a2883          	lw	a7,-1088(s4)
1c00b3b0:	bc4a2803          	lw	a6,-1084(s4)
1c00b3b4:	bc8a2503          	lw	a0,-1080(s4)
1c00b3b8:	bcca2583          	lw	a1,-1076(s4)
1c00b3bc:	bd0a2603          	lw	a2,-1072(s4)
1c00b3c0:	bd4a2683          	lw	a3,-1068(s4)
1c00b3c4:	bd8a2703          	lw	a4,-1064(s4)
1c00b3c8:	bdca2783          	lw	a5,-1060(s4)
1c00b3cc:	49132023          	sw	a7,1152(t1)
1c00b3d0:	49032223          	sw	a6,1156(t1)
1c00b3d4:	48a32423          	sw	a0,1160(t1)
1c00b3d8:	48b32623          	sw	a1,1164(t1)
1c00b3dc:	48c32823          	sw	a2,1168(t1)
1c00b3e0:	48d32a23          	sw	a3,1172(t1)
1c00b3e4:	48e32c23          	sw	a4,1176(t1)
1c00b3e8:	48f32e23          	sw	a5,1180(t1)
1c00b3ec:	6309                	lui	t1,0x2
1c00b3ee:	911a                	add	sp,sp,t1
1c00b3f0:	49c12083          	lw	ra,1180(sp)
1c00b3f4:	49812403          	lw	s0,1176(sp)
1c00b3f8:	49412483          	lw	s1,1172(sp)
1c00b3fc:	49012903          	lw	s2,1168(sp)
1c00b400:	48c12983          	lw	s3,1164(sp)
1c00b404:	48812a03          	lw	s4,1160(sp)
1c00b408:	48412a83          	lw	s5,1156(sp)
1c00b40c:	48012b03          	lw	s6,1152(sp)
1c00b410:	47c12b83          	lw	s7,1148(sp)
1c00b414:	47812c03          	lw	s8,1144(sp)
1c00b418:	47412c83          	lw	s9,1140(sp)
1c00b41c:	47012d03          	lw	s10,1136(sp)
1c00b420:	46c12d83          	lw	s11,1132(sp)
1c00b424:	4a010113          	addi	sp,sp,1184
1c00b428:	8082                	ret
1c00b42a:	00469793          	slli	a5,a3,0x4
1c00b42e:	00465693          	srli	a3,a2,0x4
1c00b432:	8edd                	or	a3,a3,a5
1c00b434:	8c46                	mv	s8,a7
1c00b436:	ded5d5e3          	ble	a3,a1,1c00b220 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x134>
1c00b43a:	bbdd                	j	1c00b230 <PQCLEAN_KYBER768_CLEAN_indcpa_keypair+0x144>

1c00b43c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair>:
1c00b43c:	1141                	addi	sp,sp,-16
1c00b43e:	c422                	sw	s0,8(sp)
1c00b440:	c226                	sw	s1,4(sp)
1c00b442:	842a                	mv	s0,a0
1c00b444:	84ae                	mv	s1,a1
1c00b446:	c606                	sw	ra,12(sp)
1c00b448:	c04a                	sw	s2,0(sp)
1c00b44a:	314d                	jal	1c00b0ec <PQCLEAN_KYBER768_CLEAN_indcpa_keypair>
1c00b44c:	48048793          	addi	a5,s1,1152
1c00b450:	00440713          	addi	a4,s0,4
1c00b454:	00e7b733          	sltu	a4,a5,a4
1c00b458:	00174713          	xori	a4,a4,1
1c00b45c:	0ff77713          	andi	a4,a4,255
1c00b460:	eb11                	bnez	a4,1c00b474 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x38>
1c00b462:	48448713          	addi	a4,s1,1156
1c00b466:	00e43733          	sltu	a4,s0,a4
1c00b46a:	00174713          	xori	a4,a4,1
1c00b46e:	0ff77713          	andi	a4,a4,255
1c00b472:	c769                	beqz	a4,1c00b53c <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x100>
1c00b474:	408007b3          	neg	a5,s0
1c00b478:	8b8d                	andi	a5,a5,3
1c00b47a:	c3fd                	beqz	a5,1c00b560 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x124>
1c00b47c:	00044683          	lbu	a3,0(s0)
1c00b480:	4705                	li	a4,1
1c00b482:	48d48023          	sb	a3,1152(s1)
1c00b486:	0ce78963          	beq	a5,a4,1c00b558 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x11c>
1c00b48a:	00144683          	lbu	a3,1(s0)
1c00b48e:	470d                	li	a4,3
1c00b490:	48d480a3          	sb	a3,1153(s1)
1c00b494:	0ce79a63          	bne	a5,a4,1c00b568 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x12c>
1c00b498:	00244703          	lbu	a4,2(s0)
1c00b49c:	49d00893          	li	a7,1181
1c00b4a0:	48e48123          	sb	a4,1154(s1)
1c00b4a4:	450d                	li	a0,3
1c00b4a6:	4a000813          	li	a6,1184
1c00b4aa:	40f80833          	sub	a6,a6,a5
1c00b4ae:	48078713          	addi	a4,a5,1152
1c00b4b2:	00285593          	srli	a1,a6,0x2
1c00b4b6:	97a2                	add	a5,a5,s0
1c00b4b8:	9726                	add	a4,a4,s1
1c00b4ba:	4681                	li	a3,0
1c00b4bc:	4390                	lw	a2,0(a5)
1c00b4be:	0685                	addi	a3,a3,1
1c00b4c0:	c310                	sw	a2,0(a4)
1c00b4c2:	0791                	addi	a5,a5,4
1c00b4c4:	0711                	addi	a4,a4,4
1c00b4c6:	feb6ebe3          	bltu	a3,a1,1c00b4bc <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x80>
1c00b4ca:	ffc87693          	andi	a3,a6,-4
1c00b4ce:	00d507b3          	add	a5,a0,a3
1c00b4d2:	40d88733          	sub	a4,a7,a3
1c00b4d6:	02d80d63          	beq	a6,a3,1c00b510 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c00b4da:	00f406b3          	add	a3,s0,a5
1c00b4de:	0006c603          	lbu	a2,0(a3)
1c00b4e2:	00f486b3          	add	a3,s1,a5
1c00b4e6:	48c68023          	sb	a2,1152(a3)
1c00b4ea:	fff70593          	addi	a1,a4,-1
1c00b4ee:	00178613          	addi	a2,a5,1
1c00b4f2:	cd99                	beqz	a1,1c00b510 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c00b4f4:	9622                	add	a2,a2,s0
1c00b4f6:	00064583          	lbu	a1,0(a2)
1c00b4fa:	4609                	li	a2,2
1c00b4fc:	48b680a3          	sb	a1,1153(a3)
1c00b500:	0789                	addi	a5,a5,2
1c00b502:	00c70763          	beq	a4,a2,1c00b510 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c00b506:	97a2                	add	a5,a5,s0
1c00b508:	0007c783          	lbu	a5,0(a5)
1c00b50c:	48f68123          	sb	a5,1154(a3)
1c00b510:	6905                	lui	s2,0x1
1c00b512:	92090513          	addi	a0,s2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c00b516:	85a2                	mv	a1,s0
1c00b518:	9526                	add	a0,a0,s1
1c00b51a:	4a000613          	li	a2,1184
1c00b51e:	89aff0ef          	jal	ra,1c00a5b8 <sha3_256>
1c00b522:	94090513          	addi	a0,s2,-1728
1c00b526:	9526                	add	a0,a0,s1
1c00b528:	02000593          	li	a1,32
1c00b52c:	211d                	jal	1c00b952 <randombytes>
1c00b52e:	40b2                	lw	ra,12(sp)
1c00b530:	4422                	lw	s0,8(sp)
1c00b532:	4492                	lw	s1,4(sp)
1c00b534:	4902                	lw	s2,0(sp)
1c00b536:	4501                	li	a0,0
1c00b538:	0141                	addi	sp,sp,16
1c00b53a:	8082                	ret
1c00b53c:	6605                	lui	a2,0x1
1c00b53e:	92060613          	addi	a2,a2,-1760 # 920 <__CTOR_LIST__-0x1bfff6e4>
1c00b542:	8722                	mv	a4,s0
1c00b544:	9626                	add	a2,a2,s1
1c00b546:	00074683          	lbu	a3,0(a4)
1c00b54a:	0785                	addi	a5,a5,1
1c00b54c:	fed78fa3          	sb	a3,-1(a5)
1c00b550:	0705                	addi	a4,a4,1
1c00b552:	fec79ae3          	bne	a5,a2,1c00b546 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x10a>
1c00b556:	bf6d                	j	1c00b510 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0xd4>
1c00b558:	49f00893          	li	a7,1183
1c00b55c:	4505                	li	a0,1
1c00b55e:	b7a1                	j	1c00b4a6 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6a>
1c00b560:	4a000893          	li	a7,1184
1c00b564:	4501                	li	a0,0
1c00b566:	b781                	j	1c00b4a6 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6a>
1c00b568:	49e00893          	li	a7,1182
1c00b56c:	4509                	li	a0,2
1c00b56e:	bf25                	j	1c00b4a6 <PQCLEAN_KYBER768_CLEAN_crypto_kem_keypair+0x6a>

1c00b570 <PQCLEAN_KYBER768_CLEAN_ntt>:
1c00b570:	7139                	addi	sp,sp,-64
1c00b572:	da26                	sw	s1,52(sp)
1c00b574:	d256                	sw	s5,36(sp)
1c00b576:	d05a                	sw	s6,32(sp)
1c00b578:	ce5e                	sw	s7,28(sp)
1c00b57a:	cc62                	sw	s8,24(sp)
1c00b57c:	ca66                	sw	s9,20(sp)
1c00b57e:	de06                	sw	ra,60(sp)
1c00b580:	dc22                	sw	s0,56(sp)
1c00b582:	d84a                	sw	s2,48(sp)
1c00b584:	d64e                	sw	s3,44(sp)
1c00b586:	d452                	sw	s4,40(sp)
1c00b588:	c86a                	sw	s10,16(sp)
1c00b58a:	c66e                	sw	s11,12(sp)
1c00b58c:	8b2a                	mv	s6,a0
1c00b58e:	4c9d                	li	s9,7
1c00b590:	d0a00493          	li	s1,-758
1c00b594:	4b85                	li	s7,1
1c00b596:	08000a93          	li	s5,128
1c00b59a:	0ff00c13          	li	s8,255
1c00b59e:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00b5a2:	1c0007b7          	lui	a5,0x1c000
1c00b5a6:	4401                	li	s0,0
1c00b5a8:	00199a13          	slli	s4,s3,0x1
1c00b5ac:	20078793          	addi	a5,a5,512 # 1c000200 <PQCLEAN_KYBER768_CLEAN_zetas>
1c00b5b0:	008a8933          	add	s2,s5,s0
1c00b5b4:	9a3e                	add	s4,s4,a5
1c00b5b6:	8bce                	mv	s7,s3
1c00b5b8:	05247b63          	bleu	s2,s0,1c00b60e <PQCLEAN_KYBER768_CLEAN_ntt+0x9e>
1c00b5bc:	00191793          	slli	a5,s2,0x1
1c00b5c0:	00fb0d33          	add	s10,s6,a5
1c00b5c4:	0406                	slli	s0,s0,0x1
1c00b5c6:	945a                	add	s0,s0,s6
1c00b5c8:	8dea                	mv	s11,s10
1c00b5ca:	000d1503          	lh	a0,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b5ce:	0409                	addi	s0,s0,2
1c00b5d0:	02950533          	mul	a0,a0,s1
1c00b5d4:	2bed                	jal	1c00bbce <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00b5d6:	ffe45703          	lhu	a4,-2(s0)
1c00b5da:	0542                	slli	a0,a0,0x10
1c00b5dc:	8141                	srli	a0,a0,0x10
1c00b5de:	8f09                	sub	a4,a4,a0
1c00b5e0:	00ed1023          	sh	a4,0(s10)
1c00b5e4:	ffe45703          	lhu	a4,-2(s0)
1c00b5e8:	0d09                	addi	s10,s10,2
1c00b5ea:	953a                	add	a0,a0,a4
1c00b5ec:	fea41f23          	sh	a0,-2(s0)
1c00b5f0:	fc8d9de3          	bne	s11,s0,1c00b5ca <PQCLEAN_KYBER768_CLEAN_ntt+0x5a>
1c00b5f4:	01590433          	add	s0,s2,s5
1c00b5f8:	008c6d63          	bltu	s8,s0,1c00b612 <PQCLEAN_KYBER768_CLEAN_ntt+0xa2>
1c00b5fc:	0985                	addi	s3,s3,1
1c00b5fe:	008a8933          	add	s2,s5,s0
1c00b602:	000a1483          	lh	s1,0(s4)
1c00b606:	8bce                	mv	s7,s3
1c00b608:	0a09                	addi	s4,s4,2
1c00b60a:	fb2469e3          	bltu	s0,s2,1c00b5bc <PQCLEAN_KYBER768_CLEAN_ntt+0x4c>
1c00b60e:	844a                	mv	s0,s2
1c00b610:	b7f5                	j	1c00b5fc <PQCLEAN_KYBER768_CLEAN_ntt+0x8c>
1c00b612:	1cfd                	addi	s9,s9,-1
1c00b614:	001ada93          	srli	s5,s5,0x1
1c00b618:	000c8b63          	beqz	s9,1c00b62e <PQCLEAN_KYBER768_CLEAN_ntt+0xbe>
1c00b61c:	1c0007b7          	lui	a5,0x1c000
1c00b620:	0986                	slli	s3,s3,0x1
1c00b622:	20078793          	addi	a5,a5,512 # 1c000200 <PQCLEAN_KYBER768_CLEAN_zetas>
1c00b626:	99be                	add	s3,s3,a5
1c00b628:	00099483          	lh	s1,0(s3)
1c00b62c:	bf8d                	j	1c00b59e <PQCLEAN_KYBER768_CLEAN_ntt+0x2e>
1c00b62e:	50f2                	lw	ra,60(sp)
1c00b630:	5462                	lw	s0,56(sp)
1c00b632:	54d2                	lw	s1,52(sp)
1c00b634:	5942                	lw	s2,48(sp)
1c00b636:	59b2                	lw	s3,44(sp)
1c00b638:	5a22                	lw	s4,40(sp)
1c00b63a:	5a92                	lw	s5,36(sp)
1c00b63c:	5b02                	lw	s6,32(sp)
1c00b63e:	4bf2                	lw	s7,28(sp)
1c00b640:	4c62                	lw	s8,24(sp)
1c00b642:	4cd2                	lw	s9,20(sp)
1c00b644:	4d42                	lw	s10,16(sp)
1c00b646:	4db2                	lw	s11,12(sp)
1c00b648:	6121                	addi	sp,sp,64
1c00b64a:	8082                	ret

1c00b64c <PQCLEAN_KYBER768_CLEAN_basemul>:
1c00b64c:	00261783          	lh	a5,2(a2)
1c00b650:	00259703          	lh	a4,2(a1)
1c00b654:	1101                	addi	sp,sp,-32
1c00b656:	cc22                	sw	s0,24(sp)
1c00b658:	842a                	mv	s0,a0
1c00b65a:	02f70533          	mul	a0,a4,a5
1c00b65e:	ce06                	sw	ra,28(sp)
1c00b660:	ca26                	sw	s1,20(sp)
1c00b662:	c84a                	sw	s2,16(sp)
1c00b664:	c64e                	sw	s3,12(sp)
1c00b666:	892e                	mv	s2,a1
1c00b668:	84b2                	mv	s1,a2
1c00b66a:	89b6                	mv	s3,a3
1c00b66c:	238d                	jal	1c00bbce <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00b66e:	00a41023          	sh	a0,0(s0)
1c00b672:	03350533          	mul	a0,a0,s3
1c00b676:	2ba1                	jal	1c00bbce <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00b678:	00a41023          	sh	a0,0(s0)
1c00b67c:	00049783          	lh	a5,0(s1)
1c00b680:	00091503          	lh	a0,0(s2)
1c00b684:	02f50533          	mul	a0,a0,a5
1c00b688:	2399                	jal	1c00bbce <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00b68a:	00045783          	lhu	a5,0(s0)
1c00b68e:	953e                	add	a0,a0,a5
1c00b690:	00a41023          	sh	a0,0(s0)
1c00b694:	00249783          	lh	a5,2(s1)
1c00b698:	00091503          	lh	a0,0(s2)
1c00b69c:	02f50533          	mul	a0,a0,a5
1c00b6a0:	233d                	jal	1c00bbce <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00b6a2:	00a41123          	sh	a0,2(s0)
1c00b6a6:	00049783          	lh	a5,0(s1)
1c00b6aa:	00291503          	lh	a0,2(s2)
1c00b6ae:	02f50533          	mul	a0,a0,a5
1c00b6b2:	2b31                	jal	1c00bbce <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00b6b4:	00245783          	lhu	a5,2(s0)
1c00b6b8:	40f2                	lw	ra,28(sp)
1c00b6ba:	953e                	add	a0,a0,a5
1c00b6bc:	00a41123          	sh	a0,2(s0)
1c00b6c0:	4462                	lw	s0,24(sp)
1c00b6c2:	44d2                	lw	s1,20(sp)
1c00b6c4:	4942                	lw	s2,16(sp)
1c00b6c6:	49b2                	lw	s3,12(sp)
1c00b6c8:	6105                	addi	sp,sp,32
1c00b6ca:	8082                	ret

1c00b6cc <PQCLEAN_KYBER768_CLEAN_poly_tobytes>:
1c00b6cc:	6805                	lui	a6,0x1
1c00b6ce:	18050893          	addi	a7,a0,384
1c00b6d2:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b6d6:	00059703          	lh	a4,0(a1)
1c00b6da:	00259783          	lh	a5,2(a1)
1c00b6de:	40f75613          	srai	a2,a4,0xf
1c00b6e2:	40f7d693          	srai	a3,a5,0xf
1c00b6e6:	01067633          	and	a2,a2,a6
1c00b6ea:	0106f6b3          	and	a3,a3,a6
1c00b6ee:	9732                	add	a4,a4,a2
1c00b6f0:	97b6                	add	a5,a5,a3
1c00b6f2:	0742                	slli	a4,a4,0x10
1c00b6f4:	07c2                	slli	a5,a5,0x10
1c00b6f6:	8341                	srli	a4,a4,0x10
1c00b6f8:	83c1                	srli	a5,a5,0x10
1c00b6fa:	00479613          	slli	a2,a5,0x4
1c00b6fe:	00875693          	srli	a3,a4,0x8
1c00b702:	8ed1                	or	a3,a3,a2
1c00b704:	8391                	srli	a5,a5,0x4
1c00b706:	00e50023          	sb	a4,0(a0)
1c00b70a:	00d500a3          	sb	a3,1(a0)
1c00b70e:	00f50123          	sb	a5,2(a0)
1c00b712:	050d                	addi	a0,a0,3
1c00b714:	0591                	addi	a1,a1,4
1c00b716:	fca890e3          	bne	a7,a0,1c00b6d6 <PQCLEAN_KYBER768_CLEAN_poly_tobytes+0xa>
1c00b71a:	8082                	ret

1c00b71c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00b71c:	7175                	addi	sp,sp,-144
1c00b71e:	c522                	sw	s0,136(sp)
1c00b720:	86b2                	mv	a3,a2
1c00b722:	842a                	mv	s0,a0
1c00b724:	862e                	mv	a2,a1
1c00b726:	850a                	mv	a0,sp
1c00b728:	08000593          	li	a1,128
1c00b72c:	c706                	sw	ra,140(sp)
1c00b72e:	2b31                	jal	1c00bc4a <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00b730:	858a                	mv	a1,sp
1c00b732:	8522                	mv	a0,s0
1c00b734:	bbdfc0ef          	jal	ra,1c0082f0 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c00b738:	40ba                	lw	ra,140(sp)
1c00b73a:	442a                	lw	s0,136(sp)
1c00b73c:	6149                	addi	sp,sp,144
1c00b73e:	8082                	ret

1c00b740 <PQCLEAN_KYBER768_CLEAN_poly_ntt>:
1c00b740:	1141                	addi	sp,sp,-16
1c00b742:	c422                	sw	s0,8(sp)
1c00b744:	842a                	mv	s0,a0
1c00b746:	c226                	sw	s1,4(sp)
1c00b748:	c606                	sw	ra,12(sp)
1c00b74a:	20040493          	addi	s1,s0,512
1c00b74e:	350d                	jal	1c00b570 <PQCLEAN_KYBER768_CLEAN_ntt>
1c00b750:	00041503          	lh	a0,0(s0)
1c00b754:	0409                	addi	s0,s0,2
1c00b756:	2961                	jal	1c00bbee <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00b758:	fea41f23          	sh	a0,-2(s0)
1c00b75c:	fe941ae3          	bne	s0,s1,1c00b750 <PQCLEAN_KYBER768_CLEAN_poly_ntt+0x10>
1c00b760:	40b2                	lw	ra,12(sp)
1c00b762:	4422                	lw	s0,8(sp)
1c00b764:	4492                	lw	s1,4(sp)
1c00b766:	0141                	addi	sp,sp,16
1c00b768:	8082                	ret

1c00b76a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c00b76a:	1101                	addi	sp,sp,-32
1c00b76c:	ca26                	sw	s1,20(sp)
1c00b76e:	c256                	sw	s5,4(sp)
1c00b770:	1c0004b7          	lui	s1,0x1c000
1c00b774:	1c000ab7          	lui	s5,0x1c000
1c00b778:	c84a                	sw	s2,16(sp)
1c00b77a:	c64e                	sw	s3,12(sp)
1c00b77c:	c452                	sw	s4,8(sp)
1c00b77e:	ce06                	sw	ra,28(sp)
1c00b780:	cc22                	sw	s0,24(sp)
1c00b782:	28048493          	addi	s1,s1,640 # 1c000280 <PQCLEAN_KYBER768_CLEAN_zetas+0x80>
1c00b786:	00450a13          	addi	s4,a0,4
1c00b78a:	00458993          	addi	s3,a1,4
1c00b78e:	00460913          	addi	s2,a2,4
1c00b792:	300a8a93          	addi	s5,s5,768 # 1c000300 <.got>
1c00b796:	00049403          	lh	s0,0(s1)
1c00b79a:	ffc90613          	addi	a2,s2,-4
1c00b79e:	ffc98593          	addi	a1,s3,-4
1c00b7a2:	ffca0513          	addi	a0,s4,-4
1c00b7a6:	86a2                	mv	a3,s0
1c00b7a8:	3555                	jal	1c00b64c <PQCLEAN_KYBER768_CLEAN_basemul>
1c00b7aa:	408006b3          	neg	a3,s0
1c00b7ae:	06c2                	slli	a3,a3,0x10
1c00b7b0:	864a                	mv	a2,s2
1c00b7b2:	85ce                	mv	a1,s3
1c00b7b4:	8552                	mv	a0,s4
1c00b7b6:	86c1                	srai	a3,a3,0x10
1c00b7b8:	0489                	addi	s1,s1,2
1c00b7ba:	3d49                	jal	1c00b64c <PQCLEAN_KYBER768_CLEAN_basemul>
1c00b7bc:	0a21                	addi	s4,s4,8
1c00b7be:	09a1                	addi	s3,s3,8
1c00b7c0:	0921                	addi	s2,s2,8
1c00b7c2:	fc9a9ae3          	bne	s5,s1,1c00b796 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x2c>
1c00b7c6:	40f2                	lw	ra,28(sp)
1c00b7c8:	4462                	lw	s0,24(sp)
1c00b7ca:	44d2                	lw	s1,20(sp)
1c00b7cc:	4942                	lw	s2,16(sp)
1c00b7ce:	49b2                	lw	s3,12(sp)
1c00b7d0:	4a22                	lw	s4,8(sp)
1c00b7d2:	4a92                	lw	s5,4(sp)
1c00b7d4:	6105                	addi	sp,sp,32
1c00b7d6:	8082                	ret

1c00b7d8 <PQCLEAN_KYBER768_CLEAN_poly_tomont>:
1c00b7d8:	1141                	addi	sp,sp,-16
1c00b7da:	c422                	sw	s0,8(sp)
1c00b7dc:	c226                	sw	s1,4(sp)
1c00b7de:	c04a                	sw	s2,0(sp)
1c00b7e0:	c606                	sw	ra,12(sp)
1c00b7e2:	842a                	mv	s0,a0
1c00b7e4:	20050913          	addi	s2,a0,512
1c00b7e8:	54900493          	li	s1,1353
1c00b7ec:	00041503          	lh	a0,0(s0)
1c00b7f0:	0409                	addi	s0,s0,2
1c00b7f2:	02950533          	mul	a0,a0,s1
1c00b7f6:	2ee1                	jal	1c00bbce <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00b7f8:	fea41f23          	sh	a0,-2(s0)
1c00b7fc:	ff2418e3          	bne	s0,s2,1c00b7ec <PQCLEAN_KYBER768_CLEAN_poly_tomont+0x14>
1c00b800:	40b2                	lw	ra,12(sp)
1c00b802:	4422                	lw	s0,8(sp)
1c00b804:	4492                	lw	s1,4(sp)
1c00b806:	4902                	lw	s2,0(sp)
1c00b808:	0141                	addi	sp,sp,16
1c00b80a:	8082                	ret

1c00b80c <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c00b80c:	1141                	addi	sp,sp,-16
1c00b80e:	c422                	sw	s0,8(sp)
1c00b810:	c226                	sw	s1,4(sp)
1c00b812:	c606                	sw	ra,12(sp)
1c00b814:	842a                	mv	s0,a0
1c00b816:	20050493          	addi	s1,a0,512
1c00b81a:	00041503          	lh	a0,0(s0)
1c00b81e:	0409                	addi	s0,s0,2
1c00b820:	26f9                	jal	1c00bbee <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00b822:	fea41f23          	sh	a0,-2(s0)
1c00b826:	fe941ae3          	bne	s0,s1,1c00b81a <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c00b82a:	40b2                	lw	ra,12(sp)
1c00b82c:	4422                	lw	s0,8(sp)
1c00b82e:	4492                	lw	s1,4(sp)
1c00b830:	0141                	addi	sp,sp,16
1c00b832:	8082                	ret

1c00b834 <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c00b834:	20058693          	addi	a3,a1,512
1c00b838:	0005d783          	lhu	a5,0(a1)
1c00b83c:	00065703          	lhu	a4,0(a2)
1c00b840:	0589                	addi	a1,a1,2
1c00b842:	97ba                	add	a5,a5,a4
1c00b844:	00f51023          	sh	a5,0(a0)
1c00b848:	0609                	addi	a2,a2,2
1c00b84a:	0509                	addi	a0,a0,2
1c00b84c:	fed596e3          	bne	a1,a3,1c00b838 <PQCLEAN_KYBER768_CLEAN_poly_add+0x4>
1c00b850:	8082                	ret

1c00b852 <PQCLEAN_KYBER768_CLEAN_polyvec_tobytes>:
1c00b852:	1141                	addi	sp,sp,-16
1c00b854:	c606                	sw	ra,12(sp)
1c00b856:	c422                	sw	s0,8(sp)
1c00b858:	c226                	sw	s1,4(sp)
1c00b85a:	842a                	mv	s0,a0
1c00b85c:	84ae                	mv	s1,a1
1c00b85e:	35bd                	jal	1c00b6cc <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c00b860:	20048593          	addi	a1,s1,512
1c00b864:	18040513          	addi	a0,s0,384
1c00b868:	3595                	jal	1c00b6cc <PQCLEAN_KYBER768_CLEAN_poly_tobytes>
1c00b86a:	30040513          	addi	a0,s0,768
1c00b86e:	4422                	lw	s0,8(sp)
1c00b870:	40b2                	lw	ra,12(sp)
1c00b872:	40048593          	addi	a1,s1,1024
1c00b876:	4492                	lw	s1,4(sp)
1c00b878:	0141                	addi	sp,sp,16
1c00b87a:	bd89                	j	1c00b6cc <PQCLEAN_KYBER768_CLEAN_poly_tobytes>

1c00b87c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c00b87c:	1141                	addi	sp,sp,-16
1c00b87e:	c606                	sw	ra,12(sp)
1c00b880:	c422                	sw	s0,8(sp)
1c00b882:	842a                	mv	s0,a0
1c00b884:	3d75                	jal	1c00b740 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c00b886:	20040513          	addi	a0,s0,512
1c00b88a:	3d5d                	jal	1c00b740 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c00b88c:	40040513          	addi	a0,s0,1024
1c00b890:	4422                	lw	s0,8(sp)
1c00b892:	40b2                	lw	ra,12(sp)
1c00b894:	0141                	addi	sp,sp,16
1c00b896:	b56d                	j	1c00b740 <PQCLEAN_KYBER768_CLEAN_poly_ntt>

1c00b898 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c00b898:	df010113          	addi	sp,sp,-528
1c00b89c:	20112623          	sw	ra,524(sp)
1c00b8a0:	20812423          	sw	s0,520(sp)
1c00b8a4:	20912223          	sw	s1,516(sp)
1c00b8a8:	21212023          	sw	s2,512(sp)
1c00b8ac:	842a                	mv	s0,a0
1c00b8ae:	84ae                	mv	s1,a1
1c00b8b0:	8932                	mv	s2,a2
1c00b8b2:	3d65                	jal	1c00b76a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b8b4:	20090613          	addi	a2,s2,512
1c00b8b8:	20048593          	addi	a1,s1,512
1c00b8bc:	850a                	mv	a0,sp
1c00b8be:	3575                	jal	1c00b76a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b8c0:	860a                	mv	a2,sp
1c00b8c2:	85a2                	mv	a1,s0
1c00b8c4:	8522                	mv	a0,s0
1c00b8c6:	37bd                	jal	1c00b834 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b8c8:	40090613          	addi	a2,s2,1024
1c00b8cc:	40048593          	addi	a1,s1,1024
1c00b8d0:	850a                	mv	a0,sp
1c00b8d2:	3d61                	jal	1c00b76a <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b8d4:	860a                	mv	a2,sp
1c00b8d6:	85a2                	mv	a1,s0
1c00b8d8:	8522                	mv	a0,s0
1c00b8da:	3fa9                	jal	1c00b834 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b8dc:	8522                	mv	a0,s0
1c00b8de:	373d                	jal	1c00b80c <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b8e0:	20c12083          	lw	ra,524(sp)
1c00b8e4:	20812403          	lw	s0,520(sp)
1c00b8e8:	20412483          	lw	s1,516(sp)
1c00b8ec:	20012903          	lw	s2,512(sp)
1c00b8f0:	21010113          	addi	sp,sp,528
1c00b8f4:	8082                	ret

1c00b8f6 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c00b8f6:	1141                	addi	sp,sp,-16
1c00b8f8:	c606                	sw	ra,12(sp)
1c00b8fa:	c422                	sw	s0,8(sp)
1c00b8fc:	842a                	mv	s0,a0
1c00b8fe:	3739                	jal	1c00b80c <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b900:	20040513          	addi	a0,s0,512
1c00b904:	3721                	jal	1c00b80c <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b906:	40040513          	addi	a0,s0,1024
1c00b90a:	4422                	lw	s0,8(sp)
1c00b90c:	40b2                	lw	ra,12(sp)
1c00b90e:	0141                	addi	sp,sp,16
1c00b910:	bdf5                	j	1c00b80c <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c00b912 <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c00b912:	1101                	addi	sp,sp,-32
1c00b914:	cc22                	sw	s0,24(sp)
1c00b916:	ca26                	sw	s1,20(sp)
1c00b918:	c84a                	sw	s2,16(sp)
1c00b91a:	c64e                	sw	s3,12(sp)
1c00b91c:	c452                	sw	s4,8(sp)
1c00b91e:	ce06                	sw	ra,28(sp)
1c00b920:	8a2a                	mv	s4,a0
1c00b922:	89ae                	mv	s3,a1
1c00b924:	8932                	mv	s2,a2
1c00b926:	4401                	li	s0,0
1c00b928:	60000493          	li	s1,1536
1c00b92c:	00890633          	add	a2,s2,s0
1c00b930:	008985b3          	add	a1,s3,s0
1c00b934:	008a0533          	add	a0,s4,s0
1c00b938:	20040413          	addi	s0,s0,512
1c00b93c:	3de5                	jal	1c00b834 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b93e:	fe9417e3          	bne	s0,s1,1c00b92c <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00b942:	40f2                	lw	ra,28(sp)
1c00b944:	4462                	lw	s0,24(sp)
1c00b946:	44d2                	lw	s1,20(sp)
1c00b948:	4942                	lw	s2,16(sp)
1c00b94a:	49b2                	lw	s3,12(sp)
1c00b94c:	4a22                	lw	s4,8(sp)
1c00b94e:	6105                	addi	sp,sp,32
1c00b950:	8082                	ret

1c00b952 <randombytes>:
1c00b952:	26058d63          	beqz	a1,1c00bbcc <randombytes+0x27a>
1c00b956:	1c0046b7          	lui	a3,0x1c004
1c00b95a:	7139                	addi	sp,sp,-64
1c00b95c:	35468693          	addi	a3,a3,852 # 1c004354 <outleft>
1c00b960:	da4a                	sw	s2,52(sp)
1c00b962:	d84e                	sw	s3,48(sp)
1c00b964:	95aa                	add	a1,a1,a0
1c00b966:	1c004737          	lui	a4,0x1c004
1c00b96a:	1c0049b7          	lui	s3,0x1c004
1c00b96e:	9e378937          	lui	s2,0x9e378
1c00b972:	429c                	lw	a5,0(a3)
1c00b974:	d652                	sw	s4,44(sp)
1c00b976:	d456                	sw	s5,40(sp)
1c00b978:	de22                	sw	s0,60(sp)
1c00b97a:	dc26                	sw	s1,56(sp)
1c00b97c:	d25a                	sw	s6,36(sp)
1c00b97e:	d05e                	sw	s7,32(sp)
1c00b980:	ce62                	sw	s8,28(sp)
1c00b982:	cc66                	sw	s9,24(sp)
1c00b984:	ca6a                	sw	s10,20(sp)
1c00b986:	c86e                	sw	s11,16(sp)
1c00b988:	8aaa                	mv	s5,a0
1c00b98a:	c62e                	sw	a1,12(sp)
1c00b98c:	33070a13          	addi	s4,a4,816 # 1c004330 <out>
1c00b990:	30098993          	addi	s3,s3,768 # 1c004300 <stack>
1c00b994:	9b990913          	addi	s2,s2,-1607 # 9e3779b9 <pulp__FC+0x9e3779ba>
1c00b998:	cf9d                	beqz	a5,1c00b9d6 <randombytes+0x84>
1c00b99a:	17fd                	addi	a5,a5,-1
1c00b99c:	00279713          	slli	a4,a5,0x2
1c00b9a0:	9752                	add	a4,a4,s4
1c00b9a2:	4318                	lw	a4,0(a4)
1c00b9a4:	1c0046b7          	lui	a3,0x1c004
1c00b9a8:	00ea8023          	sb	a4,0(s5)
1c00b9ac:	35468693          	addi	a3,a3,852 # 1c004354 <outleft>
1c00b9b0:	4732                	lw	a4,12(sp)
1c00b9b2:	c29c                	sw	a5,0(a3)
1c00b9b4:	0a85                	addi	s5,s5,1
1c00b9b6:	feea91e3          	bne	s5,a4,1c00b998 <randombytes+0x46>
1c00b9ba:	5472                	lw	s0,60(sp)
1c00b9bc:	54e2                	lw	s1,56(sp)
1c00b9be:	5952                	lw	s2,52(sp)
1c00b9c0:	59c2                	lw	s3,48(sp)
1c00b9c2:	5a32                	lw	s4,44(sp)
1c00b9c4:	5aa2                	lw	s5,40(sp)
1c00b9c6:	5b12                	lw	s6,36(sp)
1c00b9c8:	5b82                	lw	s7,32(sp)
1c00b9ca:	4c72                	lw	s8,28(sp)
1c00b9cc:	4ce2                	lw	s9,24(sp)
1c00b9ce:	4d52                	lw	s10,20(sp)
1c00b9d0:	4dc2                	lw	s11,16(sp)
1c00b9d2:	6121                	addi	sp,sp,64
1c00b9d4:	8082                	ret
1c00b9d6:	0009a583          	lw	a1,0(s3)
1c00b9da:	0049a283          	lw	t0,4(s3)
1c00b9de:	0585                	addi	a1,a1,1
1c00b9e0:	00b9a023          	sw	a1,0(s3)
1c00b9e4:	0089a383          	lw	t2,8(s3)
1c00b9e8:	00c9a403          	lw	s0,12(s3)
1c00b9ec:	e999                	bnez	a1,1c00ba02 <randombytes+0xb0>
1c00b9ee:	0285                	addi	t0,t0,1
1c00b9f0:	0059a223          	sw	t0,4(s3)
1c00b9f4:	00029763          	bnez	t0,1c00ba02 <randombytes+0xb0>
1c00b9f8:	0385                	addi	t2,t2,1
1c00b9fa:	0079a423          	sw	t2,8(s3)
1c00b9fe:	1c038363          	beqz	t2,1c00bbc4 <randombytes+0x272>
1c00ba02:	0109af83          	lw	t6,16(s3)
1c00ba06:	0149af03          	lw	t5,20(s3)
1c00ba0a:	0189ae83          	lw	t4,24(s3)
1c00ba0e:	01c9ae03          	lw	t3,28(s3)
1c00ba12:	0209a303          	lw	t1,32(s3)
1c00ba16:	0249a883          	lw	a7,36(s3)
1c00ba1a:	0289a803          	lw	a6,40(s3)
1c00ba1e:	02c9a503          	lw	a0,44(s3)
1c00ba22:	478d                	li	a5,3
1c00ba24:	470d                	li	a4,3
1c00ba26:	c23e                	sw	a5,4(sp)
1c00ba28:	0095c593          	xori	a1,a1,9
1c00ba2c:	0072c293          	xori	t0,t0,7
1c00ba30:	0093c393          	xori	t2,t2,9
1c00ba34:	00344413          	xori	s0,s0,3
1c00ba38:	002fcf93          	xori	t6,t6,2
1c00ba3c:	003f4f13          	xori	t5,t5,3
1c00ba40:	008ece93          	xori	t4,t4,8
1c00ba44:	004e4e13          	xori	t3,t3,4
1c00ba48:	00634313          	xori	t1,t1,6
1c00ba4c:	0028c893          	xori	a7,a7,2
1c00ba50:	00684813          	xori	a6,a6,6
1c00ba54:	00454513          	xori	a0,a0,4
1c00ba58:	4b15                	li	s6,5
1c00ba5a:	4ba5                	li	s7,9
1c00ba5c:	4c1d                	li	s8,7
1c00ba5e:	4c89                	li	s9,2
1c00ba60:	4d0d                	li	s10,3
1c00ba62:	4da1                	li	s11,8
1c00ba64:	c43a                	sw	a4,8(sp)
1c00ba66:	4781                	li	a5,0
1c00ba68:	e377a737          	lui	a4,0xe377a
1c00ba6c:	b9070713          	addi	a4,a4,-1136 # e3779b90 <pulp__FC+0xe3779b91>
1c00ba70:	00e784b3          	add	s1,a5,a4
1c00ba74:	97ca                	add	a5,a5,s2
1c00ba76:	01b55613          	srli	a2,a0,0x1b
1c00ba7a:	00354713          	xori	a4,a0,3
1c00ba7e:	00551693          	slli	a3,a0,0x5
1c00ba82:	8ed1                	or	a3,a3,a2
1c00ba84:	973e                	add	a4,a4,a5
1c00ba86:	8f35                	xor	a4,a4,a3
1c00ba88:	95ba                	add	a1,a1,a4
1c00ba8a:	0195d613          	srli	a2,a1,0x19
1c00ba8e:	0015c713          	xori	a4,a1,1
1c00ba92:	00759693          	slli	a3,a1,0x7
1c00ba96:	8ed1                	or	a3,a3,a2
1c00ba98:	973e                	add	a4,a4,a5
1c00ba9a:	8f35                	xor	a4,a4,a3
1c00ba9c:	92ba                	add	t0,t0,a4
1c00ba9e:	0172d613          	srli	a2,t0,0x17
1c00baa2:	0042c713          	xori	a4,t0,4
1c00baa6:	00929693          	slli	a3,t0,0x9
1c00baaa:	8ed1                	or	a3,a3,a2
1c00baac:	973e                	add	a4,a4,a5
1c00baae:	8f35                	xor	a4,a4,a3
1c00bab0:	93ba                	add	t2,t2,a4
1c00bab2:	0133d613          	srli	a2,t2,0x13
1c00bab6:	0013c713          	xori	a4,t2,1
1c00baba:	00d39693          	slli	a3,t2,0xd
1c00babe:	8ed1                	or	a3,a3,a2
1c00bac0:	973e                	add	a4,a4,a5
1c00bac2:	8f35                	xor	a4,a4,a3
1c00bac4:	943a                	add	s0,s0,a4
1c00bac6:	01b45613          	srli	a2,s0,0x1b
1c00baca:	00544713          	xori	a4,s0,5
1c00bace:	00541693          	slli	a3,s0,0x5
1c00bad2:	8ed1                	or	a3,a3,a2
1c00bad4:	973e                	add	a4,a4,a5
1c00bad6:	8f35                	xor	a4,a4,a3
1c00bad8:	9fba                	add	t6,t6,a4
1c00bada:	019fd613          	srli	a2,t6,0x19
1c00bade:	009fc713          	xori	a4,t6,9
1c00bae2:	007f9693          	slli	a3,t6,0x7
1c00bae6:	8ed1                	or	a3,a3,a2
1c00bae8:	973e                	add	a4,a4,a5
1c00baea:	8f35                	xor	a4,a4,a3
1c00baec:	9f3a                	add	t5,t5,a4
1c00baee:	017f5613          	srli	a2,t5,0x17
1c00baf2:	002f4713          	xori	a4,t5,2
1c00baf6:	009f1693          	slli	a3,t5,0x9
1c00bafa:	8ed1                	or	a3,a3,a2
1c00bafc:	973e                	add	a4,a4,a5
1c00bafe:	8f35                	xor	a4,a4,a3
1c00bb00:	9eba                	add	t4,t4,a4
1c00bb02:	013ed613          	srli	a2,t4,0x13
1c00bb06:	006ec713          	xori	a4,t4,6
1c00bb0a:	00de9693          	slli	a3,t4,0xd
1c00bb0e:	8ed1                	or	a3,a3,a2
1c00bb10:	973e                	add	a4,a4,a5
1c00bb12:	8f35                	xor	a4,a4,a3
1c00bb14:	9e3a                	add	t3,t3,a4
1c00bb16:	01be5613          	srli	a2,t3,0x1b
1c00bb1a:	005e4713          	xori	a4,t3,5
1c00bb1e:	005e1693          	slli	a3,t3,0x5
1c00bb22:	8ed1                	or	a3,a3,a2
1c00bb24:	973e                	add	a4,a4,a5
1c00bb26:	8f35                	xor	a4,a4,a3
1c00bb28:	933a                	add	t1,t1,a4
1c00bb2a:	01935613          	srli	a2,t1,0x19
1c00bb2e:	00334713          	xori	a4,t1,3
1c00bb32:	00731693          	slli	a3,t1,0x7
1c00bb36:	8ed1                	or	a3,a3,a2
1c00bb38:	973e                	add	a4,a4,a5
1c00bb3a:	8f35                	xor	a4,a4,a3
1c00bb3c:	98ba                	add	a7,a7,a4
1c00bb3e:	0178d613          	srli	a2,a7,0x17
1c00bb42:	0058c713          	xori	a4,a7,5
1c00bb46:	00989693          	slli	a3,a7,0x9
1c00bb4a:	8ed1                	or	a3,a3,a2
1c00bb4c:	973e                	add	a4,a4,a5
1c00bb4e:	8f35                	xor	a4,a4,a3
1c00bb50:	983a                	add	a6,a6,a4
1c00bb52:	00884713          	xori	a4,a6,8
1c00bb56:	00d81693          	slli	a3,a6,0xd
1c00bb5a:	01385613          	srli	a2,a6,0x13
1c00bb5e:	973e                	add	a4,a4,a5
1c00bb60:	8ed1                	or	a3,a3,a2
1c00bb62:	8f35                	xor	a4,a4,a3
1c00bb64:	953a                	add	a0,a0,a4
1c00bb66:	f09797e3          	bne	a5,s1,1c00ba74 <randombytes+0x122>
1c00bb6a:	4692                	lw	a3,4(sp)
1c00bb6c:	4722                	lw	a4,8(sp)
1c00bb6e:	01f6c6b3          	xor	a3,a3,t6
1c00bb72:	c236                	sw	a3,4(sp)
1c00bb74:	01e74733          	xor	a4,a4,t5
1c00bb78:	c6ef36b7          	lui	a3,0xc6ef3
1c00bb7c:	c43a                	sw	a4,8(sp)
1c00bb7e:	72068693          	addi	a3,a3,1824 # c6ef3720 <pulp__FC+0xc6ef3721>
1c00bb82:	01ddcdb3          	xor	s11,s11,t4
1c00bb86:	01cd4d33          	xor	s10,s10,t3
1c00bb8a:	006cccb3          	xor	s9,s9,t1
1c00bb8e:	011c4c33          	xor	s8,s8,a7
1c00bb92:	010bcbb3          	xor	s7,s7,a6
1c00bb96:	00ab4b33          	xor	s6,s6,a0
1c00bb9a:	ecd797e3          	bne	a5,a3,1c00ba68 <randombytes+0x116>
1c00bb9e:	4792                	lw	a5,4(sp)
1c00bba0:	00ea2223          	sw	a4,4(s4)
1c00bba4:	00fa2023          	sw	a5,0(s4)
1c00bba8:	01ba2423          	sw	s11,8(s4)
1c00bbac:	01aa2623          	sw	s10,12(s4)
1c00bbb0:	019a2823          	sw	s9,16(s4)
1c00bbb4:	018a2a23          	sw	s8,20(s4)
1c00bbb8:	017a2c23          	sw	s7,24(s4)
1c00bbbc:	016a2e23          	sw	s6,28(s4)
1c00bbc0:	479d                	li	a5,7
1c00bbc2:	bbe9                	j	1c00b99c <randombytes+0x4a>
1c00bbc4:	0405                	addi	s0,s0,1
1c00bbc6:	0089a623          	sw	s0,12(s3)
1c00bbca:	bd25                	j	1c00ba02 <randombytes+0xb0>
1c00bbcc:	8082                	ret

1c00bbce <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00bbce:	777d                	lui	a4,0xfffff
1c00bbd0:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00bbd4:	02f507b3          	mul	a5,a0,a5
1c00bbd8:	07c2                	slli	a5,a5,0x10
1c00bbda:	2ff70713          	addi	a4,a4,767
1c00bbde:	87c1                	srai	a5,a5,0x10
1c00bbe0:	02e787b3          	mul	a5,a5,a4
1c00bbe4:	953e                	add	a0,a0,a5
1c00bbe6:	8541                	srai	a0,a0,0x10
1c00bbe8:	0542                	slli	a0,a0,0x10
1c00bbea:	8541                	srai	a0,a0,0x10
1c00bbec:	8082                	ret

1c00bbee <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00bbee:	6795                	lui	a5,0x5
1c00bbf0:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00bbf4:	02f507b3          	mul	a5,a0,a5
1c00bbf8:	02000737          	lui	a4,0x2000
1c00bbfc:	97ba                	add	a5,a5,a4
1c00bbfe:	6705                	lui	a4,0x1
1c00bc00:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00bc04:	87e9                	srai	a5,a5,0x1a
1c00bc06:	02e787b3          	mul	a5,a5,a4
1c00bc0a:	8d1d                	sub	a0,a0,a5
1c00bc0c:	0542                	slli	a0,a0,0x10
1c00bc0e:	8541                	srai	a0,a0,0x10
1c00bc10:	8082                	ret

1c00bc12 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00bc12:	7139                	addi	sp,sp,-64
1c00bc14:	da26                	sw	s1,52(sp)
1c00bc16:	d84a                	sw	s2,48(sp)
1c00bc18:	84b2                	mv	s1,a2
1c00bc1a:	892a                	mv	s2,a0
1c00bc1c:	02000613          	li	a2,32
1c00bc20:	0068                	addi	a0,sp,12
1c00bc22:	de06                	sw	ra,60(sp)
1c00bc24:	dc22                	sw	s0,56(sp)
1c00bc26:	8436                	mv	s0,a3
1c00bc28:	2049                	jal	1c00bcaa <memcpy>
1c00bc2a:	006c                	addi	a1,sp,12
1c00bc2c:	854a                	mv	a0,s2
1c00bc2e:	02200613          	li	a2,34
1c00bc32:	02910623          	sb	s1,44(sp)
1c00bc36:	028106a3          	sb	s0,45(sp)
1c00bc3a:	ca6fe0ef          	jal	ra,1c00a0e0 <shake128_absorb>
1c00bc3e:	50f2                	lw	ra,60(sp)
1c00bc40:	5462                	lw	s0,56(sp)
1c00bc42:	54d2                	lw	s1,52(sp)
1c00bc44:	5942                	lw	s2,48(sp)
1c00bc46:	6121                	addi	sp,sp,64
1c00bc48:	8082                	ret

1c00bc4a <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00bc4a:	7139                	addi	sp,sp,-64
1c00bc4c:	87b2                	mv	a5,a2
1c00bc4e:	da26                	sw	s1,52(sp)
1c00bc50:	d84a                	sw	s2,48(sp)
1c00bc52:	84aa                	mv	s1,a0
1c00bc54:	892e                	mv	s2,a1
1c00bc56:	02000613          	li	a2,32
1c00bc5a:	85be                	mv	a1,a5
1c00bc5c:	0068                	addi	a0,sp,12
1c00bc5e:	de06                	sw	ra,60(sp)
1c00bc60:	dc22                	sw	s0,56(sp)
1c00bc62:	8436                	mv	s0,a3
1c00bc64:	2099                	jal	1c00bcaa <memcpy>
1c00bc66:	0070                	addi	a2,sp,12
1c00bc68:	85ca                	mv	a1,s2
1c00bc6a:	8526                	mv	a0,s1
1c00bc6c:	02100693          	li	a3,33
1c00bc70:	02810623          	sb	s0,44(sp)
1c00bc74:	f08fe0ef          	jal	ra,1c00a37c <shake256>
1c00bc78:	50f2                	lw	ra,60(sp)
1c00bc7a:	5462                	lw	s0,56(sp)
1c00bc7c:	54d2                	lw	s1,52(sp)
1c00bc7e:	5942                	lw	s2,48(sp)
1c00bc80:	6121                	addi	sp,sp,64
1c00bc82:	8082                	ret

1c00bc84 <pos_wait_forever>:
1c00bc84:	f14027f3          	csrr	a5,mhartid
1c00bc88:	8795                	srai	a5,a5,0x5
1c00bc8a:	03f7f793          	andi	a5,a5,63
1c00bc8e:	477d                	li	a4,31
1c00bc90:	00e78363          	beq	a5,a4,1c00bc96 <pos_wait_forever+0x12>
1c00bc94:	a001                	j	1c00bc94 <pos_wait_forever+0x10>
1c00bc96:	1a10a7b7          	lui	a5,0x1a10a
1c00bc9a:	577d                	li	a4,-1
1c00bc9c:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00bca0:	10500073          	wfi
1c00bca4:	10500073          	wfi
1c00bca8:	bfe5                	j	1c00bca0 <pos_wait_forever+0x1c>

1c00bcaa <memcpy>:
1c00bcaa:	00b567b3          	or	a5,a0,a1
1c00bcae:	8b8d                	andi	a5,a5,3
1c00bcb0:	10078f63          	beqz	a5,1c00bdce <memcpy+0x124>
1c00bcb4:	14060063          	beqz	a2,1c00bdf4 <memcpy+0x14a>
1c00bcb8:	00458793          	addi	a5,a1,4
1c00bcbc:	00450693          	addi	a3,a0,4
1c00bcc0:	00f537b3          	sltu	a5,a0,a5
1c00bcc4:	00d5b6b3          	sltu	a3,a1,a3
1c00bcc8:	0017c793          	xori	a5,a5,1
1c00bccc:	0016c693          	xori	a3,a3,1
1c00bcd0:	873e                	mv	a4,a5
1c00bcd2:	87b6                	mv	a5,a3
1c00bcd4:	8fd9                	or	a5,a5,a4
1c00bcd6:	0ff7f793          	andi	a5,a5,255
1c00bcda:	cff9                	beqz	a5,1c00bdb8 <memcpy+0x10e>
1c00bcdc:	00863793          	sltiu	a5,a2,8
1c00bce0:	0017c793          	xori	a5,a5,1
1c00bce4:	0ff7f793          	andi	a5,a5,255
1c00bce8:	cbe1                	beqz	a5,1c00bdb8 <memcpy+0x10e>
1c00bcea:	40b007b3          	neg	a5,a1
1c00bcee:	8b8d                	andi	a5,a5,3
1c00bcf0:	fff60313          	addi	t1,a2,-1
1c00bcf4:	cfe5                	beqz	a5,1c00bdec <memcpy+0x142>
1c00bcf6:	0005c683          	lbu	a3,0(a1)
1c00bcfa:	4705                	li	a4,1
1c00bcfc:	00d50023          	sb	a3,0(a0)
1c00bd00:	00158893          	addi	a7,a1,1
1c00bd04:	00150813          	addi	a6,a0,1
1c00bd08:	02e78963          	beq	a5,a4,1c00bd3a <memcpy+0x90>
1c00bd0c:	0015c683          	lbu	a3,1(a1)
1c00bd10:	470d                	li	a4,3
1c00bd12:	00d500a3          	sb	a3,1(a0)
1c00bd16:	00258893          	addi	a7,a1,2
1c00bd1a:	00250813          	addi	a6,a0,2
1c00bd1e:	ffe60313          	addi	t1,a2,-2
1c00bd22:	00e79c63          	bne	a5,a4,1c00bd3a <memcpy+0x90>
1c00bd26:	0025c703          	lbu	a4,2(a1)
1c00bd2a:	00358893          	addi	a7,a1,3
1c00bd2e:	00350813          	addi	a6,a0,3
1c00bd32:	00e50123          	sb	a4,2(a0)
1c00bd36:	ffd60313          	addi	t1,a2,-3
1c00bd3a:	8e1d                	sub	a2,a2,a5
1c00bd3c:	95be                	add	a1,a1,a5
1c00bd3e:	00265e13          	srli	t3,a2,0x2
1c00bd42:	97aa                	add	a5,a5,a0
1c00bd44:	4701                	li	a4,0
1c00bd46:	4194                	lw	a3,0(a1)
1c00bd48:	0705                	addi	a4,a4,1
1c00bd4a:	c394                	sw	a3,0(a5)
1c00bd4c:	0591                	addi	a1,a1,4
1c00bd4e:	0791                	addi	a5,a5,4
1c00bd50:	ffc76be3          	bltu	a4,t3,1c00bd46 <memcpy+0x9c>
1c00bd54:	ffc67593          	andi	a1,a2,-4
1c00bd58:	40b306b3          	sub	a3,t1,a1
1c00bd5c:	00b807b3          	add	a5,a6,a1
1c00bd60:	00b88733          	add	a4,a7,a1
1c00bd64:	06b60463          	beq	a2,a1,1c00bdcc <memcpy+0x122>
1c00bd68:	00074583          	lbu	a1,0(a4)
1c00bd6c:	fff68613          	addi	a2,a3,-1
1c00bd70:	00b78023          	sb	a1,0(a5)
1c00bd74:	ce21                	beqz	a2,1c00bdcc <memcpy+0x122>
1c00bd76:	00174583          	lbu	a1,1(a4)
1c00bd7a:	ffe68613          	addi	a2,a3,-2
1c00bd7e:	00b780a3          	sb	a1,1(a5)
1c00bd82:	c629                	beqz	a2,1c00bdcc <memcpy+0x122>
1c00bd84:	00274583          	lbu	a1,2(a4)
1c00bd88:	ffd68613          	addi	a2,a3,-3
1c00bd8c:	00b78123          	sb	a1,2(a5)
1c00bd90:	ce15                	beqz	a2,1c00bdcc <memcpy+0x122>
1c00bd92:	00374583          	lbu	a1,3(a4)
1c00bd96:	ffc68613          	addi	a2,a3,-4
1c00bd9a:	00b781a3          	sb	a1,3(a5)
1c00bd9e:	c61d                	beqz	a2,1c00bdcc <memcpy+0x122>
1c00bda0:	00474583          	lbu	a1,4(a4)
1c00bda4:	4615                	li	a2,5
1c00bda6:	00b78223          	sb	a1,4(a5)
1c00bdaa:	02c68163          	beq	a3,a2,1c00bdcc <memcpy+0x122>
1c00bdae:	00574703          	lbu	a4,5(a4)
1c00bdb2:	00e782a3          	sb	a4,5(a5)
1c00bdb6:	8082                	ret
1c00bdb8:	962e                	add	a2,a2,a1
1c00bdba:	87aa                	mv	a5,a0
1c00bdbc:	0585                	addi	a1,a1,1
1c00bdbe:	fff5c703          	lbu	a4,-1(a1)
1c00bdc2:	0785                	addi	a5,a5,1
1c00bdc4:	fee78fa3          	sb	a4,-1(a5)
1c00bdc8:	fec59ae3          	bne	a1,a2,1c00bdbc <memcpy+0x112>
1c00bdcc:	8082                	ret
1c00bdce:	00367793          	andi	a5,a2,3
1c00bdd2:	ee0793e3          	bnez	a5,1c00bcb8 <memcpy+0xe>
1c00bdd6:	da7d                	beqz	a2,1c00bdcc <memcpy+0x122>
1c00bdd8:	87aa                	mv	a5,a0
1c00bdda:	0591                	addi	a1,a1,4
1c00bddc:	ffc5a703          	lw	a4,-4(a1)
1c00bde0:	0791                	addi	a5,a5,4
1c00bde2:	fee7ae23          	sw	a4,-4(a5)
1c00bde6:	1671                	addi	a2,a2,-4
1c00bde8:	fa6d                	bnez	a2,1c00bdda <memcpy+0x130>
1c00bdea:	8082                	ret
1c00bdec:	88ae                	mv	a7,a1
1c00bdee:	882a                	mv	a6,a0
1c00bdf0:	8332                	mv	t1,a2
1c00bdf2:	b7a1                	j	1c00bd3a <memcpy+0x90>
1c00bdf4:	8082                	ret

1c00bdf6 <puts>:
1c00bdf6:	00054783          	lbu	a5,0(a0)
1c00bdfa:	c78d                	beqz	a5,1c00be24 <puts+0x2e>
1c00bdfc:	f14026f3          	csrr	a3,mhartid
1c00be00:	00369713          	slli	a4,a3,0x3
1c00be04:	1a10f637          	lui	a2,0x1a10f
1c00be08:	0ff77713          	andi	a4,a4,255
1c00be0c:	9732                	add	a4,a4,a2
1c00be0e:	6609                	lui	a2,0x2
1c00be10:	068a                	slli	a3,a3,0x2
1c00be12:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00be16:	8ef1                	and	a3,a3,a2
1c00be18:	9736                	add	a4,a4,a3
1c00be1a:	c31c                	sw	a5,0(a4)
1c00be1c:	0505                	addi	a0,a0,1
1c00be1e:	00054783          	lbu	a5,0(a0)
1c00be22:	ffe5                	bnez	a5,1c00be1a <puts+0x24>
1c00be24:	f1402773          	csrr	a4,mhartid
1c00be28:	00371793          	slli	a5,a4,0x3
1c00be2c:	1a10f6b7          	lui	a3,0x1a10f
1c00be30:	0ff7f793          	andi	a5,a5,255
1c00be34:	97b6                	add	a5,a5,a3
1c00be36:	6689                	lui	a3,0x2
1c00be38:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00be3c:	070a                	slli	a4,a4,0x2
1c00be3e:	8f75                	and	a4,a4,a3
1c00be40:	97ba                	add	a5,a5,a4
1c00be42:	4729                	li	a4,10
1c00be44:	c398                	sw	a4,0(a5)
1c00be46:	4501                	li	a0,0
1c00be48:	8082                	ret

1c00be4a <exit>:
1c00be4a:	800007b7          	lui	a5,0x80000
1c00be4e:	1141                	addi	sp,sp,-16
1c00be50:	8d5d                	or	a0,a0,a5
1c00be52:	c606                	sw	ra,12(sp)
1c00be54:	1a1047b7          	lui	a5,0x1a104
1c00be58:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00be5c:	3525                	jal	1c00bc84 <pos_wait_forever>

1c00be5e <pos_io_start>:
1c00be5e:	4501                	li	a0,0
1c00be60:	8082                	ret

1c00be62 <pos_io_stop>:
1c00be62:	4501                	li	a0,0
1c00be64:	8082                	ret

1c00be66 <pos_init_start>:
1c00be66:	1141                	addi	sp,sp,-16
1c00be68:	c422                	sw	s0,8(sp)
1c00be6a:	1c000437          	lui	s0,0x1c000
1c00be6e:	c606                	sw	ra,12(sp)
1c00be70:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00be74:	c56fc0ef          	jal	ra,1c0082ca <pos_soc_init>
1c00be78:	2265                	jal	1c00c020 <pos_irq_init>
1c00be7a:	2ad1                	jal	1c00c04e <pos_soc_event_init>
1c00be7c:	2a21                	jal	1c00bf94 <pos_allocs_init>
1c00be7e:	405c                	lw	a5,4(s0)
1c00be80:	c791                	beqz	a5,1c00be8c <pos_init_start+0x26>
1c00be82:	0411                	addi	s0,s0,4
1c00be84:	0411                	addi	s0,s0,4
1c00be86:	9782                	jalr	a5
1c00be88:	401c                	lw	a5,0(s0)
1c00be8a:	ffed                	bnez	a5,1c00be84 <pos_init_start+0x1e>
1c00be8c:	3fc9                	jal	1c00be5e <pos_io_start>
1c00be8e:	300467f3          	csrrsi	a5,mstatus,8
1c00be92:	40b2                	lw	ra,12(sp)
1c00be94:	4422                	lw	s0,8(sp)
1c00be96:	0141                	addi	sp,sp,16
1c00be98:	8082                	ret

1c00be9a <pos_init_stop>:
1c00be9a:	1141                	addi	sp,sp,-16
1c00be9c:	c422                	sw	s0,8(sp)
1c00be9e:	1c000437          	lui	s0,0x1c000
1c00bea2:	c606                	sw	ra,12(sp)
1c00bea4:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00bea8:	3f6d                	jal	1c00be62 <pos_io_stop>
1c00beaa:	405c                	lw	a5,4(s0)
1c00beac:	c791                	beqz	a5,1c00beb8 <pos_init_stop+0x1e>
1c00beae:	0411                	addi	s0,s0,4
1c00beb0:	0411                	addi	s0,s0,4
1c00beb2:	9782                	jalr	a5
1c00beb4:	401c                	lw	a5,0(s0)
1c00beb6:	ffed                	bnez	a5,1c00beb0 <pos_init_stop+0x16>
1c00beb8:	40b2                	lw	ra,12(sp)
1c00beba:	4422                	lw	s0,8(sp)
1c00bebc:	0141                	addi	sp,sp,16
1c00bebe:	8082                	ret

1c00bec0 <pos_alloc_init>:
1c00bec0:	00758793          	addi	a5,a1,7
1c00bec4:	9be1                	andi	a5,a5,-8
1c00bec6:	40b785b3          	sub	a1,a5,a1
1c00beca:	c11c                	sw	a5,0(a0)
1c00becc:	8e0d                	sub	a2,a2,a1
1c00bece:	00c05663          	blez	a2,1c00beda <pos_alloc_init+0x1a>
1c00bed2:	9a61                	andi	a2,a2,-8
1c00bed4:	c390                	sw	a2,0(a5)
1c00bed6:	0007a223          	sw	zero,4(a5)
1c00beda:	8082                	ret

1c00bedc <pos_alloc>:
1c00bedc:	4110                	lw	a2,0(a0)
1c00bede:	059d                	addi	a1,a1,7
1c00bee0:	99e1                	andi	a1,a1,-8
1c00bee2:	ca31                	beqz	a2,1c00bf36 <pos_alloc+0x5a>
1c00bee4:	4218                	lw	a4,0(a2)
1c00bee6:	425c                	lw	a5,4(a2)
1c00bee8:	02b75963          	ble	a1,a4,1c00bf1a <pos_alloc+0x3e>
1c00beec:	cb81                	beqz	a5,1c00befc <pos_alloc+0x20>
1c00beee:	4398                	lw	a4,0(a5)
1c00bef0:	43d4                	lw	a3,4(a5)
1c00bef2:	00b75763          	ble	a1,a4,1c00bf00 <pos_alloc+0x24>
1c00bef6:	863e                	mv	a2,a5
1c00bef8:	87b6                	mv	a5,a3
1c00befa:	fbf5                	bnez	a5,1c00beee <pos_alloc+0x12>
1c00befc:	853e                	mv	a0,a5
1c00befe:	8082                	ret
1c00bf00:	00b70a63          	beq	a4,a1,1c00bf14 <pos_alloc+0x38>
1c00bf04:	00b78533          	add	a0,a5,a1
1c00bf08:	8f0d                	sub	a4,a4,a1
1c00bf0a:	c118                	sw	a4,0(a0)
1c00bf0c:	c154                	sw	a3,4(a0)
1c00bf0e:	c248                	sw	a0,4(a2)
1c00bf10:	853e                	mv	a0,a5
1c00bf12:	8082                	ret
1c00bf14:	c254                	sw	a3,4(a2)
1c00bf16:	853e                	mv	a0,a5
1c00bf18:	8082                	ret
1c00bf1a:	00e58b63          	beq	a1,a4,1c00bf30 <pos_alloc+0x54>
1c00bf1e:	00b606b3          	add	a3,a2,a1
1c00bf22:	8f0d                	sub	a4,a4,a1
1c00bf24:	c2dc                	sw	a5,4(a3)
1c00bf26:	c298                	sw	a4,0(a3)
1c00bf28:	87b2                	mv	a5,a2
1c00bf2a:	c114                	sw	a3,0(a0)
1c00bf2c:	853e                	mv	a0,a5
1c00bf2e:	8082                	ret
1c00bf30:	c11c                	sw	a5,0(a0)
1c00bf32:	87b2                	mv	a5,a2
1c00bf34:	b7e1                	j	1c00befc <pos_alloc+0x20>
1c00bf36:	4781                	li	a5,0
1c00bf38:	b7d1                	j	1c00befc <pos_alloc+0x20>

1c00bf3a <pos_free>:
1c00bf3a:	4118                	lw	a4,0(a0)
1c00bf3c:	061d                	addi	a2,a2,7
1c00bf3e:	9a61                	andi	a2,a2,-8
1c00bf40:	c729                	beqz	a4,1c00bf8a <pos_free+0x50>
1c00bf42:	00b76663          	bltu	a4,a1,1c00bf4e <pos_free+0x14>
1c00bf46:	a0a1                	j	1c00bf8e <pos_free+0x54>
1c00bf48:	00b7f563          	bleu	a1,a5,1c00bf52 <pos_free+0x18>
1c00bf4c:	873e                	mv	a4,a5
1c00bf4e:	435c                	lw	a5,4(a4)
1c00bf50:	ffe5                	bnez	a5,1c00bf48 <pos_free+0xe>
1c00bf52:	00c586b3          	add	a3,a1,a2
1c00bf56:	02d78463          	beq	a5,a3,1c00bf7e <pos_free+0x44>
1c00bf5a:	c190                	sw	a2,0(a1)
1c00bf5c:	c1dc                	sw	a5,4(a1)
1c00bf5e:	cf11                	beqz	a4,1c00bf7a <pos_free+0x40>
1c00bf60:	431c                	lw	a5,0(a4)
1c00bf62:	00f706b3          	add	a3,a4,a5
1c00bf66:	00d58463          	beq	a1,a3,1c00bf6e <pos_free+0x34>
1c00bf6a:	c34c                	sw	a1,4(a4)
1c00bf6c:	8082                	ret
1c00bf6e:	4194                	lw	a3,0(a1)
1c00bf70:	41d0                	lw	a2,4(a1)
1c00bf72:	97b6                	add	a5,a5,a3
1c00bf74:	c31c                	sw	a5,0(a4)
1c00bf76:	c350                	sw	a2,4(a4)
1c00bf78:	8082                	ret
1c00bf7a:	c10c                	sw	a1,0(a0)
1c00bf7c:	8082                	ret
1c00bf7e:	4394                	lw	a3,0(a5)
1c00bf80:	43dc                	lw	a5,4(a5)
1c00bf82:	9636                	add	a2,a2,a3
1c00bf84:	c190                	sw	a2,0(a1)
1c00bf86:	c1dc                	sw	a5,4(a1)
1c00bf88:	bfd9                	j	1c00bf5e <pos_free+0x24>
1c00bf8a:	4781                	li	a5,0
1c00bf8c:	b7d9                	j	1c00bf52 <pos_free+0x18>
1c00bf8e:	87ba                	mv	a5,a4
1c00bf90:	4701                	li	a4,0
1c00bf92:	b7c1                	j	1c00bf52 <pos_free+0x18>

1c00bf94 <pos_allocs_init>:
1c00bf94:	1141                	addi	sp,sp,-16
1c00bf96:	1c0045b7          	lui	a1,0x1c004
1c00bf9a:	c606                	sw	ra,12(sp)
1c00bf9c:	37858793          	addi	a5,a1,888 # 1c004378 <__l2_priv0_end>
1c00bfa0:	1c008637          	lui	a2,0x1c008
1c00bfa4:	04c7cc63          	blt	a5,a2,1c00bffc <pos_allocs_init+0x68>
1c00bfa8:	4581                	li	a1,0
1c00bfaa:	4601                	li	a2,0
1c00bfac:	1c004537          	lui	a0,0x1c004
1c00bfb0:	36c50513          	addi	a0,a0,876 # 1c00436c <pos_alloc_l2>
1c00bfb4:	3731                	jal	1c00bec0 <pos_alloc_init>
1c00bfb6:	1c00c5b7          	lui	a1,0x1c00c
1c00bfba:	06858793          	addi	a5,a1,104 # 1c00c068 <__l2_priv1_end>
1c00bfbe:	1c010637          	lui	a2,0x1c010
1c00bfc2:	02c7c963          	blt	a5,a2,1c00bff4 <pos_allocs_init+0x60>
1c00bfc6:	4581                	li	a1,0
1c00bfc8:	4601                	li	a2,0
1c00bfca:	1c004537          	lui	a0,0x1c004
1c00bfce:	37050513          	addi	a0,a0,880 # 1c004370 <pos_alloc_l2+0x4>
1c00bfd2:	35fd                	jal	1c00bec0 <pos_alloc_init>
1c00bfd4:	1c0105b7          	lui	a1,0x1c010
1c00bfd8:	00058793          	mv	a5,a1
1c00bfdc:	40b2                	lw	ra,12(sp)
1c00bfde:	1c080637          	lui	a2,0x1c080
1c00bfe2:	1c004537          	lui	a0,0x1c004
1c00bfe6:	8e1d                	sub	a2,a2,a5
1c00bfe8:	00058593          	mv	a1,a1
1c00bfec:	37450513          	addi	a0,a0,884 # 1c004374 <pos_alloc_l2+0x8>
1c00bff0:	0141                	addi	sp,sp,16
1c00bff2:	b5f9                	j	1c00bec0 <pos_alloc_init>
1c00bff4:	8e1d                	sub	a2,a2,a5
1c00bff6:	06858593          	addi	a1,a1,104 # 1c010068 <__l2_shared_end+0x68>
1c00bffa:	bfc1                	j	1c00bfca <pos_allocs_init+0x36>
1c00bffc:	8e1d                	sub	a2,a2,a5
1c00bffe:	37858593          	addi	a1,a1,888
1c00c002:	b76d                	j	1c00bfac <pos_allocs_init+0x18>

1c00c004 <pi_l2_malloc>:
1c00c004:	85aa                	mv	a1,a0
1c00c006:	1c004537          	lui	a0,0x1c004
1c00c00a:	36c50513          	addi	a0,a0,876 # 1c00436c <pos_alloc_l2>
1c00c00e:	b5f9                	j	1c00bedc <pos_alloc>

1c00c010 <pi_l2_free>:
1c00c010:	862e                	mv	a2,a1
1c00c012:	85aa                	mv	a1,a0
1c00c014:	1c004537          	lui	a0,0x1c004
1c00c018:	36c50513          	addi	a0,a0,876 # 1c00436c <pos_alloc_l2>
1c00c01c:	bf39                	j	1c00bf3a <pos_free>

1c00c01e <__rt_handle_illegal_instr>:
1c00c01e:	8082                	ret

1c00c020 <pos_irq_init>:
1c00c020:	1a10a737          	lui	a4,0x1a10a
1c00c024:	f14027f3          	csrr	a5,mhartid
1c00c028:	56fd                	li	a3,-1
1c00c02a:	8795                	srai	a5,a5,0x5
1c00c02c:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00c030:	03f7f793          	andi	a5,a5,63
1c00c034:	477d                	li	a4,31
1c00c036:	00e78363          	beq	a5,a4,1c00c03c <pos_irq_init+0x1c>
1c00c03a:	8082                	ret
1c00c03c:	1c0087b7          	lui	a5,0x1c008
1c00c040:	00078793          	mv	a5,a5
1c00c044:	0017e793          	ori	a5,a5,1
1c00c048:	30579073          	csrw	mtvec,a5
1c00c04c:	8082                	ret

1c00c04e <pos_soc_event_init>:
1c00c04e:	1a1067b7          	lui	a5,0x1a106
1c00c052:	577d                	li	a4,-1
1c00c054:	c3d8                	sw	a4,4(a5)
1c00c056:	c798                	sw	a4,8(a5)
1c00c058:	c7d8                	sw	a4,12(a5)
1c00c05a:	cb98                	sw	a4,16(a5)
1c00c05c:	cbd8                	sw	a4,20(a5)
1c00c05e:	cf98                	sw	a4,24(a5)
1c00c060:	cfd8                	sw	a4,28(a5)
1c00c062:	d398                	sw	a4,32(a5)
1c00c064:	8082                	ret

1c00c066 <_endtext>:
	...
