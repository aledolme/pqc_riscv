riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber1024/dec/build/dec/dec

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber1024/dec/build/dec/dec:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	4ce0706f          	j	1c00f4ce <__rt_handle_illegal_instr>
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
1c008084:	44a0706f          	j	1c00f4ce <__rt_handle_illegal_instr>

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
1c0080c4:	17028293          	addi	t0,t0,368 # 1c006230 <stack>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	18c30313          	addi	t1,t1,396 # 1c006254 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	15610113          	addi	sp,sp,342 # 1c006230 <stack>
1c0080e2:	234070ef          	jal	ra,1c00f316 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	05438393          	addi	t2,t2,84 # 1c008142 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	24e070ef          	jal	ra,1c00f34a <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	1f8070ef          	jal	ra,1c00f2fa <exit>

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
1c008142:	d5010113          	addi	sp,sp,-688
1c008146:	737d                	lui	t1,0xfffff
1c008148:	2a112623          	sw	ra,684(sp)
1c00814c:	26786737          	lui	a4,0x26786
1c008150:	911a                	add	sp,sp,t1
1c008152:	151c                	addi	a5,sp,672
1c008154:	13570713          	addi	a4,a4,309 # 26786135 <__l2_shared_end+0xa776135>
1c008158:	d8e7a023          	sw	a4,-640(a5)
1c00815c:	f56e9737          	lui	a4,0xf56e9
1c008160:	82a70713          	addi	a4,a4,-2006 # f56e882a <pulp__FC+0xf56e882b>
1c008164:	d8e7a223          	sw	a4,-636(a5)
1c008168:	dcdbd737          	lui	a4,0xdcdbd
1c00816c:	93070713          	addi	a4,a4,-1744 # dcdbc930 <pulp__FC+0xdcdbc931>
1c008170:	d8e7a423          	sw	a4,-632(a5)
1c008174:	11db8737          	lui	a4,0x11db8
1c008178:	ef570713          	addi	a4,a4,-267 # 11db7ef5 <__CTOR_LIST__-0xa24810f>
1c00817c:	d8e7a623          	sw	a4,-628(a5)
1c008180:	d6d17737          	lui	a4,0xd6d17
1c008184:	b4170713          	addi	a4,a4,-1215 # d6d16b41 <pulp__FC+0xd6d16b42>
1c008188:	d8e7a823          	sw	a4,-624(a5)
1c00818c:	95b7d737          	lui	a4,0x95b7d
1c008190:	a8870713          	addi	a4,a4,-1400 # 95b7ca88 <pulp__FC+0x95b7ca89>
1c008194:	d8e7aa23          	sw	a4,-620(a5)
1c008198:	4a711737          	lui	a4,0x4a711
1c00819c:	d4e70713          	addi	a4,a4,-690 # 4a710d4e <__l2_shared_end+0x2e700d4e>
1c0081a0:	d8e7ac23          	sw	a4,-616(a5)
1c0081a4:	83d89737          	lui	a4,0x83d89
1c0081a8:	7ec70713          	addi	a4,a4,2028 # 83d897ec <pulp__FC+0x83d897ed>
1c0081ac:	d8e7ae23          	sw	a4,-612(a5)
1c0081b0:	5b47a737          	lui	a4,0x5b47a
1c0081b4:	a5870713          	addi	a4,a4,-1448 # 5b479a58 <__l2_shared_end+0x3f469a58>
1c0081b8:	dae7a023          	sw	a4,-608(a5)
1c0081bc:	90466737          	lui	a4,0x90466
1c0081c0:	41870713          	addi	a4,a4,1048 # 90466418 <pulp__FC+0x90466419>
1c0081c4:	dae7a223          	sw	a4,-604(a5)
1c0081c8:	24ab6737          	lui	a4,0x24ab6
1c0081cc:	24470713          	addi	a4,a4,580 # 24ab6244 <__l2_shared_end+0x8aa6244>
1c0081d0:	dae7a423          	sw	a4,-600(a5)
1c0081d4:	461ef737          	lui	a4,0x461ef
1c0081d8:	7bf70713          	addi	a4,a4,1983 # 461ef7bf <__l2_shared_end+0x2a1df7bf>
1c0081dc:	dae7a623          	sw	a4,-596(a5)
1c0081e0:	80d07737          	lui	a4,0x80d07
1c0081e4:	e1370713          	addi	a4,a4,-493 # 80d06e13 <pulp__FC+0x80d06e14>
1c0081e8:	dae7a823          	sw	a4,-592(a5)
1c0081ec:	4f576737          	lui	a4,0x4f576
1c0081f0:	f4470713          	addi	a4,a4,-188 # 4f575f44 <__l2_shared_end+0x33565f44>
1c0081f4:	dae7aa23          	sw	a4,-588(a5)
1c0081f8:	953ce737          	lui	a4,0x953ce
1c0081fc:	4f370713          	addi	a4,a4,1267 # 953ce4f3 <pulp__FC+0x953ce4f4>
1c008200:	dae7ac23          	sw	a4,-584(a5)
1c008204:	a32ed737          	lui	a4,0xa32ed
1c008208:	b9070713          	addi	a4,a4,-1136 # a32ecb90 <pulp__FC+0xa32ecb91>
1c00820c:	dae7ae23          	sw	a4,-580(a5)
1c008210:	bd8ab737          	lui	a4,0xbd8ab
1c008214:	71a70713          	addi	a4,a4,1818 # bd8ab71a <pulp__FC+0xbd8ab71b>
1c008218:	dce7a023          	sw	a4,-576(a5)
1c00821c:	f38f8737          	lui	a4,0xf38f8
1c008220:	79970713          	addi	a4,a4,1945 # f38f8799 <pulp__FC+0xf38f879a>
1c008224:	dce7a223          	sw	a4,-572(a5)
1c008228:	57a41737          	lui	a4,0x57a41
1c00822c:	72370713          	addi	a4,a4,1827 # 57a41723 <__l2_shared_end+0x3ba31723>
1c008230:	dce7a423          	sw	a4,-568(a5)
1c008234:	bff73737          	lui	a4,0xbff73
1c008238:	47170713          	addi	a4,a4,1137 # bff73471 <pulp__FC+0xbff73472>
1c00823c:	dce7a623          	sw	a4,-564(a5)
1c008240:	7ce55737          	lui	a4,0x7ce55
1c008244:	7e370713          	addi	a4,a4,2019 # 7ce557e3 <__l2_shared_end+0x60e457e3>
1c008248:	dce7a823          	sw	a4,-560(a5)
1c00824c:	79dee737          	lui	a4,0x79dee
1c008250:	db970713          	addi	a4,a4,-583 # 79deddb9 <__l2_shared_end+0x5dddddb9>
1c008254:	dce7aa23          	sw	a4,-556(a5)
1c008258:	99dfa737          	lui	a4,0x99dfa
1c00825c:	bb870713          	addi	a4,a4,-1096 # 99df9bb8 <pulp__FC+0x99df9bb9>
1c008260:	dce7ac23          	sw	a4,-552(a5)
1c008264:	7fb3a737          	lui	a4,0x7fb3a
1c008268:	64470713          	addi	a4,a4,1604 # 7fb3a644 <__l2_shared_end+0x63b2a644>
1c00826c:	dce7ae23          	sw	a4,-548(a5)
1c008270:	454cc737          	lui	a4,0x454cc
1c008274:	9e070713          	addi	a4,a4,-1568 # 454cb9e0 <__l2_shared_end+0x294bb9e0>
1c008278:	dee7a023          	sw	a4,-544(a5)
1c00827c:	e4032737          	lui	a4,0xe4032
1c008280:	09270713          	addi	a4,a4,146 # e4032092 <pulp__FC+0xe4032093>
1c008284:	dee7a223          	sw	a4,-540(a5)
1c008288:	7878c737          	lui	a4,0x7878c
1c00828c:	deb70713          	addi	a4,a4,-533 # 7878bdeb <__l2_shared_end+0x5c77bdeb>
1c008290:	dee7a423          	sw	a4,-536(a5)
1c008294:	5430f737          	lui	a4,0x5430f
1c008298:	83970713          	addi	a4,a4,-1991 # 5430e839 <__l2_shared_end+0x382fe839>
1c00829c:	dee7a623          	sw	a4,-532(a5)
1c0082a0:	9bc10737          	lui	a4,0x9bc10
1c0082a4:	c9d70713          	addi	a4,a4,-867 # 9bc0fc9d <pulp__FC+0x9bc0fc9e>
1c0082a8:	dee7a823          	sw	a4,-528(a5)
1c0082ac:	e7588737          	lui	a4,0xe7588
1c0082b0:	41c70713          	addi	a4,a4,1052 # e758841c <pulp__FC+0xe758841d>
1c0082b4:	dee7aa23          	sw	a4,-524(a5)
1c0082b8:	c2cea737          	lui	a4,0xc2cea
1c0082bc:	bfc70713          	addi	a4,a4,-1028 # c2ce9bfc <pulp__FC+0xc2ce9bfd>
1c0082c0:	dee7ac23          	sw	a4,-520(a5)
1c0082c4:	d087c737          	lui	a4,0xd087c
1c0082c8:	40470713          	addi	a4,a4,1028 # d087c404 <pulp__FC+0xd087c405>
1c0082cc:	dee7ae23          	sw	a4,-516(a5)
1c0082d0:	1f411737          	lui	a4,0x1f411
1c0082d4:	ace70713          	addi	a4,a4,-1330 # 1f410ace <__l2_shared_end+0x3400ace>
1c0082d8:	e0e7a023          	sw	a4,-512(a5)
1c0082dc:	5fc30737          	lui	a4,0x5fc30
1c0082e0:	d3e70713          	addi	a4,a4,-706 # 5fc2fd3e <__l2_shared_end+0x43c1fd3e>
1c0082e4:	e0e7a223          	sw	a4,-508(a5)
1c0082e8:	2a883737          	lui	a4,0x2a883
1c0082ec:	e5870713          	addi	a4,a4,-424 # 2a882e58 <__l2_shared_end+0xe872e58>
1c0082f0:	e0e7a423          	sw	a4,-504(a5)
1c0082f4:	55f4e737          	lui	a4,0x55f4e
1c0082f8:	f6970713          	addi	a4,a4,-151 # 55f4df69 <__l2_shared_end+0x39f3df69>
1c0082fc:	e0e7a623          	sw	a4,-500(a5)
1c008300:	36f22737          	lui	a4,0x36f22
1c008304:	bd970713          	addi	a4,a4,-1063 # 36f21bd9 <__l2_shared_end+0x1af11bd9>
1c008308:	e0e7a823          	sw	a4,-496(a5)
1c00830c:	95e70737          	lui	a4,0x95e70
1c008310:	0e470713          	addi	a4,a4,228 # 95e700e4 <pulp__FC+0x95e700e5>
1c008314:	e0e7aa23          	sw	a4,-492(a5)
1c008318:	e6a22737          	lui	a4,0xe6a22
1c00831c:	3b770713          	addi	a4,a4,951 # e6a223b7 <pulp__FC+0xe6a223b8>
1c008320:	e0e7ac23          	sw	a4,-488(a5)
1c008324:	37c5d737          	lui	a4,0x37c5d
1c008328:	52170713          	addi	a4,a4,1313 # 37c5d521 <__l2_shared_end+0x1bc4d521>
1c00832c:	e0e7ae23          	sw	a4,-484(a5)
1c008330:	1eff3737          	lui	a4,0x1eff3
1c008334:	f5470713          	addi	a4,a4,-172 # 1eff2f54 <__l2_shared_end+0x2fe2f54>
1c008338:	e2e7a023          	sw	a4,-480(a5)
1c00833c:	4aed8737          	lui	a4,0x4aed8
1c008340:	0a470713          	addi	a4,a4,164 # 4aed80a4 <__l2_shared_end+0x2eec80a4>
1c008344:	e2e7a223          	sw	a4,-476(a5)
1c008348:	6c9ca737          	lui	a4,0x6c9ca
1c00834c:	c5170713          	addi	a4,a4,-943 # 6c9c9c51 <__l2_shared_end+0x509b9c51>
1c008350:	e2e7a423          	sw	a4,-472(a5)
1c008354:	ac44e737          	lui	a4,0xac44e
1c008358:	e0270713          	addi	a4,a4,-510 # ac44de02 <pulp__FC+0xac44de03>
1c00835c:	e2e7a623          	sw	a4,-468(a5)
1c008360:	8728f737          	lui	a4,0x8728f
1c008364:	12970713          	addi	a4,a4,297 # 8728f129 <pulp__FC+0x8728f12a>
1c008368:	e2e7a823          	sw	a4,-464(a5)
1c00836c:	82e4a737          	lui	a4,0x82e4a
1c008370:	abb70713          	addi	a4,a4,-1349 # 82e49abb <pulp__FC+0x82e49abc>
1c008374:	e2e7aa23          	sw	a4,-460(a5)
1c008378:	50b13737          	lui	a4,0x50b13
1c00837c:	62070713          	addi	a4,a4,1568 # 50b13620 <__l2_shared_end+0x34b03620>
1c008380:	e2e7ac23          	sw	a4,-456(a5)
1c008384:	d225d737          	lui	a4,0xd225d
1c008388:	4cf70713          	addi	a4,a4,1231 # d225d4cf <pulp__FC+0xd225d4d0>
1c00838c:	e2e7ae23          	sw	a4,-452(a5)
1c008390:	3ad8d737          	lui	a4,0x3ad8d
1c008394:	50b70713          	addi	a4,a4,1291 # 3ad8d50b <__l2_shared_end+0x1ed7d50b>
1c008398:	e4e7a023          	sw	a4,-448(a5)
1c00839c:	07079737          	lui	a4,0x7079
1c0083a0:	b6e70713          	addi	a4,a4,-1170 # 7078b6e <__CTOR_LIST__-0x14f87496>
1c0083a4:	e4e7a223          	sw	a4,-444(a5)
1c0083a8:	3a2d3737          	lui	a4,0x3a2d3
1c0083ac:	6fe70713          	addi	a4,a4,1790 # 3a2d36fe <__l2_shared_end+0x1e2c36fe>
1c0083b0:	e4e7a423          	sw	a4,-440(a5)
1c0083b4:	b894f737          	lui	a4,0xb894f
1c0083b8:	4ec70713          	addi	a4,a4,1260 # b894f4ec <pulp__FC+0xb894f4ed>
1c0083bc:	e4e7a623          	sw	a4,-436(a5)
1c0083c0:	84642737          	lui	a4,0x84642
1c0083c4:	68970713          	addi	a4,a4,1673 # 84642689 <pulp__FC+0x8464268a>
1c0083c8:	e4e7a823          	sw	a4,-432(a5)
1c0083cc:	ba848737          	lui	a4,0xba848
1c0083d0:	e1670713          	addi	a4,a4,-490 # ba847e16 <pulp__FC+0xba847e17>
1c0083d4:	e4e7aa23          	sw	a4,-428(a5)
1c0083d8:	bf787737          	lui	a4,0xbf787
1c0083dc:	27d70713          	addi	a4,a4,637 # bf78727d <pulp__FC+0xbf78727e>
1c0083e0:	e4e7ac23          	sw	a4,-424(a5)
1c0083e4:	70e89737          	lui	a4,0x70e89
1c0083e8:	28c70713          	addi	a4,a4,652 # 70e8928c <__l2_shared_end+0x54e7928c>
1c0083ec:	e4e7ae23          	sw	a4,-420(a5)
1c0083f0:	34cf1737          	lui	a4,0x34cf1
1c0083f4:	98b70713          	addi	a4,a4,-1653 # 34cf098b <__l2_shared_end+0x18ce098b>
1c0083f8:	e6e7a023          	sw	a4,-416(a5)
1c0083fc:	f296d737          	lui	a4,0xf296d
1c008400:	e7d70713          	addi	a4,a4,-387 # f296ce7d <pulp__FC+0xf296ce7e>
1c008404:	e6e7a223          	sw	a4,-412(a5)
1c008408:	78836737          	lui	a4,0x78836
1c00840c:	d1970713          	addi	a4,a4,-743 # 78835d19 <__l2_shared_end+0x5c825d19>
1c008410:	e6e7a423          	sw	a4,-408(a5)
1c008414:	0bc9f737          	lui	a4,0xbc9f
1c008418:	22c70713          	addi	a4,a4,556 # bc9f22c <__CTOR_LIST__-0x10360dd8>
1c00841c:	e6e7a623          	sw	a4,-404(a5)
1c008420:	0deeb737          	lui	a4,0xdeeb
1c008424:	92670713          	addi	a4,a4,-1754 # deea926 <__CTOR_LIST__-0xe1156de>
1c008428:	e6e7a823          	sw	a4,-400(a5)
1c00842c:	02806737          	lui	a4,0x2806
1c008430:	50970713          	addi	a4,a4,1289 # 2806509 <__CTOR_LIST__-0x197f9afb>
1c008434:	e6e7aa23          	sw	a4,-396(a5)
1c008438:	6715                	lui	a4,0x5
1c00843a:	44570713          	addi	a4,a4,1093 # 5445 <__CTOR_LIST__-0x1bffabbf>
1c00843e:	e6e79c23          	sh	a4,-392(a5)
1c008442:	05f00713          	li	a4,95
1c008446:	e6e78d23          	sb	a4,-390(a5)
1c00844a:	68953737          	lui	a4,0x68953
1c00844e:	b5b70713          	addi	a4,a4,-1189 # 68952b5b <__l2_shared_end+0x4c942b5b>
1c008452:	e6e7ada3          	sw	a4,-389(a5)
1c008456:	f24ab737          	lui	a4,0xf24ab
1c00845a:	d1f70713          	addi	a4,a4,-737 # f24aad1f <pulp__FC+0xf24aad20>
1c00845e:	e6e7afa3          	sw	a4,-385(a5)
1c008462:	aadc0737          	lui	a4,0xaadc0
1c008466:	78070713          	addi	a4,a4,1920 # aadc0780 <pulp__FC+0xaadc0781>
1c00846a:	e8e7a1a3          	sw	a4,-381(a5)
1c00846e:	fc10d737          	lui	a4,0xfc10d
1c008472:	dbb70713          	addi	a4,a4,-581 # fc10cdbb <pulp__FC+0xfc10cdbc>
1c008476:	e8e7a3a3          	sw	a4,-377(a5)
1c00847a:	c0b71737          	lui	a4,0xc0b71
1c00847e:	13470713          	addi	a4,a4,308 # c0b71134 <pulp__FC+0xc0b71135>
1c008482:	e8e7a5a3          	sw	a4,-373(a5)
1c008486:	b1225737          	lui	a4,0xb1225
1c00848a:	66770713          	addi	a4,a4,1639 # b1225667 <pulp__FC+0xb1225668>
1c00848e:	e8e7a7a3          	sw	a4,-369(a5)
1c008492:	5f967737          	lui	a4,0x5f967
1c008496:	8c270713          	addi	a4,a4,-1854 # 5f9668c2 <__l2_shared_end+0x439568c2>
1c00849a:	e8e7a9a3          	sw	a4,-365(a5)
1c00849e:	7b08b737          	lui	a4,0x7b08b
1c0084a2:	d0470713          	addi	a4,a4,-764 # 7b08ad04 <__l2_shared_end+0x5f07ad04>
1c0084a6:	e8e7aba3          	sw	a4,-361(a5)
1c0084aa:	13739737          	lui	a4,0x13739
1c0084ae:	b9670713          	addi	a4,a4,-1130 # 13738b96 <__CTOR_LIST__-0x88c746e>
1c0084b2:	e8e7ada3          	sw	a4,-357(a5)
1c0084b6:	1d2ea737          	lui	a4,0x1d2ea
1c0084ba:	cb770713          	addi	a4,a4,-841 # 1d2e9cb7 <__l2_shared_end+0x12d9cb7>
1c0084be:	e8e7afa3          	sw	a4,-353(a5)
1c0084c2:	1ff80737          	lui	a4,0x1ff80
1c0084c6:	5e970713          	addi	a4,a4,1513 # 1ff805e9 <__l2_shared_end+0x3f705e9>
1c0084ca:	eae7a1a3          	sw	a4,-349(a5)
1c0084ce:	097c3737          	lui	a4,0x97c3
1c0084d2:	5e170713          	addi	a4,a4,1505 # 97c35e1 <__CTOR_LIST__-0x1283ca23>
1c0084d6:	eae7a3a3          	sw	a4,-345(a5)
1c0084da:	34ccd737          	lui	a4,0x34ccd
1c0084de:	a4870713          	addi	a4,a4,-1464 # 34ccca48 <__l2_shared_end+0x18cbca48>
1c0084e2:	eae7a5a3          	sw	a4,-341(a5)
1c0084e6:	b4fb7737          	lui	a4,0xb4fb7
1c0084ea:	a6170713          	addi	a4,a4,-1439 # b4fb6a61 <pulp__FC+0xb4fb6a62>
1c0084ee:	eae7a7a3          	sw	a4,-337(a5)
1c0084f2:	95bd9737          	lui	a4,0x95bd9
1c0084f6:	62e70713          	addi	a4,a4,1582 # 95bd962e <pulp__FC+0x95bd962f>
1c0084fa:	eae7a9a3          	sw	a4,-333(a5)
1c0084fe:	e8c25737          	lui	a4,0xe8c25
1c008502:	05970713          	addi	a4,a4,89 # e8c25059 <pulp__FC+0xe8c2505a>
1c008506:	eae7aba3          	sw	a4,-329(a5)
1c00850a:	8d048737          	lui	a4,0x8d048
1c00850e:	b8070713          	addi	a4,a4,-1152 # 8d047b80 <pulp__FC+0x8d047b81>
1c008512:	eae7ada3          	sw	a4,-325(a5)
1c008516:	ac3be737          	lui	a4,0xac3be
1c00851a:	bc570713          	addi	a4,a4,-1083 # ac3bdbc5 <pulp__FC+0xac3bdbc6>
1c00851e:	eae7afa3          	sw	a4,-321(a5)
1c008522:	08cef737          	lui	a4,0x8cef
1c008526:	a5270713          	addi	a4,a4,-1454 # 8ceea52 <__CTOR_LIST__-0x133115b2>
1c00852a:	ece7a1a3          	sw	a4,-317(a5)
1c00852e:	400e5737          	lui	a4,0x400e5
1c008532:	82770713          	addi	a4,a4,-2009 # 400e4827 <__l2_shared_end+0x240d4827>
1c008536:	ece7a3a3          	sw	a4,-313(a5)
1c00853a:	1bee8737          	lui	a4,0x1bee8
1c00853e:	e2570713          	addi	a4,a4,-475 # 1bee7e25 <__CTOR_LIST__-0x1181df>
1c008542:	ece7a5a3          	sw	a4,-309(a5)
1c008546:	7a352737          	lui	a4,0x7a352
1c00854a:	1765                	addi	a4,a4,-7
1c00854c:	ece7a7a3          	sw	a4,-305(a5)
1c008550:	d3bad737          	lui	a4,0xd3bad
1c008554:	b2d70713          	addi	a4,a4,-1235 # d3bacb2d <pulp__FC+0xd3bacb2e>
1c008558:	ece7a9a3          	sw	a4,-301(a5)
1c00855c:	004fd737          	lui	a4,0x4fd
1c008560:	96470713          	addi	a4,a4,-1692 # 4fc964 <__CTOR_LIST__-0x1bb036a0>
1c008564:	ece7aba3          	sw	a4,-297(a5)
1c008568:	00713737          	lui	a4,0x713
1c00856c:	97c70713          	addi	a4,a4,-1668 # 71297c <__CTOR_LIST__-0x1b8ed688>
1c008570:	ece7ada3          	sw	a4,-293(a5)
1c008574:	5f6f6737          	lui	a4,0x5f6f6
1c008578:	7d770713          	addi	a4,a4,2007 # 5f6f67d7 <__l2_shared_end+0x436e67d7>
1c00857c:	ece7afa3          	sw	a4,-289(a5)
1c008580:	99386737          	lui	a4,0x99386
1c008584:	94970713          	addi	a4,a4,-1719 # 99385949 <pulp__FC+0x9938594a>
1c008588:	eee7a1a3          	sw	a4,-285(a5)
1c00858c:	48a0b737          	lui	a4,0x48a0b
1c008590:	9c870713          	addi	a4,a4,-1592 # 48a0a9c8 <__l2_shared_end+0x2c9fa9c8>
1c008594:	eee7a3a3          	sw	a4,-281(a5)
1c008598:	2deb2737          	lui	a4,0x2deb2
1c00859c:	4e870713          	addi	a4,a4,1256 # 2deb24e8 <__l2_shared_end+0x11ea24e8>
1c0085a0:	eee7a5a3          	sw	a4,-277(a5)
1c0085a4:	c080d737          	lui	a4,0xc080d
1c0085a8:	0a270713          	addi	a4,a4,162 # c080d0a2 <pulp__FC+0xc080d0a3>
1c0085ac:	eee7a7a3          	sw	a4,-273(a5)
1c0085b0:	c19b8737          	lui	a4,0xc19b8
1c0085b4:	dbe70713          	addi	a4,a4,-578 # c19b7dbe <pulp__FC+0xc19b7dbf>
1c0085b8:	eee7a9a3          	sw	a4,-269(a5)
1c0085bc:	f868e737          	lui	a4,0xf868e
1c0085c0:	6a770713          	addi	a4,a4,1703 # f868e6a7 <pulp__FC+0xf868e6a8>
1c0085c4:	eee7aba3          	sw	a4,-265(a5)
1c0085c8:	8d6c2737          	lui	a4,0x8d6c2
1c0085cc:	1c770713          	addi	a4,a4,455 # 8d6c21c7 <pulp__FC+0x8d6c21c8>
1c0085d0:	eee7ada3          	sw	a4,-261(a5)
1c0085d4:	598ff737          	lui	a4,0x598ff
1c0085d8:	65170713          	addi	a4,a4,1617 # 598ff651 <__l2_shared_end+0x3d8ef651>
1c0085dc:	eee7afa3          	sw	a4,-257(a5)
1c0085e0:	6fc25737          	lui	a4,0x6fc25
1c0085e4:	63070713          	addi	a4,a4,1584 # 6fc25630 <__l2_shared_end+0x53c15630>
1c0085e8:	f0e7a1a3          	sw	a4,-253(a5)
1c0085ec:	abd8b737          	lui	a4,0xabd8b
1c0085f0:	68170713          	addi	a4,a4,1665 # abd8b681 <pulp__FC+0xabd8b682>
1c0085f4:	f0e7a3a3          	sw	a4,-249(a5)
1c0085f8:	614af737          	lui	a4,0x614af
1c0085fc:	b5a70713          	addi	a4,a4,-1190 # 614aeb5a <__l2_shared_end+0x4549eb5a>
1c008600:	f0e7a5a3          	sw	a4,-245(a5)
1c008604:	a6fb7737          	lui	a4,0xa6fb7
1c008608:	f8270713          	addi	a4,a4,-126 # a6fb6f82 <pulp__FC+0xa6fb6f83>
1c00860c:	f0e7a7a3          	sw	a4,-241(a5)
1c008610:	3df1b737          	lui	a4,0x3df1b
1c008614:	cac70713          	addi	a4,a4,-852 # 3df1acac <__l2_shared_end+0x21f0acac>
1c008618:	f0e7a9a3          	sw	a4,-237(a5)
1c00861c:	2df9a737          	lui	a4,0x2df9a
1c008620:	4c470713          	addi	a4,a4,1220 # 2df9a4c4 <__l2_shared_end+0x11f8a4c4>
1c008624:	f0e7aba3          	sw	a4,-233(a5)
1c008628:	14506737          	lui	a4,0x14506
1c00862c:	08870713          	addi	a4,a4,136 # 14506088 <__CTOR_LIST__-0x7af9f7c>
1c008630:	f0e7ada3          	sw	a4,-229(a5)
1c008634:	6dd88737          	lui	a4,0x6dd88
1c008638:	4df70713          	addi	a4,a4,1247 # 6dd884df <__l2_shared_end+0x51d784df>
1c00863c:	f0e7afa3          	sw	a4,-225(a5)
1c008640:	aeed2737          	lui	a4,0xaeed2
1c008644:	bbe70713          	addi	a4,a4,-1090 # aeed1bbe <pulp__FC+0xaeed1bbf>
1c008648:	f2e7a1a3          	sw	a4,-221(a5)
1c00864c:	afa89737          	lui	a4,0xafa89
1c008650:	98670713          	addi	a4,a4,-1658 # afa88986 <pulp__FC+0xafa88987>
1c008654:	f2e7a3a3          	sw	a4,-217(a5)
1c008658:	d973a737          	lui	a4,0xd973a
1c00865c:	8db70713          	addi	a4,a4,-1829 # d97398db <pulp__FC+0xd97398dc>
1c008660:	f2e7a5a3          	sw	a4,-213(a5)
1c008664:	f2b8e737          	lui	a4,0xf2b8e
1c008668:	ec370713          	addi	a4,a4,-317 # f2b8dec3 <pulp__FC+0xf2b8dec4>
1c00866c:	f2e7a7a3          	sw	a4,-209(a5)
1c008670:	75f3c737          	lui	a4,0x75f3c
1c008674:	bcc70713          	addi	a4,a4,-1076 # 75f3bbcc <__l2_shared_end+0x59f2bbcc>
1c008678:	f2e7a9a3          	sw	a4,-205(a5)
1c00867c:	dc74c737          	lui	a4,0xdc74c
1c008680:	3ba70713          	addi	a4,a4,954 # dc74c3ba <pulp__FC+0xdc74c3bb>
1c008684:	f2e7aba3          	sw	a4,-201(a5)
1c008688:	7ef18737          	lui	a4,0x7ef18
1c00868c:	b3870713          	addi	a4,a4,-1224 # 7ef17b38 <__l2_shared_end+0x62f07b38>
1c008690:	f2e7ada3          	sw	a4,-197(a5)
1c008694:	4c54a737          	lui	a4,0x4c54a
1c008698:	ed870713          	addi	a4,a4,-296 # 4c549ed8 <__l2_shared_end+0x30539ed8>
1c00869c:	f2e7afa3          	sw	a4,-193(a5)
1c0086a0:	a3799737          	lui	a4,0xa3799
1c0086a4:	e2e70713          	addi	a4,a4,-466 # a3798e2e <pulp__FC+0xa3798e2f>
1c0086a8:	f4e7a1a3          	sw	a4,-189(a5)
1c0086ac:	ae14a737          	lui	a4,0xae14a
1c0086b0:	d9f70713          	addi	a4,a4,-609 # ae149d9f <pulp__FC+0xae149da0>
1c0086b4:	f4e7a3a3          	sw	a4,-185(a5)
1c0086b8:	863e5737          	lui	a4,0x863e5
1c0086bc:	f3770713          	addi	a4,a4,-201 # 863e4f37 <pulp__FC+0x863e4f38>
1c0086c0:	f4e7a5a3          	sw	a4,-181(a5)
1c0086c4:	879f2737          	lui	a4,0x879f2
1c0086c8:	02c70713          	addi	a4,a4,44 # 879f202c <pulp__FC+0x879f202d>
1c0086cc:	f4e7a7a3          	sw	a4,-177(a5)
1c0086d0:	2e14a737          	lui	a4,0x2e14a
1c0086d4:	75b70713          	addi	a4,a4,1883 # 2e14a75b <__l2_shared_end+0x1213a75b>
1c0086d8:	f4e7a9a3          	sw	a4,-173(a5)
1c0086dc:	e4160737          	lui	a4,0xe4160
1c0086e0:	30f70713          	addi	a4,a4,783 # e416030f <pulp__FC+0xe4160310>
1c0086e4:	f4e7aba3          	sw	a4,-169(a5)
1c0086e8:	aae0d737          	lui	a4,0xaae0d
1c0086ec:	0d170713          	addi	a4,a4,209 # aae0d0d1 <pulp__FC+0xaae0d0d2>
1c0086f0:	f4e7ada3          	sw	a4,-165(a5)
1c0086f4:	85a86737          	lui	a4,0x85a86
1c0086f8:	48470713          	addi	a4,a4,1156 # 85a86484 <pulp__FC+0x85a86485>
1c0086fc:	f4e7afa3          	sw	a4,-161(a5)
1c008700:	c096d737          	lui	a4,0xc096d
1c008704:	10f70713          	addi	a4,a4,271 # c096d10f <pulp__FC+0xc096d110>
1c008708:	f6e7a1a3          	sw	a4,-157(a5)
1c00870c:	24146737          	lui	a4,0x24146
1c008710:	e1670713          	addi	a4,a4,-490 # 24145e16 <__l2_shared_end+0x8135e16>
1c008714:	f6e7a3a3          	sw	a4,-153(a5)
1c008718:	d8ff5737          	lui	a4,0xd8ff5
1c00871c:	ee870713          	addi	a4,a4,-280 # d8ff4ee8 <pulp__FC+0xd8ff4ee9>
1c008720:	f6e7a5a3          	sw	a4,-149(a5)
1c008724:	3567d737          	lui	a4,0x3567d
1c008728:	44670713          	addi	a4,a4,1094 # 3567d446 <__l2_shared_end+0x1966d446>
1c00872c:	f6e7a7a3          	sw	a4,-145(a5)
1c008730:	6711                	lui	a4,0x4
1c008732:	0775                	addi	a4,a4,29
1c008734:	f6e799a3          	sh	a4,-141(a5)
1c008738:	5729                	li	a4,-22
1c00873a:	f6e78aa3          	sb	a4,-139(a5)
1c00873e:	718d6737          	lui	a4,0x718d6
1c008742:	27a70713          	addi	a4,a4,634 # 718d627a <__l2_shared_end+0x558c627a>
1c008746:	f6e7ab23          	sw	a4,-138(a5)
1c00874a:	0e57e737          	lui	a4,0xe57e
1c00874e:	53570713          	addi	a4,a4,1333 # e57e535 <__CTOR_LIST__-0xda81acf>
1c008752:	f6e7ad23          	sw	a4,-134(a5)
1c008756:	3cecde37          	lui	t3,0x3cecd
1c00875a:	68b78737          	lui	a4,0x68b78
1c00875e:	f4c70713          	addi	a4,a4,-180 # 68b77f4c <__l2_shared_end+0x4cb67f4c>
1c008762:	dd4e0e13          	addi	t3,t3,-556 # 3ceccdd4 <__l2_shared_end+0x20ebcdd4>
1c008766:	f6e7af23          	sw	a4,-130(a5)
1c00876a:	f9c7ad23          	sw	t3,-102(a5)
1c00876e:	14a25e37          	lui	t3,0x14a25
1c008772:	257e0e13          	addi	t3,t3,599 # 14a25257 <__CTOR_LIST__-0x75dadad>
1c008776:	f9c7af23          	sw	t3,-98(a5)
1c00877a:	d89ede37          	lui	t3,0xd89ed
1c00877e:	871e0e13          	addi	t3,t3,-1935 # d89ec871 <pulp__FC+0xd89ec872>
1c008782:	fbc7a123          	sw	t3,-94(a5)
1c008786:	2cd48e37          	lui	t3,0x2cd48
1c00878a:	e17e0e13          	addi	t3,t3,-489 # 2cd47e17 <__l2_shared_end+0x10d37e17>
1c00878e:	01c7a123          	sw	t3,2(a5)
1c008792:	f22d2e37          	lui	t3,0xf22d2
1c008796:	bfae0e13          	addi	t3,t3,-1030 # f22d1bfa <pulp__FC+0xf22d1bfb>
1c00879a:	fbc7a323          	sw	t3,-90(a5)
1c00879e:	7205ee37          	lui	t3,0x7205e
1c0087a2:	e33e0e13          	addi	t3,t3,-461 # 7205de33 <__l2_shared_end+0x5604de33>
1c0087a6:	ffc7af23          	sw	t3,-2(a5)
1c0087aa:	70946e37          	lui	t3,0x70946
1c0087ae:	1dfe0e13          	addi	t3,t3,479 # 709461df <__l2_shared_end+0x549361df>
1c0087b2:	fbc7a523          	sw	t3,-86(a5)
1c0087b6:	0e825e37          	lui	t3,0xe825
1c0087ba:	265e0e13          	addi	t3,t3,613 # e825265 <__CTOR_LIST__-0xd7dad9f>
1c0087be:	ffc7ad23          	sw	t3,-6(a5)
1c0087c2:	41125e37          	lui	t3,0x41125
1c0087c6:	27de0e13          	addi	t3,t3,637 # 4112527d <__l2_shared_end+0x2511527d>
1c0087ca:	fbc7a723          	sw	t3,-82(a5)
1c0087ce:	90790e37          	lui	t3,0x90790
1c0087d2:	2f3e0e13          	addi	t3,t3,755 # 907902f3 <pulp__FC+0x907902f4>
1c0087d6:	ffc7ab23          	sw	t3,-10(a5)
1c0087da:	cf98be37          	lui	t3,0xcf98b
1c0087de:	e0de0e13          	addi	t3,t3,-499 # cf98ae0d <pulp__FC+0xcf98ae0e>
1c0087e2:	fbc7a923          	sw	t3,-78(a5)
1c0087e6:	2cb3be37          	lui	t3,0x2cb3b
1c0087ea:	814e0e13          	addi	t3,t3,-2028 # 2cb3a814 <__l2_shared_end+0x10b2a814>
1c0087ee:	ffc7a923          	sw	t3,-14(a5)
1c0087f2:	bfd37e37          	lui	t3,0xbfd37
1c0087f6:	3e3e0e13          	addi	t3,t3,995 # bfd373e3 <pulp__FC+0xbfd373e4>
1c0087fa:	fbc7ab23          	sw	t3,-74(a5)
1c0087fe:	e2148e37          	lui	t3,0xe2148
1c008802:	7f3e0e13          	addi	t3,t3,2035 # e21487f3 <pulp__FC+0xe21487f4>
1c008806:	ffc7a723          	sw	t3,-18(a5)
1c00880a:	14b49e37          	lui	t3,0x14b49
1c00880e:	1e4d                	addi	t3,t3,-13
1c008810:	fbc7ad23          	sw	t3,-70(a5)
1c008814:	f52f6e37          	lui	t3,0xf52f6
1c008818:	5fae0e13          	addi	t3,t3,1530 # f52f65fa <pulp__FC+0xf52f65fb>
1c00881c:	ffc7a523          	sw	t3,-22(a5)
1c008820:	9debae37          	lui	t3,0x9deba
1c008824:	906e0e13          	addi	t3,t3,-1786 # 9deb9906 <pulp__FC+0x9deb9907>
1c008828:	fbc7af23          	sw	t3,-66(a5)
1c00882c:	fc1abe37          	lui	t3,0xfc1ab
1c008830:	42ee0e13          	addi	t3,t3,1070 # fc1ab42e <pulp__FC+0xfc1ab42f>
1c008834:	ffc7a323          	sw	t3,-26(a5)
1c008838:	59206e37          	lui	t3,0x59206
1c00883c:	3bce0e13          	addi	t3,t3,956 # 592063bc <__l2_shared_end+0x3d1f63bc>
1c008840:	fdc7a123          	sw	t3,-62(a5)
1c008844:	0ae87e37          	lui	t3,0xae87
1c008848:	64ce0e13          	addi	t3,t3,1612 # ae8764c <__CTOR_LIST__-0x111789b8>
1c00884c:	ffc7a123          	sw	t3,-30(a5)
1c008850:	f69ade37          	lui	t3,0xf69ad
1c008854:	637e0e13          	addi	t3,t3,1591 # f69ad637 <pulp__FC+0xf69ad638>
1c008858:	fdc7a323          	sw	t3,-58(a5)
1c00885c:	af076e37          	lui	t3,0xaf076
1c008860:	310e0e13          	addi	t3,t3,784 # af076310 <pulp__FC+0xaf076311>
1c008864:	a61c2737          	lui	a4,0xa61c2
1c008868:	fdc7af23          	sw	t3,-34(a5)
1c00886c:	98270713          	addi	a4,a4,-1662 # a61c1982 <pulp__FC+0xa61c1983>
1c008870:	96d3ae37          	lui	t3,0x96d3a
1c008874:	f8e7a123          	sw	a4,-126(a5)
1c008878:	ebbe0e13          	addi	t3,t3,-325 # 96d39ebb <pulp__FC+0x96d39ebc>
1c00887c:	6668b737          	lui	a4,0x6668b
1c008880:	fdc7a523          	sw	t3,-54(a5)
1c008884:	ce370713          	addi	a4,a4,-797 # 6668ace3 <__l2_shared_end+0x4a67ace3>
1c008888:	a1f9ce37          	lui	t3,0xa1f9c
1c00888c:	f8e7a323          	sw	a4,-122(a5)
1c008890:	3fde0e13          	addi	t3,t3,1021 # a1f9c3fd <pulp__FC+0xa1f9c3fe>
1c008894:	2b71f737          	lui	a4,0x2b71f
1c008898:	fdc7ad23          	sw	t3,-38(a5)
1c00889c:	8b570713          	addi	a4,a4,-1867 # 2b71e8b5 <__l2_shared_end+0xf70e8b5>
1c0088a0:	83b18e37          	lui	t3,0x83b18
1c0088a4:	f8e7a523          	sw	a4,-118(a5)
1c0088a8:	450e0e13          	addi	t3,t3,1104 # 83b18450 <pulp__FC+0x83b18451>
1c0088ac:	545b4737          	lui	a4,0x545b4
1c0088b0:	fdc7a723          	sw	t3,-50(a5)
1c0088b4:	8ce70713          	addi	a4,a4,-1842 # 545b38ce <__l2_shared_end+0x385a38ce>
1c0088b8:	01714e37          	lui	t3,0x1714
1c0088bc:	f8e7a723          	sw	a4,-114(a5)
1c0088c0:	d56e0e13          	addi	t3,t3,-682 # 1713d56 <__CTOR_LIST__-0x1a8ec2ae>
1c0088c4:	0fce3737          	lui	a4,0xfce3
1c0088c8:	3e619537          	lui	a0,0x3e619
1c0088cc:	fdc7ab23          	sw	t3,-42(a5)
1c0088d0:	d1a70713          	addi	a4,a4,-742 # fce2d1a <__CTOR_LIST__-0xc31d2ea>
1c0088d4:	45e50513          	addi	a0,a0,1118 # 3e61945e <__l2_shared_end+0x2260945e>
1c0088d8:	41c2ee37          	lui	t3,0x41c2e
1c0088dc:	f8e7a923          	sw	a4,-110(a5)
1c0088e0:	f8a7ab23          	sw	a0,-106(a5)
1c0088e4:	654e0e13          	addi	t3,t3,1620 # 41c2e654 <__l2_shared_end+0x25c1e654>
1c0088e8:	fdc7a923          	sw	t3,-46(a5)
1c0088ec:	e28b2e37          	lui	t3,0xe28b2
1c0088f0:	058e0e13          	addi	t3,t3,88 # e28b2058 <pulp__FC+0xe28b2059>
1c0088f4:	01c7a323          	sw	t3,6(a5)
1c0088f8:	a9912e37          	lui	t3,0xa9912
1c0088fc:	f91e0e13          	addi	t3,t3,-111 # a9911f91 <pulp__FC+0xa9911f92>
1c008900:	01c7a523          	sw	t3,10(a5)
1c008904:	3a677e37          	lui	t3,0x3a677
1c008908:	d94e0e13          	addi	t3,t3,-620 # 3a676d94 <__l2_shared_end+0x1e666d94>
1c00890c:	01c7a723          	sw	t3,14(a5)
1c008910:	20cc9e37          	lui	t3,0x20cc9
1c008914:	464e0e13          	addi	t3,t3,1124 # 20cc9464 <__l2_shared_end+0x4cb9464>
1c008918:	01c7a923          	sw	t3,18(a5)
1c00891c:	48dcce37          	lui	t3,0x48dcc
1c008920:	e13e0e13          	addi	t3,t3,-493 # 48dcbe13 <__l2_shared_end+0x2cdbbe13>
1c008924:	01c7ab23          	sw	t3,22(a5)
1c008928:	3ff3ce37          	lui	t3,0x3ff3c
1c00892c:	814e0e13          	addi	t3,t3,-2028 # 3ff3b814 <__l2_shared_end+0x23f2b814>
1c008930:	01c7ad23          	sw	t3,26(a5)
1c008934:	ed94fe37          	lui	t3,0xed94f
1c008938:	5c1e0e13          	addi	t3,t3,1473 # ed94f5c1 <pulp__FC+0xed94f5c2>
1c00893c:	01c7af23          	sw	t3,30(a5)
1c008940:	8bf21e37          	lui	t3,0x8bf21
1c008944:	4f4e0e13          	addi	t3,t3,1268 # 8bf214f4 <pulp__FC+0x8bf214f5>
1c008948:	03c7a123          	sw	t3,34(a5)
1c00894c:	a35e8e37          	lui	t3,0xa35e8
1c008950:	5c1e0e13          	addi	t3,t3,1473 # a35e85c1 <pulp__FC+0xa35e85c2>
1c008954:	03c7a323          	sw	t3,38(a5)
1c008958:	6a0dee37          	lui	t3,0x6a0de
1c00895c:	7bfe0e13          	addi	t3,t3,1983 # 6a0de7bf <__l2_shared_end+0x4e0ce7bf>
1c008960:	03c7a523          	sw	t3,42(a5)
1c008964:	993fce37          	lui	t3,0x993fc
1c008968:	b78e0e13          	addi	t3,t3,-1160 # 993fbb78 <pulp__FC+0x993fbb79>
1c00896c:	03c7a723          	sw	t3,46(a5)
1c008970:	de634e37          	lui	t3,0xde634
1c008974:	141e0e13          	addi	t3,t3,321 # de634141 <pulp__FC+0xde634142>
1c008978:	03c7a923          	sw	t3,50(a5)
1c00897c:	172e6e37          	lui	t3,0x172e6
1c008980:	1d4e0e13          	addi	t3,t3,468 # 172e61d4 <__CTOR_LIST__-0x4d19e30>
1c008984:	03c7ab23          	sw	t3,54(a5)
1c008988:	2003ee37          	lui	t3,0x2003e
1c00898c:	ccde0e13          	addi	t3,t3,-819 # 2003dccd <__l2_shared_end+0x402dccd>
1c008990:	03c7ad23          	sw	t3,58(a5)
1c008994:	57b25e37          	lui	t3,0x57b25
1c008998:	0f9e0e13          	addi	t3,t3,249 # 57b250f9 <__l2_shared_end+0x3bb150f9>
1c00899c:	03c7af23          	sw	t3,62(a5)
1c0089a0:	ca3f0e37          	lui	t3,0xca3f0
1c0089a4:	dd9e0e13          	addi	t3,t3,-551 # ca3efdd9 <pulp__FC+0xca3efdda>
1c0089a8:	05c7a123          	sw	t3,66(a5)
1c0089ac:	f2ce0e37          	lui	t3,0xf2ce0
1c0089b0:	bfae0e13          	addi	t3,t3,-1030 # f2cdfbfa <pulp__FC+0xf2cdfbfb>
1c0089b4:	05c7a323          	sw	t3,70(a5)
1c0089b8:	727bce37          	lui	t3,0x727bc
1c0089bc:	64ee0e13          	addi	t3,t3,1614 # 727bc64e <__l2_shared_end+0x567ac64e>
1c0089c0:	05c7a523          	sw	t3,74(a5)
1c0089c4:	aae8ee37          	lui	t3,0xaae8e
1c0089c8:	4e7e0e13          	addi	t3,t3,1255 # aae8e4e7 <pulp__FC+0xaae8e4e8>
1c0089cc:	05c7a723          	sw	t3,78(a5)
1c0089d0:	e7d77e37          	lui	t3,0xe7d77
1c0089d4:	f3ce0e13          	addi	t3,t3,-196 # e7d76f3c <pulp__FC+0xe7d76f3d>
1c0089d8:	05c7a923          	sw	t3,82(a5)
1c0089dc:	26dade37          	lui	t3,0x26dad
1c0089e0:	27be0e13          	addi	t3,t3,635 # 26dad27b <__l2_shared_end+0xad9d27b>
1c0089e4:	05c7ab23          	sw	t3,86(a5)
1c0089e8:	e5c3ae37          	lui	t3,0xe5c3a
1c0089ec:	045e0e13          	addi	t3,t3,69 # e5c3a045 <pulp__FC+0xe5c3a046>
1c0089f0:	05c7ad23          	sw	t3,90(a5)
1c0089f4:	1e224e37          	lui	t3,0x1e224
1c0089f8:	bb9e0e13          	addi	t3,t3,-1095 # 1e223bb9 <__l2_shared_end+0x2213bb9>
1c0089fc:	05c7af23          	sw	t3,94(a5)
1c008a00:	173ace37          	lui	t3,0x173ac
1c008a04:	08be0e13          	addi	t3,t3,139 # 173ac08b <__CTOR_LIST__-0x4c53f79>
1c008a08:	07c7a123          	sw	t3,98(a5)
1c008a0c:	34cb9e37          	lui	t3,0x34cb9
1c008a10:	263e0e13          	addi	t3,t3,611 # 34cb9263 <__l2_shared_end+0x18ca9263>
1c008a14:	07c7a323          	sw	t3,102(a5)
1c008a18:	731b3e37          	lui	t3,0x731b3
1c008a1c:	d47e0e13          	addi	t3,t3,-697 # 731b2d47 <__l2_shared_end+0x571a2d47>
1c008a20:	07c7a523          	sw	t3,106(a5)
1c008a24:	aaa00e13          	li	t3,-1366
1c008a28:	07c79723          	sh	t3,110(a5)
1c008a2c:	fb200e13          	li	t3,-78
1c008a30:	07c78823          	sb	t3,112(a5)
1c008a34:	a3f42e37          	lui	t3,0xa3f42
1c008a38:	555e0e13          	addi	t3,t3,1365 # a3f42555 <pulp__FC+0xa3f42556>
1c008a3c:	07c7a8a3          	sw	t3,113(a5)
1c008a40:	d6002e37          	lui	t3,0xd6002
1c008a44:	d4ce0e13          	addi	t3,t3,-692 # d6001d4c <pulp__FC+0xd6001d4d>
1c008a48:	07c7aaa3          	sw	t3,117(a5)
1c008a4c:	7de01e37          	lui	t3,0x7de01
1c008a50:	6d1e0e13          	addi	t3,t3,1745 # 7de016d1 <__l2_shared_end+0x61df16d1>
1c008a54:	07c7aca3          	sw	t3,121(a5)
1c008a58:	b7771e37          	lui	t3,0xb7771
1c008a5c:	4a0e0e13          	addi	t3,t3,1184 # b77714a0 <pulp__FC+0xb77714a1>
1c008a60:	07c7aea3          	sw	t3,125(a5)
1c008a64:	cf3f5e37          	lui	t3,0xcf3f5
1c008a68:	e2ce0e13          	addi	t3,t3,-468 # cf3f4e2c <pulp__FC+0xcf3f4e2d>
1c008a6c:	09c7a0a3          	sw	t3,129(a5)
1c008a70:	b7ac5e37          	lui	t3,0xb7ac5
1c008a74:	58ee0e13          	addi	t3,t3,1422 # b7ac558e <pulp__FC+0xb7ac558f>
1c008a78:	09c7a2a3          	sw	t3,133(a5)
1c008a7c:	b006ae37          	lui	t3,0xb006a
1c008a80:	363e0e13          	addi	t3,t3,867 # b006a363 <pulp__FC+0xb006a364>
1c008a84:	09c7a4a3          	sw	t3,137(a5)
1c008a88:	79954e37          	lui	t3,0x79954
1c008a8c:	359e0e13          	addi	t3,t3,857 # 79954359 <__l2_shared_end+0x5d944359>
1c008a90:	09c7a6a3          	sw	t3,141(a5)
1c008a94:	f9543e37          	lui	t3,0xf9543
1c008a98:	b73e0e13          	addi	t3,t3,-1165 # f9542b73 <pulp__FC+0xf9542b74>
1c008a9c:	09c7a8a3          	sw	t3,145(a5)
1c008aa0:	cb0b4e37          	lui	t3,0xcb0b4
1c008aa4:	383e0e13          	addi	t3,t3,899 # cb0b4383 <pulp__FC+0xcb0b4384>
1c008aa8:	09c7aaa3          	sw	t3,149(a5)
1c008aac:	1fda9e37          	lui	t3,0x1fda9
1c008ab0:	8b8e0e13          	addi	t3,t3,-1864 # 1fda88b8 <__l2_shared_end+0x3d988b8>
1c008ab4:	09c7aca3          	sw	t3,153(a5)
1c008ab8:	deb2de37          	lui	t3,0xdeb2d
1c008abc:	7aee0e13          	addi	t3,t3,1966 # deb2d7ae <pulp__FC+0xdeb2d7af>
1c008ac0:	09c7aea3          	sw	t3,157(a5)
1c008ac4:	5bc66e37          	lui	t3,0x5bc66
1c008ac8:	d64e0e13          	addi	t3,t3,-668 # 5bc65d64 <__l2_shared_end+0x3fc55d64>
1c008acc:	0bc7a0a3          	sw	t3,161(a5)
1c008ad0:	f2c80e37          	lui	t3,0xf2c80
1c008ad4:	3a2e0e13          	addi	t3,t3,930 # f2c803a2 <pulp__FC+0xf2c803a3>
1c008ad8:	0bc7a2a3          	sw	t3,165(a5)
1c008adc:	204fee37          	lui	t3,0x204fe
1c008ae0:	931e0e13          	addi	t3,t3,-1743 # 204fd931 <__l2_shared_end+0x44ed931>
1c008ae4:	0bc7a4a3          	sw	t3,169(a5)
1c008ae8:	4b406e37          	lui	t3,0x4b406
1c008aec:	218e0e13          	addi	t3,t3,536 # 4b406218 <__l2_shared_end+0x2f3f6218>
1c008af0:	0bc7a6a3          	sw	t3,173(a5)
1c008af4:	753c7e37          	lui	t3,0x753c7
1c008af8:	c08e0e13          	addi	t3,t3,-1016 # 753c6c08 <__l2_shared_end+0x593b6c08>
1c008afc:	0bc7a8a3          	sw	t3,177(a5)
1c008b00:	0ff3ee37          	lui	t3,0xff3e
1c008b04:	50fe0e13          	addi	t3,t3,1295 # ff3e50f <__CTOR_LIST__-0xc0c1af5>
1c008b08:	0bc7aaa3          	sw	t3,181(a5)
1c008b0c:	28869e37          	lui	t3,0x28869
1c008b10:	766e0e13          	addi	t3,t3,1894 # 28869766 <__l2_shared_end+0xc859766>
1c008b14:	0bc7aca3          	sw	t3,185(a5)
1c008b18:	90801e37          	lui	t3,0x90801
1c008b1c:	0dde0e13          	addi	t3,t3,221 # 908010dd <pulp__FC+0x908010de>
1c008b20:	0bc7aea3          	sw	t3,189(a5)
1c008b24:	6aa5ce37          	lui	t3,0x6aa5c
1c008b28:	46fe0e13          	addi	t3,t3,1135 # 6aa5c46f <__l2_shared_end+0x4ea4c46f>
1c008b2c:	0dc7a0a3          	sw	t3,193(a5)
1c008b30:	07037e37          	lui	t3,0x7037
1c008b34:	d0ee0e13          	addi	t3,t3,-754 # 7036d0e <__CTOR_LIST__-0x14fc92f6>
1c008b38:	0dc7a2a3          	sw	t3,197(a5)
1c008b3c:	d9586e37          	lui	t3,0xd9586
1c008b40:	2fae0e13          	addi	t3,t3,762 # d95862fa <pulp__FC+0xd95862fb>
1c008b44:	0dc7a4a3          	sw	t3,201(a5)
1c008b48:	029c6e37          	lui	t3,0x29c6
1c008b4c:	732e0e13          	addi	t3,t3,1842 # 29c6732 <__CTOR_LIST__-0x196398d2>
1c008b50:	0dc7a6a3          	sw	t3,205(a5)
1c008b54:	fc23ce37          	lui	t3,0xfc23c
1c008b58:	7e6e0e13          	addi	t3,t3,2022 # fc23c7e6 <pulp__FC+0xfc23c7e7>
1c008b5c:	0dc7a8a3          	sw	t3,209(a5)
1c008b60:	d24dde37          	lui	t3,0xd24dd
1c008b64:	bc4e0e13          	addi	t3,t3,-1084 # d24dcbc4 <pulp__FC+0xd24dcbc5>
1c008b68:	0dc7aaa3          	sw	t3,213(a5)
1c008b6c:	52542e37          	lui	t3,0x52542
1c008b70:	ddee0e13          	addi	t3,t3,-546 # 52541dde <__l2_shared_end+0x36531dde>
1c008b74:	0dc7aca3          	sw	t3,217(a5)
1c008b78:	8df35e37          	lui	t3,0x8df35
1c008b7c:	ef4e0e13          	addi	t3,t3,-268 # 8df34ef4 <pulp__FC+0x8df34ef5>
1c008b80:	0dc7aea3          	sw	t3,221(a5)
1c008b84:	5a612e37          	lui	t3,0x5a612
1c008b88:	e6be0e13          	addi	t3,t3,-405 # 5a611e6b <__l2_shared_end+0x3e601e6b>
1c008b8c:	0fc7a0a3          	sw	t3,225(a5)
1c008b90:	e9a11e37          	lui	t3,0xe9a11
1c008b94:	3e0e0e13          	addi	t3,t3,992 # e9a113e0 <pulp__FC+0xe9a113e1>
1c008b98:	0fc7a2a3          	sw	t3,229(a5)
1c008b9c:	0383ae37          	lui	t3,0x383a
1c008ba0:	183e0e13          	addi	t3,t3,387 # 383a183 <__CTOR_LIST__-0x187c5e81>
1c008ba4:	0fc7a4a3          	sw	t3,233(a5)
1c008ba8:	5aff5e37          	lui	t3,0x5aff5
1c008bac:	ebde0e13          	addi	t3,t3,-323 # 5aff4ebd <__l2_shared_end+0x3efe4ebd>
1c008bb0:	0fc7a6a3          	sw	t3,237(a5)
1c008bb4:	08a4ae37          	lui	t3,0x8a4a
1c008bb8:	8c9e0e13          	addi	t3,t3,-1847 # 8a498c9 <__CTOR_LIST__-0x135b673b>
1c008bbc:	0fc7a8a3          	sw	t3,241(a5)
1c008bc0:	03205e37          	lui	t3,0x3205
1c008bc4:	792e0e13          	addi	t3,t3,1938 # 3205792 <__CTOR_LIST__-0x18dfa872>
1c008bc8:	0fc7aaa3          	sw	t3,245(a5)
1c008bcc:	19a06e37          	lui	t3,0x19a06
1c008bd0:	7c8e0e13          	addi	t3,t3,1992 # 19a067c8 <__CTOR_LIST__-0x25f983c>
1c008bd4:	0fc7aca3          	sw	t3,249(a5)
1c008bd8:	ff93ce37          	lui	t3,0xff93c
1c008bdc:	4ece0e13          	addi	t3,t3,1260 # ff93c4ec <pulp__FC+0xff93c4ed>
1c008be0:	0fc7aea3          	sw	t3,253(a5)
1c008be4:	8e35ee37          	lui	t3,0x8e35e
1c008be8:	b9de0e13          	addi	t3,t3,-1123 # 8e35db9d <pulp__FC+0x8e35db9e>
1c008bec:	11c7a0a3          	sw	t3,257(a5)
1c008bf0:	5f00ce37          	lui	t3,0x5f00c
1c008bf4:	b2fe0e13          	addi	t3,t3,-1233 # 5f00bb2f <__l2_shared_end+0x42ffbb2f>
1c008bf8:	11c7a2a3          	sw	t3,261(a5)
1c008bfc:	5d7c5e37          	lui	t3,0x5d7c5
1c008c00:	f77e0e13          	addi	t3,t3,-137 # 5d7c4f77 <__l2_shared_end+0x417b4f77>
1c008c04:	11c7a4a3          	sw	t3,265(a5)
1c008c08:	73e1ee37          	lui	t3,0x73e1e
1c008c0c:	8bde0e13          	addi	t3,t3,-1859 # 73e1d8bd <__l2_shared_end+0x57e0d8bd>
1c008c10:	11c7a6a3          	sw	t3,269(a5)
1c008c14:	bb704e37          	lui	t3,0xbb704
1c008c18:	0e6d                	addi	t3,t3,27
1c008c1a:	11c7a8a3          	sw	t3,273(a5)
1c008c1e:	6496de37          	lui	t3,0x6496d
1c008c22:	85be0e13          	addi	t3,t3,-1957 # 6496c85b <__l2_shared_end+0x4895c85b>
1c008c26:	11c7aaa3          	sw	t3,277(a5)
1c008c2a:	719fee37          	lui	t3,0x719fe
1c008c2e:	e30e0e13          	addi	t3,t3,-464 # 719fde30 <__l2_shared_end+0x559ede30>
1c008c32:	11c7aca3          	sw	t3,281(a5)
1c008c36:	80445e37          	lui	t3,0x80445
1c008c3a:	5efe0e13          	addi	t3,t3,1519 # 804455ef <pulp__FC+0x804455f0>
1c008c3e:	11c7aea3          	sw	t3,285(a5)
1c008c42:	fc7bee37          	lui	t3,0xfc7be
1c008c46:	66de0e13          	addi	t3,t3,1645 # fc7be66d <pulp__FC+0xfc7be66e>
1c008c4a:	13c7a0a3          	sw	t3,289(a5)
1c008c4e:	3423ee37          	lui	t3,0x3423e
1c008c52:	d7de0e13          	addi	t3,t3,-643 # 3423dd7d <__l2_shared_end+0x1822dd7d>
1c008c56:	13c7a2a3          	sw	t3,293(a5)
1c008c5a:	8bedde37          	lui	t3,0x8bedd
1c008c5e:	a7ee0e13          	addi	t3,t3,-1410 # 8bedca7e <pulp__FC+0x8bedca7f>
1c008c62:	13c7a4a3          	sw	t3,297(a5)
1c008c66:	81414e37          	lui	t3,0x81414
1c008c6a:	af5e0e13          	addi	t3,t3,-1291 # 81413af5 <pulp__FC+0x81413af6>
1c008c6e:	13c7a6a3          	sw	t3,301(a5)
1c008c72:	1b639e37          	lui	t3,0x1b639
1c008c76:	e01e0e13          	addi	t3,t3,-511 # 1b638e01 <__CTOR_LIST__-0x9c7203>
1c008c7a:	13c7a8a3          	sw	t3,305(a5)
1c008c7e:	288c8e37          	lui	t3,0x288c8
1c008c82:	05fe0e13          	addi	t3,t3,95 # 288c805f <__l2_shared_end+0xc8b805f>
1c008c86:	13c7aaa3          	sw	t3,309(a5)
1c008c8a:	9d644e37          	lui	t3,0x9d644
1c008c8e:	ca7e0e13          	addi	t3,t3,-857 # 9d643ca7 <pulp__FC+0x9d643ca8>
1c008c92:	13c7aca3          	sw	t3,313(a5)
1c008c96:	91262e37          	lui	t3,0x91262
1c008c9a:	344e0e13          	addi	t3,t3,836 # 91262344 <pulp__FC+0x91262345>
1c008c9e:	13c7aea3          	sw	t3,317(a5)
1c008ca2:	903cfe37          	lui	t3,0x903cf
1c008ca6:	4eae0e13          	addi	t3,t3,1258 # 903cf4ea <pulp__FC+0x903cf4eb>
1c008caa:	15c7a0a3          	sw	t3,321(a5)
1c008cae:	19b40e37          	lui	t3,0x19b40
1c008cb2:	45ee0e13          	addi	t3,t3,1118 # 19b4045e <__CTOR_LIST__-0x24bfba6>
1c008cb6:	15c7a2a3          	sw	t3,325(a5)
1c008cba:	20d0be37          	lui	t3,0x20d0b
1c008cbe:	626e0e13          	addi	t3,t3,1574 # 20d0b626 <__l2_shared_end+0x4cfb626>
1c008cc2:	15c7a4a3          	sw	t3,329(a5)
1c008cc6:	4e11ce37          	lui	t3,0x4e11c
1c008cca:	fbce0e13          	addi	t3,t3,-68 # 4e11bfbc <__l2_shared_end+0x3210bfbc>
1c008cce:	15c7a6a3          	sw	t3,333(a5)
1c008cd2:	f3c0ce37          	lui	t3,0xf3c0c
1c008cd6:	f8ce0e13          	addi	t3,t3,-116 # f3c0bf8c <pulp__FC+0xf3c0bf8d>
1c008cda:	15c7a8a3          	sw	t3,337(a5)
1c008cde:	2d073e37          	lui	t3,0x2d073
1c008ce2:	2eee0e13          	addi	t3,t3,750 # 2d0732ee <__l2_shared_end+0x110632ee>
1c008ce6:	15c7aaa3          	sw	t3,341(a5)
1c008cea:	7391fe37          	lui	t3,0x7391f
1c008cee:	b47e0e13          	addi	t3,t3,-1209 # 7391eb47 <__l2_shared_end+0x5790eb47>
1c008cf2:	15c7aca3          	sw	t3,345(a5)
1c008cf6:	6ff07e37          	lui	t3,0x6ff07
1c008cfa:	caee0e13          	addi	t3,t3,-850 # 6ff06cae <__l2_shared_end+0x53ef6cae>
1c008cfe:	15c7aea3          	sw	t3,349(a5)
1c008d02:	22c4ae37          	lui	t3,0x22c4a
1c008d06:	a0ce0e13          	addi	t3,t3,-1524 # 22c49a0c <__l2_shared_end+0x6c39a0c>
1c008d0a:	17c7a0a3          	sw	t3,353(a5)
1c008d0e:	95ce5e37          	lui	t3,0x95ce5
1c008d12:	739e0e13          	addi	t3,t3,1849 # 95ce5739 <pulp__FC+0x95ce573a>
1c008d16:	17c7a2a3          	sw	t3,357(a5)
1c008d1a:	7e69                	lui	t3,0xffffa
1c008d1c:	bcfe0e13          	addi	t3,t3,-1073 # ffff9bcf <pulp__FC+0xffff9bd0>
1c008d20:	17c794a3          	sh	t3,361(a5)
1c008d24:	5e35                	li	t3,-19
1c008d26:	17c785a3          	sb	t3,363(a5)
1c008d2a:	2605de37          	lui	t3,0x2605d
1c008d2e:	eb9e0e13          	addi	t3,t3,-327 # 2605ceb9 <__l2_shared_end+0xa04ceb9>
1c008d32:	17c7a623          	sw	t3,364(a5)
1c008d36:	9277fe37          	lui	t3,0x9277f
1c008d3a:	932e0e13          	addi	t3,t3,-1742 # 9277e932 <pulp__FC+0x9277e933>
1c008d3e:	17c7a823          	sw	t3,368(a5)
1c008d42:	d2d32e37          	lui	t3,0xd2d32
1c008d46:	e4ee0e13          	addi	t3,t3,-434 # d2d31e4e <pulp__FC+0xd2d31e4f>
1c008d4a:	17c7aa23          	sw	t3,372(a5)
1c008d4e:	5274ce37          	lui	t3,0x5274c
1c008d52:	cbde0e13          	addi	t3,t3,-835 # 5274bcbd <__l2_shared_end+0x3673bcbd>
1c008d56:	17c7ac23          	sw	t3,376(a5)
1c008d5a:	bf059e37          	lui	t3,0xbf059
1c008d5e:	7efe0e13          	addi	t3,t3,2031 # bf0597ef <pulp__FC+0xbf0597f0>
1c008d62:	17c7ae23          	sw	t3,380(a5)
1c008d66:	d9bfbe37          	lui	t3,0xd9bfb
1c008d6a:	902e0e13          	addi	t3,t3,-1790 # d9bfa902 <pulp__FC+0xd9bfa903>
1c008d6e:	19c7a023          	sw	t3,384(a5)
1c008d72:	9dae4e37          	lui	t3,0x9dae4
1c008d76:	863e0e13          	addi	t3,t3,-1949 # 9dae3863 <pulp__FC+0x9dae3864>
1c008d7a:	19c7a223          	sw	t3,388(a5)
1c008d7e:	d3937e37          	lui	t3,0xd3937
1c008d82:	3a7e0e13          	addi	t3,t3,935 # d39373a7 <pulp__FC+0xd39373a8>
1c008d86:	19c7a423          	sw	t3,392(a5)
1c008d8a:	f6360e37          	lui	t3,0xf6360
1c008d8e:	d0ee0e13          	addi	t3,t3,-754 # f635fd0e <pulp__FC+0xf635fd0f>
1c008d92:	19c7a623          	sw	t3,396(a5)
1c008d96:	1913ee37          	lui	t3,0x1913e
1c008d9a:	c1be0e13          	addi	t3,t3,-997 # 1913dc1b <__CTOR_LIST__-0x2ec23e9>
1c008d9e:	19c7a823          	sw	t3,400(a5)
1c008da2:	b4f6fe37          	lui	t3,0xb4f6f
1c008da6:	b3be0e13          	addi	t3,t3,-1221 # b4f6eb3b <pulp__FC+0xb4f6eb3c>
1c008daa:	19c7aa23          	sw	t3,404(a5)
1c008dae:	e1ecde37          	lui	t3,0xe1ecd
1c008db2:	9bde0e13          	addi	t3,t3,-1603 # e1ecc9bd <pulp__FC+0xe1ecc9be>
1c008db6:	19c7ac23          	sw	t3,408(a5)
1c008dba:	1d757e37          	lui	t3,0x1d757
1c008dbe:	d84e0e13          	addi	t3,t3,-636 # 1d756d84 <__l2_shared_end+0x1746d84>
1c008dc2:	19c7ae23          	sw	t3,412(a5)
1c008dc6:	bc591e37          	lui	t3,0xbc591
1c008dca:	40ce0e13          	addi	t3,t3,1036 # bc59140c <pulp__FC+0xbc59140d>
1c008dce:	1bc7a023          	sw	t3,416(a5)
1c008dd2:	0857ce37          	lui	t3,0x857c
1c008dd6:	9bbe0e13          	addi	t3,t3,-1605 # 857b9bb <__CTOR_LIST__-0x13a84649>
1c008dda:	1bc7a223          	sw	t3,420(a5)
1c008dde:	b6ea6e37          	lui	t3,0xb6ea6
1c008de2:	0aae0e13          	addi	t3,t3,170 # b6ea60aa <pulp__FC+0xb6ea60ab>
1c008de6:	1bc7a423          	sw	t3,424(a5)
1c008dea:	66fc4e37          	lui	t3,0x66fc4
1c008dee:	ab3e0e13          	addi	t3,t3,-1357 # 66fc3ab3 <__l2_shared_end+0x4afb3ab3>
1c008df2:	1bc7a623          	sw	t3,428(a5)
1c008df6:	d946fe37          	lui	t3,0xd946f
1c008dfa:	d5fe0e13          	addi	t3,t3,-673 # d946ed5f <pulp__FC+0xd946ed60>
1c008dfe:	1bc7a823          	sw	t3,432(a5)
1c008e02:	f69f8e37          	lui	t3,0xf69f8
1c008e06:	bdee0e13          	addi	t3,t3,-1058 # f69f7bde <pulp__FC+0xf69f7bdf>
1c008e0a:	1bc7aa23          	sw	t3,436(a5)
1c008e0e:	4e06ee37          	lui	t3,0x4e06e
1c008e12:	6f3e0e13          	addi	t3,t3,1779 # 4e06e6f3 <__l2_shared_end+0x3205e6f3>
1c008e16:	1bc7ac23          	sw	t3,440(a5)
1c008e1a:	7223ce37          	lui	t3,0x7223c
1c008e1e:	f4ee0e13          	addi	t3,t3,-178 # 7223bf4e <__l2_shared_end+0x5622bf4e>
1c008e22:	1bc7ae23          	sw	t3,444(a5)
1c008e26:	8aa32e37          	lui	t3,0x8aa32
1c008e2a:	bc0e0e13          	addi	t3,t3,-1088 # 8aa31bc0 <pulp__FC+0x8aa31bc1>
1c008e2e:	1dc7a023          	sw	t3,448(a5)
1c008e32:	d1266e37          	lui	t3,0xd1266
1c008e36:	5dde0e13          	addi	t3,t3,1501 # d12665dd <pulp__FC+0xd12665de>
1c008e3a:	1dc7a223          	sw	t3,452(a5)
1c008e3e:	776c5e37          	lui	t3,0x776c5
1c008e42:	abae0e13          	addi	t3,t3,-1350 # 776c4aba <__l2_shared_end+0x5b6b4aba>
1c008e46:	1dc7a423          	sw	t3,456(a5)
1c008e4a:	80786e37          	lui	t3,0x80786
1c008e4e:	5e6e0e13          	addi	t3,t3,1510 # 807865e6 <pulp__FC+0x807865e7>
1c008e52:	1dc7a623          	sw	t3,460(a5)
1c008e56:	89409e37          	lui	t3,0x89409
1c008e5a:	833e0e13          	addi	t3,t3,-1997 # 89408833 <pulp__FC+0x89408834>
1c008e5e:	1dc7a823          	sw	t3,464(a5)
1c008e62:	2b6d6e37          	lui	t3,0x2b6d6
1c008e66:	2e6e0e13          	addi	t3,t3,742 # 2b6d62e6 <__l2_shared_end+0xf6c62e6>
1c008e6a:	1dc7aa23          	sw	t3,468(a5)
1c008e6e:	4c4e8e37          	lui	t3,0x4c4e8
1c008e72:	eb0e0e13          	addi	t3,t3,-336 # 4c4e7eb0 <__l2_shared_end+0x304d7eb0>
1c008e76:	1dc7ac23          	sw	t3,472(a5)
1c008e7a:	67d4fe37          	lui	t3,0x67d4f
1c008e7e:	777e0e13          	addi	t3,t3,1911 # 67d4f777 <__l2_shared_end+0x4bd3f777>
1c008e82:	1dc7ae23          	sw	t3,476(a5)
1c008e86:	b60eae37          	lui	t3,0xb60ea
1c008e8a:	db6e0e13          	addi	t3,t3,-586 # b60e9db6 <pulp__FC+0xb60e9db7>
1c008e8e:	1fc7a023          	sw	t3,480(a5)
1c008e92:	22eeee37          	lui	t3,0x22eee
1c008e96:	bf5e0e13          	addi	t3,t3,-1035 # 22eedbf5 <__l2_shared_end+0x6eddbf5>
1c008e9a:	1fc7a223          	sw	t3,484(a5)
1c008e9e:	4decfe37          	lui	t3,0x4decf
1c008ea2:	5fbe0e13          	addi	t3,t3,1531 # 4decf5fb <__l2_shared_end+0x31ebf5fb>
1c008ea6:	1fc7a423          	sw	t3,488(a5)
1c008eaa:	e0761e37          	lui	t3,0xe0761
1c008eae:	0e7e0e13          	addi	t3,t3,231 # e07610e7 <pulp__FC+0xe07610e8>
1c008eb2:	1fc7a623          	sw	t3,492(a5)
1c008eb6:	17e7be37          	lui	t3,0x17e7b
1c008eba:	708e0e13          	addi	t3,t3,1800 # 17e7b708 <__CTOR_LIST__-0x41848fc>
1c008ebe:	1fc7a823          	sw	t3,496(a5)
1c008ec2:	b2fd0e37          	lui	t3,0xb2fd0
1c008ec6:	9ebe0e13          	addi	t3,t3,-1557 # b2fcf9eb <pulp__FC+0xb2fcf9ec>
1c008eca:	1fc7aa23          	sw	t3,500(a5)
1c008ece:	69a6ee37          	lui	t3,0x69a6e
1c008ed2:	e69e0e13          	addi	t3,t3,-407 # 69a6de69 <__l2_shared_end+0x4da5de69>
1c008ed6:	1fc7ac23          	sw	t3,504(a5)
1c008eda:	8697ee37          	lui	t3,0x8697e
1c008ede:	cf0e0e13          	addi	t3,t3,-784 # 8697dcf0 <pulp__FC+0x8697dcf1>
1c008ee2:	1fc7ae23          	sw	t3,508(a5)
1c008ee6:	aae02e37          	lui	t3,0xaae02
1c008eea:	637e0e13          	addi	t3,t3,1591 # aae02637 <pulp__FC+0xaae02638>
1c008eee:	21c7a023          	sw	t3,512(a5)
1c008ef2:	856a9e37          	lui	t3,0x856a9
1c008ef6:	460e0e13          	addi	t3,t3,1120 # 856a9460 <pulp__FC+0x856a9461>
1c008efa:	21c7a223          	sw	t3,516(a5)
1c008efe:	f2981e37          	lui	t3,0xf2981
1c008f02:	dd4e0e13          	addi	t3,t3,-556 # f2980dd4 <pulp__FC+0xf2980dd5>
1c008f06:	21c7a423          	sw	t3,520(a5)
1c008f0a:	eba60e37          	lui	t3,0xeba60
1c008f0e:	38de0e13          	addi	t3,t3,909 # eba6038d <pulp__FC+0xeba6038e>
1c008f12:	21c7a623          	sw	t3,524(a5)
1c008f16:	34f44e37          	lui	t3,0x34f44
1c008f1a:	b73e0e13          	addi	t3,t3,-1165 # 34f43b73 <__l2_shared_end+0x18f33b73>
1c008f1e:	21c7a823          	sw	t3,528(a5)
1c008f22:	7beb8e37          	lui	t3,0x7beb8
1c008f26:	face0e13          	addi	t3,t3,-84 # 7beb7fac <__l2_shared_end+0x5fea7fac>
1c008f2a:	21c7aa23          	sw	t3,532(a5)
1c008f2e:	deef9e37          	lui	t3,0xdeef9
1c008f32:	261e0e13          	addi	t3,t3,609 # deef9261 <pulp__FC+0xdeef9262>
1c008f36:	21c7ac23          	sw	t3,536(a5)
1c008f3a:	e7b81e37          	lui	t3,0xe7b81
1c008f3e:	7bfe0e13          	addi	t3,t3,1983 # e7b817bf <pulp__FC+0xe7b817c0>
1c008f42:	21c7ae23          	sw	t3,540(a5)
1c008f46:	46a99e37          	lui	t3,0x46a99
1c008f4a:	13ee0e13          	addi	t3,t3,318 # 46a9913e <__l2_shared_end+0x2aa8913e>
1c008f4e:	23c7a023          	sw	t3,544(a5)
1c008f52:	7e6ade37          	lui	t3,0x7e6ad
1c008f56:	da4e0e13          	addi	t3,t3,-604 # 7e6acda4 <__l2_shared_end+0x6269cda4>
1c008f5a:	23c7a223          	sw	t3,548(a5)
1c008f5e:	860d3e37          	lui	t3,0x860d3
1c008f62:	8f1e0e13          	addi	t3,t3,-1807 # 860d28f1 <pulp__FC+0x860d28f2>
1c008f66:	23c7a423          	sw	t3,552(a5)
1c008f6a:	c6866e37          	lui	t3,0xc6866
1c008f6e:	76be0e13          	addi	t3,t3,1899 # c686676b <pulp__FC+0xc686676c>
1c008f72:	23c7a623          	sw	t3,556(a5)
1c008f76:	f0daae37          	lui	t3,0xf0daa
1c008f7a:	8bde0e13          	addi	t3,t3,-1859 # f0da98bd <pulp__FC+0xf0da98be>
1c008f7e:	23c7a823          	sw	t3,560(a5)
1c008f82:	d47d7e37          	lui	t3,0xd47d7
1c008f86:	9ece0e13          	addi	t3,t3,-1556 # d47d69ec <pulp__FC+0xd47d69ed>
1c008f8a:	23c7aa23          	sw	t3,564(a5)
1c008f8e:	ca113e37          	lui	t3,0xca113
1c008f92:	1cee0e13          	addi	t3,t3,462 # ca1131ce <pulp__FC+0xca1131cf>
1c008f96:	23c7ac23          	sw	t3,568(a5)
1c008f9a:	afbeae37          	lui	t3,0xafbea
1c008f9e:	176e0e13          	addi	t3,t3,374 # afbea176 <pulp__FC+0xafbea177>
1c008fa2:	23c7ae23          	sw	t3,572(a5)
1c008fa6:	d1707e37          	lui	t3,0xd1707
1c008faa:	7a3e0e13          	addi	t3,t3,1955 # d17077a3 <pulp__FC+0xd17077a4>
1c008fae:	25c7a023          	sw	t3,576(a5)
1c008fb2:	68f1de37          	lui	t3,0x68f1d
1c008fb6:	2cae0e13          	addi	t3,t3,714 # 68f1d2ca <__l2_shared_end+0x4cf0d2ca>
1c008fba:	25c7a223          	sw	t3,580(a5)
1c008fbe:	ca22be37          	lui	t3,0xca22b
1c008fc2:	6cfe0e13          	addi	t3,t3,1743 # ca22b6cf <pulp__FC+0xca22b6d0>
1c008fc6:	25c7a423          	sw	t3,584(a5)
1c008fca:	619a3e37          	lui	t3,0x619a3
1c008fce:	c34e0e13          	addi	t3,t3,-972 # 619a2c34 <__l2_shared_end+0x45992c34>
1c008fd2:	25c7a623          	sw	t3,588(a5)
1c008fd6:	ae468e37          	lui	t3,0xae468
1c008fda:	cb2e0e13          	addi	t3,t3,-846 # ae467cb2 <pulp__FC+0xae467cb3>
1c008fde:	25c7a823          	sw	t3,592(a5)
1c008fe2:	51e8de37          	lui	t3,0x51e8d
1c008fe6:	a27e0e13          	addi	t3,t3,-1497 # 51e8ca27 <__l2_shared_end+0x35e7ca27>
1c008fea:	25c7aa23          	sw	t3,596(a5)
1c008fee:	021afe37          	lui	t3,0x21af
1c008ff2:	c7ee0e13          	addi	t3,t3,-898 # 21aec7e <__CTOR_LIST__-0x19e51386>
1c008ff6:	25c7ac23          	sw	t3,600(a5)
1c008ffa:	f14c4e37          	lui	t3,0xf14c4
1c008ffe:	268e0e13          	addi	t3,t3,616 # f14c4268 <pulp__FC+0xf14c4269>
1c009002:	25c7ae23          	sw	t3,604(a5)
1c009006:	4098be37          	lui	t3,0x4098b
1c00900a:	b86e0e13          	addi	t3,t3,-1146 # 4098ab86 <__l2_shared_end+0x2497ab86>
1c00900e:	27c7a023          	sw	t3,608(a5)
1c009012:	7e6d                	lui	t3,0xffffb
1c009014:	9d1e0e13          	addi	t3,t3,-1583 # ffffa9d1 <pulp__FC+0xffffa9d2>
1c009018:	27c79223          	sh	t3,612(a5)
1c00901c:	fd700e13          	li	t3,-41
1c009020:	27c78323          	sb	t3,614(a5)
1c009024:	87366e37          	lui	t3,0x87366
1c009028:	507e0e13          	addi	t3,t3,1287 # 87366507 <pulp__FC+0x87366508>
1c00902c:	27c7a3a3          	sw	t3,615(a5)
1c009030:	97f13e37          	lui	t3,0x97f13
1c009034:	887e0e13          	addi	t3,t3,-1913 # 97f12887 <pulp__FC+0x97f12888>
1c009038:	27c7a5a3          	sw	t3,619(a5)
1c00903c:	5ad0de37          	lui	t3,0x5ad0d
1c009040:	20be0e13          	addi	t3,t3,523 # 5ad0d20b <__l2_shared_end+0x3ecfd20b>
1c009044:	27c7a7a3          	sw	t3,623(a5)
1c009048:	4953ce37          	lui	t3,0x4953c
1c00904c:	51be0e13          	addi	t3,t3,1307 # 4953c51b <__l2_shared_end+0x2d52c51b>
1c009050:	27c7a9a3          	sw	t3,627(a5)
1c009054:	93219e37          	lui	t3,0x93219
1c009058:	6c8e0e13          	addi	t3,t3,1736 # 932196c8 <pulp__FC+0x932196c9>
1c00905c:	27c7aba3          	sw	t3,631(a5)
1c009060:	803e4e37          	lui	t3,0x803e4
1c009064:	49ee0e13          	addi	t3,t3,1182 # 803e449e <pulp__FC+0x803e449f>
1c009068:	27c7ada3          	sw	t3,635(a5)
1c00906c:	19c71e37          	lui	t3,0x19c71
1c009070:	1f6e0e13          	addi	t3,t3,502 # 19c711f6 <__CTOR_LIST__-0x238ee0e>
1c009074:	27c7afa3          	sw	t3,639(a5)
1c009078:	cc94ae37          	lui	t3,0xcc94a
1c00907c:	3efe0e13          	addi	t3,t3,1007 # cc94a3ef <pulp__FC+0xcc94a3f0>
1c009080:	29c7a1a3          	sw	t3,643(a5)
1c009084:	d832fe37          	lui	t3,0xd832f
1c009088:	27ce0e13          	addi	t3,t3,636 # d832f27c <pulp__FC+0xd832f27d>
1c00908c:	29c7a3a3          	sw	t3,647(a5)
1c009090:	772dee37          	lui	t3,0x772de
1c009094:	98ee0e13          	addi	t3,t3,-1650 # 772dd98e <__l2_shared_end+0x5b2cd98e>
1c009098:	29c7a5a3          	sw	t3,651(a5)
1c00909c:	e6139e37          	lui	t3,0xe6139
1c0090a0:	ad6e0e13          	addi	t3,t3,-1322 # e6138ad6 <pulp__FC+0xe6138ad7>
1c0090a4:	29c7a7a3          	sw	t3,655(a5)
1c0090a8:	9e671e37          	lui	t3,0x9e671
1c0090ac:	f60e0e13          	addi	t3,t3,-160 # 9e670f60 <pulp__FC+0x9e670f61>
1c0090b0:	29c7a9a3          	sw	t3,659(a5)
1c0090b4:	d667be37          	lui	t3,0xd667b
1c0090b8:	7dae0e13          	addi	t3,t3,2010 # d667b7da <pulp__FC+0xd667b7db>
1c0090bc:	29c7aba3          	sw	t3,663(a5)
1c0090c0:	3b5bee37          	lui	t3,0x3b5be
1c0090c4:	487e0e13          	addi	t3,t3,1159 # 3b5be487 <__l2_shared_end+0x1f5ae487>
1c0090c8:	29c7ada3          	sw	t3,667(a5)
1c0090cc:	00fc8e37          	lui	t3,0xfc8
1c0090d0:	83de0e13          	addi	t3,t3,-1987 # fc783d <__CTOR_LIST__-0x1b0387c7>
1c0090d4:	29c7afa3          	sw	t3,671(a5)
1c0090d8:	a138ae37          	lui	t3,0xa138a
1c0090dc:	7bee0e13          	addi	t3,t3,1982 # a138a7be <pulp__FC+0xa138a7bf>
1c0090e0:	2bc7a1a3          	sw	t3,675(a5)
1c0090e4:	2fca0e37          	lui	t3,0x2fca0
1c0090e8:	22de0e13          	addi	t3,t3,557 # 2fca022d <__l2_shared_end+0x13c9022d>
1c0090ec:	2bc7a3a3          	sw	t3,679(a5)
1c0090f0:	add12e37          	lui	t3,0xadd12
1c0090f4:	e48e0e13          	addi	t3,t3,-440 # add11e48 <pulp__FC+0xadd11e49>
1c0090f8:	2bc7a5a3          	sw	t3,683(a5)
1c0090fc:	4eb62e37          	lui	t3,0x4eb62
1c009100:	24ae0e13          	addi	t3,t3,586 # 4eb6224a <__l2_shared_end+0x32b5224a>
1c009104:	2bc7a7a3          	sw	t3,687(a5)
1c009108:	ebb98e37          	lui	t3,0xebb98
1c00910c:	f8ce0e13          	addi	t3,t3,-116 # ebb97f8c <pulp__FC+0xebb97f8d>
1c009110:	2bc7a9a3          	sw	t3,691(a5)
1c009114:	52857e37          	lui	t3,0x52857
1c009118:	1c7e0e13          	addi	t3,t3,455 # 528571c7 <__l2_shared_end+0x368471c7>
1c00911c:	2bc7aba3          	sw	t3,695(a5)
1c009120:	c2b2be37          	lui	t3,0xc2b2b
1c009124:	b55e0e13          	addi	t3,t3,-1195 # c2b2ab55 <pulp__FC+0xc2b2ab56>
1c009128:	2bc7ada3          	sw	t3,699(a5)
1c00912c:	06cf1e37          	lui	t3,0x6cf1
1c009130:	869e0e13          	addi	t3,t3,-1943 # 6cf0869 <__CTOR_LIST__-0x1530f79b>
1c009134:	2bc7afa3          	sw	t3,703(a5)
1c009138:	a6aaae37          	lui	t3,0xa6aaa
1c00913c:	244e0e13          	addi	t3,t3,580 # a6aaa244 <pulp__FC+0xa6aaa245>
1c009140:	2dc7a1a3          	sw	t3,707(a5)
1c009144:	6a6e0e37          	lui	t3,0x6a6e0
1c009148:	422e0e13          	addi	t3,t3,1058 # 6a6e0422 <__l2_shared_end+0x4e6d0422>
1c00914c:	2dc7a3a3          	sw	t3,711(a5)
1c009150:	82aafe37          	lui	t3,0x82aaf
1c009154:	a65e0e13          	addi	t3,t3,-1435 # 82aaea65 <pulp__FC+0x82aaea66>
1c009158:	2dc7a5a3          	sw	t3,715(a5)
1c00915c:	44b4be37          	lui	t3,0x44b4b
1c009160:	cc1e0e13          	addi	t3,t3,-831 # 44b4acc1 <__l2_shared_end+0x28b3acc1>
1c009164:	2dc7a7a3          	sw	t3,719(a5)
1c009168:	1ad45e37          	lui	t3,0x1ad45
1c00916c:	2a3e0e13          	addi	t3,t3,675 # 1ad452a3 <__CTOR_LIST__-0x12bad61>
1c009170:	2dc7a9a3          	sw	t3,723(a5)
1c009174:	3a33ee37          	lui	t3,0x3a33e
1c009178:	60be0e13          	addi	t3,t3,1547 # 3a33e60b <__l2_shared_end+0x1e32e60b>
1c00917c:	2dc7aba3          	sw	t3,727(a5)
1c009180:	afbf3e37          	lui	t3,0xafbf3
1c009184:	823e0e13          	addi	t3,t3,-2013 # afbf2823 <pulp__FC+0xafbf2824>
1c009188:	2dc7ada3          	sw	t3,731(a5)
1c00918c:	8ce63e37          	lui	t3,0x8ce63
1c009190:	c95e0e13          	addi	t3,t3,-875 # 8ce62c95 <pulp__FC+0x8ce62c96>
1c009194:	2dc7afa3          	sw	t3,735(a5)
1c009198:	40196e37          	lui	t3,0x40196
1c00919c:	f14e0e13          	addi	t3,t3,-236 # 40195f14 <__l2_shared_end+0x24185f14>
1c0091a0:	2fc7a1a3          	sw	t3,739(a5)
1c0091a4:	980dde37          	lui	t3,0x980dd
1c0091a8:	092e0e13          	addi	t3,t3,146 # 980dd092 <pulp__FC+0x980dd093>
1c0091ac:	2fc7a3a3          	sw	t3,743(a5)
1c0091b0:	91f08e37          	lui	t3,0x91f08
1c0091b4:	d7be0e13          	addi	t3,t3,-645 # 91f07d7b <pulp__FC+0x91f07d7c>
1c0091b8:	2fc7a5a3          	sw	t3,747(a5)
1c0091bc:	34270e37          	lui	t3,0x34270
1c0091c0:	715e0e13          	addi	t3,t3,1813 # 34270715 <__l2_shared_end+0x18260715>
1c0091c4:	2fc7a7a3          	sw	t3,751(a5)
1c0091c8:	782f8e37          	lui	t3,0x782f8
1c0091cc:	96ae0e13          	addi	t3,t3,-1686 # 782f796a <__l2_shared_end+0x5c2e796a>
1c0091d0:	2fc7a9a3          	sw	t3,755(a5)
1c0091d4:	6806fe37          	lui	t3,0x6806f
1c0091d8:	af8e0e13          	addi	t3,t3,-1288 # 6806eaf8 <__l2_shared_end+0x4c05eaf8>
1c0091dc:	2fc7aba3          	sw	t3,759(a5)
1c0091e0:	f80cee37          	lui	t3,0xf80ce
1c0091e4:	0c7e0e13          	addi	t3,t3,199 # f80ce0c7 <pulp__FC+0xf80ce0c8>
1c0091e8:	2fc7ada3          	sw	t3,763(a5)
1c0091ec:	67c77e37          	lui	t3,0x67c77
1c0091f0:	e35e0e13          	addi	t3,t3,-459 # 67c76e35 <__l2_shared_end+0x4bc66e35>
1c0091f4:	2fc7afa3          	sw	t3,767(a5)
1c0091f8:	8f3b0e37          	lui	t3,0x8f3b0
1c0091fc:	40ae0e13          	addi	t3,t3,1034 # 8f3b040a <pulp__FC+0x8f3b040b>
1c009200:	31c7a1a3          	sw	t3,771(a5)
1c009204:	97a4ae37          	lui	t3,0x97a4a
1c009208:	235e0e13          	addi	t3,t3,565 # 97a4a235 <pulp__FC+0x97a4a236>
1c00920c:	31c7a3a3          	sw	t3,775(a5)
1c009210:	41ddbe37          	lui	t3,0x41ddb
1c009214:	56fe0e13          	addi	t3,t3,1391 # 41ddb56f <__l2_shared_end+0x25dcb56f>
1c009218:	31c7a5a3          	sw	t3,779(a5)
1c00921c:	87821e37          	lui	t3,0x87821
1c009220:	21ae0e13          	addi	t3,t3,538 # 8782121a <pulp__FC+0x8782121b>
1c009224:	31c7a7a3          	sw	t3,783(a5)
1c009228:	83f0de37          	lui	t3,0x83f0d
1c00922c:	dd4e0e13          	addi	t3,t3,-556 # 83f0cdd4 <pulp__FC+0x83f0cdd5>
1c009230:	31c7a9a3          	sw	t3,787(a5)
1c009234:	a991ae37          	lui	t3,0xa991a
1c009238:	720e0e13          	addi	t3,t3,1824 # a991a720 <pulp__FC+0xa991a721>
1c00923c:	31c7aba3          	sw	t3,791(a5)
1c009240:	8452be37          	lui	t3,0x8452b
1c009244:	7e2e0e13          	addi	t3,t3,2018 # 8452b7e2 <pulp__FC+0x8452b7e3>
1c009248:	31c7ada3          	sw	t3,795(a5)
1c00924c:	1f146e37          	lui	t3,0x1f146
1c009250:	1e3e0e13          	addi	t3,t3,483 # 1f1461e3 <__l2_shared_end+0x31361e3>
1c009254:	31c7afa3          	sw	t3,799(a5)
1c009258:	0e3a4e37          	lui	t3,0xe3a4
1c00925c:	2d0e0e13          	addi	t3,t3,720 # e3a42d0 <__CTOR_LIST__-0xdc5bd34>
1c009260:	33c7a1a3          	sw	t3,803(a5)
1c009264:	a744ce37          	lui	t3,0xa744c
1c009268:	7dbe0e13          	addi	t3,t3,2011 # a744c7db <pulp__FC+0xa744c7dc>
1c00926c:	33c7a3a3          	sw	t3,807(a5)
1c009270:	1f902e37          	lui	t3,0x1f902
1c009274:	f57e0e13          	addi	t3,t3,-169 # 1f901f57 <__l2_shared_end+0x38f1f57>
1c009278:	33c7a5a3          	sw	t3,811(a5)
1c00927c:	c229ee37          	lui	t3,0xc229e
1c009280:	d28e0e13          	addi	t3,t3,-728 # c229dd28 <pulp__FC+0xc229dd29>
1c009284:	33c7a7a3          	sw	t3,815(a5)
1c009288:	3c720e37          	lui	t3,0x3c720
1c00928c:	87ce0e13          	addi	t3,t3,-1924 # 3c71f87c <__l2_shared_end+0x2070f87c>
1c009290:	33c7a9a3          	sw	t3,819(a5)
1c009294:	363e7e37          	lui	t3,0x363e7
1c009298:	459e0e13          	addi	t3,t3,1113 # 363e7459 <__l2_shared_end+0x1a3d7459>
1c00929c:	33c7aba3          	sw	t3,823(a5)
1c0092a0:	e9cbae37          	lui	t3,0xe9cba
1c0092a4:	9b7e0e13          	addi	t3,t3,-1609 # e9cb99b7 <pulp__FC+0xe9cb99b8>
1c0092a8:	33c7ada3          	sw	t3,827(a5)
1c0092ac:	2597ce37          	lui	t3,0x2597c
1c0092b0:	229e0e13          	addi	t3,t3,553 # 2597c229 <__l2_shared_end+0x996c229>
1c0092b4:	33c7afa3          	sw	t3,831(a5)
1c0092b8:	16b51e37          	lui	t3,0x16b51
1c0092bc:	123e0e13          	addi	t3,t3,291 # 16b51123 <__CTOR_LIST__-0x54aeee1>
1c0092c0:	35c7a1a3          	sw	t3,835(a5)
1c0092c4:	c692ae37          	lui	t3,0xc692a
1c0092c8:	1e69                	addi	t3,t3,-6
1c0092ca:	35c7a3a3          	sw	t3,839(a5)
1c0092ce:	d40e7e37          	lui	t3,0xd40e7
1c0092d2:	f43e0e13          	addi	t3,t3,-189 # d40e6f43 <pulp__FC+0xd40e6f44>
1c0092d6:	35c7a5a3          	sw	t3,843(a5)
1c0092da:	d5927e37          	lui	t3,0xd5927
1c0092de:	7e1e0e13          	addi	t3,t3,2017 # d59277e1 <pulp__FC+0xd59277e2>
1c0092e2:	35c7a7a3          	sw	t3,847(a5)
1c0092e6:	56be8e37          	lui	t3,0x56be8
1c0092ea:	47de0e13          	addi	t3,t3,1149 # 56be847d <__l2_shared_end+0x3abd847d>
1c0092ee:	35c7a9a3          	sw	t3,851(a5)
1c0092f2:	0d282e37          	lui	t3,0xd282
1c0092f6:	bf2e0e13          	addi	t3,t3,-1038 # d281bf2 <__CTOR_LIST__-0xed7e412>
1c0092fa:	35c7aba3          	sw	t3,855(a5)
1c0092fe:	4e581e37          	lui	t3,0x4e581
1c009302:	a9de0e13          	addi	t3,t3,-1379 # 4e580a9d <__l2_shared_end+0x32570a9d>
1c009306:	35c7ada3          	sw	t3,859(a5)
1c00930a:	5e29                	li	t3,-22
1c00930c:	37c780a3          	sb	t3,865(a5)
1c009310:	25a57e37          	lui	t3,0x25a57
1c009314:	0b6e0e13          	addi	t3,t3,182 # 25a570b6 <__l2_shared_end+0x9a470b6>
1c009318:	37c7a123          	sw	t3,866(a5)
1c00931c:	d3efae37          	lui	t3,0xd3efa
1c009320:	1bde0e13          	addi	t3,t3,445 # d3efa1bd <pulp__FC+0xd3efa1be>
1c009324:	37c7a323          	sw	t3,870(a5)
1c009328:	1214be37          	lui	t3,0x1214b
1c00932c:	02fe0e13          	addi	t3,t3,47 # 1214b02f <__CTOR_LIST__-0x9eb4fd5>
1c009330:	37c7a523          	sw	t3,874(a5)
1c009334:	b0581e37          	lui	t3,0xb0581
1c009338:	ef4e0e13          	addi	t3,t3,-268 # b0580ef4 <pulp__FC+0xb0580ef5>
1c00933c:	37c7a723          	sw	t3,878(a5)
1c009340:	8739ce37          	lui	t3,0x8739c
1c009344:	2f4e0e13          	addi	t3,t3,756 # 8739c2f4 <pulp__FC+0x8739c2f5>
1c009348:	37c7a923          	sw	t3,882(a5)
1c00934c:	33debe37          	lui	t3,0x33deb
1c009350:	f92e0e13          	addi	t3,t3,-110 # 33deaf92 <__l2_shared_end+0x17ddaf92>
1c009354:	37c7ab23          	sw	t3,886(a5)
1c009358:	04029e37          	lui	t3,0x4029
1c00935c:	24be0e13          	addi	t3,t3,587 # 402924b <__CTOR_LIST__-0x17fd6db9>
1c009360:	37c7ad23          	sw	t3,890(a5)
1c009364:	678e4e37          	lui	t3,0x678e4
1c009368:	767e0e13          	addi	t3,t3,1895 # 678e4767 <__l2_shared_end+0x4b8d4767>
1c00936c:	37c7af23          	sw	t3,894(a5)
1c009370:	1dd16e37          	lui	t3,0x1dd16
1c009374:	07ce0e13          	addi	t3,t3,124 # 1dd1607c <__l2_shared_end+0x1d0607c>
1c009378:	39c7a123          	sw	t3,898(a5)
1c00937c:	0e689e37          	lui	t3,0xe689
1c009380:	7565                	lui	a0,0xffff9
1c009382:	e5ce0e13          	addi	t3,t3,-420 # e688e5c <__CTOR_LIST__-0xd9771a8>
1c009386:	c6850e93          	addi	t4,a0,-920 # ffff8c68 <pulp__FC+0xffff8c69>
1c00938a:	39c7a323          	sw	t3,902(a5)
1c00938e:	83d50e37          	lui	t3,0x83d50
1c009392:	35d79fa3          	sh	t4,863(a5)
1c009396:	502e0e13          	addi	t3,t3,1282 # 83d50502 <pulp__FC+0x83d50503>
1c00939a:	39c7a523          	sw	t3,906(a5)
1c00939e:	82729e37          	lui	t3,0x82729
1c0093a2:	5e0e0e13          	addi	t3,t3,1504 # 827295e0 <pulp__FC+0x827295e1>
1c0093a6:	39c7a723          	sw	t3,910(a5)
1c0093aa:	31777e37          	lui	t3,0x31777
1c0093ae:	3ae50513          	addi	a0,a0,942
1c0093b2:	12ee0e13          	addi	t3,t3,302 # 3177712e <__l2_shared_end+0x1576712e>
1c0093b6:	39c7a923          	sw	t3,914(a5)
1c0093ba:	38a79f23          	sh	a0,926(a5)
1c0093be:	c4e3de37          	lui	t3,0xc4e3d
1c0093c2:	f6962537          	lui	a0,0xf6962
1c0093c6:	c46e0e13          	addi	t3,t3,-954 # c4e3cc46 <pulp__FC+0xc4e3cc47>
1c0093ca:	34650513          	addi	a0,a0,838 # f6962346 <pulp__FC+0xf6962347>
1c0093ce:	39c7ab23          	sw	t3,918(a5)
1c0093d2:	3aa7a023          	sw	a0,928(a5)
1c0093d6:	7304ae37          	lui	t3,0x7304a
1c0093da:	25f62537          	lui	a0,0x25f62
1c0093de:	f2ce0e13          	addi	t3,t3,-212 # 73049f2c <__l2_shared_end+0x57039f2c>
1c0093e2:	fb250513          	addi	a0,a0,-78 # 25f61fb2 <__l2_shared_end+0x9f51fb2>
1c0093e6:	873e                	mv	a4,a5
1c0093e8:	39c7ad23          	sw	t3,922(a5)
1c0093ec:	3aa7a223          	sw	a0,932(a5)
1c0093f0:	1f4b77b7          	lui	a5,0x1f4b7
1c0093f4:	bb978793          	addi	a5,a5,-1095 # 1f4b6bb9 <__l2_shared_end+0x34a6bb9>
1c0093f8:	3af72423          	sw	a5,936(a4)
1c0093fc:	b33847b7          	lui	a5,0xb3384
1c009400:	a5c78793          	addi	a5,a5,-1444 # b3383a5c <pulp__FC+0xb3383a5d>
1c009404:	3af72623          	sw	a5,940(a4)
1c009408:	f30807b7          	lui	a5,0xf3080
1c00940c:	7c878793          	addi	a5,a5,1992 # f30807c8 <pulp__FC+0xf30807c9>
1c009410:	3af72823          	sw	a5,944(a4)
1c009414:	8417d7b7          	lui	a5,0x8417d
1c009418:	c3b78793          	addi	a5,a5,-965 # 8417cc3b <pulp__FC+0x8417cc3c>
1c00941c:	3af72a23          	sw	a5,948(a4)
1c009420:	be48e7b7          	lui	a5,0xbe48e
1c009424:	bbe78793          	addi	a5,a5,-1090 # be48dbbe <pulp__FC+0xbe48dbbf>
1c009428:	3af72c23          	sw	a5,952(a4)
1c00942c:	423b27b7          	lui	a5,0x423b2
1c009430:	5e078793          	addi	a5,a5,1504 # 423b25e0 <__l2_shared_end+0x263a25e0>
1c009434:	3af72e23          	sw	a5,956(a4)
1c009438:	619607b7          	lui	a5,0x61960
1c00943c:	b6c78793          	addi	a5,a5,-1172 # 6195fb6c <__l2_shared_end+0x4594fb6c>
1c009440:	3cf72023          	sw	a5,960(a4)
1c009444:	98ce17b7          	lui	a5,0x98ce1
1c009448:	28778793          	addi	a5,a5,647 # 98ce1287 <pulp__FC+0x98ce1288>
1c00944c:	3cf72223          	sw	a5,964(a4)
1c009450:	5c3ba7b7          	lui	a5,0x5c3ba
1c009454:	52578793          	addi	a5,a5,1317 # 5c3ba525 <__l2_shared_end+0x403aa525>
1c009458:	3cf72423          	sw	a5,968(a4)
1c00945c:	438187b7          	lui	a5,0x43818
1c009460:	cc878793          	addi	a5,a5,-824 # 43817cc8 <__l2_shared_end+0x27807cc8>
1c009464:	3cf72623          	sw	a5,972(a4)
1c009468:	406bc7b7          	lui	a5,0x406bc
1c00946c:	4af78793          	addi	a5,a5,1199 # 406bc4af <__l2_shared_end+0x246ac4af>
1c009470:	3cf72823          	sw	a5,976(a4)
1c009474:	4b4c87b7          	lui	a5,0x4b4c8
1c009478:	b6278793          	addi	a5,a5,-1182 # 4b4c7b62 <__l2_shared_end+0x2f4b7b62>
1c00947c:	3cf72a23          	sw	a5,980(a4)
1c009480:	2c3837b7          	lui	a5,0x2c383
1c009484:	ebd78793          	addi	a5,a5,-323 # 2c382ebd <__l2_shared_end+0x10372ebd>
1c009488:	3cf72c23          	sw	a5,984(a4)
1c00948c:	487e47b7          	lui	a5,0x487e4
1c009490:	5ec78793          	addi	a5,a5,1516 # 487e45ec <__l2_shared_end+0x2c7d45ec>
1c009494:	3cf72e23          	sw	a5,988(a4)
1c009498:	840c17b7          	lui	a5,0x840c1
1c00949c:	3a778793          	addi	a5,a5,935 # 840c13a7 <pulp__FC+0x840c13a8>
1c0094a0:	3ef72023          	sw	a5,992(a4)
1c0094a4:	5c60c7b7          	lui	a5,0x5c60c
1c0094a8:	21278793          	addi	a5,a5,530 # 5c60c212 <__l2_shared_end+0x405fc212>
1c0094ac:	3ef72223          	sw	a5,996(a4)
1c0094b0:	bf1567b7          	lui	a5,0xbf156
1c0094b4:	94778793          	addi	a5,a5,-1721 # bf155947 <pulp__FC+0xbf155948>
1c0094b8:	3ef72423          	sw	a5,1000(a4)
1c0094bc:	e46d47b7          	lui	a5,0xe46d4
1c0094c0:	70878793          	addi	a5,a5,1800 # e46d4708 <pulp__FC+0xe46d4709>
1c0094c4:	3ef72623          	sw	a5,1004(a4)
1c0094c8:	2970b7b7          	lui	a5,0x2970b
1c0094cc:	ab878793          	addi	a5,a5,-1352 # 2970aab8 <__l2_shared_end+0xd6faab8>
1c0094d0:	3ef72823          	sw	a5,1008(a4)
1c0094d4:	ef9dc7b7          	lui	a5,0xef9dc
1c0094d8:	98a78793          	addi	a5,a5,-1654 # ef9db98a <pulp__FC+0xef9db98b>
1c0094dc:	3ef72a23          	sw	a5,1012(a4)
1c0094e0:	f1c187b7          	lui	a5,0xf1c18
1c0094e4:	69378793          	addi	a5,a5,1683 # f1c18693 <pulp__FC+0xf1c18694>
1c0094e8:	3ef72c23          	sw	a5,1016(a4)
1c0094ec:	98c357b7          	lui	a5,0x98c35
1c0094f0:	31278793          	addi	a5,a5,786 # 98c35312 <pulp__FC+0x98c35313>
1c0094f4:	3ef72e23          	sw	a5,1020(a4)
1c0094f8:	f9add7b7          	lui	a5,0xf9add
1c0094fc:	0c678793          	addi	a5,a5,198 # f9add0c6 <pulp__FC+0xf9add0c7>
1c009500:	40f72023          	sw	a5,1024(a4)
1c009504:	642287b7          	lui	a5,0x64228
1c009508:	ed978793          	addi	a5,a5,-295 # 64227ed9 <__l2_shared_end+0x48217ed9>
1c00950c:	40f72223          	sw	a5,1028(a4)
1c009510:	02e427b7          	lui	a5,0x2e42
1c009514:	6a078793          	addi	a5,a5,1696 # 2e426a0 <__CTOR_LIST__-0x191bd964>
1c009518:	40f72423          	sw	a5,1032(a4)
1c00951c:	269ab7b7          	lui	a5,0x269ab
1c009520:	51178793          	addi	a5,a5,1297 # 269ab511 <__l2_shared_end+0xa99b511>
1c009524:	40f72623          	sw	a5,1036(a4)
1c009528:	101647b7          	lui	a5,0x10164
1c00952c:	fa278793          	addi	a5,a5,-94 # 10163fa2 <__CTOR_LIST__-0xbe9c062>
1c009530:	40f72823          	sw	a5,1040(a4)
1c009534:	6f0a27b7          	lui	a5,0x6f0a2
1c009538:	22a78793          	addi	a5,a5,554 # 6f0a222a <__l2_shared_end+0x5309222a>
1c00953c:	40f72a23          	sw	a5,1044(a4)
1c009540:	147af7b7          	lui	a5,0x147af
1c009544:	22b78793          	addi	a5,a5,555 # 147af22b <__CTOR_LIST__-0x7850dd9>
1c009548:	40f72c23          	sw	a5,1048(a4)
1c00954c:	326f67b7          	lui	a5,0x326f6
1c009550:	f0178793          	addi	a5,a5,-255 # 326f5f01 <__l2_shared_end+0x166e5f01>
1c009554:	40f72e23          	sw	a5,1052(a4)
1c009558:	7574e7b7          	lui	a5,0x7574e
1c00955c:	26178793          	addi	a5,a5,609 # 7574e261 <__l2_shared_end+0x5973e261>
1c009560:	42f72023          	sw	a5,1056(a4)
1c009564:	57b7d7b7          	lui	a5,0x57b7d
1c009568:	c8c78793          	addi	a5,a5,-884 # 57b7cc8c <__l2_shared_end+0x3bb6cc8c>
1c00956c:	42f72223          	sw	a5,1060(a4)
1c009570:	530007b7          	lui	a5,0x53000
1c009574:	6a478793          	addi	a5,a5,1700 # 530006a4 <__l2_shared_end+0x36ff06a4>
1c009578:	42f72423          	sw	a5,1064(a4)
1c00957c:	c250a7b7          	lui	a5,0xc250a
1c009580:	07dd                	addi	a5,a5,23
1c009582:	42f72623          	sw	a5,1068(a4)
1c009586:	999f47b7          	lui	a5,0x999f4
1c00958a:	92d78793          	addi	a5,a5,-1747 # 999f392d <pulp__FC+0x999f392e>
1c00958e:	42f72823          	sw	a5,1072(a4)
1c009592:	73aa77b7          	lui	a5,0x73aa7
1c009596:	44978793          	addi	a5,a5,1097 # 73aa7449 <__l2_shared_end+0x57a97449>
1c00959a:	42f72a23          	sw	a5,1076(a4)
1c00959e:	bafbf7b7          	lui	a5,0xbafbf
1c0095a2:	d1378793          	addi	a5,a5,-749 # bafbed13 <pulp__FC+0xbafbed14>
1c0095a6:	42f72c23          	sw	a5,1080(a4)
1c0095aa:	163717b7          	lui	a5,0x16371
1c0095ae:	84678793          	addi	a5,a5,-1978 # 16370846 <__CTOR_LIST__-0x5c8f7be>
1c0095b2:	42f72e23          	sw	a5,1084(a4)
1c0095b6:	8154a7b7          	lui	a5,0x8154a
1c0095ba:	81378793          	addi	a5,a5,-2029 # 81549813 <pulp__FC+0x81549814>
1c0095be:	44f72023          	sw	a5,1088(a4)
1c0095c2:	9ec8b7b7          	lui	a5,0x9ec8b
1c0095c6:	eb078793          	addi	a5,a5,-336 # 9ec8aeb0 <pulp__FC+0x9ec8aeb1>
1c0095ca:	44f72223          	sw	a5,1092(a4)
1c0095ce:	750267b7          	lui	a5,0x75026
1c0095d2:	0dd78793          	addi	a5,a5,221 # 750260dd <__l2_shared_end+0x590160dd>
1c0095d6:	44f72423          	sw	a5,1096(a4)
1c0095da:	75e227b7          	lui	a5,0x75e22
1c0095de:	84b78793          	addi	a5,a5,-1973 # 75e2184b <__l2_shared_end+0x59e1184b>
1c0095e2:	44f72623          	sw	a5,1100(a4)
1c0095e6:	b4f887b7          	lui	a5,0xb4f88
1c0095ea:	ab978793          	addi	a5,a5,-1351 # b4f87ab9 <pulp__FC+0xb4f87aba>
1c0095ee:	44f72823          	sw	a5,1104(a4)
1c0095f2:	b582c7b7          	lui	a5,0xb582c
1c0095f6:	6ad78793          	addi	a5,a5,1709 # b582c6ad <pulp__FC+0xb582c6ae>
1c0095fa:	44f72a23          	sw	a5,1108(a4)
1c0095fe:	68a5c7b7          	lui	a5,0x68a5c
1c009602:	97378793          	addi	a5,a5,-1677 # 68a5b973 <__l2_shared_end+0x4ca4b973>
1c009606:	44f72c23          	sw	a5,1112(a4)
1c00960a:	b22327b7          	lui	a5,0xb2232
1c00960e:	47378793          	addi	a5,a5,1139 # b2232473 <pulp__FC+0xb2232474>
1c009612:	44f72e23          	sw	a5,1116(a4)
1c009616:	da18f7b7          	lui	a5,0xda18f
1c00961a:	40d78793          	addi	a5,a5,1037 # da18f40d <pulp__FC+0xda18f40e>
1c00961e:	46f72023          	sw	a5,1120(a4)
1c009622:	086917b7          	lui	a5,0x8691
1c009626:	f0a78793          	addi	a5,a5,-246 # 8690f0a <__CTOR_LIST__-0x1396f0fa>
1c00962a:	46f72223          	sw	a5,1124(a4)
1c00962e:	83e947b7          	lui	a5,0x83e94
1c009632:	b6678793          	addi	a5,a5,-1178 # 83e93b66 <pulp__FC+0x83e93b67>
1c009636:	46f72423          	sw	a5,1128(a4)
1c00963a:	6912e7b7          	lui	a5,0x6912e
1c00963e:	a3e78793          	addi	a5,a5,-1474 # 6912da3e <__l2_shared_end+0x4d11da3e>
1c009642:	46f72623          	sw	a5,1132(a4)
1c009646:	e90277b7          	lui	a5,0xe9027
1c00964a:	71278793          	addi	a5,a5,1810 # e9027712 <pulp__FC+0xe9027713>
1c00964e:	46f72823          	sw	a5,1136(a4)
1c009652:	b12bc7b7          	lui	a5,0xb12bc
1c009656:	87d78793          	addi	a5,a5,-1923 # b12bb87d <pulp__FC+0xb12bb87e>
1c00965a:	46f72a23          	sw	a5,1140(a4)
1c00965e:	c02ce7b7          	lui	a5,0xc02ce
1c009662:	21d78793          	addi	a5,a5,541 # c02ce21d <pulp__FC+0xc02ce21e>
1c009666:	46f72c23          	sw	a5,1144(a4)
1c00966a:	ca2667b7          	lui	a5,0xca266
1c00966e:	e7678793          	addi	a5,a5,-394 # ca265e76 <pulp__FC+0xca265e77>
1c009672:	46f72e23          	sw	a5,1148(a4)
1c009676:	6c2517b7          	lui	a5,0x6c251
1c00967a:	db678793          	addi	a5,a5,-586 # 6c250db6 <__l2_shared_end+0x50240db6>
1c00967e:	48f72023          	sw	a5,1152(a4)
1c009682:	132227b7          	lui	a5,0x13222
1c009686:	7bb78793          	addi	a5,a5,1979 # 132227bb <__CTOR_LIST__-0x8ddd849>
1c00968a:	48f72223          	sw	a5,1156(a4)
1c00968e:	d7c1c7b7          	lui	a5,0xd7c1c
1c009692:	21578793          	addi	a5,a5,533 # d7c1c215 <pulp__FC+0xd7c1c216>
1c009696:	48f72423          	sw	a5,1160(a4)
1c00969a:	aae657b7          	lui	a5,0xaae65
1c00969e:	65f78793          	addi	a5,a5,1631 # aae6565f <pulp__FC+0xaae65660>
1c0096a2:	48f72623          	sw	a5,1164(a4)
1c0096a6:	83cc17b7          	lui	a5,0x83cc1
1c0096aa:	84c78793          	addi	a5,a5,-1972 # 83cc084c <pulp__FC+0x83cc084d>
1c0096ae:	48f72823          	sw	a5,1168(a4)
1c0096b2:	686ba7b7          	lui	a5,0x686ba
1c0096b6:	14578793          	addi	a5,a5,325 # 686ba145 <__l2_shared_end+0x4c6aa145>
1c0096ba:	48f72a23          	sw	a5,1172(a4)
1c0096be:	03000793          	li	a5,48
1c0096c2:	48f70d23          	sb	a5,1178(a4)
1c0096c6:	02ec77b7          	lui	a5,0x2ec7
1c0096ca:	c7578793          	addi	a5,a5,-907 # 2ec6c75 <__CTOR_LIST__-0x1913938f>
1c0096ce:	48f72da3          	sw	a5,1179(a4)
1c0096d2:	1d2dc7b7          	lui	a5,0x1d2dc
1c0096d6:	06778793          	addi	a5,a5,103 # 1d2dc067 <__l2_shared_end+0x12cc067>
1c0096da:	48f72fa3          	sw	a5,1183(a4)
1c0096de:	a83cd7b7          	lui	a5,0xa83cd
1c0096e2:	ae178793          	addi	a5,a5,-1311 # a83ccae1 <pulp__FC+0xa83ccae2>
1c0096e6:	4af721a3          	sw	a5,1187(a4)
1c0096ea:	c85687b7          	lui	a5,0xc8568
1c0096ee:	17378793          	addi	a5,a5,371 # c8568173 <pulp__FC+0xc8568174>
1c0096f2:	4af723a3          	sw	a5,1191(a4)
1c0096f6:	90aed7b7          	lui	a5,0x90aed
1c0096fa:	68e78793          	addi	a5,a5,1678 # 90aed68e <pulp__FC+0x90aed68f>
1c0096fe:	4af725a3          	sw	a5,1195(a4)
1c009702:	5a9b47b7          	lui	a5,0x5a9b4
1c009706:	2f878793          	addi	a5,a5,760 # 5a9b42f8 <__l2_shared_end+0x3e9a42f8>
1c00970a:	4af727a3          	sw	a5,1199(a4)
1c00970e:	535a97b7          	lui	a5,0x535a9
1c009712:	cad78793          	addi	a5,a5,-851 # 535a8cad <__l2_shared_end+0x37598cad>
1c009716:	4af729a3          	sw	a5,1203(a4)
1c00971a:	d28727b7          	lui	a5,0xd2872
1c00971e:	6fe78793          	addi	a5,a5,1790 # d28726fe <pulp__FC+0xd28726ff>
1c009722:	4af72ba3          	sw	a5,1207(a4)
1c009726:	18db57b7          	lui	a5,0x18db5
1c00972a:	f0778793          	addi	a5,a5,-249 # 18db4f07 <__CTOR_LIST__-0x324b0fd>
1c00972e:	4af72da3          	sw	a5,1211(a4)
1c009732:	481a27b7          	lui	a5,0x481a2
1c009736:	4b178793          	addi	a5,a5,1201 # 481a24b1 <__l2_shared_end+0x2c1924b1>
1c00973a:	4af72fa3          	sw	a5,1215(a4)
1c00973e:	ab5087b7          	lui	a5,0xab508
1c009742:	59e78793          	addi	a5,a5,1438 # ab50859e <pulp__FC+0xab50859f>
1c009746:	4cf721a3          	sw	a5,1219(a4)
1c00974a:	9a5587b7          	lui	a5,0x9a558
1c00974e:	baa78793          	addi	a5,a5,-1110 # 9a557baa <pulp__FC+0x9a557bab>
1c009752:	4cf723a3          	sw	a5,1223(a4)
1c009756:	b5b477b7          	lui	a5,0xb5b47
1c00975a:	acc78793          	addi	a5,a5,-1332 # b5b46acc <pulp__FC+0xb5b46acd>
1c00975e:	4cf725a3          	sw	a5,1227(a4)
1c009762:	1b8277b7          	lui	a5,0x1b827
1c009766:	c3978793          	addi	a5,a5,-967 # 1b826c39 <__CTOR_LIST__-0x7d93cb>
1c00976a:	4cf727a3          	sw	a5,1231(a4)
1c00976e:	ca0547b7          	lui	a5,0xca054
1c009772:	38578793          	addi	a5,a5,901 # ca054385 <pulp__FC+0xca054386>
1c009776:	4cf729a3          	sw	a5,1235(a4)
1c00977a:	804777b7          	lui	a5,0x80477
1c00977e:	aa678793          	addi	a5,a5,-1370 # 80476aa6 <pulp__FC+0x80476aa7>
1c009782:	4cf72ba3          	sw	a5,1239(a4)
1c009786:	f72cd7b7          	lui	a5,0xf72cd
1c00978a:	c3978793          	addi	a5,a5,-967 # f72ccc39 <pulp__FC+0xf72ccc3a>
1c00978e:	4cf72da3          	sw	a5,1243(a4)
1c009792:	a35667b7          	lui	a5,0xa3566
1c009796:	f3678793          	addi	a5,a5,-202 # a3565f36 <pulp__FC+0xa3565f37>
1c00979a:	4cf72fa3          	sw	a5,1247(a4)
1c00979e:	9af0d7b7          	lui	a5,0x9af0d
1c0097a2:	14478793          	addi	a5,a5,324 # 9af0d144 <pulp__FC+0x9af0d145>
1c0097a6:	4ef721a3          	sw	a5,1251(a4)
1c0097aa:	7a6647b7          	lui	a5,0x7a664
1c0097ae:	aa778793          	addi	a5,a5,-1369 # 7a663aa7 <__l2_shared_end+0x5e653aa7>
1c0097b2:	4ef723a3          	sw	a5,1255(a4)
1c0097b6:	b271d7b7          	lui	a5,0xb271d
1c0097ba:	e1578793          	addi	a5,a5,-491 # b271ce15 <pulp__FC+0xb271ce16>
1c0097be:	4ef725a3          	sw	a5,1259(a4)
1c0097c2:	30b9e7b7          	lui	a5,0x30b9e
1c0097c6:	91078793          	addi	a5,a5,-1776 # 30b9d910 <__l2_shared_end+0x14b8d910>
1c0097ca:	4ef727a3          	sw	a5,1263(a4)
1c0097ce:	a23847b7          	lui	a5,0xa2384
1c0097d2:	a4078793          	addi	a5,a5,-1472 # a2383a40 <pulp__FC+0xa2383a41>
1c0097d6:	4ef729a3          	sw	a5,1267(a4)
1c0097da:	f3de17b7          	lui	a5,0xf3de1
1c0097de:	ca178793          	addi	a5,a5,-863 # f3de0ca1 <pulp__FC+0xf3de0ca2>
1c0097e2:	4ef72ba3          	sw	a5,1271(a4)
1c0097e6:	6089a7b7          	lui	a5,0x6089a
1c0097ea:	e9b78793          	addi	a5,a5,-357 # 60899e9b <__l2_shared_end+0x44889e9b>
1c0097ee:	4ef72da3          	sw	a5,1275(a4)
1c0097f2:	133347b7          	lui	a5,0x13334
1c0097f6:	6ad78793          	addi	a5,a5,1709 # 133346ad <__CTOR_LIST__-0x8ccb957>
1c0097fa:	4ef72fa3          	sw	a5,1279(a4)
1c0097fe:	723db7b7          	lui	a5,0x723db
1c009802:	bb778793          	addi	a5,a5,-1097 # 723dabb7 <__l2_shared_end+0x563cabb7>
1c009806:	50f721a3          	sw	a5,1283(a4)
1c00980a:	1d5c77b7          	lui	a5,0x1d5c7
1c00980e:	13a78793          	addi	a5,a5,314 # 1d5c713a <__l2_shared_end+0x15b713a>
1c009812:	50f723a3          	sw	a5,1287(a4)
1c009816:	b479a7b7          	lui	a5,0xb479a
1c00981a:	75f9                	lui	a1,0xffffe
1c00981c:	b7278793          	addi	a5,a5,-1166 # b4799b72 <pulp__FC+0xb4799b73>
1c009820:	30058313          	addi	t1,a1,768 # ffffe300 <pulp__FC+0xffffe301>
1c009824:	50f725a3          	sw	a5,1291(a4)
1c009828:	dbce87b7          	lui	a5,0xdbce8
1c00982c:	48671c23          	sh	t1,1176(a4)
1c009830:	b6b78793          	addi	a5,a5,-1173 # dbce7b6b <pulp__FC+0xdbce7b6c>
1c009834:	50f727a3          	sw	a5,1295(a4)
1c009838:	772bc7b7          	lui	a5,0x772bc
1c00983c:	93178793          	addi	a5,a5,-1743 # 772bb931 <__l2_shared_end+0x5b2ab931>
1c009840:	50f729a3          	sw	a5,1299(a4)
1c009844:	14c957b7          	lui	a5,0x14c95
1c009848:	a8678793          	addi	a5,a5,-1402 # 14c94a86 <__CTOR_LIST__-0x736b57e>
1c00984c:	50f72ba3          	sw	a5,1303(a4)
1c009850:	9ba817b7          	lui	a5,0x9ba81
1c009854:	56c78793          	addi	a5,a5,1388 # 9ba8156c <pulp__FC+0x9ba8156d>
1c009858:	50f72da3          	sw	a5,1307(a4)
1c00985c:	1f60e7b7          	lui	a5,0x1f60e
1c009860:	1af78793          	addi	a5,a5,431 # 1f60e1af <__l2_shared_end+0x35fe1af>
1c009864:	50f72fa3          	sw	a5,1311(a4)
1c009868:	e62887b7          	lui	a5,0xe6288
1c00986c:	3cc78793          	addi	a5,a5,972 # e62883cc <pulp__FC+0xe62883cd>
1c009870:	52f721a3          	sw	a5,1315(a4)
1c009874:	baeba7b7          	lui	a5,0xbaeba
1c009878:	65778793          	addi	a5,a5,1623 # baeba657 <pulp__FC+0xbaeba658>
1c00987c:	52f723a3          	sw	a5,1319(a4)
1c009880:	591207b7          	lui	a5,0x59120
1c009884:	8be78793          	addi	a5,a5,-1858 # 5911f8be <__l2_shared_end+0x3d10f8be>
1c009888:	52f725a3          	sw	a5,1323(a4)
1c00988c:	f187e7b7          	lui	a5,0xf187e
1c009890:	c8678793          	addi	a5,a5,-890 # f187dc86 <pulp__FC+0xf187dc87>
1c009894:	52f727a3          	sw	a5,1327(a4)
1c009898:	a3ba37b7          	lui	a5,0xa3ba3
1c00989c:	47278793          	addi	a5,a5,1138 # a3ba3472 <pulp__FC+0xa3ba3473>
1c0098a0:	52f729a3          	sw	a5,1331(a4)
1c0098a4:	a13367b7          	lui	a5,0xa1336
1c0098a8:	e8878793          	addi	a5,a5,-376 # a1335e88 <pulp__FC+0xa1335e89>
1c0098ac:	52f72ba3          	sw	a5,1335(a4)
1c0098b0:	918b77b7          	lui	a5,0x918b7
1c0098b4:	88578793          	addi	a5,a5,-1915 # 918b6885 <pulp__FC+0x918b6886>
1c0098b8:	52f72da3          	sw	a5,1339(a4)
1c0098bc:	48ec87b7          	lui	a5,0x48ec8
1c0098c0:	35878793          	addi	a5,a5,856 # 48ec8358 <__l2_shared_end+0x2ceb8358>
1c0098c4:	52f72fa3          	sw	a5,1343(a4)
1c0098c8:	69c9c7b7          	lui	a5,0x69c9c
1c0098cc:	50978793          	addi	a5,a5,1289 # 69c9c509 <__l2_shared_end+0x4dc8c509>
1c0098d0:	54f721a3          	sw	a5,1347(a4)
1c0098d4:	81a097b7          	lui	a5,0x81a09
1c0098d8:	51b78793          	addi	a5,a5,1307 # 81a0951b <pulp__FC+0x81a0951c>
1c0098dc:	54f723a3          	sw	a5,1351(a4)
1c0098e0:	7785a7b7          	lui	a5,0x7785a
1c0098e4:	47978793          	addi	a5,a5,1145 # 7785a479 <__l2_shared_end+0x5b84a479>
1c0098e8:	54f725a3          	sw	a5,1355(a4)
1c0098ec:	a14a77b7          	lui	a5,0xa14a7
1c0098f0:	2c178793          	addi	a5,a5,705 # a14a72c1 <pulp__FC+0xa14a72c2>
1c0098f4:	54f727a3          	sw	a5,1359(a4)
1c0098f8:	d564f7b7          	lui	a5,0xd564f
1c0098fc:	6bc78793          	addi	a5,a5,1724 # d564f6bc <pulp__FC+0xd564f6bd>
1c009900:	54f729a3          	sw	a5,1363(a4)
1c009904:	9ac657b7          	lui	a5,0x9ac65
1c009908:	9ea78793          	addi	a5,a5,-1558 # 9ac649ea <pulp__FC+0x9ac649eb>
1c00990c:	54f72ba3          	sw	a5,1367(a4)
1c009910:	3eda87b7          	lui	a5,0x3eda8
1c009914:	c7278793          	addi	a5,a5,-910 # 3eda7c72 <__l2_shared_end+0x22d97c72>
1c009918:	54f72da3          	sw	a5,1371(a4)
1c00991c:	671ee7b7          	lui	a5,0x671ee
1c009920:	73178793          	addi	a5,a5,1841 # 671ee731 <__l2_shared_end+0x4b1de731>
1c009924:	54f72fa3          	sw	a5,1375(a4)
1c009928:	e86587b7          	lui	a5,0xe8658
1c00992c:	e2578793          	addi	a5,a5,-475 # e8657e25 <pulp__FC+0xe8657e26>
1c009930:	56f721a3          	sw	a5,1379(a4)
1c009934:	4759e7b7          	lui	a5,0x4759e
1c009938:	f4778793          	addi	a5,a5,-185 # 4759df47 <__l2_shared_end+0x2b58df47>
1c00993c:	56f723a3          	sw	a5,1383(a4)
1c009940:	7596e7b7          	lui	a5,0x7596e
1c009944:	2ab78793          	addi	a5,a5,683 # 7596e2ab <__l2_shared_end+0x5995e2ab>
1c009948:	56f725a3          	sw	a5,1387(a4)
1c00994c:	612db7b7          	lui	a5,0x612db
1c009950:	c7378793          	addi	a5,a5,-909 # 612dac73 <__l2_shared_end+0x452cac73>
1c009954:	56f727a3          	sw	a5,1391(a4)
1c009958:	996707b7          	lui	a5,0x99670
1c00995c:	95978793          	addi	a5,a5,-1703 # 9966f959 <pulp__FC+0x9966f95a>
1c009960:	56f729a3          	sw	a5,1395(a4)
1c009964:	5fa517b7          	lui	a5,0x5fa51
1c009968:	6ae78793          	addi	a5,a5,1710 # 5fa516ae <__l2_shared_end+0x43a416ae>
1c00996c:	56f72ba3          	sw	a5,1399(a4)
1c009970:	e08f57b7          	lui	a5,0xe08f5
1c009974:	e6578793          	addi	a5,a5,-411 # e08f4e65 <pulp__FC+0xe08f4e66>
1c009978:	56f72da3          	sw	a5,1403(a4)
1c00997c:	9167f7b7          	lui	a5,0x9167f
1c009980:	a0b78793          	addi	a5,a5,-1525 # 9167ea0b <pulp__FC+0x9167ea0c>
1c009984:	56f72fa3          	sw	a5,1407(a4)
1c009988:	45a067b7          	lui	a5,0x45a06
1c00998c:	a1378793          	addi	a5,a5,-1517 # 45a05a13 <__l2_shared_end+0x299f5a13>
1c009990:	58f721a3          	sw	a5,1411(a4)
1c009994:	d7d057b7          	lui	a5,0xd7d05
1c009998:	1d878793          	addi	a5,a5,472 # d7d051d8 <pulp__FC+0xd7d051d9>
1c00999c:	58f723a3          	sw	a5,1415(a4)
1c0099a0:	be59d7b7          	lui	a5,0xbe59d
1c0099a4:	13c78793          	addi	a5,a5,316 # be59d13c <pulp__FC+0xbe59d13d>
1c0099a8:	58f725a3          	sw	a5,1419(a4)
1c0099ac:	1b0407b7          	lui	a5,0x1b040
1c0099b0:	05c78793          	addi	a5,a5,92 # 1b04005c <__CTOR_LIST__-0xfbffa8>
1c0099b4:	58f727a3          	sw	a5,1423(a4)
1c0099b8:	678d                	lui	a5,0x3
1c0099ba:	31078793          	addi	a5,a5,784 # 3310 <__CTOR_LIST__-0x1bffccf4>
1c0099be:	58f719a3          	sh	a5,1427(a4)
1c0099c2:	faf00793          	li	a5,-81
1c0099c6:	58f70aa3          	sb	a5,1429(a4)
1c0099ca:	c60c57b7          	lui	a5,0xc60c5
1c0099ce:	07e1                	addi	a5,a5,24
1c0099d0:	58f72b23          	sw	a5,1430(a4)
1c0099d4:	36c697b7          	lui	a5,0x36c69
1c0099d8:	d2b78793          	addi	a5,a5,-725 # 36c68d2b <__l2_shared_end+0x1ac58d2b>
1c0099dc:	58f72d23          	sw	a5,1434(a4)
1c0099e0:	4d0ed7b7          	lui	a5,0x4d0ed
1c0099e4:	7be78793          	addi	a5,a5,1982 # 4d0ed7be <__l2_shared_end+0x310dd7be>
1c0099e8:	58f72f23          	sw	a5,1438(a4)
1c0099ec:	371ea7b7          	lui	a5,0x371ea
1c0099f0:	8d478793          	addi	a5,a5,-1836 # 371e98d4 <__l2_shared_end+0x1b1d98d4>
1c0099f4:	5af72123          	sw	a5,1442(a4)
1c0099f8:	73eb27b7          	lui	a5,0x73eb2
1c0099fc:	08878793          	addi	a5,a5,136 # 73eb2088 <__l2_shared_end+0x57ea2088>
1c009a00:	5af72323          	sw	a5,1446(a4)
1c009a04:	69bcd7b7          	lui	a5,0x69bcd
1c009a08:	3a778793          	addi	a5,a5,935 # 69bcd3a7 <__l2_shared_end+0x4dbbd3a7>
1c009a0c:	5af72523          	sw	a5,1450(a4)
1c009a10:	91cb37b7          	lui	a5,0x91cb3
1c009a14:	da478793          	addi	a5,a5,-604 # 91cb2da4 <pulp__FC+0x91cb2da5>
1c009a18:	5af72723          	sw	a5,1454(a4)
1c009a1c:	b88bf7b7          	lui	a5,0xb88bf
1c009a20:	c0378793          	addi	a5,a5,-1021 # b88bec03 <pulp__FC+0xb88bec04>
1c009a24:	5af72923          	sw	a5,1458(a4)
1c009a28:	ba6307b7          	lui	a5,0xba630
1c009a2c:	70278793          	addi	a5,a5,1794 # ba630702 <pulp__FC+0xba630703>
1c009a30:	5af72b23          	sw	a5,1462(a4)
1c009a34:	1182b7b7          	lui	a5,0x1182b
1c009a38:	47678793          	addi	a5,a5,1142 # 1182b476 <__CTOR_LIST__-0xa7d4b8e>
1c009a3c:	5af72d23          	sw	a5,1466(a4)
1c009a40:	552967b7          	lui	a5,0x55296
1c009a44:	58078793          	addi	a5,a5,1408 # 55296580 <__l2_shared_end+0x39286580>
1c009a48:	5af72f23          	sw	a5,1470(a4)
1c009a4c:	7548a7b7          	lui	a5,0x7548a
1c009a50:	63d78793          	addi	a5,a5,1597 # 7548a63d <__l2_shared_end+0x5947a63d>
1c009a54:	5cf72123          	sw	a5,1474(a4)
1c009a58:	224797b7          	lui	a5,0x22479
1c009a5c:	93978793          	addi	a5,a5,-1735 # 22478939 <__l2_shared_end+0x6468939>
1c009a60:	5cf72323          	sw	a5,1478(a4)
1c009a64:	bc7237b7          	lui	a5,0xbc723
1c009a68:	64478793          	addi	a5,a5,1604 # bc723644 <pulp__FC+0xbc723645>
1c009a6c:	5cf72523          	sw	a5,1482(a4)
1c009a70:	4616c7b7          	lui	a5,0x4616c
1c009a74:	37e78793          	addi	a5,a5,894 # 4616c37e <__l2_shared_end+0x2a15c37e>
1c009a78:	5cf72723          	sw	a5,1486(a4)
1c009a7c:	63a697b7          	lui	a5,0x63a69
1c009a80:	c1578793          	addi	a5,a5,-1003 # 63a68c15 <__l2_shared_end+0x47a58c15>
1c009a84:	5cf72923          	sw	a5,1490(a4)
1c009a88:	9be6e7b7          	lui	a5,0x9be6e
1c009a8c:	24378793          	addi	a5,a5,579 # 9be6e243 <pulp__FC+0x9be6e244>
1c009a90:	5cf72b23          	sw	a5,1494(a4)
1c009a94:	4acc47b7          	lui	a5,0x4acc4
1c009a98:	8d678793          	addi	a5,a5,-1834 # 4acc38d6 <__l2_shared_end+0x2ecb38d6>
1c009a9c:	5cf72d23          	sw	a5,1498(a4)
1c009aa0:	371e77b7          	lui	a5,0x371e7
1c009aa4:	13c78793          	addi	a5,a5,316 # 371e713c <__l2_shared_end+0x1b1d713c>
1c009aa8:	5cf72f23          	sw	a5,1502(a4)
1c009aac:	b488d7b7          	lui	a5,0xb488d
1c009ab0:	e7578793          	addi	a5,a5,-395 # b488ce75 <pulp__FC+0xb488ce76>
1c009ab4:	5ef72123          	sw	a5,1506(a4)
1c009ab8:	db2c97b7          	lui	a5,0xdb2c9
1c009abc:	a9678793          	addi	a5,a5,-1386 # db2c8a96 <pulp__FC+0xdb2c8a97>
1c009ac0:	5ef72323          	sw	a5,1510(a4)
1c009ac4:	d9a077b7          	lui	a5,0xd9a07
1c009ac8:	2b778793          	addi	a5,a5,695 # d9a072b7 <pulp__FC+0xd9a072b8>
1c009acc:	5ef72523          	sw	a5,1514(a4)
1c009ad0:	91a377b7          	lui	a5,0x91a37
1c009ad4:	aaf78793          	addi	a5,a5,-1361 # 91a36aaf <pulp__FC+0x91a36ab0>
1c009ad8:	5ef72723          	sw	a5,1518(a4)
1c009adc:	740057b7          	lui	a5,0x74005
1c009ae0:	56878793          	addi	a5,a5,1384 # 74005568 <__l2_shared_end+0x57ff5568>
1c009ae4:	5ef72923          	sw	a5,1522(a4)
1c009ae8:	a12d67b7          	lui	a5,0xa12d6
1c009aec:	8a678793          	addi	a5,a5,-1882 # a12d58a6 <pulp__FC+0xa12d58a7>
1c009af0:	5ef72b23          	sw	a5,1526(a4)
1c009af4:	1bf667b7          	lui	a5,0x1bf66
1c009af8:	69378793          	addi	a5,a5,1683 # 1bf66693 <__CTOR_LIST__-0x99971>
1c009afc:	5ef72d23          	sw	a5,1530(a4)
1c009b00:	440377b7          	lui	a5,0x44037
1c009b04:	4e178793          	addi	a5,a5,1249 # 440374e1 <__l2_shared_end+0x280274e1>
1c009b08:	5ef72f23          	sw	a5,1534(a4)
1c009b0c:	902d27b7          	lui	a5,0x902d2
1c009b10:	87278793          	addi	a5,a5,-1934 # 902d1872 <pulp__FC+0x902d1873>
1c009b14:	60f72123          	sw	a5,1538(a4)
1c009b18:	369807b7          	lui	a5,0x36980
1c009b1c:	50c78793          	addi	a5,a5,1292 # 3698050c <__l2_shared_end+0x1a97050c>
1c009b20:	60f72323          	sw	a5,1542(a4)
1c009b24:	6d6577b7          	lui	a5,0x6d657
1c009b28:	c9a78793          	addi	a5,a5,-870 # 6d656c9a <__l2_shared_end+0x51646c9a>
1c009b2c:	60f72523          	sw	a5,1546(a4)
1c009b30:	5795d7b7          	lui	a5,0x5795d
1c009b34:	93078793          	addi	a5,a5,-1744 # 5795c930 <__l2_shared_end+0x3b94c930>
1c009b38:	60f72723          	sw	a5,1550(a4)
1c009b3c:	30e4f7b7          	lui	a5,0x30e4f
1c009b40:	6aa78793          	addi	a5,a5,1706 # 30e4f6aa <__l2_shared_end+0x14e3f6aa>
1c009b44:	60f72923          	sw	a5,1554(a4)
1c009b48:	bc17f7b7          	lui	a5,0xbc17f
1c009b4c:	42378793          	addi	a5,a5,1059 # bc17f423 <pulp__FC+0xbc17f424>
1c009b50:	60f72b23          	sw	a5,1558(a4)
1c009b54:	298e37b7          	lui	a5,0x298e3
1c009b58:	d4a78793          	addi	a5,a5,-694 # 298e2d4a <__l2_shared_end+0xd8d2d4a>
1c009b5c:	60f72d23          	sw	a5,1562(a4)
1c009b60:	01e6c7b7          	lui	a5,0x1e6c
1c009b64:	44478793          	addi	a5,a5,1092 # 1e6c444 <__CTOR_LIST__-0x1a193bc0>
1c009b68:	60f72f23          	sw	a5,1566(a4)
1c009b6c:	28bf57b7          	lui	a5,0x28bf5
1c009b70:	20178793          	addi	a5,a5,513 # 28bf5201 <__l2_shared_end+0xcbe5201>
1c009b74:	62f72123          	sw	a5,1570(a4)
1c009b78:	a91927b7          	lui	a5,0xa9192
1c009b7c:	1eb78793          	addi	a5,a5,491 # a91921eb <pulp__FC+0xa91921ec>
1c009b80:	62f72323          	sw	a5,1574(a4)
1c009b84:	18aa67b7          	lui	a5,0x18aa6
1c009b88:	70478793          	addi	a5,a5,1796 # 18aa6704 <__CTOR_LIST__-0x3559900>
1c009b8c:	62f72523          	sw	a5,1578(a4)
1c009b90:	6f3907b7          	lui	a5,0x6f390
1c009b94:	65778793          	addi	a5,a5,1623 # 6f390657 <__l2_shared_end+0x53380657>
1c009b98:	62f72723          	sw	a5,1582(a4)
1c009b9c:	f12237b7          	lui	a5,0xf1223
1c009ba0:	79378793          	addi	a5,a5,1939 # f1223793 <pulp__FC+0xf1223794>
1c009ba4:	62f72923          	sw	a5,1586(a4)
1c009ba8:	43d377b7          	lui	a5,0x43d37
1c009bac:	39378793          	addi	a5,a5,915 # 43d37393 <__l2_shared_end+0x27d27393>
1c009bb0:	62f72b23          	sw	a5,1590(a4)
1c009bb4:	797b07b7          	lui	a5,0x797b0
1c009bb8:	11b78793          	addi	a5,a5,283 # 797b011b <__l2_shared_end+0x5d7a011b>
1c009bbc:	62f72d23          	sw	a5,1594(a4)
1c009bc0:	8bb927b7          	lui	a5,0x8bb92
1c009bc4:	94a78793          	addi	a5,a5,-1718 # 8bb9194a <pulp__FC+0x8bb9194b>
1c009bc8:	62f72f23          	sw	a5,1598(a4)
1c009bcc:	8b1897b7          	lui	a5,0x8b189
1c009bd0:	03978793          	addi	a5,a5,57 # 8b189039 <pulp__FC+0x8b18903a>
1c009bd4:	64f72123          	sw	a5,1602(a4)
1c009bd8:	cd4277b7          	lui	a5,0xcd427
1c009bdc:	1cc78793          	addi	a5,a5,460 # cd4271cc <pulp__FC+0xcd4271cd>
1c009be0:	64f72323          	sw	a5,1606(a4)
1c009be4:	285aa7b7          	lui	a5,0x285aa
1c009be8:	72378793          	addi	a5,a5,1827 # 285aa723 <__l2_shared_end+0xc59a723>
1c009bec:	64f72523          	sw	a5,1610(a4)
1c009bf0:	252c67b7          	lui	a5,0x252c6
1c009bf4:	da978793          	addi	a5,a5,-599 # 252c5da9 <__l2_shared_end+0x92b5da9>
1c009bf8:	64f72723          	sw	a5,1614(a4)
1c009bfc:	dfc2f7b7          	lui	a5,0xdfc2f
1c009c00:	7aa78793          	addi	a5,a5,1962 # dfc2f7aa <pulp__FC+0xdfc2f7ab>
1c009c04:	64f72923          	sw	a5,1618(a4)
1c009c08:	e406c7b7          	lui	a5,0xe406c
1c009c0c:	ad878793          	addi	a5,a5,-1320 # e406bad8 <pulp__FC+0xe406bad9>
1c009c10:	64f72b23          	sw	a5,1622(a4)
1c009c14:	0c9467b7          	lui	a5,0xc946
1c009c18:	67078793          	addi	a5,a5,1648 # c946670 <__CTOR_LIST__-0xf6b9994>
1c009c1c:	64f72d23          	sw	a5,1626(a4)
1c009c20:	5556a7b7          	lui	a5,0x5556a
1c009c24:	51f78793          	addi	a5,a5,1311 # 5556a51f <__l2_shared_end+0x3955a51f>
1c009c28:	64f72f23          	sw	a5,1630(a4)
1c009c2c:	b6bec7b7          	lui	a5,0xb6bec
1c009c30:	9da78793          	addi	a5,a5,-1574 # b6beb9da <pulp__FC+0xb6beb9db>
1c009c34:	66f72123          	sw	a5,1634(a4)
1c009c38:	728c47b7          	lui	a5,0x728c4
1c009c3c:	28678793          	addi	a5,a5,646 # 728c4286 <__l2_shared_end+0x568b4286>
1c009c40:	66f72323          	sw	a5,1638(a4)
1c009c44:	f87007b7          	lui	a5,0xf8700
1c009c48:	0e978793          	addi	a5,a5,233 # f87000e9 <pulp__FC+0xf87000ea>
1c009c4c:	66f72523          	sw	a5,1642(a4)
1c009c50:	63fb77b7          	lui	a5,0x63fb7
1c009c54:	b1a78793          	addi	a5,a5,-1254 # 63fb6b1a <__l2_shared_end+0x47fa6b1a>
1c009c58:	66f72723          	sw	a5,1646(a4)
1c009c5c:	516177b7          	lui	a5,0x51617
1c009c60:	64578793          	addi	a5,a5,1605 # 51617645 <__l2_shared_end+0x35607645>
1c009c64:	66f72923          	sw	a5,1650(a4)
1c009c68:	ea59c7b7          	lui	a5,0xea59c
1c009c6c:	0ff78793          	addi	a5,a5,255 # ea59c0ff <pulp__FC+0xea59c100>
1c009c70:	66f72b23          	sw	a5,1654(a4)
1c009c74:	b25f27b7          	lui	a5,0xb25f2
1c009c78:	56478793          	addi	a5,a5,1380 # b25f2564 <pulp__FC+0xb25f2565>
1c009c7c:	66f72d23          	sw	a5,1658(a4)
1c009c80:	7ce4a7b7          	lui	a5,0x7ce4a
1c009c84:	34a78793          	addi	a5,a5,842 # 7ce4a34a <__l2_shared_end+0x60e3a34a>
1c009c88:	66f72f23          	sw	a5,1662(a4)
1c009c8c:	0f3007b7          	lui	a5,0xf300
1c009c90:	1fc78793          	addi	a5,a5,508 # f3001fc <__CTOR_LIST__-0xccffe08>
1c009c94:	68f72123          	sw	a5,1666(a4)
1c009c98:	e31a97b7          	lui	a5,0xe31a9
1c009c9c:	14378793          	addi	a5,a5,323 # e31a9143 <pulp__FC+0xe31a9144>
1c009ca0:	68f72323          	sw	a5,1670(a4)
1c009ca4:	a8d7e7b7          	lui	a5,0xa8d7e
1c009ca8:	69378793          	addi	a5,a5,1683 # a8d7e693 <pulp__FC+0xa8d7e694>
1c009cac:	68f72523          	sw	a5,1674(a4)
1c009cb0:	6789                	lui	a5,0x2
1c009cb2:	c9e78793          	addi	a5,a5,-866 # 1c9e <__CTOR_LIST__-0x1bffe366>
1c009cb6:	68f71723          	sh	a5,1678(a4)
1c009cba:	02200793          	li	a5,34
1c009cbe:	68f70823          	sb	a5,1680(a4)
1c009cc2:	d75547b7          	lui	a5,0xd7554
1c009cc6:	b8f78793          	addi	a5,a5,-1137 # d7553b8f <pulp__FC+0xd7553b90>
1c009cca:	68f728a3          	sw	a5,1681(a4)
1c009cce:	4b9da7b7          	lui	a5,0x4b9da
1c009cd2:	d0b78793          	addi	a5,a5,-757 # 4b9d9d0b <__l2_shared_end+0x2f9c9d0b>
1c009cd6:	68f72aa3          	sw	a5,1685(a4)
1c009cda:	7106c7b7          	lui	a5,0x7106c
1c009cde:	05c78793          	addi	a5,a5,92 # 7106c05c <__l2_shared_end+0x5505c05c>
1c009ce2:	68f72ca3          	sw	a5,1689(a4)
1c009ce6:	486917b7          	lui	a5,0x48691
1c009cea:	bad78793          	addi	a5,a5,-1107 # 48690bad <__l2_shared_end+0x2c680bad>
1c009cee:	68f72ea3          	sw	a5,1693(a4)
1c009cf2:	692957b7          	lui	a5,0x69295
1c009cf6:	a6778793          	addi	a5,a5,-1433 # 69294a67 <__l2_shared_end+0x4d284a67>
1c009cfa:	6af720a3          	sw	a5,1697(a4)
1c009cfe:	655807b7          	lui	a5,0x65580
1c009d02:	f5278793          	addi	a5,a5,-174 # 6557ff52 <__l2_shared_end+0x4956ff52>
1c009d06:	6af722a3          	sw	a5,1701(a4)
1c009d0a:	932c77b7          	lui	a5,0x932c7
1c009d0e:	5a378793          	addi	a5,a5,1443 # 932c75a3 <pulp__FC+0x932c75a4>
1c009d12:	6af724a3          	sw	a5,1705(a4)
1c009d16:	15e687b7          	lui	a5,0x15e68
1c009d1a:	ec878793          	addi	a5,a5,-312 # 15e67ec8 <__CTOR_LIST__-0x619813c>
1c009d1e:	6af726a3          	sw	a5,1709(a4)
1c009d22:	a1e387b7          	lui	a5,0xa1e38
1c009d26:	3c678793          	addi	a5,a5,966 # a1e383c6 <pulp__FC+0xa1e383c7>
1c009d2a:	6af728a3          	sw	a5,1713(a4)
1c009d2e:	2c4d97b7          	lui	a5,0x2c4d9
1c009d32:	1f778793          	addi	a5,a5,503 # 2c4d91f7 <__l2_shared_end+0x104c91f7>
1c009d36:	6af72aa3          	sw	a5,1717(a4)
1c009d3a:	6b4e57b7          	lui	a5,0x6b4e5
1c009d3e:	37278793          	addi	a5,a5,882 # 6b4e5372 <__l2_shared_end+0x4f4d5372>
1c009d42:	6af72ca3          	sw	a5,1721(a4)
1c009d46:	10bb37b7          	lui	a5,0x10bb3
1c009d4a:	1b278793          	addi	a5,a5,434 # 10bb31b2 <__CTOR_LIST__-0xb44ce52>
1c009d4e:	6af72ea3          	sw	a5,1725(a4)
1c009d52:	e760f7b7          	lui	a5,0xe760f
1c009d56:	a1678793          	addi	a5,a5,-1514 # e760ea16 <pulp__FC+0xe760ea17>
1c009d5a:	6cf720a3          	sw	a5,1729(a4)
1c009d5e:	e397c7b7          	lui	a5,0xe397c
1c009d62:	8a578793          	addi	a5,a5,-1883 # e397b8a5 <pulp__FC+0xe397b8a6>
1c009d66:	6cf722a3          	sw	a5,1733(a4)
1c009d6a:	a36257b7          	lui	a5,0xa3625
1c009d6e:	d2e78793          	addi	a5,a5,-722 # a3624d2e <pulp__FC+0xa3624d2f>
1c009d72:	6cf724a3          	sw	a5,1737(a4)
1c009d76:	d95f97b7          	lui	a5,0xd95f9
1c009d7a:	48378793          	addi	a5,a5,1155 # d95f9483 <pulp__FC+0xd95f9484>
1c009d7e:	6cf726a3          	sw	a5,1741(a4)
1c009d82:	e7bf37b7          	lui	a5,0xe7bf3
1c009d86:	69178793          	addi	a5,a5,1681 # e7bf3691 <pulp__FC+0xe7bf3692>
1c009d8a:	6cf728a3          	sw	a5,1745(a4)
1c009d8e:	494817b7          	lui	a5,0x49481
1c009d92:	4cf78793          	addi	a5,a5,1231 # 494814cf <__l2_shared_end+0x2d4714cf>
1c009d96:	6cf72aa3          	sw	a5,1749(a4)
1c009d9a:	054ab7b7          	lui	a5,0x54ab
1c009d9e:	aec78793          	addi	a5,a5,-1300 # 54aaaec <__CTOR_LIST__-0x16b55518>
1c009da2:	6cf72ca3          	sw	a5,1753(a4)
1c009da6:	9940c7b7          	lui	a5,0x9940c
1c009daa:	04778793          	addi	a5,a5,71 # 9940c047 <pulp__FC+0x9940c048>
1c009dae:	6cf72ea3          	sw	a5,1757(a4)
1c009db2:	49f257b7          	lui	a5,0x49f25
1c009db6:	59a78793          	addi	a5,a5,1434 # 49f2559a <__l2_shared_end+0x2df1559a>
1c009dba:	6ef720a3          	sw	a5,1761(a4)
1c009dbe:	72c527b7          	lui	a5,0x72c52
1c009dc2:	77578793          	addi	a5,a5,1909 # 72c52775 <__l2_shared_end+0x56c42775>
1c009dc6:	6ef722a3          	sw	a5,1765(a4)
1c009dca:	ec2fd7b7          	lui	a5,0xec2fd
1c009dce:	beb78793          	addi	a5,a5,-1045 # ec2fcbeb <pulp__FC+0xec2fcbec>
1c009dd2:	6ef724a3          	sw	a5,1769(a4)
1c009dd6:	4129f7b7          	lui	a5,0x4129f
1c009dda:	b4678793          	addi	a5,a5,-1210 # 4129eb46 <__l2_shared_end+0x2528eb46>
1c009dde:	6ef726a3          	sw	a5,1773(a4)
1c009de2:	64bff7b7          	lui	a5,0x64bff
1c009de6:	40778793          	addi	a5,a5,1031 # 64bff407 <__l2_shared_end+0x48bef407>
1c009dea:	6ef728a3          	sw	a5,1777(a4)
1c009dee:	bce477b7          	lui	a5,0xbce47
1c009df2:	b7978793          	addi	a5,a5,-1159 # bce46b79 <pulp__FC+0xbce46b7a>
1c009df6:	6ef72aa3          	sw	a5,1781(a4)
1c009dfa:	866bc7b7          	lui	a5,0x866bc
1c009dfe:	c9978793          	addi	a5,a5,-871 # 866bbc99 <pulp__FC+0x866bbc9a>
1c009e02:	6ef72ca3          	sw	a5,1785(a4)
1c009e06:	5160a7b7          	lui	a5,0x5160a
1c009e0a:	8b278793          	addi	a5,a5,-1870 # 516098b2 <__l2_shared_end+0x355f98b2>
1c009e0e:	6ef72ea3          	sw	a5,1789(a4)
1c009e12:	b4f547b7          	lui	a5,0xb4f54
1c009e16:	55778793          	addi	a5,a5,1367 # b4f54557 <pulp__FC+0xb4f54558>
1c009e1a:	70f720a3          	sw	a5,1793(a4)
1c009e1e:	0979f7b7          	lui	a5,0x979f
1c009e22:	c0478793          	addi	a5,a5,-1020 # 979ec04 <__CTOR_LIST__-0x12861400>
1c009e26:	70f722a3          	sw	a5,1797(a4)
1c009e2a:	c76fb7b7          	lui	a5,0xc76fb
1c009e2e:	33b78793          	addi	a5,a5,827 # c76fb33b <pulp__FC+0xc76fb33c>
1c009e32:	70f724a3          	sw	a5,1801(a4)
1c009e36:	b679b7b7          	lui	a5,0xb679b
1c009e3a:	dbb78793          	addi	a5,a5,-581 # b679adbb <pulp__FC+0xb679adbc>
1c009e3e:	70f726a3          	sw	a5,1805(a4)
1c009e42:	baa3d7b7          	lui	a5,0xbaa3d
1c009e46:	8c078793          	addi	a5,a5,-1856 # baa3c8c0 <pulp__FC+0xbaa3c8c1>
1c009e4a:	70f728a3          	sw	a5,1809(a4)
1c009e4e:	a456e7b7          	lui	a5,0xa456e
1c009e52:	b4e78793          	addi	a5,a5,-1202 # a456db4e <pulp__FC+0xa456db4f>
1c009e56:	70f72aa3          	sw	a5,1813(a4)
1c009e5a:	47f997b7          	lui	a5,0x47f99
1c009e5e:	fc878793          	addi	a5,a5,-56 # 47f98fc8 <__l2_shared_end+0x2bf88fc8>
1c009e62:	70f72ca3          	sw	a5,1817(a4)
1c009e66:	c9e777b7          	lui	a5,0xc9e77
1c009e6a:	48b78793          	addi	a5,a5,1163 # c9e7748b <pulp__FC+0xc9e7748c>
1c009e6e:	70f72ea3          	sw	a5,1821(a4)
1c009e72:	692537b7          	lui	a5,0x69253
1c009e76:	c0b78793          	addi	a5,a5,-1013 # 69252c0b <__l2_shared_end+0x4d242c0b>
1c009e7a:	72f720a3          	sw	a5,1825(a4)
1c009e7e:	84ac87b7          	lui	a5,0x84ac8
1c009e82:	20878793          	addi	a5,a5,520 # 84ac8208 <pulp__FC+0x84ac8209>
1c009e86:	72f722a3          	sw	a5,1829(a4)
1c009e8a:	115197b7          	lui	a5,0x11519
1c009e8e:	d5178793          	addi	a5,a5,-687 # 11518d51 <__CTOR_LIST__-0xaae72b3>
1c009e92:	72f724a3          	sw	a5,1833(a4)
1c009e96:	f16fa7b7          	lui	a5,0xf16fa
1c009e9a:	3ff78793          	addi	a5,a5,1023 # f16fa3ff <pulp__FC+0xf16fa400>
1c009e9e:	72f726a3          	sw	a5,1837(a4)
1c009ea2:	bc5ba7b7          	lui	a5,0xbc5ba
1c009ea6:	be478793          	addi	a5,a5,-1052 # bc5b9be4 <pulp__FC+0xbc5b9be5>
1c009eaa:	72f728a3          	sw	a5,1841(a4)
1c009eae:	7be5f7b7          	lui	a5,0x7be5f
1c009eb2:	45a78793          	addi	a5,a5,1114 # 7be5f45a <__l2_shared_end+0x5fe4f45a>
1c009eb6:	72f72aa3          	sw	a5,1845(a4)
1c009eba:	12af07b7          	lui	a5,0x12af0
1c009ebe:	2c278793          	addi	a5,a5,706 # 12af02c2 <__CTOR_LIST__-0x950fd42>
1c009ec2:	72f72ca3          	sw	a5,1849(a4)
1c009ec6:	2a0867b7          	lui	a5,0x2a086
1c009eca:	65c78793          	addi	a5,a5,1628 # 2a08665c <__l2_shared_end+0xe07665c>
1c009ece:	72f72ea3          	sw	a5,1853(a4)
1c009ed2:	86da57b7          	lui	a5,0x86da5
1c009ed6:	d3078793          	addi	a5,a5,-720 # 86da4d30 <pulp__FC+0x86da4d31>
1c009eda:	74f720a3          	sw	a5,1857(a4)
1c009ede:	b606b7b7          	lui	a5,0xb606b
1c009ee2:	6ed78793          	addi	a5,a5,1773 # b606b6ed <pulp__FC+0xb606b6ee>
1c009ee6:	74f722a3          	sw	a5,1861(a4)
1c009eea:	b6ab77b7          	lui	a5,0xb6ab7
1c009eee:	34378793          	addi	a5,a5,835 # b6ab7343 <pulp__FC+0xb6ab7344>
1c009ef2:	74f724a3          	sw	a5,1865(a4)
1c009ef6:	945647b7          	lui	a5,0x94564
1c009efa:	b6878793          	addi	a5,a5,-1176 # 94563b68 <pulp__FC+0x94563b69>
1c009efe:	74f726a3          	sw	a5,1869(a4)
1c009f02:	60ab67b7          	lui	a5,0x60ab6
1c009f06:	19678793          	addi	a5,a5,406 # 60ab6196 <__l2_shared_end+0x44aa6196>
1c009f0a:	74f728a3          	sw	a5,1873(a4)
1c009f0e:	4ce117b7          	lui	a5,0x4ce11
1c009f12:	1c078793          	addi	a5,a5,448 # 4ce111c0 <__l2_shared_end+0x30e011c0>
1c009f16:	74f72aa3          	sw	a5,1877(a4)
1c009f1a:	92c827b7          	lui	a5,0x92c82
1c009f1e:	32b78793          	addi	a5,a5,811 # 92c8232b <pulp__FC+0x92c8232c>
1c009f22:	74f72ca3          	sw	a5,1881(a4)
1c009f26:	74a987b7          	lui	a5,0x74a98
1c009f2a:	73578793          	addi	a5,a5,1845 # 74a98735 <__l2_shared_end+0x58a88735>
1c009f2e:	74f72ea3          	sw	a5,1885(a4)
1c009f32:	4c5787b7          	lui	a5,0x4c578
1c009f36:	9cc78793          	addi	a5,a5,-1588 # 4c5779cc <__l2_shared_end+0x305679cc>
1c009f3a:	76f720a3          	sw	a5,1889(a4)
1c009f3e:	106297b7          	lui	a5,0x10629
1c009f42:	58278793          	addi	a5,a5,1410 # 10629582 <__CTOR_LIST__-0xb9d6a82>
1c009f46:	76f722a3          	sw	a5,1893(a4)
1c009f4a:	371d87b7          	lui	a5,0x371d8
1c009f4e:	09178793          	addi	a5,a5,145 # 371d8091 <__l2_shared_end+0x1b1c8091>
1c009f52:	76f724a3          	sw	a5,1897(a4)
1c009f56:	855797b7          	lui	a5,0x85579
1c009f5a:	72378793          	addi	a5,a5,1827 # 85579723 <pulp__FC+0x85579724>
1c009f5e:	76f726a3          	sw	a5,1901(a4)
1c009f62:	c36937b7          	lui	a5,0xc3693
1c009f66:	15878793          	addi	a5,a5,344 # c3693158 <pulp__FC+0xc3693159>
1c009f6a:	76f728a3          	sw	a5,1905(a4)
1c009f6e:	5982d7b7          	lui	a5,0x5982d
1c009f72:	15878793          	addi	a5,a5,344 # 5982d158 <__l2_shared_end+0x3d81d158>
1c009f76:	76f72aa3          	sw	a5,1909(a4)
1c009f7a:	224b37b7          	lui	a5,0x224b3
1c009f7e:	46c78793          	addi	a5,a5,1132 # 224b346c <__l2_shared_end+0x64a346c>
1c009f82:	76f72ca3          	sw	a5,1913(a4)
1c009f86:	954057b7          	lui	a5,0x95405
1c009f8a:	a9678793          	addi	a5,a5,-1386 # 95404a96 <pulp__FC+0x95404a97>
1c009f8e:	76f72ea3          	sw	a5,1917(a4)
1c009f92:	ba7227b7          	lui	a5,0xba722
1c009f96:	28b78793          	addi	a5,a5,651 # ba72228b <pulp__FC+0xba72228c>
1c009f9a:	78f720a3          	sw	a5,1921(a4)
1c009f9e:	2bfd17b7          	lui	a5,0x2bfd1
1c009fa2:	17ed                	addi	a5,a5,-5
1c009fa4:	78f722a3          	sw	a5,1925(a4)
1c009fa8:	fb100793          	li	a5,-79
1c009fac:	78f705a3          	sb	a5,1931(a4)
1c009fb0:	cb1007b7          	lui	a5,0xcb100
1c009fb4:	24f78793          	addi	a5,a5,591 # cb10024f <pulp__FC+0xcb100250>
1c009fb8:	78f72623          	sw	a5,1932(a4)
1c009fbc:	6f4717b7          	lui	a5,0x6f471
1c009fc0:	4c878793          	addi	a5,a5,1224 # 6f4714c8 <__l2_shared_end+0x534614c8>
1c009fc4:	78f72823          	sw	a5,1936(a4)
1c009fc8:	4cc58593          	addi	a1,a1,1228
1c009fcc:	80f447b7          	lui	a5,0x80f44
1c009fd0:	78b714a3          	sh	a1,1929(a4)
1c009fd4:	74078793          	addi	a5,a5,1856 # 80f44740 <pulp__FC+0x80f44741>
1c009fd8:	78f72a23          	sw	a5,1940(a4)
1c009fdc:	749687b7          	lui	a5,0x74968
1c009fe0:	35678793          	addi	a5,a5,854 # 74968356 <__l2_shared_end+0x58958356>
1c009fe4:	78f72c23          	sw	a5,1944(a4)
1c009fe8:	322307b7          	lui	a5,0x32230
1c009fec:	12b78793          	addi	a5,a5,299 # 3223012b <__l2_shared_end+0x1622012b>
1c009ff0:	78f72e23          	sw	a5,1948(a4)
1c009ff4:	1019a7b7          	lui	a5,0x1019a
1c009ff8:	1a178793          	addi	a5,a5,417 # 1019a1a1 <__CTOR_LIST__-0xbe65e63>
1c009ffc:	7af72023          	sw	a5,1952(a4)
1c00a000:	b4b9e7b7          	lui	a5,0xb4b9e
1c00a004:	f5678793          	addi	a5,a5,-170 # b4b9df56 <pulp__FC+0xb4b9df57>
1c00a008:	7af72223          	sw	a5,1956(a4)
1c00a00c:	a67b77b7          	lui	a5,0xa67b7
1c00a010:	53a78793          	addi	a5,a5,1338 # a67b753a <pulp__FC+0xa67b753b>
1c00a014:	7af72423          	sw	a5,1960(a4)
1c00a018:	66bc37b7          	lui	a5,0x66bc3
1c00a01c:	7ac78793          	addi	a5,a5,1964 # 66bc37ac <__l2_shared_end+0x4abb37ac>
1c00a020:	7af72623          	sw	a5,1964(a4)
1c00a024:	ca33e7b7          	lui	a5,0xca33e
1c00a028:	46278793          	addi	a5,a5,1122 # ca33e462 <pulp__FC+0xca33e463>
1c00a02c:	7af72823          	sw	a5,1968(a4)
1c00a030:	958367b7          	lui	a5,0x95836
1c00a034:	9f178793          	addi	a5,a5,-1551 # 958359f1 <pulp__FC+0x958359f2>
1c00a038:	7af72a23          	sw	a5,1972(a4)
1c00a03c:	a7a957b7          	lui	a5,0xa7a95
1c00a040:	1799                	addi	a5,a5,-26
1c00a042:	7af72c23          	sw	a5,1976(a4)
1c00a046:	007147b7          	lui	a5,0x714
1c00a04a:	b2f78793          	addi	a5,a5,-1233 # 713b2f <__CTOR_LIST__-0x1b8ec4d5>
1c00a04e:	7af72e23          	sw	a5,1980(a4)
1c00a052:	b38ef7b7          	lui	a5,0xb38ef
1c00a056:	b6a78793          	addi	a5,a5,-1174 # b38eeb6a <pulp__FC+0xb38eeb6b>
1c00a05a:	7cf72023          	sw	a5,1984(a4)
1c00a05e:	d6fd77b7          	lui	a5,0xd6fd7
1c00a062:	67378793          	addi	a5,a5,1651 # d6fd7673 <pulp__FC+0xd6fd7674>
1c00a066:	7cf72223          	sw	a5,1988(a4)
1c00a06a:	60e057b7          	lui	a5,0x60e05
1c00a06e:	a1778793          	addi	a5,a5,-1513 # 60e04a17 <__l2_shared_end+0x44df4a17>
1c00a072:	7cf72423          	sw	a5,1992(a4)
1c00a076:	2a5377b7          	lui	a5,0x2a537
1c00a07a:	b5a78793          	addi	a5,a5,-1190 # 2a536b5a <__l2_shared_end+0xe526b5a>
1c00a07e:	7cf72623          	sw	a5,1996(a4)
1c00a082:	26f017b7          	lui	a5,0x26f01
1c00a086:	4b678793          	addi	a5,a5,1206 # 26f014b6 <__l2_shared_end+0xaef14b6>
1c00a08a:	7cf72823          	sw	a5,2000(a4)
1c00a08e:	3b56b7b7          	lui	a5,0x3b56b
1c00a092:	e4178793          	addi	a5,a5,-447 # 3b56ae41 <__l2_shared_end+0x1f55ae41>
1c00a096:	7cf72a23          	sw	a5,2004(a4)
1c00a09a:	001937b7          	lui	a5,0x193
1c00a09e:	0f278793          	addi	a5,a5,242 # 1930f2 <__CTOR_LIST__-0x1be6cf12>
1c00a0a2:	7cf72c23          	sw	a5,2008(a4)
1c00a0a6:	d3ed07b7          	lui	a5,0xd3ed0
1c00a0aa:	1f478793          	addi	a5,a5,500 # d3ed01f4 <pulp__FC+0xd3ed01f5>
1c00a0ae:	7cf72e23          	sw	a5,2012(a4)
1c00a0b2:	90d337b7          	lui	a5,0x90d33
1c00a0b6:	1b478793          	addi	a5,a5,436 # 90d331b4 <pulp__FC+0x90d331b5>
1c00a0ba:	7ef72023          	sw	a5,2016(a4)
1c00a0be:	2b4af7b7          	lui	a5,0x2b4af
1c00a0c2:	aa978793          	addi	a5,a5,-1367 # 2b4aeaa9 <__l2_shared_end+0xf49eaa9>
1c00a0c6:	7ef72223          	sw	a5,2020(a4)
1c00a0ca:	f4cfa7b7          	lui	a5,0xf4cfa
1c00a0ce:	b3678793          	addi	a5,a5,-1226 # f4cf9b36 <pulp__FC+0xf4cf9b37>
1c00a0d2:	7ef72423          	sw	a5,2024(a4)
1c00a0d6:	4ae847b7          	lui	a5,0x4ae84
1c00a0da:	8b878793          	addi	a5,a5,-1864 # 4ae838b8 <__l2_shared_end+0x2ee738b8>
1c00a0de:	7ef72623          	sw	a5,2028(a4)
1c00a0e2:	a19187b7          	lui	a5,0xa1918
1c00a0e6:	98878793          	addi	a5,a5,-1656 # a1917988 <pulp__FC+0xa1917989>
1c00a0ea:	7ef72823          	sw	a5,2032(a4)
1c00a0ee:	cc68d7b7          	lui	a5,0xcc68d
1c00a0f2:	86778793          	addi	a5,a5,-1945 # cc68c867 <pulp__FC+0xcc68c868>
1c00a0f6:	7ef72a23          	sw	a5,2036(a4)
1c00a0fa:	3c6ba7b7          	lui	a5,0x3c6ba
1c00a0fe:	19b78793          	addi	a5,a5,411 # 3c6ba19b <__l2_shared_end+0x206aa19b>
1c00a102:	7ef72c23          	sw	a5,2040(a4)
1c00a106:	e1b397b7          	lui	a5,0xe1b39
1c00a10a:	93178793          	addi	a5,a5,-1743 # e1b38931 <pulp__FC+0xe1b38932>
1c00a10e:	7ef72e23          	sw	a5,2044(a4)
1c00a112:	6705                	lui	a4,0x1
1c00a114:	647397b7          	lui	a5,0x64739
1c00a118:	aa070713          	addi	a4,a4,-1376 # aa0 <__CTOR_LIST__-0x1bfff564>
1c00a11c:	970a                	add	a4,a4,sp
1c00a11e:	f9078793          	addi	a5,a5,-112 # 64738f90 <__l2_shared_end+0x48728f90>
1c00a122:	c31c                	sw	a5,0(a4)
1c00a124:	6705                	lui	a4,0x1
1c00a126:	2a3857b7          	lui	a5,0x2a385
1c00a12a:	aa470713          	addi	a4,a4,-1372 # aa4 <__CTOR_LIST__-0x1bfff560>
1c00a12e:	970a                	add	a4,a4,sp
1c00a130:	f6078793          	addi	a5,a5,-160 # 2a384f60 <__l2_shared_end+0xe374f60>
1c00a134:	c31c                	sw	a5,0(a4)
1c00a136:	6705                	lui	a4,0x1
1c00a138:	c88517b7          	lui	a5,0xc8851
1c00a13c:	aa870713          	addi	a4,a4,-1368 # aa8 <__CTOR_LIST__-0x1bfff55c>
1c00a140:	970a                	add	a4,a4,sp
1c00a142:	a2a78793          	addi	a5,a5,-1494 # c8850a2a <pulp__FC+0xc8850a2b>
1c00a146:	c31c                	sw	a5,0(a4)
1c00a148:	6705                	lui	a4,0x1
1c00a14a:	1b9847b7          	lui	a5,0x1b984
1c00a14e:	aac70713          	addi	a4,a4,-1364 # aac <__CTOR_LIST__-0x1bfff558>
1c00a152:	970a                	add	a4,a4,sp
1c00a154:	1e378793          	addi	a5,a5,483 # 1b9841e3 <__CTOR_LIST__-0x67be21>
1c00a158:	c31c                	sw	a5,0(a4)
1c00a15a:	6705                	lui	a4,0x1
1c00a15c:	3347f7b7          	lui	a5,0x3347f
1c00a160:	ab070713          	addi	a4,a4,-1360 # ab0 <__CTOR_LIST__-0x1bfff554>
1c00a164:	970a                	add	a4,a4,sp
1c00a166:	c9f78793          	addi	a5,a5,-865 # 3347ec9f <__l2_shared_end+0x1746ec9f>
1c00a16a:	c31c                	sw	a5,0(a4)
1c00a16c:	6705                	lui	a4,0x1
1c00a16e:	db1e37b7          	lui	a5,0xdb1e3
1c00a172:	ab470713          	addi	a4,a4,-1356 # ab4 <__CTOR_LIST__-0x1bfff550>
1c00a176:	970a                	add	a4,a4,sp
1c00a178:	a3078793          	addi	a5,a5,-1488 # db1e2a30 <pulp__FC+0xdb1e2a31>
1c00a17c:	c31c                	sw	a5,0(a4)
1c00a17e:	6705                	lui	a4,0x1
1c00a180:	3b9e77b7          	lui	a5,0x3b9e7
1c00a184:	ab870713          	addi	a4,a4,-1352 # ab8 <__CTOR_LIST__-0x1bfff54c>
1c00a188:	970a                	add	a4,a4,sp
1c00a18a:	14478793          	addi	a5,a5,324 # 3b9e7144 <__l2_shared_end+0x1f9d7144>
1c00a18e:	c31c                	sw	a5,0(a4)
1c00a190:	6705                	lui	a4,0x1
1c00a192:	0b7787b7          	lui	a5,0xb778
1c00a196:	abc70713          	addi	a4,a4,-1348 # abc <__CTOR_LIST__-0x1bfff548>
1c00a19a:	970a                	add	a4,a4,sp
1c00a19c:	b5378793          	addi	a5,a5,-1197 # b777b53 <__CTOR_LIST__-0x108884b1>
1c00a1a0:	c31c                	sw	a5,0(a4)
1c00a1a2:	6705                	lui	a4,0x1
1c00a1a4:	687a87b7          	lui	a5,0x687a8
1c00a1a8:	ac070713          	addi	a4,a4,-1344 # ac0 <__CTOR_LIST__-0x1bfff544>
1c00a1ac:	970a                	add	a4,a4,sp
1c00a1ae:	52378793          	addi	a5,a5,1315 # 687a8523 <__l2_shared_end+0x4c798523>
1c00a1b2:	c31c                	sw	a5,0(a4)
1c00a1b4:	6705                	lui	a4,0x1
1c00a1b6:	bc9147b7          	lui	a5,0xbc914
1c00a1ba:	ac470713          	addi	a4,a4,-1340 # ac4 <__CTOR_LIST__-0x1bfff540>
1c00a1be:	970a                	add	a4,a4,sp
1c00a1c0:	17cd                	addi	a5,a5,-13
1c00a1c2:	c31c                	sw	a5,0(a4)
1c00a1c4:	6705                	lui	a4,0x1
1c00a1c6:	931c37b7          	lui	a5,0x931c3
1c00a1ca:	ac870713          	addi	a4,a4,-1336 # ac8 <__CTOR_LIST__-0x1bfff53c>
1c00a1ce:	970a                	add	a4,a4,sp
1c00a1d0:	18078793          	addi	a5,a5,384 # 931c3180 <pulp__FC+0x931c3181>
1c00a1d4:	c31c                	sw	a5,0(a4)
1c00a1d6:	6705                	lui	a4,0x1
1c00a1d8:	005907b7          	lui	a5,0x590
1c00a1dc:	acc70713          	addi	a4,a4,-1332 # acc <__CTOR_LIST__-0x1bfff538>
1c00a1e0:	970a                	add	a4,a4,sp
1c00a1e2:	02a78793          	addi	a5,a5,42 # 59002a <__CTOR_LIST__-0x1ba6ffda>
1c00a1e6:	c31c                	sw	a5,0(a4)
1c00a1e8:	6705                	lui	a4,0x1
1c00a1ea:	d3e177b7          	lui	a5,0xd3e17
1c00a1ee:	ad070713          	addi	a4,a4,-1328 # ad0 <__CTOR_LIST__-0x1bfff534>
1c00a1f2:	970a                	add	a4,a4,sp
1c00a1f4:	cfb78793          	addi	a5,a5,-773 # d3e16cfb <pulp__FC+0xd3e16cfc>
1c00a1f8:	c31c                	sw	a5,0(a4)
1c00a1fa:	6705                	lui	a4,0x1
1c00a1fc:	953347b7          	lui	a5,0x95334
1c00a200:	ad470713          	addi	a4,a4,-1324 # ad4 <__CTOR_LIST__-0x1bfff530>
1c00a204:	970a                	add	a4,a4,sp
1c00a206:	aa778793          	addi	a5,a5,-1369 # 95333aa7 <pulp__FC+0x95333aa8>
1c00a20a:	c31c                	sw	a5,0(a4)
1c00a20c:	6705                	lui	a4,0x1
1c00a20e:	543de7b7          	lui	a5,0x543de
1c00a212:	ad870713          	addi	a4,a4,-1320 # ad8 <__CTOR_LIST__-0x1bfff52c>
1c00a216:	970a                	add	a4,a4,sp
1c00a218:	0e078793          	addi	a5,a5,224 # 543de0e0 <__l2_shared_end+0x383ce0e0>
1c00a21c:	c31c                	sw	a5,0(a4)
1c00a21e:	6705                	lui	a4,0x1
1c00a220:	37a627b7          	lui	a5,0x37a62
1c00a224:	adc70713          	addi	a4,a4,-1316 # adc <__CTOR_LIST__-0x1bfff528>
1c00a228:	970a                	add	a4,a4,sp
1c00a22a:	5dc78793          	addi	a5,a5,1500 # 37a625dc <__l2_shared_end+0x1ba525dc>
1c00a22e:	c31c                	sw	a5,0(a4)
1c00a230:	6705                	lui	a4,0x1
1c00a232:	0974f7b7          	lui	a5,0x974f
1c00a236:	ae070713          	addi	a4,a4,-1312 # ae0 <__CTOR_LIST__-0x1bfff524>
1c00a23a:	970a                	add	a4,a4,sp
1c00a23c:	7b678793          	addi	a5,a5,1974 # 974f7b6 <__CTOR_LIST__-0x128b084e>
1c00a240:	c31c                	sw	a5,0(a4)
1c00a242:	6705                	lui	a4,0x1
1c00a244:	4c78c7b7          	lui	a5,0x4c78c
1c00a248:	ae470713          	addi	a4,a4,-1308 # ae4 <__CTOR_LIST__-0x1bfff520>
1c00a24c:	970a                	add	a4,a4,sp
1c00a24e:	1b578793          	addi	a5,a5,437 # 4c78c1b5 <__l2_shared_end+0x3077c1b5>
1c00a252:	c31c                	sw	a5,0(a4)
1c00a254:	6705                	lui	a4,0x1
1c00a256:	aa1517b7          	lui	a5,0xaa151
1c00a25a:	ae870713          	addi	a4,a4,-1304 # ae8 <__CTOR_LIST__-0x1bfff51c>
1c00a25e:	970a                	add	a4,a4,sp
1c00a260:	a8278793          	addi	a5,a5,-1406 # aa150a82 <pulp__FC+0xaa150a83>
1c00a264:	c31c                	sw	a5,0(a4)
1c00a266:	6705                	lui	a4,0x1
1c00a268:	c651b7b7          	lui	a5,0xc651b
1c00a26c:	aec70713          	addi	a4,a4,-1300 # aec <__CTOR_LIST__-0x1bfff518>
1c00a270:	970a                	add	a4,a4,sp
1c00a272:	36578793          	addi	a5,a5,869 # c651b365 <pulp__FC+0xc651b366>
1c00a276:	c31c                	sw	a5,0(a4)
1c00a278:	6705                	lui	a4,0x1
1c00a27a:	63a007b7          	lui	a5,0x63a00
1c00a27e:	af070713          	addi	a4,a4,-1296 # af0 <__CTOR_LIST__-0x1bfff514>
1c00a282:	970a                	add	a4,a4,sp
1c00a284:	41b78793          	addi	a5,a5,1051 # 63a0041b <__l2_shared_end+0x479f041b>
1c00a288:	c31c                	sw	a5,0(a4)
1c00a28a:	6705                	lui	a4,0x1
1c00a28c:	5974d7b7          	lui	a5,0x5974d
1c00a290:	af470713          	addi	a4,a4,-1292 # af4 <__CTOR_LIST__-0x1bfff510>
1c00a294:	970a                	add	a4,a4,sp
1c00a296:	bcc78793          	addi	a5,a5,-1076 # 5974cbcc <__l2_shared_end+0x3d73cbcc>
1c00a29a:	c31c                	sw	a5,0(a4)
1c00a29c:	6705                	lui	a4,0x1
1c00a29e:	9b0777b7          	lui	a5,0x9b077
1c00a2a2:	af870713          	addi	a4,a4,-1288 # af8 <__CTOR_LIST__-0x1bfff50c>
1c00a2a6:	970a                	add	a4,a4,sp
1c00a2a8:	d4d78793          	addi	a5,a5,-691 # 9b076d4d <pulp__FC+0x9b076d4e>
1c00a2ac:	c31c                	sw	a5,0(a4)
1c00a2ae:	6705                	lui	a4,0x1
1c00a2b0:	40bcc7b7          	lui	a5,0x40bcc
1c00a2b4:	afc70713          	addi	a4,a4,-1284 # afc <__CTOR_LIST__-0x1bfff508>
1c00a2b8:	970a                	add	a4,a4,sp
1c00a2ba:	28278793          	addi	a5,a5,642 # 40bcc282 <__l2_shared_end+0x24bbc282>
1c00a2be:	c31c                	sw	a5,0(a4)
1c00a2c0:	6705                	lui	a4,0x1
1c00a2c2:	72ec07b7          	lui	a5,0x72ec0
1c00a2c6:	b0070713          	addi	a4,a4,-1280 # b00 <__CTOR_LIST__-0x1bfff504>
1c00a2ca:	970a                	add	a4,a4,sp
1c00a2cc:	15478793          	addi	a5,a5,340 # 72ec0154 <__l2_shared_end+0x56eb0154>
1c00a2d0:	c31c                	sw	a5,0(a4)
1c00a2d2:	6705                	lui	a4,0x1
1c00a2d4:	9d3967b7          	lui	a5,0x9d396
1c00a2d8:	b0470713          	addi	a4,a4,-1276 # b04 <__CTOR_LIST__-0x1bfff500>
1c00a2dc:	970a                	add	a4,a4,sp
1c00a2de:	ebf78793          	addi	a5,a5,-321 # 9d395ebf <pulp__FC+0x9d395ec0>
1c00a2e2:	c31c                	sw	a5,0(a4)
1c00a2e4:	6705                	lui	a4,0x1
1c00a2e6:	863217b7          	lui	a5,0x86321
1c00a2ea:	b0870713          	addi	a4,a4,-1272 # b08 <__CTOR_LIST__-0x1bfff4fc>
1c00a2ee:	970a                	add	a4,a4,sp
1c00a2f0:	92078793          	addi	a5,a5,-1760 # 86320920 <pulp__FC+0x86320921>
1c00a2f4:	c31c                	sw	a5,0(a4)
1c00a2f6:	6705                	lui	a4,0x1
1c00a2f8:	c9b427b7          	lui	a5,0xc9b42
1c00a2fc:	b0c70713          	addi	a4,a4,-1268 # b0c <__CTOR_LIST__-0x1bfff4f8>
1c00a300:	970a                	add	a4,a4,sp
1c00a302:	28c78793          	addi	a5,a5,652 # c9b4228c <pulp__FC+0xc9b4228d>
1c00a306:	c31c                	sw	a5,0(a4)
1c00a308:	6705                	lui	a4,0x1
1c00a30a:	7f87a7b7          	lui	a5,0x7f87a
1c00a30e:	b1070713          	addi	a4,a4,-1264 # b10 <__CTOR_LIST__-0x1bfff4f4>
1c00a312:	970a                	add	a4,a4,sp
1c00a314:	b1b78793          	addi	a5,a5,-1253 # 7f879b1b <__l2_shared_end+0x63869b1b>
1c00a318:	c31c                	sw	a5,0(a4)
1c00a31a:	6705                	lui	a4,0x1
1c00a31c:	618177b7          	lui	a5,0x61817
1c00a320:	b1470713          	addi	a4,a4,-1260 # b14 <__CTOR_LIST__-0x1bfff4f0>
1c00a324:	970a                	add	a4,a4,sp
1c00a326:	61d78793          	addi	a5,a5,1565 # 6181761d <__l2_shared_end+0x4580761d>
1c00a32a:	c31c                	sw	a5,0(a4)
1c00a32c:	6705                	lui	a4,0x1
1c00a32e:	8b8e07b7          	lui	a5,0x8b8e0
1c00a332:	b1870713          	addi	a4,a4,-1256 # b18 <__CTOR_LIST__-0x1bfff4ec>
1c00a336:	970a                	add	a4,a4,sp
1c00a338:	62a78793          	addi	a5,a5,1578 # 8b8e062a <pulp__FC+0x8b8e062b>
1c00a33c:	c31c                	sw	a5,0(a4)
1c00a33e:	6705                	lui	a4,0x1
1c00a340:	2cd2d7b7          	lui	a5,0x2cd2d
1c00a344:	b1c70713          	addi	a4,a4,-1252 # b1c <__CTOR_LIST__-0x1bfff4e8>
1c00a348:	970a                	add	a4,a4,sp
1c00a34a:	07978793          	addi	a5,a5,121 # 2cd2d079 <__l2_shared_end+0x10d1d079>
1c00a34e:	c31c                	sw	a5,0(a4)
1c00a350:	6705                	lui	a4,0x1
1c00a352:	eda427b7          	lui	a5,0xeda42
1c00a356:	b2070713          	addi	a4,a4,-1248 # b20 <__CTOR_LIST__-0x1bfff4e4>
1c00a35a:	970a                	add	a4,a4,sp
1c00a35c:	64278793          	addi	a5,a5,1602 # eda42642 <pulp__FC+0xeda42643>
1c00a360:	c31c                	sw	a5,0(a4)
1c00a362:	6705                	lui	a4,0x1
1c00a364:	679d                	lui	a5,0x7
1c00a366:	b2470713          	addi	a4,a4,-1244 # b24 <__CTOR_LIST__-0x1bfff4e0>
1c00a36a:	970a                	add	a4,a4,sp
1c00a36c:	be178793          	addi	a5,a5,-1055 # 6be1 <__CTOR_LIST__-0x1bff9423>
1c00a370:	00f71023          	sh	a5,0(a4)
1c00a374:	6705                	lui	a4,0x1
1c00a376:	b2670713          	addi	a4,a4,-1242 # b26 <__CTOR_LIST__-0x1bfff4de>
1c00a37a:	970a                	add	a4,a4,sp
1c00a37c:	05a00793          	li	a5,90
1c00a380:	00f70023          	sb	a5,0(a4)
1c00a384:	6705                	lui	a4,0x1
1c00a386:	b48777b7          	lui	a5,0xb4877
1c00a38a:	b2770713          	addi	a4,a4,-1241 # b27 <__CTOR_LIST__-0x1bfff4dd>
1c00a38e:	970a                	add	a4,a4,sp
1c00a390:	95078793          	addi	a5,a5,-1712 # b4876950 <pulp__FC+0xb4876951>
1c00a394:	c31c                	sw	a5,0(a4)
1c00a396:	6705                	lui	a4,0x1
1c00a398:	442427b7          	lui	a5,0x44242
1c00a39c:	b2b70713          	addi	a4,a4,-1237 # b2b <__CTOR_LIST__-0x1bfff4d9>
1c00a3a0:	970a                	add	a4,a4,sp
1c00a3a2:	a7878793          	addi	a5,a5,-1416 # 44241a78 <__l2_shared_end+0x28231a78>
1c00a3a6:	c31c                	sw	a5,0(a4)
1c00a3a8:	6705                	lui	a4,0x1
1c00a3aa:	84c277b7          	lui	a5,0x84c27
1c00a3ae:	b2f70713          	addi	a4,a4,-1233 # b2f <__CTOR_LIST__-0x1bfff4d5>
1c00a3b2:	970a                	add	a4,a4,sp
1c00a3b4:	5fc78793          	addi	a5,a5,1532 # 84c275fc <pulp__FC+0x84c275fd>
1c00a3b8:	c31c                	sw	a5,0(a4)
1c00a3ba:	6705                	lui	a4,0x1
1c00a3bc:	5717b7b7          	lui	a5,0x5717b
1c00a3c0:	b3370713          	addi	a4,a4,-1229 # b33 <__CTOR_LIST__-0x1bfff4d1>
1c00a3c4:	970a                	add	a4,a4,sp
1c00a3c6:	c5a78793          	addi	a5,a5,-934 # 5717ac5a <__l2_shared_end+0x3b16ac5a>
1c00a3ca:	c31c                	sw	a5,0(a4)
1c00a3cc:	6705                	lui	a4,0x1
1c00a3ce:	324587b7          	lui	a5,0x32458
1c00a3d2:	b3770713          	addi	a4,a4,-1225 # b37 <__CTOR_LIST__-0x1bfff4cd>
1c00a3d6:	970a                	add	a4,a4,sp
1c00a3d8:	16378793          	addi	a5,a5,355 # 32458163 <__l2_shared_end+0x16448163>
1c00a3dc:	c31c                	sw	a5,0(a4)
1c00a3de:	6705                	lui	a4,0x1
1c00a3e0:	890357b7          	lui	a5,0x89035
1c00a3e4:	b3b70713          	addi	a4,a4,-1221 # b3b <__CTOR_LIST__-0x1bfff4c9>
1c00a3e8:	970a                	add	a4,a4,sp
1c00a3ea:	62378793          	addi	a5,a5,1571 # 89035623 <pulp__FC+0x89035624>
1c00a3ee:	c31c                	sw	a5,0(a4)
1c00a3f0:	6705                	lui	a4,0x1
1c00a3f2:	ab00a7b7          	lui	a5,0xab00a
1c00a3f6:	b3f70713          	addi	a4,a4,-1217 # b3f <__CTOR_LIST__-0x1bfff4c5>
1c00a3fa:	970a                	add	a4,a4,sp
1c00a3fc:	24378793          	addi	a5,a5,579 # ab00a243 <pulp__FC+0xab00a244>
1c00a400:	c31c                	sw	a5,0(a4)
1c00a402:	6705                	lui	a4,0x1
1c00a404:	a317e7b7          	lui	a5,0xa317e
1c00a408:	b4370713          	addi	a4,a4,-1213 # b43 <__CTOR_LIST__-0x1bfff4c1>
1c00a40c:	970a                	add	a4,a4,sp
1c00a40e:	48278793          	addi	a5,a5,1154 # a317e482 <pulp__FC+0xa317e483>
1c00a412:	c31c                	sw	a5,0(a4)
1c00a414:	6705                	lui	a4,0x1
1c00a416:	dea7f7b7          	lui	a5,0xdea7f
1c00a41a:	b4770713          	addi	a4,a4,-1209 # b47 <__CTOR_LIST__-0x1bfff4bd>
1c00a41e:	970a                	add	a4,a4,sp
1c00a420:	a5478793          	addi	a5,a5,-1452 # dea7ea54 <pulp__FC+0xdea7ea55>
1c00a424:	c31c                	sw	a5,0(a4)
1c00a426:	6705                	lui	a4,0x1
1c00a428:	2b4557b7          	lui	a5,0x2b455
1c00a42c:	b4b70713          	addi	a4,a4,-1205 # b4b <__CTOR_LIST__-0x1bfff4b9>
1c00a430:	970a                	add	a4,a4,sp
1c00a432:	0f978793          	addi	a5,a5,249 # 2b4550f9 <__l2_shared_end+0xf4450f9>
1c00a436:	c31c                	sw	a5,0(a4)
1c00a438:	6705                	lui	a4,0x1
1c00a43a:	33e8d7b7          	lui	a5,0x33e8d
1c00a43e:	b4f70713          	addi	a4,a4,-1201 # b4f <__CTOR_LIST__-0x1bfff4b5>
1c00a442:	970a                	add	a4,a4,sp
1c00a444:	e6778793          	addi	a5,a5,-409 # 33e8ce67 <__l2_shared_end+0x17e7ce67>
1c00a448:	c31c                	sw	a5,0(a4)
1c00a44a:	6705                	lui	a4,0x1
1c00a44c:	fb1667b7          	lui	a5,0xfb166
1c00a450:	b5370713          	addi	a4,a4,-1197 # b53 <__CTOR_LIST__-0x1bfff4b1>
1c00a454:	970a                	add	a4,a4,sp
1c00a456:	7fd78793          	addi	a5,a5,2045 # fb1667fd <pulp__FC+0xfb1667fe>
1c00a45a:	c31c                	sw	a5,0(a4)
1c00a45c:	6705                	lui	a4,0x1
1c00a45e:	26c097b7          	lui	a5,0x26c09
1c00a462:	b5770713          	addi	a4,a4,-1193 # b57 <__CTOR_LIST__-0x1bfff4ad>
1c00a466:	970a                	add	a4,a4,sp
1c00a468:	1a678793          	addi	a5,a5,422 # 26c091a6 <__l2_shared_end+0xabf91a6>
1c00a46c:	c31c                	sw	a5,0(a4)
1c00a46e:	6705                	lui	a4,0x1
1c00a470:	4c65e7b7          	lui	a5,0x4c65e
1c00a474:	b5b70713          	addi	a4,a4,-1189 # b5b <__CTOR_LIST__-0x1bfff4a9>
1c00a478:	970a                	add	a4,a4,sp
1c00a47a:	fc578793          	addi	a5,a5,-59 # 4c65dfc5 <__l2_shared_end+0x3064dfc5>
1c00a47e:	c31c                	sw	a5,0(a4)
1c00a480:	6705                	lui	a4,0x1
1c00a482:	a017f7b7          	lui	a5,0xa017f
1c00a486:	b5f70713          	addi	a4,a4,-1185 # b5f <__CTOR_LIST__-0x1bfff4a5>
1c00a48a:	970a                	add	a4,a4,sp
1c00a48c:	42178793          	addi	a5,a5,1057 # a017f421 <pulp__FC+0xa017f422>
1c00a490:	c31c                	sw	a5,0(a4)
1c00a492:	6705                	lui	a4,0x1
1c00a494:	4abe57b7          	lui	a5,0x4abe5
1c00a498:	b6370713          	addi	a4,a4,-1181 # b63 <__CTOR_LIST__-0x1bfff4a1>
1c00a49c:	970a                	add	a4,a4,sp
1c00a49e:	ba278793          	addi	a5,a5,-1118 # 4abe4ba2 <__l2_shared_end+0x2ebd4ba2>
1c00a4a2:	c31c                	sw	a5,0(a4)
1c00a4a4:	6705                	lui	a4,0x1
1c00a4a6:	c6c397b7          	lui	a5,0xc6c39
1c00a4aa:	b6770713          	addi	a4,a4,-1177 # b67 <__CTOR_LIST__-0x1bfff49d>
1c00a4ae:	970a                	add	a4,a4,sp
1c00a4b0:	44a78793          	addi	a5,a5,1098 # c6c3944a <pulp__FC+0xc6c3944b>
1c00a4b4:	c31c                	sw	a5,0(a4)
1c00a4b6:	6705                	lui	a4,0x1
1c00a4b8:	d1c0d7b7          	lui	a5,0xd1c0d
1c00a4bc:	b6b70713          	addi	a4,a4,-1173 # b6b <__CTOR_LIST__-0x1bfff499>
1c00a4c0:	970a                	add	a4,a4,sp
1c00a4c2:	54678793          	addi	a5,a5,1350 # d1c0d546 <pulp__FC+0xd1c0d547>
1c00a4c6:	c31c                	sw	a5,0(a4)
1c00a4c8:	6705                	lui	a4,0x1
1c00a4ca:	5bd8a7b7          	lui	a5,0x5bd8a
1c00a4ce:	b6f70713          	addi	a4,a4,-1169 # b6f <__CTOR_LIST__-0x1bfff495>
1c00a4d2:	970a                	add	a4,a4,sp
1c00a4d4:	3a878793          	addi	a5,a5,936 # 5bd8a3a8 <__l2_shared_end+0x3fd7a3a8>
1c00a4d8:	c31c                	sw	a5,0(a4)
1c00a4da:	6705                	lui	a4,0x1
1c00a4dc:	2a2257b7          	lui	a5,0x2a225
1c00a4e0:	b7370713          	addi	a4,a4,-1165 # b73 <__CTOR_LIST__-0x1bfff491>
1c00a4e4:	970a                	add	a4,a4,sp
1c00a4e6:	92778793          	addi	a5,a5,-1753 # 2a224927 <__l2_shared_end+0xe214927>
1c00a4ea:	c31c                	sw	a5,0(a4)
1c00a4ec:	6705                	lui	a4,0x1
1c00a4ee:	0f0b07b7          	lui	a5,0xf0b0
1c00a4f2:	b7770713          	addi	a4,a4,-1161 # b77 <__CTOR_LIST__-0x1bfff48d>
1c00a4f6:	970a                	add	a4,a4,sp
1c00a4f8:	7fe78793          	addi	a5,a5,2046 # f0b07fe <__CTOR_LIST__-0xcf4f806>
1c00a4fc:	c31c                	sw	a5,0(a4)
1c00a4fe:	6705                	lui	a4,0x1
1c00a500:	899467b7          	lui	a5,0x89946
1c00a504:	b7b70713          	addi	a4,a4,-1157 # b7b <__CTOR_LIST__-0x1bfff489>
1c00a508:	970a                	add	a4,a4,sp
1c00a50a:	c0178793          	addi	a5,a5,-1023 # 89945c01 <pulp__FC+0x89945c02>
1c00a50e:	c31c                	sw	a5,0(a4)
1c00a510:	6705                	lui	a4,0x1
1c00a512:	b619e7b7          	lui	a5,0xb619e
1c00a516:	b7f70713          	addi	a4,a4,-1153 # b7f <__CTOR_LIST__-0x1bfff485>
1c00a51a:	970a                	add	a4,a4,sp
1c00a51c:	91b78793          	addi	a5,a5,-1765 # b619d91b <pulp__FC+0xb619d91c>
1c00a520:	c31c                	sw	a5,0(a4)
1c00a522:	6705                	lui	a4,0x1
1c00a524:	7521f7b7          	lui	a5,0x7521f
1c00a528:	b8370713          	addi	a4,a4,-1149 # b83 <__CTOR_LIST__-0x1bfff481>
1c00a52c:	970a                	add	a4,a4,sp
1c00a52e:	15878793          	addi	a5,a5,344 # 7521f158 <__l2_shared_end+0x5920f158>
1c00a532:	c31c                	sw	a5,0(a4)
1c00a534:	6705                	lui	a4,0x1
1c00a536:	72d7d7b7          	lui	a5,0x72d7d
1c00a53a:	b8770713          	addi	a4,a4,-1145 # b87 <__CTOR_LIST__-0x1bfff47d>
1c00a53e:	970a                	add	a4,a4,sp
1c00a540:	c5578793          	addi	a5,a5,-939 # 72d7cc55 <__l2_shared_end+0x56d6cc55>
1c00a544:	c31c                	sw	a5,0(a4)
1c00a546:	6705                	lui	a4,0x1
1c00a548:	590b97b7          	lui	a5,0x590b9
1c00a54c:	b8b70713          	addi	a4,a4,-1141 # b8b <__CTOR_LIST__-0x1bfff479>
1c00a550:	970a                	add	a4,a4,sp
1c00a552:	29d78793          	addi	a5,a5,669 # 590b929d <__l2_shared_end+0x3d0a929d>
1c00a556:	c31c                	sw	a5,0(a4)
1c00a558:	6705                	lui	a4,0x1
1c00a55a:	ca31f7b7          	lui	a5,0xca31f
1c00a55e:	b8f70713          	addi	a4,a4,-1137 # b8f <__CTOR_LIST__-0x1bfff475>
1c00a562:	970a                	add	a4,a4,sp
1c00a564:	63f78793          	addi	a5,a5,1599 # ca31f63f <pulp__FC+0xca31f640>
1c00a568:	c31c                	sw	a5,0(a4)
1c00a56a:	6705                	lui	a4,0x1
1c00a56c:	e92d87b7          	lui	a5,0xe92d8
1c00a570:	b9370713          	addi	a4,a4,-1133 # b93 <__CTOR_LIST__-0x1bfff471>
1c00a574:	970a                	add	a4,a4,sp
1c00a576:	ec078793          	addi	a5,a5,-320 # e92d7ec0 <pulp__FC+0xe92d7ec1>
1c00a57a:	c31c                	sw	a5,0(a4)
1c00a57c:	6705                	lui	a4,0x1
1c00a57e:	bed6d7b7          	lui	a5,0xbed6d
1c00a582:	b9770713          	addi	a4,a4,-1129 # b97 <__CTOR_LIST__-0x1bfff46d>
1c00a586:	970a                	add	a4,a4,sp
1c00a588:	d5378793          	addi	a5,a5,-685 # bed6cd53 <pulp__FC+0xbed6cd54>
1c00a58c:	c31c                	sw	a5,0(a4)
1c00a58e:	6705                	lui	a4,0x1
1c00a590:	581667b7          	lui	a5,0x58166
1c00a594:	b9b70713          	addi	a4,a4,-1125 # b9b <__CTOR_LIST__-0x1bfff469>
1c00a598:	970a                	add	a4,a4,sp
1c00a59a:	1a078793          	addi	a5,a5,416 # 581661a0 <__l2_shared_end+0x3c1561a0>
1c00a59e:	c31c                	sw	a5,0(a4)
1c00a5a0:	6705                	lui	a4,0x1
1c00a5a2:	b8fda7b7          	lui	a5,0xb8fda
1c00a5a6:	b9f70713          	addi	a4,a4,-1121 # b9f <__CTOR_LIST__-0x1bfff465>
1c00a5aa:	970a                	add	a4,a4,sp
1c00a5ac:	29378793          	addi	a5,a5,659 # b8fda293 <pulp__FC+0xb8fda294>
1c00a5b0:	c31c                	sw	a5,0(a4)
1c00a5b2:	6705                	lui	a4,0x1
1c00a5b4:	080a27b7          	lui	a5,0x80a2
1c00a5b8:	ba370713          	addi	a4,a4,-1117 # ba3 <__CTOR_LIST__-0x1bfff461>
1c00a5bc:	970a                	add	a4,a4,sp
1c00a5be:	97978793          	addi	a5,a5,-1671 # 80a1979 <__CTOR_LIST__-0x13f5e68b>
1c00a5c2:	c31c                	sw	a5,0(a4)
1c00a5c4:	6705                	lui	a4,0x1
1c00a5c6:	a69647b7          	lui	a5,0xa6964
1c00a5ca:	ba770713          	addi	a4,a4,-1113 # ba7 <__CTOR_LIST__-0x1bfff45d>
1c00a5ce:	970a                	add	a4,a4,sp
1c00a5d0:	c3478793          	addi	a5,a5,-972 # a6963c34 <pulp__FC+0xa6963c35>
1c00a5d4:	c31c                	sw	a5,0(a4)
1c00a5d6:	6705                	lui	a4,0x1
1c00a5d8:	2676d7b7          	lui	a5,0x2676d
1c00a5dc:	bab70713          	addi	a4,a4,-1109 # bab <__CTOR_LIST__-0x1bfff459>
1c00a5e0:	970a                	add	a4,a4,sp
1c00a5e2:	acc78793          	addi	a5,a5,-1332 # 2676cacc <__l2_shared_end+0xa75cacc>
1c00a5e6:	c31c                	sw	a5,0(a4)
1c00a5e8:	6705                	lui	a4,0x1
1c00a5ea:	2bd247b7          	lui	a5,0x2bd24
1c00a5ee:	baf70713          	addi	a4,a4,-1105 # baf <__CTOR_LIST__-0x1bfff455>
1c00a5f2:	970a                	add	a4,a4,sp
1c00a5f4:	84978793          	addi	a5,a5,-1975 # 2bd23849 <__l2_shared_end+0xfd13849>
1c00a5f8:	c31c                	sw	a5,0(a4)
1c00a5fa:	6705                	lui	a4,0x1
1c00a5fc:	024817b7          	lui	a5,0x2481
1c00a600:	bb370713          	addi	a4,a4,-1101 # bb3 <__CTOR_LIST__-0x1bfff451>
1c00a604:	970a                	add	a4,a4,sp
1c00a606:	62778793          	addi	a5,a5,1575 # 2481627 <__CTOR_LIST__-0x19b7e9dd>
1c00a60a:	c31c                	sw	a5,0(a4)
1c00a60c:	6705                	lui	a4,0x1
1c00a60e:	9b80d7b7          	lui	a5,0x9b80d
1c00a612:	bb770713          	addi	a4,a4,-1097 # bb7 <__CTOR_LIST__-0x1bfff44d>
1c00a616:	970a                	add	a4,a4,sp
1c00a618:	f6178793          	addi	a5,a5,-159 # 9b80cf61 <pulp__FC+0x9b80cf62>
1c00a61c:	c31c                	sw	a5,0(a4)
1c00a61e:	6705                	lui	a4,0x1
1c00a620:	9703b7b7          	lui	a5,0x9703b
1c00a624:	bbb70713          	addi	a4,a4,-1093 # bbb <__CTOR_LIST__-0x1bfff449>
1c00a628:	970a                	add	a4,a4,sp
1c00a62a:	88178793          	addi	a5,a5,-1919 # 9703a881 <pulp__FC+0x9703a882>
1c00a62e:	c31c                	sw	a5,0(a4)
1c00a630:	6705                	lui	a4,0x1
1c00a632:	b1ccb7b7          	lui	a5,0xb1ccb
1c00a636:	bbf70713          	addi	a4,a4,-1089 # bbf <__CTOR_LIST__-0x1bfff445>
1c00a63a:	970a                	add	a4,a4,sp
1c00a63c:	36878793          	addi	a5,a5,872 # b1ccb368 <pulp__FC+0xb1ccb369>
1c00a640:	c31c                	sw	a5,0(a4)
1c00a642:	6705                	lui	a4,0x1
1c00a644:	5cfa17b7          	lui	a5,0x5cfa1
1c00a648:	bc370713          	addi	a4,a4,-1085 # bc3 <__CTOR_LIST__-0x1bfff441>
1c00a64c:	970a                	add	a4,a4,sp
1c00a64e:	0f978793          	addi	a5,a5,249 # 5cfa10f9 <__l2_shared_end+0x40f910f9>
1c00a652:	c31c                	sw	a5,0(a4)
1c00a654:	6705                	lui	a4,0x1
1c00a656:	5cb207b7          	lui	a5,0x5cb20
1c00a65a:	bc770713          	addi	a4,a4,-1081 # bc7 <__CTOR_LIST__-0x1bfff43d>
1c00a65e:	970a                	add	a4,a4,sp
1c00a660:	35e78793          	addi	a5,a5,862 # 5cb2035e <__l2_shared_end+0x40b1035e>
1c00a664:	c31c                	sw	a5,0(a4)
1c00a666:	6705                	lui	a4,0x1
1c00a668:	8f4187b7          	lui	a5,0x8f418
1c00a66c:	bcb70713          	addi	a4,a4,-1077 # bcb <__CTOR_LIST__-0x1bfff439>
1c00a670:	970a                	add	a4,a4,sp
1c00a672:	beb78793          	addi	a5,a5,-1045 # 8f417beb <pulp__FC+0x8f417bec>
1c00a676:	c31c                	sw	a5,0(a4)
1c00a678:	6705                	lui	a4,0x1
1c00a67a:	8c9ba7b7          	lui	a5,0x8c9ba
1c00a67e:	bcf70713          	addi	a4,a4,-1073 # bcf <__CTOR_LIST__-0x1bfff435>
1c00a682:	970a                	add	a4,a4,sp
1c00a684:	35b78793          	addi	a5,a5,859 # 8c9ba35b <pulp__FC+0x8c9ba35c>
1c00a688:	c31c                	sw	a5,0(a4)
1c00a68a:	6705                	lui	a4,0x1
1c00a68c:	926347b7          	lui	a5,0x92634
1c00a690:	bd370713          	addi	a4,a4,-1069 # bd3 <__CTOR_LIST__-0x1bfff431>
1c00a694:	970a                	add	a4,a4,sp
1c00a696:	e7178793          	addi	a5,a5,-399 # 92633e71 <pulp__FC+0x92633e72>
1c00a69a:	c31c                	sw	a5,0(a4)
1c00a69c:	6705                	lui	a4,0x1
1c00a69e:	e15867b7          	lui	a5,0xe1586
1c00a6a2:	bd770713          	addi	a4,a4,-1065 # bd7 <__CTOR_LIST__-0x1bfff42d>
1c00a6a6:	970a                	add	a4,a4,sp
1c00a6a8:	b0478793          	addi	a5,a5,-1276 # e1585b04 <pulp__FC+0xe1585b05>
1c00a6ac:	c31c                	sw	a5,0(a4)
1c00a6ae:	6705                	lui	a4,0x1
1c00a6b0:	a47337b7          	lui	a5,0xa4733
1c00a6b4:	bdb70713          	addi	a4,a4,-1061 # bdb <__CTOR_LIST__-0x1bfff429>
1c00a6b8:	970a                	add	a4,a4,sp
1c00a6ba:	dc978793          	addi	a5,a5,-567 # a4732dc9 <pulp__FC+0xa4732dca>
1c00a6be:	c31c                	sw	a5,0(a4)
1c00a6c0:	6705                	lui	a4,0x1
1c00a6c2:	2880e7b7          	lui	a5,0x2880e
1c00a6c6:	bdf70713          	addi	a4,a4,-1057 # bdf <__CTOR_LIST__-0x1bfff425>
1c00a6ca:	970a                	add	a4,a4,sp
1c00a6cc:	14e78793          	addi	a5,a5,334 # 2880e14e <__l2_shared_end+0xc7fe14e>
1c00a6d0:	c31c                	sw	a5,0(a4)
1c00a6d2:	6705                	lui	a4,0x1
1c00a6d4:	74b4b7b7          	lui	a5,0x74b4b
1c00a6d8:	be370713          	addi	a4,a4,-1053 # be3 <__CTOR_LIST__-0x1bfff421>
1c00a6dc:	970a                	add	a4,a4,sp
1c00a6de:	22e78793          	addi	a5,a5,558 # 74b4b22e <__l2_shared_end+0x58b3b22e>
1c00a6e2:	c31c                	sw	a5,0(a4)
1c00a6e4:	6705                	lui	a4,0x1
1c00a6e6:	f44c47b7          	lui	a5,0xf44c4
1c00a6ea:	be770713          	addi	a4,a4,-1049 # be7 <__CTOR_LIST__-0x1bfff41d>
1c00a6ee:	970a                	add	a4,a4,sp
1c00a6f0:	6d378793          	addi	a5,a5,1747 # f44c46d3 <pulp__FC+0xf44c46d4>
1c00a6f4:	c31c                	sw	a5,0(a4)
1c00a6f6:	6705                	lui	a4,0x1
1c00a6f8:	af2357b7          	lui	a5,0xaf235
1c00a6fc:	beb70713          	addi	a4,a4,-1045 # beb <__CTOR_LIST__-0x1bfff419>
1c00a700:	970a                	add	a4,a4,sp
1c00a702:	8aa78793          	addi	a5,a5,-1878 # af2348aa <pulp__FC+0xaf2348ab>
1c00a706:	c31c                	sw	a5,0(a4)
1c00a708:	6705                	lui	a4,0x1
1c00a70a:	4a5e37b7          	lui	a5,0x4a5e3
1c00a70e:	bef70713          	addi	a4,a4,-1041 # bef <__CTOR_LIST__-0x1bfff415>
1c00a712:	970a                	add	a4,a4,sp
1c00a714:	8cb78793          	addi	a5,a5,-1845 # 4a5e28cb <__l2_shared_end+0x2e5d28cb>
1c00a718:	c31c                	sw	a5,0(a4)
1c00a71a:	6705                	lui	a4,0x1
1c00a71c:	a7a897b7          	lui	a5,0xa7a89
1c00a720:	bf370713          	addi	a4,a4,-1037 # bf3 <__CTOR_LIST__-0x1bfff411>
1c00a724:	970a                	add	a4,a4,sp
1c00a726:	b0178793          	addi	a5,a5,-1279 # a7a88b01 <pulp__FC+0xa7a88b02>
1c00a72a:	c31c                	sw	a5,0(a4)
1c00a72c:	6705                	lui	a4,0x1
1c00a72e:	0d9777b7          	lui	a5,0xd977
1c00a732:	bf770713          	addi	a4,a4,-1033 # bf7 <__CTOR_LIST__-0x1bfff40d>
1c00a736:	970a                	add	a4,a4,sp
1c00a738:	6c478793          	addi	a5,a5,1732 # d9776c4 <__CTOR_LIST__-0xe688940>
1c00a73c:	c31c                	sw	a5,0(a4)
1c00a73e:	6705                	lui	a4,0x1
1c00a740:	e59de7b7          	lui	a5,0xe59de
1c00a744:	bfb70713          	addi	a4,a4,-1029 # bfb <__CTOR_LIST__-0x1bfff409>
1c00a748:	970a                	add	a4,a4,sp
1c00a74a:	2a078793          	addi	a5,a5,672 # e59de2a0 <pulp__FC+0xe59de2a1>
1c00a74e:	c31c                	sw	a5,0(a4)
1c00a750:	6705                	lui	a4,0x1
1c00a752:	68f0a7b7          	lui	a5,0x68f0a
1c00a756:	bff70713          	addi	a4,a4,-1025 # bff <__CTOR_LIST__-0x1bfff405>
1c00a75a:	970a                	add	a4,a4,sp
1c00a75c:	9f678793          	addi	a5,a5,-1546 # 68f099f6 <__l2_shared_end+0x4cef99f6>
1c00a760:	c31c                	sw	a5,0(a4)
1c00a762:	6705                	lui	a4,0x1
1c00a764:	366a67b7          	lui	a5,0x366a6
1c00a768:	c0370713          	addi	a4,a4,-1021 # c03 <__CTOR_LIST__-0x1bfff401>
1c00a76c:	970a                	add	a4,a4,sp
1c00a76e:	d4678793          	addi	a5,a5,-698 # 366a5d46 <__l2_shared_end+0x1a695d46>
1c00a772:	c31c                	sw	a5,0(a4)
1c00a774:	6705                	lui	a4,0x1
1c00a776:	1f3517b7          	lui	a5,0x1f351
1c00a77a:	c0770713          	addi	a4,a4,-1017 # c07 <__CTOR_LIST__-0x1bfff3fd>
1c00a77e:	970a                	add	a4,a4,sp
1c00a780:	2d078793          	addi	a5,a5,720 # 1f3512d0 <__l2_shared_end+0x33412d0>
1c00a784:	c31c                	sw	a5,0(a4)
1c00a786:	6705                	lui	a4,0x1
1c00a788:	7c5aa7b7          	lui	a5,0x7c5aa
1c00a78c:	c0b70713          	addi	a4,a4,-1013 # c0b <__CTOR_LIST__-0x1bfff3f9>
1c00a790:	970a                	add	a4,a4,sp
1c00a792:	94678793          	addi	a5,a5,-1722 # 7c5a9946 <__l2_shared_end+0x60599946>
1c00a796:	c31c                	sw	a5,0(a4)
1c00a798:	6705                	lui	a4,0x1
1c00a79a:	ae3a47b7          	lui	a5,0xae3a4
1c00a79e:	c0f70713          	addi	a4,a4,-1009 # c0f <__CTOR_LIST__-0x1bfff3f5>
1c00a7a2:	970a                	add	a4,a4,sp
1c00a7a4:	a3078793          	addi	a5,a5,-1488 # ae3a3a30 <pulp__FC+0xae3a3a31>
1c00a7a8:	c31c                	sw	a5,0(a4)
1c00a7aa:	6705                	lui	a4,0x1
1c00a7ac:	bdafa7b7          	lui	a5,0xbdafa
1c00a7b0:	c1370713          	addi	a4,a4,-1005 # c13 <__CTOR_LIST__-0x1bfff3f1>
1c00a7b4:	970a                	add	a4,a4,sp
1c00a7b6:	72678793          	addi	a5,a5,1830 # bdafa726 <pulp__FC+0xbdafa727>
1c00a7ba:	c31c                	sw	a5,0(a4)
1c00a7bc:	6705                	lui	a4,0x1
1c00a7be:	60ed67b7          	lui	a5,0x60ed6
1c00a7c2:	c1770713          	addi	a4,a4,-1001 # c17 <__CTOR_LIST__-0x1bfff3ed>
1c00a7c6:	970a                	add	a4,a4,sp
1c00a7c8:	29978793          	addi	a5,a5,665 # 60ed6299 <__l2_shared_end+0x44ec6299>
1c00a7cc:	c31c                	sw	a5,0(a4)
1c00a7ce:	6705                	lui	a4,0x1
1c00a7d0:	5be9e7b7          	lui	a5,0x5be9e
1c00a7d4:	c1b70713          	addi	a4,a4,-997 # c1b <__CTOR_LIST__-0x1bfff3e9>
1c00a7d8:	970a                	add	a4,a4,sp
1c00a7da:	da978793          	addi	a5,a5,-599 # 5be9dda9 <__l2_shared_end+0x3fe8dda9>
1c00a7de:	c31c                	sw	a5,0(a4)
1c00a7e0:	6705                	lui	a4,0x1
1c00a7e2:	c1f70713          	addi	a4,a4,-993 # c1f <__CTOR_LIST__-0x1bfff3e5>
1c00a7e6:	970a                	add	a4,a4,sp
1c00a7e8:	84b00793          	li	a5,-1973
1c00a7ec:	00f71023          	sh	a5,0(a4)
1c00a7f0:	6705                	lui	a4,0x1
1c00a7f2:	c2170713          	addi	a4,a4,-991 # c21 <__CTOR_LIST__-0x1bfff3e3>
1c00a7f6:	970a                	add	a4,a4,sp
1c00a7f8:	fac00793          	li	a5,-84
1c00a7fc:	00f70023          	sb	a5,0(a4)
1c00a800:	6705                	lui	a4,0x1
1c00a802:	3c4947b7          	lui	a5,0x3c494
1c00a806:	c2270713          	addi	a4,a4,-990 # c22 <__CTOR_LIST__-0x1bfff3e2>
1c00a80a:	970a                	add	a4,a4,sp
1c00a80c:	77a78793          	addi	a5,a5,1914 # 3c49477a <__l2_shared_end+0x2048477a>
1c00a810:	c31c                	sw	a5,0(a4)
1c00a812:	6705                	lui	a4,0x1
1c00a814:	f2e327b7          	lui	a5,0xf2e32
1c00a818:	c2670713          	addi	a4,a4,-986 # c26 <__CTOR_LIST__-0x1bfff3de>
1c00a81c:	970a                	add	a4,a4,sp
1c00a81e:	ef678793          	addi	a5,a5,-266 # f2e31ef6 <pulp__FC+0xf2e31ef7>
1c00a822:	c31c                	sw	a5,0(a4)
1c00a824:	6705                	lui	a4,0x1
1c00a826:	ce46a7b7          	lui	a5,0xce46a
1c00a82a:	c2a70713          	addi	a4,a4,-982 # c2a <__CTOR_LIST__-0x1bfff3da>
1c00a82e:	970a                	add	a4,a4,sp
1c00a830:	09b78793          	addi	a5,a5,155 # ce46a09b <pulp__FC+0xce46a09c>
1c00a834:	c31c                	sw	a5,0(a4)
1c00a836:	6705                	lui	a4,0x1
1c00a838:	3f76a7b7          	lui	a5,0x3f76a
1c00a83c:	c2e70713          	addi	a4,a4,-978 # c2e <__CTOR_LIST__-0x1bfff3d6>
1c00a840:	970a                	add	a4,a4,sp
1c00a842:	11578793          	addi	a5,a5,277 # 3f76a115 <__l2_shared_end+0x2375a115>
1c00a846:	c31c                	sw	a5,0(a4)
1c00a848:	6705                	lui	a4,0x1
1c00a84a:	bafa27b7          	lui	a5,0xbafa2
1c00a84e:	c3270713          	addi	a4,a4,-974 # c32 <__CTOR_LIST__-0x1bfff3d2>
1c00a852:	970a                	add	a4,a4,sp
1c00a854:	10c78793          	addi	a5,a5,268 # bafa210c <pulp__FC+0xbafa210d>
1c00a858:	c31c                	sw	a5,0(a4)
1c00a85a:	6705                	lui	a4,0x1
1c00a85c:	ad0067b7          	lui	a5,0xad006
1c00a860:	c3670713          	addi	a4,a4,-970 # c36 <__CTOR_LIST__-0x1bfff3ce>
1c00a864:	970a                	add	a4,a4,sp
1c00a866:	72478793          	addi	a5,a5,1828 # ad006724 <pulp__FC+0xad006725>
1c00a86a:	c31c                	sw	a5,0(a4)
1c00a86c:	6705                	lui	a4,0x1
1c00a86e:	adb017b7          	lui	a5,0xadb01
1c00a872:	c3a70713          	addi	a4,a4,-966 # c3a <__CTOR_LIST__-0x1bfff3ca>
1c00a876:	970a                	add	a4,a4,sp
1c00a878:	95478793          	addi	a5,a5,-1708 # adb00954 <pulp__FC+0xadb00955>
1c00a87c:	c31c                	sw	a5,0(a4)
1c00a87e:	6705                	lui	a4,0x1
1c00a880:	7997d7b7          	lui	a5,0x7997d
1c00a884:	c3e70713          	addi	a4,a4,-962 # c3e <__CTOR_LIST__-0x1bfff3c6>
1c00a888:	970a                	add	a4,a4,sp
1c00a88a:	cdc78793          	addi	a5,a5,-804 # 7997ccdc <__l2_shared_end+0x5d96ccdc>
1c00a88e:	c31c                	sw	a5,0(a4)
1c00a890:	6705                	lui	a4,0x1
1c00a892:	45fcd7b7          	lui	a5,0x45fcd
1c00a896:	c4270713          	addi	a4,a4,-958 # c42 <__CTOR_LIST__-0x1bfff3c2>
1c00a89a:	970a                	add	a4,a4,sp
1c00a89c:	1a478793          	addi	a5,a5,420 # 45fcd1a4 <__l2_shared_end+0x29fbd1a4>
1c00a8a0:	c31c                	sw	a5,0(a4)
1c00a8a2:	6705                	lui	a4,0x1
1c00a8a4:	041f27b7          	lui	a5,0x41f2
1c00a8a8:	c4670713          	addi	a4,a4,-954 # c46 <__CTOR_LIST__-0x1bfff3be>
1c00a8ac:	970a                	add	a4,a4,sp
1c00a8ae:	6ec78793          	addi	a5,a5,1772 # 41f26ec <__CTOR_LIST__-0x17e0d918>
1c00a8b2:	c31c                	sw	a5,0(a4)
1c00a8b4:	6705                	lui	a4,0x1
1c00a8b6:	aa9da7b7          	lui	a5,0xaa9da
1c00a8ba:	c4a70713          	addi	a4,a4,-950 # c4a <__CTOR_LIST__-0x1bfff3ba>
1c00a8be:	970a                	add	a4,a4,sp
1c00a8c0:	c8b78793          	addi	a5,a5,-885 # aa9d9c8b <pulp__FC+0xaa9d9c8c>
1c00a8c4:	c31c                	sw	a5,0(a4)
1c00a8c6:	6705                	lui	a4,0x1
1c00a8c8:	22ecd7b7          	lui	a5,0x22ecd
1c00a8cc:	c4e70713          	addi	a4,a4,-946 # c4e <__CTOR_LIST__-0x1bfff3b6>
1c00a8d0:	970a                	add	a4,a4,sp
1c00a8d2:	93878793          	addi	a5,a5,-1736 # 22ecc938 <__l2_shared_end+0x6ebc938>
1c00a8d6:	c31c                	sw	a5,0(a4)
1c00a8d8:	6705                	lui	a4,0x1
1c00a8da:	e80567b7          	lui	a5,0xe8056
1c00a8de:	c5270713          	addi	a4,a4,-942 # c52 <__CTOR_LIST__-0x1bfff3b2>
1c00a8e2:	970a                	add	a4,a4,sp
1c00a8e4:	58b78793          	addi	a5,a5,1419 # e805658b <pulp__FC+0xe805658c>
1c00a8e8:	c31c                	sw	a5,0(a4)
1c00a8ea:	6705                	lui	a4,0x1
1c00a8ec:	b32657b7          	lui	a5,0xb3265
1c00a8f0:	c5670713          	addi	a4,a4,-938 # c56 <__CTOR_LIST__-0x1bfff3ae>
1c00a8f4:	970a                	add	a4,a4,sp
1c00a8f6:	29078793          	addi	a5,a5,656 # b3265290 <pulp__FC+0xb3265291>
1c00a8fa:	c31c                	sw	a5,0(a4)
1c00a8fc:	6705                	lui	a4,0x1
1c00a8fe:	208087b7          	lui	a5,0x20808
1c00a902:	c5a70713          	addi	a4,a4,-934 # c5a <__CTOR_LIST__-0x1bfff3aa>
1c00a906:	970a                	add	a4,a4,sp
1c00a908:	68478793          	addi	a5,a5,1668 # 20808684 <__l2_shared_end+0x47f8684>
1c00a90c:	c31c                	sw	a5,0(a4)
1c00a90e:	6705                	lui	a4,0x1
1c00a910:	c8c5c7b7          	lui	a5,0xc8c5c
1c00a914:	c5e70713          	addi	a4,a4,-930 # c5e <__CTOR_LIST__-0x1bfff3a6>
1c00a918:	970a                	add	a4,a4,sp
1c00a91a:	25978793          	addi	a5,a5,601 # c8c5c259 <pulp__FC+0xc8c5c25a>
1c00a91e:	c31c                	sw	a5,0(a4)
1c00a920:	6705                	lui	a4,0x1
1c00a922:	065607b7          	lui	a5,0x6560
1c00a926:	c6270713          	addi	a4,a4,-926 # c62 <__CTOR_LIST__-0x1bfff3a2>
1c00a92a:	970a                	add	a4,a4,sp
1c00a92c:	19678793          	addi	a5,a5,406 # 6560196 <__CTOR_LIST__-0x15a9fe6e>
1c00a930:	c31c                	sw	a5,0(a4)
1c00a932:	6705                	lui	a4,0x1
1c00a934:	3713d7b7          	lui	a5,0x3713d
1c00a938:	c6670713          	addi	a4,a4,-922 # c66 <__CTOR_LIST__-0x1bfff39e>
1c00a93c:	970a                	add	a4,a4,sp
1c00a93e:	b3478793          	addi	a5,a5,-1228 # 3713cb34 <__l2_shared_end+0x1b12cb34>
1c00a942:	c31c                	sw	a5,0(a4)
1c00a944:	6705                	lui	a4,0x1
1c00a946:	655337b7          	lui	a5,0x65533
1c00a94a:	c6a70713          	addi	a4,a4,-918 # c6a <__CTOR_LIST__-0x1bfff39a>
1c00a94e:	970a                	add	a4,a4,sp
1c00a950:	1b178793          	addi	a5,a5,433 # 655331b1 <__l2_shared_end+0x495231b1>
1c00a954:	c31c                	sw	a5,0(a4)
1c00a956:	6705                	lui	a4,0x1
1c00a958:	bc4257b7          	lui	a5,0xbc425
1c00a95c:	c6e70713          	addi	a4,a4,-914 # c6e <__CTOR_LIST__-0x1bfff396>
1c00a960:	970a                	add	a4,a4,sp
1c00a962:	81478793          	addi	a5,a5,-2028 # bc424814 <pulp__FC+0xbc424815>
1c00a966:	c31c                	sw	a5,0(a4)
1c00a968:	6705                	lui	a4,0x1
1c00a96a:	2e2967b7          	lui	a5,0x2e296
1c00a96e:	c7270713          	addi	a4,a4,-910 # c72 <__CTOR_LIST__-0x1bfff392>
1c00a972:	970a                	add	a4,a4,sp
1c00a974:	a4078793          	addi	a5,a5,-1472 # 2e295a40 <__l2_shared_end+0x12285a40>
1c00a978:	c31c                	sw	a5,0(a4)
1c00a97a:	6705                	lui	a4,0x1
1c00a97c:	a4af47b7          	lui	a5,0xa4af4
1c00a980:	c7670713          	addi	a4,a4,-906 # c76 <__CTOR_LIST__-0x1bfff38e>
1c00a984:	970a                	add	a4,a4,sp
1c00a986:	c6878793          	addi	a5,a5,-920 # a4af3c68 <pulp__FC+0xa4af3c69>
1c00a98a:	c31c                	sw	a5,0(a4)
1c00a98c:	6705                	lui	a4,0x1
1c00a98e:	942647b7          	lui	a5,0x94264
1c00a992:	c7a70713          	addi	a4,a4,-902 # c7a <__CTOR_LIST__-0x1bfff38a>
1c00a996:	970a                	add	a4,a4,sp
1c00a998:	55178793          	addi	a5,a5,1361 # 94264551 <pulp__FC+0x94264552>
1c00a99c:	c31c                	sw	a5,0(a4)
1c00a99e:	6705                	lui	a4,0x1
1c00a9a0:	68fb57b7          	lui	a5,0x68fb5
1c00a9a4:	c7e70713          	addi	a4,a4,-898 # c7e <__CTOR_LIST__-0x1bfff386>
1c00a9a8:	970a                	add	a4,a4,sp
1c00a9aa:	d5c78793          	addi	a5,a5,-676 # 68fb4d5c <__l2_shared_end+0x4cfa4d5c>
1c00a9ae:	c31c                	sw	a5,0(a4)
1c00a9b0:	6705                	lui	a4,0x1
1c00a9b2:	b8cd37b7          	lui	a5,0xb8cd3
1c00a9b6:	c8270713          	addi	a4,a4,-894 # c82 <__CTOR_LIST__-0x1bfff382>
1c00a9ba:	970a                	add	a4,a4,sp
1c00a9bc:	aee78793          	addi	a5,a5,-1298 # b8cd2aee <pulp__FC+0xb8cd2aef>
1c00a9c0:	c31c                	sw	a5,0(a4)
1c00a9c2:	6705                	lui	a4,0x1
1c00a9c4:	833297b7          	lui	a5,0x83329
1c00a9c8:	c8670713          	addi	a4,a4,-890 # c86 <__CTOR_LIST__-0x1bfff37e>
1c00a9cc:	970a                	add	a4,a4,sp
1c00a9ce:	5b778793          	addi	a5,a5,1463 # 833295b7 <pulp__FC+0x833295b8>
1c00a9d2:	c31c                	sw	a5,0(a4)
1c00a9d4:	6705                	lui	a4,0x1
1c00a9d6:	31d597b7          	lui	a5,0x31d59
1c00a9da:	c8a70713          	addi	a4,a4,-886 # c8a <__CTOR_LIST__-0x1bfff37a>
1c00a9de:	970a                	add	a4,a4,sp
1c00a9e0:	66678793          	addi	a5,a5,1638 # 31d59666 <__l2_shared_end+0x15d49666>
1c00a9e4:	c31c                	sw	a5,0(a4)
1c00a9e6:	6705                	lui	a4,0x1
1c00a9e8:	bd45a7b7          	lui	a5,0xbd45a
1c00a9ec:	c8e70713          	addi	a4,a4,-882 # c8e <__CTOR_LIST__-0x1bfff376>
1c00a9f0:	970a                	add	a4,a4,sp
1c00a9f2:	02578793          	addi	a5,a5,37 # bd45a025 <pulp__FC+0xbd45a026>
1c00a9f6:	c31c                	sw	a5,0(a4)
1c00a9f8:	6705                	lui	a4,0x1
1c00a9fa:	cc3b97b7          	lui	a5,0xcc3b9
1c00a9fe:	c9270713          	addi	a4,a4,-878 # c92 <__CTOR_LIST__-0x1bfff372>
1c00aa02:	970a                	add	a4,a4,sp
1c00aa04:	abb78793          	addi	a5,a5,-1349 # cc3b8abb <pulp__FC+0xcc3b8abc>
1c00aa08:	c31c                	sw	a5,0(a4)
1c00aa0a:	6705                	lui	a4,0x1
1c00aa0c:	3d0827b7          	lui	a5,0x3d082
1c00aa10:	c9670713          	addi	a4,a4,-874 # c96 <__CTOR_LIST__-0x1bfff36e>
1c00aa14:	970a                	add	a4,a4,sp
1c00aa16:	38178793          	addi	a5,a5,897 # 3d082381 <__l2_shared_end+0x21072381>
1c00aa1a:	c31c                	sw	a5,0(a4)
1c00aa1c:	6705                	lui	a4,0x1
1c00aa1e:	5b2c77b7          	lui	a5,0x5b2c7
1c00aa22:	c9a70713          	addi	a4,a4,-870 # c9a <__CTOR_LIST__-0x1bfff36a>
1c00aa26:	970a                	add	a4,a4,sp
1c00aa28:	81e78793          	addi	a5,a5,-2018 # 5b2c681e <__l2_shared_end+0x3f2b681e>
1c00aa2c:	c31c                	sw	a5,0(a4)
1c00aa2e:	6705                	lui	a4,0x1
1c00aa30:	760c87b7          	lui	a5,0x760c8
1c00aa34:	c9e70713          	addi	a4,a4,-866 # c9e <__CTOR_LIST__-0x1bfff366>
1c00aa38:	970a                	add	a4,a4,sp
1c00aa3a:	2d778793          	addi	a5,a5,727 # 760c82d7 <__l2_shared_end+0x5a0b82d7>
1c00aa3e:	c31c                	sw	a5,0(a4)
1c00aa40:	6705                	lui	a4,0x1
1c00aa42:	113557b7          	lui	a5,0x11355
1c00aa46:	ca270713          	addi	a4,a4,-862 # ca2 <__CTOR_LIST__-0x1bfff362>
1c00aa4a:	970a                	add	a4,a4,sp
1c00aa4c:	8c478793          	addi	a5,a5,-1852 # 113548c4 <__CTOR_LIST__-0xacab740>
1c00aa50:	c31c                	sw	a5,0(a4)
1c00aa52:	6705                	lui	a4,0x1
1c00aa54:	694f47b7          	lui	a5,0x694f4
1c00aa58:	ca670713          	addi	a4,a4,-858 # ca6 <__CTOR_LIST__-0x1bfff35e>
1c00aa5c:	970a                	add	a4,a4,sp
1c00aa5e:	75178793          	addi	a5,a5,1873 # 694f4751 <__l2_shared_end+0x4d4e4751>
1c00aa62:	c31c                	sw	a5,0(a4)
1c00aa64:	6705                	lui	a4,0x1
1c00aa66:	70d707b7          	lui	a5,0x70d70
1c00aa6a:	caa70713          	addi	a4,a4,-854 # caa <__CTOR_LIST__-0x1bfff35a>
1c00aa6e:	970a                	add	a4,a4,sp
1c00aa70:	1d678793          	addi	a5,a5,470 # 70d701d6 <__l2_shared_end+0x54d601d6>
1c00aa74:	c31c                	sw	a5,0(a4)
1c00aa76:	6705                	lui	a4,0x1
1c00aa78:	972cc7b7          	lui	a5,0x972cc
1c00aa7c:	cae70713          	addi	a4,a4,-850 # cae <__CTOR_LIST__-0x1bfff356>
1c00aa80:	970a                	add	a4,a4,sp
1c00aa82:	b8d78793          	addi	a5,a5,-1139 # 972cbb8d <pulp__FC+0x972cbb8e>
1c00aa86:	c31c                	sw	a5,0(a4)
1c00aa88:	6705                	lui	a4,0x1
1c00aa8a:	745277b7          	lui	a5,0x74527
1c00aa8e:	cb270713          	addi	a4,a4,-846 # cb2 <__CTOR_LIST__-0x1bfff352>
1c00aa92:	970a                	add	a4,a4,sp
1c00aa94:	79d78793          	addi	a5,a5,1949 # 7452779d <__l2_shared_end+0x5851779d>
1c00aa98:	c31c                	sw	a5,0(a4)
1c00aa9a:	6705                	lui	a4,0x1
1c00aa9c:	2085b7b7          	lui	a5,0x2085b
1c00aaa0:	cb670713          	addi	a4,a4,-842 # cb6 <__CTOR_LIST__-0x1bfff34e>
1c00aaa4:	970a                	add	a4,a4,sp
1c00aaa6:	69478793          	addi	a5,a5,1684 # 2085b694 <__l2_shared_end+0x484b694>
1c00aaaa:	c31c                	sw	a5,0(a4)
1c00aaac:	6705                	lui	a4,0x1
1c00aaae:	c36707b7          	lui	a5,0xc3670
1c00aab2:	cba70713          	addi	a4,a4,-838 # cba <__CTOR_LIST__-0x1bfff34a>
1c00aab6:	970a                	add	a4,a4,sp
1c00aab8:	fa878793          	addi	a5,a5,-88 # c366ffa8 <pulp__FC+0xc366ffa9>
1c00aabc:	c31c                	sw	a5,0(a4)
1c00aabe:	6705                	lui	a4,0x1
1c00aac0:	2aca67b7          	lui	a5,0x2aca6
1c00aac4:	cbe70713          	addi	a4,a4,-834 # cbe <__CTOR_LIST__-0x1bfff346>
1c00aac8:	970a                	add	a4,a4,sp
1c00aaca:	24178793          	addi	a5,a5,577 # 2aca6241 <__l2_shared_end+0xec96241>
1c00aace:	c31c                	sw	a5,0(a4)
1c00aad0:	6705                	lui	a4,0x1
1c00aad2:	a27287b7          	lui	a5,0xa2728
1c00aad6:	cc270713          	addi	a4,a4,-830 # cc2 <__CTOR_LIST__-0x1bfff342>
1c00aada:	970a                	add	a4,a4,sp
1c00aadc:	0ec78793          	addi	a5,a5,236 # a27280ec <pulp__FC+0xa27280ed>
1c00aae0:	c31c                	sw	a5,0(a4)
1c00aae2:	6705                	lui	a4,0x1
1c00aae4:	59f227b7          	lui	a5,0x59f22
1c00aae8:	cc670713          	addi	a4,a4,-826 # cc6 <__CTOR_LIST__-0x1bfff33e>
1c00aaec:	970a                	add	a4,a4,sp
1c00aaee:	fa578793          	addi	a5,a5,-91 # 59f21fa5 <__l2_shared_end+0x3df11fa5>
1c00aaf2:	c31c                	sw	a5,0(a4)
1c00aaf4:	6705                	lui	a4,0x1
1c00aaf6:	e74897b7          	lui	a5,0xe7489
1c00aafa:	cca70713          	addi	a4,a4,-822 # cca <__CTOR_LIST__-0x1bfff33a>
1c00aafe:	970a                	add	a4,a4,sp
1c00ab00:	63878793          	addi	a5,a5,1592 # e7489638 <pulp__FC+0xe7489639>
1c00ab04:	c31c                	sw	a5,0(a4)
1c00ab06:	6705                	lui	a4,0x1
1c00ab08:	6ac197b7          	lui	a5,0x6ac19
1c00ab0c:	cce70713          	addi	a4,a4,-818 # cce <__CTOR_LIST__-0x1bfff336>
1c00ab10:	970a                	add	a4,a4,sp
1c00ab12:	55b78793          	addi	a5,a5,1371 # 6ac1955b <__l2_shared_end+0x4ec0955b>
1c00ab16:	c31c                	sw	a5,0(a4)
1c00ab18:	6705                	lui	a4,0x1
1c00ab1a:	4e6017b7          	lui	a5,0x4e601
1c00ab1e:	cd270713          	addi	a4,a4,-814 # cd2 <__CTOR_LIST__-0x1bfff332>
1c00ab22:	970a                	add	a4,a4,sp
1c00ab24:	4be78793          	addi	a5,a5,1214 # 4e6014be <__l2_shared_end+0x325f14be>
1c00ab28:	c31c                	sw	a5,0(a4)
1c00ab2a:	6705                	lui	a4,0x1
1c00ab2c:	f4bb07b7          	lui	a5,0xf4bb0
1c00ab30:	cd670713          	addi	a4,a4,-810 # cd6 <__CTOR_LIST__-0x1bfff32e>
1c00ab34:	970a                	add	a4,a4,sp
1c00ab36:	adb78793          	addi	a5,a5,-1317 # f4bafadb <pulp__FC+0xf4bafadc>
1c00ab3a:	c31c                	sw	a5,0(a4)
1c00ab3c:	6705                	lui	a4,0x1
1c00ab3e:	7a6ab7b7          	lui	a5,0x7a6ab
1c00ab42:	cda70713          	addi	a4,a4,-806 # cda <__CTOR_LIST__-0x1bfff32a>
1c00ab46:	970a                	add	a4,a4,sp
1c00ab48:	70078793          	addi	a5,a5,1792 # 7a6ab700 <__l2_shared_end+0x5e69b700>
1c00ab4c:	c31c                	sw	a5,0(a4)
1c00ab4e:	6705                	lui	a4,0x1
1c00ab50:	61db07b7          	lui	a5,0x61db0
1c00ab54:	cde70713          	addi	a4,a4,-802 # cde <__CTOR_LIST__-0x1bfff326>
1c00ab58:	970a                	add	a4,a4,sp
1c00ab5a:	70f78793          	addi	a5,a5,1807 # 61db070f <__l2_shared_end+0x45da070f>
1c00ab5e:	c31c                	sw	a5,0(a4)
1c00ab60:	6705                	lui	a4,0x1
1c00ab62:	0291e7b7          	lui	a5,0x291e
1c00ab66:	ce270713          	addi	a4,a4,-798 # ce2 <__CTOR_LIST__-0x1bfff322>
1c00ab6a:	970a                	add	a4,a4,sp
1c00ab6c:	1dc78793          	addi	a5,a5,476 # 291e1dc <__CTOR_LIST__-0x196e1e28>
1c00ab70:	c31c                	sw	a5,0(a4)
1c00ab72:	6705                	lui	a4,0x1
1c00ab74:	102d47b7          	lui	a5,0x102d4
1c00ab78:	ce670713          	addi	a4,a4,-794 # ce6 <__CTOR_LIST__-0x1bfff31e>
1c00ab7c:	970a                	add	a4,a4,sp
1c00ab7e:	bf478793          	addi	a5,a5,-1036 # 102d3bf4 <__CTOR_LIST__-0xbd2c410>
1c00ab82:	c31c                	sw	a5,0(a4)
1c00ab84:	6705                	lui	a4,0x1
1c00ab86:	027b77b7          	lui	a5,0x27b7
1c00ab8a:	cea70713          	addi	a4,a4,-790 # cea <__CTOR_LIST__-0x1bfff31a>
1c00ab8e:	970a                	add	a4,a4,sp
1c00ab90:	46078793          	addi	a5,a5,1120 # 27b7460 <__CTOR_LIST__-0x19848ba4>
1c00ab94:	c31c                	sw	a5,0(a4)
1c00ab96:	6705                	lui	a4,0x1
1c00ab98:	855447b7          	lui	a5,0x85544
1c00ab9c:	cee70713          	addi	a4,a4,-786 # cee <__CTOR_LIST__-0x1bfff316>
1c00aba0:	970a                	add	a4,a4,sp
1c00aba2:	2c478793          	addi	a5,a5,708 # 855442c4 <pulp__FC+0x855442c5>
1c00aba6:	c31c                	sw	a5,0(a4)
1c00aba8:	6705                	lui	a4,0x1
1c00abaa:	d9d527b7          	lui	a5,0xd9d52
1c00abae:	cf270713          	addi	a4,a4,-782 # cf2 <__CTOR_LIST__-0x1bfff312>
1c00abb2:	970a                	add	a4,a4,sp
1c00abb4:	f3478793          	addi	a5,a5,-204 # d9d51f34 <pulp__FC+0xd9d51f35>
1c00abb8:	c31c                	sw	a5,0(a4)
1c00abba:	6785                	lui	a5,0x1
1c00abbc:	01a806b7          	lui	a3,0x1a80
1c00abc0:	cf678793          	addi	a5,a5,-778 # cf6 <__CTOR_LIST__-0x1bfff30e>
1c00abc4:	abf68893          	addi	a7,a3,-1345 # 1a7fabf <__CTOR_LIST__-0x1a580545>
1c00abc8:	978a                	add	a5,a5,sp
1c00abca:	6705                	lui	a4,0x1
1c00abcc:	0117a023          	sw	a7,0(a5)
1c00abd0:	cfa70713          	addi	a4,a4,-774 # cfa <__CTOR_LIST__-0x1bfff30a>
1c00abd4:	493767b7          	lui	a5,0x49376
1c00abd8:	970a                	add	a4,a4,sp
1c00abda:	16078793          	addi	a5,a5,352 # 49376160 <__l2_shared_end+0x2d366160>
1c00abde:	c31c                	sw	a5,0(a4)
1c00abe0:	6705                	lui	a4,0x1
1c00abe2:	2085c7b7          	lui	a5,0x2085c
1c00abe6:	cfe70713          	addi	a4,a4,-770 # cfe <__CTOR_LIST__-0x1bfff306>
1c00abea:	970a                	add	a4,a4,sp
1c00abec:	96378793          	addi	a5,a5,-1693 # 2085b963 <__l2_shared_end+0x484b963>
1c00abf0:	c31c                	sw	a5,0(a4)
1c00abf2:	6705                	lui	a4,0x1
1c00abf4:	7d9a77b7          	lui	a5,0x7d9a7
1c00abf8:	d0270713          	addi	a4,a4,-766 # d02 <__CTOR_LIST__-0x1bfff302>
1c00abfc:	970a                	add	a4,a4,sp
1c00abfe:	b9c78793          	addi	a5,a5,-1124 # 7d9a6b9c <__l2_shared_end+0x61996b9c>
1c00ac02:	c31c                	sw	a5,0(a4)
1c00ac04:	6705                	lui	a4,0x1
1c00ac06:	584a07b7          	lui	a5,0x584a0
1c00ac0a:	d0670713          	addi	a4,a4,-762 # d06 <__CTOR_LIST__-0x1bfff2fe>
1c00ac0e:	970a                	add	a4,a4,sp
1c00ac10:	9b378793          	addi	a5,a5,-1613 # 5849f9b3 <__l2_shared_end+0x3c48f9b3>
1c00ac14:	c31c                	sw	a5,0(a4)
1c00ac16:	6705                	lui	a4,0x1
1c00ac18:	790227b7          	lui	a5,0x79022
1c00ac1c:	d0a70713          	addi	a4,a4,-758 # d0a <__CTOR_LIST__-0x1bfff2fa>
1c00ac20:	970a                	add	a4,a4,sp
1c00ac22:	d3178793          	addi	a5,a5,-719 # 79021d31 <__l2_shared_end+0x5d011d31>
1c00ac26:	c31c                	sw	a5,0(a4)
1c00ac28:	6705                	lui	a4,0x1
1c00ac2a:	c4d8a7b7          	lui	a5,0xc4d8a
1c00ac2e:	d0e70713          	addi	a4,a4,-754 # d0e <__CTOR_LIST__-0x1bfff2f6>
1c00ac32:	970a                	add	a4,a4,sp
1c00ac34:	30078793          	addi	a5,a5,768 # c4d8a300 <pulp__FC+0xc4d8a301>
1c00ac38:	c31c                	sw	a5,0(a4)
1c00ac3a:	6705                	lui	a4,0x1
1c00ac3c:	b03587b7          	lui	a5,0xb0358
1c00ac40:	d1270713          	addi	a4,a4,-750 # d12 <__CTOR_LIST__-0x1bfff2f2>
1c00ac44:	970a                	add	a4,a4,sp
1c00ac46:	44f78793          	addi	a5,a5,1103 # b035844f <pulp__FC+0xb0358450>
1c00ac4a:	c31c                	sw	a5,0(a4)
1c00ac4c:	6705                	lui	a4,0x1
1c00ac4e:	a036a7b7          	lui	a5,0xa036a
1c00ac52:	d1670713          	addi	a4,a4,-746 # d16 <__CTOR_LIST__-0x1bfff2ee>
1c00ac56:	970a                	add	a4,a4,sp
1c00ac58:	29378793          	addi	a5,a5,659 # a036a293 <pulp__FC+0xa036a294>
1c00ac5c:	c31c                	sw	a5,0(a4)
1c00ac5e:	6705                	lui	a4,0x1
1c00ac60:	77e9                	lui	a5,0xffffa
1c00ac62:	d1a70713          	addi	a4,a4,-742 # d1a <__CTOR_LIST__-0x1bfff2ea>
1c00ac66:	970a                	add	a4,a4,sp
1c00ac68:	f5078793          	addi	a5,a5,-176 # ffff9f50 <pulp__FC+0xffff9f51>
1c00ac6c:	00f71023          	sh	a5,0(a4)
1c00ac70:	6705                	lui	a4,0x1
1c00ac72:	d1c70713          	addi	a4,a4,-740 # d1c <__CTOR_LIST__-0x1bfff2e8>
1c00ac76:	970a                	add	a4,a4,sp
1c00ac78:	47e5                	li	a5,25
1c00ac7a:	00f70023          	sb	a5,0(a4)
1c00ac7e:	6705                	lui	a4,0x1
1c00ac80:	1977e7b7          	lui	a5,0x1977e
1c00ac84:	d1d70713          	addi	a4,a4,-739 # d1d <__CTOR_LIST__-0x1bfff2e7>
1c00ac88:	970a                	add	a4,a4,sp
1c00ac8a:	f2878793          	addi	a5,a5,-216 # 1977df28 <__CTOR_LIST__-0x28820dc>
1c00ac8e:	c31c                	sw	a5,0(a4)
1c00ac90:	6705                	lui	a4,0x1
1c00ac92:	904e97b7          	lui	a5,0x904e9
1c00ac96:	d2170713          	addi	a4,a4,-735 # d21 <__CTOR_LIST__-0x1bfff2e3>
1c00ac9a:	970a                	add	a4,a4,sp
1c00ac9c:	cce78793          	addi	a5,a5,-818 # 904e8cce <pulp__FC+0x904e8ccf>
1c00aca0:	c31c                	sw	a5,0(a4)
1c00aca2:	6705                	lui	a4,0x1
1c00aca4:	b84d97b7          	lui	a5,0xb84d9
1c00aca8:	d2570713          	addi	a4,a4,-731 # d25 <__CTOR_LIST__-0x1bfff2df>
1c00acac:	970a                	add	a4,a4,sp
1c00acae:	f2278793          	addi	a5,a5,-222 # b84d8f22 <pulp__FC+0xb84d8f23>
1c00acb2:	c31c                	sw	a5,0(a4)
1c00acb4:	6705                	lui	a4,0x1
1c00acb6:	82e8c7b7          	lui	a5,0x82e8c
1c00acba:	d2970713          	addi	a4,a4,-727 # d29 <__CTOR_LIST__-0x1bfff2db>
1c00acbe:	970a                	add	a4,a4,sp
1c00acc0:	97c78793          	addi	a5,a5,-1668 # 82e8b97c <pulp__FC+0x82e8b97d>
1c00acc4:	c31c                	sw	a5,0(a4)
1c00acc6:	6705                	lui	a4,0x1
1c00acc8:	802177b7          	lui	a5,0x80217
1c00accc:	d2d70713          	addi	a4,a4,-723 # d2d <__CTOR_LIST__-0x1bfff2d7>
1c00acd0:	970a                	add	a4,a4,sp
1c00acd2:	1f278793          	addi	a5,a5,498 # 802171f2 <pulp__FC+0x802171f3>
1c00acd6:	c31c                	sw	a5,0(a4)
1c00acd8:	6705                	lui	a4,0x1
1c00acda:	d34597b7          	lui	a5,0xd3459
1c00acde:	d3170713          	addi	a4,a4,-719 # d31 <__CTOR_LIST__-0x1bfff2d3>
1c00ace2:	970a                	add	a4,a4,sp
1c00ace4:	82378793          	addi	a5,a5,-2013 # d3458823 <pulp__FC+0xd3458824>
1c00ace8:	c31c                	sw	a5,0(a4)
1c00acea:	6705                	lui	a4,0x1
1c00acec:	c606c7b7          	lui	a5,0xc606c
1c00acf0:	d3570713          	addi	a4,a4,-715 # d35 <__CTOR_LIST__-0x1bfff2cf>
1c00acf4:	970a                	add	a4,a4,sp
1c00acf6:	91e78793          	addi	a5,a5,-1762 # c606b91e <pulp__FC+0xc606b91f>
1c00acfa:	c31c                	sw	a5,0(a4)
1c00acfc:	6705                	lui	a4,0x1
1c00acfe:	0f3eb7b7          	lui	a5,0xf3eb
1c00ad02:	d3970713          	addi	a4,a4,-711 # d39 <__CTOR_LIST__-0x1bfff2cb>
1c00ad06:	970a                	add	a4,a4,sp
1c00ad08:	60e78793          	addi	a5,a5,1550 # f3eb60e <__CTOR_LIST__-0xcc149f6>
1c00ad0c:	c31c                	sw	a5,0(a4)
1c00ad0e:	6705                	lui	a4,0x1
1c00ad10:	b88467b7          	lui	a5,0xb8846
1c00ad14:	d3d70713          	addi	a4,a4,-707 # d3d <__CTOR_LIST__-0x1bfff2c7>
1c00ad18:	970a                	add	a4,a4,sp
1c00ad1a:	ef578793          	addi	a5,a5,-267 # b8845ef5 <pulp__FC+0xb8845ef6>
1c00ad1e:	c31c                	sw	a5,0(a4)
1c00ad20:	6705                	lui	a4,0x1
1c00ad22:	791bb7b7          	lui	a5,0x791bb
1c00ad26:	d4170713          	addi	a4,a4,-703 # d41 <__CTOR_LIST__-0x1bfff2c3>
1c00ad2a:	970a                	add	a4,a4,sp
1c00ad2c:	96778793          	addi	a5,a5,-1689 # 791ba967 <__l2_shared_end+0x5d1aa967>
1c00ad30:	c31c                	sw	a5,0(a4)
1c00ad32:	6705                	lui	a4,0x1
1c00ad34:	3aa077b7          	lui	a5,0x3aa07
1c00ad38:	d4570713          	addi	a4,a4,-699 # d45 <__CTOR_LIST__-0x1bfff2bf>
1c00ad3c:	970a                	add	a4,a4,sp
1c00ad3e:	4ae78793          	addi	a5,a5,1198 # 3aa074ae <__l2_shared_end+0x1e9f74ae>
1c00ad42:	c31c                	sw	a5,0(a4)
1c00ad44:	6705                	lui	a4,0x1
1c00ad46:	c87307b7          	lui	a5,0xc8730
1c00ad4a:	d4970713          	addi	a4,a4,-695 # d49 <__CTOR_LIST__-0x1bfff2bb>
1c00ad4e:	970a                	add	a4,a4,sp
1c00ad50:	4c078793          	addi	a5,a5,1216 # c87304c0 <pulp__FC+0xc87304c1>
1c00ad54:	c31c                	sw	a5,0(a4)
1c00ad56:	6705                	lui	a4,0x1
1c00ad58:	aee6b7b7          	lui	a5,0xaee6b
1c00ad5c:	d4d70713          	addi	a4,a4,-691 # d4d <__CTOR_LIST__-0x1bfff2b7>
1c00ad60:	970a                	add	a4,a4,sp
1c00ad62:	3c178793          	addi	a5,a5,961 # aee6b3c1 <pulp__FC+0xaee6b3c2>
1c00ad66:	c31c                	sw	a5,0(a4)
1c00ad68:	6705                	lui	a4,0x1
1c00ad6a:	1e7fc7b7          	lui	a5,0x1e7fc
1c00ad6e:	d5170713          	addi	a4,a4,-687 # d51 <__CTOR_LIST__-0x1bfff2b3>
1c00ad72:	970a                	add	a4,a4,sp
1c00ad74:	3dc78793          	addi	a5,a5,988 # 1e7fc3dc <__l2_shared_end+0x27ec3dc>
1c00ad78:	c31c                	sw	a5,0(a4)
1c00ad7a:	6705                	lui	a4,0x1
1c00ad7c:	36e1c7b7          	lui	a5,0x36e1c
1c00ad80:	d5570713          	addi	a4,a4,-683 # d55 <__CTOR_LIST__-0x1bfff2af>
1c00ad84:	970a                	add	a4,a4,sp
1c00ad86:	86978793          	addi	a5,a5,-1943 # 36e1b869 <__l2_shared_end+0x1ae0b869>
1c00ad8a:	c31c                	sw	a5,0(a4)
1c00ad8c:	6705                	lui	a4,0x1
1c00ad8e:	01dba7b7          	lui	a5,0x1dba
1c00ad92:	d5970713          	addi	a4,a4,-679 # d59 <__CTOR_LIST__-0x1bfff2ab>
1c00ad96:	970a                	add	a4,a4,sp
1c00ad98:	b0178793          	addi	a5,a5,-1279 # 1db9b01 <__CTOR_LIST__-0x1a246503>
1c00ad9c:	c31c                	sw	a5,0(a4)
1c00ad9e:	6705                	lui	a4,0x1
1c00ada0:	22a177b7          	lui	a5,0x22a17
1c00ada4:	d5d70713          	addi	a4,a4,-675 # d5d <__CTOR_LIST__-0x1bfff2a7>
1c00ada8:	970a                	add	a4,a4,sp
1c00adaa:	4c378793          	addi	a5,a5,1219 # 22a174c3 <__l2_shared_end+0x6a074c3>
1c00adae:	c31c                	sw	a5,0(a4)
1c00adb0:	6705                	lui	a4,0x1
1c00adb2:	25c367b7          	lui	a5,0x25c36
1c00adb6:	d6170713          	addi	a4,a4,-671 # d61 <__CTOR_LIST__-0x1bfff2a3>
1c00adba:	970a                	add	a4,a4,sp
1c00adbc:	4e178793          	addi	a5,a5,1249 # 25c364e1 <__l2_shared_end+0x9c264e1>
1c00adc0:	c31c                	sw	a5,0(a4)
1c00adc2:	6705                	lui	a4,0x1
1c00adc4:	cffbb7b7          	lui	a5,0xcffbb
1c00adc8:	d6570713          	addi	a4,a4,-667 # d65 <__CTOR_LIST__-0x1bfff29f>
1c00adcc:	970a                	add	a4,a4,sp
1c00adce:	28478793          	addi	a5,a5,644 # cffbb284 <pulp__FC+0xcffbb285>
1c00add2:	c31c                	sw	a5,0(a4)
1c00add4:	6705                	lui	a4,0x1
1c00add6:	453a07b7          	lui	a5,0x453a0
1c00adda:	d6970713          	addi	a4,a4,-663 # d69 <__CTOR_LIST__-0x1bfff29b>
1c00adde:	970a                	add	a4,a4,sp
1c00ade0:	15e78793          	addi	a5,a5,350 # 453a015e <__l2_shared_end+0x2939015e>
1c00ade4:	c31c                	sw	a5,0(a4)
1c00ade6:	6705                	lui	a4,0x1
1c00ade8:	338987b7          	lui	a5,0x33898
1c00adec:	d6d70713          	addi	a4,a4,-659 # d6d <__CTOR_LIST__-0x1bfff297>
1c00adf0:	970a                	add	a4,a4,sp
1c00adf2:	c1278793          	addi	a5,a5,-1006 # 33897c12 <__l2_shared_end+0x17887c12>
1c00adf6:	c31c                	sw	a5,0(a4)
1c00adf8:	6705                	lui	a4,0x1
1c00adfa:	0386b7b7          	lui	a5,0x386b
1c00adfe:	d7170713          	addi	a4,a4,-655 # d71 <__CTOR_LIST__-0x1bfff293>
1c00ae02:	970a                	add	a4,a4,sp
1c00ae04:	62678793          	addi	a5,a5,1574 # 386b626 <__CTOR_LIST__-0x187949de>
1c00ae08:	c31c                	sw	a5,0(a4)
1c00ae0a:	6705                	lui	a4,0x1
1c00ae0c:	2555d7b7          	lui	a5,0x2555d
1c00ae10:	d7570713          	addi	a4,a4,-651 # d75 <__CTOR_LIST__-0x1bfff28f>
1c00ae14:	970a                	add	a4,a4,sp
1c00ae16:	b7878793          	addi	a5,a5,-1160 # 2555cb78 <__l2_shared_end+0x954cb78>
1c00ae1a:	c31c                	sw	a5,0(a4)
1c00ae1c:	6705                	lui	a4,0x1
1c00ae1e:	2b5297b7          	lui	a5,0x2b529
1c00ae22:	d7970713          	addi	a4,a4,-647 # d79 <__CTOR_LIST__-0x1bfff28b>
1c00ae26:	970a                	add	a4,a4,sp
1c00ae28:	ba478793          	addi	a5,a5,-1116 # 2b528ba4 <__l2_shared_end+0xf518ba4>
1c00ae2c:	c31c                	sw	a5,0(a4)
1c00ae2e:	6705                	lui	a4,0x1
1c00ae30:	762b17b7          	lui	a5,0x762b1
1c00ae34:	d7d70713          	addi	a4,a4,-643 # d7d <__CTOR_LIST__-0x1bfff287>
1c00ae38:	970a                	add	a4,a4,sp
1c00ae3a:	33078793          	addi	a5,a5,816 # 762b1330 <__l2_shared_end+0x5a2a1330>
1c00ae3e:	c31c                	sw	a5,0(a4)
1c00ae40:	6705                	lui	a4,0x1
1c00ae42:	694b27b7          	lui	a5,0x694b2
1c00ae46:	d8170713          	addi	a4,a4,-639 # d81 <__CTOR_LIST__-0x1bfff283>
1c00ae4a:	970a                	add	a4,a4,sp
1c00ae4c:	18878793          	addi	a5,a5,392 # 694b2188 <__l2_shared_end+0x4d4a2188>
1c00ae50:	c31c                	sw	a5,0(a4)
1c00ae52:	6705                	lui	a4,0x1
1c00ae54:	9ad197b7          	lui	a5,0x9ad19
1c00ae58:	d8570713          	addi	a4,a4,-635 # d85 <__CTOR_LIST__-0x1bfff27f>
1c00ae5c:	970a                	add	a4,a4,sp
1c00ae5e:	d8078793          	addi	a5,a5,-640 # 9ad18d80 <pulp__FC+0x9ad18d81>
1c00ae62:	c31c                	sw	a5,0(a4)
1c00ae64:	6705                	lui	a4,0x1
1c00ae66:	3e0407b7          	lui	a5,0x3e040
1c00ae6a:	d8970713          	addi	a4,a4,-631 # d89 <__CTOR_LIST__-0x1bfff27b>
1c00ae6e:	970a                	add	a4,a4,sp
1c00ae70:	fa478793          	addi	a5,a5,-92 # 3e03ffa4 <__l2_shared_end+0x2202ffa4>
1c00ae74:	c31c                	sw	a5,0(a4)
1c00ae76:	6705                	lui	a4,0x1
1c00ae78:	162027b7          	lui	a5,0x16202
1c00ae7c:	d8d70713          	addi	a4,a4,-627 # d8d <__CTOR_LIST__-0x1bfff277>
1c00ae80:	970a                	add	a4,a4,sp
1c00ae82:	51678793          	addi	a5,a5,1302 # 16202516 <__CTOR_LIST__-0x5dfdaee>
1c00ae86:	c31c                	sw	a5,0(a4)
1c00ae88:	6705                	lui	a4,0x1
1c00ae8a:	227997b7          	lui	a5,0x22799
1c00ae8e:	d9170713          	addi	a4,a4,-623 # d91 <__CTOR_LIST__-0x1bfff273>
1c00ae92:	970a                	add	a4,a4,sp
1c00ae94:	4fc78793          	addi	a5,a5,1276 # 227994fc <__l2_shared_end+0x67894fc>
1c00ae98:	c31c                	sw	a5,0(a4)
1c00ae9a:	6705                	lui	a4,0x1
1c00ae9c:	3e3927b7          	lui	a5,0x3e392
1c00aea0:	d9570713          	addi	a4,a4,-619 # d95 <__CTOR_LIST__-0x1bfff26f>
1c00aea4:	970a                	add	a4,a4,sp
1c00aea6:	42478793          	addi	a5,a5,1060 # 3e392424 <__l2_shared_end+0x22382424>
1c00aeaa:	c31c                	sw	a5,0(a4)
1c00aeac:	6705                	lui	a4,0x1
1c00aeae:	1571e7b7          	lui	a5,0x1571e
1c00aeb2:	d9970713          	addi	a4,a4,-615 # d99 <__CTOR_LIST__-0x1bfff26b>
1c00aeb6:	970a                	add	a4,a4,sp
1c00aeb8:	b5178793          	addi	a5,a5,-1199 # 1571db51 <__CTOR_LIST__-0x68e24b3>
1c00aebc:	c31c                	sw	a5,0(a4)
1c00aebe:	6705                	lui	a4,0x1
1c00aec0:	e61487b7          	lui	a5,0xe6148
1c00aec4:	d9d70713          	addi	a4,a4,-611 # d9d <__CTOR_LIST__-0x1bfff267>
1c00aec8:	970a                	add	a4,a4,sp
1c00aeca:	1e378793          	addi	a5,a5,483 # e61481e3 <pulp__FC+0xe61481e4>
1c00aece:	c31c                	sw	a5,0(a4)
1c00aed0:	6705                	lui	a4,0x1
1c00aed2:	c8dc47b7          	lui	a5,0xc8dc4
1c00aed6:	da170713          	addi	a4,a4,-607 # da1 <__CTOR_LIST__-0x1bfff263>
1c00aeda:	970a                	add	a4,a4,sp
1c00aedc:	c8978793          	addi	a5,a5,-887 # c8dc3c89 <pulp__FC+0xc8dc3c8a>
1c00aee0:	c31c                	sw	a5,0(a4)
1c00aee2:	6705                	lui	a4,0x1
1c00aee4:	a41717b7          	lui	a5,0xa4171
1c00aee8:	da570713          	addi	a4,a4,-603 # da5 <__CTOR_LIST__-0x1bfff25f>
1c00aeec:	970a                	add	a4,a4,sp
1c00aeee:	1ae78793          	addi	a5,a5,430 # a41711ae <pulp__FC+0xa41711af>
1c00aef2:	c31c                	sw	a5,0(a4)
1c00aef4:	6705                	lui	a4,0x1
1c00aef6:	014867b7          	lui	a5,0x1486
1c00aefa:	da970713          	addi	a4,a4,-599 # da9 <__CTOR_LIST__-0x1bfff25b>
1c00aefe:	970a                	add	a4,a4,sp
1c00af00:	53178793          	addi	a5,a5,1329 # 1486531 <__CTOR_LIST__-0x1ab79ad3>
1c00af04:	c31c                	sw	a5,0(a4)
1c00af06:	6705                	lui	a4,0x1
1c00af08:	9f62b7b7          	lui	a5,0x9f62b
1c00af0c:	dad70713          	addi	a4,a4,-595 # dad <__CTOR_LIST__-0x1bfff257>
1c00af10:	970a                	add	a4,a4,sp
1c00af12:	40a78793          	addi	a5,a5,1034 # 9f62b40a <pulp__FC+0x9f62b40b>
1c00af16:	c31c                	sw	a5,0(a4)
1c00af18:	6705                	lui	a4,0x1
1c00af1a:	8d1477b7          	lui	a5,0x8d147
1c00af1e:	db170713          	addi	a4,a4,-591 # db1 <__CTOR_LIST__-0x1bfff253>
1c00af22:	970a                	add	a4,a4,sp
1c00af24:	2b678793          	addi	a5,a5,694 # 8d1472b6 <pulp__FC+0x8d1472b7>
1c00af28:	c31c                	sw	a5,0(a4)
1c00af2a:	6705                	lui	a4,0x1
1c00af2c:	606c27b7          	lui	a5,0x606c2
1c00af30:	db570713          	addi	a4,a4,-587 # db5 <__CTOR_LIST__-0x1bfff24f>
1c00af34:	970a                	add	a4,a4,sp
1c00af36:	a0378793          	addi	a5,a5,-1533 # 606c1a03 <__l2_shared_end+0x446b1a03>
1c00af3a:	c31c                	sw	a5,0(a4)
1c00af3c:	6705                	lui	a4,0x1
1c00af3e:	664a77b7          	lui	a5,0x664a7
1c00af42:	db970713          	addi	a4,a4,-583 # db9 <__CTOR_LIST__-0x1bfff24b>
1c00af46:	970a                	add	a4,a4,sp
1c00af48:	a1a78793          	addi	a5,a5,-1510 # 664a6a1a <__l2_shared_end+0x4a496a1a>
1c00af4c:	c31c                	sw	a5,0(a4)
1c00af4e:	6705                	lui	a4,0x1
1c00af50:	8e2d87b7          	lui	a5,0x8e2d8
1c00af54:	dbd70713          	addi	a4,a4,-579 # dbd <__CTOR_LIST__-0x1bfff247>
1c00af58:	970a                	add	a4,a4,sp
1c00af5a:	71d78793          	addi	a5,a5,1821 # 8e2d871d <pulp__FC+0x8e2d871e>
1c00af5e:	c31c                	sw	a5,0(a4)
1c00af60:	6705                	lui	a4,0x1
1c00af62:	0a7597b7          	lui	a5,0xa759
1c00af66:	dc170713          	addi	a4,a4,-575 # dc1 <__CTOR_LIST__-0x1bfff243>
1c00af6a:	970a                	add	a4,a4,sp
1c00af6c:	3f678793          	addi	a5,a5,1014 # a7593f6 <__CTOR_LIST__-0x118a6c0e>
1c00af70:	c31c                	sw	a5,0(a4)
1c00af72:	6705                	lui	a4,0x1
1c00af74:	715867b7          	lui	a5,0x71586
1c00af78:	dc570713          	addi	a4,a4,-571 # dc5 <__CTOR_LIST__-0x1bfff23f>
1c00af7c:	970a                	add	a4,a4,sp
1c00af7e:	91178793          	addi	a5,a5,-1775 # 71585911 <__l2_shared_end+0x55575911>
1c00af82:	c31c                	sw	a5,0(a4)
1c00af84:	6705                	lui	a4,0x1
1c00af86:	3e26c7b7          	lui	a5,0x3e26c
1c00af8a:	dc970713          	addi	a4,a4,-567 # dc9 <__CTOR_LIST__-0x1bfff23b>
1c00af8e:	970a                	add	a4,a4,sp
1c00af90:	96a78793          	addi	a5,a5,-1686 # 3e26b96a <__l2_shared_end+0x2225b96a>
1c00af94:	c31c                	sw	a5,0(a4)
1c00af96:	6705                	lui	a4,0x1
1c00af98:	576357b7          	lui	a5,0x57635
1c00af9c:	dcd70713          	addi	a4,a4,-563 # dcd <__CTOR_LIST__-0x1bfff237>
1c00afa0:	970a                	add	a4,a4,sp
1c00afa2:	1b078793          	addi	a5,a5,432 # 576351b0 <__l2_shared_end+0x3b6251b0>
1c00afa6:	c31c                	sw	a5,0(a4)
1c00afa8:	6705                	lui	a4,0x1
1c00afaa:	cd5827b7          	lui	a5,0xcd582
1c00afae:	dd170713          	addi	a4,a4,-559 # dd1 <__CTOR_LIST__-0x1bfff233>
1c00afb2:	970a                	add	a4,a4,sp
1c00afb4:	31078793          	addi	a5,a5,784 # cd582310 <pulp__FC+0xcd582311>
1c00afb8:	c31c                	sw	a5,0(a4)
1c00afba:	6705                	lui	a4,0x1
1c00afbc:	646427b7          	lui	a5,0x64642
1c00afc0:	dd570713          	addi	a4,a4,-555 # dd5 <__CTOR_LIST__-0x1bfff22f>
1c00afc4:	970a                	add	a4,a4,sp
1c00afc6:	5e578793          	addi	a5,a5,1509 # 646425e5 <__l2_shared_end+0x486325e5>
1c00afca:	c31c                	sw	a5,0(a4)
1c00afcc:	6705                	lui	a4,0x1
1c00afce:	f5a867b7          	lui	a5,0xf5a86
1c00afd2:	dd970713          	addi	a4,a4,-551 # dd9 <__CTOR_LIST__-0x1bfff22b>
1c00afd6:	970a                	add	a4,a4,sp
1c00afd8:	c8078793          	addi	a5,a5,-896 # f5a85c80 <pulp__FC+0xf5a85c81>
1c00afdc:	c31c                	sw	a5,0(a4)
1c00afde:	6705                	lui	a4,0x1
1c00afe0:	1a7567b7          	lui	a5,0x1a756
1c00afe4:	ddd70713          	addi	a4,a4,-547 # ddd <__CTOR_LIST__-0x1bfff227>
1c00afe8:	970a                	add	a4,a4,sp
1c00afea:	19678793          	addi	a5,a5,406 # 1a756196 <__CTOR_LIST__-0x18a9e6e>
1c00afee:	c31c                	sw	a5,0(a4)
1c00aff0:	6705                	lui	a4,0x1
1c00aff2:	a775a7b7          	lui	a5,0xa775a
1c00aff6:	de170713          	addi	a4,a4,-543 # de1 <__CTOR_LIST__-0x1bfff223>
1c00affa:	970a                	add	a4,a4,sp
1c00affc:	4d678793          	addi	a5,a5,1238 # a775a4d6 <pulp__FC+0xa775a4d7>
1c00b000:	c31c                	sw	a5,0(a4)
1c00b002:	6705                	lui	a4,0x1
1c00b004:	73cb87b7          	lui	a5,0x73cb8
1c00b008:	de570713          	addi	a4,a4,-539 # de5 <__CTOR_LIST__-0x1bfff21f>
1c00b00c:	970a                	add	a4,a4,sp
1c00b00e:	8ec78793          	addi	a5,a5,-1812 # 73cb78ec <__l2_shared_end+0x57ca78ec>
1c00b012:	c31c                	sw	a5,0(a4)
1c00b014:	6705                	lui	a4,0x1
1c00b016:	c5bbc7b7          	lui	a5,0xc5bbc
1c00b01a:	de970713          	addi	a4,a4,-535 # de9 <__CTOR_LIST__-0x1bfff21b>
1c00b01e:	970a                	add	a4,a4,sp
1c00b020:	31978793          	addi	a5,a5,793 # c5bbc319 <pulp__FC+0xc5bbc31a>
1c00b024:	c31c                	sw	a5,0(a4)
1c00b026:	6705                	lui	a4,0x1
1c00b028:	11bbe7b7          	lui	a5,0x11bbe
1c00b02c:	ded70713          	addi	a4,a4,-531 # ded <__CTOR_LIST__-0x1bfff217>
1c00b030:	970a                	add	a4,a4,sp
1c00b032:	14478793          	addi	a5,a5,324 # 11bbe144 <__CTOR_LIST__-0xa441ec0>
1c00b036:	c31c                	sw	a5,0(a4)
1c00b038:	6705                	lui	a4,0x1
1c00b03a:	b7aeb7b7          	lui	a5,0xb7aeb
1c00b03e:	df170713          	addi	a4,a4,-527 # df1 <__CTOR_LIST__-0x1bfff213>
1c00b042:	970a                	add	a4,a4,sp
1c00b044:	a8578793          	addi	a5,a5,-1403 # b7aeaa85 <pulp__FC+0xb7aeaa86>
1c00b048:	c31c                	sw	a5,0(a4)
1c00b04a:	6705                	lui	a4,0x1
1c00b04c:	390bc7b7          	lui	a5,0x390bc
1c00b050:	df570713          	addi	a4,a4,-523 # df5 <__CTOR_LIST__-0x1bfff20f>
1c00b054:	970a                	add	a4,a4,sp
1c00b056:	a5178793          	addi	a5,a5,-1455 # 390bba51 <__l2_shared_end+0x1d0aba51>
1c00b05a:	c31c                	sw	a5,0(a4)
1c00b05c:	6705                	lui	a4,0x1
1c00b05e:	336e27b7          	lui	a5,0x336e2
1c00b062:	df970713          	addi	a4,a4,-519 # df9 <__CTOR_LIST__-0x1bfff20b>
1c00b066:	970a                	add	a4,a4,sp
1c00b068:	42378793          	addi	a5,a5,1059 # 336e2423 <__l2_shared_end+0x176d2423>
1c00b06c:	c31c                	sw	a5,0(a4)
1c00b06e:	6705                	lui	a4,0x1
1c00b070:	f44f17b7          	lui	a5,0xf44f1
1c00b074:	dfd70713          	addi	a4,a4,-515 # dfd <__CTOR_LIST__-0x1bfff207>
1c00b078:	970a                	add	a4,a4,sp
1c00b07a:	af478793          	addi	a5,a5,-1292 # f44f0af4 <pulp__FC+0xf44f0af5>
1c00b07e:	c31c                	sw	a5,0(a4)
1c00b080:	6705                	lui	a4,0x1
1c00b082:	537417b7          	lui	a5,0x53741
1c00b086:	e0170713          	addi	a4,a4,-511 # e01 <__CTOR_LIST__-0x1bfff203>
1c00b08a:	970a                	add	a4,a4,sp
1c00b08c:	b7878793          	addi	a5,a5,-1160 # 53740b78 <__l2_shared_end+0x37730b78>
1c00b090:	c31c                	sw	a5,0(a4)
1c00b092:	6705                	lui	a4,0x1
1c00b094:	d118a7b7          	lui	a5,0xd118a
1c00b098:	e0570713          	addi	a4,a4,-507 # e05 <__CTOR_LIST__-0x1bfff1ff>
1c00b09c:	970a                	add	a4,a4,sp
1c00b09e:	26278793          	addi	a5,a5,610 # d118a262 <pulp__FC+0xd118a263>
1c00b0a2:	c31c                	sw	a5,0(a4)
1c00b0a4:	6705                	lui	a4,0x1
1c00b0a6:	724d47b7          	lui	a5,0x724d4
1c00b0aa:	e0970713          	addi	a4,a4,-503 # e09 <__CTOR_LIST__-0x1bfff1fb>
1c00b0ae:	970a                	add	a4,a4,sp
1c00b0b0:	76978793          	addi	a5,a5,1897 # 724d4769 <__l2_shared_end+0x564c4769>
1c00b0b4:	c31c                	sw	a5,0(a4)
1c00b0b6:	6705                	lui	a4,0x1
1c00b0b8:	57f7b7b7          	lui	a5,0x57f7b
1c00b0bc:	e0d70713          	addi	a4,a4,-499 # e0d <__CTOR_LIST__-0x1bfff1f7>
1c00b0c0:	970a                	add	a4,a4,sp
1c00b0c2:	90878793          	addi	a5,a5,-1784 # 57f7a908 <__l2_shared_end+0x3bf6a908>
1c00b0c6:	c31c                	sw	a5,0(a4)
1c00b0c8:	6705                	lui	a4,0x1
1c00b0ca:	8a3037b7          	lui	a5,0x8a303
1c00b0ce:	e1170713          	addi	a4,a4,-495 # e11 <__CTOR_LIST__-0x1bfff1f3>
1c00b0d2:	970a                	add	a4,a4,sp
1c00b0d4:	87278793          	addi	a5,a5,-1934 # 8a302872 <pulp__FC+0x8a302873>
1c00b0d8:	c31c                	sw	a5,0(a4)
1c00b0da:	6785                	lui	a5,0x1
1c00b0dc:	6605                	lui	a2,0x1
1c00b0de:	e1578793          	addi	a5,a5,-491 # e15 <__CTOR_LIST__-0x1bfff1ef>
1c00b0e2:	6705                	lui	a4,0x1
1c00b0e4:	ff260813          	addi	a6,a2,-14 # ff2 <__CTOR_LIST__-0x1bfff012>
1c00b0e8:	978a                	add	a5,a5,sp
1c00b0ea:	e1770713          	addi	a4,a4,-489 # e17 <__CTOR_LIST__-0x1bfff1ed>
1c00b0ee:	01079023          	sh	a6,0(a5)
1c00b0f2:	970a                	add	a4,a4,sp
1c00b0f4:	f8d00793          	li	a5,-115
1c00b0f8:	00f70023          	sb	a5,0(a4)
1c00b0fc:	6705                	lui	a4,0x1
1c00b0fe:	74a207b7          	lui	a5,0x74a20
1c00b102:	e1870713          	addi	a4,a4,-488 # e18 <__CTOR_LIST__-0x1bfff1ec>
1c00b106:	970a                	add	a4,a4,sp
1c00b108:	32478793          	addi	a5,a5,804 # 74a20324 <__l2_shared_end+0x58a10324>
1c00b10c:	c31c                	sw	a5,0(a4)
1c00b10e:	6705                	lui	a4,0x1
1c00b110:	cf53d7b7          	lui	a5,0xcf53d
1c00b114:	e1c70713          	addi	a4,a4,-484 # e1c <__CTOR_LIST__-0x1bfff1e8>
1c00b118:	970a                	add	a4,a4,sp
1c00b11a:	f7778793          	addi	a5,a5,-137 # cf53cf77 <pulp__FC+0xcf53cf78>
1c00b11e:	c31c                	sw	a5,0(a4)
1c00b120:	6705                	lui	a4,0x1
1c00b122:	47a237b7          	lui	a5,0x47a23
1c00b126:	e2070713          	addi	a4,a4,-480 # e20 <__CTOR_LIST__-0x1bfff1e4>
1c00b12a:	970a                	add	a4,a4,sp
1c00b12c:	3f178793          	addi	a5,a5,1009 # 47a233f1 <__l2_shared_end+0x2ba133f1>
1c00b130:	c31c                	sw	a5,0(a4)
1c00b132:	6705                	lui	a4,0x1
1c00b134:	98b2c7b7          	lui	a5,0x98b2c
1c00b138:	e2470713          	addi	a4,a4,-476 # e24 <__CTOR_LIST__-0x1bfff1e0>
1c00b13c:	970a                	add	a4,a4,sp
1c00b13e:	2d578793          	addi	a5,a5,725 # 98b2c2d5 <pulp__FC+0x98b2c2d6>
1c00b142:	c31c                	sw	a5,0(a4)
1c00b144:	6705                	lui	a4,0x1
1c00b146:	c6ba27b7          	lui	a5,0xc6ba2
1c00b14a:	e2870713          	addi	a4,a4,-472 # e28 <__CTOR_LIST__-0x1bfff1dc>
1c00b14e:	970a                	add	a4,a4,sp
1c00b150:	1bf78793          	addi	a5,a5,447 # c6ba21bf <pulp__FC+0xc6ba21c0>
1c00b154:	c31c                	sw	a5,0(a4)
1c00b156:	6705                	lui	a4,0x1
1c00b158:	9e6447b7          	lui	a5,0x9e644
1c00b15c:	e2c70713          	addi	a4,a4,-468 # e2c <__CTOR_LIST__-0x1bfff1d8>
1c00b160:	970a                	add	a4,a4,sp
1c00b162:	4dc78793          	addi	a5,a5,1244 # 9e6444dc <pulp__FC+0x9e6444dd>
1c00b166:	c31c                	sw	a5,0(a4)
1c00b168:	6705                	lui	a4,0x1
1c00b16a:	f5ceb7b7          	lui	a5,0xf5ceb
1c00b16e:	e3070713          	addi	a4,a4,-464 # e30 <__CTOR_LIST__-0x1bfff1d4>
1c00b172:	970a                	add	a4,a4,sp
1c00b174:	f6378793          	addi	a5,a5,-157 # f5ceaf63 <pulp__FC+0xf5ceaf64>
1c00b178:	c31c                	sw	a5,0(a4)
1c00b17a:	6705                	lui	a4,0x1
1c00b17c:	7aa0d7b7          	lui	a5,0x7aa0d
1c00b180:	e3470713          	addi	a4,a4,-460 # e34 <__CTOR_LIST__-0x1bfff1d0>
1c00b184:	970a                	add	a4,a4,sp
1c00b186:	34a78793          	addi	a5,a5,842 # 7aa0d34a <__l2_shared_end+0x5e9fd34a>
1c00b18a:	c31c                	sw	a5,0(a4)
1c00b18c:	6705                	lui	a4,0x1
1c00b18e:	b347e7b7          	lui	a5,0xb347e
1c00b192:	e3870713          	addi	a4,a4,-456 # e38 <__CTOR_LIST__-0x1bfff1cc>
1c00b196:	970a                	add	a4,a4,sp
1c00b198:	47478793          	addi	a5,a5,1140 # b347e474 <pulp__FC+0xb347e475>
1c00b19c:	c31c                	sw	a5,0(a4)
1c00b19e:	6705                	lui	a4,0x1
1c00b1a0:	29cab7b7          	lui	a5,0x29cab
1c00b1a4:	e3c70713          	addi	a4,a4,-452 # e3c <__CTOR_LIST__-0x1bfff1c8>
1c00b1a8:	970a                	add	a4,a4,sp
1c00b1aa:	c6b78793          	addi	a5,a5,-917 # 29caac6b <__l2_shared_end+0xdc9ac6b>
1c00b1ae:	c31c                	sw	a5,0(a4)
1c00b1b0:	6705                	lui	a4,0x1
1c00b1b2:	683307b7          	lui	a5,0x68330
1c00b1b6:	e4070713          	addi	a4,a4,-448 # e40 <__CTOR_LIST__-0x1bfff1c4>
1c00b1ba:	970a                	add	a4,a4,sp
1c00b1bc:	55e78793          	addi	a5,a5,1374 # 6833055e <__l2_shared_end+0x4c32055e>
1c00b1c0:	c31c                	sw	a5,0(a4)
1c00b1c2:	6705                	lui	a4,0x1
1c00b1c4:	6e1487b7          	lui	a5,0x6e148
1c00b1c8:	e4470713          	addi	a4,a4,-444 # e44 <__CTOR_LIST__-0x1bfff1c0>
1c00b1cc:	970a                	add	a4,a4,sp
1c00b1ce:	cef78793          	addi	a5,a5,-785 # 6e147cef <__l2_shared_end+0x52137cef>
1c00b1d2:	c31c                	sw	a5,0(a4)
1c00b1d4:	6705                	lui	a4,0x1
1c00b1d6:	b3ed37b7          	lui	a5,0xb3ed3
1c00b1da:	e4870713          	addi	a4,a4,-440 # e48 <__CTOR_LIST__-0x1bfff1bc>
1c00b1de:	970a                	add	a4,a4,sp
1c00b1e0:	81c78793          	addi	a5,a5,-2020 # b3ed281c <pulp__FC+0xb3ed281d>
1c00b1e4:	c31c                	sw	a5,0(a4)
1c00b1e6:	6705                	lui	a4,0x1
1c00b1e8:	c97737b7          	lui	a5,0xc9773
1c00b1ec:	e4c70713          	addi	a4,a4,-436 # e4c <__CTOR_LIST__-0x1bfff1b8>
1c00b1f0:	970a                	add	a4,a4,sp
1c00b1f2:	71b78793          	addi	a5,a5,1819 # c977371b <pulp__FC+0xc977371c>
1c00b1f6:	c31c                	sw	a5,0(a4)
1c00b1f8:	6705                	lui	a4,0x1
1c00b1fa:	7dc2a7b7          	lui	a5,0x7dc2a
1c00b1fe:	e5070713          	addi	a4,a4,-432 # e50 <__CTOR_LIST__-0x1bfff1b4>
1c00b202:	970a                	add	a4,a4,sp
1c00b204:	74178793          	addi	a5,a5,1857 # 7dc2a741 <__l2_shared_end+0x61c1a741>
1c00b208:	c31c                	sw	a5,0(a4)
1c00b20a:	6705                	lui	a4,0x1
1c00b20c:	7b4367b7          	lui	a5,0x7b436
1c00b210:	e5470713          	addi	a4,a4,-428 # e54 <__CTOR_LIST__-0x1bfff1b0>
1c00b214:	970a                	add	a4,a4,sp
1c00b216:	9c578793          	addi	a5,a5,-1595 # 7b4359c5 <__l2_shared_end+0x5f4259c5>
1c00b21a:	c31c                	sw	a5,0(a4)
1c00b21c:	6705                	lui	a4,0x1
1c00b21e:	293d07b7          	lui	a5,0x293d0
1c00b222:	e5870713          	addi	a4,a4,-424 # e58 <__CTOR_LIST__-0x1bfff1ac>
1c00b226:	970a                	add	a4,a4,sp
1c00b228:	80f78793          	addi	a5,a5,-2033 # 293cf80f <__l2_shared_end+0xd3bf80f>
1c00b22c:	c31c                	sw	a5,0(a4)
1c00b22e:	6705                	lui	a4,0x1
1c00b230:	ef2807b7          	lui	a5,0xef280
1c00b234:	e5c70713          	addi	a4,a4,-420 # e5c <__CTOR_LIST__-0x1bfff1a8>
1c00b238:	970a                	add	a4,a4,sp
1c00b23a:	81078793          	addi	a5,a5,-2032 # ef27f810 <pulp__FC+0xef27f811>
1c00b23e:	c31c                	sw	a5,0(a4)
1c00b240:	6705                	lui	a4,0x1
1c00b242:	267757b7          	lui	a5,0x26775
1c00b246:	e6070713          	addi	a4,a4,-416 # e60 <__CTOR_LIST__-0x1bfff1a4>
1c00b24a:	970a                	add	a4,a4,sp
1c00b24c:	d2478793          	addi	a5,a5,-732 # 26774d24 <__l2_shared_end+0xa764d24>
1c00b250:	c31c                	sw	a5,0(a4)
1c00b252:	6705                	lui	a4,0x1
1c00b254:	089737b7          	lui	a5,0x8973
1c00b258:	e6470713          	addi	a4,a4,-412 # e64 <__CTOR_LIST__-0x1bfff1a0>
1c00b25c:	970a                	add	a4,a4,sp
1c00b25e:	baf78793          	addi	a5,a5,-1105 # 8972baf <__CTOR_LIST__-0x1368d455>
1c00b262:	c31c                	sw	a5,0(a4)
1c00b264:	6705                	lui	a4,0x1
1c00b266:	b1cf57b7          	lui	a5,0xb1cf5
1c00b26a:	e6870713          	addi	a4,a4,-408 # e68 <__CTOR_LIST__-0x1bfff19c>
1c00b26e:	970a                	add	a4,a4,sp
1c00b270:	b6578793          	addi	a5,a5,-1179 # b1cf4b65 <pulp__FC+0xb1cf4b66>
1c00b274:	c31c                	sw	a5,0(a4)
1c00b276:	6705                	lui	a4,0x1
1c00b278:	4468a7b7          	lui	a5,0x4468a
1c00b27c:	e6c70713          	addi	a4,a4,-404 # e6c <__CTOR_LIST__-0x1bfff198>
1c00b280:	970a                	add	a4,a4,sp
1c00b282:	23978793          	addi	a5,a5,569 # 4468a239 <__l2_shared_end+0x2867a239>
1c00b286:	c31c                	sw	a5,0(a4)
1c00b288:	6705                	lui	a4,0x1
1c00b28a:	9cb7f7b7          	lui	a5,0x9cb7f
1c00b28e:	e7070713          	addi	a4,a4,-400 # e70 <__CTOR_LIST__-0x1bfff194>
1c00b292:	970a                	add	a4,a4,sp
1c00b294:	4c678793          	addi	a5,a5,1222 # 9cb7f4c6 <pulp__FC+0x9cb7f4c7>
1c00b298:	c31c                	sw	a5,0(a4)
1c00b29a:	6705                	lui	a4,0x1
1c00b29c:	7074e7b7          	lui	a5,0x7074e
1c00b2a0:	e7470713          	addi	a4,a4,-396 # e74 <__CTOR_LIST__-0x1bfff190>
1c00b2a4:	970a                	add	a4,a4,sp
1c00b2a6:	4d978793          	addi	a5,a5,1241 # 7074e4d9 <__l2_shared_end+0x5473e4d9>
1c00b2aa:	c31c                	sw	a5,0(a4)
1c00b2ac:	6705                	lui	a4,0x1
1c00b2ae:	9675a7b7          	lui	a5,0x9675a
1c00b2b2:	e7870713          	addi	a4,a4,-392 # e78 <__CTOR_LIST__-0x1bfff18c>
1c00b2b6:	970a                	add	a4,a4,sp
1c00b2b8:	76578793          	addi	a5,a5,1893 # 9675a765 <pulp__FC+0x9675a766>
1c00b2bc:	c31c                	sw	a5,0(a4)
1c00b2be:	6705                	lui	a4,0x1
1c00b2c0:	6cf927b7          	lui	a5,0x6cf92
1c00b2c4:	e7c70713          	addi	a4,a4,-388 # e7c <__CTOR_LIST__-0x1bfff188>
1c00b2c8:	970a                	add	a4,a4,sp
1c00b2ca:	7b978793          	addi	a5,a5,1977 # 6cf927b9 <__l2_shared_end+0x50f827b9>
1c00b2ce:	c31c                	sw	a5,0(a4)
1c00b2d0:	6705                	lui	a4,0x1
1c00b2d2:	6772c7b7          	lui	a5,0x6772c
1c00b2d6:	e8070713          	addi	a4,a4,-384 # e80 <__CTOR_LIST__-0x1bfff184>
1c00b2da:	970a                	add	a4,a4,sp
1c00b2dc:	cbd78793          	addi	a5,a5,-835 # 6772bcbd <__l2_shared_end+0x4b71bcbd>
1c00b2e0:	c31c                	sw	a5,0(a4)
1c00b2e2:	6705                	lui	a4,0x1
1c00b2e4:	ac32a7b7          	lui	a5,0xac32a
1c00b2e8:	e8470713          	addi	a4,a4,-380 # e84 <__CTOR_LIST__-0x1bfff180>
1c00b2ec:	970a                	add	a4,a4,sp
1c00b2ee:	eac78793          	addi	a5,a5,-340 # ac329eac <pulp__FC+0xac329ead>
1c00b2f2:	c31c                	sw	a5,0(a4)
1c00b2f4:	6705                	lui	a4,0x1
1c00b2f6:	4c6c77b7          	lui	a5,0x4c6c7
1c00b2fa:	e8870713          	addi	a4,a4,-376 # e88 <__CTOR_LIST__-0x1bfff17c>
1c00b2fe:	970a                	add	a4,a4,sp
1c00b300:	f3978793          	addi	a5,a5,-199 # 4c6c6f39 <__l2_shared_end+0x306b6f39>
1c00b304:	c31c                	sw	a5,0(a4)
1c00b306:	6705                	lui	a4,0x1
1c00b308:	0aaa47b7          	lui	a5,0xaaa4
1c00b30c:	e8c70713          	addi	a4,a4,-372 # e8c <__CTOR_LIST__-0x1bfff178>
1c00b310:	970a                	add	a4,a4,sp
1c00b312:	9e778793          	addi	a5,a5,-1561 # aaa39e7 <__CTOR_LIST__-0x1155c61d>
1c00b316:	c31c                	sw	a5,0(a4)
1c00b318:	6705                	lui	a4,0x1
1c00b31a:	accc17b7          	lui	a5,0xaccc1
1c00b31e:	e9070713          	addi	a4,a4,-368 # e90 <__CTOR_LIST__-0x1bfff174>
1c00b322:	970a                	add	a4,a4,sp
1c00b324:	fa678793          	addi	a5,a5,-90 # accc0fa6 <pulp__FC+0xaccc0fa7>
1c00b328:	c31c                	sw	a5,0(a4)
1c00b32a:	6705                	lui	a4,0x1
1c00b32c:	b1da97b7          	lui	a5,0xb1da9
1c00b330:	e9470713          	addi	a4,a4,-364 # e94 <__CTOR_LIST__-0x1bfff170>
1c00b334:	970a                	add	a4,a4,sp
1c00b336:	e1778793          	addi	a5,a5,-489 # b1da8e17 <pulp__FC+0xb1da8e18>
1c00b33a:	c31c                	sw	a5,0(a4)
1c00b33c:	6705                	lui	a4,0x1
1c00b33e:	fe8847b7          	lui	a5,0xfe884
1c00b342:	e9870713          	addi	a4,a4,-360 # e98 <__CTOR_LIST__-0x1bfff16c>
1c00b346:	970a                	add	a4,a4,sp
1c00b348:	6e078793          	addi	a5,a5,1760 # fe8846e0 <pulp__FC+0xfe8846e1>
1c00b34c:	c31c                	sw	a5,0(a4)
1c00b34e:	6705                	lui	a4,0x1
1c00b350:	0142a7b7          	lui	a5,0x142a
1c00b354:	e9c70713          	addi	a4,a4,-356 # e9c <__CTOR_LIST__-0x1bfff168>
1c00b358:	970a                	add	a4,a4,sp
1c00b35a:	77178793          	addi	a5,a5,1905 # 142a771 <__CTOR_LIST__-0x1abd5893>
1c00b35e:	c31c                	sw	a5,0(a4)
1c00b360:	6705                	lui	a4,0x1
1c00b362:	4bc6a7b7          	lui	a5,0x4bc6a
1c00b366:	ea070713          	addi	a4,a4,-352 # ea0 <__CTOR_LIST__-0x1bfff164>
1c00b36a:	970a                	add	a4,a4,sp
1c00b36c:	ba978793          	addi	a5,a5,-1111 # 4bc69ba9 <__l2_shared_end+0x2fc59ba9>
1c00b370:	c31c                	sw	a5,0(a4)
1c00b372:	6705                	lui	a4,0x1
1c00b374:	89cc07b7          	lui	a5,0x89cc0
1c00b378:	ea470713          	addi	a4,a4,-348 # ea4 <__CTOR_LIST__-0x1bfff160>
1c00b37c:	970a                	add	a4,a4,sp
1c00b37e:	85578793          	addi	a5,a5,-1963 # 89cbf855 <pulp__FC+0x89cbf856>
1c00b382:	c31c                	sw	a5,0(a4)
1c00b384:	6705                	lui	a4,0x1
1c00b386:	e54517b7          	lui	a5,0xe5451
1c00b38a:	ea870713          	addi	a4,a4,-344 # ea8 <__CTOR_LIST__-0x1bfff15c>
1c00b38e:	970a                	add	a4,a4,sp
1c00b390:	5e178793          	addi	a5,a5,1505 # e54515e1 <pulp__FC+0xe54515e2>
1c00b394:	c31c                	sw	a5,0(a4)
1c00b396:	6705                	lui	a4,0x1
1c00b398:	86f467b7          	lui	a5,0x86f46
1c00b39c:	eac70713          	addi	a4,a4,-340 # eac <__CTOR_LIST__-0x1bfff158>
1c00b3a0:	970a                	add	a4,a4,sp
1c00b3a2:	a2778793          	addi	a5,a5,-1497 # 86f45a27 <pulp__FC+0x86f45a28>
1c00b3a6:	c31c                	sw	a5,0(a4)
1c00b3a8:	6705                	lui	a4,0x1
1c00b3aa:	7566f7b7          	lui	a5,0x7566f
1c00b3ae:	eb070713          	addi	a4,a4,-336 # eb0 <__CTOR_LIST__-0x1bfff154>
1c00b3b2:	970a                	add	a4,a4,sp
1c00b3b4:	c2678793          	addi	a5,a5,-986 # 7566ec26 <__l2_shared_end+0x5965ec26>
1c00b3b8:	c31c                	sw	a5,0(a4)
1c00b3ba:	6705                	lui	a4,0x1
1c00b3bc:	7c8ac7b7          	lui	a5,0x7c8ac
1c00b3c0:	eb470713          	addi	a4,a4,-332 # eb4 <__CTOR_LIST__-0x1bfff150>
1c00b3c4:	970a                	add	a4,a4,sp
1c00b3c6:	a2078793          	addi	a5,a5,-1504 # 7c8aba20 <__l2_shared_end+0x6089ba20>
1c00b3ca:	c31c                	sw	a5,0(a4)
1c00b3cc:	6705                	lui	a4,0x1
1c00b3ce:	7e30c7b7          	lui	a5,0x7e30c
1c00b3d2:	eb870713          	addi	a4,a4,-328 # eb8 <__CTOR_LIST__-0x1bfff14c>
1c00b3d6:	970a                	add	a4,a4,sp
1c00b3d8:	28878793          	addi	a5,a5,648 # 7e30c288 <__l2_shared_end+0x622fc288>
1c00b3dc:	c31c                	sw	a5,0(a4)
1c00b3de:	6705                	lui	a4,0x1
1c00b3e0:	ef5537b7          	lui	a5,0xef553
1c00b3e4:	ebc70713          	addi	a4,a4,-324 # ebc <__CTOR_LIST__-0x1bfff148>
1c00b3e8:	970a                	add	a4,a4,sp
1c00b3ea:	47978793          	addi	a5,a5,1145 # ef553479 <pulp__FC+0xef55347a>
1c00b3ee:	c31c                	sw	a5,0(a4)
1c00b3f0:	6705                	lui	a4,0x1
1c00b3f2:	e1fa87b7          	lui	a5,0xe1fa8
1c00b3f6:	ec070713          	addi	a4,a4,-320 # ec0 <__CTOR_LIST__-0x1bfff144>
1c00b3fa:	970a                	add	a4,a4,sp
1c00b3fc:	08778793          	addi	a5,a5,135 # e1fa8087 <pulp__FC+0xe1fa8088>
1c00b400:	c31c                	sw	a5,0(a4)
1c00b402:	6705                	lui	a4,0x1
1c00b404:	59ea17b7          	lui	a5,0x59ea1
1c00b408:	ec470713          	addi	a4,a4,-316 # ec4 <__CTOR_LIST__-0x1bfff140>
1c00b40c:	970a                	add	a4,a4,sp
1c00b40e:	26478793          	addi	a5,a5,612 # 59ea1264 <__l2_shared_end+0x3de91264>
1c00b412:	c31c                	sw	a5,0(a4)
1c00b414:	6705                	lui	a4,0x1
1c00b416:	f50627b7          	lui	a5,0xf5062
1c00b41a:	ec870713          	addi	a4,a4,-312 # ec8 <__CTOR_LIST__-0x1bfff13c>
1c00b41e:	970a                	add	a4,a4,sp
1c00b420:	4e978793          	addi	a5,a5,1257 # f50624e9 <pulp__FC+0xf50624ea>
1c00b424:	c31c                	sw	a5,0(a4)
1c00b426:	6705                	lui	a4,0x1
1c00b428:	c22d97b7          	lui	a5,0xc22d9
1c00b42c:	ecc70713          	addi	a4,a4,-308 # ecc <__CTOR_LIST__-0x1bfff138>
1c00b430:	970a                	add	a4,a4,sp
1c00b432:	09578793          	addi	a5,a5,149 # c22d9095 <pulp__FC+0xc22d9096>
1c00b436:	c31c                	sw	a5,0(a4)
1c00b438:	6705                	lui	a4,0x1
1c00b43a:	142b67b7          	lui	a5,0x142b6
1c00b43e:	ed070713          	addi	a4,a4,-304 # ed0 <__CTOR_LIST__-0x1bfff134>
1c00b442:	970a                	add	a4,a4,sp
1c00b444:	11c78793          	addi	a5,a5,284 # 142b611c <__CTOR_LIST__-0x7d49ee8>
1c00b448:	c31c                	sw	a5,0(a4)
1c00b44a:	6705                	lui	a4,0x1
1c00b44c:	31cf07b7          	lui	a5,0x31cf0
1c00b450:	ed470713          	addi	a4,a4,-300 # ed4 <__CTOR_LIST__-0x1bfff130>
1c00b454:	970a                	add	a4,a4,sp
1c00b456:	12878793          	addi	a5,a5,296 # 31cf0128 <__l2_shared_end+0x15ce0128>
1c00b45a:	c31c                	sw	a5,0(a4)
1c00b45c:	6705                	lui	a4,0x1
1c00b45e:	5c47c7b7          	lui	a5,0x5c47c
1c00b462:	ed870713          	addi	a4,a4,-296 # ed8 <__CTOR_LIST__-0x1bfff12c>
1c00b466:	970a                	add	a4,a4,sp
1c00b468:	0ab78793          	addi	a5,a5,171 # 5c47c0ab <__l2_shared_end+0x4046c0ab>
1c00b46c:	c31c                	sw	a5,0(a4)
1c00b46e:	6705                	lui	a4,0x1
1c00b470:	2d77e7b7          	lui	a5,0x2d77e
1c00b474:	edc70713          	addi	a4,a4,-292 # edc <__CTOR_LIST__-0x1bfff128>
1c00b478:	970a                	add	a4,a4,sp
1c00b47a:	e7b78793          	addi	a5,a5,-389 # 2d77de7b <__l2_shared_end+0x1176de7b>
1c00b47e:	c31c                	sw	a5,0(a4)
1c00b480:	6705                	lui	a4,0x1
1c00b482:	2d5ac7b7          	lui	a5,0x2d5ac
1c00b486:	ee070713          	addi	a4,a4,-288 # ee0 <__CTOR_LIST__-0x1bfff124>
1c00b48a:	970a                	add	a4,a4,sp
1c00b48c:	55178793          	addi	a5,a5,1361 # 2d5ac551 <__l2_shared_end+0x1159c551>
1c00b490:	c31c                	sw	a5,0(a4)
1c00b492:	6705                	lui	a4,0x1
1c00b494:	c51b67b7          	lui	a5,0xc51b6
1c00b498:	ee470713          	addi	a4,a4,-284 # ee4 <__CTOR_LIST__-0x1bfff120>
1c00b49c:	970a                	add	a4,a4,sp
1c00b49e:	5fc78793          	addi	a5,a5,1532 # c51b65fc <pulp__FC+0xc51b65fd>
1c00b4a2:	c31c                	sw	a5,0(a4)
1c00b4a4:	6705                	lui	a4,0x1
1c00b4a6:	024347b7          	lui	a5,0x2434
1c00b4aa:	ee870713          	addi	a4,a4,-280 # ee8 <__CTOR_LIST__-0x1bfff11c>
1c00b4ae:	970a                	add	a4,a4,sp
1c00b4b0:	1ab78793          	addi	a5,a5,427 # 24341ab <__CTOR_LIST__-0x19bcbe59>
1c00b4b4:	c31c                	sw	a5,0(a4)
1c00b4b6:	6705                	lui	a4,0x1
1c00b4b8:	4ccc17b7          	lui	a5,0x4ccc1
1c00b4bc:	eec70713          	addi	a4,a4,-276 # eec <__CTOR_LIST__-0x1bfff118>
1c00b4c0:	970a                	add	a4,a4,sp
1c00b4c2:	32878793          	addi	a5,a5,808 # 4ccc1328 <__l2_shared_end+0x30cb1328>
1c00b4c6:	c31c                	sw	a5,0(a4)
1c00b4c8:	6705                	lui	a4,0x1
1c00b4ca:	2cf5c7b7          	lui	a5,0x2cf5c
1c00b4ce:	ef070713          	addi	a4,a4,-272 # ef0 <__CTOR_LIST__-0x1bfff114>
1c00b4d2:	970a                	add	a4,a4,sp
1c00b4d4:	68c78793          	addi	a5,a5,1676 # 2cf5c68c <__l2_shared_end+0x10f4c68c>
1c00b4d8:	c31c                	sw	a5,0(a4)
1c00b4da:	6705                	lui	a4,0x1
1c00b4dc:	cde327b7          	lui	a5,0xcde32
1c00b4e0:	ef470713          	addi	a4,a4,-268 # ef4 <__CTOR_LIST__-0x1bfff110>
1c00b4e4:	970a                	add	a4,a4,sp
1c00b4e6:	78d78793          	addi	a5,a5,1933 # cde3278d <pulp__FC+0xcde3278e>
1c00b4ea:	c31c                	sw	a5,0(a4)
1c00b4ec:	6705                	lui	a4,0x1
1c00b4ee:	9a8457b7          	lui	a5,0x9a845
1c00b4f2:	ef870713          	addi	a4,a4,-264 # ef8 <__CTOR_LIST__-0x1bfff10c>
1c00b4f6:	970a                	add	a4,a4,sp
1c00b4f8:	17878793          	addi	a5,a5,376 # 9a845178 <pulp__FC+0x9a845179>
1c00b4fc:	c31c                	sw	a5,0(a4)
1c00b4fe:	6705                	lui	a4,0x1
1c00b500:	f04347b7          	lui	a5,0xf0434
1c00b504:	efc70713          	addi	a4,a4,-260 # efc <__CTOR_LIST__-0x1bfff108>
1c00b508:	970a                	add	a4,a4,sp
1c00b50a:	38c78793          	addi	a5,a5,908 # f043438c <pulp__FC+0xf043438d>
1c00b50e:	c31c                	sw	a5,0(a4)
1c00b510:	6705                	lui	a4,0x1
1c00b512:	6c6cf7b7          	lui	a5,0x6c6cf
1c00b516:	f0070713          	addi	a4,a4,-256 # f00 <__CTOR_LIST__-0x1bfff104>
1c00b51a:	970a                	add	a4,a4,sp
1c00b51c:	dc778793          	addi	a5,a5,-569 # 6c6cedc7 <__l2_shared_end+0x506bedc7>
1c00b520:	c31c                	sw	a5,0(a4)
1c00b522:	6705                	lui	a4,0x1
1c00b524:	c565f7b7          	lui	a5,0xc565f
1c00b528:	f0470713          	addi	a4,a4,-252 # f04 <__CTOR_LIST__-0x1bfff100>
1c00b52c:	970a                	add	a4,a4,sp
1c00b52e:	7b978793          	addi	a5,a5,1977 # c565f7b9 <pulp__FC+0xc565f7ba>
1c00b532:	c31c                	sw	a5,0(a4)
1c00b534:	6705                	lui	a4,0x1
1c00b536:	bc5587b7          	lui	a5,0xbc558
1c00b53a:	f0870713          	addi	a4,a4,-248 # f08 <__CTOR_LIST__-0x1bfff0fc>
1c00b53e:	970a                	add	a4,a4,sp
1c00b540:	e0478793          	addi	a5,a5,-508 # bc557e04 <pulp__FC+0xbc557e05>
1c00b544:	c31c                	sw	a5,0(a4)
1c00b546:	6705                	lui	a4,0x1
1c00b548:	b9d5b7b7          	lui	a5,0xb9d5b
1c00b54c:	f0c70713          	addi	a4,a4,-244 # f0c <__CTOR_LIST__-0x1bfff0f8>
1c00b550:	970a                	add	a4,a4,sp
1c00b552:	a4878793          	addi	a5,a5,-1464 # b9d5aa48 <pulp__FC+0xb9d5aa49>
1c00b556:	c31c                	sw	a5,0(a4)
1c00b558:	6785                	lui	a5,0x1
1c00b55a:	f1078793          	addi	a5,a5,-240 # f10 <__CTOR_LIST__-0x1bfff0f4>
1c00b55e:	6705                	lui	a4,0x1
1c00b560:	978a                	add	a5,a5,sp
1c00b562:	23260613          	addi	a2,a2,562
1c00b566:	f1270713          	addi	a4,a4,-238 # f12 <__CTOR_LIST__-0x1bfff0f2>
1c00b56a:	00c79023          	sh	a2,0(a5)
1c00b56e:	970a                	add	a4,a4,sp
1c00b570:	f8200793          	li	a5,-126
1c00b574:	00f70023          	sb	a5,0(a4)
1c00b578:	6705                	lui	a4,0x1
1c00b57a:	3909f7b7          	lui	a5,0x3909f
1c00b57e:	f1370713          	addi	a4,a4,-237 # f13 <__CTOR_LIST__-0x1bfff0f1>
1c00b582:	970a                	add	a4,a4,sp
1c00b584:	78778793          	addi	a5,a5,1927 # 3909f787 <__l2_shared_end+0x1d08f787>
1c00b588:	c31c                	sw	a5,0(a4)
1c00b58a:	6705                	lui	a4,0x1
1c00b58c:	613a77b7          	lui	a5,0x613a7
1c00b590:	f1770713          	addi	a4,a4,-233 # f17 <__CTOR_LIST__-0x1bfff0ed>
1c00b594:	970a                	add	a4,a4,sp
1c00b596:	5db78793          	addi	a5,a5,1499 # 613a75db <__l2_shared_end+0x453975db>
1c00b59a:	c31c                	sw	a5,0(a4)
1c00b59c:	6705                	lui	a4,0x1
1c00b59e:	18dbd7b7          	lui	a5,0x18dbd
1c00b5a2:	f1b70713          	addi	a4,a4,-229 # f1b <__CTOR_LIST__-0x1bfff0e9>
1c00b5a6:	970a                	add	a4,a4,sp
1c00b5a8:	7c078793          	addi	a5,a5,1984 # 18dbd7c0 <__CTOR_LIST__-0x3242844>
1c00b5ac:	c31c                	sw	a5,0(a4)
1c00b5ae:	6705                	lui	a4,0x1
1c00b5b0:	2856c7b7          	lui	a5,0x2856c
1c00b5b4:	f1f70713          	addi	a4,a4,-225 # f1f <__CTOR_LIST__-0x1bfff0e5>
1c00b5b8:	970a                	add	a4,a4,sp
1c00b5ba:	23078793          	addi	a5,a5,560 # 2856c230 <__l2_shared_end+0xc55c230>
1c00b5be:	c31c                	sw	a5,0(a4)
1c00b5c0:	6705                	lui	a4,0x1
1c00b5c2:	cc8527b7          	lui	a5,0xcc852
1c00b5c6:	f2370713          	addi	a4,a4,-221 # f23 <__CTOR_LIST__-0x1bfff0e1>
1c00b5ca:	970a                	add	a4,a4,sp
1c00b5cc:	c8c78793          	addi	a5,a5,-884 # cc851c8c <pulp__FC+0xcc851c8d>
1c00b5d0:	c31c                	sw	a5,0(a4)
1c00b5d2:	6705                	lui	a4,0x1
1c00b5d4:	83e5c7b7          	lui	a5,0x83e5c
1c00b5d8:	f2770713          	addi	a4,a4,-217 # f27 <__CTOR_LIST__-0x1bfff0dd>
1c00b5dc:	970a                	add	a4,a4,sp
1c00b5de:	c9b78793          	addi	a5,a5,-869 # 83e5bc9b <pulp__FC+0x83e5bc9c>
1c00b5e2:	c31c                	sw	a5,0(a4)
1c00b5e4:	6705                	lui	a4,0x1
1c00b5e6:	28c5e7b7          	lui	a5,0x28c5e
1c00b5ea:	f2b70713          	addi	a4,a4,-213 # f2b <__CTOR_LIST__-0x1bfff0d9>
1c00b5ee:	970a                	add	a4,a4,sp
1c00b5f0:	a6678793          	addi	a5,a5,-1434 # 28c5da66 <__l2_shared_end+0xcc4da66>
1c00b5f4:	c31c                	sw	a5,0(a4)
1c00b5f6:	6705                	lui	a4,0x1
1c00b5f8:	1bd697b7          	lui	a5,0x1bd69
1c00b5fc:	f2f70713          	addi	a4,a4,-209 # f2f <__CTOR_LIST__-0x1bfff0d5>
1c00b600:	970a                	add	a4,a4,sp
1c00b602:	3c878793          	addi	a5,a5,968 # 1bd693c8 <__CTOR_LIST__-0x296c3c>
1c00b606:	c31c                	sw	a5,0(a4)
1c00b608:	6705                	lui	a4,0x1
1c00b60a:	cb0b87b7          	lui	a5,0xcb0b8
1c00b60e:	f3370713          	addi	a4,a4,-205 # f33 <__CTOR_LIST__-0x1bfff0d1>
1c00b612:	970a                	add	a4,a4,sp
1c00b614:	56978793          	addi	a5,a5,1385 # cb0b8569 <pulp__FC+0xcb0b856a>
1c00b618:	c31c                	sw	a5,0(a4)
1c00b61a:	6705                	lui	a4,0x1
1c00b61c:	838e77b7          	lui	a5,0x838e7
1c00b620:	f3770713          	addi	a4,a4,-201 # f37 <__CTOR_LIST__-0x1bfff0cd>
1c00b624:	970a                	add	a4,a4,sp
1c00b626:	58278793          	addi	a5,a5,1410 # 838e7582 <pulp__FC+0x838e7583>
1c00b62a:	c31c                	sw	a5,0(a4)
1c00b62c:	6705                	lui	a4,0x1
1c00b62e:	f8e137b7          	lui	a5,0xf8e13
1c00b632:	f3b70713          	addi	a4,a4,-197 # f3b <__CTOR_LIST__-0x1bfff0c9>
1c00b636:	970a                	add	a4,a4,sp
1c00b638:	66978793          	addi	a5,a5,1641 # f8e13669 <pulp__FC+0xf8e1366a>
1c00b63c:	c31c                	sw	a5,0(a4)
1c00b63e:	6705                	lui	a4,0x1
1c00b640:	586147b7          	lui	a5,0x58614
1c00b644:	f3f70713          	addi	a4,a4,-193 # f3f <__CTOR_LIST__-0x1bfff0c5>
1c00b648:	970a                	add	a4,a4,sp
1c00b64a:	81678793          	addi	a5,a5,-2026 # 58613816 <__l2_shared_end+0x3c603816>
1c00b64e:	c31c                	sw	a5,0(a4)
1c00b650:	6705                	lui	a4,0x1
1c00b652:	d3ca87b7          	lui	a5,0xd3ca8
1c00b656:	f4370713          	addi	a4,a4,-189 # f43 <__CTOR_LIST__-0x1bfff0c1>
1c00b65a:	970a                	add	a4,a4,sp
1c00b65c:	26478793          	addi	a5,a5,612 # d3ca8264 <pulp__FC+0xd3ca8265>
1c00b660:	c31c                	sw	a5,0(a4)
1c00b662:	6705                	lui	a4,0x1
1c00b664:	43b157b7          	lui	a5,0x43b15
1c00b668:	f4770713          	addi	a4,a4,-185 # f47 <__CTOR_LIST__-0x1bfff0bd>
1c00b66c:	970a                	add	a4,a4,sp
1c00b66e:	d5b78793          	addi	a5,a5,-677 # 43b14d5b <__l2_shared_end+0x27b04d5b>
1c00b672:	c31c                	sw	a5,0(a4)
1c00b674:	6705                	lui	a4,0x1
1c00b676:	8069b7b7          	lui	a5,0x8069b
1c00b67a:	f4b70713          	addi	a4,a4,-181 # f4b <__CTOR_LIST__-0x1bfff0b9>
1c00b67e:	970a                	add	a4,a4,sp
1c00b680:	d7f78793          	addi	a5,a5,-641 # 8069ad7f <pulp__FC+0x8069ad80>
1c00b684:	c31c                	sw	a5,0(a4)
1c00b686:	6705                	lui	a4,0x1
1c00b688:	b18067b7          	lui	a5,0xb1806
1c00b68c:	f4f70713          	addi	a4,a4,-177 # f4f <__CTOR_LIST__-0x1bfff0b5>
1c00b690:	970a                	add	a4,a4,sp
1c00b692:	2b678793          	addi	a5,a5,694 # b18062b6 <pulp__FC+0xb18062b7>
1c00b696:	c31c                	sw	a5,0(a4)
1c00b698:	6705                	lui	a4,0x1
1c00b69a:	f57237b7          	lui	a5,0xf5723
1c00b69e:	f5370713          	addi	a4,a4,-173 # f53 <__CTOR_LIST__-0x1bfff0b1>
1c00b6a2:	970a                	add	a4,a4,sp
1c00b6a4:	d6578793          	addi	a5,a5,-667 # f5722d65 <pulp__FC+0xf5722d66>
1c00b6a8:	c31c                	sw	a5,0(a4)
1c00b6aa:	6785                	lui	a5,0x1
1c00b6ac:	f5778793          	addi	a5,a5,-169 # f57 <__CTOR_LIST__-0x1bfff0ad>
1c00b6b0:	72468693          	addi	a3,a3,1828
1c00b6b4:	978a                	add	a5,a5,sp
1c00b6b6:	6705                	lui	a4,0x1
1c00b6b8:	c394                	sw	a3,0(a5)
1c00b6ba:	f5b70713          	addi	a4,a4,-165 # f5b <__CTOR_LIST__-0x1bfff0a9>
1c00b6be:	9ec287b7          	lui	a5,0x9ec28
1c00b6c2:	970a                	add	a4,a4,sp
1c00b6c4:	55f78793          	addi	a5,a5,1375 # 9ec2855f <pulp__FC+0x9ec28560>
1c00b6c8:	c31c                	sw	a5,0(a4)
1c00b6ca:	6705                	lui	a4,0x1
1c00b6cc:	8915b7b7          	lui	a5,0x8915b
1c00b6d0:	f5f70713          	addi	a4,a4,-161 # f5f <__CTOR_LIST__-0x1bfff0a5>
1c00b6d4:	970a                	add	a4,a4,sp
1c00b6d6:	27578793          	addi	a5,a5,629 # 8915b275 <pulp__FC+0x8915b276>
1c00b6da:	c31c                	sw	a5,0(a4)
1c00b6dc:	6705                	lui	a4,0x1
1c00b6de:	88f5a7b7          	lui	a5,0x88f5a
1c00b6e2:	f6370713          	addi	a4,a4,-157 # f63 <__CTOR_LIST__-0x1bfff0a1>
1c00b6e6:	970a                	add	a4,a4,sp
1c00b6e8:	43378793          	addi	a5,a5,1075 # 88f5a433 <pulp__FC+0x88f5a434>
1c00b6ec:	c31c                	sw	a5,0(a4)
1c00b6ee:	6705                	lui	a4,0x1
1c00b6f0:	b520b7b7          	lui	a5,0xb520b
1c00b6f4:	f6770713          	addi	a4,a4,-153 # f67 <__CTOR_LIST__-0x1bfff09d>
1c00b6f8:	970a                	add	a4,a4,sp
1c00b6fa:	37d78793          	addi	a5,a5,893 # b520b37d <pulp__FC+0xb520b37e>
1c00b6fe:	c31c                	sw	a5,0(a4)
1c00b700:	6705                	lui	a4,0x1
1c00b702:	cacbd7b7          	lui	a5,0xcacbd
1c00b706:	f6b70713          	addi	a4,a4,-149 # f6b <__CTOR_LIST__-0x1bfff099>
1c00b70a:	970a                	add	a4,a4,sp
1c00b70c:	d8378793          	addi	a5,a5,-637 # cacbcd83 <pulp__FC+0xcacbcd84>
1c00b710:	c31c                	sw	a5,0(a4)
1c00b712:	6705                	lui	a4,0x1
1c00b714:	21ac57b7          	lui	a5,0x21ac5
1c00b718:	f6f70713          	addi	a4,a4,-145 # f6f <__CTOR_LIST__-0x1bfff095>
1c00b71c:	970a                	add	a4,a4,sp
1c00b71e:	e2778793          	addi	a5,a5,-473 # 21ac4e27 <__l2_shared_end+0x5ab4e27>
1c00b722:	c31c                	sw	a5,0(a4)
1c00b724:	6705                	lui	a4,0x1
1c00b726:	792877b7          	lui	a5,0x79287
1c00b72a:	f7370713          	addi	a4,a4,-141 # f73 <__CTOR_LIST__-0x1bfff091>
1c00b72e:	970a                	add	a4,a4,sp
1c00b730:	0f878793          	addi	a5,a5,248 # 792870f8 <__l2_shared_end+0x5d2770f8>
1c00b734:	c31c                	sw	a5,0(a4)
1c00b736:	6705                	lui	a4,0x1
1c00b738:	fb4ac7b7          	lui	a5,0xfb4ac
1c00b73c:	f7770713          	addi	a4,a4,-137 # f77 <__CTOR_LIST__-0x1bfff08d>
1c00b740:	970a                	add	a4,a4,sp
1c00b742:	cb878793          	addi	a5,a5,-840 # fb4abcb8 <pulp__FC+0xfb4abcb9>
1c00b746:	c31c                	sw	a5,0(a4)
1c00b748:	6705                	lui	a4,0x1
1c00b74a:	6d05c7b7          	lui	a5,0x6d05c
1c00b74e:	f7b70713          	addi	a4,a4,-133 # f7b <__CTOR_LIST__-0x1bfff089>
1c00b752:	970a                	add	a4,a4,sp
1c00b754:	a6278793          	addi	a5,a5,-1438 # 6d05ba62 <__l2_shared_end+0x5104ba62>
1c00b758:	c31c                	sw	a5,0(a4)
1c00b75a:	6705                	lui	a4,0x1
1c00b75c:	921267b7          	lui	a5,0x92126
1c00b760:	f7f70713          	addi	a4,a4,-129 # f7f <__CTOR_LIST__-0x1bfff085>
1c00b764:	970a                	add	a4,a4,sp
1c00b766:	51478793          	addi	a5,a5,1300 # 92126514 <pulp__FC+0x92126515>
1c00b76a:	c31c                	sw	a5,0(a4)
1c00b76c:	6705                	lui	a4,0x1
1c00b76e:	65c757b7          	lui	a5,0x65c75
1c00b772:	f8370713          	addi	a4,a4,-125 # f83 <__CTOR_LIST__-0x1bfff081>
1c00b776:	970a                	add	a4,a4,sp
1c00b778:	41578793          	addi	a5,a5,1045 # 65c75415 <__l2_shared_end+0x49c65415>
1c00b77c:	c31c                	sw	a5,0(a4)
1c00b77e:	6705                	lui	a4,0x1
1c00b780:	964c57b7          	lui	a5,0x964c5
1c00b784:	f8770713          	addi	a4,a4,-121 # f87 <__CTOR_LIST__-0x1bfff07d>
1c00b788:	970a                	add	a4,a4,sp
1c00b78a:	d4678793          	addi	a5,a5,-698 # 964c4d46 <pulp__FC+0x964c4d47>
1c00b78e:	c31c                	sw	a5,0(a4)
1c00b790:	6705                	lui	a4,0x1
1c00b792:	979a47b7          	lui	a5,0x979a4
1c00b796:	f8b70713          	addi	a4,a4,-117 # f8b <__CTOR_LIST__-0x1bfff079>
1c00b79a:	970a                	add	a4,a4,sp
1c00b79c:	cbd78793          	addi	a5,a5,-835 # 979a3cbd <pulp__FC+0x979a3cbe>
1c00b7a0:	c31c                	sw	a5,0(a4)
1c00b7a2:	6705                	lui	a4,0x1
1c00b7a4:	337c27b7          	lui	a5,0x337c2
1c00b7a8:	f8f70713          	addi	a4,a4,-113 # f8f <__CTOR_LIST__-0x1bfff075>
1c00b7ac:	970a                	add	a4,a4,sp
1c00b7ae:	82078793          	addi	a5,a5,-2016 # 337c1820 <__l2_shared_end+0x177b1820>
1c00b7b2:	c31c                	sw	a5,0(a4)
1c00b7b4:	6705                	lui	a4,0x1
1c00b7b6:	3b59d7b7          	lui	a5,0x3b59d
1c00b7ba:	f9370713          	addi	a4,a4,-109 # f93 <__CTOR_LIST__-0x1bfff071>
1c00b7be:	970a                	add	a4,a4,sp
1c00b7c0:	03978793          	addi	a5,a5,57 # 3b59d039 <__l2_shared_end+0x1f58d039>
1c00b7c4:	c31c                	sw	a5,0(a4)
1c00b7c6:	6705                	lui	a4,0x1
1c00b7c8:	91a5c7b7          	lui	a5,0x91a5c
1c00b7cc:	f9770713          	addi	a4,a4,-105 # f97 <__CTOR_LIST__-0x1bfff06d>
1c00b7d0:	970a                	add	a4,a4,sp
1c00b7d2:	bc478793          	addi	a5,a5,-1084 # 91a5bbc4 <pulp__FC+0x91a5bbc5>
1c00b7d6:	c31c                	sw	a5,0(a4)
1c00b7d8:	6705                	lui	a4,0x1
1c00b7da:	f69f47b7          	lui	a5,0xf69f4
1c00b7de:	f9b70713          	addi	a4,a4,-101 # f9b <__CTOR_LIST__-0x1bfff069>
1c00b7e2:	970a                	add	a4,a4,sp
1c00b7e4:	65578793          	addi	a5,a5,1621 # f69f4655 <pulp__FC+0xf69f4656>
1c00b7e8:	c31c                	sw	a5,0(a4)
1c00b7ea:	6705                	lui	a4,0x1
1c00b7ec:	5f8a77b7          	lui	a5,0x5f8a7
1c00b7f0:	f9f70713          	addi	a4,a4,-97 # f9f <__CTOR_LIST__-0x1bfff065>
1c00b7f4:	970a                	add	a4,a4,sp
1c00b7f6:	8b878793          	addi	a5,a5,-1864 # 5f8a68b8 <__l2_shared_end+0x438968b8>
1c00b7fa:	c31c                	sw	a5,0(a4)
1c00b7fc:	6705                	lui	a4,0x1
1c00b7fe:	466c07b7          	lui	a5,0x466c0
1c00b802:	fa370713          	addi	a4,a4,-93 # fa3 <__CTOR_LIST__-0x1bfff061>
1c00b806:	970a                	add	a4,a4,sp
1c00b808:	ac578793          	addi	a5,a5,-1339 # 466bfac5 <__l2_shared_end+0x2a6afac5>
1c00b80c:	c31c                	sw	a5,0(a4)
1c00b80e:	6705                	lui	a4,0x1
1c00b810:	680607b7          	lui	a5,0x68060
1c00b814:	fa770713          	addi	a4,a4,-89 # fa7 <__CTOR_LIST__-0x1bfff05d>
1c00b818:	970a                	add	a4,a4,sp
1c00b81a:	7d478793          	addi	a5,a5,2004 # 680607d4 <__l2_shared_end+0x4c0507d4>
1c00b81e:	c31c                	sw	a5,0(a4)
1c00b820:	6705                	lui	a4,0x1
1c00b822:	5f8c17b7          	lui	a5,0x5f8c1
1c00b826:	fab70713          	addi	a4,a4,-85 # fab <__CTOR_LIST__-0x1bfff059>
1c00b82a:	970a                	add	a4,a4,sp
1c00b82c:	6bd78793          	addi	a5,a5,1725 # 5f8c16bd <__l2_shared_end+0x438b16bd>
1c00b830:	c31c                	sw	a5,0(a4)
1c00b832:	6705                	lui	a4,0x1
1c00b834:	769267b7          	lui	a5,0x76926
1c00b838:	faf70713          	addi	a4,a4,-81 # faf <__CTOR_LIST__-0x1bfff055>
1c00b83c:	970a                	add	a4,a4,sp
1c00b83e:	47978793          	addi	a5,a5,1145 # 76926479 <__l2_shared_end+0x5a916479>
1c00b842:	c31c                	sw	a5,0(a4)
1c00b844:	6705                	lui	a4,0x1
1c00b846:	999947b7          	lui	a5,0x99994
1c00b84a:	fb370713          	addi	a4,a4,-77 # fb3 <__CTOR_LIST__-0x1bfff051>
1c00b84e:	970a                	add	a4,a4,sp
1c00b850:	07a5                	addi	a5,a5,9
1c00b852:	c31c                	sw	a5,0(a4)
1c00b854:	6705                	lui	a4,0x1
1c00b856:	368267b7          	lui	a5,0x36826
1c00b85a:	fb770713          	addi	a4,a4,-73 # fb7 <__CTOR_LIST__-0x1bfff04d>
1c00b85e:	970a                	add	a4,a4,sp
1c00b860:	22778793          	addi	a5,a5,551 # 36826227 <__l2_shared_end+0x1a816227>
1c00b864:	c31c                	sw	a5,0(a4)
1c00b866:	6705                	lui	a4,0x1
1c00b868:	682947b7          	lui	a5,0x68294
1c00b86c:	fbb70713          	addi	a4,a4,-69 # fbb <__CTOR_LIST__-0x1bfff049>
1c00b870:	970a                	add	a4,a4,sp
1c00b872:	1b278793          	addi	a5,a5,434 # 682941b2 <__l2_shared_end+0x4c2841b2>
1c00b876:	c31c                	sw	a5,0(a4)
1c00b878:	6705                	lui	a4,0x1
1c00b87a:	bc2c97b7          	lui	a5,0xbc2c9
1c00b87e:	fbf70713          	addi	a4,a4,-65 # fbf <__CTOR_LIST__-0x1bfff045>
1c00b882:	970a                	add	a4,a4,sp
1c00b884:	d4378793          	addi	a5,a5,-701 # bc2c8d43 <pulp__FC+0xbc2c8d44>
1c00b888:	c31c                	sw	a5,0(a4)
1c00b88a:	6705                	lui	a4,0x1
1c00b88c:	bc8a97b7          	lui	a5,0xbc8a9
1c00b890:	fc370713          	addi	a4,a4,-61 # fc3 <__CTOR_LIST__-0x1bfff041>
1c00b894:	970a                	add	a4,a4,sp
1c00b896:	72a78793          	addi	a5,a5,1834 # bc8a972a <pulp__FC+0xbc8a972b>
1c00b89a:	c31c                	sw	a5,0(a4)
1c00b89c:	6705                	lui	a4,0x1
1c00b89e:	292077b7          	lui	a5,0x29207
1c00b8a2:	fc770713          	addi	a4,a4,-57 # fc7 <__CTOR_LIST__-0x1bfff03d>
1c00b8a6:	970a                	add	a4,a4,sp
1c00b8a8:	30978793          	addi	a5,a5,777 # 29207309 <__l2_shared_end+0xd1f7309>
1c00b8ac:	c31c                	sw	a5,0(a4)
1c00b8ae:	6705                	lui	a4,0x1
1c00b8b0:	e4d717b7          	lui	a5,0xe4d71
1c00b8b4:	fcb70713          	addi	a4,a4,-53 # fcb <__CTOR_LIST__-0x1bfff039>
1c00b8b8:	970a                	add	a4,a4,sp
1c00b8ba:	e1b78793          	addi	a5,a5,-485 # e4d70e1b <pulp__FC+0xe4d70e1c>
1c00b8be:	c31c                	sw	a5,0(a4)
1c00b8c0:	6705                	lui	a4,0x1
1c00b8c2:	bbc927b7          	lui	a5,0xbbc92
1c00b8c6:	fcf70713          	addi	a4,a4,-49 # fcf <__CTOR_LIST__-0x1bfff035>
1c00b8ca:	970a                	add	a4,a4,sp
1c00b8cc:	e6378793          	addi	a5,a5,-413 # bbc91e63 <pulp__FC+0xbbc91e64>
1c00b8d0:	c31c                	sw	a5,0(a4)
1c00b8d2:	6705                	lui	a4,0x1
1c00b8d4:	3ac697b7          	lui	a5,0x3ac69
1c00b8d8:	fd370713          	addi	a4,a4,-45 # fd3 <__CTOR_LIST__-0x1bfff031>
1c00b8dc:	970a                	add	a4,a4,sp
1c00b8de:	ae278793          	addi	a5,a5,-1310 # 3ac68ae2 <__l2_shared_end+0x1ec58ae2>
1c00b8e2:	c31c                	sw	a5,0(a4)
1c00b8e4:	6705                	lui	a4,0x1
1c00b8e6:	970e87b7          	lui	a5,0x970e8
1c00b8ea:	fd770713          	addi	a4,a4,-41 # fd7 <__CTOR_LIST__-0x1bfff02d>
1c00b8ee:	970a                	add	a4,a4,sp
1c00b8f0:	6b678793          	addi	a5,a5,1718 # 970e86b6 <pulp__FC+0x970e86b7>
1c00b8f4:	c31c                	sw	a5,0(a4)
1c00b8f6:	6705                	lui	a4,0x1
1c00b8f8:	2a55c7b7          	lui	a5,0x2a55c
1c00b8fc:	fdb70713          	addi	a4,a4,-37 # fdb <__CTOR_LIST__-0x1bfff029>
1c00b900:	970a                	add	a4,a4,sp
1c00b902:	16a78793          	addi	a5,a5,362 # 2a55c16a <__l2_shared_end+0xe54c16a>
1c00b906:	c31c                	sw	a5,0(a4)
1c00b908:	6705                	lui	a4,0x1
1c00b90a:	7d8947b7          	lui	a5,0x7d894
1c00b90e:	fdf70713          	addi	a4,a4,-33 # fdf <__CTOR_LIST__-0x1bfff025>
1c00b912:	970a                	add	a4,a4,sp
1c00b914:	3fc78793          	addi	a5,a5,1020 # 7d8943fc <__l2_shared_end+0x618843fc>
1c00b918:	c31c                	sw	a5,0(a4)
1c00b91a:	6705                	lui	a4,0x1
1c00b91c:	92a037b7          	lui	a5,0x92a03
1c00b920:	170d                	addi	a4,a4,-29
1c00b922:	970a                	add	a4,a4,sp
1c00b924:	76978793          	addi	a5,a5,1897 # 92a03769 <pulp__FC+0x92a0376a>
1c00b928:	c31c                	sw	a5,0(a4)
1c00b92a:	6705                	lui	a4,0x1
1c00b92c:	81c437b7          	lui	a5,0x81c43
1c00b930:	171d                	addi	a4,a4,-25
1c00b932:	970a                	add	a4,a4,sp
1c00b934:	d4378793          	addi	a5,a5,-701 # 81c42d43 <pulp__FC+0x81c42d44>
1c00b938:	c31c                	sw	a5,0(a4)
1c00b93a:	6705                	lui	a4,0x1
1c00b93c:	a1c317b7          	lui	a5,0xa1c31
1c00b940:	172d                	addi	a4,a4,-21
1c00b942:	970a                	add	a4,a4,sp
1c00b944:	4a978793          	addi	a5,a5,1193 # a1c314a9 <pulp__FC+0xa1c314aa>
1c00b948:	c31c                	sw	a5,0(a4)
1c00b94a:	6705                	lui	a4,0x1
1c00b94c:	004347b7          	lui	a5,0x434
1c00b950:	173d                	addi	a4,a4,-17
1c00b952:	970a                	add	a4,a4,sp
1c00b954:	c2778793          	addi	a5,a5,-985 # 433c27 <__CTOR_LIST__-0x1bbcc3dd>
1c00b958:	c31c                	sw	a5,0(a4)
1c00b95a:	6705                	lui	a4,0x1
1c00b95c:	23c597b7          	lui	a5,0x23c59
1c00b960:	174d                	addi	a4,a4,-13
1c00b962:	970a                	add	a4,a4,sp
1c00b964:	e9e78793          	addi	a5,a5,-354 # 23c58e9e <__l2_shared_end+0x7c48e9e>
1c00b968:	c31c                	sw	a5,0(a4)
1c00b96a:	6705                	lui	a4,0x1
1c00b96c:	d9ce97b7          	lui	a5,0xd9ce9
1c00b970:	175d                	addi	a4,a4,-9
1c00b972:	970a                	add	a4,a4,sp
1c00b974:	3cb78793          	addi	a5,a5,971 # d9ce93cb <pulp__FC+0xd9ce93cc>
1c00b978:	c31c                	sw	a5,0(a4)
1c00b97a:	6705                	lui	a4,0x1
1c00b97c:	909097b7          	lui	a5,0x90909
1c00b980:	176d                	addi	a4,a4,-5
1c00b982:	970a                	add	a4,a4,sp
1c00b984:	f8978793          	addi	a5,a5,-119 # 90908f89 <pulp__FC+0x90908f8a>
1c00b988:	c31c                	sw	a5,0(a4)
1c00b98a:	6705                	lui	a4,0x1
1c00b98c:	6eba47b7          	lui	a5,0x6eba4
1c00b990:	177d                	addi	a4,a4,-1
1c00b992:	970a                	add	a4,a4,sp
1c00b994:	05378793          	addi	a5,a5,83 # 6eba4053 <__l2_shared_end+0x52b94053>
1c00b998:	c31c                	sw	a5,0(a4)
1c00b99a:	6705                	lui	a4,0x1
1c00b99c:	2d57c7b7          	lui	a5,0x2d57c
1c00b9a0:	070d                	addi	a4,a4,3
1c00b9a2:	970a                	add	a4,a4,sp
1c00b9a4:	c0178793          	addi	a5,a5,-1023 # 2d57bc01 <__l2_shared_end+0x1156bc01>
1c00b9a8:	c31c                	sw	a5,0(a4)
1c00b9aa:	6705                	lui	a4,0x1
1c00b9ac:	fa93b7b7          	lui	a5,0xfa93b
1c00b9b0:	071d                	addi	a4,a4,7
1c00b9b2:	970a                	add	a4,a4,sp
1c00b9b4:	80378793          	addi	a5,a5,-2045 # fa93a803 <pulp__FC+0xfa93a804>
1c00b9b8:	c31c                	sw	a5,0(a4)
1c00b9ba:	6705                	lui	a4,0x1
1c00b9bc:	77f1                	lui	a5,0xffffc
1c00b9be:	072d                	addi	a4,a4,11
1c00b9c0:	970a                	add	a4,a4,sp
1c00b9c2:	42178793          	addi	a5,a5,1057 # ffffc421 <pulp__FC+0xffffc422>
1c00b9c6:	00f71023          	sh	a5,0(a4) # 1000 <__CTOR_LIST__-0x1bfff004>
1c00b9ca:	6705                	lui	a4,0x1
1c00b9cc:	0735                	addi	a4,a4,13
1c00b9ce:	970a                	add	a4,a4,sp
1c00b9d0:	03400793          	li	a5,52
1c00b9d4:	00f70023          	sb	a5,0(a4) # 1000 <__CTOR_LIST__-0x1bfff004>
1c00b9d8:	6705                	lui	a4,0x1
1c00b9da:	3edc97b7          	lui	a5,0x3edc9
1c00b9de:	0739                	addi	a4,a4,14
1c00b9e0:	970a                	add	a4,a4,sp
1c00b9e2:	82d78793          	addi	a5,a5,-2003 # 3edc882d <__l2_shared_end+0x22db882d>
1c00b9e6:	c31c                	sw	a5,0(a4)
1c00b9e8:	6705                	lui	a4,0x1
1c00b9ea:	1f3bb7b7          	lui	a5,0x1f3bb
1c00b9ee:	0749                	addi	a4,a4,18
1c00b9f0:	970a                	add	a4,a4,sp
1c00b9f2:	37778793          	addi	a5,a5,887 # 1f3bb377 <__l2_shared_end+0x33ab377>
1c00b9f6:	c31c                	sw	a5,0(a4)
1c00b9f8:	6705                	lui	a4,0x1
1c00b9fa:	dbdc67b7          	lui	a5,0xdbdc6
1c00b9fe:	0759                	addi	a4,a4,22
1c00ba00:	970a                	add	a4,a4,sp
1c00ba02:	3c078793          	addi	a5,a5,960 # dbdc63c0 <pulp__FC+0xdbdc63c1>
1c00ba06:	c31c                	sw	a5,0(a4)
1c00ba08:	6705                	lui	a4,0x1
1c00ba0a:	4f8ca7b7          	lui	a5,0x4f8ca
1c00ba0e:	0769                	addi	a4,a4,26
1c00ba10:	970a                	add	a4,a4,sp
1c00ba12:	d6878793          	addi	a5,a5,-664 # 4f8c9d68 <__l2_shared_end+0x338b9d68>
1c00ba16:	c31c                	sw	a5,0(a4)
1c00ba18:	6705                	lui	a4,0x1
1c00ba1a:	e80c87b7          	lui	a5,0xe80c8
1c00ba1e:	0779                	addi	a4,a4,30
1c00ba20:	970a                	add	a4,a4,sp
1c00ba22:	4fc78793          	addi	a5,a5,1276 # e80c84fc <pulp__FC+0xe80c84fd>
1c00ba26:	c31c                	sw	a5,0(a4)
1c00ba28:	6705                	lui	a4,0x1
1c00ba2a:	47b3d7b7          	lui	a5,0x47b3d
1c00ba2e:	02270713          	addi	a4,a4,34 # 1022 <__CTOR_LIST__-0x1bffefe2>
1c00ba32:	970a                	add	a4,a4,sp
1c00ba34:	f7978793          	addi	a5,a5,-135 # 47b3cf79 <__l2_shared_end+0x2bb2cf79>
1c00ba38:	c31c                	sw	a5,0(a4)
1c00ba3a:	6705                	lui	a4,0x1
1c00ba3c:	2c5187b7          	lui	a5,0x2c518
1c00ba40:	02670713          	addi	a4,a4,38 # 1026 <__CTOR_LIST__-0x1bffefde>
1c00ba44:	970a                	add	a4,a4,sp
1c00ba46:	51378793          	addi	a5,a5,1299 # 2c518513 <__l2_shared_end+0x10508513>
1c00ba4a:	c31c                	sw	a5,0(a4)
1c00ba4c:	6705                	lui	a4,0x1
1c00ba4e:	1359c7b7          	lui	a5,0x1359c
1c00ba52:	02a70713          	addi	a4,a4,42 # 102a <__CTOR_LIST__-0x1bffefda>
1c00ba56:	970a                	add	a4,a4,sp
1c00ba58:	7c778793          	addi	a5,a5,1991 # 1359c7c7 <__CTOR_LIST__-0x8a6383d>
1c00ba5c:	c31c                	sw	a5,0(a4)
1c00ba5e:	6705                	lui	a4,0x1
1c00ba60:	c8fab7b7          	lui	a5,0xc8fab
1c00ba64:	02e70713          	addi	a4,a4,46 # 102e <__CTOR_LIST__-0x1bffefd6>
1c00ba68:	970a                	add	a4,a4,sp
1c00ba6a:	18378793          	addi	a5,a5,387 # c8fab183 <pulp__FC+0xc8fab184>
1c00ba6e:	c31c                	sw	a5,0(a4)
1c00ba70:	6705                	lui	a4,0x1
1c00ba72:	1cbb37b7          	lui	a5,0x1cbb3
1c00ba76:	03270713          	addi	a4,a4,50 # 1032 <__CTOR_LIST__-0x1bffefd2>
1c00ba7a:	970a                	add	a4,a4,sp
1c00ba7c:	29878793          	addi	a5,a5,664 # 1cbb3298 <__l2_shared_end+0xba3298>
1c00ba80:	c31c                	sw	a5,0(a4)
1c00ba82:	6705                	lui	a4,0x1
1c00ba84:	6d4e37b7          	lui	a5,0x6d4e3
1c00ba88:	03670713          	addi	a4,a4,54 # 1036 <__CTOR_LIST__-0x1bffefce>
1c00ba8c:	970a                	add	a4,a4,sp
1c00ba8e:	2b378793          	addi	a5,a5,691 # 6d4e32b3 <__l2_shared_end+0x514d32b3>
1c00ba92:	c31c                	sw	a5,0(a4)
1c00ba94:	6705                	lui	a4,0x1
1c00ba96:	889177b7          	lui	a5,0x88917
1c00ba9a:	03a70713          	addi	a4,a4,58 # 103a <__CTOR_LIST__-0x1bffefca>
1c00ba9e:	970a                	add	a4,a4,sp
1c00baa0:	82878793          	addi	a5,a5,-2008 # 88916828 <pulp__FC+0x88916829>
1c00baa4:	c31c                	sw	a5,0(a4)
1c00baa6:	6705                	lui	a4,0x1
1c00baa8:	ca20d7b7          	lui	a5,0xca20d
1c00baac:	03e70713          	addi	a4,a4,62 # 103e <__CTOR_LIST__-0x1bffefc6>
1c00bab0:	970a                	add	a4,a4,sp
1c00bab2:	b4478793          	addi	a5,a5,-1212 # ca20cb44 <pulp__FC+0xca20cb45>
1c00bab6:	c31c                	sw	a5,0(a4)
1c00bab8:	6705                	lui	a4,0x1
1c00baba:	b41307b7          	lui	a5,0xb4130
1c00babe:	04270713          	addi	a4,a4,66 # 1042 <__CTOR_LIST__-0x1bffefc2>
1c00bac2:	970a                	add	a4,a4,sp
1c00bac4:	84d78793          	addi	a5,a5,-1971 # b412f84d <pulp__FC+0xb412f84e>
1c00bac8:	c31c                	sw	a5,0(a4)
1c00baca:	6705                	lui	a4,0x1
1c00bacc:	2a1927b7          	lui	a5,0x2a192
1c00bad0:	04670713          	addi	a4,a4,70 # 1046 <__CTOR_LIST__-0x1bffefbe>
1c00bad4:	970a                	add	a4,a4,sp
1c00bad6:	42878793          	addi	a5,a5,1064 # 2a192428 <__l2_shared_end+0xe182428>
1c00bada:	c31c                	sw	a5,0(a4)
1c00badc:	6705                	lui	a4,0x1
1c00bade:	300447b7          	lui	a5,0x30044
1c00bae2:	04a70713          	addi	a4,a4,74 # 104a <__CTOR_LIST__-0x1bffefba>
1c00bae6:	970a                	add	a4,a4,sp
1c00bae8:	84378793          	addi	a5,a5,-1981 # 30043843 <__l2_shared_end+0x14033843>
1c00baec:	c31c                	sw	a5,0(a4)
1c00baee:	6705                	lui	a4,0x1
1c00baf0:	3a7f87b7          	lui	a5,0x3a7f8
1c00baf4:	04e70713          	addi	a4,a4,78 # 104e <__CTOR_LIST__-0x1bffefb6>
1c00baf8:	970a                	add	a4,a4,sp
1c00bafa:	aa378793          	addi	a5,a5,-1373 # 3a7f7aa3 <__l2_shared_end+0x1e7e7aa3>
1c00bafe:	c31c                	sw	a5,0(a4)
1c00bb00:	6705                	lui	a4,0x1
1c00bb02:	64d027b7          	lui	a5,0x64d02
1c00bb06:	05270713          	addi	a4,a4,82 # 1052 <__CTOR_LIST__-0x1bffefb2>
1c00bb0a:	970a                	add	a4,a4,sp
1c00bb0c:	ec478793          	addi	a5,a5,-316 # 64d01ec4 <__l2_shared_end+0x48cf1ec4>
1c00bb10:	c31c                	sw	a5,0(a4)
1c00bb12:	6705                	lui	a4,0x1
1c00bb14:	1555e7b7          	lui	a5,0x1555e
1c00bb18:	05670713          	addi	a4,a4,86 # 1056 <__CTOR_LIST__-0x1bffefae>
1c00bb1c:	970a                	add	a4,a4,sp
1c00bb1e:	0cf78793          	addi	a5,a5,207 # 1555e0cf <__CTOR_LIST__-0x6aa1f35>
1c00bb22:	c31c                	sw	a5,0(a4)
1c00bb24:	6705                	lui	a4,0x1
1c00bb26:	c0b597b7          	lui	a5,0xc0b59
1c00bb2a:	05a70713          	addi	a4,a4,90 # 105a <__CTOR_LIST__-0x1bffefaa>
1c00bb2e:	970a                	add	a4,a4,sp
1c00bb30:	17b78793          	addi	a5,a5,379 # c0b5917b <pulp__FC+0xc0b5917c>
1c00bb34:	c31c                	sw	a5,0(a4)
1c00bb36:	6705                	lui	a4,0x1
1c00bb38:	a6b797b7          	lui	a5,0xa6b79
1c00bb3c:	05e70713          	addi	a4,a4,94 # 105e <__CTOR_LIST__-0x1bffefa6>
1c00bb40:	970a                	add	a4,a4,sp
1c00bb42:	f1078793          	addi	a5,a5,-240 # a6b78f10 <pulp__FC+0xa6b78f11>
1c00bb46:	c31c                	sw	a5,0(a4)
1c00bb48:	6705                	lui	a4,0x1
1c00bb4a:	2a11a7b7          	lui	a5,0x2a11a
1c00bb4e:	06270713          	addi	a4,a4,98 # 1062 <__CTOR_LIST__-0x1bffefa2>
1c00bb52:	970a                	add	a4,a4,sp
1c00bb54:	07cd                	addi	a5,a5,19
1c00bb56:	c31c                	sw	a5,0(a4)
1c00bb58:	6705                	lui	a4,0x1
1c00bb5a:	484ed7b7          	lui	a5,0x484ed
1c00bb5e:	06670713          	addi	a4,a4,102 # 1066 <__CTOR_LIST__-0x1bffef9e>
1c00bb62:	970a                	add	a4,a4,sp
1c00bb64:	6f478793          	addi	a5,a5,1780 # 484ed6f4 <__l2_shared_end+0x2c4dd6f4>
1c00bb68:	c31c                	sw	a5,0(a4)
1c00bb6a:	6705                	lui	a4,0x1
1c00bb6c:	3245a7b7          	lui	a5,0x3245a
1c00bb70:	06a70713          	addi	a4,a4,106 # 106a <__CTOR_LIST__-0x1bffef9a>
1c00bb74:	970a                	add	a4,a4,sp
1c00bb76:	3f878793          	addi	a5,a5,1016 # 3245a3f8 <__l2_shared_end+0x1644a3f8>
1c00bb7a:	c31c                	sw	a5,0(a4)
1c00bb7c:	6705                	lui	a4,0x1
1c00bb7e:	bfb7a7b7          	lui	a5,0xbfb7a
1c00bb82:	06e70713          	addi	a4,a4,110 # 106e <__CTOR_LIST__-0x1bffef96>
1c00bb86:	970a                	add	a4,a4,sp
1c00bb88:	98a78793          	addi	a5,a5,-1654 # bfb7998a <pulp__FC+0xbfb7998b>
1c00bb8c:	c31c                	sw	a5,0(a4)
1c00bb8e:	6705                	lui	a4,0x1
1c00bb90:	03cb97b7          	lui	a5,0x3cb9
1c00bb94:	07270713          	addi	a4,a4,114 # 1072 <__CTOR_LIST__-0x1bffef92>
1c00bb98:	970a                	add	a4,a4,sp
1c00bb9a:	10c78793          	addi	a5,a5,268 # 3cb910c <__CTOR_LIST__-0x18346ef8>
1c00bb9e:	c31c                	sw	a5,0(a4)
1c00bba0:	6705                	lui	a4,0x1
1c00bba2:	17b017b7          	lui	a5,0x17b01
1c00bba6:	07670713          	addi	a4,a4,118 # 1076 <__CTOR_LIST__-0x1bffef8e>
1c00bbaa:	970a                	add	a4,a4,sp
1c00bbac:	57278793          	addi	a5,a5,1394 # 17b01572 <__CTOR_LIST__-0x44fea92>
1c00bbb0:	c31c                	sw	a5,0(a4)
1c00bbb2:	6705                	lui	a4,0x1
1c00bbb4:	63c2d7b7          	lui	a5,0x63c2d
1c00bbb8:	07a70713          	addi	a4,a4,122 # 107a <__CTOR_LIST__-0x1bffef8a>
1c00bbbc:	970a                	add	a4,a4,sp
1c00bbbe:	47a78793          	addi	a5,a5,1146 # 63c2d47a <__l2_shared_end+0x47c1d47a>
1c00bbc2:	c31c                	sw	a5,0(a4)
1c00bbc4:	6705                	lui	a4,0x1
1c00bbc6:	598fd7b7          	lui	a5,0x598fd
1c00bbca:	07e70713          	addi	a4,a4,126 # 107e <__CTOR_LIST__-0x1bffef86>
1c00bbce:	970a                	add	a4,a4,sp
1c00bbd0:	7e678793          	addi	a5,a5,2022 # 598fd7e6 <__l2_shared_end+0x3d8ed7e6>
1c00bbd4:	c31c                	sw	a5,0(a4)
1c00bbd6:	6705                	lui	a4,0x1
1c00bbd8:	1548d7b7          	lui	a5,0x1548d
1c00bbdc:	08270713          	addi	a4,a4,130 # 1082 <__CTOR_LIST__-0x1bffef82>
1c00bbe0:	970a                	add	a4,a4,sp
1c00bbe2:	85878793          	addi	a5,a5,-1960 # 1548c858 <__CTOR_LIST__-0x6b737ac>
1c00bbe6:	c31c                	sw	a5,0(a4)
1c00bbe8:	6705                	lui	a4,0x1
1c00bbea:	11d257b7          	lui	a5,0x11d25
1c00bbee:	08670713          	addi	a4,a4,134 # 1086 <__CTOR_LIST__-0x1bffef7e>
1c00bbf2:	970a                	add	a4,a4,sp
1c00bbf4:	f8e78793          	addi	a5,a5,-114 # 11d24f8e <__CTOR_LIST__-0xa2db076>
1c00bbf8:	c31c                	sw	a5,0(a4)
1c00bbfa:	6705                	lui	a4,0x1
1c00bbfc:	0c8e27b7          	lui	a5,0xc8e2
1c00bc00:	08a70713          	addi	a4,a4,138 # 108a <__CTOR_LIST__-0x1bffef7a>
1c00bc04:	970a                	add	a4,a4,sp
1c00bc06:	47c78793          	addi	a5,a5,1148 # c8e247c <__CTOR_LIST__-0xf71db88>
1c00bc0a:	c31c                	sw	a5,0(a4)
1c00bc0c:	6705                	lui	a4,0x1
1c00bc0e:	8cf947b7          	lui	a5,0x8cf94
1c00bc12:	08e70713          	addi	a4,a4,142 # 108e <__CTOR_LIST__-0x1bffef76>
1c00bc16:	970a                	add	a4,a4,sp
1c00bc18:	cab78793          	addi	a5,a5,-853 # 8cf93cab <pulp__FC+0x8cf93cac>
1c00bc1c:	c31c                	sw	a5,0(a4)
1c00bc1e:	6705                	lui	a4,0x1
1c00bc20:	888627b7          	lui	a5,0x88862
1c00bc24:	09270713          	addi	a4,a4,146 # 1092 <__CTOR_LIST__-0x1bffef72>
1c00bc28:	970a                	add	a4,a4,sp
1c00bc2a:	71e78793          	addi	a5,a5,1822 # 8886271e <pulp__FC+0x8886271f>
1c00bc2e:	c31c                	sw	a5,0(a4)
1c00bc30:	6705                	lui	a4,0x1
1c00bc32:	8b4307b7          	lui	a5,0x8b430
1c00bc36:	09670713          	addi	a4,a4,150 # 1096 <__CTOR_LIST__-0x1bffef6e>
1c00bc3a:	970a                	add	a4,a4,sp
1c00bc3c:	83878793          	addi	a5,a5,-1992 # 8b42f838 <pulp__FC+0x8b42f839>
1c00bc40:	c31c                	sw	a5,0(a4)
1c00bc42:	6705                	lui	a4,0x1
1c00bc44:	f62d57b7          	lui	a5,0xf62d5
1c00bc48:	09a70713          	addi	a4,a4,154 # 109a <__CTOR_LIST__-0x1bffef6a>
1c00bc4c:	970a                	add	a4,a4,sp
1c00bc4e:	6a078793          	addi	a5,a5,1696 # f62d56a0 <pulp__FC+0xf62d56a1>
1c00bc52:	c31c                	sw	a5,0(a4)
1c00bc54:	6705                	lui	a4,0x1
1c00bc56:	368727b7          	lui	a5,0x36872
1c00bc5a:	09e70713          	addi	a4,a4,158 # 109e <__CTOR_LIST__-0x1bffef66>
1c00bc5e:	970a                	add	a4,a4,sp
1c00bc60:	eb678793          	addi	a5,a5,-330 # 36871eb6 <__l2_shared_end+0x1a861eb6>
1c00bc64:	c31c                	sw	a5,0(a4)
1c00bc66:	6705                	lui	a4,0x1
1c00bc68:	66b2c7b7          	lui	a5,0x66b2c
1c00bc6c:	0a270713          	addi	a4,a4,162 # 10a2 <__CTOR_LIST__-0x1bffef62>
1c00bc70:	970a                	add	a4,a4,sp
1c00bc72:	8e278793          	addi	a5,a5,-1822 # 66b2b8e2 <__l2_shared_end+0x4ab1b8e2>
1c00bc76:	c31c                	sw	a5,0(a4)
1c00bc78:	6705                	lui	a4,0x1
1c00bc7a:	e01887b7          	lui	a5,0xe0188
1c00bc7e:	0a670713          	addi	a4,a4,166 # 10a6 <__CTOR_LIST__-0x1bffef5e>
1c00bc82:	970a                	add	a4,a4,sp
1c00bc84:	96078793          	addi	a5,a5,-1696 # e0187960 <pulp__FC+0xe0187961>
1c00bc88:	c31c                	sw	a5,0(a4)
1c00bc8a:	6705                	lui	a4,0x1
1c00bc8c:	afe337b7          	lui	a5,0xafe33
1c00bc90:	0aa70713          	addi	a4,a4,170 # 10aa <__CTOR_LIST__-0x1bffef5a>
1c00bc94:	970a                	add	a4,a4,sp
1c00bc96:	cce78793          	addi	a5,a5,-818 # afe32cce <pulp__FC+0xafe32ccf>
1c00bc9a:	c31c                	sw	a5,0(a4)
1c00bc9c:	6705                	lui	a4,0x1
1c00bc9e:	a51fd7b7          	lui	a5,0xa51fd
1c00bca2:	0ae70713          	addi	a4,a4,174 # 10ae <__CTOR_LIST__-0x1bffef56>
1c00bca6:	970a                	add	a4,a4,sp
1c00bca8:	86778793          	addi	a5,a5,-1945 # a51fc867 <pulp__FC+0xa51fc868>
1c00bcac:	c31c                	sw	a5,0(a4)
1c00bcae:	6705                	lui	a4,0x1
1c00bcb0:	bcd2a7b7          	lui	a5,0xbcd2a
1c00bcb4:	0b270713          	addi	a4,a4,178 # 10b2 <__CTOR_LIST__-0x1bffef52>
1c00bcb8:	970a                	add	a4,a4,sp
1c00bcba:	4c278793          	addi	a5,a5,1218 # bcd2a4c2 <pulp__FC+0xbcd2a4c3>
1c00bcbe:	c31c                	sw	a5,0(a4)
1c00bcc0:	6705                	lui	a4,0x1
1c00bcc2:	251887b7          	lui	a5,0x25188
1c00bcc6:	0b670713          	addi	a4,a4,182 # 10b6 <__CTOR_LIST__-0x1bffef4e>
1c00bcca:	970a                	add	a4,a4,sp
1c00bccc:	78e78793          	addi	a5,a5,1934 # 2518878e <__l2_shared_end+0x917878e>
1c00bcd0:	c31c                	sw	a5,0(a4)
1c00bcd2:	6705                	lui	a4,0x1
1c00bcd4:	beb307b7          	lui	a5,0xbeb30
1c00bcd8:	0ba70713          	addi	a4,a4,186 # 10ba <__CTOR_LIST__-0x1bffef4a>
1c00bcdc:	970a                	add	a4,a4,sp
1c00bcde:	2b778793          	addi	a5,a5,695 # beb302b7 <pulp__FC+0xbeb302b8>
1c00bce2:	c31c                	sw	a5,0(a4)
1c00bce4:	6705                	lui	a4,0x1
1c00bce6:	337b47b7          	lui	a5,0x337b4
1c00bcea:	0be70713          	addi	a4,a4,190 # 10be <__CTOR_LIST__-0x1bffef46>
1c00bcee:	970a                	add	a4,a4,sp
1c00bcf0:	9ca78793          	addi	a5,a5,-1590 # 337b39ca <__l2_shared_end+0x177a39ca>
1c00bcf4:	c31c                	sw	a5,0(a4)
1c00bcf6:	6705                	lui	a4,0x1
1c00bcf8:	c8da27b7          	lui	a5,0xc8da2
1c00bcfc:	0c270713          	addi	a4,a4,194 # 10c2 <__CTOR_LIST__-0x1bffef42>
1c00bd00:	970a                	add	a4,a4,sp
1c00bd02:	8a578793          	addi	a5,a5,-1883 # c8da18a5 <pulp__FC+0xc8da18a6>
1c00bd06:	c31c                	sw	a5,0(a4)
1c00bd08:	6705                	lui	a4,0x1
1c00bd0a:	493d47b7          	lui	a5,0x493d4
1c00bd0e:	0c670713          	addi	a4,a4,198 # 10c6 <__CTOR_LIST__-0x1bffef3e>
1c00bd12:	970a                	add	a4,a4,sp
1c00bd14:	9b178793          	addi	a5,a5,-1615 # 493d39b1 <__l2_shared_end+0x2d3c39b1>
1c00bd18:	c31c                	sw	a5,0(a4)
1c00bd1a:	6705                	lui	a4,0x1
1c00bd1c:	0c9097b7          	lui	a5,0xc909
1c00bd20:	0ca70713          	addi	a4,a4,202 # 10ca <__CTOR_LIST__-0x1bffef3a>
1c00bd24:	970a                	add	a4,a4,sp
1c00bd26:	04a78793          	addi	a5,a5,74 # c90904a <__CTOR_LIST__-0xf6f6fba>
1c00bd2a:	c31c                	sw	a5,0(a4)
1c00bd2c:	6705                	lui	a4,0x1
1c00bd2e:	2559b7b7          	lui	a5,0x2559b
1c00bd32:	0ce70713          	addi	a4,a4,206 # 10ce <__CTOR_LIST__-0x1bffef36>
1c00bd36:	970a                	add	a4,a4,sp
1c00bd38:	50178793          	addi	a5,a5,1281 # 2559b501 <__l2_shared_end+0x958b501>
1c00bd3c:	c31c                	sw	a5,0(a4)
1c00bd3e:	6705                	lui	a4,0x1
1c00bd40:	80bf87b7          	lui	a5,0x80bf8
1c00bd44:	0d270713          	addi	a4,a4,210 # 10d2 <__CTOR_LIST__-0x1bffef32>
1c00bd48:	970a                	add	a4,a4,sp
1c00bd4a:	c8578793          	addi	a5,a5,-891 # 80bf7c85 <pulp__FC+0x80bf7c86>
1c00bd4e:	c31c                	sw	a5,0(a4)
1c00bd50:	6705                	lui	a4,0x1
1c00bd52:	361d07b7          	lui	a5,0x361d0
1c00bd56:	0d670713          	addi	a4,a4,214 # 10d6 <__CTOR_LIST__-0x1bffef2e>
1c00bd5a:	970a                	add	a4,a4,sp
1c00bd5c:	52778793          	addi	a5,a5,1319 # 361d0527 <__l2_shared_end+0x1a1c0527>
1c00bd60:	c31c                	sw	a5,0(a4)
1c00bd62:	6705                	lui	a4,0x1
1c00bd64:	a441f7b7          	lui	a5,0xa441f
1c00bd68:	0da70713          	addi	a4,a4,218 # 10da <__CTOR_LIST__-0x1bffef2a>
1c00bd6c:	970a                	add	a4,a4,sp
1c00bd6e:	1a478793          	addi	a5,a5,420 # a441f1a4 <pulp__FC+0xa441f1a5>
1c00bd72:	c31c                	sw	a5,0(a4)
1c00bd74:	6705                	lui	a4,0x1
1c00bd76:	0344e7b7          	lui	a5,0x344e
1c00bd7a:	0de70713          	addi	a4,a4,222 # 10de <__CTOR_LIST__-0x1bffef26>
1c00bd7e:	970a                	add	a4,a4,sp
1c00bd80:	cd278793          	addi	a5,a5,-814 # 344dcd2 <__CTOR_LIST__-0x18bb2332>
1c00bd84:	c31c                	sw	a5,0(a4)
1c00bd86:	6705                	lui	a4,0x1
1c00bd88:	035e37b7          	lui	a5,0x35e3
1c00bd8c:	0e270713          	addi	a4,a4,226 # 10e2 <__CTOR_LIST__-0x1bffef22>
1c00bd90:	970a                	add	a4,a4,sp
1c00bd92:	04178793          	addi	a5,a5,65 # 35e3041 <__CTOR_LIST__-0x18a1cfc3>
1c00bd96:	c31c                	sw	a5,0(a4)
1c00bd98:	6705                	lui	a4,0x1
1c00bd9a:	070ab7b7          	lui	a5,0x70ab
1c00bd9e:	0e670713          	addi	a4,a4,230 # 10e6 <__CTOR_LIST__-0x1bffef1e>
1c00bda2:	970a                	add	a4,a4,sp
1c00bda4:	53c78793          	addi	a5,a5,1340 # 70ab53c <__CTOR_LIST__-0x14f54ac8>
1c00bda8:	c31c                	sw	a5,0(a4)
1c00bdaa:	6705                	lui	a4,0x1
1c00bdac:	c759e7b7          	lui	a5,0xc759e
1c00bdb0:	0ea70713          	addi	a4,a4,234 # 10ea <__CTOR_LIST__-0x1bffef1a>
1c00bdb4:	970a                	add	a4,a4,sp
1c00bdb6:	44b78793          	addi	a5,a5,1099 # c759e44b <pulp__FC+0xc759e44c>
1c00bdba:	c31c                	sw	a5,0(a4)
1c00bdbc:	6705                	lui	a4,0x1
1c00bdbe:	9a9a37b7          	lui	a5,0x9a9a3
1c00bdc2:	0ee70713          	addi	a4,a4,238 # 10ee <__CTOR_LIST__-0x1bffef16>
1c00bdc6:	970a                	add	a4,a4,sp
1c00bdc8:	36a78793          	addi	a5,a5,874 # 9a9a336a <pulp__FC+0x9a9a336b>
1c00bdcc:	c31c                	sw	a5,0(a4)
1c00bdce:	6705                	lui	a4,0x1
1c00bdd0:	3647c7b7          	lui	a5,0x3647c
1c00bdd4:	0f270713          	addi	a4,a4,242 # 10f2 <__CTOR_LIST__-0x1bffef12>
1c00bdd8:	970a                	add	a4,a4,sp
1c00bdda:	45278793          	addi	a5,a5,1106 # 3647c452 <__l2_shared_end+0x1a46c452>
1c00bdde:	c31c                	sw	a5,0(a4)
1c00bde0:	6705                	lui	a4,0x1
1c00bde2:	562af7b7          	lui	a5,0x562af
1c00bde6:	0f670713          	addi	a4,a4,246 # 10f6 <__CTOR_LIST__-0x1bffef0e>
1c00bdea:	970a                	add	a4,a4,sp
1c00bdec:	a0d78793          	addi	a5,a5,-1523 # 562aea0d <__l2_shared_end+0x3a29ea0d>
1c00bdf0:	c31c                	sw	a5,0(a4)
1c00bdf2:	6705                	lui	a4,0x1
1c00bdf4:	68ead7b7          	lui	a5,0x68ead
1c00bdf8:	0fa70713          	addi	a4,a4,250 # 10fa <__CTOR_LIST__-0x1bffef0a>
1c00bdfc:	970a                	add	a4,a4,sp
1c00bdfe:	c9978793          	addi	a5,a5,-871 # 68eacc99 <__l2_shared_end+0x4ce9cc99>
1c00be02:	c31c                	sw	a5,0(a4)
1c00be04:	6705                	lui	a4,0x1
1c00be06:	0a4347b7          	lui	a5,0xa434
1c00be0a:	0fe70713          	addi	a4,a4,254 # 10fe <__CTOR_LIST__-0x1bffef06>
1c00be0e:	970a                	add	a4,a4,sp
1c00be10:	23a78793          	addi	a5,a5,570 # a43423a <__CTOR_LIST__-0x11bcbdca>
1c00be14:	c31c                	sw	a5,0(a4)
1c00be16:	6705                	lui	a4,0x1
1c00be18:	459607b7          	lui	a5,0x45960
1c00be1c:	10270713          	addi	a4,a4,258 # 1102 <__CTOR_LIST__-0x1bffef02>
1c00be20:	970a                	add	a4,a4,sp
1c00be22:	ca678793          	addi	a5,a5,-858 # 4595fca6 <__l2_shared_end+0x2994fca6>
1c00be26:	c31c                	sw	a5,0(a4)
1c00be28:	6705                	lui	a4,0x1
1c00be2a:	6799                	lui	a5,0x6
1c00be2c:	10670713          	addi	a4,a4,262 # 1106 <__CTOR_LIST__-0x1bffeefe>
1c00be30:	970a                	add	a4,a4,sp
1c00be32:	cc778793          	addi	a5,a5,-825 # 5cc7 <__CTOR_LIST__-0x1bffa33d>
1c00be36:	00f71023          	sh	a5,0(a4)
1c00be3a:	6705                	lui	a4,0x1
1c00be3c:	10870713          	addi	a4,a4,264 # 1108 <__CTOR_LIST__-0x1bffeefc>
1c00be40:	970a                	add	a4,a4,sp
1c00be42:	4791                	li	a5,4
1c00be44:	00f70023          	sb	a5,0(a4)
1c00be48:	6705                	lui	a4,0x1
1c00be4a:	f71a67b7          	lui	a5,0xf71a6
1c00be4e:	10970713          	addi	a4,a4,265 # 1109 <__CTOR_LIST__-0x1bffeefb>
1c00be52:	970a                	add	a4,a4,sp
1c00be54:	49278793          	addi	a5,a5,1170 # f71a6492 <pulp__FC+0xf71a6493>
1c00be58:	c31c                	sw	a5,0(a4)
1c00be5a:	6705                	lui	a4,0x1
1c00be5c:	7b26f7b7          	lui	a5,0x7b26f
1c00be60:	10d70713          	addi	a4,a4,269 # 110d <__CTOR_LIST__-0x1bffeef7>
1c00be64:	970a                	add	a4,a4,sp
1c00be66:	9a478793          	addi	a5,a5,-1628 # 7b26e9a4 <__l2_shared_end+0x5f25e9a4>
1c00be6a:	c31c                	sw	a5,0(a4)
1c00be6c:	6705                	lui	a4,0x1
1c00be6e:	554e47b7          	lui	a5,0x554e4
1c00be72:	11170713          	addi	a4,a4,273 # 1111 <__CTOR_LIST__-0x1bffeef3>
1c00be76:	970a                	add	a4,a4,sp
1c00be78:	8cc78793          	addi	a5,a5,-1844 # 554e38cc <__l2_shared_end+0x394d38cc>
1c00be7c:	c31c                	sw	a5,0(a4)
1c00be7e:	6705                	lui	a4,0x1
1c00be80:	97f457b7          	lui	a5,0x97f45
1c00be84:	11570713          	addi	a4,a4,277 # 1115 <__CTOR_LIST__-0x1bffeeef>
1c00be88:	970a                	add	a4,a4,sp
1c00be8a:	c7178793          	addi	a5,a5,-911 # 97f44c71 <pulp__FC+0x97f44c72>
1c00be8e:	c31c                	sw	a5,0(a4)
1c00be90:	6705                	lui	a4,0x1
1c00be92:	b6a3f7b7          	lui	a5,0xb6a3f
1c00be96:	11970713          	addi	a4,a4,281 # 1119 <__CTOR_LIST__-0x1bffeeeb>
1c00be9a:	970a                	add	a4,a4,sp
1c00be9c:	b4178793          	addi	a5,a5,-1215 # b6a3eb41 <pulp__FC+0xb6a3eb42>
1c00bea0:	c31c                	sw	a5,0(a4)
1c00bea2:	6705                	lui	a4,0x1
1c00bea4:	a51767b7          	lui	a5,0xa5176
1c00bea8:	11d70713          	addi	a4,a4,285 # 111d <__CTOR_LIST__-0x1bffeee7>
1c00beac:	970a                	add	a4,a4,sp
1c00beae:	49d78793          	addi	a5,a5,1181 # a517649d <pulp__FC+0xa517649e>
1c00beb2:	c31c                	sw	a5,0(a4)
1c00beb4:	6705                	lui	a4,0x1
1c00beb6:	3c5d47b7          	lui	a5,0x3c5d4
1c00beba:	12170713          	addi	a4,a4,289 # 1121 <__CTOR_LIST__-0x1bffeee3>
1c00bebe:	970a                	add	a4,a4,sp
1c00bec0:	75578793          	addi	a5,a5,1877 # 3c5d4755 <__l2_shared_end+0x205c4755>
1c00bec4:	c31c                	sw	a5,0(a4)
1c00bec6:	6705                	lui	a4,0x1
1c00bec8:	b81217b7          	lui	a5,0xb8121
1c00becc:	12570713          	addi	a4,a4,293 # 1125 <__CTOR_LIST__-0x1bffeedf>
1c00bed0:	970a                	add	a4,a4,sp
1c00bed2:	10278793          	addi	a5,a5,258 # b8121102 <pulp__FC+0xb8121103>
1c00bed6:	c31c                	sw	a5,0(a4)
1c00bed8:	6705                	lui	a4,0x1
1c00beda:	638c67b7          	lui	a5,0x638c6
1c00bede:	12970713          	addi	a4,a4,297 # 1129 <__CTOR_LIST__-0x1bffeedb>
1c00bee2:	970a                	add	a4,a4,sp
1c00bee4:	8b378793          	addi	a5,a5,-1869 # 638c58b3 <__l2_shared_end+0x478b58b3>
1c00bee8:	c31c                	sw	a5,0(a4)
1c00beea:	6705                	lui	a4,0x1
1c00beec:	e25c87b7          	lui	a5,0xe25c8
1c00bef0:	12d70713          	addi	a4,a4,301 # 112d <__CTOR_LIST__-0x1bffeed7>
1c00bef4:	970a                	add	a4,a4,sp
1c00bef6:	b7478793          	addi	a5,a5,-1164 # e25c7b74 <pulp__FC+0xe25c7b75>
1c00befa:	c31c                	sw	a5,0(a4)
1c00befc:	6705                	lui	a4,0x1
1c00befe:	12ea07b7          	lui	a5,0x12ea0
1c00bf02:	13170713          	addi	a4,a4,305 # 1131 <__CTOR_LIST__-0x1bffeed3>
1c00bf06:	970a                	add	a4,a4,sp
1c00bf08:	ecc78793          	addi	a5,a5,-308 # 12e9fecc <__CTOR_LIST__-0x9160138>
1c00bf0c:	c31c                	sw	a5,0(a4)
1c00bf0e:	6705                	lui	a4,0x1
1c00bf10:	9f4207b7          	lui	a5,0x9f420
1c00bf14:	13570713          	addi	a4,a4,309 # 1135 <__CTOR_LIST__-0x1bffeecf>
1c00bf18:	970a                	add	a4,a4,sp
1c00bf1a:	a9778793          	addi	a5,a5,-1385 # 9f41fa97 <pulp__FC+0x9f41fa98>
1c00bf1e:	c31c                	sw	a5,0(a4)
1c00bf20:	6705                	lui	a4,0x1
1c00bf22:	979847b7          	lui	a5,0x97984
1c00bf26:	13970713          	addi	a4,a4,313 # 1139 <__CTOR_LIST__-0x1bffeecb>
1c00bf2a:	970a                	add	a4,a4,sp
1c00bf2c:	29c78793          	addi	a5,a5,668 # 9798429c <pulp__FC+0x9798429d>
1c00bf30:	c31c                	sw	a5,0(a4)
1c00bf32:	6705                	lui	a4,0x1
1c00bf34:	700907b7          	lui	a5,0x70090
1c00bf38:	13d70713          	addi	a4,a4,317 # 113d <__CTOR_LIST__-0x1bffeec7>
1c00bf3c:	970a                	add	a4,a4,sp
1c00bf3e:	f8f78793          	addi	a5,a5,-113 # 7008ff8f <__l2_shared_end+0x5407ff8f>
1c00bf42:	c31c                	sw	a5,0(a4)
1c00bf44:	6705                	lui	a4,0x1
1c00bf46:	b455b7b7          	lui	a5,0xb455b
1c00bf4a:	14170713          	addi	a4,a4,321 # 1141 <__CTOR_LIST__-0x1bffeec3>
1c00bf4e:	970a                	add	a4,a4,sp
1c00bf50:	8d878793          	addi	a5,a5,-1832 # b455a8d8 <pulp__FC+0xb455a8d9>
1c00bf54:	c31c                	sw	a5,0(a4)
1c00bf56:	6705                	lui	a4,0x1
1c00bf58:	9bcaa7b7          	lui	a5,0x9bcaa
1c00bf5c:	14570713          	addi	a4,a4,325 # 1145 <__CTOR_LIST__-0x1bffeebf>
1c00bf60:	970a                	add	a4,a4,sp
1c00bf62:	98878793          	addi	a5,a5,-1656 # 9bca9988 <pulp__FC+0x9bca9989>
1c00bf66:	c31c                	sw	a5,0(a4)
1c00bf68:	6705                	lui	a4,0x1
1c00bf6a:	6d8387b7          	lui	a5,0x6d838
1c00bf6e:	14970713          	addi	a4,a4,329 # 1149 <__CTOR_LIST__-0x1bffeebb>
1c00bf72:	970a                	add	a4,a4,sp
1c00bf74:	db478793          	addi	a5,a5,-588 # 6d837db4 <__l2_shared_end+0x51827db4>
1c00bf78:	c31c                	sw	a5,0(a4)
1c00bf7a:	6705                	lui	a4,0x1
1c00bf7c:	8c03d7b7          	lui	a5,0x8c03d
1c00bf80:	14d70713          	addi	a4,a4,333 # 114d <__CTOR_LIST__-0x1bffeeb7>
1c00bf84:	970a                	add	a4,a4,sp
1c00bf86:	26278793          	addi	a5,a5,610 # 8c03d262 <pulp__FC+0x8c03d263>
1c00bf8a:	c31c                	sw	a5,0(a4)
1c00bf8c:	6705                	lui	a4,0x1
1c00bf8e:	3a6f87b7          	lui	a5,0x3a6f8
1c00bf92:	15170713          	addi	a4,a4,337 # 1151 <__CTOR_LIST__-0x1bffeeb3>
1c00bf96:	970a                	add	a4,a4,sp
1c00bf98:	1c378793          	addi	a5,a5,451 # 3a6f81c3 <__l2_shared_end+0x1e6e81c3>
1c00bf9c:	c31c                	sw	a5,0(a4)
1c00bf9e:	6705                	lui	a4,0x1
1c00bfa0:	bbb397b7          	lui	a5,0xbbb39
1c00bfa4:	15570713          	addi	a4,a4,341 # 1155 <__CTOR_LIST__-0x1bffeeaf>
1c00bfa8:	970a                	add	a4,a4,sp
1c00bfaa:	b6978793          	addi	a5,a5,-1175 # bbb38b69 <pulp__FC+0xbbb38b6a>
1c00bfae:	c31c                	sw	a5,0(a4)
1c00bfb0:	6705                	lui	a4,0x1
1c00bfb2:	a0c787b7          	lui	a5,0xa0c78
1c00bfb6:	15970713          	addi	a4,a4,345 # 1159 <__CTOR_LIST__-0x1bffeeab>
1c00bfba:	970a                	add	a4,a4,sp
1c00bfbc:	8ff78793          	addi	a5,a5,-1793 # a0c778ff <pulp__FC+0xa0c77900>
1c00bfc0:	c31c                	sw	a5,0(a4)
1c00bfc2:	6705                	lui	a4,0x1
1c00bfc4:	19eab7b7          	lui	a5,0x19eab
1c00bfc8:	15d70713          	addi	a4,a4,349 # 115d <__CTOR_LIST__-0x1bffeea7>
1c00bfcc:	970a                	add	a4,a4,sp
1c00bfce:	07d5                	addi	a5,a5,21
1c00bfd0:	c31c                	sw	a5,0(a4)
1c00bfd2:	6705                	lui	a4,0x1
1c00bfd4:	924267b7          	lui	a5,0x92426
1c00bfd8:	16170713          	addi	a4,a4,353 # 1161 <__CTOR_LIST__-0x1bffeea3>
1c00bfdc:	970a                	add	a4,a4,sp
1c00bfde:	36078793          	addi	a5,a5,864 # 92426360 <pulp__FC+0x92426361>
1c00bfe2:	c31c                	sw	a5,0(a4)
1c00bfe4:	6705                	lui	a4,0x1
1c00bfe6:	030bd7b7          	lui	a5,0x30bd
1c00bfea:	16570713          	addi	a4,a4,357 # 1165 <__CTOR_LIST__-0x1bffee9f>
1c00bfee:	970a                	add	a4,a4,sp
1c00bff0:	5e178793          	addi	a5,a5,1505 # 30bd5e1 <__CTOR_LIST__-0x18f42a23>
1c00bff4:	c31c                	sw	a5,0(a4)
1c00bff6:	6705                	lui	a4,0x1
1c00bff8:	983a07b7          	lui	a5,0x983a0
1c00bffc:	16970713          	addi	a4,a4,361 # 1169 <__CTOR_LIST__-0x1bffee9b>
1c00c000:	970a                	add	a4,a4,sp
1c00c002:	4e178793          	addi	a5,a5,1249 # 983a04e1 <pulp__FC+0x983a04e2>
1c00c006:	c31c                	sw	a5,0(a4)
1c00c008:	6705                	lui	a4,0x1
1c00c00a:	0627a7b7          	lui	a5,0x627a
1c00c00e:	16d70713          	addi	a4,a4,365 # 116d <__CTOR_LIST__-0x1bffee97>
1c00c012:	970a                	add	a4,a4,sp
1c00c014:	bca78793          	addi	a5,a5,-1078 # 6279bca <__CTOR_LIST__-0x15d8643a>
1c00c018:	c31c                	sw	a5,0(a4)
1c00c01a:	6705                	lui	a4,0x1
1c00c01c:	058b67b7          	lui	a5,0x58b6
1c00c020:	17170713          	addi	a4,a4,369 # 1171 <__CTOR_LIST__-0x1bffee93>
1c00c024:	970a                	add	a4,a4,sp
1c00c026:	63e78793          	addi	a5,a5,1598 # 58b663e <__CTOR_LIST__-0x167499c6>
1c00c02a:	c31c                	sw	a5,0(a4)
1c00c02c:	6705                	lui	a4,0x1
1c00c02e:	697dc7b7          	lui	a5,0x697dc
1c00c032:	17570713          	addi	a4,a4,373 # 1175 <__CTOR_LIST__-0x1bffee8f>
1c00c036:	970a                	add	a4,a4,sp
1c00c038:	1e278793          	addi	a5,a5,482 # 697dc1e2 <__l2_shared_end+0x4d7cc1e2>
1c00c03c:	c31c                	sw	a5,0(a4)
1c00c03e:	6705                	lui	a4,0x1
1c00c040:	182b47b7          	lui	a5,0x182b4
1c00c044:	17970713          	addi	a4,a4,377 # 1179 <__CTOR_LIST__-0x1bffee8b>
1c00c048:	970a                	add	a4,a4,sp
1c00c04a:	82d78793          	addi	a5,a5,-2003 # 182b382d <__CTOR_LIST__-0x3d4c7d7>
1c00c04e:	c31c                	sw	a5,0(a4)
1c00c050:	6705                	lui	a4,0x1
1c00c052:	18a867b7          	lui	a5,0x18a86
1c00c056:	17d70713          	addi	a4,a4,381 # 117d <__CTOR_LIST__-0x1bffee87>
1c00c05a:	970a                	add	a4,a4,sp
1c00c05c:	51378793          	addi	a5,a5,1299 # 18a86513 <__CTOR_LIST__-0x3579af1>
1c00c060:	c31c                	sw	a5,0(a4)
1c00c062:	6705                	lui	a4,0x1
1c00c064:	47c797b7          	lui	a5,0x47c79
1c00c068:	18170713          	addi	a4,a4,385 # 1181 <__CTOR_LIST__-0x1bffee83>
1c00c06c:	970a                	add	a4,a4,sp
1c00c06e:	e5178793          	addi	a5,a5,-431 # 47c78e51 <__l2_shared_end+0x2bc68e51>
1c00c072:	c31c                	sw	a5,0(a4)
1c00c074:	6705                	lui	a4,0x1
1c00c076:	ca3707b7          	lui	a5,0xca370
1c00c07a:	18570713          	addi	a4,a4,389 # 1185 <__CTOR_LIST__-0x1bffee7f>
1c00c07e:	970a                	add	a4,a4,sp
1c00c080:	37278793          	addi	a5,a5,882 # ca370372 <pulp__FC+0xca370373>
1c00c084:	c31c                	sw	a5,0(a4)
1c00c086:	6705                	lui	a4,0x1
1c00c088:	6a5977b7          	lui	a5,0x6a597
1c00c08c:	18970713          	addi	a4,a4,393 # 1189 <__CTOR_LIST__-0x1bffee7b>
1c00c090:	970a                	add	a4,a4,sp
1c00c092:	81878793          	addi	a5,a5,-2024 # 6a596818 <__l2_shared_end+0x4e586818>
1c00c096:	c31c                	sw	a5,0(a4)
1c00c098:	6705                	lui	a4,0x1
1c00c09a:	fa9037b7          	lui	a5,0xfa903
1c00c09e:	18d70713          	addi	a4,a4,397 # 118d <__CTOR_LIST__-0x1bffee77>
1c00c0a2:	970a                	add	a4,a4,sp
1c00c0a4:	af478793          	addi	a5,a5,-1292 # fa902af4 <pulp__FC+0xfa902af5>
1c00c0a8:	c31c                	sw	a5,0(a4)
1c00c0aa:	6705                	lui	a4,0x1
1c00c0ac:	730387b7          	lui	a5,0x73038
1c00c0b0:	19170713          	addi	a4,a4,401 # 1191 <__CTOR_LIST__-0x1bffee73>
1c00c0b4:	970a                	add	a4,a4,sp
1c00c0b6:	7b178793          	addi	a5,a5,1969 # 730387b1 <__l2_shared_end+0x570287b1>
1c00c0ba:	c31c                	sw	a5,0(a4)
1c00c0bc:	6705                	lui	a4,0x1
1c00c0be:	6d8f57b7          	lui	a5,0x6d8f5
1c00c0c2:	19570713          	addi	a4,a4,405 # 1195 <__CTOR_LIST__-0x1bffee6f>
1c00c0c6:	970a                	add	a4,a4,sp
1c00c0c8:	bd778793          	addi	a5,a5,-1065 # 6d8f4bd7 <__l2_shared_end+0x518e4bd7>
1c00c0cc:	c31c                	sw	a5,0(a4)
1c00c0ce:	6705                	lui	a4,0x1
1c00c0d0:	b186b7b7          	lui	a5,0xb186b
1c00c0d4:	19970713          	addi	a4,a4,409 # 1199 <__CTOR_LIST__-0x1bffee6b>
1c00c0d8:	970a                	add	a4,a4,sp
1c00c0da:	c4278793          	addi	a5,a5,-958 # b186ac42 <pulp__FC+0xb186ac43>
1c00c0de:	c31c                	sw	a5,0(a4)
1c00c0e0:	6705                	lui	a4,0x1
1c00c0e2:	b03ad7b7          	lui	a5,0xb03ad
1c00c0e6:	19d70713          	addi	a4,a4,413 # 119d <__CTOR_LIST__-0x1bffee67>
1c00c0ea:	970a                	add	a4,a4,sp
1c00c0ec:	a8b78793          	addi	a5,a5,-1397 # b03aca8b <pulp__FC+0xb03aca8c>
1c00c0f0:	c31c                	sw	a5,0(a4)
1c00c0f2:	6705                	lui	a4,0x1
1c00c0f4:	0c6867b7          	lui	a5,0xc686
1c00c0f8:	1a170713          	addi	a4,a4,417 # 11a1 <__CTOR_LIST__-0x1bffee63>
1c00c0fc:	970a                	add	a4,a4,sp
1c00c0fe:	44778793          	addi	a5,a5,1095 # c686447 <__CTOR_LIST__-0xf979bbd>
1c00c102:	c31c                	sw	a5,0(a4)
1c00c104:	6705                	lui	a4,0x1
1c00c106:	520c07b7          	lui	a5,0x520c0
1c00c10a:	1a570713          	addi	a4,a4,421 # 11a5 <__CTOR_LIST__-0x1bffee5f>
1c00c10e:	970a                	add	a4,a4,sp
1c00c110:	6f278793          	addi	a5,a5,1778 # 520c06f2 <__l2_shared_end+0x360b06f2>
1c00c114:	c31c                	sw	a5,0(a4)
1c00c116:	6705                	lui	a4,0x1
1c00c118:	8e5bc7b7          	lui	a5,0x8e5bc
1c00c11c:	1a970713          	addi	a4,a4,425 # 11a9 <__CTOR_LIST__-0x1bffee5b>
1c00c120:	970a                	add	a4,a4,sp
1c00c122:	e9a78793          	addi	a5,a5,-358 # 8e5bbe9a <pulp__FC+0x8e5bbe9b>
1c00c126:	c31c                	sw	a5,0(a4)
1c00c128:	6705                	lui	a4,0x1
1c00c12a:	c84d47b7          	lui	a5,0xc84d4
1c00c12e:	1ad70713          	addi	a4,a4,429 # 11ad <__CTOR_LIST__-0x1bffee57>
1c00c132:	970a                	add	a4,a4,sp
1c00c134:	7f478793          	addi	a5,a5,2036 # c84d47f4 <pulp__FC+0xc84d47f5>
1c00c138:	c31c                	sw	a5,0(a4)
1c00c13a:	6705                	lui	a4,0x1
1c00c13c:	03a847b7          	lui	a5,0x3a84
1c00c140:	1b170713          	addi	a4,a4,433 # 11b1 <__CTOR_LIST__-0x1bffee53>
1c00c144:	970a                	add	a4,a4,sp
1c00c146:	7cc78793          	addi	a5,a5,1996 # 3a847cc <__CTOR_LIST__-0x1857b838>
1c00c14a:	c31c                	sw	a5,0(a4)
1c00c14c:	6705                	lui	a4,0x1
1c00c14e:	4d88c7b7          	lui	a5,0x4d88c
1c00c152:	1b570713          	addi	a4,a4,437 # 11b5 <__CTOR_LIST__-0x1bffee4f>
1c00c156:	970a                	add	a4,a4,sp
1c00c158:	d3e78793          	addi	a5,a5,-706 # 4d88bd3e <__l2_shared_end+0x3187bd3e>
1c00c15c:	c31c                	sw	a5,0(a4)
1c00c15e:	6705                	lui	a4,0x1
1c00c160:	1a0f17b7          	lui	a5,0x1a0f1
1c00c164:	1b970713          	addi	a4,a4,441 # 11b9 <__CTOR_LIST__-0x1bffee4b>
1c00c168:	970a                	add	a4,a4,sp
1c00c16a:	a3e78793          	addi	a5,a5,-1474 # 1a0f0a3e <__CTOR_LIST__-0x1f0f5c6>
1c00c16e:	c31c                	sw	a5,0(a4)
1c00c170:	6705                	lui	a4,0x1
1c00c172:	8a0d47b7          	lui	a5,0x8a0d4
1c00c176:	1bd70713          	addi	a4,a4,445 # 11bd <__CTOR_LIST__-0x1bffee47>
1c00c17a:	970a                	add	a4,a4,sp
1c00c17c:	29478793          	addi	a5,a5,660 # 8a0d4294 <pulp__FC+0x8a0d4295>
1c00c180:	c31c                	sw	a5,0(a4)
1c00c182:	6705                	lui	a4,0x1
1c00c184:	b76297b7          	lui	a5,0xb7629
1c00c188:	1c170713          	addi	a4,a4,449 # 11c1 <__CTOR_LIST__-0x1bffee43>
1c00c18c:	970a                	add	a4,a4,sp
1c00c18e:	13c78793          	addi	a5,a5,316 # b762913c <pulp__FC+0xb762913d>
1c00c192:	c31c                	sw	a5,0(a4)
1c00c194:	6705                	lui	a4,0x1
1c00c196:	c8a287b7          	lui	a5,0xc8a28
1c00c19a:	1c570713          	addi	a4,a4,453 # 11c5 <__CTOR_LIST__-0x1bffee3f>
1c00c19e:	970a                	add	a4,a4,sp
1c00c1a0:	7af78793          	addi	a5,a5,1967 # c8a287af <pulp__FC+0xc8a287b0>
1c00c1a4:	c31c                	sw	a5,0(a4)
1c00c1a6:	6705                	lui	a4,0x1
1c00c1a8:	746497b7          	lui	a5,0x74649
1c00c1ac:	1c970713          	addi	a4,a4,457 # 11c9 <__CTOR_LIST__-0x1bffee3b>
1c00c1b0:	970a                	add	a4,a4,sp
1c00c1b2:	4a378793          	addi	a5,a5,1187 # 746494a3 <__l2_shared_end+0x586394a3>
1c00c1b6:	c31c                	sw	a5,0(a4)
1c00c1b8:	6705                	lui	a4,0x1
1c00c1ba:	bca3f7b7          	lui	a5,0xbca3f
1c00c1be:	1cd70713          	addi	a4,a4,461 # 11cd <__CTOR_LIST__-0x1bffee37>
1c00c1c2:	970a                	add	a4,a4,sp
1c00c1c4:	43478793          	addi	a5,a5,1076 # bca3f434 <pulp__FC+0xbca3f435>
1c00c1c8:	c31c                	sw	a5,0(a4)
1c00c1ca:	6705                	lui	a4,0x1
1c00c1cc:	137847b7          	lui	a5,0x13784
1c00c1d0:	1d170713          	addi	a4,a4,465 # 11d1 <__CTOR_LIST__-0x1bffee33>
1c00c1d4:	970a                	add	a4,a4,sp
1c00c1d6:	72b78793          	addi	a5,a5,1835 # 1378472b <__CTOR_LIST__-0x887b8d9>
1c00c1da:	c31c                	sw	a5,0(a4)
1c00c1dc:	6705                	lui	a4,0x1
1c00c1de:	38cf87b7          	lui	a5,0x38cf8
1c00c1e2:	1d570713          	addi	a4,a4,469 # 11d5 <__CTOR_LIST__-0x1bffee2f>
1c00c1e6:	970a                	add	a4,a4,sp
1c00c1e8:	2ac78793          	addi	a5,a5,684 # 38cf82ac <__l2_shared_end+0x1cce82ac>
1c00c1ec:	c31c                	sw	a5,0(a4)
1c00c1ee:	6705                	lui	a4,0x1
1c00c1f0:	87b587b7          	lui	a5,0x87b58
1c00c1f4:	1d970713          	addi	a4,a4,473 # 11d9 <__CTOR_LIST__-0x1bffee2b>
1c00c1f8:	970a                	add	a4,a4,sp
1c00c1fa:	57178793          	addi	a5,a5,1393 # 87b58571 <pulp__FC+0x87b58572>
1c00c1fe:	c31c                	sw	a5,0(a4)
1c00c200:	6705                	lui	a4,0x1
1c00c202:	3889f7b7          	lui	a5,0x3889f
1c00c206:	1dd70713          	addi	a4,a4,477 # 11dd <__CTOR_LIST__-0x1bffee27>
1c00c20a:	970a                	add	a4,a4,sp
1c00c20c:	6f778793          	addi	a5,a5,1783 # 3889f6f7 <__l2_shared_end+0x1c88f6f7>
1c00c210:	c31c                	sw	a5,0(a4)
1c00c212:	6705                	lui	a4,0x1
1c00c214:	69ddd7b7          	lui	a5,0x69ddd
1c00c218:	1e170713          	addi	a4,a4,481 # 11e1 <__CTOR_LIST__-0x1bffee23>
1c00c21c:	970a                	add	a4,a4,sp
1c00c21e:	dec78793          	addi	a5,a5,-532 # 69ddcdec <__l2_shared_end+0x4ddccdec>
1c00c222:	c31c                	sw	a5,0(a4)
1c00c224:	6705                	lui	a4,0x1
1c00c226:	ba43d7b7          	lui	a5,0xba43d
1c00c22a:	1e570713          	addi	a4,a4,485 # 11e5 <__CTOR_LIST__-0x1bffee1f>
1c00c22e:	970a                	add	a4,a4,sp
1c00c230:	13478793          	addi	a5,a5,308 # ba43d134 <pulp__FC+0xba43d135>
1c00c234:	c31c                	sw	a5,0(a4)
1c00c236:	6705                	lui	a4,0x1
1c00c238:	714ac7b7          	lui	a5,0x714ac
1c00c23c:	1e970713          	addi	a4,a4,489 # 11e9 <__CTOR_LIST__-0x1bffee1b>
1c00c240:	970a                	add	a4,a4,sp
1c00c242:	b1778793          	addi	a5,a5,-1257 # 714abb17 <__l2_shared_end+0x5549bb17>
1c00c246:	c31c                	sw	a5,0(a4)
1c00c248:	6705                	lui	a4,0x1
1c00c24a:	a5d267b7          	lui	a5,0xa5d26
1c00c24e:	1ed70713          	addi	a4,a4,493 # 11ed <__CTOR_LIST__-0x1bffee17>
1c00c252:	970a                	add	a4,a4,sp
1c00c254:	62578793          	addi	a5,a5,1573 # a5d26625 <pulp__FC+0xa5d26626>
1c00c258:	c31c                	sw	a5,0(a4)
1c00c25a:	6705                	lui	a4,0x1
1c00c25c:	33dbb7b7          	lui	a5,0x33dbb
1c00c260:	1f170713          	addi	a4,a4,497 # 11f1 <__CTOR_LIST__-0x1bffee13>
1c00c264:	970a                	add	a4,a4,sp
1c00c266:	d5a78793          	addi	a5,a5,-678 # 33dbad5a <__l2_shared_end+0x17daad5a>
1c00c26a:	c31c                	sw	a5,0(a4)
1c00c26c:	6705                	lui	a4,0x1
1c00c26e:	673677b7          	lui	a5,0x67367
1c00c272:	1f570713          	addi	a4,a4,501 # 11f5 <__CTOR_LIST__-0x1bffee0f>
1c00c276:	970a                	add	a4,a4,sp
1c00c278:	12378793          	addi	a5,a5,291 # 67367123 <__l2_shared_end+0x4b357123>
1c00c27c:	c31c                	sw	a5,0(a4)
1c00c27e:	6705                	lui	a4,0x1
1c00c280:	204a27b7          	lui	a5,0x204a2
1c00c284:	1f970713          	addi	a4,a4,505 # 11f9 <__CTOR_LIST__-0x1bffee0b>
1c00c288:	970a                	add	a4,a4,sp
1c00c28a:	b4078793          	addi	a5,a5,-1216 # 204a1b40 <__l2_shared_end+0x4491b40>
1c00c28e:	c31c                	sw	a5,0(a4)
1c00c290:	6705                	lui	a4,0x1
1c00c292:	bf2377b7          	lui	a5,0xbf237
1c00c296:	1fd70713          	addi	a4,a4,509 # 11fd <__CTOR_LIST__-0x1bffee07>
1c00c29a:	970a                	add	a4,a4,sp
1c00c29c:	cb878793          	addi	a5,a5,-840 # bf236cb8 <pulp__FC+0xbf236cb9>
1c00c2a0:	c31c                	sw	a5,0(a4)
1c00c2a2:	6705                	lui	a4,0x1
1c00c2a4:	679d                	lui	a5,0x7
1c00c2a6:	20170713          	addi	a4,a4,513 # 1201 <__CTOR_LIST__-0x1bffee03>
1c00c2aa:	970a                	add	a4,a4,sp
1c00c2ac:	61078793          	addi	a5,a5,1552 # 7610 <__CTOR_LIST__-0x1bff89f4>
1c00c2b0:	00f71023          	sh	a5,0(a4)
1c00c2b4:	6705                	lui	a4,0x1
1c00c2b6:	20370713          	addi	a4,a4,515 # 1203 <__CTOR_LIST__-0x1bffee01>
1c00c2ba:	970a                	add	a4,a4,sp
1c00c2bc:	04300793          	li	a5,67
1c00c2c0:	00f70023          	sb	a5,0(a4)
1c00c2c4:	6705                	lui	a4,0x1
1c00c2c6:	c1b8b7b7          	lui	a5,0xc1b8b
1c00c2ca:	20470713          	addi	a4,a4,516 # 1204 <__CTOR_LIST__-0x1bffee00>
1c00c2ce:	970a                	add	a4,a4,sp
1c00c2d0:	69c78793          	addi	a5,a5,1692 # c1b8b69c <pulp__FC+0xc1b8b69d>
1c00c2d4:	c31c                	sw	a5,0(a4)
1c00c2d6:	6705                	lui	a4,0x1
1c00c2d8:	ba9d47b7          	lui	a5,0xba9d4
1c00c2dc:	20870713          	addi	a4,a4,520 # 1208 <__CTOR_LIST__-0x1bffedfc>
1c00c2e0:	970a                	add	a4,a4,sp
1c00c2e2:	81578793          	addi	a5,a5,-2027 # ba9d3815 <pulp__FC+0xba9d3816>
1c00c2e6:	c31c                	sw	a5,0(a4)
1c00c2e8:	6705                	lui	a4,0x1
1c00c2ea:	910c77b7          	lui	a5,0x910c7
1c00c2ee:	20c70713          	addi	a4,a4,524 # 120c <__CTOR_LIST__-0x1bffedf8>
1c00c2f2:	970a                	add	a4,a4,sp
1c00c2f4:	f4e78793          	addi	a5,a5,-178 # 910c6f4e <pulp__FC+0x910c6f4f>
1c00c2f8:	c31c                	sw	a5,0(a4)
1c00c2fa:	6705                	lui	a4,0x1
1c00c2fc:	2b60e7b7          	lui	a5,0x2b60e
1c00c300:	21070713          	addi	a4,a4,528 # 1210 <__CTOR_LIST__-0x1bffedf4>
1c00c304:	970a                	add	a4,a4,sp
1c00c306:	75b78793          	addi	a5,a5,1883 # 2b60e75b <__l2_shared_end+0xf5fe75b>
1c00c30a:	c31c                	sw	a5,0(a4)
1c00c30c:	6705                	lui	a4,0x1
1c00c30e:	35b507b7          	lui	a5,0x35b50
1c00c312:	21470713          	addi	a4,a4,532 # 1214 <__CTOR_LIST__-0x1bffedf0>
1c00c316:	970a                	add	a4,a4,sp
1c00c318:	39778793          	addi	a5,a5,919 # 35b50397 <__l2_shared_end+0x19b40397>
1c00c31c:	c31c                	sw	a5,0(a4)
1c00c31e:	6705                	lui	a4,0x1
1c00c320:	5c4a17b7          	lui	a5,0x5c4a1
1c00c324:	21870713          	addi	a4,a4,536 # 1218 <__CTOR_LIST__-0x1bffedec>
1c00c328:	970a                	add	a4,a4,sp
1c00c32a:	e0778793          	addi	a5,a5,-505 # 5c4a0e07 <__l2_shared_end+0x40490e07>
1c00c32e:	c31c                	sw	a5,0(a4)
1c00c330:	6705                	lui	a4,0x1
1c00c332:	d7a557b7          	lui	a5,0xd7a55
1c00c336:	21c70713          	addi	a4,a4,540 # 121c <__CTOR_LIST__-0x1bffede8>
1c00c33a:	970a                	add	a4,a4,sp
1c00c33c:	95678793          	addi	a5,a5,-1706 # d7a54956 <pulp__FC+0xd7a54957>
1c00c340:	c31c                	sw	a5,0(a4)
1c00c342:	6705                	lui	a4,0x1
1c00c344:	021507b7          	lui	a5,0x2150
1c00c348:	22070713          	addi	a4,a4,544 # 1220 <__CTOR_LIST__-0x1bffede4>
1c00c34c:	970a                	add	a4,a4,sp
1c00c34e:	50878793          	addi	a5,a5,1288 # 2150508 <__CTOR_LIST__-0x19eafafc>
1c00c352:	c31c                	sw	a5,0(a4)
1c00c354:	6705                	lui	a4,0x1
1c00c356:	60b207b7          	lui	a5,0x60b20
1c00c35a:	22470713          	addi	a4,a4,548 # 1224 <__CTOR_LIST__-0x1bffede0>
1c00c35e:	970a                	add	a4,a4,sp
1c00c360:	66778793          	addi	a5,a5,1639 # 60b20667 <__l2_shared_end+0x44b10667>
1c00c364:	c31c                	sw	a5,0(a4)
1c00c366:	6705                	lui	a4,0x1
1c00c368:	d0cb77b7          	lui	a5,0xd0cb7
1c00c36c:	22870713          	addi	a4,a4,552 # 1228 <__CTOR_LIST__-0x1bffeddc>
1c00c370:	970a                	add	a4,a4,sp
1c00c372:	54578793          	addi	a5,a5,1349 # d0cb7545 <pulp__FC+0xd0cb7546>
1c00c376:	c31c                	sw	a5,0(a4)
1c00c378:	6705                	lui	a4,0x1
1c00c37a:	292787b7          	lui	a5,0x29278
1c00c37e:	22c70713          	addi	a4,a4,556 # 122c <__CTOR_LIST__-0x1bffedd8>
1c00c382:	970a                	add	a4,a4,sp
1c00c384:	f6878793          	addi	a5,a5,-152 # 29277f68 <__l2_shared_end+0xd267f68>
1c00c388:	c31c                	sw	a5,0(a4)
1c00c38a:	6705                	lui	a4,0x1
1c00c38c:	7d9937b7          	lui	a5,0x7d993
1c00c390:	23070713          	addi	a4,a4,560 # 1230 <__CTOR_LIST__-0x1bffedd4>
1c00c394:	970a                	add	a4,a4,sp
1c00c396:	aa978793          	addi	a5,a5,-1367 # 7d992aa9 <__l2_shared_end+0x61982aa9>
1c00c39a:	c31c                	sw	a5,0(a4)
1c00c39c:	6705                	lui	a4,0x1
1c00c39e:	0072f7b7          	lui	a5,0x72f
1c00c3a2:	23470713          	addi	a4,a4,564 # 1234 <__CTOR_LIST__-0x1bffedd0>
1c00c3a6:	970a                	add	a4,a4,sp
1c00c3a8:	a2178793          	addi	a5,a5,-1503 # 72ea21 <__CTOR_LIST__-0x1b8d15e3>
1c00c3ac:	c31c                	sw	a5,0(a4)
1c00c3ae:	6705                	lui	a4,0x1
1c00c3b0:	31d827b7          	lui	a5,0x31d82
1c00c3b4:	23870713          	addi	a4,a4,568 # 1238 <__CTOR_LIST__-0x1bffedcc>
1c00c3b8:	970a                	add	a4,a4,sp
1c00c3ba:	ec478793          	addi	a5,a5,-316 # 31d81ec4 <__l2_shared_end+0x15d71ec4>
1c00c3be:	c31c                	sw	a5,0(a4)
1c00c3c0:	6705                	lui	a4,0x1
1c00c3c2:	c7f477b7          	lui	a5,0xc7f47
1c00c3c6:	23c70713          	addi	a4,a4,572 # 123c <__CTOR_LIST__-0x1bffedc8>
1c00c3ca:	970a                	add	a4,a4,sp
1c00c3cc:	55278793          	addi	a5,a5,1362 # c7f47552 <pulp__FC+0xc7f47553>
1c00c3d0:	c31c                	sw	a5,0(a4)
1c00c3d2:	6705                	lui	a4,0x1
1c00c3d4:	c89b37b7          	lui	a5,0xc89b3
1c00c3d8:	24070713          	addi	a4,a4,576 # 1240 <__CTOR_LIST__-0x1bffedc4>
1c00c3dc:	970a                	add	a4,a4,sp
1c00c3de:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <pulp__FC+0xc89b2fb8>
1c00c3e2:	c31c                	sw	a5,0(a4)
1c00c3e4:	6705                	lui	a4,0x1
1c00c3e6:	b91317b7          	lui	a5,0xb9131
1c00c3ea:	24470713          	addi	a4,a4,580 # 1244 <__CTOR_LIST__-0x1bffedc0>
1c00c3ee:	970a                	add	a4,a4,sp
1c00c3f0:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <pulp__FC+0xb9130a5d>
1c00c3f4:	c31c                	sw	a5,0(a4)
1c00c3f6:	6705                	lui	a4,0x1
1c00c3f8:	6f5847b7          	lui	a5,0x6f584
1c00c3fc:	24870713          	addi	a4,a4,584 # 1248 <__CTOR_LIST__-0x1bffedbc>
1c00c400:	970a                	add	a4,a4,sp
1c00c402:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c00c406:	c31c                	sw	a5,0(a4)
1c00c408:	6705                	lui	a4,0x1
1c00c40a:	b1fe87b7          	lui	a5,0xb1fe8
1c00c40e:	24c70713          	addi	a4,a4,588 # 124c <__CTOR_LIST__-0x1bffedb8>
1c00c412:	970a                	add	a4,a4,sp
1c00c414:	3d578793          	addi	a5,a5,981 # b1fe83d5 <pulp__FC+0xb1fe83d6>
1c00c418:	c31c                	sw	a5,0(a4)
1c00c41a:	6785                	lui	a5,0x1
1c00c41c:	757d                	lui	a0,0xfffff
1c00c41e:	2a078793          	addi	a5,a5,672 # 12a0 <__CTOR_LIST__-0x1bffed64>
1c00c422:	978a                	add	a5,a5,sp
1c00c424:	3a050613          	addi	a2,a0,928 # fffff3a0 <pulp__FC+0xfffff3a1>
1c00c428:	d8050593          	addi	a1,a0,-640
1c00c42c:	6705                	lui	a4,0x1
1c00c42e:	d6050513          	addi	a0,a0,-672
1c00c432:	963e                	add	a2,a2,a5
1c00c434:	95be                	add	a1,a1,a5
1c00c436:	953e                	add	a0,a0,a5
1c00c438:	25070713          	addi	a4,a4,592 # 1250 <__CTOR_LIST__-0x1bffedb4>
1c00c43c:	405b07b7          	lui	a5,0x405b0
1c00c440:	970a                	add	a4,a4,sp
1c00c442:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c00c446:	c31c                	sw	a5,0(a4)
1c00c448:	6705                	lui	a4,0x1
1c00c44a:	433bd7b7          	lui	a5,0x433bd
1c00c44e:	25470713          	addi	a4,a4,596 # 1254 <__CTOR_LIST__-0x1bffedb0>
1c00c452:	970a                	add	a4,a4,sp
1c00c454:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c00c458:	c31c                	sw	a5,0(a4)
1c00c45a:	6705                	lui	a4,0x1
1c00c45c:	a45f47b7          	lui	a5,0xa45f4
1c00c460:	25870713          	addi	a4,a4,600 # 1258 <__CTOR_LIST__-0x1bffedac>
1c00c464:	970a                	add	a4,a4,sp
1c00c466:	f5478793          	addi	a5,a5,-172 # a45f3f54 <pulp__FC+0xa45f3f55>
1c00c46a:	c31c                	sw	a5,0(a4)
1c00c46c:	6705                	lui	a4,0x1
1c00c46e:	8d6c47b7          	lui	a5,0x8d6c4
1c00c472:	25c70713          	addi	a4,a4,604 # 125c <__CTOR_LIST__-0x1bffeda8>
1c00c476:	970a                	add	a4,a4,sp
1c00c478:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <pulp__FC+0x8d6c43ec>
1c00c47c:	c31c                	sw	a5,0(a4)
1c00c47e:	6705                	lui	a4,0x1
1c00c480:	955337b7          	lui	a5,0x95533
1c00c484:	26070713          	addi	a4,a4,608 # 1260 <__CTOR_LIST__-0x1bffeda4>
1c00c488:	970a                	add	a4,a4,sp
1c00c48a:	f9a78793          	addi	a5,a5,-102 # 95532f9a <pulp__FC+0x95532f9b>
1c00c48e:	c31c                	sw	a5,0(a4)
1c00c490:	6705                	lui	a4,0x1
1c00c492:	d51187b7          	lui	a5,0xd5118
1c00c496:	26470713          	addi	a4,a4,612 # 1264 <__CTOR_LIST__-0x1bffeda0>
1c00c49a:	970a                	add	a4,a4,sp
1c00c49c:	f0878793          	addi	a5,a5,-248 # d5117f08 <pulp__FC+0xd5117f09>
1c00c4a0:	c31c                	sw	a5,0(a4)
1c00c4a2:	6705                	lui	a4,0x1
1c00c4a4:	251dc7b7          	lui	a5,0x251dc
1c00c4a8:	26870713          	addi	a4,a4,616 # 1268 <__CTOR_LIST__-0x1bffed9c>
1c00c4ac:	970a                	add	a4,a4,sp
1c00c4ae:	c8d78793          	addi	a5,a5,-883 # 251dbc8d <__l2_shared_end+0x91cbc8d>
1c00c4b2:	c31c                	sw	a5,0(a4)
1c00c4b4:	6705                	lui	a4,0x1
1c00c4b6:	10e197b7          	lui	a5,0x10e19
1c00c4ba:	26c70713          	addi	a4,a4,620 # 126c <__CTOR_LIST__-0x1bffed98>
1c00c4be:	970a                	add	a4,a4,sp
1c00c4c0:	a5878793          	addi	a5,a5,-1448 # 10e18a58 <__CTOR_LIST__-0xb1e75ac>
1c00c4c4:	c31c                	sw	a5,0(a4)
1c00c4c6:	6705                	lui	a4,0x1
1c00c4c8:	abaaa7b7          	lui	a5,0xabaaa
1c00c4cc:	27070713          	addi	a4,a4,624 # 1270 <__CTOR_LIST__-0x1bffed94>
1c00c4d0:	970a                	add	a4,a4,sp
1c00c4d2:	d2078793          	addi	a5,a5,-736 # abaa9d20 <pulp__FC+0xabaa9d21>
1c00c4d6:	c31c                	sw	a5,0(a4)
1c00c4d8:	6705                	lui	a4,0x1
1c00c4da:	4595e7b7          	lui	a5,0x4595e
1c00c4de:	27470713          	addi	a4,a4,628 # 1274 <__CTOR_LIST__-0x1bffed90>
1c00c4e2:	970a                	add	a4,a4,sp
1c00c4e4:	d7578793          	addi	a5,a5,-651 # 4595dd75 <__l2_shared_end+0x2994dd75>
1c00c4e8:	c31c                	sw	a5,0(a4)
1c00c4ea:	6705                	lui	a4,0x1
1c00c4ec:	aa40b7b7          	lui	a5,0xaa40b
1c00c4f0:	27870713          	addi	a4,a4,632 # 1278 <__CTOR_LIST__-0x1bffed8c>
1c00c4f4:	970a                	add	a4,a4,sp
1c00c4f6:	b7678793          	addi	a5,a5,-1162 # aa40ab76 <pulp__FC+0xaa40ab77>
1c00c4fa:	c31c                	sw	a5,0(a4)
1c00c4fc:	6705                	lui	a4,0x1
1c00c4fe:	d479a7b7          	lui	a5,0xd479a
1c00c502:	27c70713          	addi	a4,a4,636 # 127c <__CTOR_LIST__-0x1bffed88>
1c00c506:	970a                	add	a4,a4,sp
1c00c508:	97078793          	addi	a5,a5,-1680 # d4799970 <pulp__FC+0xd4799971>
1c00c50c:	c31c                	sw	a5,0(a4)
1c00c50e:	6705                	lui	a4,0x1
1c00c510:	a62e37b7          	lui	a5,0xa62e3
1c00c514:	28070713          	addi	a4,a4,640 # 1280 <__CTOR_LIST__-0x1bffed84>
1c00c518:	970a                	add	a4,a4,sp
1c00c51a:	a3e78793          	addi	a5,a5,-1474 # a62e2a3e <pulp__FC+0xa62e2a3f>
1c00c51e:	c31c                	sw	a5,0(a4)
1c00c520:	6705                	lui	a4,0x1
1c00c522:	fc76c7b7          	lui	a5,0xfc76c
1c00c526:	28470713          	addi	a4,a4,644 # 1284 <__CTOR_LIST__-0x1bffed80>
1c00c52a:	970a                	add	a4,a4,sp
1c00c52c:	4c978793          	addi	a5,a5,1225 # fc76c4c9 <pulp__FC+0xfc76c4ca>
1c00c530:	c31c                	sw	a5,0(a4)
1c00c532:	6705                	lui	a4,0x1
1c00c534:	13b037b7          	lui	a5,0x13b03
1c00c538:	28870713          	addi	a4,a4,648 # 1288 <__CTOR_LIST__-0x1bffed7c>
1c00c53c:	970a                	add	a4,a4,sp
1c00c53e:	74978793          	addi	a5,a5,1865 # 13b03749 <__CTOR_LIST__-0x84fc8bb>
1c00c542:	c31c                	sw	a5,0(a4)
1c00c544:	6705                	lui	a4,0x1
1c00c546:	93a797b7          	lui	a5,0x93a79
1c00c54a:	28c70713          	addi	a4,a4,652 # 128c <__CTOR_LIST__-0x1bffed78>
1c00c54e:	970a                	add	a4,a4,sp
1c00c550:	3c978793          	addi	a5,a5,969 # 93a793c9 <pulp__FC+0x93a793ca>
1c00c554:	c31c                	sw	a5,0(a4)
1c00c556:	6705                	lui	a4,0x1
1c00c558:	99abc7b7          	lui	a5,0x99abc
1c00c55c:	29070713          	addi	a4,a4,656 # 1290 <__CTOR_LIST__-0x1bffed74>
1c00c560:	970a                	add	a4,a4,sp
1c00c562:	0d678793          	addi	a5,a5,214 # 99abc0d6 <pulp__FC+0x99abc0d7>
1c00c566:	c31c                	sw	a5,0(a4)
1c00c568:	6705                	lui	a4,0x1
1c00c56a:	a85b77b7          	lui	a5,0xa85b7
1c00c56e:	29470713          	addi	a4,a4,660 # 1294 <__CTOR_LIST__-0x1bffed70>
1c00c572:	970a                	add	a4,a4,sp
1c00c574:	96078793          	addi	a5,a5,-1696 # a85b6960 <pulp__FC+0xa85b6961>
1c00c578:	c31c                	sw	a5,0(a4)
1c00c57a:	6705                	lui	a4,0x1
1c00c57c:	da49f7b7          	lui	a5,0xda49f
1c00c580:	29870713          	addi	a4,a4,664 # 1298 <__CTOR_LIST__-0x1bffed6c>
1c00c584:	970a                	add	a4,a4,sp
1c00c586:	63878793          	addi	a5,a5,1592 # da49f638 <pulp__FC+0xda49f639>
1c00c58a:	c31c                	sw	a5,0(a4)
1c00c58c:	6705                	lui	a4,0x1
1c00c58e:	d0a3a7b7          	lui	a5,0xd0a3a
1c00c592:	29c70713          	addi	a4,a4,668 # 129c <__CTOR_LIST__-0x1bffed68>
1c00c596:	970a                	add	a4,a4,sp
1c00c598:	c5378793          	addi	a5,a5,-941 # d0a39c53 <pulp__FC+0xd0a39c54>
1c00c59c:	c31c                	sw	a5,0(a4)
1c00c59e:	24b010ef          	jal	ra,1c00dfe8 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_dec>
1c00c5a2:	1c000537          	lui	a0,0x1c000
1c00c5a6:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c00c5aa:	4fd020ef          	jal	ra,1c00f2a6 <puts>
1c00c5ae:	6305                	lui	t1,0x1
1c00c5b0:	911a                	add	sp,sp,t1
1c00c5b2:	2ac12083          	lw	ra,684(sp)
1c00c5b6:	4501                	li	a0,0
1c00c5b8:	2b010113          	addi	sp,sp,688
1c00c5bc:	8082                	ret

1c00c5be <pos_fll_init>:
1c00c5be:	1101                	addi	sp,sp,-32
1c00c5c0:	1a100637          	lui	a2,0x1a100
1c00c5c4:	ca26                	sw	s1,20(sp)
1c00c5c6:	00451693          	slli	a3,a0,0x4
1c00c5ca:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c00c5ce:	94b6                	add	s1,s1,a3
1c00c5d0:	4098                	lw	a4,0(s1)
1c00c5d2:	c84a                	sw	s2,16(sp)
1c00c5d4:	ce06                	sw	ra,28(sp)
1c00c5d6:	cc22                	sw	s0,24(sp)
1c00c5d8:	c64e                	sw	s3,12(sp)
1c00c5da:	c452                	sw	s4,8(sp)
1c00c5dc:	892a                	mv	s2,a0
1c00c5de:	87ba                	mv	a5,a4
1c00c5e0:	04074563          	bltz	a4,1c00c62a <pos_fll_init+0x6c>
1c00c5e4:	00860593          	addi	a1,a2,8
1c00c5e8:	95b6                	add	a1,a1,a3
1c00c5ea:	419c                	lw	a5,0(a1)
1c00c5ec:	7541                	lui	a0,0xffff0
1c00c5ee:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c00c5f2:	8fe9                	and	a5,a5,a0
1c00c5f4:	6509                	lui	a0,0x2
1c00c5f6:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c00c5fa:	8fc9                	or	a5,a5,a0
1c00c5fc:	f0010537          	lui	a0,0xf0010
1c00c600:	157d                	addi	a0,a0,-1
1c00c602:	8fe9                	and	a5,a5,a0
1c00c604:	00500537          	lui	a0,0x500
1c00c608:	8fc9                	or	a5,a5,a0
1c00c60a:	0631                	addi	a2,a2,12
1c00c60c:	c19c                	sw	a5,0(a1)
1c00c60e:	96b2                	add	a3,a3,a2
1c00c610:	429c                	lw	a5,0(a3)
1c00c612:	fc010637          	lui	a2,0xfc010
1c00c616:	167d                	addi	a2,a2,-1
1c00c618:	8ff1                	and	a5,a5,a2
1c00c61a:	014c0637          	lui	a2,0x14c0
1c00c61e:	8fd1                	or	a5,a5,a2
1c00c620:	c29c                	sw	a5,0(a3)
1c00c622:	c00007b7          	lui	a5,0xc0000
1c00c626:	8fd9                	or	a5,a5,a4
1c00c628:	c09c                	sw	a5,0(s1)
1c00c62a:	1c006437          	lui	s0,0x1c006
1c00c62e:	23440413          	addi	s0,s0,564 # 1c006234 <pos_fll_freq>
1c00c632:	00291993          	slli	s3,s2,0x2
1c00c636:	013406b3          	add	a3,s0,s3
1c00c63a:	0006aa03          	lw	s4,0(a3)
1c00c63e:	020a1d63          	bnez	s4,1c00c678 <pos_fll_init+0xba>
1c00c642:	83e9                	srli	a5,a5,0x1a
1c00c644:	0742                	slli	a4,a4,0x10
1c00c646:	8341                	srli	a4,a4,0x10
1c00c648:	8bbd                	andi	a5,a5,15
1c00c64a:	073e                	slli	a4,a4,0xf
1c00c64c:	17fd                	addi	a5,a5,-1
1c00c64e:	00f75a33          	srl	s4,a4,a5
1c00c652:	1c006537          	lui	a0,0x1c006
1c00c656:	0146a023          	sw	s4,0(a3)
1c00c65a:	23050513          	addi	a0,a0,560 # 1c006230 <stack>
1c00c65e:	954a                	add	a0,a0,s2
1c00c660:	4685                	li	a3,1
1c00c662:	00d50023          	sb	a3,0(a0)
1c00c666:	40f2                	lw	ra,28(sp)
1c00c668:	4462                	lw	s0,24(sp)
1c00c66a:	8552                	mv	a0,s4
1c00c66c:	44d2                	lw	s1,20(sp)
1c00c66e:	4942                	lw	s2,16(sp)
1c00c670:	49b2                	lw	s3,12(sp)
1c00c672:	4a22                	lw	s4,8(sp)
1c00c674:	6105                	addi	sp,sp,32
1c00c676:	8082                	ret
1c00c678:	8552                	mv	a0,s4
1c00c67a:	a8dfb0ef          	jal	ra,1c008106 <__clzsi2>
1c00c67e:	1579                	addi	a0,a0,-2
1c00c680:	00155613          	srli	a2,a0,0x1
1c00c684:	e631                	bnez	a2,1c00c6d0 <pos_fll_init+0x112>
1c00c686:	4709                	li	a4,2
1c00c688:	4585                	li	a1,1
1c00c68a:	4605                	li	a2,1
1c00c68c:	00ca17b3          	sll	a5,s4,a2
1c00c690:	76e1                	lui	a3,0xffff8
1c00c692:	1c006537          	lui	a0,0x1c006
1c00c696:	8efd                	and	a3,a3,a5
1c00c698:	23050513          	addi	a0,a0,560 # 1c006230 <stack>
1c00c69c:	96ae                	add	a3,a3,a1
1c00c69e:	012505b3          	add	a1,a0,s2
1c00c6a2:	00c6d6b3          	srl	a3,a3,a2
1c00c6a6:	944e                	add	s0,s0,s3
1c00c6a8:	0005c603          	lbu	a2,0(a1)
1c00c6ac:	c014                	sw	a3,0(s0)
1c00c6ae:	da45                	beqz	a2,1c00c65e <pos_fll_init+0xa0>
1c00c6b0:	4094                	lw	a3,0(s1)
1c00c6b2:	83bd                	srli	a5,a5,0xf
1c00c6b4:	07c2                	slli	a5,a5,0x10
1c00c6b6:	7641                	lui	a2,0xffff0
1c00c6b8:	83c1                	srli	a5,a5,0x10
1c00c6ba:	8ef1                	and	a3,a3,a2
1c00c6bc:	8edd                	or	a3,a3,a5
1c00c6be:	c40007b7          	lui	a5,0xc4000
1c00c6c2:	8b3d                	andi	a4,a4,15
1c00c6c4:	17fd                	addi	a5,a5,-1
1c00c6c6:	076a                	slli	a4,a4,0x1a
1c00c6c8:	8efd                	and	a3,a3,a5
1c00c6ca:	8ed9                	or	a3,a3,a4
1c00c6cc:	c094                	sw	a3,0(s1)
1c00c6ce:	bf41                	j	1c00c65e <pos_fll_init+0xa0>
1c00c6d0:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c00c6d4:	4685                	li	a3,1
1c00c6d6:	00b695b3          	sll	a1,a3,a1
1c00c6da:	00160713          	addi	a4,a2,1
1c00c6de:	b77d                	j	1c00c68c <pos_fll_init+0xce>

1c00c6e0 <pos_fll_constructor>:
1c00c6e0:	1c0067b7          	lui	a5,0x1c006
1c00c6e4:	23478793          	addi	a5,a5,564 # 1c006234 <pos_fll_freq>
1c00c6e8:	0007a023          	sw	zero,0(a5)
1c00c6ec:	0007a223          	sw	zero,4(a5)
1c00c6f0:	1c0067b7          	lui	a5,0x1c006
1c00c6f4:	22079823          	sh	zero,560(a5) # 1c006230 <stack>
1c00c6f8:	8082                	ret

1c00c6fa <pos_soc_init>:
1c00c6fa:	1141                	addi	sp,sp,-16
1c00c6fc:	c606                	sw	ra,12(sp)
1c00c6fe:	c422                	sw	s0,8(sp)
1c00c700:	37c5                	jal	1c00c6e0 <pos_fll_constructor>
1c00c702:	4501                	li	a0,0
1c00c704:	3d6d                	jal	1c00c5be <pos_fll_init>
1c00c706:	1c006437          	lui	s0,0x1c006
1c00c70a:	22a42e23          	sw	a0,572(s0) # 1c00623c <pos_freq_domains>
1c00c70e:	4505                	li	a0,1
1c00c710:	357d                	jal	1c00c5be <pos_fll_init>
1c00c712:	23c40413          	addi	s0,s0,572
1c00c716:	c408                	sw	a0,8(s0)
1c00c718:	40b2                	lw	ra,12(sp)
1c00c71a:	4422                	lw	s0,8(sp)
1c00c71c:	0141                	addi	sp,sp,16
1c00c71e:	8082                	ret

1c00c720 <KeccakF1600_StatePermute>:
1c00c720:	1a4007b7          	lui	a5,0x1a400
1c00c724:	1141                	addi	sp,sp,-16
1c00c726:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00c72a:	4118                	lw	a4,0(a0)
1c00c72c:	0791                	addi	a5,a5,4
1c00c72e:	fee7ae23          	sw	a4,-4(a5)
1c00c732:	0511                	addi	a0,a0,4
1c00c734:	fed79be3          	bne	a5,a3,1c00c72a <KeccakF1600_StatePermute+0xa>
1c00c738:	1a4007b7          	lui	a5,0x1a400
1c00c73c:	4705                	li	a4,1
1c00c73e:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00c742:	1a400737          	lui	a4,0x1a400
1c00c746:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c00c74a:	8b85                	andi	a5,a5,1
1c00c74c:	dfed                	beqz	a5,1c00c746 <KeccakF1600_StatePermute+0x26>
1c00c74e:	c602                	sw	zero,12(sp)
1c00c750:	4732                	lw	a4,12(sp)
1c00c752:	03100793          	li	a5,49
1c00c756:	02e7c663          	blt	a5,a4,1c00c782 <KeccakF1600_StatePermute+0x62>
1c00c75a:	1a400637          	lui	a2,0x1a400
1c00c75e:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00c762:	03100513          	li	a0,49
1c00c766:	4732                	lw	a4,12(sp)
1c00c768:	47b2                	lw	a5,12(sp)
1c00c76a:	070a                	slli	a4,a4,0x2
1c00c76c:	9732                	add	a4,a4,a2
1c00c76e:	4314                	lw	a3,0(a4)
1c00c770:	4732                	lw	a4,12(sp)
1c00c772:	078a                	slli	a5,a5,0x2
1c00c774:	0705                	addi	a4,a4,1
1c00c776:	c63a                	sw	a4,12(sp)
1c00c778:	97ae                	add	a5,a5,a1
1c00c77a:	4732                	lw	a4,12(sp)
1c00c77c:	c394                	sw	a3,0(a5)
1c00c77e:	fee554e3          	ble	a4,a0,1c00c766 <KeccakF1600_StatePermute+0x46>
1c00c782:	0141                	addi	sp,sp,16
1c00c784:	8082                	ret

1c00c786 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>:
1c00c786:	1141                	addi	sp,sp,-16
1c00c788:	55555337          	lui	t1,0x55555
1c00c78c:	68c1                	lui	a7,0x10
1c00c78e:	c622                	sw	s0,12(sp)
1c00c790:	c426                	sw	s1,8(sp)
1c00c792:	c24a                	sw	s2,4(sp)
1c00c794:	20050e13          	addi	t3,a0,512
1c00c798:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00c79c:	18fd                	addi	a7,a7,-1
1c00c79e:	419c                	lw	a5,0(a1)
1c00c7a0:	0541                	addi	a0,a0,16
1c00c7a2:	0017d713          	srli	a4,a5,0x1
1c00c7a6:	00677733          	and	a4,a4,t1
1c00c7aa:	0067f7b3          	and	a5,a5,t1
1c00c7ae:	97ba                	add	a5,a5,a4
1c00c7b0:	0027d913          	srli	s2,a5,0x2
1c00c7b4:	0087d693          	srli	a3,a5,0x8
1c00c7b8:	00a7d493          	srli	s1,a5,0xa
1c00c7bc:	0107d713          	srli	a4,a5,0x10
1c00c7c0:	0127d413          	srli	s0,a5,0x12
1c00c7c4:	0037f613          	andi	a2,a5,3
1c00c7c8:	00397913          	andi	s2,s2,3
1c00c7cc:	8a8d                	andi	a3,a3,3
1c00c7ce:	888d                	andi	s1,s1,3
1c00c7d0:	8b0d                	andi	a4,a4,3
1c00c7d2:	880d                	andi	s0,s0,3
1c00c7d4:	0047df13          	srli	t5,a5,0x4
1c00c7d8:	0067d393          	srli	t2,a5,0x6
1c00c7dc:	00c7de93          	srli	t4,a5,0xc
1c00c7e0:	00e7d293          	srli	t0,a5,0xe
1c00c7e4:	0147d813          	srli	a6,a5,0x14
1c00c7e8:	0167df93          	srli	t6,a5,0x16
1c00c7ec:	41260633          	sub	a2,a2,s2
1c00c7f0:	8e85                	sub	a3,a3,s1
1c00c7f2:	8f01                	sub	a4,a4,s0
1c00c7f4:	0033f393          	andi	t2,t2,3
1c00c7f8:	0032f293          	andi	t0,t0,3
1c00c7fc:	003fff93          	andi	t6,t6,3
1c00c800:	003f7f13          	andi	t5,t5,3
1c00c804:	003efe93          	andi	t4,t4,3
1c00c808:	00387813          	andi	a6,a6,3
1c00c80c:	0642                	slli	a2,a2,0x10
1c00c80e:	06c2                	slli	a3,a3,0x10
1c00c810:	0742                	slli	a4,a4,0x10
1c00c812:	407f0f33          	sub	t5,t5,t2
1c00c816:	405e8eb3          	sub	t4,t4,t0
1c00c81a:	41f80833          	sub	a6,a6,t6
1c00c81e:	0187d293          	srli	t0,a5,0x18
1c00c822:	01a7d393          	srli	t2,a5,0x1a
1c00c826:	01c7df93          	srli	t6,a5,0x1c
1c00c82a:	8241                	srli	a2,a2,0x10
1c00c82c:	82c1                	srli	a3,a3,0x10
1c00c82e:	8341                	srli	a4,a4,0x10
1c00c830:	0842                	slli	a6,a6,0x10
1c00c832:	0f42                	slli	t5,t5,0x10
1c00c834:	01167633          	and	a2,a2,a7
1c00c838:	0ec2                	slli	t4,t4,0x10
1c00c83a:	0116f6b3          	and	a3,a3,a7
1c00c83e:	01177733          	and	a4,a4,a7
1c00c842:	0032f293          	andi	t0,t0,3
1c00c846:	0033f393          	andi	t2,t2,3
1c00c84a:	003fff93          	andi	t6,t6,3
1c00c84e:	83f9                	srli	a5,a5,0x1e
1c00c850:	01076733          	or	a4,a4,a6
1c00c854:	01e66633          	or	a2,a2,t5
1c00c858:	01d6e6b3          	or	a3,a3,t4
1c00c85c:	40728833          	sub	a6,t0,t2
1c00c860:	40ff87b3          	sub	a5,t6,a5
1c00c864:	fec52823          	sw	a2,-16(a0)
1c00c868:	fed52a23          	sw	a3,-12(a0)
1c00c86c:	fee52c23          	sw	a4,-8(a0)
1c00c870:	ff051e23          	sh	a6,-4(a0)
1c00c874:	fef51f23          	sh	a5,-2(a0)
1c00c878:	0591                	addi	a1,a1,4
1c00c87a:	f3c512e3          	bne	a0,t3,1c00c79e <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1+0x18>
1c00c87e:	4432                	lw	s0,12(sp)
1c00c880:	44a2                	lw	s1,8(sp)
1c00c882:	4912                	lw	s2,4(sp)
1c00c884:	0141                	addi	sp,sp,16
1c00c886:	8082                	ret

1c00c888 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>:
1c00c888:	1141                	addi	sp,sp,-16
1c00c88a:	55555337          	lui	t1,0x55555
1c00c88e:	68c1                	lui	a7,0x10
1c00c890:	c622                	sw	s0,12(sp)
1c00c892:	c426                	sw	s1,8(sp)
1c00c894:	c24a                	sw	s2,4(sp)
1c00c896:	20050e13          	addi	t3,a0,512
1c00c89a:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c00c89e:	18fd                	addi	a7,a7,-1
1c00c8a0:	419c                	lw	a5,0(a1)
1c00c8a2:	0541                	addi	a0,a0,16
1c00c8a4:	0017d713          	srli	a4,a5,0x1
1c00c8a8:	00677733          	and	a4,a4,t1
1c00c8ac:	0067f7b3          	and	a5,a5,t1
1c00c8b0:	97ba                	add	a5,a5,a4
1c00c8b2:	0027d913          	srli	s2,a5,0x2
1c00c8b6:	0087d693          	srli	a3,a5,0x8
1c00c8ba:	00a7d493          	srli	s1,a5,0xa
1c00c8be:	0107d713          	srli	a4,a5,0x10
1c00c8c2:	0127d413          	srli	s0,a5,0x12
1c00c8c6:	0037f613          	andi	a2,a5,3
1c00c8ca:	00397913          	andi	s2,s2,3
1c00c8ce:	8a8d                	andi	a3,a3,3
1c00c8d0:	888d                	andi	s1,s1,3
1c00c8d2:	8b0d                	andi	a4,a4,3
1c00c8d4:	880d                	andi	s0,s0,3
1c00c8d6:	0047df13          	srli	t5,a5,0x4
1c00c8da:	0067d393          	srli	t2,a5,0x6
1c00c8de:	00c7de93          	srli	t4,a5,0xc
1c00c8e2:	00e7d293          	srli	t0,a5,0xe
1c00c8e6:	0147d813          	srli	a6,a5,0x14
1c00c8ea:	0167df93          	srli	t6,a5,0x16
1c00c8ee:	41260633          	sub	a2,a2,s2
1c00c8f2:	8e85                	sub	a3,a3,s1
1c00c8f4:	8f01                	sub	a4,a4,s0
1c00c8f6:	0033f393          	andi	t2,t2,3
1c00c8fa:	0032f293          	andi	t0,t0,3
1c00c8fe:	003fff93          	andi	t6,t6,3
1c00c902:	003f7f13          	andi	t5,t5,3
1c00c906:	003efe93          	andi	t4,t4,3
1c00c90a:	00387813          	andi	a6,a6,3
1c00c90e:	0642                	slli	a2,a2,0x10
1c00c910:	06c2                	slli	a3,a3,0x10
1c00c912:	0742                	slli	a4,a4,0x10
1c00c914:	407f0f33          	sub	t5,t5,t2
1c00c918:	405e8eb3          	sub	t4,t4,t0
1c00c91c:	41f80833          	sub	a6,a6,t6
1c00c920:	0187d293          	srli	t0,a5,0x18
1c00c924:	01a7d393          	srli	t2,a5,0x1a
1c00c928:	01c7df93          	srli	t6,a5,0x1c
1c00c92c:	8241                	srli	a2,a2,0x10
1c00c92e:	82c1                	srli	a3,a3,0x10
1c00c930:	8341                	srli	a4,a4,0x10
1c00c932:	0842                	slli	a6,a6,0x10
1c00c934:	0f42                	slli	t5,t5,0x10
1c00c936:	01167633          	and	a2,a2,a7
1c00c93a:	0ec2                	slli	t4,t4,0x10
1c00c93c:	0116f6b3          	and	a3,a3,a7
1c00c940:	01177733          	and	a4,a4,a7
1c00c944:	0032f293          	andi	t0,t0,3
1c00c948:	0033f393          	andi	t2,t2,3
1c00c94c:	003fff93          	andi	t6,t6,3
1c00c950:	83f9                	srli	a5,a5,0x1e
1c00c952:	01076733          	or	a4,a4,a6
1c00c956:	01e66633          	or	a2,a2,t5
1c00c95a:	01d6e6b3          	or	a3,a3,t4
1c00c95e:	40728833          	sub	a6,t0,t2
1c00c962:	40ff87b3          	sub	a5,t6,a5
1c00c966:	fec52823          	sw	a2,-16(a0)
1c00c96a:	fed52a23          	sw	a3,-12(a0)
1c00c96e:	fee52c23          	sw	a4,-8(a0)
1c00c972:	ff051e23          	sh	a6,-4(a0)
1c00c976:	fef51f23          	sh	a5,-2(a0)
1c00c97a:	0591                	addi	a1,a1,4
1c00c97c:	f3c512e3          	bne	a0,t3,1c00c8a0 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2+0x18>
1c00c980:	4432                	lw	s0,12(sp)
1c00c982:	44a2                	lw	s1,8(sp)
1c00c984:	4912                	lw	s2,4(sp)
1c00c986:	0141                	addi	sp,sp,16
1c00c988:	8082                	ret

1c00c98a <keccak_absorb.constprop.7>:
1c00c98a:	7151                	addi	sp,sp,-240
1c00c98c:	d3a6                	sw	s1,228(sp)
1c00c98e:	cfce                	sw	s3,220(sp)
1c00c990:	cdd2                	sw	s4,216(sp)
1c00c992:	cbd6                	sw	s5,212(sp)
1c00c994:	d786                	sw	ra,236(sp)
1c00c996:	d5a2                	sw	s0,232(sp)
1c00c998:	d1ca                	sw	s2,224(sp)
1c00c99a:	89aa                	mv	s3,a0
1c00c99c:	8a32                	mv	s4,a2
1c00c99e:	84b6                	mv	s1,a3
1c00c9a0:	8aaa                	mv	s5,a0
1c00c9a2:	0c850713          	addi	a4,a0,200
1c00c9a6:	87aa                	mv	a5,a0
1c00c9a8:	4601                	li	a2,0
1c00c9aa:	4681                	li	a3,0
1c00c9ac:	c390                	sw	a2,0(a5)
1c00c9ae:	c3d4                	sw	a3,4(a5)
1c00c9b0:	07a1                	addi	a5,a5,8
1c00c9b2:	fef71be3          	bne	a4,a5,1c00c9a8 <keccak_absorb.constprop.7+0x1e>
1c00c9b6:	08700793          	li	a5,135
1c00c9ba:	0747fb63          	bleu	s4,a5,1c00ca30 <keccak_absorb.constprop.7+0xa6>
1c00c9be:	08700413          	li	s0,135
1c00c9c2:	08858913          	addi	s2,a1,136
1c00c9c6:	874e                	mv	a4,s3
1c00c9c8:	0015c783          	lbu	a5,1(a1)
1c00c9cc:	0025c603          	lbu	a2,2(a1)
1c00c9d0:	0055c883          	lbu	a7,5(a1)
1c00c9d4:	0045c303          	lbu	t1,4(a1)
1c00c9d8:	0065c803          	lbu	a6,6(a1)
1c00c9dc:	0005ce03          	lbu	t3,0(a1)
1c00c9e0:	0035c503          	lbu	a0,3(a1)
1c00c9e4:	0075c683          	lbu	a3,7(a1)
1c00c9e8:	0642                	slli	a2,a2,0x10
1c00c9ea:	07a2                	slli	a5,a5,0x8
1c00c9ec:	08a2                	slli	a7,a7,0x8
1c00c9ee:	8fd1                	or	a5,a5,a2
1c00c9f0:	0068e8b3          	or	a7,a7,t1
1c00c9f4:	0842                	slli	a6,a6,0x10
1c00c9f6:	00072303          	lw	t1,0(a4)
1c00c9fa:	4350                	lw	a2,4(a4)
1c00c9fc:	01c7e7b3          	or	a5,a5,t3
1c00ca00:	0562                	slli	a0,a0,0x18
1c00ca02:	01186833          	or	a6,a6,a7
1c00ca06:	06e2                	slli	a3,a3,0x18
1c00ca08:	8fc9                	or	a5,a5,a0
1c00ca0a:	0106e6b3          	or	a3,a3,a6
1c00ca0e:	00f347b3          	xor	a5,t1,a5
1c00ca12:	8eb1                	xor	a3,a3,a2
1c00ca14:	c31c                	sw	a5,0(a4)
1c00ca16:	c354                	sw	a3,4(a4)
1c00ca18:	05a1                	addi	a1,a1,8
1c00ca1a:	0721                	addi	a4,a4,8
1c00ca1c:	fab916e3          	bne	s2,a1,1c00c9c8 <keccak_absorb.constprop.7+0x3e>
1c00ca20:	85ce                	mv	a1,s3
1c00ca22:	854e                	mv	a0,s3
1c00ca24:	39f5                	jal	1c00c720 <KeccakF1600_StatePermute>
1c00ca26:	f78a0a13          	addi	s4,s4,-136
1c00ca2a:	85ca                	mv	a1,s2
1c00ca2c:	f9446be3          	bltu	s0,s4,1c00c9c2 <keccak_absorb.constprop.7+0x38>
1c00ca30:	003c                	addi	a5,sp,8
1c00ca32:	0918                	addi	a4,sp,144
1c00ca34:	883e                	mv	a6,a5
1c00ca36:	4681                	li	a3,0
1c00ca38:	00d82023          	sw	a3,0(a6)
1c00ca3c:	0811                	addi	a6,a6,4
1c00ca3e:	ff071ce3          	bne	a4,a6,1c00ca36 <keccak_absorb.constprop.7+0xac>
1c00ca42:	060a0463          	beqz	s4,1c00caaa <keccak_absorb.constprop.7+0x120>
1c00ca46:	fffa0713          	addi	a4,s4,-1
1c00ca4a:	4689                	li	a3,2
1c00ca4c:	0ee6f163          	bleu	a4,a3,1c00cb2e <keccak_absorb.constprop.7+0x1a4>
1c00ca50:	002a5893          	srli	a7,s4,0x2
1c00ca54:	862e                	mv	a2,a1
1c00ca56:	86be                	mv	a3,a5
1c00ca58:	4701                	li	a4,0
1c00ca5a:	4208                	lw	a0,0(a2)
1c00ca5c:	0705                	addi	a4,a4,1
1c00ca5e:	c288                	sw	a0,0(a3)
1c00ca60:	0611                	addi	a2,a2,4
1c00ca62:	0691                	addi	a3,a3,4
1c00ca64:	ff176be3          	bltu	a4,a7,1c00ca5a <keccak_absorb.constprop.7+0xd0>
1c00ca68:	ffca7713          	andi	a4,s4,-4
1c00ca6c:	02ea0f63          	beq	s4,a4,1c00caaa <keccak_absorb.constprop.7+0x120>
1c00ca70:	00e586b3          	add	a3,a1,a4
1c00ca74:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c00ca78:	0988                	addi	a0,sp,208
1c00ca7a:	00e506b3          	add	a3,a0,a4
1c00ca7e:	f2c68c23          	sb	a2,-200(a3)
1c00ca82:	00170693          	addi	a3,a4,1
1c00ca86:	0346f263          	bleu	s4,a3,1c00caaa <keccak_absorb.constprop.7+0x120>
1c00ca8a:	00d58633          	add	a2,a1,a3
1c00ca8e:	00064603          	lbu	a2,0(a2)
1c00ca92:	96aa                	add	a3,a3,a0
1c00ca94:	f2c68c23          	sb	a2,-200(a3)
1c00ca98:	0709                	addi	a4,a4,2
1c00ca9a:	01477863          	bleu	s4,a4,1c00caaa <keccak_absorb.constprop.7+0x120>
1c00ca9e:	95ba                	add	a1,a1,a4
1c00caa0:	0005c683          	lbu	a3,0(a1)
1c00caa4:	972a                	add	a4,a4,a0
1c00caa6:	f2d70c23          	sb	a3,-200(a4)
1c00caaa:	0990                	addi	a2,sp,208
1c00caac:	9a32                	add	s4,s4,a2
1c00caae:	f29a0c23          	sb	s1,-200(s4)
1c00cab2:	08f14703          	lbu	a4,143(sp)
1c00cab6:	f8076713          	ori	a4,a4,-128
1c00caba:	08e107a3          	sb	a4,143(sp)
1c00cabe:	0017c703          	lbu	a4,1(a5)
1c00cac2:	0027c883          	lbu	a7,2(a5)
1c00cac6:	0057c503          	lbu	a0,5(a5)
1c00caca:	0047c303          	lbu	t1,4(a5)
1c00cace:	0067c583          	lbu	a1,6(a5)
1c00cad2:	0007ce03          	lbu	t3,0(a5)
1c00cad6:	0037c603          	lbu	a2,3(a5)
1c00cada:	0077c683          	lbu	a3,7(a5)
1c00cade:	08c2                	slli	a7,a7,0x10
1c00cae0:	0722                	slli	a4,a4,0x8
1c00cae2:	0522                	slli	a0,a0,0x8
1c00cae4:	01176733          	or	a4,a4,a7
1c00cae8:	00656533          	or	a0,a0,t1
1c00caec:	05c2                	slli	a1,a1,0x10
1c00caee:	000aa303          	lw	t1,0(s5)
1c00caf2:	004aa883          	lw	a7,4(s5)
1c00caf6:	01c76733          	or	a4,a4,t3
1c00cafa:	0662                	slli	a2,a2,0x18
1c00cafc:	8dc9                	or	a1,a1,a0
1c00cafe:	06e2                	slli	a3,a3,0x18
1c00cb00:	8f51                	or	a4,a4,a2
1c00cb02:	8ecd                	or	a3,a3,a1
1c00cb04:	00e34733          	xor	a4,t1,a4
1c00cb08:	00d8c6b3          	xor	a3,a7,a3
1c00cb0c:	00eaa023          	sw	a4,0(s5)
1c00cb10:	00daa223          	sw	a3,4(s5)
1c00cb14:	07a1                	addi	a5,a5,8
1c00cb16:	0aa1                	addi	s5,s5,8
1c00cb18:	faf813e3          	bne	a6,a5,1c00cabe <keccak_absorb.constprop.7+0x134>
1c00cb1c:	50be                	lw	ra,236(sp)
1c00cb1e:	542e                	lw	s0,232(sp)
1c00cb20:	549e                	lw	s1,228(sp)
1c00cb22:	590e                	lw	s2,224(sp)
1c00cb24:	49fe                	lw	s3,220(sp)
1c00cb26:	4a6e                	lw	s4,216(sp)
1c00cb28:	4ade                	lw	s5,212(sp)
1c00cb2a:	616d                	addi	sp,sp,240
1c00cb2c:	8082                	ret
1c00cb2e:	4701                	li	a4,0
1c00cb30:	b781                	j	1c00ca70 <keccak_absorb.constprop.7+0xe6>

1c00cb32 <shake128_absorb>:
1c00cb32:	7151                	addi	sp,sp,-240
1c00cb34:	d5a2                	sw	s0,232(sp)
1c00cb36:	842a                	mv	s0,a0
1c00cb38:	0c800513          	li	a0,200
1c00cb3c:	d1ca                	sw	s2,224(sp)
1c00cb3e:	cfce                	sw	s3,220(sp)
1c00cb40:	d786                	sw	ra,236(sp)
1c00cb42:	d3a6                	sw	s1,228(sp)
1c00cb44:	cdd2                	sw	s4,216(sp)
1c00cb46:	892e                	mv	s2,a1
1c00cb48:	89b2                	mv	s3,a2
1c00cb4a:	16b020ef          	jal	ra,1c00f4b4 <pi_l2_malloc>
1c00cb4e:	c008                	sw	a0,0(s0)
1c00cb50:	1a050663          	beqz	a0,1c00ccfc <shake128_absorb+0x1ca>
1c00cb54:	8a2a                	mv	s4,a0
1c00cb56:	0c850713          	addi	a4,a0,200
1c00cb5a:	87aa                	mv	a5,a0
1c00cb5c:	4601                	li	a2,0
1c00cb5e:	4681                	li	a3,0
1c00cb60:	c390                	sw	a2,0(a5)
1c00cb62:	c3d4                	sw	a3,4(a5)
1c00cb64:	07a1                	addi	a5,a5,8
1c00cb66:	fef71be3          	bne	a4,a5,1c00cb5c <shake128_absorb+0x2a>
1c00cb6a:	0a700793          	li	a5,167
1c00cb6e:	0937f163          	bleu	s3,a5,1c00cbf0 <shake128_absorb+0xbe>
1c00cb72:	412a04b3          	sub	s1,s4,s2
1c00cb76:	0a700413          	li	s0,167
1c00cb7a:	85ca                	mv	a1,s2
1c00cb7c:	0a890913          	addi	s2,s2,168
1c00cb80:	0015c783          	lbu	a5,1(a1)
1c00cb84:	0025c603          	lbu	a2,2(a1)
1c00cb88:	0055c803          	lbu	a6,5(a1)
1c00cb8c:	0045c303          	lbu	t1,4(a1)
1c00cb90:	0065c503          	lbu	a0,6(a1)
1c00cb94:	0005ce03          	lbu	t3,0(a1)
1c00cb98:	0035c683          	lbu	a3,3(a1)
1c00cb9c:	0075c703          	lbu	a4,7(a1)
1c00cba0:	0642                	slli	a2,a2,0x10
1c00cba2:	07a2                	slli	a5,a5,0x8
1c00cba4:	0822                	slli	a6,a6,0x8
1c00cba6:	00b488b3          	add	a7,s1,a1
1c00cbaa:	8fd1                	or	a5,a5,a2
1c00cbac:	00686833          	or	a6,a6,t1
1c00cbb0:	0542                	slli	a0,a0,0x10
1c00cbb2:	0008a603          	lw	a2,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00cbb6:	0048a303          	lw	t1,4(a7)
1c00cbba:	01c7e7b3          	or	a5,a5,t3
1c00cbbe:	06e2                	slli	a3,a3,0x18
1c00cbc0:	01056533          	or	a0,a0,a6
1c00cbc4:	0762                	slli	a4,a4,0x18
1c00cbc6:	8fd5                	or	a5,a5,a3
1c00cbc8:	8f49                	or	a4,a4,a0
1c00cbca:	8fb1                	xor	a5,a5,a2
1c00cbcc:	00e34733          	xor	a4,t1,a4
1c00cbd0:	00f8a023          	sw	a5,0(a7)
1c00cbd4:	00e8a223          	sw	a4,4(a7)
1c00cbd8:	05a1                	addi	a1,a1,8
1c00cbda:	fab913e3          	bne	s2,a1,1c00cb80 <shake128_absorb+0x4e>
1c00cbde:	85d2                	mv	a1,s4
1c00cbe0:	8552                	mv	a0,s4
1c00cbe2:	f5898993          	addi	s3,s3,-168
1c00cbe6:	3e2d                	jal	1c00c720 <KeccakF1600_StatePermute>
1c00cbe8:	f5848493          	addi	s1,s1,-168
1c00cbec:	f93467e3          	bltu	s0,s3,1c00cb7a <shake128_absorb+0x48>
1c00cbf0:	191c                	addi	a5,sp,176
1c00cbf2:	00810813          	addi	a6,sp,8
1c00cbf6:	4681                	li	a3,0
1c00cbf8:	00d82023          	sw	a3,0(a6)
1c00cbfc:	0811                	addi	a6,a6,4
1c00cbfe:	ff079ce3          	bne	a5,a6,1c00cbf6 <shake128_absorb+0xc4>
1c00cc02:	06098563          	beqz	s3,1c00cc6c <shake128_absorb+0x13a>
1c00cc06:	fff98793          	addi	a5,s3,-1
1c00cc0a:	4709                	li	a4,2
1c00cc0c:	0ef77663          	bleu	a5,a4,1c00ccf8 <shake128_absorb+0x1c6>
1c00cc10:	0029d513          	srli	a0,s3,0x2
1c00cc14:	86ca                	mv	a3,s2
1c00cc16:	0038                	addi	a4,sp,8
1c00cc18:	4781                	li	a5,0
1c00cc1a:	4290                	lw	a2,0(a3)
1c00cc1c:	0785                	addi	a5,a5,1
1c00cc1e:	c310                	sw	a2,0(a4)
1c00cc20:	0691                	addi	a3,a3,4
1c00cc22:	0711                	addi	a4,a4,4
1c00cc24:	fea7ebe3          	bltu	a5,a0,1c00cc1a <shake128_absorb+0xe8>
1c00cc28:	ffc9f793          	andi	a5,s3,-4
1c00cc2c:	04f98063          	beq	s3,a5,1c00cc6c <shake128_absorb+0x13a>
1c00cc30:	00f90733          	add	a4,s2,a5
1c00cc34:	00074683          	lbu	a3,0(a4)
1c00cc38:	0990                	addi	a2,sp,208
1c00cc3a:	00f60733          	add	a4,a2,a5
1c00cc3e:	f2d70c23          	sb	a3,-200(a4)
1c00cc42:	00178713          	addi	a4,a5,1
1c00cc46:	03377363          	bleu	s3,a4,1c00cc6c <shake128_absorb+0x13a>
1c00cc4a:	00e906b3          	add	a3,s2,a4
1c00cc4e:	0006c683          	lbu	a3,0(a3)
1c00cc52:	9732                	add	a4,a4,a2
1c00cc54:	f2d70c23          	sb	a3,-200(a4)
1c00cc58:	0789                	addi	a5,a5,2
1c00cc5a:	0137f963          	bleu	s3,a5,1c00cc6c <shake128_absorb+0x13a>
1c00cc5e:	00f905b3          	add	a1,s2,a5
1c00cc62:	0005c703          	lbu	a4,0(a1)
1c00cc66:	97b2                	add	a5,a5,a2
1c00cc68:	f2e78c23          	sb	a4,-200(a5)
1c00cc6c:	0994                	addi	a3,sp,208
1c00cc6e:	47fd                	li	a5,31
1c00cc70:	99b6                	add	s3,s3,a3
1c00cc72:	f2f98c23          	sb	a5,-200(s3)
1c00cc76:	0af14703          	lbu	a4,175(sp)
1c00cc7a:	003c                	addi	a5,sp,8
1c00cc7c:	f8076713          	ori	a4,a4,-128
1c00cc80:	0ae107a3          	sb	a4,175(sp)
1c00cc84:	40fa0a33          	sub	s4,s4,a5
1c00cc88:	0017c703          	lbu	a4,1(a5)
1c00cc8c:	0027c303          	lbu	t1,2(a5)
1c00cc90:	0057c503          	lbu	a0,5(a5)
1c00cc94:	0047ce03          	lbu	t3,4(a5)
1c00cc98:	0067c583          	lbu	a1,6(a5)
1c00cc9c:	0007ce83          	lbu	t4,0(a5)
1c00cca0:	0037c603          	lbu	a2,3(a5)
1c00cca4:	0077c683          	lbu	a3,7(a5)
1c00cca8:	0342                	slli	t1,t1,0x10
1c00ccaa:	0722                	slli	a4,a4,0x8
1c00ccac:	0522                	slli	a0,a0,0x8
1c00ccae:	00fa08b3          	add	a7,s4,a5
1c00ccb2:	00676733          	or	a4,a4,t1
1c00ccb6:	01c56533          	or	a0,a0,t3
1c00ccba:	05c2                	slli	a1,a1,0x10
1c00ccbc:	0008ae03          	lw	t3,0(a7)
1c00ccc0:	0048a303          	lw	t1,4(a7)
1c00ccc4:	01d76733          	or	a4,a4,t4
1c00ccc8:	0662                	slli	a2,a2,0x18
1c00ccca:	8dc9                	or	a1,a1,a0
1c00cccc:	06e2                	slli	a3,a3,0x18
1c00ccce:	8f51                	or	a4,a4,a2
1c00ccd0:	8ecd                	or	a3,a3,a1
1c00ccd2:	00ee4733          	xor	a4,t3,a4
1c00ccd6:	00d346b3          	xor	a3,t1,a3
1c00ccda:	00e8a023          	sw	a4,0(a7)
1c00ccde:	00d8a223          	sw	a3,4(a7)
1c00cce2:	07a1                	addi	a5,a5,8
1c00cce4:	faf812e3          	bne	a6,a5,1c00cc88 <shake128_absorb+0x156>
1c00cce8:	50be                	lw	ra,236(sp)
1c00ccea:	542e                	lw	s0,232(sp)
1c00ccec:	549e                	lw	s1,228(sp)
1c00ccee:	590e                	lw	s2,224(sp)
1c00ccf0:	49fe                	lw	s3,220(sp)
1c00ccf2:	4a6e                	lw	s4,216(sp)
1c00ccf4:	616d                	addi	sp,sp,240
1c00ccf6:	8082                	ret
1c00ccf8:	4781                	li	a5,0
1c00ccfa:	bf1d                	j	1c00cc30 <shake128_absorb+0xfe>
1c00ccfc:	06f00513          	li	a0,111
1c00cd00:	5fa020ef          	jal	ra,1c00f2fa <exit>

1c00cd04 <shake128_squeezeblocks>:
1c00cd04:	1101                	addi	sp,sp,-32
1c00cd06:	c452                	sw	s4,8(sp)
1c00cd08:	ce06                	sw	ra,28(sp)
1c00cd0a:	cc22                	sw	s0,24(sp)
1c00cd0c:	ca26                	sw	s1,20(sp)
1c00cd0e:	c84a                	sw	s2,16(sp)
1c00cd10:	c64e                	sw	s3,12(sp)
1c00cd12:	c256                	sw	s5,4(sp)
1c00cd14:	00062a03          	lw	s4,0(a2)
1c00cd18:	cdc9                	beqz	a1,1c00cdb2 <shake128_squeezeblocks+0xae>
1c00cd1a:	7941                	lui	s2,0xffff0
1c00cd1c:	ff0104b7          	lui	s1,0xff010
1c00cd20:	01000437          	lui	s0,0x1000
1c00cd24:	89ae                	mv	s3,a1
1c00cd26:	8aaa                	mv	s5,a0
1c00cd28:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c00cd2c:	14fd                	addi	s1,s1,-1
1c00cd2e:	147d                	addi	s0,s0,-1
1c00cd30:	85d2                	mv	a1,s4
1c00cd32:	8552                	mv	a0,s4
1c00cd34:	32f5                	jal	1c00c720 <KeccakF1600_StatePermute>
1c00cd36:	85d6                	mv	a1,s5
1c00cd38:	8852                	mv	a6,s4
1c00cd3a:	0a8a8513          	addi	a0,s5,168
1c00cd3e:	00082603          	lw	a2,0(a6)
1c00cd42:	00482683          	lw	a3,4(a6)
1c00cd46:	00865313          	srli	t1,a2,0x8
1c00cd4a:	0086d893          	srli	a7,a3,0x8
1c00cd4e:	0ff67713          	andi	a4,a2,255
1c00cd52:	0ff6f793          	andi	a5,a3,255
1c00cd56:	0ff37313          	andi	t1,t1,255
1c00cd5a:	0ff8f893          	andi	a7,a7,255
1c00cd5e:	0322                	slli	t1,t1,0x8
1c00cd60:	08a2                	slli	a7,a7,0x8
1c00cd62:	01277733          	and	a4,a4,s2
1c00cd66:	0127f7b3          	and	a5,a5,s2
1c00cd6a:	00676733          	or	a4,a4,t1
1c00cd6e:	0117e7b3          	or	a5,a5,a7
1c00cd72:	00ff0337          	lui	t1,0xff0
1c00cd76:	00ff08b7          	lui	a7,0xff0
1c00cd7a:	00667333          	and	t1,a2,t1
1c00cd7e:	0116f8b3          	and	a7,a3,a7
1c00cd82:	8f65                	and	a4,a4,s1
1c00cd84:	8fe5                	and	a5,a5,s1
1c00cd86:	00676733          	or	a4,a4,t1
1c00cd8a:	8261                	srli	a2,a2,0x18
1c00cd8c:	0117e7b3          	or	a5,a5,a7
1c00cd90:	82e1                	srli	a3,a3,0x18
1c00cd92:	0662                	slli	a2,a2,0x18
1c00cd94:	8f61                	and	a4,a4,s0
1c00cd96:	06e2                	slli	a3,a3,0x18
1c00cd98:	8fe1                	and	a5,a5,s0
1c00cd9a:	8f51                	or	a4,a4,a2
1c00cd9c:	8fd5                	or	a5,a5,a3
1c00cd9e:	c198                	sw	a4,0(a1)
1c00cda0:	c1dc                	sw	a5,4(a1)
1c00cda2:	05a1                	addi	a1,a1,8
1c00cda4:	0821                	addi	a6,a6,8
1c00cda6:	f8b51ce3          	bne	a0,a1,1c00cd3e <shake128_squeezeblocks+0x3a>
1c00cdaa:	19fd                	addi	s3,s3,-1
1c00cdac:	8aaa                	mv	s5,a0
1c00cdae:	f80991e3          	bnez	s3,1c00cd30 <shake128_squeezeblocks+0x2c>
1c00cdb2:	40f2                	lw	ra,28(sp)
1c00cdb4:	4462                	lw	s0,24(sp)
1c00cdb6:	44d2                	lw	s1,20(sp)
1c00cdb8:	4942                	lw	s2,16(sp)
1c00cdba:	49b2                	lw	s3,12(sp)
1c00cdbc:	4a22                	lw	s4,8(sp)
1c00cdbe:	4a92                	lw	s5,4(sp)
1c00cdc0:	6105                	addi	sp,sp,32
1c00cdc2:	8082                	ret

1c00cdc4 <shake128_ctx_release>:
1c00cdc4:	4108                	lw	a0,0(a0)
1c00cdc6:	0c800593          	li	a1,200
1c00cdca:	6f60206f          	j	1c00f4c0 <pi_l2_free>

1c00cdce <shake256>:
1c00cdce:	7131                	addi	sp,sp,-192
1c00cdd0:	db26                	sw	s1,180(sp)
1c00cdd2:	d94a                	sw	s2,176(sp)
1c00cdd4:	08800493          	li	s1,136
1c00cdd8:	892a                	mv	s2,a0
1c00cdda:	0c800513          	li	a0,200
1c00cdde:	dd22                	sw	s0,184(sp)
1c00cde0:	d74e                	sw	s3,172(sp)
1c00cde2:	d552                	sw	s4,168(sp)
1c00cde4:	df06                	sw	ra,188(sp)
1c00cde6:	d356                	sw	s5,164(sp)
1c00cde8:	d15a                	sw	s6,160(sp)
1c00cdea:	cf5e                	sw	s7,156(sp)
1c00cdec:	cd62                	sw	s8,152(sp)
1c00cdee:	cb66                	sw	s9,148(sp)
1c00cdf0:	89ae                	mv	s3,a1
1c00cdf2:	8432                	mv	s0,a2
1c00cdf4:	8a36                	mv	s4,a3
1c00cdf6:	0295d4b3          	divu	s1,a1,s1
1c00cdfa:	6ba020ef          	jal	ra,1c00f4b4 <pi_l2_malloc>
1c00cdfe:	20050263          	beqz	a0,1c00d002 <shake256+0x234>
1c00ce02:	46fd                	li	a3,31
1c00ce04:	8652                	mv	a2,s4
1c00ce06:	85a2                	mv	a1,s0
1c00ce08:	8b2a                	mv	s6,a0
1c00ce0a:	3641                	jal	1c00c98a <keccak_absorb.constprop.7>
1c00ce0c:	c4dd                	beqz	s1,1c00ceba <shake256+0xec>
1c00ce0e:	00449713          	slli	a4,s1,0x4
1c00ce12:	00970433          	add	s0,a4,s1
1c00ce16:	040e                	slli	s0,s0,0x3
1c00ce18:	7bc1                	lui	s7,0xffff0
1c00ce1a:	ff010ab7          	lui	s5,0xff010
1c00ce1e:	01000a37          	lui	s4,0x1000
1c00ce22:	412b0c33          	sub	s8,s6,s2
1c00ce26:	944a                	add	s0,s0,s2
1c00ce28:	8cca                	mv	s9,s2
1c00ce2a:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00ce2e:	1afd                	addi	s5,s5,-1
1c00ce30:	1a7d                	addi	s4,s4,-1
1c00ce32:	85da                	mv	a1,s6
1c00ce34:	855a                	mv	a0,s6
1c00ce36:	30ed                	jal	1c00c720 <KeccakF1600_StatePermute>
1c00ce38:	8666                	mv	a2,s9
1c00ce3a:	088c8593          	addi	a1,s9,136
1c00ce3e:	00cc07b3          	add	a5,s8,a2
1c00ce42:	4388                	lw	a0,0(a5)
1c00ce44:	43d4                	lw	a3,4(a5)
1c00ce46:	00855893          	srli	a7,a0,0x8
1c00ce4a:	0086d813          	srli	a6,a3,0x8
1c00ce4e:	0ff57713          	andi	a4,a0,255
1c00ce52:	0ff6f793          	andi	a5,a3,255
1c00ce56:	0ff8f893          	andi	a7,a7,255
1c00ce5a:	0ff87813          	andi	a6,a6,255
1c00ce5e:	08a2                	slli	a7,a7,0x8
1c00ce60:	0822                	slli	a6,a6,0x8
1c00ce62:	01777733          	and	a4,a4,s7
1c00ce66:	0177f7b3          	and	a5,a5,s7
1c00ce6a:	01176733          	or	a4,a4,a7
1c00ce6e:	0107e7b3          	or	a5,a5,a6
1c00ce72:	00ff08b7          	lui	a7,0xff0
1c00ce76:	00ff0837          	lui	a6,0xff0
1c00ce7a:	011578b3          	and	a7,a0,a7
1c00ce7e:	0106f833          	and	a6,a3,a6
1c00ce82:	01577733          	and	a4,a4,s5
1c00ce86:	0157f7b3          	and	a5,a5,s5
1c00ce8a:	01176733          	or	a4,a4,a7
1c00ce8e:	8161                	srli	a0,a0,0x18
1c00ce90:	0107e7b3          	or	a5,a5,a6
1c00ce94:	82e1                	srli	a3,a3,0x18
1c00ce96:	0562                	slli	a0,a0,0x18
1c00ce98:	01477733          	and	a4,a4,s4
1c00ce9c:	06e2                	slli	a3,a3,0x18
1c00ce9e:	0147f7b3          	and	a5,a5,s4
1c00cea2:	8f49                	or	a4,a4,a0
1c00cea4:	8fd5                	or	a5,a5,a3
1c00cea6:	c218                	sw	a4,0(a2)
1c00cea8:	c25c                	sw	a5,4(a2)
1c00ceaa:	0621                	addi	a2,a2,8
1c00ceac:	f8c599e3          	bne	a1,a2,1c00ce3e <shake256+0x70>
1c00ceb0:	8cae                	mv	s9,a1
1c00ceb2:	f78c0c13          	addi	s8,s8,-136
1c00ceb6:	f6b41ee3          	bne	s0,a1,1c00ce32 <shake256+0x64>
1c00ceba:	08800793          	li	a5,136
1c00cebe:	02f9f9b3          	remu	s3,s3,a5
1c00cec2:	02099363          	bnez	s3,1c00cee8 <shake256+0x11a>
1c00cec6:	546a                	lw	s0,184(sp)
1c00cec8:	50fa                	lw	ra,188(sp)
1c00ceca:	54da                	lw	s1,180(sp)
1c00cecc:	594a                	lw	s2,176(sp)
1c00cece:	59ba                	lw	s3,172(sp)
1c00ced0:	5a2a                	lw	s4,168(sp)
1c00ced2:	5a9a                	lw	s5,164(sp)
1c00ced4:	4bfa                	lw	s7,156(sp)
1c00ced6:	4c6a                	lw	s8,152(sp)
1c00ced8:	4cda                	lw	s9,148(sp)
1c00ceda:	855a                	mv	a0,s6
1c00cedc:	5b0a                	lw	s6,160(sp)
1c00cede:	0c800593          	li	a1,200
1c00cee2:	6129                	addi	sp,sp,192
1c00cee4:	5dc0206f          	j	1c00f4c0 <pi_l2_free>
1c00cee8:	85da                	mv	a1,s6
1c00ceea:	855a                	mv	a0,s6
1c00ceec:	835ff0ef          	jal	ra,1c00c720 <KeccakF1600_StatePermute>
1c00cef0:	002c                	addi	a1,sp,8
1c00cef2:	78c1                	lui	a7,0xffff0
1c00cef4:	ff010837          	lui	a6,0xff010
1c00cef8:	01000537          	lui	a0,0x1000
1c00cefc:	09010e13          	addi	t3,sp,144
1c00cf00:	862e                	mv	a2,a1
1c00cf02:	40bb0333          	sub	t1,s6,a1
1c00cf06:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00cf0a:	187d                	addi	a6,a6,-1
1c00cf0c:	157d                	addi	a0,a0,-1
1c00cf0e:	00c307b3          	add	a5,t1,a2
1c00cf12:	0007ae83          	lw	t4,0(a5)
1c00cf16:	43d4                	lw	a3,4(a5)
1c00cf18:	008edf93          	srli	t6,t4,0x8
1c00cf1c:	0086df13          	srli	t5,a3,0x8
1c00cf20:	0ffef713          	andi	a4,t4,255
1c00cf24:	0ff6f793          	andi	a5,a3,255
1c00cf28:	0fffff93          	andi	t6,t6,255
1c00cf2c:	0fff7f13          	andi	t5,t5,255
1c00cf30:	0fa2                	slli	t6,t6,0x8
1c00cf32:	0f22                	slli	t5,t5,0x8
1c00cf34:	01177733          	and	a4,a4,a7
1c00cf38:	0117f7b3          	and	a5,a5,a7
1c00cf3c:	01f76733          	or	a4,a4,t6
1c00cf40:	01e7e7b3          	or	a5,a5,t5
1c00cf44:	00ff0fb7          	lui	t6,0xff0
1c00cf48:	00ff0f37          	lui	t5,0xff0
1c00cf4c:	01feffb3          	and	t6,t4,t6
1c00cf50:	01e6ff33          	and	t5,a3,t5
1c00cf54:	01077733          	and	a4,a4,a6
1c00cf58:	0107f7b3          	and	a5,a5,a6
1c00cf5c:	01f76733          	or	a4,a4,t6
1c00cf60:	018ede93          	srli	t4,t4,0x18
1c00cf64:	01e7e7b3          	or	a5,a5,t5
1c00cf68:	82e1                	srli	a3,a3,0x18
1c00cf6a:	0ee2                	slli	t4,t4,0x18
1c00cf6c:	8f69                	and	a4,a4,a0
1c00cf6e:	06e2                	slli	a3,a3,0x18
1c00cf70:	8fe9                	and	a5,a5,a0
1c00cf72:	01d76733          	or	a4,a4,t4
1c00cf76:	8fd5                	or	a5,a5,a3
1c00cf78:	c218                	sw	a4,0(a2)
1c00cf7a:	c25c                	sw	a5,4(a2)
1c00cf7c:	0621                	addi	a2,a2,8
1c00cf7e:	f8ce18e3          	bne	t3,a2,1c00cf0e <shake256+0x140>
1c00cf82:	fff98793          	addi	a5,s3,-1
1c00cf86:	4709                	li	a4,2
1c00cf88:	06f77963          	bleu	a5,a4,1c00cffa <shake256+0x22c>
1c00cf8c:	00449713          	slli	a4,s1,0x4
1c00cf90:	009707b3          	add	a5,a4,s1
1c00cf94:	078e                	slli	a5,a5,0x3
1c00cf96:	0029d513          	srli	a0,s3,0x2
1c00cf9a:	97ca                	add	a5,a5,s2
1c00cf9c:	4681                	li	a3,0
1c00cf9e:	4190                	lw	a2,0(a1)
1c00cfa0:	0685                	addi	a3,a3,1
1c00cfa2:	c390                	sw	a2,0(a5)
1c00cfa4:	0591                	addi	a1,a1,4
1c00cfa6:	0791                	addi	a5,a5,4
1c00cfa8:	fea6ebe3          	bltu	a3,a0,1c00cf9e <shake256+0x1d0>
1c00cfac:	ffc9f693          	andi	a3,s3,-4
1c00cfb0:	f0d98be3          	beq	s3,a3,1c00cec6 <shake256+0xf8>
1c00cfb4:	009707b3          	add	a5,a4,s1
1c00cfb8:	090c                	addi	a1,sp,144
1c00cfba:	00d58733          	add	a4,a1,a3
1c00cfbe:	078e                	slli	a5,a5,0x3
1c00cfc0:	f7874603          	lbu	a2,-136(a4)
1c00cfc4:	97ca                	add	a5,a5,s2
1c00cfc6:	00d78733          	add	a4,a5,a3
1c00cfca:	00c70023          	sb	a2,0(a4)
1c00cfce:	00168713          	addi	a4,a3,1
1c00cfd2:	ef377ae3          	bleu	s3,a4,1c00cec6 <shake256+0xf8>
1c00cfd6:	00e58633          	add	a2,a1,a4
1c00cfda:	f7864603          	lbu	a2,-136(a2)
1c00cfde:	973e                	add	a4,a4,a5
1c00cfe0:	00c70023          	sb	a2,0(a4)
1c00cfe4:	0689                	addi	a3,a3,2
1c00cfe6:	ef36f0e3          	bleu	s3,a3,1c00cec6 <shake256+0xf8>
1c00cfea:	00d58733          	add	a4,a1,a3
1c00cfee:	f7874703          	lbu	a4,-136(a4)
1c00cff2:	97b6                	add	a5,a5,a3
1c00cff4:	00e78023          	sb	a4,0(a5)
1c00cff8:	b5f9                	j	1c00cec6 <shake256+0xf8>
1c00cffa:	4681                	li	a3,0
1c00cffc:	00449713          	slli	a4,s1,0x4
1c00d000:	bf55                	j	1c00cfb4 <shake256+0x1e6>
1c00d002:	06f00513          	li	a0,111
1c00d006:	2f4020ef          	jal	ra,1c00f2fa <exit>

1c00d00a <sha3_256>:
1c00d00a:	7111                	addi	sp,sp,-256
1c00d00c:	dda2                	sw	s0,248(sp)
1c00d00e:	4699                	li	a3,6
1c00d010:	842a                	mv	s0,a0
1c00d012:	0028                	addi	a0,sp,8
1c00d014:	df86                	sw	ra,252(sp)
1c00d016:	dba6                	sw	s1,244(sp)
1c00d018:	d9ca                	sw	s2,240(sp)
1c00d01a:	d7ce                	sw	s3,236(sp)
1c00d01c:	d5d2                	sw	s4,232(sp)
1c00d01e:	d3d6                	sw	s5,228(sp)
1c00d020:	d1da                	sw	s6,224(sp)
1c00d022:	cfde                	sw	s7,220(sp)
1c00d024:	cde2                	sw	s8,216(sp)
1c00d026:	cbe6                	sw	s9,212(sp)
1c00d028:	c9ea                	sw	s10,208(sp)
1c00d02a:	3285                	jal	1c00c98a <keccak_absorb.constprop.7>
1c00d02c:	002c                	addi	a1,sp,8
1c00d02e:	852e                	mv	a0,a1
1c00d030:	ef0ff0ef          	jal	ra,1c00c720 <KeccakF1600_StatePermute>
1c00d034:	4f32                	lw	t5,12(sp)
1c00d036:	4922                	lw	s2,8(sp)
1c00d038:	4ec2                	lw	t4,16(sp)
1c00d03a:	4e52                	lw	t3,20(sp)
1c00d03c:	4362                	lw	t1,24(sp)
1c00d03e:	44f2                	lw	s1,28(sp)
1c00d040:	5382                	lw	t2,32(sp)
1c00d042:	5292                	lw	t0,36(sp)
1c00d044:	00895813          	srli	a6,s2,0x8
1c00d048:	008f5513          	srli	a0,t5,0x8
1c00d04c:	008ed593          	srli	a1,t4,0x8
1c00d050:	008e5613          	srli	a2,t3,0x8
1c00d054:	00835693          	srli	a3,t1,0x8
1c00d058:	0084d713          	srli	a4,s1,0x8
1c00d05c:	0083d993          	srli	s3,t2,0x8
1c00d060:	0082df93          	srli	t6,t0,0x8
1c00d064:	0ff87813          	andi	a6,a6,255
1c00d068:	0ff57513          	andi	a0,a0,255
1c00d06c:	0ff5f593          	andi	a1,a1,255
1c00d070:	0ff67613          	andi	a2,a2,255
1c00d074:	0ff6f693          	andi	a3,a3,255
1c00d078:	0ff77713          	andi	a4,a4,255
1c00d07c:	0ff9f993          	andi	s3,s3,255
1c00d080:	0fffff93          	andi	t6,t6,255
1c00d084:	0fff7d13          	andi	s10,t5,255
1c00d088:	0ffefc93          	andi	s9,t4,255
1c00d08c:	0ffe7c13          	andi	s8,t3,255
1c00d090:	0ff37b93          	andi	s7,t1,255
1c00d094:	0ff4fb13          	andi	s6,s1,255
1c00d098:	0ff3fa93          	andi	s5,t2,255
1c00d09c:	0ff2fa13          	andi	s4,t0,255
1c00d0a0:	0822                	slli	a6,a6,0x8
1c00d0a2:	0ff97893          	andi	a7,s2,255
1c00d0a6:	0522                	slli	a0,a0,0x8
1c00d0a8:	05a2                	slli	a1,a1,0x8
1c00d0aa:	0622                	slli	a2,a2,0x8
1c00d0ac:	06a2                	slli	a3,a3,0x8
1c00d0ae:	0722                	slli	a4,a4,0x8
1c00d0b0:	09a2                	slli	s3,s3,0x8
1c00d0b2:	0fa2                	slli	t6,t6,0x8
1c00d0b4:	ff0107b7          	lui	a5,0xff010
1c00d0b8:	17fd                	addi	a5,a5,-1
1c00d0ba:	01fa6fb3          	or	t6,s4,t6
1c00d0be:	0108e8b3          	or	a7,a7,a6
1c00d0c2:	00ff0a37          	lui	s4,0xff0
1c00d0c6:	00ad6833          	or	a6,s10,a0
1c00d0ca:	00bce533          	or	a0,s9,a1
1c00d0ce:	00ff0d37          	lui	s10,0xff0
1c00d0d2:	00cc65b3          	or	a1,s8,a2
1c00d0d6:	00ff0cb7          	lui	s9,0xff0
1c00d0da:	00dbe633          	or	a2,s7,a3
1c00d0de:	00ff0c37          	lui	s8,0xff0
1c00d0e2:	00eb66b3          	or	a3,s6,a4
1c00d0e6:	00ff0bb7          	lui	s7,0xff0
1c00d0ea:	013ae733          	or	a4,s5,s3
1c00d0ee:	00ff0b37          	lui	s6,0xff0
1c00d0f2:	00ff0ab7          	lui	s5,0xff0
1c00d0f6:	00ff09b7          	lui	s3,0xff0
1c00d0fa:	01a97d33          	and	s10,s2,s10
1c00d0fe:	019f7cb3          	and	s9,t5,s9
1c00d102:	018efc33          	and	s8,t4,s8
1c00d106:	017e7bb3          	and	s7,t3,s7
1c00d10a:	01637b33          	and	s6,t1,s6
1c00d10e:	0154fab3          	and	s5,s1,s5
1c00d112:	0143fa33          	and	s4,t2,s4
1c00d116:	0132f9b3          	and	s3,t0,s3
1c00d11a:	00f8f8b3          	and	a7,a7,a5
1c00d11e:	00f87833          	and	a6,a6,a5
1c00d122:	8d7d                	and	a0,a0,a5
1c00d124:	8dfd                	and	a1,a1,a5
1c00d126:	8e7d                	and	a2,a2,a5
1c00d128:	8efd                	and	a3,a3,a5
1c00d12a:	8f7d                	and	a4,a4,a5
1c00d12c:	00fff7b3          	and	a5,t6,a5
1c00d130:	01000fb7          	lui	t6,0x1000
1c00d134:	1ffd                	addi	t6,t6,-1
1c00d136:	01a8e8b3          	or	a7,a7,s10
1c00d13a:	01986833          	or	a6,a6,s9
1c00d13e:	01856533          	or	a0,a0,s8
1c00d142:	0175e5b3          	or	a1,a1,s7
1c00d146:	01666633          	or	a2,a2,s6
1c00d14a:	0156e6b3          	or	a3,a3,s5
1c00d14e:	01476733          	or	a4,a4,s4
1c00d152:	0137e7b3          	or	a5,a5,s3
1c00d156:	01895913          	srli	s2,s2,0x18
1c00d15a:	018f5f13          	srli	t5,t5,0x18
1c00d15e:	018ede93          	srli	t4,t4,0x18
1c00d162:	018e5e13          	srli	t3,t3,0x18
1c00d166:	01835313          	srli	t1,t1,0x18
1c00d16a:	80e1                	srli	s1,s1,0x18
1c00d16c:	0183d393          	srli	t2,t2,0x18
1c00d170:	0182d293          	srli	t0,t0,0x18
1c00d174:	0962                	slli	s2,s2,0x18
1c00d176:	04e2                	slli	s1,s1,0x18
1c00d178:	01f8f8b3          	and	a7,a7,t6
1c00d17c:	0f62                	slli	t5,t5,0x18
1c00d17e:	01f87833          	and	a6,a6,t6
1c00d182:	0ee2                	slli	t4,t4,0x18
1c00d184:	01f57533          	and	a0,a0,t6
1c00d188:	0e62                	slli	t3,t3,0x18
1c00d18a:	01f5f5b3          	and	a1,a1,t6
1c00d18e:	0362                	slli	t1,t1,0x18
1c00d190:	01f67633          	and	a2,a2,t6
1c00d194:	01f6f6b3          	and	a3,a3,t6
1c00d198:	03e2                	slli	t2,t2,0x18
1c00d19a:	01f77733          	and	a4,a4,t6
1c00d19e:	02e2                	slli	t0,t0,0x18
1c00d1a0:	01f7f7b3          	and	a5,a5,t6
1c00d1a4:	0128e8b3          	or	a7,a7,s2
1c00d1a8:	8ec5                	or	a3,a3,s1
1c00d1aa:	01e86833          	or	a6,a6,t5
1c00d1ae:	01d56533          	or	a0,a0,t4
1c00d1b2:	01c5e5b3          	or	a1,a1,t3
1c00d1b6:	00666633          	or	a2,a2,t1
1c00d1ba:	00776733          	or	a4,a4,t2
1c00d1be:	0057e7b3          	or	a5,a5,t0
1c00d1c2:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c00d1c6:	01042223          	sw	a6,4(s0)
1c00d1ca:	c408                	sw	a0,8(s0)
1c00d1cc:	c44c                	sw	a1,12(s0)
1c00d1ce:	c810                	sw	a2,16(s0)
1c00d1d0:	c854                	sw	a3,20(s0)
1c00d1d2:	cc18                	sw	a4,24(s0)
1c00d1d4:	cc5c                	sw	a5,28(s0)
1c00d1d6:	50fe                	lw	ra,252(sp)
1c00d1d8:	546e                	lw	s0,248(sp)
1c00d1da:	54de                	lw	s1,244(sp)
1c00d1dc:	594e                	lw	s2,240(sp)
1c00d1de:	59be                	lw	s3,236(sp)
1c00d1e0:	5a2e                	lw	s4,232(sp)
1c00d1e2:	5a9e                	lw	s5,228(sp)
1c00d1e4:	5b0e                	lw	s6,224(sp)
1c00d1e6:	4bfe                	lw	s7,220(sp)
1c00d1e8:	4c6e                	lw	s8,216(sp)
1c00d1ea:	4cde                	lw	s9,212(sp)
1c00d1ec:	4d4e                	lw	s10,208(sp)
1c00d1ee:	6111                	addi	sp,sp,256
1c00d1f0:	8082                	ret

1c00d1f2 <sha3_512>:
1c00d1f2:	db010113          	addi	sp,sp,-592
1c00d1f6:	24812423          	sw	s0,584(sp)
1c00d1fa:	23312e23          	sw	s3,572(sp)
1c00d1fe:	23412c23          	sw	s4,568(sp)
1c00d202:	24112623          	sw	ra,588(sp)
1c00d206:	24912223          	sw	s1,580(sp)
1c00d20a:	25212023          	sw	s2,576(sp)
1c00d20e:	23512a23          	sw	s5,564(sp)
1c00d212:	23612823          	sw	s6,560(sp)
1c00d216:	23712623          	sw	s7,556(sp)
1c00d21a:	23812423          	sw	s8,552(sp)
1c00d21e:	23912223          	sw	s9,548(sp)
1c00d222:	23a12023          	sw	s10,544(sp)
1c00d226:	21b12e23          	sw	s11,540(sp)
1c00d22a:	842a                	mv	s0,a0
1c00d22c:	8a32                	mv	s4,a2
1c00d22e:	14810993          	addi	s3,sp,328
1c00d232:	011c                	addi	a5,sp,128
1c00d234:	4601                	li	a2,0
1c00d236:	4681                	li	a3,0
1c00d238:	c390                	sw	a2,0(a5)
1c00d23a:	c3d4                	sw	a3,4(a5)
1c00d23c:	07a1                	addi	a5,a5,8
1c00d23e:	fef99be3          	bne	s3,a5,1c00d234 <sha3_512+0x42>
1c00d242:	04700793          	li	a5,71
1c00d246:	0747fe63          	bleu	s4,a5,1c00d2c2 <sha3_512+0xd0>
1c00d24a:	04700493          	li	s1,71
1c00d24e:	87ae                	mv	a5,a1
1c00d250:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c00d254:	0114                	addi	a3,sp,128
1c00d256:	0017c703          	lbu	a4,1(a5)
1c00d25a:	0027c583          	lbu	a1,2(a5)
1c00d25e:	0057c883          	lbu	a7,5(a5)
1c00d262:	0047c303          	lbu	t1,4(a5)
1c00d266:	0067c803          	lbu	a6,6(a5)
1c00d26a:	0007ce03          	lbu	t3,0(a5)
1c00d26e:	0037c503          	lbu	a0,3(a5)
1c00d272:	0077c603          	lbu	a2,7(a5)
1c00d276:	05c2                	slli	a1,a1,0x10
1c00d278:	0722                	slli	a4,a4,0x8
1c00d27a:	08a2                	slli	a7,a7,0x8
1c00d27c:	8f4d                	or	a4,a4,a1
1c00d27e:	0068e8b3          	or	a7,a7,t1
1c00d282:	0842                	slli	a6,a6,0x10
1c00d284:	428c                	lw	a1,0(a3)
1c00d286:	0046a303          	lw	t1,4(a3)
1c00d28a:	01c76733          	or	a4,a4,t3
1c00d28e:	0562                	slli	a0,a0,0x18
1c00d290:	01186833          	or	a6,a6,a7
1c00d294:	0662                	slli	a2,a2,0x18
1c00d296:	8f49                	or	a4,a4,a0
1c00d298:	01066633          	or	a2,a2,a6
1c00d29c:	8f2d                	xor	a4,a4,a1
1c00d29e:	00c34633          	xor	a2,t1,a2
1c00d2a2:	c298                	sw	a4,0(a3)
1c00d2a4:	c2d0                	sw	a2,4(a3)
1c00d2a6:	07a1                	addi	a5,a5,8
1c00d2a8:	06a1                	addi	a3,a3,8
1c00d2aa:	faf916e3          	bne	s2,a5,1c00d256 <sha3_512+0x64>
1c00d2ae:	010c                	addi	a1,sp,128
1c00d2b0:	852e                	mv	a0,a1
1c00d2b2:	c6eff0ef          	jal	ra,1c00c720 <KeccakF1600_StatePermute>
1c00d2b6:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c00d2ba:	87ca                	mv	a5,s2
1c00d2bc:	f944eae3          	bltu	s1,s4,1c00d250 <sha3_512+0x5e>
1c00d2c0:	85ca                	mv	a1,s2
1c00d2c2:	0b18                	addi	a4,sp,400
1c00d2c4:	87ce                	mv	a5,s3
1c00d2c6:	4681                	li	a3,0
1c00d2c8:	c394                	sw	a3,0(a5)
1c00d2ca:	0791                	addi	a5,a5,4
1c00d2cc:	fef71de3          	bne	a4,a5,1c00d2c6 <sha3_512+0xd4>
1c00d2d0:	060a0563          	beqz	s4,1c00d33a <sha3_512+0x148>
1c00d2d4:	fffa0793          	addi	a5,s4,-1
1c00d2d8:	4709                	li	a4,2
1c00d2da:	06f772e3          	bleu	a5,a4,1c00db3e <sha3_512+0x94c>
1c00d2de:	002a5613          	srli	a2,s4,0x2
1c00d2e2:	872e                	mv	a4,a1
1c00d2e4:	4781                	li	a5,0
1c00d2e6:	4314                	lw	a3,0(a4)
1c00d2e8:	0785                	addi	a5,a5,1
1c00d2ea:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00d2ee:	0711                	addi	a4,a4,4
1c00d2f0:	0991                	addi	s3,s3,4
1c00d2f2:	fec7eae3          	bltu	a5,a2,1c00d2e6 <sha3_512+0xf4>
1c00d2f6:	ffca7793          	andi	a5,s4,-4
1c00d2fa:	04fa0063          	beq	s4,a5,1c00d33a <sha3_512+0x148>
1c00d2fe:	00f58733          	add	a4,a1,a5
1c00d302:	00074683          	lbu	a3,0(a4)
1c00d306:	21010813          	addi	a6,sp,528
1c00d30a:	00f80733          	add	a4,a6,a5
1c00d30e:	f2d70c23          	sb	a3,-200(a4)
1c00d312:	00178713          	addi	a4,a5,1
1c00d316:	03477263          	bleu	s4,a4,1c00d33a <sha3_512+0x148>
1c00d31a:	00e586b3          	add	a3,a1,a4
1c00d31e:	0006c683          	lbu	a3,0(a3)
1c00d322:	9742                	add	a4,a4,a6
1c00d324:	f2d70c23          	sb	a3,-200(a4)
1c00d328:	0789                	addi	a5,a5,2
1c00d32a:	0147f863          	bleu	s4,a5,1c00d33a <sha3_512+0x148>
1c00d32e:	95be                	add	a1,a1,a5
1c00d330:	0005c703          	lbu	a4,0(a1)
1c00d334:	97c2                	add	a5,a5,a6
1c00d336:	f2e78c23          	sb	a4,-200(a5)
1c00d33a:	21010893          	addi	a7,sp,528
1c00d33e:	9a46                	add	s4,s4,a7
1c00d340:	4799                	li	a5,6
1c00d342:	f2fa0c23          	sb	a5,-200(s4)
1c00d346:	14a14703          	lbu	a4,330(sp)
1c00d34a:	14914f03          	lbu	t5,329(sp)
1c00d34e:	15214783          	lbu	a5,338(sp)
1c00d352:	15114e83          	lbu	t4,337(sp)
1c00d356:	15514303          	lbu	t1,341(sp)
1c00d35a:	15414383          	lbu	t2,340(sp)
1c00d35e:	15614803          	lbu	a6,342(sp)
1c00d362:	14814283          	lbu	t0,328(sp)
1c00d366:	14b14503          	lbu	a0,331(sp)
1c00d36a:	15014f83          	lbu	t6,336(sp)
1c00d36e:	15314603          	lbu	a2,339(sp)
1c00d372:	15714683          	lbu	a3,343(sp)
1c00d376:	0f22                	slli	t5,t5,0x8
1c00d378:	0ea2                	slli	t4,t4,0x8
1c00d37a:	0742                	slli	a4,a4,0x10
1c00d37c:	07c2                	slli	a5,a5,0x10
1c00d37e:	0322                	slli	t1,t1,0x8
1c00d380:	14d14e03          	lbu	t3,333(sp)
1c00d384:	00736333          	or	t1,t1,t2
1c00d388:	01e76733          	or	a4,a4,t5
1c00d38c:	01d7e7b3          	or	a5,a5,t4
1c00d390:	0842                	slli	a6,a6,0x10
1c00d392:	14c14483          	lbu	s1,332(sp)
1c00d396:	14e14883          	lbu	a7,334(sp)
1c00d39a:	00576733          	or	a4,a4,t0
1c00d39e:	01f7e7b3          	or	a5,a5,t6
1c00d3a2:	00686833          	or	a6,a6,t1
1c00d3a6:	0662                	slli	a2,a2,0x18
1c00d3a8:	06e2                	slli	a3,a3,0x18
1c00d3aa:	0562                	slli	a0,a0,0x18
1c00d3ac:	14f14583          	lbu	a1,335(sp)
1c00d3b0:	8d59                	or	a0,a0,a4
1c00d3b2:	0e22                	slli	t3,t3,0x8
1c00d3b4:	00f66733          	or	a4,a2,a5
1c00d3b8:	0106e7b3          	or	a5,a3,a6
1c00d3bc:	468a                	lw	a3,128(sp)
1c00d3be:	009e6e33          	or	t3,t3,s1
1c00d3c2:	08c2                	slli	a7,a7,0x10
1c00d3c4:	01c8e8b3          	or	a7,a7,t3
1c00d3c8:	8d35                	xor	a0,a0,a3
1c00d3ca:	05e2                	slli	a1,a1,0x18
1c00d3cc:	469a                	lw	a3,132(sp)
1c00d3ce:	0115e5b3          	or	a1,a1,a7
1c00d3d2:	8db5                	xor	a1,a1,a3
1c00d3d4:	46aa                	lw	a3,136(sp)
1c00d3d6:	15a14803          	lbu	a6,346(sp)
1c00d3da:	8eb9                	xor	a3,a3,a4
1c00d3dc:	473a                	lw	a4,140(sp)
1c00d3de:	15914483          	lbu	s1,345(sp)
1c00d3e2:	8f3d                	xor	a4,a4,a5
1c00d3e4:	15814a83          	lbu	s5,344(sp)
1c00d3e8:	15b14a03          	lbu	s4,347(sp)
1c00d3ec:	15c14d03          	lbu	s10,348(sp)
1c00d3f0:	18f14783          	lbu	a5,399(sp)
1c00d3f4:	c12a                	sw	a0,128(sp)
1c00d3f6:	c32e                	sw	a1,132(sp)
1c00d3f8:	c536                	sw	a3,136(sp)
1c00d3fa:	c73a                	sw	a4,140(sp)
1c00d3fc:	15d14903          	lbu	s2,349(sp)
1c00d400:	15e14f83          	lbu	t6,350(sp)
1c00d404:	16114283          	lbu	t0,353(sp)
1c00d408:	16214f03          	lbu	t5,354(sp)
1c00d40c:	16d14883          	lbu	a7,365(sp)
1c00d410:	16c14b83          	lbu	s7,364(sp)
1c00d414:	04a2                	slli	s1,s1,0x8
1c00d416:	0842                	slli	a6,a6,0x10
1c00d418:	02a2                	slli	t0,t0,0x8
1c00d41a:	08a2                	slli	a7,a7,0x8
1c00d41c:	00986833          	or	a6,a6,s1
1c00d420:	0f42                	slli	t5,t5,0x10
1c00d422:	01e2ef33          	or	t5,t0,t5
1c00d426:	01586833          	or	a6,a6,s5
1c00d42a:	0178e2b3          	or	t0,a7,s7
1c00d42e:	018a1893          	slli	a7,s4,0x18
1c00d432:	15f14503          	lbu	a0,351(sp)
1c00d436:	0108e833          	or	a6,a7,a6
1c00d43a:	0922                	slli	s2,s2,0x8
1c00d43c:	48ca                	lw	a7,144(sp)
1c00d43e:	01a96933          	or	s2,s2,s10
1c00d442:	0fc2                	slli	t6,t6,0x10
1c00d444:	16014983          	lbu	s3,352(sp)
1c00d448:	16514e83          	lbu	t4,357(sp)
1c00d44c:	16314583          	lbu	a1,355(sp)
1c00d450:	012fefb3          	or	t6,t6,s2
1c00d454:	0108c8b3          	xor	a7,a7,a6
1c00d458:	0562                	slli	a0,a0,0x18
1c00d45a:	485a                	lw	a6,148(sp)
1c00d45c:	16414c83          	lbu	s9,356(sp)
1c00d460:	16614c03          	lbu	s8,358(sp)
1c00d464:	01f56533          	or	a0,a0,t6
1c00d468:	16914e03          	lbu	t3,361(sp)
1c00d46c:	16a14303          	lbu	t1,362(sp)
1c00d470:	16714603          	lbu	a2,359(sp)
1c00d474:	013f6f33          	or	t5,t5,s3
1c00d478:	00a84833          	xor	a6,a6,a0
1c00d47c:	0ea2                	slli	t4,t4,0x8
1c00d47e:	456a                	lw	a0,152(sp)
1c00d480:	05e2                	slli	a1,a1,0x18
1c00d482:	019ee4b3          	or	s1,t4,s9
1c00d486:	01e5e5b3          	or	a1,a1,t5
1c00d48a:	010c1e93          	slli	t4,s8,0x10
1c00d48e:	16814383          	lbu	t2,360(sp)
1c00d492:	16b14683          	lbu	a3,363(sp)
1c00d496:	009eeeb3          	or	t4,t4,s1
1c00d49a:	8d2d                	xor	a0,a0,a1
1c00d49c:	0342                	slli	t1,t1,0x10
1c00d49e:	45fa                	lw	a1,156(sp)
1c00d4a0:	0e22                	slli	t3,t3,0x8
1c00d4a2:	0662                	slli	a2,a2,0x18
1c00d4a4:	16e14b03          	lbu	s6,366(sp)
1c00d4a8:	01d66633          	or	a2,a2,t4
1c00d4ac:	006e6e33          	or	t3,t3,t1
1c00d4b0:	16f14703          	lbu	a4,367(sp)
1c00d4b4:	007e6e33          	or	t3,t3,t2
1c00d4b8:	8db1                	xor	a1,a1,a2
1c00d4ba:	06e2                	slli	a3,a3,0x18
1c00d4bc:	560a                	lw	a2,160(sp)
1c00d4be:	01c6e6b3          	or	a3,a3,t3
1c00d4c2:	010b1313          	slli	t1,s6,0x10
1c00d4c6:	00536333          	or	t1,t1,t0
1c00d4ca:	8e35                	xor	a2,a2,a3
1c00d4cc:	0762                	slli	a4,a4,0x18
1c00d4ce:	569a                	lw	a3,164(sp)
1c00d4d0:	00676733          	or	a4,a4,t1
1c00d4d4:	8f35                	xor	a4,a4,a3
1c00d4d6:	c946                	sw	a7,144(sp)
1c00d4d8:	cb42                	sw	a6,148(sp)
1c00d4da:	cd2a                	sw	a0,152(sp)
1c00d4dc:	cf2e                	sw	a1,156(sp)
1c00d4de:	d132                	sw	a2,160(sp)
1c00d4e0:	d33a                	sw	a4,164(sp)
1c00d4e2:	17114e83          	lbu	t4,369(sp)
1c00d4e6:	17214a83          	lbu	s5,370(sp)
1c00d4ea:	17014903          	lbu	s2,368(sp)
1c00d4ee:	18114803          	lbu	a6,385(sp)
1c00d4f2:	18214483          	lbu	s1,386(sp)
1c00d4f6:	18014283          	lbu	t0,384(sp)
1c00d4fa:	18314703          	lbu	a4,387(sp)
1c00d4fe:	04c2                	slli	s1,s1,0x10
1c00d500:	0822                	slli	a6,a6,0x8
1c00d502:	17514f83          	lbu	t6,373(sp)
1c00d506:	17314503          	lbu	a0,371(sp)
1c00d50a:	0ac2                	slli	s5,s5,0x10
1c00d50c:	00986833          	or	a6,a6,s1
1c00d510:	0ea2                	slli	t4,t4,0x8
1c00d512:	17414b03          	lbu	s6,372(sp)
1c00d516:	00586833          	or	a6,a6,t0
1c00d51a:	17614e03          	lbu	t3,374(sp)
1c00d51e:	015eeeb3          	or	t4,t4,s5
1c00d522:	0762                	slli	a4,a4,0x18
1c00d524:	17914303          	lbu	t1,377(sp)
1c00d528:	17a14983          	lbu	s3,378(sp)
1c00d52c:	17714583          	lbu	a1,375(sp)
1c00d530:	012eeeb3          	or	t4,t4,s2
1c00d534:	01076733          	or	a4,a4,a6
1c00d538:	0fa2                	slli	t6,t6,0x8
1c00d53a:	582a                	lw	a6,168(sp)
1c00d53c:	0562                	slli	a0,a0,0x18
1c00d53e:	016fefb3          	or	t6,t6,s6
1c00d542:	01d56533          	or	a0,a0,t4
1c00d546:	0e42                	slli	t3,t3,0x10
1c00d548:	17814383          	lbu	t2,376(sp)
1c00d54c:	01fe6e33          	or	t3,t3,t6
1c00d550:	17d14f03          	lbu	t5,381(sp)
1c00d554:	17b14603          	lbu	a2,379(sp)
1c00d558:	00a84833          	xor	a6,a6,a0
1c00d55c:	09c2                	slli	s3,s3,0x10
1c00d55e:	553a                	lw	a0,172(sp)
1c00d560:	0322                	slli	t1,t1,0x8
1c00d562:	05e2                	slli	a1,a1,0x18
1c00d564:	17c14a03          	lbu	s4,380(sp)
1c00d568:	17e14883          	lbu	a7,382(sp)
1c00d56c:	01c5e5b3          	or	a1,a1,t3
1c00d570:	01336333          	or	t1,t1,s3
1c00d574:	00736333          	or	t1,t1,t2
1c00d578:	17f14683          	lbu	a3,383(sp)
1c00d57c:	8d2d                	xor	a0,a0,a1
1c00d57e:	0f22                	slli	t5,t5,0x8
1c00d580:	55ca                	lw	a1,176(sp)
1c00d582:	0662                	slli	a2,a2,0x18
1c00d584:	014f6f33          	or	t5,t5,s4
1c00d588:	00666633          	or	a2,a2,t1
1c00d58c:	08c2                	slli	a7,a7,0x10
1c00d58e:	01e8e8b3          	or	a7,a7,t5
1c00d592:	8db1                	xor	a1,a1,a2
1c00d594:	06e2                	slli	a3,a3,0x18
1c00d596:	565a                	lw	a2,180(sp)
1c00d598:	0116e6b3          	or	a3,a3,a7
1c00d59c:	8e35                	xor	a2,a2,a3
1c00d59e:	56ea                	lw	a3,184(sp)
1c00d5a0:	18414f03          	lbu	t5,388(sp)
1c00d5a4:	8f35                	xor	a4,a4,a3
1c00d5a6:	d542                	sw	a6,168(sp)
1c00d5a8:	d72a                	sw	a0,172(sp)
1c00d5aa:	d92e                	sw	a1,176(sp)
1c00d5ac:	db32                	sw	a2,180(sp)
1c00d5ae:	18514883          	lbu	a7,389(sp)
1c00d5b2:	18614503          	lbu	a0,390(sp)
1c00d5b6:	18714603          	lbu	a2,391(sp)
1c00d5ba:	dd3a                	sw	a4,184(sp)
1c00d5bc:	18914703          	lbu	a4,393(sp)
1c00d5c0:	18a14303          	lbu	t1,394(sp)
1c00d5c4:	18814e03          	lbu	t3,392(sp)
1c00d5c8:	0342                	slli	t1,t1,0x10
1c00d5ca:	18b14683          	lbu	a3,395(sp)
1c00d5ce:	0722                	slli	a4,a4,0x8
1c00d5d0:	00676733          	or	a4,a4,t1
1c00d5d4:	08a2                	slli	a7,a7,0x8
1c00d5d6:	01e8e8b3          	or	a7,a7,t5
1c00d5da:	01c76733          	or	a4,a4,t3
1c00d5de:	06e2                	slli	a3,a3,0x18
1c00d5e0:	0542                	slli	a0,a0,0x10
1c00d5e2:	01156533          	or	a0,a0,a7
1c00d5e6:	18d14803          	lbu	a6,397(sp)
1c00d5ea:	8f55                	or	a4,a4,a3
1c00d5ec:	0662                	slli	a2,a2,0x18
1c00d5ee:	56fa                	lw	a3,188(sp)
1c00d5f0:	18c14e83          	lbu	t4,396(sp)
1c00d5f4:	18e14583          	lbu	a1,398(sp)
1c00d5f8:	8e49                	or	a2,a2,a0
1c00d5fa:	8e35                	xor	a2,a2,a3
1c00d5fc:	0822                	slli	a6,a6,0x8
1c00d5fe:	468e                	lw	a3,192(sp)
1c00d600:	01d86833          	or	a6,a6,t4
1c00d604:	0807e793          	ori	a5,a5,128
1c00d608:	05c2                	slli	a1,a1,0x10
1c00d60a:	0105e5b3          	or	a1,a1,a6
1c00d60e:	8eb9                	xor	a3,a3,a4
1c00d610:	07e2                	slli	a5,a5,0x18
1c00d612:	471e                	lw	a4,196(sp)
1c00d614:	8fcd                	or	a5,a5,a1
1c00d616:	010c                	addi	a1,sp,128
1c00d618:	8fb9                	xor	a5,a5,a4
1c00d61a:	852e                	mv	a0,a1
1c00d61c:	df32                	sw	a2,188(sp)
1c00d61e:	c1b6                	sw	a3,192(sp)
1c00d620:	c3be                	sw	a5,196(sp)
1c00d622:	8feff0ef          	jal	ra,1c00c720 <KeccakF1600_StatePermute>
1c00d626:	581a                	lw	a6,164(sp)
1c00d628:	552a                	lw	a0,168(sp)
1c00d62a:	55ba                	lw	a1,172(sp)
1c00d62c:	00885913          	srli	s2,a6,0x8
1c00d630:	564a                	lw	a2,176(sp)
1c00d632:	de4a                	sw	s2,60(sp)
1c00d634:	00855913          	srli	s2,a0,0x8
1c00d638:	56da                	lw	a3,180(sp)
1c00d63a:	d24a                	sw	s2,36(sp)
1c00d63c:	0085d913          	srli	s2,a1,0x8
1c00d640:	576a                	lw	a4,184(sp)
1c00d642:	d44a                	sw	s2,40(sp)
1c00d644:	00865913          	srli	s2,a2,0x8
1c00d648:	57fa                	lw	a5,188(sp)
1c00d64a:	d64a                	sw	s2,44(sp)
1c00d64c:	0086d913          	srli	s2,a3,0x8
1c00d650:	d84a                	sw	s2,48(sp)
1c00d652:	00875913          	srli	s2,a4,0x8
1c00d656:	da4a                	sw	s2,52(sp)
1c00d658:	0087d913          	srli	s2,a5,0x8
1c00d65c:	dc4a                	sw	s2,56(sp)
1c00d65e:	5972                	lw	s2,60(sp)
1c00d660:	448a                	lw	s1,128(sp)
1c00d662:	0ff97913          	andi	s2,s2,255
1c00d666:	c2ca                	sw	s2,68(sp)
1c00d668:	5912                	lw	s2,36(sp)
1c00d66a:	439a                	lw	t2,132(sp)
1c00d66c:	0ff97913          	andi	s2,s2,255
1c00d670:	c4ca                	sw	s2,72(sp)
1c00d672:	5922                	lw	s2,40(sp)
1c00d674:	42aa                	lw	t0,136(sp)
1c00d676:	0ff97913          	andi	s2,s2,255
1c00d67a:	c8ca                	sw	s2,80(sp)
1c00d67c:	5932                	lw	s2,44(sp)
1c00d67e:	4fba                	lw	t6,140(sp)
1c00d680:	0ff97913          	andi	s2,s2,255
1c00d684:	ccca                	sw	s2,88(sp)
1c00d686:	5942                	lw	s2,48(sp)
1c00d688:	4f4a                	lw	t5,144(sp)
1c00d68a:	0ff97913          	andi	s2,s2,255
1c00d68e:	4eda                	lw	t4,148(sp)
1c00d690:	4e6a                	lw	t3,152(sp)
1c00d692:	437a                	lw	t1,156(sp)
1c00d694:	588a                	lw	a7,160(sp)
1c00d696:	d0ca                	sw	s2,96(sp)
1c00d698:	5952                	lw	s2,52(sp)
1c00d69a:	0082dc93          	srli	s9,t0,0x8
1c00d69e:	0ff97913          	andi	s2,s2,255
1c00d6a2:	d4ca                	sw	s2,104(sp)
1c00d6a4:	5962                	lw	s2,56(sp)
1c00d6a6:	008fdc13          	srli	s8,t6,0x8
1c00d6aa:	008f5b93          	srli	s7,t5,0x8
1c00d6ae:	008edb13          	srli	s6,t4,0x8
1c00d6b2:	0ff97913          	andi	s2,s2,255
1c00d6b6:	d8ca                	sw	s2,112(sp)
1c00d6b8:	0083dd13          	srli	s10,t2,0x8
1c00d6bc:	0ff4f913          	andi	s2,s1,255
1c00d6c0:	0ffcfc93          	andi	s9,s9,255
1c00d6c4:	0ffc7c13          	andi	s8,s8,255
1c00d6c8:	0ffbfb93          	andi	s7,s7,255
1c00d6cc:	0ffb7b13          	andi	s6,s6,255
1c00d6d0:	d24a                	sw	s2,36(sp)
1c00d6d2:	008e5a93          	srli	s5,t3,0x8
1c00d6d6:	0ff2f913          	andi	s2,t0,255
1c00d6da:	0ca2                	slli	s9,s9,0x8
1c00d6dc:	0c22                	slli	s8,s8,0x8
1c00d6de:	0ba2                	slli	s7,s7,0x8
1c00d6e0:	0b22                	slli	s6,s6,0x8
1c00d6e2:	0ffd7d13          	andi	s10,s10,255
1c00d6e6:	ce66                	sw	s9,28(sp)
1c00d6e8:	d64a                	sw	s2,44(sp)
1c00d6ea:	cc62                	sw	s8,24(sp)
1c00d6ec:	ca5e                	sw	s7,20(sp)
1c00d6ee:	0ffffc13          	andi	s8,t6,255
1c00d6f2:	4b96                	lw	s7,68(sp)
1c00d6f4:	0fff7c93          	andi	s9,t5,255
1c00d6f8:	c85a                	sw	s6,16(sp)
1c00d6fa:	0ffe7913          	andi	s2,t3,255
1c00d6fe:	0ff8fb13          	andi	s6,a7,255
1c00d702:	0d22                	slli	s10,s10,0x8
1c00d704:	0ffafa93          	andi	s5,s5,255
1c00d708:	d06a                	sw	s10,32(sp)
1c00d70a:	d862                	sw	s8,48(sp)
1c00d70c:	0ff3fd13          	andi	s10,t2,255
1c00d710:	da66                	sw	s9,52(sp)
1c00d712:	de4a                	sw	s2,60(sp)
1c00d714:	4ca6                	lw	s9,72(sp)
1c00d716:	4946                	lw	s2,80(sp)
1c00d718:	c0da                	sw	s6,64(sp)
1c00d71a:	0ff87c13          	andi	s8,a6,255
1c00d71e:	4b66                	lw	s6,88(sp)
1c00d720:	0aa2                	slli	s5,s5,0x8
1c00d722:	d46a                	sw	s10,40(sp)
1c00d724:	c656                	sw	s5,12(sp)
1c00d726:	0ffefd13          	andi	s10,t4,255
1c00d72a:	0ff37a93          	andi	s5,t1,255
1c00d72e:	c2e2                	sw	s8,68(sp)
1c00d730:	0ba2                	slli	s7,s7,0x8
1c00d732:	5c06                	lw	s8,96(sp)
1c00d734:	dc6a                	sw	s10,56(sp)
1c00d736:	dcd6                	sw	s5,120(sp)
1c00d738:	dede                	sw	s7,124(sp)
1c00d73a:	0ff57d13          	andi	s10,a0,255
1c00d73e:	0ff5fa93          	andi	s5,a1,255
1c00d742:	0ff67b93          	andi	s7,a2,255
1c00d746:	0ca2                	slli	s9,s9,0x8
1c00d748:	0922                	slli	s2,s2,0x8
1c00d74a:	0b22                	slli	s6,s6,0x8
1c00d74c:	c4e6                	sw	s9,72(sp)
1c00d74e:	c6ea                	sw	s10,76(sp)
1c00d750:	c8ca                	sw	s2,80(sp)
1c00d752:	cad6                	sw	s5,84(sp)
1c00d754:	ccda                	sw	s6,88(sp)
1c00d756:	cede                	sw	s7,92(sp)
1c00d758:	0c22                	slli	s8,s8,0x8
1c00d75a:	d0e2                	sw	s8,96(sp)
1c00d75c:	5ac6                	lw	s5,112(sp)
1c00d75e:	5d26                	lw	s10,104(sp)
1c00d760:	0ff6fc93          	andi	s9,a3,255
1c00d764:	0ff7fb13          	andi	s6,a5,255
1c00d768:	0084dd93          	srli	s11,s1,0x8
1c00d76c:	0aa2                	slli	s5,s5,0x8
1c00d76e:	5b92                	lw	s7,36(sp)
1c00d770:	5c22                	lw	s8,40(sp)
1c00d772:	d2e6                	sw	s9,100(sp)
1c00d774:	d8d6                	sw	s5,112(sp)
1c00d776:	5c82                	lw	s9,32(sp)
1c00d778:	5ab2                	lw	s5,44(sp)
1c00d77a:	dada                	sw	s6,116(sp)
1c00d77c:	0ffdfd93          	andi	s11,s11,255
1c00d780:	4b72                	lw	s6,28(sp)
1c00d782:	0d22                	slli	s10,s10,0x8
1c00d784:	0da2                	slli	s11,s11,0x8
1c00d786:	d4ea                	sw	s10,104(sp)
1c00d788:	01bbedb3          	or	s11,s7,s11
1c00d78c:	019c6d33          	or	s10,s8,s9
1c00d790:	5bc2                	lw	s7,48(sp)
1c00d792:	016aecb3          	or	s9,s5,s6
1c00d796:	4ae2                	lw	s5,24(sp)
1c00d798:	5b52                	lw	s6,52(sp)
1c00d79a:	015bec33          	or	s8,s7,s5
1c00d79e:	4ad2                	lw	s5,20(sp)
1c00d7a0:	0088d993          	srli	s3,a7,0x8
1c00d7a4:	015b6bb3          	or	s7,s6,s5
1c00d7a8:	4ac2                	lw	s5,16(sp)
1c00d7aa:	5b62                	lw	s6,56(sp)
1c00d7ac:	00835a13          	srli	s4,t1,0x8
1c00d7b0:	015b6b33          	or	s6,s6,s5
1c00d7b4:	c25a                	sw	s6,4(sp)
1c00d7b6:	4ab2                	lw	s5,12(sp)
1c00d7b8:	5b72                	lw	s6,60(sp)
1c00d7ba:	0ff9f993          	andi	s3,s3,255
1c00d7be:	015b6b33          	or	s6,s6,s5
1c00d7c2:	4a86                	lw	s5,64(sp)
1c00d7c4:	c45a                	sw	s6,8(sp)
1c00d7c6:	0ffa7a13          	andi	s4,s4,255
1c00d7ca:	5b66                	lw	s6,120(sp)
1c00d7cc:	09a2                	slli	s3,s3,0x8
1c00d7ce:	013ae9b3          	or	s3,s5,s3
1c00d7d2:	0a22                	slli	s4,s4,0x8
1c00d7d4:	c0ce                	sw	s3,64(sp)
1c00d7d6:	014b6a33          	or	s4,s6,s4
1c00d7da:	59f6                	lw	s3,124(sp)
1c00d7dc:	4b16                	lw	s6,68(sp)
1c00d7de:	4ab6                	lw	s5,76(sp)
1c00d7e0:	013b6b33          	or	s6,s6,s3
1c00d7e4:	c2da                	sw	s6,68(sp)
1c00d7e6:	4b26                	lw	s6,72(sp)
1c00d7e8:	0ff77913          	andi	s2,a4,255
1c00d7ec:	016aeab3          	or	s5,s5,s6
1c00d7f0:	d6ca                	sw	s2,108(sp)
1c00d7f2:	49d6                	lw	s3,84(sp)
1c00d7f4:	c6d6                	sw	s5,76(sp)
1c00d7f6:	4ac6                	lw	s5,80(sp)
1c00d7f8:	4b76                	lw	s6,92(sp)
1c00d7fa:	0159e9b3          	or	s3,s3,s5
1c00d7fe:	cace                	sw	s3,84(sp)
1c00d800:	49e6                	lw	s3,88(sp)
1c00d802:	5a96                	lw	s5,100(sp)
1c00d804:	013b6b33          	or	s6,s6,s3
1c00d808:	ceda                	sw	s6,92(sp)
1c00d80a:	5b06                	lw	s6,96(sp)
1c00d80c:	59b6                	lw	s3,108(sp)
1c00d80e:	016aeab3          	or	s5,s5,s6
1c00d812:	d2d6                	sw	s5,100(sp)
1c00d814:	5aa6                	lw	s5,104(sp)
1c00d816:	5b56                	lw	s6,116(sp)
1c00d818:	0159e9b3          	or	s3,s3,s5
1c00d81c:	d6ce                	sw	s3,108(sp)
1c00d81e:	59c6                	lw	s3,112(sp)
1c00d820:	ff010937          	lui	s2,0xff010
1c00d824:	013b6b33          	or	s6,s6,s3
1c00d828:	00ff09b7          	lui	s3,0xff0
1c00d82c:	0134fab3          	and	s5,s1,s3
1c00d830:	0133f9b3          	and	s3,t2,s3
1c00d834:	d44e                	sw	s3,40(sp)
1c00d836:	00ff09b7          	lui	s3,0xff0
1c00d83a:	0132f9b3          	and	s3,t0,s3
1c00d83e:	d64e                	sw	s3,44(sp)
1c00d840:	00ff09b7          	lui	s3,0xff0
1c00d844:	013ff9b3          	and	s3,t6,s3
1c00d848:	d84e                	sw	s3,48(sp)
1c00d84a:	00ff09b7          	lui	s3,0xff0
1c00d84e:	013f79b3          	and	s3,t5,s3
1c00d852:	da4e                	sw	s3,52(sp)
1c00d854:	00ff09b7          	lui	s3,0xff0
1c00d858:	013ef9b3          	and	s3,t4,s3
1c00d85c:	dc4e                	sw	s3,56(sp)
1c00d85e:	00ff09b7          	lui	s3,0xff0
1c00d862:	013e79b3          	and	s3,t3,s3
1c00d866:	197d                	addi	s2,s2,-1
1c00d868:	de4e                	sw	s3,60(sp)
1c00d86a:	00ff09b7          	lui	s3,0xff0
1c00d86e:	012c7c33          	and	s8,s8,s2
1c00d872:	012bfbb3          	and	s7,s7,s2
1c00d876:	013379b3          	and	s3,t1,s3
1c00d87a:	012cfcb3          	and	s9,s9,s2
1c00d87e:	ca62                	sw	s8,20(sp)
1c00d880:	c85e                	sw	s7,16(sp)
1c00d882:	4c22                	lw	s8,8(sp)
1c00d884:	4b92                	lw	s7,4(sp)
1c00d886:	dcce                	sw	s3,120(sp)
1c00d888:	00ff09b7          	lui	s3,0xff0
1c00d88c:	cc66                	sw	s9,24(sp)
1c00d88e:	0138f9b3          	and	s3,a7,s3
1c00d892:	4c86                	lw	s9,64(sp)
1c00d894:	012d7d33          	and	s10,s10,s2
1c00d898:	012bfbb3          	and	s7,s7,s2
1c00d89c:	012c7c33          	and	s8,s8,s2
1c00d8a0:	012a7a33          	and	s4,s4,s2
1c00d8a4:	dece                	sw	s3,124(sp)
1c00d8a6:	00ff09b7          	lui	s3,0xff0
1c00d8aa:	dada                	sw	s6,116(sp)
1c00d8ac:	ce6a                	sw	s10,28(sp)
1c00d8ae:	c65e                	sw	s7,12(sp)
1c00d8b0:	c462                	sw	s8,8(sp)
1c00d8b2:	c252                	sw	s4,4(sp)
1c00d8b4:	012cfcb3          	and	s9,s9,s2
1c00d8b8:	013879b3          	and	s3,a6,s3
1c00d8bc:	c0e6                	sw	s9,64(sp)
1c00d8be:	c4ce                	sw	s3,72(sp)
1c00d8c0:	00ff09b7          	lui	s3,0xff0
1c00d8c4:	013579b3          	and	s3,a0,s3
1c00d8c8:	c8ce                	sw	s3,80(sp)
1c00d8ca:	00ff09b7          	lui	s3,0xff0
1c00d8ce:	0135f9b3          	and	s3,a1,s3
1c00d8d2:	ccce                	sw	s3,88(sp)
1c00d8d4:	49d6                	lw	s3,84(sp)
1c00d8d6:	012dfb33          	and	s6,s11,s2
1c00d8da:	0129f9b3          	and	s3,s3,s2
1c00d8de:	cace                	sw	s3,84(sp)
1c00d8e0:	00ff09b7          	lui	s3,0xff0
1c00d8e4:	013679b3          	and	s3,a2,s3
1c00d8e8:	d0ce                	sw	s3,96(sp)
1c00d8ea:	00ff09b7          	lui	s3,0xff0
1c00d8ee:	0136f9b3          	and	s3,a3,s3
1c00d8f2:	d4ce                	sw	s3,104(sp)
1c00d8f4:	00ff09b7          	lui	s3,0xff0
1c00d8f8:	4db6                	lw	s11,76(sp)
1c00d8fa:	4a76                	lw	s4,92(sp)
1c00d8fc:	013779b3          	and	s3,a4,s3
1c00d900:	d8ce                	sw	s3,112(sp)
1c00d902:	00ff09b7          	lui	s3,0xff0
1c00d906:	4d16                	lw	s10,68(sp)
1c00d908:	5b96                	lw	s7,100(sp)
1c00d90a:	012dfdb3          	and	s11,s11,s2
1c00d90e:	012a7a33          	and	s4,s4,s2
1c00d912:	0137f9b3          	and	s3,a5,s3
1c00d916:	5cd6                	lw	s9,116(sp)
1c00d918:	5c36                	lw	s8,108(sp)
1c00d91a:	c6ee                	sw	s11,76(sp)
1c00d91c:	ced2                	sw	s4,92(sp)
1c00d91e:	c04e                	sw	s3,0(sp)
1c00d920:	5a22                	lw	s4,40(sp)
1c00d922:	49f2                	lw	s3,28(sp)
1c00d924:	015b6db3          	or	s11,s6,s5
1c00d928:	4ae2                	lw	s5,24(sp)
1c00d92a:	5b32                	lw	s6,44(sp)
1c00d92c:	012d7d33          	and	s10,s10,s2
1c00d930:	012bfbb3          	and	s7,s7,s2
1c00d934:	c2ea                	sw	s10,68(sp)
1c00d936:	d2de                	sw	s7,100(sp)
1c00d938:	012c7c33          	and	s8,s8,s2
1c00d93c:	4bd2                	lw	s7,20(sp)
1c00d93e:	012cf933          	and	s2,s9,s2
1c00d942:	0149ed33          	or	s10,s3,s4
1c00d946:	016aecb3          	or	s9,s5,s6
1c00d94a:	59c2                	lw	s3,48(sp)
1c00d94c:	4a42                	lw	s4,16(sp)
1c00d94e:	5ad2                	lw	s5,52(sp)
1c00d950:	d6e2                	sw	s8,108(sp)
1c00d952:	013bec33          	or	s8,s7,s3
1c00d956:	49b2                	lw	s3,12(sp)
1c00d958:	015a6bb3          	or	s7,s4,s5
1c00d95c:	5a62                	lw	s4,56(sp)
1c00d95e:	daca                	sw	s2,116(sp)
1c00d960:	0149eb33          	or	s6,s3,s4
1c00d964:	49a2                	lw	s3,8(sp)
1c00d966:	5a72                	lw	s4,60(sp)
1c00d968:	80e1                	srli	s1,s1,0x18
1c00d96a:	0149eab3          	or	s5,s3,s4
1c00d96e:	5a66                	lw	s4,120(sp)
1c00d970:	4992                	lw	s3,4(sp)
1c00d972:	04e2                	slli	s1,s1,0x18
1c00d974:	0149e9b3          	or	s3,s3,s4
1c00d978:	dcce                	sw	s3,120(sp)
1c00d97a:	5a76                	lw	s4,124(sp)
1c00d97c:	4986                	lw	s3,64(sp)
1c00d97e:	01000937          	lui	s2,0x1000
1c00d982:	0149e9b3          	or	s3,s3,s4
1c00d986:	d24e                	sw	s3,36(sp)
1c00d988:	4a26                	lw	s4,72(sp)
1c00d98a:	4996                	lw	s3,68(sp)
1c00d98c:	197d                	addi	s2,s2,-1
1c00d98e:	0149e9b3          	or	s3,s3,s4
1c00d992:	d44e                	sw	s3,40(sp)
1c00d994:	4a46                	lw	s4,80(sp)
1c00d996:	49b6                	lw	s3,76(sp)
1c00d998:	c2a6                	sw	s1,68(sp)
1c00d99a:	0149e9b3          	or	s3,s3,s4
1c00d99e:	d64e                	sw	s3,44(sp)
1c00d9a0:	4a66                	lw	s4,88(sp)
1c00d9a2:	49d6                	lw	s3,84(sp)
1c00d9a4:	54e6                	lw	s1,120(sp)
1c00d9a6:	0149e9b3          	or	s3,s3,s4
1c00d9aa:	d84e                	sw	s3,48(sp)
1c00d9ac:	5a06                	lw	s4,96(sp)
1c00d9ae:	49f6                	lw	s3,92(sp)
1c00d9b0:	018ede93          	srli	t4,t4,0x18
1c00d9b4:	0149e9b3          	or	s3,s3,s4
1c00d9b8:	da4e                	sw	s3,52(sp)
1c00d9ba:	5a26                	lw	s4,104(sp)
1c00d9bc:	5996                	lw	s3,100(sp)
1c00d9be:	018e5e13          	srli	t3,t3,0x18
1c00d9c2:	0149e9b3          	or	s3,s3,s4
1c00d9c6:	dc4e                	sw	s3,56(sp)
1c00d9c8:	5a46                	lw	s4,112(sp)
1c00d9ca:	59b6                	lw	s3,108(sp)
1c00d9cc:	01835313          	srli	t1,t1,0x18
1c00d9d0:	0149e9b3          	or	s3,s3,s4
1c00d9d4:	de4e                	sw	s3,60(sp)
1c00d9d6:	4a02                	lw	s4,0(sp)
1c00d9d8:	59d6                	lw	s3,116(sp)
1c00d9da:	012b7b33          	and	s6,s6,s2
1c00d9de:	0149e9b3          	or	s3,s3,s4
1c00d9e2:	c0ce                	sw	s3,64(sp)
1c00d9e4:	5992                	lw	s3,36(sp)
1c00d9e6:	0124fa33          	and	s4,s1,s2
1c00d9ea:	0129f9b3          	and	s3,s3,s2
1c00d9ee:	d24e                	sw	s3,36(sp)
1c00d9f0:	54a2                	lw	s1,40(sp)
1c00d9f2:	59b2                	lw	s3,44(sp)
1c00d9f4:	0124f4b3          	and	s1,s1,s2
1c00d9f8:	d426                	sw	s1,40(sp)
1c00d9fa:	54c2                	lw	s1,48(sp)
1c00d9fc:	0129f9b3          	and	s3,s3,s2
1c00da00:	d64e                	sw	s3,44(sp)
1c00da02:	0124f4b3          	and	s1,s1,s2
1c00da06:	59d2                	lw	s3,52(sp)
1c00da08:	d826                	sw	s1,48(sp)
1c00da0a:	54e2                	lw	s1,56(sp)
1c00da0c:	0129f9b3          	and	s3,s3,s2
1c00da10:	da4e                	sw	s3,52(sp)
1c00da12:	0124f4b3          	and	s1,s1,s2
1c00da16:	59f2                	lw	s3,60(sp)
1c00da18:	dc26                	sw	s1,56(sp)
1c00da1a:	4486                	lw	s1,64(sp)
1c00da1c:	012afab3          	and	s5,s5,s2
1c00da20:	0129f9b3          	and	s3,s3,s2
1c00da24:	0183d393          	srli	t2,t2,0x18
1c00da28:	0182d293          	srli	t0,t0,0x18
1c00da2c:	018fdf93          	srli	t6,t6,0x18
1c00da30:	018f5f13          	srli	t5,t5,0x18
1c00da34:	0ee2                	slli	t4,t4,0x18
1c00da36:	0e62                	slli	t3,t3,0x18
1c00da38:	0362                	slli	t1,t1,0x18
1c00da3a:	de4e                	sw	s3,60(sp)
1c00da3c:	012dfdb3          	and	s11,s11,s2
1c00da40:	0124f9b3          	and	s3,s1,s2
1c00da44:	012d7d33          	and	s10,s10,s2
1c00da48:	012cfcb3          	and	s9,s9,s2
1c00da4c:	012c7c33          	and	s8,s8,s2
1c00da50:	012bfbb3          	and	s7,s7,s2
1c00da54:	01db6eb3          	or	t4,s6,t4
1c00da58:	4916                	lw	s2,68(sp)
1c00da5a:	5b32                	lw	s6,44(sp)
1c00da5c:	01caee33          	or	t3,s5,t3
1c00da60:	006a6333          	or	t1,s4,t1
1c00da64:	5aa2                	lw	s5,40(sp)
1c00da66:	5a12                	lw	s4,36(sp)
1c00da68:	0188d893          	srli	a7,a7,0x18
1c00da6c:	01885813          	srli	a6,a6,0x18
1c00da70:	8161                	srli	a0,a0,0x18
1c00da72:	03e2                	slli	t2,t2,0x18
1c00da74:	02e2                	slli	t0,t0,0x18
1c00da76:	0fe2                	slli	t6,t6,0x18
1c00da78:	0f62                	slli	t5,t5,0x18
1c00da7a:	007d63b3          	or	t2,s10,t2
1c00da7e:	005ce2b3          	or	t0,s9,t0
1c00da82:	5d72                	lw	s10,60(sp)
1c00da84:	5ce2                	lw	s9,56(sp)
1c00da86:	01fc6fb3          	or	t6,s8,t6
1c00da8a:	01ebef33          	or	t5,s7,t5
1c00da8e:	5c52                	lw	s8,52(sp)
1c00da90:	5bc2                	lw	s7,48(sp)
1c00da92:	81e1                	srli	a1,a1,0x18
1c00da94:	8261                	srli	a2,a2,0x18
1c00da96:	82e1                	srli	a3,a3,0x18
1c00da98:	8361                	srli	a4,a4,0x18
1c00da9a:	83e1                	srli	a5,a5,0x18
1c00da9c:	08e2                	slli	a7,a7,0x18
1c00da9e:	0862                	slli	a6,a6,0x18
1c00daa0:	0562                	slli	a0,a0,0x18
1c00daa2:	012de4b3          	or	s1,s11,s2
1c00daa6:	05e2                	slli	a1,a1,0x18
1c00daa8:	011a6933          	or	s2,s4,a7
1c00daac:	0662                	slli	a2,a2,0x18
1c00daae:	010aea33          	or	s4,s5,a6
1c00dab2:	06e2                	slli	a3,a3,0x18
1c00dab4:	00ab6ab3          	or	s5,s6,a0
1c00dab8:	0762                	slli	a4,a4,0x18
1c00daba:	07e2                	slli	a5,a5,0x18
1c00dabc:	c004                	sw	s1,0(s0)
1c00dabe:	03242023          	sw	s2,32(s0)
1c00dac2:	03442223          	sw	s4,36(s0)
1c00dac6:	03542423          	sw	s5,40(s0)
1c00daca:	00bbe5b3          	or	a1,s7,a1
1c00dace:	00cc6633          	or	a2,s8,a2
1c00dad2:	00dce6b3          	or	a3,s9,a3
1c00dad6:	00ed6733          	or	a4,s10,a4
1c00dada:	00f9e7b3          	or	a5,s3,a5
1c00dade:	00742223          	sw	t2,4(s0)
1c00dae2:	00542423          	sw	t0,8(s0)
1c00dae6:	01f42623          	sw	t6,12(s0)
1c00daea:	01e42823          	sw	t5,16(s0)
1c00daee:	01d42a23          	sw	t4,20(s0)
1c00daf2:	01c42c23          	sw	t3,24(s0)
1c00daf6:	00642e23          	sw	t1,28(s0)
1c00dafa:	d44c                	sw	a1,44(s0)
1c00dafc:	d810                	sw	a2,48(s0)
1c00dafe:	d854                	sw	a3,52(s0)
1c00db00:	dc18                	sw	a4,56(s0)
1c00db02:	dc5c                	sw	a5,60(s0)
1c00db04:	24c12083          	lw	ra,588(sp)
1c00db08:	24812403          	lw	s0,584(sp)
1c00db0c:	24412483          	lw	s1,580(sp)
1c00db10:	24012903          	lw	s2,576(sp)
1c00db14:	23c12983          	lw	s3,572(sp)
1c00db18:	23812a03          	lw	s4,568(sp)
1c00db1c:	23412a83          	lw	s5,564(sp)
1c00db20:	23012b03          	lw	s6,560(sp)
1c00db24:	22c12b83          	lw	s7,556(sp)
1c00db28:	22812c03          	lw	s8,552(sp)
1c00db2c:	22412c83          	lw	s9,548(sp)
1c00db30:	22012d03          	lw	s10,544(sp)
1c00db34:	21c12d83          	lw	s11,540(sp)
1c00db38:	25010113          	addi	sp,sp,592
1c00db3c:	8082                	ret
1c00db3e:	4781                	li	a5,0
1c00db40:	fbeff06f          	j	1c00d2fe <sha3_512+0x10c>

1c00db44 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>:
1c00db44:	99010113          	addi	sp,sp,-1648
1c00db48:	7371                	lui	t1,0xffffc
1c00db4a:	66112623          	sw	ra,1644(sp)
1c00db4e:	66812423          	sw	s0,1640(sp)
1c00db52:	66912223          	sw	s1,1636(sp)
1c00db56:	67212023          	sw	s2,1632(sp)
1c00db5a:	65412c23          	sw	s4,1624(sp)
1c00db5e:	65512a23          	sw	s5,1620(sp)
1c00db62:	65612823          	sw	s6,1616(sp)
1c00db66:	65912223          	sw	s9,1604(sp)
1c00db6a:	63b12e23          	sw	s11,1596(sp)
1c00db6e:	65312e23          	sw	s3,1628(sp)
1c00db72:	65712623          	sw	s7,1612(sp)
1c00db76:	65812423          	sw	s8,1608(sp)
1c00db7a:	65a12023          	sw	s10,1600(sp)
1c00db7e:	6711                	lui	a4,0x4
1c00db80:	911a                	add	sp,sp,t1
1c00db82:	c62a                	sw	a0,12(sp)
1c00db84:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00db88:	7575                	lui	a0,0xffffd
1c00db8a:	970a                	add	a4,a4,sp
1c00db8c:	80050513          	addi	a0,a0,-2048 # ffffc800 <pulp__FC+0xffffc801>
1c00db90:	84ae                	mv	s1,a1
1c00db92:	953a                	add	a0,a0,a4
1c00db94:	85b2                	mv	a1,a2
1c00db96:	8432                	mv	s0,a2
1c00db98:	c436                	sw	a3,8(sp)
1c00db9a:	0ec010ef          	jal	ra,1c00ec86 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>
1c00db9e:	6e91                	lui	t4,0x4
1c00dba0:	7971                	lui	s2,0xffffc
1c00dba2:	630e8e93          	addi	t4,t4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00dba6:	61842703          	lw	a4,1560(s0)
1c00dbaa:	61c42783          	lw	a5,1564(s0)
1c00dbae:	60042e03          	lw	t3,1536(s0)
1c00dbb2:	60442303          	lw	t1,1540(s0)
1c00dbb6:	60842883          	lw	a7,1544(s0)
1c00dbba:	60c42803          	lw	a6,1548(s0)
1c00dbbe:	61042603          	lw	a2,1552(s0)
1c00dbc2:	61442683          	lw	a3,1556(s0)
1c00dbc6:	c0090513          	addi	a0,s2,-1024 # ffffbc00 <pulp__FC+0xffffbc01>
1c00dbca:	9e8a                	add	t4,t4,sp
1c00dbcc:	85a6                	mv	a1,s1
1c00dbce:	9576                	add	a0,a0,t4
1c00dbd0:	d43a                	sw	a4,40(sp)
1c00dbd2:	d63e                	sw	a5,44(sp)
1c00dbd4:	c872                	sw	t3,16(sp)
1c00dbd6:	ca1a                	sw	t1,20(sp)
1c00dbd8:	cc46                	sw	a7,24(sp)
1c00dbda:	ce42                	sw	a6,28(sp)
1c00dbdc:	d032                	sw	a2,32(sp)
1c00dbde:	d236                	sw	a3,36(sp)
1c00dbe0:	219000ef          	jal	ra,1c00e5f8 <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>
1c00dbe4:	6711                	lui	a4,0x4
1c00dbe6:	7cf9                	lui	s9,0xffffe
1c00dbe8:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00dbec:	6789                	lui	a5,0x2
1c00dbee:	970a                	add	a4,a4,sp
1c00dbf0:	800c8493          	addi	s1,s9,-2048 # ffffd800 <pulp__FC+0xffffd801>
1c00dbf4:	63078793          	addi	a5,a5,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00dbf8:	9e090913          	addi	s2,s2,-1568
1c00dbfc:	94ba                	add	s1,s1,a4
1c00dbfe:	6a85                	lui	s5,0x1
1c00dc00:	978a                	add	a5,a5,sp
1c00dc02:	c23e                	sw	a5,4(sp)
1c00dc04:	c002                	sw	zero,0(sp)
1c00dc06:	01270b33          	add	s6,a4,s2
1c00dc0a:	1f848a13          	addi	s4,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c00dc0e:	fffa8d93          	addi	s11,s5,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00dc12:	4782                	lw	a5,0(sp)
1c00dc14:	4412                	lw	s0,4(sp)
1c00dc16:	0ff7fb93          	andi	s7,a5,255
1c00dc1a:	4901                	li	s2,0
1c00dc1c:	a035                	j	1c00dc48 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x104>
1c00dc1e:	001c1813          	slli	a6,s8,0x1
1c00dc22:	9822                	add	a6,a6,s0
1c00dc24:	001c0893          	addi	a7,s8,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00dc28:	00f81023          	sh	a5,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00dc2c:	2ea89863          	bne	a7,a0,1c00df1c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x3d8>
1c00dc30:	6505                	lui	a0,0x1
1c00dc32:	63050513          	addi	a0,a0,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00dc36:	950a                	add	a0,a0,sp
1c00dc38:	98cff0ef          	jal	ra,1c00cdc4 <shake128_ctx_release>
1c00dc3c:	0905                	addi	s2,s2,1
1c00dc3e:	4791                	li	a5,4
1c00dc40:	20040413          	addi	s0,s0,512
1c00dc44:	0ef90d63          	beq	s2,a5,1c00dd3e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1fa>
1c00dc48:	6505                	lui	a0,0x1
1c00dc4a:	63050513          	addi	a0,a0,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00dc4e:	0ff97693          	andi	a3,s2,255
1c00dc52:	85da                	mv	a1,s6
1c00dc54:	950a                	add	a0,a0,sp
1c00dc56:	865e                	mv	a2,s7
1c00dc58:	1ae010ef          	jal	ra,1c00ee06 <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>
1c00dc5c:	6605                	lui	a2,0x1
1c00dc5e:	63060613          	addi	a2,a2,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00dc62:	458d                	li	a1,3
1c00dc64:	8526                	mv	a0,s1
1c00dc66:	960a                	add	a2,a2,sp
1c00dc68:	89cff0ef          	jal	ra,1c00cd04 <shake128_squeezeblocks>
1c00dc6c:	4c01                	li	s8,0
1c00dc6e:	8726                	mv	a4,s1
1c00dc70:	d00a8593          	addi	a1,s5,-768
1c00dc74:	10000513          	li	a0,256
1c00dc78:	00174603          	lbu	a2,1(a4)
1c00dc7c:	00074683          	lbu	a3,0(a4)
1c00dc80:	00861793          	slli	a5,a2,0x8
1c00dc84:	8fd5                	or	a5,a5,a3
1c00dc86:	01b7f7b3          	and	a5,a5,s11
1c00dc8a:	00274683          	lbu	a3,2(a4)
1c00dc8e:	f8f5f8e3          	bleu	a5,a1,1c00dc1e <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xda>
1c00dc92:	8211                	srli	a2,a2,0x4
1c00dc94:	0692                	slli	a3,a3,0x4
1c00dc96:	8ed1                	or	a3,a3,a2
1c00dc98:	00d5c863          	blt	a1,a3,1c00dca8 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x164>
1c00dc9c:	001c1793          	slli	a5,s8,0x1
1c00dca0:	97a2                	add	a5,a5,s0
1c00dca2:	00d79023          	sh	a3,0(a5)
1c00dca6:	0c05                	addi	s8,s8,1
1c00dca8:	f8ac04e3          	beq	s8,a0,1c00dc30 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xec>
1c00dcac:	070d                	addi	a4,a4,3
1c00dcae:	fd4715e3          	bne	a4,s4,1c00dc78 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x134>
1c00dcb2:	0a848c93          	addi	s9,s1,168
1c00dcb6:	10000993          	li	s3,256
1c00dcba:	d00a8d13          	addi	s10,s5,-768
1c00dcbe:	a031                	j	1c00dcca <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x186>
1c00dcc0:	9c2e                	add	s8,s8,a1
1c00dcc2:	0ff00793          	li	a5,255
1c00dcc6:	f787e5e3          	bltu	a5,s8,1c00dc30 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xec>
1c00dcca:	6605                	lui	a2,0x1
1c00dccc:	63060613          	addi	a2,a2,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00dcd0:	4585                	li	a1,1
1c00dcd2:	8526                	mv	a0,s1
1c00dcd4:	960a                	add	a2,a2,sp
1c00dcd6:	82eff0ef          	jal	ra,1c00cd04 <shake128_squeezeblocks>
1c00dcda:	001c1513          	slli	a0,s8,0x1
1c00dcde:	9522                	add	a0,a0,s0
1c00dce0:	41898eb3          	sub	t4,s3,s8
1c00dce4:	86a6                	mv	a3,s1
1c00dce6:	4581                	li	a1,0
1c00dce8:	00159793          	slli	a5,a1,0x1
1c00dcec:	00f50f33          	add	t5,a0,a5
1c00dcf0:	fd9688e3          	beq	a3,s9,1c00dcc0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x17c>
1c00dcf4:	0016c703          	lbu	a4,1(a3)
1c00dcf8:	0006c603          	lbu	a2,0(a3)
1c00dcfc:	00871793          	slli	a5,a4,0x8
1c00dd00:	8fd1                	or	a5,a5,a2
1c00dd02:	01b7f7b3          	and	a5,a5,s11
1c00dd06:	00475613          	srli	a2,a4,0x4
1c00dd0a:	0026c703          	lbu	a4,2(a3)
1c00dd0e:	00fd6563          	bltu	s10,a5,1c00dd18 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1d4>
1c00dd12:	00ff1023          	sh	a5,0(t5) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00dd16:	0585                	addi	a1,a1,1
1c00dd18:	00471793          	slli	a5,a4,0x4
1c00dd1c:	8fd1                	or	a5,a5,a2
1c00dd1e:	fbd5f1e3          	bleu	t4,a1,1c00dcc0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x17c>
1c00dd22:	00159713          	slli	a4,a1,0x1
1c00dd26:	972a                	add	a4,a4,a0
1c00dd28:	00158613          	addi	a2,a1,1
1c00dd2c:	00fd4763          	blt	s10,a5,1c00dd3a <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1f6>
1c00dd30:	00f71023          	sh	a5,0(a4)
1c00dd34:	85b2                	mv	a1,a2
1c00dd36:	f9d675e3          	bleu	t4,a2,1c00dcc0 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x17c>
1c00dd3a:	068d                	addi	a3,a3,3
1c00dd3c:	b775                	j	1c00dce8 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x1a4>
1c00dd3e:	4e82                	lw	t4,0(sp)
1c00dd40:	4712                	lw	a4,4(sp)
1c00dd42:	800a8413          	addi	s0,s5,-2048
1c00dd46:	0e85                	addi	t4,t4,1
1c00dd48:	9722                	add	a4,a4,s0
1c00dd4a:	c076                	sw	t4,0(sp)
1c00dd4c:	c23a                	sw	a4,4(sp)
1c00dd4e:	ed2e92e3          	bne	t4,s2,1c00dc12 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0xce>
1c00dd52:	45a2                	lw	a1,8(sp)
1c00dd54:	63010513          	addi	a0,sp,1584
1c00dd58:	4601                	li	a2,0
1c00dd5a:	275000ef          	jal	ra,1c00e7ce <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00dd5e:	63010e93          	addi	t4,sp,1584
1c00dd62:	45a2                	lw	a1,8(sp)
1c00dd64:	200e8513          	addi	a0,t4,512
1c00dd68:	4605                	li	a2,1
1c00dd6a:	265000ef          	jal	ra,1c00e7ce <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00dd6e:	63010713          	addi	a4,sp,1584
1c00dd72:	45a2                	lw	a1,8(sp)
1c00dd74:	40070513          	addi	a0,a4,1024
1c00dd78:	4609                	li	a2,2
1c00dd7a:	255000ef          	jal	ra,1c00e7ce <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00dd7e:	63010793          	addi	a5,sp,1584
1c00dd82:	45a2                	lw	a1,8(sp)
1c00dd84:	60078513          	addi	a0,a5,1536
1c00dd88:	460d                	li	a2,3
1c00dd8a:	245000ef          	jal	ra,1c00e7ce <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>
1c00dd8e:	6505                	lui	a0,0x1
1c00dd90:	45a2                	lw	a1,8(sp)
1c00dd92:	63050513          	addi	a0,a0,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00dd96:	950a                	add	a0,a0,sp
1c00dd98:	4611                	li	a2,4
1c00dd9a:	259000ef          	jal	ra,1c00e7f2 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00dd9e:	6e85                	lui	t4,0x1
1c00dda0:	630e8e93          	addi	t4,t4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00dda4:	9e8a                	add	t4,t4,sp
1c00dda6:	45a2                	lw	a1,8(sp)
1c00dda8:	200e8513          	addi	a0,t4,512
1c00ddac:	4615                	li	a2,5
1c00ddae:	245000ef          	jal	ra,1c00e7f2 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00ddb2:	6705                	lui	a4,0x1
1c00ddb4:	63070713          	addi	a4,a4,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00ddb8:	970a                	add	a4,a4,sp
1c00ddba:	45a2                	lw	a1,8(sp)
1c00ddbc:	40070513          	addi	a0,a4,1024
1c00ddc0:	4619                	li	a2,6
1c00ddc2:	231000ef          	jal	ra,1c00e7f2 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00ddc6:	6785                	lui	a5,0x1
1c00ddc8:	63078793          	addi	a5,a5,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00ddcc:	978a                	add	a5,a5,sp
1c00ddce:	45a2                	lw	a1,8(sp)
1c00ddd0:	60078513          	addi	a0,a5,1536
1c00ddd4:	461d                	li	a2,7
1c00ddd6:	21d000ef          	jal	ra,1c00e7f2 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00ddda:	6e91                	lui	t4,0x4
1c00dddc:	7971                	lui	s2,0xffffc
1c00ddde:	630e8e93          	addi	t4,t4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00dde2:	9e8a                	add	t4,t4,sp
1c00dde4:	e0090993          	addi	s3,s2,-512 # ffffbe00 <pulp__FC+0xffffbe01>
1c00dde8:	99f6                	add	s3,s3,t4
1c00ddea:	45a2                	lw	a1,8(sp)
1c00ddec:	4621                	li	a2,8
1c00ddee:	854e                	mv	a0,s3
1c00ddf0:	203000ef          	jal	ra,1c00e7f2 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>
1c00ddf4:	63010513          	addi	a0,sp,1584
1c00ddf8:	6c1000ef          	jal	ra,1c00ecb8 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c00ddfc:	6711                	lui	a4,0x4
1c00ddfe:	77f9                	lui	a5,0xffffe
1c00de00:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00de04:	970a                	add	a4,a4,sp
1c00de06:	80078493          	addi	s1,a5,-2048 # ffffd800 <pulp__FC+0xffffd801>
1c00de0a:	6589                	lui	a1,0x2
1c00de0c:	94ba                	add	s1,s1,a4
1c00de0e:	63058593          	addi	a1,a1,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00de12:	958a                	add	a1,a1,sp
1c00de14:	8526                	mv	a0,s1
1c00de16:	63010613          	addi	a2,sp,1584
1c00de1a:	6e3000ef          	jal	ra,1c00ecfc <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00de1e:	6789                	lui	a5,0x2
1c00de20:	63078793          	addi	a5,a5,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00de24:	978a                	add	a5,a5,sp
1c00de26:	008785b3          	add	a1,a5,s0
1c00de2a:	63010613          	addi	a2,sp,1584
1c00de2e:	20048513          	addi	a0,s1,512
1c00de32:	6cb000ef          	jal	ra,1c00ecfc <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00de36:	6e89                	lui	t4,0x2
1c00de38:	630e8e93          	addi	t4,t4,1584 # 2630 <__CTOR_LIST__-0x1bffd9d4>
1c00de3c:	9e8a                	add	t4,t4,sp
1c00de3e:	015e85b3          	add	a1,t4,s5
1c00de42:	63010613          	addi	a2,sp,1584
1c00de46:	40048513          	addi	a0,s1,1024
1c00de4a:	6b3000ef          	jal	ra,1c00ecfc <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00de4e:	6711                	lui	a4,0x4
1c00de50:	e3070713          	addi	a4,a4,-464 # 3e30 <__CTOR_LIST__-0x1bffc1d4>
1c00de54:	00e105b3          	add	a1,sp,a4
1c00de58:	63010613          	addi	a2,sp,1584
1c00de5c:	60048513          	addi	a0,s1,1536
1c00de60:	69d000ef          	jal	ra,1c00ecfc <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00de64:	6791                	lui	a5,0x4
1c00de66:	63078793          	addi	a5,a5,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00de6a:	978a                	add	a5,a5,sp
1c00de6c:	7ef5                	lui	t4,0xffffd
1c00de6e:	a0090413          	addi	s0,s2,-1536
1c00de72:	943e                	add	s0,s0,a5
1c00de74:	800e8593          	addi	a1,t4,-2048 # ffffc800 <pulp__FC+0xffffc801>
1c00de78:	95be                	add	a1,a1,a5
1c00de7a:	63010613          	addi	a2,sp,1584
1c00de7e:	8522                	mv	a0,s0
1c00de80:	67d000ef          	jal	ra,1c00ecfc <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00de84:	8526                	mv	a0,s1
1c00de86:	655000ef          	jal	ra,1c00ecda <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>
1c00de8a:	8522                	mv	a0,s0
1c00de8c:	1b7000ef          	jal	ra,1c00e842 <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00de90:	6605                	lui	a2,0x1
1c00de92:	63060613          	addi	a2,a2,1584 # 1630 <__CTOR_LIST__-0x1bffe9d4>
1c00de96:	960a                	add	a2,a2,sp
1c00de98:	85a6                	mv	a1,s1
1c00de9a:	8526                	mv	a0,s1
1c00de9c:	6ed000ef          	jal	ra,1c00ed88 <PQCLEAN_KYBER1024_CLEAN_polyvec_add>
1c00dea0:	864e                	mv	a2,s3
1c00dea2:	85a2                	mv	a1,s0
1c00dea4:	8522                	mv	a0,s0
1c00dea6:	237000ef          	jal	ra,1c00e8dc <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00deaa:	6711                	lui	a4,0x4
1c00deac:	63070713          	addi	a4,a4,1584 # 4630 <__CTOR_LIST__-0x1bffb9d4>
1c00deb0:	970a                	add	a4,a4,sp
1c00deb2:	c0090613          	addi	a2,s2,-1024
1c00deb6:	963a                	add	a2,a2,a4
1c00deb8:	85a2                	mv	a1,s0
1c00deba:	8522                	mv	a0,s0
1c00debc:	221000ef          	jal	ra,1c00e8dc <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00dec0:	8526                	mv	a0,s1
1c00dec2:	6a5000ef          	jal	ra,1c00ed66 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>
1c00dec6:	8522                	mv	a0,s0
1c00dec8:	1ed000ef          	jal	ra,1c00e8b4 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00decc:	4532                	lw	a0,12(sp)
1c00dece:	85a6                	mv	a1,s1
1c00ded0:	249000ef          	jal	ra,1c00e918 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>
1c00ded4:	47b2                	lw	a5,12(sp)
1c00ded6:	85a2                	mv	a1,s0
1c00ded8:	58078513          	addi	a0,a5,1408
1c00dedc:	2999                	jal	1c00e332 <PQCLEAN_KYBER1024_CLEAN_poly_compress>
1c00dede:	6311                	lui	t1,0x4
1c00dee0:	911a                	add	sp,sp,t1
1c00dee2:	66c12083          	lw	ra,1644(sp)
1c00dee6:	66812403          	lw	s0,1640(sp)
1c00deea:	66412483          	lw	s1,1636(sp)
1c00deee:	66012903          	lw	s2,1632(sp)
1c00def2:	65c12983          	lw	s3,1628(sp)
1c00def6:	65812a03          	lw	s4,1624(sp)
1c00defa:	65412a83          	lw	s5,1620(sp)
1c00defe:	65012b03          	lw	s6,1616(sp)
1c00df02:	64c12b83          	lw	s7,1612(sp)
1c00df06:	64812c03          	lw	s8,1608(sp)
1c00df0a:	64412c83          	lw	s9,1604(sp)
1c00df0e:	64012d03          	lw	s10,1600(sp)
1c00df12:	63c12d83          	lw	s11,1596(sp)
1c00df16:	67010113          	addi	sp,sp,1648
1c00df1a:	8082                	ret
1c00df1c:	00469793          	slli	a5,a3,0x4
1c00df20:	00465693          	srli	a3,a2,0x4
1c00df24:	8edd                	or	a3,a3,a5
1c00df26:	8c46                	mv	s8,a7
1c00df28:	d6d5dae3          	ble	a3,a1,1c00dc9c <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x158>
1c00df2c:	b341                	j	1c00dcac <PQCLEAN_KYBER1024_CLEAN_indcpa_enc+0x168>

1c00df2e <PQCLEAN_KYBER1024_CLEAN_indcpa_dec>:
1c00df2e:	737d                	lui	t1,0xfffff
1c00df30:	be010113          	addi	sp,sp,-1056
1c00df34:	40112e23          	sw	ra,1052(sp)
1c00df38:	40812c23          	sw	s0,1048(sp)
1c00df3c:	40912a23          	sw	s1,1044(sp)
1c00df40:	41212823          	sw	s2,1040(sp)
1c00df44:	41312623          	sw	s3,1036(sp)
1c00df48:	41412423          	sw	s4,1032(sp)
1c00df4c:	911a                	add	sp,sp,t1
1c00df4e:	892a                	mv	s2,a0
1c00df50:	40010513          	addi	a0,sp,1024
1c00df54:	89b2                	mv	s3,a2
1c00df56:	8a2e                	mv	s4,a1
1c00df58:	395000ef          	jal	ra,1c00eaec <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress>
1c00df5c:	6785                	lui	a5,0x1
1c00df5e:	747d                	lui	s0,0xfffff
1c00df60:	40078793          	addi	a5,a5,1024 # 1400 <__CTOR_LIST__-0x1bffec04>
1c00df64:	978a                	add	a5,a5,sp
1c00df66:	c0040493          	addi	s1,s0,-1024 # ffffec00 <pulp__FC+0xffffec01>
1c00df6a:	94be                	add	s1,s1,a5
1c00df6c:	580a0593          	addi	a1,s4,1408
1c00df70:	8526                	mv	a0,s1
1c00df72:	2b3d                	jal	1c00e4b0 <PQCLEAN_KYBER1024_CLEAN_poly_decompress>
1c00df74:	6505                	lui	a0,0x1
1c00df76:	c0050513          	addi	a0,a0,-1024 # c00 <__CTOR_LIST__-0x1bfff404>
1c00df7a:	85ce                	mv	a1,s3
1c00df7c:	950a                	add	a0,a0,sp
1c00df7e:	509000ef          	jal	ra,1c00ec86 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>
1c00df82:	40010513          	addi	a0,sp,1024
1c00df86:	533000ef          	jal	ra,1c00ecb8 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>
1c00df8a:	6785                	lui	a5,0x1
1c00df8c:	40078793          	addi	a5,a5,1024 # 1400 <__CTOR_LIST__-0x1bffec04>
1c00df90:	978a                	add	a5,a5,sp
1c00df92:	e0040413          	addi	s0,s0,-512
1c00df96:	6585                	lui	a1,0x1
1c00df98:	943e                	add	s0,s0,a5
1c00df9a:	c0058593          	addi	a1,a1,-1024 # c00 <__CTOR_LIST__-0x1bfff404>
1c00df9e:	40010613          	addi	a2,sp,1024
1c00dfa2:	958a                	add	a1,a1,sp
1c00dfa4:	8522                	mv	a0,s0
1c00dfa6:	557000ef          	jal	ra,1c00ecfc <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>
1c00dfaa:	8522                	mv	a0,s0
1c00dfac:	097000ef          	jal	ra,1c00e842 <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00dfb0:	8622                	mv	a2,s0
1c00dfb2:	85a6                	mv	a1,s1
1c00dfb4:	8522                	mv	a0,s0
1c00dfb6:	145000ef          	jal	ra,1c00e8fa <PQCLEAN_KYBER1024_CLEAN_poly_sub>
1c00dfba:	8522                	mv	a0,s0
1c00dfbc:	0f9000ef          	jal	ra,1c00e8b4 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00dfc0:	85a2                	mv	a1,s0
1c00dfc2:	854a                	mv	a0,s2
1c00dfc4:	25d9                	jal	1c00e68a <PQCLEAN_KYBER1024_CLEAN_poly_tomsg>
1c00dfc6:	6305                	lui	t1,0x1
1c00dfc8:	911a                	add	sp,sp,t1
1c00dfca:	41c12083          	lw	ra,1052(sp)
1c00dfce:	41812403          	lw	s0,1048(sp)
1c00dfd2:	41412483          	lw	s1,1044(sp)
1c00dfd6:	41012903          	lw	s2,1040(sp)
1c00dfda:	40c12983          	lw	s3,1036(sp)
1c00dfde:	40812a03          	lw	s4,1032(sp)
1c00dfe2:	42010113          	addi	sp,sp,1056
1c00dfe6:	8082                	ret

1c00dfe8 <PQCLEAN_KYBER1024_CLEAN_crypto_kem_dec>:
1c00dfe8:	94010113          	addi	sp,sp,-1728
1c00dfec:	6b312623          	sw	s3,1708(sp)
1c00dff0:	89aa                	mv	s3,a0
1c00dff2:	850a                	mv	a0,sp
1c00dff4:	6a112e23          	sw	ra,1724(sp)
1c00dff8:	6a812c23          	sw	s0,1720(sp)
1c00dffc:	6a912a23          	sw	s1,1716(sp)
1c00e000:	6b212823          	sw	s2,1712(sp)
1c00e004:	6b412423          	sw	s4,1704(sp)
1c00e008:	84b2                	mv	s1,a2
1c00e00a:	892e                	mv	s2,a1
1c00e00c:	6405                	lui	s0,0x1
1c00e00e:	3705                	jal	1c00df2e <PQCLEAN_KYBER1024_CLEAN_indcpa_dec>
1c00e010:	008487b3          	add	a5,s1,s0
1c00e014:	c207ae83          	lw	t4,-992(a5)
1c00e018:	c247ae03          	lw	t3,-988(a5)
1c00e01c:	c287a303          	lw	t1,-984(a5)
1c00e020:	c2c7a883          	lw	a7,-980(a5)
1c00e024:	c307a803          	lw	a6,-976(a5)
1c00e028:	c387a703          	lw	a4,-968(a5)
1c00e02c:	c347a683          	lw	a3,-972(a5)
1c00e030:	c3c7a783          	lw	a5,-964(a5)
1c00e034:	858a                	mv	a1,sp
1c00e036:	0088                	addi	a0,sp,64
1c00e038:	04000613          	li	a2,64
1c00e03c:	d076                	sw	t4,32(sp)
1c00e03e:	d272                	sw	t3,36(sp)
1c00e040:	d41a                	sw	t1,40(sp)
1c00e042:	d646                	sw	a7,44(sp)
1c00e044:	d842                	sw	a6,48(sp)
1c00e046:	dc3a                	sw	a4,56(sp)
1c00e048:	de3e                	sw	a5,60(sp)
1c00e04a:	da36                	sw	a3,52(sp)
1c00e04c:	9a6ff0ef          	jal	ra,1c00d1f2 <sha3_512>
1c00e050:	1094                	addi	a3,sp,96
1c00e052:	60048613          	addi	a2,s1,1536
1c00e056:	858a                	mv	a1,sp
1c00e058:	0108                	addi	a0,sp,128
1c00e05a:	34ed                	jal	1c00db44 <PQCLEAN_KYBER1024_CLEAN_indcpa_enc>
1c00e05c:	010c                	addi	a1,sp,128
1c00e05e:	62000613          	li	a2,1568
1c00e062:	854a                	mv	a0,s2
1c00e064:	615000ef          	jal	ra,1c00ee78 <PQCLEAN_KYBER1024_CLEAN_verify>
1c00e068:	8a2a                	mv	s4,a0
1c00e06a:	85ca                	mv	a1,s2
1c00e06c:	1088                	addi	a0,sp,96
1c00e06e:	62000613          	li	a2,1568
1c00e072:	f99fe0ef          	jal	ra,1c00d00a <sha3_256>
1c00e076:	c4040593          	addi	a1,s0,-960 # c40 <__CTOR_LIST__-0x1bfff3c4>
1c00e07a:	0ffa7693          	andi	a3,s4,255
1c00e07e:	95a6                	add	a1,a1,s1
1c00e080:	0088                	addi	a0,sp,64
1c00e082:	02000613          	li	a2,32
1c00e086:	6a5000ef          	jal	ra,1c00ef2a <PQCLEAN_KYBER1024_CLEAN_cmov>
1c00e08a:	854e                	mv	a0,s3
1c00e08c:	0090                	addi	a2,sp,64
1c00e08e:	04000693          	li	a3,64
1c00e092:	02000593          	li	a1,32
1c00e096:	d39fe0ef          	jal	ra,1c00cdce <shake256>
1c00e09a:	6bc12083          	lw	ra,1724(sp)
1c00e09e:	6b812403          	lw	s0,1720(sp)
1c00e0a2:	6b412483          	lw	s1,1716(sp)
1c00e0a6:	6b012903          	lw	s2,1712(sp)
1c00e0aa:	6ac12983          	lw	s3,1708(sp)
1c00e0ae:	6a812a03          	lw	s4,1704(sp)
1c00e0b2:	4501                	li	a0,0
1c00e0b4:	6c010113          	addi	sp,sp,1728
1c00e0b8:	8082                	ret

1c00e0ba <PQCLEAN_KYBER1024_CLEAN_ntt>:
1c00e0ba:	7139                	addi	sp,sp,-64
1c00e0bc:	da26                	sw	s1,52(sp)
1c00e0be:	d256                	sw	s5,36(sp)
1c00e0c0:	d05a                	sw	s6,32(sp)
1c00e0c2:	ce5e                	sw	s7,28(sp)
1c00e0c4:	cc62                	sw	s8,24(sp)
1c00e0c6:	ca66                	sw	s9,20(sp)
1c00e0c8:	de06                	sw	ra,60(sp)
1c00e0ca:	dc22                	sw	s0,56(sp)
1c00e0cc:	d84a                	sw	s2,48(sp)
1c00e0ce:	d64e                	sw	s3,44(sp)
1c00e0d0:	d452                	sw	s4,40(sp)
1c00e0d2:	c86a                	sw	s10,16(sp)
1c00e0d4:	c66e                	sw	s11,12(sp)
1c00e0d6:	8b2a                	mv	s6,a0
1c00e0d8:	4c9d                	li	s9,7
1c00e0da:	d0a00493          	li	s1,-758
1c00e0de:	4b85                	li	s7,1
1c00e0e0:	08000a93          	li	s5,128
1c00e0e4:	0ff00c13          	li	s8,255
1c00e0e8:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00e0ec:	1c0007b7          	lui	a5,0x1c000
1c00e0f0:	4401                	li	s0,0
1c00e0f2:	00199a13          	slli	s4,s3,0x1
1c00e0f6:	13078793          	addi	a5,a5,304 # 1c000130 <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00e0fa:	008a8933          	add	s2,s5,s0
1c00e0fe:	9a3e                	add	s4,s4,a5
1c00e100:	8bce                	mv	s7,s3
1c00e102:	05247c63          	bleu	s2,s0,1c00e15a <PQCLEAN_KYBER1024_CLEAN_ntt+0xa0>
1c00e106:	00191793          	slli	a5,s2,0x1
1c00e10a:	00fb0d33          	add	s10,s6,a5
1c00e10e:	0406                	slli	s0,s0,0x1
1c00e110:	945a                	add	s0,s0,s6
1c00e112:	8dea                	mv	s11,s10
1c00e114:	000d1503          	lh	a0,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00e118:	0409                	addi	s0,s0,2
1c00e11a:	02950533          	mul	a0,a0,s1
1c00e11e:	4a5000ef          	jal	ra,1c00edc2 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00e122:	ffe45703          	lhu	a4,-2(s0)
1c00e126:	0542                	slli	a0,a0,0x10
1c00e128:	8141                	srli	a0,a0,0x10
1c00e12a:	8f09                	sub	a4,a4,a0
1c00e12c:	00ed1023          	sh	a4,0(s10)
1c00e130:	ffe45703          	lhu	a4,-2(s0)
1c00e134:	0d09                	addi	s10,s10,2
1c00e136:	953a                	add	a0,a0,a4
1c00e138:	fea41f23          	sh	a0,-2(s0)
1c00e13c:	fc8d9ce3          	bne	s11,s0,1c00e114 <PQCLEAN_KYBER1024_CLEAN_ntt+0x5a>
1c00e140:	01590433          	add	s0,s2,s5
1c00e144:	008c6d63          	bltu	s8,s0,1c00e15e <PQCLEAN_KYBER1024_CLEAN_ntt+0xa4>
1c00e148:	0985                	addi	s3,s3,1
1c00e14a:	008a8933          	add	s2,s5,s0
1c00e14e:	000a1483          	lh	s1,0(s4)
1c00e152:	8bce                	mv	s7,s3
1c00e154:	0a09                	addi	s4,s4,2
1c00e156:	fb2468e3          	bltu	s0,s2,1c00e106 <PQCLEAN_KYBER1024_CLEAN_ntt+0x4c>
1c00e15a:	844a                	mv	s0,s2
1c00e15c:	b7f5                	j	1c00e148 <PQCLEAN_KYBER1024_CLEAN_ntt+0x8e>
1c00e15e:	1cfd                	addi	s9,s9,-1
1c00e160:	001ada93          	srli	s5,s5,0x1
1c00e164:	000c8b63          	beqz	s9,1c00e17a <PQCLEAN_KYBER1024_CLEAN_ntt+0xc0>
1c00e168:	1c0007b7          	lui	a5,0x1c000
1c00e16c:	0986                	slli	s3,s3,0x1
1c00e16e:	13078793          	addi	a5,a5,304 # 1c000130 <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00e172:	99be                	add	s3,s3,a5
1c00e174:	00099483          	lh	s1,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00e178:	bf85                	j	1c00e0e8 <PQCLEAN_KYBER1024_CLEAN_ntt+0x2e>
1c00e17a:	50f2                	lw	ra,60(sp)
1c00e17c:	5462                	lw	s0,56(sp)
1c00e17e:	54d2                	lw	s1,52(sp)
1c00e180:	5942                	lw	s2,48(sp)
1c00e182:	59b2                	lw	s3,44(sp)
1c00e184:	5a22                	lw	s4,40(sp)
1c00e186:	5a92                	lw	s5,36(sp)
1c00e188:	5b02                	lw	s6,32(sp)
1c00e18a:	4bf2                	lw	s7,28(sp)
1c00e18c:	4c62                	lw	s8,24(sp)
1c00e18e:	4cd2                	lw	s9,20(sp)
1c00e190:	4d42                	lw	s10,16(sp)
1c00e192:	4db2                	lw	s11,12(sp)
1c00e194:	6121                	addi	sp,sp,64
1c00e196:	8082                	ret

1c00e198 <PQCLEAN_KYBER1024_CLEAN_invntt>:
1c00e198:	7139                	addi	sp,sp,-64
1c00e19a:	dc22                	sw	s0,56(sp)
1c00e19c:	da26                	sw	s1,52(sp)
1c00e19e:	d256                	sw	s5,36(sp)
1c00e1a0:	d05a                	sw	s6,32(sp)
1c00e1a2:	ce5e                	sw	s7,28(sp)
1c00e1a4:	cc62                	sw	s8,24(sp)
1c00e1a6:	de06                	sw	ra,60(sp)
1c00e1a8:	d84a                	sw	s2,48(sp)
1c00e1aa:	d64e                	sw	s3,44(sp)
1c00e1ac:	d452                	sw	s4,40(sp)
1c00e1ae:	ca66                	sw	s9,20(sp)
1c00e1b0:	c86a                	sw	s10,16(sp)
1c00e1b2:	c66e                	sw	s11,12(sp)
1c00e1b4:	842a                	mv	s0,a0
1c00e1b6:	4c1d                	li	s8,7
1c00e1b8:	65c00493          	li	s1,1628
1c00e1bc:	07f00a93          	li	s5,127
1c00e1c0:	4b09                	li	s6,2
1c00e1c2:	0ff00b93          	li	s7,255
1c00e1c6:	800007b7          	lui	a5,0x80000
1c00e1ca:	fff7c793          	not	a5,a5
1c00e1ce:	00fa8a33          	add	s4,s5,a5
1c00e1d2:	1c000737          	lui	a4,0x1c000
1c00e1d6:	4781                	li	a5,0
1c00e1d8:	0a06                	slli	s4,s4,0x1
1c00e1da:	13070713          	addi	a4,a4,304 # 1c000130 <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00e1de:	016789b3          	add	s3,a5,s6
1c00e1e2:	9a3a                	add	s4,s4,a4
1c00e1e4:	1afd                	addi	s5,s5,-1
1c00e1e6:	0737f263          	bleu	s3,a5,1c00e24a <PQCLEAN_KYBER1024_CLEAN_invntt+0xb2>
1c00e1ea:	00199d93          	slli	s11,s3,0x1
1c00e1ee:	0786                	slli	a5,a5,0x1
1c00e1f0:	9da2                	add	s11,s11,s0
1c00e1f2:	00f40d33          	add	s10,s0,a5
1c00e1f6:	896e                	mv	s2,s11
1c00e1f8:	000d5c83          	lhu	s9,0(s10)
1c00e1fc:	000dd503          	lhu	a0,0(s11)
1c00e200:	0d09                	addi	s10,s10,2
1c00e202:	9566                	add	a0,a0,s9
1c00e204:	0542                	slli	a0,a0,0x10
1c00e206:	8541                	srai	a0,a0,0x10
1c00e208:	3db000ef          	jal	ra,1c00ede2 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00e20c:	fead1f23          	sh	a0,-2(s10)
1c00e210:	000dd503          	lhu	a0,0(s11)
1c00e214:	0d89                	addi	s11,s11,2
1c00e216:	41950533          	sub	a0,a0,s9
1c00e21a:	0542                	slli	a0,a0,0x10
1c00e21c:	8541                	srai	a0,a0,0x10
1c00e21e:	fead9f23          	sh	a0,-2(s11)
1c00e222:	02950533          	mul	a0,a0,s1
1c00e226:	39d000ef          	jal	ra,1c00edc2 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00e22a:	fead9f23          	sh	a0,-2(s11)
1c00e22e:	fda915e3          	bne	s2,s10,1c00e1f8 <PQCLEAN_KYBER1024_CLEAN_invntt+0x60>
1c00e232:	016987b3          	add	a5,s3,s6
1c00e236:	00fbed63          	bltu	s7,a5,1c00e250 <PQCLEAN_KYBER1024_CLEAN_invntt+0xb8>
1c00e23a:	016789b3          	add	s3,a5,s6
1c00e23e:	000a1483          	lh	s1,0(s4)
1c00e242:	1afd                	addi	s5,s5,-1
1c00e244:	1a79                	addi	s4,s4,-2
1c00e246:	fb37e2e3          	bltu	a5,s3,1c00e1ea <PQCLEAN_KYBER1024_CLEAN_invntt+0x52>
1c00e24a:	87ce                	mv	a5,s3
1c00e24c:	fefbf7e3          	bleu	a5,s7,1c00e23a <PQCLEAN_KYBER1024_CLEAN_invntt+0xa2>
1c00e250:	1c7d                	addi	s8,s8,-1
1c00e252:	0b06                	slli	s6,s6,0x1
1c00e254:	000c0c63          	beqz	s8,1c00e26c <PQCLEAN_KYBER1024_CLEAN_invntt+0xd4>
1c00e258:	1c000737          	lui	a4,0x1c000
1c00e25c:	001a9793          	slli	a5,s5,0x1
1c00e260:	13070713          	addi	a4,a4,304 # 1c000130 <PQCLEAN_KYBER1024_CLEAN_zetas>
1c00e264:	97ba                	add	a5,a5,a4
1c00e266:	00079483          	lh	s1,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00e26a:	bfb1                	j	1c00e1c6 <PQCLEAN_KYBER1024_CLEAN_invntt+0x2e>
1c00e26c:	20040913          	addi	s2,s0,512
1c00e270:	5a100493          	li	s1,1441
1c00e274:	00041503          	lh	a0,0(s0)
1c00e278:	0409                	addi	s0,s0,2
1c00e27a:	02950533          	mul	a0,a0,s1
1c00e27e:	345000ef          	jal	ra,1c00edc2 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00e282:	fea41f23          	sh	a0,-2(s0)
1c00e286:	fe8917e3          	bne	s2,s0,1c00e274 <PQCLEAN_KYBER1024_CLEAN_invntt+0xdc>
1c00e28a:	50f2                	lw	ra,60(sp)
1c00e28c:	5462                	lw	s0,56(sp)
1c00e28e:	54d2                	lw	s1,52(sp)
1c00e290:	5942                	lw	s2,48(sp)
1c00e292:	59b2                	lw	s3,44(sp)
1c00e294:	5a22                	lw	s4,40(sp)
1c00e296:	5a92                	lw	s5,36(sp)
1c00e298:	5b02                	lw	s6,32(sp)
1c00e29a:	4bf2                	lw	s7,28(sp)
1c00e29c:	4c62                	lw	s8,24(sp)
1c00e29e:	4cd2                	lw	s9,20(sp)
1c00e2a0:	4d42                	lw	s10,16(sp)
1c00e2a2:	4db2                	lw	s11,12(sp)
1c00e2a4:	6121                	addi	sp,sp,64
1c00e2a6:	8082                	ret

1c00e2a8 <PQCLEAN_KYBER1024_CLEAN_basemul>:
1c00e2a8:	00261783          	lh	a5,2(a2)
1c00e2ac:	00259703          	lh	a4,2(a1)
1c00e2b0:	1101                	addi	sp,sp,-32
1c00e2b2:	cc22                	sw	s0,24(sp)
1c00e2b4:	842a                	mv	s0,a0
1c00e2b6:	02f70533          	mul	a0,a4,a5
1c00e2ba:	ce06                	sw	ra,28(sp)
1c00e2bc:	ca26                	sw	s1,20(sp)
1c00e2be:	c84a                	sw	s2,16(sp)
1c00e2c0:	c64e                	sw	s3,12(sp)
1c00e2c2:	892e                	mv	s2,a1
1c00e2c4:	84b2                	mv	s1,a2
1c00e2c6:	89b6                	mv	s3,a3
1c00e2c8:	2fb000ef          	jal	ra,1c00edc2 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00e2cc:	00a41023          	sh	a0,0(s0)
1c00e2d0:	03350533          	mul	a0,a0,s3
1c00e2d4:	2ef000ef          	jal	ra,1c00edc2 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00e2d8:	00a41023          	sh	a0,0(s0)
1c00e2dc:	00049783          	lh	a5,0(s1)
1c00e2e0:	00091503          	lh	a0,0(s2)
1c00e2e4:	02f50533          	mul	a0,a0,a5
1c00e2e8:	2db000ef          	jal	ra,1c00edc2 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00e2ec:	00045783          	lhu	a5,0(s0)
1c00e2f0:	953e                	add	a0,a0,a5
1c00e2f2:	00a41023          	sh	a0,0(s0)
1c00e2f6:	00249783          	lh	a5,2(s1)
1c00e2fa:	00091503          	lh	a0,0(s2)
1c00e2fe:	02f50533          	mul	a0,a0,a5
1c00e302:	2c1000ef          	jal	ra,1c00edc2 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00e306:	00a41123          	sh	a0,2(s0)
1c00e30a:	00049783          	lh	a5,0(s1)
1c00e30e:	00291503          	lh	a0,2(s2)
1c00e312:	02f50533          	mul	a0,a0,a5
1c00e316:	2ad000ef          	jal	ra,1c00edc2 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>
1c00e31a:	00245783          	lhu	a5,2(s0)
1c00e31e:	40f2                	lw	ra,28(sp)
1c00e320:	953e                	add	a0,a0,a5
1c00e322:	00a41123          	sh	a0,2(s0)
1c00e326:	4462                	lw	s0,24(sp)
1c00e328:	44d2                	lw	s1,20(sp)
1c00e32a:	4942                	lw	s2,16(sp)
1c00e32c:	49b2                	lw	s3,12(sp)
1c00e32e:	6105                	addi	sp,sp,32
1c00e330:	8082                	ret

1c00e332 <PQCLEAN_KYBER1024_CLEAN_poly_compress>:
1c00e332:	1101                	addi	sp,sp,-32
1c00e334:	6605                	lui	a2,0x1
1c00e336:	ce22                	sw	s0,28(sp)
1c00e338:	cc26                	sw	s1,24(sp)
1c00e33a:	ca4a                	sw	s2,20(sp)
1c00e33c:	c84e                	sw	s3,16(sp)
1c00e33e:	c652                	sw	s4,12(sp)
1c00e340:	0a050813          	addi	a6,a0,160
1c00e344:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00e348:	00459a03          	lh	s4,4(a1)
1c00e34c:	00659983          	lh	s3,6(a1)
1c00e350:	00a59903          	lh	s2,10(a1)
1c00e354:	00c59483          	lh	s1,12(a1)
1c00e358:	00859383          	lh	t2,8(a1)
1c00e35c:	00e59283          	lh	t0,14(a1)
1c00e360:	00259403          	lh	s0,2(a1)
1c00e364:	00059f83          	lh	t6,0(a1)
1c00e368:	40fa5e93          	srai	t4,s4,0xf
1c00e36c:	40f9d713          	srai	a4,s3,0xf
1c00e370:	40f95793          	srai	a5,s2,0xf
1c00e374:	40f4d893          	srai	a7,s1,0xf
1c00e378:	40f3d313          	srai	t1,t2,0xf
1c00e37c:	40f2d693          	srai	a3,t0,0xf
1c00e380:	40f45e13          	srai	t3,s0,0xf
1c00e384:	00cefeb3          	and	t4,t4,a2
1c00e388:	8f71                	and	a4,a4,a2
1c00e38a:	8ff1                	and	a5,a5,a2
1c00e38c:	00c8f8b3          	and	a7,a7,a2
1c00e390:	40ffdf13          	srai	t5,t6,0xf
1c00e394:	00ce7e33          	and	t3,t3,a2
1c00e398:	9ed2                	add	t4,t4,s4
1c00e39a:	974e                	add	a4,a4,s3
1c00e39c:	00c37333          	and	t1,t1,a2
1c00e3a0:	97ca                	add	a5,a5,s2
1c00e3a2:	98a6                	add	a7,a7,s1
1c00e3a4:	8ef1                	and	a3,a3,a2
1c00e3a6:	931e                	add	t1,t1,t2
1c00e3a8:	9696                	add	a3,a3,t0
1c00e3aa:	00cf7f33          	and	t5,t5,a2
1c00e3ae:	9e22                	add	t3,t3,s0
1c00e3b0:	0742                	slli	a4,a4,0x10
1c00e3b2:	08c2                	slli	a7,a7,0x10
1c00e3b4:	0ec2                	slli	t4,t4,0x10
1c00e3b6:	07c2                	slli	a5,a5,0x10
1c00e3b8:	9f7e                	add	t5,t5,t6
1c00e3ba:	8741                	srai	a4,a4,0x10
1c00e3bc:	4108d893          	srai	a7,a7,0x10
1c00e3c0:	410ede93          	srai	t4,t4,0x10
1c00e3c4:	87c1                	srai	a5,a5,0x10
1c00e3c6:	0e42                	slli	t3,t3,0x10
1c00e3c8:	0342                	slli	t1,t1,0x10
1c00e3ca:	06c2                	slli	a3,a3,0x10
1c00e3cc:	410e5e13          	srai	t3,t3,0x10
1c00e3d0:	0716                	slli	a4,a4,0x5
1c00e3d2:	41035313          	srai	t1,t1,0x10
1c00e3d6:	0896                	slli	a7,a7,0x5
1c00e3d8:	0e96                	slli	t4,t4,0x5
1c00e3da:	0796                	slli	a5,a5,0x5
1c00e3dc:	86c1                	srai	a3,a3,0x10
1c00e3de:	0f42                	slli	t5,t5,0x10
1c00e3e0:	0e16                	slli	t3,t3,0x5
1c00e3e2:	68070713          	addi	a4,a4,1664
1c00e3e6:	0316                	slli	t1,t1,0x5
1c00e3e8:	68088893          	addi	a7,a7,1664
1c00e3ec:	410f5f13          	srai	t5,t5,0x10
1c00e3f0:	680e8e93          	addi	t4,t4,1664
1c00e3f4:	68078793          	addi	a5,a5,1664
1c00e3f8:	0696                	slli	a3,a3,0x5
1c00e3fa:	680e0e13          	addi	t3,t3,1664
1c00e3fe:	02c75733          	divu	a4,a4,a2
1c00e402:	68030313          	addi	t1,t1,1664 # 1680 <__CTOR_LIST__-0x1bffe984>
1c00e406:	02c8d8b3          	divu	a7,a7,a2
1c00e40a:	0f16                	slli	t5,t5,0x5
1c00e40c:	02cedeb3          	divu	t4,t4,a2
1c00e410:	02c7d7b3          	divu	a5,a5,a2
1c00e414:	68068693          	addi	a3,a3,1664
1c00e418:	02ce5e33          	divu	t3,t3,a2
1c00e41c:	02c35333          	divu	t1,t1,a2
1c00e420:	680f0f13          	addi	t5,t5,1664
1c00e424:	02c6d6b3          	divu	a3,a3,a2
1c00e428:	02cf5f33          	divu	t5,t5,a2
1c00e42c:	8b7d                	andi	a4,a4,31
1c00e42e:	01f8f893          	andi	a7,a7,31
1c00e432:	01fefe93          	andi	t4,t4,31
1c00e436:	8bfd                	andi	a5,a5,31
1c00e438:	00771f93          	slli	t6,a4,0x7
1c00e43c:	01fe7e13          	andi	t3,t3,31
1c00e440:	01f37313          	andi	t1,t1,31
1c00e444:	00689393          	slli	t2,a7,0x6
1c00e448:	0e8a                	slli	t4,t4,0x2
1c00e44a:	0786                	slli	a5,a5,0x1
1c00e44c:	8afd                	andi	a3,a3,31
1c00e44e:	005e1293          	slli	t0,t3,0x5
1c00e452:	01feeeb3          	or	t4,t4,t6
1c00e456:	01ff7f13          	andi	t5,t5,31
1c00e45a:	00431f93          	slli	t6,t1,0x4
1c00e45e:	003e5e13          	srli	t3,t3,0x3
1c00e462:	8305                	srli	a4,a4,0x1
1c00e464:	0077e7b3          	or	a5,a5,t2
1c00e468:	00435313          	srli	t1,t1,0x4
1c00e46c:	068e                	slli	a3,a3,0x3
1c00e46e:	0028d893          	srli	a7,a7,0x2
1c00e472:	005f6f33          	or	t5,t5,t0
1c00e476:	01ceee33          	or	t3,t4,t3
1c00e47a:	01f76733          	or	a4,a4,t6
1c00e47e:	0067e7b3          	or	a5,a5,t1
1c00e482:	0116e6b3          	or	a3,a3,a7
1c00e486:	01e50023          	sb	t5,0(a0)
1c00e48a:	01c500a3          	sb	t3,1(a0)
1c00e48e:	00e50123          	sb	a4,2(a0)
1c00e492:	00f501a3          	sb	a5,3(a0)
1c00e496:	00d50223          	sb	a3,4(a0)
1c00e49a:	0515                	addi	a0,a0,5
1c00e49c:	05c1                	addi	a1,a1,16
1c00e49e:	eb0515e3          	bne	a0,a6,1c00e348 <PQCLEAN_KYBER1024_CLEAN_poly_compress+0x16>
1c00e4a2:	4472                	lw	s0,28(sp)
1c00e4a4:	44e2                	lw	s1,24(sp)
1c00e4a6:	4952                	lw	s2,20(sp)
1c00e4a8:	49c2                	lw	s3,16(sp)
1c00e4aa:	4a32                	lw	s4,12(sp)
1c00e4ac:	6105                	addi	sp,sp,32
1c00e4ae:	8082                	ret

1c00e4b0 <PQCLEAN_KYBER1024_CLEAN_poly_decompress>:
1c00e4b0:	1141                	addi	sp,sp,-16
1c00e4b2:	6605                	lui	a2,0x1
1c00e4b4:	6841                	lui	a6,0x10
1c00e4b6:	c622                	sw	s0,12(sp)
1c00e4b8:	c426                	sw	s1,8(sp)
1c00e4ba:	0a058893          	addi	a7,a1,160
1c00e4be:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00e4c2:	187d                	addi	a6,a6,-1
1c00e4c4:	0035ce83          	lbu	t4,3(a1)
1c00e4c8:	0025c283          	lbu	t0,2(a1)
1c00e4cc:	0045cf83          	lbu	t6,4(a1)
1c00e4d0:	0015c683          	lbu	a3,1(a1)
1c00e4d4:	0005c303          	lbu	t1,0(a1)
1c00e4d8:	0042d713          	srli	a4,t0,0x4
1c00e4dc:	004e9493          	slli	s1,t4,0x4
1c00e4e0:	006ed793          	srli	a5,t4,0x6
1c00e4e4:	002f9413          	slli	s0,t6,0x2
1c00e4e8:	0026de13          	srli	t3,a3,0x2
1c00e4ec:	8f45                	or	a4,a4,s1
1c00e4ee:	8fc1                	or	a5,a5,s0
1c00e4f0:	00535f13          	srli	t5,t1,0x5
1c00e4f4:	00369393          	slli	t2,a3,0x3
1c00e4f8:	0286                	slli	t0,t0,0x1
1c00e4fa:	829d                	srli	a3,a3,0x7
1c00e4fc:	01f37313          	andi	t1,t1,31
1c00e500:	01fe7e13          	andi	t3,t3,31
1c00e504:	8b7d                	andi	a4,a4,31
1c00e506:	8bfd                	andi	a5,a5,31
1c00e508:	007f6f33          	or	t5,t5,t2
1c00e50c:	0056e6b3          	or	a3,a3,t0
1c00e510:	001ede93          	srli	t4,t4,0x1
1c00e514:	02c30333          	mul	t1,t1,a2
1c00e518:	02ce0e33          	mul	t3,t3,a2
1c00e51c:	02c70733          	mul	a4,a4,a2
1c00e520:	02c787b3          	mul	a5,a5,a2
1c00e524:	01ff7f13          	andi	t5,t5,31
1c00e528:	8afd                	andi	a3,a3,31
1c00e52a:	01fefe93          	andi	t4,t4,31
1c00e52e:	003fdf93          	srli	t6,t6,0x3
1c00e532:	0341                	addi	t1,t1,16
1c00e534:	0e41                	addi	t3,t3,16
1c00e536:	0741                	addi	a4,a4,16
1c00e538:	07c1                	addi	a5,a5,16
1c00e53a:	02cf0f33          	mul	t5,t5,a2
1c00e53e:	02c686b3          	mul	a3,a3,a2
1c00e542:	02ce8eb3          	mul	t4,t4,a2
1c00e546:	02cf8fb3          	mul	t6,t6,a2
1c00e54a:	00535313          	srli	t1,t1,0x5
1c00e54e:	005e5e13          	srli	t3,t3,0x5
1c00e552:	8315                	srli	a4,a4,0x5
1c00e554:	8395                	srli	a5,a5,0x5
1c00e556:	0f41                	addi	t5,t5,16
1c00e558:	06c1                	addi	a3,a3,16
1c00e55a:	0ec1                	addi	t4,t4,16
1c00e55c:	0fc1                	addi	t6,t6,16
1c00e55e:	0342                	slli	t1,t1,0x10
1c00e560:	0e42                	slli	t3,t3,0x10
1c00e562:	0742                	slli	a4,a4,0x10
1c00e564:	07c2                	slli	a5,a5,0x10
1c00e566:	01035313          	srli	t1,t1,0x10
1c00e56a:	005f5f13          	srli	t5,t5,0x5
1c00e56e:	010e5e13          	srli	t3,t3,0x10
1c00e572:	8295                	srli	a3,a3,0x5
1c00e574:	8341                	srli	a4,a4,0x10
1c00e576:	005ede93          	srli	t4,t4,0x5
1c00e57a:	83c1                	srli	a5,a5,0x10
1c00e57c:	005fdf93          	srli	t6,t6,0x5
1c00e580:	0f42                	slli	t5,t5,0x10
1c00e582:	01037333          	and	t1,t1,a6
1c00e586:	06c2                	slli	a3,a3,0x10
1c00e588:	010e7e33          	and	t3,t3,a6
1c00e58c:	0ec2                	slli	t4,t4,0x10
1c00e58e:	01077733          	and	a4,a4,a6
1c00e592:	0fc2                	slli	t6,t6,0x10
1c00e594:	0107f7b3          	and	a5,a5,a6
1c00e598:	01e36333          	or	t1,t1,t5
1c00e59c:	00de66b3          	or	a3,t3,a3
1c00e5a0:	01d76733          	or	a4,a4,t4
1c00e5a4:	01f7e7b3          	or	a5,a5,t6
1c00e5a8:	00652023          	sw	t1,0(a0)
1c00e5ac:	c154                	sw	a3,4(a0)
1c00e5ae:	c518                	sw	a4,8(a0)
1c00e5b0:	c55c                	sw	a5,12(a0)
1c00e5b2:	0595                	addi	a1,a1,5
1c00e5b4:	0541                	addi	a0,a0,16
1c00e5b6:	f11597e3          	bne	a1,a7,1c00e4c4 <PQCLEAN_KYBER1024_CLEAN_poly_decompress+0x14>
1c00e5ba:	4432                	lw	s0,12(sp)
1c00e5bc:	44a2                	lw	s1,8(sp)
1c00e5be:	0141                	addi	sp,sp,16
1c00e5c0:	8082                	ret

1c00e5c2 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>:
1c00e5c2:	6685                	lui	a3,0x1
1c00e5c4:	18058613          	addi	a2,a1,384
1c00e5c8:	16fd                	addi	a3,a3,-1
1c00e5ca:	0015c783          	lbu	a5,1(a1)
1c00e5ce:	0005c703          	lbu	a4,0(a1)
1c00e5d2:	07a2                	slli	a5,a5,0x8
1c00e5d4:	8fd9                	or	a5,a5,a4
1c00e5d6:	8ff5                	and	a5,a5,a3
1c00e5d8:	00f51023          	sh	a5,0(a0)
1c00e5dc:	0015c703          	lbu	a4,1(a1)
1c00e5e0:	0025c783          	lbu	a5,2(a1)
1c00e5e4:	8311                	srli	a4,a4,0x4
1c00e5e6:	0792                	slli	a5,a5,0x4
1c00e5e8:	8fd9                	or	a5,a5,a4
1c00e5ea:	00f51123          	sh	a5,2(a0)
1c00e5ee:	058d                	addi	a1,a1,3
1c00e5f0:	0511                	addi	a0,a0,4
1c00e5f2:	fcb61ce3          	bne	a2,a1,1c00e5ca <PQCLEAN_KYBER1024_CLEAN_poly_frombytes+0x8>
1c00e5f6:	8082                	ret

1c00e5f8 <PQCLEAN_KYBER1024_CLEAN_poly_frommsg>:
1c00e5f8:	20050713          	addi	a4,a0,512
1c00e5fc:	0005c783          	lbu	a5,0(a1)
1c00e600:	0541                	addi	a0,a0,16
1c00e602:	8b85                	andi	a5,a5,1
1c00e604:	40f007b3          	neg	a5,a5
1c00e608:	6817f793          	andi	a5,a5,1665
1c00e60c:	fef51823          	sh	a5,-16(a0)
1c00e610:	0005c783          	lbu	a5,0(a1)
1c00e614:	0585                	addi	a1,a1,1
1c00e616:	07fa                	slli	a5,a5,0x1e
1c00e618:	87fd                	srai	a5,a5,0x1f
1c00e61a:	6817f793          	andi	a5,a5,1665
1c00e61e:	fef51923          	sh	a5,-14(a0)
1c00e622:	fff5c783          	lbu	a5,-1(a1)
1c00e626:	07f6                	slli	a5,a5,0x1d
1c00e628:	87fd                	srai	a5,a5,0x1f
1c00e62a:	6817f793          	andi	a5,a5,1665
1c00e62e:	fef51a23          	sh	a5,-12(a0)
1c00e632:	fff5c783          	lbu	a5,-1(a1)
1c00e636:	07f2                	slli	a5,a5,0x1c
1c00e638:	87fd                	srai	a5,a5,0x1f
1c00e63a:	6817f793          	andi	a5,a5,1665
1c00e63e:	fef51b23          	sh	a5,-10(a0)
1c00e642:	fff5c783          	lbu	a5,-1(a1)
1c00e646:	07ee                	slli	a5,a5,0x1b
1c00e648:	87fd                	srai	a5,a5,0x1f
1c00e64a:	6817f793          	andi	a5,a5,1665
1c00e64e:	fef51c23          	sh	a5,-8(a0)
1c00e652:	fff5c783          	lbu	a5,-1(a1)
1c00e656:	07ea                	slli	a5,a5,0x1a
1c00e658:	87fd                	srai	a5,a5,0x1f
1c00e65a:	6817f793          	andi	a5,a5,1665
1c00e65e:	fef51d23          	sh	a5,-6(a0)
1c00e662:	fff5c783          	lbu	a5,-1(a1)
1c00e666:	07e6                	slli	a5,a5,0x19
1c00e668:	87fd                	srai	a5,a5,0x1f
1c00e66a:	6817f793          	andi	a5,a5,1665
1c00e66e:	fef51e23          	sh	a5,-4(a0)
1c00e672:	fff5c783          	lbu	a5,-1(a1)
1c00e676:	879d                	srai	a5,a5,0x7
1c00e678:	40f007b3          	neg	a5,a5
1c00e67c:	6817f793          	andi	a5,a5,1665
1c00e680:	fef51f23          	sh	a5,-2(a0)
1c00e684:	f6e51ce3          	bne	a0,a4,1c00e5fc <PQCLEAN_KYBER1024_CLEAN_poly_frommsg+0x4>
1c00e688:	8082                	ret

1c00e68a <PQCLEAN_KYBER1024_CLEAN_poly_tomsg>:
1c00e68a:	6685                	lui	a3,0x1
1c00e68c:	20058613          	addi	a2,a1,512
1c00e690:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00e694:	00050023          	sb	zero,0(a0)
1c00e698:	00059783          	lh	a5,0(a1)
1c00e69c:	05c1                	addi	a1,a1,16
1c00e69e:	40f7d713          	srai	a4,a5,0xf
1c00e6a2:	8f75                	and	a4,a4,a3
1c00e6a4:	97ba                	add	a5,a5,a4
1c00e6a6:	07c2                	slli	a5,a5,0x10
1c00e6a8:	83c1                	srli	a5,a5,0x10
1c00e6aa:	0786                	slli	a5,a5,0x1
1c00e6ac:	68078793          	addi	a5,a5,1664
1c00e6b0:	02d7c7b3          	div	a5,a5,a3
1c00e6b4:	0017f813          	andi	a6,a5,1
1c00e6b8:	01050023          	sb	a6,0(a0)
1c00e6bc:	ff259703          	lh	a4,-14(a1)
1c00e6c0:	0505                	addi	a0,a0,1
1c00e6c2:	40f75793          	srai	a5,a4,0xf
1c00e6c6:	8ff5                	and	a5,a5,a3
1c00e6c8:	97ba                	add	a5,a5,a4
1c00e6ca:	07c2                	slli	a5,a5,0x10
1c00e6cc:	83c1                	srli	a5,a5,0x10
1c00e6ce:	0786                	slli	a5,a5,0x1
1c00e6d0:	68078793          	addi	a5,a5,1664
1c00e6d4:	02d7c7b3          	div	a5,a5,a3
1c00e6d8:	8b85                	andi	a5,a5,1
1c00e6da:	0786                	slli	a5,a5,0x1
1c00e6dc:	0107e7b3          	or	a5,a5,a6
1c00e6e0:	fef50fa3          	sb	a5,-1(a0)
1c00e6e4:	ff459703          	lh	a4,-12(a1)
1c00e6e8:	40f75813          	srai	a6,a4,0xf
1c00e6ec:	00d87833          	and	a6,a6,a3
1c00e6f0:	9742                	add	a4,a4,a6
1c00e6f2:	0742                	slli	a4,a4,0x10
1c00e6f4:	8341                	srli	a4,a4,0x10
1c00e6f6:	0706                	slli	a4,a4,0x1
1c00e6f8:	68070713          	addi	a4,a4,1664
1c00e6fc:	02d74733          	div	a4,a4,a3
1c00e700:	8b05                	andi	a4,a4,1
1c00e702:	070a                	slli	a4,a4,0x2
1c00e704:	8fd9                	or	a5,a5,a4
1c00e706:	fef50fa3          	sb	a5,-1(a0)
1c00e70a:	ff659703          	lh	a4,-10(a1)
1c00e70e:	40f75813          	srai	a6,a4,0xf
1c00e712:	00d87833          	and	a6,a6,a3
1c00e716:	9742                	add	a4,a4,a6
1c00e718:	0742                	slli	a4,a4,0x10
1c00e71a:	8341                	srli	a4,a4,0x10
1c00e71c:	0706                	slli	a4,a4,0x1
1c00e71e:	68070713          	addi	a4,a4,1664
1c00e722:	02d74733          	div	a4,a4,a3
1c00e726:	8b05                	andi	a4,a4,1
1c00e728:	070e                	slli	a4,a4,0x3
1c00e72a:	8fd9                	or	a5,a5,a4
1c00e72c:	fef50fa3          	sb	a5,-1(a0)
1c00e730:	ff859703          	lh	a4,-8(a1)
1c00e734:	40f75813          	srai	a6,a4,0xf
1c00e738:	00d87833          	and	a6,a6,a3
1c00e73c:	9742                	add	a4,a4,a6
1c00e73e:	0742                	slli	a4,a4,0x10
1c00e740:	8341                	srli	a4,a4,0x10
1c00e742:	0706                	slli	a4,a4,0x1
1c00e744:	68070713          	addi	a4,a4,1664
1c00e748:	02d74733          	div	a4,a4,a3
1c00e74c:	8b05                	andi	a4,a4,1
1c00e74e:	0712                	slli	a4,a4,0x4
1c00e750:	8fd9                	or	a5,a5,a4
1c00e752:	fef50fa3          	sb	a5,-1(a0)
1c00e756:	ffa59703          	lh	a4,-6(a1)
1c00e75a:	40f75813          	srai	a6,a4,0xf
1c00e75e:	00d87833          	and	a6,a6,a3
1c00e762:	9742                	add	a4,a4,a6
1c00e764:	0742                	slli	a4,a4,0x10
1c00e766:	8341                	srli	a4,a4,0x10
1c00e768:	0706                	slli	a4,a4,0x1
1c00e76a:	68070713          	addi	a4,a4,1664
1c00e76e:	02d74733          	div	a4,a4,a3
1c00e772:	8b05                	andi	a4,a4,1
1c00e774:	0716                	slli	a4,a4,0x5
1c00e776:	8fd9                	or	a5,a5,a4
1c00e778:	fef50fa3          	sb	a5,-1(a0)
1c00e77c:	ffc59703          	lh	a4,-4(a1)
1c00e780:	40f75813          	srai	a6,a4,0xf
1c00e784:	00d87833          	and	a6,a6,a3
1c00e788:	9742                	add	a4,a4,a6
1c00e78a:	0742                	slli	a4,a4,0x10
1c00e78c:	8341                	srli	a4,a4,0x10
1c00e78e:	0706                	slli	a4,a4,0x1
1c00e790:	68070713          	addi	a4,a4,1664
1c00e794:	02d74733          	div	a4,a4,a3
1c00e798:	8b05                	andi	a4,a4,1
1c00e79a:	071a                	slli	a4,a4,0x6
1c00e79c:	8fd9                	or	a5,a5,a4
1c00e79e:	fef50fa3          	sb	a5,-1(a0)
1c00e7a2:	ffe59703          	lh	a4,-2(a1)
1c00e7a6:	40f75813          	srai	a6,a4,0xf
1c00e7aa:	00d87833          	and	a6,a6,a3
1c00e7ae:	9742                	add	a4,a4,a6
1c00e7b0:	0742                	slli	a4,a4,0x10
1c00e7b2:	8341                	srli	a4,a4,0x10
1c00e7b4:	0706                	slli	a4,a4,0x1
1c00e7b6:	68070713          	addi	a4,a4,1664
1c00e7ba:	02d74733          	div	a4,a4,a3
1c00e7be:	8b05                	andi	a4,a4,1
1c00e7c0:	071e                	slli	a4,a4,0x7
1c00e7c2:	8fd9                	or	a5,a5,a4
1c00e7c4:	fef50fa3          	sb	a5,-1(a0)
1c00e7c8:	ecc596e3          	bne	a1,a2,1c00e694 <PQCLEAN_KYBER1024_CLEAN_poly_tomsg+0xa>
1c00e7cc:	8082                	ret

1c00e7ce <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta1>:
1c00e7ce:	7175                	addi	sp,sp,-144
1c00e7d0:	c522                	sw	s0,136(sp)
1c00e7d2:	86b2                	mv	a3,a2
1c00e7d4:	842a                	mv	s0,a0
1c00e7d6:	862e                	mv	a2,a1
1c00e7d8:	850a                	mv	a0,sp
1c00e7da:	08000593          	li	a1,128
1c00e7de:	c706                	sw	ra,140(sp)
1c00e7e0:	2db9                	jal	1c00ee3e <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00e7e2:	858a                	mv	a1,sp
1c00e7e4:	8522                	mv	a0,s0
1c00e7e6:	fa1fd0ef          	jal	ra,1c00c786 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta1>
1c00e7ea:	40ba                	lw	ra,140(sp)
1c00e7ec:	442a                	lw	s0,136(sp)
1c00e7ee:	6149                	addi	sp,sp,144
1c00e7f0:	8082                	ret

1c00e7f2 <PQCLEAN_KYBER1024_CLEAN_poly_getnoise_eta2>:
1c00e7f2:	7175                	addi	sp,sp,-144
1c00e7f4:	c522                	sw	s0,136(sp)
1c00e7f6:	86b2                	mv	a3,a2
1c00e7f8:	842a                	mv	s0,a0
1c00e7fa:	862e                	mv	a2,a1
1c00e7fc:	850a                	mv	a0,sp
1c00e7fe:	08000593          	li	a1,128
1c00e802:	c706                	sw	ra,140(sp)
1c00e804:	2d2d                	jal	1c00ee3e <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>
1c00e806:	858a                	mv	a1,sp
1c00e808:	8522                	mv	a0,s0
1c00e80a:	87efe0ef          	jal	ra,1c00c888 <PQCLEAN_KYBER1024_CLEAN_poly_cbd_eta2>
1c00e80e:	40ba                	lw	ra,140(sp)
1c00e810:	442a                	lw	s0,136(sp)
1c00e812:	6149                	addi	sp,sp,144
1c00e814:	8082                	ret

1c00e816 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>:
1c00e816:	1141                	addi	sp,sp,-16
1c00e818:	c422                	sw	s0,8(sp)
1c00e81a:	842a                	mv	s0,a0
1c00e81c:	c226                	sw	s1,4(sp)
1c00e81e:	c606                	sw	ra,12(sp)
1c00e820:	20040493          	addi	s1,s0,512
1c00e824:	897ff0ef          	jal	ra,1c00e0ba <PQCLEAN_KYBER1024_CLEAN_ntt>
1c00e828:	00041503          	lh	a0,0(s0)
1c00e82c:	0409                	addi	s0,s0,2
1c00e82e:	2b55                	jal	1c00ede2 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00e830:	fea41f23          	sh	a0,-2(s0)
1c00e834:	fe941ae3          	bne	s0,s1,1c00e828 <PQCLEAN_KYBER1024_CLEAN_poly_ntt+0x12>
1c00e838:	40b2                	lw	ra,12(sp)
1c00e83a:	4422                	lw	s0,8(sp)
1c00e83c:	4492                	lw	s1,4(sp)
1c00e83e:	0141                	addi	sp,sp,16
1c00e840:	8082                	ret

1c00e842 <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>:
1c00e842:	957ff06f          	j	1c00e198 <PQCLEAN_KYBER1024_CLEAN_invntt>

1c00e846 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>:
1c00e846:	1101                	addi	sp,sp,-32
1c00e848:	ca26                	sw	s1,20(sp)
1c00e84a:	c256                	sw	s5,4(sp)
1c00e84c:	1c0004b7          	lui	s1,0x1c000
1c00e850:	1c000ab7          	lui	s5,0x1c000
1c00e854:	c84a                	sw	s2,16(sp)
1c00e856:	c64e                	sw	s3,12(sp)
1c00e858:	c452                	sw	s4,8(sp)
1c00e85a:	ce06                	sw	ra,28(sp)
1c00e85c:	cc22                	sw	s0,24(sp)
1c00e85e:	1b048493          	addi	s1,s1,432 # 1c0001b0 <PQCLEAN_KYBER1024_CLEAN_zetas+0x80>
1c00e862:	00450a13          	addi	s4,a0,4
1c00e866:	00458993          	addi	s3,a1,4
1c00e86a:	00460913          	addi	s2,a2,4
1c00e86e:	230a8a93          	addi	s5,s5,560 # 1c000230 <stack_start>
1c00e872:	00049403          	lh	s0,0(s1)
1c00e876:	ffc90613          	addi	a2,s2,-4
1c00e87a:	ffc98593          	addi	a1,s3,-4
1c00e87e:	ffca0513          	addi	a0,s4,-4
1c00e882:	86a2                	mv	a3,s0
1c00e884:	3415                	jal	1c00e2a8 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00e886:	408006b3          	neg	a3,s0
1c00e88a:	06c2                	slli	a3,a3,0x10
1c00e88c:	864a                	mv	a2,s2
1c00e88e:	85ce                	mv	a1,s3
1c00e890:	8552                	mv	a0,s4
1c00e892:	86c1                	srai	a3,a3,0x10
1c00e894:	0489                	addi	s1,s1,2
1c00e896:	3c09                	jal	1c00e2a8 <PQCLEAN_KYBER1024_CLEAN_basemul>
1c00e898:	0a21                	addi	s4,s4,8
1c00e89a:	09a1                	addi	s3,s3,8
1c00e89c:	0921                	addi	s2,s2,8
1c00e89e:	fc9a9ae3          	bne	s5,s1,1c00e872 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery+0x2c>
1c00e8a2:	40f2                	lw	ra,28(sp)
1c00e8a4:	4462                	lw	s0,24(sp)
1c00e8a6:	44d2                	lw	s1,20(sp)
1c00e8a8:	4942                	lw	s2,16(sp)
1c00e8aa:	49b2                	lw	s3,12(sp)
1c00e8ac:	4a22                	lw	s4,8(sp)
1c00e8ae:	4a92                	lw	s5,4(sp)
1c00e8b0:	6105                	addi	sp,sp,32
1c00e8b2:	8082                	ret

1c00e8b4 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>:
1c00e8b4:	1141                	addi	sp,sp,-16
1c00e8b6:	c422                	sw	s0,8(sp)
1c00e8b8:	c226                	sw	s1,4(sp)
1c00e8ba:	c606                	sw	ra,12(sp)
1c00e8bc:	842a                	mv	s0,a0
1c00e8be:	20050493          	addi	s1,a0,512
1c00e8c2:	00041503          	lh	a0,0(s0)
1c00e8c6:	0409                	addi	s0,s0,2
1c00e8c8:	2b29                	jal	1c00ede2 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>
1c00e8ca:	fea41f23          	sh	a0,-2(s0)
1c00e8ce:	fe941ae3          	bne	s0,s1,1c00e8c2 <PQCLEAN_KYBER1024_CLEAN_poly_reduce+0xe>
1c00e8d2:	40b2                	lw	ra,12(sp)
1c00e8d4:	4422                	lw	s0,8(sp)
1c00e8d6:	4492                	lw	s1,4(sp)
1c00e8d8:	0141                	addi	sp,sp,16
1c00e8da:	8082                	ret

1c00e8dc <PQCLEAN_KYBER1024_CLEAN_poly_add>:
1c00e8dc:	20058693          	addi	a3,a1,512
1c00e8e0:	0005d783          	lhu	a5,0(a1)
1c00e8e4:	00065703          	lhu	a4,0(a2)
1c00e8e8:	0589                	addi	a1,a1,2
1c00e8ea:	97ba                	add	a5,a5,a4
1c00e8ec:	00f51023          	sh	a5,0(a0)
1c00e8f0:	0609                	addi	a2,a2,2
1c00e8f2:	0509                	addi	a0,a0,2
1c00e8f4:	fed596e3          	bne	a1,a3,1c00e8e0 <PQCLEAN_KYBER1024_CLEAN_poly_add+0x4>
1c00e8f8:	8082                	ret

1c00e8fa <PQCLEAN_KYBER1024_CLEAN_poly_sub>:
1c00e8fa:	20058693          	addi	a3,a1,512
1c00e8fe:	0005d783          	lhu	a5,0(a1)
1c00e902:	00065703          	lhu	a4,0(a2)
1c00e906:	0589                	addi	a1,a1,2
1c00e908:	8f99                	sub	a5,a5,a4
1c00e90a:	00f51023          	sh	a5,0(a0)
1c00e90e:	0609                	addi	a2,a2,2
1c00e910:	0509                	addi	a0,a0,2
1c00e912:	fed596e3          	bne	a1,a3,1c00e8fe <PQCLEAN_KYBER1024_CLEAN_poly_sub+0x4>
1c00e916:	8082                	ret

1c00e918 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress>:
1c00e918:	7179                	addi	sp,sp,-48
1c00e91a:	6605                	lui	a2,0x1
1c00e91c:	d622                	sw	s0,44(sp)
1c00e91e:	d426                	sw	s1,40(sp)
1c00e920:	d24a                	sw	s2,36(sp)
1c00e922:	d04e                	sw	s3,32(sp)
1c00e924:	ce52                	sw	s4,28(sp)
1c00e926:	cc56                	sw	s5,24(sp)
1c00e928:	ca5a                	sw	s6,20(sp)
1c00e92a:	c85e                	sw	s7,16(sp)
1c00e92c:	c662                	sw	s8,12(sp)
1c00e92e:	58050313          	addi	t1,a0,1408
1c00e932:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00e936:	16050893          	addi	a7,a0,352
1c00e93a:	882e                	mv	a6,a1
1c00e93c:	00081b03          	lh	s6,0(a6) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00e940:	00281a83          	lh	s5,2(a6)
1c00e944:	00481a03          	lh	s4,4(a6)
1c00e948:	00681983          	lh	s3,6(a6)
1c00e94c:	00881903          	lh	s2,8(a6)
1c00e950:	00a81483          	lh	s1,10(a6)
1c00e954:	00c81403          	lh	s0,12(a6)
1c00e958:	00e81383          	lh	t2,14(a6)
1c00e95c:	40fb5293          	srai	t0,s6,0xf
1c00e960:	40fade13          	srai	t3,s5,0xf
1c00e964:	40fa5f93          	srai	t6,s4,0xf
1c00e968:	40f9d693          	srai	a3,s3,0xf
1c00e96c:	40f95713          	srai	a4,s2,0xf
1c00e970:	40f4df13          	srai	t5,s1,0xf
1c00e974:	40f45793          	srai	a5,s0,0xf
1c00e978:	40f3de93          	srai	t4,t2,0xf
1c00e97c:	00c2f2b3          	and	t0,t0,a2
1c00e980:	00ce7e33          	and	t3,t3,a2
1c00e984:	00cfffb3          	and	t6,t6,a2
1c00e988:	8ef1                	and	a3,a3,a2
1c00e98a:	8f71                	and	a4,a4,a2
1c00e98c:	00cf7f33          	and	t5,t5,a2
1c00e990:	8ff1                	and	a5,a5,a2
1c00e992:	00cefeb3          	and	t4,t4,a2
1c00e996:	92da                	add	t0,t0,s6
1c00e998:	9e56                	add	t3,t3,s5
1c00e99a:	9fd2                	add	t6,t6,s4
1c00e99c:	96ce                	add	a3,a3,s3
1c00e99e:	974a                	add	a4,a4,s2
1c00e9a0:	9f26                	add	t5,t5,s1
1c00e9a2:	97a2                	add	a5,a5,s0
1c00e9a4:	9e9e                	add	t4,t4,t2
1c00e9a6:	02c2                	slli	t0,t0,0x10
1c00e9a8:	0e42                	slli	t3,t3,0x10
1c00e9aa:	0fc2                	slli	t6,t6,0x10
1c00e9ac:	06c2                	slli	a3,a3,0x10
1c00e9ae:	0742                	slli	a4,a4,0x10
1c00e9b0:	0f42                	slli	t5,t5,0x10
1c00e9b2:	07c2                	slli	a5,a5,0x10
1c00e9b4:	0ec2                	slli	t4,t4,0x10
1c00e9b6:	0102d293          	srli	t0,t0,0x10
1c00e9ba:	010e5e13          	srli	t3,t3,0x10
1c00e9be:	010fdf93          	srli	t6,t6,0x10
1c00e9c2:	82c1                	srli	a3,a3,0x10
1c00e9c4:	8341                	srli	a4,a4,0x10
1c00e9c6:	010f5f13          	srli	t5,t5,0x10
1c00e9ca:	83c1                	srli	a5,a5,0x10
1c00e9cc:	010ede93          	srli	t4,t4,0x10
1c00e9d0:	02ae                	slli	t0,t0,0xb
1c00e9d2:	0e2e                	slli	t3,t3,0xb
1c00e9d4:	0fae                	slli	t6,t6,0xb
1c00e9d6:	06ae                	slli	a3,a3,0xb
1c00e9d8:	072e                	slli	a4,a4,0xb
1c00e9da:	0f2e                	slli	t5,t5,0xb
1c00e9dc:	07ae                	slli	a5,a5,0xb
1c00e9de:	0eae                	slli	t4,t4,0xb
1c00e9e0:	68028293          	addi	t0,t0,1664
1c00e9e4:	680e0e13          	addi	t3,t3,1664
1c00e9e8:	680f8f93          	addi	t6,t6,1664 # 1000680 <__CTOR_LIST__-0x1afff984>
1c00e9ec:	68068693          	addi	a3,a3,1664
1c00e9f0:	68070713          	addi	a4,a4,1664
1c00e9f4:	680f0f13          	addi	t5,t5,1664
1c00e9f8:	68078793          	addi	a5,a5,1664
1c00e9fc:	680e8e93          	addi	t4,t4,1664
1c00ea00:	02c2d2b3          	divu	t0,t0,a2
1c00ea04:	02ce5e33          	divu	t3,t3,a2
1c00ea08:	02cfdfb3          	divu	t6,t6,a2
1c00ea0c:	02c6d6b3          	divu	a3,a3,a2
1c00ea10:	02c75733          	divu	a4,a4,a2
1c00ea14:	02cf5f33          	divu	t5,t5,a2
1c00ea18:	02c7d7b3          	divu	a5,a5,a2
1c00ea1c:	02cedeb3          	divu	t4,t4,a2
1c00ea20:	7fffff93          	andi	t6,t6,2047
1c00ea24:	7fff7f13          	andi	t5,t5,2047
1c00ea28:	7ff2f293          	andi	t0,t0,2047
1c00ea2c:	7ffe7e13          	andi	t3,t3,2047
1c00ea30:	7ff6f693          	andi	a3,a3,2047
1c00ea34:	7ff77713          	andi	a4,a4,2047
1c00ea38:	7ff7f793          	andi	a5,a5,2047
1c00ea3c:	7ffefe93          	andi	t4,t4,2047
1c00ea40:	003e1913          	slli	s2,t3,0x3
1c00ea44:	006f9493          	slli	s1,t6,0x6
1c00ea48:	00afd413          	srli	s0,t6,0xa
1c00ea4c:	00169b13          	slli	s6,a3,0x1
1c00ea50:	00471a93          	slli	s5,a4,0x4
1c00ea54:	007f1c13          	slli	s8,t5,0x7
1c00ea58:	009f5393          	srli	t2,t5,0x9
1c00ea5c:	00279a13          	slli	s4,a5,0x2
1c00ea60:	005e9993          	slli	s3,t4,0x5
1c00ea64:	0082db93          	srli	s7,t0,0x8
1c00ea68:	005e5e13          	srli	t3,t3,0x5
1c00ea6c:	829d                	srli	a3,a3,0x7
1c00ea6e:	8311                	srli	a4,a4,0x4
1c00ea70:	8399                	srli	a5,a5,0x6
1c00ea72:	012be933          	or	s2,s7,s2
1c00ea76:	009e6e33          	or	t3,t3,s1
1c00ea7a:	002fdf93          	srli	t6,t6,0x2
1c00ea7e:	01646433          	or	s0,s0,s6
1c00ea82:	0156e6b3          	or	a3,a3,s5
1c00ea86:	01876733          	or	a4,a4,s8
1c00ea8a:	001f5f13          	srli	t5,t5,0x1
1c00ea8e:	0143e3b3          	or	t2,t2,s4
1c00ea92:	0137e7b3          	or	a5,a5,s3
1c00ea96:	003ede93          	srli	t4,t4,0x3
1c00ea9a:	00550023          	sb	t0,0(a0)
1c00ea9e:	012500a3          	sb	s2,1(a0)
1c00eaa2:	01c50123          	sb	t3,2(a0)
1c00eaa6:	01f501a3          	sb	t6,3(a0)
1c00eaaa:	00850223          	sb	s0,4(a0)
1c00eaae:	00d502a3          	sb	a3,5(a0)
1c00eab2:	00e50323          	sb	a4,6(a0)
1c00eab6:	01e503a3          	sb	t5,7(a0)
1c00eaba:	00750423          	sb	t2,8(a0)
1c00eabe:	00f504a3          	sb	a5,9(a0)
1c00eac2:	01d50523          	sb	t4,10(a0)
1c00eac6:	052d                	addi	a0,a0,11
1c00eac8:	0841                	addi	a6,a6,16
1c00eaca:	e71519e3          	bne	a0,a7,1c00e93c <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x24>
1c00eace:	20058593          	addi	a1,a1,512
1c00ead2:	e6a312e3          	bne	t1,a0,1c00e936 <PQCLEAN_KYBER1024_CLEAN_polyvec_compress+0x1e>
1c00ead6:	5432                	lw	s0,44(sp)
1c00ead8:	54a2                	lw	s1,40(sp)
1c00eada:	5912                	lw	s2,36(sp)
1c00eadc:	5982                	lw	s3,32(sp)
1c00eade:	4a72                	lw	s4,28(sp)
1c00eae0:	4ae2                	lw	s5,24(sp)
1c00eae2:	4b52                	lw	s6,20(sp)
1c00eae4:	4bc2                	lw	s7,16(sp)
1c00eae6:	4c32                	lw	s8,12(sp)
1c00eae8:	6145                	addi	sp,sp,48
1c00eaea:	8082                	ret

1c00eaec <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress>:
1c00eaec:	7179                	addi	sp,sp,-48
1c00eaee:	6605                	lui	a2,0x1
1c00eaf0:	68c1                	lui	a7,0x10
1c00eaf2:	d622                	sw	s0,44(sp)
1c00eaf4:	d426                	sw	s1,40(sp)
1c00eaf6:	d24a                	sw	s2,36(sp)
1c00eaf8:	d04e                	sw	s3,32(sp)
1c00eafa:	ce52                	sw	s4,28(sp)
1c00eafc:	cc56                	sw	s5,24(sp)
1c00eafe:	ca5a                	sw	s6,20(sp)
1c00eb00:	c85e                	sw	s7,16(sp)
1c00eb02:	c662                	sw	s8,12(sp)
1c00eb04:	58058e13          	addi	t3,a1,1408
1c00eb08:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00eb0c:	18fd                	addi	a7,a7,-1
1c00eb0e:	16058313          	addi	t1,a1,352
1c00eb12:	882a                	mv	a6,a0
1c00eb14:	0045cf03          	lbu	t5,4(a1)
1c00eb18:	0035c683          	lbu	a3,3(a1)
1c00eb1c:	0055c703          	lbu	a4,5(a1)
1c00eb20:	0085c783          	lbu	a5,8(a1)
1c00eb24:	0015cf83          	lbu	t6,1(a1)
1c00eb28:	0025c903          	lbu	s2,2(a1)
1c00eb2c:	0065c403          	lbu	s0,6(a1)
1c00eb30:	0095c383          	lbu	t2,9(a1)
1c00eb34:	0075c283          	lbu	t0,7(a1)
1c00eb38:	0005ce83          	lbu	t4,0(a1)
1c00eb3c:	00af1493          	slli	s1,t5,0xa
1c00eb40:	068a                	slli	a3,a3,0x2
1c00eb42:	00979a13          	slli	s4,a5,0x9
1c00eb46:	008f9c13          	slli	s8,t6,0x8
1c00eb4a:	8ec5                	or	a3,a3,s1
1c00eb4c:	00695b93          	srli	s7,s2,0x6
1c00eb50:	00441b13          	slli	s6,s0,0x4
1c00eb54:	0027d493          	srli	s1,a5,0x2
1c00eb58:	0286                	slli	t0,t0,0x1
1c00eb5a:	00639793          	slli	a5,t2,0x6
1c00eb5e:	00475a93          	srli	s5,a4,0x4
1c00eb62:	00a5c983          	lbu	s3,10(a1)
1c00eb66:	0142e2b3          	or	t0,t0,s4
1c00eb6a:	01dc6eb3          	or	t4,s8,t4
1c00eb6e:	001f5a13          	srli	s4,t5,0x1
1c00eb72:	0176e6b3          	or	a3,a3,s7
1c00eb76:	00771f13          	slli	t5,a4,0x7
1c00eb7a:	8fc5                	or	a5,a5,s1
1c00eb7c:	015b6733          	or	a4,s6,s5
1c00eb80:	801d                	srli	s0,s0,0x7
1c00eb82:	003fdf93          	srli	t6,t6,0x3
1c00eb86:	0916                	slli	s2,s2,0x5
1c00eb88:	7ffefe93          	andi	t4,t4,2047
1c00eb8c:	7ff6f693          	andi	a3,a3,2047
1c00eb90:	7ff77713          	andi	a4,a4,2047
1c00eb94:	7ff7f793          	andi	a5,a5,2047
1c00eb98:	0082e2b3          	or	t0,t0,s0
1c00eb9c:	0053d393          	srli	t2,t2,0x5
1c00eba0:	00399413          	slli	s0,s3,0x3
1c00eba4:	01f96fb3          	or	t6,s2,t6
1c00eba8:	014f6f33          	or	t5,t5,s4
1c00ebac:	02ce8eb3          	mul	t4,t4,a2
1c00ebb0:	02c686b3          	mul	a3,a3,a2
1c00ebb4:	02c70733          	mul	a4,a4,a2
1c00ebb8:	02c787b3          	mul	a5,a5,a2
1c00ebbc:	007463b3          	or	t2,s0,t2
1c00ebc0:	7fffff93          	andi	t6,t6,2047
1c00ebc4:	7fff7f13          	andi	t5,t5,2047
1c00ebc8:	7ff2f293          	andi	t0,t0,2047
1c00ebcc:	400e8e93          	addi	t4,t4,1024
1c00ebd0:	40068693          	addi	a3,a3,1024
1c00ebd4:	40070713          	addi	a4,a4,1024
1c00ebd8:	40078793          	addi	a5,a5,1024
1c00ebdc:	02cf8fb3          	mul	t6,t6,a2
1c00ebe0:	02cf0f33          	mul	t5,t5,a2
1c00ebe4:	02c282b3          	mul	t0,t0,a2
1c00ebe8:	02c383b3          	mul	t2,t2,a2
1c00ebec:	00bede93          	srli	t4,t4,0xb
1c00ebf0:	82ad                	srli	a3,a3,0xb
1c00ebf2:	832d                	srli	a4,a4,0xb
1c00ebf4:	83ad                	srli	a5,a5,0xb
1c00ebf6:	400f8f93          	addi	t6,t6,1024
1c00ebfa:	400f0f13          	addi	t5,t5,1024
1c00ebfe:	40028293          	addi	t0,t0,1024
1c00ec02:	40038393          	addi	t2,t2,1024
1c00ec06:	0ec2                	slli	t4,t4,0x10
1c00ec08:	06c2                	slli	a3,a3,0x10
1c00ec0a:	0742                	slli	a4,a4,0x10
1c00ec0c:	07c2                	slli	a5,a5,0x10
1c00ec0e:	010ede93          	srli	t4,t4,0x10
1c00ec12:	00bfdf93          	srli	t6,t6,0xb
1c00ec16:	82c1                	srli	a3,a3,0x10
1c00ec18:	00bf5f13          	srli	t5,t5,0xb
1c00ec1c:	8341                	srli	a4,a4,0x10
1c00ec1e:	00b2d293          	srli	t0,t0,0xb
1c00ec22:	83c1                	srli	a5,a5,0x10
1c00ec24:	00b3d393          	srli	t2,t2,0xb
1c00ec28:	0fc2                	slli	t6,t6,0x10
1c00ec2a:	011efeb3          	and	t4,t4,a7
1c00ec2e:	0f42                	slli	t5,t5,0x10
1c00ec30:	0116f6b3          	and	a3,a3,a7
1c00ec34:	02c2                	slli	t0,t0,0x10
1c00ec36:	01177733          	and	a4,a4,a7
1c00ec3a:	03c2                	slli	t2,t2,0x10
1c00ec3c:	0117f7b3          	and	a5,a5,a7
1c00ec40:	01feeeb3          	or	t4,t4,t6
1c00ec44:	01e6e6b3          	or	a3,a3,t5
1c00ec48:	00576733          	or	a4,a4,t0
1c00ec4c:	0077e7b3          	or	a5,a5,t2
1c00ec50:	01d82023          	sw	t4,0(a6)
1c00ec54:	00d82223          	sw	a3,4(a6)
1c00ec58:	00e82423          	sw	a4,8(a6)
1c00ec5c:	00f82623          	sw	a5,12(a6)
1c00ec60:	05ad                	addi	a1,a1,11
1c00ec62:	0841                	addi	a6,a6,16
1c00ec64:	ea6598e3          	bne	a1,t1,1c00eb14 <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress+0x28>
1c00ec68:	20050513          	addi	a0,a0,512
1c00ec6c:	eabe11e3          	bne	t3,a1,1c00eb0e <PQCLEAN_KYBER1024_CLEAN_polyvec_decompress+0x22>
1c00ec70:	5432                	lw	s0,44(sp)
1c00ec72:	54a2                	lw	s1,40(sp)
1c00ec74:	5912                	lw	s2,36(sp)
1c00ec76:	5982                	lw	s3,32(sp)
1c00ec78:	4a72                	lw	s4,28(sp)
1c00ec7a:	4ae2                	lw	s5,24(sp)
1c00ec7c:	4b52                	lw	s6,20(sp)
1c00ec7e:	4bc2                	lw	s7,16(sp)
1c00ec80:	4c32                	lw	s8,12(sp)
1c00ec82:	6145                	addi	sp,sp,48
1c00ec84:	8082                	ret

1c00ec86 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes>:
1c00ec86:	1141                	addi	sp,sp,-16
1c00ec88:	c422                	sw	s0,8(sp)
1c00ec8a:	c226                	sw	s1,4(sp)
1c00ec8c:	c04a                	sw	s2,0(sp)
1c00ec8e:	c606                	sw	ra,12(sp)
1c00ec90:	842e                	mv	s0,a1
1c00ec92:	84aa                	mv	s1,a0
1c00ec94:	60058913          	addi	s2,a1,1536
1c00ec98:	85a2                	mv	a1,s0
1c00ec9a:	8526                	mv	a0,s1
1c00ec9c:	18040413          	addi	s0,s0,384
1c00eca0:	923ff0ef          	jal	ra,1c00e5c2 <PQCLEAN_KYBER1024_CLEAN_poly_frombytes>
1c00eca4:	20048493          	addi	s1,s1,512
1c00eca8:	ff2418e3          	bne	s0,s2,1c00ec98 <PQCLEAN_KYBER1024_CLEAN_polyvec_frombytes+0x12>
1c00ecac:	40b2                	lw	ra,12(sp)
1c00ecae:	4422                	lw	s0,8(sp)
1c00ecb0:	4492                	lw	s1,4(sp)
1c00ecb2:	4902                	lw	s2,0(sp)
1c00ecb4:	0141                	addi	sp,sp,16
1c00ecb6:	8082                	ret

1c00ecb8 <PQCLEAN_KYBER1024_CLEAN_polyvec_ntt>:
1c00ecb8:	1141                	addi	sp,sp,-16
1c00ecba:	c606                	sw	ra,12(sp)
1c00ecbc:	c422                	sw	s0,8(sp)
1c00ecbe:	842a                	mv	s0,a0
1c00ecc0:	3e99                	jal	1c00e816 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>
1c00ecc2:	20040513          	addi	a0,s0,512
1c00ecc6:	3e81                	jal	1c00e816 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>
1c00ecc8:	40040513          	addi	a0,s0,1024
1c00eccc:	36a9                	jal	1c00e816 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>
1c00ecce:	60040513          	addi	a0,s0,1536
1c00ecd2:	4422                	lw	s0,8(sp)
1c00ecd4:	40b2                	lw	ra,12(sp)
1c00ecd6:	0141                	addi	sp,sp,16
1c00ecd8:	be3d                	j	1c00e816 <PQCLEAN_KYBER1024_CLEAN_poly_ntt>

1c00ecda <PQCLEAN_KYBER1024_CLEAN_polyvec_invntt_tomont>:
1c00ecda:	1141                	addi	sp,sp,-16
1c00ecdc:	c606                	sw	ra,12(sp)
1c00ecde:	c422                	sw	s0,8(sp)
1c00ece0:	842a                	mv	s0,a0
1c00ece2:	3685                	jal	1c00e842 <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00ece4:	20040513          	addi	a0,s0,512
1c00ece8:	3ea9                	jal	1c00e842 <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00ecea:	40040513          	addi	a0,s0,1024
1c00ecee:	3e91                	jal	1c00e842 <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>
1c00ecf0:	60040513          	addi	a0,s0,1536
1c00ecf4:	4422                	lw	s0,8(sp)
1c00ecf6:	40b2                	lw	ra,12(sp)
1c00ecf8:	0141                	addi	sp,sp,16
1c00ecfa:	b6a1                	j	1c00e842 <PQCLEAN_KYBER1024_CLEAN_poly_invntt_tomont>

1c00ecfc <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery>:
1c00ecfc:	de010113          	addi	sp,sp,-544
1c00ed00:	20812c23          	sw	s0,536(sp)
1c00ed04:	20912a23          	sw	s1,532(sp)
1c00ed08:	21212823          	sw	s2,528(sp)
1c00ed0c:	21312623          	sw	s3,524(sp)
1c00ed10:	84b2                	mv	s1,a2
1c00ed12:	89ae                	mv	s3,a1
1c00ed14:	20112e23          	sw	ra,540(sp)
1c00ed18:	892a                	mv	s2,a0
1c00ed1a:	3635                	jal	1c00e846 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00ed1c:	6785                	lui	a5,0x1
1c00ed1e:	80078793          	addi	a5,a5,-2048 # 800 <__CTOR_LIST__-0x1bfff804>
1c00ed22:	20098413          	addi	s0,s3,512
1c00ed26:	20048493          	addi	s1,s1,512
1c00ed2a:	99be                	add	s3,s3,a5
1c00ed2c:	8626                	mv	a2,s1
1c00ed2e:	85a2                	mv	a1,s0
1c00ed30:	850a                	mv	a0,sp
1c00ed32:	3e11                	jal	1c00e846 <PQCLEAN_KYBER1024_CLEAN_poly_basemul_montgomery>
1c00ed34:	860a                	mv	a2,sp
1c00ed36:	85ca                	mv	a1,s2
1c00ed38:	854a                	mv	a0,s2
1c00ed3a:	20040413          	addi	s0,s0,512
1c00ed3e:	3e79                	jal	1c00e8dc <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00ed40:	20048493          	addi	s1,s1,512
1c00ed44:	ff3414e3          	bne	s0,s3,1c00ed2c <PQCLEAN_KYBER1024_CLEAN_polyvec_basemul_acc_montgomery+0x30>
1c00ed48:	854a                	mv	a0,s2
1c00ed4a:	36ad                	jal	1c00e8b4 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00ed4c:	21c12083          	lw	ra,540(sp)
1c00ed50:	21812403          	lw	s0,536(sp)
1c00ed54:	21412483          	lw	s1,532(sp)
1c00ed58:	21012903          	lw	s2,528(sp)
1c00ed5c:	20c12983          	lw	s3,524(sp)
1c00ed60:	22010113          	addi	sp,sp,544
1c00ed64:	8082                	ret

1c00ed66 <PQCLEAN_KYBER1024_CLEAN_polyvec_reduce>:
1c00ed66:	1141                	addi	sp,sp,-16
1c00ed68:	c606                	sw	ra,12(sp)
1c00ed6a:	c422                	sw	s0,8(sp)
1c00ed6c:	842a                	mv	s0,a0
1c00ed6e:	3699                	jal	1c00e8b4 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00ed70:	20040513          	addi	a0,s0,512
1c00ed74:	3681                	jal	1c00e8b4 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00ed76:	40040513          	addi	a0,s0,1024
1c00ed7a:	3e2d                	jal	1c00e8b4 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>
1c00ed7c:	60040513          	addi	a0,s0,1536
1c00ed80:	4422                	lw	s0,8(sp)
1c00ed82:	40b2                	lw	ra,12(sp)
1c00ed84:	0141                	addi	sp,sp,16
1c00ed86:	b63d                	j	1c00e8b4 <PQCLEAN_KYBER1024_CLEAN_poly_reduce>

1c00ed88 <PQCLEAN_KYBER1024_CLEAN_polyvec_add>:
1c00ed88:	1101                	addi	sp,sp,-32
1c00ed8a:	cc22                	sw	s0,24(sp)
1c00ed8c:	ca26                	sw	s1,20(sp)
1c00ed8e:	c84a                	sw	s2,16(sp)
1c00ed90:	c64e                	sw	s3,12(sp)
1c00ed92:	ce06                	sw	ra,28(sp)
1c00ed94:	89aa                	mv	s3,a0
1c00ed96:	892e                	mv	s2,a1
1c00ed98:	84b2                	mv	s1,a2
1c00ed9a:	4401                	li	s0,0
1c00ed9c:	00848633          	add	a2,s1,s0
1c00eda0:	008905b3          	add	a1,s2,s0
1c00eda4:	00898533          	add	a0,s3,s0
1c00eda8:	3e15                	jal	1c00e8dc <PQCLEAN_KYBER1024_CLEAN_poly_add>
1c00edaa:	20040413          	addi	s0,s0,512
1c00edae:	80040793          	addi	a5,s0,-2048
1c00edb2:	f7ed                	bnez	a5,1c00ed9c <PQCLEAN_KYBER1024_CLEAN_polyvec_add+0x14>
1c00edb4:	40f2                	lw	ra,28(sp)
1c00edb6:	4462                	lw	s0,24(sp)
1c00edb8:	44d2                	lw	s1,20(sp)
1c00edba:	4942                	lw	s2,16(sp)
1c00edbc:	49b2                	lw	s3,12(sp)
1c00edbe:	6105                	addi	sp,sp,32
1c00edc0:	8082                	ret

1c00edc2 <PQCLEAN_KYBER1024_CLEAN_montgomery_reduce>:
1c00edc2:	777d                	lui	a4,0xfffff
1c00edc4:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00edc8:	02f507b3          	mul	a5,a0,a5
1c00edcc:	07c2                	slli	a5,a5,0x10
1c00edce:	2ff70713          	addi	a4,a4,767
1c00edd2:	87c1                	srai	a5,a5,0x10
1c00edd4:	02e787b3          	mul	a5,a5,a4
1c00edd8:	953e                	add	a0,a0,a5
1c00edda:	8541                	srai	a0,a0,0x10
1c00eddc:	0542                	slli	a0,a0,0x10
1c00edde:	8541                	srai	a0,a0,0x10
1c00ede0:	8082                	ret

1c00ede2 <PQCLEAN_KYBER1024_CLEAN_barrett_reduce>:
1c00ede2:	6795                	lui	a5,0x5
1c00ede4:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00ede8:	02f507b3          	mul	a5,a0,a5
1c00edec:	02000737          	lui	a4,0x2000
1c00edf0:	97ba                	add	a5,a5,a4
1c00edf2:	6705                	lui	a4,0x1
1c00edf4:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00edf8:	87e9                	srai	a5,a5,0x1a
1c00edfa:	02e787b3          	mul	a5,a5,a4
1c00edfe:	8d1d                	sub	a0,a0,a5
1c00ee00:	0542                	slli	a0,a0,0x10
1c00ee02:	8541                	srai	a0,a0,0x10
1c00ee04:	8082                	ret

1c00ee06 <PQCLEAN_KYBER1024_CLEAN_kyber_shake128_absorb>:
1c00ee06:	7139                	addi	sp,sp,-64
1c00ee08:	da26                	sw	s1,52(sp)
1c00ee0a:	d84a                	sw	s2,48(sp)
1c00ee0c:	84b2                	mv	s1,a2
1c00ee0e:	892a                	mv	s2,a0
1c00ee10:	02000613          	li	a2,32
1c00ee14:	0068                	addi	a0,sp,12
1c00ee16:	de06                	sw	ra,60(sp)
1c00ee18:	dc22                	sw	s0,56(sp)
1c00ee1a:	8436                	mv	s0,a3
1c00ee1c:	2e3d                	jal	1c00f15a <memcpy>
1c00ee1e:	006c                	addi	a1,sp,12
1c00ee20:	854a                	mv	a0,s2
1c00ee22:	02200613          	li	a2,34
1c00ee26:	02910623          	sb	s1,44(sp)
1c00ee2a:	028106a3          	sb	s0,45(sp)
1c00ee2e:	d05fd0ef          	jal	ra,1c00cb32 <shake128_absorb>
1c00ee32:	50f2                	lw	ra,60(sp)
1c00ee34:	5462                	lw	s0,56(sp)
1c00ee36:	54d2                	lw	s1,52(sp)
1c00ee38:	5942                	lw	s2,48(sp)
1c00ee3a:	6121                	addi	sp,sp,64
1c00ee3c:	8082                	ret

1c00ee3e <PQCLEAN_KYBER1024_CLEAN_kyber_shake256_prf>:
1c00ee3e:	7139                	addi	sp,sp,-64
1c00ee40:	87b2                	mv	a5,a2
1c00ee42:	da26                	sw	s1,52(sp)
1c00ee44:	d84a                	sw	s2,48(sp)
1c00ee46:	84aa                	mv	s1,a0
1c00ee48:	892e                	mv	s2,a1
1c00ee4a:	02000613          	li	a2,32
1c00ee4e:	85be                	mv	a1,a5
1c00ee50:	0068                	addi	a0,sp,12
1c00ee52:	de06                	sw	ra,60(sp)
1c00ee54:	dc22                	sw	s0,56(sp)
1c00ee56:	8436                	mv	s0,a3
1c00ee58:	2609                	jal	1c00f15a <memcpy>
1c00ee5a:	0070                	addi	a2,sp,12
1c00ee5c:	85ca                	mv	a1,s2
1c00ee5e:	8526                	mv	a0,s1
1c00ee60:	02100693          	li	a3,33
1c00ee64:	02810623          	sb	s0,44(sp)
1c00ee68:	f67fd0ef          	jal	ra,1c00cdce <shake256>
1c00ee6c:	50f2                	lw	ra,60(sp)
1c00ee6e:	5462                	lw	s0,56(sp)
1c00ee70:	54d2                	lw	s1,52(sp)
1c00ee72:	5942                	lw	s2,48(sp)
1c00ee74:	6121                	addi	sp,sp,64
1c00ee76:	8082                	ret

1c00ee78 <PQCLEAN_KYBER1024_CLEAN_verify>:
1c00ee78:	c645                	beqz	a2,1c00ef20 <PQCLEAN_KYBER1024_CLEAN_verify+0xa8>
1c00ee7a:	fff60793          	addi	a5,a2,-1
1c00ee7e:	4709                	li	a4,2
1c00ee80:	0af77263          	bleu	a5,a4,1c00ef24 <PQCLEAN_KYBER1024_CLEAN_verify+0xac>
1c00ee84:	00265e13          	srli	t3,a2,0x2
1c00ee88:	882e                	mv	a6,a1
1c00ee8a:	86aa                	mv	a3,a0
1c00ee8c:	4701                	li	a4,0
1c00ee8e:	4881                	li	a7,0
1c00ee90:	429c                	lw	a5,0(a3)
1c00ee92:	00082303          	lw	t1,0(a6)
1c00ee96:	0705                	addi	a4,a4,1
1c00ee98:	0067c7b3          	xor	a5,a5,t1
1c00ee9c:	0117e8b3          	or	a7,a5,a7
1c00eea0:	0811                	addi	a6,a6,4
1c00eea2:	0691                	addi	a3,a3,4
1c00eea4:	ffc766e3          	bltu	a4,t3,1c00ee90 <PQCLEAN_KYBER1024_CLEAN_verify+0x18>
1c00eea8:	0088d793          	srli	a5,a7,0x8
1c00eeac:	0117e7b3          	or	a5,a5,a7
1c00eeb0:	0108d713          	srli	a4,a7,0x10
1c00eeb4:	8fd9                	or	a5,a5,a4
1c00eeb6:	0188d893          	srli	a7,a7,0x18
1c00eeba:	0117e8b3          	or	a7,a5,a7
1c00eebe:	ffc67793          	andi	a5,a2,-4
1c00eec2:	0ff8f893          	andi	a7,a7,255
1c00eec6:	04f60a63          	beq	a2,a5,1c00ef1a <PQCLEAN_KYBER1024_CLEAN_verify+0xa2>
1c00eeca:	00f58733          	add	a4,a1,a5
1c00eece:	00f506b3          	add	a3,a0,a5
1c00eed2:	00074803          	lbu	a6,0(a4)
1c00eed6:	0006c683          	lbu	a3,0(a3)
1c00eeda:	00178713          	addi	a4,a5,1
1c00eede:	0106c6b3          	xor	a3,a3,a6
1c00eee2:	00d8e8b3          	or	a7,a7,a3
1c00eee6:	02c77a63          	bleu	a2,a4,1c00ef1a <PQCLEAN_KYBER1024_CLEAN_verify+0xa2>
1c00eeea:	00e506b3          	add	a3,a0,a4
1c00eeee:	972e                	add	a4,a4,a1
1c00eef0:	0006c683          	lbu	a3,0(a3)
1c00eef4:	00074703          	lbu	a4,0(a4)
1c00eef8:	0789                	addi	a5,a5,2
1c00eefa:	8f35                	xor	a4,a4,a3
1c00eefc:	00e8e8b3          	or	a7,a7,a4
1c00ef00:	0ff8f893          	andi	a7,a7,255
1c00ef04:	00c7fb63          	bleu	a2,a5,1c00ef1a <PQCLEAN_KYBER1024_CLEAN_verify+0xa2>
1c00ef08:	95be                	add	a1,a1,a5
1c00ef0a:	97aa                	add	a5,a5,a0
1c00ef0c:	0005c703          	lbu	a4,0(a1)
1c00ef10:	0007c783          	lbu	a5,0(a5)
1c00ef14:	8fb9                	xor	a5,a5,a4
1c00ef16:	00f8e8b3          	or	a7,a7,a5
1c00ef1a:	01103533          	snez	a0,a7
1c00ef1e:	8082                	ret
1c00ef20:	4501                	li	a0,0
1c00ef22:	8082                	ret
1c00ef24:	4881                	li	a7,0
1c00ef26:	4781                	li	a5,0
1c00ef28:	b74d                	j	1c00eeca <PQCLEAN_KYBER1024_CLEAN_verify+0x52>

1c00ef2a <PQCLEAN_KYBER1024_CLEAN_cmov>:
1c00ef2a:	40d00833          	neg	a6,a3
1c00ef2e:	0ff87813          	andi	a6,a6,255
1c00ef32:	1c060463          	beqz	a2,1c00f0fa <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00ef36:	00458793          	addi	a5,a1,4
1c00ef3a:	00450693          	addi	a3,a0,4
1c00ef3e:	00f537b3          	sltu	a5,a0,a5
1c00ef42:	00d5b6b3          	sltu	a3,a1,a3
1c00ef46:	0017c793          	xori	a5,a5,1
1c00ef4a:	0016c693          	xori	a3,a3,1
1c00ef4e:	873e                	mv	a4,a5
1c00ef50:	87b6                	mv	a5,a3
1c00ef52:	8fd9                	or	a5,a5,a4
1c00ef54:	0ff7f793          	andi	a5,a5,255
1c00ef58:	1a078263          	beqz	a5,1c00f0fc <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d2>
1c00ef5c:	00663793          	sltiu	a5,a2,6
1c00ef60:	0017c793          	xori	a5,a5,1
1c00ef64:	0ff7f793          	andi	a5,a5,255
1c00ef68:	18078a63          	beqz	a5,1c00f0fc <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d2>
1c00ef6c:	40a00733          	neg	a4,a0
1c00ef70:	8b0d                	andi	a4,a4,3
1c00ef72:	fff60793          	addi	a5,a2,-1
1c00ef76:	00370693          	addi	a3,a4,3
1c00ef7a:	1ad7e163          	bltu	a5,a3,1c00f11c <PQCLEAN_KYBER1024_CLEAN_cmov+0x1f2>
1c00ef7e:	4e81                	li	t4,0
1c00ef80:	c739                	beqz	a4,1c00efce <PQCLEAN_KYBER1024_CLEAN_cmov+0xa4>
1c00ef82:	00054683          	lbu	a3,0(a0)
1c00ef86:	0005c783          	lbu	a5,0(a1)
1c00ef8a:	4e85                	li	t4,1
1c00ef8c:	8fb5                	xor	a5,a5,a3
1c00ef8e:	00f877b3          	and	a5,a6,a5
1c00ef92:	8fb5                	xor	a5,a5,a3
1c00ef94:	00f50023          	sb	a5,0(a0)
1c00ef98:	03d70b63          	beq	a4,t4,1c00efce <PQCLEAN_KYBER1024_CLEAN_cmov+0xa4>
1c00ef9c:	00154683          	lbu	a3,1(a0)
1c00efa0:	0015c783          	lbu	a5,1(a1)
1c00efa4:	488d                	li	a7,3
1c00efa6:	8fb5                	xor	a5,a5,a3
1c00efa8:	00f877b3          	and	a5,a6,a5
1c00efac:	8fb5                	xor	a5,a5,a3
1c00efae:	00f500a3          	sb	a5,1(a0)
1c00efb2:	4e89                	li	t4,2
1c00efb4:	01171d63          	bne	a4,a7,1c00efce <PQCLEAN_KYBER1024_CLEAN_cmov+0xa4>
1c00efb8:	00254683          	lbu	a3,2(a0)
1c00efbc:	0025c783          	lbu	a5,2(a1)
1c00efc0:	4e8d                	li	t4,3
1c00efc2:	8fb5                	xor	a5,a5,a3
1c00efc4:	00f877b3          	and	a5,a6,a5
1c00efc8:	8fb5                	xor	a5,a5,a3
1c00efca:	00f50123          	sb	a5,2(a0)
1c00efce:	00881693          	slli	a3,a6,0x8
1c00efd2:	00d866b3          	or	a3,a6,a3
1c00efd6:	01081793          	slli	a5,a6,0x10
1c00efda:	40e602b3          	sub	t0,a2,a4
1c00efde:	8fd5                	or	a5,a5,a3
1c00efe0:	01881f13          	slli	t5,a6,0x18
1c00efe4:	00e506b3          	add	a3,a0,a4
1c00efe8:	0022df93          	srli	t6,t0,0x2
1c00efec:	01e7ef33          	or	t5,a5,t5
1c00eff0:	972e                	add	a4,a4,a1
1c00eff2:	8336                	mv	t1,a3
1c00eff4:	4881                	li	a7,0
1c00eff6:	0006ae03          	lw	t3,0(a3)
1c00effa:	431c                	lw	a5,0(a4)
1c00effc:	0885                	addi	a7,a7,1
1c00effe:	00fe47b3          	xor	a5,t3,a5
1c00f002:	01e7f7b3          	and	a5,a5,t5
1c00f006:	01c7c7b3          	xor	a5,a5,t3
1c00f00a:	00f32023          	sw	a5,0(t1)
1c00f00e:	0691                	addi	a3,a3,4
1c00f010:	0711                	addi	a4,a4,4
1c00f012:	0311                	addi	t1,t1,4
1c00f014:	fff8e1e3          	bltu	a7,t6,1c00eff6 <PQCLEAN_KYBER1024_CLEAN_cmov+0xcc>
1c00f018:	ffc2f793          	andi	a5,t0,-4
1c00f01c:	9ebe                	add	t4,t4,a5
1c00f01e:	0cf28e63          	beq	t0,a5,1c00f0fa <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00f022:	01d508b3          	add	a7,a0,t4
1c00f026:	01d587b3          	add	a5,a1,t4
1c00f02a:	0008c683          	lbu	a3,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00f02e:	0007c703          	lbu	a4,0(a5)
1c00f032:	001e8793          	addi	a5,t4,1
1c00f036:	8f35                	xor	a4,a4,a3
1c00f038:	00e87733          	and	a4,a6,a4
1c00f03c:	8f35                	xor	a4,a4,a3
1c00f03e:	00e88023          	sb	a4,0(a7)
1c00f042:	0ac7fc63          	bleu	a2,a5,1c00f0fa <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00f046:	00f508b3          	add	a7,a0,a5
1c00f04a:	00f58733          	add	a4,a1,a5
1c00f04e:	0008c303          	lbu	t1,0(a7)
1c00f052:	00074703          	lbu	a4,0(a4)
1c00f056:	00178693          	addi	a3,a5,1
1c00f05a:	00e34733          	xor	a4,t1,a4
1c00f05e:	00e87733          	and	a4,a6,a4
1c00f062:	00e34733          	xor	a4,t1,a4
1c00f066:	00e88023          	sb	a4,0(a7)
1c00f06a:	08c6f863          	bleu	a2,a3,1c00f0fa <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00f06e:	00d50333          	add	t1,a0,a3
1c00f072:	96ae                	add	a3,a3,a1
1c00f074:	00034883          	lbu	a7,0(t1)
1c00f078:	0006c703          	lbu	a4,0(a3)
1c00f07c:	00278693          	addi	a3,a5,2
1c00f080:	00e8c733          	xor	a4,a7,a4
1c00f084:	00e87733          	and	a4,a6,a4
1c00f088:	00e8c733          	xor	a4,a7,a4
1c00f08c:	00e30023          	sb	a4,0(t1)
1c00f090:	06c6f563          	bleu	a2,a3,1c00f0fa <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00f094:	00d50333          	add	t1,a0,a3
1c00f098:	96ae                	add	a3,a3,a1
1c00f09a:	00034883          	lbu	a7,0(t1)
1c00f09e:	0006c703          	lbu	a4,0(a3)
1c00f0a2:	00378693          	addi	a3,a5,3
1c00f0a6:	00e8c733          	xor	a4,a7,a4
1c00f0aa:	00e87733          	and	a4,a6,a4
1c00f0ae:	00e8c733          	xor	a4,a7,a4
1c00f0b2:	00e30023          	sb	a4,0(t1)
1c00f0b6:	04c6f263          	bleu	a2,a3,1c00f0fa <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00f0ba:	00d50333          	add	t1,a0,a3
1c00f0be:	96ae                	add	a3,a3,a1
1c00f0c0:	00034883          	lbu	a7,0(t1)
1c00f0c4:	0006c703          	lbu	a4,0(a3)
1c00f0c8:	0791                	addi	a5,a5,4
1c00f0ca:	00e8c733          	xor	a4,a7,a4
1c00f0ce:	00e87733          	and	a4,a6,a4
1c00f0d2:	00e8c733          	xor	a4,a7,a4
1c00f0d6:	00e30023          	sb	a4,0(t1)
1c00f0da:	02c7f063          	bleu	a2,a5,1c00f0fa <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d0>
1c00f0de:	953e                	add	a0,a0,a5
1c00f0e0:	97ae                	add	a5,a5,a1
1c00f0e2:	00054703          	lbu	a4,0(a0)
1c00f0e6:	0007c783          	lbu	a5,0(a5)
1c00f0ea:	8fb9                	xor	a5,a5,a4
1c00f0ec:	00f87833          	and	a6,a6,a5
1c00f0f0:	01074833          	xor	a6,a4,a6
1c00f0f4:	01050023          	sb	a6,0(a0)
1c00f0f8:	8082                	ret
1c00f0fa:	8082                	ret
1c00f0fc:	962a                	add	a2,a2,a0
1c00f0fe:	00054703          	lbu	a4,0(a0)
1c00f102:	0005c783          	lbu	a5,0(a1)
1c00f106:	0505                	addi	a0,a0,1
1c00f108:	8fb9                	xor	a5,a5,a4
1c00f10a:	00f877b3          	and	a5,a6,a5
1c00f10e:	8fb9                	xor	a5,a5,a4
1c00f110:	fef50fa3          	sb	a5,-1(a0)
1c00f114:	0585                	addi	a1,a1,1
1c00f116:	fec514e3          	bne	a0,a2,1c00f0fe <PQCLEAN_KYBER1024_CLEAN_cmov+0x1d4>
1c00f11a:	8082                	ret
1c00f11c:	00054683          	lbu	a3,0(a0)
1c00f120:	0005c703          	lbu	a4,0(a1)
1c00f124:	4785                	li	a5,1
1c00f126:	8f35                	xor	a4,a4,a3
1c00f128:	00e87733          	and	a4,a6,a4
1c00f12c:	8f35                	xor	a4,a4,a3
1c00f12e:	00e50023          	sb	a4,0(a0)
1c00f132:	bf11                	j	1c00f046 <PQCLEAN_KYBER1024_CLEAN_cmov+0x11c>

1c00f134 <pos_wait_forever>:
1c00f134:	f14027f3          	csrr	a5,mhartid
1c00f138:	8795                	srai	a5,a5,0x5
1c00f13a:	03f7f793          	andi	a5,a5,63
1c00f13e:	477d                	li	a4,31
1c00f140:	00e78363          	beq	a5,a4,1c00f146 <pos_wait_forever+0x12>
1c00f144:	a001                	j	1c00f144 <pos_wait_forever+0x10>
1c00f146:	1a10a7b7          	lui	a5,0x1a10a
1c00f14a:	577d                	li	a4,-1
1c00f14c:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00f150:	10500073          	wfi
1c00f154:	10500073          	wfi
1c00f158:	bfe5                	j	1c00f150 <pos_wait_forever+0x1c>

1c00f15a <memcpy>:
1c00f15a:	00b567b3          	or	a5,a0,a1
1c00f15e:	8b8d                	andi	a5,a5,3
1c00f160:	10078f63          	beqz	a5,1c00f27e <memcpy+0x124>
1c00f164:	14060063          	beqz	a2,1c00f2a4 <memcpy+0x14a>
1c00f168:	00458793          	addi	a5,a1,4
1c00f16c:	00450693          	addi	a3,a0,4
1c00f170:	00f537b3          	sltu	a5,a0,a5
1c00f174:	00d5b6b3          	sltu	a3,a1,a3
1c00f178:	0017c793          	xori	a5,a5,1
1c00f17c:	0016c693          	xori	a3,a3,1
1c00f180:	873e                	mv	a4,a5
1c00f182:	87b6                	mv	a5,a3
1c00f184:	8fd9                	or	a5,a5,a4
1c00f186:	0ff7f793          	andi	a5,a5,255
1c00f18a:	cff9                	beqz	a5,1c00f268 <memcpy+0x10e>
1c00f18c:	00863793          	sltiu	a5,a2,8
1c00f190:	0017c793          	xori	a5,a5,1
1c00f194:	0ff7f793          	andi	a5,a5,255
1c00f198:	cbe1                	beqz	a5,1c00f268 <memcpy+0x10e>
1c00f19a:	40b007b3          	neg	a5,a1
1c00f19e:	8b8d                	andi	a5,a5,3
1c00f1a0:	fff60313          	addi	t1,a2,-1
1c00f1a4:	cfe5                	beqz	a5,1c00f29c <memcpy+0x142>
1c00f1a6:	0005c683          	lbu	a3,0(a1)
1c00f1aa:	4705                	li	a4,1
1c00f1ac:	00d50023          	sb	a3,0(a0)
1c00f1b0:	00158893          	addi	a7,a1,1
1c00f1b4:	00150813          	addi	a6,a0,1
1c00f1b8:	02e78963          	beq	a5,a4,1c00f1ea <memcpy+0x90>
1c00f1bc:	0015c683          	lbu	a3,1(a1)
1c00f1c0:	470d                	li	a4,3
1c00f1c2:	00d500a3          	sb	a3,1(a0)
1c00f1c6:	00258893          	addi	a7,a1,2
1c00f1ca:	00250813          	addi	a6,a0,2
1c00f1ce:	ffe60313          	addi	t1,a2,-2
1c00f1d2:	00e79c63          	bne	a5,a4,1c00f1ea <memcpy+0x90>
1c00f1d6:	0025c703          	lbu	a4,2(a1)
1c00f1da:	00358893          	addi	a7,a1,3
1c00f1de:	00350813          	addi	a6,a0,3
1c00f1e2:	00e50123          	sb	a4,2(a0)
1c00f1e6:	ffd60313          	addi	t1,a2,-3
1c00f1ea:	8e1d                	sub	a2,a2,a5
1c00f1ec:	95be                	add	a1,a1,a5
1c00f1ee:	00265e13          	srli	t3,a2,0x2
1c00f1f2:	97aa                	add	a5,a5,a0
1c00f1f4:	4701                	li	a4,0
1c00f1f6:	4194                	lw	a3,0(a1)
1c00f1f8:	0705                	addi	a4,a4,1
1c00f1fa:	c394                	sw	a3,0(a5)
1c00f1fc:	0591                	addi	a1,a1,4
1c00f1fe:	0791                	addi	a5,a5,4
1c00f200:	ffc76be3          	bltu	a4,t3,1c00f1f6 <memcpy+0x9c>
1c00f204:	ffc67593          	andi	a1,a2,-4
1c00f208:	40b306b3          	sub	a3,t1,a1
1c00f20c:	00b807b3          	add	a5,a6,a1
1c00f210:	00b88733          	add	a4,a7,a1
1c00f214:	06b60463          	beq	a2,a1,1c00f27c <memcpy+0x122>
1c00f218:	00074583          	lbu	a1,0(a4)
1c00f21c:	fff68613          	addi	a2,a3,-1
1c00f220:	00b78023          	sb	a1,0(a5)
1c00f224:	ce21                	beqz	a2,1c00f27c <memcpy+0x122>
1c00f226:	00174583          	lbu	a1,1(a4)
1c00f22a:	ffe68613          	addi	a2,a3,-2
1c00f22e:	00b780a3          	sb	a1,1(a5)
1c00f232:	c629                	beqz	a2,1c00f27c <memcpy+0x122>
1c00f234:	00274583          	lbu	a1,2(a4)
1c00f238:	ffd68613          	addi	a2,a3,-3
1c00f23c:	00b78123          	sb	a1,2(a5)
1c00f240:	ce15                	beqz	a2,1c00f27c <memcpy+0x122>
1c00f242:	00374583          	lbu	a1,3(a4)
1c00f246:	ffc68613          	addi	a2,a3,-4
1c00f24a:	00b781a3          	sb	a1,3(a5)
1c00f24e:	c61d                	beqz	a2,1c00f27c <memcpy+0x122>
1c00f250:	00474583          	lbu	a1,4(a4)
1c00f254:	4615                	li	a2,5
1c00f256:	00b78223          	sb	a1,4(a5)
1c00f25a:	02c68163          	beq	a3,a2,1c00f27c <memcpy+0x122>
1c00f25e:	00574703          	lbu	a4,5(a4)
1c00f262:	00e782a3          	sb	a4,5(a5)
1c00f266:	8082                	ret
1c00f268:	962e                	add	a2,a2,a1
1c00f26a:	87aa                	mv	a5,a0
1c00f26c:	0585                	addi	a1,a1,1
1c00f26e:	fff5c703          	lbu	a4,-1(a1)
1c00f272:	0785                	addi	a5,a5,1
1c00f274:	fee78fa3          	sb	a4,-1(a5)
1c00f278:	fec59ae3          	bne	a1,a2,1c00f26c <memcpy+0x112>
1c00f27c:	8082                	ret
1c00f27e:	00367793          	andi	a5,a2,3
1c00f282:	ee0793e3          	bnez	a5,1c00f168 <memcpy+0xe>
1c00f286:	da7d                	beqz	a2,1c00f27c <memcpy+0x122>
1c00f288:	87aa                	mv	a5,a0
1c00f28a:	0591                	addi	a1,a1,4
1c00f28c:	ffc5a703          	lw	a4,-4(a1)
1c00f290:	0791                	addi	a5,a5,4
1c00f292:	fee7ae23          	sw	a4,-4(a5)
1c00f296:	1671                	addi	a2,a2,-4
1c00f298:	fa6d                	bnez	a2,1c00f28a <memcpy+0x130>
1c00f29a:	8082                	ret
1c00f29c:	88ae                	mv	a7,a1
1c00f29e:	882a                	mv	a6,a0
1c00f2a0:	8332                	mv	t1,a2
1c00f2a2:	b7a1                	j	1c00f1ea <memcpy+0x90>
1c00f2a4:	8082                	ret

1c00f2a6 <puts>:
1c00f2a6:	00054783          	lbu	a5,0(a0)
1c00f2aa:	c78d                	beqz	a5,1c00f2d4 <puts+0x2e>
1c00f2ac:	f14026f3          	csrr	a3,mhartid
1c00f2b0:	00369713          	slli	a4,a3,0x3
1c00f2b4:	1a10f637          	lui	a2,0x1a10f
1c00f2b8:	0ff77713          	andi	a4,a4,255
1c00f2bc:	9732                	add	a4,a4,a2
1c00f2be:	6609                	lui	a2,0x2
1c00f2c0:	068a                	slli	a3,a3,0x2
1c00f2c2:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00f2c6:	8ef1                	and	a3,a3,a2
1c00f2c8:	9736                	add	a4,a4,a3
1c00f2ca:	c31c                	sw	a5,0(a4)
1c00f2cc:	0505                	addi	a0,a0,1
1c00f2ce:	00054783          	lbu	a5,0(a0)
1c00f2d2:	ffe5                	bnez	a5,1c00f2ca <puts+0x24>
1c00f2d4:	f1402773          	csrr	a4,mhartid
1c00f2d8:	00371793          	slli	a5,a4,0x3
1c00f2dc:	1a10f6b7          	lui	a3,0x1a10f
1c00f2e0:	0ff7f793          	andi	a5,a5,255
1c00f2e4:	97b6                	add	a5,a5,a3
1c00f2e6:	6689                	lui	a3,0x2
1c00f2e8:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00f2ec:	070a                	slli	a4,a4,0x2
1c00f2ee:	8f75                	and	a4,a4,a3
1c00f2f0:	97ba                	add	a5,a5,a4
1c00f2f2:	4729                	li	a4,10
1c00f2f4:	c398                	sw	a4,0(a5)
1c00f2f6:	4501                	li	a0,0
1c00f2f8:	8082                	ret

1c00f2fa <exit>:
1c00f2fa:	800007b7          	lui	a5,0x80000
1c00f2fe:	1141                	addi	sp,sp,-16
1c00f300:	8d5d                	or	a0,a0,a5
1c00f302:	c606                	sw	ra,12(sp)
1c00f304:	1a1047b7          	lui	a5,0x1a104
1c00f308:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00f30c:	3525                	jal	1c00f134 <pos_wait_forever>

1c00f30e <pos_io_start>:
1c00f30e:	4501                	li	a0,0
1c00f310:	8082                	ret

1c00f312 <pos_io_stop>:
1c00f312:	4501                	li	a0,0
1c00f314:	8082                	ret

1c00f316 <pos_init_start>:
1c00f316:	1141                	addi	sp,sp,-16
1c00f318:	c422                	sw	s0,8(sp)
1c00f31a:	1c000437          	lui	s0,0x1c000
1c00f31e:	c606                	sw	ra,12(sp)
1c00f320:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00f324:	bd6fd0ef          	jal	ra,1c00c6fa <pos_soc_init>
1c00f328:	2265                	jal	1c00f4d0 <pos_irq_init>
1c00f32a:	2ad1                	jal	1c00f4fe <pos_soc_event_init>
1c00f32c:	2a21                	jal	1c00f444 <pos_allocs_init>
1c00f32e:	405c                	lw	a5,4(s0)
1c00f330:	c791                	beqz	a5,1c00f33c <pos_init_start+0x26>
1c00f332:	0411                	addi	s0,s0,4
1c00f334:	0411                	addi	s0,s0,4
1c00f336:	9782                	jalr	a5
1c00f338:	401c                	lw	a5,0(s0)
1c00f33a:	ffed                	bnez	a5,1c00f334 <pos_init_start+0x1e>
1c00f33c:	3fc9                	jal	1c00f30e <pos_io_start>
1c00f33e:	300467f3          	csrrsi	a5,mstatus,8
1c00f342:	40b2                	lw	ra,12(sp)
1c00f344:	4422                	lw	s0,8(sp)
1c00f346:	0141                	addi	sp,sp,16
1c00f348:	8082                	ret

1c00f34a <pos_init_stop>:
1c00f34a:	1141                	addi	sp,sp,-16
1c00f34c:	c422                	sw	s0,8(sp)
1c00f34e:	1c000437          	lui	s0,0x1c000
1c00f352:	c606                	sw	ra,12(sp)
1c00f354:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00f358:	3f6d                	jal	1c00f312 <pos_io_stop>
1c00f35a:	405c                	lw	a5,4(s0)
1c00f35c:	c791                	beqz	a5,1c00f368 <pos_init_stop+0x1e>
1c00f35e:	0411                	addi	s0,s0,4
1c00f360:	0411                	addi	s0,s0,4
1c00f362:	9782                	jalr	a5
1c00f364:	401c                	lw	a5,0(s0)
1c00f366:	ffed                	bnez	a5,1c00f360 <pos_init_stop+0x16>
1c00f368:	40b2                	lw	ra,12(sp)
1c00f36a:	4422                	lw	s0,8(sp)
1c00f36c:	0141                	addi	sp,sp,16
1c00f36e:	8082                	ret

1c00f370 <pos_alloc_init>:
1c00f370:	00758793          	addi	a5,a1,7
1c00f374:	9be1                	andi	a5,a5,-8
1c00f376:	40b785b3          	sub	a1,a5,a1
1c00f37a:	c11c                	sw	a5,0(a0)
1c00f37c:	8e0d                	sub	a2,a2,a1
1c00f37e:	00c05663          	blez	a2,1c00f38a <pos_alloc_init+0x1a>
1c00f382:	9a61                	andi	a2,a2,-8
1c00f384:	c390                	sw	a2,0(a5)
1c00f386:	0007a223          	sw	zero,4(a5)
1c00f38a:	8082                	ret

1c00f38c <pos_alloc>:
1c00f38c:	4110                	lw	a2,0(a0)
1c00f38e:	059d                	addi	a1,a1,7
1c00f390:	99e1                	andi	a1,a1,-8
1c00f392:	ca31                	beqz	a2,1c00f3e6 <pos_alloc+0x5a>
1c00f394:	4218                	lw	a4,0(a2)
1c00f396:	425c                	lw	a5,4(a2)
1c00f398:	02b75963          	ble	a1,a4,1c00f3ca <pos_alloc+0x3e>
1c00f39c:	cb81                	beqz	a5,1c00f3ac <pos_alloc+0x20>
1c00f39e:	4398                	lw	a4,0(a5)
1c00f3a0:	43d4                	lw	a3,4(a5)
1c00f3a2:	00b75763          	ble	a1,a4,1c00f3b0 <pos_alloc+0x24>
1c00f3a6:	863e                	mv	a2,a5
1c00f3a8:	87b6                	mv	a5,a3
1c00f3aa:	fbf5                	bnez	a5,1c00f39e <pos_alloc+0x12>
1c00f3ac:	853e                	mv	a0,a5
1c00f3ae:	8082                	ret
1c00f3b0:	00b70a63          	beq	a4,a1,1c00f3c4 <pos_alloc+0x38>
1c00f3b4:	00b78533          	add	a0,a5,a1
1c00f3b8:	8f0d                	sub	a4,a4,a1
1c00f3ba:	c118                	sw	a4,0(a0)
1c00f3bc:	c154                	sw	a3,4(a0)
1c00f3be:	c248                	sw	a0,4(a2)
1c00f3c0:	853e                	mv	a0,a5
1c00f3c2:	8082                	ret
1c00f3c4:	c254                	sw	a3,4(a2)
1c00f3c6:	853e                	mv	a0,a5
1c00f3c8:	8082                	ret
1c00f3ca:	00e58b63          	beq	a1,a4,1c00f3e0 <pos_alloc+0x54>
1c00f3ce:	00b606b3          	add	a3,a2,a1
1c00f3d2:	8f0d                	sub	a4,a4,a1
1c00f3d4:	c2dc                	sw	a5,4(a3)
1c00f3d6:	c298                	sw	a4,0(a3)
1c00f3d8:	87b2                	mv	a5,a2
1c00f3da:	c114                	sw	a3,0(a0)
1c00f3dc:	853e                	mv	a0,a5
1c00f3de:	8082                	ret
1c00f3e0:	c11c                	sw	a5,0(a0)
1c00f3e2:	87b2                	mv	a5,a2
1c00f3e4:	b7e1                	j	1c00f3ac <pos_alloc+0x20>
1c00f3e6:	4781                	li	a5,0
1c00f3e8:	b7d1                	j	1c00f3ac <pos_alloc+0x20>

1c00f3ea <pos_free>:
1c00f3ea:	4118                	lw	a4,0(a0)
1c00f3ec:	061d                	addi	a2,a2,7
1c00f3ee:	9a61                	andi	a2,a2,-8
1c00f3f0:	c729                	beqz	a4,1c00f43a <pos_free+0x50>
1c00f3f2:	00b76663          	bltu	a4,a1,1c00f3fe <pos_free+0x14>
1c00f3f6:	a0a1                	j	1c00f43e <pos_free+0x54>
1c00f3f8:	00b7f563          	bleu	a1,a5,1c00f402 <pos_free+0x18>
1c00f3fc:	873e                	mv	a4,a5
1c00f3fe:	435c                	lw	a5,4(a4)
1c00f400:	ffe5                	bnez	a5,1c00f3f8 <pos_free+0xe>
1c00f402:	00c586b3          	add	a3,a1,a2
1c00f406:	02d78463          	beq	a5,a3,1c00f42e <pos_free+0x44>
1c00f40a:	c190                	sw	a2,0(a1)
1c00f40c:	c1dc                	sw	a5,4(a1)
1c00f40e:	cf11                	beqz	a4,1c00f42a <pos_free+0x40>
1c00f410:	431c                	lw	a5,0(a4)
1c00f412:	00f706b3          	add	a3,a4,a5
1c00f416:	00d58463          	beq	a1,a3,1c00f41e <pos_free+0x34>
1c00f41a:	c34c                	sw	a1,4(a4)
1c00f41c:	8082                	ret
1c00f41e:	4194                	lw	a3,0(a1)
1c00f420:	41d0                	lw	a2,4(a1)
1c00f422:	97b6                	add	a5,a5,a3
1c00f424:	c31c                	sw	a5,0(a4)
1c00f426:	c350                	sw	a2,4(a4)
1c00f428:	8082                	ret
1c00f42a:	c10c                	sw	a1,0(a0)
1c00f42c:	8082                	ret
1c00f42e:	4394                	lw	a3,0(a5)
1c00f430:	43dc                	lw	a5,4(a5)
1c00f432:	9636                	add	a2,a2,a3
1c00f434:	c190                	sw	a2,0(a1)
1c00f436:	c1dc                	sw	a5,4(a1)
1c00f438:	bfd9                	j	1c00f40e <pos_free+0x24>
1c00f43a:	4781                	li	a5,0
1c00f43c:	b7d9                	j	1c00f402 <pos_free+0x18>
1c00f43e:	87ba                	mv	a5,a4
1c00f440:	4701                	li	a4,0
1c00f442:	b7c1                	j	1c00f402 <pos_free+0x18>

1c00f444 <pos_allocs_init>:
1c00f444:	1141                	addi	sp,sp,-16
1c00f446:	1c0065b7          	lui	a1,0x1c006
1c00f44a:	c606                	sw	ra,12(sp)
1c00f44c:	25458793          	addi	a5,a1,596 # 1c006254 <__l2_priv0_end>
1c00f450:	1c008637          	lui	a2,0x1c008
1c00f454:	04c7cc63          	blt	a5,a2,1c00f4ac <pos_allocs_init+0x68>
1c00f458:	4581                	li	a1,0
1c00f45a:	4601                	li	a2,0
1c00f45c:	1c006537          	lui	a0,0x1c006
1c00f460:	24850513          	addi	a0,a0,584 # 1c006248 <pos_alloc_l2>
1c00f464:	3731                	jal	1c00f370 <pos_alloc_init>
1c00f466:	1c00f5b7          	lui	a1,0x1c00f
1c00f46a:	51858793          	addi	a5,a1,1304 # 1c00f518 <__l2_priv1_end>
1c00f46e:	1c010637          	lui	a2,0x1c010
1c00f472:	02c7c963          	blt	a5,a2,1c00f4a4 <pos_allocs_init+0x60>
1c00f476:	4581                	li	a1,0
1c00f478:	4601                	li	a2,0
1c00f47a:	1c006537          	lui	a0,0x1c006
1c00f47e:	24c50513          	addi	a0,a0,588 # 1c00624c <pos_alloc_l2+0x4>
1c00f482:	35fd                	jal	1c00f370 <pos_alloc_init>
1c00f484:	1c0105b7          	lui	a1,0x1c010
1c00f488:	00058793          	mv	a5,a1
1c00f48c:	40b2                	lw	ra,12(sp)
1c00f48e:	1c080637          	lui	a2,0x1c080
1c00f492:	1c006537          	lui	a0,0x1c006
1c00f496:	8e1d                	sub	a2,a2,a5
1c00f498:	00058593          	mv	a1,a1
1c00f49c:	25050513          	addi	a0,a0,592 # 1c006250 <pos_alloc_l2+0x8>
1c00f4a0:	0141                	addi	sp,sp,16
1c00f4a2:	b5f9                	j	1c00f370 <pos_alloc_init>
1c00f4a4:	8e1d                	sub	a2,a2,a5
1c00f4a6:	51858593          	addi	a1,a1,1304 # 1c010518 <__l2_shared_end+0x518>
1c00f4aa:	bfc1                	j	1c00f47a <pos_allocs_init+0x36>
1c00f4ac:	8e1d                	sub	a2,a2,a5
1c00f4ae:	25458593          	addi	a1,a1,596
1c00f4b2:	b76d                	j	1c00f45c <pos_allocs_init+0x18>

1c00f4b4 <pi_l2_malloc>:
1c00f4b4:	85aa                	mv	a1,a0
1c00f4b6:	1c006537          	lui	a0,0x1c006
1c00f4ba:	24850513          	addi	a0,a0,584 # 1c006248 <pos_alloc_l2>
1c00f4be:	b5f9                	j	1c00f38c <pos_alloc>

1c00f4c0 <pi_l2_free>:
1c00f4c0:	862e                	mv	a2,a1
1c00f4c2:	85aa                	mv	a1,a0
1c00f4c4:	1c006537          	lui	a0,0x1c006
1c00f4c8:	24850513          	addi	a0,a0,584 # 1c006248 <pos_alloc_l2>
1c00f4cc:	bf39                	j	1c00f3ea <pos_free>

1c00f4ce <__rt_handle_illegal_instr>:
1c00f4ce:	8082                	ret

1c00f4d0 <pos_irq_init>:
1c00f4d0:	1a10a737          	lui	a4,0x1a10a
1c00f4d4:	f14027f3          	csrr	a5,mhartid
1c00f4d8:	56fd                	li	a3,-1
1c00f4da:	8795                	srai	a5,a5,0x5
1c00f4dc:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00f4e0:	03f7f793          	andi	a5,a5,63
1c00f4e4:	477d                	li	a4,31
1c00f4e6:	00e78363          	beq	a5,a4,1c00f4ec <pos_irq_init+0x1c>
1c00f4ea:	8082                	ret
1c00f4ec:	1c0087b7          	lui	a5,0x1c008
1c00f4f0:	00078793          	mv	a5,a5
1c00f4f4:	0017e793          	ori	a5,a5,1
1c00f4f8:	30579073          	csrw	mtvec,a5
1c00f4fc:	8082                	ret

1c00f4fe <pos_soc_event_init>:
1c00f4fe:	1a1067b7          	lui	a5,0x1a106
1c00f502:	577d                	li	a4,-1
1c00f504:	c3d8                	sw	a4,4(a5)
1c00f506:	c798                	sw	a4,8(a5)
1c00f508:	c7d8                	sw	a4,12(a5)
1c00f50a:	cb98                	sw	a4,16(a5)
1c00f50c:	cbd8                	sw	a4,20(a5)
1c00f50e:	cf98                	sw	a4,24(a5)
1c00f510:	cfd8                	sw	a4,28(a5)
1c00f512:	d398                	sw	a4,32(a5)
1c00f514:	8082                	ret

1c00f516 <_endtext>:
	...
