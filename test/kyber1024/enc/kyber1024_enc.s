riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber1024/enc/build/enc/enc

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber1024/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	6400506f          	j	1c00d640 <__rt_handle_illegal_instr>
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
1c008084:	5bc0506f          	j	1c00d640 <__rt_handle_illegal_instr>

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
1c0080c4:	1a028293          	addi	t0,t0,416 # 1c006260 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	21030313          	addi	t1,t1,528 # 1c0062d8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	18610113          	addi	sp,sp,390 # 1c006260 <stack>
1c0080e2:	3a2050ef          	jal	ra,1c00d484 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	08a38393          	addi	t2,t2,138 # 1c008178 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	3be050ef          	jal	ra,1c00d4ba <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	3d6040ef          	jal	ra,1c00c4d8 <exit>

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

1c008142 <printbytes>:
1c008142:	1141                	addi	sp,sp,-16
1c008144:	c422                	sw	s0,8(sp)
1c008146:	c226                	sw	s1,4(sp)
1c008148:	c04a                	sw	s2,0(sp)
1c00814a:	c606                	sw	ra,12(sp)
1c00814c:	842a                	mv	s0,a0
1c00814e:	00b50933          	add	s2,a0,a1
1c008152:	1c0004b7          	lui	s1,0x1c000
1c008156:	00044583          	lbu	a1,0(s0)
1c00815a:	14448513          	addi	a0,s1,324 # 1c000144 <__DTOR_END__+0x128>
1c00815e:	0405                	addi	s0,s0,1
1c008160:	394040ef          	jal	ra,1c00c4f4 <printf>
1c008164:	ff2419e3          	bne	s0,s2,1c008156 <printbytes+0x14>
1c008168:	4422                	lw	s0,8(sp)
1c00816a:	40b2                	lw	ra,12(sp)
1c00816c:	4492                	lw	s1,4(sp)
1c00816e:	4902                	lw	s2,0(sp)
1c008170:	4529                	li	a0,10
1c008172:	0141                	addi	sp,sp,16
1c008174:	33a0406f          	j	1c00c4ae <putchar>

1c008178 <main>:
1c008178:	81010113          	addi	sp,sp,-2032
1c00817c:	d1a487b7          	lui	a5,0xd1a48
1c008180:	7e112623          	sw	ra,2028(sp)
1c008184:	7e812423          	sw	s0,2024(sp)
1c008188:	7e912223          	sw	s1,2020(sp)
1c00818c:	99778793          	addi	a5,a5,-1641 # d1a47997 <pulp__FC+0xd1a47998>
1c008190:	b8010113          	addi	sp,sp,-1152
1c008194:	64f12023          	sw	a5,1600(sp)
1c008198:	26ec47b7          	lui	a5,0x26ec4
1c00819c:	5fc78793          	addi	a5,a5,1532 # 26ec45fc <__l2_shared_end+0xaeb45fc>
1c0081a0:	64f12223          	sw	a5,1604(sp)
1c0081a4:	9c8b07b7          	lui	a5,0x9c8b0
1c0081a8:	41f78793          	addi	a5,a5,1055 # 9c8b041f <pulp__FC+0x9c8b0420>
1c0081ac:	64f12423          	sw	a5,1608(sp)
1c0081b0:	c938b7b7          	lui	a5,0xc938b
1c0081b4:	a9d78793          	addi	a5,a5,-1379 # c938aa9d <pulp__FC+0xc938aa9e>
1c0081b8:	64f12623          	sw	a5,1612(sp)
1c0081bc:	658b27b7          	lui	a5,0x658b2
1c0081c0:	2ec78793          	addi	a5,a5,748 # 658b22ec <__l2_shared_end+0x498a22ec>
1c0081c4:	64f12823          	sw	a5,1616(sp)
1c0081c8:	5290f7b7          	lui	a5,0x5290f
1c0081cc:	80578793          	addi	a5,a5,-2043 # 5290e805 <__l2_shared_end+0x368fe805>
1c0081d0:	64f12a23          	sw	a5,1620(sp)
1c0081d4:	8684b7b7          	lui	a5,0x8684b
1c0081d8:	32678793          	addi	a5,a5,806 # 8684b326 <pulp__FC+0x8684b327>
1c0081dc:	64f12c23          	sw	a5,1624(sp)
1c0081e0:	c25927b7          	lui	a5,0xc2592
1c0081e4:	08078793          	addi	a5,a5,128 # c2592080 <pulp__FC+0xc2592081>
1c0081e8:	64f12e23          	sw	a5,1628(sp)
1c0081ec:	0196d7b7          	lui	a5,0x196d
1c0081f0:	8c578793          	addi	a5,a5,-1851 # 196c8c5 <__CTOR_LIST__-0x1a69373f>
1c0081f4:	66f12023          	sw	a5,1632(sp)
1c0081f8:	cb3407b7          	lui	a5,0xcb340
1c0081fc:	65678793          	addi	a5,a5,1622 # cb340656 <pulp__FC+0xcb340657>
1c008200:	66f12223          	sw	a5,1636(sp)
1c008204:	31b137b7          	lui	a5,0x31b13
1c008208:	71378793          	addi	a5,a5,1811 # 31b13713 <__l2_shared_end+0x15b03713>
1c00820c:	66f12423          	sw	a5,1640(sp)
1c008210:	481467b7          	lui	a5,0x48146
1c008214:	55378793          	addi	a5,a5,1363 # 48146553 <__l2_shared_end+0x2c136553>
1c008218:	66f12623          	sw	a5,1644(sp)
1c00821c:	5a40c7b7          	lui	a5,0x5a40c
1c008220:	c4278793          	addi	a5,a5,-958 # 5a40bc42 <__l2_shared_end+0x3e3fbc42>
1c008224:	66f12823          	sw	a5,1648(sp)
1c008228:	3c6837b7          	lui	a5,0x3c683
1c00822c:	e2978793          	addi	a5,a5,-471 # 3c682e29 <__l2_shared_end+0x20672e29>
1c008230:	66f12a23          	sw	a5,1652(sp)
1c008234:	4551a7b7          	lui	a5,0x4551a
1c008238:	4af78793          	addi	a5,a5,1199 # 4551a4af <__l2_shared_end+0x2950a4af>
1c00823c:	66f12c23          	sw	a5,1656(sp)
1c008240:	4d5c97b7          	lui	a5,0x4d5c9
1c008244:	42678793          	addi	a5,a5,1062 # 4d5c9426 <__l2_shared_end+0x315b9426>
1c008248:	66f12e23          	sw	a5,1660(sp)
1c00824c:	2aee77b7          	lui	a5,0x2aee7
1c008250:	8fb78793          	addi	a5,a5,-1797 # 2aee68fb <__l2_shared_end+0xeed68fb>
1c008254:	68f12023          	sw	a5,1664(sp)
1c008258:	95b7c7b7          	lui	a5,0x95b7c
1c00825c:	8cd78793          	addi	a5,a5,-1843 # 95b7b8cd <pulp__FC+0x95b7b8ce>
1c008260:	68f12223          	sw	a5,1668(sp)
1c008264:	966687b7          	lui	a5,0x96668
1c008268:	33278793          	addi	a5,a5,818 # 96668332 <pulp__FC+0x96668333>
1c00826c:	68f12423          	sw	a5,1672(sp)
1c008270:	a02537b7          	lui	a5,0xa0253
1c008274:	1d578793          	addi	a5,a5,469 # a02531d5 <pulp__FC+0xa02531d6>
1c008278:	68f12623          	sw	a5,1676(sp)
1c00827c:	8abbc7b7          	lui	a5,0x8abbc
1c008280:	d4578793          	addi	a5,a5,-699 # 8abbbd45 <pulp__FC+0x8abbbd46>
1c008284:	68f12823          	sw	a5,1680(sp)
1c008288:	2381d7b7          	lui	a5,0x2381d
1c00828c:	c3b78793          	addi	a5,a5,-965 # 2381cc3b <__l2_shared_end+0x780cc3b>
1c008290:	68f12a23          	sw	a5,1684(sp)
1c008294:	681e47b7          	lui	a5,0x681e4
1c008298:	d0878793          	addi	a5,a5,-760 # 681e3d08 <__l2_shared_end+0x4c1d3d08>
1c00829c:	68f12c23          	sw	a5,1688(sp)
1c0082a0:	82d767b7          	lui	a5,0x82d76
1c0082a4:	b2c78793          	addi	a5,a5,-1236 # 82d75b2c <pulp__FC+0x82d75b2d>
1c0082a8:	68f12e23          	sw	a5,1692(sp)
1c0082ac:	48c477b7          	lui	a5,0x48c47
1c0082b0:	60c78793          	addi	a5,a5,1548 # 48c4760c <__l2_shared_end+0x2cc3760c>
1c0082b4:	6af12023          	sw	a5,1696(sp)
1c0082b8:	475117b7          	lui	a5,0x47511
1c0082bc:	13578793          	addi	a5,a5,309 # 47511135 <__l2_shared_end+0x2b501135>
1c0082c0:	6af12223          	sw	a5,1700(sp)
1c0082c4:	01d677b7          	lui	a5,0x1d67
1c0082c8:	94f78793          	addi	a5,a5,-1713 # 1d6694f <__CTOR_LIST__-0x1a2996b5>
1c0082cc:	6af12423          	sw	a5,1704(sp)
1c0082d0:	bb8d77b7          	lui	a5,0xbb8d7
1c0082d4:	0d778793          	addi	a5,a5,215 # bb8d70d7 <pulp__FC+0xbb8d70d8>
1c0082d8:	6af12623          	sw	a5,1708(sp)
1c0082dc:	779d97b7          	lui	a5,0x779d9
1c0082e0:	72c78793          	addi	a5,a5,1836 # 779d972c <__l2_shared_end+0x5b9c972c>
1c0082e4:	6af12823          	sw	a5,1712(sp)
1c0082e8:	b69477b7          	lui	a5,0xb6947
1c0082ec:	45278793          	addi	a5,a5,1106 # b6947452 <pulp__FC+0xb6947453>
1c0082f0:	6af12a23          	sw	a5,1716(sp)
1c0082f4:	ffa827b7          	lui	a5,0xffa82
1c0082f8:	08578793          	addi	a5,a5,133 # ffa82085 <pulp__FC+0xffa82086>
1c0082fc:	6af12c23          	sw	a5,1720(sp)
1c008300:	6241c7b7          	lui	a5,0x6241c
1c008304:	36678793          	addi	a5,a5,870 # 6241c366 <__l2_shared_end+0x4640c366>
1c008308:	6af12e23          	sw	a5,1724(sp)
1c00830c:	80ec37b7          	lui	a5,0x80ec3
1c008310:	aca78793          	addi	a5,a5,-1334 # 80ec2aca <pulp__FC+0x80ec2acb>
1c008314:	6cf12023          	sw	a5,1728(sp)
1c008318:	1fa5a7b7          	lui	a5,0x1fa5a
1c00831c:	27278793          	addi	a5,a5,626 # 1fa5a272 <__l2_shared_end+0x3a4a272>
1c008320:	6cf12223          	sw	a5,1732(sp)
1c008324:	963867b7          	lui	a5,0x96386
1c008328:	9f278793          	addi	a5,a5,-1550 # 963859f2 <pulp__FC+0x963859f3>
1c00832c:	6cf12423          	sw	a5,1736(sp)
1c008330:	955be7b7          	lui	a5,0x955be
1c008334:	74878793          	addi	a5,a5,1864 # 955be748 <pulp__FC+0x955be749>
1c008338:	6cf12623          	sw	a5,1740(sp)
1c00833c:	14be77b7          	lui	a5,0x14be7
1c008340:	ac178793          	addi	a5,a5,-1343 # 14be6ac1 <__CTOR_LIST__-0x7419543>
1c008344:	6cf12823          	sw	a5,1744(sp)
1c008348:	fadb57b7          	lui	a5,0xfadb5
1c00834c:	e6078793          	addi	a5,a5,-416 # fadb4e60 <pulp__FC+0xfadb4e61>
1c008350:	6cf12a23          	sw	a5,1748(sp)
1c008354:	b700f7b7          	lui	a5,0xb700f
1c008358:	4ba78793          	addi	a5,a5,1210 # b700f4ba <pulp__FC+0xb700f4bb>
1c00835c:	6cf12c23          	sw	a5,1752(sp)
1c008360:	070f87b7          	lui	a5,0x70f8
1c008364:	a6a78793          	addi	a5,a5,-1430 # 70f7a6a <__CTOR_LIST__-0x14f0859a>
1c008368:	6cf12e23          	sw	a5,1756(sp)
1c00836c:	e1dc67b7          	lui	a5,0xe1dc6
1c008370:	1db78793          	addi	a5,a5,475 # e1dc61db <pulp__FC+0xe1dc61dc>
1c008374:	6ef12023          	sw	a5,1760(sp)
1c008378:	3bf407b7          	lui	a5,0x3bf40
1c00837c:	29178793          	addi	a5,a5,657 # 3bf40291 <__l2_shared_end+0x1ff30291>
1c008380:	6ef12223          	sw	a5,1764(sp)
1c008384:	746017b7          	lui	a5,0x74601
1c008388:	02d78793          	addi	a5,a5,45 # 7460102d <__l2_shared_end+0x585f102d>
1c00838c:	6ef12423          	sw	a5,1768(sp)
1c008390:	42c407b7          	lui	a5,0x42c40
1c008394:	27b78793          	addi	a5,a5,635 # 42c4027b <__l2_shared_end+0x26c3027b>
1c008398:	6ef12623          	sw	a5,1772(sp)
1c00839c:	1f3487b7          	lui	a5,0x1f348
1c0083a0:	55478793          	addi	a5,a5,1364 # 1f348554 <__l2_shared_end+0x3338554>
1c0083a4:	6ef12823          	sw	a5,1776(sp)
1c0083a8:	fabfe7b7          	lui	a5,0xfabfe
1c0083ac:	9d578793          	addi	a5,a5,-1579 # fabfd9d5 <pulp__FC+0xfabfd9d6>
1c0083b0:	6ef12a23          	sw	a5,1780(sp)
1c0083b4:	616007b7          	lui	a5,0x61600
1c0083b8:	1a778793          	addi	a5,a5,423 # 616001a7 <__l2_shared_end+0x455f01a7>
1c0083bc:	6ef12c23          	sw	a5,1784(sp)
1c0083c0:	b96357b7          	lui	a5,0xb9635
1c0083c4:	93778793          	addi	a5,a5,-1737 # b9634937 <pulp__FC+0xb9634938>
1c0083c8:	6ef12e23          	sw	a5,1788(sp)
1c0083cc:	6b9c27b7          	lui	a5,0x6b9c2
1c0083d0:	08578793          	addi	a5,a5,133 # 6b9c2085 <__l2_shared_end+0x4f9b2085>
1c0083d4:	70f12023          	sw	a5,1792(sp)
1c0083d8:	f9b387b7          	lui	a5,0xf9b38
1c0083dc:	d9a78793          	addi	a5,a5,-614 # f9b37d9a <pulp__FC+0xf9b37d9b>
1c0083e0:	70f12223          	sw	a5,1796(sp)
1c0083e4:	1d3167b7          	lui	a5,0x1d316
1c0083e8:	84978793          	addi	a5,a5,-1975 # 1d315849 <__l2_shared_end+0x1305849>
1c0083ec:	70f12423          	sw	a5,1800(sp)
1c0083f0:	a30087b7          	lui	a5,0xa3008
1c0083f4:	90278793          	addi	a5,a5,-1790 # a3007902 <pulp__FC+0xa3007903>
1c0083f8:	70f12623          	sw	a5,1804(sp)
1c0083fc:	844fc7b7          	lui	a5,0x844fc
1c008400:	4d878793          	addi	a5,a5,1240 # 844fc4d8 <pulp__FC+0x844fc4d9>
1c008404:	70f12823          	sw	a5,1808(sp)
1c008408:	a293b7b7          	lui	a5,0xa293b
1c00840c:	03578793          	addi	a5,a5,53 # a293b035 <pulp__FC+0xa293b036>
1c008410:	70f12a23          	sw	a5,1812(sp)
1c008414:	9f50a7b7          	lui	a5,0x9f50a
1c008418:	03678793          	addi	a5,a5,54 # 9f50a036 <pulp__FC+0x9f50a037>
1c00841c:	70f12c23          	sw	a5,1816(sp)
1c008420:	77df37b7          	lui	a5,0x77df3
1c008424:	81978793          	addi	a5,a5,-2023 # 77df2819 <__l2_shared_end+0x5bde2819>
1c008428:	70f12e23          	sw	a5,1820(sp)
1c00842c:	4e8cd7b7          	lui	a5,0x4e8cd
1c008430:	e1978793          	addi	a5,a5,-487 # 4e8cce19 <__l2_shared_end+0x328bce19>
1c008434:	72f12023          	sw	a5,1824(sp)
1c008438:	4d8f27b7          	lui	a5,0x4d8f2
1c00843c:	29078793          	addi	a5,a5,656 # 4d8f2290 <__l2_shared_end+0x318e2290>
1c008440:	72f12223          	sw	a5,1828(sp)
1c008444:	e8b987b7          	lui	a5,0xe8b98
1c008448:	cb878793          	addi	a5,a5,-840 # e8b97cb8 <pulp__FC+0xe8b97cb9>
1c00844c:	72f12423          	sw	a5,1832(sp)
1c008450:	2171f7b7          	lui	a5,0x2171f
1c008454:	28278793          	addi	a5,a5,642 # 2171f282 <__l2_shared_end+0x570f282>
1c008458:	72f12623          	sw	a5,1836(sp)
1c00845c:	458827b7          	lui	a5,0x45882
1c008460:	38078793          	addi	a5,a5,896 # 45882380 <__l2_shared_end+0x29872380>
1c008464:	72f12823          	sw	a5,1840(sp)
1c008468:	06b927b7          	lui	a5,0x6b92
1c00846c:	ed378793          	addi	a5,a5,-301 # 6b91ed3 <__CTOR_LIST__-0x1546e131>
1c008470:	72f12a23          	sw	a5,1844(sp)
1c008474:	6785                	lui	a5,0x1
1c008476:	ec678793          	addi	a5,a5,-314 # ec6 <__CTOR_LIST__-0x1bfff13e>
1c00847a:	72f11c23          	sh	a5,1848(sp)
1c00847e:	fb600793          	li	a5,-74
1c008482:	72f10d23          	sb	a5,1850(sp)
1c008486:	5ef517b7          	lui	a5,0x5ef51
1c00848a:	f3e78793          	addi	a5,a5,-194 # 5ef50f3e <__l2_shared_end+0x42f40f3e>
1c00848e:	72f12da3          	sw	a5,1851(sp)
1c008492:	a967c7b7          	lui	a5,0xa967c
1c008496:	88478793          	addi	a5,a5,-1916 # a967b884 <pulp__FC+0xa967b885>
1c00849a:	72f12fa3          	sw	a5,1855(sp)
1c00849e:	74ae87b7          	lui	a5,0x74ae8
1c0084a2:	91b78793          	addi	a5,a5,-1765 # 74ae791b <__l2_shared_end+0x58ad791b>
1c0084a6:	74f121a3          	sw	a5,1859(sp)
1c0084aa:	04c047b7          	lui	a5,0x4c04
1c0084ae:	aa078793          	addi	a5,a5,-1376 # 4c03aa0 <__CTOR_LIST__-0x173fc564>
1c0084b2:	74f123a3          	sw	a5,1863(sp)
1c0084b6:	b3c1d7b7          	lui	a5,0xb3c1d
1c0084ba:	87378793          	addi	a5,a5,-1933 # b3c1c873 <pulp__FC+0xb3c1c874>
1c0084be:	74f125a3          	sw	a5,1867(sp)
1c0084c2:	c3dcb7b7          	lui	a5,0xc3dcb
1c0084c6:	ee678793          	addi	a5,a5,-282 # c3dcaee6 <pulp__FC+0xc3dcaee7>
1c0084ca:	74f127a3          	sw	a5,1871(sp)
1c0084ce:	b86927b7          	lui	a5,0xb8692
1c0084d2:	e7f78793          	addi	a5,a5,-385 # b8691e7f <pulp__FC+0xb8691e80>
1c0084d6:	74f129a3          	sw	a5,1875(sp)
1c0084da:	9b0137b7          	lui	a5,0x9b013
1c0084de:	6e178793          	addi	a5,a5,1761 # 9b0136e1 <pulp__FC+0x9b0136e2>
1c0084e2:	74f12ba3          	sw	a5,1879(sp)
1c0084e6:	74c307b7          	lui	a5,0x74c30
1c0084ea:	1db78793          	addi	a5,a5,475 # 74c301db <__l2_shared_end+0x58c201db>
1c0084ee:	74f12da3          	sw	a5,1883(sp)
1c0084f2:	64e127b7          	lui	a5,0x64e12
1c0084f6:	2a178793          	addi	a5,a5,673 # 64e122a1 <__l2_shared_end+0x48e022a1>
1c0084fa:	74f12fa3          	sw	a5,1887(sp)
1c0084fe:	b28427b7          	lui	a5,0xb2842
1c008502:	5c378793          	addi	a5,a5,1475 # b28425c3 <pulp__FC+0xb28425c4>
1c008506:	76f121a3          	sw	a5,1891(sp)
1c00850a:	015ed7b7          	lui	a5,0x15ed
1c00850e:	17ed                	addi	a5,a5,-5
1c008510:	76f123a3          	sw	a5,1895(sp)
1c008514:	7c1247b7          	lui	a5,0x7c124
1c008518:	53a78793          	addi	a5,a5,1338 # 7c12453a <__l2_shared_end+0x6011453a>
1c00851c:	76f125a3          	sw	a5,1899(sp)
1c008520:	b62637b7          	lui	a5,0xb6263
1c008524:	38978793          	addi	a5,a5,905 # b6263389 <pulp__FC+0xb626338a>
1c008528:	76f127a3          	sw	a5,1903(sp)
1c00852c:	cb7807b7          	lui	a5,0xcb780
1c008530:	38678793          	addi	a5,a5,902 # cb780386 <pulp__FC+0xcb780387>
1c008534:	76f129a3          	sw	a5,1907(sp)
1c008538:	8ba427b7          	lui	a5,0x8ba42
1c00853c:	55578793          	addi	a5,a5,1365 # 8ba42555 <pulp__FC+0x8ba42556>
1c008540:	76f12ba3          	sw	a5,1911(sp)
1c008544:	133037b7          	lui	a5,0x13303
1c008548:	b5278793          	addi	a5,a5,-1198 # 13302b52 <__CTOR_LIST__-0x8cfd4b2>
1c00854c:	76f12da3          	sw	a5,1915(sp)
1c008550:	218877b7          	lui	a5,0x21887
1c008554:	62b78793          	addi	a5,a5,1579 # 2188762b <__l2_shared_end+0x587762b>
1c008558:	76f12fa3          	sw	a5,1919(sp)
1c00855c:	8d8077b7          	lui	a5,0x8d807
1c008560:	94b78793          	addi	a5,a5,-1717 # 8d80694b <pulp__FC+0x8d80694c>
1c008564:	78f121a3          	sw	a5,1923(sp)
1c008568:	ffa4a7b7          	lui	a5,0xffa4a
1c00856c:	ad178793          	addi	a5,a5,-1327 # ffa49ad1 <pulp__FC+0xffa49ad2>
1c008570:	78f123a3          	sw	a5,1927(sp)
1c008574:	251647b7          	lui	a5,0x25164
1c008578:	e0378793          	addi	a5,a5,-509 # 25163e03 <__l2_shared_end+0x9153e03>
1c00857c:	78f125a3          	sw	a5,1931(sp)
1c008580:	94fc17b7          	lui	a5,0x94fc1
1c008584:	62078793          	addi	a5,a5,1568 # 94fc1620 <pulp__FC+0x94fc1621>
1c008588:	78f127a3          	sw	a5,1935(sp)
1c00858c:	242427b7          	lui	a5,0x24242
1c008590:	27978793          	addi	a5,a5,633 # 24242279 <__l2_shared_end+0x8232279>
1c008594:	78f129a3          	sw	a5,1939(sp)
1c008598:	db5147b7          	lui	a5,0xdb514
1c00859c:	e3978793          	addi	a5,a5,-455 # db513e39 <pulp__FC+0xdb513e3a>
1c0085a0:	78f12ba3          	sw	a5,1943(sp)
1c0085a4:	81e317b7          	lui	a5,0x81e31
1c0085a8:	57178793          	addi	a5,a5,1393 # 81e31571 <pulp__FC+0x81e31572>
1c0085ac:	78f12da3          	sw	a5,1947(sp)
1c0085b0:	3c89e7b7          	lui	a5,0x3c89e
1c0085b4:	61478793          	addi	a5,a5,1556 # 3c89e614 <__l2_shared_end+0x2088e614>
1c0085b8:	78f12fa3          	sw	a5,1951(sp)
1c0085bc:	11aed7b7          	lui	a5,0x11aed
1c0085c0:	8dc78793          	addi	a5,a5,-1828 # 11aec8dc <__CTOR_LIST__-0xa513728>
1c0085c4:	7af121a3          	sw	a5,1955(sp)
1c0085c8:	6531a7b7          	lui	a5,0x6531a
1c0085cc:	41778793          	addi	a5,a5,1047 # 6531a417 <__l2_shared_end+0x4930a417>
1c0085d0:	7af123a3          	sw	a5,1959(sp)
1c0085d4:	b40a07b7          	lui	a5,0xb40a0
1c0085d8:	14878793          	addi	a5,a5,328 # b40a0148 <pulp__FC+0xb40a0149>
1c0085dc:	7af125a3          	sw	a5,1963(sp)
1c0085e0:	72b6a7b7          	lui	a5,0x72b6a
1c0085e4:	f6278793          	addi	a5,a5,-158 # 72b69f62 <__l2_shared_end+0x56b59f62>
1c0085e8:	7af127a3          	sw	a5,1967(sp)
1c0085ec:	1a0397b7          	lui	a5,0x1a039
1c0085f0:	d1478793          	addi	a5,a5,-748 # 1a038d14 <__CTOR_LIST__-0x1fc72f0>
1c0085f4:	7af129a3          	sw	a5,1971(sp)
1c0085f8:	6a1a67b7          	lui	a5,0x6a1a6
1c0085fc:	06c78793          	addi	a5,a5,108 # 6a1a606c <__l2_shared_end+0x4e19606c>
1c008600:	7af12ba3          	sw	a5,1975(sp)
1c008604:	871d67b7          	lui	a5,0x871d6
1c008608:	64a78793          	addi	a5,a5,1610 # 871d664a <pulp__FC+0x871d664b>
1c00860c:	7af12da3          	sw	a5,1979(sp)
1c008610:	93f697b7          	lui	a5,0x93f69
1c008614:	e2d78793          	addi	a5,a5,-467 # 93f68e2d <pulp__FC+0x93f68e2e>
1c008618:	7af12fa3          	sw	a5,1983(sp)
1c00861c:	591117b7          	lui	a5,0x59111
1c008620:	a7578793          	addi	a5,a5,-1419 # 59110a75 <__l2_shared_end+0x3d100a75>
1c008624:	7cf121a3          	sw	a5,1987(sp)
1c008628:	b96a77b7          	lui	a5,0xb96a7
1c00862c:	15878793          	addi	a5,a5,344 # b96a7158 <pulp__FC+0xb96a7159>
1c008630:	7cf123a3          	sw	a5,1991(sp)
1c008634:	51b047b7          	lui	a5,0x51b04
1c008638:	e2678793          	addi	a5,a5,-474 # 51b03e26 <__l2_shared_end+0x35af3e26>
1c00863c:	7cf125a3          	sw	a5,1995(sp)
1c008640:	231057b7          	lui	a5,0x23105
1c008644:	76378793          	addi	a5,a5,1891 # 23105763 <__l2_shared_end+0x70f5763>
1c008648:	7cf127a3          	sw	a5,1999(sp)
1c00864c:	25e5d7b7          	lui	a5,0x25e5d
1c008650:	d5878793          	addi	a5,a5,-680 # 25e5cd58 <__l2_shared_end+0x9e4cd58>
1c008654:	7cf129a3          	sw	a5,2003(sp)
1c008658:	5c8067b7          	lui	a5,0x5c806
1c00865c:	46478793          	addi	a5,a5,1124 # 5c806464 <__l2_shared_end+0x407f6464>
1c008660:	7cf12ba3          	sw	a5,2007(sp)
1c008664:	6196f7b7          	lui	a5,0x6196f
1c008668:	5a878793          	addi	a5,a5,1448 # 6196f5a8 <__l2_shared_end+0x4595f5a8>
1c00866c:	7cf12da3          	sw	a5,2011(sp)
1c008670:	a4d627b7          	lui	a5,0xa4d62
1c008674:	a7578793          	addi	a5,a5,-1419 # a4d61a75 <pulp__FC+0xa4d61a76>
1c008678:	7cf12fa3          	sw	a5,2015(sp)
1c00867c:	78eca7b7          	lui	a5,0x78eca
1c008680:	77578793          	addi	a5,a5,1909 # 78eca775 <__l2_shared_end+0x5ceba775>
1c008684:	7ef121a3          	sw	a5,2019(sp)
1c008688:	c31977b7          	lui	a5,0xc3197
1c00868c:	3cb78793          	addi	a5,a5,971 # c31973cb <pulp__FC+0xc31973cc>
1c008690:	7ef123a3          	sw	a5,2023(sp)
1c008694:	e144c7b7          	lui	a5,0xe144c
1c008698:	5bb78793          	addi	a5,a5,1467 # e144c5bb <pulp__FC+0xe144c5bc>
1c00869c:	7ef125a3          	sw	a5,2027(sp)
1c0086a0:	aa8517b7          	lui	a5,0xaa851
1c0086a4:	1bb78793          	addi	a5,a5,443 # aa8511bb <pulp__FC+0xaa8511bc>
1c0086a8:	7ef127a3          	sw	a5,2031(sp)
1c0086ac:	ba51b7b7          	lui	a5,0xba51b
1c0086b0:	7ae78793          	addi	a5,a5,1966 # ba51b7ae <pulp__FC+0xba51b7af>
1c0086b4:	7ef129a3          	sw	a5,2035(sp)
1c0086b8:	242347b7          	lui	a5,0x24234
1c0086bc:	90b78793          	addi	a5,a5,-1781 # 2423390b <__l2_shared_end+0x822390b>
1c0086c0:	7ef12ba3          	sw	a5,2039(sp)
1c0086c4:	0af437b7          	lui	a5,0xaf43
1c0086c8:	36e78793          	addi	a5,a5,878 # af4336e <__CTOR_LIST__-0x110bcc96>
1c0086cc:	7ef12da3          	sw	a5,2043(sp)
1c0086d0:	0b78f7b7          	lui	a5,0xb78f
1c0086d4:	44f78793          	addi	a5,a5,1103 # b78f44f <__CTOR_LIST__-0x10870bb5>
1c0086d8:	6705                	lui	a4,0x1
1c0086da:	7ef12fa3          	sw	a5,2047(sp)
1c0086de:	80370713          	addi	a4,a4,-2045 # 803 <__CTOR_LIST__-0x1bfff801>
1c0086e2:	a26257b7          	lui	a5,0xa2625
1c0086e6:	970a                	add	a4,a4,sp
1c0086e8:	37478793          	addi	a5,a5,884 # a2625374 <pulp__FC+0xa2625375>
1c0086ec:	c31c                	sw	a5,0(a4)
1c0086ee:	6705                	lui	a4,0x1
1c0086f0:	4769d7b7          	lui	a5,0x4769d
1c0086f4:	80770713          	addi	a4,a4,-2041 # 807 <__CTOR_LIST__-0x1bfff7fd>
1c0086f8:	970a                	add	a4,a4,sp
1c0086fa:	11878793          	addi	a5,a5,280 # 4769d118 <__l2_shared_end+0x2b68d118>
1c0086fe:	c31c                	sw	a5,0(a4)
1c008700:	6705                	lui	a4,0x1
1c008702:	a90877b7          	lui	a5,0xa9087
1c008706:	80b70713          	addi	a4,a4,-2037 # 80b <__CTOR_LIST__-0x1bfff7f9>
1c00870a:	970a                	add	a4,a4,sp
1c00870c:	24d78793          	addi	a5,a5,589 # a908724d <pulp__FC+0xa908724e>
1c008710:	c31c                	sw	a5,0(a4)
1c008712:	6705                	lui	a4,0x1
1c008714:	287257b7          	lui	a5,0x28725
1c008718:	80f70713          	addi	a4,a4,-2033 # 80f <__CTOR_LIST__-0x1bfff7f5>
1c00871c:	970a                	add	a4,a4,sp
1c00871e:	7f778793          	addi	a5,a5,2039 # 287257f7 <__l2_shared_end+0xc7157f7>
1c008722:	c31c                	sw	a5,0(a4)
1c008724:	6705                	lui	a4,0x1
1c008726:	0ff297b7          	lui	a5,0xff29
1c00872a:	81370713          	addi	a4,a4,-2029 # 813 <__CTOR_LIST__-0x1bfff7f1>
1c00872e:	970a                	add	a4,a4,sp
1c008730:	a3078793          	addi	a5,a5,-1488 # ff28a30 <__CTOR_LIST__-0xc0d75d4>
1c008734:	c31c                	sw	a5,0(a4)
1c008736:	6705                	lui	a4,0x1
1c008738:	a20327b7          	lui	a5,0xa2032
1c00873c:	81770713          	addi	a4,a4,-2025 # 817 <__CTOR_LIST__-0x1bfff7ed>
1c008740:	970a                	add	a4,a4,sp
1c008742:	48d78793          	addi	a5,a5,1165 # a203248d <pulp__FC+0xa203248e>
1c008746:	c31c                	sw	a5,0(a4)
1c008748:	6705                	lui	a4,0x1
1c00874a:	53cf77b7          	lui	a5,0x53cf7
1c00874e:	81b70713          	addi	a4,a4,-2021 # 81b <__CTOR_LIST__-0x1bfff7e9>
1c008752:	970a                	add	a4,a4,sp
1c008754:	77478793          	addi	a5,a5,1908 # 53cf7774 <__l2_shared_end+0x37ce7774>
1c008758:	c31c                	sw	a5,0(a4)
1c00875a:	6705                	lui	a4,0x1
1c00875c:	a233f7b7          	lui	a5,0xa233f
1c008760:	81f70713          	addi	a4,a4,-2017 # 81f <__CTOR_LIST__-0x1bfff7e5>
1c008764:	970a                	add	a4,a4,sp
1c008766:	1cf78793          	addi	a5,a5,463 # a233f1cf <pulp__FC+0xa233f1d0>
1c00876a:	c31c                	sw	a5,0(a4)
1c00876c:	6705                	lui	a4,0x1
1c00876e:	b2c2d7b7          	lui	a5,0xb2c2d
1c008772:	82370713          	addi	a4,a4,-2013 # 823 <__CTOR_LIST__-0x1bfff7e1>
1c008776:	970a                	add	a4,a4,sp
1c008778:	54778793          	addi	a5,a5,1351 # b2c2d547 <pulp__FC+0xb2c2d548>
1c00877c:	c31c                	sw	a5,0(a4)
1c00877e:	6705                	lui	a4,0x1
1c008780:	ba21c7b7          	lui	a5,0xba21c
1c008784:	82770713          	addi	a4,a4,-2009 # 827 <__CTOR_LIST__-0x1bfff7dd>
1c008788:	970a                	add	a4,a4,sp
1c00878a:	f9878793          	addi	a5,a5,-104 # ba21bf98 <pulp__FC+0xba21bf99>
1c00878e:	c31c                	sw	a5,0(a4)
1c008790:	6705                	lui	a4,0x1
1c008792:	6444e7b7          	lui	a5,0x6444e
1c008796:	82b70713          	addi	a4,a4,-2005 # 82b <__CTOR_LIST__-0x1bfff7d9>
1c00879a:	970a                	add	a4,a4,sp
1c00879c:	cc678793          	addi	a5,a5,-826 # 6444dcc6 <__l2_shared_end+0x4843dcc6>
1c0087a0:	c31c                	sw	a5,0(a4)
1c0087a2:	6705                	lui	a4,0x1
1c0087a4:	ceaf67b7          	lui	a5,0xceaf6
1c0087a8:	82f70713          	addi	a4,a4,-2001 # 82f <__CTOR_LIST__-0x1bfff7d5>
1c0087ac:	970a                	add	a4,a4,sp
1c0087ae:	39e78793          	addi	a5,a5,926 # ceaf639e <pulp__FC+0xceaf639f>
1c0087b2:	c31c                	sw	a5,0(a4)
1c0087b4:	6705                	lui	a4,0x1
1c0087b6:	6795                	lui	a5,0x5
1c0087b8:	83370713          	addi	a4,a4,-1997 # 833 <__CTOR_LIST__-0x1bfff7d1>
1c0087bc:	970a                	add	a4,a4,sp
1c0087be:	af578793          	addi	a5,a5,-1291 # 4af5 <__CTOR_LIST__-0x1bffb50f>
1c0087c2:	00f71023          	sh	a5,0(a4)
1c0087c6:	6705                	lui	a4,0x1
1c0087c8:	83570713          	addi	a4,a4,-1995 # 835 <__CTOR_LIST__-0x1bfff7cf>
1c0087cc:	970a                	add	a4,a4,sp
1c0087ce:	fd300793          	li	a5,-45
1c0087d2:	00f70023          	sb	a5,0(a4)
1c0087d6:	6705                	lui	a4,0x1
1c0087d8:	e47487b7          	lui	a5,0xe4748
1c0087dc:	83670713          	addi	a4,a4,-1994 # 836 <__CTOR_LIST__-0x1bfff7ce>
1c0087e0:	970a                	add	a4,a4,sp
1c0087e2:	aa078793          	addi	a5,a5,-1376 # e4747aa0 <pulp__FC+0xe4747aa1>
1c0087e6:	c31c                	sw	a5,0(a4)
1c0087e8:	6705                	lui	a4,0x1
1c0087ea:	ac6bb7b7          	lui	a5,0xac6bb
1c0087ee:	83a70713          	addi	a4,a4,-1990 # 83a <__CTOR_LIST__-0x1bfff7ca>
1c0087f2:	970a                	add	a4,a4,sp
1c0087f4:	34778793          	addi	a5,a5,839 # ac6bb347 <pulp__FC+0xac6bb348>
1c0087f8:	c31c                	sw	a5,0(a4)
1c0087fa:	6705                	lui	a4,0x1
1c0087fc:	055e37b7          	lui	a5,0x55e3
1c008800:	83e70713          	addi	a4,a4,-1986 # 83e <__CTOR_LIST__-0x1bfff7c6>
1c008804:	970a                	add	a4,a4,sp
1c008806:	9ca78793          	addi	a5,a5,-1590 # 55e29ca <__CTOR_LIST__-0x16a1d63a>
1c00880a:	c31c                	sw	a5,0(a4)
1c00880c:	6705                	lui	a4,0x1
1c00880e:	7cef77b7          	lui	a5,0x7cef7
1c008812:	84270713          	addi	a4,a4,-1982 # 842 <__CTOR_LIST__-0x1bfff7c2>
1c008816:	970a                	add	a4,a4,sp
1c008818:	83378793          	addi	a5,a5,-1997 # 7cef6833 <__l2_shared_end+0x60ee6833>
1c00881c:	c31c                	sw	a5,0(a4)
1c00881e:	6705                	lui	a4,0x1
1c008820:	281c77b7          	lui	a5,0x281c7
1c008824:	84670713          	addi	a4,a4,-1978 # 846 <__CTOR_LIST__-0x1bfff7be>
1c008828:	970a                	add	a4,a4,sp
1c00882a:	e1478793          	addi	a5,a5,-492 # 281c6e14 <__l2_shared_end+0xc1b6e14>
1c00882e:	c31c                	sw	a5,0(a4)
1c008830:	6705                	lui	a4,0x1
1c008832:	371bb7b7          	lui	a5,0x371bb
1c008836:	84a70713          	addi	a4,a4,-1974 # 84a <__CTOR_LIST__-0x1bfff7ba>
1c00883a:	970a                	add	a4,a4,sp
1c00883c:	3ed78793          	addi	a5,a5,1005 # 371bb3ed <__l2_shared_end+0x1b1ab3ed>
1c008840:	c31c                	sw	a5,0(a4)
1c008842:	6705                	lui	a4,0x1
1c008844:	a741d7b7          	lui	a5,0xa741d
1c008848:	84e70713          	addi	a4,a4,-1970 # 84e <__CTOR_LIST__-0x1bfff7b6>
1c00884c:	970a                	add	a4,a4,sp
1c00884e:	97778793          	addi	a5,a5,-1673 # a741c977 <pulp__FC+0xa741c978>
1c008852:	c31c                	sw	a5,0(a4)
1c008854:	6705                	lui	a4,0x1
1c008856:	59c587b7          	lui	a5,0x59c58
1c00885a:	85270713          	addi	a4,a4,-1966 # 852 <__CTOR_LIST__-0x1bfff7b2>
1c00885e:	970a                	add	a4,a4,sp
1c008860:	dc278793          	addi	a5,a5,-574 # 59c57dc2 <__l2_shared_end+0x3dc47dc2>
1c008864:	c31c                	sw	a5,0(a4)
1c008866:	6705                	lui	a4,0x1
1c008868:	f80f87b7          	lui	a5,0xf80f8
1c00886c:	85670713          	addi	a4,a4,-1962 # 856 <__CTOR_LIST__-0x1bfff7ae>
1c008870:	970a                	add	a4,a4,sp
1c008872:	b4378793          	addi	a5,a5,-1213 # f80f7b43 <pulp__FC+0xf80f7b44>
1c008876:	c31c                	sw	a5,0(a4)
1c008878:	6705                	lui	a4,0x1
1c00887a:	f81037b7          	lui	a5,0xf8103
1c00887e:	85a70713          	addi	a4,a4,-1958 # 85a <__CTOR_LIST__-0x1bfff7aa>
1c008882:	970a                	add	a4,a4,sp
1c008884:	93c78793          	addi	a5,a5,-1732 # f810293c <pulp__FC+0xf810293d>
1c008888:	c31c                	sw	a5,0(a4)
1c00888a:	6705                	lui	a4,0x1
1c00888c:	4d24f7b7          	lui	a5,0x4d24f
1c008890:	85e70713          	addi	a4,a4,-1954 # 85e <__CTOR_LIST__-0x1bfff7a6>
1c008894:	970a                	add	a4,a4,sp
1c008896:	f2778793          	addi	a5,a5,-217 # 4d24ef27 <__l2_shared_end+0x3123ef27>
1c00889a:	c31c                	sw	a5,0(a4)
1c00889c:	6705                	lui	a4,0x1
1c00889e:	2baf27b7          	lui	a5,0x2baf2
1c0088a2:	86270713          	addi	a4,a4,-1950 # 862 <__CTOR_LIST__-0x1bfff7a2>
1c0088a6:	970a                	add	a4,a4,sp
1c0088a8:	67778793          	addi	a5,a5,1655 # 2baf2677 <__l2_shared_end+0xfae2677>
1c0088ac:	c31c                	sw	a5,0(a4)
1c0088ae:	6705                	lui	a4,0x1
1c0088b0:	4b6517b7          	lui	a5,0x4b651
1c0088b4:	86670713          	addi	a4,a4,-1946 # 866 <__CTOR_LIST__-0x1bfff79e>
1c0088b8:	970a                	add	a4,a4,sp
1c0088ba:	89778793          	addi	a5,a5,-1897 # 4b650897 <__l2_shared_end+0x2f640897>
1c0088be:	c31c                	sw	a5,0(a4)
1c0088c0:	6705                	lui	a4,0x1
1c0088c2:	a239b7b7          	lui	a5,0xa239b
1c0088c6:	86a70713          	addi	a4,a4,-1942 # 86a <__CTOR_LIST__-0x1bfff79a>
1c0088ca:	970a                	add	a4,a4,sp
1c0088cc:	1cf78793          	addi	a5,a5,463 # a239b1cf <pulp__FC+0xa239b1d0>
1c0088d0:	c31c                	sw	a5,0(a4)
1c0088d2:	6705                	lui	a4,0x1
1c0088d4:	f4c647b7          	lui	a5,0xf4c64
1c0088d8:	86e70713          	addi	a4,a4,-1938 # 86e <__CTOR_LIST__-0x1bfff796>
1c0088dc:	970a                	add	a4,a4,sp
1c0088de:	46878793          	addi	a5,a5,1128 # f4c64468 <pulp__FC+0xf4c64469>
1c0088e2:	c31c                	sw	a5,0(a4)
1c0088e4:	6705                	lui	a4,0x1
1c0088e6:	e4d9a7b7          	lui	a5,0xe4d9a
1c0088ea:	87270713          	addi	a4,a4,-1934 # 872 <__CTOR_LIST__-0x1bfff792>
1c0088ee:	970a                	add	a4,a4,sp
1c0088f0:	cb778793          	addi	a5,a5,-841 # e4d99cb7 <pulp__FC+0xe4d99cb8>
1c0088f4:	c31c                	sw	a5,0(a4)
1c0088f6:	6705                	lui	a4,0x1
1c0088f8:	a76577b7          	lui	a5,0xa7657
1c0088fc:	87670713          	addi	a4,a4,-1930 # 876 <__CTOR_LIST__-0x1bfff78e>
1c008900:	970a                	add	a4,a4,sp
1c008902:	07478793          	addi	a5,a5,116 # a7657074 <pulp__FC+0xa7657075>
1c008906:	c31c                	sw	a5,0(a4)
1c008908:	6705                	lui	a4,0x1
1c00890a:	27b997b7          	lui	a5,0x27b99
1c00890e:	87a70713          	addi	a4,a4,-1926 # 87a <__CTOR_LIST__-0x1bfff78a>
1c008912:	970a                	add	a4,a4,sp
1c008914:	67578793          	addi	a5,a5,1653 # 27b99675 <__l2_shared_end+0xbb89675>
1c008918:	c31c                	sw	a5,0(a4)
1c00891a:	6705                	lui	a4,0x1
1c00891c:	bcbd77b7          	lui	a5,0xbcbd7
1c008920:	87e70713          	addi	a4,a4,-1922 # 87e <__CTOR_LIST__-0x1bfff786>
1c008924:	970a                	add	a4,a4,sp
1c008926:	cf978793          	addi	a5,a5,-775 # bcbd6cf9 <pulp__FC+0xbcbd6cfa>
1c00892a:	c31c                	sw	a5,0(a4)
1c00892c:	6705                	lui	a4,0x1
1c00892e:	9eac67b7          	lui	a5,0x9eac6
1c008932:	88270713          	addi	a4,a4,-1918 # 882 <__CTOR_LIST__-0x1bfff782>
1c008936:	970a                	add	a4,a4,sp
1c008938:	77278793          	addi	a5,a5,1906 # 9eac6772 <pulp__FC+0x9eac6773>
1c00893c:	c31c                	sw	a5,0(a4)
1c00893e:	6705                	lui	a4,0x1
1c008940:	6f39b7b7          	lui	a5,0x6f39b
1c008944:	88670713          	addi	a4,a4,-1914 # 886 <__CTOR_LIST__-0x1bfff77e>
1c008948:	970a                	add	a4,a4,sp
1c00894a:	c3278793          	addi	a5,a5,-974 # 6f39ac32 <__l2_shared_end+0x5338ac32>
1c00894e:	c31c                	sw	a5,0(a4)
1c008950:	6705                	lui	a4,0x1
1c008952:	39e757b7          	lui	a5,0x39e75
1c008956:	88a70713          	addi	a4,a4,-1910 # 88a <__CTOR_LIST__-0x1bfff77a>
1c00895a:	970a                	add	a4,a4,sp
1c00895c:	c6c78793          	addi	a5,a5,-916 # 39e74c6c <__l2_shared_end+0x1de64c6c>
1c008960:	c31c                	sw	a5,0(a4)
1c008962:	6705                	lui	a4,0x1
1c008964:	0fa617b7          	lui	a5,0xfa61
1c008968:	88e70713          	addi	a4,a4,-1906 # 88e <__CTOR_LIST__-0x1bfff776>
1c00896c:	970a                	add	a4,a4,sp
1c00896e:	aaa78793          	addi	a5,a5,-1366 # fa60aaa <__CTOR_LIST__-0xc59f55a>
1c008972:	c31c                	sw	a5,0(a4)
1c008974:	6705                	lui	a4,0x1
1c008976:	8e17b7b7          	lui	a5,0x8e17b
1c00897a:	89270713          	addi	a4,a4,-1902 # 892 <__CTOR_LIST__-0x1bfff772>
1c00897e:	970a                	add	a4,a4,sp
1c008980:	ccc78793          	addi	a5,a5,-820 # 8e17accc <pulp__FC+0x8e17accd>
1c008984:	c31c                	sw	a5,0(a4)
1c008986:	6705                	lui	a4,0x1
1c008988:	46e0b7b7          	lui	a5,0x46e0b
1c00898c:	89670713          	addi	a4,a4,-1898 # 896 <__CTOR_LIST__-0x1bfff76e>
1c008990:	970a                	add	a4,a4,sp
1c008992:	1da78793          	addi	a5,a5,474 # 46e0b1da <__l2_shared_end+0x2adfb1da>
1c008996:	c31c                	sw	a5,0(a4)
1c008998:	6705                	lui	a4,0x1
1c00899a:	a77207b7          	lui	a5,0xa7720
1c00899e:	89a70713          	addi	a4,a4,-1894 # 89a <__CTOR_LIST__-0x1bfff76a>
1c0089a2:	970a                	add	a4,a4,sp
1c0089a4:	e8878793          	addi	a5,a5,-376 # a771fe88 <pulp__FC+0xa771fe89>
1c0089a8:	c31c                	sw	a5,0(a4)
1c0089aa:	6705                	lui	a4,0x1
1c0089ac:	9ba907b7          	lui	a5,0x9ba90
1c0089b0:	89e70713          	addi	a4,a4,-1890 # 89e <__CTOR_LIST__-0x1bfff766>
1c0089b4:	970a                	add	a4,a4,sp
1c0089b6:	14278793          	addi	a5,a5,322 # 9ba90142 <pulp__FC+0x9ba90143>
1c0089ba:	c31c                	sw	a5,0(a4)
1c0089bc:	6705                	lui	a4,0x1
1c0089be:	f85557b7          	lui	a5,0xf8555
1c0089c2:	8a270713          	addi	a4,a4,-1886 # 8a2 <__CTOR_LIST__-0x1bfff762>
1c0089c6:	970a                	add	a4,a4,sp
1c0089c8:	bc678793          	addi	a5,a5,-1082 # f8554bc6 <pulp__FC+0xf8554bc7>
1c0089cc:	c31c                	sw	a5,0(a4)
1c0089ce:	6705                	lui	a4,0x1
1c0089d0:	15e197b7          	lui	a5,0x15e19
1c0089d4:	8a670713          	addi	a4,a4,-1882 # 8a6 <__CTOR_LIST__-0x1bfff75e>
1c0089d8:	970a                	add	a4,a4,sp
1c0089da:	9cb78793          	addi	a5,a5,-1589 # 15e189cb <__CTOR_LIST__-0x61e7639>
1c0089de:	c31c                	sw	a5,0(a4)
1c0089e0:	6705                	lui	a4,0x1
1c0089e2:	5a27e7b7          	lui	a5,0x5a27e
1c0089e6:	8aa70713          	addi	a4,a4,-1878 # 8aa <__CTOR_LIST__-0x1bfff75a>
1c0089ea:	970a                	add	a4,a4,sp
1c0089ec:	54578793          	addi	a5,a5,1349 # 5a27e545 <__l2_shared_end+0x3e26e545>
1c0089f0:	c31c                	sw	a5,0(a4)
1c0089f2:	6705                	lui	a4,0x1
1c0089f4:	ec2687b7          	lui	a5,0xec268
1c0089f8:	8ae70713          	addi	a4,a4,-1874 # 8ae <__CTOR_LIST__-0x1bfff756>
1c0089fc:	970a                	add	a4,a4,sp
1c0089fe:	6f478793          	addi	a5,a5,1780 # ec2686f4 <pulp__FC+0xec2686f5>
1c008a02:	c31c                	sw	a5,0(a4)
1c008a04:	6705                	lui	a4,0x1
1c008a06:	ba2077b7          	lui	a5,0xba207
1c008a0a:	8b270713          	addi	a4,a4,-1870 # 8b2 <__CTOR_LIST__-0x1bfff752>
1c008a0e:	970a                	add	a4,a4,sp
1c008a10:	56678793          	addi	a5,a5,1382 # ba207566 <pulp__FC+0xba207567>
1c008a14:	c31c                	sw	a5,0(a4)
1c008a16:	6705                	lui	a4,0x1
1c008a18:	c28887b7          	lui	a5,0xc2888
1c008a1c:	8b670713          	addi	a4,a4,-1866 # 8b6 <__CTOR_LIST__-0x1bfff74e>
1c008a20:	970a                	add	a4,a4,sp
1c008a22:	c8a78793          	addi	a5,a5,-886 # c2887c8a <pulp__FC+0xc2887c8b>
1c008a26:	c31c                	sw	a5,0(a4)
1c008a28:	6705                	lui	a4,0x1
1c008a2a:	347987b7          	lui	a5,0x34798
1c008a2e:	8ba70713          	addi	a4,a4,-1862 # 8ba <__CTOR_LIST__-0x1bfff74a>
1c008a32:	970a                	add	a4,a4,sp
1c008a34:	e3078793          	addi	a5,a5,-464 # 34797e30 <__l2_shared_end+0x18787e30>
1c008a38:	c31c                	sw	a5,0(a4)
1c008a3a:	6705                	lui	a4,0x1
1c008a3c:	8087f7b7          	lui	a5,0x8087f
1c008a40:	8be70713          	addi	a4,a4,-1858 # 8be <__CTOR_LIST__-0x1bfff746>
1c008a44:	970a                	add	a4,a4,sp
1c008a46:	f5578793          	addi	a5,a5,-171 # 8087ef55 <pulp__FC+0x8087ef56>
1c008a4a:	c31c                	sw	a5,0(a4)
1c008a4c:	6705                	lui	a4,0x1
1c008a4e:	1264e7b7          	lui	a5,0x1264e
1c008a52:	8c270713          	addi	a4,a4,-1854 # 8c2 <__CTOR_LIST__-0x1bfff742>
1c008a56:	970a                	add	a4,a4,sp
1c008a58:	1fa78793          	addi	a5,a5,506 # 1264e1fa <__CTOR_LIST__-0x99b1e0a>
1c008a5c:	c31c                	sw	a5,0(a4)
1c008a5e:	6705                	lui	a4,0x1
1c008a60:	24e967b7          	lui	a5,0x24e96
1c008a64:	8c670713          	addi	a4,a4,-1850 # 8c6 <__CTOR_LIST__-0x1bfff73e>
1c008a68:	970a                	add	a4,a4,sp
1c008a6a:	9ea78793          	addi	a5,a5,-1558 # 24e959ea <__l2_shared_end+0x8e859ea>
1c008a6e:	c31c                	sw	a5,0(a4)
1c008a70:	6705                	lui	a4,0x1
1c008a72:	9095f7b7          	lui	a5,0x9095f
1c008a76:	8ca70713          	addi	a4,a4,-1846 # 8ca <__CTOR_LIST__-0x1bfff73a>
1c008a7a:	970a                	add	a4,a4,sp
1c008a7c:	50678793          	addi	a5,a5,1286 # 9095f506 <pulp__FC+0x9095f507>
1c008a80:	c31c                	sw	a5,0(a4)
1c008a82:	6705                	lui	a4,0x1
1c008a84:	611cc7b7          	lui	a5,0x611cc
1c008a88:	8ce70713          	addi	a4,a4,-1842 # 8ce <__CTOR_LIST__-0x1bfff736>
1c008a8c:	970a                	add	a4,a4,sp
1c008a8e:	22d78793          	addi	a5,a5,557 # 611cc22d <__l2_shared_end+0x451bc22d>
1c008a92:	c31c                	sw	a5,0(a4)
1c008a94:	6705                	lui	a4,0x1
1c008a96:	012817b7          	lui	a5,0x1281
1c008a9a:	8d270713          	addi	a4,a4,-1838 # 8d2 <__CTOR_LIST__-0x1bfff732>
1c008a9e:	970a                	add	a4,a4,sp
1c008aa0:	42b78793          	addi	a5,a5,1067 # 128142b <__CTOR_LIST__-0x1ad7ebd9>
1c008aa4:	c31c                	sw	a5,0(a4)
1c008aa6:	6705                	lui	a4,0x1
1c008aa8:	c0ab37b7          	lui	a5,0xc0ab3
1c008aac:	8d670713          	addi	a4,a4,-1834 # 8d6 <__CTOR_LIST__-0x1bfff72e>
1c008ab0:	970a                	add	a4,a4,sp
1c008ab2:	1cf78793          	addi	a5,a5,463 # c0ab31cf <pulp__FC+0xc0ab31d0>
1c008ab6:	c31c                	sw	a5,0(a4)
1c008ab8:	6705                	lui	a4,0x1
1c008aba:	de7b67b7          	lui	a5,0xde7b6
1c008abe:	8da70713          	addi	a4,a4,-1830 # 8da <__CTOR_LIST__-0x1bfff72a>
1c008ac2:	970a                	add	a4,a4,sp
1c008ac4:	c4778793          	addi	a5,a5,-953 # de7b5c47 <pulp__FC+0xde7b5c48>
1c008ac8:	c31c                	sw	a5,0(a4)
1c008aca:	6705                	lui	a4,0x1
1c008acc:	c55137b7          	lui	a5,0xc5513
1c008ad0:	8de70713          	addi	a4,a4,-1826 # 8de <__CTOR_LIST__-0x1bfff726>
1c008ad4:	970a                	add	a4,a4,sp
1c008ad6:	d7778793          	addi	a5,a5,-649 # c5512d77 <pulp__FC+0xc5512d78>
1c008ada:	c31c                	sw	a5,0(a4)
1c008adc:	6705                	lui	a4,0x1
1c008ade:	65fc37b7          	lui	a5,0x65fc3
1c008ae2:	8e270713          	addi	a4,a4,-1822 # 8e2 <__CTOR_LIST__-0x1bfff722>
1c008ae6:	970a                	add	a4,a4,sp
1c008ae8:	d5a78793          	addi	a5,a5,-678 # 65fc2d5a <__l2_shared_end+0x49fb2d5a>
1c008aec:	c31c                	sw	a5,0(a4)
1c008aee:	6705                	lui	a4,0x1
1c008af0:	41abc7b7          	lui	a5,0x41abc
1c008af4:	8e670713          	addi	a4,a4,-1818 # 8e6 <__CTOR_LIST__-0x1bfff71e>
1c008af8:	970a                	add	a4,a4,sp
1c008afa:	51b78793          	addi	a5,a5,1307 # 41abc51b <__l2_shared_end+0x25aac51b>
1c008afe:	c31c                	sw	a5,0(a4)
1c008b00:	6705                	lui	a4,0x1
1c008b02:	132807b7          	lui	a5,0x13280
1c008b06:	8ea70713          	addi	a4,a4,-1814 # 8ea <__CTOR_LIST__-0x1bfff71a>
1c008b0a:	970a                	add	a4,a4,sp
1c008b0c:	24378793          	addi	a5,a5,579 # 13280243 <__CTOR_LIST__-0x8d7fdc1>
1c008b10:	c31c                	sw	a5,0(a4)
1c008b12:	6705                	lui	a4,0x1
1c008b14:	c68c57b7          	lui	a5,0xc68c5
1c008b18:	8ee70713          	addi	a4,a4,-1810 # 8ee <__CTOR_LIST__-0x1bfff716>
1c008b1c:	970a                	add	a4,a4,sp
1c008b1e:	ccc78793          	addi	a5,a5,-820 # c68c4ccc <pulp__FC+0xc68c4ccd>
1c008b22:	c31c                	sw	a5,0(a4)
1c008b24:	6705                	lui	a4,0x1
1c008b26:	278d37b7          	lui	a5,0x278d3
1c008b2a:	8f270713          	addi	a4,a4,-1806 # 8f2 <__CTOR_LIST__-0x1bfff712>
1c008b2e:	970a                	add	a4,a4,sp
1c008b30:	cf578793          	addi	a5,a5,-779 # 278d2cf5 <__l2_shared_end+0xb8c2cf5>
1c008b34:	c31c                	sw	a5,0(a4)
1c008b36:	6705                	lui	a4,0x1
1c008b38:	5178d7b7          	lui	a5,0x5178d
1c008b3c:	8f670713          	addi	a4,a4,-1802 # 8f6 <__CTOR_LIST__-0x1bfff70e>
1c008b40:	970a                	add	a4,a4,sp
1c008b42:	de378793          	addi	a5,a5,-541 # 5178cde3 <__l2_shared_end+0x3577cde3>
1c008b46:	c31c                	sw	a5,0(a4)
1c008b48:	6705                	lui	a4,0x1
1c008b4a:	438ca7b7          	lui	a5,0x438ca
1c008b4e:	8fa70713          	addi	a4,a4,-1798 # 8fa <__CTOR_LIST__-0x1bfff70a>
1c008b52:	970a                	add	a4,a4,sp
1c008b54:	a8478793          	addi	a5,a5,-1404 # 438c9a84 <__l2_shared_end+0x278b9a84>
1c008b58:	c31c                	sw	a5,0(a4)
1c008b5a:	6705                	lui	a4,0x1
1c008b5c:	edc7f7b7          	lui	a5,0xedc7f
1c008b60:	8fe70713          	addi	a4,a4,-1794 # 8fe <__CTOR_LIST__-0x1bfff706>
1c008b64:	970a                	add	a4,a4,sp
1c008b66:	04378793          	addi	a5,a5,67 # edc7f043 <pulp__FC+0xedc7f044>
1c008b6a:	c31c                	sw	a5,0(a4)
1c008b6c:	6705                	lui	a4,0x1
1c008b6e:	f7b977b7          	lui	a5,0xf7b97
1c008b72:	90270713          	addi	a4,a4,-1790 # 902 <__CTOR_LIST__-0x1bfff702>
1c008b76:	970a                	add	a4,a4,sp
1c008b78:	c6c78793          	addi	a5,a5,-916 # f7b96c6c <pulp__FC+0xf7b96c6d>
1c008b7c:	c31c                	sw	a5,0(a4)
1c008b7e:	6705                	lui	a4,0x1
1c008b80:	7e04c7b7          	lui	a5,0x7e04c
1c008b84:	90670713          	addi	a4,a4,-1786 # 906 <__CTOR_LIST__-0x1bfff6fe>
1c008b88:	970a                	add	a4,a4,sp
1c008b8a:	56578793          	addi	a5,a5,1381 # 7e04c565 <__l2_shared_end+0x6203c565>
1c008b8e:	c31c                	sw	a5,0(a4)
1c008b90:	6705                	lui	a4,0x1
1c008b92:	aa48c7b7          	lui	a5,0xaa48c
1c008b96:	90a70713          	addi	a4,a4,-1782 # 90a <__CTOR_LIST__-0x1bfff6fa>
1c008b9a:	970a                	add	a4,a4,sp
1c008b9c:	c5578793          	addi	a5,a5,-939 # aa48bc55 <pulp__FC+0xaa48bc56>
1c008ba0:	c31c                	sw	a5,0(a4)
1c008ba2:	6705                	lui	a4,0x1
1c008ba4:	1232c7b7          	lui	a5,0x1232c
1c008ba8:	90e70713          	addi	a4,a4,-1778 # 90e <__CTOR_LIST__-0x1bfff6f6>
1c008bac:	970a                	add	a4,a4,sp
1c008bae:	9d578793          	addi	a5,a5,-1579 # 1232b9d5 <__CTOR_LIST__-0x9cd462f>
1c008bb2:	c31c                	sw	a5,0(a4)
1c008bb4:	6705                	lui	a4,0x1
1c008bb6:	09f787b7          	lui	a5,0x9f78
1c008bba:	91270713          	addi	a4,a4,-1774 # 912 <__CTOR_LIST__-0x1bfff6f2>
1c008bbe:	970a                	add	a4,a4,sp
1c008bc0:	78278793          	addi	a5,a5,1922 # 9f78782 <__CTOR_LIST__-0x12087882>
1c008bc4:	c31c                	sw	a5,0(a4)
1c008bc6:	6705                	lui	a4,0x1
1c008bc8:	3a75e7b7          	lui	a5,0x3a75e
1c008bcc:	91670713          	addi	a4,a4,-1770 # 916 <__CTOR_LIST__-0x1bfff6ee>
1c008bd0:	970a                	add	a4,a4,sp
1c008bd2:	b3978793          	addi	a5,a5,-1223 # 3a75db39 <__l2_shared_end+0x1e74db39>
1c008bd6:	c31c                	sw	a5,0(a4)
1c008bd8:	6705                	lui	a4,0x1
1c008bda:	dbd7c7b7          	lui	a5,0xdbd7c
1c008bde:	91a70713          	addi	a4,a4,-1766 # 91a <__CTOR_LIST__-0x1bfff6ea>
1c008be2:	970a                	add	a4,a4,sp
1c008be4:	06178793          	addi	a5,a5,97 # dbd7c061 <pulp__FC+0xdbd7c062>
1c008be8:	c31c                	sw	a5,0(a4)
1c008bea:	6705                	lui	a4,0x1
1c008bec:	56c237b7          	lui	a5,0x56c23
1c008bf0:	91e70713          	addi	a4,a4,-1762 # 91e <__CTOR_LIST__-0x1bfff6e6>
1c008bf4:	970a                	add	a4,a4,sp
1c008bf6:	07e1                	addi	a5,a5,24
1c008bf8:	c31c                	sw	a5,0(a4)
1c008bfa:	6705                	lui	a4,0x1
1c008bfc:	851c97b7          	lui	a5,0x851c9
1c008c00:	92270713          	addi	a4,a4,-1758 # 922 <__CTOR_LIST__-0x1bfff6e2>
1c008c04:	970a                	add	a4,a4,sp
1c008c06:	c2878793          	addi	a5,a5,-984 # 851c8c28 <pulp__FC+0x851c8c29>
1c008c0a:	c31c                	sw	a5,0(a4)
1c008c0c:	6705                	lui	a4,0x1
1c008c0e:	e5bca7b7          	lui	a5,0xe5bca
1c008c12:	92670713          	addi	a4,a4,-1754 # 926 <__CTOR_LIST__-0x1bfff6de>
1c008c16:	970a                	add	a4,a4,sp
1c008c18:	bcc78793          	addi	a5,a5,-1076 # e5bc9bcc <pulp__FC+0xe5bc9bcd>
1c008c1c:	c31c                	sw	a5,0(a4)
1c008c1e:	6705                	lui	a4,0x1
1c008c20:	c5da67b7          	lui	a5,0xc5da6
1c008c24:	92a70713          	addi	a4,a4,-1750 # 92a <__CTOR_LIST__-0x1bfff6da>
1c008c28:	970a                	add	a4,a4,sp
1c008c2a:	68378793          	addi	a5,a5,1667 # c5da6683 <pulp__FC+0xc5da6684>
1c008c2e:	c31c                	sw	a5,0(a4)
1c008c30:	6705                	lui	a4,0x1
1c008c32:	77f5                	lui	a5,0xffffd
1c008c34:	92e70713          	addi	a4,a4,-1746 # 92e <__CTOR_LIST__-0x1bfff6d6>
1c008c38:	970a                	add	a4,a4,sp
1c008c3a:	82878793          	addi	a5,a5,-2008 # ffffc828 <pulp__FC+0xffffc829>
1c008c3e:	00f71023          	sh	a5,0(a4)
1c008c42:	6705                	lui	a4,0x1
1c008c44:	93070713          	addi	a4,a4,-1744 # 930 <__CTOR_LIST__-0x1bfff6d4>
1c008c48:	970a                	add	a4,a4,sp
1c008c4a:	f9300793          	li	a5,-109
1c008c4e:	00f70023          	sb	a5,0(a4)
1c008c52:	6705                	lui	a4,0x1
1c008c54:	856927b7          	lui	a5,0x85692
1c008c58:	93170713          	addi	a4,a4,-1743 # 931 <__CTOR_LIST__-0x1bfff6d3>
1c008c5c:	970a                	add	a4,a4,sp
1c008c5e:	bd678793          	addi	a5,a5,-1066 # 85691bd6 <pulp__FC+0x85691bd7>
1c008c62:	c31c                	sw	a5,0(a4)
1c008c64:	6705                	lui	a4,0x1
1c008c66:	7582d7b7          	lui	a5,0x7582d
1c008c6a:	93570713          	addi	a4,a4,-1739 # 935 <__CTOR_LIST__-0x1bfff6cf>
1c008c6e:	970a                	add	a4,a4,sp
1c008c70:	b0b78793          	addi	a5,a5,-1269 # 7582cb0b <__l2_shared_end+0x5981cb0b>
1c008c74:	c31c                	sw	a5,0(a4)
1c008c76:	6705                	lui	a4,0x1
1c008c78:	366987b7          	lui	a5,0x36698
1c008c7c:	93970713          	addi	a4,a4,-1735 # 939 <__CTOR_LIST__-0x1bfff6cb>
1c008c80:	970a                	add	a4,a4,sp
1c008c82:	38e78793          	addi	a5,a5,910 # 3669838e <__l2_shared_end+0x1a68838e>
1c008c86:	c31c                	sw	a5,0(a4)
1c008c88:	6705                	lui	a4,0x1
1c008c8a:	381707b7          	lui	a5,0x38170
1c008c8e:	93d70713          	addi	a4,a4,-1731 # 93d <__CTOR_LIST__-0x1bfff6c7>
1c008c92:	970a                	add	a4,a4,sp
1c008c94:	8e178793          	addi	a5,a5,-1823 # 3816f8e1 <__l2_shared_end+0x1c15f8e1>
1c008c98:	c31c                	sw	a5,0(a4)
1c008c9a:	6705                	lui	a4,0x1
1c008c9c:	826467b7          	lui	a5,0x82646
1c008ca0:	94170713          	addi	a4,a4,-1727 # 941 <__CTOR_LIST__-0x1bfff6c3>
1c008ca4:	970a                	add	a4,a4,sp
1c008ca6:	86178793          	addi	a5,a5,-1951 # 82645861 <pulp__FC+0x82645862>
1c008caa:	c31c                	sw	a5,0(a4)
1c008cac:	6705                	lui	a4,0x1
1c008cae:	4d5bd7b7          	lui	a5,0x4d5bd
1c008cb2:	94570713          	addi	a4,a4,-1723 # 945 <__CTOR_LIST__-0x1bfff6bf>
1c008cb6:	970a                	add	a4,a4,sp
1c008cb8:	3ca78793          	addi	a5,a5,970 # 4d5bd3ca <__l2_shared_end+0x315ad3ca>
1c008cbc:	c31c                	sw	a5,0(a4)
1c008cbe:	6705                	lui	a4,0x1
1c008cc0:	ad7f47b7          	lui	a5,0xad7f4
1c008cc4:	94970713          	addi	a4,a4,-1719 # 949 <__CTOR_LIST__-0x1bfff6bb>
1c008cc8:	970a                	add	a4,a4,sp
1c008cca:	3b178793          	addi	a5,a5,945 # ad7f43b1 <pulp__FC+0xad7f43b2>
1c008cce:	c31c                	sw	a5,0(a4)
1c008cd0:	6705                	lui	a4,0x1
1c008cd2:	62b687b7          	lui	a5,0x62b68
1c008cd6:	94d70713          	addi	a4,a4,-1715 # 94d <__CTOR_LIST__-0x1bfff6b7>
1c008cda:	970a                	add	a4,a4,sp
1c008cdc:	06978793          	addi	a5,a5,105 # 62b68069 <__l2_shared_end+0x46b58069>
1c008ce0:	c31c                	sw	a5,0(a4)
1c008ce2:	6705                	lui	a4,0x1
1c008ce4:	2d65b7b7          	lui	a5,0x2d65b
1c008ce8:	95170713          	addi	a4,a4,-1711 # 951 <__CTOR_LIST__-0x1bfff6b3>
1c008cec:	970a                	add	a4,a4,sp
1c008cee:	18078793          	addi	a5,a5,384 # 2d65b180 <__l2_shared_end+0x1164b180>
1c008cf2:	c31c                	sw	a5,0(a4)
1c008cf4:	6705                	lui	a4,0x1
1c008cf6:	0724f7b7          	lui	a5,0x724f
1c008cfa:	95570713          	addi	a4,a4,-1707 # 955 <__CTOR_LIST__-0x1bfff6af>
1c008cfe:	970a                	add	a4,a4,sp
1c008d00:	57278793          	addi	a5,a5,1394 # 724f572 <__CTOR_LIST__-0x14db0a92>
1c008d04:	c31c                	sw	a5,0(a4)
1c008d06:	6705                	lui	a4,0x1
1c008d08:	855f07b7          	lui	a5,0x855f0
1c008d0c:	95970713          	addi	a4,a4,-1703 # 959 <__CTOR_LIST__-0x1bfff6ab>
1c008d10:	970a                	add	a4,a4,sp
1c008d12:	1a878793          	addi	a5,a5,424 # 855f01a8 <pulp__FC+0x855f01a9>
1c008d16:	c31c                	sw	a5,0(a4)
1c008d18:	6705                	lui	a4,0x1
1c008d1a:	b275a7b7          	lui	a5,0xb275a
1c008d1e:	95d70713          	addi	a4,a4,-1699 # 95d <__CTOR_LIST__-0x1bfff6a7>
1c008d22:	970a                	add	a4,a4,sp
1c008d24:	ec278793          	addi	a5,a5,-318 # b2759ec2 <pulp__FC+0xb2759ec3>
1c008d28:	c31c                	sw	a5,0(a4)
1c008d2a:	6705                	lui	a4,0x1
1c008d2c:	a43397b7          	lui	a5,0xa4339
1c008d30:	96170713          	addi	a4,a4,-1695 # 961 <__CTOR_LIST__-0x1bfff6a3>
1c008d34:	970a                	add	a4,a4,sp
1c008d36:	91578793          	addi	a5,a5,-1771 # a4338915 <pulp__FC+0xa4338916>
1c008d3a:	c31c                	sw	a5,0(a4)
1c008d3c:	6705                	lui	a4,0x1
1c008d3e:	b37d97b7          	lui	a5,0xb37d9
1c008d42:	96570713          	addi	a4,a4,-1691 # 965 <__CTOR_LIST__-0x1bfff69f>
1c008d46:	970a                	add	a4,a4,sp
1c008d48:	8f578793          	addi	a5,a5,-1803 # b37d88f5 <pulp__FC+0xb37d88f6>
1c008d4c:	c31c                	sw	a5,0(a4)
1c008d4e:	6705                	lui	a4,0x1
1c008d50:	cd83b7b7          	lui	a5,0xcd83b
1c008d54:	96970713          	addi	a4,a4,-1687 # 969 <__CTOR_LIST__-0x1bfff69b>
1c008d58:	970a                	add	a4,a4,sp
1c008d5a:	52078793          	addi	a5,a5,1312 # cd83b520 <pulp__FC+0xcd83b521>
1c008d5e:	c31c                	sw	a5,0(a4)
1c008d60:	6705                	lui	a4,0x1
1c008d62:	4e27d7b7          	lui	a5,0x4e27d
1c008d66:	96d70713          	addi	a4,a4,-1683 # 96d <__CTOR_LIST__-0x1bfff697>
1c008d6a:	970a                	add	a4,a4,sp
1c008d6c:	acb78793          	addi	a5,a5,-1333 # 4e27cacb <__l2_shared_end+0x3226cacb>
1c008d70:	c31c                	sw	a5,0(a4)
1c008d72:	6705                	lui	a4,0x1
1c008d74:	70f827b7          	lui	a5,0x70f82
1c008d78:	97170713          	addi	a4,a4,-1679 # 971 <__CTOR_LIST__-0x1bfff693>
1c008d7c:	970a                	add	a4,a4,sp
1c008d7e:	1ac78793          	addi	a5,a5,428 # 70f821ac <__l2_shared_end+0x54f721ac>
1c008d82:	c31c                	sw	a5,0(a4)
1c008d84:	6705                	lui	a4,0x1
1c008d86:	bcb887b7          	lui	a5,0xbcb88
1c008d8a:	97570713          	addi	a4,a4,-1675 # 975 <__CTOR_LIST__-0x1bfff68f>
1c008d8e:	970a                	add	a4,a4,sp
1c008d90:	92878793          	addi	a5,a5,-1752 # bcb87928 <pulp__FC+0xbcb87929>
1c008d94:	c31c                	sw	a5,0(a4)
1c008d96:	6705                	lui	a4,0x1
1c008d98:	ba6307b7          	lui	a5,0xba630
1c008d9c:	97970713          	addi	a4,a4,-1671 # 979 <__CTOR_LIST__-0x1bfff68b>
1c008da0:	970a                	add	a4,a4,sp
1c008da2:	b4a78793          	addi	a5,a5,-1206 # ba62fb4a <pulp__FC+0xba62fb4b>
1c008da6:	c31c                	sw	a5,0(a4)
1c008da8:	6705                	lui	a4,0x1
1c008daa:	651477b7          	lui	a5,0x65147
1c008dae:	97d70713          	addi	a4,a4,-1667 # 97d <__CTOR_LIST__-0x1bfff687>
1c008db2:	970a                	add	a4,a4,sp
1c008db4:	d0578793          	addi	a5,a5,-763 # 65146d05 <__l2_shared_end+0x49136d05>
1c008db8:	c31c                	sw	a5,0(a4)
1c008dba:	6705                	lui	a4,0x1
1c008dbc:	541597b7          	lui	a5,0x54159
1c008dc0:	98170713          	addi	a4,a4,-1663 # 981 <__CTOR_LIST__-0x1bfff683>
1c008dc4:	970a                	add	a4,a4,sp
1c008dc6:	21278793          	addi	a5,a5,530 # 54159212 <__l2_shared_end+0x38149212>
1c008dca:	c31c                	sw	a5,0(a4)
1c008dcc:	6705                	lui	a4,0x1
1c008dce:	4d4667b7          	lui	a5,0x4d466
1c008dd2:	98570713          	addi	a4,a4,-1659 # 985 <__CTOR_LIST__-0x1bfff67f>
1c008dd6:	970a                	add	a4,a4,sp
1c008dd8:	5c778793          	addi	a5,a5,1479 # 4d4665c7 <__l2_shared_end+0x314565c7>
1c008ddc:	c31c                	sw	a5,0(a4)
1c008dde:	6705                	lui	a4,0x1
1c008de0:	3cbd97b7          	lui	a5,0x3cbd9
1c008de4:	98970713          	addi	a4,a4,-1655 # 989 <__CTOR_LIST__-0x1bfff67b>
1c008de8:	970a                	add	a4,a4,sp
1c008dea:	64c78793          	addi	a5,a5,1612 # 3cbd964c <__l2_shared_end+0x20bc964c>
1c008dee:	c31c                	sw	a5,0(a4)
1c008df0:	6705                	lui	a4,0x1
1c008df2:	182097b7          	lui	a5,0x18209
1c008df6:	98d70713          	addi	a4,a4,-1651 # 98d <__CTOR_LIST__-0x1bfff677>
1c008dfa:	970a                	add	a4,a4,sp
1c008dfc:	79a78793          	addi	a5,a5,1946 # 1820979a <__CTOR_LIST__-0x3df686a>
1c008e00:	c31c                	sw	a5,0(a4)
1c008e02:	6705                	lui	a4,0x1
1c008e04:	d03937b7          	lui	a5,0xd0393
1c008e08:	99170713          	addi	a4,a4,-1647 # 991 <__CTOR_LIST__-0x1bfff673>
1c008e0c:	970a                	add	a4,a4,sp
1c008e0e:	37c78793          	addi	a5,a5,892 # d039337c <pulp__FC+0xd039337d>
1c008e12:	c31c                	sw	a5,0(a4)
1c008e14:	6705                	lui	a4,0x1
1c008e16:	bbc447b7          	lui	a5,0xbbc44
1c008e1a:	99570713          	addi	a4,a4,-1643 # 995 <__CTOR_LIST__-0x1bfff66f>
1c008e1e:	970a                	add	a4,a4,sp
1c008e20:	b5978793          	addi	a5,a5,-1191 # bbc43b59 <pulp__FC+0xbbc43b5a>
1c008e24:	c31c                	sw	a5,0(a4)
1c008e26:	6705                	lui	a4,0x1
1c008e28:	465597b7          	lui	a5,0x46559
1c008e2c:	99970713          	addi	a4,a4,-1639 # 999 <__CTOR_LIST__-0x1bfff66b>
1c008e30:	970a                	add	a4,a4,sp
1c008e32:	1a578793          	addi	a5,a5,421 # 465591a5 <__l2_shared_end+0x2a5491a5>
1c008e36:	c31c                	sw	a5,0(a4)
1c008e38:	6705                	lui	a4,0x1
1c008e3a:	68b8f7b7          	lui	a5,0x68b8f
1c008e3e:	99d70713          	addi	a4,a4,-1635 # 99d <__CTOR_LIST__-0x1bfff667>
1c008e42:	970a                	add	a4,a4,sp
1c008e44:	69f78793          	addi	a5,a5,1695 # 68b8f69f <__l2_shared_end+0x4cb7f69f>
1c008e48:	c31c                	sw	a5,0(a4)
1c008e4a:	6705                	lui	a4,0x1
1c008e4c:	fac567b7          	lui	a5,0xfac56
1c008e50:	9a170713          	addi	a4,a4,-1631 # 9a1 <__CTOR_LIST__-0x1bfff663>
1c008e54:	970a                	add	a4,a4,sp
1c008e56:	f8a78793          	addi	a5,a5,-118 # fac55f8a <pulp__FC+0xfac55f8b>
1c008e5a:	c31c                	sw	a5,0(a4)
1c008e5c:	6705                	lui	a4,0x1
1c008e5e:	07d447b7          	lui	a5,0x7d44
1c008e62:	9a570713          	addi	a4,a4,-1627 # 9a5 <__CTOR_LIST__-0x1bfff65f>
1c008e66:	970a                	add	a4,a4,sp
1c008e68:	66b78793          	addi	a5,a5,1643 # 7d4466b <__CTOR_LIST__-0x142bb999>
1c008e6c:	c31c                	sw	a5,0(a4)
1c008e6e:	6705                	lui	a4,0x1
1c008e70:	16bd77b7          	lui	a5,0x16bd7
1c008e74:	9a970713          	addi	a4,a4,-1623 # 9a9 <__CTOR_LIST__-0x1bfff65b>
1c008e78:	970a                	add	a4,a4,sp
1c008e7a:	80678793          	addi	a5,a5,-2042 # 16bd6806 <__CTOR_LIST__-0x54297fe>
1c008e7e:	c31c                	sw	a5,0(a4)
1c008e80:	6705                	lui	a4,0x1
1c008e82:	647967b7          	lui	a5,0x64796
1c008e86:	9ad70713          	addi	a4,a4,-1619 # 9ad <__CTOR_LIST__-0x1bfff657>
1c008e8a:	970a                	add	a4,a4,sp
1c008e8c:	f8c78793          	addi	a5,a5,-116 # 64795f8c <__l2_shared_end+0x48785f8c>
1c008e90:	c31c                	sw	a5,0(a4)
1c008e92:	6705                	lui	a4,0x1
1c008e94:	400977b7          	lui	a5,0x40097
1c008e98:	9b170713          	addi	a4,a4,-1615 # 9b1 <__CTOR_LIST__-0x1bfff653>
1c008e9c:	970a                	add	a4,a4,sp
1c008e9e:	69278793          	addi	a5,a5,1682 # 40097692 <__l2_shared_end+0x24087692>
1c008ea2:	c31c                	sw	a5,0(a4)
1c008ea4:	6705                	lui	a4,0x1
1c008ea6:	6227a7b7          	lui	a5,0x6227a
1c008eaa:	9b570713          	addi	a4,a4,-1611 # 9b5 <__CTOR_LIST__-0x1bfff64f>
1c008eae:	970a                	add	a4,a4,sp
1c008eb0:	99978793          	addi	a5,a5,-1639 # 62279999 <__l2_shared_end+0x46269999>
1c008eb4:	c31c                	sw	a5,0(a4)
1c008eb6:	6705                	lui	a4,0x1
1c008eb8:	41b237b7          	lui	a5,0x41b23
1c008ebc:	9b970713          	addi	a4,a4,-1607 # 9b9 <__CTOR_LIST__-0x1bfff64b>
1c008ec0:	970a                	add	a4,a4,sp
1c008ec2:	68278793          	addi	a5,a5,1666 # 41b23682 <__l2_shared_end+0x25b13682>
1c008ec6:	c31c                	sw	a5,0(a4)
1c008ec8:	6705                	lui	a4,0x1
1c008eca:	8d4377b7          	lui	a5,0x8d437
1c008ece:	9bd70713          	addi	a4,a4,-1603 # 9bd <__CTOR_LIST__-0x1bfff647>
1c008ed2:	970a                	add	a4,a4,sp
1c008ed4:	82978793          	addi	a5,a5,-2007 # 8d436829 <pulp__FC+0x8d43682a>
1c008ed8:	c31c                	sw	a5,0(a4)
1c008eda:	6705                	lui	a4,0x1
1c008edc:	972ac7b7          	lui	a5,0x972ac
1c008ee0:	9c170713          	addi	a4,a4,-1599 # 9c1 <__CTOR_LIST__-0x1bfff643>
1c008ee4:	970a                	add	a4,a4,sp
1c008ee6:	c2c78793          	addi	a5,a5,-980 # 972abc2c <pulp__FC+0x972abc2d>
1c008eea:	c31c                	sw	a5,0(a4)
1c008eec:	6705                	lui	a4,0x1
1c008eee:	7309c7b7          	lui	a5,0x7309c
1c008ef2:	9c570713          	addi	a4,a4,-1595 # 9c5 <__CTOR_LIST__-0x1bfff63f>
1c008ef6:	970a                	add	a4,a4,sp
1c008ef8:	c8a78793          	addi	a5,a5,-886 # 7309bc8a <__l2_shared_end+0x5708bc8a>
1c008efc:	c31c                	sw	a5,0(a4)
1c008efe:	6705                	lui	a4,0x1
1c008f00:	0e1b37b7          	lui	a5,0xe1b3
1c008f04:	9c970713          	addi	a4,a4,-1591 # 9c9 <__CTOR_LIST__-0x1bfff63b>
1c008f08:	970a                	add	a4,a4,sp
1c008f0a:	92078793          	addi	a5,a5,-1760 # e1b2920 <__CTOR_LIST__-0xde4d6e4>
1c008f0e:	c31c                	sw	a5,0(a4)
1c008f10:	6705                	lui	a4,0x1
1c008f12:	1e63e7b7          	lui	a5,0x1e63e
1c008f16:	9cd70713          	addi	a4,a4,-1587 # 9cd <__CTOR_LIST__-0x1bfff637>
1c008f1a:	970a                	add	a4,a4,sp
1c008f1c:	4d778793          	addi	a5,a5,1239 # 1e63e4d7 <__l2_shared_end+0x262e4d7>
1c008f20:	c31c                	sw	a5,0(a4)
1c008f22:	6705                	lui	a4,0x1
1c008f24:	8ae2c7b7          	lui	a5,0x8ae2c
1c008f28:	9d170713          	addi	a4,a4,-1583 # 9d1 <__CTOR_LIST__-0x1bfff633>
1c008f2c:	970a                	add	a4,a4,sp
1c008f2e:	bc978793          	addi	a5,a5,-1079 # 8ae2bbc9 <pulp__FC+0x8ae2bbca>
1c008f32:	c31c                	sw	a5,0(a4)
1c008f34:	6705                	lui	a4,0x1
1c008f36:	86b647b7          	lui	a5,0x86b64
1c008f3a:	9d570713          	addi	a4,a4,-1579 # 9d5 <__CTOR_LIST__-0x1bfff62f>
1c008f3e:	970a                	add	a4,a4,sp
1c008f40:	ac678793          	addi	a5,a5,-1338 # 86b63ac6 <pulp__FC+0x86b63ac7>
1c008f44:	c31c                	sw	a5,0(a4)
1c008f46:	6705                	lui	a4,0x1
1c008f48:	c16a97b7          	lui	a5,0xc16a9
1c008f4c:	9d970713          	addi	a4,a4,-1575 # 9d9 <__CTOR_LIST__-0x1bfff62b>
1c008f50:	970a                	add	a4,a4,sp
1c008f52:	70e78793          	addi	a5,a5,1806 # c16a970e <pulp__FC+0xc16a970f>
1c008f56:	c31c                	sw	a5,0(a4)
1c008f58:	6705                	lui	a4,0x1
1c008f5a:	43fc37b7          	lui	a5,0x43fc3
1c008f5e:	9dd70713          	addi	a4,a4,-1571 # 9dd <__CTOR_LIST__-0x1bfff627>
1c008f62:	970a                	add	a4,a4,sp
1c008f64:	a5578793          	addi	a5,a5,-1451 # 43fc2a55 <__l2_shared_end+0x27fb2a55>
1c008f68:	c31c                	sw	a5,0(a4)
1c008f6a:	6705                	lui	a4,0x1
1c008f6c:	376987b7          	lui	a5,0x37698
1c008f70:	9e170713          	addi	a4,a4,-1567 # 9e1 <__CTOR_LIST__-0x1bfff623>
1c008f74:	970a                	add	a4,a4,sp
1c008f76:	d8978793          	addi	a5,a5,-631 # 37697d89 <__l2_shared_end+0x1b687d89>
1c008f7a:	c31c                	sw	a5,0(a4)
1c008f7c:	6705                	lui	a4,0x1
1c008f7e:	2d4397b7          	lui	a5,0x2d439
1c008f82:	9e570713          	addi	a4,a4,-1563 # 9e5 <__CTOR_LIST__-0x1bfff61f>
1c008f86:	970a                	add	a4,a4,sp
1c008f88:	2a078793          	addi	a5,a5,672 # 2d4392a0 <__l2_shared_end+0x114292a0>
1c008f8c:	c31c                	sw	a5,0(a4)
1c008f8e:	6705                	lui	a4,0x1
1c008f90:	14a987b7          	lui	a5,0x14a98
1c008f94:	9e970713          	addi	a4,a4,-1559 # 9e9 <__CTOR_LIST__-0x1bfff61b>
1c008f98:	970a                	add	a4,a4,sp
1c008f9a:	1c478793          	addi	a5,a5,452 # 14a981c4 <__CTOR_LIST__-0x7567e40>
1c008f9e:	c31c                	sw	a5,0(a4)
1c008fa0:	6705                	lui	a4,0x1
1c008fa2:	3c27a7b7          	lui	a5,0x3c27a
1c008fa6:	9ed70713          	addi	a4,a4,-1555 # 9ed <__CTOR_LIST__-0x1bfff617>
1c008faa:	970a                	add	a4,a4,sp
1c008fac:	1c378793          	addi	a5,a5,451 # 3c27a1c3 <__l2_shared_end+0x2026a1c3>
1c008fb0:	c31c                	sw	a5,0(a4)
1c008fb2:	6705                	lui	a4,0x1
1c008fb4:	8e9e07b7          	lui	a5,0x8e9e0
1c008fb8:	9f170713          	addi	a4,a4,-1551 # 9f1 <__CTOR_LIST__-0x1bfff613>
1c008fbc:	970a                	add	a4,a4,sp
1c008fbe:	04378793          	addi	a5,a5,67 # 8e9e0043 <pulp__FC+0x8e9e0044>
1c008fc2:	c31c                	sw	a5,0(a4)
1c008fc4:	6705                	lui	a4,0x1
1c008fc6:	93cb27b7          	lui	a5,0x93cb2
1c008fca:	9f570713          	addi	a4,a4,-1547 # 9f5 <__CTOR_LIST__-0x1bfff60f>
1c008fce:	970a                	add	a4,a4,sp
1c008fd0:	3c578793          	addi	a5,a5,965 # 93cb23c5 <pulp__FC+0x93cb23c6>
1c008fd4:	c31c                	sw	a5,0(a4)
1c008fd6:	6705                	lui	a4,0x1
1c008fd8:	8f89e7b7          	lui	a5,0x8f89e
1c008fdc:	9f970713          	addi	a4,a4,-1543 # 9f9 <__CTOR_LIST__-0x1bfff60b>
1c008fe0:	970a                	add	a4,a4,sp
1c008fe2:	9ce78793          	addi	a5,a5,-1586 # 8f89d9ce <pulp__FC+0x8f89d9cf>
1c008fe6:	c31c                	sw	a5,0(a4)
1c008fe8:	6705                	lui	a4,0x1
1c008fea:	405397b7          	lui	a5,0x40539
1c008fee:	9fd70713          	addi	a4,a4,-1539 # 9fd <__CTOR_LIST__-0x1bfff607>
1c008ff2:	970a                	add	a4,a4,sp
1c008ff4:	09078793          	addi	a5,a5,144 # 40539090 <__l2_shared_end+0x24529090>
1c008ff8:	c31c                	sw	a5,0(a4)
1c008ffa:	6705                	lui	a4,0x1
1c008ffc:	bc0177b7          	lui	a5,0xbc017
1c009000:	a0170713          	addi	a4,a4,-1535 # a01 <__CTOR_LIST__-0x1bfff603>
1c009004:	970a                	add	a4,a4,sp
1c009006:	eba78793          	addi	a5,a5,-326 # bc016eba <pulp__FC+0xbc016ebb>
1c00900a:	c31c                	sw	a5,0(a4)
1c00900c:	6705                	lui	a4,0x1
1c00900e:	a80337b7          	lui	a5,0xa8033
1c009012:	a0570713          	addi	a4,a4,-1531 # a05 <__CTOR_LIST__-0x1bfff5ff>
1c009016:	970a                	add	a4,a4,sp
1c009018:	d5778793          	addi	a5,a5,-681 # a8032d57 <pulp__FC+0xa8032d58>
1c00901c:	c31c                	sw	a5,0(a4)
1c00901e:	6705                	lui	a4,0x1
1c009020:	c42207b7          	lui	a5,0xc4220
1c009024:	a0970713          	addi	a4,a4,-1527 # a09 <__CTOR_LIST__-0x1bfff5fb>
1c009028:	970a                	add	a4,a4,sp
1c00902a:	a9378793          	addi	a5,a5,-1389 # c421fa93 <pulp__FC+0xc421fa94>
1c00902e:	c31c                	sw	a5,0(a4)
1c009030:	6705                	lui	a4,0x1
1c009032:	dc8837b7          	lui	a5,0xdc883
1c009036:	a0d70713          	addi	a4,a4,-1523 # a0d <__CTOR_LIST__-0x1bfff5f7>
1c00903a:	970a                	add	a4,a4,sp
1c00903c:	d3478793          	addi	a5,a5,-716 # dc882d34 <pulp__FC+0xdc882d35>
1c009040:	c31c                	sw	a5,0(a4)
1c009042:	6705                	lui	a4,0x1
1c009044:	3bb377b7          	lui	a5,0x3bb37
1c009048:	a1170713          	addi	a4,a4,-1519 # a11 <__CTOR_LIST__-0x1bfff5f3>
1c00904c:	970a                	add	a4,a4,sp
1c00904e:	73e78793          	addi	a5,a5,1854 # 3bb3773e <__l2_shared_end+0x1fb2773e>
1c009052:	c31c                	sw	a5,0(a4)
1c009054:	6705                	lui	a4,0x1
1c009056:	dc63c7b7          	lui	a5,0xdc63c
1c00905a:	a1570713          	addi	a4,a4,-1515 # a15 <__CTOR_LIST__-0x1bfff5ef>
1c00905e:	970a                	add	a4,a4,sp
1c009060:	07fd                	addi	a5,a5,31
1c009062:	c31c                	sw	a5,0(a4)
1c009064:	6705                	lui	a4,0x1
1c009066:	8c9d77b7          	lui	a5,0x8c9d7
1c00906a:	a1970713          	addi	a4,a4,-1511 # a19 <__CTOR_LIST__-0x1bfff5eb>
1c00906e:	970a                	add	a4,a4,sp
1c009070:	8db78793          	addi	a5,a5,-1829 # 8c9d68db <pulp__FC+0x8c9d68dc>
1c009074:	c31c                	sw	a5,0(a4)
1c009076:	6705                	lui	a4,0x1
1c009078:	0c8507b7          	lui	a5,0xc850
1c00907c:	a1d70713          	addi	a4,a4,-1507 # a1d <__CTOR_LIST__-0x1bfff5e7>
1c009080:	970a                	add	a4,a4,sp
1c009082:	c4f78793          	addi	a5,a5,-945 # c84fc4f <__CTOR_LIST__-0xf7b03b5>
1c009086:	c31c                	sw	a5,0(a4)
1c009088:	6705                	lui	a4,0x1
1c00908a:	b3cf87b7          	lui	a5,0xb3cf8
1c00908e:	a2170713          	addi	a4,a4,-1503 # a21 <__CTOR_LIST__-0x1bfff5e3>
1c009092:	970a                	add	a4,a4,sp
1c009094:	9e878793          	addi	a5,a5,-1560 # b3cf79e8 <pulp__FC+0xb3cf79e9>
1c009098:	c31c                	sw	a5,0(a4)
1c00909a:	6705                	lui	a4,0x1
1c00909c:	518517b7          	lui	a5,0x51851
1c0090a0:	a2570713          	addi	a4,a4,-1499 # a25 <__CTOR_LIST__-0x1bfff5df>
1c0090a4:	970a                	add	a4,a4,sp
1c0090a6:	34778793          	addi	a5,a5,839 # 51851347 <__l2_shared_end+0x35841347>
1c0090aa:	c31c                	sw	a5,0(a4)
1c0090ac:	6705                	lui	a4,0x1
1c0090ae:	77f1                	lui	a5,0xffffc
1c0090b0:	a2970713          	addi	a4,a4,-1495 # a29 <__CTOR_LIST__-0x1bfff5db>
1c0090b4:	970a                	add	a4,a4,sp
1c0090b6:	72c78793          	addi	a5,a5,1836 # ffffc72c <pulp__FC+0xffffc72d>
1c0090ba:	00f71023          	sh	a5,0(a4)
1c0090be:	6705                	lui	a4,0x1
1c0090c0:	b18317b7          	lui	a5,0xb1831
1c0090c4:	a2c70713          	addi	a4,a4,-1492 # a2c <__CTOR_LIST__-0x1bfff5d8>
1c0090c8:	970a                	add	a4,a4,sp
1c0090ca:	35978793          	addi	a5,a5,857 # b1831359 <pulp__FC+0xb183135a>
1c0090ce:	c31c                	sw	a5,0(a4)
1c0090d0:	6705                	lui	a4,0x1
1c0090d2:	3298d7b7          	lui	a5,0x3298d
1c0090d6:	a3070713          	addi	a4,a4,-1488 # a30 <__CTOR_LIST__-0x1bfff5d4>
1c0090da:	970a                	add	a4,a4,sp
1c0090dc:	8fa78793          	addi	a5,a5,-1798 # 3298c8fa <__l2_shared_end+0x1697c8fa>
1c0090e0:	c31c                	sw	a5,0(a4)
1c0090e2:	6705                	lui	a4,0x1
1c0090e4:	32b327b7          	lui	a5,0x32b32
1c0090e8:	a3470713          	addi	a4,a4,-1484 # a34 <__CTOR_LIST__-0x1bfff5d0>
1c0090ec:	970a                	add	a4,a4,sp
1c0090ee:	cbb78793          	addi	a5,a5,-837 # 32b31cbb <__l2_shared_end+0x16b21cbb>
1c0090f2:	c31c                	sw	a5,0(a4)
1c0090f4:	6705                	lui	a4,0x1
1c0090f6:	682877b7          	lui	a5,0x68287
1c0090fa:	a3870713          	addi	a4,a4,-1480 # a38 <__CTOR_LIST__-0x1bfff5cc>
1c0090fe:	970a                	add	a4,a4,sp
1c009100:	d4e78793          	addi	a5,a5,-690 # 68286d4e <__l2_shared_end+0x4c276d4e>
1c009104:	c31c                	sw	a5,0(a4)
1c009106:	6705                	lui	a4,0x1
1c009108:	a2b70713          	addi	a4,a4,-1493 # a2b <__CTOR_LIST__-0x1bfff5d9>
1c00910c:	970a                	add	a4,a4,sp
1c00910e:	fc700793          	li	a5,-57
1c009112:	00f70023          	sb	a5,0(a4)
1c009116:	6705                	lui	a4,0x1
1c009118:	cb4497b7          	lui	a5,0xcb449
1c00911c:	a3c70713          	addi	a4,a4,-1476 # a3c <__CTOR_LIST__-0x1bfff5c8>
1c009120:	970a                	add	a4,a4,sp
1c009122:	89178793          	addi	a5,a5,-1903 # cb448891 <pulp__FC+0xcb448892>
1c009126:	c31c                	sw	a5,0(a4)
1c009128:	6705                	lui	a4,0x1
1c00912a:	f84dd7b7          	lui	a5,0xf84dd
1c00912e:	a4070713          	addi	a4,a4,-1472 # a40 <__CTOR_LIST__-0x1bfff5c4>
1c009132:	970a                	add	a4,a4,sp
1c009134:	a2078793          	addi	a5,a5,-1504 # f84dca20 <pulp__FC+0xf84dca21>
1c009138:	c31c                	sw	a5,0(a4)
1c00913a:	6705                	lui	a4,0x1
1c00913c:	2428b7b7          	lui	a5,0x2428b
1c009140:	a4470713          	addi	a4,a4,-1468 # a44 <__CTOR_LIST__-0x1bfff5c0>
1c009144:	970a                	add	a4,a4,sp
1c009146:	41278793          	addi	a5,a5,1042 # 2428b412 <__l2_shared_end+0x827b412>
1c00914a:	c31c                	sw	a5,0(a4)
1c00914c:	6705                	lui	a4,0x1
1c00914e:	384337b7          	lui	a5,0x38433
1c009152:	a4870713          	addi	a4,a4,-1464 # a48 <__CTOR_LIST__-0x1bfff5bc>
1c009156:	970a                	add	a4,a4,sp
1c009158:	a1978793          	addi	a5,a5,-1511 # 38432a19 <__l2_shared_end+0x1c422a19>
1c00915c:	c31c                	sw	a5,0(a4)
1c00915e:	6705                	lui	a4,0x1
1c009160:	4f8e17b7          	lui	a5,0x4f8e1
1c009164:	a8470713          	addi	a4,a4,-1404 # a84 <__CTOR_LIST__-0x1bfff580>
1c009168:	970a                	add	a4,a4,sp
1c00916a:	54878793          	addi	a5,a5,1352 # 4f8e1548 <__l2_shared_end+0x338d1548>
1c00916e:	c31c                	sw	a5,0(a4)
1c009170:	6705                	lui	a4,0x1
1c009172:	c85867b7          	lui	a5,0xc8586
1c009176:	a8070713          	addi	a4,a4,-1408 # a80 <__CTOR_LIST__-0x1bfff584>
1c00917a:	970a                	add	a4,a4,sp
1c00917c:	98f78793          	addi	a5,a5,-1649 # c858598f <pulp__FC+0xc8585990>
1c009180:	c31c                	sw	a5,0(a4)
1c009182:	6705                	lui	a4,0x1
1c009184:	d7e667b7          	lui	a5,0xd7e66
1c009188:	a7c70713          	addi	a4,a4,-1412 # a7c <__CTOR_LIST__-0x1bfff588>
1c00918c:	970a                	add	a4,a4,sp
1c00918e:	3c278793          	addi	a5,a5,962 # d7e663c2 <pulp__FC+0xd7e663c3>
1c009192:	c31c                	sw	a5,0(a4)
1c009194:	6705                	lui	a4,0x1
1c009196:	d47a17b7          	lui	a5,0xd47a1
1c00919a:	a7870713          	addi	a4,a4,-1416 # a78 <__CTOR_LIST__-0x1bfff58c>
1c00919e:	970a                	add	a4,a4,sp
1c0091a0:	7b078793          	addi	a5,a5,1968 # d47a17b0 <pulp__FC+0xd47a17b1>
1c0091a4:	c31c                	sw	a5,0(a4)
1c0091a6:	6705                	lui	a4,0x1
1c0091a8:	157207b7          	lui	a5,0x15720
1c0091ac:	a7470713          	addi	a4,a4,-1420 # a74 <__CTOR_LIST__-0x1bfff590>
1c0091b0:	970a                	add	a4,a4,sp
1c0091b2:	3cb78793          	addi	a5,a5,971 # 157203cb <__CTOR_LIST__-0x68dfc39>
1c0091b6:	c31c                	sw	a5,0(a4)
1c0091b8:	6705                	lui	a4,0x1
1c0091ba:	910cc7b7          	lui	a5,0x910cc
1c0091be:	a7070713          	addi	a4,a4,-1424 # a70 <__CTOR_LIST__-0x1bfff594>
1c0091c2:	970a                	add	a4,a4,sp
1c0091c4:	fb778793          	addi	a5,a5,-73 # 910cbfb7 <pulp__FC+0x910cbfb8>
1c0091c8:	c31c                	sw	a5,0(a4)
1c0091ca:	6705                	lui	a4,0x1
1c0091cc:	998a37b7          	lui	a5,0x998a3
1c0091d0:	a6c70713          	addi	a4,a4,-1428 # a6c <__CTOR_LIST__-0x1bfff598>
1c0091d4:	970a                	add	a4,a4,sp
1c0091d6:	24578793          	addi	a5,a5,581 # 998a3245 <pulp__FC+0x998a3246>
1c0091da:	c31c                	sw	a5,0(a4)
1c0091dc:	6705                	lui	a4,0x1
1c0091de:	a3f857b7          	lui	a5,0xa3f85
1c0091e2:	a6870713          	addi	a4,a4,-1432 # a68 <__CTOR_LIST__-0x1bfff59c>
1c0091e6:	970a                	add	a4,a4,sp
1c0091e8:	84e78793          	addi	a5,a5,-1970 # a3f8484e <pulp__FC+0xa3f8484f>
1c0091ec:	c31c                	sw	a5,0(a4)
1c0091ee:	6705                	lui	a4,0x1
1c0091f0:	d6f437b7          	lui	a5,0xd6f43
1c0091f4:	a6470713          	addi	a4,a4,-1436 # a64 <__CTOR_LIST__-0x1bfff5a0>
1c0091f8:	970a                	add	a4,a4,sp
1c0091fa:	a1178793          	addi	a5,a5,-1519 # d6f42a11 <pulp__FC+0xd6f42a12>
1c0091fe:	c31c                	sw	a5,0(a4)
1c009200:	6705                	lui	a4,0x1
1c009202:	a013a7b7          	lui	a5,0xa013a
1c009206:	a6070713          	addi	a4,a4,-1440 # a60 <__CTOR_LIST__-0x1bfff5a4>
1c00920a:	970a                	add	a4,a4,sp
1c00920c:	6b778793          	addi	a5,a5,1719 # a013a6b7 <pulp__FC+0xa013a6b8>
1c009210:	c31c                	sw	a5,0(a4)
1c009212:	6705                	lui	a4,0x1
1c009214:	8f10c7b7          	lui	a5,0x8f10c
1c009218:	a5c70713          	addi	a4,a4,-1444 # a5c <__CTOR_LIST__-0x1bfff5a8>
1c00921c:	970a                	add	a4,a4,sp
1c00921e:	0b578793          	addi	a5,a5,181 # 8f10c0b5 <pulp__FC+0x8f10c0b6>
1c009222:	c31c                	sw	a5,0(a4)
1c009224:	6705                	lui	a4,0x1
1c009226:	917b17b7          	lui	a5,0x917b1
1c00922a:	a5870713          	addi	a4,a4,-1448 # a58 <__CTOR_LIST__-0x1bfff5ac>
1c00922e:	970a                	add	a4,a4,sp
1c009230:	55578793          	addi	a5,a5,1365 # 917b1555 <pulp__FC+0x917b1556>
1c009234:	c31c                	sw	a5,0(a4)
1c009236:	6705                	lui	a4,0x1
1c009238:	e0cf67b7          	lui	a5,0xe0cf6
1c00923c:	a5470713          	addi	a4,a4,-1452 # a54 <__CTOR_LIST__-0x1bfff5b0>
1c009240:	970a                	add	a4,a4,sp
1c009242:	4d078793          	addi	a5,a5,1232 # e0cf64d0 <pulp__FC+0xe0cf64d1>
1c009246:	c31c                	sw	a5,0(a4)
1c009248:	6705                	lui	a4,0x1
1c00924a:	1ec447b7          	lui	a5,0x1ec44
1c00924e:	a5070713          	addi	a4,a4,-1456 # a50 <__CTOR_LIST__-0x1bfff5b4>
1c009252:	970a                	add	a4,a4,sp
1c009254:	a7f78793          	addi	a5,a5,-1409 # 1ec43a7f <__l2_shared_end+0x2c33a7f>
1c009258:	c31c                	sw	a5,0(a4)
1c00925a:	6705                	lui	a4,0x1
1c00925c:	7aa337b7          	lui	a5,0x7aa33
1c009260:	a4c70713          	addi	a4,a4,-1460 # a4c <__CTOR_LIST__-0x1bfff5b8>
1c009264:	970a                	add	a4,a4,sp
1c009266:	0791                	addi	a5,a5,4
1c009268:	c31c                	sw	a5,0(a4)
1c00926a:	6705                	lui	a4,0x1
1c00926c:	247c17b7          	lui	a5,0x247c1
1c009270:	a8870713          	addi	a4,a4,-1400 # a88 <__CTOR_LIST__-0x1bfff57c>
1c009274:	970a                	add	a4,a4,sp
1c009276:	1d278793          	addi	a5,a5,466 # 247c11d2 <__l2_shared_end+0x87b11d2>
1c00927a:	c31c                	sw	a5,0(a4)
1c00927c:	6705                	lui	a4,0x1
1c00927e:	3cab17b7          	lui	a5,0x3cab1
1c009282:	a8c70713          	addi	a4,a4,-1396 # a8c <__CTOR_LIST__-0x1bfff578>
1c009286:	970a                	add	a4,a4,sp
1c009288:	c8e78793          	addi	a5,a5,-882 # 3cab0c8e <__l2_shared_end+0x20aa0c8e>
1c00928c:	c31c                	sw	a5,0(a4)
1c00928e:	6705                	lui	a4,0x1
1c009290:	904a57b7          	lui	a5,0x904a5
1c009294:	ac870713          	addi	a4,a4,-1336 # ac8 <__CTOR_LIST__-0x1bfff53c>
1c009298:	970a                	add	a4,a4,sp
1c00929a:	93d78793          	addi	a5,a5,-1731 # 904a493d <pulp__FC+0x904a493e>
1c00929e:	c31c                	sw	a5,0(a4)
1c0092a0:	6705                	lui	a4,0x1
1c0092a2:	271e97b7          	lui	a5,0x271e9
1c0092a6:	a9070713          	addi	a4,a4,-1392 # a90 <__CTOR_LIST__-0x1bfff574>
1c0092aa:	970a                	add	a4,a4,sp
1c0092ac:	cf978793          	addi	a5,a5,-775 # 271e8cf9 <__l2_shared_end+0xb1d8cf9>
1c0092b0:	c31c                	sw	a5,0(a4)
1c0092b2:	6705                	lui	a4,0x1
1c0092b4:	39b1d7b7          	lui	a5,0x39b1d
1c0092b8:	ac470713          	addi	a4,a4,-1340 # ac4 <__CTOR_LIST__-0x1bfff540>
1c0092bc:	970a                	add	a4,a4,sp
1c0092be:	8da78793          	addi	a5,a5,-1830 # 39b1c8da <__l2_shared_end+0x1db0c8da>
1c0092c2:	c31c                	sw	a5,0(a4)
1c0092c4:	6705                	lui	a4,0x1
1c0092c6:	f83897b7          	lui	a5,0xf8389
1c0092ca:	a9470713          	addi	a4,a4,-1388 # a94 <__CTOR_LIST__-0x1bfff570>
1c0092ce:	970a                	add	a4,a4,sp
1c0092d0:	88678793          	addi	a5,a5,-1914 # f8388886 <pulp__FC+0xf8388887>
1c0092d4:	c31c                	sw	a5,0(a4)
1c0092d6:	6705                	lui	a4,0x1
1c0092d8:	18a537b7          	lui	a5,0x18a53
1c0092dc:	ac070713          	addi	a4,a4,-1344 # ac0 <__CTOR_LIST__-0x1bfff544>
1c0092e0:	970a                	add	a4,a4,sp
1c0092e2:	37b78793          	addi	a5,a5,891 # 18a5337b <__CTOR_LIST__-0x35acc89>
1c0092e6:	c31c                	sw	a5,0(a4)
1c0092e8:	6705                	lui	a4,0x1
1c0092ea:	56a097b7          	lui	a5,0x56a09
1c0092ee:	a9870713          	addi	a4,a4,-1384 # a98 <__CTOR_LIST__-0x1bfff56c>
1c0092f2:	970a                	add	a4,a4,sp
1c0092f4:	b4278793          	addi	a5,a5,-1214 # 56a08b42 <__l2_shared_end+0x3a9f8b42>
1c0092f8:	c31c                	sw	a5,0(a4)
1c0092fa:	6705                	lui	a4,0x1
1c0092fc:	39cac7b7          	lui	a5,0x39cac
1c009300:	abc70713          	addi	a4,a4,-1348 # abc <__CTOR_LIST__-0x1bfff548>
1c009304:	970a                	add	a4,a4,sp
1c009306:	eb378793          	addi	a5,a5,-333 # 39cabeb3 <__l2_shared_end+0x1dc9beb3>
1c00930a:	c31c                	sw	a5,0(a4)
1c00930c:	6705                	lui	a4,0x1
1c00930e:	1eb6f7b7          	lui	a5,0x1eb6f
1c009312:	a9c70713          	addi	a4,a4,-1380 # a9c <__CTOR_LIST__-0x1bfff568>
1c009316:	970a                	add	a4,a4,sp
1c009318:	62d78793          	addi	a5,a5,1581 # 1eb6f62d <__l2_shared_end+0x2b5f62d>
1c00931c:	c31c                	sw	a5,0(a4)
1c00931e:	6705                	lui	a4,0x1
1c009320:	02b727b7          	lui	a5,0x2b72
1c009324:	ab870713          	addi	a4,a4,-1352 # ab8 <__CTOR_LIST__-0x1bfff54c>
1c009328:	970a                	add	a4,a4,sp
1c00932a:	51878793          	addi	a5,a5,1304 # 2b72518 <__CTOR_LIST__-0x1948daec>
1c00932e:	c31c                	sw	a5,0(a4)
1c009330:	6705                	lui	a4,0x1
1c009332:	b8e237b7          	lui	a5,0xb8e23
1c009336:	aa070713          	addi	a4,a4,-1376 # aa0 <__CTOR_LIST__-0x1bfff564>
1c00933a:	970a                	add	a4,a4,sp
1c00933c:	68778793          	addi	a5,a5,1671 # b8e23687 <pulp__FC+0xb8e23688>
1c009340:	c31c                	sw	a5,0(a4)
1c009342:	6705                	lui	a4,0x1
1c009344:	878ec7b7          	lui	a5,0x878ec
1c009348:	ab470713          	addi	a4,a4,-1356 # ab4 <__CTOR_LIST__-0x1bfff550>
1c00934c:	970a                	add	a4,a4,sp
1c00934e:	cd278793          	addi	a5,a5,-814 # 878ebcd2 <pulp__FC+0x878ebcd3>
1c009352:	c31c                	sw	a5,0(a4)
1c009354:	6705                	lui	a4,0x1
1c009356:	796067b7          	lui	a5,0x79606
1c00935a:	aa470713          	addi	a4,a4,-1372 # aa4 <__CTOR_LIST__-0x1bfff560>
1c00935e:	970a                	add	a4,a4,sp
1c009360:	6b278793          	addi	a5,a5,1714 # 796066b2 <__l2_shared_end+0x5d5f66b2>
1c009364:	c31c                	sw	a5,0(a4)
1c009366:	6705                	lui	a4,0x1
1c009368:	a4c2a7b7          	lui	a5,0xa4c2a
1c00936c:	ab070713          	addi	a4,a4,-1360 # ab0 <__CTOR_LIST__-0x1bfff554>
1c009370:	970a                	add	a4,a4,sp
1c009372:	51f78793          	addi	a5,a5,1311 # a4c2a51f <pulp__FC+0xa4c2a520>
1c009376:	c31c                	sw	a5,0(a4)
1c009378:	6705                	lui	a4,0x1
1c00937a:	2ccee7b7          	lui	a5,0x2ccee
1c00937e:	aa870713          	addi	a4,a4,-1368 # aa8 <__CTOR_LIST__-0x1bfff55c>
1c009382:	970a                	add	a4,a4,sp
1c009384:	07e1                	addi	a5,a5,24
1c009386:	c31c                	sw	a5,0(a4)
1c009388:	6705                	lui	a4,0x1
1c00938a:	c867b7b7          	lui	a5,0xc867b
1c00938e:	aac70713          	addi	a4,a4,-1364 # aac <__CTOR_LIST__-0x1bfff558>
1c009392:	970a                	add	a4,a4,sp
1c009394:	178d                	addi	a5,a5,-29
1c009396:	c31c                	sw	a5,0(a4)
1c009398:	6705                	lui	a4,0x1
1c00939a:	b50117b7          	lui	a5,0xb5011
1c00939e:	acc70713          	addi	a4,a4,-1332 # acc <__CTOR_LIST__-0x1bfff538>
1c0093a2:	970a                	add	a4,a4,sp
1c0093a4:	c9078793          	addi	a5,a5,-880 # b5010c90 <pulp__FC+0xb5010c91>
1c0093a8:	c31c                	sw	a5,0(a4)
1c0093aa:	6705                	lui	a4,0x1
1c0093ac:	7c8527b7          	lui	a5,0x7c852
1c0093b0:	ad070713          	addi	a4,a4,-1328 # ad0 <__CTOR_LIST__-0x1bfff534>
1c0093b4:	970a                	add	a4,a4,sp
1c0093b6:	55978793          	addi	a5,a5,1369 # 7c852559 <__l2_shared_end+0x60842559>
1c0093ba:	c31c                	sw	a5,0(a4)
1c0093bc:	6705                	lui	a4,0x1
1c0093be:	052787b7          	lui	a5,0x5278
1c0093c2:	ad470713          	addi	a4,a4,-1324 # ad4 <__CTOR_LIST__-0x1bfff530>
1c0093c6:	970a                	add	a4,a4,sp
1c0093c8:	0bf78793          	addi	a5,a5,191 # 52780bf <__CTOR_LIST__-0x16d87f45>
1c0093cc:	c31c                	sw	a5,0(a4)
1c0093ce:	6705                	lui	a4,0x1
1c0093d0:	f1a437b7          	lui	a5,0xf1a43
1c0093d4:	ad870713          	addi	a4,a4,-1320 # ad8 <__CTOR_LIST__-0x1bfff52c>
1c0093d8:	970a                	add	a4,a4,sp
1c0093da:	61d78793          	addi	a5,a5,1565 # f1a4361d <pulp__FC+0xf1a4361e>
1c0093de:	c31c                	sw	a5,0(a4)
1c0093e0:	6705                	lui	a4,0x1
1c0093e2:	dcd2a7b7          	lui	a5,0xdcd2a
1c0093e6:	adc70713          	addi	a4,a4,-1316 # adc <__CTOR_LIST__-0x1bfff528>
1c0093ea:	970a                	add	a4,a4,sp
1c0093ec:	44178793          	addi	a5,a5,1089 # dcd2a441 <pulp__FC+0xdcd2a442>
1c0093f0:	c31c                	sw	a5,0(a4)
1c0093f2:	6705                	lui	a4,0x1
1c0093f4:	304107b7          	lui	a5,0x30410
1c0093f8:	ae070713          	addi	a4,a4,-1312 # ae0 <__CTOR_LIST__-0x1bfff524>
1c0093fc:	970a                	add	a4,a4,sp
1c0093fe:	34478793          	addi	a5,a5,836 # 30410344 <__l2_shared_end+0x14400344>
1c009402:	c31c                	sw	a5,0(a4)
1c009404:	6705                	lui	a4,0x1
1c009406:	b53c07b7          	lui	a5,0xb53c0
1c00940a:	ae470713          	addi	a4,a4,-1308 # ae4 <__CTOR_LIST__-0x1bfff520>
1c00940e:	970a                	add	a4,a4,sp
1c009410:	35e78793          	addi	a5,a5,862 # b53c035e <pulp__FC+0xb53c035f>
1c009414:	c31c                	sw	a5,0(a4)
1c009416:	6705                	lui	a4,0x1
1c009418:	e44b07b7          	lui	a5,0xe44b0
1c00941c:	ae870713          	addi	a4,a4,-1304 # ae8 <__CTOR_LIST__-0x1bfff51c>
1c009420:	970a                	add	a4,a4,sp
1c009422:	70a78793          	addi	a5,a5,1802 # e44b070a <pulp__FC+0xe44b070b>
1c009426:	c31c                	sw	a5,0(a4)
1c009428:	6705                	lui	a4,0x1
1c00942a:	336ac7b7          	lui	a5,0x336ac
1c00942e:	aec70713          	addi	a4,a4,-1300 # aec <__CTOR_LIST__-0x1bfff518>
1c009432:	970a                	add	a4,a4,sp
1c009434:	75978793          	addi	a5,a5,1881 # 336ac759 <__l2_shared_end+0x1769c759>
1c009438:	c31c                	sw	a5,0(a4)
1c00943a:	6705                	lui	a4,0x1
1c00943c:	c452a7b7          	lui	a5,0xc452a
1c009440:	af070713          	addi	a4,a4,-1296 # af0 <__CTOR_LIST__-0x1bfff514>
1c009444:	970a                	add	a4,a4,sp
1c009446:	a9a78793          	addi	a5,a5,-1382 # c4529a9a <pulp__FC+0xc4529a9b>
1c00944a:	c31c                	sw	a5,0(a4)
1c00944c:	6705                	lui	a4,0x1
1c00944e:	ea0d37b7          	lui	a5,0xea0d3
1c009452:	af470713          	addi	a4,a4,-1292 # af4 <__CTOR_LIST__-0x1bfff510>
1c009456:	970a                	add	a4,a4,sp
1c009458:	64778793          	addi	a5,a5,1607 # ea0d3647 <pulp__FC+0xea0d3648>
1c00945c:	c31c                	sw	a5,0(a4)
1c00945e:	6705                	lui	a4,0x1
1c009460:	cc9957b7          	lui	a5,0xcc995
1c009464:	af870713          	addi	a4,a4,-1288 # af8 <__CTOR_LIST__-0x1bfff50c>
1c009468:	970a                	add	a4,a4,sp
1c00946a:	62a78793          	addi	a5,a5,1578 # cc99562a <pulp__FC+0xcc99562b>
1c00946e:	c31c                	sw	a5,0(a4)
1c009470:	6705                	lui	a4,0x1
1c009472:	423a77b7          	lui	a5,0x423a7
1c009476:	afc70713          	addi	a4,a4,-1284 # afc <__CTOR_LIST__-0x1bfff508>
1c00947a:	970a                	add	a4,a4,sp
1c00947c:	8ea78793          	addi	a5,a5,-1814 # 423a68ea <__l2_shared_end+0x263968ea>
1c009480:	c31c                	sw	a5,0(a4)
1c009482:	6705                	lui	a4,0x1
1c009484:	fca617b7          	lui	a5,0xfca61
1c009488:	b0070713          	addi	a4,a4,-1280 # b00 <__CTOR_LIST__-0x1bfff504>
1c00948c:	970a                	add	a4,a4,sp
1c00948e:	a4378793          	addi	a5,a5,-1469 # fca60a43 <pulp__FC+0xfca60a44>
1c009492:	c31c                	sw	a5,0(a4)
1c009494:	6705                	lui	a4,0x1
1c009496:	5cc747b7          	lui	a5,0x5cc74
1c00949a:	b0470713          	addi	a4,a4,-1276 # b04 <__CTOR_LIST__-0x1bfff500>
1c00949e:	970a                	add	a4,a4,sp
1c0094a0:	59578793          	addi	a5,a5,1429 # 5cc74595 <__l2_shared_end+0x40c64595>
1c0094a4:	c31c                	sw	a5,0(a4)
1c0094a6:	6705                	lui	a4,0x1
1c0094a8:	1a6497b7          	lui	a5,0x1a649
1c0094ac:	b0870713          	addi	a4,a4,-1272 # b08 <__CTOR_LIST__-0x1bfff4fc>
1c0094b0:	970a                	add	a4,a4,sp
1c0094b2:	20478793          	addi	a5,a5,516 # 1a649204 <__CTOR_LIST__-0x19b6e00>
1c0094b6:	c31c                	sw	a5,0(a4)
1c0094b8:	6705                	lui	a4,0x1
1c0094ba:	26e9a7b7          	lui	a5,0x26e9a
1c0094be:	b0c70713          	addi	a4,a4,-1268 # b0c <__CTOR_LIST__-0x1bfff4f8>
1c0094c2:	970a                	add	a4,a4,sp
1c0094c4:	4f778793          	addi	a5,a5,1271 # 26e9a4f7 <__l2_shared_end+0xae8a4f7>
1c0094c8:	c31c                	sw	a5,0(a4)
1c0094ca:	6705                	lui	a4,0x1
1c0094cc:	4e38d7b7          	lui	a5,0x4e38d
1c0094d0:	b1070713          	addi	a4,a4,-1264 # b10 <__CTOR_LIST__-0x1bfff4f4>
1c0094d4:	970a                	add	a4,a4,sp
1c0094d6:	c7b78793          	addi	a5,a5,-901 # 4e38cc7b <__l2_shared_end+0x3237cc7b>
1c0094da:	c31c                	sw	a5,0(a4)
1c0094dc:	6705                	lui	a4,0x1
1c0094de:	f44c77b7          	lui	a5,0xf44c7
1c0094e2:	b1470713          	addi	a4,a4,-1260 # b14 <__CTOR_LIST__-0x1bfff4f0>
1c0094e6:	970a                	add	a4,a4,sp
1c0094e8:	15578793          	addi	a5,a5,341 # f44c7155 <pulp__FC+0xf44c7156>
1c0094ec:	c31c                	sw	a5,0(a4)
1c0094ee:	6705                	lui	a4,0x1
1c0094f0:	a3eb47b7          	lui	a5,0xa3eb4
1c0094f4:	b1870713          	addi	a4,a4,-1256 # b18 <__CTOR_LIST__-0x1bfff4ec>
1c0094f8:	970a                	add	a4,a4,sp
1c0094fa:	19778793          	addi	a5,a5,407 # a3eb4197 <pulp__FC+0xa3eb4198>
1c0094fe:	c31c                	sw	a5,0(a4)
1c009500:	6705                	lui	a4,0x1
1c009502:	1764a7b7          	lui	a5,0x1764a
1c009506:	b1c70713          	addi	a4,a4,-1252 # b1c <__CTOR_LIST__-0x1bfff4e8>
1c00950a:	970a                	add	a4,a4,sp
1c00950c:	db678793          	addi	a5,a5,-586 # 17649db6 <__CTOR_LIST__-0x49b624e>
1c009510:	c31c                	sw	a5,0(a4)
1c009512:	6705                	lui	a4,0x1
1c009514:	5d4757b7          	lui	a5,0x5d475
1c009518:	b2070713          	addi	a4,a4,-1248 # b20 <__CTOR_LIST__-0x1bfff4e4>
1c00951c:	970a                	add	a4,a4,sp
1c00951e:	5a578793          	addi	a5,a5,1445 # 5d4755a5 <__l2_shared_end+0x414655a5>
1c009522:	c31c                	sw	a5,0(a4)
1c009524:	6705                	lui	a4,0x1
1c009526:	b2470713          	addi	a4,a4,-1244 # b24 <__CTOR_LIST__-0x1bfff4e0>
1c00952a:	970a                	add	a4,a4,sp
1c00952c:	23c00793          	li	a5,572
1c009530:	00f71023          	sh	a5,0(a4)
1c009534:	6705                	lui	a4,0x1
1c009536:	b2670713          	addi	a4,a4,-1242 # b26 <__CTOR_LIST__-0x1bfff4de>
1c00953a:	970a                	add	a4,a4,sp
1c00953c:	47c5                	li	a5,17
1c00953e:	00f70023          	sb	a5,0(a4)
1c009542:	6705                	lui	a4,0x1
1c009544:	58b3c7b7          	lui	a5,0x58b3c
1c009548:	b2770713          	addi	a4,a4,-1241 # b27 <__CTOR_LIST__-0x1bfff4dd>
1c00954c:	970a                	add	a4,a4,sp
1c00954e:	81278793          	addi	a5,a5,-2030 # 58b3b812 <__l2_shared_end+0x3cb2b812>
1c009552:	c31c                	sw	a5,0(a4)
1c009554:	6705                	lui	a4,0x1
1c009556:	7b7467b7          	lui	a5,0x7b746
1c00955a:	b2b70713          	addi	a4,a4,-1237 # b2b <__CTOR_LIST__-0x1bfff4d9>
1c00955e:	970a                	add	a4,a4,sp
1c009560:	38c78793          	addi	a5,a5,908 # 7b74638c <__l2_shared_end+0x5f73638c>
1c009564:	c31c                	sw	a5,0(a4)
1c009566:	6705                	lui	a4,0x1
1c009568:	fecce7b7          	lui	a5,0xfecce
1c00956c:	b2f70713          	addi	a4,a4,-1233 # b2f <__CTOR_LIST__-0x1bfff4d5>
1c009570:	970a                	add	a4,a4,sp
1c009572:	25c78793          	addi	a5,a5,604 # fecce25c <pulp__FC+0xfecce25d>
1c009576:	c31c                	sw	a5,0(a4)
1c009578:	6705                	lui	a4,0x1
1c00957a:	fa9717b7          	lui	a5,0xfa971
1c00957e:	b3370713          	addi	a4,a4,-1229 # b33 <__CTOR_LIST__-0x1bfff4d1>
1c009582:	970a                	add	a4,a4,sp
1c009584:	2e978793          	addi	a5,a5,745 # fa9712e9 <pulp__FC+0xfa9712ea>
1c009588:	c31c                	sw	a5,0(a4)
1c00958a:	6705                	lui	a4,0x1
1c00958c:	429ca7b7          	lui	a5,0x429ca
1c009590:	b3770713          	addi	a4,a4,-1225 # b37 <__CTOR_LIST__-0x1bfff4cd>
1c009594:	970a                	add	a4,a4,sp
1c009596:	f4178793          	addi	a5,a5,-191 # 429c9f41 <__l2_shared_end+0x269b9f41>
1c00959a:	c31c                	sw	a5,0(a4)
1c00959c:	6705                	lui	a4,0x1
1c00959e:	ff8f97b7          	lui	a5,0xff8f9
1c0095a2:	b3b70713          	addi	a4,a4,-1221 # b3b <__CTOR_LIST__-0x1bfff4c9>
1c0095a6:	970a                	add	a4,a4,sp
1c0095a8:	79878793          	addi	a5,a5,1944 # ff8f9798 <pulp__FC+0xff8f9799>
1c0095ac:	c31c                	sw	a5,0(a4)
1c0095ae:	6705                	lui	a4,0x1
1c0095b0:	a8d877b7          	lui	a5,0xa8d87
1c0095b4:	b3f70713          	addi	a4,a4,-1217 # b3f <__CTOR_LIST__-0x1bfff4c5>
1c0095b8:	970a                	add	a4,a4,sp
1c0095ba:	07a1                	addi	a5,a5,8
1c0095bc:	c31c                	sw	a5,0(a4)
1c0095be:	6705                	lui	a4,0x1
1c0095c0:	9988b7b7          	lui	a5,0x9988b
1c0095c4:	b4370713          	addi	a4,a4,-1213 # b43 <__CTOR_LIST__-0x1bfff4c1>
1c0095c8:	970a                	add	a4,a4,sp
1c0095ca:	45578793          	addi	a5,a5,1109 # 9988b455 <pulp__FC+0x9988b456>
1c0095ce:	c31c                	sw	a5,0(a4)
1c0095d0:	6705                	lui	a4,0x1
1c0095d2:	7db4a7b7          	lui	a5,0x7db4a
1c0095d6:	b4770713          	addi	a4,a4,-1209 # b47 <__CTOR_LIST__-0x1bfff4bd>
1c0095da:	970a                	add	a4,a4,sp
1c0095dc:	bca78793          	addi	a5,a5,-1078 # 7db49bca <__l2_shared_end+0x61b39bca>
1c0095e0:	c31c                	sw	a5,0(a4)
1c0095e2:	6705                	lui	a4,0x1
1c0095e4:	d26277b7          	lui	a5,0xd2627
1c0095e8:	b4b70713          	addi	a4,a4,-1205 # b4b <__CTOR_LIST__-0x1bfff4b9>
1c0095ec:	970a                	add	a4,a4,sp
1c0095ee:	d8378793          	addi	a5,a5,-637 # d2626d83 <pulp__FC+0xd2626d84>
1c0095f2:	c31c                	sw	a5,0(a4)
1c0095f4:	6705                	lui	a4,0x1
1c0095f6:	81c397b7          	lui	a5,0x81c39
1c0095fa:	b4f70713          	addi	a4,a4,-1201 # b4f <__CTOR_LIST__-0x1bfff4b5>
1c0095fe:	970a                	add	a4,a4,sp
1c009600:	c0378793          	addi	a5,a5,-1021 # 81c38c03 <pulp__FC+0x81c38c04>
1c009604:	c31c                	sw	a5,0(a4)
1c009606:	6705                	lui	a4,0x1
1c009608:	8b6947b7          	lui	a5,0x8b694
1c00960c:	b5370713          	addi	a4,a4,-1197 # b53 <__CTOR_LIST__-0x1bfff4b1>
1c009610:	970a                	add	a4,a4,sp
1c009612:	a6f78793          	addi	a5,a5,-1425 # 8b693a6f <pulp__FC+0x8b693a70>
1c009616:	c31c                	sw	a5,0(a4)
1c009618:	6705                	lui	a4,0x1
1c00961a:	78ffc7b7          	lui	a5,0x78ffc
1c00961e:	b5770713          	addi	a4,a4,-1193 # b57 <__CTOR_LIST__-0x1bfff4ad>
1c009622:	970a                	add	a4,a4,sp
1c009624:	bb378793          	addi	a5,a5,-1101 # 78ffbbb3 <__l2_shared_end+0x5cfebbb3>
1c009628:	c31c                	sw	a5,0(a4)
1c00962a:	6705                	lui	a4,0x1
1c00962c:	b015a7b7          	lui	a5,0xb015a
1c009630:	b5b70713          	addi	a4,a4,-1189 # b5b <__CTOR_LIST__-0x1bfff4a9>
1c009634:	970a                	add	a4,a4,sp
1c009636:	0c778793          	addi	a5,a5,199 # b015a0c7 <pulp__FC+0xb015a0c8>
1c00963a:	c31c                	sw	a5,0(a4)
1c00963c:	6705                	lui	a4,0x1
1c00963e:	636027b7          	lui	a5,0x63602
1c009642:	b5f70713          	addi	a4,a4,-1185 # b5f <__CTOR_LIST__-0x1bfff4a5>
1c009646:	970a                	add	a4,a4,sp
1c009648:	9ea78793          	addi	a5,a5,-1558 # 636019ea <__l2_shared_end+0x475f19ea>
1c00964c:	c31c                	sw	a5,0(a4)
1c00964e:	6705                	lui	a4,0x1
1c009650:	d5e197b7          	lui	a5,0xd5e19
1c009654:	b6370713          	addi	a4,a4,-1181 # b63 <__CTOR_LIST__-0x1bfff4a1>
1c009658:	970a                	add	a4,a4,sp
1c00965a:	24278793          	addi	a5,a5,578 # d5e19242 <pulp__FC+0xd5e19243>
1c00965e:	c31c                	sw	a5,0(a4)
1c009660:	6705                	lui	a4,0x1
1c009662:	04e107b7          	lui	a5,0x4e10
1c009666:	b6770713          	addi	a4,a4,-1177 # b67 <__CTOR_LIST__-0x1bfff49d>
1c00966a:	970a                	add	a4,a4,sp
1c00966c:	30b78793          	addi	a5,a5,779 # 4e1030b <__CTOR_LIST__-0x171efcf9>
1c009670:	c31c                	sw	a5,0(a4)
1c009672:	6705                	lui	a4,0x1
1c009674:	9bcaa7b7          	lui	a5,0x9bcaa
1c009678:	b6b70713          	addi	a4,a4,-1173 # b6b <__CTOR_LIST__-0x1bfff499>
1c00967c:	970a                	add	a4,a4,sp
1c00967e:	83a78793          	addi	a5,a5,-1990 # 9bca983a <pulp__FC+0x9bca983b>
1c009682:	c31c                	sw	a5,0(a4)
1c009684:	6705                	lui	a4,0x1
1c009686:	663e07b7          	lui	a5,0x663e0
1c00968a:	b6f70713          	addi	a4,a4,-1169 # b6f <__CTOR_LIST__-0x1bfff495>
1c00968e:	970a                	add	a4,a4,sp
1c009690:	62778793          	addi	a5,a5,1575 # 663e0627 <__l2_shared_end+0x4a3d0627>
1c009694:	c31c                	sw	a5,0(a4)
1c009696:	6705                	lui	a4,0x1
1c009698:	c1e207b7          	lui	a5,0xc1e20
1c00969c:	b7370713          	addi	a4,a4,-1165 # b73 <__CTOR_LIST__-0x1bfff491>
1c0096a0:	970a                	add	a4,a4,sp
1c0096a2:	58b78793          	addi	a5,a5,1419 # c1e2058b <pulp__FC+0xc1e2058c>
1c0096a6:	c31c                	sw	a5,0(a4)
1c0096a8:	6705                	lui	a4,0x1
1c0096aa:	382d77b7          	lui	a5,0x382d7
1c0096ae:	b7770713          	addi	a4,a4,-1161 # b77 <__CTOR_LIST__-0x1bfff48d>
1c0096b2:	970a                	add	a4,a4,sp
1c0096b4:	97d78793          	addi	a5,a5,-1667 # 382d697d <__l2_shared_end+0x1c2c697d>
1c0096b8:	c31c                	sw	a5,0(a4)
1c0096ba:	6705                	lui	a4,0x1
1c0096bc:	651327b7          	lui	a5,0x65132
1c0096c0:	b7b70713          	addi	a4,a4,-1157 # b7b <__CTOR_LIST__-0x1bfff489>
1c0096c4:	970a                	add	a4,a4,sp
1c0096c6:	82b78793          	addi	a5,a5,-2005 # 6513182b <__l2_shared_end+0x4912182b>
1c0096ca:	c31c                	sw	a5,0(a4)
1c0096cc:	6705                	lui	a4,0x1
1c0096ce:	8e5127b7          	lui	a5,0x8e512
1c0096d2:	b7f70713          	addi	a4,a4,-1153 # b7f <__CTOR_LIST__-0x1bfff485>
1c0096d6:	970a                	add	a4,a4,sp
1c0096d8:	8a878793          	addi	a5,a5,-1880 # 8e5118a8 <pulp__FC+0x8e5118a9>
1c0096dc:	c31c                	sw	a5,0(a4)
1c0096de:	6705                	lui	a4,0x1
1c0096e0:	037247b7          	lui	a5,0x3724
1c0096e4:	b8370713          	addi	a4,a4,-1149 # b83 <__CTOR_LIST__-0x1bfff481>
1c0096e8:	970a                	add	a4,a4,sp
1c0096ea:	7c778793          	addi	a5,a5,1991 # 37247c7 <__CTOR_LIST__-0x188db83d>
1c0096ee:	c31c                	sw	a5,0(a4)
1c0096f0:	6705                	lui	a4,0x1
1c0096f2:	6818d7b7          	lui	a5,0x6818d
1c0096f6:	b8770713          	addi	a4,a4,-1145 # b87 <__CTOR_LIST__-0x1bfff47d>
1c0096fa:	970a                	add	a4,a4,sp
1c0096fc:	a3778793          	addi	a5,a5,-1481 # 6818ca37 <__l2_shared_end+0x4c17ca37>
1c009700:	c31c                	sw	a5,0(a4)
1c009702:	6705                	lui	a4,0x1
1c009704:	2af477b7          	lui	a5,0x2af47
1c009708:	b8b70713          	addi	a4,a4,-1141 # b8b <__CTOR_LIST__-0x1bfff479>
1c00970c:	970a                	add	a4,a4,sp
1c00970e:	a5978793          	addi	a5,a5,-1447 # 2af46a59 <__l2_shared_end+0xef36a59>
1c009712:	c31c                	sw	a5,0(a4)
1c009714:	6705                	lui	a4,0x1
1c009716:	87b207b7          	lui	a5,0x87b20
1c00971a:	b8f70713          	addi	a4,a4,-1137 # b8f <__CTOR_LIST__-0x1bfff475>
1c00971e:	970a                	add	a4,a4,sp
1c009720:	a9078793          	addi	a5,a5,-1392 # 87b1fa90 <pulp__FC+0x87b1fa91>
1c009724:	c31c                	sw	a5,0(a4)
1c009726:	6705                	lui	a4,0x1
1c009728:	4bd777b7          	lui	a5,0x4bd77
1c00972c:	b9370713          	addi	a4,a4,-1133 # b93 <__CTOR_LIST__-0x1bfff471>
1c009730:	970a                	add	a4,a4,sp
1c009732:	30378793          	addi	a5,a5,771 # 4bd77303 <__l2_shared_end+0x2fd67303>
1c009736:	c31c                	sw	a5,0(a4)
1c009738:	6705                	lui	a4,0x1
1c00973a:	ac4277b7          	lui	a5,0xac427
1c00973e:	b9770713          	addi	a4,a4,-1129 # b97 <__CTOR_LIST__-0x1bfff46d>
1c009742:	970a                	add	a4,a4,sp
1c009744:	d8f78793          	addi	a5,a5,-625 # ac426d8f <pulp__FC+0xac426d90>
1c009748:	c31c                	sw	a5,0(a4)
1c00974a:	6705                	lui	a4,0x1
1c00974c:	ca8bb7b7          	lui	a5,0xca8bb
1c009750:	b9b70713          	addi	a4,a4,-1125 # b9b <__CTOR_LIST__-0x1bfff469>
1c009754:	970a                	add	a4,a4,sp
1c009756:	18678793          	addi	a5,a5,390 # ca8bb186 <pulp__FC+0xca8bb187>
1c00975a:	c31c                	sw	a5,0(a4)
1c00975c:	6705                	lui	a4,0x1
1c00975e:	6447b7b7          	lui	a5,0x6447b
1c009762:	b9f70713          	addi	a4,a4,-1121 # b9f <__CTOR_LIST__-0x1bfff465>
1c009766:	970a                	add	a4,a4,sp
1c009768:	03a78793          	addi	a5,a5,58 # 6447b03a <__l2_shared_end+0x4846b03a>
1c00976c:	c31c                	sw	a5,0(a4)
1c00976e:	6705                	lui	a4,0x1
1c009770:	06f217b7          	lui	a5,0x6f21
1c009774:	ba370713          	addi	a4,a4,-1117 # ba3 <__CTOR_LIST__-0x1bfff461>
1c009778:	970a                	add	a4,a4,sp
1c00977a:	c6878793          	addi	a5,a5,-920 # 6f20c68 <__CTOR_LIST__-0x150df39c>
1c00977e:	c31c                	sw	a5,0(a4)
1c009780:	6705                	lui	a4,0x1
1c009782:	be9a57b7          	lui	a5,0xbe9a5
1c009786:	ba770713          	addi	a4,a4,-1113 # ba7 <__CTOR_LIST__-0x1bfff45d>
1c00978a:	970a                	add	a4,a4,sp
1c00978c:	20c78793          	addi	a5,a5,524 # be9a520c <pulp__FC+0xbe9a520d>
1c009790:	c31c                	sw	a5,0(a4)
1c009792:	6705                	lui	a4,0x1
1c009794:	47f497b7          	lui	a5,0x47f49
1c009798:	bab70713          	addi	a4,a4,-1109 # bab <__CTOR_LIST__-0x1bfff459>
1c00979c:	970a                	add	a4,a4,sp
1c00979e:	e5b78793          	addi	a5,a5,-421 # 47f48e5b <__l2_shared_end+0x2bf38e5b>
1c0097a2:	c31c                	sw	a5,0(a4)
1c0097a4:	6705                	lui	a4,0x1
1c0097a6:	47ccd7b7          	lui	a5,0x47ccd
1c0097aa:	baf70713          	addi	a4,a4,-1105 # baf <__CTOR_LIST__-0x1bfff455>
1c0097ae:	970a                	add	a4,a4,sp
1c0097b0:	84d78793          	addi	a5,a5,-1971 # 47ccc84d <__l2_shared_end+0x2bcbc84d>
1c0097b4:	c31c                	sw	a5,0(a4)
1c0097b6:	6705                	lui	a4,0x1
1c0097b8:	bd3e07b7          	lui	a5,0xbd3e0
1c0097bc:	bb370713          	addi	a4,a4,-1101 # bb3 <__CTOR_LIST__-0x1bfff451>
1c0097c0:	970a                	add	a4,a4,sp
1c0097c2:	3a878793          	addi	a5,a5,936 # bd3e03a8 <pulp__FC+0xbd3e03a9>
1c0097c6:	c31c                	sw	a5,0(a4)
1c0097c8:	6705                	lui	a4,0x1
1c0097ca:	0a3e57b7          	lui	a5,0xa3e5
1c0097ce:	bb770713          	addi	a4,a4,-1097 # bb7 <__CTOR_LIST__-0x1bfff44d>
1c0097d2:	970a                	add	a4,a4,sp
1c0097d4:	d8878793          	addi	a5,a5,-632 # a3e4d88 <__CTOR_LIST__-0x11c1b27c>
1c0097d8:	c31c                	sw	a5,0(a4)
1c0097da:	6705                	lui	a4,0x1
1c0097dc:	429427b7          	lui	a5,0x42942
1c0097e0:	bbb70713          	addi	a4,a4,-1093 # bbb <__CTOR_LIST__-0x1bfff449>
1c0097e4:	970a                	add	a4,a4,sp
1c0097e6:	a0f78793          	addi	a5,a5,-1521 # 42941a0f <__l2_shared_end+0x26931a0f>
1c0097ea:	c31c                	sw	a5,0(a4)
1c0097ec:	6705                	lui	a4,0x1
1c0097ee:	913c97b7          	lui	a5,0x913c9
1c0097f2:	bbf70713          	addi	a4,a4,-1089 # bbf <__CTOR_LIST__-0x1bfff445>
1c0097f6:	970a                	add	a4,a4,sp
1c0097f8:	a0d78793          	addi	a5,a5,-1523 # 913c8a0d <pulp__FC+0x913c8a0e>
1c0097fc:	c31c                	sw	a5,0(a4)
1c0097fe:	6705                	lui	a4,0x1
1c009800:	87afb7b7          	lui	a5,0x87afb
1c009804:	bc370713          	addi	a4,a4,-1085 # bc3 <__CTOR_LIST__-0x1bfff441>
1c009808:	970a                	add	a4,a4,sp
1c00980a:	76278793          	addi	a5,a5,1890 # 87afb762 <pulp__FC+0x87afb763>
1c00980e:	c31c                	sw	a5,0(a4)
1c009810:	6705                	lui	a4,0x1
1c009812:	94a3d7b7          	lui	a5,0x94a3d
1c009816:	bc770713          	addi	a4,a4,-1081 # bc7 <__CTOR_LIST__-0x1bfff43d>
1c00981a:	970a                	add	a4,a4,sp
1c00981c:	8a278793          	addi	a5,a5,-1886 # 94a3c8a2 <pulp__FC+0x94a3c8a3>
1c009820:	c31c                	sw	a5,0(a4)
1c009822:	6705                	lui	a4,0x1
1c009824:	f43477b7          	lui	a5,0xf4347
1c009828:	bcb70713          	addi	a4,a4,-1077 # bcb <__CTOR_LIST__-0x1bfff439>
1c00982c:	970a                	add	a4,a4,sp
1c00982e:	46478793          	addi	a5,a5,1124 # f4347464 <pulp__FC+0xf4347465>
1c009832:	c31c                	sw	a5,0(a4)
1c009834:	6705                	lui	a4,0x1
1c009836:	472bc7b7          	lui	a5,0x472bc
1c00983a:	bcf70713          	addi	a4,a4,-1073 # bcf <__CTOR_LIST__-0x1bfff435>
1c00983e:	970a                	add	a4,a4,sp
1c009840:	ca378793          	addi	a5,a5,-861 # 472bbca3 <__l2_shared_end+0x2b2abca3>
1c009844:	c31c                	sw	a5,0(a4)
1c009846:	6705                	lui	a4,0x1
1c009848:	82ac17b7          	lui	a5,0x82ac1
1c00984c:	bd370713          	addi	a4,a4,-1069 # bd3 <__CTOR_LIST__-0x1bfff431>
1c009850:	970a                	add	a4,a4,sp
1c009852:	37878793          	addi	a5,a5,888 # 82ac1378 <pulp__FC+0x82ac1379>
1c009856:	c31c                	sw	a5,0(a4)
1c009858:	6705                	lui	a4,0x1
1c00985a:	857147b7          	lui	a5,0x85714
1c00985e:	bd770713          	addi	a4,a4,-1065 # bd7 <__CTOR_LIST__-0x1bfff42d>
1c009862:	970a                	add	a4,a4,sp
1c009864:	8cf78793          	addi	a5,a5,-1841 # 857138cf <pulp__FC+0x857138d0>
1c009868:	c31c                	sw	a5,0(a4)
1c00986a:	6705                	lui	a4,0x1
1c00986c:	f6f787b7          	lui	a5,0xf6f78
1c009870:	bdb70713          	addi	a4,a4,-1061 # bdb <__CTOR_LIST__-0x1bfff429>
1c009874:	970a                	add	a4,a4,sp
1c009876:	7b578793          	addi	a5,a5,1973 # f6f787b5 <pulp__FC+0xf6f787b6>
1c00987a:	c31c                	sw	a5,0(a4)
1c00987c:	6705                	lui	a4,0x1
1c00987e:	cdec47b7          	lui	a5,0xcdec4
1c009882:	bdf70713          	addi	a4,a4,-1057 # bdf <__CTOR_LIST__-0x1bfff425>
1c009886:	970a                	add	a4,a4,sp
1c009888:	88978793          	addi	a5,a5,-1911 # cdec3889 <pulp__FC+0xcdec388a>
1c00988c:	c31c                	sw	a5,0(a4)
1c00988e:	6705                	lui	a4,0x1
1c009890:	d13477b7          	lui	a5,0xd1347
1c009894:	be370713          	addi	a4,a4,-1053 # be3 <__CTOR_LIST__-0x1bfff421>
1c009898:	970a                	add	a4,a4,sp
1c00989a:	9dd78793          	addi	a5,a5,-1571 # d13469dd <pulp__FC+0xd13469de>
1c00989e:	c31c                	sw	a5,0(a4)
1c0098a0:	6705                	lui	a4,0x1
1c0098a2:	bb17c7b7          	lui	a5,0xbb17c
1c0098a6:	be770713          	addi	a4,a4,-1049 # be7 <__CTOR_LIST__-0x1bfff41d>
1c0098aa:	970a                	add	a4,a4,sp
1c0098ac:	a4378793          	addi	a5,a5,-1469 # bb17ba43 <pulp__FC+0xbb17ba44>
1c0098b0:	c31c                	sw	a5,0(a4)
1c0098b2:	6705                	lui	a4,0x1
1c0098b4:	662577b7          	lui	a5,0x66257
1c0098b8:	beb70713          	addi	a4,a4,-1045 # beb <__CTOR_LIST__-0x1bfff419>
1c0098bc:	970a                	add	a4,a4,sp
1c0098be:	14a78793          	addi	a5,a5,330 # 6625714a <__l2_shared_end+0x4a24714a>
1c0098c2:	c31c                	sw	a5,0(a4)
1c0098c4:	6705                	lui	a4,0x1
1c0098c6:	ad5aa7b7          	lui	a5,0xad5aa
1c0098ca:	bef70713          	addi	a4,a4,-1041 # bef <__CTOR_LIST__-0x1bfff415>
1c0098ce:	970a                	add	a4,a4,sp
1c0098d0:	5d278793          	addi	a5,a5,1490 # ad5aa5d2 <pulp__FC+0xad5aa5d3>
1c0098d4:	c31c                	sw	a5,0(a4)
1c0098d6:	6705                	lui	a4,0x1
1c0098d8:	712337b7          	lui	a5,0x71233
1c0098dc:	bf370713          	addi	a4,a4,-1037 # bf3 <__CTOR_LIST__-0x1bfff411>
1c0098e0:	970a                	add	a4,a4,sp
1c0098e2:	3db78793          	addi	a5,a5,987 # 712333db <__l2_shared_end+0x552233db>
1c0098e6:	c31c                	sw	a5,0(a4)
1c0098e8:	6705                	lui	a4,0x1
1c0098ea:	1b4067b7          	lui	a5,0x1b406
1c0098ee:	bf770713          	addi	a4,a4,-1033 # bf7 <__CTOR_LIST__-0x1bfff40d>
1c0098f2:	970a                	add	a4,a4,sp
1c0098f4:	73678793          	addi	a5,a5,1846 # 1b406736 <__CTOR_LIST__-0xbf98ce>
1c0098f8:	c31c                	sw	a5,0(a4)
1c0098fa:	6705                	lui	a4,0x1
1c0098fc:	6cb827b7          	lui	a5,0x6cb82
1c009900:	bfb70713          	addi	a4,a4,-1029 # bfb <__CTOR_LIST__-0x1bfff409>
1c009904:	970a                	add	a4,a4,sp
1c009906:	04a78793          	addi	a5,a5,74 # 6cb8204a <__l2_shared_end+0x50b7204a>
1c00990a:	c31c                	sw	a5,0(a4)
1c00990c:	6705                	lui	a4,0x1
1c00990e:	7610c7b7          	lui	a5,0x7610c
1c009912:	bff70713          	addi	a4,a4,-1025 # bff <__CTOR_LIST__-0x1bfff405>
1c009916:	970a                	add	a4,a4,sp
1c009918:	f2378793          	addi	a5,a5,-221 # 7610bf23 <__l2_shared_end+0x5a0fbf23>
1c00991c:	c31c                	sw	a5,0(a4)
1c00991e:	6705                	lui	a4,0x1
1c009920:	b8b6a7b7          	lui	a5,0xb8b6a
1c009924:	c0370713          	addi	a4,a4,-1021 # c03 <__CTOR_LIST__-0x1bfff401>
1c009928:	970a                	add	a4,a4,sp
1c00992a:	c4378793          	addi	a5,a5,-957 # b8b69c43 <pulp__FC+0xb8b69c44>
1c00992e:	c31c                	sw	a5,0(a4)
1c009930:	6705                	lui	a4,0x1
1c009932:	9d3817b7          	lui	a5,0x9d381
1c009936:	c0770713          	addi	a4,a4,-1017 # c07 <__CTOR_LIST__-0x1bfff3fd>
1c00993a:	970a                	add	a4,a4,sp
1c00993c:	5c178793          	addi	a5,a5,1473 # 9d3815c1 <pulp__FC+0x9d3815c2>
1c009940:	c31c                	sw	a5,0(a4)
1c009942:	6705                	lui	a4,0x1
1c009944:	0c6f57b7          	lui	a5,0xc6f5
1c009948:	c0b70713          	addi	a4,a4,-1013 # c0b <__CTOR_LIST__-0x1bfff3f9>
1c00994c:	970a                	add	a4,a4,sp
1c00994e:	eba78793          	addi	a5,a5,-326 # c6f4eba <__CTOR_LIST__-0xf90b14a>
1c009952:	c31c                	sw	a5,0(a4)
1c009954:	6705                	lui	a4,0x1
1c009956:	60e767b7          	lui	a5,0x60e76
1c00995a:	c0f70713          	addi	a4,a4,-1009 # c0f <__CTOR_LIST__-0x1bfff3f5>
1c00995e:	970a                	add	a4,a4,sp
1c009960:	b9178793          	addi	a5,a5,-1135 # 60e75b91 <__l2_shared_end+0x44e65b91>
1c009964:	c31c                	sw	a5,0(a4)
1c009966:	6705                	lui	a4,0x1
1c009968:	b50397b7          	lui	a5,0xb5039
1c00996c:	c1370713          	addi	a4,a4,-1005 # c13 <__CTOR_LIST__-0x1bfff3f1>
1c009970:	970a                	add	a4,a4,sp
1c009972:	72b78793          	addi	a5,a5,1835 # b503972b <pulp__FC+0xb503972c>
1c009976:	c31c                	sw	a5,0(a4)
1c009978:	6705                	lui	a4,0x1
1c00997a:	4a0e07b7          	lui	a5,0x4a0e0
1c00997e:	c1770713          	addi	a4,a4,-1001 # c17 <__CTOR_LIST__-0x1bfff3ed>
1c009982:	970a                	add	a4,a4,sp
1c009984:	73578793          	addi	a5,a5,1845 # 4a0e0735 <__l2_shared_end+0x2e0d0735>
1c009988:	c31c                	sw	a5,0(a4)
1c00998a:	6705                	lui	a4,0x1
1c00998c:	a54957b7          	lui	a5,0xa5495
1c009990:	c1b70713          	addi	a4,a4,-997 # c1b <__CTOR_LIST__-0x1bfff3e9>
1c009994:	970a                	add	a4,a4,sp
1c009996:	65c78793          	addi	a5,a5,1628 # a549565c <pulp__FC+0xa549565d>
1c00999a:	c31c                	sw	a5,0(a4)
1c00999c:	6705                	lui	a4,0x1
1c00999e:	6785                	lui	a5,0x1
1c0099a0:	c1f70713          	addi	a4,a4,-993 # c1f <__CTOR_LIST__-0x1bfff3e5>
1c0099a4:	970a                	add	a4,a4,sp
1c0099a6:	8d778793          	addi	a5,a5,-1833 # 8d7 <__CTOR_LIST__-0x1bfff72d>
1c0099aa:	00f71023          	sh	a5,0(a4)
1c0099ae:	6705                	lui	a4,0x1
1c0099b0:	c2170713          	addi	a4,a4,-991 # c21 <__CTOR_LIST__-0x1bfff3e3>
1c0099b4:	970a                	add	a4,a4,sp
1c0099b6:	4795                	li	a5,5
1c0099b8:	00f70023          	sb	a5,0(a4)
1c0099bc:	6705                	lui	a4,0x1
1c0099be:	066707b7          	lui	a5,0x6670
1c0099c2:	c2270713          	addi	a4,a4,-990 # c22 <__CTOR_LIST__-0x1bfff3e2>
1c0099c6:	970a                	add	a4,a4,sp
1c0099c8:	21578793          	addi	a5,a5,533 # 6670215 <__CTOR_LIST__-0x1598fdef>
1c0099cc:	c31c                	sw	a5,0(a4)
1c0099ce:	6705                	lui	a4,0x1
1c0099d0:	754567b7          	lui	a5,0x75456
1c0099d4:	c2670713          	addi	a4,a4,-986 # c26 <__CTOR_LIST__-0x1bfff3de>
1c0099d8:	970a                	add	a4,a4,sp
1c0099da:	0b278793          	addi	a5,a5,178 # 754560b2 <__l2_shared_end+0x594460b2>
1c0099de:	c31c                	sw	a5,0(a4)
1c0099e0:	6705                	lui	a4,0x1
1c0099e2:	7f68d7b7          	lui	a5,0x7f68d
1c0099e6:	c2a70713          	addi	a4,a4,-982 # c2a <__CTOR_LIST__-0x1bfff3da>
1c0099ea:	970a                	add	a4,a4,sp
1c0099ec:	0cb78793          	addi	a5,a5,203 # 7f68d0cb <__l2_shared_end+0x6367d0cb>
1c0099f0:	c31c                	sw	a5,0(a4)
1c0099f2:	6705                	lui	a4,0x1
1c0099f4:	2aa937b7          	lui	a5,0x2aa93
1c0099f8:	c2e70713          	addi	a4,a4,-978 # c2e <__CTOR_LIST__-0x1bfff3d6>
1c0099fc:	970a                	add	a4,a4,sp
1c0099fe:	92778793          	addi	a5,a5,-1753 # 2aa92927 <__l2_shared_end+0xea82927>
1c009a02:	c31c                	sw	a5,0(a4)
1c009a04:	6705                	lui	a4,0x1
1c009a06:	ea2187b7          	lui	a5,0xea218
1c009a0a:	c3270713          	addi	a4,a4,-974 # c32 <__CTOR_LIST__-0x1bfff3d2>
1c009a0e:	970a                	add	a4,a4,sp
1c009a10:	d9978793          	addi	a5,a5,-615 # ea217d99 <pulp__FC+0xea217d9a>
1c009a14:	c31c                	sw	a5,0(a4)
1c009a16:	6705                	lui	a4,0x1
1c009a18:	1ec407b7          	lui	a5,0x1ec40
1c009a1c:	c3670713          	addi	a4,a4,-970 # c36 <__CTOR_LIST__-0x1bfff3ce>
1c009a20:	970a                	add	a4,a4,sp
1c009a22:	07278793          	addi	a5,a5,114 # 1ec40072 <__l2_shared_end+0x2c30072>
1c009a26:	c31c                	sw	a5,0(a4)
1c009a28:	6705                	lui	a4,0x1
1c009a2a:	755237b7          	lui	a5,0x75523
1c009a2e:	c3a70713          	addi	a4,a4,-966 # c3a <__CTOR_LIST__-0x1bfff3ca>
1c009a32:	970a                	add	a4,a4,sp
1c009a34:	1d878793          	addi	a5,a5,472 # 755231d8 <__l2_shared_end+0x595131d8>
1c009a38:	c31c                	sw	a5,0(a4)
1c009a3a:	6705                	lui	a4,0x1
1c009a3c:	2fb7c7b7          	lui	a5,0x2fb7c
1c009a40:	c3e70713          	addi	a4,a4,-962 # c3e <__CTOR_LIST__-0x1bfff3c6>
1c009a44:	970a                	add	a4,a4,sp
1c009a46:	7f478793          	addi	a5,a5,2036 # 2fb7c7f4 <__l2_shared_end+0x13b6c7f4>
1c009a4a:	c31c                	sw	a5,0(a4)
1c009a4c:	6705                	lui	a4,0x1
1c009a4e:	0a5cd7b7          	lui	a5,0xa5cd
1c009a52:	c4270713          	addi	a4,a4,-958 # c42 <__CTOR_LIST__-0x1bfff3c2>
1c009a56:	970a                	add	a4,a4,sp
1c009a58:	89b78793          	addi	a5,a5,-1893 # a5cc89b <__CTOR_LIST__-0x11a33769>
1c009a5c:	c31c                	sw	a5,0(a4)
1c009a5e:	6705                	lui	a4,0x1
1c009a60:	41d0c7b7          	lui	a5,0x41d0c
1c009a64:	c4670713          	addi	a4,a4,-954 # c46 <__CTOR_LIST__-0x1bfff3be>
1c009a68:	970a                	add	a4,a4,sp
1c009a6a:	91378793          	addi	a5,a5,-1773 # 41d0b913 <__l2_shared_end+0x25cfb913>
1c009a6e:	c31c                	sw	a5,0(a4)
1c009a70:	6705                	lui	a4,0x1
1c009a72:	83d577b7          	lui	a5,0x83d57
1c009a76:	c4a70713          	addi	a4,a4,-950 # c4a <__CTOR_LIST__-0x1bfff3ba>
1c009a7a:	970a                	add	a4,a4,sp
1c009a7c:	f5878793          	addi	a5,a5,-168 # 83d56f58 <pulp__FC+0x83d56f59>
1c009a80:	c31c                	sw	a5,0(a4)
1c009a82:	6705                	lui	a4,0x1
1c009a84:	fd2ab7b7          	lui	a5,0xfd2ab
1c009a88:	c4e70713          	addi	a4,a4,-946 # c4e <__CTOR_LIST__-0x1bfff3b6>
1c009a8c:	970a                	add	a4,a4,sp
1c009a8e:	1fe78793          	addi	a5,a5,510 # fd2ab1fe <pulp__FC+0xfd2ab1ff>
1c009a92:	c31c                	sw	a5,0(a4)
1c009a94:	6705                	lui	a4,0x1
1c009a96:	d32d47b7          	lui	a5,0xd32d4
1c009a9a:	c5270713          	addi	a4,a4,-942 # c52 <__CTOR_LIST__-0x1bfff3b2>
1c009a9e:	970a                	add	a4,a4,sp
1c009aa0:	05a78793          	addi	a5,a5,90 # d32d405a <pulp__FC+0xd32d405b>
1c009aa4:	c31c                	sw	a5,0(a4)
1c009aa6:	6705                	lui	a4,0x1
1c009aa8:	3f5447b7          	lui	a5,0x3f544
1c009aac:	c5670713          	addi	a4,a4,-938 # c56 <__CTOR_LIST__-0x1bfff3ae>
1c009ab0:	970a                	add	a4,a4,sp
1c009ab2:	33b78793          	addi	a5,a5,827 # 3f54433b <__l2_shared_end+0x2353433b>
1c009ab6:	c31c                	sw	a5,0(a4)
1c009ab8:	6705                	lui	a4,0x1
1c009aba:	43eba7b7          	lui	a5,0x43eba
1c009abe:	c5a70713          	addi	a4,a4,-934 # c5a <__CTOR_LIST__-0x1bfff3aa>
1c009ac2:	970a                	add	a4,a4,sp
1c009ac4:	45f78793          	addi	a5,a5,1119 # 43eba45f <__l2_shared_end+0x27eaa45f>
1c009ac8:	c31c                	sw	a5,0(a4)
1c009aca:	6705                	lui	a4,0x1
1c009acc:	77e5                	lui	a5,0xffff9
1c009ace:	c5e70713          	addi	a4,a4,-930 # c5e <__CTOR_LIST__-0x1bfff3a6>
1c009ad2:	970a                	add	a4,a4,sp
1c009ad4:	d6c78793          	addi	a5,a5,-660 # ffff8d6c <pulp__FC+0xffff8d6d>
1c009ad8:	1c000537          	lui	a0,0x1c000
1c009adc:	00f71023          	sh	a5,0(a4)
1c009ae0:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c009ae4:	14f020ef          	jal	ra,1c00c432 <puts>
1c009ae8:	64010513          	addi	a0,sp,1600
1c009aec:	62000593          	li	a1,1568
1c009af0:	e52fe0ef          	jal	ra,1c008142 <printbytes>
1c009af4:	6785                	lui	a5,0x1
1c009af6:	747d                	lui	s0,0xfffff
1c009af8:	c6078793          	addi	a5,a5,-928 # c60 <__CTOR_LIST__-0x1bfff3a4>
1c009afc:	978a                	add	a5,a5,sp
1c009afe:	3a040493          	addi	s1,s0,928 # fffff3a0 <pulp__FC+0xfffff3a1>
1c009b02:	3c040413          	addi	s0,s0,960
1c009b06:	943e                	add	s0,s0,a5
1c009b08:	94be                	add	s1,s1,a5
1c009b0a:	64010613          	addi	a2,sp,1600
1c009b0e:	85a6                	mv	a1,s1
1c009b10:	8522                	mv	a0,s0
1c009b12:	1a9010ef          	jal	ra,1c00b4ba <PQCLEAN_KYBER1024_CLEAN_crypto_kem_enc>
1c009b16:	1c000537          	lui	a0,0x1c000
1c009b1a:	12050513          	addi	a0,a0,288 # 1c000120 <__DTOR_END__+0x104>
1c009b1e:	115020ef          	jal	ra,1c00c432 <puts>
1c009b22:	1c000537          	lui	a0,0x1c000
1c009b26:	13450513          	addi	a0,a0,308 # 1c000134 <__DTOR_END__+0x118>
1c009b2a:	109020ef          	jal	ra,1c00c432 <puts>
1c009b2e:	62000593          	li	a1,1568
1c009b32:	8522                	mv	a0,s0
1c009b34:	e0efe0ef          	jal	ra,1c008142 <printbytes>
1c009b38:	1c000537          	lui	a0,0x1c000
1c009b3c:	13c50513          	addi	a0,a0,316 # 1c00013c <__DTOR_END__+0x120>
1c009b40:	0f3020ef          	jal	ra,1c00c432 <puts>
1c009b44:	8526                	mv	a0,s1
1c009b46:	02000593          	li	a1,32
1c009b4a:	df8fe0ef          	jal	ra,1c008142 <printbytes>
1c009b4e:	48010113          	addi	sp,sp,1152
1c009b52:	7ec12083          	lw	ra,2028(sp)
1c009b56:	4501                	li	a0,0
1c009b58:	7e812403          	lw	s0,2024(sp)
1c009b5c:	7e412483          	lw	s1,2020(sp)
1c009b60:	7f010113          	addi	sp,sp,2032
1c009b64:	8082                	ret

1c009b66 <pos_fll_init>:
1c009b66:	1101                	addi	sp,sp,-32
1c009b68:	1a100637          	lui	a2,0x1a100
1c009b6c:	ca26                	sw	s1,20(sp)
1c009b6e:	00451693          	slli	a3,a0,0x4
1c009b72:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c009b76:	94b6                	add	s1,s1,a3
1c009b78:	4098                	lw	a4,0(s1)
1c009b7a:	c84a                	sw	s2,16(sp)
1c009b7c:	ce06                	sw	ra,28(sp)
1c009b7e:	cc22                	sw	s0,24(sp)
1c009b80:	c64e                	sw	s3,12(sp)
1c009b82:	c452                	sw	s4,8(sp)
1c009b84:	892a                	mv	s2,a0
1c009b86:	87ba                	mv	a5,a4
1c009b88:	04074563          	bltz	a4,1c009bd2 <pos_fll_init+0x6c>
1c009b8c:	00860593          	addi	a1,a2,8
1c009b90:	95b6                	add	a1,a1,a3
1c009b92:	419c                	lw	a5,0(a1)
1c009b94:	7541                	lui	a0,0xffff0
1c009b96:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c009b9a:	8fe9                	and	a5,a5,a0
1c009b9c:	6509                	lui	a0,0x2
1c009b9e:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c009ba2:	8fc9                	or	a5,a5,a0
1c009ba4:	f0010537          	lui	a0,0xf0010
1c009ba8:	157d                	addi	a0,a0,-1
1c009baa:	8fe9                	and	a5,a5,a0
1c009bac:	00500537          	lui	a0,0x500
1c009bb0:	8fc9                	or	a5,a5,a0
1c009bb2:	0631                	addi	a2,a2,12
1c009bb4:	c19c                	sw	a5,0(a1)
1c009bb6:	96b2                	add	a3,a3,a2
1c009bb8:	429c                	lw	a5,0(a3)
1c009bba:	fc010637          	lui	a2,0xfc010
1c009bbe:	167d                	addi	a2,a2,-1
1c009bc0:	8ff1                	and	a5,a5,a2
1c009bc2:	014c0637          	lui	a2,0x14c0
1c009bc6:	8fd1                	or	a5,a5,a2
1c009bc8:	c29c                	sw	a5,0(a3)
1c009bca:	c00007b7          	lui	a5,0xc0000
1c009bce:	8fd9                	or	a5,a5,a4
1c009bd0:	c09c                	sw	a5,0(s1)
1c009bd2:	1c006437          	lui	s0,0x1c006
1c009bd6:	2b840413          	addi	s0,s0,696 # 1c0062b8 <pos_fll_freq>
1c009bda:	00291993          	slli	s3,s2,0x2
1c009bde:	013406b3          	add	a3,s0,s3
1c009be2:	0006aa03          	lw	s4,0(a3)
1c009be6:	020a1d63          	bnez	s4,1c009c20 <pos_fll_init+0xba>
1c009bea:	83e9                	srli	a5,a5,0x1a
1c009bec:	0742                	slli	a4,a4,0x10
1c009bee:	8341                	srli	a4,a4,0x10
1c009bf0:	8bbd                	andi	a5,a5,15
1c009bf2:	073e                	slli	a4,a4,0xf
1c009bf4:	17fd                	addi	a5,a5,-1
1c009bf6:	00f75a33          	srl	s4,a4,a5
1c009bfa:	1c006537          	lui	a0,0x1c006
1c009bfe:	0146a023          	sw	s4,0(a3)
1c009c02:	2b050513          	addi	a0,a0,688 # 1c0062b0 <pos_fll_is_on>
1c009c06:	954a                	add	a0,a0,s2
1c009c08:	4685                	li	a3,1
1c009c0a:	00d50023          	sb	a3,0(a0)
1c009c0e:	40f2                	lw	ra,28(sp)
1c009c10:	4462                	lw	s0,24(sp)
1c009c12:	8552                	mv	a0,s4
1c009c14:	44d2                	lw	s1,20(sp)
1c009c16:	4942                	lw	s2,16(sp)
1c009c18:	49b2                	lw	s3,12(sp)
1c009c1a:	4a22                	lw	s4,8(sp)
1c009c1c:	6105                	addi	sp,sp,32
1c009c1e:	8082                	ret
1c009c20:	8552                	mv	a0,s4
1c009c22:	ce4fe0ef          	jal	ra,1c008106 <__clzsi2>
1c009c26:	1579                	addi	a0,a0,-2
1c009c28:	00155613          	srli	a2,a0,0x1
1c009c2c:	e631                	bnez	a2,1c009c78 <pos_fll_init+0x112>
1c009c2e:	4709                	li	a4,2
1c009c30:	4585                	li	a1,1
1c009c32:	4605                	li	a2,1
1c009c34:	00ca17b3          	sll	a5,s4,a2
1c009c38:	76e1                	lui	a3,0xffff8
1c009c3a:	1c006537          	lui	a0,0x1c006
1c009c3e:	8efd                	and	a3,a3,a5
1c009c40:	2b050513          	addi	a0,a0,688 # 1c0062b0 <pos_fll_is_on>
1c009c44:	96ae                	add	a3,a3,a1
1c009c46:	012505b3          	add	a1,a0,s2
1c009c4a:	00c6d6b3          	srl	a3,a3,a2
1c009c4e:	944e                	add	s0,s0,s3
1c009c50:	0005c603          	lbu	a2,0(a1)
1c009c54:	c014                	sw	a3,0(s0)
1c009c56:	da45                	beqz	a2,1c009c06 <pos_fll_init+0xa0>
1c009c58:	4094                	lw	a3,0(s1)
1c009c5a:	83bd                	srli	a5,a5,0xf
1c009c5c:	07c2                	slli	a5,a5,0x10
1c009c5e:	7641                	lui	a2,0xffff0
1c009c60:	83c1                	srli	a5,a5,0x10
1c009c62:	8ef1                	and	a3,a3,a2
1c009c64:	8edd                	or	a3,a3,a5
1c009c66:	c40007b7          	lui	a5,0xc4000
1c009c6a:	8b3d                	andi	a4,a4,15
1c009c6c:	17fd                	addi	a5,a5,-1
1c009c6e:	076a                	slli	a4,a4,0x1a
1c009c70:	8efd                	and	a3,a3,a5
1c009c72:	8ed9                	or	a3,a3,a4
1c009c74:	c094                	sw	a3,0(s1)
1c009c76:	bf41                	j	1c009c06 <pos_fll_init+0xa0>
1c009c78:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c009c7c:	4685                	li	a3,1
1c009c7e:	00b695b3          	sll	a1,a3,a1
1c009c82:	00160713          	addi	a4,a2,1
1c009c86:	b77d                	j	1c009c34 <pos_fll_init+0xce>

1c009c88 <pos_fll_constructor>:
1c009c88:	1c0067b7          	lui	a5,0x1c006
1c009c8c:	2b878793          	addi	a5,a5,696 # 1c0062b8 <pos_fll_freq>
1c009c90:	0007a023          	sw	zero,0(a5)
1c009c94:	0007a223          	sw	zero,4(a5)
1c009c98:	1c0067b7          	lui	a5,0x1c006
1c009c9c:	2a079823          	sh	zero,688(a5) # 1c0062b0 <pos_fll_is_on>
1c009ca0:	8082                	ret

1c009ca2 <pos_soc_init>:
1c009ca2:	1141                	addi	sp,sp,-16
1c009ca4:	c606                	sw	ra,12(sp)
1c009ca6:	c422                	sw	s0,8(sp)
1c009ca8:	37c5                	jal	1c009c88 <pos_fll_constructor>
1c009caa:	4501                	li	a0,0
1c009cac:	3d6d                	jal	1c009b66 <pos_fll_init>
1c009cae:	1c006437          	lui	s0,0x1c006
1c009cb2:	2ca42023          	sw	a0,704(s0) # 1c0062c0 <pos_freq_domains>
1c009cb6:	4505                	li	a0,1
1c009cb8:	357d                	jal	1c009b66 <pos_fll_init>
1c009cba:	2c040413          	addi	s0,s0,704
1c009cbe:	c408                	sw	a0,8(s0)
1c009cc0:	40b2                	lw	ra,12(sp)
1c009cc2:	4422                	lw	s0,8(sp)
1c009cc4:	0141                	addi	sp,sp,16
1c009cc6:	8082                	ret

1c009cc8 <KeccakF1600_StatePermute>:
1c009cc8:	1a4007b7          	lui	a5,0x1a400
1c009ccc:	1141                	addi	sp,sp,-16
1c009cce:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c009cd2:	4118                	lw	a4,0(a0)
1c009cd4:	0791                	addi	a5,a5,4
1c009cd6:	fee7ae23          	sw	a4,-4(a5)
1c009cda:	0511                	addi	a0,a0,4
1c009cdc:	fed79be3          	bne	a5,a3,1c009cd2 <KeccakF1600_StatePermute+0xa>
1c009ce0:	1a4007b7          	lui	a5,0x1a400
1c009ce4:	4705                	li	a4,1
1c009ce6:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c009cea:	1a400737          	lui	a4,0x1a400
1c009cee:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c009cf2:	8b85                	andi	a5,a5,1
1c009cf4:	dfed                	beqz	a5,1c009cee <KeccakF1600_StatePermute+0x26>
1c009cf6:	c602                	sw	zero,12(sp)
1c009cf8:	4732                	lw	a4,12(sp)
1c009cfa:	03100793          	li	a5,49
1c009cfe:	02e7c663          	blt	a5,a4,1c009d2a <KeccakF1600_StatePermute+0x62>
1c009d02:	1a400637          	lui	a2,0x1a400
1c009d06:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c009d0a:	03100513          	li	a0,49
1c009d0e:	4732                	lw	a4,12(sp)
1c009d10:	47b2                	lw	a5,12(sp)
1c009d12:	070a                	slli	a4,a4,0x2
1c009d14:	9732                	add	a4,a4,a2
1c009d16:	4314                	lw	a3,0(a4)
1c009d18:	4732                	lw	a4,12(sp)
1c009d1a:	078a                	slli	a5,a5,0x2
1c009d1c:	0705                	addi	a4,a4,1
1c009d1e:	c63a                	sw	a4,12(sp)
1c009d20:	97ae                	add	a5,a5,a1
1c009d22:	4732                	lw	a4,12(sp)
1c009d24:	c394                	sw	a3,0(a5)
1c009d26:	fee554e3          	ble	a4,a0,1c009d0e <KeccakF1600_StatePermute+0x46>
1c009d2a:	0141                	addi	sp,sp,16
1c009d2c:	8082                	ret

1c009d2e <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>:
1c009d2e:	1141                	addi	sp,sp,-16
1c009d30:	55555337          	lui	t1,0x55555
1c009d34:	68c1                	lui	a7,0x10
1c009d36:	c622                	sw	s0,12(sp)
1c009d38:	c426                	sw	s1,8(sp)
1c009d3a:	c24a                	sw	s2,4(sp)
1c009d3c:	20050e13          	addi	t3,a0,512
1c009d40:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009d44:	18fd                	addi	a7,a7,-1
1c009d46:	419c                	lw	a5,0(a1)
1c009d48:	0541                	addi	a0,a0,16
1c009d4a:	0017d713          	srli	a4,a5,0x1
1c009d4e:	00677733          	and	a4,a4,t1
1c009d52:	0067f7b3          	and	a5,a5,t1
1c009d56:	97ba                	add	a5,a5,a4
1c009d58:	0027d913          	srli	s2,a5,0x2
1c009d5c:	0087d693          	srli	a3,a5,0x8
1c009d60:	00a7d493          	srli	s1,a5,0xa
1c009d64:	0107d713          	srli	a4,a5,0x10
1c009d68:	0127d413          	srli	s0,a5,0x12
1c009d6c:	0037f613          	andi	a2,a5,3
1c009d70:	00397913          	andi	s2,s2,3
1c009d74:	8a8d                	andi	a3,a3,3
1c009d76:	888d                	andi	s1,s1,3
1c009d78:	8b0d                	andi	a4,a4,3
1c009d7a:	880d                	andi	s0,s0,3
1c009d7c:	0047df13          	srli	t5,a5,0x4
1c009d80:	0067d393          	srli	t2,a5,0x6
1c009d84:	00c7de93          	srli	t4,a5,0xc
1c009d88:	00e7d293          	srli	t0,a5,0xe
1c009d8c:	0147d813          	srli	a6,a5,0x14
1c009d90:	0167df93          	srli	t6,a5,0x16
1c009d94:	41260633          	sub	a2,a2,s2
1c009d98:	8e85                	sub	a3,a3,s1
1c009d9a:	8f01                	sub	a4,a4,s0
1c009d9c:	0033f393          	andi	t2,t2,3
1c009da0:	0032f293          	andi	t0,t0,3
1c009da4:	003fff93          	andi	t6,t6,3
1c009da8:	003f7f13          	andi	t5,t5,3
1c009dac:	003efe93          	andi	t4,t4,3
1c009db0:	00387813          	andi	a6,a6,3
1c009db4:	0642                	slli	a2,a2,0x10
1c009db6:	06c2                	slli	a3,a3,0x10
1c009db8:	0742                	slli	a4,a4,0x10
1c009dba:	407f0f33          	sub	t5,t5,t2
1c009dbe:	405e8eb3          	sub	t4,t4,t0
1c009dc2:	41f80833          	sub	a6,a6,t6
1c009dc6:	0187d293          	srli	t0,a5,0x18
1c009dca:	01a7d393          	srli	t2,a5,0x1a
1c009dce:	01c7df93          	srli	t6,a5,0x1c
1c009dd2:	8241                	srli	a2,a2,0x10
1c009dd4:	82c1                	srli	a3,a3,0x10
1c009dd6:	8341                	srli	a4,a4,0x10
1c009dd8:	0842                	slli	a6,a6,0x10
1c009dda:	0f42                	slli	t5,t5,0x10
1c009ddc:	01167633          	and	a2,a2,a7
1c009de0:	0ec2                	slli	t4,t4,0x10
1c009de2:	0116f6b3          	and	a3,a3,a7
1c009de6:	01177733          	and	a4,a4,a7
1c009dea:	0032f293          	andi	t0,t0,3
1c009dee:	0033f393          	andi	t2,t2,3
1c009df2:	003fff93          	andi	t6,t6,3
1c009df6:	83f9                	srli	a5,a5,0x1e
1c009df8:	01076733          	or	a4,a4,a6
1c009dfc:	01e66633          	or	a2,a2,t5
1c009e00:	01d6e6b3          	or	a3,a3,t4
1c009e04:	40728833          	sub	a6,t0,t2
1c009e08:	40ff87b3          	sub	a5,t6,a5
1c009e0c:	fec52823          	sw	a2,-16(a0)
1c009e10:	fed52a23          	sw	a3,-12(a0)
1c009e14:	fee52c23          	sw	a4,-8(a0)
1c009e18:	ff051e23          	sh	a6,-4(a0)
1c009e1c:	fef51f23          	sh	a5,-2(a0)
1c009e20:	0591                	addi	a1,a1,4
1c009e22:	f3c512e3          	bne	a0,t3,1c009d46 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1+0x18>
1c009e26:	4432                	lw	s0,12(sp)
1c009e28:	44a2                	lw	s1,8(sp)
1c009e2a:	4912                	lw	s2,4(sp)
1c009e2c:	0141                	addi	sp,sp,16
1c009e2e:	8082                	ret

1c009e30 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>:
1c009e30:	1141                	addi	sp,sp,-16
1c009e32:	55555337          	lui	t1,0x55555
1c009e36:	68c1                	lui	a7,0x10
1c009e38:	c622                	sw	s0,12(sp)
1c009e3a:	c426                	sw	s1,8(sp)
1c009e3c:	c24a                	sw	s2,4(sp)
1c009e3e:	20050e13          	addi	t3,a0,512
1c009e42:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009e46:	18fd                	addi	a7,a7,-1
1c009e48:	419c                	lw	a5,0(a1)
1c009e4a:	0541                	addi	a0,a0,16
1c009e4c:	0017d713          	srli	a4,a5,0x1
1c009e50:	00677733          	and	a4,a4,t1
1c009e54:	0067f7b3          	and	a5,a5,t1
1c009e58:	97ba                	add	a5,a5,a4
1c009e5a:	0027d913          	srli	s2,a5,0x2
1c009e5e:	0087d693          	srli	a3,a5,0x8
1c009e62:	00a7d493          	srli	s1,a5,0xa
1c009e66:	0107d713          	srli	a4,a5,0x10
1c009e6a:	0127d413          	srli	s0,a5,0x12
1c009e6e:	0037f613          	andi	a2,a5,3
1c009e72:	00397913          	andi	s2,s2,3
1c009e76:	8a8d                	andi	a3,a3,3
1c009e78:	888d                	andi	s1,s1,3
1c009e7a:	8b0d                	andi	a4,a4,3
1c009e7c:	880d                	andi	s0,s0,3
1c009e7e:	0047df13          	srli	t5,a5,0x4
1c009e82:	0067d393          	srli	t2,a5,0x6
1c009e86:	00c7de93          	srli	t4,a5,0xc
1c009e8a:	00e7d293          	srli	t0,a5,0xe
1c009e8e:	0147d813          	srli	a6,a5,0x14
1c009e92:	0167df93          	srli	t6,a5,0x16
1c009e96:	41260633          	sub	a2,a2,s2
1c009e9a:	8e85                	sub	a3,a3,s1
1c009e9c:	8f01                	sub	a4,a4,s0
1c009e9e:	0033f393          	andi	t2,t2,3
1c009ea2:	0032f293          	andi	t0,t0,3
1c009ea6:	003fff93          	andi	t6,t6,3
1c009eaa:	003f7f13          	andi	t5,t5,3
1c009eae:	003efe93          	andi	t4,t4,3
1c009eb2:	00387813          	andi	a6,a6,3
1c009eb6:	0642                	slli	a2,a2,0x10
1c009eb8:	06c2                	slli	a3,a3,0x10
1c009eba:	0742                	slli	a4,a4,0x10
1c009ebc:	407f0f33          	sub	t5,t5,t2
1c009ec0:	405e8eb3          	sub	t4,t4,t0
1c009ec4:	41f80833          	sub	a6,a6,t6
1c009ec8:	0187d293          	srli	t0,a5,0x18
1c009ecc:	01a7d393          	srli	t2,a5,0x1a
1c009ed0:	01c7df93          	srli	t6,a5,0x1c
1c009ed4:	8241                	srli	a2,a2,0x10
1c009ed6:	82c1                	srli	a3,a3,0x10
1c009ed8:	8341                	srli	a4,a4,0x10
1c009eda:	0842                	slli	a6,a6,0x10
1c009edc:	0f42                	slli	t5,t5,0x10
1c009ede:	01167633          	and	a2,a2,a7
1c009ee2:	0ec2                	slli	t4,t4,0x10
1c009ee4:	0116f6b3          	and	a3,a3,a7
1c009ee8:	01177733          	and	a4,a4,a7
1c009eec:	0032f293          	andi	t0,t0,3
1c009ef0:	0033f393          	andi	t2,t2,3
1c009ef4:	003fff93          	andi	t6,t6,3
1c009ef8:	83f9                	srli	a5,a5,0x1e
1c009efa:	01076733          	or	a4,a4,a6
1c009efe:	01e66633          	or	a2,a2,t5
1c009f02:	01d6e6b3          	or	a3,a3,t4
1c009f06:	40728833          	sub	a6,t0,t2
1c009f0a:	40ff87b3          	sub	a5,t6,a5
1c009f0e:	fec52823          	sw	a2,-16(a0)
1c009f12:	fed52a23          	sw	a3,-12(a0)
1c009f16:	fee52c23          	sw	a4,-8(a0)
1c009f1a:	ff051e23          	sh	a6,-4(a0)
1c009f1e:	fef51f23          	sh	a5,-2(a0)
1c009f22:	0591                	addi	a1,a1,4
1c009f24:	f3c512e3          	bne	a0,t3,1c009e48 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2+0x18>
1c009f28:	4432                	lw	s0,12(sp)
1c009f2a:	44a2                	lw	s1,8(sp)
1c009f2c:	4912                	lw	s2,4(sp)
1c009f2e:	0141                	addi	sp,sp,16
1c009f30:	8082                	ret

1c009f32 <keccak_absorb.constprop.7>:
1c009f32:	7151                	addi	sp,sp,-240
1c009f34:	d3a6                	sw	s1,228(sp)
1c009f36:	cfce                	sw	s3,220(sp)
1c009f38:	cdd2                	sw	s4,216(sp)
1c009f3a:	cbd6                	sw	s5,212(sp)
1c009f3c:	d786                	sw	ra,236(sp)
1c009f3e:	d5a2                	sw	s0,232(sp)
1c009f40:	d1ca                	sw	s2,224(sp)
1c009f42:	89aa                	mv	s3,a0
1c009f44:	8a32                	mv	s4,a2
1c009f46:	84b6                	mv	s1,a3
1c009f48:	8aaa                	mv	s5,a0
1c009f4a:	0c850713          	addi	a4,a0,200
1c009f4e:	87aa                	mv	a5,a0
1c009f50:	4601                	li	a2,0
1c009f52:	4681                	li	a3,0
1c009f54:	c390                	sw	a2,0(a5)
1c009f56:	c3d4                	sw	a3,4(a5)
1c009f58:	07a1                	addi	a5,a5,8
1c009f5a:	fef71be3          	bne	a4,a5,1c009f50 <keccak_absorb.constprop.7+0x1e>
1c009f5e:	08700793          	li	a5,135
1c009f62:	0747fb63          	bleu	s4,a5,1c009fd8 <keccak_absorb.constprop.7+0xa6>
1c009f66:	08700413          	li	s0,135
1c009f6a:	08858913          	addi	s2,a1,136
1c009f6e:	874e                	mv	a4,s3
1c009f70:	0015c783          	lbu	a5,1(a1)
1c009f74:	0025c603          	lbu	a2,2(a1)
1c009f78:	0055c883          	lbu	a7,5(a1)
1c009f7c:	0045c303          	lbu	t1,4(a1)
1c009f80:	0065c803          	lbu	a6,6(a1)
1c009f84:	0005ce03          	lbu	t3,0(a1)
1c009f88:	0035c503          	lbu	a0,3(a1)
1c009f8c:	0075c683          	lbu	a3,7(a1)
1c009f90:	0642                	slli	a2,a2,0x10
1c009f92:	07a2                	slli	a5,a5,0x8
1c009f94:	08a2                	slli	a7,a7,0x8
1c009f96:	8fd1                	or	a5,a5,a2
1c009f98:	0068e8b3          	or	a7,a7,t1
1c009f9c:	0842                	slli	a6,a6,0x10
1c009f9e:	00072303          	lw	t1,0(a4)
1c009fa2:	4350                	lw	a2,4(a4)
1c009fa4:	01c7e7b3          	or	a5,a5,t3
1c009fa8:	0562                	slli	a0,a0,0x18
1c009faa:	01186833          	or	a6,a6,a7
1c009fae:	06e2                	slli	a3,a3,0x18
1c009fb0:	8fc9                	or	a5,a5,a0
1c009fb2:	0106e6b3          	or	a3,a3,a6
1c009fb6:	00f347b3          	xor	a5,t1,a5
1c009fba:	8eb1                	xor	a3,a3,a2
1c009fbc:	c31c                	sw	a5,0(a4)
1c009fbe:	c354                	sw	a3,4(a4)
1c009fc0:	05a1                	addi	a1,a1,8
1c009fc2:	0721                	addi	a4,a4,8
1c009fc4:	fab916e3          	bne	s2,a1,1c009f70 <keccak_absorb.constprop.7+0x3e>
1c009fc8:	85ce                	mv	a1,s3
1c009fca:	854e                	mv	a0,s3
1c009fcc:	39f5                	jal	1c009cc8 <KeccakF1600_StatePermute>
1c009fce:	f78a0a13          	addi	s4,s4,-136
1c009fd2:	85ca                	mv	a1,s2
1c009fd4:	f9446be3          	bltu	s0,s4,1c009f6a <keccak_absorb.constprop.7+0x38>
1c009fd8:	003c                	addi	a5,sp,8
1c009fda:	0918                	addi	a4,sp,144
1c009fdc:	883e                	mv	a6,a5
1c009fde:	4681                	li	a3,0
1c009fe0:	00d82023          	sw	a3,0(a6)
1c009fe4:	0811                	addi	a6,a6,4
1c009fe6:	ff071ce3          	bne	a4,a6,1c009fde <keccak_absorb.constprop.7+0xac>
1c009fea:	060a0463          	beqz	s4,1c00a052 <keccak_absorb.constprop.7+0x120>
1c009fee:	fffa0713          	addi	a4,s4,-1
1c009ff2:	4689                	li	a3,2
1c009ff4:	0ee6f163          	bleu	a4,a3,1c00a0d6 <keccak_absorb.constprop.7+0x1a4>
1c009ff8:	002a5893          	srli	a7,s4,0x2
1c009ffc:	862e                	mv	a2,a1
1c009ffe:	86be                	mv	a3,a5
1c00a000:	4701                	li	a4,0
1c00a002:	4208                	lw	a0,0(a2)
1c00a004:	0705                	addi	a4,a4,1
1c00a006:	c288                	sw	a0,0(a3)
1c00a008:	0611                	addi	a2,a2,4
1c00a00a:	0691                	addi	a3,a3,4
1c00a00c:	ff176be3          	bltu	a4,a7,1c00a002 <keccak_absorb.constprop.7+0xd0>
1c00a010:	ffca7713          	andi	a4,s4,-4
1c00a014:	02ea0f63          	beq	s4,a4,1c00a052 <keccak_absorb.constprop.7+0x120>
1c00a018:	00e586b3          	add	a3,a1,a4
1c00a01c:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c00a020:	0988                	addi	a0,sp,208
1c00a022:	00e506b3          	add	a3,a0,a4
1c00a026:	f2c68c23          	sb	a2,-200(a3)
1c00a02a:	00170693          	addi	a3,a4,1
1c00a02e:	0346f263          	bleu	s4,a3,1c00a052 <keccak_absorb.constprop.7+0x120>
1c00a032:	00d58633          	add	a2,a1,a3
1c00a036:	00064603          	lbu	a2,0(a2)
1c00a03a:	96aa                	add	a3,a3,a0
1c00a03c:	f2c68c23          	sb	a2,-200(a3)
1c00a040:	0709                	addi	a4,a4,2
1c00a042:	01477863          	bleu	s4,a4,1c00a052 <keccak_absorb.constprop.7+0x120>
1c00a046:	95ba                	add	a1,a1,a4
1c00a048:	0005c683          	lbu	a3,0(a1)
1c00a04c:	972a                	add	a4,a4,a0
1c00a04e:	f2d70c23          	sb	a3,-200(a4)
1c00a052:	0990                	addi	a2,sp,208
1c00a054:	9a32                	add	s4,s4,a2
1c00a056:	f29a0c23          	sb	s1,-200(s4)
1c00a05a:	08f14703          	lbu	a4,143(sp)
1c00a05e:	f8076713          	ori	a4,a4,-128
1c00a062:	08e107a3          	sb	a4,143(sp)
1c00a066:	0017c703          	lbu	a4,1(a5)
1c00a06a:	0027c883          	lbu	a7,2(a5)
1c00a06e:	0057c503          	lbu	a0,5(a5)
1c00a072:	0047c303          	lbu	t1,4(a5)
1c00a076:	0067c583          	lbu	a1,6(a5)
1c00a07a:	0007ce03          	lbu	t3,0(a5)
1c00a07e:	0037c603          	lbu	a2,3(a5)
1c00a082:	0077c683          	lbu	a3,7(a5)
1c00a086:	08c2                	slli	a7,a7,0x10
1c00a088:	0722                	slli	a4,a4,0x8
1c00a08a:	0522                	slli	a0,a0,0x8
1c00a08c:	01176733          	or	a4,a4,a7
1c00a090:	00656533          	or	a0,a0,t1
1c00a094:	05c2                	slli	a1,a1,0x10
1c00a096:	000aa303          	lw	t1,0(s5)
1c00a09a:	004aa883          	lw	a7,4(s5)
1c00a09e:	01c76733          	or	a4,a4,t3
1c00a0a2:	0662                	slli	a2,a2,0x18
1c00a0a4:	8dc9                	or	a1,a1,a0
1c00a0a6:	06e2                	slli	a3,a3,0x18
1c00a0a8:	8f51                	or	a4,a4,a2
1c00a0aa:	8ecd                	or	a3,a3,a1
1c00a0ac:	00e34733          	xor	a4,t1,a4
1c00a0b0:	00d8c6b3          	xor	a3,a7,a3
1c00a0b4:	00eaa023          	sw	a4,0(s5)
1c00a0b8:	00daa223          	sw	a3,4(s5)
1c00a0bc:	07a1                	addi	a5,a5,8
1c00a0be:	0aa1                	addi	s5,s5,8
1c00a0c0:	faf813e3          	bne	a6,a5,1c00a066 <keccak_absorb.constprop.7+0x134>
1c00a0c4:	50be                	lw	ra,236(sp)
1c00a0c6:	542e                	lw	s0,232(sp)
1c00a0c8:	549e                	lw	s1,228(sp)
1c00a0ca:	590e                	lw	s2,224(sp)
1c00a0cc:	49fe                	lw	s3,220(sp)
1c00a0ce:	4a6e                	lw	s4,216(sp)
1c00a0d0:	4ade                	lw	s5,212(sp)
1c00a0d2:	616d                	addi	sp,sp,240
1c00a0d4:	8082                	ret
1c00a0d6:	4701                	li	a4,0
1c00a0d8:	b781                	j	1c00a018 <keccak_absorb.constprop.7+0xe6>

1c00a0da <shake128_absorb>:
1c00a0da:	7151                	addi	sp,sp,-240
1c00a0dc:	d5a2                	sw	s0,232(sp)
1c00a0de:	842a                	mv	s0,a0
1c00a0e0:	0c800513          	li	a0,200
1c00a0e4:	d1ca                	sw	s2,224(sp)
1c00a0e6:	cfce                	sw	s3,220(sp)
1c00a0e8:	d786                	sw	ra,236(sp)
1c00a0ea:	d3a6                	sw	s1,228(sp)
1c00a0ec:	cdd2                	sw	s4,216(sp)
1c00a0ee:	892e                	mv	s2,a1
1c00a0f0:	89b2                	mv	s3,a2
1c00a0f2:	534030ef          	jal	ra,1c00d626 <pi_l2_malloc>
1c00a0f6:	c008                	sw	a0,0(s0)
1c00a0f8:	1a050663          	beqz	a0,1c00a2a4 <shake128_absorb+0x1ca>
1c00a0fc:	8a2a                	mv	s4,a0
1c00a0fe:	0c850713          	addi	a4,a0,200
1c00a102:	87aa                	mv	a5,a0
1c00a104:	4601                	li	a2,0
1c00a106:	4681                	li	a3,0
1c00a108:	c390                	sw	a2,0(a5)
1c00a10a:	c3d4                	sw	a3,4(a5)
1c00a10c:	07a1                	addi	a5,a5,8
1c00a10e:	fef71be3          	bne	a4,a5,1c00a104 <shake128_absorb+0x2a>
1c00a112:	0a700793          	li	a5,167
1c00a116:	0937f163          	bleu	s3,a5,1c00a198 <shake128_absorb+0xbe>
1c00a11a:	412a04b3          	sub	s1,s4,s2
1c00a11e:	0a700413          	li	s0,167
1c00a122:	85ca                	mv	a1,s2
1c00a124:	0a890913          	addi	s2,s2,168
1c00a128:	0015c783          	lbu	a5,1(a1)
1c00a12c:	0025c603          	lbu	a2,2(a1)
1c00a130:	0055c803          	lbu	a6,5(a1)
1c00a134:	0045c303          	lbu	t1,4(a1)
1c00a138:	0065c503          	lbu	a0,6(a1)
1c00a13c:	0005ce03          	lbu	t3,0(a1)
1c00a140:	0035c683          	lbu	a3,3(a1)
1c00a144:	0075c703          	lbu	a4,7(a1)
1c00a148:	0642                	slli	a2,a2,0x10
1c00a14a:	07a2                	slli	a5,a5,0x8
1c00a14c:	0822                	slli	a6,a6,0x8
1c00a14e:	00b488b3          	add	a7,s1,a1
1c00a152:	8fd1                	or	a5,a5,a2
1c00a154:	00686833          	or	a6,a6,t1
1c00a158:	0542                	slli	a0,a0,0x10
1c00a15a:	0008a603          	lw	a2,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00a15e:	0048a303          	lw	t1,4(a7)
1c00a162:	01c7e7b3          	or	a5,a5,t3
1c00a166:	06e2                	slli	a3,a3,0x18
1c00a168:	01056533          	or	a0,a0,a6
1c00a16c:	0762                	slli	a4,a4,0x18
1c00a16e:	8fd5                	or	a5,a5,a3
1c00a170:	8f49                	or	a4,a4,a0
1c00a172:	8fb1                	xor	a5,a5,a2
1c00a174:	00e34733          	xor	a4,t1,a4
1c00a178:	00f8a023          	sw	a5,0(a7)
1c00a17c:	00e8a223          	sw	a4,4(a7)
1c00a180:	05a1                	addi	a1,a1,8
1c00a182:	fab913e3          	bne	s2,a1,1c00a128 <shake128_absorb+0x4e>
1c00a186:	85d2                	mv	a1,s4
1c00a188:	8552                	mv	a0,s4
1c00a18a:	f5898993          	addi	s3,s3,-168
1c00a18e:	3e2d                	jal	1c009cc8 <KeccakF1600_StatePermute>
1c00a190:	f5848493          	addi	s1,s1,-168
1c00a194:	f93467e3          	bltu	s0,s3,1c00a122 <shake128_absorb+0x48>
1c00a198:	191c                	addi	a5,sp,176
1c00a19a:	00810813          	addi	a6,sp,8
1c00a19e:	4681                	li	a3,0
1c00a1a0:	00d82023          	sw	a3,0(a6)
1c00a1a4:	0811                	addi	a6,a6,4
1c00a1a6:	ff079ce3          	bne	a5,a6,1c00a19e <shake128_absorb+0xc4>
1c00a1aa:	06098563          	beqz	s3,1c00a214 <shake128_absorb+0x13a>
1c00a1ae:	fff98793          	addi	a5,s3,-1
1c00a1b2:	4709                	li	a4,2
1c00a1b4:	0ef77663          	bleu	a5,a4,1c00a2a0 <shake128_absorb+0x1c6>
1c00a1b8:	0029d513          	srli	a0,s3,0x2
1c00a1bc:	86ca                	mv	a3,s2
1c00a1be:	0038                	addi	a4,sp,8
1c00a1c0:	4781                	li	a5,0
1c00a1c2:	4290                	lw	a2,0(a3)
1c00a1c4:	0785                	addi	a5,a5,1
1c00a1c6:	c310                	sw	a2,0(a4)
1c00a1c8:	0691                	addi	a3,a3,4
1c00a1ca:	0711                	addi	a4,a4,4
1c00a1cc:	fea7ebe3          	bltu	a5,a0,1c00a1c2 <shake128_absorb+0xe8>
1c00a1d0:	ffc9f793          	andi	a5,s3,-4
1c00a1d4:	04f98063          	beq	s3,a5,1c00a214 <shake128_absorb+0x13a>
1c00a1d8:	00f90733          	add	a4,s2,a5
1c00a1dc:	00074683          	lbu	a3,0(a4)
1c00a1e0:	0990                	addi	a2,sp,208
1c00a1e2:	00f60733          	add	a4,a2,a5
1c00a1e6:	f2d70c23          	sb	a3,-200(a4)
1c00a1ea:	00178713          	addi	a4,a5,1
1c00a1ee:	03377363          	bleu	s3,a4,1c00a214 <shake128_absorb+0x13a>
1c00a1f2:	00e906b3          	add	a3,s2,a4
1c00a1f6:	0006c683          	lbu	a3,0(a3)
1c00a1fa:	9732                	add	a4,a4,a2
1c00a1fc:	f2d70c23          	sb	a3,-200(a4)
1c00a200:	0789                	addi	a5,a5,2
1c00a202:	0137f963          	bleu	s3,a5,1c00a214 <shake128_absorb+0x13a>
1c00a206:	00f905b3          	add	a1,s2,a5
1c00a20a:	0005c703          	lbu	a4,0(a1)
1c00a20e:	97b2                	add	a5,a5,a2
1c00a210:	f2e78c23          	sb	a4,-200(a5)
1c00a214:	0994                	addi	a3,sp,208
1c00a216:	47fd                	li	a5,31
1c00a218:	99b6                	add	s3,s3,a3
1c00a21a:	f2f98c23          	sb	a5,-200(s3)
1c00a21e:	0af14703          	lbu	a4,175(sp)
1c00a222:	003c                	addi	a5,sp,8
1c00a224:	f8076713          	ori	a4,a4,-128
1c00a228:	0ae107a3          	sb	a4,175(sp)
1c00a22c:	40fa0a33          	sub	s4,s4,a5
1c00a230:	0017c703          	lbu	a4,1(a5)
1c00a234:	0027c303          	lbu	t1,2(a5)
1c00a238:	0057c503          	lbu	a0,5(a5)
1c00a23c:	0047ce03          	lbu	t3,4(a5)
1c00a240:	0067c583          	lbu	a1,6(a5)
1c00a244:	0007ce83          	lbu	t4,0(a5)
1c00a248:	0037c603          	lbu	a2,3(a5)
1c00a24c:	0077c683          	lbu	a3,7(a5)
1c00a250:	0342                	slli	t1,t1,0x10
1c00a252:	0722                	slli	a4,a4,0x8
1c00a254:	0522                	slli	a0,a0,0x8
1c00a256:	00fa08b3          	add	a7,s4,a5
1c00a25a:	00676733          	or	a4,a4,t1
1c00a25e:	01c56533          	or	a0,a0,t3
1c00a262:	05c2                	slli	a1,a1,0x10
1c00a264:	0008ae03          	lw	t3,0(a7)
1c00a268:	0048a303          	lw	t1,4(a7)
1c00a26c:	01d76733          	or	a4,a4,t4
1c00a270:	0662                	slli	a2,a2,0x18
1c00a272:	8dc9                	or	a1,a1,a0
1c00a274:	06e2                	slli	a3,a3,0x18
1c00a276:	8f51                	or	a4,a4,a2
1c00a278:	8ecd                	or	a3,a3,a1
1c00a27a:	00ee4733          	xor	a4,t3,a4
1c00a27e:	00d346b3          	xor	a3,t1,a3
1c00a282:	00e8a023          	sw	a4,0(a7)
1c00a286:	00d8a223          	sw	a3,4(a7)
1c00a28a:	07a1                	addi	a5,a5,8
1c00a28c:	faf812e3          	bne	a6,a5,1c00a230 <shake128_absorb+0x156>
1c00a290:	50be                	lw	ra,236(sp)
1c00a292:	542e                	lw	s0,232(sp)
1c00a294:	549e                	lw	s1,228(sp)
1c00a296:	590e                	lw	s2,224(sp)
1c00a298:	49fe                	lw	s3,220(sp)
1c00a29a:	4a6e                	lw	s4,216(sp)
1c00a29c:	616d                	addi	sp,sp,240
1c00a29e:	8082                	ret
1c00a2a0:	4781                	li	a5,0
1c00a2a2:	bf1d                	j	1c00a1d8 <shake128_absorb+0xfe>
1c00a2a4:	06f00513          	li	a0,111
1c00a2a8:	230020ef          	jal	ra,1c00c4d8 <exit>

1c00a2ac <shake128_squeezeblocks>:
1c00a2ac:	1101                	addi	sp,sp,-32
1c00a2ae:	c452                	sw	s4,8(sp)
1c00a2b0:	ce06                	sw	ra,28(sp)
1c00a2b2:	cc22                	sw	s0,24(sp)
1c00a2b4:	ca26                	sw	s1,20(sp)
1c00a2b6:	c84a                	sw	s2,16(sp)
1c00a2b8:	c64e                	sw	s3,12(sp)
1c00a2ba:	c256                	sw	s5,4(sp)
1c00a2bc:	00062a03          	lw	s4,0(a2)
1c00a2c0:	cdc9                	beqz	a1,1c00a35a <shake128_squeezeblocks+0xae>
1c00a2c2:	7941                	lui	s2,0xffff0
1c00a2c4:	ff0104b7          	lui	s1,0xff010
1c00a2c8:	01000437          	lui	s0,0x1000
1c00a2cc:	89ae                	mv	s3,a1
1c00a2ce:	8aaa                	mv	s5,a0
1c00a2d0:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a2d4:	14fd                	addi	s1,s1,-1
1c00a2d6:	147d                	addi	s0,s0,-1
1c00a2d8:	85d2                	mv	a1,s4
1c00a2da:	8552                	mv	a0,s4
1c00a2dc:	32f5                	jal	1c009cc8 <KeccakF1600_StatePermute>
1c00a2de:	85d6                	mv	a1,s5
1c00a2e0:	8852                	mv	a6,s4
1c00a2e2:	0a8a8513          	addi	a0,s5,168
1c00a2e6:	00082603          	lw	a2,0(a6)
1c00a2ea:	00482683          	lw	a3,4(a6)
1c00a2ee:	00865313          	srli	t1,a2,0x8
1c00a2f2:	0086d893          	srli	a7,a3,0x8
1c00a2f6:	0ff67713          	andi	a4,a2,255
1c00a2fa:	0ff6f793          	andi	a5,a3,255
1c00a2fe:	0ff37313          	andi	t1,t1,255
1c00a302:	0ff8f893          	andi	a7,a7,255
1c00a306:	0322                	slli	t1,t1,0x8
1c00a308:	08a2                	slli	a7,a7,0x8
1c00a30a:	01277733          	and	a4,a4,s2
1c00a30e:	0127f7b3          	and	a5,a5,s2
1c00a312:	00676733          	or	a4,a4,t1
1c00a316:	0117e7b3          	or	a5,a5,a7
1c00a31a:	00ff0337          	lui	t1,0xff0
1c00a31e:	00ff08b7          	lui	a7,0xff0
1c00a322:	00667333          	and	t1,a2,t1
1c00a326:	0116f8b3          	and	a7,a3,a7
1c00a32a:	8f65                	and	a4,a4,s1
1c00a32c:	8fe5                	and	a5,a5,s1
1c00a32e:	00676733          	or	a4,a4,t1
1c00a332:	8261                	srli	a2,a2,0x18
1c00a334:	0117e7b3          	or	a5,a5,a7
1c00a338:	82e1                	srli	a3,a3,0x18
1c00a33a:	0662                	slli	a2,a2,0x18
1c00a33c:	8f61                	and	a4,a4,s0
1c00a33e:	06e2                	slli	a3,a3,0x18
1c00a340:	8fe1                	and	a5,a5,s0
1c00a342:	8f51                	or	a4,a4,a2
1c00a344:	8fd5                	or	a5,a5,a3
1c00a346:	c198                	sw	a4,0(a1)
1c00a348:	c1dc                	sw	a5,4(a1)
1c00a34a:	05a1                	addi	a1,a1,8
1c00a34c:	0821                	addi	a6,a6,8
1c00a34e:	f8b51ce3          	bne	a0,a1,1c00a2e6 <shake128_squeezeblocks+0x3a>
1c00a352:	19fd                	addi	s3,s3,-1
1c00a354:	8aaa                	mv	s5,a0
1c00a356:	f80991e3          	bnez	s3,1c00a2d8 <shake128_squeezeblocks+0x2c>
1c00a35a:	40f2                	lw	ra,28(sp)
1c00a35c:	4462                	lw	s0,24(sp)
1c00a35e:	44d2                	lw	s1,20(sp)
1c00a360:	4942                	lw	s2,16(sp)
1c00a362:	49b2                	lw	s3,12(sp)
1c00a364:	4a22                	lw	s4,8(sp)
1c00a366:	4a92                	lw	s5,4(sp)
1c00a368:	6105                	addi	sp,sp,32
1c00a36a:	8082                	ret

1c00a36c <shake128_ctx_release>:
1c00a36c:	4108                	lw	a0,0(a0)
1c00a36e:	0c800593          	li	a1,200
1c00a372:	2c00306f          	j	1c00d632 <pi_l2_free>

1c00a376 <shake256>:
1c00a376:	7131                	addi	sp,sp,-192
1c00a378:	db26                	sw	s1,180(sp)
1c00a37a:	d94a                	sw	s2,176(sp)
1c00a37c:	08800493          	li	s1,136
1c00a380:	892a                	mv	s2,a0
1c00a382:	0c800513          	li	a0,200
1c00a386:	dd22                	sw	s0,184(sp)
1c00a388:	d74e                	sw	s3,172(sp)
1c00a38a:	d552                	sw	s4,168(sp)
1c00a38c:	df06                	sw	ra,188(sp)
1c00a38e:	d356                	sw	s5,164(sp)
1c00a390:	d15a                	sw	s6,160(sp)
1c00a392:	cf5e                	sw	s7,156(sp)
1c00a394:	cd62                	sw	s8,152(sp)
1c00a396:	cb66                	sw	s9,148(sp)
1c00a398:	89ae                	mv	s3,a1
1c00a39a:	8432                	mv	s0,a2
1c00a39c:	8a36                	mv	s4,a3
1c00a39e:	0295d4b3          	divu	s1,a1,s1
1c00a3a2:	284030ef          	jal	ra,1c00d626 <pi_l2_malloc>
1c00a3a6:	20050263          	beqz	a0,1c00a5aa <shake256+0x234>
1c00a3aa:	46fd                	li	a3,31
1c00a3ac:	8652                	mv	a2,s4
1c00a3ae:	85a2                	mv	a1,s0
1c00a3b0:	8b2a                	mv	s6,a0
1c00a3b2:	3641                	jal	1c009f32 <keccak_absorb.constprop.7>
1c00a3b4:	c4dd                	beqz	s1,1c00a462 <shake256+0xec>
1c00a3b6:	00449713          	slli	a4,s1,0x4
1c00a3ba:	00970433          	add	s0,a4,s1
1c00a3be:	040e                	slli	s0,s0,0x3
1c00a3c0:	7bc1                	lui	s7,0xffff0
1c00a3c2:	ff010ab7          	lui	s5,0xff010
1c00a3c6:	01000a37          	lui	s4,0x1000
1c00a3ca:	412b0c33          	sub	s8,s6,s2
1c00a3ce:	944a                	add	s0,s0,s2
1c00a3d0:	8cca                	mv	s9,s2
1c00a3d2:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a3d6:	1afd                	addi	s5,s5,-1
1c00a3d8:	1a7d                	addi	s4,s4,-1
1c00a3da:	85da                	mv	a1,s6
1c00a3dc:	855a                	mv	a0,s6
1c00a3de:	30ed                	jal	1c009cc8 <KeccakF1600_StatePermute>
1c00a3e0:	8666                	mv	a2,s9
1c00a3e2:	088c8593          	addi	a1,s9,136
1c00a3e6:	00cc07b3          	add	a5,s8,a2
1c00a3ea:	4388                	lw	a0,0(a5)
1c00a3ec:	43d4                	lw	a3,4(a5)
1c00a3ee:	00855893          	srli	a7,a0,0x8
1c00a3f2:	0086d813          	srli	a6,a3,0x8
1c00a3f6:	0ff57713          	andi	a4,a0,255
1c00a3fa:	0ff6f793          	andi	a5,a3,255
1c00a3fe:	0ff8f893          	andi	a7,a7,255
1c00a402:	0ff87813          	andi	a6,a6,255
1c00a406:	08a2                	slli	a7,a7,0x8
1c00a408:	0822                	slli	a6,a6,0x8
1c00a40a:	01777733          	and	a4,a4,s7
1c00a40e:	0177f7b3          	and	a5,a5,s7
1c00a412:	01176733          	or	a4,a4,a7
1c00a416:	0107e7b3          	or	a5,a5,a6
1c00a41a:	00ff08b7          	lui	a7,0xff0
1c00a41e:	00ff0837          	lui	a6,0xff0
1c00a422:	011578b3          	and	a7,a0,a7
1c00a426:	0106f833          	and	a6,a3,a6
1c00a42a:	01577733          	and	a4,a4,s5
1c00a42e:	0157f7b3          	and	a5,a5,s5
1c00a432:	01176733          	or	a4,a4,a7
1c00a436:	8161                	srli	a0,a0,0x18
1c00a438:	0107e7b3          	or	a5,a5,a6
1c00a43c:	82e1                	srli	a3,a3,0x18
1c00a43e:	0562                	slli	a0,a0,0x18
1c00a440:	01477733          	and	a4,a4,s4
1c00a444:	06e2                	slli	a3,a3,0x18
1c00a446:	0147f7b3          	and	a5,a5,s4
1c00a44a:	8f49                	or	a4,a4,a0
1c00a44c:	8fd5                	or	a5,a5,a3
1c00a44e:	c218                	sw	a4,0(a2)
1c00a450:	c25c                	sw	a5,4(a2)
1c00a452:	0621                	addi	a2,a2,8
1c00a454:	f8c599e3          	bne	a1,a2,1c00a3e6 <shake256+0x70>
1c00a458:	8cae                	mv	s9,a1
1c00a45a:	f78c0c13          	addi	s8,s8,-136
1c00a45e:	f6b41ee3          	bne	s0,a1,1c00a3da <shake256+0x64>
1c00a462:	08800793          	li	a5,136
1c00a466:	02f9f9b3          	remu	s3,s3,a5
1c00a46a:	02099363          	bnez	s3,1c00a490 <shake256+0x11a>
1c00a46e:	546a                	lw	s0,184(sp)
1c00a470:	50fa                	lw	ra,188(sp)
1c00a472:	54da                	lw	s1,180(sp)
1c00a474:	594a                	lw	s2,176(sp)
1c00a476:	59ba                	lw	s3,172(sp)
1c00a478:	5a2a                	lw	s4,168(sp)
1c00a47a:	5a9a                	lw	s5,164(sp)
1c00a47c:	4bfa                	lw	s7,156(sp)
1c00a47e:	4c6a                	lw	s8,152(sp)
1c00a480:	4cda                	lw	s9,148(sp)
1c00a482:	855a                	mv	a0,s6
1c00a484:	5b0a                	lw	s6,160(sp)
1c00a486:	0c800593          	li	a1,200
1c00a48a:	6129                	addi	sp,sp,192
1c00a48c:	1a60306f          	j	1c00d632 <pi_l2_free>
1c00a490:	85da                	mv	a1,s6
1c00a492:	855a                	mv	a0,s6
1c00a494:	835ff0ef          	jal	ra,1c009cc8 <KeccakF1600_StatePermute>
1c00a498:	002c                	addi	a1,sp,8
1c00a49a:	78c1                	lui	a7,0xffff0
1c00a49c:	ff010837          	lui	a6,0xff010
1c00a4a0:	01000537          	lui	a0,0x1000
1c00a4a4:	09010e13          	addi	t3,sp,144
1c00a4a8:	862e                	mv	a2,a1
1c00a4aa:	40bb0333          	sub	t1,s6,a1
1c00a4ae:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a4b2:	187d                	addi	a6,a6,-1
1c00a4b4:	157d                	addi	a0,a0,-1
1c00a4b6:	00c307b3          	add	a5,t1,a2
1c00a4ba:	0007ae83          	lw	t4,0(a5)
1c00a4be:	43d4                	lw	a3,4(a5)
1c00a4c0:	008edf93          	srli	t6,t4,0x8
1c00a4c4:	0086df13          	srli	t5,a3,0x8
1c00a4c8:	0ffef713          	andi	a4,t4,255
1c00a4cc:	0ff6f793          	andi	a5,a3,255
1c00a4d0:	0fffff93          	andi	t6,t6,255
1c00a4d4:	0fff7f13          	andi	t5,t5,255
1c00a4d8:	0fa2                	slli	t6,t6,0x8
1c00a4da:	0f22                	slli	t5,t5,0x8
1c00a4dc:	01177733          	and	a4,a4,a7
1c00a4e0:	0117f7b3          	and	a5,a5,a7
1c00a4e4:	01f76733          	or	a4,a4,t6
1c00a4e8:	01e7e7b3          	or	a5,a5,t5
1c00a4ec:	00ff0fb7          	lui	t6,0xff0
1c00a4f0:	00ff0f37          	lui	t5,0xff0
1c00a4f4:	01feffb3          	and	t6,t4,t6
1c00a4f8:	01e6ff33          	and	t5,a3,t5
1c00a4fc:	01077733          	and	a4,a4,a6
1c00a500:	0107f7b3          	and	a5,a5,a6
1c00a504:	01f76733          	or	a4,a4,t6
1c00a508:	018ede93          	srli	t4,t4,0x18
1c00a50c:	01e7e7b3          	or	a5,a5,t5
1c00a510:	82e1                	srli	a3,a3,0x18
1c00a512:	0ee2                	slli	t4,t4,0x18
1c00a514:	8f69                	and	a4,a4,a0
1c00a516:	06e2                	slli	a3,a3,0x18
1c00a518:	8fe9                	and	a5,a5,a0
1c00a51a:	01d76733          	or	a4,a4,t4
1c00a51e:	8fd5                	or	a5,a5,a3
1c00a520:	c218                	sw	a4,0(a2)
1c00a522:	c25c                	sw	a5,4(a2)
1c00a524:	0621                	addi	a2,a2,8
1c00a526:	f8ce18e3          	bne	t3,a2,1c00a4b6 <shake256+0x140>
1c00a52a:	fff98793          	addi	a5,s3,-1
1c00a52e:	4709                	li	a4,2
1c00a530:	06f77963          	bleu	a5,a4,1c00a5a2 <shake256+0x22c>
1c00a534:	00449713          	slli	a4,s1,0x4
1c00a538:	009707b3          	add	a5,a4,s1
1c00a53c:	078e                	slli	a5,a5,0x3
1c00a53e:	0029d513          	srli	a0,s3,0x2
1c00a542:	97ca                	add	a5,a5,s2
1c00a544:	4681                	li	a3,0
1c00a546:	4190                	lw	a2,0(a1)
1c00a548:	0685                	addi	a3,a3,1
1c00a54a:	c390                	sw	a2,0(a5)
1c00a54c:	0591                	addi	a1,a1,4
1c00a54e:	0791                	addi	a5,a5,4
1c00a550:	fea6ebe3          	bltu	a3,a0,1c00a546 <shake256+0x1d0>
1c00a554:	ffc9f693          	andi	a3,s3,-4
1c00a558:	f0d98be3          	beq	s3,a3,1c00a46e <shake256+0xf8>
1c00a55c:	009707b3          	add	a5,a4,s1
1c00a560:	090c                	addi	a1,sp,144
1c00a562:	00d58733          	add	a4,a1,a3
1c00a566:	078e                	slli	a5,a5,0x3
1c00a568:	f7874603          	lbu	a2,-136(a4)
1c00a56c:	97ca                	add	a5,a5,s2
1c00a56e:	00d78733          	add	a4,a5,a3
1c00a572:	00c70023          	sb	a2,0(a4)
1c00a576:	00168713          	addi	a4,a3,1
1c00a57a:	ef377ae3          	bleu	s3,a4,1c00a46e <shake256+0xf8>
1c00a57e:	00e58633          	add	a2,a1,a4
1c00a582:	f7864603          	lbu	a2,-136(a2)
1c00a586:	973e                	add	a4,a4,a5
1c00a588:	00c70023          	sb	a2,0(a4)
1c00a58c:	0689                	addi	a3,a3,2
1c00a58e:	ef36f0e3          	bleu	s3,a3,1c00a46e <shake256+0xf8>
1c00a592:	00d58733          	add	a4,a1,a3
1c00a596:	f7874703          	lbu	a4,-136(a4)
1c00a59a:	97b6                	add	a5,a5,a3
1c00a59c:	00e78023          	sb	a4,0(a5)
1c00a5a0:	b5f9                	j	1c00a46e <shake256+0xf8>
1c00a5a2:	4681                	li	a3,0
1c00a5a4:	00449713          	slli	a4,s1,0x4
1c00a5a8:	bf55                	j	1c00a55c <shake256+0x1e6>
1c00a5aa:	06f00513          	li	a0,111
1c00a5ae:	72b010ef          	jal	ra,1c00c4d8 <exit>

1c00a5b2 <sha3_256>:
1c00a5b2:	7111                	addi	sp,sp,-256
1c00a5b4:	dda2                	sw	s0,248(sp)
1c00a5b6:	4699                	li	a3,6
1c00a5b8:	842a                	mv	s0,a0
1c00a5ba:	0028                	addi	a0,sp,8
1c00a5bc:	df86                	sw	ra,252(sp)
1c00a5be:	dba6                	sw	s1,244(sp)
1c00a5c0:	d9ca                	sw	s2,240(sp)
1c00a5c2:	d7ce                	sw	s3,236(sp)
1c00a5c4:	d5d2                	sw	s4,232(sp)
1c00a5c6:	d3d6                	sw	s5,228(sp)
1c00a5c8:	d1da                	sw	s6,224(sp)
1c00a5ca:	cfde                	sw	s7,220(sp)
1c00a5cc:	cde2                	sw	s8,216(sp)
1c00a5ce:	cbe6                	sw	s9,212(sp)
1c00a5d0:	c9ea                	sw	s10,208(sp)
1c00a5d2:	3285                	jal	1c009f32 <keccak_absorb.constprop.7>
1c00a5d4:	002c                	addi	a1,sp,8
1c00a5d6:	852e                	mv	a0,a1
1c00a5d8:	ef0ff0ef          	jal	ra,1c009cc8 <KeccakF1600_StatePermute>
1c00a5dc:	4f32                	lw	t5,12(sp)
1c00a5de:	4922                	lw	s2,8(sp)
1c00a5e0:	4ec2                	lw	t4,16(sp)
1c00a5e2:	4e52                	lw	t3,20(sp)
1c00a5e4:	4362                	lw	t1,24(sp)
1c00a5e6:	44f2                	lw	s1,28(sp)
1c00a5e8:	5382                	lw	t2,32(sp)
1c00a5ea:	5292                	lw	t0,36(sp)
1c00a5ec:	00895813          	srli	a6,s2,0x8
1c00a5f0:	008f5513          	srli	a0,t5,0x8
1c00a5f4:	008ed593          	srli	a1,t4,0x8
1c00a5f8:	008e5613          	srli	a2,t3,0x8
1c00a5fc:	00835693          	srli	a3,t1,0x8
1c00a600:	0084d713          	srli	a4,s1,0x8
1c00a604:	0083d993          	srli	s3,t2,0x8
1c00a608:	0082df93          	srli	t6,t0,0x8
1c00a60c:	0ff87813          	andi	a6,a6,255
1c00a610:	0ff57513          	andi	a0,a0,255
1c00a614:	0ff5f593          	andi	a1,a1,255
1c00a618:	0ff67613          	andi	a2,a2,255
1c00a61c:	0ff6f693          	andi	a3,a3,255
1c00a620:	0ff77713          	andi	a4,a4,255
1c00a624:	0ff9f993          	andi	s3,s3,255
1c00a628:	0fffff93          	andi	t6,t6,255
1c00a62c:	0fff7d13          	andi	s10,t5,255
1c00a630:	0ffefc93          	andi	s9,t4,255
1c00a634:	0ffe7c13          	andi	s8,t3,255
1c00a638:	0ff37b93          	andi	s7,t1,255
1c00a63c:	0ff4fb13          	andi	s6,s1,255
1c00a640:	0ff3fa93          	andi	s5,t2,255
1c00a644:	0ff2fa13          	andi	s4,t0,255
1c00a648:	0822                	slli	a6,a6,0x8
1c00a64a:	0ff97893          	andi	a7,s2,255
1c00a64e:	0522                	slli	a0,a0,0x8
1c00a650:	05a2                	slli	a1,a1,0x8
1c00a652:	0622                	slli	a2,a2,0x8
1c00a654:	06a2                	slli	a3,a3,0x8
1c00a656:	0722                	slli	a4,a4,0x8
1c00a658:	09a2                	slli	s3,s3,0x8
1c00a65a:	0fa2                	slli	t6,t6,0x8
1c00a65c:	ff0107b7          	lui	a5,0xff010
1c00a660:	17fd                	addi	a5,a5,-1
1c00a662:	01fa6fb3          	or	t6,s4,t6
1c00a666:	0108e8b3          	or	a7,a7,a6
1c00a66a:	00ff0a37          	lui	s4,0xff0
1c00a66e:	00ad6833          	or	a6,s10,a0
1c00a672:	00bce533          	or	a0,s9,a1
1c00a676:	00ff0d37          	lui	s10,0xff0
1c00a67a:	00cc65b3          	or	a1,s8,a2
1c00a67e:	00ff0cb7          	lui	s9,0xff0
1c00a682:	00dbe633          	or	a2,s7,a3
1c00a686:	00ff0c37          	lui	s8,0xff0
1c00a68a:	00eb66b3          	or	a3,s6,a4
1c00a68e:	00ff0bb7          	lui	s7,0xff0
1c00a692:	013ae733          	or	a4,s5,s3
1c00a696:	00ff0b37          	lui	s6,0xff0
1c00a69a:	00ff0ab7          	lui	s5,0xff0
1c00a69e:	00ff09b7          	lui	s3,0xff0
1c00a6a2:	01a97d33          	and	s10,s2,s10
1c00a6a6:	019f7cb3          	and	s9,t5,s9
1c00a6aa:	018efc33          	and	s8,t4,s8
1c00a6ae:	017e7bb3          	and	s7,t3,s7
1c00a6b2:	01637b33          	and	s6,t1,s6
1c00a6b6:	0154fab3          	and	s5,s1,s5
1c00a6ba:	0143fa33          	and	s4,t2,s4
1c00a6be:	0132f9b3          	and	s3,t0,s3
1c00a6c2:	00f8f8b3          	and	a7,a7,a5
1c00a6c6:	00f87833          	and	a6,a6,a5
1c00a6ca:	8d7d                	and	a0,a0,a5
1c00a6cc:	8dfd                	and	a1,a1,a5
1c00a6ce:	8e7d                	and	a2,a2,a5
1c00a6d0:	8efd                	and	a3,a3,a5
1c00a6d2:	8f7d                	and	a4,a4,a5
1c00a6d4:	00fff7b3          	and	a5,t6,a5
1c00a6d8:	01000fb7          	lui	t6,0x1000
1c00a6dc:	1ffd                	addi	t6,t6,-1
1c00a6de:	01a8e8b3          	or	a7,a7,s10
1c00a6e2:	01986833          	or	a6,a6,s9
1c00a6e6:	01856533          	or	a0,a0,s8
1c00a6ea:	0175e5b3          	or	a1,a1,s7
1c00a6ee:	01666633          	or	a2,a2,s6
1c00a6f2:	0156e6b3          	or	a3,a3,s5
1c00a6f6:	01476733          	or	a4,a4,s4
1c00a6fa:	0137e7b3          	or	a5,a5,s3
1c00a6fe:	01895913          	srli	s2,s2,0x18
1c00a702:	018f5f13          	srli	t5,t5,0x18
1c00a706:	018ede93          	srli	t4,t4,0x18
1c00a70a:	018e5e13          	srli	t3,t3,0x18
1c00a70e:	01835313          	srli	t1,t1,0x18
1c00a712:	80e1                	srli	s1,s1,0x18
1c00a714:	0183d393          	srli	t2,t2,0x18
1c00a718:	0182d293          	srli	t0,t0,0x18
1c00a71c:	0962                	slli	s2,s2,0x18
1c00a71e:	04e2                	slli	s1,s1,0x18
1c00a720:	01f8f8b3          	and	a7,a7,t6
1c00a724:	0f62                	slli	t5,t5,0x18
1c00a726:	01f87833          	and	a6,a6,t6
1c00a72a:	0ee2                	slli	t4,t4,0x18
1c00a72c:	01f57533          	and	a0,a0,t6
1c00a730:	0e62                	slli	t3,t3,0x18
1c00a732:	01f5f5b3          	and	a1,a1,t6
1c00a736:	0362                	slli	t1,t1,0x18
1c00a738:	01f67633          	and	a2,a2,t6
1c00a73c:	01f6f6b3          	and	a3,a3,t6
1c00a740:	03e2                	slli	t2,t2,0x18
1c00a742:	01f77733          	and	a4,a4,t6
1c00a746:	02e2                	slli	t0,t0,0x18
1c00a748:	01f7f7b3          	and	a5,a5,t6
1c00a74c:	0128e8b3          	or	a7,a7,s2
1c00a750:	8ec5                	or	a3,a3,s1
1c00a752:	01e86833          	or	a6,a6,t5
1c00a756:	01d56533          	or	a0,a0,t4
1c00a75a:	01c5e5b3          	or	a1,a1,t3
1c00a75e:	00666633          	or	a2,a2,t1
1c00a762:	00776733          	or	a4,a4,t2
1c00a766:	0057e7b3          	or	a5,a5,t0
1c00a76a:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00a76e:	01042223          	sw	a6,4(s0)
1c00a772:	c408                	sw	a0,8(s0)
1c00a774:	c44c                	sw	a1,12(s0)
1c00a776:	c810                	sw	a2,16(s0)
1c00a778:	c854                	sw	a3,20(s0)
1c00a77a:	cc18                	sw	a4,24(s0)
1c00a77c:	cc5c                	sw	a5,28(s0)
1c00a77e:	50fe                	lw	ra,252(sp)
1c00a780:	546e                	lw	s0,248(sp)
1c00a782:	54de                	lw	s1,244(sp)
1c00a784:	594e                	lw	s2,240(sp)
1c00a786:	59be                	lw	s3,236(sp)
1c00a788:	5a2e                	lw	s4,232(sp)
1c00a78a:	5a9e                	lw	s5,228(sp)
1c00a78c:	5b0e                	lw	s6,224(sp)
1c00a78e:	4bfe                	lw	s7,220(sp)
1c00a790:	4c6e                	lw	s8,216(sp)
1c00a792:	4cde                	lw	s9,212(sp)
1c00a794:	4d4e                	lw	s10,208(sp)
1c00a796:	6111                	addi	sp,sp,256
1c00a798:	8082                	ret

1c00a79a <sha3_512>:
1c00a79a:	db010113          	addi	sp,sp,-592
1c00a79e:	24812423          	sw	s0,584(sp)
1c00a7a2:	23312e23          	sw	s3,572(sp)
1c00a7a6:	23412c23          	sw	s4,568(sp)
1c00a7aa:	24112623          	sw	ra,588(sp)
1c00a7ae:	24912223          	sw	s1,580(sp)
1c00a7b2:	25212023          	sw	s2,576(sp)
1c00a7b6:	23512a23          	sw	s5,564(sp)
1c00a7ba:	23612823          	sw	s6,560(sp)
1c00a7be:	23712623          	sw	s7,556(sp)
1c00a7c2:	23812423          	sw	s8,552(sp)
1c00a7c6:	23912223          	sw	s9,548(sp)
1c00a7ca:	23a12023          	sw	s10,544(sp)
1c00a7ce:	21b12e23          	sw	s11,540(sp)
1c00a7d2:	842a                	mv	s0,a0
1c00a7d4:	8a32                	mv	s4,a2
1c00a7d6:	14810993          	addi	s3,sp,328
1c00a7da:	011c                	addi	a5,sp,128
1c00a7dc:	4601                	li	a2,0
1c00a7de:	4681                	li	a3,0
1c00a7e0:	c390                	sw	a2,0(a5)
1c00a7e2:	c3d4                	sw	a3,4(a5)
1c00a7e4:	07a1                	addi	a5,a5,8
1c00a7e6:	fef99be3          	bne	s3,a5,1c00a7dc <sha3_512+0x42>
1c00a7ea:	04700793          	li	a5,71
1c00a7ee:	0747fe63          	bleu	s4,a5,1c00a86a <sha3_512+0xd0>
1c00a7f2:	04700493          	li	s1,71
1c00a7f6:	87ae                	mv	a5,a1
1c00a7f8:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c00a7fc:	0114                	addi	a3,sp,128
1c00a7fe:	0017c703          	lbu	a4,1(a5)
1c00a802:	0027c583          	lbu	a1,2(a5)
1c00a806:	0057c883          	lbu	a7,5(a5)
1c00a80a:	0047c303          	lbu	t1,4(a5)
1c00a80e:	0067c803          	lbu	a6,6(a5)
1c00a812:	0007ce03          	lbu	t3,0(a5)
1c00a816:	0037c503          	lbu	a0,3(a5)
1c00a81a:	0077c603          	lbu	a2,7(a5)
1c00a81e:	05c2                	slli	a1,a1,0x10
1c00a820:	0722                	slli	a4,a4,0x8
1c00a822:	08a2                	slli	a7,a7,0x8
1c00a824:	8f4d                	or	a4,a4,a1
1c00a826:	0068e8b3          	or	a7,a7,t1
1c00a82a:	0842                	slli	a6,a6,0x10
1c00a82c:	428c                	lw	a1,0(a3)
1c00a82e:	0046a303          	lw	t1,4(a3)
1c00a832:	01c76733          	or	a4,a4,t3
1c00a836:	0562                	slli	a0,a0,0x18
1c00a838:	01186833          	or	a6,a6,a7
1c00a83c:	0662                	slli	a2,a2,0x18
1c00a83e:	8f49                	or	a4,a4,a0
1c00a840:	01066633          	or	a2,a2,a6
1c00a844:	8f2d                	xor	a4,a4,a1
1c00a846:	00c34633          	xor	a2,t1,a2
1c00a84a:	c298                	sw	a4,0(a3)
1c00a84c:	c2d0                	sw	a2,4(a3)
1c00a84e:	07a1                	addi	a5,a5,8
1c00a850:	06a1                	addi	a3,a3,8
1c00a852:	faf916e3          	bne	s2,a5,1c00a7fe <sha3_512+0x64>
1c00a856:	010c                	addi	a1,sp,128
1c00a858:	852e                	mv	a0,a1
1c00a85a:	c6eff0ef          	jal	ra,1c009cc8 <KeccakF1600_StatePermute>
1c00a85e:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c00a862:	87ca                	mv	a5,s2
1c00a864:	f944eae3          	bltu	s1,s4,1c00a7f8 <sha3_512+0x5e>
1c00a868:	85ca                	mv	a1,s2
1c00a86a:	0b18                	addi	a4,sp,400
1c00a86c:	87ce                	mv	a5,s3
1c00a86e:	4681                	li	a3,0
1c00a870:	c394                	sw	a3,0(a5)
1c00a872:	0791                	addi	a5,a5,4
1c00a874:	fef71de3          	bne	a4,a5,1c00a86e <sha3_512+0xd4>
1c00a878:	060a0563          	beqz	s4,1c00a8e2 <sha3_512+0x148>
1c00a87c:	fffa0793          	addi	a5,s4,-1
1c00a880:	4709                	li	a4,2
1c00a882:	06f772e3          	bleu	a5,a4,1c00b0e6 <sha3_512+0x94c>
1c00a886:	002a5613          	srli	a2,s4,0x2
1c00a88a:	872e                	mv	a4,a1
1c00a88c:	4781                	li	a5,0
1c00a88e:	4314                	lw	a3,0(a4)
1c00a890:	0785                	addi	a5,a5,1
1c00a892:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00a896:	0711                	addi	a4,a4,4
1c00a898:	0991                	addi	s3,s3,4
1c00a89a:	fec7eae3          	bltu	a5,a2,1c00a88e <sha3_512+0xf4>
1c00a89e:	ffca7793          	andi	a5,s4,-4
1c00a8a2:	04fa0063          	beq	s4,a5,1c00a8e2 <sha3_512+0x148>
1c00a8a6:	00f58733          	add	a4,a1,a5
1c00a8aa:	00074683          	lbu	a3,0(a4)
1c00a8ae:	21010813          	addi	a6,sp,528
1c00a8b2:	00f80733          	add	a4,a6,a5
1c00a8b6:	f2d70c23          	sb	a3,-200(a4)
1c00a8ba:	00178713          	addi	a4,a5,1
1c00a8be:	03477263          	bleu	s4,a4,1c00a8e2 <sha3_512+0x148>
1c00a8c2:	00e586b3          	add	a3,a1,a4
1c00a8c6:	0006c683          	lbu	a3,0(a3)
1c00a8ca:	9742                	add	a4,a4,a6
1c00a8cc:	f2d70c23          	sb	a3,-200(a4)
1c00a8d0:	0789                	addi	a5,a5,2
1c00a8d2:	0147f863          	bleu	s4,a5,1c00a8e2 <sha3_512+0x148>
1c00a8d6:	95be                	add	a1,a1,a5
1c00a8d8:	0005c703          	lbu	a4,0(a1)
1c00a8dc:	97c2                	add	a5,a5,a6
1c00a8de:	f2e78c23          	sb	a4,-200(a5)
1c00a8e2:	21010893          	addi	a7,sp,528
1c00a8e6:	9a46                	add	s4,s4,a7
1c00a8e8:	4799                	li	a5,6
1c00a8ea:	f2fa0c23          	sb	a5,-200(s4)
1c00a8ee:	14a14703          	lbu	a4,330(sp)
1c00a8f2:	14914f03          	lbu	t5,329(sp)
1c00a8f6:	15214783          	lbu	a5,338(sp)
1c00a8fa:	15114e83          	lbu	t4,337(sp)
1c00a8fe:	15514303          	lbu	t1,341(sp)
1c00a902:	15414383          	lbu	t2,340(sp)
1c00a906:	15614803          	lbu	a6,342(sp)
1c00a90a:	14814283          	lbu	t0,328(sp)
1c00a90e:	14b14503          	lbu	a0,331(sp)
1c00a912:	15014f83          	lbu	t6,336(sp)
1c00a916:	15314603          	lbu	a2,339(sp)
1c00a91a:	15714683          	lbu	a3,343(sp)
1c00a91e:	0f22                	slli	t5,t5,0x8
1c00a920:	0ea2                	slli	t4,t4,0x8
1c00a922:	0742                	slli	a4,a4,0x10
1c00a924:	07c2                	slli	a5,a5,0x10
1c00a926:	0322                	slli	t1,t1,0x8
1c00a928:	14d14e03          	lbu	t3,333(sp)
1c00a92c:	00736333          	or	t1,t1,t2
1c00a930:	01e76733          	or	a4,a4,t5
1c00a934:	01d7e7b3          	or	a5,a5,t4
1c00a938:	0842                	slli	a6,a6,0x10
1c00a93a:	14c14483          	lbu	s1,332(sp)
1c00a93e:	14e14883          	lbu	a7,334(sp)
1c00a942:	00576733          	or	a4,a4,t0
1c00a946:	01f7e7b3          	or	a5,a5,t6
1c00a94a:	00686833          	or	a6,a6,t1
1c00a94e:	0662                	slli	a2,a2,0x18
1c00a950:	06e2                	slli	a3,a3,0x18
1c00a952:	0562                	slli	a0,a0,0x18
1c00a954:	14f14583          	lbu	a1,335(sp)
1c00a958:	8d59                	or	a0,a0,a4
1c00a95a:	0e22                	slli	t3,t3,0x8
1c00a95c:	00f66733          	or	a4,a2,a5
1c00a960:	0106e7b3          	or	a5,a3,a6
1c00a964:	468a                	lw	a3,128(sp)
1c00a966:	009e6e33          	or	t3,t3,s1
1c00a96a:	08c2                	slli	a7,a7,0x10
1c00a96c:	01c8e8b3          	or	a7,a7,t3
1c00a970:	8d35                	xor	a0,a0,a3
1c00a972:	05e2                	slli	a1,a1,0x18
1c00a974:	469a                	lw	a3,132(sp)
1c00a976:	0115e5b3          	or	a1,a1,a7
1c00a97a:	8db5                	xor	a1,a1,a3
1c00a97c:	46aa                	lw	a3,136(sp)
1c00a97e:	15a14803          	lbu	a6,346(sp)
1c00a982:	8eb9                	xor	a3,a3,a4
1c00a984:	473a                	lw	a4,140(sp)
1c00a986:	15914483          	lbu	s1,345(sp)
1c00a98a:	8f3d                	xor	a4,a4,a5
1c00a98c:	15814a83          	lbu	s5,344(sp)
1c00a990:	15b14a03          	lbu	s4,347(sp)
1c00a994:	15c14d03          	lbu	s10,348(sp)
1c00a998:	18f14783          	lbu	a5,399(sp)
1c00a99c:	c12a                	sw	a0,128(sp)
1c00a99e:	c32e                	sw	a1,132(sp)
1c00a9a0:	c536                	sw	a3,136(sp)
1c00a9a2:	c73a                	sw	a4,140(sp)
1c00a9a4:	15d14903          	lbu	s2,349(sp)
1c00a9a8:	15e14f83          	lbu	t6,350(sp)
1c00a9ac:	16114283          	lbu	t0,353(sp)
1c00a9b0:	16214f03          	lbu	t5,354(sp)
1c00a9b4:	16d14883          	lbu	a7,365(sp)
1c00a9b8:	16c14b83          	lbu	s7,364(sp)
1c00a9bc:	04a2                	slli	s1,s1,0x8
1c00a9be:	0842                	slli	a6,a6,0x10
1c00a9c0:	02a2                	slli	t0,t0,0x8
1c00a9c2:	08a2                	slli	a7,a7,0x8
1c00a9c4:	00986833          	or	a6,a6,s1
1c00a9c8:	0f42                	slli	t5,t5,0x10
1c00a9ca:	01e2ef33          	or	t5,t0,t5
1c00a9ce:	01586833          	or	a6,a6,s5
1c00a9d2:	0178e2b3          	or	t0,a7,s7
1c00a9d6:	018a1893          	slli	a7,s4,0x18
1c00a9da:	15f14503          	lbu	a0,351(sp)
1c00a9de:	0108e833          	or	a6,a7,a6
1c00a9e2:	0922                	slli	s2,s2,0x8
1c00a9e4:	48ca                	lw	a7,144(sp)
1c00a9e6:	01a96933          	or	s2,s2,s10
1c00a9ea:	0fc2                	slli	t6,t6,0x10
1c00a9ec:	16014983          	lbu	s3,352(sp)
1c00a9f0:	16514e83          	lbu	t4,357(sp)
1c00a9f4:	16314583          	lbu	a1,355(sp)
1c00a9f8:	012fefb3          	or	t6,t6,s2
1c00a9fc:	0108c8b3          	xor	a7,a7,a6
1c00aa00:	0562                	slli	a0,a0,0x18
1c00aa02:	485a                	lw	a6,148(sp)
1c00aa04:	16414c83          	lbu	s9,356(sp)
1c00aa08:	16614c03          	lbu	s8,358(sp)
1c00aa0c:	01f56533          	or	a0,a0,t6
1c00aa10:	16914e03          	lbu	t3,361(sp)
1c00aa14:	16a14303          	lbu	t1,362(sp)
1c00aa18:	16714603          	lbu	a2,359(sp)
1c00aa1c:	013f6f33          	or	t5,t5,s3
1c00aa20:	00a84833          	xor	a6,a6,a0
1c00aa24:	0ea2                	slli	t4,t4,0x8
1c00aa26:	456a                	lw	a0,152(sp)
1c00aa28:	05e2                	slli	a1,a1,0x18
1c00aa2a:	019ee4b3          	or	s1,t4,s9
1c00aa2e:	01e5e5b3          	or	a1,a1,t5
1c00aa32:	010c1e93          	slli	t4,s8,0x10
1c00aa36:	16814383          	lbu	t2,360(sp)
1c00aa3a:	16b14683          	lbu	a3,363(sp)
1c00aa3e:	009eeeb3          	or	t4,t4,s1
1c00aa42:	8d2d                	xor	a0,a0,a1
1c00aa44:	0342                	slli	t1,t1,0x10
1c00aa46:	45fa                	lw	a1,156(sp)
1c00aa48:	0e22                	slli	t3,t3,0x8
1c00aa4a:	0662                	slli	a2,a2,0x18
1c00aa4c:	16e14b03          	lbu	s6,366(sp)
1c00aa50:	01d66633          	or	a2,a2,t4
1c00aa54:	006e6e33          	or	t3,t3,t1
1c00aa58:	16f14703          	lbu	a4,367(sp)
1c00aa5c:	007e6e33          	or	t3,t3,t2
1c00aa60:	8db1                	xor	a1,a1,a2
1c00aa62:	06e2                	slli	a3,a3,0x18
1c00aa64:	560a                	lw	a2,160(sp)
1c00aa66:	01c6e6b3          	or	a3,a3,t3
1c00aa6a:	010b1313          	slli	t1,s6,0x10
1c00aa6e:	00536333          	or	t1,t1,t0
1c00aa72:	8e35                	xor	a2,a2,a3
1c00aa74:	0762                	slli	a4,a4,0x18
1c00aa76:	569a                	lw	a3,164(sp)
1c00aa78:	00676733          	or	a4,a4,t1
1c00aa7c:	8f35                	xor	a4,a4,a3
1c00aa7e:	c946                	sw	a7,144(sp)
1c00aa80:	cb42                	sw	a6,148(sp)
1c00aa82:	cd2a                	sw	a0,152(sp)
1c00aa84:	cf2e                	sw	a1,156(sp)
1c00aa86:	d132                	sw	a2,160(sp)
1c00aa88:	d33a                	sw	a4,164(sp)
1c00aa8a:	17114e83          	lbu	t4,369(sp)
1c00aa8e:	17214a83          	lbu	s5,370(sp)
1c00aa92:	17014903          	lbu	s2,368(sp)
1c00aa96:	18114803          	lbu	a6,385(sp)
1c00aa9a:	18214483          	lbu	s1,386(sp)
1c00aa9e:	18014283          	lbu	t0,384(sp)
1c00aaa2:	18314703          	lbu	a4,387(sp)
1c00aaa6:	04c2                	slli	s1,s1,0x10
1c00aaa8:	0822                	slli	a6,a6,0x8
1c00aaaa:	17514f83          	lbu	t6,373(sp)
1c00aaae:	17314503          	lbu	a0,371(sp)
1c00aab2:	0ac2                	slli	s5,s5,0x10
1c00aab4:	00986833          	or	a6,a6,s1
1c00aab8:	0ea2                	slli	t4,t4,0x8
1c00aaba:	17414b03          	lbu	s6,372(sp)
1c00aabe:	00586833          	or	a6,a6,t0
1c00aac2:	17614e03          	lbu	t3,374(sp)
1c00aac6:	015eeeb3          	or	t4,t4,s5
1c00aaca:	0762                	slli	a4,a4,0x18
1c00aacc:	17914303          	lbu	t1,377(sp)
1c00aad0:	17a14983          	lbu	s3,378(sp)
1c00aad4:	17714583          	lbu	a1,375(sp)
1c00aad8:	012eeeb3          	or	t4,t4,s2
1c00aadc:	01076733          	or	a4,a4,a6
1c00aae0:	0fa2                	slli	t6,t6,0x8
1c00aae2:	582a                	lw	a6,168(sp)
1c00aae4:	0562                	slli	a0,a0,0x18
1c00aae6:	016fefb3          	or	t6,t6,s6
1c00aaea:	01d56533          	or	a0,a0,t4
1c00aaee:	0e42                	slli	t3,t3,0x10
1c00aaf0:	17814383          	lbu	t2,376(sp)
1c00aaf4:	01fe6e33          	or	t3,t3,t6
1c00aaf8:	17d14f03          	lbu	t5,381(sp)
1c00aafc:	17b14603          	lbu	a2,379(sp)
1c00ab00:	00a84833          	xor	a6,a6,a0
1c00ab04:	09c2                	slli	s3,s3,0x10
1c00ab06:	553a                	lw	a0,172(sp)
1c00ab08:	0322                	slli	t1,t1,0x8
1c00ab0a:	05e2                	slli	a1,a1,0x18
1c00ab0c:	17c14a03          	lbu	s4,380(sp)
1c00ab10:	17e14883          	lbu	a7,382(sp)
1c00ab14:	01c5e5b3          	or	a1,a1,t3
1c00ab18:	01336333          	or	t1,t1,s3
1c00ab1c:	00736333          	or	t1,t1,t2
1c00ab20:	17f14683          	lbu	a3,383(sp)
1c00ab24:	8d2d                	xor	a0,a0,a1
1c00ab26:	0f22                	slli	t5,t5,0x8
1c00ab28:	55ca                	lw	a1,176(sp)
1c00ab2a:	0662                	slli	a2,a2,0x18
1c00ab2c:	014f6f33          	or	t5,t5,s4
1c00ab30:	00666633          	or	a2,a2,t1
1c00ab34:	08c2                	slli	a7,a7,0x10
1c00ab36:	01e8e8b3          	or	a7,a7,t5
1c00ab3a:	8db1                	xor	a1,a1,a2
1c00ab3c:	06e2                	slli	a3,a3,0x18
1c00ab3e:	565a                	lw	a2,180(sp)
1c00ab40:	0116e6b3          	or	a3,a3,a7
1c00ab44:	8e35                	xor	a2,a2,a3
1c00ab46:	56ea                	lw	a3,184(sp)
1c00ab48:	18414f03          	lbu	t5,388(sp)
1c00ab4c:	8f35                	xor	a4,a4,a3
1c00ab4e:	d542                	sw	a6,168(sp)
1c00ab50:	d72a                	sw	a0,172(sp)
1c00ab52:	d92e                	sw	a1,176(sp)
1c00ab54:	db32                	sw	a2,180(sp)
1c00ab56:	18514883          	lbu	a7,389(sp)
1c00ab5a:	18614503          	lbu	a0,390(sp)
1c00ab5e:	18714603          	lbu	a2,391(sp)
1c00ab62:	dd3a                	sw	a4,184(sp)
1c00ab64:	18914703          	lbu	a4,393(sp)
1c00ab68:	18a14303          	lbu	t1,394(sp)
1c00ab6c:	18814e03          	lbu	t3,392(sp)
1c00ab70:	0342                	slli	t1,t1,0x10
1c00ab72:	18b14683          	lbu	a3,395(sp)
1c00ab76:	0722                	slli	a4,a4,0x8
1c00ab78:	00676733          	or	a4,a4,t1
1c00ab7c:	08a2                	slli	a7,a7,0x8
1c00ab7e:	01e8e8b3          	or	a7,a7,t5
1c00ab82:	01c76733          	or	a4,a4,t3
1c00ab86:	06e2                	slli	a3,a3,0x18
1c00ab88:	0542                	slli	a0,a0,0x10
1c00ab8a:	01156533          	or	a0,a0,a7
1c00ab8e:	18d14803          	lbu	a6,397(sp)
1c00ab92:	8f55                	or	a4,a4,a3
1c00ab94:	0662                	slli	a2,a2,0x18
1c00ab96:	56fa                	lw	a3,188(sp)
1c00ab98:	18c14e83          	lbu	t4,396(sp)
1c00ab9c:	18e14583          	lbu	a1,398(sp)
1c00aba0:	8e49                	or	a2,a2,a0
1c00aba2:	8e35                	xor	a2,a2,a3
1c00aba4:	0822                	slli	a6,a6,0x8
1c00aba6:	468e                	lw	a3,192(sp)
1c00aba8:	01d86833          	or	a6,a6,t4
1c00abac:	0807e793          	ori	a5,a5,128
1c00abb0:	05c2                	slli	a1,a1,0x10
1c00abb2:	0105e5b3          	or	a1,a1,a6
1c00abb6:	8eb9                	xor	a3,a3,a4
1c00abb8:	07e2                	slli	a5,a5,0x18
1c00abba:	471e                	lw	a4,196(sp)
1c00abbc:	8fcd                	or	a5,a5,a1
1c00abbe:	010c                	addi	a1,sp,128
1c00abc0:	8fb9                	xor	a5,a5,a4
1c00abc2:	852e                	mv	a0,a1
1c00abc4:	df32                	sw	a2,188(sp)
1c00abc6:	c1b6                	sw	a3,192(sp)
1c00abc8:	c3be                	sw	a5,196(sp)
1c00abca:	8feff0ef          	jal	ra,1c009cc8 <KeccakF1600_StatePermute>
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
1c00b0e8:	fbeff06f          	j	1c00a8a6 <sha3_512+0x10c>

1c00b0ec <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>:
1c00b0ec:	99010113          	addi	sp,sp,-1648
1c00b0f0:	7371                	lui	t1,0xffffc
1c00b0f2:	66112623          	sw	ra,1644(sp)
1c00b0f6:	66812423          	sw	s0,1640(sp)
1c00b0fa:	66912223          	sw	s1,1636(sp)
1c00b0fe:	67212023          	sw	s2,1632(sp)
1c00b102:	65412c23          	sw	s4,1624(sp)
1c00b106:	65512a23          	sw	s5,1620(sp)
1c00b10a:	65612823          	sw	s6,1616(sp)
1c00b10e:	65912223          	sw	s9,1604(sp)
1c00b112:	63b12e23          	sw	s11,1596(sp)
1c00b116:	65312e23          	sw	s3,1628(sp)
1c00b11a:	65712623          	sw	s7,1612(sp)
1c00b11e:	65812423          	sw	s8,1608(sp)
1c00b122:	65a12023          	sw	s10,1600(sp)
1c00b126:	6711                	lui	a4,0x4
1c00b128:	911a                	add	sp,sp,t1
1c00b12a:	c62a                	sw	a0,12(sp)
1c00b12c:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00b130:	7575                	lui	a0,0xffffd
1c00b132:	970a                	add	a4,a4,sp
1c00b134:	80050513          	addi	a0,a0,-2048 # ffffc800 <pulp__FC+0xffffc801>
1c00b138:	84ae                	mv	s1,a1
1c00b13a:	953a                	add	a0,a0,a4
1c00b13c:	85b2                	mv	a1,a2
1c00b13e:	8432                	mv	s0,a2
1c00b140:	c436                	sw	a3,8(sp)
1c00b142:	3a5000ef          	jal	ra,1c00bce6 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>
1c00b146:	6e91                	lui	t4,0x4
1c00b148:	7971                	lui	s2,0xffffc
1c00b14a:	630e8e93          	addi	t4,t4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00b14e:	61842703          	lw	a4,1560(s0)
1c00b152:	61c42783          	lw	a5,1564(s0)
1c00b156:	60042e03          	lw	t3,1536(s0)
1c00b15a:	60442303          	lw	t1,1540(s0)
1c00b15e:	60842883          	lw	a7,1544(s0)
1c00b162:	60c42803          	lw	a6,1548(s0)
1c00b166:	61042603          	lw	a2,1552(s0)
1c00b16a:	61442683          	lw	a3,1556(s0)
1c00b16e:	c0090513          	addi	a0,s2,-1024 # ffffbc00 <pulp__FC+0xffffbc01>
1c00b172:	9e8a                	add	t4,t4,sp
1c00b174:	85a6                	mv	a1,s1
1c00b176:	9576                	add	a0,a0,t4
1c00b178:	d43a                	sw	a4,40(sp)
1c00b17a:	d63e                	sw	a5,44(sp)
1c00b17c:	c872                	sw	t3,16(sp)
1c00b17e:	ca1a                	sw	t1,20(sp)
1c00b180:	cc46                	sw	a7,24(sp)
1c00b182:	ce42                	sw	a6,28(sp)
1c00b184:	d032                	sw	a2,32(sp)
1c00b186:	d236                	sw	a3,36(sp)
1c00b188:	7d0000ef          	jal	ra,1c00b958 <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>
1c00b18c:	6711                	lui	a4,0x4
1c00b18e:	7cf9                	lui	s9,0xffffe
1c00b190:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00b194:	6789                	lui	a5,0x2
1c00b196:	970a                	add	a4,a4,sp
1c00b198:	800c8493          	addi	s1,s9,-2048 # ffffd800 <pulp__FC+0xffffd801>
1c00b19c:	63078793          	addi	a5,a5,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00b1a0:	9e090913          	addi	s2,s2,-1568
1c00b1a4:	94ba                	add	s1,s1,a4
1c00b1a6:	6a85                	lui	s5,0x1
1c00b1a8:	978a                	add	a5,a5,sp
1c00b1aa:	c23e                	sw	a5,4(sp)
1c00b1ac:	c002                	sw	zero,0(sp)
1c00b1ae:	01270b33          	add	s6,a4,s2
1c00b1b2:	1f848a13          	addi	s4,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c00b1b6:	fffa8d93          	addi	s11,s5,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00b1ba:	4782                	lw	a5,0(sp)
1c00b1bc:	4412                	lw	s0,4(sp)
1c00b1be:	0ff7fb93          	andi	s7,a5,255
1c00b1c2:	4901                	li	s2,0
1c00b1c4:	a035                	j	1c00b1f0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x104>
1c00b1c6:	001c1813          	slli	a6,s8,0x1
1c00b1ca:	9822                	add	a6,a6,s0
1c00b1cc:	001c0893          	addi	a7,s8,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00b1d0:	00f81023          	sh	a5,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00b1d4:	2ca89a63          	bne	a7,a0,1c00b4a8 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x3bc>
1c00b1d8:	6505                	lui	a0,0x1
1c00b1da:	63050513          	addi	a0,a0,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b1de:	950a                	add	a0,a0,sp
1c00b1e0:	98cff0ef          	jal	ra,1c00a36c <shake128_ctx_release>
1c00b1e4:	0905                	addi	s2,s2,1
1c00b1e6:	4791                	li	a5,4
1c00b1e8:	20040413          	addi	s0,s0,512
1c00b1ec:	0ef90d63          	beq	s2,a5,1c00b2e6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1fa>
1c00b1f0:	6505                	lui	a0,0x1
1c00b1f2:	63050513          	addi	a0,a0,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b1f6:	0ff97693          	andi	a3,s2,255
1c00b1fa:	85da                	mv	a1,s6
1c00b1fc:	950a                	add	a0,a0,sp
1c00b1fe:	865e                	mv	a2,s7
1c00b200:	6e1000ef          	jal	ra,1c00c0e0 <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>
1c00b204:	6605                	lui	a2,0x1
1c00b206:	63060613          	addi	a2,a2,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b20a:	458d                	li	a1,3
1c00b20c:	8526                	mv	a0,s1
1c00b20e:	960a                	add	a2,a2,sp
1c00b210:	89cff0ef          	jal	ra,1c00a2ac <shake128_squeezeblocks>
1c00b214:	4c01                	li	s8,0
1c00b216:	8726                	mv	a4,s1
1c00b218:	d00a8593          	addi	a1,s5,-768
1c00b21c:	10000513          	li	a0,256
1c00b220:	00174603          	lbu	a2,1(a4)
1c00b224:	00074683          	lbu	a3,0(a4)
1c00b228:	00861793          	slli	a5,a2,0x8
1c00b22c:	8fd5                	or	a5,a5,a3
1c00b22e:	01b7f7b3          	and	a5,a5,s11
1c00b232:	00274683          	lbu	a3,2(a4)
1c00b236:	f8f5f8e3          	bleu	a5,a1,1c00b1c6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xda>
1c00b23a:	8211                	srli	a2,a2,0x4
1c00b23c:	0692                	slli	a3,a3,0x4
1c00b23e:	8ed1                	or	a3,a3,a2
1c00b240:	00d5c863          	blt	a1,a3,1c00b250 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x164>
1c00b244:	001c1793          	slli	a5,s8,0x1
1c00b248:	97a2                	add	a5,a5,s0
1c00b24a:	00d79023          	sh	a3,0(a5)
1c00b24e:	0c05                	addi	s8,s8,1
1c00b250:	f8ac04e3          	beq	s8,a0,1c00b1d8 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xec>
1c00b254:	070d                	addi	a4,a4,3
1c00b256:	fd4715e3          	bne	a4,s4,1c00b220 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x134>
1c00b25a:	0a848c93          	addi	s9,s1,168
1c00b25e:	10000993          	li	s3,256
1c00b262:	d00a8d13          	addi	s10,s5,-768
1c00b266:	a031                	j	1c00b272 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x186>
1c00b268:	9c2e                	add	s8,s8,a1
1c00b26a:	0ff00793          	li	a5,255
1c00b26e:	f787e5e3          	bltu	a5,s8,1c00b1d8 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xec>
1c00b272:	6605                	lui	a2,0x1
1c00b274:	63060613          	addi	a2,a2,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b278:	4585                	li	a1,1
1c00b27a:	8526                	mv	a0,s1
1c00b27c:	960a                	add	a2,a2,sp
1c00b27e:	82eff0ef          	jal	ra,1c00a2ac <shake128_squeezeblocks>
1c00b282:	001c1513          	slli	a0,s8,0x1
1c00b286:	9522                	add	a0,a0,s0
1c00b288:	41898eb3          	sub	t4,s3,s8
1c00b28c:	86a6                	mv	a3,s1
1c00b28e:	4581                	li	a1,0
1c00b290:	00159793          	slli	a5,a1,0x1
1c00b294:	00f50f33          	add	t5,a0,a5
1c00b298:	fd9688e3          	beq	a3,s9,1c00b268 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x17c>
1c00b29c:	0016c703          	lbu	a4,1(a3)
1c00b2a0:	0006c603          	lbu	a2,0(a3)
1c00b2a4:	00871793          	slli	a5,a4,0x8
1c00b2a8:	8fd1                	or	a5,a5,a2
1c00b2aa:	01b7f7b3          	and	a5,a5,s11
1c00b2ae:	00475613          	srli	a2,a4,0x4
1c00b2b2:	0026c703          	lbu	a4,2(a3)
1c00b2b6:	00fd6563          	bltu	s10,a5,1c00b2c0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1d4>
1c00b2ba:	00ff1023          	sh	a5,0(t5) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b2be:	0585                	addi	a1,a1,1
1c00b2c0:	00471793          	slli	a5,a4,0x4
1c00b2c4:	8fd1                	or	a5,a5,a2
1c00b2c6:	fbd5f1e3          	bleu	t4,a1,1c00b268 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x17c>
1c00b2ca:	00159713          	slli	a4,a1,0x1
1c00b2ce:	972a                	add	a4,a4,a0
1c00b2d0:	00158613          	addi	a2,a1,1
1c00b2d4:	00fd4763          	blt	s10,a5,1c00b2e2 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1f6>
1c00b2d8:	00f71023          	sh	a5,0(a4)
1c00b2dc:	85b2                	mv	a1,a2
1c00b2de:	f9d675e3          	bleu	t4,a2,1c00b268 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x17c>
1c00b2e2:	068d                	addi	a3,a3,3
1c00b2e4:	b775                	j	1c00b290 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1a4>
1c00b2e6:	4e82                	lw	t4,0(sp)
1c00b2e8:	4712                	lw	a4,4(sp)
1c00b2ea:	800a8413          	addi	s0,s5,-2048
1c00b2ee:	0e85                	addi	t4,t4,1
1c00b2f0:	9722                	add	a4,a4,s0
1c00b2f2:	c076                	sw	t4,0(sp)
1c00b2f4:	c23a                	sw	a4,4(sp)
1c00b2f6:	ed2e92e3          	bne	t4,s2,1c00b1ba <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xce>
1c00b2fa:	45a2                	lw	a1,8(sp)
1c00b2fc:	63010513          	addi	a0,sp,1584
1c00b300:	4601                	li	a2,0
1c00b302:	25e5                	jal	1c00b9ea <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b304:	63010e93          	addi	t4,sp,1584
1c00b308:	45a2                	lw	a1,8(sp)
1c00b30a:	200e8513          	addi	a0,t4,512
1c00b30e:	4605                	li	a2,1
1c00b310:	2de9                	jal	1c00b9ea <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b312:	63010713          	addi	a4,sp,1584
1c00b316:	45a2                	lw	a1,8(sp)
1c00b318:	40070513          	addi	a0,a4,1024
1c00b31c:	4609                	li	a2,2
1c00b31e:	25f1                	jal	1c00b9ea <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b320:	63010793          	addi	a5,sp,1584
1c00b324:	45a2                	lw	a1,8(sp)
1c00b326:	60078513          	addi	a0,a5,1536
1c00b32a:	460d                	li	a2,3
1c00b32c:	2d7d                	jal	1c00b9ea <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b32e:	6505                	lui	a0,0x1
1c00b330:	45a2                	lw	a1,8(sp)
1c00b332:	63050513          	addi	a0,a0,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b336:	950a                	add	a0,a0,sp
1c00b338:	4611                	li	a2,4
1c00b33a:	2dd1                	jal	1c00ba0e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b33c:	6e85                	lui	t4,0x1
1c00b33e:	630e8e93          	addi	t4,t4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b342:	9e8a                	add	t4,t4,sp
1c00b344:	45a2                	lw	a1,8(sp)
1c00b346:	200e8513          	addi	a0,t4,512
1c00b34a:	4615                	li	a2,5
1c00b34c:	25c9                	jal	1c00ba0e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b34e:	6705                	lui	a4,0x1
1c00b350:	63070713          	addi	a4,a4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b354:	970a                	add	a4,a4,sp
1c00b356:	45a2                	lw	a1,8(sp)
1c00b358:	40070513          	addi	a0,a4,1024
1c00b35c:	4619                	li	a2,6
1c00b35e:	2d45                	jal	1c00ba0e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b360:	6785                	lui	a5,0x1
1c00b362:	63078793          	addi	a5,a5,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b366:	978a                	add	a5,a5,sp
1c00b368:	45a2                	lw	a1,8(sp)
1c00b36a:	60078513          	addi	a0,a5,1536
1c00b36e:	461d                	li	a2,7
1c00b370:	2d79                	jal	1c00ba0e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b372:	6e91                	lui	t4,0x4
1c00b374:	7971                	lui	s2,0xffffc
1c00b376:	630e8e93          	addi	t4,t4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00b37a:	9e8a                	add	t4,t4,sp
1c00b37c:	e0090993          	addi	s3,s2,-512 # ffffbe00 <pulp__FC+0xffffbe01>
1c00b380:	99f6                	add	s3,s3,t4
1c00b382:	45a2                	lw	a1,8(sp)
1c00b384:	4621                	li	a2,8
1c00b386:	854e                	mv	a0,s3
1c00b388:	2559                	jal	1c00ba0e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b38a:	63010513          	addi	a0,sp,1584
1c00b38e:	189000ef          	jal	ra,1c00bd16 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c00b392:	6711                	lui	a4,0x4
1c00b394:	77f9                	lui	a5,0xffffe
1c00b396:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00b39a:	970a                	add	a4,a4,sp
1c00b39c:	80078493          	addi	s1,a5,-2048 # ffffd800 <pulp__FC+0xffffd801>
1c00b3a0:	6589                	lui	a1,0x2
1c00b3a2:	94ba                	add	s1,s1,a4
1c00b3a4:	63058593          	addi	a1,a1,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00b3a8:	958a                	add	a1,a1,sp
1c00b3aa:	8526                	mv	a0,s1
1c00b3ac:	63010613          	addi	a2,sp,1584
1c00b3b0:	1ab000ef          	jal	ra,1c00bd5a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b3b4:	6789                	lui	a5,0x2
1c00b3b6:	63078793          	addi	a5,a5,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00b3ba:	978a                	add	a5,a5,sp
1c00b3bc:	008785b3          	add	a1,a5,s0
1c00b3c0:	63010613          	addi	a2,sp,1584
1c00b3c4:	20048513          	addi	a0,s1,512
1c00b3c8:	193000ef          	jal	ra,1c00bd5a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b3cc:	6e89                	lui	t4,0x2
1c00b3ce:	630e8e93          	addi	t4,t4,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00b3d2:	9e8a                	add	t4,t4,sp
1c00b3d4:	015e85b3          	add	a1,t4,s5
1c00b3d8:	63010613          	addi	a2,sp,1584
1c00b3dc:	40048513          	addi	a0,s1,1024
1c00b3e0:	17b000ef          	jal	ra,1c00bd5a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b3e4:	6711                	lui	a4,0x4
1c00b3e6:	e3070713          	addi	a4,a4,-464 # 3e30 <__CTOR_LIST__-0x1bffc1d4>
1c00b3ea:	00e105b3          	add	a1,sp,a4
1c00b3ee:	63010613          	addi	a2,sp,1584
1c00b3f2:	60048513          	addi	a0,s1,1536
1c00b3f6:	165000ef          	jal	ra,1c00bd5a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b3fa:	6791                	lui	a5,0x4
1c00b3fc:	63078793          	addi	a5,a5,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00b400:	978a                	add	a5,a5,sp
1c00b402:	7ef5                	lui	t4,0xffffd
1c00b404:	a0090413          	addi	s0,s2,-1536
1c00b408:	943e                	add	s0,s0,a5
1c00b40a:	800e8593          	addi	a1,t4,-2048 # ffffc800 <pulp__FC+0xffffc801>
1c00b40e:	95be                	add	a1,a1,a5
1c00b410:	63010613          	addi	a2,sp,1584
1c00b414:	8522                	mv	a0,s0
1c00b416:	145000ef          	jal	ra,1c00bd5a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b41a:	8526                	mv	a0,s1
1c00b41c:	11d000ef          	jal	ra,1c00bd38 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>
1c00b420:	8522                	mv	a0,s0
1c00b422:	2d2d                	jal	1c00ba5c <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00b424:	6605                	lui	a2,0x1
1c00b426:	63060613          	addi	a2,a2,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b42a:	960a                	add	a2,a2,sp
1c00b42c:	85a6                	mv	a1,s1
1c00b42e:	8526                	mv	a0,s1
1c00b430:	1b7000ef          	jal	ra,1c00bde6 <PQCLEAN_KYBER1024_CLEAN_polyvec_add>
1c00b434:	864e                	mv	a2,s3
1c00b436:	85a2                	mv	a1,s0
1c00b438:	8522                	mv	a0,s0
1c00b43a:	2d6d                	jal	1c00baf4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00b43c:	6711                	lui	a4,0x4
1c00b43e:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00b442:	970a                	add	a4,a4,sp
1c00b444:	c0090613          	addi	a2,s2,-1024
1c00b448:	963a                	add	a2,a2,a4
1c00b44a:	85a2                	mv	a1,s0
1c00b44c:	8522                	mv	a0,s0
1c00b44e:	255d                	jal	1c00baf4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00b450:	8526                	mv	a0,s1
1c00b452:	173000ef          	jal	ra,1c00bdc4 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>
1c00b456:	8522                	mv	a0,s0
1c00b458:	2d95                	jal	1c00bacc <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00b45a:	4532                	lw	a0,12(sp)
1c00b45c:	85a6                	mv	a1,s1
1c00b45e:	2d55                	jal	1c00bb12 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>
1c00b460:	47b2                	lw	a5,12(sp)
1c00b462:	85a2                	mv	a1,s0
1c00b464:	58078513          	addi	a0,a5,1408
1c00b468:	2e35                	jal	1c00b7a4 <PQCLEAN_KYBER1024_CLEAN_poly_compress>
1c00b46a:	6311                	lui	t1,0x4
1c00b46c:	911a                	add	sp,sp,t1
1c00b46e:	66c12083          	lw	ra,1644(sp)
1c00b472:	66812403          	lw	s0,1640(sp)
1c00b476:	66412483          	lw	s1,1636(sp)
1c00b47a:	66012903          	lw	s2,1632(sp)
1c00b47e:	65c12983          	lw	s3,1628(sp)
1c00b482:	65812a03          	lw	s4,1624(sp)
1c00b486:	65412a83          	lw	s5,1620(sp)
1c00b48a:	65012b03          	lw	s6,1616(sp)
1c00b48e:	64c12b83          	lw	s7,1612(sp)
1c00b492:	64812c03          	lw	s8,1608(sp)
1c00b496:	64412c83          	lw	s9,1604(sp)
1c00b49a:	64012d03          	lw	s10,1600(sp)
1c00b49e:	63c12d83          	lw	s11,1596(sp)
1c00b4a2:	67010113          	addi	sp,sp,1648
1c00b4a6:	8082                	ret
1c00b4a8:	00469793          	slli	a5,a3,0x4
1c00b4ac:	00465693          	srli	a3,a2,0x4
1c00b4b0:	8edd                	or	a3,a3,a5
1c00b4b2:	8c46                	mv	s8,a7
1c00b4b4:	d8d5d8e3          	ble	a3,a1,1c00b244 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x158>
1c00b4b8:	bb71                	j	1c00b254 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x168>

1c00b4ba <PQCLEAN_KYBER1024_CLEAN_crypto_kem_enc>:
1c00b4ba:	7175                	addi	sp,sp,-144
1c00b4bc:	c522                	sw	s0,136(sp)
1c00b4be:	c14a                	sw	s2,128(sp)
1c00b4c0:	842a                	mv	s0,a0
1c00b4c2:	892e                	mv	s2,a1
1c00b4c4:	850a                	mv	a0,sp
1c00b4c6:	02000593          	li	a1,32
1c00b4ca:	c706                	sw	ra,140(sp)
1c00b4cc:	c326                	sw	s1,132(sp)
1c00b4ce:	84b2                	mv	s1,a2
1c00b4d0:	151000ef          	jal	ra,1c00be20 <randombytes>
1c00b4d4:	858a                	mv	a1,sp
1c00b4d6:	850a                	mv	a0,sp
1c00b4d8:	02000613          	li	a2,32
1c00b4dc:	8d6ff0ef          	jal	ra,1c00a5b2 <sha3_256>
1c00b4e0:	85a6                	mv	a1,s1
1c00b4e2:	1008                	addi	a0,sp,32
1c00b4e4:	62000613          	li	a2,1568
1c00b4e8:	8caff0ef          	jal	ra,1c00a5b2 <sha3_256>
1c00b4ec:	858a                	mv	a1,sp
1c00b4ee:	0088                	addi	a0,sp,64
1c00b4f0:	04000613          	li	a2,64
1c00b4f4:	aa6ff0ef          	jal	ra,1c00a79a <sha3_512>
1c00b4f8:	1094                	addi	a3,sp,96
1c00b4fa:	8626                	mv	a2,s1
1c00b4fc:	858a                	mv	a1,sp
1c00b4fe:	8522                	mv	a0,s0
1c00b500:	36f5                	jal	1c00b0ec <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>
1c00b502:	85a2                	mv	a1,s0
1c00b504:	1088                	addi	a0,sp,96
1c00b506:	62000613          	li	a2,1568
1c00b50a:	8a8ff0ef          	jal	ra,1c00a5b2 <sha3_256>
1c00b50e:	854a                	mv	a0,s2
1c00b510:	0090                	addi	a2,sp,64
1c00b512:	04000693          	li	a3,64
1c00b516:	02000593          	li	a1,32
1c00b51a:	e5dfe0ef          	jal	ra,1c00a376 <shake256>
1c00b51e:	40ba                	lw	ra,140(sp)
1c00b520:	442a                	lw	s0,136(sp)
1c00b522:	449a                	lw	s1,132(sp)
1c00b524:	490a                	lw	s2,128(sp)
1c00b526:	4501                	li	a0,0
1c00b528:	6149                	addi	sp,sp,144
1c00b52a:	8082                	ret

1c00b52c <PQCLEAN_KYBER1024_CLEAN_ntt>:
1c00b52c:	7139                	addi	sp,sp,-64
1c00b52e:	da26                	sw	s1,52(sp)
1c00b530:	d256                	sw	s5,36(sp)
1c00b532:	d05a                	sw	s6,32(sp)
1c00b534:	ce5e                	sw	s7,28(sp)
1c00b536:	cc62                	sw	s8,24(sp)
1c00b538:	ca66                	sw	s9,20(sp)
1c00b53a:	de06                	sw	ra,60(sp)
1c00b53c:	dc22                	sw	s0,56(sp)
1c00b53e:	d84a                	sw	s2,48(sp)
1c00b540:	d64e                	sw	s3,44(sp)
1c00b542:	d452                	sw	s4,40(sp)
1c00b544:	c86a                	sw	s10,16(sp)
1c00b546:	c66e                	sw	s11,12(sp)
1c00b548:	8b2a                	mv	s6,a0
1c00b54a:	4c9d                	li	s9,7
1c00b54c:	d0a00493          	li	s1,-758
1c00b550:	4b85                	li	s7,1
1c00b552:	08000a93          	li	s5,128
1c00b556:	0ff00c13          	li	s8,255
1c00b55a:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00b55e:	1c0007b7          	lui	a5,0x1c000
1c00b562:	4401                	li	s0,0
1c00b564:	00199a13          	slli	s4,s3,0x1
1c00b568:	14c78793          	addi	a5,a5,332 # 1c00014c <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00b56c:	008a8933          	add	s2,s5,s0
1c00b570:	9a3e                	add	s4,s4,a5
1c00b572:	8bce                	mv	s7,s3
1c00b574:	05247c63          	bleu	s2,s0,1c00b5cc <PQCLEAN_KYBER1024_CLEAN_ntt+0xa0>
1c00b578:	00191793          	slli	a5,s2,0x1
1c00b57c:	00fb0d33          	add	s10,s6,a5
1c00b580:	0406                	slli	s0,s0,0x1
1c00b582:	945a                	add	s0,s0,s6
1c00b584:	8dea                	mv	s11,s10
1c00b586:	000d1503          	lh	a0,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b58a:	0409                	addi	s0,s0,2
1c00b58c:	02950533          	mul	a0,a0,s1
1c00b590:	30d000ef          	jal	ra,1c00c09c <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b594:	ffe45703          	lhu	a4,-2(s0)
1c00b598:	0542                	slli	a0,a0,0x10
1c00b59a:	8141                	srli	a0,a0,0x10
1c00b59c:	8f09                	sub	a4,a4,a0
1c00b59e:	00ed1023          	sh	a4,0(s10)
1c00b5a2:	ffe45703          	lhu	a4,-2(s0)
1c00b5a6:	0d09                	addi	s10,s10,2
1c00b5a8:	953a                	add	a0,a0,a4
1c00b5aa:	fea41f23          	sh	a0,-2(s0)
1c00b5ae:	fc8d9ce3          	bne	s11,s0,1c00b586 <PQCLEAN_KYBER1024_CLEAN_ntt+0x5a>
1c00b5b2:	01590433          	add	s0,s2,s5
1c00b5b6:	008c6d63          	bltu	s8,s0,1c00b5d0 <PQCLEAN_KYBER1024_CLEAN_ntt+0xa4>
1c00b5ba:	0985                	addi	s3,s3,1
1c00b5bc:	008a8933          	add	s2,s5,s0
1c00b5c0:	000a1483          	lh	s1,0(s4)
1c00b5c4:	8bce                	mv	s7,s3
1c00b5c6:	0a09                	addi	s4,s4,2
1c00b5c8:	fb2468e3          	bltu	s0,s2,1c00b578 <PQCLEAN_KYBER1024_CLEAN_ntt+0x4c>
1c00b5cc:	844a                	mv	s0,s2
1c00b5ce:	b7f5                	j	1c00b5ba <PQCLEAN_KYBER1024_CLEAN_ntt+0x8e>
1c00b5d0:	1cfd                	addi	s9,s9,-1
1c00b5d2:	001ada93          	srli	s5,s5,0x1
1c00b5d6:	000c8b63          	beqz	s9,1c00b5ec <PQCLEAN_KYBER1024_CLEAN_ntt+0xc0>
1c00b5da:	1c0007b7          	lui	a5,0x1c000
1c00b5de:	0986                	slli	s3,s3,0x1
1c00b5e0:	14c78793          	addi	a5,a5,332 # 1c00014c <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00b5e4:	99be                	add	s3,s3,a5
1c00b5e6:	00099483          	lh	s1,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b5ea:	bf85                	j	1c00b55a <PQCLEAN_KYBER1024_CLEAN_ntt+0x2e>
1c00b5ec:	50f2                	lw	ra,60(sp)
1c00b5ee:	5462                	lw	s0,56(sp)
1c00b5f0:	54d2                	lw	s1,52(sp)
1c00b5f2:	5942                	lw	s2,48(sp)
1c00b5f4:	59b2                	lw	s3,44(sp)
1c00b5f6:	5a22                	lw	s4,40(sp)
1c00b5f8:	5a92                	lw	s5,36(sp)
1c00b5fa:	5b02                	lw	s6,32(sp)
1c00b5fc:	4bf2                	lw	s7,28(sp)
1c00b5fe:	4c62                	lw	s8,24(sp)
1c00b600:	4cd2                	lw	s9,20(sp)
1c00b602:	4d42                	lw	s10,16(sp)
1c00b604:	4db2                	lw	s11,12(sp)
1c00b606:	6121                	addi	sp,sp,64
1c00b608:	8082                	ret

1c00b60a <PQCLEAN_KYBER1024_CLEAN_invntt>:
1c00b60a:	7139                	addi	sp,sp,-64
1c00b60c:	dc22                	sw	s0,56(sp)
1c00b60e:	da26                	sw	s1,52(sp)
1c00b610:	d256                	sw	s5,36(sp)
1c00b612:	d05a                	sw	s6,32(sp)
1c00b614:	ce5e                	sw	s7,28(sp)
1c00b616:	cc62                	sw	s8,24(sp)
1c00b618:	de06                	sw	ra,60(sp)
1c00b61a:	d84a                	sw	s2,48(sp)
1c00b61c:	d64e                	sw	s3,44(sp)
1c00b61e:	d452                	sw	s4,40(sp)
1c00b620:	ca66                	sw	s9,20(sp)
1c00b622:	c86a                	sw	s10,16(sp)
1c00b624:	c66e                	sw	s11,12(sp)
1c00b626:	842a                	mv	s0,a0
1c00b628:	4c1d                	li	s8,7
1c00b62a:	65c00493          	li	s1,1628
1c00b62e:	07f00a93          	li	s5,127
1c00b632:	4b09                	li	s6,2
1c00b634:	0ff00b93          	li	s7,255
1c00b638:	800007b7          	lui	a5,0x80000
1c00b63c:	fff7c793          	not	a5,a5
1c00b640:	00fa8a33          	add	s4,s5,a5
1c00b644:	1c000737          	lui	a4,0x1c000
1c00b648:	4781                	li	a5,0
1c00b64a:	0a06                	slli	s4,s4,0x1
1c00b64c:	14c70713          	addi	a4,a4,332 # 1c00014c <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00b650:	016789b3          	add	s3,a5,s6
1c00b654:	9a3a                	add	s4,s4,a4
1c00b656:	1afd                	addi	s5,s5,-1
1c00b658:	0737f263          	bleu	s3,a5,1c00b6bc <PQCLEAN_KYBER1024_CLEAN_invntt+0xb2>
1c00b65c:	00199d93          	slli	s11,s3,0x1
1c00b660:	0786                	slli	a5,a5,0x1
1c00b662:	9da2                	add	s11,s11,s0
1c00b664:	00f40d33          	add	s10,s0,a5
1c00b668:	896e                	mv	s2,s11
1c00b66a:	000d5c83          	lhu	s9,0(s10)
1c00b66e:	000dd503          	lhu	a0,0(s11)
1c00b672:	0d09                	addi	s10,s10,2
1c00b674:	9566                	add	a0,a0,s9
1c00b676:	0542                	slli	a0,a0,0x10
1c00b678:	8541                	srai	a0,a0,0x10
1c00b67a:	243000ef          	jal	ra,1c00c0bc <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00b67e:	fead1f23          	sh	a0,-2(s10)
1c00b682:	000dd503          	lhu	a0,0(s11)
1c00b686:	0d89                	addi	s11,s11,2
1c00b688:	41950533          	sub	a0,a0,s9
1c00b68c:	0542                	slli	a0,a0,0x10
1c00b68e:	8541                	srai	a0,a0,0x10
1c00b690:	fead9f23          	sh	a0,-2(s11)
1c00b694:	02950533          	mul	a0,a0,s1
1c00b698:	205000ef          	jal	ra,1c00c09c <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b69c:	fead9f23          	sh	a0,-2(s11)
1c00b6a0:	fda915e3          	bne	s2,s10,1c00b66a <PQCLEAN_KYBER1024_CLEAN_invntt+0x60>
1c00b6a4:	016987b3          	add	a5,s3,s6
1c00b6a8:	00fbed63          	bltu	s7,a5,1c00b6c2 <PQCLEAN_KYBER1024_CLEAN_invntt+0xb8>
1c00b6ac:	016789b3          	add	s3,a5,s6
1c00b6b0:	000a1483          	lh	s1,0(s4)
1c00b6b4:	1afd                	addi	s5,s5,-1
1c00b6b6:	1a79                	addi	s4,s4,-2
1c00b6b8:	fb37e2e3          	bltu	a5,s3,1c00b65c <PQCLEAN_KYBER1024_CLEAN_invntt+0x52>
1c00b6bc:	87ce                	mv	a5,s3
1c00b6be:	fefbf7e3          	bleu	a5,s7,1c00b6ac <PQCLEAN_KYBER1024_CLEAN_invntt+0xa2>
1c00b6c2:	1c7d                	addi	s8,s8,-1
1c00b6c4:	0b06                	slli	s6,s6,0x1
1c00b6c6:	000c0c63          	beqz	s8,1c00b6de <PQCLEAN_KYBER1024_CLEAN_invntt+0xd4>
1c00b6ca:	1c000737          	lui	a4,0x1c000
1c00b6ce:	001a9793          	slli	a5,s5,0x1
1c00b6d2:	14c70713          	addi	a4,a4,332 # 1c00014c <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00b6d6:	97ba                	add	a5,a5,a4
1c00b6d8:	00079483          	lh	s1,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00b6dc:	bfb1                	j	1c00b638 <PQCLEAN_KYBER1024_CLEAN_invntt+0x2e>
1c00b6de:	20040913          	addi	s2,s0,512
1c00b6e2:	5a100493          	li	s1,1441
1c00b6e6:	00041503          	lh	a0,0(s0)
1c00b6ea:	0409                	addi	s0,s0,2
1c00b6ec:	02950533          	mul	a0,a0,s1
1c00b6f0:	1ad000ef          	jal	ra,1c00c09c <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b6f4:	fea41f23          	sh	a0,-2(s0)
1c00b6f8:	fe8917e3          	bne	s2,s0,1c00b6e6 <PQCLEAN_KYBER1024_CLEAN_invntt+0xdc>
1c00b6fc:	50f2                	lw	ra,60(sp)
1c00b6fe:	5462                	lw	s0,56(sp)
1c00b700:	54d2                	lw	s1,52(sp)
1c00b702:	5942                	lw	s2,48(sp)
1c00b704:	59b2                	lw	s3,44(sp)
1c00b706:	5a22                	lw	s4,40(sp)
1c00b708:	5a92                	lw	s5,36(sp)
1c00b70a:	5b02                	lw	s6,32(sp)
1c00b70c:	4bf2                	lw	s7,28(sp)
1c00b70e:	4c62                	lw	s8,24(sp)
1c00b710:	4cd2                	lw	s9,20(sp)
1c00b712:	4d42                	lw	s10,16(sp)
1c00b714:	4db2                	lw	s11,12(sp)
1c00b716:	6121                	addi	sp,sp,64
1c00b718:	8082                	ret

1c00b71a <PQCLEAN_KYBER1024_CLEAN_basemul>:
1c00b71a:	00261783          	lh	a5,2(a2)
1c00b71e:	00259703          	lh	a4,2(a1)
1c00b722:	1101                	addi	sp,sp,-32
1c00b724:	cc22                	sw	s0,24(sp)
1c00b726:	842a                	mv	s0,a0
1c00b728:	02f70533          	mul	a0,a4,a5
1c00b72c:	ce06                	sw	ra,28(sp)
1c00b72e:	ca26                	sw	s1,20(sp)
1c00b730:	c84a                	sw	s2,16(sp)
1c00b732:	c64e                	sw	s3,12(sp)
1c00b734:	892e                	mv	s2,a1
1c00b736:	84b2                	mv	s1,a2
1c00b738:	89b6                	mv	s3,a3
1c00b73a:	163000ef          	jal	ra,1c00c09c <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b73e:	00a41023          	sh	a0,0(s0)
1c00b742:	03350533          	mul	a0,a0,s3
1c00b746:	157000ef          	jal	ra,1c00c09c <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b74a:	00a41023          	sh	a0,0(s0)
1c00b74e:	00049783          	lh	a5,0(s1)
1c00b752:	00091503          	lh	a0,0(s2)
1c00b756:	02f50533          	mul	a0,a0,a5
1c00b75a:	143000ef          	jal	ra,1c00c09c <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b75e:	00045783          	lhu	a5,0(s0)
1c00b762:	953e                	add	a0,a0,a5
1c00b764:	00a41023          	sh	a0,0(s0)
1c00b768:	00249783          	lh	a5,2(s1)
1c00b76c:	00091503          	lh	a0,0(s2)
1c00b770:	02f50533          	mul	a0,a0,a5
1c00b774:	129000ef          	jal	ra,1c00c09c <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b778:	00a41123          	sh	a0,2(s0)
1c00b77c:	00049783          	lh	a5,0(s1)
1c00b780:	00291503          	lh	a0,2(s2)
1c00b784:	02f50533          	mul	a0,a0,a5
1c00b788:	115000ef          	jal	ra,1c00c09c <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b78c:	00245783          	lhu	a5,2(s0)
1c00b790:	40f2                	lw	ra,28(sp)
1c00b792:	953e                	add	a0,a0,a5
1c00b794:	00a41123          	sh	a0,2(s0)
1c00b798:	4462                	lw	s0,24(sp)
1c00b79a:	44d2                	lw	s1,20(sp)
1c00b79c:	4942                	lw	s2,16(sp)
1c00b79e:	49b2                	lw	s3,12(sp)
1c00b7a0:	6105                	addi	sp,sp,32
1c00b7a2:	8082                	ret

1c00b7a4 <PQCLEAN_KYBER1024_CLEAN_poly_compress>:
1c00b7a4:	1101                	addi	sp,sp,-32
1c00b7a6:	6605                	lui	a2,0x1
1c00b7a8:	ce22                	sw	s0,28(sp)
1c00b7aa:	cc26                	sw	s1,24(sp)
1c00b7ac:	ca4a                	sw	s2,20(sp)
1c00b7ae:	c84e                	sw	s3,16(sp)
1c00b7b0:	c652                	sw	s4,12(sp)
1c00b7b2:	0a050813          	addi	a6,a0,160
1c00b7b6:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b7ba:	00459a03          	lh	s4,4(a1)
1c00b7be:	00659983          	lh	s3,6(a1)
1c00b7c2:	00a59903          	lh	s2,10(a1)
1c00b7c6:	00c59483          	lh	s1,12(a1)
1c00b7ca:	00859383          	lh	t2,8(a1)
1c00b7ce:	00e59283          	lh	t0,14(a1)
1c00b7d2:	00259403          	lh	s0,2(a1)
1c00b7d6:	00059f83          	lh	t6,0(a1)
1c00b7da:	40fa5e93          	srai	t4,s4,0xf
1c00b7de:	40f9d713          	srai	a4,s3,0xf
1c00b7e2:	40f95793          	srai	a5,s2,0xf
1c00b7e6:	40f4d893          	srai	a7,s1,0xf
1c00b7ea:	40f3d313          	srai	t1,t2,0xf
1c00b7ee:	40f2d693          	srai	a3,t0,0xf
1c00b7f2:	40f45e13          	srai	t3,s0,0xf
1c00b7f6:	00cefeb3          	and	t4,t4,a2
1c00b7fa:	8f71                	and	a4,a4,a2
1c00b7fc:	8ff1                	and	a5,a5,a2
1c00b7fe:	00c8f8b3          	and	a7,a7,a2
1c00b802:	40ffdf13          	srai	t5,t6,0xf
1c00b806:	00ce7e33          	and	t3,t3,a2
1c00b80a:	9ed2                	add	t4,t4,s4
1c00b80c:	974e                	add	a4,a4,s3
1c00b80e:	00c37333          	and	t1,t1,a2
1c00b812:	97ca                	add	a5,a5,s2
1c00b814:	98a6                	add	a7,a7,s1
1c00b816:	8ef1                	and	a3,a3,a2
1c00b818:	931e                	add	t1,t1,t2
1c00b81a:	9696                	add	a3,a3,t0
1c00b81c:	00cf7f33          	and	t5,t5,a2
1c00b820:	9e22                	add	t3,t3,s0
1c00b822:	0742                	slli	a4,a4,0x10
1c00b824:	08c2                	slli	a7,a7,0x10
1c00b826:	0ec2                	slli	t4,t4,0x10
1c00b828:	07c2                	slli	a5,a5,0x10
1c00b82a:	9f7e                	add	t5,t5,t6
1c00b82c:	8741                	srai	a4,a4,0x10
1c00b82e:	4108d893          	srai	a7,a7,0x10
1c00b832:	410ede93          	srai	t4,t4,0x10
1c00b836:	87c1                	srai	a5,a5,0x10
1c00b838:	0e42                	slli	t3,t3,0x10
1c00b83a:	0342                	slli	t1,t1,0x10
1c00b83c:	06c2                	slli	a3,a3,0x10
1c00b83e:	410e5e13          	srai	t3,t3,0x10
1c00b842:	0716                	slli	a4,a4,0x5
1c00b844:	41035313          	srai	t1,t1,0x10
1c00b848:	0896                	slli	a7,a7,0x5
1c00b84a:	0e96                	slli	t4,t4,0x5
1c00b84c:	0796                	slli	a5,a5,0x5
1c00b84e:	86c1                	srai	a3,a3,0x10
1c00b850:	0f42                	slli	t5,t5,0x10
1c00b852:	0e16                	slli	t3,t3,0x5
1c00b854:	68070713          	addi	a4,a4,1664
1c00b858:	0316                	slli	t1,t1,0x5
1c00b85a:	68088893          	addi	a7,a7,1664
1c00b85e:	410f5f13          	srai	t5,t5,0x10
1c00b862:	680e8e93          	addi	t4,t4,1664
1c00b866:	68078793          	addi	a5,a5,1664
1c00b86a:	0696                	slli	a3,a3,0x5
1c00b86c:	680e0e13          	addi	t3,t3,1664
1c00b870:	02c75733          	divu	a4,a4,a2
1c00b874:	68030313          	addi	t1,t1,1664 # 4680 <__CTOR_LIST__-0x1bffb984>
1c00b878:	02c8d8b3          	divu	a7,a7,a2
1c00b87c:	0f16                	slli	t5,t5,0x5
1c00b87e:	02cedeb3          	divu	t4,t4,a2
1c00b882:	02c7d7b3          	divu	a5,a5,a2
1c00b886:	68068693          	addi	a3,a3,1664
1c00b88a:	02ce5e33          	divu	t3,t3,a2
1c00b88e:	02c35333          	divu	t1,t1,a2
1c00b892:	680f0f13          	addi	t5,t5,1664
1c00b896:	02c6d6b3          	divu	a3,a3,a2
1c00b89a:	02cf5f33          	divu	t5,t5,a2
1c00b89e:	8b7d                	andi	a4,a4,31
1c00b8a0:	01f8f893          	andi	a7,a7,31
1c00b8a4:	01fefe93          	andi	t4,t4,31
1c00b8a8:	8bfd                	andi	a5,a5,31
1c00b8aa:	00771f93          	slli	t6,a4,0x7
1c00b8ae:	01fe7e13          	andi	t3,t3,31
1c00b8b2:	01f37313          	andi	t1,t1,31
1c00b8b6:	00689393          	slli	t2,a7,0x6
1c00b8ba:	0e8a                	slli	t4,t4,0x2
1c00b8bc:	0786                	slli	a5,a5,0x1
1c00b8be:	8afd                	andi	a3,a3,31
1c00b8c0:	005e1293          	slli	t0,t3,0x5
1c00b8c4:	01feeeb3          	or	t4,t4,t6
1c00b8c8:	01ff7f13          	andi	t5,t5,31
1c00b8cc:	00431f93          	slli	t6,t1,0x4
1c00b8d0:	003e5e13          	srli	t3,t3,0x3
1c00b8d4:	8305                	srli	a4,a4,0x1
1c00b8d6:	0077e7b3          	or	a5,a5,t2
1c00b8da:	00435313          	srli	t1,t1,0x4
1c00b8de:	068e                	slli	a3,a3,0x3
1c00b8e0:	0028d893          	srli	a7,a7,0x2
1c00b8e4:	005f6f33          	or	t5,t5,t0
1c00b8e8:	01ceee33          	or	t3,t4,t3
1c00b8ec:	01f76733          	or	a4,a4,t6
1c00b8f0:	0067e7b3          	or	a5,a5,t1
1c00b8f4:	0116e6b3          	or	a3,a3,a7
1c00b8f8:	01e50023          	sb	t5,0(a0)
1c00b8fc:	01c500a3          	sb	t3,1(a0)
1c00b900:	00e50123          	sb	a4,2(a0)
1c00b904:	00f501a3          	sb	a5,3(a0)
1c00b908:	00d50223          	sb	a3,4(a0)
1c00b90c:	0515                	addi	a0,a0,5
1c00b90e:	05c1                	addi	a1,a1,16
1c00b910:	eb0515e3          	bne	a0,a6,1c00b7ba <PQCLEAN_KYBER1024_CLEAN_poly_compress+0x16>
1c00b914:	4472                	lw	s0,28(sp)
1c00b916:	44e2                	lw	s1,24(sp)
1c00b918:	4952                	lw	s2,20(sp)
1c00b91a:	49c2                	lw	s3,16(sp)
1c00b91c:	4a32                	lw	s4,12(sp)
1c00b91e:	6105                	addi	sp,sp,32
1c00b920:	8082                	ret

1c00b922 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>:
1c00b922:	6685                	lui	a3,0x1
1c00b924:	18058613          	addi	a2,a1,384
1c00b928:	16fd                	addi	a3,a3,-1
1c00b92a:	0015c783          	lbu	a5,1(a1)
1c00b92e:	0005c703          	lbu	a4,0(a1)
1c00b932:	07a2                	slli	a5,a5,0x8
1c00b934:	8fd9                	or	a5,a5,a4
1c00b936:	8ff5                	and	a5,a5,a3
1c00b938:	00f51023          	sh	a5,0(a0)
1c00b93c:	0015c703          	lbu	a4,1(a1)
1c00b940:	0025c783          	lbu	a5,2(a1)
1c00b944:	8311                	srli	a4,a4,0x4
1c00b946:	0792                	slli	a5,a5,0x4
1c00b948:	8fd9                	or	a5,a5,a4
1c00b94a:	00f51123          	sh	a5,2(a0)
1c00b94e:	058d                	addi	a1,a1,3
1c00b950:	0511                	addi	a0,a0,4
1c00b952:	fcb61ce3          	bne	a2,a1,1c00b92a <PQCLEAN_KYBER1024_CLEAN_poly_frombytes+0x8>
1c00b956:	8082                	ret

1c00b958 <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>:
1c00b958:	20050713          	addi	a4,a0,512
1c00b95c:	0005c783          	lbu	a5,0(a1)
1c00b960:	0541                	addi	a0,a0,16
1c00b962:	8b85                	andi	a5,a5,1
1c00b964:	40f007b3          	neg	a5,a5
1c00b968:	6817f793          	andi	a5,a5,1665
1c00b96c:	fef51823          	sh	a5,-16(a0)
1c00b970:	0005c783          	lbu	a5,0(a1)
1c00b974:	0585                	addi	a1,a1,1
1c00b976:	07fa                	slli	a5,a5,0x1e
1c00b978:	87fd                	srai	a5,a5,0x1f
1c00b97a:	6817f793          	andi	a5,a5,1665
1c00b97e:	fef51923          	sh	a5,-14(a0)
1c00b982:	fff5c783          	lbu	a5,-1(a1)
1c00b986:	07f6                	slli	a5,a5,0x1d
1c00b988:	87fd                	srai	a5,a5,0x1f
1c00b98a:	6817f793          	andi	a5,a5,1665
1c00b98e:	fef51a23          	sh	a5,-12(a0)
1c00b992:	fff5c783          	lbu	a5,-1(a1)
1c00b996:	07f2                	slli	a5,a5,0x1c
1c00b998:	87fd                	srai	a5,a5,0x1f
1c00b99a:	6817f793          	andi	a5,a5,1665
1c00b99e:	fef51b23          	sh	a5,-10(a0)
1c00b9a2:	fff5c783          	lbu	a5,-1(a1)
1c00b9a6:	07ee                	slli	a5,a5,0x1b
1c00b9a8:	87fd                	srai	a5,a5,0x1f
1c00b9aa:	6817f793          	andi	a5,a5,1665
1c00b9ae:	fef51c23          	sh	a5,-8(a0)
1c00b9b2:	fff5c783          	lbu	a5,-1(a1)
1c00b9b6:	07ea                	slli	a5,a5,0x1a
1c00b9b8:	87fd                	srai	a5,a5,0x1f
1c00b9ba:	6817f793          	andi	a5,a5,1665
1c00b9be:	fef51d23          	sh	a5,-6(a0)
1c00b9c2:	fff5c783          	lbu	a5,-1(a1)
1c00b9c6:	07e6                	slli	a5,a5,0x19
1c00b9c8:	87fd                	srai	a5,a5,0x1f
1c00b9ca:	6817f793          	andi	a5,a5,1665
1c00b9ce:	fef51e23          	sh	a5,-4(a0)
1c00b9d2:	fff5c783          	lbu	a5,-1(a1)
1c00b9d6:	879d                	srai	a5,a5,0x7
1c00b9d8:	40f007b3          	neg	a5,a5
1c00b9dc:	6817f793          	andi	a5,a5,1665
1c00b9e0:	fef51f23          	sh	a5,-2(a0)
1c00b9e4:	f6e51ce3          	bne	a0,a4,1c00b95c <PQCLEAN_KYBER1024_CLEAN_poly_frommsg+0x4>
1c00b9e8:	8082                	ret

1c00b9ea <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>:
1c00b9ea:	7175                	addi	sp,sp,-144
1c00b9ec:	c522                	sw	s0,136(sp)
1c00b9ee:	86b2                	mv	a3,a2
1c00b9f0:	842a                	mv	s0,a0
1c00b9f2:	862e                	mv	a2,a1
1c00b9f4:	850a                	mv	a0,sp
1c00b9f6:	08000593          	li	a1,128
1c00b9fa:	c706                	sw	ra,140(sp)
1c00b9fc:	2f31                	jal	1c00c118 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00b9fe:	858a                	mv	a1,sp
1c00ba00:	8522                	mv	a0,s0
1c00ba02:	b2cfe0ef          	jal	ra,1c009d2e <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>
1c00ba06:	40ba                	lw	ra,140(sp)
1c00ba08:	442a                	lw	s0,136(sp)
1c00ba0a:	6149                	addi	sp,sp,144
1c00ba0c:	8082                	ret

1c00ba0e <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>:
1c00ba0e:	7175                	addi	sp,sp,-144
1c00ba10:	c522                	sw	s0,136(sp)
1c00ba12:	86b2                	mv	a3,a2
1c00ba14:	842a                	mv	s0,a0
1c00ba16:	862e                	mv	a2,a1
1c00ba18:	850a                	mv	a0,sp
1c00ba1a:	08000593          	li	a1,128
1c00ba1e:	c706                	sw	ra,140(sp)
1c00ba20:	2de5                	jal	1c00c118 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00ba22:	858a                	mv	a1,sp
1c00ba24:	8522                	mv	a0,s0
1c00ba26:	c0afe0ef          	jal	ra,1c009e30 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>
1c00ba2a:	40ba                	lw	ra,140(sp)
1c00ba2c:	442a                	lw	s0,136(sp)
1c00ba2e:	6149                	addi	sp,sp,144
1c00ba30:	8082                	ret

1c00ba32 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>:
1c00ba32:	1141                	addi	sp,sp,-16
1c00ba34:	c422                	sw	s0,8(sp)
1c00ba36:	842a                	mv	s0,a0
1c00ba38:	c226                	sw	s1,4(sp)
1c00ba3a:	c606                	sw	ra,12(sp)
1c00ba3c:	20040493          	addi	s1,s0,512
1c00ba40:	34f5                	jal	1c00b52c <PQCLEAN_KYBER1024_CLEAN_ntt>
1c00ba42:	00041503          	lh	a0,0(s0)
1c00ba46:	0409                	addi	s0,s0,2
1c00ba48:	2d95                	jal	1c00c0bc <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00ba4a:	fea41f23          	sh	a0,-2(s0)
1c00ba4e:	fe941ae3          	bne	s0,s1,1c00ba42 <PQCLEAN_KYBER1024_CLEAN_poly_ntt+0x10>
1c00ba52:	40b2                	lw	ra,12(sp)
1c00ba54:	4422                	lw	s0,8(sp)
1c00ba56:	4492                	lw	s1,4(sp)
1c00ba58:	0141                	addi	sp,sp,16
1c00ba5a:	8082                	ret

1c00ba5c <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>:
1c00ba5c:	b67d                	j	1c00b60a <PQCLEAN_KYBER1024_CLEAN_invntt>

1c00ba5e <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>:
1c00ba5e:	1101                	addi	sp,sp,-32
1c00ba60:	ca26                	sw	s1,20(sp)
1c00ba62:	c256                	sw	s5,4(sp)
1c00ba64:	1c0004b7          	lui	s1,0x1c000
1c00ba68:	1c000ab7          	lui	s5,0x1c000
1c00ba6c:	c84a                	sw	s2,16(sp)
1c00ba6e:	c64e                	sw	s3,12(sp)
1c00ba70:	c452                	sw	s4,8(sp)
1c00ba72:	ce06                	sw	ra,28(sp)
1c00ba74:	cc22                	sw	s0,24(sp)
1c00ba76:	1cc48493          	addi	s1,s1,460 # 1c0001cc <PQCLEAN_KYBER1024_CLEAN_zetas+0x80>
1c00ba7a:	00450a13          	addi	s4,a0,4
1c00ba7e:	00458993          	addi	s3,a1,4
1c00ba82:	00460913          	addi	s2,a2,4
1c00ba86:	24ca8a93          	addi	s5,s5,588 # 1c00024c <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c00ba8a:	00049403          	lh	s0,0(s1)
1c00ba8e:	ffc90613          	addi	a2,s2,-4
1c00ba92:	ffc98593          	addi	a1,s3,-4
1c00ba96:	ffca0513          	addi	a0,s4,-4
1c00ba9a:	86a2                	mv	a3,s0
1c00ba9c:	39bd                	jal	1c00b71a <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00ba9e:	408006b3          	neg	a3,s0
1c00baa2:	06c2                	slli	a3,a3,0x10
1c00baa4:	864a                	mv	a2,s2
1c00baa6:	85ce                	mv	a1,s3
1c00baa8:	8552                	mv	a0,s4
1c00baaa:	86c1                	srai	a3,a3,0x10
1c00baac:	0489                	addi	s1,s1,2
1c00baae:	31b5                	jal	1c00b71a <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00bab0:	0a21                	addi	s4,s4,8
1c00bab2:	09a1                	addi	s3,s3,8
1c00bab4:	0921                	addi	s2,s2,8
1c00bab6:	fc9a9ae3          	bne	s5,s1,1c00ba8a <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0x2c>
1c00baba:	40f2                	lw	ra,28(sp)
1c00babc:	4462                	lw	s0,24(sp)
1c00babe:	44d2                	lw	s1,20(sp)
1c00bac0:	4942                	lw	s2,16(sp)
1c00bac2:	49b2                	lw	s3,12(sp)
1c00bac4:	4a22                	lw	s4,8(sp)
1c00bac6:	4a92                	lw	s5,4(sp)
1c00bac8:	6105                	addi	sp,sp,32
1c00baca:	8082                	ret

1c00bacc <PQCLEAN_KYBER1024_CLEAN_poly_reduce>:
1c00bacc:	1141                	addi	sp,sp,-16
1c00bace:	c422                	sw	s0,8(sp)
1c00bad0:	c226                	sw	s1,4(sp)
1c00bad2:	c606                	sw	ra,12(sp)
1c00bad4:	842a                	mv	s0,a0
1c00bad6:	20050493          	addi	s1,a0,512
1c00bada:	00041503          	lh	a0,0(s0)
1c00bade:	0409                	addi	s0,s0,2
1c00bae0:	2bf1                	jal	1c00c0bc <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00bae2:	fea41f23          	sh	a0,-2(s0)
1c00bae6:	fe941ae3          	bne	s0,s1,1c00bada <PQCLEAN_KYBER1024_CLEAN_poly_reduce+0xe>
1c00baea:	40b2                	lw	ra,12(sp)
1c00baec:	4422                	lw	s0,8(sp)
1c00baee:	4492                	lw	s1,4(sp)
1c00baf0:	0141                	addi	sp,sp,16
1c00baf2:	8082                	ret

1c00baf4 <PQCLEAN_KYBER1024_CLEAN_poly_add>:
1c00baf4:	20058693          	addi	a3,a1,512
1c00baf8:	0005d783          	lhu	a5,0(a1)
1c00bafc:	00065703          	lhu	a4,0(a2)
1c00bb00:	0589                	addi	a1,a1,2
1c00bb02:	97ba                	add	a5,a5,a4
1c00bb04:	00f51023          	sh	a5,0(a0)
1c00bb08:	0609                	addi	a2,a2,2
1c00bb0a:	0509                	addi	a0,a0,2
1c00bb0c:	fed596e3          	bne	a1,a3,1c00baf8 <PQCLEAN_KYBER1024_CLEAN_poly_add+0x4>
1c00bb10:	8082                	ret

1c00bb12 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>:
1c00bb12:	7179                	addi	sp,sp,-48
1c00bb14:	6605                	lui	a2,0x1
1c00bb16:	d622                	sw	s0,44(sp)
1c00bb18:	d426                	sw	s1,40(sp)
1c00bb1a:	d24a                	sw	s2,36(sp)
1c00bb1c:	d04e                	sw	s3,32(sp)
1c00bb1e:	ce52                	sw	s4,28(sp)
1c00bb20:	cc56                	sw	s5,24(sp)
1c00bb22:	ca5a                	sw	s6,20(sp)
1c00bb24:	c85e                	sw	s7,16(sp)
1c00bb26:	c662                	sw	s8,12(sp)
1c00bb28:	58050313          	addi	t1,a0,1408
1c00bb2c:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00bb30:	16050893          	addi	a7,a0,352
1c00bb34:	882e                	mv	a6,a1
1c00bb36:	00081b03          	lh	s6,0(a6)
1c00bb3a:	00281a83          	lh	s5,2(a6)
1c00bb3e:	00481a03          	lh	s4,4(a6)
1c00bb42:	00681983          	lh	s3,6(a6)
1c00bb46:	00881903          	lh	s2,8(a6)
1c00bb4a:	00a81483          	lh	s1,10(a6)
1c00bb4e:	00c81403          	lh	s0,12(a6)
1c00bb52:	00e81383          	lh	t2,14(a6)
1c00bb56:	40fb5293          	srai	t0,s6,0xf
1c00bb5a:	40fade13          	srai	t3,s5,0xf
1c00bb5e:	40fa5f93          	srai	t6,s4,0xf
1c00bb62:	40f9d693          	srai	a3,s3,0xf
1c00bb66:	40f95713          	srai	a4,s2,0xf
1c00bb6a:	40f4df13          	srai	t5,s1,0xf
1c00bb6e:	40f45793          	srai	a5,s0,0xf
1c00bb72:	40f3de93          	srai	t4,t2,0xf
1c00bb76:	00c2f2b3          	and	t0,t0,a2
1c00bb7a:	00ce7e33          	and	t3,t3,a2
1c00bb7e:	00cfffb3          	and	t6,t6,a2
1c00bb82:	8ef1                	and	a3,a3,a2
1c00bb84:	8f71                	and	a4,a4,a2
1c00bb86:	00cf7f33          	and	t5,t5,a2
1c00bb8a:	8ff1                	and	a5,a5,a2
1c00bb8c:	00cefeb3          	and	t4,t4,a2
1c00bb90:	92da                	add	t0,t0,s6
1c00bb92:	9e56                	add	t3,t3,s5
1c00bb94:	9fd2                	add	t6,t6,s4
1c00bb96:	96ce                	add	a3,a3,s3
1c00bb98:	974a                	add	a4,a4,s2
1c00bb9a:	9f26                	add	t5,t5,s1
1c00bb9c:	97a2                	add	a5,a5,s0
1c00bb9e:	9e9e                	add	t4,t4,t2
1c00bba0:	02c2                	slli	t0,t0,0x10
1c00bba2:	0e42                	slli	t3,t3,0x10
1c00bba4:	0fc2                	slli	t6,t6,0x10
1c00bba6:	06c2                	slli	a3,a3,0x10
1c00bba8:	0742                	slli	a4,a4,0x10
1c00bbaa:	0f42                	slli	t5,t5,0x10
1c00bbac:	07c2                	slli	a5,a5,0x10
1c00bbae:	0ec2                	slli	t4,t4,0x10
1c00bbb0:	0102d293          	srli	t0,t0,0x10
1c00bbb4:	010e5e13          	srli	t3,t3,0x10
1c00bbb8:	010fdf93          	srli	t6,t6,0x10
1c00bbbc:	82c1                	srli	a3,a3,0x10
1c00bbbe:	8341                	srli	a4,a4,0x10
1c00bbc0:	010f5f13          	srli	t5,t5,0x10
1c00bbc4:	83c1                	srli	a5,a5,0x10
1c00bbc6:	010ede93          	srli	t4,t4,0x10
1c00bbca:	02ae                	slli	t0,t0,0xb
1c00bbcc:	0e2e                	slli	t3,t3,0xb
1c00bbce:	0fae                	slli	t6,t6,0xb
1c00bbd0:	06ae                	slli	a3,a3,0xb
1c00bbd2:	072e                	slli	a4,a4,0xb
1c00bbd4:	0f2e                	slli	t5,t5,0xb
1c00bbd6:	07ae                	slli	a5,a5,0xb
1c00bbd8:	0eae                	slli	t4,t4,0xb
1c00bbda:	68028293          	addi	t0,t0,1664
1c00bbde:	680e0e13          	addi	t3,t3,1664
1c00bbe2:	680f8f93          	addi	t6,t6,1664 # 1000680 <__CTOR_LIST__-0x1afff984>
1c00bbe6:	68068693          	addi	a3,a3,1664 # 1680 <__CTOR_LIST__-0x1bffe984>
1c00bbea:	68070713          	addi	a4,a4,1664
1c00bbee:	680f0f13          	addi	t5,t5,1664
1c00bbf2:	68078793          	addi	a5,a5,1664
1c00bbf6:	680e8e93          	addi	t4,t4,1664
1c00bbfa:	02c2d2b3          	divu	t0,t0,a2
1c00bbfe:	02ce5e33          	divu	t3,t3,a2
1c00bc02:	02cfdfb3          	divu	t6,t6,a2
1c00bc06:	02c6d6b3          	divu	a3,a3,a2
1c00bc0a:	02c75733          	divu	a4,a4,a2
1c00bc0e:	02cf5f33          	divu	t5,t5,a2
1c00bc12:	02c7d7b3          	divu	a5,a5,a2
1c00bc16:	02cedeb3          	divu	t4,t4,a2
1c00bc1a:	7fffff93          	andi	t6,t6,2047
1c00bc1e:	7fff7f13          	andi	t5,t5,2047
1c00bc22:	7ff2f293          	andi	t0,t0,2047
1c00bc26:	7ffe7e13          	andi	t3,t3,2047
1c00bc2a:	7ff6f693          	andi	a3,a3,2047
1c00bc2e:	7ff77713          	andi	a4,a4,2047
1c00bc32:	7ff7f793          	andi	a5,a5,2047
1c00bc36:	7ffefe93          	andi	t4,t4,2047
1c00bc3a:	003e1913          	slli	s2,t3,0x3
1c00bc3e:	006f9493          	slli	s1,t6,0x6
1c00bc42:	00afd413          	srli	s0,t6,0xa
1c00bc46:	00169b13          	slli	s6,a3,0x1
1c00bc4a:	00471a93          	slli	s5,a4,0x4
1c00bc4e:	007f1c13          	slli	s8,t5,0x7
1c00bc52:	009f5393          	srli	t2,t5,0x9
1c00bc56:	00279a13          	slli	s4,a5,0x2
1c00bc5a:	005e9993          	slli	s3,t4,0x5
1c00bc5e:	0082db93          	srli	s7,t0,0x8
1c00bc62:	005e5e13          	srli	t3,t3,0x5
1c00bc66:	829d                	srli	a3,a3,0x7
1c00bc68:	8311                	srli	a4,a4,0x4
1c00bc6a:	8399                	srli	a5,a5,0x6
1c00bc6c:	012be933          	or	s2,s7,s2
1c00bc70:	009e6e33          	or	t3,t3,s1
1c00bc74:	002fdf93          	srli	t6,t6,0x2
1c00bc78:	01646433          	or	s0,s0,s6
1c00bc7c:	0156e6b3          	or	a3,a3,s5
1c00bc80:	01876733          	or	a4,a4,s8
1c00bc84:	001f5f13          	srli	t5,t5,0x1
1c00bc88:	0143e3b3          	or	t2,t2,s4
1c00bc8c:	0137e7b3          	or	a5,a5,s3
1c00bc90:	003ede93          	srli	t4,t4,0x3
1c00bc94:	00550023          	sb	t0,0(a0)
1c00bc98:	012500a3          	sb	s2,1(a0)
1c00bc9c:	01c50123          	sb	t3,2(a0)
1c00bca0:	01f501a3          	sb	t6,3(a0)
1c00bca4:	00850223          	sb	s0,4(a0)
1c00bca8:	00d502a3          	sb	a3,5(a0)
1c00bcac:	00e50323          	sb	a4,6(a0)
1c00bcb0:	01e503a3          	sb	t5,7(a0)
1c00bcb4:	00750423          	sb	t2,8(a0)
1c00bcb8:	00f504a3          	sb	a5,9(a0)
1c00bcbc:	01d50523          	sb	t4,10(a0)
1c00bcc0:	052d                	addi	a0,a0,11
1c00bcc2:	0841                	addi	a6,a6,16
1c00bcc4:	e71519e3          	bne	a0,a7,1c00bb36 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x24>
1c00bcc8:	20058593          	addi	a1,a1,512
1c00bccc:	e6a312e3          	bne	t1,a0,1c00bb30 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x1e>
1c00bcd0:	5432                	lw	s0,44(sp)
1c00bcd2:	54a2                	lw	s1,40(sp)
1c00bcd4:	5912                	lw	s2,36(sp)
1c00bcd6:	5982                	lw	s3,32(sp)
1c00bcd8:	4a72                	lw	s4,28(sp)
1c00bcda:	4ae2                	lw	s5,24(sp)
1c00bcdc:	4b52                	lw	s6,20(sp)
1c00bcde:	4bc2                	lw	s7,16(sp)
1c00bce0:	4c32                	lw	s8,12(sp)
1c00bce2:	6145                	addi	sp,sp,48
1c00bce4:	8082                	ret

1c00bce6 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>:
1c00bce6:	1141                	addi	sp,sp,-16
1c00bce8:	c422                	sw	s0,8(sp)
1c00bcea:	c226                	sw	s1,4(sp)
1c00bcec:	c04a                	sw	s2,0(sp)
1c00bcee:	c606                	sw	ra,12(sp)
1c00bcf0:	842e                	mv	s0,a1
1c00bcf2:	84aa                	mv	s1,a0
1c00bcf4:	60058913          	addi	s2,a1,1536
1c00bcf8:	85a2                	mv	a1,s0
1c00bcfa:	8526                	mv	a0,s1
1c00bcfc:	18040413          	addi	s0,s0,384
1c00bd00:	310d                	jal	1c00b922 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>
1c00bd02:	20048493          	addi	s1,s1,512
1c00bd06:	ff2419e3          	bne	s0,s2,1c00bcf8 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes+0x12>
1c00bd0a:	40b2                	lw	ra,12(sp)
1c00bd0c:	4422                	lw	s0,8(sp)
1c00bd0e:	4492                	lw	s1,4(sp)
1c00bd10:	4902                	lw	s2,0(sp)
1c00bd12:	0141                	addi	sp,sp,16
1c00bd14:	8082                	ret

1c00bd16 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>:
1c00bd16:	1141                	addi	sp,sp,-16
1c00bd18:	c606                	sw	ra,12(sp)
1c00bd1a:	c422                	sw	s0,8(sp)
1c00bd1c:	842a                	mv	s0,a0
1c00bd1e:	3b11                	jal	1c00ba32 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>
1c00bd20:	20040513          	addi	a0,s0,512
1c00bd24:	3339                	jal	1c00ba32 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>
1c00bd26:	40040513          	addi	a0,s0,1024
1c00bd2a:	3321                	jal	1c00ba32 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>
1c00bd2c:	60040513          	addi	a0,s0,1536
1c00bd30:	4422                	lw	s0,8(sp)
1c00bd32:	40b2                	lw	ra,12(sp)
1c00bd34:	0141                	addi	sp,sp,16
1c00bd36:	b9f5                	j	1c00ba32 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>

1c00bd38 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>:
1c00bd38:	1141                	addi	sp,sp,-16
1c00bd3a:	c606                	sw	ra,12(sp)
1c00bd3c:	c422                	sw	s0,8(sp)
1c00bd3e:	842a                	mv	s0,a0
1c00bd40:	3b31                	jal	1c00ba5c <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00bd42:	20040513          	addi	a0,s0,512
1c00bd46:	3b19                	jal	1c00ba5c <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00bd48:	40040513          	addi	a0,s0,1024
1c00bd4c:	3b01                	jal	1c00ba5c <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00bd4e:	60040513          	addi	a0,s0,1536
1c00bd52:	4422                	lw	s0,8(sp)
1c00bd54:	40b2                	lw	ra,12(sp)
1c00bd56:	0141                	addi	sp,sp,16
1c00bd58:	b311                	j	1c00ba5c <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>

1c00bd5a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>:
1c00bd5a:	de010113          	addi	sp,sp,-544
1c00bd5e:	20812c23          	sw	s0,536(sp)
1c00bd62:	20912a23          	sw	s1,532(sp)
1c00bd66:	21212823          	sw	s2,528(sp)
1c00bd6a:	21312623          	sw	s3,524(sp)
1c00bd6e:	84b2                	mv	s1,a2
1c00bd70:	89ae                	mv	s3,a1
1c00bd72:	20112e23          	sw	ra,540(sp)
1c00bd76:	892a                	mv	s2,a0
1c00bd78:	31dd                	jal	1c00ba5e <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00bd7a:	6785                	lui	a5,0x1
1c00bd7c:	80078793          	addi	a5,a5,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00bd80:	20098413          	addi	s0,s3,512
1c00bd84:	20048493          	addi	s1,s1,512
1c00bd88:	99be                	add	s3,s3,a5
1c00bd8a:	8626                	mv	a2,s1
1c00bd8c:	85a2                	mv	a1,s0
1c00bd8e:	850a                	mv	a0,sp
1c00bd90:	31f9                	jal	1c00ba5e <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00bd92:	860a                	mv	a2,sp
1c00bd94:	85ca                	mv	a1,s2
1c00bd96:	854a                	mv	a0,s2
1c00bd98:	20040413          	addi	s0,s0,512
1c00bd9c:	3ba1                	jal	1c00baf4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00bd9e:	20048493          	addi	s1,s1,512
1c00bda2:	ff3414e3          	bne	s0,s3,1c00bd8a <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery+0x30>
1c00bda6:	854a                	mv	a0,s2
1c00bda8:	3315                	jal	1c00bacc <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00bdaa:	21c12083          	lw	ra,540(sp)
1c00bdae:	21812403          	lw	s0,536(sp)
1c00bdb2:	21412483          	lw	s1,532(sp)
1c00bdb6:	21012903          	lw	s2,528(sp)
1c00bdba:	20c12983          	lw	s3,524(sp)
1c00bdbe:	22010113          	addi	sp,sp,544
1c00bdc2:	8082                	ret

1c00bdc4 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>:
1c00bdc4:	1141                	addi	sp,sp,-16
1c00bdc6:	c606                	sw	ra,12(sp)
1c00bdc8:	c422                	sw	s0,8(sp)
1c00bdca:	842a                	mv	s0,a0
1c00bdcc:	3301                	jal	1c00bacc <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00bdce:	20040513          	addi	a0,s0,512
1c00bdd2:	39ed                	jal	1c00bacc <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00bdd4:	40040513          	addi	a0,s0,1024
1c00bdd8:	39d5                	jal	1c00bacc <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00bdda:	60040513          	addi	a0,s0,1536
1c00bdde:	4422                	lw	s0,8(sp)
1c00bde0:	40b2                	lw	ra,12(sp)
1c00bde2:	0141                	addi	sp,sp,16
1c00bde4:	b1e5                	j	1c00bacc <PQCLEAN_KYBER1024_CLEAN_poly_reduce>

1c00bde6 <PQCLEAN_KYBER1024_CLEAN_polyvec_add>:
1c00bde6:	1101                	addi	sp,sp,-32
1c00bde8:	cc22                	sw	s0,24(sp)
1c00bdea:	ca26                	sw	s1,20(sp)
1c00bdec:	c84a                	sw	s2,16(sp)
1c00bdee:	c64e                	sw	s3,12(sp)
1c00bdf0:	ce06                	sw	ra,28(sp)
1c00bdf2:	89aa                	mv	s3,a0
1c00bdf4:	892e                	mv	s2,a1
1c00bdf6:	84b2                	mv	s1,a2
1c00bdf8:	4401                	li	s0,0
1c00bdfa:	00848633          	add	a2,s1,s0
1c00bdfe:	008905b3          	add	a1,s2,s0
1c00be02:	00898533          	add	a0,s3,s0
1c00be06:	31fd                	jal	1c00baf4 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00be08:	20040413          	addi	s0,s0,512
1c00be0c:	80040793          	addi	a5,s0,-2048
1c00be10:	f7ed                	bnez	a5,1c00bdfa <PQCLEAN_KYBER1024_CLEAN_polyvec_add+0x14>
1c00be12:	40f2                	lw	ra,28(sp)
1c00be14:	4462                	lw	s0,24(sp)
1c00be16:	44d2                	lw	s1,20(sp)
1c00be18:	4942                	lw	s2,16(sp)
1c00be1a:	49b2                	lw	s3,12(sp)
1c00be1c:	6105                	addi	sp,sp,32
1c00be1e:	8082                	ret

1c00be20 <randombytes>:
1c00be20:	26058d63          	beqz	a1,1c00c09a <randombytes+0x27a>
1c00be24:	1c0066b7          	lui	a3,0x1c006
1c00be28:	7139                	addi	sp,sp,-64
1c00be2a:	2b468693          	addi	a3,a3,692 # 1c0062b4 <outleft>
1c00be2e:	da4a                	sw	s2,52(sp)
1c00be30:	d84e                	sw	s3,48(sp)
1c00be32:	95aa                	add	a1,a1,a0
1c00be34:	1c006737          	lui	a4,0x1c006
1c00be38:	1c0069b7          	lui	s3,0x1c006
1c00be3c:	9e378937          	lui	s2,0x9e378
1c00be40:	429c                	lw	a5,0(a3)
1c00be42:	d652                	sw	s4,44(sp)
1c00be44:	d456                	sw	s5,40(sp)
1c00be46:	de22                	sw	s0,60(sp)
1c00be48:	dc26                	sw	s1,56(sp)
1c00be4a:	d25a                	sw	s6,36(sp)
1c00be4c:	d05e                	sw	s7,32(sp)
1c00be4e:	ce62                	sw	s8,28(sp)
1c00be50:	cc66                	sw	s9,24(sp)
1c00be52:	ca6a                	sw	s10,20(sp)
1c00be54:	c86e                	sw	s11,16(sp)
1c00be56:	8aaa                	mv	s5,a0
1c00be58:	c62e                	sw	a1,12(sp)
1c00be5a:	29070a13          	addi	s4,a4,656 # 1c006290 <out>
1c00be5e:	26098993          	addi	s3,s3,608 # 1c006260 <stack>
1c00be62:	9b990913          	addi	s2,s2,-1607 # 9e3779b9 <pulp__FC+0x9e3779ba>
1c00be66:	cf9d                	beqz	a5,1c00bea4 <randombytes+0x84>
1c00be68:	17fd                	addi	a5,a5,-1
1c00be6a:	00279713          	slli	a4,a5,0x2
1c00be6e:	9752                	add	a4,a4,s4
1c00be70:	4318                	lw	a4,0(a4)
1c00be72:	1c0066b7          	lui	a3,0x1c006
1c00be76:	00ea8023          	sb	a4,0(s5)
1c00be7a:	2b468693          	addi	a3,a3,692 # 1c0062b4 <outleft>
1c00be7e:	4732                	lw	a4,12(sp)
1c00be80:	c29c                	sw	a5,0(a3)
1c00be82:	0a85                	addi	s5,s5,1
1c00be84:	feea91e3          	bne	s5,a4,1c00be66 <randombytes+0x46>
1c00be88:	5472                	lw	s0,60(sp)
1c00be8a:	54e2                	lw	s1,56(sp)
1c00be8c:	5952                	lw	s2,52(sp)
1c00be8e:	59c2                	lw	s3,48(sp)
1c00be90:	5a32                	lw	s4,44(sp)
1c00be92:	5aa2                	lw	s5,40(sp)
1c00be94:	5b12                	lw	s6,36(sp)
1c00be96:	5b82                	lw	s7,32(sp)
1c00be98:	4c72                	lw	s8,28(sp)
1c00be9a:	4ce2                	lw	s9,24(sp)
1c00be9c:	4d52                	lw	s10,20(sp)
1c00be9e:	4dc2                	lw	s11,16(sp)
1c00bea0:	6121                	addi	sp,sp,64
1c00bea2:	8082                	ret
1c00bea4:	0009a583          	lw	a1,0(s3)
1c00bea8:	0049a283          	lw	t0,4(s3)
1c00beac:	0585                	addi	a1,a1,1
1c00beae:	00b9a023          	sw	a1,0(s3)
1c00beb2:	0089a383          	lw	t2,8(s3)
1c00beb6:	00c9a403          	lw	s0,12(s3)
1c00beba:	e999                	bnez	a1,1c00bed0 <randombytes+0xb0>
1c00bebc:	0285                	addi	t0,t0,1
1c00bebe:	0059a223          	sw	t0,4(s3)
1c00bec2:	00029763          	bnez	t0,1c00bed0 <randombytes+0xb0>
1c00bec6:	0385                	addi	t2,t2,1
1c00bec8:	0079a423          	sw	t2,8(s3)
1c00becc:	1c038363          	beqz	t2,1c00c092 <randombytes+0x272>
1c00bed0:	0109af83          	lw	t6,16(s3)
1c00bed4:	0149af03          	lw	t5,20(s3)
1c00bed8:	0189ae83          	lw	t4,24(s3)
1c00bedc:	01c9ae03          	lw	t3,28(s3)
1c00bee0:	0209a303          	lw	t1,32(s3)
1c00bee4:	0249a883          	lw	a7,36(s3)
1c00bee8:	0289a803          	lw	a6,40(s3)
1c00beec:	02c9a503          	lw	a0,44(s3)
1c00bef0:	478d                	li	a5,3
1c00bef2:	470d                	li	a4,3
1c00bef4:	c23e                	sw	a5,4(sp)
1c00bef6:	0095c593          	xori	a1,a1,9
1c00befa:	0072c293          	xori	t0,t0,7
1c00befe:	0093c393          	xori	t2,t2,9
1c00bf02:	00344413          	xori	s0,s0,3
1c00bf06:	002fcf93          	xori	t6,t6,2
1c00bf0a:	003f4f13          	xori	t5,t5,3
1c00bf0e:	008ece93          	xori	t4,t4,8
1c00bf12:	004e4e13          	xori	t3,t3,4
1c00bf16:	00634313          	xori	t1,t1,6
1c00bf1a:	0028c893          	xori	a7,a7,2
1c00bf1e:	00684813          	xori	a6,a6,6
1c00bf22:	00454513          	xori	a0,a0,4
1c00bf26:	4b15                	li	s6,5
1c00bf28:	4ba5                	li	s7,9
1c00bf2a:	4c1d                	li	s8,7
1c00bf2c:	4c89                	li	s9,2
1c00bf2e:	4d0d                	li	s10,3
1c00bf30:	4da1                	li	s11,8
1c00bf32:	c43a                	sw	a4,8(sp)
1c00bf34:	4781                	li	a5,0
1c00bf36:	e377a737          	lui	a4,0xe377a
1c00bf3a:	b9070713          	addi	a4,a4,-1136 # e3779b90 <pulp__FC+0xe3779b91>
1c00bf3e:	00e784b3          	add	s1,a5,a4
1c00bf42:	97ca                	add	a5,a5,s2
1c00bf44:	01b55613          	srli	a2,a0,0x1b
1c00bf48:	00354713          	xori	a4,a0,3
1c00bf4c:	00551693          	slli	a3,a0,0x5
1c00bf50:	8ed1                	or	a3,a3,a2
1c00bf52:	973e                	add	a4,a4,a5
1c00bf54:	8f35                	xor	a4,a4,a3
1c00bf56:	95ba                	add	a1,a1,a4
1c00bf58:	0195d613          	srli	a2,a1,0x19
1c00bf5c:	0015c713          	xori	a4,a1,1
1c00bf60:	00759693          	slli	a3,a1,0x7
1c00bf64:	8ed1                	or	a3,a3,a2
1c00bf66:	973e                	add	a4,a4,a5
1c00bf68:	8f35                	xor	a4,a4,a3
1c00bf6a:	92ba                	add	t0,t0,a4
1c00bf6c:	0172d613          	srli	a2,t0,0x17
1c00bf70:	0042c713          	xori	a4,t0,4
1c00bf74:	00929693          	slli	a3,t0,0x9
1c00bf78:	8ed1                	or	a3,a3,a2
1c00bf7a:	973e                	add	a4,a4,a5
1c00bf7c:	8f35                	xor	a4,a4,a3
1c00bf7e:	93ba                	add	t2,t2,a4
1c00bf80:	0133d613          	srli	a2,t2,0x13
1c00bf84:	0013c713          	xori	a4,t2,1
1c00bf88:	00d39693          	slli	a3,t2,0xd
1c00bf8c:	8ed1                	or	a3,a3,a2
1c00bf8e:	973e                	add	a4,a4,a5
1c00bf90:	8f35                	xor	a4,a4,a3
1c00bf92:	943a                	add	s0,s0,a4
1c00bf94:	01b45613          	srli	a2,s0,0x1b
1c00bf98:	00544713          	xori	a4,s0,5
1c00bf9c:	00541693          	slli	a3,s0,0x5
1c00bfa0:	8ed1                	or	a3,a3,a2
1c00bfa2:	973e                	add	a4,a4,a5
1c00bfa4:	8f35                	xor	a4,a4,a3
1c00bfa6:	9fba                	add	t6,t6,a4
1c00bfa8:	019fd613          	srli	a2,t6,0x19
1c00bfac:	009fc713          	xori	a4,t6,9
1c00bfb0:	007f9693          	slli	a3,t6,0x7
1c00bfb4:	8ed1                	or	a3,a3,a2
1c00bfb6:	973e                	add	a4,a4,a5
1c00bfb8:	8f35                	xor	a4,a4,a3
1c00bfba:	9f3a                	add	t5,t5,a4
1c00bfbc:	017f5613          	srli	a2,t5,0x17
1c00bfc0:	002f4713          	xori	a4,t5,2
1c00bfc4:	009f1693          	slli	a3,t5,0x9
1c00bfc8:	8ed1                	or	a3,a3,a2
1c00bfca:	973e                	add	a4,a4,a5
1c00bfcc:	8f35                	xor	a4,a4,a3
1c00bfce:	9eba                	add	t4,t4,a4
1c00bfd0:	013ed613          	srli	a2,t4,0x13
1c00bfd4:	006ec713          	xori	a4,t4,6
1c00bfd8:	00de9693          	slli	a3,t4,0xd
1c00bfdc:	8ed1                	or	a3,a3,a2
1c00bfde:	973e                	add	a4,a4,a5
1c00bfe0:	8f35                	xor	a4,a4,a3
1c00bfe2:	9e3a                	add	t3,t3,a4
1c00bfe4:	01be5613          	srli	a2,t3,0x1b
1c00bfe8:	005e4713          	xori	a4,t3,5
1c00bfec:	005e1693          	slli	a3,t3,0x5
1c00bff0:	8ed1                	or	a3,a3,a2
1c00bff2:	973e                	add	a4,a4,a5
1c00bff4:	8f35                	xor	a4,a4,a3
1c00bff6:	933a                	add	t1,t1,a4
1c00bff8:	01935613          	srli	a2,t1,0x19
1c00bffc:	00334713          	xori	a4,t1,3
1c00c000:	00731693          	slli	a3,t1,0x7
1c00c004:	8ed1                	or	a3,a3,a2
1c00c006:	973e                	add	a4,a4,a5
1c00c008:	8f35                	xor	a4,a4,a3
1c00c00a:	98ba                	add	a7,a7,a4
1c00c00c:	0178d613          	srli	a2,a7,0x17
1c00c010:	0058c713          	xori	a4,a7,5
1c00c014:	00989693          	slli	a3,a7,0x9
1c00c018:	8ed1                	or	a3,a3,a2
1c00c01a:	973e                	add	a4,a4,a5
1c00c01c:	8f35                	xor	a4,a4,a3
1c00c01e:	983a                	add	a6,a6,a4
1c00c020:	00884713          	xori	a4,a6,8
1c00c024:	00d81693          	slli	a3,a6,0xd
1c00c028:	01385613          	srli	a2,a6,0x13
1c00c02c:	973e                	add	a4,a4,a5
1c00c02e:	8ed1                	or	a3,a3,a2
1c00c030:	8f35                	xor	a4,a4,a3
1c00c032:	953a                	add	a0,a0,a4
1c00c034:	f09797e3          	bne	a5,s1,1c00bf42 <randombytes+0x122>
1c00c038:	4692                	lw	a3,4(sp)
1c00c03a:	4722                	lw	a4,8(sp)
1c00c03c:	01f6c6b3          	xor	a3,a3,t6
1c00c040:	c236                	sw	a3,4(sp)
1c00c042:	01e74733          	xor	a4,a4,t5
1c00c046:	c6ef36b7          	lui	a3,0xc6ef3
1c00c04a:	c43a                	sw	a4,8(sp)
1c00c04c:	72068693          	addi	a3,a3,1824 # c6ef3720 <pulp__FC+0xc6ef3721>
1c00c050:	01ddcdb3          	xor	s11,s11,t4
1c00c054:	01cd4d33          	xor	s10,s10,t3
1c00c058:	006cccb3          	xor	s9,s9,t1
1c00c05c:	011c4c33          	xor	s8,s8,a7
1c00c060:	010bcbb3          	xor	s7,s7,a6
1c00c064:	00ab4b33          	xor	s6,s6,a0
1c00c068:	ecd797e3          	bne	a5,a3,1c00bf36 <randombytes+0x116>
1c00c06c:	4792                	lw	a5,4(sp)
1c00c06e:	00ea2223          	sw	a4,4(s4)
1c00c072:	00fa2023          	sw	a5,0(s4)
1c00c076:	01ba2423          	sw	s11,8(s4)
1c00c07a:	01aa2623          	sw	s10,12(s4)
1c00c07e:	019a2823          	sw	s9,16(s4)
1c00c082:	018a2a23          	sw	s8,20(s4)
1c00c086:	017a2c23          	sw	s7,24(s4)
1c00c08a:	016a2e23          	sw	s6,28(s4)
1c00c08e:	479d                	li	a5,7
1c00c090:	bbe9                	j	1c00be6a <randombytes+0x4a>
1c00c092:	0405                	addi	s0,s0,1
1c00c094:	0089a623          	sw	s0,12(s3)
1c00c098:	bd25                	j	1c00bed0 <randombytes+0xb0>
1c00c09a:	8082                	ret

1c00c09c <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>:
1c00c09c:	777d                	lui	a4,0xfffff
1c00c09e:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00c0a2:	02f507b3          	mul	a5,a0,a5
1c00c0a6:	07c2                	slli	a5,a5,0x10
1c00c0a8:	2ff70713          	addi	a4,a4,767
1c00c0ac:	87c1                	srai	a5,a5,0x10
1c00c0ae:	02e787b3          	mul	a5,a5,a4
1c00c0b2:	953e                	add	a0,a0,a5
1c00c0b4:	8541                	srai	a0,a0,0x10
1c00c0b6:	0542                	slli	a0,a0,0x10
1c00c0b8:	8541                	srai	a0,a0,0x10
1c00c0ba:	8082                	ret

1c00c0bc <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>:
1c00c0bc:	6795                	lui	a5,0x5
1c00c0be:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00c0c2:	02f507b3          	mul	a5,a0,a5
1c00c0c6:	02000737          	lui	a4,0x2000
1c00c0ca:	97ba                	add	a5,a5,a4
1c00c0cc:	6705                	lui	a4,0x1
1c00c0ce:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c0d2:	87e9                	srai	a5,a5,0x1a
1c00c0d4:	02e787b3          	mul	a5,a5,a4
1c00c0d8:	8d1d                	sub	a0,a0,a5
1c00c0da:	0542                	slli	a0,a0,0x10
1c00c0dc:	8541                	srai	a0,a0,0x10
1c00c0de:	8082                	ret

1c00c0e0 <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>:
1c00c0e0:	7139                	addi	sp,sp,-64
1c00c0e2:	da26                	sw	s1,52(sp)
1c00c0e4:	d84a                	sw	s2,48(sp)
1c00c0e6:	84b2                	mv	s1,a2
1c00c0e8:	892a                	mv	s2,a0
1c00c0ea:	02000613          	li	a2,32
1c00c0ee:	0068                	addi	a0,sp,12
1c00c0f0:	de06                	sw	ra,60(sp)
1c00c0f2:	dc22                	sw	s0,56(sp)
1c00c0f4:	8436                	mv	s0,a3
1c00c0f6:	2049                	jal	1c00c178 <memcpy>
1c00c0f8:	006c                	addi	a1,sp,12
1c00c0fa:	854a                	mv	a0,s2
1c00c0fc:	02200613          	li	a2,34
1c00c100:	02910623          	sb	s1,44(sp)
1c00c104:	028106a3          	sb	s0,45(sp)
1c00c108:	fd3fd0ef          	jal	ra,1c00a0da <shake128_absorb>
1c00c10c:	50f2                	lw	ra,60(sp)
1c00c10e:	5462                	lw	s0,56(sp)
1c00c110:	54d2                	lw	s1,52(sp)
1c00c112:	5942                	lw	s2,48(sp)
1c00c114:	6121                	addi	sp,sp,64
1c00c116:	8082                	ret

1c00c118 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>:
1c00c118:	7139                	addi	sp,sp,-64
1c00c11a:	87b2                	mv	a5,a2
1c00c11c:	da26                	sw	s1,52(sp)
1c00c11e:	d84a                	sw	s2,48(sp)
1c00c120:	84aa                	mv	s1,a0
1c00c122:	892e                	mv	s2,a1
1c00c124:	02000613          	li	a2,32
1c00c128:	85be                	mv	a1,a5
1c00c12a:	0068                	addi	a0,sp,12
1c00c12c:	de06                	sw	ra,60(sp)
1c00c12e:	dc22                	sw	s0,56(sp)
1c00c130:	8436                	mv	s0,a3
1c00c132:	2099                	jal	1c00c178 <memcpy>
1c00c134:	0070                	addi	a2,sp,12
1c00c136:	85ca                	mv	a1,s2
1c00c138:	8526                	mv	a0,s1
1c00c13a:	02100693          	li	a3,33
1c00c13e:	02810623          	sb	s0,44(sp)
1c00c142:	a34fe0ef          	jal	ra,1c00a376 <shake256>
1c00c146:	50f2                	lw	ra,60(sp)
1c00c148:	5462                	lw	s0,56(sp)
1c00c14a:	54d2                	lw	s1,52(sp)
1c00c14c:	5942                	lw	s2,48(sp)
1c00c14e:	6121                	addi	sp,sp,64
1c00c150:	8082                	ret

1c00c152 <pos_wait_forever>:
1c00c152:	f14027f3          	csrr	a5,mhartid
1c00c156:	8795                	srai	a5,a5,0x5
1c00c158:	03f7f793          	andi	a5,a5,63
1c00c15c:	477d                	li	a4,31
1c00c15e:	00e78363          	beq	a5,a4,1c00c164 <pos_wait_forever+0x12>
1c00c162:	a001                	j	1c00c162 <pos_wait_forever+0x10>
1c00c164:	1a10a7b7          	lui	a5,0x1a10a
1c00c168:	577d                	li	a4,-1
1c00c16a:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00c16e:	10500073          	wfi
1c00c172:	10500073          	wfi
1c00c176:	bfe5                	j	1c00c16e <pos_wait_forever+0x1c>

1c00c178 <memcpy>:
1c00c178:	00b567b3          	or	a5,a0,a1
1c00c17c:	8b8d                	andi	a5,a5,3
1c00c17e:	10078f63          	beqz	a5,1c00c29c <memcpy+0x124>
1c00c182:	14060063          	beqz	a2,1c00c2c2 <memcpy+0x14a>
1c00c186:	00458793          	addi	a5,a1,4
1c00c18a:	00450693          	addi	a3,a0,4
1c00c18e:	00f537b3          	sltu	a5,a0,a5
1c00c192:	00d5b6b3          	sltu	a3,a1,a3
1c00c196:	0017c793          	xori	a5,a5,1
1c00c19a:	0016c693          	xori	a3,a3,1
1c00c19e:	873e                	mv	a4,a5
1c00c1a0:	87b6                	mv	a5,a3
1c00c1a2:	8fd9                	or	a5,a5,a4
1c00c1a4:	0ff7f793          	andi	a5,a5,255
1c00c1a8:	cff9                	beqz	a5,1c00c286 <memcpy+0x10e>
1c00c1aa:	00863793          	sltiu	a5,a2,8
1c00c1ae:	0017c793          	xori	a5,a5,1
1c00c1b2:	0ff7f793          	andi	a5,a5,255
1c00c1b6:	cbe1                	beqz	a5,1c00c286 <memcpy+0x10e>
1c00c1b8:	40b007b3          	neg	a5,a1
1c00c1bc:	8b8d                	andi	a5,a5,3
1c00c1be:	fff60313          	addi	t1,a2,-1
1c00c1c2:	cfe5                	beqz	a5,1c00c2ba <memcpy+0x142>
1c00c1c4:	0005c683          	lbu	a3,0(a1)
1c00c1c8:	4705                	li	a4,1
1c00c1ca:	00d50023          	sb	a3,0(a0)
1c00c1ce:	00158893          	addi	a7,a1,1
1c00c1d2:	00150813          	addi	a6,a0,1
1c00c1d6:	02e78963          	beq	a5,a4,1c00c208 <memcpy+0x90>
1c00c1da:	0015c683          	lbu	a3,1(a1)
1c00c1de:	470d                	li	a4,3
1c00c1e0:	00d500a3          	sb	a3,1(a0)
1c00c1e4:	00258893          	addi	a7,a1,2
1c00c1e8:	00250813          	addi	a6,a0,2
1c00c1ec:	ffe60313          	addi	t1,a2,-2
1c00c1f0:	00e79c63          	bne	a5,a4,1c00c208 <memcpy+0x90>
1c00c1f4:	0025c703          	lbu	a4,2(a1)
1c00c1f8:	00358893          	addi	a7,a1,3
1c00c1fc:	00350813          	addi	a6,a0,3
1c00c200:	00e50123          	sb	a4,2(a0)
1c00c204:	ffd60313          	addi	t1,a2,-3
1c00c208:	8e1d                	sub	a2,a2,a5
1c00c20a:	95be                	add	a1,a1,a5
1c00c20c:	00265e13          	srli	t3,a2,0x2
1c00c210:	97aa                	add	a5,a5,a0
1c00c212:	4701                	li	a4,0
1c00c214:	4194                	lw	a3,0(a1)
1c00c216:	0705                	addi	a4,a4,1
1c00c218:	c394                	sw	a3,0(a5)
1c00c21a:	0591                	addi	a1,a1,4
1c00c21c:	0791                	addi	a5,a5,4
1c00c21e:	ffc76be3          	bltu	a4,t3,1c00c214 <memcpy+0x9c>
1c00c222:	ffc67593          	andi	a1,a2,-4
1c00c226:	40b306b3          	sub	a3,t1,a1
1c00c22a:	00b807b3          	add	a5,a6,a1
1c00c22e:	00b88733          	add	a4,a7,a1
1c00c232:	06b60463          	beq	a2,a1,1c00c29a <memcpy+0x122>
1c00c236:	00074583          	lbu	a1,0(a4)
1c00c23a:	fff68613          	addi	a2,a3,-1
1c00c23e:	00b78023          	sb	a1,0(a5)
1c00c242:	ce21                	beqz	a2,1c00c29a <memcpy+0x122>
1c00c244:	00174583          	lbu	a1,1(a4)
1c00c248:	ffe68613          	addi	a2,a3,-2
1c00c24c:	00b780a3          	sb	a1,1(a5)
1c00c250:	c629                	beqz	a2,1c00c29a <memcpy+0x122>
1c00c252:	00274583          	lbu	a1,2(a4)
1c00c256:	ffd68613          	addi	a2,a3,-3
1c00c25a:	00b78123          	sb	a1,2(a5)
1c00c25e:	ce15                	beqz	a2,1c00c29a <memcpy+0x122>
1c00c260:	00374583          	lbu	a1,3(a4)
1c00c264:	ffc68613          	addi	a2,a3,-4
1c00c268:	00b781a3          	sb	a1,3(a5)
1c00c26c:	c61d                	beqz	a2,1c00c29a <memcpy+0x122>
1c00c26e:	00474583          	lbu	a1,4(a4)
1c00c272:	4615                	li	a2,5
1c00c274:	00b78223          	sb	a1,4(a5)
1c00c278:	02c68163          	beq	a3,a2,1c00c29a <memcpy+0x122>
1c00c27c:	00574703          	lbu	a4,5(a4)
1c00c280:	00e782a3          	sb	a4,5(a5)
1c00c284:	8082                	ret
1c00c286:	962e                	add	a2,a2,a1
1c00c288:	87aa                	mv	a5,a0
1c00c28a:	0585                	addi	a1,a1,1
1c00c28c:	fff5c703          	lbu	a4,-1(a1)
1c00c290:	0785                	addi	a5,a5,1
1c00c292:	fee78fa3          	sb	a4,-1(a5)
1c00c296:	fec59ae3          	bne	a1,a2,1c00c28a <memcpy+0x112>
1c00c29a:	8082                	ret
1c00c29c:	00367793          	andi	a5,a2,3
1c00c2a0:	ee0793e3          	bnez	a5,1c00c186 <memcpy+0xe>
1c00c2a4:	da7d                	beqz	a2,1c00c29a <memcpy+0x122>
1c00c2a6:	87aa                	mv	a5,a0
1c00c2a8:	0591                	addi	a1,a1,4
1c00c2aa:	ffc5a703          	lw	a4,-4(a1)
1c00c2ae:	0791                	addi	a5,a5,4
1c00c2b0:	fee7ae23          	sw	a4,-4(a5)
1c00c2b4:	1671                	addi	a2,a2,-4
1c00c2b6:	fa6d                	bnez	a2,1c00c2a8 <memcpy+0x130>
1c00c2b8:	8082                	ret
1c00c2ba:	88ae                	mv	a7,a1
1c00c2bc:	882a                	mv	a6,a0
1c00c2be:	8332                	mv	t1,a2
1c00c2c0:	b7a1                	j	1c00c208 <memcpy+0x90>
1c00c2c2:	8082                	ret

1c00c2c4 <memmove>:
1c00c2c4:	40b507b3          	sub	a5,a0,a1
1c00c2c8:	10c7e463          	bltu	a5,a2,1c00c3d0 <memmove+0x10c>
1c00c2cc:	12060b63          	beqz	a2,1c00c402 <memmove+0x13e>
1c00c2d0:	00458793          	addi	a5,a1,4
1c00c2d4:	00450693          	addi	a3,a0,4
1c00c2d8:	00f537b3          	sltu	a5,a0,a5
1c00c2dc:	00d5b6b3          	sltu	a3,a1,a3
1c00c2e0:	0017c793          	xori	a5,a5,1
1c00c2e4:	0016c693          	xori	a3,a3,1
1c00c2e8:	873e                	mv	a4,a5
1c00c2ea:	87b6                	mv	a5,a3
1c00c2ec:	8fd9                	or	a5,a5,a4
1c00c2ee:	0ff7f793          	andi	a5,a5,255
1c00c2f2:	cfed                	beqz	a5,1c00c3ec <memmove+0x128>
1c00c2f4:	00863793          	sltiu	a5,a2,8
1c00c2f8:	0017c793          	xori	a5,a5,1
1c00c2fc:	0ff7f793          	andi	a5,a5,255
1c00c300:	c7f5                	beqz	a5,1c00c3ec <memmove+0x128>
1c00c302:	40b007b3          	neg	a5,a1
1c00c306:	8b8d                	andi	a5,a5,3
1c00c308:	fff60313          	addi	t1,a2,-1
1c00c30c:	cfe5                	beqz	a5,1c00c404 <memmove+0x140>
1c00c30e:	0005c683          	lbu	a3,0(a1)
1c00c312:	4705                	li	a4,1
1c00c314:	00d50023          	sb	a3,0(a0)
1c00c318:	00150813          	addi	a6,a0,1
1c00c31c:	00158893          	addi	a7,a1,1
1c00c320:	02e78963          	beq	a5,a4,1c00c352 <memmove+0x8e>
1c00c324:	0015c683          	lbu	a3,1(a1)
1c00c328:	470d                	li	a4,3
1c00c32a:	00d500a3          	sb	a3,1(a0)
1c00c32e:	00250813          	addi	a6,a0,2
1c00c332:	00258893          	addi	a7,a1,2
1c00c336:	ffe60313          	addi	t1,a2,-2
1c00c33a:	00e79c63          	bne	a5,a4,1c00c352 <memmove+0x8e>
1c00c33e:	0025c703          	lbu	a4,2(a1)
1c00c342:	00350813          	addi	a6,a0,3
1c00c346:	00e50123          	sb	a4,2(a0)
1c00c34a:	00358893          	addi	a7,a1,3
1c00c34e:	ffd60313          	addi	t1,a2,-3
1c00c352:	8e1d                	sub	a2,a2,a5
1c00c354:	95be                	add	a1,a1,a5
1c00c356:	00265e13          	srli	t3,a2,0x2
1c00c35a:	97aa                	add	a5,a5,a0
1c00c35c:	4701                	li	a4,0
1c00c35e:	4194                	lw	a3,0(a1)
1c00c360:	0705                	addi	a4,a4,1
1c00c362:	c394                	sw	a3,0(a5)
1c00c364:	0591                	addi	a1,a1,4
1c00c366:	0791                	addi	a5,a5,4
1c00c368:	ffc76be3          	bltu	a4,t3,1c00c35e <memmove+0x9a>
1c00c36c:	ffc67593          	andi	a1,a2,-4
1c00c370:	40b306b3          	sub	a3,t1,a1
1c00c374:	00b807b3          	add	a5,a6,a1
1c00c378:	00b88733          	add	a4,a7,a1
1c00c37c:	08b60263          	beq	a2,a1,1c00c400 <memmove+0x13c>
1c00c380:	00074583          	lbu	a1,0(a4)
1c00c384:	fff68613          	addi	a2,a3,-1
1c00c388:	00b78023          	sb	a1,0(a5)
1c00c38c:	ca35                	beqz	a2,1c00c400 <memmove+0x13c>
1c00c38e:	00174583          	lbu	a1,1(a4)
1c00c392:	ffe68613          	addi	a2,a3,-2
1c00c396:	00b780a3          	sb	a1,1(a5)
1c00c39a:	c23d                	beqz	a2,1c00c400 <memmove+0x13c>
1c00c39c:	00274583          	lbu	a1,2(a4)
1c00c3a0:	ffd68613          	addi	a2,a3,-3
1c00c3a4:	00b78123          	sb	a1,2(a5)
1c00c3a8:	ce21                	beqz	a2,1c00c400 <memmove+0x13c>
1c00c3aa:	00374583          	lbu	a1,3(a4)
1c00c3ae:	ffc68613          	addi	a2,a3,-4
1c00c3b2:	00b781a3          	sb	a1,3(a5)
1c00c3b6:	c629                	beqz	a2,1c00c400 <memmove+0x13c>
1c00c3b8:	00474583          	lbu	a1,4(a4)
1c00c3bc:	4615                	li	a2,5
1c00c3be:	00b78223          	sb	a1,4(a5)
1c00c3c2:	02c68f63          	beq	a3,a2,1c00c400 <memmove+0x13c>
1c00c3c6:	00574703          	lbu	a4,5(a4)
1c00c3ca:	00e782a3          	sb	a4,5(a5)
1c00c3ce:	8082                	ret
1c00c3d0:	167d                	addi	a2,a2,-1
1c00c3d2:	00c587b3          	add	a5,a1,a2
1c00c3d6:	962a                	add	a2,a2,a0
1c00c3d8:	15fd                	addi	a1,a1,-1
1c00c3da:	0007c703          	lbu	a4,0(a5)
1c00c3de:	17fd                	addi	a5,a5,-1
1c00c3e0:	00e60023          	sb	a4,0(a2)
1c00c3e4:	167d                	addi	a2,a2,-1
1c00c3e6:	feb79ae3          	bne	a5,a1,1c00c3da <memmove+0x116>
1c00c3ea:	8082                	ret
1c00c3ec:	962a                	add	a2,a2,a0
1c00c3ee:	87aa                	mv	a5,a0
1c00c3f0:	0005c703          	lbu	a4,0(a1)
1c00c3f4:	0785                	addi	a5,a5,1
1c00c3f6:	fee78fa3          	sb	a4,-1(a5)
1c00c3fa:	0585                	addi	a1,a1,1
1c00c3fc:	fec79ae3          	bne	a5,a2,1c00c3f0 <memmove+0x12c>
1c00c400:	8082                	ret
1c00c402:	8082                	ret
1c00c404:	88ae                	mv	a7,a1
1c00c406:	882a                	mv	a6,a0
1c00c408:	8332                	mv	t1,a2
1c00c40a:	b7a1                	j	1c00c352 <memmove+0x8e>

1c00c40c <strchr>:
1c00c40c:	00054783          	lbu	a5,0(a0)
1c00c410:	0ff5f593          	andi	a1,a1,255
1c00c414:	00b78863          	beq	a5,a1,1c00c424 <strchr+0x18>
1c00c418:	c799                	beqz	a5,1c00c426 <strchr+0x1a>
1c00c41a:	0505                	addi	a0,a0,1
1c00c41c:	00054783          	lbu	a5,0(a0)
1c00c420:	feb79ce3          	bne	a5,a1,1c00c418 <strchr+0xc>
1c00c424:	8082                	ret
1c00c426:	0015b593          	seqz	a1,a1
1c00c42a:	40b005b3          	neg	a1,a1
1c00c42e:	8d6d                	and	a0,a0,a1
1c00c430:	8082                	ret

1c00c432 <puts>:
1c00c432:	00054783          	lbu	a5,0(a0)
1c00c436:	c78d                	beqz	a5,1c00c460 <puts+0x2e>
1c00c438:	f14026f3          	csrr	a3,mhartid
1c00c43c:	00369713          	slli	a4,a3,0x3
1c00c440:	1a10f637          	lui	a2,0x1a10f
1c00c444:	0ff77713          	andi	a4,a4,255
1c00c448:	9732                	add	a4,a4,a2
1c00c44a:	6609                	lui	a2,0x2
1c00c44c:	068a                	slli	a3,a3,0x2
1c00c44e:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c452:	8ef1                	and	a3,a3,a2
1c00c454:	9736                	add	a4,a4,a3
1c00c456:	c31c                	sw	a5,0(a4)
1c00c458:	0505                	addi	a0,a0,1
1c00c45a:	00054783          	lbu	a5,0(a0)
1c00c45e:	ffe5                	bnez	a5,1c00c456 <puts+0x24>
1c00c460:	f1402773          	csrr	a4,mhartid
1c00c464:	00371793          	slli	a5,a4,0x3
1c00c468:	1a10f6b7          	lui	a3,0x1a10f
1c00c46c:	0ff7f793          	andi	a5,a5,255
1c00c470:	97b6                	add	a5,a5,a3
1c00c472:	6689                	lui	a3,0x2
1c00c474:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c478:	070a                	slli	a4,a4,0x2
1c00c47a:	8f75                	and	a4,a4,a3
1c00c47c:	97ba                	add	a5,a5,a4
1c00c47e:	4729                	li	a4,10
1c00c480:	c398                	sw	a4,0(a5)
1c00c482:	4501                	li	a0,0
1c00c484:	8082                	ret

1c00c486 <pos_libc_fputc_locked>:
1c00c486:	6689                	lui	a3,0x2
1c00c488:	f14027f3          	csrr	a5,mhartid
1c00c48c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c490:	00379713          	slli	a4,a5,0x3
1c00c494:	078a                	slli	a5,a5,0x2
1c00c496:	8ff5                	and	a5,a5,a3
1c00c498:	0ff77713          	andi	a4,a4,255
1c00c49c:	1a10f6b7          	lui	a3,0x1a10f
1c00c4a0:	9736                	add	a4,a4,a3
1c00c4a2:	0ff57513          	andi	a0,a0,255
1c00c4a6:	97ba                	add	a5,a5,a4
1c00c4a8:	c388                	sw	a0,0(a5)
1c00c4aa:	4501                	li	a0,0
1c00c4ac:	8082                	ret

1c00c4ae <putchar>:
1c00c4ae:	6689                	lui	a3,0x2
1c00c4b0:	f14027f3          	csrr	a5,mhartid
1c00c4b4:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c4b8:	00379713          	slli	a4,a5,0x3
1c00c4bc:	078a                	slli	a5,a5,0x2
1c00c4be:	8ff5                	and	a5,a5,a3
1c00c4c0:	0ff77713          	andi	a4,a4,255
1c00c4c4:	1a10f6b7          	lui	a3,0x1a10f
1c00c4c8:	9736                	add	a4,a4,a3
1c00c4ca:	0ff57513          	andi	a0,a0,255
1c00c4ce:	97ba                	add	a5,a5,a4
1c00c4d0:	c388                	sw	a0,0(a5)
1c00c4d2:	4501                	li	a0,0
1c00c4d4:	8082                	ret

1c00c4d6 <pos_libc_prf_locked>:
1c00c4d6:	a0b1                	j	1c00c522 <pos_libc_prf>

1c00c4d8 <exit>:
1c00c4d8:	800007b7          	lui	a5,0x80000
1c00c4dc:	1141                	addi	sp,sp,-16
1c00c4de:	8d5d                	or	a0,a0,a5
1c00c4e0:	c606                	sw	ra,12(sp)
1c00c4e2:	1a1047b7          	lui	a5,0x1a104
1c00c4e6:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00c4ea:	31a5                	jal	1c00c152 <pos_wait_forever>

1c00c4ec <pos_io_start>:
1c00c4ec:	4501                	li	a0,0
1c00c4ee:	8082                	ret

1c00c4f0 <pos_io_stop>:
1c00c4f0:	4501                	li	a0,0
1c00c4f2:	8082                	ret

1c00c4f4 <printf>:
1c00c4f4:	7139                	addi	sp,sp,-64
1c00c4f6:	02410313          	addi	t1,sp,36
1c00c4fa:	d432                	sw	a2,40(sp)
1c00c4fc:	862a                	mv	a2,a0
1c00c4fe:	1c00c537          	lui	a0,0x1c00c
1c00c502:	d22e                	sw	a1,36(sp)
1c00c504:	d636                	sw	a3,44(sp)
1c00c506:	4589                	li	a1,2
1c00c508:	869a                	mv	a3,t1
1c00c50a:	48650513          	addi	a0,a0,1158 # 1c00c486 <pos_libc_fputc_locked>
1c00c50e:	ce06                	sw	ra,28(sp)
1c00c510:	d83a                	sw	a4,48(sp)
1c00c512:	da3e                	sw	a5,52(sp)
1c00c514:	dc42                	sw	a6,56(sp)
1c00c516:	de46                	sw	a7,60(sp)
1c00c518:	c61a                	sw	t1,12(sp)
1c00c51a:	3f75                	jal	1c00c4d6 <pos_libc_prf_locked>
1c00c51c:	40f2                	lw	ra,28(sp)
1c00c51e:	6121                	addi	sp,sp,64
1c00c520:	8082                	ret

1c00c522 <pos_libc_prf>:
1c00c522:	7169                	addi	sp,sp,-304
1c00c524:	12812423          	sw	s0,296(sp)
1c00c528:	12912223          	sw	s1,292(sp)
1c00c52c:	11612823          	sw	s6,272(sp)
1c00c530:	11712623          	sw	s7,268(sp)
1c00c534:	11812423          	sw	s8,264(sp)
1c00c538:	11912223          	sw	s9,260(sp)
1c00c53c:	11a12023          	sw	s10,256(sp)
1c00c540:	12112623          	sw	ra,300(sp)
1c00c544:	13212023          	sw	s2,288(sp)
1c00c548:	11312e23          	sw	s3,284(sp)
1c00c54c:	11412c23          	sw	s4,280(sp)
1c00c550:	11512a23          	sw	s5,276(sp)
1c00c554:	dfee                	sw	s11,252(sp)
1c00c556:	8b2a                	mv	s6,a0
1c00c558:	8d2e                	mv	s10,a1
1c00c55a:	84b2                	mv	s1,a2
1c00c55c:	8c36                	mv	s8,a3
1c00c55e:	4401                	li	s0,0
1c00c560:	1c000bb7          	lui	s7,0x1c000
1c00c564:	02410c93          	addi	s9,sp,36
1c00c568:	0004c503          	lbu	a0,0(s1)
1c00c56c:	0485                	addi	s1,s1,1
1c00c56e:	cd19                	beqz	a0,1c00c58c <pos_libc_prf+0x6a>
1c00c570:	02500793          	li	a5,37
1c00c574:	04f50863          	beq	a0,a5,1c00c5c4 <pos_libc_prf+0xa2>
1c00c578:	85ea                	mv	a1,s10
1c00c57a:	9b02                	jalr	s6
1c00c57c:	57fd                	li	a5,-1
1c00c57e:	24f50863          	beq	a0,a5,1c00c7ce <pos_libc_prf+0x2ac>
1c00c582:	0405                	addi	s0,s0,1
1c00c584:	0004c503          	lbu	a0,0(s1)
1c00c588:	0485                	addi	s1,s1,1
1c00c58a:	f17d                	bnez	a0,1c00c570 <pos_libc_prf+0x4e>
1c00c58c:	8522                	mv	a0,s0
1c00c58e:	12c12083          	lw	ra,300(sp)
1c00c592:	12812403          	lw	s0,296(sp)
1c00c596:	12412483          	lw	s1,292(sp)
1c00c59a:	12012903          	lw	s2,288(sp)
1c00c59e:	11c12983          	lw	s3,284(sp)
1c00c5a2:	11812a03          	lw	s4,280(sp)
1c00c5a6:	11412a83          	lw	s5,276(sp)
1c00c5aa:	11012b03          	lw	s6,272(sp)
1c00c5ae:	10c12b83          	lw	s7,268(sp)
1c00c5b2:	10812c03          	lw	s8,264(sp)
1c00c5b6:	10412c83          	lw	s9,260(sp)
1c00c5ba:	10012d03          	lw	s10,256(sp)
1c00c5be:	5dfe                	lw	s11,252(sp)
1c00c5c0:	6155                	addi	sp,sp,304
1c00c5c2:	8082                	ret
1c00c5c4:	00148a93          	addi	s5,s1,1
1c00c5c8:	fffacd83          	lbu	s11,-1(s5)
1c00c5cc:	02000713          	li	a4,32
1c00c5d0:	250b8513          	addi	a0,s7,592 # 1c000250 <PQCLEAN_KYBER1024_CLEAN_zetas+0x104>
1c00c5d4:	85ee                	mv	a1,s11
1c00c5d6:	c83a                	sw	a4,16(sp)
1c00c5d8:	cc02                	sw	zero,24(sp)
1c00c5da:	ca02                	sw	zero,20(sp)
1c00c5dc:	ce02                	sw	zero,28(sp)
1c00c5de:	c602                	sw	zero,12(sp)
1c00c5e0:	02300913          	li	s2,35
1c00c5e4:	02d00a13          	li	s4,45
1c00c5e8:	89d6                	mv	s3,s5
1c00c5ea:	350d                	jal	1c00c40c <strchr>
1c00c5ec:	c915                	beqz	a0,1c00c620 <pos_libc_prf+0xfe>
1c00c5ee:	212d8963          	beq	s11,s2,1c00c800 <pos_libc_prf+0x2de>
1c00c5f2:	1fb97063          	bleu	s11,s2,1c00c7d2 <pos_libc_prf+0x2b0>
1c00c5f6:	214d8163          	beq	s11,s4,1c00c7f8 <pos_libc_prf+0x2d6>
1c00c5fa:	03000613          	li	a2,48
1c00c5fe:	1ecd8863          	beq	s11,a2,1c00c7ee <pos_libc_prf+0x2cc>
1c00c602:	02b00693          	li	a3,43
1c00c606:	1edd8063          	beq	s11,a3,1c00c7e6 <pos_libc_prf+0x2c4>
1c00c60a:	84d6                	mv	s1,s5
1c00c60c:	00148a93          	addi	s5,s1,1
1c00c610:	fffacd83          	lbu	s11,-1(s5)
1c00c614:	250b8513          	addi	a0,s7,592
1c00c618:	85ee                	mv	a1,s11
1c00c61a:	89d6                	mv	s3,s5
1c00c61c:	3bc5                	jal	1c00c40c <strchr>
1c00c61e:	f961                	bnez	a0,1c00c5ee <pos_libc_prf+0xcc>
1c00c620:	02a00613          	li	a2,42
1c00c624:	20cd8463          	beq	s11,a2,1c00c82c <pos_libc_prf+0x30a>
1c00c628:	fd0d8613          	addi	a2,s11,-48
1c00c62c:	45a5                	li	a1,9
1c00c62e:	4901                	li	s2,0
1c00c630:	1cc5fe63          	bleu	a2,a1,1c00c80c <pos_libc_prf+0x2ea>
1c00c634:	02e00713          	li	a4,46
1c00c638:	5a7d                	li	s4,-1
1c00c63a:	24ed8463          	beq	s11,a4,1c00c882 <pos_libc_prf+0x360>
1c00c63e:	1c000837          	lui	a6,0x1c000
1c00c642:	85ee                	mv	a1,s11
1c00c644:	25880513          	addi	a0,a6,600 # 1c000258 <PQCLEAN_KYBER1024_CLEAN_zetas+0x10c>
1c00c648:	33d1                	jal	1c00c40c <strchr>
1c00c64a:	84ce                	mv	s1,s3
1c00c64c:	c509                	beqz	a0,1c00c656 <pos_libc_prf+0x134>
1c00c64e:	0009cd83          	lbu	s11,0(s3)
1c00c652:	00198493          	addi	s1,s3,1
1c00c656:	06700713          	li	a4,103
1c00c65a:	1fb75963          	ble	s11,a4,1c00c84c <pos_libc_prf+0x32a>
1c00c65e:	07000713          	li	a4,112
1c00c662:	12ed89e3          	beq	s11,a4,1c00cf94 <pos_libc_prf+0xa72>
1c00c666:	25b75263          	ble	s11,a4,1c00c8aa <pos_libc_prf+0x388>
1c00c66a:	07500713          	li	a4,117
1c00c66e:	0aed89e3          	beq	s11,a4,1c00cf20 <pos_libc_prf+0x9fe>
1c00c672:	07800713          	li	a4,120
1c00c676:	72ed8b63          	beq	s11,a4,1c00cdac <pos_libc_prf+0x88a>
1c00c67a:	07300713          	li	a4,115
1c00c67e:	1aed9ce3          	bne	s11,a4,1c00d036 <pos_libc_prf+0xb14>
1c00c682:	000c2583          	lw	a1,0(s8)
1c00c686:	004c0a93          	addi	s5,s8,4
1c00c68a:	87ae                	mv	a5,a1
1c00c68c:	4981                	li	s3,0
1c00c68e:	0c800693          	li	a3,200
1c00c692:	a021                	j	1c00c69a <pos_libc_prf+0x178>
1c00c694:	0985                	addi	s3,s3,1
1c00c696:	5ad98be3          	beq	s3,a3,1c00d44c <pos_libc_prf+0xf2a>
1c00c69a:	0007c703          	lbu	a4,0(a5)
1c00c69e:	0785                	addi	a5,a5,1
1c00c6a0:	fb75                	bnez	a4,1c00c694 <pos_libc_prf+0x172>
1c00c6a2:	000a4563          	bltz	s4,1c00c6ac <pos_libc_prf+0x18a>
1c00c6a6:	013a5363          	ble	s3,s4,1c00c6ac <pos_libc_prf+0x18a>
1c00c6aa:	89d2                	mv	s3,s4
1c00c6ac:	8c56                	mv	s8,s5
1c00c6ae:	ea098de3          	beqz	s3,1c00c568 <pos_libc_prf+0x46>
1c00c6b2:	864e                	mv	a2,s3
1c00c6b4:	8566                	mv	a0,s9
1c00c6b6:	34c9                	jal	1c00c178 <memcpy>
1c00c6b8:	8c56                	mv	s8,s5
1c00c6ba:	0f29d963          	ble	s2,s3,1c00c7ac <pos_libc_prf+0x28a>
1c00c6be:	c602                	sw	zero,12(sp)
1c00c6c0:	48f2                	lw	a7,28(sp)
1c00c6c2:	1a0885e3          	beqz	a7,1c00d06c <pos_libc_prf+0xb4a>
1c00c6c6:	013c87b3          	add	a5,s9,s3
1c00c6ca:	40f007b3          	neg	a5,a5
1c00c6ce:	8b8d                	andi	a5,a5,3
1c00c6d0:	00378693          	addi	a3,a5,3
1c00c6d4:	4715                	li	a4,5
1c00c6d6:	413905b3          	sub	a1,s2,s3
1c00c6da:	00e6f363          	bleu	a4,a3,1c00c6e0 <pos_libc_prf+0x1be>
1c00c6de:	4695                	li	a3,5
1c00c6e0:	fff90713          	addi	a4,s2,-1
1c00c6e4:	41370733          	sub	a4,a4,s3
1c00c6e8:	06d76663          	bltu	a4,a3,1c00c754 <pos_libc_prf+0x232>
1c00c6ec:	86ce                	mv	a3,s3
1c00c6ee:	cb9d                	beqz	a5,1c00c724 <pos_libc_prf+0x202>
1c00c6f0:	0f010813          	addi	a6,sp,240
1c00c6f4:	013806b3          	add	a3,a6,s3
1c00c6f8:	02000713          	li	a4,32
1c00c6fc:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00c700:	4605                	li	a2,1
1c00c702:	00198693          	addi	a3,s3,1
1c00c706:	00c78f63          	beq	a5,a2,1c00c724 <pos_libc_prf+0x202>
1c00c70a:	96c2                	add	a3,a3,a6
1c00c70c:	f2e68a23          	sb	a4,-204(a3)
1c00c710:	460d                	li	a2,3
1c00c712:	00298693          	addi	a3,s3,2
1c00c716:	00c79763          	bne	a5,a2,1c00c724 <pos_libc_prf+0x202>
1c00c71a:	96c2                	add	a3,a3,a6
1c00c71c:	f2e68a23          	sb	a4,-204(a3)
1c00c720:	00398693          	addi	a3,s3,3
1c00c724:	8d9d                	sub	a1,a1,a5
1c00c726:	97ce                	add	a5,a5,s3
1c00c728:	0025d613          	srli	a2,a1,0x2
1c00c72c:	97e6                	add	a5,a5,s9
1c00c72e:	4701                	li	a4,0
1c00c730:	1c0008b7          	lui	a7,0x1c000
1c00c734:	24c88893          	addi	a7,a7,588 # 1c00024c <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c00c738:	0008a883          	lw	a7,0(a7)
1c00c73c:	0705                	addi	a4,a4,1
1c00c73e:	0117a023          	sw	a7,0(a5)
1c00c742:	0791                	addi	a5,a5,4
1c00c744:	fec766e3          	bltu	a4,a2,1c00c730 <pos_libc_prf+0x20e>
1c00c748:	ffc5f793          	andi	a5,a1,-4
1c00c74c:	00d789b3          	add	s3,a5,a3
1c00c750:	04b78b63          	beq	a5,a1,1c00c7a6 <pos_libc_prf+0x284>
1c00c754:	1988                	addi	a0,sp,240
1c00c756:	01350733          	add	a4,a0,s3
1c00c75a:	02000793          	li	a5,32
1c00c75e:	f2f70a23          	sb	a5,-204(a4)
1c00c762:	00198713          	addi	a4,s3,1
1c00c766:	05275063          	ble	s2,a4,1c00c7a6 <pos_libc_prf+0x284>
1c00c76a:	972a                	add	a4,a4,a0
1c00c76c:	f2f70a23          	sb	a5,-204(a4)
1c00c770:	00298713          	addi	a4,s3,2
1c00c774:	03275963          	ble	s2,a4,1c00c7a6 <pos_libc_prf+0x284>
1c00c778:	972a                	add	a4,a4,a0
1c00c77a:	f2f70a23          	sb	a5,-204(a4)
1c00c77e:	00398713          	addi	a4,s3,3
1c00c782:	03275263          	ble	s2,a4,1c00c7a6 <pos_libc_prf+0x284>
1c00c786:	972a                	add	a4,a4,a0
1c00c788:	f2f70a23          	sb	a5,-204(a4)
1c00c78c:	00498713          	addi	a4,s3,4
1c00c790:	01275b63          	ble	s2,a4,1c00c7a6 <pos_libc_prf+0x284>
1c00c794:	972a                	add	a4,a4,a0
1c00c796:	f2f70a23          	sb	a5,-204(a4)
1c00c79a:	0995                	addi	s3,s3,5
1c00c79c:	0129d563          	ble	s2,s3,1c00c7a6 <pos_libc_prf+0x284>
1c00c7a0:	99aa                	add	s3,s3,a0
1c00c7a2:	f2f98a23          	sb	a5,-204(s3)
1c00c7a6:	89ca                	mv	s3,s2
1c00c7a8:	dc0980e3          	beqz	s3,1c00c568 <pos_libc_prf+0x46>
1c00c7ac:	8966                	mv	s2,s9
1c00c7ae:	5a7d                	li	s4,-1
1c00c7b0:	41940ab3          	sub	s5,s0,s9
1c00c7b4:	a029                	j	1c00c7be <pos_libc_prf+0x29c>
1c00c7b6:	01590433          	add	s0,s2,s5
1c00c7ba:	da0987e3          	beqz	s3,1c00c568 <pos_libc_prf+0x46>
1c00c7be:	00094503          	lbu	a0,0(s2)
1c00c7c2:	85ea                	mv	a1,s10
1c00c7c4:	9b02                	jalr	s6
1c00c7c6:	0905                	addi	s2,s2,1
1c00c7c8:	19fd                	addi	s3,s3,-1
1c00c7ca:	ff4516e3          	bne	a0,s4,1c00c7b6 <pos_libc_prf+0x294>
1c00c7ce:	547d                	li	s0,-1
1c00c7d0:	bb75                	j	1c00c58c <pos_libc_prf+0x6a>
1c00c7d2:	da0d8de3          	beqz	s11,1c00c58c <pos_libc_prf+0x6a>
1c00c7d6:	02000513          	li	a0,32
1c00c7da:	e2ad98e3          	bne	s11,a0,1c00c60a <pos_libc_prf+0xe8>
1c00c7de:	4785                	li	a5,1
1c00c7e0:	cc3e                	sw	a5,24(sp)
1c00c7e2:	84d6                	mv	s1,s5
1c00c7e4:	b525                	j	1c00c60c <pos_libc_prf+0xea>
1c00c7e6:	4705                	li	a4,1
1c00c7e8:	ca3a                	sw	a4,20(sp)
1c00c7ea:	84d6                	mv	s1,s5
1c00c7ec:	b505                	j	1c00c60c <pos_libc_prf+0xea>
1c00c7ee:	03000893          	li	a7,48
1c00c7f2:	c846                	sw	a7,16(sp)
1c00c7f4:	84d6                	mv	s1,s5
1c00c7f6:	bd19                	j	1c00c60c <pos_libc_prf+0xea>
1c00c7f8:	4685                	li	a3,1
1c00c7fa:	ce36                	sw	a3,28(sp)
1c00c7fc:	84d6                	mv	s1,s5
1c00c7fe:	b539                	j	1c00c60c <pos_libc_prf+0xea>
1c00c800:	4805                	li	a6,1
1c00c802:	c642                	sw	a6,12(sp)
1c00c804:	84d6                	mv	s1,s5
1c00c806:	b519                	j	1c00c60c <pos_libc_prf+0xea>
1c00c808:	84d6                	mv	s1,s5
1c00c80a:	0a85                	addi	s5,s5,1
1c00c80c:	00291793          	slli	a5,s2,0x2
1c00c810:	97ca                	add	a5,a5,s2
1c00c812:	0786                	slli	a5,a5,0x1
1c00c814:	97ee                	add	a5,a5,s11
1c00c816:	000acd83          	lbu	s11,0(s5)
1c00c81a:	fd078913          	addi	s2,a5,-48
1c00c81e:	fd0d8793          	addi	a5,s11,-48
1c00c822:	fef5f3e3          	bleu	a5,a1,1c00c808 <pos_libc_prf+0x2e6>
1c00c826:	00248993          	addi	s3,s1,2
1c00c82a:	a811                	j	1c00c83e <pos_libc_prf+0x31c>
1c00c82c:	000c2903          	lw	s2,0(s8)
1c00c830:	0c11                	addi	s8,s8,4
1c00c832:	14094663          	bltz	s2,1c00c97e <pos_libc_prf+0x45c>
1c00c836:	000acd83          	lbu	s11,0(s5)
1c00c83a:	00248993          	addi	s3,s1,2
1c00c83e:	0c800713          	li	a4,200
1c00c842:	df2779e3          	bleu	s2,a4,1c00c634 <pos_libc_prf+0x112>
1c00c846:	0c800913          	li	s2,200
1c00c84a:	b3ed                	j	1c00c634 <pos_libc_prf+0x112>
1c00c84c:	06500713          	li	a4,101
1c00c850:	12eddc63          	ble	a4,s11,1c00c988 <pos_libc_prf+0x466>
1c00c854:	04700713          	li	a4,71
1c00c858:	55b74063          	blt	a4,s11,1c00cd98 <pos_libc_prf+0x876>
1c00c85c:	04500713          	li	a4,69
1c00c860:	12edd463          	ble	a4,s11,1c00c988 <pos_libc_prf+0x466>
1c00c864:	d20d84e3          	beqz	s11,1c00c58c <pos_libc_prf+0x6a>
1c00c868:	02500713          	li	a4,37
1c00c86c:	7ced9563          	bne	s11,a4,1c00d036 <pos_libc_prf+0xb14>
1c00c870:	85ea                	mv	a1,s10
1c00c872:	02500513          	li	a0,37
1c00c876:	9b02                	jalr	s6
1c00c878:	57fd                	li	a5,-1
1c00c87a:	f4f50ae3          	beq	a0,a5,1c00c7ce <pos_libc_prf+0x2ac>
1c00c87e:	0405                	addi	s0,s0,1
1c00c880:	b311                	j	1c00c584 <pos_libc_prf+0x62>
1c00c882:	0009c783          	lbu	a5,0(s3)
1c00c886:	02a00713          	li	a4,42
1c00c88a:	00198693          	addi	a3,s3,1
1c00c88e:	0ae79d63          	bne	a5,a4,1c00c948 <pos_libc_prf+0x426>
1c00c892:	000c2a03          	lw	s4,0(s8)
1c00c896:	0019cd83          	lbu	s11,1(s3)
1c00c89a:	0c11                	addi	s8,s8,4
1c00c89c:	0989                	addi	s3,s3,2
1c00c89e:	0c800713          	li	a4,200
1c00c8a2:	d9475ee3          	ble	s4,a4,1c00c63e <pos_libc_prf+0x11c>
1c00c8a6:	5a7d                	li	s4,-1
1c00c8a8:	bb59                	j	1c00c63e <pos_libc_prf+0x11c>
1c00c8aa:	06e00713          	li	a4,110
1c00c8ae:	76ed8e63          	beq	s11,a4,1c00d02a <pos_libc_prf+0xb08>
1c00c8b2:	5bb75663          	ble	s11,a4,1c00ce5e <pos_libc_prf+0x93c>
1c00c8b6:	4732                	lw	a4,12(sp)
1c00c8b8:	004c0513          	addi	a0,s8,4
1c00c8bc:	000c2683          	lw	a3,0(s8)
1c00c8c0:	1c070de3          	beqz	a4,1c00d29a <pos_libc_prf+0xd78>
1c00c8c4:	03000793          	li	a5,48
1c00c8c8:	02f10223          	sb	a5,36(sp)
1c00c8cc:	16068de3          	beqz	a3,1c00d246 <pos_libc_prf+0xd24>
1c00c8d0:	02510593          	addi	a1,sp,37
1c00c8d4:	872e                	mv	a4,a1
1c00c8d6:	87ba                	mv	a5,a4
1c00c8d8:	0076f613          	andi	a2,a3,7
1c00c8dc:	0785                	addi	a5,a5,1
1c00c8de:	03060613          	addi	a2,a2,48
1c00c8e2:	828d                	srli	a3,a3,0x3
1c00c8e4:	fec78fa3          	sb	a2,-1(a5)
1c00c8e8:	fae5                	bnez	a3,1c00c8d8 <pos_libc_prf+0x3b6>
1c00c8ea:	40b789b3          	sub	s3,a5,a1
1c00c8ee:	0149db63          	ble	s4,s3,1c00c904 <pos_libc_prf+0x3e2>
1c00c8f2:	03000693          	li	a3,48
1c00c8f6:	0785                	addi	a5,a5,1
1c00c8f8:	fed78fa3          	sb	a3,-1(a5)
1c00c8fc:	40b789b3          	sub	s3,a5,a1
1c00c900:	ff49cbe3          	blt	s3,s4,1c00c8f6 <pos_libc_prf+0x3d4>
1c00c904:	00078023          	sb	zero,0(a5)
1c00c908:	17fd                	addi	a5,a5,-1
1c00c90a:	00f77e63          	bleu	a5,a4,1c00c926 <pos_libc_prf+0x404>
1c00c90e:	00074603          	lbu	a2,0(a4)
1c00c912:	0007c683          	lbu	a3,0(a5)
1c00c916:	00c78023          	sb	a2,0(a5)
1c00c91a:	00d70023          	sb	a3,0(a4)
1c00c91e:	17fd                	addi	a5,a5,-1
1c00c920:	0705                	addi	a4,a4,1
1c00c922:	fef766e3          	bltu	a4,a5,1c00c90e <pos_libc_prf+0x3ec>
1c00c926:	4832                	lw	a6,12(sp)
1c00c928:	57fd                	li	a5,-1
1c00c92a:	99c2                	add	s3,s3,a6
1c00c92c:	22fa0ee3          	beq	s4,a5,1c00d368 <pos_libc_prf+0xe46>
1c00c930:	0c800793          	li	a5,200
1c00c934:	e937cde3          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00c938:	02000693          	li	a3,32
1c00c93c:	8c2a                	mv	s8,a0
1c00c93e:	c602                	sw	zero,12(sp)
1c00c940:	c836                	sw	a3,16(sp)
1c00c942:	d729cfe3          	blt	s3,s2,1c00c6c0 <pos_libc_prf+0x19e>
1c00c946:	b58d                	j	1c00c7a8 <pos_libc_prf+0x286>
1c00c948:	fd078593          	addi	a1,a5,-48
1c00c94c:	4725                	li	a4,9
1c00c94e:	8dbe                	mv	s11,a5
1c00c950:	4a01                	li	s4,0
1c00c952:	4625                	li	a2,9
1c00c954:	00b77663          	bleu	a1,a4,1c00c960 <pos_libc_prf+0x43e>
1c00c958:	1070006f          	j	1c00d25e <pos_libc_prf+0xd3c>
1c00c95c:	89b6                	mv	s3,a3
1c00c95e:	0685                	addi	a3,a3,1
1c00c960:	002a1793          	slli	a5,s4,0x2
1c00c964:	97d2                	add	a5,a5,s4
1c00c966:	0786                	slli	a5,a5,0x1
1c00c968:	97ee                	add	a5,a5,s11
1c00c96a:	0006cd83          	lbu	s11,0(a3)
1c00c96e:	fd078a13          	addi	s4,a5,-48
1c00c972:	fd0d8793          	addi	a5,s11,-48
1c00c976:	fef673e3          	bleu	a5,a2,1c00c95c <pos_libc_prf+0x43a>
1c00c97a:	0989                	addi	s3,s3,2
1c00c97c:	b70d                	j	1c00c89e <pos_libc_prf+0x37c>
1c00c97e:	4785                	li	a5,1
1c00c980:	41200933          	neg	s2,s2
1c00c984:	ce3e                	sw	a5,28(sp)
1c00c986:	bd45                	j	1c00c836 <pos_libc_prf+0x314>
1c00c988:	0c1d                	addi	s8,s8,7
1c00c98a:	ff8c7c13          	andi	s8,s8,-8
1c00c98e:	000c2703          	lw	a4,0(s8)
1c00c992:	004c2803          	lw	a6,4(s8)
1c00c996:	01575693          	srli	a3,a4,0x15
1c00c99a:	00b81613          	slli	a2,a6,0xb
1c00c99e:	8e55                	or	a2,a2,a3
1c00c9a0:	01485513          	srli	a0,a6,0x14
1c00c9a4:	00b71693          	slli	a3,a4,0xb
1c00c9a8:	80000737          	lui	a4,0x80000
1c00c9ac:	fff74713          	not	a4,a4
1c00c9b0:	7ff57513          	andi	a0,a0,2047
1c00c9b4:	7ff00593          	li	a1,2047
1c00c9b8:	0c21                	addi	s8,s8,8
1c00c9ba:	8e79                	and	a2,a2,a4
1c00c9bc:	0ab504e3          	beq	a0,a1,1c00d264 <pos_libc_prf+0xd42>
1c00c9c0:	04600593          	li	a1,70
1c00c9c4:	00bd9463          	bne	s11,a1,1c00c9cc <pos_libc_prf+0x4aa>
1c00c9c8:	06600d93          	li	s11,102
1c00c9cc:	00d56733          	or	a4,a0,a3
1c00c9d0:	8f51                	or	a4,a4,a2
1c00c9d2:	7e070963          	beqz	a4,1c00d1c4 <pos_libc_prf+0xca2>
1c00c9d6:	800005b7          	lui	a1,0x80000
1c00c9da:	c0250513          	addi	a0,a0,-1022
1c00c9de:	8dd1                	or	a1,a1,a2
1c00c9e0:	26084ae3          	bltz	a6,1c00d454 <pos_libc_prf+0xf32>
1c00c9e4:	4852                	lw	a6,20(sp)
1c00c9e6:	220808e3          	beqz	a6,1c00d416 <pos_libc_prf+0xef4>
1c00c9ea:	02b00713          	li	a4,43
1c00c9ee:	02e10223          	sb	a4,36(sp)
1c00c9f2:	02510e93          	addi	t4,sp,37
1c00c9f6:	5779                	li	a4,-2
1c00c9f8:	4301                	li	t1,0
1c00c9fa:	06e55763          	ble	a4,a0,1c00ca68 <pos_libc_prf+0x546>
1c00c9fe:	33333837          	lui	a6,0x33333
1c00ca02:	800008b7          	lui	a7,0x80000
1c00ca06:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00ca0a:	fff8c893          	not	a7,a7
1c00ca0e:	5e79                	li	t3,-2
1c00ca10:	a011                	j	1c00ca14 <pos_libc_prf+0x4f2>
1c00ca12:	853e                	mv	a0,a5
1c00ca14:	01f59613          	slli	a2,a1,0x1f
1c00ca18:	0016d713          	srli	a4,a3,0x1
1c00ca1c:	0016f793          	andi	a5,a3,1
1c00ca20:	8f51                	or	a4,a4,a2
1c00ca22:	00e786b3          	add	a3,a5,a4
1c00ca26:	00f6b7b3          	sltu	a5,a3,a5
1c00ca2a:	8185                	srli	a1,a1,0x1
1c00ca2c:	95be                	add	a1,a1,a5
1c00ca2e:	00150793          	addi	a5,a0,1
1c00ca32:	feb860e3          	bltu	a6,a1,1c00ca12 <pos_libc_prf+0x4f0>
1c00ca36:	00269613          	slli	a2,a3,0x2
1c00ca3a:	01e6df13          	srli	t5,a3,0x1e
1c00ca3e:	00259713          	slli	a4,a1,0x2
1c00ca42:	96b2                	add	a3,a3,a2
1c00ca44:	00ef6733          	or	a4,t5,a4
1c00ca48:	95ba                	add	a1,a1,a4
1c00ca4a:	00c6b633          	sltu	a2,a3,a2
1c00ca4e:	95b2                	add	a1,a1,a2
1c00ca50:	01f6d713          	srli	a4,a3,0x1f
1c00ca54:	0509                	addi	a0,a0,2
1c00ca56:	137d                	addi	t1,t1,-1
1c00ca58:	01159663          	bne	a1,a7,1c00ca64 <pos_libc_prf+0x542>
1c00ca5c:	0686                	slli	a3,a3,0x1
1c00ca5e:	ffe76593          	ori	a1,a4,-2
1c00ca62:	853e                	mv	a0,a5
1c00ca64:	fbc548e3          	blt	a0,t3,1c00ca14 <pos_libc_prf+0x4f2>
1c00ca68:	06a05563          	blez	a0,1c00cad2 <pos_libc_prf+0x5b0>
1c00ca6c:	800008b7          	lui	a7,0x80000
1c00ca70:	4e15                	li	t3,5
1c00ca72:	fff8c893          	not	a7,a7
1c00ca76:	00268613          	addi	a2,a3,2
1c00ca7a:	00d636b3          	sltu	a3,a2,a3
1c00ca7e:	95b6                	add	a1,a1,a3
1c00ca80:	03c5d7b3          	divu	a5,a1,t3
1c00ca84:	00279713          	slli	a4,a5,0x2
1c00ca88:	973e                	add	a4,a4,a5
1c00ca8a:	8d99                	sub	a1,a1,a4
1c00ca8c:	01d59713          	slli	a4,a1,0x1d
1c00ca90:	00365593          	srli	a1,a2,0x3
1c00ca94:	8dd9                	or	a1,a1,a4
1c00ca96:	03c5d5b3          	divu	a1,a1,t3
1c00ca9a:	00359693          	slli	a3,a1,0x3
1c00ca9e:	00559713          	slli	a4,a1,0x5
1c00caa2:	9736                	add	a4,a4,a3
1c00caa4:	40e60733          	sub	a4,a2,a4
1c00caa8:	03c75733          	divu	a4,a4,t3
1c00caac:	81f5                	srli	a1,a1,0x1d
1c00caae:	96ba                	add	a3,a3,a4
1c00cab0:	97ae                	add	a5,a5,a1
1c00cab2:	00e6b733          	sltu	a4,a3,a4
1c00cab6:	00f705b3          	add	a1,a4,a5
1c00caba:	157d                	addi	a0,a0,-1
1c00cabc:	0305                	addi	t1,t1,1
1c00cabe:	01f6d793          	srli	a5,a3,0x1f
1c00cac2:	0586                	slli	a1,a1,0x1
1c00cac4:	8ddd                	or	a1,a1,a5
1c00cac6:	0686                	slli	a3,a3,0x1
1c00cac8:	157d                	addi	a0,a0,-1
1c00caca:	feb8fae3          	bleu	a1,a7,1c00cabe <pos_libc_prf+0x59c>
1c00cace:	faa044e3          	bgtz	a0,1c00ca76 <pos_libc_prf+0x554>
1c00cad2:	4611                	li	a2,4
1c00cad4:	01f59713          	slli	a4,a1,0x1f
1c00cad8:	0016d793          	srli	a5,a3,0x1
1c00cadc:	8fd9                	or	a5,a5,a4
1c00cade:	8a85                	andi	a3,a3,1
1c00cae0:	00f688b3          	add	a7,a3,a5
1c00cae4:	8185                	srli	a1,a1,0x1
1c00cae6:	00d8b6b3          	sltu	a3,a7,a3
1c00caea:	00b68733          	add	a4,a3,a1
1c00caee:	0505                	addi	a0,a0,1
1c00caf0:	86c6                	mv	a3,a7
1c00caf2:	85ba                	mv	a1,a4
1c00caf4:	fec510e3          	bne	a0,a2,1c00cad4 <pos_libc_prf+0x5b2>
1c00caf8:	06700693          	li	a3,103
1c00cafc:	040a48e3          	bltz	s4,1c00d34c <pos_libc_prf+0xe2a>
1c00cb00:	70dd8b63          	beq	s11,a3,1c00d216 <pos_libc_prf+0xcf4>
1c00cb04:	04700693          	li	a3,71
1c00cb08:	70dd8763          	beq	s11,a3,1c00d216 <pos_libc_prf+0xcf4>
1c00cb0c:	06600693          	li	a3,102
1c00cb10:	08dd89e3          	beq	s11,a3,1c00d3a2 <pos_libc_prf+0xe80>
1c00cb14:	001a0e13          	addi	t3,s4,1
1c00cb18:	46c1                	li	a3,16
1c00cb1a:	01c6d363          	ble	t3,a3,1c00cb20 <pos_libc_prf+0x5fe>
1c00cb1e:	4e41                	li	t3,16
1c00cb20:	1e7d                	addi	t3,t3,-1
1c00cb22:	4f81                	li	t6,0
1c00cb24:	4681                	li	a3,0
1c00cb26:	08000637          	lui	a2,0x8000
1c00cb2a:	4f15                	li	t5,5
1c00cb2c:	52fd                	li	t0,-1
1c00cb2e:	00268593          	addi	a1,a3,2
1c00cb32:	00d5b7b3          	sltu	a5,a1,a3
1c00cb36:	97b2                	add	a5,a5,a2
1c00cb38:	03e7d633          	divu	a2,a5,t5
1c00cb3c:	00261693          	slli	a3,a2,0x2
1c00cb40:	96b2                	add	a3,a3,a2
1c00cb42:	8f95                	sub	a5,a5,a3
1c00cb44:	07f6                	slli	a5,a5,0x1d
1c00cb46:	0035d513          	srli	a0,a1,0x3
1c00cb4a:	8d5d                	or	a0,a0,a5
1c00cb4c:	03e55533          	divu	a0,a0,t5
1c00cb50:	00351693          	slli	a3,a0,0x3
1c00cb54:	00551793          	slli	a5,a0,0x5
1c00cb58:	97b6                	add	a5,a5,a3
1c00cb5a:	40f587b3          	sub	a5,a1,a5
1c00cb5e:	03e7d7b3          	divu	a5,a5,t5
1c00cb62:	8175                	srli	a0,a0,0x1d
1c00cb64:	96be                	add	a3,a3,a5
1c00cb66:	00f6b7b3          	sltu	a5,a3,a5
1c00cb6a:	962a                	add	a2,a2,a0
1c00cb6c:	963e                	add	a2,a2,a5
1c00cb6e:	01f61513          	slli	a0,a2,0x1f
1c00cb72:	0016d793          	srli	a5,a3,0x1
1c00cb76:	0016f593          	andi	a1,a3,1
1c00cb7a:	8fc9                	or	a5,a5,a0
1c00cb7c:	00f586b3          	add	a3,a1,a5
1c00cb80:	8205                	srli	a2,a2,0x1
1c00cb82:	00b6b7b3          	sltu	a5,a3,a1
1c00cb86:	1e7d                	addi	t3,t3,-1
1c00cb88:	963e                	add	a2,a2,a5
1c00cb8a:	fa5e12e3          	bne	t3,t0,1c00cb2e <pos_libc_prf+0x60c>
1c00cb8e:	96c6                	add	a3,a3,a7
1c00cb90:	963a                	add	a2,a2,a4
1c00cb92:	0116b8b3          	sltu	a7,a3,a7
1c00cb96:	9646                	add	a2,a2,a7
1c00cb98:	f00005b7          	lui	a1,0xf0000
1c00cb9c:	8df1                	and	a1,a1,a2
1c00cb9e:	8736                	mv	a4,a3
1c00cba0:	cdb9                	beqz	a1,1c00cbfe <pos_libc_prf+0x6dc>
1c00cba2:	0689                	addi	a3,a3,2
1c00cba4:	00e6b733          	sltu	a4,a3,a4
1c00cba8:	963a                	add	a2,a2,a4
1c00cbaa:	4815                	li	a6,5
1c00cbac:	03065533          	divu	a0,a2,a6
1c00cbb0:	00251713          	slli	a4,a0,0x2
1c00cbb4:	972a                	add	a4,a4,a0
1c00cbb6:	8e19                	sub	a2,a2,a4
1c00cbb8:	01d61713          	slli	a4,a2,0x1d
1c00cbbc:	0036d593          	srli	a1,a3,0x3
1c00cbc0:	8dd9                	or	a1,a1,a4
1c00cbc2:	0305d5b3          	divu	a1,a1,a6
1c00cbc6:	00359613          	slli	a2,a1,0x3
1c00cbca:	00559713          	slli	a4,a1,0x5
1c00cbce:	9732                	add	a4,a4,a2
1c00cbd0:	40e68733          	sub	a4,a3,a4
1c00cbd4:	03075733          	divu	a4,a4,a6
1c00cbd8:	81f5                	srli	a1,a1,0x1d
1c00cbda:	963a                	add	a2,a2,a4
1c00cbdc:	00e63733          	sltu	a4,a2,a4
1c00cbe0:	95aa                	add	a1,a1,a0
1c00cbe2:	00b706b3          	add	a3,a4,a1
1c00cbe6:	01f69593          	slli	a1,a3,0x1f
1c00cbea:	00165713          	srli	a4,a2,0x1
1c00cbee:	8f4d                	or	a4,a4,a1
1c00cbf0:	8a05                	andi	a2,a2,1
1c00cbf2:	9732                	add	a4,a4,a2
1c00cbf4:	8285                	srli	a3,a3,0x1
1c00cbf6:	00c73633          	sltu	a2,a4,a2
1c00cbfa:	9636                	add	a2,a2,a3
1c00cbfc:	0305                	addi	t1,t1,1
1c00cbfe:	001e8993          	addi	s3,t4,1
1c00cc02:	06600693          	li	a3,102
1c00cc06:	85ce                	mv	a1,s3
1c00cc08:	6add8663          	beq	s11,a3,1c00d2b4 <pos_libc_prf+0xd92>
1c00cc0c:	00271693          	slli	a3,a4,0x2
1c00cc10:	01e75593          	srli	a1,a4,0x1e
1c00cc14:	00261513          	slli	a0,a2,0x2
1c00cc18:	9736                	add	a4,a4,a3
1c00cc1a:	8d4d                	or	a0,a0,a1
1c00cc1c:	962a                	add	a2,a2,a0
1c00cc1e:	00d735b3          	sltu	a1,a4,a3
1c00cc22:	95b2                	add	a1,a1,a2
1c00cc24:	01f75693          	srli	a3,a4,0x1f
1c00cc28:	0586                	slli	a1,a1,0x1
1c00cc2a:	8dd5                	or	a1,a1,a3
1c00cc2c:	01c5d693          	srli	a3,a1,0x1c
1c00cc30:	03068613          	addi	a2,a3,48
1c00cc34:	00d036b3          	snez	a3,a3
1c00cc38:	10000537          	lui	a0,0x10000
1c00cc3c:	40d30333          	sub	t1,t1,a3
1c00cc40:	46b2                	lw	a3,12(sp)
1c00cc42:	157d                	addi	a0,a0,-1
1c00cc44:	00ce8023          	sb	a2,0(t4)
1c00cc48:	0706                	slli	a4,a4,0x1
1c00cc4a:	8de9                	and	a1,a1,a0
1c00cc4c:	64068b63          	beqz	a3,1c00d2a2 <pos_libc_prf+0xd80>
1c00cc50:	02e00693          	li	a3,46
1c00cc54:	00de80a3          	sb	a3,1(t4)
1c00cc58:	002e8513          	addi	a0,t4,2
1c00cc5c:	020a00e3          	beqz	s4,1c00d47c <pos_libc_prf+0xf5a>
1c00cc60:	014509b3          	add	s3,a0,s4
1c00cc64:	48bd                	li	a7,15
1c00cc66:	03000e13          	li	t3,48
1c00cc6a:	00271793          	slli	a5,a4,0x2
1c00cc6e:	01e75813          	srli	a6,a4,0x1e
1c00cc72:	00259693          	slli	a3,a1,0x2
1c00cc76:	00e78633          	add	a2,a5,a4
1c00cc7a:	00d866b3          	or	a3,a6,a3
1c00cc7e:	96ae                	add	a3,a3,a1
1c00cc80:	00f637b3          	sltu	a5,a2,a5
1c00cc84:	97b6                	add	a5,a5,a3
1c00cc86:	0786                	slli	a5,a5,0x1
1c00cc88:	01f65693          	srli	a3,a2,0x1f
1c00cc8c:	8fd5                	or	a5,a5,a3
1c00cc8e:	01c7d693          	srli	a3,a5,0x1c
1c00cc92:	03068693          	addi	a3,a3,48
1c00cc96:	0505                	addi	a0,a0,1
1c00cc98:	3b105663          	blez	a7,1c00d044 <pos_libc_prf+0xb22>
1c00cc9c:	10000837          	lui	a6,0x10000
1c00cca0:	187d                	addi	a6,a6,-1
1c00cca2:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00cca6:	18fd                	addi	a7,a7,-1
1c00cca8:	00161713          	slli	a4,a2,0x1
1c00ccac:	0107f5b3          	and	a1,a5,a6
1c00ccb0:	faa99de3          	bne	s3,a0,1c00cc6a <pos_libc_prf+0x748>
1c00ccb4:	0c0f9263          	bnez	t6,1c00cd78 <pos_libc_prf+0x856>
1c00ccb8:	fdfdf713          	andi	a4,s11,-33
1c00ccbc:	04500693          	li	a3,69
1c00ccc0:	02d71963          	bne	a4,a3,1c00ccf2 <pos_libc_prf+0x7d0>
1c00ccc4:	87ee                	mv	a5,s11
1c00ccc6:	00f98023          	sb	a5,0(s3)
1c00ccca:	6a034763          	bltz	t1,1c00d378 <pos_libc_prf+0xe56>
1c00ccce:	02b00793          	li	a5,43
1c00ccd2:	00f980a3          	sb	a5,1(s3)
1c00ccd6:	47a9                	li	a5,10
1c00ccd8:	02f34733          	div	a4,t1,a5
1c00ccdc:	02f367b3          	rem	a5,t1,a5
1c00cce0:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00cce4:	03078793          	addi	a5,a5,48
1c00cce8:	00e98123          	sb	a4,2(s3)
1c00ccec:	00f981a3          	sb	a5,3(s3)
1c00ccf0:	0991                	addi	s3,s3,4
1c00ccf2:	00098023          	sb	zero,0(s3)
1c00ccf6:	419989b3          	sub	s3,s3,s9
1c00ccfa:	48d2                	lw	a7,20(sp)
1c00ccfc:	4662                	lw	a2,24(sp)
1c00ccfe:	00c8e8b3          	or	a7,a7,a2
1c00cd02:	c646                	sw	a7,12(sp)
1c00cd04:	34089d63          	bnez	a7,1c00d05e <pos_libc_prf+0xb3c>
1c00cd08:	02414703          	lbu	a4,36(sp)
1c00cd0c:	02d00793          	li	a5,45
1c00cd10:	34f70763          	beq	a4,a5,1c00d05e <pos_libc_prf+0xb3c>
1c00cd14:	0c800793          	li	a5,200
1c00cd18:	ab37cbe3          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00cd1c:	9b29c2e3          	blt	s3,s2,1c00c6c0 <pos_libc_prf+0x19e>
1c00cd20:	b461                	j	1c00c7a8 <pos_libc_prf+0x286>
1c00cd22:	0585                	addi	a1,a1,1
1c00cd24:	00271793          	slli	a5,a4,0x2
1c00cd28:	01e75e13          	srli	t3,a4,0x1e
1c00cd2c:	00261693          	slli	a3,a2,0x2
1c00cd30:	00e788b3          	add	a7,a5,a4
1c00cd34:	00de66b3          	or	a3,t3,a3
1c00cd38:	96b2                	add	a3,a3,a2
1c00cd3a:	00f8b7b3          	sltu	a5,a7,a5
1c00cd3e:	97b6                	add	a5,a5,a3
1c00cd40:	0786                	slli	a5,a5,0x1
1c00cd42:	01f8d693          	srli	a3,a7,0x1f
1c00cd46:	8fd5                	or	a5,a5,a3
1c00cd48:	01c7de13          	srli	t3,a5,0x1c
1c00cd4c:	03000693          	li	a3,48
1c00cd50:	00a05c63          	blez	a0,1c00cd68 <pos_libc_prf+0x846>
1c00cd54:	00189713          	slli	a4,a7,0x1
1c00cd58:	100008b7          	lui	a7,0x10000
1c00cd5c:	18fd                	addi	a7,a7,-1
1c00cd5e:	030e0693          	addi	a3,t3,48
1c00cd62:	157d                	addi	a0,a0,-1
1c00cd64:	0117f633          	and	a2,a5,a7
1c00cd68:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00cd6c:	fab99be3          	bne	s3,a1,1c00cd22 <pos_libc_prf+0x800>
1c00cd70:	014809b3          	add	s3,a6,s4
1c00cd74:	f60f8fe3          	beqz	t6,1c00ccf2 <pos_libc_prf+0x7d0>
1c00cd78:	03000613          	li	a2,48
1c00cd7c:	a011                	j	1c00cd80 <pos_libc_prf+0x85e>
1c00cd7e:	89ba                	mv	s3,a4
1c00cd80:	fff9c683          	lbu	a3,-1(s3)
1c00cd84:	fff98713          	addi	a4,s3,-1
1c00cd88:	fec68be3          	beq	a3,a2,1c00cd7e <pos_libc_prf+0x85c>
1c00cd8c:	02e00613          	li	a2,46
1c00cd90:	f2c694e3          	bne	a3,a2,1c00ccb8 <pos_libc_prf+0x796>
1c00cd94:	89ba                	mv	s3,a4
1c00cd96:	b70d                	j	1c00ccb8 <pos_libc_prf+0x796>
1c00cd98:	06300713          	li	a4,99
1c00cd9c:	16ed8863          	beq	s11,a4,1c00cf0c <pos_libc_prf+0x9ea>
1c00cda0:	0db74363          	blt	a4,s11,1c00ce66 <pos_libc_prf+0x944>
1c00cda4:	05800713          	li	a4,88
1c00cda8:	28ed9763          	bne	s11,a4,1c00d036 <pos_libc_prf+0xb14>
1c00cdac:	48b2                	lw	a7,12(sp)
1c00cdae:	004c0813          	addi	a6,s8,4
1c00cdb2:	000c2583          	lw	a1,0(s8)
1c00cdb6:	3c088a63          	beqz	a7,1c00d18a <pos_libc_prf+0xc68>
1c00cdba:	7761                	lui	a4,0xffff8
1c00cdbc:	83074713          	xori	a4,a4,-2000
1c00cdc0:	02e11223          	sh	a4,36(sp)
1c00cdc4:	4889                	li	a7,2
1c00cdc6:	02610693          	addi	a3,sp,38
1c00cdca:	8736                	mv	a4,a3
1c00cdcc:	4e25                	li	t3,9
1c00cdce:	00f5f613          	andi	a2,a1,15
1c00cdd2:	0ff67793          	andi	a5,a2,255
1c00cdd6:	03078513          	addi	a0,a5,48
1c00cdda:	8191                	srli	a1,a1,0x4
1c00cddc:	05778793          	addi	a5,a5,87
1c00cde0:	0705                	addi	a4,a4,1
1c00cde2:	06ce6a63          	bltu	t3,a2,1c00ce56 <pos_libc_prf+0x934>
1c00cde6:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00cdea:	f1f5                	bnez	a1,1c00cdce <pos_libc_prf+0x8ac>
1c00cdec:	40d709b3          	sub	s3,a4,a3
1c00cdf0:	0149db63          	ble	s4,s3,1c00ce06 <pos_libc_prf+0x8e4>
1c00cdf4:	03000613          	li	a2,48
1c00cdf8:	0705                	addi	a4,a4,1
1c00cdfa:	fec70fa3          	sb	a2,-1(a4)
1c00cdfe:	40d709b3          	sub	s3,a4,a3
1c00ce02:	ff49cbe3          	blt	s3,s4,1c00cdf8 <pos_libc_prf+0x8d6>
1c00ce06:	00070023          	sb	zero,0(a4)
1c00ce0a:	177d                	addi	a4,a4,-1
1c00ce0c:	00e6fe63          	bleu	a4,a3,1c00ce28 <pos_libc_prf+0x906>
1c00ce10:	0006c603          	lbu	a2,0(a3)
1c00ce14:	00074783          	lbu	a5,0(a4)
1c00ce18:	00c70023          	sb	a2,0(a4)
1c00ce1c:	00f68023          	sb	a5,0(a3)
1c00ce20:	177d                	addi	a4,a4,-1
1c00ce22:	0685                	addi	a3,a3,1
1c00ce24:	fee6e6e3          	bltu	a3,a4,1c00ce10 <pos_libc_prf+0x8ee>
1c00ce28:	05800713          	li	a4,88
1c00ce2c:	36ed8263          	beq	s11,a4,1c00d190 <pos_libc_prf+0xc6e>
1c00ce30:	46b2                	lw	a3,12(sp)
1c00ce32:	99c6                	add	s3,s3,a7
1c00ce34:	c299                	beqz	a3,1c00ce3a <pos_libc_prf+0x918>
1c00ce36:	4709                	li	a4,2
1c00ce38:	c63a                	sw	a4,12(sp)
1c00ce3a:	57fd                	li	a5,-1
1c00ce3c:	3afa0263          	beq	s4,a5,1c00d1e0 <pos_libc_prf+0xcbe>
1c00ce40:	0c800793          	li	a5,200
1c00ce44:	9937c5e3          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00ce48:	02000793          	li	a5,32
1c00ce4c:	c83e                	sw	a5,16(sp)
1c00ce4e:	8c42                	mv	s8,a6
1c00ce50:	8729c8e3          	blt	s3,s2,1c00c6c0 <pos_libc_prf+0x19e>
1c00ce54:	ba91                	j	1c00c7a8 <pos_libc_prf+0x286>
1c00ce56:	fef70fa3          	sb	a5,-1(a4)
1c00ce5a:	f9b5                	bnez	a1,1c00cdce <pos_libc_prf+0x8ac>
1c00ce5c:	bf41                	j	1c00cdec <pos_libc_prf+0x8ca>
1c00ce5e:	06900713          	li	a4,105
1c00ce62:	1ced9a63          	bne	s11,a4,1c00d036 <pos_libc_prf+0xb14>
1c00ce66:	000c2583          	lw	a1,0(s8)
1c00ce6a:	0c11                	addi	s8,s8,4
1c00ce6c:	3805c863          	bltz	a1,1c00d1fc <pos_libc_prf+0xcda>
1c00ce70:	48d2                	lw	a7,20(sp)
1c00ce72:	872e                	mv	a4,a1
1c00ce74:	36089d63          	bnez	a7,1c00d1ee <pos_libc_prf+0xccc>
1c00ce78:	4662                	lw	a2,24(sp)
1c00ce7a:	87e6                	mv	a5,s9
1c00ce7c:	c619                	beqz	a2,1c00ce8a <pos_libc_prf+0x968>
1c00ce7e:	02000793          	li	a5,32
1c00ce82:	02f10223          	sb	a5,36(sp)
1c00ce86:	02510793          	addi	a5,sp,37
1c00ce8a:	89be                	mv	s3,a5
1c00ce8c:	4629                	li	a2,10
1c00ce8e:	02c776b3          	remu	a3,a4,a2
1c00ce92:	02c75733          	divu	a4,a4,a2
1c00ce96:	0985                	addi	s3,s3,1
1c00ce98:	03068693          	addi	a3,a3,48
1c00ce9c:	fed98fa3          	sb	a3,-1(s3)
1c00cea0:	f77d                	bnez	a4,1c00ce8e <pos_libc_prf+0x96c>
1c00cea2:	40f98733          	sub	a4,s3,a5
1c00cea6:	01475b63          	ble	s4,a4,1c00cebc <pos_libc_prf+0x99a>
1c00ceaa:	03000693          	li	a3,48
1c00ceae:	0985                	addi	s3,s3,1
1c00ceb0:	fed98fa3          	sb	a3,-1(s3)
1c00ceb4:	40f98733          	sub	a4,s3,a5
1c00ceb8:	ff474be3          	blt	a4,s4,1c00ceae <pos_libc_prf+0x98c>
1c00cebc:	00098023          	sb	zero,0(s3)
1c00cec0:	fff98713          	addi	a4,s3,-1
1c00cec4:	00e7fe63          	bleu	a4,a5,1c00cee0 <pos_libc_prf+0x9be>
1c00cec8:	0007c603          	lbu	a2,0(a5)
1c00cecc:	00074683          	lbu	a3,0(a4)
1c00ced0:	00c70023          	sb	a2,0(a4)
1c00ced4:	00d78023          	sb	a3,0(a5)
1c00ced8:	177d                	addi	a4,a4,-1
1c00ceda:	0785                	addi	a5,a5,1
1c00cedc:	fee7e6e3          	bltu	a5,a4,1c00cec8 <pos_libc_prf+0x9a6>
1c00cee0:	46d2                	lw	a3,20(sp)
1c00cee2:	4762                	lw	a4,24(sp)
1c00cee4:	419989b3          	sub	s3,s3,s9
1c00cee8:	8ed9                	or	a3,a3,a4
1c00ceea:	c636                	sw	a3,12(sp)
1c00ceec:	e299                	bnez	a3,1c00cef2 <pos_libc_prf+0x9d0>
1c00ceee:	81fd                	srli	a1,a1,0x1f
1c00cef0:	c62e                	sw	a1,12(sp)
1c00cef2:	57fd                	li	a5,-1
1c00cef4:	e2fa00e3          	beq	s4,a5,1c00cd14 <pos_libc_prf+0x7f2>
1c00cef8:	0c800793          	li	a5,200
1c00cefc:	8d37c9e3          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00cf00:	02000793          	li	a5,32
1c00cf04:	c83e                	sw	a5,16(sp)
1c00cf06:	fb29cd63          	blt	s3,s2,1c00c6c0 <pos_libc_prf+0x19e>
1c00cf0a:	b879                	j	1c00c7a8 <pos_libc_prf+0x286>
1c00cf0c:	000c2783          	lw	a5,0(s8)
1c00cf10:	020102a3          	sb	zero,37(sp)
1c00cf14:	02f10223          	sb	a5,36(sp)
1c00cf18:	0c11                	addi	s8,s8,4
1c00cf1a:	4985                	li	s3,1
1c00cf1c:	f9eff06f          	j	1c00c6ba <pos_libc_prf+0x198>
1c00cf20:	000c2703          	lw	a4,0(s8)
1c00cf24:	87e6                	mv	a5,s9
1c00cf26:	0c11                	addi	s8,s8,4
1c00cf28:	4629                	li	a2,10
1c00cf2a:	02c776b3          	remu	a3,a4,a2
1c00cf2e:	02c75733          	divu	a4,a4,a2
1c00cf32:	0785                	addi	a5,a5,1
1c00cf34:	03068693          	addi	a3,a3,48
1c00cf38:	fed78fa3          	sb	a3,-1(a5)
1c00cf3c:	f77d                	bnez	a4,1c00cf2a <pos_libc_prf+0xa08>
1c00cf3e:	419789b3          	sub	s3,a5,s9
1c00cf42:	0149db63          	ble	s4,s3,1c00cf58 <pos_libc_prf+0xa36>
1c00cf46:	03000713          	li	a4,48
1c00cf4a:	0785                	addi	a5,a5,1
1c00cf4c:	fee78fa3          	sb	a4,-1(a5)
1c00cf50:	419789b3          	sub	s3,a5,s9
1c00cf54:	ff49cbe3          	blt	s3,s4,1c00cf4a <pos_libc_prf+0xa28>
1c00cf58:	00078023          	sb	zero,0(a5)
1c00cf5c:	17fd                	addi	a5,a5,-1
1c00cf5e:	00fcff63          	bleu	a5,s9,1c00cf7c <pos_libc_prf+0xa5a>
1c00cf62:	8766                	mv	a4,s9
1c00cf64:	00074603          	lbu	a2,0(a4)
1c00cf68:	0007c683          	lbu	a3,0(a5)
1c00cf6c:	00c78023          	sb	a2,0(a5)
1c00cf70:	00d70023          	sb	a3,0(a4)
1c00cf74:	17fd                	addi	a5,a5,-1
1c00cf76:	0705                	addi	a4,a4,1
1c00cf78:	fef766e3          	bltu	a4,a5,1c00cf64 <pos_libc_prf+0xa42>
1c00cf7c:	57fd                	li	a5,-1
1c00cf7e:	0cfa0a63          	beq	s4,a5,1c00d052 <pos_libc_prf+0xb30>
1c00cf82:	0c800793          	li	a5,200
1c00cf86:	8537c4e3          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00cf8a:	02000813          	li	a6,32
1c00cf8e:	c602                	sw	zero,12(sp)
1c00cf90:	c842                	sw	a6,16(sp)
1c00cf92:	ba45                	j	1c00c942 <pos_libc_prf+0x420>
1c00cf94:	77e1                	lui	a5,0xffff8
1c00cf96:	8307c793          	xori	a5,a5,-2000
1c00cf9a:	02610713          	addi	a4,sp,38
1c00cf9e:	000c2603          	lw	a2,0(s8)
1c00cfa2:	02f11223          	sh	a5,36(sp)
1c00cfa6:	0c11                	addi	s8,s8,4
1c00cfa8:	87ba                	mv	a5,a4
1c00cfaa:	4825                	li	a6,9
1c00cfac:	00f67593          	andi	a1,a2,15
1c00cfb0:	0ff5f693          	andi	a3,a1,255
1c00cfb4:	03068513          	addi	a0,a3,48
1c00cfb8:	8211                	srli	a2,a2,0x4
1c00cfba:	05768693          	addi	a3,a3,87
1c00cfbe:	0785                	addi	a5,a5,1
1c00cfc0:	06b86163          	bltu	a6,a1,1c00d022 <pos_libc_prf+0xb00>
1c00cfc4:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00cfc8:	f275                	bnez	a2,1c00cfac <pos_libc_prf+0xa8a>
1c00cfca:	40e789b3          	sub	s3,a5,a4
1c00cfce:	469d                	li	a3,7
1c00cfd0:	0136cb63          	blt	a3,s3,1c00cfe6 <pos_libc_prf+0xac4>
1c00cfd4:	03000613          	li	a2,48
1c00cfd8:	0785                	addi	a5,a5,1
1c00cfda:	fec78fa3          	sb	a2,-1(a5)
1c00cfde:	40e789b3          	sub	s3,a5,a4
1c00cfe2:	ff36dbe3          	ble	s3,a3,1c00cfd8 <pos_libc_prf+0xab6>
1c00cfe6:	00078023          	sb	zero,0(a5)
1c00cfea:	17fd                	addi	a5,a5,-1
1c00cfec:	00f77e63          	bleu	a5,a4,1c00d008 <pos_libc_prf+0xae6>
1c00cff0:	00074603          	lbu	a2,0(a4)
1c00cff4:	0007c683          	lbu	a3,0(a5)
1c00cff8:	00c78023          	sb	a2,0(a5)
1c00cffc:	00d70023          	sb	a3,0(a4)
1c00d000:	17fd                	addi	a5,a5,-1
1c00d002:	0705                	addi	a4,a4,1
1c00d004:	fef766e3          	bltu	a4,a5,1c00cff0 <pos_libc_prf+0xace>
1c00d008:	57fd                	li	a5,-1
1c00d00a:	0989                	addi	s3,s3,2
1c00d00c:	04fa0363          	beq	s4,a5,1c00d052 <pos_libc_prf+0xb30>
1c00d010:	0c800793          	li	a5,200
1c00d014:	fb37cd63          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00d018:	02000893          	li	a7,32
1c00d01c:	c602                	sw	zero,12(sp)
1c00d01e:	c846                	sw	a7,16(sp)
1c00d020:	b20d                	j	1c00c942 <pos_libc_prf+0x420>
1c00d022:	fed78fa3          	sb	a3,-1(a5)
1c00d026:	f259                	bnez	a2,1c00cfac <pos_libc_prf+0xa8a>
1c00d028:	b74d                	j	1c00cfca <pos_libc_prf+0xaa8>
1c00d02a:	000c2783          	lw	a5,0(s8)
1c00d02e:	0c11                	addi	s8,s8,4
1c00d030:	c380                	sw	s0,0(a5)
1c00d032:	d36ff06f          	j	1c00c568 <pos_libc_prf+0x46>
1c00d036:	0c800713          	li	a4,200
1c00d03a:	d3b75763          	ble	s11,a4,1c00c568 <pos_libc_prf+0x46>
1c00d03e:	547d                	li	s0,-1
1c00d040:	d4cff06f          	j	1c00c58c <pos_libc_prf+0x6a>
1c00d044:	ffc50fa3          	sb	t3,-1(a0)
1c00d048:	c2a991e3          	bne	s3,a0,1c00cc6a <pos_libc_prf+0x748>
1c00d04c:	c60f86e3          	beqz	t6,1c00ccb8 <pos_libc_prf+0x796>
1c00d050:	b325                	j	1c00cd78 <pos_libc_prf+0x856>
1c00d052:	0c800793          	li	a5,200
1c00d056:	f737cc63          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00d05a:	c602                	sw	zero,12(sp)
1c00d05c:	b0dd                	j	1c00c942 <pos_libc_prf+0x420>
1c00d05e:	0c800793          	li	a5,200
1c00d062:	f737c663          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00d066:	4705                	li	a4,1
1c00d068:	c63a                	sw	a4,12(sp)
1c00d06a:	b8e1                	j	1c00c942 <pos_libc_prf+0x420>
1c00d06c:	41390a33          	sub	s4,s2,s3
1c00d070:	00198613          	addi	a2,s3,1
1c00d074:	85e6                	mv	a1,s9
1c00d076:	014c8533          	add	a0,s9,s4
1c00d07a:	a4aff0ef          	jal	ra,1c00c2c4 <memmove>
1c00d07e:	46c2                	lw	a3,16(sp)
1c00d080:	02000793          	li	a5,32
1c00d084:	30f68163          	beq	a3,a5,1c00d386 <pos_libc_prf+0xe64>
1c00d088:	4732                	lw	a4,12(sp)
1c00d08a:	89ca                	mv	s3,s2
1c00d08c:	9a3a                	add	s4,s4,a4
1c00d08e:	f1475d63          	ble	s4,a4,1c00c7a8 <pos_libc_prf+0x286>
1c00d092:	4832                	lw	a6,12(sp)
1c00d094:	4715                	li	a4,5
1c00d096:	010c87b3          	add	a5,s9,a6
1c00d09a:	40f007b3          	neg	a5,a5
1c00d09e:	8b8d                	andi	a5,a5,3
1c00d0a0:	00378693          	addi	a3,a5,3
1c00d0a4:	410a05b3          	sub	a1,s4,a6
1c00d0a8:	00e6f363          	bleu	a4,a3,1c00d0ae <pos_libc_prf+0xb8c>
1c00d0ac:	4695                	li	a3,5
1c00d0ae:	48b2                	lw	a7,12(sp)
1c00d0b0:	fffa0713          	addi	a4,s4,-1
1c00d0b4:	41170733          	sub	a4,a4,a7
1c00d0b8:	06d76b63          	bltu	a4,a3,1c00d12e <pos_libc_prf+0xc0c>
1c00d0bc:	86c6                	mv	a3,a7
1c00d0be:	cb9d                	beqz	a5,1c00d0f4 <pos_libc_prf+0xbd2>
1c00d0c0:	46c2                	lw	a3,16(sp)
1c00d0c2:	1988                	addi	a0,sp,240
1c00d0c4:	01150733          	add	a4,a0,a7
1c00d0c8:	f2d70a23          	sb	a3,-204(a4)
1c00d0cc:	4705                	li	a4,1
1c00d0ce:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00d0d2:	02e78163          	beq	a5,a4,1c00d0f4 <pos_libc_prf+0xbd2>
1c00d0d6:	4742                	lw	a4,16(sp)
1c00d0d8:	96aa                	add	a3,a3,a0
1c00d0da:	f2e68a23          	sb	a4,-204(a3)
1c00d0de:	470d                	li	a4,3
1c00d0e0:	00288693          	addi	a3,a7,2
1c00d0e4:	00e79863          	bne	a5,a4,1c00d0f4 <pos_libc_prf+0xbd2>
1c00d0e8:	4842                	lw	a6,16(sp)
1c00d0ea:	96aa                	add	a3,a3,a0
1c00d0ec:	f3068a23          	sb	a6,-204(a3)
1c00d0f0:	00388693          	addi	a3,a7,3
1c00d0f4:	48c2                	lw	a7,16(sp)
1c00d0f6:	4832                	lw	a6,12(sp)
1c00d0f8:	00889713          	slli	a4,a7,0x8
1c00d0fc:	01089513          	slli	a0,a7,0x10
1c00d100:	00e8e733          	or	a4,a7,a4
1c00d104:	8d9d                	sub	a1,a1,a5
1c00d106:	01889613          	slli	a2,a7,0x18
1c00d10a:	8f49                	or	a4,a4,a0
1c00d10c:	97c2                	add	a5,a5,a6
1c00d10e:	8f51                	or	a4,a4,a2
1c00d110:	0025d513          	srli	a0,a1,0x2
1c00d114:	97e6                	add	a5,a5,s9
1c00d116:	4601                	li	a2,0
1c00d118:	c398                	sw	a4,0(a5)
1c00d11a:	0605                	addi	a2,a2,1
1c00d11c:	0791                	addi	a5,a5,4
1c00d11e:	fea66de3          	bltu	a2,a0,1c00d118 <pos_libc_prf+0xbf6>
1c00d122:	ffc5f793          	andi	a5,a1,-4
1c00d126:	96be                	add	a3,a3,a5
1c00d128:	c636                	sw	a3,12(sp)
1c00d12a:	e6b78e63          	beq	a5,a1,1c00c7a6 <pos_libc_prf+0x284>
1c00d12e:	46b2                	lw	a3,12(sp)
1c00d130:	0f010893          	addi	a7,sp,240
1c00d134:	4742                	lw	a4,16(sp)
1c00d136:	00d887b3          	add	a5,a7,a3
1c00d13a:	f2e78a23          	sb	a4,-204(a5)
1c00d13e:	00168793          	addi	a5,a3,1
1c00d142:	e747d263          	ble	s4,a5,1c00c7a6 <pos_libc_prf+0x284>
1c00d146:	97c6                	add	a5,a5,a7
1c00d148:	f2e78a23          	sb	a4,-204(a5)
1c00d14c:	00268793          	addi	a5,a3,2
1c00d150:	e547db63          	ble	s4,a5,1c00c7a6 <pos_libc_prf+0x284>
1c00d154:	97c6                	add	a5,a5,a7
1c00d156:	f2e78a23          	sb	a4,-204(a5)
1c00d15a:	00368793          	addi	a5,a3,3
1c00d15e:	e547d463          	ble	s4,a5,1c00c7a6 <pos_libc_prf+0x284>
1c00d162:	97c6                	add	a5,a5,a7
1c00d164:	f2e78a23          	sb	a4,-204(a5)
1c00d168:	00468793          	addi	a5,a3,4
1c00d16c:	e347dd63          	ble	s4,a5,1c00c7a6 <pos_libc_prf+0x284>
1c00d170:	97c6                	add	a5,a5,a7
1c00d172:	f2e78a23          	sb	a4,-204(a5)
1c00d176:	00568a93          	addi	s5,a3,5
1c00d17a:	e34ad663          	ble	s4,s5,1c00c7a6 <pos_libc_prf+0x284>
1c00d17e:	9ac6                	add	s5,s5,a7
1c00d180:	f2ea8a23          	sb	a4,-204(s5)
1c00d184:	89ca                	mv	s3,s2
1c00d186:	e22ff06f          	j	1c00c7a8 <pos_libc_prf+0x286>
1c00d18a:	4881                	li	a7,0
1c00d18c:	1054                	addi	a3,sp,36
1c00d18e:	b935                	j	1c00cdca <pos_libc_prf+0x8a8>
1c00d190:	02414783          	lbu	a5,36(sp)
1c00d194:	1058                	addi	a4,sp,36
1c00d196:	46e5                	li	a3,25
1c00d198:	c8078ce3          	beqz	a5,1c00ce30 <pos_libc_prf+0x90e>
1c00d19c:	fe078613          	addi	a2,a5,-32
1c00d1a0:	f9f78793          	addi	a5,a5,-97
1c00d1a4:	0ff7f793          	andi	a5,a5,255
1c00d1a8:	00f6e963          	bltu	a3,a5,1c00d1ba <pos_libc_prf+0xc98>
1c00d1ac:	00c70023          	sb	a2,0(a4)
1c00d1b0:	0705                	addi	a4,a4,1
1c00d1b2:	00074783          	lbu	a5,0(a4)
1c00d1b6:	f3fd                	bnez	a5,1c00d19c <pos_libc_prf+0xc7a>
1c00d1b8:	b9a5                	j	1c00ce30 <pos_libc_prf+0x90e>
1c00d1ba:	0705                	addi	a4,a4,1
1c00d1bc:	00074783          	lbu	a5,0(a4)
1c00d1c0:	fff1                	bnez	a5,1c00d19c <pos_libc_prf+0xc7a>
1c00d1c2:	b1bd                	j	1c00ce30 <pos_libc_prf+0x90e>
1c00d1c4:	47d2                	lw	a5,20(sp)
1c00d1c6:	20078263          	beqz	a5,1c00d3ca <pos_libc_prf+0xea8>
1c00d1ca:	02b00713          	li	a4,43
1c00d1ce:	02e10223          	sb	a4,36(sp)
1c00d1d2:	02510e93          	addi	t4,sp,37
1c00d1d6:	4301                	li	t1,0
1c00d1d8:	4501                	li	a0,0
1c00d1da:	4681                	li	a3,0
1c00d1dc:	4581                	li	a1,0
1c00d1de:	b8d5                	j	1c00cad2 <pos_libc_prf+0x5b0>
1c00d1e0:	0c800793          	li	a5,200
1c00d1e4:	df37c563          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00d1e8:	8c42                	mv	s8,a6
1c00d1ea:	f58ff06f          	j	1c00c942 <pos_libc_prf+0x420>
1c00d1ee:	02b00793          	li	a5,43
1c00d1f2:	02f10223          	sb	a5,36(sp)
1c00d1f6:	02510793          	addi	a5,sp,37
1c00d1fa:	b941                	j	1c00ce8a <pos_libc_prf+0x968>
1c00d1fc:	02d00793          	li	a5,45
1c00d200:	02f10223          	sb	a5,36(sp)
1c00d204:	800007b7          	lui	a5,0x80000
1c00d208:	22f58363          	beq	a1,a5,1c00d42e <pos_libc_prf+0xf0c>
1c00d20c:	40b00733          	neg	a4,a1
1c00d210:	02510793          	addi	a5,sp,37
1c00d214:	b99d                	j	1c00ce8a <pos_libc_prf+0x968>
1c00d216:	47b2                	lw	a5,12(sp)
1c00d218:	4f81                	li	t6,0
1c00d21a:	e399                	bnez	a5,1c00d220 <pos_libc_prf+0xcfe>
1c00d21c:	01403fb3          	snez	t6,s4
1c00d220:	56f5                	li	a3,-3
1c00d222:	001a0e13          	addi	t3,s4,1
1c00d226:	00d34463          	blt	t1,a3,1c00d22e <pos_libc_prf+0xd0c>
1c00d22a:	166e5d63          	ble	t1,t3,1c00d3a4 <pos_libc_prf+0xe82>
1c00d22e:	46c1                	li	a3,16
1c00d230:	01c6d363          	ble	t3,a3,1c00d236 <pos_libc_prf+0xd14>
1c00d234:	4e41                	li	t3,16
1c00d236:	06700693          	li	a3,103
1c00d23a:	1e7d                	addi	t3,t3,-1
1c00d23c:	1add8963          	beq	s11,a3,1c00d3ee <pos_libc_prf+0xecc>
1c00d240:	04500d93          	li	s11,69
1c00d244:	b0c5                	j	1c00cb24 <pos_libc_prf+0x602>
1c00d246:	020102a3          	sb	zero,37(sp)
1c00d24a:	57fd                	li	a5,-1
1c00d24c:	89ba                	mv	s3,a4
1c00d24e:	8c2a                	mv	s8,a0
1c00d250:	c6fa0563          	beq	s4,a5,1c00c6ba <pos_libc_prf+0x198>
1c00d254:	02000813          	li	a6,32
1c00d258:	c842                	sw	a6,16(sp)
1c00d25a:	c60ff06f          	j	1c00c6ba <pos_libc_prf+0x198>
1c00d25e:	89b6                	mv	s3,a3
1c00d260:	bdeff06f          	j	1c00c63e <pos_libc_prf+0x11c>
1c00d264:	8766                	mv	a4,s9
1c00d266:	1c084c63          	bltz	a6,1c00d43e <pos_libc_prf+0xf1c>
1c00d26a:	8e55                	or	a2,a2,a3
1c00d26c:	fbfd8793          	addi	a5,s11,-65
1c00d270:	00370993          	addi	s3,a4,3
1c00d274:	46e5                	li	a3,25
1c00d276:	10061a63          	bnez	a2,1c00d38a <pos_libc_prf+0xe68>
1c00d27a:	16f6ee63          	bltu	a3,a5,1c00d3f6 <pos_libc_prf+0xed4>
1c00d27e:	6795                	lui	a5,0x5
1c00d280:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c00d284:	00f71023          	sh	a5,0(a4)
1c00d288:	04600793          	li	a5,70
1c00d28c:	00f70123          	sb	a5,2(a4)
1c00d290:	000701a3          	sb	zero,3(a4)
1c00d294:	419989b3          	sub	s3,s3,s9
1c00d298:	b48d                	j	1c00ccfa <pos_libc_prf+0x7d8>
1c00d29a:	85e6                	mv	a1,s9
1c00d29c:	8766                	mv	a4,s9
1c00d29e:	e38ff06f          	j	1c00c8d6 <pos_libc_prf+0x3b4>
1c00d2a2:	a00a09e3          	beqz	s4,1c00ccb4 <pos_libc_prf+0x792>
1c00d2a6:	02e00693          	li	a3,46
1c00d2aa:	002e8513          	addi	a0,t4,2
1c00d2ae:	00de80a3          	sb	a3,1(t4)
1c00d2b2:	b27d                	j	1c00cc60 <pos_libc_prf+0x73e>
1c00d2b4:	14605b63          	blez	t1,1c00d40a <pos_libc_prf+0xee8>
1c00d2b8:	006e89b3          	add	s3,t4,t1
1c00d2bc:	4541                	li	a0,16
1c00d2be:	03000893          	li	a7,48
1c00d2c2:	00271793          	slli	a5,a4,0x2
1c00d2c6:	01e75313          	srli	t1,a4,0x1e
1c00d2ca:	00261693          	slli	a3,a2,0x2
1c00d2ce:	00e78833          	add	a6,a5,a4
1c00d2d2:	00d366b3          	or	a3,t1,a3
1c00d2d6:	96b2                	add	a3,a3,a2
1c00d2d8:	00f837b3          	sltu	a5,a6,a5
1c00d2dc:	97b6                	add	a5,a5,a3
1c00d2de:	0786                	slli	a5,a5,0x1
1c00d2e0:	01f85693          	srli	a3,a6,0x1f
1c00d2e4:	8fd5                	or	a5,a5,a3
1c00d2e6:	01c7d693          	srli	a3,a5,0x1c
1c00d2ea:	03068693          	addi	a3,a3,48
1c00d2ee:	02a05063          	blez	a0,1c00d30e <pos_libc_prf+0xdec>
1c00d2f2:	00181713          	slli	a4,a6,0x1
1c00d2f6:	10000837          	lui	a6,0x10000
1c00d2fa:	187d                	addi	a6,a6,-1
1c00d2fc:	fed58fa3          	sb	a3,-1(a1)
1c00d300:	157d                	addi	a0,a0,-1
1c00d302:	0107f633          	and	a2,a5,a6
1c00d306:	00b98863          	beq	s3,a1,1c00d316 <pos_libc_prf+0xdf4>
1c00d30a:	0585                	addi	a1,a1,1
1c00d30c:	bf5d                	j	1c00d2c2 <pos_libc_prf+0xda0>
1c00d30e:	ff158fa3          	sb	a7,-1(a1)
1c00d312:	feb99ce3          	bne	s3,a1,1c00d30a <pos_libc_prf+0xde8>
1c00d316:	4301                	li	t1,0
1c00d318:	48b2                	lw	a7,12(sp)
1c00d31a:	00089463          	bnez	a7,1c00d322 <pos_libc_prf+0xe00>
1c00d31e:	a40a0be3          	beqz	s4,1c00cd74 <pos_libc_prf+0x852>
1c00d322:	00198813          	addi	a6,s3,1
1c00d326:	001a0693          	addi	a3,s4,1
1c00d32a:	02e00593          	li	a1,46
1c00d32e:	00b98023          	sb	a1,0(s3)
1c00d332:	99b6                	add	s3,s3,a3
1c00d334:	85c2                	mv	a1,a6
1c00d336:	03000693          	li	a3,48
1c00d33a:	a2b98be3          	beq	s3,a1,1c00cd70 <pos_libc_prf+0x84e>
1c00d33e:	0585                	addi	a1,a1,1
1c00d340:	9e0302e3          	beqz	t1,1c00cd24 <pos_libc_prf+0x802>
1c00d344:	fed58fa3          	sb	a3,-1(a1)
1c00d348:	0305                	addi	t1,t1,1
1c00d34a:	bfc5                	j	1c00d33a <pos_libc_prf+0xe18>
1c00d34c:	4a19                	li	s4,6
1c00d34e:	fadd9b63          	bne	s11,a3,1c00cb04 <pos_libc_prf+0x5e2>
1c00d352:	46b2                	lw	a3,12(sp)
1c00d354:	57f5                	li	a5,-3
1c00d356:	0016cf93          	xori	t6,a3,1
1c00d35a:	08f35663          	ble	a5,t1,1c00d3e6 <pos_libc_prf+0xec4>
1c00d35e:	06500d93          	li	s11,101
1c00d362:	4e19                	li	t3,6
1c00d364:	fc0ff06f          	j	1c00cb24 <pos_libc_prf+0x602>
1c00d368:	0c800793          	li	a5,200
1c00d36c:	c737c163          	blt	a5,s3,1c00c7ce <pos_libc_prf+0x2ac>
1c00d370:	8c2a                	mv	s8,a0
1c00d372:	c602                	sw	zero,12(sp)
1c00d374:	dceff06f          	j	1c00c942 <pos_libc_prf+0x420>
1c00d378:	02d00793          	li	a5,45
1c00d37c:	40600333          	neg	t1,t1
1c00d380:	00f980a3          	sb	a5,1(s3)
1c00d384:	ba89                	j	1c00ccd6 <pos_libc_prf+0x7b4>
1c00d386:	c602                	sw	zero,12(sp)
1c00d388:	b329                	j	1c00d092 <pos_libc_prf+0xb70>
1c00d38a:	0cf6ed63          	bltu	a3,a5,1c00d464 <pos_libc_prf+0xf42>
1c00d38e:	6791                	lui	a5,0x4
1c00d390:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c00d394:	00f71023          	sh	a5,0(a4)
1c00d398:	04e00793          	li	a5,78
1c00d39c:	00f70123          	sb	a5,2(a4)
1c00d3a0:	bdc5                	j	1c00d290 <pos_libc_prf+0xd6e>
1c00d3a2:	4f81                	li	t6,0
1c00d3a4:	014307b3          	add	a5,t1,s4
1c00d3a8:	0807c863          	bltz	a5,1c00d438 <pos_libc_prf+0xf16>
1c00d3ac:	46c1                	li	a3,16
1c00d3ae:	8e3e                	mv	t3,a5
1c00d3b0:	00f6d363          	ble	a5,a3,1c00d3b6 <pos_libc_prf+0xe94>
1c00d3b4:	4e41                	li	t3,16
1c00d3b6:	1e7d                	addi	t3,t3,-1
1c00d3b8:	06600d93          	li	s11,102
1c00d3bc:	f6079463          	bnez	a5,1c00cb24 <pos_libc_prf+0x602>
1c00d3c0:	4681                	li	a3,0
1c00d3c2:	08000637          	lui	a2,0x8000
1c00d3c6:	fc8ff06f          	j	1c00cb8e <pos_libc_prf+0x66c>
1c00d3ca:	47e2                	lw	a5,24(sp)
1c00d3cc:	c7d5                	beqz	a5,1c00d478 <pos_libc_prf+0xf56>
1c00d3ce:	02000713          	li	a4,32
1c00d3d2:	02e10223          	sb	a4,36(sp)
1c00d3d6:	02510e93          	addi	t4,sp,37
1c00d3da:	4301                	li	t1,0
1c00d3dc:	4501                	li	a0,0
1c00d3de:	4681                	li	a3,0
1c00d3e0:	4581                	li	a1,0
1c00d3e2:	ef0ff06f          	j	1c00cad2 <pos_libc_prf+0x5b0>
1c00d3e6:	479d                	li	a5,7
1c00d3e8:	fa67dee3          	ble	t1,a5,1c00d3a4 <pos_libc_prf+0xe82>
1c00d3ec:	4e19                	li	t3,6
1c00d3ee:	06500d93          	li	s11,101
1c00d3f2:	f32ff06f          	j	1c00cb24 <pos_libc_prf+0x602>
1c00d3f6:	679d                	lui	a5,0x7
1c00d3f8:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c00d3fc:	00f71023          	sh	a5,0(a4)
1c00d400:	06600793          	li	a5,102
1c00d404:	00f70123          	sb	a5,2(a4)
1c00d408:	b561                	j	1c00d290 <pos_libc_prf+0xd6e>
1c00d40a:	03000693          	li	a3,48
1c00d40e:	00de8023          	sb	a3,0(t4)
1c00d412:	4541                	li	a0,16
1c00d414:	b711                	j	1c00d318 <pos_libc_prf+0xdf6>
1c00d416:	48e2                	lw	a7,24(sp)
1c00d418:	8ee6                	mv	t4,s9
1c00d41a:	dc088e63          	beqz	a7,1c00c9f6 <pos_libc_prf+0x4d4>
1c00d41e:	02000713          	li	a4,32
1c00d422:	02e10223          	sb	a4,36(sp)
1c00d426:	02510e93          	addi	t4,sp,37
1c00d42a:	dccff06f          	j	1c00c9f6 <pos_libc_prf+0x4d4>
1c00d42e:	80000737          	lui	a4,0x80000
1c00d432:	02510793          	addi	a5,sp,37
1c00d436:	bc91                	j	1c00ce8a <pos_libc_prf+0x968>
1c00d438:	06600d93          	li	s11,102
1c00d43c:	b751                	j	1c00d3c0 <pos_libc_prf+0xe9e>
1c00d43e:	02d00713          	li	a4,45
1c00d442:	02e10223          	sb	a4,36(sp)
1c00d446:	02510713          	addi	a4,sp,37
1c00d44a:	b505                	j	1c00d26a <pos_libc_prf+0xd48>
1c00d44c:	a40a5d63          	bgez	s4,1c00c6a6 <pos_libc_prf+0x184>
1c00d450:	a62ff06f          	j	1c00c6b2 <pos_libc_prf+0x190>
1c00d454:	02d00713          	li	a4,45
1c00d458:	02e10223          	sb	a4,36(sp)
1c00d45c:	02510e93          	addi	t4,sp,37
1c00d460:	d96ff06f          	j	1c00c9f6 <pos_libc_prf+0x4d4>
1c00d464:	6799                	lui	a5,0x6
1c00d466:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c00d46a:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00d46e:	06e00793          	li	a5,110
1c00d472:	00f70123          	sb	a5,2(a4)
1c00d476:	bd29                	j	1c00d290 <pos_libc_prf+0xd6e>
1c00d478:	8ee6                	mv	t4,s9
1c00d47a:	b785                	j	1c00d3da <pos_libc_prf+0xeb8>
1c00d47c:	89aa                	mv	s3,a0
1c00d47e:	820f8de3          	beqz	t6,1c00ccb8 <pos_libc_prf+0x796>
1c00d482:	b8dd                	j	1c00cd78 <pos_libc_prf+0x856>

1c00d484 <pos_init_start>:
1c00d484:	1141                	addi	sp,sp,-16
1c00d486:	c422                	sw	s0,8(sp)
1c00d488:	1c000437          	lui	s0,0x1c000
1c00d48c:	c606                	sw	ra,12(sp)
1c00d48e:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00d492:	811fc0ef          	jal	ra,1c009ca2 <pos_soc_init>
1c00d496:	2275                	jal	1c00d642 <pos_irq_init>
1c00d498:	2ae1                	jal	1c00d670 <pos_soc_event_init>
1c00d49a:	2a31                	jal	1c00d5b6 <pos_allocs_init>
1c00d49c:	405c                	lw	a5,4(s0)
1c00d49e:	c791                	beqz	a5,1c00d4aa <pos_init_start+0x26>
1c00d4a0:	0411                	addi	s0,s0,4
1c00d4a2:	0411                	addi	s0,s0,4
1c00d4a4:	9782                	jalr	a5
1c00d4a6:	401c                	lw	a5,0(s0)
1c00d4a8:	ffed                	bnez	a5,1c00d4a2 <pos_init_start+0x1e>
1c00d4aa:	842ff0ef          	jal	ra,1c00c4ec <pos_io_start>
1c00d4ae:	300467f3          	csrrsi	a5,mstatus,8
1c00d4b2:	40b2                	lw	ra,12(sp)
1c00d4b4:	4422                	lw	s0,8(sp)
1c00d4b6:	0141                	addi	sp,sp,16
1c00d4b8:	8082                	ret

1c00d4ba <pos_init_stop>:
1c00d4ba:	1141                	addi	sp,sp,-16
1c00d4bc:	c422                	sw	s0,8(sp)
1c00d4be:	1c000437          	lui	s0,0x1c000
1c00d4c2:	c606                	sw	ra,12(sp)
1c00d4c4:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00d4c8:	828ff0ef          	jal	ra,1c00c4f0 <pos_io_stop>
1c00d4cc:	405c                	lw	a5,4(s0)
1c00d4ce:	c791                	beqz	a5,1c00d4da <pos_init_stop+0x20>
1c00d4d0:	0411                	addi	s0,s0,4
1c00d4d2:	0411                	addi	s0,s0,4
1c00d4d4:	9782                	jalr	a5
1c00d4d6:	401c                	lw	a5,0(s0)
1c00d4d8:	ffed                	bnez	a5,1c00d4d2 <pos_init_stop+0x18>
1c00d4da:	40b2                	lw	ra,12(sp)
1c00d4dc:	4422                	lw	s0,8(sp)
1c00d4de:	0141                	addi	sp,sp,16
1c00d4e0:	8082                	ret

1c00d4e2 <pos_alloc_init>:
1c00d4e2:	00758793          	addi	a5,a1,7
1c00d4e6:	9be1                	andi	a5,a5,-8
1c00d4e8:	40b785b3          	sub	a1,a5,a1
1c00d4ec:	c11c                	sw	a5,0(a0)
1c00d4ee:	8e0d                	sub	a2,a2,a1
1c00d4f0:	00c05663          	blez	a2,1c00d4fc <pos_alloc_init+0x1a>
1c00d4f4:	9a61                	andi	a2,a2,-8
1c00d4f6:	c390                	sw	a2,0(a5)
1c00d4f8:	0007a223          	sw	zero,4(a5)
1c00d4fc:	8082                	ret

1c00d4fe <pos_alloc>:
1c00d4fe:	4110                	lw	a2,0(a0)
1c00d500:	059d                	addi	a1,a1,7
1c00d502:	99e1                	andi	a1,a1,-8
1c00d504:	ca31                	beqz	a2,1c00d558 <pos_alloc+0x5a>
1c00d506:	4218                	lw	a4,0(a2)
1c00d508:	425c                	lw	a5,4(a2)
1c00d50a:	02b75963          	ble	a1,a4,1c00d53c <pos_alloc+0x3e>
1c00d50e:	cb81                	beqz	a5,1c00d51e <pos_alloc+0x20>
1c00d510:	4398                	lw	a4,0(a5)
1c00d512:	43d4                	lw	a3,4(a5)
1c00d514:	00b75763          	ble	a1,a4,1c00d522 <pos_alloc+0x24>
1c00d518:	863e                	mv	a2,a5
1c00d51a:	87b6                	mv	a5,a3
1c00d51c:	fbf5                	bnez	a5,1c00d510 <pos_alloc+0x12>
1c00d51e:	853e                	mv	a0,a5
1c00d520:	8082                	ret
1c00d522:	00b70a63          	beq	a4,a1,1c00d536 <pos_alloc+0x38>
1c00d526:	00b78533          	add	a0,a5,a1
1c00d52a:	8f0d                	sub	a4,a4,a1
1c00d52c:	c118                	sw	a4,0(a0)
1c00d52e:	c154                	sw	a3,4(a0)
1c00d530:	c248                	sw	a0,4(a2)
1c00d532:	853e                	mv	a0,a5
1c00d534:	8082                	ret
1c00d536:	c254                	sw	a3,4(a2)
1c00d538:	853e                	mv	a0,a5
1c00d53a:	8082                	ret
1c00d53c:	00e58b63          	beq	a1,a4,1c00d552 <pos_alloc+0x54>
1c00d540:	00b606b3          	add	a3,a2,a1
1c00d544:	8f0d                	sub	a4,a4,a1
1c00d546:	c2dc                	sw	a5,4(a3)
1c00d548:	c298                	sw	a4,0(a3)
1c00d54a:	87b2                	mv	a5,a2
1c00d54c:	c114                	sw	a3,0(a0)
1c00d54e:	853e                	mv	a0,a5
1c00d550:	8082                	ret
1c00d552:	c11c                	sw	a5,0(a0)
1c00d554:	87b2                	mv	a5,a2
1c00d556:	b7e1                	j	1c00d51e <pos_alloc+0x20>
1c00d558:	4781                	li	a5,0
1c00d55a:	b7d1                	j	1c00d51e <pos_alloc+0x20>

1c00d55c <pos_free>:
1c00d55c:	4118                	lw	a4,0(a0)
1c00d55e:	061d                	addi	a2,a2,7
1c00d560:	9a61                	andi	a2,a2,-8
1c00d562:	c729                	beqz	a4,1c00d5ac <pos_free+0x50>
1c00d564:	00b76663          	bltu	a4,a1,1c00d570 <pos_free+0x14>
1c00d568:	a0a1                	j	1c00d5b0 <pos_free+0x54>
1c00d56a:	00b7f563          	bleu	a1,a5,1c00d574 <pos_free+0x18>
1c00d56e:	873e                	mv	a4,a5
1c00d570:	435c                	lw	a5,4(a4)
1c00d572:	ffe5                	bnez	a5,1c00d56a <pos_free+0xe>
1c00d574:	00c586b3          	add	a3,a1,a2
1c00d578:	02d78463          	beq	a5,a3,1c00d5a0 <pos_free+0x44>
1c00d57c:	c190                	sw	a2,0(a1)
1c00d57e:	c1dc                	sw	a5,4(a1)
1c00d580:	cf11                	beqz	a4,1c00d59c <pos_free+0x40>
1c00d582:	431c                	lw	a5,0(a4)
1c00d584:	00f706b3          	add	a3,a4,a5
1c00d588:	00d58463          	beq	a1,a3,1c00d590 <pos_free+0x34>
1c00d58c:	c34c                	sw	a1,4(a4)
1c00d58e:	8082                	ret
1c00d590:	4194                	lw	a3,0(a1)
1c00d592:	41d0                	lw	a2,4(a1)
1c00d594:	97b6                	add	a5,a5,a3
1c00d596:	c31c                	sw	a5,0(a4)
1c00d598:	c350                	sw	a2,4(a4)
1c00d59a:	8082                	ret
1c00d59c:	c10c                	sw	a1,0(a0)
1c00d59e:	8082                	ret
1c00d5a0:	4394                	lw	a3,0(a5)
1c00d5a2:	43dc                	lw	a5,4(a5)
1c00d5a4:	9636                	add	a2,a2,a3
1c00d5a6:	c190                	sw	a2,0(a1)
1c00d5a8:	c1dc                	sw	a5,4(a1)
1c00d5aa:	bfd9                	j	1c00d580 <pos_free+0x24>
1c00d5ac:	4781                	li	a5,0
1c00d5ae:	b7d9                	j	1c00d574 <pos_free+0x18>
1c00d5b0:	87ba                	mv	a5,a4
1c00d5b2:	4701                	li	a4,0
1c00d5b4:	b7c1                	j	1c00d574 <pos_free+0x18>

1c00d5b6 <pos_allocs_init>:
1c00d5b6:	1141                	addi	sp,sp,-16
1c00d5b8:	1c0065b7          	lui	a1,0x1c006
1c00d5bc:	c606                	sw	ra,12(sp)
1c00d5be:	2d858793          	addi	a5,a1,728 # 1c0062d8 <__l2_priv0_end>
1c00d5c2:	1c008637          	lui	a2,0x1c008
1c00d5c6:	04c7cc63          	blt	a5,a2,1c00d61e <pos_allocs_init+0x68>
1c00d5ca:	4581                	li	a1,0
1c00d5cc:	4601                	li	a2,0
1c00d5ce:	1c006537          	lui	a0,0x1c006
1c00d5d2:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00d5d6:	3731                	jal	1c00d4e2 <pos_alloc_init>
1c00d5d8:	1c00d5b7          	lui	a1,0x1c00d
1c00d5dc:	68858793          	addi	a5,a1,1672 # 1c00d688 <__l2_priv1_end>
1c00d5e0:	1c010637          	lui	a2,0x1c010
1c00d5e4:	02c7c963          	blt	a5,a2,1c00d616 <pos_allocs_init+0x60>
1c00d5e8:	4581                	li	a1,0
1c00d5ea:	4601                	li	a2,0
1c00d5ec:	1c006537          	lui	a0,0x1c006
1c00d5f0:	2d050513          	addi	a0,a0,720 # 1c0062d0 <pos_alloc_l2+0x4>
1c00d5f4:	35fd                	jal	1c00d4e2 <pos_alloc_init>
1c00d5f6:	1c0105b7          	lui	a1,0x1c010
1c00d5fa:	00058793          	mv	a5,a1
1c00d5fe:	40b2                	lw	ra,12(sp)
1c00d600:	1c080637          	lui	a2,0x1c080
1c00d604:	1c006537          	lui	a0,0x1c006
1c00d608:	8e1d                	sub	a2,a2,a5
1c00d60a:	00058593          	mv	a1,a1
1c00d60e:	2d450513          	addi	a0,a0,724 # 1c0062d4 <pos_alloc_l2+0x8>
1c00d612:	0141                	addi	sp,sp,16
1c00d614:	b5f9                	j	1c00d4e2 <pos_alloc_init>
1c00d616:	8e1d                	sub	a2,a2,a5
1c00d618:	68858593          	addi	a1,a1,1672 # 1c010688 <__l2_shared_end+0x688>
1c00d61c:	bfc1                	j	1c00d5ec <pos_allocs_init+0x36>
1c00d61e:	8e1d                	sub	a2,a2,a5
1c00d620:	2d858593          	addi	a1,a1,728
1c00d624:	b76d                	j	1c00d5ce <pos_allocs_init+0x18>

1c00d626 <pi_l2_malloc>:
1c00d626:	85aa                	mv	a1,a0
1c00d628:	1c006537          	lui	a0,0x1c006
1c00d62c:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00d630:	b5f9                	j	1c00d4fe <pos_alloc>

1c00d632 <pi_l2_free>:
1c00d632:	862e                	mv	a2,a1
1c00d634:	85aa                	mv	a1,a0
1c00d636:	1c006537          	lui	a0,0x1c006
1c00d63a:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00d63e:	bf39                	j	1c00d55c <pos_free>

1c00d640 <__rt_handle_illegal_instr>:
1c00d640:	8082                	ret

1c00d642 <pos_irq_init>:
1c00d642:	1a10a737          	lui	a4,0x1a10a
1c00d646:	f14027f3          	csrr	a5,mhartid
1c00d64a:	56fd                	li	a3,-1
1c00d64c:	8795                	srai	a5,a5,0x5
1c00d64e:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00d652:	03f7f793          	andi	a5,a5,63
1c00d656:	477d                	li	a4,31
1c00d658:	00e78363          	beq	a5,a4,1c00d65e <pos_irq_init+0x1c>
1c00d65c:	8082                	ret
1c00d65e:	1c0087b7          	lui	a5,0x1c008
1c00d662:	00078793          	mv	a5,a5
1c00d666:	0017e793          	ori	a5,a5,1
1c00d66a:	30579073          	csrw	mtvec,a5
1c00d66e:	8082                	ret

1c00d670 <pos_soc_event_init>:
1c00d670:	1a1067b7          	lui	a5,0x1a106
1c00d674:	577d                	li	a4,-1
1c00d676:	c3d8                	sw	a4,4(a5)
1c00d678:	c798                	sw	a4,8(a5)
1c00d67a:	c7d8                	sw	a4,12(a5)
1c00d67c:	cb98                	sw	a4,16(a5)
1c00d67e:	cbd8                	sw	a4,20(a5)
1c00d680:	cf98                	sw	a4,24(a5)
1c00d682:	cfd8                	sw	a4,28(a5)
1c00d684:	d398                	sw	a4,32(a5)
1c00d686:	8082                	ret
