riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber1024/enc/build/enc/enc

/home/alessandra.dolmeta/pqc_riscv/test/kyber1024/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	5a20506f          	j	1c00d5a2 <__rt_handle_illegal_instr>
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
1c008084:	51e0506f          	j	1c00d5a2 <__rt_handle_illegal_instr>

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
1c0080e2:	2f4050ef          	jal	ra,1c00d3d6 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	310050ef          	jal	ra,1c00d40c <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	352040ef          	jal	ra,1c00c454 <exit>
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
1c008172:	2fe040ef          	jal	ra,1c00c470 <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	2a40406f          	j	1c00c42a <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	d1a487b7          	lui	a5,0xd1a48
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	7e912223          	sw	s1,2020(sp)
1c00819e:	7f212023          	sw	s2,2016(sp)
1c0081a2:	99778793          	addi	a5,a5,-1641 # d1a47997 <__l2_shared_end+0xb5a37997>
1c0081a6:	b8010113          	addi	sp,sp,-1152
1c0081aa:	64f12023          	sw	a5,1600(sp)
1c0081ae:	26ec47b7          	lui	a5,0x26ec4
1c0081b2:	5fc78793          	addi	a5,a5,1532 # 26ec45fc <__l2_shared_end+0xaeb45fc>
1c0081b6:	64f12223          	sw	a5,1604(sp)
1c0081ba:	9c8b07b7          	lui	a5,0x9c8b0
1c0081be:	41f78793          	addi	a5,a5,1055 # 9c8b041f <__l2_shared_end+0x808a041f>
1c0081c2:	64f12423          	sw	a5,1608(sp)
1c0081c6:	c938b7b7          	lui	a5,0xc938b
1c0081ca:	a9d78793          	addi	a5,a5,-1379 # c938aa9d <__l2_shared_end+0xad37aa9d>
1c0081ce:	64f12623          	sw	a5,1612(sp)
1c0081d2:	658b27b7          	lui	a5,0x658b2
1c0081d6:	2ec78793          	addi	a5,a5,748 # 658b22ec <__l2_shared_end+0x498a22ec>
1c0081da:	64f12823          	sw	a5,1616(sp)
1c0081de:	5290f7b7          	lui	a5,0x5290f
1c0081e2:	80578793          	addi	a5,a5,-2043 # 5290e805 <__l2_shared_end+0x368fe805>
1c0081e6:	64f12a23          	sw	a5,1620(sp)
1c0081ea:	8684b7b7          	lui	a5,0x8684b
1c0081ee:	32678793          	addi	a5,a5,806 # 8684b326 <__l2_shared_end+0x6a83b326>
1c0081f2:	64f12c23          	sw	a5,1624(sp)
1c0081f6:	c25927b7          	lui	a5,0xc2592
1c0081fa:	08078793          	addi	a5,a5,128 # c2592080 <__l2_shared_end+0xa6582080>
1c0081fe:	64f12e23          	sw	a5,1628(sp)
1c008202:	0196d7b7          	lui	a5,0x196d
1c008206:	8c578793          	addi	a5,a5,-1851 # 196c8c5 <__CTOR_LIST__-0x1a69373f>
1c00820a:	66f12023          	sw	a5,1632(sp)
1c00820e:	cb3407b7          	lui	a5,0xcb340
1c008212:	65678793          	addi	a5,a5,1622 # cb340656 <__l2_shared_end+0xaf330656>
1c008216:	66f12223          	sw	a5,1636(sp)
1c00821a:	31b137b7          	lui	a5,0x31b13
1c00821e:	71378793          	addi	a5,a5,1811 # 31b13713 <__l2_shared_end+0x15b03713>
1c008222:	66f12423          	sw	a5,1640(sp)
1c008226:	481467b7          	lui	a5,0x48146
1c00822a:	55378793          	addi	a5,a5,1363 # 48146553 <__l2_shared_end+0x2c136553>
1c00822e:	66f12623          	sw	a5,1644(sp)
1c008232:	5a40c7b7          	lui	a5,0x5a40c
1c008236:	c4278793          	addi	a5,a5,-958 # 5a40bc42 <__l2_shared_end+0x3e3fbc42>
1c00823a:	66f12823          	sw	a5,1648(sp)
1c00823e:	3c6837b7          	lui	a5,0x3c683
1c008242:	e2978793          	addi	a5,a5,-471 # 3c682e29 <__l2_shared_end+0x20672e29>
1c008246:	66f12a23          	sw	a5,1652(sp)
1c00824a:	4551a7b7          	lui	a5,0x4551a
1c00824e:	4af78793          	addi	a5,a5,1199 # 4551a4af <__l2_shared_end+0x2950a4af>
1c008252:	66f12c23          	sw	a5,1656(sp)
1c008256:	4d5c97b7          	lui	a5,0x4d5c9
1c00825a:	42678793          	addi	a5,a5,1062 # 4d5c9426 <__l2_shared_end+0x315b9426>
1c00825e:	66f12e23          	sw	a5,1660(sp)
1c008262:	2aee77b7          	lui	a5,0x2aee7
1c008266:	8fb78793          	addi	a5,a5,-1797 # 2aee68fb <__l2_shared_end+0xeed68fb>
1c00826a:	68f12023          	sw	a5,1664(sp)
1c00826e:	95b7c7b7          	lui	a5,0x95b7c
1c008272:	8cd78793          	addi	a5,a5,-1843 # 95b7b8cd <__l2_shared_end+0x79b6b8cd>
1c008276:	68f12223          	sw	a5,1668(sp)
1c00827a:	966687b7          	lui	a5,0x96668
1c00827e:	33278793          	addi	a5,a5,818 # 96668332 <__l2_shared_end+0x7a658332>
1c008282:	68f12423          	sw	a5,1672(sp)
1c008286:	a02537b7          	lui	a5,0xa0253
1c00828a:	1d578793          	addi	a5,a5,469 # a02531d5 <__l2_shared_end+0x842431d5>
1c00828e:	68f12623          	sw	a5,1676(sp)
1c008292:	8abbc7b7          	lui	a5,0x8abbc
1c008296:	d4578793          	addi	a5,a5,-699 # 8abbbd45 <__l2_shared_end+0x6ebabd45>
1c00829a:	68f12823          	sw	a5,1680(sp)
1c00829e:	2381d7b7          	lui	a5,0x2381d
1c0082a2:	c3b78793          	addi	a5,a5,-965 # 2381cc3b <__l2_shared_end+0x780cc3b>
1c0082a6:	68f12a23          	sw	a5,1684(sp)
1c0082aa:	681e47b7          	lui	a5,0x681e4
1c0082ae:	d0878793          	addi	a5,a5,-760 # 681e3d08 <__l2_shared_end+0x4c1d3d08>
1c0082b2:	68f12c23          	sw	a5,1688(sp)
1c0082b6:	82d767b7          	lui	a5,0x82d76
1c0082ba:	b2c78793          	addi	a5,a5,-1236 # 82d75b2c <__l2_shared_end+0x66d65b2c>
1c0082be:	68f12e23          	sw	a5,1692(sp)
1c0082c2:	48c477b7          	lui	a5,0x48c47
1c0082c6:	60c78793          	addi	a5,a5,1548 # 48c4760c <__l2_shared_end+0x2cc3760c>
1c0082ca:	6af12023          	sw	a5,1696(sp)
1c0082ce:	475117b7          	lui	a5,0x47511
1c0082d2:	13578793          	addi	a5,a5,309 # 47511135 <__l2_shared_end+0x2b501135>
1c0082d6:	6af12223          	sw	a5,1700(sp)
1c0082da:	01d677b7          	lui	a5,0x1d67
1c0082de:	94f78793          	addi	a5,a5,-1713 # 1d6694f <__CTOR_LIST__-0x1a2996b5>
1c0082e2:	6af12423          	sw	a5,1704(sp)
1c0082e6:	bb8d77b7          	lui	a5,0xbb8d7
1c0082ea:	0d778793          	addi	a5,a5,215 # bb8d70d7 <__l2_shared_end+0x9f8c70d7>
1c0082ee:	6af12623          	sw	a5,1708(sp)
1c0082f2:	779d97b7          	lui	a5,0x779d9
1c0082f6:	72c78793          	addi	a5,a5,1836 # 779d972c <__l2_shared_end+0x5b9c972c>
1c0082fa:	6af12823          	sw	a5,1712(sp)
1c0082fe:	b69477b7          	lui	a5,0xb6947
1c008302:	45278793          	addi	a5,a5,1106 # b6947452 <__l2_shared_end+0x9a937452>
1c008306:	6af12a23          	sw	a5,1716(sp)
1c00830a:	ffa827b7          	lui	a5,0xffa82
1c00830e:	08578793          	addi	a5,a5,133 # ffa82085 <__l2_shared_end+0xe3a72085>
1c008312:	6af12c23          	sw	a5,1720(sp)
1c008316:	6241c7b7          	lui	a5,0x6241c
1c00831a:	36678793          	addi	a5,a5,870 # 6241c366 <__l2_shared_end+0x4640c366>
1c00831e:	6af12e23          	sw	a5,1724(sp)
1c008322:	80ec37b7          	lui	a5,0x80ec3
1c008326:	aca78793          	addi	a5,a5,-1334 # 80ec2aca <__l2_shared_end+0x64eb2aca>
1c00832a:	6cf12023          	sw	a5,1728(sp)
1c00832e:	1fa5a7b7          	lui	a5,0x1fa5a
1c008332:	27278793          	addi	a5,a5,626 # 1fa5a272 <__l2_shared_end+0x3a4a272>
1c008336:	6cf12223          	sw	a5,1732(sp)
1c00833a:	963867b7          	lui	a5,0x96386
1c00833e:	9f278793          	addi	a5,a5,-1550 # 963859f2 <__l2_shared_end+0x7a3759f2>
1c008342:	6cf12423          	sw	a5,1736(sp)
1c008346:	955be7b7          	lui	a5,0x955be
1c00834a:	74878793          	addi	a5,a5,1864 # 955be748 <__l2_shared_end+0x795ae748>
1c00834e:	6cf12623          	sw	a5,1740(sp)
1c008352:	14be77b7          	lui	a5,0x14be7
1c008356:	ac178793          	addi	a5,a5,-1343 # 14be6ac1 <__CTOR_LIST__-0x7419543>
1c00835a:	6cf12823          	sw	a5,1744(sp)
1c00835e:	fadb57b7          	lui	a5,0xfadb5
1c008362:	e6078793          	addi	a5,a5,-416 # fadb4e60 <__l2_shared_end+0xdeda4e60>
1c008366:	6cf12a23          	sw	a5,1748(sp)
1c00836a:	b700f7b7          	lui	a5,0xb700f
1c00836e:	4ba78793          	addi	a5,a5,1210 # b700f4ba <__l2_shared_end+0x9afff4ba>
1c008372:	6cf12c23          	sw	a5,1752(sp)
1c008376:	070f87b7          	lui	a5,0x70f8
1c00837a:	a6a78793          	addi	a5,a5,-1430 # 70f7a6a <__CTOR_LIST__-0x14f0859a>
1c00837e:	6cf12e23          	sw	a5,1756(sp)
1c008382:	e1dc67b7          	lui	a5,0xe1dc6
1c008386:	1db78793          	addi	a5,a5,475 # e1dc61db <__l2_shared_end+0xc5db61db>
1c00838a:	6ef12023          	sw	a5,1760(sp)
1c00838e:	3bf407b7          	lui	a5,0x3bf40
1c008392:	29178793          	addi	a5,a5,657 # 3bf40291 <__l2_shared_end+0x1ff30291>
1c008396:	6ef12223          	sw	a5,1764(sp)
1c00839a:	746017b7          	lui	a5,0x74601
1c00839e:	02d78793          	addi	a5,a5,45 # 7460102d <__l2_shared_end+0x585f102d>
1c0083a2:	6ef12423          	sw	a5,1768(sp)
1c0083a6:	42c407b7          	lui	a5,0x42c40
1c0083aa:	27b78793          	addi	a5,a5,635 # 42c4027b <__l2_shared_end+0x26c3027b>
1c0083ae:	6ef12623          	sw	a5,1772(sp)
1c0083b2:	1f3487b7          	lui	a5,0x1f348
1c0083b6:	55478793          	addi	a5,a5,1364 # 1f348554 <__l2_shared_end+0x3338554>
1c0083ba:	6ef12823          	sw	a5,1776(sp)
1c0083be:	fabfe7b7          	lui	a5,0xfabfe
1c0083c2:	9d578793          	addi	a5,a5,-1579 # fabfd9d5 <__l2_shared_end+0xdebed9d5>
1c0083c6:	6ef12a23          	sw	a5,1780(sp)
1c0083ca:	616007b7          	lui	a5,0x61600
1c0083ce:	1a778793          	addi	a5,a5,423 # 616001a7 <__l2_shared_end+0x455f01a7>
1c0083d2:	6ef12c23          	sw	a5,1784(sp)
1c0083d6:	b96357b7          	lui	a5,0xb9635
1c0083da:	93778793          	addi	a5,a5,-1737 # b9634937 <__l2_shared_end+0x9d624937>
1c0083de:	6ef12e23          	sw	a5,1788(sp)
1c0083e2:	6b9c27b7          	lui	a5,0x6b9c2
1c0083e6:	08578793          	addi	a5,a5,133 # 6b9c2085 <__l2_shared_end+0x4f9b2085>
1c0083ea:	70f12023          	sw	a5,1792(sp)
1c0083ee:	f9b387b7          	lui	a5,0xf9b38
1c0083f2:	d9a78793          	addi	a5,a5,-614 # f9b37d9a <__l2_shared_end+0xddb27d9a>
1c0083f6:	70f12223          	sw	a5,1796(sp)
1c0083fa:	1d3167b7          	lui	a5,0x1d316
1c0083fe:	84978793          	addi	a5,a5,-1975 # 1d315849 <__l2_shared_end+0x1305849>
1c008402:	70f12423          	sw	a5,1800(sp)
1c008406:	a30087b7          	lui	a5,0xa3008
1c00840a:	90278793          	addi	a5,a5,-1790 # a3007902 <__l2_shared_end+0x86ff7902>
1c00840e:	70f12623          	sw	a5,1804(sp)
1c008412:	844fc7b7          	lui	a5,0x844fc
1c008416:	4d878793          	addi	a5,a5,1240 # 844fc4d8 <__l2_shared_end+0x684ec4d8>
1c00841a:	70f12823          	sw	a5,1808(sp)
1c00841e:	a293b7b7          	lui	a5,0xa293b
1c008422:	03578793          	addi	a5,a5,53 # a293b035 <__l2_shared_end+0x8692b035>
1c008426:	70f12a23          	sw	a5,1812(sp)
1c00842a:	9f50a7b7          	lui	a5,0x9f50a
1c00842e:	03678793          	addi	a5,a5,54 # 9f50a036 <__l2_shared_end+0x834fa036>
1c008432:	70f12c23          	sw	a5,1816(sp)
1c008436:	77df37b7          	lui	a5,0x77df3
1c00843a:	81978793          	addi	a5,a5,-2023 # 77df2819 <__l2_shared_end+0x5bde2819>
1c00843e:	70f12e23          	sw	a5,1820(sp)
1c008442:	4e8cd7b7          	lui	a5,0x4e8cd
1c008446:	e1978793          	addi	a5,a5,-487 # 4e8cce19 <__l2_shared_end+0x328bce19>
1c00844a:	72f12023          	sw	a5,1824(sp)
1c00844e:	4d8f27b7          	lui	a5,0x4d8f2
1c008452:	29078793          	addi	a5,a5,656 # 4d8f2290 <__l2_shared_end+0x318e2290>
1c008456:	72f12223          	sw	a5,1828(sp)
1c00845a:	e8b987b7          	lui	a5,0xe8b98
1c00845e:	cb878793          	addi	a5,a5,-840 # e8b97cb8 <__l2_shared_end+0xccb87cb8>
1c008462:	72f12423          	sw	a5,1832(sp)
1c008466:	2171f7b7          	lui	a5,0x2171f
1c00846a:	28278793          	addi	a5,a5,642 # 2171f282 <__l2_shared_end+0x570f282>
1c00846e:	72f12623          	sw	a5,1836(sp)
1c008472:	458827b7          	lui	a5,0x45882
1c008476:	38078793          	addi	a5,a5,896 # 45882380 <__l2_shared_end+0x29872380>
1c00847a:	72f12823          	sw	a5,1840(sp)
1c00847e:	06b927b7          	lui	a5,0x6b92
1c008482:	ed378793          	addi	a5,a5,-301 # 6b91ed3 <__CTOR_LIST__-0x1546e131>
1c008486:	72f12a23          	sw	a5,1844(sp)
1c00848a:	6785                	lui	a5,0x1
1c00848c:	ec678793          	addi	a5,a5,-314 # ec6 <__CTOR_LIST__-0x1bfff13e>
1c008490:	72f11c23          	sh	a5,1848(sp)
1c008494:	fb600793          	li	a5,-74
1c008498:	72f10d23          	sb	a5,1850(sp)
1c00849c:	03e00793          	li	a5,62
1c0084a0:	72f10da3          	sb	a5,1851(sp)
1c0084a4:	845ef7b7          	lui	a5,0x845ef
1c0084a8:	50f78793          	addi	a5,a5,1295 # 845ef50f <__l2_shared_end+0x685df50f>
1c0084ac:	72f12e23          	sw	a5,1852(sp)
1c0084b0:	1ba967b7          	lui	a5,0x1ba96
1c0084b4:	7b878793          	addi	a5,a5,1976 # 1ba967b8 <__CTOR_LIST__-0x56984c>
1c0084b8:	74f12023          	sw	a5,1856(sp)
1c0084bc:	a074b7b7          	lui	a5,0xa074b
1c0084c0:	e7978793          	addi	a5,a5,-391 # a074ae79 <__l2_shared_end+0x8473ae79>
1c0084c4:	74f12223          	sw	a5,1860(sp)
1c0084c8:	7304c7b7          	lui	a5,0x7304c
1c0084cc:	03a78793          	addi	a5,a5,58 # 7304c03a <__l2_shared_end+0x5703c03a>
1c0084d0:	74f12423          	sw	a5,1864(sp)
1c0084d4:	e6b3c7b7          	lui	a5,0xe6b3c
1c0084d8:	1c878793          	addi	a5,a5,456 # e6b3c1c8 <__l2_shared_end+0xcab2c1c8>
1c0084dc:	74f12623          	sw	a5,1868(sp)
1c0084e0:	7fc3e7b7          	lui	a5,0x7fc3e
1c0084e4:	cae78793          	addi	a5,a5,-850 # 7fc3dcae <__l2_shared_end+0x63c2dcae>
1c0084e8:	74f12823          	sw	a5,1872(sp)
1c0084ec:	e1b877b7          	lui	a5,0xe1b87
1c0084f0:	91e78793          	addi	a5,a5,-1762 # e1b8691e <__l2_shared_end+0xc5b7691e>
1c0084f4:	74f12a23          	sw	a5,1876(sp)
1c0084f8:	db9b07b7          	lui	a5,0xdb9b0
1c0084fc:	13678793          	addi	a5,a5,310 # db9b0136 <__l2_shared_end+0xbf9a0136>
1c008500:	74f12c23          	sw	a5,1880(sp)
1c008504:	a174c7b7          	lui	a5,0xa174c
1c008508:	30178793          	addi	a5,a5,769 # a174c301 <__l2_shared_end+0x8573c301>
1c00850c:	74f12e23          	sw	a5,1884(sp)
1c008510:	c364e7b7          	lui	a5,0xc364e
1c008514:	12278793          	addi	a5,a5,290 # c364e122 <__l2_shared_end+0xa763e122>
1c008518:	76f12023          	sw	a5,1888(sp)
1c00851c:	fbb287b7          	lui	a5,0xfbb28
1c008520:	42578793          	addi	a5,a5,1061 # fbb28425 <__l2_shared_end+0xdfb18425>
1c008524:	76f12223          	sw	a5,1892(sp)
1c008528:	3a0167b7          	lui	a5,0x3a016
1c00852c:	ecf78793          	addi	a5,a5,-305 # 3a015ecf <__l2_shared_end+0x1e005ecf>
1c008530:	76f12423          	sw	a5,1896(sp)
1c008534:	897c17b7          	lui	a5,0x897c1
1c008538:	24578793          	addi	a5,a5,581 # 897c1245 <__l2_shared_end+0x6d7b1245>
1c00853c:	76f12623          	sw	a5,1900(sp)
1c008540:	86b627b7          	lui	a5,0x86b62
1c008544:	63378793          	addi	a5,a5,1587 # 86b62633 <__l2_shared_end+0x6ab52633>
1c008548:	76f12823          	sw	a5,1904(sp)
1c00854c:	55cb87b7          	lui	a5,0x55cb8
1c008550:	80378793          	addi	a5,a5,-2045 # 55cb7803 <__l2_shared_end+0x39ca7803>
1c008554:	76f12a23          	sw	a5,1908(sp)
1c008558:	528ba7b7          	lui	a5,0x528ba
1c00855c:	42578793          	addi	a5,a5,1061 # 528ba425 <__l2_shared_end+0x368aa425>
1c008560:	76f12c23          	sw	a5,1912(sp)
1c008564:	2b1337b7          	lui	a5,0x2b133
1c008568:	02b78793          	addi	a5,a5,43 # 2b13302b <__l2_shared_end+0xf12302b>
1c00856c:	76f12e23          	sw	a5,1916(sp)
1c008570:	4b2197b7          	lui	a5,0x4b219
1c008574:	87678793          	addi	a5,a5,-1930 # 4b218876 <__l2_shared_end+0x2f208876>
1c008578:	78f12023          	sw	a5,1920(sp)
1c00857c:	d18d87b7          	lui	a5,0xd18d8
1c008580:	06978793          	addi	a5,a5,105 # d18d8069 <__l2_shared_end+0xb58c8069>
1c008584:	78f12223          	sw	a5,1924(sp)
1c008588:	03ffa7b7          	lui	a5,0x3ffa
1c00858c:	49a78793          	addi	a5,a5,1178 # 3ffa49a <__CTOR_LIST__-0x18005b6a>
1c008590:	78f12423          	sw	a5,1928(sp)
1c008594:	202517b7          	lui	a5,0x20251
1c008598:	63e78793          	addi	a5,a5,1598 # 2025163e <__l2_shared_end+0x424163e>
1c00859c:	78f12623          	sw	a5,1932(sp)
1c0085a0:	799507b7          	lui	a5,0x79950
1c0085a4:	c1678793          	addi	a5,a5,-1002 # 7994fc16 <__l2_shared_end+0x5d93fc16>
1c0085a8:	78f12823          	sw	a5,1936(sp)
1c0085ac:	392427b7          	lui	a5,0x39242
1c0085b0:	42278793          	addi	a5,a5,1058 # 39242422 <__l2_shared_end+0x1d232422>
1c0085b4:	78f12a23          	sw	a5,1940(sp)
1c0085b8:	71db57b7          	lui	a5,0x71db5
1c0085bc:	13e78793          	addi	a5,a5,318 # 71db513e <__l2_shared_end+0x55da513e>
1c0085c0:	78f12c23          	sw	a5,1944(sp)
1c0085c4:	1481e7b7          	lui	a5,0x1481e
1c0085c8:	31578793          	addi	a5,a5,789 # 1481e315 <__CTOR_LIST__-0x77e1cef>
1c0085cc:	78f12e23          	sw	a5,1948(sp)
1c0085d0:	dc3c97b7          	lui	a5,0xdc3c9
1c0085d4:	9e678793          	addi	a5,a5,-1562 # dc3c89e6 <__l2_shared_end+0xc03b89e6>
1c0085d8:	7af12023          	sw	a5,1952(sp)
1c0085dc:	1711b7b7          	lui	a5,0x1711b
1c0085e0:	ec878793          	addi	a5,a5,-312 # 1711aec8 <__CTOR_LIST__-0x4ee513c>
1c0085e4:	7af12223          	sw	a5,1956(sp)
1c0085e8:	486537b7          	lui	a5,0x48653
1c0085ec:	1a478793          	addi	a5,a5,420 # 486531a4 <__l2_shared_end+0x2c6431a4>
1c0085f0:	7af12423          	sw	a5,1960(sp)
1c0085f4:	62b417b7          	lui	a5,0x62b41
1c0085f8:	a0178793          	addi	a5,a5,-1535 # 62b40a01 <__l2_shared_end+0x46b30a01>
1c0085fc:	7af12623          	sw	a5,1964(sp)
1c008600:	1472b7b7          	lui	a5,0x1472b
1c008604:	69f78793          	addi	a5,a5,1695 # 1472b69f <__CTOR_LIST__-0x78d4965>
1c008608:	7af12823          	sw	a5,1968(sp)
1c00860c:	6c1a07b7          	lui	a5,0x6c1a0
1c008610:	38d78793          	addi	a5,a5,909 # 6c1a038d <__l2_shared_end+0x5019038d>
1c008614:	7af12a23          	sw	a5,1972(sp)
1c008618:	4a6a27b7          	lui	a5,0x4a6a2
1c00861c:	a6078793          	addi	a5,a5,-1440 # 4a6a1a60 <__l2_shared_end+0x2e691a60>
1c008620:	7af12c23          	sw	a5,1976(sp)
1c008624:	2d8727b7          	lui	a5,0x2d872
1c008628:	d6678793          	addi	a5,a5,-666 # 2d871d66 <__l2_shared_end+0x11861d66>
1c00862c:	7af12e23          	sw	a5,1980(sp)
1c008630:	7593f7b7          	lui	a5,0x7593f
1c008634:	68e78793          	addi	a5,a5,1678 # 7593f68e <__l2_shared_end+0x5992f68e>
1c008638:	7cf12023          	sw	a5,1984(sp)
1c00863c:	585917b7          	lui	a5,0x58591
1c008640:	10a78793          	addi	a5,a5,266 # 5859110a <__l2_shared_end+0x3c58110a>
1c008644:	7cf12223          	sw	a5,1988(sp)
1c008648:	26b977b7          	lui	a5,0x26b97
1c00864c:	a7178793          	addi	a5,a5,-1423 # 26b96a71 <__l2_shared_end+0xab86a71>
1c008650:	7cf12423          	sw	a5,1992(sp)
1c008654:	6351b7b7          	lui	a5,0x6351b
1c008658:	03e78793          	addi	a5,a5,62 # 6351b03e <__l2_shared_end+0x4750b03e>
1c00865c:	7cf12623          	sw	a5,1996(sp)
1c008660:	582317b7          	lui	a5,0x58231
1c008664:	05778793          	addi	a5,a5,87 # 58231057 <__l2_shared_end+0x3c221057>
1c008668:	7cf12823          	sw	a5,2000(sp)
1c00866c:	6425e7b7          	lui	a5,0x6425e
1c008670:	5cd78793          	addi	a5,a5,1485 # 6425e5cd <__l2_shared_end+0x4824e5cd>
1c008674:	7cf12a23          	sw	a5,2004(sp)
1c008678:	a85c87b7          	lui	a5,0xa85c8
1c00867c:	06478793          	addi	a5,a5,100 # a85c8064 <__l2_shared_end+0x8c5b8064>
1c008680:	7cf12c23          	sw	a5,2008(sp)
1c008684:	756197b7          	lui	a5,0x75619
1c008688:	6f578793          	addi	a5,a5,1781 # 756196f5 <__l2_shared_end+0x596096f5>
1c00868c:	7cf12e23          	sw	a5,2012(sp)
1c008690:	75a4d7b7          	lui	a5,0x75a4d
1c008694:	61a78793          	addi	a5,a5,1562 # 75a4d61a <__l2_shared_end+0x59a3d61a>
1c008698:	7ef12023          	sw	a5,2016(sp)
1c00869c:	cb78f7b7          	lui	a5,0xcb78f
1c0086a0:	ca778793          	addi	a5,a5,-857 # cb78eca7 <__l2_shared_end+0xaf77eca7>
1c0086a4:	7ef12223          	sw	a5,2020(sp)
1c0086a8:	bbc327b7          	lui	a5,0xbbc32
1c0086ac:	97378793          	addi	a5,a5,-1677 # bbc31973 <__l2_shared_end+0x9fc21973>
1c0086b0:	7ef12423          	sw	a5,2024(sp)
1c0086b4:	bbe147b7          	lui	a5,0xbbe14
1c0086b8:	4c578793          	addi	a5,a5,1221 # bbe144c5 <__l2_shared_end+0x9fe044c5>
1c0086bc:	7ef12623          	sw	a5,2028(sp)
1c0086c0:	aeaa87b7          	lui	a5,0xaeaa8
1c0086c4:	51178793          	addi	a5,a5,1297 # aeaa8511 <__l2_shared_end+0x92a98511>
1c0086c8:	7ef12823          	sw	a5,2032(sp)
1c0086cc:	0bba57b7          	lui	a5,0xbba5
1c0086d0:	1b778793          	addi	a5,a5,439 # bba51b7 <__CTOR_LIST__-0x1045ae4d>
1c0086d4:	7ef12a23          	sw	a5,2036(sp)
1c0086d8:	6e2427b7          	lui	a5,0x6e242
1c0086dc:	33978793          	addi	a5,a5,825 # 6e242339 <__l2_shared_end+0x52232339>
1c0086e0:	7ef12c23          	sw	a5,2040(sp)
1c0086e4:	4f0af7b7          	lui	a5,0x4f0af
1c0086e8:	6705                	lui	a4,0x1
1c0086ea:	43378793          	addi	a5,a5,1075 # 4f0af433 <__l2_shared_end+0x3309f433>
1c0086ee:	7ef12e23          	sw	a5,2044(sp)
1c0086f2:	80070693          	addi	a3,a4,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c0086f6:	740b87b7          	lui	a5,0x740b8
1c0086fa:	968a                	add	a3,a3,sp
1c0086fc:	8f478793          	addi	a5,a5,-1804 # 740b78f4 <__l2_shared_end+0x580a78f4>
1c008700:	c29c                	sw	a5,0(a3)
1c008702:	80470693          	addi	a3,a4,-2044
1c008706:	18a267b7          	lui	a5,0x18a26
1c00870a:	968a                	add	a3,a3,sp
1c00870c:	25378793          	addi	a5,a5,595 # 18a26253 <__CTOR_LIST__-0x35d9db1>
1c008710:	c29c                	sw	a5,0(a3)
1c008712:	80870693          	addi	a3,a4,-2040
1c008716:	4d4777b7          	lui	a5,0x4d477
1c00871a:	968a                	add	a3,a3,sp
1c00871c:	9d178793          	addi	a5,a5,-1583 # 4d4769d1 <__l2_shared_end+0x314669d1>
1c008720:	c29c                	sw	a5,0(a3)
1c008722:	80c70693          	addi	a3,a4,-2036
1c008726:	f7a917b7          	lui	a5,0xf7a91
1c00872a:	968a                	add	a3,a3,sp
1c00872c:	87278793          	addi	a5,a5,-1934 # f7a90872 <__l2_shared_end+0xdba80872>
1c008730:	c29c                	sw	a5,0(a3)
1c008732:	81070693          	addi	a3,a4,-2032
1c008736:	302877b7          	lui	a5,0x30287
1c00873a:	968a                	add	a3,a3,sp
1c00873c:	25778793          	addi	a5,a5,599 # 30287257 <__l2_shared_end+0x14277257>
1c008740:	c29c                	sw	a5,0(a3)
1c008742:	81470693          	addi	a3,a4,-2028
1c008746:	8d0ff7b7          	lui	a5,0x8d0ff
1c00874a:	968a                	add	a3,a3,sp
1c00874c:	28a78793          	addi	a5,a5,650 # 8d0ff28a <__l2_shared_end+0x710ef28a>
1c008750:	c29c                	sw	a5,0(a3)
1c008752:	81870693          	addi	a3,a4,-2024
1c008756:	74a207b7          	lui	a5,0x74a20
1c00875a:	968a                	add	a3,a3,sp
1c00875c:	32478793          	addi	a5,a5,804 # 74a20324 <__l2_shared_end+0x58a10324>
1c008760:	c29c                	sw	a5,0(a3)
1c008762:	81c70693          	addi	a3,a4,-2020
1c008766:	cf53d7b7          	lui	a5,0xcf53d
1c00876a:	968a                	add	a3,a3,sp
1c00876c:	f7778793          	addi	a5,a5,-137 # cf53cf77 <__l2_shared_end+0xb352cf77>
1c008770:	c29c                	sw	a5,0(a3)
1c008772:	82070693          	addi	a3,a4,-2016
1c008776:	47a237b7          	lui	a5,0x47a23
1c00877a:	968a                	add	a3,a3,sp
1c00877c:	3f178793          	addi	a5,a5,1009 # 47a233f1 <__l2_shared_end+0x2ba133f1>
1c008780:	c29c                	sw	a5,0(a3)
1c008782:	82470693          	addi	a3,a4,-2012
1c008786:	98b2c7b7          	lui	a5,0x98b2c
1c00878a:	968a                	add	a3,a3,sp
1c00878c:	2d578793          	addi	a5,a5,725 # 98b2c2d5 <__l2_shared_end+0x7cb1c2d5>
1c008790:	c29c                	sw	a5,0(a3)
1c008792:	82870693          	addi	a3,a4,-2008
1c008796:	c6ba27b7          	lui	a5,0xc6ba2
1c00879a:	968a                	add	a3,a3,sp
1c00879c:	1bf78793          	addi	a5,a5,447 # c6ba21bf <__l2_shared_end+0xaab921bf>
1c0087a0:	c29c                	sw	a5,0(a3)
1c0087a2:	82c70693          	addi	a3,a4,-2004
1c0087a6:	9e6447b7          	lui	a5,0x9e644
1c0087aa:	968a                	add	a3,a3,sp
1c0087ac:	4dc78793          	addi	a5,a5,1244 # 9e6444dc <__l2_shared_end+0x826344dc>
1c0087b0:	c29c                	sw	a5,0(a3)
1c0087b2:	83070693          	addi	a3,a4,-2000
1c0087b6:	77ed                	lui	a5,0xffffb
1c0087b8:	968a                	add	a3,a3,sp
1c0087ba:	f6378793          	addi	a5,a5,-157 # ffffaf63 <__l2_shared_end+0xe3feaf63>
1c0087be:	00f69023          	sh	a5,0(a3)
1c0087c2:	83270693          	addi	a3,a4,-1998
1c0087c6:	968a                	add	a3,a3,sp
1c0087c8:	fce00793          	li	a5,-50
1c0087cc:	00f68023          	sb	a5,0(a3)
1c0087d0:	83370693          	addi	a3,a4,-1997
1c0087d4:	968a                	add	a3,a3,sp
1c0087d6:	57d5                	li	a5,-11
1c0087d8:	00f68023          	sb	a5,0(a3)
1c0087dc:	83470693          	addi	a3,a4,-1996
1c0087e0:	7aa0d7b7          	lui	a5,0x7aa0d
1c0087e4:	968a                	add	a3,a3,sp
1c0087e6:	34a78793          	addi	a5,a5,842 # 7aa0d34a <__l2_shared_end+0x5e9fd34a>
1c0087ea:	c29c                	sw	a5,0(a3)
1c0087ec:	83870693          	addi	a3,a4,-1992
1c0087f0:	b347e7b7          	lui	a5,0xb347e
1c0087f4:	968a                	add	a3,a3,sp
1c0087f6:	47478793          	addi	a5,a5,1140 # b347e474 <__l2_shared_end+0x9746e474>
1c0087fa:	c29c                	sw	a5,0(a3)
1c0087fc:	83c70693          	addi	a3,a4,-1988
1c008800:	29cab7b7          	lui	a5,0x29cab
1c008804:	968a                	add	a3,a3,sp
1c008806:	c6b78793          	addi	a5,a5,-917 # 29caac6b <__l2_shared_end+0xdc9ac6b>
1c00880a:	c29c                	sw	a5,0(a3)
1c00880c:	84070693          	addi	a3,a4,-1984
1c008810:	683307b7          	lui	a5,0x68330
1c008814:	968a                	add	a3,a3,sp
1c008816:	55e78793          	addi	a5,a5,1374 # 6833055e <__l2_shared_end+0x4c32055e>
1c00881a:	c29c                	sw	a5,0(a3)
1c00881c:	84470693          	addi	a3,a4,-1980
1c008820:	6e1487b7          	lui	a5,0x6e148
1c008824:	968a                	add	a3,a3,sp
1c008826:	cef78793          	addi	a5,a5,-785 # 6e147cef <__l2_shared_end+0x52137cef>
1c00882a:	c29c                	sw	a5,0(a3)
1c00882c:	84870693          	addi	a3,a4,-1976
1c008830:	b3ed37b7          	lui	a5,0xb3ed3
1c008834:	968a                	add	a3,a3,sp
1c008836:	81c78793          	addi	a5,a5,-2020 # b3ed281c <__l2_shared_end+0x97ec281c>
1c00883a:	c29c                	sw	a5,0(a3)
1c00883c:	84c70693          	addi	a3,a4,-1972
1c008840:	c97737b7          	lui	a5,0xc9773
1c008844:	968a                	add	a3,a3,sp
1c008846:	71b78793          	addi	a5,a5,1819 # c977371b <__l2_shared_end+0xad76371b>
1c00884a:	c29c                	sw	a5,0(a3)
1c00884c:	85070693          	addi	a3,a4,-1968
1c008850:	7dc2a7b7          	lui	a5,0x7dc2a
1c008854:	968a                	add	a3,a3,sp
1c008856:	74178793          	addi	a5,a5,1857 # 7dc2a741 <__l2_shared_end+0x61c1a741>
1c00885a:	c29c                	sw	a5,0(a3)
1c00885c:	85470693          	addi	a3,a4,-1964
1c008860:	7b4367b7          	lui	a5,0x7b436
1c008864:	968a                	add	a3,a3,sp
1c008866:	9c578793          	addi	a5,a5,-1595 # 7b4359c5 <__l2_shared_end+0x5f4259c5>
1c00886a:	c29c                	sw	a5,0(a3)
1c00886c:	85870693          	addi	a3,a4,-1960
1c008870:	293d07b7          	lui	a5,0x293d0
1c008874:	968a                	add	a3,a3,sp
1c008876:	80f78793          	addi	a5,a5,-2033 # 293cf80f <__l2_shared_end+0xd3bf80f>
1c00887a:	c29c                	sw	a5,0(a3)
1c00887c:	85c70693          	addi	a3,a4,-1956
1c008880:	ef2807b7          	lui	a5,0xef280
1c008884:	968a                	add	a3,a3,sp
1c008886:	81078793          	addi	a5,a5,-2032 # ef27f810 <__l2_shared_end+0xd326f810>
1c00888a:	c29c                	sw	a5,0(a3)
1c00888c:	86070693          	addi	a3,a4,-1952
1c008890:	267757b7          	lui	a5,0x26775
1c008894:	968a                	add	a3,a3,sp
1c008896:	d2478793          	addi	a5,a5,-732 # 26774d24 <__l2_shared_end+0xa764d24>
1c00889a:	c29c                	sw	a5,0(a3)
1c00889c:	86470693          	addi	a3,a4,-1948
1c0088a0:	089737b7          	lui	a5,0x8973
1c0088a4:	968a                	add	a3,a3,sp
1c0088a6:	baf78793          	addi	a5,a5,-1105 # 8972baf <__CTOR_LIST__-0x1368d455>
1c0088aa:	c29c                	sw	a5,0(a3)
1c0088ac:	86870693          	addi	a3,a4,-1944
1c0088b0:	b1cf57b7          	lui	a5,0xb1cf5
1c0088b4:	968a                	add	a3,a3,sp
1c0088b6:	b6578793          	addi	a5,a5,-1179 # b1cf4b65 <__l2_shared_end+0x95ce4b65>
1c0088ba:	c29c                	sw	a5,0(a3)
1c0088bc:	86c70693          	addi	a3,a4,-1940
1c0088c0:	4468a7b7          	lui	a5,0x4468a
1c0088c4:	968a                	add	a3,a3,sp
1c0088c6:	23978793          	addi	a5,a5,569 # 4468a239 <__l2_shared_end+0x2867a239>
1c0088ca:	c29c                	sw	a5,0(a3)
1c0088cc:	87070693          	addi	a3,a4,-1936
1c0088d0:	9cb7f7b7          	lui	a5,0x9cb7f
1c0088d4:	968a                	add	a3,a3,sp
1c0088d6:	4c678793          	addi	a5,a5,1222 # 9cb7f4c6 <__l2_shared_end+0x80b6f4c6>
1c0088da:	c29c                	sw	a5,0(a3)
1c0088dc:	87470693          	addi	a3,a4,-1932
1c0088e0:	7074e7b7          	lui	a5,0x7074e
1c0088e4:	968a                	add	a3,a3,sp
1c0088e6:	4d978793          	addi	a5,a5,1241 # 7074e4d9 <__l2_shared_end+0x5473e4d9>
1c0088ea:	c29c                	sw	a5,0(a3)
1c0088ec:	87870693          	addi	a3,a4,-1928
1c0088f0:	9675a7b7          	lui	a5,0x9675a
1c0088f4:	968a                	add	a3,a3,sp
1c0088f6:	76578793          	addi	a5,a5,1893 # 9675a765 <__l2_shared_end+0x7a74a765>
1c0088fa:	c29c                	sw	a5,0(a3)
1c0088fc:	87c70693          	addi	a3,a4,-1924
1c008900:	6cf927b7          	lui	a5,0x6cf92
1c008904:	968a                	add	a3,a3,sp
1c008906:	7b978793          	addi	a5,a5,1977 # 6cf927b9 <__l2_shared_end+0x50f827b9>
1c00890a:	c29c                	sw	a5,0(a3)
1c00890c:	88070693          	addi	a3,a4,-1920
1c008910:	6772c7b7          	lui	a5,0x6772c
1c008914:	968a                	add	a3,a3,sp
1c008916:	cbd78793          	addi	a5,a5,-835 # 6772bcbd <__l2_shared_end+0x4b71bcbd>
1c00891a:	c29c                	sw	a5,0(a3)
1c00891c:	88470693          	addi	a3,a4,-1916
1c008920:	ac32a7b7          	lui	a5,0xac32a
1c008924:	968a                	add	a3,a3,sp
1c008926:	eac78793          	addi	a5,a5,-340 # ac329eac <__l2_shared_end+0x90319eac>
1c00892a:	c29c                	sw	a5,0(a3)
1c00892c:	88870693          	addi	a3,a4,-1912
1c008930:	4c6c77b7          	lui	a5,0x4c6c7
1c008934:	968a                	add	a3,a3,sp
1c008936:	f3978793          	addi	a5,a5,-199 # 4c6c6f39 <__l2_shared_end+0x306b6f39>
1c00893a:	c29c                	sw	a5,0(a3)
1c00893c:	88c70693          	addi	a3,a4,-1908
1c008940:	0aaa47b7          	lui	a5,0xaaa4
1c008944:	968a                	add	a3,a3,sp
1c008946:	9e778793          	addi	a5,a5,-1561 # aaa39e7 <__CTOR_LIST__-0x1155c61d>
1c00894a:	c29c                	sw	a5,0(a3)
1c00894c:	89070693          	addi	a3,a4,-1904
1c008950:	accc17b7          	lui	a5,0xaccc1
1c008954:	968a                	add	a3,a3,sp
1c008956:	fa678793          	addi	a5,a5,-90 # accc0fa6 <__l2_shared_end+0x90cb0fa6>
1c00895a:	c29c                	sw	a5,0(a3)
1c00895c:	89470693          	addi	a3,a4,-1900
1c008960:	b1da97b7          	lui	a5,0xb1da9
1c008964:	968a                	add	a3,a3,sp
1c008966:	e1778793          	addi	a5,a5,-489 # b1da8e17 <__l2_shared_end+0x95d98e17>
1c00896a:	c29c                	sw	a5,0(a3)
1c00896c:	89870693          	addi	a3,a4,-1896
1c008970:	fe8847b7          	lui	a5,0xfe884
1c008974:	968a                	add	a3,a3,sp
1c008976:	6e078793          	addi	a5,a5,1760 # fe8846e0 <__l2_shared_end+0xe28746e0>
1c00897a:	c29c                	sw	a5,0(a3)
1c00897c:	89c70693          	addi	a3,a4,-1892
1c008980:	0142a7b7          	lui	a5,0x142a
1c008984:	968a                	add	a3,a3,sp
1c008986:	77178793          	addi	a5,a5,1905 # 142a771 <__CTOR_LIST__-0x1abd5893>
1c00898a:	c29c                	sw	a5,0(a3)
1c00898c:	8a070693          	addi	a3,a4,-1888
1c008990:	4bc6a7b7          	lui	a5,0x4bc6a
1c008994:	968a                	add	a3,a3,sp
1c008996:	ba978793          	addi	a5,a5,-1111 # 4bc69ba9 <__l2_shared_end+0x2fc59ba9>
1c00899a:	c29c                	sw	a5,0(a3)
1c00899c:	8a470693          	addi	a3,a4,-1884
1c0089a0:	89cc07b7          	lui	a5,0x89cc0
1c0089a4:	968a                	add	a3,a3,sp
1c0089a6:	85578793          	addi	a5,a5,-1963 # 89cbf855 <__l2_shared_end+0x6dcaf855>
1c0089aa:	c29c                	sw	a5,0(a3)
1c0089ac:	8a870693          	addi	a3,a4,-1880
1c0089b0:	e54517b7          	lui	a5,0xe5451
1c0089b4:	968a                	add	a3,a3,sp
1c0089b6:	5e178793          	addi	a5,a5,1505 # e54515e1 <__l2_shared_end+0xc94415e1>
1c0089ba:	c29c                	sw	a5,0(a3)
1c0089bc:	8ac70693          	addi	a3,a4,-1876
1c0089c0:	86f467b7          	lui	a5,0x86f46
1c0089c4:	968a                	add	a3,a3,sp
1c0089c6:	a2778793          	addi	a5,a5,-1497 # 86f45a27 <__l2_shared_end+0x6af35a27>
1c0089ca:	c29c                	sw	a5,0(a3)
1c0089cc:	8b070693          	addi	a3,a4,-1872
1c0089d0:	7566f7b7          	lui	a5,0x7566f
1c0089d4:	968a                	add	a3,a3,sp
1c0089d6:	c2678793          	addi	a5,a5,-986 # 7566ec26 <__l2_shared_end+0x5965ec26>
1c0089da:	c29c                	sw	a5,0(a3)
1c0089dc:	8b470693          	addi	a3,a4,-1868
1c0089e0:	7c8ac7b7          	lui	a5,0x7c8ac
1c0089e4:	968a                	add	a3,a3,sp
1c0089e6:	a2078793          	addi	a5,a5,-1504 # 7c8aba20 <__l2_shared_end+0x6089ba20>
1c0089ea:	c29c                	sw	a5,0(a3)
1c0089ec:	8b870693          	addi	a3,a4,-1864
1c0089f0:	7e30c7b7          	lui	a5,0x7e30c
1c0089f4:	968a                	add	a3,a3,sp
1c0089f6:	28878793          	addi	a5,a5,648 # 7e30c288 <__l2_shared_end+0x622fc288>
1c0089fa:	c29c                	sw	a5,0(a3)
1c0089fc:	8bc70693          	addi	a3,a4,-1860
1c008a00:	ef5537b7          	lui	a5,0xef553
1c008a04:	968a                	add	a3,a3,sp
1c008a06:	47978793          	addi	a5,a5,1145 # ef553479 <__l2_shared_end+0xd3543479>
1c008a0a:	c29c                	sw	a5,0(a3)
1c008a0c:	8c070693          	addi	a3,a4,-1856
1c008a10:	e1fa87b7          	lui	a5,0xe1fa8
1c008a14:	968a                	add	a3,a3,sp
1c008a16:	08778793          	addi	a5,a5,135 # e1fa8087 <__l2_shared_end+0xc5f98087>
1c008a1a:	c29c                	sw	a5,0(a3)
1c008a1c:	8c470693          	addi	a3,a4,-1852
1c008a20:	59ea17b7          	lui	a5,0x59ea1
1c008a24:	968a                	add	a3,a3,sp
1c008a26:	26478793          	addi	a5,a5,612 # 59ea1264 <__l2_shared_end+0x3de91264>
1c008a2a:	c29c                	sw	a5,0(a3)
1c008a2c:	8c870693          	addi	a3,a4,-1848
1c008a30:	f50627b7          	lui	a5,0xf5062
1c008a34:	968a                	add	a3,a3,sp
1c008a36:	4e978793          	addi	a5,a5,1257 # f50624e9 <__l2_shared_end+0xd90524e9>
1c008a3a:	c29c                	sw	a5,0(a3)
1c008a3c:	8cc70693          	addi	a3,a4,-1844
1c008a40:	c22d97b7          	lui	a5,0xc22d9
1c008a44:	968a                	add	a3,a3,sp
1c008a46:	09578793          	addi	a5,a5,149 # c22d9095 <__l2_shared_end+0xa62c9095>
1c008a4a:	c29c                	sw	a5,0(a3)
1c008a4c:	8d070693          	addi	a3,a4,-1840
1c008a50:	142b67b7          	lui	a5,0x142b6
1c008a54:	968a                	add	a3,a3,sp
1c008a56:	11c78793          	addi	a5,a5,284 # 142b611c <__CTOR_LIST__-0x7d49ee8>
1c008a5a:	c29c                	sw	a5,0(a3)
1c008a5c:	8d470693          	addi	a3,a4,-1836
1c008a60:	31cf07b7          	lui	a5,0x31cf0
1c008a64:	968a                	add	a3,a3,sp
1c008a66:	12878793          	addi	a5,a5,296 # 31cf0128 <__l2_shared_end+0x15ce0128>
1c008a6a:	c29c                	sw	a5,0(a3)
1c008a6c:	8d870693          	addi	a3,a4,-1832
1c008a70:	5c47c7b7          	lui	a5,0x5c47c
1c008a74:	968a                	add	a3,a3,sp
1c008a76:	0ab78793          	addi	a5,a5,171 # 5c47c0ab <__l2_shared_end+0x4046c0ab>
1c008a7a:	c29c                	sw	a5,0(a3)
1c008a7c:	8dc70693          	addi	a3,a4,-1828
1c008a80:	2d77e7b7          	lui	a5,0x2d77e
1c008a84:	968a                	add	a3,a3,sp
1c008a86:	e7b78793          	addi	a5,a5,-389 # 2d77de7b <__l2_shared_end+0x1176de7b>
1c008a8a:	c29c                	sw	a5,0(a3)
1c008a8c:	8e070693          	addi	a3,a4,-1824
1c008a90:	2d5ac7b7          	lui	a5,0x2d5ac
1c008a94:	968a                	add	a3,a3,sp
1c008a96:	55178793          	addi	a5,a5,1361 # 2d5ac551 <__l2_shared_end+0x1159c551>
1c008a9a:	c29c                	sw	a5,0(a3)
1c008a9c:	8e470693          	addi	a3,a4,-1820
1c008aa0:	c51b67b7          	lui	a5,0xc51b6
1c008aa4:	968a                	add	a3,a3,sp
1c008aa6:	5fc78793          	addi	a5,a5,1532 # c51b65fc <__l2_shared_end+0xa91a65fc>
1c008aaa:	c29c                	sw	a5,0(a3)
1c008aac:	8e870693          	addi	a3,a4,-1816
1c008ab0:	024347b7          	lui	a5,0x2434
1c008ab4:	968a                	add	a3,a3,sp
1c008ab6:	1ab78793          	addi	a5,a5,427 # 24341ab <__CTOR_LIST__-0x19bcbe59>
1c008aba:	c29c                	sw	a5,0(a3)
1c008abc:	8ec70693          	addi	a3,a4,-1812
1c008ac0:	4ccc17b7          	lui	a5,0x4ccc1
1c008ac4:	968a                	add	a3,a3,sp
1c008ac6:	32878793          	addi	a5,a5,808 # 4ccc1328 <__l2_shared_end+0x30cb1328>
1c008aca:	c29c                	sw	a5,0(a3)
1c008acc:	8f070693          	addi	a3,a4,-1808
1c008ad0:	2cf5c7b7          	lui	a5,0x2cf5c
1c008ad4:	968a                	add	a3,a3,sp
1c008ad6:	68c78793          	addi	a5,a5,1676 # 2cf5c68c <__l2_shared_end+0x10f4c68c>
1c008ada:	c29c                	sw	a5,0(a3)
1c008adc:	8f470693          	addi	a3,a4,-1804
1c008ae0:	cde327b7          	lui	a5,0xcde32
1c008ae4:	968a                	add	a3,a3,sp
1c008ae6:	78d78793          	addi	a5,a5,1933 # cde3278d <__l2_shared_end+0xb1e2278d>
1c008aea:	c29c                	sw	a5,0(a3)
1c008aec:	8f870693          	addi	a3,a4,-1800
1c008af0:	9a8457b7          	lui	a5,0x9a845
1c008af4:	968a                	add	a3,a3,sp
1c008af6:	17878793          	addi	a5,a5,376 # 9a845178 <__l2_shared_end+0x7e835178>
1c008afa:	c29c                	sw	a5,0(a3)
1c008afc:	8fc70693          	addi	a3,a4,-1796
1c008b00:	f04347b7          	lui	a5,0xf0434
1c008b04:	968a                	add	a3,a3,sp
1c008b06:	38c78793          	addi	a5,a5,908 # f043438c <__l2_shared_end+0xd442438c>
1c008b0a:	c29c                	sw	a5,0(a3)
1c008b0c:	90070693          	addi	a3,a4,-1792
1c008b10:	6c6cf7b7          	lui	a5,0x6c6cf
1c008b14:	968a                	add	a3,a3,sp
1c008b16:	dc778793          	addi	a5,a5,-569 # 6c6cedc7 <__l2_shared_end+0x506bedc7>
1c008b1a:	c29c                	sw	a5,0(a3)
1c008b1c:	90470693          	addi	a3,a4,-1788
1c008b20:	c565f7b7          	lui	a5,0xc565f
1c008b24:	968a                	add	a3,a3,sp
1c008b26:	7b978793          	addi	a5,a5,1977 # c565f7b9 <__l2_shared_end+0xa964f7b9>
1c008b2a:	c29c                	sw	a5,0(a3)
1c008b2c:	90870693          	addi	a3,a4,-1784
1c008b30:	bc5587b7          	lui	a5,0xbc558
1c008b34:	968a                	add	a3,a3,sp
1c008b36:	e0478793          	addi	a5,a5,-508 # bc557e04 <__l2_shared_end+0xa0547e04>
1c008b3a:	c29c                	sw	a5,0(a3)
1c008b3c:	90c70693          	addi	a3,a4,-1780
1c008b40:	b9d5b7b7          	lui	a5,0xb9d5b
1c008b44:	968a                	add	a3,a3,sp
1c008b46:	a4878793          	addi	a5,a5,-1464 # b9d5aa48 <__l2_shared_end+0x9dd4aa48>
1c008b4a:	c29c                	sw	a5,0(a3)
1c008b4c:	91070693          	addi	a3,a4,-1776
1c008b50:	878217b7          	lui	a5,0x87821
1c008b54:	968a                	add	a3,a3,sp
1c008b56:	23278793          	addi	a5,a5,562 # 87821232 <__l2_shared_end+0x6b811232>
1c008b5a:	c29c                	sw	a5,0(a3)
1c008b5c:	91470693          	addi	a3,a4,-1772
1c008b60:	db3917b7          	lui	a5,0xdb391
1c008b64:	968a                	add	a3,a3,sp
1c008b66:	9f778793          	addi	a5,a5,-1545 # db3909f7 <__l2_shared_end+0xbf3809f7>
1c008b6a:	c29c                	sw	a5,0(a3)
1c008b6c:	91870693          	addi	a3,a4,-1768
1c008b70:	c06147b7          	lui	a5,0xc0614
1c008b74:	968a                	add	a3,a3,sp
1c008b76:	a7578793          	addi	a5,a5,-1419 # c0613a75 <__l2_shared_end+0xa4603a75>
1c008b7a:	c29c                	sw	a5,0(a3)
1c008b7c:	91c70693          	addi	a3,a4,-1764
1c008b80:	3018e7b7          	lui	a5,0x3018e
1c008b84:	968a                	add	a3,a3,sp
1c008b86:	bd778793          	addi	a5,a5,-1065 # 3018dbd7 <__l2_shared_end+0x1417dbd7>
1c008b8a:	c29c                	sw	a5,0(a3)
1c008b8c:	92070693          	addi	a3,a4,-1760
1c008b90:	8c2857b7          	lui	a5,0x8c285
1c008b94:	968a                	add	a3,a3,sp
1c008b96:	6c278793          	addi	a5,a5,1730 # 8c2856c2 <__l2_shared_end+0x702756c2>
1c008b9a:	c29c                	sw	a5,0(a3)
1c008b9c:	92470693          	addi	a3,a4,-1756
1c008ba0:	9bcc87b7          	lui	a5,0x9bcc8
1c008ba4:	968a                	add	a3,a3,sp
1c008ba6:	51c78793          	addi	a5,a5,1308 # 9bcc851c <__l2_shared_end+0x7fcb851c>
1c008baa:	c29c                	sw	a5,0(a3)
1c008bac:	92870693          	addi	a3,a4,-1752
1c008bb0:	77f9                	lui	a5,0xffffe
1c008bb2:	968a                	add	a3,a3,sp
1c008bb4:	5bc78793          	addi	a5,a5,1468 # ffffe5bc <__l2_shared_end+0xe3fee5bc>
1c008bb8:	00f69023          	sh	a5,0(a3)
1c008bbc:	92a70693          	addi	a3,a4,-1750
1c008bc0:	968a                	add	a3,a3,sp
1c008bc2:	f8300793          	li	a5,-125
1c008bc6:	00f68023          	sb	a5,0(a3)
1c008bca:	92b70693          	addi	a3,a4,-1749
1c008bce:	968a                	add	a3,a3,sp
1c008bd0:	06600793          	li	a5,102
1c008bd4:	00f68023          	sb	a5,0(a3)
1c008bd8:	92c70693          	addi	a3,a4,-1748
1c008bdc:	c828c7b7          	lui	a5,0xc828c
1c008be0:	968a                	add	a3,a3,sp
1c008be2:	5da78793          	addi	a5,a5,1498 # c828c5da <__l2_shared_end+0xac27c5da>
1c008be6:	c29c                	sw	a5,0(a3)
1c008be8:	93070693          	addi	a3,a4,-1744
1c008bec:	691bd7b7          	lui	a5,0x691bd
1c008bf0:	968a                	add	a3,a3,sp
1c008bf2:	69378793          	addi	a5,a5,1683 # 691bd693 <__l2_shared_end+0x4d1ad693>
1c008bf6:	c29c                	sw	a5,0(a3)
1c008bf8:	93470693          	addi	a3,a4,-1740
1c008bfc:	82cb17b7          	lui	a5,0x82cb1
1c008c00:	968a                	add	a3,a3,sp
1c008c02:	b8578793          	addi	a5,a5,-1147 # 82cb0b85 <__l2_shared_end+0x66ca0b85>
1c008c06:	c29c                	sw	a5,0(a3)
1c008c08:	93870693          	addi	a3,a4,-1736
1c008c0c:	698397b7          	lui	a5,0x69839
1c008c10:	968a                	add	a3,a3,sp
1c008c12:	e7578793          	addi	a5,a5,-395 # 69838e75 <__l2_shared_end+0x4d828e75>
1c008c16:	c29c                	sw	a5,0(a3)
1c008c18:	93c70693          	addi	a3,a4,-1732
1c008c1c:	16f8e7b7          	lui	a5,0x16f8e
1c008c20:	968a                	add	a3,a3,sp
1c008c22:	13678793          	addi	a5,a5,310 # 16f8e136 <__CTOR_LIST__-0x5071ece>
1c008c26:	c29c                	sw	a5,0(a3)
1c008c28:	94070693          	addi	a3,a4,-1728
1c008c2c:	645867b7          	lui	a5,0x64586
1c008c30:	968a                	add	a3,a3,sp
1c008c32:	13878793          	addi	a5,a5,312 # 64586138 <__l2_shared_end+0x48576138>
1c008c36:	c29c                	sw	a5,0(a3)
1c008c38:	94470693          	addi	a3,a4,-1724
1c008c3c:	5bd3d7b7          	lui	a5,0x5bd3d
1c008c40:	968a                	add	a3,a3,sp
1c008c42:	a8278793          	addi	a5,a5,-1406 # 5bd3ca82 <__l2_shared_end+0x3fd2ca82>
1c008c46:	c29c                	sw	a5,0(a3)
1c008c48:	94870693          	addi	a3,a4,-1720
1c008c4c:	7f43b7b7          	lui	a5,0x7f43b
1c008c50:	968a                	add	a3,a3,sp
1c008c52:	14d78793          	addi	a5,a5,333 # 7f43b14d <__l2_shared_end+0x6342b14d>
1c008c56:	c29c                	sw	a5,0(a3)
1c008c58:	94c70693          	addi	a3,a4,-1716
1c008c5c:	b68077b7          	lui	a5,0xb6807
1c008c60:	968a                	add	a3,a3,sp
1c008c62:	9ad78793          	addi	a5,a5,-1619 # b68069ad <__l2_shared_end+0x9a7f69ad>
1c008c66:	c29c                	sw	a5,0(a3)
1c008c68:	95070693          	addi	a3,a4,-1712
1c008c6c:	65b187b7          	lui	a5,0x65b18
1c008c70:	968a                	add	a3,a3,sp
1c008c72:	06278793          	addi	a5,a5,98 # 65b18062 <__l2_shared_end+0x49b08062>
1c008c76:	c29c                	sw	a5,0(a3)
1c008c78:	95470693          	addi	a3,a4,-1708
1c008c7c:	24f577b7          	lui	a5,0x24f57
1c008c80:	968a                	add	a3,a3,sp
1c008c82:	22d78793          	addi	a5,a5,557 # 24f5722d <__l2_shared_end+0x8f4722d>
1c008c86:	c29c                	sw	a5,0(a3)
1c008c88:	95870693          	addi	a3,a4,-1704
1c008c8c:	5f01b7b7          	lui	a5,0x5f01b
1c008c90:	968a                	add	a3,a3,sp
1c008c92:	80778793          	addi	a5,a5,-2041 # 5f01a807 <__l2_shared_end+0x4300a807>
1c008c96:	c29c                	sw	a5,0(a3)
1c008c98:	95c70693          	addi	a3,a4,-1700
1c008c9c:	759ec7b7          	lui	a5,0x759ec
1c008ca0:	968a                	add	a3,a3,sp
1c008ca2:	28578793          	addi	a5,a5,645 # 759ec285 <__l2_shared_end+0x599dc285>
1c008ca6:	c29c                	sw	a5,0(a3)
1c008ca8:	96070693          	addi	a3,a4,-1696
1c008cac:	338917b7          	lui	a5,0x33891
1c008cb0:	968a                	add	a3,a3,sp
1c008cb2:	5b278793          	addi	a5,a5,1458 # 338915b2 <__l2_shared_end+0x178815b2>
1c008cb6:	c29c                	sw	a5,0(a3)
1c008cb8:	96470693          	addi	a3,a4,-1692
1c008cbc:	7d88f7b7          	lui	a5,0x7d88f
1c008cc0:	968a                	add	a3,a3,sp
1c008cc2:	5a478793          	addi	a5,a5,1444 # 7d88f5a4 <__l2_shared_end+0x6187f5a4>
1c008cc6:	c29c                	sw	a5,0(a3)
1c008cc8:	96870693          	addi	a3,a4,-1688
1c008ccc:	83b527b7          	lui	a5,0x83b52
1c008cd0:	968a                	add	a3,a3,sp
1c008cd2:	0b378793          	addi	a5,a5,179 # 83b520b3 <__l2_shared_end+0x67b420b3>
1c008cd6:	c29c                	sw	a5,0(a3)
1c008cd8:	96c70693          	addi	a3,a4,-1684
1c008cdc:	27cad7b7          	lui	a5,0x27cad
1c008ce0:	968a                	add	a3,a3,sp
1c008ce2:	bcd78793          	addi	a5,a5,-1075 # 27cacbcd <__l2_shared_end+0xbc9cbcd>
1c008ce6:	c29c                	sw	a5,0(a3)
1c008ce8:	97070693          	addi	a3,a4,-1680
1c008cec:	f821b7b7          	lui	a5,0xf821b
1c008cf0:	968a                	add	a3,a3,sp
1c008cf2:	c4e78793          	addi	a5,a5,-946 # f821ac4e <__l2_shared_end+0xdc20ac4e>
1c008cf6:	c29c                	sw	a5,0(a3)
1c008cf8:	97470693          	addi	a3,a4,-1676
1c008cfc:	b87937b7          	lui	a5,0xb8793
1c008d00:	968a                	add	a3,a3,sp
1c008d02:	87078793          	addi	a5,a5,-1936 # b8792870 <__l2_shared_end+0x9c782870>
1c008d06:	c29c                	sw	a5,0(a3)
1c008d08:	97870693          	addi	a3,a4,-1672
1c008d0c:	62fb57b7          	lui	a5,0x62fb5
1c008d10:	968a                	add	a3,a3,sp
1c008d12:	abc78793          	addi	a5,a5,-1348 # 62fb4abc <__l2_shared_end+0x46fa4abc>
1c008d16:	c29c                	sw	a5,0(a3)
1c008d18:	97c70693          	addi	a3,a4,-1668
1c008d1c:	146d07b7          	lui	a5,0x146d0
1c008d20:	968a                	add	a3,a3,sp
1c008d22:	5ba78793          	addi	a5,a5,1466 # 146d05ba <__CTOR_LIST__-0x792fa4a>
1c008d26:	c29c                	sw	a5,0(a3)
1c008d28:	98070693          	addi	a3,a4,-1664
1c008d2c:	159217b7          	lui	a5,0x15921
1c008d30:	968a                	add	a3,a3,sp
1c008d32:	26578793          	addi	a5,a5,613 # 15921265 <__CTOR_LIST__-0x66ded9f>
1c008d36:	c29c                	sw	a5,0(a3)
1c008d38:	98470693          	addi	a3,a4,-1660
1c008d3c:	4665c7b7          	lui	a5,0x4665c
1c008d40:	968a                	add	a3,a3,sp
1c008d42:	75478793          	addi	a5,a5,1876 # 4665c754 <__l2_shared_end+0x2a64c754>
1c008d46:	c29c                	sw	a5,0(a3)
1c008d48:	98870693          	addi	a3,a4,-1656
1c008d4c:	bd9657b7          	lui	a5,0xbd965
1c008d50:	968a                	add	a3,a3,sp
1c008d52:	c4d78793          	addi	a5,a5,-947 # bd964c4d <__l2_shared_end+0xa1954c4d>
1c008d56:	c29c                	sw	a5,0(a3)
1c008d58:	98c70693          	addi	a3,a4,-1652
1c008d5c:	2097a7b7          	lui	a5,0x2097a
1c008d60:	968a                	add	a3,a3,sp
1c008d62:	a3c78793          	addi	a5,a5,-1476 # 20979a3c <__l2_shared_end+0x4969a3c>
1c008d66:	c29c                	sw	a5,0(a3)
1c008d68:	99070693          	addi	a3,a4,-1648
1c008d6c:	393387b7          	lui	a5,0x39338
1c008d70:	968a                	add	a3,a3,sp
1c008d72:	c1878793          	addi	a5,a5,-1000 # 39337c18 <__l2_shared_end+0x1d327c18>
1c008d76:	c29c                	sw	a5,0(a3)
1c008d78:	99470693          	addi	a3,a4,-1644
1c008d7c:	c43b67b7          	lui	a5,0xc43b6
1c008d80:	968a                	add	a3,a3,sp
1c008d82:	9d078793          	addi	a5,a5,-1584 # c43b59d0 <__l2_shared_end+0xa83a59d0>
1c008d86:	c29c                	sw	a5,0(a3)
1c008d88:	99870693          	addi	a3,a4,-1640
1c008d8c:	5591a7b7          	lui	a5,0x5591a
1c008d90:	968a                	add	a3,a3,sp
1c008d92:	5bb78793          	addi	a5,a5,1467 # 5591a5bb <__l2_shared_end+0x3990a5bb>
1c008d96:	c29c                	sw	a5,0(a3)
1c008d98:	99c70693          	addi	a3,a4,-1636
1c008d9c:	b8f6a7b7          	lui	a5,0xb8f6a
1c008da0:	968a                	add	a3,a3,sp
1c008da2:	f4678793          	addi	a5,a5,-186 # b8f69f46 <__l2_shared_end+0x9cf59f46>
1c008da6:	c29c                	sw	a5,0(a3)
1c008da8:	9a070693          	addi	a3,a4,-1632
1c008dac:	c55f97b7          	lui	a5,0xc55f9
1c008db0:	968a                	add	a3,a3,sp
1c008db2:	a6878793          	addi	a5,a5,-1432 # c55f8a68 <__l2_shared_end+0xa95e8a68>
1c008db6:	c29c                	sw	a5,0(a3)
1c008db8:	9a470693          	addi	a3,a4,-1628
1c008dbc:	d44677b7          	lui	a5,0xd4467
1c008dc0:	968a                	add	a3,a3,sp
1c008dc2:	bfa78793          	addi	a5,a5,-1030 # d4466bfa <__l2_shared_end+0xb8456bfa>
1c008dc6:	c29c                	sw	a5,0(a3)
1c008dc8:	9a870693          	addi	a3,a4,-1624
1c008dcc:	bd6807b7          	lui	a5,0xbd680
1c008dd0:	968a                	add	a3,a3,sp
1c008dd2:	60778793          	addi	a5,a5,1543 # bd680607 <__l2_shared_end+0xa1670607>
1c008dd6:	c29c                	sw	a5,0(a3)
1c008dd8:	9ac70693          	addi	a3,a4,-1620
1c008ddc:	795f97b7          	lui	a5,0x795f9
1c008de0:	968a                	add	a3,a3,sp
1c008de2:	c1678793          	addi	a5,a5,-1002 # 795f8c16 <__l2_shared_end+0x5d5e8c16>
1c008de6:	c29c                	sw	a5,0(a3)
1c008de8:	9b070693          	addi	a3,a4,-1616
1c008dec:	097697b7          	lui	a5,0x9769
1c008df0:	968a                	add	a3,a3,sp
1c008df2:	26478793          	addi	a5,a5,612 # 9769264 <__CTOR_LIST__-0x12896da0>
1c008df6:	c29c                	sw	a5,0(a3)
1c008df8:	9b470693          	addi	a3,a4,-1612
1c008dfc:	2799a7b7          	lui	a5,0x2799a
1c008e00:	968a                	add	a3,a3,sp
1c008e02:	94078793          	addi	a5,a5,-1728 # 27999940 <__l2_shared_end+0xb989940>
1c008e06:	c29c                	sw	a5,0(a3)
1c008e08:	9b870693          	addi	a3,a4,-1608
1c008e0c:	b23687b7          	lui	a5,0xb2368
1c008e10:	968a                	add	a3,a3,sp
1c008e12:	26278793          	addi	a5,a5,610 # b2368262 <__l2_shared_end+0x96358262>
1c008e16:	c29c                	sw	a5,0(a3)
1c008e18:	9bc70693          	addi	a3,a4,-1604
1c008e1c:	436837b7          	lui	a5,0x43683
1c008e20:	968a                	add	a3,a3,sp
1c008e22:	94178793          	addi	a5,a5,-1727 # 43682941 <__l2_shared_end+0x27672941>
1c008e26:	c29c                	sw	a5,0(a3)
1c008e28:	9c070693          	addi	a3,a4,-1600
1c008e2c:	2abc37b7          	lui	a5,0x2abc3
1c008e30:	968a                	add	a3,a3,sp
1c008e32:	c8d78793          	addi	a5,a5,-883 # 2abc2c8d <__l2_shared_end+0xebb2c8d>
1c008e36:	c29c                	sw	a5,0(a3)
1c008e38:	9c470693          	addi	a3,a4,-1596
1c008e3c:	09bc97b7          	lui	a5,0x9bc9
1c008e40:	968a                	add	a3,a3,sp
1c008e42:	a9778793          	addi	a5,a5,-1385 # 9bc8a97 <__CTOR_LIST__-0x1243756d>
1c008e46:	c29c                	sw	a5,0(a3)
1c008e48:	9c870693          	addi	a3,a4,-1592
1c008e4c:	1b2927b7          	lui	a5,0x1b292
1c008e50:	968a                	add	a3,a3,sp
1c008e52:	07378793          	addi	a5,a5,115 # 1b292073 <__CTOR_LIST__-0xd6df91>
1c008e56:	c29c                	sw	a5,0(a3)
1c008e58:	9cc70693          	addi	a3,a4,-1588
1c008e5c:	63e4d7b7          	lui	a5,0x63e4d
1c008e60:	968a                	add	a3,a3,sp
1c008e62:	70e78793          	addi	a5,a5,1806 # 63e4d70e <__l2_shared_end+0x47e3d70e>
1c008e66:	c29c                	sw	a5,0(a3)
1c008e68:	9d070693          	addi	a3,a4,-1584
1c008e6c:	e2bbd7b7          	lui	a5,0xe2bbd
1c008e70:	968a                	add	a3,a3,sp
1c008e72:	91e78793          	addi	a5,a5,-1762 # e2bbc91e <__l2_shared_end+0xc6bac91e>
1c008e76:	c29c                	sw	a5,0(a3)
1c008e78:	9d470693          	addi	a3,a4,-1580
1c008e7c:	b63ac7b7          	lui	a5,0xb63ac
1c008e80:	968a                	add	a3,a3,sp
1c008e82:	68a78793          	addi	a5,a5,1674 # b63ac68a <__l2_shared_end+0x9a39c68a>
1c008e86:	c29c                	sw	a5,0(a3)
1c008e88:	9d870693          	addi	a3,a4,-1576
1c008e8c:	6a9717b7          	lui	a5,0x6a971
1c008e90:	968a                	add	a3,a3,sp
1c008e92:	e8678793          	addi	a5,a5,-378 # 6a970e86 <__l2_shared_end+0x4e960e86>
1c008e96:	c29c                	sw	a5,0(a3)
1c008e98:	9dc70693          	addi	a3,a4,-1572
1c008e9c:	fc2a57b7          	lui	a5,0xfc2a5
1c008ea0:	968a                	add	a3,a3,sp
1c008ea2:	5c178793          	addi	a5,a5,1473 # fc2a55c1 <__l2_shared_end+0xe02955c1>
1c008ea6:	c29c                	sw	a5,0(a3)
1c008ea8:	9e070693          	addi	a3,a4,-1568
1c008eac:	697d97b7          	lui	a5,0x697d9
1c008eb0:	968a                	add	a3,a3,sp
1c008eb2:	94378793          	addi	a5,a5,-1725 # 697d8943 <__l2_shared_end+0x4d7c8943>
1c008eb6:	c29c                	sw	a5,0(a3)
1c008eb8:	9e470693          	addi	a3,a4,-1564
1c008ebc:	4392a7b7          	lui	a5,0x4392a
1c008ec0:	968a                	add	a3,a3,sp
1c008ec2:	03778793          	addi	a5,a5,55 # 4392a037 <__l2_shared_end+0x2791a037>
1c008ec6:	c29c                	sw	a5,0(a3)
1c008ec8:	9e870693          	addi	a3,a4,-1560
1c008ecc:	a981c7b7          	lui	a5,0xa981c
1c008ed0:	968a                	add	a3,a3,sp
1c008ed2:	42d78793          	addi	a5,a5,1069 # a981c42d <__l2_shared_end+0x8d80c42d>
1c008ed6:	c29c                	sw	a5,0(a3)
1c008ed8:	9ec70693          	addi	a3,a4,-1556
1c008edc:	27a1c7b7          	lui	a5,0x27a1c
1c008ee0:	968a                	add	a3,a3,sp
1c008ee2:	31478793          	addi	a5,a5,788 # 27a1c314 <__l2_shared_end+0xba0c314>
1c008ee6:	c29c                	sw	a5,0(a3)
1c008ee8:	9f070693          	addi	a3,a4,-1552
1c008eec:	9e0047b7          	lui	a5,0x9e004
1c008ef0:	968a                	add	a3,a3,sp
1c008ef2:	33c78793          	addi	a5,a5,828 # 9e00433c <__l2_shared_end+0x81ff433c>
1c008ef6:	c29c                	sw	a5,0(a3)
1c008ef8:	9f470693          	addi	a3,a4,-1548
1c008efc:	cb23c7b7          	lui	a5,0xcb23c
1c008f00:	968a                	add	a3,a3,sp
1c008f02:	58e78793          	addi	a5,a5,1422 # cb23c58e <__l2_shared_end+0xaf22c58e>
1c008f06:	c29c                	sw	a5,0(a3)
1c008f08:	9f870693          	addi	a3,a4,-1544
1c008f0c:	89d9d7b7          	lui	a5,0x89d9d
1c008f10:	968a                	add	a3,a3,sp
1c008f12:	e9378793          	addi	a5,a5,-365 # 89d9ce93 <__l2_shared_end+0x6dd8ce93>
1c008f16:	c29c                	sw	a5,0(a3)
1c008f18:	9fc70693          	addi	a3,a4,-1540
1c008f1c:	539097b7          	lui	a5,0x53909
1c008f20:	968a                	add	a3,a3,sp
1c008f22:	08f78793          	addi	a5,a5,143 # 5390908f <__l2_shared_end+0x378f908f>
1c008f26:	c29c                	sw	a5,0(a3)
1c008f28:	a0070693          	addi	a3,a4,-1536
1c008f2c:	016ec7b7          	lui	a5,0x16ec
1c008f30:	968a                	add	a3,a3,sp
1c008f32:	a4078793          	addi	a5,a5,-1472 # 16eba40 <__CTOR_LIST__-0x1a9145c4>
1c008f36:	c29c                	sw	a5,0(a3)
1c008f38:	a0470693          	addi	a3,a4,-1532
1c008f3c:	032d57b7          	lui	a5,0x32d5
1c008f40:	968a                	add	a3,a3,sp
1c008f42:	7bc78793          	addi	a5,a5,1980 # 32d57bc <__CTOR_LIST__-0x18d2a848>
1c008f46:	c29c                	sw	a5,0(a3)
1c008f48:	a0870693          	addi	a3,a4,-1528
1c008f4c:	21fa97b7          	lui	a5,0x21fa9
1c008f50:	968a                	add	a3,a3,sp
1c008f52:	3a878793          	addi	a5,a5,936 # 21fa93a8 <__l2_shared_end+0x5f993a8>
1c008f56:	c29c                	sw	a5,0(a3)
1c008f58:	a0c70693          	addi	a3,a4,-1524
1c008f5c:	882d37b7          	lui	a5,0x882d3
1c008f60:	968a                	add	a3,a3,sp
1c008f62:	4c478793          	addi	a5,a5,1220 # 882d34c4 <__l2_shared_end+0x6c2c34c4>
1c008f66:	c29c                	sw	a5,0(a3)
1c008f68:	a1070693          	addi	a3,a4,-1520
1c008f6c:	b37747b7          	lui	a5,0xb3774
1c008f70:	968a                	add	a3,a3,sp
1c008f72:	edc78793          	addi	a5,a5,-292 # b3773edc <__l2_shared_end+0x97763edc>
1c008f76:	c29c                	sw	a5,0(a3)
1c008f78:	a1470693          	addi	a3,a4,-1516
1c008f7c:	63c027b7          	lui	a5,0x63c02
1c008f80:	968a                	add	a3,a3,sp
1c008f82:	f3b78793          	addi	a5,a5,-197 # 63c01f3b <__l2_shared_end+0x47bf1f3b>
1c008f86:	c29c                	sw	a5,0(a3)
1c008f88:	a1870693          	addi	a3,a4,-1512
1c008f8c:	9d68e7b7          	lui	a5,0x9d68e
1c008f90:	968a                	add	a3,a3,sp
1c008f92:	bdc78793          	addi	a5,a5,-1060 # 9d68dbdc <__l2_shared_end+0x8167dbdc>
1c008f96:	c29c                	sw	a5,0(a3)
1c008f98:	a1c70693          	addi	a3,a4,-1508
1c008f9c:	84fc57b7          	lui	a5,0x84fc5
1c008fa0:	968a                	add	a3,a3,sp
1c008fa2:	f8c78793          	addi	a5,a5,-116 # 84fc4f8c <__l2_shared_end+0x68fb4f8c>
1c008fa6:	c29c                	sw	a5,0(a3)
1c008fa8:	a2070693          	addi	a3,a4,-1504
1c008fac:	77fd                	lui	a5,0xfffff
1c008fae:	968a                	add	a3,a3,sp
1c008fb0:	80c78793          	addi	a5,a5,-2036 # ffffe80c <__l2_shared_end+0xe3fee80c>
1c008fb4:	00f69023          	sh	a5,0(a3)
1c008fb8:	a2270693          	addi	a3,a4,-1502
1c008fbc:	968a                	add	a3,a3,sp
1c008fbe:	07900793          	li	a5,121
1c008fc2:	00f68023          	sb	a5,0(a3)
1c008fc6:	a2370693          	addi	a3,a4,-1501
1c008fca:	968a                	add	a3,a3,sp
1c008fcc:	fcf00793          	li	a5,-49
1c008fd0:	00f68023          	sb	a5,0(a3)
1c008fd4:	a2470693          	addi	a3,a4,-1500
1c008fd8:	851347b7          	lui	a5,0x85134
1c008fdc:	968a                	add	a3,a3,sp
1c008fde:	7b378793          	addi	a5,a5,1971 # 851347b3 <__l2_shared_end+0x691247b3>
1c008fe2:	c29c                	sw	a5,0(a3)
1c008fe4:	a2870693          	addi	a3,a4,-1496
1c008fe8:	c7c737b7          	lui	a5,0xc7c73
1c008fec:	968a                	add	a3,a3,sp
1c008fee:	c5178793          	addi	a5,a5,-943 # c7c72c51 <__l2_shared_end+0xabc62c51>
1c008ff2:	c29c                	sw	a5,0(a3)
1c008ff4:	a2c70693          	addi	a3,a4,-1492
1c008ff8:	b18317b7          	lui	a5,0xb1831
1c008ffc:	968a                	add	a3,a3,sp
1c008ffe:	35978793          	addi	a5,a5,857 # b1831359 <__l2_shared_end+0x95821359>
1c009002:	c29c                	sw	a5,0(a3)
1c009004:	a3070693          	addi	a3,a4,-1488
1c009008:	3298d7b7          	lui	a5,0x3298d
1c00900c:	968a                	add	a3,a3,sp
1c00900e:	8fa78793          	addi	a5,a5,-1798 # 3298c8fa <__l2_shared_end+0x1697c8fa>
1c009012:	c29c                	sw	a5,0(a3)
1c009014:	a3470693          	addi	a3,a4,-1484
1c009018:	32b327b7          	lui	a5,0x32b32
1c00901c:	968a                	add	a3,a3,sp
1c00901e:	cbb78793          	addi	a5,a5,-837 # 32b31cbb <__l2_shared_end+0x16b21cbb>
1c009022:	c29c                	sw	a5,0(a3)
1c009024:	a3870693          	addi	a3,a4,-1480
1c009028:	682877b7          	lui	a5,0x68287
1c00902c:	968a                	add	a3,a3,sp
1c00902e:	d4e78793          	addi	a5,a5,-690 # 68286d4e <__l2_shared_end+0x4c276d4e>
1c009032:	c29c                	sw	a5,0(a3)
1c009034:	a3c70693          	addi	a3,a4,-1476
1c009038:	cb4497b7          	lui	a5,0xcb449
1c00903c:	968a                	add	a3,a3,sp
1c00903e:	89178793          	addi	a5,a5,-1903 # cb448891 <__l2_shared_end+0xaf438891>
1c009042:	c29c                	sw	a5,0(a3)
1c009044:	a4070693          	addi	a3,a4,-1472
1c009048:	f84dd7b7          	lui	a5,0xf84dd
1c00904c:	968a                	add	a3,a3,sp
1c00904e:	a2078793          	addi	a5,a5,-1504 # f84dca20 <__l2_shared_end+0xdc4cca20>
1c009052:	c29c                	sw	a5,0(a3)
1c009054:	a4470693          	addi	a3,a4,-1468
1c009058:	2428b7b7          	lui	a5,0x2428b
1c00905c:	968a                	add	a3,a3,sp
1c00905e:	41278793          	addi	a5,a5,1042 # 2428b412 <__l2_shared_end+0x827b412>
1c009062:	c29c                	sw	a5,0(a3)
1c009064:	a4870693          	addi	a3,a4,-1464
1c009068:	384337b7          	lui	a5,0x38433
1c00906c:	968a                	add	a3,a3,sp
1c00906e:	a1978793          	addi	a5,a5,-1511 # 38432a19 <__l2_shared_end+0x1c422a19>
1c009072:	c29c                	sw	a5,0(a3)
1c009074:	a4c70693          	addi	a3,a4,-1460
1c009078:	7aa337b7          	lui	a5,0x7aa33
1c00907c:	968a                	add	a3,a3,sp
1c00907e:	0791                	addi	a5,a5,4
1c009080:	c29c                	sw	a5,0(a3)
1c009082:	a5070693          	addi	a3,a4,-1456
1c009086:	1ec447b7          	lui	a5,0x1ec44
1c00908a:	968a                	add	a3,a3,sp
1c00908c:	a7f78793          	addi	a5,a5,-1409 # 1ec43a7f <__l2_shared_end+0x2c33a7f>
1c009090:	c29c                	sw	a5,0(a3)
1c009092:	a5470693          	addi	a3,a4,-1452
1c009096:	e0cf67b7          	lui	a5,0xe0cf6
1c00909a:	968a                	add	a3,a3,sp
1c00909c:	4d078793          	addi	a5,a5,1232 # e0cf64d0 <__l2_shared_end+0xc4ce64d0>
1c0090a0:	c29c                	sw	a5,0(a3)
1c0090a2:	a5870693          	addi	a3,a4,-1448
1c0090a6:	917b17b7          	lui	a5,0x917b1
1c0090aa:	968a                	add	a3,a3,sp
1c0090ac:	55578793          	addi	a5,a5,1365 # 917b1555 <__l2_shared_end+0x757a1555>
1c0090b0:	c29c                	sw	a5,0(a3)
1c0090b2:	a5c70693          	addi	a3,a4,-1444
1c0090b6:	8f10c7b7          	lui	a5,0x8f10c
1c0090ba:	968a                	add	a3,a3,sp
1c0090bc:	0b578793          	addi	a5,a5,181 # 8f10c0b5 <__l2_shared_end+0x730fc0b5>
1c0090c0:	c29c                	sw	a5,0(a3)
1c0090c2:	a6070693          	addi	a3,a4,-1440
1c0090c6:	a013a7b7          	lui	a5,0xa013a
1c0090ca:	968a                	add	a3,a3,sp
1c0090cc:	6b778793          	addi	a5,a5,1719 # a013a6b7 <__l2_shared_end+0x8412a6b7>
1c0090d0:	c29c                	sw	a5,0(a3)
1c0090d2:	a6470693          	addi	a3,a4,-1436
1c0090d6:	d6f437b7          	lui	a5,0xd6f43
1c0090da:	968a                	add	a3,a3,sp
1c0090dc:	a1178793          	addi	a5,a5,-1519 # d6f42a11 <__l2_shared_end+0xbaf32a11>
1c0090e0:	c29c                	sw	a5,0(a3)
1c0090e2:	a6870693          	addi	a3,a4,-1432
1c0090e6:	a3f857b7          	lui	a5,0xa3f85
1c0090ea:	968a                	add	a3,a3,sp
1c0090ec:	84e78793          	addi	a5,a5,-1970 # a3f8484e <__l2_shared_end+0x87f7484e>
1c0090f0:	c29c                	sw	a5,0(a3)
1c0090f2:	a6c70693          	addi	a3,a4,-1428
1c0090f6:	998a37b7          	lui	a5,0x998a3
1c0090fa:	968a                	add	a3,a3,sp
1c0090fc:	24578793          	addi	a5,a5,581 # 998a3245 <__l2_shared_end+0x7d893245>
1c009100:	c29c                	sw	a5,0(a3)
1c009102:	a7070693          	addi	a3,a4,-1424
1c009106:	910cc7b7          	lui	a5,0x910cc
1c00910a:	968a                	add	a3,a3,sp
1c00910c:	fb778793          	addi	a5,a5,-73 # 910cbfb7 <__l2_shared_end+0x750bbfb7>
1c009110:	c29c                	sw	a5,0(a3)
1c009112:	a7470693          	addi	a3,a4,-1420
1c009116:	157207b7          	lui	a5,0x15720
1c00911a:	968a                	add	a3,a3,sp
1c00911c:	3cb78793          	addi	a5,a5,971 # 157203cb <__CTOR_LIST__-0x68dfc39>
1c009120:	c29c                	sw	a5,0(a3)
1c009122:	a7870693          	addi	a3,a4,-1416
1c009126:	d47a17b7          	lui	a5,0xd47a1
1c00912a:	968a                	add	a3,a3,sp
1c00912c:	7b078793          	addi	a5,a5,1968 # d47a17b0 <__l2_shared_end+0xb87917b0>
1c009130:	c29c                	sw	a5,0(a3)
1c009132:	a7c70693          	addi	a3,a4,-1412
1c009136:	d7e667b7          	lui	a5,0xd7e66
1c00913a:	968a                	add	a3,a3,sp
1c00913c:	3c278793          	addi	a5,a5,962 # d7e663c2 <__l2_shared_end+0xbbe563c2>
1c009140:	c29c                	sw	a5,0(a3)
1c009142:	a8070693          	addi	a3,a4,-1408
1c009146:	c85867b7          	lui	a5,0xc8586
1c00914a:	968a                	add	a3,a3,sp
1c00914c:	98f78793          	addi	a5,a5,-1649 # c858598f <__l2_shared_end+0xac57598f>
1c009150:	c29c                	sw	a5,0(a3)
1c009152:	a8470693          	addi	a3,a4,-1404
1c009156:	4f8e17b7          	lui	a5,0x4f8e1
1c00915a:	968a                	add	a3,a3,sp
1c00915c:	54878793          	addi	a5,a5,1352 # 4f8e1548 <__l2_shared_end+0x338d1548>
1c009160:	c29c                	sw	a5,0(a3)
1c009162:	a8870693          	addi	a3,a4,-1400
1c009166:	247c17b7          	lui	a5,0x247c1
1c00916a:	968a                	add	a3,a3,sp
1c00916c:	1d278793          	addi	a5,a5,466 # 247c11d2 <__l2_shared_end+0x87b11d2>
1c009170:	c29c                	sw	a5,0(a3)
1c009172:	a8c70693          	addi	a3,a4,-1396
1c009176:	3cab17b7          	lui	a5,0x3cab1
1c00917a:	968a                	add	a3,a3,sp
1c00917c:	c8e78793          	addi	a5,a5,-882 # 3cab0c8e <__l2_shared_end+0x20aa0c8e>
1c009180:	c29c                	sw	a5,0(a3)
1c009182:	a9070693          	addi	a3,a4,-1392
1c009186:	271e97b7          	lui	a5,0x271e9
1c00918a:	968a                	add	a3,a3,sp
1c00918c:	cf978793          	addi	a5,a5,-775 # 271e8cf9 <__l2_shared_end+0xb1d8cf9>
1c009190:	c29c                	sw	a5,0(a3)
1c009192:	a9470693          	addi	a3,a4,-1388
1c009196:	f83897b7          	lui	a5,0xf8389
1c00919a:	968a                	add	a3,a3,sp
1c00919c:	88678793          	addi	a5,a5,-1914 # f8388886 <__l2_shared_end+0xdc378886>
1c0091a0:	c29c                	sw	a5,0(a3)
1c0091a2:	a9870693          	addi	a3,a4,-1384
1c0091a6:	56a097b7          	lui	a5,0x56a09
1c0091aa:	968a                	add	a3,a3,sp
1c0091ac:	b4278793          	addi	a5,a5,-1214 # 56a08b42 <__l2_shared_end+0x3a9f8b42>
1c0091b0:	c29c                	sw	a5,0(a3)
1c0091b2:	a9c70693          	addi	a3,a4,-1380
1c0091b6:	1eb6f7b7          	lui	a5,0x1eb6f
1c0091ba:	968a                	add	a3,a3,sp
1c0091bc:	62d78793          	addi	a5,a5,1581 # 1eb6f62d <__l2_shared_end+0x2b5f62d>
1c0091c0:	c29c                	sw	a5,0(a3)
1c0091c2:	aa070693          	addi	a3,a4,-1376
1c0091c6:	b8e237b7          	lui	a5,0xb8e23
1c0091ca:	968a                	add	a3,a3,sp
1c0091cc:	68778793          	addi	a5,a5,1671 # b8e23687 <__l2_shared_end+0x9ce13687>
1c0091d0:	c29c                	sw	a5,0(a3)
1c0091d2:	aa470693          	addi	a3,a4,-1372
1c0091d6:	796067b7          	lui	a5,0x79606
1c0091da:	968a                	add	a3,a3,sp
1c0091dc:	6b278793          	addi	a5,a5,1714 # 796066b2 <__l2_shared_end+0x5d5f66b2>
1c0091e0:	c29c                	sw	a5,0(a3)
1c0091e2:	aa870693          	addi	a3,a4,-1368
1c0091e6:	2ccee7b7          	lui	a5,0x2ccee
1c0091ea:	968a                	add	a3,a3,sp
1c0091ec:	07e1                	addi	a5,a5,24
1c0091ee:	c29c                	sw	a5,0(a3)
1c0091f0:	aac70693          	addi	a3,a4,-1364
1c0091f4:	c867b7b7          	lui	a5,0xc867b
1c0091f8:	968a                	add	a3,a3,sp
1c0091fa:	178d                	addi	a5,a5,-29
1c0091fc:	c29c                	sw	a5,0(a3)
1c0091fe:	ab070693          	addi	a3,a4,-1360
1c009202:	a4c2a7b7          	lui	a5,0xa4c2a
1c009206:	968a                	add	a3,a3,sp
1c009208:	51f78793          	addi	a5,a5,1311 # a4c2a51f <__l2_shared_end+0x88c1a51f>
1c00920c:	c29c                	sw	a5,0(a3)
1c00920e:	ab470693          	addi	a3,a4,-1356
1c009212:	878ec7b7          	lui	a5,0x878ec
1c009216:	968a                	add	a3,a3,sp
1c009218:	cd278793          	addi	a5,a5,-814 # 878ebcd2 <__l2_shared_end+0x6b8dbcd2>
1c00921c:	c29c                	sw	a5,0(a3)
1c00921e:	ab870693          	addi	a3,a4,-1352
1c009222:	02b727b7          	lui	a5,0x2b72
1c009226:	968a                	add	a3,a3,sp
1c009228:	51878793          	addi	a5,a5,1304 # 2b72518 <__CTOR_LIST__-0x1948daec>
1c00922c:	c29c                	sw	a5,0(a3)
1c00922e:	abc70693          	addi	a3,a4,-1348
1c009232:	39cac7b7          	lui	a5,0x39cac
1c009236:	968a                	add	a3,a3,sp
1c009238:	eb378793          	addi	a5,a5,-333 # 39cabeb3 <__l2_shared_end+0x1dc9beb3>
1c00923c:	c29c                	sw	a5,0(a3)
1c00923e:	ac070693          	addi	a3,a4,-1344
1c009242:	18a537b7          	lui	a5,0x18a53
1c009246:	968a                	add	a3,a3,sp
1c009248:	37b78793          	addi	a5,a5,891 # 18a5337b <__CTOR_LIST__-0x35acc89>
1c00924c:	c29c                	sw	a5,0(a3)
1c00924e:	ac470693          	addi	a3,a4,-1340
1c009252:	39b1d7b7          	lui	a5,0x39b1d
1c009256:	968a                	add	a3,a3,sp
1c009258:	8da78793          	addi	a5,a5,-1830 # 39b1c8da <__l2_shared_end+0x1db0c8da>
1c00925c:	c29c                	sw	a5,0(a3)
1c00925e:	ac870693          	addi	a3,a4,-1336
1c009262:	904a57b7          	lui	a5,0x904a5
1c009266:	968a                	add	a3,a3,sp
1c009268:	93d78793          	addi	a5,a5,-1731 # 904a493d <__l2_shared_end+0x7449493d>
1c00926c:	c29c                	sw	a5,0(a3)
1c00926e:	acc70693          	addi	a3,a4,-1332
1c009272:	b50117b7          	lui	a5,0xb5011
1c009276:	968a                	add	a3,a3,sp
1c009278:	c9078793          	addi	a5,a5,-880 # b5010c90 <__l2_shared_end+0x99000c90>
1c00927c:	c29c                	sw	a5,0(a3)
1c00927e:	ad070693          	addi	a3,a4,-1328
1c009282:	7c8527b7          	lui	a5,0x7c852
1c009286:	968a                	add	a3,a3,sp
1c009288:	55978793          	addi	a5,a5,1369 # 7c852559 <__l2_shared_end+0x60842559>
1c00928c:	c29c                	sw	a5,0(a3)
1c00928e:	ad470693          	addi	a3,a4,-1324
1c009292:	052787b7          	lui	a5,0x5278
1c009296:	968a                	add	a3,a3,sp
1c009298:	0bf78793          	addi	a5,a5,191 # 52780bf <__CTOR_LIST__-0x16d87f45>
1c00929c:	c29c                	sw	a5,0(a3)
1c00929e:	ad870693          	addi	a3,a4,-1320
1c0092a2:	f1a437b7          	lui	a5,0xf1a43
1c0092a6:	968a                	add	a3,a3,sp
1c0092a8:	61d78793          	addi	a5,a5,1565 # f1a4361d <__l2_shared_end+0xd5a3361d>
1c0092ac:	c29c                	sw	a5,0(a3)
1c0092ae:	adc70693          	addi	a3,a4,-1316
1c0092b2:	dcd2a7b7          	lui	a5,0xdcd2a
1c0092b6:	968a                	add	a3,a3,sp
1c0092b8:	44178793          	addi	a5,a5,1089 # dcd2a441 <__l2_shared_end+0xc0d1a441>
1c0092bc:	c29c                	sw	a5,0(a3)
1c0092be:	ae070693          	addi	a3,a4,-1312
1c0092c2:	304107b7          	lui	a5,0x30410
1c0092c6:	968a                	add	a3,a3,sp
1c0092c8:	34478793          	addi	a5,a5,836 # 30410344 <__l2_shared_end+0x14400344>
1c0092cc:	c29c                	sw	a5,0(a3)
1c0092ce:	ae470693          	addi	a3,a4,-1308
1c0092d2:	b53c07b7          	lui	a5,0xb53c0
1c0092d6:	968a                	add	a3,a3,sp
1c0092d8:	35e78793          	addi	a5,a5,862 # b53c035e <__l2_shared_end+0x993b035e>
1c0092dc:	c29c                	sw	a5,0(a3)
1c0092de:	ae870693          	addi	a3,a4,-1304
1c0092e2:	e44b07b7          	lui	a5,0xe44b0
1c0092e6:	968a                	add	a3,a3,sp
1c0092e8:	70a78793          	addi	a5,a5,1802 # e44b070a <__l2_shared_end+0xc84a070a>
1c0092ec:	c29c                	sw	a5,0(a3)
1c0092ee:	aec70693          	addi	a3,a4,-1300
1c0092f2:	336ac7b7          	lui	a5,0x336ac
1c0092f6:	968a                	add	a3,a3,sp
1c0092f8:	75978793          	addi	a5,a5,1881 # 336ac759 <__l2_shared_end+0x1769c759>
1c0092fc:	c29c                	sw	a5,0(a3)
1c0092fe:	af070693          	addi	a3,a4,-1296
1c009302:	c452a7b7          	lui	a5,0xc452a
1c009306:	968a                	add	a3,a3,sp
1c009308:	a9a78793          	addi	a5,a5,-1382 # c4529a9a <__l2_shared_end+0xa8519a9a>
1c00930c:	c29c                	sw	a5,0(a3)
1c00930e:	af470693          	addi	a3,a4,-1292
1c009312:	ea0d37b7          	lui	a5,0xea0d3
1c009316:	968a                	add	a3,a3,sp
1c009318:	64778793          	addi	a5,a5,1607 # ea0d3647 <__l2_shared_end+0xce0c3647>
1c00931c:	c29c                	sw	a5,0(a3)
1c00931e:	af870693          	addi	a3,a4,-1288
1c009322:	cc9957b7          	lui	a5,0xcc995
1c009326:	968a                	add	a3,a3,sp
1c009328:	62a78793          	addi	a5,a5,1578 # cc99562a <__l2_shared_end+0xb098562a>
1c00932c:	c29c                	sw	a5,0(a3)
1c00932e:	afc70693          	addi	a3,a4,-1284
1c009332:	423a77b7          	lui	a5,0x423a7
1c009336:	968a                	add	a3,a3,sp
1c009338:	8ea78793          	addi	a5,a5,-1814 # 423a68ea <__l2_shared_end+0x263968ea>
1c00933c:	c29c                	sw	a5,0(a3)
1c00933e:	b0070693          	addi	a3,a4,-1280
1c009342:	fca617b7          	lui	a5,0xfca61
1c009346:	968a                	add	a3,a3,sp
1c009348:	a4378793          	addi	a5,a5,-1469 # fca60a43 <__l2_shared_end+0xe0a50a43>
1c00934c:	c29c                	sw	a5,0(a3)
1c00934e:	b0470693          	addi	a3,a4,-1276
1c009352:	5cc747b7          	lui	a5,0x5cc74
1c009356:	968a                	add	a3,a3,sp
1c009358:	59578793          	addi	a5,a5,1429 # 5cc74595 <__l2_shared_end+0x40c64595>
1c00935c:	c29c                	sw	a5,0(a3)
1c00935e:	b0870693          	addi	a3,a4,-1272
1c009362:	1a6497b7          	lui	a5,0x1a649
1c009366:	968a                	add	a3,a3,sp
1c009368:	20478793          	addi	a5,a5,516 # 1a649204 <__CTOR_LIST__-0x19b6e00>
1c00936c:	c29c                	sw	a5,0(a3)
1c00936e:	b0c70693          	addi	a3,a4,-1268
1c009372:	26e9a7b7          	lui	a5,0x26e9a
1c009376:	968a                	add	a3,a3,sp
1c009378:	4f778793          	addi	a5,a5,1271 # 26e9a4f7 <__l2_shared_end+0xae8a4f7>
1c00937c:	c29c                	sw	a5,0(a3)
1c00937e:	b1070693          	addi	a3,a4,-1264
1c009382:	4e38d7b7          	lui	a5,0x4e38d
1c009386:	968a                	add	a3,a3,sp
1c009388:	c7b78793          	addi	a5,a5,-901 # 4e38cc7b <__l2_shared_end+0x3237cc7b>
1c00938c:	c29c                	sw	a5,0(a3)
1c00938e:	b1470693          	addi	a3,a4,-1260
1c009392:	f44c77b7          	lui	a5,0xf44c7
1c009396:	968a                	add	a3,a3,sp
1c009398:	15578793          	addi	a5,a5,341 # f44c7155 <__l2_shared_end+0xd84b7155>
1c00939c:	c29c                	sw	a5,0(a3)
1c00939e:	b1870693          	addi	a3,a4,-1256
1c0093a2:	6791                	lui	a5,0x4
1c0093a4:	968a                	add	a3,a3,sp
1c0093a6:	19778793          	addi	a5,a5,407 # 4197 <__CTOR_LIST__-0x1bffbe6d>
1c0093aa:	00f69023          	sh	a5,0(a3)
1c0093ae:	b1a70693          	addi	a3,a4,-1254
1c0093b2:	968a                	add	a3,a3,sp
1c0093b4:	57ad                	li	a5,-21
1c0093b6:	00f68023          	sb	a5,0(a3)
1c0093ba:	b1b70693          	addi	a3,a4,-1253
1c0093be:	968a                	add	a3,a3,sp
1c0093c0:	fa300793          	li	a5,-93
1c0093c4:	00f68023          	sb	a5,0(a3)
1c0093c8:	b1c70693          	addi	a3,a4,-1252
1c0093cc:	1764a7b7          	lui	a5,0x1764a
1c0093d0:	968a                	add	a3,a3,sp
1c0093d2:	db678793          	addi	a5,a5,-586 # 17649db6 <__CTOR_LIST__-0x49b624e>
1c0093d6:	c29c                	sw	a5,0(a3)
1c0093d8:	b2070693          	addi	a3,a4,-1248
1c0093dc:	5d4757b7          	lui	a5,0x5d475
1c0093e0:	968a                	add	a3,a3,sp
1c0093e2:	5a578793          	addi	a5,a5,1445 # 5d4755a5 <__l2_shared_end+0x414655a5>
1c0093e6:	c29c                	sw	a5,0(a3)
1c0093e8:	b2470693          	addi	a3,a4,-1244
1c0093ec:	121107b7          	lui	a5,0x12110
1c0093f0:	968a                	add	a3,a3,sp
1c0093f2:	23c78793          	addi	a5,a5,572 # 1211023c <__CTOR_LIST__-0x9eefdc8>
1c0093f6:	c29c                	sw	a5,0(a3)
1c0093f8:	b2870693          	addi	a3,a4,-1240
1c0093fc:	8c58b7b7          	lui	a5,0x8c58b
1c009400:	968a                	add	a3,a3,sp
1c009402:	3b878793          	addi	a5,a5,952 # 8c58b3b8 <__l2_shared_end+0x7057b3b8>
1c009406:	c29c                	sw	a5,0(a3)
1c009408:	b2c70693          	addi	a3,a4,-1236
1c00940c:	5c7b77b7          	lui	a5,0x5c7b7
1c009410:	968a                	add	a3,a3,sp
1c009412:	46378793          	addi	a5,a5,1123 # 5c7b7463 <__l2_shared_end+0x407a7463>
1c009416:	c29c                	sw	a5,0(a3)
1c009418:	b3070693          	addi	a3,a4,-1232
1c00941c:	e9fed7b7          	lui	a5,0xe9fed
1c009420:	968a                	add	a3,a3,sp
1c009422:	ce278793          	addi	a5,a5,-798 # e9fecce2 <__l2_shared_end+0xcdfdcce2>
1c009426:	c29c                	sw	a5,0(a3)
1c009428:	b3470693          	addi	a3,a4,-1228
1c00942c:	41fa97b7          	lui	a5,0x41fa9
1c009430:	968a                	add	a3,a3,sp
1c009432:	71278793          	addi	a5,a5,1810 # 41fa9712 <__l2_shared_end+0x25f99712>
1c009436:	c29c                	sw	a5,0(a3)
1c009438:	b3870693          	addi	a3,a4,-1224
1c00943c:	9842a7b7          	lui	a5,0x9842a
1c009440:	968a                	add	a3,a3,sp
1c009442:	c9f78793          	addi	a5,a5,-865 # 98429c9f <__l2_shared_end+0x7c419c9f>
1c009446:	c29c                	sw	a5,0(a3)
1c009448:	b3c70693          	addi	a3,a4,-1220
1c00944c:	08ff97b7          	lui	a5,0x8ff9
1c009450:	968a                	add	a3,a3,sp
1c009452:	f9778793          	addi	a5,a5,-105 # 8ff8f97 <__CTOR_LIST__-0x1300706d>
1c009456:	c29c                	sw	a5,0(a3)
1c009458:	b4070693          	addi	a3,a4,-1216
1c00945c:	55a8e7b7          	lui	a5,0x55a8e
1c009460:	968a                	add	a3,a3,sp
1c009462:	87078793          	addi	a5,a5,-1936 # 55a8d870 <__l2_shared_end+0x39a7d870>
1c009466:	c29c                	sw	a5,0(a3)
1c009468:	b4470693          	addi	a3,a4,-1212
1c00946c:	ca9997b7          	lui	a5,0xca999
1c009470:	968a                	add	a3,a3,sp
1c009472:	8b478793          	addi	a5,a5,-1868 # ca9988b4 <__l2_shared_end+0xae9888b4>
1c009476:	c29c                	sw	a5,0(a3)
1c009478:	b4870693          	addi	a3,a4,-1208
1c00947c:	837db7b7          	lui	a5,0x837db
1c009480:	968a                	add	a3,a3,sp
1c009482:	49b78793          	addi	a5,a5,1179 # 837db49b <__l2_shared_end+0x677cb49b>
1c009486:	c29c                	sw	a5,0(a3)
1c009488:	b4c70693          	addi	a3,a4,-1204
1c00948c:	03d267b7          	lui	a5,0x3d26
1c009490:	968a                	add	a3,a3,sp
1c009492:	26d78793          	addi	a5,a5,621 # 3d2626d <__CTOR_LIST__-0x182d9d97>
1c009496:	c29c                	sw	a5,0(a3)
1c009498:	b5070693          	addi	a3,a4,-1200
1c00949c:	6f81c7b7          	lui	a5,0x6f81c
1c0094a0:	968a                	add	a3,a3,sp
1c0094a2:	38c78793          	addi	a5,a5,908 # 6f81c38c <__l2_shared_end+0x5380c38c>
1c0094a6:	c29c                	sw	a5,0(a3)
1c0094a8:	b5470693          	addi	a3,a4,-1196
1c0094ac:	b38b77b7          	lui	a5,0xb38b7
1c0094b0:	968a                	add	a3,a3,sp
1c0094b2:	93a78793          	addi	a5,a5,-1734 # b38b693a <__l2_shared_end+0x978a693a>
1c0094b6:	c29c                	sw	a5,0(a3)
1c0094b8:	b5870693          	addi	a3,a4,-1192
1c0094bc:	c77907b7          	lui	a5,0xc7790
1c0094c0:	968a                	add	a3,a3,sp
1c0094c2:	fbb78793          	addi	a5,a5,-69 # c778ffbb <__l2_shared_end+0xab77ffbb>
1c0094c6:	c29c                	sw	a5,0(a3)
1c0094c8:	b5c70693          	addi	a3,a4,-1188
1c0094cc:	eab017b7          	lui	a5,0xeab01
1c0094d0:	968a                	add	a3,a3,sp
1c0094d2:	5a078793          	addi	a5,a5,1440 # eab015a0 <__l2_shared_end+0xceaf15a0>
1c0094d6:	c29c                	sw	a5,0(a3)
1c0094d8:	b6070693          	addi	a3,a4,-1184
1c0094dc:	426367b7          	lui	a5,0x42636
1c0094e0:	968a                	add	a3,a3,sp
1c0094e2:	07e5                	addi	a5,a5,25
1c0094e4:	c29c                	sw	a5,0(a3)
1c0094e6:	b6470693          	addi	a3,a4,-1180
1c0094ea:	0bd5e7b7          	lui	a5,0xbd5e
1c0094ee:	968a                	add	a3,a3,sp
1c0094f0:	19278793          	addi	a5,a5,402 # bd5e192 <__CTOR_LIST__-0x102a1e72>
1c0094f4:	c29c                	sw	a5,0(a3)
1c0094f6:	b6870693          	addi	a3,a4,-1176
1c0094fa:	3a04e7b7          	lui	a5,0x3a04e
1c0094fe:	968a                	add	a3,a3,sp
1c009500:	10378793          	addi	a5,a5,259 # 3a04e103 <__l2_shared_end+0x1e03e103>
1c009504:	c29c                	sw	a5,0(a3)
1c009506:	b6c70693          	addi	a3,a4,-1172
1c00950a:	279bd7b7          	lui	a5,0x279bd
1c00950e:	968a                	add	a3,a3,sp
1c009510:	a9878793          	addi	a5,a5,-1384 # 279bca98 <__l2_shared_end+0xb9aca98>
1c009514:	c29c                	sw	a5,0(a3)
1c009516:	b7070693          	addi	a3,a4,-1168
1c00951a:	8b6647b7          	lui	a5,0x8b664
1c00951e:	968a                	add	a3,a3,sp
1c009520:	e0678793          	addi	a5,a5,-506 # 8b663e06 <__l2_shared_end+0x6f653e06>
1c009524:	c29c                	sw	a5,0(a3)
1c009526:	b7470693          	addi	a3,a4,-1164
1c00952a:	7dc1e7b7          	lui	a5,0x7dc1e
1c00952e:	968a                	add	a3,a3,sp
1c009530:	20578793          	addi	a5,a5,517 # 7dc1e205 <__l2_shared_end+0x61c0e205>
1c009534:	c29c                	sw	a5,0(a3)
1c009536:	b7870693          	addi	a3,a4,-1160
1c00953a:	2b3837b7          	lui	a5,0x2b383
1c00953e:	968a                	add	a3,a3,sp
1c009540:	d6978793          	addi	a5,a5,-663 # 2b382d69 <__l2_shared_end+0xf372d69>
1c009544:	c29c                	sw	a5,0(a3)
1c009546:	b7c70693          	addi	a3,a4,-1156
1c00954a:	a86517b7          	lui	a5,0xa8651
1c00954e:	968a                	add	a3,a3,sp
1c009550:	31878793          	addi	a5,a5,792 # a8651318 <__l2_shared_end+0x8c641318>
1c009554:	c29c                	sw	a5,0(a3)
1c009556:	b8070693          	addi	a3,a4,-1152
1c00955a:	c78e57b7          	lui	a5,0xc78e5
1c00955e:	968a                	add	a3,a3,sp
1c009560:	11878793          	addi	a5,a5,280 # c78e5118 <__l2_shared_end+0xab8d5118>
1c009564:	c29c                	sw	a5,0(a3)
1c009566:	b8470693          	addi	a3,a4,-1148
1c00956a:	370377b7          	lui	a5,0x37037
1c00956e:	968a                	add	a3,a3,sp
1c009570:	24778793          	addi	a5,a5,583 # 37037247 <__l2_shared_end+0x1b027247>
1c009574:	c29c                	sw	a5,0(a3)
1c009576:	b8870693          	addi	a3,a4,-1144
1c00957a:	596827b7          	lui	a5,0x59682
1c00957e:	968a                	add	a3,a3,sp
1c009580:	8ca78793          	addi	a5,a5,-1846 # 596818ca <__l2_shared_end+0x3d6718ca>
1c009584:	c29c                	sw	a5,0(a3)
1c009586:	b8c70693          	addi	a3,a4,-1140
1c00958a:	902af7b7          	lui	a5,0x902af
1c00958e:	968a                	add	a3,a3,sp
1c009590:	46a78793          	addi	a5,a5,1130 # 902af46a <__l2_shared_end+0x7429f46a>
1c009594:	c29c                	sw	a5,0(a3)
1c009596:	b9070693          	addi	a3,a4,-1136
1c00959a:	0387b7b7          	lui	a5,0x387b
1c00959e:	968a                	add	a3,a3,sp
1c0095a0:	1fa78793          	addi	a5,a5,506 # 387b1fa <__CTOR_LIST__-0x18784e0a>
1c0095a4:	c29c                	sw	a5,0(a3)
1c0095a6:	b9470693          	addi	a3,a4,-1132
1c0095aa:	8f4bd7b7          	lui	a5,0x8f4bd
1c0095ae:	968a                	add	a3,a3,sp
1c0095b0:	77378793          	addi	a5,a5,1907 # 8f4bd773 <__l2_shared_end+0x734ad773>
1c0095b4:	c29c                	sw	a5,0(a3)
1c0095b6:	b9870693          	addi	a3,a4,-1128
1c0095ba:	86ac47b7          	lui	a5,0x86ac4
1c0095be:	968a                	add	a3,a3,sp
1c0095c0:	26d78793          	addi	a5,a5,621 # 86ac426d <__l2_shared_end+0x6aab426d>
1c0095c4:	c29c                	sw	a5,0(a3)
1c0095c6:	b9c70693          	addi	a3,a4,-1124
1c0095ca:	3aca97b7          	lui	a5,0x3aca9
1c0095ce:	968a                	add	a3,a3,sp
1c0095d0:	bb178793          	addi	a5,a5,-1103 # 3aca8bb1 <__l2_shared_end+0x1ec98bb1>
1c0095d4:	c29c                	sw	a5,0(a3)
1c0095d6:	ba070693          	addi	a3,a4,-1120
1c0095da:	686447b7          	lui	a5,0x68644
1c0095de:	968a                	add	a3,a3,sp
1c0095e0:	7b078793          	addi	a5,a5,1968 # 686447b0 <__l2_shared_end+0x4c6347b0>
1c0095e4:	c29c                	sw	a5,0(a3)
1c0095e6:	ba470693          	addi	a3,a4,-1116
1c0095ea:	0c06f7b7          	lui	a5,0xc06f
1c0095ee:	968a                	add	a3,a3,sp
1c0095f0:	20c78793          	addi	a5,a5,524 # c06f20c <__CTOR_LIST__-0xff90df8>
1c0095f4:	c29c                	sw	a5,0(a3)
1c0095f6:	ba870693          	addi	a3,a4,-1112
1c0095fa:	5bbea7b7          	lui	a5,0x5bbea
1c0095fe:	968a                	add	a3,a3,sp
1c009600:	a5278793          	addi	a5,a5,-1454 # 5bbe9a52 <__l2_shared_end+0x3fbd9a52>
1c009604:	c29c                	sw	a5,0(a3)
1c009606:	bac70693          	addi	a3,a4,-1108
1c00960a:	4d47f7b7          	lui	a5,0x4d47f
1c00960e:	968a                	add	a3,a3,sp
1c009610:	48e78793          	addi	a5,a5,1166 # 4d47f48e <__l2_shared_end+0x3146f48e>
1c009614:	c29c                	sw	a5,0(a3)
1c009616:	bb070693          	addi	a3,a4,-1104
1c00961a:	a847d7b7          	lui	a5,0xa847d
1c00961e:	968a                	add	a3,a3,sp
1c009620:	cc878793          	addi	a5,a5,-824 # a847ccc8 <__l2_shared_end+0x8c46ccc8>
1c009624:	c29c                	sw	a5,0(a3)
1c009626:	bb470693          	addi	a3,a4,-1100
1c00962a:	88bd47b7          	lui	a5,0x88bd4
1c00962e:	968a                	add	a3,a3,sp
1c009630:	e0378793          	addi	a5,a5,-509 # 88bd3e03 <__l2_shared_end+0x6cbc3e03>
1c009634:	c29c                	sw	a5,0(a3)
1c009636:	bb870693          	addi	a3,a4,-1096
1c00963a:	0f0a47b7          	lui	a5,0xf0a4
1c00963e:	968a                	add	a3,a3,sp
1c009640:	e4d78793          	addi	a5,a5,-435 # f0a3e4d <__CTOR_LIST__-0xcf5c1b7>
1c009644:	c29c                	sw	a5,0(a3)
1c009646:	bbc70693          	addi	a3,a4,-1092
1c00964a:	0d4297b7          	lui	a5,0xd429
1c00964e:	968a                	add	a3,a3,sp
1c009650:	41a78793          	addi	a5,a5,1050 # d42941a <__CTOR_LIST__-0xebd6bea>
1c009654:	c29c                	sw	a5,0(a3)
1c009656:	bc070693          	addi	a3,a4,-1088
1c00965a:	629147b7          	lui	a5,0x62914
1c00965e:	968a                	add	a3,a3,sp
1c009660:	c8a78793          	addi	a5,a5,-886 # 62913c8a <__l2_shared_end+0x46903c8a>
1c009664:	c29c                	sw	a5,0(a3)
1c009666:	bc470693          	addi	a3,a4,-1084
1c00966a:	a287b7b7          	lui	a5,0xa287b
1c00966e:	968a                	add	a3,a3,sp
1c009670:	fb778793          	addi	a5,a5,-73 # a287afb7 <__l2_shared_end+0x8686afb7>
1c009674:	c29c                	sw	a5,0(a3)
1c009676:	bc870693          	addi	a3,a4,-1080
1c00967a:	6494a7b7          	lui	a5,0x6494a
1c00967e:	968a                	add	a3,a3,sp
1c009680:	3c878793          	addi	a5,a5,968 # 6494a3c8 <__l2_shared_end+0x4893a3c8>
1c009684:	c29c                	sw	a5,0(a3)
1c009686:	bcc70693          	addi	a3,a4,-1076
1c00968a:	a3f437b7          	lui	a5,0xa3f43
1c00968e:	968a                	add	a3,a3,sp
1c009690:	47478793          	addi	a5,a5,1140 # a3f43474 <__l2_shared_end+0x87f33474>
1c009694:	c29c                	sw	a5,0(a3)
1c009696:	bd070693          	addi	a3,a4,-1072
1c00969a:	784737b7          	lui	a5,0x78473
1c00969e:	968a                	add	a3,a3,sp
1c0096a0:	bbc78793          	addi	a5,a5,-1092 # 78472bbc <__l2_shared_end+0x5c462bbc>
1c0096a4:	c29c                	sw	a5,0(a3)
1c0096a6:	bd470693          	addi	a3,a4,-1068
1c0096aa:	cf82b7b7          	lui	a5,0xcf82b
1c0096ae:	968a                	add	a3,a3,sp
1c0096b0:	c1378793          	addi	a5,a5,-1005 # cf82ac13 <__l2_shared_end+0xb381ac13>
1c0096b4:	c29c                	sw	a5,0(a3)
1c0096b6:	bd870693          	addi	a3,a4,-1064
1c0096ba:	b58577b7          	lui	a5,0xb5857
1c0096be:	968a                	add	a3,a3,sp
1c0096c0:	13878793          	addi	a5,a5,312 # b5857138 <__l2_shared_end+0x99847138>
1c0096c4:	c29c                	sw	a5,0(a3)
1c0096c6:	bdc70693          	addi	a3,a4,-1060
1c0096ca:	89f6f7b7          	lui	a5,0x89f6f
1c0096ce:	968a                	add	a3,a3,sp
1c0096d0:	78778793          	addi	a5,a5,1927 # 89f6f787 <__l2_shared_end+0x6df5f787>
1c0096d4:	c29c                	sw	a5,0(a3)
1c0096d6:	be070693          	addi	a3,a4,-1056
1c0096da:	ddcdf7b7          	lui	a5,0xddcdf
1c0096de:	968a                	add	a3,a3,sp
1c0096e0:	c3878793          	addi	a5,a5,-968 # ddcdec38 <__l2_shared_end+0xc1ccec38>
1c0096e4:	c29c                	sw	a5,0(a3)
1c0096e6:	be470693          	addi	a3,a4,-1052
1c0096ea:	43d137b7          	lui	a5,0x43d13
1c0096ee:	968a                	add	a3,a3,sp
1c0096f0:	46978793          	addi	a5,a5,1129 # 43d13469 <__l2_shared_end+0x27d03469>
1c0096f4:	c29c                	sw	a5,0(a3)
1c0096f6:	be870693          	addi	a3,a4,-1048
1c0096fa:	4abb17b7          	lui	a5,0x4abb1
1c0096fe:	968a                	add	a3,a3,sp
1c009700:	7ba78793          	addi	a5,a5,1978 # 4abb17ba <__l2_shared_end+0x2eba17ba>
1c009704:	c29c                	sw	a5,0(a3)
1c009706:	bec70693          	addi	a3,a4,-1044
1c00970a:	d26627b7          	lui	a5,0xd2662
1c00970e:	968a                	add	a3,a3,sp
1c009710:	57178793          	addi	a5,a5,1393 # d2662571 <__l2_shared_end+0xb6652571>
1c009714:	c29c                	sw	a5,0(a3)
1c009716:	bf070693          	addi	a3,a4,-1040
1c00971a:	dbad67b7          	lui	a5,0xdbad6
1c00971e:	968a                	add	a3,a3,sp
1c009720:	aa578793          	addi	a5,a5,-1371 # dbad5aa5 <__l2_shared_end+0xbfac5aa5>
1c009724:	c29c                	sw	a5,0(a3)
1c009726:	bf470693          	addi	a3,a4,-1036
1c00972a:	367127b7          	lui	a5,0x36712
1c00972e:	968a                	add	a3,a3,sp
1c009730:	33378793          	addi	a5,a5,819 # 36712333 <__l2_shared_end+0x1a702333>
1c009734:	c29c                	sw	a5,0(a3)
1c009736:	bf870693          	addi	a3,a4,-1032
1c00973a:	4a1b47b7          	lui	a5,0x4a1b4
1c00973e:	968a                	add	a3,a3,sp
1c009740:	06778793          	addi	a5,a5,103 # 4a1b4067 <__l2_shared_end+0x2e1a4067>
1c009744:	c29c                	sw	a5,0(a3)
1c009746:	bfc70693          	addi	a3,a4,-1028
1c00974a:	236cc7b7          	lui	a5,0x236cc
1c00974e:	968a                	add	a3,a3,sp
1c009750:	82078793          	addi	a5,a5,-2016 # 236cb820 <__l2_shared_end+0x76bb820>
1c009754:	c29c                	sw	a5,0(a3)
1c009756:	c0070693          	addi	a3,a4,-1024
1c00975a:	437617b7          	lui	a5,0x43761
1c00975e:	968a                	add	a3,a3,sp
1c009760:	0bf78793          	addi	a5,a5,191 # 437610bf <__l2_shared_end+0x277510bf>
1c009764:	c29c                	sw	a5,0(a3)
1c009766:	c0470693          	addi	a3,a4,-1020
1c00976a:	c1b8b7b7          	lui	a5,0xc1b8b
1c00976e:	968a                	add	a3,a3,sp
1c009770:	69c78793          	addi	a5,a5,1692 # c1b8b69c <__l2_shared_end+0xa5b7b69c>
1c009774:	c29c                	sw	a5,0(a3)
1c009776:	c0870693          	addi	a3,a4,-1016
1c00977a:	ba9d47b7          	lui	a5,0xba9d4
1c00977e:	968a                	add	a3,a3,sp
1c009780:	81578793          	addi	a5,a5,-2027 # ba9d3815 <__l2_shared_end+0x9e9c3815>
1c009784:	c29c                	sw	a5,0(a3)
1c009786:	c0c70693          	addi	a3,a4,-1012
1c00978a:	910c77b7          	lui	a5,0x910c7
1c00978e:	968a                	add	a3,a3,sp
1c009790:	f4e78793          	addi	a5,a5,-178 # 910c6f4e <__l2_shared_end+0x750b6f4e>
1c009794:	c29c                	sw	a5,0(a3)
1c009796:	c1070693          	addi	a3,a4,-1008
1c00979a:	77f9                	lui	a5,0xffffe
1c00979c:	968a                	add	a3,a3,sp
1c00979e:	75b78793          	addi	a5,a5,1883 # ffffe75b <__l2_shared_end+0xe3fee75b>
1c0097a2:	00f69023          	sh	a5,0(a3)
1c0097a6:	c1270693          	addi	a3,a4,-1006
1c0097aa:	968a                	add	a3,a3,sp
1c0097ac:	06000793          	li	a5,96
1c0097b0:	00f68023          	sb	a5,0(a3)
1c0097b4:	c1370693          	addi	a3,a4,-1005
1c0097b8:	968a                	add	a3,a3,sp
1c0097ba:	02b00793          	li	a5,43
1c0097be:	00f68023          	sb	a5,0(a3)
1c0097c2:	c1470693          	addi	a3,a4,-1004
1c0097c6:	35b507b7          	lui	a5,0x35b50
1c0097ca:	968a                	add	a3,a3,sp
1c0097cc:	39778793          	addi	a5,a5,919 # 35b50397 <__l2_shared_end+0x19b40397>
1c0097d0:	c29c                	sw	a5,0(a3)
1c0097d2:	c1870693          	addi	a3,a4,-1000
1c0097d6:	5c4a17b7          	lui	a5,0x5c4a1
1c0097da:	968a                	add	a3,a3,sp
1c0097dc:	e0778793          	addi	a5,a5,-505 # 5c4a0e07 <__l2_shared_end+0x40490e07>
1c0097e0:	c29c                	sw	a5,0(a3)
1c0097e2:	c1c70693          	addi	a3,a4,-996
1c0097e6:	d7a557b7          	lui	a5,0xd7a55
1c0097ea:	968a                	add	a3,a3,sp
1c0097ec:	95678793          	addi	a5,a5,-1706 # d7a54956 <__l2_shared_end+0xbba44956>
1c0097f0:	c29c                	sw	a5,0(a3)
1c0097f2:	c2070693          	addi	a3,a4,-992
1c0097f6:	021507b7          	lui	a5,0x2150
1c0097fa:	968a                	add	a3,a3,sp
1c0097fc:	50878793          	addi	a5,a5,1288 # 2150508 <__CTOR_LIST__-0x19eafafc>
1c009800:	c29c                	sw	a5,0(a3)
1c009802:	c2470693          	addi	a3,a4,-988
1c009806:	60b207b7          	lui	a5,0x60b20
1c00980a:	968a                	add	a3,a3,sp
1c00980c:	66778793          	addi	a5,a5,1639 # 60b20667 <__l2_shared_end+0x44b10667>
1c009810:	c29c                	sw	a5,0(a3)
1c009812:	c2870693          	addi	a3,a4,-984
1c009816:	d0cb77b7          	lui	a5,0xd0cb7
1c00981a:	968a                	add	a3,a3,sp
1c00981c:	54578793          	addi	a5,a5,1349 # d0cb7545 <__l2_shared_end+0xb4ca7545>
1c009820:	c29c                	sw	a5,0(a3)
1c009822:	c2c70693          	addi	a3,a4,-980
1c009826:	292787b7          	lui	a5,0x29278
1c00982a:	968a                	add	a3,a3,sp
1c00982c:	f6878793          	addi	a5,a5,-152 # 29277f68 <__l2_shared_end+0xd267f68>
1c009830:	c29c                	sw	a5,0(a3)
1c009832:	c3070693          	addi	a3,a4,-976
1c009836:	7d9937b7          	lui	a5,0x7d993
1c00983a:	968a                	add	a3,a3,sp
1c00983c:	aa978793          	addi	a5,a5,-1367 # 7d992aa9 <__l2_shared_end+0x61982aa9>
1c009840:	c29c                	sw	a5,0(a3)
1c009842:	c3470693          	addi	a3,a4,-972
1c009846:	0072f7b7          	lui	a5,0x72f
1c00984a:	968a                	add	a3,a3,sp
1c00984c:	a2178793          	addi	a5,a5,-1503 # 72ea21 <__CTOR_LIST__-0x1b8d15e3>
1c009850:	c29c                	sw	a5,0(a3)
1c009852:	c3870693          	addi	a3,a4,-968
1c009856:	31d827b7          	lui	a5,0x31d82
1c00985a:	968a                	add	a3,a3,sp
1c00985c:	ec478793          	addi	a5,a5,-316 # 31d81ec4 <__l2_shared_end+0x15d71ec4>
1c009860:	893a                	mv	s2,a4
1c009862:	c29c                	sw	a5,0(a3)
1c009864:	c3c70713          	addi	a4,a4,-964
1c009868:	c7f477b7          	lui	a5,0xc7f47
1c00986c:	970a                	add	a4,a4,sp
1c00986e:	55278793          	addi	a5,a5,1362 # c7f47552 <__l2_shared_end+0xabf37552>
1c009872:	c31c                	sw	a5,0(a4)
1c009874:	c4090713          	addi	a4,s2,-960
1c009878:	c89b37b7          	lui	a5,0xc89b3
1c00987c:	970a                	add	a4,a4,sp
1c00987e:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c009882:	c31c                	sw	a5,0(a4)
1c009884:	c4490713          	addi	a4,s2,-956
1c009888:	b91317b7          	lui	a5,0xb9131
1c00988c:	970a                	add	a4,a4,sp
1c00988e:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c009892:	c31c                	sw	a5,0(a4)
1c009894:	c4890713          	addi	a4,s2,-952
1c009898:	6f5847b7          	lui	a5,0x6f584
1c00989c:	970a                	add	a4,a4,sp
1c00989e:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c0098a2:	c31c                	sw	a5,0(a4)
1c0098a4:	c4c90713          	addi	a4,s2,-948
1c0098a8:	b1fe87b7          	lui	a5,0xb1fe8
1c0098ac:	970a                	add	a4,a4,sp
1c0098ae:	3d578793          	addi	a5,a5,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c0098b2:	c31c                	sw	a5,0(a4)
1c0098b4:	c5090713          	addi	a4,s2,-944
1c0098b8:	405b07b7          	lui	a5,0x405b0
1c0098bc:	970a                	add	a4,a4,sp
1c0098be:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c0098c2:	c31c                	sw	a5,0(a4)
1c0098c4:	c5490713          	addi	a4,s2,-940
1c0098c8:	433bd7b7          	lui	a5,0x433bd
1c0098cc:	970a                	add	a4,a4,sp
1c0098ce:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c0098d2:	c31c                	sw	a5,0(a4)
1c0098d4:	c5890713          	addi	a4,s2,-936
1c0098d8:	a45f47b7          	lui	a5,0xa45f4
1c0098dc:	970a                	add	a4,a4,sp
1c0098de:	f5478793          	addi	a5,a5,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c0098e2:	c31c                	sw	a5,0(a4)
1c0098e4:	c5c90713          	addi	a4,s2,-932
1c0098e8:	8d6c47b7          	lui	a5,0x8d6c4
1c0098ec:	970a                	add	a4,a4,sp
1c0098ee:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c0098f2:	1c000537          	lui	a0,0x1c000
1c0098f6:	c31c                	sw	a5,0(a4)
1c0098f8:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0098fc:	2b3020ef          	jal	ra,1c00c3ae <puts>
1c009900:	64010513          	addi	a0,sp,1600
1c009904:	62000593          	li	a1,1568
1c009908:	84dfe0ef          	jal	ra,1c008154 <printbytes>
1c00990c:	747d                	lui	s0,0xfffff
1c00990e:	c6090793          	addi	a5,s2,-928
1c009912:	978a                	add	a5,a5,sp
1c009914:	3a040493          	addi	s1,s0,928 # fffff3a0 <__l2_shared_end+0xe3fef3a0>
1c009918:	94be                	add	s1,s1,a5
1c00991a:	c6090793          	addi	a5,s2,-928
1c00991e:	978a                	add	a5,a5,sp
1c009920:	3c040413          	addi	s0,s0,960
1c009924:	943e                	add	s0,s0,a5
1c009926:	64010613          	addi	a2,sp,1600
1c00992a:	85a6                	mv	a1,s1
1c00992c:	8522                	mv	a0,s0
1c00992e:	4a1010ef          	jal	ra,1c00b5ce <PQCLEAN_KYBER1024_CLEAN_crypto_kem_enc>
1c009932:	1c000537          	lui	a0,0x1c000
1c009936:	12850513          	addi	a0,a0,296 # 1c000128 <__clz_tab+0x10c>
1c00993a:	275020ef          	jal	ra,1c00c3ae <puts>
1c00993e:	1c000537          	lui	a0,0x1c000
1c009942:	13c50513          	addi	a0,a0,316 # 1c00013c <__clz_tab+0x120>
1c009946:	269020ef          	jal	ra,1c00c3ae <puts>
1c00994a:	62000593          	li	a1,1568
1c00994e:	8522                	mv	a0,s0
1c009950:	805fe0ef          	jal	ra,1c008154 <printbytes>
1c009954:	1c000537          	lui	a0,0x1c000
1c009958:	14450513          	addi	a0,a0,324 # 1c000144 <__clz_tab+0x128>
1c00995c:	253020ef          	jal	ra,1c00c3ae <puts>
1c009960:	8526                	mv	a0,s1
1c009962:	02000593          	li	a1,32
1c009966:	feefe0ef          	jal	ra,1c008154 <printbytes>
1c00996a:	48010113          	addi	sp,sp,1152
1c00996e:	7ec12083          	lw	ra,2028(sp)
1c009972:	7e812403          	lw	s0,2024(sp)
1c009976:	7e412483          	lw	s1,2020(sp)
1c00997a:	7e012903          	lw	s2,2016(sp)
1c00997e:	4501                	li	a0,0
1c009980:	7f010113          	addi	sp,sp,2032
1c009984:	8082                	ret

1c009986 <pos_fll_init>:
1c009986:	1101                	addi	sp,sp,-32
1c009988:	1a1005b7          	lui	a1,0x1a100
1c00998c:	c64e                	sw	s3,12(sp)
1c00998e:	00451613          	slli	a2,a0,0x4
1c009992:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c009996:	99b2                	add	s3,s3,a2
1c009998:	0009a703          	lw	a4,0(s3)
1c00999c:	ca26                	sw	s1,20(sp)
1c00999e:	ce06                	sw	ra,28(sp)
1c0099a0:	cc22                	sw	s0,24(sp)
1c0099a2:	c84a                	sw	s2,16(sp)
1c0099a4:	c452                	sw	s4,8(sp)
1c0099a6:	84aa                	mv	s1,a0
1c0099a8:	87ba                	mv	a5,a4
1c0099aa:	04074763          	bltz	a4,1c0099f8 <pos_fll_init+0x72>
1c0099ae:	00858693          	addi	a3,a1,8
1c0099b2:	96b2                	add	a3,a3,a2
1c0099b4:	429c                	lw	a5,0(a3)
1c0099b6:	f0000537          	lui	a0,0xf0000
1c0099ba:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c0099be:	8fe9                	and	a5,a5,a0
1c0099c0:	00502537          	lui	a0,0x502
1c0099c4:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c0099c8:	8fc9                	or	a5,a5,a0
1c0099ca:	05b1                	addi	a1,a1,12
1c0099cc:	c29c                	sw	a5,0(a3)
1c0099ce:	962e                	add	a2,a2,a1
1c0099d0:	4214                	lw	a3,0(a2)
1c0099d2:	fc0107b7          	lui	a5,0xfc010
1c0099d6:	17fd                	addi	a5,a5,-1
1c0099d8:	01875593          	srli	a1,a4,0x18
1c0099dc:	8efd                	and	a3,a3,a5
1c0099de:	0c05e593          	ori	a1,a1,192
1c0099e2:	00871793          	slli	a5,a4,0x8
1c0099e6:	014c0537          	lui	a0,0x14c0
1c0099ea:	8ec9                	or	a3,a3,a0
1c0099ec:	05e2                	slli	a1,a1,0x18
1c0099ee:	83a1                	srli	a5,a5,0x8
1c0099f0:	c214                	sw	a3,0(a2)
1c0099f2:	8fcd                	or	a5,a5,a1
1c0099f4:	00f9a023          	sw	a5,0(s3)
1c0099f8:	1c006437          	lui	s0,0x1c006
1c0099fc:	2b840413          	addi	s0,s0,696 # 1c0062b8 <pos_fll_freq>
1c009a00:	00249a13          	slli	s4,s1,0x2
1c009a04:	014406b3          	add	a3,s0,s4
1c009a08:	0006a903          	lw	s2,0(a3)
1c009a0c:	02091d63          	bnez	s2,1c009a46 <pos_fll_init+0xc0>
1c009a10:	83e9                	srli	a5,a5,0x1a
1c009a12:	0742                	slli	a4,a4,0x10
1c009a14:	8341                	srli	a4,a4,0x10
1c009a16:	8bbd                	andi	a5,a5,15
1c009a18:	073e                	slli	a4,a4,0xf
1c009a1a:	17fd                	addi	a5,a5,-1
1c009a1c:	00f75933          	srl	s2,a4,a5
1c009a20:	0126a023          	sw	s2,0(a3)
1c009a24:	1c0066b7          	lui	a3,0x1c006
1c009a28:	2b068693          	addi	a3,a3,688 # 1c0062b0 <pos_fll_is_on>
1c009a2c:	96a6                	add	a3,a3,s1
1c009a2e:	4785                	li	a5,1
1c009a30:	00f68023          	sb	a5,0(a3)
1c009a34:	40f2                	lw	ra,28(sp)
1c009a36:	4462                	lw	s0,24(sp)
1c009a38:	44d2                	lw	s1,20(sp)
1c009a3a:	49b2                	lw	s3,12(sp)
1c009a3c:	4a22                	lw	s4,8(sp)
1c009a3e:	854a                	mv	a0,s2
1c009a40:	4942                	lw	s2,16(sp)
1c009a42:	6105                	addi	sp,sp,32
1c009a44:	8082                	ret
1c009a46:	854a                	mv	a0,s2
1c009a48:	ec0fe0ef          	jal	ra,1c008108 <__clzsi2>
1c009a4c:	1579                	addi	a0,a0,-2
1c009a4e:	8105                	srli	a0,a0,0x1
1c009a50:	c939                	beqz	a0,1c009aa6 <pos_fll_init+0x120>
1c009a52:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c009a56:	1c0066b7          	lui	a3,0x1c006
1c009a5a:	4785                	li	a5,1
1c009a5c:	00c797b3          	sll	a5,a5,a2
1c009a60:	00a91733          	sll	a4,s2,a0
1c009a64:	2b068693          	addi	a3,a3,688 # 1c0062b0 <pos_fll_is_on>
1c009a68:	7661                	lui	a2,0xffff8
1c009a6a:	8e79                	and	a2,a2,a4
1c009a6c:	009685b3          	add	a1,a3,s1
1c009a70:	97b2                	add	a5,a5,a2
1c009a72:	0005c603          	lbu	a2,0(a1)
1c009a76:	9452                	add	s0,s0,s4
1c009a78:	00a7d7b3          	srl	a5,a5,a0
1c009a7c:	c01c                	sw	a5,0(s0)
1c009a7e:	d65d                	beqz	a2,1c009a2c <pos_fll_init+0xa6>
1c009a80:	0009a783          	lw	a5,0(s3)
1c009a84:	833d                	srli	a4,a4,0xf
1c009a86:	0742                	slli	a4,a4,0x10
1c009a88:	7641                	lui	a2,0xffff0
1c009a8a:	8341                	srli	a4,a4,0x10
1c009a8c:	8ff1                	and	a5,a5,a2
1c009a8e:	8fd9                	or	a5,a5,a4
1c009a90:	0505                	addi	a0,a0,1
1c009a92:	c4000737          	lui	a4,0xc4000
1c009a96:	893d                	andi	a0,a0,15
1c009a98:	177d                	addi	a4,a4,-1
1c009a9a:	056a                	slli	a0,a0,0x1a
1c009a9c:	8ff9                	and	a5,a5,a4
1c009a9e:	8d5d                	or	a0,a0,a5
1c009aa0:	00a9a023          	sw	a0,0(s3)
1c009aa4:	b761                	j	1c009a2c <pos_fll_init+0xa6>
1c009aa6:	4505                	li	a0,1
1c009aa8:	b76d                	j	1c009a52 <pos_fll_init+0xcc>

1c009aaa <pos_fll_constructor>:
1c009aaa:	1c0067b7          	lui	a5,0x1c006
1c009aae:	2b878793          	addi	a5,a5,696 # 1c0062b8 <pos_fll_freq>
1c009ab2:	0007a023          	sw	zero,0(a5)
1c009ab6:	0007a223          	sw	zero,4(a5)
1c009aba:	1c0067b7          	lui	a5,0x1c006
1c009abe:	2a079823          	sh	zero,688(a5) # 1c0062b0 <pos_fll_is_on>
1c009ac2:	8082                	ret

1c009ac4 <pos_soc_init>:
1c009ac4:	1141                	addi	sp,sp,-16
1c009ac6:	c606                	sw	ra,12(sp)
1c009ac8:	c422                	sw	s0,8(sp)
1c009aca:	37c5                	jal	1c009aaa <pos_fll_constructor>
1c009acc:	4501                	li	a0,0
1c009ace:	3d65                	jal	1c009986 <pos_fll_init>
1c009ad0:	1c006437          	lui	s0,0x1c006
1c009ad4:	87aa                	mv	a5,a0
1c009ad6:	2c040413          	addi	s0,s0,704 # 1c0062c0 <pos_freq_domains>
1c009ada:	4505                	li	a0,1
1c009adc:	c01c                	sw	a5,0(s0)
1c009ade:	3565                	jal	1c009986 <pos_fll_init>
1c009ae0:	40b2                	lw	ra,12(sp)
1c009ae2:	c408                	sw	a0,8(s0)
1c009ae4:	4422                	lw	s0,8(sp)
1c009ae6:	0141                	addi	sp,sp,16
1c009ae8:	8082                	ret

1c009aea <KeccakF1600_StatePermute>:
1c009aea:	1a400837          	lui	a6,0x1a400
1c009aee:	87aa                	mv	a5,a0
1c009af0:	0c850613          	addi	a2,a0,200
1c009af4:	1141                	addi	sp,sp,-16
1c009af6:	40a80533          	sub	a0,a6,a0
1c009afa:	4394                	lw	a3,0(a5)
1c009afc:	00f50733          	add	a4,a0,a5
1c009b00:	0791                	addi	a5,a5,4
1c009b02:	c314                	sw	a3,0(a4)
1c009b04:	fec79be3          	bne	a5,a2,1c009afa <KeccakF1600_StatePermute+0x10>
1c009b08:	4785                	li	a5,1
1c009b0a:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c009b0e:	1a400737          	lui	a4,0x1a400
1c009b12:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c009b16:	8b85                	andi	a5,a5,1
1c009b18:	dfed                	beqz	a5,1c009b12 <KeccakF1600_StatePermute+0x28>
1c009b1a:	c602                	sw	zero,12(sp)
1c009b1c:	4732                	lw	a4,12(sp)
1c009b1e:	03100793          	li	a5,49
1c009b22:	02e7c663          	blt	a5,a4,1c009b4e <KeccakF1600_StatePermute+0x64>
1c009b26:	1a400637          	lui	a2,0x1a400
1c009b2a:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c009b2e:	03100513          	li	a0,49
1c009b32:	4732                	lw	a4,12(sp)
1c009b34:	47b2                	lw	a5,12(sp)
1c009b36:	070a                	slli	a4,a4,0x2
1c009b38:	9732                	add	a4,a4,a2
1c009b3a:	4314                	lw	a3,0(a4)
1c009b3c:	4732                	lw	a4,12(sp)
1c009b3e:	078a                	slli	a5,a5,0x2
1c009b40:	97ae                	add	a5,a5,a1
1c009b42:	0705                	addi	a4,a4,1
1c009b44:	c63a                	sw	a4,12(sp)
1c009b46:	4732                	lw	a4,12(sp)
1c009b48:	c394                	sw	a3,0(a5)
1c009b4a:	fee554e3          	bge	a0,a4,1c009b32 <KeccakF1600_StatePermute+0x48>
1c009b4e:	0141                	addi	sp,sp,16
1c009b50:	8082                	ret

1c009b52 <KYBER_poly_ntt>:
1c009b52:	1a4007b7          	lui	a5,0x1a400
1c009b56:	4705                	li	a4,1
1c009b58:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009b5c:	3007a423          	sw	zero,776(a5)
1c009b60:	20050693          	addi	a3,a0,512
1c009b64:	1a400737          	lui	a4,0x1a400
1c009b68:	411c                	lw	a5,0(a0)
1c009b6a:	0511                	addi	a0,a0,4
1c009b6c:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009b70:	fed51ce3          	bne	a0,a3,1c009b68 <KYBER_poly_ntt+0x16>
1c009b74:	08000793          	li	a5,128
1c009b78:	30f72423          	sw	a5,776(a4)
1c009b7c:	30072423          	sw	zero,776(a4)
1c009b80:	1a400737          	lui	a4,0x1a400
1c009b84:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c009b88:	8b85                	andi	a5,a5,1
1c009b8a:	dfed                	beqz	a5,1c009b84 <KYBER_poly_ntt+0x32>
1c009b8c:	47c1                	li	a5,16
1c009b8e:	30f72423          	sw	a5,776(a4)
1c009b92:	30072423          	sw	zero,776(a4)
1c009b96:	20058693          	addi	a3,a1,512
1c009b9a:	1a400737          	lui	a4,0x1a400
1c009b9e:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c009ba2:	0591                	addi	a1,a1,4
1c009ba4:	fef5ae23          	sw	a5,-4(a1)
1c009ba8:	fed59be3          	bne	a1,a3,1c009b9e <KYBER_poly_ntt+0x4c>
1c009bac:	8082                	ret

1c009bae <KYBER_poly_intt>:
1c009bae:	1a4007b7          	lui	a5,0x1a400
1c009bb2:	4709                	li	a4,2
1c009bb4:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009bb8:	3007a423          	sw	zero,776(a5)
1c009bbc:	20050693          	addi	a3,a0,512
1c009bc0:	1a400737          	lui	a4,0x1a400
1c009bc4:	411c                	lw	a5,0(a0)
1c009bc6:	0511                	addi	a0,a0,4
1c009bc8:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009bcc:	fed51ce3          	bne	a0,a3,1c009bc4 <KYBER_poly_intt+0x16>
1c009bd0:	20000793          	li	a5,512
1c009bd4:	30f72423          	sw	a5,776(a4)
1c009bd8:	30072423          	sw	zero,776(a4)
1c009bdc:	1a400737          	lui	a4,0x1a400
1c009be0:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c009be4:	8b85                	andi	a5,a5,1
1c009be6:	dfed                	beqz	a5,1c009be0 <KYBER_poly_intt+0x32>
1c009be8:	47c1                	li	a5,16
1c009bea:	30f72423          	sw	a5,776(a4)
1c009bee:	30072423          	sw	zero,776(a4)
1c009bf2:	20058693          	addi	a3,a1,512
1c009bf6:	1a400737          	lui	a4,0x1a400
1c009bfa:	0001                	nop
1c009bfc:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c009c00:	0591                	addi	a1,a1,4
1c009c02:	fef5ae23          	sw	a5,-4(a1)
1c009c06:	fed59ae3          	bne	a1,a3,1c009bfa <KYBER_poly_intt+0x4c>
1c009c0a:	8082                	ret

1c009c0c <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>:
1c009c0c:	1101                	addi	sp,sp,-32
1c009c0e:	55555f37          	lui	t5,0x55555
1c009c12:	ce22                	sw	s0,28(sp)
1c009c14:	cc26                	sw	s1,24(sp)
1c009c16:	ca4a                	sw	s2,20(sp)
1c009c18:	c84e                	sw	s3,16(sp)
1c009c1a:	c652                	sw	s4,12(sp)
1c009c1c:	20050f93          	addi	t6,a0,512
1c009c20:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009c24:	0015c683          	lbu	a3,1(a1)
1c009c28:	0005c603          	lbu	a2,0(a1)
1c009c2c:	0025c783          	lbu	a5,2(a1)
1c009c30:	0035c703          	lbu	a4,3(a1)
1c009c34:	06a2                	slli	a3,a3,0x8
1c009c36:	8ed1                	or	a3,a3,a2
1c009c38:	07c2                	slli	a5,a5,0x10
1c009c3a:	8fd5                	or	a5,a5,a3
1c009c3c:	0762                	slli	a4,a4,0x18
1c009c3e:	8f5d                	or	a4,a4,a5
1c009c40:	00175793          	srli	a5,a4,0x1
1c009c44:	01e7f7b3          	and	a5,a5,t5
1c009c48:	01e77733          	and	a4,a4,t5
1c009c4c:	97ba                	add	a5,a5,a4
1c009c4e:	0027da13          	srli	s4,a5,0x2
1c009c52:	0047d313          	srli	t1,a5,0x4
1c009c56:	0067d993          	srli	s3,a5,0x6
1c009c5a:	0087d893          	srli	a7,a5,0x8
1c009c5e:	00a7d913          	srli	s2,a5,0xa
1c009c62:	00c7d813          	srli	a6,a5,0xc
1c009c66:	00e7d493          	srli	s1,a5,0xe
1c009c6a:	0107d613          	srli	a2,a5,0x10
1c009c6e:	0127d413          	srli	s0,a5,0x12
1c009c72:	0147d693          	srli	a3,a5,0x14
1c009c76:	0167d393          	srli	t2,a5,0x16
1c009c7a:	0187d713          	srli	a4,a5,0x18
1c009c7e:	01a7d293          	srli	t0,a5,0x1a
1c009c82:	01c7de93          	srli	t4,a5,0x1c
1c009c86:	0037fe13          	andi	t3,a5,3
1c009c8a:	003a7a13          	andi	s4,s4,3
1c009c8e:	00337313          	andi	t1,t1,3
1c009c92:	0039f993          	andi	s3,s3,3
1c009c96:	0038f893          	andi	a7,a7,3
1c009c9a:	00397913          	andi	s2,s2,3
1c009c9e:	00387813          	andi	a6,a6,3
1c009ca2:	888d                	andi	s1,s1,3
1c009ca4:	8a0d                	andi	a2,a2,3
1c009ca6:	880d                	andi	s0,s0,3
1c009ca8:	8a8d                	andi	a3,a3,3
1c009caa:	0033f393          	andi	t2,t2,3
1c009cae:	8b0d                	andi	a4,a4,3
1c009cb0:	0032f293          	andi	t0,t0,3
1c009cb4:	003efe93          	andi	t4,t4,3
1c009cb8:	83f9                	srli	a5,a5,0x1e
1c009cba:	414e0e33          	sub	t3,t3,s4
1c009cbe:	41330333          	sub	t1,t1,s3
1c009cc2:	412888b3          	sub	a7,a7,s2
1c009cc6:	40980833          	sub	a6,a6,s1
1c009cca:	8e01                	sub	a2,a2,s0
1c009ccc:	407686b3          	sub	a3,a3,t2
1c009cd0:	40570733          	sub	a4,a4,t0
1c009cd4:	40fe87b3          	sub	a5,t4,a5
1c009cd8:	01c51023          	sh	t3,0(a0)
1c009cdc:	00651123          	sh	t1,2(a0)
1c009ce0:	01151223          	sh	a7,4(a0)
1c009ce4:	01051323          	sh	a6,6(a0)
1c009ce8:	00c51423          	sh	a2,8(a0)
1c009cec:	00d51523          	sh	a3,10(a0)
1c009cf0:	00e51623          	sh	a4,12(a0)
1c009cf4:	00f51723          	sh	a5,14(a0)
1c009cf8:	0541                	addi	a0,a0,16
1c009cfa:	0591                	addi	a1,a1,4
1c009cfc:	f3f514e3          	bne	a0,t6,1c009c24 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1+0x18>
1c009d00:	4472                	lw	s0,28(sp)
1c009d02:	44e2                	lw	s1,24(sp)
1c009d04:	4952                	lw	s2,20(sp)
1c009d06:	49c2                	lw	s3,16(sp)
1c009d08:	4a32                	lw	s4,12(sp)
1c009d0a:	6105                	addi	sp,sp,32
1c009d0c:	8082                	ret

1c009d0e <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>:
1c009d0e:	1101                	addi	sp,sp,-32
1c009d10:	55555f37          	lui	t5,0x55555
1c009d14:	ce22                	sw	s0,28(sp)
1c009d16:	cc26                	sw	s1,24(sp)
1c009d18:	ca4a                	sw	s2,20(sp)
1c009d1a:	c84e                	sw	s3,16(sp)
1c009d1c:	c652                	sw	s4,12(sp)
1c009d1e:	20050f93          	addi	t6,a0,512
1c009d22:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009d26:	0015c683          	lbu	a3,1(a1)
1c009d2a:	0005c603          	lbu	a2,0(a1)
1c009d2e:	0025c783          	lbu	a5,2(a1)
1c009d32:	0035c703          	lbu	a4,3(a1)
1c009d36:	06a2                	slli	a3,a3,0x8
1c009d38:	8ed1                	or	a3,a3,a2
1c009d3a:	07c2                	slli	a5,a5,0x10
1c009d3c:	8fd5                	or	a5,a5,a3
1c009d3e:	0762                	slli	a4,a4,0x18
1c009d40:	8f5d                	or	a4,a4,a5
1c009d42:	00175793          	srli	a5,a4,0x1
1c009d46:	01e7f7b3          	and	a5,a5,t5
1c009d4a:	01e77733          	and	a4,a4,t5
1c009d4e:	97ba                	add	a5,a5,a4
1c009d50:	0027da13          	srli	s4,a5,0x2
1c009d54:	0047d313          	srli	t1,a5,0x4
1c009d58:	0067d993          	srli	s3,a5,0x6
1c009d5c:	0087d893          	srli	a7,a5,0x8
1c009d60:	00a7d913          	srli	s2,a5,0xa
1c009d64:	00c7d813          	srli	a6,a5,0xc
1c009d68:	00e7d493          	srli	s1,a5,0xe
1c009d6c:	0107d613          	srli	a2,a5,0x10
1c009d70:	0127d413          	srli	s0,a5,0x12
1c009d74:	0147d693          	srli	a3,a5,0x14
1c009d78:	0167d393          	srli	t2,a5,0x16
1c009d7c:	0187d713          	srli	a4,a5,0x18
1c009d80:	01a7d293          	srli	t0,a5,0x1a
1c009d84:	01c7de93          	srli	t4,a5,0x1c
1c009d88:	0037fe13          	andi	t3,a5,3
1c009d8c:	003a7a13          	andi	s4,s4,3
1c009d90:	00337313          	andi	t1,t1,3
1c009d94:	0039f993          	andi	s3,s3,3
1c009d98:	0038f893          	andi	a7,a7,3
1c009d9c:	00397913          	andi	s2,s2,3
1c009da0:	00387813          	andi	a6,a6,3
1c009da4:	888d                	andi	s1,s1,3
1c009da6:	8a0d                	andi	a2,a2,3
1c009da8:	880d                	andi	s0,s0,3
1c009daa:	8a8d                	andi	a3,a3,3
1c009dac:	0033f393          	andi	t2,t2,3
1c009db0:	8b0d                	andi	a4,a4,3
1c009db2:	0032f293          	andi	t0,t0,3
1c009db6:	003efe93          	andi	t4,t4,3
1c009dba:	83f9                	srli	a5,a5,0x1e
1c009dbc:	414e0e33          	sub	t3,t3,s4
1c009dc0:	41330333          	sub	t1,t1,s3
1c009dc4:	412888b3          	sub	a7,a7,s2
1c009dc8:	40980833          	sub	a6,a6,s1
1c009dcc:	8e01                	sub	a2,a2,s0
1c009dce:	407686b3          	sub	a3,a3,t2
1c009dd2:	40570733          	sub	a4,a4,t0
1c009dd6:	40fe87b3          	sub	a5,t4,a5
1c009dda:	01c51023          	sh	t3,0(a0)
1c009dde:	00651123          	sh	t1,2(a0)
1c009de2:	01151223          	sh	a7,4(a0)
1c009de6:	01051323          	sh	a6,6(a0)
1c009dea:	00c51423          	sh	a2,8(a0)
1c009dee:	00d51523          	sh	a3,10(a0)
1c009df2:	00e51623          	sh	a4,12(a0)
1c009df6:	00f51723          	sh	a5,14(a0)
1c009dfa:	0541                	addi	a0,a0,16
1c009dfc:	0591                	addi	a1,a1,4
1c009dfe:	f3f514e3          	bne	a0,t6,1c009d26 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2+0x18>
1c009e02:	4472                	lw	s0,28(sp)
1c009e04:	44e2                	lw	s1,24(sp)
1c009e06:	4952                	lw	s2,20(sp)
1c009e08:	49c2                	lw	s3,16(sp)
1c009e0a:	4a32                	lw	s4,12(sp)
1c009e0c:	6105                	addi	sp,sp,32
1c009e0e:	8082                	ret

1c009e10 <keccak_absorb.constprop.1>:
1c009e10:	7151                	addi	sp,sp,-240
1c009e12:	d3a6                	sw	s1,228(sp)
1c009e14:	cfce                	sw	s3,220(sp)
1c009e16:	cdd2                	sw	s4,216(sp)
1c009e18:	cbd6                	sw	s5,212(sp)
1c009e1a:	84b6                	mv	s1,a3
1c009e1c:	d786                	sw	ra,236(sp)
1c009e1e:	d5a2                	sw	s0,232(sp)
1c009e20:	d1ca                	sw	s2,224(sp)
1c009e22:	c9da                	sw	s6,208(sp)
1c009e24:	8a2a                	mv	s4,a0
1c009e26:	87ae                	mv	a5,a1
1c009e28:	8ab2                	mv	s5,a2
1c009e2a:	89aa                	mv	s3,a0
1c009e2c:	0c850693          	addi	a3,a0,200
1c009e30:	872a                	mv	a4,a0
1c009e32:	4581                	li	a1,0
1c009e34:	4601                	li	a2,0
1c009e36:	c30c                	sw	a1,0(a4)
1c009e38:	c350                	sw	a2,4(a4)
1c009e3a:	0721                	addi	a4,a4,8
1c009e3c:	fee69be3          	bne	a3,a4,1c009e32 <keccak_absorb.constprop.1+0x22>
1c009e40:	08700713          	li	a4,135
1c009e44:	09577363          	bgeu	a4,s5,1c009eca <keccak_absorb.constprop.1+0xba>
1c009e48:	08878b13          	addi	s6,a5,136
1c009e4c:	895a                	mv	s2,s6
1c009e4e:	08700413          	li	s0,135
1c009e52:	86d2                	mv	a3,s4
1c009e54:	0017c703          	lbu	a4,1(a5)
1c009e58:	0027ce03          	lbu	t3,2(a5)
1c009e5c:	0057c803          	lbu	a6,5(a5)
1c009e60:	0047cf03          	lbu	t5,4(a5)
1c009e64:	0067c503          	lbu	a0,6(a5)
1c009e68:	0007ce83          	lbu	t4,0(a5)
1c009e6c:	0037c583          	lbu	a1,3(a5)
1c009e70:	0077c603          	lbu	a2,7(a5)
1c009e74:	0722                	slli	a4,a4,0x8
1c009e76:	0e42                	slli	t3,t3,0x10
1c009e78:	0822                	slli	a6,a6,0x8
1c009e7a:	0006a303          	lw	t1,0(a3)
1c009e7e:	0046a883          	lw	a7,4(a3)
1c009e82:	01c76733          	or	a4,a4,t3
1c009e86:	01e86833          	or	a6,a6,t5
1c009e8a:	0542                	slli	a0,a0,0x10
1c009e8c:	01d76733          	or	a4,a4,t4
1c009e90:	05e2                	slli	a1,a1,0x18
1c009e92:	01056533          	or	a0,a0,a6
1c009e96:	0662                	slli	a2,a2,0x18
1c009e98:	8f4d                	or	a4,a4,a1
1c009e9a:	8e49                	or	a2,a2,a0
1c009e9c:	00e34733          	xor	a4,t1,a4
1c009ea0:	00c8c633          	xor	a2,a7,a2
1c009ea4:	c298                	sw	a4,0(a3)
1c009ea6:	c2d0                	sw	a2,4(a3)
1c009ea8:	07a1                	addi	a5,a5,8
1c009eaa:	06a1                	addi	a3,a3,8
1c009eac:	faf914e3          	bne	s2,a5,1c009e54 <keccak_absorb.constprop.1+0x44>
1c009eb0:	85d2                	mv	a1,s4
1c009eb2:	8552                	mv	a0,s4
1c009eb4:	391d                	jal	1c009aea <KeccakF1600_StatePermute>
1c009eb6:	f78a8a93          	addi	s5,s5,-136
1c009eba:	08890913          	addi	s2,s2,136
1c009ebe:	87da                	mv	a5,s6
1c009ec0:	01547563          	bgeu	s0,s5,1c009eca <keccak_absorb.constprop.1+0xba>
1c009ec4:	088b0b13          	addi	s6,s6,136
1c009ec8:	b769                	j	1c009e52 <keccak_absorb.constprop.1+0x42>
1c009eca:	0038                	addi	a4,sp,8
1c009ecc:	09010e13          	addi	t3,sp,144
1c009ed0:	86ba                	mv	a3,a4
1c009ed2:	0006a023          	sw	zero,0(a3)
1c009ed6:	0691                	addi	a3,a3,4
1c009ed8:	fede1de3          	bne	t3,a3,1c009ed2 <keccak_absorb.constprop.1+0xc2>
1c009edc:	080a8263          	beqz	s5,1c009f60 <keccak_absorb.constprop.1+0x150>
1c009ee0:	fffa8693          	addi	a3,s5,-1
1c009ee4:	4609                	li	a2,2
1c009ee6:	10d67163          	bgeu	a2,a3,1c009fe8 <keccak_absorb.constprop.1+0x1d8>
1c009eea:	ffcaf313          	andi	t1,s5,-4
1c009eee:	86be                	mv	a3,a5
1c009ef0:	933e                	add	t1,t1,a5
1c009ef2:	883a                	mv	a6,a4
1c009ef4:	0016c503          	lbu	a0,1(a3)
1c009ef8:	0006c883          	lbu	a7,0(a3)
1c009efc:	0026c583          	lbu	a1,2(a3)
1c009f00:	0036c603          	lbu	a2,3(a3)
1c009f04:	0522                	slli	a0,a0,0x8
1c009f06:	01156533          	or	a0,a0,a7
1c009f0a:	05c2                	slli	a1,a1,0x10
1c009f0c:	8dc9                	or	a1,a1,a0
1c009f0e:	0662                	slli	a2,a2,0x18
1c009f10:	8e4d                	or	a2,a2,a1
1c009f12:	00c82023          	sw	a2,0(a6)
1c009f16:	0691                	addi	a3,a3,4
1c009f18:	0811                	addi	a6,a6,4
1c009f1a:	fcd31de3          	bne	t1,a3,1c009ef4 <keccak_absorb.constprop.1+0xe4>
1c009f1e:	ffcaf693          	andi	a3,s5,-4
1c009f22:	02da8f63          	beq	s5,a3,1c009f60 <keccak_absorb.constprop.1+0x150>
1c009f26:	00d78633          	add	a2,a5,a3
1c009f2a:	00064503          	lbu	a0,0(a2)
1c009f2e:	098c                	addi	a1,sp,208
1c009f30:	95b6                	add	a1,a1,a3
1c009f32:	00168613          	addi	a2,a3,1
1c009f36:	f2a58c23          	sb	a0,-200(a1)
1c009f3a:	03567363          	bgeu	a2,s5,1c009f60 <keccak_absorb.constprop.1+0x150>
1c009f3e:	00c785b3          	add	a1,a5,a2
1c009f42:	0005c583          	lbu	a1,0(a1)
1c009f46:	0988                	addi	a0,sp,208
1c009f48:	962a                	add	a2,a2,a0
1c009f4a:	0689                	addi	a3,a3,2
1c009f4c:	f2b60c23          	sb	a1,-200(a2)
1c009f50:	0156f863          	bgeu	a3,s5,1c009f60 <keccak_absorb.constprop.1+0x150>
1c009f54:	97b6                	add	a5,a5,a3
1c009f56:	0007c783          	lbu	a5,0(a5)
1c009f5a:	96aa                	add	a3,a3,a0
1c009f5c:	f2f68c23          	sb	a5,-200(a3)
1c009f60:	099c                	addi	a5,sp,208
1c009f62:	9abe                	add	s5,s5,a5
1c009f64:	f29a8c23          	sb	s1,-200(s5)
1c009f68:	08f14783          	lbu	a5,143(sp)
1c009f6c:	f807e793          	ori	a5,a5,-128
1c009f70:	08f107a3          	sb	a5,143(sp)
1c009f74:	00174783          	lbu	a5,1(a4)
1c009f78:	00274303          	lbu	t1,2(a4)
1c009f7c:	00574503          	lbu	a0,5(a4)
1c009f80:	00474f03          	lbu	t5,4(a4)
1c009f84:	00674583          	lbu	a1,6(a4)
1c009f88:	00074e83          	lbu	t4,0(a4)
1c009f8c:	00374603          	lbu	a2,3(a4)
1c009f90:	00774683          	lbu	a3,7(a4)
1c009f94:	07a2                	slli	a5,a5,0x8
1c009f96:	0342                	slli	t1,t1,0x10
1c009f98:	0522                	slli	a0,a0,0x8
1c009f9a:	0009a883          	lw	a7,0(s3)
1c009f9e:	0049a803          	lw	a6,4(s3)
1c009fa2:	0067e7b3          	or	a5,a5,t1
1c009fa6:	01e56533          	or	a0,a0,t5
1c009faa:	05c2                	slli	a1,a1,0x10
1c009fac:	01d7e7b3          	or	a5,a5,t4
1c009fb0:	0662                	slli	a2,a2,0x18
1c009fb2:	8dc9                	or	a1,a1,a0
1c009fb4:	06e2                	slli	a3,a3,0x18
1c009fb6:	8e5d                	or	a2,a2,a5
1c009fb8:	00b6e7b3          	or	a5,a3,a1
1c009fbc:	00c8c633          	xor	a2,a7,a2
1c009fc0:	00f847b3          	xor	a5,a6,a5
1c009fc4:	00c9a023          	sw	a2,0(s3)
1c009fc8:	00f9a223          	sw	a5,4(s3)
1c009fcc:	0721                	addi	a4,a4,8
1c009fce:	09a1                	addi	s3,s3,8
1c009fd0:	faee12e3          	bne	t3,a4,1c009f74 <keccak_absorb.constprop.1+0x164>
1c009fd4:	50be                	lw	ra,236(sp)
1c009fd6:	542e                	lw	s0,232(sp)
1c009fd8:	549e                	lw	s1,228(sp)
1c009fda:	590e                	lw	s2,224(sp)
1c009fdc:	49fe                	lw	s3,220(sp)
1c009fde:	4a6e                	lw	s4,216(sp)
1c009fe0:	4ade                	lw	s5,212(sp)
1c009fe2:	4b4e                	lw	s6,208(sp)
1c009fe4:	616d                	addi	sp,sp,240
1c009fe6:	8082                	ret
1c009fe8:	4681                	li	a3,0
1c009fea:	bf35                	j	1c009f26 <keccak_absorb.constprop.1+0x116>

1c009fec <shake128_absorb>:
1c009fec:	7151                	addi	sp,sp,-240
1c009fee:	cfce                	sw	s3,220(sp)
1c009ff0:	89aa                	mv	s3,a0
1c009ff2:	0c800513          	li	a0,200
1c009ff6:	d5a2                	sw	s0,232(sp)
1c009ff8:	d3a6                	sw	s1,228(sp)
1c009ffa:	d786                	sw	ra,236(sp)
1c009ffc:	d1ca                	sw	s2,224(sp)
1c009ffe:	842e                	mv	s0,a1
1c00a000:	84b2                	mv	s1,a2
1c00a002:	586030ef          	jal	ra,1c00d588 <pi_l2_malloc>
1c00a006:	00a9a023          	sw	a0,0(s3)
1c00a00a:	1c050363          	beqz	a0,1c00a1d0 <shake128_absorb+0x1e4>
1c00a00e:	892a                	mv	s2,a0
1c00a010:	0c850713          	addi	a4,a0,200
1c00a014:	87aa                	mv	a5,a0
1c00a016:	4601                	li	a2,0
1c00a018:	4681                	li	a3,0
1c00a01a:	c390                	sw	a2,0(a5)
1c00a01c:	c3d4                	sw	a3,4(a5)
1c00a01e:	07a1                	addi	a5,a5,8
1c00a020:	fef71be3          	bne	a4,a5,1c00a016 <shake128_absorb+0x2a>
1c00a024:	0a700793          	li	a5,167
1c00a028:	0897f063          	bgeu	a5,s1,1c00a0a8 <shake128_absorb+0xbc>
1c00a02c:	0a700993          	li	s3,167
1c00a030:	87a2                	mv	a5,s0
1c00a032:	40890eb3          	sub	t4,s2,s0
1c00a036:	0a840413          	addi	s0,s0,168
1c00a03a:	0017c703          	lbu	a4,1(a5)
1c00a03e:	0027ce03          	lbu	t3,2(a5)
1c00a042:	0057c503          	lbu	a0,5(a5)
1c00a046:	0047cf83          	lbu	t6,4(a5)
1c00a04a:	0067c583          	lbu	a1,6(a5)
1c00a04e:	0007cf03          	lbu	t5,0(a5)
1c00a052:	0037c603          	lbu	a2,3(a5)
1c00a056:	0077c683          	lbu	a3,7(a5)
1c00a05a:	00fe8833          	add	a6,t4,a5
1c00a05e:	0722                	slli	a4,a4,0x8
1c00a060:	0e42                	slli	t3,t3,0x10
1c00a062:	0522                	slli	a0,a0,0x8
1c00a064:	00082303          	lw	t1,0(a6)
1c00a068:	00482883          	lw	a7,4(a6)
1c00a06c:	01c76733          	or	a4,a4,t3
1c00a070:	01f56533          	or	a0,a0,t6
1c00a074:	05c2                	slli	a1,a1,0x10
1c00a076:	01e76733          	or	a4,a4,t5
1c00a07a:	0662                	slli	a2,a2,0x18
1c00a07c:	8dc9                	or	a1,a1,a0
1c00a07e:	06e2                	slli	a3,a3,0x18
1c00a080:	8f51                	or	a4,a4,a2
1c00a082:	8ecd                	or	a3,a3,a1
1c00a084:	00e34733          	xor	a4,t1,a4
1c00a088:	00d8c6b3          	xor	a3,a7,a3
1c00a08c:	00e82023          	sw	a4,0(a6)
1c00a090:	00d82223          	sw	a3,4(a6)
1c00a094:	07a1                	addi	a5,a5,8
1c00a096:	faf412e3          	bne	s0,a5,1c00a03a <shake128_absorb+0x4e>
1c00a09a:	f5848493          	addi	s1,s1,-168
1c00a09e:	85ca                	mv	a1,s2
1c00a0a0:	854a                	mv	a0,s2
1c00a0a2:	34a1                	jal	1c009aea <KeccakF1600_StatePermute>
1c00a0a4:	f899e6e3          	bltu	s3,s1,1c00a030 <shake128_absorb+0x44>
1c00a0a8:	0b010313          	addi	t1,sp,176
1c00a0ac:	003c                	addi	a5,sp,8
1c00a0ae:	0007a023          	sw	zero,0(a5)
1c00a0b2:	0791                	addi	a5,a5,4
1c00a0b4:	fef31de3          	bne	t1,a5,1c00a0ae <shake128_absorb+0xc2>
1c00a0b8:	c0d9                	beqz	s1,1c00a13e <shake128_absorb+0x152>
1c00a0ba:	fff48793          	addi	a5,s1,-1
1c00a0be:	4709                	li	a4,2
1c00a0c0:	10f77663          	bgeu	a4,a5,1c00a1cc <shake128_absorb+0x1e0>
1c00a0c4:	ffc4f593          	andi	a1,s1,-4
1c00a0c8:	87a2                	mv	a5,s0
1c00a0ca:	95a2                	add	a1,a1,s0
1c00a0cc:	0028                	addi	a0,sp,8
1c00a0ce:	0017c603          	lbu	a2,1(a5)
1c00a0d2:	0007c803          	lbu	a6,0(a5)
1c00a0d6:	0027c683          	lbu	a3,2(a5)
1c00a0da:	0037c703          	lbu	a4,3(a5)
1c00a0de:	0622                	slli	a2,a2,0x8
1c00a0e0:	01066633          	or	a2,a2,a6
1c00a0e4:	06c2                	slli	a3,a3,0x10
1c00a0e6:	8ed1                	or	a3,a3,a2
1c00a0e8:	0762                	slli	a4,a4,0x18
1c00a0ea:	8f55                	or	a4,a4,a3
1c00a0ec:	c118                	sw	a4,0(a0)
1c00a0ee:	0791                	addi	a5,a5,4
1c00a0f0:	0511                	addi	a0,a0,4
1c00a0f2:	fcf59ee3          	bne	a1,a5,1c00a0ce <shake128_absorb+0xe2>
1c00a0f6:	ffc4f793          	andi	a5,s1,-4
1c00a0fa:	04f48263          	beq	s1,a5,1c00a13e <shake128_absorb+0x152>
1c00a0fe:	00f40733          	add	a4,s0,a5
1c00a102:	00074603          	lbu	a2,0(a4)
1c00a106:	0994                	addi	a3,sp,208
1c00a108:	96be                	add	a3,a3,a5
1c00a10a:	00178713          	addi	a4,a5,1
1c00a10e:	f2c68c23          	sb	a2,-200(a3)
1c00a112:	02977663          	bgeu	a4,s1,1c00a13e <shake128_absorb+0x152>
1c00a116:	00e406b3          	add	a3,s0,a4
1c00a11a:	0006c603          	lbu	a2,0(a3)
1c00a11e:	0994                	addi	a3,sp,208
1c00a120:	96ba                	add	a3,a3,a4
1c00a122:	f2c68c23          	sb	a2,-200(a3)
1c00a126:	00278713          	addi	a4,a5,2
1c00a12a:	00977a63          	bgeu	a4,s1,1c00a13e <shake128_absorb+0x152>
1c00a12e:	00e407b3          	add	a5,s0,a4
1c00a132:	0007c683          	lbu	a3,0(a5)
1c00a136:	099c                	addi	a5,sp,208
1c00a138:	97ba                	add	a5,a5,a4
1c00a13a:	f2d78c23          	sb	a3,-200(a5)
1c00a13e:	099c                	addi	a5,sp,208
1c00a140:	00978633          	add	a2,a5,s1
1c00a144:	47fd                	li	a5,31
1c00a146:	f2f60c23          	sb	a5,-200(a2)
1c00a14a:	0af14703          	lbu	a4,175(sp)
1c00a14e:	003c                	addi	a5,sp,8
1c00a150:	40f90933          	sub	s2,s2,a5
1c00a154:	f8076713          	ori	a4,a4,-128
1c00a158:	0ae107a3          	sb	a4,175(sp)
1c00a15c:	0017c703          	lbu	a4,1(a5)
1c00a160:	0027cf83          	lbu	t6,2(a5)
1c00a164:	0057c883          	lbu	a7,5(a5)
1c00a168:	0047c503          	lbu	a0,4(a5)
1c00a16c:	0067c803          	lbu	a6,6(a5)
1c00a170:	0007c583          	lbu	a1,0(a5)
1c00a174:	0037c603          	lbu	a2,3(a5)
1c00a178:	0077c683          	lbu	a3,7(a5)
1c00a17c:	00f90e33          	add	t3,s2,a5
1c00a180:	0722                	slli	a4,a4,0x8
1c00a182:	0fc2                	slli	t6,t6,0x10
1c00a184:	08a2                	slli	a7,a7,0x8
1c00a186:	000e2f03          	lw	t5,0(t3)
1c00a18a:	004e2e83          	lw	t4,4(t3)
1c00a18e:	01f76733          	or	a4,a4,t6
1c00a192:	00a8e8b3          	or	a7,a7,a0
1c00a196:	0842                	slli	a6,a6,0x10
1c00a198:	8f4d                	or	a4,a4,a1
1c00a19a:	0662                	slli	a2,a2,0x18
1c00a19c:	01186833          	or	a6,a6,a7
1c00a1a0:	06e2                	slli	a3,a3,0x18
1c00a1a2:	8f51                	or	a4,a4,a2
1c00a1a4:	0106e6b3          	or	a3,a3,a6
1c00a1a8:	00ef4733          	xor	a4,t5,a4
1c00a1ac:	00dec6b3          	xor	a3,t4,a3
1c00a1b0:	00ee2023          	sw	a4,0(t3)
1c00a1b4:	00de2223          	sw	a3,4(t3)
1c00a1b8:	07a1                	addi	a5,a5,8
1c00a1ba:	faf311e3          	bne	t1,a5,1c00a15c <shake128_absorb+0x170>
1c00a1be:	50be                	lw	ra,236(sp)
1c00a1c0:	542e                	lw	s0,232(sp)
1c00a1c2:	549e                	lw	s1,228(sp)
1c00a1c4:	590e                	lw	s2,224(sp)
1c00a1c6:	49fe                	lw	s3,220(sp)
1c00a1c8:	616d                	addi	sp,sp,240
1c00a1ca:	8082                	ret
1c00a1cc:	4781                	li	a5,0
1c00a1ce:	bf05                	j	1c00a0fe <shake128_absorb+0x112>
1c00a1d0:	06f00513          	li	a0,111
1c00a1d4:	280020ef          	jal	ra,1c00c454 <exit>

1c00a1d8 <shake128_squeezeblocks>:
1c00a1d8:	1101                	addi	sp,sp,-32
1c00a1da:	c05a                	sw	s6,0(sp)
1c00a1dc:	ce06                	sw	ra,28(sp)
1c00a1de:	cc22                	sw	s0,24(sp)
1c00a1e0:	ca26                	sw	s1,20(sp)
1c00a1e2:	c84a                	sw	s2,16(sp)
1c00a1e4:	c64e                	sw	s3,12(sp)
1c00a1e6:	c452                	sw	s4,8(sp)
1c00a1e8:	c256                	sw	s5,4(sp)
1c00a1ea:	00062b03          	lw	s6,0(a2)
1c00a1ee:	c5e9                	beqz	a1,1c00a2b8 <shake128_squeezeblocks+0xe0>
1c00a1f0:	7ac1                	lui	s5,0xffff0
1c00a1f2:	ff010a37          	lui	s4,0xff010
1c00a1f6:	010009b7          	lui	s3,0x1000
1c00a1fa:	84ae                	mv	s1,a1
1c00a1fc:	892a                	mv	s2,a0
1c00a1fe:	0a8b0413          	addi	s0,s6,168
1c00a202:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a206:	1a7d                	addi	s4,s4,-1
1c00a208:	19fd                	addi	s3,s3,-1
1c00a20a:	85da                	mv	a1,s6
1c00a20c:	855a                	mv	a0,s6
1c00a20e:	38f1                	jal	1c009aea <KeccakF1600_StatePermute>
1c00a210:	85da                	mv	a1,s6
1c00a212:	00490813          	addi	a6,s2,4
1c00a216:	4198                	lw	a4,0(a1)
1c00a218:	41dc                	lw	a5,4(a1)
1c00a21a:	05a1                	addi	a1,a1,8
1c00a21c:	00875893          	srli	a7,a4,0x8
1c00a220:	0087d513          	srli	a0,a5,0x8
1c00a224:	0ff77613          	andi	a2,a4,255
1c00a228:	0ff7f693          	andi	a3,a5,255
1c00a22c:	0ff8f893          	andi	a7,a7,255
1c00a230:	0ff57513          	andi	a0,a0,255
1c00a234:	08a2                	slli	a7,a7,0x8
1c00a236:	0522                	slli	a0,a0,0x8
1c00a238:	01567633          	and	a2,a2,s5
1c00a23c:	0156f6b3          	and	a3,a3,s5
1c00a240:	01166633          	or	a2,a2,a7
1c00a244:	8ec9                	or	a3,a3,a0
1c00a246:	00ff08b7          	lui	a7,0xff0
1c00a24a:	00ff0537          	lui	a0,0xff0
1c00a24e:	011778b3          	and	a7,a4,a7
1c00a252:	8d7d                	and	a0,a0,a5
1c00a254:	01467633          	and	a2,a2,s4
1c00a258:	0146f6b3          	and	a3,a3,s4
1c00a25c:	01166633          	or	a2,a2,a7
1c00a260:	8ec9                	or	a3,a3,a0
1c00a262:	8361                	srli	a4,a4,0x18
1c00a264:	83e1                	srli	a5,a5,0x18
1c00a266:	01367633          	and	a2,a2,s3
1c00a26a:	0136f6b3          	and	a3,a3,s3
1c00a26e:	0762                	slli	a4,a4,0x18
1c00a270:	07e2                	slli	a5,a5,0x18
1c00a272:	8f51                	or	a4,a4,a2
1c00a274:	8fd5                	or	a5,a5,a3
1c00a276:	00875e13          	srli	t3,a4,0x8
1c00a27a:	01075313          	srli	t1,a4,0x10
1c00a27e:	0087d893          	srli	a7,a5,0x8
1c00a282:	0107d513          	srli	a0,a5,0x10
1c00a286:	8361                	srli	a4,a4,0x18
1c00a288:	83e1                	srli	a5,a5,0x18
1c00a28a:	fec80e23          	sb	a2,-4(a6)
1c00a28e:	ffc80ea3          	sb	t3,-3(a6)
1c00a292:	fe680f23          	sb	t1,-2(a6)
1c00a296:	fee80fa3          	sb	a4,-1(a6)
1c00a29a:	00d80023          	sb	a3,0(a6)
1c00a29e:	011800a3          	sb	a7,1(a6)
1c00a2a2:	00a80123          	sb	a0,2(a6)
1c00a2a6:	00f801a3          	sb	a5,3(a6)
1c00a2aa:	0821                	addi	a6,a6,8
1c00a2ac:	f6b415e3          	bne	s0,a1,1c00a216 <shake128_squeezeblocks+0x3e>
1c00a2b0:	14fd                	addi	s1,s1,-1
1c00a2b2:	0a890913          	addi	s2,s2,168
1c00a2b6:	f8b1                	bnez	s1,1c00a20a <shake128_squeezeblocks+0x32>
1c00a2b8:	40f2                	lw	ra,28(sp)
1c00a2ba:	4462                	lw	s0,24(sp)
1c00a2bc:	44d2                	lw	s1,20(sp)
1c00a2be:	4942                	lw	s2,16(sp)
1c00a2c0:	49b2                	lw	s3,12(sp)
1c00a2c2:	4a22                	lw	s4,8(sp)
1c00a2c4:	4a92                	lw	s5,4(sp)
1c00a2c6:	4b02                	lw	s6,0(sp)
1c00a2c8:	6105                	addi	sp,sp,32
1c00a2ca:	8082                	ret

1c00a2cc <shake128_ctx_release>:
1c00a2cc:	4108                	lw	a0,0(a0)
1c00a2ce:	0c800593          	li	a1,200
1c00a2d2:	2c20306f          	j	1c00d594 <pi_l2_free>

1c00a2d6 <shake256>:
1c00a2d6:	7131                	addi	sp,sp,-192
1c00a2d8:	db26                	sw	s1,180(sp)
1c00a2da:	d74e                	sw	s3,172(sp)
1c00a2dc:	84aa                	mv	s1,a0
1c00a2de:	08800993          	li	s3,136
1c00a2e2:	0c800513          	li	a0,200
1c00a2e6:	dd22                	sw	s0,184(sp)
1c00a2e8:	d94a                	sw	s2,176(sp)
1c00a2ea:	d356                	sw	s5,164(sp)
1c00a2ec:	df06                	sw	ra,188(sp)
1c00a2ee:	d552                	sw	s4,168(sp)
1c00a2f0:	d15a                	sw	s6,160(sp)
1c00a2f2:	cf5e                	sw	s7,156(sp)
1c00a2f4:	cd62                	sw	s8,152(sp)
1c00a2f6:	0335d9b3          	divu	s3,a1,s3
1c00a2fa:	892e                	mv	s2,a1
1c00a2fc:	8432                	mv	s0,a2
1c00a2fe:	8ab6                	mv	s5,a3
1c00a300:	288030ef          	jal	ra,1c00d588 <pi_l2_malloc>
1c00a304:	24050763          	beqz	a0,1c00a552 <shake256+0x27c>
1c00a308:	46fd                	li	a3,31
1c00a30a:	8656                	mv	a2,s5
1c00a30c:	85a2                	mv	a1,s0
1c00a30e:	8a2a                	mv	s4,a0
1c00a310:	3601                	jal	1c009e10 <keccak_absorb.constprop.1>
1c00a312:	08700793          	li	a5,135
1c00a316:	0d27ff63          	bgeu	a5,s2,1c00a3f4 <shake256+0x11e>
1c00a31a:	00499413          	slli	s0,s3,0x4
1c00a31e:	944e                	add	s0,s0,s3
1c00a320:	040e                	slli	s0,s0,0x3
1c00a322:	7bc1                	lui	s7,0xffff0
1c00a324:	ff010b37          	lui	s6,0xff010
1c00a328:	01000ab7          	lui	s5,0x1000
1c00a32c:	9426                	add	s0,s0,s1
1c00a32e:	8c26                	mv	s8,s1
1c00a330:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a334:	1b7d                	addi	s6,s6,-1
1c00a336:	1afd                	addi	s5,s5,-1
1c00a338:	85d2                	mv	a1,s4
1c00a33a:	8552                	mv	a0,s4
1c00a33c:	faeff0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00a340:	87e2                	mv	a5,s8
1c00a342:	418a0533          	sub	a0,s4,s8
1c00a346:	088c0593          	addi	a1,s8,136
1c00a34a:	00f50733          	add	a4,a0,a5
1c00a34e:	4314                	lw	a3,0(a4)
1c00a350:	4358                	lw	a4,4(a4)
1c00a352:	07a1                	addi	a5,a5,8
1c00a354:	0086d313          	srli	t1,a3,0x8
1c00a358:	00875893          	srli	a7,a4,0x8
1c00a35c:	0ff6f813          	andi	a6,a3,255
1c00a360:	0ff77613          	andi	a2,a4,255
1c00a364:	0ff37313          	andi	t1,t1,255
1c00a368:	0ff8f893          	andi	a7,a7,255
1c00a36c:	0322                	slli	t1,t1,0x8
1c00a36e:	08a2                	slli	a7,a7,0x8
1c00a370:	01787833          	and	a6,a6,s7
1c00a374:	01767633          	and	a2,a2,s7
1c00a378:	00686833          	or	a6,a6,t1
1c00a37c:	01166633          	or	a2,a2,a7
1c00a380:	00ff0337          	lui	t1,0xff0
1c00a384:	00ff08b7          	lui	a7,0xff0
1c00a388:	0066f333          	and	t1,a3,t1
1c00a38c:	011778b3          	and	a7,a4,a7
1c00a390:	01687833          	and	a6,a6,s6
1c00a394:	01667633          	and	a2,a2,s6
1c00a398:	00686833          	or	a6,a6,t1
1c00a39c:	01166633          	or	a2,a2,a7
1c00a3a0:	82e1                	srli	a3,a3,0x18
1c00a3a2:	8361                	srli	a4,a4,0x18
1c00a3a4:	01587833          	and	a6,a6,s5
1c00a3a8:	01567633          	and	a2,a2,s5
1c00a3ac:	06e2                	slli	a3,a3,0x18
1c00a3ae:	0762                	slli	a4,a4,0x18
1c00a3b0:	00d866b3          	or	a3,a6,a3
1c00a3b4:	8f51                	or	a4,a4,a2
1c00a3b6:	0086de93          	srli	t4,a3,0x8
1c00a3ba:	0106de13          	srli	t3,a3,0x10
1c00a3be:	00875313          	srli	t1,a4,0x8
1c00a3c2:	01075893          	srli	a7,a4,0x10
1c00a3c6:	82e1                	srli	a3,a3,0x18
1c00a3c8:	8361                	srli	a4,a4,0x18
1c00a3ca:	ff078c23          	sb	a6,-8(a5)
1c00a3ce:	ffd78ca3          	sb	t4,-7(a5)
1c00a3d2:	ffc78d23          	sb	t3,-6(a5)
1c00a3d6:	fed78da3          	sb	a3,-5(a5)
1c00a3da:	fec78e23          	sb	a2,-4(a5)
1c00a3de:	fe678ea3          	sb	t1,-3(a5)
1c00a3e2:	ff178f23          	sb	a7,-2(a5)
1c00a3e6:	fee78fa3          	sb	a4,-1(a5)
1c00a3ea:	f6f590e3          	bne	a1,a5,1c00a34a <shake256+0x74>
1c00a3ee:	8c2e                	mv	s8,a1
1c00a3f0:	f48594e3          	bne	a1,s0,1c00a338 <shake256+0x62>
1c00a3f4:	08800593          	li	a1,136
1c00a3f8:	02b97933          	remu	s2,s2,a1
1c00a3fc:	02091263          	bnez	s2,1c00a420 <shake256+0x14a>
1c00a400:	546a                	lw	s0,184(sp)
1c00a402:	50fa                	lw	ra,188(sp)
1c00a404:	54da                	lw	s1,180(sp)
1c00a406:	594a                	lw	s2,176(sp)
1c00a408:	59ba                	lw	s3,172(sp)
1c00a40a:	5a9a                	lw	s5,164(sp)
1c00a40c:	5b0a                	lw	s6,160(sp)
1c00a40e:	4bfa                	lw	s7,156(sp)
1c00a410:	4c6a                	lw	s8,152(sp)
1c00a412:	8552                	mv	a0,s4
1c00a414:	5a2a                	lw	s4,168(sp)
1c00a416:	0c800593          	li	a1,200
1c00a41a:	6129                	addi	sp,sp,192
1c00a41c:	1780306f          	j	1c00d594 <pi_l2_free>
1c00a420:	85d2                	mv	a1,s4
1c00a422:	8552                	mv	a0,s4
1c00a424:	ec6ff0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00a428:	002c                	addi	a1,sp,8
1c00a42a:	78c1                	lui	a7,0xffff0
1c00a42c:	ff010837          	lui	a6,0xff010
1c00a430:	01000537          	lui	a0,0x1000
1c00a434:	09010e13          	addi	t3,sp,144
1c00a438:	862e                	mv	a2,a1
1c00a43a:	40ba0333          	sub	t1,s4,a1
1c00a43e:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a442:	187d                	addi	a6,a6,-1
1c00a444:	157d                	addi	a0,a0,-1
1c00a446:	00c307b3          	add	a5,t1,a2
1c00a44a:	0007ae83          	lw	t4,0(a5)
1c00a44e:	43d4                	lw	a3,4(a5)
1c00a450:	0621                	addi	a2,a2,8
1c00a452:	008edf93          	srli	t6,t4,0x8
1c00a456:	0086df13          	srli	t5,a3,0x8
1c00a45a:	0ffef713          	andi	a4,t4,255
1c00a45e:	0ff6f793          	andi	a5,a3,255
1c00a462:	0fffff93          	andi	t6,t6,255
1c00a466:	0fff7f13          	andi	t5,t5,255
1c00a46a:	0fa2                	slli	t6,t6,0x8
1c00a46c:	0f22                	slli	t5,t5,0x8
1c00a46e:	01177733          	and	a4,a4,a7
1c00a472:	0117f7b3          	and	a5,a5,a7
1c00a476:	01f76733          	or	a4,a4,t6
1c00a47a:	01e7e7b3          	or	a5,a5,t5
1c00a47e:	00ff0fb7          	lui	t6,0xff0
1c00a482:	00ff0f37          	lui	t5,0xff0
1c00a486:	01feffb3          	and	t6,t4,t6
1c00a48a:	01e6ff33          	and	t5,a3,t5
1c00a48e:	01077733          	and	a4,a4,a6
1c00a492:	0107f7b3          	and	a5,a5,a6
1c00a496:	01f76733          	or	a4,a4,t6
1c00a49a:	018ede93          	srli	t4,t4,0x18
1c00a49e:	01e7e7b3          	or	a5,a5,t5
1c00a4a2:	82e1                	srli	a3,a3,0x18
1c00a4a4:	0ee2                	slli	t4,t4,0x18
1c00a4a6:	8f69                	and	a4,a4,a0
1c00a4a8:	06e2                	slli	a3,a3,0x18
1c00a4aa:	8fe9                	and	a5,a5,a0
1c00a4ac:	01d76733          	or	a4,a4,t4
1c00a4b0:	8fd5                	or	a5,a5,a3
1c00a4b2:	fee62c23          	sw	a4,-8(a2)
1c00a4b6:	fef62e23          	sw	a5,-4(a2)
1c00a4ba:	f8ce16e3          	bne	t3,a2,1c00a446 <shake256+0x170>
1c00a4be:	fff90793          	addi	a5,s2,-1
1c00a4c2:	4709                	li	a4,2
1c00a4c4:	08f77363          	bgeu	a4,a5,1c00a54a <shake256+0x274>
1c00a4c8:	00499413          	slli	s0,s3,0x4
1c00a4cc:	013407b3          	add	a5,s0,s3
1c00a4d0:	078e                	slli	a5,a5,0x3
1c00a4d2:	97a6                	add	a5,a5,s1
1c00a4d4:	0fc97813          	andi	a6,s2,252
1c00a4d8:	983e                	add	a6,a6,a5
1c00a4da:	4198                	lw	a4,0(a1)
1c00a4dc:	0791                	addi	a5,a5,4
1c00a4de:	0591                	addi	a1,a1,4
1c00a4e0:	00875513          	srli	a0,a4,0x8
1c00a4e4:	01075613          	srli	a2,a4,0x10
1c00a4e8:	01875693          	srli	a3,a4,0x18
1c00a4ec:	fea78ea3          	sb	a0,-3(a5)
1c00a4f0:	fec78f23          	sb	a2,-2(a5)
1c00a4f4:	fed78fa3          	sb	a3,-1(a5)
1c00a4f8:	fee78e23          	sb	a4,-4(a5)
1c00a4fc:	fcf81fe3          	bne	a6,a5,1c00a4da <shake256+0x204>
1c00a500:	ffc97793          	andi	a5,s2,-4
1c00a504:	eef90ee3          	beq	s2,a5,1c00a400 <shake256+0x12a>
1c00a508:	0918                	addi	a4,sp,144
1c00a50a:	973e                	add	a4,a4,a5
1c00a50c:	99a2                	add	s3,s3,s0
1c00a50e:	f7874683          	lbu	a3,-136(a4)
1c00a512:	098e                	slli	s3,s3,0x3
1c00a514:	99a6                	add	s3,s3,s1
1c00a516:	00f98733          	add	a4,s3,a5
1c00a51a:	00d70023          	sb	a3,0(a4)
1c00a51e:	00178713          	addi	a4,a5,1
1c00a522:	ed277fe3          	bgeu	a4,s2,1c00a400 <shake256+0x12a>
1c00a526:	0914                	addi	a3,sp,144
1c00a528:	96ba                	add	a3,a3,a4
1c00a52a:	f786c683          	lbu	a3,-136(a3)
1c00a52e:	974e                	add	a4,a4,s3
1c00a530:	0789                	addi	a5,a5,2
1c00a532:	00d70023          	sb	a3,0(a4)
1c00a536:	ed27f5e3          	bgeu	a5,s2,1c00a400 <shake256+0x12a>
1c00a53a:	0918                	addi	a4,sp,144
1c00a53c:	973e                	add	a4,a4,a5
1c00a53e:	f7874703          	lbu	a4,-136(a4)
1c00a542:	99be                	add	s3,s3,a5
1c00a544:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00a548:	bd65                	j	1c00a400 <shake256+0x12a>
1c00a54a:	4781                	li	a5,0
1c00a54c:	00499413          	slli	s0,s3,0x4
1c00a550:	bf65                	j	1c00a508 <shake256+0x232>
1c00a552:	06f00513          	li	a0,111
1c00a556:	6ff010ef          	jal	ra,1c00c454 <exit>

1c00a55a <sha3_256>:
1c00a55a:	712d                	addi	sp,sp,-288
1c00a55c:	10812c23          	sw	s0,280(sp)
1c00a560:	4699                	li	a3,6
1c00a562:	842a                	mv	s0,a0
1c00a564:	0828                	addi	a0,sp,24
1c00a566:	10112e23          	sw	ra,284(sp)
1c00a56a:	10912a23          	sw	s1,276(sp)
1c00a56e:	11212823          	sw	s2,272(sp)
1c00a572:	11312623          	sw	s3,268(sp)
1c00a576:	11412423          	sw	s4,264(sp)
1c00a57a:	11512223          	sw	s5,260(sp)
1c00a57e:	11612023          	sw	s6,256(sp)
1c00a582:	dfde                	sw	s7,252(sp)
1c00a584:	dde2                	sw	s8,248(sp)
1c00a586:	dbe6                	sw	s9,244(sp)
1c00a588:	d9ea                	sw	s10,240(sp)
1c00a58a:	d7ee                	sw	s11,236(sp)
1c00a58c:	3051                	jal	1c009e10 <keccak_absorb.constprop.1>
1c00a58e:	082c                	addi	a1,sp,24
1c00a590:	852e                	mv	a0,a1
1c00a592:	d58ff0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00a596:	4372                	lw	t1,28(sp)
1c00a598:	5612                	lw	a2,36(sp)
1c00a59a:	5732                	lw	a4,44(sp)
1c00a59c:	5582                	lw	a1,32(sp)
1c00a59e:	56a2                	lw	a3,40(sp)
1c00a5a0:	59d2                	lw	s3,52(sp)
1c00a5a2:	4ae2                	lw	s5,24(sp)
1c00a5a4:	00835293          	srli	t0,t1,0x8
1c00a5a8:	00865f13          	srli	t5,a2,0x8
1c00a5ac:	00875893          	srli	a7,a4,0x8
1c00a5b0:	5a42                	lw	s4,48(sp)
1c00a5b2:	0085df93          	srli	t6,a1,0x8
1c00a5b6:	0086de93          	srli	t4,a3,0x8
1c00a5ba:	0ff2f293          	andi	t0,t0,255
1c00a5be:	0fff7f13          	andi	t5,t5,255
1c00a5c2:	0ff8f893          	andi	a7,a7,255
1c00a5c6:	0ff37b93          	andi	s7,t1,255
1c00a5ca:	0ff67913          	andi	s2,a2,255
1c00a5ce:	0ff77e13          	andi	t3,a4,255
1c00a5d2:	008ad393          	srli	t2,s5,0x8
1c00a5d6:	0089d513          	srli	a0,s3,0x8
1c00a5da:	0fffff93          	andi	t6,t6,255
1c00a5de:	0ffefe93          	andi	t4,t4,255
1c00a5e2:	02a2                	slli	t0,t0,0x8
1c00a5e4:	0f22                	slli	t5,t5,0x8
1c00a5e6:	08a2                	slli	a7,a7,0x8
1c00a5e8:	ff0107b7          	lui	a5,0xff010
1c00a5ec:	17fd                	addi	a5,a5,-1
1c00a5ee:	0ff5fb13          	andi	s6,a1,255
1c00a5f2:	0ff6f493          	andi	s1,a3,255
1c00a5f6:	005be2b3          	or	t0,s7,t0
1c00a5fa:	01e96f33          	or	t5,s2,t5
1c00a5fe:	011e68b3          	or	a7,t3,a7
1c00a602:	0ff3f393          	andi	t2,t2,255
1c00a606:	0fa2                	slli	t6,t6,0x8
1c00a608:	0ea2                	slli	t4,t4,0x8
1c00a60a:	0ff57513          	andi	a0,a0,255
1c00a60e:	00ff0bb7          	lui	s7,0xff0
1c00a612:	0ffafc13          	andi	s8,s5,255
1c00a616:	0ff9f913          	andi	s2,s3,255
1c00a61a:	01767bb3          	and	s7,a2,s7
1c00a61e:	00f8fe33          	and	t3,a7,a5
1c00a622:	008a5813          	srli	a6,s4,0x8
1c00a626:	01fb6fb3          	or	t6,s6,t6
1c00a62a:	01d4eeb3          	or	t4,s1,t4
1c00a62e:	00ff7f33          	and	t5,t5,a5
1c00a632:	010008b7          	lui	a7,0x1000
1c00a636:	03a2                	slli	t2,t2,0x8
1c00a638:	0522                	slli	a0,a0,0x8
1c00a63a:	00ff04b7          	lui	s1,0xff0
1c00a63e:	00ff0b37          	lui	s6,0xff0
1c00a642:	8cf5                	and	s1,s1,a3
1c00a644:	01677b33          	and	s6,a4,s6
1c00a648:	00a96533          	or	a0,s2,a0
1c00a64c:	007c63b3          	or	t2,s8,t2
1c00a650:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c00a654:	00fefeb3          	and	t4,t4,a5
1c00a658:	017f6f33          	or	t5,t5,s7
1c00a65c:	0ff87813          	andi	a6,a6,255
1c00a660:	00ff0c37          	lui	s8,0xff0
1c00a664:	8261                	srli	a2,a2,0x18
1c00a666:	0ffa7d93          	andi	s11,s4,255
1c00a66a:	0185fc33          	and	s8,a1,s8
1c00a66e:	012f7f33          	and	t5,t5,s2
1c00a672:	00ffffb3          	and	t6,t6,a5
1c00a676:	009eeeb3          	or	t4,t4,s1
1c00a67a:	016e6e33          	or	t3,t3,s6
1c00a67e:	8361                	srli	a4,a4,0x18
1c00a680:	0822                	slli	a6,a6,0x8
1c00a682:	00ff0d37          	lui	s10,0xff0
1c00a686:	82e1                	srli	a3,a3,0x18
1c00a688:	0662                	slli	a2,a2,0x18
1c00a68a:	01aafd33          	and	s10,s5,s10
1c00a68e:	010de833          	or	a6,s11,a6
1c00a692:	012efeb3          	and	t4,t4,s2
1c00a696:	012e7e33          	and	t3,t3,s2
1c00a69a:	00cf6633          	or	a2,t5,a2
1c00a69e:	018ada93          	srli	s5,s5,0x18
1c00a6a2:	018fefb3          	or	t6,t6,s8
1c00a6a6:	06e2                	slli	a3,a3,0x18
1c00a6a8:	01871c13          	slli	s8,a4,0x18
1c00a6ac:	00ff0bb7          	lui	s7,0xff0
1c00a6b0:	00f87b33          	and	s6,a6,a5
1c00a6b4:	00dee4b3          	or	s1,t4,a3
1c00a6b8:	017a7bb3          	and	s7,s4,s7
1c00a6bc:	018e66b3          	or	a3,t3,s8
1c00a6c0:	018a9813          	slli	a6,s5,0x18
1c00a6c4:	018a5713          	srli	a4,s4,0x18
1c00a6c8:	00865a93          	srli	s5,a2,0x8
1c00a6cc:	01065a13          	srli	s4,a2,0x10
1c00a6d0:	00ff0cb7          	lui	s9,0xff0
1c00a6d4:	8261                	srli	a2,a2,0x18
1c00a6d6:	c232                	sw	a2,4(sp)
1c00a6d8:	01937cb3          	and	s9,t1,s9
1c00a6dc:	0086d613          	srli	a2,a3,0x8
1c00a6e0:	00f3f3b3          	and	t2,t2,a5
1c00a6e4:	00f2f2b3          	and	t0,t0,a5
1c00a6e8:	c432                	sw	a2,8(sp)
1c00a6ea:	01a3e3b3          	or	t2,t2,s10
1c00a6ee:	0106d613          	srli	a2,a3,0x10
1c00a6f2:	0192e2b3          	or	t0,t0,s9
1c00a6f6:	01835313          	srli	t1,t1,0x18
1c00a6fa:	81e1                	srli	a1,a1,0x18
1c00a6fc:	00ff08b7          	lui	a7,0xff0
1c00a700:	8fe9                	and	a5,a5,a0
1c00a702:	0123f3b3          	and	t2,t2,s2
1c00a706:	0122f2b3          	and	t0,t0,s2
1c00a70a:	012fffb3          	and	t6,t6,s2
1c00a70e:	c632                	sw	a2,12(sp)
1c00a710:	0119f8b3          	and	a7,s3,a7
1c00a714:	4612                	lw	a2,4(sp)
1c00a716:	01831513          	slli	a0,t1,0x18
1c00a71a:	05e2                	slli	a1,a1,0x18
1c00a71c:	017b6333          	or	t1,s6,s7
1c00a720:	0103e833          	or	a6,t2,a6
1c00a724:	00a2e533          	or	a0,t0,a0
1c00a728:	00bfe5b3          	or	a1,t6,a1
1c00a72c:	0117e8b3          	or	a7,a5,a7
1c00a730:	01237333          	and	t1,t1,s2
1c00a734:	0128f8b3          	and	a7,a7,s2
1c00a738:	00885d93          	srli	s11,a6,0x8
1c00a73c:	01085d13          	srli	s10,a6,0x10
1c00a740:	00855c93          	srli	s9,a0,0x8
1c00a744:	01055c13          	srli	s8,a0,0x10
1c00a748:	0085db93          	srli	s7,a1,0x8
1c00a74c:	0105db13          	srli	s6,a1,0x10
1c00a750:	0104d913          	srli	s2,s1,0x10
1c00a754:	0189d793          	srli	a5,s3,0x18
1c00a758:	8161                	srli	a0,a0,0x18
1c00a75a:	0084d993          	srli	s3,s1,0x8
1c00a75e:	81e1                	srli	a1,a1,0x18
1c00a760:	80e1                	srli	s1,s1,0x18
1c00a762:	01885813          	srli	a6,a6,0x18
1c00a766:	01b400a3          	sb	s11,1(s0)
1c00a76a:	01a40123          	sb	s10,2(s0)
1c00a76e:	019402a3          	sb	s9,5(s0)
1c00a772:	01840323          	sb	s8,6(s0)
1c00a776:	00a403a3          	sb	a0,7(s0)
1c00a77a:	017404a3          	sb	s7,9(s0)
1c00a77e:	01640523          	sb	s6,10(s0)
1c00a782:	00b405a3          	sb	a1,11(s0)
1c00a786:	015406a3          	sb	s5,13(s0)
1c00a78a:	01440723          	sb	s4,14(s0)
1c00a78e:	00c407a3          	sb	a2,15(s0)
1c00a792:	013408a3          	sb	s3,17(s0)
1c00a796:	01240923          	sb	s2,18(s0)
1c00a79a:	009409a3          	sb	s1,19(s0)
1c00a79e:	00740023          	sb	t2,0(s0)
1c00a7a2:	010401a3          	sb	a6,3(s0)
1c00a7a6:	00540223          	sb	t0,4(s0)
1c00a7aa:	01f40423          	sb	t6,8(s0)
1c00a7ae:	01e40623          	sb	t5,12(s0)
1c00a7b2:	01d40823          	sb	t4,16(s0)
1c00a7b6:	01c40a23          	sb	t3,20(s0)
1c00a7ba:	4622                	lw	a2,8(sp)
1c00a7bc:	0762                	slli	a4,a4,0x18
1c00a7be:	07e2                	slli	a5,a5,0x18
1c00a7c0:	00c40aa3          	sb	a2,21(s0)
1c00a7c4:	4632                	lw	a2,12(sp)
1c00a7c6:	00e36733          	or	a4,t1,a4
1c00a7ca:	00f8e7b3          	or	a5,a7,a5
1c00a7ce:	82e1                	srli	a3,a3,0x18
1c00a7d0:	00c40b23          	sb	a2,22(s0)
1c00a7d4:	00d40ba3          	sb	a3,23(s0)
1c00a7d8:	00875513          	srli	a0,a4,0x8
1c00a7dc:	01075593          	srli	a1,a4,0x10
1c00a7e0:	0087d613          	srli	a2,a5,0x8
1c00a7e4:	0107d693          	srli	a3,a5,0x10
1c00a7e8:	8361                	srli	a4,a4,0x18
1c00a7ea:	83e1                	srli	a5,a5,0x18
1c00a7ec:	00640c23          	sb	t1,24(s0)
1c00a7f0:	00a40ca3          	sb	a0,25(s0)
1c00a7f4:	00b40d23          	sb	a1,26(s0)
1c00a7f8:	00e40da3          	sb	a4,27(s0)
1c00a7fc:	01140e23          	sb	a7,28(s0)
1c00a800:	00c40ea3          	sb	a2,29(s0)
1c00a804:	00d40f23          	sb	a3,30(s0)
1c00a808:	00f40fa3          	sb	a5,31(s0)
1c00a80c:	11c12083          	lw	ra,284(sp)
1c00a810:	11812403          	lw	s0,280(sp)
1c00a814:	11412483          	lw	s1,276(sp)
1c00a818:	11012903          	lw	s2,272(sp)
1c00a81c:	10c12983          	lw	s3,268(sp)
1c00a820:	10812a03          	lw	s4,264(sp)
1c00a824:	10412a83          	lw	s5,260(sp)
1c00a828:	10012b03          	lw	s6,256(sp)
1c00a82c:	5bfe                	lw	s7,252(sp)
1c00a82e:	5c6e                	lw	s8,248(sp)
1c00a830:	5cde                	lw	s9,244(sp)
1c00a832:	5d4e                	lw	s10,240(sp)
1c00a834:	5dbe                	lw	s11,236(sp)
1c00a836:	6115                	addi	sp,sp,288
1c00a838:	8082                	ret

1c00a83a <sha3_512>:
1c00a83a:	7105                	addi	sp,sp,-480
1c00a83c:	1c812c23          	sw	s0,472(sp)
1c00a840:	1d312623          	sw	s3,460(sp)
1c00a844:	1d412423          	sw	s4,456(sp)
1c00a848:	1c112e23          	sw	ra,476(sp)
1c00a84c:	1c912a23          	sw	s1,468(sp)
1c00a850:	1d212823          	sw	s2,464(sp)
1c00a854:	1d512223          	sw	s5,452(sp)
1c00a858:	1d612023          	sw	s6,448(sp)
1c00a85c:	1b712e23          	sw	s7,444(sp)
1c00a860:	1b812c23          	sw	s8,440(sp)
1c00a864:	1b912a23          	sw	s9,436(sp)
1c00a868:	1ba12823          	sw	s10,432(sp)
1c00a86c:	1bb12623          	sw	s11,428(sp)
1c00a870:	842a                	mv	s0,a0
1c00a872:	8a32                	mv	s4,a2
1c00a874:	0d810993          	addi	s3,sp,216
1c00a878:	081c                	addi	a5,sp,16
1c00a87a:	4681                	li	a3,0
1c00a87c:	4701                	li	a4,0
1c00a87e:	c394                	sw	a3,0(a5)
1c00a880:	c3d8                	sw	a4,4(a5)
1c00a882:	07a1                	addi	a5,a5,8
1c00a884:	ff379be3          	bne	a5,s3,1c00a87a <sha3_512+0x40>
1c00a888:	04700793          	li	a5,71
1c00a88c:	0947f463          	bgeu	a5,s4,1c00a914 <sha3_512+0xda>
1c00a890:	04858a93          	addi	s5,a1,72
1c00a894:	8956                	mv	s2,s5
1c00a896:	04700493          	li	s1,71
1c00a89a:	0818                	addi	a4,sp,16
1c00a89c:	0015c783          	lbu	a5,1(a1)
1c00a8a0:	0025ce03          	lbu	t3,2(a1)
1c00a8a4:	0055c803          	lbu	a6,5(a1)
1c00a8a8:	0045cf03          	lbu	t5,4(a1)
1c00a8ac:	0065c503          	lbu	a0,6(a1)
1c00a8b0:	0005ce83          	lbu	t4,0(a1)
1c00a8b4:	0035c603          	lbu	a2,3(a1)
1c00a8b8:	0075c683          	lbu	a3,7(a1)
1c00a8bc:	07a2                	slli	a5,a5,0x8
1c00a8be:	0e42                	slli	t3,t3,0x10
1c00a8c0:	0822                	slli	a6,a6,0x8
1c00a8c2:	00072303          	lw	t1,0(a4)
1c00a8c6:	00472883          	lw	a7,4(a4)
1c00a8ca:	01c7e7b3          	or	a5,a5,t3
1c00a8ce:	01e86833          	or	a6,a6,t5
1c00a8d2:	0542                	slli	a0,a0,0x10
1c00a8d4:	01d7e7b3          	or	a5,a5,t4
1c00a8d8:	0662                	slli	a2,a2,0x18
1c00a8da:	01056533          	or	a0,a0,a6
1c00a8de:	06e2                	slli	a3,a3,0x18
1c00a8e0:	8fd1                	or	a5,a5,a2
1c00a8e2:	8ec9                	or	a3,a3,a0
1c00a8e4:	00f347b3          	xor	a5,t1,a5
1c00a8e8:	00d8c6b3          	xor	a3,a7,a3
1c00a8ec:	c31c                	sw	a5,0(a4)
1c00a8ee:	c354                	sw	a3,4(a4)
1c00a8f0:	05a1                	addi	a1,a1,8
1c00a8f2:	0721                	addi	a4,a4,8
1c00a8f4:	fb2594e3          	bne	a1,s2,1c00a89c <sha3_512+0x62>
1c00a8f8:	080c                	addi	a1,sp,16
1c00a8fa:	852e                	mv	a0,a1
1c00a8fc:	9eeff0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00a900:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c00a904:	04890913          	addi	s2,s2,72
1c00a908:	85d6                	mv	a1,s5
1c00a90a:	0144f563          	bgeu	s1,s4,1c00a914 <sha3_512+0xda>
1c00a90e:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c00a912:	b761                	j	1c00a89a <sha3_512+0x60>
1c00a914:	1218                	addi	a4,sp,288
1c00a916:	87ce                	mv	a5,s3
1c00a918:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00a91c:	0791                	addi	a5,a5,4
1c00a91e:	fee79de3          	bne	a5,a4,1c00a918 <sha3_512+0xde>
1c00a922:	080a0063          	beqz	s4,1c00a9a2 <sha3_512+0x168>
1c00a926:	fffa0793          	addi	a5,s4,-1
1c00a92a:	4709                	li	a4,2
1c00a92c:	68f77563          	bgeu	a4,a5,1c00afb6 <sha3_512+0x77c>
1c00a930:	ffca7813          	andi	a6,s4,-4
1c00a934:	87ae                	mv	a5,a1
1c00a936:	982e                	add	a6,a6,a1
1c00a938:	0017c603          	lbu	a2,1(a5)
1c00a93c:	0007c503          	lbu	a0,0(a5)
1c00a940:	0027c683          	lbu	a3,2(a5)
1c00a944:	0037c703          	lbu	a4,3(a5)
1c00a948:	0622                	slli	a2,a2,0x8
1c00a94a:	8e49                	or	a2,a2,a0
1c00a94c:	06c2                	slli	a3,a3,0x10
1c00a94e:	8ed1                	or	a3,a3,a2
1c00a950:	0762                	slli	a4,a4,0x18
1c00a952:	8f55                	or	a4,a4,a3
1c00a954:	00e9a023          	sw	a4,0(s3)
1c00a958:	0791                	addi	a5,a5,4
1c00a95a:	0991                	addi	s3,s3,4
1c00a95c:	fd079ee3          	bne	a5,a6,1c00a938 <sha3_512+0xfe>
1c00a960:	ffca7793          	andi	a5,s4,-4
1c00a964:	03478f63          	beq	a5,s4,1c00a9a2 <sha3_512+0x168>
1c00a968:	00f58733          	add	a4,a1,a5
1c00a96c:	00074603          	lbu	a2,0(a4)
1c00a970:	1314                	addi	a3,sp,416
1c00a972:	96be                	add	a3,a3,a5
1c00a974:	00178713          	addi	a4,a5,1
1c00a978:	f2c68c23          	sb	a2,-200(a3)
1c00a97c:	03477363          	bgeu	a4,s4,1c00a9a2 <sha3_512+0x168>
1c00a980:	00e586b3          	add	a3,a1,a4
1c00a984:	0006c683          	lbu	a3,0(a3)
1c00a988:	1310                	addi	a2,sp,416
1c00a98a:	9732                	add	a4,a4,a2
1c00a98c:	0789                	addi	a5,a5,2
1c00a98e:	f2d70c23          	sb	a3,-200(a4)
1c00a992:	0147f863          	bgeu	a5,s4,1c00a9a2 <sha3_512+0x168>
1c00a996:	95be                	add	a1,a1,a5
1c00a998:	0005c703          	lbu	a4,0(a1)
1c00a99c:	97b2                	add	a5,a5,a2
1c00a99e:	f2e78c23          	sb	a4,-200(a5)
1c00a9a2:	131c                	addi	a5,sp,416
1c00a9a4:	9a3e                	add	s4,s4,a5
1c00a9a6:	4799                	li	a5,6
1c00a9a8:	f2fa0c23          	sb	a5,-200(s4)
1c00a9ac:	0da14703          	lbu	a4,218(sp)
1c00a9b0:	0d914f83          	lbu	t6,217(sp)
1c00a9b4:	0e214783          	lbu	a5,226(sp)
1c00a9b8:	0e114e83          	lbu	t4,225(sp)
1c00a9bc:	0e514303          	lbu	t1,229(sp)
1c00a9c0:	0e414383          	lbu	t2,228(sp)
1c00a9c4:	0e614803          	lbu	a6,230(sp)
1c00a9c8:	0d814283          	lbu	t0,216(sp)
1c00a9cc:	0e014f03          	lbu	t5,224(sp)
1c00a9d0:	0db14503          	lbu	a0,219(sp)
1c00a9d4:	0e314603          	lbu	a2,227(sp)
1c00a9d8:	0e714683          	lbu	a3,231(sp)
1c00a9dc:	0fa2                	slli	t6,t6,0x8
1c00a9de:	0ea2                	slli	t4,t4,0x8
1c00a9e0:	0742                	slli	a4,a4,0x10
1c00a9e2:	07c2                	slli	a5,a5,0x10
1c00a9e4:	0322                	slli	t1,t1,0x8
1c00a9e6:	00736333          	or	t1,t1,t2
1c00a9ea:	01f76733          	or	a4,a4,t6
1c00a9ee:	01d7e7b3          	or	a5,a5,t4
1c00a9f2:	0842                	slli	a6,a6,0x10
1c00a9f4:	0dd14e03          	lbu	t3,221(sp)
1c00a9f8:	00576733          	or	a4,a4,t0
1c00a9fc:	01e7e7b3          	or	a5,a5,t5
1c00aa00:	00686833          	or	a6,a6,t1
1c00aa04:	0662                	slli	a2,a2,0x18
1c00aa06:	06e2                	slli	a3,a3,0x18
1c00aa08:	0562                	slli	a0,a0,0x18
1c00aa0a:	0dc14483          	lbu	s1,220(sp)
1c00aa0e:	0de14883          	lbu	a7,222(sp)
1c00aa12:	8d59                	or	a0,a0,a4
1c00aa14:	00f66733          	or	a4,a2,a5
1c00aa18:	0106e7b3          	or	a5,a3,a6
1c00aa1c:	46c2                	lw	a3,16(sp)
1c00aa1e:	0df14583          	lbu	a1,223(sp)
1c00aa22:	0e22                	slli	t3,t3,0x8
1c00aa24:	009e6e33          	or	t3,t3,s1
1c00aa28:	8d35                	xor	a0,a0,a3
1c00aa2a:	08c2                	slli	a7,a7,0x10
1c00aa2c:	46d2                	lw	a3,20(sp)
1c00aa2e:	01c8e8b3          	or	a7,a7,t3
1c00aa32:	05e2                	slli	a1,a1,0x18
1c00aa34:	0115e5b3          	or	a1,a1,a7
1c00aa38:	8db5                	xor	a1,a1,a3
1c00aa3a:	46e2                	lw	a3,24(sp)
1c00aa3c:	0ea14803          	lbu	a6,234(sp)
1c00aa40:	0e914483          	lbu	s1,233(sp)
1c00aa44:	8eb9                	xor	a3,a3,a4
1c00aa46:	4772                	lw	a4,28(sp)
1c00aa48:	0e814a83          	lbu	s5,232(sp)
1c00aa4c:	0eb14a03          	lbu	s4,235(sp)
1c00aa50:	8f3d                	xor	a4,a4,a5
1c00aa52:	0ec14d03          	lbu	s10,236(sp)
1c00aa56:	11f14783          	lbu	a5,287(sp)
1c00aa5a:	0ed14903          	lbu	s2,237(sp)
1c00aa5e:	c82a                	sw	a0,16(sp)
1c00aa60:	ca2e                	sw	a1,20(sp)
1c00aa62:	cc36                	sw	a3,24(sp)
1c00aa64:	ce3a                	sw	a4,28(sp)
1c00aa66:	0ee14f83          	lbu	t6,238(sp)
1c00aa6a:	0f214283          	lbu	t0,242(sp)
1c00aa6e:	0f114f03          	lbu	t5,241(sp)
1c00aa72:	0fd14883          	lbu	a7,253(sp)
1c00aa76:	0fc14b83          	lbu	s7,252(sp)
1c00aa7a:	04a2                	slli	s1,s1,0x8
1c00aa7c:	0842                	slli	a6,a6,0x10
1c00aa7e:	02c2                	slli	t0,t0,0x10
1c00aa80:	08a2                	slli	a7,a7,0x8
1c00aa82:	00986833          	or	a6,a6,s1
1c00aa86:	0f22                	slli	t5,t5,0x8
1c00aa88:	01e2ef33          	or	t5,t0,t5
1c00aa8c:	01586833          	or	a6,a6,s5
1c00aa90:	0178e2b3          	or	t0,a7,s7
1c00aa94:	018a1893          	slli	a7,s4,0x18
1c00aa98:	0108e833          	or	a6,a7,a6
1c00aa9c:	5882                	lw	a7,32(sp)
1c00aa9e:	0ef14503          	lbu	a0,239(sp)
1c00aaa2:	0922                	slli	s2,s2,0x8
1c00aaa4:	01a96933          	or	s2,s2,s10
1c00aaa8:	0108c8b3          	xor	a7,a7,a6
1c00aaac:	0fc2                	slli	t6,t6,0x10
1c00aaae:	5812                	lw	a6,36(sp)
1c00aab0:	0f014983          	lbu	s3,240(sp)
1c00aab4:	0f314583          	lbu	a1,243(sp)
1c00aab8:	012fefb3          	or	t6,t6,s2
1c00aabc:	0562                	slli	a0,a0,0x18
1c00aabe:	0f514e83          	lbu	t4,245(sp)
1c00aac2:	01f56533          	or	a0,a0,t6
1c00aac6:	0f414c83          	lbu	s9,244(sp)
1c00aaca:	0f614c03          	lbu	s8,246(sp)
1c00aace:	00a84833          	xor	a6,a6,a0
1c00aad2:	5522                	lw	a0,40(sp)
1c00aad4:	0f714603          	lbu	a2,247(sp)
1c00aad8:	013f6f33          	or	t5,t5,s3
1c00aadc:	05e2                	slli	a1,a1,0x18
1c00aade:	0f914e03          	lbu	t3,249(sp)
1c00aae2:	0fa14303          	lbu	t1,250(sp)
1c00aae6:	01e5e5b3          	or	a1,a1,t5
1c00aaea:	0ea2                	slli	t4,t4,0x8
1c00aaec:	019ee4b3          	or	s1,t4,s9
1c00aaf0:	8d2d                	xor	a0,a0,a1
1c00aaf2:	010c1e93          	slli	t4,s8,0x10
1c00aaf6:	55b2                	lw	a1,44(sp)
1c00aaf8:	0f814383          	lbu	t2,248(sp)
1c00aafc:	0fb14683          	lbu	a3,251(sp)
1c00ab00:	009eeeb3          	or	t4,t4,s1
1c00ab04:	0662                	slli	a2,a2,0x18
1c00ab06:	01d66633          	or	a2,a2,t4
1c00ab0a:	0342                	slli	t1,t1,0x10
1c00ab0c:	0e22                	slli	t3,t3,0x8
1c00ab0e:	0fe14b03          	lbu	s6,254(sp)
1c00ab12:	8db1                	xor	a1,a1,a2
1c00ab14:	006e6e33          	or	t3,t3,t1
1c00ab18:	5642                	lw	a2,48(sp)
1c00ab1a:	0ff14703          	lbu	a4,255(sp)
1c00ab1e:	007e6e33          	or	t3,t3,t2
1c00ab22:	06e2                	slli	a3,a3,0x18
1c00ab24:	01c6e6b3          	or	a3,a3,t3
1c00ab28:	8e35                	xor	a2,a2,a3
1c00ab2a:	010b1313          	slli	t1,s6,0x10
1c00ab2e:	56d2                	lw	a3,52(sp)
1c00ab30:	00536333          	or	t1,t1,t0
1c00ab34:	0762                	slli	a4,a4,0x18
1c00ab36:	00676733          	or	a4,a4,t1
1c00ab3a:	8f35                	xor	a4,a4,a3
1c00ab3c:	10114e83          	lbu	t4,257(sp)
1c00ab40:	10214a83          	lbu	s5,258(sp)
1c00ab44:	d046                	sw	a7,32(sp)
1c00ab46:	d242                	sw	a6,36(sp)
1c00ab48:	d42a                	sw	a0,40(sp)
1c00ab4a:	d62e                	sw	a1,44(sp)
1c00ab4c:	d832                	sw	a2,48(sp)
1c00ab4e:	da3a                	sw	a4,52(sp)
1c00ab50:	10014903          	lbu	s2,256(sp)
1c00ab54:	10914303          	lbu	t1,265(sp)
1c00ab58:	10a14983          	lbu	s3,266(sp)
1c00ab5c:	10814383          	lbu	t2,264(sp)
1c00ab60:	10514f83          	lbu	t6,261(sp)
1c00ab64:	10b14603          	lbu	a2,267(sp)
1c00ab68:	10414b03          	lbu	s6,260(sp)
1c00ab6c:	10614e03          	lbu	t3,262(sp)
1c00ab70:	09c2                	slli	s3,s3,0x10
1c00ab72:	0322                	slli	t1,t1,0x8
1c00ab74:	10714583          	lbu	a1,263(sp)
1c00ab78:	01336333          	or	t1,t1,s3
1c00ab7c:	00736333          	or	t1,t1,t2
1c00ab80:	10d14f03          	lbu	t5,269(sp)
1c00ab84:	0fa2                	slli	t6,t6,0x8
1c00ab86:	0662                	slli	a2,a2,0x18
1c00ab88:	10c14a03          	lbu	s4,268(sp)
1c00ab8c:	016fefb3          	or	t6,t6,s6
1c00ab90:	11114803          	lbu	a6,273(sp)
1c00ab94:	11214483          	lbu	s1,274(sp)
1c00ab98:	10e14883          	lbu	a7,270(sp)
1c00ab9c:	00666633          	or	a2,a2,t1
1c00aba0:	0e42                	slli	t3,t3,0x10
1c00aba2:	5372                	lw	t1,60(sp)
1c00aba4:	01fe6e33          	or	t3,t3,t6
1c00aba8:	10f14683          	lbu	a3,271(sp)
1c00abac:	05e2                	slli	a1,a1,0x18
1c00abae:	11014283          	lbu	t0,272(sp)
1c00abb2:	11314703          	lbu	a4,275(sp)
1c00abb6:	01c5e5b3          	or	a1,a1,t3
1c00abba:	0f22                	slli	t5,t5,0x8
1c00abbc:	014f6f33          	or	t5,t5,s4
1c00abc0:	00b34333          	xor	t1,t1,a1
1c00abc4:	04c2                	slli	s1,s1,0x10
1c00abc6:	4596                	lw	a1,68(sp)
1c00abc8:	0822                	slli	a6,a6,0x8
1c00abca:	08c2                	slli	a7,a7,0x10
1c00abcc:	10314503          	lbu	a0,259(sp)
1c00abd0:	01e8e8b3          	or	a7,a7,t5
1c00abd4:	00986833          	or	a6,a6,s1
1c00abd8:	06e2                	slli	a3,a3,0x18
1c00abda:	00586833          	or	a6,a6,t0
1c00abde:	0116e6b3          	or	a3,a3,a7
1c00abe2:	0ac2                	slli	s5,s5,0x10
1c00abe4:	0ea2                	slli	t4,t4,0x8
1c00abe6:	0762                	slli	a4,a4,0x18
1c00abe8:	5e62                	lw	t3,56(sp)
1c00abea:	8db5                	xor	a1,a1,a3
1c00abec:	015eeeb3          	or	t4,t4,s5
1c00abf0:	46a6                	lw	a3,72(sp)
1c00abf2:	01076733          	or	a4,a4,a6
1c00abf6:	4806                	lw	a6,64(sp)
1c00abf8:	012eeeb3          	or	t4,t4,s2
1c00abfc:	0562                	slli	a0,a0,0x18
1c00abfe:	01d56533          	or	a0,a0,t4
1c00ac02:	00ae4e33          	xor	t3,t3,a0
1c00ac06:	00c84833          	xor	a6,a6,a2
1c00ac0a:	8f35                	xor	a4,a4,a3
1c00ac0c:	11414f03          	lbu	t5,276(sp)
1c00ac10:	11514883          	lbu	a7,277(sp)
1c00ac14:	11614503          	lbu	a0,278(sp)
1c00ac18:	11714603          	lbu	a2,279(sp)
1c00ac1c:	dc72                	sw	t3,56(sp)
1c00ac1e:	de1a                	sw	t1,60(sp)
1c00ac20:	c0c2                	sw	a6,64(sp)
1c00ac22:	c2ae                	sw	a1,68(sp)
1c00ac24:	c4ba                	sw	a4,72(sp)
1c00ac26:	11914703          	lbu	a4,281(sp)
1c00ac2a:	11a14303          	lbu	t1,282(sp)
1c00ac2e:	11814e03          	lbu	t3,280(sp)
1c00ac32:	11b14683          	lbu	a3,283(sp)
1c00ac36:	0342                	slli	t1,t1,0x10
1c00ac38:	0722                	slli	a4,a4,0x8
1c00ac3a:	00676733          	or	a4,a4,t1
1c00ac3e:	01c76733          	or	a4,a4,t3
1c00ac42:	06e2                	slli	a3,a3,0x18
1c00ac44:	08a2                	slli	a7,a7,0x8
1c00ac46:	01e8e8b3          	or	a7,a7,t5
1c00ac4a:	8f55                	or	a4,a4,a3
1c00ac4c:	0542                	slli	a0,a0,0x10
1c00ac4e:	46b6                	lw	a3,76(sp)
1c00ac50:	01156533          	or	a0,a0,a7
1c00ac54:	0662                	slli	a2,a2,0x18
1c00ac56:	11d14803          	lbu	a6,285(sp)
1c00ac5a:	8e49                	or	a2,a2,a0
1c00ac5c:	11c14e83          	lbu	t4,284(sp)
1c00ac60:	8e35                	xor	a2,a2,a3
1c00ac62:	11e14583          	lbu	a1,286(sp)
1c00ac66:	46c6                	lw	a3,80(sp)
1c00ac68:	0822                	slli	a6,a6,0x8
1c00ac6a:	01d86833          	or	a6,a6,t4
1c00ac6e:	8eb9                	xor	a3,a3,a4
1c00ac70:	0807e793          	ori	a5,a5,128
1c00ac74:	4756                	lw	a4,84(sp)
1c00ac76:	05c2                	slli	a1,a1,0x10
1c00ac78:	0105e5b3          	or	a1,a1,a6
1c00ac7c:	07e2                	slli	a5,a5,0x18
1c00ac7e:	8fcd                	or	a5,a5,a1
1c00ac80:	080c                	addi	a1,sp,16
1c00ac82:	8fb9                	xor	a5,a5,a4
1c00ac84:	852e                	mv	a0,a1
1c00ac86:	c6b2                	sw	a2,76(sp)
1c00ac88:	c8b6                	sw	a3,80(sp)
1c00ac8a:	cabe                	sw	a5,84(sp)
1c00ac8c:	e5ffe0ef          	jal	ra,1c009aea <KeccakF1600_StatePermute>
1c00ac90:	4552                	lw	a0,20(sp)
1c00ac92:	45f2                	lw	a1,28(sp)
1c00ac94:	5612                	lw	a2,36(sp)
1c00ac96:	56b2                	lw	a3,44(sp)
1c00ac98:	57d2                	lw	a5,52(sp)
1c00ac9a:	5772                	lw	a4,60(sp)
1c00ac9c:	00855b13          	srli	s6,a0,0x8
1c00aca0:	01055a93          	srli	s5,a0,0x10
1c00aca4:	01855a13          	srli	s4,a0,0x18
1c00aca8:	0085d993          	srli	s3,a1,0x8
1c00acac:	0105d913          	srli	s2,a1,0x10
1c00acb0:	0185d493          	srli	s1,a1,0x18
1c00acb4:	0ca10e23          	sb	a0,220(sp)
1c00acb8:	0d610ea3          	sb	s6,221(sp)
1c00acbc:	0d510f23          	sb	s5,222(sp)
1c00acc0:	0d410fa3          	sb	s4,223(sp)
1c00acc4:	00865393          	srli	t2,a2,0x8
1c00acc8:	01065293          	srli	t0,a2,0x10
1c00accc:	01865f93          	srli	t6,a2,0x18
1c00acd0:	0086df13          	srli	t5,a3,0x8
1c00acd4:	0106de93          	srli	t4,a3,0x10
1c00acd8:	0186de13          	srli	t3,a3,0x18
1c00acdc:	0087d313          	srli	t1,a5,0x8
1c00ace0:	0107d893          	srli	a7,a5,0x10
1c00ace4:	0187d813          	srli	a6,a5,0x18
1c00ace8:	0eb10223          	sb	a1,228(sp)
1c00acec:	0f3102a3          	sb	s3,229(sp)
1c00acf0:	0f210323          	sb	s2,230(sp)
1c00acf4:	0e9103a3          	sb	s1,231(sp)
1c00acf8:	45c2                	lw	a1,16(sp)
1c00acfa:	4536                	lw	a0,76(sp)
1c00acfc:	0ec10623          	sb	a2,236(sp)
1c00ad00:	0e7106a3          	sb	t2,237(sp)
1c00ad04:	467e                	lw	a2,220(sp)
1c00ad06:	0e510723          	sb	t0,238(sp)
1c00ad0a:	0ff107a3          	sb	t6,239(sp)
1c00ad0e:	0ed10a23          	sb	a3,244(sp)
1c00ad12:	0fe10aa3          	sb	t5,245(sp)
1c00ad16:	46e2                	lw	a3,24(sp)
1c00ad18:	0fd10b23          	sb	t4,246(sp)
1c00ad1c:	0fc10ba3          	sb	t3,247(sp)
1c00ad20:	0e610ea3          	sb	t1,253(sp)
1c00ad24:	0f110f23          	sb	a7,254(sp)
1c00ad28:	0f010fa3          	sb	a6,255(sp)
1c00ad2c:	10e10223          	sb	a4,260(sp)
1c00ad30:	4816                	lw	a6,68(sp)
1c00ad32:	0ef10e23          	sb	a5,252(sp)
1c00ad36:	579e                	lw	a5,228(sp)
1c00ad38:	00875d93          	srli	s11,a4,0x8
1c00ad3c:	01075d13          	srli	s10,a4,0x10
1c00ad40:	00885c93          	srli	s9,a6,0x8
1c00ad44:	01085c13          	srli	s8,a6,0x10
1c00ad48:	01885b93          	srli	s7,a6,0x18
1c00ad4c:	00855b13          	srli	s6,a0,0x8
1c00ad50:	01055a93          	srli	s5,a0,0x10
1c00ad54:	01855a13          	srli	s4,a0,0x18
1c00ad58:	0085d993          	srli	s3,a1,0x8
1c00ad5c:	0105d913          	srli	s2,a1,0x10
1c00ad60:	0185d493          	srli	s1,a1,0x18
1c00ad64:	00865393          	srli	t2,a2,0x8
1c00ad68:	01065293          	srli	t0,a2,0x10
1c00ad6c:	01865f93          	srli	t6,a2,0x18
1c00ad70:	0086df13          	srli	t5,a3,0x8
1c00ad74:	0106de93          	srli	t4,a3,0x10
1c00ad78:	0186de13          	srli	t3,a3,0x18
1c00ad7c:	0087d313          	srli	t1,a5,0x8
1c00ad80:	0107d893          	srli	a7,a5,0x10
1c00ad84:	00f40623          	sb	a5,12(s0)
1c00ad88:	8361                	srli	a4,a4,0x18
1c00ad8a:	83e1                	srli	a5,a5,0x18
1c00ad8c:	11b102a3          	sb	s11,261(sp)
1c00ad90:	11a10323          	sb	s10,262(sp)
1c00ad94:	10e103a3          	sb	a4,263(sp)
1c00ad98:	11010623          	sb	a6,268(sp)
1c00ad9c:	4706                	lw	a4,64(sp)
1c00ad9e:	119106a3          	sb	s9,269(sp)
1c00ada2:	11810723          	sb	s8,270(sp)
1c00ada6:	117107a3          	sb	s7,271(sp)
1c00adaa:	10a10a23          	sb	a0,276(sp)
1c00adae:	11610aa3          	sb	s6,277(sp)
1c00adb2:	11510b23          	sb	s5,278(sp)
1c00adb6:	11410ba3          	sb	s4,279(sp)
1c00adba:	00b40023          	sb	a1,0(s0)
1c00adbe:	4a26                	lw	s4,72(sp)
1c00adc0:	55be                	lw	a1,236(sp)
1c00adc2:	013400a3          	sb	s3,1(s0)
1c00adc6:	01240123          	sb	s2,2(s0)
1c00adca:	009401a3          	sb	s1,3(s0)
1c00adce:	00c40223          	sb	a2,4(s0)
1c00add2:	007402a3          	sb	t2,5(s0)
1c00add6:	565e                	lw	a2,244(sp)
1c00add8:	00540323          	sb	t0,6(s0)
1c00addc:	01f403a3          	sb	t6,7(s0)
1c00ade0:	01e404a3          	sb	t5,9(s0)
1c00ade4:	01d40523          	sb	t4,10(s0)
1c00ade8:	01c405a3          	sb	t3,11(s0)
1c00adec:	006406a3          	sb	t1,13(s0)
1c00adf0:	01140723          	sb	a7,14(s0)
1c00adf4:	00f407a3          	sb	a5,15(s0)
1c00adf8:	00d40423          	sb	a3,8(s0)
1c00adfc:	56fe                	lw	a3,252(sp)
1c00adfe:	5502                	lw	a0,32(sp)
1c00ae00:	54a2                	lw	s1,40(sp)
1c00ae02:	0185db13          	srli	s6,a1,0x18
1c00ae06:	00855d93          	srli	s11,a0,0x8
1c00ae0a:	01055d13          	srli	s10,a0,0x10
1c00ae0e:	01855c93          	srli	s9,a0,0x18
1c00ae12:	5522                	lw	a0,40(sp)
1c00ae14:	5842                	lw	a6,48(sp)
1c00ae16:	0085dc13          	srli	s8,a1,0x8
1c00ae1a:	00855a93          	srli	s5,a0,0x8
1c00ae1e:	8141                	srli	a0,a0,0x10
1c00ae20:	c42a                	sw	a0,8(sp)
1c00ae22:	5562                	lw	a0,56(sp)
1c00ae24:	0105db93          	srli	s7,a1,0x10
1c00ae28:	00b40a23          	sb	a1,20(s0)
1c00ae2c:	8161                	srli	a0,a0,0x18
1c00ae2e:	c22a                	sw	a0,4(sp)
1c00ae30:	5502                	lw	a0,32(sp)
1c00ae32:	45a2                	lw	a1,8(sp)
1c00ae34:	01640ba3          	sb	s6,23(s0)
1c00ae38:	c62a                	sw	a0,12(sp)
1c00ae3a:	00c14503          	lbu	a0,12(sp)
1c00ae3e:	5b22                	lw	s6,40(sp)
1c00ae40:	0184d993          	srli	s3,s1,0x18
1c00ae44:	00865913          	srli	s2,a2,0x8
1c00ae48:	01065493          	srli	s1,a2,0x10
1c00ae4c:	01865393          	srli	t2,a2,0x18
1c00ae50:	00a10623          	sb	a0,12(sp)
1c00ae54:	0ff57513          	andi	a0,a0,255
1c00ae58:	10412783          	lw	a5,260(sp)
1c00ae5c:	00885293          	srli	t0,a6,0x8
1c00ae60:	01085f93          	srli	t6,a6,0x10
1c00ae64:	01885f13          	srli	t5,a6,0x18
1c00ae68:	0086de93          	srli	t4,a3,0x8
1c00ae6c:	5862                	lw	a6,56(sp)
1c00ae6e:	0106de13          	srli	t3,a3,0x10
1c00ae72:	0186d313          	srli	t1,a3,0x18
1c00ae76:	00a40823          	sb	a0,16(s0)
1c00ae7a:	01b408a3          	sb	s11,17(s0)
1c00ae7e:	01a40923          	sb	s10,18(s0)
1c00ae82:	019409a3          	sb	s9,19(s0)
1c00ae86:	01840aa3          	sb	s8,21(s0)
1c00ae8a:	01740b23          	sb	s7,22(s0)
1c00ae8e:	01640c23          	sb	s6,24(s0)
1c00ae92:	01540ca3          	sb	s5,25(s0)
1c00ae96:	00b40d23          	sb	a1,26(s0)
1c00ae9a:	01340da3          	sb	s3,27(s0)
1c00ae9e:	01240ea3          	sb	s2,29(s0)
1c00aea2:	00940f23          	sb	s1,30(s0)
1c00aea6:	00740fa3          	sb	t2,31(s0)
1c00aeaa:	00c40e23          	sb	a2,28(s0)
1c00aeae:	5642                	lw	a2,48(sp)
1c00aeb0:	02d40223          	sb	a3,36(s0)
1c00aeb4:	56e2                	lw	a3,56(sp)
1c00aeb6:	02c40023          	sb	a2,32(s0)
1c00aeba:	10c12603          	lw	a2,268(sp)
1c00aebe:	02d40423          	sb	a3,40(s0)
1c00aec2:	4692                	lw	a3,4(sp)
1c00aec4:	00885893          	srli	a7,a6,0x8
1c00aec8:	025400a3          	sb	t0,33(s0)
1c00aecc:	02d405a3          	sb	a3,43(s0)
1c00aed0:	11412683          	lw	a3,276(sp)
1c00aed4:	03f40123          	sb	t6,34(s0)
1c00aed8:	03e401a3          	sb	t5,35(s0)
1c00aedc:	03d402a3          	sb	t4,37(s0)
1c00aee0:	03c40323          	sb	t3,38(s0)
1c00aee4:	026403a3          	sb	t1,39(s0)
1c00aee8:	02f40623          	sb	a5,44(s0)
1c00aeec:	0087d993          	srli	s3,a5,0x8
1c00aef0:	0107d913          	srli	s2,a5,0x10
1c00aef4:	01085813          	srli	a6,a6,0x10
1c00aef8:	00875493          	srli	s1,a4,0x8
1c00aefc:	008a5e13          	srli	t3,s4,0x8
1c00af00:	010a5313          	srli	t1,s4,0x10
1c00af04:	83e1                	srli	a5,a5,0x18
1c00af06:	01075393          	srli	t2,a4,0x10
1c00af0a:	01875293          	srli	t0,a4,0x18
1c00af0e:	00865f93          	srli	t6,a2,0x8
1c00af12:	01065f13          	srli	t5,a2,0x10
1c00af16:	01865e93          	srli	t4,a2,0x18
1c00af1a:	031404a3          	sb	a7,41(s0)
1c00af1e:	03040523          	sb	a6,42(s0)
1c00af22:	033406a3          	sb	s3,45(s0)
1c00af26:	03240723          	sb	s2,46(s0)
1c00af2a:	029408a3          	sb	s1,49(s0)
1c00af2e:	03440c23          	sb	s4,56(s0)
1c00af32:	018a5893          	srli	a7,s4,0x18
1c00af36:	02f407a3          	sb	a5,47(s0)
1c00af3a:	02e40823          	sb	a4,48(s0)
1c00af3e:	02740923          	sb	t2,50(s0)
1c00af42:	025409a3          	sb	t0,51(s0)
1c00af46:	02c40a23          	sb	a2,52(s0)
1c00af4a:	03f40aa3          	sb	t6,53(s0)
1c00af4e:	03e40b23          	sb	t5,54(s0)
1c00af52:	03d40ba3          	sb	t4,55(s0)
1c00af56:	03c40ca3          	sb	t3,57(s0)
1c00af5a:	02640d23          	sb	t1,58(s0)
1c00af5e:	0086d813          	srli	a6,a3,0x8
1c00af62:	0106d513          	srli	a0,a3,0x10
1c00af66:	0186d593          	srli	a1,a3,0x18
1c00af6a:	03140da3          	sb	a7,59(s0)
1c00af6e:	02d40e23          	sb	a3,60(s0)
1c00af72:	03040ea3          	sb	a6,61(s0)
1c00af76:	02a40f23          	sb	a0,62(s0)
1c00af7a:	02b40fa3          	sb	a1,63(s0)
1c00af7e:	1dc12083          	lw	ra,476(sp)
1c00af82:	1d812403          	lw	s0,472(sp)
1c00af86:	1d412483          	lw	s1,468(sp)
1c00af8a:	1d012903          	lw	s2,464(sp)
1c00af8e:	1cc12983          	lw	s3,460(sp)
1c00af92:	1c812a03          	lw	s4,456(sp)
1c00af96:	1c412a83          	lw	s5,452(sp)
1c00af9a:	1c012b03          	lw	s6,448(sp)
1c00af9e:	1bc12b83          	lw	s7,444(sp)
1c00afa2:	1b812c03          	lw	s8,440(sp)
1c00afa6:	1b412c83          	lw	s9,436(sp)
1c00afaa:	1b012d03          	lw	s10,432(sp)
1c00afae:	1ac12d83          	lw	s11,428(sp)
1c00afb2:	613d                	addi	sp,sp,480
1c00afb4:	8082                	ret
1c00afb6:	4781                	li	a5,0
1c00afb8:	ba45                	j	1c00a968 <sha3_512+0x12e>

1c00afba <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>:
1c00afba:	736d                	lui	t1,0xffffb
1c00afbc:	715d                	addi	sp,sp,-80
1c00afbe:	3d030313          	addi	t1,t1,976 # ffffb3d0 <__l2_shared_end+0xe3feb3d0>
1c00afc2:	c686                	sw	ra,76(sp)
1c00afc4:	c4a2                	sw	s0,72(sp)
1c00afc6:	c2a6                	sw	s1,68(sp)
1c00afc8:	c0ca                	sw	s2,64(sp)
1c00afca:	de4e                	sw	s3,60(sp)
1c00afcc:	dc52                	sw	s4,56(sp)
1c00afce:	da56                	sw	s5,52(sp)
1c00afd0:	d85a                	sw	s6,48(sp)
1c00afd2:	d65e                	sw	s7,44(sp)
1c00afd4:	d462                	sw	s8,40(sp)
1c00afd6:	d266                	sw	s9,36(sp)
1c00afd8:	d06a                	sw	s10,32(sp)
1c00afda:	ce6e                	sw	s11,28(sp)
1c00afdc:	6495                	lui	s1,0x5
1c00afde:	911a                	add	sp,sp,t1
1c00afe0:	8432                	mv	s0,a2
1c00afe2:	87aa                	mv	a5,a0
1c00afe4:	1010                	addi	a2,sp,32
1c00afe6:	c2048713          	addi	a4,s1,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00afea:	7575                	lui	a0,0xffffd
1c00afec:	9732                	add	a4,a4,a2
1c00afee:	80050513          	addi	a0,a0,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c00aff2:	892e                	mv	s2,a1
1c00aff4:	953a                	add	a0,a0,a4
1c00aff6:	85a2                	mv	a1,s0
1c00aff8:	c43e                	sw	a5,8(sp)
1c00affa:	c636                	sw	a3,12(sp)
1c00affc:	3ed000ef          	jal	ra,1c00bbe8 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>
1c00b000:	60f44783          	lbu	a5,1551(s0)
1c00b004:	61c44703          	lbu	a4,1564(s0)
1c00b008:	60b44983          	lbu	s3,1547(s0)
1c00b00c:	61144283          	lbu	t0,1553(s0)
1c00b010:	61044b03          	lbu	s6,1552(s0)
1c00b014:	61244503          	lbu	a0,1554(s0)
1c00b018:	c23e                	sw	a5,4(sp)
1c00b01a:	61744783          	lbu	a5,1559(s0)
1c00b01e:	61544f83          	lbu	t6,1557(s0)
1c00b022:	cc3a                	sw	a4,24(sp)
1c00b024:	c04e                	sw	s3,0(sp)
1c00b026:	02a2                	slli	t0,t0,0x8
1c00b028:	60844c03          	lbu	s8,1544(s0)
1c00b02c:	60c44b83          	lbu	s7,1548(s0)
1c00b030:	61844a03          	lbu	s4,1560(s0)
1c00b034:	60544d03          	lbu	s10,1541(s0)
1c00b038:	60944483          	lbu	s1,1545(s0)
1c00b03c:	60d44383          	lbu	t2,1549(s0)
1c00b040:	61944f03          	lbu	t5,1561(s0)
1c00b044:	61d44e83          	lbu	t4,1565(s0)
1c00b048:	60144e03          	lbu	t3,1537(s0)
1c00b04c:	60444c83          	lbu	s9,1540(s0)
1c00b050:	60644303          	lbu	t1,1542(s0)
1c00b054:	60a44883          	lbu	a7,1546(s0)
1c00b058:	60e44803          	lbu	a6,1550(s0)
1c00b05c:	61444a83          	lbu	s5,1556(s0)
1c00b060:	61644603          	lbu	a2,1558(s0)
1c00b064:	61a44683          	lbu	a3,1562(s0)
1c00b068:	61e44703          	lbu	a4,1566(s0)
1c00b06c:	60044583          	lbu	a1,1536(s0)
1c00b070:	60244d83          	lbu	s11,1538(s0)
1c00b074:	60744083          	lbu	ra,1543(s0)
1c00b078:	61344983          	lbu	s3,1555(s0)
1c00b07c:	0542                	slli	a0,a0,0x10
1c00b07e:	c83e                	sw	a5,16(sp)
1c00b080:	0162e2b3          	or	t0,t0,s6
1c00b084:	61b44783          	lbu	a5,1563(s0)
1c00b088:	005562b3          	or	t0,a0,t0
1c00b08c:	4542                	lw	a0,16(sp)
1c00b08e:	0fa2                	slli	t6,t6,0x8
1c00b090:	ca3e                	sw	a5,20(sp)
1c00b092:	0e22                	slli	t3,t3,0x8
1c00b094:	61f44783          	lbu	a5,1567(s0)
1c00b098:	015fefb3          	or	t6,t6,s5
1c00b09c:	0642                	slli	a2,a2,0x10
1c00b09e:	00be65b3          	or	a1,t3,a1
1c00b0a2:	01f66633          	or	a2,a2,t6
1c00b0a6:	4e02                	lw	t3,0(sp)
1c00b0a8:	01851f93          	slli	t6,a0,0x18
1c00b0ac:	4552                	lw	a0,20(sp)
1c00b0ae:	04a2                	slli	s1,s1,0x8
1c00b0b0:	0f22                	slli	t5,t5,0x8
1c00b0b2:	ce3e                	sw	a5,28(sp)
1c00b0b4:	0184e4b3          	or	s1,s1,s8
1c00b0b8:	014f6f33          	or	t5,t5,s4
1c00b0bc:	08c2                	slli	a7,a7,0x10
1c00b0be:	4a62                	lw	s4,24(sp)
1c00b0c0:	06c2                	slli	a3,a3,0x10
1c00b0c2:	0098e8b3          	or	a7,a7,s1
1c00b0c6:	01e6e6b3          	or	a3,a3,t5
1c00b0ca:	018e1493          	slli	s1,t3,0x18
1c00b0ce:	01851f13          	slli	t5,a0,0x18
1c00b0d2:	4e12                	lw	t3,4(sp)
1c00b0d4:	4572                	lw	a0,28(sp)
1c00b0d6:	03a2                	slli	t2,t2,0x8
1c00b0d8:	0ea2                	slli	t4,t4,0x8
1c00b0da:	60344783          	lbu	a5,1539(s0)
1c00b0de:	0173e3b3          	or	t2,t2,s7
1c00b0e2:	014eeeb3          	or	t4,t4,s4
1c00b0e6:	0842                	slli	a6,a6,0x10
1c00b0e8:	0742                	slli	a4,a4,0x10
1c00b0ea:	00786833          	or	a6,a6,t2
1c00b0ee:	0114e8b3          	or	a7,s1,a7
1c00b0f2:	018e1393          	slli	t2,t3,0x18
1c00b0f6:	6495                	lui	s1,0x5
1c00b0f8:	01851e13          	slli	t3,a0,0x18
1c00b0fc:	01d76733          	or	a4,a4,t4
1c00b100:	0d22                	slli	s10,s10,0x8
1c00b102:	00ee6733          	or	a4,t3,a4
1c00b106:	746d                	lui	s0,0xffffb
1c00b108:	0dc2                	slli	s11,s11,0x10
1c00b10a:	02010e93          	addi	t4,sp,32
1c00b10e:	019d6cb3          	or	s9,s10,s9
1c00b112:	0342                	slli	t1,t1,0x10
1c00b114:	c2048e13          	addi	t3,s1,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b118:	00bde5b3          	or	a1,s11,a1
1c00b11c:	00e2                	slli	ra,ra,0x18
1c00b11e:	60040513          	addi	a0,s0,1536 # ffffb600 <__l2_shared_end+0xe3feb600>
1c00b122:	9e76                	add	t3,t3,t4
1c00b124:	01936333          	or	t1,t1,s9
1c00b128:	09e2                	slli	s3,s3,0x18
1c00b12a:	07e2                	slli	a5,a5,0x18
1c00b12c:	8fcd                	or	a5,a5,a1
1c00b12e:	0103e3b3          	or	t2,t2,a6
1c00b132:	00df66b3          	or	a3,t5,a3
1c00b136:	0060e333          	or	t1,ra,t1
1c00b13a:	0059e833          	or	a6,s3,t0
1c00b13e:	00cfe633          	or	a2,t6,a2
1c00b142:	85ca                	mv	a1,s2
1c00b144:	9572                	add	a0,a0,t3
1c00b146:	d03e                	sw	a5,32(sp)
1c00b148:	dc36                	sw	a3,56(sp)
1c00b14a:	de3a                	sw	a4,60(sp)
1c00b14c:	d21a                	sw	t1,36(sp)
1c00b14e:	d446                	sw	a7,40(sp)
1c00b150:	d61e                	sw	t2,44(sp)
1c00b152:	d842                	sw	a6,48(sp)
1c00b154:	da32                	sw	a2,52(sp)
1c00b156:	2725                	jal	1c00b87e <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>
1c00b158:	1014                	addi	a3,sp,32
1c00b15a:	7df9                	lui	s11,0xffffe
1c00b15c:	c2048713          	addi	a4,s1,-992
1c00b160:	9736                	add	a4,a4,a3
1c00b162:	800d8913          	addi	s2,s11,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c00b166:	993a                	add	s2,s2,a4
1c00b168:	c2048713          	addi	a4,s1,-992
1c00b16c:	9736                	add	a4,a4,a3
1c00b16e:	c2048793          	addi	a5,s1,-992
1c00b172:	3e040413          	addi	s0,s0,992
1c00b176:	976e                	add	a4,a4,s11
1c00b178:	97b6                	add	a5,a5,a3
1c00b17a:	c03a                	sw	a4,0(sp)
1c00b17c:	c202                	sw	zero,4(sp)
1c00b17e:	00878c33          	add	s8,a5,s0
1c00b182:	0a890b93          	addi	s7,s2,168
1c00b186:	6405                	lui	s0,0x1
1c00b188:	fff40993          	addi	s3,s0,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00b18c:	00414d83          	lbu	s11,4(sp)
1c00b190:	4c82                	lw	s9,0(sp)
1c00b192:	4481                	li	s1,0
1c00b194:	1f890d13          	addi	s10,s2,504
1c00b198:	d0040413          	addi	s0,s0,-768
1c00b19c:	a015                	j	1c00b1c0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x206>
1c00b19e:	00f61023          	sh	a5,0(a2)
1c00b1a2:	40689b63          	bne	a7,t1,1c00b5b8 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x5fe>
1c00b1a6:	6789                	lui	a5,0x2
1c00b1a8:	c2078513          	addi	a0,a5,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00b1ac:	101c                	addi	a5,sp,32
1c00b1ae:	953e                	add	a0,a0,a5
1c00b1b0:	91cff0ef          	jal	ra,1c00a2cc <shake128_ctx_release>
1c00b1b4:	0485                	addi	s1,s1,1
1c00b1b6:	4791                	li	a5,4
1c00b1b8:	200c8c93          	addi	s9,s9,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c00b1bc:	0ef48f63          	beq	s1,a5,1c00b2ba <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x300>
1c00b1c0:	6a09                	lui	s4,0x2
1c00b1c2:	101c                	addi	a5,sp,32
1c00b1c4:	c20a0513          	addi	a0,s4,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00b1c8:	0ff4f693          	andi	a3,s1,255
1c00b1cc:	953e                	add	a0,a0,a5
1c00b1ce:	85e2                	mv	a1,s8
1c00b1d0:	866e                	mv	a2,s11
1c00b1d2:	779000ef          	jal	ra,1c00c14a <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>
1c00b1d6:	101c                	addi	a5,sp,32
1c00b1d8:	c20a0613          	addi	a2,s4,-992
1c00b1dc:	963e                	add	a2,a2,a5
1c00b1de:	458d                	li	a1,3
1c00b1e0:	854a                	mv	a0,s2
1c00b1e2:	ff7fe0ef          	jal	ra,1c00a1d8 <shake128_squeezeblocks>
1c00b1e6:	4b01                	li	s6,0
1c00b1e8:	86ca                	mv	a3,s2
1c00b1ea:	10000313          	li	t1,256
1c00b1ee:	0016c503          	lbu	a0,1(a3)
1c00b1f2:	0006c583          	lbu	a1,0(a3)
1c00b1f6:	001b1613          	slli	a2,s6,0x1
1c00b1fa:	00851793          	slli	a5,a0,0x8
1c00b1fe:	8fcd                	or	a5,a5,a1
1c00b200:	0137f7b3          	and	a5,a5,s3
1c00b204:	0026c583          	lbu	a1,2(a3)
1c00b208:	9666                	add	a2,a2,s9
1c00b20a:	00455e13          	srli	t3,a0,0x4
1c00b20e:	001b0893          	addi	a7,s6,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00b212:	f8f476e3          	bgeu	s0,a5,1c00b19e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1e4>
1c00b216:	00459793          	slli	a5,a1,0x4
1c00b21a:	01c7e7b3          	or	a5,a5,t3
1c00b21e:	00f44863          	blt	s0,a5,1c00b22e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x274>
1c00b222:	001b1613          	slli	a2,s6,0x1
1c00b226:	9666                	add	a2,a2,s9
1c00b228:	00f61023          	sh	a5,0(a2)
1c00b22c:	0b05                	addi	s6,s6,1
1c00b22e:	f66b0ce3          	beq	s6,t1,1c00b1a6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1ec>
1c00b232:	068d                	addi	a3,a3,3
1c00b234:	fba69de3          	bne	a3,s10,1c00b1ee <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x234>
1c00b238:	10000a93          	li	s5,256
1c00b23c:	0ff00a13          	li	s4,255
1c00b240:	a821                	j	1c00b258 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x29e>
1c00b242:	00179893          	slli	a7,a5,0x1
1c00b246:	98aa                	add	a7,a7,a0
1c00b248:	0785                	addi	a5,a5,1
1c00b24a:	00b89023          	sh	a1,0(a7) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b24e:	3667ed63          	bltu	a5,t1,1c00b5c8 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x60e>
1c00b252:	9b3e                	add	s6,s6,a5
1c00b254:	f56a69e3          	bltu	s4,s6,1c00b1a6 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1ec>
1c00b258:	6789                	lui	a5,0x2
1c00b25a:	c2078613          	addi	a2,a5,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00b25e:	101c                	addi	a5,sp,32
1c00b260:	963e                	add	a2,a2,a5
1c00b262:	854a                	mv	a0,s2
1c00b264:	4585                	li	a1,1
1c00b266:	f73fe0ef          	jal	ra,1c00a1d8 <shake128_squeezeblocks>
1c00b26a:	001b1513          	slli	a0,s6,0x1
1c00b26e:	9566                	add	a0,a0,s9
1c00b270:	416a8333          	sub	t1,s5,s6
1c00b274:	864a                	mv	a2,s2
1c00b276:	4781                	li	a5,0
1c00b278:	00164883          	lbu	a7,1(a2)
1c00b27c:	00064e03          	lbu	t3,0(a2)
1c00b280:	00264683          	lbu	a3,2(a2)
1c00b284:	00889593          	slli	a1,a7,0x8
1c00b288:	01c5e5b3          	or	a1,a1,t3
1c00b28c:	0692                	slli	a3,a3,0x4
1c00b28e:	0048d893          	srli	a7,a7,0x4
1c00b292:	0135f5b3          	and	a1,a1,s3
1c00b296:	0116e6b3          	or	a3,a3,a7
1c00b29a:	fab474e3          	bgeu	s0,a1,1c00b242 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x288>
1c00b29e:	00d44863          	blt	s0,a3,1c00b2ae <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2f4>
1c00b2a2:	00179593          	slli	a1,a5,0x1
1c00b2a6:	95aa                	add	a1,a1,a0
1c00b2a8:	00d59023          	sh	a3,0(a1)
1c00b2ac:	0785                	addi	a5,a5,1
1c00b2ae:	fa67f2e3          	bgeu	a5,t1,1c00b252 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x298>
1c00b2b2:	060d                	addi	a2,a2,3
1c00b2b4:	fd7612e3          	bne	a2,s7,1c00b278 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2be>
1c00b2b8:	bf69                	j	1c00b252 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x298>
1c00b2ba:	4792                	lw	a5,4(sp)
1c00b2bc:	4702                	lw	a4,0(sp)
1c00b2be:	6405                	lui	s0,0x1
1c00b2c0:	80040993          	addi	s3,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00b2c4:	0785                	addi	a5,a5,1
1c00b2c6:	974e                	add	a4,a4,s3
1c00b2c8:	c23e                	sw	a5,4(sp)
1c00b2ca:	c03a                	sw	a4,0(sp)
1c00b2cc:	ea979de3          	bne	a5,s1,1c00b186 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1cc>
1c00b2d0:	4a32                	lw	s4,12(sp)
1c00b2d2:	6905                	lui	s2,0x1
1c00b2d4:	101c                	addi	a5,sp,32
1c00b2d6:	c2090513          	addi	a0,s2,-992 # c20 <__CTOR_LIST__-0x1bfff3e4>
1c00b2da:	85d2                	mv	a1,s4
1c00b2dc:	953e                	add	a0,a0,a5
1c00b2de:	4601                	li	a2,0
1c00b2e0:	2d05                	jal	1c00b910 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b2e2:	1018                	addi	a4,sp,32
1c00b2e4:	c2090793          	addi	a5,s2,-992
1c00b2e8:	97ba                	add	a5,a5,a4
1c00b2ea:	85d2                	mv	a1,s4
1c00b2ec:	20078513          	addi	a0,a5,512
1c00b2f0:	4605                	li	a2,1
1c00b2f2:	2d39                	jal	1c00b910 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b2f4:	1018                	addi	a4,sp,32
1c00b2f6:	c2090793          	addi	a5,s2,-992
1c00b2fa:	97ba                	add	a5,a5,a4
1c00b2fc:	85d2                	mv	a1,s4
1c00b2fe:	40078513          	addi	a0,a5,1024
1c00b302:	4609                	li	a2,2
1c00b304:	2531                	jal	1c00b910 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b306:	1018                	addi	a4,sp,32
1c00b308:	c2090793          	addi	a5,s2,-992
1c00b30c:	97ba                	add	a5,a5,a4
1c00b30e:	85d2                	mv	a1,s4
1c00b310:	60078513          	addi	a0,a5,1536
1c00b314:	460d                	li	a2,3
1c00b316:	2bed                	jal	1c00b910 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00b318:	6a89                	lui	s5,0x2
1c00b31a:	101c                	addi	a5,sp,32
1c00b31c:	c20a8513          	addi	a0,s5,-992 # 1c20 <__CTOR_LIST__-0x1bffe3e4>
1c00b320:	85d2                	mv	a1,s4
1c00b322:	953e                	add	a0,a0,a5
1c00b324:	4611                	li	a2,4
1c00b326:	2d01                	jal	1c00b936 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b328:	1018                	addi	a4,sp,32
1c00b32a:	c20a8793          	addi	a5,s5,-992
1c00b32e:	97ba                	add	a5,a5,a4
1c00b330:	85d2                	mv	a1,s4
1c00b332:	20078513          	addi	a0,a5,512
1c00b336:	4615                	li	a2,5
1c00b338:	2bfd                	jal	1c00b936 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b33a:	1018                	addi	a4,sp,32
1c00b33c:	c20a8793          	addi	a5,s5,-992
1c00b340:	97ba                	add	a5,a5,a4
1c00b342:	85d2                	mv	a1,s4
1c00b344:	40078513          	addi	a0,a5,1024
1c00b348:	4619                	li	a2,6
1c00b34a:	23f5                	jal	1c00b936 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b34c:	1018                	addi	a4,sp,32
1c00b34e:	c20a8793          	addi	a5,s5,-992
1c00b352:	97ba                	add	a5,a5,a4
1c00b354:	85d2                	mv	a1,s4
1c00b356:	60078513          	addi	a0,a5,1536
1c00b35a:	461d                	li	a2,7
1c00b35c:	2be9                	jal	1c00b936 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b35e:	85d2                	mv	a1,s4
1c00b360:	6a15                	lui	s4,0x5
1c00b362:	1018                	addi	a4,sp,32
1c00b364:	74f1                	lui	s1,0xffffc
1c00b366:	c20a0793          	addi	a5,s4,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b36a:	97ba                	add	a5,a5,a4
1c00b36c:	80048513          	addi	a0,s1,-2048 # ffffb800 <__l2_shared_end+0xe3feb800>
1c00b370:	4621                	li	a2,8
1c00b372:	953e                	add	a0,a0,a5
1c00b374:	23c9                	jal	1c00b936 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00b376:	101c                	addi	a5,sp,32
1c00b378:	c2090513          	addi	a0,s2,-992
1c00b37c:	953e                	add	a0,a0,a5
1c00b37e:	09b000ef          	jal	ra,1c00bc18 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c00b382:	1014                	addi	a3,sp,32
1c00b384:	77f9                	lui	a5,0xffffe
1c00b386:	c20a0713          	addi	a4,s4,-992
1c00b38a:	9736                	add	a4,a4,a3
1c00b38c:	80078493          	addi	s1,a5,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c00b390:	94ba                	add	s1,s1,a4
1c00b392:	c20a0713          	addi	a4,s4,-992
1c00b396:	9736                	add	a4,a4,a3
1c00b398:	97ba                	add	a5,a5,a4
1c00b39a:	c2090613          	addi	a2,s2,-992
1c00b39e:	9636                	add	a2,a2,a3
1c00b3a0:	85be                	mv	a1,a5
1c00b3a2:	8526                	mv	a0,s1
1c00b3a4:	c03e                	sw	a5,0(sp)
1c00b3a6:	203000ef          	jal	ra,1c00bda8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b3aa:	101c                	addi	a5,sp,32
1c00b3ac:	c2090613          	addi	a2,s2,-992
1c00b3b0:	963e                	add	a2,a2,a5
1c00b3b2:	4782                	lw	a5,0(sp)
1c00b3b4:	20048513          	addi	a0,s1,512
1c00b3b8:	013785b3          	add	a1,a5,s3
1c00b3bc:	1ed000ef          	jal	ra,1c00bda8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b3c0:	101c                	addi	a5,sp,32
1c00b3c2:	c2090613          	addi	a2,s2,-992
1c00b3c6:	963e                	add	a2,a2,a5
1c00b3c8:	4782                	lw	a5,0(sp)
1c00b3ca:	40048513          	addi	a0,s1,1024
1c00b3ce:	008785b3          	add	a1,a5,s0
1c00b3d2:	1d7000ef          	jal	ra,1c00bda8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b3d6:	101c                	addi	a5,sp,32
1c00b3d8:	c2090613          	addi	a2,s2,-992
1c00b3dc:	963e                	add	a2,a2,a5
1c00b3de:	6791                	lui	a5,0x4
1c00b3e0:	42078793          	addi	a5,a5,1056 # 4420 <__CTOR_LIST__-0x1bffbbe4>
1c00b3e4:	1018                	addi	a4,sp,32
1c00b3e6:	00f705b3          	add	a1,a4,a5
1c00b3ea:	60048513          	addi	a0,s1,1536
1c00b3ee:	1bb000ef          	jal	ra,1c00bda8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b3f2:	77f5                	lui	a5,0xffffd
1c00b3f4:	80078593          	addi	a1,a5,-2048 # ffffc800 <__l2_shared_end+0xe3fec800>
1c00b3f8:	c2090613          	addi	a2,s2,-992
1c00b3fc:	101c                	addi	a5,sp,32
1c00b3fe:	1018                	addi	a4,sp,32
1c00b400:	963e                	add	a2,a2,a5
1c00b402:	c20a0793          	addi	a5,s4,-992
1c00b406:	97ba                	add	a5,a5,a4
1c00b408:	95be                	add	a1,a1,a5
1c00b40a:	746d                	lui	s0,0xffffb
1c00b40c:	c20a0793          	addi	a5,s4,-992
1c00b410:	97ba                	add	a5,a5,a4
1c00b412:	40040513          	addi	a0,s0,1024 # ffffb400 <__l2_shared_end+0xe3feb400>
1c00b416:	953e                	add	a0,a0,a5
1c00b418:	191000ef          	jal	ra,1c00bda8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00b41c:	8526                	mv	a0,s1
1c00b41e:	0b7000ef          	jal	ra,1c00bcd4 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>
1c00b422:	1018                	addi	a4,sp,32
1c00b424:	c20a0793          	addi	a5,s4,-992
1c00b428:	97ba                	add	a5,a5,a4
1c00b42a:	97a2                	add	a5,a5,s0
1c00b42c:	c03e                	sw	a5,0(sp)
1c00b42e:	1014                	addi	a3,sp,32
1c00b430:	40078713          	addi	a4,a5,1024
1c00b434:	c2090793          	addi	a5,s2,-992
1c00b438:	97b6                	add	a5,a5,a3
1c00b43a:	4682                	lw	a3,0(sp)
1c00b43c:	a0078793          	addi	a5,a5,-1536
1c00b440:	60068693          	addi	a3,a3,1536
1c00b444:	00072803          	lw	a6,0(a4)
1c00b448:	4348                	lw	a0,4(a4)
1c00b44a:	470c                	lw	a1,8(a4)
1c00b44c:	4750                	lw	a2,12(a4)
1c00b44e:	0107a023          	sw	a6,0(a5)
1c00b452:	c3c8                	sw	a0,4(a5)
1c00b454:	c78c                	sw	a1,8(a5)
1c00b456:	c7d0                	sw	a2,12(a5)
1c00b458:	0741                	addi	a4,a4,16
1c00b45a:	07c1                	addi	a5,a5,16
1c00b45c:	fed714e3          	bne	a4,a3,1c00b444 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x48a>
1c00b460:	6795                	lui	a5,0x5
1c00b462:	7771                	lui	a4,0xffffc
1c00b464:	c2078793          	addi	a5,a5,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b468:	1014                	addi	a3,sp,32
1c00b46a:	a0070713          	addi	a4,a4,-1536 # ffffba00 <__l2_shared_end+0xe3feba00>
1c00b46e:	97b6                	add	a5,a5,a3
1c00b470:	6341                	lui	t1,0x10
1c00b472:	7ef1                	lui	t4,0xffffc
1c00b474:	973e                	add	a4,a4,a5
1c00b476:	4581                	li	a1,0
1c00b478:	137d                	addi	t1,t1,-1
1c00b47a:	10000e13          	li	t3,256
1c00b47e:	00071603          	lh	a2,0(a4)
1c00b482:	00471883          	lh	a7,4(a4)
1c00b486:	00271683          	lh	a3,2(a4)
1c00b48a:	00671803          	lh	a6,6(a4)
1c00b48e:	6485                	lui	s1,0x1
1c00b490:	4015d793          	srai	a5,a1,0x1
1c00b494:	c2048413          	addi	s0,s1,-992 # c20 <__CTOR_LIST__-0x1bfff3e4>
1c00b498:	02010f13          	addi	t5,sp,32
1c00b49c:	00279513          	slli	a0,a5,0x2
1c00b4a0:	947a                	add	s0,s0,t5
1c00b4a2:	0642                	slli	a2,a2,0x10
1c00b4a4:	0068f8b3          	and	a7,a7,t1
1c00b4a8:	0785                	addi	a5,a5,1
1c00b4aa:	06c2                	slli	a3,a3,0x10
1c00b4ac:	00687833          	and	a6,a6,t1
1c00b4b0:	9522                	add	a0,a0,s0
1c00b4b2:	01166633          	or	a2,a2,a7
1c00b4b6:	078a                	slli	a5,a5,0x2
1c00b4b8:	0106e6b3          	or	a3,a3,a6
1c00b4bc:	c0c52023          	sw	a2,-1024(a0)
1c00b4c0:	97a2                	add	a5,a5,s0
1c00b4c2:	c0d7a023          	sw	a3,-1024(a5)
1c00b4c6:	0591                	addi	a1,a1,4
1c00b4c8:	0721                	addi	a4,a4,8
1c00b4ca:	fbc59ae3          	bne	a1,t3,1c00b47e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x4c4>
1c00b4ce:	6495                	lui	s1,0x5
1c00b4d0:	c2048793          	addi	a5,s1,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b4d4:	e00e8593          	addi	a1,t4,-512 # ffffbe00 <__l2_shared_end+0xe3febe00>
1c00b4d8:	97fa                	add	a5,a5,t5
1c00b4da:	00b78433          	add	s0,a5,a1
1c00b4de:	c2048793          	addi	a5,s1,-992
1c00b4e2:	97fa                	add	a5,a5,t5
1c00b4e4:	c00e8513          	addi	a0,t4,-1024
1c00b4e8:	85a2                	mv	a1,s0
1c00b4ea:	953e                	add	a0,a0,a5
1c00b4ec:	ec2fe0ef          	jal	ra,1c009bae <KYBER_poly_intt>
1c00b4f0:	77ed                	lui	a5,0xffffb
1c00b4f2:	c2048713          	addi	a4,s1,-992
1c00b4f6:	1014                	addi	a3,sp,32
1c00b4f8:	40078793          	addi	a5,a5,1024 # ffffb400 <__l2_shared_end+0xe3feb400>
1c00b4fc:	9736                	add	a4,a4,a3
1c00b4fe:	97ba                	add	a5,a5,a4
1c00b500:	85a2                	mv	a1,s0
1c00b502:	10078613          	addi	a2,a5,256
1c00b506:	4198                	lw	a4,0(a1)
1c00b508:	0789                	addi	a5,a5,2
1c00b50a:	0591                	addi	a1,a1,4
1c00b50c:	01075693          	srli	a3,a4,0x10
1c00b510:	fed79f23          	sh	a3,-2(a5)
1c00b514:	0ee79f23          	sh	a4,254(a5)
1c00b518:	fec797e3          	bne	a5,a2,1c00b506 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x54c>
1c00b51c:	6995                	lui	s3,0x5
1c00b51e:	1018                	addi	a4,sp,32
1c00b520:	c2098793          	addi	a5,s3,-992 # 4c20 <__CTOR_LIST__-0x1bffb3e4>
1c00b524:	74f9                	lui	s1,0xffffe
1c00b526:	97ba                	add	a5,a5,a4
1c00b528:	80048493          	addi	s1,s1,-2048 # ffffd800 <__l2_shared_end+0xe3fed800>
1c00b52c:	94be                	add	s1,s1,a5
1c00b52e:	c2098793          	addi	a5,s3,-992
1c00b532:	97ba                	add	a5,a5,a4
1c00b534:	7675                	lui	a2,0xffffd
1c00b536:	963e                	add	a2,a2,a5
1c00b538:	85a6                	mv	a1,s1
1c00b53a:	8526                	mv	a0,s1
1c00b53c:	0ef000ef          	jal	ra,1c00be2a <PQCLEAN_KYBER1024_CLEAN_polyvec_add>
1c00b540:	1014                	addi	a3,sp,32
1c00b542:	796d                	lui	s2,0xffffb
1c00b544:	c2098713          	addi	a4,s3,-992
1c00b548:	9736                	add	a4,a4,a3
1c00b54a:	40090413          	addi	s0,s2,1024 # ffffb400 <__l2_shared_end+0xe3feb400>
1c00b54e:	c2098793          	addi	a5,s3,-992
1c00b552:	7671                	lui	a2,0xffffc
1c00b554:	943a                	add	s0,s0,a4
1c00b556:	97b6                	add	a5,a5,a3
1c00b558:	80060613          	addi	a2,a2,-2048 # ffffb800 <__l2_shared_end+0xe3feb800>
1c00b55c:	963e                	add	a2,a2,a5
1c00b55e:	85a2                	mv	a1,s0
1c00b560:	8522                	mv	a0,s0
1c00b562:	2941                	jal	1c00b9f2 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00b564:	1018                	addi	a4,sp,32
1c00b566:	c2098793          	addi	a5,s3,-992
1c00b56a:	97ba                	add	a5,a5,a4
1c00b56c:	60090613          	addi	a2,s2,1536
1c00b570:	963e                	add	a2,a2,a5
1c00b572:	85a2                	mv	a1,s0
1c00b574:	8522                	mv	a0,s0
1c00b576:	29b5                	jal	1c00b9f2 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00b578:	8526                	mv	a0,s1
1c00b57a:	08f000ef          	jal	ra,1c00be08 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>
1c00b57e:	8522                	mv	a0,s0
1c00b580:	21a9                	jal	1c00b9ca <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00b582:	85a6                	mv	a1,s1
1c00b584:	44a2                	lw	s1,8(sp)
1c00b586:	8526                	mv	a0,s1
1c00b588:	2949                	jal	1c00ba1a <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>
1c00b58a:	85a2                	mv	a1,s0
1c00b58c:	58048513          	addi	a0,s1,1408
1c00b590:	2a35                	jal	1c00b6cc <PQCLEAN_KYBER1024_CLEAN_poly_compress>
1c00b592:	6315                	lui	t1,0x5
1c00b594:	c3030313          	addi	t1,t1,-976 # 4c30 <__CTOR_LIST__-0x1bffb3d4>
1c00b598:	911a                	add	sp,sp,t1
1c00b59a:	40b6                	lw	ra,76(sp)
1c00b59c:	4426                	lw	s0,72(sp)
1c00b59e:	4496                	lw	s1,68(sp)
1c00b5a0:	4906                	lw	s2,64(sp)
1c00b5a2:	59f2                	lw	s3,60(sp)
1c00b5a4:	5a62                	lw	s4,56(sp)
1c00b5a6:	5ad2                	lw	s5,52(sp)
1c00b5a8:	5b42                	lw	s6,48(sp)
1c00b5aa:	5bb2                	lw	s7,44(sp)
1c00b5ac:	5c22                	lw	s8,40(sp)
1c00b5ae:	5c92                	lw	s9,36(sp)
1c00b5b0:	5d02                	lw	s10,32(sp)
1c00b5b2:	4df2                	lw	s11,28(sp)
1c00b5b4:	6161                	addi	sp,sp,80
1c00b5b6:	8082                	ret
1c00b5b8:	8111                	srli	a0,a0,0x4
1c00b5ba:	00459793          	slli	a5,a1,0x4
1c00b5be:	8fc9                	or	a5,a5,a0
1c00b5c0:	8b46                	mv	s6,a7
1c00b5c2:	c6f450e3          	bge	s0,a5,1c00b222 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x268>
1c00b5c6:	b1b5                	j	1c00b232 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x278>
1c00b5c8:	ccd45de3          	bge	s0,a3,1c00b2a2 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2e8>
1c00b5cc:	b1dd                	j	1c00b2b2 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x2f8>

1c00b5ce <PQCLEAN_KYBER1024_CLEAN_crypto_kem_enc>:
1c00b5ce:	7175                	addi	sp,sp,-144
1c00b5d0:	c522                	sw	s0,136(sp)
1c00b5d2:	c14a                	sw	s2,128(sp)
1c00b5d4:	842a                	mv	s0,a0
1c00b5d6:	892e                	mv	s2,a1
1c00b5d8:	850a                	mv	a0,sp
1c00b5da:	02000593          	li	a1,32
1c00b5de:	c706                	sw	ra,140(sp)
1c00b5e0:	c326                	sw	s1,132(sp)
1c00b5e2:	84b2                	mv	s1,a2
1c00b5e4:	081000ef          	jal	ra,1c00be64 <randombytes>
1c00b5e8:	858a                	mv	a1,sp
1c00b5ea:	850a                	mv	a0,sp
1c00b5ec:	02000613          	li	a2,32
1c00b5f0:	f6bfe0ef          	jal	ra,1c00a55a <sha3_256>
1c00b5f4:	85a6                	mv	a1,s1
1c00b5f6:	1008                	addi	a0,sp,32
1c00b5f8:	62000613          	li	a2,1568
1c00b5fc:	f5ffe0ef          	jal	ra,1c00a55a <sha3_256>
1c00b600:	858a                	mv	a1,sp
1c00b602:	0088                	addi	a0,sp,64
1c00b604:	04000613          	li	a2,64
1c00b608:	a32ff0ef          	jal	ra,1c00a83a <sha3_512>
1c00b60c:	1094                	addi	a3,sp,96
1c00b60e:	8626                	mv	a2,s1
1c00b610:	858a                	mv	a1,sp
1c00b612:	8522                	mv	a0,s0
1c00b614:	325d                	jal	1c00afba <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>
1c00b616:	85a2                	mv	a1,s0
1c00b618:	1088                	addi	a0,sp,96
1c00b61a:	62000613          	li	a2,1568
1c00b61e:	f3dfe0ef          	jal	ra,1c00a55a <sha3_256>
1c00b622:	854a                	mv	a0,s2
1c00b624:	0090                	addi	a2,sp,64
1c00b626:	04000693          	li	a3,64
1c00b62a:	02000593          	li	a1,32
1c00b62e:	ca9fe0ef          	jal	ra,1c00a2d6 <shake256>
1c00b632:	40ba                	lw	ra,140(sp)
1c00b634:	442a                	lw	s0,136(sp)
1c00b636:	449a                	lw	s1,132(sp)
1c00b638:	490a                	lw	s2,128(sp)
1c00b63a:	4501                	li	a0,0
1c00b63c:	6149                	addi	sp,sp,144
1c00b63e:	8082                	ret

1c00b640 <PQCLEAN_KYBER1024_CLEAN_basemul>:
1c00b640:	00261783          	lh	a5,2(a2)
1c00b644:	00259703          	lh	a4,2(a1)
1c00b648:	1101                	addi	sp,sp,-32
1c00b64a:	cc22                	sw	s0,24(sp)
1c00b64c:	842a                	mv	s0,a0
1c00b64e:	02f70533          	mul	a0,a4,a5
1c00b652:	ce06                	sw	ra,28(sp)
1c00b654:	ca26                	sw	s1,20(sp)
1c00b656:	c84a                	sw	s2,16(sp)
1c00b658:	c64e                	sw	s3,12(sp)
1c00b65a:	892e                	mv	s2,a1
1c00b65c:	84b2                	mv	s1,a2
1c00b65e:	89b6                	mv	s3,a3
1c00b660:	2ab000ef          	jal	ra,1c00c10a <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b664:	87aa                	mv	a5,a0
1c00b666:	03350533          	mul	a0,a0,s3
1c00b66a:	00f41023          	sh	a5,0(s0)
1c00b66e:	29d000ef          	jal	ra,1c00c10a <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b672:	00a41023          	sh	a0,0(s0)
1c00b676:	00049783          	lh	a5,0(s1)
1c00b67a:	00091503          	lh	a0,0(s2)
1c00b67e:	02f50533          	mul	a0,a0,a5
1c00b682:	289000ef          	jal	ra,1c00c10a <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b686:	00045783          	lhu	a5,0(s0)
1c00b68a:	953e                	add	a0,a0,a5
1c00b68c:	00a41023          	sh	a0,0(s0)
1c00b690:	00249783          	lh	a5,2(s1)
1c00b694:	00091503          	lh	a0,0(s2)
1c00b698:	02f50533          	mul	a0,a0,a5
1c00b69c:	26f000ef          	jal	ra,1c00c10a <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b6a0:	00a41123          	sh	a0,2(s0)
1c00b6a4:	00049783          	lh	a5,0(s1)
1c00b6a8:	00291503          	lh	a0,2(s2)
1c00b6ac:	02f50533          	mul	a0,a0,a5
1c00b6b0:	25b000ef          	jal	ra,1c00c10a <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00b6b4:	00245783          	lhu	a5,2(s0)
1c00b6b8:	40f2                	lw	ra,28(sp)
1c00b6ba:	44d2                	lw	s1,20(sp)
1c00b6bc:	953e                	add	a0,a0,a5
1c00b6be:	00a41123          	sh	a0,2(s0)
1c00b6c2:	4462                	lw	s0,24(sp)
1c00b6c4:	4942                	lw	s2,16(sp)
1c00b6c6:	49b2                	lw	s3,12(sp)
1c00b6c8:	6105                	addi	sp,sp,32
1c00b6ca:	8082                	ret

1c00b6cc <PQCLEAN_KYBER1024_CLEAN_poly_compress>:
1c00b6cc:	1101                	addi	sp,sp,-32
1c00b6ce:	6605                	lui	a2,0x1
1c00b6d0:	ce22                	sw	s0,28(sp)
1c00b6d2:	cc26                	sw	s1,24(sp)
1c00b6d4:	ca4a                	sw	s2,20(sp)
1c00b6d6:	c84e                	sw	s3,16(sp)
1c00b6d8:	c652                	sw	s4,12(sp)
1c00b6da:	0a050813          	addi	a6,a0,160
1c00b6de:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b6e2:	00459a03          	lh	s4,4(a1)
1c00b6e6:	00659983          	lh	s3,6(a1)
1c00b6ea:	00a59903          	lh	s2,10(a1)
1c00b6ee:	00c59483          	lh	s1,12(a1)
1c00b6f2:	00259403          	lh	s0,2(a1)
1c00b6f6:	40fa5713          	srai	a4,s4,0xf
1c00b6fa:	40f9d893          	srai	a7,s3,0xf
1c00b6fe:	40f95793          	srai	a5,s2,0xf
1c00b702:	40f4d693          	srai	a3,s1,0xf
1c00b706:	40f45f13          	srai	t5,s0,0xf
1c00b70a:	8f71                	and	a4,a4,a2
1c00b70c:	00c8f8b3          	and	a7,a7,a2
1c00b710:	8ff1                	and	a5,a5,a2
1c00b712:	8ef1                	and	a3,a3,a2
1c00b714:	00cf7f33          	and	t5,t5,a2
1c00b718:	9752                	add	a4,a4,s4
1c00b71a:	98ce                	add	a7,a7,s3
1c00b71c:	97ca                	add	a5,a5,s2
1c00b71e:	96a6                	add	a3,a3,s1
1c00b720:	9f22                	add	t5,t5,s0
1c00b722:	08c2                	slli	a7,a7,0x10
1c00b724:	06c2                	slli	a3,a3,0x10
1c00b726:	0742                	slli	a4,a4,0x10
1c00b728:	07c2                	slli	a5,a5,0x10
1c00b72a:	4108d893          	srai	a7,a7,0x10
1c00b72e:	86c1                	srai	a3,a3,0x10
1c00b730:	8741                	srai	a4,a4,0x10
1c00b732:	87c1                	srai	a5,a5,0x10
1c00b734:	0f42                	slli	t5,t5,0x10
1c00b736:	410f5f13          	srai	t5,t5,0x10
1c00b73a:	0896                	slli	a7,a7,0x5
1c00b73c:	0696                	slli	a3,a3,0x5
1c00b73e:	0716                	slli	a4,a4,0x5
1c00b740:	0796                	slli	a5,a5,0x5
1c00b742:	0f16                	slli	t5,t5,0x5
1c00b744:	68088893          	addi	a7,a7,1664
1c00b748:	68068693          	addi	a3,a3,1664
1c00b74c:	68070713          	addi	a4,a4,1664
1c00b750:	68078793          	addi	a5,a5,1664
1c00b754:	02c8d8b3          	divu	a7,a7,a2
1c00b758:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00b75c:	00859383          	lh	t2,8(a1)
1c00b760:	00e59283          	lh	t0,14(a1)
1c00b764:	00059f83          	lh	t6,0(a1)
1c00b768:	40f3de93          	srai	t4,t2,0xf
1c00b76c:	00cefeb3          	and	t4,t4,a2
1c00b770:	9e9e                	add	t4,t4,t2
1c00b772:	40f2d313          	srai	t1,t0,0xf
1c00b776:	0ec2                	slli	t4,t4,0x10
1c00b778:	40ffde13          	srai	t3,t6,0xf
1c00b77c:	00c37333          	and	t1,t1,a2
1c00b780:	410ede93          	srai	t4,t4,0x10
1c00b784:	9316                	add	t1,t1,t0
1c00b786:	00ce7e33          	and	t3,t3,a2
1c00b78a:	0e96                	slli	t4,t4,0x5
1c00b78c:	9e7e                	add	t3,t3,t6
1c00b78e:	0342                	slli	t1,t1,0x10
1c00b790:	680e8e93          	addi	t4,t4,1664
1c00b794:	41035313          	srai	t1,t1,0x10
1c00b798:	0e42                	slli	t3,t3,0x10
1c00b79a:	410e5e13          	srai	t3,t3,0x10
1c00b79e:	0316                	slli	t1,t1,0x5
1c00b7a0:	0515                	addi	a0,a0,5
1c00b7a2:	68030313          	addi	t1,t1,1664
1c00b7a6:	0e16                	slli	t3,t3,0x5
1c00b7a8:	680e0e13          	addi	t3,t3,1664
1c00b7ac:	05c1                	addi	a1,a1,16
1c00b7ae:	02c6d6b3          	divu	a3,a3,a2
1c00b7b2:	01f8f893          	andi	a7,a7,31
1c00b7b6:	00789293          	slli	t0,a7,0x7
1c00b7ba:	0018d893          	srli	a7,a7,0x1
1c00b7be:	02c75733          	divu	a4,a4,a2
1c00b7c2:	8afd                	andi	a3,a3,31
1c00b7c4:	00669f93          	slli	t6,a3,0x6
1c00b7c8:	8289                	srli	a3,a3,0x2
1c00b7ca:	02c7d7b3          	divu	a5,a5,a2
1c00b7ce:	8b7d                	andi	a4,a4,31
1c00b7d0:	070a                	slli	a4,a4,0x2
1c00b7d2:	00576733          	or	a4,a4,t0
1c00b7d6:	02cf5f33          	divu	t5,t5,a2
1c00b7da:	8bfd                	andi	a5,a5,31
1c00b7dc:	0786                	slli	a5,a5,0x1
1c00b7de:	01f7e7b3          	or	a5,a5,t6
1c00b7e2:	01ff7f13          	andi	t5,t5,31
1c00b7e6:	02cedeb3          	divu	t4,t4,a2
1c00b7ea:	005f1f93          	slli	t6,t5,0x5
1c00b7ee:	003f5f13          	srli	t5,t5,0x3
1c00b7f2:	01e76733          	or	a4,a4,t5
1c00b7f6:	fee50e23          	sb	a4,-4(a0)
1c00b7fa:	02c35733          	divu	a4,t1,a2
1c00b7fe:	01fefe93          	andi	t4,t4,31
1c00b802:	004e9313          	slli	t1,t4,0x4
1c00b806:	004ede93          	srli	t4,t4,0x4
1c00b80a:	01d7e7b3          	or	a5,a5,t4
1c00b80e:	fef50f23          	sb	a5,-2(a0)
1c00b812:	0068e8b3          	or	a7,a7,t1
1c00b816:	ff150ea3          	sb	a7,-3(a0)
1c00b81a:	02ce5e33          	divu	t3,t3,a2
1c00b81e:	01f77793          	andi	a5,a4,31
1c00b822:	078e                	slli	a5,a5,0x3
1c00b824:	8edd                	or	a3,a3,a5
1c00b826:	fed50fa3          	sb	a3,-1(a0)
1c00b82a:	01fe7e13          	andi	t3,t3,31
1c00b82e:	01fe6e33          	or	t3,t3,t6
1c00b832:	ffc50da3          	sb	t3,-5(a0)
1c00b836:	eb0516e3          	bne	a0,a6,1c00b6e2 <PQCLEAN_KYBER1024_CLEAN_poly_compress+0x16>
1c00b83a:	4472                	lw	s0,28(sp)
1c00b83c:	44e2                	lw	s1,24(sp)
1c00b83e:	4952                	lw	s2,20(sp)
1c00b840:	49c2                	lw	s3,16(sp)
1c00b842:	4a32                	lw	s4,12(sp)
1c00b844:	6105                	addi	sp,sp,32
1c00b846:	8082                	ret

1c00b848 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>:
1c00b848:	6685                	lui	a3,0x1
1c00b84a:	18058613          	addi	a2,a1,384
1c00b84e:	16fd                	addi	a3,a3,-1
1c00b850:	0015c783          	lbu	a5,1(a1)
1c00b854:	0005c703          	lbu	a4,0(a1)
1c00b858:	058d                	addi	a1,a1,3
1c00b85a:	07a2                	slli	a5,a5,0x8
1c00b85c:	8fd9                	or	a5,a5,a4
1c00b85e:	8ff5                	and	a5,a5,a3
1c00b860:	00f51023          	sh	a5,0(a0)
1c00b864:	ffe5c703          	lbu	a4,-2(a1)
1c00b868:	fff5c783          	lbu	a5,-1(a1)
1c00b86c:	0511                	addi	a0,a0,4
1c00b86e:	8311                	srli	a4,a4,0x4
1c00b870:	0792                	slli	a5,a5,0x4
1c00b872:	8fd9                	or	a5,a5,a4
1c00b874:	fef51f23          	sh	a5,-2(a0)
1c00b878:	fcb61ce3          	bne	a2,a1,1c00b850 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes+0x8>
1c00b87c:	8082                	ret

1c00b87e <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>:
1c00b87e:	20050713          	addi	a4,a0,512
1c00b882:	0005c783          	lbu	a5,0(a1)
1c00b886:	0541                	addi	a0,a0,16
1c00b888:	0585                	addi	a1,a1,1
1c00b88a:	8b85                	andi	a5,a5,1
1c00b88c:	40f007b3          	neg	a5,a5
1c00b890:	6817f793          	andi	a5,a5,1665
1c00b894:	fef51823          	sh	a5,-16(a0)
1c00b898:	fff5c783          	lbu	a5,-1(a1)
1c00b89c:	07fa                	slli	a5,a5,0x1e
1c00b89e:	87fd                	srai	a5,a5,0x1f
1c00b8a0:	6817f793          	andi	a5,a5,1665
1c00b8a4:	fef51923          	sh	a5,-14(a0)
1c00b8a8:	fff5c783          	lbu	a5,-1(a1)
1c00b8ac:	07f6                	slli	a5,a5,0x1d
1c00b8ae:	87fd                	srai	a5,a5,0x1f
1c00b8b0:	6817f793          	andi	a5,a5,1665
1c00b8b4:	fef51a23          	sh	a5,-12(a0)
1c00b8b8:	fff5c783          	lbu	a5,-1(a1)
1c00b8bc:	07f2                	slli	a5,a5,0x1c
1c00b8be:	87fd                	srai	a5,a5,0x1f
1c00b8c0:	6817f793          	andi	a5,a5,1665
1c00b8c4:	fef51b23          	sh	a5,-10(a0)
1c00b8c8:	fff5c783          	lbu	a5,-1(a1)
1c00b8cc:	07ee                	slli	a5,a5,0x1b
1c00b8ce:	87fd                	srai	a5,a5,0x1f
1c00b8d0:	6817f793          	andi	a5,a5,1665
1c00b8d4:	fef51c23          	sh	a5,-8(a0)
1c00b8d8:	fff5c783          	lbu	a5,-1(a1)
1c00b8dc:	07ea                	slli	a5,a5,0x1a
1c00b8de:	87fd                	srai	a5,a5,0x1f
1c00b8e0:	6817f793          	andi	a5,a5,1665
1c00b8e4:	fef51d23          	sh	a5,-6(a0)
1c00b8e8:	fff5c783          	lbu	a5,-1(a1)
1c00b8ec:	07e6                	slli	a5,a5,0x19
1c00b8ee:	87fd                	srai	a5,a5,0x1f
1c00b8f0:	6817f793          	andi	a5,a5,1665
1c00b8f4:	fef51e23          	sh	a5,-4(a0)
1c00b8f8:	fff5c783          	lbu	a5,-1(a1)
1c00b8fc:	879d                	srai	a5,a5,0x7
1c00b8fe:	40f007b3          	neg	a5,a5
1c00b902:	6817f793          	andi	a5,a5,1665
1c00b906:	fef51f23          	sh	a5,-2(a0)
1c00b90a:	f6a71ce3          	bne	a4,a0,1c00b882 <PQCLEAN_KYBER1024_CLEAN_poly_frommsg+0x4>
1c00b90e:	8082                	ret

1c00b910 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>:
1c00b910:	7175                	addi	sp,sp,-144
1c00b912:	c522                	sw	s0,136(sp)
1c00b914:	86b2                	mv	a3,a2
1c00b916:	842a                	mv	s0,a0
1c00b918:	862e                	mv	a2,a1
1c00b91a:	850a                	mv	a0,sp
1c00b91c:	08000593          	li	a1,128
1c00b920:	c706                	sw	ra,140(sp)
1c00b922:	061000ef          	jal	ra,1c00c182 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00b926:	858a                	mv	a1,sp
1c00b928:	8522                	mv	a0,s0
1c00b92a:	ae2fe0ef          	jal	ra,1c009c0c <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>
1c00b92e:	40ba                	lw	ra,140(sp)
1c00b930:	442a                	lw	s0,136(sp)
1c00b932:	6149                	addi	sp,sp,144
1c00b934:	8082                	ret

1c00b936 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>:
1c00b936:	7175                	addi	sp,sp,-144
1c00b938:	c522                	sw	s0,136(sp)
1c00b93a:	86b2                	mv	a3,a2
1c00b93c:	842a                	mv	s0,a0
1c00b93e:	862e                	mv	a2,a1
1c00b940:	850a                	mv	a0,sp
1c00b942:	08000593          	li	a1,128
1c00b946:	c706                	sw	ra,140(sp)
1c00b948:	03b000ef          	jal	ra,1c00c182 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00b94c:	858a                	mv	a1,sp
1c00b94e:	8522                	mv	a0,s0
1c00b950:	bbefe0ef          	jal	ra,1c009d0e <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>
1c00b954:	40ba                	lw	ra,140(sp)
1c00b956:	442a                	lw	s0,136(sp)
1c00b958:	6149                	addi	sp,sp,144
1c00b95a:	8082                	ret

1c00b95c <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>:
1c00b95c:	1101                	addi	sp,sp,-32
1c00b95e:	c452                	sw	s4,8(sp)
1c00b960:	c256                	sw	s5,4(sp)
1c00b962:	1c000a37          	lui	s4,0x1c000
1c00b966:	1c000ab7          	lui	s5,0x1c000
1c00b96a:	ca26                	sw	s1,20(sp)
1c00b96c:	c84a                	sw	s2,16(sp)
1c00b96e:	c64e                	sw	s3,12(sp)
1c00b970:	ce06                	sw	ra,28(sp)
1c00b972:	cc22                	sw	s0,24(sp)
1c00b974:	1cca0a13          	addi	s4,s4,460 # 1c0001cc <PQCLEAN_KYBER1024_CLEAN_zetas+0x80>
1c00b978:	00450993          	addi	s3,a0,4
1c00b97c:	00458913          	addi	s2,a1,4
1c00b980:	00460493          	addi	s1,a2,4
1c00b984:	24ca8a93          	addi	s5,s5,588 # 1c00024c <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c00b988:	000a1403          	lh	s0,0(s4)
1c00b98c:	ffc48613          	addi	a2,s1,-4
1c00b990:	ffc90593          	addi	a1,s2,-4
1c00b994:	ffc98513          	addi	a0,s3,-4
1c00b998:	86a2                	mv	a3,s0
1c00b99a:	315d                	jal	1c00b640 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00b99c:	408006b3          	neg	a3,s0
1c00b9a0:	06c2                	slli	a3,a3,0x10
1c00b9a2:	8626                	mv	a2,s1
1c00b9a4:	85ca                	mv	a1,s2
1c00b9a6:	854e                	mv	a0,s3
1c00b9a8:	86c1                	srai	a3,a3,0x10
1c00b9aa:	0a09                	addi	s4,s4,2
1c00b9ac:	3951                	jal	1c00b640 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00b9ae:	09a1                	addi	s3,s3,8
1c00b9b0:	0921                	addi	s2,s2,8
1c00b9b2:	04a1                	addi	s1,s1,8
1c00b9b4:	fd4a9ae3          	bne	s5,s4,1c00b988 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0x2c>
1c00b9b8:	40f2                	lw	ra,28(sp)
1c00b9ba:	4462                	lw	s0,24(sp)
1c00b9bc:	44d2                	lw	s1,20(sp)
1c00b9be:	4942                	lw	s2,16(sp)
1c00b9c0:	49b2                	lw	s3,12(sp)
1c00b9c2:	4a22                	lw	s4,8(sp)
1c00b9c4:	4a92                	lw	s5,4(sp)
1c00b9c6:	6105                	addi	sp,sp,32
1c00b9c8:	8082                	ret

1c00b9ca <PQCLEAN_KYBER1024_CLEAN_poly_reduce>:
1c00b9ca:	1141                	addi	sp,sp,-16
1c00b9cc:	c422                	sw	s0,8(sp)
1c00b9ce:	c226                	sw	s1,4(sp)
1c00b9d0:	c606                	sw	ra,12(sp)
1c00b9d2:	842a                	mv	s0,a0
1c00b9d4:	20050493          	addi	s1,a0,512
1c00b9d8:	00041503          	lh	a0,0(s0)
1c00b9dc:	0409                	addi	s0,s0,2
1c00b9de:	27a1                	jal	1c00c126 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00b9e0:	fea41f23          	sh	a0,-2(s0)
1c00b9e4:	fe941ae3          	bne	s0,s1,1c00b9d8 <PQCLEAN_KYBER1024_CLEAN_poly_reduce+0xe>
1c00b9e8:	40b2                	lw	ra,12(sp)
1c00b9ea:	4422                	lw	s0,8(sp)
1c00b9ec:	4492                	lw	s1,4(sp)
1c00b9ee:	0141                	addi	sp,sp,16
1c00b9f0:	8082                	ret

1c00b9f2 <PQCLEAN_KYBER1024_CLEAN_poly_add>:
1c00b9f2:	4781                	li	a5,0
1c00b9f4:	20000893          	li	a7,512
1c00b9f8:	00f606b3          	add	a3,a2,a5
1c00b9fc:	00f58733          	add	a4,a1,a5
1c00ba00:	0006d803          	lhu	a6,0(a3) # 1000 <__CTOR_LIST__-0x1bfff004>
1c00ba04:	00075703          	lhu	a4,0(a4)
1c00ba08:	00f506b3          	add	a3,a0,a5
1c00ba0c:	0789                	addi	a5,a5,2
1c00ba0e:	9742                	add	a4,a4,a6
1c00ba10:	00e69023          	sh	a4,0(a3)
1c00ba14:	ff1792e3          	bne	a5,a7,1c00b9f8 <PQCLEAN_KYBER1024_CLEAN_poly_add+0x6>
1c00ba18:	8082                	ret

1c00ba1a <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>:
1c00ba1a:	1101                	addi	sp,sp,-32
1c00ba1c:	6605                	lui	a2,0x1
1c00ba1e:	ce22                	sw	s0,28(sp)
1c00ba20:	cc26                	sw	s1,24(sp)
1c00ba22:	ca4a                	sw	s2,20(sp)
1c00ba24:	c84e                	sw	s3,16(sp)
1c00ba26:	c652                	sw	s4,12(sp)
1c00ba28:	c456                	sw	s5,8(sp)
1c00ba2a:	c25a                	sw	s6,4(sp)
1c00ba2c:	16050813          	addi	a6,a0,352
1c00ba30:	88ae                	mv	a7,a1
1c00ba32:	6e050313          	addi	t1,a0,1760
1c00ba36:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00ba3a:	ea080593          	addi	a1,a6,-352 # ff00fea0 <__l2_shared_end+0xe2fffea0>
1c00ba3e:	8546                	mv	a0,a7
1c00ba40:	00051b03          	lh	s6,0(a0)
1c00ba44:	00251a83          	lh	s5,2(a0)
1c00ba48:	00451a03          	lh	s4,4(a0)
1c00ba4c:	40fb5e13          	srai	t3,s6,0xf
1c00ba50:	40fad713          	srai	a4,s5,0xf
1c00ba54:	40fa5693          	srai	a3,s4,0xf
1c00ba58:	00ce7e33          	and	t3,t3,a2
1c00ba5c:	8f71                	and	a4,a4,a2
1c00ba5e:	8ef1                	and	a3,a3,a2
1c00ba60:	9e5a                	add	t3,t3,s6
1c00ba62:	9756                	add	a4,a4,s5
1c00ba64:	96d2                	add	a3,a3,s4
1c00ba66:	0e42                	slli	t3,t3,0x10
1c00ba68:	0742                	slli	a4,a4,0x10
1c00ba6a:	010e5e13          	srli	t3,t3,0x10
1c00ba6e:	8341                	srli	a4,a4,0x10
1c00ba70:	06c2                	slli	a3,a3,0x10
1c00ba72:	82c1                	srli	a3,a3,0x10
1c00ba74:	0e2e                	slli	t3,t3,0xb
1c00ba76:	072e                	slli	a4,a4,0xb
1c00ba78:	06ae                	slli	a3,a3,0xb
1c00ba7a:	680e0e13          	addi	t3,t3,1664
1c00ba7e:	68070713          	addi	a4,a4,1664
1c00ba82:	02ce5e33          	divu	t3,t3,a2
1c00ba86:	68068693          	addi	a3,a3,1664
1c00ba8a:	00651983          	lh	s3,6(a0)
1c00ba8e:	00851903          	lh	s2,8(a0)
1c00ba92:	00e51383          	lh	t2,14(a0)
1c00ba96:	40f9d793          	srai	a5,s3,0xf
1c00ba9a:	8ff1                	and	a5,a5,a2
1c00ba9c:	40f95f93          	srai	t6,s2,0xf
1c00baa0:	97ce                	add	a5,a5,s3
1c00baa2:	00cfffb3          	and	t6,t6,a2
1c00baa6:	07c2                	slli	a5,a5,0x10
1c00baa8:	40f3df13          	srai	t5,t2,0xf
1c00baac:	9fca                	add	t6,t6,s2
1c00baae:	83c1                	srli	a5,a5,0x10
1c00bab0:	05ad                	addi	a1,a1,11
1c00bab2:	00cf7f33          	and	t5,t5,a2
1c00bab6:	0fc2                	slli	t6,t6,0x10
1c00bab8:	07ae                	slli	a5,a5,0xb
1c00baba:	00a51483          	lh	s1,10(a0)
1c00babe:	00c51403          	lh	s0,12(a0)
1c00bac2:	9f1e                	add	t5,t5,t2
1c00bac4:	010fdf93          	srli	t6,t6,0x10
1c00bac8:	68078793          	addi	a5,a5,1664
1c00bacc:	0fae                	slli	t6,t6,0xb
1c00bace:	680f8f93          	addi	t6,t6,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00bad2:	40f4d293          	srai	t0,s1,0xf
1c00bad6:	00c2f2b3          	and	t0,t0,a2
1c00bada:	40f45e93          	srai	t4,s0,0xf
1c00bade:	92a6                	add	t0,t0,s1
1c00bae0:	00cefeb3          	and	t4,t4,a2
1c00bae4:	02c2                	slli	t0,t0,0x10
1c00bae6:	9ea2                	add	t4,t4,s0
1c00bae8:	0102d293          	srli	t0,t0,0x10
1c00baec:	0ec2                	slli	t4,t4,0x10
1c00baee:	02c75733          	divu	a4,a4,a2
1c00baf2:	7ffe7e13          	andi	t3,t3,2047
1c00baf6:	008e5393          	srli	t2,t3,0x8
1c00bafa:	ffc58aa3          	sb	t3,-11(a1)
1c00bafe:	02ae                	slli	t0,t0,0xb
1c00bb00:	010ede93          	srli	t4,t4,0x10
1c00bb04:	68028293          	addi	t0,t0,1664
1c00bb08:	0f42                	slli	t5,t5,0x10
1c00bb0a:	0eae                	slli	t4,t4,0xb
1c00bb0c:	680e8e93          	addi	t4,t4,1664
1c00bb10:	010f5f13          	srli	t5,t5,0x10
1c00bb14:	0f2e                	slli	t5,t5,0xb
1c00bb16:	680f0f13          	addi	t5,t5,1664
1c00bb1a:	0541                	addi	a0,a0,16
1c00bb1c:	02c6d6b3          	divu	a3,a3,a2
1c00bb20:	7ff77713          	andi	a4,a4,2047
1c00bb24:	00371e13          	slli	t3,a4,0x3
1c00bb28:	01c3ee33          	or	t3,t2,t3
1c00bb2c:	8315                	srli	a4,a4,0x5
1c00bb2e:	ffc58b23          	sb	t3,-10(a1)
1c00bb32:	7ff6f693          	andi	a3,a3,2047
1c00bb36:	00669393          	slli	t2,a3,0x6
1c00bb3a:	02c7d7b3          	divu	a5,a5,a2
1c00bb3e:	00776733          	or	a4,a4,t2
1c00bb42:	fee58ba3          	sb	a4,-9(a1)
1c00bb46:	00a6de13          	srli	t3,a3,0xa
1c00bb4a:	8289                	srli	a3,a3,0x2
1c00bb4c:	fed58c23          	sb	a3,-8(a1)
1c00bb50:	02cfd733          	divu	a4,t6,a2
1c00bb54:	7ff7f793          	andi	a5,a5,2047
1c00bb58:	00179693          	slli	a3,a5,0x1
1c00bb5c:	00de66b3          	or	a3,t3,a3
1c00bb60:	839d                	srli	a5,a5,0x7
1c00bb62:	fed58ca3          	sb	a3,-7(a1)
1c00bb66:	7ff77713          	andi	a4,a4,2047
1c00bb6a:	00471e13          	slli	t3,a4,0x4
1c00bb6e:	02c2d6b3          	divu	a3,t0,a2
1c00bb72:	01c7e7b3          	or	a5,a5,t3
1c00bb76:	fef58d23          	sb	a5,-6(a1)
1c00bb7a:	8311                	srli	a4,a4,0x4
1c00bb7c:	02ced7b3          	divu	a5,t4,a2
1c00bb80:	7ff6f693          	andi	a3,a3,2047
1c00bb84:	00769e93          	slli	t4,a3,0x7
1c00bb88:	01d76733          	or	a4,a4,t4
1c00bb8c:	0096de13          	srli	t3,a3,0x9
1c00bb90:	fee58da3          	sb	a4,-5(a1)
1c00bb94:	8285                	srli	a3,a3,0x1
1c00bb96:	fed58e23          	sb	a3,-4(a1)
1c00bb9a:	02cf5f33          	divu	t5,t5,a2
1c00bb9e:	7ff7f793          	andi	a5,a5,2047
1c00bba2:	00279713          	slli	a4,a5,0x2
1c00bba6:	00ee6733          	or	a4,t3,a4
1c00bbaa:	8399                	srli	a5,a5,0x6
1c00bbac:	fee58ea3          	sb	a4,-3(a1)
1c00bbb0:	7fff7f13          	andi	t5,t5,2047
1c00bbb4:	005f1713          	slli	a4,t5,0x5
1c00bbb8:	8fd9                	or	a5,a5,a4
1c00bbba:	003f5f13          	srli	t5,t5,0x3
1c00bbbe:	fef58f23          	sb	a5,-2(a1)
1c00bbc2:	ffe58fa3          	sb	t5,-1(a1)
1c00bbc6:	e7059de3          	bne	a1,a6,1c00ba40 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x26>
1c00bbca:	16058813          	addi	a6,a1,352
1c00bbce:	20088893          	addi	a7,a7,512
1c00bbd2:	e70314e3          	bne	t1,a6,1c00ba3a <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x20>
1c00bbd6:	4472                	lw	s0,28(sp)
1c00bbd8:	44e2                	lw	s1,24(sp)
1c00bbda:	4952                	lw	s2,20(sp)
1c00bbdc:	49c2                	lw	s3,16(sp)
1c00bbde:	4a32                	lw	s4,12(sp)
1c00bbe0:	4aa2                	lw	s5,8(sp)
1c00bbe2:	4b12                	lw	s6,4(sp)
1c00bbe4:	6105                	addi	sp,sp,32
1c00bbe6:	8082                	ret

1c00bbe8 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>:
1c00bbe8:	1141                	addi	sp,sp,-16
1c00bbea:	c422                	sw	s0,8(sp)
1c00bbec:	c226                	sw	s1,4(sp)
1c00bbee:	c04a                	sw	s2,0(sp)
1c00bbf0:	c606                	sw	ra,12(sp)
1c00bbf2:	842e                	mv	s0,a1
1c00bbf4:	84aa                	mv	s1,a0
1c00bbf6:	60058913          	addi	s2,a1,1536
1c00bbfa:	85a2                	mv	a1,s0
1c00bbfc:	8526                	mv	a0,s1
1c00bbfe:	18040413          	addi	s0,s0,384
1c00bc02:	3199                	jal	1c00b848 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>
1c00bc04:	20048493          	addi	s1,s1,512
1c00bc08:	ff2419e3          	bne	s0,s2,1c00bbfa <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes+0x12>
1c00bc0c:	40b2                	lw	ra,12(sp)
1c00bc0e:	4422                	lw	s0,8(sp)
1c00bc10:	4492                	lw	s1,4(sp)
1c00bc12:	4902                	lw	s2,0(sp)
1c00bc14:	0141                	addi	sp,sp,16
1c00bc16:	8082                	ret

1c00bc18 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>:
1c00bc18:	9e010113          	addi	sp,sp,-1568
1c00bc1c:	60812c23          	sw	s0,1560(sp)
1c00bc20:	6405                	lui	s0,0x1
1c00bc22:	60912a23          	sw	s1,1556(sp)
1c00bc26:	80040413          	addi	s0,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00bc2a:	64c1                	lui	s1,0x10
1c00bc2c:	61212823          	sw	s2,1552(sp)
1c00bc30:	61312623          	sw	s3,1548(sp)
1c00bc34:	61412423          	sw	s4,1544(sp)
1c00bc38:	60112e23          	sw	ra,1564(sp)
1c00bc3c:	8a2a                	mv	s4,a0
1c00bc3e:	942a                	add	s0,s0,a0
1c00bc40:	40010993          	addi	s3,sp,1024
1c00bc44:	14fd                	addi	s1,s1,-1
1c00bc46:	10000913          	li	s2,256
1c00bc4a:	20000613          	li	a2,512
1c00bc4e:	85d2                	mv	a1,s4
1c00bc50:	854e                	mv	a0,s3
1c00bc52:	2b41                	jal	1c00c1e2 <memcpy>
1c00bc54:	864e                	mv	a2,s3
1c00bc56:	4681                	li	a3,0
1c00bc58:	00061703          	lh	a4,0(a2)
1c00bc5c:	00261583          	lh	a1,2(a2)
1c00bc60:	4016d793          	srai	a5,a3,0x1
1c00bc64:	078a                	slli	a5,a5,0x2
1c00bc66:	0742                	slli	a4,a4,0x10
1c00bc68:	8de5                	and	a1,a1,s1
1c00bc6a:	60010513          	addi	a0,sp,1536
1c00bc6e:	97aa                	add	a5,a5,a0
1c00bc70:	8f4d                	or	a4,a4,a1
1c00bc72:	a0e7a023          	sw	a4,-1536(a5)
1c00bc76:	0689                	addi	a3,a3,2
1c00bc78:	0611                	addi	a2,a2,4
1c00bc7a:	fd269fe3          	bne	a3,s2,1c00bc58 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x40>
1c00bc7e:	040c                	addi	a1,sp,512
1c00bc80:	850a                	mv	a0,sp
1c00bc82:	ed1fd0ef          	jal	ra,1c009b52 <KYBER_poly_ntt>
1c00bc86:	0418                	addi	a4,sp,512
1c00bc88:	87d2                	mv	a5,s4
1c00bc8a:	4310                	lw	a2,0(a4)
1c00bc8c:	4354                	lw	a3,4(a4)
1c00bc8e:	0721                	addi	a4,a4,8
1c00bc90:	01065813          	srli	a6,a2,0x10
1c00bc94:	0106d593          	srli	a1,a3,0x10
1c00bc98:	01079023          	sh	a6,0(a5)
1c00bc9c:	00b79123          	sh	a1,2(a5)
1c00bca0:	00c79223          	sh	a2,4(a5)
1c00bca4:	00d79323          	sh	a3,6(a5)
1c00bca8:	07a1                	addi	a5,a5,8
1c00bcaa:	fee990e3          	bne	s3,a4,1c00bc8a <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x72>
1c00bcae:	200a0a13          	addi	s4,s4,512
1c00bcb2:	f9441ce3          	bne	s0,s4,1c00bc4a <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt+0x32>
1c00bcb6:	61c12083          	lw	ra,1564(sp)
1c00bcba:	61812403          	lw	s0,1560(sp)
1c00bcbe:	61412483          	lw	s1,1556(sp)
1c00bcc2:	61012903          	lw	s2,1552(sp)
1c00bcc6:	60c12983          	lw	s3,1548(sp)
1c00bcca:	60812a03          	lw	s4,1544(sp)
1c00bcce:	62010113          	addi	sp,sp,1568
1c00bcd2:	8082                	ret

1c00bcd4 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>:
1c00bcd4:	9e010113          	addi	sp,sp,-1568
1c00bcd8:	60812c23          	sw	s0,1560(sp)
1c00bcdc:	6405                	lui	s0,0x1
1c00bcde:	60912a23          	sw	s1,1556(sp)
1c00bce2:	90040413          	addi	s0,s0,-1792 # 900 <__CTOR_LIST__-0x1bfff704>
1c00bce6:	64c1                	lui	s1,0x10
1c00bce8:	61212823          	sw	s2,1552(sp)
1c00bcec:	61312623          	sw	s3,1548(sp)
1c00bcf0:	61412423          	sw	s4,1544(sp)
1c00bcf4:	60112e23          	sw	ra,1564(sp)
1c00bcf8:	10050a13          	addi	s4,a0,256
1c00bcfc:	942a                	add	s0,s0,a0
1c00bcfe:	40010913          	addi	s2,sp,1024
1c00bd02:	14fd                	addi	s1,s1,-1
1c00bd04:	10000993          	li	s3,256
1c00bd08:	f00a0593          	addi	a1,s4,-256
1c00bd0c:	20000613          	li	a2,512
1c00bd10:	854a                	mv	a0,s2
1c00bd12:	29c1                	jal	1c00c1e2 <memcpy>
1c00bd14:	874a                	mv	a4,s2
1c00bd16:	4581                	li	a1,0
1c00bd18:	00071603          	lh	a2,0(a4)
1c00bd1c:	00471883          	lh	a7,4(a4)
1c00bd20:	00271683          	lh	a3,2(a4)
1c00bd24:	00671803          	lh	a6,6(a4)
1c00bd28:	4015d793          	srai	a5,a1,0x1
1c00bd2c:	00279513          	slli	a0,a5,0x2
1c00bd30:	60010313          	addi	t1,sp,1536
1c00bd34:	0642                	slli	a2,a2,0x10
1c00bd36:	0098f8b3          	and	a7,a7,s1
1c00bd3a:	0785                	addi	a5,a5,1
1c00bd3c:	06c2                	slli	a3,a3,0x10
1c00bd3e:	00987833          	and	a6,a6,s1
1c00bd42:	951a                	add	a0,a0,t1
1c00bd44:	01166633          	or	a2,a2,a7
1c00bd48:	078a                	slli	a5,a5,0x2
1c00bd4a:	0106e6b3          	or	a3,a3,a6
1c00bd4e:	a0c52023          	sw	a2,-1536(a0)
1c00bd52:	979a                	add	a5,a5,t1
1c00bd54:	a0d7a023          	sw	a3,-1536(a5)
1c00bd58:	0591                	addi	a1,a1,4
1c00bd5a:	0721                	addi	a4,a4,8
1c00bd5c:	fb359ee3          	bne	a1,s3,1c00bd18 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont+0x44>
1c00bd60:	040c                	addi	a1,sp,512
1c00bd62:	850a                	mv	a0,sp
1c00bd64:	e4bfd0ef          	jal	ra,1c009bae <KYBER_poly_intt>
1c00bd68:	0418                	addi	a4,sp,512
1c00bd6a:	87d2                	mv	a5,s4
1c00bd6c:	4314                	lw	a3,0(a4)
1c00bd6e:	0711                	addi	a4,a4,4
1c00bd70:	0789                	addi	a5,a5,2
1c00bd72:	0106d613          	srli	a2,a3,0x10
1c00bd76:	eec79f23          	sh	a2,-258(a5)
1c00bd7a:	fed79f23          	sh	a3,-2(a5)
1c00bd7e:	fee917e3          	bne	s2,a4,1c00bd6c <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont+0x98>
1c00bd82:	200a0a13          	addi	s4,s4,512
1c00bd86:	f94411e3          	bne	s0,s4,1c00bd08 <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont+0x34>
1c00bd8a:	61c12083          	lw	ra,1564(sp)
1c00bd8e:	61812403          	lw	s0,1560(sp)
1c00bd92:	61412483          	lw	s1,1556(sp)
1c00bd96:	61012903          	lw	s2,1552(sp)
1c00bd9a:	60c12983          	lw	s3,1548(sp)
1c00bd9e:	60812a03          	lw	s4,1544(sp)
1c00bda2:	62010113          	addi	sp,sp,1568
1c00bda6:	8082                	ret

1c00bda8 <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>:
1c00bda8:	de010113          	addi	sp,sp,-544
1c00bdac:	20812c23          	sw	s0,536(sp)
1c00bdb0:	20912a23          	sw	s1,532(sp)
1c00bdb4:	21212823          	sw	s2,528(sp)
1c00bdb8:	21312623          	sw	s3,524(sp)
1c00bdbc:	20112e23          	sw	ra,540(sp)
1c00bdc0:	84aa                	mv	s1,a0
1c00bdc2:	89ae                	mv	s3,a1
1c00bdc4:	8932                	mv	s2,a2
1c00bdc6:	20000413          	li	s0,512
1c00bdca:	3e49                	jal	1c00b95c <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00bdcc:	00890633          	add	a2,s2,s0
1c00bdd0:	008985b3          	add	a1,s3,s0
1c00bdd4:	850a                	mv	a0,sp
1c00bdd6:	3659                	jal	1c00b95c <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00bdd8:	860a                	mv	a2,sp
1c00bdda:	85a6                	mv	a1,s1
1c00bddc:	8526                	mv	a0,s1
1c00bdde:	20040413          	addi	s0,s0,512
1c00bde2:	3901                	jal	1c00b9f2 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00bde4:	80040793          	addi	a5,s0,-2048
1c00bde8:	f3f5                	bnez	a5,1c00bdcc <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery+0x24>
1c00bdea:	8526                	mv	a0,s1
1c00bdec:	3ef9                	jal	1c00b9ca <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00bdee:	21c12083          	lw	ra,540(sp)
1c00bdf2:	21812403          	lw	s0,536(sp)
1c00bdf6:	21412483          	lw	s1,532(sp)
1c00bdfa:	21012903          	lw	s2,528(sp)
1c00bdfe:	20c12983          	lw	s3,524(sp)
1c00be02:	22010113          	addi	sp,sp,544
1c00be06:	8082                	ret

1c00be08 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>:
1c00be08:	1141                	addi	sp,sp,-16
1c00be0a:	c606                	sw	ra,12(sp)
1c00be0c:	c422                	sw	s0,8(sp)
1c00be0e:	842a                	mv	s0,a0
1c00be10:	3e6d                	jal	1c00b9ca <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00be12:	20040513          	addi	a0,s0,512
1c00be16:	3e55                	jal	1c00b9ca <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00be18:	40040513          	addi	a0,s0,1024
1c00be1c:	367d                	jal	1c00b9ca <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00be1e:	60040513          	addi	a0,s0,1536
1c00be22:	4422                	lw	s0,8(sp)
1c00be24:	40b2                	lw	ra,12(sp)
1c00be26:	0141                	addi	sp,sp,16
1c00be28:	b64d                	j	1c00b9ca <PQCLEAN_KYBER1024_CLEAN_poly_reduce>

1c00be2a <PQCLEAN_KYBER1024_CLEAN_polyvec_add>:
1c00be2a:	1101                	addi	sp,sp,-32
1c00be2c:	cc22                	sw	s0,24(sp)
1c00be2e:	ca26                	sw	s1,20(sp)
1c00be30:	c84a                	sw	s2,16(sp)
1c00be32:	c64e                	sw	s3,12(sp)
1c00be34:	ce06                	sw	ra,28(sp)
1c00be36:	89aa                	mv	s3,a0
1c00be38:	892e                	mv	s2,a1
1c00be3a:	84b2                	mv	s1,a2
1c00be3c:	4401                	li	s0,0
1c00be3e:	00848633          	add	a2,s1,s0
1c00be42:	008905b3          	add	a1,s2,s0
1c00be46:	00898533          	add	a0,s3,s0
1c00be4a:	3665                	jal	1c00b9f2 <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00be4c:	20040413          	addi	s0,s0,512
1c00be50:	80040793          	addi	a5,s0,-2048
1c00be54:	f7ed                	bnez	a5,1c00be3e <PQCLEAN_KYBER1024_CLEAN_polyvec_add+0x14>
1c00be56:	40f2                	lw	ra,28(sp)
1c00be58:	4462                	lw	s0,24(sp)
1c00be5a:	44d2                	lw	s1,20(sp)
1c00be5c:	4942                	lw	s2,16(sp)
1c00be5e:	49b2                	lw	s3,12(sp)
1c00be60:	6105                	addi	sp,sp,32
1c00be62:	8082                	ret

1c00be64 <randombytes>:
1c00be64:	2a058263          	beqz	a1,1c00c108 <randombytes+0x2a4>
1c00be68:	715d                	addi	sp,sp,-80
1c00be6a:	00b50733          	add	a4,a0,a1
1c00be6e:	c63a                	sw	a4,12(sp)
1c00be70:	9e378737          	lui	a4,0x9e378
1c00be74:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c00be78:	1c0067b7          	lui	a5,0x1c006
1c00be7c:	c43a                	sw	a4,8(sp)
1c00be7e:	e377a737          	lui	a4,0xe377a
1c00be82:	2b478793          	addi	a5,a5,692 # 1c0062b4 <outleft>
1c00be86:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c00be8a:	c83e                	sw	a5,16(sp)
1c00be8c:	ca3a                	sw	a4,20(sp)
1c00be8e:	439c                	lw	a5,0(a5)
1c00be90:	c6ef3737          	lui	a4,0xc6ef3
1c00be94:	c6a2                	sw	s0,76(sp)
1c00be96:	1c0062b7          	lui	t0,0x1c006
1c00be9a:	1c006437          	lui	s0,0x1c006
1c00be9e:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c00bea2:	d06e                	sw	s11,32(sp)
1c00bea4:	c4a6                	sw	s1,72(sp)
1c00bea6:	c2ca                	sw	s2,68(sp)
1c00bea8:	c0ce                	sw	s3,64(sp)
1c00beaa:	de52                	sw	s4,60(sp)
1c00beac:	dc56                	sw	s5,56(sp)
1c00beae:	da5a                	sw	s6,52(sp)
1c00beb0:	d85e                	sw	s7,48(sp)
1c00beb2:	d662                	sw	s8,44(sp)
1c00beb4:	d466                	sw	s9,40(sp)
1c00beb6:	d26a                	sw	s10,36(sp)
1c00beb8:	8daa                	mv	s11,a0
1c00beba:	29040413          	addi	s0,s0,656 # 1c006290 <out>
1c00bebe:	26028293          	addi	t0,t0,608 # 1c006260 <in>
1c00bec2:	cc3a                	sw	a4,24(sp)
1c00bec4:	cf85                	beqz	a5,1c00befc <randombytes+0x98>
1c00bec6:	17fd                	addi	a5,a5,-1
1c00bec8:	00279713          	slli	a4,a5,0x2
1c00becc:	9722                	add	a4,a4,s0
1c00bece:	4304                	lw	s1,0(a4)
1c00bed0:	4742                	lw	a4,16(sp)
1c00bed2:	009d8023          	sb	s1,0(s11)
1c00bed6:	0d85                	addi	s11,s11,1
1c00bed8:	c31c                	sw	a5,0(a4)
1c00beda:	4732                	lw	a4,12(sp)
1c00bedc:	feed94e3          	bne	s11,a4,1c00bec4 <randombytes+0x60>
1c00bee0:	4436                	lw	s0,76(sp)
1c00bee2:	44a6                	lw	s1,72(sp)
1c00bee4:	4916                	lw	s2,68(sp)
1c00bee6:	4986                	lw	s3,64(sp)
1c00bee8:	5a72                	lw	s4,60(sp)
1c00beea:	5ae2                	lw	s5,56(sp)
1c00beec:	5b52                	lw	s6,52(sp)
1c00beee:	5bc2                	lw	s7,48(sp)
1c00bef0:	5c32                	lw	s8,44(sp)
1c00bef2:	5ca2                	lw	s9,40(sp)
1c00bef4:	5d12                	lw	s10,36(sp)
1c00bef6:	5d82                	lw	s11,32(sp)
1c00bef8:	6161                	addi	sp,sp,80
1c00befa:	8082                	ret
1c00befc:	0002a703          	lw	a4,0(t0)
1c00bf00:	0042ae83          	lw	t4,4(t0)
1c00bf04:	0082af03          	lw	t5,8(t0)
1c00bf08:	0705                	addi	a4,a4,1
1c00bf0a:	00e2a023          	sw	a4,0(t0)
1c00bf0e:	00c2af83          	lw	t6,12(t0)
1c00bf12:	ef11                	bnez	a4,1c00bf2e <randombytes+0xca>
1c00bf14:	0e85                	addi	t4,t4,1
1c00bf16:	01d2a223          	sw	t4,4(t0)
1c00bf1a:	000e9a63          	bnez	t4,1c00bf2e <randombytes+0xca>
1c00bf1e:	0f05                	addi	t5,t5,1
1c00bf20:	01e2a423          	sw	t5,8(t0)
1c00bf24:	000f1563          	bnez	t5,1c00bf2e <randombytes+0xca>
1c00bf28:	0f85                	addi	t6,t6,1
1c00bf2a:	01f2a623          	sw	t6,12(t0)
1c00bf2e:	0102ae03          	lw	t3,16(t0)
1c00bf32:	0142a303          	lw	t1,20(t0)
1c00bf36:	0182a883          	lw	a7,24(t0)
1c00bf3a:	01c2a803          	lw	a6,28(t0)
1c00bf3e:	0202a503          	lw	a0,32(t0)
1c00bf42:	0242a583          	lw	a1,36(t0)
1c00bf46:	0282a603          	lw	a2,40(t0)
1c00bf4a:	02c2a683          	lw	a3,44(t0)
1c00bf4e:	00974713          	xori	a4,a4,9
1c00bf52:	007ece93          	xori	t4,t4,7
1c00bf56:	009f4f13          	xori	t5,t5,9
1c00bf5a:	003fcf93          	xori	t6,t6,3
1c00bf5e:	002e4e13          	xori	t3,t3,2
1c00bf62:	00334313          	xori	t1,t1,3
1c00bf66:	0088c893          	xori	a7,a7,8
1c00bf6a:	00484813          	xori	a6,a6,4
1c00bf6e:	00654513          	xori	a0,a0,6
1c00bf72:	0025c593          	xori	a1,a1,2
1c00bf76:	00664613          	xori	a2,a2,6
1c00bf7a:	0046c693          	xori	a3,a3,4
1c00bf7e:	4495                	li	s1,5
1c00bf80:	49a5                	li	s3,9
1c00bf82:	4a1d                	li	s4,7
1c00bf84:	4a89                	li	s5,2
1c00bf86:	4b0d                	li	s6,3
1c00bf88:	4ba1                	li	s7,8
1c00bf8a:	4d0d                	li	s10,3
1c00bf8c:	4c0d                	li	s8,3
1c00bf8e:	4781                	li	a5,0
1c00bf90:	ce6e                	sw	s11,28(sp)
1c00bf92:	43d2                	lw	t2,20(sp)
1c00bf94:	00778db3          	add	s11,a5,t2
1c00bf98:	43a2                	lw	t2,8(sp)
1c00bf9a:	01b6dc93          	srli	s9,a3,0x1b
1c00bf9e:	00569913          	slli	s2,a3,0x5
1c00bfa2:	979e                	add	a5,a5,t2
1c00bfa4:	0036c393          	xori	t2,a3,3
1c00bfa8:	01996933          	or	s2,s2,s9
1c00bfac:	93be                	add	t2,t2,a5
1c00bfae:	0123c3b3          	xor	t2,t2,s2
1c00bfb2:	971e                	add	a4,a4,t2
1c00bfb4:	01975c93          	srli	s9,a4,0x19
1c00bfb8:	00174393          	xori	t2,a4,1
1c00bfbc:	00771913          	slli	s2,a4,0x7
1c00bfc0:	01996933          	or	s2,s2,s9
1c00bfc4:	93be                	add	t2,t2,a5
1c00bfc6:	0123c3b3          	xor	t2,t2,s2
1c00bfca:	9e9e                	add	t4,t4,t2
1c00bfcc:	017edc93          	srli	s9,t4,0x17
1c00bfd0:	004ec393          	xori	t2,t4,4
1c00bfd4:	009e9913          	slli	s2,t4,0x9
1c00bfd8:	01996933          	or	s2,s2,s9
1c00bfdc:	93be                	add	t2,t2,a5
1c00bfde:	0123c3b3          	xor	t2,t2,s2
1c00bfe2:	9f1e                	add	t5,t5,t2
1c00bfe4:	013f5c93          	srli	s9,t5,0x13
1c00bfe8:	001f4393          	xori	t2,t5,1
1c00bfec:	00df1913          	slli	s2,t5,0xd
1c00bff0:	01996933          	or	s2,s2,s9
1c00bff4:	93be                	add	t2,t2,a5
1c00bff6:	0123c3b3          	xor	t2,t2,s2
1c00bffa:	9f9e                	add	t6,t6,t2
1c00bffc:	01bfdc93          	srli	s9,t6,0x1b
1c00c000:	005fc393          	xori	t2,t6,5
1c00c004:	005f9913          	slli	s2,t6,0x5
1c00c008:	01996933          	or	s2,s2,s9
1c00c00c:	93be                	add	t2,t2,a5
1c00c00e:	0123c3b3          	xor	t2,t2,s2
1c00c012:	9e1e                	add	t3,t3,t2
1c00c014:	019e5c93          	srli	s9,t3,0x19
1c00c018:	009e4393          	xori	t2,t3,9
1c00c01c:	007e1913          	slli	s2,t3,0x7
1c00c020:	01996933          	or	s2,s2,s9
1c00c024:	93be                	add	t2,t2,a5
1c00c026:	0123c3b3          	xor	t2,t2,s2
1c00c02a:	931e                	add	t1,t1,t2
1c00c02c:	01735c93          	srli	s9,t1,0x17
1c00c030:	00234393          	xori	t2,t1,2
1c00c034:	00931913          	slli	s2,t1,0x9
1c00c038:	01996933          	or	s2,s2,s9
1c00c03c:	93be                	add	t2,t2,a5
1c00c03e:	0123c3b3          	xor	t2,t2,s2
1c00c042:	989e                	add	a7,a7,t2
1c00c044:	0138dc93          	srli	s9,a7,0x13
1c00c048:	0068c393          	xori	t2,a7,6
1c00c04c:	00d89913          	slli	s2,a7,0xd
1c00c050:	01996933          	or	s2,s2,s9
1c00c054:	93be                	add	t2,t2,a5
1c00c056:	0123c3b3          	xor	t2,t2,s2
1c00c05a:	981e                	add	a6,a6,t2
1c00c05c:	01b85c93          	srli	s9,a6,0x1b
1c00c060:	00584393          	xori	t2,a6,5
1c00c064:	00581913          	slli	s2,a6,0x5
1c00c068:	01996933          	or	s2,s2,s9
1c00c06c:	93be                	add	t2,t2,a5
1c00c06e:	0123c3b3          	xor	t2,t2,s2
1c00c072:	951e                	add	a0,a0,t2
1c00c074:	01955c93          	srli	s9,a0,0x19
1c00c078:	00354393          	xori	t2,a0,3
1c00c07c:	00751913          	slli	s2,a0,0x7
1c00c080:	01996933          	or	s2,s2,s9
1c00c084:	93be                	add	t2,t2,a5
1c00c086:	0123c3b3          	xor	t2,t2,s2
1c00c08a:	959e                	add	a1,a1,t2
1c00c08c:	0175dc93          	srli	s9,a1,0x17
1c00c090:	0055c393          	xori	t2,a1,5
1c00c094:	00959913          	slli	s2,a1,0x9
1c00c098:	01996933          	or	s2,s2,s9
1c00c09c:	93be                	add	t2,t2,a5
1c00c09e:	0123c3b3          	xor	t2,t2,s2
1c00c0a2:	961e                	add	a2,a2,t2
1c00c0a4:	00864393          	xori	t2,a2,8
1c00c0a8:	00d61913          	slli	s2,a2,0xd
1c00c0ac:	01365c93          	srli	s9,a2,0x13
1c00c0b0:	93be                	add	t2,t2,a5
1c00c0b2:	01996933          	or	s2,s2,s9
1c00c0b6:	0123c3b3          	xor	t2,t2,s2
1c00c0ba:	969e                	add	a3,a3,t2
1c00c0bc:	edb79ee3          	bne	a5,s11,1c00bf98 <randombytes+0x134>
1c00c0c0:	43e2                	lw	t2,24(sp)
1c00c0c2:	01cc4c33          	xor	s8,s8,t3
1c00c0c6:	006d4d33          	xor	s10,s10,t1
1c00c0ca:	011bcbb3          	xor	s7,s7,a7
1c00c0ce:	010b4b33          	xor	s6,s6,a6
1c00c0d2:	00aacab3          	xor	s5,s5,a0
1c00c0d6:	00ba4a33          	xor	s4,s4,a1
1c00c0da:	00c9c9b3          	xor	s3,s3,a2
1c00c0de:	8cb5                	xor	s1,s1,a3
1c00c0e0:	ea7799e3          	bne	a5,t2,1c00bf92 <randombytes+0x12e>
1c00c0e4:	4df2                	lw	s11,28(sp)
1c00c0e6:	01842023          	sw	s8,0(s0)
1c00c0ea:	01a42223          	sw	s10,4(s0)
1c00c0ee:	01742423          	sw	s7,8(s0)
1c00c0f2:	01642623          	sw	s6,12(s0)
1c00c0f6:	01542823          	sw	s5,16(s0)
1c00c0fa:	01442a23          	sw	s4,20(s0)
1c00c0fe:	01342c23          	sw	s3,24(s0)
1c00c102:	cc44                	sw	s1,28(s0)
1c00c104:	479d                	li	a5,7
1c00c106:	b3e9                	j	1c00bed0 <randombytes+0x6c>
1c00c108:	8082                	ret

1c00c10a <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>:
1c00c10a:	777d                	lui	a4,0xfffff
1c00c10c:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00c110:	02f507b3          	mul	a5,a0,a5
1c00c114:	2ff70713          	addi	a4,a4,767
1c00c118:	07c2                	slli	a5,a5,0x10
1c00c11a:	87c1                	srai	a5,a5,0x10
1c00c11c:	02e787b3          	mul	a5,a5,a4
1c00c120:	953e                	add	a0,a0,a5
1c00c122:	8541                	srai	a0,a0,0x10
1c00c124:	8082                	ret

1c00c126 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>:
1c00c126:	6795                	lui	a5,0x5
1c00c128:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00c12c:	02f507b3          	mul	a5,a0,a5
1c00c130:	02000737          	lui	a4,0x2000
1c00c134:	97ba                	add	a5,a5,a4
1c00c136:	6705                	lui	a4,0x1
1c00c138:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c13c:	87e9                	srai	a5,a5,0x1a
1c00c13e:	02e787b3          	mul	a5,a5,a4
1c00c142:	8d1d                	sub	a0,a0,a5
1c00c144:	0542                	slli	a0,a0,0x10
1c00c146:	8541                	srai	a0,a0,0x10
1c00c148:	8082                	ret

1c00c14a <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>:
1c00c14a:	7139                	addi	sp,sp,-64
1c00c14c:	da26                	sw	s1,52(sp)
1c00c14e:	d84a                	sw	s2,48(sp)
1c00c150:	84b2                	mv	s1,a2
1c00c152:	892a                	mv	s2,a0
1c00c154:	02000613          	li	a2,32
1c00c158:	0068                	addi	a0,sp,12
1c00c15a:	de06                	sw	ra,60(sp)
1c00c15c:	dc22                	sw	s0,56(sp)
1c00c15e:	8436                	mv	s0,a3
1c00c160:	2049                	jal	1c00c1e2 <memcpy>
1c00c162:	006c                	addi	a1,sp,12
1c00c164:	854a                	mv	a0,s2
1c00c166:	02200613          	li	a2,34
1c00c16a:	02910623          	sb	s1,44(sp)
1c00c16e:	028106a3          	sb	s0,45(sp)
1c00c172:	e7bfd0ef          	jal	ra,1c009fec <shake128_absorb>
1c00c176:	50f2                	lw	ra,60(sp)
1c00c178:	5462                	lw	s0,56(sp)
1c00c17a:	54d2                	lw	s1,52(sp)
1c00c17c:	5942                	lw	s2,48(sp)
1c00c17e:	6121                	addi	sp,sp,64
1c00c180:	8082                	ret

1c00c182 <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>:
1c00c182:	7139                	addi	sp,sp,-64
1c00c184:	87b2                	mv	a5,a2
1c00c186:	da26                	sw	s1,52(sp)
1c00c188:	d84a                	sw	s2,48(sp)
1c00c18a:	84aa                	mv	s1,a0
1c00c18c:	892e                	mv	s2,a1
1c00c18e:	02000613          	li	a2,32
1c00c192:	85be                	mv	a1,a5
1c00c194:	0068                	addi	a0,sp,12
1c00c196:	de06                	sw	ra,60(sp)
1c00c198:	dc22                	sw	s0,56(sp)
1c00c19a:	8436                	mv	s0,a3
1c00c19c:	2099                	jal	1c00c1e2 <memcpy>
1c00c19e:	0070                	addi	a2,sp,12
1c00c1a0:	85ca                	mv	a1,s2
1c00c1a2:	8526                	mv	a0,s1
1c00c1a4:	02100693          	li	a3,33
1c00c1a8:	02810623          	sb	s0,44(sp)
1c00c1ac:	92afe0ef          	jal	ra,1c00a2d6 <shake256>
1c00c1b0:	50f2                	lw	ra,60(sp)
1c00c1b2:	5462                	lw	s0,56(sp)
1c00c1b4:	54d2                	lw	s1,52(sp)
1c00c1b6:	5942                	lw	s2,48(sp)
1c00c1b8:	6121                	addi	sp,sp,64
1c00c1ba:	8082                	ret

1c00c1bc <pos_wait_forever>:
1c00c1bc:	f14027f3          	csrr	a5,mhartid
1c00c1c0:	8795                	srai	a5,a5,0x5
1c00c1c2:	03f7f793          	andi	a5,a5,63
1c00c1c6:	477d                	li	a4,31
1c00c1c8:	00e78363          	beq	a5,a4,1c00c1ce <pos_wait_forever+0x12>
1c00c1cc:	a001                	j	1c00c1cc <pos_wait_forever+0x10>
1c00c1ce:	1a10a7b7          	lui	a5,0x1a10a
1c00c1d2:	577d                	li	a4,-1
1c00c1d4:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00c1d8:	10500073          	wfi
1c00c1dc:	10500073          	wfi
1c00c1e0:	bfe5                	j	1c00c1d8 <pos_wait_forever+0x1c>

1c00c1e2 <memcpy>:
1c00c1e2:	00c5e7b3          	or	a5,a1,a2
1c00c1e6:	8fc9                	or	a5,a5,a0
1c00c1e8:	8b8d                	andi	a5,a5,3
1c00c1ea:	872e                	mv	a4,a1
1c00c1ec:	882a                	mv	a6,a0
1c00c1ee:	cbc5                	beqz	a5,1c00c29e <memcpy+0xbc>
1c00c1f0:	c279                	beqz	a2,1c00c2b6 <memcpy+0xd4>
1c00c1f2:	00350793          	addi	a5,a0,3
1c00c1f6:	8f8d                	sub	a5,a5,a1
1c00c1f8:	0077b793          	sltiu	a5,a5,7
1c00c1fc:	e7d1                	bnez	a5,1c00c288 <memcpy+0xa6>
1c00c1fe:	fff60793          	addi	a5,a2,-1
1c00c202:	0047b793          	sltiu	a5,a5,4
1c00c206:	e3c9                	bnez	a5,1c00c288 <memcpy+0xa6>
1c00c208:	ffc67e13          	andi	t3,a2,-4
1c00c20c:	9e2e                	add	t3,t3,a1
1c00c20e:	00174883          	lbu	a7,1(a4)
1c00c212:	00074303          	lbu	t1,0(a4)
1c00c216:	00274683          	lbu	a3,2(a4)
1c00c21a:	00374783          	lbu	a5,3(a4)
1c00c21e:	08a2                	slli	a7,a7,0x8
1c00c220:	0068e8b3          	or	a7,a7,t1
1c00c224:	06c2                	slli	a3,a3,0x10
1c00c226:	0116e6b3          	or	a3,a3,a7
1c00c22a:	07e2                	slli	a5,a5,0x18
1c00c22c:	8fd5                	or	a5,a5,a3
1c00c22e:	0087d313          	srli	t1,a5,0x8
1c00c232:	0107d893          	srli	a7,a5,0x10
1c00c236:	83e1                	srli	a5,a5,0x18
1c00c238:	00d80023          	sb	a3,0(a6)
1c00c23c:	006800a3          	sb	t1,1(a6)
1c00c240:	01180123          	sb	a7,2(a6)
1c00c244:	00f801a3          	sb	a5,3(a6)
1c00c248:	0711                	addi	a4,a4,4
1c00c24a:	0811                	addi	a6,a6,4
1c00c24c:	fdc711e3          	bne	a4,t3,1c00c20e <memcpy+0x2c>
1c00c250:	ffc67793          	andi	a5,a2,-4
1c00c254:	00367693          	andi	a3,a2,3
1c00c258:	00f50733          	add	a4,a0,a5
1c00c25c:	95be                	add	a1,a1,a5
1c00c25e:	02f60f63          	beq	a2,a5,1c00c29c <memcpy+0xba>
1c00c262:	0005c603          	lbu	a2,0(a1)
1c00c266:	fff68793          	addi	a5,a3,-1
1c00c26a:	00c70023          	sb	a2,0(a4)
1c00c26e:	c79d                	beqz	a5,1c00c29c <memcpy+0xba>
1c00c270:	0015c603          	lbu	a2,1(a1)
1c00c274:	4789                	li	a5,2
1c00c276:	00c700a3          	sb	a2,1(a4)
1c00c27a:	02f68163          	beq	a3,a5,1c00c29c <memcpy+0xba>
1c00c27e:	0025c783          	lbu	a5,2(a1)
1c00c282:	00f70123          	sb	a5,2(a4)
1c00c286:	8082                	ret
1c00c288:	962e                	add	a2,a2,a1
1c00c28a:	87aa                	mv	a5,a0
1c00c28c:	0005c703          	lbu	a4,0(a1)
1c00c290:	0585                	addi	a1,a1,1
1c00c292:	0785                	addi	a5,a5,1
1c00c294:	fee78fa3          	sb	a4,-1(a5)
1c00c298:	fec59ae3          	bne	a1,a2,1c00c28c <memcpy+0xaa>
1c00c29c:	8082                	ret
1c00c29e:	de7d                	beqz	a2,1c00c29c <memcpy+0xba>
1c00c2a0:	87aa                	mv	a5,a0
1c00c2a2:	4194                	lw	a3,0(a1)
1c00c2a4:	0791                	addi	a5,a5,4
1c00c2a6:	40c78733          	sub	a4,a5,a2
1c00c2aa:	fed7ae23          	sw	a3,-4(a5)
1c00c2ae:	0591                	addi	a1,a1,4
1c00c2b0:	fea719e3          	bne	a4,a0,1c00c2a2 <memcpy+0xc0>
1c00c2b4:	8082                	ret
1c00c2b6:	8082                	ret

1c00c2b8 <memmove>:
1c00c2b8:	40b507b3          	sub	a5,a0,a1
1c00c2bc:	0ac7e063          	bltu	a5,a2,1c00c35c <memmove+0xa4>
1c00c2c0:	c661                	beqz	a2,1c00c388 <memmove+0xd0>
1c00c2c2:	00350793          	addi	a5,a0,3
1c00c2c6:	8f8d                	sub	a5,a5,a1
1c00c2c8:	0077b793          	sltiu	a5,a5,7
1c00c2cc:	e3dd                	bnez	a5,1c00c372 <memmove+0xba>
1c00c2ce:	fff60793          	addi	a5,a2,-1
1c00c2d2:	0047b793          	sltiu	a5,a5,4
1c00c2d6:	efd1                	bnez	a5,1c00c372 <memmove+0xba>
1c00c2d8:	ffc67e13          	andi	t3,a2,-4
1c00c2dc:	872e                	mv	a4,a1
1c00c2de:	882a                	mv	a6,a0
1c00c2e0:	9e2e                	add	t3,t3,a1
1c00c2e2:	00174883          	lbu	a7,1(a4)
1c00c2e6:	00074303          	lbu	t1,0(a4)
1c00c2ea:	00274683          	lbu	a3,2(a4)
1c00c2ee:	00374783          	lbu	a5,3(a4)
1c00c2f2:	08a2                	slli	a7,a7,0x8
1c00c2f4:	0068e8b3          	or	a7,a7,t1
1c00c2f8:	06c2                	slli	a3,a3,0x10
1c00c2fa:	0116e6b3          	or	a3,a3,a7
1c00c2fe:	07e2                	slli	a5,a5,0x18
1c00c300:	8fd5                	or	a5,a5,a3
1c00c302:	0087d313          	srli	t1,a5,0x8
1c00c306:	0107d893          	srli	a7,a5,0x10
1c00c30a:	83e1                	srli	a5,a5,0x18
1c00c30c:	00d80023          	sb	a3,0(a6)
1c00c310:	006800a3          	sb	t1,1(a6)
1c00c314:	01180123          	sb	a7,2(a6)
1c00c318:	00f801a3          	sb	a5,3(a6)
1c00c31c:	0711                	addi	a4,a4,4
1c00c31e:	0811                	addi	a6,a6,4
1c00c320:	fdc711e3          	bne	a4,t3,1c00c2e2 <memmove+0x2a>
1c00c324:	ffc67793          	andi	a5,a2,-4
1c00c328:	00367693          	andi	a3,a2,3
1c00c32c:	00f50733          	add	a4,a0,a5
1c00c330:	95be                	add	a1,a1,a5
1c00c332:	04f60a63          	beq	a2,a5,1c00c386 <memmove+0xce>
1c00c336:	0005c603          	lbu	a2,0(a1)
1c00c33a:	fff68793          	addi	a5,a3,-1
1c00c33e:	00c70023          	sb	a2,0(a4)
1c00c342:	c3b1                	beqz	a5,1c00c386 <memmove+0xce>
1c00c344:	0015c603          	lbu	a2,1(a1)
1c00c348:	4789                	li	a5,2
1c00c34a:	00c700a3          	sb	a2,1(a4)
1c00c34e:	02f68c63          	beq	a3,a5,1c00c386 <memmove+0xce>
1c00c352:	0025c783          	lbu	a5,2(a1)
1c00c356:	00f70123          	sb	a5,2(a4)
1c00c35a:	8082                	ret
1c00c35c:	167d                	addi	a2,a2,-1
1c00c35e:	00c587b3          	add	a5,a1,a2
1c00c362:	0007c703          	lbu	a4,0(a5)
1c00c366:	00c507b3          	add	a5,a0,a2
1c00c36a:	00e78023          	sb	a4,0(a5)
1c00c36e:	f67d                	bnez	a2,1c00c35c <memmove+0xa4>
1c00c370:	8082                	ret
1c00c372:	962a                	add	a2,a2,a0
1c00c374:	87aa                	mv	a5,a0
1c00c376:	0005c703          	lbu	a4,0(a1)
1c00c37a:	0785                	addi	a5,a5,1
1c00c37c:	0585                	addi	a1,a1,1
1c00c37e:	fee78fa3          	sb	a4,-1(a5)
1c00c382:	fec79ae3          	bne	a5,a2,1c00c376 <memmove+0xbe>
1c00c386:	8082                	ret
1c00c388:	8082                	ret

1c00c38a <strchr>:
1c00c38a:	00054703          	lbu	a4,0(a0)
1c00c38e:	0ff5f593          	andi	a1,a1,255
1c00c392:	87aa                	mv	a5,a0
1c00c394:	00b70863          	beq	a4,a1,1c00c3a4 <strchr+0x1a>
1c00c398:	cb01                	beqz	a4,1c00c3a8 <strchr+0x1e>
1c00c39a:	0017c703          	lbu	a4,1(a5)
1c00c39e:	0785                	addi	a5,a5,1
1c00c3a0:	feb71ce3          	bne	a4,a1,1c00c398 <strchr+0xe>
1c00c3a4:	853e                	mv	a0,a5
1c00c3a6:	8082                	ret
1c00c3a8:	4501                	li	a0,0
1c00c3aa:	dded                	beqz	a1,1c00c3a4 <strchr+0x1a>
1c00c3ac:	8082                	ret

1c00c3ae <puts>:
1c00c3ae:	00054783          	lbu	a5,0(a0)
1c00c3b2:	c78d                	beqz	a5,1c00c3dc <puts+0x2e>
1c00c3b4:	f14026f3          	csrr	a3,mhartid
1c00c3b8:	00369713          	slli	a4,a3,0x3
1c00c3bc:	1a10f637          	lui	a2,0x1a10f
1c00c3c0:	0ff77713          	andi	a4,a4,255
1c00c3c4:	9732                	add	a4,a4,a2
1c00c3c6:	6609                	lui	a2,0x2
1c00c3c8:	068a                	slli	a3,a3,0x2
1c00c3ca:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c3ce:	8ef1                	and	a3,a3,a2
1c00c3d0:	9736                	add	a4,a4,a3
1c00c3d2:	c31c                	sw	a5,0(a4)
1c00c3d4:	00154783          	lbu	a5,1(a0)
1c00c3d8:	0505                	addi	a0,a0,1
1c00c3da:	ffe5                	bnez	a5,1c00c3d2 <puts+0x24>
1c00c3dc:	f1402773          	csrr	a4,mhartid
1c00c3e0:	00371793          	slli	a5,a4,0x3
1c00c3e4:	1a10f6b7          	lui	a3,0x1a10f
1c00c3e8:	0ff7f793          	andi	a5,a5,255
1c00c3ec:	97b6                	add	a5,a5,a3
1c00c3ee:	6689                	lui	a3,0x2
1c00c3f0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c3f4:	070a                	slli	a4,a4,0x2
1c00c3f6:	8f75                	and	a4,a4,a3
1c00c3f8:	97ba                	add	a5,a5,a4
1c00c3fa:	4729                	li	a4,10
1c00c3fc:	c398                	sw	a4,0(a5)
1c00c3fe:	4501                	li	a0,0
1c00c400:	8082                	ret

1c00c402 <pos_libc_fputc_locked>:
1c00c402:	6689                	lui	a3,0x2
1c00c404:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c408:	f14027f3          	csrr	a5,mhartid
1c00c40c:	00379713          	slli	a4,a5,0x3
1c00c410:	078a                	slli	a5,a5,0x2
1c00c412:	8ff5                	and	a5,a5,a3
1c00c414:	0ff77713          	andi	a4,a4,255
1c00c418:	1a10f6b7          	lui	a3,0x1a10f
1c00c41c:	9736                	add	a4,a4,a3
1c00c41e:	97ba                	add	a5,a5,a4
1c00c420:	0ff57513          	andi	a0,a0,255
1c00c424:	c388                	sw	a0,0(a5)
1c00c426:	4501                	li	a0,0
1c00c428:	8082                	ret

1c00c42a <putchar>:
1c00c42a:	6689                	lui	a3,0x2
1c00c42c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00c430:	f14027f3          	csrr	a5,mhartid
1c00c434:	00379713          	slli	a4,a5,0x3
1c00c438:	078a                	slli	a5,a5,0x2
1c00c43a:	8ff5                	and	a5,a5,a3
1c00c43c:	0ff77713          	andi	a4,a4,255
1c00c440:	1a10f6b7          	lui	a3,0x1a10f
1c00c444:	9736                	add	a4,a4,a3
1c00c446:	97ba                	add	a5,a5,a4
1c00c448:	0ff57513          	andi	a0,a0,255
1c00c44c:	c388                	sw	a0,0(a5)
1c00c44e:	4501                	li	a0,0
1c00c450:	8082                	ret

1c00c452 <pos_libc_prf_locked>:
1c00c452:	a0b1                	j	1c00c49e <pos_libc_prf>

1c00c454 <exit>:
1c00c454:	800007b7          	lui	a5,0x80000
1c00c458:	1141                	addi	sp,sp,-16
1c00c45a:	8d5d                	or	a0,a0,a5
1c00c45c:	c606                	sw	ra,12(sp)
1c00c45e:	1a1047b7          	lui	a5,0x1a104
1c00c462:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00c466:	3b99                	jal	1c00c1bc <pos_wait_forever>

1c00c468 <pos_io_start>:
1c00c468:	4501                	li	a0,0
1c00c46a:	8082                	ret

1c00c46c <pos_io_stop>:
1c00c46c:	4501                	li	a0,0
1c00c46e:	8082                	ret

1c00c470 <printf>:
1c00c470:	7139                	addi	sp,sp,-64
1c00c472:	02410313          	addi	t1,sp,36
1c00c476:	d432                	sw	a2,40(sp)
1c00c478:	862a                	mv	a2,a0
1c00c47a:	1c00c537          	lui	a0,0x1c00c
1c00c47e:	d22e                	sw	a1,36(sp)
1c00c480:	d636                	sw	a3,44(sp)
1c00c482:	4589                	li	a1,2
1c00c484:	869a                	mv	a3,t1
1c00c486:	40250513          	addi	a0,a0,1026 # 1c00c402 <pos_libc_fputc_locked>
1c00c48a:	ce06                	sw	ra,28(sp)
1c00c48c:	d83a                	sw	a4,48(sp)
1c00c48e:	da3e                	sw	a5,52(sp)
1c00c490:	dc42                	sw	a6,56(sp)
1c00c492:	de46                	sw	a7,60(sp)
1c00c494:	c61a                	sw	t1,12(sp)
1c00c496:	3f75                	jal	1c00c452 <pos_libc_prf_locked>
1c00c498:	40f2                	lw	ra,28(sp)
1c00c49a:	6121                	addi	sp,sp,64
1c00c49c:	8082                	ret

1c00c49e <pos_libc_prf>:
1c00c49e:	7169                	addi	sp,sp,-304
1c00c4a0:	12112623          	sw	ra,300(sp)
1c00c4a4:	12812423          	sw	s0,296(sp)
1c00c4a8:	12912223          	sw	s1,292(sp)
1c00c4ac:	13212023          	sw	s2,288(sp)
1c00c4b0:	11312e23          	sw	s3,284(sp)
1c00c4b4:	11412c23          	sw	s4,280(sp)
1c00c4b8:	11512a23          	sw	s5,276(sp)
1c00c4bc:	11612823          	sw	s6,272(sp)
1c00c4c0:	11712623          	sw	s7,268(sp)
1c00c4c4:	11812423          	sw	s8,264(sp)
1c00c4c8:	11912223          	sw	s9,260(sp)
1c00c4cc:	11a12023          	sw	s10,256(sp)
1c00c4d0:	dfee                	sw	s11,252(sp)
1c00c4d2:	00064783          	lbu	a5,0(a2)
1c00c4d6:	c636                	sw	a3,12(sp)
1c00c4d8:	3c0781e3          	beqz	a5,1c00d09a <pos_libc_prf+0xbfc>
1c00c4dc:	7741                	lui	a4,0xffff0
1c00c4de:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00c4e2:	cc3a                	sw	a4,24(sp)
1c00c4e4:	10000737          	lui	a4,0x10000
1c00c4e8:	177d                	addi	a4,a4,-1
1c00c4ea:	8caa                	mv	s9,a0
1c00c4ec:	84ae                	mv	s1,a1
1c00c4ee:	00160c13          	addi	s8,a2,1
1c00c4f2:	4401                	li	s0,0
1c00c4f4:	1c000d37          	lui	s10,0x1c000
1c00c4f8:	ca3a                	sw	a4,20(sp)
1c00c4fa:	853e                	mv	a0,a5
1c00c4fc:	02500793          	li	a5,37
1c00c500:	04f50863          	beq	a0,a5,1c00c550 <pos_libc_prf+0xb2>
1c00c504:	85a6                	mv	a1,s1
1c00c506:	9c82                	jalr	s9
1c00c508:	57fd                	li	a5,-1
1c00c50a:	4cf50b63          	beq	a0,a5,1c00c9e0 <pos_libc_prf+0x542>
1c00c50e:	0405                	addi	s0,s0,1
1c00c510:	000c4503          	lbu	a0,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00c514:	0c05                	addi	s8,s8,1
1c00c516:	f17d                	bnez	a0,1c00c4fc <pos_libc_prf+0x5e>
1c00c518:	12c12083          	lw	ra,300(sp)
1c00c51c:	8522                	mv	a0,s0
1c00c51e:	12812403          	lw	s0,296(sp)
1c00c522:	12412483          	lw	s1,292(sp)
1c00c526:	12012903          	lw	s2,288(sp)
1c00c52a:	11c12983          	lw	s3,284(sp)
1c00c52e:	11812a03          	lw	s4,280(sp)
1c00c532:	11412a83          	lw	s5,276(sp)
1c00c536:	11012b03          	lw	s6,272(sp)
1c00c53a:	10c12b83          	lw	s7,268(sp)
1c00c53e:	10812c03          	lw	s8,264(sp)
1c00c542:	10412c83          	lw	s9,260(sp)
1c00c546:	10012d03          	lw	s10,256(sp)
1c00c54a:	5dfe                	lw	s11,252(sp)
1c00c54c:	6155                	addi	sp,sp,304
1c00c54e:	8082                	ret
1c00c550:	8de2                	mv	s11,s8
1c00c552:	000dcc03          	lbu	s8,0(s11)
1c00c556:	24cd0513          	addi	a0,s10,588 # 1c00024c <PQCLEAN_KYBER1024_CLEAN_zetas+0x100>
1c00c55a:	c826                	sw	s1,16(sp)
1c00c55c:	85e2                	mv	a1,s8
1c00c55e:	c202                	sw	zero,4(sp)
1c00c560:	c402                	sw	zero,8(sp)
1c00c562:	c002                	sw	zero,0(sp)
1c00c564:	001d8493          	addi	s1,s11,1
1c00c568:	350d                	jal	1c00c38a <strchr>
1c00c56a:	02000913          	li	s2,32
1c00c56e:	4b81                	li	s7,0
1c00c570:	02b00993          	li	s3,43
1c00c574:	02d00b13          	li	s6,45
1c00c578:	03000a93          	li	s5,48
1c00c57c:	02000a13          	li	s4,32
1c00c580:	8626                	mv	a2,s1
1c00c582:	c51d                	beqz	a0,1c00c5b0 <pos_libc_prf+0x112>
1c00c584:	413c0e63          	beq	s8,s3,1c00c9a0 <pos_libc_prf+0x502>
1c00c588:	3f89ec63          	bltu	s3,s8,1c00c980 <pos_libc_prf+0x4e2>
1c00c58c:	414c0663          	beq	s8,s4,1c00c998 <pos_libc_prf+0x4fa>
1c00c590:	02300793          	li	a5,35
1c00c594:	3efc1363          	bne	s8,a5,1c00c97a <pos_libc_prf+0x4dc>
1c00c598:	4b85                	li	s7,1
1c00c59a:	8da6                	mv	s11,s1
1c00c59c:	000dcc03          	lbu	s8,0(s11)
1c00c5a0:	24cd0513          	addi	a0,s10,588
1c00c5a4:	001d8493          	addi	s1,s11,1
1c00c5a8:	85e2                	mv	a1,s8
1c00c5aa:	33c5                	jal	1c00c38a <strchr>
1c00c5ac:	8626                	mv	a2,s1
1c00c5ae:	f979                	bnez	a0,1c00c584 <pos_libc_prf+0xe6>
1c00c5b0:	87e2                	mv	a5,s8
1c00c5b2:	ce5e                	sw	s7,28(sp)
1c00c5b4:	02a00693          	li	a3,42
1c00c5b8:	8c6e                	mv	s8,s11
1c00c5ba:	8ba6                	mv	s7,s1
1c00c5bc:	8dbe                	mv	s11,a5
1c00c5be:	44c2                	lw	s1,16(sp)
1c00c5c0:	42d78263          	beq	a5,a3,1c00c9e4 <pos_libc_prf+0x546>
1c00c5c4:	fd078693          	addi	a3,a5,-48
1c00c5c8:	4525                	li	a0,9
1c00c5ca:	4a01                	li	s4,0
1c00c5cc:	3cd57f63          	bgeu	a0,a3,1c00c9aa <pos_libc_prf+0x50c>
1c00c5d0:	02e00793          	li	a5,46
1c00c5d4:	5afd                	li	s5,-1
1c00c5d6:	74fd8363          	beq	s11,a5,1c00cd1c <pos_libc_prf+0x87e>
1c00c5da:	1c0007b7          	lui	a5,0x1c000
1c00c5de:	85ee                	mv	a1,s11
1c00c5e0:	25478513          	addi	a0,a5,596 # 1c000254 <PQCLEAN_KYBER1024_CLEAN_zetas+0x108>
1c00c5e4:	c832                	sw	a2,16(sp)
1c00c5e6:	3355                	jal	1c00c38a <strchr>
1c00c5e8:	4642                	lw	a2,16(sp)
1c00c5ea:	8c32                	mv	s8,a2
1c00c5ec:	c509                	beqz	a0,1c00c5f6 <pos_libc_prf+0x158>
1c00c5ee:	00064d83          	lbu	s11,0(a2)
1c00c5f2:	00160c13          	addi	s8,a2,1
1c00c5f6:	06900793          	li	a5,105
1c00c5fa:	0afd8ee3          	beq	s11,a5,1c00ceb6 <pos_libc_prf+0xa18>
1c00c5fe:	4db7c763          	blt	a5,s11,1c00cacc <pos_libc_prf+0x62e>
1c00c602:	05800793          	li	a5,88
1c00c606:	4efd8163          	beq	s11,a5,1c00cae8 <pos_libc_prf+0x64a>
1c00c60a:	41b7c163          	blt	a5,s11,1c00ca0c <pos_libc_prf+0x56e>
1c00c60e:	02500793          	li	a5,37
1c00c612:	26fd8ae3          	beq	s11,a5,1c00d086 <pos_libc_prf+0xbe8>
1c00c616:	3fb7d863          	bge	a5,s11,1c00ca06 <pos_libc_prf+0x568>
1c00c61a:	fbbd8793          	addi	a5,s11,-69
1c00c61e:	4689                	li	a3,2
1c00c620:	eef6e8e3          	bltu	a3,a5,1c00c510 <pos_libc_prf+0x72>
1c00c624:	47b2                	lw	a5,12(sp)
1c00c626:	7ff00893          	li	a7,2047
1c00c62a:	00778b13          	addi	s6,a5,7
1c00c62e:	ff8b7b13          	andi	s6,s6,-8
1c00c632:	004b2783          	lw	a5,4(s6)
1c00c636:	000b2603          	lw	a2,0(s6)
1c00c63a:	0b21                	addi	s6,s6,8
1c00c63c:	00b79693          	slli	a3,a5,0xb
1c00c640:	01565513          	srli	a0,a2,0x15
1c00c644:	8ec9                	or	a3,a3,a0
1c00c646:	0147d813          	srli	a6,a5,0x14
1c00c64a:	0686                	slli	a3,a3,0x1
1c00c64c:	7ff87813          	andi	a6,a6,2047
1c00c650:	0016d513          	srli	a0,a3,0x1
1c00c654:	00b61313          	slli	t1,a2,0xb
1c00c658:	86be                	mv	a3,a5
1c00c65a:	41180263          	beq	a6,a7,1c00ca5e <pos_libc_prf+0x5c0>
1c00c65e:	04600793          	li	a5,70
1c00c662:	00fd9463          	bne	s11,a5,1c00c66a <pos_libc_prf+0x1cc>
1c00c666:	06600d93          	li	s11,102
1c00c66a:	006867b3          	or	a5,a6,t1
1c00c66e:	00a7e8b3          	or	a7,a5,a0
1c00c672:	862a                	mv	a2,a0
1c00c674:	340885e3          	beqz	a7,1c00d1be <pos_libc_prf+0xd20>
1c00c678:	80000637          	lui	a2,0x80000
1c00c67c:	c0280813          	addi	a6,a6,-1022
1c00c680:	879a                	mv	a5,t1
1c00c682:	8e49                	or	a2,a2,a0
1c00c684:	4606c7e3          	bltz	a3,1c00d2f2 <pos_libc_prf+0xe54>
1c00c688:	4722                	lw	a4,8(sp)
1c00c68a:	480708e3          	beqz	a4,1c00d31a <pos_libc_prf+0xe7c>
1c00c68e:	02b00693          	li	a3,43
1c00c692:	02d10223          	sb	a3,36(sp)
1c00c696:	02510f13          	addi	t5,sp,37
1c00c69a:	56f9                	li	a3,-2
1c00c69c:	4301                	li	t1,0
1c00c69e:	06d85663          	bge	a6,a3,1c00c70a <pos_libc_prf+0x26c>
1c00c6a2:	333338b7          	lui	a7,0x33333
1c00c6a6:	80000e37          	lui	t3,0x80000
1c00c6aa:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00c6ae:	fffe4e13          	not	t3,t3
1c00c6b2:	5ef9                	li	t4,-2
1c00c6b4:	01f61593          	slli	a1,a2,0x1f
1c00c6b8:	0017d693          	srli	a3,a5,0x1
1c00c6bc:	0017f713          	andi	a4,a5,1
1c00c6c0:	8ecd                	or	a3,a3,a1
1c00c6c2:	00d707b3          	add	a5,a4,a3
1c00c6c6:	00e7b733          	sltu	a4,a5,a4
1c00c6ca:	8205                	srli	a2,a2,0x1
1c00c6cc:	963a                	add	a2,a2,a4
1c00c6ce:	8742                	mv	a4,a6
1c00c6d0:	0805                	addi	a6,a6,1
1c00c6d2:	fec8e1e3          	bltu	a7,a2,1c00c6b4 <pos_libc_prf+0x216>
1c00c6d6:	00279593          	slli	a1,a5,0x2
1c00c6da:	01e7d513          	srli	a0,a5,0x1e
1c00c6de:	00261693          	slli	a3,a2,0x2
1c00c6e2:	97ae                	add	a5,a5,a1
1c00c6e4:	8ec9                	or	a3,a3,a0
1c00c6e6:	9636                	add	a2,a2,a3
1c00c6e8:	00b7b5b3          	sltu	a1,a5,a1
1c00c6ec:	962e                	add	a2,a2,a1
1c00c6ee:	01f7d693          	srli	a3,a5,0x1f
1c00c6f2:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00c6f6:	137d                	addi	t1,t1,-1
1c00c6f8:	01c61763          	bne	a2,t3,1c00c706 <pos_libc_prf+0x268>
1c00c6fc:	00170813          	addi	a6,a4,1
1c00c700:	0786                	slli	a5,a5,0x1
1c00c702:	ffe6e613          	ori	a2,a3,-2
1c00c706:	fbd847e3          	blt	a6,t4,1c00c6b4 <pos_libc_prf+0x216>
1c00c70a:	07005363          	blez	a6,1c00c770 <pos_libc_prf+0x2d2>
1c00c70e:	800008b7          	lui	a7,0x80000
1c00c712:	4e15                	li	t3,5
1c00c714:	fff8c893          	not	a7,a7
1c00c718:	00278693          	addi	a3,a5,2
1c00c71c:	00f6b7b3          	sltu	a5,a3,a5
1c00c720:	963e                	add	a2,a2,a5
1c00c722:	03c657b3          	divu	a5,a2,t3
1c00c726:	0036d713          	srli	a4,a3,0x3
1c00c72a:	187d                	addi	a6,a6,-1
1c00c72c:	0305                	addi	t1,t1,1
1c00c72e:	00279593          	slli	a1,a5,0x2
1c00c732:	95be                	add	a1,a1,a5
1c00c734:	8e0d                	sub	a2,a2,a1
1c00c736:	0676                	slli	a2,a2,0x1d
1c00c738:	8f51                	or	a4,a4,a2
1c00c73a:	03c75633          	divu	a2,a4,t3
1c00c73e:	00361713          	slli	a4,a2,0x3
1c00c742:	00561593          	slli	a1,a2,0x5
1c00c746:	95ba                	add	a1,a1,a4
1c00c748:	8e8d                	sub	a3,a3,a1
1c00c74a:	03c6d6b3          	divu	a3,a3,t3
1c00c74e:	8275                	srli	a2,a2,0x1d
1c00c750:	963e                	add	a2,a2,a5
1c00c752:	00e687b3          	add	a5,a3,a4
1c00c756:	00d7b6b3          	sltu	a3,a5,a3
1c00c75a:	9636                	add	a2,a2,a3
1c00c75c:	01f7d713          	srli	a4,a5,0x1f
1c00c760:	0606                	slli	a2,a2,0x1
1c00c762:	8e59                	or	a2,a2,a4
1c00c764:	0786                	slli	a5,a5,0x1
1c00c766:	187d                	addi	a6,a6,-1
1c00c768:	fec8fae3          	bgeu	a7,a2,1c00c75c <pos_libc_prf+0x2be>
1c00c76c:	fb0046e3          	bgtz	a6,1c00c718 <pos_libc_prf+0x27a>
1c00c770:	4e11                	li	t3,4
1c00c772:	01f61693          	slli	a3,a2,0x1f
1c00c776:	0017d713          	srli	a4,a5,0x1
1c00c77a:	8f55                	or	a4,a4,a3
1c00c77c:	8b85                	andi	a5,a5,1
1c00c77e:	00e78533          	add	a0,a5,a4
1c00c782:	8205                	srli	a2,a2,0x1
1c00c784:	00f537b3          	sltu	a5,a0,a5
1c00c788:	00c788b3          	add	a7,a5,a2
1c00c78c:	0805                	addi	a6,a6,1
1c00c78e:	87aa                	mv	a5,a0
1c00c790:	8646                	mv	a2,a7
1c00c792:	ffc810e3          	bne	a6,t3,1c00c772 <pos_libc_prf+0x2d4>
1c00c796:	06700793          	li	a5,103
1c00c79a:	2a0acee3          	bltz	s5,1c00d256 <pos_libc_prf+0xdb8>
1c00c79e:	28fd83e3          	beq	s11,a5,1c00d224 <pos_libc_prf+0xd86>
1c00c7a2:	04700793          	li	a5,71
1c00c7a6:	26fd8fe3          	beq	s11,a5,1c00d224 <pos_libc_prf+0xd86>
1c00c7aa:	06600793          	li	a5,102
1c00c7ae:	2cfd85e3          	beq	s11,a5,1c00d278 <pos_libc_prf+0xdda>
1c00c7b2:	001a8813          	addi	a6,s5,1
1c00c7b6:	47c1                	li	a5,16
1c00c7b8:	0107d363          	bge	a5,a6,1c00c7be <pos_libc_prf+0x320>
1c00c7bc:	4841                	li	a6,16
1c00c7be:	187d                	addi	a6,a6,-1
1c00c7c0:	4601                	li	a2,0
1c00c7c2:	4781                	li	a5,0
1c00c7c4:	080006b7          	lui	a3,0x8000
1c00c7c8:	4e15                	li	t3,5
1c00c7ca:	5efd                	li	t4,-1
1c00c7cc:	00278713          	addi	a4,a5,2
1c00c7d0:	00f737b3          	sltu	a5,a4,a5
1c00c7d4:	97b6                	add	a5,a5,a3
1c00c7d6:	03c7dfb3          	divu	t6,a5,t3
1c00c7da:	00375593          	srli	a1,a4,0x3
1c00c7de:	187d                	addi	a6,a6,-1
1c00c7e0:	002f9693          	slli	a3,t6,0x2
1c00c7e4:	96fe                	add	a3,a3,t6
1c00c7e6:	8f95                	sub	a5,a5,a3
1c00c7e8:	07f6                	slli	a5,a5,0x1d
1c00c7ea:	8ddd                	or	a1,a1,a5
1c00c7ec:	03c5d5b3          	divu	a1,a1,t3
1c00c7f0:	00359693          	slli	a3,a1,0x3
1c00c7f4:	00559793          	slli	a5,a1,0x5
1c00c7f8:	97b6                	add	a5,a5,a3
1c00c7fa:	8f1d                	sub	a4,a4,a5
1c00c7fc:	03c757b3          	divu	a5,a4,t3
1c00c800:	81f5                	srli	a1,a1,0x1d
1c00c802:	95fe                	add	a1,a1,t6
1c00c804:	96be                	add	a3,a3,a5
1c00c806:	00f6b733          	sltu	a4,a3,a5
1c00c80a:	972e                	add	a4,a4,a1
1c00c80c:	01f71593          	slli	a1,a4,0x1f
1c00c810:	0016d793          	srli	a5,a3,0x1
1c00c814:	8fcd                	or	a5,a5,a1
1c00c816:	8a85                	andi	a3,a3,1
1c00c818:	97b6                	add	a5,a5,a3
1c00c81a:	8305                	srli	a4,a4,0x1
1c00c81c:	00d7b6b3          	sltu	a3,a5,a3
1c00c820:	96ba                	add	a3,a3,a4
1c00c822:	fbd815e3          	bne	a6,t4,1c00c7cc <pos_libc_prf+0x32e>
1c00c826:	97aa                	add	a5,a5,a0
1c00c828:	96c6                	add	a3,a3,a7
1c00c82a:	00a7b533          	sltu	a0,a5,a0
1c00c82e:	00d508b3          	add	a7,a0,a3
1c00c832:	f00006b7          	lui	a3,0xf0000
1c00c836:	0116f6b3          	and	a3,a3,a7
1c00c83a:	c2b5                	beqz	a3,1c00c89e <pos_libc_prf+0x400>
1c00c83c:	00278813          	addi	a6,a5,2
1c00c840:	00f836b3          	sltu	a3,a6,a5
1c00c844:	98b6                	add	a7,a7,a3
1c00c846:	4e95                	li	t4,5
1c00c848:	03d8de33          	divu	t3,a7,t4
1c00c84c:	00385693          	srli	a3,a6,0x3
1c00c850:	0305                	addi	t1,t1,1
1c00c852:	002e1513          	slli	a0,t3,0x2
1c00c856:	9572                	add	a0,a0,t3
1c00c858:	40a888b3          	sub	a7,a7,a0
1c00c85c:	01d89513          	slli	a0,a7,0x1d
1c00c860:	8ec9                	or	a3,a3,a0
1c00c862:	03d6d6b3          	divu	a3,a3,t4
1c00c866:	00369513          	slli	a0,a3,0x3
1c00c86a:	00569793          	slli	a5,a3,0x5
1c00c86e:	97aa                	add	a5,a5,a0
1c00c870:	40f807b3          	sub	a5,a6,a5
1c00c874:	03d7d7b3          	divu	a5,a5,t4
1c00c878:	82f5                	srli	a3,a3,0x1d
1c00c87a:	96f2                	add	a3,a3,t3
1c00c87c:	953e                	add	a0,a0,a5
1c00c87e:	00f537b3          	sltu	a5,a0,a5
1c00c882:	96be                	add	a3,a3,a5
1c00c884:	01f69813          	slli	a6,a3,0x1f
1c00c888:	00155793          	srli	a5,a0,0x1
1c00c88c:	00f867b3          	or	a5,a6,a5
1c00c890:	8905                	andi	a0,a0,1
1c00c892:	97aa                	add	a5,a5,a0
1c00c894:	8285                	srli	a3,a3,0x1
1c00c896:	00a7b533          	sltu	a0,a5,a0
1c00c89a:	00d508b3          	add	a7,a0,a3
1c00c89e:	001f0993          	addi	s3,t5,1
1c00c8a2:	06600693          	li	a3,102
1c00c8a6:	884e                	mv	a6,s3
1c00c8a8:	4edd8163          	beq	s11,a3,1c00cd8a <pos_libc_prf+0x8ec>
1c00c8ac:	00279693          	slli	a3,a5,0x2
1c00c8b0:	01e7d513          	srli	a0,a5,0x1e
1c00c8b4:	00289e13          	slli	t3,a7,0x2
1c00c8b8:	97b6                	add	a5,a5,a3
1c00c8ba:	01c56e33          	or	t3,a0,t3
1c00c8be:	00d7b833          	sltu	a6,a5,a3
1c00c8c2:	011e06b3          	add	a3,t3,a7
1c00c8c6:	9836                	add	a6,a6,a3
1c00c8c8:	0806                	slli	a6,a6,0x1
1c00c8ca:	01f7d693          	srli	a3,a5,0x1f
1c00c8ce:	0106e833          	or	a6,a3,a6
1c00c8d2:	01c85693          	srli	a3,a6,0x1c
1c00c8d6:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00c8da:	4772                	lw	a4,28(sp)
1c00c8dc:	00af0023          	sb	a0,0(t5)
1c00c8e0:	00179513          	slli	a0,a5,0x1
1c00c8e4:	47d2                	lw	a5,20(sp)
1c00c8e6:	00d036b3          	snez	a3,a3
1c00c8ea:	01576bb3          	or	s7,a4,s5
1c00c8ee:	00f87833          	and	a6,a6,a5
1c00c8f2:	40d30333          	sub	t1,t1,a3
1c00c8f6:	060b8463          	beqz	s7,1c00c95e <pos_libc_prf+0x4c0>
1c00c8fa:	02e00793          	li	a5,46
1c00c8fe:	00ff00a3          	sb	a5,1(t5)
1c00c902:	002f0993          	addi	s3,t5,2
1c00c906:	040a8c63          	beqz	s5,1c00c95e <pos_libc_prf+0x4c0>
1c00c90a:	002a8793          	addi	a5,s5,2
1c00c90e:	9f3e                	add	t5,t5,a5
1c00c910:	88ce                	mv	a7,s3
1c00c912:	4ebd                	li	t4,15
1c00c914:	03000f93          	li	t6,48
1c00c918:	00251793          	slli	a5,a0,0x2
1c00c91c:	01e55693          	srli	a3,a0,0x1e
1c00c920:	00281713          	slli	a4,a6,0x2
1c00c924:	00a785b3          	add	a1,a5,a0
1c00c928:	8f55                	or	a4,a4,a3
1c00c92a:	9742                	add	a4,a4,a6
1c00c92c:	00f5b7b3          	sltu	a5,a1,a5
1c00c930:	97ba                	add	a5,a5,a4
1c00c932:	0786                	slli	a5,a5,0x1
1c00c934:	01f5d713          	srli	a4,a1,0x1f
1c00c938:	8fd9                	or	a5,a5,a4
1c00c93a:	01c7d713          	srli	a4,a5,0x1c
1c00c93e:	03070713          	addi	a4,a4,48
1c00c942:	0885                	addi	a7,a7,1
1c00c944:	53d05763          	blez	t4,1c00ce72 <pos_libc_prf+0x9d4>
1c00c948:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00c94c:	4752                	lw	a4,20(sp)
1c00c94e:	1efd                	addi	t4,t4,-1
1c00c950:	00159513          	slli	a0,a1,0x1
1c00c954:	00e7f833          	and	a6,a5,a4
1c00c958:	fd1f10e3          	bne	t5,a7,1c00c918 <pos_libc_prf+0x47a>
1c00c95c:	99d6                	add	s3,s3,s5
1c00c95e:	4e061c63          	bnez	a2,1c00ce56 <pos_libc_prf+0x9b8>
1c00c962:	fdfdf793          	andi	a5,s11,-33
1c00c966:	04500693          	li	a3,69
1c00c96a:	00d781e3          	beq	a5,a3,1c00d16c <pos_libc_prf+0xcce>
1c00c96e:	105c                	addi	a5,sp,36
1c00c970:	00098023          	sb	zero,0(s3)
1c00c974:	40f989b3          	sub	s3,s3,a5
1c00c978:	aa05                	j	1c00caa8 <pos_libc_prf+0x60a>
1c00c97a:	b80c0fe3          	beqz	s8,1c00c518 <pos_libc_prf+0x7a>
1c00c97e:	b931                	j	1c00c59a <pos_libc_prf+0xfc>
1c00c980:	016c0863          	beq	s8,s6,1c00c990 <pos_libc_prf+0x4f2>
1c00c984:	c15c1be3          	bne	s8,s5,1c00c59a <pos_libc_prf+0xfc>
1c00c988:	03000913          	li	s2,48
1c00c98c:	8da6                	mv	s11,s1
1c00c98e:	b139                	j	1c00c59c <pos_libc_prf+0xfe>
1c00c990:	4785                	li	a5,1
1c00c992:	c03e                	sw	a5,0(sp)
1c00c994:	8da6                	mv	s11,s1
1c00c996:	b119                	j	1c00c59c <pos_libc_prf+0xfe>
1c00c998:	4785                	li	a5,1
1c00c99a:	c23e                	sw	a5,4(sp)
1c00c99c:	8da6                	mv	s11,s1
1c00c99e:	befd                	j	1c00c59c <pos_libc_prf+0xfe>
1c00c9a0:	4785                	li	a5,1
1c00c9a2:	c43e                	sw	a5,8(sp)
1c00c9a4:	8da6                	mv	s11,s1
1c00c9a6:	bedd                	j	1c00c59c <pos_libc_prf+0xfe>
1c00c9a8:	0b85                	addi	s7,s7,1
1c00c9aa:	002a1793          	slli	a5,s4,0x2
1c00c9ae:	97d2                	add	a5,a5,s4
1c00c9b0:	0786                	slli	a5,a5,0x1
1c00c9b2:	97ee                	add	a5,a5,s11
1c00c9b4:	000bcd83          	lbu	s11,0(s7) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00c9b8:	fd078a13          	addi	s4,a5,-48
1c00c9bc:	8662                	mv	a2,s8
1c00c9be:	fd0d8793          	addi	a5,s11,-48
1c00c9c2:	8c5e                	mv	s8,s7
1c00c9c4:	fef572e3          	bgeu	a0,a5,1c00c9a8 <pos_libc_prf+0x50a>
1c00c9c8:	0609                	addi	a2,a2,2
1c00c9ca:	0c800793          	li	a5,200
1c00c9ce:	c147f1e3          	bgeu	a5,s4,1c00c5d0 <pos_libc_prf+0x132>
1c00c9d2:	0c800a13          	li	s4,200
1c00c9d6:	beed                	j	1c00c5d0 <pos_libc_prf+0x132>
1c00c9d8:	0c800793          	li	a5,200
1c00c9dc:	b3b7dae3          	bge	a5,s11,1c00c510 <pos_libc_prf+0x72>
1c00c9e0:	547d                	li	s0,-1
1c00c9e2:	be1d                	j	1c00c518 <pos_libc_prf+0x7a>
1c00c9e4:	47b2                	lw	a5,12(sp)
1c00c9e6:	0007aa03          	lw	s4,0(a5)
1c00c9ea:	00478693          	addi	a3,a5,4
1c00c9ee:	000a5663          	bgez	s4,1c00c9fa <pos_libc_prf+0x55c>
1c00c9f2:	4785                	li	a5,1
1c00c9f4:	41400a33          	neg	s4,s4
1c00c9f8:	c03e                	sw	a5,0(sp)
1c00c9fa:	000bcd83          	lbu	s11,0(s7)
1c00c9fe:	c636                	sw	a3,12(sp)
1c00ca00:	002c0613          	addi	a2,s8,2
1c00ca04:	b7d9                	j	1c00c9ca <pos_libc_prf+0x52c>
1c00ca06:	b00d89e3          	beqz	s11,1c00c518 <pos_libc_prf+0x7a>
1c00ca0a:	b619                	j	1c00c510 <pos_libc_prf+0x72>
1c00ca0c:	06400793          	li	a5,100
1c00ca10:	4afd8363          	beq	s11,a5,1c00ceb6 <pos_libc_prf+0xa18>
1c00ca14:	19b7d963          	bge	a5,s11,1c00cba6 <pos_libc_prf+0x708>
1c00ca18:	f9bd8793          	addi	a5,s11,-101
1c00ca1c:	4689                	li	a3,2
1c00ca1e:	aef6e9e3          	bltu	a3,a5,1c00c510 <pos_libc_prf+0x72>
1c00ca22:	47b2                	lw	a5,12(sp)
1c00ca24:	7ff00893          	li	a7,2047
1c00ca28:	00778b13          	addi	s6,a5,7
1c00ca2c:	ff8b7b13          	andi	s6,s6,-8
1c00ca30:	004b2783          	lw	a5,4(s6)
1c00ca34:	000b2603          	lw	a2,0(s6)
1c00ca38:	0b21                	addi	s6,s6,8
1c00ca3a:	00b79693          	slli	a3,a5,0xb
1c00ca3e:	01565813          	srli	a6,a2,0x15
1c00ca42:	0147d513          	srli	a0,a5,0x14
1c00ca46:	00d866b3          	or	a3,a6,a3
1c00ca4a:	0686                	slli	a3,a3,0x1
1c00ca4c:	7ff57813          	andi	a6,a0,2047
1c00ca50:	00b61313          	slli	t1,a2,0xb
1c00ca54:	0016d513          	srli	a0,a3,0x1
1c00ca58:	86be                	mv	a3,a5
1c00ca5a:	c11818e3          	bne	a6,a7,1c00c66a <pos_libc_prf+0x1cc>
1c00ca5e:	105c                	addi	a5,sp,36
1c00ca60:	0006d863          	bgez	a3,1c00ca70 <pos_libc_prf+0x5d2>
1c00ca64:	02d00793          	li	a5,45
1c00ca68:	02f10223          	sb	a5,36(sp)
1c00ca6c:	02510793          	addi	a5,sp,37
1c00ca70:	00a36633          	or	a2,t1,a0
1c00ca74:	fbfd8593          	addi	a1,s11,-65
1c00ca78:	00378993          	addi	s3,a5,3
1c00ca7c:	46e5                	li	a3,25
1c00ca7e:	0c0612e3          	bnez	a2,1c00d342 <pos_libc_prf+0xea4>
1c00ca82:	10b6e5e3          	bltu	a3,a1,1c00d38c <pos_libc_prf+0xeee>
1c00ca86:	04900693          	li	a3,73
1c00ca8a:	00d78023          	sb	a3,0(a5)
1c00ca8e:	04e00693          	li	a3,78
1c00ca92:	00d780a3          	sb	a3,1(a5)
1c00ca96:	04600693          	li	a3,70
1c00ca9a:	00d78123          	sb	a3,2(a5)
1c00ca9e:	000781a3          	sb	zero,3(a5)
1c00caa2:	105c                	addi	a5,sp,36
1c00caa4:	40f989b3          	sub	s3,s3,a5
1c00caa8:	47a2                	lw	a5,8(sp)
1c00caaa:	4712                	lw	a4,4(sp)
1c00caac:	8fd9                	or	a5,a5,a4
1c00caae:	ce3e                	sw	a5,28(sp)
1c00cab0:	5e079b63          	bnez	a5,1c00d0a6 <pos_libc_prf+0xc08>
1c00cab4:	02414683          	lbu	a3,36(sp)
1c00cab8:	02d00793          	li	a5,45
1c00cabc:	5ef68563          	beq	a3,a5,1c00d0a6 <pos_libc_prf+0xc08>
1c00cac0:	0c800793          	li	a5,200
1c00cac4:	0d37d863          	bge	a5,s3,1c00cb94 <pos_libc_prf+0x6f6>
1c00cac8:	547d                	li	s0,-1
1c00caca:	b4b9                	j	1c00c518 <pos_libc_prf+0x7a>
1c00cacc:	07000793          	li	a5,112
1c00cad0:	46fd8f63          	beq	s11,a5,1c00cf4e <pos_libc_prf+0xab0>
1c00cad4:	1bb7d663          	bge	a5,s11,1c00cc80 <pos_libc_prf+0x7e2>
1c00cad8:	07500793          	li	a5,117
1c00cadc:	52fd8763          	beq	s11,a5,1c00d00a <pos_libc_prf+0xb6c>
1c00cae0:	07800793          	li	a5,120
1c00cae4:	16fd9163          	bne	s11,a5,1c00cc46 <pos_libc_prf+0x7a8>
1c00cae8:	47b2                	lw	a5,12(sp)
1c00caea:	1054                	addi	a3,sp,36
1c00caec:	4390                	lw	a2,0(a5)
1c00caee:	00478b13          	addi	s6,a5,4
1c00caf2:	47f2                	lw	a5,28(sp)
1c00caf4:	28079163          	bnez	a5,1c00cd76 <pos_libc_prf+0x8d8>
1c00caf8:	87b6                	mv	a5,a3
1c00cafa:	4ea5                	li	t4,9
1c00cafc:	4e3d                	li	t3,15
1c00cafe:	a039                	j	1c00cb0c <pos_libc_prf+0x66e>
1c00cb00:	ff098fa3          	sb	a6,-1(s3)
1c00cb04:	02ce7663          	bgeu	t3,a2,1c00cb30 <pos_libc_prf+0x692>
1c00cb08:	862a                	mv	a2,a0
1c00cb0a:	87ce                	mv	a5,s3
1c00cb0c:	00f67593          	andi	a1,a2,15
1c00cb10:	00178993          	addi	s3,a5,1
1c00cb14:	05758813          	addi	a6,a1,87
1c00cb18:	03058713          	addi	a4,a1,48
1c00cb1c:	00465513          	srli	a0,a2,0x4
1c00cb20:	febee0e3          	bltu	t4,a1,1c00cb00 <pos_libc_prf+0x662>
1c00cb24:	00e78023          	sb	a4,0(a5)
1c00cb28:	00178993          	addi	s3,a5,1
1c00cb2c:	fcce6ee3          	bltu	t3,a2,1c00cb08 <pos_libc_prf+0x66a>
1c00cb30:	40d98633          	sub	a2,s3,a3
1c00cb34:	01565c63          	bge	a2,s5,1c00cb4c <pos_libc_prf+0x6ae>
1c00cb38:	03000513          	li	a0,48
1c00cb3c:	87ce                	mv	a5,s3
1c00cb3e:	0985                	addi	s3,s3,1
1c00cb40:	40d98733          	sub	a4,s3,a3
1c00cb44:	fea98fa3          	sb	a0,-1(s3)
1c00cb48:	ff574ae3          	blt	a4,s5,1c00cb3c <pos_libc_prf+0x69e>
1c00cb4c:	00098023          	sb	zero,0(s3)
1c00cb50:	00f6fe63          	bgeu	a3,a5,1c00cb6c <pos_libc_prf+0x6ce>
1c00cb54:	0006c603          	lbu	a2,0(a3)
1c00cb58:	0007c703          	lbu	a4,0(a5)
1c00cb5c:	0685                	addi	a3,a3,1
1c00cb5e:	00c78023          	sb	a2,0(a5)
1c00cb62:	fee68fa3          	sb	a4,-1(a3)
1c00cb66:	17fd                	addi	a5,a5,-1
1c00cb68:	fef6e6e3          	bltu	a3,a5,1c00cb54 <pos_libc_prf+0x6b6>
1c00cb6c:	05800793          	li	a5,88
1c00cb70:	66fd8463          	beq	s11,a5,1c00d1d8 <pos_libc_prf+0xd3a>
1c00cb74:	105c                	addi	a5,sp,36
1c00cb76:	40f989b3          	sub	s3,s3,a5
1c00cb7a:	47f2                	lw	a5,28(sp)
1c00cb7c:	c399                	beqz	a5,1c00cb82 <pos_libc_prf+0x6e4>
1c00cb7e:	4789                	li	a5,2
1c00cb80:	ce3e                	sw	a5,28(sp)
1c00cb82:	57fd                	li	a5,-1
1c00cb84:	f2fa8ee3          	beq	s5,a5,1c00cac0 <pos_libc_prf+0x622>
1c00cb88:	0c800793          	li	a5,200
1c00cb8c:	e537cae3          	blt	a5,s3,1c00c9e0 <pos_libc_prf+0x542>
1c00cb90:	02000913          	li	s2,32
1c00cb94:	00198613          	addi	a2,s3,1
1c00cb98:	0349c963          	blt	s3,s4,1c00cbca <pos_libc_prf+0x72c>
1c00cb9c:	c65a                	sw	s6,12(sp)
1c00cb9e:	8a4e                	mv	s4,s3
1c00cba0:	1a0a1663          	bnez	s4,1c00cd4c <pos_libc_prf+0x8ae>
1c00cba4:	b2b5                	j	1c00c510 <pos_libc_prf+0x72>
1c00cba6:	06300793          	li	a5,99
1c00cbaa:	96fd93e3          	bne	s11,a5,1c00c510 <pos_libc_prf+0x72>
1c00cbae:	4732                	lw	a4,12(sp)
1c00cbb0:	020102a3          	sb	zero,37(sp)
1c00cbb4:	4785                	li	a5,1
1c00cbb6:	4314                	lw	a3,0(a4)
1c00cbb8:	00470b13          	addi	s6,a4,4
1c00cbbc:	02d10223          	sb	a3,36(sp)
1c00cbc0:	1947d463          	bge	a5,s4,1c00cd48 <pos_libc_prf+0x8aa>
1c00cbc4:	4609                	li	a2,2
1c00cbc6:	4985                	li	s3,1
1c00cbc8:	ce02                	sw	zero,28(sp)
1c00cbca:	4782                	lw	a5,0(sp)
1c00cbcc:	4e078463          	beqz	a5,1c00d0b4 <pos_libc_prf+0xc16>
1c00cbd0:	413a07b3          	sub	a5,s4,s3
1c00cbd4:	4585                	li	a1,1
1c00cbd6:	0149d363          	bge	s3,s4,1c00cbdc <pos_libc_prf+0x73e>
1c00cbda:	85be                	mv	a1,a5
1c00cbdc:	17fd                	addi	a5,a5,-1
1c00cbde:	0037b793          	sltiu	a5,a5,3
1c00cbe2:	eb95                	bnez	a5,1c00cc16 <pos_libc_prf+0x778>
1c00cbe4:	0349d963          	bge	s3,s4,1c00cc16 <pos_libc_prf+0x778>
1c00cbe8:	105c                	addi	a5,sp,36
1c00cbea:	97ce                	add	a5,a5,s3
1c00cbec:	ffc5f613          	andi	a2,a1,-4
1c00cbf0:	963e                	add	a2,a2,a5
1c00cbf2:	02000693          	li	a3,32
1c00cbf6:	00d78023          	sb	a3,0(a5)
1c00cbfa:	00d780a3          	sb	a3,1(a5)
1c00cbfe:	00d78123          	sb	a3,2(a5)
1c00cc02:	00d781a3          	sb	a3,3(a5)
1c00cc06:	0791                	addi	a5,a5,4
1c00cc08:	fef617e3          	bne	a2,a5,1c00cbf6 <pos_libc_prf+0x758>
1c00cc0c:	ffc5f793          	andi	a5,a1,-4
1c00cc10:	99be                	add	s3,s3,a5
1c00cc12:	02b78663          	beq	a5,a1,1c00cc3e <pos_libc_prf+0x7a0>
1c00cc16:	199c                	addi	a5,sp,240
1c00cc18:	97ce                	add	a5,a5,s3
1c00cc1a:	02000693          	li	a3,32
1c00cc1e:	f2d78a23          	sb	a3,-204(a5)
1c00cc22:	00198793          	addi	a5,s3,1
1c00cc26:	0147dc63          	bge	a5,s4,1c00cc3e <pos_libc_prf+0x7a0>
1c00cc2a:	1998                	addi	a4,sp,240
1c00cc2c:	97ba                	add	a5,a5,a4
1c00cc2e:	f2d78a23          	sb	a3,-204(a5)
1c00cc32:	0989                	addi	s3,s3,2
1c00cc34:	0149d563          	bge	s3,s4,1c00cc3e <pos_libc_prf+0x7a0>
1c00cc38:	99ba                	add	s3,s3,a4
1c00cc3a:	f2d98a23          	sb	a3,-204(s3)
1c00cc3e:	c65a                	sw	s6,12(sp)
1c00cc40:	100a1663          	bnez	s4,1c00cd4c <pos_libc_prf+0x8ae>
1c00cc44:	b0f1                	j	1c00c510 <pos_libc_prf+0x72>
1c00cc46:	07300793          	li	a5,115
1c00cc4a:	d8fd97e3          	bne	s11,a5,1c00c9d8 <pos_libc_prf+0x53a>
1c00cc4e:	47b2                	lw	a5,12(sp)
1c00cc50:	4981                	li	s3,0
1c00cc52:	0c800693          	li	a3,200
1c00cc56:	438c                	lw	a1,0(a5)
1c00cc58:	00478b13          	addi	s6,a5,4
1c00cc5c:	a021                	j	1c00cc64 <pos_libc_prf+0x7c6>
1c00cc5e:	0985                	addi	s3,s3,1
1c00cc60:	6ad98163          	beq	s3,a3,1c00d302 <pos_libc_prf+0xe64>
1c00cc64:	013587b3          	add	a5,a1,s3
1c00cc68:	0007c783          	lbu	a5,0(a5)
1c00cc6c:	fbed                	bnez	a5,1c00cc5e <pos_libc_prf+0x7c0>
1c00cc6e:	000ac563          	bltz	s5,1c00cc78 <pos_libc_prf+0x7da>
1c00cc72:	013ad363          	bge	s5,s3,1c00cc78 <pos_libc_prf+0x7da>
1c00cc76:	89d6                	mv	s3,s5
1c00cc78:	5a099163          	bnez	s3,1c00d21a <pos_libc_prf+0xd7c>
1c00cc7c:	c65a                	sw	s6,12(sp)
1c00cc7e:	b849                	j	1c00c510 <pos_libc_prf+0x72>
1c00cc80:	06e00793          	li	a5,110
1c00cc84:	36fd8c63          	beq	s11,a5,1c00cffc <pos_libc_prf+0xb5e>
1c00cc88:	06f00793          	li	a5,111
1c00cc8c:	88fd92e3          	bne	s11,a5,1c00c510 <pos_libc_prf+0x72>
1c00cc90:	47b2                	lw	a5,12(sp)
1c00cc92:	4390                	lw	a2,0(a5)
1c00cc94:	00478b13          	addi	s6,a5,4
1c00cc98:	47f2                	lw	a5,28(sp)
1c00cc9a:	c7f5                	beqz	a5,1c00cd86 <pos_libc_prf+0x8e8>
1c00cc9c:	03000793          	li	a5,48
1c00cca0:	02f10223          	sb	a5,36(sp)
1c00cca4:	02510693          	addi	a3,sp,37
1c00cca8:	60060b63          	beqz	a2,1c00d2be <pos_libc_prf+0xe20>
1c00ccac:	89b6                	mv	s3,a3
1c00ccae:	481d                	li	a6,7
1c00ccb0:	00767713          	andi	a4,a2,7
1c00ccb4:	03070713          	addi	a4,a4,48
1c00ccb8:	85b2                	mv	a1,a2
1c00ccba:	00e98023          	sb	a4,0(s3)
1c00ccbe:	87ce                	mv	a5,s3
1c00ccc0:	820d                	srli	a2,a2,0x3
1c00ccc2:	0985                	addi	s3,s3,1
1c00ccc4:	feb866e3          	bltu	a6,a1,1c00ccb0 <pos_libc_prf+0x812>
1c00ccc8:	40d98633          	sub	a2,s3,a3
1c00cccc:	01565c63          	bge	a2,s5,1c00cce4 <pos_libc_prf+0x846>
1c00ccd0:	03000593          	li	a1,48
1c00ccd4:	87ce                	mv	a5,s3
1c00ccd6:	0985                	addi	s3,s3,1
1c00ccd8:	40d98733          	sub	a4,s3,a3
1c00ccdc:	feb98fa3          	sb	a1,-1(s3)
1c00cce0:	ff574ae3          	blt	a4,s5,1c00ccd4 <pos_libc_prf+0x836>
1c00cce4:	00098023          	sb	zero,0(s3)
1c00cce8:	00f6fe63          	bgeu	a3,a5,1c00cd04 <pos_libc_prf+0x866>
1c00ccec:	0006c603          	lbu	a2,0(a3)
1c00ccf0:	0007c703          	lbu	a4,0(a5)
1c00ccf4:	0685                	addi	a3,a3,1
1c00ccf6:	00c78023          	sb	a2,0(a5)
1c00ccfa:	fee68fa3          	sb	a4,-1(a3)
1c00ccfe:	17fd                	addi	a5,a5,-1
1c00cd00:	fef6e6e3          	bltu	a3,a5,1c00ccec <pos_libc_prf+0x84e>
1c00cd04:	1058                	addi	a4,sp,36
1c00cd06:	57fd                	li	a5,-1
1c00cd08:	40e989b3          	sub	s3,s3,a4
1c00cd0c:	36fa8763          	beq	s5,a5,1c00d07a <pos_libc_prf+0xbdc>
1c00cd10:	0c800793          	li	a5,200
1c00cd14:	cd37c6e3          	blt	a5,s3,1c00c9e0 <pos_libc_prf+0x542>
1c00cd18:	ce02                	sw	zero,28(sp)
1c00cd1a:	bd9d                	j	1c00cb90 <pos_libc_prf+0x6f2>
1c00cd1c:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00cd20:	02a00793          	li	a5,42
1c00cd24:	00160693          	addi	a3,a2,1
1c00cd28:	14f59b63          	bne	a1,a5,1c00ce7e <pos_libc_prf+0x9e0>
1c00cd2c:	47b2                	lw	a5,12(sp)
1c00cd2e:	00164d83          	lbu	s11,1(a2)
1c00cd32:	0609                	addi	a2,a2,2
1c00cd34:	0007aa83          	lw	s5,0(a5)
1c00cd38:	0791                	addi	a5,a5,4
1c00cd3a:	c63e                	sw	a5,12(sp)
1c00cd3c:	0c800793          	li	a5,200
1c00cd40:	8957dde3          	bge	a5,s5,1c00c5da <pos_libc_prf+0x13c>
1c00cd44:	5afd                	li	s5,-1
1c00cd46:	b851                	j	1c00c5da <pos_libc_prf+0x13c>
1c00cd48:	c65a                	sw	s6,12(sp)
1c00cd4a:	4a05                	li	s4,1
1c00cd4c:	02410913          	addi	s2,sp,36
1c00cd50:	59fd                	li	s3,-1
1c00cd52:	41240ab3          	sub	s5,s0,s2
1c00cd56:	9a4a                	add	s4,s4,s2
1c00cd58:	a029                	j	1c00cd62 <pos_libc_prf+0x8c4>
1c00cd5a:	012a8433          	add	s0,s5,s2
1c00cd5e:	fb490963          	beq	s2,s4,1c00c510 <pos_libc_prf+0x72>
1c00cd62:	00094503          	lbu	a0,0(s2)
1c00cd66:	85a6                	mv	a1,s1
1c00cd68:	0905                	addi	s2,s2,1
1c00cd6a:	9c82                	jalr	s9
1c00cd6c:	ff3517e3          	bne	a0,s3,1c00cd5a <pos_libc_prf+0x8bc>
1c00cd70:	547d                	li	s0,-1
1c00cd72:	fa6ff06f          	j	1c00c518 <pos_libc_prf+0x7a>
1c00cd76:	77e1                	lui	a5,0xffff8
1c00cd78:	8307c793          	xori	a5,a5,-2000
1c00cd7c:	02f11223          	sh	a5,36(sp)
1c00cd80:	02610693          	addi	a3,sp,38
1c00cd84:	bb95                	j	1c00caf8 <pos_libc_prf+0x65a>
1c00cd86:	1054                	addi	a3,sp,36
1c00cd88:	b715                	j	1c00ccac <pos_libc_prf+0x80e>
1c00cd8a:	5c605a63          	blez	t1,1c00d35e <pos_libc_prf+0xec0>
1c00cd8e:	006f09b3          	add	s3,t5,t1
1c00cd92:	4541                	li	a0,16
1c00cd94:	03000e13          	li	t3,48
1c00cd98:	00279713          	slli	a4,a5,0x2
1c00cd9c:	01e7d593          	srli	a1,a5,0x1e
1c00cda0:	00289693          	slli	a3,a7,0x2
1c00cda4:	00f70333          	add	t1,a4,a5
1c00cda8:	8ecd                	or	a3,a3,a1
1c00cdaa:	96c6                	add	a3,a3,a7
1c00cdac:	00e33733          	sltu	a4,t1,a4
1c00cdb0:	9736                	add	a4,a4,a3
1c00cdb2:	0706                	slli	a4,a4,0x1
1c00cdb4:	01f35693          	srli	a3,t1,0x1f
1c00cdb8:	8f55                	or	a4,a4,a3
1c00cdba:	01c75693          	srli	a3,a4,0x1c
1c00cdbe:	03068693          	addi	a3,a3,48
1c00cdc2:	4ea05463          	blez	a0,1c00d2aa <pos_libc_prf+0xe0c>
1c00cdc6:	fed80fa3          	sb	a3,-1(a6)
1c00cdca:	46d2                	lw	a3,20(sp)
1c00cdcc:	157d                	addi	a0,a0,-1
1c00cdce:	00131793          	slli	a5,t1,0x1
1c00cdd2:	00d778b3          	and	a7,a4,a3
1c00cdd6:	4d099e63          	bne	s3,a6,1c00d2b2 <pos_libc_prf+0xe14>
1c00cdda:	4301                	li	t1,0
1c00cddc:	4772                	lw	a4,28(sp)
1c00cdde:	01576bb3          	or	s7,a4,s5
1c00cde2:	060b8863          	beqz	s7,1c00ce52 <pos_libc_prf+0x9b4>
1c00cde6:	02e00693          	li	a3,46
1c00cdea:	00d98023          	sb	a3,0(s3)
1c00cdee:	00198e93          	addi	t4,s3,1
1c00cdf2:	5c0a8763          	beqz	s5,1c00d3c0 <pos_libc_prf+0xf22>
1c00cdf6:	001a8693          	addi	a3,s5,1
1c00cdfa:	99b6                	add	s3,s3,a3
1c00cdfc:	8876                	mv	a6,t4
1c00cdfe:	03000f13          	li	t5,48
1c00ce02:	0805                	addi	a6,a6,1
1c00ce04:	4a031963          	bnez	t1,1c00d2b6 <pos_libc_prf+0xe18>
1c00ce08:	00279713          	slli	a4,a5,0x2
1c00ce0c:	01e7d593          	srli	a1,a5,0x1e
1c00ce10:	00289693          	slli	a3,a7,0x2
1c00ce14:	00f70e33          	add	t3,a4,a5
1c00ce18:	8ecd                	or	a3,a3,a1
1c00ce1a:	96c6                	add	a3,a3,a7
1c00ce1c:	00ee3733          	sltu	a4,t3,a4
1c00ce20:	9736                	add	a4,a4,a3
1c00ce22:	0706                	slli	a4,a4,0x1
1c00ce24:	01fe5693          	srli	a3,t3,0x1f
1c00ce28:	8f55                	or	a4,a4,a3
1c00ce2a:	01c75593          	srli	a1,a4,0x1c
1c00ce2e:	03000693          	li	a3,48
1c00ce32:	00a05a63          	blez	a0,1c00ce46 <pos_libc_prf+0x9a8>
1c00ce36:	03058693          	addi	a3,a1,48
1c00ce3a:	45d2                	lw	a1,20(sp)
1c00ce3c:	157d                	addi	a0,a0,-1
1c00ce3e:	001e1793          	slli	a5,t3,0x1
1c00ce42:	00b778b3          	and	a7,a4,a1
1c00ce46:	fed80fa3          	sb	a3,-1(a6)
1c00ce4a:	fb099ce3          	bne	s3,a6,1c00ce02 <pos_libc_prf+0x964>
1c00ce4e:	015e89b3          	add	s3,t4,s5
1c00ce52:	b0060ee3          	beqz	a2,1c00c96e <pos_libc_prf+0x4d0>
1c00ce56:	03000613          	li	a2,48
1c00ce5a:	fff9c783          	lbu	a5,-1(s3)
1c00ce5e:	86ce                	mv	a3,s3
1c00ce60:	19fd                	addi	s3,s3,-1
1c00ce62:	fec78ce3          	beq	a5,a2,1c00ce5a <pos_libc_prf+0x9bc>
1c00ce66:	02e00613          	li	a2,46
1c00ce6a:	aec78ce3          	beq	a5,a2,1c00c962 <pos_libc_prf+0x4c4>
1c00ce6e:	89b6                	mv	s3,a3
1c00ce70:	bccd                	j	1c00c962 <pos_libc_prf+0x4c4>
1c00ce72:	fff88fa3          	sb	t6,-1(a7)
1c00ce76:	ab1f11e3          	bne	t5,a7,1c00c918 <pos_libc_prf+0x47a>
1c00ce7a:	99d6                	add	s3,s3,s5
1c00ce7c:	b4cd                	j	1c00c95e <pos_libc_prf+0x4c0>
1c00ce7e:	fd058713          	addi	a4,a1,-48
1c00ce82:	47a5                	li	a5,9
1c00ce84:	8dae                	mv	s11,a1
1c00ce86:	4a81                	li	s5,0
1c00ce88:	4525                	li	a0,9
1c00ce8a:	00e7f463          	bgeu	a5,a4,1c00ce92 <pos_libc_prf+0x9f4>
1c00ce8e:	a199                	j	1c00d2d4 <pos_libc_prf+0xe36>
1c00ce90:	0685                	addi	a3,a3,1
1c00ce92:	002a9793          	slli	a5,s5,0x2
1c00ce96:	97d6                	add	a5,a5,s5
1c00ce98:	0786                	slli	a5,a5,0x1
1c00ce9a:	97ee                	add	a5,a5,s11
1c00ce9c:	0006cd83          	lbu	s11,0(a3)
1c00cea0:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00cea4:	8732                	mv	a4,a2
1c00cea6:	fd0d8793          	addi	a5,s11,-48
1c00ceaa:	8636                	mv	a2,a3
1c00ceac:	fef572e3          	bgeu	a0,a5,1c00ce90 <pos_libc_prf+0x9f2>
1c00ceb0:	00270613          	addi	a2,a4,2
1c00ceb4:	b561                	j	1c00cd3c <pos_libc_prf+0x89e>
1c00ceb6:	47b2                	lw	a5,12(sp)
1c00ceb8:	0007a303          	lw	t1,0(a5)
1c00cebc:	00478b13          	addi	s6,a5,4
1c00cec0:	2e034263          	bltz	t1,1c00d1a4 <pos_libc_prf+0xd06>
1c00cec4:	47a2                	lw	a5,8(sp)
1c00cec6:	861a                	mv	a2,t1
1c00cec8:	3c078663          	beqz	a5,1c00d294 <pos_libc_prf+0xdf6>
1c00cecc:	02b00793          	li	a5,43
1c00ced0:	02f10223          	sb	a5,36(sp)
1c00ced4:	02510693          	addi	a3,sp,37
1c00ced8:	89b6                	mv	s3,a3
1c00ceda:	4529                	li	a0,10
1c00cedc:	48a5                	li	a7,9
1c00cede:	02a67733          	remu	a4,a2,a0
1c00cee2:	87ce                	mv	a5,s3
1c00cee4:	0985                	addi	s3,s3,1
1c00cee6:	85b2                	mv	a1,a2
1c00cee8:	03070713          	addi	a4,a4,48
1c00ceec:	fee98fa3          	sb	a4,-1(s3)
1c00cef0:	02a65633          	divu	a2,a2,a0
1c00cef4:	feb8e5e3          	bltu	a7,a1,1c00cede <pos_libc_prf+0xa40>
1c00cef8:	40d98633          	sub	a2,s3,a3
1c00cefc:	01565c63          	bge	a2,s5,1c00cf14 <pos_libc_prf+0xa76>
1c00cf00:	03000593          	li	a1,48
1c00cf04:	87ce                	mv	a5,s3
1c00cf06:	0985                	addi	s3,s3,1
1c00cf08:	40d98733          	sub	a4,s3,a3
1c00cf0c:	feb98fa3          	sb	a1,-1(s3)
1c00cf10:	ff574ae3          	blt	a4,s5,1c00cf04 <pos_libc_prf+0xa66>
1c00cf14:	00098023          	sb	zero,0(s3)
1c00cf18:	00f6fe63          	bgeu	a3,a5,1c00cf34 <pos_libc_prf+0xa96>
1c00cf1c:	0006c603          	lbu	a2,0(a3)
1c00cf20:	0007c703          	lbu	a4,0(a5)
1c00cf24:	0685                	addi	a3,a3,1
1c00cf26:	00c78023          	sb	a2,0(a5)
1c00cf2a:	fee68fa3          	sb	a4,-1(a3)
1c00cf2e:	17fd                	addi	a5,a5,-1
1c00cf30:	fef6e6e3          	bltu	a3,a5,1c00cf1c <pos_libc_prf+0xa7e>
1c00cf34:	4712                	lw	a4,4(sp)
1c00cf36:	47a2                	lw	a5,8(sp)
1c00cf38:	8fd9                	or	a5,a5,a4
1c00cf3a:	ce3e                	sw	a5,28(sp)
1c00cf3c:	1058                	addi	a4,sp,36
1c00cf3e:	40e989b3          	sub	s3,s3,a4
1c00cf42:	c40790e3          	bnez	a5,1c00cb82 <pos_libc_prf+0x6e4>
1c00cf46:	01f35793          	srli	a5,t1,0x1f
1c00cf4a:	ce3e                	sw	a5,28(sp)
1c00cf4c:	b91d                	j	1c00cb82 <pos_libc_prf+0x6e4>
1c00cf4e:	47b2                	lw	a5,12(sp)
1c00cf50:	02610613          	addi	a2,sp,38
1c00cf54:	4ea5                	li	t4,9
1c00cf56:	438c                	lw	a1,0(a5)
1c00cf58:	00478b13          	addi	s6,a5,4
1c00cf5c:	77e1                	lui	a5,0xffff8
1c00cf5e:	8307c793          	xori	a5,a5,-2000
1c00cf62:	02f11223          	sh	a5,36(sp)
1c00cf66:	4e3d                	li	t3,15
1c00cf68:	87b2                	mv	a5,a2
1c00cf6a:	a039                	j	1c00cf78 <pos_libc_prf+0xada>
1c00cf6c:	ff168fa3          	sb	a7,-1(a3)
1c00cf70:	02be7663          	bgeu	t3,a1,1c00cf9c <pos_libc_prf+0xafe>
1c00cf74:	85c2                	mv	a1,a6
1c00cf76:	87b6                	mv	a5,a3
1c00cf78:	00f5f513          	andi	a0,a1,15
1c00cf7c:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00cf80:	05750893          	addi	a7,a0,87
1c00cf84:	03050713          	addi	a4,a0,48
1c00cf88:	0045d813          	srli	a6,a1,0x4
1c00cf8c:	feaee0e3          	bltu	t4,a0,1c00cf6c <pos_libc_prf+0xace>
1c00cf90:	00e78023          	sb	a4,0(a5)
1c00cf94:	00178693          	addi	a3,a5,1
1c00cf98:	fcbe6ee3          	bltu	t3,a1,1c00cf74 <pos_libc_prf+0xad6>
1c00cf9c:	40c689b3          	sub	s3,a3,a2
1c00cfa0:	459d                	li	a1,7
1c00cfa2:	0135cc63          	blt	a1,s3,1c00cfba <pos_libc_prf+0xb1c>
1c00cfa6:	03000513          	li	a0,48
1c00cfaa:	87b6                	mv	a5,a3
1c00cfac:	0685                	addi	a3,a3,1
1c00cfae:	40c689b3          	sub	s3,a3,a2
1c00cfb2:	fea68fa3          	sb	a0,-1(a3)
1c00cfb6:	ff35dae3          	bge	a1,s3,1c00cfaa <pos_libc_prf+0xb0c>
1c00cfba:	00068023          	sb	zero,0(a3)
1c00cfbe:	86b2                	mv	a3,a2
1c00cfc0:	00f67e63          	bgeu	a2,a5,1c00cfdc <pos_libc_prf+0xb3e>
1c00cfc4:	0006c603          	lbu	a2,0(a3)
1c00cfc8:	0007c703          	lbu	a4,0(a5)
1c00cfcc:	0685                	addi	a3,a3,1
1c00cfce:	00c78023          	sb	a2,0(a5)
1c00cfd2:	fee68fa3          	sb	a4,-1(a3)
1c00cfd6:	17fd                	addi	a5,a5,-1
1c00cfd8:	fef6e6e3          	bltu	a3,a5,1c00cfc4 <pos_libc_prf+0xb26>
1c00cfdc:	57fd                	li	a5,-1
1c00cfde:	0989                	addi	s3,s3,2
1c00cfe0:	22fa8663          	beq	s5,a5,1c00d20c <pos_libc_prf+0xd6e>
1c00cfe4:	0c800793          	li	a5,200
1c00cfe8:	9f37cce3          	blt	a5,s3,1c00c9e0 <pos_libc_prf+0x542>
1c00cfec:	02000913          	li	s2,32
1c00cff0:	0b49d863          	bge	s3,s4,1c00d0a0 <pos_libc_prf+0xc02>
1c00cff4:	00198613          	addi	a2,s3,1
1c00cff8:	ce02                	sw	zero,28(sp)
1c00cffa:	bec1                	j	1c00cbca <pos_libc_prf+0x72c>
1c00cffc:	4732                	lw	a4,12(sp)
1c00cffe:	431c                	lw	a5,0(a4)
1c00d000:	0711                	addi	a4,a4,4
1c00d002:	c63a                	sw	a4,12(sp)
1c00d004:	c380                	sw	s0,0(a5)
1c00d006:	d0aff06f          	j	1c00c510 <pos_libc_prf+0x72>
1c00d00a:	47b2                	lw	a5,12(sp)
1c00d00c:	4529                	li	a0,10
1c00d00e:	48a5                	li	a7,9
1c00d010:	4390                	lw	a2,0(a5)
1c00d012:	00478b13          	addi	s6,a5,4
1c00d016:	105c                	addi	a5,sp,36
1c00d018:	02a67733          	remu	a4,a2,a0
1c00d01c:	86be                	mv	a3,a5
1c00d01e:	0785                	addi	a5,a5,1
1c00d020:	85b2                	mv	a1,a2
1c00d022:	03070713          	addi	a4,a4,48
1c00d026:	fee78fa3          	sb	a4,-1(a5)
1c00d02a:	02a65633          	divu	a2,a2,a0
1c00d02e:	feb8e5e3          	bltu	a7,a1,1c00d018 <pos_libc_prf+0xb7a>
1c00d032:	1058                	addi	a4,sp,36
1c00d034:	40e789b3          	sub	s3,a5,a4
1c00d038:	0159dd63          	bge	s3,s5,1c00d052 <pos_libc_prf+0xbb4>
1c00d03c:	03000613          	li	a2,48
1c00d040:	86be                	mv	a3,a5
1c00d042:	1058                	addi	a4,sp,36
1c00d044:	0785                	addi	a5,a5,1
1c00d046:	40e789b3          	sub	s3,a5,a4
1c00d04a:	fec78fa3          	sb	a2,-1(a5)
1c00d04e:	ff59c9e3          	blt	s3,s5,1c00d040 <pos_libc_prf+0xba2>
1c00d052:	00078023          	sb	zero,0(a5)
1c00d056:	105c                	addi	a5,sp,36
1c00d058:	00d7fe63          	bgeu	a5,a3,1c00d074 <pos_libc_prf+0xbd6>
1c00d05c:	0007c603          	lbu	a2,0(a5)
1c00d060:	0006c703          	lbu	a4,0(a3)
1c00d064:	0785                	addi	a5,a5,1
1c00d066:	00c68023          	sb	a2,0(a3)
1c00d06a:	fee78fa3          	sb	a4,-1(a5)
1c00d06e:	16fd                	addi	a3,a3,-1
1c00d070:	fed7e6e3          	bltu	a5,a3,1c00d05c <pos_libc_prf+0xbbe>
1c00d074:	57fd                	li	a5,-1
1c00d076:	c8fa9de3          	bne	s5,a5,1c00cd10 <pos_libc_prf+0x872>
1c00d07a:	0c800793          	li	a5,200
1c00d07e:	9737c1e3          	blt	a5,s3,1c00c9e0 <pos_libc_prf+0x542>
1c00d082:	ce02                	sw	zero,28(sp)
1c00d084:	be01                	j	1c00cb94 <pos_libc_prf+0x6f6>
1c00d086:	85a6                	mv	a1,s1
1c00d088:	02500513          	li	a0,37
1c00d08c:	9c82                	jalr	s9
1c00d08e:	57fd                	li	a5,-1
1c00d090:	c6f51f63          	bne	a0,a5,1c00c50e <pos_libc_prf+0x70>
1c00d094:	547d                	li	s0,-1
1c00d096:	c82ff06f          	j	1c00c518 <pos_libc_prf+0x7a>
1c00d09a:	4401                	li	s0,0
1c00d09c:	c7cff06f          	j	1c00c518 <pos_libc_prf+0x7a>
1c00d0a0:	8a4e                	mv	s4,s3
1c00d0a2:	c65a                	sw	s6,12(sp)
1c00d0a4:	b165                	j	1c00cd4c <pos_libc_prf+0x8ae>
1c00d0a6:	0c800793          	li	a5,200
1c00d0aa:	9337cbe3          	blt	a5,s3,1c00c9e0 <pos_libc_prf+0x542>
1c00d0ae:	4785                	li	a5,1
1c00d0b0:	ce3e                	sw	a5,28(sp)
1c00d0b2:	b4cd                	j	1c00cb94 <pos_libc_prf+0x6f6>
1c00d0b4:	104c                	addi	a1,sp,36
1c00d0b6:	413a09b3          	sub	s3,s4,s3
1c00d0ba:	01358533          	add	a0,a1,s3
1c00d0be:	9faff0ef          	jal	ra,1c00c2b8 <memmove>
1c00d0c2:	02000793          	li	a5,32
1c00d0c6:	24f90863          	beq	s2,a5,1c00d316 <pos_libc_prf+0xe78>
1c00d0ca:	47f2                	lw	a5,28(sp)
1c00d0cc:	99be                	add	s3,s3,a5
1c00d0ce:	47f2                	lw	a5,28(sp)
1c00d0d0:	b737d7e3          	bge	a5,s3,1c00cc3e <pos_libc_prf+0x7a0>
1c00d0d4:	4772                	lw	a4,28(sp)
1c00d0d6:	4789                	li	a5,2
1c00d0d8:	40e988b3          	sub	a7,s3,a4
1c00d0dc:	fff88693          	addi	a3,a7,-1
1c00d0e0:	06d7f063          	bgeu	a5,a3,1c00d140 <pos_libc_prf+0xca2>
1c00d0e4:	47e2                	lw	a5,24(sp)
1c00d0e6:	00891613          	slli	a2,s2,0x8
1c00d0ea:	ffc8f593          	andi	a1,a7,-4
1c00d0ee:	00f976b3          	and	a3,s2,a5
1c00d0f2:	8ed1                	or	a3,a3,a2
1c00d0f4:	01091793          	slli	a5,s2,0x10
1c00d0f8:	8edd                	or	a3,a3,a5
1c00d0fa:	01891613          	slli	a2,s2,0x18
1c00d0fe:	8e55                	or	a2,a2,a3
1c00d100:	105c                	addi	a5,sp,36
1c00d102:	00865813          	srli	a6,a2,0x8
1c00d106:	01065513          	srli	a0,a2,0x10
1c00d10a:	97ba                	add	a5,a5,a4
1c00d10c:	95be                	add	a1,a1,a5
1c00d10e:	0306f693          	andi	a3,a3,48
1c00d112:	8261                	srli	a2,a2,0x18
1c00d114:	0ff87813          	andi	a6,a6,255
1c00d118:	0ff57513          	andi	a0,a0,255
1c00d11c:	00d78023          	sb	a3,0(a5)
1c00d120:	010780a3          	sb	a6,1(a5)
1c00d124:	00a78123          	sb	a0,2(a5)
1c00d128:	00c781a3          	sb	a2,3(a5)
1c00d12c:	0791                	addi	a5,a5,4
1c00d12e:	fef597e3          	bne	a1,a5,1c00d11c <pos_libc_prf+0xc7e>
1c00d132:	4772                	lw	a4,28(sp)
1c00d134:	ffc8f793          	andi	a5,a7,-4
1c00d138:	973e                	add	a4,a4,a5
1c00d13a:	ce3a                	sw	a4,28(sp)
1c00d13c:	b11781e3          	beq	a5,a7,1c00cc3e <pos_libc_prf+0x7a0>
1c00d140:	4772                	lw	a4,28(sp)
1c00d142:	199c                	addi	a5,sp,240
1c00d144:	97ba                	add	a5,a5,a4
1c00d146:	f3278a23          	sb	s2,-204(a5)
1c00d14a:	00170793          	addi	a5,a4,1
1c00d14e:	af37d8e3          	bge	a5,s3,1c00cc3e <pos_libc_prf+0x7a0>
1c00d152:	1994                	addi	a3,sp,240
1c00d154:	97b6                	add	a5,a5,a3
1c00d156:	f3278a23          	sb	s2,-204(a5)
1c00d15a:	00270b93          	addi	s7,a4,2
1c00d15e:	af3bd0e3          	bge	s7,s3,1c00cc3e <pos_libc_prf+0x7a0>
1c00d162:	9bb6                	add	s7,s7,a3
1c00d164:	f32b8a23          	sb	s2,-204(s7)
1c00d168:	c65a                	sw	s6,12(sp)
1c00d16a:	bcd9                	j	1c00cc40 <pos_libc_prf+0x7a2>
1c00d16c:	01b98023          	sb	s11,0(s3)
1c00d170:	02b00613          	li	a2,43
1c00d174:	00035663          	bgez	t1,1c00d180 <pos_libc_prf+0xce2>
1c00d178:	40600333          	neg	t1,t1
1c00d17c:	02d00613          	li	a2,45
1c00d180:	47a9                	li	a5,10
1c00d182:	02f346b3          	div	a3,t1,a5
1c00d186:	00c980a3          	sb	a2,1(s3)
1c00d18a:	0991                	addi	s3,s3,4
1c00d18c:	02f367b3          	rem	a5,t1,a5
1c00d190:	03068693          	addi	a3,a3,48
1c00d194:	fed98f23          	sb	a3,-2(s3)
1c00d198:	03078793          	addi	a5,a5,48
1c00d19c:	fef98fa3          	sb	a5,-1(s3)
1c00d1a0:	fceff06f          	j	1c00c96e <pos_libc_prf+0x4d0>
1c00d1a4:	02d00793          	li	a5,45
1c00d1a8:	02f10223          	sb	a5,36(sp)
1c00d1ac:	800007b7          	lui	a5,0x80000
1c00d1b0:	14f30e63          	beq	t1,a5,1c00d30c <pos_libc_prf+0xe6e>
1c00d1b4:	40600633          	neg	a2,t1
1c00d1b8:	02510693          	addi	a3,sp,37
1c00d1bc:	bb31                	j	1c00ced8 <pos_libc_prf+0xa3a>
1c00d1be:	4722                	lw	a4,8(sp)
1c00d1c0:	10070d63          	beqz	a4,1c00d2da <pos_libc_prf+0xe3c>
1c00d1c4:	02b00693          	li	a3,43
1c00d1c8:	02d10223          	sb	a3,36(sp)
1c00d1cc:	02510f13          	addi	t5,sp,37
1c00d1d0:	4301                	li	t1,0
1c00d1d2:	4801                	li	a6,0
1c00d1d4:	d9cff06f          	j	1c00c770 <pos_libc_prf+0x2d2>
1c00d1d8:	02414783          	lbu	a5,36(sp)
1c00d1dc:	98078ce3          	beqz	a5,1c00cb74 <pos_libc_prf+0x6d6>
1c00d1e0:	1054                	addi	a3,sp,36
1c00d1e2:	45e5                	li	a1,25
1c00d1e4:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00d1e8:	f9f78793          	addi	a5,a5,-97
1c00d1ec:	0ff7f793          	andi	a5,a5,255
1c00d1f0:	00f5e963          	bltu	a1,a5,1c00d202 <pos_libc_prf+0xd64>
1c00d1f4:	0016c783          	lbu	a5,1(a3)
1c00d1f8:	00e68023          	sb	a4,0(a3)
1c00d1fc:	0685                	addi	a3,a3,1
1c00d1fe:	f3fd                	bnez	a5,1c00d1e4 <pos_libc_prf+0xd46>
1c00d200:	ba95                	j	1c00cb74 <pos_libc_prf+0x6d6>
1c00d202:	0016c783          	lbu	a5,1(a3)
1c00d206:	0685                	addi	a3,a3,1
1c00d208:	fff1                	bnez	a5,1c00d1e4 <pos_libc_prf+0xd46>
1c00d20a:	b2ad                	j	1c00cb74 <pos_libc_prf+0x6d6>
1c00d20c:	0c800793          	li	a5,200
1c00d210:	df37d0e3          	bge	a5,s3,1c00cff0 <pos_libc_prf+0xb52>
1c00d214:	547d                	li	s0,-1
1c00d216:	b02ff06f          	j	1c00c518 <pos_libc_prf+0x7a>
1c00d21a:	864e                	mv	a2,s3
1c00d21c:	1048                	addi	a0,sp,36
1c00d21e:	fc5fe0ef          	jal	ra,1c00c1e2 <memcpy>
1c00d222:	b3f9                	j	1c00cff0 <pos_libc_prf+0xb52>
1c00d224:	47f2                	lw	a5,28(sp)
1c00d226:	4601                	li	a2,0
1c00d228:	e399                	bnez	a5,1c00d22e <pos_libc_prf+0xd90>
1c00d22a:	01503633          	snez	a2,s5
1c00d22e:	57f5                	li	a5,-3
1c00d230:	001a8813          	addi	a6,s5,1
1c00d234:	00f34463          	blt	t1,a5,1c00d23c <pos_libc_prf+0xd9e>
1c00d238:	04685163          	bge	a6,t1,1c00d27a <pos_libc_prf+0xddc>
1c00d23c:	47c1                	li	a5,16
1c00d23e:	0107d363          	bge	a5,a6,1c00d244 <pos_libc_prf+0xda6>
1c00d242:	4841                	li	a6,16
1c00d244:	06700793          	li	a5,103
1c00d248:	187d                	addi	a6,a6,-1
1c00d24a:	02fd8363          	beq	s11,a5,1c00d270 <pos_libc_prf+0xdd2>
1c00d24e:	04500d93          	li	s11,69
1c00d252:	d70ff06f          	j	1c00c7c2 <pos_libc_prf+0x324>
1c00d256:	4a99                	li	s5,6
1c00d258:	d4fd9563          	bne	s11,a5,1c00c7a2 <pos_libc_prf+0x304>
1c00d25c:	4772                	lw	a4,28(sp)
1c00d25e:	4605                	li	a2,1
1c00d260:	57f5                	li	a5,-3
1c00d262:	8e19                	sub	a2,a2,a4
1c00d264:	00f34563          	blt	t1,a5,1c00d26e <pos_libc_prf+0xdd0>
1c00d268:	479d                	li	a5,7
1c00d26a:	0067d863          	bge	a5,t1,1c00d27a <pos_libc_prf+0xddc>
1c00d26e:	4819                	li	a6,6
1c00d270:	06500d93          	li	s11,101
1c00d274:	d4eff06f          	j	1c00c7c2 <pos_libc_prf+0x324>
1c00d278:	4601                	li	a2,0
1c00d27a:	006a8833          	add	a6,s5,t1
1c00d27e:	0b005b63          	blez	a6,1c00d334 <pos_libc_prf+0xe96>
1c00d282:	47c1                	li	a5,16
1c00d284:	0107d363          	bge	a5,a6,1c00d28a <pos_libc_prf+0xdec>
1c00d288:	4841                	li	a6,16
1c00d28a:	187d                	addi	a6,a6,-1
1c00d28c:	06600d93          	li	s11,102
1c00d290:	d32ff06f          	j	1c00c7c2 <pos_libc_prf+0x324>
1c00d294:	4792                	lw	a5,4(sp)
1c00d296:	1054                	addi	a3,sp,36
1c00d298:	c40780e3          	beqz	a5,1c00ced8 <pos_libc_prf+0xa3a>
1c00d29c:	02000793          	li	a5,32
1c00d2a0:	02f10223          	sb	a5,36(sp)
1c00d2a4:	02510693          	addi	a3,sp,37
1c00d2a8:	b905                	j	1c00ced8 <pos_libc_prf+0xa3a>
1c00d2aa:	ffc80fa3          	sb	t3,-1(a6)
1c00d2ae:	b30986e3          	beq	s3,a6,1c00cdda <pos_libc_prf+0x93c>
1c00d2b2:	0805                	addi	a6,a6,1
1c00d2b4:	b4d5                	j	1c00cd98 <pos_libc_prf+0x8fa>
1c00d2b6:	ffe80fa3          	sb	t5,-1(a6)
1c00d2ba:	0305                	addi	t1,t1,1
1c00d2bc:	b679                	j	1c00ce4a <pos_libc_prf+0x9ac>
1c00d2be:	020102a3          	sb	zero,37(sp)
1c00d2c2:	57fd                	li	a5,-1
1c00d2c4:	0cfa8263          	beq	s5,a5,1c00d388 <pos_libc_prf+0xeea>
1c00d2c8:	4785                	li	a5,1
1c00d2ca:	0b47c063          	blt	a5,s4,1c00d36a <pos_libc_prf+0xecc>
1c00d2ce:	4a72                	lw	s4,28(sp)
1c00d2d0:	c65a                	sw	s6,12(sp)
1c00d2d2:	bcad                	j	1c00cd4c <pos_libc_prf+0x8ae>
1c00d2d4:	8636                	mv	a2,a3
1c00d2d6:	b04ff06f          	j	1c00c5da <pos_libc_prf+0x13c>
1c00d2da:	4712                	lw	a4,4(sp)
1c00d2dc:	c77d                	beqz	a4,1c00d3ca <pos_libc_prf+0xf2c>
1c00d2de:	02000693          	li	a3,32
1c00d2e2:	02d10223          	sb	a3,36(sp)
1c00d2e6:	4301                	li	t1,0
1c00d2e8:	4801                	li	a6,0
1c00d2ea:	02510f13          	addi	t5,sp,37
1c00d2ee:	c82ff06f          	j	1c00c770 <pos_libc_prf+0x2d2>
1c00d2f2:	02d00693          	li	a3,45
1c00d2f6:	02d10223          	sb	a3,36(sp)
1c00d2fa:	02510f13          	addi	t5,sp,37
1c00d2fe:	b9cff06f          	j	1c00c69a <pos_libc_prf+0x1fc>
1c00d302:	0c800613          	li	a2,200
1c00d306:	960ad6e3          	bgez	s5,1c00cc72 <pos_libc_prf+0x7d4>
1c00d30a:	bf09                	j	1c00d21c <pos_libc_prf+0xd7e>
1c00d30c:	80000637          	lui	a2,0x80000
1c00d310:	02510693          	addi	a3,sp,37
1c00d314:	b6d1                	j	1c00ced8 <pos_libc_prf+0xa3a>
1c00d316:	ce02                	sw	zero,28(sp)
1c00d318:	bb5d                	j	1c00d0ce <pos_libc_prf+0xc30>
1c00d31a:	4712                	lw	a4,4(sp)
1c00d31c:	02410f13          	addi	t5,sp,36
1c00d320:	b6070d63          	beqz	a4,1c00c69a <pos_libc_prf+0x1fc>
1c00d324:	02000693          	li	a3,32
1c00d328:	02d10223          	sb	a3,36(sp)
1c00d32c:	02510f13          	addi	t5,sp,37
1c00d330:	b6aff06f          	j	1c00c69a <pos_libc_prf+0x1fc>
1c00d334:	06600d93          	li	s11,102
1c00d338:	4781                	li	a5,0
1c00d33a:	080006b7          	lui	a3,0x8000
1c00d33e:	ce8ff06f          	j	1c00c826 <pos_libc_prf+0x388>
1c00d342:	06b6e363          	bltu	a3,a1,1c00d3a8 <pos_libc_prf+0xf0a>
1c00d346:	04e00693          	li	a3,78
1c00d34a:	04100613          	li	a2,65
1c00d34e:	00d78023          	sb	a3,0(a5)
1c00d352:	00c780a3          	sb	a2,1(a5)
1c00d356:	00d78123          	sb	a3,2(a5)
1c00d35a:	f44ff06f          	j	1c00ca9e <pos_libc_prf+0x600>
1c00d35e:	03000693          	li	a3,48
1c00d362:	00df0023          	sb	a3,0(t5)
1c00d366:	4541                	li	a0,16
1c00d368:	bc95                	j	1c00cddc <pos_libc_prf+0x93e>
1c00d36a:	4982                	lw	s3,0(sp)
1c00d36c:	860992e3          	bnez	s3,1c00cbd0 <pos_libc_prf+0x732>
1c00d370:	104c                	addi	a1,sp,36
1c00d372:	fffa0993          	addi	s3,s4,-1
1c00d376:	4609                	li	a2,2
1c00d378:	01358533          	add	a0,a1,s3
1c00d37c:	f3dfe0ef          	jal	ra,1c00c2b8 <memmove>
1c00d380:	02000913          	li	s2,32
1c00d384:	ce02                	sw	zero,28(sp)
1c00d386:	b3b9                	j	1c00d0d4 <pos_libc_prf+0xc36>
1c00d388:	49f2                	lw	s3,28(sp)
1c00d38a:	b19d                	j	1c00cff0 <pos_libc_prf+0xb52>
1c00d38c:	06900693          	li	a3,105
1c00d390:	00d78023          	sb	a3,0(a5)
1c00d394:	06e00693          	li	a3,110
1c00d398:	00d780a3          	sb	a3,1(a5)
1c00d39c:	06600693          	li	a3,102
1c00d3a0:	00d78123          	sb	a3,2(a5)
1c00d3a4:	efaff06f          	j	1c00ca9e <pos_libc_prf+0x600>
1c00d3a8:	06e00693          	li	a3,110
1c00d3ac:	06100613          	li	a2,97
1c00d3b0:	00d78023          	sb	a3,0(a5)
1c00d3b4:	00c780a3          	sb	a2,1(a5)
1c00d3b8:	00d78123          	sb	a3,2(a5)
1c00d3bc:	ee2ff06f          	j	1c00ca9e <pos_libc_prf+0x600>
1c00d3c0:	89f6                	mv	s3,t4
1c00d3c2:	a8061ae3          	bnez	a2,1c00ce56 <pos_libc_prf+0x9b8>
1c00d3c6:	da8ff06f          	j	1c00c96e <pos_libc_prf+0x4d0>
1c00d3ca:	4301                	li	t1,0
1c00d3cc:	4801                	li	a6,0
1c00d3ce:	02410f13          	addi	t5,sp,36
1c00d3d2:	b9eff06f          	j	1c00c770 <pos_libc_prf+0x2d2>

1c00d3d6 <pos_init_start>:
1c00d3d6:	1141                	addi	sp,sp,-16
1c00d3d8:	c422                	sw	s0,8(sp)
1c00d3da:	1c000437          	lui	s0,0x1c000
1c00d3de:	c606                	sw	ra,12(sp)
1c00d3e0:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00d3e4:	ee0fc0ef          	jal	ra,1c009ac4 <pos_soc_init>
1c00d3e8:	2a75                	jal	1c00d5a4 <pos_irq_init>
1c00d3ea:	22e5                	jal	1c00d5d2 <pos_soc_event_init>
1c00d3ec:	2225                	jal	1c00d514 <pos_allocs_init>
1c00d3ee:	405c                	lw	a5,4(s0)
1c00d3f0:	c791                	beqz	a5,1c00d3fc <pos_init_start+0x26>
1c00d3f2:	0411                	addi	s0,s0,4
1c00d3f4:	0411                	addi	s0,s0,4
1c00d3f6:	9782                	jalr	a5
1c00d3f8:	401c                	lw	a5,0(s0)
1c00d3fa:	ffed                	bnez	a5,1c00d3f4 <pos_init_start+0x1e>
1c00d3fc:	86cff0ef          	jal	ra,1c00c468 <pos_io_start>
1c00d400:	300467f3          	csrrsi	a5,mstatus,8
1c00d404:	40b2                	lw	ra,12(sp)
1c00d406:	4422                	lw	s0,8(sp)
1c00d408:	0141                	addi	sp,sp,16
1c00d40a:	8082                	ret

1c00d40c <pos_init_stop>:
1c00d40c:	1141                	addi	sp,sp,-16
1c00d40e:	c422                	sw	s0,8(sp)
1c00d410:	1c000437          	lui	s0,0x1c000
1c00d414:	c606                	sw	ra,12(sp)
1c00d416:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00d41a:	852ff0ef          	jal	ra,1c00c46c <pos_io_stop>
1c00d41e:	405c                	lw	a5,4(s0)
1c00d420:	c791                	beqz	a5,1c00d42c <pos_init_stop+0x20>
1c00d422:	0411                	addi	s0,s0,4
1c00d424:	0411                	addi	s0,s0,4
1c00d426:	9782                	jalr	a5
1c00d428:	401c                	lw	a5,0(s0)
1c00d42a:	ffed                	bnez	a5,1c00d424 <pos_init_stop+0x18>
1c00d42c:	40b2                	lw	ra,12(sp)
1c00d42e:	4422                	lw	s0,8(sp)
1c00d430:	0141                	addi	sp,sp,16
1c00d432:	8082                	ret

1c00d434 <pos_alloc_init>:
1c00d434:	00758793          	addi	a5,a1,7
1c00d438:	9be1                	andi	a5,a5,-8
1c00d43a:	40b785b3          	sub	a1,a5,a1
1c00d43e:	c11c                	sw	a5,0(a0)
1c00d440:	40b605b3          	sub	a1,a2,a1
1c00d444:	00b05663          	blez	a1,1c00d450 <pos_alloc_init+0x1c>
1c00d448:	99e1                	andi	a1,a1,-8
1c00d44a:	c38c                	sw	a1,0(a5)
1c00d44c:	0007a223          	sw	zero,4(a5)
1c00d450:	8082                	ret

1c00d452 <pos_alloc>:
1c00d452:	411c                	lw	a5,0(a0)
1c00d454:	00758713          	addi	a4,a1,7
1c00d458:	862a                	mv	a2,a0
1c00d45a:	ff877593          	andi	a1,a4,-8
1c00d45e:	4681                	li	a3,0
1c00d460:	e789                	bnez	a5,1c00d46a <pos_alloc+0x18>
1c00d462:	a091                	j	1c00d4a6 <pos_alloc+0x54>
1c00d464:	86be                	mv	a3,a5
1c00d466:	c505                	beqz	a0,1c00d48e <pos_alloc+0x3c>
1c00d468:	87aa                	mv	a5,a0
1c00d46a:	4398                	lw	a4,0(a5)
1c00d46c:	43c8                	lw	a0,4(a5)
1c00d46e:	feb74be3          	blt	a4,a1,1c00d464 <pos_alloc+0x12>
1c00d472:	00b70f63          	beq	a4,a1,1c00d490 <pos_alloc+0x3e>
1c00d476:	00b78833          	add	a6,a5,a1
1c00d47a:	8f0d                	sub	a4,a4,a1
1c00d47c:	00e82023          	sw	a4,0(a6)
1c00d480:	00a82223          	sw	a0,4(a6)
1c00d484:	ca91                	beqz	a3,1c00d498 <pos_alloc+0x46>
1c00d486:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00d48a:	853e                	mv	a0,a5
1c00d48c:	8082                	ret
1c00d48e:	8082                	ret
1c00d490:	ca81                	beqz	a3,1c00d4a0 <pos_alloc+0x4e>
1c00d492:	c2c8                	sw	a0,4(a3)
1c00d494:	853e                	mv	a0,a5
1c00d496:	8082                	ret
1c00d498:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00d49c:	853e                	mv	a0,a5
1c00d49e:	8082                	ret
1c00d4a0:	c208                	sw	a0,0(a2)
1c00d4a2:	853e                	mv	a0,a5
1c00d4a4:	8082                	ret
1c00d4a6:	4501                	li	a0,0
1c00d4a8:	8082                	ret

1c00d4aa <pos_free>:
1c00d4aa:	411c                	lw	a5,0(a0)
1c00d4ac:	061d                	addi	a2,a2,7
1c00d4ae:	9a61                	andi	a2,a2,-8
1c00d4b0:	c7a1                	beqz	a5,1c00d4f8 <pos_free+0x4e>
1c00d4b2:	00b7e563          	bltu	a5,a1,1c00d4bc <pos_free+0x12>
1c00d4b6:	a089                	j	1c00d4f8 <pos_free+0x4e>
1c00d4b8:	00b7f563          	bgeu	a5,a1,1c00d4c2 <pos_free+0x18>
1c00d4bc:	873e                	mv	a4,a5
1c00d4be:	43dc                	lw	a5,4(a5)
1c00d4c0:	ffe5                	bnez	a5,1c00d4b8 <pos_free+0xe>
1c00d4c2:	00c586b3          	add	a3,a1,a2
1c00d4c6:	00d78b63          	beq	a5,a3,1c00d4dc <pos_free+0x32>
1c00d4ca:	c190                	sw	a2,0(a1)
1c00d4cc:	4314                	lw	a3,0(a4)
1c00d4ce:	c1dc                	sw	a5,4(a1)
1c00d4d0:	00d70533          	add	a0,a4,a3
1c00d4d4:	00a58e63          	beq	a1,a0,1c00d4f0 <pos_free+0x46>
1c00d4d8:	c34c                	sw	a1,4(a4)
1c00d4da:	8082                	ret
1c00d4dc:	4394                	lw	a3,0(a5)
1c00d4de:	43dc                	lw	a5,4(a5)
1c00d4e0:	9636                	add	a2,a2,a3
1c00d4e2:	c190                	sw	a2,0(a1)
1c00d4e4:	4314                	lw	a3,0(a4)
1c00d4e6:	c1dc                	sw	a5,4(a1)
1c00d4e8:	00d70533          	add	a0,a4,a3
1c00d4ec:	fea596e3          	bne	a1,a0,1c00d4d8 <pos_free+0x2e>
1c00d4f0:	9636                	add	a2,a2,a3
1c00d4f2:	c310                	sw	a2,0(a4)
1c00d4f4:	c35c                	sw	a5,4(a4)
1c00d4f6:	8082                	ret
1c00d4f8:	00c58733          	add	a4,a1,a2
1c00d4fc:	00e78663          	beq	a5,a4,1c00d508 <pos_free+0x5e>
1c00d500:	c1dc                	sw	a5,4(a1)
1c00d502:	c190                	sw	a2,0(a1)
1c00d504:	c10c                	sw	a1,0(a0)
1c00d506:	8082                	ret
1c00d508:	4398                	lw	a4,0(a5)
1c00d50a:	43dc                	lw	a5,4(a5)
1c00d50c:	963a                	add	a2,a2,a4
1c00d50e:	c1dc                	sw	a5,4(a1)
1c00d510:	c190                	sw	a2,0(a1)
1c00d512:	bfcd                	j	1c00d504 <pos_free+0x5a>

1c00d514 <pos_allocs_init>:
1c00d514:	1c0065b7          	lui	a1,0x1c006
1c00d518:	1141                	addi	sp,sp,-16
1c00d51a:	2d858613          	addi	a2,a1,728 # 1c0062d8 <__l2_priv0_end>
1c00d51e:	1c0087b7          	lui	a5,0x1c008
1c00d522:	c606                	sw	ra,12(sp)
1c00d524:	2d858593          	addi	a1,a1,728
1c00d528:	40c78633          	sub	a2,a5,a2
1c00d52c:	04f5d863          	bge	a1,a5,1c00d57c <pos_allocs_init+0x68>
1c00d530:	1c006537          	lui	a0,0x1c006
1c00d534:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00d538:	3df5                	jal	1c00d434 <pos_alloc_init>
1c00d53a:	1c00d5b7          	lui	a1,0x1c00d
1c00d53e:	5ec58613          	addi	a2,a1,1516 # 1c00d5ec <__l2_priv1_end>
1c00d542:	1c0107b7          	lui	a5,0x1c010
1c00d546:	5ec58593          	addi	a1,a1,1516
1c00d54a:	40c78633          	sub	a2,a5,a2
1c00d54e:	02f5da63          	bge	a1,a5,1c00d582 <pos_allocs_init+0x6e>
1c00d552:	1c006537          	lui	a0,0x1c006
1c00d556:	2d050513          	addi	a0,a0,720 # 1c0062d0 <pos_alloc_l2+0x4>
1c00d55a:	3de9                	jal	1c00d434 <pos_alloc_init>
1c00d55c:	40b2                	lw	ra,12(sp)
1c00d55e:	1c0105b7          	lui	a1,0x1c010
1c00d562:	00058793          	mv	a5,a1
1c00d566:	1c080637          	lui	a2,0x1c080
1c00d56a:	1c006537          	lui	a0,0x1c006
1c00d56e:	8e1d                	sub	a2,a2,a5
1c00d570:	00058593          	mv	a1,a1
1c00d574:	2d450513          	addi	a0,a0,724 # 1c0062d4 <pos_alloc_l2+0x8>
1c00d578:	0141                	addi	sp,sp,16
1c00d57a:	bd6d                	j	1c00d434 <pos_alloc_init>
1c00d57c:	4581                	li	a1,0
1c00d57e:	4601                	li	a2,0
1c00d580:	bf45                	j	1c00d530 <pos_allocs_init+0x1c>
1c00d582:	4581                	li	a1,0
1c00d584:	4601                	li	a2,0
1c00d586:	b7f1                	j	1c00d552 <pos_allocs_init+0x3e>

1c00d588 <pi_l2_malloc>:
1c00d588:	85aa                	mv	a1,a0
1c00d58a:	1c006537          	lui	a0,0x1c006
1c00d58e:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00d592:	b5c1                	j	1c00d452 <pos_alloc>

1c00d594 <pi_l2_free>:
1c00d594:	862e                	mv	a2,a1
1c00d596:	85aa                	mv	a1,a0
1c00d598:	1c006537          	lui	a0,0x1c006
1c00d59c:	2cc50513          	addi	a0,a0,716 # 1c0062cc <pos_alloc_l2>
1c00d5a0:	b729                	j	1c00d4aa <pos_free>

1c00d5a2 <__rt_handle_illegal_instr>:
1c00d5a2:	8082                	ret

1c00d5a4 <pos_irq_init>:
1c00d5a4:	1a10a737          	lui	a4,0x1a10a
1c00d5a8:	56fd                	li	a3,-1
1c00d5aa:	f14027f3          	csrr	a5,mhartid
1c00d5ae:	8795                	srai	a5,a5,0x5
1c00d5b0:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00d5b4:	03f7f793          	andi	a5,a5,63
1c00d5b8:	477d                	li	a4,31
1c00d5ba:	00e78363          	beq	a5,a4,1c00d5c0 <pos_irq_init+0x1c>
1c00d5be:	8082                	ret
1c00d5c0:	1c0087b7          	lui	a5,0x1c008
1c00d5c4:	00078793          	mv	a5,a5
1c00d5c8:	0017e793          	ori	a5,a5,1
1c00d5cc:	30579073          	csrw	mtvec,a5
1c00d5d0:	8082                	ret

1c00d5d2 <pos_soc_event_init>:
1c00d5d2:	1a1067b7          	lui	a5,0x1a106
1c00d5d6:	577d                	li	a4,-1
1c00d5d8:	c3d8                	sw	a4,4(a5)
1c00d5da:	c798                	sw	a4,8(a5)
1c00d5dc:	c7d8                	sw	a4,12(a5)
1c00d5de:	cb98                	sw	a4,16(a5)
1c00d5e0:	cbd8                	sw	a4,20(a5)
1c00d5e2:	cf98                	sw	a4,24(a5)
1c00d5e4:	cfd8                	sw	a4,28(a5)
1c00d5e6:	d398                	sw	a4,32(a5)
1c00d5e8:	8082                	ret

1c00d5ea <_endtext>:
	...
