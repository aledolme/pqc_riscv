riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber512/dec/build/dec/dec

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber512/dec/build/dec/dec:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	5910506f          	j	1c00dd90 <__rt_handle_illegal_instr>
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
1c008084:	50d0506f          	j	1c00dd90 <__rt_handle_illegal_instr>

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
1c0080cc:	1bc30313          	addi	t1,t1,444 # 1c006284 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	18610113          	addi	sp,sp,390 # 1c006260 <stack>
1c0080e2:	2f3050ef          	jal	ra,1c00dbd4 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	30f050ef          	jal	ra,1c00dc0a <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	327040ef          	jal	ra,1c00cc28 <exit>

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
1c008146:	207b67b7          	lui	a5,0x207b6
1c00814a:	7e112623          	sw	ra,2028(sp)
1c00814e:	7e812423          	sw	s0,2024(sp)
1c008152:	7e912223          	sw	s1,2020(sp)
1c008156:	7f212023          	sw	s2,2016(sp)
1c00815a:	7d312e23          	sw	s3,2012(sp)
1c00815e:	28a78793          	addi	a5,a5,650 # 207b628a <__l2_shared_end+0x47a628a>
1c008162:	7145                	addi	sp,sp,-464
1c008164:	d03e                	sw	a5,32(sp)
1c008166:	9d8d37b7          	lui	a5,0x9d8d3
1c00816a:	17e1                	addi	a5,a5,-8
1c00816c:	d23e                	sw	a5,36(sp)
1c00816e:	485197b7          	lui	a5,0x48519
1c008172:	17278793          	addi	a5,a5,370 # 48519172 <__l2_shared_end+0x2c509172>
1c008176:	d43e                	sw	a5,40(sp)
1c008178:	a12a77b7          	lui	a5,0xa12a7
1c00817c:	d4478793          	addi	a5,a5,-700 # a12a6d44 <pulp__FC+0xa12a6d45>
1c008180:	d63e                	sw	a5,44(sp)
1c008182:	ec3c57b7          	lui	a5,0xec3c5
1c008186:	3e278793          	addi	a5,a5,994 # ec3c53e2 <pulp__FC+0xec3c53e3>
1c00818a:	d83e                	sw	a5,48(sp)
1c00818c:	9ff9f7b7          	lui	a5,0x9ff9f
1c008190:	c9378793          	addi	a5,a5,-877 # 9ff9ec93 <pulp__FC+0x9ff9ec94>
1c008194:	da3e                	sw	a5,52(sp)
1c008196:	c5c7d7b7          	lui	a5,0xc5c7d
1c00819a:	1f978793          	addi	a5,a5,505 # c5c7d1f9 <pulp__FC+0xc5c7d1fa>
1c00819e:	dc3e                	sw	a5,56(sp)
1c0081a0:	5b1117b7          	lui	a5,0x5b111
1c0081a4:	a9c78793          	addi	a5,a5,-1380 # 5b110a9c <__l2_shared_end+0x3f100a9c>
1c0081a8:	de3e                	sw	a5,60(sp)
1c0081aa:	63cdf7b7          	lui	a5,0x63cdf
1c0081ae:	cd678793          	addi	a5,a5,-810 # 63cdecd6 <__l2_shared_end+0x47ccecd6>
1c0081b2:	34f12023          	sw	a5,832(sp)
1c0081b6:	d81957b7          	lui	a5,0xd8195
1c0081ba:	f5a78793          	addi	a5,a5,-166 # d8194f5a <pulp__FC+0xd8194f5b>
1c0081be:	34f12223          	sw	a5,836(sp)
1c0081c2:	9cbc57b7          	lui	a5,0x9cbc5
1c0081c6:	60278793          	addi	a5,a5,1538 # 9cbc5602 <pulp__FC+0x9cbc5603>
1c0081ca:	34f12423          	sw	a5,840(sp)
1c0081ce:	eb3dc7b7          	lui	a5,0xeb3dc
1c0081d2:	2a378793          	addi	a5,a5,675 # eb3dc2a3 <pulp__FC+0xeb3dc2a4>
1c0081d6:	34f12623          	sw	a5,844(sp)
1c0081da:	162e47b7          	lui	a5,0x162e4
1c0081de:	e7878793          	addi	a5,a5,-392 # 162e3e78 <__CTOR_LIST__-0x5d1c18c>
1c0081e2:	34f12823          	sw	a5,848(sp)
1c0081e6:	51a187b7          	lui	a5,0x51a18
1c0081ea:	e9378793          	addi	a5,a5,-365 # 51a17e93 <__l2_shared_end+0x35a07e93>
1c0081ee:	34f12a23          	sw	a5,852(sp)
1c0081f2:	8d6437b7          	lui	a5,0x8d643
1c0081f6:	6e178793          	addi	a5,a5,1761 # 8d6436e1 <pulp__FC+0x8d6436e2>
1c0081fa:	34f12c23          	sw	a5,856(sp)
1c0081fe:	73a1d7b7          	lui	a5,0x73a1d
1c008202:	fb478793          	addi	a5,a5,-76 # 73a1cfb4 <__l2_shared_end+0x57a0cfb4>
1c008206:	34f12e23          	sw	a5,860(sp)
1c00820a:	2b5527b7          	lui	a5,0x2b552
1c00820e:	8c678793          	addi	a5,a5,-1850 # 2b5518c6 <__l2_shared_end+0xf5418c6>
1c008212:	36f12023          	sw	a5,864(sp)
1c008216:	e31c27b7          	lui	a5,0xe31c2
1c00821a:	25778793          	addi	a5,a5,599 # e31c2257 <pulp__FC+0xe31c2258>
1c00821e:	36f12223          	sw	a5,868(sp)
1c008222:	d04437b7          	lui	a5,0xd0443
1c008226:	2e478793          	addi	a5,a5,740 # d04432e4 <pulp__FC+0xd04432e5>
1c00822a:	36f12423          	sw	a5,872(sp)
1c00822e:	7ac7f7b7          	lui	a5,0x7ac7f
1c008232:	57878793          	addi	a5,a5,1400 # 7ac7f578 <__l2_shared_end+0x5ec6f578>
1c008236:	36f12623          	sw	a5,876(sp)
1c00823a:	7ba2b7b7          	lui	a5,0x7ba2b
1c00823e:	14778793          	addi	a5,a5,327 # 7ba2b147 <__l2_shared_end+0x5fa1b147>
1c008242:	36f12823          	sw	a5,880(sp)
1c008246:	fc7ac7b7          	lui	a5,0xfc7ac
1c00824a:	c2378793          	addi	a5,a5,-989 # fc7abc23 <pulp__FC+0xfc7abc24>
1c00824e:	36f12a23          	sw	a5,884(sp)
1c008252:	917917b7          	lui	a5,0x91791
1c008256:	a2b78793          	addi	a5,a5,-1493 # 91790a2b <pulp__FC+0x91790a2c>
1c00825a:	36f12c23          	sw	a5,888(sp)
1c00825e:	8e0a67b7          	lui	a5,0x8e0a6
1c008262:	acf78793          	addi	a5,a5,-1329 # 8e0a5acf <pulp__FC+0x8e0a5ad0>
1c008266:	36f12e23          	sw	a5,892(sp)
1c00826a:	9cbd37b7          	lui	a5,0x9cbd3
1c00826e:	c7178793          	addi	a5,a5,-911 # 9cbd2c71 <pulp__FC+0x9cbd2c72>
1c008272:	38f12023          	sw	a5,896(sp)
1c008276:	0a2547b7          	lui	a5,0xa254
1c00827a:	12f78793          	addi	a5,a5,303 # a25412f <__CTOR_LIST__-0x11dabed5>
1c00827e:	38f12223          	sw	a5,900(sp)
1c008282:	ac7cf7b7          	lui	a5,0xac7cf
1c008286:	b6b78793          	addi	a5,a5,-1173 # ac7ceb6b <pulp__FC+0xac7ceb6c>
1c00828a:	38f12423          	sw	a5,904(sp)
1c00828e:	2be4c7b7          	lui	a5,0x2be4c
1c008292:	03b78793          	addi	a5,a5,59 # 2be4c03b <__l2_shared_end+0xfe3c03b>
1c008296:	38f12623          	sw	a5,908(sp)
1c00829a:	51f347b7          	lui	a5,0x51f34
1c00829e:	6b478793          	addi	a5,a5,1716 # 51f346b4 <__l2_shared_end+0x35f246b4>
1c0082a2:	38f12823          	sw	a5,912(sp)
1c0082a6:	9b3697b7          	lui	a5,0x9b369
1c0082aa:	a1f78793          	addi	a5,a5,-1505 # 9b368a1f <pulp__FC+0x9b368a20>
1c0082ae:	38f12a23          	sw	a5,916(sp)
1c0082b2:	44ba87b7          	lui	a5,0x44ba8
1c0082b6:	26078793          	addi	a5,a5,608 # 44ba8260 <__l2_shared_end+0x28b98260>
1c0082ba:	38f12c23          	sw	a5,920(sp)
1c0082be:	ca5c37b7          	lui	a5,0xca5c3
1c0082c2:	07778793          	addi	a5,a5,119 # ca5c3077 <pulp__FC+0xca5c3078>
1c0082c6:	38f12e23          	sw	a5,924(sp)
1c0082ca:	bc64a7b7          	lui	a5,0xbc64a
1c0082ce:	8ad78793          	addi	a5,a5,-1875 # bc6498ad <pulp__FC+0xbc6498ae>
1c0082d2:	3af12023          	sw	a5,928(sp)
1c0082d6:	a61557b7          	lui	a5,0xa6155
1c0082da:	a3a78793          	addi	a5,a5,-1478 # a6154a3a <pulp__FC+0xa6154a3b>
1c0082de:	3af12223          	sw	a5,932(sp)
1c0082e2:	364457b7          	lui	a5,0x36445
1c0082e6:	64978793          	addi	a5,a5,1609 # 36445649 <__l2_shared_end+0x1a435649>
1c0082ea:	3af12423          	sw	a5,936(sp)
1c0082ee:	59a437b7          	lui	a5,0x59a43
1c0082f2:	88078793          	addi	a5,a5,-1920 # 59a42880 <__l2_shared_end+0x3da32880>
1c0082f6:	3af12623          	sw	a5,940(sp)
1c0082fa:	b28ca7b7          	lui	a5,0xb28ca
1c0082fe:	77b78793          	addi	a5,a5,1915 # b28ca77b <pulp__FC+0xb28ca77c>
1c008302:	3af12823          	sw	a5,944(sp)
1c008306:	43e687b7          	lui	a5,0x43e68
1c00830a:	67a78793          	addi	a5,a5,1658 # 43e6867a <__l2_shared_end+0x27e5867a>
1c00830e:	3af12a23          	sw	a5,948(sp)
1c008312:	270f97b7          	lui	a5,0x270f9
1c008316:	93378793          	addi	a5,a5,-1741 # 270f8933 <__l2_shared_end+0xb0e8933>
1c00831a:	3af12c23          	sw	a5,952(sp)
1c00831e:	2a20b7b7          	lui	a5,0x2a20b
1c008322:	88378793          	addi	a5,a5,-1917 # 2a20a883 <__l2_shared_end+0xe1fa883>
1c008326:	3af12e23          	sw	a5,956(sp)
1c00832a:	b118a7b7          	lui	a5,0xb118a
1c00832e:	03f78793          	addi	a5,a5,63 # b118a03f <pulp__FC+0xb118a040>
1c008332:	3cf12023          	sw	a5,960(sp)
1c008336:	c4cbd7b7          	lui	a5,0xc4cbd
1c00833a:	10078793          	addi	a5,a5,256 # c4cbd100 <pulp__FC+0xc4cbd101>
1c00833e:	3cf12223          	sw	a5,964(sp)
1c008342:	6ae127b7          	lui	a5,0x6ae12
1c008346:	29678793          	addi	a5,a5,662 # 6ae12296 <__l2_shared_end+0x4ee02296>
1c00834a:	3cf12423          	sw	a5,968(sp)
1c00834e:	1d6897b7          	lui	a5,0x1d689
1c008352:	a8178793          	addi	a5,a5,-1407 # 1d688a81 <__l2_shared_end+0x1678a81>
1c008356:	3cf12623          	sw	a5,972(sp)
1c00835a:	4f9637b7          	lui	a5,0x4f963
1c00835e:	a2478793          	addi	a5,a5,-1500 # 4f962a24 <__l2_shared_end+0x33952a24>
1c008362:	3cf12823          	sw	a5,976(sp)
1c008366:	639b87b7          	lui	a5,0x639b8
1c00836a:	5f878793          	addi	a5,a5,1528 # 639b85f8 <__l2_shared_end+0x479a85f8>
1c00836e:	3cf12a23          	sw	a5,980(sp)
1c008372:	47a067b7          	lui	a5,0x47a06
1c008376:	97b78793          	addi	a5,a5,-1669 # 47a0597b <__l2_shared_end+0x2b9f597b>
1c00837a:	3cf12c23          	sw	a5,984(sp)
1c00837e:	d5cc17b7          	lui	a5,0xd5cc1
1c008382:	cf478793          	addi	a5,a5,-780 # d5cc0cf4 <pulp__FC+0xd5cc0cf5>
1c008386:	3cf12e23          	sw	a5,988(sp)
1c00838a:	c07067b7          	lui	a5,0xc0706
1c00838e:	7d678793          	addi	a5,a5,2006 # c07067d6 <pulp__FC+0xc07067d7>
1c008392:	3ef12023          	sw	a5,992(sp)
1c008396:	c2b2b7b7          	lui	a5,0xc2b2b
1c00839a:	28f78793          	addi	a5,a5,655 # c2b2b28f <pulp__FC+0xc2b2b290>
1c00839e:	3ef12223          	sw	a5,996(sp)
1c0083a2:	6c8c57b7          	lui	a5,0x6c8c5
1c0083a6:	3eb78793          	addi	a5,a5,1003 # 6c8c53eb <__l2_shared_end+0x508b53eb>
1c0083aa:	3ef12423          	sw	a5,1000(sp)
1c0083ae:	92b737b7          	lui	a5,0x92b73
1c0083b2:	0d278793          	addi	a5,a5,210 # 92b730d2 <pulp__FC+0x92b730d3>
1c0083b6:	3ef12623          	sw	a5,1004(sp)
1c0083ba:	ace497b7          	lui	a5,0xace49
1c0083be:	e4478793          	addi	a5,a5,-444 # ace48e44 <pulp__FC+0xace48e45>
1c0083c2:	3ef12823          	sw	a5,1008(sp)
1c0083c6:	ffc7c7b7          	lui	a5,0xffc7c
1c0083ca:	bbe78793          	addi	a5,a5,-1090 # ffc7bbbe <pulp__FC+0xffc7bbbf>
1c0083ce:	3ef12a23          	sw	a5,1012(sp)
1c0083d2:	b298a7b7          	lui	a5,0xb298a
1c0083d6:	75778793          	addi	a5,a5,1879 # b298a757 <pulp__FC+0xb298a758>
1c0083da:	3ef12c23          	sw	a5,1016(sp)
1c0083de:	c896b7b7          	lui	a5,0xc896b
1c0083e2:	59678793          	addi	a5,a5,1430 # c896b596 <pulp__FC+0xc896b597>
1c0083e6:	3ef12e23          	sw	a5,1020(sp)
1c0083ea:	6057f7b7          	lui	a5,0x6057f
1c0083ee:	85878793          	addi	a5,a5,-1960 # 6057e858 <__l2_shared_end+0x4456e858>
1c0083f2:	40f12023          	sw	a5,1024(sp)
1c0083f6:	b08e77b7          	lui	a5,0xb08e7
1c0083fa:	ef978793          	addi	a5,a5,-263 # b08e6ef9 <pulp__FC+0xb08e6efa>
1c0083fe:	40f12223          	sw	a5,1028(sp)
1c008402:	0c38c7b7          	lui	a5,0xc38c
1c008406:	1ca78793          	addi	a5,a5,458 # c38c1ca <__CTOR_LIST__-0xfc73e3a>
1c00840a:	40f12423          	sw	a5,1032(sp)
1c00840e:	4d0227b7          	lui	a5,0x4d022
1c008412:	0fa78793          	addi	a5,a5,250 # 4d0220fa <__l2_shared_end+0x310120fa>
1c008416:	40f12623          	sw	a5,1036(sp)
1c00841a:	c456b7b7          	lui	a5,0xc456b
1c00841e:	a4a78793          	addi	a5,a5,-1462 # c456aa4a <pulp__FC+0xc456aa4b>
1c008422:	40f12823          	sw	a5,1040(sp)
1c008426:	76e437b7          	lui	a5,0x76e43
1c00842a:	18078793          	addi	a5,a5,384 # 76e43180 <__l2_shared_end+0x5ae33180>
1c00842e:	40f12a23          	sw	a5,1044(sp)
1c008432:	d944c7b7          	lui	a5,0xd944c
1c008436:	57f78793          	addi	a5,a5,1407 # d944c57f <pulp__FC+0xd944c580>
1c00843a:	40f12c23          	sw	a5,1048(sp)
1c00843e:	132da7b7          	lui	a5,0x132da
1c008442:	78278793          	addi	a5,a5,1922 # 132da782 <__CTOR_LIST__-0x8d25882>
1c008446:	40f12e23          	sw	a5,1052(sp)
1c00844a:	4dc257b7          	lui	a5,0x4dc25
1c00844e:	65f78793          	addi	a5,a5,1631 # 4dc2565f <__l2_shared_end+0x31c1565f>
1c008452:	42f12023          	sw	a5,1056(sp)
1c008456:	da7f17b7          	lui	a5,0xda7f1
1c00845a:	55e78793          	addi	a5,a5,1374 # da7f155e <pulp__FC+0xda7f155f>
1c00845e:	42f12223          	sw	a5,1060(sp)
1c008462:	c31047b7          	lui	a5,0xc3104
1c008466:	0e278793          	addi	a5,a5,226 # c31040e2 <pulp__FC+0xc31040e3>
1c00846a:	42f12423          	sw	a5,1064(sp)
1c00846e:	6ac2a7b7          	lui	a5,0x6ac2a
1c008472:	6b878793          	addi	a5,a5,1720 # 6ac2a6b8 <__l2_shared_end+0x4ec1a6b8>
1c008476:	42f12623          	sw	a5,1068(sp)
1c00847a:	e81387b7          	lui	a5,0xe8138
1c00847e:	72f78793          	addi	a5,a5,1839 # e813872f <pulp__FC+0xe8138730>
1c008482:	42f12823          	sw	a5,1072(sp)
1c008486:	38f117b7          	lui	a5,0x38f11
1c00848a:	12778793          	addi	a5,a5,295 # 38f11127 <__l2_shared_end+0x1cf01127>
1c00848e:	42f12a23          	sw	a5,1076(sp)
1c008492:	a2f497b7          	lui	a5,0xa2f49
1c008496:	e0d78793          	addi	a5,a5,-499 # a2f48e0d <pulp__FC+0xa2f48e0e>
1c00849a:	42f12da3          	sw	a5,1083(sp)
1c00849e:	211677b7          	lui	a5,0x21167
1c0084a2:	b6778793          	addi	a5,a5,-1177 # 21166b67 <__l2_shared_end+0x5156b67>
1c0084a6:	42f12fa3          	sw	a5,1087(sp)
1c0084aa:	56c947b7          	lui	a5,0x56c94
1c0084ae:	8fb78793          	addi	a5,a5,-1797 # 56c938fb <__l2_shared_end+0x3ac838fb>
1c0084b2:	44f121a3          	sw	a5,1091(sp)
1c0084b6:	9c2517b7          	lui	a5,0x9c251
1c0084ba:	25578793          	addi	a5,a5,597 # 9c251255 <pulp__FC+0x9c251256>
1c0084be:	44f123a3          	sw	a5,1095(sp)
1c0084c2:	4fa5a7b7          	lui	a5,0x4fa5a
1c0084c6:	c6d78793          	addi	a5,a5,-915 # 4fa59c6d <__l2_shared_end+0x33a49c6d>
1c0084ca:	44f125a3          	sw	a5,1099(sp)
1c0084ce:	4b5fd7b7          	lui	a5,0x4b5fd
1c0084d2:	f6478793          	addi	a5,a5,-156 # 4b5fcf64 <__l2_shared_end+0x2f5ecf64>
1c0084d6:	44f127a3          	sw	a5,1103(sp)
1c0084da:	01eb67b7          	lui	a5,0x1eb6
1c0084de:	07a1                	addi	a5,a5,8
1c0084e0:	44f129a3          	sw	a5,1107(sp)
1c0084e4:	00a6b7b7          	lui	a5,0xa6b
1c0084e8:	c6c78793          	addi	a5,a5,-916 # a6ac6c <__CTOR_LIST__-0x1b595398>
1c0084ec:	44f12ba3          	sw	a5,1111(sp)
1c0084f0:	589eb7b7          	lui	a5,0x589eb
1c0084f4:	77d78793          	addi	a5,a5,1917 # 589eb77d <__l2_shared_end+0x3c9db77d>
1c0084f8:	44f12da3          	sw	a5,1115(sp)
1c0084fc:	87dae7b7          	lui	a5,0x87dae
1c008500:	99078793          	addi	a5,a5,-1648 # 87dad990 <pulp__FC+0x87dad991>
1c008504:	44f12fa3          	sw	a5,1119(sp)
1c008508:	c50bf7b7          	lui	a5,0xc50bf
1c00850c:	34b78793          	addi	a5,a5,843 # c50bf34b <pulp__FC+0xc50bf34c>
1c008510:	46f121a3          	sw	a5,1123(sp)
1c008514:	e13dc7b7          	lui	a5,0xe13dc
1c008518:	a3b78793          	addi	a5,a5,-1477 # e13dba3b <pulp__FC+0xe13dba3c>
1c00851c:	46f123a3          	sw	a5,1127(sp)
1c008520:	c548d7b7          	lui	a5,0xc548d
1c008524:	f7e78793          	addi	a5,a5,-130 # c548cf7e <pulp__FC+0xc548cf7f>
1c008528:	46f125a3          	sw	a5,1131(sp)
1c00852c:	e928d7b7          	lui	a5,0xe928d
1c008530:	02d78793          	addi	a5,a5,45 # e928d02d <pulp__FC+0xe928d02e>
1c008534:	46f127a3          	sw	a5,1135(sp)
1c008538:	d7edb7b7          	lui	a5,0xd7edb
1c00853c:	42b78793          	addi	a5,a5,1067 # d7edb42b <pulp__FC+0xd7edb42c>
1c008540:	46f129a3          	sw	a5,1139(sp)
1c008544:	52b9c7b7          	lui	a5,0x52b9c
1c008548:	15e78793          	addi	a5,a5,350 # 52b9c15e <__l2_shared_end+0x36b8c15e>
1c00854c:	46f12ba3          	sw	a5,1143(sp)
1c008550:	e196d7b7          	lui	a5,0xe196d
1c008554:	5fe78793          	addi	a5,a5,1534 # e196d5fe <pulp__FC+0xe196d5ff>
1c008558:	46f12da3          	sw	a5,1147(sp)
1c00855c:	b30717b7          	lui	a5,0xb3071
1c008560:	5bb78793          	addi	a5,a5,1467 # b30715bb <pulp__FC+0xb30715bc>
1c008564:	46f12fa3          	sw	a5,1151(sp)
1c008568:	6e9557b7          	lui	a5,0x6e955
1c00856c:	f6478793          	addi	a5,a5,-156 # 6e954f64 <__l2_shared_end+0x52944f64>
1c008570:	48f121a3          	sw	a5,1155(sp)
1c008574:	52c3f7b7          	lui	a5,0x52c3f
1c008578:	8d478793          	addi	a5,a5,-1836 # 52c3e8d4 <__l2_shared_end+0x36c2e8d4>
1c00857c:	48f123a3          	sw	a5,1159(sp)
1c008580:	74dc27b7          	lui	a5,0x74dc2
1c008584:	669d                	lui	a3,0x7
1c008586:	eb678793          	addi	a5,a5,-330 # 74dc1eb6 <__l2_shared_end+0x58db1eb6>
1c00858a:	4809                	li	a6,2
1c00858c:	b9068713          	addi	a4,a3,-1136 # 6b90 <__CTOR_LIST__-0x1bff9474>
1c008590:	48f125a3          	sw	a5,1163(sp)
1c008594:	5ce6d7b7          	lui	a5,0x5ce6d
1c008598:	43010d23          	sb	a6,1082(sp)
1c00859c:	42e11c23          	sh	a4,1080(sp)
1c0085a0:	e0f78793          	addi	a5,a5,-497 # 5ce6ce0f <__l2_shared_end+0x40e5ce0f>
1c0085a4:	48f127a3          	sw	a5,1167(sp)
1c0085a8:	255507b7          	lui	a5,0x25550
1c0085ac:	7d978793          	addi	a5,a5,2009 # 255507d9 <__l2_shared_end+0x95407d9>
1c0085b0:	48f129a3          	sw	a5,1171(sp)
1c0085b4:	b61ba7b7          	lui	a5,0xb61ba
1c0085b8:	36278793          	addi	a5,a5,866 # b61ba362 <pulp__FC+0xb61ba363>
1c0085bc:	48f12ba3          	sw	a5,1175(sp)
1c0085c0:	170c97b7          	lui	a5,0x170c9
1c0085c4:	f8978793          	addi	a5,a5,-119 # 170c8f89 <__CTOR_LIST__-0x4f3707b>
1c0085c8:	48f12da3          	sw	a5,1179(sp)
1c0085cc:	539507b7          	lui	a5,0x53950
1c0085d0:	8bc78793          	addi	a5,a5,-1860 # 5394f8bc <__l2_shared_end+0x3793f8bc>
1c0085d4:	48f12fa3          	sw	a5,1183(sp)
1c0085d8:	c1d697b7          	lui	a5,0xc1d69
1c0085dc:	47b78793          	addi	a5,a5,1147 # c1d6947b <pulp__FC+0xc1d6947c>
1c0085e0:	4af121a3          	sw	a5,1187(sp)
1c0085e4:	9b0a27b7          	lui	a5,0x9b0a2
1c0085e8:	78f78793          	addi	a5,a5,1935 # 9b0a278f <pulp__FC+0x9b0a2790>
1c0085ec:	4af123a3          	sw	a5,1191(sp)
1c0085f0:	5b0a77b7          	lui	a5,0x5b0a7
1c0085f4:	68b78793          	addi	a5,a5,1675 # 5b0a768b <__l2_shared_end+0x3f09768b>
1c0085f8:	4af125a3          	sw	a5,1195(sp)
1c0085fc:	e6a4a7b7          	lui	a5,0xe6a4a
1c008600:	be278793          	addi	a5,a5,-1054 # e6a49be2 <pulp__FC+0xe6a49be3>
1c008604:	4af127a3          	sw	a5,1199(sp)
1c008608:	7308a7b7          	lui	a5,0x7308a
1c00860c:	a1f78793          	addi	a5,a5,-1505 # 73089a1f <__l2_shared_end+0x57079a1f>
1c008610:	4af129a3          	sw	a5,1203(sp)
1c008614:	175197b7          	lui	a5,0x17519
1c008618:	34578793          	addi	a5,a5,837 # 17519345 <__CTOR_LIST__-0x4ae6cbf>
1c00861c:	4af12ba3          	sw	a5,1207(sp)
1c008620:	a8c737b7          	lui	a5,0xa8c73
1c008624:	04378793          	addi	a5,a5,67 # a8c73043 <pulp__FC+0xa8c73044>
1c008628:	4af12da3          	sw	a5,1211(sp)
1c00862c:	88d7b7b7          	lui	a5,0x88d7b
1c008630:	66378793          	addi	a5,a5,1635 # 88d7b663 <pulp__FC+0x88d7b664>
1c008634:	4af12fa3          	sw	a5,1215(sp)
1c008638:	b65b97b7          	lui	a5,0xb65b9
1c00863c:	9c478793          	addi	a5,a5,-1596 # b65b89c4 <pulp__FC+0xb65b89c5>
1c008640:	4cf121a3          	sw	a5,1219(sp)
1c008644:	d5b867b7          	lui	a5,0xd5b86
1c008648:	82078793          	addi	a5,a5,-2016 # d5b85820 <pulp__FC+0xd5b85821>
1c00864c:	4cf123a3          	sw	a5,1223(sp)
1c008650:	25e537b7          	lui	a5,0x25e53
1c008654:	f9878793          	addi	a5,a5,-104 # 25e52f98 <__l2_shared_end+0x9e42f98>
1c008658:	4cf125a3          	sw	a5,1227(sp)
1c00865c:	bf4487b7          	lui	a5,0xbf448
1c008660:	7f878793          	addi	a5,a5,2040 # bf4487f8 <pulp__FC+0xbf4487f9>
1c008664:	4cf127a3          	sw	a5,1231(sp)
1c008668:	f23b87b7          	lui	a5,0xf23b8
1c00866c:	fa878793          	addi	a5,a5,-88 # f23b7fa8 <pulp__FC+0xf23b7fa9>
1c008670:	4cf129a3          	sw	a5,1235(sp)
1c008674:	6767b7b7          	lui	a5,0x6767b
1c008678:	92378793          	addi	a5,a5,-1757 # 6767a923 <__l2_shared_end+0x4b66a923>
1c00867c:	4cf12ba3          	sw	a5,1239(sp)
1c008680:	f20197b7          	lui	a5,0xf2019
1c008684:	64d78793          	addi	a5,a5,1613 # f201964d <pulp__FC+0xf201964e>
1c008688:	4cf12da3          	sw	a5,1243(sp)
1c00868c:	142a07b7          	lui	a5,0x142a0
1c008690:	22c78793          	addi	a5,a5,556 # 142a022c <__CTOR_LIST__-0x7d5fdd8>
1c008694:	4cf12fa3          	sw	a5,1247(sp)
1c008698:	5bc4e7b7          	lui	a5,0x5bc4e
1c00869c:	f9b78793          	addi	a5,a5,-101 # 5bc4df9b <__l2_shared_end+0x3fc3df9b>
1c0086a0:	4ef121a3          	sw	a5,1251(sp)
1c0086a4:	a88957b7          	lui	a5,0xa8895
1c0086a8:	5ee78793          	addi	a5,a5,1518 # a88955ee <pulp__FC+0xa88955ef>
1c0086ac:	4ef123a3          	sw	a5,1255(sp)
1c0086b0:	7668a7b7          	lui	a5,0x7668a
1c0086b4:	90278793          	addi	a5,a5,-1790 # 76689902 <__l2_shared_end+0x5a679902>
1c0086b8:	4ef125a3          	sw	a5,1259(sp)
1c0086bc:	ab3627b7          	lui	a5,0xab362
1c0086c0:	c4778793          	addi	a5,a5,-953 # ab361c47 <pulp__FC+0xab361c48>
1c0086c4:	4ef127a3          	sw	a5,1263(sp)
1c0086c8:	ec1ea7b7          	lui	a5,0xec1ea
1c0086cc:	36f78793          	addi	a5,a5,879 # ec1ea36f <pulp__FC+0xec1ea370>
1c0086d0:	4ef129a3          	sw	a5,1267(sp)
1c0086d4:	4a32b7b7          	lui	a5,0x4a32b
1c0086d8:	43078793          	addi	a5,a5,1072 # 4a32b430 <__l2_shared_end+0x2e31b430>
1c0086dc:	4ef12ba3          	sw	a5,1271(sp)
1c0086e0:	b23ca7b7          	lui	a5,0xb23ca
1c0086e4:	0a578793          	addi	a5,a5,165 # b23ca0a5 <pulp__FC+0xb23ca0a6>
1c0086e8:	4ef12da3          	sw	a5,1275(sp)
1c0086ec:	8e7397b7          	lui	a5,0x8e739
1c0086f0:	39f78793          	addi	a5,a5,927 # 8e73939f <pulp__FC+0x8e7393a0>
1c0086f4:	4ef12fa3          	sw	a5,1279(sp)
1c0086f8:	ebb127b7          	lui	a5,0xebb12
1c0086fc:	97578793          	addi	a5,a5,-1675 # ebb11975 <pulp__FC+0xebb11976>
1c008700:	50f121a3          	sw	a5,1283(sp)
1c008704:	709bb7b7          	lui	a5,0x709bb
1c008708:	63978793          	addi	a5,a5,1593 # 709bb639 <__l2_shared_end+0x549ab639>
1c00870c:	50f123a3          	sw	a5,1287(sp)
1c008710:	0f59b7b7          	lui	a5,0xf59b
1c008714:	99278793          	addi	a5,a5,-1646 # f59a992 <__CTOR_LIST__-0xca65672>
1c008718:	50f125a3          	sw	a5,1291(sp)
1c00871c:	978987b7          	lui	a5,0x97898
1c008720:	7ca78793          	addi	a5,a5,1994 # 978987ca <pulp__FC+0x978987cb>
1c008724:	50f127a3          	sw	a5,1295(sp)
1c008728:	1d5167b7          	lui	a5,0x1d516
1c00872c:	18a78793          	addi	a5,a5,394 # 1d51618a <__l2_shared_end+0x150618a>
1c008730:	50f129a3          	sw	a5,1299(sp)
1c008734:	387fb7b7          	lui	a5,0x387fb
1c008738:	bf578793          	addi	a5,a5,-1035 # 387fabf5 <__l2_shared_end+0x1c7eabf5>
1c00873c:	50f12ba3          	sw	a5,1303(sp)
1c008740:	625547b7          	lui	a5,0x62554
1c008744:	28078793          	addi	a5,a5,640 # 62554280 <__l2_shared_end+0x46544280>
1c008748:	50f12da3          	sw	a5,1307(sp)
1c00874c:	4e0357b7          	lui	a5,0x4e035
1c008750:	15178793          	addi	a5,a5,337 # 4e035151 <__l2_shared_end+0x32025151>
1c008754:	50f12fa3          	sw	a5,1311(sp)
1c008758:	7c4c27b7          	lui	a5,0x7c4c2
1c00875c:	47578793          	addi	a5,a5,1141 # 7c4c2475 <__l2_shared_end+0x604b2475>
1c008760:	52f121a3          	sw	a5,1315(sp)
1c008764:	e24177b7          	lui	a5,0xe2417
1c008768:	af478793          	addi	a5,a5,-1292 # e2416af4 <pulp__FC+0xe2416af5>
1c00876c:	52f123a3          	sw	a5,1319(sp)
1c008770:	157047b7          	lui	a5,0x15704
1c008774:	4a778793          	addi	a5,a5,1191 # 157044a7 <__CTOR_LIST__-0x68fbb5d>
1c008778:	52f125a3          	sw	a5,1323(sp)
1c00877c:	839617b7          	lui	a5,0x83961
1c008780:	0c478793          	addi	a5,a5,196 # 839610c4 <pulp__FC+0x839610c5>
1c008784:	52f127a3          	sw	a5,1327(sp)
1c008788:	6791                	lui	a5,0x4
1c00878a:	27178793          	addi	a5,a5,625 # 4271 <__CTOR_LIST__-0x1bffbd93>
1c00878e:	52f119a3          	sh	a5,1331(sp)
1c008792:	e87fc7b7          	lui	a5,0xe87fc
1c008796:	9fc78793          	addi	a5,a5,-1540 # e87fb9fc <pulp__FC+0xe87fb9fd>
1c00879a:	52f12b23          	sw	a5,1334(sp)
1c00879e:	4f59c7b7          	lui	a5,0x4f59c
1c0087a2:	2a178793          	addi	a5,a5,673 # 4f59c2a1 <__l2_shared_end+0x3358c2a1>
1c0087a6:	52f12d23          	sw	a5,1338(sp)
1c0087aa:	f56167b7          	lui	a5,0xf5616
1c0087ae:	18878793          	addi	a5,a5,392 # f5616188 <pulp__FC+0xf5616189>
1c0087b2:	52f12f23          	sw	a5,1342(sp)
1c0087b6:	2b0277b7          	lui	a5,0x2b027
1c0087ba:	dc378793          	addi	a5,a5,-573 # 2b026dc3 <__l2_shared_end+0xf016dc3>
1c0087be:	54f12123          	sw	a5,1346(sp)
1c0087c2:	2a6947b7          	lui	a5,0x2a694
1c0087c6:	cc478793          	addi	a5,a5,-828 # 2a693cc4 <__l2_shared_end+0xe683cc4>
1c0087ca:	54f12323          	sw	a5,1350(sp)
1c0087ce:	3b8957b7          	lui	a5,0x3b895
1c0087d2:	6de78793          	addi	a5,a5,1758 # 3b8956de <__l2_shared_end+0x1f8856de>
1c0087d6:	54f12523          	sw	a5,1354(sp)
1c0087da:	3ae647b7          	lui	a5,0x3ae64
1c0087de:	13378793          	addi	a5,a5,307 # 3ae64133 <__l2_shared_end+0x1ee54133>
1c0087e2:	54f12723          	sw	a5,1358(sp)
1c0087e6:	0487e7b7          	lui	a5,0x487e
1c0087ea:	a0178793          	addi	a5,a5,-1535 # 487da01 <__CTOR_LIST__-0x17782603>
1c0087ee:	54f12923          	sw	a5,1362(sp)
1c0087f2:	297207b7          	lui	a5,0x29720
1c0087f6:	b5278793          	addi	a5,a5,-1198 # 2971fb52 <__l2_shared_end+0xd70fb52>
1c0087fa:	54f12b23          	sw	a5,1366(sp)
1c0087fe:	6a29a7b7          	lui	a5,0x6a29a
1c008802:	4cc78793          	addi	a5,a5,1228 # 6a29a4cc <__l2_shared_end+0x4e28a4cc>
1c008806:	54f12d23          	sw	a5,1370(sp)
1c00880a:	bc49b7b7          	lui	a5,0xbc49b
1c00880e:	b6f78793          	addi	a5,a5,-1169 # bc49ab6f <pulp__FC+0xbc49ab70>
1c008812:	54f12f23          	sw	a5,1374(sp)
1c008816:	d41a57b7          	lui	a5,0xd41a5
1c00881a:	59e78793          	addi	a5,a5,1438 # d41a559e <pulp__FC+0xd41a559f>
1c00881e:	56f12123          	sw	a5,1378(sp)
1c008822:	7c06b7b7          	lui	a5,0x7c06b
1c008826:	30a78793          	addi	a5,a5,778 # 7c06b30a <__l2_shared_end+0x6005b30a>
1c00882a:	56f12323          	sw	a5,1382(sp)
1c00882e:	c36297b7          	lui	a5,0xc3629
1c008832:	36778793          	addi	a5,a5,871 # c3629367 <pulp__FC+0xc3629368>
1c008836:	56f12523          	sw	a5,1386(sp)
1c00883a:	9131c7b7          	lui	a5,0x9131c
1c00883e:	5e378793          	addi	a5,a5,1507 # 9131c5e3 <pulp__FC+0x9131c5e4>
1c008842:	56f12723          	sw	a5,1390(sp)
1c008846:	53e777b7          	lui	a5,0x53e77
1c00884a:	7fa78793          	addi	a5,a5,2042 # 53e777fa <__l2_shared_end+0x37e677fa>
1c00884e:	56f12923          	sw	a5,1394(sp)
1c008852:	92c077b7          	lui	a5,0x92c07
1c008856:	9ca78793          	addi	a5,a5,-1590 # 92c069ca <pulp__FC+0x92c069cb>
1c00885a:	56f12b23          	sw	a5,1398(sp)
1c00885e:	3200d7b7          	lui	a5,0x3200d
1c008862:	3da78793          	addi	a5,a5,986 # 3200d3da <__l2_shared_end+0x15ffd3da>
1c008866:	56f12d23          	sw	a5,1402(sp)
1c00886a:	37a267b7          	lui	a5,0x37a26
1c00886e:	5d678793          	addi	a5,a5,1494 # 37a265d6 <__l2_shared_end+0x1ba165d6>
1c008872:	56f12f23          	sw	a5,1406(sp)
1c008876:	04f157b7          	lui	a5,0x4f15
1c00887a:	5ce78793          	addi	a5,a5,1486 # 4f155ce <__CTOR_LIST__-0x170eaa36>
1c00887e:	58f12123          	sw	a5,1410(sp)
1c008882:	00c157b7          	lui	a5,0xc15
1c008886:	04078793          	addi	a5,a5,64 # c15040 <__CTOR_LIST__-0x1b3eafc4>
1c00888a:	58f12323          	sw	a5,1414(sp)
1c00888e:	c19187b7          	lui	a5,0xc1918
1c008892:	20b78793          	addi	a5,a5,523 # c191820b <pulp__FC+0xc191820c>
1c008896:	58f12523          	sw	a5,1418(sp)
1c00889a:	50ca47b7          	lui	a5,0x50ca4
1c00889e:	f4b78793          	addi	a5,a5,-181 # 50ca3f4b <__l2_shared_end+0x34c93f4b>
1c0088a2:	58f12723          	sw	a5,1422(sp)
1c0088a6:	1b7137b7          	lui	a5,0x1b713
1c0088aa:	50878793          	addi	a5,a5,1288 # 1b713508 <__CTOR_LIST__-0x8ecafc>
1c0088ae:	58f12923          	sw	a5,1426(sp)
1c0088b2:	75f247b7          	lui	a5,0x75f24
1c0088b6:	dc578793          	addi	a5,a5,-571 # 75f23dc5 <__l2_shared_end+0x59f13dc5>
1c0088ba:	07100893          	li	a7,113
1c0088be:	58f12b23          	sw	a5,1430(sp)
1c0088c2:	53110aa3          	sb	a7,1333(sp)
1c0088c6:	2c4388b7          	lui	a7,0x2c438
1c0088ca:	38688893          	addi	a7,a7,902 # 2c438386 <__l2_shared_end+0x10428386>
1c0088ce:	5b112123          	sw	a7,1442(sp)
1c0088d2:	0d3258b7          	lui	a7,0xd325
1c0088d6:	40888893          	addi	a7,a7,1032 # d325408 <__CTOR_LIST__-0xecdabfc>
1c0088da:	5b112323          	sw	a7,1446(sp)
1c0088de:	b38588b7          	lui	a7,0xb3858
1c0088e2:	97088893          	addi	a7,a7,-1680 # b3857970 <pulp__FC+0xb3857971>
1c0088e6:	5b112523          	sw	a7,1450(sp)
1c0088ea:	a0aea8b7          	lui	a7,0xa0aea
1c0088ee:	65b88893          	addi	a7,a7,1627 # a0aea65b <pulp__FC+0xa0aea65c>
1c0088f2:	5b112723          	sw	a7,1454(sp)
1c0088f6:	103318b7          	lui	a7,0x10331
1c0088fa:	f2988893          	addi	a7,a7,-215 # 10330f29 <__CTOR_LIST__-0xbccf0db>
1c0088fe:	5b112923          	sw	a7,1458(sp)
1c008902:	0e4538b7          	lui	a7,0xe453
1c008906:	98a88893          	addi	a7,a7,-1654 # e45298a <__CTOR_LIST__-0xdbad67a>
1c00890a:	5b112b23          	sw	a7,1462(sp)
1c00890e:	1396c8b7          	lui	a7,0x1396c
1c008912:	6dc88893          	addi	a7,a7,1756 # 1396c6dc <__CTOR_LIST__-0x8693928>
1c008916:	5b112d23          	sw	a7,1466(sp)
1c00891a:	a41a18b7          	lui	a7,0xa41a1
1c00891e:	da088893          	addi	a7,a7,-608 # a41a0da0 <pulp__FC+0xa41a0da1>
1c008922:	5b112f23          	sw	a7,1470(sp)
1c008926:	c50438b7          	lui	a7,0xc5043
1c00892a:	39a88893          	addi	a7,a7,922 # c504339a <pulp__FC+0xc504339b>
1c00892e:	5d112123          	sw	a7,1474(sp)
1c008932:	d6b428b7          	lui	a7,0xd6b42
1c008936:	e6988893          	addi	a7,a7,-407 # d6b41e69 <pulp__FC+0xd6b41e6a>
1c00893a:	5d112323          	sw	a7,1478(sp)
1c00893e:	2df3c8b7          	lui	a7,0x2df3c
1c008942:	0c388893          	addi	a7,a7,195 # 2df3c0c3 <__l2_shared_end+0x11f2c0c3>
1c008946:	5d112523          	sw	a7,1482(sp)
1c00894a:	217eb8b7          	lui	a7,0x217eb
1c00894e:	44a88893          	addi	a7,a7,1098 # 217eb44a <__l2_shared_end+0x57db44a>
1c008952:	5d112723          	sw	a7,1486(sp)
1c008956:	b56948b7          	lui	a7,0xb5694
1c00895a:	11888893          	addi	a7,a7,280 # b5694118 <pulp__FC+0xb5694119>
1c00895e:	5d112923          	sw	a7,1490(sp)
1c008962:	89faf8b7          	lui	a7,0x89faf
1c008966:	9a688893          	addi	a7,a7,-1626 # 89fae9a6 <pulp__FC+0x89fae9a7>
1c00896a:	5d112b23          	sw	a7,1494(sp)
1c00896e:	c4bf58b7          	lui	a7,0xc4bf5
1c008972:	c4288893          	addi	a7,a7,-958 # c4bf4c42 <pulp__FC+0xc4bf4c43>
1c008976:	5d112d23          	sw	a7,1498(sp)
1c00897a:	443018b7          	lui	a7,0x44301
1c00897e:	29888893          	addi	a7,a7,664 # 44301298 <__l2_shared_end+0x282f1298>
1c008982:	5d112f23          	sw	a7,1502(sp)
1c008986:	1541d8b7          	lui	a7,0x1541d
1c00898a:	47988893          	addi	a7,a7,1145 # 1541d479 <__CTOR_LIST__-0x6be2b8b>
1c00898e:	5f112123          	sw	a7,1506(sp)
1c008992:	450b38b7          	lui	a7,0x450b3
1c008996:	27488893          	addi	a7,a7,628 # 450b3274 <__l2_shared_end+0x290a3274>
1c00899a:	5f112323          	sw	a7,1510(sp)
1c00899e:	a32118b7          	lui	a7,0xa3211
1c0089a2:	fa188893          	addi	a7,a7,-95 # a3210fa1 <pulp__FC+0xa3210fa2>
1c0089a6:	5f112523          	sw	a7,1514(sp)
1c0089aa:	c412f8b7          	lui	a7,0xc412f
1c0089ae:	45288893          	addi	a7,a7,1106 # c412f452 <pulp__FC+0xc412f453>
1c0089b2:	5f112723          	sw	a7,1518(sp)
1c0089b6:	a00548b7          	lui	a7,0xa0054
1c0089ba:	3ae88893          	addi	a7,a7,942 # a00543ae <pulp__FC+0xa00543af>
1c0089be:	5f112923          	sw	a7,1522(sp)
1c0089c2:	8a1d88b7          	lui	a7,0x8a1d8
1c0089c6:	09a88893          	addi	a7,a7,154 # 8a1d809a <pulp__FC+0x8a1d809b>
1c0089ca:	5f112b23          	sw	a7,1526(sp)
1c0089ce:	231628b7          	lui	a7,0x23162
1c0089d2:	16e88893          	addi	a7,a7,366 # 2316216e <__l2_shared_end+0x715216e>
1c0089d6:	5f112d23          	sw	a7,1530(sp)
1c0089da:	3d7a28b7          	lui	a7,0x3d7a2
1c0089de:	0c388893          	addi	a7,a7,195 # 3d7a20c3 <__l2_shared_end+0x217920c3>
1c0089e2:	5f112f23          	sw	a7,1534(sp)
1c0089e6:	cc9848b7          	lui	a7,0xcc984
1c0089ea:	e8988893          	addi	a7,a7,-375 # cc983e89 <pulp__FC+0xcc983e8a>
1c0089ee:	61112123          	sw	a7,1538(sp)
1c0089f2:	899678b7          	lui	a7,0x89967
1c0089f6:	08e1                	addi	a7,a7,24
1c0089f8:	61112323          	sw	a7,1542(sp)
1c0089fc:	185648b7          	lui	a7,0x18564
1c008a00:	0f088893          	addi	a7,a7,240 # 185640f0 <__CTOR_LIST__-0x3a9bf14>
1c008a04:	61112523          	sw	a7,1546(sp)
1c008a08:	2ca4d8b7          	lui	a7,0x2ca4d
1c008a0c:	c4588893          	addi	a7,a7,-955 # 2ca4cc45 <__l2_shared_end+0x10a3cc45>
1c008a10:	892067b7          	lui	a5,0x89206
1c008a14:	49978793          	addi	a5,a5,1177 # 89206499 <pulp__FC+0x8920649a>
1c008a18:	61112723          	sw	a7,1550(sp)
1c008a1c:	042b58b7          	lui	a7,0x42b5
1c008a20:	58f12d23          	sw	a5,1434(sp)
1c008a24:	a1588893          	addi	a7,a7,-1515 # 42b4a15 <__CTOR_LIST__-0x17d4b5ef>
1c008a28:	208ab7b7          	lui	a5,0x208ab
1c008a2c:	c2f78793          	addi	a5,a5,-977 # 208aac2f <__l2_shared_end+0x489ac2f>
1c008a30:	61112923          	sw	a7,1554(sp)
1c008a34:	9dc318b7          	lui	a7,0x9dc31
1c008a38:	58f12f23          	sw	a5,1438(sp)
1c008a3c:	2c988893          	addi	a7,a7,713 # 9dc312c9 <pulp__FC+0x9dc312ca>
1c008a40:	5ac68693          	addi	a3,a3,1452
1c008a44:	61112b23          	sw	a7,1558(sp)
1c008a48:	62d11723          	sh	a3,1582(sp)
1c008a4c:	fbc00693          	li	a3,-68
1c008a50:	62d10823          	sb	a3,1584(sp)
1c008a54:	978676b7          	lui	a3,0x97867
1c008a58:	c5968693          	addi	a3,a3,-935 # 97866c59 <pulp__FC+0x97866c5a>
1c008a5c:	62d128a3          	sw	a3,1585(sp)
1c008a60:	f61a76b7          	lui	a3,0xf61a7
1c008a64:	dd968693          	addi	a3,a3,-551 # f61a6dd9 <pulp__FC+0xf61a6dda>
1c008a68:	62d12aa3          	sw	a3,1589(sp)
1c008a6c:	21b666b7          	lui	a3,0x21b66
1c008a70:	57368693          	addi	a3,a3,1395 # 21b66573 <__l2_shared_end+0x5b56573>
1c008a74:	62d12ca3          	sw	a3,1593(sp)
1c008a78:	5f62e6b7          	lui	a3,0x5f62e
1c008a7c:	7c668693          	addi	a3,a3,1990 # 5f62e7c6 <__l2_shared_end+0x4361e7c6>
1c008a80:	62d12ea3          	sw	a3,1597(sp)
1c008a84:	d79956b7          	lui	a3,0xd7995
1c008a88:	bc468693          	addi	a3,a3,-1084 # d7994bc4 <pulp__FC+0xd7994bc5>
1c008a8c:	64d120a3          	sw	a3,1601(sp)
1c008a90:	cd3856b7          	lui	a3,0xcd385
1c008a94:	f5868693          	addi	a3,a3,-168 # cd384f58 <pulp__FC+0xcd384f59>
1c008a98:	64d122a3          	sw	a3,1605(sp)
1c008a9c:	c50c36b7          	lui	a3,0xc50c3
1c008aa0:	62868693          	addi	a3,a3,1576 # c50c3628 <pulp__FC+0xc50c3629>
1c008aa4:	64d124a3          	sw	a3,1609(sp)
1c008aa8:	5b9066b7          	lui	a3,0x5b906
1c008aac:	a6268693          	addi	a3,a3,-1438 # 5b905a62 <__l2_shared_end+0x3f8f5a62>
1c008ab0:	64d126a3          	sw	a3,1613(sp)
1c008ab4:	9312b6b7          	lui	a3,0x9312b
1c008ab8:	f9668693          	addi	a3,a3,-106 # 9312af96 <pulp__FC+0x9312af97>
1c008abc:	64d128a3          	sw	a3,1617(sp)
1c008ac0:	feb5d6b7          	lui	a3,0xfeb5d
1c008ac4:	50e68693          	addi	a3,a3,1294 # feb5d50e <pulp__FC+0xfeb5d50f>
1c008ac8:	64d12aa3          	sw	a3,1621(sp)
1c008acc:	5afc86b7          	lui	a3,0x5afc8
1c008ad0:	22a68693          	addi	a3,a3,554 # 5afc822a <__l2_shared_end+0x3efb822a>
1c008ad4:	64d12ca3          	sw	a3,1625(sp)
1c008ad8:	824be6b7          	lui	a3,0x824be
1c008adc:	ca768693          	addi	a3,a3,-857 # 824bdca7 <pulp__FC+0x824bdca8>
1c008ae0:	64d12ea3          	sw	a3,1629(sp)
1c008ae4:	3576e6b7          	lui	a3,0x3576e
1c008ae8:	39f68693          	addi	a3,a3,927 # 3576e39f <__l2_shared_end+0x1975e39f>
1c008aec:	66d120a3          	sw	a3,1633(sp)
1c008af0:	f25a46b7          	lui	a3,0xf25a4
1c008af4:	16c5                	addi	a3,a3,-15
1c008af6:	66d122a3          	sw	a3,1637(sp)
1c008afa:	1d08d6b7          	lui	a3,0x1d08d
1c008afe:	3a668693          	addi	a3,a3,934 # 1d08d3a6 <__l2_shared_end+0x107d3a6>
1c008b02:	66d124a3          	sw	a3,1641(sp)
1c008b06:	858786b7          	lui	a3,0x85878
1c008b0a:	7ad68693          	addi	a3,a3,1965 # 858787ad <pulp__FC+0x858787ae>
1c008b0e:	66d126a3          	sw	a3,1645(sp)
1c008b12:	a90a96b7          	lui	a3,0xa90a9
1c008b16:	a6968693          	addi	a3,a3,-1431 # a90a8a69 <pulp__FC+0xa90a8a6a>
1c008b1a:	66d128a3          	sw	a3,1649(sp)
1c008b1e:	4e4c36b7          	lui	a3,0x4e4c3
1c008b22:	71468693          	addi	a3,a3,1812 # 4e4c3714 <__l2_shared_end+0x324b3714>
1c008b26:	66d12aa3          	sw	a3,1653(sp)
1c008b2a:	099fc6b7          	lui	a3,0x99fc
1c008b2e:	84368693          	addi	a3,a3,-1981 # 99fb843 <__CTOR_LIST__-0x126047c1>
1c008b32:	66d12ca3          	sw	a3,1657(sp)
1c008b36:	aa9286b7          	lui	a3,0xaa928
1c008b3a:	84a68693          	addi	a3,a3,-1974 # aa92784a <pulp__FC+0xaa92784b>
1c008b3e:	66d12ea3          	sw	a3,1661(sp)
1c008b42:	b438a6b7          	lui	a3,0xb438a
1c008b46:	a1468693          	addi	a3,a3,-1516 # b4389a14 <pulp__FC+0xb4389a15>
1c008b4a:	141e88b7          	lui	a7,0x141e8
1c008b4e:	3c488893          	addi	a7,a7,964 # 141e83c4 <__CTOR_LIST__-0x7e17c40>
1c008b52:	68d120a3          	sw	a3,1665(sp)
1c008b56:	68a006b7          	lui	a3,0x68a00
1c008b5a:	61112d23          	sw	a7,1562(sp)
1c008b5e:	69c68693          	addi	a3,a3,1692 # 68a0069c <__l2_shared_end+0x4c9f069c>
1c008b62:	a9a228b7          	lui	a7,0xa9a22
1c008b66:	f4288893          	addi	a7,a7,-190 # a9a21f42 <pulp__FC+0xa9a21f43>
1c008b6a:	68d122a3          	sw	a3,1669(sp)
1c008b6e:	d2a836b7          	lui	a3,0xd2a83
1c008b72:	61112f23          	sw	a7,1566(sp)
1c008b76:	9d868693          	addi	a3,a3,-1576 # d2a829d8 <pulp__FC+0xd2a829d9>
1c008b7a:	cc22c8b7          	lui	a7,0xcc22c
1c008b7e:	3db88893          	addi	a7,a7,987 # cc22c3db <pulp__FC+0xcc22c3dc>
1c008b82:	68d124a3          	sw	a3,1673(sp)
1c008b86:	a353e6b7          	lui	a3,0xa353e
1c008b8a:	63112123          	sw	a7,1570(sp)
1c008b8e:	74968693          	addi	a3,a3,1865 # a353e749 <pulp__FC+0xa353e74a>
1c008b92:	8ca738b7          	lui	a7,0x8ca73
1c008b96:	a7488893          	addi	a7,a7,-1420 # 8ca72a74 <pulp__FC+0x8ca72a75>
1c008b9a:	68d126a3          	sw	a3,1677(sp)
1c008b9e:	a097d6b7          	lui	a3,0xa097d
1c008ba2:	63112323          	sw	a7,1574(sp)
1c008ba6:	07568693          	addi	a3,a3,117 # a097d075 <pulp__FC+0xa097d076>
1c008baa:	3d7c28b7          	lui	a7,0x3d7c2
1c008bae:	b8f88893          	addi	a7,a7,-1137 # 3d7c1b8f <__l2_shared_end+0x217b1b8f>
1c008bb2:	68d128a3          	sw	a3,1681(sp)
1c008bb6:	c3e666b7          	lui	a3,0xc3e66
1c008bba:	63112523          	sw	a7,1578(sp)
1c008bbe:	2f168693          	addi	a3,a3,753 # c3e662f1 <pulp__FC+0xc3e662f2>
1c008bc2:	68d12aa3          	sw	a3,1685(sp)
1c008bc6:	c7e8e6b7          	lui	a3,0xc7e8e
1c008bca:	fa468693          	addi	a3,a3,-92 # c7e8dfa4 <pulp__FC+0xc7e8dfa5>
1c008bce:	68d12ca3          	sw	a3,1689(sp)
1c008bd2:	0c4166b7          	lui	a3,0xc416
1c008bd6:	19768693          	addi	a3,a3,407 # c416197 <__CTOR_LIST__-0xfbe9e6d>
1c008bda:	68d12ea3          	sw	a3,1693(sp)
1c008bde:	89d366b7          	lui	a3,0x89d36
1c008be2:	e6068693          	addi	a3,a3,-416 # 89d35e60 <pulp__FC+0x89d35e61>
1c008be6:	6ad120a3          	sw	a3,1697(sp)
1c008bea:	43c446b7          	lui	a3,0x43c44
1c008bee:	f9a68693          	addi	a3,a3,-102 # 43c43f9a <__l2_shared_end+0x27c33f9a>
1c008bf2:	6ad122a3          	sw	a3,1701(sp)
1c008bf6:	284fe6b7          	lui	a3,0x284fe
1c008bfa:	17868693          	addi	a3,a3,376 # 284fe178 <__l2_shared_end+0xc4ee178>
1c008bfe:	6ad124a3          	sw	a3,1705(sp)
1c008c02:	148fa6b7          	lui	a3,0x148fa
1c008c06:	e8768693          	addi	a3,a3,-377 # 148f9e87 <__CTOR_LIST__-0x770617d>
1c008c0a:	6ad126a3          	sw	a3,1709(sp)
1c008c0e:	bce676b7          	lui	a3,0xbce67
1c008c12:	78068693          	addi	a3,a3,1920 # bce67780 <pulp__FC+0xbce67781>
1c008c16:	6ad128a3          	sw	a3,1713(sp)
1c008c1a:	56aeb6b7          	lui	a3,0x56aeb
1c008c1e:	23b68693          	addi	a3,a3,571 # 56aeb23b <__l2_shared_end+0x3aadb23b>
1c008c22:	6ad12aa3          	sw	a3,1717(sp)
1c008c26:	164996b7          	lui	a3,0x16499
1c008c2a:	c1768693          	addi	a3,a3,-1001 # 16498c17 <__CTOR_LIST__-0x5b673ed>
1c008c2e:	6ad12ca3          	sw	a3,1721(sp)
1c008c32:	af6ac6b7          	lui	a3,0xaf6ac
1c008c36:	f1168693          	addi	a3,a3,-239 # af6abf11 <pulp__FC+0xaf6abf12>
1c008c3a:	6ad12ea3          	sw	a3,1725(sp)
1c008c3e:	b99ca6b7          	lui	a3,0xb99ca
1c008c42:	a5f68693          	addi	a3,a3,-1441 # b99c9a5f <pulp__FC+0xb99c9a60>
1c008c46:	6cd120a3          	sw	a3,1729(sp)
1c008c4a:	239266b7          	lui	a3,0x23926
1c008c4e:	5b568693          	addi	a3,a3,1461 # 239265b5 <__l2_shared_end+0x79165b5>
1c008c52:	6cd122a3          	sw	a3,1733(sp)
1c008c56:	bc4086b7          	lui	a3,0xbc408
1c008c5a:	90068693          	addi	a3,a3,-1792 # bc407900 <pulp__FC+0xbc407901>
1c008c5e:	6cd124a3          	sw	a3,1737(sp)
1c008c62:	32a306b7          	lui	a3,0x32a30
1c008c66:	8d668693          	addi	a3,a3,-1834 # 32a2f8d6 <__l2_shared_end+0x16a1f8d6>
1c008c6a:	6cd126a3          	sw	a3,1741(sp)
1c008c6e:	1560a6b7          	lui	a3,0x1560a
1c008c72:	58068693          	addi	a3,a3,1408 # 1560a580 <__CTOR_LIST__-0x69f5a84>
1c008c76:	6cd128a3          	sw	a3,1745(sp)
1c008c7a:	778516b7          	lui	a3,0x77851
1c008c7e:	e3368693          	addi	a3,a3,-461 # 77850e33 <__l2_shared_end+0x5b840e33>
1c008c82:	6cd12aa3          	sw	a3,1749(sp)
1c008c86:	b18796b7          	lui	a3,0xb1879
1c008c8a:	52568693          	addi	a3,a3,1317 # b1879525 <pulp__FC+0xb1879526>
1c008c8e:	6cd12ca3          	sw	a3,1753(sp)
1c008c92:	c9f406b7          	lui	a3,0xc9f40
1c008c96:	62668693          	addi	a3,a3,1574 # c9f40626 <pulp__FC+0xc9f40627>
1c008c9a:	6cd12ea3          	sw	a3,1757(sp)
1c008c9e:	6013f6b7          	lui	a3,0x6013f
1c008ca2:	a3768693          	addi	a3,a3,-1481 # 6013ea37 <__l2_shared_end+0x4412ea37>
1c008ca6:	6ed120a3          	sw	a3,1761(sp)
1c008caa:	04bbb6b7          	lui	a3,0x4bbb
1c008cae:	36c68693          	addi	a3,a3,876 # 4bbb36c <__CTOR_LIST__-0x17444c98>
1c008cb2:	6ed122a3          	sw	a3,1765(sp)
1c008cb6:	29ad66b7          	lui	a3,0x29ad6
1c008cba:	66068693          	addi	a3,a3,1632 # 29ad6660 <__l2_shared_end+0xdac6660>
1c008cbe:	6ed124a3          	sw	a3,1769(sp)
1c008cc2:	b2e266b7          	lui	a3,0xb2e26
1c008cc6:	14268693          	addi	a3,a3,322 # b2e26142 <pulp__FC+0xb2e26143>
1c008cca:	6ed126a3          	sw	a3,1773(sp)
1c008cce:	c7bc26b7          	lui	a3,0xc7bc2
1c008cd2:	22068693          	addi	a3,a3,544 # c7bc2220 <pulp__FC+0xc7bc2221>
1c008cd6:	6ed128a3          	sw	a3,1777(sp)
1c008cda:	52a586b7          	lui	a3,0x52a58
1c008cde:	84668693          	addi	a3,a3,-1978 # 52a57846 <__l2_shared_end+0x36a47846>
1c008ce2:	6ed12aa3          	sw	a3,1781(sp)
1c008ce6:	8ed876b7          	lui	a3,0x8ed87
1c008cea:	0695                	addi	a3,a3,5
1c008cec:	6ed12ca3          	sw	a3,1785(sp)
1c008cf0:	6942f6b7          	lui	a3,0x6942f
1c008cf4:	b4c68693          	addi	a3,a3,-1204 # 6942eb4c <__l2_shared_end+0x4d41eb4c>
1c008cf8:	6ed12ea3          	sw	a3,1789(sp)
1c008cfc:	e3e736b7          	lui	a3,0xe3e73
1c008d00:	12668693          	addi	a3,a3,294 # e3e73126 <pulp__FC+0xe3e73127>
1c008d04:	70d120a3          	sw	a3,1793(sp)
1c008d08:	2f4b26b7          	lui	a3,0x2f4b2
1c008d0c:	c7168693          	addi	a3,a3,-911 # 2f4b1c71 <__l2_shared_end+0x134a1c71>
1c008d10:	70d122a3          	sw	a3,1797(sp)
1c008d14:	037f36b7          	lui	a3,0x37f3
1c008d18:	4d568693          	addi	a3,a3,1237 # 37f34d5 <__CTOR_LIST__-0x1880cb2f>
1c008d1c:	70d124a3          	sw	a3,1801(sp)
1c008d20:	408366b7          	lui	a3,0x40836
1c008d24:	92868693          	addi	a3,a3,-1752 # 40835928 <__l2_shared_end+0x24825928>
1c008d28:	70d126a3          	sw	a3,1805(sp)
1c008d2c:	c86546b7          	lui	a3,0xc8654
1c008d30:	ccb68693          	addi	a3,a3,-821 # c8653ccb <pulp__FC+0xc8653ccc>
1c008d34:	70d128a3          	sw	a3,1809(sp)
1c008d38:	27c066b7          	lui	a3,0x27c06
1c008d3c:	af568693          	addi	a3,a3,-1291 # 27c05af5 <__l2_shared_end+0xbbf5af5>
1c008d40:	70d12aa3          	sw	a3,1813(sp)
1c008d44:	941086b7          	lui	a3,0x94108
1c008d48:	31668693          	addi	a3,a3,790 # 94108316 <pulp__FC+0x94108317>
1c008d4c:	70d12ca3          	sw	a3,1817(sp)
1c008d50:	0fb976b7          	lui	a3,0xfb97
1c008d54:	ecb68693          	addi	a3,a3,-309 # fb96ecb <__CTOR_LIST__-0xc469139>
1c008d58:	70d12ea3          	sw	a3,1821(sp)
1c008d5c:	3d1766b7          	lui	a3,0x3d176
1c008d60:	b1768693          	addi	a3,a3,-1257 # 3d175b17 <__l2_shared_end+0x21165b17>
1c008d64:	72d120a3          	sw	a3,1825(sp)
1c008d68:	290366b7          	lui	a3,0x29036
1c008d6c:	59c68693          	addi	a3,a3,1436 # 2903659c <__l2_shared_end+0xd02659c>
1c008d70:	72d122a3          	sw	a3,1829(sp)
1c008d74:	76fd                	lui	a3,0xfffff
1c008d76:	5aa68693          	addi	a3,a3,1450 # fffff5aa <pulp__FC+0xfffff5ab>
1c008d7a:	72d114a3          	sh	a3,1833(sp)
1c008d7e:	46cd                	li	a3,19
1c008d80:	72d105a3          	sb	a3,1835(sp)
1c008d84:	bb3336b7          	lui	a3,0xbb333
1c008d88:	66368693          	addi	a3,a3,1635 # bb333663 <pulp__FC+0xbb333664>
1c008d8c:	72d12623          	sw	a3,1836(sp)
1c008d90:	8e85e6b7          	lui	a3,0x8e85e
1c008d94:	62c68693          	addi	a3,a3,1580 # 8e85e62c <pulp__FC+0x8e85e62d>
1c008d98:	72d12823          	sw	a3,1840(sp)
1c008d9c:	c4ab46b7          	lui	a3,0xc4ab4
1c008da0:	77468693          	addi	a3,a3,1908 # c4ab4774 <pulp__FC+0xc4ab4775>
1c008da4:	72d12a23          	sw	a3,1844(sp)
1c008da8:	6db076b7          	lui	a3,0x6db07
1c008dac:	f1b68693          	addi	a3,a3,-229 # 6db06f1b <__l2_shared_end+0x51af6f1b>
1c008db0:	72d12c23          	sw	a3,1848(sp)
1c008db4:	722586b7          	lui	a3,0x72258
1c008db8:	8a868693          	addi	a3,a3,-1880 # 722578a8 <__l2_shared_end+0x562478a8>
1c008dbc:	72d12e23          	sw	a3,1852(sp)
1c008dc0:	96b036b7          	lui	a3,0x96b03
1c008dc4:	2c368693          	addi	a3,a3,707 # 96b032c3 <pulp__FC+0x96b032c4>
1c008dc8:	74d12023          	sw	a3,1856(sp)
1c008dcc:	266936b7          	lui	a3,0x26693
1c008dd0:	66068693          	addi	a3,a3,1632 # 26693660 <__l2_shared_end+0xa683660>
1c008dd4:	74d12223          	sw	a3,1860(sp)
1c008dd8:	d89e56b7          	lui	a3,0xd89e5
1c008ddc:	2bf68693          	addi	a3,a3,703 # d89e52bf <pulp__FC+0xd89e52c0>
1c008de0:	74d12423          	sw	a3,1864(sp)
1c008de4:	4362b6b7          	lui	a3,0x4362b
1c008de8:	aca68693          	addi	a3,a3,-1334 # 4362aaca <__l2_shared_end+0x2761aaca>
1c008dec:	74d12623          	sw	a3,1868(sp)
1c008df0:	2b15e6b7          	lui	a3,0x2b15e
1c008df4:	bcc68693          	addi	a3,a3,-1076 # 2b15dbcc <__l2_shared_end+0xf14dbcc>
1c008df8:	74d12823          	sw	a3,1872(sp)
1c008dfc:	476ec6b7          	lui	a3,0x476ec
1c008e00:	a3668693          	addi	a3,a3,-1482 # 476eba36 <__l2_shared_end+0x2b6dba36>
1c008e04:	74d12a23          	sw	a3,1876(sp)
1c008e08:	5c1416b7          	lui	a3,0x5c141
1c008e0c:	4c768693          	addi	a3,a3,1223 # 5c1414c7 <__l2_shared_end+0x401314c7>
1c008e10:	74d12c23          	sw	a3,1880(sp)
1c008e14:	b6b3f6b7          	lui	a3,0xb6b3f
1c008e18:	58668693          	addi	a3,a3,1414 # b6b3f586 <pulp__FC+0xb6b3f587>
1c008e1c:	74d12e23          	sw	a3,1884(sp)
1c008e20:	f14ef6b7          	lui	a3,0xf14ef
1c008e24:	81d68693          	addi	a3,a3,-2019 # f14ee81d <pulp__FC+0xf14ee81e>
1c008e28:	76d12023          	sw	a3,1888(sp)
1c008e2c:	fa0316b7          	lui	a3,0xfa031
1c008e30:	d4768693          	addi	a3,a3,-697 # fa030d47 <pulp__FC+0xfa030d48>
1c008e34:	76d12223          	sw	a3,1892(sp)
1c008e38:	51e336b7          	lui	a3,0x51e33
1c008e3c:	50168693          	addi	a3,a3,1281 # 51e33501 <__l2_shared_end+0x35e23501>
1c008e40:	76d12423          	sw	a3,1896(sp)
1c008e44:	b32006b7          	lui	a3,0xb3200
1c008e48:	a9468693          	addi	a3,a3,-1388 # b31ffa94 <pulp__FC+0xb31ffa95>
1c008e4c:	76d12623          	sw	a3,1900(sp)
1c008e50:	a50f86b7          	lui	a3,0xa50f8
1c008e54:	6bc68693          	addi	a3,a3,1724 # a50f86bc <pulp__FC+0xa50f86bd>
1c008e58:	76d12823          	sw	a3,1904(sp)
1c008e5c:	9a29d6b7          	lui	a3,0x9a29d
1c008e60:	10068693          	addi	a3,a3,256 # 9a29d100 <pulp__FC+0x9a29d101>
1c008e64:	76d12a23          	sw	a3,1908(sp)
1c008e68:	56ce96b7          	lui	a3,0x56ce9
1c008e6c:	8ee68693          	addi	a3,a3,-1810 # 56ce88ee <__l2_shared_end+0x3acd88ee>
1c008e70:	76d12c23          	sw	a3,1912(sp)
1c008e74:	c17646b7          	lui	a3,0xc1764
1c008e78:	30568693          	addi	a3,a3,773 # c1764305 <pulp__FC+0xc1764306>
1c008e7c:	76d12e23          	sw	a3,1916(sp)
1c008e80:	3d55a6b7          	lui	a3,0x3d55a
1c008e84:	c1968693          	addi	a3,a3,-999 # 3d559c19 <__l2_shared_end+0x21549c19>
1c008e88:	78d12023          	sw	a3,1920(sp)
1c008e8c:	6f8d16b7          	lui	a3,0x6f8d1
1c008e90:	ad968693          	addi	a3,a3,-1319 # 6f8d0ad9 <__l2_shared_end+0x538c0ad9>
1c008e94:	78d12223          	sw	a3,1924(sp)
1c008e98:	c863c6b7          	lui	a3,0xc863c
1c008e9c:	79c68693          	addi	a3,a3,1948 # c863c79c <pulp__FC+0xc863c79d>
1c008ea0:	78d12423          	sw	a3,1928(sp)
1c008ea4:	6dc6d6b7          	lui	a3,0x6dc6d
1c008ea8:	06c5                	addi	a3,a3,17
1c008eaa:	78d12623          	sw	a3,1932(sp)
1c008eae:	ab5206b7          	lui	a3,0xab520
1c008eb2:	8a668693          	addi	a3,a3,-1882 # ab51f8a6 <pulp__FC+0xab51f8a7>
1c008eb6:	78d12823          	sw	a3,1936(sp)
1c008eba:	356606b7          	lui	a3,0x35660
1c008ebe:	5f168693          	addi	a3,a3,1521 # 356605f1 <__l2_shared_end+0x196505f1>
1c008ec2:	78d12a23          	sw	a3,1940(sp)
1c008ec6:	aa6856b7          	lui	a3,0xaa685
1c008eca:	aa368693          	addi	a3,a3,-1373 # aa684aa3 <pulp__FC+0xaa684aa4>
1c008ece:	78d12c23          	sw	a3,1944(sp)
1c008ed2:	8f8616b7          	lui	a3,0x8f861
1c008ed6:	57868693          	addi	a3,a3,1400 # 8f861578 <pulp__FC+0x8f861579>
1c008eda:	78d12e23          	sw	a3,1948(sp)
1c008ede:	5c3a46b7          	lui	a3,0x5c3a4
1c008ee2:	a1568693          	addi	a3,a3,-1515 # 5c3a3a15 <__l2_shared_end+0x40393a15>
1c008ee6:	7ad12023          	sw	a3,1952(sp)
1c008eea:	b1c906b7          	lui	a3,0xb1c90
1c008eee:	c7768693          	addi	a3,a3,-905 # b1c8fc77 <pulp__FC+0xb1c8fc78>
1c008ef2:	7ad12223          	sw	a3,1956(sp)
1c008ef6:	fb0726b7          	lui	a3,0xfb072
1c008efa:	8eb68693          	addi	a3,a3,-1813 # fb0718eb <pulp__FC+0xfb0718ec>
1c008efe:	7ad12423          	sw	a3,1960(sp)
1c008f02:	b46f36b7          	lui	a3,0xb46f3
1c008f06:	af668693          	addi	a3,a3,-1290 # b46f2af6 <pulp__FC+0xb46f2af7>
1c008f0a:	7ad12623          	sw	a3,1964(sp)
1c008f0e:	005736b7          	lui	a3,0x573
1c008f12:	53b68693          	addi	a3,a3,1339 # 57353b <__CTOR_LIST__-0x1ba8cac9>
1c008f16:	7ad12823          	sw	a3,1968(sp)
1c008f1a:	943086b7          	lui	a3,0x94308
1c008f1e:	2e768693          	addi	a3,a3,743 # 943082e7 <pulp__FC+0x943082e8>
1c008f22:	7ad12a23          	sw	a3,1972(sp)
1c008f26:	e1a136b7          	lui	a3,0xe1a13
1c008f2a:	b3a68693          	addi	a3,a3,-1222 # e1a12b3a <pulp__FC+0xe1a12b3b>
1c008f2e:	7ad12c23          	sw	a3,1976(sp)
1c008f32:	451326b7          	lui	a3,0x45132
1c008f36:	81b68693          	addi	a3,a3,-2021 # 4513181b <__l2_shared_end+0x2912181b>
1c008f3a:	7ad12e23          	sw	a3,1980(sp)
1c008f3e:	464d26b7          	lui	a3,0x464d2
1c008f42:	bb168693          	addi	a3,a3,-1103 # 464d1bb1 <__l2_shared_end+0x2a4c1bb1>
1c008f46:	7cd12023          	sw	a3,1984(sp)
1c008f4a:	357b76b7          	lui	a3,0x357b7
1c008f4e:	e2668693          	addi	a3,a3,-474 # 357b6e26 <__l2_shared_end+0x197a6e26>
1c008f52:	7cd12223          	sw	a3,1988(sp)
1c008f56:	504a06b7          	lui	a3,0x504a0
1c008f5a:	79f68693          	addi	a3,a3,1951 # 504a079f <__l2_shared_end+0x3449079f>
1c008f5e:	7cd12423          	sw	a3,1992(sp)
1c008f62:	d75796b7          	lui	a3,0xd7579
1c008f66:	80c68693          	addi	a3,a3,-2036 # d757880c <pulp__FC+0xd757880d>
1c008f6a:	7cd12623          	sw	a3,1996(sp)
1c008f6e:	640fa6b7          	lui	a3,0x640fa
1c008f72:	69b68693          	addi	a3,a3,1691 # 640fa69b <__l2_shared_end+0x480ea69b>
1c008f76:	7cd12823          	sw	a3,2000(sp)
1c008f7a:	2c6636b7          	lui	a3,0x2c663
1c008f7e:	d2668693          	addi	a3,a3,-730 # 2c662d26 <__l2_shared_end+0x10652d26>
1c008f82:	7cd12a23          	sw	a3,2004(sp)
1c008f86:	8984a6b7          	lui	a3,0x8984a
1c008f8a:	ccd68693          	addi	a3,a3,-819 # 89849ccd <pulp__FC+0x89849cce>
1c008f8e:	7cd12c23          	sw	a3,2008(sp)
1c008f92:	f69dc6b7          	lui	a3,0xf69dc
1c008f96:	1a468693          	addi	a3,a3,420 # f69dc1a4 <pulp__FC+0xf69dc1a5>
1c008f9a:	7cd12e23          	sw	a3,2012(sp)
1c008f9e:	19db36b7          	lui	a3,0x19db3
1c008fa2:	77468693          	addi	a3,a3,1908 # 19db3774 <__CTOR_LIST__-0x224c890>
1c008fa6:	7ed12023          	sw	a3,2016(sp)
1c008faa:	76b996b7          	lui	a3,0x76b99
1c008fae:	53f68693          	addi	a3,a3,1343 # 76b9953f <__l2_shared_end+0x5ab8953f>
1c008fb2:	7ed12223          	sw	a3,2020(sp)
1c008fb6:	15d986b7          	lui	a3,0x15d98
1c008fba:	15168693          	addi	a3,a3,337 # 15d98151 <__CTOR_LIST__-0x6267eb3>
1c008fbe:	7ed12423          	sw	a3,2024(sp)
1c008fc2:	16b166b7          	lui	a3,0x16b16
1c008fc6:	22268693          	addi	a3,a3,546 # 16b16222 <__CTOR_LIST__-0x54e9de2>
1c008fca:	7ed12623          	sw	a3,2028(sp)
1c008fce:	53be96b7          	lui	a3,0x53be9
1c008fd2:	76f68693          	addi	a3,a3,1903 # 53be976f <__l2_shared_end+0x37bd976f>
1c008fd6:	7ed12823          	sw	a3,2032(sp)
1c008fda:	1c0086b7          	lui	a3,0x1c008
1c008fde:	f4968693          	addi	a3,a3,-183 # 1c007f49 <__l2_priv0_end+0x1cc5>
1c008fe2:	7ed12a23          	sw	a3,2036(sp)
1c008fe6:	0279c6b7          	lui	a3,0x279c
1c008fea:	eb168693          	addi	a3,a3,-335 # 279beb1 <__CTOR_LIST__-0x19864153>
1c008fee:	7ed12c23          	sw	a3,2040(sp)
1c008ff2:	892276b7          	lui	a3,0x89227
1c008ff6:	a4d68693          	addi	a3,a3,-1459 # 89226a4d <pulp__FC+0x89226a4e>
1c008ffa:	6885                	lui	a7,0x1
1c008ffc:	7ed12e23          	sw	a3,2044(sp)
1c009000:	80088893          	addi	a7,a7,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c009004:	e104c6b7          	lui	a3,0xe104c
1c009008:	7bc68693          	addi	a3,a3,1980 # e104c7bc <pulp__FC+0xe104c7bd>
1c00900c:	988a                	add	a7,a7,sp
1c00900e:	00d8a023          	sw	a3,0(a7)
1c009012:	6885                	lui	a7,0x1
1c009014:	0121e6b7          	lui	a3,0x121e
1c009018:	80488893          	addi	a7,a7,-2044 # 804 <__CTOR_LIST__-0x1bfff800>
1c00901c:	8b168693          	addi	a3,a3,-1871 # 121d8b1 <__CTOR_LIST__-0x1ade2753>
1c009020:	988a                	add	a7,a7,sp
1c009022:	00d8a023          	sw	a3,0(a7)
1c009026:	6885                	lui	a7,0x1
1c009028:	cca366b7          	lui	a3,0xcca36
1c00902c:	80888893          	addi	a7,a7,-2040 # 808 <__CTOR_LIST__-0x1bfff7fc>
1c009030:	65368693          	addi	a3,a3,1619 # cca36653 <pulp__FC+0xcca36654>
1c009034:	988a                	add	a7,a7,sp
1c009036:	00d8a023          	sw	a3,0(a7)
1c00903a:	6885                	lui	a7,0x1
1c00903c:	6b4e56b7          	lui	a3,0x6b4e5
1c009040:	80c88893          	addi	a7,a7,-2036 # 80c <__CTOR_LIST__-0x1bfff7f8>
1c009044:	88a68693          	addi	a3,a3,-1910 # 6b4e488a <__l2_shared_end+0x4f4d488a>
1c009048:	988a                	add	a7,a7,sp
1c00904a:	00d8a023          	sw	a3,0(a7)
1c00904e:	6885                	lui	a7,0x1
1c009050:	b8f1e6b7          	lui	a3,0xb8f1e
1c009054:	81088893          	addi	a7,a7,-2032 # 810 <__CTOR_LIST__-0x1bfff7f4>
1c009058:	1c268693          	addi	a3,a3,450 # b8f1e1c2 <pulp__FC+0xb8f1e1c3>
1c00905c:	988a                	add	a7,a7,sp
1c00905e:	00d8a023          	sw	a3,0(a7)
1c009062:	6885                	lui	a7,0x1
1c009064:	2393f6b7          	lui	a3,0x2393f
1c009068:	81488893          	addi	a7,a7,-2028 # 814 <__CTOR_LIST__-0x1bfff7f0>
1c00906c:	18968693          	addi	a3,a3,393 # 2393f189 <__l2_shared_end+0x792f189>
1c009070:	988a                	add	a7,a7,sp
1c009072:	00d8a023          	sw	a3,0(a7)
1c009076:	6885                	lui	a7,0x1
1c009078:	a01a16b7          	lui	a3,0xa01a1
1c00907c:	81888893          	addi	a7,a7,-2024 # 818 <__CTOR_LIST__-0x1bfff7ec>
1c009080:	0e368693          	addi	a3,a3,227 # a01a10e3 <pulp__FC+0xa01a10e4>
1c009084:	988a                	add	a7,a7,sp
1c009086:	00d8a023          	sw	a3,0(a7)
1c00908a:	6885                	lui	a7,0x1
1c00908c:	62eae6b7          	lui	a3,0x62eae
1c009090:	81c88893          	addi	a7,a7,-2020 # 81c <__CTOR_LIST__-0x1bfff7e8>
1c009094:	99a68693          	addi	a3,a3,-1638 # 62ead99a <__l2_shared_end+0x46e9d99a>
1c009098:	988a                	add	a7,a7,sp
1c00909a:	00d8a023          	sw	a3,0(a7)
1c00909e:	6885                	lui	a7,0x1
1c0090a0:	030546b7          	lui	a3,0x3054
1c0090a4:	82088893          	addi	a7,a7,-2016 # 820 <__CTOR_LIST__-0x1bfff7e4>
1c0090a8:	0ba68693          	addi	a3,a3,186 # 30540ba <__CTOR_LIST__-0x18fabf4a>
1c0090ac:	988a                	add	a7,a7,sp
1c0090ae:	00d8a023          	sw	a3,0(a7)
1c0090b2:	6685                	lui	a3,0x1
1c0090b4:	77f1                	lui	a5,0xffffc
1c0090b6:	82468693          	addi	a3,a3,-2012 # 824 <__CTOR_LIST__-0x1bfff7e0>
1c0090ba:	6885                	lui	a7,0x1
1c0090bc:	f9b78513          	addi	a0,a5,-101 # ffffbf9b <pulp__FC+0xffffbf9c>
1c0090c0:	968a                	add	a3,a3,sp
1c0090c2:	82688893          	addi	a7,a7,-2010 # 826 <__CTOR_LIST__-0x1bfff7de>
1c0090c6:	00a69023          	sh	a0,0(a3)
1c0090ca:	988a                	add	a7,a7,sp
1c0090cc:	fb500693          	li	a3,-75
1c0090d0:	6505                	lui	a0,0x1
1c0090d2:	00d88023          	sb	a3,0(a7)
1c0090d6:	82750513          	addi	a0,a0,-2009 # 827 <__CTOR_LIST__-0x1bfff7dd>
1c0090da:	f95586b7          	lui	a3,0xf9558
1c0090de:	09968693          	addi	a3,a3,153 # f9558099 <pulp__FC+0xf955809a>
1c0090e2:	950a                	add	a0,a0,sp
1c0090e4:	6885                	lui	a7,0x1
1c0090e6:	c114                	sw	a3,0(a0)
1c0090e8:	82b88893          	addi	a7,a7,-2005 # 82b <__CTOR_LIST__-0x1bfff7d9>
1c0090ec:	b177c6b7          	lui	a3,0xb177c
1c0090f0:	f3f68693          	addi	a3,a3,-193 # b177bf3f <pulp__FC+0xb177bf40>
1c0090f4:	988a                	add	a7,a7,sp
1c0090f6:	6505                	lui	a0,0x1
1c0090f8:	00d8a023          	sw	a3,0(a7)
1c0090fc:	82f50513          	addi	a0,a0,-2001 # 82f <__CTOR_LIST__-0x1bfff7d5>
1c009100:	6d1136b7          	lui	a3,0x6d113
1c009104:	34468693          	addi	a3,a3,836 # 6d113344 <__l2_shared_end+0x51103344>
1c009108:	950a                	add	a0,a0,sp
1c00910a:	6885                	lui	a7,0x1
1c00910c:	c114                	sw	a3,0(a0)
1c00910e:	83388893          	addi	a7,a7,-1997 # 833 <__CTOR_LIST__-0x1bfff7d1>
1c009112:	264266b7          	lui	a3,0x26426
1c009116:	85968693          	addi	a3,a3,-1959 # 26425859 <__l2_shared_end+0xa415859>
1c00911a:	988a                	add	a7,a7,sp
1c00911c:	6505                	lui	a0,0x1
1c00911e:	00d8a023          	sw	a3,0(a7)
1c009122:	83750513          	addi	a0,a0,-1993 # 837 <__CTOR_LIST__-0x1bfff7cd>
1c009126:	11dae6b7          	lui	a3,0x11dae
1c00912a:	a5468693          	addi	a3,a3,-1452 # 11dada54 <__CTOR_LIST__-0xa2525b0>
1c00912e:	950a                	add	a0,a0,sp
1c009130:	6885                	lui	a7,0x1
1c009132:	c114                	sw	a3,0(a0)
1c009134:	83b88893          	addi	a7,a7,-1989 # 83b <__CTOR_LIST__-0x1bfff7c9>
1c009138:	023f26b7          	lui	a3,0x23f2
1c00913c:	12768693          	addi	a3,a3,295 # 23f2127 <__CTOR_LIST__-0x19c0dedd>
1c009140:	988a                	add	a7,a7,sp
1c009142:	6505                	lui	a0,0x1
1c009144:	00d8a023          	sw	a3,0(a7)
1c009148:	83f50513          	addi	a0,a0,-1985 # 83f <__CTOR_LIST__-0x1bfff7c5>
1c00914c:	a51786b7          	lui	a3,0xa5178
1c009150:	7b768693          	addi	a3,a3,1975 # a51787b7 <pulp__FC+0xa51787b8>
1c009154:	950a                	add	a0,a0,sp
1c009156:	6885                	lui	a7,0x1
1c009158:	c114                	sw	a3,0(a0)
1c00915a:	84388893          	addi	a7,a7,-1981 # 843 <__CTOR_LIST__-0x1bfff7c1>
1c00915e:	714246b7          	lui	a3,0x71424
1c009162:	5a068693          	addi	a3,a3,1440 # 714245a0 <__l2_shared_end+0x554145a0>
1c009166:	988a                	add	a7,a7,sp
1c009168:	6505                	lui	a0,0x1
1c00916a:	00d8a023          	sw	a3,0(a7)
1c00916e:	84750513          	addi	a0,a0,-1977 # 847 <__CTOR_LIST__-0x1bfff7bd>
1c009172:	25c0b6b7          	lui	a3,0x25c0b
1c009176:	0d568693          	addi	a3,a3,213 # 25c0b0d5 <__l2_shared_end+0x9bfb0d5>
1c00917a:	950a                	add	a0,a0,sp
1c00917c:	6885                	lui	a7,0x1
1c00917e:	c114                	sw	a3,0(a0)
1c009180:	84b88893          	addi	a7,a7,-1973 # 84b <__CTOR_LIST__-0x1bfff7b9>
1c009184:	7ac2a6b7          	lui	a3,0x7ac2a
1c009188:	61768693          	addi	a3,a3,1559 # 7ac2a617 <__l2_shared_end+0x5ec1a617>
1c00918c:	988a                	add	a7,a7,sp
1c00918e:	6505                	lui	a0,0x1
1c009190:	00d8a023          	sw	a3,0(a7)
1c009194:	84f50513          	addi	a0,a0,-1969 # 84f <__CTOR_LIST__-0x1bfff7b5>
1c009198:	101036b7          	lui	a3,0x10103
1c00919c:	63c68693          	addi	a3,a3,1596 # 1010363c <__CTOR_LIST__-0xbefc9c8>
1c0091a0:	950a                	add	a0,a0,sp
1c0091a2:	6885                	lui	a7,0x1
1c0091a4:	c114                	sw	a3,0(a0)
1c0091a6:	85388893          	addi	a7,a7,-1965 # 853 <__CTOR_LIST__-0x1bfff7b1>
1c0091aa:	093c76b7          	lui	a3,0x93c7
1c0091ae:	51d68693          	addi	a3,a3,1309 # 93c751d <__CTOR_LIST__-0x12c38ae7>
1c0091b2:	988a                	add	a7,a7,sp
1c0091b4:	6505                	lui	a0,0x1
1c0091b6:	00d8a023          	sw	a3,0(a7)
1c0091ba:	85750513          	addi	a0,a0,-1961 # 857 <__CTOR_LIST__-0x1bfff7ad>
1c0091be:	777156b7          	lui	a3,0x77715
1c0091c2:	5a268693          	addi	a3,a3,1442 # 777155a2 <__l2_shared_end+0x5b7055a2>
1c0091c6:	950a                	add	a0,a0,sp
1c0091c8:	6885                	lui	a7,0x1
1c0091ca:	c114                	sw	a3,0(a0)
1c0091cc:	85b88893          	addi	a7,a7,-1957 # 85b <__CTOR_LIST__-0x1bfff7a9>
1c0091d0:	13dc76b7          	lui	a3,0x13dc7
1c0091d4:	75468693          	addi	a3,a3,1876 # 13dc7754 <__CTOR_LIST__-0x82388b0>
1c0091d8:	988a                	add	a7,a7,sp
1c0091da:	6505                	lui	a0,0x1
1c0091dc:	00d8a023          	sw	a3,0(a7)
1c0091e0:	85f50513          	addi	a0,a0,-1953 # 85f <__CTOR_LIST__-0x1bfff7a5>
1c0091e4:	db04e6b7          	lui	a3,0xdb04e
1c0091e8:	4b268693          	addi	a3,a3,1202 # db04e4b2 <pulp__FC+0xdb04e4b3>
1c0091ec:	950a                	add	a0,a0,sp
1c0091ee:	6885                	lui	a7,0x1
1c0091f0:	c114                	sw	a3,0(a0)
1c0091f2:	86388893          	addi	a7,a7,-1949 # 863 <__CTOR_LIST__-0x1bfff7a1>
1c0091f6:	a9b966b7          	lui	a3,0xa9b96
1c0091fa:	54968693          	addi	a3,a3,1353 # a9b96549 <pulp__FC+0xa9b9654a>
1c0091fe:	988a                	add	a7,a7,sp
1c009200:	6505                	lui	a0,0x1
1c009202:	00d8a023          	sw	a3,0(a7)
1c009206:	86750513          	addi	a0,a0,-1945 # 867 <__CTOR_LIST__-0x1bfff79d>
1c00920a:	c73006b7          	lui	a3,0xc7300
1c00920e:	33568693          	addi	a3,a3,821 # c7300335 <pulp__FC+0xc7300336>
1c009212:	950a                	add	a0,a0,sp
1c009214:	6885                	lui	a7,0x1
1c009216:	c114                	sw	a3,0(a0)
1c009218:	86b88893          	addi	a7,a7,-1941 # 86b <__CTOR_LIST__-0x1bfff799>
1c00921c:	423696b7          	lui	a3,0x42369
1c009220:	a3a68693          	addi	a3,a3,-1478 # 42368a3a <__l2_shared_end+0x26358a3a>
1c009224:	988a                	add	a7,a7,sp
1c009226:	6505                	lui	a0,0x1
1c009228:	00d8a023          	sw	a3,0(a7)
1c00922c:	86f50513          	addi	a0,a0,-1937 # 86f <__CTOR_LIST__-0x1bfff795>
1c009230:	a2f8a6b7          	lui	a3,0xa2f8a
1c009234:	ad368693          	addi	a3,a3,-1325 # a2f89ad3 <pulp__FC+0xa2f89ad4>
1c009238:	950a                	add	a0,a0,sp
1c00923a:	6885                	lui	a7,0x1
1c00923c:	c114                	sw	a3,0(a0)
1c00923e:	87388893          	addi	a7,a7,-1933 # 873 <__CTOR_LIST__-0x1bfff791>
1c009242:	85ab46b7          	lui	a3,0x85ab4
1c009246:	93868693          	addi	a3,a3,-1736 # 85ab3938 <pulp__FC+0x85ab3939>
1c00924a:	988a                	add	a7,a7,sp
1c00924c:	6505                	lui	a0,0x1
1c00924e:	00d8a023          	sw	a3,0(a7)
1c009252:	87750513          	addi	a0,a0,-1929 # 877 <__CTOR_LIST__-0x1bfff78d>
1c009256:	125b36b7          	lui	a3,0x125b3
1c00925a:	5c668693          	addi	a3,a3,1478 # 125b35c6 <__CTOR_LIST__-0x9a4ca3e>
1c00925e:	950a                	add	a0,a0,sp
1c009260:	6885                	lui	a7,0x1
1c009262:	c114                	sw	a3,0(a0)
1c009264:	87b88893          	addi	a7,a7,-1925 # 87b <__CTOR_LIST__-0x1bfff789>
1c009268:	49f886b7          	lui	a3,0x49f88
1c00926c:	9f268693          	addi	a3,a3,-1550 # 49f879f2 <__l2_shared_end+0x2df779f2>
1c009270:	988a                	add	a7,a7,sp
1c009272:	6505                	lui	a0,0x1
1c009274:	00d8a023          	sw	a3,0(a7)
1c009278:	87f50513          	addi	a0,a0,-1921 # 87f <__CTOR_LIST__-0x1bfff785>
1c00927c:	0d2846b7          	lui	a3,0xd284
1c009280:	c8168693          	addi	a3,a3,-895 # d283c81 <__CTOR_LIST__-0xed7c383>
1c009284:	950a                	add	a0,a0,sp
1c009286:	6885                	lui	a7,0x1
1c009288:	c114                	sw	a3,0(a0)
1c00928a:	88388893          	addi	a7,a7,-1917 # 883 <__CTOR_LIST__-0x1bfff781>
1c00928e:	3e91c6b7          	lui	a3,0x3e91c
1c009292:	55468693          	addi	a3,a3,1364 # 3e91c554 <__l2_shared_end+0x2290c554>
1c009296:	988a                	add	a7,a7,sp
1c009298:	6505                	lui	a0,0x1
1c00929a:	00d8a023          	sw	a3,0(a7)
1c00929e:	88750513          	addi	a0,a0,-1913 # 887 <__CTOR_LIST__-0x1bfff77d>
1c0092a2:	6a94b6b7          	lui	a3,0x6a94b
1c0092a6:	69968693          	addi	a3,a3,1689 # 6a94b699 <__l2_shared_end+0x4e93b699>
1c0092aa:	950a                	add	a0,a0,sp
1c0092ac:	6885                	lui	a7,0x1
1c0092ae:	c114                	sw	a3,0(a0)
1c0092b0:	88b88893          	addi	a7,a7,-1909 # 88b <__CTOR_LIST__-0x1bfff779>
1c0092b4:	2c01b6b7          	lui	a3,0x2c01b
1c0092b8:	f0a68693          	addi	a3,a3,-246 # 2c01af0a <__l2_shared_end+0x1000af0a>
1c0092bc:	988a                	add	a7,a7,sp
1c0092be:	6505                	lui	a0,0x1
1c0092c0:	00d8a023          	sw	a3,0(a7)
1c0092c4:	88f50513          	addi	a0,a0,-1905 # 88f <__CTOR_LIST__-0x1bfff775>
1c0092c8:	5302b6b7          	lui	a3,0x5302b
1c0092cc:	b8c68693          	addi	a3,a3,-1140 # 5302ab8c <__l2_shared_end+0x3701ab8c>
1c0092d0:	950a                	add	a0,a0,sp
1c0092d2:	6885                	lui	a7,0x1
1c0092d4:	c114                	sw	a3,0(a0)
1c0092d6:	89388893          	addi	a7,a7,-1901 # 893 <__CTOR_LIST__-0x1bfff771>
1c0092da:	f055b6b7          	lui	a3,0xf055b
1c0092de:	29668693          	addi	a3,a3,662 # f055b296 <pulp__FC+0xf055b297>
1c0092e2:	988a                	add	a7,a7,sp
1c0092e4:	6505                	lui	a0,0x1
1c0092e6:	00d8a023          	sw	a3,0(a7)
1c0092ea:	89750513          	addi	a0,a0,-1897 # 897 <__CTOR_LIST__-0x1bfff76d>
1c0092ee:	c737e6b7          	lui	a3,0xc737e
1c0092f2:	80268693          	addi	a3,a3,-2046 # c737d802 <pulp__FC+0xc737d803>
1c0092f6:	950a                	add	a0,a0,sp
1c0092f8:	6885                	lui	a7,0x1
1c0092fa:	c114                	sw	a3,0(a0)
1c0092fc:	89b88893          	addi	a7,a7,-1893 # 89b <__CTOR_LIST__-0x1bfff769>
1c009300:	4a2ad6b7          	lui	a3,0x4a2ad
1c009304:	46168693          	addi	a3,a3,1121 # 4a2ad461 <__l2_shared_end+0x2e29d461>
1c009308:	988a                	add	a7,a7,sp
1c00930a:	6505                	lui	a0,0x1
1c00930c:	00d8a023          	sw	a3,0(a7)
1c009310:	89f50513          	addi	a0,a0,-1889 # 89f <__CTOR_LIST__-0x1bfff765>
1c009314:	f4c546b7          	lui	a3,0xf4c54
1c009318:	8eb68693          	addi	a3,a3,-1813 # f4c538eb <pulp__FC+0xf4c538ec>
1c00931c:	950a                	add	a0,a0,sp
1c00931e:	6885                	lui	a7,0x1
1c009320:	c114                	sw	a3,0(a0)
1c009322:	8a388893          	addi	a7,a7,-1885 # 8a3 <__CTOR_LIST__-0x1bfff761>
1c009326:	9ef7b6b7          	lui	a3,0x9ef7b
1c00932a:	a5668693          	addi	a3,a3,-1450 # 9ef7aa56 <pulp__FC+0x9ef7aa57>
1c00932e:	988a                	add	a7,a7,sp
1c009330:	6505                	lui	a0,0x1
1c009332:	00d8a023          	sw	a3,0(a7)
1c009336:	8a750513          	addi	a0,a0,-1881 # 8a7 <__CTOR_LIST__-0x1bfff75d>
1c00933a:	c60026b7          	lui	a3,0xc6002
1c00933e:	71668693          	addi	a3,a3,1814 # c6002716 <pulp__FC+0xc6002717>
1c009342:	950a                	add	a0,a0,sp
1c009344:	6885                	lui	a7,0x1
1c009346:	c114                	sw	a3,0(a0)
1c009348:	8ab88893          	addi	a7,a7,-1877 # 8ab <__CTOR_LIST__-0x1bfff759>
1c00934c:	ca8e06b7          	lui	a3,0xca8e0
1c009350:	4b468693          	addi	a3,a3,1204 # ca8e04b4 <pulp__FC+0xca8e04b5>
1c009354:	988a                	add	a7,a7,sp
1c009356:	6505                	lui	a0,0x1
1c009358:	00d8a023          	sw	a3,0(a7)
1c00935c:	8af50513          	addi	a0,a0,-1873 # 8af <__CTOR_LIST__-0x1bfff755>
1c009360:	6773a6b7          	lui	a3,0x6773a
1c009364:	a6f68693          	addi	a3,a3,-1425 # 67739a6f <__l2_shared_end+0x4b729a6f>
1c009368:	950a                	add	a0,a0,sp
1c00936a:	6885                	lui	a7,0x1
1c00936c:	c114                	sw	a3,0(a0)
1c00936e:	8b388893          	addi	a7,a7,-1869 # 8b3 <__CTOR_LIST__-0x1bfff751>
1c009372:	d63806b7          	lui	a3,0xd6380
1c009376:	2f968693          	addi	a3,a3,761 # d63802f9 <pulp__FC+0xd63802fa>
1c00937a:	988a                	add	a7,a7,sp
1c00937c:	6505                	lui	a0,0x1
1c00937e:	00d8a023          	sw	a3,0(a7)
1c009382:	8b750513          	addi	a0,a0,-1865 # 8b7 <__CTOR_LIST__-0x1bfff74d>
1c009386:	6a8ed6b7          	lui	a3,0x6a8ed
1c00938a:	f7b68693          	addi	a3,a3,-133 # 6a8ecf7b <__l2_shared_end+0x4e8dcf7b>
1c00938e:	950a                	add	a0,a0,sp
1c009390:	6885                	lui	a7,0x1
1c009392:	c114                	sw	a3,0(a0)
1c009394:	8bb88893          	addi	a7,a7,-1861 # 8bb <__CTOR_LIST__-0x1bfff749>
1c009398:	3c5596b7          	lui	a3,0x3c559
1c00939c:	a0d68693          	addi	a3,a3,-1523 # 3c558a0d <__l2_shared_end+0x20548a0d>
1c0093a0:	988a                	add	a7,a7,sp
1c0093a2:	6505                	lui	a0,0x1
1c0093a4:	00d8a023          	sw	a3,0(a7)
1c0093a8:	8bf50513          	addi	a0,a0,-1857 # 8bf <__CTOR_LIST__-0x1bfff745>
1c0093ac:	f92216b7          	lui	a3,0xf9221
1c0093b0:	50768693          	addi	a3,a3,1287 # f9221507 <pulp__FC+0xf9221508>
1c0093b4:	950a                	add	a0,a0,sp
1c0093b6:	6885                	lui	a7,0x1
1c0093b8:	c114                	sw	a3,0(a0)
1c0093ba:	8c388893          	addi	a7,a7,-1853 # 8c3 <__CTOR_LIST__-0x1bfff741>
1c0093be:	284e46b7          	lui	a3,0x284e4
1c0093c2:	9d268693          	addi	a3,a3,-1582 # 284e39d2 <__l2_shared_end+0xc4d39d2>
1c0093c6:	988a                	add	a7,a7,sp
1c0093c8:	6505                	lui	a0,0x1
1c0093ca:	00d8a023          	sw	a3,0(a7)
1c0093ce:	8c750513          	addi	a0,a0,-1849 # 8c7 <__CTOR_LIST__-0x1bfff73d>
1c0093d2:	482046b7          	lui	a3,0x48204
1c0093d6:	d4868693          	addi	a3,a3,-696 # 48203d48 <__l2_shared_end+0x2c1f3d48>
1c0093da:	950a                	add	a0,a0,sp
1c0093dc:	6885                	lui	a7,0x1
1c0093de:	c114                	sw	a3,0(a0)
1c0093e0:	8cb88893          	addi	a7,a7,-1845 # 8cb <__CTOR_LIST__-0x1bfff739>
1c0093e4:	9c8f36b7          	lui	a3,0x9c8f3
1c0093e8:	abe68693          	addi	a3,a3,-1346 # 9c8f2abe <pulp__FC+0x9c8f2abf>
1c0093ec:	988a                	add	a7,a7,sp
1c0093ee:	6505                	lui	a0,0x1
1c0093f0:	00d8a023          	sw	a3,0(a7)
1c0093f4:	8cf50513          	addi	a0,a0,-1841 # 8cf <__CTOR_LIST__-0x1bfff735>
1c0093f8:	993996b7          	lui	a3,0x99399
1c0093fc:	e8c68693          	addi	a3,a3,-372 # 99398e8c <pulp__FC+0x99398e8d>
1c009400:	950a                	add	a0,a0,sp
1c009402:	6885                	lui	a7,0x1
1c009404:	c114                	sw	a3,0(a0)
1c009406:	8d388893          	addi	a7,a7,-1837 # 8d3 <__CTOR_LIST__-0x1bfff731>
1c00940a:	3c2746b7          	lui	a3,0x3c274
1c00940e:	11a68693          	addi	a3,a3,282 # 3c27411a <__l2_shared_end+0x2026411a>
1c009412:	988a                	add	a7,a7,sp
1c009414:	6505                	lui	a0,0x1
1c009416:	00d8a023          	sw	a3,0(a7)
1c00941a:	8d750513          	addi	a0,a0,-1833 # 8d7 <__CTOR_LIST__-0x1bfff72d>
1c00941e:	fcaeb6b7          	lui	a3,0xfcaeb
1c009422:	c7e68693          	addi	a3,a3,-898 # fcaeac7e <pulp__FC+0xfcaeac7f>
1c009426:	950a                	add	a0,a0,sp
1c009428:	6885                	lui	a7,0x1
1c00942a:	c114                	sw	a3,0(a0)
1c00942c:	8db88893          	addi	a7,a7,-1829 # 8db <__CTOR_LIST__-0x1bfff729>
1c009430:	e88b36b7          	lui	a3,0xe88b3
1c009434:	06a68693          	addi	a3,a3,106 # e88b306a <pulp__FC+0xe88b306b>
1c009438:	988a                	add	a7,a7,sp
1c00943a:	6505                	lui	a0,0x1
1c00943c:	00d8a023          	sw	a3,0(a7)
1c009440:	8df50513          	addi	a0,a0,-1825 # 8df <__CTOR_LIST__-0x1bfff725>
1c009444:	415bb6b7          	lui	a3,0x415bb
1c009448:	47068693          	addi	a3,a3,1136 # 415bb470 <__l2_shared_end+0x255ab470>
1c00944c:	950a                	add	a0,a0,sp
1c00944e:	6885                	lui	a7,0x1
1c009450:	c114                	sw	a3,0(a0)
1c009452:	8e388893          	addi	a7,a7,-1821 # 8e3 <__CTOR_LIST__-0x1bfff721>
1c009456:	951266b7          	lui	a3,0x95126
1c00945a:	41768693          	addi	a3,a3,1047 # 95126417 <pulp__FC+0x95126418>
1c00945e:	988a                	add	a7,a7,sp
1c009460:	6505                	lui	a0,0x1
1c009462:	00d8a023          	sw	a3,0(a7)
1c009466:	8e750513          	addi	a0,a0,-1817 # 8e7 <__CTOR_LIST__-0x1bfff71d>
1c00946a:	d80f26b7          	lui	a3,0xd80f2
1c00946e:	a4a68693          	addi	a3,a3,-1462 # d80f1a4a <pulp__FC+0xd80f1a4b>
1c009472:	950a                	add	a0,a0,sp
1c009474:	6885                	lui	a7,0x1
1c009476:	c114                	sw	a3,0(a0)
1c009478:	8eb88893          	addi	a7,a7,-1813 # 8eb <__CTOR_LIST__-0x1bfff719>
1c00947c:	5a2a36b7          	lui	a3,0x5a2a3
1c009480:	63d68693          	addi	a3,a3,1597 # 5a2a363d <__l2_shared_end+0x3e29363d>
1c009484:	988a                	add	a7,a7,sp
1c009486:	6505                	lui	a0,0x1
1c009488:	00d8a023          	sw	a3,0(a7)
1c00948c:	8ef50513          	addi	a0,a0,-1809 # 8ef <__CTOR_LIST__-0x1bfff715>
1c009490:	3d6696b7          	lui	a3,0x3d669
1c009494:	8b268693          	addi	a3,a3,-1870 # 3d6688b2 <__l2_shared_end+0x216588b2>
1c009498:	950a                	add	a0,a0,sp
1c00949a:	6885                	lui	a7,0x1
1c00949c:	c114                	sw	a3,0(a0)
1c00949e:	8f388893          	addi	a7,a7,-1805 # 8f3 <__CTOR_LIST__-0x1bfff711>
1c0094a2:	b65656b7          	lui	a3,0xb6565
1c0094a6:	4ec68693          	addi	a3,a3,1260 # b65654ec <pulp__FC+0xb65654ed>
1c0094aa:	988a                	add	a7,a7,sp
1c0094ac:	6505                	lui	a0,0x1
1c0094ae:	00d8a023          	sw	a3,0(a7)
1c0094b2:	8f750513          	addi	a0,a0,-1801 # 8f7 <__CTOR_LIST__-0x1bfff70d>
1c0094b6:	2c0b76b7          	lui	a3,0x2c0b7
1c0094ba:	d2868693          	addi	a3,a3,-728 # 2c0b6d28 <__l2_shared_end+0x100a6d28>
1c0094be:	950a                	add	a0,a0,sp
1c0094c0:	6885                	lui	a7,0x1
1c0094c2:	c114                	sw	a3,0(a0)
1c0094c4:	8fb88893          	addi	a7,a7,-1797 # 8fb <__CTOR_LIST__-0x1bfff709>
1c0094c8:	2219b6b7          	lui	a3,0x2219b
1c0094cc:	0ec68693          	addi	a3,a3,236 # 2219b0ec <__l2_shared_end+0x618b0ec>
1c0094d0:	988a                	add	a7,a7,sp
1c0094d2:	6505                	lui	a0,0x1
1c0094d4:	00d8a023          	sw	a3,0(a7)
1c0094d8:	8ff50513          	addi	a0,a0,-1793 # 8ff <__CTOR_LIST__-0x1bfff705>
1c0094dc:	384746b7          	lui	a3,0x38474
1c0094e0:	dfb68693          	addi	a3,a3,-517 # 38473dfb <__l2_shared_end+0x1c463dfb>
1c0094e4:	950a                	add	a0,a0,sp
1c0094e6:	6885                	lui	a7,0x1
1c0094e8:	c114                	sw	a3,0(a0)
1c0094ea:	90388893          	addi	a7,a7,-1789 # 903 <__CTOR_LIST__-0x1bfff701>
1c0094ee:	862bf6b7          	lui	a3,0x862bf
1c0094f2:	a0268693          	addi	a3,a3,-1534 # 862bea02 <pulp__FC+0x862bea03>
1c0094f6:	988a                	add	a7,a7,sp
1c0094f8:	6505                	lui	a0,0x1
1c0094fa:	00d8a023          	sw	a3,0(a7)
1c0094fe:	90750513          	addi	a0,a0,-1785 # 907 <__CTOR_LIST__-0x1bfff6fd>
1c009502:	02cea6b7          	lui	a3,0x2cea
1c009506:	b6368693          	addi	a3,a3,-1181 # 2ce9b63 <__CTOR_LIST__-0x193164a1>
1c00950a:	950a                	add	a0,a0,sp
1c00950c:	6885                	lui	a7,0x1
1c00950e:	c114                	sw	a3,0(a0)
1c009510:	90b88893          	addi	a7,a7,-1781 # 90b <__CTOR_LIST__-0x1bfff6f9>
1c009514:	263906b7          	lui	a3,0x26390
1c009518:	34568693          	addi	a3,a3,837 # 26390345 <__l2_shared_end+0xa380345>
1c00951c:	988a                	add	a7,a7,sp
1c00951e:	6505                	lui	a0,0x1
1c009520:	00d8a023          	sw	a3,0(a7)
1c009524:	90f50513          	addi	a0,a0,-1777 # 90f <__CTOR_LIST__-0x1bfff6f5>
1c009528:	14b206b7          	lui	a3,0x14b20
1c00952c:	f1c68693          	addi	a3,a3,-228 # 14b1ff1c <__CTOR_LIST__-0x74e00e8>
1c009530:	950a                	add	a0,a0,sp
1c009532:	6885                	lui	a7,0x1
1c009534:	c114                	sw	a3,0(a0)
1c009536:	91388893          	addi	a7,a7,-1773 # 913 <__CTOR_LIST__-0x1bfff6f1>
1c00953a:	e925e6b7          	lui	a3,0xe925e
1c00953e:	7e168693          	addi	a3,a3,2017 # e925e7e1 <pulp__FC+0xe925e7e2>
1c009542:	988a                	add	a7,a7,sp
1c009544:	6505                	lui	a0,0x1
1c009546:	00d8a023          	sw	a3,0(a7)
1c00954a:	91750513          	addi	a0,a0,-1769 # 917 <__CTOR_LIST__-0x1bfff6ed>
1c00954e:	6a8276b7          	lui	a3,0x6a827
1c009552:	70668693          	addi	a3,a3,1798 # 6a827706 <__l2_shared_end+0x4e817706>
1c009556:	950a                	add	a0,a0,sp
1c009558:	6885                	lui	a7,0x1
1c00955a:	c114                	sw	a3,0(a0)
1c00955c:	91b88893          	addi	a7,a7,-1765 # 91b <__CTOR_LIST__-0x1bfff6e9>
1c009560:	86f696b7          	lui	a3,0x86f69
1c009564:	81668693          	addi	a3,a3,-2026 # 86f68816 <pulp__FC+0x86f68817>
1c009568:	988a                	add	a7,a7,sp
1c00956a:	6505                	lui	a0,0x1
1c00956c:	00d8a023          	sw	a3,0(a7)
1c009570:	91f50513          	addi	a0,a0,-1761 # 91f <__CTOR_LIST__-0x1bfff6e5>
1c009574:	76e9                	lui	a3,0xffffa
1c009576:	6885                	lui	a7,0x1
1c009578:	ab268693          	addi	a3,a3,-1358 # ffff9ab2 <pulp__FC+0xffff9ab3>
1c00957c:	950a                	add	a0,a0,sp
1c00957e:	92188893          	addi	a7,a7,-1759 # 921 <__CTOR_LIST__-0x1bfff6e3>
1c009582:	00d51023          	sh	a3,0(a0)
1c009586:	988a                	add	a7,a7,sp
1c009588:	07800693          	li	a3,120
1c00958c:	6505                	lui	a0,0x1
1c00958e:	00d88023          	sb	a3,0(a7)
1c009592:	92250513          	addi	a0,a0,-1758 # 922 <__CTOR_LIST__-0x1bfff6e2>
1c009596:	2298a6b7          	lui	a3,0x2298a
1c00959a:	c7768693          	addi	a3,a3,-905 # 22989c77 <__l2_shared_end+0x6979c77>
1c00959e:	950a                	add	a0,a0,sp
1c0095a0:	6885                	lui	a7,0x1
1c0095a2:	c114                	sw	a3,0(a0)
1c0095a4:	92688893          	addi	a7,a7,-1754 # 926 <__CTOR_LIST__-0x1bfff6de>
1c0095a8:	c5af66b7          	lui	a3,0xc5af6
1c0095ac:	d3168693          	addi	a3,a3,-719 # c5af5d31 <pulp__FC+0xc5af5d32>
1c0095b0:	988a                	add	a7,a7,sp
1c0095b2:	6505                	lui	a0,0x1
1c0095b4:	00d8a023          	sw	a3,0(a7)
1c0095b8:	92a50513          	addi	a0,a0,-1750 # 92a <__CTOR_LIST__-0x1bfff6da>
1c0095bc:	8ce956b7          	lui	a3,0x8ce95
1c0095c0:	35768693          	addi	a3,a3,855 # 8ce95357 <pulp__FC+0x8ce95358>
1c0095c4:	950a                	add	a0,a0,sp
1c0095c6:	6885                	lui	a7,0x1
1c0095c8:	c114                	sw	a3,0(a0)
1c0095ca:	92e88893          	addi	a7,a7,-1746 # 92e <__CTOR_LIST__-0x1bfff6d6>
1c0095ce:	1f22d6b7          	lui	a3,0x1f22d
1c0095d2:	38e68693          	addi	a3,a3,910 # 1f22d38e <__l2_shared_end+0x321d38e>
1c0095d6:	988a                	add	a7,a7,sp
1c0095d8:	6505                	lui	a0,0x1
1c0095da:	00d8a023          	sw	a3,0(a7)
1c0095de:	93250513          	addi	a0,a0,-1742 # 932 <__CTOR_LIST__-0x1bfff6d2>
1c0095e2:	802036b7          	lui	a3,0x80203
1c0095e6:	22b68693          	addi	a3,a3,555 # 8020322b <pulp__FC+0x8020322c>
1c0095ea:	950a                	add	a0,a0,sp
1c0095ec:	6885                	lui	a7,0x1
1c0095ee:	c114                	sw	a3,0(a0)
1c0095f0:	93688893          	addi	a7,a7,-1738 # 936 <__CTOR_LIST__-0x1bfff6ce>
1c0095f4:	982896b7          	lui	a3,0x98289
1c0095f8:	a5c68693          	addi	a3,a3,-1444 # 98288a5c <pulp__FC+0x98288a5d>
1c0095fc:	988a                	add	a7,a7,sp
1c0095fe:	6505                	lui	a0,0x1
1c009600:	00d8a023          	sw	a3,0(a7)
1c009604:	93a50513          	addi	a0,a0,-1734 # 93a <__CTOR_LIST__-0x1bfff6ca>
1c009608:	7d2056b7          	lui	a3,0x7d205
1c00960c:	53368693          	addi	a3,a3,1331 # 7d205533 <__l2_shared_end+0x611f5533>
1c009610:	950a                	add	a0,a0,sp
1c009612:	6885                	lui	a7,0x1
1c009614:	c114                	sw	a3,0(a0)
1c009616:	93e88893          	addi	a7,a7,-1730 # 93e <__CTOR_LIST__-0x1bfff6c6>
1c00961a:	2fb776b7          	lui	a3,0x2fb77
1c00961e:	fa368693          	addi	a3,a3,-93 # 2fb76fa3 <__l2_shared_end+0x13b66fa3>
1c009622:	988a                	add	a7,a7,sp
1c009624:	6505                	lui	a0,0x1
1c009626:	00d8a023          	sw	a3,0(a7)
1c00962a:	94250513          	addi	a0,a0,-1726 # 942 <__CTOR_LIST__-0x1bfff6c2>
1c00962e:	0a5cd6b7          	lui	a3,0xa5cd
1c009632:	89b68693          	addi	a3,a3,-1893 # a5cc89b <__CTOR_LIST__-0x11a33769>
1c009636:	950a                	add	a0,a0,sp
1c009638:	6885                	lui	a7,0x1
1c00963a:	c114                	sw	a3,0(a0)
1c00963c:	94688893          	addi	a7,a7,-1722 # 946 <__CTOR_LIST__-0x1bfff6be>
1c009640:	41d0c6b7          	lui	a3,0x41d0c
1c009644:	91368693          	addi	a3,a3,-1773 # 41d0b913 <__l2_shared_end+0x25cfb913>
1c009648:	988a                	add	a7,a7,sp
1c00964a:	6505                	lui	a0,0x1
1c00964c:	00d8a023          	sw	a3,0(a7)
1c009650:	94a50513          	addi	a0,a0,-1718 # 94a <__CTOR_LIST__-0x1bfff6ba>
1c009654:	83d576b7          	lui	a3,0x83d57
1c009658:	f5868693          	addi	a3,a3,-168 # 83d56f58 <pulp__FC+0x83d56f59>
1c00965c:	950a                	add	a0,a0,sp
1c00965e:	6885                	lui	a7,0x1
1c009660:	c114                	sw	a3,0(a0)
1c009662:	94e88893          	addi	a7,a7,-1714 # 94e <__CTOR_LIST__-0x1bfff6b6>
1c009666:	fd2ab6b7          	lui	a3,0xfd2ab
1c00966a:	1fe68693          	addi	a3,a3,510 # fd2ab1fe <pulp__FC+0xfd2ab1ff>
1c00966e:	988a                	add	a7,a7,sp
1c009670:	6505                	lui	a0,0x1
1c009672:	00d8a023          	sw	a3,0(a7)
1c009676:	95250513          	addi	a0,a0,-1710 # 952 <__CTOR_LIST__-0x1bfff6b2>
1c00967a:	d32d46b7          	lui	a3,0xd32d4
1c00967e:	05a68693          	addi	a3,a3,90 # d32d405a <pulp__FC+0xd32d405b>
1c009682:	950a                	add	a0,a0,sp
1c009684:	6885                	lui	a7,0x1
1c009686:	c114                	sw	a3,0(a0)
1c009688:	95688893          	addi	a7,a7,-1706 # 956 <__CTOR_LIST__-0x1bfff6ae>
1c00968c:	3f5446b7          	lui	a3,0x3f544
1c009690:	33b68693          	addi	a3,a3,827 # 3f54433b <__l2_shared_end+0x2353433b>
1c009694:	988a                	add	a7,a7,sp
1c009696:	6505                	lui	a0,0x1
1c009698:	00d8a023          	sw	a3,0(a7)
1c00969c:	95a50513          	addi	a0,a0,-1702 # 95a <__CTOR_LIST__-0x1bfff6aa>
1c0096a0:	43eba6b7          	lui	a3,0x43eba
1c0096a4:	45f68693          	addi	a3,a3,1119 # 43eba45f <__l2_shared_end+0x27eaa45f>
1c0096a8:	950a                	add	a0,a0,sp
1c0096aa:	6885                	lui	a7,0x1
1c0096ac:	c114                	sw	a3,0(a0)
1c0096ae:	95e88893          	addi	a7,a7,-1698 # 95e <__CTOR_LIST__-0x1bfff6a6>
1c0096b2:	492396b7          	lui	a3,0x49239
1c0096b6:	d6c68693          	addi	a3,a3,-660 # 49238d6c <__l2_shared_end+0x2d228d6c>
1c0096ba:	988a                	add	a7,a7,sp
1c0096bc:	6505                	lui	a0,0x1
1c0096be:	00d8a023          	sw	a3,0(a7)
1c0096c2:	96250513          	addi	a0,a0,-1694 # 962 <__CTOR_LIST__-0x1bfff6a2>
1c0096c6:	9a2736b7          	lui	a3,0x9a273
1c0096ca:	17b68693          	addi	a3,a3,379 # 9a27317b <pulp__FC+0x9a27317c>
1c0096ce:	950a                	add	a0,a0,sp
1c0096d0:	6885                	lui	a7,0x1
1c0096d2:	c114                	sw	a3,0(a0)
1c0096d4:	96688893          	addi	a7,a7,-1690 # 966 <__CTOR_LIST__-0x1bfff69e>
1c0096d8:	915f76b7          	lui	a3,0x915f7
1c0096dc:	18b68693          	addi	a3,a3,395 # 915f718b <pulp__FC+0x915f718c>
1c0096e0:	988a                	add	a7,a7,sp
1c0096e2:	6505                	lui	a0,0x1
1c0096e4:	00d8a023          	sw	a3,0(a7)
1c0096e8:	96a50513          	addi	a0,a0,-1686 # 96a <__CTOR_LIST__-0x1bfff69a>
1c0096ec:	81a136b7          	lui	a3,0x81a13
1c0096f0:	02f68693          	addi	a3,a3,47 # 81a1302f <pulp__FC+0x81a13030>
1c0096f4:	950a                	add	a0,a0,sp
1c0096f6:	6885                	lui	a7,0x1
1c0096f8:	c114                	sw	a3,0(a0)
1c0096fa:	96e88893          	addi	a7,a7,-1682 # 96e <__CTOR_LIST__-0x1bfff696>
1c0096fe:	917066b7          	lui	a3,0x91706
1c009702:	26668693          	addi	a3,a3,614 # 91706266 <pulp__FC+0x91706267>
1c009706:	988a                	add	a7,a7,sp
1c009708:	6505                	lui	a0,0x1
1c00970a:	00d8a023          	sw	a3,0(a7)
1c00970e:	97250513          	addi	a0,a0,-1678 # 972 <__CTOR_LIST__-0x1bfff692>
1c009712:	5972c6b7          	lui	a3,0x5972c
1c009716:	d3b68693          	addi	a3,a3,-709 # 5972bd3b <__l2_shared_end+0x3d71bd3b>
1c00971a:	950a                	add	a0,a0,sp
1c00971c:	6885                	lui	a7,0x1
1c00971e:	c114                	sw	a3,0(a0)
1c009720:	97688893          	addi	a7,a7,-1674 # 976 <__CTOR_LIST__-0x1bfff68e>
1c009724:	65cdc6b7          	lui	a3,0x65cdc
1c009728:	98e68693          	addi	a3,a3,-1650 # 65cdb98e <__l2_shared_end+0x49ccb98e>
1c00972c:	988a                	add	a7,a7,sp
1c00972e:	6505                	lui	a0,0x1
1c009730:	00d8a023          	sw	a3,0(a7)
1c009734:	97a50513          	addi	a0,a0,-1670 # 97a <__CTOR_LIST__-0x1bfff68a>
1c009738:	0f68e6b7          	lui	a3,0xf68e
1c00973c:	aa668693          	addi	a3,a3,-1370 # f68daa6 <__CTOR_LIST__-0xc97255e>
1c009740:	950a                	add	a0,a0,sp
1c009742:	6885                	lui	a7,0x1
1c009744:	c114                	sw	a3,0(a0)
1c009746:	97e88893          	addi	a7,a7,-1666 # 97e <__CTOR_LIST__-0x1bfff686>
1c00974a:	2a3e76b7          	lui	a3,0x2a3e7
1c00974e:	b5c68693          	addi	a3,a3,-1188 # 2a3e6b5c <__l2_shared_end+0xe3d6b5c>
1c009752:	988a                	add	a7,a7,sp
1c009754:	6505                	lui	a0,0x1
1c009756:	00d8a023          	sw	a3,0(a7)
1c00975a:	98250513          	addi	a0,a0,-1662 # 982 <__CTOR_LIST__-0x1bfff682>
1c00975e:	c4c9a6b7          	lui	a3,0xc4c9a
1c009762:	62e68693          	addi	a3,a3,1582 # c4c9a62e <pulp__FC+0xc4c9a62f>
1c009766:	950a                	add	a0,a0,sp
1c009768:	6885                	lui	a7,0x1
1c00976a:	c114                	sw	a3,0(a0)
1c00976c:	98688893          	addi	a7,a7,-1658 # 986 <__CTOR_LIST__-0x1bfff67e>
1c009770:	374a06b7          	lui	a3,0x374a0
1c009774:	c7668693          	addi	a3,a3,-906 # 3749fc76 <__l2_shared_end+0x1b48fc76>
1c009778:	988a                	add	a7,a7,sp
1c00977a:	6505                	lui	a0,0x1
1c00977c:	00d8a023          	sw	a3,0(a7)
1c009780:	98a50513          	addi	a0,a0,-1654 # 98a <__CTOR_LIST__-0x1bfff67a>
1c009784:	93c916b7          	lui	a3,0x93c91
1c009788:	3b068693          	addi	a3,a3,944 # 93c913b0 <pulp__FC+0x93c913b1>
1c00978c:	950a                	add	a0,a0,sp
1c00978e:	6885                	lui	a7,0x1
1c009790:	c114                	sw	a3,0(a0)
1c009792:	98e88893          	addi	a7,a7,-1650 # 98e <__CTOR_LIST__-0x1bfff676>
1c009796:	c0d696b7          	lui	a3,0xc0d69
1c00979a:	3a768693          	addi	a3,a3,935 # c0d693a7 <pulp__FC+0xc0d693a8>
1c00979e:	988a                	add	a7,a7,sp
1c0097a0:	6505                	lui	a0,0x1
1c0097a2:	00d8a023          	sw	a3,0(a7)
1c0097a6:	99250513          	addi	a0,a0,-1646 # 992 <__CTOR_LIST__-0x1bfff672>
1c0097aa:	6960a6b7          	lui	a3,0x6960a
1c0097ae:	9ab68693          	addi	a3,a3,-1621 # 696099ab <__l2_shared_end+0x4d5f99ab>
1c0097b2:	950a                	add	a0,a0,sp
1c0097b4:	6885                	lui	a7,0x1
1c0097b6:	c114                	sw	a3,0(a0)
1c0097b8:	99688893          	addi	a7,a7,-1642 # 996 <__CTOR_LIST__-0x1bfff66e>
1c0097bc:	f638b6b7          	lui	a3,0xf638b
1c0097c0:	988a                	add	a7,a7,sp
1c0097c2:	85b68693          	addi	a3,a3,-1957 # f638a85b <pulp__FC+0xf638a85c>
1c0097c6:	6505                	lui	a0,0x1
1c0097c8:	00d8a023          	sw	a3,0(a7)
1c0097cc:	99a50513          	addi	a0,a0,-1638 # 99a <__CTOR_LIST__-0x1bfff66a>
1c0097d0:	9c53e6b7          	lui	a3,0x9c53e
1c0097d4:	a4968693          	addi	a3,a3,-1463 # 9c53da49 <pulp__FC+0x9c53da4a>
1c0097d8:	950a                	add	a0,a0,sp
1c0097da:	c114                	sw	a3,0(a0)
1c0097dc:	6685                	lui	a3,0x1
1c0097de:	7775                	lui	a4,0xffffd
1c0097e0:	99e68693          	addi	a3,a3,-1634 # 99e <__CTOR_LIST__-0x1bfff666>
1c0097e4:	0a370613          	addi	a2,a4,163 # ffffd0a3 <pulp__FC+0xffffd0a4>
1c0097e8:	968a                	add	a3,a3,sp
1c0097ea:	00c69023          	sh	a2,0(a3)
1c0097ee:	a2ce36b7          	lui	a3,0xa2ce3
1c0097f2:	2c868693          	addi	a3,a3,712 # a2ce32c8 <pulp__FC+0xa2ce32c9>
1c0097f6:	c0b6                	sw	a3,64(sp)
1c0097f8:	4afbe6b7          	lui	a3,0x4afbe
1c0097fc:	c7768693          	addi	a3,a3,-905 # 4afbdc77 <__l2_shared_end+0x2efadc77>
1c009800:	c2b6                	sw	a3,68(sp)
1c009802:	db5136b7          	lui	a3,0xdb513
1c009806:	1a268693          	addi	a3,a3,418 # db5131a2 <pulp__FC+0xdb5131a3>
1c00980a:	c4b6                	sw	a3,72(sp)
1c00980c:	ecc666b7          	lui	a3,0xecc66
1c009810:	82b68693          	addi	a3,a3,-2005 # ecc6582b <pulp__FC+0xecc6582c>
1c009814:	c6b6                	sw	a3,76(sp)
1c009816:	b0ceb6b7          	lui	a3,0xb0ceb
1c00981a:	30e68693          	addi	a3,a3,782 # b0ceb30e <pulp__FC+0xb0ceb30f>
1c00981e:	c8b6                	sw	a3,80(sp)
1c009820:	6a0b46b7          	lui	a3,0x6a0b4
1c009824:	d1b68693          	addi	a3,a3,-741 # 6a0b3d1b <__l2_shared_end+0x4e0a3d1b>
1c009828:	cab6                	sw	a3,84(sp)
1c00982a:	f9a236b7          	lui	a3,0xf9a23
1c00982e:	0a168693          	addi	a3,a3,161 # f9a230a1 <pulp__FC+0xf9a230a2>
1c009832:	ccb6                	sw	a3,88(sp)
1c009834:	571546b7          	lui	a3,0x57154
1c009838:	54b68693          	addi	a3,a3,1355 # 5715454b <__l2_shared_end+0x3b14454b>
1c00983c:	ceb6                	sw	a3,92(sp)
1c00983e:	dc0e56b7          	lui	a3,0xdc0e5
1c009842:	ad268693          	addi	a3,a3,-1326 # dc0e4ad2 <pulp__FC+0xdc0e4ad3>
1c009846:	d0b6                	sw	a3,96(sp)
1c009848:	3f5d56b7          	lui	a3,0x3f5d5
1c00984c:	2f668693          	addi	a3,a3,758 # 3f5d52f6 <__l2_shared_end+0x235c52f6>
1c009850:	d2b6                	sw	a3,100(sp)
1c009852:	216046b7          	lui	a3,0x21604
1c009856:	a4c68693          	addi	a3,a3,-1460 # 21603a4c <__l2_shared_end+0x55f3a4c>
1c00985a:	d4b6                	sw	a3,104(sp)
1c00985c:	107246b7          	lui	a3,0x10724
1c009860:	74a68693          	addi	a3,a3,1866 # 1072474a <__CTOR_LIST__-0xb8db8ba>
1c009864:	d6b6                	sw	a3,108(sp)
1c009866:	d1be26b7          	lui	a3,0xd1be2
1c00986a:	15b68693          	addi	a3,a3,347 # d1be215b <pulp__FC+0xd1be215c>
1c00986e:	d8b6                	sw	a3,112(sp)
1c009870:	455e16b7          	lui	a3,0x455e1
1c009874:	0d468693          	addi	a3,a3,212 # 455e10d4 <__l2_shared_end+0x295d10d4>
1c009878:	dab6                	sw	a3,116(sp)
1c00987a:	d60a36b7          	lui	a3,0xd60a3
1c00987e:	96768693          	addi	a3,a3,-1689 # d60a2967 <pulp__FC+0xd60a2968>
1c009882:	dcb6                	sw	a3,120(sp)
1c009884:	2eb316b7          	lui	a3,0x2eb31
1c009888:	44c68693          	addi	a3,a3,1100 # 2eb3144c <__l2_shared_end+0x12b2144c>
1c00988c:	deb6                	sw	a3,124(sp)
1c00988e:	d17746b7          	lui	a3,0xd1774
1c009892:	65f68693          	addi	a3,a3,1631 # d177465f <pulp__FC+0xd1774660>
1c009896:	c136                	sw	a3,128(sp)
1c009898:	9b5516b7          	lui	a3,0x9b551
1c00989c:	27668693          	addi	a3,a3,630 # 9b551276 <pulp__FC+0x9b551277>
1c0098a0:	c336                	sw	a3,132(sp)
1c0098a2:	db5be6b7          	lui	a3,0xdb5be
1c0098a6:	0db68693          	addi	a3,a3,219 # db5be0db <pulp__FC+0xdb5be0dc>
1c0098aa:	c536                	sw	a3,136(sp)
1c0098ac:	e6a426b7          	lui	a3,0xe6a42
1c0098b0:	94e68693          	addi	a3,a3,-1714 # e6a4194e <pulp__FC+0xe6a4194f>
1c0098b4:	c736                	sw	a3,140(sp)
1c0098b6:	afee16b7          	lui	a3,0xafee1
1c0098ba:	cf868693          	addi	a3,a3,-776 # afee0cf8 <pulp__FC+0xafee0cf9>
1c0098be:	c936                	sw	a3,144(sp)
1c0098c0:	5cc9a6b7          	lui	a3,0x5cc9a
1c0098c4:	8a268693          	addi	a3,a3,-1886 # 5cc998a2 <__l2_shared_end+0x40c898a2>
1c0098c8:	cb36                	sw	a3,148(sp)
1c0098ca:	be70a6b7          	lui	a3,0xbe70a
1c0098ce:	54268693          	addi	a3,a3,1346 # be70a542 <pulp__FC+0xbe70a543>
1c0098d2:	cd36                	sw	a3,152(sp)
1c0098d4:	a49476b7          	lui	a3,0xa4947
1c0098d8:	de368693          	addi	a3,a3,-541 # a4946de3 <pulp__FC+0xa4946de4>
1c0098dc:	cf36                	sw	a3,156(sp)
1c0098de:	3ce826b7          	lui	a3,0x3ce82
1c0098e2:	0d168693          	addi	a3,a3,209 # 3ce820d1 <__l2_shared_end+0x20e720d1>
1c0098e6:	d136                	sw	a3,160(sp)
1c0098e8:	06da26b7          	lui	a3,0x6da2
1c0098ec:	4c568693          	addi	a3,a3,1221 # 6da24c5 <__CTOR_LIST__-0x1525db3f>
1c0098f0:	d336                	sw	a3,164(sp)
1c0098f2:	876ec6b7          	lui	a3,0x876ec
1c0098f6:	5b968693          	addi	a3,a3,1465 # 876ec5b9 <pulp__FC+0x876ec5ba>
1c0098fa:	d536                	sw	a3,168(sp)
1c0098fc:	c25d06b7          	lui	a3,0xc25d0
1c009900:	c6068693          	addi	a3,a3,-928 # c25cfc60 <pulp__FC+0xc25cfc61>
1c009904:	d736                	sw	a3,172(sp)
1c009906:	763ca6b7          	lui	a3,0x763ca
1c00990a:	3c368693          	addi	a3,a3,963 # 763ca3c3 <__l2_shared_end+0x5a3ba3c3>
1c00990e:	d936                	sw	a3,176(sp)
1c009910:	cb2e76b7          	lui	a3,0xcb2e7
1c009914:	48d68693          	addi	a3,a3,1165 # cb2e748d <pulp__FC+0xcb2e748e>
1c009918:	db36                	sw	a3,180(sp)
1c00991a:	e24246b7          	lui	a3,0xe2424
1c00991e:	7cd68693          	addi	a3,a3,1997 # e24247cd <pulp__FC+0xe24247ce>
1c009922:	dd36                	sw	a3,184(sp)
1c009924:	f5bbc6b7          	lui	a3,0xf5bbc
1c009928:	24068693          	addi	a3,a3,576 # f5bbc240 <pulp__FC+0xf5bbc241>
1c00992c:	df36                	sw	a3,188(sp)
1c00992e:	c9a7a6b7          	lui	a3,0xc9a7a
1c009932:	bf268693          	addi	a3,a3,-1038 # c9a79bf2 <pulp__FC+0xc9a79bf3>
1c009936:	c1b6                	sw	a3,192(sp)
1c009938:	cb5ee6b7          	lui	a3,0xcb5ee
1c00993c:	a4168693          	addi	a3,a3,-1471 # cb5eda41 <pulp__FC+0xcb5eda42>
1c009940:	c3b6                	sw	a3,196(sp)
1c009942:	c033d6b7          	lui	a3,0xc033d
1c009946:	10468693          	addi	a3,a3,260 # c033d104 <pulp__FC+0xc033d105>
1c00994a:	c5b6                	sw	a3,200(sp)
1c00994c:	b82b66b7          	lui	a3,0xb82b6
1c009950:	68f68693          	addi	a3,a3,1679 # b82b668f <pulp__FC+0xb82b6690>
1c009954:	c7b6                	sw	a3,204(sp)
1c009956:	6aec16b7          	lui	a3,0x6aec1
1c00995a:	04868693          	addi	a3,a3,72 # 6aec1048 <__l2_shared_end+0x4eeb1048>
1c00995e:	c9b6                	sw	a3,208(sp)
1c009960:	07e896b7          	lui	a3,0x7e89
1c009964:	06a9                	addi	a3,a3,10
1c009966:	cbb6                	sw	a3,212(sp)
1c009968:	494496b7          	lui	a3,0x49449
1c00996c:	35f68693          	addi	a3,a3,863 # 4944935f <__l2_shared_end+0x2d43935f>
1c009970:	cdb6                	sw	a3,216(sp)
1c009972:	4d4ea6b7          	lui	a3,0x4d4ea
1c009976:	2f668693          	addi	a3,a3,758 # 4d4ea2f6 <__l2_shared_end+0x314da2f6>
1c00997a:	cfb6                	sw	a3,220(sp)
1c00997c:	fbef86b7          	lui	a3,0xfbef8
1c009980:	48c68693          	addi	a3,a3,1164 # fbef848c <pulp__FC+0xfbef848d>
1c009984:	d1b6                	sw	a3,224(sp)
1c009986:	32c296b7          	lui	a3,0x32c29
1c00998a:	39d68693          	addi	a3,a3,925 # 32c2939d <__l2_shared_end+0x16c1939d>
1c00998e:	d3b6                	sw	a3,228(sp)
1c009990:	139176b7          	lui	a3,0x13917
1c009994:	e2868693          	addi	a3,a3,-472 # 13916e28 <__CTOR_LIST__-0x86e91dc>
1c009998:	d5b6                	sw	a3,232(sp)
1c00999a:	d28b56b7          	lui	a3,0xd28b5
1c00999e:	56768693          	addi	a3,a3,1383 # d28b5567 <pulp__FC+0xd28b5568>
1c0099a2:	d7b6                	sw	a3,236(sp)
1c0099a4:	453b06b7          	lui	a3,0x453b0
1c0099a8:	fb368693          	addi	a3,a3,-77 # 453affb3 <__l2_shared_end+0x2939ffb3>
1c0099ac:	d9b6                	sw	a3,240(sp)
1c0099ae:	b5e3c6b7          	lui	a3,0xb5e3c
1c0099b2:	58068693          	addi	a3,a3,1408 # b5e3c580 <pulp__FC+0xb5e3c581>
1c0099b6:	dbb6                	sw	a3,244(sp)
1c0099b8:	50a596b7          	lui	a3,0x50a59
1c0099bc:	09768693          	addi	a3,a3,151 # 50a59097 <__l2_shared_end+0x34a49097>
1c0099c0:	ddb6                	sw	a3,248(sp)
1c0099c2:	943f46b7          	lui	a3,0x943f4
1c0099c6:	ea668693          	addi	a3,a3,-346 # 943f3ea6 <pulp__FC+0x943f3ea7>
1c0099ca:	dfb6                	sw	a3,252(sp)
1c0099cc:	bd4566b7          	lui	a3,0xbd456
1c0099d0:	75a68693          	addi	a3,a3,1882 # bd45675a <pulp__FC+0xbd45675b>
1c0099d4:	10d12023          	sw	a3,256(sp)
1c0099d8:	266ae6b7          	lui	a3,0x266ae
1c0099dc:	23e68693          	addi	a3,a3,574 # 266ae23e <__l2_shared_end+0xa69e23e>
1c0099e0:	10d12223          	sw	a3,260(sp)
1c0099e4:	ce3406b7          	lui	a3,0xce340
1c0099e8:	75f68693          	addi	a3,a3,1887 # ce34075f <pulp__FC+0xce340760>
1c0099ec:	10d12423          	sw	a3,264(sp)
1c0099f0:	4bdd86b7          	lui	a3,0x4bdd8
1c0099f4:	7cf68693          	addi	a3,a3,1999 # 4bdd87cf <__l2_shared_end+0x2fdc87cf>
1c0099f8:	10d12623          	sw	a3,268(sp)
1c0099fc:	b06f46b7          	lui	a3,0xb06f4
1c009a00:	d4f68693          	addi	a3,a3,-689 # b06f3d4f <pulp__FC+0xb06f3d50>
1c009a04:	10d12823          	sw	a3,272(sp)
1c009a08:	0db2b6b7          	lui	a3,0xdb2b
1c009a0c:	67668693          	addi	a3,a3,1654 # db2b676 <__CTOR_LIST__-0xe4d498e>
1c009a10:	10d12a23          	sw	a3,276(sp)
1c009a14:	6eb346b7          	lui	a3,0x6eb34
1c009a18:	3e668693          	addi	a3,a3,998 # 6eb343e6 <__l2_shared_end+0x52b243e6>
1c009a1c:	10d12c23          	sw	a3,280(sp)
1c009a20:	9dec86b7          	lui	a3,0x9dec8
1c009a24:	49c68693          	addi	a3,a3,1180 # 9dec849c <pulp__FC+0x9dec849d>
1c009a28:	10d12e23          	sw	a3,284(sp)
1c009a2c:	edaf06b7          	lui	a3,0xedaf0
1c009a30:	35168693          	addi	a3,a3,849 # edaf0351 <pulp__FC+0xedaf0352>
1c009a34:	12d12023          	sw	a3,288(sp)
1c009a38:	b27266b7          	lui	a3,0xb2726
1c009a3c:	67968693          	addi	a3,a3,1657 # b2726679 <pulp__FC+0xb272667a>
1c009a40:	12d12223          	sw	a3,292(sp)
1c009a44:	98ecc6b7          	lui	a3,0x98ecc
1c009a48:	64b68693          	addi	a3,a3,1611 # 98ecc64b <pulp__FC+0x98ecc64c>
1c009a4c:	12d12423          	sw	a3,296(sp)
1c009a50:	731fa6b7          	lui	a3,0x731fa
1c009a54:	cdf70713          	addi	a4,a4,-801
1c009a58:	d0c68693          	addi	a3,a3,-756 # 731f9d0c <__l2_shared_end+0x571e9d0c>
1c009a5c:	12d12623          	sw	a3,300(sp)
1c009a60:	12e11c23          	sh	a4,312(sp)
1c009a64:	544466b7          	lui	a3,0x54446
1c009a68:	fc900713          	li	a4,-55
1c009a6c:	3db68693          	addi	a3,a3,987 # 544463db <__l2_shared_end+0x384363db>
1c009a70:	12e10d23          	sb	a4,314(sp)
1c009a74:	9fffc737          	lui	a4,0x9fffc
1c009a78:	12d12823          	sw	a3,304(sp)
1c009a7c:	58870713          	addi	a4,a4,1416 # 9fffc588 <pulp__FC+0x9fffc589>
1c009a80:	687696b7          	lui	a3,0x68769
1c009a84:	7aa68693          	addi	a3,a3,1962 # 687697aa <__l2_shared_end+0x4c7597aa>
1c009a88:	12e12da3          	sw	a4,315(sp)
1c009a8c:	4f556737          	lui	a4,0x4f556
1c009a90:	12d12a23          	sw	a3,308(sp)
1c009a94:	21c70713          	addi	a4,a4,540 # 4f55621c <__l2_shared_end+0x3354621c>
1c009a98:	12e12fa3          	sw	a4,319(sp)
1c009a9c:	7238b737          	lui	a4,0x7238b
1c009aa0:	4a770713          	addi	a4,a4,1191 # 7238b4a7 <__l2_shared_end+0x5637b4a7>
1c009aa4:	14e121a3          	sw	a4,323(sp)
1c009aa8:	18db3737          	lui	a4,0x18db3
1c009aac:	e2a70713          	addi	a4,a4,-470 # 18db2e2a <__CTOR_LIST__-0x324d1da>
1c009ab0:	14e123a3          	sw	a4,327(sp)
1c009ab4:	7cd3b737          	lui	a4,0x7cd3b
1c009ab8:	c0e70713          	addi	a4,a4,-1010 # 7cd3ac0e <__l2_shared_end+0x60d2ac0e>
1c009abc:	14e125a3          	sw	a4,331(sp)
1c009ac0:	f307e737          	lui	a4,0xf307e
1c009ac4:	98570713          	addi	a4,a4,-1659 # f307d985 <pulp__FC+0xf307d986>
1c009ac8:	14e127a3          	sw	a4,335(sp)
1c009acc:	8befa737          	lui	a4,0x8befa
1c009ad0:	1f370713          	addi	a4,a4,499 # 8befa1f3 <pulp__FC+0x8befa1f4>
1c009ad4:	14e129a3          	sw	a4,339(sp)
1c009ad8:	a9dc9737          	lui	a4,0xa9dc9
1c009adc:	43d70713          	addi	a4,a4,1085 # a9dc943d <pulp__FC+0xa9dc943e>
1c009ae0:	14e12ba3          	sw	a4,343(sp)
1c009ae4:	2b52f737          	lui	a4,0x2b52f
1c009ae8:	7fd70713          	addi	a4,a4,2045 # 2b52f7fd <__l2_shared_end+0xf51f7fd>
1c009aec:	14e12da3          	sw	a4,347(sp)
1c009af0:	4ce60737          	lui	a4,0x4ce60
1c009af4:	08770713          	addi	a4,a4,135 # 4ce60087 <__l2_shared_end+0x30e50087>
1c009af8:	14e12fa3          	sw	a4,351(sp)
1c009afc:	9a191737          	lui	a4,0x9a191
1c009b00:	bbd70713          	addi	a4,a4,-1091 # 9a190bbd <pulp__FC+0x9a190bbe>
1c009b04:	16e121a3          	sw	a4,355(sp)
1c009b08:	14b49737          	lui	a4,0x14b49
1c009b0c:	29870713          	addi	a4,a4,664 # 14b49298 <__CTOR_LIST__-0x74b6d6c>
1c009b10:	16e123a3          	sw	a4,359(sp)
1c009b14:	1913b737          	lui	a4,0x1913b
1c009b18:	34d70713          	addi	a4,a4,845 # 1913b34d <__CTOR_LIST__-0x2ec4cb7>
1c009b1c:	16e125a3          	sw	a4,363(sp)
1c009b20:	7a1b5737          	lui	a4,0x7a1b5
1c009b24:	03170713          	addi	a4,a4,49 # 7a1b5031 <__l2_shared_end+0x5e1a5031>
1c009b28:	16e127a3          	sw	a4,367(sp)
1c009b2c:	2f435737          	lui	a4,0x2f435
1c009b30:	0761                	addi	a4,a4,24
1c009b32:	16e129a3          	sw	a4,371(sp)
1c009b36:	45954737          	lui	a4,0x45954
1c009b3a:	abd70713          	addi	a4,a4,-1347 # 45953abd <__l2_shared_end+0x29943abd>
1c009b3e:	16e12ba3          	sw	a4,375(sp)
1c009b42:	b8fed737          	lui	a4,0xb8fed
1c009b46:	a5470713          	addi	a4,a4,-1452 # b8feca54 <pulp__FC+0xb8feca55>
1c009b4a:	16e12da3          	sw	a4,379(sp)
1c009b4e:	911ae737          	lui	a4,0x911ae
1c009b52:	ef170713          	addi	a4,a4,-271 # 911adef1 <pulp__FC+0x911adef2>
1c009b56:	16e12fa3          	sw	a4,383(sp)
1c009b5a:	d02d6737          	lui	a4,0xd02d6
1c009b5e:	56770713          	addi	a4,a4,1383 # d02d6567 <pulp__FC+0xd02d6568>
1c009b62:	18e121a3          	sw	a4,387(sp)
1c009b66:	616cc737          	lui	a4,0x616cc
1c009b6a:	26870713          	addi	a4,a4,616 # 616cc268 <__l2_shared_end+0x456bc268>
1c009b6e:	18e123a3          	sw	a4,391(sp)
1c009b72:	1da5e737          	lui	a4,0x1da5e
1c009b76:	9d170713          	addi	a4,a4,-1583 # 1da5d9d1 <__l2_shared_end+0x1a4d9d1>
1c009b7a:	18e125a3          	sw	a4,395(sp)
1c009b7e:	d7c52737          	lui	a4,0xd7c52
1c009b82:	d4e70713          	addi	a4,a4,-690 # d7c51d4e <pulp__FC+0xd7c51d4f>
1c009b86:	18e127a3          	sw	a4,399(sp)
1c009b8a:	361dc737          	lui	a4,0x361dc
1c009b8e:	be870713          	addi	a4,a4,-1048 # 361dbbe8 <__l2_shared_end+0x1a1cbbe8>
1c009b92:	18e129a3          	sw	a4,403(sp)
1c009b96:	31888737          	lui	a4,0x31888
1c009b9a:	98b70713          	addi	a4,a4,-1653 # 3188798b <__l2_shared_end+0x1587798b>
1c009b9e:	18e12ba3          	sw	a4,407(sp)
1c009ba2:	51b0c737          	lui	a4,0x51b0c
1c009ba6:	4cb70713          	addi	a4,a4,1227 # 51b0c4cb <__l2_shared_end+0x35afc4cb>
1c009baa:	18e12da3          	sw	a4,411(sp)
1c009bae:	2b5bc737          	lui	a4,0x2b5bc
1c009bb2:	5ed70713          	addi	a4,a4,1517 # 2b5bc5ed <__l2_shared_end+0xf5ac5ed>
1c009bb6:	18e12fa3          	sw	a4,415(sp)
1c009bba:	6aca3737          	lui	a4,0x6aca3
1c009bbe:	66270713          	addi	a4,a4,1634 # 6aca3662 <__l2_shared_end+0x4ec93662>
1c009bc2:	1ae121a3          	sw	a4,419(sp)
1c009bc6:	d29ed737          	lui	a4,0xd29ed
1c009bca:	5d070713          	addi	a4,a4,1488 # d29ed5d0 <pulp__FC+0xd29ed5d1>
1c009bce:	1ae123a3          	sw	a4,423(sp)
1c009bd2:	ddebc737          	lui	a4,0xddebc
1c009bd6:	9b570713          	addi	a4,a4,-1611 # ddebb9b5 <pulp__FC+0xddebb9b6>
1c009bda:	1ae125a3          	sw	a4,427(sp)
1c009bde:	6f812737          	lui	a4,0x6f812
1c009be2:	e7c70713          	addi	a4,a4,-388 # 6f811e7c <__l2_shared_end+0x53801e7c>
1c009be6:	1ae127a3          	sw	a4,431(sp)
1c009bea:	db112737          	lui	a4,0xdb112
1c009bee:	18c70713          	addi	a4,a4,396 # db11218c <pulp__FC+0xdb11218d>
1c009bf2:	1ae129a3          	sw	a4,435(sp)
1c009bf6:	afbe9737          	lui	a4,0xafbe9
1c009bfa:	f1970713          	addi	a4,a4,-231 # afbe8f19 <pulp__FC+0xafbe8f1a>
1c009bfe:	1ae12ba3          	sw	a4,439(sp)
1c009c02:	fe34b737          	lui	a4,0xfe34b
1c009c06:	12570713          	addi	a4,a4,293 # fe34b125 <pulp__FC+0xfe34b126>
1c009c0a:	1ae12da3          	sw	a4,443(sp)
1c009c0e:	87dd5737          	lui	a4,0x87dd5
1c009c12:	79e70713          	addi	a4,a4,1950 # 87dd579e <pulp__FC+0x87dd579f>
1c009c16:	1ae12fa3          	sw	a4,447(sp)
1c009c1a:	3691a737          	lui	a4,0x3691a
1c009c1e:	e4770713          	addi	a4,a4,-441 # 36919e47 <__l2_shared_end+0x1a909e47>
1c009c22:	1ce121a3          	sw	a4,451(sp)
1c009c26:	1b183737          	lui	a4,0x1b183
1c009c2a:	b5770713          	addi	a4,a4,-1193 # 1b182b57 <__CTOR_LIST__-0xe7d4ad>
1c009c2e:	1ce123a3          	sw	a4,455(sp)
1c009c32:	6f348737          	lui	a4,0x6f348
1c009c36:	b3070713          	addi	a4,a4,-1232 # 6f347b30 <__l2_shared_end+0x53337b30>
1c009c3a:	1ce125a3          	sw	a4,459(sp)
1c009c3e:	8cbe3737          	lui	a4,0x8cbe3
1c009c42:	0ec70713          	addi	a4,a4,236 # 8cbe30ec <pulp__FC+0x8cbe30ed>
1c009c46:	1ce127a3          	sw	a4,463(sp)
1c009c4a:	94200737          	lui	a4,0x94200
1c009c4e:	38e70713          	addi	a4,a4,910 # 9420038e <pulp__FC+0x9420038f>
1c009c52:	1ce129a3          	sw	a4,467(sp)
1c009c56:	fdcb0737          	lui	a4,0xfdcb0
1c009c5a:	3ec70713          	addi	a4,a4,1004 # fdcb03ec <pulp__FC+0xfdcb03ed>
1c009c5e:	1ce12ba3          	sw	a4,471(sp)
1c009c62:	6705                	lui	a4,0x1
1c009c64:	75fd                	lui	a1,0xfffff
1c009c66:	9a070713          	addi	a4,a4,-1632 # 9a0 <__CTOR_LIST__-0x1bfff664>
1c009c6a:	66058413          	addi	s0,a1,1632 # fffff660 <pulp__FC+0xfffff661>
1c009c6e:	970a                	add	a4,a4,sp
1c009c70:	943a                	add	s0,s0,a4
1c009c72:	f7d0e737          	lui	a4,0xf7d0e
1c009c76:	52e70713          	addi	a4,a4,1326 # f7d0e52e <pulp__FC+0xf7d0e52f>
1c009c7a:	1ce12da3          	sw	a4,475(sp)
1c009c7e:	e75e0737          	lui	a4,0xe75e0
1c009c82:	5b770713          	addi	a4,a4,1463 # e75e05b7 <pulp__FC+0xe75e05b8>
1c009c86:	1ce12fa3          	sw	a4,479(sp)
1c009c8a:	432a7737          	lui	a4,0x432a7
1c009c8e:	f3470713          	addi	a4,a4,-204 # 432a6f34 <__l2_shared_end+0x27296f34>
1c009c92:	1ee121a3          	sw	a4,483(sp)
1c009c96:	97944737          	lui	a4,0x97944
1c009c9a:	99470713          	addi	a4,a4,-1644 # 97943994 <pulp__FC+0x97943995>
1c009c9e:	1ee123a3          	sw	a4,487(sp)
1c009ca2:	9993e737          	lui	a4,0x9993e
1c009ca6:	cd170713          	addi	a4,a4,-815 # 9993dcd1 <pulp__FC+0x9993dcd2>
1c009caa:	1ee125a3          	sw	a4,491(sp)
1c009cae:	827e5737          	lui	a4,0x827e5
1c009cb2:	7f070713          	addi	a4,a4,2032 # 827e57f0 <pulp__FC+0x827e57f1>
1c009cb6:	1ee127a3          	sw	a4,495(sp)
1c009cba:	06ace737          	lui	a4,0x6ace
1c009cbe:	73070713          	addi	a4,a4,1840 # 6ace730 <__CTOR_LIST__-0x155318d4>
1c009cc2:	1ee129a3          	sw	a4,499(sp)
1c009cc6:	adaba737          	lui	a4,0xadaba
1c009cca:	c7b70713          	addi	a4,a4,-901 # adab9c7b <pulp__FC+0xadab9c7c>
1c009cce:	1ee12ba3          	sw	a4,503(sp)
1c009cd2:	0f6e4737          	lui	a4,0xf6e4
1c009cd6:	b9970713          	addi	a4,a4,-1127 # f6e3b99 <__CTOR_LIST__-0xc91c46b>
1c009cda:	1ee12da3          	sw	a4,507(sp)
1c009cde:	c812c737          	lui	a4,0xc812c
1c009ce2:	55a70713          	addi	a4,a4,1370 # c812c55a <pulp__FC+0xc812c55b>
1c009ce6:	1ee12fa3          	sw	a4,511(sp)
1c009cea:	28770737          	lui	a4,0x28770
1c009cee:	e7070713          	addi	a4,a4,-400 # 2876fe70 <__l2_shared_end+0xc75fe70>
1c009cf2:	20e121a3          	sw	a4,515(sp)
1c009cf6:	17bdc737          	lui	a4,0x17bdc
1c009cfa:	46f70713          	addi	a4,a4,1135 # 17bdc46f <__CTOR_LIST__-0x4423b95>
1c009cfe:	20e123a3          	sw	a4,519(sp)
1c009d02:	f6410737          	lui	a4,0xf6410
1c009d06:	33b70713          	addi	a4,a4,827 # f641033b <pulp__FC+0xf641033c>
1c009d0a:	20e125a3          	sw	a4,523(sp)
1c009d0e:	c695f737          	lui	a4,0xc695f
1c009d12:	62770713          	addi	a4,a4,1575 # c695f627 <pulp__FC+0xc695f628>
1c009d16:	20e127a3          	sw	a4,527(sp)
1c009d1a:	dc494737          	lui	a4,0xdc494
1c009d1e:	64670713          	addi	a4,a4,1606 # dc494646 <pulp__FC+0xdc494647>
1c009d22:	20e129a3          	sw	a4,531(sp)
1c009d26:	2a42f737          	lui	a4,0x2a42f
1c009d2a:	90170713          	addi	a4,a4,-1791 # 2a42e901 <__l2_shared_end+0xe41e901>
1c009d2e:	20e12ba3          	sw	a4,535(sp)
1c009d32:	e9718737          	lui	a4,0xe9718
1c009d36:	4bd70713          	addi	a4,a4,1213 # e97184bd <pulp__FC+0xe97184be>
1c009d3a:	20e12da3          	sw	a4,539(sp)
1c009d3e:	a028e737          	lui	a4,0xa028e
1c009d42:	c9078793          	addi	a5,a5,-880
1c009d46:	08870713          	addi	a4,a4,136 # a028e088 <pulp__FC+0xa028e089>
1c009d4a:	20e12fa3          	sw	a4,543(sp)
1c009d4e:	22f119a3          	sh	a5,563(sp)
1c009d52:	c1175737          	lui	a4,0xc1175
1c009d56:	f9d00793          	li	a5,-99
1c009d5a:	23f70713          	addi	a4,a4,575 # c117523f <pulp__FC+0xc1175240>
1c009d5e:	22f10aa3          	sb	a5,565(sp)
1c009d62:	882ae7b7          	lui	a5,0x882ae
1c009d66:	22e121a3          	sw	a4,547(sp)
1c009d6a:	66a78793          	addi	a5,a5,1642 # 882ae66a <pulp__FC+0x882ae66b>
1c009d6e:	59694737          	lui	a4,0x59694
1c009d72:	16b70713          	addi	a4,a4,363 # 5969416b <__l2_shared_end+0x3d68416b>
1c009d76:	22f12b23          	sw	a5,566(sp)
1c009d7a:	f191e7b7          	lui	a5,0xf191e
1c009d7e:	22e123a3          	sw	a4,551(sp)
1c009d82:	25e78793          	addi	a5,a5,606 # f191e25e <pulp__FC+0xf191e25f>
1c009d86:	dcf05737          	lui	a4,0xdcf05
1c009d8a:	28170713          	addi	a4,a4,641 # dcf05281 <pulp__FC+0xdcf05282>
1c009d8e:	22f12d23          	sw	a5,570(sp)
1c009d92:	d3c6e7b7          	lui	a5,0xd3c6e
1c009d96:	22e125a3          	sw	a4,555(sp)
1c009d9a:	14578793          	addi	a5,a5,325 # d3c6e145 <pulp__FC+0xd3c6e146>
1c009d9e:	d38bd737          	lui	a4,0xd38bd
1c009da2:	7f970713          	addi	a4,a4,2041 # d38bd7f9 <pulp__FC+0xd38bd7fa>
1c009da6:	22f12f23          	sw	a5,574(sp)
1c009daa:	122a47b7          	lui	a5,0x122a4
1c009dae:	22e127a3          	sw	a4,559(sp)
1c009db2:	37d78793          	addi	a5,a5,893 # 122a437d <__CTOR_LIST__-0x9d5bc87>
1c009db6:	24f12123          	sw	a5,578(sp)
1c009dba:	428547b7          	lui	a5,0x42854
1c009dbe:	99078793          	addi	a5,a5,-1648 # 42853990 <__l2_shared_end+0x26843990>
1c009dc2:	24f12323          	sw	a5,582(sp)
1c009dc6:	ed2bb7b7          	lui	a5,0xed2bb
1c009dca:	63878793          	addi	a5,a5,1592 # ed2bb638 <pulp__FC+0xed2bb639>
1c009dce:	24f12523          	sw	a5,586(sp)
1c009dd2:	ad3db7b7          	lui	a5,0xad3db
1c009dd6:	b0078793          	addi	a5,a5,-1280 # ad3dab00 <pulp__FC+0xad3dab01>
1c009dda:	24f12723          	sw	a5,590(sp)
1c009dde:	c5f8a7b7          	lui	a5,0xc5f8a
1c009de2:	a3878793          	addi	a5,a5,-1480 # c5f89a38 <pulp__FC+0xc5f89a39>
1c009de6:	24f12923          	sw	a5,594(sp)
1c009dea:	13b667b7          	lui	a5,0x13b66
1c009dee:	a3878793          	addi	a5,a5,-1480 # 13b65a38 <__CTOR_LIST__-0x849a5cc>
1c009df2:	24f12b23          	sw	a5,598(sp)
1c009df6:	6785                	lui	a5,0x1
1c009df8:	9a078793          	addi	a5,a5,-1632 # 9a0 <__CTOR_LIST__-0x1bfff664>
1c009dfc:	978a                	add	a5,a5,sp
1c009dfe:	6a058593          	addi	a1,a1,1696
1c009e02:	95be                	add	a1,a1,a5
1c009e04:	b7f927b7          	lui	a5,0xb7f92
1c009e08:	8fa78793          	addi	a5,a5,-1798 # b7f918fa <pulp__FC+0xb7f918fb>
1c009e0c:	24f12d23          	sw	a5,602(sp)
1c009e10:	d82437b7          	lui	a5,0xd8243
1c009e14:	34678793          	addi	a5,a5,838 # d8243346 <pulp__FC+0xd8243347>
1c009e18:	24f12f23          	sw	a5,606(sp)
1c009e1c:	ccdc17b7          	lui	a5,0xccdc1
1c009e20:	22e78793          	addi	a5,a5,558 # ccdc122e <pulp__FC+0xccdc122f>
1c009e24:	26f12123          	sw	a5,610(sp)
1c009e28:	f62757b7          	lui	a5,0xf6275
1c009e2c:	3f478793          	addi	a5,a5,1012 # f62753f4 <pulp__FC+0xf62753f5>
1c009e30:	26f12323          	sw	a5,614(sp)
1c009e34:	588217b7          	lui	a5,0x58821
1c009e38:	22078793          	addi	a5,a5,544 # 58821220 <__l2_shared_end+0x3c811220>
1c009e3c:	26f12523          	sw	a5,618(sp)
1c009e40:	5adc17b7          	lui	a5,0x5adc1
1c009e44:	46278793          	addi	a5,a5,1122 # 5adc1462 <__l2_shared_end+0x3edb1462>
1c009e48:	26f12723          	sw	a5,622(sp)
1c009e4c:	571257b7          	lui	a5,0x57125
1c009e50:	c1c78793          	addi	a5,a5,-996 # 57124c1c <__l2_shared_end+0x3b114c1c>
1c009e54:	26f12923          	sw	a5,626(sp)
1c009e58:	474ef7b7          	lui	a5,0x474ef
1c009e5c:	a2f78793          	addi	a5,a5,-1489 # 474eea2f <__l2_shared_end+0x2b4dea2f>
1c009e60:	26f12b23          	sw	a5,630(sp)
1c009e64:	02c1f7b7          	lui	a5,0x2c1f
1c009e68:	9ab78793          	addi	a5,a5,-1621 # 2c1e9ab <__CTOR_LIST__-0x193e1659>
1c009e6c:	26f12d23          	sw	a5,634(sp)
1c009e70:	ce1ea7b7          	lui	a5,0xce1ea
1c009e74:	a3a78793          	addi	a5,a5,-1478 # ce1e9a3a <pulp__FC+0xce1e9a3b>
1c009e78:	26f12f23          	sw	a5,638(sp)
1c009e7c:	1960c7b7          	lui	a5,0x1960c
1c009e80:	43f78793          	addi	a5,a5,1087 # 1960c43f <__CTOR_LIST__-0x29f3bc5>
1c009e84:	28f12123          	sw	a5,642(sp)
1c009e88:	425af7b7          	lui	a5,0x425af
1c009e8c:	9e578793          	addi	a5,a5,-1563 # 425ae9e5 <__l2_shared_end+0x2659e9e5>
1c009e90:	28f12323          	sw	a5,646(sp)
1c009e94:	ddb157b7          	lui	a5,0xddb15
1c009e98:	18578793          	addi	a5,a5,389 # ddb15185 <pulp__FC+0xddb15186>
1c009e9c:	28f12523          	sw	a5,650(sp)
1c009ea0:	e6bf17b7          	lui	a5,0xe6bf1
1c009ea4:	8c178793          	addi	a5,a5,-1855 # e6bf08c1 <pulp__FC+0xe6bf08c2>
1c009ea8:	28f12723          	sw	a5,654(sp)
1c009eac:	297217b7          	lui	a5,0x29721
1c009eb0:	18a78793          	addi	a5,a5,394 # 2972118a <__l2_shared_end+0xd71118a>
1c009eb4:	28f12923          	sw	a5,658(sp)
1c009eb8:	f381b7b7          	lui	a5,0xf381b
1c009ebc:	eeb78793          	addi	a5,a5,-277 # f381aeeb <pulp__FC+0xf381aeec>
1c009ec0:	28f12b23          	sw	a5,662(sp)
1c009ec4:	ce70a7b7          	lui	a5,0xce70a
1c009ec8:	e8278793          	addi	a5,a5,-382 # ce709e82 <pulp__FC+0xce709e83>
1c009ecc:	28f12d23          	sw	a5,666(sp)
1c009ed0:	a58147b7          	lui	a5,0xa5814
1c009ed4:	e9578793          	addi	a5,a5,-363 # a5813e95 <pulp__FC+0xa5813e96>
1c009ed8:	28f12f23          	sw	a5,670(sp)
1c009edc:	14db87b7          	lui	a5,0x14db8
1c009ee0:	68978793          	addi	a5,a5,1673 # 14db8689 <__CTOR_LIST__-0x724797b>
1c009ee4:	2af12123          	sw	a5,674(sp)
1c009ee8:	5119f7b7          	lui	a5,0x5119f
1c009eec:	85278793          	addi	a5,a5,-1966 # 5119e852 <__l2_shared_end+0x3518e852>
1c009ef0:	2af12323          	sw	a5,678(sp)
1c009ef4:	c89517b7          	lui	a5,0xc8951
1c009ef8:	08b78793          	addi	a5,a5,139 # c895108b <pulp__FC+0xc895108c>
1c009efc:	2af12523          	sw	a5,682(sp)
1c009f00:	126ee7b7          	lui	a5,0x126ee
1c009f04:	88678793          	addi	a5,a5,-1914 # 126ed886 <__CTOR_LIST__-0x991277e>
1c009f08:	2af12723          	sw	a5,686(sp)
1c009f0c:	e37957b7          	lui	a5,0xe3795
1c009f10:	63978793          	addi	a5,a5,1593 # e3795639 <pulp__FC+0xe379563a>
1c009f14:	2af12923          	sw	a5,690(sp)
1c009f18:	24d727b7          	lui	a5,0x24d72
1c009f1c:	73278793          	addi	a5,a5,1842 # 24d72732 <__l2_shared_end+0x8d62732>
1c009f20:	2af12b23          	sw	a5,694(sp)
1c009f24:	213837b7          	lui	a5,0x21383
1c009f28:	b1078793          	addi	a5,a5,-1264 # 21382b10 <__l2_shared_end+0x5372b10>
1c009f2c:	2af12d23          	sw	a5,698(sp)
1c009f30:	952f87b7          	lui	a5,0x952f8
1c009f34:	11e78793          	addi	a5,a5,286 # 952f811e <pulp__FC+0x952f811f>
1c009f38:	2af12f23          	sw	a5,702(sp)
1c009f3c:	d46577b7          	lui	a5,0xd4657
1c009f40:	28978793          	addi	a5,a5,649 # d4657289 <pulp__FC+0xd465728a>
1c009f44:	2cf12123          	sw	a5,706(sp)
1c009f48:	a4ca67b7          	lui	a5,0xa4ca6
1c009f4c:	20b78793          	addi	a5,a5,523 # a4ca620b <pulp__FC+0xa4ca620c>
1c009f50:	2cf12323          	sw	a5,710(sp)
1c009f54:	828847b7          	lui	a5,0x82884
1c009f58:	33578793          	addi	a5,a5,821 # 82884335 <pulp__FC+0x82884336>
1c009f5c:	2cf12523          	sw	a5,714(sp)
1c009f60:	c033a7b7          	lui	a5,0xc033a
1c009f64:	e0678793          	addi	a5,a5,-506 # c0339e06 <pulp__FC+0xc0339e07>
1c009f68:	2cf12723          	sw	a5,718(sp)
1c009f6c:	d18707b7          	lui	a5,0xd1870
1c009f70:	8bd78793          	addi	a5,a5,-1859 # d186f8bd <pulp__FC+0xd186f8be>
1c009f74:	2cf12923          	sw	a5,722(sp)
1c009f78:	b62677b7          	lui	a5,0xb6267
1c009f7c:	f4b78793          	addi	a5,a5,-181 # b6266f4b <pulp__FC+0xb6266f4c>
1c009f80:	2cf12b23          	sw	a5,726(sp)
1c009f84:	155817b7          	lui	a5,0x15581
1c009f88:	71378793          	addi	a5,a5,1811 # 15581713 <__CTOR_LIST__-0x6a7e8f1>
1c009f8c:	2cf12d23          	sw	a5,730(sp)
1c009f90:	5c62f7b7          	lui	a5,0x5c62f
1c009f94:	a1378793          	addi	a5,a5,-1517 # 5c62ea13 <__l2_shared_end+0x4061ea13>
1c009f98:	2cf12f23          	sw	a5,734(sp)
1c009f9c:	214df7b7          	lui	a5,0x214df
1c009fa0:	fdf78793          	addi	a5,a5,-33 # 214defdf <__l2_shared_end+0x54cefdf>
1c009fa4:	2ef12123          	sw	a5,738(sp)
1c009fa8:	109c57b7          	lui	a5,0x109c5
1c009fac:	f3478793          	addi	a5,a5,-204 # 109c4f34 <__CTOR_LIST__-0xb63b0d0>
1c009fb0:	2ef12323          	sw	a5,742(sp)
1c009fb4:	8c6f37b7          	lui	a5,0x8c6f3
1c009fb8:	e1978793          	addi	a5,a5,-487 # 8c6f2e19 <pulp__FC+0x8c6f2e1a>
1c009fbc:	2ef12523          	sw	a5,746(sp)
1c009fc0:	4a3607b7          	lui	a5,0x4a360
1c009fc4:	a0378793          	addi	a5,a5,-1533 # 4a35fa03 <__l2_shared_end+0x2e34fa03>
1c009fc8:	2ef12723          	sw	a5,750(sp)
1c009fcc:	952887b7          	lui	a5,0x95288
1c009fd0:	c0678793          	addi	a5,a5,-1018 # 95287c06 <pulp__FC+0x95287c07>
1c009fd4:	2ef12923          	sw	a5,754(sp)
1c009fd8:	2d06d7b7          	lui	a5,0x2d06d
1c009fdc:	57278793          	addi	a5,a5,1394 # 2d06d572 <__l2_shared_end+0x1105d572>
1c009fe0:	2ef12b23          	sw	a5,758(sp)
1c009fe4:	04d3a7b7          	lui	a5,0x4d3a
1c009fe8:	a4c78793          	addi	a5,a5,-1460 # 4d39a4c <__CTOR_LIST__-0x172c65b8>
1c009fec:	2ef12d23          	sw	a5,762(sp)
1c009ff0:	821357b7          	lui	a5,0x82135
1c009ff4:	48f78793          	addi	a5,a5,1167 # 8213548f <pulp__FC+0x82135490>
1c009ff8:	2ef12f23          	sw	a5,766(sp)
1c009ffc:	9fa1b7b7          	lui	a5,0x9fa1b
1c00a000:	f1178793          	addi	a5,a5,-239 # 9fa1af11 <pulp__FC+0x9fa1af12>
1c00a004:	30f12123          	sw	a5,770(sp)
1c00a008:	a49ef7b7          	lui	a5,0xa49ef
1c00a00c:	3ea78793          	addi	a5,a5,1002 # a49ef3ea <pulp__FC+0xa49ef3eb>
1c00a010:	30f12323          	sw	a5,774(sp)
1c00a014:	4a77f7b7          	lui	a5,0x4a77f
1c00a018:	34478793          	addi	a5,a5,836 # 4a77f344 <__l2_shared_end+0x2e76f344>
1c00a01c:	30f12523          	sw	a5,778(sp)
1c00a020:	68a8a7b7          	lui	a5,0x68a8a
1c00a024:	67478793          	addi	a5,a5,1652 # 68a8a674 <__l2_shared_end+0x4ca7a674>
1c00a028:	30f12723          	sw	a5,782(sp)
1c00a02c:	a5b727b7          	lui	a5,0xa5b72
1c00a030:	6e178793          	addi	a5,a5,1761 # a5b726e1 <pulp__FC+0xa5b726e2>
1c00a034:	30f12923          	sw	a5,786(sp)
1c00a038:	dbe1b7b7          	lui	a5,0xdbe1b
1c00a03c:	4c778793          	addi	a5,a5,1223 # dbe1b4c7 <pulp__FC+0xdbe1b4c8>
1c00a040:	30f12b23          	sw	a5,790(sp)
1c00a044:	941cd7b7          	lui	a5,0x941cd
1c00a048:	fb978793          	addi	a5,a5,-71 # 941ccfb9 <pulp__FC+0x941ccfba>
1c00a04c:	30f12d23          	sw	a5,794(sp)
1c00a050:	2c0737b7          	lui	a5,0x2c073
1c00a054:	a9e78793          	addi	a5,a5,-1378 # 2c072a9e <__l2_shared_end+0x10062a9e>
1c00a058:	30f12f23          	sw	a5,798(sp)
1c00a05c:	3c9477b7          	lui	a5,0x3c947
1c00a060:	cff78793          	addi	a5,a5,-769 # 3c946cff <__l2_shared_end+0x20936cff>
1c00a064:	32f12123          	sw	a5,802(sp)
1c00a068:	d63c77b7          	lui	a5,0xd63c7
1c00a06c:	21b78793          	addi	a5,a5,539 # d63c721b <pulp__FC+0xd63c721c>
1c00a070:	32f12323          	sw	a5,806(sp)
1c00a074:	c44b47b7          	lui	a5,0xc44b4
1c00a078:	c2778793          	addi	a5,a5,-985 # c44b3c27 <pulp__FC+0xc44b3c28>
1c00a07c:	32f12523          	sw	a5,810(sp)
1c00a080:	77e5                	lui	a5,0xffff9
1c00a082:	94678793          	addi	a5,a5,-1722 # ffff8946 <pulp__FC+0xffff8947>
1c00a086:	32f11723          	sh	a5,814(sp)
1c00a08a:	f9100793          	li	a5,-111
1c00a08e:	32f10823          	sb	a5,816(sp)
1c00a092:	cacea7b7          	lui	a5,0xcacea
1c00a096:	4e478793          	addi	a5,a5,1252 # cacea4e4 <pulp__FC+0xcacea4e5>
1c00a09a:	32f128a3          	sw	a5,817(sp)
1c00a09e:	cd4b27b7          	lui	a5,0xcd4b2
1c00a0a2:	c6e78793          	addi	a5,a5,-914 # cd4b1c6e <pulp__FC+0xcd4b1c6f>
1c00a0a6:	32f12aa3          	sw	a5,821(sp)
1c00a0aa:	c77007b7          	lui	a5,0xc7700
1c00a0ae:	a4278793          	addi	a5,a5,-1470 # c76ffa42 <pulp__FC+0xc76ffa43>
1c00a0b2:	32f12ca3          	sw	a5,825(sp)
1c00a0b6:	678d                	lui	a5,0x3
1c00a0b8:	0c778793          	addi	a5,a5,199 # 30c7 <__CTOR_LIST__-0x1bffcf3d>
1c00a0bc:	0690                	addi	a2,sp,832
1c00a0be:	8522                	mv	a0,s0
1c00a0c0:	32f11ea3          	sh	a5,829(sp)
1c00a0c4:	33010fa3          	sb	a6,831(sp)
1c00a0c8:	1d3010ef          	jal	ra,1c00ba9a <PQCLEAN_KYBER512_CLEAN_crypto_kem_dec>
1c00a0cc:	1c000537          	lui	a0,0x1c000
1c00a0d0:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c00a0d4:	2af020ef          	jal	ra,1c00cb82 <puts>
1c00a0d8:	1c000537          	lui	a0,0x1c000
1c00a0dc:	13050513          	addi	a0,a0,304 # 1c000130 <__DTOR_END__+0x114>
1c00a0e0:	2a3020ef          	jal	ra,1c00cb82 <puts>
1c00a0e4:	02040993          	addi	s3,s0,32
1c00a0e8:	84a2                	mv	s1,s0
1c00a0ea:	1c000937          	lui	s2,0x1c000
1c00a0ee:	0004c583          	lbu	a1,0(s1)
1c00a0f2:	13890513          	addi	a0,s2,312 # 1c000138 <__DTOR_END__+0x11c>
1c00a0f6:	0485                	addi	s1,s1,1
1c00a0f8:	34d020ef          	jal	ra,1c00cc44 <printf>
1c00a0fc:	ff3499e3          	bne	s1,s3,1c00a0ee <main+0x1fac>
1c00a100:	4529                	li	a0,10
1c00a102:	2fd020ef          	jal	ra,1c00cbfe <putchar>
1c00a106:	6885                	lui	a7,0x1
1c00a108:	77fd                	lui	a5,0xfffff
1c00a10a:	9a088893          	addi	a7,a7,-1632 # 9a0 <__CTOR_LIST__-0x1bfff664>
1c00a10e:	68078793          	addi	a5,a5,1664 # fffff680 <pulp__FC+0xfffff681>
1c00a112:	988a                	add	a7,a7,sp
1c00a114:	97c6                	add	a5,a5,a7
1c00a116:	a021                	j	1c00a11e <main+0x1fdc>
1c00a118:	0785                	addi	a5,a5,1
1c00a11a:	02940e63          	beq	s0,s1,1c00a156 <main+0x2014>
1c00a11e:	00044683          	lbu	a3,0(s0)
1c00a122:	0007c703          	lbu	a4,0(a5)
1c00a126:	0405                	addi	s0,s0,1
1c00a128:	fee688e3          	beq	a3,a4,1c00a118 <main+0x1fd6>
1c00a12c:	1c000537          	lui	a0,0x1c000
1c00a130:	14050513          	addi	a0,a0,320 # 1c000140 <__DTOR_END__+0x124>
1c00a134:	24f020ef          	jal	ra,1c00cb82 <puts>
1c00a138:	557d                	li	a0,-1
1c00a13a:	6179                	addi	sp,sp,464
1c00a13c:	7ec12083          	lw	ra,2028(sp)
1c00a140:	7e812403          	lw	s0,2024(sp)
1c00a144:	7e412483          	lw	s1,2020(sp)
1c00a148:	7e012903          	lw	s2,2016(sp)
1c00a14c:	7dc12983          	lw	s3,2012(sp)
1c00a150:	7f010113          	addi	sp,sp,2032
1c00a154:	8082                	ret
1c00a156:	4501                	li	a0,0
1c00a158:	b7cd                	j	1c00a13a <main+0x1ff8>

1c00a15a <pos_fll_init>:
1c00a15a:	1101                	addi	sp,sp,-32
1c00a15c:	1a100637          	lui	a2,0x1a100
1c00a160:	ca26                	sw	s1,20(sp)
1c00a162:	00451693          	slli	a3,a0,0x4
1c00a166:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00a16a:	94b6                	add	s1,s1,a3
1c00a16c:	4098                	lw	a4,0(s1)
1c00a16e:	c84a                	sw	s2,16(sp)
1c00a170:	ce06                	sw	ra,28(sp)
1c00a172:	cc22                	sw	s0,24(sp)
1c00a174:	c64e                	sw	s3,12(sp)
1c00a176:	c452                	sw	s4,8(sp)
1c00a178:	892a                	mv	s2,a0
1c00a17a:	87ba                	mv	a5,a4
1c00a17c:	04074563          	bltz	a4,1c00a1c6 <pos_fll_init+0x6c>
1c00a180:	00860593          	addi	a1,a2,8
1c00a184:	95b6                	add	a1,a1,a3
1c00a186:	419c                	lw	a5,0(a1)
1c00a188:	7541                	lui	a0,0xffff0
1c00a18a:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c00a18e:	8fe9                	and	a5,a5,a0
1c00a190:	6509                	lui	a0,0x2
1c00a192:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c00a196:	8fc9                	or	a5,a5,a0
1c00a198:	f0010537          	lui	a0,0xf0010
1c00a19c:	157d                	addi	a0,a0,-1
1c00a19e:	8fe9                	and	a5,a5,a0
1c00a1a0:	00500537          	lui	a0,0x500
1c00a1a4:	8fc9                	or	a5,a5,a0
1c00a1a6:	0631                	addi	a2,a2,12
1c00a1a8:	c19c                	sw	a5,0(a1)
1c00a1aa:	96b2                	add	a3,a3,a2
1c00a1ac:	429c                	lw	a5,0(a3)
1c00a1ae:	fc010637          	lui	a2,0xfc010
1c00a1b2:	167d                	addi	a2,a2,-1
1c00a1b4:	8ff1                	and	a5,a5,a2
1c00a1b6:	014c0637          	lui	a2,0x14c0
1c00a1ba:	8fd1                	or	a5,a5,a2
1c00a1bc:	c29c                	sw	a5,0(a3)
1c00a1be:	c00007b7          	lui	a5,0xc0000
1c00a1c2:	8fd9                	or	a5,a5,a4
1c00a1c4:	c09c                	sw	a5,0(s1)
1c00a1c6:	1c006437          	lui	s0,0x1c006
1c00a1ca:	26440413          	addi	s0,s0,612 # 1c006264 <pos_fll_freq>
1c00a1ce:	00291993          	slli	s3,s2,0x2
1c00a1d2:	013406b3          	add	a3,s0,s3
1c00a1d6:	0006aa03          	lw	s4,0(a3)
1c00a1da:	020a1d63          	bnez	s4,1c00a214 <pos_fll_init+0xba>
1c00a1de:	83e9                	srli	a5,a5,0x1a
1c00a1e0:	0742                	slli	a4,a4,0x10
1c00a1e2:	8341                	srli	a4,a4,0x10
1c00a1e4:	8bbd                	andi	a5,a5,15
1c00a1e6:	073e                	slli	a4,a4,0xf
1c00a1e8:	17fd                	addi	a5,a5,-1
1c00a1ea:	00f75a33          	srl	s4,a4,a5
1c00a1ee:	1c006537          	lui	a0,0x1c006
1c00a1f2:	0146a023          	sw	s4,0(a3)
1c00a1f6:	26050513          	addi	a0,a0,608 # 1c006260 <stack>
1c00a1fa:	954a                	add	a0,a0,s2
1c00a1fc:	4685                	li	a3,1
1c00a1fe:	00d50023          	sb	a3,0(a0)
1c00a202:	40f2                	lw	ra,28(sp)
1c00a204:	4462                	lw	s0,24(sp)
1c00a206:	8552                	mv	a0,s4
1c00a208:	44d2                	lw	s1,20(sp)
1c00a20a:	4942                	lw	s2,16(sp)
1c00a20c:	49b2                	lw	s3,12(sp)
1c00a20e:	4a22                	lw	s4,8(sp)
1c00a210:	6105                	addi	sp,sp,32
1c00a212:	8082                	ret
1c00a214:	8552                	mv	a0,s4
1c00a216:	ef1fd0ef          	jal	ra,1c008106 <__clzsi2>
1c00a21a:	1579                	addi	a0,a0,-2
1c00a21c:	00155613          	srli	a2,a0,0x1
1c00a220:	e631                	bnez	a2,1c00a26c <pos_fll_init+0x112>
1c00a222:	4709                	li	a4,2
1c00a224:	4585                	li	a1,1
1c00a226:	4605                	li	a2,1
1c00a228:	00ca17b3          	sll	a5,s4,a2
1c00a22c:	76e1                	lui	a3,0xffff8
1c00a22e:	1c006537          	lui	a0,0x1c006
1c00a232:	8efd                	and	a3,a3,a5
1c00a234:	26050513          	addi	a0,a0,608 # 1c006260 <stack>
1c00a238:	96ae                	add	a3,a3,a1
1c00a23a:	012505b3          	add	a1,a0,s2
1c00a23e:	00c6d6b3          	srl	a3,a3,a2
1c00a242:	944e                	add	s0,s0,s3
1c00a244:	0005c603          	lbu	a2,0(a1)
1c00a248:	c014                	sw	a3,0(s0)
1c00a24a:	da45                	beqz	a2,1c00a1fa <pos_fll_init+0xa0>
1c00a24c:	4094                	lw	a3,0(s1)
1c00a24e:	83bd                	srli	a5,a5,0xf
1c00a250:	07c2                	slli	a5,a5,0x10
1c00a252:	7641                	lui	a2,0xffff0
1c00a254:	83c1                	srli	a5,a5,0x10
1c00a256:	8ef1                	and	a3,a3,a2
1c00a258:	8edd                	or	a3,a3,a5
1c00a25a:	c40007b7          	lui	a5,0xc4000
1c00a25e:	8b3d                	andi	a4,a4,15
1c00a260:	17fd                	addi	a5,a5,-1
1c00a262:	076a                	slli	a4,a4,0x1a
1c00a264:	8efd                	and	a3,a3,a5
1c00a266:	8ed9                	or	a3,a3,a4
1c00a268:	c094                	sw	a3,0(s1)
1c00a26a:	bf41                	j	1c00a1fa <pos_fll_init+0xa0>
1c00a26c:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c00a270:	4685                	li	a3,1
1c00a272:	00b695b3          	sll	a1,a3,a1
1c00a276:	00160713          	addi	a4,a2,1
1c00a27a:	b77d                	j	1c00a228 <pos_fll_init+0xce>

1c00a27c <pos_fll_constructor>:
1c00a27c:	1c0067b7          	lui	a5,0x1c006
1c00a280:	26478793          	addi	a5,a5,612 # 1c006264 <pos_fll_freq>
1c00a284:	0007a023          	sw	zero,0(a5)
1c00a288:	0007a223          	sw	zero,4(a5)
1c00a28c:	1c0067b7          	lui	a5,0x1c006
1c00a290:	26079023          	sh	zero,608(a5) # 1c006260 <stack>
1c00a294:	8082                	ret

1c00a296 <pos_soc_init>:
1c00a296:	1141                	addi	sp,sp,-16
1c00a298:	c606                	sw	ra,12(sp)
1c00a29a:	c422                	sw	s0,8(sp)
1c00a29c:	37c5                	jal	1c00a27c <pos_fll_constructor>
1c00a29e:	4501                	li	a0,0
1c00a2a0:	3d6d                	jal	1c00a15a <pos_fll_init>
1c00a2a2:	1c006437          	lui	s0,0x1c006
1c00a2a6:	26a42623          	sw	a0,620(s0) # 1c00626c <pos_freq_domains>
1c00a2aa:	4505                	li	a0,1
1c00a2ac:	357d                	jal	1c00a15a <pos_fll_init>
1c00a2ae:	26c40413          	addi	s0,s0,620
1c00a2b2:	c408                	sw	a0,8(s0)
1c00a2b4:	40b2                	lw	ra,12(sp)
1c00a2b6:	4422                	lw	s0,8(sp)
1c00a2b8:	0141                	addi	sp,sp,16
1c00a2ba:	8082                	ret

1c00a2bc <KeccakF1600_StatePermute>:
1c00a2bc:	1a4007b7          	lui	a5,0x1a400
1c00a2c0:	1141                	addi	sp,sp,-16
1c00a2c2:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00a2c6:	4118                	lw	a4,0(a0)
1c00a2c8:	0791                	addi	a5,a5,4
1c00a2ca:	fee7ae23          	sw	a4,-4(a5)
1c00a2ce:	0511                	addi	a0,a0,4
1c00a2d0:	fed79be3          	bne	a5,a3,1c00a2c6 <KeccakF1600_StatePermute+0xa>
1c00a2d4:	1a4007b7          	lui	a5,0x1a400
1c00a2d8:	4705                	li	a4,1
1c00a2da:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00a2de:	1a400737          	lui	a4,0x1a400
1c00a2e2:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00a2e6:	8b85                	andi	a5,a5,1
1c00a2e8:	dfed                	beqz	a5,1c00a2e2 <KeccakF1600_StatePermute+0x26>
1c00a2ea:	c602                	sw	zero,12(sp)
1c00a2ec:	4732                	lw	a4,12(sp)
1c00a2ee:	03100793          	li	a5,49
1c00a2f2:	02e7c663          	blt	a5,a4,1c00a31e <KeccakF1600_StatePermute+0x62>
1c00a2f6:	1a400637          	lui	a2,0x1a400
1c00a2fa:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00a2fe:	03100513          	li	a0,49
1c00a302:	4732                	lw	a4,12(sp)
1c00a304:	47b2                	lw	a5,12(sp)
1c00a306:	070a                	slli	a4,a4,0x2
1c00a308:	9732                	add	a4,a4,a2
1c00a30a:	4314                	lw	a3,0(a4)
1c00a30c:	4732                	lw	a4,12(sp)
1c00a30e:	078a                	slli	a5,a5,0x2
1c00a310:	0705                	addi	a4,a4,1
1c00a312:	c63a                	sw	a4,12(sp)
1c00a314:	97ae                	add	a5,a5,a1
1c00a316:	4732                	lw	a4,12(sp)
1c00a318:	c394                	sw	a3,0(a5)
1c00a31a:	fee554e3          	ble	a4,a0,1c00a302 <KeccakF1600_StatePermute+0x46>
1c00a31e:	0141                	addi	sp,sp,16
1c00a320:	8082                	ret

1c00a322 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>:
1c00a322:	00249337          	lui	t1,0x249
1c00a326:	20050e13          	addi	t3,a0,512
1c00a32a:	24930313          	addi	t1,t1,585 # 249249 <__CTOR_LIST__-0x1bdb6dbb>
1c00a32e:	0015c703          	lbu	a4,1(a1)
1c00a332:	0025c783          	lbu	a5,2(a1)
1c00a336:	0005c683          	lbu	a3,0(a1)
1c00a33a:	07c2                	slli	a5,a5,0x10
1c00a33c:	0722                	slli	a4,a4,0x8
1c00a33e:	8f5d                	or	a4,a4,a5
1c00a340:	8f55                	or	a4,a4,a3
1c00a342:	00175793          	srli	a5,a4,0x1
1c00a346:	00275693          	srli	a3,a4,0x2
1c00a34a:	0066f6b3          	and	a3,a3,t1
1c00a34e:	0067f7b3          	and	a5,a5,t1
1c00a352:	00677733          	and	a4,a4,t1
1c00a356:	97b6                	add	a5,a5,a3
1c00a358:	97ba                	add	a5,a5,a4
1c00a35a:	0037df13          	srli	t5,a5,0x3
1c00a35e:	0067d613          	srli	a2,a5,0x6
1c00a362:	0097de93          	srli	t4,a5,0x9
1c00a366:	00c7d693          	srli	a3,a5,0xc
1c00a36a:	00f7d893          	srli	a7,a5,0xf
1c00a36e:	0127d713          	srli	a4,a5,0x12
1c00a372:	0077f813          	andi	a6,a5,7
1c00a376:	007f7f13          	andi	t5,t5,7
1c00a37a:	8a1d                	andi	a2,a2,7
1c00a37c:	007efe93          	andi	t4,t4,7
1c00a380:	8a9d                	andi	a3,a3,7
1c00a382:	0078f893          	andi	a7,a7,7
1c00a386:	8b1d                	andi	a4,a4,7
1c00a388:	83d5                	srli	a5,a5,0x15
1c00a38a:	41e80833          	sub	a6,a6,t5
1c00a38e:	41d60633          	sub	a2,a2,t4
1c00a392:	411686b3          	sub	a3,a3,a7
1c00a396:	40f707b3          	sub	a5,a4,a5
1c00a39a:	01051023          	sh	a6,0(a0)
1c00a39e:	00c51123          	sh	a2,2(a0)
1c00a3a2:	00d51223          	sh	a3,4(a0)
1c00a3a6:	00f51323          	sh	a5,6(a0)
1c00a3aa:	0521                	addi	a0,a0,8
1c00a3ac:	058d                	addi	a1,a1,3
1c00a3ae:	f8ae10e3          	bne	t3,a0,1c00a32e <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1+0xc>
1c00a3b2:	8082                	ret

1c00a3b4 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>:
1c00a3b4:	1141                	addi	sp,sp,-16
1c00a3b6:	55555337          	lui	t1,0x55555
1c00a3ba:	68c1                	lui	a7,0x10
1c00a3bc:	c622                	sw	s0,12(sp)
1c00a3be:	c426                	sw	s1,8(sp)
1c00a3c0:	c24a                	sw	s2,4(sp)
1c00a3c2:	20050e13          	addi	t3,a0,512
1c00a3c6:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00a3ca:	18fd                	addi	a7,a7,-1
1c00a3cc:	419c                	lw	a5,0(a1)
1c00a3ce:	0541                	addi	a0,a0,16
1c00a3d0:	0017d713          	srli	a4,a5,0x1
1c00a3d4:	00677733          	and	a4,a4,t1
1c00a3d8:	0067f7b3          	and	a5,a5,t1
1c00a3dc:	97ba                	add	a5,a5,a4
1c00a3de:	0027d913          	srli	s2,a5,0x2
1c00a3e2:	0087d693          	srli	a3,a5,0x8
1c00a3e6:	00a7d493          	srli	s1,a5,0xa
1c00a3ea:	0107d713          	srli	a4,a5,0x10
1c00a3ee:	0127d413          	srli	s0,a5,0x12
1c00a3f2:	0037f613          	andi	a2,a5,3
1c00a3f6:	00397913          	andi	s2,s2,3
1c00a3fa:	8a8d                	andi	a3,a3,3
1c00a3fc:	888d                	andi	s1,s1,3
1c00a3fe:	8b0d                	andi	a4,a4,3
1c00a400:	880d                	andi	s0,s0,3
1c00a402:	0047df13          	srli	t5,a5,0x4
1c00a406:	0067d393          	srli	t2,a5,0x6
1c00a40a:	00c7de93          	srli	t4,a5,0xc
1c00a40e:	00e7d293          	srli	t0,a5,0xe
1c00a412:	0147d813          	srli	a6,a5,0x14
1c00a416:	0167df93          	srli	t6,a5,0x16
1c00a41a:	41260633          	sub	a2,a2,s2
1c00a41e:	8e85                	sub	a3,a3,s1
1c00a420:	8f01                	sub	a4,a4,s0
1c00a422:	0033f393          	andi	t2,t2,3
1c00a426:	0032f293          	andi	t0,t0,3
1c00a42a:	003fff93          	andi	t6,t6,3
1c00a42e:	003f7f13          	andi	t5,t5,3
1c00a432:	003efe93          	andi	t4,t4,3
1c00a436:	00387813          	andi	a6,a6,3
1c00a43a:	0642                	slli	a2,a2,0x10
1c00a43c:	06c2                	slli	a3,a3,0x10
1c00a43e:	0742                	slli	a4,a4,0x10
1c00a440:	407f0f33          	sub	t5,t5,t2
1c00a444:	405e8eb3          	sub	t4,t4,t0
1c00a448:	41f80833          	sub	a6,a6,t6
1c00a44c:	0187d293          	srli	t0,a5,0x18
1c00a450:	01a7d393          	srli	t2,a5,0x1a
1c00a454:	01c7df93          	srli	t6,a5,0x1c
1c00a458:	8241                	srli	a2,a2,0x10
1c00a45a:	82c1                	srli	a3,a3,0x10
1c00a45c:	8341                	srli	a4,a4,0x10
1c00a45e:	0842                	slli	a6,a6,0x10
1c00a460:	0f42                	slli	t5,t5,0x10
1c00a462:	01167633          	and	a2,a2,a7
1c00a466:	0ec2                	slli	t4,t4,0x10
1c00a468:	0116f6b3          	and	a3,a3,a7
1c00a46c:	01177733          	and	a4,a4,a7
1c00a470:	0032f293          	andi	t0,t0,3
1c00a474:	0033f393          	andi	t2,t2,3
1c00a478:	003fff93          	andi	t6,t6,3
1c00a47c:	83f9                	srli	a5,a5,0x1e
1c00a47e:	01076733          	or	a4,a4,a6
1c00a482:	01e66633          	or	a2,a2,t5
1c00a486:	01d6e6b3          	or	a3,a3,t4
1c00a48a:	40728833          	sub	a6,t0,t2
1c00a48e:	40ff87b3          	sub	a5,t6,a5
1c00a492:	fec52823          	sw	a2,-16(a0)
1c00a496:	fed52a23          	sw	a3,-12(a0)
1c00a49a:	fee52c23          	sw	a4,-8(a0)
1c00a49e:	ff051e23          	sh	a6,-4(a0)
1c00a4a2:	fef51f23          	sh	a5,-2(a0)
1c00a4a6:	0591                	addi	a1,a1,4
1c00a4a8:	f3c512e3          	bne	a0,t3,1c00a3cc <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2+0x18>
1c00a4ac:	4432                	lw	s0,12(sp)
1c00a4ae:	44a2                	lw	s1,8(sp)
1c00a4b0:	4912                	lw	s2,4(sp)
1c00a4b2:	0141                	addi	sp,sp,16
1c00a4b4:	8082                	ret

1c00a4b6 <keccak_absorb.constprop.7>:
1c00a4b6:	7151                	addi	sp,sp,-240
1c00a4b8:	d3a6                	sw	s1,228(sp)
1c00a4ba:	cfce                	sw	s3,220(sp)
1c00a4bc:	cdd2                	sw	s4,216(sp)
1c00a4be:	cbd6                	sw	s5,212(sp)
1c00a4c0:	d786                	sw	ra,236(sp)
1c00a4c2:	d5a2                	sw	s0,232(sp)
1c00a4c4:	d1ca                	sw	s2,224(sp)
1c00a4c6:	89aa                	mv	s3,a0
1c00a4c8:	8a32                	mv	s4,a2
1c00a4ca:	84b6                	mv	s1,a3
1c00a4cc:	8aaa                	mv	s5,a0
1c00a4ce:	0c850713          	addi	a4,a0,200
1c00a4d2:	87aa                	mv	a5,a0
1c00a4d4:	4601                	li	a2,0
1c00a4d6:	4681                	li	a3,0
1c00a4d8:	c390                	sw	a2,0(a5)
1c00a4da:	c3d4                	sw	a3,4(a5)
1c00a4dc:	07a1                	addi	a5,a5,8
1c00a4de:	fef71be3          	bne	a4,a5,1c00a4d4 <keccak_absorb.constprop.7+0x1e>
1c00a4e2:	08700793          	li	a5,135
1c00a4e6:	0747fb63          	bleu	s4,a5,1c00a55c <keccak_absorb.constprop.7+0xa6>
1c00a4ea:	08700413          	li	s0,135
1c00a4ee:	08858913          	addi	s2,a1,136
1c00a4f2:	874e                	mv	a4,s3
1c00a4f4:	0015c783          	lbu	a5,1(a1)
1c00a4f8:	0025c603          	lbu	a2,2(a1)
1c00a4fc:	0055c883          	lbu	a7,5(a1)
1c00a500:	0045c303          	lbu	t1,4(a1)
1c00a504:	0065c803          	lbu	a6,6(a1)
1c00a508:	0005ce03          	lbu	t3,0(a1)
1c00a50c:	0035c503          	lbu	a0,3(a1)
1c00a510:	0075c683          	lbu	a3,7(a1)
1c00a514:	0642                	slli	a2,a2,0x10
1c00a516:	07a2                	slli	a5,a5,0x8
1c00a518:	08a2                	slli	a7,a7,0x8
1c00a51a:	8fd1                	or	a5,a5,a2
1c00a51c:	0068e8b3          	or	a7,a7,t1
1c00a520:	0842                	slli	a6,a6,0x10
1c00a522:	00072303          	lw	t1,0(a4)
1c00a526:	4350                	lw	a2,4(a4)
1c00a528:	01c7e7b3          	or	a5,a5,t3
1c00a52c:	0562                	slli	a0,a0,0x18
1c00a52e:	01186833          	or	a6,a6,a7
1c00a532:	06e2                	slli	a3,a3,0x18
1c00a534:	8fc9                	or	a5,a5,a0
1c00a536:	0106e6b3          	or	a3,a3,a6
1c00a53a:	00f347b3          	xor	a5,t1,a5
1c00a53e:	8eb1                	xor	a3,a3,a2
1c00a540:	c31c                	sw	a5,0(a4)
1c00a542:	c354                	sw	a3,4(a4)
1c00a544:	05a1                	addi	a1,a1,8
1c00a546:	0721                	addi	a4,a4,8
1c00a548:	fab916e3          	bne	s2,a1,1c00a4f4 <keccak_absorb.constprop.7+0x3e>
1c00a54c:	85ce                	mv	a1,s3
1c00a54e:	854e                	mv	a0,s3
1c00a550:	33b5                	jal	1c00a2bc <KeccakF1600_StatePermute>
1c00a552:	f78a0a13          	addi	s4,s4,-136
1c00a556:	85ca                	mv	a1,s2
1c00a558:	f9446be3          	bltu	s0,s4,1c00a4ee <keccak_absorb.constprop.7+0x38>
1c00a55c:	003c                	addi	a5,sp,8
1c00a55e:	0918                	addi	a4,sp,144
1c00a560:	883e                	mv	a6,a5
1c00a562:	4681                	li	a3,0
1c00a564:	00d82023          	sw	a3,0(a6)
1c00a568:	0811                	addi	a6,a6,4
1c00a56a:	ff071ce3          	bne	a4,a6,1c00a562 <keccak_absorb.constprop.7+0xac>
1c00a56e:	060a0463          	beqz	s4,1c00a5d6 <keccak_absorb.constprop.7+0x120>
1c00a572:	fffa0713          	addi	a4,s4,-1
1c00a576:	4689                	li	a3,2
1c00a578:	0ee6f163          	bleu	a4,a3,1c00a65a <keccak_absorb.constprop.7+0x1a4>
1c00a57c:	002a5893          	srli	a7,s4,0x2
1c00a580:	862e                	mv	a2,a1
1c00a582:	86be                	mv	a3,a5
1c00a584:	4701                	li	a4,0
1c00a586:	4208                	lw	a0,0(a2)
1c00a588:	0705                	addi	a4,a4,1
1c00a58a:	c288                	sw	a0,0(a3)
1c00a58c:	0611                	addi	a2,a2,4
1c00a58e:	0691                	addi	a3,a3,4
1c00a590:	ff176be3          	bltu	a4,a7,1c00a586 <keccak_absorb.constprop.7+0xd0>
1c00a594:	ffca7713          	andi	a4,s4,-4
1c00a598:	02ea0f63          	beq	s4,a4,1c00a5d6 <keccak_absorb.constprop.7+0x120>
1c00a59c:	00e586b3          	add	a3,a1,a4
1c00a5a0:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c00a5a4:	0988                	addi	a0,sp,208
1c00a5a6:	00e506b3          	add	a3,a0,a4
1c00a5aa:	f2c68c23          	sb	a2,-200(a3)
1c00a5ae:	00170693          	addi	a3,a4,1
1c00a5b2:	0346f263          	bleu	s4,a3,1c00a5d6 <keccak_absorb.constprop.7+0x120>
1c00a5b6:	00d58633          	add	a2,a1,a3
1c00a5ba:	00064603          	lbu	a2,0(a2)
1c00a5be:	96aa                	add	a3,a3,a0
1c00a5c0:	f2c68c23          	sb	a2,-200(a3)
1c00a5c4:	0709                	addi	a4,a4,2
1c00a5c6:	01477863          	bleu	s4,a4,1c00a5d6 <keccak_absorb.constprop.7+0x120>
1c00a5ca:	95ba                	add	a1,a1,a4
1c00a5cc:	0005c683          	lbu	a3,0(a1)
1c00a5d0:	972a                	add	a4,a4,a0
1c00a5d2:	f2d70c23          	sb	a3,-200(a4)
1c00a5d6:	0990                	addi	a2,sp,208
1c00a5d8:	9a32                	add	s4,s4,a2
1c00a5da:	f29a0c23          	sb	s1,-200(s4)
1c00a5de:	08f14703          	lbu	a4,143(sp)
1c00a5e2:	f8076713          	ori	a4,a4,-128
1c00a5e6:	08e107a3          	sb	a4,143(sp)
1c00a5ea:	0017c703          	lbu	a4,1(a5)
1c00a5ee:	0027c883          	lbu	a7,2(a5)
1c00a5f2:	0057c503          	lbu	a0,5(a5)
1c00a5f6:	0047c303          	lbu	t1,4(a5)
1c00a5fa:	0067c583          	lbu	a1,6(a5)
1c00a5fe:	0007ce03          	lbu	t3,0(a5)
1c00a602:	0037c603          	lbu	a2,3(a5)
1c00a606:	0077c683          	lbu	a3,7(a5)
1c00a60a:	08c2                	slli	a7,a7,0x10
1c00a60c:	0722                	slli	a4,a4,0x8
1c00a60e:	0522                	slli	a0,a0,0x8
1c00a610:	01176733          	or	a4,a4,a7
1c00a614:	00656533          	or	a0,a0,t1
1c00a618:	05c2                	slli	a1,a1,0x10
1c00a61a:	000aa303          	lw	t1,0(s5)
1c00a61e:	004aa883          	lw	a7,4(s5)
1c00a622:	01c76733          	or	a4,a4,t3
1c00a626:	0662                	slli	a2,a2,0x18
1c00a628:	8dc9                	or	a1,a1,a0
1c00a62a:	06e2                	slli	a3,a3,0x18
1c00a62c:	8f51                	or	a4,a4,a2
1c00a62e:	8ecd                	or	a3,a3,a1
1c00a630:	00e34733          	xor	a4,t1,a4
1c00a634:	00d8c6b3          	xor	a3,a7,a3
1c00a638:	00eaa023          	sw	a4,0(s5)
1c00a63c:	00daa223          	sw	a3,4(s5)
1c00a640:	07a1                	addi	a5,a5,8
1c00a642:	0aa1                	addi	s5,s5,8
1c00a644:	faf813e3          	bne	a6,a5,1c00a5ea <keccak_absorb.constprop.7+0x134>
1c00a648:	50be                	lw	ra,236(sp)
1c00a64a:	542e                	lw	s0,232(sp)
1c00a64c:	549e                	lw	s1,228(sp)
1c00a64e:	590e                	lw	s2,224(sp)
1c00a650:	49fe                	lw	s3,220(sp)
1c00a652:	4a6e                	lw	s4,216(sp)
1c00a654:	4ade                	lw	s5,212(sp)
1c00a656:	616d                	addi	sp,sp,240
1c00a658:	8082                	ret
1c00a65a:	4701                	li	a4,0
1c00a65c:	b781                	j	1c00a59c <keccak_absorb.constprop.7+0xe6>

1c00a65e <shake128_absorb>:
1c00a65e:	7151                	addi	sp,sp,-240
1c00a660:	d5a2                	sw	s0,232(sp)
1c00a662:	842a                	mv	s0,a0
1c00a664:	0c800513          	li	a0,200
1c00a668:	d1ca                	sw	s2,224(sp)
1c00a66a:	cfce                	sw	s3,220(sp)
1c00a66c:	d786                	sw	ra,236(sp)
1c00a66e:	d3a6                	sw	s1,228(sp)
1c00a670:	cdd2                	sw	s4,216(sp)
1c00a672:	892e                	mv	s2,a1
1c00a674:	89b2                	mv	s3,a2
1c00a676:	700030ef          	jal	ra,1c00dd76 <pi_l2_malloc>
1c00a67a:	c008                	sw	a0,0(s0)
1c00a67c:	1a050663          	beqz	a0,1c00a828 <shake128_absorb+0x1ca>
1c00a680:	8a2a                	mv	s4,a0
1c00a682:	0c850713          	addi	a4,a0,200
1c00a686:	87aa                	mv	a5,a0
1c00a688:	4601                	li	a2,0
1c00a68a:	4681                	li	a3,0
1c00a68c:	c390                	sw	a2,0(a5)
1c00a68e:	c3d4                	sw	a3,4(a5)
1c00a690:	07a1                	addi	a5,a5,8
1c00a692:	fef71be3          	bne	a4,a5,1c00a688 <shake128_absorb+0x2a>
1c00a696:	0a700793          	li	a5,167
1c00a69a:	0937f163          	bleu	s3,a5,1c00a71c <shake128_absorb+0xbe>
1c00a69e:	412a04b3          	sub	s1,s4,s2
1c00a6a2:	0a700413          	li	s0,167
1c00a6a6:	85ca                	mv	a1,s2
1c00a6a8:	0a890913          	addi	s2,s2,168
1c00a6ac:	0015c783          	lbu	a5,1(a1)
1c00a6b0:	0025c603          	lbu	a2,2(a1)
1c00a6b4:	0055c803          	lbu	a6,5(a1)
1c00a6b8:	0045c303          	lbu	t1,4(a1)
1c00a6bc:	0065c503          	lbu	a0,6(a1)
1c00a6c0:	0005ce03          	lbu	t3,0(a1)
1c00a6c4:	0035c683          	lbu	a3,3(a1)
1c00a6c8:	0075c703          	lbu	a4,7(a1)
1c00a6cc:	0642                	slli	a2,a2,0x10
1c00a6ce:	07a2                	slli	a5,a5,0x8
1c00a6d0:	0822                	slli	a6,a6,0x8
1c00a6d2:	00b488b3          	add	a7,s1,a1
1c00a6d6:	8fd1                	or	a5,a5,a2
1c00a6d8:	00686833          	or	a6,a6,t1
1c00a6dc:	0542                	slli	a0,a0,0x10
1c00a6de:	0008a603          	lw	a2,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00a6e2:	0048a303          	lw	t1,4(a7)
1c00a6e6:	01c7e7b3          	or	a5,a5,t3
1c00a6ea:	06e2                	slli	a3,a3,0x18
1c00a6ec:	01056533          	or	a0,a0,a6
1c00a6f0:	0762                	slli	a4,a4,0x18
1c00a6f2:	8fd5                	or	a5,a5,a3
1c00a6f4:	8f49                	or	a4,a4,a0
1c00a6f6:	8fb1                	xor	a5,a5,a2
1c00a6f8:	00e34733          	xor	a4,t1,a4
1c00a6fc:	00f8a023          	sw	a5,0(a7)
1c00a700:	00e8a223          	sw	a4,4(a7)
1c00a704:	05a1                	addi	a1,a1,8
1c00a706:	fab913e3          	bne	s2,a1,1c00a6ac <shake128_absorb+0x4e>
1c00a70a:	85d2                	mv	a1,s4
1c00a70c:	8552                	mv	a0,s4
1c00a70e:	f5898993          	addi	s3,s3,-168
1c00a712:	366d                	jal	1c00a2bc <KeccakF1600_StatePermute>
1c00a714:	f5848493          	addi	s1,s1,-168
1c00a718:	f93467e3          	bltu	s0,s3,1c00a6a6 <shake128_absorb+0x48>
1c00a71c:	191c                	addi	a5,sp,176
1c00a71e:	00810813          	addi	a6,sp,8
1c00a722:	4681                	li	a3,0
1c00a724:	00d82023          	sw	a3,0(a6)
1c00a728:	0811                	addi	a6,a6,4
1c00a72a:	ff079ce3          	bne	a5,a6,1c00a722 <shake128_absorb+0xc4>
1c00a72e:	06098563          	beqz	s3,1c00a798 <shake128_absorb+0x13a>
1c00a732:	fff98793          	addi	a5,s3,-1
1c00a736:	4709                	li	a4,2
1c00a738:	0ef77663          	bleu	a5,a4,1c00a824 <shake128_absorb+0x1c6>
1c00a73c:	0029d513          	srli	a0,s3,0x2
1c00a740:	86ca                	mv	a3,s2
1c00a742:	0038                	addi	a4,sp,8
1c00a744:	4781                	li	a5,0
1c00a746:	4290                	lw	a2,0(a3)
1c00a748:	0785                	addi	a5,a5,1
1c00a74a:	c310                	sw	a2,0(a4)
1c00a74c:	0691                	addi	a3,a3,4
1c00a74e:	0711                	addi	a4,a4,4
1c00a750:	fea7ebe3          	bltu	a5,a0,1c00a746 <shake128_absorb+0xe8>
1c00a754:	ffc9f793          	andi	a5,s3,-4
1c00a758:	04f98063          	beq	s3,a5,1c00a798 <shake128_absorb+0x13a>
1c00a75c:	00f90733          	add	a4,s2,a5
1c00a760:	00074683          	lbu	a3,0(a4)
1c00a764:	0990                	addi	a2,sp,208
1c00a766:	00f60733          	add	a4,a2,a5
1c00a76a:	f2d70c23          	sb	a3,-200(a4)
1c00a76e:	00178713          	addi	a4,a5,1
1c00a772:	03377363          	bleu	s3,a4,1c00a798 <shake128_absorb+0x13a>
1c00a776:	00e906b3          	add	a3,s2,a4
1c00a77a:	0006c683          	lbu	a3,0(a3)
1c00a77e:	9732                	add	a4,a4,a2
1c00a780:	f2d70c23          	sb	a3,-200(a4)
1c00a784:	0789                	addi	a5,a5,2
1c00a786:	0137f963          	bleu	s3,a5,1c00a798 <shake128_absorb+0x13a>
1c00a78a:	00f905b3          	add	a1,s2,a5
1c00a78e:	0005c703          	lbu	a4,0(a1)
1c00a792:	97b2                	add	a5,a5,a2
1c00a794:	f2e78c23          	sb	a4,-200(a5)
1c00a798:	0994                	addi	a3,sp,208
1c00a79a:	47fd                	li	a5,31
1c00a79c:	99b6                	add	s3,s3,a3
1c00a79e:	f2f98c23          	sb	a5,-200(s3)
1c00a7a2:	0af14703          	lbu	a4,175(sp)
1c00a7a6:	003c                	addi	a5,sp,8
1c00a7a8:	f8076713          	ori	a4,a4,-128
1c00a7ac:	0ae107a3          	sb	a4,175(sp)
1c00a7b0:	40fa0a33          	sub	s4,s4,a5
1c00a7b4:	0017c703          	lbu	a4,1(a5)
1c00a7b8:	0027c303          	lbu	t1,2(a5)
1c00a7bc:	0057c503          	lbu	a0,5(a5)
1c00a7c0:	0047ce03          	lbu	t3,4(a5)
1c00a7c4:	0067c583          	lbu	a1,6(a5)
1c00a7c8:	0007ce83          	lbu	t4,0(a5)
1c00a7cc:	0037c603          	lbu	a2,3(a5)
1c00a7d0:	0077c683          	lbu	a3,7(a5)
1c00a7d4:	0342                	slli	t1,t1,0x10
1c00a7d6:	0722                	slli	a4,a4,0x8
1c00a7d8:	0522                	slli	a0,a0,0x8
1c00a7da:	00fa08b3          	add	a7,s4,a5
1c00a7de:	00676733          	or	a4,a4,t1
1c00a7e2:	01c56533          	or	a0,a0,t3
1c00a7e6:	05c2                	slli	a1,a1,0x10
1c00a7e8:	0008ae03          	lw	t3,0(a7)
1c00a7ec:	0048a303          	lw	t1,4(a7)
1c00a7f0:	01d76733          	or	a4,a4,t4
1c00a7f4:	0662                	slli	a2,a2,0x18
1c00a7f6:	8dc9                	or	a1,a1,a0
1c00a7f8:	06e2                	slli	a3,a3,0x18
1c00a7fa:	8f51                	or	a4,a4,a2
1c00a7fc:	8ecd                	or	a3,a3,a1
1c00a7fe:	00ee4733          	xor	a4,t3,a4
1c00a802:	00d346b3          	xor	a3,t1,a3
1c00a806:	00e8a023          	sw	a4,0(a7)
1c00a80a:	00d8a223          	sw	a3,4(a7)
1c00a80e:	07a1                	addi	a5,a5,8
1c00a810:	faf812e3          	bne	a6,a5,1c00a7b4 <shake128_absorb+0x156>
1c00a814:	50be                	lw	ra,236(sp)
1c00a816:	542e                	lw	s0,232(sp)
1c00a818:	549e                	lw	s1,228(sp)
1c00a81a:	590e                	lw	s2,224(sp)
1c00a81c:	49fe                	lw	s3,220(sp)
1c00a81e:	4a6e                	lw	s4,216(sp)
1c00a820:	616d                	addi	sp,sp,240
1c00a822:	8082                	ret
1c00a824:	4781                	li	a5,0
1c00a826:	bf1d                	j	1c00a75c <shake128_absorb+0xfe>
1c00a828:	06f00513          	li	a0,111
1c00a82c:	3fc020ef          	jal	ra,1c00cc28 <exit>

1c00a830 <shake128_squeezeblocks>:
1c00a830:	1101                	addi	sp,sp,-32
1c00a832:	c452                	sw	s4,8(sp)
1c00a834:	ce06                	sw	ra,28(sp)
1c00a836:	cc22                	sw	s0,24(sp)
1c00a838:	ca26                	sw	s1,20(sp)
1c00a83a:	c84a                	sw	s2,16(sp)
1c00a83c:	c64e                	sw	s3,12(sp)
1c00a83e:	c256                	sw	s5,4(sp)
1c00a840:	00062a03          	lw	s4,0(a2)
1c00a844:	cdc9                	beqz	a1,1c00a8de <shake128_squeezeblocks+0xae>
1c00a846:	7941                	lui	s2,0xffff0
1c00a848:	ff0104b7          	lui	s1,0xff010
1c00a84c:	01000437          	lui	s0,0x1000
1c00a850:	89ae                	mv	s3,a1
1c00a852:	8aaa                	mv	s5,a0
1c00a854:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a858:	14fd                	addi	s1,s1,-1
1c00a85a:	147d                	addi	s0,s0,-1
1c00a85c:	85d2                	mv	a1,s4
1c00a85e:	8552                	mv	a0,s4
1c00a860:	3cb1                	jal	1c00a2bc <KeccakF1600_StatePermute>
1c00a862:	85d6                	mv	a1,s5
1c00a864:	8852                	mv	a6,s4
1c00a866:	0a8a8513          	addi	a0,s5,168
1c00a86a:	00082603          	lw	a2,0(a6)
1c00a86e:	00482683          	lw	a3,4(a6)
1c00a872:	00865313          	srli	t1,a2,0x8
1c00a876:	0086d893          	srli	a7,a3,0x8
1c00a87a:	0ff67713          	andi	a4,a2,255
1c00a87e:	0ff6f793          	andi	a5,a3,255
1c00a882:	0ff37313          	andi	t1,t1,255
1c00a886:	0ff8f893          	andi	a7,a7,255
1c00a88a:	0322                	slli	t1,t1,0x8
1c00a88c:	08a2                	slli	a7,a7,0x8
1c00a88e:	01277733          	and	a4,a4,s2
1c00a892:	0127f7b3          	and	a5,a5,s2
1c00a896:	00676733          	or	a4,a4,t1
1c00a89a:	0117e7b3          	or	a5,a5,a7
1c00a89e:	00ff0337          	lui	t1,0xff0
1c00a8a2:	00ff08b7          	lui	a7,0xff0
1c00a8a6:	00667333          	and	t1,a2,t1
1c00a8aa:	0116f8b3          	and	a7,a3,a7
1c00a8ae:	8f65                	and	a4,a4,s1
1c00a8b0:	8fe5                	and	a5,a5,s1
1c00a8b2:	00676733          	or	a4,a4,t1
1c00a8b6:	8261                	srli	a2,a2,0x18
1c00a8b8:	0117e7b3          	or	a5,a5,a7
1c00a8bc:	82e1                	srli	a3,a3,0x18
1c00a8be:	0662                	slli	a2,a2,0x18
1c00a8c0:	8f61                	and	a4,a4,s0
1c00a8c2:	06e2                	slli	a3,a3,0x18
1c00a8c4:	8fe1                	and	a5,a5,s0
1c00a8c6:	8f51                	or	a4,a4,a2
1c00a8c8:	8fd5                	or	a5,a5,a3
1c00a8ca:	c198                	sw	a4,0(a1)
1c00a8cc:	c1dc                	sw	a5,4(a1)
1c00a8ce:	05a1                	addi	a1,a1,8
1c00a8d0:	0821                	addi	a6,a6,8
1c00a8d2:	f8b51ce3          	bne	a0,a1,1c00a86a <shake128_squeezeblocks+0x3a>
1c00a8d6:	19fd                	addi	s3,s3,-1
1c00a8d8:	8aaa                	mv	s5,a0
1c00a8da:	f80991e3          	bnez	s3,1c00a85c <shake128_squeezeblocks+0x2c>
1c00a8de:	40f2                	lw	ra,28(sp)
1c00a8e0:	4462                	lw	s0,24(sp)
1c00a8e2:	44d2                	lw	s1,20(sp)
1c00a8e4:	4942                	lw	s2,16(sp)
1c00a8e6:	49b2                	lw	s3,12(sp)
1c00a8e8:	4a22                	lw	s4,8(sp)
1c00a8ea:	4a92                	lw	s5,4(sp)
1c00a8ec:	6105                	addi	sp,sp,32
1c00a8ee:	8082                	ret

1c00a8f0 <shake128_ctx_release>:
1c00a8f0:	4108                	lw	a0,0(a0)
1c00a8f2:	0c800593          	li	a1,200
1c00a8f6:	48c0306f          	j	1c00dd82 <pi_l2_free>

1c00a8fa <shake256>:
1c00a8fa:	7131                	addi	sp,sp,-192
1c00a8fc:	db26                	sw	s1,180(sp)
1c00a8fe:	d94a                	sw	s2,176(sp)
1c00a900:	08800493          	li	s1,136
1c00a904:	892a                	mv	s2,a0
1c00a906:	0c800513          	li	a0,200
1c00a90a:	dd22                	sw	s0,184(sp)
1c00a90c:	d74e                	sw	s3,172(sp)
1c00a90e:	d552                	sw	s4,168(sp)
1c00a910:	df06                	sw	ra,188(sp)
1c00a912:	d356                	sw	s5,164(sp)
1c00a914:	d15a                	sw	s6,160(sp)
1c00a916:	cf5e                	sw	s7,156(sp)
1c00a918:	cd62                	sw	s8,152(sp)
1c00a91a:	cb66                	sw	s9,148(sp)
1c00a91c:	89ae                	mv	s3,a1
1c00a91e:	8432                	mv	s0,a2
1c00a920:	8a36                	mv	s4,a3
1c00a922:	0295d4b3          	divu	s1,a1,s1
1c00a926:	450030ef          	jal	ra,1c00dd76 <pi_l2_malloc>
1c00a92a:	20050163          	beqz	a0,1c00ab2c <shake256+0x232>
1c00a92e:	46fd                	li	a3,31
1c00a930:	8652                	mv	a2,s4
1c00a932:	85a2                	mv	a1,s0
1c00a934:	8b2a                	mv	s6,a0
1c00a936:	3641                	jal	1c00a4b6 <keccak_absorb.constprop.7>
1c00a938:	c4dd                	beqz	s1,1c00a9e6 <shake256+0xec>
1c00a93a:	00449713          	slli	a4,s1,0x4
1c00a93e:	00970433          	add	s0,a4,s1
1c00a942:	040e                	slli	s0,s0,0x3
1c00a944:	7bc1                	lui	s7,0xffff0
1c00a946:	ff010ab7          	lui	s5,0xff010
1c00a94a:	01000a37          	lui	s4,0x1000
1c00a94e:	412b0c33          	sub	s8,s6,s2
1c00a952:	944a                	add	s0,s0,s2
1c00a954:	8cca                	mv	s9,s2
1c00a956:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00a95a:	1afd                	addi	s5,s5,-1
1c00a95c:	1a7d                	addi	s4,s4,-1
1c00a95e:	85da                	mv	a1,s6
1c00a960:	855a                	mv	a0,s6
1c00a962:	3aa9                	jal	1c00a2bc <KeccakF1600_StatePermute>
1c00a964:	8666                	mv	a2,s9
1c00a966:	088c8593          	addi	a1,s9,136
1c00a96a:	00cc07b3          	add	a5,s8,a2
1c00a96e:	4388                	lw	a0,0(a5)
1c00a970:	43d4                	lw	a3,4(a5)
1c00a972:	00855893          	srli	a7,a0,0x8
1c00a976:	0086d813          	srli	a6,a3,0x8
1c00a97a:	0ff57713          	andi	a4,a0,255
1c00a97e:	0ff6f793          	andi	a5,a3,255
1c00a982:	0ff8f893          	andi	a7,a7,255
1c00a986:	0ff87813          	andi	a6,a6,255
1c00a98a:	08a2                	slli	a7,a7,0x8
1c00a98c:	0822                	slli	a6,a6,0x8
1c00a98e:	01777733          	and	a4,a4,s7
1c00a992:	0177f7b3          	and	a5,a5,s7
1c00a996:	01176733          	or	a4,a4,a7
1c00a99a:	0107e7b3          	or	a5,a5,a6
1c00a99e:	00ff08b7          	lui	a7,0xff0
1c00a9a2:	00ff0837          	lui	a6,0xff0
1c00a9a6:	011578b3          	and	a7,a0,a7
1c00a9aa:	0106f833          	and	a6,a3,a6
1c00a9ae:	01577733          	and	a4,a4,s5
1c00a9b2:	0157f7b3          	and	a5,a5,s5
1c00a9b6:	01176733          	or	a4,a4,a7
1c00a9ba:	8161                	srli	a0,a0,0x18
1c00a9bc:	0107e7b3          	or	a5,a5,a6
1c00a9c0:	82e1                	srli	a3,a3,0x18
1c00a9c2:	0562                	slli	a0,a0,0x18
1c00a9c4:	01477733          	and	a4,a4,s4
1c00a9c8:	06e2                	slli	a3,a3,0x18
1c00a9ca:	0147f7b3          	and	a5,a5,s4
1c00a9ce:	8f49                	or	a4,a4,a0
1c00a9d0:	8fd5                	or	a5,a5,a3
1c00a9d2:	c218                	sw	a4,0(a2)
1c00a9d4:	c25c                	sw	a5,4(a2)
1c00a9d6:	0621                	addi	a2,a2,8
1c00a9d8:	f8c599e3          	bne	a1,a2,1c00a96a <shake256+0x70>
1c00a9dc:	8cae                	mv	s9,a1
1c00a9de:	f78c0c13          	addi	s8,s8,-136
1c00a9e2:	f6b41ee3          	bne	s0,a1,1c00a95e <shake256+0x64>
1c00a9e6:	08800793          	li	a5,136
1c00a9ea:	02f9f9b3          	remu	s3,s3,a5
1c00a9ee:	02099363          	bnez	s3,1c00aa14 <shake256+0x11a>
1c00a9f2:	546a                	lw	s0,184(sp)
1c00a9f4:	50fa                	lw	ra,188(sp)
1c00a9f6:	54da                	lw	s1,180(sp)
1c00a9f8:	594a                	lw	s2,176(sp)
1c00a9fa:	59ba                	lw	s3,172(sp)
1c00a9fc:	5a2a                	lw	s4,168(sp)
1c00a9fe:	5a9a                	lw	s5,164(sp)
1c00aa00:	4bfa                	lw	s7,156(sp)
1c00aa02:	4c6a                	lw	s8,152(sp)
1c00aa04:	4cda                	lw	s9,148(sp)
1c00aa06:	855a                	mv	a0,s6
1c00aa08:	5b0a                	lw	s6,160(sp)
1c00aa0a:	0c800593          	li	a1,200
1c00aa0e:	6129                	addi	sp,sp,192
1c00aa10:	3720306f          	j	1c00dd82 <pi_l2_free>
1c00aa14:	85da                	mv	a1,s6
1c00aa16:	855a                	mv	a0,s6
1c00aa18:	3055                	jal	1c00a2bc <KeccakF1600_StatePermute>
1c00aa1a:	002c                	addi	a1,sp,8
1c00aa1c:	78c1                	lui	a7,0xffff0
1c00aa1e:	ff010837          	lui	a6,0xff010
1c00aa22:	01000537          	lui	a0,0x1000
1c00aa26:	09010e13          	addi	t3,sp,144
1c00aa2a:	862e                	mv	a2,a1
1c00aa2c:	40bb0333          	sub	t1,s6,a1
1c00aa30:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00aa34:	187d                	addi	a6,a6,-1
1c00aa36:	157d                	addi	a0,a0,-1
1c00aa38:	00c307b3          	add	a5,t1,a2
1c00aa3c:	0007ae83          	lw	t4,0(a5)
1c00aa40:	43d4                	lw	a3,4(a5)
1c00aa42:	008edf93          	srli	t6,t4,0x8
1c00aa46:	0086df13          	srli	t5,a3,0x8
1c00aa4a:	0ffef713          	andi	a4,t4,255
1c00aa4e:	0ff6f793          	andi	a5,a3,255
1c00aa52:	0fffff93          	andi	t6,t6,255
1c00aa56:	0fff7f13          	andi	t5,t5,255
1c00aa5a:	0fa2                	slli	t6,t6,0x8
1c00aa5c:	0f22                	slli	t5,t5,0x8
1c00aa5e:	01177733          	and	a4,a4,a7
1c00aa62:	0117f7b3          	and	a5,a5,a7
1c00aa66:	01f76733          	or	a4,a4,t6
1c00aa6a:	01e7e7b3          	or	a5,a5,t5
1c00aa6e:	00ff0fb7          	lui	t6,0xff0
1c00aa72:	00ff0f37          	lui	t5,0xff0
1c00aa76:	01feffb3          	and	t6,t4,t6
1c00aa7a:	01e6ff33          	and	t5,a3,t5
1c00aa7e:	01077733          	and	a4,a4,a6
1c00aa82:	0107f7b3          	and	a5,a5,a6
1c00aa86:	01f76733          	or	a4,a4,t6
1c00aa8a:	018ede93          	srli	t4,t4,0x18
1c00aa8e:	01e7e7b3          	or	a5,a5,t5
1c00aa92:	82e1                	srli	a3,a3,0x18
1c00aa94:	0ee2                	slli	t4,t4,0x18
1c00aa96:	8f69                	and	a4,a4,a0
1c00aa98:	06e2                	slli	a3,a3,0x18
1c00aa9a:	8fe9                	and	a5,a5,a0
1c00aa9c:	01d76733          	or	a4,a4,t4
1c00aaa0:	8fd5                	or	a5,a5,a3
1c00aaa2:	c218                	sw	a4,0(a2)
1c00aaa4:	c25c                	sw	a5,4(a2)
1c00aaa6:	0621                	addi	a2,a2,8
1c00aaa8:	f8ce18e3          	bne	t3,a2,1c00aa38 <shake256+0x13e>
1c00aaac:	fff98793          	addi	a5,s3,-1
1c00aab0:	4709                	li	a4,2
1c00aab2:	06f77963          	bleu	a5,a4,1c00ab24 <shake256+0x22a>
1c00aab6:	00449713          	slli	a4,s1,0x4
1c00aaba:	009707b3          	add	a5,a4,s1
1c00aabe:	078e                	slli	a5,a5,0x3
1c00aac0:	0029d513          	srli	a0,s3,0x2
1c00aac4:	97ca                	add	a5,a5,s2
1c00aac6:	4681                	li	a3,0
1c00aac8:	4190                	lw	a2,0(a1)
1c00aaca:	0685                	addi	a3,a3,1
1c00aacc:	c390                	sw	a2,0(a5)
1c00aace:	0591                	addi	a1,a1,4
1c00aad0:	0791                	addi	a5,a5,4
1c00aad2:	fea6ebe3          	bltu	a3,a0,1c00aac8 <shake256+0x1ce>
1c00aad6:	ffc9f693          	andi	a3,s3,-4
1c00aada:	f0d98ce3          	beq	s3,a3,1c00a9f2 <shake256+0xf8>
1c00aade:	009707b3          	add	a5,a4,s1
1c00aae2:	090c                	addi	a1,sp,144
1c00aae4:	00d58733          	add	a4,a1,a3
1c00aae8:	078e                	slli	a5,a5,0x3
1c00aaea:	f7874603          	lbu	a2,-136(a4)
1c00aaee:	97ca                	add	a5,a5,s2
1c00aaf0:	00d78733          	add	a4,a5,a3
1c00aaf4:	00c70023          	sb	a2,0(a4)
1c00aaf8:	00168713          	addi	a4,a3,1
1c00aafc:	ef377be3          	bleu	s3,a4,1c00a9f2 <shake256+0xf8>
1c00ab00:	00e58633          	add	a2,a1,a4
1c00ab04:	f7864603          	lbu	a2,-136(a2)
1c00ab08:	973e                	add	a4,a4,a5
1c00ab0a:	00c70023          	sb	a2,0(a4)
1c00ab0e:	0689                	addi	a3,a3,2
1c00ab10:	ef36f1e3          	bleu	s3,a3,1c00a9f2 <shake256+0xf8>
1c00ab14:	00d58733          	add	a4,a1,a3
1c00ab18:	f7874703          	lbu	a4,-136(a4)
1c00ab1c:	97b6                	add	a5,a5,a3
1c00ab1e:	00e78023          	sb	a4,0(a5)
1c00ab22:	bdc1                	j	1c00a9f2 <shake256+0xf8>
1c00ab24:	4681                	li	a3,0
1c00ab26:	00449713          	slli	a4,s1,0x4
1c00ab2a:	bf55                	j	1c00aade <shake256+0x1e4>
1c00ab2c:	06f00513          	li	a0,111
1c00ab30:	0f8020ef          	jal	ra,1c00cc28 <exit>

1c00ab34 <sha3_256>:
1c00ab34:	7111                	addi	sp,sp,-256
1c00ab36:	dda2                	sw	s0,248(sp)
1c00ab38:	4699                	li	a3,6
1c00ab3a:	842a                	mv	s0,a0
1c00ab3c:	0028                	addi	a0,sp,8
1c00ab3e:	df86                	sw	ra,252(sp)
1c00ab40:	dba6                	sw	s1,244(sp)
1c00ab42:	d9ca                	sw	s2,240(sp)
1c00ab44:	d7ce                	sw	s3,236(sp)
1c00ab46:	d5d2                	sw	s4,232(sp)
1c00ab48:	d3d6                	sw	s5,228(sp)
1c00ab4a:	d1da                	sw	s6,224(sp)
1c00ab4c:	cfde                	sw	s7,220(sp)
1c00ab4e:	cde2                	sw	s8,216(sp)
1c00ab50:	cbe6                	sw	s9,212(sp)
1c00ab52:	c9ea                	sw	s10,208(sp)
1c00ab54:	328d                	jal	1c00a4b6 <keccak_absorb.constprop.7>
1c00ab56:	002c                	addi	a1,sp,8
1c00ab58:	852e                	mv	a0,a1
1c00ab5a:	f62ff0ef          	jal	ra,1c00a2bc <KeccakF1600_StatePermute>
1c00ab5e:	4f32                	lw	t5,12(sp)
1c00ab60:	4922                	lw	s2,8(sp)
1c00ab62:	4ec2                	lw	t4,16(sp)
1c00ab64:	4e52                	lw	t3,20(sp)
1c00ab66:	4362                	lw	t1,24(sp)
1c00ab68:	44f2                	lw	s1,28(sp)
1c00ab6a:	5382                	lw	t2,32(sp)
1c00ab6c:	5292                	lw	t0,36(sp)
1c00ab6e:	00895813          	srli	a6,s2,0x8
1c00ab72:	008f5513          	srli	a0,t5,0x8
1c00ab76:	008ed593          	srli	a1,t4,0x8
1c00ab7a:	008e5613          	srli	a2,t3,0x8
1c00ab7e:	00835693          	srli	a3,t1,0x8
1c00ab82:	0084d713          	srli	a4,s1,0x8
1c00ab86:	0083d993          	srli	s3,t2,0x8
1c00ab8a:	0082df93          	srli	t6,t0,0x8
1c00ab8e:	0ff87813          	andi	a6,a6,255
1c00ab92:	0ff57513          	andi	a0,a0,255
1c00ab96:	0ff5f593          	andi	a1,a1,255
1c00ab9a:	0ff67613          	andi	a2,a2,255
1c00ab9e:	0ff6f693          	andi	a3,a3,255
1c00aba2:	0ff77713          	andi	a4,a4,255
1c00aba6:	0ff9f993          	andi	s3,s3,255
1c00abaa:	0fffff93          	andi	t6,t6,255
1c00abae:	0fff7d13          	andi	s10,t5,255
1c00abb2:	0ffefc93          	andi	s9,t4,255
1c00abb6:	0ffe7c13          	andi	s8,t3,255
1c00abba:	0ff37b93          	andi	s7,t1,255
1c00abbe:	0ff4fb13          	andi	s6,s1,255
1c00abc2:	0ff3fa93          	andi	s5,t2,255
1c00abc6:	0ff2fa13          	andi	s4,t0,255
1c00abca:	0822                	slli	a6,a6,0x8
1c00abcc:	0ff97893          	andi	a7,s2,255
1c00abd0:	0522                	slli	a0,a0,0x8
1c00abd2:	05a2                	slli	a1,a1,0x8
1c00abd4:	0622                	slli	a2,a2,0x8
1c00abd6:	06a2                	slli	a3,a3,0x8
1c00abd8:	0722                	slli	a4,a4,0x8
1c00abda:	09a2                	slli	s3,s3,0x8
1c00abdc:	0fa2                	slli	t6,t6,0x8
1c00abde:	ff0107b7          	lui	a5,0xff010
1c00abe2:	17fd                	addi	a5,a5,-1
1c00abe4:	01fa6fb3          	or	t6,s4,t6
1c00abe8:	0108e8b3          	or	a7,a7,a6
1c00abec:	00ff0a37          	lui	s4,0xff0
1c00abf0:	00ad6833          	or	a6,s10,a0
1c00abf4:	00bce533          	or	a0,s9,a1
1c00abf8:	00ff0d37          	lui	s10,0xff0
1c00abfc:	00cc65b3          	or	a1,s8,a2
1c00ac00:	00ff0cb7          	lui	s9,0xff0
1c00ac04:	00dbe633          	or	a2,s7,a3
1c00ac08:	00ff0c37          	lui	s8,0xff0
1c00ac0c:	00eb66b3          	or	a3,s6,a4
1c00ac10:	00ff0bb7          	lui	s7,0xff0
1c00ac14:	013ae733          	or	a4,s5,s3
1c00ac18:	00ff0b37          	lui	s6,0xff0
1c00ac1c:	00ff0ab7          	lui	s5,0xff0
1c00ac20:	00ff09b7          	lui	s3,0xff0
1c00ac24:	01a97d33          	and	s10,s2,s10
1c00ac28:	019f7cb3          	and	s9,t5,s9
1c00ac2c:	018efc33          	and	s8,t4,s8
1c00ac30:	017e7bb3          	and	s7,t3,s7
1c00ac34:	01637b33          	and	s6,t1,s6
1c00ac38:	0154fab3          	and	s5,s1,s5
1c00ac3c:	0143fa33          	and	s4,t2,s4
1c00ac40:	0132f9b3          	and	s3,t0,s3
1c00ac44:	00f8f8b3          	and	a7,a7,a5
1c00ac48:	00f87833          	and	a6,a6,a5
1c00ac4c:	8d7d                	and	a0,a0,a5
1c00ac4e:	8dfd                	and	a1,a1,a5
1c00ac50:	8e7d                	and	a2,a2,a5
1c00ac52:	8efd                	and	a3,a3,a5
1c00ac54:	8f7d                	and	a4,a4,a5
1c00ac56:	00fff7b3          	and	a5,t6,a5
1c00ac5a:	01000fb7          	lui	t6,0x1000
1c00ac5e:	1ffd                	addi	t6,t6,-1
1c00ac60:	01a8e8b3          	or	a7,a7,s10
1c00ac64:	01986833          	or	a6,a6,s9
1c00ac68:	01856533          	or	a0,a0,s8
1c00ac6c:	0175e5b3          	or	a1,a1,s7
1c00ac70:	01666633          	or	a2,a2,s6
1c00ac74:	0156e6b3          	or	a3,a3,s5
1c00ac78:	01476733          	or	a4,a4,s4
1c00ac7c:	0137e7b3          	or	a5,a5,s3
1c00ac80:	01895913          	srli	s2,s2,0x18
1c00ac84:	018f5f13          	srli	t5,t5,0x18
1c00ac88:	018ede93          	srli	t4,t4,0x18
1c00ac8c:	018e5e13          	srli	t3,t3,0x18
1c00ac90:	01835313          	srli	t1,t1,0x18
1c00ac94:	80e1                	srli	s1,s1,0x18
1c00ac96:	0183d393          	srli	t2,t2,0x18
1c00ac9a:	0182d293          	srli	t0,t0,0x18
1c00ac9e:	0962                	slli	s2,s2,0x18
1c00aca0:	04e2                	slli	s1,s1,0x18
1c00aca2:	01f8f8b3          	and	a7,a7,t6
1c00aca6:	0f62                	slli	t5,t5,0x18
1c00aca8:	01f87833          	and	a6,a6,t6
1c00acac:	0ee2                	slli	t4,t4,0x18
1c00acae:	01f57533          	and	a0,a0,t6
1c00acb2:	0e62                	slli	t3,t3,0x18
1c00acb4:	01f5f5b3          	and	a1,a1,t6
1c00acb8:	0362                	slli	t1,t1,0x18
1c00acba:	01f67633          	and	a2,a2,t6
1c00acbe:	01f6f6b3          	and	a3,a3,t6
1c00acc2:	03e2                	slli	t2,t2,0x18
1c00acc4:	01f77733          	and	a4,a4,t6
1c00acc8:	02e2                	slli	t0,t0,0x18
1c00acca:	01f7f7b3          	and	a5,a5,t6
1c00acce:	0128e8b3          	or	a7,a7,s2
1c00acd2:	8ec5                	or	a3,a3,s1
1c00acd4:	01e86833          	or	a6,a6,t5
1c00acd8:	01d56533          	or	a0,a0,t4
1c00acdc:	01c5e5b3          	or	a1,a1,t3
1c00ace0:	00666633          	or	a2,a2,t1
1c00ace4:	00776733          	or	a4,a4,t2
1c00ace8:	0057e7b3          	or	a5,a5,t0
1c00acec:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00acf0:	01042223          	sw	a6,4(s0)
1c00acf4:	c408                	sw	a0,8(s0)
1c00acf6:	c44c                	sw	a1,12(s0)
1c00acf8:	c810                	sw	a2,16(s0)
1c00acfa:	c854                	sw	a3,20(s0)
1c00acfc:	cc18                	sw	a4,24(s0)
1c00acfe:	cc5c                	sw	a5,28(s0)
1c00ad00:	50fe                	lw	ra,252(sp)
1c00ad02:	546e                	lw	s0,248(sp)
1c00ad04:	54de                	lw	s1,244(sp)
1c00ad06:	594e                	lw	s2,240(sp)
1c00ad08:	59be                	lw	s3,236(sp)
1c00ad0a:	5a2e                	lw	s4,232(sp)
1c00ad0c:	5a9e                	lw	s5,228(sp)
1c00ad0e:	5b0e                	lw	s6,224(sp)
1c00ad10:	4bfe                	lw	s7,220(sp)
1c00ad12:	4c6e                	lw	s8,216(sp)
1c00ad14:	4cde                	lw	s9,212(sp)
1c00ad16:	4d4e                	lw	s10,208(sp)
1c00ad18:	6111                	addi	sp,sp,256
1c00ad1a:	8082                	ret

1c00ad1c <sha3_512>:
1c00ad1c:	db010113          	addi	sp,sp,-592
1c00ad20:	24812423          	sw	s0,584(sp)
1c00ad24:	23312e23          	sw	s3,572(sp)
1c00ad28:	23412c23          	sw	s4,568(sp)
1c00ad2c:	24112623          	sw	ra,588(sp)
1c00ad30:	24912223          	sw	s1,580(sp)
1c00ad34:	25212023          	sw	s2,576(sp)
1c00ad38:	23512a23          	sw	s5,564(sp)
1c00ad3c:	23612823          	sw	s6,560(sp)
1c00ad40:	23712623          	sw	s7,556(sp)
1c00ad44:	23812423          	sw	s8,552(sp)
1c00ad48:	23912223          	sw	s9,548(sp)
1c00ad4c:	23a12023          	sw	s10,544(sp)
1c00ad50:	21b12e23          	sw	s11,540(sp)
1c00ad54:	842a                	mv	s0,a0
1c00ad56:	8a32                	mv	s4,a2
1c00ad58:	14810993          	addi	s3,sp,328
1c00ad5c:	011c                	addi	a5,sp,128
1c00ad5e:	4601                	li	a2,0
1c00ad60:	4681                	li	a3,0
1c00ad62:	c390                	sw	a2,0(a5)
1c00ad64:	c3d4                	sw	a3,4(a5)
1c00ad66:	07a1                	addi	a5,a5,8
1c00ad68:	fef99be3          	bne	s3,a5,1c00ad5e <sha3_512+0x42>
1c00ad6c:	04700793          	li	a5,71
1c00ad70:	0747fe63          	bleu	s4,a5,1c00adec <sha3_512+0xd0>
1c00ad74:	04700493          	li	s1,71
1c00ad78:	87ae                	mv	a5,a1
1c00ad7a:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c00ad7e:	0114                	addi	a3,sp,128
1c00ad80:	0017c703          	lbu	a4,1(a5)
1c00ad84:	0027c583          	lbu	a1,2(a5)
1c00ad88:	0057c883          	lbu	a7,5(a5)
1c00ad8c:	0047c303          	lbu	t1,4(a5)
1c00ad90:	0067c803          	lbu	a6,6(a5)
1c00ad94:	0007ce03          	lbu	t3,0(a5)
1c00ad98:	0037c503          	lbu	a0,3(a5)
1c00ad9c:	0077c603          	lbu	a2,7(a5)
1c00ada0:	05c2                	slli	a1,a1,0x10
1c00ada2:	0722                	slli	a4,a4,0x8
1c00ada4:	08a2                	slli	a7,a7,0x8
1c00ada6:	8f4d                	or	a4,a4,a1
1c00ada8:	0068e8b3          	or	a7,a7,t1
1c00adac:	0842                	slli	a6,a6,0x10
1c00adae:	428c                	lw	a1,0(a3)
1c00adb0:	0046a303          	lw	t1,4(a3)
1c00adb4:	01c76733          	or	a4,a4,t3
1c00adb8:	0562                	slli	a0,a0,0x18
1c00adba:	01186833          	or	a6,a6,a7
1c00adbe:	0662                	slli	a2,a2,0x18
1c00adc0:	8f49                	or	a4,a4,a0
1c00adc2:	01066633          	or	a2,a2,a6
1c00adc6:	8f2d                	xor	a4,a4,a1
1c00adc8:	00c34633          	xor	a2,t1,a2
1c00adcc:	c298                	sw	a4,0(a3)
1c00adce:	c2d0                	sw	a2,4(a3)
1c00add0:	07a1                	addi	a5,a5,8
1c00add2:	06a1                	addi	a3,a3,8
1c00add4:	faf916e3          	bne	s2,a5,1c00ad80 <sha3_512+0x64>
1c00add8:	010c                	addi	a1,sp,128
1c00adda:	852e                	mv	a0,a1
1c00addc:	ce0ff0ef          	jal	ra,1c00a2bc <KeccakF1600_StatePermute>
1c00ade0:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c00ade4:	87ca                	mv	a5,s2
1c00ade6:	f944eae3          	bltu	s1,s4,1c00ad7a <sha3_512+0x5e>
1c00adea:	85ca                	mv	a1,s2
1c00adec:	0b18                	addi	a4,sp,400
1c00adee:	87ce                	mv	a5,s3
1c00adf0:	4681                	li	a3,0
1c00adf2:	c394                	sw	a3,0(a5)
1c00adf4:	0791                	addi	a5,a5,4
1c00adf6:	fef71de3          	bne	a4,a5,1c00adf0 <sha3_512+0xd4>
1c00adfa:	060a0563          	beqz	s4,1c00ae64 <sha3_512+0x148>
1c00adfe:	fffa0793          	addi	a5,s4,-1
1c00ae02:	4709                	li	a4,2
1c00ae04:	06f772e3          	bleu	a5,a4,1c00b668 <sha3_512+0x94c>
1c00ae08:	002a5613          	srli	a2,s4,0x2
1c00ae0c:	872e                	mv	a4,a1
1c00ae0e:	4781                	li	a5,0
1c00ae10:	4314                	lw	a3,0(a4)
1c00ae12:	0785                	addi	a5,a5,1
1c00ae14:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00ae18:	0711                	addi	a4,a4,4
1c00ae1a:	0991                	addi	s3,s3,4
1c00ae1c:	fec7eae3          	bltu	a5,a2,1c00ae10 <sha3_512+0xf4>
1c00ae20:	ffca7793          	andi	a5,s4,-4
1c00ae24:	04fa0063          	beq	s4,a5,1c00ae64 <sha3_512+0x148>
1c00ae28:	00f58733          	add	a4,a1,a5
1c00ae2c:	00074683          	lbu	a3,0(a4)
1c00ae30:	21010813          	addi	a6,sp,528
1c00ae34:	00f80733          	add	a4,a6,a5
1c00ae38:	f2d70c23          	sb	a3,-200(a4)
1c00ae3c:	00178713          	addi	a4,a5,1
1c00ae40:	03477263          	bleu	s4,a4,1c00ae64 <sha3_512+0x148>
1c00ae44:	00e586b3          	add	a3,a1,a4
1c00ae48:	0006c683          	lbu	a3,0(a3)
1c00ae4c:	9742                	add	a4,a4,a6
1c00ae4e:	f2d70c23          	sb	a3,-200(a4)
1c00ae52:	0789                	addi	a5,a5,2
1c00ae54:	0147f863          	bleu	s4,a5,1c00ae64 <sha3_512+0x148>
1c00ae58:	95be                	add	a1,a1,a5
1c00ae5a:	0005c703          	lbu	a4,0(a1)
1c00ae5e:	97c2                	add	a5,a5,a6
1c00ae60:	f2e78c23          	sb	a4,-200(a5)
1c00ae64:	21010893          	addi	a7,sp,528
1c00ae68:	9a46                	add	s4,s4,a7
1c00ae6a:	4799                	li	a5,6
1c00ae6c:	f2fa0c23          	sb	a5,-200(s4)
1c00ae70:	14a14703          	lbu	a4,330(sp)
1c00ae74:	14914f03          	lbu	t5,329(sp)
1c00ae78:	15214783          	lbu	a5,338(sp)
1c00ae7c:	15114e83          	lbu	t4,337(sp)
1c00ae80:	15514303          	lbu	t1,341(sp)
1c00ae84:	15414383          	lbu	t2,340(sp)
1c00ae88:	15614803          	lbu	a6,342(sp)
1c00ae8c:	14814283          	lbu	t0,328(sp)
1c00ae90:	14b14503          	lbu	a0,331(sp)
1c00ae94:	15014f83          	lbu	t6,336(sp)
1c00ae98:	15314603          	lbu	a2,339(sp)
1c00ae9c:	15714683          	lbu	a3,343(sp)
1c00aea0:	0f22                	slli	t5,t5,0x8
1c00aea2:	0ea2                	slli	t4,t4,0x8
1c00aea4:	0742                	slli	a4,a4,0x10
1c00aea6:	07c2                	slli	a5,a5,0x10
1c00aea8:	0322                	slli	t1,t1,0x8
1c00aeaa:	14d14e03          	lbu	t3,333(sp)
1c00aeae:	00736333          	or	t1,t1,t2
1c00aeb2:	01e76733          	or	a4,a4,t5
1c00aeb6:	01d7e7b3          	or	a5,a5,t4
1c00aeba:	0842                	slli	a6,a6,0x10
1c00aebc:	14c14483          	lbu	s1,332(sp)
1c00aec0:	14e14883          	lbu	a7,334(sp)
1c00aec4:	00576733          	or	a4,a4,t0
1c00aec8:	01f7e7b3          	or	a5,a5,t6
1c00aecc:	00686833          	or	a6,a6,t1
1c00aed0:	0662                	slli	a2,a2,0x18
1c00aed2:	06e2                	slli	a3,a3,0x18
1c00aed4:	0562                	slli	a0,a0,0x18
1c00aed6:	14f14583          	lbu	a1,335(sp)
1c00aeda:	8d59                	or	a0,a0,a4
1c00aedc:	0e22                	slli	t3,t3,0x8
1c00aede:	00f66733          	or	a4,a2,a5
1c00aee2:	0106e7b3          	or	a5,a3,a6
1c00aee6:	468a                	lw	a3,128(sp)
1c00aee8:	009e6e33          	or	t3,t3,s1
1c00aeec:	08c2                	slli	a7,a7,0x10
1c00aeee:	01c8e8b3          	or	a7,a7,t3
1c00aef2:	8d35                	xor	a0,a0,a3
1c00aef4:	05e2                	slli	a1,a1,0x18
1c00aef6:	469a                	lw	a3,132(sp)
1c00aef8:	0115e5b3          	or	a1,a1,a7
1c00aefc:	8db5                	xor	a1,a1,a3
1c00aefe:	46aa                	lw	a3,136(sp)
1c00af00:	15a14803          	lbu	a6,346(sp)
1c00af04:	8eb9                	xor	a3,a3,a4
1c00af06:	473a                	lw	a4,140(sp)
1c00af08:	15914483          	lbu	s1,345(sp)
1c00af0c:	8f3d                	xor	a4,a4,a5
1c00af0e:	15814a83          	lbu	s5,344(sp)
1c00af12:	15b14a03          	lbu	s4,347(sp)
1c00af16:	15c14d03          	lbu	s10,348(sp)
1c00af1a:	18f14783          	lbu	a5,399(sp)
1c00af1e:	c12a                	sw	a0,128(sp)
1c00af20:	c32e                	sw	a1,132(sp)
1c00af22:	c536                	sw	a3,136(sp)
1c00af24:	c73a                	sw	a4,140(sp)
1c00af26:	15d14903          	lbu	s2,349(sp)
1c00af2a:	15e14f83          	lbu	t6,350(sp)
1c00af2e:	16114283          	lbu	t0,353(sp)
1c00af32:	16214f03          	lbu	t5,354(sp)
1c00af36:	16d14883          	lbu	a7,365(sp)
1c00af3a:	16c14b83          	lbu	s7,364(sp)
1c00af3e:	04a2                	slli	s1,s1,0x8
1c00af40:	0842                	slli	a6,a6,0x10
1c00af42:	02a2                	slli	t0,t0,0x8
1c00af44:	08a2                	slli	a7,a7,0x8
1c00af46:	00986833          	or	a6,a6,s1
1c00af4a:	0f42                	slli	t5,t5,0x10
1c00af4c:	01e2ef33          	or	t5,t0,t5
1c00af50:	01586833          	or	a6,a6,s5
1c00af54:	0178e2b3          	or	t0,a7,s7
1c00af58:	018a1893          	slli	a7,s4,0x18
1c00af5c:	15f14503          	lbu	a0,351(sp)
1c00af60:	0108e833          	or	a6,a7,a6
1c00af64:	0922                	slli	s2,s2,0x8
1c00af66:	48ca                	lw	a7,144(sp)
1c00af68:	01a96933          	or	s2,s2,s10
1c00af6c:	0fc2                	slli	t6,t6,0x10
1c00af6e:	16014983          	lbu	s3,352(sp)
1c00af72:	16514e83          	lbu	t4,357(sp)
1c00af76:	16314583          	lbu	a1,355(sp)
1c00af7a:	012fefb3          	or	t6,t6,s2
1c00af7e:	0108c8b3          	xor	a7,a7,a6
1c00af82:	0562                	slli	a0,a0,0x18
1c00af84:	485a                	lw	a6,148(sp)
1c00af86:	16414c83          	lbu	s9,356(sp)
1c00af8a:	16614c03          	lbu	s8,358(sp)
1c00af8e:	01f56533          	or	a0,a0,t6
1c00af92:	16914e03          	lbu	t3,361(sp)
1c00af96:	16a14303          	lbu	t1,362(sp)
1c00af9a:	16714603          	lbu	a2,359(sp)
1c00af9e:	013f6f33          	or	t5,t5,s3
1c00afa2:	00a84833          	xor	a6,a6,a0
1c00afa6:	0ea2                	slli	t4,t4,0x8
1c00afa8:	456a                	lw	a0,152(sp)
1c00afaa:	05e2                	slli	a1,a1,0x18
1c00afac:	019ee4b3          	or	s1,t4,s9
1c00afb0:	01e5e5b3          	or	a1,a1,t5
1c00afb4:	010c1e93          	slli	t4,s8,0x10
1c00afb8:	16814383          	lbu	t2,360(sp)
1c00afbc:	16b14683          	lbu	a3,363(sp)
1c00afc0:	009eeeb3          	or	t4,t4,s1
1c00afc4:	8d2d                	xor	a0,a0,a1
1c00afc6:	0342                	slli	t1,t1,0x10
1c00afc8:	45fa                	lw	a1,156(sp)
1c00afca:	0e22                	slli	t3,t3,0x8
1c00afcc:	0662                	slli	a2,a2,0x18
1c00afce:	16e14b03          	lbu	s6,366(sp)
1c00afd2:	01d66633          	or	a2,a2,t4
1c00afd6:	006e6e33          	or	t3,t3,t1
1c00afda:	16f14703          	lbu	a4,367(sp)
1c00afde:	007e6e33          	or	t3,t3,t2
1c00afe2:	8db1                	xor	a1,a1,a2
1c00afe4:	06e2                	slli	a3,a3,0x18
1c00afe6:	560a                	lw	a2,160(sp)
1c00afe8:	01c6e6b3          	or	a3,a3,t3
1c00afec:	010b1313          	slli	t1,s6,0x10
1c00aff0:	00536333          	or	t1,t1,t0
1c00aff4:	8e35                	xor	a2,a2,a3
1c00aff6:	0762                	slli	a4,a4,0x18
1c00aff8:	569a                	lw	a3,164(sp)
1c00affa:	00676733          	or	a4,a4,t1
1c00affe:	8f35                	xor	a4,a4,a3
1c00b000:	c946                	sw	a7,144(sp)
1c00b002:	cb42                	sw	a6,148(sp)
1c00b004:	cd2a                	sw	a0,152(sp)
1c00b006:	cf2e                	sw	a1,156(sp)
1c00b008:	d132                	sw	a2,160(sp)
1c00b00a:	d33a                	sw	a4,164(sp)
1c00b00c:	17114e83          	lbu	t4,369(sp)
1c00b010:	17214a83          	lbu	s5,370(sp)
1c00b014:	17014903          	lbu	s2,368(sp)
1c00b018:	18114803          	lbu	a6,385(sp)
1c00b01c:	18214483          	lbu	s1,386(sp)
1c00b020:	18014283          	lbu	t0,384(sp)
1c00b024:	18314703          	lbu	a4,387(sp)
1c00b028:	04c2                	slli	s1,s1,0x10
1c00b02a:	0822                	slli	a6,a6,0x8
1c00b02c:	17514f83          	lbu	t6,373(sp)
1c00b030:	17314503          	lbu	a0,371(sp)
1c00b034:	0ac2                	slli	s5,s5,0x10
1c00b036:	00986833          	or	a6,a6,s1
1c00b03a:	0ea2                	slli	t4,t4,0x8
1c00b03c:	17414b03          	lbu	s6,372(sp)
1c00b040:	00586833          	or	a6,a6,t0
1c00b044:	17614e03          	lbu	t3,374(sp)
1c00b048:	015eeeb3          	or	t4,t4,s5
1c00b04c:	0762                	slli	a4,a4,0x18
1c00b04e:	17914303          	lbu	t1,377(sp)
1c00b052:	17a14983          	lbu	s3,378(sp)
1c00b056:	17714583          	lbu	a1,375(sp)
1c00b05a:	012eeeb3          	or	t4,t4,s2
1c00b05e:	01076733          	or	a4,a4,a6
1c00b062:	0fa2                	slli	t6,t6,0x8
1c00b064:	582a                	lw	a6,168(sp)
1c00b066:	0562                	slli	a0,a0,0x18
1c00b068:	016fefb3          	or	t6,t6,s6
1c00b06c:	01d56533          	or	a0,a0,t4
1c00b070:	0e42                	slli	t3,t3,0x10
1c00b072:	17814383          	lbu	t2,376(sp)
1c00b076:	01fe6e33          	or	t3,t3,t6
1c00b07a:	17d14f03          	lbu	t5,381(sp)
1c00b07e:	17b14603          	lbu	a2,379(sp)
1c00b082:	00a84833          	xor	a6,a6,a0
1c00b086:	09c2                	slli	s3,s3,0x10
1c00b088:	553a                	lw	a0,172(sp)
1c00b08a:	0322                	slli	t1,t1,0x8
1c00b08c:	05e2                	slli	a1,a1,0x18
1c00b08e:	17c14a03          	lbu	s4,380(sp)
1c00b092:	17e14883          	lbu	a7,382(sp)
1c00b096:	01c5e5b3          	or	a1,a1,t3
1c00b09a:	01336333          	or	t1,t1,s3
1c00b09e:	00736333          	or	t1,t1,t2
1c00b0a2:	17f14683          	lbu	a3,383(sp)
1c00b0a6:	8d2d                	xor	a0,a0,a1
1c00b0a8:	0f22                	slli	t5,t5,0x8
1c00b0aa:	55ca                	lw	a1,176(sp)
1c00b0ac:	0662                	slli	a2,a2,0x18
1c00b0ae:	014f6f33          	or	t5,t5,s4
1c00b0b2:	00666633          	or	a2,a2,t1
1c00b0b6:	08c2                	slli	a7,a7,0x10
1c00b0b8:	01e8e8b3          	or	a7,a7,t5
1c00b0bc:	8db1                	xor	a1,a1,a2
1c00b0be:	06e2                	slli	a3,a3,0x18
1c00b0c0:	565a                	lw	a2,180(sp)
1c00b0c2:	0116e6b3          	or	a3,a3,a7
1c00b0c6:	8e35                	xor	a2,a2,a3
1c00b0c8:	56ea                	lw	a3,184(sp)
1c00b0ca:	18414f03          	lbu	t5,388(sp)
1c00b0ce:	8f35                	xor	a4,a4,a3
1c00b0d0:	d542                	sw	a6,168(sp)
1c00b0d2:	d72a                	sw	a0,172(sp)
1c00b0d4:	d92e                	sw	a1,176(sp)
1c00b0d6:	db32                	sw	a2,180(sp)
1c00b0d8:	18514883          	lbu	a7,389(sp)
1c00b0dc:	18614503          	lbu	a0,390(sp)
1c00b0e0:	18714603          	lbu	a2,391(sp)
1c00b0e4:	dd3a                	sw	a4,184(sp)
1c00b0e6:	18914703          	lbu	a4,393(sp)
1c00b0ea:	18a14303          	lbu	t1,394(sp)
1c00b0ee:	18814e03          	lbu	t3,392(sp)
1c00b0f2:	0342                	slli	t1,t1,0x10
1c00b0f4:	18b14683          	lbu	a3,395(sp)
1c00b0f8:	0722                	slli	a4,a4,0x8
1c00b0fa:	00676733          	or	a4,a4,t1
1c00b0fe:	08a2                	slli	a7,a7,0x8
1c00b100:	01e8e8b3          	or	a7,a7,t5
1c00b104:	01c76733          	or	a4,a4,t3
1c00b108:	06e2                	slli	a3,a3,0x18
1c00b10a:	0542                	slli	a0,a0,0x10
1c00b10c:	01156533          	or	a0,a0,a7
1c00b110:	18d14803          	lbu	a6,397(sp)
1c00b114:	8f55                	or	a4,a4,a3
1c00b116:	0662                	slli	a2,a2,0x18
1c00b118:	56fa                	lw	a3,188(sp)
1c00b11a:	18c14e83          	lbu	t4,396(sp)
1c00b11e:	18e14583          	lbu	a1,398(sp)
1c00b122:	8e49                	or	a2,a2,a0
1c00b124:	8e35                	xor	a2,a2,a3
1c00b126:	0822                	slli	a6,a6,0x8
1c00b128:	468e                	lw	a3,192(sp)
1c00b12a:	01d86833          	or	a6,a6,t4
1c00b12e:	0807e793          	ori	a5,a5,128
1c00b132:	05c2                	slli	a1,a1,0x10
1c00b134:	0105e5b3          	or	a1,a1,a6
1c00b138:	8eb9                	xor	a3,a3,a4
1c00b13a:	07e2                	slli	a5,a5,0x18
1c00b13c:	471e                	lw	a4,196(sp)
1c00b13e:	8fcd                	or	a5,a5,a1
1c00b140:	010c                	addi	a1,sp,128
1c00b142:	8fb9                	xor	a5,a5,a4
1c00b144:	852e                	mv	a0,a1
1c00b146:	df32                	sw	a2,188(sp)
1c00b148:	c1b6                	sw	a3,192(sp)
1c00b14a:	c3be                	sw	a5,196(sp)
1c00b14c:	970ff0ef          	jal	ra,1c00a2bc <KeccakF1600_StatePermute>
1c00b150:	581a                	lw	a6,164(sp)
1c00b152:	552a                	lw	a0,168(sp)
1c00b154:	55ba                	lw	a1,172(sp)
1c00b156:	00885913          	srli	s2,a6,0x8
1c00b15a:	564a                	lw	a2,176(sp)
1c00b15c:	de4a                	sw	s2,60(sp)
1c00b15e:	00855913          	srli	s2,a0,0x8
1c00b162:	56da                	lw	a3,180(sp)
1c00b164:	d24a                	sw	s2,36(sp)
1c00b166:	0085d913          	srli	s2,a1,0x8
1c00b16a:	576a                	lw	a4,184(sp)
1c00b16c:	d44a                	sw	s2,40(sp)
1c00b16e:	00865913          	srli	s2,a2,0x8
1c00b172:	57fa                	lw	a5,188(sp)
1c00b174:	d64a                	sw	s2,44(sp)
1c00b176:	0086d913          	srli	s2,a3,0x8
1c00b17a:	d84a                	sw	s2,48(sp)
1c00b17c:	00875913          	srli	s2,a4,0x8
1c00b180:	da4a                	sw	s2,52(sp)
1c00b182:	0087d913          	srli	s2,a5,0x8
1c00b186:	dc4a                	sw	s2,56(sp)
1c00b188:	5972                	lw	s2,60(sp)
1c00b18a:	448a                	lw	s1,128(sp)
1c00b18c:	0ff97913          	andi	s2,s2,255
1c00b190:	c2ca                	sw	s2,68(sp)
1c00b192:	5912                	lw	s2,36(sp)
1c00b194:	439a                	lw	t2,132(sp)
1c00b196:	0ff97913          	andi	s2,s2,255
1c00b19a:	c4ca                	sw	s2,72(sp)
1c00b19c:	5922                	lw	s2,40(sp)
1c00b19e:	42aa                	lw	t0,136(sp)
1c00b1a0:	0ff97913          	andi	s2,s2,255
1c00b1a4:	c8ca                	sw	s2,80(sp)
1c00b1a6:	5932                	lw	s2,44(sp)
1c00b1a8:	4fba                	lw	t6,140(sp)
1c00b1aa:	0ff97913          	andi	s2,s2,255
1c00b1ae:	ccca                	sw	s2,88(sp)
1c00b1b0:	5942                	lw	s2,48(sp)
1c00b1b2:	4f4a                	lw	t5,144(sp)
1c00b1b4:	0ff97913          	andi	s2,s2,255
1c00b1b8:	4eda                	lw	t4,148(sp)
1c00b1ba:	4e6a                	lw	t3,152(sp)
1c00b1bc:	437a                	lw	t1,156(sp)
1c00b1be:	588a                	lw	a7,160(sp)
1c00b1c0:	d0ca                	sw	s2,96(sp)
1c00b1c2:	5952                	lw	s2,52(sp)
1c00b1c4:	0082dc93          	srli	s9,t0,0x8
1c00b1c8:	0ff97913          	andi	s2,s2,255
1c00b1cc:	d4ca                	sw	s2,104(sp)
1c00b1ce:	5962                	lw	s2,56(sp)
1c00b1d0:	008fdc13          	srli	s8,t6,0x8
1c00b1d4:	008f5b93          	srli	s7,t5,0x8
1c00b1d8:	008edb13          	srli	s6,t4,0x8
1c00b1dc:	0ff97913          	andi	s2,s2,255
1c00b1e0:	d8ca                	sw	s2,112(sp)
1c00b1e2:	0083dd13          	srli	s10,t2,0x8
1c00b1e6:	0ff4f913          	andi	s2,s1,255
1c00b1ea:	0ffcfc93          	andi	s9,s9,255
1c00b1ee:	0ffc7c13          	andi	s8,s8,255
1c00b1f2:	0ffbfb93          	andi	s7,s7,255
1c00b1f6:	0ffb7b13          	andi	s6,s6,255
1c00b1fa:	d24a                	sw	s2,36(sp)
1c00b1fc:	008e5a93          	srli	s5,t3,0x8
1c00b200:	0ff2f913          	andi	s2,t0,255
1c00b204:	0ca2                	slli	s9,s9,0x8
1c00b206:	0c22                	slli	s8,s8,0x8
1c00b208:	0ba2                	slli	s7,s7,0x8
1c00b20a:	0b22                	slli	s6,s6,0x8
1c00b20c:	0ffd7d13          	andi	s10,s10,255
1c00b210:	ce66                	sw	s9,28(sp)
1c00b212:	d64a                	sw	s2,44(sp)
1c00b214:	cc62                	sw	s8,24(sp)
1c00b216:	ca5e                	sw	s7,20(sp)
1c00b218:	0ffffc13          	andi	s8,t6,255
1c00b21c:	4b96                	lw	s7,68(sp)
1c00b21e:	0fff7c93          	andi	s9,t5,255
1c00b222:	c85a                	sw	s6,16(sp)
1c00b224:	0ffe7913          	andi	s2,t3,255
1c00b228:	0ff8fb13          	andi	s6,a7,255
1c00b22c:	0d22                	slli	s10,s10,0x8
1c00b22e:	0ffafa93          	andi	s5,s5,255
1c00b232:	d06a                	sw	s10,32(sp)
1c00b234:	d862                	sw	s8,48(sp)
1c00b236:	0ff3fd13          	andi	s10,t2,255
1c00b23a:	da66                	sw	s9,52(sp)
1c00b23c:	de4a                	sw	s2,60(sp)
1c00b23e:	4ca6                	lw	s9,72(sp)
1c00b240:	4946                	lw	s2,80(sp)
1c00b242:	c0da                	sw	s6,64(sp)
1c00b244:	0ff87c13          	andi	s8,a6,255
1c00b248:	4b66                	lw	s6,88(sp)
1c00b24a:	0aa2                	slli	s5,s5,0x8
1c00b24c:	d46a                	sw	s10,40(sp)
1c00b24e:	c656                	sw	s5,12(sp)
1c00b250:	0ffefd13          	andi	s10,t4,255
1c00b254:	0ff37a93          	andi	s5,t1,255
1c00b258:	c2e2                	sw	s8,68(sp)
1c00b25a:	0ba2                	slli	s7,s7,0x8
1c00b25c:	5c06                	lw	s8,96(sp)
1c00b25e:	dc6a                	sw	s10,56(sp)
1c00b260:	dcd6                	sw	s5,120(sp)
1c00b262:	dede                	sw	s7,124(sp)
1c00b264:	0ff57d13          	andi	s10,a0,255
1c00b268:	0ff5fa93          	andi	s5,a1,255
1c00b26c:	0ff67b93          	andi	s7,a2,255
1c00b270:	0ca2                	slli	s9,s9,0x8
1c00b272:	0922                	slli	s2,s2,0x8
1c00b274:	0b22                	slli	s6,s6,0x8
1c00b276:	c4e6                	sw	s9,72(sp)
1c00b278:	c6ea                	sw	s10,76(sp)
1c00b27a:	c8ca                	sw	s2,80(sp)
1c00b27c:	cad6                	sw	s5,84(sp)
1c00b27e:	ccda                	sw	s6,88(sp)
1c00b280:	cede                	sw	s7,92(sp)
1c00b282:	0c22                	slli	s8,s8,0x8
1c00b284:	d0e2                	sw	s8,96(sp)
1c00b286:	5ac6                	lw	s5,112(sp)
1c00b288:	5d26                	lw	s10,104(sp)
1c00b28a:	0ff6fc93          	andi	s9,a3,255
1c00b28e:	0ff7fb13          	andi	s6,a5,255
1c00b292:	0084dd93          	srli	s11,s1,0x8
1c00b296:	0aa2                	slli	s5,s5,0x8
1c00b298:	5b92                	lw	s7,36(sp)
1c00b29a:	5c22                	lw	s8,40(sp)
1c00b29c:	d2e6                	sw	s9,100(sp)
1c00b29e:	d8d6                	sw	s5,112(sp)
1c00b2a0:	5c82                	lw	s9,32(sp)
1c00b2a2:	5ab2                	lw	s5,44(sp)
1c00b2a4:	dada                	sw	s6,116(sp)
1c00b2a6:	0ffdfd93          	andi	s11,s11,255
1c00b2aa:	4b72                	lw	s6,28(sp)
1c00b2ac:	0d22                	slli	s10,s10,0x8
1c00b2ae:	0da2                	slli	s11,s11,0x8
1c00b2b0:	d4ea                	sw	s10,104(sp)
1c00b2b2:	01bbedb3          	or	s11,s7,s11
1c00b2b6:	019c6d33          	or	s10,s8,s9
1c00b2ba:	5bc2                	lw	s7,48(sp)
1c00b2bc:	016aecb3          	or	s9,s5,s6
1c00b2c0:	4ae2                	lw	s5,24(sp)
1c00b2c2:	5b52                	lw	s6,52(sp)
1c00b2c4:	015bec33          	or	s8,s7,s5
1c00b2c8:	4ad2                	lw	s5,20(sp)
1c00b2ca:	0088d993          	srli	s3,a7,0x8
1c00b2ce:	015b6bb3          	or	s7,s6,s5
1c00b2d2:	4ac2                	lw	s5,16(sp)
1c00b2d4:	5b62                	lw	s6,56(sp)
1c00b2d6:	00835a13          	srli	s4,t1,0x8
1c00b2da:	015b6b33          	or	s6,s6,s5
1c00b2de:	c25a                	sw	s6,4(sp)
1c00b2e0:	4ab2                	lw	s5,12(sp)
1c00b2e2:	5b72                	lw	s6,60(sp)
1c00b2e4:	0ff9f993          	andi	s3,s3,255
1c00b2e8:	015b6b33          	or	s6,s6,s5
1c00b2ec:	4a86                	lw	s5,64(sp)
1c00b2ee:	c45a                	sw	s6,8(sp)
1c00b2f0:	0ffa7a13          	andi	s4,s4,255
1c00b2f4:	5b66                	lw	s6,120(sp)
1c00b2f6:	09a2                	slli	s3,s3,0x8
1c00b2f8:	013ae9b3          	or	s3,s5,s3
1c00b2fc:	0a22                	slli	s4,s4,0x8
1c00b2fe:	c0ce                	sw	s3,64(sp)
1c00b300:	014b6a33          	or	s4,s6,s4
1c00b304:	59f6                	lw	s3,124(sp)
1c00b306:	4b16                	lw	s6,68(sp)
1c00b308:	4ab6                	lw	s5,76(sp)
1c00b30a:	013b6b33          	or	s6,s6,s3
1c00b30e:	c2da                	sw	s6,68(sp)
1c00b310:	4b26                	lw	s6,72(sp)
1c00b312:	0ff77913          	andi	s2,a4,255
1c00b316:	016aeab3          	or	s5,s5,s6
1c00b31a:	d6ca                	sw	s2,108(sp)
1c00b31c:	49d6                	lw	s3,84(sp)
1c00b31e:	c6d6                	sw	s5,76(sp)
1c00b320:	4ac6                	lw	s5,80(sp)
1c00b322:	4b76                	lw	s6,92(sp)
1c00b324:	0159e9b3          	or	s3,s3,s5
1c00b328:	cace                	sw	s3,84(sp)
1c00b32a:	49e6                	lw	s3,88(sp)
1c00b32c:	5a96                	lw	s5,100(sp)
1c00b32e:	013b6b33          	or	s6,s6,s3
1c00b332:	ceda                	sw	s6,92(sp)
1c00b334:	5b06                	lw	s6,96(sp)
1c00b336:	59b6                	lw	s3,108(sp)
1c00b338:	016aeab3          	or	s5,s5,s6
1c00b33c:	d2d6                	sw	s5,100(sp)
1c00b33e:	5aa6                	lw	s5,104(sp)
1c00b340:	5b56                	lw	s6,116(sp)
1c00b342:	0159e9b3          	or	s3,s3,s5
1c00b346:	d6ce                	sw	s3,108(sp)
1c00b348:	59c6                	lw	s3,112(sp)
1c00b34a:	ff010937          	lui	s2,0xff010
1c00b34e:	013b6b33          	or	s6,s6,s3
1c00b352:	00ff09b7          	lui	s3,0xff0
1c00b356:	0134fab3          	and	s5,s1,s3
1c00b35a:	0133f9b3          	and	s3,t2,s3
1c00b35e:	d44e                	sw	s3,40(sp)
1c00b360:	00ff09b7          	lui	s3,0xff0
1c00b364:	0132f9b3          	and	s3,t0,s3
1c00b368:	d64e                	sw	s3,44(sp)
1c00b36a:	00ff09b7          	lui	s3,0xff0
1c00b36e:	013ff9b3          	and	s3,t6,s3
1c00b372:	d84e                	sw	s3,48(sp)
1c00b374:	00ff09b7          	lui	s3,0xff0
1c00b378:	013f79b3          	and	s3,t5,s3
1c00b37c:	da4e                	sw	s3,52(sp)
1c00b37e:	00ff09b7          	lui	s3,0xff0
1c00b382:	013ef9b3          	and	s3,t4,s3
1c00b386:	dc4e                	sw	s3,56(sp)
1c00b388:	00ff09b7          	lui	s3,0xff0
1c00b38c:	013e79b3          	and	s3,t3,s3
1c00b390:	197d                	addi	s2,s2,-1
1c00b392:	de4e                	sw	s3,60(sp)
1c00b394:	00ff09b7          	lui	s3,0xff0
1c00b398:	012c7c33          	and	s8,s8,s2
1c00b39c:	012bfbb3          	and	s7,s7,s2
1c00b3a0:	013379b3          	and	s3,t1,s3
1c00b3a4:	012cfcb3          	and	s9,s9,s2
1c00b3a8:	ca62                	sw	s8,20(sp)
1c00b3aa:	c85e                	sw	s7,16(sp)
1c00b3ac:	4c22                	lw	s8,8(sp)
1c00b3ae:	4b92                	lw	s7,4(sp)
1c00b3b0:	dcce                	sw	s3,120(sp)
1c00b3b2:	00ff09b7          	lui	s3,0xff0
1c00b3b6:	cc66                	sw	s9,24(sp)
1c00b3b8:	0138f9b3          	and	s3,a7,s3
1c00b3bc:	4c86                	lw	s9,64(sp)
1c00b3be:	012d7d33          	and	s10,s10,s2
1c00b3c2:	012bfbb3          	and	s7,s7,s2
1c00b3c6:	012c7c33          	and	s8,s8,s2
1c00b3ca:	012a7a33          	and	s4,s4,s2
1c00b3ce:	dece                	sw	s3,124(sp)
1c00b3d0:	00ff09b7          	lui	s3,0xff0
1c00b3d4:	dada                	sw	s6,116(sp)
1c00b3d6:	ce6a                	sw	s10,28(sp)
1c00b3d8:	c65e                	sw	s7,12(sp)
1c00b3da:	c462                	sw	s8,8(sp)
1c00b3dc:	c252                	sw	s4,4(sp)
1c00b3de:	012cfcb3          	and	s9,s9,s2
1c00b3e2:	013879b3          	and	s3,a6,s3
1c00b3e6:	c0e6                	sw	s9,64(sp)
1c00b3e8:	c4ce                	sw	s3,72(sp)
1c00b3ea:	00ff09b7          	lui	s3,0xff0
1c00b3ee:	013579b3          	and	s3,a0,s3
1c00b3f2:	c8ce                	sw	s3,80(sp)
1c00b3f4:	00ff09b7          	lui	s3,0xff0
1c00b3f8:	0135f9b3          	and	s3,a1,s3
1c00b3fc:	ccce                	sw	s3,88(sp)
1c00b3fe:	49d6                	lw	s3,84(sp)
1c00b400:	012dfb33          	and	s6,s11,s2
1c00b404:	0129f9b3          	and	s3,s3,s2
1c00b408:	cace                	sw	s3,84(sp)
1c00b40a:	00ff09b7          	lui	s3,0xff0
1c00b40e:	013679b3          	and	s3,a2,s3
1c00b412:	d0ce                	sw	s3,96(sp)
1c00b414:	00ff09b7          	lui	s3,0xff0
1c00b418:	0136f9b3          	and	s3,a3,s3
1c00b41c:	d4ce                	sw	s3,104(sp)
1c00b41e:	00ff09b7          	lui	s3,0xff0
1c00b422:	4db6                	lw	s11,76(sp)
1c00b424:	4a76                	lw	s4,92(sp)
1c00b426:	013779b3          	and	s3,a4,s3
1c00b42a:	d8ce                	sw	s3,112(sp)
1c00b42c:	00ff09b7          	lui	s3,0xff0
1c00b430:	4d16                	lw	s10,68(sp)
1c00b432:	5b96                	lw	s7,100(sp)
1c00b434:	012dfdb3          	and	s11,s11,s2
1c00b438:	012a7a33          	and	s4,s4,s2
1c00b43c:	0137f9b3          	and	s3,a5,s3
1c00b440:	5cd6                	lw	s9,116(sp)
1c00b442:	5c36                	lw	s8,108(sp)
1c00b444:	c6ee                	sw	s11,76(sp)
1c00b446:	ced2                	sw	s4,92(sp)
1c00b448:	c04e                	sw	s3,0(sp)
1c00b44a:	5a22                	lw	s4,40(sp)
1c00b44c:	49f2                	lw	s3,28(sp)
1c00b44e:	015b6db3          	or	s11,s6,s5
1c00b452:	4ae2                	lw	s5,24(sp)
1c00b454:	5b32                	lw	s6,44(sp)
1c00b456:	012d7d33          	and	s10,s10,s2
1c00b45a:	012bfbb3          	and	s7,s7,s2
1c00b45e:	c2ea                	sw	s10,68(sp)
1c00b460:	d2de                	sw	s7,100(sp)
1c00b462:	012c7c33          	and	s8,s8,s2
1c00b466:	4bd2                	lw	s7,20(sp)
1c00b468:	012cf933          	and	s2,s9,s2
1c00b46c:	0149ed33          	or	s10,s3,s4
1c00b470:	016aecb3          	or	s9,s5,s6
1c00b474:	59c2                	lw	s3,48(sp)
1c00b476:	4a42                	lw	s4,16(sp)
1c00b478:	5ad2                	lw	s5,52(sp)
1c00b47a:	d6e2                	sw	s8,108(sp)
1c00b47c:	013bec33          	or	s8,s7,s3
1c00b480:	49b2                	lw	s3,12(sp)
1c00b482:	015a6bb3          	or	s7,s4,s5
1c00b486:	5a62                	lw	s4,56(sp)
1c00b488:	daca                	sw	s2,116(sp)
1c00b48a:	0149eb33          	or	s6,s3,s4
1c00b48e:	49a2                	lw	s3,8(sp)
1c00b490:	5a72                	lw	s4,60(sp)
1c00b492:	80e1                	srli	s1,s1,0x18
1c00b494:	0149eab3          	or	s5,s3,s4
1c00b498:	5a66                	lw	s4,120(sp)
1c00b49a:	4992                	lw	s3,4(sp)
1c00b49c:	04e2                	slli	s1,s1,0x18
1c00b49e:	0149e9b3          	or	s3,s3,s4
1c00b4a2:	dcce                	sw	s3,120(sp)
1c00b4a4:	5a76                	lw	s4,124(sp)
1c00b4a6:	4986                	lw	s3,64(sp)
1c00b4a8:	01000937          	lui	s2,0x1000
1c00b4ac:	0149e9b3          	or	s3,s3,s4
1c00b4b0:	d24e                	sw	s3,36(sp)
1c00b4b2:	4a26                	lw	s4,72(sp)
1c00b4b4:	4996                	lw	s3,68(sp)
1c00b4b6:	197d                	addi	s2,s2,-1
1c00b4b8:	0149e9b3          	or	s3,s3,s4
1c00b4bc:	d44e                	sw	s3,40(sp)
1c00b4be:	4a46                	lw	s4,80(sp)
1c00b4c0:	49b6                	lw	s3,76(sp)
1c00b4c2:	c2a6                	sw	s1,68(sp)
1c00b4c4:	0149e9b3          	or	s3,s3,s4
1c00b4c8:	d64e                	sw	s3,44(sp)
1c00b4ca:	4a66                	lw	s4,88(sp)
1c00b4cc:	49d6                	lw	s3,84(sp)
1c00b4ce:	54e6                	lw	s1,120(sp)
1c00b4d0:	0149e9b3          	or	s3,s3,s4
1c00b4d4:	d84e                	sw	s3,48(sp)
1c00b4d6:	5a06                	lw	s4,96(sp)
1c00b4d8:	49f6                	lw	s3,92(sp)
1c00b4da:	018ede93          	srli	t4,t4,0x18
1c00b4de:	0149e9b3          	or	s3,s3,s4
1c00b4e2:	da4e                	sw	s3,52(sp)
1c00b4e4:	5a26                	lw	s4,104(sp)
1c00b4e6:	5996                	lw	s3,100(sp)
1c00b4e8:	018e5e13          	srli	t3,t3,0x18
1c00b4ec:	0149e9b3          	or	s3,s3,s4
1c00b4f0:	dc4e                	sw	s3,56(sp)
1c00b4f2:	5a46                	lw	s4,112(sp)
1c00b4f4:	59b6                	lw	s3,108(sp)
1c00b4f6:	01835313          	srli	t1,t1,0x18
1c00b4fa:	0149e9b3          	or	s3,s3,s4
1c00b4fe:	de4e                	sw	s3,60(sp)
1c00b500:	4a02                	lw	s4,0(sp)
1c00b502:	59d6                	lw	s3,116(sp)
1c00b504:	012b7b33          	and	s6,s6,s2
1c00b508:	0149e9b3          	or	s3,s3,s4
1c00b50c:	c0ce                	sw	s3,64(sp)
1c00b50e:	5992                	lw	s3,36(sp)
1c00b510:	0124fa33          	and	s4,s1,s2
1c00b514:	0129f9b3          	and	s3,s3,s2
1c00b518:	d24e                	sw	s3,36(sp)
1c00b51a:	54a2                	lw	s1,40(sp)
1c00b51c:	59b2                	lw	s3,44(sp)
1c00b51e:	0124f4b3          	and	s1,s1,s2
1c00b522:	d426                	sw	s1,40(sp)
1c00b524:	54c2                	lw	s1,48(sp)
1c00b526:	0129f9b3          	and	s3,s3,s2
1c00b52a:	d64e                	sw	s3,44(sp)
1c00b52c:	0124f4b3          	and	s1,s1,s2
1c00b530:	59d2                	lw	s3,52(sp)
1c00b532:	d826                	sw	s1,48(sp)
1c00b534:	54e2                	lw	s1,56(sp)
1c00b536:	0129f9b3          	and	s3,s3,s2
1c00b53a:	da4e                	sw	s3,52(sp)
1c00b53c:	0124f4b3          	and	s1,s1,s2
1c00b540:	59f2                	lw	s3,60(sp)
1c00b542:	dc26                	sw	s1,56(sp)
1c00b544:	4486                	lw	s1,64(sp)
1c00b546:	012afab3          	and	s5,s5,s2
1c00b54a:	0129f9b3          	and	s3,s3,s2
1c00b54e:	0183d393          	srli	t2,t2,0x18
1c00b552:	0182d293          	srli	t0,t0,0x18
1c00b556:	018fdf93          	srli	t6,t6,0x18
1c00b55a:	018f5f13          	srli	t5,t5,0x18
1c00b55e:	0ee2                	slli	t4,t4,0x18
1c00b560:	0e62                	slli	t3,t3,0x18
1c00b562:	0362                	slli	t1,t1,0x18
1c00b564:	de4e                	sw	s3,60(sp)
1c00b566:	012dfdb3          	and	s11,s11,s2
1c00b56a:	0124f9b3          	and	s3,s1,s2
1c00b56e:	012d7d33          	and	s10,s10,s2
1c00b572:	012cfcb3          	and	s9,s9,s2
1c00b576:	012c7c33          	and	s8,s8,s2
1c00b57a:	012bfbb3          	and	s7,s7,s2
1c00b57e:	01db6eb3          	or	t4,s6,t4
1c00b582:	4916                	lw	s2,68(sp)
1c00b584:	5b32                	lw	s6,44(sp)
1c00b586:	01caee33          	or	t3,s5,t3
1c00b58a:	006a6333          	or	t1,s4,t1
1c00b58e:	5aa2                	lw	s5,40(sp)
1c00b590:	5a12                	lw	s4,36(sp)
1c00b592:	0188d893          	srli	a7,a7,0x18
1c00b596:	01885813          	srli	a6,a6,0x18
1c00b59a:	8161                	srli	a0,a0,0x18
1c00b59c:	03e2                	slli	t2,t2,0x18
1c00b59e:	02e2                	slli	t0,t0,0x18
1c00b5a0:	0fe2                	slli	t6,t6,0x18
1c00b5a2:	0f62                	slli	t5,t5,0x18
1c00b5a4:	007d63b3          	or	t2,s10,t2
1c00b5a8:	005ce2b3          	or	t0,s9,t0
1c00b5ac:	5d72                	lw	s10,60(sp)
1c00b5ae:	5ce2                	lw	s9,56(sp)
1c00b5b0:	01fc6fb3          	or	t6,s8,t6
1c00b5b4:	01ebef33          	or	t5,s7,t5
1c00b5b8:	5c52                	lw	s8,52(sp)
1c00b5ba:	5bc2                	lw	s7,48(sp)
1c00b5bc:	81e1                	srli	a1,a1,0x18
1c00b5be:	8261                	srli	a2,a2,0x18
1c00b5c0:	82e1                	srli	a3,a3,0x18
1c00b5c2:	8361                	srli	a4,a4,0x18
1c00b5c4:	83e1                	srli	a5,a5,0x18
1c00b5c6:	08e2                	slli	a7,a7,0x18
1c00b5c8:	0862                	slli	a6,a6,0x18
1c00b5ca:	0562                	slli	a0,a0,0x18
1c00b5cc:	012de4b3          	or	s1,s11,s2
1c00b5d0:	05e2                	slli	a1,a1,0x18
1c00b5d2:	011a6933          	or	s2,s4,a7
1c00b5d6:	0662                	slli	a2,a2,0x18
1c00b5d8:	010aea33          	or	s4,s5,a6
1c00b5dc:	06e2                	slli	a3,a3,0x18
1c00b5de:	00ab6ab3          	or	s5,s6,a0
1c00b5e2:	0762                	slli	a4,a4,0x18
1c00b5e4:	07e2                	slli	a5,a5,0x18
1c00b5e6:	c004                	sw	s1,0(s0)
1c00b5e8:	03242023          	sw	s2,32(s0)
1c00b5ec:	03442223          	sw	s4,36(s0)
1c00b5f0:	03542423          	sw	s5,40(s0)
1c00b5f4:	00bbe5b3          	or	a1,s7,a1
1c00b5f8:	00cc6633          	or	a2,s8,a2
1c00b5fc:	00dce6b3          	or	a3,s9,a3
1c00b600:	00ed6733          	or	a4,s10,a4
1c00b604:	00f9e7b3          	or	a5,s3,a5
1c00b608:	00742223          	sw	t2,4(s0)
1c00b60c:	00542423          	sw	t0,8(s0)
1c00b610:	01f42623          	sw	t6,12(s0)
1c00b614:	01e42823          	sw	t5,16(s0)
1c00b618:	01d42a23          	sw	t4,20(s0)
1c00b61c:	01c42c23          	sw	t3,24(s0)
1c00b620:	00642e23          	sw	t1,28(s0)
1c00b624:	d44c                	sw	a1,44(s0)
1c00b626:	d810                	sw	a2,48(s0)
1c00b628:	d854                	sw	a3,52(s0)
1c00b62a:	dc18                	sw	a4,56(s0)
1c00b62c:	dc5c                	sw	a5,60(s0)
1c00b62e:	24c12083          	lw	ra,588(sp)
1c00b632:	24812403          	lw	s0,584(sp)
1c00b636:	24412483          	lw	s1,580(sp)
1c00b63a:	24012903          	lw	s2,576(sp)
1c00b63e:	23c12983          	lw	s3,572(sp)
1c00b642:	23812a03          	lw	s4,568(sp)
1c00b646:	23412a83          	lw	s5,564(sp)
1c00b64a:	23012b03          	lw	s6,560(sp)
1c00b64e:	22c12b83          	lw	s7,556(sp)
1c00b652:	22812c03          	lw	s8,552(sp)
1c00b656:	22412c83          	lw	s9,548(sp)
1c00b65a:	22012d03          	lw	s10,544(sp)
1c00b65e:	21c12d83          	lw	s11,540(sp)
1c00b662:	25010113          	addi	sp,sp,592
1c00b666:	8082                	ret
1c00b668:	4781                	li	a5,0
1c00b66a:	fbeff06f          	j	1c00ae28 <sha3_512+0x10c>

1c00b66e <PQCLEAN_KYBER512_CLEAN_indcpa_enc>:
1c00b66e:	737d                	lui	t1,0xfffff
1c00b670:	81010113          	addi	sp,sp,-2032
1c00b674:	98030313          	addi	t1,t1,-1664 # ffffe980 <pulp__FC+0xffffe981>
1c00b678:	7e112623          	sw	ra,2028(sp)
1c00b67c:	7e812423          	sw	s0,2024(sp)
1c00b680:	7e912223          	sw	s1,2020(sp)
1c00b684:	7f212023          	sw	s2,2016(sp)
1c00b688:	7d312e23          	sw	s3,2012(sp)
1c00b68c:	7d412c23          	sw	s4,2008(sp)
1c00b690:	7d512a23          	sw	s5,2004(sp)
1c00b694:	7d612823          	sw	s6,2000(sp)
1c00b698:	7d712623          	sw	s7,1996(sp)
1c00b69c:	7d912223          	sw	s9,1988(sp)
1c00b6a0:	7da12023          	sw	s10,1984(sp)
1c00b6a4:	7d812423          	sw	s8,1992(sp)
1c00b6a8:	7bb12e23          	sw	s11,1980(sp)
1c00b6ac:	6789                	lui	a5,0x2
1c00b6ae:	911a                	add	sp,sp,t1
1c00b6b0:	c62a                	sw	a0,12(sp)
1c00b6b2:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00b6b6:	757d                	lui	a0,0xfffff
1c00b6b8:	978a                	add	a5,a5,sp
1c00b6ba:	c0050513          	addi	a0,a0,-1024 # ffffec00 <pulp__FC+0xffffec01>
1c00b6be:	84ae                	mv	s1,a1
1c00b6c0:	953e                	add	a0,a0,a5
1c00b6c2:	85b2                	mv	a1,a2
1c00b6c4:	8432                	mv	s0,a2
1c00b6c6:	c436                	sw	a3,8(sp)
1c00b6c8:	593000ef          	jal	ra,1c00c45a <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>
1c00b6cc:	6e89                	lui	t4,0x2
1c00b6ce:	7979                	lui	s2,0xffffe
1c00b6d0:	e30e8e93          	addi	t4,t4,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00b6d4:	31c42783          	lw	a5,796(s0)
1c00b6d8:	30042e03          	lw	t3,768(s0)
1c00b6dc:	30442303          	lw	t1,772(s0)
1c00b6e0:	30842883          	lw	a7,776(s0)
1c00b6e4:	30c42803          	lw	a6,780(s0)
1c00b6e8:	31042603          	lw	a2,784(s0)
1c00b6ec:	31442683          	lw	a3,788(s0)
1c00b6f0:	31842703          	lw	a4,792(s0)
1c00b6f4:	9e8a                	add	t4,t4,sp
1c00b6f6:	40090513          	addi	a0,s2,1024 # ffffe400 <pulp__FC+0xffffe401>
1c00b6fa:	85a6                	mv	a1,s1
1c00b6fc:	9576                	add	a0,a0,t4
1c00b6fe:	d63e                	sw	a5,44(sp)
1c00b700:	c872                	sw	t3,16(sp)
1c00b702:	ca1a                	sw	t1,20(sp)
1c00b704:	cc46                	sw	a7,24(sp)
1c00b706:	ce42                	sw	a6,28(sp)
1c00b708:	d032                	sw	a2,32(sp)
1c00b70a:	d236                	sw	a3,36(sp)
1c00b70c:	d43a                	sw	a4,40(sp)
1c00b70e:	0a3000ef          	jal	ra,1c00bfb0 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>
1c00b712:	6789                	lui	a5,0x2
1c00b714:	79fd                	lui	s3,0xfffff
1c00b716:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00b71a:	6e85                	lui	t4,0x1
1c00b71c:	978a                	add	a5,a5,sp
1c00b71e:	4b01                	li	s6,0
1c00b720:	40098493          	addi	s1,s3,1024 # fffff400 <pulp__FC+0xfffff401>
1c00b724:	630e8e93          	addi	t4,t4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b728:	6d05                	lui	s10,0x1
1c00b72a:	1e090913          	addi	s2,s2,480
1c00b72e:	94be                	add	s1,s1,a5
1c00b730:	00ab1413          	slli	s0,s6,0xa
1c00b734:	9e8a                	add	t4,t4,sp
1c00b736:	01278ab3          	add	s5,a5,s2
1c00b73a:	fffd0c93          	addi	s9,s10,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00b73e:	1f848a13          	addi	s4,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c00b742:	d00d0d13          	addi	s10,s10,-768
1c00b746:	0ffb7b93          	andi	s7,s6,255
1c00b74a:	9476                	add	s0,s0,t4
1c00b74c:	4901                	li	s2,0
1c00b74e:	6505                	lui	a0,0x1
1c00b750:	e3050513          	addi	a0,a0,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00b754:	86ca                	mv	a3,s2
1c00b756:	85d6                	mv	a1,s5
1c00b758:	950a                	add	a0,a0,sp
1c00b75a:	865e                	mv	a2,s7
1c00b75c:	619000ef          	jal	ra,1c00c574 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>
1c00b760:	6605                	lui	a2,0x1
1c00b762:	e3060613          	addi	a2,a2,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00b766:	8526                	mv	a0,s1
1c00b768:	960a                	add	a2,a2,sp
1c00b76a:	458d                	li	a1,3
1c00b76c:	8c4ff0ef          	jal	ra,1c00a830 <shake128_squeezeblocks>
1c00b770:	4d81                	li	s11,0
1c00b772:	8726                	mv	a4,s1
1c00b774:	10000513          	li	a0,256
1c00b778:	00174603          	lbu	a2,1(a4)
1c00b77c:	00074683          	lbu	a3,0(a4)
1c00b780:	00861793          	slli	a5,a2,0x8
1c00b784:	8fd5                	or	a5,a5,a3
1c00b786:	0197f7b3          	and	a5,a5,s9
1c00b78a:	00274683          	lbu	a3,2(a4)
1c00b78e:	04fd6263          	bltu	s10,a5,1c00b7d2 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x164>
1c00b792:	001d9593          	slli	a1,s11,0x1
1c00b796:	95a2                	add	a1,a1,s0
1c00b798:	0d85                	addi	s11,s11,1
1c00b79a:	00f59023          	sh	a5,0(a1)
1c00b79e:	22ad9963          	bne	s11,a0,1c00b9d0 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x362>
1c00b7a2:	6505                	lui	a0,0x1
1c00b7a4:	e3050513          	addi	a0,a0,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00b7a8:	950a                	add	a0,a0,sp
1c00b7aa:	946ff0ef          	jal	ra,1c00a8f0 <shake128_ctx_release>
1c00b7ae:	20040413          	addi	s0,s0,512
1c00b7b2:	0c090463          	beqz	s2,1c00b87a <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x20c>
1c00b7b6:	0d2b0463          	beq	s6,s2,1c00b87e <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x210>
1c00b7ba:	6e85                	lui	t4,0x1
1c00b7bc:	4b05                	li	s6,1
1c00b7be:	630e8e93          	addi	t4,t4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b7c2:	00ab1413          	slli	s0,s6,0xa
1c00b7c6:	9e8a                	add	t4,t4,sp
1c00b7c8:	0ffb7b93          	andi	s7,s6,255
1c00b7cc:	9476                	add	s0,s0,t4
1c00b7ce:	4901                	li	s2,0
1c00b7d0:	bfbd                	j	1c00b74e <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0xe0>
1c00b7d2:	8211                	srli	a2,a2,0x4
1c00b7d4:	0692                	slli	a3,a3,0x4
1c00b7d6:	8ed1                	or	a3,a3,a2
1c00b7d8:	00dd4863          	blt	s10,a3,1c00b7e8 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x17a>
1c00b7dc:	001d9793          	slli	a5,s11,0x1
1c00b7e0:	97a2                	add	a5,a5,s0
1c00b7e2:	00d79023          	sh	a3,0(a5)
1c00b7e6:	0d85                	addi	s11,s11,1
1c00b7e8:	faad8de3          	beq	s11,a0,1c00b7a2 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x134>
1c00b7ec:	070d                	addi	a4,a4,3
1c00b7ee:	f94715e3          	bne	a4,s4,1c00b778 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x10a>
1c00b7f2:	0a848c13          	addi	s8,s1,168
1c00b7f6:	a031                	j	1c00b802 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x194>
1c00b7f8:	9dae                	add	s11,s11,a1
1c00b7fa:	0ff00793          	li	a5,255
1c00b7fe:	fbb7e2e3          	bltu	a5,s11,1c00b7a2 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x134>
1c00b802:	6605                	lui	a2,0x1
1c00b804:	e3060613          	addi	a2,a2,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00b808:	4585                	li	a1,1
1c00b80a:	960a                	add	a2,a2,sp
1c00b80c:	8526                	mv	a0,s1
1c00b80e:	822ff0ef          	jal	ra,1c00a830 <shake128_squeezeblocks>
1c00b812:	001d9313          	slli	t1,s11,0x1
1c00b816:	10000e13          	li	t3,256
1c00b81a:	9322                	add	t1,t1,s0
1c00b81c:	41be0e33          	sub	t3,t3,s11
1c00b820:	86a6                	mv	a3,s1
1c00b822:	4581                	li	a1,0
1c00b824:	00159793          	slli	a5,a1,0x1
1c00b828:	00f30533          	add	a0,t1,a5
1c00b82c:	fcdc06e3          	beq	s8,a3,1c00b7f8 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x18a>
1c00b830:	0016c703          	lbu	a4,1(a3)
1c00b834:	0006c603          	lbu	a2,0(a3)
1c00b838:	00871793          	slli	a5,a4,0x8
1c00b83c:	8fd1                	or	a5,a5,a2
1c00b83e:	0197f7b3          	and	a5,a5,s9
1c00b842:	00475613          	srli	a2,a4,0x4
1c00b846:	0026c703          	lbu	a4,2(a3)
1c00b84a:	00fd6563          	bltu	s10,a5,1c00b854 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x1e6>
1c00b84e:	00f51023          	sh	a5,0(a0)
1c00b852:	0585                	addi	a1,a1,1
1c00b854:	00471793          	slli	a5,a4,0x4
1c00b858:	8fd1                	or	a5,a5,a2
1c00b85a:	f9c5ffe3          	bleu	t3,a1,1c00b7f8 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x18a>
1c00b85e:	00159713          	slli	a4,a1,0x1
1c00b862:	971a                	add	a4,a4,t1
1c00b864:	00158613          	addi	a2,a1,1
1c00b868:	00fd4763          	blt	s10,a5,1c00b876 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x208>
1c00b86c:	00f71023          	sh	a5,0(a4)
1c00b870:	85b2                	mv	a1,a2
1c00b872:	f9c673e3          	bleu	t3,a2,1c00b7f8 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x18a>
1c00b876:	068d                	addi	a3,a3,3
1c00b878:	b775                	j	1c00b824 <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x1b6>
1c00b87a:	4905                	li	s2,1
1c00b87c:	bdc9                	j	1c00b74e <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0xe0>
1c00b87e:	6789                	lui	a5,0x2
1c00b880:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00b884:	978a                	add	a5,a5,sp
1c00b886:	80098913          	addi	s2,s3,-2048
1c00b88a:	993e                	add	s2,s2,a5
1c00b88c:	45a2                	lw	a1,8(sp)
1c00b88e:	854a                	mv	a0,s2
1c00b890:	4601                	li	a2,0
1c00b892:	0f5000ef          	jal	ra,1c00c186 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00b896:	45a2                	lw	a1,8(sp)
1c00b898:	20090513          	addi	a0,s2,512
1c00b89c:	4605                	li	a2,1
1c00b89e:	0e9000ef          	jal	ra,1c00c186 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>
1c00b8a2:	6505                	lui	a0,0x1
1c00b8a4:	45a2                	lw	a1,8(sp)
1c00b8a6:	e3050513          	addi	a0,a0,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00b8aa:	950a                	add	a0,a0,sp
1c00b8ac:	4609                	li	a2,2
1c00b8ae:	0fd000ef          	jal	ra,1c00c1aa <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00b8b2:	6e85                	lui	t4,0x1
1c00b8b4:	e30e8e93          	addi	t4,t4,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00b8b8:	9e8a                	add	t4,t4,sp
1c00b8ba:	45a2                	lw	a1,8(sp)
1c00b8bc:	200e8513          	addi	a0,t4,512
1c00b8c0:	460d                	li	a2,3
1c00b8c2:	0e9000ef          	jal	ra,1c00c1aa <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00b8c6:	6789                	lui	a5,0x2
1c00b8c8:	7a79                	lui	s4,0xffffe
1c00b8ca:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00b8ce:	978a                	add	a5,a5,sp
1c00b8d0:	600a0a93          	addi	s5,s4,1536 # ffffe600 <pulp__FC+0xffffe601>
1c00b8d4:	9abe                	add	s5,s5,a5
1c00b8d6:	45a2                	lw	a1,8(sp)
1c00b8d8:	4611                	li	a2,4
1c00b8da:	8556                	mv	a0,s5
1c00b8dc:	0cf000ef          	jal	ra,1c00c1aa <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>
1c00b8e0:	854a                	mv	a0,s2
1c00b8e2:	399000ef          	jal	ra,1c00c47a <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c00b8e6:	6e89                	lui	t4,0x2
1c00b8e8:	e30e8e93          	addi	t4,t4,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00b8ec:	9e8a                	add	t4,t4,sp
1c00b8ee:	40098493          	addi	s1,s3,1024
1c00b8f2:	6585                	lui	a1,0x1
1c00b8f4:	94f6                	add	s1,s1,t4
1c00b8f6:	63058593          	addi	a1,a1,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00b8fa:	958a                	add	a1,a1,sp
1c00b8fc:	8526                	mv	a0,s1
1c00b8fe:	864a                	mv	a2,s2
1c00b900:	3a7000ef          	jal	ra,1c00c4a6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00b904:	6789                	lui	a5,0x2
1c00b906:	a3078793          	addi	a5,a5,-1488 # 1a30 <__CTOR_LIST__-0x1bffe5d4>
1c00b90a:	00f105b3          	add	a1,sp,a5
1c00b90e:	864a                	mv	a2,s2
1c00b910:	20048513          	addi	a0,s1,512
1c00b914:	393000ef          	jal	ra,1c00c4a6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00b918:	6e89                	lui	t4,0x2
1c00b91a:	e30e8e93          	addi	t4,t4,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00b91e:	9e8a                	add	t4,t4,sp
1c00b920:	200a0413          	addi	s0,s4,512
1c00b924:	9476                	add	s0,s0,t4
1c00b926:	c0098593          	addi	a1,s3,-1024
1c00b92a:	95f6                	add	a1,a1,t4
1c00b92c:	864a                	mv	a2,s2
1c00b92e:	8522                	mv	a0,s0
1c00b930:	377000ef          	jal	ra,1c00c4a6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00b934:	8526                	mv	a0,s1
1c00b936:	35b000ef          	jal	ra,1c00c490 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>
1c00b93a:	8522                	mv	a0,s0
1c00b93c:	0bd000ef          	jal	ra,1c00c1f8 <PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont>
1c00b940:	6605                	lui	a2,0x1
1c00b942:	e3060613          	addi	a2,a2,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00b946:	960a                	add	a2,a2,sp
1c00b948:	85a6                	mv	a1,s1
1c00b94a:	8526                	mv	a0,s1
1c00b94c:	3bb000ef          	jal	ra,1c00c506 <PQCLEAN_KYBER512_CLEAN_polyvec_add>
1c00b950:	8656                	mv	a2,s5
1c00b952:	85a2                	mv	a1,s0
1c00b954:	8522                	mv	a0,s0
1c00b956:	13b000ef          	jal	ra,1c00c290 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00b95a:	6789                	lui	a5,0x2
1c00b95c:	e3078793          	addi	a5,a5,-464 # 1e30 <__CTOR_LIST__-0x1bffe1d4>
1c00b960:	978a                	add	a5,a5,sp
1c00b962:	400a0613          	addi	a2,s4,1024
1c00b966:	963e                	add	a2,a2,a5
1c00b968:	85a2                	mv	a1,s0
1c00b96a:	8522                	mv	a0,s0
1c00b96c:	125000ef          	jal	ra,1c00c290 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00b970:	8526                	mv	a0,s1
1c00b972:	37f000ef          	jal	ra,1c00c4f0 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>
1c00b976:	8522                	mv	a0,s0
1c00b978:	0f1000ef          	jal	ra,1c00c268 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00b97c:	4532                	lw	a0,12(sp)
1c00b97e:	85a6                	mv	a1,s1
1c00b980:	14d000ef          	jal	ra,1c00c2cc <PQCLEAN_KYBER512_CLEAN_polyvec_compress>
1c00b984:	4eb2                	lw	t4,12(sp)
1c00b986:	85a2                	mv	a1,s0
1c00b988:	280e8513          	addi	a0,t4,640
1c00b98c:	21a1                	jal	1c00bdd4 <PQCLEAN_KYBER512_CLEAN_poly_compress>
1c00b98e:	6305                	lui	t1,0x1
1c00b990:	68030313          	addi	t1,t1,1664 # 1680 <__CTOR_LIST__-0x1bffe984>
1c00b994:	911a                	add	sp,sp,t1
1c00b996:	7ec12083          	lw	ra,2028(sp)
1c00b99a:	7e812403          	lw	s0,2024(sp)
1c00b99e:	7e412483          	lw	s1,2020(sp)
1c00b9a2:	7e012903          	lw	s2,2016(sp)
1c00b9a6:	7dc12983          	lw	s3,2012(sp)
1c00b9aa:	7d812a03          	lw	s4,2008(sp)
1c00b9ae:	7d412a83          	lw	s5,2004(sp)
1c00b9b2:	7d012b03          	lw	s6,2000(sp)
1c00b9b6:	7cc12b83          	lw	s7,1996(sp)
1c00b9ba:	7c812c03          	lw	s8,1992(sp)
1c00b9be:	7c412c83          	lw	s9,1988(sp)
1c00b9c2:	7c012d03          	lw	s10,1984(sp)
1c00b9c6:	7bc12d83          	lw	s11,1980(sp)
1c00b9ca:	7f010113          	addi	sp,sp,2032
1c00b9ce:	8082                	ret
1c00b9d0:	00469793          	slli	a5,a3,0x4
1c00b9d4:	00465693          	srli	a3,a2,0x4
1c00b9d8:	8edd                	or	a3,a3,a5
1c00b9da:	e0dd51e3          	ble	a3,s10,1c00b7dc <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x16e>
1c00b9de:	b539                	j	1c00b7ec <PQCLEAN_KYBER512_CLEAN_indcpa_enc+0x17e>

1c00b9e0 <PQCLEAN_KYBER512_CLEAN_indcpa_dec>:
1c00b9e0:	81010113          	addi	sp,sp,-2032
1c00b9e4:	7e112623          	sw	ra,2028(sp)
1c00b9e8:	7e812423          	sw	s0,2024(sp)
1c00b9ec:	7e912223          	sw	s1,2020(sp)
1c00b9f0:	7f212023          	sw	s2,2016(sp)
1c00b9f4:	7d312e23          	sw	s3,2012(sp)
1c00b9f8:	7d412c23          	sw	s4,2008(sp)
1c00b9fc:	bd010113          	addi	sp,sp,-1072
1c00ba00:	892a                	mv	s2,a0
1c00ba02:	40010513          	addi	a0,sp,1024
1c00ba06:	89b2                	mv	s3,a2
1c00ba08:	8a2e                	mv	s4,a1
1c00ba0a:	197000ef          	jal	ra,1c00c3a0 <PQCLEAN_KYBER512_CLEAN_polyvec_decompress>
1c00ba0e:	6785                	lui	a5,0x1
1c00ba10:	747d                	lui	s0,0xfffff
1c00ba12:	c0078793          	addi	a5,a5,-1024 # c00 <__CTOR_LIST__-0x1bfff404>
1c00ba16:	978a                	add	a5,a5,sp
1c00ba18:	40040493          	addi	s1,s0,1024 # fffff400 <pulp__FC+0xfffff401>
1c00ba1c:	94be                	add	s1,s1,a5
1c00ba1e:	280a0593          	addi	a1,s4,640
1c00ba22:	8526                	mv	a0,s1
1c00ba24:	2b39                	jal	1c00bf42 <PQCLEAN_KYBER512_CLEAN_poly_decompress>
1c00ba26:	6505                	lui	a0,0x1
1c00ba28:	80050513          	addi	a0,a0,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00ba2c:	85ce                	mv	a1,s3
1c00ba2e:	950a                	add	a0,a0,sp
1c00ba30:	22b000ef          	jal	ra,1c00c45a <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>
1c00ba34:	40010513          	addi	a0,sp,1024
1c00ba38:	243000ef          	jal	ra,1c00c47a <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>
1c00ba3c:	6785                	lui	a5,0x1
1c00ba3e:	c0078793          	addi	a5,a5,-1024 # c00 <__CTOR_LIST__-0x1bfff404>
1c00ba42:	978a                	add	a5,a5,sp
1c00ba44:	60040413          	addi	s0,s0,1536
1c00ba48:	6585                	lui	a1,0x1
1c00ba4a:	943e                	add	s0,s0,a5
1c00ba4c:	80058593          	addi	a1,a1,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00ba50:	40010613          	addi	a2,sp,1024
1c00ba54:	958a                	add	a1,a1,sp
1c00ba56:	8522                	mv	a0,s0
1c00ba58:	24f000ef          	jal	ra,1c00c4a6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>
1c00ba5c:	8522                	mv	a0,s0
1c00ba5e:	79a000ef          	jal	ra,1c00c1f8 <PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont>
1c00ba62:	8622                	mv	a2,s0
1c00ba64:	85a6                	mv	a1,s1
1c00ba66:	8522                	mv	a0,s0
1c00ba68:	047000ef          	jal	ra,1c00c2ae <PQCLEAN_KYBER512_CLEAN_poly_sub>
1c00ba6c:	8522                	mv	a0,s0
1c00ba6e:	7fa000ef          	jal	ra,1c00c268 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00ba72:	85a2                	mv	a1,s0
1c00ba74:	854a                	mv	a0,s2
1c00ba76:	23f1                	jal	1c00c042 <PQCLEAN_KYBER512_CLEAN_poly_tomsg>
1c00ba78:	43010113          	addi	sp,sp,1072
1c00ba7c:	7ec12083          	lw	ra,2028(sp)
1c00ba80:	7e812403          	lw	s0,2024(sp)
1c00ba84:	7e412483          	lw	s1,2020(sp)
1c00ba88:	7e012903          	lw	s2,2016(sp)
1c00ba8c:	7dc12983          	lw	s3,2012(sp)
1c00ba90:	7d812a03          	lw	s4,2008(sp)
1c00ba94:	7f010113          	addi	sp,sp,2032
1c00ba98:	8082                	ret

1c00ba9a <PQCLEAN_KYBER512_CLEAN_crypto_kem_dec>:
1c00ba9a:	c6010113          	addi	sp,sp,-928
1c00ba9e:	39212823          	sw	s2,912(sp)
1c00baa2:	892a                	mv	s2,a0
1c00baa4:	850a                	mv	a0,sp
1c00baa6:	38112e23          	sw	ra,924(sp)
1c00baaa:	38812c23          	sw	s0,920(sp)
1c00baae:	38912a23          	sw	s1,916(sp)
1c00bab2:	8432                	mv	s0,a2
1c00bab4:	39312623          	sw	s3,908(sp)
1c00bab8:	84ae                	mv	s1,a1
1c00baba:	371d                	jal	1c00b9e0 <PQCLEAN_KYBER512_CLEAN_indcpa_dec>
1c00babc:	62042e83          	lw	t4,1568(s0)
1c00bac0:	62442e03          	lw	t3,1572(s0)
1c00bac4:	62842303          	lw	t1,1576(s0)
1c00bac8:	62c42883          	lw	a7,1580(s0)
1c00bacc:	63042803          	lw	a6,1584(s0)
1c00bad0:	63842703          	lw	a4,1592(s0)
1c00bad4:	63c42783          	lw	a5,1596(s0)
1c00bad8:	63442683          	lw	a3,1588(s0)
1c00badc:	858a                	mv	a1,sp
1c00bade:	0088                	addi	a0,sp,64
1c00bae0:	04000613          	li	a2,64
1c00bae4:	d076                	sw	t4,32(sp)
1c00bae6:	d272                	sw	t3,36(sp)
1c00bae8:	d41a                	sw	t1,40(sp)
1c00baea:	d646                	sw	a7,44(sp)
1c00baec:	d842                	sw	a6,48(sp)
1c00baee:	dc3a                	sw	a4,56(sp)
1c00baf0:	de3e                	sw	a5,60(sp)
1c00baf2:	da36                	sw	a3,52(sp)
1c00baf4:	a28ff0ef          	jal	ra,1c00ad1c <sha3_512>
1c00baf8:	1094                	addi	a3,sp,96
1c00bafa:	30040613          	addi	a2,s0,768
1c00bafe:	858a                	mv	a1,sp
1c00bb00:	0108                	addi	a0,sp,128
1c00bb02:	36b5                	jal	1c00b66e <PQCLEAN_KYBER512_CLEAN_indcpa_enc>
1c00bb04:	010c                	addi	a1,sp,128
1c00bb06:	30000613          	li	a2,768
1c00bb0a:	8526                	mv	a0,s1
1c00bb0c:	2db000ef          	jal	ra,1c00c5e6 <PQCLEAN_KYBER512_CLEAN_verify>
1c00bb10:	89aa                	mv	s3,a0
1c00bb12:	85a6                	mv	a1,s1
1c00bb14:	1088                	addi	a0,sp,96
1c00bb16:	30000613          	li	a2,768
1c00bb1a:	81aff0ef          	jal	ra,1c00ab34 <sha3_256>
1c00bb1e:	0ff9f693          	andi	a3,s3,255
1c00bb22:	64040593          	addi	a1,s0,1600
1c00bb26:	0088                	addi	a0,sp,64
1c00bb28:	02000613          	li	a2,32
1c00bb2c:	36d000ef          	jal	ra,1c00c698 <PQCLEAN_KYBER512_CLEAN_cmov>
1c00bb30:	854a                	mv	a0,s2
1c00bb32:	0090                	addi	a2,sp,64
1c00bb34:	04000693          	li	a3,64
1c00bb38:	02000593          	li	a1,32
1c00bb3c:	dbffe0ef          	jal	ra,1c00a8fa <shake256>
1c00bb40:	39c12083          	lw	ra,924(sp)
1c00bb44:	39812403          	lw	s0,920(sp)
1c00bb48:	39412483          	lw	s1,916(sp)
1c00bb4c:	39012903          	lw	s2,912(sp)
1c00bb50:	38c12983          	lw	s3,908(sp)
1c00bb54:	4501                	li	a0,0
1c00bb56:	3a010113          	addi	sp,sp,928
1c00bb5a:	8082                	ret

1c00bb5c <PQCLEAN_KYBER512_CLEAN_ntt>:
1c00bb5c:	7139                	addi	sp,sp,-64
1c00bb5e:	da26                	sw	s1,52(sp)
1c00bb60:	d256                	sw	s5,36(sp)
1c00bb62:	d05a                	sw	s6,32(sp)
1c00bb64:	ce5e                	sw	s7,28(sp)
1c00bb66:	cc62                	sw	s8,24(sp)
1c00bb68:	ca66                	sw	s9,20(sp)
1c00bb6a:	de06                	sw	ra,60(sp)
1c00bb6c:	dc22                	sw	s0,56(sp)
1c00bb6e:	d84a                	sw	s2,48(sp)
1c00bb70:	d64e                	sw	s3,44(sp)
1c00bb72:	d452                	sw	s4,40(sp)
1c00bb74:	c86a                	sw	s10,16(sp)
1c00bb76:	c66e                	sw	s11,12(sp)
1c00bb78:	8b2a                	mv	s6,a0
1c00bb7a:	4c9d                	li	s9,7
1c00bb7c:	d0a00493          	li	s1,-758
1c00bb80:	4b85                	li	s7,1
1c00bb82:	08000a93          	li	s5,128
1c00bb86:	0ff00c13          	li	s8,255
1c00bb8a:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00bb8e:	1c0007b7          	lui	a5,0x1c000
1c00bb92:	4401                	li	s0,0
1c00bb94:	00199a13          	slli	s4,s3,0x1
1c00bb98:	14878793          	addi	a5,a5,328 # 1c000148 <PQCLEAN_KYBER512_CLEAN_zetas>
1c00bb9c:	008a8933          	add	s2,s5,s0
1c00bba0:	9a3e                	add	s4,s4,a5
1c00bba2:	8bce                	mv	s7,s3
1c00bba4:	05247c63          	bleu	s2,s0,1c00bbfc <PQCLEAN_KYBER512_CLEAN_ntt+0xa0>
1c00bba8:	00191793          	slli	a5,s2,0x1
1c00bbac:	00fb0d33          	add	s10,s6,a5
1c00bbb0:	0406                	slli	s0,s0,0x1
1c00bbb2:	945a                	add	s0,s0,s6
1c00bbb4:	8dea                	mv	s11,s10
1c00bbb6:	000d1503          	lh	a0,0(s10)
1c00bbba:	0409                	addi	s0,s0,2
1c00bbbc:	02950533          	mul	a0,a0,s1
1c00bbc0:	171000ef          	jal	ra,1c00c530 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bbc4:	ffe45703          	lhu	a4,-2(s0)
1c00bbc8:	0542                	slli	a0,a0,0x10
1c00bbca:	8141                	srli	a0,a0,0x10
1c00bbcc:	8f09                	sub	a4,a4,a0
1c00bbce:	00ed1023          	sh	a4,0(s10)
1c00bbd2:	ffe45703          	lhu	a4,-2(s0)
1c00bbd6:	0d09                	addi	s10,s10,2
1c00bbd8:	953a                	add	a0,a0,a4
1c00bbda:	fea41f23          	sh	a0,-2(s0)
1c00bbde:	fc8d9ce3          	bne	s11,s0,1c00bbb6 <PQCLEAN_KYBER512_CLEAN_ntt+0x5a>
1c00bbe2:	01590433          	add	s0,s2,s5
1c00bbe6:	008c6d63          	bltu	s8,s0,1c00bc00 <PQCLEAN_KYBER512_CLEAN_ntt+0xa4>
1c00bbea:	0985                	addi	s3,s3,1
1c00bbec:	008a8933          	add	s2,s5,s0
1c00bbf0:	000a1483          	lh	s1,0(s4)
1c00bbf4:	8bce                	mv	s7,s3
1c00bbf6:	0a09                	addi	s4,s4,2
1c00bbf8:	fb2468e3          	bltu	s0,s2,1c00bba8 <PQCLEAN_KYBER512_CLEAN_ntt+0x4c>
1c00bbfc:	844a                	mv	s0,s2
1c00bbfe:	b7f5                	j	1c00bbea <PQCLEAN_KYBER512_CLEAN_ntt+0x8e>
1c00bc00:	1cfd                	addi	s9,s9,-1
1c00bc02:	001ada93          	srli	s5,s5,0x1
1c00bc06:	000c8b63          	beqz	s9,1c00bc1c <PQCLEAN_KYBER512_CLEAN_ntt+0xc0>
1c00bc0a:	1c0007b7          	lui	a5,0x1c000
1c00bc0e:	0986                	slli	s3,s3,0x1
1c00bc10:	14878793          	addi	a5,a5,328 # 1c000148 <PQCLEAN_KYBER512_CLEAN_zetas>
1c00bc14:	99be                	add	s3,s3,a5
1c00bc16:	00099483          	lh	s1,0(s3)
1c00bc1a:	bf85                	j	1c00bb8a <PQCLEAN_KYBER512_CLEAN_ntt+0x2e>
1c00bc1c:	50f2                	lw	ra,60(sp)
1c00bc1e:	5462                	lw	s0,56(sp)
1c00bc20:	54d2                	lw	s1,52(sp)
1c00bc22:	5942                	lw	s2,48(sp)
1c00bc24:	59b2                	lw	s3,44(sp)
1c00bc26:	5a22                	lw	s4,40(sp)
1c00bc28:	5a92                	lw	s5,36(sp)
1c00bc2a:	5b02                	lw	s6,32(sp)
1c00bc2c:	4bf2                	lw	s7,28(sp)
1c00bc2e:	4c62                	lw	s8,24(sp)
1c00bc30:	4cd2                	lw	s9,20(sp)
1c00bc32:	4d42                	lw	s10,16(sp)
1c00bc34:	4db2                	lw	s11,12(sp)
1c00bc36:	6121                	addi	sp,sp,64
1c00bc38:	8082                	ret

1c00bc3a <PQCLEAN_KYBER512_CLEAN_invntt>:
1c00bc3a:	7139                	addi	sp,sp,-64
1c00bc3c:	dc22                	sw	s0,56(sp)
1c00bc3e:	da26                	sw	s1,52(sp)
1c00bc40:	d256                	sw	s5,36(sp)
1c00bc42:	d05a                	sw	s6,32(sp)
1c00bc44:	ce5e                	sw	s7,28(sp)
1c00bc46:	cc62                	sw	s8,24(sp)
1c00bc48:	de06                	sw	ra,60(sp)
1c00bc4a:	d84a                	sw	s2,48(sp)
1c00bc4c:	d64e                	sw	s3,44(sp)
1c00bc4e:	d452                	sw	s4,40(sp)
1c00bc50:	ca66                	sw	s9,20(sp)
1c00bc52:	c86a                	sw	s10,16(sp)
1c00bc54:	c66e                	sw	s11,12(sp)
1c00bc56:	842a                	mv	s0,a0
1c00bc58:	4c1d                	li	s8,7
1c00bc5a:	65c00493          	li	s1,1628
1c00bc5e:	07f00a93          	li	s5,127
1c00bc62:	4b09                	li	s6,2
1c00bc64:	0ff00b93          	li	s7,255
1c00bc68:	800007b7          	lui	a5,0x80000
1c00bc6c:	fff7c793          	not	a5,a5
1c00bc70:	00fa8a33          	add	s4,s5,a5
1c00bc74:	1c000737          	lui	a4,0x1c000
1c00bc78:	4781                	li	a5,0
1c00bc7a:	0a06                	slli	s4,s4,0x1
1c00bc7c:	14870713          	addi	a4,a4,328 # 1c000148 <PQCLEAN_KYBER512_CLEAN_zetas>
1c00bc80:	016789b3          	add	s3,a5,s6
1c00bc84:	9a3a                	add	s4,s4,a4
1c00bc86:	1afd                	addi	s5,s5,-1
1c00bc88:	0737f263          	bleu	s3,a5,1c00bcec <PQCLEAN_KYBER512_CLEAN_invntt+0xb2>
1c00bc8c:	00199d93          	slli	s11,s3,0x1
1c00bc90:	0786                	slli	a5,a5,0x1
1c00bc92:	9da2                	add	s11,s11,s0
1c00bc94:	00f40d33          	add	s10,s0,a5
1c00bc98:	896e                	mv	s2,s11
1c00bc9a:	000d5c83          	lhu	s9,0(s10)
1c00bc9e:	000dd503          	lhu	a0,0(s11)
1c00bca2:	0d09                	addi	s10,s10,2
1c00bca4:	9566                	add	a0,a0,s9
1c00bca6:	0542                	slli	a0,a0,0x10
1c00bca8:	8541                	srai	a0,a0,0x10
1c00bcaa:	0a7000ef          	jal	ra,1c00c550 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c00bcae:	fead1f23          	sh	a0,-2(s10)
1c00bcb2:	000dd503          	lhu	a0,0(s11)
1c00bcb6:	0d89                	addi	s11,s11,2
1c00bcb8:	41950533          	sub	a0,a0,s9
1c00bcbc:	0542                	slli	a0,a0,0x10
1c00bcbe:	8541                	srai	a0,a0,0x10
1c00bcc0:	fead9f23          	sh	a0,-2(s11)
1c00bcc4:	02950533          	mul	a0,a0,s1
1c00bcc8:	069000ef          	jal	ra,1c00c530 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bccc:	fead9f23          	sh	a0,-2(s11)
1c00bcd0:	fda915e3          	bne	s2,s10,1c00bc9a <PQCLEAN_KYBER512_CLEAN_invntt+0x60>
1c00bcd4:	016987b3          	add	a5,s3,s6
1c00bcd8:	00fbed63          	bltu	s7,a5,1c00bcf2 <PQCLEAN_KYBER512_CLEAN_invntt+0xb8>
1c00bcdc:	016789b3          	add	s3,a5,s6
1c00bce0:	000a1483          	lh	s1,0(s4)
1c00bce4:	1afd                	addi	s5,s5,-1
1c00bce6:	1a79                	addi	s4,s4,-2
1c00bce8:	fb37e2e3          	bltu	a5,s3,1c00bc8c <PQCLEAN_KYBER512_CLEAN_invntt+0x52>
1c00bcec:	87ce                	mv	a5,s3
1c00bcee:	fefbf7e3          	bleu	a5,s7,1c00bcdc <PQCLEAN_KYBER512_CLEAN_invntt+0xa2>
1c00bcf2:	1c7d                	addi	s8,s8,-1
1c00bcf4:	0b06                	slli	s6,s6,0x1
1c00bcf6:	000c0c63          	beqz	s8,1c00bd0e <PQCLEAN_KYBER512_CLEAN_invntt+0xd4>
1c00bcfa:	1c000737          	lui	a4,0x1c000
1c00bcfe:	001a9793          	slli	a5,s5,0x1
1c00bd02:	14870713          	addi	a4,a4,328 # 1c000148 <PQCLEAN_KYBER512_CLEAN_zetas>
1c00bd06:	97ba                	add	a5,a5,a4
1c00bd08:	00079483          	lh	s1,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00bd0c:	bfb1                	j	1c00bc68 <PQCLEAN_KYBER512_CLEAN_invntt+0x2e>
1c00bd0e:	20040913          	addi	s2,s0,512
1c00bd12:	5a100493          	li	s1,1441
1c00bd16:	00041503          	lh	a0,0(s0)
1c00bd1a:	0409                	addi	s0,s0,2
1c00bd1c:	02950533          	mul	a0,a0,s1
1c00bd20:	011000ef          	jal	ra,1c00c530 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bd24:	fea41f23          	sh	a0,-2(s0)
1c00bd28:	fe8917e3          	bne	s2,s0,1c00bd16 <PQCLEAN_KYBER512_CLEAN_invntt+0xdc>
1c00bd2c:	50f2                	lw	ra,60(sp)
1c00bd2e:	5462                	lw	s0,56(sp)
1c00bd30:	54d2                	lw	s1,52(sp)
1c00bd32:	5942                	lw	s2,48(sp)
1c00bd34:	59b2                	lw	s3,44(sp)
1c00bd36:	5a22                	lw	s4,40(sp)
1c00bd38:	5a92                	lw	s5,36(sp)
1c00bd3a:	5b02                	lw	s6,32(sp)
1c00bd3c:	4bf2                	lw	s7,28(sp)
1c00bd3e:	4c62                	lw	s8,24(sp)
1c00bd40:	4cd2                	lw	s9,20(sp)
1c00bd42:	4d42                	lw	s10,16(sp)
1c00bd44:	4db2                	lw	s11,12(sp)
1c00bd46:	6121                	addi	sp,sp,64
1c00bd48:	8082                	ret

1c00bd4a <PQCLEAN_KYBER512_CLEAN_basemul>:
1c00bd4a:	00261783          	lh	a5,2(a2)
1c00bd4e:	00259703          	lh	a4,2(a1)
1c00bd52:	1101                	addi	sp,sp,-32
1c00bd54:	cc22                	sw	s0,24(sp)
1c00bd56:	842a                	mv	s0,a0
1c00bd58:	02f70533          	mul	a0,a4,a5
1c00bd5c:	ce06                	sw	ra,28(sp)
1c00bd5e:	ca26                	sw	s1,20(sp)
1c00bd60:	c84a                	sw	s2,16(sp)
1c00bd62:	c64e                	sw	s3,12(sp)
1c00bd64:	892e                	mv	s2,a1
1c00bd66:	84b2                	mv	s1,a2
1c00bd68:	89b6                	mv	s3,a3
1c00bd6a:	7c6000ef          	jal	ra,1c00c530 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bd6e:	00a41023          	sh	a0,0(s0)
1c00bd72:	03350533          	mul	a0,a0,s3
1c00bd76:	7ba000ef          	jal	ra,1c00c530 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bd7a:	00a41023          	sh	a0,0(s0)
1c00bd7e:	00049783          	lh	a5,0(s1)
1c00bd82:	00091503          	lh	a0,0(s2)
1c00bd86:	02f50533          	mul	a0,a0,a5
1c00bd8a:	7a6000ef          	jal	ra,1c00c530 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bd8e:	00045783          	lhu	a5,0(s0)
1c00bd92:	953e                	add	a0,a0,a5
1c00bd94:	00a41023          	sh	a0,0(s0)
1c00bd98:	00249783          	lh	a5,2(s1)
1c00bd9c:	00091503          	lh	a0,0(s2)
1c00bda0:	02f50533          	mul	a0,a0,a5
1c00bda4:	78c000ef          	jal	ra,1c00c530 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bda8:	00a41123          	sh	a0,2(s0)
1c00bdac:	00049783          	lh	a5,0(s1)
1c00bdb0:	00291503          	lh	a0,2(s2)
1c00bdb4:	02f50533          	mul	a0,a0,a5
1c00bdb8:	778000ef          	jal	ra,1c00c530 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>
1c00bdbc:	00245783          	lhu	a5,2(s0)
1c00bdc0:	40f2                	lw	ra,28(sp)
1c00bdc2:	953e                	add	a0,a0,a5
1c00bdc4:	00a41123          	sh	a0,2(s0)
1c00bdc8:	4462                	lw	s0,24(sp)
1c00bdca:	44d2                	lw	s1,20(sp)
1c00bdcc:	4942                	lw	s2,16(sp)
1c00bdce:	49b2                	lw	s3,12(sp)
1c00bdd0:	6105                	addi	sp,sp,32
1c00bdd2:	8082                	ret

1c00bdd4 <PQCLEAN_KYBER512_CLEAN_poly_compress>:
1c00bdd4:	1141                	addi	sp,sp,-16
1c00bdd6:	6685                	lui	a3,0x1
1c00bdd8:	78c1                	lui	a7,0xffff0
1c00bdda:	ff010837          	lui	a6,0xff010
1c00bdde:	01000637          	lui	a2,0x1000
1c00bde2:	c622                	sw	s0,12(sp)
1c00bde4:	c426                	sw	s1,8(sp)
1c00bde6:	c24a                	sw	s2,4(sp)
1c00bde8:	08050313          	addi	t1,a0,128
1c00bdec:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00bdf0:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00bdf4:	187d                	addi	a6,a6,-1
1c00bdf6:	167d                	addi	a2,a2,-1
1c00bdf8:	00259403          	lh	s0,2(a1)
1c00bdfc:	00659f03          	lh	t5,6(a1)
1c00be00:	00459e83          	lh	t4,4(a1)
1c00be04:	00059903          	lh	s2,0(a1)
1c00be08:	00a59783          	lh	a5,10(a1)
1c00be0c:	40f45713          	srai	a4,s0,0xf
1c00be10:	40ff5f93          	srai	t6,t5,0xf
1c00be14:	00859e03          	lh	t3,8(a1)
1c00be18:	40fed293          	srai	t0,t4,0xf
1c00be1c:	8f75                	and	a4,a4,a3
1c00be1e:	40f95393          	srai	t2,s2,0xf
1c00be22:	00dfffb3          	and	t6,t6,a3
1c00be26:	00e59483          	lh	s1,14(a1)
1c00be2a:	9722                	add	a4,a4,s0
1c00be2c:	9ffa                	add	t6,t6,t5
1c00be2e:	00d3f3b3          	and	t2,t2,a3
1c00be32:	40f7df13          	srai	t5,a5,0xf
1c00be36:	00d2f2b3          	and	t0,t0,a3
1c00be3a:	00c59403          	lh	s0,12(a1)
1c00be3e:	92f6                	add	t0,t0,t4
1c00be40:	0742                	slli	a4,a4,0x10
1c00be42:	40fe5e93          	srai	t4,t3,0xf
1c00be46:	93ca                	add	t2,t2,s2
1c00be48:	0fc2                	slli	t6,t6,0x10
1c00be4a:	00df7f33          	and	t5,t5,a3
1c00be4e:	9f3e                	add	t5,t5,a5
1c00be50:	8341                	srli	a4,a4,0x10
1c00be52:	010fdf93          	srli	t6,t6,0x10
1c00be56:	03c2                	slli	t2,t2,0x10
1c00be58:	02c2                	slli	t0,t0,0x10
1c00be5a:	00defeb3          	and	t4,t4,a3
1c00be5e:	40f4d793          	srai	a5,s1,0xf
1c00be62:	9ef2                	add	t4,t4,t3
1c00be64:	0712                	slli	a4,a4,0x4
1c00be66:	0103d393          	srli	t2,t2,0x10
1c00be6a:	0f92                	slli	t6,t6,0x4
1c00be6c:	0102d293          	srli	t0,t0,0x10
1c00be70:	0f42                	slli	t5,t5,0x10
1c00be72:	8ff5                	and	a5,a5,a3
1c00be74:	40f45e13          	srai	t3,s0,0xf
1c00be78:	68070713          	addi	a4,a4,1664
1c00be7c:	0392                	slli	t2,t2,0x4
1c00be7e:	680f8f93          	addi	t6,t6,1664 # 1000680 <__CTOR_LIST__-0x1afff984>
1c00be82:	0292                	slli	t0,t0,0x4
1c00be84:	010f5f13          	srli	t5,t5,0x10
1c00be88:	0ec2                	slli	t4,t4,0x10
1c00be8a:	97a6                	add	a5,a5,s1
1c00be8c:	00de7e33          	and	t3,t3,a3
1c00be90:	02d74733          	div	a4,a4,a3
1c00be94:	68038393          	addi	t2,t2,1664
1c00be98:	02dfcfb3          	div	t6,t6,a3
1c00be9c:	68028293          	addi	t0,t0,1664
1c00bea0:	0f12                	slli	t5,t5,0x4
1c00bea2:	010ede93          	srli	t4,t4,0x10
1c00bea6:	07c2                	slli	a5,a5,0x10
1c00bea8:	9e22                	add	t3,t3,s0
1c00beaa:	02d3c3b3          	div	t2,t2,a3
1c00beae:	02d2c2b3          	div	t0,t0,a3
1c00beb2:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00beb6:	0e92                	slli	t4,t4,0x4
1c00beb8:	83c1                	srli	a5,a5,0x10
1c00beba:	0e42                	slli	t3,t3,0x10
1c00bebc:	02df4f33          	div	t5,t5,a3
1c00bec0:	680e8e93          	addi	t4,t4,1664
1c00bec4:	0792                	slli	a5,a5,0x4
1c00bec6:	010e5e13          	srli	t3,t3,0x10
1c00beca:	8b3d                	andi	a4,a4,15
1c00becc:	00ffff93          	andi	t6,t6,15
1c00bed0:	02deceb3          	div	t4,t4,a3
1c00bed4:	68078793          	addi	a5,a5,1664
1c00bed8:	0e12                	slli	t3,t3,0x4
1c00beda:	0712                	slli	a4,a4,0x4
1c00bedc:	00f3f393          	andi	t2,t2,15
1c00bee0:	0f92                	slli	t6,t6,0x4
1c00bee2:	00f2f293          	andi	t0,t0,15
1c00bee6:	02d7c7b3          	div	a5,a5,a3
1c00beea:	680e0e13          	addi	t3,t3,1664
1c00beee:	00776733          	or	a4,a4,t2
1c00bef2:	005fe2b3          	or	t0,t6,t0
1c00bef6:	00ff7f13          	andi	t5,t5,15
1c00befa:	02de4e33          	div	t3,t3,a3
1c00befe:	02a2                	slli	t0,t0,0x8
1c00bf00:	01177733          	and	a4,a4,a7
1c00bf04:	0f12                	slli	t5,t5,0x4
1c00bf06:	00fefe93          	andi	t4,t4,15
1c00bf0a:	00576733          	or	a4,a4,t0
1c00bf0e:	01df6eb3          	or	t4,t5,t4
1c00bf12:	8bbd                	andi	a5,a5,15
1c00bf14:	0ec2                	slli	t4,t4,0x10
1c00bf16:	01077733          	and	a4,a4,a6
1c00bf1a:	0792                	slli	a5,a5,0x4
1c00bf1c:	00fe7e13          	andi	t3,t3,15
1c00bf20:	01d76733          	or	a4,a4,t4
1c00bf24:	01c7e7b3          	or	a5,a5,t3
1c00bf28:	07e2                	slli	a5,a5,0x18
1c00bf2a:	8f71                	and	a4,a4,a2
1c00bf2c:	8fd9                	or	a5,a5,a4
1c00bf2e:	c11c                	sw	a5,0(a0)
1c00bf30:	0511                	addi	a0,a0,4
1c00bf32:	05c1                	addi	a1,a1,16
1c00bf34:	ec6512e3          	bne	a0,t1,1c00bdf8 <PQCLEAN_KYBER512_CLEAN_poly_compress+0x24>
1c00bf38:	4432                	lw	s0,12(sp)
1c00bf3a:	44a2                	lw	s1,8(sp)
1c00bf3c:	4912                	lw	s2,4(sp)
1c00bf3e:	0141                	addi	sp,sp,16
1c00bf40:	8082                	ret

1c00bf42 <PQCLEAN_KYBER512_CLEAN_poly_decompress>:
1c00bf42:	6705                	lui	a4,0x1
1c00bf44:	08058693          	addi	a3,a1,128
1c00bf48:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00bf4c:	0005c783          	lbu	a5,0(a1)
1c00bf50:	0585                	addi	a1,a1,1
1c00bf52:	8bbd                	andi	a5,a5,15
1c00bf54:	02e787b3          	mul	a5,a5,a4
1c00bf58:	07a1                	addi	a5,a5,8
1c00bf5a:	8791                	srai	a5,a5,0x4
1c00bf5c:	00f51023          	sh	a5,0(a0)
1c00bf60:	fff5c783          	lbu	a5,-1(a1)
1c00bf64:	0511                	addi	a0,a0,4
1c00bf66:	8391                	srli	a5,a5,0x4
1c00bf68:	02e787b3          	mul	a5,a5,a4
1c00bf6c:	07a1                	addi	a5,a5,8
1c00bf6e:	8791                	srai	a5,a5,0x4
1c00bf70:	fef51f23          	sh	a5,-2(a0)
1c00bf74:	fcd59ce3          	bne	a1,a3,1c00bf4c <PQCLEAN_KYBER512_CLEAN_poly_decompress+0xa>
1c00bf78:	8082                	ret

1c00bf7a <PQCLEAN_KYBER512_CLEAN_poly_frombytes>:
1c00bf7a:	6685                	lui	a3,0x1
1c00bf7c:	18058613          	addi	a2,a1,384
1c00bf80:	16fd                	addi	a3,a3,-1
1c00bf82:	0015c783          	lbu	a5,1(a1)
1c00bf86:	0005c703          	lbu	a4,0(a1)
1c00bf8a:	07a2                	slli	a5,a5,0x8
1c00bf8c:	8fd9                	or	a5,a5,a4
1c00bf8e:	8ff5                	and	a5,a5,a3
1c00bf90:	00f51023          	sh	a5,0(a0)
1c00bf94:	0015c703          	lbu	a4,1(a1)
1c00bf98:	0025c783          	lbu	a5,2(a1)
1c00bf9c:	8311                	srli	a4,a4,0x4
1c00bf9e:	0792                	slli	a5,a5,0x4
1c00bfa0:	8fd9                	or	a5,a5,a4
1c00bfa2:	00f51123          	sh	a5,2(a0)
1c00bfa6:	058d                	addi	a1,a1,3
1c00bfa8:	0511                	addi	a0,a0,4
1c00bfaa:	fcb61ce3          	bne	a2,a1,1c00bf82 <PQCLEAN_KYBER512_CLEAN_poly_frombytes+0x8>
1c00bfae:	8082                	ret

1c00bfb0 <PQCLEAN_KYBER512_CLEAN_poly_frommsg>:
1c00bfb0:	20050713          	addi	a4,a0,512
1c00bfb4:	0005c783          	lbu	a5,0(a1)
1c00bfb8:	0541                	addi	a0,a0,16
1c00bfba:	8b85                	andi	a5,a5,1
1c00bfbc:	40f007b3          	neg	a5,a5
1c00bfc0:	6817f793          	andi	a5,a5,1665
1c00bfc4:	fef51823          	sh	a5,-16(a0)
1c00bfc8:	0005c783          	lbu	a5,0(a1)
1c00bfcc:	0585                	addi	a1,a1,1
1c00bfce:	07fa                	slli	a5,a5,0x1e
1c00bfd0:	87fd                	srai	a5,a5,0x1f
1c00bfd2:	6817f793          	andi	a5,a5,1665
1c00bfd6:	fef51923          	sh	a5,-14(a0)
1c00bfda:	fff5c783          	lbu	a5,-1(a1)
1c00bfde:	07f6                	slli	a5,a5,0x1d
1c00bfe0:	87fd                	srai	a5,a5,0x1f
1c00bfe2:	6817f793          	andi	a5,a5,1665
1c00bfe6:	fef51a23          	sh	a5,-12(a0)
1c00bfea:	fff5c783          	lbu	a5,-1(a1)
1c00bfee:	07f2                	slli	a5,a5,0x1c
1c00bff0:	87fd                	srai	a5,a5,0x1f
1c00bff2:	6817f793          	andi	a5,a5,1665
1c00bff6:	fef51b23          	sh	a5,-10(a0)
1c00bffa:	fff5c783          	lbu	a5,-1(a1)
1c00bffe:	07ee                	slli	a5,a5,0x1b
1c00c000:	87fd                	srai	a5,a5,0x1f
1c00c002:	6817f793          	andi	a5,a5,1665
1c00c006:	fef51c23          	sh	a5,-8(a0)
1c00c00a:	fff5c783          	lbu	a5,-1(a1)
1c00c00e:	07ea                	slli	a5,a5,0x1a
1c00c010:	87fd                	srai	a5,a5,0x1f
1c00c012:	6817f793          	andi	a5,a5,1665
1c00c016:	fef51d23          	sh	a5,-6(a0)
1c00c01a:	fff5c783          	lbu	a5,-1(a1)
1c00c01e:	07e6                	slli	a5,a5,0x19
1c00c020:	87fd                	srai	a5,a5,0x1f
1c00c022:	6817f793          	andi	a5,a5,1665
1c00c026:	fef51e23          	sh	a5,-4(a0)
1c00c02a:	fff5c783          	lbu	a5,-1(a1)
1c00c02e:	879d                	srai	a5,a5,0x7
1c00c030:	40f007b3          	neg	a5,a5
1c00c034:	6817f793          	andi	a5,a5,1665
1c00c038:	fef51f23          	sh	a5,-2(a0)
1c00c03c:	f6e51ce3          	bne	a0,a4,1c00bfb4 <PQCLEAN_KYBER512_CLEAN_poly_frommsg+0x4>
1c00c040:	8082                	ret

1c00c042 <PQCLEAN_KYBER512_CLEAN_poly_tomsg>:
1c00c042:	6685                	lui	a3,0x1
1c00c044:	20058613          	addi	a2,a1,512
1c00c048:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c04c:	00050023          	sb	zero,0(a0)
1c00c050:	00059783          	lh	a5,0(a1)
1c00c054:	05c1                	addi	a1,a1,16
1c00c056:	40f7d713          	srai	a4,a5,0xf
1c00c05a:	8f75                	and	a4,a4,a3
1c00c05c:	97ba                	add	a5,a5,a4
1c00c05e:	07c2                	slli	a5,a5,0x10
1c00c060:	83c1                	srli	a5,a5,0x10
1c00c062:	0786                	slli	a5,a5,0x1
1c00c064:	68078793          	addi	a5,a5,1664
1c00c068:	02d7c7b3          	div	a5,a5,a3
1c00c06c:	0017f813          	andi	a6,a5,1
1c00c070:	01050023          	sb	a6,0(a0)
1c00c074:	ff259703          	lh	a4,-14(a1)
1c00c078:	0505                	addi	a0,a0,1
1c00c07a:	40f75793          	srai	a5,a4,0xf
1c00c07e:	8ff5                	and	a5,a5,a3
1c00c080:	97ba                	add	a5,a5,a4
1c00c082:	07c2                	slli	a5,a5,0x10
1c00c084:	83c1                	srli	a5,a5,0x10
1c00c086:	0786                	slli	a5,a5,0x1
1c00c088:	68078793          	addi	a5,a5,1664
1c00c08c:	02d7c7b3          	div	a5,a5,a3
1c00c090:	8b85                	andi	a5,a5,1
1c00c092:	0786                	slli	a5,a5,0x1
1c00c094:	0107e7b3          	or	a5,a5,a6
1c00c098:	fef50fa3          	sb	a5,-1(a0)
1c00c09c:	ff459703          	lh	a4,-12(a1)
1c00c0a0:	40f75813          	srai	a6,a4,0xf
1c00c0a4:	00d87833          	and	a6,a6,a3
1c00c0a8:	9742                	add	a4,a4,a6
1c00c0aa:	0742                	slli	a4,a4,0x10
1c00c0ac:	8341                	srli	a4,a4,0x10
1c00c0ae:	0706                	slli	a4,a4,0x1
1c00c0b0:	68070713          	addi	a4,a4,1664
1c00c0b4:	02d74733          	div	a4,a4,a3
1c00c0b8:	8b05                	andi	a4,a4,1
1c00c0ba:	070a                	slli	a4,a4,0x2
1c00c0bc:	8fd9                	or	a5,a5,a4
1c00c0be:	fef50fa3          	sb	a5,-1(a0)
1c00c0c2:	ff659703          	lh	a4,-10(a1)
1c00c0c6:	40f75813          	srai	a6,a4,0xf
1c00c0ca:	00d87833          	and	a6,a6,a3
1c00c0ce:	9742                	add	a4,a4,a6
1c00c0d0:	0742                	slli	a4,a4,0x10
1c00c0d2:	8341                	srli	a4,a4,0x10
1c00c0d4:	0706                	slli	a4,a4,0x1
1c00c0d6:	68070713          	addi	a4,a4,1664
1c00c0da:	02d74733          	div	a4,a4,a3
1c00c0de:	8b05                	andi	a4,a4,1
1c00c0e0:	070e                	slli	a4,a4,0x3
1c00c0e2:	8fd9                	or	a5,a5,a4
1c00c0e4:	fef50fa3          	sb	a5,-1(a0)
1c00c0e8:	ff859703          	lh	a4,-8(a1)
1c00c0ec:	40f75813          	srai	a6,a4,0xf
1c00c0f0:	00d87833          	and	a6,a6,a3
1c00c0f4:	9742                	add	a4,a4,a6
1c00c0f6:	0742                	slli	a4,a4,0x10
1c00c0f8:	8341                	srli	a4,a4,0x10
1c00c0fa:	0706                	slli	a4,a4,0x1
1c00c0fc:	68070713          	addi	a4,a4,1664
1c00c100:	02d74733          	div	a4,a4,a3
1c00c104:	8b05                	andi	a4,a4,1
1c00c106:	0712                	slli	a4,a4,0x4
1c00c108:	8fd9                	or	a5,a5,a4
1c00c10a:	fef50fa3          	sb	a5,-1(a0)
1c00c10e:	ffa59703          	lh	a4,-6(a1)
1c00c112:	40f75813          	srai	a6,a4,0xf
1c00c116:	00d87833          	and	a6,a6,a3
1c00c11a:	9742                	add	a4,a4,a6
1c00c11c:	0742                	slli	a4,a4,0x10
1c00c11e:	8341                	srli	a4,a4,0x10
1c00c120:	0706                	slli	a4,a4,0x1
1c00c122:	68070713          	addi	a4,a4,1664
1c00c126:	02d74733          	div	a4,a4,a3
1c00c12a:	8b05                	andi	a4,a4,1
1c00c12c:	0716                	slli	a4,a4,0x5
1c00c12e:	8fd9                	or	a5,a5,a4
1c00c130:	fef50fa3          	sb	a5,-1(a0)
1c00c134:	ffc59703          	lh	a4,-4(a1)
1c00c138:	40f75813          	srai	a6,a4,0xf
1c00c13c:	00d87833          	and	a6,a6,a3
1c00c140:	9742                	add	a4,a4,a6
1c00c142:	0742                	slli	a4,a4,0x10
1c00c144:	8341                	srli	a4,a4,0x10
1c00c146:	0706                	slli	a4,a4,0x1
1c00c148:	68070713          	addi	a4,a4,1664
1c00c14c:	02d74733          	div	a4,a4,a3
1c00c150:	8b05                	andi	a4,a4,1
1c00c152:	071a                	slli	a4,a4,0x6
1c00c154:	8fd9                	or	a5,a5,a4
1c00c156:	fef50fa3          	sb	a5,-1(a0)
1c00c15a:	ffe59703          	lh	a4,-2(a1)
1c00c15e:	40f75813          	srai	a6,a4,0xf
1c00c162:	00d87833          	and	a6,a6,a3
1c00c166:	9742                	add	a4,a4,a6
1c00c168:	0742                	slli	a4,a4,0x10
1c00c16a:	8341                	srli	a4,a4,0x10
1c00c16c:	0706                	slli	a4,a4,0x1
1c00c16e:	68070713          	addi	a4,a4,1664
1c00c172:	02d74733          	div	a4,a4,a3
1c00c176:	8b05                	andi	a4,a4,1
1c00c178:	071e                	slli	a4,a4,0x7
1c00c17a:	8fd9                	or	a5,a5,a4
1c00c17c:	fef50fa3          	sb	a5,-1(a0)
1c00c180:	ecc596e3          	bne	a1,a2,1c00c04c <PQCLEAN_KYBER512_CLEAN_poly_tomsg+0xa>
1c00c184:	8082                	ret

1c00c186 <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1>:
1c00c186:	7155                	addi	sp,sp,-208
1c00c188:	c5a2                	sw	s0,200(sp)
1c00c18a:	86b2                	mv	a3,a2
1c00c18c:	842a                	mv	s0,a0
1c00c18e:	862e                	mv	a2,a1
1c00c190:	850a                	mv	a0,sp
1c00c192:	0c000593          	li	a1,192
1c00c196:	c786                	sw	ra,204(sp)
1c00c198:	2911                	jal	1c00c5ac <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00c19a:	858a                	mv	a1,sp
1c00c19c:	8522                	mv	a0,s0
1c00c19e:	984fe0ef          	jal	ra,1c00a322 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta1>
1c00c1a2:	40be                	lw	ra,204(sp)
1c00c1a4:	442e                	lw	s0,200(sp)
1c00c1a6:	6169                	addi	sp,sp,208
1c00c1a8:	8082                	ret

1c00c1aa <PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2>:
1c00c1aa:	7175                	addi	sp,sp,-144
1c00c1ac:	c522                	sw	s0,136(sp)
1c00c1ae:	86b2                	mv	a3,a2
1c00c1b0:	842a                	mv	s0,a0
1c00c1b2:	862e                	mv	a2,a1
1c00c1b4:	850a                	mv	a0,sp
1c00c1b6:	08000593          	li	a1,128
1c00c1ba:	c706                	sw	ra,140(sp)
1c00c1bc:	2ec5                	jal	1c00c5ac <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>
1c00c1be:	858a                	mv	a1,sp
1c00c1c0:	8522                	mv	a0,s0
1c00c1c2:	9f2fe0ef          	jal	ra,1c00a3b4 <PQCLEAN_KYBER512_CLEAN_poly_cbd_eta2>
1c00c1c6:	40ba                	lw	ra,140(sp)
1c00c1c8:	442a                	lw	s0,136(sp)
1c00c1ca:	6149                	addi	sp,sp,144
1c00c1cc:	8082                	ret

1c00c1ce <PQCLEAN_KYBER512_CLEAN_poly_ntt>:
1c00c1ce:	1141                	addi	sp,sp,-16
1c00c1d0:	c422                	sw	s0,8(sp)
1c00c1d2:	842a                	mv	s0,a0
1c00c1d4:	c226                	sw	s1,4(sp)
1c00c1d6:	c606                	sw	ra,12(sp)
1c00c1d8:	20040493          	addi	s1,s0,512
1c00c1dc:	3241                	jal	1c00bb5c <PQCLEAN_KYBER512_CLEAN_ntt>
1c00c1de:	00041503          	lh	a0,0(s0)
1c00c1e2:	0409                	addi	s0,s0,2
1c00c1e4:	26b5                	jal	1c00c550 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c00c1e6:	fea41f23          	sh	a0,-2(s0)
1c00c1ea:	fe941ae3          	bne	s0,s1,1c00c1de <PQCLEAN_KYBER512_CLEAN_poly_ntt+0x10>
1c00c1ee:	40b2                	lw	ra,12(sp)
1c00c1f0:	4422                	lw	s0,8(sp)
1c00c1f2:	4492                	lw	s1,4(sp)
1c00c1f4:	0141                	addi	sp,sp,16
1c00c1f6:	8082                	ret

1c00c1f8 <PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont>:
1c00c1f8:	b489                	j	1c00bc3a <PQCLEAN_KYBER512_CLEAN_invntt>

1c00c1fa <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>:
1c00c1fa:	1101                	addi	sp,sp,-32
1c00c1fc:	ca26                	sw	s1,20(sp)
1c00c1fe:	c256                	sw	s5,4(sp)
1c00c200:	1c0004b7          	lui	s1,0x1c000
1c00c204:	1c000ab7          	lui	s5,0x1c000
1c00c208:	c84a                	sw	s2,16(sp)
1c00c20a:	c64e                	sw	s3,12(sp)
1c00c20c:	c452                	sw	s4,8(sp)
1c00c20e:	ce06                	sw	ra,28(sp)
1c00c210:	cc22                	sw	s0,24(sp)
1c00c212:	1c848493          	addi	s1,s1,456 # 1c0001c8 <PQCLEAN_KYBER512_CLEAN_zetas+0x80>
1c00c216:	00450a13          	addi	s4,a0,4
1c00c21a:	00458993          	addi	s3,a1,4
1c00c21e:	00460913          	addi	s2,a2,4 # 1000004 <__CTOR_LIST__-0x1b000000>
1c00c222:	248a8a93          	addi	s5,s5,584 # 1c000248 <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c00c226:	00049403          	lh	s0,0(s1)
1c00c22a:	ffc90613          	addi	a2,s2,-4
1c00c22e:	ffc98593          	addi	a1,s3,-4
1c00c232:	ffca0513          	addi	a0,s4,-4
1c00c236:	86a2                	mv	a3,s0
1c00c238:	3e09                	jal	1c00bd4a <PQCLEAN_KYBER512_CLEAN_basemul>
1c00c23a:	408006b3          	neg	a3,s0
1c00c23e:	06c2                	slli	a3,a3,0x10
1c00c240:	864a                	mv	a2,s2
1c00c242:	85ce                	mv	a1,s3
1c00c244:	8552                	mv	a0,s4
1c00c246:	86c1                	srai	a3,a3,0x10
1c00c248:	0489                	addi	s1,s1,2
1c00c24a:	3601                	jal	1c00bd4a <PQCLEAN_KYBER512_CLEAN_basemul>
1c00c24c:	0a21                	addi	s4,s4,8
1c00c24e:	09a1                	addi	s3,s3,8
1c00c250:	0921                	addi	s2,s2,8
1c00c252:	fc9a9ae3          	bne	s5,s1,1c00c226 <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery+0x2c>
1c00c256:	40f2                	lw	ra,28(sp)
1c00c258:	4462                	lw	s0,24(sp)
1c00c25a:	44d2                	lw	s1,20(sp)
1c00c25c:	4942                	lw	s2,16(sp)
1c00c25e:	49b2                	lw	s3,12(sp)
1c00c260:	4a22                	lw	s4,8(sp)
1c00c262:	4a92                	lw	s5,4(sp)
1c00c264:	6105                	addi	sp,sp,32
1c00c266:	8082                	ret

1c00c268 <PQCLEAN_KYBER512_CLEAN_poly_reduce>:
1c00c268:	1141                	addi	sp,sp,-16
1c00c26a:	c422                	sw	s0,8(sp)
1c00c26c:	c226                	sw	s1,4(sp)
1c00c26e:	c606                	sw	ra,12(sp)
1c00c270:	842a                	mv	s0,a0
1c00c272:	20050493          	addi	s1,a0,512
1c00c276:	00041503          	lh	a0,0(s0)
1c00c27a:	0409                	addi	s0,s0,2
1c00c27c:	2cd1                	jal	1c00c550 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>
1c00c27e:	fea41f23          	sh	a0,-2(s0)
1c00c282:	fe941ae3          	bne	s0,s1,1c00c276 <PQCLEAN_KYBER512_CLEAN_poly_reduce+0xe>
1c00c286:	40b2                	lw	ra,12(sp)
1c00c288:	4422                	lw	s0,8(sp)
1c00c28a:	4492                	lw	s1,4(sp)
1c00c28c:	0141                	addi	sp,sp,16
1c00c28e:	8082                	ret

1c00c290 <PQCLEAN_KYBER512_CLEAN_poly_add>:
1c00c290:	20058693          	addi	a3,a1,512
1c00c294:	0005d783          	lhu	a5,0(a1)
1c00c298:	00065703          	lhu	a4,0(a2)
1c00c29c:	0589                	addi	a1,a1,2
1c00c29e:	97ba                	add	a5,a5,a4
1c00c2a0:	00f51023          	sh	a5,0(a0)
1c00c2a4:	0609                	addi	a2,a2,2
1c00c2a6:	0509                	addi	a0,a0,2
1c00c2a8:	fed596e3          	bne	a1,a3,1c00c294 <PQCLEAN_KYBER512_CLEAN_poly_add+0x4>
1c00c2ac:	8082                	ret

1c00c2ae <PQCLEAN_KYBER512_CLEAN_poly_sub>:
1c00c2ae:	20058693          	addi	a3,a1,512
1c00c2b2:	0005d783          	lhu	a5,0(a1)
1c00c2b6:	00065703          	lhu	a4,0(a2)
1c00c2ba:	0589                	addi	a1,a1,2
1c00c2bc:	8f99                	sub	a5,a5,a4
1c00c2be:	00f51023          	sh	a5,0(a0)
1c00c2c2:	0609                	addi	a2,a2,2
1c00c2c4:	0509                	addi	a0,a0,2
1c00c2c6:	fed596e3          	bne	a1,a3,1c00c2b2 <PQCLEAN_KYBER512_CLEAN_poly_sub+0x4>
1c00c2ca:	8082                	ret

1c00c2cc <PQCLEAN_KYBER512_CLEAN_polyvec_compress>:
1c00c2cc:	6605                	lui	a2,0x1
1c00c2ce:	28050313          	addi	t1,a0,640
1c00c2d2:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c2d6:	14050893          	addi	a7,a0,320
1c00c2da:	882e                	mv	a6,a1
1c00c2dc:	00081283          	lh	t0,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00c2e0:	00281f83          	lh	t6,2(a6)
1c00c2e4:	00481f03          	lh	t5,4(a6)
1c00c2e8:	00681e83          	lh	t4,6(a6)
1c00c2ec:	40f2de13          	srai	t3,t0,0xf
1c00c2f0:	40ffd713          	srai	a4,t6,0xf
1c00c2f4:	40ff5793          	srai	a5,t5,0xf
1c00c2f8:	40fed693          	srai	a3,t4,0xf
1c00c2fc:	00ce7e33          	and	t3,t3,a2
1c00c300:	8f71                	and	a4,a4,a2
1c00c302:	8ff1                	and	a5,a5,a2
1c00c304:	8ef1                	and	a3,a3,a2
1c00c306:	9e16                	add	t3,t3,t0
1c00c308:	977e                	add	a4,a4,t6
1c00c30a:	97fa                	add	a5,a5,t5
1c00c30c:	96f6                	add	a3,a3,t4
1c00c30e:	0e42                	slli	t3,t3,0x10
1c00c310:	0742                	slli	a4,a4,0x10
1c00c312:	07c2                	slli	a5,a5,0x10
1c00c314:	06c2                	slli	a3,a3,0x10
1c00c316:	010e5e13          	srli	t3,t3,0x10
1c00c31a:	8341                	srli	a4,a4,0x10
1c00c31c:	83c1                	srli	a5,a5,0x10
1c00c31e:	82c1                	srli	a3,a3,0x10
1c00c320:	0e2a                	slli	t3,t3,0xa
1c00c322:	072a                	slli	a4,a4,0xa
1c00c324:	07aa                	slli	a5,a5,0xa
1c00c326:	06aa                	slli	a3,a3,0xa
1c00c328:	680e0e13          	addi	t3,t3,1664
1c00c32c:	68070713          	addi	a4,a4,1664
1c00c330:	68078793          	addi	a5,a5,1664
1c00c334:	68068693          	addi	a3,a3,1664
1c00c338:	02ce5e33          	divu	t3,t3,a2
1c00c33c:	02c75733          	divu	a4,a4,a2
1c00c340:	02c7d7b3          	divu	a5,a5,a2
1c00c344:	02c6d6b3          	divu	a3,a3,a2
1c00c348:	3ffe7e13          	andi	t3,t3,1023
1c00c34c:	3ff77713          	andi	a4,a4,1023
1c00c350:	3ff7f793          	andi	a5,a5,1023
1c00c354:	3ff6f693          	andi	a3,a3,1023
1c00c358:	00271293          	slli	t0,a4,0x2
1c00c35c:	00479f93          	slli	t6,a5,0x4
1c00c360:	00669f13          	slli	t5,a3,0x6
1c00c364:	008e5e93          	srli	t4,t3,0x8
1c00c368:	8319                	srli	a4,a4,0x6
1c00c36a:	8391                	srli	a5,a5,0x4
1c00c36c:	005eeeb3          	or	t4,t4,t0
1c00c370:	01f76733          	or	a4,a4,t6
1c00c374:	01e7e7b3          	or	a5,a5,t5
1c00c378:	8289                	srli	a3,a3,0x2
1c00c37a:	01c50023          	sb	t3,0(a0)
1c00c37e:	01d500a3          	sb	t4,1(a0)
1c00c382:	00e50123          	sb	a4,2(a0)
1c00c386:	00f501a3          	sb	a5,3(a0)
1c00c38a:	00d50223          	sb	a3,4(a0)
1c00c38e:	0515                	addi	a0,a0,5
1c00c390:	0821                	addi	a6,a6,8
1c00c392:	f51515e3          	bne	a0,a7,1c00c2dc <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0x10>
1c00c396:	20058593          	addi	a1,a1,512
1c00c39a:	f2a31ee3          	bne	t1,a0,1c00c2d6 <PQCLEAN_KYBER512_CLEAN_polyvec_compress+0xa>
1c00c39e:	8082                	ret

1c00c3a0 <PQCLEAN_KYBER512_CLEAN_polyvec_decompress>:
1c00c3a0:	6605                	lui	a2,0x1
1c00c3a2:	68c1                	lui	a7,0x10
1c00c3a4:	28058e13          	addi	t3,a1,640
1c00c3a8:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c3ac:	18fd                	addi	a7,a7,-1
1c00c3ae:	14058313          	addi	t1,a1,320
1c00c3b2:	882a                	mv	a6,a0
1c00c3b4:	0015cf83          	lbu	t6,1(a1)
1c00c3b8:	0025c683          	lbu	a3,2(a1)
1c00c3bc:	0035cf03          	lbu	t5,3(a1)
1c00c3c0:	0005c383          	lbu	t2,0(a1)
1c00c3c4:	008f9713          	slli	a4,t6,0x8
1c00c3c8:	0046d293          	srli	t0,a3,0x4
1c00c3cc:	004f1793          	slli	a5,t5,0x4
1c00c3d0:	0045ce83          	lbu	t4,4(a1)
1c00c3d4:	00776733          	or	a4,a4,t2
1c00c3d8:	0057e7b3          	or	a5,a5,t0
1c00c3dc:	002fdf93          	srli	t6,t6,0x2
1c00c3e0:	069a                	slli	a3,a3,0x6
1c00c3e2:	3ff77713          	andi	a4,a4,1023
1c00c3e6:	3ff7f793          	andi	a5,a5,1023
1c00c3ea:	0e8a                	slli	t4,t4,0x2
1c00c3ec:	006f5f13          	srli	t5,t5,0x6
1c00c3f0:	01f6e6b3          	or	a3,a3,t6
1c00c3f4:	02c70733          	mul	a4,a4,a2
1c00c3f8:	02c787b3          	mul	a5,a5,a2
1c00c3fc:	01eeeeb3          	or	t4,t4,t5
1c00c400:	3ff6f693          	andi	a3,a3,1023
1c00c404:	20070713          	addi	a4,a4,512
1c00c408:	20078793          	addi	a5,a5,512
1c00c40c:	02c686b3          	mul	a3,a3,a2
1c00c410:	02ce8eb3          	mul	t4,t4,a2
1c00c414:	8329                	srli	a4,a4,0xa
1c00c416:	83a9                	srli	a5,a5,0xa
1c00c418:	20068693          	addi	a3,a3,512
1c00c41c:	200e8e93          	addi	t4,t4,512
1c00c420:	0742                	slli	a4,a4,0x10
1c00c422:	07c2                	slli	a5,a5,0x10
1c00c424:	8341                	srli	a4,a4,0x10
1c00c426:	82a9                	srli	a3,a3,0xa
1c00c428:	83c1                	srli	a5,a5,0x10
1c00c42a:	00aede93          	srli	t4,t4,0xa
1c00c42e:	06c2                	slli	a3,a3,0x10
1c00c430:	01177733          	and	a4,a4,a7
1c00c434:	0ec2                	slli	t4,t4,0x10
1c00c436:	0117f7b3          	and	a5,a5,a7
1c00c43a:	8f55                	or	a4,a4,a3
1c00c43c:	01d7e7b3          	or	a5,a5,t4
1c00c440:	00e82023          	sw	a4,0(a6)
1c00c444:	00f82223          	sw	a5,4(a6)
1c00c448:	0595                	addi	a1,a1,5
1c00c44a:	0821                	addi	a6,a6,8
1c00c44c:	f66594e3          	bne	a1,t1,1c00c3b4 <PQCLEAN_KYBER512_CLEAN_polyvec_decompress+0x14>
1c00c450:	20050513          	addi	a0,a0,512
1c00c454:	f4be1de3          	bne	t3,a1,1c00c3ae <PQCLEAN_KYBER512_CLEAN_polyvec_decompress+0xe>
1c00c458:	8082                	ret

1c00c45a <PQCLEAN_KYBER512_CLEAN_polyvec_frombytes>:
1c00c45a:	1141                	addi	sp,sp,-16
1c00c45c:	c422                	sw	s0,8(sp)
1c00c45e:	c226                	sw	s1,4(sp)
1c00c460:	c606                	sw	ra,12(sp)
1c00c462:	842a                	mv	s0,a0
1c00c464:	84ae                	mv	s1,a1
1c00c466:	3e11                	jal	1c00bf7a <PQCLEAN_KYBER512_CLEAN_poly_frombytes>
1c00c468:	20040513          	addi	a0,s0,512
1c00c46c:	4422                	lw	s0,8(sp)
1c00c46e:	40b2                	lw	ra,12(sp)
1c00c470:	18048593          	addi	a1,s1,384
1c00c474:	4492                	lw	s1,4(sp)
1c00c476:	0141                	addi	sp,sp,16
1c00c478:	b609                	j	1c00bf7a <PQCLEAN_KYBER512_CLEAN_poly_frombytes>

1c00c47a <PQCLEAN_KYBER512_CLEAN_polyvec_ntt>:
1c00c47a:	1141                	addi	sp,sp,-16
1c00c47c:	c422                	sw	s0,8(sp)
1c00c47e:	c606                	sw	ra,12(sp)
1c00c480:	842a                	mv	s0,a0
1c00c482:	33b1                	jal	1c00c1ce <PQCLEAN_KYBER512_CLEAN_poly_ntt>
1c00c484:	20040513          	addi	a0,s0,512
1c00c488:	4422                	lw	s0,8(sp)
1c00c48a:	40b2                	lw	ra,12(sp)
1c00c48c:	0141                	addi	sp,sp,16
1c00c48e:	b381                	j	1c00c1ce <PQCLEAN_KYBER512_CLEAN_poly_ntt>

1c00c490 <PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont>:
1c00c490:	1141                	addi	sp,sp,-16
1c00c492:	c422                	sw	s0,8(sp)
1c00c494:	c606                	sw	ra,12(sp)
1c00c496:	842a                	mv	s0,a0
1c00c498:	3385                	jal	1c00c1f8 <PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont>
1c00c49a:	20040513          	addi	a0,s0,512
1c00c49e:	4422                	lw	s0,8(sp)
1c00c4a0:	40b2                	lw	ra,12(sp)
1c00c4a2:	0141                	addi	sp,sp,16
1c00c4a4:	bb91                	j	1c00c1f8 <PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont>

1c00c4a6 <PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery>:
1c00c4a6:	df010113          	addi	sp,sp,-528
1c00c4aa:	20112623          	sw	ra,524(sp)
1c00c4ae:	20812423          	sw	s0,520(sp)
1c00c4b2:	20912223          	sw	s1,516(sp)
1c00c4b6:	21212023          	sw	s2,512(sp)
1c00c4ba:	842a                	mv	s0,a0
1c00c4bc:	84ae                	mv	s1,a1
1c00c4be:	8932                	mv	s2,a2
1c00c4c0:	3b2d                	jal	1c00c1fa <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00c4c2:	20090613          	addi	a2,s2,512
1c00c4c6:	20048593          	addi	a1,s1,512
1c00c4ca:	850a                	mv	a0,sp
1c00c4cc:	333d                	jal	1c00c1fa <PQCLEAN_KYBER512_CLEAN_poly_basemul_montgomery>
1c00c4ce:	860a                	mv	a2,sp
1c00c4d0:	85a2                	mv	a1,s0
1c00c4d2:	8522                	mv	a0,s0
1c00c4d4:	3b75                	jal	1c00c290 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00c4d6:	8522                	mv	a0,s0
1c00c4d8:	3b41                	jal	1c00c268 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00c4da:	20c12083          	lw	ra,524(sp)
1c00c4de:	20812403          	lw	s0,520(sp)
1c00c4e2:	20412483          	lw	s1,516(sp)
1c00c4e6:	20012903          	lw	s2,512(sp)
1c00c4ea:	21010113          	addi	sp,sp,528
1c00c4ee:	8082                	ret

1c00c4f0 <PQCLEAN_KYBER512_CLEAN_polyvec_reduce>:
1c00c4f0:	1141                	addi	sp,sp,-16
1c00c4f2:	c422                	sw	s0,8(sp)
1c00c4f4:	c606                	sw	ra,12(sp)
1c00c4f6:	842a                	mv	s0,a0
1c00c4f8:	3b85                	jal	1c00c268 <PQCLEAN_KYBER512_CLEAN_poly_reduce>
1c00c4fa:	20040513          	addi	a0,s0,512
1c00c4fe:	4422                	lw	s0,8(sp)
1c00c500:	40b2                	lw	ra,12(sp)
1c00c502:	0141                	addi	sp,sp,16
1c00c504:	b395                	j	1c00c268 <PQCLEAN_KYBER512_CLEAN_poly_reduce>

1c00c506 <PQCLEAN_KYBER512_CLEAN_polyvec_add>:
1c00c506:	1141                	addi	sp,sp,-16
1c00c508:	c422                	sw	s0,8(sp)
1c00c50a:	c226                	sw	s1,4(sp)
1c00c50c:	c04a                	sw	s2,0(sp)
1c00c50e:	c606                	sw	ra,12(sp)
1c00c510:	842a                	mv	s0,a0
1c00c512:	84ae                	mv	s1,a1
1c00c514:	8932                	mv	s2,a2
1c00c516:	3bad                	jal	1c00c290 <PQCLEAN_KYBER512_CLEAN_poly_add>
1c00c518:	20040513          	addi	a0,s0,512
1c00c51c:	4422                	lw	s0,8(sp)
1c00c51e:	40b2                	lw	ra,12(sp)
1c00c520:	20090613          	addi	a2,s2,512
1c00c524:	20048593          	addi	a1,s1,512
1c00c528:	4902                	lw	s2,0(sp)
1c00c52a:	4492                	lw	s1,4(sp)
1c00c52c:	0141                	addi	sp,sp,16
1c00c52e:	b38d                	j	1c00c290 <PQCLEAN_KYBER512_CLEAN_poly_add>

1c00c530 <PQCLEAN_KYBER512_CLEAN_montgomery_reduce>:
1c00c530:	777d                	lui	a4,0xfffff
1c00c532:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00c536:	02f507b3          	mul	a5,a0,a5
1c00c53a:	07c2                	slli	a5,a5,0x10
1c00c53c:	2ff70713          	addi	a4,a4,767
1c00c540:	87c1                	srai	a5,a5,0x10
1c00c542:	02e787b3          	mul	a5,a5,a4
1c00c546:	953e                	add	a0,a0,a5
1c00c548:	8541                	srai	a0,a0,0x10
1c00c54a:	0542                	slli	a0,a0,0x10
1c00c54c:	8541                	srai	a0,a0,0x10
1c00c54e:	8082                	ret

1c00c550 <PQCLEAN_KYBER512_CLEAN_barrett_reduce>:
1c00c550:	6795                	lui	a5,0x5
1c00c552:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00c556:	02f507b3          	mul	a5,a0,a5
1c00c55a:	02000737          	lui	a4,0x2000
1c00c55e:	97ba                	add	a5,a5,a4
1c00c560:	6705                	lui	a4,0x1
1c00c562:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00c566:	87e9                	srai	a5,a5,0x1a
1c00c568:	02e787b3          	mul	a5,a5,a4
1c00c56c:	8d1d                	sub	a0,a0,a5
1c00c56e:	0542                	slli	a0,a0,0x10
1c00c570:	8541                	srai	a0,a0,0x10
1c00c572:	8082                	ret

1c00c574 <PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb>:
1c00c574:	7139                	addi	sp,sp,-64
1c00c576:	da26                	sw	s1,52(sp)
1c00c578:	d84a                	sw	s2,48(sp)
1c00c57a:	84b2                	mv	s1,a2
1c00c57c:	892a                	mv	s2,a0
1c00c57e:	02000613          	li	a2,32
1c00c582:	0068                	addi	a0,sp,12
1c00c584:	de06                	sw	ra,60(sp)
1c00c586:	dc22                	sw	s0,56(sp)
1c00c588:	8436                	mv	s0,a3
1c00c58a:	2e3d                	jal	1c00c8c8 <memcpy>
1c00c58c:	006c                	addi	a1,sp,12
1c00c58e:	854a                	mv	a0,s2
1c00c590:	02200613          	li	a2,34
1c00c594:	02910623          	sb	s1,44(sp)
1c00c598:	028106a3          	sb	s0,45(sp)
1c00c59c:	8c2fe0ef          	jal	ra,1c00a65e <shake128_absorb>
1c00c5a0:	50f2                	lw	ra,60(sp)
1c00c5a2:	5462                	lw	s0,56(sp)
1c00c5a4:	54d2                	lw	s1,52(sp)
1c00c5a6:	5942                	lw	s2,48(sp)
1c00c5a8:	6121                	addi	sp,sp,64
1c00c5aa:	8082                	ret

1c00c5ac <PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf>:
1c00c5ac:	7139                	addi	sp,sp,-64
1c00c5ae:	87b2                	mv	a5,a2
1c00c5b0:	da26                	sw	s1,52(sp)
1c00c5b2:	d84a                	sw	s2,48(sp)
1c00c5b4:	84aa                	mv	s1,a0
1c00c5b6:	892e                	mv	s2,a1
1c00c5b8:	02000613          	li	a2,32
1c00c5bc:	85be                	mv	a1,a5
1c00c5be:	0068                	addi	a0,sp,12
1c00c5c0:	de06                	sw	ra,60(sp)
1c00c5c2:	dc22                	sw	s0,56(sp)
1c00c5c4:	8436                	mv	s0,a3
1c00c5c6:	2609                	jal	1c00c8c8 <memcpy>
1c00c5c8:	0070                	addi	a2,sp,12
1c00c5ca:	85ca                	mv	a1,s2
1c00c5cc:	8526                	mv	a0,s1
1c00c5ce:	02100693          	li	a3,33
1c00c5d2:	02810623          	sb	s0,44(sp)
1c00c5d6:	b24fe0ef          	jal	ra,1c00a8fa <shake256>
1c00c5da:	50f2                	lw	ra,60(sp)
1c00c5dc:	5462                	lw	s0,56(sp)
1c00c5de:	54d2                	lw	s1,52(sp)
1c00c5e0:	5942                	lw	s2,48(sp)
1c00c5e2:	6121                	addi	sp,sp,64
1c00c5e4:	8082                	ret

1c00c5e6 <PQCLEAN_KYBER512_CLEAN_verify>:
1c00c5e6:	c645                	beqz	a2,1c00c68e <PQCLEAN_KYBER512_CLEAN_verify+0xa8>
1c00c5e8:	fff60793          	addi	a5,a2,-1
1c00c5ec:	4709                	li	a4,2
1c00c5ee:	0af77263          	bleu	a5,a4,1c00c692 <PQCLEAN_KYBER512_CLEAN_verify+0xac>
1c00c5f2:	00265e13          	srli	t3,a2,0x2
1c00c5f6:	882e                	mv	a6,a1
1c00c5f8:	86aa                	mv	a3,a0
1c00c5fa:	4701                	li	a4,0
1c00c5fc:	4881                	li	a7,0
1c00c5fe:	429c                	lw	a5,0(a3)
1c00c600:	00082303          	lw	t1,0(a6)
1c00c604:	0705                	addi	a4,a4,1
1c00c606:	0067c7b3          	xor	a5,a5,t1
1c00c60a:	0117e8b3          	or	a7,a5,a7
1c00c60e:	0811                	addi	a6,a6,4
1c00c610:	0691                	addi	a3,a3,4
1c00c612:	ffc766e3          	bltu	a4,t3,1c00c5fe <PQCLEAN_KYBER512_CLEAN_verify+0x18>
1c00c616:	0088d793          	srli	a5,a7,0x8
1c00c61a:	0117e7b3          	or	a5,a5,a7
1c00c61e:	0108d713          	srli	a4,a7,0x10
1c00c622:	8fd9                	or	a5,a5,a4
1c00c624:	0188d893          	srli	a7,a7,0x18
1c00c628:	0117e8b3          	or	a7,a5,a7
1c00c62c:	ffc67793          	andi	a5,a2,-4
1c00c630:	0ff8f893          	andi	a7,a7,255
1c00c634:	04f60a63          	beq	a2,a5,1c00c688 <PQCLEAN_KYBER512_CLEAN_verify+0xa2>
1c00c638:	00f58733          	add	a4,a1,a5
1c00c63c:	00f506b3          	add	a3,a0,a5
1c00c640:	00074803          	lbu	a6,0(a4)
1c00c644:	0006c683          	lbu	a3,0(a3)
1c00c648:	00178713          	addi	a4,a5,1
1c00c64c:	0106c6b3          	xor	a3,a3,a6
1c00c650:	00d8e8b3          	or	a7,a7,a3
1c00c654:	02c77a63          	bleu	a2,a4,1c00c688 <PQCLEAN_KYBER512_CLEAN_verify+0xa2>
1c00c658:	00e506b3          	add	a3,a0,a4
1c00c65c:	972e                	add	a4,a4,a1
1c00c65e:	0006c683          	lbu	a3,0(a3)
1c00c662:	00074703          	lbu	a4,0(a4)
1c00c666:	0789                	addi	a5,a5,2
1c00c668:	8f35                	xor	a4,a4,a3
1c00c66a:	00e8e8b3          	or	a7,a7,a4
1c00c66e:	0ff8f893          	andi	a7,a7,255
1c00c672:	00c7fb63          	bleu	a2,a5,1c00c688 <PQCLEAN_KYBER512_CLEAN_verify+0xa2>
1c00c676:	95be                	add	a1,a1,a5
1c00c678:	97aa                	add	a5,a5,a0
1c00c67a:	0005c703          	lbu	a4,0(a1)
1c00c67e:	0007c783          	lbu	a5,0(a5)
1c00c682:	8fb9                	xor	a5,a5,a4
1c00c684:	00f8e8b3          	or	a7,a7,a5
1c00c688:	01103533          	snez	a0,a7
1c00c68c:	8082                	ret
1c00c68e:	4501                	li	a0,0
1c00c690:	8082                	ret
1c00c692:	4881                	li	a7,0
1c00c694:	4781                	li	a5,0
1c00c696:	b74d                	j	1c00c638 <PQCLEAN_KYBER512_CLEAN_verify+0x52>

1c00c698 <PQCLEAN_KYBER512_CLEAN_cmov>:
1c00c698:	40d00833          	neg	a6,a3
1c00c69c:	0ff87813          	andi	a6,a6,255
1c00c6a0:	1c060463          	beqz	a2,1c00c868 <PQCLEAN_KYBER512_CLEAN_cmov+0x1d0>
1c00c6a4:	00458793          	addi	a5,a1,4
1c00c6a8:	00450693          	addi	a3,a0,4
1c00c6ac:	00f537b3          	sltu	a5,a0,a5
1c00c6b0:	00d5b6b3          	sltu	a3,a1,a3
1c00c6b4:	0017c793          	xori	a5,a5,1
1c00c6b8:	0016c693          	xori	a3,a3,1
1c00c6bc:	873e                	mv	a4,a5
1c00c6be:	87b6                	mv	a5,a3
1c00c6c0:	8fd9                	or	a5,a5,a4
1c00c6c2:	0ff7f793          	andi	a5,a5,255
1c00c6c6:	1a078263          	beqz	a5,1c00c86a <PQCLEAN_KYBER512_CLEAN_cmov+0x1d2>
1c00c6ca:	00663793          	sltiu	a5,a2,6
1c00c6ce:	0017c793          	xori	a5,a5,1
1c00c6d2:	0ff7f793          	andi	a5,a5,255
1c00c6d6:	18078a63          	beqz	a5,1c00c86a <PQCLEAN_KYBER512_CLEAN_cmov+0x1d2>
1c00c6da:	40a00733          	neg	a4,a0
1c00c6de:	8b0d                	andi	a4,a4,3
1c00c6e0:	fff60793          	addi	a5,a2,-1
1c00c6e4:	00370693          	addi	a3,a4,3
1c00c6e8:	1ad7e163          	bltu	a5,a3,1c00c88a <PQCLEAN_KYBER512_CLEAN_cmov+0x1f2>
1c00c6ec:	4e81                	li	t4,0
1c00c6ee:	c739                	beqz	a4,1c00c73c <PQCLEAN_KYBER512_CLEAN_cmov+0xa4>
1c00c6f0:	00054683          	lbu	a3,0(a0)
1c00c6f4:	0005c783          	lbu	a5,0(a1)
1c00c6f8:	4e85                	li	t4,1
1c00c6fa:	8fb5                	xor	a5,a5,a3
1c00c6fc:	00f877b3          	and	a5,a6,a5
1c00c700:	8fb5                	xor	a5,a5,a3
1c00c702:	00f50023          	sb	a5,0(a0)
1c00c706:	03d70b63          	beq	a4,t4,1c00c73c <PQCLEAN_KYBER512_CLEAN_cmov+0xa4>
1c00c70a:	00154683          	lbu	a3,1(a0)
1c00c70e:	0015c783          	lbu	a5,1(a1)
1c00c712:	488d                	li	a7,3
1c00c714:	8fb5                	xor	a5,a5,a3
1c00c716:	00f877b3          	and	a5,a6,a5
1c00c71a:	8fb5                	xor	a5,a5,a3
1c00c71c:	00f500a3          	sb	a5,1(a0)
1c00c720:	4e89                	li	t4,2
1c00c722:	01171d63          	bne	a4,a7,1c00c73c <PQCLEAN_KYBER512_CLEAN_cmov+0xa4>
1c00c726:	00254683          	lbu	a3,2(a0)
1c00c72a:	0025c783          	lbu	a5,2(a1)
1c00c72e:	4e8d                	li	t4,3
1c00c730:	8fb5                	xor	a5,a5,a3
1c00c732:	00f877b3          	and	a5,a6,a5
1c00c736:	8fb5                	xor	a5,a5,a3
1c00c738:	00f50123          	sb	a5,2(a0)
1c00c73c:	00881693          	slli	a3,a6,0x8
1c00c740:	00d866b3          	or	a3,a6,a3
1c00c744:	01081793          	slli	a5,a6,0x10
1c00c748:	40e602b3          	sub	t0,a2,a4
1c00c74c:	8fd5                	or	a5,a5,a3
1c00c74e:	01881f13          	slli	t5,a6,0x18
1c00c752:	00e506b3          	add	a3,a0,a4
1c00c756:	0022df93          	srli	t6,t0,0x2
1c00c75a:	01e7ef33          	or	t5,a5,t5
1c00c75e:	972e                	add	a4,a4,a1
1c00c760:	8336                	mv	t1,a3
1c00c762:	4881                	li	a7,0
1c00c764:	0006ae03          	lw	t3,0(a3)
1c00c768:	431c                	lw	a5,0(a4)
1c00c76a:	0885                	addi	a7,a7,1
1c00c76c:	00fe47b3          	xor	a5,t3,a5
1c00c770:	01e7f7b3          	and	a5,a5,t5
1c00c774:	01c7c7b3          	xor	a5,a5,t3
1c00c778:	00f32023          	sw	a5,0(t1)
1c00c77c:	0691                	addi	a3,a3,4
1c00c77e:	0711                	addi	a4,a4,4
1c00c780:	0311                	addi	t1,t1,4
1c00c782:	fff8e1e3          	bltu	a7,t6,1c00c764 <PQCLEAN_KYBER512_CLEAN_cmov+0xcc>
1c00c786:	ffc2f793          	andi	a5,t0,-4
1c00c78a:	9ebe                	add	t4,t4,a5
1c00c78c:	0cf28e63          	beq	t0,a5,1c00c868 <PQCLEAN_KYBER512_CLEAN_cmov+0x1d0>
1c00c790:	01d508b3          	add	a7,a0,t4
1c00c794:	01d587b3          	add	a5,a1,t4
1c00c798:	0008c683          	lbu	a3,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00c79c:	0007c703          	lbu	a4,0(a5)
1c00c7a0:	001e8793          	addi	a5,t4,1
1c00c7a4:	8f35                	xor	a4,a4,a3
1c00c7a6:	00e87733          	and	a4,a6,a4
1c00c7aa:	8f35                	xor	a4,a4,a3
1c00c7ac:	00e88023          	sb	a4,0(a7)
1c00c7b0:	0ac7fc63          	bleu	a2,a5,1c00c868 <PQCLEAN_KYBER512_CLEAN_cmov+0x1d0>
1c00c7b4:	00f508b3          	add	a7,a0,a5
1c00c7b8:	00f58733          	add	a4,a1,a5
1c00c7bc:	0008c303          	lbu	t1,0(a7)
1c00c7c0:	00074703          	lbu	a4,0(a4)
1c00c7c4:	00178693          	addi	a3,a5,1
1c00c7c8:	00e34733          	xor	a4,t1,a4
1c00c7cc:	00e87733          	and	a4,a6,a4
1c00c7d0:	00e34733          	xor	a4,t1,a4
1c00c7d4:	00e88023          	sb	a4,0(a7)
1c00c7d8:	08c6f863          	bleu	a2,a3,1c00c868 <PQCLEAN_KYBER512_CLEAN_cmov+0x1d0>
1c00c7dc:	00d50333          	add	t1,a0,a3
1c00c7e0:	96ae                	add	a3,a3,a1
1c00c7e2:	00034883          	lbu	a7,0(t1)
1c00c7e6:	0006c703          	lbu	a4,0(a3)
1c00c7ea:	00278693          	addi	a3,a5,2
1c00c7ee:	00e8c733          	xor	a4,a7,a4
1c00c7f2:	00e87733          	and	a4,a6,a4
1c00c7f6:	00e8c733          	xor	a4,a7,a4
1c00c7fa:	00e30023          	sb	a4,0(t1)
1c00c7fe:	06c6f563          	bleu	a2,a3,1c00c868 <PQCLEAN_KYBER512_CLEAN_cmov+0x1d0>
1c00c802:	00d50333          	add	t1,a0,a3
1c00c806:	96ae                	add	a3,a3,a1
1c00c808:	00034883          	lbu	a7,0(t1)
1c00c80c:	0006c703          	lbu	a4,0(a3)
1c00c810:	00378693          	addi	a3,a5,3
1c00c814:	00e8c733          	xor	a4,a7,a4
1c00c818:	00e87733          	and	a4,a6,a4
1c00c81c:	00e8c733          	xor	a4,a7,a4
1c00c820:	00e30023          	sb	a4,0(t1)
1c00c824:	04c6f263          	bleu	a2,a3,1c00c868 <PQCLEAN_KYBER512_CLEAN_cmov+0x1d0>
1c00c828:	00d50333          	add	t1,a0,a3
1c00c82c:	96ae                	add	a3,a3,a1
1c00c82e:	00034883          	lbu	a7,0(t1)
1c00c832:	0006c703          	lbu	a4,0(a3)
1c00c836:	0791                	addi	a5,a5,4
1c00c838:	00e8c733          	xor	a4,a7,a4
1c00c83c:	00e87733          	and	a4,a6,a4
1c00c840:	00e8c733          	xor	a4,a7,a4
1c00c844:	00e30023          	sb	a4,0(t1)
1c00c848:	02c7f063          	bleu	a2,a5,1c00c868 <PQCLEAN_KYBER512_CLEAN_cmov+0x1d0>
1c00c84c:	953e                	add	a0,a0,a5
1c00c84e:	97ae                	add	a5,a5,a1
1c00c850:	00054703          	lbu	a4,0(a0)
1c00c854:	0007c783          	lbu	a5,0(a5)
1c00c858:	8fb9                	xor	a5,a5,a4
1c00c85a:	00f87833          	and	a6,a6,a5
1c00c85e:	01074833          	xor	a6,a4,a6
1c00c862:	01050023          	sb	a6,0(a0)
1c00c866:	8082                	ret
1c00c868:	8082                	ret
1c00c86a:	962a                	add	a2,a2,a0
1c00c86c:	00054703          	lbu	a4,0(a0)
1c00c870:	0005c783          	lbu	a5,0(a1)
1c00c874:	0505                	addi	a0,a0,1
1c00c876:	8fb9                	xor	a5,a5,a4
1c00c878:	00f877b3          	and	a5,a6,a5
1c00c87c:	8fb9                	xor	a5,a5,a4
1c00c87e:	fef50fa3          	sb	a5,-1(a0)
1c00c882:	0585                	addi	a1,a1,1
1c00c884:	fec514e3          	bne	a0,a2,1c00c86c <PQCLEAN_KYBER512_CLEAN_cmov+0x1d4>
1c00c888:	8082                	ret
1c00c88a:	00054683          	lbu	a3,0(a0)
1c00c88e:	0005c703          	lbu	a4,0(a1)
1c00c892:	4785                	li	a5,1
1c00c894:	8f35                	xor	a4,a4,a3
1c00c896:	00e87733          	and	a4,a6,a4
1c00c89a:	8f35                	xor	a4,a4,a3
1c00c89c:	00e50023          	sb	a4,0(a0)
1c00c8a0:	bf11                	j	1c00c7b4 <PQCLEAN_KYBER512_CLEAN_cmov+0x11c>

1c00c8a2 <pos_wait_forever>:
1c00c8a2:	f14027f3          	csrr	a5,mhartid
1c00c8a6:	8795                	srai	a5,a5,0x5
1c00c8a8:	03f7f793          	andi	a5,a5,63
1c00c8ac:	477d                	li	a4,31
1c00c8ae:	00e78363          	beq	a5,a4,1c00c8b4 <pos_wait_forever+0x12>
1c00c8b2:	a001                	j	1c00c8b2 <pos_wait_forever+0x10>
1c00c8b4:	1a10a7b7          	lui	a5,0x1a10a
1c00c8b8:	577d                	li	a4,-1
1c00c8ba:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00c8be:	10500073          	wfi
1c00c8c2:	10500073          	wfi
1c00c8c6:	bfe5                	j	1c00c8be <pos_wait_forever+0x1c>

1c00c8c8 <memcpy>:
1c00c8c8:	00b567b3          	or	a5,a0,a1
1c00c8cc:	8b8d                	andi	a5,a5,3
1c00c8ce:	10078f63          	beqz	a5,1c00c9ec <memcpy+0x124>
1c00c8d2:	14060063          	beqz	a2,1c00ca12 <memcpy+0x14a>
1c00c8d6:	00458793          	addi	a5,a1,4
1c00c8da:	00450693          	addi	a3,a0,4
1c00c8de:	00f537b3          	sltu	a5,a0,a5
1c00c8e2:	00d5b6b3          	sltu	a3,a1,a3
1c00c8e6:	0017c793          	xori	a5,a5,1
1c00c8ea:	0016c693          	xori	a3,a3,1
1c00c8ee:	873e                	mv	a4,a5
1c00c8f0:	87b6                	mv	a5,a3
1c00c8f2:	8fd9                	or	a5,a5,a4
1c00c8f4:	0ff7f793          	andi	a5,a5,255
1c00c8f8:	cff9                	beqz	a5,1c00c9d6 <memcpy+0x10e>
1c00c8fa:	00863793          	sltiu	a5,a2,8
1c00c8fe:	0017c793          	xori	a5,a5,1
1c00c902:	0ff7f793          	andi	a5,a5,255
1c00c906:	cbe1                	beqz	a5,1c00c9d6 <memcpy+0x10e>
1c00c908:	40b007b3          	neg	a5,a1
1c00c90c:	8b8d                	andi	a5,a5,3
1c00c90e:	fff60313          	addi	t1,a2,-1
1c00c912:	cfe5                	beqz	a5,1c00ca0a <memcpy+0x142>
1c00c914:	0005c683          	lbu	a3,0(a1)
1c00c918:	4705                	li	a4,1
1c00c91a:	00d50023          	sb	a3,0(a0)
1c00c91e:	00158893          	addi	a7,a1,1
1c00c922:	00150813          	addi	a6,a0,1
1c00c926:	02e78963          	beq	a5,a4,1c00c958 <memcpy+0x90>
1c00c92a:	0015c683          	lbu	a3,1(a1)
1c00c92e:	470d                	li	a4,3
1c00c930:	00d500a3          	sb	a3,1(a0)
1c00c934:	00258893          	addi	a7,a1,2
1c00c938:	00250813          	addi	a6,a0,2
1c00c93c:	ffe60313          	addi	t1,a2,-2
1c00c940:	00e79c63          	bne	a5,a4,1c00c958 <memcpy+0x90>
1c00c944:	0025c703          	lbu	a4,2(a1)
1c00c948:	00358893          	addi	a7,a1,3
1c00c94c:	00350813          	addi	a6,a0,3
1c00c950:	00e50123          	sb	a4,2(a0)
1c00c954:	ffd60313          	addi	t1,a2,-3
1c00c958:	8e1d                	sub	a2,a2,a5
1c00c95a:	95be                	add	a1,a1,a5
1c00c95c:	00265e13          	srli	t3,a2,0x2
1c00c960:	97aa                	add	a5,a5,a0
1c00c962:	4701                	li	a4,0
1c00c964:	4194                	lw	a3,0(a1)
1c00c966:	0705                	addi	a4,a4,1
1c00c968:	c394                	sw	a3,0(a5)
1c00c96a:	0591                	addi	a1,a1,4
1c00c96c:	0791                	addi	a5,a5,4
1c00c96e:	ffc76be3          	bltu	a4,t3,1c00c964 <memcpy+0x9c>
1c00c972:	ffc67593          	andi	a1,a2,-4
1c00c976:	40b306b3          	sub	a3,t1,a1
1c00c97a:	00b807b3          	add	a5,a6,a1
1c00c97e:	00b88733          	add	a4,a7,a1
1c00c982:	06b60463          	beq	a2,a1,1c00c9ea <memcpy+0x122>
1c00c986:	00074583          	lbu	a1,0(a4)
1c00c98a:	fff68613          	addi	a2,a3,-1
1c00c98e:	00b78023          	sb	a1,0(a5)
1c00c992:	ce21                	beqz	a2,1c00c9ea <memcpy+0x122>
1c00c994:	00174583          	lbu	a1,1(a4)
1c00c998:	ffe68613          	addi	a2,a3,-2
1c00c99c:	00b780a3          	sb	a1,1(a5)
1c00c9a0:	c629                	beqz	a2,1c00c9ea <memcpy+0x122>
1c00c9a2:	00274583          	lbu	a1,2(a4)
1c00c9a6:	ffd68613          	addi	a2,a3,-3
1c00c9aa:	00b78123          	sb	a1,2(a5)
1c00c9ae:	ce15                	beqz	a2,1c00c9ea <memcpy+0x122>
1c00c9b0:	00374583          	lbu	a1,3(a4)
1c00c9b4:	ffc68613          	addi	a2,a3,-4
1c00c9b8:	00b781a3          	sb	a1,3(a5)
1c00c9bc:	c61d                	beqz	a2,1c00c9ea <memcpy+0x122>
1c00c9be:	00474583          	lbu	a1,4(a4)
1c00c9c2:	4615                	li	a2,5
1c00c9c4:	00b78223          	sb	a1,4(a5)
1c00c9c8:	02c68163          	beq	a3,a2,1c00c9ea <memcpy+0x122>
1c00c9cc:	00574703          	lbu	a4,5(a4)
1c00c9d0:	00e782a3          	sb	a4,5(a5)
1c00c9d4:	8082                	ret
1c00c9d6:	962e                	add	a2,a2,a1
1c00c9d8:	87aa                	mv	a5,a0
1c00c9da:	0585                	addi	a1,a1,1
1c00c9dc:	fff5c703          	lbu	a4,-1(a1)
1c00c9e0:	0785                	addi	a5,a5,1
1c00c9e2:	fee78fa3          	sb	a4,-1(a5)
1c00c9e6:	fec59ae3          	bne	a1,a2,1c00c9da <memcpy+0x112>
1c00c9ea:	8082                	ret
1c00c9ec:	00367793          	andi	a5,a2,3
1c00c9f0:	ee0793e3          	bnez	a5,1c00c8d6 <memcpy+0xe>
1c00c9f4:	da7d                	beqz	a2,1c00c9ea <memcpy+0x122>
1c00c9f6:	87aa                	mv	a5,a0
1c00c9f8:	0591                	addi	a1,a1,4
1c00c9fa:	ffc5a703          	lw	a4,-4(a1)
1c00c9fe:	0791                	addi	a5,a5,4
1c00ca00:	fee7ae23          	sw	a4,-4(a5)
1c00ca04:	1671                	addi	a2,a2,-4
1c00ca06:	fa6d                	bnez	a2,1c00c9f8 <memcpy+0x130>
1c00ca08:	8082                	ret
1c00ca0a:	88ae                	mv	a7,a1
1c00ca0c:	882a                	mv	a6,a0
1c00ca0e:	8332                	mv	t1,a2
1c00ca10:	b7a1                	j	1c00c958 <memcpy+0x90>
1c00ca12:	8082                	ret

1c00ca14 <memmove>:
1c00ca14:	40b507b3          	sub	a5,a0,a1
1c00ca18:	10c7e463          	bltu	a5,a2,1c00cb20 <memmove+0x10c>
1c00ca1c:	12060b63          	beqz	a2,1c00cb52 <memmove+0x13e>
1c00ca20:	00458793          	addi	a5,a1,4
1c00ca24:	00450693          	addi	a3,a0,4
1c00ca28:	00f537b3          	sltu	a5,a0,a5
1c00ca2c:	00d5b6b3          	sltu	a3,a1,a3
1c00ca30:	0017c793          	xori	a5,a5,1
1c00ca34:	0016c693          	xori	a3,a3,1
1c00ca38:	873e                	mv	a4,a5
1c00ca3a:	87b6                	mv	a5,a3
1c00ca3c:	8fd9                	or	a5,a5,a4
1c00ca3e:	0ff7f793          	andi	a5,a5,255
1c00ca42:	cfed                	beqz	a5,1c00cb3c <memmove+0x128>
1c00ca44:	00863793          	sltiu	a5,a2,8
1c00ca48:	0017c793          	xori	a5,a5,1
1c00ca4c:	0ff7f793          	andi	a5,a5,255
1c00ca50:	c7f5                	beqz	a5,1c00cb3c <memmove+0x128>
1c00ca52:	40b007b3          	neg	a5,a1
1c00ca56:	8b8d                	andi	a5,a5,3
1c00ca58:	fff60313          	addi	t1,a2,-1
1c00ca5c:	cfe5                	beqz	a5,1c00cb54 <memmove+0x140>
1c00ca5e:	0005c683          	lbu	a3,0(a1)
1c00ca62:	4705                	li	a4,1
1c00ca64:	00d50023          	sb	a3,0(a0)
1c00ca68:	00150813          	addi	a6,a0,1
1c00ca6c:	00158893          	addi	a7,a1,1
1c00ca70:	02e78963          	beq	a5,a4,1c00caa2 <memmove+0x8e>
1c00ca74:	0015c683          	lbu	a3,1(a1)
1c00ca78:	470d                	li	a4,3
1c00ca7a:	00d500a3          	sb	a3,1(a0)
1c00ca7e:	00250813          	addi	a6,a0,2
1c00ca82:	00258893          	addi	a7,a1,2
1c00ca86:	ffe60313          	addi	t1,a2,-2
1c00ca8a:	00e79c63          	bne	a5,a4,1c00caa2 <memmove+0x8e>
1c00ca8e:	0025c703          	lbu	a4,2(a1)
1c00ca92:	00350813          	addi	a6,a0,3
1c00ca96:	00e50123          	sb	a4,2(a0)
1c00ca9a:	00358893          	addi	a7,a1,3
1c00ca9e:	ffd60313          	addi	t1,a2,-3
1c00caa2:	8e1d                	sub	a2,a2,a5
1c00caa4:	95be                	add	a1,a1,a5
1c00caa6:	00265e13          	srli	t3,a2,0x2
1c00caaa:	97aa                	add	a5,a5,a0
1c00caac:	4701                	li	a4,0
1c00caae:	4194                	lw	a3,0(a1)
1c00cab0:	0705                	addi	a4,a4,1
1c00cab2:	c394                	sw	a3,0(a5)
1c00cab4:	0591                	addi	a1,a1,4
1c00cab6:	0791                	addi	a5,a5,4
1c00cab8:	ffc76be3          	bltu	a4,t3,1c00caae <memmove+0x9a>
1c00cabc:	ffc67593          	andi	a1,a2,-4
1c00cac0:	40b306b3          	sub	a3,t1,a1
1c00cac4:	00b807b3          	add	a5,a6,a1
1c00cac8:	00b88733          	add	a4,a7,a1
1c00cacc:	08b60263          	beq	a2,a1,1c00cb50 <memmove+0x13c>
1c00cad0:	00074583          	lbu	a1,0(a4)
1c00cad4:	fff68613          	addi	a2,a3,-1
1c00cad8:	00b78023          	sb	a1,0(a5)
1c00cadc:	ca35                	beqz	a2,1c00cb50 <memmove+0x13c>
1c00cade:	00174583          	lbu	a1,1(a4)
1c00cae2:	ffe68613          	addi	a2,a3,-2
1c00cae6:	00b780a3          	sb	a1,1(a5)
1c00caea:	c23d                	beqz	a2,1c00cb50 <memmove+0x13c>
1c00caec:	00274583          	lbu	a1,2(a4)
1c00caf0:	ffd68613          	addi	a2,a3,-3
1c00caf4:	00b78123          	sb	a1,2(a5)
1c00caf8:	ce21                	beqz	a2,1c00cb50 <memmove+0x13c>
1c00cafa:	00374583          	lbu	a1,3(a4)
1c00cafe:	ffc68613          	addi	a2,a3,-4
1c00cb02:	00b781a3          	sb	a1,3(a5)
1c00cb06:	c629                	beqz	a2,1c00cb50 <memmove+0x13c>
1c00cb08:	00474583          	lbu	a1,4(a4)
1c00cb0c:	4615                	li	a2,5
1c00cb0e:	00b78223          	sb	a1,4(a5)
1c00cb12:	02c68f63          	beq	a3,a2,1c00cb50 <memmove+0x13c>
1c00cb16:	00574703          	lbu	a4,5(a4)
1c00cb1a:	00e782a3          	sb	a4,5(a5)
1c00cb1e:	8082                	ret
1c00cb20:	167d                	addi	a2,a2,-1
1c00cb22:	00c587b3          	add	a5,a1,a2
1c00cb26:	962a                	add	a2,a2,a0
1c00cb28:	15fd                	addi	a1,a1,-1
1c00cb2a:	0007c703          	lbu	a4,0(a5)
1c00cb2e:	17fd                	addi	a5,a5,-1
1c00cb30:	00e60023          	sb	a4,0(a2)
1c00cb34:	167d                	addi	a2,a2,-1
1c00cb36:	feb79ae3          	bne	a5,a1,1c00cb2a <memmove+0x116>
1c00cb3a:	8082                	ret
1c00cb3c:	962a                	add	a2,a2,a0
1c00cb3e:	87aa                	mv	a5,a0
1c00cb40:	0005c703          	lbu	a4,0(a1)
1c00cb44:	0785                	addi	a5,a5,1
1c00cb46:	fee78fa3          	sb	a4,-1(a5)
1c00cb4a:	0585                	addi	a1,a1,1
1c00cb4c:	fec79ae3          	bne	a5,a2,1c00cb40 <memmove+0x12c>
1c00cb50:	8082                	ret
1c00cb52:	8082                	ret
1c00cb54:	88ae                	mv	a7,a1
1c00cb56:	882a                	mv	a6,a0
1c00cb58:	8332                	mv	t1,a2
1c00cb5a:	b7a1                	j	1c00caa2 <memmove+0x8e>

1c00cb5c <strchr>:
1c00cb5c:	00054783          	lbu	a5,0(a0)
1c00cb60:	0ff5f593          	andi	a1,a1,255
1c00cb64:	00b78863          	beq	a5,a1,1c00cb74 <strchr+0x18>
1c00cb68:	c799                	beqz	a5,1c00cb76 <strchr+0x1a>
1c00cb6a:	0505                	addi	a0,a0,1
1c00cb6c:	00054783          	lbu	a5,0(a0)
1c00cb70:	feb79ce3          	bne	a5,a1,1c00cb68 <strchr+0xc>
1c00cb74:	8082                	ret
1c00cb76:	0015b593          	seqz	a1,a1
1c00cb7a:	40b005b3          	neg	a1,a1
1c00cb7e:	8d6d                	and	a0,a0,a1
1c00cb80:	8082                	ret

1c00cb82 <puts>:
1c00cb82:	00054783          	lbu	a5,0(a0)
1c00cb86:	c78d                	beqz	a5,1c00cbb0 <puts+0x2e>
1c00cb88:	f14026f3          	csrr	a3,mhartid
1c00cb8c:	00369713          	slli	a4,a3,0x3
1c00cb90:	1a10f637          	lui	a2,0x1a10f
1c00cb94:	0ff77713          	andi	a4,a4,255
1c00cb98:	9732                	add	a4,a4,a2
1c00cb9a:	6609                	lui	a2,0x2
1c00cb9c:	068a                	slli	a3,a3,0x2
1c00cb9e:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00cba2:	8ef1                	and	a3,a3,a2
1c00cba4:	9736                	add	a4,a4,a3
1c00cba6:	c31c                	sw	a5,0(a4)
1c00cba8:	0505                	addi	a0,a0,1
1c00cbaa:	00054783          	lbu	a5,0(a0)
1c00cbae:	ffe5                	bnez	a5,1c00cba6 <puts+0x24>
1c00cbb0:	f1402773          	csrr	a4,mhartid
1c00cbb4:	00371793          	slli	a5,a4,0x3
1c00cbb8:	1a10f6b7          	lui	a3,0x1a10f
1c00cbbc:	0ff7f793          	andi	a5,a5,255
1c00cbc0:	97b6                	add	a5,a5,a3
1c00cbc2:	6689                	lui	a3,0x2
1c00cbc4:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00cbc8:	070a                	slli	a4,a4,0x2
1c00cbca:	8f75                	and	a4,a4,a3
1c00cbcc:	97ba                	add	a5,a5,a4
1c00cbce:	4729                	li	a4,10
1c00cbd0:	c398                	sw	a4,0(a5)
1c00cbd2:	4501                	li	a0,0
1c00cbd4:	8082                	ret

1c00cbd6 <pos_libc_fputc_locked>:
1c00cbd6:	6689                	lui	a3,0x2
1c00cbd8:	f14027f3          	csrr	a5,mhartid
1c00cbdc:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00cbe0:	00379713          	slli	a4,a5,0x3
1c00cbe4:	078a                	slli	a5,a5,0x2
1c00cbe6:	8ff5                	and	a5,a5,a3
1c00cbe8:	0ff77713          	andi	a4,a4,255
1c00cbec:	1a10f6b7          	lui	a3,0x1a10f
1c00cbf0:	9736                	add	a4,a4,a3
1c00cbf2:	0ff57513          	andi	a0,a0,255
1c00cbf6:	97ba                	add	a5,a5,a4
1c00cbf8:	c388                	sw	a0,0(a5)
1c00cbfa:	4501                	li	a0,0
1c00cbfc:	8082                	ret

1c00cbfe <putchar>:
1c00cbfe:	6689                	lui	a3,0x2
1c00cc00:	f14027f3          	csrr	a5,mhartid
1c00cc04:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00cc08:	00379713          	slli	a4,a5,0x3
1c00cc0c:	078a                	slli	a5,a5,0x2
1c00cc0e:	8ff5                	and	a5,a5,a3
1c00cc10:	0ff77713          	andi	a4,a4,255
1c00cc14:	1a10f6b7          	lui	a3,0x1a10f
1c00cc18:	9736                	add	a4,a4,a3
1c00cc1a:	0ff57513          	andi	a0,a0,255
1c00cc1e:	97ba                	add	a5,a5,a4
1c00cc20:	c388                	sw	a0,0(a5)
1c00cc22:	4501                	li	a0,0
1c00cc24:	8082                	ret

1c00cc26 <pos_libc_prf_locked>:
1c00cc26:	a0b1                	j	1c00cc72 <pos_libc_prf>

1c00cc28 <exit>:
1c00cc28:	800007b7          	lui	a5,0x80000
1c00cc2c:	1141                	addi	sp,sp,-16
1c00cc2e:	8d5d                	or	a0,a0,a5
1c00cc30:	c606                	sw	ra,12(sp)
1c00cc32:	1a1047b7          	lui	a5,0x1a104
1c00cc36:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00cc3a:	31a5                	jal	1c00c8a2 <pos_wait_forever>

1c00cc3c <pos_io_start>:
1c00cc3c:	4501                	li	a0,0
1c00cc3e:	8082                	ret

1c00cc40 <pos_io_stop>:
1c00cc40:	4501                	li	a0,0
1c00cc42:	8082                	ret

1c00cc44 <printf>:
1c00cc44:	7139                	addi	sp,sp,-64
1c00cc46:	02410313          	addi	t1,sp,36
1c00cc4a:	d432                	sw	a2,40(sp)
1c00cc4c:	862a                	mv	a2,a0
1c00cc4e:	1c00d537          	lui	a0,0x1c00d
1c00cc52:	d22e                	sw	a1,36(sp)
1c00cc54:	d636                	sw	a3,44(sp)
1c00cc56:	4589                	li	a1,2
1c00cc58:	869a                	mv	a3,t1
1c00cc5a:	bd650513          	addi	a0,a0,-1066 # 1c00cbd6 <pos_libc_fputc_locked>
1c00cc5e:	ce06                	sw	ra,28(sp)
1c00cc60:	d83a                	sw	a4,48(sp)
1c00cc62:	da3e                	sw	a5,52(sp)
1c00cc64:	dc42                	sw	a6,56(sp)
1c00cc66:	de46                	sw	a7,60(sp)
1c00cc68:	c61a                	sw	t1,12(sp)
1c00cc6a:	3f75                	jal	1c00cc26 <pos_libc_prf_locked>
1c00cc6c:	40f2                	lw	ra,28(sp)
1c00cc6e:	6121                	addi	sp,sp,64
1c00cc70:	8082                	ret

1c00cc72 <pos_libc_prf>:
1c00cc72:	7169                	addi	sp,sp,-304
1c00cc74:	12812423          	sw	s0,296(sp)
1c00cc78:	12912223          	sw	s1,292(sp)
1c00cc7c:	11612823          	sw	s6,272(sp)
1c00cc80:	11712623          	sw	s7,268(sp)
1c00cc84:	11812423          	sw	s8,264(sp)
1c00cc88:	11912223          	sw	s9,260(sp)
1c00cc8c:	11a12023          	sw	s10,256(sp)
1c00cc90:	12112623          	sw	ra,300(sp)
1c00cc94:	13212023          	sw	s2,288(sp)
1c00cc98:	11312e23          	sw	s3,284(sp)
1c00cc9c:	11412c23          	sw	s4,280(sp)
1c00cca0:	11512a23          	sw	s5,276(sp)
1c00cca4:	dfee                	sw	s11,252(sp)
1c00cca6:	8b2a                	mv	s6,a0
1c00cca8:	8d2e                	mv	s10,a1
1c00ccaa:	84b2                	mv	s1,a2
1c00ccac:	8c36                	mv	s8,a3
1c00ccae:	4401                	li	s0,0
1c00ccb0:	1c000bb7          	lui	s7,0x1c000
1c00ccb4:	02410c93          	addi	s9,sp,36
1c00ccb8:	0004c503          	lbu	a0,0(s1)
1c00ccbc:	0485                	addi	s1,s1,1
1c00ccbe:	cd19                	beqz	a0,1c00ccdc <pos_libc_prf+0x6a>
1c00ccc0:	02500793          	li	a5,37
1c00ccc4:	04f50863          	beq	a0,a5,1c00cd14 <pos_libc_prf+0xa2>
1c00ccc8:	85ea                	mv	a1,s10
1c00ccca:	9b02                	jalr	s6
1c00cccc:	57fd                	li	a5,-1
1c00ccce:	24f50863          	beq	a0,a5,1c00cf1e <pos_libc_prf+0x2ac>
1c00ccd2:	0405                	addi	s0,s0,1
1c00ccd4:	0004c503          	lbu	a0,0(s1)
1c00ccd8:	0485                	addi	s1,s1,1
1c00ccda:	f17d                	bnez	a0,1c00ccc0 <pos_libc_prf+0x4e>
1c00ccdc:	8522                	mv	a0,s0
1c00ccde:	12c12083          	lw	ra,300(sp)
1c00cce2:	12812403          	lw	s0,296(sp)
1c00cce6:	12412483          	lw	s1,292(sp)
1c00ccea:	12012903          	lw	s2,288(sp)
1c00ccee:	11c12983          	lw	s3,284(sp)
1c00ccf2:	11812a03          	lw	s4,280(sp)
1c00ccf6:	11412a83          	lw	s5,276(sp)
1c00ccfa:	11012b03          	lw	s6,272(sp)
1c00ccfe:	10c12b83          	lw	s7,268(sp)
1c00cd02:	10812c03          	lw	s8,264(sp)
1c00cd06:	10412c83          	lw	s9,260(sp)
1c00cd0a:	10012d03          	lw	s10,256(sp)
1c00cd0e:	5dfe                	lw	s11,252(sp)
1c00cd10:	6155                	addi	sp,sp,304
1c00cd12:	8082                	ret
1c00cd14:	00148a93          	addi	s5,s1,1
1c00cd18:	fffacd83          	lbu	s11,-1(s5)
1c00cd1c:	02000713          	li	a4,32
1c00cd20:	24cb8513          	addi	a0,s7,588 # 1c00024c <PQCLEAN_KYBER512_CLEAN_zetas+0x104>
1c00cd24:	85ee                	mv	a1,s11
1c00cd26:	c83a                	sw	a4,16(sp)
1c00cd28:	cc02                	sw	zero,24(sp)
1c00cd2a:	ca02                	sw	zero,20(sp)
1c00cd2c:	ce02                	sw	zero,28(sp)
1c00cd2e:	c602                	sw	zero,12(sp)
1c00cd30:	02300913          	li	s2,35
1c00cd34:	02d00a13          	li	s4,45
1c00cd38:	89d6                	mv	s3,s5
1c00cd3a:	350d                	jal	1c00cb5c <strchr>
1c00cd3c:	c915                	beqz	a0,1c00cd70 <pos_libc_prf+0xfe>
1c00cd3e:	212d8963          	beq	s11,s2,1c00cf50 <pos_libc_prf+0x2de>
1c00cd42:	1fb97063          	bleu	s11,s2,1c00cf22 <pos_libc_prf+0x2b0>
1c00cd46:	214d8163          	beq	s11,s4,1c00cf48 <pos_libc_prf+0x2d6>
1c00cd4a:	03000613          	li	a2,48
1c00cd4e:	1ecd8863          	beq	s11,a2,1c00cf3e <pos_libc_prf+0x2cc>
1c00cd52:	02b00693          	li	a3,43
1c00cd56:	1edd8063          	beq	s11,a3,1c00cf36 <pos_libc_prf+0x2c4>
1c00cd5a:	84d6                	mv	s1,s5
1c00cd5c:	00148a93          	addi	s5,s1,1
1c00cd60:	fffacd83          	lbu	s11,-1(s5)
1c00cd64:	24cb8513          	addi	a0,s7,588
1c00cd68:	85ee                	mv	a1,s11
1c00cd6a:	89d6                	mv	s3,s5
1c00cd6c:	3bc5                	jal	1c00cb5c <strchr>
1c00cd6e:	f961                	bnez	a0,1c00cd3e <pos_libc_prf+0xcc>
1c00cd70:	02a00613          	li	a2,42
1c00cd74:	20cd8463          	beq	s11,a2,1c00cf7c <pos_libc_prf+0x30a>
1c00cd78:	fd0d8613          	addi	a2,s11,-48
1c00cd7c:	45a5                	li	a1,9
1c00cd7e:	4901                	li	s2,0
1c00cd80:	1cc5fe63          	bleu	a2,a1,1c00cf5c <pos_libc_prf+0x2ea>
1c00cd84:	02e00713          	li	a4,46
1c00cd88:	5a7d                	li	s4,-1
1c00cd8a:	24ed8463          	beq	s11,a4,1c00cfd2 <pos_libc_prf+0x360>
1c00cd8e:	1c000837          	lui	a6,0x1c000
1c00cd92:	85ee                	mv	a1,s11
1c00cd94:	25480513          	addi	a0,a6,596 # 1c000254 <PQCLEAN_KYBER512_CLEAN_zetas+0x10c>
1c00cd98:	33d1                	jal	1c00cb5c <strchr>
1c00cd9a:	84ce                	mv	s1,s3
1c00cd9c:	c509                	beqz	a0,1c00cda6 <pos_libc_prf+0x134>
1c00cd9e:	0009cd83          	lbu	s11,0(s3)
1c00cda2:	00198493          	addi	s1,s3,1
1c00cda6:	06700713          	li	a4,103
1c00cdaa:	1fb75963          	ble	s11,a4,1c00cf9c <pos_libc_prf+0x32a>
1c00cdae:	07000713          	li	a4,112
1c00cdb2:	12ed89e3          	beq	s11,a4,1c00d6e4 <pos_libc_prf+0xa72>
1c00cdb6:	25b75263          	ble	s11,a4,1c00cffa <pos_libc_prf+0x388>
1c00cdba:	07500713          	li	a4,117
1c00cdbe:	0aed89e3          	beq	s11,a4,1c00d670 <pos_libc_prf+0x9fe>
1c00cdc2:	07800713          	li	a4,120
1c00cdc6:	72ed8b63          	beq	s11,a4,1c00d4fc <pos_libc_prf+0x88a>
1c00cdca:	07300713          	li	a4,115
1c00cdce:	1aed9ce3          	bne	s11,a4,1c00d786 <pos_libc_prf+0xb14>
1c00cdd2:	000c2583          	lw	a1,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00cdd6:	004c0a93          	addi	s5,s8,4
1c00cdda:	87ae                	mv	a5,a1
1c00cddc:	4981                	li	s3,0
1c00cdde:	0c800693          	li	a3,200
1c00cde2:	a021                	j	1c00cdea <pos_libc_prf+0x178>
1c00cde4:	0985                	addi	s3,s3,1
1c00cde6:	5ad98be3          	beq	s3,a3,1c00db9c <pos_libc_prf+0xf2a>
1c00cdea:	0007c703          	lbu	a4,0(a5)
1c00cdee:	0785                	addi	a5,a5,1
1c00cdf0:	fb75                	bnez	a4,1c00cde4 <pos_libc_prf+0x172>
1c00cdf2:	000a4563          	bltz	s4,1c00cdfc <pos_libc_prf+0x18a>
1c00cdf6:	013a5363          	ble	s3,s4,1c00cdfc <pos_libc_prf+0x18a>
1c00cdfa:	89d2                	mv	s3,s4
1c00cdfc:	8c56                	mv	s8,s5
1c00cdfe:	ea098de3          	beqz	s3,1c00ccb8 <pos_libc_prf+0x46>
1c00ce02:	864e                	mv	a2,s3
1c00ce04:	8566                	mv	a0,s9
1c00ce06:	34c9                	jal	1c00c8c8 <memcpy>
1c00ce08:	8c56                	mv	s8,s5
1c00ce0a:	0f29d963          	ble	s2,s3,1c00cefc <pos_libc_prf+0x28a>
1c00ce0e:	c602                	sw	zero,12(sp)
1c00ce10:	48f2                	lw	a7,28(sp)
1c00ce12:	1a0885e3          	beqz	a7,1c00d7bc <pos_libc_prf+0xb4a>
1c00ce16:	013c87b3          	add	a5,s9,s3
1c00ce1a:	40f007b3          	neg	a5,a5
1c00ce1e:	8b8d                	andi	a5,a5,3
1c00ce20:	00378693          	addi	a3,a5,3
1c00ce24:	4715                	li	a4,5
1c00ce26:	413905b3          	sub	a1,s2,s3
1c00ce2a:	00e6f363          	bleu	a4,a3,1c00ce30 <pos_libc_prf+0x1be>
1c00ce2e:	4695                	li	a3,5
1c00ce30:	fff90713          	addi	a4,s2,-1
1c00ce34:	41370733          	sub	a4,a4,s3
1c00ce38:	06d76663          	bltu	a4,a3,1c00cea4 <pos_libc_prf+0x232>
1c00ce3c:	86ce                	mv	a3,s3
1c00ce3e:	cb9d                	beqz	a5,1c00ce74 <pos_libc_prf+0x202>
1c00ce40:	0f010813          	addi	a6,sp,240
1c00ce44:	013806b3          	add	a3,a6,s3
1c00ce48:	02000713          	li	a4,32
1c00ce4c:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00ce50:	4605                	li	a2,1
1c00ce52:	00198693          	addi	a3,s3,1
1c00ce56:	00c78f63          	beq	a5,a2,1c00ce74 <pos_libc_prf+0x202>
1c00ce5a:	96c2                	add	a3,a3,a6
1c00ce5c:	f2e68a23          	sb	a4,-204(a3)
1c00ce60:	460d                	li	a2,3
1c00ce62:	00298693          	addi	a3,s3,2
1c00ce66:	00c79763          	bne	a5,a2,1c00ce74 <pos_libc_prf+0x202>
1c00ce6a:	96c2                	add	a3,a3,a6
1c00ce6c:	f2e68a23          	sb	a4,-204(a3)
1c00ce70:	00398693          	addi	a3,s3,3
1c00ce74:	8d9d                	sub	a1,a1,a5
1c00ce76:	97ce                	add	a5,a5,s3
1c00ce78:	0025d613          	srli	a2,a1,0x2
1c00ce7c:	97e6                	add	a5,a5,s9
1c00ce7e:	4701                	li	a4,0
1c00ce80:	1c0008b7          	lui	a7,0x1c000
1c00ce84:	24888893          	addi	a7,a7,584 # 1c000248 <PQCLEAN_KYBER512_CLEAN_zetas+0x100>
1c00ce88:	0008a883          	lw	a7,0(a7)
1c00ce8c:	0705                	addi	a4,a4,1
1c00ce8e:	0117a023          	sw	a7,0(a5)
1c00ce92:	0791                	addi	a5,a5,4
1c00ce94:	fec766e3          	bltu	a4,a2,1c00ce80 <pos_libc_prf+0x20e>
1c00ce98:	ffc5f793          	andi	a5,a1,-4
1c00ce9c:	00d789b3          	add	s3,a5,a3
1c00cea0:	04b78b63          	beq	a5,a1,1c00cef6 <pos_libc_prf+0x284>
1c00cea4:	1988                	addi	a0,sp,240
1c00cea6:	01350733          	add	a4,a0,s3
1c00ceaa:	02000793          	li	a5,32
1c00ceae:	f2f70a23          	sb	a5,-204(a4)
1c00ceb2:	00198713          	addi	a4,s3,1
1c00ceb6:	05275063          	ble	s2,a4,1c00cef6 <pos_libc_prf+0x284>
1c00ceba:	972a                	add	a4,a4,a0
1c00cebc:	f2f70a23          	sb	a5,-204(a4)
1c00cec0:	00298713          	addi	a4,s3,2
1c00cec4:	03275963          	ble	s2,a4,1c00cef6 <pos_libc_prf+0x284>
1c00cec8:	972a                	add	a4,a4,a0
1c00ceca:	f2f70a23          	sb	a5,-204(a4)
1c00cece:	00398713          	addi	a4,s3,3
1c00ced2:	03275263          	ble	s2,a4,1c00cef6 <pos_libc_prf+0x284>
1c00ced6:	972a                	add	a4,a4,a0
1c00ced8:	f2f70a23          	sb	a5,-204(a4)
1c00cedc:	00498713          	addi	a4,s3,4
1c00cee0:	01275b63          	ble	s2,a4,1c00cef6 <pos_libc_prf+0x284>
1c00cee4:	972a                	add	a4,a4,a0
1c00cee6:	f2f70a23          	sb	a5,-204(a4)
1c00ceea:	0995                	addi	s3,s3,5
1c00ceec:	0129d563          	ble	s2,s3,1c00cef6 <pos_libc_prf+0x284>
1c00cef0:	99aa                	add	s3,s3,a0
1c00cef2:	f2f98a23          	sb	a5,-204(s3)
1c00cef6:	89ca                	mv	s3,s2
1c00cef8:	dc0980e3          	beqz	s3,1c00ccb8 <pos_libc_prf+0x46>
1c00cefc:	8966                	mv	s2,s9
1c00cefe:	5a7d                	li	s4,-1
1c00cf00:	41940ab3          	sub	s5,s0,s9
1c00cf04:	a029                	j	1c00cf0e <pos_libc_prf+0x29c>
1c00cf06:	01590433          	add	s0,s2,s5
1c00cf0a:	da0987e3          	beqz	s3,1c00ccb8 <pos_libc_prf+0x46>
1c00cf0e:	00094503          	lbu	a0,0(s2)
1c00cf12:	85ea                	mv	a1,s10
1c00cf14:	9b02                	jalr	s6
1c00cf16:	0905                	addi	s2,s2,1
1c00cf18:	19fd                	addi	s3,s3,-1
1c00cf1a:	ff4516e3          	bne	a0,s4,1c00cf06 <pos_libc_prf+0x294>
1c00cf1e:	547d                	li	s0,-1
1c00cf20:	bb75                	j	1c00ccdc <pos_libc_prf+0x6a>
1c00cf22:	da0d8de3          	beqz	s11,1c00ccdc <pos_libc_prf+0x6a>
1c00cf26:	02000513          	li	a0,32
1c00cf2a:	e2ad98e3          	bne	s11,a0,1c00cd5a <pos_libc_prf+0xe8>
1c00cf2e:	4785                	li	a5,1
1c00cf30:	cc3e                	sw	a5,24(sp)
1c00cf32:	84d6                	mv	s1,s5
1c00cf34:	b525                	j	1c00cd5c <pos_libc_prf+0xea>
1c00cf36:	4705                	li	a4,1
1c00cf38:	ca3a                	sw	a4,20(sp)
1c00cf3a:	84d6                	mv	s1,s5
1c00cf3c:	b505                	j	1c00cd5c <pos_libc_prf+0xea>
1c00cf3e:	03000893          	li	a7,48
1c00cf42:	c846                	sw	a7,16(sp)
1c00cf44:	84d6                	mv	s1,s5
1c00cf46:	bd19                	j	1c00cd5c <pos_libc_prf+0xea>
1c00cf48:	4685                	li	a3,1
1c00cf4a:	ce36                	sw	a3,28(sp)
1c00cf4c:	84d6                	mv	s1,s5
1c00cf4e:	b539                	j	1c00cd5c <pos_libc_prf+0xea>
1c00cf50:	4805                	li	a6,1
1c00cf52:	c642                	sw	a6,12(sp)
1c00cf54:	84d6                	mv	s1,s5
1c00cf56:	b519                	j	1c00cd5c <pos_libc_prf+0xea>
1c00cf58:	84d6                	mv	s1,s5
1c00cf5a:	0a85                	addi	s5,s5,1
1c00cf5c:	00291793          	slli	a5,s2,0x2
1c00cf60:	97ca                	add	a5,a5,s2
1c00cf62:	0786                	slli	a5,a5,0x1
1c00cf64:	97ee                	add	a5,a5,s11
1c00cf66:	000acd83          	lbu	s11,0(s5)
1c00cf6a:	fd078913          	addi	s2,a5,-48
1c00cf6e:	fd0d8793          	addi	a5,s11,-48
1c00cf72:	fef5f3e3          	bleu	a5,a1,1c00cf58 <pos_libc_prf+0x2e6>
1c00cf76:	00248993          	addi	s3,s1,2
1c00cf7a:	a811                	j	1c00cf8e <pos_libc_prf+0x31c>
1c00cf7c:	000c2903          	lw	s2,0(s8)
1c00cf80:	0c11                	addi	s8,s8,4
1c00cf82:	14094663          	bltz	s2,1c00d0ce <pos_libc_prf+0x45c>
1c00cf86:	000acd83          	lbu	s11,0(s5)
1c00cf8a:	00248993          	addi	s3,s1,2
1c00cf8e:	0c800713          	li	a4,200
1c00cf92:	df2779e3          	bleu	s2,a4,1c00cd84 <pos_libc_prf+0x112>
1c00cf96:	0c800913          	li	s2,200
1c00cf9a:	b3ed                	j	1c00cd84 <pos_libc_prf+0x112>
1c00cf9c:	06500713          	li	a4,101
1c00cfa0:	12eddc63          	ble	a4,s11,1c00d0d8 <pos_libc_prf+0x466>
1c00cfa4:	04700713          	li	a4,71
1c00cfa8:	55b74063          	blt	a4,s11,1c00d4e8 <pos_libc_prf+0x876>
1c00cfac:	04500713          	li	a4,69
1c00cfb0:	12edd463          	ble	a4,s11,1c00d0d8 <pos_libc_prf+0x466>
1c00cfb4:	d20d84e3          	beqz	s11,1c00ccdc <pos_libc_prf+0x6a>
1c00cfb8:	02500713          	li	a4,37
1c00cfbc:	7ced9563          	bne	s11,a4,1c00d786 <pos_libc_prf+0xb14>
1c00cfc0:	85ea                	mv	a1,s10
1c00cfc2:	02500513          	li	a0,37
1c00cfc6:	9b02                	jalr	s6
1c00cfc8:	57fd                	li	a5,-1
1c00cfca:	f4f50ae3          	beq	a0,a5,1c00cf1e <pos_libc_prf+0x2ac>
1c00cfce:	0405                	addi	s0,s0,1
1c00cfd0:	b311                	j	1c00ccd4 <pos_libc_prf+0x62>
1c00cfd2:	0009c783          	lbu	a5,0(s3)
1c00cfd6:	02a00713          	li	a4,42
1c00cfda:	00198693          	addi	a3,s3,1
1c00cfde:	0ae79d63          	bne	a5,a4,1c00d098 <pos_libc_prf+0x426>
1c00cfe2:	000c2a03          	lw	s4,0(s8)
1c00cfe6:	0019cd83          	lbu	s11,1(s3)
1c00cfea:	0c11                	addi	s8,s8,4
1c00cfec:	0989                	addi	s3,s3,2
1c00cfee:	0c800713          	li	a4,200
1c00cff2:	d9475ee3          	ble	s4,a4,1c00cd8e <pos_libc_prf+0x11c>
1c00cff6:	5a7d                	li	s4,-1
1c00cff8:	bb59                	j	1c00cd8e <pos_libc_prf+0x11c>
1c00cffa:	06e00713          	li	a4,110
1c00cffe:	76ed8e63          	beq	s11,a4,1c00d77a <pos_libc_prf+0xb08>
1c00d002:	5bb75663          	ble	s11,a4,1c00d5ae <pos_libc_prf+0x93c>
1c00d006:	4732                	lw	a4,12(sp)
1c00d008:	004c0513          	addi	a0,s8,4
1c00d00c:	000c2683          	lw	a3,0(s8)
1c00d010:	1c070de3          	beqz	a4,1c00d9ea <pos_libc_prf+0xd78>
1c00d014:	03000793          	li	a5,48
1c00d018:	02f10223          	sb	a5,36(sp)
1c00d01c:	16068de3          	beqz	a3,1c00d996 <pos_libc_prf+0xd24>
1c00d020:	02510593          	addi	a1,sp,37
1c00d024:	872e                	mv	a4,a1
1c00d026:	87ba                	mv	a5,a4
1c00d028:	0076f613          	andi	a2,a3,7
1c00d02c:	0785                	addi	a5,a5,1
1c00d02e:	03060613          	addi	a2,a2,48
1c00d032:	828d                	srli	a3,a3,0x3
1c00d034:	fec78fa3          	sb	a2,-1(a5)
1c00d038:	fae5                	bnez	a3,1c00d028 <pos_libc_prf+0x3b6>
1c00d03a:	40b789b3          	sub	s3,a5,a1
1c00d03e:	0149db63          	ble	s4,s3,1c00d054 <pos_libc_prf+0x3e2>
1c00d042:	03000693          	li	a3,48
1c00d046:	0785                	addi	a5,a5,1
1c00d048:	fed78fa3          	sb	a3,-1(a5)
1c00d04c:	40b789b3          	sub	s3,a5,a1
1c00d050:	ff49cbe3          	blt	s3,s4,1c00d046 <pos_libc_prf+0x3d4>
1c00d054:	00078023          	sb	zero,0(a5)
1c00d058:	17fd                	addi	a5,a5,-1
1c00d05a:	00f77e63          	bleu	a5,a4,1c00d076 <pos_libc_prf+0x404>
1c00d05e:	00074603          	lbu	a2,0(a4)
1c00d062:	0007c683          	lbu	a3,0(a5)
1c00d066:	00c78023          	sb	a2,0(a5)
1c00d06a:	00d70023          	sb	a3,0(a4)
1c00d06e:	17fd                	addi	a5,a5,-1
1c00d070:	0705                	addi	a4,a4,1
1c00d072:	fef766e3          	bltu	a4,a5,1c00d05e <pos_libc_prf+0x3ec>
1c00d076:	4832                	lw	a6,12(sp)
1c00d078:	57fd                	li	a5,-1
1c00d07a:	99c2                	add	s3,s3,a6
1c00d07c:	22fa0ee3          	beq	s4,a5,1c00dab8 <pos_libc_prf+0xe46>
1c00d080:	0c800793          	li	a5,200
1c00d084:	e937cde3          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00d088:	02000693          	li	a3,32
1c00d08c:	8c2a                	mv	s8,a0
1c00d08e:	c602                	sw	zero,12(sp)
1c00d090:	c836                	sw	a3,16(sp)
1c00d092:	d729cfe3          	blt	s3,s2,1c00ce10 <pos_libc_prf+0x19e>
1c00d096:	b58d                	j	1c00cef8 <pos_libc_prf+0x286>
1c00d098:	fd078593          	addi	a1,a5,-48
1c00d09c:	4725                	li	a4,9
1c00d09e:	8dbe                	mv	s11,a5
1c00d0a0:	4a01                	li	s4,0
1c00d0a2:	4625                	li	a2,9
1c00d0a4:	00b77663          	bleu	a1,a4,1c00d0b0 <pos_libc_prf+0x43e>
1c00d0a8:	1070006f          	j	1c00d9ae <pos_libc_prf+0xd3c>
1c00d0ac:	89b6                	mv	s3,a3
1c00d0ae:	0685                	addi	a3,a3,1
1c00d0b0:	002a1793          	slli	a5,s4,0x2
1c00d0b4:	97d2                	add	a5,a5,s4
1c00d0b6:	0786                	slli	a5,a5,0x1
1c00d0b8:	97ee                	add	a5,a5,s11
1c00d0ba:	0006cd83          	lbu	s11,0(a3)
1c00d0be:	fd078a13          	addi	s4,a5,-48
1c00d0c2:	fd0d8793          	addi	a5,s11,-48
1c00d0c6:	fef673e3          	bleu	a5,a2,1c00d0ac <pos_libc_prf+0x43a>
1c00d0ca:	0989                	addi	s3,s3,2
1c00d0cc:	b70d                	j	1c00cfee <pos_libc_prf+0x37c>
1c00d0ce:	4785                	li	a5,1
1c00d0d0:	41200933          	neg	s2,s2
1c00d0d4:	ce3e                	sw	a5,28(sp)
1c00d0d6:	bd45                	j	1c00cf86 <pos_libc_prf+0x314>
1c00d0d8:	0c1d                	addi	s8,s8,7
1c00d0da:	ff8c7c13          	andi	s8,s8,-8
1c00d0de:	000c2703          	lw	a4,0(s8)
1c00d0e2:	004c2803          	lw	a6,4(s8)
1c00d0e6:	01575693          	srli	a3,a4,0x15
1c00d0ea:	00b81613          	slli	a2,a6,0xb
1c00d0ee:	8e55                	or	a2,a2,a3
1c00d0f0:	01485513          	srli	a0,a6,0x14
1c00d0f4:	00b71693          	slli	a3,a4,0xb
1c00d0f8:	80000737          	lui	a4,0x80000
1c00d0fc:	fff74713          	not	a4,a4
1c00d100:	7ff57513          	andi	a0,a0,2047
1c00d104:	7ff00593          	li	a1,2047
1c00d108:	0c21                	addi	s8,s8,8
1c00d10a:	8e79                	and	a2,a2,a4
1c00d10c:	0ab504e3          	beq	a0,a1,1c00d9b4 <pos_libc_prf+0xd42>
1c00d110:	04600593          	li	a1,70
1c00d114:	00bd9463          	bne	s11,a1,1c00d11c <pos_libc_prf+0x4aa>
1c00d118:	06600d93          	li	s11,102
1c00d11c:	00d56733          	or	a4,a0,a3
1c00d120:	8f51                	or	a4,a4,a2
1c00d122:	7e070963          	beqz	a4,1c00d914 <pos_libc_prf+0xca2>
1c00d126:	800005b7          	lui	a1,0x80000
1c00d12a:	c0250513          	addi	a0,a0,-1022
1c00d12e:	8dd1                	or	a1,a1,a2
1c00d130:	26084ae3          	bltz	a6,1c00dba4 <pos_libc_prf+0xf32>
1c00d134:	4852                	lw	a6,20(sp)
1c00d136:	220808e3          	beqz	a6,1c00db66 <pos_libc_prf+0xef4>
1c00d13a:	02b00713          	li	a4,43
1c00d13e:	02e10223          	sb	a4,36(sp)
1c00d142:	02510e93          	addi	t4,sp,37
1c00d146:	5779                	li	a4,-2
1c00d148:	4301                	li	t1,0
1c00d14a:	06e55763          	ble	a4,a0,1c00d1b8 <pos_libc_prf+0x546>
1c00d14e:	33333837          	lui	a6,0x33333
1c00d152:	800008b7          	lui	a7,0x80000
1c00d156:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00d15a:	fff8c893          	not	a7,a7
1c00d15e:	5e79                	li	t3,-2
1c00d160:	a011                	j	1c00d164 <pos_libc_prf+0x4f2>
1c00d162:	853e                	mv	a0,a5
1c00d164:	01f59613          	slli	a2,a1,0x1f
1c00d168:	0016d713          	srli	a4,a3,0x1
1c00d16c:	0016f793          	andi	a5,a3,1
1c00d170:	8f51                	or	a4,a4,a2
1c00d172:	00e786b3          	add	a3,a5,a4
1c00d176:	00f6b7b3          	sltu	a5,a3,a5
1c00d17a:	8185                	srli	a1,a1,0x1
1c00d17c:	95be                	add	a1,a1,a5
1c00d17e:	00150793          	addi	a5,a0,1
1c00d182:	feb860e3          	bltu	a6,a1,1c00d162 <pos_libc_prf+0x4f0>
1c00d186:	00269613          	slli	a2,a3,0x2
1c00d18a:	01e6df13          	srli	t5,a3,0x1e
1c00d18e:	00259713          	slli	a4,a1,0x2
1c00d192:	96b2                	add	a3,a3,a2
1c00d194:	00ef6733          	or	a4,t5,a4
1c00d198:	95ba                	add	a1,a1,a4
1c00d19a:	00c6b633          	sltu	a2,a3,a2
1c00d19e:	95b2                	add	a1,a1,a2
1c00d1a0:	01f6d713          	srli	a4,a3,0x1f
1c00d1a4:	0509                	addi	a0,a0,2
1c00d1a6:	137d                	addi	t1,t1,-1
1c00d1a8:	01159663          	bne	a1,a7,1c00d1b4 <pos_libc_prf+0x542>
1c00d1ac:	0686                	slli	a3,a3,0x1
1c00d1ae:	ffe76593          	ori	a1,a4,-2
1c00d1b2:	853e                	mv	a0,a5
1c00d1b4:	fbc548e3          	blt	a0,t3,1c00d164 <pos_libc_prf+0x4f2>
1c00d1b8:	06a05563          	blez	a0,1c00d222 <pos_libc_prf+0x5b0>
1c00d1bc:	800008b7          	lui	a7,0x80000
1c00d1c0:	4e15                	li	t3,5
1c00d1c2:	fff8c893          	not	a7,a7
1c00d1c6:	00268613          	addi	a2,a3,2
1c00d1ca:	00d636b3          	sltu	a3,a2,a3
1c00d1ce:	95b6                	add	a1,a1,a3
1c00d1d0:	03c5d7b3          	divu	a5,a1,t3
1c00d1d4:	00279713          	slli	a4,a5,0x2
1c00d1d8:	973e                	add	a4,a4,a5
1c00d1da:	8d99                	sub	a1,a1,a4
1c00d1dc:	01d59713          	slli	a4,a1,0x1d
1c00d1e0:	00365593          	srli	a1,a2,0x3
1c00d1e4:	8dd9                	or	a1,a1,a4
1c00d1e6:	03c5d5b3          	divu	a1,a1,t3
1c00d1ea:	00359693          	slli	a3,a1,0x3
1c00d1ee:	00559713          	slli	a4,a1,0x5
1c00d1f2:	9736                	add	a4,a4,a3
1c00d1f4:	40e60733          	sub	a4,a2,a4
1c00d1f8:	03c75733          	divu	a4,a4,t3
1c00d1fc:	81f5                	srli	a1,a1,0x1d
1c00d1fe:	96ba                	add	a3,a3,a4
1c00d200:	97ae                	add	a5,a5,a1
1c00d202:	00e6b733          	sltu	a4,a3,a4
1c00d206:	00f705b3          	add	a1,a4,a5
1c00d20a:	157d                	addi	a0,a0,-1
1c00d20c:	0305                	addi	t1,t1,1
1c00d20e:	01f6d793          	srli	a5,a3,0x1f
1c00d212:	0586                	slli	a1,a1,0x1
1c00d214:	8ddd                	or	a1,a1,a5
1c00d216:	0686                	slli	a3,a3,0x1
1c00d218:	157d                	addi	a0,a0,-1
1c00d21a:	feb8fae3          	bleu	a1,a7,1c00d20e <pos_libc_prf+0x59c>
1c00d21e:	faa044e3          	bgtz	a0,1c00d1c6 <pos_libc_prf+0x554>
1c00d222:	4611                	li	a2,4
1c00d224:	01f59713          	slli	a4,a1,0x1f
1c00d228:	0016d793          	srli	a5,a3,0x1
1c00d22c:	8fd9                	or	a5,a5,a4
1c00d22e:	8a85                	andi	a3,a3,1
1c00d230:	00f688b3          	add	a7,a3,a5
1c00d234:	8185                	srli	a1,a1,0x1
1c00d236:	00d8b6b3          	sltu	a3,a7,a3
1c00d23a:	00b68733          	add	a4,a3,a1
1c00d23e:	0505                	addi	a0,a0,1
1c00d240:	86c6                	mv	a3,a7
1c00d242:	85ba                	mv	a1,a4
1c00d244:	fec510e3          	bne	a0,a2,1c00d224 <pos_libc_prf+0x5b2>
1c00d248:	06700693          	li	a3,103
1c00d24c:	040a48e3          	bltz	s4,1c00da9c <pos_libc_prf+0xe2a>
1c00d250:	70dd8b63          	beq	s11,a3,1c00d966 <pos_libc_prf+0xcf4>
1c00d254:	04700693          	li	a3,71
1c00d258:	70dd8763          	beq	s11,a3,1c00d966 <pos_libc_prf+0xcf4>
1c00d25c:	06600693          	li	a3,102
1c00d260:	08dd89e3          	beq	s11,a3,1c00daf2 <pos_libc_prf+0xe80>
1c00d264:	001a0e13          	addi	t3,s4,1
1c00d268:	46c1                	li	a3,16
1c00d26a:	01c6d363          	ble	t3,a3,1c00d270 <pos_libc_prf+0x5fe>
1c00d26e:	4e41                	li	t3,16
1c00d270:	1e7d                	addi	t3,t3,-1
1c00d272:	4f81                	li	t6,0
1c00d274:	4681                	li	a3,0
1c00d276:	08000637          	lui	a2,0x8000
1c00d27a:	4f15                	li	t5,5
1c00d27c:	52fd                	li	t0,-1
1c00d27e:	00268593          	addi	a1,a3,2
1c00d282:	00d5b7b3          	sltu	a5,a1,a3
1c00d286:	97b2                	add	a5,a5,a2
1c00d288:	03e7d633          	divu	a2,a5,t5
1c00d28c:	00261693          	slli	a3,a2,0x2
1c00d290:	96b2                	add	a3,a3,a2
1c00d292:	8f95                	sub	a5,a5,a3
1c00d294:	07f6                	slli	a5,a5,0x1d
1c00d296:	0035d513          	srli	a0,a1,0x3
1c00d29a:	8d5d                	or	a0,a0,a5
1c00d29c:	03e55533          	divu	a0,a0,t5
1c00d2a0:	00351693          	slli	a3,a0,0x3
1c00d2a4:	00551793          	slli	a5,a0,0x5
1c00d2a8:	97b6                	add	a5,a5,a3
1c00d2aa:	40f587b3          	sub	a5,a1,a5
1c00d2ae:	03e7d7b3          	divu	a5,a5,t5
1c00d2b2:	8175                	srli	a0,a0,0x1d
1c00d2b4:	96be                	add	a3,a3,a5
1c00d2b6:	00f6b7b3          	sltu	a5,a3,a5
1c00d2ba:	962a                	add	a2,a2,a0
1c00d2bc:	963e                	add	a2,a2,a5
1c00d2be:	01f61513          	slli	a0,a2,0x1f
1c00d2c2:	0016d793          	srli	a5,a3,0x1
1c00d2c6:	0016f593          	andi	a1,a3,1
1c00d2ca:	8fc9                	or	a5,a5,a0
1c00d2cc:	00f586b3          	add	a3,a1,a5
1c00d2d0:	8205                	srli	a2,a2,0x1
1c00d2d2:	00b6b7b3          	sltu	a5,a3,a1
1c00d2d6:	1e7d                	addi	t3,t3,-1
1c00d2d8:	963e                	add	a2,a2,a5
1c00d2da:	fa5e12e3          	bne	t3,t0,1c00d27e <pos_libc_prf+0x60c>
1c00d2de:	96c6                	add	a3,a3,a7
1c00d2e0:	963a                	add	a2,a2,a4
1c00d2e2:	0116b8b3          	sltu	a7,a3,a7
1c00d2e6:	9646                	add	a2,a2,a7
1c00d2e8:	f00005b7          	lui	a1,0xf0000
1c00d2ec:	8df1                	and	a1,a1,a2
1c00d2ee:	8736                	mv	a4,a3
1c00d2f0:	cdb9                	beqz	a1,1c00d34e <pos_libc_prf+0x6dc>
1c00d2f2:	0689                	addi	a3,a3,2
1c00d2f4:	00e6b733          	sltu	a4,a3,a4
1c00d2f8:	963a                	add	a2,a2,a4
1c00d2fa:	4815                	li	a6,5
1c00d2fc:	03065533          	divu	a0,a2,a6
1c00d300:	00251713          	slli	a4,a0,0x2
1c00d304:	972a                	add	a4,a4,a0
1c00d306:	8e19                	sub	a2,a2,a4
1c00d308:	01d61713          	slli	a4,a2,0x1d
1c00d30c:	0036d593          	srli	a1,a3,0x3
1c00d310:	8dd9                	or	a1,a1,a4
1c00d312:	0305d5b3          	divu	a1,a1,a6
1c00d316:	00359613          	slli	a2,a1,0x3
1c00d31a:	00559713          	slli	a4,a1,0x5
1c00d31e:	9732                	add	a4,a4,a2
1c00d320:	40e68733          	sub	a4,a3,a4
1c00d324:	03075733          	divu	a4,a4,a6
1c00d328:	81f5                	srli	a1,a1,0x1d
1c00d32a:	963a                	add	a2,a2,a4
1c00d32c:	00e63733          	sltu	a4,a2,a4
1c00d330:	95aa                	add	a1,a1,a0
1c00d332:	00b706b3          	add	a3,a4,a1
1c00d336:	01f69593          	slli	a1,a3,0x1f
1c00d33a:	00165713          	srli	a4,a2,0x1
1c00d33e:	8f4d                	or	a4,a4,a1
1c00d340:	8a05                	andi	a2,a2,1
1c00d342:	9732                	add	a4,a4,a2
1c00d344:	8285                	srli	a3,a3,0x1
1c00d346:	00c73633          	sltu	a2,a4,a2
1c00d34a:	9636                	add	a2,a2,a3
1c00d34c:	0305                	addi	t1,t1,1
1c00d34e:	001e8993          	addi	s3,t4,1
1c00d352:	06600693          	li	a3,102
1c00d356:	85ce                	mv	a1,s3
1c00d358:	6add8663          	beq	s11,a3,1c00da04 <pos_libc_prf+0xd92>
1c00d35c:	00271693          	slli	a3,a4,0x2
1c00d360:	01e75593          	srli	a1,a4,0x1e
1c00d364:	00261513          	slli	a0,a2,0x2
1c00d368:	9736                	add	a4,a4,a3
1c00d36a:	8d4d                	or	a0,a0,a1
1c00d36c:	962a                	add	a2,a2,a0
1c00d36e:	00d735b3          	sltu	a1,a4,a3
1c00d372:	95b2                	add	a1,a1,a2
1c00d374:	01f75693          	srli	a3,a4,0x1f
1c00d378:	0586                	slli	a1,a1,0x1
1c00d37a:	8dd5                	or	a1,a1,a3
1c00d37c:	01c5d693          	srli	a3,a1,0x1c
1c00d380:	03068613          	addi	a2,a3,48
1c00d384:	00d036b3          	snez	a3,a3
1c00d388:	10000537          	lui	a0,0x10000
1c00d38c:	40d30333          	sub	t1,t1,a3
1c00d390:	46b2                	lw	a3,12(sp)
1c00d392:	157d                	addi	a0,a0,-1
1c00d394:	00ce8023          	sb	a2,0(t4)
1c00d398:	0706                	slli	a4,a4,0x1
1c00d39a:	8de9                	and	a1,a1,a0
1c00d39c:	64068b63          	beqz	a3,1c00d9f2 <pos_libc_prf+0xd80>
1c00d3a0:	02e00693          	li	a3,46
1c00d3a4:	00de80a3          	sb	a3,1(t4)
1c00d3a8:	002e8513          	addi	a0,t4,2
1c00d3ac:	020a00e3          	beqz	s4,1c00dbcc <pos_libc_prf+0xf5a>
1c00d3b0:	014509b3          	add	s3,a0,s4
1c00d3b4:	48bd                	li	a7,15
1c00d3b6:	03000e13          	li	t3,48
1c00d3ba:	00271793          	slli	a5,a4,0x2
1c00d3be:	01e75813          	srli	a6,a4,0x1e
1c00d3c2:	00259693          	slli	a3,a1,0x2
1c00d3c6:	00e78633          	add	a2,a5,a4
1c00d3ca:	00d866b3          	or	a3,a6,a3
1c00d3ce:	96ae                	add	a3,a3,a1
1c00d3d0:	00f637b3          	sltu	a5,a2,a5
1c00d3d4:	97b6                	add	a5,a5,a3
1c00d3d6:	0786                	slli	a5,a5,0x1
1c00d3d8:	01f65693          	srli	a3,a2,0x1f
1c00d3dc:	8fd5                	or	a5,a5,a3
1c00d3de:	01c7d693          	srli	a3,a5,0x1c
1c00d3e2:	03068693          	addi	a3,a3,48
1c00d3e6:	0505                	addi	a0,a0,1
1c00d3e8:	3b105663          	blez	a7,1c00d794 <pos_libc_prf+0xb22>
1c00d3ec:	10000837          	lui	a6,0x10000
1c00d3f0:	187d                	addi	a6,a6,-1
1c00d3f2:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00d3f6:	18fd                	addi	a7,a7,-1
1c00d3f8:	00161713          	slli	a4,a2,0x1
1c00d3fc:	0107f5b3          	and	a1,a5,a6
1c00d400:	faa99de3          	bne	s3,a0,1c00d3ba <pos_libc_prf+0x748>
1c00d404:	0c0f9263          	bnez	t6,1c00d4c8 <pos_libc_prf+0x856>
1c00d408:	fdfdf713          	andi	a4,s11,-33
1c00d40c:	04500693          	li	a3,69
1c00d410:	02d71963          	bne	a4,a3,1c00d442 <pos_libc_prf+0x7d0>
1c00d414:	87ee                	mv	a5,s11
1c00d416:	00f98023          	sb	a5,0(s3)
1c00d41a:	6a034763          	bltz	t1,1c00dac8 <pos_libc_prf+0xe56>
1c00d41e:	02b00793          	li	a5,43
1c00d422:	00f980a3          	sb	a5,1(s3)
1c00d426:	47a9                	li	a5,10
1c00d428:	02f34733          	div	a4,t1,a5
1c00d42c:	02f367b3          	rem	a5,t1,a5
1c00d430:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00d434:	03078793          	addi	a5,a5,48
1c00d438:	00e98123          	sb	a4,2(s3)
1c00d43c:	00f981a3          	sb	a5,3(s3)
1c00d440:	0991                	addi	s3,s3,4
1c00d442:	00098023          	sb	zero,0(s3)
1c00d446:	419989b3          	sub	s3,s3,s9
1c00d44a:	48d2                	lw	a7,20(sp)
1c00d44c:	4662                	lw	a2,24(sp)
1c00d44e:	00c8e8b3          	or	a7,a7,a2
1c00d452:	c646                	sw	a7,12(sp)
1c00d454:	34089d63          	bnez	a7,1c00d7ae <pos_libc_prf+0xb3c>
1c00d458:	02414703          	lbu	a4,36(sp)
1c00d45c:	02d00793          	li	a5,45
1c00d460:	34f70763          	beq	a4,a5,1c00d7ae <pos_libc_prf+0xb3c>
1c00d464:	0c800793          	li	a5,200
1c00d468:	ab37cbe3          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00d46c:	9b29c2e3          	blt	s3,s2,1c00ce10 <pos_libc_prf+0x19e>
1c00d470:	b461                	j	1c00cef8 <pos_libc_prf+0x286>
1c00d472:	0585                	addi	a1,a1,1
1c00d474:	00271793          	slli	a5,a4,0x2
1c00d478:	01e75e13          	srli	t3,a4,0x1e
1c00d47c:	00261693          	slli	a3,a2,0x2
1c00d480:	00e788b3          	add	a7,a5,a4
1c00d484:	00de66b3          	or	a3,t3,a3
1c00d488:	96b2                	add	a3,a3,a2
1c00d48a:	00f8b7b3          	sltu	a5,a7,a5
1c00d48e:	97b6                	add	a5,a5,a3
1c00d490:	0786                	slli	a5,a5,0x1
1c00d492:	01f8d693          	srli	a3,a7,0x1f
1c00d496:	8fd5                	or	a5,a5,a3
1c00d498:	01c7de13          	srli	t3,a5,0x1c
1c00d49c:	03000693          	li	a3,48
1c00d4a0:	00a05c63          	blez	a0,1c00d4b8 <pos_libc_prf+0x846>
1c00d4a4:	00189713          	slli	a4,a7,0x1
1c00d4a8:	100008b7          	lui	a7,0x10000
1c00d4ac:	18fd                	addi	a7,a7,-1
1c00d4ae:	030e0693          	addi	a3,t3,48
1c00d4b2:	157d                	addi	a0,a0,-1
1c00d4b4:	0117f633          	and	a2,a5,a7
1c00d4b8:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00d4bc:	fab99be3          	bne	s3,a1,1c00d472 <pos_libc_prf+0x800>
1c00d4c0:	014809b3          	add	s3,a6,s4
1c00d4c4:	f60f8fe3          	beqz	t6,1c00d442 <pos_libc_prf+0x7d0>
1c00d4c8:	03000613          	li	a2,48
1c00d4cc:	a011                	j	1c00d4d0 <pos_libc_prf+0x85e>
1c00d4ce:	89ba                	mv	s3,a4
1c00d4d0:	fff9c683          	lbu	a3,-1(s3)
1c00d4d4:	fff98713          	addi	a4,s3,-1
1c00d4d8:	fec68be3          	beq	a3,a2,1c00d4ce <pos_libc_prf+0x85c>
1c00d4dc:	02e00613          	li	a2,46
1c00d4e0:	f2c694e3          	bne	a3,a2,1c00d408 <pos_libc_prf+0x796>
1c00d4e4:	89ba                	mv	s3,a4
1c00d4e6:	b70d                	j	1c00d408 <pos_libc_prf+0x796>
1c00d4e8:	06300713          	li	a4,99
1c00d4ec:	16ed8863          	beq	s11,a4,1c00d65c <pos_libc_prf+0x9ea>
1c00d4f0:	0db74363          	blt	a4,s11,1c00d5b6 <pos_libc_prf+0x944>
1c00d4f4:	05800713          	li	a4,88
1c00d4f8:	28ed9763          	bne	s11,a4,1c00d786 <pos_libc_prf+0xb14>
1c00d4fc:	48b2                	lw	a7,12(sp)
1c00d4fe:	004c0813          	addi	a6,s8,4
1c00d502:	000c2583          	lw	a1,0(s8)
1c00d506:	3c088a63          	beqz	a7,1c00d8da <pos_libc_prf+0xc68>
1c00d50a:	7761                	lui	a4,0xffff8
1c00d50c:	83074713          	xori	a4,a4,-2000
1c00d510:	02e11223          	sh	a4,36(sp)
1c00d514:	4889                	li	a7,2
1c00d516:	02610693          	addi	a3,sp,38
1c00d51a:	8736                	mv	a4,a3
1c00d51c:	4e25                	li	t3,9
1c00d51e:	00f5f613          	andi	a2,a1,15
1c00d522:	0ff67793          	andi	a5,a2,255
1c00d526:	03078513          	addi	a0,a5,48
1c00d52a:	8191                	srli	a1,a1,0x4
1c00d52c:	05778793          	addi	a5,a5,87
1c00d530:	0705                	addi	a4,a4,1
1c00d532:	06ce6a63          	bltu	t3,a2,1c00d5a6 <pos_libc_prf+0x934>
1c00d536:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00d53a:	f1f5                	bnez	a1,1c00d51e <pos_libc_prf+0x8ac>
1c00d53c:	40d709b3          	sub	s3,a4,a3
1c00d540:	0149db63          	ble	s4,s3,1c00d556 <pos_libc_prf+0x8e4>
1c00d544:	03000613          	li	a2,48
1c00d548:	0705                	addi	a4,a4,1
1c00d54a:	fec70fa3          	sb	a2,-1(a4)
1c00d54e:	40d709b3          	sub	s3,a4,a3
1c00d552:	ff49cbe3          	blt	s3,s4,1c00d548 <pos_libc_prf+0x8d6>
1c00d556:	00070023          	sb	zero,0(a4)
1c00d55a:	177d                	addi	a4,a4,-1
1c00d55c:	00e6fe63          	bleu	a4,a3,1c00d578 <pos_libc_prf+0x906>
1c00d560:	0006c603          	lbu	a2,0(a3)
1c00d564:	00074783          	lbu	a5,0(a4)
1c00d568:	00c70023          	sb	a2,0(a4)
1c00d56c:	00f68023          	sb	a5,0(a3)
1c00d570:	177d                	addi	a4,a4,-1
1c00d572:	0685                	addi	a3,a3,1
1c00d574:	fee6e6e3          	bltu	a3,a4,1c00d560 <pos_libc_prf+0x8ee>
1c00d578:	05800713          	li	a4,88
1c00d57c:	36ed8263          	beq	s11,a4,1c00d8e0 <pos_libc_prf+0xc6e>
1c00d580:	46b2                	lw	a3,12(sp)
1c00d582:	99c6                	add	s3,s3,a7
1c00d584:	c299                	beqz	a3,1c00d58a <pos_libc_prf+0x918>
1c00d586:	4709                	li	a4,2
1c00d588:	c63a                	sw	a4,12(sp)
1c00d58a:	57fd                	li	a5,-1
1c00d58c:	3afa0263          	beq	s4,a5,1c00d930 <pos_libc_prf+0xcbe>
1c00d590:	0c800793          	li	a5,200
1c00d594:	9937c5e3          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00d598:	02000793          	li	a5,32
1c00d59c:	c83e                	sw	a5,16(sp)
1c00d59e:	8c42                	mv	s8,a6
1c00d5a0:	8729c8e3          	blt	s3,s2,1c00ce10 <pos_libc_prf+0x19e>
1c00d5a4:	ba91                	j	1c00cef8 <pos_libc_prf+0x286>
1c00d5a6:	fef70fa3          	sb	a5,-1(a4)
1c00d5aa:	f9b5                	bnez	a1,1c00d51e <pos_libc_prf+0x8ac>
1c00d5ac:	bf41                	j	1c00d53c <pos_libc_prf+0x8ca>
1c00d5ae:	06900713          	li	a4,105
1c00d5b2:	1ced9a63          	bne	s11,a4,1c00d786 <pos_libc_prf+0xb14>
1c00d5b6:	000c2583          	lw	a1,0(s8)
1c00d5ba:	0c11                	addi	s8,s8,4
1c00d5bc:	3805c863          	bltz	a1,1c00d94c <pos_libc_prf+0xcda>
1c00d5c0:	48d2                	lw	a7,20(sp)
1c00d5c2:	872e                	mv	a4,a1
1c00d5c4:	36089d63          	bnez	a7,1c00d93e <pos_libc_prf+0xccc>
1c00d5c8:	4662                	lw	a2,24(sp)
1c00d5ca:	87e6                	mv	a5,s9
1c00d5cc:	c619                	beqz	a2,1c00d5da <pos_libc_prf+0x968>
1c00d5ce:	02000793          	li	a5,32
1c00d5d2:	02f10223          	sb	a5,36(sp)
1c00d5d6:	02510793          	addi	a5,sp,37
1c00d5da:	89be                	mv	s3,a5
1c00d5dc:	4629                	li	a2,10
1c00d5de:	02c776b3          	remu	a3,a4,a2
1c00d5e2:	02c75733          	divu	a4,a4,a2
1c00d5e6:	0985                	addi	s3,s3,1
1c00d5e8:	03068693          	addi	a3,a3,48
1c00d5ec:	fed98fa3          	sb	a3,-1(s3)
1c00d5f0:	f77d                	bnez	a4,1c00d5de <pos_libc_prf+0x96c>
1c00d5f2:	40f98733          	sub	a4,s3,a5
1c00d5f6:	01475b63          	ble	s4,a4,1c00d60c <pos_libc_prf+0x99a>
1c00d5fa:	03000693          	li	a3,48
1c00d5fe:	0985                	addi	s3,s3,1
1c00d600:	fed98fa3          	sb	a3,-1(s3)
1c00d604:	40f98733          	sub	a4,s3,a5
1c00d608:	ff474be3          	blt	a4,s4,1c00d5fe <pos_libc_prf+0x98c>
1c00d60c:	00098023          	sb	zero,0(s3)
1c00d610:	fff98713          	addi	a4,s3,-1
1c00d614:	00e7fe63          	bleu	a4,a5,1c00d630 <pos_libc_prf+0x9be>
1c00d618:	0007c603          	lbu	a2,0(a5)
1c00d61c:	00074683          	lbu	a3,0(a4)
1c00d620:	00c70023          	sb	a2,0(a4)
1c00d624:	00d78023          	sb	a3,0(a5)
1c00d628:	177d                	addi	a4,a4,-1
1c00d62a:	0785                	addi	a5,a5,1
1c00d62c:	fee7e6e3          	bltu	a5,a4,1c00d618 <pos_libc_prf+0x9a6>
1c00d630:	46d2                	lw	a3,20(sp)
1c00d632:	4762                	lw	a4,24(sp)
1c00d634:	419989b3          	sub	s3,s3,s9
1c00d638:	8ed9                	or	a3,a3,a4
1c00d63a:	c636                	sw	a3,12(sp)
1c00d63c:	e299                	bnez	a3,1c00d642 <pos_libc_prf+0x9d0>
1c00d63e:	81fd                	srli	a1,a1,0x1f
1c00d640:	c62e                	sw	a1,12(sp)
1c00d642:	57fd                	li	a5,-1
1c00d644:	e2fa00e3          	beq	s4,a5,1c00d464 <pos_libc_prf+0x7f2>
1c00d648:	0c800793          	li	a5,200
1c00d64c:	8d37c9e3          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00d650:	02000793          	li	a5,32
1c00d654:	c83e                	sw	a5,16(sp)
1c00d656:	fb29cd63          	blt	s3,s2,1c00ce10 <pos_libc_prf+0x19e>
1c00d65a:	b879                	j	1c00cef8 <pos_libc_prf+0x286>
1c00d65c:	000c2783          	lw	a5,0(s8)
1c00d660:	020102a3          	sb	zero,37(sp)
1c00d664:	02f10223          	sb	a5,36(sp)
1c00d668:	0c11                	addi	s8,s8,4
1c00d66a:	4985                	li	s3,1
1c00d66c:	f9eff06f          	j	1c00ce0a <pos_libc_prf+0x198>
1c00d670:	000c2703          	lw	a4,0(s8)
1c00d674:	87e6                	mv	a5,s9
1c00d676:	0c11                	addi	s8,s8,4
1c00d678:	4629                	li	a2,10
1c00d67a:	02c776b3          	remu	a3,a4,a2
1c00d67e:	02c75733          	divu	a4,a4,a2
1c00d682:	0785                	addi	a5,a5,1
1c00d684:	03068693          	addi	a3,a3,48
1c00d688:	fed78fa3          	sb	a3,-1(a5)
1c00d68c:	f77d                	bnez	a4,1c00d67a <pos_libc_prf+0xa08>
1c00d68e:	419789b3          	sub	s3,a5,s9
1c00d692:	0149db63          	ble	s4,s3,1c00d6a8 <pos_libc_prf+0xa36>
1c00d696:	03000713          	li	a4,48
1c00d69a:	0785                	addi	a5,a5,1
1c00d69c:	fee78fa3          	sb	a4,-1(a5)
1c00d6a0:	419789b3          	sub	s3,a5,s9
1c00d6a4:	ff49cbe3          	blt	s3,s4,1c00d69a <pos_libc_prf+0xa28>
1c00d6a8:	00078023          	sb	zero,0(a5)
1c00d6ac:	17fd                	addi	a5,a5,-1
1c00d6ae:	00fcff63          	bleu	a5,s9,1c00d6cc <pos_libc_prf+0xa5a>
1c00d6b2:	8766                	mv	a4,s9
1c00d6b4:	00074603          	lbu	a2,0(a4)
1c00d6b8:	0007c683          	lbu	a3,0(a5)
1c00d6bc:	00c78023          	sb	a2,0(a5)
1c00d6c0:	00d70023          	sb	a3,0(a4)
1c00d6c4:	17fd                	addi	a5,a5,-1
1c00d6c6:	0705                	addi	a4,a4,1
1c00d6c8:	fef766e3          	bltu	a4,a5,1c00d6b4 <pos_libc_prf+0xa42>
1c00d6cc:	57fd                	li	a5,-1
1c00d6ce:	0cfa0a63          	beq	s4,a5,1c00d7a2 <pos_libc_prf+0xb30>
1c00d6d2:	0c800793          	li	a5,200
1c00d6d6:	8537c4e3          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00d6da:	02000813          	li	a6,32
1c00d6de:	c602                	sw	zero,12(sp)
1c00d6e0:	c842                	sw	a6,16(sp)
1c00d6e2:	ba45                	j	1c00d092 <pos_libc_prf+0x420>
1c00d6e4:	77e1                	lui	a5,0xffff8
1c00d6e6:	8307c793          	xori	a5,a5,-2000
1c00d6ea:	02610713          	addi	a4,sp,38
1c00d6ee:	000c2603          	lw	a2,0(s8)
1c00d6f2:	02f11223          	sh	a5,36(sp)
1c00d6f6:	0c11                	addi	s8,s8,4
1c00d6f8:	87ba                	mv	a5,a4
1c00d6fa:	4825                	li	a6,9
1c00d6fc:	00f67593          	andi	a1,a2,15
1c00d700:	0ff5f693          	andi	a3,a1,255
1c00d704:	03068513          	addi	a0,a3,48
1c00d708:	8211                	srli	a2,a2,0x4
1c00d70a:	05768693          	addi	a3,a3,87
1c00d70e:	0785                	addi	a5,a5,1
1c00d710:	06b86163          	bltu	a6,a1,1c00d772 <pos_libc_prf+0xb00>
1c00d714:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00d718:	f275                	bnez	a2,1c00d6fc <pos_libc_prf+0xa8a>
1c00d71a:	40e789b3          	sub	s3,a5,a4
1c00d71e:	469d                	li	a3,7
1c00d720:	0136cb63          	blt	a3,s3,1c00d736 <pos_libc_prf+0xac4>
1c00d724:	03000613          	li	a2,48
1c00d728:	0785                	addi	a5,a5,1
1c00d72a:	fec78fa3          	sb	a2,-1(a5)
1c00d72e:	40e789b3          	sub	s3,a5,a4
1c00d732:	ff36dbe3          	ble	s3,a3,1c00d728 <pos_libc_prf+0xab6>
1c00d736:	00078023          	sb	zero,0(a5)
1c00d73a:	17fd                	addi	a5,a5,-1
1c00d73c:	00f77e63          	bleu	a5,a4,1c00d758 <pos_libc_prf+0xae6>
1c00d740:	00074603          	lbu	a2,0(a4)
1c00d744:	0007c683          	lbu	a3,0(a5)
1c00d748:	00c78023          	sb	a2,0(a5)
1c00d74c:	00d70023          	sb	a3,0(a4)
1c00d750:	17fd                	addi	a5,a5,-1
1c00d752:	0705                	addi	a4,a4,1
1c00d754:	fef766e3          	bltu	a4,a5,1c00d740 <pos_libc_prf+0xace>
1c00d758:	57fd                	li	a5,-1
1c00d75a:	0989                	addi	s3,s3,2
1c00d75c:	04fa0363          	beq	s4,a5,1c00d7a2 <pos_libc_prf+0xb30>
1c00d760:	0c800793          	li	a5,200
1c00d764:	fb37cd63          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00d768:	02000893          	li	a7,32
1c00d76c:	c602                	sw	zero,12(sp)
1c00d76e:	c846                	sw	a7,16(sp)
1c00d770:	b20d                	j	1c00d092 <pos_libc_prf+0x420>
1c00d772:	fed78fa3          	sb	a3,-1(a5)
1c00d776:	f259                	bnez	a2,1c00d6fc <pos_libc_prf+0xa8a>
1c00d778:	b74d                	j	1c00d71a <pos_libc_prf+0xaa8>
1c00d77a:	000c2783          	lw	a5,0(s8)
1c00d77e:	0c11                	addi	s8,s8,4
1c00d780:	c380                	sw	s0,0(a5)
1c00d782:	d36ff06f          	j	1c00ccb8 <pos_libc_prf+0x46>
1c00d786:	0c800713          	li	a4,200
1c00d78a:	d3b75763          	ble	s11,a4,1c00ccb8 <pos_libc_prf+0x46>
1c00d78e:	547d                	li	s0,-1
1c00d790:	d4cff06f          	j	1c00ccdc <pos_libc_prf+0x6a>
1c00d794:	ffc50fa3          	sb	t3,-1(a0)
1c00d798:	c2a991e3          	bne	s3,a0,1c00d3ba <pos_libc_prf+0x748>
1c00d79c:	c60f86e3          	beqz	t6,1c00d408 <pos_libc_prf+0x796>
1c00d7a0:	b325                	j	1c00d4c8 <pos_libc_prf+0x856>
1c00d7a2:	0c800793          	li	a5,200
1c00d7a6:	f737cc63          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00d7aa:	c602                	sw	zero,12(sp)
1c00d7ac:	b0dd                	j	1c00d092 <pos_libc_prf+0x420>
1c00d7ae:	0c800793          	li	a5,200
1c00d7b2:	f737c663          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00d7b6:	4705                	li	a4,1
1c00d7b8:	c63a                	sw	a4,12(sp)
1c00d7ba:	b8e1                	j	1c00d092 <pos_libc_prf+0x420>
1c00d7bc:	41390a33          	sub	s4,s2,s3
1c00d7c0:	00198613          	addi	a2,s3,1
1c00d7c4:	85e6                	mv	a1,s9
1c00d7c6:	014c8533          	add	a0,s9,s4
1c00d7ca:	a4aff0ef          	jal	ra,1c00ca14 <memmove>
1c00d7ce:	46c2                	lw	a3,16(sp)
1c00d7d0:	02000793          	li	a5,32
1c00d7d4:	30f68163          	beq	a3,a5,1c00dad6 <pos_libc_prf+0xe64>
1c00d7d8:	4732                	lw	a4,12(sp)
1c00d7da:	89ca                	mv	s3,s2
1c00d7dc:	9a3a                	add	s4,s4,a4
1c00d7de:	f1475d63          	ble	s4,a4,1c00cef8 <pos_libc_prf+0x286>
1c00d7e2:	4832                	lw	a6,12(sp)
1c00d7e4:	4715                	li	a4,5
1c00d7e6:	010c87b3          	add	a5,s9,a6
1c00d7ea:	40f007b3          	neg	a5,a5
1c00d7ee:	8b8d                	andi	a5,a5,3
1c00d7f0:	00378693          	addi	a3,a5,3
1c00d7f4:	410a05b3          	sub	a1,s4,a6
1c00d7f8:	00e6f363          	bleu	a4,a3,1c00d7fe <pos_libc_prf+0xb8c>
1c00d7fc:	4695                	li	a3,5
1c00d7fe:	48b2                	lw	a7,12(sp)
1c00d800:	fffa0713          	addi	a4,s4,-1
1c00d804:	41170733          	sub	a4,a4,a7
1c00d808:	06d76b63          	bltu	a4,a3,1c00d87e <pos_libc_prf+0xc0c>
1c00d80c:	86c6                	mv	a3,a7
1c00d80e:	cb9d                	beqz	a5,1c00d844 <pos_libc_prf+0xbd2>
1c00d810:	46c2                	lw	a3,16(sp)
1c00d812:	1988                	addi	a0,sp,240
1c00d814:	01150733          	add	a4,a0,a7
1c00d818:	f2d70a23          	sb	a3,-204(a4)
1c00d81c:	4705                	li	a4,1
1c00d81e:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00d822:	02e78163          	beq	a5,a4,1c00d844 <pos_libc_prf+0xbd2>
1c00d826:	4742                	lw	a4,16(sp)
1c00d828:	96aa                	add	a3,a3,a0
1c00d82a:	f2e68a23          	sb	a4,-204(a3)
1c00d82e:	470d                	li	a4,3
1c00d830:	00288693          	addi	a3,a7,2
1c00d834:	00e79863          	bne	a5,a4,1c00d844 <pos_libc_prf+0xbd2>
1c00d838:	4842                	lw	a6,16(sp)
1c00d83a:	96aa                	add	a3,a3,a0
1c00d83c:	f3068a23          	sb	a6,-204(a3)
1c00d840:	00388693          	addi	a3,a7,3
1c00d844:	48c2                	lw	a7,16(sp)
1c00d846:	4832                	lw	a6,12(sp)
1c00d848:	00889713          	slli	a4,a7,0x8
1c00d84c:	01089513          	slli	a0,a7,0x10
1c00d850:	00e8e733          	or	a4,a7,a4
1c00d854:	8d9d                	sub	a1,a1,a5
1c00d856:	01889613          	slli	a2,a7,0x18
1c00d85a:	8f49                	or	a4,a4,a0
1c00d85c:	97c2                	add	a5,a5,a6
1c00d85e:	8f51                	or	a4,a4,a2
1c00d860:	0025d513          	srli	a0,a1,0x2
1c00d864:	97e6                	add	a5,a5,s9
1c00d866:	4601                	li	a2,0
1c00d868:	c398                	sw	a4,0(a5)
1c00d86a:	0605                	addi	a2,a2,1
1c00d86c:	0791                	addi	a5,a5,4
1c00d86e:	fea66de3          	bltu	a2,a0,1c00d868 <pos_libc_prf+0xbf6>
1c00d872:	ffc5f793          	andi	a5,a1,-4
1c00d876:	96be                	add	a3,a3,a5
1c00d878:	c636                	sw	a3,12(sp)
1c00d87a:	e6b78e63          	beq	a5,a1,1c00cef6 <pos_libc_prf+0x284>
1c00d87e:	46b2                	lw	a3,12(sp)
1c00d880:	0f010893          	addi	a7,sp,240
1c00d884:	4742                	lw	a4,16(sp)
1c00d886:	00d887b3          	add	a5,a7,a3
1c00d88a:	f2e78a23          	sb	a4,-204(a5)
1c00d88e:	00168793          	addi	a5,a3,1
1c00d892:	e747d263          	ble	s4,a5,1c00cef6 <pos_libc_prf+0x284>
1c00d896:	97c6                	add	a5,a5,a7
1c00d898:	f2e78a23          	sb	a4,-204(a5)
1c00d89c:	00268793          	addi	a5,a3,2
1c00d8a0:	e547db63          	ble	s4,a5,1c00cef6 <pos_libc_prf+0x284>
1c00d8a4:	97c6                	add	a5,a5,a7
1c00d8a6:	f2e78a23          	sb	a4,-204(a5)
1c00d8aa:	00368793          	addi	a5,a3,3
1c00d8ae:	e547d463          	ble	s4,a5,1c00cef6 <pos_libc_prf+0x284>
1c00d8b2:	97c6                	add	a5,a5,a7
1c00d8b4:	f2e78a23          	sb	a4,-204(a5)
1c00d8b8:	00468793          	addi	a5,a3,4
1c00d8bc:	e347dd63          	ble	s4,a5,1c00cef6 <pos_libc_prf+0x284>
1c00d8c0:	97c6                	add	a5,a5,a7
1c00d8c2:	f2e78a23          	sb	a4,-204(a5)
1c00d8c6:	00568a93          	addi	s5,a3,5
1c00d8ca:	e34ad663          	ble	s4,s5,1c00cef6 <pos_libc_prf+0x284>
1c00d8ce:	9ac6                	add	s5,s5,a7
1c00d8d0:	f2ea8a23          	sb	a4,-204(s5)
1c00d8d4:	89ca                	mv	s3,s2
1c00d8d6:	e22ff06f          	j	1c00cef8 <pos_libc_prf+0x286>
1c00d8da:	4881                	li	a7,0
1c00d8dc:	1054                	addi	a3,sp,36
1c00d8de:	b935                	j	1c00d51a <pos_libc_prf+0x8a8>
1c00d8e0:	02414783          	lbu	a5,36(sp)
1c00d8e4:	1058                	addi	a4,sp,36
1c00d8e6:	46e5                	li	a3,25
1c00d8e8:	c8078ce3          	beqz	a5,1c00d580 <pos_libc_prf+0x90e>
1c00d8ec:	fe078613          	addi	a2,a5,-32
1c00d8f0:	f9f78793          	addi	a5,a5,-97
1c00d8f4:	0ff7f793          	andi	a5,a5,255
1c00d8f8:	00f6e963          	bltu	a3,a5,1c00d90a <pos_libc_prf+0xc98>
1c00d8fc:	00c70023          	sb	a2,0(a4)
1c00d900:	0705                	addi	a4,a4,1
1c00d902:	00074783          	lbu	a5,0(a4)
1c00d906:	f3fd                	bnez	a5,1c00d8ec <pos_libc_prf+0xc7a>
1c00d908:	b9a5                	j	1c00d580 <pos_libc_prf+0x90e>
1c00d90a:	0705                	addi	a4,a4,1
1c00d90c:	00074783          	lbu	a5,0(a4)
1c00d910:	fff1                	bnez	a5,1c00d8ec <pos_libc_prf+0xc7a>
1c00d912:	b1bd                	j	1c00d580 <pos_libc_prf+0x90e>
1c00d914:	47d2                	lw	a5,20(sp)
1c00d916:	20078263          	beqz	a5,1c00db1a <pos_libc_prf+0xea8>
1c00d91a:	02b00713          	li	a4,43
1c00d91e:	02e10223          	sb	a4,36(sp)
1c00d922:	02510e93          	addi	t4,sp,37
1c00d926:	4301                	li	t1,0
1c00d928:	4501                	li	a0,0
1c00d92a:	4681                	li	a3,0
1c00d92c:	4581                	li	a1,0
1c00d92e:	b8d5                	j	1c00d222 <pos_libc_prf+0x5b0>
1c00d930:	0c800793          	li	a5,200
1c00d934:	df37c563          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00d938:	8c42                	mv	s8,a6
1c00d93a:	f58ff06f          	j	1c00d092 <pos_libc_prf+0x420>
1c00d93e:	02b00793          	li	a5,43
1c00d942:	02f10223          	sb	a5,36(sp)
1c00d946:	02510793          	addi	a5,sp,37
1c00d94a:	b941                	j	1c00d5da <pos_libc_prf+0x968>
1c00d94c:	02d00793          	li	a5,45
1c00d950:	02f10223          	sb	a5,36(sp)
1c00d954:	800007b7          	lui	a5,0x80000
1c00d958:	22f58363          	beq	a1,a5,1c00db7e <pos_libc_prf+0xf0c>
1c00d95c:	40b00733          	neg	a4,a1
1c00d960:	02510793          	addi	a5,sp,37
1c00d964:	b99d                	j	1c00d5da <pos_libc_prf+0x968>
1c00d966:	47b2                	lw	a5,12(sp)
1c00d968:	4f81                	li	t6,0
1c00d96a:	e399                	bnez	a5,1c00d970 <pos_libc_prf+0xcfe>
1c00d96c:	01403fb3          	snez	t6,s4
1c00d970:	56f5                	li	a3,-3
1c00d972:	001a0e13          	addi	t3,s4,1
1c00d976:	00d34463          	blt	t1,a3,1c00d97e <pos_libc_prf+0xd0c>
1c00d97a:	166e5d63          	ble	t1,t3,1c00daf4 <pos_libc_prf+0xe82>
1c00d97e:	46c1                	li	a3,16
1c00d980:	01c6d363          	ble	t3,a3,1c00d986 <pos_libc_prf+0xd14>
1c00d984:	4e41                	li	t3,16
1c00d986:	06700693          	li	a3,103
1c00d98a:	1e7d                	addi	t3,t3,-1
1c00d98c:	1add8963          	beq	s11,a3,1c00db3e <pos_libc_prf+0xecc>
1c00d990:	04500d93          	li	s11,69
1c00d994:	b0c5                	j	1c00d274 <pos_libc_prf+0x602>
1c00d996:	020102a3          	sb	zero,37(sp)
1c00d99a:	57fd                	li	a5,-1
1c00d99c:	89ba                	mv	s3,a4
1c00d99e:	8c2a                	mv	s8,a0
1c00d9a0:	c6fa0563          	beq	s4,a5,1c00ce0a <pos_libc_prf+0x198>
1c00d9a4:	02000813          	li	a6,32
1c00d9a8:	c842                	sw	a6,16(sp)
1c00d9aa:	c60ff06f          	j	1c00ce0a <pos_libc_prf+0x198>
1c00d9ae:	89b6                	mv	s3,a3
1c00d9b0:	bdeff06f          	j	1c00cd8e <pos_libc_prf+0x11c>
1c00d9b4:	8766                	mv	a4,s9
1c00d9b6:	1c084c63          	bltz	a6,1c00db8e <pos_libc_prf+0xf1c>
1c00d9ba:	8e55                	or	a2,a2,a3
1c00d9bc:	fbfd8793          	addi	a5,s11,-65
1c00d9c0:	00370993          	addi	s3,a4,3
1c00d9c4:	46e5                	li	a3,25
1c00d9c6:	10061a63          	bnez	a2,1c00dada <pos_libc_prf+0xe68>
1c00d9ca:	16f6ee63          	bltu	a3,a5,1c00db46 <pos_libc_prf+0xed4>
1c00d9ce:	6795                	lui	a5,0x5
1c00d9d0:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c00d9d4:	00f71023          	sh	a5,0(a4)
1c00d9d8:	04600793          	li	a5,70
1c00d9dc:	00f70123          	sb	a5,2(a4)
1c00d9e0:	000701a3          	sb	zero,3(a4)
1c00d9e4:	419989b3          	sub	s3,s3,s9
1c00d9e8:	b48d                	j	1c00d44a <pos_libc_prf+0x7d8>
1c00d9ea:	85e6                	mv	a1,s9
1c00d9ec:	8766                	mv	a4,s9
1c00d9ee:	e38ff06f          	j	1c00d026 <pos_libc_prf+0x3b4>
1c00d9f2:	a00a09e3          	beqz	s4,1c00d404 <pos_libc_prf+0x792>
1c00d9f6:	02e00693          	li	a3,46
1c00d9fa:	002e8513          	addi	a0,t4,2
1c00d9fe:	00de80a3          	sb	a3,1(t4)
1c00da02:	b27d                	j	1c00d3b0 <pos_libc_prf+0x73e>
1c00da04:	14605b63          	blez	t1,1c00db5a <pos_libc_prf+0xee8>
1c00da08:	006e89b3          	add	s3,t4,t1
1c00da0c:	4541                	li	a0,16
1c00da0e:	03000893          	li	a7,48
1c00da12:	00271793          	slli	a5,a4,0x2
1c00da16:	01e75313          	srli	t1,a4,0x1e
1c00da1a:	00261693          	slli	a3,a2,0x2
1c00da1e:	00e78833          	add	a6,a5,a4
1c00da22:	00d366b3          	or	a3,t1,a3
1c00da26:	96b2                	add	a3,a3,a2
1c00da28:	00f837b3          	sltu	a5,a6,a5
1c00da2c:	97b6                	add	a5,a5,a3
1c00da2e:	0786                	slli	a5,a5,0x1
1c00da30:	01f85693          	srli	a3,a6,0x1f
1c00da34:	8fd5                	or	a5,a5,a3
1c00da36:	01c7d693          	srli	a3,a5,0x1c
1c00da3a:	03068693          	addi	a3,a3,48
1c00da3e:	02a05063          	blez	a0,1c00da5e <pos_libc_prf+0xdec>
1c00da42:	00181713          	slli	a4,a6,0x1
1c00da46:	10000837          	lui	a6,0x10000
1c00da4a:	187d                	addi	a6,a6,-1
1c00da4c:	fed58fa3          	sb	a3,-1(a1)
1c00da50:	157d                	addi	a0,a0,-1
1c00da52:	0107f633          	and	a2,a5,a6
1c00da56:	00b98863          	beq	s3,a1,1c00da66 <pos_libc_prf+0xdf4>
1c00da5a:	0585                	addi	a1,a1,1
1c00da5c:	bf5d                	j	1c00da12 <pos_libc_prf+0xda0>
1c00da5e:	ff158fa3          	sb	a7,-1(a1)
1c00da62:	feb99ce3          	bne	s3,a1,1c00da5a <pos_libc_prf+0xde8>
1c00da66:	4301                	li	t1,0
1c00da68:	48b2                	lw	a7,12(sp)
1c00da6a:	00089463          	bnez	a7,1c00da72 <pos_libc_prf+0xe00>
1c00da6e:	a40a0be3          	beqz	s4,1c00d4c4 <pos_libc_prf+0x852>
1c00da72:	00198813          	addi	a6,s3,1
1c00da76:	001a0693          	addi	a3,s4,1
1c00da7a:	02e00593          	li	a1,46
1c00da7e:	00b98023          	sb	a1,0(s3)
1c00da82:	99b6                	add	s3,s3,a3
1c00da84:	85c2                	mv	a1,a6
1c00da86:	03000693          	li	a3,48
1c00da8a:	a2b98be3          	beq	s3,a1,1c00d4c0 <pos_libc_prf+0x84e>
1c00da8e:	0585                	addi	a1,a1,1
1c00da90:	9e0302e3          	beqz	t1,1c00d474 <pos_libc_prf+0x802>
1c00da94:	fed58fa3          	sb	a3,-1(a1)
1c00da98:	0305                	addi	t1,t1,1
1c00da9a:	bfc5                	j	1c00da8a <pos_libc_prf+0xe18>
1c00da9c:	4a19                	li	s4,6
1c00da9e:	fadd9b63          	bne	s11,a3,1c00d254 <pos_libc_prf+0x5e2>
1c00daa2:	46b2                	lw	a3,12(sp)
1c00daa4:	57f5                	li	a5,-3
1c00daa6:	0016cf93          	xori	t6,a3,1
1c00daaa:	08f35663          	ble	a5,t1,1c00db36 <pos_libc_prf+0xec4>
1c00daae:	06500d93          	li	s11,101
1c00dab2:	4e19                	li	t3,6
1c00dab4:	fc0ff06f          	j	1c00d274 <pos_libc_prf+0x602>
1c00dab8:	0c800793          	li	a5,200
1c00dabc:	c737c163          	blt	a5,s3,1c00cf1e <pos_libc_prf+0x2ac>
1c00dac0:	8c2a                	mv	s8,a0
1c00dac2:	c602                	sw	zero,12(sp)
1c00dac4:	dceff06f          	j	1c00d092 <pos_libc_prf+0x420>
1c00dac8:	02d00793          	li	a5,45
1c00dacc:	40600333          	neg	t1,t1
1c00dad0:	00f980a3          	sb	a5,1(s3)
1c00dad4:	ba89                	j	1c00d426 <pos_libc_prf+0x7b4>
1c00dad6:	c602                	sw	zero,12(sp)
1c00dad8:	b329                	j	1c00d7e2 <pos_libc_prf+0xb70>
1c00dada:	0cf6ed63          	bltu	a3,a5,1c00dbb4 <pos_libc_prf+0xf42>
1c00dade:	6791                	lui	a5,0x4
1c00dae0:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c00dae4:	00f71023          	sh	a5,0(a4)
1c00dae8:	04e00793          	li	a5,78
1c00daec:	00f70123          	sb	a5,2(a4)
1c00daf0:	bdc5                	j	1c00d9e0 <pos_libc_prf+0xd6e>
1c00daf2:	4f81                	li	t6,0
1c00daf4:	014307b3          	add	a5,t1,s4
1c00daf8:	0807c863          	bltz	a5,1c00db88 <pos_libc_prf+0xf16>
1c00dafc:	46c1                	li	a3,16
1c00dafe:	8e3e                	mv	t3,a5
1c00db00:	00f6d363          	ble	a5,a3,1c00db06 <pos_libc_prf+0xe94>
1c00db04:	4e41                	li	t3,16
1c00db06:	1e7d                	addi	t3,t3,-1
1c00db08:	06600d93          	li	s11,102
1c00db0c:	f6079463          	bnez	a5,1c00d274 <pos_libc_prf+0x602>
1c00db10:	4681                	li	a3,0
1c00db12:	08000637          	lui	a2,0x8000
1c00db16:	fc8ff06f          	j	1c00d2de <pos_libc_prf+0x66c>
1c00db1a:	47e2                	lw	a5,24(sp)
1c00db1c:	c7d5                	beqz	a5,1c00dbc8 <pos_libc_prf+0xf56>
1c00db1e:	02000713          	li	a4,32
1c00db22:	02e10223          	sb	a4,36(sp)
1c00db26:	02510e93          	addi	t4,sp,37
1c00db2a:	4301                	li	t1,0
1c00db2c:	4501                	li	a0,0
1c00db2e:	4681                	li	a3,0
1c00db30:	4581                	li	a1,0
1c00db32:	ef0ff06f          	j	1c00d222 <pos_libc_prf+0x5b0>
1c00db36:	479d                	li	a5,7
1c00db38:	fa67dee3          	ble	t1,a5,1c00daf4 <pos_libc_prf+0xe82>
1c00db3c:	4e19                	li	t3,6
1c00db3e:	06500d93          	li	s11,101
1c00db42:	f32ff06f          	j	1c00d274 <pos_libc_prf+0x602>
1c00db46:	679d                	lui	a5,0x7
1c00db48:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c00db4c:	00f71023          	sh	a5,0(a4)
1c00db50:	06600793          	li	a5,102
1c00db54:	00f70123          	sb	a5,2(a4)
1c00db58:	b561                	j	1c00d9e0 <pos_libc_prf+0xd6e>
1c00db5a:	03000693          	li	a3,48
1c00db5e:	00de8023          	sb	a3,0(t4)
1c00db62:	4541                	li	a0,16
1c00db64:	b711                	j	1c00da68 <pos_libc_prf+0xdf6>
1c00db66:	48e2                	lw	a7,24(sp)
1c00db68:	8ee6                	mv	t4,s9
1c00db6a:	dc088e63          	beqz	a7,1c00d146 <pos_libc_prf+0x4d4>
1c00db6e:	02000713          	li	a4,32
1c00db72:	02e10223          	sb	a4,36(sp)
1c00db76:	02510e93          	addi	t4,sp,37
1c00db7a:	dccff06f          	j	1c00d146 <pos_libc_prf+0x4d4>
1c00db7e:	80000737          	lui	a4,0x80000
1c00db82:	02510793          	addi	a5,sp,37
1c00db86:	bc91                	j	1c00d5da <pos_libc_prf+0x968>
1c00db88:	06600d93          	li	s11,102
1c00db8c:	b751                	j	1c00db10 <pos_libc_prf+0xe9e>
1c00db8e:	02d00713          	li	a4,45
1c00db92:	02e10223          	sb	a4,36(sp)
1c00db96:	02510713          	addi	a4,sp,37
1c00db9a:	b505                	j	1c00d9ba <pos_libc_prf+0xd48>
1c00db9c:	a40a5d63          	bgez	s4,1c00cdf6 <pos_libc_prf+0x184>
1c00dba0:	a62ff06f          	j	1c00ce02 <pos_libc_prf+0x190>
1c00dba4:	02d00713          	li	a4,45
1c00dba8:	02e10223          	sb	a4,36(sp)
1c00dbac:	02510e93          	addi	t4,sp,37
1c00dbb0:	d96ff06f          	j	1c00d146 <pos_libc_prf+0x4d4>
1c00dbb4:	6799                	lui	a5,0x6
1c00dbb6:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c00dbba:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00dbbe:	06e00793          	li	a5,110
1c00dbc2:	00f70123          	sb	a5,2(a4)
1c00dbc6:	bd29                	j	1c00d9e0 <pos_libc_prf+0xd6e>
1c00dbc8:	8ee6                	mv	t4,s9
1c00dbca:	b785                	j	1c00db2a <pos_libc_prf+0xeb8>
1c00dbcc:	89aa                	mv	s3,a0
1c00dbce:	820f8de3          	beqz	t6,1c00d408 <pos_libc_prf+0x796>
1c00dbd2:	b8dd                	j	1c00d4c8 <pos_libc_prf+0x856>

1c00dbd4 <pos_init_start>:
1c00dbd4:	1141                	addi	sp,sp,-16
1c00dbd6:	c422                	sw	s0,8(sp)
1c00dbd8:	1c000437          	lui	s0,0x1c000
1c00dbdc:	c606                	sw	ra,12(sp)
1c00dbde:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00dbe2:	eb4fc0ef          	jal	ra,1c00a296 <pos_soc_init>
1c00dbe6:	2275                	jal	1c00dd92 <pos_irq_init>
1c00dbe8:	2ae1                	jal	1c00ddc0 <pos_soc_event_init>
1c00dbea:	2a31                	jal	1c00dd06 <pos_allocs_init>
1c00dbec:	405c                	lw	a5,4(s0)
1c00dbee:	c791                	beqz	a5,1c00dbfa <pos_init_start+0x26>
1c00dbf0:	0411                	addi	s0,s0,4
1c00dbf2:	0411                	addi	s0,s0,4
1c00dbf4:	9782                	jalr	a5
1c00dbf6:	401c                	lw	a5,0(s0)
1c00dbf8:	ffed                	bnez	a5,1c00dbf2 <pos_init_start+0x1e>
1c00dbfa:	842ff0ef          	jal	ra,1c00cc3c <pos_io_start>
1c00dbfe:	300467f3          	csrrsi	a5,mstatus,8
1c00dc02:	40b2                	lw	ra,12(sp)
1c00dc04:	4422                	lw	s0,8(sp)
1c00dc06:	0141                	addi	sp,sp,16
1c00dc08:	8082                	ret

1c00dc0a <pos_init_stop>:
1c00dc0a:	1141                	addi	sp,sp,-16
1c00dc0c:	c422                	sw	s0,8(sp)
1c00dc0e:	1c000437          	lui	s0,0x1c000
1c00dc12:	c606                	sw	ra,12(sp)
1c00dc14:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00dc18:	828ff0ef          	jal	ra,1c00cc40 <pos_io_stop>
1c00dc1c:	405c                	lw	a5,4(s0)
1c00dc1e:	c791                	beqz	a5,1c00dc2a <pos_init_stop+0x20>
1c00dc20:	0411                	addi	s0,s0,4
1c00dc22:	0411                	addi	s0,s0,4
1c00dc24:	9782                	jalr	a5
1c00dc26:	401c                	lw	a5,0(s0)
1c00dc28:	ffed                	bnez	a5,1c00dc22 <pos_init_stop+0x18>
1c00dc2a:	40b2                	lw	ra,12(sp)
1c00dc2c:	4422                	lw	s0,8(sp)
1c00dc2e:	0141                	addi	sp,sp,16
1c00dc30:	8082                	ret

1c00dc32 <pos_alloc_init>:
1c00dc32:	00758793          	addi	a5,a1,7
1c00dc36:	9be1                	andi	a5,a5,-8
1c00dc38:	40b785b3          	sub	a1,a5,a1
1c00dc3c:	c11c                	sw	a5,0(a0)
1c00dc3e:	8e0d                	sub	a2,a2,a1
1c00dc40:	00c05663          	blez	a2,1c00dc4c <pos_alloc_init+0x1a>
1c00dc44:	9a61                	andi	a2,a2,-8
1c00dc46:	c390                	sw	a2,0(a5)
1c00dc48:	0007a223          	sw	zero,4(a5)
1c00dc4c:	8082                	ret

1c00dc4e <pos_alloc>:
1c00dc4e:	4110                	lw	a2,0(a0)
1c00dc50:	059d                	addi	a1,a1,7
1c00dc52:	99e1                	andi	a1,a1,-8
1c00dc54:	ca31                	beqz	a2,1c00dca8 <pos_alloc+0x5a>
1c00dc56:	4218                	lw	a4,0(a2)
1c00dc58:	425c                	lw	a5,4(a2)
1c00dc5a:	02b75963          	ble	a1,a4,1c00dc8c <pos_alloc+0x3e>
1c00dc5e:	cb81                	beqz	a5,1c00dc6e <pos_alloc+0x20>
1c00dc60:	4398                	lw	a4,0(a5)
1c00dc62:	43d4                	lw	a3,4(a5)
1c00dc64:	00b75763          	ble	a1,a4,1c00dc72 <pos_alloc+0x24>
1c00dc68:	863e                	mv	a2,a5
1c00dc6a:	87b6                	mv	a5,a3
1c00dc6c:	fbf5                	bnez	a5,1c00dc60 <pos_alloc+0x12>
1c00dc6e:	853e                	mv	a0,a5
1c00dc70:	8082                	ret
1c00dc72:	00b70a63          	beq	a4,a1,1c00dc86 <pos_alloc+0x38>
1c00dc76:	00b78533          	add	a0,a5,a1
1c00dc7a:	8f0d                	sub	a4,a4,a1
1c00dc7c:	c118                	sw	a4,0(a0)
1c00dc7e:	c154                	sw	a3,4(a0)
1c00dc80:	c248                	sw	a0,4(a2)
1c00dc82:	853e                	mv	a0,a5
1c00dc84:	8082                	ret
1c00dc86:	c254                	sw	a3,4(a2)
1c00dc88:	853e                	mv	a0,a5
1c00dc8a:	8082                	ret
1c00dc8c:	00e58b63          	beq	a1,a4,1c00dca2 <pos_alloc+0x54>
1c00dc90:	00b606b3          	add	a3,a2,a1
1c00dc94:	8f0d                	sub	a4,a4,a1
1c00dc96:	c2dc                	sw	a5,4(a3)
1c00dc98:	c298                	sw	a4,0(a3)
1c00dc9a:	87b2                	mv	a5,a2
1c00dc9c:	c114                	sw	a3,0(a0)
1c00dc9e:	853e                	mv	a0,a5
1c00dca0:	8082                	ret
1c00dca2:	c11c                	sw	a5,0(a0)
1c00dca4:	87b2                	mv	a5,a2
1c00dca6:	b7e1                	j	1c00dc6e <pos_alloc+0x20>
1c00dca8:	4781                	li	a5,0
1c00dcaa:	b7d1                	j	1c00dc6e <pos_alloc+0x20>

1c00dcac <pos_free>:
1c00dcac:	4118                	lw	a4,0(a0)
1c00dcae:	061d                	addi	a2,a2,7
1c00dcb0:	9a61                	andi	a2,a2,-8
1c00dcb2:	c729                	beqz	a4,1c00dcfc <pos_free+0x50>
1c00dcb4:	00b76663          	bltu	a4,a1,1c00dcc0 <pos_free+0x14>
1c00dcb8:	a0a1                	j	1c00dd00 <pos_free+0x54>
1c00dcba:	00b7f563          	bleu	a1,a5,1c00dcc4 <pos_free+0x18>
1c00dcbe:	873e                	mv	a4,a5
1c00dcc0:	435c                	lw	a5,4(a4)
1c00dcc2:	ffe5                	bnez	a5,1c00dcba <pos_free+0xe>
1c00dcc4:	00c586b3          	add	a3,a1,a2
1c00dcc8:	02d78463          	beq	a5,a3,1c00dcf0 <pos_free+0x44>
1c00dccc:	c190                	sw	a2,0(a1)
1c00dcce:	c1dc                	sw	a5,4(a1)
1c00dcd0:	cf11                	beqz	a4,1c00dcec <pos_free+0x40>
1c00dcd2:	431c                	lw	a5,0(a4)
1c00dcd4:	00f706b3          	add	a3,a4,a5
1c00dcd8:	00d58463          	beq	a1,a3,1c00dce0 <pos_free+0x34>
1c00dcdc:	c34c                	sw	a1,4(a4)
1c00dcde:	8082                	ret
1c00dce0:	4194                	lw	a3,0(a1)
1c00dce2:	41d0                	lw	a2,4(a1)
1c00dce4:	97b6                	add	a5,a5,a3
1c00dce6:	c31c                	sw	a5,0(a4)
1c00dce8:	c350                	sw	a2,4(a4)
1c00dcea:	8082                	ret
1c00dcec:	c10c                	sw	a1,0(a0)
1c00dcee:	8082                	ret
1c00dcf0:	4394                	lw	a3,0(a5)
1c00dcf2:	43dc                	lw	a5,4(a5)
1c00dcf4:	9636                	add	a2,a2,a3
1c00dcf6:	c190                	sw	a2,0(a1)
1c00dcf8:	c1dc                	sw	a5,4(a1)
1c00dcfa:	bfd9                	j	1c00dcd0 <pos_free+0x24>
1c00dcfc:	4781                	li	a5,0
1c00dcfe:	b7d9                	j	1c00dcc4 <pos_free+0x18>
1c00dd00:	87ba                	mv	a5,a4
1c00dd02:	4701                	li	a4,0
1c00dd04:	b7c1                	j	1c00dcc4 <pos_free+0x18>

1c00dd06 <pos_allocs_init>:
1c00dd06:	1141                	addi	sp,sp,-16
1c00dd08:	1c0065b7          	lui	a1,0x1c006
1c00dd0c:	c606                	sw	ra,12(sp)
1c00dd0e:	28458793          	addi	a5,a1,644 # 1c006284 <__l2_priv0_end>
1c00dd12:	1c008637          	lui	a2,0x1c008
1c00dd16:	04c7cc63          	blt	a5,a2,1c00dd6e <pos_allocs_init+0x68>
1c00dd1a:	4581                	li	a1,0
1c00dd1c:	4601                	li	a2,0
1c00dd1e:	1c006537          	lui	a0,0x1c006
1c00dd22:	27850513          	addi	a0,a0,632 # 1c006278 <pos_alloc_l2>
1c00dd26:	3731                	jal	1c00dc32 <pos_alloc_init>
1c00dd28:	1c00e5b7          	lui	a1,0x1c00e
1c00dd2c:	dd858793          	addi	a5,a1,-552 # 1c00ddd8 <__l2_priv1_end>
1c00dd30:	1c010637          	lui	a2,0x1c010
1c00dd34:	02c7c963          	blt	a5,a2,1c00dd66 <pos_allocs_init+0x60>
1c00dd38:	4581                	li	a1,0
1c00dd3a:	4601                	li	a2,0
1c00dd3c:	1c006537          	lui	a0,0x1c006
1c00dd40:	27c50513          	addi	a0,a0,636 # 1c00627c <pos_alloc_l2+0x4>
1c00dd44:	35fd                	jal	1c00dc32 <pos_alloc_init>
1c00dd46:	1c0105b7          	lui	a1,0x1c010
1c00dd4a:	00058793          	mv	a5,a1
1c00dd4e:	40b2                	lw	ra,12(sp)
1c00dd50:	1c080637          	lui	a2,0x1c080
1c00dd54:	1c006537          	lui	a0,0x1c006
1c00dd58:	8e1d                	sub	a2,a2,a5
1c00dd5a:	00058593          	mv	a1,a1
1c00dd5e:	28050513          	addi	a0,a0,640 # 1c006280 <pos_alloc_l2+0x8>
1c00dd62:	0141                	addi	sp,sp,16
1c00dd64:	b5f9                	j	1c00dc32 <pos_alloc_init>
1c00dd66:	8e1d                	sub	a2,a2,a5
1c00dd68:	dd858593          	addi	a1,a1,-552 # 1c00fdd8 <__l2_priv1_end+0x2000>
1c00dd6c:	bfc1                	j	1c00dd3c <pos_allocs_init+0x36>
1c00dd6e:	8e1d                	sub	a2,a2,a5
1c00dd70:	28458593          	addi	a1,a1,644
1c00dd74:	b76d                	j	1c00dd1e <pos_allocs_init+0x18>

1c00dd76 <pi_l2_malloc>:
1c00dd76:	85aa                	mv	a1,a0
1c00dd78:	1c006537          	lui	a0,0x1c006
1c00dd7c:	27850513          	addi	a0,a0,632 # 1c006278 <pos_alloc_l2>
1c00dd80:	b5f9                	j	1c00dc4e <pos_alloc>

1c00dd82 <pi_l2_free>:
1c00dd82:	862e                	mv	a2,a1
1c00dd84:	85aa                	mv	a1,a0
1c00dd86:	1c006537          	lui	a0,0x1c006
1c00dd8a:	27850513          	addi	a0,a0,632 # 1c006278 <pos_alloc_l2>
1c00dd8e:	bf39                	j	1c00dcac <pos_free>

1c00dd90 <__rt_handle_illegal_instr>:
1c00dd90:	8082                	ret

1c00dd92 <pos_irq_init>:
1c00dd92:	1a10a737          	lui	a4,0x1a10a
1c00dd96:	f14027f3          	csrr	a5,mhartid
1c00dd9a:	56fd                	li	a3,-1
1c00dd9c:	8795                	srai	a5,a5,0x5
1c00dd9e:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00dda2:	03f7f793          	andi	a5,a5,63
1c00dda6:	477d                	li	a4,31
1c00dda8:	00e78363          	beq	a5,a4,1c00ddae <pos_irq_init+0x1c>
1c00ddac:	8082                	ret
1c00ddae:	1c0087b7          	lui	a5,0x1c008
1c00ddb2:	00078793          	mv	a5,a5
1c00ddb6:	0017e793          	ori	a5,a5,1
1c00ddba:	30579073          	csrw	mtvec,a5
1c00ddbe:	8082                	ret

1c00ddc0 <pos_soc_event_init>:
1c00ddc0:	1a1067b7          	lui	a5,0x1a106
1c00ddc4:	577d                	li	a4,-1
1c00ddc6:	c3d8                	sw	a4,4(a5)
1c00ddc8:	c798                	sw	a4,8(a5)
1c00ddca:	c7d8                	sw	a4,12(a5)
1c00ddcc:	cb98                	sw	a4,16(a5)
1c00ddce:	cbd8                	sw	a4,20(a5)
1c00ddd0:	cf98                	sw	a4,24(a5)
1c00ddd2:	cfd8                	sw	a4,28(a5)
1c00ddd4:	d398                	sw	a4,32(a5)
1c00ddd6:	8082                	ret
