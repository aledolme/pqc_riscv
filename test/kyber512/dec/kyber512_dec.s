riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber512/dec/build/dec/dec

/home/alessandra.dolmeta/pqc_riscv/test/kyber512/dec/build/dec/dec:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	7830506f          	j	1c00df82 <__rt_handle_illegal_instr>
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
1c008084:	6ff0506f          	j	1c00df82 <__rt_handle_illegal_instr>

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
1c0080c4:	1a028293          	addi	t0,t0,416 # 1c006260 <pos_fll_is_on>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	1bc30313          	addi	t1,t1,444 # 1c006284 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	18610113          	addi	sp,sp,390 # 1c006260 <pos_fll_is_on>
1c0080e2:	4d5050ef          	jal	ra,1c00ddb6 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	06638393          	addi	t2,t2,102 # 1c008154 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	4f1050ef          	jal	ra,1c00ddec <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	533040ef          	jal	ra,1c00ce34 <exit>
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
1c008158:	207b67b7          	lui	a5,0x207b6
1c00815c:	7e112623          	sw	ra,2028(sp)
1c008160:	7e812423          	sw	s0,2024(sp)
1c008164:	7e912223          	sw	s1,2020(sp)
1c008168:	7f212023          	sw	s2,2016(sp)
1c00816c:	7d312e23          	sw	s3,2012(sp)
1c008170:	28a78793          	addi	a5,a5,650 # 207b628a <__l2_shared_end+0x47a628a>
1c008174:	7145                	addi	sp,sp,-464
1c008176:	d03e                	sw	a5,32(sp)
1c008178:	9d8d37b7          	lui	a5,0x9d8d3
1c00817c:	17e1                	addi	a5,a5,-8
1c00817e:	d23e                	sw	a5,36(sp)
1c008180:	485197b7          	lui	a5,0x48519
1c008184:	17278793          	addi	a5,a5,370 # 48519172 <__l2_shared_end+0x2c509172>
1c008188:	d43e                	sw	a5,40(sp)
1c00818a:	a12a77b7          	lui	a5,0xa12a7
1c00818e:	d4478793          	addi	a5,a5,-700 # a12a6d44 <__l2_shared_end+0x85296d44>
1c008192:	d63e                	sw	a5,44(sp)
1c008194:	ec3c57b7          	lui	a5,0xec3c5
1c008198:	3e278793          	addi	a5,a5,994 # ec3c53e2 <__l2_shared_end+0xd03b53e2>
1c00819c:	d83e                	sw	a5,48(sp)
1c00819e:	9ff9f7b7          	lui	a5,0x9ff9f
1c0081a2:	c9378793          	addi	a5,a5,-877 # 9ff9ec93 <__l2_shared_end+0x83f8ec93>
1c0081a6:	da3e                	sw	a5,52(sp)
1c0081a8:	c5c7d7b7          	lui	a5,0xc5c7d
1c0081ac:	1f978793          	addi	a5,a5,505 # c5c7d1f9 <__l2_shared_end+0xa9c6d1f9>
1c0081b0:	dc3e                	sw	a5,56(sp)
1c0081b2:	5b1117b7          	lui	a5,0x5b111
1c0081b6:	a9c78793          	addi	a5,a5,-1380 # 5b110a9c <__l2_shared_end+0x3f100a9c>
1c0081ba:	de3e                	sw	a5,60(sp)
1c0081bc:	63cdf7b7          	lui	a5,0x63cdf
1c0081c0:	cd678793          	addi	a5,a5,-810 # 63cdecd6 <__l2_shared_end+0x47ccecd6>
1c0081c4:	34f12023          	sw	a5,832(sp)
1c0081c8:	d81957b7          	lui	a5,0xd8195
1c0081cc:	f5a78793          	addi	a5,a5,-166 # d8194f5a <__l2_shared_end+0xbc184f5a>
1c0081d0:	34f12223          	sw	a5,836(sp)
1c0081d4:	9cbc57b7          	lui	a5,0x9cbc5
1c0081d8:	60278793          	addi	a5,a5,1538 # 9cbc5602 <__l2_shared_end+0x80bb5602>
1c0081dc:	34f12423          	sw	a5,840(sp)
1c0081e0:	eb3dc7b7          	lui	a5,0xeb3dc
1c0081e4:	2a378793          	addi	a5,a5,675 # eb3dc2a3 <__l2_shared_end+0xcf3cc2a3>
1c0081e8:	34f12623          	sw	a5,844(sp)
1c0081ec:	162e47b7          	lui	a5,0x162e4
1c0081f0:	e7878793          	addi	a5,a5,-392 # 162e3e78 <__CTOR_LIST__-0x5d1c18c>
1c0081f4:	34f12823          	sw	a5,848(sp)
1c0081f8:	51a187b7          	lui	a5,0x51a18
1c0081fc:	e9378793          	addi	a5,a5,-365 # 51a17e93 <__l2_shared_end+0x35a07e93>
1c008200:	34f12a23          	sw	a5,852(sp)
1c008204:	8d6437b7          	lui	a5,0x8d643
1c008208:	6e178793          	addi	a5,a5,1761 # 8d6436e1 <__l2_shared_end+0x716336e1>
1c00820c:	34f12c23          	sw	a5,856(sp)
1c008210:	73a1d7b7          	lui	a5,0x73a1d
1c008214:	fb478793          	addi	a5,a5,-76 # 73a1cfb4 <__l2_shared_end+0x57a0cfb4>
1c008218:	34f12e23          	sw	a5,860(sp)
1c00821c:	2b5527b7          	lui	a5,0x2b552
1c008220:	8c678793          	addi	a5,a5,-1850 # 2b5518c6 <__l2_shared_end+0xf5418c6>
1c008224:	36f12023          	sw	a5,864(sp)
1c008228:	e31c27b7          	lui	a5,0xe31c2
1c00822c:	25778793          	addi	a5,a5,599 # e31c2257 <__l2_shared_end+0xc71b2257>
1c008230:	36f12223          	sw	a5,868(sp)
1c008234:	d04437b7          	lui	a5,0xd0443
1c008238:	2e478793          	addi	a5,a5,740 # d04432e4 <__l2_shared_end+0xb44332e4>
1c00823c:	36f12423          	sw	a5,872(sp)
1c008240:	7ac7f7b7          	lui	a5,0x7ac7f
1c008244:	57878793          	addi	a5,a5,1400 # 7ac7f578 <__l2_shared_end+0x5ec6f578>
1c008248:	36f12623          	sw	a5,876(sp)
1c00824c:	7ba2b7b7          	lui	a5,0x7ba2b
1c008250:	14778793          	addi	a5,a5,327 # 7ba2b147 <__l2_shared_end+0x5fa1b147>
1c008254:	36f12823          	sw	a5,880(sp)
1c008258:	fc7ac7b7          	lui	a5,0xfc7ac
1c00825c:	c2378793          	addi	a5,a5,-989 # fc7abc23 <__l2_shared_end+0xe079bc23>
1c008260:	36f12a23          	sw	a5,884(sp)
1c008264:	917917b7          	lui	a5,0x91791
1c008268:	a2b78793          	addi	a5,a5,-1493 # 91790a2b <__l2_shared_end+0x75780a2b>
1c00826c:	36f12c23          	sw	a5,888(sp)
1c008270:	8e0a67b7          	lui	a5,0x8e0a6
1c008274:	acf78793          	addi	a5,a5,-1329 # 8e0a5acf <__l2_shared_end+0x72095acf>
1c008278:	36f12e23          	sw	a5,892(sp)
1c00827c:	9cbd37b7          	lui	a5,0x9cbd3
1c008280:	c7178793          	addi	a5,a5,-911 # 9cbd2c71 <__l2_shared_end+0x80bc2c71>
1c008284:	38f12023          	sw	a5,896(sp)
1c008288:	0a2547b7          	lui	a5,0xa254
1c00828c:	12f78793          	addi	a5,a5,303 # a25412f <__CTOR_LIST__-0x11dabed5>
1c008290:	38f12223          	sw	a5,900(sp)
1c008294:	ac7cf7b7          	lui	a5,0xac7cf
1c008298:	b6b78793          	addi	a5,a5,-1173 # ac7ceb6b <__l2_shared_end+0x907beb6b>
1c00829c:	38f12423          	sw	a5,904(sp)
1c0082a0:	2be4c7b7          	lui	a5,0x2be4c
1c0082a4:	03b78793          	addi	a5,a5,59 # 2be4c03b <__l2_shared_end+0xfe3c03b>
1c0082a8:	38f12623          	sw	a5,908(sp)
1c0082ac:	51f347b7          	lui	a5,0x51f34
1c0082b0:	6b478793          	addi	a5,a5,1716 # 51f346b4 <__l2_shared_end+0x35f246b4>
1c0082b4:	38f12823          	sw	a5,912(sp)
1c0082b8:	9b3697b7          	lui	a5,0x9b369
1c0082bc:	a1f78793          	addi	a5,a5,-1505 # 9b368a1f <__l2_shared_end+0x7f358a1f>
1c0082c0:	38f12a23          	sw	a5,916(sp)
1c0082c4:	44ba87b7          	lui	a5,0x44ba8
1c0082c8:	26078793          	addi	a5,a5,608 # 44ba8260 <__l2_shared_end+0x28b98260>
1c0082cc:	38f12c23          	sw	a5,920(sp)
1c0082d0:	ca5c37b7          	lui	a5,0xca5c3
1c0082d4:	07778793          	addi	a5,a5,119 # ca5c3077 <__l2_shared_end+0xae5b3077>
1c0082d8:	38f12e23          	sw	a5,924(sp)
1c0082dc:	bc64a7b7          	lui	a5,0xbc64a
1c0082e0:	8ad78793          	addi	a5,a5,-1875 # bc6498ad <__l2_shared_end+0xa06398ad>
1c0082e4:	3af12023          	sw	a5,928(sp)
1c0082e8:	a61557b7          	lui	a5,0xa6155
1c0082ec:	a3a78793          	addi	a5,a5,-1478 # a6154a3a <__l2_shared_end+0x8a144a3a>
1c0082f0:	3af12223          	sw	a5,932(sp)
1c0082f4:	364457b7          	lui	a5,0x36445
1c0082f8:	64978793          	addi	a5,a5,1609 # 36445649 <__l2_shared_end+0x1a435649>
1c0082fc:	3af12423          	sw	a5,936(sp)
1c008300:	59a437b7          	lui	a5,0x59a43
1c008304:	88078793          	addi	a5,a5,-1920 # 59a42880 <__l2_shared_end+0x3da32880>
1c008308:	3af12623          	sw	a5,940(sp)
1c00830c:	b28ca7b7          	lui	a5,0xb28ca
1c008310:	77b78793          	addi	a5,a5,1915 # b28ca77b <__l2_shared_end+0x968ba77b>
1c008314:	3af12823          	sw	a5,944(sp)
1c008318:	43e687b7          	lui	a5,0x43e68
1c00831c:	67a78793          	addi	a5,a5,1658 # 43e6867a <__l2_shared_end+0x27e5867a>
1c008320:	3af12a23          	sw	a5,948(sp)
1c008324:	270f97b7          	lui	a5,0x270f9
1c008328:	93378793          	addi	a5,a5,-1741 # 270f8933 <__l2_shared_end+0xb0e8933>
1c00832c:	3af12c23          	sw	a5,952(sp)
1c008330:	2a20b7b7          	lui	a5,0x2a20b
1c008334:	88378793          	addi	a5,a5,-1917 # 2a20a883 <__l2_shared_end+0xe1fa883>
1c008338:	3af12e23          	sw	a5,956(sp)
1c00833c:	b118a7b7          	lui	a5,0xb118a
1c008340:	03f78793          	addi	a5,a5,63 # b118a03f <__l2_shared_end+0x9517a03f>
1c008344:	3cf12023          	sw	a5,960(sp)
1c008348:	c4cbd7b7          	lui	a5,0xc4cbd
1c00834c:	10078793          	addi	a5,a5,256 # c4cbd100 <__l2_shared_end+0xa8cad100>
1c008350:	3cf12223          	sw	a5,964(sp)
1c008354:	6ae127b7          	lui	a5,0x6ae12
1c008358:	29678793          	addi	a5,a5,662 # 6ae12296 <__l2_shared_end+0x4ee02296>
1c00835c:	3cf12423          	sw	a5,968(sp)
1c008360:	1d6897b7          	lui	a5,0x1d689
1c008364:	a8178793          	addi	a5,a5,-1407 # 1d688a81 <__l2_shared_end+0x1678a81>
1c008368:	3cf12623          	sw	a5,972(sp)
1c00836c:	4f9637b7          	lui	a5,0x4f963
1c008370:	a2478793          	addi	a5,a5,-1500 # 4f962a24 <__l2_shared_end+0x33952a24>
1c008374:	3cf12823          	sw	a5,976(sp)
1c008378:	639b87b7          	lui	a5,0x639b8
1c00837c:	5f878793          	addi	a5,a5,1528 # 639b85f8 <__l2_shared_end+0x479a85f8>
1c008380:	3cf12a23          	sw	a5,980(sp)
1c008384:	47a067b7          	lui	a5,0x47a06
1c008388:	97b78793          	addi	a5,a5,-1669 # 47a0597b <__l2_shared_end+0x2b9f597b>
1c00838c:	3cf12c23          	sw	a5,984(sp)
1c008390:	d5cc17b7          	lui	a5,0xd5cc1
1c008394:	cf478793          	addi	a5,a5,-780 # d5cc0cf4 <__l2_shared_end+0xb9cb0cf4>
1c008398:	3cf12e23          	sw	a5,988(sp)
1c00839c:	c07067b7          	lui	a5,0xc0706
1c0083a0:	7d678793          	addi	a5,a5,2006 # c07067d6 <__l2_shared_end+0xa46f67d6>
1c0083a4:	3ef12023          	sw	a5,992(sp)
1c0083a8:	c2b2b7b7          	lui	a5,0xc2b2b
1c0083ac:	28f78793          	addi	a5,a5,655 # c2b2b28f <__l2_shared_end+0xa6b1b28f>
1c0083b0:	3ef12223          	sw	a5,996(sp)
1c0083b4:	6c8c57b7          	lui	a5,0x6c8c5
1c0083b8:	3eb78793          	addi	a5,a5,1003 # 6c8c53eb <__l2_shared_end+0x508b53eb>
1c0083bc:	3ef12423          	sw	a5,1000(sp)
1c0083c0:	92b737b7          	lui	a5,0x92b73
1c0083c4:	0d278793          	addi	a5,a5,210 # 92b730d2 <__l2_shared_end+0x76b630d2>
1c0083c8:	3ef12623          	sw	a5,1004(sp)
1c0083cc:	ace497b7          	lui	a5,0xace49
1c0083d0:	e4478793          	addi	a5,a5,-444 # ace48e44 <__l2_shared_end+0x90e38e44>
1c0083d4:	3ef12823          	sw	a5,1008(sp)
1c0083d8:	ffc7c7b7          	lui	a5,0xffc7c
1c0083dc:	bbe78793          	addi	a5,a5,-1090 # ffc7bbbe <__l2_shared_end+0xe3c6bbbe>
1c0083e0:	3ef12a23          	sw	a5,1012(sp)
1c0083e4:	b298a7b7          	lui	a5,0xb298a
1c0083e8:	75778793          	addi	a5,a5,1879 # b298a757 <__l2_shared_end+0x9697a757>
1c0083ec:	3ef12c23          	sw	a5,1016(sp)
1c0083f0:	c896b7b7          	lui	a5,0xc896b
1c0083f4:	59678793          	addi	a5,a5,1430 # c896b596 <__l2_shared_end+0xac95b596>
1c0083f8:	3ef12e23          	sw	a5,1020(sp)
1c0083fc:	6057f7b7          	lui	a5,0x6057f
1c008400:	85878793          	addi	a5,a5,-1960 # 6057e858 <__l2_shared_end+0x4456e858>
1c008404:	40f12023          	sw	a5,1024(sp)
1c008408:	b08e77b7          	lui	a5,0xb08e7
1c00840c:	ef978793          	addi	a5,a5,-263 # b08e6ef9 <__l2_shared_end+0x948d6ef9>
1c008410:	40f12223          	sw	a5,1028(sp)
1c008414:	0c38c7b7          	lui	a5,0xc38c
1c008418:	1ca78793          	addi	a5,a5,458 # c38c1ca <__CTOR_LIST__-0xfc73e3a>
1c00841c:	40f12423          	sw	a5,1032(sp)
1c008420:	4d0227b7          	lui	a5,0x4d022
1c008424:	0fa78793          	addi	a5,a5,250 # 4d0220fa <__l2_shared_end+0x310120fa>
1c008428:	40f12623          	sw	a5,1036(sp)
1c00842c:	c456b7b7          	lui	a5,0xc456b
1c008430:	a4a78793          	addi	a5,a5,-1462 # c456aa4a <__l2_shared_end+0xa855aa4a>
1c008434:	40f12823          	sw	a5,1040(sp)
1c008438:	76e437b7          	lui	a5,0x76e43
1c00843c:	18078793          	addi	a5,a5,384 # 76e43180 <__l2_shared_end+0x5ae33180>
1c008440:	40f12a23          	sw	a5,1044(sp)
1c008444:	d944c7b7          	lui	a5,0xd944c
1c008448:	57f78793          	addi	a5,a5,1407 # d944c57f <__l2_shared_end+0xbd43c57f>
1c00844c:	40f12c23          	sw	a5,1048(sp)
1c008450:	132da7b7          	lui	a5,0x132da
1c008454:	78278793          	addi	a5,a5,1922 # 132da782 <__CTOR_LIST__-0x8d25882>
1c008458:	40f12e23          	sw	a5,1052(sp)
1c00845c:	4dc257b7          	lui	a5,0x4dc25
1c008460:	65f78793          	addi	a5,a5,1631 # 4dc2565f <__l2_shared_end+0x31c1565f>
1c008464:	42f12023          	sw	a5,1056(sp)
1c008468:	da7f17b7          	lui	a5,0xda7f1
1c00846c:	55e78793          	addi	a5,a5,1374 # da7f155e <__l2_shared_end+0xbe7e155e>
1c008470:	42f12223          	sw	a5,1060(sp)
1c008474:	c31047b7          	lui	a5,0xc3104
1c008478:	0e278793          	addi	a5,a5,226 # c31040e2 <__l2_shared_end+0xa70f40e2>
1c00847c:	42f12423          	sw	a5,1064(sp)
1c008480:	6ac2a7b7          	lui	a5,0x6ac2a
1c008484:	6b878793          	addi	a5,a5,1720 # 6ac2a6b8 <__l2_shared_end+0x4ec1a6b8>
1c008488:	42f12623          	sw	a5,1068(sp)
1c00848c:	e81387b7          	lui	a5,0xe8138
1c008490:	72f78793          	addi	a5,a5,1839 # e813872f <__l2_shared_end+0xcc12872f>
1c008494:	42f12823          	sw	a5,1072(sp)
1c008498:	38f117b7          	lui	a5,0x38f11
1c00849c:	12778793          	addi	a5,a5,295 # 38f11127 <__l2_shared_end+0x1cf01127>
1c0084a0:	42f12a23          	sw	a5,1076(sp)
1c0084a4:	679d                	lui	a5,0x7
1c0084a6:	b9078793          	addi	a5,a5,-1136 # 6b90 <__CTOR_LIST__-0x1bff9474>
1c0084aa:	42f11c23          	sh	a5,1080(sp)
1c0084ae:	4789                	li	a5,2
1c0084b0:	42f10d23          	sb	a5,1082(sp)
1c0084b4:	47b5                	li	a5,13
1c0084b6:	42f10da3          	sb	a5,1083(sp)
1c0084ba:	67a2f7b7          	lui	a5,0x67a2f
1c0084be:	48e78793          	addi	a5,a5,1166 # 67a2f48e <__l2_shared_end+0x4ba1f48e>
1c0084c2:	42f12e23          	sw	a5,1084(sp)
1c0084c6:	fb2117b7          	lui	a5,0xfb211
1c0084ca:	66b78793          	addi	a5,a5,1643 # fb21166b <__l2_shared_end+0xdf20166b>
1c0084ce:	44f12023          	sw	a5,1088(sp)
1c0084d2:	5556d7b7          	lui	a5,0x5556d
1c0084d6:	93878793          	addi	a5,a5,-1736 # 5556c938 <__l2_shared_end+0x3955c938>
1c0084da:	44f12223          	sw	a5,1092(sp)
1c0084de:	6d9c27b7          	lui	a5,0x6d9c2
1c0084e2:	51278793          	addi	a5,a5,1298 # 6d9c2512 <__l2_shared_end+0x519b2512>
1c0084e6:	44f12423          	sw	a5,1096(sp)
1c0084ea:	644fa7b7          	lui	a5,0x644fa
1c0084ee:	59c78793          	addi	a5,a5,1436 # 644fa59c <__l2_shared_end+0x484ea59c>
1c0084f2:	44f12623          	sw	a5,1100(sp)
1c0084f6:	084b67b7          	lui	a5,0x84b6
1c0084fa:	fcf78793          	addi	a5,a5,-49 # 84b5fcf <__CTOR_LIST__-0x13b4a035>
1c0084fe:	44f12823          	sw	a5,1104(sp)
1c008502:	6c01f7b7          	lui	a5,0x6c01f
1c008506:	b6078793          	addi	a5,a5,-1184 # 6c01eb60 <__l2_shared_end+0x5000eb60>
1c00850a:	44f12a23          	sw	a5,1108(sp)
1c00850e:	7d00a7b7          	lui	a5,0x7d00a
1c008512:	6ac78793          	addi	a5,a5,1708 # 7d00a6ac <__l2_shared_end+0x60ffa6ac>
1c008516:	44f12c23          	sw	a5,1112(sp)
1c00851a:	9058a7b7          	lui	a5,0x9058a
1c00851e:	eb778793          	addi	a5,a5,-329 # 90589eb7 <__l2_shared_end+0x74579eb7>
1c008522:	44f12e23          	sw	a5,1116(sp)
1c008526:	4b87e7b7          	lui	a5,0x4b87e
1c00852a:	ad978793          	addi	a5,a5,-1319 # 4b87dad9 <__l2_shared_end+0x2f86dad9>
1c00852e:	46f12023          	sw	a5,1120(sp)
1c008532:	3bc517b7          	lui	a5,0x3bc51
1c008536:	bf378793          	addi	a5,a5,-1037 # 3bc50bf3 <__l2_shared_end+0x1fc40bf3>
1c00853a:	46f12223          	sw	a5,1124(sp)
1c00853e:	7ee147b7          	lui	a5,0x7ee14
1c008542:	dba78793          	addi	a5,a5,-582 # 7ee13dba <__l2_shared_end+0x62e03dba>
1c008546:	46f12423          	sw	a5,1128(sp)
1c00854a:	2dc557b7          	lui	a5,0x2dc55
1c00854e:	8cf78793          	addi	a5,a5,-1841 # 2dc548cf <__l2_shared_end+0x11c448cf>
1c008552:	46f12623          	sw	a5,1132(sp)
1c008556:	2be937b7          	lui	a5,0x2be93
1c00855a:	8d078793          	addi	a5,a5,-1840 # 2be928d0 <__l2_shared_end+0xfe828d0>
1c00855e:	46f12823          	sw	a5,1136(sp)
1c008562:	5ed7f7b7          	lui	a5,0x5ed7f
1c008566:	db478793          	addi	a5,a5,-588 # 5ed7edb4 <__l2_shared_end+0x42d6edb4>
1c00856a:	46f12a23          	sw	a5,1140(sp)
1c00856e:	fe52c7b7          	lui	a5,0xfe52c
1c008572:	9c178793          	addi	a5,a5,-1599 # fe52b9c1 <__l2_shared_end+0xe251b9c1>
1c008576:	46f12c23          	sw	a5,1144(sp)
1c00857a:	bbe197b7          	lui	a5,0xbbe19
1c00857e:	6d578793          	addi	a5,a5,1749 # bbe196d5 <__l2_shared_end+0x9fe096d5>
1c008582:	46f12e23          	sw	a5,1148(sp)
1c008586:	64b307b7          	lui	a5,0x64b30
1c00858a:	71578793          	addi	a5,a5,1813 # 64b30715 <__l2_shared_end+0x48b20715>
1c00858e:	48f12023          	sw	a5,1152(sp)
1c008592:	d46e97b7          	lui	a5,0xd46e9
1c008596:	54f78793          	addi	a5,a5,1359 # d46e954f <__l2_shared_end+0xb86d954f>
1c00859a:	48f12223          	sw	a5,1156(sp)
1c00859e:	b652c7b7          	lui	a5,0xb652c
1c0085a2:	3e878793          	addi	a5,a5,1000 # b652c3e8 <__l2_shared_end+0x9a51c3e8>
1c0085a6:	48f12423          	sw	a5,1160(sp)
1c0085aa:	0f74e7b7          	lui	a5,0xf74e
1c0085ae:	c1e78793          	addi	a5,a5,-994 # f74dc1e <__CTOR_LIST__-0xc8b23e6>
1c0085b2:	48f12623          	sw	a5,1164(sp)
1c0085b6:	d95ce7b7          	lui	a5,0xd95ce
1c0085ba:	6ce78793          	addi	a5,a5,1742 # d95ce6ce <__l2_shared_end+0xbd5be6ce>
1c0085be:	48f12823          	sw	a5,1168(sp)
1c0085c2:	622557b7          	lui	a5,0x62255
1c0085c6:	50778793          	addi	a5,a5,1287 # 62255507 <__l2_shared_end+0x46245507>
1c0085ca:	48f12a23          	sw	a5,1172(sp)
1c0085ce:	89b627b7          	lui	a5,0x89b62
1c0085d2:	ba378793          	addi	a5,a5,-1117 # 89b61ba3 <__l2_shared_end+0x6db51ba3>
1c0085d6:	48f12c23          	sw	a5,1176(sp)
1c0085da:	bc1717b7          	lui	a5,0xbc171
1c0085de:	c8f78793          	addi	a5,a5,-881 # bc170c8f <__l2_shared_end+0xa0160c8f>
1c0085e2:	48f12e23          	sw	a5,1180(sp)
1c0085e6:	7b5397b7          	lui	a5,0x7b539
1c0085ea:	4f878793          	addi	a5,a5,1272 # 7b5394f8 <__l2_shared_end+0x5f5294f8>
1c0085ee:	4af12023          	sw	a5,1184(sp)
1c0085f2:	8fc1d7b7          	lui	a5,0x8fc1d
1c0085f6:	69478793          	addi	a5,a5,1684 # 8fc1d694 <__l2_shared_end+0x73c0d694>
1c0085fa:	4af12223          	sw	a5,1188(sp)
1c0085fe:	8b9b17b7          	lui	a5,0x8b9b1
1c008602:	a2778793          	addi	a5,a5,-1497 # 8b9b0a27 <__l2_shared_end+0x6f9a0a27>
1c008606:	4af12423          	sw	a5,1192(sp)
1c00860a:	e25b17b7          	lui	a5,0xe25b1
1c00860e:	a7678793          	addi	a5,a5,-1418 # e25b0a76 <__l2_shared_end+0xc65a0a76>
1c008612:	4af12623          	sw	a5,1196(sp)
1c008616:	1fe6a7b7          	lui	a5,0x1fe6a
1c00861a:	49b78793          	addi	a5,a5,1179 # 1fe6a49b <__l2_shared_end+0x3e5a49b>
1c00861e:	4af12823          	sw	a5,1200(sp)
1c008622:	457317b7          	lui	a5,0x45731
1c008626:	89a78793          	addi	a5,a5,-1894 # 4573089a <__l2_shared_end+0x2972089a>
1c00862a:	4af12a23          	sw	a5,1204(sp)
1c00862e:	431757b7          	lui	a5,0x43175
1c008632:	19378793          	addi	a5,a5,403 # 43175193 <__l2_shared_end+0x27165193>
1c008636:	4af12c23          	sw	a5,1208(sp)
1c00863a:	63a8c7b7          	lui	a5,0x63a8c
1c00863e:	73078793          	addi	a5,a5,1840 # 63a8c730 <__l2_shared_end+0x47a7c730>
1c008642:	4af12e23          	sw	a5,1212(sp)
1c008646:	c488d7b7          	lui	a5,0xc488d
1c00864a:	7b678793          	addi	a5,a5,1974 # c488d7b6 <__l2_shared_end+0xa887d7b6>
1c00864e:	4cf12023          	sw	a5,1216(sp)
1c008652:	20b667b7          	lui	a5,0x20b66
1c008656:	b8978793          	addi	a5,a5,-1143 # 20b65b89 <__l2_shared_end+0x4b55b89>
1c00865a:	4cf12223          	sw	a5,1220(sp)
1c00865e:	98d5c7b7          	lui	a5,0x98d5c
1c008662:	85878793          	addi	a5,a5,-1960 # 98d5b858 <__l2_shared_end+0x7cd4b858>
1c008666:	4cf12423          	sw	a5,1224(sp)
1c00866a:	f825e7b7          	lui	a5,0xf825e
1c00866e:	52f78793          	addi	a5,a5,1327 # f825e52f <__l2_shared_end+0xdc24e52f>
1c008672:	4cf12623          	sw	a5,1228(sp)
1c008676:	a8bf47b7          	lui	a5,0xa8bf4
1c00867a:	48778793          	addi	a5,a5,1159 # a8bf4487 <__l2_shared_end+0x8cbe4487>
1c00867e:	4cf12823          	sw	a5,1232(sp)
1c008682:	23f247b7          	lui	a5,0x23f24
1c008686:	b7f78793          	addi	a5,a5,-1153 # 23f23b7f <__l2_shared_end+0x7f13b7f>
1c00868a:	4cf12a23          	sw	a5,1236(sp)
1c00868e:	4d6767b7          	lui	a5,0x4d676
1c008692:	7a978793          	addi	a5,a5,1961 # 4d6767a9 <__l2_shared_end+0x316667a9>
1c008696:	4cf12c23          	sw	a5,1240(sp)
1c00869a:	2cf207b7          	lui	a5,0x2cf20
1c00869e:	19678793          	addi	a5,a5,406 # 2cf20196 <__l2_shared_end+0x10f10196>
1c0086a2:	4cf12e23          	sw	a5,1244(sp)
1c0086a6:	9b1437b7          	lui	a5,0x9b143
1c0086aa:	a0278793          	addi	a5,a5,-1534 # 9b142a02 <__l2_shared_end+0x7f132a02>
1c0086ae:	4ef12023          	sw	a5,1248(sp)
1c0086b2:	ee5bc7b7          	lui	a5,0xee5bc
1c0086b6:	4df78793          	addi	a5,a5,1247 # ee5bc4df <__l2_shared_end+0xd25ac4df>
1c0086ba:	4ef12223          	sw	a5,1252(sp)
1c0086be:	02a897b7          	lui	a5,0x2a89
1c0086c2:	95578793          	addi	a5,a5,-1707 # 2a88955 <__CTOR_LIST__-0x195776af>
1c0086c6:	4ef12423          	sw	a5,1256(sp)
1c0086ca:	477677b7          	lui	a5,0x47767
1c0086ce:	89978793          	addi	a5,a5,-1895 # 47766899 <__l2_shared_end+0x2b756899>
1c0086d2:	4ef12623          	sw	a5,1260(sp)
1c0086d6:	6fab37b7          	lui	a5,0x6fab3
1c0086da:	61c78793          	addi	a5,a5,1564 # 6fab361c <__l2_shared_end+0x53aa361c>
1c0086de:	4ef12823          	sw	a5,1264(sp)
1c0086e2:	30ec27b7          	lui	a5,0x30ec2
1c0086e6:	ea378793          	addi	a5,a5,-349 # 30ec1ea3 <__l2_shared_end+0x14eb1ea3>
1c0086ea:	4ef12a23          	sw	a5,1268(sp)
1c0086ee:	a54a37b7          	lui	a5,0xa54a3
1c0086f2:	2b478793          	addi	a5,a5,692 # a54a32b4 <__l2_shared_end+0x894932b4>
1c0086f6:	4ef12c23          	sw	a5,1272(sp)
1c0086fa:	9fb247b7          	lui	a5,0x9fb24
1c0086fe:	ca078793          	addi	a5,a5,-864 # 9fb23ca0 <__l2_shared_end+0x83b13ca0>
1c008702:	4ef12e23          	sw	a5,1276(sp)
1c008706:	758e77b7          	lui	a5,0x758e7
1c00870a:	39378793          	addi	a5,a5,915 # 758e7393 <__l2_shared_end+0x598d7393>
1c00870e:	50f12023          	sw	a5,1280(sp)
1c008712:	39ebb7b7          	lui	a5,0x39ebb
1c008716:	11978793          	addi	a5,a5,281 # 39ebb119 <__l2_shared_end+0x1deab119>
1c00871a:	50f12223          	sw	a5,1284(sp)
1c00871e:	9270a7b7          	lui	a5,0x9270a
1c008722:	bb678793          	addi	a5,a5,-1098 # 92709bb6 <__l2_shared_end+0x766f9bb6>
1c008726:	50f12423          	sw	a5,1288(sp)
1c00872a:	ca0f67b7          	lui	a5,0xca0f6
1c00872e:	9a978793          	addi	a5,a5,-1623 # ca0f59a9 <__l2_shared_end+0xae0e59a9>
1c008732:	50f12623          	sw	a5,1292(sp)
1c008736:	8a9797b7          	lui	a5,0x8a979
1c00873a:	98778793          	addi	a5,a5,-1657 # 8a978987 <__l2_shared_end+0x6e968987>
1c00873e:	50f12823          	sw	a5,1296(sp)
1c008742:	f51d57b7          	lui	a5,0xf51d5
1c008746:	16178793          	addi	a5,a5,353 # f51d5161 <__l2_shared_end+0xd91c5161>
1c00874a:	50f12a23          	sw	a5,1300(sp)
1c00874e:	803887b7          	lui	a5,0x80388
1c008752:	fab78793          	addi	a5,a5,-85 # 80387fab <__l2_shared_end+0x64377fab>
1c008756:	50f12c23          	sw	a5,1304(sp)
1c00875a:	516257b7          	lui	a5,0x51625
1c00875e:	54278793          	addi	a5,a5,1346 # 51625542 <__l2_shared_end+0x35615542>
1c008762:	50f12e23          	sw	a5,1308(sp)
1c008766:	754e07b7          	lui	a5,0x754e0
1c00876a:	35178793          	addi	a5,a5,849 # 754e0351 <__l2_shared_end+0x594d0351>
1c00876e:	52f12023          	sw	a5,1312(sp)
1c008772:	f47c57b7          	lui	a5,0xf47c5
1c008776:	c2478793          	addi	a5,a5,-988 # f47c4c24 <__l2_shared_end+0xd87b4c24>
1c00877a:	52f12223          	sw	a5,1316(sp)
1c00877e:	a7e247b7          	lui	a5,0xa7e24
1c008782:	16a78793          	addi	a5,a5,362 # a7e2416a <__l2_shared_end+0x8be1416a>
1c008786:	52f12423          	sw	a5,1320(sp)
1c00878a:	c41577b7          	lui	a5,0xc4157
1c00878e:	04478793          	addi	a5,a5,68 # c4157044 <__l2_shared_end+0xa8147044>
1c008792:	52f12623          	sw	a5,1324(sp)
1c008796:	f8300793          	li	a5,-125
1c00879a:	52f10923          	sb	a5,1330(sp)
1c00879e:	07100793          	li	a5,113
1c0087a2:	52f109a3          	sb	a5,1331(sp)
1c0087a6:	b9fc77b7          	lui	a5,0xb9fc7
1c0087aa:	14278793          	addi	a5,a5,322 # b9fc7142 <__l2_shared_end+0x9dfb7142>
1c0087ae:	52f12a23          	sw	a5,1332(sp)
1c0087b2:	c2a1f7b7          	lui	a5,0xc2a1f
1c0087b6:	87f78793          	addi	a5,a5,-1921 # c2a1e87f <__l2_shared_end+0xa6a0e87f>
1c0087ba:	52f12c23          	sw	a5,1336(sp)
1c0087be:	618857b7          	lui	a5,0x61885
1c0087c2:	f5978793          	addi	a5,a5,-167 # 61884f59 <__l2_shared_end+0x45874f59>
1c0087c6:	52f12e23          	sw	a5,1340(sp)
1c0087ca:	6dc3f7b7          	lui	a5,0x6dc3f
1c0087ce:	56178793          	addi	a5,a5,1377 # 6dc3f561 <__l2_shared_end+0x51c2f561>
1c0087d2:	54f12023          	sw	a5,1344(sp)
1c0087d6:	3cc437b7          	lui	a5,0x3cc43
1c0087da:	b0278793          	addi	a5,a5,-1278 # 3cc42b02 <__l2_shared_end+0x20c32b02>
1c0087de:	54f12223          	sw	a5,1348(sp)
1c0087e2:	56de37b7          	lui	a5,0x56de3
1c0087e6:	a6978793          	addi	a5,a5,-1431 # 56de2a69 <__l2_shared_end+0x3add2a69>
1c0087ea:	54f12423          	sw	a5,1352(sp)
1c0087ee:	413347b7          	lui	a5,0x41334
1c0087f2:	b8978793          	addi	a5,a5,-1143 # 41333b89 <__l2_shared_end+0x25323b89>
1c0087f6:	54f12623          	sw	a5,1356(sp)
1c0087fa:	da0147b7          	lui	a5,0xda014
1c0087fe:	ae678793          	addi	a5,a5,-1306 # da013ae6 <__l2_shared_end+0xbe003ae6>
1c008802:	54f12823          	sw	a5,1360(sp)
1c008806:	fb5207b7          	lui	a5,0xfb520
1c00880a:	48778793          	addi	a5,a5,1159 # fb520487 <__l2_shared_end+0xdf510487>
1c00880e:	54f12a23          	sw	a5,1364(sp)
1c008812:	a4cc37b7          	lui	a5,0xa4cc3
1c008816:	97178793          	addi	a5,a5,-1679 # a4cc2971 <__l2_shared_end+0x88cb2971>
1c00881a:	54f12c23          	sw	a5,1368(sp)
1c00881e:	ab6f77b7          	lui	a5,0xab6f7
1c008822:	a2978793          	addi	a5,a5,-1495 # ab6f6a29 <__l2_shared_end+0x8f6e6a29>
1c008826:	54f12e23          	sw	a5,1372(sp)
1c00882a:	559ec7b7          	lui	a5,0x559ec
1c00882e:	c4978793          	addi	a5,a5,-951 # 559ebc49 <__l2_shared_end+0x399dbc49>
1c008832:	56f12023          	sw	a5,1376(sp)
1c008836:	b30ad7b7          	lui	a5,0xb30ad
1c00883a:	41a78793          	addi	a5,a5,1050 # b30ad41a <__l2_shared_end+0x9709d41a>
1c00883e:	56f12223          	sw	a5,1380(sp)
1c008842:	936787b7          	lui	a5,0x93678
1c008846:	c0678793          	addi	a5,a5,-1018 # 93677c06 <__l2_shared_end+0x77667c06>
1c00884a:	56f12423          	sw	a5,1384(sp)
1c00884e:	c5e3c7b7          	lui	a5,0xc5e3c
1c008852:	36278793          	addi	a5,a5,866 # c5e3c362 <__l2_shared_end+0xa9e2c362>
1c008856:	56f12623          	sw	a5,1388(sp)
1c00885a:	77fa97b7          	lui	a5,0x77fa9
1c00885e:	13178793          	addi	a5,a5,305 # 77fa9131 <__l2_shared_end+0x5bf99131>
1c008862:	56f12823          	sw	a5,1392(sp)
1c008866:	69ca57b7          	lui	a5,0x69ca5
1c00886a:	3e778793          	addi	a5,a5,999 # 69ca53e7 <__l2_shared_end+0x4dc953e7>
1c00886e:	56f12a23          	sw	a5,1396(sp)
1c008872:	d3da97b7          	lui	a5,0xd3da9
1c008876:	2c078793          	addi	a5,a5,704 # d3da92c0 <__l2_shared_end+0xb7d992c0>
1c00887a:	56f12c23          	sw	a5,1400(sp)
1c00887e:	65d637b7          	lui	a5,0x65d63
1c008882:	20078793          	addi	a5,a5,512 # 65d63200 <__l2_shared_end+0x49d53200>
1c008886:	56f12e23          	sw	a5,1404(sp)
1c00888a:	55ce37b7          	lui	a5,0x55ce3
1c00888e:	7a278793          	addi	a5,a5,1954 # 55ce37a2 <__l2_shared_end+0x39cd37a2>
1c008892:	58f12023          	sw	a5,1408(sp)
1c008896:	504007b7          	lui	a5,0x50400
1c00889a:	4f178793          	addi	a5,a5,1265 # 504004f1 <__l2_shared_end+0x343f04f1>
1c00889e:	58f12223          	sw	a5,1412(sp)
1c0088a2:	820b07b7          	lui	a5,0x820b0
1c0088a6:	76e5                	lui	a3,0xffff9
1c0088a8:	0c178793          	addi	a5,a5,193 # 820b00c1 <__l2_shared_end+0x660a00c1>
1c0088ac:	61068713          	addi	a4,a3,1552 # ffff9610 <__l2_shared_end+0xe3fe9610>
1c0088b0:	58f12423          	sw	a5,1416(sp)
1c0088b4:	3f4bc7b7          	lui	a5,0x3f4bc
1c0088b8:	52e11823          	sh	a4,1328(sp)
1c0088bc:	19178793          	addi	a5,a5,401 # 3f4bc191 <__l2_shared_end+0x234ac191>
1c0088c0:	58f12623          	sw	a5,1420(sp)
1c0088c4:	350857b7          	lui	a5,0x35085
1c0088c8:	0ca78793          	addi	a5,a5,202 # 350850ca <__l2_shared_end+0x190750ca>
1c0088cc:	58f12823          	sw	a5,1424(sp)
1c0088d0:	3dc527b7          	lui	a5,0x3dc52
1c0088d4:	b7178793          	addi	a5,a5,-1167 # 3dc51b71 <__l2_shared_end+0x21c41b71>
1c0088d8:	58f12a23          	sw	a5,1428(sp)
1c0088dc:	649977b7          	lui	a5,0x64997
1c0088e0:	5f278793          	addi	a5,a5,1522 # 649975f2 <__l2_shared_end+0x489875f2>
1c0088e4:	58f12c23          	sw	a5,1432(sp)
1c0088e8:	ac2f97b7          	lui	a5,0xac2f9
1c0088ec:	92078793          	addi	a5,a5,-1760 # ac2f8920 <__l2_shared_end+0x902e8920>
1c0088f0:	58f12e23          	sw	a5,1436(sp)
1c0088f4:	838627b7          	lui	a5,0x83862
1c0088f8:	08a78793          	addi	a5,a5,138 # 8386208a <__l2_shared_end+0x6785208a>
1c0088fc:	5af12023          	sw	a5,1440(sp)
1c008900:	540837b7          	lui	a5,0x54083
1c008904:	c4378793          	addi	a5,a5,-957 # 54082c43 <__l2_shared_end+0x38072c43>
1c008908:	5af12223          	sw	a5,1444(sp)
1c00890c:	797017b7          	lui	a5,0x79701
1c008910:	d3278793          	addi	a5,a5,-718 # 79700d32 <__l2_shared_end+0x5d6f0d32>
1c008914:	5af12423          	sw	a5,1448(sp)
1c008918:	a65bb7b7          	lui	a5,0xa65bb
1c00891c:	38578793          	addi	a5,a5,901 # a65bb385 <__l2_shared_end+0x8a5ab385>
1c008920:	5af12623          	sw	a5,1452(sp)
1c008924:	0f29a7b7          	lui	a5,0xf29a
1c008928:	0ae78793          	addi	a5,a5,174 # f29a0ae <__CTOR_LIST__-0xcd65f56>
1c00892c:	5af12823          	sw	a5,1456(sp)
1c008930:	298a17b7          	lui	a5,0x298a1
1c008934:	03378793          	addi	a5,a5,51 # 298a1033 <__l2_shared_end+0xd891033>
1c008938:	5af12a23          	sw	a5,1460(sp)
1c00893c:	c6dc17b7          	lui	a5,0xc6dc1
1c008940:	e4578793          	addi	a5,a5,-443 # c6dc0e45 <__l2_shared_end+0xaadb0e45>
1c008944:	5af12c23          	sw	a5,1464(sp)
1c008948:	0da017b7          	lui	a5,0xda01
1c00894c:	39678793          	addi	a5,a5,918 # da01396 <__CTOR_LIST__-0xe5fec6e>
1c008950:	5af12e23          	sw	a5,1468(sp)
1c008954:	339aa7b7          	lui	a5,0x339aa
1c008958:	41a78793          	addi	a5,a5,1050 # 339aa41a <__l2_shared_end+0x1799a41a>
1c00895c:	5cf12023          	sw	a5,1472(sp)
1c008960:	1e69c7b7          	lui	a5,0x1e69c
1c008964:	50478793          	addi	a5,a5,1284 # 1e69c504 <__l2_shared_end+0x268c504>
1c008968:	5cf12223          	sw	a5,1476(sp)
1c00896c:	c0c3d7b7          	lui	a5,0xc0c3d
1c008970:	6b478793          	addi	a5,a5,1716 # c0c3d6b4 <__l2_shared_end+0xa4c2d6b4>
1c008974:	5cf12423          	sw	a5,1480(sp)
1c008978:	b44a37b7          	lui	a5,0xb44a3
1c00897c:	df378793          	addi	a5,a5,-525 # b44a2df3 <__l2_shared_end+0x98492df3>
1c008980:	5cf12623          	sw	a5,1484(sp)
1c008984:	411827b7          	lui	a5,0x41182
1c008988:	17e78793          	addi	a5,a5,382 # 4118217e <__l2_shared_end+0x2517217e>
1c00898c:	5cf12823          	sw	a5,1488(sp)
1c008990:	e9a6b7b7          	lui	a5,0xe9a6b
1c008994:	56978793          	addi	a5,a5,1385 # e9a6b569 <__l2_shared_end+0xcda5b569>
1c008998:	5cf12a23          	sw	a5,1492(sp)
1c00899c:	4c4297b7          	lui	a5,0x4c429
1c0089a0:	9fa78793          	addi	a5,a5,-1542 # 4c4289fa <__l2_shared_end+0x304189fa>
1c0089a4:	5cf12c23          	sw	a5,1496(sp)
1c0089a8:	1298c7b7          	lui	a5,0x1298c
1c0089ac:	4bf78793          	addi	a5,a5,1215 # 1298c4bf <__CTOR_LIST__-0x9673b45>
1c0089b0:	5cf12e23          	sw	a5,1500(sp)
1c0089b4:	d47947b7          	lui	a5,0xd4794
1c0089b8:	43078793          	addi	a5,a5,1072 # d4794430 <__l2_shared_end+0xb8784430>
1c0089bc:	5ef12023          	sw	a5,1504(sp)
1c0089c0:	327417b7          	lui	a5,0x32741
1c0089c4:	54178793          	addi	a5,a5,1345 # 32741541 <__l2_shared_end+0x16731541>
1c0089c8:	5ef12223          	sw	a5,1508(sp)
1c0089cc:	0fa147b7          	lui	a5,0xfa14
1c0089d0:	50b78793          	addi	a5,a5,1291 # fa1450b <__CTOR_LIST__-0xc5ebaf9>
1c0089d4:	5ef12423          	sw	a5,1512(sp)
1c0089d8:	f452a7b7          	lui	a5,0xf452a
1c0089dc:	32178793          	addi	a5,a5,801 # f452a321 <__l2_shared_end+0xd851a321>
1c0089e0:	5ef12623          	sw	a5,1516(sp)
1c0089e4:	43aec7b7          	lui	a5,0x43aec
1c0089e8:	41278793          	addi	a5,a5,1042 # 43aec412 <__l2_shared_end+0x27adc412>
1c0089ec:	5ef12823          	sw	a5,1520(sp)
1c0089f0:	809aa7b7          	lui	a5,0x809aa
1c0089f4:	0795                	addi	a5,a5,5
1c0089f6:	5ef12a23          	sw	a5,1524(sp)
1c0089fa:	216e97b7          	lui	a5,0x216e9
1c0089fe:	a1d78793          	addi	a5,a5,-1507 # 216e8a1d <__l2_shared_end+0x56d8a1d>
1c008a02:	5ef12c23          	sw	a5,1528(sp)
1c008a06:	20c327b7          	lui	a5,0x20c32
1c008a0a:	31678793          	addi	a5,a5,790 # 20c32316 <__l2_shared_end+0x4c22316>
1c008a0e:	5ef12e23          	sw	a5,1532(sp)
1c008a12:	3e8947b7          	lui	a5,0x3e894
1c008a16:	d7a78793          	addi	a5,a5,-646 # 3e893d7a <__l2_shared_end+0x22883d7a>
1c008a1a:	60f12023          	sw	a5,1536(sp)
1c008a1e:	7018d7b7          	lui	a5,0x7018d
1c008a22:	c9878793          	addi	a5,a5,-872 # 7018cc98 <__l2_shared_end+0x5417cc98>
1c008a26:	60f12223          	sw	a5,1540(sp)
1c008a2a:	40f097b7          	lui	a5,0x40f09
1c008a2e:	99678793          	addi	a5,a5,-1642 # 40f08996 <__l2_shared_end+0x24ef8996>
1c008a32:	60f12423          	sw	a5,1544(sp)
1c008a36:	cc4527b7          	lui	a5,0xcc452
1c008a3a:	85678793          	addi	a5,a5,-1962 # cc451856 <__l2_shared_end+0xb0441856>
1c008a3e:	60f12623          	sw	a5,1548(sp)
1c008a42:	c3dbb637          	lui	a2,0xc3dbb
1c008a46:	4a1537b7          	lui	a5,0x4a153
1c008a4a:	ca478793          	addi	a5,a5,-860 # 4a152ca4 <__l2_shared_end+0x2e142ca4>
1c008a4e:	9a260613          	addi	a2,a2,-1630 # c3dba9a2 <__l2_shared_end+0xa7daa9a2>
1c008a52:	60f12823          	sw	a5,1552(sp)
1c008a56:	62c12023          	sw	a2,1568(sp)
1c008a5a:	1f421637          	lui	a2,0x1f421
1c008a5e:	41e60613          	addi	a2,a2,1054 # 1f42141e <__l2_shared_end+0x341141e>
1c008a62:	60c12e23          	sw	a2,1564(sp)
1c008a66:	2a74d637          	lui	a2,0x2a74d
1c008a6a:	c2260613          	addi	a2,a2,-990 # 2a74cc22 <__l2_shared_end+0xe73cc22>
1c008a6e:	62c12223          	sw	a2,1572(sp)
1c008a72:	f8f00613          	li	a2,-113
1c008a76:	62c10523          	sb	a2,1578(sp)
1c008a7a:	466d                	li	a2,27
1c008a7c:	62c105a3          	sb	a2,1579(sp)
1c008a80:	75ac4637          	lui	a2,0x75ac4
1c008a84:	d7c60613          	addi	a2,a2,-644 # 75ac3d7c <__l2_shared_end+0x59ab3d7c>
1c008a88:	62c12623          	sw	a2,1580(sp)
1c008a8c:	866c6637          	lui	a2,0x866c6
1c008a90:	9bc60613          	addi	a2,a2,-1604 # 866c59bc <__l2_shared_end+0x6a6b59bc>
1c008a94:	62c12823          	sw	a2,1584(sp)
1c008a98:	1a6de637          	lui	a2,0x1a6de
1c008a9c:	99760613          	addi	a2,a2,-1641 # 1a6dd997 <__CTOR_LIST__-0x192266d>
1c008aa0:	62c12a23          	sw	a2,1588(sp)
1c008aa4:	b6657637          	lui	a2,0xb6657
1c008aa8:	3f660613          	addi	a2,a2,1014 # b66573f6 <__l2_shared_end+0x9a6473f6>
1c008aac:	62c12c23          	sw	a2,1592(sp)
1c008ab0:	62e7c637          	lui	a2,0x62e7c
1c008ab4:	62160613          	addi	a2,a2,1569 # 62e7c621 <__l2_shared_end+0x46e6c621>
1c008ab8:	62c12e23          	sw	a2,1596(sp)
1c008abc:	994bc637          	lui	a2,0x994bc
1c008ac0:	45f60613          	addi	a2,a2,1119 # 994bc45f <__l2_shared_end+0x7d4ac45f>
1c008ac4:	64c12023          	sw	a2,1600(sp)
1c008ac8:	384f6637          	lui	a2,0x384f6
1c008acc:	8d760613          	addi	a2,a2,-1833 # 384f58d7 <__l2_shared_end+0x1c4e58d7>
1c008ad0:	64c12223          	sw	a2,1604(sp)
1c008ad4:	0c363637          	lui	a2,0xc363
1c008ad8:	8cd60613          	addi	a2,a2,-1843 # c3628cd <__CTOR_LIST__-0xfc9d737>
1c008adc:	64c12423          	sw	a2,1608(sp)
1c008ae0:	905a6637          	lui	a2,0x905a6
1c008ae4:	2c560613          	addi	a2,a2,709 # 905a62c5 <__l2_shared_end+0x745962c5>
1c008ae8:	64c12623          	sw	a2,1612(sp)
1c008aec:	ca768613          	addi	a2,a3,-857
1c008af0:	62c11423          	sh	a2,1576(sp)
1c008af4:	12af9637          	lui	a2,0x12af9
1c008af8:	65b60613          	addi	a2,a2,1627 # 12af965b <__CTOR_LIST__-0x95069a9>
1c008afc:	64c12823          	sw	a2,1616(sp)
1c008b00:	b5d51637          	lui	a2,0xb5d51
1c008b04:	e9360613          	addi	a2,a2,-365 # b5d50e93 <__l2_shared_end+0x99d40e93>
1c008b08:	64c12a23          	sw	a2,1620(sp)
1c008b0c:	fc823637          	lui	a2,0xfc823
1c008b10:	afe60613          	addi	a2,a2,-1282 # fc822afe <__l2_shared_end+0xe0812afe>
1c008b14:	64c12c23          	sw	a2,1624(sp)
1c008b18:	4bdca637          	lui	a2,0x4bdca
1c008b1c:	75a60613          	addi	a2,a2,1882 # 4bdca75a <__l2_shared_end+0x2fdba75a>
1c008b20:	64c12e23          	sw	a2,1628(sp)
1c008b24:	76e3a637          	lui	a2,0x76e3a
1c008b28:	f8260613          	addi	a2,a2,-126 # 76e39f82 <__l2_shared_end+0x5ae29f82>
1c008b2c:	66c12023          	sw	a2,1632(sp)
1c008b30:	5a3ff637          	lui	a2,0x5a3ff
1c008b34:	13560613          	addi	a2,a2,309 # 5a3ff135 <__l2_shared_end+0x3e3ef135>
1c008b38:	66c12223          	sw	a2,1636(sp)
1c008b3c:	08d3a637          	lui	a2,0x8d3a
1c008b40:	6f260613          	addi	a2,a2,1778 # 8d3a6f2 <__CTOR_LIST__-0x132c5912>
1c008b44:	66c12423          	sw	a2,1640(sp)
1c008b48:	8787b637          	lui	a2,0x8787b
1c008b4c:	d1d60613          	addi	a2,a2,-739 # 8787ad1d <__l2_shared_end+0x6b86ad1d>
1c008b50:	66c12623          	sw	a2,1644(sp)
1c008b54:	0a8a7637          	lui	a2,0xa8a7
1c008b58:	98560613          	addi	a2,a2,-1659 # a8a6985 <__CTOR_LIST__-0x1175967f>
1c008b5c:	66c12823          	sw	a2,1648(sp)
1c008b60:	4c371637          	lui	a2,0x4c371
1c008b64:	4a960613          	addi	a2,a2,1193 # 4c3714a9 <__l2_shared_end+0x303614a9>
1c008b68:	66c12a23          	sw	a2,1652(sp)
1c008b6c:	9fb84637          	lui	a2,0x9fb84
1c008b70:	34e60613          	addi	a2,a2,846 # 9fb8434e <__l2_shared_end+0x83b7434e>
1c008b74:	66c12c23          	sw	a2,1656(sp)
1c008b78:	92785637          	lui	a2,0x92785
1c008b7c:	a0960613          	addi	a2,a2,-1527 # 92784a09 <__l2_shared_end+0x76774a09>
1c008b80:	66c12e23          	sw	a2,1660(sp)
1c008b84:	389a1637          	lui	a2,0x389a1
1c008b88:	4aa60613          	addi	a2,a2,1194 # 389a14aa <__l2_shared_end+0x1c9914aa>
1c008b8c:	68c12023          	sw	a2,1664(sp)
1c008b90:	a006a637          	lui	a2,0xa006a
1c008b94:	cb460613          	addi	a2,a2,-844 # a0069cb4 <__l2_shared_end+0x84059cb4>
1c008b98:	12c907b7          	lui	a5,0x12c90
1c008b9c:	42b78793          	addi	a5,a5,1067 # 12c9042b <__CTOR_LIST__-0x936fbd9>
1c008ba0:	68c12223          	sw	a2,1668(sp)
1c008ba4:	a829e637          	lui	a2,0xa829e
1c008ba8:	60f12a23          	sw	a5,1556(sp)
1c008bac:	86860613          	addi	a2,a2,-1944 # a829d868 <__l2_shared_end+0x8c28d868>
1c008bb0:	83c4a7b7          	lui	a5,0x83c4a
1c008bb4:	dc378793          	addi	a5,a5,-573 # 83c49dc3 <__l2_shared_end+0x67c39dc3>
1c008bb8:	68c12423          	sw	a2,1672(sp)
1c008bbc:	53e75637          	lui	a2,0x53e75
1c008bc0:	60f12c23          	sw	a5,1560(sp)
1c008bc4:	9d260613          	addi	a2,a2,-1582 # 53e749d2 <__l2_shared_end+0x37e649d2>
1c008bc8:	68c12623          	sw	a2,1676(sp)
1c008bcc:	97d07637          	lui	a2,0x97d07
1c008bd0:	5a360613          	addi	a2,a2,1443 # 97d075a3 <__l2_shared_end+0x7bcf75a3>
1c008bd4:	68c12823          	sw	a2,1680(sp)
1c008bd8:	e662f637          	lui	a2,0xe662f
1c008bdc:	1a060613          	addi	a2,a2,416 # e662f1a0 <__l2_shared_end+0xca61f1a0>
1c008be0:	68c12a23          	sw	a2,1684(sp)
1c008be4:	e8dfa637          	lui	a2,0xe8dfa
1c008be8:	4c360613          	addi	a2,a2,1219 # e8dfa4c3 <__l2_shared_end+0xccdea4c3>
1c008bec:	68c12c23          	sw	a2,1688(sp)
1c008bf0:	41619637          	lui	a2,0x41619
1c008bf4:	7c760613          	addi	a2,a2,1991 # 416197c7 <__l2_shared_end+0x256097c7>
1c008bf8:	68c12e23          	sw	a2,1692(sp)
1c008bfc:	d35e6637          	lui	a2,0xd35e6
1c008c00:	0631                	addi	a2,a2,12
1c008c02:	6ac12023          	sw	a2,1696(sp)
1c008c06:	c43fa637          	lui	a2,0xc43fa
1c008c0a:	a8960613          	addi	a2,a2,-1399 # c43f9a89 <__l2_shared_end+0xa83e9a89>
1c008c0e:	6ac12223          	sw	a2,1700(sp)
1c008c12:	4fe18637          	lui	a2,0x4fe18
1c008c16:	84360613          	addi	a2,a2,-1981 # 4fe17843 <__l2_shared_end+0x33e07843>
1c008c1a:	6ac12423          	sw	a2,1704(sp)
1c008c1e:	8f9e8637          	lui	a2,0x8f9e8
1c008c22:	72860613          	addi	a2,a2,1832 # 8f9e8728 <__l2_shared_end+0x739d8728>
1c008c26:	6ac12623          	sw	a2,1708(sp)
1c008c2a:	e6778637          	lui	a2,0xe6778
1c008c2e:	0651                	addi	a2,a2,20
1c008c30:	6ac12823          	sw	a2,1712(sp)
1c008c34:	aeb24637          	lui	a2,0xaeb24
1c008c38:	bbc60613          	addi	a2,a2,-1092 # aeb23bbc <__l2_shared_end+0x92b13bbc>
1c008c3c:	6ac12a23          	sw	a2,1716(sp)
1c008c40:	498c1637          	lui	a2,0x498c1
1c008c44:	75660613          	addi	a2,a2,1878 # 498c1756 <__l2_shared_end+0x2d8b1756>
1c008c48:	6ac12c23          	sw	a2,1720(sp)
1c008c4c:	6abf1637          	lui	a2,0x6abf1
1c008c50:	11660613          	addi	a2,a2,278 # 6abf1116 <__l2_shared_end+0x4ebe1116>
1c008c54:	6ac12e23          	sw	a2,1724(sp)
1c008c58:	9c9a6637          	lui	a2,0x9c9a6
1c008c5c:	faf60613          	addi	a2,a2,-81 # 9c9a5faf <__l2_shared_end+0x80995faf>
1c008c60:	6cc12023          	sw	a2,1728(sp)
1c008c64:	9265b637          	lui	a2,0x9265b
1c008c68:	5b960613          	addi	a2,a2,1465 # 9265b5b9 <__l2_shared_end+0x7664b5b9>
1c008c6c:	6cc12223          	sw	a2,1732(sp)
1c008c70:	40790637          	lui	a2,0x40790
1c008c74:	02360613          	addi	a2,a2,35 # 40790023 <__l2_shared_end+0x24780023>
1c008c78:	6cc12423          	sw	a2,1736(sp)
1c008c7c:	a2f8d637          	lui	a2,0xa2f8d
1c008c80:	6bc60613          	addi	a2,a2,1724 # a2f8d6bc <__l2_shared_end+0x86f7d6bc>
1c008c84:	6cc12623          	sw	a2,1740(sp)
1c008c88:	60a58637          	lui	a2,0x60a58
1c008c8c:	03260613          	addi	a2,a2,50 # 60a58032 <__l2_shared_end+0x44a48032>
1c008c90:	6cc12823          	sw	a2,1744(sp)
1c008c94:	850e3637          	lui	a2,0x850e3
1c008c98:	31560613          	addi	a2,a2,789 # 850e3315 <__l2_shared_end+0x690d3315>
1c008c9c:	6cc12a23          	sw	a2,1748(sp)
1c008ca0:	87952637          	lui	a2,0x87952
1c008ca4:	57760613          	addi	a2,a2,1399 # 87952577 <__l2_shared_end+0x6b942577>
1c008ca8:	6cc12c23          	sw	a2,1752(sp)
1c008cac:	f4062637          	lui	a2,0xf4062
1c008cb0:	6b160613          	addi	a2,a2,1713 # f40626b1 <__l2_shared_end+0xd80526b1>
1c008cb4:	6cc12e23          	sw	a2,1756(sp)
1c008cb8:	13ea3637          	lui	a2,0x13ea3
1c008cbc:	7c960613          	addi	a2,a2,1993 # 13ea37c9 <__CTOR_LIST__-0x815c83b>
1c008cc0:	6ec12023          	sw	a2,1760(sp)
1c008cc4:	bbb37637          	lui	a2,0xbbb37
1c008cc8:	c6060613          	addi	a2,a2,-928 # bbb36c60 <__l2_shared_end+0x9fb26c60>
1c008ccc:	6ec12223          	sw	a2,1764(sp)
1c008cd0:	ad666637          	lui	a2,0xad666
1c008cd4:	0611                	addi	a2,a2,4
1c008cd6:	6ec12423          	sw	a2,1768(sp)
1c008cda:	e2614637          	lui	a2,0xe2614
1c008cde:	22960613          	addi	a2,a2,553 # e2614229 <__l2_shared_end+0xc6604229>
1c008ce2:	6ec12623          	sw	a2,1772(sp)
1c008ce6:	bc222637          	lui	a2,0xbc222
1c008cea:	0b260613          	addi	a2,a2,178 # bc2220b2 <__l2_shared_end+0xa02120b2>
1c008cee:	6ec12823          	sw	a2,1776(sp)
1c008cf2:	a5784637          	lui	a2,0xa5784
1c008cf6:	6c760613          	addi	a2,a2,1735 # a57846c7 <__l2_shared_end+0x897746c7>
1c008cfa:	6ec12a23          	sw	a2,1780(sp)
1c008cfe:	d8700637          	lui	a2,0xd8700
1c008d02:	55260613          	addi	a2,a2,1362 # d8700552 <__l2_shared_end+0xbc6f0552>
1c008d06:	6ec12c23          	sw	a2,1784(sp)
1c008d0a:	42eb5637          	lui	a2,0x42eb5
1c008d0e:	c8e60613          	addi	a2,a2,-882 # 42eb4c8e <__l2_shared_end+0x26ea4c8e>
1c008d12:	6ec12e23          	sw	a2,1788(sp)
1c008d16:	e7312637          	lui	a2,0xe7312
1c008d1a:	66960613          	addi	a2,a2,1641 # e7312669 <__l2_shared_end+0xcb302669>
1c008d1e:	70c12023          	sw	a2,1792(sp)
1c008d22:	7f34d637          	lui	a2,0x7f34d
1c008d26:	52f60613          	addi	a2,a2,1327 # 7f34d52f <__l2_shared_end+0x6333d52f>
1c008d2a:	70c12423          	sw	a2,1800(sp)
1c008d2e:	83593637          	lui	a2,0x83593
1c008d32:	4b1c7537          	lui	a0,0x4b1c7
1c008d36:	80360613          	addi	a2,a2,-2045 # 83592803 <__l2_shared_end+0x67582803>
1c008d3a:	1e350e13          	addi	t3,a0,483 # 4b1c71e3 <__l2_shared_end+0x2f1b71e3>
1c008d3e:	70c12623          	sw	a2,1804(sp)
1c008d42:	653cd637          	lui	a2,0x653cd
1c008d46:	71c12223          	sw	t3,1796(sp)
1c008d4a:	b4060613          	addi	a2,a2,-1216 # 653ccb40 <__l2_shared_end+0x493bcb40>
1c008d4e:	70c12823          	sw	a2,1808(sp)
1c008d52:	c05af637          	lui	a2,0xc05af
1c008d56:	5c860613          	addi	a2,a2,1480 # c05af5c8 <__l2_shared_end+0xa459f5c8>
1c008d5a:	70c12a23          	sw	a2,1812(sp)
1c008d5e:	10831637          	lui	a2,0x10831
1c008d62:	62760613          	addi	a2,a2,1575 # 10831627 <__CTOR_LIST__-0xb7ce9dd>
1c008d66:	70c12c23          	sw	a2,1816(sp)
1c008d6a:	b96ed637          	lui	a2,0xb96ed
1c008d6e:	b9460613          	addi	a2,a2,-1132 # b96ecb94 <__l2_shared_end+0x9d6dcb94>
1c008d72:	70c12e23          	sw	a2,1820(sp)
1c008d76:	05b00613          	li	a2,91
1c008d7a:	72c10123          	sb	a2,1826(sp)
1c008d7e:	465d                	li	a2,23
1c008d80:	72c101a3          	sb	a2,1827(sp)
1c008d84:	0365a637          	lui	a2,0x365a
1c008d88:	c3d60613          	addi	a2,a2,-963 # 3659c3d <__CTOR_LIST__-0x189a63c7>
1c008d8c:	72c12223          	sw	a2,1828(sp)
1c008d90:	13f5b637          	lui	a2,0x13f5b
1c008d94:	a2960613          	addi	a2,a2,-1495 # 13f5aa29 <__CTOR_LIST__-0x80a55db>
1c008d98:	72c12423          	sw	a2,1832(sp)
1c008d9c:	bb333637          	lui	a2,0xbb333
1c008da0:	66360613          	addi	a2,a2,1635 # bb333663 <__l2_shared_end+0x9f323663>
1c008da4:	72c12623          	sw	a2,1836(sp)
1c008da8:	8e85e637          	lui	a2,0x8e85e
1c008dac:	62c60613          	addi	a2,a2,1580 # 8e85e62c <__l2_shared_end+0x7284e62c>
1c008db0:	72c12823          	sw	a2,1840(sp)
1c008db4:	c4ab4637          	lui	a2,0xc4ab4
1c008db8:	77460613          	addi	a2,a2,1908 # c4ab4774 <__l2_shared_end+0xa8aa4774>
1c008dbc:	72c12a23          	sw	a2,1844(sp)
1c008dc0:	6db07637          	lui	a2,0x6db07
1c008dc4:	f1b60613          	addi	a2,a2,-229 # 6db06f1b <__l2_shared_end+0x51af6f1b>
1c008dc8:	72c12c23          	sw	a2,1848(sp)
1c008dcc:	72258637          	lui	a2,0x72258
1c008dd0:	8a860613          	addi	a2,a2,-1880 # 722578a8 <__l2_shared_end+0x562478a8>
1c008dd4:	72c12e23          	sw	a2,1852(sp)
1c008dd8:	96b03637          	lui	a2,0x96b03
1c008ddc:	2c360613          	addi	a2,a2,707 # 96b032c3 <__l2_shared_end+0x7aaf32c3>
1c008de0:	74c12023          	sw	a2,1856(sp)
1c008de4:	26693637          	lui	a2,0x26693
1c008de8:	66060613          	addi	a2,a2,1632 # 26693660 <__l2_shared_end+0xa683660>
1c008dec:	74c12223          	sw	a2,1860(sp)
1c008df0:	d89e5637          	lui	a2,0xd89e5
1c008df4:	2bf60613          	addi	a2,a2,703 # d89e52bf <__l2_shared_end+0xbc9d52bf>
1c008df8:	74c12423          	sw	a2,1864(sp)
1c008dfc:	4362b637          	lui	a2,0x4362b
1c008e00:	aca60613          	addi	a2,a2,-1334 # 4362aaca <__l2_shared_end+0x2761aaca>
1c008e04:	74c12623          	sw	a2,1868(sp)
1c008e08:	2b15e637          	lui	a2,0x2b15e
1c008e0c:	bcc60613          	addi	a2,a2,-1076 # 2b15dbcc <__l2_shared_end+0xf14dbcc>
1c008e10:	74c12823          	sw	a2,1872(sp)
1c008e14:	476ec637          	lui	a2,0x476ec
1c008e18:	a3660613          	addi	a2,a2,-1482 # 476eba36 <__l2_shared_end+0x2b6dba36>
1c008e1c:	74c12a23          	sw	a2,1876(sp)
1c008e20:	5c141637          	lui	a2,0x5c141
1c008e24:	4c760613          	addi	a2,a2,1223 # 5c1414c7 <__l2_shared_end+0x401314c7>
1c008e28:	74c12c23          	sw	a2,1880(sp)
1c008e2c:	b6b3f637          	lui	a2,0xb6b3f
1c008e30:	58660613          	addi	a2,a2,1414 # b6b3f586 <__l2_shared_end+0x9ab2f586>
1c008e34:	74c12e23          	sw	a2,1884(sp)
1c008e38:	f14ef637          	lui	a2,0xf14ef
1c008e3c:	81d60613          	addi	a2,a2,-2019 # f14ee81d <__l2_shared_end+0xd54de81d>
1c008e40:	76c12023          	sw	a2,1888(sp)
1c008e44:	fa031637          	lui	a2,0xfa031
1c008e48:	d4760613          	addi	a2,a2,-697 # fa030d47 <__l2_shared_end+0xde020d47>
1c008e4c:	76c12223          	sw	a2,1892(sp)
1c008e50:	51e33637          	lui	a2,0x51e33
1c008e54:	50160613          	addi	a2,a2,1281 # 51e33501 <__l2_shared_end+0x35e23501>
1c008e58:	76c12423          	sw	a2,1896(sp)
1c008e5c:	b3200637          	lui	a2,0xb3200
1c008e60:	a9460613          	addi	a2,a2,-1388 # b31ffa94 <__l2_shared_end+0x971efa94>
1c008e64:	76c12623          	sw	a2,1900(sp)
1c008e68:	a50f8637          	lui	a2,0xa50f8
1c008e6c:	6bc60613          	addi	a2,a2,1724 # a50f86bc <__l2_shared_end+0x890e86bc>
1c008e70:	76c12823          	sw	a2,1904(sp)
1c008e74:	9a29d637          	lui	a2,0x9a29d
1c008e78:	10060613          	addi	a2,a2,256 # 9a29d100 <__l2_shared_end+0x7e28d100>
1c008e7c:	76c12a23          	sw	a2,1908(sp)
1c008e80:	56ce9637          	lui	a2,0x56ce9
1c008e84:	8ee60613          	addi	a2,a2,-1810 # 56ce88ee <__l2_shared_end+0x3acd88ee>
1c008e88:	76c12c23          	sw	a2,1912(sp)
1c008e8c:	c1764637          	lui	a2,0xc1764
1c008e90:	30560613          	addi	a2,a2,773 # c1764305 <__l2_shared_end+0xa5754305>
1c008e94:	76c12e23          	sw	a2,1916(sp)
1c008e98:	3d55a637          	lui	a2,0x3d55a
1c008e9c:	c1960613          	addi	a2,a2,-999 # 3d559c19 <__l2_shared_end+0x21549c19>
1c008ea0:	78c12023          	sw	a2,1920(sp)
1c008ea4:	6f8d1637          	lui	a2,0x6f8d1
1c008ea8:	ad960613          	addi	a2,a2,-1319 # 6f8d0ad9 <__l2_shared_end+0x538c0ad9>
1c008eac:	78c12223          	sw	a2,1924(sp)
1c008eb0:	c863c637          	lui	a2,0xc863c
1c008eb4:	6785                	lui	a5,0x1
1c008eb6:	79c60613          	addi	a2,a2,1948 # c863c79c <__l2_shared_end+0xac62c79c>
1c008eba:	70f78313          	addi	t1,a5,1807 # 170f <__CTOR_LIST__-0x1bffe8f5>
1c008ebe:	78c12423          	sw	a2,1928(sp)
1c008ec2:	6dc6d637          	lui	a2,0x6dc6d
1c008ec6:	72611023          	sh	t1,1824(sp)
1c008eca:	0645                	addi	a2,a2,17
1c008ecc:	78c12623          	sw	a2,1932(sp)
1c008ed0:	ab520637          	lui	a2,0xab520
1c008ed4:	8a660613          	addi	a2,a2,-1882 # ab51f8a6 <__l2_shared_end+0x8f50f8a6>
1c008ed8:	78c12823          	sw	a2,1936(sp)
1c008edc:	35660637          	lui	a2,0x35660
1c008ee0:	5f160613          	addi	a2,a2,1521 # 356605f1 <__l2_shared_end+0x196505f1>
1c008ee4:	78c12a23          	sw	a2,1940(sp)
1c008ee8:	aa685637          	lui	a2,0xaa685
1c008eec:	aa360613          	addi	a2,a2,-1373 # aa684aa3 <__l2_shared_end+0x8e674aa3>
1c008ef0:	78c12c23          	sw	a2,1944(sp)
1c008ef4:	8f861637          	lui	a2,0x8f861
1c008ef8:	57860613          	addi	a2,a2,1400 # 8f861578 <__l2_shared_end+0x73851578>
1c008efc:	78c12e23          	sw	a2,1948(sp)
1c008f00:	5c3a4637          	lui	a2,0x5c3a4
1c008f04:	a1560613          	addi	a2,a2,-1515 # 5c3a3a15 <__l2_shared_end+0x40393a15>
1c008f08:	7ac12023          	sw	a2,1952(sp)
1c008f0c:	b1c90637          	lui	a2,0xb1c90
1c008f10:	c7760613          	addi	a2,a2,-905 # b1c8fc77 <__l2_shared_end+0x95c7fc77>
1c008f14:	7ac12223          	sw	a2,1956(sp)
1c008f18:	fb072637          	lui	a2,0xfb072
1c008f1c:	8eb60613          	addi	a2,a2,-1813 # fb0718eb <__l2_shared_end+0xdf0618eb>
1c008f20:	7ac12423          	sw	a2,1960(sp)
1c008f24:	b46f3637          	lui	a2,0xb46f3
1c008f28:	af660613          	addi	a2,a2,-1290 # b46f2af6 <__l2_shared_end+0x986e2af6>
1c008f2c:	7ac12623          	sw	a2,1964(sp)
1c008f30:	00573637          	lui	a2,0x573
1c008f34:	53b60613          	addi	a2,a2,1339 # 57353b <__CTOR_LIST__-0x1ba8cac9>
1c008f38:	7ac12823          	sw	a2,1968(sp)
1c008f3c:	94308637          	lui	a2,0x94308
1c008f40:	2e760613          	addi	a2,a2,743 # 943082e7 <__l2_shared_end+0x782f82e7>
1c008f44:	7ac12a23          	sw	a2,1972(sp)
1c008f48:	e1a13637          	lui	a2,0xe1a13
1c008f4c:	b3a60613          	addi	a2,a2,-1222 # e1a12b3a <__l2_shared_end+0xc5a02b3a>
1c008f50:	7ac12c23          	sw	a2,1976(sp)
1c008f54:	45132637          	lui	a2,0x45132
1c008f58:	81b60613          	addi	a2,a2,-2021 # 4513181b <__l2_shared_end+0x2912181b>
1c008f5c:	7ac12e23          	sw	a2,1980(sp)
1c008f60:	464d2637          	lui	a2,0x464d2
1c008f64:	bb160613          	addi	a2,a2,-1103 # 464d1bb1 <__l2_shared_end+0x2a4c1bb1>
1c008f68:	7cc12023          	sw	a2,1984(sp)
1c008f6c:	357b7637          	lui	a2,0x357b7
1c008f70:	e2660613          	addi	a2,a2,-474 # 357b6e26 <__l2_shared_end+0x197a6e26>
1c008f74:	7cc12223          	sw	a2,1988(sp)
1c008f78:	504a0637          	lui	a2,0x504a0
1c008f7c:	79f60613          	addi	a2,a2,1951 # 504a079f <__l2_shared_end+0x3449079f>
1c008f80:	7cc12423          	sw	a2,1992(sp)
1c008f84:	d7579637          	lui	a2,0xd7579
1c008f88:	80c60613          	addi	a2,a2,-2036 # d757880c <__l2_shared_end+0xbb56880c>
1c008f8c:	7cc12623          	sw	a2,1996(sp)
1c008f90:	640fa637          	lui	a2,0x640fa
1c008f94:	69b60613          	addi	a2,a2,1691 # 640fa69b <__l2_shared_end+0x480ea69b>
1c008f98:	7cc12823          	sw	a2,2000(sp)
1c008f9c:	2c663637          	lui	a2,0x2c663
1c008fa0:	d2660613          	addi	a2,a2,-730 # 2c662d26 <__l2_shared_end+0x10652d26>
1c008fa4:	7cc12a23          	sw	a2,2004(sp)
1c008fa8:	8984a637          	lui	a2,0x8984a
1c008fac:	ccd60613          	addi	a2,a2,-819 # 89849ccd <__l2_shared_end+0x6d839ccd>
1c008fb0:	7cc12c23          	sw	a2,2008(sp)
1c008fb4:	f69dc637          	lui	a2,0xf69dc
1c008fb8:	1a460613          	addi	a2,a2,420 # f69dc1a4 <__l2_shared_end+0xda9cc1a4>
1c008fbc:	7cc12e23          	sw	a2,2012(sp)
1c008fc0:	19db3637          	lui	a2,0x19db3
1c008fc4:	77460613          	addi	a2,a2,1908 # 19db3774 <__CTOR_LIST__-0x224c890>
1c008fc8:	7ec12023          	sw	a2,2016(sp)
1c008fcc:	76b99637          	lui	a2,0x76b99
1c008fd0:	53f60613          	addi	a2,a2,1343 # 76b9953f <__l2_shared_end+0x5ab8953f>
1c008fd4:	7ec12223          	sw	a2,2020(sp)
1c008fd8:	15d98637          	lui	a2,0x15d98
1c008fdc:	15160613          	addi	a2,a2,337 # 15d98151 <__CTOR_LIST__-0x6267eb3>
1c008fe0:	7ec12423          	sw	a2,2024(sp)
1c008fe4:	16b16637          	lui	a2,0x16b16
1c008fe8:	22260613          	addi	a2,a2,546 # 16b16222 <__CTOR_LIST__-0x54e9de2>
1c008fec:	7ec12623          	sw	a2,2028(sp)
1c008ff0:	53be9637          	lui	a2,0x53be9
1c008ff4:	76f60613          	addi	a2,a2,1903 # 53be976f <__l2_shared_end+0x37bd976f>
1c008ff8:	7ec12823          	sw	a2,2032(sp)
1c008ffc:	1c008637          	lui	a2,0x1c008
1c009000:	f4960613          	addi	a2,a2,-183 # 1c007f49 <__l2_priv0_end+0x1cc5>
1c009004:	7ec12a23          	sw	a2,2036(sp)
1c009008:	0279c637          	lui	a2,0x279c
1c00900c:	eb160613          	addi	a2,a2,-335 # 279beb1 <__CTOR_LIST__-0x19864153>
1c009010:	7ec12c23          	sw	a2,2040(sp)
1c009014:	89227637          	lui	a2,0x89227
1c009018:	6405                	lui	s0,0x1
1c00901a:	a4d60613          	addi	a2,a2,-1459 # 89226a4d <__l2_shared_end+0x6d216a4d>
1c00901e:	7ec12e23          	sw	a2,2044(sp)
1c009022:	80040493          	addi	s1,s0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c009026:	e104c637          	lui	a2,0xe104c
1c00902a:	7bc60613          	addi	a2,a2,1980 # e104c7bc <__l2_shared_end+0xc503c7bc>
1c00902e:	948a                	add	s1,s1,sp
1c009030:	c090                	sw	a2,0(s1)
1c009032:	80440493          	addi	s1,s0,-2044
1c009036:	0121e637          	lui	a2,0x121e
1c00903a:	8b160613          	addi	a2,a2,-1871 # 121d8b1 <__CTOR_LIST__-0x1ade2753>
1c00903e:	948a                	add	s1,s1,sp
1c009040:	c090                	sw	a2,0(s1)
1c009042:	80840493          	addi	s1,s0,-2040
1c009046:	cca36637          	lui	a2,0xcca36
1c00904a:	65360613          	addi	a2,a2,1619 # cca36653 <__l2_shared_end+0xb0a26653>
1c00904e:	948a                	add	s1,s1,sp
1c009050:	c090                	sw	a2,0(s1)
1c009052:	80c40493          	addi	s1,s0,-2036
1c009056:	6b4e5637          	lui	a2,0x6b4e5
1c00905a:	88a60613          	addi	a2,a2,-1910 # 6b4e488a <__l2_shared_end+0x4f4d488a>
1c00905e:	948a                	add	s1,s1,sp
1c009060:	c090                	sw	a2,0(s1)
1c009062:	81040493          	addi	s1,s0,-2032
1c009066:	b8f1e637          	lui	a2,0xb8f1e
1c00906a:	1c260613          	addi	a2,a2,450 # b8f1e1c2 <__l2_shared_end+0x9cf0e1c2>
1c00906e:	948a                	add	s1,s1,sp
1c009070:	c090                	sw	a2,0(s1)
1c009072:	84a2                	mv	s1,s0
1c009074:	2393f637          	lui	a2,0x2393f
1c009078:	81440413          	addi	s0,s0,-2028
1c00907c:	18960613          	addi	a2,a2,393 # 2393f189 <__l2_shared_end+0x792f189>
1c009080:	940a                	add	s0,s0,sp
1c009082:	c010                	sw	a2,0(s0)
1c009084:	81848613          	addi	a2,s1,-2024
1c009088:	0e378893          	addi	a7,a5,227
1c00908c:	960a                	add	a2,a2,sp
1c00908e:	81a48413          	addi	s0,s1,-2022
1c009092:	01161023          	sh	a7,0(a2)
1c009096:	940a                	add	s0,s0,sp
1c009098:	4669                	li	a2,26
1c00909a:	00c40023          	sb	a2,0(s0)
1c00909e:	81b48413          	addi	s0,s1,-2021
1c0090a2:	fa000613          	li	a2,-96
1c0090a6:	940a                	add	s0,s0,sp
1c0090a8:	00c40023          	sb	a2,0(s0)
1c0090ac:	81c48413          	addi	s0,s1,-2020
1c0090b0:	62eae637          	lui	a2,0x62eae
1c0090b4:	99a60613          	addi	a2,a2,-1638 # 62ead99a <__l2_shared_end+0x46e9d99a>
1c0090b8:	940a                	add	s0,s0,sp
1c0090ba:	c010                	sw	a2,0(s0)
1c0090bc:	82048413          	addi	s0,s1,-2016
1c0090c0:	03054637          	lui	a2,0x3054
1c0090c4:	0ba60613          	addi	a2,a2,186 # 30540ba <__CTOR_LIST__-0x18fabf4a>
1c0090c8:	940a                	add	s0,s0,sp
1c0090ca:	c010                	sw	a2,0(s0)
1c0090cc:	82448413          	addi	s0,s1,-2012
1c0090d0:	99b5c637          	lui	a2,0x99b5c
1c0090d4:	f9b60613          	addi	a2,a2,-101 # 99b5bf9b <__l2_shared_end+0x7db4bf9b>
1c0090d8:	940a                	add	s0,s0,sp
1c0090da:	c010                	sw	a2,0(s0)
1c0090dc:	82848413          	addi	s0,s1,-2008
1c0090e0:	3ff95637          	lui	a2,0x3ff95
1c0090e4:	58060613          	addi	a2,a2,1408 # 3ff95580 <__l2_shared_end+0x23f85580>
1c0090e8:	940a                	add	s0,s0,sp
1c0090ea:	c010                	sw	a2,0(s0)
1c0090ec:	82c48413          	addi	s0,s1,-2004
1c0090f0:	44b17637          	lui	a2,0x44b17
1c0090f4:	7bf60613          	addi	a2,a2,1983 # 44b177bf <__l2_shared_end+0x28b077bf>
1c0090f8:	940a                	add	s0,s0,sp
1c0090fa:	c010                	sw	a2,0(s0)
1c0090fc:	83048413          	addi	s0,s1,-2000
1c009100:	596d1637          	lui	a2,0x596d1
1c009104:	13360613          	addi	a2,a2,307 # 596d1133 <__l2_shared_end+0x3d6c1133>
1c009108:	940a                	add	s0,s0,sp
1c00910a:	c010                	sw	a2,0(s0)
1c00910c:	83448413          	addi	s0,s1,-1996
1c009110:	54264637          	lui	a2,0x54264
1c009114:	25860613          	addi	a2,a2,600 # 54264258 <__l2_shared_end+0x38254258>
1c009118:	940a                	add	s0,s0,sp
1c00911a:	c010                	sw	a2,0(s0)
1c00911c:	83848413          	addi	s0,s1,-1992
1c009120:	2711e637          	lui	a2,0x2711e
1c009124:	ada60613          	addi	a2,a2,-1318 # 2711dada <__l2_shared_end+0xb10dada>
1c009128:	940a                	add	s0,s0,sp
1c00912a:	c010                	sw	a2,0(s0)
1c00912c:	83c48413          	addi	s0,s1,-1988
1c009130:	b7024637          	lui	a2,0xb7024
1c009134:	f2160613          	addi	a2,a2,-223 # b7023f21 <__l2_shared_end+0x9b013f21>
1c009138:	940a                	add	s0,s0,sp
1c00913a:	c010                	sw	a2,0(s0)
1c00913c:	84048413          	addi	s0,s1,-1984
1c009140:	a0a51637          	lui	a2,0xa0a51
1c009144:	78760613          	addi	a2,a2,1927 # a0a51787 <__l2_shared_end+0x84a41787>
1c009148:	940a                	add	s0,s0,sp
1c00914a:	c010                	sw	a2,0(s0)
1c00914c:	84448413          	addi	s0,s1,-1980
1c009150:	d5714637          	lui	a2,0xd5714
1c009154:	24560613          	addi	a2,a2,581 # d5714245 <__l2_shared_end+0xb9704245>
1c009158:	940a                	add	s0,s0,sp
1c00915a:	c010                	sw	a2,0(s0)
1c00915c:	84848413          	addi	s0,s1,-1976
1c009160:	1725c637          	lui	a2,0x1725c
1c009164:	0b060613          	addi	a2,a2,176 # 1725c0b0 <__CTOR_LIST__-0x4da3f54>
1c009168:	940a                	add	s0,s0,sp
1c00916a:	c010                	sw	a2,0(s0)
1c00916c:	84c48413          	addi	s0,s1,-1972
1c009170:	3c7ac637          	lui	a2,0x3c7ac
1c009174:	2a660613          	addi	a2,a2,678 # 3c7ac2a6 <__l2_shared_end+0x2079c2a6>
1c009178:	940a                	add	s0,s0,sp
1c00917a:	c010                	sw	a2,0(s0)
1c00917c:	85048413          	addi	s0,s1,-1968
1c009180:	1d101637          	lui	a2,0x1d101
1c009184:	03660613          	addi	a2,a2,54 # 1d101036 <__l2_shared_end+0x10f1036>
1c009188:	940a                	add	s0,s0,sp
1c00918a:	c010                	sw	a2,0(s0)
1c00918c:	85448413          	addi	s0,s1,-1964
1c009190:	a2094637          	lui	a2,0xa2094
1c009194:	c7560613          	addi	a2,a2,-907 # a2093c75 <__l2_shared_end+0x86083c75>
1c009198:	940a                	add	s0,s0,sp
1c00919a:	c010                	sw	a2,0(s0)
1c00919c:	85848413          	addi	s0,s1,-1960
1c0091a0:	54777637          	lui	a2,0x54777
1c0091a4:	15560613          	addi	a2,a2,341 # 54777155 <__l2_shared_end+0x38767155>
1c0091a8:	940a                	add	s0,s0,sp
1c0091aa:	c010                	sw	a2,0(s0)
1c0091ac:	85c48413          	addi	s0,s1,-1956
1c0091b0:	b213e637          	lui	a2,0xb213e
1c0091b4:	c7760613          	addi	a2,a2,-905 # b213dc77 <__l2_shared_end+0x9612dc77>
1c0091b8:	940a                	add	s0,s0,sp
1c0091ba:	c010                	sw	a2,0(s0)
1c0091bc:	86048413          	addi	s0,s1,-1952
1c0091c0:	49db0637          	lui	a2,0x49db0
1c0091c4:	4e460613          	addi	a2,a2,1252 # 49db04e4 <__l2_shared_end+0x2dda04e4>
1c0091c8:	940a                	add	s0,s0,sp
1c0091ca:	c010                	sw	a2,0(s0)
1c0091cc:	86448413          	addi	s0,s1,-1948
1c0091d0:	35a9c637          	lui	a2,0x35a9c
1c0091d4:	96560613          	addi	a2,a2,-1691 # 35a9b965 <__l2_shared_end+0x19a8b965>
1c0091d8:	940a                	add	s0,s0,sp
1c0091da:	c010                	sw	a2,0(s0)
1c0091dc:	86848413          	addi	s0,s1,-1944
1c0091e0:	3ac73637          	lui	a2,0x3ac73
1c0091e4:	060d                	addi	a2,a2,3
1c0091e6:	940a                	add	s0,s0,sp
1c0091e8:	c010                	sw	a2,0(s0)
1c0091ea:	86c48413          	addi	s0,s1,-1940
1c0091ee:	d3423637          	lui	a2,0xd3423
1c0091f2:	68a60613          	addi	a2,a2,1674 # d342368a <__l2_shared_end+0xb741368a>
1c0091f6:	940a                	add	s0,s0,sp
1c0091f8:	c010                	sw	a2,0(s0)
1c0091fa:	87048413          	addi	s0,s1,-1936
1c0091fe:	38a30637          	lui	a2,0x38a30
1c009202:	89a60613          	addi	a2,a2,-1894 # 38a2f89a <__l2_shared_end+0x1ca1f89a>
1c009206:	940a                	add	s0,s0,sp
1c009208:	c010                	sw	a2,0(s0)
1c00920a:	87448413          	addi	s0,s1,-1932
1c00920e:	c685b637          	lui	a2,0xc685b
1c009212:	b3960613          	addi	a2,a2,-1223 # c685ab39 <__l2_shared_end+0xaa84ab39>
1c009216:	940a                	add	s0,s0,sp
1c009218:	c010                	sw	a2,0(s0)
1c00921a:	87848413          	addi	s0,s1,-1928
1c00921e:	f2126637          	lui	a2,0xf2126
1c009222:	b3560613          	addi	a2,a2,-1227 # f2125b35 <__l2_shared_end+0xd6115b35>
1c009226:	940a                	add	s0,s0,sp
1c009228:	c010                	sw	a2,0(s0)
1c00922a:	87c48413          	addi	s0,s1,-1924
1c00922e:	814a0637          	lui	a2,0x814a0
1c009232:	87960613          	addi	a2,a2,-1927 # 8149f879 <__l2_shared_end+0x6548f879>
1c009236:	940a                	add	s0,s0,sp
1c009238:	c010                	sw	a2,0(s0)
1c00923a:	88048413          	addi	s0,s1,-1920
1c00923e:	540d3637          	lui	a2,0x540d3
1c009242:	83c60613          	addi	a2,a2,-1988 # 540d283c <__l2_shared_end+0x380c283c>
1c009246:	940a                	add	s0,s0,sp
1c009248:	c010                	sw	a2,0(s0)
1c00924a:	88448413          	addi	s0,s1,-1916
1c00924e:	993e9637          	lui	a2,0x993e9
1c009252:	1c560613          	addi	a2,a2,453 # 993e91c5 <__l2_shared_end+0x7d3d91c5>
1c009256:	940a                	add	s0,s0,sp
1c009258:	c010                	sw	a2,0(s0)
1c00925a:	88848413          	addi	s0,s1,-1912
1c00925e:	0a6a9637          	lui	a2,0xa6a9
1c009262:	4b660613          	addi	a2,a2,1206 # a6a94b6 <__CTOR_LIST__-0x11956b4e>
1c009266:	940a                	add	s0,s0,sp
1c009268:	c010                	sw	a2,0(s0)
1c00926a:	88c48413          	addi	s0,s1,-1908
1c00926e:	8c2c0637          	lui	a2,0x8c2c0
1c009272:	1af60613          	addi	a2,a2,431 # 8c2c01af <__l2_shared_end+0x702b01af>
1c009276:	940a                	add	s0,s0,sp
1c009278:	c010                	sw	a2,0(s0)
1c00927a:	89048413          	addi	s0,s1,-1904
1c00927e:	96530637          	lui	a2,0x96530
1c009282:	2ab60613          	addi	a2,a2,683 # 965302ab <__l2_shared_end+0x7a5202ab>
1c009286:	940a                	add	s0,s0,sp
1c009288:	c010                	sw	a2,0(s0)
1c00928a:	89448413          	addi	s0,s1,-1900
1c00928e:	02f05637          	lui	a2,0x2f05
1c009292:	5b260613          	addi	a2,a2,1458 # 2f055b2 <__CTOR_LIST__-0x190faa52>
1c009296:	940a                	add	s0,s0,sp
1c009298:	c010                	sw	a2,0(s0)
1c00929a:	89848413          	addi	s0,s1,-1896
1c00929e:	61c73637          	lui	a2,0x61c73
1c0092a2:	7d860613          	addi	a2,a2,2008 # 61c737d8 <__l2_shared_end+0x45c637d8>
1c0092a6:	940a                	add	s0,s0,sp
1c0092a8:	c010                	sw	a2,0(s0)
1c0092aa:	89c48413          	addi	s0,s1,-1892
1c0092ae:	eb4a3637          	lui	a2,0xeb4a3
1c0092b2:	ad460613          	addi	a2,a2,-1324 # eb4a2ad4 <__l2_shared_end+0xcf492ad4>
1c0092b6:	940a                	add	s0,s0,sp
1c0092b8:	c010                	sw	a2,0(s0)
1c0092ba:	8a048413          	addi	s0,s1,-1888
1c0092be:	56f4c637          	lui	a2,0x56f4c
1c0092c2:	53860613          	addi	a2,a2,1336 # 56f4c538 <__l2_shared_end+0x3af3c538>
1c0092c6:	940a                	add	s0,s0,sp
1c0092c8:	c010                	sw	a2,0(s0)
1c0092ca:	8a448413          	addi	s0,s1,-1884
1c0092ce:	169ef637          	lui	a2,0x169ef
1c0092d2:	7aa60613          	addi	a2,a2,1962 # 169ef7aa <__CTOR_LIST__-0x561085a>
1c0092d6:	940a                	add	s0,s0,sp
1c0092d8:	c010                	sw	a2,0(s0)
1c0092da:	8a848413          	addi	s0,s1,-1880
1c0092de:	b4c60637          	lui	a2,0xb4c60
1c0092e2:	02760613          	addi	a2,a2,39 # b4c60027 <__l2_shared_end+0x98c50027>
1c0092e6:	940a                	add	s0,s0,sp
1c0092e8:	c010                	sw	a2,0(s0)
1c0092ea:	8ac48413          	addi	s0,s1,-1876
1c0092ee:	6fca9637          	lui	a2,0x6fca9
1c0092f2:	e0460613          	addi	a2,a2,-508 # 6fca8e04 <__l2_shared_end+0x53c98e04>
1c0092f6:	940a                	add	s0,s0,sp
1c0092f8:	c010                	sw	a2,0(s0)
1c0092fa:	8b048413          	addi	s0,s1,-1872
1c0092fe:	f9677637          	lui	a2,0xf9677
1c009302:	39a60613          	addi	a2,a2,922 # f967739a <__l2_shared_end+0xdd66739a>
1c009306:	940a                	add	s0,s0,sp
1c009308:	c010                	sw	a2,0(s0)
1c00930a:	8b448413          	addi	s0,s1,-1868
1c00930e:	7bd64637          	lui	a2,0x7bd64
1c009312:	80260613          	addi	a2,a2,-2046 # 7bd63802 <__l2_shared_end+0x5fd53802>
1c009316:	940a                	add	s0,s0,sp
1c009318:	c010                	sw	a2,0(s0)
1c00931a:	8b848413          	addi	s0,s1,-1864
1c00931e:	0d6a9637          	lui	a2,0xd6a9
1c009322:	ecf60613          	addi	a2,a2,-305 # d6a8ecf <__CTOR_LIST__-0xe957135>
1c009326:	940a                	add	s0,s0,sp
1c009328:	c010                	sw	a2,0(s0)
1c00932a:	8bc48413          	addi	s0,s1,-1860
1c00932e:	073c5637          	lui	a2,0x73c5
1c009332:	58a60613          	addi	a2,a2,1418 # 73c558a <__CTOR_LIST__-0x14c3aa7a>
1c009336:	940a                	add	s0,s0,sp
1c009338:	c010                	sw	a2,0(s0)
1c00933a:	8c048413          	addi	s0,s1,-1856
1c00933e:	d2f92637          	lui	a2,0xd2f92
1c009342:	21560613          	addi	a2,a2,533 # d2f92215 <__l2_shared_end+0xb6f82215>
1c009346:	940a                	add	s0,s0,sp
1c009348:	c010                	sw	a2,0(s0)
1c00934a:	8c448413          	addi	s0,s1,-1852
1c00934e:	48285637          	lui	a2,0x48285
1c009352:	e3960613          	addi	a2,a2,-455 # 48284e39 <__l2_shared_end+0x2c274e39>
1c009356:	940a                	add	s0,s0,sp
1c009358:	c010                	sw	a2,0(s0)
1c00935a:	8c848413          	addi	s0,s1,-1848
1c00935e:	be482637          	lui	a2,0xbe482
1c009362:	03d60613          	addi	a2,a2,61 # be48203d <__l2_shared_end+0xa247203d>
1c009366:	940a                	add	s0,s0,sp
1c009368:	c010                	sw	a2,0(s0)
1c00936a:	8cc48413          	addi	s0,s1,-1844
1c00936e:	8c9c9637          	lui	a2,0x8c9c9
1c009372:	f2a60613          	addi	a2,a2,-214 # 8c9c8f2a <__l2_shared_end+0x709b8f2a>
1c009376:	940a                	add	s0,s0,sp
1c009378:	c010                	sw	a2,0(s0)
1c00937a:	8d048413          	addi	s0,s1,-1840
1c00937e:	1a994637          	lui	a2,0x1a994
1c009382:	98e60613          	addi	a2,a2,-1650 # 1a99398e <__CTOR_LIST__-0x166c676>
1c009386:	940a                	add	s0,s0,sp
1c009388:	c010                	sw	a2,0(s0)
1c00938a:	8d448413          	addi	s0,s1,-1836
1c00938e:	7e3c2637          	lui	a2,0x7e3c2
1c009392:	74160613          	addi	a2,a2,1857 # 7e3c2741 <__l2_shared_end+0x623b2741>
1c009396:	940a                	add	s0,s0,sp
1c009398:	c010                	sw	a2,0(s0)
1c00939a:	8d848413          	addi	s0,s1,-1832
1c00939e:	6afcb637          	lui	a2,0x6afcb
1c0093a2:	eac60613          	addi	a2,a2,-340 # 6afcaeac <__l2_shared_end+0x4efbaeac>
1c0093a6:	940a                	add	s0,s0,sp
1c0093a8:	c010                	sw	a2,0(s0)
1c0093aa:	8dc48413          	addi	s0,s1,-1828
1c0093ae:	70e89637          	lui	a2,0x70e89
1c0093b2:	b3060613          	addi	a2,a2,-1232 # 70e88b30 <__l2_shared_end+0x54e78b30>
1c0093b6:	940a                	add	s0,s0,sp
1c0093b8:	c010                	sw	a2,0(s0)
1c0093ba:	8e048413          	addi	s0,s1,-1824
1c0093be:	17416637          	lui	a2,0x17416
1c0093c2:	bb460613          	addi	a2,a2,-1100 # 17415bb4 <__CTOR_LIST__-0x4bea450>
1c0093c6:	940a                	add	s0,s0,sp
1c0093c8:	c010                	sw	a2,0(s0)
1c0093ca:	8e448413          	addi	s0,s1,-1820
1c0093ce:	4a951637          	lui	a2,0x4a951
1c0093d2:	26460613          	addi	a2,a2,612 # 4a951264 <__l2_shared_end+0x2e941264>
1c0093d6:	940a                	add	s0,s0,sp
1c0093d8:	c010                	sw	a2,0(s0)
1c0093da:	8e848413          	addi	s0,s1,-1816
1c0093de:	3dd81637          	lui	a2,0x3dd81
1c0093e2:	f1a60613          	addi	a2,a2,-230 # 3dd80f1a <__l2_shared_end+0x21d70f1a>
1c0093e6:	940a                	add	s0,s0,sp
1c0093e8:	c010                	sw	a2,0(s0)
1c0093ea:	8ec48413          	addi	s0,s1,-1812
1c0093ee:	b25a3637          	lui	a2,0xb25a3
1c0093f2:	a3660613          	addi	a2,a2,-1482 # b25a2a36 <__l2_shared_end+0x96592a36>
1c0093f6:	940a                	add	s0,s0,sp
1c0093f8:	c010                	sw	a2,0(s0)
1c0093fa:	8f048413          	addi	s0,s1,-1808
1c0093fe:	ec3d6637          	lui	a2,0xec3d6
1c009402:	68860613          	addi	a2,a2,1672 # ec3d6688 <__l2_shared_end+0xd03c6688>
1c009406:	940a                	add	s0,s0,sp
1c009408:	c010                	sw	a2,0(s0)
1c00940a:	8f448413          	addi	s0,s1,-1804
1c00940e:	28b65637          	lui	a2,0x28b65
1c009412:	65460613          	addi	a2,a2,1620 # 28b65654 <__l2_shared_end+0xcb55654>
1c009416:	940a                	add	s0,s0,sp
1c009418:	c010                	sw	a2,0(s0)
1c00941a:	8f848413          	addi	s0,s1,-1800
1c00941e:	ec2c1637          	lui	a2,0xec2c1
1c009422:	b6d60613          	addi	a2,a2,-1171 # ec2c0b6d <__l2_shared_end+0xd02b0b6d>
1c009426:	940a                	add	s0,s0,sp
1c009428:	c010                	sw	a2,0(s0)
1c00942a:	8fc48413          	addi	s0,s1,-1796
1c00942e:	fb222637          	lui	a2,0xfb222
1c009432:	9b060613          	addi	a2,a2,-1616 # fb2219b0 <__l2_shared_end+0xdf2119b0>
1c009436:	940a                	add	s0,s0,sp
1c009438:	c010                	sw	a2,0(s0)
1c00943a:	90048413          	addi	s0,s1,-1792
1c00943e:	02384637          	lui	a2,0x2384
1c009442:	73d60613          	addi	a2,a2,1853 # 238473d <__CTOR_LIST__-0x19c7b8c7>
1c009446:	940a                	add	s0,s0,sp
1c009448:	c010                	sw	a2,0(s0)
1c00944a:	90448413          	addi	s0,s1,-1788
1c00944e:	63863637          	lui	a2,0x63863
1c009452:	bea60613          	addi	a2,a2,-1046 # 63862bea <__l2_shared_end+0x47852bea>
1c009456:	940a                	add	s0,s0,sp
1c009458:	c010                	sw	a2,0(s0)
1c00945a:	90848413          	addi	s0,s1,-1784
1c00945e:	4502d637          	lui	a2,0x4502d
1c009462:	e9b60613          	addi	a2,a2,-357 # 4502ce9b <__l2_shared_end+0x2901ce9b>
1c009466:	940a                	add	s0,s0,sp
1c009468:	c010                	sw	a2,0(s0)
1c00946a:	90c48413          	addi	s0,s1,-1780
1c00946e:	1c264637          	lui	a2,0x1c264
1c009472:	90360613          	addi	a2,a2,-1789 # 1c263903 <__l2_shared_end+0x253903>
1c009476:	940a                	add	s0,s0,sp
1c009478:	c010                	sw	a2,0(s0)
1c00947a:	91048413          	addi	s0,s1,-1776
1c00947e:	766d                	lui	a2,0xffffb
1c009480:	1ff60613          	addi	a2,a2,511 # ffffb1ff <__l2_shared_end+0xe3feb1ff>
1c009484:	940a                	add	s0,s0,sp
1c009486:	00c41023          	sh	a2,0(s0)
1c00948a:	91248413          	addi	s0,s1,-1774
1c00948e:	4651                	li	a2,20
1c009490:	940a                	add	s0,s0,sp
1c009492:	00c40023          	sb	a2,0(s0)
1c009496:	91348413          	addi	s0,s1,-1773
1c00949a:	5605                	li	a2,-31
1c00949c:	940a                	add	s0,s0,sp
1c00949e:	00c40023          	sb	a2,0(s0)
1c0094a2:	91448413          	addi	s0,s1,-1772
1c0094a6:	06e92637          	lui	a2,0x6e92
1c0094aa:	5e760613          	addi	a2,a2,1511 # 6e925e7 <__CTOR_LIST__-0x1516da1d>
1c0094ae:	940a                	add	s0,s0,sp
1c0094b0:	c010                	sw	a2,0(s0)
1c0094b2:	91848413          	addi	s0,s1,-1768
1c0094b6:	166a8637          	lui	a2,0x166a8
1c0094ba:	27760613          	addi	a2,a2,631 # 166a8277 <__CTOR_LIST__-0x5957d8d>
1c0094be:	940a                	add	s0,s0,sp
1c0094c0:	c010                	sw	a2,0(s0)
1c0094c2:	91c48413          	addi	s0,s1,-1764
1c0094c6:	b286f637          	lui	a2,0xb286f
1c0094ca:	68860613          	addi	a2,a2,1672 # b286f688 <__l2_shared_end+0x9685f688>
1c0094ce:	940a                	add	s0,s0,sp
1c0094d0:	c010                	sw	a2,0(s0)
1c0094d2:	92048413          	addi	s0,s1,-1760
1c0094d6:	9c778637          	lui	a2,0x9c778
1c0094da:	89a60613          	addi	a2,a2,-1894 # 9c77789a <__l2_shared_end+0x8076789a>
1c0094de:	940a                	add	s0,s0,sp
1c0094e0:	c010                	sw	a2,0(s0)
1c0094e2:	92448413          	addi	s0,s1,-1756
1c0094e6:	5d312637          	lui	a2,0x5d312
1c0094ea:	29860613          	addi	a2,a2,664 # 5d312298 <__l2_shared_end+0x41302298>
1c0094ee:	940a                	add	s0,s0,sp
1c0094f0:	c010                	sw	a2,0(s0)
1c0094f2:	92848413          	addi	s0,s1,-1752
1c0094f6:	5357c637          	lui	a2,0x5357c
1c0094fa:	5af60613          	addi	a2,a2,1455 # 5357c5af <__l2_shared_end+0x3756c5af>
1c0094fe:	940a                	add	s0,s0,sp
1c009500:	c010                	sw	a2,0(s0)
1c009502:	92c48413          	addi	s0,s1,-1748
1c009506:	d38e9637          	lui	a2,0xd38e9
1c00950a:	ce960613          	addi	a2,a2,-791 # d38e8ce9 <__l2_shared_end+0xb78d8ce9>
1c00950e:	940a                	add	s0,s0,sp
1c009510:	c010                	sw	a2,0(s0)
1c009512:	93048413          	addi	s0,s1,-1744
1c009516:	322b2637          	lui	a2,0x322b2
1c00951a:	f2260613          	addi	a2,a2,-222 # 322b1f22 <__l2_shared_end+0x162a1f22>
1c00951e:	940a                	add	s0,s0,sp
1c009520:	c010                	sw	a2,0(s0)
1c009522:	93448413          	addi	s0,s1,-1740
1c009526:	8a5c8637          	lui	a2,0x8a5c8
1c00952a:	02060613          	addi	a2,a2,32 # 8a5c8020 <__l2_shared_end+0x6e5b8020>
1c00952e:	940a                	add	s0,s0,sp
1c009530:	c010                	sw	a2,0(s0)
1c009532:	93848413          	addi	s0,s1,-1736
1c009536:	5533a637          	lui	a2,0x5533a
1c00953a:	82860613          	addi	a2,a2,-2008 # 55339828 <__l2_shared_end+0x39329828>
1c00953e:	940a                	add	s0,s0,sp
1c009540:	c010                	sw	a2,0(s0)
1c009542:	93c48413          	addi	s0,s1,-1732
1c009546:	6fa38637          	lui	a2,0x6fa38
1c00954a:	d2060613          	addi	a2,a2,-736 # 6fa37d20 <__l2_shared_end+0x53a27d20>
1c00954e:	940a                	add	s0,s0,sp
1c009550:	c010                	sw	a2,0(s0)
1c009552:	94048413          	addi	s0,s1,-1728
1c009556:	c89b3637          	lui	a2,0xc89b3
1c00955a:	fb760613          	addi	a2,a2,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c00955e:	940a                	add	s0,s0,sp
1c009560:	c010                	sw	a2,0(s0)
1c009562:	94448413          	addi	s0,s1,-1724
1c009566:	b9131637          	lui	a2,0xb9131
1c00956a:	a5c60613          	addi	a2,a2,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c00956e:	940a                	add	s0,s0,sp
1c009570:	c010                	sw	a2,0(s0)
1c009572:	94848413          	addi	s0,s1,-1720
1c009576:	6f584637          	lui	a2,0x6f584
1c00957a:	1d060613          	addi	a2,a2,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c00957e:	940a                	add	s0,s0,sp
1c009580:	c010                	sw	a2,0(s0)
1c009582:	94c48413          	addi	s0,s1,-1716
1c009586:	b1fe8637          	lui	a2,0xb1fe8
1c00958a:	3d560613          	addi	a2,a2,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c00958e:	940a                	add	s0,s0,sp
1c009590:	c010                	sw	a2,0(s0)
1c009592:	95048413          	addi	s0,s1,-1712
1c009596:	405b0637          	lui	a2,0x405b0
1c00959a:	d2a60613          	addi	a2,a2,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c00959e:	940a                	add	s0,s0,sp
1c0095a0:	c010                	sw	a2,0(s0)
1c0095a2:	95448413          	addi	s0,s1,-1708
1c0095a6:	433bd637          	lui	a2,0x433bd
1c0095aa:	32d60613          	addi	a2,a2,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c0095ae:	940a                	add	s0,s0,sp
1c0095b0:	c010                	sw	a2,0(s0)
1c0095b2:	95848413          	addi	s0,s1,-1704
1c0095b6:	a45f4637          	lui	a2,0xa45f4
1c0095ba:	f5460613          	addi	a2,a2,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c0095be:	940a                	add	s0,s0,sp
1c0095c0:	c010                	sw	a2,0(s0)
1c0095c2:	95c48413          	addi	s0,s1,-1700
1c0095c6:	8d6c4637          	lui	a2,0x8d6c4
1c0095ca:	3eb60613          	addi	a2,a2,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c0095ce:	940a                	add	s0,s0,sp
1c0095d0:	c010                	sw	a2,0(s0)
1c0095d2:	96048413          	addi	s0,s1,-1696
1c0095d6:	317b5637          	lui	a2,0x317b5
1c0095da:	92360613          	addi	a2,a2,-1757 # 317b4923 <__l2_shared_end+0x157a4923>
1c0095de:	940a                	add	s0,s0,sp
1c0095e0:	c010                	sw	a2,0(s0)
1c0095e2:	96448413          	addi	s0,s1,-1692
1c0095e6:	718ba637          	lui	a2,0x718ba
1c0095ea:	a2760613          	addi	a2,a2,-1497 # 718b9a27 <__l2_shared_end+0x558a9a27>
1c0095ee:	940a                	add	s0,s0,sp
1c0095f0:	c010                	sw	a2,0(s0)
1c0095f2:	96848413          	addi	s0,s1,-1688
1c0095f6:	302f9637          	lui	a2,0x302f9
1c0095fa:	15f60613          	addi	a2,a2,351 # 302f915f <__l2_shared_end+0x142e915f>
1c0095fe:	940a                	add	s0,s0,sp
1c009600:	c010                	sw	a2,0(s0)
1c009602:	96c48413          	addi	s0,s1,-1684
1c009606:	62668637          	lui	a2,0x62668
1c00960a:	1a160613          	addi	a2,a2,417 # 626681a1 <__l2_shared_end+0x466581a1>
1c00960e:	940a                	add	s0,s0,sp
1c009610:	c010                	sw	a2,0(s0)
1c009612:	97048413          	addi	s0,s1,-1680
1c009616:	bd3b9637          	lui	a2,0xbd3b9
1c00961a:	17060613          	addi	a2,a2,368 # bd3b9170 <__l2_shared_end+0xa13a9170>
1c00961e:	940a                	add	s0,s0,sp
1c009620:	c010                	sw	a2,0(s0)
1c009622:	97448413          	addi	s0,s1,-1676
1c009626:	b98e6637          	lui	a2,0xb98e6
1c00962a:	97260613          	addi	a2,a2,-1678 # b98e5972 <__l2_shared_end+0x9d8d5972>
1c00962e:	940a                	add	s0,s0,sp
1c009630:	c010                	sw	a2,0(s0)
1c009632:	97848413          	addi	s0,s1,-1672
1c009636:	daa66637          	lui	a2,0xdaa66
1c00963a:	5cd60613          	addi	a2,a2,1485 # daa665cd <__l2_shared_end+0xbea565cd>
1c00963e:	940a                	add	s0,s0,sp
1c009640:	c010                	sw	a2,0(s0)
1c009642:	97c48413          	addi	s0,s1,-1668
1c009646:	6b5c1637          	lui	a2,0x6b5c1
1c00964a:	f6860613          	addi	a2,a2,-152 # 6b5c0f68 <__l2_shared_end+0x4f5b0f68>
1c00964e:	940a                	add	s0,s0,sp
1c009650:	c010                	sw	a2,0(s0)
1c009652:	98048413          	addi	s0,s1,-1664
1c009656:	a62e3637          	lui	a2,0xa62e3
1c00965a:	a3e60613          	addi	a2,a2,-1474 # a62e2a3e <__l2_shared_end+0x8a2d2a3e>
1c00965e:	940a                	add	s0,s0,sp
1c009660:	c010                	sw	a2,0(s0)
1c009662:	98448413          	addi	s0,s1,-1660
1c009666:	fc76c637          	lui	a2,0xfc76c
1c00966a:	4c960613          	addi	a2,a2,1225 # fc76c4c9 <__l2_shared_end+0xe075c4c9>
1c00966e:	940a                	add	s0,s0,sp
1c009670:	c010                	sw	a2,0(s0)
1c009672:	98848413          	addi	s0,s1,-1656
1c009676:	13b03637          	lui	a2,0x13b03
1c00967a:	74960613          	addi	a2,a2,1865 # 13b03749 <__CTOR_LIST__-0x84fc8bb>
1c00967e:	940a                	add	s0,s0,sp
1c009680:	c010                	sw	a2,0(s0)
1c009682:	98c48413          	addi	s0,s1,-1652
1c009686:	93a79637          	lui	a2,0x93a79
1c00968a:	3c960613          	addi	a2,a2,969 # 93a793c9 <__l2_shared_end+0x77a693c9>
1c00968e:	940a                	add	s0,s0,sp
1c009690:	c010                	sw	a2,0(s0)
1c009692:	99048413          	addi	s0,s1,-1648
1c009696:	99abc637          	lui	a2,0x99abc
1c00969a:	0d660613          	addi	a2,a2,214 # 99abc0d6 <__l2_shared_end+0x7daac0d6>
1c00969e:	940a                	add	s0,s0,sp
1c0096a0:	c010                	sw	a2,0(s0)
1c0096a2:	99448413          	addi	s0,s1,-1644
1c0096a6:	a85b7637          	lui	a2,0xa85b7
1c0096aa:	96060613          	addi	a2,a2,-1696 # a85b6960 <__l2_shared_end+0x8c5a6960>
1c0096ae:	940a                	add	s0,s0,sp
1c0096b0:	c010                	sw	a2,0(s0)
1c0096b2:	99848413          	addi	s0,s1,-1640
1c0096b6:	da49f637          	lui	a2,0xda49f
1c0096ba:	63860613          	addi	a2,a2,1592 # da49f638 <__l2_shared_end+0xbe48f638>
1c0096be:	940a                	add	s0,s0,sp
1c0096c0:	c010                	sw	a2,0(s0)
1c0096c2:	99c48413          	addi	s0,s1,-1636
1c0096c6:	d0a3a637          	lui	a2,0xd0a3a
1c0096ca:	c5360613          	addi	a2,a2,-941 # d0a39c53 <__l2_shared_end+0xb4a29c53>
1c0096ce:	940a                	add	s0,s0,sp
1c0096d0:	c010                	sw	a2,0(s0)
1c0096d2:	a2ce3637          	lui	a2,0xa2ce3
1c0096d6:	2c860613          	addi	a2,a2,712 # a2ce32c8 <__l2_shared_end+0x86cd32c8>
1c0096da:	c0b2                	sw	a2,64(sp)
1c0096dc:	4afbe637          	lui	a2,0x4afbe
1c0096e0:	c7760613          	addi	a2,a2,-905 # 4afbdc77 <__l2_shared_end+0x2efadc77>
1c0096e4:	c2b2                	sw	a2,68(sp)
1c0096e6:	db513637          	lui	a2,0xdb513
1c0096ea:	1a260613          	addi	a2,a2,418 # db5131a2 <__l2_shared_end+0xbf5031a2>
1c0096ee:	c4b2                	sw	a2,72(sp)
1c0096f0:	ecc66637          	lui	a2,0xecc66
1c0096f4:	82b60613          	addi	a2,a2,-2005 # ecc6582b <__l2_shared_end+0xd0c5582b>
1c0096f8:	c6b2                	sw	a2,76(sp)
1c0096fa:	b0ceb637          	lui	a2,0xb0ceb
1c0096fe:	30e60613          	addi	a2,a2,782 # b0ceb30e <__l2_shared_end+0x94cdb30e>
1c009702:	c8b2                	sw	a2,80(sp)
1c009704:	6a0b4637          	lui	a2,0x6a0b4
1c009708:	d1b60613          	addi	a2,a2,-741 # 6a0b3d1b <__l2_shared_end+0x4e0a3d1b>
1c00970c:	cab2                	sw	a2,84(sp)
1c00970e:	f9a23637          	lui	a2,0xf9a23
1c009712:	0a160613          	addi	a2,a2,161 # f9a230a1 <__l2_shared_end+0xdda130a1>
1c009716:	ccb2                	sw	a2,88(sp)
1c009718:	57154637          	lui	a2,0x57154
1c00971c:	54b60613          	addi	a2,a2,1355 # 5715454b <__l2_shared_end+0x3b14454b>
1c009720:	ceb2                	sw	a2,92(sp)
1c009722:	dc0e5637          	lui	a2,0xdc0e5
1c009726:	ad260613          	addi	a2,a2,-1326 # dc0e4ad2 <__l2_shared_end+0xc00d4ad2>
1c00972a:	d0b2                	sw	a2,96(sp)
1c00972c:	3f5d5637          	lui	a2,0x3f5d5
1c009730:	2f660613          	addi	a2,a2,758 # 3f5d52f6 <__l2_shared_end+0x235c52f6>
1c009734:	d2b2                	sw	a2,100(sp)
1c009736:	21604637          	lui	a2,0x21604
1c00973a:	a4c60613          	addi	a2,a2,-1460 # 21603a4c <__l2_shared_end+0x55f3a4c>
1c00973e:	d4b2                	sw	a2,104(sp)
1c009740:	10724637          	lui	a2,0x10724
1c009744:	74a60613          	addi	a2,a2,1866 # 1072474a <__CTOR_LIST__-0xb8db8ba>
1c009748:	d6b2                	sw	a2,108(sp)
1c00974a:	d1be2637          	lui	a2,0xd1be2
1c00974e:	15b60613          	addi	a2,a2,347 # d1be215b <__l2_shared_end+0xb5bd215b>
1c009752:	d8b2                	sw	a2,112(sp)
1c009754:	455e1637          	lui	a2,0x455e1
1c009758:	0d460613          	addi	a2,a2,212 # 455e10d4 <__l2_shared_end+0x295d10d4>
1c00975c:	dab2                	sw	a2,116(sp)
1c00975e:	d60a3637          	lui	a2,0xd60a3
1c009762:	96760613          	addi	a2,a2,-1689 # d60a2967 <__l2_shared_end+0xba092967>
1c009766:	dcb2                	sw	a2,120(sp)
1c009768:	2eb31637          	lui	a2,0x2eb31
1c00976c:	44c60613          	addi	a2,a2,1100 # 2eb3144c <__l2_shared_end+0x12b2144c>
1c009770:	deb2                	sw	a2,124(sp)
1c009772:	d1774637          	lui	a2,0xd1774
1c009776:	65f60613          	addi	a2,a2,1631 # d177465f <__l2_shared_end+0xb576465f>
1c00977a:	c132                	sw	a2,128(sp)
1c00977c:	9b551637          	lui	a2,0x9b551
1c009780:	27660613          	addi	a2,a2,630 # 9b551276 <__l2_shared_end+0x7f541276>
1c009784:	c332                	sw	a2,132(sp)
1c009786:	db5be637          	lui	a2,0xdb5be
1c00978a:	0db60613          	addi	a2,a2,219 # db5be0db <__l2_shared_end+0xbf5ae0db>
1c00978e:	c532                	sw	a2,136(sp)
1c009790:	e6a42637          	lui	a2,0xe6a42
1c009794:	94e60613          	addi	a2,a2,-1714 # e6a4194e <__l2_shared_end+0xcaa3194e>
1c009798:	c732                	sw	a2,140(sp)
1c00979a:	afee1637          	lui	a2,0xafee1
1c00979e:	cf860613          	addi	a2,a2,-776 # afee0cf8 <__l2_shared_end+0x93ed0cf8>
1c0097a2:	c932                	sw	a2,144(sp)
1c0097a4:	5cc9a637          	lui	a2,0x5cc9a
1c0097a8:	8a260613          	addi	a2,a2,-1886 # 5cc998a2 <__l2_shared_end+0x40c898a2>
1c0097ac:	cb32                	sw	a2,148(sp)
1c0097ae:	be70a637          	lui	a2,0xbe70a
1c0097b2:	54260613          	addi	a2,a2,1346 # be70a542 <__l2_shared_end+0xa26fa542>
1c0097b6:	cd32                	sw	a2,152(sp)
1c0097b8:	a4947637          	lui	a2,0xa4947
1c0097bc:	de360613          	addi	a2,a2,-541 # a4946de3 <__l2_shared_end+0x88936de3>
1c0097c0:	cf32                	sw	a2,156(sp)
1c0097c2:	3ce82637          	lui	a2,0x3ce82
1c0097c6:	0d160613          	addi	a2,a2,209 # 3ce820d1 <__l2_shared_end+0x20e720d1>
1c0097ca:	d132                	sw	a2,160(sp)
1c0097cc:	06da2637          	lui	a2,0x6da2
1c0097d0:	4c560613          	addi	a2,a2,1221 # 6da24c5 <__CTOR_LIST__-0x1525db3f>
1c0097d4:	d332                	sw	a2,164(sp)
1c0097d6:	876ec637          	lui	a2,0x876ec
1c0097da:	5b960613          	addi	a2,a2,1465 # 876ec5b9 <__l2_shared_end+0x6b6dc5b9>
1c0097de:	d532                	sw	a2,168(sp)
1c0097e0:	c25d0637          	lui	a2,0xc25d0
1c0097e4:	c6060613          	addi	a2,a2,-928 # c25cfc60 <__l2_shared_end+0xa65bfc60>
1c0097e8:	d732                	sw	a2,172(sp)
1c0097ea:	763ca637          	lui	a2,0x763ca
1c0097ee:	3c360613          	addi	a2,a2,963 # 763ca3c3 <__l2_shared_end+0x5a3ba3c3>
1c0097f2:	d932                	sw	a2,176(sp)
1c0097f4:	cb2e7637          	lui	a2,0xcb2e7
1c0097f8:	48d60613          	addi	a2,a2,1165 # cb2e748d <__l2_shared_end+0xaf2d748d>
1c0097fc:	db32                	sw	a2,180(sp)
1c0097fe:	e2424637          	lui	a2,0xe2424
1c009802:	7cd60613          	addi	a2,a2,1997 # e24247cd <__l2_shared_end+0xc64147cd>
1c009806:	dd32                	sw	a2,184(sp)
1c009808:	f5bbc637          	lui	a2,0xf5bbc
1c00980c:	24060613          	addi	a2,a2,576 # f5bbc240 <__l2_shared_end+0xd9bac240>
1c009810:	df32                	sw	a2,188(sp)
1c009812:	c9a7a637          	lui	a2,0xc9a7a
1c009816:	bf260613          	addi	a2,a2,-1038 # c9a79bf2 <__l2_shared_end+0xada69bf2>
1c00981a:	c1b2                	sw	a2,192(sp)
1c00981c:	cb5ee637          	lui	a2,0xcb5ee
1c009820:	a4160613          	addi	a2,a2,-1471 # cb5eda41 <__l2_shared_end+0xaf5dda41>
1c009824:	c3b2                	sw	a2,196(sp)
1c009826:	c033d637          	lui	a2,0xc033d
1c00982a:	10460613          	addi	a2,a2,260 # c033d104 <__l2_shared_end+0xa432d104>
1c00982e:	c5b2                	sw	a2,200(sp)
1c009830:	b82b6637          	lui	a2,0xb82b6
1c009834:	68f60613          	addi	a2,a2,1679 # b82b668f <__l2_shared_end+0x9c2a668f>
1c009838:	c7b2                	sw	a2,204(sp)
1c00983a:	6aec1637          	lui	a2,0x6aec1
1c00983e:	04860613          	addi	a2,a2,72 # 6aec1048 <__l2_shared_end+0x4eeb1048>
1c009842:	c9b2                	sw	a2,208(sp)
1c009844:	07e89637          	lui	a2,0x7e89
1c009848:	0629                	addi	a2,a2,10
1c00984a:	cbb2                	sw	a2,212(sp)
1c00984c:	49449637          	lui	a2,0x49449
1c009850:	35f60613          	addi	a2,a2,863 # 4944935f <__l2_shared_end+0x2d43935f>
1c009854:	cdb2                	sw	a2,216(sp)
1c009856:	4d4ea637          	lui	a2,0x4d4ea
1c00985a:	2f660613          	addi	a2,a2,758 # 4d4ea2f6 <__l2_shared_end+0x314da2f6>
1c00985e:	cfb2                	sw	a2,220(sp)
1c009860:	fbef8637          	lui	a2,0xfbef8
1c009864:	48c60613          	addi	a2,a2,1164 # fbef848c <__l2_shared_end+0xdfee848c>
1c009868:	d1b2                	sw	a2,224(sp)
1c00986a:	32c29637          	lui	a2,0x32c29
1c00986e:	39d60613          	addi	a2,a2,925 # 32c2939d <__l2_shared_end+0x16c1939d>
1c009872:	d3b2                	sw	a2,228(sp)
1c009874:	13917637          	lui	a2,0x13917
1c009878:	e2860613          	addi	a2,a2,-472 # 13916e28 <__CTOR_LIST__-0x86e91dc>
1c00987c:	d5b2                	sw	a2,232(sp)
1c00987e:	d28b5637          	lui	a2,0xd28b5
1c009882:	56760613          	addi	a2,a2,1383 # d28b5567 <__l2_shared_end+0xb68a5567>
1c009886:	d7b2                	sw	a2,236(sp)
1c009888:	453b0637          	lui	a2,0x453b0
1c00988c:	fb360613          	addi	a2,a2,-77 # 453affb3 <__l2_shared_end+0x2939ffb3>
1c009890:	d9b2                	sw	a2,240(sp)
1c009892:	b5e3c637          	lui	a2,0xb5e3c
1c009896:	58060613          	addi	a2,a2,1408 # b5e3c580 <__l2_shared_end+0x99e2c580>
1c00989a:	dbb2                	sw	a2,244(sp)
1c00989c:	50a59637          	lui	a2,0x50a59
1c0098a0:	09760613          	addi	a2,a2,151 # 50a59097 <__l2_shared_end+0x34a49097>
1c0098a4:	ddb2                	sw	a2,248(sp)
1c0098a6:	943f4637          	lui	a2,0x943f4
1c0098aa:	ea660613          	addi	a2,a2,-346 # 943f3ea6 <__l2_shared_end+0x783e3ea6>
1c0098ae:	dfb2                	sw	a2,252(sp)
1c0098b0:	bd456637          	lui	a2,0xbd456
1c0098b4:	75a60613          	addi	a2,a2,1882 # bd45675a <__l2_shared_end+0xa144675a>
1c0098b8:	10c12023          	sw	a2,256(sp)
1c0098bc:	266ae637          	lui	a2,0x266ae
1c0098c0:	23e60613          	addi	a2,a2,574 # 266ae23e <__l2_shared_end+0xa69e23e>
1c0098c4:	10c12223          	sw	a2,260(sp)
1c0098c8:	ce340637          	lui	a2,0xce340
1c0098cc:	75f60613          	addi	a2,a2,1887 # ce34075f <__l2_shared_end+0xb233075f>
1c0098d0:	10c12423          	sw	a2,264(sp)
1c0098d4:	4bdd8637          	lui	a2,0x4bdd8
1c0098d8:	7cf60613          	addi	a2,a2,1999 # 4bdd87cf <__l2_shared_end+0x2fdc87cf>
1c0098dc:	10c12623          	sw	a2,268(sp)
1c0098e0:	b06f4637          	lui	a2,0xb06f4
1c0098e4:	d4f60613          	addi	a2,a2,-689 # b06f3d4f <__l2_shared_end+0x946e3d4f>
1c0098e8:	10c12823          	sw	a2,272(sp)
1c0098ec:	0db2b637          	lui	a2,0xdb2b
1c0098f0:	67660613          	addi	a2,a2,1654 # db2b676 <__CTOR_LIST__-0xe4d498e>
1c0098f4:	10c12a23          	sw	a2,276(sp)
1c0098f8:	6eb34637          	lui	a2,0x6eb34
1c0098fc:	3e660613          	addi	a2,a2,998 # 6eb343e6 <__l2_shared_end+0x52b243e6>
1c009900:	10c12c23          	sw	a2,280(sp)
1c009904:	9dec8637          	lui	a2,0x9dec8
1c009908:	49c60613          	addi	a2,a2,1180 # 9dec849c <__l2_shared_end+0x81eb849c>
1c00990c:	10c12e23          	sw	a2,284(sp)
1c009910:	edaf0637          	lui	a2,0xedaf0
1c009914:	35160613          	addi	a2,a2,849 # edaf0351 <__l2_shared_end+0xd1ae0351>
1c009918:	12c12023          	sw	a2,288(sp)
1c00991c:	b2726637          	lui	a2,0xb2726
1c009920:	67960613          	addi	a2,a2,1657 # b2726679 <__l2_shared_end+0x96716679>
1c009924:	12c12223          	sw	a2,292(sp)
1c009928:	98ecc637          	lui	a2,0x98ecc
1c00992c:	64b60613          	addi	a2,a2,1611 # 98ecc64b <__l2_shared_end+0x7cebc64b>
1c009930:	12c12423          	sw	a2,296(sp)
1c009934:	731fa637          	lui	a2,0x731fa
1c009938:	d0c60613          	addi	a2,a2,-756 # 731f9d0c <__l2_shared_end+0x571e9d0c>
1c00993c:	12c12623          	sw	a2,300(sp)
1c009940:	54446637          	lui	a2,0x54446
1c009944:	3db60613          	addi	a2,a2,987 # 544463db <__l2_shared_end+0x384363db>
1c009948:	12c12823          	sw	a2,304(sp)
1c00994c:	68769637          	lui	a2,0x68769
1c009950:	7aa60613          	addi	a2,a2,1962 # 687697aa <__l2_shared_end+0x4c7597aa>
1c009954:	12c12a23          	sw	a2,308(sp)
1c009958:	fc900613          	li	a2,-55
1c00995c:	12c10d23          	sb	a2,314(sp)
1c009960:	f8800613          	li	a2,-120
1c009964:	12c10da3          	sb	a2,315(sp)
1c009968:	1ca00637          	lui	a2,0x1ca00
1c00996c:	fc560613          	addi	a2,a2,-59 # 1c9fffc5 <__l2_shared_end+0x9effc5>
1c009970:	12c12e23          	sw	a2,316(sp)
1c009974:	a74f5637          	lui	a2,0xa74f5
1c009978:	56260613          	addi	a2,a2,1378 # a74f5562 <__l2_shared_end+0x8b4e5562>
1c00997c:	14c12023          	sw	a2,320(sp)
1c009980:	2a724637          	lui	a2,0x2a724
1c009984:	8b460613          	addi	a2,a2,-1868 # 2a7238b4 <__l2_shared_end+0xe7138b4>
1c009988:	14c12223          	sw	a2,324(sp)
1c00998c:	0e18e637          	lui	a2,0xe18e
1c009990:	b2e60613          	addi	a2,a2,-1234 # e18db2e <__CTOR_LIST__-0xde724d6>
1c009994:	14c12423          	sw	a2,328(sp)
1c009998:	857cd637          	lui	a2,0x857cd
1c00999c:	3ac60613          	addi	a2,a2,940 # 857cd3ac <__l2_shared_end+0x697bd3ac>
1c0099a0:	14c12623          	sw	a2,332(sp)
1c0099a4:	f3f30637          	lui	a2,0xf3f30
1c0099a8:	7d960613          	addi	a2,a2,2009 # f3f307d9 <__l2_shared_end+0xd7f207d9>
1c0099ac:	14c12823          	sw	a2,336(sp)
1c0099b0:	3d8bf637          	lui	a2,0x3d8bf
1c0099b4:	fa160613          	addi	a2,a2,-95 # 3d8befa1 <__l2_shared_end+0x218aefa1>
1c0099b8:	14c12a23          	sw	a2,340(sp)
1c0099bc:	fda9e637          	lui	a2,0xfda9e
1c0099c0:	c9460613          	addi	a2,a2,-876 # fda9dc94 <__l2_shared_end+0xe1a8dc94>
1c0099c4:	14c12c23          	sw	a2,344(sp)
1c0099c8:	872b5637          	lui	a2,0x872b5
1c0099cc:	2f760613          	addi	a2,a2,759 # 872b52f7 <__l2_shared_end+0x6b2a52f7>
1c0099d0:	14c12e23          	sw	a2,348(sp)
1c0099d4:	bd4ce637          	lui	a2,0xbd4ce
1c0099d8:	60060613          	addi	a2,a2,1536 # bd4ce600 <__l2_shared_end+0xa14be600>
1c0099dc:	16c12023          	sw	a2,352(sp)
1c0099e0:	989a2637          	lui	a2,0x989a2
1c0099e4:	90b60613          	addi	a2,a2,-1781 # 989a190b <__l2_shared_end+0x7c99190b>
1c0099e8:	16c12223          	sw	a2,356(sp)
1c0099ec:	4d14b637          	lui	a2,0x4d14b
1c0099f0:	49260613          	addi	a2,a2,1170 # 4d14b492 <__l2_shared_end+0x3113b492>
1c0099f4:	16c12423          	sw	a2,360(sp)
1c0099f8:	31191637          	lui	a2,0x31191
1c0099fc:	3b360613          	addi	a2,a2,947 # 311913b3 <__l2_shared_end+0x151813b3>
1c009a00:	16c12623          	sw	a2,364(sp)
1c009a04:	187a2637          	lui	a2,0x187a2
1c009a08:	b5060613          	addi	a2,a2,-1200 # 187a1b50 <__CTOR_LIST__-0x385e4b4>
1c009a0c:	16c12823          	sw	a2,368(sp)
1c009a10:	bd2f4637          	lui	a2,0xbd2f4
1c009a14:	35060613          	addi	a2,a2,848 # bd2f4350 <__l2_shared_end+0xa12e4350>
1c009a18:	16c12a23          	sw	a2,372(sp)
1c009a1c:	54459637          	lui	a2,0x54459
1c009a20:	53a60613          	addi	a2,a2,1338 # 5445953a <__l2_shared_end+0x3844953a>
1c009a24:	16c12c23          	sw	a2,376(sp)
1c009a28:	f1b90637          	lui	a2,0xf1b90
1c009a2c:	eca60613          	addi	a2,a2,-310 # f1b8feca <__l2_shared_end+0xd5b7feca>
1c009a30:	16c12e23          	sw	a2,380(sp)
1c009a34:	67912637          	lui	a2,0x67912
1c009a38:	ade60613          	addi	a2,a2,-1314 # 67911ade <__l2_shared_end+0x4b901ade>
1c009a3c:	18c12023          	sw	a2,384(sp)
1c009a40:	68d03637          	lui	a2,0x68d03
1c009a44:	d6560613          	addi	a2,a2,-667 # 68d02d65 <__l2_shared_end+0x4ccf2d65>
1c009a48:	18c12223          	sw	a2,388(sp)
1c009a4c:	d1617637          	lui	a2,0xd1617
1c009a50:	cc260613          	addi	a2,a2,-830 # d1616cc2 <__l2_shared_end+0xb5606cc2>
1c009a54:	18c12423          	sw	a2,392(sp)
1c009a58:	4e1da637          	lui	a2,0x4e1da
1c009a5c:	5d960613          	addi	a2,a2,1497 # 4e1da5d9 <__l2_shared_end+0x321ca5d9>
1c009a60:	18c12623          	sw	a2,396(sp)
1c009a64:	e8d7c637          	lui	a2,0xe8d7c
1c009a68:	51d60613          	addi	a2,a2,1309 # e8d7c51d <__l2_shared_end+0xccd6c51d>
1c009a6c:	18c12823          	sw	a2,400(sp)
1c009a70:	8b362637          	lui	a2,0x8b362
1c009a74:	dbb60613          	addi	a2,a2,-581 # 8b361dbb <__l2_shared_end+0x6f351dbb>
1c009a78:	18c12a23          	sw	a2,404(sp)
1c009a7c:	cb319637          	lui	a2,0xcb319
1c009a80:	87960613          	addi	a2,a2,-1927 # cb318879 <__l2_shared_end+0xaf308879>
1c009a84:	18c12c23          	sw	a2,408(sp)
1c009a88:	ed51b637          	lui	a2,0xed51b
1c009a8c:	0c460613          	addi	a2,a2,196 # ed51b0c4 <__l2_shared_end+0xd150b0c4>
1c009a90:	18c12e23          	sw	a2,412(sp)
1c009a94:	622b6637          	lui	a2,0x622b6
1c009a98:	bc560613          	addi	a2,a2,-1083 # 622b5bc5 <__l2_shared_end+0x462a5bc5>
1c009a9c:	1ac12023          	sw	a2,416(sp)
1c009aa0:	d06ad637          	lui	a2,0xd06ad
1c009aa4:	a3660613          	addi	a2,a2,-1482 # d06aca36 <__l2_shared_end+0xb469ca36>
1c009aa8:	1ac12223          	sw	a2,420(sp)
1c009aac:	b5d2a637          	lui	a2,0xb5d2a
1c009ab0:	ed560613          	addi	a2,a2,-299 # b5d29ed5 <__l2_shared_end+0x99d19ed5>
1c009ab4:	1ac12423          	sw	a2,424(sp)
1c009ab8:	7cddf637          	lui	a2,0x7cddf
1c009abc:	7775                	lui	a4,0xffffd
1c009abe:	bb960613          	addi	a2,a2,-1095 # 7cddebb9 <__l2_shared_end+0x60dcebb9>
1c009ac2:	cdf70813          	addi	a6,a4,-801 # ffffccdf <__l2_shared_end+0xe3feccdf>
1c009ac6:	1ac12623          	sw	a2,428(sp)
1c009aca:	8c6f8637          	lui	a2,0x8c6f8
1c009ace:	13011c23          	sh	a6,312(sp)
1c009ad2:	11e60613          	addi	a2,a2,286 # 8c6f811e <__l2_shared_end+0x706e811e>
1c009ad6:	1ac12823          	sw	a2,432(sp)
1c009ada:	19db1637          	lui	a2,0x19db1
1c009ade:	12160613          	addi	a2,a2,289 # 19db1121 <__CTOR_LIST__-0x224eee3>
1c009ae2:	1ac12a23          	sw	a2,436(sp)
1c009ae6:	25afc637          	lui	a2,0x25afc
1c009aea:	e8f60613          	addi	a2,a2,-369 # 25afbe8f <__l2_shared_end+0x9aebe8f>
1c009aee:	1ac12c23          	sw	a2,440(sp)
1c009af2:	9efe3637          	lui	a2,0x9efe3
1c009af6:	4b160613          	addi	a2,a2,1201 # 9efe34b1 <__l2_shared_end+0x82fd34b1>
1c009afa:	1ac12e23          	sw	a2,444(sp)
1c009afe:	4787e637          	lui	a2,0x4787e
1c009b02:	d5760613          	addi	a2,a2,-681 # 4787dd57 <__l2_shared_end+0x2b86dd57>
1c009b06:	1cc12023          	sw	a2,448(sp)
1c009b0a:	9a010613          	addi	a2,sp,-1632
1c009b0e:	97b2                	add	a5,a5,a2
1c009b10:	57369637          	lui	a2,0x57369
1c009b14:	19e60613          	addi	a2,a2,414 # 5736919e <__l2_shared_end+0x3b35919e>
1c009b18:	1cc12223          	sw	a2,452(sp)
1c009b1c:	f9000613          	li	a2,-112
1c009b20:	88c789a3          	sb	a2,-1901(a5)
1c009b24:	75fd                	lui	a1,0xfffff
1c009b26:	bd768793          	addi	a5,a3,-1065
1c009b2a:	9a048693          	addi	a3,s1,-1632
1c009b2e:	66058413          	addi	s0,a1,1632 # fffff660 <__l2_shared_end+0xe3fef660>
1c009b32:	968a                	add	a3,a3,sp
1c009b34:	9436                	add	s0,s0,a3
1c009b36:	301b26b7          	lui	a3,0x301b2
1c009b3a:	82b68693          	addi	a3,a3,-2005 # 301b182b <__l2_shared_end+0x141a182b>
1c009b3e:	1cd12423          	sw	a3,456(sp)
1c009b42:	ec6f36b7          	lui	a3,0xec6f3
1c009b46:	47b68693          	addi	a3,a3,1147 # ec6f347b <__l2_shared_end+0xd06e347b>
1c009b4a:	1cd12623          	sw	a3,460(sp)
1c009b4e:	8e8cc6b7          	lui	a3,0x8e8cc
1c009b52:	e3068693          	addi	a3,a3,-464 # 8e8cbe30 <__l2_shared_end+0x728bbe30>
1c009b56:	1cd12823          	sw	a3,464(sp)
1c009b5a:	ec9426b7          	lui	a3,0xec942
1c009b5e:	068d                	addi	a3,a3,3
1c009b60:	1cd12a23          	sw	a3,468(sp)
1c009b64:	2efdd6b7          	lui	a3,0x2efdd
1c009b68:	b0368693          	addi	a3,a3,-1277 # 2efdcb03 <__l2_shared_end+0x12fccb03>
1c009b6c:	1cd12c23          	sw	a3,472(sp)
1c009b70:	b7f7d6b7          	lui	a3,0xb7f7d
1c009b74:	0e568693          	addi	a3,a3,229 # b7f7d0e5 <__l2_shared_end+0x9bf6d0e5>
1c009b78:	1cd12e23          	sw	a3,476(sp)
1c009b7c:	34e766b7          	lui	a3,0x34e76
1c009b80:	e0568693          	addi	a3,a3,-507 # 34e75e05 <__l2_shared_end+0x18e65e05>
1c009b84:	1ed12023          	sw	a3,480(sp)
1c009b88:	944336b7          	lui	a3,0x94433
1c009b8c:	a6f68693          	addi	a3,a3,-1425 # 94432a6f <__l2_shared_end+0x78422a6f>
1c009b90:	1ed12223          	sw	a3,484(sp)
1c009b94:	d19796b7          	lui	a3,0xd1979
1c009b98:	43968693          	addi	a3,a3,1081 # d1979439 <__l2_shared_end+0xb5969439>
1c009b9c:	1ed12423          	sw	a3,488(sp)
1c009ba0:	f09996b7          	lui	a3,0xf0999
1c009ba4:	3dc68693          	addi	a3,a3,988 # f09993dc <__l2_shared_end+0xd49893dc>
1c009ba8:	1ed12623          	sw	a3,492(sp)
1c009bac:	308286b7          	lui	a3,0x30828
1c009bb0:	e5768693          	addi	a3,a3,-425 # 30827e57 <__l2_shared_end+0x14817e57>
1c009bb4:	1ed12823          	sw	a3,496(sp)
1c009bb8:	7b06b6b7          	lui	a3,0x7b06b
1c009bbc:	ce768693          	addi	a3,a3,-793 # 7b06ace7 <__l2_shared_end+0x5f05ace7>
1c009bc0:	1ed12a23          	sw	a3,500(sp)
1c009bc4:	99adb6b7          	lui	a3,0x99adb
1c009bc8:	b9c68693          	addi	a3,a3,-1124 # 99adab9c <__l2_shared_end+0x7dacab9c>
1c009bcc:	1ed12c23          	sw	a3,504(sp)
1c009bd0:	5a0f76b7          	lui	a3,0x5a0f7
1c009bd4:	e3b68693          	addi	a3,a3,-453 # 5a0f6e3b <__l2_shared_end+0x3e0e6e3b>
1c009bd8:	1ed12e23          	sw	a3,508(sp)
1c009bdc:	70c816b7          	lui	a3,0x70c81
1c009be0:	2c568693          	addi	a3,a3,709 # 70c812c5 <__l2_shared_end+0x54c712c5>
1c009be4:	20d12023          	sw	a3,512(sp)
1c009be8:	6f2876b7          	lui	a3,0x6f287
1c009bec:	6fe68693          	addi	a3,a3,1790 # 6f2876fe <__l2_shared_end+0x532776fe>
1c009bf0:	20d12223          	sw	a3,516(sp)
1c009bf4:	3b17c6b7          	lui	a3,0x3b17c
1c009bf8:	dc468693          	addi	a3,a3,-572 # 3b17bdc4 <__l2_shared_end+0x1f16bdc4>
1c009bfc:	20d12423          	sw	a3,520(sp)
1c009c00:	27f646b7          	lui	a3,0x27f64
1c009c04:	10368693          	addi	a3,a3,259 # 27f64103 <__l2_shared_end+0xbf54103>
1c009c08:	20d12623          	sw	a3,524(sp)
1c009c0c:	46c696b7          	lui	a3,0x46c69
1c009c10:	5f668693          	addi	a3,a3,1526 # 46c695f6 <__l2_shared_end+0x2ac595f6>
1c009c14:	20d12823          	sw	a3,528(sp)
1c009c18:	01dc56b7          	lui	a3,0x1dc5
1c009c1c:	94668693          	addi	a3,a3,-1722 # 1dc4946 <__CTOR_LIST__-0x1a23b6be>
1c009c20:	20d12a23          	sw	a3,532(sp)
1c009c24:	bd2a46b7          	lui	a3,0xbd2a4
1c009c28:	2e968693          	addi	a3,a3,745 # bd2a42e9 <__l2_shared_end+0xa12942e9>
1c009c2c:	20d12c23          	sw	a3,536(sp)
1c009c30:	88e976b7          	lui	a3,0x88e97
1c009c34:	18468693          	addi	a3,a3,388 # 88e97184 <__l2_shared_end+0x6ce87184>
1c009c38:	20d12e23          	sw	a3,540(sp)
1c009c3c:	3fa036b7          	lui	a3,0x3fa03
1c009c40:	8e068693          	addi	a3,a3,-1824 # 3fa028e0 <__l2_shared_end+0x239f28e0>
1c009c44:	22d12023          	sw	a3,544(sp)
1c009c48:	6bc116b7          	lui	a3,0x6bc11
1c009c4c:	75268693          	addi	a3,a3,1874 # 6bc11752 <__l2_shared_end+0x4fc01752>
1c009c50:	22d12223          	sw	a3,548(sp)
1c009c54:	815976b7          	lui	a3,0x81597
1c009c58:	94168693          	addi	a3,a3,-1727 # 81596941 <__l2_shared_end+0x65586941>
1c009c5c:	22d12423          	sw	a3,552(sp)
1c009c60:	f9dcf6b7          	lui	a3,0xf9dcf
1c009c64:	05268693          	addi	a3,a3,82 # f9dcf052 <__l2_shared_end+0xdddbf052>
1c009c68:	22d12623          	sw	a3,556(sp)
1c009c6c:	22f11823          	sh	a5,560(sp)
1c009c70:	fd300793          	li	a5,-45
1c009c74:	22f10923          	sb	a5,562(sp)
1c009c78:	e66aa7b7          	lui	a5,0xe66aa
1c009c7c:	dbc78793          	addi	a5,a5,-580 # e66a9dbc <__l2_shared_end+0xca699dbc>
1c009c80:	22f12a23          	sw	a5,564(sp)
1c009c84:	e25e97b7          	lui	a5,0xe25e9
1c009c88:	82a78793          	addi	a5,a5,-2006 # e25e882a <__l2_shared_end+0xc65d882a>
1c009c8c:	22f12c23          	sw	a5,568(sp)
1c009c90:	e145f7b7          	lui	a5,0xe145f
1c009c94:	19178793          	addi	a5,a5,401 # e145f191 <__l2_shared_end+0xc544f191>
1c009c98:	22f12e23          	sw	a5,572(sp)
1c009c9c:	437dd7b7          	lui	a5,0x437dd
1c009ca0:	3c678793          	addi	a5,a5,966 # 437dd3c6 <__l2_shared_end+0x277cd3c6>
1c009ca4:	24f12023          	sw	a5,576(sp)
1c009ca8:	9a048793          	addi	a5,s1,-1632
1c009cac:	978a                	add	a5,a5,sp
1c009cae:	6a058593          	addi	a1,a1,1696
1c009cb2:	95be                	add	a1,a1,a5
1c009cb4:	399017b7          	lui	a5,0x39901
1c009cb8:	22a78793          	addi	a5,a5,554 # 3990122a <__l2_shared_end+0x1d8f122a>
1c009cbc:	24f12223          	sw	a5,580(sp)
1c009cc0:	b63847b7          	lui	a5,0xb6384
1c009cc4:	28578793          	addi	a5,a5,645 # b6384285 <__l2_shared_end+0x9a374285>
1c009cc8:	24f12423          	sw	a5,584(sp)
1c009ccc:	ab00f7b7          	lui	a5,0xab00f
1c009cd0:	d2b78793          	addi	a5,a5,-725 # ab00ed2b <__l2_shared_end+0x8effed2b>
1c009cd4:	24f12623          	sw	a5,588(sp)
1c009cd8:	9a38b7b7          	lui	a5,0x9a38b
1c009cdc:	d3d78793          	addi	a5,a5,-707 # 9a38ad3d <__l2_shared_end+0x7e37ad3d>
1c009ce0:	24f12823          	sw	a5,592(sp)
1c009ce4:	5a38c7b7          	lui	a5,0x5a38c
1c009ce8:	5f878793          	addi	a5,a5,1528 # 5a38c5f8 <__l2_shared_end+0x3e37c5f8>
1c009cec:	24f12a23          	sw	a5,596(sp)
1c009cf0:	18fa17b7          	lui	a5,0x18fa1
1c009cf4:	3b678793          	addi	a5,a5,950 # 18fa13b6 <__CTOR_LIST__-0x305ec4e>
1c009cf8:	24f12c23          	sw	a5,600(sp)
1c009cfc:	3346b7b7          	lui	a5,0x3346b
1c009d00:	7f978793          	addi	a5,a5,2041 # 3346b7f9 <__l2_shared_end+0x1745b7f9>
1c009d04:	24f12e23          	sw	a5,604(sp)
1c009d08:	122ee7b7          	lui	a5,0x122ee
1c009d0c:	82478793          	addi	a5,a5,-2012 # 122ed824 <__CTOR_LIST__-0x9d127e0>
1c009d10:	26f12023          	sw	a5,608(sp)
1c009d14:	53f4d7b7          	lui	a5,0x53f4d
1c009d18:	cdc78793          	addi	a5,a5,-804 # 53f4ccdc <__l2_shared_end+0x37f3ccdc>
1c009d1c:	26f12223          	sw	a5,612(sp)
1c009d20:	1220f7b7          	lui	a5,0x1220f
1c009d24:	62778793          	addi	a5,a5,1575 # 1220f627 <__CTOR_LIST__-0x9df09dd>
1c009d28:	26f12423          	sw	a5,616(sp)
1c009d2c:	146267b7          	lui	a5,0x14626
1c009d30:	88278793          	addi	a5,a5,-1918 # 14625882 <__CTOR_LIST__-0x79da782>
1c009d34:	26f12623          	sw	a5,620(sp)
1c009d38:	4c1c67b7          	lui	a5,0x4c1c6
1c009d3c:	adc78793          	addi	a5,a5,-1316 # 4c1c5adc <__l2_shared_end+0x301b5adc>
1c009d40:	26f12823          	sw	a5,624(sp)
1c009d44:	ea2f57b7          	lui	a5,0xea2f5
1c009d48:	71278793          	addi	a5,a5,1810 # ea2f5712 <__l2_shared_end+0xce2e5712>
1c009d4c:	26f12a23          	sw	a5,628(sp)
1c009d50:	e9ab47b7          	lui	a5,0xe9ab4
1c009d54:	74e78793          	addi	a5,a5,1870 # e9ab474e <__l2_shared_end+0xcdaa474e>
1c009d58:	26f12c23          	sw	a5,632(sp)
1c009d5c:	9a3a07b7          	lui	a5,0x9a3a0
1c009d60:	2c178793          	addi	a5,a5,705 # 9a3a02c1 <__l2_shared_end+0x7e3902c1>
1c009d64:	26f12e23          	sw	a5,636(sp)
1c009d68:	c43fd7b7          	lui	a5,0xc43fd
1c009d6c:	e1e78793          	addi	a5,a5,-482 # c43fce1e <__l2_shared_end+0xa83ece1e>
1c009d70:	28f12023          	sw	a5,640(sp)
1c009d74:	e9e527b7          	lui	a5,0xe9e52
1c009d78:	96078793          	addi	a5,a5,-1696 # e9e51960 <__l2_shared_end+0xcde41960>
1c009d7c:	3e95d6b7          	lui	a3,0x3e95d
1c009d80:	28f12223          	sw	a5,644(sp)
1c009d84:	e7068693          	addi	a3,a3,-400 # 3e95ce70 <__l2_shared_end+0x2294ce70>
1c009d88:	518547b7          	lui	a5,0x51854
1c009d8c:	25a78793          	addi	a5,a5,602 # 5185425a <__l2_shared_end+0x3584425a>
1c009d90:	28d12e23          	sw	a3,668(sp)
1c009d94:	8689a6b7          	lui	a3,0x8689a
1c009d98:	28f12423          	sw	a5,648(sp)
1c009d9c:	58168693          	addi	a3,a3,1409 # 8689a581 <__l2_shared_end+0x6a88a581>
1c009da0:	08c1e7b7          	lui	a5,0x8c1e
1c009da4:	db178793          	addi	a5,a5,-591 # 8c1ddb1 <__CTOR_LIST__-0x133e2253>
1c009da8:	2ad12023          	sw	a3,672(sp)
1c009dac:	e85216b7          	lui	a3,0xe8521
1c009db0:	28f12623          	sw	a5,652(sp)
1c009db4:	4db68693          	addi	a3,a3,1243 # e85214db <__l2_shared_end+0xcc5114db>
1c009db8:	118ae7b7          	lui	a5,0x118ae
1c009dbc:	6bf78793          	addi	a5,a5,1727 # 118ae6bf <__CTOR_LIST__-0xa751945>
1c009dc0:	2ad12223          	sw	a3,676(sp)
1c009dc4:	108b56b7          	lui	a3,0x108b5
1c009dc8:	28f12823          	sw	a5,656(sp)
1c009dcc:	11968693          	addi	a3,a3,281 # 108b5119 <__CTOR_LIST__-0xb74aeeb>
1c009dd0:	aeeb37b7          	lui	a5,0xaeeb3
1c009dd4:	97278793          	addi	a5,a5,-1678 # aeeb2972 <__l2_shared_end+0x92ea2972>
1c009dd8:	2ad12423          	sw	a3,680(sp)
1c009ddc:	d886d6b7          	lui	a3,0xd886d
1c009de0:	28f12a23          	sw	a5,660(sp)
1c009de4:	89568693          	addi	a3,a3,-1899 # d886c895 <__l2_shared_end+0xbc85c895>
1c009de8:	9e82f7b7          	lui	a5,0x9e82f
1c009dec:	38178793          	addi	a5,a5,897 # 9e82f381 <__l2_shared_end+0x8281f381>
1c009df0:	2ad12623          	sw	a3,684(sp)
1c009df4:	563916b7          	lui	a3,0x56391
1c009df8:	28f12c23          	sw	a5,664(sp)
1c009dfc:	26e68693          	addi	a3,a3,622 # 5639126e <__l2_shared_end+0x3a38126e>
1c009e00:	2ad12823          	sw	a3,688(sp)
1c009e04:	2732e6b7          	lui	a3,0x2732e
1c009e08:	37968693          	addi	a3,a3,889 # 2732e379 <__l2_shared_end+0xb31e379>
1c009e0c:	2ad12a23          	sw	a3,692(sp)
1c009e10:	2b1026b7          	lui	a3,0x2b102
1c009e14:	4d768693          	addi	a3,a3,1239 # 2b1024d7 <__l2_shared_end+0xf0f24d7>
1c009e18:	2ad12c23          	sw	a3,696(sp)
1c009e1c:	811e26b7          	lui	a3,0x811e2
1c009e20:	13868693          	addi	a3,a3,312 # 811e2138 <__l2_shared_end+0x651d2138>
1c009e24:	2ad12e23          	sw	a3,700(sp)
1c009e28:	728996b7          	lui	a3,0x72899
1c009e2c:	52f68693          	addi	a3,a3,1327 # 7289952f <__l2_shared_end+0x5688952f>
1c009e30:	2cd12023          	sw	a3,704(sp)
1c009e34:	620bd6b7          	lui	a3,0x620bd
1c009e38:	46568693          	addi	a3,a3,1125 # 620bd465 <__l2_shared_end+0x460ad465>
1c009e3c:	2cd12223          	sw	a3,708(sp)
1c009e40:	4335a6b7          	lui	a3,0x4335a
1c009e44:	4ca68693          	addi	a3,a3,1226 # 4335a4ca <__l2_shared_end+0x2734a4ca>
1c009e48:	2cd12423          	sw	a3,712(sp)
1c009e4c:	9e0686b7          	lui	a3,0x9e068
1c009e50:	28868693          	addi	a3,a3,648 # 9e068288 <__l2_shared_end+0x82058288>
1c009e54:	2cd12623          	sw	a3,716(sp)
1c009e58:	f8bdc6b7          	lui	a3,0xf8bdc
1c009e5c:	03368693          	addi	a3,a3,51 # f8bdc033 <__l2_shared_end+0xdcbcc033>
1c009e60:	2cd12823          	sw	a3,720(sp)
1c009e64:	6f4bd6b7          	lui	a3,0x6f4bd
1c009e68:	18668693          	addi	a3,a3,390 # 6f4bd186 <__l2_shared_end+0x534ad186>
1c009e6c:	2cd12a23          	sw	a3,724(sp)
1c009e70:	1713b6b7          	lui	a3,0x1713b
1c009e74:	62668693          	addi	a3,a3,1574 # 1713b626 <__CTOR_LIST__-0x4ec49de>
1c009e78:	2cd12c23          	sw	a3,728(sp)
1c009e7c:	ea1316b7          	lui	a3,0xea131
1c009e80:	55868693          	addi	a3,a3,1368 # ea131558 <__l2_shared_end+0xce121558>
1c009e84:	2cd12e23          	sw	a3,732(sp)
1c009e88:	efdf66b7          	lui	a3,0xefdf6
1c009e8c:	c6268693          	addi	a3,a3,-926 # efdf5c62 <__l2_shared_end+0xd3de5c62>
1c009e90:	2ed12023          	sw	a3,736(sp)
1c009e94:	4f3426b7          	lui	a3,0x4f342
1c009e98:	14d68693          	addi	a3,a3,333 # 4f34214d <__l2_shared_end+0x3333214d>
1c009e9c:	2ed12223          	sw	a3,740(sp)
1c009ea0:	2e1916b7          	lui	a3,0x2e191
1c009ea4:	09c68693          	addi	a3,a3,156 # 2e19109c <__l2_shared_end+0x1218109c>
1c009ea8:	2ed12423          	sw	a3,744(sp)
1c009eac:	fa0396b7          	lui	a3,0xfa039
1c009eb0:	c6f68693          	addi	a3,a3,-913 # fa038c6f <__l2_shared_end+0xde028c6f>
1c009eb4:	2ed12623          	sw	a3,748(sp)
1c009eb8:	7c0656b7          	lui	a3,0x7c065
1c009ebc:	a3568693          	addi	a3,a3,-1483 # 7c064a35 <__l2_shared_end+0x60054a35>
1c009ec0:	2ed12823          	sw	a3,752(sp)
1c009ec4:	d57296b7          	lui	a3,0xd5729
1c009ec8:	52868693          	addi	a3,a3,1320 # d5729528 <__l2_shared_end+0xb9719528>
1c009ecc:	2ed12a23          	sw	a3,756(sp)
1c009ed0:	9a4c36b7          	lui	a3,0x9a4c3
1c009ed4:	d0668693          	addi	a3,a3,-762 # 9a4c2d06 <__l2_shared_end+0x7e4b2d06>
1c009ed8:	2ed12c23          	sw	a3,760(sp)
1c009edc:	548f06b7          	lui	a3,0x548f0
1c009ee0:	4d368693          	addi	a3,a3,1235 # 548f04d3 <__l2_shared_end+0x388e04d3>
1c009ee4:	2ed12e23          	sw	a3,764(sp)
1c009ee8:	af1186b7          	lui	a3,0xaf118
1c009eec:	21368693          	addi	a3,a3,531 # af118213 <__l2_shared_end+0x93108213>
1c009ef0:	30d12023          	sw	a3,768(sp)
1c009ef4:	f3eaa6b7          	lui	a3,0xf3eaa
1c009ef8:	fa168693          	addi	a3,a3,-95 # f3ea9fa1 <__l2_shared_end+0xd7e99fa1>
1c009efc:	30d12223          	sw	a3,772(sp)
1c009f00:	f344a6b7          	lui	a3,0xf344a
1c009f04:	49e68693          	addi	a3,a3,1182 # f344a49e <__l2_shared_end+0xd743a49e>
1c009f08:	30d12423          	sw	a3,776(sp)
1c009f0c:	a67456b7          	lui	a3,0xa6745
1c009f10:	a7768693          	addi	a3,a3,-1417 # a6744a77 <__l2_shared_end+0x8a734a77>
1c009f14:	30d12623          	sw	a3,780(sp)
1c009f18:	26e176b7          	lui	a3,0x26e17
1c009f1c:	8a868693          	addi	a3,a3,-1880 # 26e168a8 <__l2_shared_end+0xae068a8>
1c009f20:	30d12823          	sw	a3,784(sp)
1c009f24:	b4c7a6b7          	lui	a3,0xb4c7a
1c009f28:	5b768693          	addi	a3,a3,1463 # b4c7a5b7 <__l2_shared_end+0x98c6a5b7>
1c009f2c:	30d12a23          	sw	a3,788(sp)
1c009f30:	cfb9e6b7          	lui	a3,0xcfb9e
1c009f34:	be168693          	addi	a3,a3,-1055 # cfb9dbe1 <__l2_shared_end+0xb3b8dbe1>
1c009f38:	30d12c23          	sw	a3,792(sp)
1c009f3c:	2a9e96b7          	lui	a3,0x2a9e9
1c009f40:	41c68693          	addi	a3,a3,1052 # 2a9e941c <__l2_shared_end+0xe9d941c>
1c009f44:	63c70713          	addi	a4,a4,1596
1c009f48:	30d12e23          	sw	a3,796(sp)
1c009f4c:	6cff36b7          	lui	a3,0x6cff3
1c009f50:	c0768693          	addi	a3,a3,-1017 # 6cff2c07 <__l2_shared_end+0x50fe2c07>
1c009f54:	32e11423          	sh	a4,808(sp)
1c009f58:	02700713          	li	a4,39
1c009f5c:	32d12023          	sw	a3,800(sp)
1c009f60:	32e10523          	sb	a4,810(sp)
1c009f64:	721b46b7          	lui	a3,0x721b4
1c009f68:	03c00713          	li	a4,60
1c009f6c:	c9468693          	addi	a3,a3,-876 # 721b3c94 <__l2_shared_end+0x561a3c94>
1c009f70:	32e105a3          	sb	a4,811(sp)
1c009f74:	8946c737          	lui	a4,0x8946c
1c009f78:	32d12223          	sw	a3,804(sp)
1c009f7c:	eca50793          	addi	a5,a0,-310
1c009f80:	44b70713          	addi	a4,a4,1099 # 8946c44b <__l2_shared_end+0x6d45c44b>
1c009f84:	32e12623          	sw	a4,812(sp)
1c009f88:	32f12a23          	sw	a5,820(sp)
1c009f8c:	6ffa47b7          	lui	a5,0x6ffa4
1c009f90:	2cd78793          	addi	a5,a5,717 # 6ffa42cd <__l2_shared_end+0x53f942cd>
1c009f94:	32f12c23          	sw	a5,824(sp)
1c009f98:	cea4e737          	lui	a4,0xcea4e
1c009f9c:	0230c7b7          	lui	a5,0x230c
1c009fa0:	49170713          	addi	a4,a4,1169 # cea4e491 <__l2_shared_end+0xb2a3e491>
1c009fa4:	7c778793          	addi	a5,a5,1991 # 230c7c7 <__CTOR_LIST__-0x19cf383d>
1c009fa8:	0690                	addi	a2,sp,832
1c009faa:	8522                	mv	a0,s0
1c009fac:	32e12823          	sw	a4,816(sp)
1c009fb0:	32f12e23          	sw	a5,828(sp)
1c009fb4:	5cd010ef          	jal	ra,1c00bd80 <PQCLEAN_KYBER512_CLEAN_crypto_kem_dec>
1c009fb8:	1c000537          	lui	a0,0x1c000
1c009fbc:	11c50513          	addi	a0,a0,284 # 1c00011c <__clz_tab+0x100>
1c009fc0:	5cf020ef          	jal	ra,1c00cd8e <puts>
1c009fc4:	1c000537          	lui	a0,0x1c000
1c009fc8:	13050513          	addi	a0,a0,304 # 1c000130 <__clz_tab+0x114>
1c009fcc:	5c3020ef          	jal	ra,1c00cd8e <puts>
1c009fd0:	02040913          	addi	s2,s0,32
1c009fd4:	84a2                	mv	s1,s0
1c009fd6:	1c0009b7          	lui	s3,0x1c000
1c009fda:	0004c583          	lbu	a1,0(s1)
1c009fde:	13898513          	addi	a0,s3,312 # 1c000138 <__clz_tab+0x11c>
1c009fe2:	0485                	addi	s1,s1,1
1c009fe4:	66d020ef          	jal	ra,1c00ce50 <printf>
1c009fe8:	ff2499e3          	bne	s1,s2,1c009fda <main+0x1e86>
1c009fec:	4529                	li	a0,10
1c009fee:	61d020ef          	jal	ra,1c00ce0a <putchar>
1c009ff2:	6705                	lui	a4,0x1
1c009ff4:	77fd                	lui	a5,0xfffff
1c009ff6:	9a070713          	addi	a4,a4,-1632 # 9a0 <__CTOR_LIST__-0x1bfff664>
1c009ffa:	68078793          	addi	a5,a5,1664 # fffff680 <__l2_shared_end+0xe3fef680>
1c009ffe:	970a                	add	a4,a4,sp
1c00a000:	97ba                	add	a5,a5,a4
1c00a002:	a019                	j	1c00a008 <main+0x1eb4>
1c00a004:	03240f63          	beq	s0,s2,1c00a042 <main+0x1eee>
1c00a008:	00044683          	lbu	a3,0(s0)
1c00a00c:	0007c703          	lbu	a4,0(a5)
1c00a010:	0405                	addi	s0,s0,1
1c00a012:	0785                	addi	a5,a5,1
1c00a014:	fee688e3          	beq	a3,a4,1c00a004 <main+0x1eb0>
1c00a018:	1c000537          	lui	a0,0x1c000
1c00a01c:	14050513          	addi	a0,a0,320 # 1c000140 <__clz_tab+0x124>
1c00a020:	56f020ef          	jal	ra,1c00cd8e <puts>
1c00a024:	557d                	li	a0,-1
1c00a026:	6179                	addi	sp,sp,464
1c00a028:	7ec12083          	lw	ra,2028(sp)
1c00a02c:	7e812403          	lw	s0,2024(sp)
1c00a030:	7e412483          	lw	s1,2020(sp)
1c00a034:	7e012903          	lw	s2,2016(sp)
1c00a038:	7dc12983          	lw	s3,2012(sp)
1c00a03c:	7f010113          	addi	sp,sp,2032
1c00a040:	8082                	ret
1c00a042:	4501                	li	a0,0
1c00a044:	b7cd                	j	1c00a026 <main+0x1ed2>

1c00a046 <pos_fll_init>:
1c00a046:	1101                	addi	sp,sp,-32
1c00a048:	1a1005b7          	lui	a1,0x1a100
1c00a04c:	c64e                	sw	s3,12(sp)
1c00a04e:	00451613          	slli	a2,a0,0x4
1c00a052:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00a056:	99b2                	add	s3,s3,a2
1c00a058:	0009a703          	lw	a4,0(s3)
1c00a05c:	ca26                	sw	s1,20(sp)
1c00a05e:	ce06                	sw	ra,28(sp)
1c00a060:	cc22                	sw	s0,24(sp)
1c00a062:	c84a                	sw	s2,16(sp)
1c00a064:	c452                	sw	s4,8(sp)
1c00a066:	84aa                	mv	s1,a0
1c00a068:	87ba                	mv	a5,a4
1c00a06a:	04074763          	bltz	a4,1c00a0b8 <pos_fll_init+0x72>
1c00a06e:	00858693          	addi	a3,a1,8
1c00a072:	96b2                	add	a3,a3,a2
1c00a074:	429c                	lw	a5,0(a3)
1c00a076:	f0000537          	lui	a0,0xf0000
1c00a07a:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c00a07e:	8fe9                	and	a5,a5,a0
1c00a080:	00502537          	lui	a0,0x502
1c00a084:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c00a088:	8fc9                	or	a5,a5,a0
1c00a08a:	05b1                	addi	a1,a1,12
1c00a08c:	c29c                	sw	a5,0(a3)
1c00a08e:	962e                	add	a2,a2,a1
1c00a090:	4214                	lw	a3,0(a2)
1c00a092:	fc0107b7          	lui	a5,0xfc010
1c00a096:	17fd                	addi	a5,a5,-1
1c00a098:	01875593          	srli	a1,a4,0x18
1c00a09c:	8efd                	and	a3,a3,a5
1c00a09e:	0c05e593          	ori	a1,a1,192
1c00a0a2:	00871793          	slli	a5,a4,0x8
1c00a0a6:	014c0537          	lui	a0,0x14c0
1c00a0aa:	8ec9                	or	a3,a3,a0
1c00a0ac:	05e2                	slli	a1,a1,0x18
1c00a0ae:	83a1                	srli	a5,a5,0x8
1c00a0b0:	c214                	sw	a3,0(a2)
1c00a0b2:	8fcd                	or	a5,a5,a1
1c00a0b4:	00f9a023          	sw	a5,0(s3)
1c00a0b8:	1c006437          	lui	s0,0x1c006
1c00a0bc:	26440413          	addi	s0,s0,612 # 1c006264 <pos_fll_freq>
1c00a0c0:	00249a13          	slli	s4,s1,0x2
1c00a0c4:	014406b3          	add	a3,s0,s4
1c00a0c8:	0006a903          	lw	s2,0(a3)
1c00a0cc:	02091d63          	bnez	s2,1c00a106 <pos_fll_init+0xc0>
1c00a0d0:	83e9                	srli	a5,a5,0x1a
1c00a0d2:	0742                	slli	a4,a4,0x10
1c00a0d4:	8341                	srli	a4,a4,0x10
1c00a0d6:	8bbd                	andi	a5,a5,15
1c00a0d8:	073e                	slli	a4,a4,0xf
1c00a0da:	17fd                	addi	a5,a5,-1
1c00a0dc:	00f75933          	srl	s2,a4,a5
1c00a0e0:	0126a023          	sw	s2,0(a3)
1c00a0e4:	1c0066b7          	lui	a3,0x1c006
1c00a0e8:	26068693          	addi	a3,a3,608 # 1c006260 <pos_fll_is_on>
1c00a0ec:	96a6                	add	a3,a3,s1
1c00a0ee:	4785                	li	a5,1
1c00a0f0:	00f68023          	sb	a5,0(a3)
1c00a0f4:	40f2                	lw	ra,28(sp)
1c00a0f6:	4462                	lw	s0,24(sp)
1c00a0f8:	44d2                	lw	s1,20(sp)
1c00a0fa:	49b2                	lw	s3,12(sp)
1c00a0fc:	4a22                	lw	s4,8(sp)
1c00a0fe:	854a                	mv	a0,s2
1c00a100:	4942                	lw	s2,16(sp)
1c00a102:	6105                	addi	sp,sp,32
1c00a104:	8082                	ret
1c00a106:	854a                	mv	a0,s2
1c00a108:	800fe0ef          	jal	ra,1c008108 <__clzsi2>
1c00a10c:	1579                	addi	a0,a0,-2
1c00a10e:	8105                	srli	a0,a0,0x1
1c00a110:	c939                	beqz	a0,1c00a166 <pos_fll_init+0x120>
1c00a112:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c00a116:	1c0066b7          	lui	a3,0x1c006
1c00a11a:	4785                	li	a5,1
1c00a11c:	00c797b3          	sll	a5,a5,a2
1c00a120:	00a91733          	sll	a4,s2,a0
1c00a124:	26068693          	addi	a3,a3,608 # 1c006260 <pos_fll_is_on>
1c00a128:	7661                	lui	a2,0xffff8
1c00a12a:	8e79                	and	a2,a2,a4
1c00a12c:	009685b3          	add	a1,a3,s1
1c00a130:	97b2                	add	a5,a5,a2
1c00a132:	0005c603          	lbu	a2,0(a1)
1c00a136:	9452                	add	s0,s0,s4
1c00a138:	00a7d7b3          	srl	a5,a5,a0
1c00a13c:	c01c                	sw	a5,0(s0)
1c00a13e:	d65d                	beqz	a2,1c00a0ec <pos_fll_init+0xa6>
1c00a140:	0009a783          	lw	a5,0(s3)
1c00a144:	833d                	srli	a4,a4,0xf
1c00a146:	0742                	slli	a4,a4,0x10
1c00a148:	7641                	lui	a2,0xffff0
1c00a14a:	8341                	srli	a4,a4,0x10
1c00a14c:	8ff1                	and	a5,a5,a2
1c00a14e:	8fd9                	or	a5,a5,a4
1c00a150:	0505                	addi	a0,a0,1
1c00a152:	c4000737          	lui	a4,0xc4000
1c00a156:	893d                	andi	a0,a0,15
1c00a158:	177d                	addi	a4,a4,-1
1c00a15a:	056a                	slli	a0,a0,0x1a
1c00a15c:	8ff9                	and	a5,a5,a4
1c00a15e:	8d5d                	or	a0,a0,a5
1c00a160:	00a9a023          	sw	a0,0(s3)
1c00a164:	b761                	j	1c00a0ec <pos_fll_init+0xa6>
1c00a166:	4505                	li	a0,1
1c00a168:	b76d                	j	1c00a112 <pos_fll_init+0xcc>

1c00a16a <pos_fll_constructor>:
1c00a16a:	1c0067b7          	lui	a5,0x1c006
1c00a16e:	26478793          	addi	a5,a5,612 # 1c006264 <pos_fll_freq>
1c00a172:	0007a023          	sw	zero,0(a5)
1c00a176:	0007a223          	sw	zero,4(a5)
1c00a17a:	1c0067b7          	lui	a5,0x1c006
1c00a17e:	26079023          	sh	zero,608(a5) # 1c006260 <pos_fll_is_on>
1c00a182:	8082                	ret

1c00a184 <pos_soc_init>:
1c00a184:	1141                	addi	sp,sp,-16
1c00a186:	c606                	sw	ra,12(sp)
1c00a188:	c422                	sw	s0,8(sp)
1c00a18a:	37c5                	jal	1c00a16a <pos_fll_constructor>
1c00a18c:	4501                	li	a0,0
1c00a18e:	3d65                	jal	1c00a046 <pos_fll_init>
1c00a190:	1c006437          	lui	s0,0x1c006
1c00a194:	87aa                	mv	a5,a0
1c00a196:	26c40413          	addi	s0,s0,620 # 1c00626c <pos_freq_domains>
1c00a19a:	4505                	li	a0,1
1c00a19c:	c01c                	sw	a5,0(s0)
1c00a19e:	3565                	jal	1c00a046 <pos_fll_init>
1c00a1a0:	40b2                	lw	ra,12(sp)
1c00a1a2:	c408                	sw	a0,8(s0)
1c00a1a4:	4422                	lw	s0,8(sp)
1c00a1a6:	0141                	addi	sp,sp,16
1c00a1a8:	8082                	ret

1c00a1aa <KeccakF1600_StatePermute>:
1c00a1aa:	1a400837          	lui	a6,0x1a400
1c00a1ae:	87aa                	mv	a5,a0
1c00a1b0:	0c850613          	addi	a2,a0,200
1c00a1b4:	1141                	addi	sp,sp,-16
1c00a1b6:	40a80533          	sub	a0,a6,a0
1c00a1ba:	4394                	lw	a3,0(a5)
1c00a1bc:	00f50733          	add	a4,a0,a5
1c00a1c0:	0791                	addi	a5,a5,4
1c00a1c2:	c314                	sw	a3,0(a4)
1c00a1c4:	fec79be3          	bne	a5,a2,1c00a1ba <KeccakF1600_StatePermute+0x10>
1c00a1c8:	4785                	li	a5,1
1c00a1ca:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00a1ce:	1a400737          	lui	a4,0x1a400
1c00a1d2:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00a1d6:	8b85                	andi	a5,a5,1
1c00a1d8:	dfed                	beqz	a5,1c00a1d2 <KeccakF1600_StatePermute+0x28>
1c00a1da:	c602                	sw	zero,12(sp)
1c00a1dc:	4732                	lw	a4,12(sp)
1c00a1de:	03100793          	li	a5,49
1c00a1e2:	02e7c663          	blt	a5,a4,1c00a20e <KeccakF1600_StatePermute+0x64>
1c00a1e6:	1a400637          	lui	a2,0x1a400
1c00a1ea:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00a1ee:	03100513          	li	a0,49
1c00a1f2:	4732                	lw	a4,12(sp)
1c00a1f4:	47b2                	lw	a5,12(sp)
1c00a1f6:	070a                	slli	a4,a4,0x2
1c00a1f8:	9732                	add	a4,a4,a2
1c00a1fa:	4314                	lw	a3,0(a4)
1c00a1fc:	4732                	lw	a4,12(sp)
1c00a1fe:	078a                	slli	a5,a5,0x2
1c00a200:	97ae                	add	a5,a5,a1
1c00a202:	0705                	addi	a4,a4,1
1c00a204:	c63a                	sw	a4,12(sp)
1c00a206:	4732                	lw	a4,12(sp)
1c00a208:	c394                	sw	a3,0(a5)
1c00a20a:	fee554e3          	bge	a0,a4,1c00a1f2 <KeccakF1600_StatePermute+0x48>
1c00a20e:	0141                	addi	sp,sp,16
1c00a210:	8082                	ret

1c00a212 <KYBER_poly_ntt>:
1c00a212:	1a4007b7          	lui	a5,0x1a400
1c00a216:	4705                	li	a4,1
1c00a218:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00a21c:	3007a423          	sw	zero,776(a5)
1c00a220:	20050693          	addi	a3,a0,512
1c00a224:	1a400737          	lui	a4,0x1a400
1c00a228:	411c                	lw	a5,0(a0)
1c00a22a:	0511                	addi	a0,a0,4
1c00a22c:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00a230:	fed51ce3          	bne	a0,a3,1c00a228 <KYBER_poly_ntt+0x16>
1c00a234:	08000793          	li	a5,128
1c00a238:	30f72423          	sw	a5,776(a4)
1c00a23c:	30072423          	sw	zero,776(a4)
1c00a240:	1a400737          	lui	a4,0x1a400
1c00a244:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00a248:	8b85                	andi	a5,a5,1
1c00a24a:	dfed                	beqz	a5,1c00a244 <KYBER_poly_ntt+0x32>
1c00a24c:	47c1                	li	a5,16
1c00a24e:	30f72423          	sw	a5,776(a4)
1c00a252:	30072423          	sw	zero,776(a4)
1c00a256:	20058693          	addi	a3,a1,512
1c00a25a:	1a400737          	lui	a4,0x1a400
1c00a25e:	0001                	nop
1c00a260:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00a264:	0591                	addi	a1,a1,4
1c00a266:	fef5ae23          	sw	a5,-4(a1)
1c00a26a:	fed59ae3          	bne	a1,a3,1c00a25e <KYBER_poly_ntt+0x4c>
1c00a26e:	8082                	ret

1c00a270 <KYBER_poly_intt>:
1c00a270:	1a4007b7          	lui	a5,0x1a400
1c00a274:	4709                	li	a4,2
1c00a276:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c00a27a:	3007a423          	sw	zero,776(a5)
1c00a27e:	20050693          	addi	a3,a0,512
1c00a282:	1a400737          	lui	a4,0x1a400
1c00a286:	411c                	lw	a5,0(a0)
1c00a288:	0511                	addi	a0,a0,4
1c00a28a:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00a28e:	fed51ce3          	bne	a0,a3,1c00a286 <KYBER_poly_intt+0x16>
1c00a292:	20000793          	li	a5,512
1c00a296:	30f72423          	sw	a5,776(a4)
1c00a29a:	30072423          	sw	zero,776(a4)
1c00a29e:	1a400737          	lui	a4,0x1a400
1c00a2a2:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00a2a6:	8b85                	andi	a5,a5,1
1c00a2a8:	dfed                	beqz	a5,1c00a2a2 <KYBER_poly_intt+0x32>
1c00a2aa:	47c1                	li	a5,16
1c00a2ac:	30f72423          	sw	a5,776(a4)
1c00a2b0:	30072423          	sw	zero,776(a4)
1c00a2b4:	20058693          	addi	a3,a1,512
1c00a2b8:	1a400737          	lui	a4,0x1a400
1c00a2bc:	0001                	nop
1c00a2be:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00a2c2:	0591                	addi	a1,a1,4
1c00a2c4:	fef5ae23          	sw	a5,-4(a1)
1c00a2c8:	fed59ae3          	bne	a1,a3,1c00a2bc <KYBER_poly_intt+0x4c>
1c00a2cc:	8082                	ret

1c00a2ce <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>:
1c00a2ce:	002496b7          	lui	a3,0x249
1c00a2d2:	0c058e13          	addi	t3,a1,192
1c00a2d6:	24968693          	addi	a3,a3,585 # 249249 <__CTOR_LIST__-0x1bdb6dbb>
1c00a2da:	0015c703          	lbu	a4,1(a1)
1c00a2de:	0025c783          	lbu	a5,2(a1)
1c00a2e2:	0005c603          	lbu	a2,0(a1)
1c00a2e6:	0722                	slli	a4,a4,0x8
1c00a2e8:	07c2                	slli	a5,a5,0x10
1c00a2ea:	8f5d                	or	a4,a4,a5
1c00a2ec:	8f51                	or	a4,a4,a2
1c00a2ee:	00175793          	srli	a5,a4,0x1
1c00a2f2:	00275613          	srli	a2,a4,0x2
1c00a2f6:	8e75                	and	a2,a2,a3
1c00a2f8:	8ff5                	and	a5,a5,a3
1c00a2fa:	8f75                	and	a4,a4,a3
1c00a2fc:	97b2                	add	a5,a5,a2
1c00a2fe:	97ba                	add	a5,a5,a4
1c00a300:	0037df13          	srli	t5,a5,0x3
1c00a304:	0067d813          	srli	a6,a5,0x6
1c00a308:	0097de93          	srli	t4,a5,0x9
1c00a30c:	00c7d613          	srli	a2,a5,0xc
1c00a310:	00f7d313          	srli	t1,a5,0xf
1c00a314:	0127d713          	srli	a4,a5,0x12
1c00a318:	0077f893          	andi	a7,a5,7
1c00a31c:	007f7f13          	andi	t5,t5,7
1c00a320:	00787813          	andi	a6,a6,7
1c00a324:	007efe93          	andi	t4,t4,7
1c00a328:	8a1d                	andi	a2,a2,7
1c00a32a:	00737313          	andi	t1,t1,7
1c00a32e:	8b1d                	andi	a4,a4,7
1c00a330:	83d5                	srli	a5,a5,0x15
1c00a332:	41e888b3          	sub	a7,a7,t5
1c00a336:	41d80833          	sub	a6,a6,t4
1c00a33a:	40660633          	sub	a2,a2,t1
1c00a33e:	40f707b3          	sub	a5,a4,a5
1c00a342:	01151023          	sh	a7,0(a0)
1c00a346:	01051123          	sh	a6,2(a0)
1c00a34a:	00c51223          	sh	a2,4(a0)
1c00a34e:	00f51323          	sh	a5,6(a0)
1c00a352:	058d                	addi	a1,a1,3
1c00a354:	0521                	addi	a0,a0,8
1c00a356:	f8be12e3          	bne	t3,a1,1c00a2da <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1+0xc>
1c00a35a:	8082                	ret

1c00a35c <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>:
1c00a35c:	1101                	addi	sp,sp,-32
1c00a35e:	55555f37          	lui	t5,0x55555
1c00a362:	ce22                	sw	s0,28(sp)
1c00a364:	cc26                	sw	s1,24(sp)
1c00a366:	ca4a                	sw	s2,20(sp)
1c00a368:	c84e                	sw	s3,16(sp)
1c00a36a:	c652                	sw	s4,12(sp)
1c00a36c:	20050f93          	addi	t6,a0,512
1c00a370:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00a374:	0015c683          	lbu	a3,1(a1)
1c00a378:	0005c603          	lbu	a2,0(a1)
1c00a37c:	0025c783          	lbu	a5,2(a1)
1c00a380:	0035c703          	lbu	a4,3(a1)
1c00a384:	06a2                	slli	a3,a3,0x8
1c00a386:	8ed1                	or	a3,a3,a2
1c00a388:	07c2                	slli	a5,a5,0x10
1c00a38a:	8fd5                	or	a5,a5,a3
1c00a38c:	0762                	slli	a4,a4,0x18
1c00a38e:	8f5d                	or	a4,a4,a5
1c00a390:	00175793          	srli	a5,a4,0x1
1c00a394:	01e7f7b3          	and	a5,a5,t5
1c00a398:	01e77733          	and	a4,a4,t5
1c00a39c:	97ba                	add	a5,a5,a4
1c00a39e:	0027da13          	srli	s4,a5,0x2
1c00a3a2:	0047d313          	srli	t1,a5,0x4
1c00a3a6:	0067d993          	srli	s3,a5,0x6
1c00a3aa:	0087d893          	srli	a7,a5,0x8
1c00a3ae:	00a7d913          	srli	s2,a5,0xa
1c00a3b2:	00c7d813          	srli	a6,a5,0xc
1c00a3b6:	00e7d493          	srli	s1,a5,0xe
1c00a3ba:	0107d613          	srli	a2,a5,0x10
1c00a3be:	0127d413          	srli	s0,a5,0x12
1c00a3c2:	0147d693          	srli	a3,a5,0x14
1c00a3c6:	0167d393          	srli	t2,a5,0x16
1c00a3ca:	0187d713          	srli	a4,a5,0x18
1c00a3ce:	01a7d293          	srli	t0,a5,0x1a
1c00a3d2:	01c7de93          	srli	t4,a5,0x1c
1c00a3d6:	0037fe13          	andi	t3,a5,3
1c00a3da:	003a7a13          	andi	s4,s4,3
1c00a3de:	00337313          	andi	t1,t1,3
1c00a3e2:	0039f993          	andi	s3,s3,3
1c00a3e6:	0038f893          	andi	a7,a7,3
1c00a3ea:	00397913          	andi	s2,s2,3
1c00a3ee:	00387813          	andi	a6,a6,3
1c00a3f2:	888d                	andi	s1,s1,3
1c00a3f4:	8a0d                	andi	a2,a2,3
1c00a3f6:	880d                	andi	s0,s0,3
1c00a3f8:	8a8d                	andi	a3,a3,3
1c00a3fa:	0033f393          	andi	t2,t2,3
1c00a3fe:	8b0d                	andi	a4,a4,3
1c00a400:	0032f293          	andi	t0,t0,3
1c00a404:	003efe93          	andi	t4,t4,3
1c00a408:	83f9                	srli	a5,a5,0x1e
1c00a40a:	414e0e33          	sub	t3,t3,s4
1c00a40e:	41330333          	sub	t1,t1,s3
1c00a412:	412888b3          	sub	a7,a7,s2
1c00a416:	40980833          	sub	a6,a6,s1
1c00a41a:	8e01                	sub	a2,a2,s0
1c00a41c:	407686b3          	sub	a3,a3,t2
1c00a420:	40570733          	sub	a4,a4,t0
1c00a424:	40fe87b3          	sub	a5,t4,a5
1c00a428:	01c51023          	sh	t3,0(a0)
1c00a42c:	00651123          	sh	t1,2(a0)
1c00a430:	01151223          	sh	a7,4(a0)
1c00a434:	01051323          	sh	a6,6(a0)
1c00a438:	00c51423          	sh	a2,8(a0)
1c00a43c:	00d51523          	sh	a3,10(a0)
1c00a440:	00e51623          	sh	a4,12(a0)
1c00a444:	00f51723          	sh	a5,14(a0)
1c00a448:	0541                	addi	a0,a0,16
1c00a44a:	0591                	addi	a1,a1,4
1c00a44c:	f3f514e3          	bne	a0,t6,1c00a374 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2+0x18>
1c00a450:	4472                	lw	s0,28(sp)
1c00a452:	44e2                	lw	s1,24(sp)
1c00a454:	4952                	lw	s2,20(sp)
1c00a456:	49c2                	lw	s3,16(sp)
1c00a458:	4a32                	lw	s4,12(sp)
1c00a45a:	6105                	addi	sp,sp,32
1c00a45c:	8082                	ret

1c00a45e <keccak_absorb.constprop.1>:
1c00a45e:	7151                	addi	sp,sp,-240
1c00a460:	d3a6                	sw	s1,228(sp)
1c00a462:	cfce                	sw	s3,220(sp)
1c00a464:	cdd2                	sw	s4,216(sp)
1c00a466:	cbd6                	sw	s5,212(sp)
1c00a468:	84b6                	mv	s1,a3
1c00a46a:	d786                	sw	ra,236(sp)
1c00a46c:	d5a2                	sw	s0,232(sp)
1c00a46e:	d1ca                	sw	s2,224(sp)
1c00a470:	c9da                	sw	s6,208(sp)
1c00a472:	8a2a                	mv	s4,a0
1c00a474:	87ae                	mv	a5,a1
1c00a476:	8ab2                	mv	s5,a2
1c00a478:	89aa                	mv	s3,a0
1c00a47a:	0c850693          	addi	a3,a0,200
1c00a47e:	872a                	mv	a4,a0
1c00a480:	4581                	li	a1,0
1c00a482:	4601                	li	a2,0
1c00a484:	c30c                	sw	a1,0(a4)
1c00a486:	c350                	sw	a2,4(a4)
1c00a488:	0721                	addi	a4,a4,8
1c00a48a:	fee69be3          	bne	a3,a4,1c00a480 <keccak_absorb.constprop.1+0x22>
1c00a48e:	08700713          	li	a4,135
1c00a492:	09577363          	bgeu	a4,s5,1c00a518 <keccak_absorb.constprop.1+0xba>
1c00a496:	08878b13          	addi	s6,a5,136
1c00a49a:	895a                	mv	s2,s6
1c00a49c:	08700413          	li	s0,135
1c00a4a0:	86d2                	mv	a3,s4
1c00a4a2:	0017c703          	lbu	a4,1(a5)
1c00a4a6:	0027ce03          	lbu	t3,2(a5)
1c00a4aa:	0057c803          	lbu	a6,5(a5)
1c00a4ae:	0047cf03          	lbu	t5,4(a5)
1c00a4b2:	0067c503          	lbu	a0,6(a5)
1c00a4b6:	0007ce83          	lbu	t4,0(a5)
1c00a4ba:	0037c583          	lbu	a1,3(a5)
1c00a4be:	0077c603          	lbu	a2,7(a5)
1c00a4c2:	0722                	slli	a4,a4,0x8
1c00a4c4:	0e42                	slli	t3,t3,0x10
1c00a4c6:	0822                	slli	a6,a6,0x8
1c00a4c8:	0006a303          	lw	t1,0(a3)
1c00a4cc:	0046a883          	lw	a7,4(a3)
1c00a4d0:	01c76733          	or	a4,a4,t3
1c00a4d4:	01e86833          	or	a6,a6,t5
1c00a4d8:	0542                	slli	a0,a0,0x10
1c00a4da:	01d76733          	or	a4,a4,t4
1c00a4de:	05e2                	slli	a1,a1,0x18
1c00a4e0:	01056533          	or	a0,a0,a6
1c00a4e4:	0662                	slli	a2,a2,0x18
1c00a4e6:	8f4d                	or	a4,a4,a1
1c00a4e8:	8e49                	or	a2,a2,a0
1c00a4ea:	00e34733          	xor	a4,t1,a4
1c00a4ee:	00c8c633          	xor	a2,a7,a2
1c00a4f2:	c298                	sw	a4,0(a3)
1c00a4f4:	c2d0                	sw	a2,4(a3)
1c00a4f6:	07a1                	addi	a5,a5,8
1c00a4f8:	06a1                	addi	a3,a3,8
1c00a4fa:	faf914e3          	bne	s2,a5,1c00a4a2 <keccak_absorb.constprop.1+0x44>
1c00a4fe:	85d2                	mv	a1,s4
1c00a500:	8552                	mv	a0,s4
1c00a502:	3165                	jal	1c00a1aa <KeccakF1600_StatePermute>
1c00a504:	f78a8a93          	addi	s5,s5,-136
1c00a508:	08890913          	addi	s2,s2,136
1c00a50c:	87da                	mv	a5,s6
1c00a50e:	01547563          	bgeu	s0,s5,1c00a518 <keccak_absorb.constprop.1+0xba>
1c00a512:	088b0b13          	addi	s6,s6,136
1c00a516:	b769                	j	1c00a4a0 <keccak_absorb.constprop.1+0x42>
1c00a518:	0038                	addi	a4,sp,8
1c00a51a:	09010e13          	addi	t3,sp,144
1c00a51e:	86ba                	mv	a3,a4
1c00a520:	0006a023          	sw	zero,0(a3)
1c00a524:	0691                	addi	a3,a3,4
1c00a526:	fede1de3          	bne	t3,a3,1c00a520 <keccak_absorb.constprop.1+0xc2>
1c00a52a:	080a8263          	beqz	s5,1c00a5ae <keccak_absorb.constprop.1+0x150>
1c00a52e:	fffa8693          	addi	a3,s5,-1
1c00a532:	4609                	li	a2,2
1c00a534:	10d67163          	bgeu	a2,a3,1c00a636 <keccak_absorb.constprop.1+0x1d8>
1c00a538:	ffcaf313          	andi	t1,s5,-4
1c00a53c:	86be                	mv	a3,a5
1c00a53e:	933e                	add	t1,t1,a5
1c00a540:	883a                	mv	a6,a4
1c00a542:	0016c503          	lbu	a0,1(a3)
1c00a546:	0006c883          	lbu	a7,0(a3)
1c00a54a:	0026c583          	lbu	a1,2(a3)
1c00a54e:	0036c603          	lbu	a2,3(a3)
1c00a552:	0522                	slli	a0,a0,0x8
1c00a554:	01156533          	or	a0,a0,a7
1c00a558:	05c2                	slli	a1,a1,0x10
1c00a55a:	8dc9                	or	a1,a1,a0
1c00a55c:	0662                	slli	a2,a2,0x18
1c00a55e:	8e4d                	or	a2,a2,a1
1c00a560:	00c82023          	sw	a2,0(a6)
1c00a564:	0691                	addi	a3,a3,4
1c00a566:	0811                	addi	a6,a6,4
1c00a568:	fcd31de3          	bne	t1,a3,1c00a542 <keccak_absorb.constprop.1+0xe4>
1c00a56c:	ffcaf693          	andi	a3,s5,-4
1c00a570:	02da8f63          	beq	s5,a3,1c00a5ae <keccak_absorb.constprop.1+0x150>
1c00a574:	00d78633          	add	a2,a5,a3
1c00a578:	00064503          	lbu	a0,0(a2)
1c00a57c:	098c                	addi	a1,sp,208
1c00a57e:	95b6                	add	a1,a1,a3
1c00a580:	00168613          	addi	a2,a3,1
1c00a584:	f2a58c23          	sb	a0,-200(a1)
1c00a588:	03567363          	bgeu	a2,s5,1c00a5ae <keccak_absorb.constprop.1+0x150>
1c00a58c:	00c785b3          	add	a1,a5,a2
1c00a590:	0005c583          	lbu	a1,0(a1)
1c00a594:	0988                	addi	a0,sp,208
1c00a596:	962a                	add	a2,a2,a0
1c00a598:	0689                	addi	a3,a3,2
1c00a59a:	f2b60c23          	sb	a1,-200(a2)
1c00a59e:	0156f863          	bgeu	a3,s5,1c00a5ae <keccak_absorb.constprop.1+0x150>
1c00a5a2:	97b6                	add	a5,a5,a3
1c00a5a4:	0007c783          	lbu	a5,0(a5)
1c00a5a8:	96aa                	add	a3,a3,a0
1c00a5aa:	f2f68c23          	sb	a5,-200(a3)
1c00a5ae:	099c                	addi	a5,sp,208
1c00a5b0:	9abe                	add	s5,s5,a5
1c00a5b2:	f29a8c23          	sb	s1,-200(s5)
1c00a5b6:	08f14783          	lbu	a5,143(sp)
1c00a5ba:	f807e793          	ori	a5,a5,-128
1c00a5be:	08f107a3          	sb	a5,143(sp)
1c00a5c2:	00174783          	lbu	a5,1(a4)
1c00a5c6:	00274303          	lbu	t1,2(a4)
1c00a5ca:	00574503          	lbu	a0,5(a4)
1c00a5ce:	00474f03          	lbu	t5,4(a4)
1c00a5d2:	00674583          	lbu	a1,6(a4)
1c00a5d6:	00074e83          	lbu	t4,0(a4)
1c00a5da:	00374603          	lbu	a2,3(a4)
1c00a5de:	00774683          	lbu	a3,7(a4)
1c00a5e2:	07a2                	slli	a5,a5,0x8
1c00a5e4:	0342                	slli	t1,t1,0x10
1c00a5e6:	0522                	slli	a0,a0,0x8
1c00a5e8:	0009a883          	lw	a7,0(s3)
1c00a5ec:	0049a803          	lw	a6,4(s3)
1c00a5f0:	0067e7b3          	or	a5,a5,t1
1c00a5f4:	01e56533          	or	a0,a0,t5
1c00a5f8:	05c2                	slli	a1,a1,0x10
1c00a5fa:	01d7e7b3          	or	a5,a5,t4
1c00a5fe:	0662                	slli	a2,a2,0x18
1c00a600:	8dc9                	or	a1,a1,a0
1c00a602:	06e2                	slli	a3,a3,0x18
1c00a604:	8e5d                	or	a2,a2,a5
1c00a606:	00b6e7b3          	or	a5,a3,a1
1c00a60a:	00c8c633          	xor	a2,a7,a2
1c00a60e:	00f847b3          	xor	a5,a6,a5
1c00a612:	00c9a023          	sw	a2,0(s3)
1c00a616:	00f9a223          	sw	a5,4(s3)
1c00a61a:	0721                	addi	a4,a4,8
1c00a61c:	09a1                	addi	s3,s3,8
1c00a61e:	faee12e3          	bne	t3,a4,1c00a5c2 <keccak_absorb.constprop.1+0x164>
1c00a622:	50be                	lw	ra,236(sp)
1c00a624:	542e                	lw	s0,232(sp)
1c00a626:	549e                	lw	s1,228(sp)
1c00a628:	590e                	lw	s2,224(sp)
1c00a62a:	49fe                	lw	s3,220(sp)
1c00a62c:	4a6e                	lw	s4,216(sp)
1c00a62e:	4ade                	lw	s5,212(sp)
1c00a630:	4b4e                	lw	s6,208(sp)
1c00a632:	616d                	addi	sp,sp,240
1c00a634:	8082                	ret
1c00a636:	4681                	li	a3,0
1c00a638:	bf35                	j	1c00a574 <keccak_absorb.constprop.1+0x116>

1c00a63a <shake128_absorb>:
1c00a63a:	7151                	addi	sp,sp,-240
1c00a63c:	cfce                	sw	s3,220(sp)
1c00a63e:	89aa                	mv	s3,a0
1c00a640:	0c800513          	li	a0,200
1c00a644:	d5a2                	sw	s0,232(sp)
1c00a646:	d3a6                	sw	s1,228(sp)
1c00a648:	d786                	sw	ra,236(sp)
1c00a64a:	d1ca                	sw	s2,224(sp)
1c00a64c:	842e                	mv	s0,a1
1c00a64e:	84b2                	mv	s1,a2
1c00a650:	119030ef          	jal	ra,1c00df68 <pi_l2_malloc>
1c00a654:	00a9a023          	sw	a0,0(s3)
1c00a658:	1c050363          	beqz	a0,1c00a81e <shake128_absorb+0x1e4>
1c00a65c:	892a                	mv	s2,a0
1c00a65e:	0c850713          	addi	a4,a0,200
1c00a662:	87aa                	mv	a5,a0
1c00a664:	4601                	li	a2,0
1c00a666:	4681                	li	a3,0
1c00a668:	c390                	sw	a2,0(a5)
1c00a66a:	c3d4                	sw	a3,4(a5)
1c00a66c:	07a1                	addi	a5,a5,8
1c00a66e:	fef71be3          	bne	a4,a5,1c00a664 <shake128_absorb+0x2a>
1c00a672:	0a700793          	li	a5,167
1c00a676:	0897f063          	bgeu	a5,s1,1c00a6f6 <shake128_absorb+0xbc>
1c00a67a:	0a700993          	li	s3,167
1c00a67e:	87a2                	mv	a5,s0
1c00a680:	40890eb3          	sub	t4,s2,s0
1c00a684:	0a840413          	addi	s0,s0,168
1c00a688:	0017c703          	lbu	a4,1(a5)
1c00a68c:	0027ce03          	lbu	t3,2(a5)
1c00a690:	0057c503          	lbu	a0,5(a5)
1c00a694:	0047cf83          	lbu	t6,4(a5)
1c00a698:	0067c583          	lbu	a1,6(a5)
1c00a69c:	0007cf03          	lbu	t5,0(a5)
1c00a6a0:	0037c603          	lbu	a2,3(a5)
1c00a6a4:	0077c683          	lbu	a3,7(a5)
1c00a6a8:	00fe8833          	add	a6,t4,a5
1c00a6ac:	0722                	slli	a4,a4,0x8
1c00a6ae:	0e42                	slli	t3,t3,0x10
1c00a6b0:	0522                	slli	a0,a0,0x8
1c00a6b2:	00082303          	lw	t1,0(a6)
1c00a6b6:	00482883          	lw	a7,4(a6)
1c00a6ba:	01c76733          	or	a4,a4,t3
1c00a6be:	01f56533          	or	a0,a0,t6
1c00a6c2:	05c2                	slli	a1,a1,0x10
1c00a6c4:	01e76733          	or	a4,a4,t5
1c00a6c8:	0662                	slli	a2,a2,0x18
1c00a6ca:	8dc9                	or	a1,a1,a0
1c00a6cc:	06e2                	slli	a3,a3,0x18
1c00a6ce:	8f51                	or	a4,a4,a2
1c00a6d0:	8ecd                	or	a3,a3,a1
1c00a6d2:	00e34733          	xor	a4,t1,a4
1c00a6d6:	00d8c6b3          	xor	a3,a7,a3
1c00a6da:	00e82023          	sw	a4,0(a6)
1c00a6de:	00d82223          	sw	a3,4(a6)
1c00a6e2:	07a1                	addi	a5,a5,8
1c00a6e4:	faf412e3          	bne	s0,a5,1c00a688 <shake128_absorb+0x4e>
1c00a6e8:	f5848493          	addi	s1,s1,-168
1c00a6ec:	85ca                	mv	a1,s2
1c00a6ee:	854a                	mv	a0,s2
1c00a6f0:	3c6d                	jal	1c00a1aa <KeccakF1600_StatePermute>
1c00a6f2:	f899e6e3          	bltu	s3,s1,1c00a67e <shake128_absorb+0x44>
1c00a6f6:	0b010313          	addi	t1,sp,176
1c00a6fa:	003c                	addi	a5,sp,8
1c00a6fc:	0007a023          	sw	zero,0(a5)
1c00a700:	0791                	addi	a5,a5,4
1c00a702:	fef31de3          	bne	t1,a5,1c00a6fc <shake128_absorb+0xc2>
1c00a706:	c0d9                	beqz	s1,1c00a78c <shake128_absorb+0x152>
1c00a708:	fff48793          	addi	a5,s1,-1
1c00a70c:	4709                	li	a4,2
1c00a70e:	10f77663          	bgeu	a4,a5,1c00a81a <shake128_absorb+0x1e0>
1c00a712:	ffc4f593          	andi	a1,s1,-4
1c00a716:	87a2                	mv	a5,s0
1c00a718:	95a2                	add	a1,a1,s0
1c00a71a:	0028                	addi	a0,sp,8
1c00a71c:	0017c603          	lbu	a2,1(a5)
1c00a720:	0007c803          	lbu	a6,0(a5)
1c00a724:	0027c683          	lbu	a3,2(a5)
1c00a728:	0037c703          	lbu	a4,3(a5)
1c00a72c:	0622                	slli	a2,a2,0x8
1c00a72e:	01066633          	or	a2,a2,a6
1c00a732:	06c2                	slli	a3,a3,0x10
1c00a734:	8ed1                	or	a3,a3,a2
1c00a736:	0762                	slli	a4,a4,0x18
1c00a738:	8f55                	or	a4,a4,a3
1c00a73a:	c118                	sw	a4,0(a0)
1c00a73c:	0791                	addi	a5,a5,4
1c00a73e:	0511                	addi	a0,a0,4
1c00a740:	fcf59ee3          	bne	a1,a5,1c00a71c <shake128_absorb+0xe2>
1c00a744:	ffc4f793          	andi	a5,s1,-4
1c00a748:	04f48263          	beq	s1,a5,1c00a78c <shake128_absorb+0x152>
1c00a74c:	00f40733          	add	a4,s0,a5
1c00a750:	00074603          	lbu	a2,0(a4)
1c00a754:	0994                	addi	a3,sp,208
1c00a756:	96be                	add	a3,a3,a5
1c00a758:	00178713          	addi	a4,a5,1
1c00a75c:	f2c68c23          	sb	a2,-200(a3)
1c00a760:	02977663          	bgeu	a4,s1,1c00a78c <shake128_absorb+0x152>
1c00a764:	00e406b3          	add	a3,s0,a4
1c00a768:	0006c603          	lbu	a2,0(a3)
1c00a76c:	0994                	addi	a3,sp,208
1c00a76e:	96ba                	add	a3,a3,a4
1c00a770:	f2c68c23          	sb	a2,-200(a3)
1c00a774:	00278713          	addi	a4,a5,2
1c00a778:	00977a63          	bgeu	a4,s1,1c00a78c <shake128_absorb+0x152>
1c00a77c:	00e407b3          	add	a5,s0,a4
1c00a780:	0007c683          	lbu	a3,0(a5)
1c00a784:	099c                	addi	a5,sp,208
1c00a786:	97ba                	add	a5,a5,a4
1c00a788:	f2d78c23          	sb	a3,-200(a5)
1c00a78c:	099c                	addi	a5,sp,208
1c00a78e:	00978633          	add	a2,a5,s1
1c00a792:	47fd                	li	a5,31
1c00a794:	f2f60c23          	sb	a5,-200(a2)
1c00a798:	0af14703          	lbu	a4,175(sp)
1c00a79c:	003c                	addi	a5,sp,8
1c00a79e:	40f90933          	sub	s2,s2,a5
1c00a7a2:	f8076713          	ori	a4,a4,-128
1c00a7a6:	0ae107a3          	sb	a4,175(sp)
1c00a7aa:	0017c703          	lbu	a4,1(a5)
1c00a7ae:	0027cf83          	lbu	t6,2(a5)
1c00a7b2:	0057c883          	lbu	a7,5(a5)
1c00a7b6:	0047c503          	lbu	a0,4(a5)
1c00a7ba:	0067c803          	lbu	a6,6(a5)
1c00a7be:	0007c583          	lbu	a1,0(a5)
1c00a7c2:	0037c603          	lbu	a2,3(a5)
1c00a7c6:	0077c683          	lbu	a3,7(a5)
1c00a7ca:	00f90e33          	add	t3,s2,a5
1c00a7ce:	0722                	slli	a4,a4,0x8
1c00a7d0:	0fc2                	slli	t6,t6,0x10
1c00a7d2:	08a2                	slli	a7,a7,0x8
1c00a7d4:	000e2f03          	lw	t5,0(t3)
1c00a7d8:	004e2e83          	lw	t4,4(t3)
1c00a7dc:	01f76733          	or	a4,a4,t6
1c00a7e0:	00a8e8b3          	or	a7,a7,a0
1c00a7e4:	0842                	slli	a6,a6,0x10
1c00a7e6:	8f4d                	or	a4,a4,a1
1c00a7e8:	0662                	slli	a2,a2,0x18
1c00a7ea:	01186833          	or	a6,a6,a7
1c00a7ee:	06e2                	slli	a3,a3,0x18
1c00a7f0:	8f51                	or	a4,a4,a2
1c00a7f2:	0106e6b3          	or	a3,a3,a6
1c00a7f6:	00ef4733          	xor	a4,t5,a4
1c00a7fa:	00dec6b3          	xor	a3,t4,a3
1c00a7fe:	00ee2023          	sw	a4,0(t3)
1c00a802:	00de2223          	sw	a3,4(t3)
1c00a806:	07a1                	addi	a5,a5,8
1c00a808:	faf311e3          	bne	t1,a5,1c00a7aa <shake128_absorb+0x170>
1c00a80c:	50be                	lw	ra,236(sp)
1c00a80e:	542e                	lw	s0,232(sp)
1c00a810:	549e                	lw	s1,228(sp)
1c00a812:	590e                	lw	s2,224(sp)
1c00a814:	49fe                	lw	s3,220(sp)
1c00a816:	616d                	addi	sp,sp,240
1c00a818:	8082                	ret
1c00a81a:	4781                	li	a5,0
1c00a81c:	bf05                	j	1c00a74c <shake128_absorb+0x112>
1c00a81e:	06f00513          	li	a0,111
1c00a822:	612020ef          	jal	ra,1c00ce34 <exit>

1c00a826 <shake128_squeezeblocks>:
1c00a826:	1101                	addi	sp,sp,-32
1c00a828:	c05a                	sw	s6,0(sp)
1c00a82a:	ce06                	sw	ra,28(sp)
1c00a82c:	cc22                	sw	s0,24(sp)
1c00a82e:	ca26                	sw	s1,20(sp)
1c00a830:	c84a                	sw	s2,16(sp)
1c00a832:	c64e                	sw	s3,12(sp)
1c00a834:	c452                	sw	s4,8(sp)
1c00a836:	c256                	sw	s5,4(sp)
1c00a838:	00062b03          	lw	s6,0(a2)
1c00a83c:	c5e9                	beqz	a1,1c00a906 <shake128_squeezeblocks+0xe0>
1c00a83e:	7ac1                	lui	s5,0xffff0
1c00a840:	ff010a37          	lui	s4,0xff010
1c00a844:	010009b7          	lui	s3,0x1000
1c00a848:	84ae                	mv	s1,a1
1c00a84a:	892a                	mv	s2,a0
1c00a84c:	0a8b0413          	addi	s0,s6,168
1c00a850:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a854:	1a7d                	addi	s4,s4,-1
1c00a856:	19fd                	addi	s3,s3,-1
1c00a858:	85da                	mv	a1,s6
1c00a85a:	855a                	mv	a0,s6
1c00a85c:	32b9                	jal	1c00a1aa <KeccakF1600_StatePermute>
1c00a85e:	85da                	mv	a1,s6
1c00a860:	00490813          	addi	a6,s2,4
1c00a864:	4198                	lw	a4,0(a1)
1c00a866:	41dc                	lw	a5,4(a1)
1c00a868:	05a1                	addi	a1,a1,8
1c00a86a:	00875893          	srli	a7,a4,0x8
1c00a86e:	0087d513          	srli	a0,a5,0x8
1c00a872:	0ff77613          	andi	a2,a4,255
1c00a876:	0ff7f693          	andi	a3,a5,255
1c00a87a:	0ff8f893          	andi	a7,a7,255
1c00a87e:	0ff57513          	andi	a0,a0,255
1c00a882:	08a2                	slli	a7,a7,0x8
1c00a884:	0522                	slli	a0,a0,0x8
1c00a886:	01567633          	and	a2,a2,s5
1c00a88a:	0156f6b3          	and	a3,a3,s5
1c00a88e:	01166633          	or	a2,a2,a7
1c00a892:	8ec9                	or	a3,a3,a0
1c00a894:	00ff08b7          	lui	a7,0xff0
1c00a898:	00ff0537          	lui	a0,0xff0
1c00a89c:	011778b3          	and	a7,a4,a7
1c00a8a0:	8d7d                	and	a0,a0,a5
1c00a8a2:	01467633          	and	a2,a2,s4
1c00a8a6:	0146f6b3          	and	a3,a3,s4
1c00a8aa:	01166633          	or	a2,a2,a7
1c00a8ae:	8ec9                	or	a3,a3,a0
1c00a8b0:	8361                	srli	a4,a4,0x18
1c00a8b2:	83e1                	srli	a5,a5,0x18
1c00a8b4:	01367633          	and	a2,a2,s3
1c00a8b8:	0136f6b3          	and	a3,a3,s3
1c00a8bc:	0762                	slli	a4,a4,0x18
1c00a8be:	07e2                	slli	a5,a5,0x18
1c00a8c0:	8f51                	or	a4,a4,a2
1c00a8c2:	8fd5                	or	a5,a5,a3
1c00a8c4:	00875e13          	srli	t3,a4,0x8
1c00a8c8:	01075313          	srli	t1,a4,0x10
1c00a8cc:	0087d893          	srli	a7,a5,0x8
1c00a8d0:	0107d513          	srli	a0,a5,0x10
1c00a8d4:	8361                	srli	a4,a4,0x18
1c00a8d6:	83e1                	srli	a5,a5,0x18
1c00a8d8:	fec80e23          	sb	a2,-4(a6)
1c00a8dc:	ffc80ea3          	sb	t3,-3(a6)
1c00a8e0:	fe680f23          	sb	t1,-2(a6)
1c00a8e4:	fee80fa3          	sb	a4,-1(a6)
1c00a8e8:	00d80023          	sb	a3,0(a6)
1c00a8ec:	011800a3          	sb	a7,1(a6)
1c00a8f0:	00a80123          	sb	a0,2(a6)
1c00a8f4:	00f801a3          	sb	a5,3(a6)
1c00a8f8:	0821                	addi	a6,a6,8
1c00a8fa:	f6b415e3          	bne	s0,a1,1c00a864 <shake128_squeezeblocks+0x3e>
1c00a8fe:	14fd                	addi	s1,s1,-1
1c00a900:	0a890913          	addi	s2,s2,168
1c00a904:	f8b1                	bnez	s1,1c00a858 <shake128_squeezeblocks+0x32>
1c00a906:	40f2                	lw	ra,28(sp)
1c00a908:	4462                	lw	s0,24(sp)
1c00a90a:	44d2                	lw	s1,20(sp)
1c00a90c:	4942                	lw	s2,16(sp)
1c00a90e:	49b2                	lw	s3,12(sp)
1c00a910:	4a22                	lw	s4,8(sp)
1c00a912:	4a92                	lw	s5,4(sp)
1c00a914:	4b02                	lw	s6,0(sp)
1c00a916:	6105                	addi	sp,sp,32
1c00a918:	8082                	ret

1c00a91a <shake128_ctx_release>:
1c00a91a:	4108                	lw	a0,0(a0)
1c00a91c:	0c800593          	li	a1,200
1c00a920:	6540306f          	j	1c00df74 <pi_l2_free>

1c00a924 <shake256>:
1c00a924:	7131                	addi	sp,sp,-192
1c00a926:	db26                	sw	s1,180(sp)
1c00a928:	d74e                	sw	s3,172(sp)
1c00a92a:	84aa                	mv	s1,a0
1c00a92c:	08800993          	li	s3,136
1c00a930:	0c800513          	li	a0,200
1c00a934:	dd22                	sw	s0,184(sp)
1c00a936:	d94a                	sw	s2,176(sp)
1c00a938:	d356                	sw	s5,164(sp)
1c00a93a:	df06                	sw	ra,188(sp)
1c00a93c:	d552                	sw	s4,168(sp)
1c00a93e:	d15a                	sw	s6,160(sp)
1c00a940:	cf5e                	sw	s7,156(sp)
1c00a942:	cd62                	sw	s8,152(sp)
1c00a944:	0335d9b3          	divu	s3,a1,s3
1c00a948:	892e                	mv	s2,a1
1c00a94a:	8432                	mv	s0,a2
1c00a94c:	8ab6                	mv	s5,a3
1c00a94e:	61a030ef          	jal	ra,1c00df68 <pi_l2_malloc>
1c00a952:	24050763          	beqz	a0,1c00aba0 <shake256+0x27c>
1c00a956:	46fd                	li	a3,31
1c00a958:	8656                	mv	a2,s5
1c00a95a:	85a2                	mv	a1,s0
1c00a95c:	8a2a                	mv	s4,a0
1c00a95e:	3601                	jal	1c00a45e <keccak_absorb.constprop.1>
1c00a960:	08700793          	li	a5,135
1c00a964:	0d27ff63          	bgeu	a5,s2,1c00aa42 <shake256+0x11e>
1c00a968:	00499413          	slli	s0,s3,0x4
1c00a96c:	944e                	add	s0,s0,s3
1c00a96e:	040e                	slli	s0,s0,0x3
1c00a970:	7bc1                	lui	s7,0xffff0
1c00a972:	ff010b37          	lui	s6,0xff010
1c00a976:	01000ab7          	lui	s5,0x1000
1c00a97a:	9426                	add	s0,s0,s1
1c00a97c:	8c26                	mv	s8,s1
1c00a97e:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00a982:	1b7d                	addi	s6,s6,-1
1c00a984:	1afd                	addi	s5,s5,-1
1c00a986:	85d2                	mv	a1,s4
1c00a988:	8552                	mv	a0,s4
1c00a98a:	821ff0ef          	jal	ra,1c00a1aa <KeccakF1600_StatePermute>
1c00a98e:	87e2                	mv	a5,s8
1c00a990:	418a0533          	sub	a0,s4,s8
1c00a994:	088c0593          	addi	a1,s8,136
1c00a998:	00f50733          	add	a4,a0,a5
1c00a99c:	4314                	lw	a3,0(a4)
1c00a99e:	4358                	lw	a4,4(a4)
1c00a9a0:	07a1                	addi	a5,a5,8
1c00a9a2:	0086d313          	srli	t1,a3,0x8
1c00a9a6:	00875893          	srli	a7,a4,0x8
1c00a9aa:	0ff6f813          	andi	a6,a3,255
1c00a9ae:	0ff77613          	andi	a2,a4,255
1c00a9b2:	0ff37313          	andi	t1,t1,255
1c00a9b6:	0ff8f893          	andi	a7,a7,255
1c00a9ba:	0322                	slli	t1,t1,0x8
1c00a9bc:	08a2                	slli	a7,a7,0x8
1c00a9be:	01787833          	and	a6,a6,s7
1c00a9c2:	01767633          	and	a2,a2,s7
1c00a9c6:	00686833          	or	a6,a6,t1
1c00a9ca:	01166633          	or	a2,a2,a7
1c00a9ce:	00ff0337          	lui	t1,0xff0
1c00a9d2:	00ff08b7          	lui	a7,0xff0
1c00a9d6:	0066f333          	and	t1,a3,t1
1c00a9da:	011778b3          	and	a7,a4,a7
1c00a9de:	01687833          	and	a6,a6,s6
1c00a9e2:	01667633          	and	a2,a2,s6
1c00a9e6:	00686833          	or	a6,a6,t1
1c00a9ea:	01166633          	or	a2,a2,a7
1c00a9ee:	82e1                	srli	a3,a3,0x18
1c00a9f0:	8361                	srli	a4,a4,0x18
1c00a9f2:	01587833          	and	a6,a6,s5
1c00a9f6:	01567633          	and	a2,a2,s5
1c00a9fa:	06e2                	slli	a3,a3,0x18
1c00a9fc:	0762                	slli	a4,a4,0x18
1c00a9fe:	00d866b3          	or	a3,a6,a3
1c00aa02:	8f51                	or	a4,a4,a2
1c00aa04:	0086de93          	srli	t4,a3,0x8
1c00aa08:	0106de13          	srli	t3,a3,0x10
1c00aa0c:	00875313          	srli	t1,a4,0x8
1c00aa10:	01075893          	srli	a7,a4,0x10
1c00aa14:	82e1                	srli	a3,a3,0x18
1c00aa16:	8361                	srli	a4,a4,0x18
1c00aa18:	ff078c23          	sb	a6,-8(a5)
1c00aa1c:	ffd78ca3          	sb	t4,-7(a5)
1c00aa20:	ffc78d23          	sb	t3,-6(a5)
1c00aa24:	fed78da3          	sb	a3,-5(a5)
1c00aa28:	fec78e23          	sb	a2,-4(a5)
1c00aa2c:	fe678ea3          	sb	t1,-3(a5)
1c00aa30:	ff178f23          	sb	a7,-2(a5)
1c00aa34:	fee78fa3          	sb	a4,-1(a5)
1c00aa38:	f6f590e3          	bne	a1,a5,1c00a998 <shake256+0x74>
1c00aa3c:	8c2e                	mv	s8,a1
1c00aa3e:	f48594e3          	bne	a1,s0,1c00a986 <shake256+0x62>
1c00aa42:	08800593          	li	a1,136
1c00aa46:	02b97933          	remu	s2,s2,a1
1c00aa4a:	02091263          	bnez	s2,1c00aa6e <shake256+0x14a>
1c00aa4e:	546a                	lw	s0,184(sp)
1c00aa50:	50fa                	lw	ra,188(sp)
1c00aa52:	54da                	lw	s1,180(sp)
1c00aa54:	594a                	lw	s2,176(sp)
1c00aa56:	59ba                	lw	s3,172(sp)
1c00aa58:	5a9a                	lw	s5,164(sp)
1c00aa5a:	5b0a                	lw	s6,160(sp)
1c00aa5c:	4bfa                	lw	s7,156(sp)
1c00aa5e:	4c6a                	lw	s8,152(sp)
1c00aa60:	8552                	mv	a0,s4
1c00aa62:	5a2a                	lw	s4,168(sp)
1c00aa64:	0c800593          	li	a1,200
1c00aa68:	6129                	addi	sp,sp,192
1c00aa6a:	50a0306f          	j	1c00df74 <pi_l2_free>
1c00aa6e:	85d2                	mv	a1,s4
1c00aa70:	8552                	mv	a0,s4
1c00aa72:	f38ff0ef          	jal	ra,1c00a1aa <KeccakF1600_StatePermute>
1c00aa76:	002c                	addi	a1,sp,8
1c00aa78:	78c1                	lui	a7,0xffff0
1c00aa7a:	ff010837          	lui	a6,0xff010
1c00aa7e:	01000537          	lui	a0,0x1000
1c00aa82:	09010e13          	addi	t3,sp,144
1c00aa86:	862e                	mv	a2,a1
1c00aa88:	40ba0333          	sub	t1,s4,a1
1c00aa8c:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00aa90:	187d                	addi	a6,a6,-1
1c00aa92:	157d                	addi	a0,a0,-1
1c00aa94:	00c307b3          	add	a5,t1,a2
1c00aa98:	0007ae83          	lw	t4,0(a5)
1c00aa9c:	43d4                	lw	a3,4(a5)
1c00aa9e:	0621                	addi	a2,a2,8
1c00aaa0:	008edf93          	srli	t6,t4,0x8
1c00aaa4:	0086df13          	srli	t5,a3,0x8
1c00aaa8:	0ffef713          	andi	a4,t4,255
1c00aaac:	0ff6f793          	andi	a5,a3,255
1c00aab0:	0fffff93          	andi	t6,t6,255
1c00aab4:	0fff7f13          	andi	t5,t5,255
1c00aab8:	0fa2                	slli	t6,t6,0x8
1c00aaba:	0f22                	slli	t5,t5,0x8
1c00aabc:	01177733          	and	a4,a4,a7
1c00aac0:	0117f7b3          	and	a5,a5,a7
1c00aac4:	01f76733          	or	a4,a4,t6
1c00aac8:	01e7e7b3          	or	a5,a5,t5
1c00aacc:	00ff0fb7          	lui	t6,0xff0
1c00aad0:	00ff0f37          	lui	t5,0xff0
1c00aad4:	01feffb3          	and	t6,t4,t6
1c00aad8:	01e6ff33          	and	t5,a3,t5
1c00aadc:	01077733          	and	a4,a4,a6
1c00aae0:	0107f7b3          	and	a5,a5,a6
1c00aae4:	01f76733          	or	a4,a4,t6
1c00aae8:	018ede93          	srli	t4,t4,0x18
1c00aaec:	01e7e7b3          	or	a5,a5,t5
1c00aaf0:	82e1                	srli	a3,a3,0x18
1c00aaf2:	0ee2                	slli	t4,t4,0x18
1c00aaf4:	8f69                	and	a4,a4,a0
1c00aaf6:	06e2                	slli	a3,a3,0x18
1c00aaf8:	8fe9                	and	a5,a5,a0
1c00aafa:	01d76733          	or	a4,a4,t4
1c00aafe:	8fd5                	or	a5,a5,a3
1c00ab00:	fee62c23          	sw	a4,-8(a2)
1c00ab04:	fef62e23          	sw	a5,-4(a2)
1c00ab08:	f8ce16e3          	bne	t3,a2,1c00aa94 <shake256+0x170>
1c00ab0c:	fff90793          	addi	a5,s2,-1
1c00ab10:	4709                	li	a4,2
1c00ab12:	08f77363          	bgeu	a4,a5,1c00ab98 <shake256+0x274>
1c00ab16:	00499413          	slli	s0,s3,0x4
1c00ab1a:	013407b3          	add	a5,s0,s3
1c00ab1e:	078e                	slli	a5,a5,0x3
1c00ab20:	97a6                	add	a5,a5,s1
1c00ab22:	0fc97813          	andi	a6,s2,252
1c00ab26:	983e                	add	a6,a6,a5
1c00ab28:	4198                	lw	a4,0(a1)
1c00ab2a:	0791                	addi	a5,a5,4
1c00ab2c:	0591                	addi	a1,a1,4
1c00ab2e:	00875513          	srli	a0,a4,0x8
1c00ab32:	01075613          	srli	a2,a4,0x10
1c00ab36:	01875693          	srli	a3,a4,0x18
1c00ab3a:	fea78ea3          	sb	a0,-3(a5)
1c00ab3e:	fec78f23          	sb	a2,-2(a5)
1c00ab42:	fed78fa3          	sb	a3,-1(a5)
1c00ab46:	fee78e23          	sb	a4,-4(a5)
1c00ab4a:	fcf81fe3          	bne	a6,a5,1c00ab28 <shake256+0x204>
1c00ab4e:	ffc97793          	andi	a5,s2,-4
1c00ab52:	eef90ee3          	beq	s2,a5,1c00aa4e <shake256+0x12a>
1c00ab56:	0918                	addi	a4,sp,144
1c00ab58:	973e                	add	a4,a4,a5
1c00ab5a:	99a2                	add	s3,s3,s0
1c00ab5c:	f7874683          	lbu	a3,-136(a4)
1c00ab60:	098e                	slli	s3,s3,0x3
1c00ab62:	99a6                	add	s3,s3,s1
1c00ab64:	00f98733          	add	a4,s3,a5
1c00ab68:	00d70023          	sb	a3,0(a4)
1c00ab6c:	00178713          	addi	a4,a5,1
1c00ab70:	ed277fe3          	bgeu	a4,s2,1c00aa4e <shake256+0x12a>
1c00ab74:	0914                	addi	a3,sp,144
1c00ab76:	96ba                	add	a3,a3,a4
1c00ab78:	f786c683          	lbu	a3,-136(a3)
1c00ab7c:	974e                	add	a4,a4,s3
1c00ab7e:	0789                	addi	a5,a5,2
1c00ab80:	00d70023          	sb	a3,0(a4)
1c00ab84:	ed27f5e3          	bgeu	a5,s2,1c00aa4e <shake256+0x12a>
1c00ab88:	0918                	addi	a4,sp,144
1c00ab8a:	973e                	add	a4,a4,a5
1c00ab8c:	f7874703          	lbu	a4,-136(a4)
1c00ab90:	99be                	add	s3,s3,a5
1c00ab92:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00ab96:	bd65                	j	1c00aa4e <shake256+0x12a>
1c00ab98:	4781                	li	a5,0
1c00ab9a:	00499413          	slli	s0,s3,0x4
1c00ab9e:	bf65                	j	1c00ab56 <shake256+0x232>
1c00aba0:	06f00513          	li	a0,111
1c00aba4:	290020ef          	jal	ra,1c00ce34 <exit>

1c00aba8 <sha3_256>:
1c00aba8:	712d                	addi	sp,sp,-288
1c00abaa:	10812c23          	sw	s0,280(sp)
1c00abae:	4699                	li	a3,6
1c00abb0:	842a                	mv	s0,a0
1c00abb2:	0828                	addi	a0,sp,24
1c00abb4:	10112e23          	sw	ra,284(sp)
1c00abb8:	10912a23          	sw	s1,276(sp)
1c00abbc:	11212823          	sw	s2,272(sp)
1c00abc0:	11312623          	sw	s3,268(sp)
1c00abc4:	11412423          	sw	s4,264(sp)
1c00abc8:	11512223          	sw	s5,260(sp)
1c00abcc:	11612023          	sw	s6,256(sp)
1c00abd0:	dfde                	sw	s7,252(sp)
1c00abd2:	dde2                	sw	s8,248(sp)
1c00abd4:	dbe6                	sw	s9,244(sp)
1c00abd6:	d9ea                	sw	s10,240(sp)
1c00abd8:	d7ee                	sw	s11,236(sp)
1c00abda:	3051                	jal	1c00a45e <keccak_absorb.constprop.1>
1c00abdc:	082c                	addi	a1,sp,24
1c00abde:	852e                	mv	a0,a1
1c00abe0:	dcaff0ef          	jal	ra,1c00a1aa <KeccakF1600_StatePermute>
1c00abe4:	4372                	lw	t1,28(sp)
1c00abe6:	5612                	lw	a2,36(sp)
1c00abe8:	5732                	lw	a4,44(sp)
1c00abea:	5582                	lw	a1,32(sp)
1c00abec:	56a2                	lw	a3,40(sp)
1c00abee:	59d2                	lw	s3,52(sp)
1c00abf0:	4ae2                	lw	s5,24(sp)
1c00abf2:	00835293          	srli	t0,t1,0x8
1c00abf6:	00865f13          	srli	t5,a2,0x8
1c00abfa:	00875893          	srli	a7,a4,0x8
1c00abfe:	5a42                	lw	s4,48(sp)
1c00ac00:	0085df93          	srli	t6,a1,0x8
1c00ac04:	0086de93          	srli	t4,a3,0x8
1c00ac08:	0ff2f293          	andi	t0,t0,255
1c00ac0c:	0fff7f13          	andi	t5,t5,255
1c00ac10:	0ff8f893          	andi	a7,a7,255
1c00ac14:	0ff37b93          	andi	s7,t1,255
1c00ac18:	0ff67913          	andi	s2,a2,255
1c00ac1c:	0ff77e13          	andi	t3,a4,255
1c00ac20:	008ad393          	srli	t2,s5,0x8
1c00ac24:	0089d513          	srli	a0,s3,0x8
1c00ac28:	0fffff93          	andi	t6,t6,255
1c00ac2c:	0ffefe93          	andi	t4,t4,255
1c00ac30:	02a2                	slli	t0,t0,0x8
1c00ac32:	0f22                	slli	t5,t5,0x8
1c00ac34:	08a2                	slli	a7,a7,0x8
1c00ac36:	ff0107b7          	lui	a5,0xff010
1c00ac3a:	17fd                	addi	a5,a5,-1
1c00ac3c:	0ff5fb13          	andi	s6,a1,255
1c00ac40:	0ff6f493          	andi	s1,a3,255
1c00ac44:	005be2b3          	or	t0,s7,t0
1c00ac48:	01e96f33          	or	t5,s2,t5
1c00ac4c:	011e68b3          	or	a7,t3,a7
1c00ac50:	0ff3f393          	andi	t2,t2,255
1c00ac54:	0fa2                	slli	t6,t6,0x8
1c00ac56:	0ea2                	slli	t4,t4,0x8
1c00ac58:	0ff57513          	andi	a0,a0,255
1c00ac5c:	00ff0bb7          	lui	s7,0xff0
1c00ac60:	0ffafc13          	andi	s8,s5,255
1c00ac64:	0ff9f913          	andi	s2,s3,255
1c00ac68:	01767bb3          	and	s7,a2,s7
1c00ac6c:	00f8fe33          	and	t3,a7,a5
1c00ac70:	008a5813          	srli	a6,s4,0x8
1c00ac74:	01fb6fb3          	or	t6,s6,t6
1c00ac78:	01d4eeb3          	or	t4,s1,t4
1c00ac7c:	00ff7f33          	and	t5,t5,a5
1c00ac80:	010008b7          	lui	a7,0x1000
1c00ac84:	03a2                	slli	t2,t2,0x8
1c00ac86:	0522                	slli	a0,a0,0x8
1c00ac88:	00ff04b7          	lui	s1,0xff0
1c00ac8c:	00ff0b37          	lui	s6,0xff0
1c00ac90:	8cf5                	and	s1,s1,a3
1c00ac92:	01677b33          	and	s6,a4,s6
1c00ac96:	00a96533          	or	a0,s2,a0
1c00ac9a:	007c63b3          	or	t2,s8,t2
1c00ac9e:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c00aca2:	00fefeb3          	and	t4,t4,a5
1c00aca6:	017f6f33          	or	t5,t5,s7
1c00acaa:	0ff87813          	andi	a6,a6,255
1c00acae:	00ff0c37          	lui	s8,0xff0
1c00acb2:	8261                	srli	a2,a2,0x18
1c00acb4:	0ffa7d93          	andi	s11,s4,255
1c00acb8:	0185fc33          	and	s8,a1,s8
1c00acbc:	012f7f33          	and	t5,t5,s2
1c00acc0:	00ffffb3          	and	t6,t6,a5
1c00acc4:	009eeeb3          	or	t4,t4,s1
1c00acc8:	016e6e33          	or	t3,t3,s6
1c00accc:	8361                	srli	a4,a4,0x18
1c00acce:	0822                	slli	a6,a6,0x8
1c00acd0:	00ff0d37          	lui	s10,0xff0
1c00acd4:	82e1                	srli	a3,a3,0x18
1c00acd6:	0662                	slli	a2,a2,0x18
1c00acd8:	01aafd33          	and	s10,s5,s10
1c00acdc:	010de833          	or	a6,s11,a6
1c00ace0:	012efeb3          	and	t4,t4,s2
1c00ace4:	012e7e33          	and	t3,t3,s2
1c00ace8:	00cf6633          	or	a2,t5,a2
1c00acec:	018ada93          	srli	s5,s5,0x18
1c00acf0:	018fefb3          	or	t6,t6,s8
1c00acf4:	06e2                	slli	a3,a3,0x18
1c00acf6:	01871c13          	slli	s8,a4,0x18
1c00acfa:	00ff0bb7          	lui	s7,0xff0
1c00acfe:	00f87b33          	and	s6,a6,a5
1c00ad02:	00dee4b3          	or	s1,t4,a3
1c00ad06:	017a7bb3          	and	s7,s4,s7
1c00ad0a:	018e66b3          	or	a3,t3,s8
1c00ad0e:	018a9813          	slli	a6,s5,0x18
1c00ad12:	018a5713          	srli	a4,s4,0x18
1c00ad16:	00865a93          	srli	s5,a2,0x8
1c00ad1a:	01065a13          	srli	s4,a2,0x10
1c00ad1e:	00ff0cb7          	lui	s9,0xff0
1c00ad22:	8261                	srli	a2,a2,0x18
1c00ad24:	c232                	sw	a2,4(sp)
1c00ad26:	01937cb3          	and	s9,t1,s9
1c00ad2a:	0086d613          	srli	a2,a3,0x8
1c00ad2e:	00f3f3b3          	and	t2,t2,a5
1c00ad32:	00f2f2b3          	and	t0,t0,a5
1c00ad36:	c432                	sw	a2,8(sp)
1c00ad38:	01a3e3b3          	or	t2,t2,s10
1c00ad3c:	0106d613          	srli	a2,a3,0x10
1c00ad40:	0192e2b3          	or	t0,t0,s9
1c00ad44:	01835313          	srli	t1,t1,0x18
1c00ad48:	81e1                	srli	a1,a1,0x18
1c00ad4a:	00ff08b7          	lui	a7,0xff0
1c00ad4e:	8fe9                	and	a5,a5,a0
1c00ad50:	0123f3b3          	and	t2,t2,s2
1c00ad54:	0122f2b3          	and	t0,t0,s2
1c00ad58:	012fffb3          	and	t6,t6,s2
1c00ad5c:	c632                	sw	a2,12(sp)
1c00ad5e:	0119f8b3          	and	a7,s3,a7
1c00ad62:	4612                	lw	a2,4(sp)
1c00ad64:	01831513          	slli	a0,t1,0x18
1c00ad68:	05e2                	slli	a1,a1,0x18
1c00ad6a:	017b6333          	or	t1,s6,s7
1c00ad6e:	0103e833          	or	a6,t2,a6
1c00ad72:	00a2e533          	or	a0,t0,a0
1c00ad76:	00bfe5b3          	or	a1,t6,a1
1c00ad7a:	0117e8b3          	or	a7,a5,a7
1c00ad7e:	01237333          	and	t1,t1,s2
1c00ad82:	0128f8b3          	and	a7,a7,s2
1c00ad86:	00885d93          	srli	s11,a6,0x8
1c00ad8a:	01085d13          	srli	s10,a6,0x10
1c00ad8e:	00855c93          	srli	s9,a0,0x8
1c00ad92:	01055c13          	srli	s8,a0,0x10
1c00ad96:	0085db93          	srli	s7,a1,0x8
1c00ad9a:	0105db13          	srli	s6,a1,0x10
1c00ad9e:	0104d913          	srli	s2,s1,0x10
1c00ada2:	0189d793          	srli	a5,s3,0x18
1c00ada6:	8161                	srli	a0,a0,0x18
1c00ada8:	0084d993          	srli	s3,s1,0x8
1c00adac:	81e1                	srli	a1,a1,0x18
1c00adae:	80e1                	srli	s1,s1,0x18
1c00adb0:	01885813          	srli	a6,a6,0x18
1c00adb4:	01b400a3          	sb	s11,1(s0)
1c00adb8:	01a40123          	sb	s10,2(s0)
1c00adbc:	019402a3          	sb	s9,5(s0)
1c00adc0:	01840323          	sb	s8,6(s0)
1c00adc4:	00a403a3          	sb	a0,7(s0)
1c00adc8:	017404a3          	sb	s7,9(s0)
1c00adcc:	01640523          	sb	s6,10(s0)
1c00add0:	00b405a3          	sb	a1,11(s0)
1c00add4:	015406a3          	sb	s5,13(s0)
1c00add8:	01440723          	sb	s4,14(s0)
1c00addc:	00c407a3          	sb	a2,15(s0)
1c00ade0:	013408a3          	sb	s3,17(s0)
1c00ade4:	01240923          	sb	s2,18(s0)
1c00ade8:	009409a3          	sb	s1,19(s0)
1c00adec:	00740023          	sb	t2,0(s0)
1c00adf0:	010401a3          	sb	a6,3(s0)
1c00adf4:	00540223          	sb	t0,4(s0)
1c00adf8:	01f40423          	sb	t6,8(s0)
1c00adfc:	01e40623          	sb	t5,12(s0)
1c00ae00:	01d40823          	sb	t4,16(s0)
1c00ae04:	01c40a23          	sb	t3,20(s0)
1c00ae08:	4622                	lw	a2,8(sp)
1c00ae0a:	0762                	slli	a4,a4,0x18
1c00ae0c:	07e2                	slli	a5,a5,0x18
1c00ae0e:	00c40aa3          	sb	a2,21(s0)
1c00ae12:	4632                	lw	a2,12(sp)
1c00ae14:	00e36733          	or	a4,t1,a4
1c00ae18:	00f8e7b3          	or	a5,a7,a5
1c00ae1c:	82e1                	srli	a3,a3,0x18
1c00ae1e:	00c40b23          	sb	a2,22(s0)
1c00ae22:	00d40ba3          	sb	a3,23(s0)
1c00ae26:	00875513          	srli	a0,a4,0x8
1c00ae2a:	01075593          	srli	a1,a4,0x10
1c00ae2e:	0087d613          	srli	a2,a5,0x8
1c00ae32:	0107d693          	srli	a3,a5,0x10
1c00ae36:	8361                	srli	a4,a4,0x18
1c00ae38:	83e1                	srli	a5,a5,0x18
1c00ae3a:	00640c23          	sb	t1,24(s0)
1c00ae3e:	00a40ca3          	sb	a0,25(s0)
1c00ae42:	00b40d23          	sb	a1,26(s0)
1c00ae46:	00e40da3          	sb	a4,27(s0)
1c00ae4a:	01140e23          	sb	a7,28(s0)
1c00ae4e:	00c40ea3          	sb	a2,29(s0)
1c00ae52:	00d40f23          	sb	a3,30(s0)
1c00ae56:	00f40fa3          	sb	a5,31(s0)
1c00ae5a:	11c12083          	lw	ra,284(sp)
1c00ae5e:	11812403          	lw	s0,280(sp)
1c00ae62:	11412483          	lw	s1,276(sp)
1c00ae66:	11012903          	lw	s2,272(sp)
1c00ae6a:	10c12983          	lw	s3,268(sp)
1c00ae6e:	10812a03          	lw	s4,264(sp)
1c00ae72:	10412a83          	lw	s5,260(sp)
1c00ae76:	10012b03          	lw	s6,256(sp)
1c00ae7a:	5bfe                	lw	s7,252(sp)
1c00ae7c:	5c6e                	lw	s8,248(sp)
1c00ae7e:	5cde                	lw	s9,244(sp)
1c00ae80:	5d4e                	lw	s10,240(sp)
1c00ae82:	5dbe                	lw	s11,236(sp)
1c00ae84:	6115                	addi	sp,sp,288
1c00ae86:	8082                	ret

1c00ae88 <sha3_512>:
1c00ae88:	7105                	addi	sp,sp,-480
1c00ae8a:	1c812c23          	sw	s0,472(sp)
1c00ae8e:	1d312623          	sw	s3,460(sp)
1c00ae92:	1d412423          	sw	s4,456(sp)
1c00ae96:	1c112e23          	sw	ra,476(sp)
1c00ae9a:	1c912a23          	sw	s1,468(sp)
1c00ae9e:	1d212823          	sw	s2,464(sp)
1c00aea2:	1d512223          	sw	s5,452(sp)
1c00aea6:	1d612023          	sw	s6,448(sp)
1c00aeaa:	1b712e23          	sw	s7,444(sp)
1c00aeae:	1b812c23          	sw	s8,440(sp)
1c00aeb2:	1b912a23          	sw	s9,436(sp)
1c00aeb6:	1ba12823          	sw	s10,432(sp)
1c00aeba:	1bb12623          	sw	s11,428(sp)
1c00aebe:	842a                	mv	s0,a0
1c00aec0:	8a32                	mv	s4,a2
1c00aec2:	0d810993          	addi	s3,sp,216
1c00aec6:	081c                	addi	a5,sp,16
1c00aec8:	4681                	li	a3,0
1c00aeca:	4701                	li	a4,0
1c00aecc:	c394                	sw	a3,0(a5)
1c00aece:	c3d8                	sw	a4,4(a5)
1c00aed0:	07a1                	addi	a5,a5,8
1c00aed2:	ff379be3          	bne	a5,s3,1c00aec8 <sha3_512+0x40>
1c00aed6:	04700793          	li	a5,71
1c00aeda:	0947f463          	bgeu	a5,s4,1c00af62 <sha3_512+0xda>
1c00aede:	04858a93          	addi	s5,a1,72
1c00aee2:	8956                	mv	s2,s5
1c00aee4:	04700493          	li	s1,71
1c00aee8:	0818                	addi	a4,sp,16
1c00aeea:	0015c783          	lbu	a5,1(a1)
1c00aeee:	0025ce03          	lbu	t3,2(a1)
1c00aef2:	0055c803          	lbu	a6,5(a1)
1c00aef6:	0045cf03          	lbu	t5,4(a1)
1c00aefa:	0065c503          	lbu	a0,6(a1)
1c00aefe:	0005ce83          	lbu	t4,0(a1)
1c00af02:	0035c603          	lbu	a2,3(a1)
1c00af06:	0075c683          	lbu	a3,7(a1)
1c00af0a:	07a2                	slli	a5,a5,0x8
1c00af0c:	0e42                	slli	t3,t3,0x10
1c00af0e:	0822                	slli	a6,a6,0x8
1c00af10:	00072303          	lw	t1,0(a4)
1c00af14:	00472883          	lw	a7,4(a4)
1c00af18:	01c7e7b3          	or	a5,a5,t3
1c00af1c:	01e86833          	or	a6,a6,t5
1c00af20:	0542                	slli	a0,a0,0x10
1c00af22:	01d7e7b3          	or	a5,a5,t4
1c00af26:	0662                	slli	a2,a2,0x18
1c00af28:	01056533          	or	a0,a0,a6
1c00af2c:	06e2                	slli	a3,a3,0x18
1c00af2e:	8fd1                	or	a5,a5,a2
1c00af30:	8ec9                	or	a3,a3,a0
1c00af32:	00f347b3          	xor	a5,t1,a5
1c00af36:	00d8c6b3          	xor	a3,a7,a3
1c00af3a:	c31c                	sw	a5,0(a4)
1c00af3c:	c354                	sw	a3,4(a4)
1c00af3e:	05a1                	addi	a1,a1,8
1c00af40:	0721                	addi	a4,a4,8
1c00af42:	fb2594e3          	bne	a1,s2,1c00aeea <sha3_512+0x62>
1c00af46:	080c                	addi	a1,sp,16
1c00af48:	852e                	mv	a0,a1
1c00af4a:	a60ff0ef          	jal	ra,1c00a1aa <KeccakF1600_StatePermute>
1c00af4e:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c00af52:	04890913          	addi	s2,s2,72
1c00af56:	85d6                	mv	a1,s5
1c00af58:	0144f563          	bgeu	s1,s4,1c00af62 <sha3_512+0xda>
1c00af5c:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c00af60:	b761                	j	1c00aee8 <sha3_512+0x60>
1c00af62:	1218                	addi	a4,sp,288
1c00af64:	87ce                	mv	a5,s3
1c00af66:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00af6a:	0791                	addi	a5,a5,4
1c00af6c:	fee79de3          	bne	a5,a4,1c00af66 <sha3_512+0xde>
1c00af70:	080a0063          	beqz	s4,1c00aff0 <sha3_512+0x168>
1c00af74:	fffa0793          	addi	a5,s4,-1
1c00af78:	4709                	li	a4,2
1c00af7a:	68f77563          	bgeu	a4,a5,1c00b604 <sha3_512+0x77c>
1c00af7e:	ffca7813          	andi	a6,s4,-4
1c00af82:	87ae                	mv	a5,a1
1c00af84:	982e                	add	a6,a6,a1
1c00af86:	0017c603          	lbu	a2,1(a5)
1c00af8a:	0007c503          	lbu	a0,0(a5)
1c00af8e:	0027c683          	lbu	a3,2(a5)
1c00af92:	0037c703          	lbu	a4,3(a5)
1c00af96:	0622                	slli	a2,a2,0x8
1c00af98:	8e49                	or	a2,a2,a0
1c00af9a:	06c2                	slli	a3,a3,0x10
1c00af9c:	8ed1                	or	a3,a3,a2
1c00af9e:	0762                	slli	a4,a4,0x18
1c00afa0:	8f55                	or	a4,a4,a3
1c00afa2:	00e9a023          	sw	a4,0(s3)
1c00afa6:	0791                	addi	a5,a5,4
1c00afa8:	0991                	addi	s3,s3,4
1c00afaa:	fd079ee3          	bne	a5,a6,1c00af86 <sha3_512+0xfe>
1c00afae:	ffca7793          	andi	a5,s4,-4
1c00afb2:	03478f63          	beq	a5,s4,1c00aff0 <sha3_512+0x168>
1c00afb6:	00f58733          	add	a4,a1,a5
1c00afba:	00074603          	lbu	a2,0(a4)
1c00afbe:	1314                	addi	a3,sp,416
1c00afc0:	96be                	add	a3,a3,a5
1c00afc2:	00178713          	addi	a4,a5,1
1c00afc6:	f2c68c23          	sb	a2,-200(a3)
1c00afca:	03477363          	bgeu	a4,s4,1c00aff0 <sha3_512+0x168>
1c00afce:	00e586b3          	add	a3,a1,a4
1c00afd2:	0006c683          	lbu	a3,0(a3)
1c00afd6:	1310                	addi	a2,sp,416
1c00afd8:	9732                	add	a4,a4,a2
1c00afda:	0789                	addi	a5,a5,2
1c00afdc:	f2d70c23          	sb	a3,-200(a4)
1c00afe0:	0147f863          	bgeu	a5,s4,1c00aff0 <sha3_512+0x168>
1c00afe4:	95be                	add	a1,a1,a5
1c00afe6:	0005c703          	lbu	a4,0(a1)
1c00afea:	97b2                	add	a5,a5,a2
1c00afec:	f2e78c23          	sb	a4,-200(a5)
1c00aff0:	131c                	addi	a5,sp,416
1c00aff2:	9a3e                	add	s4,s4,a5
1c00aff4:	4799                	li	a5,6
1c00aff6:	f2fa0c23          	sb	a5,-200(s4)
1c00affa:	0da14703          	lbu	a4,218(sp)
1c00affe:	0d914f83          	lbu	t6,217(sp)
1c00b002:	0e214783          	lbu	a5,226(sp)
1c00b006:	0e114e83          	lbu	t4,225(sp)
1c00b00a:	0e514303          	lbu	t1,229(sp)
1c00b00e:	0e414383          	lbu	t2,228(sp)
1c00b012:	0e614803          	lbu	a6,230(sp)
1c00b016:	0d814283          	lbu	t0,216(sp)
1c00b01a:	0e014f03          	lbu	t5,224(sp)
1c00b01e:	0db14503          	lbu	a0,219(sp)
1c00b022:	0e314603          	lbu	a2,227(sp)
1c00b026:	0e714683          	lbu	a3,231(sp)
1c00b02a:	0fa2                	slli	t6,t6,0x8
1c00b02c:	0ea2                	slli	t4,t4,0x8
1c00b02e:	0742                	slli	a4,a4,0x10
1c00b030:	07c2                	slli	a5,a5,0x10
1c00b032:	0322                	slli	t1,t1,0x8
1c00b034:	00736333          	or	t1,t1,t2
1c00b038:	01f76733          	or	a4,a4,t6
1c00b03c:	01d7e7b3          	or	a5,a5,t4
1c00b040:	0842                	slli	a6,a6,0x10
1c00b042:	0dd14e03          	lbu	t3,221(sp)
1c00b046:	00576733          	or	a4,a4,t0
1c00b04a:	01e7e7b3          	or	a5,a5,t5
1c00b04e:	00686833          	or	a6,a6,t1
1c00b052:	0662                	slli	a2,a2,0x18
1c00b054:	06e2                	slli	a3,a3,0x18
1c00b056:	0562                	slli	a0,a0,0x18
1c00b058:	0dc14483          	lbu	s1,220(sp)
1c00b05c:	0de14883          	lbu	a7,222(sp)
1c00b060:	8d59                	or	a0,a0,a4
1c00b062:	00f66733          	or	a4,a2,a5
1c00b066:	0106e7b3          	or	a5,a3,a6
1c00b06a:	46c2                	lw	a3,16(sp)
1c00b06c:	0df14583          	lbu	a1,223(sp)
1c00b070:	0e22                	slli	t3,t3,0x8
1c00b072:	009e6e33          	or	t3,t3,s1
1c00b076:	8d35                	xor	a0,a0,a3
1c00b078:	08c2                	slli	a7,a7,0x10
1c00b07a:	46d2                	lw	a3,20(sp)
1c00b07c:	01c8e8b3          	or	a7,a7,t3
1c00b080:	05e2                	slli	a1,a1,0x18
1c00b082:	0115e5b3          	or	a1,a1,a7
1c00b086:	8db5                	xor	a1,a1,a3
1c00b088:	46e2                	lw	a3,24(sp)
1c00b08a:	0ea14803          	lbu	a6,234(sp)
1c00b08e:	0e914483          	lbu	s1,233(sp)
1c00b092:	8eb9                	xor	a3,a3,a4
1c00b094:	4772                	lw	a4,28(sp)
1c00b096:	0e814a83          	lbu	s5,232(sp)
1c00b09a:	0eb14a03          	lbu	s4,235(sp)
1c00b09e:	8f3d                	xor	a4,a4,a5
1c00b0a0:	0ec14d03          	lbu	s10,236(sp)
1c00b0a4:	11f14783          	lbu	a5,287(sp)
1c00b0a8:	0ed14903          	lbu	s2,237(sp)
1c00b0ac:	c82a                	sw	a0,16(sp)
1c00b0ae:	ca2e                	sw	a1,20(sp)
1c00b0b0:	cc36                	sw	a3,24(sp)
1c00b0b2:	ce3a                	sw	a4,28(sp)
1c00b0b4:	0ee14f83          	lbu	t6,238(sp)
1c00b0b8:	0f214283          	lbu	t0,242(sp)
1c00b0bc:	0f114f03          	lbu	t5,241(sp)
1c00b0c0:	0fd14883          	lbu	a7,253(sp)
1c00b0c4:	0fc14b83          	lbu	s7,252(sp)
1c00b0c8:	04a2                	slli	s1,s1,0x8
1c00b0ca:	0842                	slli	a6,a6,0x10
1c00b0cc:	02c2                	slli	t0,t0,0x10
1c00b0ce:	08a2                	slli	a7,a7,0x8
1c00b0d0:	00986833          	or	a6,a6,s1
1c00b0d4:	0f22                	slli	t5,t5,0x8
1c00b0d6:	01e2ef33          	or	t5,t0,t5
1c00b0da:	01586833          	or	a6,a6,s5
1c00b0de:	0178e2b3          	or	t0,a7,s7
1c00b0e2:	018a1893          	slli	a7,s4,0x18
1c00b0e6:	0108e833          	or	a6,a7,a6
1c00b0ea:	5882                	lw	a7,32(sp)
1c00b0ec:	0ef14503          	lbu	a0,239(sp)
1c00b0f0:	0922                	slli	s2,s2,0x8
1c00b0f2:	01a96933          	or	s2,s2,s10
1c00b0f6:	0108c8b3          	xor	a7,a7,a6
1c00b0fa:	0fc2                	slli	t6,t6,0x10
1c00b0fc:	5812                	lw	a6,36(sp)
1c00b0fe:	0f014983          	lbu	s3,240(sp)
1c00b102:	0f314583          	lbu	a1,243(sp)
1c00b106:	012fefb3          	or	t6,t6,s2
1c00b10a:	0562                	slli	a0,a0,0x18
1c00b10c:	0f514e83          	lbu	t4,245(sp)
1c00b110:	01f56533          	or	a0,a0,t6
1c00b114:	0f414c83          	lbu	s9,244(sp)
1c00b118:	0f614c03          	lbu	s8,246(sp)
1c00b11c:	00a84833          	xor	a6,a6,a0
1c00b120:	5522                	lw	a0,40(sp)
1c00b122:	0f714603          	lbu	a2,247(sp)
1c00b126:	013f6f33          	or	t5,t5,s3
1c00b12a:	05e2                	slli	a1,a1,0x18
1c00b12c:	0f914e03          	lbu	t3,249(sp)
1c00b130:	0fa14303          	lbu	t1,250(sp)
1c00b134:	01e5e5b3          	or	a1,a1,t5
1c00b138:	0ea2                	slli	t4,t4,0x8
1c00b13a:	019ee4b3          	or	s1,t4,s9
1c00b13e:	8d2d                	xor	a0,a0,a1
1c00b140:	010c1e93          	slli	t4,s8,0x10
1c00b144:	55b2                	lw	a1,44(sp)
1c00b146:	0f814383          	lbu	t2,248(sp)
1c00b14a:	0fb14683          	lbu	a3,251(sp)
1c00b14e:	009eeeb3          	or	t4,t4,s1
1c00b152:	0662                	slli	a2,a2,0x18
1c00b154:	01d66633          	or	a2,a2,t4
1c00b158:	0342                	slli	t1,t1,0x10
1c00b15a:	0e22                	slli	t3,t3,0x8
1c00b15c:	0fe14b03          	lbu	s6,254(sp)
1c00b160:	8db1                	xor	a1,a1,a2
1c00b162:	006e6e33          	or	t3,t3,t1
1c00b166:	5642                	lw	a2,48(sp)
1c00b168:	0ff14703          	lbu	a4,255(sp)
1c00b16c:	007e6e33          	or	t3,t3,t2
1c00b170:	06e2                	slli	a3,a3,0x18
1c00b172:	01c6e6b3          	or	a3,a3,t3
1c00b176:	8e35                	xor	a2,a2,a3
1c00b178:	010b1313          	slli	t1,s6,0x10
1c00b17c:	56d2                	lw	a3,52(sp)
1c00b17e:	00536333          	or	t1,t1,t0
1c00b182:	0762                	slli	a4,a4,0x18
1c00b184:	00676733          	or	a4,a4,t1
1c00b188:	8f35                	xor	a4,a4,a3
1c00b18a:	10114e83          	lbu	t4,257(sp)
1c00b18e:	10214a83          	lbu	s5,258(sp)
1c00b192:	d046                	sw	a7,32(sp)
1c00b194:	d242                	sw	a6,36(sp)
1c00b196:	d42a                	sw	a0,40(sp)
1c00b198:	d62e                	sw	a1,44(sp)
1c00b19a:	d832                	sw	a2,48(sp)
1c00b19c:	da3a                	sw	a4,52(sp)
1c00b19e:	10014903          	lbu	s2,256(sp)
1c00b1a2:	10914303          	lbu	t1,265(sp)
1c00b1a6:	10a14983          	lbu	s3,266(sp)
1c00b1aa:	10814383          	lbu	t2,264(sp)
1c00b1ae:	10514f83          	lbu	t6,261(sp)
1c00b1b2:	10b14603          	lbu	a2,267(sp)
1c00b1b6:	10414b03          	lbu	s6,260(sp)
1c00b1ba:	10614e03          	lbu	t3,262(sp)
1c00b1be:	09c2                	slli	s3,s3,0x10
1c00b1c0:	0322                	slli	t1,t1,0x8
1c00b1c2:	10714583          	lbu	a1,263(sp)
1c00b1c6:	01336333          	or	t1,t1,s3
1c00b1ca:	00736333          	or	t1,t1,t2
1c00b1ce:	10d14f03          	lbu	t5,269(sp)
1c00b1d2:	0fa2                	slli	t6,t6,0x8
1c00b1d4:	0662                	slli	a2,a2,0x18
1c00b1d6:	10c14a03          	lbu	s4,268(sp)
1c00b1da:	016fefb3          	or	t6,t6,s6
1c00b1de:	11114803          	lbu	a6,273(sp)
1c00b1e2:	11214483          	lbu	s1,274(sp)
1c00b1e6:	10e14883          	lbu	a7,270(sp)
1c00b1ea:	00666633          	or	a2,a2,t1
1c00b1ee:	0e42                	slli	t3,t3,0x10
1c00b1f0:	5372                	lw	t1,60(sp)
1c00b1f2:	01fe6e33          	or	t3,t3,t6
1c00b1f6:	10f14683          	lbu	a3,271(sp)
1c00b1fa:	05e2                	slli	a1,a1,0x18
1c00b1fc:	11014283          	lbu	t0,272(sp)
1c00b200:	11314703          	lbu	a4,275(sp)
1c00b204:	01c5e5b3          	or	a1,a1,t3
1c00b208:	0f22                	slli	t5,t5,0x8
1c00b20a:	014f6f33          	or	t5,t5,s4
1c00b20e:	00b34333          	xor	t1,t1,a1
1c00b212:	04c2                	slli	s1,s1,0x10
1c00b214:	4596                	lw	a1,68(sp)
1c00b216:	0822                	slli	a6,a6,0x8
1c00b218:	08c2                	slli	a7,a7,0x10
1c00b21a:	10314503          	lbu	a0,259(sp)
1c00b21e:	01e8e8b3          	or	a7,a7,t5
1c00b222:	00986833          	or	a6,a6,s1
1c00b226:	06e2                	slli	a3,a3,0x18
1c00b228:	00586833          	or	a6,a6,t0
1c00b22c:	0116e6b3          	or	a3,a3,a7
1c00b230:	0ac2                	slli	s5,s5,0x10
1c00b232:	0ea2                	slli	t4,t4,0x8
1c00b234:	0762                	slli	a4,a4,0x18
1c00b236:	5e62                	lw	t3,56(sp)
1c00b238:	8db5                	xor	a1,a1,a3
1c00b23a:	015eeeb3          	or	t4,t4,s5
1c00b23e:	46a6                	lw	a3,72(sp)
1c00b240:	01076733          	or	a4,a4,a6
1c00b244:	4806                	lw	a6,64(sp)
1c00b246:	012eeeb3          	or	t4,t4,s2
1c00b24a:	0562                	slli	a0,a0,0x18
1c00b24c:	01d56533          	or	a0,a0,t4
1c00b250:	00ae4e33          	xor	t3,t3,a0
1c00b254:	00c84833          	xor	a6,a6,a2
1c00b258:	8f35                	xor	a4,a4,a3
1c00b25a:	11414f03          	lbu	t5,276(sp)
1c00b25e:	11514883          	lbu	a7,277(sp)
1c00b262:	11614503          	lbu	a0,278(sp)
1c00b266:	11714603          	lbu	a2,279(sp)
1c00b26a:	dc72                	sw	t3,56(sp)
1c00b26c:	de1a                	sw	t1,60(sp)
1c00b26e:	c0c2                	sw	a6,64(sp)
1c00b270:	c2ae                	sw	a1,68(sp)
1c00b272:	c4ba                	sw	a4,72(sp)
1c00b274:	11914703          	lbu	a4,281(sp)
1c00b278:	11a14303          	lbu	t1,282(sp)
1c00b27c:	11814e03          	lbu	t3,280(sp)
1c00b280:	11b14683          	lbu	a3,283(sp)
1c00b284:	0342                	slli	t1,t1,0x10
1c00b286:	0722                	slli	a4,a4,0x8
1c00b288:	00676733          	or	a4,a4,t1
1c00b28c:	01c76733          	or	a4,a4,t3
1c00b290:	06e2                	slli	a3,a3,0x18
1c00b292:	08a2                	slli	a7,a7,0x8
1c00b294:	01e8e8b3          	or	a7,a7,t5
1c00b298:	8f55                	or	a4,a4,a3
1c00b29a:	0542                	slli	a0,a0,0x10
1c00b29c:	46b6                	lw	a3,76(sp)
1c00b29e:	01156533          	or	a0,a0,a7
1c00b2a2:	0662                	slli	a2,a2,0x18
1c00b2a4:	11d14803          	lbu	a6,285(sp)
1c00b2a8:	8e49                	or	a2,a2,a0
1c00b2aa:	11c14e83          	lbu	t4,284(sp)
1c00b2ae:	8e35                	xor	a2,a2,a3
1c00b2b0:	11e14583          	lbu	a1,286(sp)
1c00b2b4:	46c6                	lw	a3,80(sp)
1c00b2b6:	0822                	slli	a6,a6,0x8
1c00b2b8:	01d86833          	or	a6,a6,t4
1c00b2bc:	8eb9                	xor	a3,a3,a4
1c00b2be:	0807e793          	ori	a5,a5,128
1c00b2c2:	4756                	lw	a4,84(sp)
1c00b2c4:	05c2                	slli	a1,a1,0x10
1c00b2c6:	0105e5b3          	or	a1,a1,a6
1c00b2ca:	07e2                	slli	a5,a5,0x18
1c00b2cc:	8fcd                	or	a5,a5,a1
1c00b2ce:	080c                	addi	a1,sp,16
1c00b2d0:	8fb9                	xor	a5,a5,a4
1c00b2d2:	852e                	mv	a0,a1
1c00b2d4:	c6b2                	sw	a2,76(sp)
1c00b2d6:	c8b6                	sw	a3,80(sp)
1c00b2d8:	cabe                	sw	a5,84(sp)
1c00b2da:	ed1fe0ef          	jal	ra,1c00a1aa <KeccakF1600_StatePermute>
1c00b2de:	4552                	lw	a0,20(sp)
1c00b2e0:	45f2                	lw	a1,28(sp)
1c00b2e2:	5612                	lw	a2,36(sp)
1c00b2e4:	56b2                	lw	a3,44(sp)
1c00b2e6:	57d2                	lw	a5,52(sp)
1c00b2e8:	5772                	lw	a4,60(sp)
1c00b2ea:	00855b13          	srli	s6,a0,0x8
1c00b2ee:	01055a93          	srli	s5,a0,0x10
1c00b2f2:	01855a13          	srli	s4,a0,0x18
1c00b2f6:	0085d993          	srli	s3,a1,0x8
1c00b2fa:	0105d913          	srli	s2,a1,0x10
1c00b2fe:	0185d493          	srli	s1,a1,0x18
1c00b302:	0ca10e23          	sb	a0,220(sp)
1c00b306:	0d610ea3          	sb	s6,221(sp)
1c00b30a:	0d510f23          	sb	s5,222(sp)
1c00b30e:	0d410fa3          	sb	s4,223(sp)
1c00b312:	00865393          	srli	t2,a2,0x8
1c00b316:	01065293          	srli	t0,a2,0x10
1c00b31a:	01865f93          	srli	t6,a2,0x18
1c00b31e:	0086df13          	srli	t5,a3,0x8
1c00b322:	0106de93          	srli	t4,a3,0x10
1c00b326:	0186de13          	srli	t3,a3,0x18
1c00b32a:	0087d313          	srli	t1,a5,0x8
1c00b32e:	0107d893          	srli	a7,a5,0x10
1c00b332:	0187d813          	srli	a6,a5,0x18
1c00b336:	0eb10223          	sb	a1,228(sp)
1c00b33a:	0f3102a3          	sb	s3,229(sp)
1c00b33e:	0f210323          	sb	s2,230(sp)
1c00b342:	0e9103a3          	sb	s1,231(sp)
1c00b346:	45c2                	lw	a1,16(sp)
1c00b348:	4536                	lw	a0,76(sp)
1c00b34a:	0ec10623          	sb	a2,236(sp)
1c00b34e:	0e7106a3          	sb	t2,237(sp)
1c00b352:	467e                	lw	a2,220(sp)
1c00b354:	0e510723          	sb	t0,238(sp)
1c00b358:	0ff107a3          	sb	t6,239(sp)
1c00b35c:	0ed10a23          	sb	a3,244(sp)
1c00b360:	0fe10aa3          	sb	t5,245(sp)
1c00b364:	46e2                	lw	a3,24(sp)
1c00b366:	0fd10b23          	sb	t4,246(sp)
1c00b36a:	0fc10ba3          	sb	t3,247(sp)
1c00b36e:	0e610ea3          	sb	t1,253(sp)
1c00b372:	0f110f23          	sb	a7,254(sp)
1c00b376:	0f010fa3          	sb	a6,255(sp)
1c00b37a:	10e10223          	sb	a4,260(sp)
1c00b37e:	4816                	lw	a6,68(sp)
1c00b380:	0ef10e23          	sb	a5,252(sp)
1c00b384:	579e                	lw	a5,228(sp)
1c00b386:	00875d93          	srli	s11,a4,0x8
1c00b38a:	01075d13          	srli	s10,a4,0x10
1c00b38e:	00885c93          	srli	s9,a6,0x8
1c00b392:	01085c13          	srli	s8,a6,0x10
1c00b396:	01885b93          	srli	s7,a6,0x18
1c00b39a:	00855b13          	srli	s6,a0,0x8
1c00b39e:	01055a93          	srli	s5,a0,0x10
1c00b3a2:	01855a13          	srli	s4,a0,0x18
1c00b3a6:	0085d993          	srli	s3,a1,0x8
1c00b3aa:	0105d913          	srli	s2,a1,0x10
1c00b3ae:	0185d493          	srli	s1,a1,0x18
1c00b3b2:	00865393          	srli	t2,a2,0x8
1c00b3b6:	01065293          	srli	t0,a2,0x10
1c00b3ba:	01865f93          	srli	t6,a2,0x18
1c00b3be:	0086df13          	srli	t5,a3,0x8
1c00b3c2:	0106de93          	srli	t4,a3,0x10
1c00b3c6:	0186de13          	srli	t3,a3,0x18
1c00b3ca:	0087d313          	srli	t1,a5,0x8
1c00b3ce:	0107d893          	srli	a7,a5,0x10
1c00b3d2:	00f40623          	sb	a5,12(s0)
1c00b3d6:	8361                	srli	a4,a4,0x18
1c00b3d8:	83e1                	srli	a5,a5,0x18
1c00b3da:	11b102a3          	sb	s11,261(sp)
1c00b3de:	11a10323          	sb	s10,262(sp)
1c00b3e2:	10e103a3          	sb	a4,263(sp)
1c00b3e6:	11010623          	sb	a6,268(sp)
1c00b3ea:	4706                	lw	a4,64(sp)
1c00b3ec:	119106a3          	sb	s9,269(sp)
1c00b3f0:	11810723          	sb	s8,270(sp)
1c00b3f4:	117107a3          	sb	s7,271(sp)
1c00b3f8:	10a10a23          	sb	a0,276(sp)
1c00b3fc:	11610aa3          	sb	s6,277(sp)
1c00b400:	11510b23          	sb	s5,278(sp)
1c00b404:	11410ba3          	sb	s4,279(sp)
1c00b408:	00b40023          	sb	a1,0(s0)
1c00b40c:	4a26                	lw	s4,72(sp)
1c00b40e:	55be                	lw	a1,236(sp)
1c00b410:	013400a3          	sb	s3,1(s0)
1c00b414:	01240123          	sb	s2,2(s0)
1c00b418:	009401a3          	sb	s1,3(s0)
1c00b41c:	00c40223          	sb	a2,4(s0)
1c00b420:	007402a3          	sb	t2,5(s0)
1c00b424:	565e                	lw	a2,244(sp)
1c00b426:	00540323          	sb	t0,6(s0)
1c00b42a:	01f403a3          	sb	t6,7(s0)
1c00b42e:	01e404a3          	sb	t5,9(s0)
1c00b432:	01d40523          	sb	t4,10(s0)
1c00b436:	01c405a3          	sb	t3,11(s0)
1c00b43a:	006406a3          	sb	t1,13(s0)
1c00b43e:	01140723          	sb	a7,14(s0)
1c00b442:	00f407a3          	sb	a5,15(s0)
1c00b446:	00d40423          	sb	a3,8(s0)
1c00b44a:	56fe                	lw	a3,252(sp)
1c00b44c:	5502                	lw	a0,32(sp)
1c00b44e:	54a2                	lw	s1,40(sp)
1c00b450:	0185db13          	srli	s6,a1,0x18
1c00b454:	00855d93          	srli	s11,a0,0x8
1c00b458:	01055d13          	srli	s10,a0,0x10
1c00b45c:	01855c93          	srli	s9,a0,0x18
1c00b460:	5522                	lw	a0,40(sp)
1c00b462:	5842                	lw	a6,48(sp)
1c00b464:	0085dc13          	srli	s8,a1,0x8
1c00b468:	00855a93          	srli	s5,a0,0x8
1c00b46c:	8141                	srli	a0,a0,0x10
1c00b46e:	c42a                	sw	a0,8(sp)
1c00b470:	5562                	lw	a0,56(sp)
1c00b472:	0105db93          	srli	s7,a1,0x10
1c00b476:	00b40a23          	sb	a1,20(s0)
1c00b47a:	8161                	srli	a0,a0,0x18
1c00b47c:	c22a                	sw	a0,4(sp)
1c00b47e:	5502                	lw	a0,32(sp)
1c00b480:	45a2                	lw	a1,8(sp)
1c00b482:	01640ba3          	sb	s6,23(s0)
1c00b486:	c62a                	sw	a0,12(sp)
1c00b488:	00c14503          	lbu	a0,12(sp)
1c00b48c:	5b22                	lw	s6,40(sp)
1c00b48e:	0184d993          	srli	s3,s1,0x18
1c00b492:	00865913          	srli	s2,a2,0x8
1c00b496:	01065493          	srli	s1,a2,0x10
1c00b49a:	01865393          	srli	t2,a2,0x18
1c00b49e:	00a10623          	sb	a0,12(sp)
1c00b4a2:	0ff57513          	andi	a0,a0,255
1c00b4a6:	10412783          	lw	a5,260(sp)
1c00b4aa:	00885293          	srli	t0,a6,0x8
1c00b4ae:	01085f93          	srli	t6,a6,0x10
1c00b4b2:	01885f13          	srli	t5,a6,0x18
1c00b4b6:	0086de93          	srli	t4,a3,0x8
1c00b4ba:	5862                	lw	a6,56(sp)
1c00b4bc:	0106de13          	srli	t3,a3,0x10
1c00b4c0:	0186d313          	srli	t1,a3,0x18
1c00b4c4:	00a40823          	sb	a0,16(s0)
1c00b4c8:	01b408a3          	sb	s11,17(s0)
1c00b4cc:	01a40923          	sb	s10,18(s0)
1c00b4d0:	019409a3          	sb	s9,19(s0)
1c00b4d4:	01840aa3          	sb	s8,21(s0)
1c00b4d8:	01740b23          	sb	s7,22(s0)
1c00b4dc:	01640c23          	sb	s6,24(s0)
1c00b4e0:	01540ca3          	sb	s5,25(s0)
1c00b4e4:	00b40d23          	sb	a1,26(s0)
1c00b4e8:	01340da3          	sb	s3,27(s0)
1c00b4ec:	01240ea3          	sb	s2,29(s0)
1c00b4f0:	00940f23          	sb	s1,30(s0)
1c00b4f4:	00740fa3          	sb	t2,31(s0)
1c00b4f8:	00c40e23          	sb	a2,28(s0)
1c00b4fc:	5642                	lw	a2,48(sp)
1c00b4fe:	02d40223          	sb	a3,36(s0)
1c00b502:	56e2                	lw	a3,56(sp)
1c00b504:	02c40023          	sb	a2,32(s0)
1c00b508:	10c12603          	lw	a2,268(sp)
1c00b50c:	02d40423          	sb	a3,40(s0)
1c00b510:	4692                	lw	a3,4(sp)
1c00b512:	00885893          	srli	a7,a6,0x8
1c00b516:	025400a3          	sb	t0,33(s0)
1c00b51a:	02d405a3          	sb	a3,43(s0)
1c00b51e:	11412683          	lw	a3,276(sp)
1c00b522:	03f40123          	sb	t6,34(s0)
1c00b526:	03e401a3          	sb	t5,35(s0)
1c00b52a:	03d402a3          	sb	t4,37(s0)
1c00b52e:	03c40323          	sb	t3,38(s0)
1c00b532:	026403a3          	sb	t1,39(s0)
1c00b536:	02f40623          	sb	a5,44(s0)
1c00b53a:	0087d993          	srli	s3,a5,0x8
1c00b53e:	0107d913          	srli	s2,a5,0x10
1c00b542:	01085813          	srli	a6,a6,0x10
1c00b546:	00875493          	srli	s1,a4,0x8
1c00b54a:	008a5e13          	srli	t3,s4,0x8
1c00b54e:	010a5313          	srli	t1,s4,0x10
1c00b552:	83e1                	srli	a5,a5,0x18
1c00b554:	01075393          	srli	t2,a4,0x10
1c00b558:	01875293          	srli	t0,a4,0x18
1c00b55c:	00865f93          	srli	t6,a2,0x8
1c00b560:	01065f13          	srli	t5,a2,0x10
1c00b564:	01865e93          	srli	t4,a2,0x18
1c00b568:	031404a3          	sb	a7,41(s0)
1c00b56c:	03040523          	sb	a6,42(s0)
1c00b570:	033406a3          	sb	s3,45(s0)
1c00b574:	03240723          	sb	s2,46(s0)
1c00b578:	029408a3          	sb	s1,49(s0)
1c00b57c:	03440c23          	sb	s4,56(s0)
1c00b580:	018a5893          	srli	a7,s4,0x18
1c00b584:	02f407a3          	sb	a5,47(s0)
1c00b588:	02e40823          	sb	a4,48(s0)
1c00b58c:	02740923          	sb	t2,50(s0)
1c00b590:	025409a3          	sb	t0,51(s0)
1c00b594:	02c40a23          	sb	a2,52(s0)
1c00b598:	03f40aa3          	sb	t6,53(s0)
1c00b59c:	03e40b23          	sb	t5,54(s0)
1c00b5a0:	03d40ba3          	sb	t4,55(s0)
1c00b5a4:	03c40ca3          	sb	t3,57(s0)
1c00b5a8:	02640d23          	sb	t1,58(s0)
1c00b5ac:	0086d813          	srli	a6,a3,0x8
1c00b5b0:	0106d513          	srli	a0,a3,0x10
1c00b5b4:	0186d593          	srli	a1,a3,0x18
1c00b5b8:	03140da3          	sb	a7,59(s0)
1c00b5bc:	02d40e23          	sb	a3,60(s0)
1c00b5c0:	03040ea3          	sb	a6,61(s0)
1c00b5c4:	02a40f23          	sb	a0,62(s0)
1c00b5c8:	02b40fa3          	sb	a1,63(s0)
1c00b5cc:	1dc12083          	lw	ra,476(sp)
1c00b5d0:	1d812403          	lw	s0,472(sp)
1c00b5d4:	1d412483          	lw	s1,468(sp)
1c00b5d8:	1d012903          	lw	s2,464(sp)
1c00b5dc:	1cc12983          	lw	s3,460(sp)
1c00b5e0:	1c812a03          	lw	s4,456(sp)
1c00b5e4:	1c412a83          	lw	s5,452(sp)
1c00b5e8:	1c012b03          	lw	s6,448(sp)
1c00b5ec:	1bc12b83          	lw	s7,444(sp)
1c00b5f0:	1b812c03          	lw	s8,440(sp)
1c00b5f4:	1b412c83          	lw	s9,436(sp)
1c00b5f8:	1b012d03          	lw	s10,432(sp)
1c00b5fc:	1ac12d83          	lw	s11,428(sp)
1c00b600:	613d                	addi	sp,sp,480
1c00b602:	8082                	ret
1c00b604:	4781                	li	a5,0
1c00b606:	ba45                	j	1c00afb6 <sha3_512+0x12e>

1c00b608 <PQCLEAN_KYBER512_CLEAN_gen_matrix>:
1c00b608:	db010113          	addi	sp,sp,-592
1c00b60c:	c62a                	sw	a0,12(sp)
1c00b60e:	47b2                	lw	a5,12(sp)
1c00b610:	23612823          	sw	s6,560(sp)
1c00b614:	4b01                	li	s6,0
1c00b616:	23512a23          	sw	s5,564(sp)
1c00b61a:	00ab1a93          	slli	s5,s6,0xa
1c00b61e:	6805                	lui	a6,0x1
1c00b620:	97d6                	add	a5,a5,s5
1c00b622:	24812423          	sw	s0,584(sp)
1c00b626:	24912223          	sw	s1,580(sp)
1c00b62a:	25212023          	sw	s2,576(sp)
1c00b62e:	23412c23          	sw	s4,568(sp)
1c00b632:	23712623          	sw	s7,556(sp)
1c00b636:	23812423          	sw	s8,552(sp)
1c00b63a:	23912223          	sw	s9,548(sp)
1c00b63e:	23a12023          	sw	s10,544(sp)
1c00b642:	24112623          	sw	ra,588(sp)
1c00b646:	23312e23          	sw	s3,572(sp)
1c00b64a:	21b12e23          	sw	s11,540(sp)
1c00b64e:	8c2e                	mv	s8,a1
1c00b650:	c432                	sw	a2,8(sp)
1c00b652:	20c10a13          	addi	s4,sp,524
1c00b656:	fff80b93          	addi	s7,a6,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00b65a:	d0080d13          	addi	s10,a6,-768
1c00b65e:	1960                	addi	s0,sp,188
1c00b660:	0ffb7c93          	andi	s9,s6,255
1c00b664:	c23e                	sw	a5,4(sp)
1c00b666:	4901                	li	s2,0
1c00b668:	10000493          	li	s1,256
1c00b66c:	47a2                	lw	a5,8(sp)
1c00b66e:	0ff97613          	andi	a2,s2,255
1c00b672:	c3d9                	beqz	a5,1c00b6f8 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xf0>
1c00b674:	86b2                	mv	a3,a2
1c00b676:	85e2                	mv	a1,s8
1c00b678:	8666                	mv	a2,s9
1c00b67a:	0808                	addi	a0,sp,16
1c00b67c:	244010ef          	jal	ra,1c00c8c0 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c00b680:	0810                	addi	a2,sp,16
1c00b682:	458d                	li	a1,3
1c00b684:	0848                	addi	a0,sp,20
1c00b686:	9a0ff0ef          	jal	ra,1c00a826 <shake128_squeezeblocks>
1c00b68a:	4792                	lw	a5,4(sp)
1c00b68c:	00991313          	slli	t1,s2,0x9
1c00b690:	0858                	addi	a4,sp,20
1c00b692:	00f30ab3          	add	s5,t1,a5
1c00b696:	4d81                	li	s11,0
1c00b698:	00174583          	lbu	a1,1(a4)
1c00b69c:	00074603          	lbu	a2,0(a4)
1c00b6a0:	001d9693          	slli	a3,s11,0x1
1c00b6a4:	00859793          	slli	a5,a1,0x8
1c00b6a8:	8fd1                	or	a5,a5,a2
1c00b6aa:	0177f7b3          	and	a5,a5,s7
1c00b6ae:	07c2                	slli	a5,a5,0x10
1c00b6b0:	83c1                	srli	a5,a5,0x10
1c00b6b2:	00274603          	lbu	a2,2(a4)
1c00b6b6:	96d6                	add	a3,a3,s5
1c00b6b8:	0045de13          	srli	t3,a1,0x4
1c00b6bc:	001d8513          	addi	a0,s11,1
1c00b6c0:	04fd6263          	bltu	s10,a5,1c00b704 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xfc>
1c00b6c4:	00f69023          	sh	a5,0(a3)
1c00b6c8:	10951863          	bne	a0,s1,1c00b7d8 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x1d0>
1c00b6cc:	0808                	addi	a0,sp,16
1c00b6ce:	a4cff0ef          	jal	ra,1c00a91a <shake128_ctx_release>
1c00b6d2:	0c090463          	beqz	s2,1c00b79a <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x192>
1c00b6d6:	0d2b0463          	beq	s6,s2,1c00b79e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x196>
1c00b6da:	47b2                	lw	a5,12(sp)
1c00b6dc:	4b05                	li	s6,1
1c00b6de:	00ab1a93          	slli	s5,s6,0xa
1c00b6e2:	97d6                	add	a5,a5,s5
1c00b6e4:	c23e                	sw	a5,4(sp)
1c00b6e6:	47a2                	lw	a5,8(sp)
1c00b6e8:	4901                	li	s2,0
1c00b6ea:	0ffb7c93          	andi	s9,s6,255
1c00b6ee:	10000493          	li	s1,256
1c00b6f2:	0ff97613          	andi	a2,s2,255
1c00b6f6:	ffbd                	bnez	a5,1c00b674 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x6c>
1c00b6f8:	86e6                	mv	a3,s9
1c00b6fa:	85e2                	mv	a1,s8
1c00b6fc:	0808                	addi	a0,sp,16
1c00b6fe:	1c2010ef          	jal	ra,1c00c8c0 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c00b702:	bfbd                	j	1c00b680 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x78>
1c00b704:	0612                	slli	a2,a2,0x4
1c00b706:	01c66633          	or	a2,a2,t3
1c00b70a:	00cd4863          	blt	s10,a2,1c00b71a <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x112>
1c00b70e:	001d9793          	slli	a5,s11,0x1
1c00b712:	97d6                	add	a5,a5,s5
1c00b714:	00c79023          	sh	a2,0(a5)
1c00b718:	0d85                	addi	s11,s11,1
1c00b71a:	fa9d89e3          	beq	s11,s1,1c00b6cc <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xc4>
1c00b71e:	070d                	addi	a4,a4,3
1c00b720:	f6ea1ce3          	bne	s4,a4,1c00b698 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x90>
1c00b724:	0ff00993          	li	s3,255
1c00b728:	a821                	j	1c00b740 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x138>
1c00b72a:	00171593          	slli	a1,a4,0x1
1c00b72e:	95aa                	add	a1,a1,a0
1c00b730:	0705                	addi	a4,a4,1
1c00b732:	00f59023          	sh	a5,0(a1)
1c00b736:	0bc76863          	bltu	a4,t3,1c00b7e6 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x1de>
1c00b73a:	9dba                	add	s11,s11,a4
1c00b73c:	f9b9e8e3          	bltu	s3,s11,1c00b6cc <PQCLEAN_KYBER512_CLEAN_gen_matrix+0xc4>
1c00b740:	0810                	addi	a2,sp,16
1c00b742:	0848                	addi	a0,sp,20
1c00b744:	4585                	li	a1,1
1c00b746:	8e0ff0ef          	jal	ra,1c00a826 <shake128_squeezeblocks>
1c00b74a:	001d9513          	slli	a0,s11,0x1
1c00b74e:	9556                	add	a0,a0,s5
1c00b750:	41b48e33          	sub	t3,s1,s11
1c00b754:	0850                	addi	a2,sp,20
1c00b756:	4701                	li	a4,0
1c00b758:	00164583          	lbu	a1,1(a2)
1c00b75c:	00064e83          	lbu	t4,0(a2)
1c00b760:	00264683          	lbu	a3,2(a2)
1c00b764:	00859793          	slli	a5,a1,0x8
1c00b768:	01d7e7b3          	or	a5,a5,t4
1c00b76c:	0177f7b3          	and	a5,a5,s7
1c00b770:	07c2                	slli	a5,a5,0x10
1c00b772:	0692                	slli	a3,a3,0x4
1c00b774:	8191                	srli	a1,a1,0x4
1c00b776:	83c1                	srli	a5,a5,0x10
1c00b778:	8ecd                	or	a3,a3,a1
1c00b77a:	fafd78e3          	bgeu	s10,a5,1c00b72a <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x122>
1c00b77e:	00dd4863          	blt	s10,a3,1c00b78e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x186>
1c00b782:	00171793          	slli	a5,a4,0x1
1c00b786:	97aa                	add	a5,a5,a0
1c00b788:	00d79023          	sh	a3,0(a5)
1c00b78c:	0705                	addi	a4,a4,1
1c00b78e:	fbc776e3          	bgeu	a4,t3,1c00b73a <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x132>
1c00b792:	060d                	addi	a2,a2,3
1c00b794:	fcc412e3          	bne	s0,a2,1c00b758 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x150>
1c00b798:	b74d                	j	1c00b73a <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x132>
1c00b79a:	4905                	li	s2,1
1c00b79c:	bdc1                	j	1c00b66c <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x64>
1c00b79e:	24c12083          	lw	ra,588(sp)
1c00b7a2:	24812403          	lw	s0,584(sp)
1c00b7a6:	24412483          	lw	s1,580(sp)
1c00b7aa:	24012903          	lw	s2,576(sp)
1c00b7ae:	23c12983          	lw	s3,572(sp)
1c00b7b2:	23812a03          	lw	s4,568(sp)
1c00b7b6:	23412a83          	lw	s5,564(sp)
1c00b7ba:	23012b03          	lw	s6,560(sp)
1c00b7be:	22c12b83          	lw	s7,556(sp)
1c00b7c2:	22812c03          	lw	s8,552(sp)
1c00b7c6:	22412c83          	lw	s9,548(sp)
1c00b7ca:	22012d03          	lw	s10,544(sp)
1c00b7ce:	21c12d83          	lw	s11,540(sp)
1c00b7d2:	25010113          	addi	sp,sp,592
1c00b7d6:	8082                	ret
1c00b7d8:	8191                	srli	a1,a1,0x4
1c00b7da:	0612                	slli	a2,a2,0x4
1c00b7dc:	8e4d                	or	a2,a2,a1
1c00b7de:	8daa                	mv	s11,a0
1c00b7e0:	f2cd57e3          	bge	s10,a2,1c00b70e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x106>
1c00b7e4:	bf2d                	j	1c00b71e <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x116>
1c00b7e6:	f8dd5ee3          	bge	s10,a3,1c00b782 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x17a>
1c00b7ea:	b765                	j	1c00b792 <PQCLEAN_KYBER512_CLEAN_gen_matrix+0x18a>

1c00b7ec <PQCLEAN_KYBER512_CLEAN_indcpa_enc>:
1c00b7ec:	b7010113          	addi	sp,sp,-1168
1c00b7f0:	7379                	lui	t1,0xffffe
1c00b7f2:	48112623          	sw	ra,1164(sp)
1c00b7f6:	48812423          	sw	s0,1160(sp)
1c00b7fa:	48912223          	sw	s1,1156(sp)
1c00b7fe:	49212023          	sw	s2,1152(sp)
1c00b802:	47312e23          	sw	s3,1148(sp)
1c00b806:	47412c23          	sw	s4,1144(sp)
1c00b80a:	47512a23          	sw	s5,1140(sp)
1c00b80e:	47612823          	sw	s6,1136(sp)
1c00b812:	47712623          	sw	s7,1132(sp)
1c00b816:	47812423          	sw	s8,1128(sp)
1c00b81a:	47912223          	sw	s9,1124(sp)
1c00b81e:	47a12023          	sw	s10,1120(sp)
1c00b822:	45b12e23          	sw	s11,1116(sp)
1c00b826:	6b09                	lui	s6,0x2
1c00b828:	911a                	add	sp,sp,t1
1c00b82a:	74fd                	lui	s1,0xfffff
1c00b82c:	1818                	addi	a4,sp,48
1c00b82e:	420b0793          	addi	a5,s6,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00b832:	97ba                	add	a5,a5,a4
1c00b834:	c0048a13          	addi	s4,s1,-1024 # ffffec00 <__l2_shared_end+0xe3feec00>
1c00b838:	9a3e                	add	s4,s4,a5
1c00b83a:	8aae                	mv	s5,a1
1c00b83c:	89aa                	mv	s3,a0
1c00b83e:	85b2                	mv	a1,a2
1c00b840:	8552                	mv	a0,s4
1c00b842:	8432                	mv	s0,a2
1c00b844:	8936                	mv	s2,a3
1c00b846:	609000ef          	jal	ra,1c00c64e <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>
1c00b84a:	30044083          	lbu	ra,768(s0)
1c00b84e:	30b44b03          	lbu	s6,779(s0)
1c00b852:	31444783          	lbu	a5,788(s0)
1c00b856:	31844703          	lbu	a4,792(s0)
1c00b85a:	d406                	sw	ra,40(sp)
1c00b85c:	30244083          	lbu	ra,770(s0)
1c00b860:	c45a                	sw	s6,8(sp)
1c00b862:	30f44b03          	lbu	s6,783(s0)
1c00b866:	ca3e                	sw	a5,20(sp)
1c00b868:	ce3a                	sw	a4,28(sp)
1c00b86a:	d606                	sw	ra,44(sp)
1c00b86c:	31044b83          	lbu	s7,784(s0)
1c00b870:	30544d83          	lbu	s11,773(s0)
1c00b874:	30944383          	lbu	t2,777(s0)
1c00b878:	30d44283          	lbu	t0,781(s0)
1c00b87c:	31144f83          	lbu	t6,785(s0)
1c00b880:	31544f03          	lbu	t5,789(s0)
1c00b884:	31944e83          	lbu	t4,793(s0)
1c00b888:	31d44e03          	lbu	t3,797(s0)
1c00b88c:	30144503          	lbu	a0,769(s0)
1c00b890:	30444d03          	lbu	s10,772(s0)
1c00b894:	30644303          	lbu	t1,774(s0)
1c00b898:	30844c83          	lbu	s9,776(s0)
1c00b89c:	30a44883          	lbu	a7,778(s0)
1c00b8a0:	30c44c03          	lbu	s8,780(s0)
1c00b8a4:	30e44803          	lbu	a6,782(s0)
1c00b8a8:	31244603          	lbu	a2,786(s0)
1c00b8ac:	31644683          	lbu	a3,790(s0)
1c00b8b0:	31a44703          	lbu	a4,794(s0)
1c00b8b4:	31c44583          	lbu	a1,796(s0)
1c00b8b8:	31e44783          	lbu	a5,798(s0)
1c00b8bc:	30744083          	lbu	ra,775(s0)
1c00b8c0:	c65a                	sw	s6,12(sp)
1c00b8c2:	31344b03          	lbu	s6,787(s0)
1c00b8c6:	0fa2                	slli	t6,t6,0x8
1c00b8c8:	017fefb3          	or	t6,t6,s7
1c00b8cc:	c85a                	sw	s6,16(sp)
1c00b8ce:	31744b03          	lbu	s6,791(s0)
1c00b8d2:	4bd2                	lw	s7,20(sp)
1c00b8d4:	0e22                	slli	t3,t3,0x8
1c00b8d6:	cc5a                	sw	s6,24(sp)
1c00b8d8:	31b44b03          	lbu	s6,795(s0)
1c00b8dc:	00be65b3          	or	a1,t3,a1
1c00b8e0:	0f22                	slli	t5,t5,0x8
1c00b8e2:	5e22                	lw	t3,40(sp)
1c00b8e4:	d05a                	sw	s6,32(sp)
1c00b8e6:	017f6f33          	or	t5,t5,s7
1c00b8ea:	31f44b03          	lbu	s6,799(s0)
1c00b8ee:	4bf2                	lw	s7,28(sp)
1c00b8f0:	0522                	slli	a0,a0,0x8
1c00b8f2:	01c56533          	or	a0,a0,t3
1c00b8f6:	0ea2                	slli	t4,t4,0x8
1c00b8f8:	5e32                	lw	t3,44(sp)
1c00b8fa:	d25a                	sw	s6,36(sp)
1c00b8fc:	017eeeb3          	or	t4,t4,s7
1c00b900:	30344b03          	lbu	s6,771(s0)
1c00b904:	06c2                	slli	a3,a3,0x10
1c00b906:	0742                	slli	a4,a4,0x10
1c00b908:	01e6e6b3          	or	a3,a3,t5
1c00b90c:	01d76733          	or	a4,a4,t4
1c00b910:	4f62                	lw	t5,24(sp)
1c00b912:	5e82                	lw	t4,32(sp)
1c00b914:	03a2                	slli	t2,t2,0x8
1c00b916:	02a2                	slli	t0,t0,0x8
1c00b918:	0193e3b3          	or	t2,t2,s9
1c00b91c:	0182e2b3          	or	t0,t0,s8
1c00b920:	08c2                	slli	a7,a7,0x10
1c00b922:	0842                	slli	a6,a6,0x10
1c00b924:	0642                	slli	a2,a2,0x10
1c00b926:	07c2                	slli	a5,a5,0x10
1c00b928:	0e42                	slli	t3,t3,0x10
1c00b92a:	0078e8b3          	or	a7,a7,t2
1c00b92e:	00586833          	or	a6,a6,t0
1c00b932:	43a2                	lw	t2,8(sp)
1c00b934:	42b2                	lw	t0,12(sp)
1c00b936:	01f66633          	or	a2,a2,t6
1c00b93a:	8fcd                	or	a5,a5,a1
1c00b93c:	4fc2                	lw	t6,16(sp)
1c00b93e:	5592                	lw	a1,36(sp)
1c00b940:	00ae6e33          	or	t3,t3,a0
1c00b944:	0b62                	slli	s6,s6,0x18
1c00b946:	01cb6e33          	or	t3,s6,t3
1c00b94a:	0f62                	slli	t5,t5,0x18
1c00b94c:	6b09                	lui	s6,0x2
1c00b94e:	0ee2                	slli	t4,t4,0x18
1c00b950:	0da2                	slli	s11,s11,0x8
1c00b952:	00df66b3          	or	a3,t5,a3
1c00b956:	00eee733          	or	a4,t4,a4
1c00b95a:	03010f13          	addi	t5,sp,48
1c00b95e:	7479                	lui	s0,0xffffe
1c00b960:	01aded33          	or	s10,s11,s10
1c00b964:	0342                	slli	t1,t1,0x10
1c00b966:	420b0e93          	addi	t4,s6,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00b96a:	00e2                	slli	ra,ra,0x18
1c00b96c:	03e2                	slli	t2,t2,0x18
1c00b96e:	02e2                	slli	t0,t0,0x18
1c00b970:	0fe2                	slli	t6,t6,0x18
1c00b972:	9efa                	add	t4,t4,t5
1c00b974:	05e2                	slli	a1,a1,0x18
1c00b976:	01a36333          	or	t1,t1,s10
1c00b97a:	e0040513          	addi	a0,s0,-512 # ffffde00 <__l2_shared_end+0xe3fede00>
1c00b97e:	00cfe633          	or	a2,t6,a2
1c00b982:	0060e333          	or	t1,ra,t1
1c00b986:	0113e8b3          	or	a7,t2,a7
1c00b98a:	0102e833          	or	a6,t0,a6
1c00b98e:	9576                	add	a0,a0,t4
1c00b990:	8fcd                	or	a5,a5,a1
1c00b992:	85d6                	mv	a1,s5
1c00b994:	c2b6                	sw	a3,68(sp)
1c00b996:	d872                	sw	t3,48(sp)
1c00b998:	da1a                	sw	t1,52(sp)
1c00b99a:	dc46                	sw	a7,56(sp)
1c00b99c:	de42                	sw	a6,60(sp)
1c00b99e:	c0b2                	sw	a2,64(sp)
1c00b9a0:	c4ba                	sw	a4,72(sp)
1c00b9a2:	c6be                	sw	a5,76(sp)
1c00b9a4:	013000ef          	jal	ra,1c00c1b6 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>
1c00b9a8:	1818                	addi	a4,sp,48
1c00b9aa:	420b0793          	addi	a5,s6,1056
1c00b9ae:	97ba                	add	a5,a5,a4
1c00b9b0:	be040593          	addi	a1,s0,-1056
1c00b9b4:	c20b0513          	addi	a0,s6,-992
1c00b9b8:	95be                	add	a1,a1,a5
1c00b9ba:	953a                	add	a0,a0,a4
1c00b9bc:	4605                	li	a2,1
1c00b9be:	31a9                	jal	1c00b608 <PQCLEAN_KYBER512_CLEAN_gen_matrix>
1c00b9c0:	1818                	addi	a4,sp,48
1c00b9c2:	420b0793          	addi	a5,s6,1056
1c00b9c6:	97ba                	add	a5,a5,a4
1c00b9c8:	80048a93          	addi	s5,s1,-2048
1c00b9cc:	9abe                	add	s5,s5,a5
1c00b9ce:	4601                	li	a2,0
1c00b9d0:	85ca                	mv	a1,s2
1c00b9d2:	8556                	mv	a0,s5
1c00b9d4:	1b9000ef          	jal	ra,1c00c38c <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00b9d8:	4605                	li	a2,1
1c00b9da:	85ca                	mv	a1,s2
1c00b9dc:	200a8513          	addi	a0,s5,512
1c00b9e0:	1ad000ef          	jal	ra,1c00c38c <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00b9e4:	6b85                	lui	s7,0x1
1c00b9e6:	181c                	addi	a5,sp,48
1c00b9e8:	420b8513          	addi	a0,s7,1056 # 1420 <__CTOR_LIST__-0x1bffebe4>
1c00b9ec:	953e                	add	a0,a0,a5
1c00b9ee:	4609                	li	a2,2
1c00b9f0:	85ca                	mv	a1,s2
1c00b9f2:	1bf000ef          	jal	ra,1c00c3b0 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00b9f6:	1818                	addi	a4,sp,48
1c00b9f8:	420b8793          	addi	a5,s7,1056
1c00b9fc:	97ba                	add	a5,a5,a4
1c00b9fe:	20078513          	addi	a0,a5,512
1c00ba02:	460d                	li	a2,3
1c00ba04:	85ca                	mv	a1,s2
1c00ba06:	1ab000ef          	jal	ra,1c00c3b0 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00ba0a:	4611                	li	a2,4
1c00ba0c:	85ca                	mv	a1,s2
1c00ba0e:	45010513          	addi	a0,sp,1104
1c00ba12:	19f000ef          	jal	ra,1c00c3b0 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00ba16:	8556                	mv	a0,s5
1c00ba18:	457000ef          	jal	ra,1c00c66e <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c00ba1c:	1818                	addi	a4,sp,48
1c00ba1e:	420b0793          	addi	a5,s6,1056
1c00ba22:	97ba                	add	a5,a5,a4
1c00ba24:	40048493          	addi	s1,s1,1024
1c00ba28:	94be                	add	s1,s1,a5
1c00ba2a:	c20b0593          	addi	a1,s6,-992
1c00ba2e:	95ba                	add	a1,a1,a4
1c00ba30:	8526                	mv	a0,s1
1c00ba32:	8656                	mv	a2,s5
1c00ba34:	5c3000ef          	jal	ra,1c00c7f6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00ba38:	020b0793          	addi	a5,s6,32
1c00ba3c:	1818                	addi	a4,sp,48
1c00ba3e:	00f705b3          	add	a1,a4,a5
1c00ba42:	8656                	mv	a2,s5
1c00ba44:	20048513          	addi	a0,s1,512
1c00ba48:	5af000ef          	jal	ra,1c00c7f6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00ba4c:	1818                	addi	a4,sp,48
1c00ba4e:	420b0793          	addi	a5,s6,1056
1c00ba52:	97ba                	add	a5,a5,a4
1c00ba54:	c0040513          	addi	a0,s0,-1024
1c00ba58:	953e                	add	a0,a0,a5
1c00ba5a:	8656                	mv	a2,s5
1c00ba5c:	85d2                	mv	a1,s4
1c00ba5e:	599000ef          	jal	ra,1c00c7f6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00ba62:	8526                	mv	a0,s1
1c00ba64:	4c3000ef          	jal	ra,1c00c726 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>
1c00ba68:	089c                	addi	a5,sp,80
1c00ba6a:	65010713          	addi	a4,sp,1616
1c00ba6e:	0c94                	addi	a3,sp,592
1c00ba70:	0007a803          	lw	a6,0(a5)
1c00ba74:	43c8                	lw	a0,4(a5)
1c00ba76:	478c                	lw	a1,8(a5)
1c00ba78:	47d0                	lw	a2,12(a5)
1c00ba7a:	01072023          	sw	a6,0(a4)
1c00ba7e:	c348                	sw	a0,4(a4)
1c00ba80:	c70c                	sw	a1,8(a4)
1c00ba82:	c750                	sw	a2,12(a4)
1c00ba84:	07c1                	addi	a5,a5,16
1c00ba86:	0741                	addi	a4,a4,16
1c00ba88:	fed794e3          	bne	a5,a3,1c00ba70 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x284>
1c00ba8c:	6789                	lui	a5,0x2
1c00ba8e:	7779                	lui	a4,0xffffe
1c00ba90:	42078793          	addi	a5,a5,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00ba94:	1814                	addi	a3,sp,48
1c00ba96:	20070713          	addi	a4,a4,512 # ffffe200 <__l2_shared_end+0xe3fee200>
1c00ba9a:	97b6                	add	a5,a5,a3
1c00ba9c:	6341                	lui	t1,0x10
1c00ba9e:	7479                	lui	s0,0xffffe
1c00baa0:	973e                	add	a4,a4,a5
1c00baa2:	4581                	li	a1,0
1c00baa4:	137d                	addi	t1,t1,-1
1c00baa6:	10000e13          	li	t3,256
1c00baaa:	00071603          	lh	a2,0(a4)
1c00baae:	00471883          	lh	a7,4(a4)
1c00bab2:	00271683          	lh	a3,2(a4)
1c00bab6:	00671803          	lh	a6,6(a4)
1c00baba:	4015d793          	srai	a5,a1,0x1
1c00babe:	00279513          	slli	a0,a5,0x2
1c00bac2:	45010493          	addi	s1,sp,1104
1c00bac6:	0642                	slli	a2,a2,0x10
1c00bac8:	0068f8b3          	and	a7,a7,t1
1c00bacc:	0785                	addi	a5,a5,1
1c00bace:	06c2                	slli	a3,a3,0x10
1c00bad0:	00687833          	and	a6,a6,t1
1c00bad4:	9526                	add	a0,a0,s1
1c00bad6:	01166633          	or	a2,a2,a7
1c00bada:	078a                	slli	a5,a5,0x2
1c00badc:	0106e6b3          	or	a3,a3,a6
1c00bae0:	40c52023          	sw	a2,1024(a0) # 1000400 <__CTOR_LIST__-0x1afffc04>
1c00bae4:	97a6                	add	a5,a5,s1
1c00bae6:	40d7a023          	sw	a3,1024(a5)
1c00baea:	0591                	addi	a1,a1,4
1c00baec:	0721                	addi	a4,a4,8
1c00baee:	fbc59ee3          	bne	a1,t3,1c00baaa <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x2be>
1c00baf2:	6909                	lui	s2,0x2
1c00baf4:	1818                	addi	a4,sp,48
1c00baf6:	42090793          	addi	a5,s2,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00bafa:	97ba                	add	a5,a5,a4
1c00bafc:	60040593          	addi	a1,s0,1536 # ffffe600 <__l2_shared_end+0xe3fee600>
1c00bb00:	00b784b3          	add	s1,a5,a1
1c00bb04:	42090793          	addi	a5,s2,1056
1c00bb08:	97ba                	add	a5,a5,a4
1c00bb0a:	40040513          	addi	a0,s0,1024
1c00bb0e:	85a6                	mv	a1,s1
1c00bb10:	953e                	add	a0,a0,a5
1c00bb12:	f5efe0ef          	jal	ra,1c00a270 <KYBER_poly_intt>
1c00bb16:	42090713          	addi	a4,s2,1056
1c00bb1a:	1814                	addi	a3,sp,48
1c00bb1c:	c0040793          	addi	a5,s0,-1024
1c00bb20:	9736                	add	a4,a4,a3
1c00bb22:	97ba                	add	a5,a5,a4
1c00bb24:	85a6                	mv	a1,s1
1c00bb26:	10078613          	addi	a2,a5,256
1c00bb2a:	4198                	lw	a4,0(a1)
1c00bb2c:	0789                	addi	a5,a5,2
1c00bb2e:	0591                	addi	a1,a1,4
1c00bb30:	01075693          	srli	a3,a4,0x10
1c00bb34:	fed79f23          	sh	a3,-2(a5)
1c00bb38:	0ee79f23          	sh	a4,254(a5)
1c00bb3c:	fef617e3          	bne	a2,a5,1c00bb2a <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x33e>
1c00bb40:	6a09                	lui	s4,0x2
1c00bb42:	1818                	addi	a4,sp,48
1c00bb44:	767d                	lui	a2,0xfffff
1c00bb46:	420a0793          	addi	a5,s4,1056 # 2420 <__CTOR_LIST__-0x1bffdbe4>
1c00bb4a:	97ba                	add	a5,a5,a4
1c00bb4c:	40060493          	addi	s1,a2,1024 # fffff400 <__l2_shared_end+0xe3fef400>
1c00bb50:	94be                	add	s1,s1,a5
1c00bb52:	420a0793          	addi	a5,s4,1056
1c00bb56:	97ba                	add	a5,a5,a4
1c00bb58:	963e                	add	a2,a2,a5
1c00bb5a:	85a6                	mv	a1,s1
1c00bb5c:	8526                	mv	a0,s1
1c00bb5e:	4f9000ef          	jal	ra,1c00c856 <PQCLEAN_KYBER512_CLEAN_polyvec_add>
1c00bb62:	1818                	addi	a4,sp,48
1c00bb64:	7979                	lui	s2,0xffffe
1c00bb66:	420a0793          	addi	a5,s4,1056
1c00bb6a:	97ba                	add	a5,a5,a4
1c00bb6c:	c0090413          	addi	s0,s2,-1024 # ffffdc00 <__l2_shared_end+0xe3fedc00>
1c00bb70:	943e                	add	s0,s0,a5
1c00bb72:	420a0793          	addi	a5,s4,1056
1c00bb76:	97ba                	add	a5,a5,a4
1c00bb78:	01278633          	add	a2,a5,s2
1c00bb7c:	85a2                	mv	a1,s0
1c00bb7e:	8522                	mv	a0,s0
1c00bb80:	0eb000ef          	jal	ra,1c00c46a <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00bb84:	1818                	addi	a4,sp,48
1c00bb86:	420a0793          	addi	a5,s4,1056
1c00bb8a:	97ba                	add	a5,a5,a4
1c00bb8c:	e0090613          	addi	a2,s2,-512
1c00bb90:	963e                	add	a2,a2,a5
1c00bb92:	85a2                	mv	a1,s0
1c00bb94:	8522                	mv	a0,s0
1c00bb96:	0d5000ef          	jal	ra,1c00c46a <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00bb9a:	8526                	mv	a0,s1
1c00bb9c:	4a5000ef          	jal	ra,1c00c840 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>
1c00bba0:	8522                	mv	a0,s0
1c00bba2:	0a1000ef          	jal	ra,1c00c442 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00bba6:	85a6                	mv	a1,s1
1c00bba8:	854e                	mv	a0,s3
1c00bbaa:	113000ef          	jal	ra,1c00c4bc <PQCLEAN_KYBER512_CLEAN_polyvec_compress>
1c00bbae:	85a2                	mv	a1,s0
1c00bbb0:	28098513          	addi	a0,s3,640
1c00bbb4:	2191                	jal	1c00bff8 <PQCLEAN_KYBER512_CLEAN_poly_compress>
1c00bbb6:	6309                	lui	t1,0x2
1c00bbb8:	911a                	add	sp,sp,t1
1c00bbba:	48c12083          	lw	ra,1164(sp)
1c00bbbe:	48812403          	lw	s0,1160(sp)
1c00bbc2:	48412483          	lw	s1,1156(sp)
1c00bbc6:	48012903          	lw	s2,1152(sp)
1c00bbca:	47c12983          	lw	s3,1148(sp)
1c00bbce:	47812a03          	lw	s4,1144(sp)
1c00bbd2:	47412a83          	lw	s5,1140(sp)
1c00bbd6:	47012b03          	lw	s6,1136(sp)
1c00bbda:	46c12b83          	lw	s7,1132(sp)
1c00bbde:	46812c03          	lw	s8,1128(sp)
1c00bbe2:	46412c83          	lw	s9,1124(sp)
1c00bbe6:	46012d03          	lw	s10,1120(sp)
1c00bbea:	45c12d83          	lw	s11,1116(sp)
1c00bbee:	49010113          	addi	sp,sp,1168
1c00bbf2:	8082                	ret

1c00bbf4 <PQCLEAN_KYBER512_CLEAN_indcpa_dec>:
1c00bbf4:	dd010113          	addi	sp,sp,-560
1c00bbf8:	737d                	lui	t1,0xfffff
1c00bbfa:	22112623          	sw	ra,556(sp)
1c00bbfe:	22812423          	sw	s0,552(sp)
1c00bc02:	22912223          	sw	s1,548(sp)
1c00bc06:	23212023          	sw	s2,544(sp)
1c00bc0a:	21312e23          	sw	s3,540(sp)
1c00bc0e:	21412c23          	sw	s4,536(sp)
1c00bc12:	911a                	add	sp,sp,t1
1c00bc14:	6a05                	lui	s4,0x1
1c00bc16:	081c                	addi	a5,sp,16
1c00bc18:	842a                	mv	s0,a0
1c00bc1a:	a00a0513          	addi	a0,s4,-1536 # a00 <__CTOR_LIST__-0x1bfff604>
1c00bc1e:	953e                	add	a0,a0,a5
1c00bc20:	84b2                	mv	s1,a2
1c00bc22:	892e                	mv	s2,a1
1c00bc24:	17d000ef          	jal	ra,1c00c5a0 <PQCLEAN_KYBER512_CLEAN_polyvec_decompress>
1c00bc28:	0818                	addi	a4,sp,16
1c00bc2a:	79fd                	lui	s3,0xfffff
1c00bc2c:	200a0793          	addi	a5,s4,512
1c00bc30:	97ba                	add	a5,a5,a4
1c00bc32:	e0098513          	addi	a0,s3,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c00bc36:	953e                	add	a0,a0,a5
1c00bc38:	28090593          	addi	a1,s2,640
1c00bc3c:	2331                	jal	1c00c148 <PQCLEAN_KYBER512_CLEAN_poly_decompress>
1c00bc3e:	081c                	addi	a5,sp,16
1c00bc40:	e00a0513          	addi	a0,s4,-512
1c00bc44:	85a6                	mv	a1,s1
1c00bc46:	953e                	add	a0,a0,a5
1c00bc48:	207000ef          	jal	ra,1c00c64e <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>
1c00bc4c:	081c                	addi	a5,sp,16
1c00bc4e:	a00a0513          	addi	a0,s4,-1536
1c00bc52:	953e                	add	a0,a0,a5
1c00bc54:	21b000ef          	jal	ra,1c00c66e <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c00bc58:	0814                	addi	a3,sp,16
1c00bc5a:	200a0713          	addi	a4,s4,512
1c00bc5e:	9736                	add	a4,a4,a3
1c00bc60:	974e                	add	a4,a4,s3
1c00bc62:	c63a                	sw	a4,12(sp)
1c00bc64:	4532                	lw	a0,12(sp)
1c00bc66:	a00a0613          	addi	a2,s4,-1536
1c00bc6a:	e00a0593          	addi	a1,s4,-512
1c00bc6e:	9636                	add	a2,a2,a3
1c00bc70:	95b6                	add	a1,a1,a3
1c00bc72:	385000ef          	jal	ra,1c00c7f6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00bc76:	47b2                	lw	a5,12(sp)
1c00bc78:	20078713          	addi	a4,a5,512
1c00bc7c:	883a                	mv	a6,a4
1c00bc7e:	4388                	lw	a0,0(a5)
1c00bc80:	43cc                	lw	a1,4(a5)
1c00bc82:	4790                	lw	a2,8(a5)
1c00bc84:	47d4                	lw	a3,12(a5)
1c00bc86:	c308                	sw	a0,0(a4)
1c00bc88:	c34c                	sw	a1,4(a4)
1c00bc8a:	c710                	sw	a2,8(a4)
1c00bc8c:	c754                	sw	a3,12(a4)
1c00bc8e:	07c1                	addi	a5,a5,16
1c00bc90:	0741                	addi	a4,a4,16
1c00bc92:	ff0796e3          	bne	a5,a6,1c00bc7e <PQCLEAN_KYBER512_CLEAN_indcpa_dec+0x8a>
1c00bc96:	6785                	lui	a5,0x1
1c00bc98:	777d                	lui	a4,0xfffff
1c00bc9a:	20078793          	addi	a5,a5,512 # 1200 <__CTOR_LIST__-0x1bffee04>
1c00bc9e:	0814                	addi	a3,sp,16
1c00bca0:	20070713          	addi	a4,a4,512 # fffff200 <__l2_shared_end+0xe3fef200>
1c00bca4:	97b6                	add	a5,a5,a3
1c00bca6:	6341                	lui	t1,0x10
1c00bca8:	7efd                	lui	t4,0xfffff
1c00bcaa:	973e                	add	a4,a4,a5
1c00bcac:	4581                	li	a1,0
1c00bcae:	137d                	addi	t1,t1,-1
1c00bcb0:	10000e13          	li	t3,256
1c00bcb4:	00071603          	lh	a2,0(a4)
1c00bcb8:	00471883          	lh	a7,4(a4)
1c00bcbc:	00271683          	lh	a3,2(a4)
1c00bcc0:	00671803          	lh	a6,6(a4)
1c00bcc4:	4015d793          	srai	a5,a1,0x1
1c00bcc8:	00279513          	slli	a0,a5,0x2
1c00bccc:	0c04                	addi	s1,sp,528
1c00bcce:	0642                	slli	a2,a2,0x10
1c00bcd0:	0068f8b3          	and	a7,a7,t1
1c00bcd4:	0785                	addi	a5,a5,1
1c00bcd6:	06c2                	slli	a3,a3,0x10
1c00bcd8:	00687833          	and	a6,a6,t1
1c00bcdc:	9526                	add	a0,a0,s1
1c00bcde:	01166633          	or	a2,a2,a7
1c00bce2:	078a                	slli	a5,a5,0x2
1c00bce4:	0106e6b3          	or	a3,a3,a6
1c00bce8:	40c52023          	sw	a2,1024(a0)
1c00bcec:	97a6                	add	a5,a5,s1
1c00bcee:	40d7a023          	sw	a3,1024(a5)
1c00bcf2:	0591                	addi	a1,a1,4
1c00bcf4:	0721                	addi	a4,a4,8
1c00bcf6:	fbc59fe3          	bne	a1,t3,1c00bcb4 <PQCLEAN_KYBER512_CLEAN_indcpa_dec+0xc0>
1c00bcfa:	6705                	lui	a4,0x1
1c00bcfc:	0814                	addi	a3,sp,16
1c00bcfe:	20070793          	addi	a5,a4,512 # 1200 <__CTOR_LIST__-0x1bffee04>
1c00bd02:	600e8593          	addi	a1,t4,1536 # fffff600 <__l2_shared_end+0xe3fef600>
1c00bd06:	97b6                	add	a5,a5,a3
1c00bd08:	00b784b3          	add	s1,a5,a1
1c00bd0c:	20070793          	addi	a5,a4,512
1c00bd10:	97b6                	add	a5,a5,a3
1c00bd12:	400e8513          	addi	a0,t4,1024
1c00bd16:	85a6                	mv	a1,s1
1c00bd18:	953e                	add	a0,a0,a5
1c00bd1a:	d56fe0ef          	jal	ra,1c00a270 <KYBER_poly_intt>
1c00bd1e:	0c1c                	addi	a5,sp,528
1c00bd20:	85a6                	mv	a1,s1
1c00bd22:	0e10                	addi	a2,sp,784
1c00bd24:	4198                	lw	a4,0(a1)
1c00bd26:	0789                	addi	a5,a5,2
1c00bd28:	0591                	addi	a1,a1,4
1c00bd2a:	01075693          	srli	a3,a4,0x10
1c00bd2e:	fed79f23          	sh	a3,-2(a5)
1c00bd32:	0ee79f23          	sh	a4,254(a5)
1c00bd36:	fef617e3          	bne	a2,a5,1c00bd24 <PQCLEAN_KYBER512_CLEAN_indcpa_dec+0x130>
1c00bd3a:	6705                	lui	a4,0x1
1c00bd3c:	0814                	addi	a3,sp,16
1c00bd3e:	77fd                	lui	a5,0xfffff
1c00bd40:	20070713          	addi	a4,a4,512 # 1200 <__CTOR_LIST__-0x1bffee04>
1c00bd44:	0c10                	addi	a2,sp,528
1c00bd46:	e0078793          	addi	a5,a5,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c00bd4a:	9736                	add	a4,a4,a3
1c00bd4c:	00f705b3          	add	a1,a4,a5
1c00bd50:	8532                	mv	a0,a2
1c00bd52:	2781                	jal	1c00c492 <PQCLEAN_KYBER512_CLEAN_poly_sub>
1c00bd54:	0c08                	addi	a0,sp,528
1c00bd56:	25f5                	jal	1c00c442 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00bd58:	0c0c                	addi	a1,sp,528
1c00bd5a:	8522                	mv	a0,s0
1c00bd5c:	21f5                	jal	1c00c248 <PQCLEAN_KYBER512_CLEAN_poly_tomsg>
1c00bd5e:	6305                	lui	t1,0x1
1c00bd60:	911a                	add	sp,sp,t1
1c00bd62:	22c12083          	lw	ra,556(sp)
1c00bd66:	22812403          	lw	s0,552(sp)
1c00bd6a:	22412483          	lw	s1,548(sp)
1c00bd6e:	22012903          	lw	s2,544(sp)
1c00bd72:	21c12983          	lw	s3,540(sp)
1c00bd76:	21812a03          	lw	s4,536(sp)
1c00bd7a:	23010113          	addi	sp,sp,560
1c00bd7e:	8082                	ret

1c00bd80 <PQCLEAN_KYBER512_CLEAN_crypto_kem_dec>:
1c00bd80:	c5010113          	addi	sp,sp,-944
1c00bd84:	3b212023          	sw	s2,928(sp)
1c00bd88:	892a                	mv	s2,a0
1c00bd8a:	850a                	mv	a0,sp
1c00bd8c:	3a112623          	sw	ra,940(sp)
1c00bd90:	3a812423          	sw	s0,936(sp)
1c00bd94:	3a912223          	sw	s1,932(sp)
1c00bd98:	8432                	mv	s0,a2
1c00bd9a:	39312e23          	sw	s3,924(sp)
1c00bd9e:	39412c23          	sw	s4,920(sp)
1c00bda2:	39512a23          	sw	s5,916(sp)
1c00bda6:	39612823          	sw	s6,912(sp)
1c00bdaa:	39712623          	sw	s7,908(sp)
1c00bdae:	39812423          	sw	s8,904(sp)
1c00bdb2:	39912223          	sw	s9,900(sp)
1c00bdb6:	39a12023          	sw	s10,896(sp)
1c00bdba:	84ae                	mv	s1,a1
1c00bdbc:	3d25                	jal	1c00bbf4 <PQCLEAN_KYBER512_CLEAN_indcpa_dec>
1c00bdbe:	62544603          	lbu	a2,1573(s0)
1c00bdc2:	62144983          	lbu	s3,1569(s0)
1c00bdc6:	62944083          	lbu	ra,1577(s0)
1c00bdca:	62d44383          	lbu	t2,1581(s0)
1c00bdce:	63144283          	lbu	t0,1585(s0)
1c00bdd2:	63544f83          	lbu	t6,1589(s0)
1c00bdd6:	62444d03          	lbu	s10,1572(s0)
1c00bdda:	62644c83          	lbu	s9,1574(s0)
1c00bdde:	62844c03          	lbu	s8,1576(s0)
1c00bde2:	62c44b83          	lbu	s7,1580(s0)
1c00bde6:	63044b03          	lbu	s6,1584(s0)
1c00bdea:	63444a83          	lbu	s5,1588(s0)
1c00bdee:	62044803          	lbu	a6,1568(s0)
1c00bdf2:	62244f03          	lbu	t5,1570(s0)
1c00bdf6:	62a44e83          	lbu	t4,1578(s0)
1c00bdfa:	62e44e03          	lbu	t3,1582(s0)
1c00bdfe:	63244303          	lbu	t1,1586(s0)
1c00be02:	63644883          	lbu	a7,1590(s0)
1c00be06:	62344a03          	lbu	s4,1571(s0)
1c00be0a:	62744503          	lbu	a0,1575(s0)
1c00be0e:	62b44583          	lbu	a1,1579(s0)
1c00be12:	62f44683          	lbu	a3,1583(s0)
1c00be16:	63344703          	lbu	a4,1587(s0)
1c00be1a:	63744783          	lbu	a5,1591(s0)
1c00be1e:	09a2                	slli	s3,s3,0x8
1c00be20:	0622                	slli	a2,a2,0x8
1c00be22:	00a2                	slli	ra,ra,0x8
1c00be24:	03a2                	slli	t2,t2,0x8
1c00be26:	02a2                	slli	t0,t0,0x8
1c00be28:	0fa2                	slli	t6,t6,0x8
1c00be2a:	0180e0b3          	or	ra,ra,s8
1c00be2e:	0173e3b3          	or	t2,t2,s7
1c00be32:	0162e2b3          	or	t0,t0,s6
1c00be36:	015fefb3          	or	t6,t6,s5
1c00be3a:	0109e833          	or	a6,s3,a6
1c00be3e:	01a66633          	or	a2,a2,s10
1c00be42:	010c9993          	slli	s3,s9,0x10
1c00be46:	0f42                	slli	t5,t5,0x10
1c00be48:	0ec2                	slli	t4,t4,0x10
1c00be4a:	0e42                	slli	t3,t3,0x10
1c00be4c:	0342                	slli	t1,t1,0x10
1c00be4e:	08c2                	slli	a7,a7,0x10
1c00be50:	010f6f33          	or	t5,t5,a6
1c00be54:	001eeeb3          	or	t4,t4,ra
1c00be58:	00536333          	or	t1,t1,t0
1c00be5c:	01f8e8b3          	or	a7,a7,t6
1c00be60:	007e6e33          	or	t3,t3,t2
1c00be64:	00c9e633          	or	a2,s3,a2
1c00be68:	018a1813          	slli	a6,s4,0x18
1c00be6c:	0562                	slli	a0,a0,0x18
1c00be6e:	05e2                	slli	a1,a1,0x18
1c00be70:	06e2                	slli	a3,a3,0x18
1c00be72:	0762                	slli	a4,a4,0x18
1c00be74:	07e2                	slli	a5,a5,0x18
1c00be76:	01e86833          	or	a6,a6,t5
1c00be7a:	01d5e5b3          	or	a1,a1,t4
1c00be7e:	01c6e6b3          	or	a3,a3,t3
1c00be82:	8d51                	or	a0,a0,a2
1c00be84:	00676733          	or	a4,a4,t1
1c00be88:	0117e7b3          	or	a5,a5,a7
1c00be8c:	63844303          	lbu	t1,1592(s0)
1c00be90:	63944883          	lbu	a7,1593(s0)
1c00be94:	d042                	sw	a6,32(sp)
1c00be96:	d22a                	sw	a0,36(sp)
1c00be98:	d42e                	sw	a1,40(sp)
1c00be9a:	d636                	sw	a3,44(sp)
1c00be9c:	d83a                	sw	a4,48(sp)
1c00be9e:	da3e                	sw	a5,52(sp)
1c00bea0:	63a44603          	lbu	a2,1594(s0)
1c00bea4:	63d44803          	lbu	a6,1597(s0)
1c00bea8:	63c44583          	lbu	a1,1596(s0)
1c00beac:	63e44683          	lbu	a3,1598(s0)
1c00beb0:	63b44703          	lbu	a4,1595(s0)
1c00beb4:	63f44783          	lbu	a5,1599(s0)
1c00beb8:	08a2                	slli	a7,a7,0x8
1c00beba:	0822                	slli	a6,a6,0x8
1c00bebc:	00b86833          	or	a6,a6,a1
1c00bec0:	0068e8b3          	or	a7,a7,t1
1c00bec4:	0642                	slli	a2,a2,0x10
1c00bec6:	06c2                	slli	a3,a3,0x10
1c00bec8:	01166633          	or	a2,a2,a7
1c00becc:	0106e6b3          	or	a3,a3,a6
1c00bed0:	0762                	slli	a4,a4,0x18
1c00bed2:	07e2                	slli	a5,a5,0x18
1c00bed4:	8f51                	or	a4,a4,a2
1c00bed6:	8fd5                	or	a5,a5,a3
1c00bed8:	858a                	mv	a1,sp
1c00beda:	0088                	addi	a0,sp,64
1c00bedc:	04000613          	li	a2,64
1c00bee0:	dc3a                	sw	a4,56(sp)
1c00bee2:	de3e                	sw	a5,60(sp)
1c00bee4:	fa5fe0ef          	jal	ra,1c00ae88 <sha3_512>
1c00bee8:	1094                	addi	a3,sp,96
1c00beea:	30040613          	addi	a2,s0,768
1c00beee:	858a                	mv	a1,sp
1c00bef0:	0108                	addi	a0,sp,128
1c00bef2:	8fbff0ef          	jal	ra,1c00b7ec <PQCLEAN_KYBER512_CLEAN_indcpa_enc>
1c00bef6:	010c                	addi	a1,sp,128
1c00bef8:	30000613          	li	a2,768
1c00befc:	8526                	mv	a0,s1
1c00befe:	235000ef          	jal	ra,1c00c932 <PQCLEAN_KYBER512_CLEAN_verify>
1c00bf02:	86aa                	mv	a3,a0
1c00bf04:	85a6                	mv	a1,s1
1c00bf06:	1088                	addi	a0,sp,96
1c00bf08:	30000613          	li	a2,768
1c00bf0c:	84b6                	mv	s1,a3
1c00bf0e:	c9bfe0ef          	jal	ra,1c00aba8 <sha3_256>
1c00bf12:	0ff4f693          	andi	a3,s1,255
1c00bf16:	64040593          	addi	a1,s0,1600
1c00bf1a:	0088                	addi	a0,sp,64
1c00bf1c:	02000613          	li	a2,32
1c00bf20:	32d000ef          	jal	ra,1c00ca4c <PQCLEAN_KYBER512_CLEAN_cmov>
1c00bf24:	854a                	mv	a0,s2
1c00bf26:	0090                	addi	a2,sp,64
1c00bf28:	04000693          	li	a3,64
1c00bf2c:	02000593          	li	a1,32
1c00bf30:	9f5fe0ef          	jal	ra,1c00a924 <shake256>
1c00bf34:	3ac12083          	lw	ra,940(sp)
1c00bf38:	3a812403          	lw	s0,936(sp)
1c00bf3c:	3a412483          	lw	s1,932(sp)
1c00bf40:	3a012903          	lw	s2,928(sp)
1c00bf44:	39c12983          	lw	s3,924(sp)
1c00bf48:	39812a03          	lw	s4,920(sp)
1c00bf4c:	39412a83          	lw	s5,916(sp)
1c00bf50:	39012b03          	lw	s6,912(sp)
1c00bf54:	38c12b83          	lw	s7,908(sp)
1c00bf58:	38812c03          	lw	s8,904(sp)
1c00bf5c:	38412c83          	lw	s9,900(sp)
1c00bf60:	38012d03          	lw	s10,896(sp)
1c00bf64:	4501                	li	a0,0
1c00bf66:	3b010113          	addi	sp,sp,944
1c00bf6a:	8082                	ret

1c00bf6c <PQCLEAN_KYBER512_CLEAN_basemul>:
1c00bf6c:	00261783          	lh	a5,2(a2)
1c00bf70:	00259703          	lh	a4,2(a1)
1c00bf74:	1101                	addi	sp,sp,-32
1c00bf76:	cc22                	sw	s0,24(sp)
1c00bf78:	842a                	mv	s0,a0
1c00bf7a:	02f70533          	mul	a0,a4,a5
1c00bf7e:	ce06                	sw	ra,28(sp)
1c00bf80:	ca26                	sw	s1,20(sp)
1c00bf82:	c84a                	sw	s2,16(sp)
1c00bf84:	c64e                	sw	s3,12(sp)
1c00bf86:	892e                	mv	s2,a1
1c00bf88:	84b2                	mv	s1,a2
1c00bf8a:	89b6                	mv	s3,a3
1c00bf8c:	0f5000ef          	jal	ra,1c00c880 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bf90:	87aa                	mv	a5,a0
1c00bf92:	03350533          	mul	a0,a0,s3
1c00bf96:	00f41023          	sh	a5,0(s0)
1c00bf9a:	0e7000ef          	jal	ra,1c00c880 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bf9e:	00a41023          	sh	a0,0(s0)
1c00bfa2:	00049783          	lh	a5,0(s1)
1c00bfa6:	00091503          	lh	a0,0(s2)
1c00bfaa:	02f50533          	mul	a0,a0,a5
1c00bfae:	0d3000ef          	jal	ra,1c00c880 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bfb2:	00045783          	lhu	a5,0(s0)
1c00bfb6:	953e                	add	a0,a0,a5
1c00bfb8:	00a41023          	sh	a0,0(s0)
1c00bfbc:	00249783          	lh	a5,2(s1)
1c00bfc0:	00091503          	lh	a0,0(s2)
1c00bfc4:	02f50533          	mul	a0,a0,a5
1c00bfc8:	0b9000ef          	jal	ra,1c00c880 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bfcc:	00a41123          	sh	a0,2(s0)
1c00bfd0:	00049783          	lh	a5,0(s1)
1c00bfd4:	00291503          	lh	a0,2(s2)
1c00bfd8:	02f50533          	mul	a0,a0,a5
1c00bfdc:	0a5000ef          	jal	ra,1c00c880 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bfe0:	00245783          	lhu	a5,2(s0)
1c00bfe4:	40f2                	lw	ra,28(sp)
1c00bfe6:	44d2                	lw	s1,20(sp)
1c00bfe8:	953e                	add	a0,a0,a5
1c00bfea:	00a41123          	sh	a0,2(s0)
1c00bfee:	4462                	lw	s0,24(sp)
1c00bff0:	4942                	lw	s2,16(sp)
1c00bff2:	49b2                	lw	s3,12(sp)
1c00bff4:	6105                	addi	sp,sp,32
1c00bff6:	8082                	ret

1c00bff8 <PQCLEAN_KYBER512_CLEAN_poly_compress>:
1c00bff8:	1101                	addi	sp,sp,-32
1c00bffa:	6605                	lui	a2,0x1
1c00bffc:	ce22                	sw	s0,28(sp)
1c00bffe:	cc26                	sw	s1,24(sp)
1c00c000:	ca4a                	sw	s2,20(sp)
1c00c002:	c84e                	sw	s3,16(sp)
1c00c004:	c652                	sw	s4,12(sp)
1c00c006:	08050813          	addi	a6,a0,128
1c00c00a:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c00e:	00259a03          	lh	s4,2(a1)
1c00c012:	00059383          	lh	t2,0(a1)
1c00c016:	00659983          	lh	s3,6(a1)
1c00c01a:	00a59903          	lh	s2,10(a1)
1c00c01e:	00e59483          	lh	s1,14(a1)
1c00c022:	00459283          	lh	t0,4(a1)
1c00c026:	00859e03          	lh	t3,8(a1)
1c00c02a:	00c59f83          	lh	t6,12(a1)
1c00c02e:	40fa5893          	srai	a7,s4,0xf
1c00c032:	00c8f8b3          	and	a7,a7,a2
1c00c036:	40f3df13          	srai	t5,t2,0xf
1c00c03a:	40f9d693          	srai	a3,s3,0xf
1c00c03e:	40f95713          	srai	a4,s2,0xf
1c00c042:	40f4d793          	srai	a5,s1,0xf
1c00c046:	98d2                	add	a7,a7,s4
1c00c048:	00cf7f33          	and	t5,t5,a2
1c00c04c:	40fe5413          	srai	s0,t3,0xf
1c00c050:	8ef1                	and	a3,a3,a2
1c00c052:	40f2de93          	srai	t4,t0,0xf
1c00c056:	8f71                	and	a4,a4,a2
1c00c058:	8ff1                	and	a5,a5,a2
1c00c05a:	40ffd313          	srai	t1,t6,0xf
1c00c05e:	08c2                	slli	a7,a7,0x10
1c00c060:	9f1e                	add	t5,t5,t2
1c00c062:	96ce                	add	a3,a3,s3
1c00c064:	00cefeb3          	and	t4,t4,a2
1c00c068:	974a                	add	a4,a4,s2
1c00c06a:	8c71                	and	s0,s0,a2
1c00c06c:	97a6                	add	a5,a5,s1
1c00c06e:	00c37333          	and	t1,t1,a2
1c00c072:	0108d893          	srli	a7,a7,0x10
1c00c076:	0f42                	slli	t5,t5,0x10
1c00c078:	06c2                	slli	a3,a3,0x10
1c00c07a:	9e96                	add	t4,t4,t0
1c00c07c:	0742                	slli	a4,a4,0x10
1c00c07e:	9e22                	add	t3,t3,s0
1c00c080:	07c2                	slli	a5,a5,0x10
1c00c082:	937e                	add	t1,t1,t6
1c00c084:	0892                	slli	a7,a7,0x4
1c00c086:	010f5f13          	srli	t5,t5,0x10
1c00c08a:	82c1                	srli	a3,a3,0x10
1c00c08c:	8341                	srli	a4,a4,0x10
1c00c08e:	83c1                	srli	a5,a5,0x10
1c00c090:	0ec2                	slli	t4,t4,0x10
1c00c092:	0e42                	slli	t3,t3,0x10
1c00c094:	0342                	slli	t1,t1,0x10
1c00c096:	68088893          	addi	a7,a7,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00c09a:	0f12                	slli	t5,t5,0x4
1c00c09c:	02c8c8b3          	div	a7,a7,a2
1c00c0a0:	0692                	slli	a3,a3,0x4
1c00c0a2:	010ede93          	srli	t4,t4,0x10
1c00c0a6:	0712                	slli	a4,a4,0x4
1c00c0a8:	010e5e13          	srli	t3,t3,0x10
1c00c0ac:	0792                	slli	a5,a5,0x4
1c00c0ae:	01035313          	srli	t1,t1,0x10
1c00c0b2:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00c0b6:	68068693          	addi	a3,a3,1664
1c00c0ba:	0e92                	slli	t4,t4,0x4
1c00c0bc:	68070713          	addi	a4,a4,1664
1c00c0c0:	0e12                	slli	t3,t3,0x4
1c00c0c2:	68078793          	addi	a5,a5,1664
1c00c0c6:	0312                	slli	t1,t1,0x4
1c00c0c8:	680e8e93          	addi	t4,t4,1664
1c00c0cc:	680e0e13          	addi	t3,t3,1664
1c00c0d0:	68030313          	addi	t1,t1,1664 # 1680 <__CTOR_LIST__-0x1bffe984>
1c00c0d4:	0511                	addi	a0,a0,4
1c00c0d6:	05c1                	addi	a1,a1,16
1c00c0d8:	02cf4f33          	div	t5,t5,a2
1c00c0dc:	00f8f893          	andi	a7,a7,15
1c00c0e0:	0892                	slli	a7,a7,0x4
1c00c0e2:	02c6c6b3          	div	a3,a3,a2
1c00c0e6:	00ff7f13          	andi	t5,t5,15
1c00c0ea:	01e8e8b3          	or	a7,a7,t5
1c00c0ee:	ff150e23          	sb	a7,-4(a0)
1c00c0f2:	02c74733          	div	a4,a4,a2
1c00c0f6:	8abd                	andi	a3,a3,15
1c00c0f8:	0692                	slli	a3,a3,0x4
1c00c0fa:	02c7c7b3          	div	a5,a5,a2
1c00c0fe:	8b3d                	andi	a4,a4,15
1c00c100:	0712                	slli	a4,a4,0x4
1c00c102:	02ceceb3          	div	t4,t4,a2
1c00c106:	8bbd                	andi	a5,a5,15
1c00c108:	0792                	slli	a5,a5,0x4
1c00c10a:	02ce4e33          	div	t3,t3,a2
1c00c10e:	00fef893          	andi	a7,t4,15
1c00c112:	0116e6b3          	or	a3,a3,a7
1c00c116:	fed50ea3          	sb	a3,-3(a0)
1c00c11a:	02c34333          	div	t1,t1,a2
1c00c11e:	00fe7e13          	andi	t3,t3,15
1c00c122:	01c76733          	or	a4,a4,t3
1c00c126:	fee50f23          	sb	a4,-2(a0)
1c00c12a:	00f37313          	andi	t1,t1,15
1c00c12e:	0067e7b3          	or	a5,a5,t1
1c00c132:	fef50fa3          	sb	a5,-1(a0)
1c00c136:	ed051ce3          	bne	a0,a6,1c00c00e <PQCLEAN_KYBER512_CLEAN_poly_compress+0x16>
1c00c13a:	4472                	lw	s0,28(sp)
1c00c13c:	44e2                	lw	s1,24(sp)
1c00c13e:	4952                	lw	s2,20(sp)
1c00c140:	49c2                	lw	s3,16(sp)
1c00c142:	4a32                	lw	s4,12(sp)
1c00c144:	6105                	addi	sp,sp,32
1c00c146:	8082                	ret

1c00c148 <PQCLEAN_KYBER512_CLEAN_poly_decompress>:
1c00c148:	6705                	lui	a4,0x1
1c00c14a:	08058693          	addi	a3,a1,128
1c00c14e:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c152:	0005c783          	lbu	a5,0(a1)
1c00c156:	0511                	addi	a0,a0,4
1c00c158:	0585                	addi	a1,a1,1
1c00c15a:	8bbd                	andi	a5,a5,15
1c00c15c:	02e787b3          	mul	a5,a5,a4
1c00c160:	07a1                	addi	a5,a5,8
1c00c162:	8791                	srai	a5,a5,0x4
1c00c164:	fef51e23          	sh	a5,-4(a0)
1c00c168:	fff5c783          	lbu	a5,-1(a1)
1c00c16c:	8391                	srli	a5,a5,0x4
1c00c16e:	02e787b3          	mul	a5,a5,a4
1c00c172:	07a1                	addi	a5,a5,8
1c00c174:	8791                	srai	a5,a5,0x4
1c00c176:	fef51f23          	sh	a5,-2(a0)
1c00c17a:	fcd59ce3          	bne	a1,a3,1c00c152 <PQCLEAN_KYBER512_CLEAN_poly_decompress+0xa>
1c00c17e:	8082                	ret

1c00c180 <PQCLEAN_KYBER512_CLEAN_poly_frombytes>:
1c00c180:	6685                	lui	a3,0x1
1c00c182:	18058613          	addi	a2,a1,384
1c00c186:	16fd                	addi	a3,a3,-1
1c00c188:	0015c783          	lbu	a5,1(a1)
1c00c18c:	0005c703          	lbu	a4,0(a1)
1c00c190:	058d                	addi	a1,a1,3
1c00c192:	07a2                	slli	a5,a5,0x8
1c00c194:	8fd9                	or	a5,a5,a4
1c00c196:	8ff5                	and	a5,a5,a3
1c00c198:	00f51023          	sh	a5,0(a0)
1c00c19c:	ffe5c703          	lbu	a4,-2(a1)
1c00c1a0:	fff5c783          	lbu	a5,-1(a1)
1c00c1a4:	0511                	addi	a0,a0,4
1c00c1a6:	8311                	srli	a4,a4,0x4
1c00c1a8:	0792                	slli	a5,a5,0x4
1c00c1aa:	8fd9                	or	a5,a5,a4
1c00c1ac:	fef51f23          	sh	a5,-2(a0)
1c00c1b0:	fcb61ce3          	bne	a2,a1,1c00c188 <PQCLEAN_KYBER512_CLEAN_poly_frombytes+0x8>
1c00c1b4:	8082                	ret

1c00c1b6 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>:
1c00c1b6:	20050713          	addi	a4,a0,512
1c00c1ba:	0005c783          	lbu	a5,0(a1)
1c00c1be:	0541                	addi	a0,a0,16
1c00c1c0:	0585                	addi	a1,a1,1
1c00c1c2:	8b85                	andi	a5,a5,1
1c00c1c4:	40f007b3          	neg	a5,a5
1c00c1c8:	6817f793          	andi	a5,a5,1665
1c00c1cc:	fef51823          	sh	a5,-16(a0)
1c00c1d0:	fff5c783          	lbu	a5,-1(a1)
1c00c1d4:	07fa                	slli	a5,a5,0x1e
1c00c1d6:	87fd                	srai	a5,a5,0x1f
1c00c1d8:	6817f793          	andi	a5,a5,1665
1c00c1dc:	fef51923          	sh	a5,-14(a0)
1c00c1e0:	fff5c783          	lbu	a5,-1(a1)
1c00c1e4:	07f6                	slli	a5,a5,0x1d
1c00c1e6:	87fd                	srai	a5,a5,0x1f
1c00c1e8:	6817f793          	andi	a5,a5,1665
1c00c1ec:	fef51a23          	sh	a5,-12(a0)
1c00c1f0:	fff5c783          	lbu	a5,-1(a1)
1c00c1f4:	07f2                	slli	a5,a5,0x1c
1c00c1f6:	87fd                	srai	a5,a5,0x1f
1c00c1f8:	6817f793          	andi	a5,a5,1665
1c00c1fc:	fef51b23          	sh	a5,-10(a0)
1c00c200:	fff5c783          	lbu	a5,-1(a1)
1c00c204:	07ee                	slli	a5,a5,0x1b
1c00c206:	87fd                	srai	a5,a5,0x1f
1c00c208:	6817f793          	andi	a5,a5,1665
1c00c20c:	fef51c23          	sh	a5,-8(a0)
1c00c210:	fff5c783          	lbu	a5,-1(a1)
1c00c214:	07ea                	slli	a5,a5,0x1a
1c00c216:	87fd                	srai	a5,a5,0x1f
1c00c218:	6817f793          	andi	a5,a5,1665
1c00c21c:	fef51d23          	sh	a5,-6(a0)
1c00c220:	fff5c783          	lbu	a5,-1(a1)
1c00c224:	07e6                	slli	a5,a5,0x19
1c00c226:	87fd                	srai	a5,a5,0x1f
1c00c228:	6817f793          	andi	a5,a5,1665
1c00c22c:	fef51e23          	sh	a5,-4(a0)
1c00c230:	fff5c783          	lbu	a5,-1(a1)
1c00c234:	879d                	srai	a5,a5,0x7
1c00c236:	40f007b3          	neg	a5,a5
1c00c23a:	6817f793          	andi	a5,a5,1665
1c00c23e:	fef51f23          	sh	a5,-2(a0)
1c00c242:	f6a71ce3          	bne	a4,a0,1c00c1ba <PQCLEAN_KYBER512_CLEAN_poly_frommsg+0x4>
1c00c246:	8082                	ret

1c00c248 <PQCLEAN_KYBER512_CLEAN_poly_tomsg>:
1c00c248:	6685                	lui	a3,0x1
1c00c24a:	20058613          	addi	a2,a1,512
1c00c24e:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c252:	00050023          	sb	zero,0(a0)
1c00c256:	00059783          	lh	a5,0(a1)
1c00c25a:	0505                	addi	a0,a0,1
1c00c25c:	05c1                	addi	a1,a1,16
1c00c25e:	40f7d713          	srai	a4,a5,0xf
1c00c262:	8f75                	and	a4,a4,a3
1c00c264:	97ba                	add	a5,a5,a4
1c00c266:	07c2                	slli	a5,a5,0x10
1c00c268:	83c1                	srli	a5,a5,0x10
1c00c26a:	0786                	slli	a5,a5,0x1
1c00c26c:	68078793          	addi	a5,a5,1664
1c00c270:	02d7c7b3          	div	a5,a5,a3
1c00c274:	0017f813          	andi	a6,a5,1
1c00c278:	ff050fa3          	sb	a6,-1(a0)
1c00c27c:	ff259703          	lh	a4,-14(a1)
1c00c280:	40f75793          	srai	a5,a4,0xf
1c00c284:	8ff5                	and	a5,a5,a3
1c00c286:	97ba                	add	a5,a5,a4
1c00c288:	07c2                	slli	a5,a5,0x10
1c00c28a:	83c1                	srli	a5,a5,0x10
1c00c28c:	0786                	slli	a5,a5,0x1
1c00c28e:	68078793          	addi	a5,a5,1664
1c00c292:	02d7c7b3          	div	a5,a5,a3
1c00c296:	8b85                	andi	a5,a5,1
1c00c298:	0786                	slli	a5,a5,0x1
1c00c29a:	0107e7b3          	or	a5,a5,a6
1c00c29e:	fef50fa3          	sb	a5,-1(a0)
1c00c2a2:	ff459703          	lh	a4,-12(a1)
1c00c2a6:	40f75813          	srai	a6,a4,0xf
1c00c2aa:	00d87833          	and	a6,a6,a3
1c00c2ae:	9742                	add	a4,a4,a6
1c00c2b0:	0742                	slli	a4,a4,0x10
1c00c2b2:	8341                	srli	a4,a4,0x10
1c00c2b4:	0706                	slli	a4,a4,0x1
1c00c2b6:	68070713          	addi	a4,a4,1664
1c00c2ba:	02d74733          	div	a4,a4,a3
1c00c2be:	8b05                	andi	a4,a4,1
1c00c2c0:	070a                	slli	a4,a4,0x2
1c00c2c2:	8fd9                	or	a5,a5,a4
1c00c2c4:	fef50fa3          	sb	a5,-1(a0)
1c00c2c8:	ff659703          	lh	a4,-10(a1)
1c00c2cc:	40f75813          	srai	a6,a4,0xf
1c00c2d0:	00d87833          	and	a6,a6,a3
1c00c2d4:	9742                	add	a4,a4,a6
1c00c2d6:	0742                	slli	a4,a4,0x10
1c00c2d8:	8341                	srli	a4,a4,0x10
1c00c2da:	0706                	slli	a4,a4,0x1
1c00c2dc:	68070713          	addi	a4,a4,1664
1c00c2e0:	02d74733          	div	a4,a4,a3
1c00c2e4:	8b05                	andi	a4,a4,1
1c00c2e6:	070e                	slli	a4,a4,0x3
1c00c2e8:	8fd9                	or	a5,a5,a4
1c00c2ea:	fef50fa3          	sb	a5,-1(a0)
1c00c2ee:	ff859703          	lh	a4,-8(a1)
1c00c2f2:	40f75813          	srai	a6,a4,0xf
1c00c2f6:	00d87833          	and	a6,a6,a3
1c00c2fa:	9742                	add	a4,a4,a6
1c00c2fc:	0742                	slli	a4,a4,0x10
1c00c2fe:	8341                	srli	a4,a4,0x10
1c00c300:	0706                	slli	a4,a4,0x1
1c00c302:	68070713          	addi	a4,a4,1664
1c00c306:	02d74733          	div	a4,a4,a3
1c00c30a:	8b05                	andi	a4,a4,1
1c00c30c:	0712                	slli	a4,a4,0x4
1c00c30e:	8fd9                	or	a5,a5,a4
1c00c310:	fef50fa3          	sb	a5,-1(a0)
1c00c314:	ffa59703          	lh	a4,-6(a1)
1c00c318:	40f75813          	srai	a6,a4,0xf
1c00c31c:	00d87833          	and	a6,a6,a3
1c00c320:	9742                	add	a4,a4,a6
1c00c322:	0742                	slli	a4,a4,0x10
1c00c324:	8341                	srli	a4,a4,0x10
1c00c326:	0706                	slli	a4,a4,0x1
1c00c328:	68070713          	addi	a4,a4,1664
1c00c32c:	02d74733          	div	a4,a4,a3
1c00c330:	8b05                	andi	a4,a4,1
1c00c332:	0716                	slli	a4,a4,0x5
1c00c334:	8fd9                	or	a5,a5,a4
1c00c336:	fef50fa3          	sb	a5,-1(a0)
1c00c33a:	ffc59703          	lh	a4,-4(a1)
1c00c33e:	40f75813          	srai	a6,a4,0xf
1c00c342:	00d87833          	and	a6,a6,a3
1c00c346:	9742                	add	a4,a4,a6
1c00c348:	0742                	slli	a4,a4,0x10
1c00c34a:	8341                	srli	a4,a4,0x10
1c00c34c:	0706                	slli	a4,a4,0x1
1c00c34e:	68070713          	addi	a4,a4,1664
1c00c352:	02d74733          	div	a4,a4,a3
1c00c356:	8b05                	andi	a4,a4,1
1c00c358:	071a                	slli	a4,a4,0x6
1c00c35a:	8fd9                	or	a5,a5,a4
1c00c35c:	fef50fa3          	sb	a5,-1(a0)
1c00c360:	ffe59703          	lh	a4,-2(a1)
1c00c364:	40f75813          	srai	a6,a4,0xf
1c00c368:	00d87833          	and	a6,a6,a3
1c00c36c:	9742                	add	a4,a4,a6
1c00c36e:	0742                	slli	a4,a4,0x10
1c00c370:	8341                	srli	a4,a4,0x10
1c00c372:	0706                	slli	a4,a4,0x1
1c00c374:	68070713          	addi	a4,a4,1664
1c00c378:	02d74733          	div	a4,a4,a3
1c00c37c:	8b05                	andi	a4,a4,1
1c00c37e:	071e                	slli	a4,a4,0x7
1c00c380:	8fd9                	or	a5,a5,a4
1c00c382:	fef50fa3          	sb	a5,-1(a0)
1c00c386:	ecb616e3          	bne	a2,a1,1c00c252 <PQCLEAN_KYBER512_CLEAN_poly_tomsg+0xa>
1c00c38a:	8082                	ret

1c00c38c <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>:
1c00c38c:	7155                	addi	sp,sp,-208
1c00c38e:	c5a2                	sw	s0,200(sp)
1c00c390:	86b2                	mv	a3,a2
1c00c392:	842a                	mv	s0,a0
1c00c394:	862e                	mv	a2,a1
1c00c396:	850a                	mv	a0,sp
1c00c398:	0c000593          	li	a1,192
1c00c39c:	c786                	sw	ra,204(sp)
1c00c39e:	2ba9                	jal	1c00c8f8 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00c3a0:	858a                	mv	a1,sp
1c00c3a2:	8522                	mv	a0,s0
1c00c3a4:	f2bfd0ef          	jal	ra,1c00a2ce <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>
1c00c3a8:	40be                	lw	ra,204(sp)
1c00c3aa:	442e                	lw	s0,200(sp)
1c00c3ac:	6169                	addi	sp,sp,208
1c00c3ae:	8082                	ret

1c00c3b0 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>:
1c00c3b0:	7175                	addi	sp,sp,-144
1c00c3b2:	c522                	sw	s0,136(sp)
1c00c3b4:	86b2                	mv	a3,a2
1c00c3b6:	842a                	mv	s0,a0
1c00c3b8:	862e                	mv	a2,a1
1c00c3ba:	850a                	mv	a0,sp
1c00c3bc:	08000593          	li	a1,128
1c00c3c0:	c706                	sw	ra,140(sp)
1c00c3c2:	2b1d                	jal	1c00c8f8 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00c3c4:	858a                	mv	a1,sp
1c00c3c6:	8522                	mv	a0,s0
1c00c3c8:	f95fd0ef          	jal	ra,1c00a35c <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>
1c00c3cc:	40ba                	lw	ra,140(sp)
1c00c3ce:	442a                	lw	s0,136(sp)
1c00c3d0:	6149                	addi	sp,sp,144
1c00c3d2:	8082                	ret

1c00c3d4 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>:
1c00c3d4:	1101                	addi	sp,sp,-32
1c00c3d6:	c452                	sw	s4,8(sp)
1c00c3d8:	c256                	sw	s5,4(sp)
1c00c3da:	1c000a37          	lui	s4,0x1c000
1c00c3de:	1c000ab7          	lui	s5,0x1c000
1c00c3e2:	ca26                	sw	s1,20(sp)
1c00c3e4:	c84a                	sw	s2,16(sp)
1c00c3e6:	c64e                	sw	s3,12(sp)
1c00c3e8:	ce06                	sw	ra,28(sp)
1c00c3ea:	cc22                	sw	s0,24(sp)
1c00c3ec:	1c8a0a13          	addi	s4,s4,456 # 1c0001c8 <PQCLEAN_KYBER512_CLEAN_zetas+0x80>
1c00c3f0:	00450993          	addi	s3,a0,4
1c00c3f4:	00458913          	addi	s2,a1,4
1c00c3f8:	00460493          	addi	s1,a2,4
1c00c3fc:	248a8a93          	addi	s5,s5,584 # 1c000248 <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c00c400:	000a1403          	lh	s0,0(s4)
1c00c404:	ffc48613          	addi	a2,s1,-4
1c00c408:	ffc90593          	addi	a1,s2,-4
1c00c40c:	ffc98513          	addi	a0,s3,-4
1c00c410:	86a2                	mv	a3,s0
1c00c412:	3ea9                	jal	1c00bf6c <PQCLEAN_KYBER512_CLEAN_basemul>
1c00c414:	408006b3          	neg	a3,s0
1c00c418:	06c2                	slli	a3,a3,0x10
1c00c41a:	8626                	mv	a2,s1
1c00c41c:	85ca                	mv	a1,s2
1c00c41e:	854e                	mv	a0,s3
1c00c420:	86c1                	srai	a3,a3,0x10
1c00c422:	0a09                	addi	s4,s4,2
1c00c424:	36a1                	jal	1c00bf6c <PQCLEAN_KYBER512_CLEAN_basemul>
1c00c426:	09a1                	addi	s3,s3,8
1c00c428:	0921                	addi	s2,s2,8
1c00c42a:	04a1                	addi	s1,s1,8
1c00c42c:	fd4a9ae3          	bne	s5,s4,1c00c400 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery+0x2c>
1c00c430:	40f2                	lw	ra,28(sp)
1c00c432:	4462                	lw	s0,24(sp)
1c00c434:	44d2                	lw	s1,20(sp)
1c00c436:	4942                	lw	s2,16(sp)
1c00c438:	49b2                	lw	s3,12(sp)
1c00c43a:	4a22                	lw	s4,8(sp)
1c00c43c:	4a92                	lw	s5,4(sp)
1c00c43e:	6105                	addi	sp,sp,32
1c00c440:	8082                	ret

1c00c442 <PQCLEAN_KYBER512_CLEAN_poly_reduce>:
1c00c442:	1141                	addi	sp,sp,-16
1c00c444:	c422                	sw	s0,8(sp)
1c00c446:	c226                	sw	s1,4(sp)
1c00c448:	c606                	sw	ra,12(sp)
1c00c44a:	842a                	mv	s0,a0
1c00c44c:	20050493          	addi	s1,a0,512
1c00c450:	00041503          	lh	a0,0(s0)
1c00c454:	0409                	addi	s0,s0,2
1c00c456:	2199                	jal	1c00c89c <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c00c458:	fea41f23          	sh	a0,-2(s0)
1c00c45c:	fe941ae3          	bne	s0,s1,1c00c450 <PQCLEAN_KYBER512_CLEAN_poly_reduce+0xe>
1c00c460:	40b2                	lw	ra,12(sp)
1c00c462:	4422                	lw	s0,8(sp)
1c00c464:	4492                	lw	s1,4(sp)
1c00c466:	0141                	addi	sp,sp,16
1c00c468:	8082                	ret

1c00c46a <PQCLEAN_KYBER512_CLEAN_poly_add>:
1c00c46a:	4781                	li	a5,0
1c00c46c:	20000893          	li	a7,512
1c00c470:	00f606b3          	add	a3,a2,a5
1c00c474:	00f58733          	add	a4,a1,a5
1c00c478:	0006d803          	lhu	a6,0(a3)
1c00c47c:	00075703          	lhu	a4,0(a4)
1c00c480:	00f506b3          	add	a3,a0,a5
1c00c484:	0789                	addi	a5,a5,2
1c00c486:	9742                	add	a4,a4,a6
1c00c488:	00e69023          	sh	a4,0(a3)
1c00c48c:	ff1792e3          	bne	a5,a7,1c00c470 <PQCLEAN_KYBER512_CLEAN_poly_add+0x6>
1c00c490:	8082                	ret

1c00c492 <PQCLEAN_KYBER512_CLEAN_poly_sub>:
1c00c492:	4781                	li	a5,0
1c00c494:	20000893          	li	a7,512
1c00c498:	00f606b3          	add	a3,a2,a5
1c00c49c:	00f58733          	add	a4,a1,a5
1c00c4a0:	0006d803          	lhu	a6,0(a3)
1c00c4a4:	00075703          	lhu	a4,0(a4)
1c00c4a8:	00f506b3          	add	a3,a0,a5
1c00c4ac:	0789                	addi	a5,a5,2
1c00c4ae:	41070733          	sub	a4,a4,a6
1c00c4b2:	00e69023          	sh	a4,0(a3)
1c00c4b6:	ff1791e3          	bne	a5,a7,1c00c498 <PQCLEAN_KYBER512_CLEAN_poly_sub+0x6>
1c00c4ba:	8082                	ret

1c00c4bc <PQCLEAN_KYBER512_CLEAN_polyvec_compress>:
1c00c4bc:	88aa                	mv	a7,a0
1c00c4be:	6605                	lui	a2,0x1
1c00c4c0:	14050513          	addi	a0,a0,320
1c00c4c4:	882e                	mv	a6,a1
1c00c4c6:	3c088893          	addi	a7,a7,960
1c00c4ca:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c4ce:	ec050693          	addi	a3,a0,-320
1c00c4d2:	85c2                	mv	a1,a6
1c00c4d4:	00059283          	lh	t0,0(a1)
1c00c4d8:	00259f83          	lh	t6,2(a1)
1c00c4dc:	00459f03          	lh	t5,4(a1)
1c00c4e0:	40f2de13          	srai	t3,t0,0xf
1c00c4e4:	40ffd713          	srai	a4,t6,0xf
1c00c4e8:	00ce7e33          	and	t3,t3,a2
1c00c4ec:	8f71                	and	a4,a4,a2
1c00c4ee:	00659e83          	lh	t4,6(a1)
1c00c4f2:	40ff5793          	srai	a5,t5,0xf
1c00c4f6:	9e16                	add	t3,t3,t0
1c00c4f8:	977e                	add	a4,a4,t6
1c00c4fa:	8ff1                	and	a5,a5,a2
1c00c4fc:	0e42                	slli	t3,t3,0x10
1c00c4fe:	0742                	slli	a4,a4,0x10
1c00c500:	97fa                	add	a5,a5,t5
1c00c502:	010e5e13          	srli	t3,t3,0x10
1c00c506:	8341                	srli	a4,a4,0x10
1c00c508:	40fed313          	srai	t1,t4,0xf
1c00c50c:	07c2                	slli	a5,a5,0x10
1c00c50e:	0e2a                	slli	t3,t3,0xa
1c00c510:	072a                	slli	a4,a4,0xa
1c00c512:	00c37333          	and	t1,t1,a2
1c00c516:	83c1                	srli	a5,a5,0x10
1c00c518:	680e0e13          	addi	t3,t3,1664
1c00c51c:	68070713          	addi	a4,a4,1664
1c00c520:	9376                	add	t1,t1,t4
1c00c522:	02ce5e33          	divu	t3,t3,a2
1c00c526:	07aa                	slli	a5,a5,0xa
1c00c528:	0342                	slli	t1,t1,0x10
1c00c52a:	68078793          	addi	a5,a5,1664
1c00c52e:	01035313          	srli	t1,t1,0x10
1c00c532:	032a                	slli	t1,t1,0xa
1c00c534:	68030313          	addi	t1,t1,1664
1c00c538:	0695                	addi	a3,a3,5
1c00c53a:	05a1                	addi	a1,a1,8
1c00c53c:	02c75733          	divu	a4,a4,a2
1c00c540:	3ffe7e13          	andi	t3,t3,1023
1c00c544:	008e5e93          	srli	t4,t3,0x8
1c00c548:	ffc68da3          	sb	t3,-5(a3)
1c00c54c:	02c7d7b3          	divu	a5,a5,a2
1c00c550:	3ff77713          	andi	a4,a4,1023
1c00c554:	00271e13          	slli	t3,a4,0x2
1c00c558:	01ceee33          	or	t3,t4,t3
1c00c55c:	8319                	srli	a4,a4,0x6
1c00c55e:	ffc68e23          	sb	t3,-4(a3)
1c00c562:	02c35333          	divu	t1,t1,a2
1c00c566:	3ff7f793          	andi	a5,a5,1023
1c00c56a:	00479e13          	slli	t3,a5,0x4
1c00c56e:	01c76733          	or	a4,a4,t3
1c00c572:	fee68ea3          	sb	a4,-3(a3)
1c00c576:	8391                	srli	a5,a5,0x4
1c00c578:	3ff37713          	andi	a4,t1,1023
1c00c57c:	00671313          	slli	t1,a4,0x6
1c00c580:	0067e7b3          	or	a5,a5,t1
1c00c584:	8309                	srli	a4,a4,0x2
1c00c586:	fef68f23          	sb	a5,-2(a3)
1c00c58a:	fee68fa3          	sb	a4,-1(a3)
1c00c58e:	f4a693e3          	bne	a3,a0,1c00c4d4 <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0x18>
1c00c592:	14068513          	addi	a0,a3,320
1c00c596:	20080813          	addi	a6,a6,512
1c00c59a:	f2a89ae3          	bne	a7,a0,1c00c4ce <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0x12>
1c00c59e:	8082                	ret

1c00c5a0 <PQCLEAN_KYBER512_CLEAN_polyvec_decompress>:
1c00c5a0:	6805                	lui	a6,0x1
1c00c5a2:	14058893          	addi	a7,a1,320
1c00c5a6:	832a                	mv	t1,a0
1c00c5a8:	3c058e13          	addi	t3,a1,960
1c00c5ac:	d0180813          	addi	a6,a6,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c5b0:	ec088593          	addi	a1,a7,-320
1c00c5b4:	851a                	mv	a0,t1
1c00c5b6:	0015c683          	lbu	a3,1(a1)
1c00c5ba:	0025c703          	lbu	a4,2(a1)
1c00c5be:	0035ce83          	lbu	t4,3(a1)
1c00c5c2:	0005c283          	lbu	t0,0(a1)
1c00c5c6:	0045c783          	lbu	a5,4(a1)
1c00c5ca:	00869613          	slli	a2,a3,0x8
1c00c5ce:	0026df93          	srli	t6,a3,0x2
1c00c5d2:	00475f13          	srli	t5,a4,0x4
1c00c5d6:	00671693          	slli	a3,a4,0x6
1c00c5da:	004e9713          	slli	a4,t4,0x4
1c00c5de:	00566633          	or	a2,a2,t0
1c00c5e2:	078a                	slli	a5,a5,0x2
1c00c5e4:	006ede93          	srli	t4,t4,0x6
1c00c5e8:	01f6e6b3          	or	a3,a3,t6
1c00c5ec:	01e76733          	or	a4,a4,t5
1c00c5f0:	01d7e7b3          	or	a5,a5,t4
1c00c5f4:	3ff67613          	andi	a2,a2,1023
1c00c5f8:	3ff6f693          	andi	a3,a3,1023
1c00c5fc:	3ff77713          	andi	a4,a4,1023
1c00c600:	03060633          	mul	a2,a2,a6
1c00c604:	0521                	addi	a0,a0,8
1c00c606:	0595                	addi	a1,a1,5
1c00c608:	030686b3          	mul	a3,a3,a6
1c00c60c:	20060613          	addi	a2,a2,512
1c00c610:	8229                	srli	a2,a2,0xa
1c00c612:	fec51c23          	sh	a2,-8(a0)
1c00c616:	03070733          	mul	a4,a4,a6
1c00c61a:	20068693          	addi	a3,a3,512
1c00c61e:	82a9                	srli	a3,a3,0xa
1c00c620:	fed51d23          	sh	a3,-6(a0)
1c00c624:	030787b3          	mul	a5,a5,a6
1c00c628:	20070713          	addi	a4,a4,512
1c00c62c:	8329                	srli	a4,a4,0xa
1c00c62e:	fee51e23          	sh	a4,-4(a0)
1c00c632:	20078793          	addi	a5,a5,512
1c00c636:	83a9                	srli	a5,a5,0xa
1c00c638:	fef51f23          	sh	a5,-2(a0)
1c00c63c:	f7159de3          	bne	a1,a7,1c00c5b6 <PQCLEAN_KYBER512_CLEAN_polyvec_decompress+0x16>
1c00c640:	14058893          	addi	a7,a1,320
1c00c644:	20030313          	addi	t1,t1,512
1c00c648:	f7c894e3          	bne	a7,t3,1c00c5b0 <PQCLEAN_KYBER512_CLEAN_polyvec_decompress+0x10>
1c00c64c:	8082                	ret

1c00c64e <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>:
1c00c64e:	1141                	addi	sp,sp,-16
1c00c650:	c422                	sw	s0,8(sp)
1c00c652:	c226                	sw	s1,4(sp)
1c00c654:	c606                	sw	ra,12(sp)
1c00c656:	842a                	mv	s0,a0
1c00c658:	84ae                	mv	s1,a1
1c00c65a:	361d                	jal	1c00c180 <PQCLEAN_KYBER512_CLEAN_poly_frombytes>
1c00c65c:	20040513          	addi	a0,s0,512
1c00c660:	4422                	lw	s0,8(sp)
1c00c662:	40b2                	lw	ra,12(sp)
1c00c664:	18048593          	addi	a1,s1,384
1c00c668:	4492                	lw	s1,4(sp)
1c00c66a:	0141                	addi	sp,sp,16
1c00c66c:	be11                	j	1c00c180 <PQCLEAN_KYBER512_CLEAN_poly_frombytes>

1c00c66e <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>:
1c00c66e:	9e010113          	addi	sp,sp,-1568
1c00c672:	60912a23          	sw	s1,1556(sp)
1c00c676:	64c1                	lui	s1,0x10
1c00c678:	60812c23          	sw	s0,1560(sp)
1c00c67c:	61212823          	sw	s2,1552(sp)
1c00c680:	61312623          	sw	s3,1548(sp)
1c00c684:	61412423          	sw	s4,1544(sp)
1c00c688:	60112e23          	sw	ra,1564(sp)
1c00c68c:	8a2a                	mv	s4,a0
1c00c68e:	40050413          	addi	s0,a0,1024
1c00c692:	40010993          	addi	s3,sp,1024
1c00c696:	14fd                	addi	s1,s1,-1
1c00c698:	10000913          	li	s2,256
1c00c69c:	20000613          	li	a2,512
1c00c6a0:	85d2                	mv	a1,s4
1c00c6a2:	854e                	mv	a0,s3
1c00c6a4:	2b39                	jal	1c00cbc2 <memcpy>
1c00c6a6:	864e                	mv	a2,s3
1c00c6a8:	4681                	li	a3,0
1c00c6aa:	00061703          	lh	a4,0(a2)
1c00c6ae:	00261583          	lh	a1,2(a2)
1c00c6b2:	4016d793          	srai	a5,a3,0x1
1c00c6b6:	078a                	slli	a5,a5,0x2
1c00c6b8:	0742                	slli	a4,a4,0x10
1c00c6ba:	8de5                	and	a1,a1,s1
1c00c6bc:	60010513          	addi	a0,sp,1536
1c00c6c0:	97aa                	add	a5,a5,a0
1c00c6c2:	8f4d                	or	a4,a4,a1
1c00c6c4:	a0e7a023          	sw	a4,-1536(a5)
1c00c6c8:	0689                	addi	a3,a3,2
1c00c6ca:	0611                	addi	a2,a2,4
1c00c6cc:	fd269fe3          	bne	a3,s2,1c00c6aa <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x3c>
1c00c6d0:	040c                	addi	a1,sp,512
1c00c6d2:	850a                	mv	a0,sp
1c00c6d4:	b3ffd0ef          	jal	ra,1c00a212 <KYBER_poly_ntt>
1c00c6d8:	0418                	addi	a4,sp,512
1c00c6da:	87d2                	mv	a5,s4
1c00c6dc:	4310                	lw	a2,0(a4)
1c00c6de:	4354                	lw	a3,4(a4)
1c00c6e0:	0721                	addi	a4,a4,8
1c00c6e2:	01065813          	srli	a6,a2,0x10
1c00c6e6:	0106d593          	srli	a1,a3,0x10
1c00c6ea:	01079023          	sh	a6,0(a5)
1c00c6ee:	00b79123          	sh	a1,2(a5)
1c00c6f2:	00c79223          	sh	a2,4(a5)
1c00c6f6:	00d79323          	sh	a3,6(a5)
1c00c6fa:	07a1                	addi	a5,a5,8
1c00c6fc:	fee990e3          	bne	s3,a4,1c00c6dc <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x6e>
1c00c700:	200a0a13          	addi	s4,s4,512
1c00c704:	f9441ce3          	bne	s0,s4,1c00c69c <PQCLEAN_KYBER512_CLEAN_polyvec_ntt+0x2e>
1c00c708:	61c12083          	lw	ra,1564(sp)
1c00c70c:	61812403          	lw	s0,1560(sp)
1c00c710:	61412483          	lw	s1,1556(sp)
1c00c714:	61012903          	lw	s2,1552(sp)
1c00c718:	60c12983          	lw	s3,1548(sp)
1c00c71c:	60812a03          	lw	s4,1544(sp)
1c00c720:	62010113          	addi	sp,sp,1568
1c00c724:	8082                	ret

1c00c726 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>:
1c00c726:	9e010113          	addi	sp,sp,-1568
1c00c72a:	60912a23          	sw	s1,1556(sp)
1c00c72e:	64c1                	lui	s1,0x10
1c00c730:	60812c23          	sw	s0,1560(sp)
1c00c734:	61212823          	sw	s2,1552(sp)
1c00c738:	61312623          	sw	s3,1548(sp)
1c00c73c:	61412423          	sw	s4,1544(sp)
1c00c740:	60112e23          	sw	ra,1564(sp)
1c00c744:	10050a13          	addi	s4,a0,256
1c00c748:	50050413          	addi	s0,a0,1280
1c00c74c:	40010913          	addi	s2,sp,1024
1c00c750:	14fd                	addi	s1,s1,-1
1c00c752:	10000993          	li	s3,256
1c00c756:	f00a0593          	addi	a1,s4,-256
1c00c75a:	20000613          	li	a2,512
1c00c75e:	854a                	mv	a0,s2
1c00c760:	218d                	jal	1c00cbc2 <memcpy>
1c00c762:	874a                	mv	a4,s2
1c00c764:	4581                	li	a1,0
1c00c766:	00071603          	lh	a2,0(a4)
1c00c76a:	00471883          	lh	a7,4(a4)
1c00c76e:	00271683          	lh	a3,2(a4)
1c00c772:	00671803          	lh	a6,6(a4)
1c00c776:	4015d793          	srai	a5,a1,0x1
1c00c77a:	00279513          	slli	a0,a5,0x2
1c00c77e:	60010313          	addi	t1,sp,1536
1c00c782:	0642                	slli	a2,a2,0x10
1c00c784:	0098f8b3          	and	a7,a7,s1
1c00c788:	0785                	addi	a5,a5,1
1c00c78a:	06c2                	slli	a3,a3,0x10
1c00c78c:	00987833          	and	a6,a6,s1
1c00c790:	951a                	add	a0,a0,t1
1c00c792:	01166633          	or	a2,a2,a7
1c00c796:	078a                	slli	a5,a5,0x2
1c00c798:	0106e6b3          	or	a3,a3,a6
1c00c79c:	a0c52023          	sw	a2,-1536(a0)
1c00c7a0:	979a                	add	a5,a5,t1
1c00c7a2:	a0d7a023          	sw	a3,-1536(a5)
1c00c7a6:	0591                	addi	a1,a1,4
1c00c7a8:	0721                	addi	a4,a4,8
1c00c7aa:	fb359ee3          	bne	a1,s3,1c00c766 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont+0x40>
1c00c7ae:	040c                	addi	a1,sp,512
1c00c7b0:	850a                	mv	a0,sp
1c00c7b2:	abffd0ef          	jal	ra,1c00a270 <KYBER_poly_intt>
1c00c7b6:	0418                	addi	a4,sp,512
1c00c7b8:	87d2                	mv	a5,s4
1c00c7ba:	4314                	lw	a3,0(a4)
1c00c7bc:	0711                	addi	a4,a4,4
1c00c7be:	0789                	addi	a5,a5,2
1c00c7c0:	0106d613          	srli	a2,a3,0x10
1c00c7c4:	eec79f23          	sh	a2,-258(a5)
1c00c7c8:	fed79f23          	sh	a3,-2(a5)
1c00c7cc:	fee917e3          	bne	s2,a4,1c00c7ba <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont+0x94>
1c00c7d0:	200a0a13          	addi	s4,s4,512
1c00c7d4:	f94411e3          	bne	s0,s4,1c00c756 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont+0x30>
1c00c7d8:	61c12083          	lw	ra,1564(sp)
1c00c7dc:	61812403          	lw	s0,1560(sp)
1c00c7e0:	61412483          	lw	s1,1556(sp)
1c00c7e4:	61012903          	lw	s2,1552(sp)
1c00c7e8:	60c12983          	lw	s3,1548(sp)
1c00c7ec:	60812a03          	lw	s4,1544(sp)
1c00c7f0:	62010113          	addi	sp,sp,1568
1c00c7f4:	8082                	ret

1c00c7f6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>:
1c00c7f6:	df010113          	addi	sp,sp,-528
1c00c7fa:	20112623          	sw	ra,524(sp)
1c00c7fe:	20812423          	sw	s0,520(sp)
1c00c802:	20912223          	sw	s1,516(sp)
1c00c806:	21212023          	sw	s2,512(sp)
1c00c80a:	842a                	mv	s0,a0
1c00c80c:	84ae                	mv	s1,a1
1c00c80e:	8932                	mv	s2,a2
1c00c810:	36d1                	jal	1c00c3d4 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00c812:	20090613          	addi	a2,s2,512
1c00c816:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c00c81a:	850a                	mv	a0,sp
1c00c81c:	3e65                	jal	1c00c3d4 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00c81e:	860a                	mv	a2,sp
1c00c820:	85a2                	mv	a1,s0
1c00c822:	8522                	mv	a0,s0
1c00c824:	3199                	jal	1c00c46a <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00c826:	8522                	mv	a0,s0
1c00c828:	3929                	jal	1c00c442 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00c82a:	20c12083          	lw	ra,524(sp)
1c00c82e:	20812403          	lw	s0,520(sp)
1c00c832:	20412483          	lw	s1,516(sp)
1c00c836:	20012903          	lw	s2,512(sp)
1c00c83a:	21010113          	addi	sp,sp,528
1c00c83e:	8082                	ret

1c00c840 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>:
1c00c840:	1141                	addi	sp,sp,-16
1c00c842:	c422                	sw	s0,8(sp)
1c00c844:	c606                	sw	ra,12(sp)
1c00c846:	842a                	mv	s0,a0
1c00c848:	3eed                	jal	1c00c442 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00c84a:	20040513          	addi	a0,s0,512
1c00c84e:	4422                	lw	s0,8(sp)
1c00c850:	40b2                	lw	ra,12(sp)
1c00c852:	0141                	addi	sp,sp,16
1c00c854:	b6fd                	j	1c00c442 <PQCLEAN_KYBER512_CLEAN_poly_reduce>

1c00c856 <PQCLEAN_KYBER512_CLEAN_polyvec_add>:
1c00c856:	1141                	addi	sp,sp,-16
1c00c858:	c422                	sw	s0,8(sp)
1c00c85a:	c226                	sw	s1,4(sp)
1c00c85c:	c04a                	sw	s2,0(sp)
1c00c85e:	c606                	sw	ra,12(sp)
1c00c860:	842a                	mv	s0,a0
1c00c862:	84ae                	mv	s1,a1
1c00c864:	8932                	mv	s2,a2
1c00c866:	3111                	jal	1c00c46a <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00c868:	20040513          	addi	a0,s0,512
1c00c86c:	4422                	lw	s0,8(sp)
1c00c86e:	40b2                	lw	ra,12(sp)
1c00c870:	20090613          	addi	a2,s2,512
1c00c874:	20048593          	addi	a1,s1,512
1c00c878:	4902                	lw	s2,0(sp)
1c00c87a:	4492                	lw	s1,4(sp)
1c00c87c:	0141                	addi	sp,sp,16
1c00c87e:	b6f5                	j	1c00c46a <PQCLEAN_KYBER512_CLEAN_poly_add>

1c00c880 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>:
1c00c880:	777d                	lui	a4,0xfffff
1c00c882:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00c886:	02f507b3          	mul	a5,a0,a5
1c00c88a:	2ff70713          	addi	a4,a4,767
1c00c88e:	07c2                	slli	a5,a5,0x10
1c00c890:	87c1                	srai	a5,a5,0x10
1c00c892:	02e787b3          	mul	a5,a5,a4
1c00c896:	953e                	add	a0,a0,a5
1c00c898:	8541                	srai	a0,a0,0x10
1c00c89a:	8082                	ret

1c00c89c <PQCLEAN_KYBER512_CLEAN_barrett_reduce>:
1c00c89c:	6795                	lui	a5,0x5
1c00c89e:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00c8a2:	02f507b3          	mul	a5,a0,a5
1c00c8a6:	02000737          	lui	a4,0x2000
1c00c8aa:	97ba                	add	a5,a5,a4
1c00c8ac:	6705                	lui	a4,0x1
1c00c8ae:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c8b2:	87e9                	srai	a5,a5,0x1a
1c00c8b4:	02e787b3          	mul	a5,a5,a4
1c00c8b8:	8d1d                	sub	a0,a0,a5
1c00c8ba:	0542                	slli	a0,a0,0x10
1c00c8bc:	8541                	srai	a0,a0,0x10
1c00c8be:	8082                	ret

1c00c8c0 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>:
1c00c8c0:	7139                	addi	sp,sp,-64
1c00c8c2:	da26                	sw	s1,52(sp)
1c00c8c4:	d84a                	sw	s2,48(sp)
1c00c8c6:	84b2                	mv	s1,a2
1c00c8c8:	892a                	mv	s2,a0
1c00c8ca:	02000613          	li	a2,32
1c00c8ce:	0068                	addi	a0,sp,12
1c00c8d0:	de06                	sw	ra,60(sp)
1c00c8d2:	dc22                	sw	s0,56(sp)
1c00c8d4:	8436                	mv	s0,a3
1c00c8d6:	24f5                	jal	1c00cbc2 <memcpy>
1c00c8d8:	006c                	addi	a1,sp,12
1c00c8da:	854a                	mv	a0,s2
1c00c8dc:	02200613          	li	a2,34
1c00c8e0:	02910623          	sb	s1,44(sp)
1c00c8e4:	028106a3          	sb	s0,45(sp)
1c00c8e8:	d53fd0ef          	jal	ra,1c00a63a <shake128_absorb>
1c00c8ec:	50f2                	lw	ra,60(sp)
1c00c8ee:	5462                	lw	s0,56(sp)
1c00c8f0:	54d2                	lw	s1,52(sp)
1c00c8f2:	5942                	lw	s2,48(sp)
1c00c8f4:	6121                	addi	sp,sp,64
1c00c8f6:	8082                	ret

1c00c8f8 <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>:
1c00c8f8:	7139                	addi	sp,sp,-64
1c00c8fa:	87b2                	mv	a5,a2
1c00c8fc:	da26                	sw	s1,52(sp)
1c00c8fe:	d84a                	sw	s2,48(sp)
1c00c900:	84aa                	mv	s1,a0
1c00c902:	892e                	mv	s2,a1
1c00c904:	02000613          	li	a2,32
1c00c908:	85be                	mv	a1,a5
1c00c90a:	0068                	addi	a0,sp,12
1c00c90c:	de06                	sw	ra,60(sp)
1c00c90e:	dc22                	sw	s0,56(sp)
1c00c910:	8436                	mv	s0,a3
1c00c912:	2c45                	jal	1c00cbc2 <memcpy>
1c00c914:	0070                	addi	a2,sp,12
1c00c916:	85ca                	mv	a1,s2
1c00c918:	8526                	mv	a0,s1
1c00c91a:	02100693          	li	a3,33
1c00c91e:	02810623          	sb	s0,44(sp)
1c00c922:	802fe0ef          	jal	ra,1c00a924 <shake256>
1c00c926:	50f2                	lw	ra,60(sp)
1c00c928:	5462                	lw	s0,56(sp)
1c00c92a:	54d2                	lw	s1,52(sp)
1c00c92c:	5942                	lw	s2,48(sp)
1c00c92e:	6121                	addi	sp,sp,64
1c00c930:	8082                	ret

1c00c932 <PQCLEAN_KYBER512_CLEAN_verify>:
1c00c932:	10060863          	beqz	a2,1c00ca42 <PQCLEAN_KYBER512_CLEAN_verify+0x110>
1c00c936:	fff60793          	addi	a5,a2,-1
1c00c93a:	470d                	li	a4,3
1c00c93c:	10f77563          	bgeu	a4,a5,1c00ca46 <PQCLEAN_KYBER512_CLEAN_verify+0x114>
1c00c940:	ffc67293          	andi	t0,a2,-4
1c00c944:	872e                	mv	a4,a1
1c00c946:	86aa                	mv	a3,a0
1c00c948:	92ae                	add	t0,t0,a1
1c00c94a:	4f01                	li	t5,0
1c00c94c:	0016ce83          	lbu	t4,1(a3)
1c00c950:	00174e03          	lbu	t3,1(a4)
1c00c954:	0006c383          	lbu	t2,0(a3)
1c00c958:	0026c303          	lbu	t1,2(a3)
1c00c95c:	00074f83          	lbu	t6,0(a4)
1c00c960:	00274883          	lbu	a7,2(a4)
1c00c964:	0036c783          	lbu	a5,3(a3)
1c00c968:	00374803          	lbu	a6,3(a4)
1c00c96c:	0ea2                	slli	t4,t4,0x8
1c00c96e:	0e22                	slli	t3,t3,0x8
1c00c970:	007eeeb3          	or	t4,t4,t2
1c00c974:	0342                	slli	t1,t1,0x10
1c00c976:	01fe6e33          	or	t3,t3,t6
1c00c97a:	08c2                	slli	a7,a7,0x10
1c00c97c:	01d36333          	or	t1,t1,t4
1c00c980:	07e2                	slli	a5,a5,0x18
1c00c982:	01c8e8b3          	or	a7,a7,t3
1c00c986:	0862                	slli	a6,a6,0x18
1c00c988:	0067e7b3          	or	a5,a5,t1
1c00c98c:	01186833          	or	a6,a6,a7
1c00c990:	0107c7b3          	xor	a5,a5,a6
1c00c994:	0711                	addi	a4,a4,4
1c00c996:	01e7ef33          	or	t5,a5,t5
1c00c99a:	0691                	addi	a3,a3,4
1c00c99c:	fa5718e3          	bne	a4,t0,1c00c94c <PQCLEAN_KYBER512_CLEAN_verify+0x1a>
1c00c9a0:	008f5793          	srli	a5,t5,0x8
1c00c9a4:	01e7e7b3          	or	a5,a5,t5
1c00c9a8:	010f5713          	srli	a4,t5,0x10
1c00c9ac:	8fd9                	or	a5,a5,a4
1c00c9ae:	018f5f13          	srli	t5,t5,0x18
1c00c9b2:	01e7ef33          	or	t5,a5,t5
1c00c9b6:	ffc67793          	andi	a5,a2,-4
1c00c9ba:	0fff7f13          	andi	t5,t5,255
1c00c9be:	06f60f63          	beq	a2,a5,1c00ca3c <PQCLEAN_KYBER512_CLEAN_verify+0x10a>
1c00c9c2:	00f586b3          	add	a3,a1,a5
1c00c9c6:	00f50733          	add	a4,a0,a5
1c00c9ca:	0006c803          	lbu	a6,0(a3)
1c00c9ce:	00074703          	lbu	a4,0(a4)
1c00c9d2:	00178693          	addi	a3,a5,1
1c00c9d6:	01074733          	xor	a4,a4,a6
1c00c9da:	00ef6f33          	or	t5,t5,a4
1c00c9de:	0fff7f13          	andi	t5,t5,255
1c00c9e2:	04c6fd63          	bgeu	a3,a2,1c00ca3c <PQCLEAN_KYBER512_CLEAN_verify+0x10a>
1c00c9e6:	00d50733          	add	a4,a0,a3
1c00c9ea:	96ae                	add	a3,a3,a1
1c00c9ec:	0006c803          	lbu	a6,0(a3)
1c00c9f0:	00074703          	lbu	a4,0(a4)
1c00c9f4:	00278693          	addi	a3,a5,2
1c00c9f8:	01074733          	xor	a4,a4,a6
1c00c9fc:	00ef6f33          	or	t5,t5,a4
1c00ca00:	0fff7f13          	andi	t5,t5,255
1c00ca04:	02c6fc63          	bgeu	a3,a2,1c00ca3c <PQCLEAN_KYBER512_CLEAN_verify+0x10a>
1c00ca08:	00d50733          	add	a4,a0,a3
1c00ca0c:	96ae                	add	a3,a3,a1
1c00ca0e:	00074703          	lbu	a4,0(a4)
1c00ca12:	0006c683          	lbu	a3,0(a3)
1c00ca16:	078d                	addi	a5,a5,3
1c00ca18:	8f35                	xor	a4,a4,a3
1c00ca1a:	00ef6f33          	or	t5,t5,a4
1c00ca1e:	0fff7f13          	andi	t5,t5,255
1c00ca22:	00c7fd63          	bgeu	a5,a2,1c00ca3c <PQCLEAN_KYBER512_CLEAN_verify+0x10a>
1c00ca26:	95be                	add	a1,a1,a5
1c00ca28:	97aa                	add	a5,a5,a0
1c00ca2a:	0005c703          	lbu	a4,0(a1)
1c00ca2e:	0007c783          	lbu	a5,0(a5)
1c00ca32:	8fb9                	xor	a5,a5,a4
1c00ca34:	00ff6f33          	or	t5,t5,a5
1c00ca38:	0fff7f13          	andi	t5,t5,255
1c00ca3c:	01e03533          	snez	a0,t5
1c00ca40:	8082                	ret
1c00ca42:	4501                	li	a0,0
1c00ca44:	8082                	ret
1c00ca46:	4f01                	li	t5,0
1c00ca48:	4781                	li	a5,0
1c00ca4a:	bfa5                	j	1c00c9c2 <PQCLEAN_KYBER512_CLEAN_verify+0x90>

1c00ca4c <PQCLEAN_KYBER512_CLEAN_cmov>:
1c00ca4c:	14060763          	beqz	a2,1c00cb9a <PQCLEAN_KYBER512_CLEAN_cmov+0x14e>
1c00ca50:	00350793          	addi	a5,a0,3
1c00ca54:	8f8d                	sub	a5,a5,a1
1c00ca56:	40d006b3          	neg	a3,a3
1c00ca5a:	0077b793          	sltiu	a5,a5,7
1c00ca5e:	0ff6ff13          	andi	t5,a3,255
1c00ca62:	10079c63          	bnez	a5,1c00cb7a <PQCLEAN_KYBER512_CLEAN_cmov+0x12e>
1c00ca66:	fff60793          	addi	a5,a2,-1
1c00ca6a:	0037b793          	sltiu	a5,a5,3
1c00ca6e:	10079663          	bnez	a5,1c00cb7a <PQCLEAN_KYBER512_CLEAN_cmov+0x12e>
1c00ca72:	008f1713          	slli	a4,t5,0x8
1c00ca76:	00ef6733          	or	a4,t5,a4
1c00ca7a:	010f1793          	slli	a5,t5,0x10
1c00ca7e:	8fd9                	or	a5,a5,a4
1c00ca80:	1141                	addi	sp,sp,-16
1c00ca82:	018f1f93          	slli	t6,t5,0x18
1c00ca86:	ffc67293          	andi	t0,a2,-4
1c00ca8a:	c622                	sw	s0,12(sp)
1c00ca8c:	01f7efb3          	or	t6,a5,t6
1c00ca90:	872a                	mv	a4,a0
1c00ca92:	882e                	mv	a6,a1
1c00ca94:	92aa                	add	t0,t0,a0
1c00ca96:	00184e03          	lbu	t3,1(a6)
1c00ca9a:	00174e83          	lbu	t4,1(a4)
1c00ca9e:	00084383          	lbu	t2,0(a6)
1c00caa2:	00284883          	lbu	a7,2(a6)
1c00caa6:	00074403          	lbu	s0,0(a4)
1c00caaa:	00274303          	lbu	t1,2(a4)
1c00caae:	00384783          	lbu	a5,3(a6)
1c00cab2:	00374683          	lbu	a3,3(a4)
1c00cab6:	0ea2                	slli	t4,t4,0x8
1c00cab8:	0e22                	slli	t3,t3,0x8
1c00caba:	008eeeb3          	or	t4,t4,s0
1c00cabe:	0342                	slli	t1,t1,0x10
1c00cac0:	007e6e33          	or	t3,t3,t2
1c00cac4:	08c2                	slli	a7,a7,0x10
1c00cac6:	01d36333          	or	t1,t1,t4
1c00caca:	01c8e8b3          	or	a7,a7,t3
1c00cace:	06e2                	slli	a3,a3,0x18
1c00cad0:	07e2                	slli	a5,a5,0x18
1c00cad2:	0066e6b3          	or	a3,a3,t1
1c00cad6:	0117e7b3          	or	a5,a5,a7
1c00cada:	8fb5                	xor	a5,a5,a3
1c00cadc:	01f7f7b3          	and	a5,a5,t6
1c00cae0:	8fb5                	xor	a5,a5,a3
1c00cae2:	0087d313          	srli	t1,a5,0x8
1c00cae6:	0107d893          	srli	a7,a5,0x10
1c00caea:	0187d693          	srli	a3,a5,0x18
1c00caee:	00f70023          	sb	a5,0(a4)
1c00caf2:	006700a3          	sb	t1,1(a4)
1c00caf6:	01170123          	sb	a7,2(a4)
1c00cafa:	00d701a3          	sb	a3,3(a4)
1c00cafe:	0711                	addi	a4,a4,4
1c00cb00:	0811                	addi	a6,a6,4
1c00cb02:	f8571ae3          	bne	a4,t0,1c00ca96 <PQCLEAN_KYBER512_CLEAN_cmov+0x4a>
1c00cb06:	ffc67793          	andi	a5,a2,-4
1c00cb0a:	06f60563          	beq	a2,a5,1c00cb74 <PQCLEAN_KYBER512_CLEAN_cmov+0x128>
1c00cb0e:	00f50833          	add	a6,a0,a5
1c00cb12:	00f58733          	add	a4,a1,a5
1c00cb16:	00084883          	lbu	a7,0(a6)
1c00cb1a:	00074703          	lbu	a4,0(a4)
1c00cb1e:	00178693          	addi	a3,a5,1
1c00cb22:	00e8c733          	xor	a4,a7,a4
1c00cb26:	00ef7733          	and	a4,t5,a4
1c00cb2a:	00e8c733          	xor	a4,a7,a4
1c00cb2e:	00e80023          	sb	a4,0(a6)
1c00cb32:	04c6f163          	bgeu	a3,a2,1c00cb74 <PQCLEAN_KYBER512_CLEAN_cmov+0x128>
1c00cb36:	00d508b3          	add	a7,a0,a3
1c00cb3a:	96ae                	add	a3,a3,a1
1c00cb3c:	0008c803          	lbu	a6,0(a7)
1c00cb40:	0006c703          	lbu	a4,0(a3)
1c00cb44:	0789                	addi	a5,a5,2
1c00cb46:	00e84733          	xor	a4,a6,a4
1c00cb4a:	00ef7733          	and	a4,t5,a4
1c00cb4e:	00e84733          	xor	a4,a6,a4
1c00cb52:	00e88023          	sb	a4,0(a7)
1c00cb56:	00c7ff63          	bgeu	a5,a2,1c00cb74 <PQCLEAN_KYBER512_CLEAN_cmov+0x128>
1c00cb5a:	953e                	add	a0,a0,a5
1c00cb5c:	97ae                	add	a5,a5,a1
1c00cb5e:	00054703          	lbu	a4,0(a0)
1c00cb62:	0007c783          	lbu	a5,0(a5)
1c00cb66:	8fb9                	xor	a5,a5,a4
1c00cb68:	00ff7f33          	and	t5,t5,a5
1c00cb6c:	01e74f33          	xor	t5,a4,t5
1c00cb70:	01e50023          	sb	t5,0(a0)
1c00cb74:	4432                	lw	s0,12(sp)
1c00cb76:	0141                	addi	sp,sp,16
1c00cb78:	8082                	ret
1c00cb7a:	962a                	add	a2,a2,a0
1c00cb7c:	00054703          	lbu	a4,0(a0)
1c00cb80:	0005c783          	lbu	a5,0(a1)
1c00cb84:	0505                	addi	a0,a0,1
1c00cb86:	0585                	addi	a1,a1,1
1c00cb88:	8fb9                	xor	a5,a5,a4
1c00cb8a:	00ff77b3          	and	a5,t5,a5
1c00cb8e:	8fb9                	xor	a5,a5,a4
1c00cb90:	fef50fa3          	sb	a5,-1(a0)
1c00cb94:	fec514e3          	bne	a0,a2,1c00cb7c <PQCLEAN_KYBER512_CLEAN_cmov+0x130>
1c00cb98:	8082                	ret
1c00cb9a:	8082                	ret

1c00cb9c <pos_wait_forever>:
1c00cb9c:	f14027f3          	csrr	a5,mhartid
1c00cba0:	8795                	srai	a5,a5,0x5
1c00cba2:	03f7f793          	andi	a5,a5,63
1c00cba6:	477d                	li	a4,31
1c00cba8:	00e78363          	beq	a5,a4,1c00cbae <pos_wait_forever+0x12>
1c00cbac:	a001                	j	1c00cbac <pos_wait_forever+0x10>
1c00cbae:	1a10a7b7          	lui	a5,0x1a10a
1c00cbb2:	577d                	li	a4,-1
1c00cbb4:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00cbb8:	10500073          	wfi
1c00cbbc:	10500073          	wfi
1c00cbc0:	bfe5                	j	1c00cbb8 <pos_wait_forever+0x1c>

1c00cbc2 <memcpy>:
1c00cbc2:	00c5e7b3          	or	a5,a1,a2
1c00cbc6:	8fc9                	or	a5,a5,a0
1c00cbc8:	8b8d                	andi	a5,a5,3
1c00cbca:	872e                	mv	a4,a1
1c00cbcc:	882a                	mv	a6,a0
1c00cbce:	cbc5                	beqz	a5,1c00cc7e <memcpy+0xbc>
1c00cbd0:	c279                	beqz	a2,1c00cc96 <memcpy+0xd4>
1c00cbd2:	00350793          	addi	a5,a0,3
1c00cbd6:	8f8d                	sub	a5,a5,a1
1c00cbd8:	0077b793          	sltiu	a5,a5,7
1c00cbdc:	e7d1                	bnez	a5,1c00cc68 <memcpy+0xa6>
1c00cbde:	fff60793          	addi	a5,a2,-1
1c00cbe2:	0047b793          	sltiu	a5,a5,4
1c00cbe6:	e3c9                	bnez	a5,1c00cc68 <memcpy+0xa6>
1c00cbe8:	ffc67e13          	andi	t3,a2,-4
1c00cbec:	9e2e                	add	t3,t3,a1
1c00cbee:	00174883          	lbu	a7,1(a4)
1c00cbf2:	00074303          	lbu	t1,0(a4)
1c00cbf6:	00274683          	lbu	a3,2(a4)
1c00cbfa:	00374783          	lbu	a5,3(a4)
1c00cbfe:	08a2                	slli	a7,a7,0x8
1c00cc00:	0068e8b3          	or	a7,a7,t1
1c00cc04:	06c2                	slli	a3,a3,0x10
1c00cc06:	0116e6b3          	or	a3,a3,a7
1c00cc0a:	07e2                	slli	a5,a5,0x18
1c00cc0c:	8fd5                	or	a5,a5,a3
1c00cc0e:	0087d313          	srli	t1,a5,0x8
1c00cc12:	0107d893          	srli	a7,a5,0x10
1c00cc16:	83e1                	srli	a5,a5,0x18
1c00cc18:	00d80023          	sb	a3,0(a6)
1c00cc1c:	006800a3          	sb	t1,1(a6)
1c00cc20:	01180123          	sb	a7,2(a6)
1c00cc24:	00f801a3          	sb	a5,3(a6)
1c00cc28:	0711                	addi	a4,a4,4
1c00cc2a:	0811                	addi	a6,a6,4
1c00cc2c:	fdc711e3          	bne	a4,t3,1c00cbee <memcpy+0x2c>
1c00cc30:	ffc67793          	andi	a5,a2,-4
1c00cc34:	00367693          	andi	a3,a2,3
1c00cc38:	00f50733          	add	a4,a0,a5
1c00cc3c:	95be                	add	a1,a1,a5
1c00cc3e:	02f60f63          	beq	a2,a5,1c00cc7c <memcpy+0xba>
1c00cc42:	0005c603          	lbu	a2,0(a1)
1c00cc46:	fff68793          	addi	a5,a3,-1
1c00cc4a:	00c70023          	sb	a2,0(a4)
1c00cc4e:	c79d                	beqz	a5,1c00cc7c <memcpy+0xba>
1c00cc50:	0015c603          	lbu	a2,1(a1)
1c00cc54:	4789                	li	a5,2
1c00cc56:	00c700a3          	sb	a2,1(a4)
1c00cc5a:	02f68163          	beq	a3,a5,1c00cc7c <memcpy+0xba>
1c00cc5e:	0025c783          	lbu	a5,2(a1)
1c00cc62:	00f70123          	sb	a5,2(a4)
1c00cc66:	8082                	ret
1c00cc68:	962e                	add	a2,a2,a1
1c00cc6a:	87aa                	mv	a5,a0
1c00cc6c:	0005c703          	lbu	a4,0(a1)
1c00cc70:	0585                	addi	a1,a1,1
1c00cc72:	0785                	addi	a5,a5,1
1c00cc74:	fee78fa3          	sb	a4,-1(a5)
1c00cc78:	fec59ae3          	bne	a1,a2,1c00cc6c <memcpy+0xaa>
1c00cc7c:	8082                	ret
1c00cc7e:	de7d                	beqz	a2,1c00cc7c <memcpy+0xba>
1c00cc80:	87aa                	mv	a5,a0
1c00cc82:	4194                	lw	a3,0(a1)
1c00cc84:	0791                	addi	a5,a5,4
1c00cc86:	40c78733          	sub	a4,a5,a2
1c00cc8a:	fed7ae23          	sw	a3,-4(a5)
1c00cc8e:	0591                	addi	a1,a1,4
1c00cc90:	fea719e3          	bne	a4,a0,1c00cc82 <memcpy+0xc0>
1c00cc94:	8082                	ret
1c00cc96:	8082                	ret

1c00cc98 <memmove>:
1c00cc98:	40b507b3          	sub	a5,a0,a1
1c00cc9c:	0ac7e063          	bltu	a5,a2,1c00cd3c <memmove+0xa4>
1c00cca0:	c661                	beqz	a2,1c00cd68 <memmove+0xd0>
1c00cca2:	00350793          	addi	a5,a0,3
1c00cca6:	8f8d                	sub	a5,a5,a1
1c00cca8:	0077b793          	sltiu	a5,a5,7
1c00ccac:	e3dd                	bnez	a5,1c00cd52 <memmove+0xba>
1c00ccae:	fff60793          	addi	a5,a2,-1
1c00ccb2:	0047b793          	sltiu	a5,a5,4
1c00ccb6:	efd1                	bnez	a5,1c00cd52 <memmove+0xba>
1c00ccb8:	ffc67e13          	andi	t3,a2,-4
1c00ccbc:	872e                	mv	a4,a1
1c00ccbe:	882a                	mv	a6,a0
1c00ccc0:	9e2e                	add	t3,t3,a1
1c00ccc2:	00174883          	lbu	a7,1(a4)
1c00ccc6:	00074303          	lbu	t1,0(a4)
1c00ccca:	00274683          	lbu	a3,2(a4)
1c00ccce:	00374783          	lbu	a5,3(a4)
1c00ccd2:	08a2                	slli	a7,a7,0x8
1c00ccd4:	0068e8b3          	or	a7,a7,t1
1c00ccd8:	06c2                	slli	a3,a3,0x10
1c00ccda:	0116e6b3          	or	a3,a3,a7
1c00ccde:	07e2                	slli	a5,a5,0x18
1c00cce0:	8fd5                	or	a5,a5,a3
1c00cce2:	0087d313          	srli	t1,a5,0x8
1c00cce6:	0107d893          	srli	a7,a5,0x10
1c00ccea:	83e1                	srli	a5,a5,0x18
1c00ccec:	00d80023          	sb	a3,0(a6)
1c00ccf0:	006800a3          	sb	t1,1(a6)
1c00ccf4:	01180123          	sb	a7,2(a6)
1c00ccf8:	00f801a3          	sb	a5,3(a6)
1c00ccfc:	0711                	addi	a4,a4,4
1c00ccfe:	0811                	addi	a6,a6,4
1c00cd00:	fdc711e3          	bne	a4,t3,1c00ccc2 <memmove+0x2a>
1c00cd04:	ffc67793          	andi	a5,a2,-4
1c00cd08:	00367693          	andi	a3,a2,3
1c00cd0c:	00f50733          	add	a4,a0,a5
1c00cd10:	95be                	add	a1,a1,a5
1c00cd12:	04f60a63          	beq	a2,a5,1c00cd66 <memmove+0xce>
1c00cd16:	0005c603          	lbu	a2,0(a1)
1c00cd1a:	fff68793          	addi	a5,a3,-1
1c00cd1e:	00c70023          	sb	a2,0(a4)
1c00cd22:	c3b1                	beqz	a5,1c00cd66 <memmove+0xce>
1c00cd24:	0015c603          	lbu	a2,1(a1)
1c00cd28:	4789                	li	a5,2
1c00cd2a:	00c700a3          	sb	a2,1(a4)
1c00cd2e:	02f68c63          	beq	a3,a5,1c00cd66 <memmove+0xce>
1c00cd32:	0025c783          	lbu	a5,2(a1)
1c00cd36:	00f70123          	sb	a5,2(a4)
1c00cd3a:	8082                	ret
1c00cd3c:	167d                	addi	a2,a2,-1
1c00cd3e:	00c587b3          	add	a5,a1,a2
1c00cd42:	0007c703          	lbu	a4,0(a5)
1c00cd46:	00c507b3          	add	a5,a0,a2
1c00cd4a:	00e78023          	sb	a4,0(a5)
1c00cd4e:	f67d                	bnez	a2,1c00cd3c <memmove+0xa4>
1c00cd50:	8082                	ret
1c00cd52:	962a                	add	a2,a2,a0
1c00cd54:	87aa                	mv	a5,a0
1c00cd56:	0005c703          	lbu	a4,0(a1)
1c00cd5a:	0785                	addi	a5,a5,1
1c00cd5c:	0585                	addi	a1,a1,1
1c00cd5e:	fee78fa3          	sb	a4,-1(a5)
1c00cd62:	fec79ae3          	bne	a5,a2,1c00cd56 <memmove+0xbe>
1c00cd66:	8082                	ret
1c00cd68:	8082                	ret

1c00cd6a <strchr>:
1c00cd6a:	00054703          	lbu	a4,0(a0)
1c00cd6e:	0ff5f593          	andi	a1,a1,255
1c00cd72:	87aa                	mv	a5,a0
1c00cd74:	00b70863          	beq	a4,a1,1c00cd84 <strchr+0x1a>
1c00cd78:	cb01                	beqz	a4,1c00cd88 <strchr+0x1e>
1c00cd7a:	0017c703          	lbu	a4,1(a5)
1c00cd7e:	0785                	addi	a5,a5,1
1c00cd80:	feb71ce3          	bne	a4,a1,1c00cd78 <strchr+0xe>
1c00cd84:	853e                	mv	a0,a5
1c00cd86:	8082                	ret
1c00cd88:	4501                	li	a0,0
1c00cd8a:	dded                	beqz	a1,1c00cd84 <strchr+0x1a>
1c00cd8c:	8082                	ret

1c00cd8e <puts>:
1c00cd8e:	00054783          	lbu	a5,0(a0)
1c00cd92:	c78d                	beqz	a5,1c00cdbc <puts+0x2e>
1c00cd94:	f14026f3          	csrr	a3,mhartid
1c00cd98:	00369713          	slli	a4,a3,0x3
1c00cd9c:	1a10f637          	lui	a2,0x1a10f
1c00cda0:	0ff77713          	andi	a4,a4,255
1c00cda4:	9732                	add	a4,a4,a2
1c00cda6:	6609                	lui	a2,0x2
1c00cda8:	068a                	slli	a3,a3,0x2
1c00cdaa:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00cdae:	8ef1                	and	a3,a3,a2
1c00cdb0:	9736                	add	a4,a4,a3
1c00cdb2:	c31c                	sw	a5,0(a4)
1c00cdb4:	00154783          	lbu	a5,1(a0)
1c00cdb8:	0505                	addi	a0,a0,1
1c00cdba:	ffe5                	bnez	a5,1c00cdb2 <puts+0x24>
1c00cdbc:	f1402773          	csrr	a4,mhartid
1c00cdc0:	00371793          	slli	a5,a4,0x3
1c00cdc4:	1a10f6b7          	lui	a3,0x1a10f
1c00cdc8:	0ff7f793          	andi	a5,a5,255
1c00cdcc:	97b6                	add	a5,a5,a3
1c00cdce:	6689                	lui	a3,0x2
1c00cdd0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00cdd4:	070a                	slli	a4,a4,0x2
1c00cdd6:	8f75                	and	a4,a4,a3
1c00cdd8:	97ba                	add	a5,a5,a4
1c00cdda:	4729                	li	a4,10
1c00cddc:	c398                	sw	a4,0(a5)
1c00cdde:	4501                	li	a0,0
1c00cde0:	8082                	ret

1c00cde2 <pos_libc_fputc_locked>:
1c00cde2:	6689                	lui	a3,0x2
1c00cde4:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00cde8:	f14027f3          	csrr	a5,mhartid
1c00cdec:	00379713          	slli	a4,a5,0x3
1c00cdf0:	078a                	slli	a5,a5,0x2
1c00cdf2:	8ff5                	and	a5,a5,a3
1c00cdf4:	0ff77713          	andi	a4,a4,255
1c00cdf8:	1a10f6b7          	lui	a3,0x1a10f
1c00cdfc:	9736                	add	a4,a4,a3
1c00cdfe:	97ba                	add	a5,a5,a4
1c00ce00:	0ff57513          	andi	a0,a0,255
1c00ce04:	c388                	sw	a0,0(a5)
1c00ce06:	4501                	li	a0,0
1c00ce08:	8082                	ret

1c00ce0a <putchar>:
1c00ce0a:	6689                	lui	a3,0x2
1c00ce0c:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00ce10:	f14027f3          	csrr	a5,mhartid
1c00ce14:	00379713          	slli	a4,a5,0x3
1c00ce18:	078a                	slli	a5,a5,0x2
1c00ce1a:	8ff5                	and	a5,a5,a3
1c00ce1c:	0ff77713          	andi	a4,a4,255
1c00ce20:	1a10f6b7          	lui	a3,0x1a10f
1c00ce24:	9736                	add	a4,a4,a3
1c00ce26:	97ba                	add	a5,a5,a4
1c00ce28:	0ff57513          	andi	a0,a0,255
1c00ce2c:	c388                	sw	a0,0(a5)
1c00ce2e:	4501                	li	a0,0
1c00ce30:	8082                	ret

1c00ce32 <pos_libc_prf_locked>:
1c00ce32:	a0b1                	j	1c00ce7e <pos_libc_prf>

1c00ce34 <exit>:
1c00ce34:	800007b7          	lui	a5,0x80000
1c00ce38:	1141                	addi	sp,sp,-16
1c00ce3a:	8d5d                	or	a0,a0,a5
1c00ce3c:	c606                	sw	ra,12(sp)
1c00ce3e:	1a1047b7          	lui	a5,0x1a104
1c00ce42:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00ce46:	3b99                	jal	1c00cb9c <pos_wait_forever>

1c00ce48 <pos_io_start>:
1c00ce48:	4501                	li	a0,0
1c00ce4a:	8082                	ret

1c00ce4c <pos_io_stop>:
1c00ce4c:	4501                	li	a0,0
1c00ce4e:	8082                	ret

1c00ce50 <printf>:
1c00ce50:	7139                	addi	sp,sp,-64
1c00ce52:	02410313          	addi	t1,sp,36
1c00ce56:	d432                	sw	a2,40(sp)
1c00ce58:	862a                	mv	a2,a0
1c00ce5a:	1c00d537          	lui	a0,0x1c00d
1c00ce5e:	d22e                	sw	a1,36(sp)
1c00ce60:	d636                	sw	a3,44(sp)
1c00ce62:	4589                	li	a1,2
1c00ce64:	869a                	mv	a3,t1
1c00ce66:	de250513          	addi	a0,a0,-542 # 1c00cde2 <pos_libc_fputc_locked>
1c00ce6a:	ce06                	sw	ra,28(sp)
1c00ce6c:	d83a                	sw	a4,48(sp)
1c00ce6e:	da3e                	sw	a5,52(sp)
1c00ce70:	dc42                	sw	a6,56(sp)
1c00ce72:	de46                	sw	a7,60(sp)
1c00ce74:	c61a                	sw	t1,12(sp)
1c00ce76:	3f75                	jal	1c00ce32 <pos_libc_prf_locked>
1c00ce78:	40f2                	lw	ra,28(sp)
1c00ce7a:	6121                	addi	sp,sp,64
1c00ce7c:	8082                	ret

1c00ce7e <pos_libc_prf>:
1c00ce7e:	7169                	addi	sp,sp,-304
1c00ce80:	12112623          	sw	ra,300(sp)
1c00ce84:	12812423          	sw	s0,296(sp)
1c00ce88:	12912223          	sw	s1,292(sp)
1c00ce8c:	13212023          	sw	s2,288(sp)
1c00ce90:	11312e23          	sw	s3,284(sp)
1c00ce94:	11412c23          	sw	s4,280(sp)
1c00ce98:	11512a23          	sw	s5,276(sp)
1c00ce9c:	11612823          	sw	s6,272(sp)
1c00cea0:	11712623          	sw	s7,268(sp)
1c00cea4:	11812423          	sw	s8,264(sp)
1c00cea8:	11912223          	sw	s9,260(sp)
1c00ceac:	11a12023          	sw	s10,256(sp)
1c00ceb0:	dfee                	sw	s11,252(sp)
1c00ceb2:	00064783          	lbu	a5,0(a2)
1c00ceb6:	c636                	sw	a3,12(sp)
1c00ceb8:	3c0781e3          	beqz	a5,1c00da7a <pos_libc_prf+0xbfc>
1c00cebc:	7741                	lui	a4,0xffff0
1c00cebe:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00cec2:	cc3a                	sw	a4,24(sp)
1c00cec4:	10000737          	lui	a4,0x10000
1c00cec8:	177d                	addi	a4,a4,-1
1c00ceca:	8caa                	mv	s9,a0
1c00cecc:	84ae                	mv	s1,a1
1c00cece:	00160c13          	addi	s8,a2,1
1c00ced2:	4401                	li	s0,0
1c00ced4:	1c000d37          	lui	s10,0x1c000
1c00ced8:	ca3a                	sw	a4,20(sp)
1c00ceda:	853e                	mv	a0,a5
1c00cedc:	02500793          	li	a5,37
1c00cee0:	04f50863          	beq	a0,a5,1c00cf30 <pos_libc_prf+0xb2>
1c00cee4:	85a6                	mv	a1,s1
1c00cee6:	9c82                	jalr	s9
1c00cee8:	57fd                	li	a5,-1
1c00ceea:	4cf50b63          	beq	a0,a5,1c00d3c0 <pos_libc_prf+0x542>
1c00ceee:	0405                	addi	s0,s0,1
1c00cef0:	000c4503          	lbu	a0,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00cef4:	0c05                	addi	s8,s8,1
1c00cef6:	f17d                	bnez	a0,1c00cedc <pos_libc_prf+0x5e>
1c00cef8:	12c12083          	lw	ra,300(sp)
1c00cefc:	8522                	mv	a0,s0
1c00cefe:	12812403          	lw	s0,296(sp)
1c00cf02:	12412483          	lw	s1,292(sp)
1c00cf06:	12012903          	lw	s2,288(sp)
1c00cf0a:	11c12983          	lw	s3,284(sp)
1c00cf0e:	11812a03          	lw	s4,280(sp)
1c00cf12:	11412a83          	lw	s5,276(sp)
1c00cf16:	11012b03          	lw	s6,272(sp)
1c00cf1a:	10c12b83          	lw	s7,268(sp)
1c00cf1e:	10812c03          	lw	s8,264(sp)
1c00cf22:	10412c83          	lw	s9,260(sp)
1c00cf26:	10012d03          	lw	s10,256(sp)
1c00cf2a:	5dfe                	lw	s11,252(sp)
1c00cf2c:	6155                	addi	sp,sp,304
1c00cf2e:	8082                	ret
1c00cf30:	8de2                	mv	s11,s8
1c00cf32:	000dcc03          	lbu	s8,0(s11)
1c00cf36:	248d0513          	addi	a0,s10,584 # 1c000248 <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c00cf3a:	c826                	sw	s1,16(sp)
1c00cf3c:	85e2                	mv	a1,s8
1c00cf3e:	c202                	sw	zero,4(sp)
1c00cf40:	c402                	sw	zero,8(sp)
1c00cf42:	c002                	sw	zero,0(sp)
1c00cf44:	001d8493          	addi	s1,s11,1
1c00cf48:	350d                	jal	1c00cd6a <strchr>
1c00cf4a:	02000913          	li	s2,32
1c00cf4e:	4b81                	li	s7,0
1c00cf50:	02b00993          	li	s3,43
1c00cf54:	02d00b13          	li	s6,45
1c00cf58:	03000a93          	li	s5,48
1c00cf5c:	02000a13          	li	s4,32
1c00cf60:	8626                	mv	a2,s1
1c00cf62:	c51d                	beqz	a0,1c00cf90 <pos_libc_prf+0x112>
1c00cf64:	413c0e63          	beq	s8,s3,1c00d380 <pos_libc_prf+0x502>
1c00cf68:	3f89ec63          	bltu	s3,s8,1c00d360 <pos_libc_prf+0x4e2>
1c00cf6c:	414c0663          	beq	s8,s4,1c00d378 <pos_libc_prf+0x4fa>
1c00cf70:	02300793          	li	a5,35
1c00cf74:	3efc1363          	bne	s8,a5,1c00d35a <pos_libc_prf+0x4dc>
1c00cf78:	4b85                	li	s7,1
1c00cf7a:	8da6                	mv	s11,s1
1c00cf7c:	000dcc03          	lbu	s8,0(s11)
1c00cf80:	248d0513          	addi	a0,s10,584
1c00cf84:	001d8493          	addi	s1,s11,1
1c00cf88:	85e2                	mv	a1,s8
1c00cf8a:	33c5                	jal	1c00cd6a <strchr>
1c00cf8c:	8626                	mv	a2,s1
1c00cf8e:	f979                	bnez	a0,1c00cf64 <pos_libc_prf+0xe6>
1c00cf90:	87e2                	mv	a5,s8
1c00cf92:	ce5e                	sw	s7,28(sp)
1c00cf94:	02a00693          	li	a3,42
1c00cf98:	8c6e                	mv	s8,s11
1c00cf9a:	8ba6                	mv	s7,s1
1c00cf9c:	8dbe                	mv	s11,a5
1c00cf9e:	44c2                	lw	s1,16(sp)
1c00cfa0:	42d78263          	beq	a5,a3,1c00d3c4 <pos_libc_prf+0x546>
1c00cfa4:	fd078693          	addi	a3,a5,-48
1c00cfa8:	4525                	li	a0,9
1c00cfaa:	4a01                	li	s4,0
1c00cfac:	3cd57f63          	bgeu	a0,a3,1c00d38a <pos_libc_prf+0x50c>
1c00cfb0:	02e00793          	li	a5,46
1c00cfb4:	5afd                	li	s5,-1
1c00cfb6:	74fd8363          	beq	s11,a5,1c00d6fc <pos_libc_prf+0x87e>
1c00cfba:	1c0007b7          	lui	a5,0x1c000
1c00cfbe:	85ee                	mv	a1,s11
1c00cfc0:	25078513          	addi	a0,a5,592 # 1c000250 <PQCLEAN_KYBER512_CLEAN_zetas+0x108>
1c00cfc4:	c832                	sw	a2,16(sp)
1c00cfc6:	3355                	jal	1c00cd6a <strchr>
1c00cfc8:	4642                	lw	a2,16(sp)
1c00cfca:	8c32                	mv	s8,a2
1c00cfcc:	c509                	beqz	a0,1c00cfd6 <pos_libc_prf+0x158>
1c00cfce:	00064d83          	lbu	s11,0(a2)
1c00cfd2:	00160c13          	addi	s8,a2,1
1c00cfd6:	06900793          	li	a5,105
1c00cfda:	0afd8ee3          	beq	s11,a5,1c00d896 <pos_libc_prf+0xa18>
1c00cfde:	4db7c763          	blt	a5,s11,1c00d4ac <pos_libc_prf+0x62e>
1c00cfe2:	05800793          	li	a5,88
1c00cfe6:	4efd8163          	beq	s11,a5,1c00d4c8 <pos_libc_prf+0x64a>
1c00cfea:	41b7c163          	blt	a5,s11,1c00d3ec <pos_libc_prf+0x56e>
1c00cfee:	02500793          	li	a5,37
1c00cff2:	26fd8ae3          	beq	s11,a5,1c00da66 <pos_libc_prf+0xbe8>
1c00cff6:	3fb7d863          	bge	a5,s11,1c00d3e6 <pos_libc_prf+0x568>
1c00cffa:	fbbd8793          	addi	a5,s11,-69
1c00cffe:	4689                	li	a3,2
1c00d000:	eef6e8e3          	bltu	a3,a5,1c00cef0 <pos_libc_prf+0x72>
1c00d004:	47b2                	lw	a5,12(sp)
1c00d006:	7ff00893          	li	a7,2047
1c00d00a:	00778b13          	addi	s6,a5,7
1c00d00e:	ff8b7b13          	andi	s6,s6,-8
1c00d012:	004b2783          	lw	a5,4(s6)
1c00d016:	000b2603          	lw	a2,0(s6)
1c00d01a:	0b21                	addi	s6,s6,8
1c00d01c:	00b79693          	slli	a3,a5,0xb
1c00d020:	01565513          	srli	a0,a2,0x15
1c00d024:	8ec9                	or	a3,a3,a0
1c00d026:	0147d813          	srli	a6,a5,0x14
1c00d02a:	0686                	slli	a3,a3,0x1
1c00d02c:	7ff87813          	andi	a6,a6,2047
1c00d030:	0016d513          	srli	a0,a3,0x1
1c00d034:	00b61313          	slli	t1,a2,0xb
1c00d038:	86be                	mv	a3,a5
1c00d03a:	41180263          	beq	a6,a7,1c00d43e <pos_libc_prf+0x5c0>
1c00d03e:	04600793          	li	a5,70
1c00d042:	00fd9463          	bne	s11,a5,1c00d04a <pos_libc_prf+0x1cc>
1c00d046:	06600d93          	li	s11,102
1c00d04a:	006867b3          	or	a5,a6,t1
1c00d04e:	00a7e8b3          	or	a7,a5,a0
1c00d052:	862a                	mv	a2,a0
1c00d054:	340885e3          	beqz	a7,1c00db9e <pos_libc_prf+0xd20>
1c00d058:	80000637          	lui	a2,0x80000
1c00d05c:	c0280813          	addi	a6,a6,-1022
1c00d060:	879a                	mv	a5,t1
1c00d062:	8e49                	or	a2,a2,a0
1c00d064:	4606c7e3          	bltz	a3,1c00dcd2 <pos_libc_prf+0xe54>
1c00d068:	4722                	lw	a4,8(sp)
1c00d06a:	480708e3          	beqz	a4,1c00dcfa <pos_libc_prf+0xe7c>
1c00d06e:	02b00693          	li	a3,43
1c00d072:	02d10223          	sb	a3,36(sp)
1c00d076:	02510f13          	addi	t5,sp,37
1c00d07a:	56f9                	li	a3,-2
1c00d07c:	4301                	li	t1,0
1c00d07e:	06d85663          	bge	a6,a3,1c00d0ea <pos_libc_prf+0x26c>
1c00d082:	333338b7          	lui	a7,0x33333
1c00d086:	80000e37          	lui	t3,0x80000
1c00d08a:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00d08e:	fffe4e13          	not	t3,t3
1c00d092:	5ef9                	li	t4,-2
1c00d094:	01f61593          	slli	a1,a2,0x1f
1c00d098:	0017d693          	srli	a3,a5,0x1
1c00d09c:	0017f713          	andi	a4,a5,1
1c00d0a0:	8ecd                	or	a3,a3,a1
1c00d0a2:	00d707b3          	add	a5,a4,a3
1c00d0a6:	00e7b733          	sltu	a4,a5,a4
1c00d0aa:	8205                	srli	a2,a2,0x1
1c00d0ac:	963a                	add	a2,a2,a4
1c00d0ae:	8742                	mv	a4,a6
1c00d0b0:	0805                	addi	a6,a6,1
1c00d0b2:	fec8e1e3          	bltu	a7,a2,1c00d094 <pos_libc_prf+0x216>
1c00d0b6:	00279593          	slli	a1,a5,0x2
1c00d0ba:	01e7d513          	srli	a0,a5,0x1e
1c00d0be:	00261693          	slli	a3,a2,0x2
1c00d0c2:	97ae                	add	a5,a5,a1
1c00d0c4:	8ec9                	or	a3,a3,a0
1c00d0c6:	9636                	add	a2,a2,a3
1c00d0c8:	00b7b5b3          	sltu	a1,a5,a1
1c00d0cc:	962e                	add	a2,a2,a1
1c00d0ce:	01f7d693          	srli	a3,a5,0x1f
1c00d0d2:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00d0d6:	137d                	addi	t1,t1,-1
1c00d0d8:	01c61763          	bne	a2,t3,1c00d0e6 <pos_libc_prf+0x268>
1c00d0dc:	00170813          	addi	a6,a4,1
1c00d0e0:	0786                	slli	a5,a5,0x1
1c00d0e2:	ffe6e613          	ori	a2,a3,-2
1c00d0e6:	fbd847e3          	blt	a6,t4,1c00d094 <pos_libc_prf+0x216>
1c00d0ea:	07005363          	blez	a6,1c00d150 <pos_libc_prf+0x2d2>
1c00d0ee:	800008b7          	lui	a7,0x80000
1c00d0f2:	4e15                	li	t3,5
1c00d0f4:	fff8c893          	not	a7,a7
1c00d0f8:	00278693          	addi	a3,a5,2
1c00d0fc:	00f6b7b3          	sltu	a5,a3,a5
1c00d100:	963e                	add	a2,a2,a5
1c00d102:	03c657b3          	divu	a5,a2,t3
1c00d106:	0036d713          	srli	a4,a3,0x3
1c00d10a:	187d                	addi	a6,a6,-1
1c00d10c:	0305                	addi	t1,t1,1
1c00d10e:	00279593          	slli	a1,a5,0x2
1c00d112:	95be                	add	a1,a1,a5
1c00d114:	8e0d                	sub	a2,a2,a1
1c00d116:	0676                	slli	a2,a2,0x1d
1c00d118:	8f51                	or	a4,a4,a2
1c00d11a:	03c75633          	divu	a2,a4,t3
1c00d11e:	00361713          	slli	a4,a2,0x3
1c00d122:	00561593          	slli	a1,a2,0x5
1c00d126:	95ba                	add	a1,a1,a4
1c00d128:	8e8d                	sub	a3,a3,a1
1c00d12a:	03c6d6b3          	divu	a3,a3,t3
1c00d12e:	8275                	srli	a2,a2,0x1d
1c00d130:	963e                	add	a2,a2,a5
1c00d132:	00e687b3          	add	a5,a3,a4
1c00d136:	00d7b6b3          	sltu	a3,a5,a3
1c00d13a:	9636                	add	a2,a2,a3
1c00d13c:	01f7d713          	srli	a4,a5,0x1f
1c00d140:	0606                	slli	a2,a2,0x1
1c00d142:	8e59                	or	a2,a2,a4
1c00d144:	0786                	slli	a5,a5,0x1
1c00d146:	187d                	addi	a6,a6,-1
1c00d148:	fec8fae3          	bgeu	a7,a2,1c00d13c <pos_libc_prf+0x2be>
1c00d14c:	fb0046e3          	bgtz	a6,1c00d0f8 <pos_libc_prf+0x27a>
1c00d150:	4e11                	li	t3,4
1c00d152:	01f61693          	slli	a3,a2,0x1f
1c00d156:	0017d713          	srli	a4,a5,0x1
1c00d15a:	8f55                	or	a4,a4,a3
1c00d15c:	8b85                	andi	a5,a5,1
1c00d15e:	00e78533          	add	a0,a5,a4
1c00d162:	8205                	srli	a2,a2,0x1
1c00d164:	00f537b3          	sltu	a5,a0,a5
1c00d168:	00c788b3          	add	a7,a5,a2
1c00d16c:	0805                	addi	a6,a6,1
1c00d16e:	87aa                	mv	a5,a0
1c00d170:	8646                	mv	a2,a7
1c00d172:	ffc810e3          	bne	a6,t3,1c00d152 <pos_libc_prf+0x2d4>
1c00d176:	06700793          	li	a5,103
1c00d17a:	2a0acee3          	bltz	s5,1c00dc36 <pos_libc_prf+0xdb8>
1c00d17e:	28fd83e3          	beq	s11,a5,1c00dc04 <pos_libc_prf+0xd86>
1c00d182:	04700793          	li	a5,71
1c00d186:	26fd8fe3          	beq	s11,a5,1c00dc04 <pos_libc_prf+0xd86>
1c00d18a:	06600793          	li	a5,102
1c00d18e:	2cfd85e3          	beq	s11,a5,1c00dc58 <pos_libc_prf+0xdda>
1c00d192:	001a8813          	addi	a6,s5,1
1c00d196:	47c1                	li	a5,16
1c00d198:	0107d363          	bge	a5,a6,1c00d19e <pos_libc_prf+0x320>
1c00d19c:	4841                	li	a6,16
1c00d19e:	187d                	addi	a6,a6,-1
1c00d1a0:	4601                	li	a2,0
1c00d1a2:	4781                	li	a5,0
1c00d1a4:	080006b7          	lui	a3,0x8000
1c00d1a8:	4e15                	li	t3,5
1c00d1aa:	5efd                	li	t4,-1
1c00d1ac:	00278713          	addi	a4,a5,2
1c00d1b0:	00f737b3          	sltu	a5,a4,a5
1c00d1b4:	97b6                	add	a5,a5,a3
1c00d1b6:	03c7dfb3          	divu	t6,a5,t3
1c00d1ba:	00375593          	srli	a1,a4,0x3
1c00d1be:	187d                	addi	a6,a6,-1
1c00d1c0:	002f9693          	slli	a3,t6,0x2
1c00d1c4:	96fe                	add	a3,a3,t6
1c00d1c6:	8f95                	sub	a5,a5,a3
1c00d1c8:	07f6                	slli	a5,a5,0x1d
1c00d1ca:	8ddd                	or	a1,a1,a5
1c00d1cc:	03c5d5b3          	divu	a1,a1,t3
1c00d1d0:	00359693          	slli	a3,a1,0x3
1c00d1d4:	00559793          	slli	a5,a1,0x5
1c00d1d8:	97b6                	add	a5,a5,a3
1c00d1da:	8f1d                	sub	a4,a4,a5
1c00d1dc:	03c757b3          	divu	a5,a4,t3
1c00d1e0:	81f5                	srli	a1,a1,0x1d
1c00d1e2:	95fe                	add	a1,a1,t6
1c00d1e4:	96be                	add	a3,a3,a5
1c00d1e6:	00f6b733          	sltu	a4,a3,a5
1c00d1ea:	972e                	add	a4,a4,a1
1c00d1ec:	01f71593          	slli	a1,a4,0x1f
1c00d1f0:	0016d793          	srli	a5,a3,0x1
1c00d1f4:	8fcd                	or	a5,a5,a1
1c00d1f6:	8a85                	andi	a3,a3,1
1c00d1f8:	97b6                	add	a5,a5,a3
1c00d1fa:	8305                	srli	a4,a4,0x1
1c00d1fc:	00d7b6b3          	sltu	a3,a5,a3
1c00d200:	96ba                	add	a3,a3,a4
1c00d202:	fbd815e3          	bne	a6,t4,1c00d1ac <pos_libc_prf+0x32e>
1c00d206:	97aa                	add	a5,a5,a0
1c00d208:	96c6                	add	a3,a3,a7
1c00d20a:	00a7b533          	sltu	a0,a5,a0
1c00d20e:	00d508b3          	add	a7,a0,a3
1c00d212:	f00006b7          	lui	a3,0xf0000
1c00d216:	0116f6b3          	and	a3,a3,a7
1c00d21a:	c2b5                	beqz	a3,1c00d27e <pos_libc_prf+0x400>
1c00d21c:	00278813          	addi	a6,a5,2
1c00d220:	00f836b3          	sltu	a3,a6,a5
1c00d224:	98b6                	add	a7,a7,a3
1c00d226:	4e95                	li	t4,5
1c00d228:	03d8de33          	divu	t3,a7,t4
1c00d22c:	00385693          	srli	a3,a6,0x3
1c00d230:	0305                	addi	t1,t1,1
1c00d232:	002e1513          	slli	a0,t3,0x2
1c00d236:	9572                	add	a0,a0,t3
1c00d238:	40a888b3          	sub	a7,a7,a0
1c00d23c:	01d89513          	slli	a0,a7,0x1d
1c00d240:	8ec9                	or	a3,a3,a0
1c00d242:	03d6d6b3          	divu	a3,a3,t4
1c00d246:	00369513          	slli	a0,a3,0x3
1c00d24a:	00569793          	slli	a5,a3,0x5
1c00d24e:	97aa                	add	a5,a5,a0
1c00d250:	40f807b3          	sub	a5,a6,a5
1c00d254:	03d7d7b3          	divu	a5,a5,t4
1c00d258:	82f5                	srli	a3,a3,0x1d
1c00d25a:	96f2                	add	a3,a3,t3
1c00d25c:	953e                	add	a0,a0,a5
1c00d25e:	00f537b3          	sltu	a5,a0,a5
1c00d262:	96be                	add	a3,a3,a5
1c00d264:	01f69813          	slli	a6,a3,0x1f
1c00d268:	00155793          	srli	a5,a0,0x1
1c00d26c:	00f867b3          	or	a5,a6,a5
1c00d270:	8905                	andi	a0,a0,1
1c00d272:	97aa                	add	a5,a5,a0
1c00d274:	8285                	srli	a3,a3,0x1
1c00d276:	00a7b533          	sltu	a0,a5,a0
1c00d27a:	00d508b3          	add	a7,a0,a3
1c00d27e:	001f0993          	addi	s3,t5,1
1c00d282:	06600693          	li	a3,102
1c00d286:	884e                	mv	a6,s3
1c00d288:	4edd8163          	beq	s11,a3,1c00d76a <pos_libc_prf+0x8ec>
1c00d28c:	00279693          	slli	a3,a5,0x2
1c00d290:	01e7d513          	srli	a0,a5,0x1e
1c00d294:	00289e13          	slli	t3,a7,0x2
1c00d298:	97b6                	add	a5,a5,a3
1c00d29a:	01c56e33          	or	t3,a0,t3
1c00d29e:	00d7b833          	sltu	a6,a5,a3
1c00d2a2:	011e06b3          	add	a3,t3,a7
1c00d2a6:	9836                	add	a6,a6,a3
1c00d2a8:	0806                	slli	a6,a6,0x1
1c00d2aa:	01f7d693          	srli	a3,a5,0x1f
1c00d2ae:	0106e833          	or	a6,a3,a6
1c00d2b2:	01c85693          	srli	a3,a6,0x1c
1c00d2b6:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00d2ba:	4772                	lw	a4,28(sp)
1c00d2bc:	00af0023          	sb	a0,0(t5)
1c00d2c0:	00179513          	slli	a0,a5,0x1
1c00d2c4:	47d2                	lw	a5,20(sp)
1c00d2c6:	00d036b3          	snez	a3,a3
1c00d2ca:	01576bb3          	or	s7,a4,s5
1c00d2ce:	00f87833          	and	a6,a6,a5
1c00d2d2:	40d30333          	sub	t1,t1,a3
1c00d2d6:	060b8463          	beqz	s7,1c00d33e <pos_libc_prf+0x4c0>
1c00d2da:	02e00793          	li	a5,46
1c00d2de:	00ff00a3          	sb	a5,1(t5)
1c00d2e2:	002f0993          	addi	s3,t5,2
1c00d2e6:	040a8c63          	beqz	s5,1c00d33e <pos_libc_prf+0x4c0>
1c00d2ea:	002a8793          	addi	a5,s5,2
1c00d2ee:	9f3e                	add	t5,t5,a5
1c00d2f0:	88ce                	mv	a7,s3
1c00d2f2:	4ebd                	li	t4,15
1c00d2f4:	03000f93          	li	t6,48
1c00d2f8:	00251793          	slli	a5,a0,0x2
1c00d2fc:	01e55693          	srli	a3,a0,0x1e
1c00d300:	00281713          	slli	a4,a6,0x2
1c00d304:	00a785b3          	add	a1,a5,a0
1c00d308:	8f55                	or	a4,a4,a3
1c00d30a:	9742                	add	a4,a4,a6
1c00d30c:	00f5b7b3          	sltu	a5,a1,a5
1c00d310:	97ba                	add	a5,a5,a4
1c00d312:	0786                	slli	a5,a5,0x1
1c00d314:	01f5d713          	srli	a4,a1,0x1f
1c00d318:	8fd9                	or	a5,a5,a4
1c00d31a:	01c7d713          	srli	a4,a5,0x1c
1c00d31e:	03070713          	addi	a4,a4,48
1c00d322:	0885                	addi	a7,a7,1
1c00d324:	53d05763          	blez	t4,1c00d852 <pos_libc_prf+0x9d4>
1c00d328:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00d32c:	4752                	lw	a4,20(sp)
1c00d32e:	1efd                	addi	t4,t4,-1
1c00d330:	00159513          	slli	a0,a1,0x1
1c00d334:	00e7f833          	and	a6,a5,a4
1c00d338:	fd1f10e3          	bne	t5,a7,1c00d2f8 <pos_libc_prf+0x47a>
1c00d33c:	99d6                	add	s3,s3,s5
1c00d33e:	4e061c63          	bnez	a2,1c00d836 <pos_libc_prf+0x9b8>
1c00d342:	fdfdf793          	andi	a5,s11,-33
1c00d346:	04500693          	li	a3,69
1c00d34a:	00d781e3          	beq	a5,a3,1c00db4c <pos_libc_prf+0xcce>
1c00d34e:	105c                	addi	a5,sp,36
1c00d350:	00098023          	sb	zero,0(s3)
1c00d354:	40f989b3          	sub	s3,s3,a5
1c00d358:	aa05                	j	1c00d488 <pos_libc_prf+0x60a>
1c00d35a:	b80c0fe3          	beqz	s8,1c00cef8 <pos_libc_prf+0x7a>
1c00d35e:	b931                	j	1c00cf7a <pos_libc_prf+0xfc>
1c00d360:	016c0863          	beq	s8,s6,1c00d370 <pos_libc_prf+0x4f2>
1c00d364:	c15c1be3          	bne	s8,s5,1c00cf7a <pos_libc_prf+0xfc>
1c00d368:	03000913          	li	s2,48
1c00d36c:	8da6                	mv	s11,s1
1c00d36e:	b139                	j	1c00cf7c <pos_libc_prf+0xfe>
1c00d370:	4785                	li	a5,1
1c00d372:	c03e                	sw	a5,0(sp)
1c00d374:	8da6                	mv	s11,s1
1c00d376:	b119                	j	1c00cf7c <pos_libc_prf+0xfe>
1c00d378:	4785                	li	a5,1
1c00d37a:	c23e                	sw	a5,4(sp)
1c00d37c:	8da6                	mv	s11,s1
1c00d37e:	befd                	j	1c00cf7c <pos_libc_prf+0xfe>
1c00d380:	4785                	li	a5,1
1c00d382:	c43e                	sw	a5,8(sp)
1c00d384:	8da6                	mv	s11,s1
1c00d386:	bedd                	j	1c00cf7c <pos_libc_prf+0xfe>
1c00d388:	0b85                	addi	s7,s7,1
1c00d38a:	002a1793          	slli	a5,s4,0x2
1c00d38e:	97d2                	add	a5,a5,s4
1c00d390:	0786                	slli	a5,a5,0x1
1c00d392:	97ee                	add	a5,a5,s11
1c00d394:	000bcd83          	lbu	s11,0(s7)
1c00d398:	fd078a13          	addi	s4,a5,-48
1c00d39c:	8662                	mv	a2,s8
1c00d39e:	fd0d8793          	addi	a5,s11,-48
1c00d3a2:	8c5e                	mv	s8,s7
1c00d3a4:	fef572e3          	bgeu	a0,a5,1c00d388 <pos_libc_prf+0x50a>
1c00d3a8:	0609                	addi	a2,a2,2
1c00d3aa:	0c800793          	li	a5,200
1c00d3ae:	c147f1e3          	bgeu	a5,s4,1c00cfb0 <pos_libc_prf+0x132>
1c00d3b2:	0c800a13          	li	s4,200
1c00d3b6:	beed                	j	1c00cfb0 <pos_libc_prf+0x132>
1c00d3b8:	0c800793          	li	a5,200
1c00d3bc:	b3b7dae3          	bge	a5,s11,1c00cef0 <pos_libc_prf+0x72>
1c00d3c0:	547d                	li	s0,-1
1c00d3c2:	be1d                	j	1c00cef8 <pos_libc_prf+0x7a>
1c00d3c4:	47b2                	lw	a5,12(sp)
1c00d3c6:	0007aa03          	lw	s4,0(a5)
1c00d3ca:	00478693          	addi	a3,a5,4
1c00d3ce:	000a5663          	bgez	s4,1c00d3da <pos_libc_prf+0x55c>
1c00d3d2:	4785                	li	a5,1
1c00d3d4:	41400a33          	neg	s4,s4
1c00d3d8:	c03e                	sw	a5,0(sp)
1c00d3da:	000bcd83          	lbu	s11,0(s7)
1c00d3de:	c636                	sw	a3,12(sp)
1c00d3e0:	002c0613          	addi	a2,s8,2
1c00d3e4:	b7d9                	j	1c00d3aa <pos_libc_prf+0x52c>
1c00d3e6:	b00d89e3          	beqz	s11,1c00cef8 <pos_libc_prf+0x7a>
1c00d3ea:	b619                	j	1c00cef0 <pos_libc_prf+0x72>
1c00d3ec:	06400793          	li	a5,100
1c00d3f0:	4afd8363          	beq	s11,a5,1c00d896 <pos_libc_prf+0xa18>
1c00d3f4:	19b7d963          	bge	a5,s11,1c00d586 <pos_libc_prf+0x708>
1c00d3f8:	f9bd8793          	addi	a5,s11,-101
1c00d3fc:	4689                	li	a3,2
1c00d3fe:	aef6e9e3          	bltu	a3,a5,1c00cef0 <pos_libc_prf+0x72>
1c00d402:	47b2                	lw	a5,12(sp)
1c00d404:	7ff00893          	li	a7,2047
1c00d408:	00778b13          	addi	s6,a5,7
1c00d40c:	ff8b7b13          	andi	s6,s6,-8
1c00d410:	004b2783          	lw	a5,4(s6)
1c00d414:	000b2603          	lw	a2,0(s6)
1c00d418:	0b21                	addi	s6,s6,8
1c00d41a:	00b79693          	slli	a3,a5,0xb
1c00d41e:	01565813          	srli	a6,a2,0x15
1c00d422:	0147d513          	srli	a0,a5,0x14
1c00d426:	00d866b3          	or	a3,a6,a3
1c00d42a:	0686                	slli	a3,a3,0x1
1c00d42c:	7ff57813          	andi	a6,a0,2047
1c00d430:	00b61313          	slli	t1,a2,0xb
1c00d434:	0016d513          	srli	a0,a3,0x1
1c00d438:	86be                	mv	a3,a5
1c00d43a:	c11818e3          	bne	a6,a7,1c00d04a <pos_libc_prf+0x1cc>
1c00d43e:	105c                	addi	a5,sp,36
1c00d440:	0006d863          	bgez	a3,1c00d450 <pos_libc_prf+0x5d2>
1c00d444:	02d00793          	li	a5,45
1c00d448:	02f10223          	sb	a5,36(sp)
1c00d44c:	02510793          	addi	a5,sp,37
1c00d450:	00a36633          	or	a2,t1,a0
1c00d454:	fbfd8593          	addi	a1,s11,-65
1c00d458:	00378993          	addi	s3,a5,3
1c00d45c:	46e5                	li	a3,25
1c00d45e:	0c0612e3          	bnez	a2,1c00dd22 <pos_libc_prf+0xea4>
1c00d462:	10b6e5e3          	bltu	a3,a1,1c00dd6c <pos_libc_prf+0xeee>
1c00d466:	04900693          	li	a3,73
1c00d46a:	00d78023          	sb	a3,0(a5)
1c00d46e:	04e00693          	li	a3,78
1c00d472:	00d780a3          	sb	a3,1(a5)
1c00d476:	04600693          	li	a3,70
1c00d47a:	00d78123          	sb	a3,2(a5)
1c00d47e:	000781a3          	sb	zero,3(a5)
1c00d482:	105c                	addi	a5,sp,36
1c00d484:	40f989b3          	sub	s3,s3,a5
1c00d488:	47a2                	lw	a5,8(sp)
1c00d48a:	4712                	lw	a4,4(sp)
1c00d48c:	8fd9                	or	a5,a5,a4
1c00d48e:	ce3e                	sw	a5,28(sp)
1c00d490:	5e079b63          	bnez	a5,1c00da86 <pos_libc_prf+0xc08>
1c00d494:	02414683          	lbu	a3,36(sp)
1c00d498:	02d00793          	li	a5,45
1c00d49c:	5ef68563          	beq	a3,a5,1c00da86 <pos_libc_prf+0xc08>
1c00d4a0:	0c800793          	li	a5,200
1c00d4a4:	0d37d863          	bge	a5,s3,1c00d574 <pos_libc_prf+0x6f6>
1c00d4a8:	547d                	li	s0,-1
1c00d4aa:	b4b9                	j	1c00cef8 <pos_libc_prf+0x7a>
1c00d4ac:	07000793          	li	a5,112
1c00d4b0:	46fd8f63          	beq	s11,a5,1c00d92e <pos_libc_prf+0xab0>
1c00d4b4:	1bb7d663          	bge	a5,s11,1c00d660 <pos_libc_prf+0x7e2>
1c00d4b8:	07500793          	li	a5,117
1c00d4bc:	52fd8763          	beq	s11,a5,1c00d9ea <pos_libc_prf+0xb6c>
1c00d4c0:	07800793          	li	a5,120
1c00d4c4:	16fd9163          	bne	s11,a5,1c00d626 <pos_libc_prf+0x7a8>
1c00d4c8:	47b2                	lw	a5,12(sp)
1c00d4ca:	1054                	addi	a3,sp,36
1c00d4cc:	4390                	lw	a2,0(a5)
1c00d4ce:	00478b13          	addi	s6,a5,4
1c00d4d2:	47f2                	lw	a5,28(sp)
1c00d4d4:	28079163          	bnez	a5,1c00d756 <pos_libc_prf+0x8d8>
1c00d4d8:	87b6                	mv	a5,a3
1c00d4da:	4ea5                	li	t4,9
1c00d4dc:	4e3d                	li	t3,15
1c00d4de:	a039                	j	1c00d4ec <pos_libc_prf+0x66e>
1c00d4e0:	ff098fa3          	sb	a6,-1(s3)
1c00d4e4:	02ce7663          	bgeu	t3,a2,1c00d510 <pos_libc_prf+0x692>
1c00d4e8:	862a                	mv	a2,a0
1c00d4ea:	87ce                	mv	a5,s3
1c00d4ec:	00f67593          	andi	a1,a2,15
1c00d4f0:	00178993          	addi	s3,a5,1
1c00d4f4:	05758813          	addi	a6,a1,87
1c00d4f8:	03058713          	addi	a4,a1,48
1c00d4fc:	00465513          	srli	a0,a2,0x4
1c00d500:	febee0e3          	bltu	t4,a1,1c00d4e0 <pos_libc_prf+0x662>
1c00d504:	00e78023          	sb	a4,0(a5)
1c00d508:	00178993          	addi	s3,a5,1
1c00d50c:	fcce6ee3          	bltu	t3,a2,1c00d4e8 <pos_libc_prf+0x66a>
1c00d510:	40d98633          	sub	a2,s3,a3
1c00d514:	01565c63          	bge	a2,s5,1c00d52c <pos_libc_prf+0x6ae>
1c00d518:	03000513          	li	a0,48
1c00d51c:	87ce                	mv	a5,s3
1c00d51e:	0985                	addi	s3,s3,1
1c00d520:	40d98733          	sub	a4,s3,a3
1c00d524:	fea98fa3          	sb	a0,-1(s3)
1c00d528:	ff574ae3          	blt	a4,s5,1c00d51c <pos_libc_prf+0x69e>
1c00d52c:	00098023          	sb	zero,0(s3)
1c00d530:	00f6fe63          	bgeu	a3,a5,1c00d54c <pos_libc_prf+0x6ce>
1c00d534:	0006c603          	lbu	a2,0(a3)
1c00d538:	0007c703          	lbu	a4,0(a5)
1c00d53c:	0685                	addi	a3,a3,1
1c00d53e:	00c78023          	sb	a2,0(a5)
1c00d542:	fee68fa3          	sb	a4,-1(a3)
1c00d546:	17fd                	addi	a5,a5,-1
1c00d548:	fef6e6e3          	bltu	a3,a5,1c00d534 <pos_libc_prf+0x6b6>
1c00d54c:	05800793          	li	a5,88
1c00d550:	66fd8463          	beq	s11,a5,1c00dbb8 <pos_libc_prf+0xd3a>
1c00d554:	105c                	addi	a5,sp,36
1c00d556:	40f989b3          	sub	s3,s3,a5
1c00d55a:	47f2                	lw	a5,28(sp)
1c00d55c:	c399                	beqz	a5,1c00d562 <pos_libc_prf+0x6e4>
1c00d55e:	4789                	li	a5,2
1c00d560:	ce3e                	sw	a5,28(sp)
1c00d562:	57fd                	li	a5,-1
1c00d564:	f2fa8ee3          	beq	s5,a5,1c00d4a0 <pos_libc_prf+0x622>
1c00d568:	0c800793          	li	a5,200
1c00d56c:	e537cae3          	blt	a5,s3,1c00d3c0 <pos_libc_prf+0x542>
1c00d570:	02000913          	li	s2,32
1c00d574:	00198613          	addi	a2,s3,1
1c00d578:	0349c963          	blt	s3,s4,1c00d5aa <pos_libc_prf+0x72c>
1c00d57c:	c65a                	sw	s6,12(sp)
1c00d57e:	8a4e                	mv	s4,s3
1c00d580:	1a0a1663          	bnez	s4,1c00d72c <pos_libc_prf+0x8ae>
1c00d584:	b2b5                	j	1c00cef0 <pos_libc_prf+0x72>
1c00d586:	06300793          	li	a5,99
1c00d58a:	96fd93e3          	bne	s11,a5,1c00cef0 <pos_libc_prf+0x72>
1c00d58e:	4732                	lw	a4,12(sp)
1c00d590:	020102a3          	sb	zero,37(sp)
1c00d594:	4785                	li	a5,1
1c00d596:	4314                	lw	a3,0(a4)
1c00d598:	00470b13          	addi	s6,a4,4
1c00d59c:	02d10223          	sb	a3,36(sp)
1c00d5a0:	1947d463          	bge	a5,s4,1c00d728 <pos_libc_prf+0x8aa>
1c00d5a4:	4609                	li	a2,2
1c00d5a6:	4985                	li	s3,1
1c00d5a8:	ce02                	sw	zero,28(sp)
1c00d5aa:	4782                	lw	a5,0(sp)
1c00d5ac:	4e078463          	beqz	a5,1c00da94 <pos_libc_prf+0xc16>
1c00d5b0:	413a07b3          	sub	a5,s4,s3
1c00d5b4:	4585                	li	a1,1
1c00d5b6:	0149d363          	bge	s3,s4,1c00d5bc <pos_libc_prf+0x73e>
1c00d5ba:	85be                	mv	a1,a5
1c00d5bc:	17fd                	addi	a5,a5,-1
1c00d5be:	0037b793          	sltiu	a5,a5,3
1c00d5c2:	eb95                	bnez	a5,1c00d5f6 <pos_libc_prf+0x778>
1c00d5c4:	0349d963          	bge	s3,s4,1c00d5f6 <pos_libc_prf+0x778>
1c00d5c8:	105c                	addi	a5,sp,36
1c00d5ca:	97ce                	add	a5,a5,s3
1c00d5cc:	ffc5f613          	andi	a2,a1,-4
1c00d5d0:	963e                	add	a2,a2,a5
1c00d5d2:	02000693          	li	a3,32
1c00d5d6:	00d78023          	sb	a3,0(a5)
1c00d5da:	00d780a3          	sb	a3,1(a5)
1c00d5de:	00d78123          	sb	a3,2(a5)
1c00d5e2:	00d781a3          	sb	a3,3(a5)
1c00d5e6:	0791                	addi	a5,a5,4
1c00d5e8:	fef617e3          	bne	a2,a5,1c00d5d6 <pos_libc_prf+0x758>
1c00d5ec:	ffc5f793          	andi	a5,a1,-4
1c00d5f0:	99be                	add	s3,s3,a5
1c00d5f2:	02b78663          	beq	a5,a1,1c00d61e <pos_libc_prf+0x7a0>
1c00d5f6:	199c                	addi	a5,sp,240
1c00d5f8:	97ce                	add	a5,a5,s3
1c00d5fa:	02000693          	li	a3,32
1c00d5fe:	f2d78a23          	sb	a3,-204(a5)
1c00d602:	00198793          	addi	a5,s3,1
1c00d606:	0147dc63          	bge	a5,s4,1c00d61e <pos_libc_prf+0x7a0>
1c00d60a:	1998                	addi	a4,sp,240
1c00d60c:	97ba                	add	a5,a5,a4
1c00d60e:	f2d78a23          	sb	a3,-204(a5)
1c00d612:	0989                	addi	s3,s3,2
1c00d614:	0149d563          	bge	s3,s4,1c00d61e <pos_libc_prf+0x7a0>
1c00d618:	99ba                	add	s3,s3,a4
1c00d61a:	f2d98a23          	sb	a3,-204(s3)
1c00d61e:	c65a                	sw	s6,12(sp)
1c00d620:	100a1663          	bnez	s4,1c00d72c <pos_libc_prf+0x8ae>
1c00d624:	b0f1                	j	1c00cef0 <pos_libc_prf+0x72>
1c00d626:	07300793          	li	a5,115
1c00d62a:	d8fd97e3          	bne	s11,a5,1c00d3b8 <pos_libc_prf+0x53a>
1c00d62e:	47b2                	lw	a5,12(sp)
1c00d630:	4981                	li	s3,0
1c00d632:	0c800693          	li	a3,200
1c00d636:	438c                	lw	a1,0(a5)
1c00d638:	00478b13          	addi	s6,a5,4
1c00d63c:	a021                	j	1c00d644 <pos_libc_prf+0x7c6>
1c00d63e:	0985                	addi	s3,s3,1
1c00d640:	6ad98163          	beq	s3,a3,1c00dce2 <pos_libc_prf+0xe64>
1c00d644:	013587b3          	add	a5,a1,s3
1c00d648:	0007c783          	lbu	a5,0(a5)
1c00d64c:	fbed                	bnez	a5,1c00d63e <pos_libc_prf+0x7c0>
1c00d64e:	000ac563          	bltz	s5,1c00d658 <pos_libc_prf+0x7da>
1c00d652:	013ad363          	bge	s5,s3,1c00d658 <pos_libc_prf+0x7da>
1c00d656:	89d6                	mv	s3,s5
1c00d658:	5a099163          	bnez	s3,1c00dbfa <pos_libc_prf+0xd7c>
1c00d65c:	c65a                	sw	s6,12(sp)
1c00d65e:	b849                	j	1c00cef0 <pos_libc_prf+0x72>
1c00d660:	06e00793          	li	a5,110
1c00d664:	36fd8c63          	beq	s11,a5,1c00d9dc <pos_libc_prf+0xb5e>
1c00d668:	06f00793          	li	a5,111
1c00d66c:	88fd92e3          	bne	s11,a5,1c00cef0 <pos_libc_prf+0x72>
1c00d670:	47b2                	lw	a5,12(sp)
1c00d672:	4390                	lw	a2,0(a5)
1c00d674:	00478b13          	addi	s6,a5,4
1c00d678:	47f2                	lw	a5,28(sp)
1c00d67a:	c7f5                	beqz	a5,1c00d766 <pos_libc_prf+0x8e8>
1c00d67c:	03000793          	li	a5,48
1c00d680:	02f10223          	sb	a5,36(sp)
1c00d684:	02510693          	addi	a3,sp,37
1c00d688:	60060b63          	beqz	a2,1c00dc9e <pos_libc_prf+0xe20>
1c00d68c:	89b6                	mv	s3,a3
1c00d68e:	481d                	li	a6,7
1c00d690:	00767713          	andi	a4,a2,7
1c00d694:	03070713          	addi	a4,a4,48
1c00d698:	85b2                	mv	a1,a2
1c00d69a:	00e98023          	sb	a4,0(s3)
1c00d69e:	87ce                	mv	a5,s3
1c00d6a0:	820d                	srli	a2,a2,0x3
1c00d6a2:	0985                	addi	s3,s3,1
1c00d6a4:	feb866e3          	bltu	a6,a1,1c00d690 <pos_libc_prf+0x812>
1c00d6a8:	40d98633          	sub	a2,s3,a3
1c00d6ac:	01565c63          	bge	a2,s5,1c00d6c4 <pos_libc_prf+0x846>
1c00d6b0:	03000593          	li	a1,48
1c00d6b4:	87ce                	mv	a5,s3
1c00d6b6:	0985                	addi	s3,s3,1
1c00d6b8:	40d98733          	sub	a4,s3,a3
1c00d6bc:	feb98fa3          	sb	a1,-1(s3)
1c00d6c0:	ff574ae3          	blt	a4,s5,1c00d6b4 <pos_libc_prf+0x836>
1c00d6c4:	00098023          	sb	zero,0(s3)
1c00d6c8:	00f6fe63          	bgeu	a3,a5,1c00d6e4 <pos_libc_prf+0x866>
1c00d6cc:	0006c603          	lbu	a2,0(a3)
1c00d6d0:	0007c703          	lbu	a4,0(a5)
1c00d6d4:	0685                	addi	a3,a3,1
1c00d6d6:	00c78023          	sb	a2,0(a5)
1c00d6da:	fee68fa3          	sb	a4,-1(a3)
1c00d6de:	17fd                	addi	a5,a5,-1
1c00d6e0:	fef6e6e3          	bltu	a3,a5,1c00d6cc <pos_libc_prf+0x84e>
1c00d6e4:	1058                	addi	a4,sp,36
1c00d6e6:	57fd                	li	a5,-1
1c00d6e8:	40e989b3          	sub	s3,s3,a4
1c00d6ec:	36fa8763          	beq	s5,a5,1c00da5a <pos_libc_prf+0xbdc>
1c00d6f0:	0c800793          	li	a5,200
1c00d6f4:	cd37c6e3          	blt	a5,s3,1c00d3c0 <pos_libc_prf+0x542>
1c00d6f8:	ce02                	sw	zero,28(sp)
1c00d6fa:	bd9d                	j	1c00d570 <pos_libc_prf+0x6f2>
1c00d6fc:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00d700:	02a00793          	li	a5,42
1c00d704:	00160693          	addi	a3,a2,1
1c00d708:	14f59b63          	bne	a1,a5,1c00d85e <pos_libc_prf+0x9e0>
1c00d70c:	47b2                	lw	a5,12(sp)
1c00d70e:	00164d83          	lbu	s11,1(a2)
1c00d712:	0609                	addi	a2,a2,2
1c00d714:	0007aa83          	lw	s5,0(a5)
1c00d718:	0791                	addi	a5,a5,4
1c00d71a:	c63e                	sw	a5,12(sp)
1c00d71c:	0c800793          	li	a5,200
1c00d720:	8957dde3          	bge	a5,s5,1c00cfba <pos_libc_prf+0x13c>
1c00d724:	5afd                	li	s5,-1
1c00d726:	b851                	j	1c00cfba <pos_libc_prf+0x13c>
1c00d728:	c65a                	sw	s6,12(sp)
1c00d72a:	4a05                	li	s4,1
1c00d72c:	02410913          	addi	s2,sp,36
1c00d730:	59fd                	li	s3,-1
1c00d732:	41240ab3          	sub	s5,s0,s2
1c00d736:	9a4a                	add	s4,s4,s2
1c00d738:	a029                	j	1c00d742 <pos_libc_prf+0x8c4>
1c00d73a:	012a8433          	add	s0,s5,s2
1c00d73e:	fb490963          	beq	s2,s4,1c00cef0 <pos_libc_prf+0x72>
1c00d742:	00094503          	lbu	a0,0(s2)
1c00d746:	85a6                	mv	a1,s1
1c00d748:	0905                	addi	s2,s2,1
1c00d74a:	9c82                	jalr	s9
1c00d74c:	ff3517e3          	bne	a0,s3,1c00d73a <pos_libc_prf+0x8bc>
1c00d750:	547d                	li	s0,-1
1c00d752:	fa6ff06f          	j	1c00cef8 <pos_libc_prf+0x7a>
1c00d756:	77e1                	lui	a5,0xffff8
1c00d758:	8307c793          	xori	a5,a5,-2000
1c00d75c:	02f11223          	sh	a5,36(sp)
1c00d760:	02610693          	addi	a3,sp,38
1c00d764:	bb95                	j	1c00d4d8 <pos_libc_prf+0x65a>
1c00d766:	1054                	addi	a3,sp,36
1c00d768:	b715                	j	1c00d68c <pos_libc_prf+0x80e>
1c00d76a:	5c605a63          	blez	t1,1c00dd3e <pos_libc_prf+0xec0>
1c00d76e:	006f09b3          	add	s3,t5,t1
1c00d772:	4541                	li	a0,16
1c00d774:	03000e13          	li	t3,48
1c00d778:	00279713          	slli	a4,a5,0x2
1c00d77c:	01e7d593          	srli	a1,a5,0x1e
1c00d780:	00289693          	slli	a3,a7,0x2
1c00d784:	00f70333          	add	t1,a4,a5
1c00d788:	8ecd                	or	a3,a3,a1
1c00d78a:	96c6                	add	a3,a3,a7
1c00d78c:	00e33733          	sltu	a4,t1,a4
1c00d790:	9736                	add	a4,a4,a3
1c00d792:	0706                	slli	a4,a4,0x1
1c00d794:	01f35693          	srli	a3,t1,0x1f
1c00d798:	8f55                	or	a4,a4,a3
1c00d79a:	01c75693          	srli	a3,a4,0x1c
1c00d79e:	03068693          	addi	a3,a3,48
1c00d7a2:	4ea05463          	blez	a0,1c00dc8a <pos_libc_prf+0xe0c>
1c00d7a6:	fed80fa3          	sb	a3,-1(a6)
1c00d7aa:	46d2                	lw	a3,20(sp)
1c00d7ac:	157d                	addi	a0,a0,-1
1c00d7ae:	00131793          	slli	a5,t1,0x1
1c00d7b2:	00d778b3          	and	a7,a4,a3
1c00d7b6:	4d099e63          	bne	s3,a6,1c00dc92 <pos_libc_prf+0xe14>
1c00d7ba:	4301                	li	t1,0
1c00d7bc:	4772                	lw	a4,28(sp)
1c00d7be:	01576bb3          	or	s7,a4,s5
1c00d7c2:	060b8863          	beqz	s7,1c00d832 <pos_libc_prf+0x9b4>
1c00d7c6:	02e00693          	li	a3,46
1c00d7ca:	00d98023          	sb	a3,0(s3)
1c00d7ce:	00198e93          	addi	t4,s3,1
1c00d7d2:	5c0a8763          	beqz	s5,1c00dda0 <pos_libc_prf+0xf22>
1c00d7d6:	001a8693          	addi	a3,s5,1
1c00d7da:	99b6                	add	s3,s3,a3
1c00d7dc:	8876                	mv	a6,t4
1c00d7de:	03000f13          	li	t5,48
1c00d7e2:	0805                	addi	a6,a6,1
1c00d7e4:	4a031963          	bnez	t1,1c00dc96 <pos_libc_prf+0xe18>
1c00d7e8:	00279713          	slli	a4,a5,0x2
1c00d7ec:	01e7d593          	srli	a1,a5,0x1e
1c00d7f0:	00289693          	slli	a3,a7,0x2
1c00d7f4:	00f70e33          	add	t3,a4,a5
1c00d7f8:	8ecd                	or	a3,a3,a1
1c00d7fa:	96c6                	add	a3,a3,a7
1c00d7fc:	00ee3733          	sltu	a4,t3,a4
1c00d800:	9736                	add	a4,a4,a3
1c00d802:	0706                	slli	a4,a4,0x1
1c00d804:	01fe5693          	srli	a3,t3,0x1f
1c00d808:	8f55                	or	a4,a4,a3
1c00d80a:	01c75593          	srli	a1,a4,0x1c
1c00d80e:	03000693          	li	a3,48
1c00d812:	00a05a63          	blez	a0,1c00d826 <pos_libc_prf+0x9a8>
1c00d816:	03058693          	addi	a3,a1,48
1c00d81a:	45d2                	lw	a1,20(sp)
1c00d81c:	157d                	addi	a0,a0,-1
1c00d81e:	001e1793          	slli	a5,t3,0x1
1c00d822:	00b778b3          	and	a7,a4,a1
1c00d826:	fed80fa3          	sb	a3,-1(a6)
1c00d82a:	fb099ce3          	bne	s3,a6,1c00d7e2 <pos_libc_prf+0x964>
1c00d82e:	015e89b3          	add	s3,t4,s5
1c00d832:	b0060ee3          	beqz	a2,1c00d34e <pos_libc_prf+0x4d0>
1c00d836:	03000613          	li	a2,48
1c00d83a:	fff9c783          	lbu	a5,-1(s3)
1c00d83e:	86ce                	mv	a3,s3
1c00d840:	19fd                	addi	s3,s3,-1
1c00d842:	fec78ce3          	beq	a5,a2,1c00d83a <pos_libc_prf+0x9bc>
1c00d846:	02e00613          	li	a2,46
1c00d84a:	aec78ce3          	beq	a5,a2,1c00d342 <pos_libc_prf+0x4c4>
1c00d84e:	89b6                	mv	s3,a3
1c00d850:	bccd                	j	1c00d342 <pos_libc_prf+0x4c4>
1c00d852:	fff88fa3          	sb	t6,-1(a7)
1c00d856:	ab1f11e3          	bne	t5,a7,1c00d2f8 <pos_libc_prf+0x47a>
1c00d85a:	99d6                	add	s3,s3,s5
1c00d85c:	b4cd                	j	1c00d33e <pos_libc_prf+0x4c0>
1c00d85e:	fd058713          	addi	a4,a1,-48
1c00d862:	47a5                	li	a5,9
1c00d864:	8dae                	mv	s11,a1
1c00d866:	4a81                	li	s5,0
1c00d868:	4525                	li	a0,9
1c00d86a:	00e7f463          	bgeu	a5,a4,1c00d872 <pos_libc_prf+0x9f4>
1c00d86e:	a199                	j	1c00dcb4 <pos_libc_prf+0xe36>
1c00d870:	0685                	addi	a3,a3,1
1c00d872:	002a9793          	slli	a5,s5,0x2
1c00d876:	97d6                	add	a5,a5,s5
1c00d878:	0786                	slli	a5,a5,0x1
1c00d87a:	97ee                	add	a5,a5,s11
1c00d87c:	0006cd83          	lbu	s11,0(a3)
1c00d880:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00d884:	8732                	mv	a4,a2
1c00d886:	fd0d8793          	addi	a5,s11,-48
1c00d88a:	8636                	mv	a2,a3
1c00d88c:	fef572e3          	bgeu	a0,a5,1c00d870 <pos_libc_prf+0x9f2>
1c00d890:	00270613          	addi	a2,a4,2
1c00d894:	b561                	j	1c00d71c <pos_libc_prf+0x89e>
1c00d896:	47b2                	lw	a5,12(sp)
1c00d898:	0007a303          	lw	t1,0(a5)
1c00d89c:	00478b13          	addi	s6,a5,4
1c00d8a0:	2e034263          	bltz	t1,1c00db84 <pos_libc_prf+0xd06>
1c00d8a4:	47a2                	lw	a5,8(sp)
1c00d8a6:	861a                	mv	a2,t1
1c00d8a8:	3c078663          	beqz	a5,1c00dc74 <pos_libc_prf+0xdf6>
1c00d8ac:	02b00793          	li	a5,43
1c00d8b0:	02f10223          	sb	a5,36(sp)
1c00d8b4:	02510693          	addi	a3,sp,37
1c00d8b8:	89b6                	mv	s3,a3
1c00d8ba:	4529                	li	a0,10
1c00d8bc:	48a5                	li	a7,9
1c00d8be:	02a67733          	remu	a4,a2,a0
1c00d8c2:	87ce                	mv	a5,s3
1c00d8c4:	0985                	addi	s3,s3,1
1c00d8c6:	85b2                	mv	a1,a2
1c00d8c8:	03070713          	addi	a4,a4,48
1c00d8cc:	fee98fa3          	sb	a4,-1(s3)
1c00d8d0:	02a65633          	divu	a2,a2,a0
1c00d8d4:	feb8e5e3          	bltu	a7,a1,1c00d8be <pos_libc_prf+0xa40>
1c00d8d8:	40d98633          	sub	a2,s3,a3
1c00d8dc:	01565c63          	bge	a2,s5,1c00d8f4 <pos_libc_prf+0xa76>
1c00d8e0:	03000593          	li	a1,48
1c00d8e4:	87ce                	mv	a5,s3
1c00d8e6:	0985                	addi	s3,s3,1
1c00d8e8:	40d98733          	sub	a4,s3,a3
1c00d8ec:	feb98fa3          	sb	a1,-1(s3)
1c00d8f0:	ff574ae3          	blt	a4,s5,1c00d8e4 <pos_libc_prf+0xa66>
1c00d8f4:	00098023          	sb	zero,0(s3)
1c00d8f8:	00f6fe63          	bgeu	a3,a5,1c00d914 <pos_libc_prf+0xa96>
1c00d8fc:	0006c603          	lbu	a2,0(a3)
1c00d900:	0007c703          	lbu	a4,0(a5)
1c00d904:	0685                	addi	a3,a3,1
1c00d906:	00c78023          	sb	a2,0(a5)
1c00d90a:	fee68fa3          	sb	a4,-1(a3)
1c00d90e:	17fd                	addi	a5,a5,-1
1c00d910:	fef6e6e3          	bltu	a3,a5,1c00d8fc <pos_libc_prf+0xa7e>
1c00d914:	4712                	lw	a4,4(sp)
1c00d916:	47a2                	lw	a5,8(sp)
1c00d918:	8fd9                	or	a5,a5,a4
1c00d91a:	ce3e                	sw	a5,28(sp)
1c00d91c:	1058                	addi	a4,sp,36
1c00d91e:	40e989b3          	sub	s3,s3,a4
1c00d922:	c40790e3          	bnez	a5,1c00d562 <pos_libc_prf+0x6e4>
1c00d926:	01f35793          	srli	a5,t1,0x1f
1c00d92a:	ce3e                	sw	a5,28(sp)
1c00d92c:	b91d                	j	1c00d562 <pos_libc_prf+0x6e4>
1c00d92e:	47b2                	lw	a5,12(sp)
1c00d930:	02610613          	addi	a2,sp,38
1c00d934:	4ea5                	li	t4,9
1c00d936:	438c                	lw	a1,0(a5)
1c00d938:	00478b13          	addi	s6,a5,4
1c00d93c:	77e1                	lui	a5,0xffff8
1c00d93e:	8307c793          	xori	a5,a5,-2000
1c00d942:	02f11223          	sh	a5,36(sp)
1c00d946:	4e3d                	li	t3,15
1c00d948:	87b2                	mv	a5,a2
1c00d94a:	a039                	j	1c00d958 <pos_libc_prf+0xada>
1c00d94c:	ff168fa3          	sb	a7,-1(a3)
1c00d950:	02be7663          	bgeu	t3,a1,1c00d97c <pos_libc_prf+0xafe>
1c00d954:	85c2                	mv	a1,a6
1c00d956:	87b6                	mv	a5,a3
1c00d958:	00f5f513          	andi	a0,a1,15
1c00d95c:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00d960:	05750893          	addi	a7,a0,87
1c00d964:	03050713          	addi	a4,a0,48
1c00d968:	0045d813          	srli	a6,a1,0x4
1c00d96c:	feaee0e3          	bltu	t4,a0,1c00d94c <pos_libc_prf+0xace>
1c00d970:	00e78023          	sb	a4,0(a5)
1c00d974:	00178693          	addi	a3,a5,1
1c00d978:	fcbe6ee3          	bltu	t3,a1,1c00d954 <pos_libc_prf+0xad6>
1c00d97c:	40c689b3          	sub	s3,a3,a2
1c00d980:	459d                	li	a1,7
1c00d982:	0135cc63          	blt	a1,s3,1c00d99a <pos_libc_prf+0xb1c>
1c00d986:	03000513          	li	a0,48
1c00d98a:	87b6                	mv	a5,a3
1c00d98c:	0685                	addi	a3,a3,1
1c00d98e:	40c689b3          	sub	s3,a3,a2
1c00d992:	fea68fa3          	sb	a0,-1(a3)
1c00d996:	ff35dae3          	bge	a1,s3,1c00d98a <pos_libc_prf+0xb0c>
1c00d99a:	00068023          	sb	zero,0(a3)
1c00d99e:	86b2                	mv	a3,a2
1c00d9a0:	00f67e63          	bgeu	a2,a5,1c00d9bc <pos_libc_prf+0xb3e>
1c00d9a4:	0006c603          	lbu	a2,0(a3)
1c00d9a8:	0007c703          	lbu	a4,0(a5)
1c00d9ac:	0685                	addi	a3,a3,1
1c00d9ae:	00c78023          	sb	a2,0(a5)
1c00d9b2:	fee68fa3          	sb	a4,-1(a3)
1c00d9b6:	17fd                	addi	a5,a5,-1
1c00d9b8:	fef6e6e3          	bltu	a3,a5,1c00d9a4 <pos_libc_prf+0xb26>
1c00d9bc:	57fd                	li	a5,-1
1c00d9be:	0989                	addi	s3,s3,2
1c00d9c0:	22fa8663          	beq	s5,a5,1c00dbec <pos_libc_prf+0xd6e>
1c00d9c4:	0c800793          	li	a5,200
1c00d9c8:	9f37cce3          	blt	a5,s3,1c00d3c0 <pos_libc_prf+0x542>
1c00d9cc:	02000913          	li	s2,32
1c00d9d0:	0b49d863          	bge	s3,s4,1c00da80 <pos_libc_prf+0xc02>
1c00d9d4:	00198613          	addi	a2,s3,1
1c00d9d8:	ce02                	sw	zero,28(sp)
1c00d9da:	bec1                	j	1c00d5aa <pos_libc_prf+0x72c>
1c00d9dc:	4732                	lw	a4,12(sp)
1c00d9de:	431c                	lw	a5,0(a4)
1c00d9e0:	0711                	addi	a4,a4,4
1c00d9e2:	c63a                	sw	a4,12(sp)
1c00d9e4:	c380                	sw	s0,0(a5)
1c00d9e6:	d0aff06f          	j	1c00cef0 <pos_libc_prf+0x72>
1c00d9ea:	47b2                	lw	a5,12(sp)
1c00d9ec:	4529                	li	a0,10
1c00d9ee:	48a5                	li	a7,9
1c00d9f0:	4390                	lw	a2,0(a5)
1c00d9f2:	00478b13          	addi	s6,a5,4
1c00d9f6:	105c                	addi	a5,sp,36
1c00d9f8:	02a67733          	remu	a4,a2,a0
1c00d9fc:	86be                	mv	a3,a5
1c00d9fe:	0785                	addi	a5,a5,1
1c00da00:	85b2                	mv	a1,a2
1c00da02:	03070713          	addi	a4,a4,48
1c00da06:	fee78fa3          	sb	a4,-1(a5)
1c00da0a:	02a65633          	divu	a2,a2,a0
1c00da0e:	feb8e5e3          	bltu	a7,a1,1c00d9f8 <pos_libc_prf+0xb7a>
1c00da12:	1058                	addi	a4,sp,36
1c00da14:	40e789b3          	sub	s3,a5,a4
1c00da18:	0159dd63          	bge	s3,s5,1c00da32 <pos_libc_prf+0xbb4>
1c00da1c:	03000613          	li	a2,48
1c00da20:	86be                	mv	a3,a5
1c00da22:	1058                	addi	a4,sp,36
1c00da24:	0785                	addi	a5,a5,1
1c00da26:	40e789b3          	sub	s3,a5,a4
1c00da2a:	fec78fa3          	sb	a2,-1(a5)
1c00da2e:	ff59c9e3          	blt	s3,s5,1c00da20 <pos_libc_prf+0xba2>
1c00da32:	00078023          	sb	zero,0(a5)
1c00da36:	105c                	addi	a5,sp,36
1c00da38:	00d7fe63          	bgeu	a5,a3,1c00da54 <pos_libc_prf+0xbd6>
1c00da3c:	0007c603          	lbu	a2,0(a5)
1c00da40:	0006c703          	lbu	a4,0(a3)
1c00da44:	0785                	addi	a5,a5,1
1c00da46:	00c68023          	sb	a2,0(a3)
1c00da4a:	fee78fa3          	sb	a4,-1(a5)
1c00da4e:	16fd                	addi	a3,a3,-1
1c00da50:	fed7e6e3          	bltu	a5,a3,1c00da3c <pos_libc_prf+0xbbe>
1c00da54:	57fd                	li	a5,-1
1c00da56:	c8fa9de3          	bne	s5,a5,1c00d6f0 <pos_libc_prf+0x872>
1c00da5a:	0c800793          	li	a5,200
1c00da5e:	9737c1e3          	blt	a5,s3,1c00d3c0 <pos_libc_prf+0x542>
1c00da62:	ce02                	sw	zero,28(sp)
1c00da64:	be01                	j	1c00d574 <pos_libc_prf+0x6f6>
1c00da66:	85a6                	mv	a1,s1
1c00da68:	02500513          	li	a0,37
1c00da6c:	9c82                	jalr	s9
1c00da6e:	57fd                	li	a5,-1
1c00da70:	c6f51f63          	bne	a0,a5,1c00ceee <pos_libc_prf+0x70>
1c00da74:	547d                	li	s0,-1
1c00da76:	c82ff06f          	j	1c00cef8 <pos_libc_prf+0x7a>
1c00da7a:	4401                	li	s0,0
1c00da7c:	c7cff06f          	j	1c00cef8 <pos_libc_prf+0x7a>
1c00da80:	8a4e                	mv	s4,s3
1c00da82:	c65a                	sw	s6,12(sp)
1c00da84:	b165                	j	1c00d72c <pos_libc_prf+0x8ae>
1c00da86:	0c800793          	li	a5,200
1c00da8a:	9337cbe3          	blt	a5,s3,1c00d3c0 <pos_libc_prf+0x542>
1c00da8e:	4785                	li	a5,1
1c00da90:	ce3e                	sw	a5,28(sp)
1c00da92:	b4cd                	j	1c00d574 <pos_libc_prf+0x6f6>
1c00da94:	104c                	addi	a1,sp,36
1c00da96:	413a09b3          	sub	s3,s4,s3
1c00da9a:	01358533          	add	a0,a1,s3
1c00da9e:	9faff0ef          	jal	ra,1c00cc98 <memmove>
1c00daa2:	02000793          	li	a5,32
1c00daa6:	24f90863          	beq	s2,a5,1c00dcf6 <pos_libc_prf+0xe78>
1c00daaa:	47f2                	lw	a5,28(sp)
1c00daac:	99be                	add	s3,s3,a5
1c00daae:	47f2                	lw	a5,28(sp)
1c00dab0:	b737d7e3          	bge	a5,s3,1c00d61e <pos_libc_prf+0x7a0>
1c00dab4:	4772                	lw	a4,28(sp)
1c00dab6:	4789                	li	a5,2
1c00dab8:	40e988b3          	sub	a7,s3,a4
1c00dabc:	fff88693          	addi	a3,a7,-1
1c00dac0:	06d7f063          	bgeu	a5,a3,1c00db20 <pos_libc_prf+0xca2>
1c00dac4:	47e2                	lw	a5,24(sp)
1c00dac6:	00891613          	slli	a2,s2,0x8
1c00daca:	ffc8f593          	andi	a1,a7,-4
1c00dace:	00f976b3          	and	a3,s2,a5
1c00dad2:	8ed1                	or	a3,a3,a2
1c00dad4:	01091793          	slli	a5,s2,0x10
1c00dad8:	8edd                	or	a3,a3,a5
1c00dada:	01891613          	slli	a2,s2,0x18
1c00dade:	8e55                	or	a2,a2,a3
1c00dae0:	105c                	addi	a5,sp,36
1c00dae2:	00865813          	srli	a6,a2,0x8
1c00dae6:	01065513          	srli	a0,a2,0x10
1c00daea:	97ba                	add	a5,a5,a4
1c00daec:	95be                	add	a1,a1,a5
1c00daee:	0306f693          	andi	a3,a3,48
1c00daf2:	8261                	srli	a2,a2,0x18
1c00daf4:	0ff87813          	andi	a6,a6,255
1c00daf8:	0ff57513          	andi	a0,a0,255
1c00dafc:	00d78023          	sb	a3,0(a5)
1c00db00:	010780a3          	sb	a6,1(a5)
1c00db04:	00a78123          	sb	a0,2(a5)
1c00db08:	00c781a3          	sb	a2,3(a5)
1c00db0c:	0791                	addi	a5,a5,4
1c00db0e:	fef597e3          	bne	a1,a5,1c00dafc <pos_libc_prf+0xc7e>
1c00db12:	4772                	lw	a4,28(sp)
1c00db14:	ffc8f793          	andi	a5,a7,-4
1c00db18:	973e                	add	a4,a4,a5
1c00db1a:	ce3a                	sw	a4,28(sp)
1c00db1c:	b11781e3          	beq	a5,a7,1c00d61e <pos_libc_prf+0x7a0>
1c00db20:	4772                	lw	a4,28(sp)
1c00db22:	199c                	addi	a5,sp,240
1c00db24:	97ba                	add	a5,a5,a4
1c00db26:	f3278a23          	sb	s2,-204(a5)
1c00db2a:	00170793          	addi	a5,a4,1
1c00db2e:	af37d8e3          	bge	a5,s3,1c00d61e <pos_libc_prf+0x7a0>
1c00db32:	1994                	addi	a3,sp,240
1c00db34:	97b6                	add	a5,a5,a3
1c00db36:	f3278a23          	sb	s2,-204(a5)
1c00db3a:	00270b93          	addi	s7,a4,2
1c00db3e:	af3bd0e3          	bge	s7,s3,1c00d61e <pos_libc_prf+0x7a0>
1c00db42:	9bb6                	add	s7,s7,a3
1c00db44:	f32b8a23          	sb	s2,-204(s7)
1c00db48:	c65a                	sw	s6,12(sp)
1c00db4a:	bcd9                	j	1c00d620 <pos_libc_prf+0x7a2>
1c00db4c:	01b98023          	sb	s11,0(s3)
1c00db50:	02b00613          	li	a2,43
1c00db54:	00035663          	bgez	t1,1c00db60 <pos_libc_prf+0xce2>
1c00db58:	40600333          	neg	t1,t1
1c00db5c:	02d00613          	li	a2,45
1c00db60:	47a9                	li	a5,10
1c00db62:	02f346b3          	div	a3,t1,a5
1c00db66:	00c980a3          	sb	a2,1(s3)
1c00db6a:	0991                	addi	s3,s3,4
1c00db6c:	02f367b3          	rem	a5,t1,a5
1c00db70:	03068693          	addi	a3,a3,48
1c00db74:	fed98f23          	sb	a3,-2(s3)
1c00db78:	03078793          	addi	a5,a5,48
1c00db7c:	fef98fa3          	sb	a5,-1(s3)
1c00db80:	fceff06f          	j	1c00d34e <pos_libc_prf+0x4d0>
1c00db84:	02d00793          	li	a5,45
1c00db88:	02f10223          	sb	a5,36(sp)
1c00db8c:	800007b7          	lui	a5,0x80000
1c00db90:	14f30e63          	beq	t1,a5,1c00dcec <pos_libc_prf+0xe6e>
1c00db94:	40600633          	neg	a2,t1
1c00db98:	02510693          	addi	a3,sp,37
1c00db9c:	bb31                	j	1c00d8b8 <pos_libc_prf+0xa3a>
1c00db9e:	4722                	lw	a4,8(sp)
1c00dba0:	10070d63          	beqz	a4,1c00dcba <pos_libc_prf+0xe3c>
1c00dba4:	02b00693          	li	a3,43
1c00dba8:	02d10223          	sb	a3,36(sp)
1c00dbac:	02510f13          	addi	t5,sp,37
1c00dbb0:	4301                	li	t1,0
1c00dbb2:	4801                	li	a6,0
1c00dbb4:	d9cff06f          	j	1c00d150 <pos_libc_prf+0x2d2>
1c00dbb8:	02414783          	lbu	a5,36(sp)
1c00dbbc:	98078ce3          	beqz	a5,1c00d554 <pos_libc_prf+0x6d6>
1c00dbc0:	1054                	addi	a3,sp,36
1c00dbc2:	45e5                	li	a1,25
1c00dbc4:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00dbc8:	f9f78793          	addi	a5,a5,-97
1c00dbcc:	0ff7f793          	andi	a5,a5,255
1c00dbd0:	00f5e963          	bltu	a1,a5,1c00dbe2 <pos_libc_prf+0xd64>
1c00dbd4:	0016c783          	lbu	a5,1(a3)
1c00dbd8:	00e68023          	sb	a4,0(a3)
1c00dbdc:	0685                	addi	a3,a3,1
1c00dbde:	f3fd                	bnez	a5,1c00dbc4 <pos_libc_prf+0xd46>
1c00dbe0:	ba95                	j	1c00d554 <pos_libc_prf+0x6d6>
1c00dbe2:	0016c783          	lbu	a5,1(a3)
1c00dbe6:	0685                	addi	a3,a3,1
1c00dbe8:	fff1                	bnez	a5,1c00dbc4 <pos_libc_prf+0xd46>
1c00dbea:	b2ad                	j	1c00d554 <pos_libc_prf+0x6d6>
1c00dbec:	0c800793          	li	a5,200
1c00dbf0:	df37d0e3          	bge	a5,s3,1c00d9d0 <pos_libc_prf+0xb52>
1c00dbf4:	547d                	li	s0,-1
1c00dbf6:	b02ff06f          	j	1c00cef8 <pos_libc_prf+0x7a>
1c00dbfa:	864e                	mv	a2,s3
1c00dbfc:	1048                	addi	a0,sp,36
1c00dbfe:	fc5fe0ef          	jal	ra,1c00cbc2 <memcpy>
1c00dc02:	b3f9                	j	1c00d9d0 <pos_libc_prf+0xb52>
1c00dc04:	47f2                	lw	a5,28(sp)
1c00dc06:	4601                	li	a2,0
1c00dc08:	e399                	bnez	a5,1c00dc0e <pos_libc_prf+0xd90>
1c00dc0a:	01503633          	snez	a2,s5
1c00dc0e:	57f5                	li	a5,-3
1c00dc10:	001a8813          	addi	a6,s5,1
1c00dc14:	00f34463          	blt	t1,a5,1c00dc1c <pos_libc_prf+0xd9e>
1c00dc18:	04685163          	bge	a6,t1,1c00dc5a <pos_libc_prf+0xddc>
1c00dc1c:	47c1                	li	a5,16
1c00dc1e:	0107d363          	bge	a5,a6,1c00dc24 <pos_libc_prf+0xda6>
1c00dc22:	4841                	li	a6,16
1c00dc24:	06700793          	li	a5,103
1c00dc28:	187d                	addi	a6,a6,-1
1c00dc2a:	02fd8363          	beq	s11,a5,1c00dc50 <pos_libc_prf+0xdd2>
1c00dc2e:	04500d93          	li	s11,69
1c00dc32:	d70ff06f          	j	1c00d1a2 <pos_libc_prf+0x324>
1c00dc36:	4a99                	li	s5,6
1c00dc38:	d4fd9563          	bne	s11,a5,1c00d182 <pos_libc_prf+0x304>
1c00dc3c:	4772                	lw	a4,28(sp)
1c00dc3e:	4605                	li	a2,1
1c00dc40:	57f5                	li	a5,-3
1c00dc42:	8e19                	sub	a2,a2,a4
1c00dc44:	00f34563          	blt	t1,a5,1c00dc4e <pos_libc_prf+0xdd0>
1c00dc48:	479d                	li	a5,7
1c00dc4a:	0067d863          	bge	a5,t1,1c00dc5a <pos_libc_prf+0xddc>
1c00dc4e:	4819                	li	a6,6
1c00dc50:	06500d93          	li	s11,101
1c00dc54:	d4eff06f          	j	1c00d1a2 <pos_libc_prf+0x324>
1c00dc58:	4601                	li	a2,0
1c00dc5a:	006a8833          	add	a6,s5,t1
1c00dc5e:	0b005b63          	blez	a6,1c00dd14 <pos_libc_prf+0xe96>
1c00dc62:	47c1                	li	a5,16
1c00dc64:	0107d363          	bge	a5,a6,1c00dc6a <pos_libc_prf+0xdec>
1c00dc68:	4841                	li	a6,16
1c00dc6a:	187d                	addi	a6,a6,-1
1c00dc6c:	06600d93          	li	s11,102
1c00dc70:	d32ff06f          	j	1c00d1a2 <pos_libc_prf+0x324>
1c00dc74:	4792                	lw	a5,4(sp)
1c00dc76:	1054                	addi	a3,sp,36
1c00dc78:	c40780e3          	beqz	a5,1c00d8b8 <pos_libc_prf+0xa3a>
1c00dc7c:	02000793          	li	a5,32
1c00dc80:	02f10223          	sb	a5,36(sp)
1c00dc84:	02510693          	addi	a3,sp,37
1c00dc88:	b905                	j	1c00d8b8 <pos_libc_prf+0xa3a>
1c00dc8a:	ffc80fa3          	sb	t3,-1(a6)
1c00dc8e:	b30986e3          	beq	s3,a6,1c00d7ba <pos_libc_prf+0x93c>
1c00dc92:	0805                	addi	a6,a6,1
1c00dc94:	b4d5                	j	1c00d778 <pos_libc_prf+0x8fa>
1c00dc96:	ffe80fa3          	sb	t5,-1(a6)
1c00dc9a:	0305                	addi	t1,t1,1
1c00dc9c:	b679                	j	1c00d82a <pos_libc_prf+0x9ac>
1c00dc9e:	020102a3          	sb	zero,37(sp)
1c00dca2:	57fd                	li	a5,-1
1c00dca4:	0cfa8263          	beq	s5,a5,1c00dd68 <pos_libc_prf+0xeea>
1c00dca8:	4785                	li	a5,1
1c00dcaa:	0b47c063          	blt	a5,s4,1c00dd4a <pos_libc_prf+0xecc>
1c00dcae:	4a72                	lw	s4,28(sp)
1c00dcb0:	c65a                	sw	s6,12(sp)
1c00dcb2:	bcad                	j	1c00d72c <pos_libc_prf+0x8ae>
1c00dcb4:	8636                	mv	a2,a3
1c00dcb6:	b04ff06f          	j	1c00cfba <pos_libc_prf+0x13c>
1c00dcba:	4712                	lw	a4,4(sp)
1c00dcbc:	c77d                	beqz	a4,1c00ddaa <pos_libc_prf+0xf2c>
1c00dcbe:	02000693          	li	a3,32
1c00dcc2:	02d10223          	sb	a3,36(sp)
1c00dcc6:	4301                	li	t1,0
1c00dcc8:	4801                	li	a6,0
1c00dcca:	02510f13          	addi	t5,sp,37
1c00dcce:	c82ff06f          	j	1c00d150 <pos_libc_prf+0x2d2>
1c00dcd2:	02d00693          	li	a3,45
1c00dcd6:	02d10223          	sb	a3,36(sp)
1c00dcda:	02510f13          	addi	t5,sp,37
1c00dcde:	b9cff06f          	j	1c00d07a <pos_libc_prf+0x1fc>
1c00dce2:	0c800613          	li	a2,200
1c00dce6:	960ad6e3          	bgez	s5,1c00d652 <pos_libc_prf+0x7d4>
1c00dcea:	bf09                	j	1c00dbfc <pos_libc_prf+0xd7e>
1c00dcec:	80000637          	lui	a2,0x80000
1c00dcf0:	02510693          	addi	a3,sp,37
1c00dcf4:	b6d1                	j	1c00d8b8 <pos_libc_prf+0xa3a>
1c00dcf6:	ce02                	sw	zero,28(sp)
1c00dcf8:	bb5d                	j	1c00daae <pos_libc_prf+0xc30>
1c00dcfa:	4712                	lw	a4,4(sp)
1c00dcfc:	02410f13          	addi	t5,sp,36
1c00dd00:	b6070d63          	beqz	a4,1c00d07a <pos_libc_prf+0x1fc>
1c00dd04:	02000693          	li	a3,32
1c00dd08:	02d10223          	sb	a3,36(sp)
1c00dd0c:	02510f13          	addi	t5,sp,37
1c00dd10:	b6aff06f          	j	1c00d07a <pos_libc_prf+0x1fc>
1c00dd14:	06600d93          	li	s11,102
1c00dd18:	4781                	li	a5,0
1c00dd1a:	080006b7          	lui	a3,0x8000
1c00dd1e:	ce8ff06f          	j	1c00d206 <pos_libc_prf+0x388>
1c00dd22:	06b6e363          	bltu	a3,a1,1c00dd88 <pos_libc_prf+0xf0a>
1c00dd26:	04e00693          	li	a3,78
1c00dd2a:	04100613          	li	a2,65
1c00dd2e:	00d78023          	sb	a3,0(a5)
1c00dd32:	00c780a3          	sb	a2,1(a5)
1c00dd36:	00d78123          	sb	a3,2(a5)
1c00dd3a:	f44ff06f          	j	1c00d47e <pos_libc_prf+0x600>
1c00dd3e:	03000693          	li	a3,48
1c00dd42:	00df0023          	sb	a3,0(t5)
1c00dd46:	4541                	li	a0,16
1c00dd48:	bc95                	j	1c00d7bc <pos_libc_prf+0x93e>
1c00dd4a:	4982                	lw	s3,0(sp)
1c00dd4c:	860992e3          	bnez	s3,1c00d5b0 <pos_libc_prf+0x732>
1c00dd50:	104c                	addi	a1,sp,36
1c00dd52:	fffa0993          	addi	s3,s4,-1
1c00dd56:	4609                	li	a2,2
1c00dd58:	01358533          	add	a0,a1,s3
1c00dd5c:	f3dfe0ef          	jal	ra,1c00cc98 <memmove>
1c00dd60:	02000913          	li	s2,32
1c00dd64:	ce02                	sw	zero,28(sp)
1c00dd66:	b3b9                	j	1c00dab4 <pos_libc_prf+0xc36>
1c00dd68:	49f2                	lw	s3,28(sp)
1c00dd6a:	b19d                	j	1c00d9d0 <pos_libc_prf+0xb52>
1c00dd6c:	06900693          	li	a3,105
1c00dd70:	00d78023          	sb	a3,0(a5)
1c00dd74:	06e00693          	li	a3,110
1c00dd78:	00d780a3          	sb	a3,1(a5)
1c00dd7c:	06600693          	li	a3,102
1c00dd80:	00d78123          	sb	a3,2(a5)
1c00dd84:	efaff06f          	j	1c00d47e <pos_libc_prf+0x600>
1c00dd88:	06e00693          	li	a3,110
1c00dd8c:	06100613          	li	a2,97
1c00dd90:	00d78023          	sb	a3,0(a5)
1c00dd94:	00c780a3          	sb	a2,1(a5)
1c00dd98:	00d78123          	sb	a3,2(a5)
1c00dd9c:	ee2ff06f          	j	1c00d47e <pos_libc_prf+0x600>
1c00dda0:	89f6                	mv	s3,t4
1c00dda2:	a8061ae3          	bnez	a2,1c00d836 <pos_libc_prf+0x9b8>
1c00dda6:	da8ff06f          	j	1c00d34e <pos_libc_prf+0x4d0>
1c00ddaa:	4301                	li	t1,0
1c00ddac:	4801                	li	a6,0
1c00ddae:	02410f13          	addi	t5,sp,36
1c00ddb2:	b9eff06f          	j	1c00d150 <pos_libc_prf+0x2d2>

1c00ddb6 <pos_init_start>:
1c00ddb6:	1141                	addi	sp,sp,-16
1c00ddb8:	c422                	sw	s0,8(sp)
1c00ddba:	1c000437          	lui	s0,0x1c000
1c00ddbe:	c606                	sw	ra,12(sp)
1c00ddc0:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00ddc4:	bc0fc0ef          	jal	ra,1c00a184 <pos_soc_init>
1c00ddc8:	2a75                	jal	1c00df84 <pos_irq_init>
1c00ddca:	22e5                	jal	1c00dfb2 <pos_soc_event_init>
1c00ddcc:	2225                	jal	1c00def4 <pos_allocs_init>
1c00ddce:	405c                	lw	a5,4(s0)
1c00ddd0:	c791                	beqz	a5,1c00dddc <pos_init_start+0x26>
1c00ddd2:	0411                	addi	s0,s0,4
1c00ddd4:	0411                	addi	s0,s0,4
1c00ddd6:	9782                	jalr	a5
1c00ddd8:	401c                	lw	a5,0(s0)
1c00ddda:	ffed                	bnez	a5,1c00ddd4 <pos_init_start+0x1e>
1c00dddc:	86cff0ef          	jal	ra,1c00ce48 <pos_io_start>
1c00dde0:	300467f3          	csrrsi	a5,mstatus,8
1c00dde4:	40b2                	lw	ra,12(sp)
1c00dde6:	4422                	lw	s0,8(sp)
1c00dde8:	0141                	addi	sp,sp,16
1c00ddea:	8082                	ret

1c00ddec <pos_init_stop>:
1c00ddec:	1141                	addi	sp,sp,-16
1c00ddee:	c422                	sw	s0,8(sp)
1c00ddf0:	1c000437          	lui	s0,0x1c000
1c00ddf4:	c606                	sw	ra,12(sp)
1c00ddf6:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00ddfa:	852ff0ef          	jal	ra,1c00ce4c <pos_io_stop>
1c00ddfe:	405c                	lw	a5,4(s0)
1c00de00:	c791                	beqz	a5,1c00de0c <pos_init_stop+0x20>
1c00de02:	0411                	addi	s0,s0,4
1c00de04:	0411                	addi	s0,s0,4
1c00de06:	9782                	jalr	a5
1c00de08:	401c                	lw	a5,0(s0)
1c00de0a:	ffed                	bnez	a5,1c00de04 <pos_init_stop+0x18>
1c00de0c:	40b2                	lw	ra,12(sp)
1c00de0e:	4422                	lw	s0,8(sp)
1c00de10:	0141                	addi	sp,sp,16
1c00de12:	8082                	ret

1c00de14 <pos_alloc_init>:
1c00de14:	00758793          	addi	a5,a1,7
1c00de18:	9be1                	andi	a5,a5,-8
1c00de1a:	40b785b3          	sub	a1,a5,a1
1c00de1e:	c11c                	sw	a5,0(a0)
1c00de20:	40b605b3          	sub	a1,a2,a1
1c00de24:	00b05663          	blez	a1,1c00de30 <pos_alloc_init+0x1c>
1c00de28:	99e1                	andi	a1,a1,-8
1c00de2a:	c38c                	sw	a1,0(a5)
1c00de2c:	0007a223          	sw	zero,4(a5)
1c00de30:	8082                	ret

1c00de32 <pos_alloc>:
1c00de32:	411c                	lw	a5,0(a0)
1c00de34:	00758713          	addi	a4,a1,7
1c00de38:	862a                	mv	a2,a0
1c00de3a:	ff877593          	andi	a1,a4,-8
1c00de3e:	4681                	li	a3,0
1c00de40:	e789                	bnez	a5,1c00de4a <pos_alloc+0x18>
1c00de42:	a091                	j	1c00de86 <pos_alloc+0x54>
1c00de44:	86be                	mv	a3,a5
1c00de46:	c505                	beqz	a0,1c00de6e <pos_alloc+0x3c>
1c00de48:	87aa                	mv	a5,a0
1c00de4a:	4398                	lw	a4,0(a5)
1c00de4c:	43c8                	lw	a0,4(a5)
1c00de4e:	feb74be3          	blt	a4,a1,1c00de44 <pos_alloc+0x12>
1c00de52:	00b70f63          	beq	a4,a1,1c00de70 <pos_alloc+0x3e>
1c00de56:	00b78833          	add	a6,a5,a1
1c00de5a:	8f0d                	sub	a4,a4,a1
1c00de5c:	00e82023          	sw	a4,0(a6)
1c00de60:	00a82223          	sw	a0,4(a6)
1c00de64:	ca91                	beqz	a3,1c00de78 <pos_alloc+0x46>
1c00de66:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00de6a:	853e                	mv	a0,a5
1c00de6c:	8082                	ret
1c00de6e:	8082                	ret
1c00de70:	ca81                	beqz	a3,1c00de80 <pos_alloc+0x4e>
1c00de72:	c2c8                	sw	a0,4(a3)
1c00de74:	853e                	mv	a0,a5
1c00de76:	8082                	ret
1c00de78:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00de7c:	853e                	mv	a0,a5
1c00de7e:	8082                	ret
1c00de80:	c208                	sw	a0,0(a2)
1c00de82:	853e                	mv	a0,a5
1c00de84:	8082                	ret
1c00de86:	4501                	li	a0,0
1c00de88:	8082                	ret

1c00de8a <pos_free>:
1c00de8a:	411c                	lw	a5,0(a0)
1c00de8c:	061d                	addi	a2,a2,7
1c00de8e:	9a61                	andi	a2,a2,-8
1c00de90:	c7a1                	beqz	a5,1c00ded8 <pos_free+0x4e>
1c00de92:	00b7e563          	bltu	a5,a1,1c00de9c <pos_free+0x12>
1c00de96:	a089                	j	1c00ded8 <pos_free+0x4e>
1c00de98:	00b7f563          	bgeu	a5,a1,1c00dea2 <pos_free+0x18>
1c00de9c:	873e                	mv	a4,a5
1c00de9e:	43dc                	lw	a5,4(a5)
1c00dea0:	ffe5                	bnez	a5,1c00de98 <pos_free+0xe>
1c00dea2:	00c586b3          	add	a3,a1,a2
1c00dea6:	00d78b63          	beq	a5,a3,1c00debc <pos_free+0x32>
1c00deaa:	c190                	sw	a2,0(a1)
1c00deac:	4314                	lw	a3,0(a4)
1c00deae:	c1dc                	sw	a5,4(a1)
1c00deb0:	00d70533          	add	a0,a4,a3
1c00deb4:	00a58e63          	beq	a1,a0,1c00ded0 <pos_free+0x46>
1c00deb8:	c34c                	sw	a1,4(a4)
1c00deba:	8082                	ret
1c00debc:	4394                	lw	a3,0(a5)
1c00debe:	43dc                	lw	a5,4(a5)
1c00dec0:	9636                	add	a2,a2,a3
1c00dec2:	c190                	sw	a2,0(a1)
1c00dec4:	4314                	lw	a3,0(a4)
1c00dec6:	c1dc                	sw	a5,4(a1)
1c00dec8:	00d70533          	add	a0,a4,a3
1c00decc:	fea596e3          	bne	a1,a0,1c00deb8 <pos_free+0x2e>
1c00ded0:	9636                	add	a2,a2,a3
1c00ded2:	c310                	sw	a2,0(a4)
1c00ded4:	c35c                	sw	a5,4(a4)
1c00ded6:	8082                	ret
1c00ded8:	00c58733          	add	a4,a1,a2
1c00dedc:	00e78663          	beq	a5,a4,1c00dee8 <pos_free+0x5e>
1c00dee0:	c1dc                	sw	a5,4(a1)
1c00dee2:	c190                	sw	a2,0(a1)
1c00dee4:	c10c                	sw	a1,0(a0)
1c00dee6:	8082                	ret
1c00dee8:	4398                	lw	a4,0(a5)
1c00deea:	43dc                	lw	a5,4(a5)
1c00deec:	963a                	add	a2,a2,a4
1c00deee:	c1dc                	sw	a5,4(a1)
1c00def0:	c190                	sw	a2,0(a1)
1c00def2:	bfcd                	j	1c00dee4 <pos_free+0x5a>

1c00def4 <pos_allocs_init>:
1c00def4:	1c0065b7          	lui	a1,0x1c006
1c00def8:	1141                	addi	sp,sp,-16
1c00defa:	28458613          	addi	a2,a1,644 # 1c006284 <__l2_priv0_end>
1c00defe:	1c0087b7          	lui	a5,0x1c008
1c00df02:	c606                	sw	ra,12(sp)
1c00df04:	28458593          	addi	a1,a1,644
1c00df08:	40c78633          	sub	a2,a5,a2
1c00df0c:	04f5d863          	bge	a1,a5,1c00df5c <pos_allocs_init+0x68>
1c00df10:	1c006537          	lui	a0,0x1c006
1c00df14:	27850513          	addi	a0,a0,632 # 1c006278 <pos_alloc_l2>
1c00df18:	3df5                	jal	1c00de14 <pos_alloc_init>
1c00df1a:	1c00e5b7          	lui	a1,0x1c00e
1c00df1e:	fcc58613          	addi	a2,a1,-52 # 1c00dfcc <__l2_priv1_end>
1c00df22:	1c0107b7          	lui	a5,0x1c010
1c00df26:	fcc58593          	addi	a1,a1,-52
1c00df2a:	40c78633          	sub	a2,a5,a2
1c00df2e:	02f5da63          	bge	a1,a5,1c00df62 <pos_allocs_init+0x6e>
1c00df32:	1c006537          	lui	a0,0x1c006
1c00df36:	27c50513          	addi	a0,a0,636 # 1c00627c <pos_alloc_l2+0x4>
1c00df3a:	3de9                	jal	1c00de14 <pos_alloc_init>
1c00df3c:	40b2                	lw	ra,12(sp)
1c00df3e:	1c0105b7          	lui	a1,0x1c010
1c00df42:	00058793          	mv	a5,a1
1c00df46:	1c080637          	lui	a2,0x1c080
1c00df4a:	1c006537          	lui	a0,0x1c006
1c00df4e:	8e1d                	sub	a2,a2,a5
1c00df50:	00058593          	mv	a1,a1
1c00df54:	28050513          	addi	a0,a0,640 # 1c006280 <pos_alloc_l2+0x8>
1c00df58:	0141                	addi	sp,sp,16
1c00df5a:	bd6d                	j	1c00de14 <pos_alloc_init>
1c00df5c:	4581                	li	a1,0
1c00df5e:	4601                	li	a2,0
1c00df60:	bf45                	j	1c00df10 <pos_allocs_init+0x1c>
1c00df62:	4581                	li	a1,0
1c00df64:	4601                	li	a2,0
1c00df66:	b7f1                	j	1c00df32 <pos_allocs_init+0x3e>

1c00df68 <pi_l2_malloc>:
1c00df68:	85aa                	mv	a1,a0
1c00df6a:	1c006537          	lui	a0,0x1c006
1c00df6e:	27850513          	addi	a0,a0,632 # 1c006278 <pos_alloc_l2>
1c00df72:	b5c1                	j	1c00de32 <pos_alloc>

1c00df74 <pi_l2_free>:
1c00df74:	862e                	mv	a2,a1
1c00df76:	85aa                	mv	a1,a0
1c00df78:	1c006537          	lui	a0,0x1c006
1c00df7c:	27850513          	addi	a0,a0,632 # 1c006278 <pos_alloc_l2>
1c00df80:	b729                	j	1c00de8a <pos_free>

1c00df82 <__rt_handle_illegal_instr>:
1c00df82:	8082                	ret

1c00df84 <pos_irq_init>:
1c00df84:	1a10a737          	lui	a4,0x1a10a
1c00df88:	56fd                	li	a3,-1
1c00df8a:	f14027f3          	csrr	a5,mhartid
1c00df8e:	8795                	srai	a5,a5,0x5
1c00df90:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00df94:	03f7f793          	andi	a5,a5,63
1c00df98:	477d                	li	a4,31
1c00df9a:	00e78363          	beq	a5,a4,1c00dfa0 <pos_irq_init+0x1c>
1c00df9e:	8082                	ret
1c00dfa0:	1c0087b7          	lui	a5,0x1c008
1c00dfa4:	00078793          	mv	a5,a5
1c00dfa8:	0017e793          	ori	a5,a5,1
1c00dfac:	30579073          	csrw	mtvec,a5
1c00dfb0:	8082                	ret

1c00dfb2 <pos_soc_event_init>:
1c00dfb2:	1a1067b7          	lui	a5,0x1a106
1c00dfb6:	577d                	li	a4,-1
1c00dfb8:	c3d8                	sw	a4,4(a5)
1c00dfba:	c798                	sw	a4,8(a5)
1c00dfbc:	c7d8                	sw	a4,12(a5)
1c00dfbe:	cb98                	sw	a4,16(a5)
1c00dfc0:	cbd8                	sw	a4,20(a5)
1c00dfc2:	cf98                	sw	a4,24(a5)
1c00dfc4:	cfd8                	sw	a4,28(a5)
1c00dfc6:	d398                	sw	a4,32(a5)
1c00dfc8:	8082                	ret

1c00dfca <_endtext>:
	...
