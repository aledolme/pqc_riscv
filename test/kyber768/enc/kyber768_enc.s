riscv32-unknown-elf-objdump  -d /home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber768/enc/build/enc/enc

/home/phd-students/alessandra.dolmeta/Desktop/pqc_riscv/test/kyber768/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	2a50406f          	j	1c00caa4 <__rt_handle_illegal_instr>
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
1c008084:	2210406f          	j	1c00caa4 <__rt_handle_illegal_instr>

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
1c0080c4:	1a028293          	addi	t0,t0,416 # 1c004260 <stack>
1c0080c8:	ffffc317          	auipc	t1,0xffffc
1c0080cc:	21030313          	addi	t1,t1,528 # 1c0042d8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffc117          	auipc	sp,0xffffc
1c0080de:	18610113          	addi	sp,sp,390 # 1c004260 <stack>
1c0080e2:	007040ef          	jal	ra,1c00c8e8 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	08a38393          	addi	t2,t2,138 # 1c008178 <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	023040ef          	jal	ra,1c00c91e <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	03b030ef          	jal	ra,1c00b93c <exit>

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
1c008160:	7f8030ef          	jal	ra,1c00b958 <printf>
1c008164:	ff2419e3          	bne	s0,s2,1c008156 <printbytes+0x14>
1c008168:	4422                	lw	s0,8(sp)
1c00816a:	40b2                	lw	ra,12(sp)
1c00816c:	4492                	lw	s1,4(sp)
1c00816e:	4902                	lw	s2,0(sp)
1c008170:	4529                	li	a0,10
1c008172:	0141                	addi	sp,sp,16
1c008174:	79e0306f          	j	1c00b912 <putchar>

1c008178 <main>:
1c008178:	81010113          	addi	sp,sp,-2032
1c00817c:	1e85d7b7          	lui	a5,0x1e85d
1c008180:	7e112623          	sw	ra,2028(sp)
1c008184:	7e812423          	sw	s0,2024(sp)
1c008188:	7e912223          	sw	s1,2020(sp)
1c00818c:	43878793          	addi	a5,a5,1080 # 1e85d438 <__l2_shared_end+0x284d438>
1c008190:	712d                	addi	sp,sp,-288
1c008192:	46f12023          	sw	a5,1120(sp)
1c008196:	a30d07b7          	lui	a5,0xa30d0
1c00819a:	15c78793          	addi	a5,a5,348 # a30d015c <pulp__FC+0xa30d015d>
1c00819e:	46f12223          	sw	a5,1124(sp)
1c0081a2:	bc7077b7          	lui	a5,0xbc707
1c0081a6:	49a78793          	addi	a5,a5,1178 # bc70749a <pulp__FC+0xbc70749b>
1c0081aa:	46f12423          	sw	a5,1128(sp)
1c0081ae:	6f9187b7          	lui	a5,0x6f918
1c0081b2:	07f1                	addi	a5,a5,28
1c0081b4:	46f12623          	sw	a5,1132(sp)
1c0081b8:	58bdc7b7          	lui	a5,0x58bdc
1c0081bc:	77878793          	addi	a5,a5,1912 # 58bdc778 <__l2_shared_end+0x3cbcc778>
1c0081c0:	46f12823          	sw	a5,1136(sp)
1c0081c4:	b1d3e7b7          	lui	a5,0xb1d3e
1c0081c8:	c9178793          	addi	a5,a5,-879 # b1d3dc91 <pulp__FC+0xb1d3dc92>
1c0081cc:	46f12a23          	sw	a5,1140(sp)
1c0081d0:	f0b687b7          	lui	a5,0xf0b68
1c0081d4:	4ea78793          	addi	a5,a5,1258 # f0b684ea <pulp__FC+0xf0b684eb>
1c0081d8:	46f12c23          	sw	a5,1144(sp)
1c0081dc:	b846b7b7          	lui	a5,0xb846b
1c0081e0:	35178793          	addi	a5,a5,849 # b846b351 <pulp__FC+0xb846b352>
1c0081e4:	46f12e23          	sw	a5,1148(sp)
1c0081e8:	7cb9c7b7          	lui	a5,0x7cb9c
1c0081ec:	10378793          	addi	a5,a5,259 # 7cb9c103 <__l2_shared_end+0x60b8c103>
1c0081f0:	48f12023          	sw	a5,1152(sp)
1c0081f4:	204067b7          	lui	a5,0x20406
1c0081f8:	09478793          	addi	a5,a5,148 # 20406094 <__l2_shared_end+0x43f6094>
1c0081fc:	48f12223          	sw	a5,1156(sp)
1c008200:	279b27b7          	lui	a5,0x279b2
1c008204:	7b778793          	addi	a5,a5,1975 # 279b27b7 <__l2_shared_end+0xb9a27b7>
1c008208:	48f12423          	sw	a5,1160(sp)
1c00820c:	493077b7          	lui	a5,0x49307
1c008210:	c8378793          	addi	a5,a5,-893 # 49306c83 <__l2_shared_end+0x2d2f6c83>
1c008214:	48f12623          	sw	a5,1164(sp)
1c008218:	379a17b7          	lui	a5,0x379a1
1c00821c:	bea78793          	addi	a5,a5,-1046 # 379a0bea <__l2_shared_end+0x1b990bea>
1c008220:	48f12823          	sw	a5,1168(sp)
1c008224:	750b57b7          	lui	a5,0x750b5
1c008228:	15878793          	addi	a5,a5,344 # 750b5158 <__l2_shared_end+0x590a5158>
1c00822c:	48f12a23          	sw	a5,1172(sp)
1c008230:	373267b7          	lui	a5,0x37326
1c008234:	95978793          	addi	a5,a5,-1703 # 37325959 <__l2_shared_end+0x1b315959>
1c008238:	48f12c23          	sw	a5,1176(sp)
1c00823c:	8725e7b7          	lui	a5,0x8725e
1c008240:	7ad78793          	addi	a5,a5,1965 # 8725e7ad <pulp__FC+0x8725e7ae>
1c008244:	48f12e23          	sw	a5,1180(sp)
1c008248:	b70627b7          	lui	a5,0xb7062
1c00824c:	24678793          	addi	a5,a5,582 # b7062246 <pulp__FC+0xb7062247>
1c008250:	4af12023          	sw	a5,1184(sp)
1c008254:	8465f7b7          	lui	a5,0x8465f
1c008258:	30978793          	addi	a5,a5,777 # 8465f309 <pulp__FC+0x8465f30a>
1c00825c:	4af12223          	sw	a5,1188(sp)
1c008260:	935597b7          	lui	a5,0x93559
1c008264:	68c78793          	addi	a5,a5,1676 # 9355968c <pulp__FC+0x9355968d>
1c008268:	4af12423          	sw	a5,1192(sp)
1c00826c:	6cfea7b7          	lui	a5,0x6cfea
1c008270:	52678793          	addi	a5,a5,1318 # 6cfea526 <__l2_shared_end+0x50fda526>
1c008274:	4af12623          	sw	a5,1196(sp)
1c008278:	31f557b7          	lui	a5,0x31f55
1c00827c:	c6f78793          	addi	a5,a5,-913 # 31f54c6f <__l2_shared_end+0x15f44c6f>
1c008280:	4af12823          	sw	a5,1200(sp)
1c008284:	471827b7          	lui	a5,0x47182
1c008288:	afd78793          	addi	a5,a5,-1283 # 47181afd <__l2_shared_end+0x2b171afd>
1c00828c:	4af12a23          	sw	a5,1204(sp)
1c008290:	6bf667b7          	lui	a5,0x6bf66
1c008294:	77278793          	addi	a5,a5,1906 # 6bf66772 <__l2_shared_end+0x4ff56772>
1c008298:	4af12c23          	sw	a5,1208(sp)
1c00829c:	01f257b7          	lui	a5,0x1f25
1c0082a0:	aa178793          	addi	a5,a5,-1375 # 1f24aa1 <__CTOR_LIST__-0x1a0db563>
1c0082a4:	4af12e23          	sw	a5,1212(sp)
1c0082a8:	111fc7b7          	lui	a5,0x111fc
1c0082ac:	46378793          	addi	a5,a5,1123 # 111fc463 <__CTOR_LIST__-0xae03ba1>
1c0082b0:	4cf12023          	sw	a5,1216(sp)
1c0082b4:	9519a7b7          	lui	a5,0x9519a
1c0082b8:	03878793          	addi	a5,a5,56 # 9519a038 <pulp__FC+0x9519a039>
1c0082bc:	4cf12223          	sw	a5,1220(sp)
1c0082c0:	1d2787b7          	lui	a5,0x1d278
1c0082c4:	f1478793          	addi	a5,a5,-236 # 1d277f14 <__l2_shared_end+0x1267f14>
1c0082c8:	4cf12423          	sw	a5,1224(sp)
1c0082cc:	53bec7b7          	lui	a5,0x53bec
1c0082d0:	2df78793          	addi	a5,a5,735 # 53bec2df <__l2_shared_end+0x37bdc2df>
1c0082d4:	4cf12623          	sw	a5,1228(sp)
1c0082d8:	e681b7b7          	lui	a5,0xe681b
1c0082dc:	26178793          	addi	a5,a5,609 # e681b261 <pulp__FC+0xe681b262>
1c0082e0:	4cf12823          	sw	a5,1232(sp)
1c0082e4:	0521a7b7          	lui	a5,0x521a
1c0082e8:	d0278793          	addi	a5,a5,-766 # 5219d02 <__CTOR_LIST__-0x16de6302>
1c0082ec:	4cf12a23          	sw	a5,1236(sp)
1c0082f0:	9b85b7b7          	lui	a5,0x9b85b
1c0082f4:	28478793          	addi	a5,a5,644 # 9b85b284 <pulp__FC+0x9b85b285>
1c0082f8:	4cf12c23          	sw	a5,1240(sp)
1c0082fc:	726687b7          	lui	a5,0x72668
1c008300:	37378793          	addi	a5,a5,883 # 72668373 <__l2_shared_end+0x56658373>
1c008304:	4cf12e23          	sw	a5,1244(sp)
1c008308:	bb67f7b7          	lui	a5,0xbb67f
1c00830c:	78478793          	addi	a5,a5,1924 # bb67f784 <pulp__FC+0xbb67f785>
1c008310:	4ef12023          	sw	a5,1248(sp)
1c008314:	aa2b87b7          	lui	a5,0xaa2b8
1c008318:	83278793          	addi	a5,a5,-1998 # aa2b7832 <pulp__FC+0xaa2b7833>
1c00831c:	4ef12223          	sw	a5,1252(sp)
1c008320:	da3317b7          	lui	a5,0xda331
1c008324:	9d178793          	addi	a5,a5,-1583 # da3309d1 <pulp__FC+0xda3309d2>
1c008328:	4ef12423          	sw	a5,1256(sp)
1c00832c:	a0a347b7          	lui	a5,0xa0a34
1c008330:	80178793          	addi	a5,a5,-2047 # a0a33801 <pulp__FC+0xa0a33802>
1c008334:	4ef12623          	sw	a5,1260(sp)
1c008338:	951417b7          	lui	a5,0x95141
1c00833c:	a6678793          	addi	a5,a5,-1434 # 95140a66 <pulp__FC+0x95140a67>
1c008340:	4ef12823          	sw	a5,1264(sp)
1c008344:	9c3fc7b7          	lui	a5,0x9c3fc
1c008348:	03178793          	addi	a5,a5,49 # 9c3fc031 <pulp__FC+0x9c3fc032>
1c00834c:	4ef12a23          	sw	a5,1268(sp)
1c008350:	33cc07b7          	lui	a5,0x33cc0
1c008354:	c8f78793          	addi	a5,a5,-881 # 33cbfc8f <__l2_shared_end+0x17cafc8f>
1c008358:	4ef12c23          	sw	a5,1272(sp)
1c00835c:	a7a5c7b7          	lui	a5,0xa7a5c
1c008360:	3e378793          	addi	a5,a5,995 # a7a5c3e3 <pulp__FC+0xa7a5c3e4>
1c008364:	4ef12e23          	sw	a5,1276(sp)
1c008368:	fa2157b7          	lui	a5,0xfa215
1c00836c:	e9878793          	addi	a5,a5,-360 # fa214e98 <pulp__FC+0xfa214e99>
1c008370:	50f12023          	sw	a5,1280(sp)
1c008374:	2aa777b7          	lui	a5,0x2aa77
1c008378:	ab278793          	addi	a5,a5,-1358 # 2aa76ab2 <__l2_shared_end+0xea66ab2>
1c00837c:	50f12223          	sw	a5,1284(sp)
1c008380:	2f9477b7          	lui	a5,0x2f947
1c008384:	b8a78793          	addi	a5,a5,-1142 # 2f946b8a <__l2_shared_end+0x13936b8a>
1c008388:	50f12423          	sw	a5,1288(sp)
1c00838c:	555267b7          	lui	a5,0x55526
1c008390:	e2678793          	addi	a5,a5,-474 # 55525e26 <__l2_shared_end+0x39515e26>
1c008394:	50f12623          	sw	a5,1292(sp)
1c008398:	0e80a7b7          	lui	a5,0xe80a
1c00839c:	c1a78793          	addi	a5,a5,-998 # e809c1a <__CTOR_LIST__-0xd7f63ea>
1c0083a0:	50f12823          	sw	a5,1296(sp)
1c0083a4:	5f8047b7          	lui	a5,0x5f804
1c0083a8:	45a78793          	addi	a5,a5,1114 # 5f80445a <__l2_shared_end+0x437f445a>
1c0083ac:	50f12a23          	sw	a5,1300(sp)
1c0083b0:	a04107b7          	lui	a5,0xa0410
1c0083b4:	10c78793          	addi	a5,a5,268 # a041010c <pulp__FC+0xa041010d>
1c0083b8:	50f12c23          	sw	a5,1304(sp)
1c0083bc:	332157b7          	lui	a5,0x33215
1c0083c0:	45578793          	addi	a5,a5,1109 # 33215455 <__l2_shared_end+0x17205455>
1c0083c4:	50f12e23          	sw	a5,1308(sp)
1c0083c8:	df05f7b7          	lui	a5,0xdf05f
1c0083cc:	18778793          	addi	a5,a5,391 # df05f187 <pulp__FC+0xdf05f188>
1c0083d0:	52f12023          	sw	a5,1312(sp)
1c0083d4:	968447b7          	lui	a5,0x96844
1c0083d8:	55678793          	addi	a5,a5,1366 # 96844556 <pulp__FC+0x96844557>
1c0083dc:	52f12223          	sw	a5,1316(sp)
1c0083e0:	904697b7          	lui	a5,0x90469
1c0083e4:	fbd78793          	addi	a5,a5,-67 # 90468fbd <pulp__FC+0x90468fbe>
1c0083e8:	52f12423          	sw	a5,1320(sp)
1c0083ec:	a26d97b7          	lui	a5,0xa26d9
1c0083f0:	85178793          	addi	a5,a5,-1967 # a26d8851 <pulp__FC+0xa26d8852>
1c0083f4:	52f12623          	sw	a5,1324(sp)
1c0083f8:	e79fd7b7          	lui	a5,0xe79fd
1c0083fc:	b2378793          	addi	a5,a5,-1245 # e79fcb23 <pulp__FC+0xe79fcb24>
1c008400:	52f12823          	sw	a5,1328(sp)
1c008404:	0b3987b7          	lui	a5,0xb398
1c008408:	b8e78793          	addi	a5,a5,-1138 # b397b8e <__CTOR_LIST__-0x10c68476>
1c00840c:	52f12a23          	sw	a5,1332(sp)
1c008410:	930a57b7          	lui	a5,0x930a5
1c008414:	bf978793          	addi	a5,a5,-1031 # 930a4bf9 <pulp__FC+0x930a4bfa>
1c008418:	52f12c23          	sw	a5,1336(sp)
1c00841c:	95af97b7          	lui	a5,0x95af9
1c008420:	17678793          	addi	a5,a5,374 # 95af9176 <pulp__FC+0x95af9177>
1c008424:	52f12e23          	sw	a5,1340(sp)
1c008428:	762b17b7          	lui	a5,0x762b1
1c00842c:	85078793          	addi	a5,a5,-1968 # 762b0850 <__l2_shared_end+0x5a2a0850>
1c008430:	54f12023          	sw	a5,1344(sp)
1c008434:	4dcb47b7          	lui	a5,0x4dcb4
1c008438:	5d078793          	addi	a5,a5,1488 # 4dcb45d0 <__l2_shared_end+0x31ca45d0>
1c00843c:	54f12223          	sw	a5,1348(sp)
1c008440:	673cc7b7          	lui	a5,0x673cc
1c008444:	22978793          	addi	a5,a5,553 # 673cc229 <__l2_shared_end+0x4b3bc229>
1c008448:	54f12423          	sw	a5,1352(sp)
1c00844c:	d00827b7          	lui	a5,0xd0082
1c008450:	69478793          	addi	a5,a5,1684 # d0082694 <pulp__FC+0xd0082695>
1c008454:	54f12623          	sw	a5,1356(sp)
1c008458:	0fc8a7b7          	lui	a5,0xfc8a
1c00845c:	17878793          	addi	a5,a5,376 # fc8a178 <__CTOR_LIST__-0xc375e8c>
1c008460:	54f12823          	sw	a5,1360(sp)
1c008464:	947a77b7          	lui	a5,0x947a7
1c008468:	62478793          	addi	a5,a5,1572 # 947a7624 <pulp__FC+0x947a7625>
1c00846c:	54f12a23          	sw	a5,1364(sp)
1c008470:	6789                	lui	a5,0x2
1c008472:	95d78793          	addi	a5,a5,-1699 # 195d <__CTOR_LIST__-0x1bffe6a7>
1c008476:	54f11c23          	sh	a5,1368(sp)
1c00847a:	57c1                	li	a5,-16
1c00847c:	54f10d23          	sb	a5,1370(sp)
1c008480:	9b2ce7b7          	lui	a5,0x9b2ce
1c008484:	87778793          	addi	a5,a5,-1929 # 9b2cd877 <pulp__FC+0x9b2cd878>
1c008488:	54f12da3          	sw	a5,1371(sp)
1c00848c:	737027b7          	lui	a5,0x73702
1c008490:	99b78793          	addi	a5,a5,-1637 # 7370199b <__l2_shared_end+0x576f199b>
1c008494:	54f12fa3          	sw	a5,1375(sp)
1c008498:	69be57b7          	lui	a5,0x69be5
1c00849c:	a4678793          	addi	a5,a5,-1466 # 69be4a46 <__l2_shared_end+0x4dbd4a46>
1c0084a0:	56f121a3          	sw	a5,1379(sp)
1c0084a4:	265687b7          	lui	a5,0x26568
1c0084a8:	ccf78793          	addi	a5,a5,-817 # 26567ccf <__l2_shared_end+0xa557ccf>
1c0084ac:	56f123a3          	sw	a5,1383(sp)
1c0084b0:	f30877b7          	lui	a5,0xf3087
1c0084b4:	31778793          	addi	a5,a5,791 # f3087317 <pulp__FC+0xf3087318>
1c0084b8:	56f125a3          	sw	a5,1387(sp)
1c0084bc:	522d67b7          	lui	a5,0x522d6
1c0084c0:	78478793          	addi	a5,a5,1924 # 522d6784 <__l2_shared_end+0x362c6784>
1c0084c4:	56f127a3          	sw	a5,1391(sp)
1c0084c8:	82c4b7b7          	lui	a5,0x82c4b
1c0084cc:	06378793          	addi	a5,a5,99 # 82c4b063 <pulp__FC+0x82c4b064>
1c0084d0:	56f129a3          	sw	a5,1395(sp)
1c0084d4:	0e47b7b7          	lui	a5,0xe47b
1c0084d8:	46d78793          	addi	a5,a5,1133 # e47b46d <__CTOR_LIST__-0xdb84b97>
1c0084dc:	56f12ba3          	sw	a5,1399(sp)
1c0084e0:	75e477b7          	lui	a5,0x75e47
1c0084e4:	07e9                	addi	a5,a5,26
1c0084e6:	56f12da3          	sw	a5,1403(sp)
1c0084ea:	ab1847b7          	lui	a5,0xab184
1c0084ee:	91e78793          	addi	a5,a5,-1762 # ab18391e <pulp__FC+0xab18391f>
1c0084f2:	56f12fa3          	sw	a5,1407(sp)
1c0084f6:	3bbd07b7          	lui	a5,0x3bbd0
1c0084fa:	ce878793          	addi	a5,a5,-792 # 3bbcfce8 <__l2_shared_end+0x1fbbfce8>
1c0084fe:	58f121a3          	sw	a5,1411(sp)
1c008502:	e81a57b7          	lui	a5,0xe81a5
1c008506:	3c078793          	addi	a5,a5,960 # e81a53c0 <pulp__FC+0xe81a53c1>
1c00850a:	58f123a3          	sw	a5,1415(sp)
1c00850e:	211257b7          	lui	a5,0x21125
1c008512:	59e78793          	addi	a5,a5,1438 # 2112559e <__l2_shared_end+0x511559e>
1c008516:	58f125a3          	sw	a5,1419(sp)
1c00851a:	4ac967b7          	lui	a5,0x4ac96
1c00851e:	c4b78793          	addi	a5,a5,-949 # 4ac95c4b <__l2_shared_end+0x2ec85c4b>
1c008522:	58f127a3          	sw	a5,1423(sp)
1c008526:	bc14a7b7          	lui	a5,0xbc14a
1c00852a:	07d9                	addi	a5,a5,22
1c00852c:	58f129a3          	sw	a5,1427(sp)
1c008530:	796c87b7          	lui	a5,0x796c8
1c008534:	2b378793          	addi	a5,a5,691 # 796c82b3 <__l2_shared_end+0x5d6b82b3>
1c008538:	58f12ba3          	sw	a5,1431(sp)
1c00853c:	d0adf7b7          	lui	a5,0xd0adf
1c008540:	4fb78793          	addi	a5,a5,1275 # d0adf4fb <pulp__FC+0xd0adf4fc>
1c008544:	58f12da3          	sw	a5,1435(sp)
1c008548:	fbee67b7          	lui	a5,0xfbee6
1c00854c:	e8278793          	addi	a5,a5,-382 # fbee5e82 <pulp__FC+0xfbee5e83>
1c008550:	58f12fa3          	sw	a5,1439(sp)
1c008554:	7ccb97b7          	lui	a5,0x7ccb9
1c008558:	8ab78793          	addi	a5,a5,-1877 # 7ccb88ab <__l2_shared_end+0x60ca88ab>
1c00855c:	5af121a3          	sw	a5,1443(sp)
1c008560:	8dbb37b7          	lui	a5,0x8dbb3
1c008564:	7ff78793          	addi	a5,a5,2047 # 8dbb37ff <pulp__FC+0x8dbb3800>
1c008568:	5af123a3          	sw	a5,1447(sp)
1c00856c:	e98d27b7          	lui	a5,0xe98d2
1c008570:	f4978793          	addi	a5,a5,-183 # e98d1f49 <pulp__FC+0xe98d1f4a>
1c008574:	5af125a3          	sw	a5,1451(sp)
1c008578:	1e8a57b7          	lui	a5,0x1e8a5
1c00857c:	70278793          	addi	a5,a5,1794 # 1e8a5702 <__l2_shared_end+0x2895702>
1c008580:	5af127a3          	sw	a5,1455(sp)
1c008584:	565517b7          	lui	a5,0x56551
1c008588:	69678793          	addi	a5,a5,1686 # 56551696 <__l2_shared_end+0x3a541696>
1c00858c:	5af129a3          	sw	a5,1459(sp)
1c008590:	781877b7          	lui	a5,0x78187
1c008594:	75b78793          	addi	a5,a5,1883 # 7818775b <__l2_shared_end+0x5c17775b>
1c008598:	5af12ba3          	sw	a5,1463(sp)
1c00859c:	4f5027b7          	lui	a5,0x4f502
1c0085a0:	32a78793          	addi	a5,a5,810 # 4f50232a <__l2_shared_end+0x334f232a>
1c0085a4:	5af12da3          	sw	a5,1467(sp)
1c0085a8:	83c717b7          	lui	a5,0x83c71
1c0085ac:	3dc78793          	addi	a5,a5,988 # 83c713dc <pulp__FC+0x83c713dd>
1c0085b0:	5af12fa3          	sw	a5,1471(sp)
1c0085b4:	77e137b7          	lui	a5,0x77e13
1c0085b8:	0f178793          	addi	a5,a5,241 # 77e130f1 <__l2_shared_end+0x5be030f1>
1c0085bc:	5cf121a3          	sw	a5,1475(sp)
1c0085c0:	5d3067b7          	lui	a5,0x5d306
1c0085c4:	e9278793          	addi	a5,a5,-366 # 5d305e92 <__l2_shared_end+0x412f5e92>
1c0085c8:	5cf123a3          	sw	a5,1479(sp)
1c0085cc:	cc63c7b7          	lui	a5,0xcc63c
1c0085d0:	c1f78793          	addi	a5,a5,-993 # cc63bc1f <pulp__FC+0xcc63bc20>
1c0085d4:	5cf125a3          	sw	a5,1483(sp)
1c0085d8:	c6c217b7          	lui	a5,0xc6c21
1c0085dc:	58c78793          	addi	a5,a5,1420 # c6c2158c <pulp__FC+0xc6c2158d>
1c0085e0:	5cf127a3          	sw	a5,1487(sp)
1c0085e4:	0c5087b7          	lui	a5,0xc508
1c0085e8:	57f78793          	addi	a5,a5,1407 # c50857f <__CTOR_LIST__-0xfaf7a85>
1c0085ec:	5cf129a3          	sw	a5,1491(sp)
1c0085f0:	e95d87b7          	lui	a5,0xe95d8
1c0085f4:	8ca78793          	addi	a5,a5,-1846 # e95d78ca <pulp__FC+0xe95d78cb>
1c0085f8:	5cf12ba3          	sw	a5,1495(sp)
1c0085fc:	054987b7          	lui	a5,0x5498
1c008600:	0f478793          	addi	a5,a5,244 # 54980f4 <__CTOR_LIST__-0x16b67f10>
1c008604:	5cf12da3          	sw	a5,1499(sp)
1c008608:	aa71f7b7          	lui	a5,0xaa71f
1c00860c:	f5878793          	addi	a5,a5,-168 # aa71ef58 <pulp__FC+0xaa71ef59>
1c008610:	5cf12fa3          	sw	a5,1503(sp)
1c008614:	515c07b7          	lui	a5,0x515c0
1c008618:	bf078793          	addi	a5,a5,-1040 # 515bfbf0 <__l2_shared_end+0x355afbf0>
1c00861c:	5ef121a3          	sw	a5,1507(sp)
1c008620:	124017b7          	lui	a5,0x12401
1c008624:	43978793          	addi	a5,a5,1081 # 12401439 <__CTOR_LIST__-0x9bfebcb>
1c008628:	5ef123a3          	sw	a5,1511(sp)
1c00862c:	c409b7b7          	lui	a5,0xc409b
1c008630:	36978793          	addi	a5,a5,873 # c409b369 <pulp__FC+0xc409b36a>
1c008634:	5ef125a3          	sw	a5,1515(sp)
1c008638:	d264a7b7          	lui	a5,0xd264a
1c00863c:	cc578793          	addi	a5,a5,-827 # d2649cc5 <pulp__FC+0xd2649cc6>
1c008640:	5ef127a3          	sw	a5,1519(sp)
1c008644:	85d857b7          	lui	a5,0x85d85
1c008648:	7a778793          	addi	a5,a5,1959 # 85d857a7 <pulp__FC+0x85d857a8>
1c00864c:	5ef129a3          	sw	a5,1523(sp)
1c008650:	564667b7          	lui	a5,0x56466
1c008654:	85f78793          	addi	a5,a5,-1953 # 5646585f <__l2_shared_end+0x3a45585f>
1c008658:	5ef12ba3          	sw	a5,1527(sp)
1c00865c:	1e5f97b7          	lui	a5,0x1e5f9
1c008660:	21578793          	addi	a5,a5,533 # 1e5f9215 <__l2_shared_end+0x25e9215>
1c008664:	5ef12da3          	sw	a5,1531(sp)
1c008668:	b12c87b7          	lui	a5,0xb12c8
1c00866c:	1a678793          	addi	a5,a5,422 # b12c81a6 <pulp__FC+0xb12c81a7>
1c008670:	5ef12fa3          	sw	a5,1535(sp)
1c008674:	83f407b7          	lui	a5,0x83f40
1c008678:	f4378793          	addi	a5,a5,-189 # 83f3ff43 <pulp__FC+0x83f3ff44>
1c00867c:	60f121a3          	sw	a5,1539(sp)
1c008680:	288e07b7          	lui	a5,0x288e0
1c008684:	4e178793          	addi	a5,a5,1249 # 288e04e1 <__l2_shared_end+0xc8d04e1>
1c008688:	60f123a3          	sw	a5,1543(sp)
1c00868c:	93bf27b7          	lui	a5,0x93bf2
1c008690:	85178793          	addi	a5,a5,-1967 # 93bf1851 <pulp__FC+0x93bf1852>
1c008694:	60f125a3          	sw	a5,1547(sp)
1c008698:	6fb847b7          	lui	a5,0x6fb84
1c00869c:	42978793          	addi	a5,a5,1065 # 6fb84429 <__l2_shared_end+0x53b74429>
1c0086a0:	60f127a3          	sw	a5,1551(sp)
1c0086a4:	b9b1f7b7          	lui	a5,0xb9b1f
1c0086a8:	4bd78793          	addi	a5,a5,1213 # b9b1f4bd <pulp__FC+0xb9b1f4be>
1c0086ac:	60f129a3          	sw	a5,1555(sp)
1c0086b0:	668557b7          	lui	a5,0x66855
1c0086b4:	6e678793          	addi	a5,a5,1766 # 668556e6 <__l2_shared_end+0x4a8456e6>
1c0086b8:	60f12ba3          	sw	a5,1559(sp)
1c0086bc:	5c7707b7          	lui	a5,0x5c770
1c0086c0:	74a78793          	addi	a5,a5,1866 # 5c77074a <__l2_shared_end+0x4076074a>
1c0086c4:	60f12da3          	sw	a5,1563(sp)
1c0086c8:	aa2a97b7          	lui	a5,0xaa2a9
1c0086cc:	54678793          	addi	a5,a5,1350 # aa2a9546 <pulp__FC+0xaa2a9547>
1c0086d0:	60f12fa3          	sw	a5,1567(sp)
1c0086d4:	f56817b7          	lui	a5,0xf5681
1c0086d8:	1da78793          	addi	a5,a5,474 # f56811da <pulp__FC+0xf56811db>
1c0086dc:	62f121a3          	sw	a5,1571(sp)
1c0086e0:	a2c747b7          	lui	a5,0xa2c74
1c0086e4:	74b78793          	addi	a5,a5,1867 # a2c7474b <pulp__FC+0xa2c7474c>
1c0086e8:	62f123a3          	sw	a5,1575(sp)
1c0086ec:	5c35e7b7          	lui	a5,0x5c35e
1c0086f0:	73178793          	addi	a5,a5,1841 # 5c35e731 <__l2_shared_end+0x4034e731>
1c0086f4:	62f125a3          	sw	a5,1579(sp)
1c0086f8:	677467b7          	lui	a5,0x67746
1c0086fc:	36478793          	addi	a5,a5,868 # 67746364 <__l2_shared_end+0x4b736364>
1c008700:	62f127a3          	sw	a5,1583(sp)
1c008704:	9cc0a7b7          	lui	a5,0x9cc0a
1c008708:	3b578793          	addi	a5,a5,949 # 9cc0a3b5 <pulp__FC+0x9cc0a3b6>
1c00870c:	62f129a3          	sw	a5,1587(sp)
1c008710:	35bb67b7          	lui	a5,0x35bb6
1c008714:	7ab78793          	addi	a5,a5,1963 # 35bb67ab <__l2_shared_end+0x19ba67ab>
1c008718:	62f12ba3          	sw	a5,1591(sp)
1c00871c:	c24087b7          	lui	a5,0xc2408
1c008720:	6f578793          	addi	a5,a5,1781 # c24086f5 <pulp__FC+0xc24086f6>
1c008724:	62f12da3          	sw	a5,1595(sp)
1c008728:	bb8367b7          	lui	a5,0xbb836
1c00872c:	27278793          	addi	a5,a5,626 # bb836272 <pulp__FC+0xbb836273>
1c008730:	62f12fa3          	sw	a5,1599(sp)
1c008734:	150a57b7          	lui	a5,0x150a5
1c008738:	36378793          	addi	a5,a5,867 # 150a5363 <__CTOR_LIST__-0x6f5aca1>
1c00873c:	64f121a3          	sw	a5,1603(sp)
1c008740:	48ca77b7          	lui	a5,0x48ca7
1c008744:	ef678793          	addi	a5,a5,-266 # 48ca6ef6 <__l2_shared_end+0x2cc96ef6>
1c008748:	64f123a3          	sw	a5,1607(sp)
1c00874c:	0cc047b7          	lui	a5,0xcc04
1c008750:	0a878793          	addi	a5,a5,168 # cc040a8 <__CTOR_LIST__-0xf3fbf5c>
1c008754:	64f125a3          	sw	a5,1611(sp)
1c008758:	282e87b7          	lui	a5,0x282e8
1c00875c:	6a878793          	addi	a5,a5,1704 # 282e86a8 <__l2_shared_end+0xc2d86a8>
1c008760:	64f127a3          	sw	a5,1615(sp)
1c008764:	679d                	lui	a5,0x7
1c008766:	33c78793          	addi	a5,a5,828 # 733c <__CTOR_LIST__-0x1bff8cc8>
1c00876a:	64f119a3          	sh	a5,1619(sp)
1c00876e:	fbf00793          	li	a5,-65
1c008772:	64f10aa3          	sb	a5,1621(sp)
1c008776:	293a47b7          	lui	a5,0x293a4
1c00877a:	1bb78793          	addi	a5,a5,443 # 293a41bb <__l2_shared_end+0xd3941bb>
1c00877e:	64f12b23          	sw	a5,1622(sp)
1c008782:	15d1c7b7          	lui	a5,0x15d1c
1c008786:	81578793          	addi	a5,a5,-2027 # 15d1b815 <__CTOR_LIST__-0x62e47ef>
1c00878a:	64f12d23          	sw	a5,1626(sp)
1c00878e:	123f07b7          	lui	a5,0x123f0
1c008792:	49a78793          	addi	a5,a5,1178 # 123f049a <__CTOR_LIST__-0x9c0fb6a>
1c008796:	64f12f23          	sw	a5,1630(sp)
1c00879a:	82faa7b7          	lui	a5,0x82faa
1c00879e:	bc578793          	addi	a5,a5,-1083 # 82fa9bc5 <pulp__FC+0x82fa9bc6>
1c0087a2:	66f12123          	sw	a5,1634(sp)
1c0087a6:	aa6f17b7          	lui	a5,0xaa6f1
1c0087aa:	07678793          	addi	a5,a5,118 # aa6f1076 <pulp__FC+0xaa6f1077>
1c0087ae:	66f12523          	sw	a5,1642(sp)
1c0087b2:	9b2457b7          	lui	a5,0x9b245
1c0087b6:	88278793          	addi	a5,a5,-1918 # 9b244882 <pulp__FC+0x9b244883>
1c0087ba:	66f12323          	sw	a5,1638(sp)
1c0087be:	a027a7b7          	lui	a5,0xa027a
1c0087c2:	16178793          	addi	a5,a5,353 # a027a161 <pulp__FC+0xa027a162>
1c0087c6:	66f12723          	sw	a5,1646(sp)
1c0087ca:	635817b7          	lui	a5,0x63581
1c0087ce:	c2878793          	addi	a5,a5,-984 # 63580c28 <__l2_shared_end+0x47570c28>
1c0087d2:	66f12923          	sw	a5,1650(sp)
1c0087d6:	2ca4e7b7          	lui	a5,0x2ca4e
1c0087da:	75078793          	addi	a5,a5,1872 # 2ca4e750 <__l2_shared_end+0x10a3e750>
1c0087de:	66f12b23          	sw	a5,1654(sp)
1c0087e2:	9ca457b7          	lui	a5,0x9ca45
1c0087e6:	cb778793          	addi	a5,a5,-841 # 9ca44cb7 <pulp__FC+0x9ca44cb8>
1c0087ea:	66f12d23          	sw	a5,1658(sp)
1c0087ee:	8906d7b7          	lui	a5,0x8906d
1c0087f2:	6ab78793          	addi	a5,a5,1707 # 8906d6ab <pulp__FC+0x8906d6ac>
1c0087f6:	66f12f23          	sw	a5,1662(sp)
1c0087fa:	8ecbc7b7          	lui	a5,0x8ecbc
1c0087fe:	71e78793          	addi	a5,a5,1822 # 8ecbc71e <pulp__FC+0x8ecbc71f>
1c008802:	68f12123          	sw	a5,1666(sp)
1c008806:	4bfeb7b7          	lui	a5,0x4bfeb
1c00880a:	f8478793          	addi	a5,a5,-124 # 4bfeaf84 <__l2_shared_end+0x2ffdaf84>
1c00880e:	68f12323          	sw	a5,1670(sp)
1c008812:	16c717b7          	lui	a5,0x16c71
1c008816:	42e78793          	addi	a5,a5,1070 # 16c7142e <__CTOR_LIST__-0x538ebd6>
1c00881a:	68f12523          	sw	a5,1674(sp)
1c00881e:	752b37b7          	lui	a5,0x752b3
1c008822:	35878793          	addi	a5,a5,856 # 752b3358 <__l2_shared_end+0x592a3358>
1c008826:	68f12723          	sw	a5,1678(sp)
1c00882a:	b7ba17b7          	lui	a5,0xb7ba1
1c00882e:	15678793          	addi	a5,a5,342 # b7ba1156 <pulp__FC+0xb7ba1157>
1c008832:	68f12923          	sw	a5,1682(sp)
1c008836:	6ca787b7          	lui	a5,0x6ca78
1c00883a:	f9778793          	addi	a5,a5,-105 # 6ca77f97 <__l2_shared_end+0x50a67f97>
1c00883e:	68f12b23          	sw	a5,1686(sp)
1c008842:	1eb237b7          	lui	a5,0x1eb23
1c008846:	6e778793          	addi	a5,a5,1767 # 1eb236e7 <__l2_shared_end+0x2b136e7>
1c00884a:	68f12d23          	sw	a5,1690(sp)
1c00884e:	ac1757b7          	lui	a5,0xac175
1c008852:	ad378793          	addi	a5,a5,-1325 # ac174ad3 <pulp__FC+0xac174ad4>
1c008856:	68f12f23          	sw	a5,1694(sp)
1c00885a:	1c56c7b7          	lui	a5,0x1c56c
1c00885e:	30e78793          	addi	a5,a5,782 # 1c56c30e <__l2_shared_end+0x55c30e>
1c008862:	6af12123          	sw	a5,1698(sp)
1c008866:	d482b7b7          	lui	a5,0xd482b
1c00886a:	2a978793          	addi	a5,a5,681 # d482b2a9 <pulp__FC+0xd482b2aa>
1c00886e:	6af12323          	sw	a5,1702(sp)
1c008872:	7640c7b7          	lui	a5,0x7640c
1c008876:	ca278793          	addi	a5,a5,-862 # 7640bca2 <__l2_shared_end+0x5a3fbca2>
1c00887a:	6af12523          	sw	a5,1706(sp)
1c00887e:	1c4b97b7          	lui	a5,0x1c4b9
1c008882:	29778793          	addi	a5,a5,663 # 1c4b9297 <__l2_shared_end+0x4a9297>
1c008886:	6af12723          	sw	a5,1710(sp)
1c00888a:	83ba27b7          	lui	a5,0x83ba2
1c00888e:	8f978793          	addi	a5,a5,-1799 # 83ba18f9 <pulp__FC+0x83ba18fa>
1c008892:	6af12923          	sw	a5,1714(sp)
1c008896:	c8fda7b7          	lui	a5,0xc8fda
1c00889a:	4d378793          	addi	a5,a5,1235 # c8fda4d3 <pulp__FC+0xc8fda4d4>
1c00889e:	6af12b23          	sw	a5,1718(sp)
1c0088a2:	5bc967b7          	lui	a5,0x5bc96
1c0088a6:	42578793          	addi	a5,a5,1061 # 5bc96425 <__l2_shared_end+0x3fc86425>
1c0088aa:	6af12d23          	sw	a5,1722(sp)
1c0088ae:	eebd07b7          	lui	a5,0xeebd0
1c0088b2:	4d978793          	addi	a5,a5,1241 # eebd04d9 <pulp__FC+0xeebd04da>
1c0088b6:	6af12f23          	sw	a5,1726(sp)
1c0088ba:	ccd627b7          	lui	a5,0xccd62
1c0088be:	ee978793          	addi	a5,a5,-279 # ccd61ee9 <pulp__FC+0xccd61eea>
1c0088c2:	6cf12123          	sw	a5,1730(sp)
1c0088c6:	88aa77b7          	lui	a5,0x88aa7
1c0088ca:	bb378793          	addi	a5,a5,-1101 # 88aa6bb3 <pulp__FC+0x88aa6bb4>
1c0088ce:	6cf12323          	sw	a5,1734(sp)
1c0088d2:	718067b7          	lui	a5,0x71806
1c0088d6:	ca078793          	addi	a5,a5,-864 # 71805ca0 <__l2_shared_end+0x557f5ca0>
1c0088da:	6cf12523          	sw	a5,1738(sp)
1c0088de:	28bf07b7          	lui	a5,0x28bf0
1c0088e2:	12978793          	addi	a5,a5,297 # 28bf0129 <__l2_shared_end+0xcbe0129>
1c0088e6:	6cf12723          	sw	a5,1742(sp)
1c0088ea:	3865f7b7          	lui	a5,0x3865f
1c0088ee:	e0a78793          	addi	a5,a5,-502 # 3865ee0a <__l2_shared_end+0x1c64ee0a>
1c0088f2:	6cf12923          	sw	a5,1746(sp)
1c0088f6:	c27827b7          	lui	a5,0xc2782
1c0088fa:	0ec78793          	addi	a5,a5,236 # c27820ec <pulp__FC+0xc27820ed>
1c0088fe:	6cf12b23          	sw	a5,1750(sp)
1c008902:	86e557b7          	lui	a5,0x86e55
1c008906:	ea878793          	addi	a5,a5,-344 # 86e54ea8 <pulp__FC+0x86e54ea9>
1c00890a:	6cf12d23          	sw	a5,1754(sp)
1c00890e:	cd37c7b7          	lui	a5,0xcd37c
1c008912:	12f78793          	addi	a5,a5,303 # cd37c12f <pulp__FC+0xcd37c130>
1c008916:	6cf12f23          	sw	a5,1758(sp)
1c00891a:	6879f7b7          	lui	a5,0x6879f
1c00891e:	99278793          	addi	a5,a5,-1646 # 6879e992 <__l2_shared_end+0x4c78e992>
1c008922:	6ef12123          	sw	a5,1762(sp)
1c008926:	45c3a7b7          	lui	a5,0x45c3a
1c00892a:	fd678793          	addi	a5,a5,-42 # 45c39fd6 <__l2_shared_end+0x29c29fd6>
1c00892e:	6ef12323          	sw	a5,1766(sp)
1c008932:	b11c27b7          	lui	a5,0xb11c2
1c008936:	e3a78793          	addi	a5,a5,-454 # b11c1e3a <pulp__FC+0xb11c1e3b>
1c00893a:	6ef12523          	sw	a5,1770(sp)
1c00893e:	9f0cc7b7          	lui	a5,0x9f0cc
1c008942:	56178793          	addi	a5,a5,1377 # 9f0cc561 <pulp__FC+0x9f0cc562>
1c008946:	6ef12723          	sw	a5,1774(sp)
1c00894a:	d0a077b7          	lui	a5,0xd0a07
1c00894e:	32478793          	addi	a5,a5,804 # d0a07324 <pulp__FC+0xd0a07325>
1c008952:	6ef12923          	sw	a5,1778(sp)
1c008956:	88b137b7          	lui	a5,0x88b13
1c00895a:	79078793          	addi	a5,a5,1936 # 88b13790 <pulp__FC+0x88b13791>
1c00895e:	6ef12b23          	sw	a5,1782(sp)
1c008962:	ef0207b7          	lui	a5,0xef020
1c008966:	aa078793          	addi	a5,a5,-1376 # ef01faa0 <pulp__FC+0xef01faa1>
1c00896a:	6ef12d23          	sw	a5,1786(sp)
1c00896e:	acc247b7          	lui	a5,0xacc24
1c008972:	4c378793          	addi	a5,a5,1219 # acc244c3 <pulp__FC+0xacc244c4>
1c008976:	6ef12f23          	sw	a5,1790(sp)
1c00897a:	2b59f7b7          	lui	a5,0x2b59f
1c00897e:	88f78793          	addi	a5,a5,-1905 # 2b59e88f <__l2_shared_end+0xf58e88f>
1c008982:	70f12123          	sw	a5,1794(sp)
1c008986:	664567b7          	lui	a5,0x66456
1c00898a:	80a78793          	addi	a5,a5,-2038 # 6645580a <__l2_shared_end+0x4a44580a>
1c00898e:	70f12323          	sw	a5,1798(sp)
1c008992:	3350b7b7          	lui	a5,0x3350b
1c008996:	96278793          	addi	a5,a5,-1694 # 3350a962 <__l2_shared_end+0x174fa962>
1c00899a:	70f12523          	sw	a5,1802(sp)
1c00899e:	8a15a7b7          	lui	a5,0x8a15a
1c0089a2:	a6578793          	addi	a5,a5,-1435 # 8a159a65 <pulp__FC+0x8a159a66>
1c0089a6:	70f12723          	sw	a5,1806(sp)
1c0089aa:	e5a697b7          	lui	a5,0xe5a69
1c0089ae:	02d78793          	addi	a5,a5,45 # e5a6902d <pulp__FC+0xe5a6902e>
1c0089b2:	70f12923          	sw	a5,1810(sp)
1c0089b6:	873a27b7          	lui	a5,0x873a2
1c0089ba:	50c78793          	addi	a5,a5,1292 # 873a250c <pulp__FC+0x873a250d>
1c0089be:	70f12b23          	sw	a5,1814(sp)
1c0089c2:	ce8557b7          	lui	a5,0xce855
1c0089c6:	79778793          	addi	a5,a5,1943 # ce855797 <pulp__FC+0xce855798>
1c0089ca:	70f12d23          	sw	a5,1818(sp)
1c0089ce:	0057c7b7          	lui	a5,0x57c
1c0089d2:	42978793          	addi	a5,a5,1065 # 57c429 <__CTOR_LIST__-0x1ba83bdb>
1c0089d6:	70f12f23          	sw	a5,1822(sp)
1c0089da:	d454a7b7          	lui	a5,0xd454a
1c0089de:	10078793          	addi	a5,a5,256 # d454a100 <pulp__FC+0xd454a101>
1c0089e2:	72f12123          	sw	a5,1826(sp)
1c0089e6:	42c6b7b7          	lui	a5,0x42c6b
1c0089ea:	2b378793          	addi	a5,a5,691 # 42c6b2b3 <__l2_shared_end+0x26c5b2b3>
1c0089ee:	72f12323          	sw	a5,1830(sp)
1c0089f2:	7c8c67b7          	lui	a5,0x7c8c6
1c0089f6:	c2078793          	addi	a5,a5,-992 # 7c8c5c20 <__l2_shared_end+0x608b5c20>
1c0089fa:	72f12523          	sw	a5,1834(sp)
1c0089fe:	106bb7b7          	lui	a5,0x106bb
1c008a02:	cf978793          	addi	a5,a5,-775 # 106bacf9 <__CTOR_LIST__-0xb94530b>
1c008a06:	72f12723          	sw	a5,1838(sp)
1c008a0a:	68b407b7          	lui	a5,0x68b40
1c008a0e:	b7178793          	addi	a5,a5,-1167 # 68b3fb71 <__l2_shared_end+0x4cb2fb71>
1c008a12:	72f12923          	sw	a5,1842(sp)
1c008a16:	740a97b7          	lui	a5,0x740a9
1c008a1a:	5ab78793          	addi	a5,a5,1451 # 740a95ab <__l2_shared_end+0x580995ab>
1c008a1e:	72f12b23          	sw	a5,1846(sp)
1c008a22:	5bc997b7          	lui	a5,0x5bc99
1c008a26:	84b78793          	addi	a5,a5,-1973 # 5bc9884b <__l2_shared_end+0x3fc8884b>
1c008a2a:	72f12d23          	sw	a5,1850(sp)
1c008a2e:	173027b7          	lui	a5,0x17302
1c008a32:	4a578793          	addi	a5,a5,1189 # 173024a5 <__CTOR_LIST__-0x4cfdb5f>
1c008a36:	72f12f23          	sw	a5,1854(sp)
1c008a3a:	a92017b7          	lui	a5,0xa9201
1c008a3e:	18378793          	addi	a5,a5,387 # a9201183 <pulp__FC+0xa9201184>
1c008a42:	74f12123          	sw	a5,1858(sp)
1c008a46:	d23887b7          	lui	a5,0xd2388
1c008a4a:	30478793          	addi	a5,a5,772 # d2388304 <pulp__FC+0xd2388305>
1c008a4e:	74f12323          	sw	a5,1862(sp)
1c008a52:	0d8347b7          	lui	a5,0xd834
1c008a56:	79878793          	addi	a5,a5,1944 # d834798 <__CTOR_LIST__-0xe7cb86c>
1c008a5a:	74f12523          	sw	a5,1866(sp)
1c008a5e:	77ed                	lui	a5,0xffffb
1c008a60:	91278793          	addi	a5,a5,-1774 # ffffa912 <pulp__FC+0xffffa913>
1c008a64:	74f11723          	sh	a5,1870(sp)
1c008a68:	03300793          	li	a5,51
1c008a6c:	74f10823          	sb	a5,1872(sp)
1c008a70:	21bda7b7          	lui	a5,0x21bda
1c008a74:	aa078793          	addi	a5,a5,-1376 # 21bd9aa0 <__l2_shared_end+0x5bc9aa0>
1c008a78:	74f128a3          	sw	a5,1873(sp)
1c008a7c:	8c8277b7          	lui	a5,0x8c827
1c008a80:	ba478793          	addi	a5,a5,-1116 # 8c826ba4 <pulp__FC+0x8c826ba5>
1c008a84:	74f12aa3          	sw	a5,1877(sp)
1c008a88:	8c8057b7          	lui	a5,0x8c805
1c008a8c:	eb178793          	addi	a5,a5,-335 # 8c804eb1 <pulp__FC+0x8c804eb2>
1c008a90:	74f12ca3          	sw	a5,1881(sp)
1c008a94:	c92957b7          	lui	a5,0xc9295
1c008a98:	1d378793          	addi	a5,a5,467 # c92951d3 <pulp__FC+0xc92951d4>
1c008a9c:	74f12ea3          	sw	a5,1885(sp)
1c008aa0:	935b77b7          	lui	a5,0x935b7
1c008aa4:	edc78793          	addi	a5,a5,-292 # 935b6edc <pulp__FC+0x935b6edd>
1c008aa8:	76f120a3          	sw	a5,1889(sp)
1c008aac:	6f1257b7          	lui	a5,0x6f125
1c008ab0:	a1d78793          	addi	a5,a5,-1507 # 6f124a1d <__l2_shared_end+0x53114a1d>
1c008ab4:	76f122a3          	sw	a5,1893(sp)
1c008ab8:	0979e7b7          	lui	a5,0x979e
1c008abc:	0ef78793          	addi	a5,a5,239 # 979e0ef <__CTOR_LIST__-0x12861f15>
1c008ac0:	76f124a3          	sw	a5,1897(sp)
1c008ac4:	452b97b7          	lui	a5,0x452b9
1c008ac8:	e6178793          	addi	a5,a5,-415 # 452b8e61 <__l2_shared_end+0x292a8e61>
1c008acc:	76f126a3          	sw	a5,1901(sp)
1c008ad0:	b4b6e7b7          	lui	a5,0xb4b6e
1c008ad4:	78678793          	addi	a5,a5,1926 # b4b6e786 <pulp__FC+0xb4b6e787>
1c008ad8:	76f128a3          	sw	a5,1905(sp)
1c008adc:	733b97b7          	lui	a5,0x733b9
1c008ae0:	62478793          	addi	a5,a5,1572 # 733b9624 <__l2_shared_end+0x573a9624>
1c008ae4:	76f12aa3          	sw	a5,1909(sp)
1c008ae8:	5b50c7b7          	lui	a5,0x5b50c
1c008aec:	a2378793          	addi	a5,a5,-1501 # 5b50ba23 <__l2_shared_end+0x3f4fba23>
1c008af0:	76f12ca3          	sw	a5,1913(sp)
1c008af4:	9bbb17b7          	lui	a5,0x9bbb1
1c008af8:	2a178793          	addi	a5,a5,673 # 9bbb12a1 <pulp__FC+0x9bbb12a2>
1c008afc:	76f12ea3          	sw	a5,1917(sp)
1c008b00:	1b7d57b7          	lui	a5,0x1b7d5
1c008b04:	a8378793          	addi	a5,a5,-1405 # 1b7d4a83 <__CTOR_LIST__-0x82b581>
1c008b08:	78f120a3          	sw	a5,1921(sp)
1c008b0c:	f50db7b7          	lui	a5,0xf50db
1c008b10:	d7878793          	addi	a5,a5,-648 # f50dad78 <pulp__FC+0xf50dad79>
1c008b14:	78f122a3          	sw	a5,1925(sp)
1c008b18:	1c6a57b7          	lui	a5,0x1c6a5
1c008b1c:	53d78793          	addi	a5,a5,1341 # 1c6a553d <__l2_shared_end+0x69553d>
1c008b20:	78f124a3          	sw	a5,1929(sp)
1c008b24:	099f37b7          	lui	a5,0x99f3
1c008b28:	66978793          	addi	a5,a5,1641 # 99f3669 <__CTOR_LIST__-0x1260c99b>
1c008b2c:	78f126a3          	sw	a5,1933(sp)
1c008b30:	c91d97b7          	lui	a5,0xc91d9
1c008b34:	b1478793          	addi	a5,a5,-1260 # c91d8b14 <pulp__FC+0xc91d8b15>
1c008b38:	78f128a3          	sw	a5,1937(sp)
1c008b3c:	92f597b7          	lui	a5,0x92f59
1c008b40:	d9378793          	addi	a5,a5,-621 # 92f58d93 <pulp__FC+0x92f58d94>
1c008b44:	78f12aa3          	sw	a5,1941(sp)
1c008b48:	fd87f7b7          	lui	a5,0xfd87f
1c008b4c:	02378793          	addi	a5,a5,35 # fd87f023 <pulp__FC+0xfd87f024>
1c008b50:	78f12ca3          	sw	a5,1945(sp)
1c008b54:	5bbe37b7          	lui	a5,0x5bbe3
1c008b58:	36878793          	addi	a5,a5,872 # 5bbe3368 <__l2_shared_end+0x3fbd3368>
1c008b5c:	78f12ea3          	sw	a5,1949(sp)
1c008b60:	1f65c7b7          	lui	a5,0x1f65c
1c008b64:	22b78793          	addi	a5,a5,555 # 1f65c22b <__l2_shared_end+0x364c22b>
1c008b68:	7af120a3          	sw	a5,1953(sp)
1c008b6c:	ac1197b7          	lui	a5,0xac119
1c008b70:	9e578793          	addi	a5,a5,-1563 # ac1189e5 <pulp__FC+0xac1189e6>
1c008b74:	7af122a3          	sw	a5,1957(sp)
1c008b78:	927f47b7          	lui	a5,0x927f4
1c008b7c:	60178793          	addi	a5,a5,1537 # 927f4601 <pulp__FC+0x927f4602>
1c008b80:	7af124a3          	sw	a5,1961(sp)
1c008b84:	22dce7b7          	lui	a5,0x22dce
1c008b88:	f9778793          	addi	a5,a5,-105 # 22dcdf97 <__l2_shared_end+0x6dbdf97>
1c008b8c:	7af126a3          	sw	a5,1965(sp)
1c008b90:	170f27b7          	lui	a5,0x170f2
1c008b94:	ab478793          	addi	a5,a5,-1356 # 170f1ab4 <__CTOR_LIST__-0x4f0e550>
1c008b98:	7af128a3          	sw	a5,1969(sp)
1c008b9c:	108777b7          	lui	a5,0x10877
1c008ba0:	10278793          	addi	a5,a5,258 # 10877102 <__CTOR_LIST__-0xb788f02>
1c008ba4:	7af12aa3          	sw	a5,1973(sp)
1c008ba8:	5bf397b7          	lui	a5,0x5bf39
1c008bac:	cb778793          	addi	a5,a5,-841 # 5bf38cb7 <__l2_shared_end+0x3ff28cb7>
1c008bb0:	7af12ca3          	sw	a5,1977(sp)
1c008bb4:	3a8167b7          	lui	a5,0x3a816
1c008bb8:	51878793          	addi	a5,a5,1304 # 3a816518 <__l2_shared_end+0x1e806518>
1c008bbc:	7af12ea3          	sw	a5,1981(sp)
1c008bc0:	214577b7          	lui	a5,0x21457
1c008bc4:	d8978793          	addi	a5,a5,-631 # 21456d89 <__l2_shared_end+0x5446d89>
1c008bc8:	7cf120a3          	sw	a5,1985(sp)
1c008bcc:	558137b7          	lui	a5,0x55813
1c008bd0:	34d78793          	addi	a5,a5,845 # 5581334d <__l2_shared_end+0x3980334d>
1c008bd4:	7cf122a3          	sw	a5,1989(sp)
1c008bd8:	c543c7b7          	lui	a5,0xc543c
1c008bdc:	0b678793          	addi	a5,a5,182 # c543c0b6 <pulp__FC+0xc543c0b7>
1c008be0:	7cf124a3          	sw	a5,1993(sp)
1c008be4:	000c37b7          	lui	a5,0xc3
1c008be8:	33278793          	addi	a5,a5,818 # c3332 <__CTOR_LIST__-0x1bf3ccd2>
1c008bec:	7cf126a3          	sw	a5,1997(sp)
1c008bf0:	390757b7          	lui	a5,0x39075
1c008bf4:	22d78793          	addi	a5,a5,557 # 3907522d <__l2_shared_end+0x1d06522d>
1c008bf8:	7cf128a3          	sw	a5,2001(sp)
1c008bfc:	4a5087b7          	lui	a5,0x4a508
1c008c00:	a4678793          	addi	a5,a5,-1466 # 4a507a46 <__l2_shared_end+0x2e4f7a46>
1c008c04:	7cf12aa3          	sw	a5,2005(sp)
1c008c08:	fb3767b7          	lui	a5,0xfb376
1c008c0c:	68678793          	addi	a5,a5,1670 # fb376686 <pulp__FC+0xfb376687>
1c008c10:	7cf12ca3          	sw	a5,2009(sp)
1c008c14:	49c857b7          	lui	a5,0x49c85
1c008c18:	13478793          	addi	a5,a5,308 # 49c85134 <__l2_shared_end+0x2dc75134>
1c008c1c:	7cf12ea3          	sw	a5,2013(sp)
1c008c20:	6a3f07b7          	lui	a5,0x6a3f0
1c008c24:	8f878793          	addi	a5,a5,-1800 # 6a3ef8f8 <__l2_shared_end+0x4e3df8f8>
1c008c28:	7ef120a3          	sw	a5,2017(sp)
1c008c2c:	167f17b7          	lui	a5,0x167f1
1c008c30:	49478793          	addi	a5,a5,1172 # 167f1494 <__CTOR_LIST__-0x580eb70>
1c008c34:	7ef122a3          	sw	a5,2021(sp)
1c008c38:	cd3aa7b7          	lui	a5,0xcd3aa
1c008c3c:	58d78793          	addi	a5,a5,1421 # cd3aa58d <pulp__FC+0xcd3aa58e>
1c008c40:	7ef124a3          	sw	a5,2025(sp)
1c008c44:	fdafe7b7          	lui	a5,0xfdafe
1c008c48:	8f978793          	addi	a5,a5,-1799 # fdafd8f9 <pulp__FC+0xfdafd8fa>
1c008c4c:	7ef126a3          	sw	a5,2029(sp)
1c008c50:	128497b7          	lui	a5,0x12849
1c008c54:	a9678793          	addi	a5,a5,-1386 # 12848a96 <__CTOR_LIST__-0x97b756e>
1c008c58:	7ef128a3          	sw	a5,2033(sp)
1c008c5c:	09bca7b7          	lui	a5,0x9bca
1c008c60:	a4a78793          	addi	a5,a5,-1462 # 9bc9a4a <__CTOR_LIST__-0x124365ba>
1c008c64:	7ef12aa3          	sw	a5,2037(sp)
1c008c68:	d30c97b7          	lui	a5,0xd30c9
1c008c6c:	6af78793          	addi	a5,a5,1711 # d30c96af <pulp__FC+0xd30c96b0>
1c008c70:	7ef12ca3          	sw	a5,2041(sp)
1c008c74:	4423a7b7          	lui	a5,0x4423a
1c008c78:	fb278793          	addi	a5,a5,-78 # 44239fb2 <__l2_shared_end+0x28229fb2>
1c008c7c:	6705                	lui	a4,0x1
1c008c7e:	7ef12ea3          	sw	a5,2045(sp)
1c008c82:	80170713          	addi	a4,a4,-2047 # 801 <__CTOR_LIST__-0x1bfff803>
1c008c86:	1eb427b7          	lui	a5,0x1eb42
1c008c8a:	970a                	add	a4,a4,sp
1c008c8c:	b8378793          	addi	a5,a5,-1149 # 1eb41b83 <__l2_shared_end+0x2b31b83>
1c008c90:	c31c                	sw	a5,0(a4)
1c008c92:	6705                	lui	a4,0x1
1c008c94:	eb5e67b7          	lui	a5,0xeb5e6
1c008c98:	80570713          	addi	a4,a4,-2043 # 805 <__CTOR_LIST__-0x1bfff7ff>
1c008c9c:	970a                	add	a4,a4,sp
1c008c9e:	06778793          	addi	a5,a5,103 # eb5e6067 <pulp__FC+0xeb5e6068>
1c008ca2:	c31c                	sw	a5,0(a4)
1c008ca4:	6705                	lui	a4,0x1
1c008ca6:	02f217b7          	lui	a5,0x2f21
1c008caa:	80970713          	addi	a4,a4,-2039 # 809 <__CTOR_LIST__-0x1bfff7fb>
1c008cae:	970a                	add	a4,a4,sp
1c008cb0:	df078793          	addi	a5,a5,-528 # 2f20df0 <__CTOR_LIST__-0x190df214>
1c008cb4:	c31c                	sw	a5,0(a4)
1c008cb6:	6705                	lui	a4,0x1
1c008cb8:	391777b7          	lui	a5,0x39177
1c008cbc:	80d70713          	addi	a4,a4,-2035 # 80d <__CTOR_LIST__-0x1bfff7f7>
1c008cc0:	970a                	add	a4,a4,sp
1c008cc2:	18578793          	addi	a5,a5,389 # 39177185 <__l2_shared_end+0x1d167185>
1c008cc6:	c31c                	sw	a5,0(a4)
1c008cc8:	6705                	lui	a4,0x1
1c008cca:	b648d7b7          	lui	a5,0xb648d
1c008cce:	81170713          	addi	a4,a4,-2031 # 811 <__CTOR_LIST__-0x1bfff7f3>
1c008cd2:	970a                	add	a4,a4,sp
1c008cd4:	79d78793          	addi	a5,a5,1949 # b648d79d <pulp__FC+0xb648d79e>
1c008cd8:	c31c                	sw	a5,0(a4)
1c008cda:	6705                	lui	a4,0x1
1c008cdc:	61ed57b7          	lui	a5,0x61ed5
1c008ce0:	81570713          	addi	a4,a4,-2027 # 815 <__CTOR_LIST__-0x1bfff7ef>
1c008ce4:	970a                	add	a4,a4,sp
1c008ce6:	a5178793          	addi	a5,a5,-1455 # 61ed4a51 <__l2_shared_end+0x45ec4a51>
1c008cea:	c31c                	sw	a5,0(a4)
1c008cec:	6705                	lui	a4,0x1
1c008cee:	b86c37b7          	lui	a5,0xb86c3
1c008cf2:	81970713          	addi	a4,a4,-2023 # 819 <__CTOR_LIST__-0x1bfff7eb>
1c008cf6:	970a                	add	a4,a4,sp
1c008cf8:	fbb78793          	addi	a5,a5,-69 # b86c2fbb <pulp__FC+0xb86c2fbc>
1c008cfc:	c31c                	sw	a5,0(a4)
1c008cfe:	6705                	lui	a4,0x1
1c008d00:	d568d7b7          	lui	a5,0xd568d
1c008d04:	81d70713          	addi	a4,a4,-2019 # 81d <__CTOR_LIST__-0x1bfff7e7>
1c008d08:	970a                	add	a4,a4,sp
1c008d0a:	14178793          	addi	a5,a5,321 # d568d141 <pulp__FC+0xd568d142>
1c008d0e:	c31c                	sw	a5,0(a4)
1c008d10:	6705                	lui	a4,0x1
1c008d12:	052067b7          	lui	a5,0x5206
1c008d16:	82170713          	addi	a4,a4,-2015 # 821 <__CTOR_LIST__-0x1bfff7e3>
1c008d1a:	970a                	add	a4,a4,sp
1c008d1c:	ef378793          	addi	a5,a5,-269 # 5205ef3 <__CTOR_LIST__-0x16dfa111>
1c008d20:	c31c                	sw	a5,0(a4)
1c008d22:	6705                	lui	a4,0x1
1c008d24:	31a377b7          	lui	a5,0x31a37
1c008d28:	82570713          	addi	a4,a4,-2011 # 825 <__CTOR_LIST__-0x1bfff7df>
1c008d2c:	970a                	add	a4,a4,sp
1c008d2e:	34578793          	addi	a5,a5,837 # 31a37345 <__l2_shared_end+0x15a27345>
1c008d32:	c31c                	sw	a5,0(a4)
1c008d34:	6705                	lui	a4,0x1
1c008d36:	a08257b7          	lui	a5,0xa0825
1c008d3a:	82970713          	addi	a4,a4,-2007 # 829 <__CTOR_LIST__-0x1bfff7db>
1c008d3e:	970a                	add	a4,a4,sp
1c008d40:	8cd78793          	addi	a5,a5,-1843 # a08248cd <pulp__FC+0xa08248ce>
1c008d44:	c31c                	sw	a5,0(a4)
1c008d46:	6705                	lui	a4,0x1
1c008d48:	172c07b7          	lui	a5,0x172c0
1c008d4c:	82d70713          	addi	a4,a4,-2003 # 82d <__CTOR_LIST__-0x1bfff7d7>
1c008d50:	970a                	add	a4,a4,sp
1c008d52:	74b78793          	addi	a5,a5,1867 # 172c074b <__CTOR_LIST__-0x4d3f8b9>
1c008d56:	c31c                	sw	a5,0(a4)
1c008d58:	6705                	lui	a4,0x1
1c008d5a:	5b8267b7          	lui	a5,0x5b826
1c008d5e:	83170713          	addi	a4,a4,-1999 # 831 <__CTOR_LIST__-0x1bfff7d3>
1c008d62:	970a                	add	a4,a4,sp
1c008d64:	89178793          	addi	a5,a5,-1903 # 5b825891 <__l2_shared_end+0x3f815891>
1c008d68:	c31c                	sw	a5,0(a4)
1c008d6a:	6705                	lui	a4,0x1
1c008d6c:	661247b7          	lui	a5,0x66124
1c008d70:	83570713          	addi	a4,a4,-1995 # 835 <__CTOR_LIST__-0x1bfff7cf>
1c008d74:	970a                	add	a4,a4,sp
1c008d76:	7cf78793          	addi	a5,a5,1999 # 661247cf <__l2_shared_end+0x4a1147cf>
1c008d7a:	c31c                	sw	a5,0(a4)
1c008d7c:	6705                	lui	a4,0x1
1c008d7e:	eacc17b7          	lui	a5,0xeacc1
1c008d82:	83970713          	addi	a4,a4,-1991 # 839 <__CTOR_LIST__-0x1bfff7cb>
1c008d86:	970a                	add	a4,a4,sp
1c008d88:	dda78793          	addi	a5,a5,-550 # eacc0dda <pulp__FC+0xeacc0ddb>
1c008d8c:	c31c                	sw	a5,0(a4)
1c008d8e:	6705                	lui	a4,0x1
1c008d90:	c721a7b7          	lui	a5,0xc721a
1c008d94:	83d70713          	addi	a4,a4,-1987 # 83d <__CTOR_LIST__-0x1bfff7c7>
1c008d98:	970a                	add	a4,a4,sp
1c008d9a:	0b178793          	addi	a5,a5,177 # c721a0b1 <pulp__FC+0xc721a0b2>
1c008d9e:	c31c                	sw	a5,0(a4)
1c008da0:	6705                	lui	a4,0x1
1c008da2:	1d7557b7          	lui	a5,0x1d755
1c008da6:	84170713          	addi	a4,a4,-1983 # 841 <__CTOR_LIST__-0x1bfff7c3>
1c008daa:	970a                	add	a4,a4,sp
1c008dac:	43278793          	addi	a5,a5,1074 # 1d755432 <__l2_shared_end+0x1745432>
1c008db0:	c31c                	sw	a5,0(a4)
1c008db2:	6705                	lui	a4,0x1
1c008db4:	1a1c17b7          	lui	a5,0x1a1c1
1c008db8:	84570713          	addi	a4,a4,-1979 # 845 <__CTOR_LIST__-0x1bfff7bf>
1c008dbc:	970a                	add	a4,a4,sp
1c008dbe:	65a78793          	addi	a5,a5,1626 # 1a1c165a <__CTOR_LIST__-0x1e3e9aa>
1c008dc2:	c31c                	sw	a5,0(a4)
1c008dc4:	6705                	lui	a4,0x1
1c008dc6:	84970713          	addi	a4,a4,-1975 # 849 <__CTOR_LIST__-0x1bfff7bb>
1c008dca:	970a                	add	a4,a4,sp
1c008dcc:	69200793          	li	a5,1682
1c008dd0:	00f71023          	sh	a5,0(a4)
1c008dd4:	6705                	lui	a4,0x1
1c008dd6:	84b70713          	addi	a4,a4,-1973 # 84b <__CTOR_LIST__-0x1bfff7b9>
1c008dda:	970a                	add	a4,a4,sp
1c008ddc:	02c00793          	li	a5,44
1c008de0:	00f70023          	sb	a5,0(a4)
1c008de4:	6705                	lui	a4,0x1
1c008de6:	7a2117b7          	lui	a5,0x7a211
1c008dea:	84c70713          	addi	a4,a4,-1972 # 84c <__CTOR_LIST__-0x1bfff7b8>
1c008dee:	970a                	add	a4,a4,sp
1c008df0:	a2278793          	addi	a5,a5,-1502 # 7a210a22 <__l2_shared_end+0x5e200a22>
1c008df4:	c31c                	sw	a5,0(a4)
1c008df6:	6705                	lui	a4,0x1
1c008df8:	3382e7b7          	lui	a5,0x3382e
1c008dfc:	85070713          	addi	a4,a4,-1968 # 850 <__CTOR_LIST__-0x1bfff7b4>
1c008e00:	970a                	add	a4,a4,sp
1c008e02:	96978793          	addi	a5,a5,-1687 # 3382d969 <__l2_shared_end+0x1781d969>
1c008e06:	c31c                	sw	a5,0(a4)
1c008e08:	6705                	lui	a4,0x1
1c008e0a:	99deb7b7          	lui	a5,0x99deb
1c008e0e:	85470713          	addi	a4,a4,-1964 # 854 <__CTOR_LIST__-0x1bfff7b0>
1c008e12:	970a                	add	a4,a4,sp
1c008e14:	41478793          	addi	a5,a5,1044 # 99deb414 <pulp__FC+0x99deb415>
1c008e18:	c31c                	sw	a5,0(a4)
1c008e1a:	6705                	lui	a4,0x1
1c008e1c:	5fd4f7b7          	lui	a5,0x5fd4f
1c008e20:	85870713          	addi	a4,a4,-1960 # 858 <__CTOR_LIST__-0x1bfff7ac>
1c008e24:	970a                	add	a4,a4,sp
1c008e26:	86f78793          	addi	a5,a5,-1937 # 5fd4e86f <__l2_shared_end+0x43d3e86f>
1c008e2a:	c31c                	sw	a5,0(a4)
1c008e2c:	6705                	lui	a4,0x1
1c008e2e:	16afb7b7          	lui	a5,0x16afb
1c008e32:	85c70713          	addi	a4,a4,-1956 # 85c <__CTOR_LIST__-0x1bfff7a8>
1c008e36:	970a                	add	a4,a4,sp
1c008e38:	56d78793          	addi	a5,a5,1389 # 16afb56d <__CTOR_LIST__-0x5504a97>
1c008e3c:	c31c                	sw	a5,0(a4)
1c008e3e:	6705                	lui	a4,0x1
1c008e40:	951457b7          	lui	a5,0x95145
1c008e44:	86070713          	addi	a4,a4,-1952 # 860 <__CTOR_LIST__-0x1bfff7a4>
1c008e48:	970a                	add	a4,a4,sp
1c008e4a:	6c178793          	addi	a5,a5,1729 # 951456c1 <pulp__FC+0x951456c2>
1c008e4e:	c31c                	sw	a5,0(a4)
1c008e50:	6705                	lui	a4,0x1
1c008e52:	9030c7b7          	lui	a5,0x9030c
1c008e56:	86470713          	addi	a4,a4,-1948 # 864 <__CTOR_LIST__-0x1bfff7a0>
1c008e5a:	970a                	add	a4,a4,sp
1c008e5c:	4a478793          	addi	a5,a5,1188 # 9030c4a4 <pulp__FC+0x9030c4a5>
1c008e60:	c31c                	sw	a5,0(a4)
1c008e62:	6705                	lui	a4,0x1
1c008e64:	944c47b7          	lui	a5,0x944c4
1c008e68:	86870713          	addi	a4,a4,-1944 # 868 <__CTOR_LIST__-0x1bfff79c>
1c008e6c:	970a                	add	a4,a4,sp
1c008e6e:	9bc78793          	addi	a5,a5,-1604 # 944c39bc <pulp__FC+0x944c39bd>
1c008e72:	c31c                	sw	a5,0(a4)
1c008e74:	6705                	lui	a4,0x1
1c008e76:	73ecb7b7          	lui	a5,0x73ecb
1c008e7a:	86c70713          	addi	a4,a4,-1940 # 86c <__CTOR_LIST__-0x1bfff798>
1c008e7e:	970a                	add	a4,a4,sp
1c008e80:	0e178793          	addi	a5,a5,225 # 73ecb0e1 <__l2_shared_end+0x57ebb0e1>
1c008e84:	c31c                	sw	a5,0(a4)
1c008e86:	6705                	lui	a4,0x1
1c008e88:	6762b7b7          	lui	a5,0x6762b
1c008e8c:	87070713          	addi	a4,a4,-1936 # 870 <__CTOR_LIST__-0x1bfff794>
1c008e90:	970a                	add	a4,a4,sp
1c008e92:	58e78793          	addi	a5,a5,1422 # 6762b58e <__l2_shared_end+0x4b61b58e>
1c008e96:	c31c                	sw	a5,0(a4)
1c008e98:	6705                	lui	a4,0x1
1c008e9a:	cd2e27b7          	lui	a5,0xcd2e2
1c008e9e:	87470713          	addi	a4,a4,-1932 # 874 <__CTOR_LIST__-0x1bfff790>
1c008ea2:	970a                	add	a4,a4,sp
1c008ea4:	c2078793          	addi	a5,a5,-992 # cd2e1c20 <pulp__FC+0xcd2e1c21>
1c008ea8:	c31c                	sw	a5,0(a4)
1c008eaa:	6705                	lui	a4,0x1
1c008eac:	934987b7          	lui	a5,0x93498
1c008eb0:	87870713          	addi	a4,a4,-1928 # 878 <__CTOR_LIST__-0x1bfff78c>
1c008eb4:	970a                	add	a4,a4,sp
1c008eb6:	b1c78793          	addi	a5,a5,-1252 # 93497b1c <pulp__FC+0x93497b1d>
1c008eba:	c31c                	sw	a5,0(a4)
1c008ebc:	6705                	lui	a4,0x1
1c008ebe:	28c0f7b7          	lui	a5,0x28c0f
1c008ec2:	87c70713          	addi	a4,a4,-1924 # 87c <__CTOR_LIST__-0x1bfff788>
1c008ec6:	970a                	add	a4,a4,sp
1c008ec8:	fc078793          	addi	a5,a5,-64 # 28c0efc0 <__l2_shared_end+0xcbfefc0>
1c008ecc:	c31c                	sw	a5,0(a4)
1c008ece:	6705                	lui	a4,0x1
1c008ed0:	099ae7b7          	lui	a5,0x99ae
1c008ed4:	88070713          	addi	a4,a4,-1920 # 880 <__CTOR_LIST__-0x1bfff784>
1c008ed8:	970a                	add	a4,a4,sp
1c008eda:	c4b78793          	addi	a5,a5,-949 # 99adc4b <__CTOR_LIST__-0x126523b9>
1c008ede:	c31c                	sw	a5,0(a4)
1c008ee0:	6705                	lui	a4,0x1
1c008ee2:	954f37b7          	lui	a5,0x954f3
1c008ee6:	88470713          	addi	a4,a4,-1916 # 884 <__CTOR_LIST__-0x1bfff780>
1c008eea:	970a                	add	a4,a4,sp
1c008eec:	91c78793          	addi	a5,a5,-1764 # 954f291c <pulp__FC+0x954f291d>
1c008ef0:	c31c                	sw	a5,0(a4)
1c008ef2:	6705                	lui	a4,0x1
1c008ef4:	787147b7          	lui	a5,0x78714
1c008ef8:	88870713          	addi	a4,a4,-1912 # 888 <__CTOR_LIST__-0x1bfff77c>
1c008efc:	970a                	add	a4,a4,sp
1c008efe:	a7078793          	addi	a5,a5,-1424 # 78713a70 <__l2_shared_end+0x5c703a70>
1c008f02:	c31c                	sw	a5,0(a4)
1c008f04:	6705                	lui	a4,0x1
1c008f06:	958a37b7          	lui	a5,0x958a3
1c008f0a:	88c70713          	addi	a4,a4,-1908 # 88c <__CTOR_LIST__-0x1bfff778>
1c008f0e:	970a                	add	a4,a4,sp
1c008f10:	c8278793          	addi	a5,a5,-894 # 958a2c82 <pulp__FC+0x958a2c83>
1c008f14:	c31c                	sw	a5,0(a4)
1c008f16:	6705                	lui	a4,0x1
1c008f18:	451ea7b7          	lui	a5,0x451ea
1c008f1c:	89070713          	addi	a4,a4,-1904 # 890 <__CTOR_LIST__-0x1bfff774>
1c008f20:	970a                	add	a4,a4,sp
1c008f22:	bb778793          	addi	a5,a5,-1097 # 451e9bb7 <__l2_shared_end+0x291d9bb7>
1c008f26:	c31c                	sw	a5,0(a4)
1c008f28:	6705                	lui	a4,0x1
1c008f2a:	8d99e7b7          	lui	a5,0x8d99e
1c008f2e:	89470713          	addi	a4,a4,-1900 # 894 <__CTOR_LIST__-0x1bfff770>
1c008f32:	970a                	add	a4,a4,sp
1c008f34:	09178793          	addi	a5,a5,145 # 8d99e091 <pulp__FC+0x8d99e092>
1c008f38:	c31c                	sw	a5,0(a4)
1c008f3a:	6705                	lui	a4,0x1
1c008f3c:	c17547b7          	lui	a5,0xc1754
1c008f40:	89870713          	addi	a4,a4,-1896 # 898 <__CTOR_LIST__-0x1bfff76c>
1c008f44:	970a                	add	a4,a4,sp
1c008f46:	88978793          	addi	a5,a5,-1911 # c1753889 <pulp__FC+0xc175388a>
1c008f4a:	c31c                	sw	a5,0(a4)
1c008f4c:	6705                	lui	a4,0x1
1c008f4e:	8ac087b7          	lui	a5,0x8ac08
1c008f52:	89c70713          	addi	a4,a4,-1892 # 89c <__CTOR_LIST__-0x1bfff768>
1c008f56:	970a                	add	a4,a4,sp
1c008f58:	9a878793          	addi	a5,a5,-1624 # 8ac079a8 <pulp__FC+0x8ac079a9>
1c008f5c:	c31c                	sw	a5,0(a4)
1c008f5e:	6705                	lui	a4,0x1
1c008f60:	7dc647b7          	lui	a5,0x7dc64
1c008f64:	8a070713          	addi	a4,a4,-1888 # 8a0 <__CTOR_LIST__-0x1bfff764>
1c008f68:	970a                	add	a4,a4,sp
1c008f6a:	c0778793          	addi	a5,a5,-1017 # 7dc63c07 <__l2_shared_end+0x61c53c07>
1c008f6e:	c31c                	sw	a5,0(a4)
1c008f70:	6705                	lui	a4,0x1
1c008f72:	a7bb27b7          	lui	a5,0xa7bb2
1c008f76:	8a470713          	addi	a4,a4,-1884 # 8a4 <__CTOR_LIST__-0x1bfff760>
1c008f7a:	970a                	add	a4,a4,sp
1c008f7c:	6f478793          	addi	a5,a5,1780 # a7bb26f4 <pulp__FC+0xa7bb26f5>
1c008f80:	c31c                	sw	a5,0(a4)
1c008f82:	6705                	lui	a4,0x1
1c008f84:	e68ac7b7          	lui	a5,0xe68ac
1c008f88:	8a870713          	addi	a4,a4,-1880 # 8a8 <__CTOR_LIST__-0x1bfff75c>
1c008f8c:	970a                	add	a4,a4,sp
1c008f8e:	19278793          	addi	a5,a5,402 # e68ac192 <pulp__FC+0xe68ac193>
1c008f92:	c31c                	sw	a5,0(a4)
1c008f94:	6705                	lui	a4,0x1
1c008f96:	87bb07b7          	lui	a5,0x87bb0
1c008f9a:	8ac70713          	addi	a4,a4,-1876 # 8ac <__CTOR_LIST__-0x1bfff758>
1c008f9e:	970a                	add	a4,a4,sp
1c008fa0:	ec178793          	addi	a5,a5,-319 # 87bafec1 <pulp__FC+0x87bafec2>
1c008fa4:	c31c                	sw	a5,0(a4)
1c008fa6:	6705                	lui	a4,0x1
1c008fa8:	8154f7b7          	lui	a5,0x8154f
1c008fac:	8b070713          	addi	a4,a4,-1872 # 8b0 <__CTOR_LIST__-0x1bfff754>
1c008fb0:	970a                	add	a4,a4,sp
1c008fb2:	c9b78793          	addi	a5,a5,-869 # 8154ec9b <pulp__FC+0x8154ec9c>
1c008fb6:	c31c                	sw	a5,0(a4)
1c008fb8:	6705                	lui	a4,0x1
1c008fba:	a0ff37b7          	lui	a5,0xa0ff3
1c008fbe:	8b470713          	addi	a4,a4,-1868 # 8b4 <__CTOR_LIST__-0x1bfff750>
1c008fc2:	970a                	add	a4,a4,sp
1c008fc4:	a2c78793          	addi	a5,a5,-1492 # a0ff2a2c <pulp__FC+0xa0ff2a2d>
1c008fc8:	c31c                	sw	a5,0(a4)
1c008fca:	6705                	lui	a4,0x1
1c008fcc:	703b97b7          	lui	a5,0x703b9
1c008fd0:	8b870713          	addi	a4,a4,-1864 # 8b8 <__CTOR_LIST__-0x1bfff74c>
1c008fd4:	970a                	add	a4,a4,sp
1c008fd6:	71278793          	addi	a5,a5,1810 # 703b9712 <__l2_shared_end+0x543a9712>
1c008fda:	c31c                	sw	a5,0(a4)
1c008fdc:	6705                	lui	a4,0x1
1c008fde:	278ed7b7          	lui	a5,0x278ed
1c008fe2:	8bc70713          	addi	a4,a4,-1860 # 8bc <__CTOR_LIST__-0x1bfff748>
1c008fe6:	970a                	add	a4,a4,sp
1c008fe8:	40a78793          	addi	a5,a5,1034 # 278ed40a <__l2_shared_end+0xb8dd40a>
1c008fec:	c31c                	sw	a5,0(a4)
1c008fee:	6705                	lui	a4,0x1
1c008ff0:	082887b7          	lui	a5,0x8288
1c008ff4:	8c070713          	addi	a4,a4,-1856 # 8c0 <__CTOR_LIST__-0x1bfff744>
1c008ff8:	970a                	add	a4,a4,sp
1c008ffa:	81078793          	addi	a5,a5,-2032 # 8287810 <__CTOR_LIST__-0x13d787f4>
1c008ffe:	c31c                	sw	a5,0(a4)
1c009000:	6705                	lui	a4,0x1
1c009002:	008627b7          	lui	a5,0x862
1c009006:	8c470713          	addi	a4,a4,-1852 # 8c4 <__CTOR_LIST__-0x1bfff740>
1c00900a:	970a                	add	a4,a4,sp
1c00900c:	66478793          	addi	a5,a5,1636 # 862664 <__CTOR_LIST__-0x1b79d9a0>
1c009010:	c31c                	sw	a5,0(a4)
1c009012:	6705                	lui	a4,0x1
1c009014:	9e30b7b7          	lui	a5,0x9e30b
1c009018:	8c870713          	addi	a4,a4,-1848 # 8c8 <__CTOR_LIST__-0x1bfff73c>
1c00901c:	970a                	add	a4,a4,sp
1c00901e:	aa778793          	addi	a5,a5,-1369 # 9e30aaa7 <pulp__FC+0x9e30aaa8>
1c009022:	c31c                	sw	a5,0(a4)
1c009024:	6705                	lui	a4,0x1
1c009026:	759817b7          	lui	a5,0x75981
1c00902a:	8cc70713          	addi	a4,a4,-1844 # 8cc <__CTOR_LIST__-0x1bfff738>
1c00902e:	970a                	add	a4,a4,sp
1c009030:	0aa78793          	addi	a5,a5,170 # 759810aa <__l2_shared_end+0x599710aa>
1c009034:	c31c                	sw	a5,0(a4)
1c009036:	6705                	lui	a4,0x1
1c009038:	528a17b7          	lui	a5,0x528a1
1c00903c:	8d070713          	addi	a4,a4,-1840 # 8d0 <__CTOR_LIST__-0x1bfff734>
1c009040:	970a                	add	a4,a4,sp
1c009042:	f0a78793          	addi	a5,a5,-246 # 528a0f0a <__l2_shared_end+0x36890f0a>
1c009046:	c31c                	sw	a5,0(a4)
1c009048:	6705                	lui	a4,0x1
1c00904a:	5729c7b7          	lui	a5,0x5729c
1c00904e:	8d470713          	addi	a4,a4,-1836 # 8d4 <__CTOR_LIST__-0x1bfff730>
1c009052:	970a                	add	a4,a4,sp
1c009054:	92e78793          	addi	a5,a5,-1746 # 5729b92e <__l2_shared_end+0x3b28b92e>
1c009058:	c31c                	sw	a5,0(a4)
1c00905a:	6705                	lui	a4,0x1
1c00905c:	782f47b7          	lui	a5,0x782f4
1c009060:	8d870713          	addi	a4,a4,-1832 # 8d8 <__CTOR_LIST__-0x1bfff72c>
1c009064:	970a                	add	a4,a4,sp
1c009066:	17b78793          	addi	a5,a5,379 # 782f417b <__l2_shared_end+0x5c2e417b>
1c00906a:	c31c                	sw	a5,0(a4)
1c00906c:	6705                	lui	a4,0x1
1c00906e:	883667b7          	lui	a5,0x88366
1c009072:	8dc70713          	addi	a4,a4,-1828 # 8dc <__CTOR_LIST__-0x1bfff728>
1c009076:	970a                	add	a4,a4,sp
1c009078:	15578793          	addi	a5,a5,341 # 88366155 <pulp__FC+0x88366156>
1c00907c:	c31c                	sw	a5,0(a4)
1c00907e:	6705                	lui	a4,0x1
1c009080:	c89b37b7          	lui	a5,0xc89b3
1c009084:	8e070713          	addi	a4,a4,-1824 # 8e0 <__CTOR_LIST__-0x1bfff724>
1c009088:	970a                	add	a4,a4,sp
1c00908a:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <pulp__FC+0xc89b2fb8>
1c00908e:	c31c                	sw	a5,0(a4)
1c009090:	6705                	lui	a4,0x1
1c009092:	b91317b7          	lui	a5,0xb9131
1c009096:	8e470713          	addi	a4,a4,-1820 # 8e4 <__CTOR_LIST__-0x1bfff720>
1c00909a:	970a                	add	a4,a4,sp
1c00909c:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <pulp__FC+0xb9130a5d>
1c0090a0:	c31c                	sw	a5,0(a4)
1c0090a2:	6705                	lui	a4,0x1
1c0090a4:	6f5847b7          	lui	a5,0x6f584
1c0090a8:	8e870713          	addi	a4,a4,-1816 # 8e8 <__CTOR_LIST__-0x1bfff71c>
1c0090ac:	970a                	add	a4,a4,sp
1c0090ae:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c0090b2:	c31c                	sw	a5,0(a4)
1c0090b4:	6705                	lui	a4,0x1
1c0090b6:	b1fe87b7          	lui	a5,0xb1fe8
1c0090ba:	8ec70713          	addi	a4,a4,-1812 # 8ec <__CTOR_LIST__-0x1bfff718>
1c0090be:	970a                	add	a4,a4,sp
1c0090c0:	3d578793          	addi	a5,a5,981 # b1fe83d5 <pulp__FC+0xb1fe83d6>
1c0090c4:	c31c                	sw	a5,0(a4)
1c0090c6:	6705                	lui	a4,0x1
1c0090c8:	405b07b7          	lui	a5,0x405b0
1c0090cc:	8f070713          	addi	a4,a4,-1808 # 8f0 <__CTOR_LIST__-0x1bfff714>
1c0090d0:	970a                	add	a4,a4,sp
1c0090d2:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c0090d6:	c31c                	sw	a5,0(a4)
1c0090d8:	6705                	lui	a4,0x1
1c0090da:	433bd7b7          	lui	a5,0x433bd
1c0090de:	8f470713          	addi	a4,a4,-1804 # 8f4 <__CTOR_LIST__-0x1bfff710>
1c0090e2:	970a                	add	a4,a4,sp
1c0090e4:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c0090e8:	c31c                	sw	a5,0(a4)
1c0090ea:	6705                	lui	a4,0x1
1c0090ec:	a45f47b7          	lui	a5,0xa45f4
1c0090f0:	8f870713          	addi	a4,a4,-1800 # 8f8 <__CTOR_LIST__-0x1bfff70c>
1c0090f4:	970a                	add	a4,a4,sp
1c0090f6:	f5478793          	addi	a5,a5,-172 # a45f3f54 <pulp__FC+0xa45f3f55>
1c0090fa:	c31c                	sw	a5,0(a4)
1c0090fc:	6705                	lui	a4,0x1
1c0090fe:	8d6c47b7          	lui	a5,0x8d6c4
1c009102:	8fc70713          	addi	a4,a4,-1796 # 8fc <__CTOR_LIST__-0x1bfff708>
1c009106:	970a                	add	a4,a4,sp
1c009108:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <pulp__FC+0x8d6c43ec>
1c00910c:	1c000537          	lui	a0,0x1c000
1c009110:	c31c                	sw	a5,0(a4)
1c009112:	11c50513          	addi	a0,a0,284 # 1c00011c <__DTOR_END__+0x100>
1c009116:	780020ef          	jal	ra,1c00b896 <puts>
1c00911a:	46010513          	addi	a0,sp,1120
1c00911e:	4a000593          	li	a1,1184
1c009122:	820ff0ef          	jal	ra,1c008142 <printbytes>
1c009126:	6785                	lui	a5,0x1
1c009128:	747d                	lui	s0,0xfffff
1c00912a:	90078793          	addi	a5,a5,-1792 # 900 <__CTOR_LIST__-0x1bfff704>
1c00912e:	978a                	add	a5,a5,sp
1c009130:	70040493          	addi	s1,s0,1792 # fffff700 <pulp__FC+0xfffff701>
1c009134:	72040413          	addi	s0,s0,1824
1c009138:	943e                	add	s0,s0,a5
1c00913a:	94be                	add	s1,s1,a5
1c00913c:	46010613          	addi	a2,sp,1120
1c009140:	85a6                	mv	a1,s1
1c009142:	8522                	mv	a0,s0
1c009144:	109010ef          	jal	ra,1c00aa4c <PQCLEAN_KYBER768_CLEAN_crypto_kem_enc>
1c009148:	1c000537          	lui	a0,0x1c000
1c00914c:	12050513          	addi	a0,a0,288 # 1c000120 <__DTOR_END__+0x104>
1c009150:	746020ef          	jal	ra,1c00b896 <puts>
1c009154:	1c000537          	lui	a0,0x1c000
1c009158:	13450513          	addi	a0,a0,308 # 1c000134 <__DTOR_END__+0x118>
1c00915c:	73a020ef          	jal	ra,1c00b896 <puts>
1c009160:	44000593          	li	a1,1088
1c009164:	8522                	mv	a0,s0
1c009166:	fddfe0ef          	jal	ra,1c008142 <printbytes>
1c00916a:	1c000537          	lui	a0,0x1c000
1c00916e:	13c50513          	addi	a0,a0,316 # 1c00013c <__DTOR_END__+0x120>
1c009172:	724020ef          	jal	ra,1c00b896 <puts>
1c009176:	8526                	mv	a0,s1
1c009178:	02000593          	li	a1,32
1c00917c:	fc7fe0ef          	jal	ra,1c008142 <printbytes>
1c009180:	6115                	addi	sp,sp,288
1c009182:	7ec12083          	lw	ra,2028(sp)
1c009186:	4501                	li	a0,0
1c009188:	7e812403          	lw	s0,2024(sp)
1c00918c:	7e412483          	lw	s1,2020(sp)
1c009190:	7f010113          	addi	sp,sp,2032
1c009194:	8082                	ret

1c009196 <pos_fll_init>:
1c009196:	1101                	addi	sp,sp,-32
1c009198:	1a100637          	lui	a2,0x1a100
1c00919c:	ca26                	sw	s1,20(sp)
1c00919e:	00451693          	slli	a3,a0,0x4
1c0091a2:	00460493          	addi	s1,a2,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c0091a6:	94b6                	add	s1,s1,a3
1c0091a8:	4098                	lw	a4,0(s1)
1c0091aa:	c84a                	sw	s2,16(sp)
1c0091ac:	ce06                	sw	ra,28(sp)
1c0091ae:	cc22                	sw	s0,24(sp)
1c0091b0:	c64e                	sw	s3,12(sp)
1c0091b2:	c452                	sw	s4,8(sp)
1c0091b4:	892a                	mv	s2,a0
1c0091b6:	87ba                	mv	a5,a4
1c0091b8:	04074563          	bltz	a4,1c009202 <pos_fll_init+0x6c>
1c0091bc:	00860593          	addi	a1,a2,8
1c0091c0:	95b6                	add	a1,a1,a3
1c0091c2:	419c                	lw	a5,0(a1)
1c0091c4:	7541                	lui	a0,0xffff0
1c0091c6:	3ff50513          	addi	a0,a0,1023 # ffff03ff <pulp__FC+0xffff0400>
1c0091ca:	8fe9                	and	a5,a5,a0
1c0091cc:	6509                	lui	a0,0x2
1c0091ce:	80050513          	addi	a0,a0,-2048 # 1800 <__CTOR_LIST__-0x1bffe804>
1c0091d2:	8fc9                	or	a5,a5,a0
1c0091d4:	f0010537          	lui	a0,0xf0010
1c0091d8:	157d                	addi	a0,a0,-1
1c0091da:	8fe9                	and	a5,a5,a0
1c0091dc:	00500537          	lui	a0,0x500
1c0091e0:	8fc9                	or	a5,a5,a0
1c0091e2:	0631                	addi	a2,a2,12
1c0091e4:	c19c                	sw	a5,0(a1)
1c0091e6:	96b2                	add	a3,a3,a2
1c0091e8:	429c                	lw	a5,0(a3)
1c0091ea:	fc010637          	lui	a2,0xfc010
1c0091ee:	167d                	addi	a2,a2,-1
1c0091f0:	8ff1                	and	a5,a5,a2
1c0091f2:	014c0637          	lui	a2,0x14c0
1c0091f6:	8fd1                	or	a5,a5,a2
1c0091f8:	c29c                	sw	a5,0(a3)
1c0091fa:	c00007b7          	lui	a5,0xc0000
1c0091fe:	8fd9                	or	a5,a5,a4
1c009200:	c09c                	sw	a5,0(s1)
1c009202:	1c004437          	lui	s0,0x1c004
1c009206:	2b840413          	addi	s0,s0,696 # 1c0042b8 <pos_fll_freq>
1c00920a:	00291993          	slli	s3,s2,0x2
1c00920e:	013406b3          	add	a3,s0,s3
1c009212:	0006aa03          	lw	s4,0(a3)
1c009216:	020a1d63          	bnez	s4,1c009250 <pos_fll_init+0xba>
1c00921a:	83e9                	srli	a5,a5,0x1a
1c00921c:	0742                	slli	a4,a4,0x10
1c00921e:	8341                	srli	a4,a4,0x10
1c009220:	8bbd                	andi	a5,a5,15
1c009222:	073e                	slli	a4,a4,0xf
1c009224:	17fd                	addi	a5,a5,-1
1c009226:	00f75a33          	srl	s4,a4,a5
1c00922a:	1c004537          	lui	a0,0x1c004
1c00922e:	0146a023          	sw	s4,0(a3)
1c009232:	2b050513          	addi	a0,a0,688 # 1c0042b0 <pos_fll_is_on>
1c009236:	954a                	add	a0,a0,s2
1c009238:	4685                	li	a3,1
1c00923a:	00d50023          	sb	a3,0(a0)
1c00923e:	40f2                	lw	ra,28(sp)
1c009240:	4462                	lw	s0,24(sp)
1c009242:	8552                	mv	a0,s4
1c009244:	44d2                	lw	s1,20(sp)
1c009246:	4942                	lw	s2,16(sp)
1c009248:	49b2                	lw	s3,12(sp)
1c00924a:	4a22                	lw	s4,8(sp)
1c00924c:	6105                	addi	sp,sp,32
1c00924e:	8082                	ret
1c009250:	8552                	mv	a0,s4
1c009252:	eb5fe0ef          	jal	ra,1c008106 <__clzsi2>
1c009256:	1579                	addi	a0,a0,-2
1c009258:	00155613          	srli	a2,a0,0x1
1c00925c:	e631                	bnez	a2,1c0092a8 <pos_fll_init+0x112>
1c00925e:	4709                	li	a4,2
1c009260:	4585                	li	a1,1
1c009262:	4605                	li	a2,1
1c009264:	00ca17b3          	sll	a5,s4,a2
1c009268:	76e1                	lui	a3,0xffff8
1c00926a:	1c004537          	lui	a0,0x1c004
1c00926e:	8efd                	and	a3,a3,a5
1c009270:	2b050513          	addi	a0,a0,688 # 1c0042b0 <pos_fll_is_on>
1c009274:	96ae                	add	a3,a3,a1
1c009276:	012505b3          	add	a1,a0,s2
1c00927a:	00c6d6b3          	srl	a3,a3,a2
1c00927e:	944e                	add	s0,s0,s3
1c009280:	0005c603          	lbu	a2,0(a1)
1c009284:	c014                	sw	a3,0(s0)
1c009286:	da45                	beqz	a2,1c009236 <pos_fll_init+0xa0>
1c009288:	4094                	lw	a3,0(s1)
1c00928a:	83bd                	srli	a5,a5,0xf
1c00928c:	07c2                	slli	a5,a5,0x10
1c00928e:	7641                	lui	a2,0xffff0
1c009290:	83c1                	srli	a5,a5,0x10
1c009292:	8ef1                	and	a3,a3,a2
1c009294:	8edd                	or	a3,a3,a5
1c009296:	c40007b7          	lui	a5,0xc4000
1c00929a:	8b3d                	andi	a4,a4,15
1c00929c:	17fd                	addi	a5,a5,-1
1c00929e:	076a                	slli	a4,a4,0x1a
1c0092a0:	8efd                	and	a3,a3,a5
1c0092a2:	8ed9                	or	a3,a3,a4
1c0092a4:	c094                	sw	a3,0(s1)
1c0092a6:	bf41                	j	1c009236 <pos_fll_init+0xa0>
1c0092a8:	fff60593          	addi	a1,a2,-1 # fffeffff <pulp__FC+0xffff0000>
1c0092ac:	4685                	li	a3,1
1c0092ae:	00b695b3          	sll	a1,a3,a1
1c0092b2:	00160713          	addi	a4,a2,1
1c0092b6:	b77d                	j	1c009264 <pos_fll_init+0xce>

1c0092b8 <pos_fll_constructor>:
1c0092b8:	1c0047b7          	lui	a5,0x1c004
1c0092bc:	2b878793          	addi	a5,a5,696 # 1c0042b8 <pos_fll_freq>
1c0092c0:	0007a023          	sw	zero,0(a5)
1c0092c4:	0007a223          	sw	zero,4(a5)
1c0092c8:	1c0047b7          	lui	a5,0x1c004
1c0092cc:	2a079823          	sh	zero,688(a5) # 1c0042b0 <pos_fll_is_on>
1c0092d0:	8082                	ret

1c0092d2 <pos_soc_init>:
1c0092d2:	1141                	addi	sp,sp,-16
1c0092d4:	c606                	sw	ra,12(sp)
1c0092d6:	c422                	sw	s0,8(sp)
1c0092d8:	37c5                	jal	1c0092b8 <pos_fll_constructor>
1c0092da:	4501                	li	a0,0
1c0092dc:	3d6d                	jal	1c009196 <pos_fll_init>
1c0092de:	1c004437          	lui	s0,0x1c004
1c0092e2:	2ca42023          	sw	a0,704(s0) # 1c0042c0 <pos_freq_domains>
1c0092e6:	4505                	li	a0,1
1c0092e8:	357d                	jal	1c009196 <pos_fll_init>
1c0092ea:	2c040413          	addi	s0,s0,704
1c0092ee:	c408                	sw	a0,8(s0)
1c0092f0:	40b2                	lw	ra,12(sp)
1c0092f2:	4422                	lw	s0,8(sp)
1c0092f4:	0141                	addi	sp,sp,16
1c0092f6:	8082                	ret

1c0092f8 <KeccakF1600_StatePermute>:
1c0092f8:	1a4007b7          	lui	a5,0x1a400
1c0092fc:	1141                	addi	sp,sp,-16
1c0092fe:	0c878693          	addi	a3,a5,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c009302:	4118                	lw	a4,0(a0)
1c009304:	0791                	addi	a5,a5,4
1c009306:	fee7ae23          	sw	a4,-4(a5)
1c00930a:	0511                	addi	a0,a0,4
1c00930c:	fed79be3          	bne	a5,a3,1c009302 <KeccakF1600_StatePermute+0xa>
1c009310:	1a4007b7          	lui	a5,0x1a400
1c009314:	4705                	li	a4,1
1c009316:	18e7a823          	sw	a4,400(a5) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c00931a:	1a400737          	lui	a4,0x1a400
1c00931e:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c009322:	8b85                	andi	a5,a5,1
1c009324:	dfed                	beqz	a5,1c00931e <KeccakF1600_StatePermute+0x26>
1c009326:	c602                	sw	zero,12(sp)
1c009328:	4732                	lw	a4,12(sp)
1c00932a:	03100793          	li	a5,49
1c00932e:	02e7c663          	blt	a5,a4,1c00935a <KeccakF1600_StatePermute+0x62>
1c009332:	1a400637          	lui	a2,0x1a400
1c009336:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c00933a:	03100513          	li	a0,49
1c00933e:	4732                	lw	a4,12(sp)
1c009340:	47b2                	lw	a5,12(sp)
1c009342:	070a                	slli	a4,a4,0x2
1c009344:	9732                	add	a4,a4,a2
1c009346:	4314                	lw	a3,0(a4)
1c009348:	4732                	lw	a4,12(sp)
1c00934a:	078a                	slli	a5,a5,0x2
1c00934c:	0705                	addi	a4,a4,1
1c00934e:	c63a                	sw	a4,12(sp)
1c009350:	97ae                	add	a5,a5,a1
1c009352:	4732                	lw	a4,12(sp)
1c009354:	c394                	sw	a3,0(a5)
1c009356:	fee554e3          	ble	a4,a0,1c00933e <KeccakF1600_StatePermute+0x46>
1c00935a:	0141                	addi	sp,sp,16
1c00935c:	8082                	ret

1c00935e <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c00935e:	1141                	addi	sp,sp,-16
1c009360:	55555337          	lui	t1,0x55555
1c009364:	68c1                	lui	a7,0x10
1c009366:	c622                	sw	s0,12(sp)
1c009368:	c426                	sw	s1,8(sp)
1c00936a:	c24a                	sw	s2,4(sp)
1c00936c:	20050e13          	addi	t3,a0,512
1c009370:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009374:	18fd                	addi	a7,a7,-1
1c009376:	419c                	lw	a5,0(a1)
1c009378:	0541                	addi	a0,a0,16
1c00937a:	0017d713          	srli	a4,a5,0x1
1c00937e:	00677733          	and	a4,a4,t1
1c009382:	0067f7b3          	and	a5,a5,t1
1c009386:	97ba                	add	a5,a5,a4
1c009388:	0027d913          	srli	s2,a5,0x2
1c00938c:	0087d693          	srli	a3,a5,0x8
1c009390:	00a7d493          	srli	s1,a5,0xa
1c009394:	0107d713          	srli	a4,a5,0x10
1c009398:	0127d413          	srli	s0,a5,0x12
1c00939c:	0037f613          	andi	a2,a5,3
1c0093a0:	00397913          	andi	s2,s2,3
1c0093a4:	8a8d                	andi	a3,a3,3
1c0093a6:	888d                	andi	s1,s1,3
1c0093a8:	8b0d                	andi	a4,a4,3
1c0093aa:	880d                	andi	s0,s0,3
1c0093ac:	0047df13          	srli	t5,a5,0x4
1c0093b0:	0067d393          	srli	t2,a5,0x6
1c0093b4:	00c7de93          	srli	t4,a5,0xc
1c0093b8:	00e7d293          	srli	t0,a5,0xe
1c0093bc:	0147d813          	srli	a6,a5,0x14
1c0093c0:	0167df93          	srli	t6,a5,0x16
1c0093c4:	41260633          	sub	a2,a2,s2
1c0093c8:	8e85                	sub	a3,a3,s1
1c0093ca:	8f01                	sub	a4,a4,s0
1c0093cc:	0033f393          	andi	t2,t2,3
1c0093d0:	0032f293          	andi	t0,t0,3
1c0093d4:	003fff93          	andi	t6,t6,3
1c0093d8:	003f7f13          	andi	t5,t5,3
1c0093dc:	003efe93          	andi	t4,t4,3
1c0093e0:	00387813          	andi	a6,a6,3
1c0093e4:	0642                	slli	a2,a2,0x10
1c0093e6:	06c2                	slli	a3,a3,0x10
1c0093e8:	0742                	slli	a4,a4,0x10
1c0093ea:	407f0f33          	sub	t5,t5,t2
1c0093ee:	405e8eb3          	sub	t4,t4,t0
1c0093f2:	41f80833          	sub	a6,a6,t6
1c0093f6:	0187d293          	srli	t0,a5,0x18
1c0093fa:	01a7d393          	srli	t2,a5,0x1a
1c0093fe:	01c7df93          	srli	t6,a5,0x1c
1c009402:	8241                	srli	a2,a2,0x10
1c009404:	82c1                	srli	a3,a3,0x10
1c009406:	8341                	srli	a4,a4,0x10
1c009408:	0842                	slli	a6,a6,0x10
1c00940a:	0f42                	slli	t5,t5,0x10
1c00940c:	01167633          	and	a2,a2,a7
1c009410:	0ec2                	slli	t4,t4,0x10
1c009412:	0116f6b3          	and	a3,a3,a7
1c009416:	01177733          	and	a4,a4,a7
1c00941a:	0032f293          	andi	t0,t0,3
1c00941e:	0033f393          	andi	t2,t2,3
1c009422:	003fff93          	andi	t6,t6,3
1c009426:	83f9                	srli	a5,a5,0x1e
1c009428:	01076733          	or	a4,a4,a6
1c00942c:	01e66633          	or	a2,a2,t5
1c009430:	01d6e6b3          	or	a3,a3,t4
1c009434:	40728833          	sub	a6,t0,t2
1c009438:	40ff87b3          	sub	a5,t6,a5
1c00943c:	fec52823          	sw	a2,-16(a0)
1c009440:	fed52a23          	sw	a3,-12(a0)
1c009444:	fee52c23          	sw	a4,-8(a0)
1c009448:	ff051e23          	sh	a6,-4(a0)
1c00944c:	fef51f23          	sh	a5,-2(a0)
1c009450:	0591                	addi	a1,a1,4
1c009452:	f3c512e3          	bne	a0,t3,1c009376 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c009456:	4432                	lw	s0,12(sp)
1c009458:	44a2                	lw	s1,8(sp)
1c00945a:	4912                	lw	s2,4(sp)
1c00945c:	0141                	addi	sp,sp,16
1c00945e:	8082                	ret

1c009460 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>:
1c009460:	1141                	addi	sp,sp,-16
1c009462:	55555337          	lui	t1,0x55555
1c009466:	68c1                	lui	a7,0x10
1c009468:	c622                	sw	s0,12(sp)
1c00946a:	c426                	sw	s1,8(sp)
1c00946c:	c24a                	sw	s2,4(sp)
1c00946e:	20050e13          	addi	t3,a0,512
1c009472:	55530313          	addi	t1,t1,1365 # 55555555 <__l2_shared_end+0x39545555>
1c009476:	18fd                	addi	a7,a7,-1
1c009478:	419c                	lw	a5,0(a1)
1c00947a:	0541                	addi	a0,a0,16
1c00947c:	0017d713          	srli	a4,a5,0x1
1c009480:	00677733          	and	a4,a4,t1
1c009484:	0067f7b3          	and	a5,a5,t1
1c009488:	97ba                	add	a5,a5,a4
1c00948a:	0027d913          	srli	s2,a5,0x2
1c00948e:	0087d693          	srli	a3,a5,0x8
1c009492:	00a7d493          	srli	s1,a5,0xa
1c009496:	0107d713          	srli	a4,a5,0x10
1c00949a:	0127d413          	srli	s0,a5,0x12
1c00949e:	0037f613          	andi	a2,a5,3
1c0094a2:	00397913          	andi	s2,s2,3
1c0094a6:	8a8d                	andi	a3,a3,3
1c0094a8:	888d                	andi	s1,s1,3
1c0094aa:	8b0d                	andi	a4,a4,3
1c0094ac:	880d                	andi	s0,s0,3
1c0094ae:	0047df13          	srli	t5,a5,0x4
1c0094b2:	0067d393          	srli	t2,a5,0x6
1c0094b6:	00c7de93          	srli	t4,a5,0xc
1c0094ba:	00e7d293          	srli	t0,a5,0xe
1c0094be:	0147d813          	srli	a6,a5,0x14
1c0094c2:	0167df93          	srli	t6,a5,0x16
1c0094c6:	41260633          	sub	a2,a2,s2
1c0094ca:	8e85                	sub	a3,a3,s1
1c0094cc:	8f01                	sub	a4,a4,s0
1c0094ce:	0033f393          	andi	t2,t2,3
1c0094d2:	0032f293          	andi	t0,t0,3
1c0094d6:	003fff93          	andi	t6,t6,3
1c0094da:	003f7f13          	andi	t5,t5,3
1c0094de:	003efe93          	andi	t4,t4,3
1c0094e2:	00387813          	andi	a6,a6,3
1c0094e6:	0642                	slli	a2,a2,0x10
1c0094e8:	06c2                	slli	a3,a3,0x10
1c0094ea:	0742                	slli	a4,a4,0x10
1c0094ec:	407f0f33          	sub	t5,t5,t2
1c0094f0:	405e8eb3          	sub	t4,t4,t0
1c0094f4:	41f80833          	sub	a6,a6,t6
1c0094f8:	0187d293          	srli	t0,a5,0x18
1c0094fc:	01a7d393          	srli	t2,a5,0x1a
1c009500:	01c7df93          	srli	t6,a5,0x1c
1c009504:	8241                	srli	a2,a2,0x10
1c009506:	82c1                	srli	a3,a3,0x10
1c009508:	8341                	srli	a4,a4,0x10
1c00950a:	0842                	slli	a6,a6,0x10
1c00950c:	0f42                	slli	t5,t5,0x10
1c00950e:	01167633          	and	a2,a2,a7
1c009512:	0ec2                	slli	t4,t4,0x10
1c009514:	0116f6b3          	and	a3,a3,a7
1c009518:	01177733          	and	a4,a4,a7
1c00951c:	0032f293          	andi	t0,t0,3
1c009520:	0033f393          	andi	t2,t2,3
1c009524:	003fff93          	andi	t6,t6,3
1c009528:	83f9                	srli	a5,a5,0x1e
1c00952a:	01076733          	or	a4,a4,a6
1c00952e:	01e66633          	or	a2,a2,t5
1c009532:	01d6e6b3          	or	a3,a3,t4
1c009536:	40728833          	sub	a6,t0,t2
1c00953a:	40ff87b3          	sub	a5,t6,a5
1c00953e:	fec52823          	sw	a2,-16(a0)
1c009542:	fed52a23          	sw	a3,-12(a0)
1c009546:	fee52c23          	sw	a4,-8(a0)
1c00954a:	ff051e23          	sh	a6,-4(a0)
1c00954e:	fef51f23          	sh	a5,-2(a0)
1c009552:	0591                	addi	a1,a1,4
1c009554:	f3c512e3          	bne	a0,t3,1c009478 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2+0x18>
1c009558:	4432                	lw	s0,12(sp)
1c00955a:	44a2                	lw	s1,8(sp)
1c00955c:	4912                	lw	s2,4(sp)
1c00955e:	0141                	addi	sp,sp,16
1c009560:	8082                	ret

1c009562 <keccak_absorb.constprop.7>:
1c009562:	7151                	addi	sp,sp,-240
1c009564:	d3a6                	sw	s1,228(sp)
1c009566:	cfce                	sw	s3,220(sp)
1c009568:	cdd2                	sw	s4,216(sp)
1c00956a:	cbd6                	sw	s5,212(sp)
1c00956c:	d786                	sw	ra,236(sp)
1c00956e:	d5a2                	sw	s0,232(sp)
1c009570:	d1ca                	sw	s2,224(sp)
1c009572:	89aa                	mv	s3,a0
1c009574:	8a32                	mv	s4,a2
1c009576:	84b6                	mv	s1,a3
1c009578:	8aaa                	mv	s5,a0
1c00957a:	0c850713          	addi	a4,a0,200
1c00957e:	87aa                	mv	a5,a0
1c009580:	4601                	li	a2,0
1c009582:	4681                	li	a3,0
1c009584:	c390                	sw	a2,0(a5)
1c009586:	c3d4                	sw	a3,4(a5)
1c009588:	07a1                	addi	a5,a5,8
1c00958a:	fef71be3          	bne	a4,a5,1c009580 <keccak_absorb.constprop.7+0x1e>
1c00958e:	08700793          	li	a5,135
1c009592:	0747fb63          	bleu	s4,a5,1c009608 <keccak_absorb.constprop.7+0xa6>
1c009596:	08700413          	li	s0,135
1c00959a:	08858913          	addi	s2,a1,136
1c00959e:	874e                	mv	a4,s3
1c0095a0:	0015c783          	lbu	a5,1(a1)
1c0095a4:	0025c603          	lbu	a2,2(a1)
1c0095a8:	0055c883          	lbu	a7,5(a1)
1c0095ac:	0045c303          	lbu	t1,4(a1)
1c0095b0:	0065c803          	lbu	a6,6(a1)
1c0095b4:	0005ce03          	lbu	t3,0(a1)
1c0095b8:	0035c503          	lbu	a0,3(a1)
1c0095bc:	0075c683          	lbu	a3,7(a1)
1c0095c0:	0642                	slli	a2,a2,0x10
1c0095c2:	07a2                	slli	a5,a5,0x8
1c0095c4:	08a2                	slli	a7,a7,0x8
1c0095c6:	8fd1                	or	a5,a5,a2
1c0095c8:	0068e8b3          	or	a7,a7,t1
1c0095cc:	0842                	slli	a6,a6,0x10
1c0095ce:	00072303          	lw	t1,0(a4)
1c0095d2:	4350                	lw	a2,4(a4)
1c0095d4:	01c7e7b3          	or	a5,a5,t3
1c0095d8:	0562                	slli	a0,a0,0x18
1c0095da:	01186833          	or	a6,a6,a7
1c0095de:	06e2                	slli	a3,a3,0x18
1c0095e0:	8fc9                	or	a5,a5,a0
1c0095e2:	0106e6b3          	or	a3,a3,a6
1c0095e6:	00f347b3          	xor	a5,t1,a5
1c0095ea:	8eb1                	xor	a3,a3,a2
1c0095ec:	c31c                	sw	a5,0(a4)
1c0095ee:	c354                	sw	a3,4(a4)
1c0095f0:	05a1                	addi	a1,a1,8
1c0095f2:	0721                	addi	a4,a4,8
1c0095f4:	fab916e3          	bne	s2,a1,1c0095a0 <keccak_absorb.constprop.7+0x3e>
1c0095f8:	85ce                	mv	a1,s3
1c0095fa:	854e                	mv	a0,s3
1c0095fc:	39f5                	jal	1c0092f8 <KeccakF1600_StatePermute>
1c0095fe:	f78a0a13          	addi	s4,s4,-136
1c009602:	85ca                	mv	a1,s2
1c009604:	f9446be3          	bltu	s0,s4,1c00959a <keccak_absorb.constprop.7+0x38>
1c009608:	003c                	addi	a5,sp,8
1c00960a:	0918                	addi	a4,sp,144
1c00960c:	883e                	mv	a6,a5
1c00960e:	4681                	li	a3,0
1c009610:	00d82023          	sw	a3,0(a6)
1c009614:	0811                	addi	a6,a6,4
1c009616:	ff071ce3          	bne	a4,a6,1c00960e <keccak_absorb.constprop.7+0xac>
1c00961a:	060a0463          	beqz	s4,1c009682 <keccak_absorb.constprop.7+0x120>
1c00961e:	fffa0713          	addi	a4,s4,-1
1c009622:	4689                	li	a3,2
1c009624:	0ee6f163          	bleu	a4,a3,1c009706 <keccak_absorb.constprop.7+0x1a4>
1c009628:	002a5893          	srli	a7,s4,0x2
1c00962c:	862e                	mv	a2,a1
1c00962e:	86be                	mv	a3,a5
1c009630:	4701                	li	a4,0
1c009632:	4208                	lw	a0,0(a2)
1c009634:	0705                	addi	a4,a4,1
1c009636:	c288                	sw	a0,0(a3)
1c009638:	0611                	addi	a2,a2,4
1c00963a:	0691                	addi	a3,a3,4
1c00963c:	ff176be3          	bltu	a4,a7,1c009632 <keccak_absorb.constprop.7+0xd0>
1c009640:	ffca7713          	andi	a4,s4,-4
1c009644:	02ea0f63          	beq	s4,a4,1c009682 <keccak_absorb.constprop.7+0x120>
1c009648:	00e586b3          	add	a3,a1,a4
1c00964c:	0006c603          	lbu	a2,0(a3) # ffff8000 <pulp__FC+0xffff8001>
1c009650:	0988                	addi	a0,sp,208
1c009652:	00e506b3          	add	a3,a0,a4
1c009656:	f2c68c23          	sb	a2,-200(a3)
1c00965a:	00170693          	addi	a3,a4,1
1c00965e:	0346f263          	bleu	s4,a3,1c009682 <keccak_absorb.constprop.7+0x120>
1c009662:	00d58633          	add	a2,a1,a3
1c009666:	00064603          	lbu	a2,0(a2)
1c00966a:	96aa                	add	a3,a3,a0
1c00966c:	f2c68c23          	sb	a2,-200(a3)
1c009670:	0709                	addi	a4,a4,2
1c009672:	01477863          	bleu	s4,a4,1c009682 <keccak_absorb.constprop.7+0x120>
1c009676:	95ba                	add	a1,a1,a4
1c009678:	0005c683          	lbu	a3,0(a1)
1c00967c:	972a                	add	a4,a4,a0
1c00967e:	f2d70c23          	sb	a3,-200(a4)
1c009682:	0990                	addi	a2,sp,208
1c009684:	9a32                	add	s4,s4,a2
1c009686:	f29a0c23          	sb	s1,-200(s4)
1c00968a:	08f14703          	lbu	a4,143(sp)
1c00968e:	f8076713          	ori	a4,a4,-128
1c009692:	08e107a3          	sb	a4,143(sp)
1c009696:	0017c703          	lbu	a4,1(a5)
1c00969a:	0027c883          	lbu	a7,2(a5)
1c00969e:	0057c503          	lbu	a0,5(a5)
1c0096a2:	0047c303          	lbu	t1,4(a5)
1c0096a6:	0067c583          	lbu	a1,6(a5)
1c0096aa:	0007ce03          	lbu	t3,0(a5)
1c0096ae:	0037c603          	lbu	a2,3(a5)
1c0096b2:	0077c683          	lbu	a3,7(a5)
1c0096b6:	08c2                	slli	a7,a7,0x10
1c0096b8:	0722                	slli	a4,a4,0x8
1c0096ba:	0522                	slli	a0,a0,0x8
1c0096bc:	01176733          	or	a4,a4,a7
1c0096c0:	00656533          	or	a0,a0,t1
1c0096c4:	05c2                	slli	a1,a1,0x10
1c0096c6:	000aa303          	lw	t1,0(s5)
1c0096ca:	004aa883          	lw	a7,4(s5)
1c0096ce:	01c76733          	or	a4,a4,t3
1c0096d2:	0662                	slli	a2,a2,0x18
1c0096d4:	8dc9                	or	a1,a1,a0
1c0096d6:	06e2                	slli	a3,a3,0x18
1c0096d8:	8f51                	or	a4,a4,a2
1c0096da:	8ecd                	or	a3,a3,a1
1c0096dc:	00e34733          	xor	a4,t1,a4
1c0096e0:	00d8c6b3          	xor	a3,a7,a3
1c0096e4:	00eaa023          	sw	a4,0(s5)
1c0096e8:	00daa223          	sw	a3,4(s5)
1c0096ec:	07a1                	addi	a5,a5,8
1c0096ee:	0aa1                	addi	s5,s5,8
1c0096f0:	faf813e3          	bne	a6,a5,1c009696 <keccak_absorb.constprop.7+0x134>
1c0096f4:	50be                	lw	ra,236(sp)
1c0096f6:	542e                	lw	s0,232(sp)
1c0096f8:	549e                	lw	s1,228(sp)
1c0096fa:	590e                	lw	s2,224(sp)
1c0096fc:	49fe                	lw	s3,220(sp)
1c0096fe:	4a6e                	lw	s4,216(sp)
1c009700:	4ade                	lw	s5,212(sp)
1c009702:	616d                	addi	sp,sp,240
1c009704:	8082                	ret
1c009706:	4701                	li	a4,0
1c009708:	b781                	j	1c009648 <keccak_absorb.constprop.7+0xe6>

1c00970a <shake128_absorb>:
1c00970a:	7151                	addi	sp,sp,-240
1c00970c:	d5a2                	sw	s0,232(sp)
1c00970e:	842a                	mv	s0,a0
1c009710:	0c800513          	li	a0,200
1c009714:	d1ca                	sw	s2,224(sp)
1c009716:	cfce                	sw	s3,220(sp)
1c009718:	d786                	sw	ra,236(sp)
1c00971a:	d3a6                	sw	s1,228(sp)
1c00971c:	cdd2                	sw	s4,216(sp)
1c00971e:	892e                	mv	s2,a1
1c009720:	89b2                	mv	s3,a2
1c009722:	368030ef          	jal	ra,1c00ca8a <pi_l2_malloc>
1c009726:	c008                	sw	a0,0(s0)
1c009728:	1a050663          	beqz	a0,1c0098d4 <shake128_absorb+0x1ca>
1c00972c:	8a2a                	mv	s4,a0
1c00972e:	0c850713          	addi	a4,a0,200
1c009732:	87aa                	mv	a5,a0
1c009734:	4601                	li	a2,0
1c009736:	4681                	li	a3,0
1c009738:	c390                	sw	a2,0(a5)
1c00973a:	c3d4                	sw	a3,4(a5)
1c00973c:	07a1                	addi	a5,a5,8
1c00973e:	fef71be3          	bne	a4,a5,1c009734 <shake128_absorb+0x2a>
1c009742:	0a700793          	li	a5,167
1c009746:	0937f163          	bleu	s3,a5,1c0097c8 <shake128_absorb+0xbe>
1c00974a:	412a04b3          	sub	s1,s4,s2
1c00974e:	0a700413          	li	s0,167
1c009752:	85ca                	mv	a1,s2
1c009754:	0a890913          	addi	s2,s2,168
1c009758:	0015c783          	lbu	a5,1(a1)
1c00975c:	0025c603          	lbu	a2,2(a1)
1c009760:	0055c803          	lbu	a6,5(a1)
1c009764:	0045c303          	lbu	t1,4(a1)
1c009768:	0065c503          	lbu	a0,6(a1)
1c00976c:	0005ce03          	lbu	t3,0(a1)
1c009770:	0035c683          	lbu	a3,3(a1)
1c009774:	0075c703          	lbu	a4,7(a1)
1c009778:	0642                	slli	a2,a2,0x10
1c00977a:	07a2                	slli	a5,a5,0x8
1c00977c:	0822                	slli	a6,a6,0x8
1c00977e:	00b488b3          	add	a7,s1,a1
1c009782:	8fd1                	or	a5,a5,a2
1c009784:	00686833          	or	a6,a6,t1
1c009788:	0542                	slli	a0,a0,0x10
1c00978a:	0008a603          	lw	a2,0(a7) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00978e:	0048a303          	lw	t1,4(a7)
1c009792:	01c7e7b3          	or	a5,a5,t3
1c009796:	06e2                	slli	a3,a3,0x18
1c009798:	01056533          	or	a0,a0,a6
1c00979c:	0762                	slli	a4,a4,0x18
1c00979e:	8fd5                	or	a5,a5,a3
1c0097a0:	8f49                	or	a4,a4,a0
1c0097a2:	8fb1                	xor	a5,a5,a2
1c0097a4:	00e34733          	xor	a4,t1,a4
1c0097a8:	00f8a023          	sw	a5,0(a7)
1c0097ac:	00e8a223          	sw	a4,4(a7)
1c0097b0:	05a1                	addi	a1,a1,8
1c0097b2:	fab913e3          	bne	s2,a1,1c009758 <shake128_absorb+0x4e>
1c0097b6:	85d2                	mv	a1,s4
1c0097b8:	8552                	mv	a0,s4
1c0097ba:	f5898993          	addi	s3,s3,-168
1c0097be:	3e2d                	jal	1c0092f8 <KeccakF1600_StatePermute>
1c0097c0:	f5848493          	addi	s1,s1,-168
1c0097c4:	f93467e3          	bltu	s0,s3,1c009752 <shake128_absorb+0x48>
1c0097c8:	191c                	addi	a5,sp,176
1c0097ca:	00810813          	addi	a6,sp,8
1c0097ce:	4681                	li	a3,0
1c0097d0:	00d82023          	sw	a3,0(a6)
1c0097d4:	0811                	addi	a6,a6,4
1c0097d6:	ff079ce3          	bne	a5,a6,1c0097ce <shake128_absorb+0xc4>
1c0097da:	06098563          	beqz	s3,1c009844 <shake128_absorb+0x13a>
1c0097de:	fff98793          	addi	a5,s3,-1
1c0097e2:	4709                	li	a4,2
1c0097e4:	0ef77663          	bleu	a5,a4,1c0098d0 <shake128_absorb+0x1c6>
1c0097e8:	0029d513          	srli	a0,s3,0x2
1c0097ec:	86ca                	mv	a3,s2
1c0097ee:	0038                	addi	a4,sp,8
1c0097f0:	4781                	li	a5,0
1c0097f2:	4290                	lw	a2,0(a3)
1c0097f4:	0785                	addi	a5,a5,1
1c0097f6:	c310                	sw	a2,0(a4)
1c0097f8:	0691                	addi	a3,a3,4
1c0097fa:	0711                	addi	a4,a4,4
1c0097fc:	fea7ebe3          	bltu	a5,a0,1c0097f2 <shake128_absorb+0xe8>
1c009800:	ffc9f793          	andi	a5,s3,-4
1c009804:	04f98063          	beq	s3,a5,1c009844 <shake128_absorb+0x13a>
1c009808:	00f90733          	add	a4,s2,a5
1c00980c:	00074683          	lbu	a3,0(a4)
1c009810:	0990                	addi	a2,sp,208
1c009812:	00f60733          	add	a4,a2,a5
1c009816:	f2d70c23          	sb	a3,-200(a4)
1c00981a:	00178713          	addi	a4,a5,1
1c00981e:	03377363          	bleu	s3,a4,1c009844 <shake128_absorb+0x13a>
1c009822:	00e906b3          	add	a3,s2,a4
1c009826:	0006c683          	lbu	a3,0(a3)
1c00982a:	9732                	add	a4,a4,a2
1c00982c:	f2d70c23          	sb	a3,-200(a4)
1c009830:	0789                	addi	a5,a5,2
1c009832:	0137f963          	bleu	s3,a5,1c009844 <shake128_absorb+0x13a>
1c009836:	00f905b3          	add	a1,s2,a5
1c00983a:	0005c703          	lbu	a4,0(a1)
1c00983e:	97b2                	add	a5,a5,a2
1c009840:	f2e78c23          	sb	a4,-200(a5)
1c009844:	0994                	addi	a3,sp,208
1c009846:	47fd                	li	a5,31
1c009848:	99b6                	add	s3,s3,a3
1c00984a:	f2f98c23          	sb	a5,-200(s3)
1c00984e:	0af14703          	lbu	a4,175(sp)
1c009852:	003c                	addi	a5,sp,8
1c009854:	f8076713          	ori	a4,a4,-128
1c009858:	0ae107a3          	sb	a4,175(sp)
1c00985c:	40fa0a33          	sub	s4,s4,a5
1c009860:	0017c703          	lbu	a4,1(a5)
1c009864:	0027c303          	lbu	t1,2(a5)
1c009868:	0057c503          	lbu	a0,5(a5)
1c00986c:	0047ce03          	lbu	t3,4(a5)
1c009870:	0067c583          	lbu	a1,6(a5)
1c009874:	0007ce83          	lbu	t4,0(a5)
1c009878:	0037c603          	lbu	a2,3(a5)
1c00987c:	0077c683          	lbu	a3,7(a5)
1c009880:	0342                	slli	t1,t1,0x10
1c009882:	0722                	slli	a4,a4,0x8
1c009884:	0522                	slli	a0,a0,0x8
1c009886:	00fa08b3          	add	a7,s4,a5
1c00988a:	00676733          	or	a4,a4,t1
1c00988e:	01c56533          	or	a0,a0,t3
1c009892:	05c2                	slli	a1,a1,0x10
1c009894:	0008ae03          	lw	t3,0(a7)
1c009898:	0048a303          	lw	t1,4(a7)
1c00989c:	01d76733          	or	a4,a4,t4
1c0098a0:	0662                	slli	a2,a2,0x18
1c0098a2:	8dc9                	or	a1,a1,a0
1c0098a4:	06e2                	slli	a3,a3,0x18
1c0098a6:	8f51                	or	a4,a4,a2
1c0098a8:	8ecd                	or	a3,a3,a1
1c0098aa:	00ee4733          	xor	a4,t3,a4
1c0098ae:	00d346b3          	xor	a3,t1,a3
1c0098b2:	00e8a023          	sw	a4,0(a7)
1c0098b6:	00d8a223          	sw	a3,4(a7)
1c0098ba:	07a1                	addi	a5,a5,8
1c0098bc:	faf812e3          	bne	a6,a5,1c009860 <shake128_absorb+0x156>
1c0098c0:	50be                	lw	ra,236(sp)
1c0098c2:	542e                	lw	s0,232(sp)
1c0098c4:	549e                	lw	s1,228(sp)
1c0098c6:	590e                	lw	s2,224(sp)
1c0098c8:	49fe                	lw	s3,220(sp)
1c0098ca:	4a6e                	lw	s4,216(sp)
1c0098cc:	616d                	addi	sp,sp,240
1c0098ce:	8082                	ret
1c0098d0:	4781                	li	a5,0
1c0098d2:	bf1d                	j	1c009808 <shake128_absorb+0xfe>
1c0098d4:	06f00513          	li	a0,111
1c0098d8:	064020ef          	jal	ra,1c00b93c <exit>

1c0098dc <shake128_squeezeblocks>:
1c0098dc:	1101                	addi	sp,sp,-32
1c0098de:	c452                	sw	s4,8(sp)
1c0098e0:	ce06                	sw	ra,28(sp)
1c0098e2:	cc22                	sw	s0,24(sp)
1c0098e4:	ca26                	sw	s1,20(sp)
1c0098e6:	c84a                	sw	s2,16(sp)
1c0098e8:	c64e                	sw	s3,12(sp)
1c0098ea:	c256                	sw	s5,4(sp)
1c0098ec:	00062a03          	lw	s4,0(a2)
1c0098f0:	cdc9                	beqz	a1,1c00998a <shake128_squeezeblocks+0xae>
1c0098f2:	7941                	lui	s2,0xffff0
1c0098f4:	ff0104b7          	lui	s1,0xff010
1c0098f8:	01000437          	lui	s0,0x1000
1c0098fc:	89ae                	mv	s3,a1
1c0098fe:	8aaa                	mv	s5,a0
1c009900:	0ff90913          	addi	s2,s2,255 # ffff00ff <pulp__FC+0xffff0100>
1c009904:	14fd                	addi	s1,s1,-1
1c009906:	147d                	addi	s0,s0,-1
1c009908:	85d2                	mv	a1,s4
1c00990a:	8552                	mv	a0,s4
1c00990c:	32f5                	jal	1c0092f8 <KeccakF1600_StatePermute>
1c00990e:	85d6                	mv	a1,s5
1c009910:	8852                	mv	a6,s4
1c009912:	0a8a8513          	addi	a0,s5,168
1c009916:	00082603          	lw	a2,0(a6)
1c00991a:	00482683          	lw	a3,4(a6)
1c00991e:	00865313          	srli	t1,a2,0x8
1c009922:	0086d893          	srli	a7,a3,0x8
1c009926:	0ff67713          	andi	a4,a2,255
1c00992a:	0ff6f793          	andi	a5,a3,255
1c00992e:	0ff37313          	andi	t1,t1,255
1c009932:	0ff8f893          	andi	a7,a7,255
1c009936:	0322                	slli	t1,t1,0x8
1c009938:	08a2                	slli	a7,a7,0x8
1c00993a:	01277733          	and	a4,a4,s2
1c00993e:	0127f7b3          	and	a5,a5,s2
1c009942:	00676733          	or	a4,a4,t1
1c009946:	0117e7b3          	or	a5,a5,a7
1c00994a:	00ff0337          	lui	t1,0xff0
1c00994e:	00ff08b7          	lui	a7,0xff0
1c009952:	00667333          	and	t1,a2,t1
1c009956:	0116f8b3          	and	a7,a3,a7
1c00995a:	8f65                	and	a4,a4,s1
1c00995c:	8fe5                	and	a5,a5,s1
1c00995e:	00676733          	or	a4,a4,t1
1c009962:	8261                	srli	a2,a2,0x18
1c009964:	0117e7b3          	or	a5,a5,a7
1c009968:	82e1                	srli	a3,a3,0x18
1c00996a:	0662                	slli	a2,a2,0x18
1c00996c:	8f61                	and	a4,a4,s0
1c00996e:	06e2                	slli	a3,a3,0x18
1c009970:	8fe1                	and	a5,a5,s0
1c009972:	8f51                	or	a4,a4,a2
1c009974:	8fd5                	or	a5,a5,a3
1c009976:	c198                	sw	a4,0(a1)
1c009978:	c1dc                	sw	a5,4(a1)
1c00997a:	05a1                	addi	a1,a1,8
1c00997c:	0821                	addi	a6,a6,8
1c00997e:	f8b51ce3          	bne	a0,a1,1c009916 <shake128_squeezeblocks+0x3a>
1c009982:	19fd                	addi	s3,s3,-1
1c009984:	8aaa                	mv	s5,a0
1c009986:	f80991e3          	bnez	s3,1c009908 <shake128_squeezeblocks+0x2c>
1c00998a:	40f2                	lw	ra,28(sp)
1c00998c:	4462                	lw	s0,24(sp)
1c00998e:	44d2                	lw	s1,20(sp)
1c009990:	4942                	lw	s2,16(sp)
1c009992:	49b2                	lw	s3,12(sp)
1c009994:	4a22                	lw	s4,8(sp)
1c009996:	4a92                	lw	s5,4(sp)
1c009998:	6105                	addi	sp,sp,32
1c00999a:	8082                	ret

1c00999c <shake128_ctx_release>:
1c00999c:	4108                	lw	a0,0(a0)
1c00999e:	0c800593          	li	a1,200
1c0099a2:	0f40306f          	j	1c00ca96 <pi_l2_free>

1c0099a6 <shake256>:
1c0099a6:	7131                	addi	sp,sp,-192
1c0099a8:	db26                	sw	s1,180(sp)
1c0099aa:	d94a                	sw	s2,176(sp)
1c0099ac:	08800493          	li	s1,136
1c0099b0:	892a                	mv	s2,a0
1c0099b2:	0c800513          	li	a0,200
1c0099b6:	dd22                	sw	s0,184(sp)
1c0099b8:	d74e                	sw	s3,172(sp)
1c0099ba:	d552                	sw	s4,168(sp)
1c0099bc:	df06                	sw	ra,188(sp)
1c0099be:	d356                	sw	s5,164(sp)
1c0099c0:	d15a                	sw	s6,160(sp)
1c0099c2:	cf5e                	sw	s7,156(sp)
1c0099c4:	cd62                	sw	s8,152(sp)
1c0099c6:	cb66                	sw	s9,148(sp)
1c0099c8:	89ae                	mv	s3,a1
1c0099ca:	8432                	mv	s0,a2
1c0099cc:	8a36                	mv	s4,a3
1c0099ce:	0295d4b3          	divu	s1,a1,s1
1c0099d2:	0b8030ef          	jal	ra,1c00ca8a <pi_l2_malloc>
1c0099d6:	20050263          	beqz	a0,1c009bda <shake256+0x234>
1c0099da:	46fd                	li	a3,31
1c0099dc:	8652                	mv	a2,s4
1c0099de:	85a2                	mv	a1,s0
1c0099e0:	8b2a                	mv	s6,a0
1c0099e2:	3641                	jal	1c009562 <keccak_absorb.constprop.7>
1c0099e4:	c4dd                	beqz	s1,1c009a92 <shake256+0xec>
1c0099e6:	00449713          	slli	a4,s1,0x4
1c0099ea:	00970433          	add	s0,a4,s1
1c0099ee:	040e                	slli	s0,s0,0x3
1c0099f0:	7bc1                	lui	s7,0xffff0
1c0099f2:	ff010ab7          	lui	s5,0xff010
1c0099f6:	01000a37          	lui	s4,0x1000
1c0099fa:	412b0c33          	sub	s8,s6,s2
1c0099fe:	944a                	add	s0,s0,s2
1c009a00:	8cca                	mv	s9,s2
1c009a02:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <pulp__FC+0xffff0100>
1c009a06:	1afd                	addi	s5,s5,-1
1c009a08:	1a7d                	addi	s4,s4,-1
1c009a0a:	85da                	mv	a1,s6
1c009a0c:	855a                	mv	a0,s6
1c009a0e:	30ed                	jal	1c0092f8 <KeccakF1600_StatePermute>
1c009a10:	8666                	mv	a2,s9
1c009a12:	088c8593          	addi	a1,s9,136
1c009a16:	00cc07b3          	add	a5,s8,a2
1c009a1a:	4388                	lw	a0,0(a5)
1c009a1c:	43d4                	lw	a3,4(a5)
1c009a1e:	00855893          	srli	a7,a0,0x8
1c009a22:	0086d813          	srli	a6,a3,0x8
1c009a26:	0ff57713          	andi	a4,a0,255
1c009a2a:	0ff6f793          	andi	a5,a3,255
1c009a2e:	0ff8f893          	andi	a7,a7,255
1c009a32:	0ff87813          	andi	a6,a6,255
1c009a36:	08a2                	slli	a7,a7,0x8
1c009a38:	0822                	slli	a6,a6,0x8
1c009a3a:	01777733          	and	a4,a4,s7
1c009a3e:	0177f7b3          	and	a5,a5,s7
1c009a42:	01176733          	or	a4,a4,a7
1c009a46:	0107e7b3          	or	a5,a5,a6
1c009a4a:	00ff08b7          	lui	a7,0xff0
1c009a4e:	00ff0837          	lui	a6,0xff0
1c009a52:	011578b3          	and	a7,a0,a7
1c009a56:	0106f833          	and	a6,a3,a6
1c009a5a:	01577733          	and	a4,a4,s5
1c009a5e:	0157f7b3          	and	a5,a5,s5
1c009a62:	01176733          	or	a4,a4,a7
1c009a66:	8161                	srli	a0,a0,0x18
1c009a68:	0107e7b3          	or	a5,a5,a6
1c009a6c:	82e1                	srli	a3,a3,0x18
1c009a6e:	0562                	slli	a0,a0,0x18
1c009a70:	01477733          	and	a4,a4,s4
1c009a74:	06e2                	slli	a3,a3,0x18
1c009a76:	0147f7b3          	and	a5,a5,s4
1c009a7a:	8f49                	or	a4,a4,a0
1c009a7c:	8fd5                	or	a5,a5,a3
1c009a7e:	c218                	sw	a4,0(a2)
1c009a80:	c25c                	sw	a5,4(a2)
1c009a82:	0621                	addi	a2,a2,8
1c009a84:	f8c599e3          	bne	a1,a2,1c009a16 <shake256+0x70>
1c009a88:	8cae                	mv	s9,a1
1c009a8a:	f78c0c13          	addi	s8,s8,-136
1c009a8e:	f6b41ee3          	bne	s0,a1,1c009a0a <shake256+0x64>
1c009a92:	08800793          	li	a5,136
1c009a96:	02f9f9b3          	remu	s3,s3,a5
1c009a9a:	02099363          	bnez	s3,1c009ac0 <shake256+0x11a>
1c009a9e:	546a                	lw	s0,184(sp)
1c009aa0:	50fa                	lw	ra,188(sp)
1c009aa2:	54da                	lw	s1,180(sp)
1c009aa4:	594a                	lw	s2,176(sp)
1c009aa6:	59ba                	lw	s3,172(sp)
1c009aa8:	5a2a                	lw	s4,168(sp)
1c009aaa:	5a9a                	lw	s5,164(sp)
1c009aac:	4bfa                	lw	s7,156(sp)
1c009aae:	4c6a                	lw	s8,152(sp)
1c009ab0:	4cda                	lw	s9,148(sp)
1c009ab2:	855a                	mv	a0,s6
1c009ab4:	5b0a                	lw	s6,160(sp)
1c009ab6:	0c800593          	li	a1,200
1c009aba:	6129                	addi	sp,sp,192
1c009abc:	7db0206f          	j	1c00ca96 <pi_l2_free>
1c009ac0:	85da                	mv	a1,s6
1c009ac2:	855a                	mv	a0,s6
1c009ac4:	835ff0ef          	jal	ra,1c0092f8 <KeccakF1600_StatePermute>
1c009ac8:	002c                	addi	a1,sp,8
1c009aca:	78c1                	lui	a7,0xffff0
1c009acc:	ff010837          	lui	a6,0xff010
1c009ad0:	01000537          	lui	a0,0x1000
1c009ad4:	09010e13          	addi	t3,sp,144
1c009ad8:	862e                	mv	a2,a1
1c009ada:	40bb0333          	sub	t1,s6,a1
1c009ade:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c009ae2:	187d                	addi	a6,a6,-1
1c009ae4:	157d                	addi	a0,a0,-1
1c009ae6:	00c307b3          	add	a5,t1,a2
1c009aea:	0007ae83          	lw	t4,0(a5)
1c009aee:	43d4                	lw	a3,4(a5)
1c009af0:	008edf93          	srli	t6,t4,0x8
1c009af4:	0086df13          	srli	t5,a3,0x8
1c009af8:	0ffef713          	andi	a4,t4,255
1c009afc:	0ff6f793          	andi	a5,a3,255
1c009b00:	0fffff93          	andi	t6,t6,255
1c009b04:	0fff7f13          	andi	t5,t5,255
1c009b08:	0fa2                	slli	t6,t6,0x8
1c009b0a:	0f22                	slli	t5,t5,0x8
1c009b0c:	01177733          	and	a4,a4,a7
1c009b10:	0117f7b3          	and	a5,a5,a7
1c009b14:	01f76733          	or	a4,a4,t6
1c009b18:	01e7e7b3          	or	a5,a5,t5
1c009b1c:	00ff0fb7          	lui	t6,0xff0
1c009b20:	00ff0f37          	lui	t5,0xff0
1c009b24:	01feffb3          	and	t6,t4,t6
1c009b28:	01e6ff33          	and	t5,a3,t5
1c009b2c:	01077733          	and	a4,a4,a6
1c009b30:	0107f7b3          	and	a5,a5,a6
1c009b34:	01f76733          	or	a4,a4,t6
1c009b38:	018ede93          	srli	t4,t4,0x18
1c009b3c:	01e7e7b3          	or	a5,a5,t5
1c009b40:	82e1                	srli	a3,a3,0x18
1c009b42:	0ee2                	slli	t4,t4,0x18
1c009b44:	8f69                	and	a4,a4,a0
1c009b46:	06e2                	slli	a3,a3,0x18
1c009b48:	8fe9                	and	a5,a5,a0
1c009b4a:	01d76733          	or	a4,a4,t4
1c009b4e:	8fd5                	or	a5,a5,a3
1c009b50:	c218                	sw	a4,0(a2)
1c009b52:	c25c                	sw	a5,4(a2)
1c009b54:	0621                	addi	a2,a2,8
1c009b56:	f8ce18e3          	bne	t3,a2,1c009ae6 <shake256+0x140>
1c009b5a:	fff98793          	addi	a5,s3,-1
1c009b5e:	4709                	li	a4,2
1c009b60:	06f77963          	bleu	a5,a4,1c009bd2 <shake256+0x22c>
1c009b64:	00449713          	slli	a4,s1,0x4
1c009b68:	009707b3          	add	a5,a4,s1
1c009b6c:	078e                	slli	a5,a5,0x3
1c009b6e:	0029d513          	srli	a0,s3,0x2
1c009b72:	97ca                	add	a5,a5,s2
1c009b74:	4681                	li	a3,0
1c009b76:	4190                	lw	a2,0(a1)
1c009b78:	0685                	addi	a3,a3,1
1c009b7a:	c390                	sw	a2,0(a5)
1c009b7c:	0591                	addi	a1,a1,4
1c009b7e:	0791                	addi	a5,a5,4
1c009b80:	fea6ebe3          	bltu	a3,a0,1c009b76 <shake256+0x1d0>
1c009b84:	ffc9f693          	andi	a3,s3,-4
1c009b88:	f0d98be3          	beq	s3,a3,1c009a9e <shake256+0xf8>
1c009b8c:	009707b3          	add	a5,a4,s1
1c009b90:	090c                	addi	a1,sp,144
1c009b92:	00d58733          	add	a4,a1,a3
1c009b96:	078e                	slli	a5,a5,0x3
1c009b98:	f7874603          	lbu	a2,-136(a4)
1c009b9c:	97ca                	add	a5,a5,s2
1c009b9e:	00d78733          	add	a4,a5,a3
1c009ba2:	00c70023          	sb	a2,0(a4)
1c009ba6:	00168713          	addi	a4,a3,1
1c009baa:	ef377ae3          	bleu	s3,a4,1c009a9e <shake256+0xf8>
1c009bae:	00e58633          	add	a2,a1,a4
1c009bb2:	f7864603          	lbu	a2,-136(a2)
1c009bb6:	973e                	add	a4,a4,a5
1c009bb8:	00c70023          	sb	a2,0(a4)
1c009bbc:	0689                	addi	a3,a3,2
1c009bbe:	ef36f0e3          	bleu	s3,a3,1c009a9e <shake256+0xf8>
1c009bc2:	00d58733          	add	a4,a1,a3
1c009bc6:	f7874703          	lbu	a4,-136(a4)
1c009bca:	97b6                	add	a5,a5,a3
1c009bcc:	00e78023          	sb	a4,0(a5)
1c009bd0:	b5f9                	j	1c009a9e <shake256+0xf8>
1c009bd2:	4681                	li	a3,0
1c009bd4:	00449713          	slli	a4,s1,0x4
1c009bd8:	bf55                	j	1c009b8c <shake256+0x1e6>
1c009bda:	06f00513          	li	a0,111
1c009bde:	55f010ef          	jal	ra,1c00b93c <exit>

1c009be2 <sha3_256>:
1c009be2:	7111                	addi	sp,sp,-256
1c009be4:	dda2                	sw	s0,248(sp)
1c009be6:	4699                	li	a3,6
1c009be8:	842a                	mv	s0,a0
1c009bea:	0028                	addi	a0,sp,8
1c009bec:	df86                	sw	ra,252(sp)
1c009bee:	dba6                	sw	s1,244(sp)
1c009bf0:	d9ca                	sw	s2,240(sp)
1c009bf2:	d7ce                	sw	s3,236(sp)
1c009bf4:	d5d2                	sw	s4,232(sp)
1c009bf6:	d3d6                	sw	s5,228(sp)
1c009bf8:	d1da                	sw	s6,224(sp)
1c009bfa:	cfde                	sw	s7,220(sp)
1c009bfc:	cde2                	sw	s8,216(sp)
1c009bfe:	cbe6                	sw	s9,212(sp)
1c009c00:	c9ea                	sw	s10,208(sp)
1c009c02:	3285                	jal	1c009562 <keccak_absorb.constprop.7>
1c009c04:	002c                	addi	a1,sp,8
1c009c06:	852e                	mv	a0,a1
1c009c08:	ef0ff0ef          	jal	ra,1c0092f8 <KeccakF1600_StatePermute>
1c009c0c:	4f32                	lw	t5,12(sp)
1c009c0e:	4922                	lw	s2,8(sp)
1c009c10:	4ec2                	lw	t4,16(sp)
1c009c12:	4e52                	lw	t3,20(sp)
1c009c14:	4362                	lw	t1,24(sp)
1c009c16:	44f2                	lw	s1,28(sp)
1c009c18:	5382                	lw	t2,32(sp)
1c009c1a:	5292                	lw	t0,36(sp)
1c009c1c:	00895813          	srli	a6,s2,0x8
1c009c20:	008f5513          	srli	a0,t5,0x8
1c009c24:	008ed593          	srli	a1,t4,0x8
1c009c28:	008e5613          	srli	a2,t3,0x8
1c009c2c:	00835693          	srli	a3,t1,0x8
1c009c30:	0084d713          	srli	a4,s1,0x8
1c009c34:	0083d993          	srli	s3,t2,0x8
1c009c38:	0082df93          	srli	t6,t0,0x8
1c009c3c:	0ff87813          	andi	a6,a6,255
1c009c40:	0ff57513          	andi	a0,a0,255
1c009c44:	0ff5f593          	andi	a1,a1,255
1c009c48:	0ff67613          	andi	a2,a2,255
1c009c4c:	0ff6f693          	andi	a3,a3,255
1c009c50:	0ff77713          	andi	a4,a4,255
1c009c54:	0ff9f993          	andi	s3,s3,255
1c009c58:	0fffff93          	andi	t6,t6,255
1c009c5c:	0fff7d13          	andi	s10,t5,255
1c009c60:	0ffefc93          	andi	s9,t4,255
1c009c64:	0ffe7c13          	andi	s8,t3,255
1c009c68:	0ff37b93          	andi	s7,t1,255
1c009c6c:	0ff4fb13          	andi	s6,s1,255
1c009c70:	0ff3fa93          	andi	s5,t2,255
1c009c74:	0ff2fa13          	andi	s4,t0,255
1c009c78:	0822                	slli	a6,a6,0x8
1c009c7a:	0ff97893          	andi	a7,s2,255
1c009c7e:	0522                	slli	a0,a0,0x8
1c009c80:	05a2                	slli	a1,a1,0x8
1c009c82:	0622                	slli	a2,a2,0x8
1c009c84:	06a2                	slli	a3,a3,0x8
1c009c86:	0722                	slli	a4,a4,0x8
1c009c88:	09a2                	slli	s3,s3,0x8
1c009c8a:	0fa2                	slli	t6,t6,0x8
1c009c8c:	ff0107b7          	lui	a5,0xff010
1c009c90:	17fd                	addi	a5,a5,-1
1c009c92:	01fa6fb3          	or	t6,s4,t6
1c009c96:	0108e8b3          	or	a7,a7,a6
1c009c9a:	00ff0a37          	lui	s4,0xff0
1c009c9e:	00ad6833          	or	a6,s10,a0
1c009ca2:	00bce533          	or	a0,s9,a1
1c009ca6:	00ff0d37          	lui	s10,0xff0
1c009caa:	00cc65b3          	or	a1,s8,a2
1c009cae:	00ff0cb7          	lui	s9,0xff0
1c009cb2:	00dbe633          	or	a2,s7,a3
1c009cb6:	00ff0c37          	lui	s8,0xff0
1c009cba:	00eb66b3          	or	a3,s6,a4
1c009cbe:	00ff0bb7          	lui	s7,0xff0
1c009cc2:	013ae733          	or	a4,s5,s3
1c009cc6:	00ff0b37          	lui	s6,0xff0
1c009cca:	00ff0ab7          	lui	s5,0xff0
1c009cce:	00ff09b7          	lui	s3,0xff0
1c009cd2:	01a97d33          	and	s10,s2,s10
1c009cd6:	019f7cb3          	and	s9,t5,s9
1c009cda:	018efc33          	and	s8,t4,s8
1c009cde:	017e7bb3          	and	s7,t3,s7
1c009ce2:	01637b33          	and	s6,t1,s6
1c009ce6:	0154fab3          	and	s5,s1,s5
1c009cea:	0143fa33          	and	s4,t2,s4
1c009cee:	0132f9b3          	and	s3,t0,s3
1c009cf2:	00f8f8b3          	and	a7,a7,a5
1c009cf6:	00f87833          	and	a6,a6,a5
1c009cfa:	8d7d                	and	a0,a0,a5
1c009cfc:	8dfd                	and	a1,a1,a5
1c009cfe:	8e7d                	and	a2,a2,a5
1c009d00:	8efd                	and	a3,a3,a5
1c009d02:	8f7d                	and	a4,a4,a5
1c009d04:	00fff7b3          	and	a5,t6,a5
1c009d08:	01000fb7          	lui	t6,0x1000
1c009d0c:	1ffd                	addi	t6,t6,-1
1c009d0e:	01a8e8b3          	or	a7,a7,s10
1c009d12:	01986833          	or	a6,a6,s9
1c009d16:	01856533          	or	a0,a0,s8
1c009d1a:	0175e5b3          	or	a1,a1,s7
1c009d1e:	01666633          	or	a2,a2,s6
1c009d22:	0156e6b3          	or	a3,a3,s5
1c009d26:	01476733          	or	a4,a4,s4
1c009d2a:	0137e7b3          	or	a5,a5,s3
1c009d2e:	01895913          	srli	s2,s2,0x18
1c009d32:	018f5f13          	srli	t5,t5,0x18
1c009d36:	018ede93          	srli	t4,t4,0x18
1c009d3a:	018e5e13          	srli	t3,t3,0x18
1c009d3e:	01835313          	srli	t1,t1,0x18
1c009d42:	80e1                	srli	s1,s1,0x18
1c009d44:	0183d393          	srli	t2,t2,0x18
1c009d48:	0182d293          	srli	t0,t0,0x18
1c009d4c:	0962                	slli	s2,s2,0x18
1c009d4e:	04e2                	slli	s1,s1,0x18
1c009d50:	01f8f8b3          	and	a7,a7,t6
1c009d54:	0f62                	slli	t5,t5,0x18
1c009d56:	01f87833          	and	a6,a6,t6
1c009d5a:	0ee2                	slli	t4,t4,0x18
1c009d5c:	01f57533          	and	a0,a0,t6
1c009d60:	0e62                	slli	t3,t3,0x18
1c009d62:	01f5f5b3          	and	a1,a1,t6
1c009d66:	0362                	slli	t1,t1,0x18
1c009d68:	01f67633          	and	a2,a2,t6
1c009d6c:	01f6f6b3          	and	a3,a3,t6
1c009d70:	03e2                	slli	t2,t2,0x18
1c009d72:	01f77733          	and	a4,a4,t6
1c009d76:	02e2                	slli	t0,t0,0x18
1c009d78:	01f7f7b3          	and	a5,a5,t6
1c009d7c:	0128e8b3          	or	a7,a7,s2
1c009d80:	8ec5                	or	a3,a3,s1
1c009d82:	01e86833          	or	a6,a6,t5
1c009d86:	01d56533          	or	a0,a0,t4
1c009d8a:	01c5e5b3          	or	a1,a1,t3
1c009d8e:	00666633          	or	a2,a2,t1
1c009d92:	00776733          	or	a4,a4,t2
1c009d96:	0057e7b3          	or	a5,a5,t0
1c009d9a:	01142023          	sw	a7,0(s0) # 1000000 <__CTOR_LIST__-0x1b000004>
1c009d9e:	01042223          	sw	a6,4(s0)
1c009da2:	c408                	sw	a0,8(s0)
1c009da4:	c44c                	sw	a1,12(s0)
1c009da6:	c810                	sw	a2,16(s0)
1c009da8:	c854                	sw	a3,20(s0)
1c009daa:	cc18                	sw	a4,24(s0)
1c009dac:	cc5c                	sw	a5,28(s0)
1c009dae:	50fe                	lw	ra,252(sp)
1c009db0:	546e                	lw	s0,248(sp)
1c009db2:	54de                	lw	s1,244(sp)
1c009db4:	594e                	lw	s2,240(sp)
1c009db6:	59be                	lw	s3,236(sp)
1c009db8:	5a2e                	lw	s4,232(sp)
1c009dba:	5a9e                	lw	s5,228(sp)
1c009dbc:	5b0e                	lw	s6,224(sp)
1c009dbe:	4bfe                	lw	s7,220(sp)
1c009dc0:	4c6e                	lw	s8,216(sp)
1c009dc2:	4cde                	lw	s9,212(sp)
1c009dc4:	4d4e                	lw	s10,208(sp)
1c009dc6:	6111                	addi	sp,sp,256
1c009dc8:	8082                	ret

1c009dca <sha3_512>:
1c009dca:	db010113          	addi	sp,sp,-592
1c009dce:	24812423          	sw	s0,584(sp)
1c009dd2:	23312e23          	sw	s3,572(sp)
1c009dd6:	23412c23          	sw	s4,568(sp)
1c009dda:	24112623          	sw	ra,588(sp)
1c009dde:	24912223          	sw	s1,580(sp)
1c009de2:	25212023          	sw	s2,576(sp)
1c009de6:	23512a23          	sw	s5,564(sp)
1c009dea:	23612823          	sw	s6,560(sp)
1c009dee:	23712623          	sw	s7,556(sp)
1c009df2:	23812423          	sw	s8,552(sp)
1c009df6:	23912223          	sw	s9,548(sp)
1c009dfa:	23a12023          	sw	s10,544(sp)
1c009dfe:	21b12e23          	sw	s11,540(sp)
1c009e02:	842a                	mv	s0,a0
1c009e04:	8a32                	mv	s4,a2
1c009e06:	14810993          	addi	s3,sp,328
1c009e0a:	011c                	addi	a5,sp,128
1c009e0c:	4601                	li	a2,0
1c009e0e:	4681                	li	a3,0
1c009e10:	c390                	sw	a2,0(a5)
1c009e12:	c3d4                	sw	a3,4(a5)
1c009e14:	07a1                	addi	a5,a5,8
1c009e16:	fef99be3          	bne	s3,a5,1c009e0c <sha3_512+0x42>
1c009e1a:	04700793          	li	a5,71
1c009e1e:	0747fe63          	bleu	s4,a5,1c009e9a <sha3_512+0xd0>
1c009e22:	04700493          	li	s1,71
1c009e26:	87ae                	mv	a5,a1
1c009e28:	04878913          	addi	s2,a5,72 # ff010048 <pulp__FC+0xff010049>
1c009e2c:	0114                	addi	a3,sp,128
1c009e2e:	0017c703          	lbu	a4,1(a5)
1c009e32:	0027c583          	lbu	a1,2(a5)
1c009e36:	0057c883          	lbu	a7,5(a5)
1c009e3a:	0047c303          	lbu	t1,4(a5)
1c009e3e:	0067c803          	lbu	a6,6(a5)
1c009e42:	0007ce03          	lbu	t3,0(a5)
1c009e46:	0037c503          	lbu	a0,3(a5)
1c009e4a:	0077c603          	lbu	a2,7(a5)
1c009e4e:	05c2                	slli	a1,a1,0x10
1c009e50:	0722                	slli	a4,a4,0x8
1c009e52:	08a2                	slli	a7,a7,0x8
1c009e54:	8f4d                	or	a4,a4,a1
1c009e56:	0068e8b3          	or	a7,a7,t1
1c009e5a:	0842                	slli	a6,a6,0x10
1c009e5c:	428c                	lw	a1,0(a3)
1c009e5e:	0046a303          	lw	t1,4(a3)
1c009e62:	01c76733          	or	a4,a4,t3
1c009e66:	0562                	slli	a0,a0,0x18
1c009e68:	01186833          	or	a6,a6,a7
1c009e6c:	0662                	slli	a2,a2,0x18
1c009e6e:	8f49                	or	a4,a4,a0
1c009e70:	01066633          	or	a2,a2,a6
1c009e74:	8f2d                	xor	a4,a4,a1
1c009e76:	00c34633          	xor	a2,t1,a2
1c009e7a:	c298                	sw	a4,0(a3)
1c009e7c:	c2d0                	sw	a2,4(a3)
1c009e7e:	07a1                	addi	a5,a5,8
1c009e80:	06a1                	addi	a3,a3,8
1c009e82:	faf916e3          	bne	s2,a5,1c009e2e <sha3_512+0x64>
1c009e86:	010c                	addi	a1,sp,128
1c009e88:	852e                	mv	a0,a1
1c009e8a:	c6eff0ef          	jal	ra,1c0092f8 <KeccakF1600_StatePermute>
1c009e8e:	fb8a0a13          	addi	s4,s4,-72 # feffb8 <__CTOR_LIST__-0x1b01004c>
1c009e92:	87ca                	mv	a5,s2
1c009e94:	f944eae3          	bltu	s1,s4,1c009e28 <sha3_512+0x5e>
1c009e98:	85ca                	mv	a1,s2
1c009e9a:	0b18                	addi	a4,sp,400
1c009e9c:	87ce                	mv	a5,s3
1c009e9e:	4681                	li	a3,0
1c009ea0:	c394                	sw	a3,0(a5)
1c009ea2:	0791                	addi	a5,a5,4
1c009ea4:	fef71de3          	bne	a4,a5,1c009e9e <sha3_512+0xd4>
1c009ea8:	060a0563          	beqz	s4,1c009f12 <sha3_512+0x148>
1c009eac:	fffa0793          	addi	a5,s4,-1
1c009eb0:	4709                	li	a4,2
1c009eb2:	06f772e3          	bleu	a5,a4,1c00a716 <sha3_512+0x94c>
1c009eb6:	002a5613          	srli	a2,s4,0x2
1c009eba:	872e                	mv	a4,a1
1c009ebc:	4781                	li	a5,0
1c009ebe:	4314                	lw	a3,0(a4)
1c009ec0:	0785                	addi	a5,a5,1
1c009ec2:	00d9a023          	sw	a3,0(s3) # ff0000 <__CTOR_LIST__-0x1b010004>
1c009ec6:	0711                	addi	a4,a4,4
1c009ec8:	0991                	addi	s3,s3,4
1c009eca:	fec7eae3          	bltu	a5,a2,1c009ebe <sha3_512+0xf4>
1c009ece:	ffca7793          	andi	a5,s4,-4
1c009ed2:	04fa0063          	beq	s4,a5,1c009f12 <sha3_512+0x148>
1c009ed6:	00f58733          	add	a4,a1,a5
1c009eda:	00074683          	lbu	a3,0(a4)
1c009ede:	21010813          	addi	a6,sp,528
1c009ee2:	00f80733          	add	a4,a6,a5
1c009ee6:	f2d70c23          	sb	a3,-200(a4)
1c009eea:	00178713          	addi	a4,a5,1
1c009eee:	03477263          	bleu	s4,a4,1c009f12 <sha3_512+0x148>
1c009ef2:	00e586b3          	add	a3,a1,a4
1c009ef6:	0006c683          	lbu	a3,0(a3)
1c009efa:	9742                	add	a4,a4,a6
1c009efc:	f2d70c23          	sb	a3,-200(a4)
1c009f00:	0789                	addi	a5,a5,2
1c009f02:	0147f863          	bleu	s4,a5,1c009f12 <sha3_512+0x148>
1c009f06:	95be                	add	a1,a1,a5
1c009f08:	0005c703          	lbu	a4,0(a1)
1c009f0c:	97c2                	add	a5,a5,a6
1c009f0e:	f2e78c23          	sb	a4,-200(a5)
1c009f12:	21010893          	addi	a7,sp,528
1c009f16:	9a46                	add	s4,s4,a7
1c009f18:	4799                	li	a5,6
1c009f1a:	f2fa0c23          	sb	a5,-200(s4)
1c009f1e:	14a14703          	lbu	a4,330(sp)
1c009f22:	14914f03          	lbu	t5,329(sp)
1c009f26:	15214783          	lbu	a5,338(sp)
1c009f2a:	15114e83          	lbu	t4,337(sp)
1c009f2e:	15514303          	lbu	t1,341(sp)
1c009f32:	15414383          	lbu	t2,340(sp)
1c009f36:	15614803          	lbu	a6,342(sp)
1c009f3a:	14814283          	lbu	t0,328(sp)
1c009f3e:	14b14503          	lbu	a0,331(sp)
1c009f42:	15014f83          	lbu	t6,336(sp)
1c009f46:	15314603          	lbu	a2,339(sp)
1c009f4a:	15714683          	lbu	a3,343(sp)
1c009f4e:	0f22                	slli	t5,t5,0x8
1c009f50:	0ea2                	slli	t4,t4,0x8
1c009f52:	0742                	slli	a4,a4,0x10
1c009f54:	07c2                	slli	a5,a5,0x10
1c009f56:	0322                	slli	t1,t1,0x8
1c009f58:	14d14e03          	lbu	t3,333(sp)
1c009f5c:	00736333          	or	t1,t1,t2
1c009f60:	01e76733          	or	a4,a4,t5
1c009f64:	01d7e7b3          	or	a5,a5,t4
1c009f68:	0842                	slli	a6,a6,0x10
1c009f6a:	14c14483          	lbu	s1,332(sp)
1c009f6e:	14e14883          	lbu	a7,334(sp)
1c009f72:	00576733          	or	a4,a4,t0
1c009f76:	01f7e7b3          	or	a5,a5,t6
1c009f7a:	00686833          	or	a6,a6,t1
1c009f7e:	0662                	slli	a2,a2,0x18
1c009f80:	06e2                	slli	a3,a3,0x18
1c009f82:	0562                	slli	a0,a0,0x18
1c009f84:	14f14583          	lbu	a1,335(sp)
1c009f88:	8d59                	or	a0,a0,a4
1c009f8a:	0e22                	slli	t3,t3,0x8
1c009f8c:	00f66733          	or	a4,a2,a5
1c009f90:	0106e7b3          	or	a5,a3,a6
1c009f94:	468a                	lw	a3,128(sp)
1c009f96:	009e6e33          	or	t3,t3,s1
1c009f9a:	08c2                	slli	a7,a7,0x10
1c009f9c:	01c8e8b3          	or	a7,a7,t3
1c009fa0:	8d35                	xor	a0,a0,a3
1c009fa2:	05e2                	slli	a1,a1,0x18
1c009fa4:	469a                	lw	a3,132(sp)
1c009fa6:	0115e5b3          	or	a1,a1,a7
1c009faa:	8db5                	xor	a1,a1,a3
1c009fac:	46aa                	lw	a3,136(sp)
1c009fae:	15a14803          	lbu	a6,346(sp)
1c009fb2:	8eb9                	xor	a3,a3,a4
1c009fb4:	473a                	lw	a4,140(sp)
1c009fb6:	15914483          	lbu	s1,345(sp)
1c009fba:	8f3d                	xor	a4,a4,a5
1c009fbc:	15814a83          	lbu	s5,344(sp)
1c009fc0:	15b14a03          	lbu	s4,347(sp)
1c009fc4:	15c14d03          	lbu	s10,348(sp)
1c009fc8:	18f14783          	lbu	a5,399(sp)
1c009fcc:	c12a                	sw	a0,128(sp)
1c009fce:	c32e                	sw	a1,132(sp)
1c009fd0:	c536                	sw	a3,136(sp)
1c009fd2:	c73a                	sw	a4,140(sp)
1c009fd4:	15d14903          	lbu	s2,349(sp)
1c009fd8:	15e14f83          	lbu	t6,350(sp)
1c009fdc:	16114283          	lbu	t0,353(sp)
1c009fe0:	16214f03          	lbu	t5,354(sp)
1c009fe4:	16d14883          	lbu	a7,365(sp)
1c009fe8:	16c14b83          	lbu	s7,364(sp)
1c009fec:	04a2                	slli	s1,s1,0x8
1c009fee:	0842                	slli	a6,a6,0x10
1c009ff0:	02a2                	slli	t0,t0,0x8
1c009ff2:	08a2                	slli	a7,a7,0x8
1c009ff4:	00986833          	or	a6,a6,s1
1c009ff8:	0f42                	slli	t5,t5,0x10
1c009ffa:	01e2ef33          	or	t5,t0,t5
1c009ffe:	01586833          	or	a6,a6,s5
1c00a002:	0178e2b3          	or	t0,a7,s7
1c00a006:	018a1893          	slli	a7,s4,0x18
1c00a00a:	15f14503          	lbu	a0,351(sp)
1c00a00e:	0108e833          	or	a6,a7,a6
1c00a012:	0922                	slli	s2,s2,0x8
1c00a014:	48ca                	lw	a7,144(sp)
1c00a016:	01a96933          	or	s2,s2,s10
1c00a01a:	0fc2                	slli	t6,t6,0x10
1c00a01c:	16014983          	lbu	s3,352(sp)
1c00a020:	16514e83          	lbu	t4,357(sp)
1c00a024:	16314583          	lbu	a1,355(sp)
1c00a028:	012fefb3          	or	t6,t6,s2
1c00a02c:	0108c8b3          	xor	a7,a7,a6
1c00a030:	0562                	slli	a0,a0,0x18
1c00a032:	485a                	lw	a6,148(sp)
1c00a034:	16414c83          	lbu	s9,356(sp)
1c00a038:	16614c03          	lbu	s8,358(sp)
1c00a03c:	01f56533          	or	a0,a0,t6
1c00a040:	16914e03          	lbu	t3,361(sp)
1c00a044:	16a14303          	lbu	t1,362(sp)
1c00a048:	16714603          	lbu	a2,359(sp)
1c00a04c:	013f6f33          	or	t5,t5,s3
1c00a050:	00a84833          	xor	a6,a6,a0
1c00a054:	0ea2                	slli	t4,t4,0x8
1c00a056:	456a                	lw	a0,152(sp)
1c00a058:	05e2                	slli	a1,a1,0x18
1c00a05a:	019ee4b3          	or	s1,t4,s9
1c00a05e:	01e5e5b3          	or	a1,a1,t5
1c00a062:	010c1e93          	slli	t4,s8,0x10
1c00a066:	16814383          	lbu	t2,360(sp)
1c00a06a:	16b14683          	lbu	a3,363(sp)
1c00a06e:	009eeeb3          	or	t4,t4,s1
1c00a072:	8d2d                	xor	a0,a0,a1
1c00a074:	0342                	slli	t1,t1,0x10
1c00a076:	45fa                	lw	a1,156(sp)
1c00a078:	0e22                	slli	t3,t3,0x8
1c00a07a:	0662                	slli	a2,a2,0x18
1c00a07c:	16e14b03          	lbu	s6,366(sp)
1c00a080:	01d66633          	or	a2,a2,t4
1c00a084:	006e6e33          	or	t3,t3,t1
1c00a088:	16f14703          	lbu	a4,367(sp)
1c00a08c:	007e6e33          	or	t3,t3,t2
1c00a090:	8db1                	xor	a1,a1,a2
1c00a092:	06e2                	slli	a3,a3,0x18
1c00a094:	560a                	lw	a2,160(sp)
1c00a096:	01c6e6b3          	or	a3,a3,t3
1c00a09a:	010b1313          	slli	t1,s6,0x10
1c00a09e:	00536333          	or	t1,t1,t0
1c00a0a2:	8e35                	xor	a2,a2,a3
1c00a0a4:	0762                	slli	a4,a4,0x18
1c00a0a6:	569a                	lw	a3,164(sp)
1c00a0a8:	00676733          	or	a4,a4,t1
1c00a0ac:	8f35                	xor	a4,a4,a3
1c00a0ae:	c946                	sw	a7,144(sp)
1c00a0b0:	cb42                	sw	a6,148(sp)
1c00a0b2:	cd2a                	sw	a0,152(sp)
1c00a0b4:	cf2e                	sw	a1,156(sp)
1c00a0b6:	d132                	sw	a2,160(sp)
1c00a0b8:	d33a                	sw	a4,164(sp)
1c00a0ba:	17114e83          	lbu	t4,369(sp)
1c00a0be:	17214a83          	lbu	s5,370(sp)
1c00a0c2:	17014903          	lbu	s2,368(sp)
1c00a0c6:	18114803          	lbu	a6,385(sp)
1c00a0ca:	18214483          	lbu	s1,386(sp)
1c00a0ce:	18014283          	lbu	t0,384(sp)
1c00a0d2:	18314703          	lbu	a4,387(sp)
1c00a0d6:	04c2                	slli	s1,s1,0x10
1c00a0d8:	0822                	slli	a6,a6,0x8
1c00a0da:	17514f83          	lbu	t6,373(sp)
1c00a0de:	17314503          	lbu	a0,371(sp)
1c00a0e2:	0ac2                	slli	s5,s5,0x10
1c00a0e4:	00986833          	or	a6,a6,s1
1c00a0e8:	0ea2                	slli	t4,t4,0x8
1c00a0ea:	17414b03          	lbu	s6,372(sp)
1c00a0ee:	00586833          	or	a6,a6,t0
1c00a0f2:	17614e03          	lbu	t3,374(sp)
1c00a0f6:	015eeeb3          	or	t4,t4,s5
1c00a0fa:	0762                	slli	a4,a4,0x18
1c00a0fc:	17914303          	lbu	t1,377(sp)
1c00a100:	17a14983          	lbu	s3,378(sp)
1c00a104:	17714583          	lbu	a1,375(sp)
1c00a108:	012eeeb3          	or	t4,t4,s2
1c00a10c:	01076733          	or	a4,a4,a6
1c00a110:	0fa2                	slli	t6,t6,0x8
1c00a112:	582a                	lw	a6,168(sp)
1c00a114:	0562                	slli	a0,a0,0x18
1c00a116:	016fefb3          	or	t6,t6,s6
1c00a11a:	01d56533          	or	a0,a0,t4
1c00a11e:	0e42                	slli	t3,t3,0x10
1c00a120:	17814383          	lbu	t2,376(sp)
1c00a124:	01fe6e33          	or	t3,t3,t6
1c00a128:	17d14f03          	lbu	t5,381(sp)
1c00a12c:	17b14603          	lbu	a2,379(sp)
1c00a130:	00a84833          	xor	a6,a6,a0
1c00a134:	09c2                	slli	s3,s3,0x10
1c00a136:	553a                	lw	a0,172(sp)
1c00a138:	0322                	slli	t1,t1,0x8
1c00a13a:	05e2                	slli	a1,a1,0x18
1c00a13c:	17c14a03          	lbu	s4,380(sp)
1c00a140:	17e14883          	lbu	a7,382(sp)
1c00a144:	01c5e5b3          	or	a1,a1,t3
1c00a148:	01336333          	or	t1,t1,s3
1c00a14c:	00736333          	or	t1,t1,t2
1c00a150:	17f14683          	lbu	a3,383(sp)
1c00a154:	8d2d                	xor	a0,a0,a1
1c00a156:	0f22                	slli	t5,t5,0x8
1c00a158:	55ca                	lw	a1,176(sp)
1c00a15a:	0662                	slli	a2,a2,0x18
1c00a15c:	014f6f33          	or	t5,t5,s4
1c00a160:	00666633          	or	a2,a2,t1
1c00a164:	08c2                	slli	a7,a7,0x10
1c00a166:	01e8e8b3          	or	a7,a7,t5
1c00a16a:	8db1                	xor	a1,a1,a2
1c00a16c:	06e2                	slli	a3,a3,0x18
1c00a16e:	565a                	lw	a2,180(sp)
1c00a170:	0116e6b3          	or	a3,a3,a7
1c00a174:	8e35                	xor	a2,a2,a3
1c00a176:	56ea                	lw	a3,184(sp)
1c00a178:	18414f03          	lbu	t5,388(sp)
1c00a17c:	8f35                	xor	a4,a4,a3
1c00a17e:	d542                	sw	a6,168(sp)
1c00a180:	d72a                	sw	a0,172(sp)
1c00a182:	d92e                	sw	a1,176(sp)
1c00a184:	db32                	sw	a2,180(sp)
1c00a186:	18514883          	lbu	a7,389(sp)
1c00a18a:	18614503          	lbu	a0,390(sp)
1c00a18e:	18714603          	lbu	a2,391(sp)
1c00a192:	dd3a                	sw	a4,184(sp)
1c00a194:	18914703          	lbu	a4,393(sp)
1c00a198:	18a14303          	lbu	t1,394(sp)
1c00a19c:	18814e03          	lbu	t3,392(sp)
1c00a1a0:	0342                	slli	t1,t1,0x10
1c00a1a2:	18b14683          	lbu	a3,395(sp)
1c00a1a6:	0722                	slli	a4,a4,0x8
1c00a1a8:	00676733          	or	a4,a4,t1
1c00a1ac:	08a2                	slli	a7,a7,0x8
1c00a1ae:	01e8e8b3          	or	a7,a7,t5
1c00a1b2:	01c76733          	or	a4,a4,t3
1c00a1b6:	06e2                	slli	a3,a3,0x18
1c00a1b8:	0542                	slli	a0,a0,0x10
1c00a1ba:	01156533          	or	a0,a0,a7
1c00a1be:	18d14803          	lbu	a6,397(sp)
1c00a1c2:	8f55                	or	a4,a4,a3
1c00a1c4:	0662                	slli	a2,a2,0x18
1c00a1c6:	56fa                	lw	a3,188(sp)
1c00a1c8:	18c14e83          	lbu	t4,396(sp)
1c00a1cc:	18e14583          	lbu	a1,398(sp)
1c00a1d0:	8e49                	or	a2,a2,a0
1c00a1d2:	8e35                	xor	a2,a2,a3
1c00a1d4:	0822                	slli	a6,a6,0x8
1c00a1d6:	468e                	lw	a3,192(sp)
1c00a1d8:	01d86833          	or	a6,a6,t4
1c00a1dc:	0807e793          	ori	a5,a5,128
1c00a1e0:	05c2                	slli	a1,a1,0x10
1c00a1e2:	0105e5b3          	or	a1,a1,a6
1c00a1e6:	8eb9                	xor	a3,a3,a4
1c00a1e8:	07e2                	slli	a5,a5,0x18
1c00a1ea:	471e                	lw	a4,196(sp)
1c00a1ec:	8fcd                	or	a5,a5,a1
1c00a1ee:	010c                	addi	a1,sp,128
1c00a1f0:	8fb9                	xor	a5,a5,a4
1c00a1f2:	852e                	mv	a0,a1
1c00a1f4:	df32                	sw	a2,188(sp)
1c00a1f6:	c1b6                	sw	a3,192(sp)
1c00a1f8:	c3be                	sw	a5,196(sp)
1c00a1fa:	8feff0ef          	jal	ra,1c0092f8 <KeccakF1600_StatePermute>
1c00a1fe:	581a                	lw	a6,164(sp)
1c00a200:	552a                	lw	a0,168(sp)
1c00a202:	55ba                	lw	a1,172(sp)
1c00a204:	00885913          	srli	s2,a6,0x8
1c00a208:	564a                	lw	a2,176(sp)
1c00a20a:	de4a                	sw	s2,60(sp)
1c00a20c:	00855913          	srli	s2,a0,0x8
1c00a210:	56da                	lw	a3,180(sp)
1c00a212:	d24a                	sw	s2,36(sp)
1c00a214:	0085d913          	srli	s2,a1,0x8
1c00a218:	576a                	lw	a4,184(sp)
1c00a21a:	d44a                	sw	s2,40(sp)
1c00a21c:	00865913          	srli	s2,a2,0x8
1c00a220:	57fa                	lw	a5,188(sp)
1c00a222:	d64a                	sw	s2,44(sp)
1c00a224:	0086d913          	srli	s2,a3,0x8
1c00a228:	d84a                	sw	s2,48(sp)
1c00a22a:	00875913          	srli	s2,a4,0x8
1c00a22e:	da4a                	sw	s2,52(sp)
1c00a230:	0087d913          	srli	s2,a5,0x8
1c00a234:	dc4a                	sw	s2,56(sp)
1c00a236:	5972                	lw	s2,60(sp)
1c00a238:	448a                	lw	s1,128(sp)
1c00a23a:	0ff97913          	andi	s2,s2,255
1c00a23e:	c2ca                	sw	s2,68(sp)
1c00a240:	5912                	lw	s2,36(sp)
1c00a242:	439a                	lw	t2,132(sp)
1c00a244:	0ff97913          	andi	s2,s2,255
1c00a248:	c4ca                	sw	s2,72(sp)
1c00a24a:	5922                	lw	s2,40(sp)
1c00a24c:	42aa                	lw	t0,136(sp)
1c00a24e:	0ff97913          	andi	s2,s2,255
1c00a252:	c8ca                	sw	s2,80(sp)
1c00a254:	5932                	lw	s2,44(sp)
1c00a256:	4fba                	lw	t6,140(sp)
1c00a258:	0ff97913          	andi	s2,s2,255
1c00a25c:	ccca                	sw	s2,88(sp)
1c00a25e:	5942                	lw	s2,48(sp)
1c00a260:	4f4a                	lw	t5,144(sp)
1c00a262:	0ff97913          	andi	s2,s2,255
1c00a266:	4eda                	lw	t4,148(sp)
1c00a268:	4e6a                	lw	t3,152(sp)
1c00a26a:	437a                	lw	t1,156(sp)
1c00a26c:	588a                	lw	a7,160(sp)
1c00a26e:	d0ca                	sw	s2,96(sp)
1c00a270:	5952                	lw	s2,52(sp)
1c00a272:	0082dc93          	srli	s9,t0,0x8
1c00a276:	0ff97913          	andi	s2,s2,255
1c00a27a:	d4ca                	sw	s2,104(sp)
1c00a27c:	5962                	lw	s2,56(sp)
1c00a27e:	008fdc13          	srli	s8,t6,0x8
1c00a282:	008f5b93          	srli	s7,t5,0x8
1c00a286:	008edb13          	srli	s6,t4,0x8
1c00a28a:	0ff97913          	andi	s2,s2,255
1c00a28e:	d8ca                	sw	s2,112(sp)
1c00a290:	0083dd13          	srli	s10,t2,0x8
1c00a294:	0ff4f913          	andi	s2,s1,255
1c00a298:	0ffcfc93          	andi	s9,s9,255
1c00a29c:	0ffc7c13          	andi	s8,s8,255
1c00a2a0:	0ffbfb93          	andi	s7,s7,255
1c00a2a4:	0ffb7b13          	andi	s6,s6,255
1c00a2a8:	d24a                	sw	s2,36(sp)
1c00a2aa:	008e5a93          	srli	s5,t3,0x8
1c00a2ae:	0ff2f913          	andi	s2,t0,255
1c00a2b2:	0ca2                	slli	s9,s9,0x8
1c00a2b4:	0c22                	slli	s8,s8,0x8
1c00a2b6:	0ba2                	slli	s7,s7,0x8
1c00a2b8:	0b22                	slli	s6,s6,0x8
1c00a2ba:	0ffd7d13          	andi	s10,s10,255
1c00a2be:	ce66                	sw	s9,28(sp)
1c00a2c0:	d64a                	sw	s2,44(sp)
1c00a2c2:	cc62                	sw	s8,24(sp)
1c00a2c4:	ca5e                	sw	s7,20(sp)
1c00a2c6:	0ffffc13          	andi	s8,t6,255
1c00a2ca:	4b96                	lw	s7,68(sp)
1c00a2cc:	0fff7c93          	andi	s9,t5,255
1c00a2d0:	c85a                	sw	s6,16(sp)
1c00a2d2:	0ffe7913          	andi	s2,t3,255
1c00a2d6:	0ff8fb13          	andi	s6,a7,255
1c00a2da:	0d22                	slli	s10,s10,0x8
1c00a2dc:	0ffafa93          	andi	s5,s5,255
1c00a2e0:	d06a                	sw	s10,32(sp)
1c00a2e2:	d862                	sw	s8,48(sp)
1c00a2e4:	0ff3fd13          	andi	s10,t2,255
1c00a2e8:	da66                	sw	s9,52(sp)
1c00a2ea:	de4a                	sw	s2,60(sp)
1c00a2ec:	4ca6                	lw	s9,72(sp)
1c00a2ee:	4946                	lw	s2,80(sp)
1c00a2f0:	c0da                	sw	s6,64(sp)
1c00a2f2:	0ff87c13          	andi	s8,a6,255
1c00a2f6:	4b66                	lw	s6,88(sp)
1c00a2f8:	0aa2                	slli	s5,s5,0x8
1c00a2fa:	d46a                	sw	s10,40(sp)
1c00a2fc:	c656                	sw	s5,12(sp)
1c00a2fe:	0ffefd13          	andi	s10,t4,255
1c00a302:	0ff37a93          	andi	s5,t1,255
1c00a306:	c2e2                	sw	s8,68(sp)
1c00a308:	0ba2                	slli	s7,s7,0x8
1c00a30a:	5c06                	lw	s8,96(sp)
1c00a30c:	dc6a                	sw	s10,56(sp)
1c00a30e:	dcd6                	sw	s5,120(sp)
1c00a310:	dede                	sw	s7,124(sp)
1c00a312:	0ff57d13          	andi	s10,a0,255
1c00a316:	0ff5fa93          	andi	s5,a1,255
1c00a31a:	0ff67b93          	andi	s7,a2,255
1c00a31e:	0ca2                	slli	s9,s9,0x8
1c00a320:	0922                	slli	s2,s2,0x8
1c00a322:	0b22                	slli	s6,s6,0x8
1c00a324:	c4e6                	sw	s9,72(sp)
1c00a326:	c6ea                	sw	s10,76(sp)
1c00a328:	c8ca                	sw	s2,80(sp)
1c00a32a:	cad6                	sw	s5,84(sp)
1c00a32c:	ccda                	sw	s6,88(sp)
1c00a32e:	cede                	sw	s7,92(sp)
1c00a330:	0c22                	slli	s8,s8,0x8
1c00a332:	d0e2                	sw	s8,96(sp)
1c00a334:	5ac6                	lw	s5,112(sp)
1c00a336:	5d26                	lw	s10,104(sp)
1c00a338:	0ff6fc93          	andi	s9,a3,255
1c00a33c:	0ff7fb13          	andi	s6,a5,255
1c00a340:	0084dd93          	srli	s11,s1,0x8
1c00a344:	0aa2                	slli	s5,s5,0x8
1c00a346:	5b92                	lw	s7,36(sp)
1c00a348:	5c22                	lw	s8,40(sp)
1c00a34a:	d2e6                	sw	s9,100(sp)
1c00a34c:	d8d6                	sw	s5,112(sp)
1c00a34e:	5c82                	lw	s9,32(sp)
1c00a350:	5ab2                	lw	s5,44(sp)
1c00a352:	dada                	sw	s6,116(sp)
1c00a354:	0ffdfd93          	andi	s11,s11,255
1c00a358:	4b72                	lw	s6,28(sp)
1c00a35a:	0d22                	slli	s10,s10,0x8
1c00a35c:	0da2                	slli	s11,s11,0x8
1c00a35e:	d4ea                	sw	s10,104(sp)
1c00a360:	01bbedb3          	or	s11,s7,s11
1c00a364:	019c6d33          	or	s10,s8,s9
1c00a368:	5bc2                	lw	s7,48(sp)
1c00a36a:	016aecb3          	or	s9,s5,s6
1c00a36e:	4ae2                	lw	s5,24(sp)
1c00a370:	5b52                	lw	s6,52(sp)
1c00a372:	015bec33          	or	s8,s7,s5
1c00a376:	4ad2                	lw	s5,20(sp)
1c00a378:	0088d993          	srli	s3,a7,0x8
1c00a37c:	015b6bb3          	or	s7,s6,s5
1c00a380:	4ac2                	lw	s5,16(sp)
1c00a382:	5b62                	lw	s6,56(sp)
1c00a384:	00835a13          	srli	s4,t1,0x8
1c00a388:	015b6b33          	or	s6,s6,s5
1c00a38c:	c25a                	sw	s6,4(sp)
1c00a38e:	4ab2                	lw	s5,12(sp)
1c00a390:	5b72                	lw	s6,60(sp)
1c00a392:	0ff9f993          	andi	s3,s3,255
1c00a396:	015b6b33          	or	s6,s6,s5
1c00a39a:	4a86                	lw	s5,64(sp)
1c00a39c:	c45a                	sw	s6,8(sp)
1c00a39e:	0ffa7a13          	andi	s4,s4,255
1c00a3a2:	5b66                	lw	s6,120(sp)
1c00a3a4:	09a2                	slli	s3,s3,0x8
1c00a3a6:	013ae9b3          	or	s3,s5,s3
1c00a3aa:	0a22                	slli	s4,s4,0x8
1c00a3ac:	c0ce                	sw	s3,64(sp)
1c00a3ae:	014b6a33          	or	s4,s6,s4
1c00a3b2:	59f6                	lw	s3,124(sp)
1c00a3b4:	4b16                	lw	s6,68(sp)
1c00a3b6:	4ab6                	lw	s5,76(sp)
1c00a3b8:	013b6b33          	or	s6,s6,s3
1c00a3bc:	c2da                	sw	s6,68(sp)
1c00a3be:	4b26                	lw	s6,72(sp)
1c00a3c0:	0ff77913          	andi	s2,a4,255
1c00a3c4:	016aeab3          	or	s5,s5,s6
1c00a3c8:	d6ca                	sw	s2,108(sp)
1c00a3ca:	49d6                	lw	s3,84(sp)
1c00a3cc:	c6d6                	sw	s5,76(sp)
1c00a3ce:	4ac6                	lw	s5,80(sp)
1c00a3d0:	4b76                	lw	s6,92(sp)
1c00a3d2:	0159e9b3          	or	s3,s3,s5
1c00a3d6:	cace                	sw	s3,84(sp)
1c00a3d8:	49e6                	lw	s3,88(sp)
1c00a3da:	5a96                	lw	s5,100(sp)
1c00a3dc:	013b6b33          	or	s6,s6,s3
1c00a3e0:	ceda                	sw	s6,92(sp)
1c00a3e2:	5b06                	lw	s6,96(sp)
1c00a3e4:	59b6                	lw	s3,108(sp)
1c00a3e6:	016aeab3          	or	s5,s5,s6
1c00a3ea:	d2d6                	sw	s5,100(sp)
1c00a3ec:	5aa6                	lw	s5,104(sp)
1c00a3ee:	5b56                	lw	s6,116(sp)
1c00a3f0:	0159e9b3          	or	s3,s3,s5
1c00a3f4:	d6ce                	sw	s3,108(sp)
1c00a3f6:	59c6                	lw	s3,112(sp)
1c00a3f8:	ff010937          	lui	s2,0xff010
1c00a3fc:	013b6b33          	or	s6,s6,s3
1c00a400:	00ff09b7          	lui	s3,0xff0
1c00a404:	0134fab3          	and	s5,s1,s3
1c00a408:	0133f9b3          	and	s3,t2,s3
1c00a40c:	d44e                	sw	s3,40(sp)
1c00a40e:	00ff09b7          	lui	s3,0xff0
1c00a412:	0132f9b3          	and	s3,t0,s3
1c00a416:	d64e                	sw	s3,44(sp)
1c00a418:	00ff09b7          	lui	s3,0xff0
1c00a41c:	013ff9b3          	and	s3,t6,s3
1c00a420:	d84e                	sw	s3,48(sp)
1c00a422:	00ff09b7          	lui	s3,0xff0
1c00a426:	013f79b3          	and	s3,t5,s3
1c00a42a:	da4e                	sw	s3,52(sp)
1c00a42c:	00ff09b7          	lui	s3,0xff0
1c00a430:	013ef9b3          	and	s3,t4,s3
1c00a434:	dc4e                	sw	s3,56(sp)
1c00a436:	00ff09b7          	lui	s3,0xff0
1c00a43a:	013e79b3          	and	s3,t3,s3
1c00a43e:	197d                	addi	s2,s2,-1
1c00a440:	de4e                	sw	s3,60(sp)
1c00a442:	00ff09b7          	lui	s3,0xff0
1c00a446:	012c7c33          	and	s8,s8,s2
1c00a44a:	012bfbb3          	and	s7,s7,s2
1c00a44e:	013379b3          	and	s3,t1,s3
1c00a452:	012cfcb3          	and	s9,s9,s2
1c00a456:	ca62                	sw	s8,20(sp)
1c00a458:	c85e                	sw	s7,16(sp)
1c00a45a:	4c22                	lw	s8,8(sp)
1c00a45c:	4b92                	lw	s7,4(sp)
1c00a45e:	dcce                	sw	s3,120(sp)
1c00a460:	00ff09b7          	lui	s3,0xff0
1c00a464:	cc66                	sw	s9,24(sp)
1c00a466:	0138f9b3          	and	s3,a7,s3
1c00a46a:	4c86                	lw	s9,64(sp)
1c00a46c:	012d7d33          	and	s10,s10,s2
1c00a470:	012bfbb3          	and	s7,s7,s2
1c00a474:	012c7c33          	and	s8,s8,s2
1c00a478:	012a7a33          	and	s4,s4,s2
1c00a47c:	dece                	sw	s3,124(sp)
1c00a47e:	00ff09b7          	lui	s3,0xff0
1c00a482:	dada                	sw	s6,116(sp)
1c00a484:	ce6a                	sw	s10,28(sp)
1c00a486:	c65e                	sw	s7,12(sp)
1c00a488:	c462                	sw	s8,8(sp)
1c00a48a:	c252                	sw	s4,4(sp)
1c00a48c:	012cfcb3          	and	s9,s9,s2
1c00a490:	013879b3          	and	s3,a6,s3
1c00a494:	c0e6                	sw	s9,64(sp)
1c00a496:	c4ce                	sw	s3,72(sp)
1c00a498:	00ff09b7          	lui	s3,0xff0
1c00a49c:	013579b3          	and	s3,a0,s3
1c00a4a0:	c8ce                	sw	s3,80(sp)
1c00a4a2:	00ff09b7          	lui	s3,0xff0
1c00a4a6:	0135f9b3          	and	s3,a1,s3
1c00a4aa:	ccce                	sw	s3,88(sp)
1c00a4ac:	49d6                	lw	s3,84(sp)
1c00a4ae:	012dfb33          	and	s6,s11,s2
1c00a4b2:	0129f9b3          	and	s3,s3,s2
1c00a4b6:	cace                	sw	s3,84(sp)
1c00a4b8:	00ff09b7          	lui	s3,0xff0
1c00a4bc:	013679b3          	and	s3,a2,s3
1c00a4c0:	d0ce                	sw	s3,96(sp)
1c00a4c2:	00ff09b7          	lui	s3,0xff0
1c00a4c6:	0136f9b3          	and	s3,a3,s3
1c00a4ca:	d4ce                	sw	s3,104(sp)
1c00a4cc:	00ff09b7          	lui	s3,0xff0
1c00a4d0:	4db6                	lw	s11,76(sp)
1c00a4d2:	4a76                	lw	s4,92(sp)
1c00a4d4:	013779b3          	and	s3,a4,s3
1c00a4d8:	d8ce                	sw	s3,112(sp)
1c00a4da:	00ff09b7          	lui	s3,0xff0
1c00a4de:	4d16                	lw	s10,68(sp)
1c00a4e0:	5b96                	lw	s7,100(sp)
1c00a4e2:	012dfdb3          	and	s11,s11,s2
1c00a4e6:	012a7a33          	and	s4,s4,s2
1c00a4ea:	0137f9b3          	and	s3,a5,s3
1c00a4ee:	5cd6                	lw	s9,116(sp)
1c00a4f0:	5c36                	lw	s8,108(sp)
1c00a4f2:	c6ee                	sw	s11,76(sp)
1c00a4f4:	ced2                	sw	s4,92(sp)
1c00a4f6:	c04e                	sw	s3,0(sp)
1c00a4f8:	5a22                	lw	s4,40(sp)
1c00a4fa:	49f2                	lw	s3,28(sp)
1c00a4fc:	015b6db3          	or	s11,s6,s5
1c00a500:	4ae2                	lw	s5,24(sp)
1c00a502:	5b32                	lw	s6,44(sp)
1c00a504:	012d7d33          	and	s10,s10,s2
1c00a508:	012bfbb3          	and	s7,s7,s2
1c00a50c:	c2ea                	sw	s10,68(sp)
1c00a50e:	d2de                	sw	s7,100(sp)
1c00a510:	012c7c33          	and	s8,s8,s2
1c00a514:	4bd2                	lw	s7,20(sp)
1c00a516:	012cf933          	and	s2,s9,s2
1c00a51a:	0149ed33          	or	s10,s3,s4
1c00a51e:	016aecb3          	or	s9,s5,s6
1c00a522:	59c2                	lw	s3,48(sp)
1c00a524:	4a42                	lw	s4,16(sp)
1c00a526:	5ad2                	lw	s5,52(sp)
1c00a528:	d6e2                	sw	s8,108(sp)
1c00a52a:	013bec33          	or	s8,s7,s3
1c00a52e:	49b2                	lw	s3,12(sp)
1c00a530:	015a6bb3          	or	s7,s4,s5
1c00a534:	5a62                	lw	s4,56(sp)
1c00a536:	daca                	sw	s2,116(sp)
1c00a538:	0149eb33          	or	s6,s3,s4
1c00a53c:	49a2                	lw	s3,8(sp)
1c00a53e:	5a72                	lw	s4,60(sp)
1c00a540:	80e1                	srli	s1,s1,0x18
1c00a542:	0149eab3          	or	s5,s3,s4
1c00a546:	5a66                	lw	s4,120(sp)
1c00a548:	4992                	lw	s3,4(sp)
1c00a54a:	04e2                	slli	s1,s1,0x18
1c00a54c:	0149e9b3          	or	s3,s3,s4
1c00a550:	dcce                	sw	s3,120(sp)
1c00a552:	5a76                	lw	s4,124(sp)
1c00a554:	4986                	lw	s3,64(sp)
1c00a556:	01000937          	lui	s2,0x1000
1c00a55a:	0149e9b3          	or	s3,s3,s4
1c00a55e:	d24e                	sw	s3,36(sp)
1c00a560:	4a26                	lw	s4,72(sp)
1c00a562:	4996                	lw	s3,68(sp)
1c00a564:	197d                	addi	s2,s2,-1
1c00a566:	0149e9b3          	or	s3,s3,s4
1c00a56a:	d44e                	sw	s3,40(sp)
1c00a56c:	4a46                	lw	s4,80(sp)
1c00a56e:	49b6                	lw	s3,76(sp)
1c00a570:	c2a6                	sw	s1,68(sp)
1c00a572:	0149e9b3          	or	s3,s3,s4
1c00a576:	d64e                	sw	s3,44(sp)
1c00a578:	4a66                	lw	s4,88(sp)
1c00a57a:	49d6                	lw	s3,84(sp)
1c00a57c:	54e6                	lw	s1,120(sp)
1c00a57e:	0149e9b3          	or	s3,s3,s4
1c00a582:	d84e                	sw	s3,48(sp)
1c00a584:	5a06                	lw	s4,96(sp)
1c00a586:	49f6                	lw	s3,92(sp)
1c00a588:	018ede93          	srli	t4,t4,0x18
1c00a58c:	0149e9b3          	or	s3,s3,s4
1c00a590:	da4e                	sw	s3,52(sp)
1c00a592:	5a26                	lw	s4,104(sp)
1c00a594:	5996                	lw	s3,100(sp)
1c00a596:	018e5e13          	srli	t3,t3,0x18
1c00a59a:	0149e9b3          	or	s3,s3,s4
1c00a59e:	dc4e                	sw	s3,56(sp)
1c00a5a0:	5a46                	lw	s4,112(sp)
1c00a5a2:	59b6                	lw	s3,108(sp)
1c00a5a4:	01835313          	srli	t1,t1,0x18
1c00a5a8:	0149e9b3          	or	s3,s3,s4
1c00a5ac:	de4e                	sw	s3,60(sp)
1c00a5ae:	4a02                	lw	s4,0(sp)
1c00a5b0:	59d6                	lw	s3,116(sp)
1c00a5b2:	012b7b33          	and	s6,s6,s2
1c00a5b6:	0149e9b3          	or	s3,s3,s4
1c00a5ba:	c0ce                	sw	s3,64(sp)
1c00a5bc:	5992                	lw	s3,36(sp)
1c00a5be:	0124fa33          	and	s4,s1,s2
1c00a5c2:	0129f9b3          	and	s3,s3,s2
1c00a5c6:	d24e                	sw	s3,36(sp)
1c00a5c8:	54a2                	lw	s1,40(sp)
1c00a5ca:	59b2                	lw	s3,44(sp)
1c00a5cc:	0124f4b3          	and	s1,s1,s2
1c00a5d0:	d426                	sw	s1,40(sp)
1c00a5d2:	54c2                	lw	s1,48(sp)
1c00a5d4:	0129f9b3          	and	s3,s3,s2
1c00a5d8:	d64e                	sw	s3,44(sp)
1c00a5da:	0124f4b3          	and	s1,s1,s2
1c00a5de:	59d2                	lw	s3,52(sp)
1c00a5e0:	d826                	sw	s1,48(sp)
1c00a5e2:	54e2                	lw	s1,56(sp)
1c00a5e4:	0129f9b3          	and	s3,s3,s2
1c00a5e8:	da4e                	sw	s3,52(sp)
1c00a5ea:	0124f4b3          	and	s1,s1,s2
1c00a5ee:	59f2                	lw	s3,60(sp)
1c00a5f0:	dc26                	sw	s1,56(sp)
1c00a5f2:	4486                	lw	s1,64(sp)
1c00a5f4:	012afab3          	and	s5,s5,s2
1c00a5f8:	0129f9b3          	and	s3,s3,s2
1c00a5fc:	0183d393          	srli	t2,t2,0x18
1c00a600:	0182d293          	srli	t0,t0,0x18
1c00a604:	018fdf93          	srli	t6,t6,0x18
1c00a608:	018f5f13          	srli	t5,t5,0x18
1c00a60c:	0ee2                	slli	t4,t4,0x18
1c00a60e:	0e62                	slli	t3,t3,0x18
1c00a610:	0362                	slli	t1,t1,0x18
1c00a612:	de4e                	sw	s3,60(sp)
1c00a614:	012dfdb3          	and	s11,s11,s2
1c00a618:	0124f9b3          	and	s3,s1,s2
1c00a61c:	012d7d33          	and	s10,s10,s2
1c00a620:	012cfcb3          	and	s9,s9,s2
1c00a624:	012c7c33          	and	s8,s8,s2
1c00a628:	012bfbb3          	and	s7,s7,s2
1c00a62c:	01db6eb3          	or	t4,s6,t4
1c00a630:	4916                	lw	s2,68(sp)
1c00a632:	5b32                	lw	s6,44(sp)
1c00a634:	01caee33          	or	t3,s5,t3
1c00a638:	006a6333          	or	t1,s4,t1
1c00a63c:	5aa2                	lw	s5,40(sp)
1c00a63e:	5a12                	lw	s4,36(sp)
1c00a640:	0188d893          	srli	a7,a7,0x18
1c00a644:	01885813          	srli	a6,a6,0x18
1c00a648:	8161                	srli	a0,a0,0x18
1c00a64a:	03e2                	slli	t2,t2,0x18
1c00a64c:	02e2                	slli	t0,t0,0x18
1c00a64e:	0fe2                	slli	t6,t6,0x18
1c00a650:	0f62                	slli	t5,t5,0x18
1c00a652:	007d63b3          	or	t2,s10,t2
1c00a656:	005ce2b3          	or	t0,s9,t0
1c00a65a:	5d72                	lw	s10,60(sp)
1c00a65c:	5ce2                	lw	s9,56(sp)
1c00a65e:	01fc6fb3          	or	t6,s8,t6
1c00a662:	01ebef33          	or	t5,s7,t5
1c00a666:	5c52                	lw	s8,52(sp)
1c00a668:	5bc2                	lw	s7,48(sp)
1c00a66a:	81e1                	srli	a1,a1,0x18
1c00a66c:	8261                	srli	a2,a2,0x18
1c00a66e:	82e1                	srli	a3,a3,0x18
1c00a670:	8361                	srli	a4,a4,0x18
1c00a672:	83e1                	srli	a5,a5,0x18
1c00a674:	08e2                	slli	a7,a7,0x18
1c00a676:	0862                	slli	a6,a6,0x18
1c00a678:	0562                	slli	a0,a0,0x18
1c00a67a:	012de4b3          	or	s1,s11,s2
1c00a67e:	05e2                	slli	a1,a1,0x18
1c00a680:	011a6933          	or	s2,s4,a7
1c00a684:	0662                	slli	a2,a2,0x18
1c00a686:	010aea33          	or	s4,s5,a6
1c00a68a:	06e2                	slli	a3,a3,0x18
1c00a68c:	00ab6ab3          	or	s5,s6,a0
1c00a690:	0762                	slli	a4,a4,0x18
1c00a692:	07e2                	slli	a5,a5,0x18
1c00a694:	c004                	sw	s1,0(s0)
1c00a696:	03242023          	sw	s2,32(s0)
1c00a69a:	03442223          	sw	s4,36(s0)
1c00a69e:	03542423          	sw	s5,40(s0)
1c00a6a2:	00bbe5b3          	or	a1,s7,a1
1c00a6a6:	00cc6633          	or	a2,s8,a2
1c00a6aa:	00dce6b3          	or	a3,s9,a3
1c00a6ae:	00ed6733          	or	a4,s10,a4
1c00a6b2:	00f9e7b3          	or	a5,s3,a5
1c00a6b6:	00742223          	sw	t2,4(s0)
1c00a6ba:	00542423          	sw	t0,8(s0)
1c00a6be:	01f42623          	sw	t6,12(s0)
1c00a6c2:	01e42823          	sw	t5,16(s0)
1c00a6c6:	01d42a23          	sw	t4,20(s0)
1c00a6ca:	01c42c23          	sw	t3,24(s0)
1c00a6ce:	00642e23          	sw	t1,28(s0)
1c00a6d2:	d44c                	sw	a1,44(s0)
1c00a6d4:	d810                	sw	a2,48(s0)
1c00a6d6:	d854                	sw	a3,52(s0)
1c00a6d8:	dc18                	sw	a4,56(s0)
1c00a6da:	dc5c                	sw	a5,60(s0)
1c00a6dc:	24c12083          	lw	ra,588(sp)
1c00a6e0:	24812403          	lw	s0,584(sp)
1c00a6e4:	24412483          	lw	s1,580(sp)
1c00a6e8:	24012903          	lw	s2,576(sp)
1c00a6ec:	23c12983          	lw	s3,572(sp)
1c00a6f0:	23812a03          	lw	s4,568(sp)
1c00a6f4:	23412a83          	lw	s5,564(sp)
1c00a6f8:	23012b03          	lw	s6,560(sp)
1c00a6fc:	22c12b83          	lw	s7,556(sp)
1c00a700:	22812c03          	lw	s8,552(sp)
1c00a704:	22412c83          	lw	s9,548(sp)
1c00a708:	22012d03          	lw	s10,544(sp)
1c00a70c:	21c12d83          	lw	s11,540(sp)
1c00a710:	25010113          	addi	sp,sp,592
1c00a714:	8082                	ret
1c00a716:	4781                	li	a5,0
1c00a718:	fbeff06f          	j	1c009ed6 <sha3_512+0x10c>

1c00a71c <PQCLEAN_KYBER768_CLEAN_indcpa_enc>:
1c00a71c:	7119                	addi	sp,sp,-128
1c00a71e:	7375                	lui	t1,0xffffd
1c00a720:	de86                	sw	ra,124(sp)
1c00a722:	dca2                	sw	s0,120(sp)
1c00a724:	daa6                	sw	s1,116(sp)
1c00a726:	d8ca                	sw	s2,112(sp)
1c00a728:	d2d6                	sw	s5,100(sp)
1c00a72a:	d0da                	sw	s6,96(sp)
1c00a72c:	cede                	sw	s7,92(sp)
1c00a72e:	c6ee                	sw	s11,76(sp)
1c00a730:	d6ce                	sw	s3,108(sp)
1c00a732:	d4d2                	sw	s4,104(sp)
1c00a734:	cce2                	sw	s8,88(sp)
1c00a736:	cae6                	sw	s9,84(sp)
1c00a738:	c8ea                	sw	s10,80(sp)
1c00a73a:	670d                	lui	a4,0x3
1c00a73c:	911a                	add	sp,sp,t1
1c00a73e:	ce2a                	sw	a0,28(sp)
1c00a740:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a744:	7579                	lui	a0,0xffffe
1c00a746:	970a                	add	a4,a4,sp
1c00a748:	c0050513          	addi	a0,a0,-1024 # ffffdc00 <pulp__FC+0xffffdc01>
1c00a74c:	84ae                	mv	s1,a1
1c00a74e:	953a                	add	a0,a0,a4
1c00a750:	85b2                	mv	a1,a2
1c00a752:	8432                	mv	s0,a2
1c00a754:	cc36                	sw	a3,24(sp)
1c00a756:	213000ef          	jal	ra,1c00b168 <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>
1c00a75a:	6e8d                	lui	t4,0x3
1c00a75c:	7975                	lui	s2,0xffffd
1c00a75e:	040e8e93          	addi	t4,t4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a762:	49842703          	lw	a4,1176(s0)
1c00a766:	49c42783          	lw	a5,1180(s0)
1c00a76a:	9e8a                	add	t4,t4,sp
1c00a76c:	48042e03          	lw	t3,1152(s0)
1c00a770:	48442303          	lw	t1,1156(s0)
1c00a774:	48842883          	lw	a7,1160(s0)
1c00a778:	48c42803          	lw	a6,1164(s0)
1c00a77c:	49042603          	lw	a2,1168(s0)
1c00a780:	49442683          	lw	a3,1172(s0)
1c00a784:	20090513          	addi	a0,s2,512 # ffffd200 <pulp__FC+0xffffd201>
1c00a788:	85a6                	mv	a1,s1
1c00a78a:	9576                	add	a0,a0,t4
1c00a78c:	dc3a                	sw	a4,56(sp)
1c00a78e:	de3e                	sw	a5,60(sp)
1c00a790:	d072                	sw	t3,32(sp)
1c00a792:	d21a                	sw	t1,36(sp)
1c00a794:	d446                	sw	a7,40(sp)
1c00a796:	d642                	sw	a6,44(sp)
1c00a798:	d832                	sw	a2,48(sp)
1c00a79a:	da36                	sw	a3,52(sp)
1c00a79c:	73e000ef          	jal	ra,1c00aeda <PQCLEAN_KYBER768_CLEAN_poly_frommsg>
1c00a7a0:	670d                	lui	a4,0x3
1c00a7a2:	77fd                	lui	a5,0xfffff
1c00a7a4:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a7a8:	970a                	add	a4,a4,sp
1c00a7aa:	80078493          	addi	s1,a5,-2048 # ffffe800 <pulp__FC+0xffffe801>
1c00a7ae:	e0078793          	addi	a5,a5,-512
1c00a7b2:	94ba                	add	s1,s1,a4
1c00a7b4:	00f70eb3          	add	t4,a4,a5
1c00a7b8:	670d                	lui	a4,0x3
1c00a7ba:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a7be:	1901                	addi	s2,s2,-32
1c00a7c0:	6b05                	lui	s6,0x1
1c00a7c2:	970a                	add	a4,a4,sp
1c00a7c4:	ca76                	sw	t4,20(sp)
1c00a7c6:	c602                	sw	zero,12(sp)
1c00a7c8:	01270bb3          	add	s7,a4,s2
1c00a7cc:	1f848a93          	addi	s5,s1,504 # ff0101f8 <pulp__FC+0xff0101f9>
1c00a7d0:	fffb0d93          	addi	s11,s6,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00a7d4:	4732                	lw	a4,12(sp)
1c00a7d6:	678d                	lui	a5,0x3
1c00a7d8:	04078793          	addi	a5,a5,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a7dc:	7ef9                	lui	t4,0xffffe
1c00a7de:	0ff77713          	andi	a4,a4,255
1c00a7e2:	978a                	add	a5,a5,sp
1c00a7e4:	200e8e93          	addi	t4,t4,512 # ffffe200 <pulp__FC+0xffffe201>
1c00a7e8:	c83a                	sw	a4,16(sp)
1c00a7ea:	4452                	lw	s0,20(sp)
1c00a7ec:	4901                	li	s2,0
1c00a7ee:	01d789b3          	add	s3,a5,t4
1c00a7f2:	a01d                	j	1c00a818 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xfc>
1c00a7f4:	001c9813          	slli	a6,s9,0x1
1c00a7f8:	9822                	add	a6,a6,s0
1c00a7fa:	001c8893          	addi	a7,s9,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00a7fe:	00f81023          	sh	a5,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00a802:	22a89c63          	bne	a7,a0,1c00aa3a <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x31e>
1c00a806:	854e                	mv	a0,s3
1c00a808:	994ff0ef          	jal	ra,1c00999c <shake128_ctx_release>
1c00a80c:	0905                	addi	s2,s2,1
1c00a80e:	478d                	li	a5,3
1c00a810:	20040413          	addi	s0,s0,512
1c00a814:	0ef90463          	beq	s2,a5,1c00a8fc <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x1e0>
1c00a818:	4642                	lw	a2,16(sp)
1c00a81a:	0ff97693          	andi	a3,s2,255
1c00a81e:	85de                	mv	a1,s7
1c00a820:	854e                	mv	a0,s3
1c00a822:	523000ef          	jal	ra,1c00b544 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00a826:	458d                	li	a1,3
1c00a828:	8526                	mv	a0,s1
1c00a82a:	864e                	mv	a2,s3
1c00a82c:	8b0ff0ef          	jal	ra,1c0098dc <shake128_squeezeblocks>
1c00a830:	4c81                	li	s9,0
1c00a832:	8726                	mv	a4,s1
1c00a834:	d00b0593          	addi	a1,s6,-768
1c00a838:	10000513          	li	a0,256
1c00a83c:	00174603          	lbu	a2,1(a4)
1c00a840:	00074683          	lbu	a3,0(a4)
1c00a844:	00861793          	slli	a5,a2,0x8
1c00a848:	8fd5                	or	a5,a5,a3
1c00a84a:	01b7f7b3          	and	a5,a5,s11
1c00a84e:	00274683          	lbu	a3,2(a4)
1c00a852:	faf5f1e3          	bleu	a5,a1,1c00a7f4 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xd8>
1c00a856:	8211                	srli	a2,a2,0x4
1c00a858:	0692                	slli	a3,a3,0x4
1c00a85a:	8ed1                	or	a3,a3,a2
1c00a85c:	00d5c863          	blt	a1,a3,1c00a86c <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x150>
1c00a860:	001c9793          	slli	a5,s9,0x1
1c00a864:	97a2                	add	a5,a5,s0
1c00a866:	00d79023          	sh	a3,0(a5)
1c00a86a:	0c85                	addi	s9,s9,1
1c00a86c:	f8ac8de3          	beq	s9,a0,1c00a806 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xea>
1c00a870:	070d                	addi	a4,a4,3
1c00a872:	fcea95e3          	bne	s5,a4,1c00a83c <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x120>
1c00a876:	0a848d13          	addi	s10,s1,168
1c00a87a:	10000a13          	li	s4,256
1c00a87e:	d00b0c13          	addi	s8,s6,-768
1c00a882:	a031                	j	1c00a88e <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x172>
1c00a884:	9cae                	add	s9,s9,a1
1c00a886:	0ff00793          	li	a5,255
1c00a88a:	f797eee3          	bltu	a5,s9,1c00a806 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xea>
1c00a88e:	4585                	li	a1,1
1c00a890:	8526                	mv	a0,s1
1c00a892:	864e                	mv	a2,s3
1c00a894:	848ff0ef          	jal	ra,1c0098dc <shake128_squeezeblocks>
1c00a898:	001c9513          	slli	a0,s9,0x1
1c00a89c:	9522                	add	a0,a0,s0
1c00a89e:	419a0eb3          	sub	t4,s4,s9
1c00a8a2:	86a6                	mv	a3,s1
1c00a8a4:	4581                	li	a1,0
1c00a8a6:	00159793          	slli	a5,a1,0x1
1c00a8aa:	00f50f33          	add	t5,a0,a5
1c00a8ae:	fda68be3          	beq	a3,s10,1c00a884 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x168>
1c00a8b2:	0016c703          	lbu	a4,1(a3)
1c00a8b6:	0006c603          	lbu	a2,0(a3)
1c00a8ba:	00871793          	slli	a5,a4,0x8
1c00a8be:	8fd1                	or	a5,a5,a2
1c00a8c0:	01b7f7b3          	and	a5,a5,s11
1c00a8c4:	00475613          	srli	a2,a4,0x4
1c00a8c8:	0026c703          	lbu	a4,2(a3)
1c00a8cc:	00fc6563          	bltu	s8,a5,1c00a8d6 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x1ba>
1c00a8d0:	00ff1023          	sh	a5,0(t5) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00a8d4:	0585                	addi	a1,a1,1
1c00a8d6:	00471793          	slli	a5,a4,0x4
1c00a8da:	8fd1                	or	a5,a5,a2
1c00a8dc:	fbd5f4e3          	bleu	t4,a1,1c00a884 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x168>
1c00a8e0:	00159713          	slli	a4,a1,0x1
1c00a8e4:	972a                	add	a4,a4,a0
1c00a8e6:	00158613          	addi	a2,a1,1
1c00a8ea:	00fc4763          	blt	s8,a5,1c00a8f8 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x1dc>
1c00a8ee:	00f71023          	sh	a5,0(a4)
1c00a8f2:	85b2                	mv	a1,a2
1c00a8f4:	f9d678e3          	bleu	t4,a2,1c00a884 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x168>
1c00a8f8:	068d                	addi	a3,a3,3
1c00a8fa:	b775                	j	1c00a8a6 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x18a>
1c00a8fc:	47b2                	lw	a5,12(sp)
1c00a8fe:	4ed2                	lw	t4,20(sp)
1c00a900:	0785                	addi	a5,a5,1
1c00a902:	600e8e93          	addi	t4,t4,1536
1c00a906:	c63e                	sw	a5,12(sp)
1c00a908:	ca76                	sw	t4,20(sp)
1c00a90a:	ed2795e3          	bne	a5,s2,1c00a7d4 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0xb8>
1c00a90e:	670d                	lui	a4,0x3
1c00a910:	7975                	lui	s2,0xffffd
1c00a912:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a916:	970a                	add	a4,a4,sp
1c00a918:	60090493          	addi	s1,s2,1536 # ffffd600 <pulp__FC+0xffffd601>
1c00a91c:	94ba                	add	s1,s1,a4
1c00a91e:	45e2                	lw	a1,24(sp)
1c00a920:	8526                	mv	a0,s1
1c00a922:	4601                	li	a2,0
1c00a924:	25a1                	jal	1c00af6c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00a926:	45e2                	lw	a1,24(sp)
1c00a928:	20048513          	addi	a0,s1,512
1c00a92c:	4605                	li	a2,1
1c00a92e:	2d3d                	jal	1c00af6c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00a930:	45e2                	lw	a1,24(sp)
1c00a932:	40048513          	addi	a0,s1,1024
1c00a936:	4609                	li	a2,2
1c00a938:	2d15                	jal	1c00af6c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00a93a:	45e2                	lw	a1,24(sp)
1c00a93c:	854e                	mv	a0,s3
1c00a93e:	460d                	li	a2,3
1c00a940:	2d81                	jal	1c00af90 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00a942:	45e2                	lw	a1,24(sp)
1c00a944:	20098513          	addi	a0,s3,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c00a948:	4611                	li	a2,4
1c00a94a:	2599                	jal	1c00af90 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00a94c:	45e2                	lw	a1,24(sp)
1c00a94e:	40098513          	addi	a0,s3,1024
1c00a952:	4615                	li	a2,5
1c00a954:	2d35                	jal	1c00af90 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00a956:	678d                	lui	a5,0x3
1c00a958:	04078793          	addi	a5,a5,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a95c:	978a                	add	a5,a5,sp
1c00a95e:	40090a13          	addi	s4,s2,1024
1c00a962:	9a3e                	add	s4,s4,a5
1c00a964:	45e2                	lw	a1,24(sp)
1c00a966:	4619                	li	a2,6
1c00a968:	8552                	mv	a0,s4
1c00a96a:	251d                	jal	1c00af90 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00a96c:	8526                	mv	a0,s1
1c00a96e:	025000ef          	jal	ra,1c00b192 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00a972:	6e8d                	lui	t4,0x3
1c00a974:	77fd                	lui	a5,0xfffff
1c00a976:	040e8e93          	addi	t4,t4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a97a:	9e8a                	add	t4,t4,sp
1c00a97c:	e0078a93          	addi	s5,a5,-512 # ffffee00 <pulp__FC+0xffffee01>
1c00a980:	80078793          	addi	a5,a5,-2048
1c00a984:	00fe8433          	add	s0,t4,a5
1c00a988:	9af6                	add	s5,s5,t4
1c00a98a:	85d6                	mv	a1,s5
1c00a98c:	8522                	mv	a0,s0
1c00a98e:	8626                	mv	a2,s1
1c00a990:	03b000ef          	jal	ra,1c00b1ca <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00a994:	8626                	mv	a2,s1
1c00a996:	600a8593          	addi	a1,s5,1536 # ff0600 <__CTOR_LIST__-0x1b00fa04>
1c00a99a:	20040513          	addi	a0,s0,512
1c00a99e:	02d000ef          	jal	ra,1c00b1ca <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00a9a2:	670d                	lui	a4,0x3
1c00a9a4:	a4070713          	addi	a4,a4,-1472 # 2a40 <__CTOR_LIST__-0x1bffd5c4>
1c00a9a8:	00e105b3          	add	a1,sp,a4
1c00a9ac:	8626                	mv	a2,s1
1c00a9ae:	40040513          	addi	a0,s0,1024
1c00a9b2:	019000ef          	jal	ra,1c00b1ca <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00a9b6:	6e8d                	lui	t4,0x3
1c00a9b8:	77f9                	lui	a5,0xffffe
1c00a9ba:	040e8e93          	addi	t4,t4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a9be:	9e8a                	add	t4,t4,sp
1c00a9c0:	c0078593          	addi	a1,a5,-1024 # ffffdc00 <pulp__FC+0xffffdc01>
1c00a9c4:	95f6                	add	a1,a1,t4
1c00a9c6:	8626                	mv	a2,s1
1c00a9c8:	0088                	addi	a0,sp,64
1c00a9ca:	001000ef          	jal	ra,1c00b1ca <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00a9ce:	8522                	mv	a0,s0
1c00a9d0:	7de000ef          	jal	ra,1c00b1ae <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>
1c00a9d4:	0088                	addi	a0,sp,64
1c00a9d6:	2521                	jal	1c00afde <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00a9d8:	864e                	mv	a2,s3
1c00a9da:	85a2                	mv	a1,s0
1c00a9dc:	8522                	mv	a0,s0
1c00a9de:	067000ef          	jal	ra,1c00b244 <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c00a9e2:	008c                	addi	a1,sp,64
1c00a9e4:	8652                	mv	a2,s4
1c00a9e6:	852e                	mv	a0,a1
1c00a9e8:	2579                	jal	1c00b076 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00a9ea:	670d                	lui	a4,0x3
1c00a9ec:	04070713          	addi	a4,a4,64 # 3040 <__CTOR_LIST__-0x1bffcfc4>
1c00a9f0:	970a                	add	a4,a4,sp
1c00a9f2:	008c                	addi	a1,sp,64
1c00a9f4:	20090613          	addi	a2,s2,512
1c00a9f8:	963a                	add	a2,a2,a4
1c00a9fa:	852e                	mv	a0,a1
1c00a9fc:	2dad                	jal	1c00b076 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00a9fe:	8522                	mv	a0,s0
1c00aa00:	029000ef          	jal	ra,1c00b228 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c00aa04:	0088                	addi	a0,sp,64
1c00aa06:	25a1                	jal	1c00b04e <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00aa08:	4572                	lw	a0,28(sp)
1c00aa0a:	85a2                	mv	a1,s0
1c00aa0c:	2561                	jal	1c00b094 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>
1c00aa0e:	47f2                	lw	a5,28(sp)
1c00aa10:	008c                	addi	a1,sp,64
1c00aa12:	3c078513          	addi	a0,a5,960
1c00aa16:	2605                	jal	1c00ad36 <PQCLEAN_KYBER768_CLEAN_poly_compress>
1c00aa18:	630d                	lui	t1,0x3
1c00aa1a:	911a                	add	sp,sp,t1
1c00aa1c:	50f6                	lw	ra,124(sp)
1c00aa1e:	5466                	lw	s0,120(sp)
1c00aa20:	54d6                	lw	s1,116(sp)
1c00aa22:	5946                	lw	s2,112(sp)
1c00aa24:	59b6                	lw	s3,108(sp)
1c00aa26:	5a26                	lw	s4,104(sp)
1c00aa28:	5a96                	lw	s5,100(sp)
1c00aa2a:	5b06                	lw	s6,96(sp)
1c00aa2c:	4bf6                	lw	s7,92(sp)
1c00aa2e:	4c66                	lw	s8,88(sp)
1c00aa30:	4cd6                	lw	s9,84(sp)
1c00aa32:	4d46                	lw	s10,80(sp)
1c00aa34:	4db6                	lw	s11,76(sp)
1c00aa36:	6109                	addi	sp,sp,128
1c00aa38:	8082                	ret
1c00aa3a:	00469793          	slli	a5,a3,0x4
1c00aa3e:	00465693          	srli	a3,a2,0x4
1c00aa42:	8edd                	or	a3,a3,a5
1c00aa44:	8cc6                	mv	s9,a7
1c00aa46:	e0d5dde3          	ble	a3,a1,1c00a860 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x144>
1c00aa4a:	b51d                	j	1c00a870 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x154>

1c00aa4c <PQCLEAN_KYBER768_CLEAN_crypto_kem_enc>:
1c00aa4c:	7175                	addi	sp,sp,-144
1c00aa4e:	c522                	sw	s0,136(sp)
1c00aa50:	c14a                	sw	s2,128(sp)
1c00aa52:	842a                	mv	s0,a0
1c00aa54:	892e                	mv	s2,a1
1c00aa56:	850a                	mv	a0,sp
1c00aa58:	02000593          	li	a1,32
1c00aa5c:	c706                	sw	ra,140(sp)
1c00aa5e:	c326                	sw	s1,132(sp)
1c00aa60:	84b2                	mv	s1,a2
1c00aa62:	023000ef          	jal	ra,1c00b284 <randombytes>
1c00aa66:	858a                	mv	a1,sp
1c00aa68:	850a                	mv	a0,sp
1c00aa6a:	02000613          	li	a2,32
1c00aa6e:	974ff0ef          	jal	ra,1c009be2 <sha3_256>
1c00aa72:	85a6                	mv	a1,s1
1c00aa74:	1008                	addi	a0,sp,32
1c00aa76:	4a000613          	li	a2,1184
1c00aa7a:	968ff0ef          	jal	ra,1c009be2 <sha3_256>
1c00aa7e:	858a                	mv	a1,sp
1c00aa80:	0088                	addi	a0,sp,64
1c00aa82:	04000613          	li	a2,64
1c00aa86:	b44ff0ef          	jal	ra,1c009dca <sha3_512>
1c00aa8a:	1094                	addi	a3,sp,96
1c00aa8c:	8626                	mv	a2,s1
1c00aa8e:	858a                	mv	a1,sp
1c00aa90:	8522                	mv	a0,s0
1c00aa92:	3169                	jal	1c00a71c <PQCLEAN_KYBER768_CLEAN_indcpa_enc>
1c00aa94:	85a2                	mv	a1,s0
1c00aa96:	1088                	addi	a0,sp,96
1c00aa98:	44000613          	li	a2,1088
1c00aa9c:	946ff0ef          	jal	ra,1c009be2 <sha3_256>
1c00aaa0:	854a                	mv	a0,s2
1c00aaa2:	0090                	addi	a2,sp,64
1c00aaa4:	04000693          	li	a3,64
1c00aaa8:	02000593          	li	a1,32
1c00aaac:	efbfe0ef          	jal	ra,1c0099a6 <shake256>
1c00aab0:	40ba                	lw	ra,140(sp)
1c00aab2:	442a                	lw	s0,136(sp)
1c00aab4:	449a                	lw	s1,132(sp)
1c00aab6:	490a                	lw	s2,128(sp)
1c00aab8:	4501                	li	a0,0
1c00aaba:	6149                	addi	sp,sp,144
1c00aabc:	8082                	ret

1c00aabe <PQCLEAN_KYBER768_CLEAN_ntt>:
1c00aabe:	7139                	addi	sp,sp,-64
1c00aac0:	da26                	sw	s1,52(sp)
1c00aac2:	d256                	sw	s5,36(sp)
1c00aac4:	d05a                	sw	s6,32(sp)
1c00aac6:	ce5e                	sw	s7,28(sp)
1c00aac8:	cc62                	sw	s8,24(sp)
1c00aaca:	ca66                	sw	s9,20(sp)
1c00aacc:	de06                	sw	ra,60(sp)
1c00aace:	dc22                	sw	s0,56(sp)
1c00aad0:	d84a                	sw	s2,48(sp)
1c00aad2:	d64e                	sw	s3,44(sp)
1c00aad4:	d452                	sw	s4,40(sp)
1c00aad6:	c86a                	sw	s10,16(sp)
1c00aad8:	c66e                	sw	s11,12(sp)
1c00aada:	8b2a                	mv	s6,a0
1c00aadc:	4c9d                	li	s9,7
1c00aade:	d0a00493          	li	s1,-758
1c00aae2:	4b85                	li	s7,1
1c00aae4:	08000a93          	li	s5,128
1c00aae8:	0ff00c13          	li	s8,255
1c00aaec:	001b8993          	addi	s3,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00aaf0:	1c0007b7          	lui	a5,0x1c000
1c00aaf4:	4401                	li	s0,0
1c00aaf6:	00199a13          	slli	s4,s3,0x1
1c00aafa:	14c78793          	addi	a5,a5,332 # 1c00014c <PQCLEAN_KYBER768_CLEAN_zetas>
1c00aafe:	008a8933          	add	s2,s5,s0
1c00ab02:	9a3e                	add	s4,s4,a5
1c00ab04:	8bce                	mv	s7,s3
1c00ab06:	05247c63          	bleu	s2,s0,1c00ab5e <PQCLEAN_KYBER768_CLEAN_ntt+0xa0>
1c00ab0a:	00191793          	slli	a5,s2,0x1
1c00ab0e:	00fb0d33          	add	s10,s6,a5
1c00ab12:	0406                	slli	s0,s0,0x1
1c00ab14:	945a                	add	s0,s0,s6
1c00ab16:	8dea                	mv	s11,s10
1c00ab18:	000d1503          	lh	a0,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00ab1c:	0409                	addi	s0,s0,2
1c00ab1e:	02950533          	mul	a0,a0,s1
1c00ab22:	1df000ef          	jal	ra,1c00b500 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ab26:	ffe45703          	lhu	a4,-2(s0)
1c00ab2a:	0542                	slli	a0,a0,0x10
1c00ab2c:	8141                	srli	a0,a0,0x10
1c00ab2e:	8f09                	sub	a4,a4,a0
1c00ab30:	00ed1023          	sh	a4,0(s10)
1c00ab34:	ffe45703          	lhu	a4,-2(s0)
1c00ab38:	0d09                	addi	s10,s10,2
1c00ab3a:	953a                	add	a0,a0,a4
1c00ab3c:	fea41f23          	sh	a0,-2(s0)
1c00ab40:	fc8d9ce3          	bne	s11,s0,1c00ab18 <PQCLEAN_KYBER768_CLEAN_ntt+0x5a>
1c00ab44:	01590433          	add	s0,s2,s5
1c00ab48:	008c6d63          	bltu	s8,s0,1c00ab62 <PQCLEAN_KYBER768_CLEAN_ntt+0xa4>
1c00ab4c:	0985                	addi	s3,s3,1
1c00ab4e:	008a8933          	add	s2,s5,s0
1c00ab52:	000a1483          	lh	s1,0(s4)
1c00ab56:	8bce                	mv	s7,s3
1c00ab58:	0a09                	addi	s4,s4,2
1c00ab5a:	fb2468e3          	bltu	s0,s2,1c00ab0a <PQCLEAN_KYBER768_CLEAN_ntt+0x4c>
1c00ab5e:	844a                	mv	s0,s2
1c00ab60:	b7f5                	j	1c00ab4c <PQCLEAN_KYBER768_CLEAN_ntt+0x8e>
1c00ab62:	1cfd                	addi	s9,s9,-1
1c00ab64:	001ada93          	srli	s5,s5,0x1
1c00ab68:	000c8b63          	beqz	s9,1c00ab7e <PQCLEAN_KYBER768_CLEAN_ntt+0xc0>
1c00ab6c:	1c0007b7          	lui	a5,0x1c000
1c00ab70:	0986                	slli	s3,s3,0x1
1c00ab72:	14c78793          	addi	a5,a5,332 # 1c00014c <PQCLEAN_KYBER768_CLEAN_zetas>
1c00ab76:	99be                	add	s3,s3,a5
1c00ab78:	00099483          	lh	s1,0(s3)
1c00ab7c:	bf85                	j	1c00aaec <PQCLEAN_KYBER768_CLEAN_ntt+0x2e>
1c00ab7e:	50f2                	lw	ra,60(sp)
1c00ab80:	5462                	lw	s0,56(sp)
1c00ab82:	54d2                	lw	s1,52(sp)
1c00ab84:	5942                	lw	s2,48(sp)
1c00ab86:	59b2                	lw	s3,44(sp)
1c00ab88:	5a22                	lw	s4,40(sp)
1c00ab8a:	5a92                	lw	s5,36(sp)
1c00ab8c:	5b02                	lw	s6,32(sp)
1c00ab8e:	4bf2                	lw	s7,28(sp)
1c00ab90:	4c62                	lw	s8,24(sp)
1c00ab92:	4cd2                	lw	s9,20(sp)
1c00ab94:	4d42                	lw	s10,16(sp)
1c00ab96:	4db2                	lw	s11,12(sp)
1c00ab98:	6121                	addi	sp,sp,64
1c00ab9a:	8082                	ret

1c00ab9c <PQCLEAN_KYBER768_CLEAN_invntt>:
1c00ab9c:	7139                	addi	sp,sp,-64
1c00ab9e:	dc22                	sw	s0,56(sp)
1c00aba0:	da26                	sw	s1,52(sp)
1c00aba2:	d256                	sw	s5,36(sp)
1c00aba4:	d05a                	sw	s6,32(sp)
1c00aba6:	ce5e                	sw	s7,28(sp)
1c00aba8:	cc62                	sw	s8,24(sp)
1c00abaa:	de06                	sw	ra,60(sp)
1c00abac:	d84a                	sw	s2,48(sp)
1c00abae:	d64e                	sw	s3,44(sp)
1c00abb0:	d452                	sw	s4,40(sp)
1c00abb2:	ca66                	sw	s9,20(sp)
1c00abb4:	c86a                	sw	s10,16(sp)
1c00abb6:	c66e                	sw	s11,12(sp)
1c00abb8:	842a                	mv	s0,a0
1c00abba:	4c1d                	li	s8,7
1c00abbc:	65c00493          	li	s1,1628
1c00abc0:	07f00a93          	li	s5,127
1c00abc4:	4b09                	li	s6,2
1c00abc6:	0ff00b93          	li	s7,255
1c00abca:	800007b7          	lui	a5,0x80000
1c00abce:	fff7c793          	not	a5,a5
1c00abd2:	00fa8a33          	add	s4,s5,a5
1c00abd6:	1c000737          	lui	a4,0x1c000
1c00abda:	4781                	li	a5,0
1c00abdc:	0a06                	slli	s4,s4,0x1
1c00abde:	14c70713          	addi	a4,a4,332 # 1c00014c <PQCLEAN_KYBER768_CLEAN_zetas>
1c00abe2:	016789b3          	add	s3,a5,s6
1c00abe6:	9a3a                	add	s4,s4,a4
1c00abe8:	1afd                	addi	s5,s5,-1
1c00abea:	0737f263          	bleu	s3,a5,1c00ac4e <PQCLEAN_KYBER768_CLEAN_invntt+0xb2>
1c00abee:	00199d93          	slli	s11,s3,0x1
1c00abf2:	0786                	slli	a5,a5,0x1
1c00abf4:	9da2                	add	s11,s11,s0
1c00abf6:	00f40d33          	add	s10,s0,a5
1c00abfa:	896e                	mv	s2,s11
1c00abfc:	000d5c83          	lhu	s9,0(s10)
1c00ac00:	000dd503          	lhu	a0,0(s11)
1c00ac04:	0d09                	addi	s10,s10,2
1c00ac06:	9566                	add	a0,a0,s9
1c00ac08:	0542                	slli	a0,a0,0x10
1c00ac0a:	8541                	srai	a0,a0,0x10
1c00ac0c:	115000ef          	jal	ra,1c00b520 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00ac10:	fead1f23          	sh	a0,-2(s10)
1c00ac14:	000dd503          	lhu	a0,0(s11)
1c00ac18:	0d89                	addi	s11,s11,2
1c00ac1a:	41950533          	sub	a0,a0,s9
1c00ac1e:	0542                	slli	a0,a0,0x10
1c00ac20:	8541                	srai	a0,a0,0x10
1c00ac22:	fead9f23          	sh	a0,-2(s11)
1c00ac26:	02950533          	mul	a0,a0,s1
1c00ac2a:	0d7000ef          	jal	ra,1c00b500 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ac2e:	fead9f23          	sh	a0,-2(s11)
1c00ac32:	fda915e3          	bne	s2,s10,1c00abfc <PQCLEAN_KYBER768_CLEAN_invntt+0x60>
1c00ac36:	016987b3          	add	a5,s3,s6
1c00ac3a:	00fbed63          	bltu	s7,a5,1c00ac54 <PQCLEAN_KYBER768_CLEAN_invntt+0xb8>
1c00ac3e:	016789b3          	add	s3,a5,s6
1c00ac42:	000a1483          	lh	s1,0(s4)
1c00ac46:	1afd                	addi	s5,s5,-1
1c00ac48:	1a79                	addi	s4,s4,-2
1c00ac4a:	fb37e2e3          	bltu	a5,s3,1c00abee <PQCLEAN_KYBER768_CLEAN_invntt+0x52>
1c00ac4e:	87ce                	mv	a5,s3
1c00ac50:	fefbf7e3          	bleu	a5,s7,1c00ac3e <PQCLEAN_KYBER768_CLEAN_invntt+0xa2>
1c00ac54:	1c7d                	addi	s8,s8,-1
1c00ac56:	0b06                	slli	s6,s6,0x1
1c00ac58:	000c0c63          	beqz	s8,1c00ac70 <PQCLEAN_KYBER768_CLEAN_invntt+0xd4>
1c00ac5c:	1c000737          	lui	a4,0x1c000
1c00ac60:	001a9793          	slli	a5,s5,0x1
1c00ac64:	14c70713          	addi	a4,a4,332 # 1c00014c <PQCLEAN_KYBER768_CLEAN_zetas>
1c00ac68:	97ba                	add	a5,a5,a4
1c00ac6a:	00079483          	lh	s1,0(a5) # 80000000 <pulp__FC+0x80000001>
1c00ac6e:	bfb1                	j	1c00abca <PQCLEAN_KYBER768_CLEAN_invntt+0x2e>
1c00ac70:	20040913          	addi	s2,s0,512
1c00ac74:	5a100493          	li	s1,1441
1c00ac78:	00041503          	lh	a0,0(s0)
1c00ac7c:	0409                	addi	s0,s0,2
1c00ac7e:	02950533          	mul	a0,a0,s1
1c00ac82:	07f000ef          	jal	ra,1c00b500 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ac86:	fea41f23          	sh	a0,-2(s0)
1c00ac8a:	fe8917e3          	bne	s2,s0,1c00ac78 <PQCLEAN_KYBER768_CLEAN_invntt+0xdc>
1c00ac8e:	50f2                	lw	ra,60(sp)
1c00ac90:	5462                	lw	s0,56(sp)
1c00ac92:	54d2                	lw	s1,52(sp)
1c00ac94:	5942                	lw	s2,48(sp)
1c00ac96:	59b2                	lw	s3,44(sp)
1c00ac98:	5a22                	lw	s4,40(sp)
1c00ac9a:	5a92                	lw	s5,36(sp)
1c00ac9c:	5b02                	lw	s6,32(sp)
1c00ac9e:	4bf2                	lw	s7,28(sp)
1c00aca0:	4c62                	lw	s8,24(sp)
1c00aca2:	4cd2                	lw	s9,20(sp)
1c00aca4:	4d42                	lw	s10,16(sp)
1c00aca6:	4db2                	lw	s11,12(sp)
1c00aca8:	6121                	addi	sp,sp,64
1c00acaa:	8082                	ret

1c00acac <PQCLEAN_KYBER768_CLEAN_basemul>:
1c00acac:	00261783          	lh	a5,2(a2)
1c00acb0:	00259703          	lh	a4,2(a1)
1c00acb4:	1101                	addi	sp,sp,-32
1c00acb6:	cc22                	sw	s0,24(sp)
1c00acb8:	842a                	mv	s0,a0
1c00acba:	02f70533          	mul	a0,a4,a5
1c00acbe:	ce06                	sw	ra,28(sp)
1c00acc0:	ca26                	sw	s1,20(sp)
1c00acc2:	c84a                	sw	s2,16(sp)
1c00acc4:	c64e                	sw	s3,12(sp)
1c00acc6:	892e                	mv	s2,a1
1c00acc8:	84b2                	mv	s1,a2
1c00acca:	89b6                	mv	s3,a3
1c00accc:	035000ef          	jal	ra,1c00b500 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00acd0:	00a41023          	sh	a0,0(s0)
1c00acd4:	03350533          	mul	a0,a0,s3
1c00acd8:	029000ef          	jal	ra,1c00b500 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00acdc:	00a41023          	sh	a0,0(s0)
1c00ace0:	00049783          	lh	a5,0(s1)
1c00ace4:	00091503          	lh	a0,0(s2)
1c00ace8:	02f50533          	mul	a0,a0,a5
1c00acec:	015000ef          	jal	ra,1c00b500 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00acf0:	00045783          	lhu	a5,0(s0)
1c00acf4:	953e                	add	a0,a0,a5
1c00acf6:	00a41023          	sh	a0,0(s0)
1c00acfa:	00249783          	lh	a5,2(s1)
1c00acfe:	00091503          	lh	a0,0(s2)
1c00ad02:	02f50533          	mul	a0,a0,a5
1c00ad06:	7fa000ef          	jal	ra,1c00b500 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ad0a:	00a41123          	sh	a0,2(s0)
1c00ad0e:	00049783          	lh	a5,0(s1)
1c00ad12:	00291503          	lh	a0,2(s2)
1c00ad16:	02f50533          	mul	a0,a0,a5
1c00ad1a:	7e6000ef          	jal	ra,1c00b500 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ad1e:	00245783          	lhu	a5,2(s0)
1c00ad22:	40f2                	lw	ra,28(sp)
1c00ad24:	953e                	add	a0,a0,a5
1c00ad26:	00a41123          	sh	a0,2(s0)
1c00ad2a:	4462                	lw	s0,24(sp)
1c00ad2c:	44d2                	lw	s1,20(sp)
1c00ad2e:	4942                	lw	s2,16(sp)
1c00ad30:	49b2                	lw	s3,12(sp)
1c00ad32:	6105                	addi	sp,sp,32
1c00ad34:	8082                	ret

1c00ad36 <PQCLEAN_KYBER768_CLEAN_poly_compress>:
1c00ad36:	1141                	addi	sp,sp,-16
1c00ad38:	6685                	lui	a3,0x1
1c00ad3a:	78c1                	lui	a7,0xffff0
1c00ad3c:	ff010837          	lui	a6,0xff010
1c00ad40:	01000637          	lui	a2,0x1000
1c00ad44:	c622                	sw	s0,12(sp)
1c00ad46:	c426                	sw	s1,8(sp)
1c00ad48:	c24a                	sw	s2,4(sp)
1c00ad4a:	08050313          	addi	t1,a0,128
1c00ad4e:	d0168693          	addi	a3,a3,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00ad52:	0ff88893          	addi	a7,a7,255 # ffff00ff <pulp__FC+0xffff0100>
1c00ad56:	187d                	addi	a6,a6,-1
1c00ad58:	167d                	addi	a2,a2,-1
1c00ad5a:	00259403          	lh	s0,2(a1)
1c00ad5e:	00659f03          	lh	t5,6(a1)
1c00ad62:	00459e83          	lh	t4,4(a1)
1c00ad66:	00059903          	lh	s2,0(a1)
1c00ad6a:	00a59783          	lh	a5,10(a1)
1c00ad6e:	40f45713          	srai	a4,s0,0xf
1c00ad72:	40ff5f93          	srai	t6,t5,0xf
1c00ad76:	00859e03          	lh	t3,8(a1)
1c00ad7a:	40fed293          	srai	t0,t4,0xf
1c00ad7e:	8f75                	and	a4,a4,a3
1c00ad80:	40f95393          	srai	t2,s2,0xf
1c00ad84:	00dfffb3          	and	t6,t6,a3
1c00ad88:	00e59483          	lh	s1,14(a1)
1c00ad8c:	9722                	add	a4,a4,s0
1c00ad8e:	9ffa                	add	t6,t6,t5
1c00ad90:	00d3f3b3          	and	t2,t2,a3
1c00ad94:	40f7df13          	srai	t5,a5,0xf
1c00ad98:	00d2f2b3          	and	t0,t0,a3
1c00ad9c:	00c59403          	lh	s0,12(a1)
1c00ada0:	92f6                	add	t0,t0,t4
1c00ada2:	0742                	slli	a4,a4,0x10
1c00ada4:	40fe5e93          	srai	t4,t3,0xf
1c00ada8:	93ca                	add	t2,t2,s2
1c00adaa:	0fc2                	slli	t6,t6,0x10
1c00adac:	00df7f33          	and	t5,t5,a3
1c00adb0:	9f3e                	add	t5,t5,a5
1c00adb2:	8341                	srli	a4,a4,0x10
1c00adb4:	010fdf93          	srli	t6,t6,0x10
1c00adb8:	03c2                	slli	t2,t2,0x10
1c00adba:	02c2                	slli	t0,t0,0x10
1c00adbc:	00defeb3          	and	t4,t4,a3
1c00adc0:	40f4d793          	srai	a5,s1,0xf
1c00adc4:	9ef2                	add	t4,t4,t3
1c00adc6:	0712                	slli	a4,a4,0x4
1c00adc8:	0103d393          	srli	t2,t2,0x10
1c00adcc:	0f92                	slli	t6,t6,0x4
1c00adce:	0102d293          	srli	t0,t0,0x10
1c00add2:	0f42                	slli	t5,t5,0x10
1c00add4:	8ff5                	and	a5,a5,a3
1c00add6:	40f45e13          	srai	t3,s0,0xf
1c00adda:	68070713          	addi	a4,a4,1664
1c00adde:	0392                	slli	t2,t2,0x4
1c00ade0:	680f8f93          	addi	t6,t6,1664 # 1000680 <__CTOR_LIST__-0x1afff984>
1c00ade4:	0292                	slli	t0,t0,0x4
1c00ade6:	010f5f13          	srli	t5,t5,0x10
1c00adea:	0ec2                	slli	t4,t4,0x10
1c00adec:	97a6                	add	a5,a5,s1
1c00adee:	00de7e33          	and	t3,t3,a3
1c00adf2:	02d74733          	div	a4,a4,a3
1c00adf6:	68038393          	addi	t2,t2,1664
1c00adfa:	02dfcfb3          	div	t6,t6,a3
1c00adfe:	68028293          	addi	t0,t0,1664
1c00ae02:	0f12                	slli	t5,t5,0x4
1c00ae04:	010ede93          	srli	t4,t4,0x10
1c00ae08:	07c2                	slli	a5,a5,0x10
1c00ae0a:	9e22                	add	t3,t3,s0
1c00ae0c:	02d3c3b3          	div	t2,t2,a3
1c00ae10:	02d2c2b3          	div	t0,t0,a3
1c00ae14:	680f0f13          	addi	t5,t5,1664
1c00ae18:	0e92                	slli	t4,t4,0x4
1c00ae1a:	83c1                	srli	a5,a5,0x10
1c00ae1c:	0e42                	slli	t3,t3,0x10
1c00ae1e:	02df4f33          	div	t5,t5,a3
1c00ae22:	680e8e93          	addi	t4,t4,1664
1c00ae26:	0792                	slli	a5,a5,0x4
1c00ae28:	010e5e13          	srli	t3,t3,0x10
1c00ae2c:	8b3d                	andi	a4,a4,15
1c00ae2e:	00ffff93          	andi	t6,t6,15
1c00ae32:	02deceb3          	div	t4,t4,a3
1c00ae36:	68078793          	addi	a5,a5,1664
1c00ae3a:	0e12                	slli	t3,t3,0x4
1c00ae3c:	0712                	slli	a4,a4,0x4
1c00ae3e:	00f3f393          	andi	t2,t2,15
1c00ae42:	0f92                	slli	t6,t6,0x4
1c00ae44:	00f2f293          	andi	t0,t0,15
1c00ae48:	02d7c7b3          	div	a5,a5,a3
1c00ae4c:	680e0e13          	addi	t3,t3,1664
1c00ae50:	00776733          	or	a4,a4,t2
1c00ae54:	005fe2b3          	or	t0,t6,t0
1c00ae58:	00ff7f13          	andi	t5,t5,15
1c00ae5c:	02de4e33          	div	t3,t3,a3
1c00ae60:	02a2                	slli	t0,t0,0x8
1c00ae62:	01177733          	and	a4,a4,a7
1c00ae66:	0f12                	slli	t5,t5,0x4
1c00ae68:	00fefe93          	andi	t4,t4,15
1c00ae6c:	00576733          	or	a4,a4,t0
1c00ae70:	01df6eb3          	or	t4,t5,t4
1c00ae74:	8bbd                	andi	a5,a5,15
1c00ae76:	0ec2                	slli	t4,t4,0x10
1c00ae78:	01077733          	and	a4,a4,a6
1c00ae7c:	0792                	slli	a5,a5,0x4
1c00ae7e:	00fe7e13          	andi	t3,t3,15
1c00ae82:	01d76733          	or	a4,a4,t4
1c00ae86:	01c7e7b3          	or	a5,a5,t3
1c00ae8a:	07e2                	slli	a5,a5,0x18
1c00ae8c:	8f71                	and	a4,a4,a2
1c00ae8e:	8fd9                	or	a5,a5,a4
1c00ae90:	c11c                	sw	a5,0(a0)
1c00ae92:	0511                	addi	a0,a0,4
1c00ae94:	05c1                	addi	a1,a1,16
1c00ae96:	ec6512e3          	bne	a0,t1,1c00ad5a <PQCLEAN_KYBER768_CLEAN_poly_compress+0x24>
1c00ae9a:	4432                	lw	s0,12(sp)
1c00ae9c:	44a2                	lw	s1,8(sp)
1c00ae9e:	4912                	lw	s2,4(sp)
1c00aea0:	0141                	addi	sp,sp,16
1c00aea2:	8082                	ret

1c00aea4 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>:
1c00aea4:	6685                	lui	a3,0x1
1c00aea6:	18058613          	addi	a2,a1,384
1c00aeaa:	16fd                	addi	a3,a3,-1
1c00aeac:	0015c783          	lbu	a5,1(a1)
1c00aeb0:	0005c703          	lbu	a4,0(a1)
1c00aeb4:	07a2                	slli	a5,a5,0x8
1c00aeb6:	8fd9                	or	a5,a5,a4
1c00aeb8:	8ff5                	and	a5,a5,a3
1c00aeba:	00f51023          	sh	a5,0(a0)
1c00aebe:	0015c703          	lbu	a4,1(a1)
1c00aec2:	0025c783          	lbu	a5,2(a1)
1c00aec6:	8311                	srli	a4,a4,0x4
1c00aec8:	0792                	slli	a5,a5,0x4
1c00aeca:	8fd9                	or	a5,a5,a4
1c00aecc:	00f51123          	sh	a5,2(a0)
1c00aed0:	058d                	addi	a1,a1,3
1c00aed2:	0511                	addi	a0,a0,4
1c00aed4:	fcb61ce3          	bne	a2,a1,1c00aeac <PQCLEAN_KYBER768_CLEAN_poly_frombytes+0x8>
1c00aed8:	8082                	ret

1c00aeda <PQCLEAN_KYBER768_CLEAN_poly_frommsg>:
1c00aeda:	20050713          	addi	a4,a0,512
1c00aede:	0005c783          	lbu	a5,0(a1)
1c00aee2:	0541                	addi	a0,a0,16
1c00aee4:	8b85                	andi	a5,a5,1
1c00aee6:	40f007b3          	neg	a5,a5
1c00aeea:	6817f793          	andi	a5,a5,1665
1c00aeee:	fef51823          	sh	a5,-16(a0)
1c00aef2:	0005c783          	lbu	a5,0(a1)
1c00aef6:	0585                	addi	a1,a1,1
1c00aef8:	07fa                	slli	a5,a5,0x1e
1c00aefa:	87fd                	srai	a5,a5,0x1f
1c00aefc:	6817f793          	andi	a5,a5,1665
1c00af00:	fef51923          	sh	a5,-14(a0)
1c00af04:	fff5c783          	lbu	a5,-1(a1)
1c00af08:	07f6                	slli	a5,a5,0x1d
1c00af0a:	87fd                	srai	a5,a5,0x1f
1c00af0c:	6817f793          	andi	a5,a5,1665
1c00af10:	fef51a23          	sh	a5,-12(a0)
1c00af14:	fff5c783          	lbu	a5,-1(a1)
1c00af18:	07f2                	slli	a5,a5,0x1c
1c00af1a:	87fd                	srai	a5,a5,0x1f
1c00af1c:	6817f793          	andi	a5,a5,1665
1c00af20:	fef51b23          	sh	a5,-10(a0)
1c00af24:	fff5c783          	lbu	a5,-1(a1)
1c00af28:	07ee                	slli	a5,a5,0x1b
1c00af2a:	87fd                	srai	a5,a5,0x1f
1c00af2c:	6817f793          	andi	a5,a5,1665
1c00af30:	fef51c23          	sh	a5,-8(a0)
1c00af34:	fff5c783          	lbu	a5,-1(a1)
1c00af38:	07ea                	slli	a5,a5,0x1a
1c00af3a:	87fd                	srai	a5,a5,0x1f
1c00af3c:	6817f793          	andi	a5,a5,1665
1c00af40:	fef51d23          	sh	a5,-6(a0)
1c00af44:	fff5c783          	lbu	a5,-1(a1)
1c00af48:	07e6                	slli	a5,a5,0x19
1c00af4a:	87fd                	srai	a5,a5,0x1f
1c00af4c:	6817f793          	andi	a5,a5,1665
1c00af50:	fef51e23          	sh	a5,-4(a0)
1c00af54:	fff5c783          	lbu	a5,-1(a1)
1c00af58:	879d                	srai	a5,a5,0x7
1c00af5a:	40f007b3          	neg	a5,a5
1c00af5e:	6817f793          	andi	a5,a5,1665
1c00af62:	fef51f23          	sh	a5,-2(a0)
1c00af66:	f6e51ce3          	bne	a0,a4,1c00aede <PQCLEAN_KYBER768_CLEAN_poly_frommsg+0x4>
1c00af6a:	8082                	ret

1c00af6c <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00af6c:	7175                	addi	sp,sp,-144
1c00af6e:	c522                	sw	s0,136(sp)
1c00af70:	86b2                	mv	a3,a2
1c00af72:	842a                	mv	s0,a0
1c00af74:	862e                	mv	a2,a1
1c00af76:	850a                	mv	a0,sp
1c00af78:	08000593          	li	a1,128
1c00af7c:	c706                	sw	ra,140(sp)
1c00af7e:	2bfd                	jal	1c00b57c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00af80:	858a                	mv	a1,sp
1c00af82:	8522                	mv	a0,s0
1c00af84:	bdafe0ef          	jal	ra,1c00935e <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c00af88:	40ba                	lw	ra,140(sp)
1c00af8a:	442a                	lw	s0,136(sp)
1c00af8c:	6149                	addi	sp,sp,144
1c00af8e:	8082                	ret

1c00af90 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>:
1c00af90:	7175                	addi	sp,sp,-144
1c00af92:	c522                	sw	s0,136(sp)
1c00af94:	86b2                	mv	a3,a2
1c00af96:	842a                	mv	s0,a0
1c00af98:	862e                	mv	a2,a1
1c00af9a:	850a                	mv	a0,sp
1c00af9c:	08000593          	li	a1,128
1c00afa0:	c706                	sw	ra,140(sp)
1c00afa2:	2be9                	jal	1c00b57c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00afa4:	858a                	mv	a1,sp
1c00afa6:	8522                	mv	a0,s0
1c00afa8:	cb8fe0ef          	jal	ra,1c009460 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>
1c00afac:	40ba                	lw	ra,140(sp)
1c00afae:	442a                	lw	s0,136(sp)
1c00afb0:	6149                	addi	sp,sp,144
1c00afb2:	8082                	ret

1c00afb4 <PQCLEAN_KYBER768_CLEAN_poly_ntt>:
1c00afb4:	1141                	addi	sp,sp,-16
1c00afb6:	c422                	sw	s0,8(sp)
1c00afb8:	842a                	mv	s0,a0
1c00afba:	c226                	sw	s1,4(sp)
1c00afbc:	c606                	sw	ra,12(sp)
1c00afbe:	20040493          	addi	s1,s0,512
1c00afc2:	3cf5                	jal	1c00aabe <PQCLEAN_KYBER768_CLEAN_ntt>
1c00afc4:	00041503          	lh	a0,0(s0)
1c00afc8:	0409                	addi	s0,s0,2
1c00afca:	2b99                	jal	1c00b520 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00afcc:	fea41f23          	sh	a0,-2(s0)
1c00afd0:	fe941ae3          	bne	s0,s1,1c00afc4 <PQCLEAN_KYBER768_CLEAN_poly_ntt+0x10>
1c00afd4:	40b2                	lw	ra,12(sp)
1c00afd6:	4422                	lw	s0,8(sp)
1c00afd8:	4492                	lw	s1,4(sp)
1c00afda:	0141                	addi	sp,sp,16
1c00afdc:	8082                	ret

1c00afde <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>:
1c00afde:	be7d                	j	1c00ab9c <PQCLEAN_KYBER768_CLEAN_invntt>

1c00afe0 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c00afe0:	1101                	addi	sp,sp,-32
1c00afe2:	ca26                	sw	s1,20(sp)
1c00afe4:	c256                	sw	s5,4(sp)
1c00afe6:	1c0004b7          	lui	s1,0x1c000
1c00afea:	1c000ab7          	lui	s5,0x1c000
1c00afee:	c84a                	sw	s2,16(sp)
1c00aff0:	c64e                	sw	s3,12(sp)
1c00aff2:	c452                	sw	s4,8(sp)
1c00aff4:	ce06                	sw	ra,28(sp)
1c00aff6:	cc22                	sw	s0,24(sp)
1c00aff8:	1cc48493          	addi	s1,s1,460 # 1c0001cc <PQCLEAN_KYBER768_CLEAN_zetas+0x80>
1c00affc:	00450a13          	addi	s4,a0,4
1c00b000:	00458993          	addi	s3,a1,4
1c00b004:	00460913          	addi	s2,a2,4 # 1000004 <__CTOR_LIST__-0x1b000000>
1c00b008:	24ca8a93          	addi	s5,s5,588 # 1c00024c <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00b00c:	00049403          	lh	s0,0(s1)
1c00b010:	ffc90613          	addi	a2,s2,-4
1c00b014:	ffc98593          	addi	a1,s3,-4
1c00b018:	ffca0513          	addi	a0,s4,-4
1c00b01c:	86a2                	mv	a3,s0
1c00b01e:	3179                	jal	1c00acac <PQCLEAN_KYBER768_CLEAN_basemul>
1c00b020:	408006b3          	neg	a3,s0
1c00b024:	06c2                	slli	a3,a3,0x10
1c00b026:	864a                	mv	a2,s2
1c00b028:	85ce                	mv	a1,s3
1c00b02a:	8552                	mv	a0,s4
1c00b02c:	86c1                	srai	a3,a3,0x10
1c00b02e:	0489                	addi	s1,s1,2
1c00b030:	39b5                	jal	1c00acac <PQCLEAN_KYBER768_CLEAN_basemul>
1c00b032:	0a21                	addi	s4,s4,8
1c00b034:	09a1                	addi	s3,s3,8
1c00b036:	0921                	addi	s2,s2,8
1c00b038:	fc9a9ae3          	bne	s5,s1,1c00b00c <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x2c>
1c00b03c:	40f2                	lw	ra,28(sp)
1c00b03e:	4462                	lw	s0,24(sp)
1c00b040:	44d2                	lw	s1,20(sp)
1c00b042:	4942                	lw	s2,16(sp)
1c00b044:	49b2                	lw	s3,12(sp)
1c00b046:	4a22                	lw	s4,8(sp)
1c00b048:	4a92                	lw	s5,4(sp)
1c00b04a:	6105                	addi	sp,sp,32
1c00b04c:	8082                	ret

1c00b04e <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c00b04e:	1141                	addi	sp,sp,-16
1c00b050:	c422                	sw	s0,8(sp)
1c00b052:	c226                	sw	s1,4(sp)
1c00b054:	c606                	sw	ra,12(sp)
1c00b056:	842a                	mv	s0,a0
1c00b058:	20050493          	addi	s1,a0,512
1c00b05c:	00041503          	lh	a0,0(s0)
1c00b060:	0409                	addi	s0,s0,2
1c00b062:	297d                	jal	1c00b520 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00b064:	fea41f23          	sh	a0,-2(s0)
1c00b068:	fe941ae3          	bne	s0,s1,1c00b05c <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c00b06c:	40b2                	lw	ra,12(sp)
1c00b06e:	4422                	lw	s0,8(sp)
1c00b070:	4492                	lw	s1,4(sp)
1c00b072:	0141                	addi	sp,sp,16
1c00b074:	8082                	ret

1c00b076 <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c00b076:	20058693          	addi	a3,a1,512
1c00b07a:	0005d783          	lhu	a5,0(a1)
1c00b07e:	00065703          	lhu	a4,0(a2)
1c00b082:	0589                	addi	a1,a1,2
1c00b084:	97ba                	add	a5,a5,a4
1c00b086:	00f51023          	sh	a5,0(a0)
1c00b08a:	0609                	addi	a2,a2,2
1c00b08c:	0509                	addi	a0,a0,2
1c00b08e:	fed596e3          	bne	a1,a3,1c00b07a <PQCLEAN_KYBER768_CLEAN_poly_add+0x4>
1c00b092:	8082                	ret

1c00b094 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>:
1c00b094:	6605                	lui	a2,0x1
1c00b096:	3c050313          	addi	t1,a0,960
1c00b09a:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b09e:	14050893          	addi	a7,a0,320
1c00b0a2:	882e                	mv	a6,a1
1c00b0a4:	00081283          	lh	t0,0(a6) # ff010000 <pulp__FC+0xff010001>
1c00b0a8:	00281f83          	lh	t6,2(a6)
1c00b0ac:	00481f03          	lh	t5,4(a6)
1c00b0b0:	00681e83          	lh	t4,6(a6)
1c00b0b4:	40f2de13          	srai	t3,t0,0xf
1c00b0b8:	40ffd713          	srai	a4,t6,0xf
1c00b0bc:	40ff5793          	srai	a5,t5,0xf
1c00b0c0:	40fed693          	srai	a3,t4,0xf
1c00b0c4:	00ce7e33          	and	t3,t3,a2
1c00b0c8:	8f71                	and	a4,a4,a2
1c00b0ca:	8ff1                	and	a5,a5,a2
1c00b0cc:	8ef1                	and	a3,a3,a2
1c00b0ce:	9e16                	add	t3,t3,t0
1c00b0d0:	977e                	add	a4,a4,t6
1c00b0d2:	97fa                	add	a5,a5,t5
1c00b0d4:	96f6                	add	a3,a3,t4
1c00b0d6:	0e42                	slli	t3,t3,0x10
1c00b0d8:	0742                	slli	a4,a4,0x10
1c00b0da:	07c2                	slli	a5,a5,0x10
1c00b0dc:	06c2                	slli	a3,a3,0x10
1c00b0de:	010e5e13          	srli	t3,t3,0x10
1c00b0e2:	8341                	srli	a4,a4,0x10
1c00b0e4:	83c1                	srli	a5,a5,0x10
1c00b0e6:	82c1                	srli	a3,a3,0x10
1c00b0e8:	0e2a                	slli	t3,t3,0xa
1c00b0ea:	072a                	slli	a4,a4,0xa
1c00b0ec:	07aa                	slli	a5,a5,0xa
1c00b0ee:	06aa                	slli	a3,a3,0xa
1c00b0f0:	680e0e13          	addi	t3,t3,1664
1c00b0f4:	68070713          	addi	a4,a4,1664
1c00b0f8:	68078793          	addi	a5,a5,1664
1c00b0fc:	68068693          	addi	a3,a3,1664 # 1680 <__CTOR_LIST__-0x1bffe984>
1c00b100:	02ce5e33          	divu	t3,t3,a2
1c00b104:	02c75733          	divu	a4,a4,a2
1c00b108:	02c7d7b3          	divu	a5,a5,a2
1c00b10c:	02c6d6b3          	divu	a3,a3,a2
1c00b110:	3ffe7e13          	andi	t3,t3,1023
1c00b114:	3ff77713          	andi	a4,a4,1023
1c00b118:	3ff7f793          	andi	a5,a5,1023
1c00b11c:	3ff6f693          	andi	a3,a3,1023
1c00b120:	00271293          	slli	t0,a4,0x2
1c00b124:	00479f93          	slli	t6,a5,0x4
1c00b128:	00669f13          	slli	t5,a3,0x6
1c00b12c:	008e5e93          	srli	t4,t3,0x8
1c00b130:	8319                	srli	a4,a4,0x6
1c00b132:	8391                	srli	a5,a5,0x4
1c00b134:	005eeeb3          	or	t4,t4,t0
1c00b138:	01f76733          	or	a4,a4,t6
1c00b13c:	01e7e7b3          	or	a5,a5,t5
1c00b140:	8289                	srli	a3,a3,0x2
1c00b142:	01c50023          	sb	t3,0(a0)
1c00b146:	01d500a3          	sb	t4,1(a0)
1c00b14a:	00e50123          	sb	a4,2(a0)
1c00b14e:	00f501a3          	sb	a5,3(a0)
1c00b152:	00d50223          	sb	a3,4(a0)
1c00b156:	0515                	addi	a0,a0,5
1c00b158:	0821                	addi	a6,a6,8
1c00b15a:	f51515e3          	bne	a0,a7,1c00b0a4 <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x10>
1c00b15e:	20058593          	addi	a1,a1,512
1c00b162:	f2a31ee3          	bne	t1,a0,1c00b09e <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0xa>
1c00b166:	8082                	ret

1c00b168 <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>:
1c00b168:	1141                	addi	sp,sp,-16
1c00b16a:	c606                	sw	ra,12(sp)
1c00b16c:	c422                	sw	s0,8(sp)
1c00b16e:	c226                	sw	s1,4(sp)
1c00b170:	842a                	mv	s0,a0
1c00b172:	84ae                	mv	s1,a1
1c00b174:	3b05                	jal	1c00aea4 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00b176:	18048593          	addi	a1,s1,384
1c00b17a:	20040513          	addi	a0,s0,512
1c00b17e:	331d                	jal	1c00aea4 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00b180:	40040513          	addi	a0,s0,1024
1c00b184:	4422                	lw	s0,8(sp)
1c00b186:	40b2                	lw	ra,12(sp)
1c00b188:	30048593          	addi	a1,s1,768
1c00b18c:	4492                	lw	s1,4(sp)
1c00b18e:	0141                	addi	sp,sp,16
1c00b190:	bb11                	j	1c00aea4 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>

1c00b192 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c00b192:	1141                	addi	sp,sp,-16
1c00b194:	c606                	sw	ra,12(sp)
1c00b196:	c422                	sw	s0,8(sp)
1c00b198:	842a                	mv	s0,a0
1c00b19a:	3d29                	jal	1c00afb4 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c00b19c:	20040513          	addi	a0,s0,512
1c00b1a0:	3d11                	jal	1c00afb4 <PQCLEAN_KYBER768_CLEAN_poly_ntt>
1c00b1a2:	40040513          	addi	a0,s0,1024
1c00b1a6:	4422                	lw	s0,8(sp)
1c00b1a8:	40b2                	lw	ra,12(sp)
1c00b1aa:	0141                	addi	sp,sp,16
1c00b1ac:	b521                	j	1c00afb4 <PQCLEAN_KYBER768_CLEAN_poly_ntt>

1c00b1ae <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>:
1c00b1ae:	1141                	addi	sp,sp,-16
1c00b1b0:	c606                	sw	ra,12(sp)
1c00b1b2:	c422                	sw	s0,8(sp)
1c00b1b4:	842a                	mv	s0,a0
1c00b1b6:	3525                	jal	1c00afde <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00b1b8:	20040513          	addi	a0,s0,512
1c00b1bc:	350d                	jal	1c00afde <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>
1c00b1be:	40040513          	addi	a0,s0,1024
1c00b1c2:	4422                	lw	s0,8(sp)
1c00b1c4:	40b2                	lw	ra,12(sp)
1c00b1c6:	0141                	addi	sp,sp,16
1c00b1c8:	bd19                	j	1c00afde <PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont>

1c00b1ca <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c00b1ca:	df010113          	addi	sp,sp,-528
1c00b1ce:	20112623          	sw	ra,524(sp)
1c00b1d2:	20812423          	sw	s0,520(sp)
1c00b1d6:	20912223          	sw	s1,516(sp)
1c00b1da:	21212023          	sw	s2,512(sp)
1c00b1de:	842a                	mv	s0,a0
1c00b1e0:	84ae                	mv	s1,a1
1c00b1e2:	8932                	mv	s2,a2
1c00b1e4:	3bf5                	jal	1c00afe0 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b1e6:	20090613          	addi	a2,s2,512
1c00b1ea:	20048593          	addi	a1,s1,512
1c00b1ee:	850a                	mv	a0,sp
1c00b1f0:	3bc5                	jal	1c00afe0 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b1f2:	860a                	mv	a2,sp
1c00b1f4:	85a2                	mv	a1,s0
1c00b1f6:	8522                	mv	a0,s0
1c00b1f8:	3dbd                	jal	1c00b076 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b1fa:	40090613          	addi	a2,s2,1024
1c00b1fe:	40048593          	addi	a1,s1,1024
1c00b202:	850a                	mv	a0,sp
1c00b204:	3bf1                	jal	1c00afe0 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b206:	860a                	mv	a2,sp
1c00b208:	85a2                	mv	a1,s0
1c00b20a:	8522                	mv	a0,s0
1c00b20c:	35ad                	jal	1c00b076 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b20e:	8522                	mv	a0,s0
1c00b210:	3d3d                	jal	1c00b04e <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b212:	20c12083          	lw	ra,524(sp)
1c00b216:	20812403          	lw	s0,520(sp)
1c00b21a:	20412483          	lw	s1,516(sp)
1c00b21e:	20012903          	lw	s2,512(sp)
1c00b222:	21010113          	addi	sp,sp,528
1c00b226:	8082                	ret

1c00b228 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c00b228:	1141                	addi	sp,sp,-16
1c00b22a:	c606                	sw	ra,12(sp)
1c00b22c:	c422                	sw	s0,8(sp)
1c00b22e:	842a                	mv	s0,a0
1c00b230:	3d39                	jal	1c00b04e <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b232:	20040513          	addi	a0,s0,512
1c00b236:	3d21                	jal	1c00b04e <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b238:	40040513          	addi	a0,s0,1024
1c00b23c:	4422                	lw	s0,8(sp)
1c00b23e:	40b2                	lw	ra,12(sp)
1c00b240:	0141                	addi	sp,sp,16
1c00b242:	b531                	j	1c00b04e <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c00b244 <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c00b244:	1101                	addi	sp,sp,-32
1c00b246:	cc22                	sw	s0,24(sp)
1c00b248:	ca26                	sw	s1,20(sp)
1c00b24a:	c84a                	sw	s2,16(sp)
1c00b24c:	c64e                	sw	s3,12(sp)
1c00b24e:	c452                	sw	s4,8(sp)
1c00b250:	ce06                	sw	ra,28(sp)
1c00b252:	8a2a                	mv	s4,a0
1c00b254:	89ae                	mv	s3,a1
1c00b256:	8932                	mv	s2,a2
1c00b258:	4401                	li	s0,0
1c00b25a:	60000493          	li	s1,1536
1c00b25e:	00890633          	add	a2,s2,s0
1c00b262:	008985b3          	add	a1,s3,s0
1c00b266:	008a0533          	add	a0,s4,s0
1c00b26a:	20040413          	addi	s0,s0,512
1c00b26e:	3521                	jal	1c00b076 <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b270:	fe9417e3          	bne	s0,s1,1c00b25e <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00b274:	40f2                	lw	ra,28(sp)
1c00b276:	4462                	lw	s0,24(sp)
1c00b278:	44d2                	lw	s1,20(sp)
1c00b27a:	4942                	lw	s2,16(sp)
1c00b27c:	49b2                	lw	s3,12(sp)
1c00b27e:	4a22                	lw	s4,8(sp)
1c00b280:	6105                	addi	sp,sp,32
1c00b282:	8082                	ret

1c00b284 <randombytes>:
1c00b284:	26058d63          	beqz	a1,1c00b4fe <randombytes+0x27a>
1c00b288:	1c0046b7          	lui	a3,0x1c004
1c00b28c:	7139                	addi	sp,sp,-64
1c00b28e:	2b468693          	addi	a3,a3,692 # 1c0042b4 <outleft>
1c00b292:	da4a                	sw	s2,52(sp)
1c00b294:	d84e                	sw	s3,48(sp)
1c00b296:	95aa                	add	a1,a1,a0
1c00b298:	1c004737          	lui	a4,0x1c004
1c00b29c:	1c0049b7          	lui	s3,0x1c004
1c00b2a0:	9e378937          	lui	s2,0x9e378
1c00b2a4:	429c                	lw	a5,0(a3)
1c00b2a6:	d652                	sw	s4,44(sp)
1c00b2a8:	d456                	sw	s5,40(sp)
1c00b2aa:	de22                	sw	s0,60(sp)
1c00b2ac:	dc26                	sw	s1,56(sp)
1c00b2ae:	d25a                	sw	s6,36(sp)
1c00b2b0:	d05e                	sw	s7,32(sp)
1c00b2b2:	ce62                	sw	s8,28(sp)
1c00b2b4:	cc66                	sw	s9,24(sp)
1c00b2b6:	ca6a                	sw	s10,20(sp)
1c00b2b8:	c86e                	sw	s11,16(sp)
1c00b2ba:	8aaa                	mv	s5,a0
1c00b2bc:	c62e                	sw	a1,12(sp)
1c00b2be:	29070a13          	addi	s4,a4,656 # 1c004290 <out>
1c00b2c2:	26098993          	addi	s3,s3,608 # 1c004260 <stack>
1c00b2c6:	9b990913          	addi	s2,s2,-1607 # 9e3779b9 <pulp__FC+0x9e3779ba>
1c00b2ca:	cf9d                	beqz	a5,1c00b308 <randombytes+0x84>
1c00b2cc:	17fd                	addi	a5,a5,-1
1c00b2ce:	00279713          	slli	a4,a5,0x2
1c00b2d2:	9752                	add	a4,a4,s4
1c00b2d4:	4318                	lw	a4,0(a4)
1c00b2d6:	1c0046b7          	lui	a3,0x1c004
1c00b2da:	00ea8023          	sb	a4,0(s5)
1c00b2de:	2b468693          	addi	a3,a3,692 # 1c0042b4 <outleft>
1c00b2e2:	4732                	lw	a4,12(sp)
1c00b2e4:	c29c                	sw	a5,0(a3)
1c00b2e6:	0a85                	addi	s5,s5,1
1c00b2e8:	feea91e3          	bne	s5,a4,1c00b2ca <randombytes+0x46>
1c00b2ec:	5472                	lw	s0,60(sp)
1c00b2ee:	54e2                	lw	s1,56(sp)
1c00b2f0:	5952                	lw	s2,52(sp)
1c00b2f2:	59c2                	lw	s3,48(sp)
1c00b2f4:	5a32                	lw	s4,44(sp)
1c00b2f6:	5aa2                	lw	s5,40(sp)
1c00b2f8:	5b12                	lw	s6,36(sp)
1c00b2fa:	5b82                	lw	s7,32(sp)
1c00b2fc:	4c72                	lw	s8,28(sp)
1c00b2fe:	4ce2                	lw	s9,24(sp)
1c00b300:	4d52                	lw	s10,20(sp)
1c00b302:	4dc2                	lw	s11,16(sp)
1c00b304:	6121                	addi	sp,sp,64
1c00b306:	8082                	ret
1c00b308:	0009a583          	lw	a1,0(s3)
1c00b30c:	0049a283          	lw	t0,4(s3)
1c00b310:	0585                	addi	a1,a1,1
1c00b312:	00b9a023          	sw	a1,0(s3)
1c00b316:	0089a383          	lw	t2,8(s3)
1c00b31a:	00c9a403          	lw	s0,12(s3)
1c00b31e:	e999                	bnez	a1,1c00b334 <randombytes+0xb0>
1c00b320:	0285                	addi	t0,t0,1
1c00b322:	0059a223          	sw	t0,4(s3)
1c00b326:	00029763          	bnez	t0,1c00b334 <randombytes+0xb0>
1c00b32a:	0385                	addi	t2,t2,1
1c00b32c:	0079a423          	sw	t2,8(s3)
1c00b330:	1c038363          	beqz	t2,1c00b4f6 <randombytes+0x272>
1c00b334:	0109af83          	lw	t6,16(s3)
1c00b338:	0149af03          	lw	t5,20(s3)
1c00b33c:	0189ae83          	lw	t4,24(s3)
1c00b340:	01c9ae03          	lw	t3,28(s3)
1c00b344:	0209a303          	lw	t1,32(s3)
1c00b348:	0249a883          	lw	a7,36(s3)
1c00b34c:	0289a803          	lw	a6,40(s3)
1c00b350:	02c9a503          	lw	a0,44(s3)
1c00b354:	478d                	li	a5,3
1c00b356:	470d                	li	a4,3
1c00b358:	c23e                	sw	a5,4(sp)
1c00b35a:	0095c593          	xori	a1,a1,9
1c00b35e:	0072c293          	xori	t0,t0,7
1c00b362:	0093c393          	xori	t2,t2,9
1c00b366:	00344413          	xori	s0,s0,3
1c00b36a:	002fcf93          	xori	t6,t6,2
1c00b36e:	003f4f13          	xori	t5,t5,3
1c00b372:	008ece93          	xori	t4,t4,8
1c00b376:	004e4e13          	xori	t3,t3,4
1c00b37a:	00634313          	xori	t1,t1,6
1c00b37e:	0028c893          	xori	a7,a7,2
1c00b382:	00684813          	xori	a6,a6,6
1c00b386:	00454513          	xori	a0,a0,4
1c00b38a:	4b15                	li	s6,5
1c00b38c:	4ba5                	li	s7,9
1c00b38e:	4c1d                	li	s8,7
1c00b390:	4c89                	li	s9,2
1c00b392:	4d0d                	li	s10,3
1c00b394:	4da1                	li	s11,8
1c00b396:	c43a                	sw	a4,8(sp)
1c00b398:	4781                	li	a5,0
1c00b39a:	e377a737          	lui	a4,0xe377a
1c00b39e:	b9070713          	addi	a4,a4,-1136 # e3779b90 <pulp__FC+0xe3779b91>
1c00b3a2:	00e784b3          	add	s1,a5,a4
1c00b3a6:	97ca                	add	a5,a5,s2
1c00b3a8:	01b55613          	srli	a2,a0,0x1b
1c00b3ac:	00354713          	xori	a4,a0,3
1c00b3b0:	00551693          	slli	a3,a0,0x5
1c00b3b4:	8ed1                	or	a3,a3,a2
1c00b3b6:	973e                	add	a4,a4,a5
1c00b3b8:	8f35                	xor	a4,a4,a3
1c00b3ba:	95ba                	add	a1,a1,a4
1c00b3bc:	0195d613          	srli	a2,a1,0x19
1c00b3c0:	0015c713          	xori	a4,a1,1
1c00b3c4:	00759693          	slli	a3,a1,0x7
1c00b3c8:	8ed1                	or	a3,a3,a2
1c00b3ca:	973e                	add	a4,a4,a5
1c00b3cc:	8f35                	xor	a4,a4,a3
1c00b3ce:	92ba                	add	t0,t0,a4
1c00b3d0:	0172d613          	srli	a2,t0,0x17
1c00b3d4:	0042c713          	xori	a4,t0,4
1c00b3d8:	00929693          	slli	a3,t0,0x9
1c00b3dc:	8ed1                	or	a3,a3,a2
1c00b3de:	973e                	add	a4,a4,a5
1c00b3e0:	8f35                	xor	a4,a4,a3
1c00b3e2:	93ba                	add	t2,t2,a4
1c00b3e4:	0133d613          	srli	a2,t2,0x13
1c00b3e8:	0013c713          	xori	a4,t2,1
1c00b3ec:	00d39693          	slli	a3,t2,0xd
1c00b3f0:	8ed1                	or	a3,a3,a2
1c00b3f2:	973e                	add	a4,a4,a5
1c00b3f4:	8f35                	xor	a4,a4,a3
1c00b3f6:	943a                	add	s0,s0,a4
1c00b3f8:	01b45613          	srli	a2,s0,0x1b
1c00b3fc:	00544713          	xori	a4,s0,5
1c00b400:	00541693          	slli	a3,s0,0x5
1c00b404:	8ed1                	or	a3,a3,a2
1c00b406:	973e                	add	a4,a4,a5
1c00b408:	8f35                	xor	a4,a4,a3
1c00b40a:	9fba                	add	t6,t6,a4
1c00b40c:	019fd613          	srli	a2,t6,0x19
1c00b410:	009fc713          	xori	a4,t6,9
1c00b414:	007f9693          	slli	a3,t6,0x7
1c00b418:	8ed1                	or	a3,a3,a2
1c00b41a:	973e                	add	a4,a4,a5
1c00b41c:	8f35                	xor	a4,a4,a3
1c00b41e:	9f3a                	add	t5,t5,a4
1c00b420:	017f5613          	srli	a2,t5,0x17
1c00b424:	002f4713          	xori	a4,t5,2
1c00b428:	009f1693          	slli	a3,t5,0x9
1c00b42c:	8ed1                	or	a3,a3,a2
1c00b42e:	973e                	add	a4,a4,a5
1c00b430:	8f35                	xor	a4,a4,a3
1c00b432:	9eba                	add	t4,t4,a4
1c00b434:	013ed613          	srli	a2,t4,0x13
1c00b438:	006ec713          	xori	a4,t4,6
1c00b43c:	00de9693          	slli	a3,t4,0xd
1c00b440:	8ed1                	or	a3,a3,a2
1c00b442:	973e                	add	a4,a4,a5
1c00b444:	8f35                	xor	a4,a4,a3
1c00b446:	9e3a                	add	t3,t3,a4
1c00b448:	01be5613          	srli	a2,t3,0x1b
1c00b44c:	005e4713          	xori	a4,t3,5
1c00b450:	005e1693          	slli	a3,t3,0x5
1c00b454:	8ed1                	or	a3,a3,a2
1c00b456:	973e                	add	a4,a4,a5
1c00b458:	8f35                	xor	a4,a4,a3
1c00b45a:	933a                	add	t1,t1,a4
1c00b45c:	01935613          	srli	a2,t1,0x19
1c00b460:	00334713          	xori	a4,t1,3
1c00b464:	00731693          	slli	a3,t1,0x7
1c00b468:	8ed1                	or	a3,a3,a2
1c00b46a:	973e                	add	a4,a4,a5
1c00b46c:	8f35                	xor	a4,a4,a3
1c00b46e:	98ba                	add	a7,a7,a4
1c00b470:	0178d613          	srli	a2,a7,0x17
1c00b474:	0058c713          	xori	a4,a7,5
1c00b478:	00989693          	slli	a3,a7,0x9
1c00b47c:	8ed1                	or	a3,a3,a2
1c00b47e:	973e                	add	a4,a4,a5
1c00b480:	8f35                	xor	a4,a4,a3
1c00b482:	983a                	add	a6,a6,a4
1c00b484:	00884713          	xori	a4,a6,8
1c00b488:	00d81693          	slli	a3,a6,0xd
1c00b48c:	01385613          	srli	a2,a6,0x13
1c00b490:	973e                	add	a4,a4,a5
1c00b492:	8ed1                	or	a3,a3,a2
1c00b494:	8f35                	xor	a4,a4,a3
1c00b496:	953a                	add	a0,a0,a4
1c00b498:	f09797e3          	bne	a5,s1,1c00b3a6 <randombytes+0x122>
1c00b49c:	4692                	lw	a3,4(sp)
1c00b49e:	4722                	lw	a4,8(sp)
1c00b4a0:	01f6c6b3          	xor	a3,a3,t6
1c00b4a4:	c236                	sw	a3,4(sp)
1c00b4a6:	01e74733          	xor	a4,a4,t5
1c00b4aa:	c6ef36b7          	lui	a3,0xc6ef3
1c00b4ae:	c43a                	sw	a4,8(sp)
1c00b4b0:	72068693          	addi	a3,a3,1824 # c6ef3720 <pulp__FC+0xc6ef3721>
1c00b4b4:	01ddcdb3          	xor	s11,s11,t4
1c00b4b8:	01cd4d33          	xor	s10,s10,t3
1c00b4bc:	006cccb3          	xor	s9,s9,t1
1c00b4c0:	011c4c33          	xor	s8,s8,a7
1c00b4c4:	010bcbb3          	xor	s7,s7,a6
1c00b4c8:	00ab4b33          	xor	s6,s6,a0
1c00b4cc:	ecd797e3          	bne	a5,a3,1c00b39a <randombytes+0x116>
1c00b4d0:	4792                	lw	a5,4(sp)
1c00b4d2:	00ea2223          	sw	a4,4(s4)
1c00b4d6:	00fa2023          	sw	a5,0(s4)
1c00b4da:	01ba2423          	sw	s11,8(s4)
1c00b4de:	01aa2623          	sw	s10,12(s4)
1c00b4e2:	019a2823          	sw	s9,16(s4)
1c00b4e6:	018a2a23          	sw	s8,20(s4)
1c00b4ea:	017a2c23          	sw	s7,24(s4)
1c00b4ee:	016a2e23          	sw	s6,28(s4)
1c00b4f2:	479d                	li	a5,7
1c00b4f4:	bbe9                	j	1c00b2ce <randombytes+0x4a>
1c00b4f6:	0405                	addi	s0,s0,1
1c00b4f8:	0089a623          	sw	s0,12(s3)
1c00b4fc:	bd25                	j	1c00b334 <randombytes+0xb0>
1c00b4fe:	8082                	ret

1c00b500 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00b500:	777d                	lui	a4,0xfffff
1c00b502:	30170793          	addi	a5,a4,769 # fffff301 <pulp__FC+0xfffff302>
1c00b506:	02f507b3          	mul	a5,a0,a5
1c00b50a:	07c2                	slli	a5,a5,0x10
1c00b50c:	2ff70713          	addi	a4,a4,767
1c00b510:	87c1                	srai	a5,a5,0x10
1c00b512:	02e787b3          	mul	a5,a5,a4
1c00b516:	953e                	add	a0,a0,a5
1c00b518:	8541                	srai	a0,a0,0x10
1c00b51a:	0542                	slli	a0,a0,0x10
1c00b51c:	8541                	srai	a0,a0,0x10
1c00b51e:	8082                	ret

1c00b520 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00b520:	6795                	lui	a5,0x5
1c00b522:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00b526:	02f507b3          	mul	a5,a0,a5
1c00b52a:	02000737          	lui	a4,0x2000
1c00b52e:	97ba                	add	a5,a5,a4
1c00b530:	6705                	lui	a4,0x1
1c00b532:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b536:	87e9                	srai	a5,a5,0x1a
1c00b538:	02e787b3          	mul	a5,a5,a4
1c00b53c:	8d1d                	sub	a0,a0,a5
1c00b53e:	0542                	slli	a0,a0,0x10
1c00b540:	8541                	srai	a0,a0,0x10
1c00b542:	8082                	ret

1c00b544 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00b544:	7139                	addi	sp,sp,-64
1c00b546:	da26                	sw	s1,52(sp)
1c00b548:	d84a                	sw	s2,48(sp)
1c00b54a:	84b2                	mv	s1,a2
1c00b54c:	892a                	mv	s2,a0
1c00b54e:	02000613          	li	a2,32
1c00b552:	0068                	addi	a0,sp,12
1c00b554:	de06                	sw	ra,60(sp)
1c00b556:	dc22                	sw	s0,56(sp)
1c00b558:	8436                	mv	s0,a3
1c00b55a:	2049                	jal	1c00b5dc <memcpy>
1c00b55c:	006c                	addi	a1,sp,12
1c00b55e:	854a                	mv	a0,s2
1c00b560:	02200613          	li	a2,34
1c00b564:	02910623          	sb	s1,44(sp)
1c00b568:	028106a3          	sb	s0,45(sp)
1c00b56c:	99efe0ef          	jal	ra,1c00970a <shake128_absorb>
1c00b570:	50f2                	lw	ra,60(sp)
1c00b572:	5462                	lw	s0,56(sp)
1c00b574:	54d2                	lw	s1,52(sp)
1c00b576:	5942                	lw	s2,48(sp)
1c00b578:	6121                	addi	sp,sp,64
1c00b57a:	8082                	ret

1c00b57c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00b57c:	7139                	addi	sp,sp,-64
1c00b57e:	87b2                	mv	a5,a2
1c00b580:	da26                	sw	s1,52(sp)
1c00b582:	d84a                	sw	s2,48(sp)
1c00b584:	84aa                	mv	s1,a0
1c00b586:	892e                	mv	s2,a1
1c00b588:	02000613          	li	a2,32
1c00b58c:	85be                	mv	a1,a5
1c00b58e:	0068                	addi	a0,sp,12
1c00b590:	de06                	sw	ra,60(sp)
1c00b592:	dc22                	sw	s0,56(sp)
1c00b594:	8436                	mv	s0,a3
1c00b596:	2099                	jal	1c00b5dc <memcpy>
1c00b598:	0070                	addi	a2,sp,12
1c00b59a:	85ca                	mv	a1,s2
1c00b59c:	8526                	mv	a0,s1
1c00b59e:	02100693          	li	a3,33
1c00b5a2:	02810623          	sb	s0,44(sp)
1c00b5a6:	c00fe0ef          	jal	ra,1c0099a6 <shake256>
1c00b5aa:	50f2                	lw	ra,60(sp)
1c00b5ac:	5462                	lw	s0,56(sp)
1c00b5ae:	54d2                	lw	s1,52(sp)
1c00b5b0:	5942                	lw	s2,48(sp)
1c00b5b2:	6121                	addi	sp,sp,64
1c00b5b4:	8082                	ret

1c00b5b6 <pos_wait_forever>:
1c00b5b6:	f14027f3          	csrr	a5,mhartid
1c00b5ba:	8795                	srai	a5,a5,0x5
1c00b5bc:	03f7f793          	andi	a5,a5,63
1c00b5c0:	477d                	li	a4,31
1c00b5c2:	00e78363          	beq	a5,a4,1c00b5c8 <pos_wait_forever+0x12>
1c00b5c6:	a001                	j	1c00b5c6 <pos_wait_forever+0x10>
1c00b5c8:	1a10a7b7          	lui	a5,0x1a10a
1c00b5cc:	577d                	li	a4,-1
1c00b5ce:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b5d2:	10500073          	wfi
1c00b5d6:	10500073          	wfi
1c00b5da:	bfe5                	j	1c00b5d2 <pos_wait_forever+0x1c>

1c00b5dc <memcpy>:
1c00b5dc:	00b567b3          	or	a5,a0,a1
1c00b5e0:	8b8d                	andi	a5,a5,3
1c00b5e2:	10078f63          	beqz	a5,1c00b700 <memcpy+0x124>
1c00b5e6:	14060063          	beqz	a2,1c00b726 <memcpy+0x14a>
1c00b5ea:	00458793          	addi	a5,a1,4
1c00b5ee:	00450693          	addi	a3,a0,4
1c00b5f2:	00f537b3          	sltu	a5,a0,a5
1c00b5f6:	00d5b6b3          	sltu	a3,a1,a3
1c00b5fa:	0017c793          	xori	a5,a5,1
1c00b5fe:	0016c693          	xori	a3,a3,1
1c00b602:	873e                	mv	a4,a5
1c00b604:	87b6                	mv	a5,a3
1c00b606:	8fd9                	or	a5,a5,a4
1c00b608:	0ff7f793          	andi	a5,a5,255
1c00b60c:	cff9                	beqz	a5,1c00b6ea <memcpy+0x10e>
1c00b60e:	00863793          	sltiu	a5,a2,8
1c00b612:	0017c793          	xori	a5,a5,1
1c00b616:	0ff7f793          	andi	a5,a5,255
1c00b61a:	cbe1                	beqz	a5,1c00b6ea <memcpy+0x10e>
1c00b61c:	40b007b3          	neg	a5,a1
1c00b620:	8b8d                	andi	a5,a5,3
1c00b622:	fff60313          	addi	t1,a2,-1
1c00b626:	cfe5                	beqz	a5,1c00b71e <memcpy+0x142>
1c00b628:	0005c683          	lbu	a3,0(a1)
1c00b62c:	4705                	li	a4,1
1c00b62e:	00d50023          	sb	a3,0(a0)
1c00b632:	00158893          	addi	a7,a1,1
1c00b636:	00150813          	addi	a6,a0,1
1c00b63a:	02e78963          	beq	a5,a4,1c00b66c <memcpy+0x90>
1c00b63e:	0015c683          	lbu	a3,1(a1)
1c00b642:	470d                	li	a4,3
1c00b644:	00d500a3          	sb	a3,1(a0)
1c00b648:	00258893          	addi	a7,a1,2
1c00b64c:	00250813          	addi	a6,a0,2
1c00b650:	ffe60313          	addi	t1,a2,-2
1c00b654:	00e79c63          	bne	a5,a4,1c00b66c <memcpy+0x90>
1c00b658:	0025c703          	lbu	a4,2(a1)
1c00b65c:	00358893          	addi	a7,a1,3
1c00b660:	00350813          	addi	a6,a0,3
1c00b664:	00e50123          	sb	a4,2(a0)
1c00b668:	ffd60313          	addi	t1,a2,-3
1c00b66c:	8e1d                	sub	a2,a2,a5
1c00b66e:	95be                	add	a1,a1,a5
1c00b670:	00265e13          	srli	t3,a2,0x2
1c00b674:	97aa                	add	a5,a5,a0
1c00b676:	4701                	li	a4,0
1c00b678:	4194                	lw	a3,0(a1)
1c00b67a:	0705                	addi	a4,a4,1
1c00b67c:	c394                	sw	a3,0(a5)
1c00b67e:	0591                	addi	a1,a1,4
1c00b680:	0791                	addi	a5,a5,4
1c00b682:	ffc76be3          	bltu	a4,t3,1c00b678 <memcpy+0x9c>
1c00b686:	ffc67593          	andi	a1,a2,-4
1c00b68a:	40b306b3          	sub	a3,t1,a1
1c00b68e:	00b807b3          	add	a5,a6,a1
1c00b692:	00b88733          	add	a4,a7,a1
1c00b696:	06b60463          	beq	a2,a1,1c00b6fe <memcpy+0x122>
1c00b69a:	00074583          	lbu	a1,0(a4)
1c00b69e:	fff68613          	addi	a2,a3,-1
1c00b6a2:	00b78023          	sb	a1,0(a5)
1c00b6a6:	ce21                	beqz	a2,1c00b6fe <memcpy+0x122>
1c00b6a8:	00174583          	lbu	a1,1(a4)
1c00b6ac:	ffe68613          	addi	a2,a3,-2
1c00b6b0:	00b780a3          	sb	a1,1(a5)
1c00b6b4:	c629                	beqz	a2,1c00b6fe <memcpy+0x122>
1c00b6b6:	00274583          	lbu	a1,2(a4)
1c00b6ba:	ffd68613          	addi	a2,a3,-3
1c00b6be:	00b78123          	sb	a1,2(a5)
1c00b6c2:	ce15                	beqz	a2,1c00b6fe <memcpy+0x122>
1c00b6c4:	00374583          	lbu	a1,3(a4)
1c00b6c8:	ffc68613          	addi	a2,a3,-4
1c00b6cc:	00b781a3          	sb	a1,3(a5)
1c00b6d0:	c61d                	beqz	a2,1c00b6fe <memcpy+0x122>
1c00b6d2:	00474583          	lbu	a1,4(a4)
1c00b6d6:	4615                	li	a2,5
1c00b6d8:	00b78223          	sb	a1,4(a5)
1c00b6dc:	02c68163          	beq	a3,a2,1c00b6fe <memcpy+0x122>
1c00b6e0:	00574703          	lbu	a4,5(a4)
1c00b6e4:	00e782a3          	sb	a4,5(a5)
1c00b6e8:	8082                	ret
1c00b6ea:	962e                	add	a2,a2,a1
1c00b6ec:	87aa                	mv	a5,a0
1c00b6ee:	0585                	addi	a1,a1,1
1c00b6f0:	fff5c703          	lbu	a4,-1(a1)
1c00b6f4:	0785                	addi	a5,a5,1
1c00b6f6:	fee78fa3          	sb	a4,-1(a5)
1c00b6fa:	fec59ae3          	bne	a1,a2,1c00b6ee <memcpy+0x112>
1c00b6fe:	8082                	ret
1c00b700:	00367793          	andi	a5,a2,3
1c00b704:	ee0793e3          	bnez	a5,1c00b5ea <memcpy+0xe>
1c00b708:	da7d                	beqz	a2,1c00b6fe <memcpy+0x122>
1c00b70a:	87aa                	mv	a5,a0
1c00b70c:	0591                	addi	a1,a1,4
1c00b70e:	ffc5a703          	lw	a4,-4(a1)
1c00b712:	0791                	addi	a5,a5,4
1c00b714:	fee7ae23          	sw	a4,-4(a5)
1c00b718:	1671                	addi	a2,a2,-4
1c00b71a:	fa6d                	bnez	a2,1c00b70c <memcpy+0x130>
1c00b71c:	8082                	ret
1c00b71e:	88ae                	mv	a7,a1
1c00b720:	882a                	mv	a6,a0
1c00b722:	8332                	mv	t1,a2
1c00b724:	b7a1                	j	1c00b66c <memcpy+0x90>
1c00b726:	8082                	ret

1c00b728 <memmove>:
1c00b728:	40b507b3          	sub	a5,a0,a1
1c00b72c:	10c7e463          	bltu	a5,a2,1c00b834 <memmove+0x10c>
1c00b730:	12060b63          	beqz	a2,1c00b866 <memmove+0x13e>
1c00b734:	00458793          	addi	a5,a1,4
1c00b738:	00450693          	addi	a3,a0,4
1c00b73c:	00f537b3          	sltu	a5,a0,a5
1c00b740:	00d5b6b3          	sltu	a3,a1,a3
1c00b744:	0017c793          	xori	a5,a5,1
1c00b748:	0016c693          	xori	a3,a3,1
1c00b74c:	873e                	mv	a4,a5
1c00b74e:	87b6                	mv	a5,a3
1c00b750:	8fd9                	or	a5,a5,a4
1c00b752:	0ff7f793          	andi	a5,a5,255
1c00b756:	cfed                	beqz	a5,1c00b850 <memmove+0x128>
1c00b758:	00863793          	sltiu	a5,a2,8
1c00b75c:	0017c793          	xori	a5,a5,1
1c00b760:	0ff7f793          	andi	a5,a5,255
1c00b764:	c7f5                	beqz	a5,1c00b850 <memmove+0x128>
1c00b766:	40b007b3          	neg	a5,a1
1c00b76a:	8b8d                	andi	a5,a5,3
1c00b76c:	fff60313          	addi	t1,a2,-1
1c00b770:	cfe5                	beqz	a5,1c00b868 <memmove+0x140>
1c00b772:	0005c683          	lbu	a3,0(a1)
1c00b776:	4705                	li	a4,1
1c00b778:	00d50023          	sb	a3,0(a0)
1c00b77c:	00150813          	addi	a6,a0,1
1c00b780:	00158893          	addi	a7,a1,1
1c00b784:	02e78963          	beq	a5,a4,1c00b7b6 <memmove+0x8e>
1c00b788:	0015c683          	lbu	a3,1(a1)
1c00b78c:	470d                	li	a4,3
1c00b78e:	00d500a3          	sb	a3,1(a0)
1c00b792:	00250813          	addi	a6,a0,2
1c00b796:	00258893          	addi	a7,a1,2
1c00b79a:	ffe60313          	addi	t1,a2,-2
1c00b79e:	00e79c63          	bne	a5,a4,1c00b7b6 <memmove+0x8e>
1c00b7a2:	0025c703          	lbu	a4,2(a1)
1c00b7a6:	00350813          	addi	a6,a0,3
1c00b7aa:	00e50123          	sb	a4,2(a0)
1c00b7ae:	00358893          	addi	a7,a1,3
1c00b7b2:	ffd60313          	addi	t1,a2,-3
1c00b7b6:	8e1d                	sub	a2,a2,a5
1c00b7b8:	95be                	add	a1,a1,a5
1c00b7ba:	00265e13          	srli	t3,a2,0x2
1c00b7be:	97aa                	add	a5,a5,a0
1c00b7c0:	4701                	li	a4,0
1c00b7c2:	4194                	lw	a3,0(a1)
1c00b7c4:	0705                	addi	a4,a4,1
1c00b7c6:	c394                	sw	a3,0(a5)
1c00b7c8:	0591                	addi	a1,a1,4
1c00b7ca:	0791                	addi	a5,a5,4
1c00b7cc:	ffc76be3          	bltu	a4,t3,1c00b7c2 <memmove+0x9a>
1c00b7d0:	ffc67593          	andi	a1,a2,-4
1c00b7d4:	40b306b3          	sub	a3,t1,a1
1c00b7d8:	00b807b3          	add	a5,a6,a1
1c00b7dc:	00b88733          	add	a4,a7,a1
1c00b7e0:	08b60263          	beq	a2,a1,1c00b864 <memmove+0x13c>
1c00b7e4:	00074583          	lbu	a1,0(a4)
1c00b7e8:	fff68613          	addi	a2,a3,-1
1c00b7ec:	00b78023          	sb	a1,0(a5)
1c00b7f0:	ca35                	beqz	a2,1c00b864 <memmove+0x13c>
1c00b7f2:	00174583          	lbu	a1,1(a4)
1c00b7f6:	ffe68613          	addi	a2,a3,-2
1c00b7fa:	00b780a3          	sb	a1,1(a5)
1c00b7fe:	c23d                	beqz	a2,1c00b864 <memmove+0x13c>
1c00b800:	00274583          	lbu	a1,2(a4)
1c00b804:	ffd68613          	addi	a2,a3,-3
1c00b808:	00b78123          	sb	a1,2(a5)
1c00b80c:	ce21                	beqz	a2,1c00b864 <memmove+0x13c>
1c00b80e:	00374583          	lbu	a1,3(a4)
1c00b812:	ffc68613          	addi	a2,a3,-4
1c00b816:	00b781a3          	sb	a1,3(a5)
1c00b81a:	c629                	beqz	a2,1c00b864 <memmove+0x13c>
1c00b81c:	00474583          	lbu	a1,4(a4)
1c00b820:	4615                	li	a2,5
1c00b822:	00b78223          	sb	a1,4(a5)
1c00b826:	02c68f63          	beq	a3,a2,1c00b864 <memmove+0x13c>
1c00b82a:	00574703          	lbu	a4,5(a4)
1c00b82e:	00e782a3          	sb	a4,5(a5)
1c00b832:	8082                	ret
1c00b834:	167d                	addi	a2,a2,-1
1c00b836:	00c587b3          	add	a5,a1,a2
1c00b83a:	962a                	add	a2,a2,a0
1c00b83c:	15fd                	addi	a1,a1,-1
1c00b83e:	0007c703          	lbu	a4,0(a5)
1c00b842:	17fd                	addi	a5,a5,-1
1c00b844:	00e60023          	sb	a4,0(a2)
1c00b848:	167d                	addi	a2,a2,-1
1c00b84a:	feb79ae3          	bne	a5,a1,1c00b83e <memmove+0x116>
1c00b84e:	8082                	ret
1c00b850:	962a                	add	a2,a2,a0
1c00b852:	87aa                	mv	a5,a0
1c00b854:	0005c703          	lbu	a4,0(a1)
1c00b858:	0785                	addi	a5,a5,1
1c00b85a:	fee78fa3          	sb	a4,-1(a5)
1c00b85e:	0585                	addi	a1,a1,1
1c00b860:	fec79ae3          	bne	a5,a2,1c00b854 <memmove+0x12c>
1c00b864:	8082                	ret
1c00b866:	8082                	ret
1c00b868:	88ae                	mv	a7,a1
1c00b86a:	882a                	mv	a6,a0
1c00b86c:	8332                	mv	t1,a2
1c00b86e:	b7a1                	j	1c00b7b6 <memmove+0x8e>

1c00b870 <strchr>:
1c00b870:	00054783          	lbu	a5,0(a0)
1c00b874:	0ff5f593          	andi	a1,a1,255
1c00b878:	00b78863          	beq	a5,a1,1c00b888 <strchr+0x18>
1c00b87c:	c799                	beqz	a5,1c00b88a <strchr+0x1a>
1c00b87e:	0505                	addi	a0,a0,1
1c00b880:	00054783          	lbu	a5,0(a0)
1c00b884:	feb79ce3          	bne	a5,a1,1c00b87c <strchr+0xc>
1c00b888:	8082                	ret
1c00b88a:	0015b593          	seqz	a1,a1
1c00b88e:	40b005b3          	neg	a1,a1
1c00b892:	8d6d                	and	a0,a0,a1
1c00b894:	8082                	ret

1c00b896 <puts>:
1c00b896:	00054783          	lbu	a5,0(a0)
1c00b89a:	c78d                	beqz	a5,1c00b8c4 <puts+0x2e>
1c00b89c:	f14026f3          	csrr	a3,mhartid
1c00b8a0:	00369713          	slli	a4,a3,0x3
1c00b8a4:	1a10f637          	lui	a2,0x1a10f
1c00b8a8:	0ff77713          	andi	a4,a4,255
1c00b8ac:	9732                	add	a4,a4,a2
1c00b8ae:	6609                	lui	a2,0x2
1c00b8b0:	068a                	slli	a3,a3,0x2
1c00b8b2:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b8b6:	8ef1                	and	a3,a3,a2
1c00b8b8:	9736                	add	a4,a4,a3
1c00b8ba:	c31c                	sw	a5,0(a4)
1c00b8bc:	0505                	addi	a0,a0,1
1c00b8be:	00054783          	lbu	a5,0(a0)
1c00b8c2:	ffe5                	bnez	a5,1c00b8ba <puts+0x24>
1c00b8c4:	f1402773          	csrr	a4,mhartid
1c00b8c8:	00371793          	slli	a5,a4,0x3
1c00b8cc:	1a10f6b7          	lui	a3,0x1a10f
1c00b8d0:	0ff7f793          	andi	a5,a5,255
1c00b8d4:	97b6                	add	a5,a5,a3
1c00b8d6:	6689                	lui	a3,0x2
1c00b8d8:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b8dc:	070a                	slli	a4,a4,0x2
1c00b8de:	8f75                	and	a4,a4,a3
1c00b8e0:	97ba                	add	a5,a5,a4
1c00b8e2:	4729                	li	a4,10
1c00b8e4:	c398                	sw	a4,0(a5)
1c00b8e6:	4501                	li	a0,0
1c00b8e8:	8082                	ret

1c00b8ea <pos_libc_fputc_locked>:
1c00b8ea:	6689                	lui	a3,0x2
1c00b8ec:	f14027f3          	csrr	a5,mhartid
1c00b8f0:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b8f4:	00379713          	slli	a4,a5,0x3
1c00b8f8:	078a                	slli	a5,a5,0x2
1c00b8fa:	8ff5                	and	a5,a5,a3
1c00b8fc:	0ff77713          	andi	a4,a4,255
1c00b900:	1a10f6b7          	lui	a3,0x1a10f
1c00b904:	9736                	add	a4,a4,a3
1c00b906:	0ff57513          	andi	a0,a0,255
1c00b90a:	97ba                	add	a5,a5,a4
1c00b90c:	c388                	sw	a0,0(a5)
1c00b90e:	4501                	li	a0,0
1c00b910:	8082                	ret

1c00b912 <putchar>:
1c00b912:	6689                	lui	a3,0x2
1c00b914:	f14027f3          	csrr	a5,mhartid
1c00b918:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00b91c:	00379713          	slli	a4,a5,0x3
1c00b920:	078a                	slli	a5,a5,0x2
1c00b922:	8ff5                	and	a5,a5,a3
1c00b924:	0ff77713          	andi	a4,a4,255
1c00b928:	1a10f6b7          	lui	a3,0x1a10f
1c00b92c:	9736                	add	a4,a4,a3
1c00b92e:	0ff57513          	andi	a0,a0,255
1c00b932:	97ba                	add	a5,a5,a4
1c00b934:	c388                	sw	a0,0(a5)
1c00b936:	4501                	li	a0,0
1c00b938:	8082                	ret

1c00b93a <pos_libc_prf_locked>:
1c00b93a:	a0b1                	j	1c00b986 <pos_libc_prf>

1c00b93c <exit>:
1c00b93c:	800007b7          	lui	a5,0x80000
1c00b940:	1141                	addi	sp,sp,-16
1c00b942:	8d5d                	or	a0,a0,a5
1c00b944:	c606                	sw	ra,12(sp)
1c00b946:	1a1047b7          	lui	a5,0x1a104
1c00b94a:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00b94e:	31a5                	jal	1c00b5b6 <pos_wait_forever>

1c00b950 <pos_io_start>:
1c00b950:	4501                	li	a0,0
1c00b952:	8082                	ret

1c00b954 <pos_io_stop>:
1c00b954:	4501                	li	a0,0
1c00b956:	8082                	ret

1c00b958 <printf>:
1c00b958:	7139                	addi	sp,sp,-64
1c00b95a:	02410313          	addi	t1,sp,36
1c00b95e:	d432                	sw	a2,40(sp)
1c00b960:	862a                	mv	a2,a0
1c00b962:	1c00c537          	lui	a0,0x1c00c
1c00b966:	d22e                	sw	a1,36(sp)
1c00b968:	d636                	sw	a3,44(sp)
1c00b96a:	4589                	li	a1,2
1c00b96c:	869a                	mv	a3,t1
1c00b96e:	8ea50513          	addi	a0,a0,-1814 # 1c00b8ea <pos_libc_fputc_locked>
1c00b972:	ce06                	sw	ra,28(sp)
1c00b974:	d83a                	sw	a4,48(sp)
1c00b976:	da3e                	sw	a5,52(sp)
1c00b978:	dc42                	sw	a6,56(sp)
1c00b97a:	de46                	sw	a7,60(sp)
1c00b97c:	c61a                	sw	t1,12(sp)
1c00b97e:	3f75                	jal	1c00b93a <pos_libc_prf_locked>
1c00b980:	40f2                	lw	ra,28(sp)
1c00b982:	6121                	addi	sp,sp,64
1c00b984:	8082                	ret

1c00b986 <pos_libc_prf>:
1c00b986:	7169                	addi	sp,sp,-304
1c00b988:	12812423          	sw	s0,296(sp)
1c00b98c:	12912223          	sw	s1,292(sp)
1c00b990:	11612823          	sw	s6,272(sp)
1c00b994:	11712623          	sw	s7,268(sp)
1c00b998:	11812423          	sw	s8,264(sp)
1c00b99c:	11912223          	sw	s9,260(sp)
1c00b9a0:	11a12023          	sw	s10,256(sp)
1c00b9a4:	12112623          	sw	ra,300(sp)
1c00b9a8:	13212023          	sw	s2,288(sp)
1c00b9ac:	11312e23          	sw	s3,284(sp)
1c00b9b0:	11412c23          	sw	s4,280(sp)
1c00b9b4:	11512a23          	sw	s5,276(sp)
1c00b9b8:	dfee                	sw	s11,252(sp)
1c00b9ba:	8b2a                	mv	s6,a0
1c00b9bc:	8d2e                	mv	s10,a1
1c00b9be:	84b2                	mv	s1,a2
1c00b9c0:	8c36                	mv	s8,a3
1c00b9c2:	4401                	li	s0,0
1c00b9c4:	1c000bb7          	lui	s7,0x1c000
1c00b9c8:	02410c93          	addi	s9,sp,36
1c00b9cc:	0004c503          	lbu	a0,0(s1)
1c00b9d0:	0485                	addi	s1,s1,1
1c00b9d2:	cd19                	beqz	a0,1c00b9f0 <pos_libc_prf+0x6a>
1c00b9d4:	02500793          	li	a5,37
1c00b9d8:	04f50863          	beq	a0,a5,1c00ba28 <pos_libc_prf+0xa2>
1c00b9dc:	85ea                	mv	a1,s10
1c00b9de:	9b02                	jalr	s6
1c00b9e0:	57fd                	li	a5,-1
1c00b9e2:	24f50863          	beq	a0,a5,1c00bc32 <pos_libc_prf+0x2ac>
1c00b9e6:	0405                	addi	s0,s0,1
1c00b9e8:	0004c503          	lbu	a0,0(s1)
1c00b9ec:	0485                	addi	s1,s1,1
1c00b9ee:	f17d                	bnez	a0,1c00b9d4 <pos_libc_prf+0x4e>
1c00b9f0:	8522                	mv	a0,s0
1c00b9f2:	12c12083          	lw	ra,300(sp)
1c00b9f6:	12812403          	lw	s0,296(sp)
1c00b9fa:	12412483          	lw	s1,292(sp)
1c00b9fe:	12012903          	lw	s2,288(sp)
1c00ba02:	11c12983          	lw	s3,284(sp)
1c00ba06:	11812a03          	lw	s4,280(sp)
1c00ba0a:	11412a83          	lw	s5,276(sp)
1c00ba0e:	11012b03          	lw	s6,272(sp)
1c00ba12:	10c12b83          	lw	s7,268(sp)
1c00ba16:	10812c03          	lw	s8,264(sp)
1c00ba1a:	10412c83          	lw	s9,260(sp)
1c00ba1e:	10012d03          	lw	s10,256(sp)
1c00ba22:	5dfe                	lw	s11,252(sp)
1c00ba24:	6155                	addi	sp,sp,304
1c00ba26:	8082                	ret
1c00ba28:	00148a93          	addi	s5,s1,1
1c00ba2c:	fffacd83          	lbu	s11,-1(s5)
1c00ba30:	02000713          	li	a4,32
1c00ba34:	250b8513          	addi	a0,s7,592 # 1c000250 <PQCLEAN_KYBER768_CLEAN_zetas+0x104>
1c00ba38:	85ee                	mv	a1,s11
1c00ba3a:	c83a                	sw	a4,16(sp)
1c00ba3c:	cc02                	sw	zero,24(sp)
1c00ba3e:	ca02                	sw	zero,20(sp)
1c00ba40:	ce02                	sw	zero,28(sp)
1c00ba42:	c602                	sw	zero,12(sp)
1c00ba44:	02300913          	li	s2,35
1c00ba48:	02d00a13          	li	s4,45
1c00ba4c:	89d6                	mv	s3,s5
1c00ba4e:	350d                	jal	1c00b870 <strchr>
1c00ba50:	c915                	beqz	a0,1c00ba84 <pos_libc_prf+0xfe>
1c00ba52:	212d8963          	beq	s11,s2,1c00bc64 <pos_libc_prf+0x2de>
1c00ba56:	1fb97063          	bleu	s11,s2,1c00bc36 <pos_libc_prf+0x2b0>
1c00ba5a:	214d8163          	beq	s11,s4,1c00bc5c <pos_libc_prf+0x2d6>
1c00ba5e:	03000613          	li	a2,48
1c00ba62:	1ecd8863          	beq	s11,a2,1c00bc52 <pos_libc_prf+0x2cc>
1c00ba66:	02b00693          	li	a3,43
1c00ba6a:	1edd8063          	beq	s11,a3,1c00bc4a <pos_libc_prf+0x2c4>
1c00ba6e:	84d6                	mv	s1,s5
1c00ba70:	00148a93          	addi	s5,s1,1
1c00ba74:	fffacd83          	lbu	s11,-1(s5)
1c00ba78:	250b8513          	addi	a0,s7,592
1c00ba7c:	85ee                	mv	a1,s11
1c00ba7e:	89d6                	mv	s3,s5
1c00ba80:	3bc5                	jal	1c00b870 <strchr>
1c00ba82:	f961                	bnez	a0,1c00ba52 <pos_libc_prf+0xcc>
1c00ba84:	02a00613          	li	a2,42
1c00ba88:	20cd8463          	beq	s11,a2,1c00bc90 <pos_libc_prf+0x30a>
1c00ba8c:	fd0d8613          	addi	a2,s11,-48
1c00ba90:	45a5                	li	a1,9
1c00ba92:	4901                	li	s2,0
1c00ba94:	1cc5fe63          	bleu	a2,a1,1c00bc70 <pos_libc_prf+0x2ea>
1c00ba98:	02e00713          	li	a4,46
1c00ba9c:	5a7d                	li	s4,-1
1c00ba9e:	24ed8463          	beq	s11,a4,1c00bce6 <pos_libc_prf+0x360>
1c00baa2:	1c000837          	lui	a6,0x1c000
1c00baa6:	85ee                	mv	a1,s11
1c00baa8:	25880513          	addi	a0,a6,600 # 1c000258 <PQCLEAN_KYBER768_CLEAN_zetas+0x10c>
1c00baac:	33d1                	jal	1c00b870 <strchr>
1c00baae:	84ce                	mv	s1,s3
1c00bab0:	c509                	beqz	a0,1c00baba <pos_libc_prf+0x134>
1c00bab2:	0009cd83          	lbu	s11,0(s3)
1c00bab6:	00198493          	addi	s1,s3,1
1c00baba:	06700713          	li	a4,103
1c00babe:	1fb75963          	ble	s11,a4,1c00bcb0 <pos_libc_prf+0x32a>
1c00bac2:	07000713          	li	a4,112
1c00bac6:	12ed89e3          	beq	s11,a4,1c00c3f8 <pos_libc_prf+0xa72>
1c00baca:	25b75263          	ble	s11,a4,1c00bd0e <pos_libc_prf+0x388>
1c00bace:	07500713          	li	a4,117
1c00bad2:	0aed89e3          	beq	s11,a4,1c00c384 <pos_libc_prf+0x9fe>
1c00bad6:	07800713          	li	a4,120
1c00bada:	72ed8b63          	beq	s11,a4,1c00c210 <pos_libc_prf+0x88a>
1c00bade:	07300713          	li	a4,115
1c00bae2:	1aed9ce3          	bne	s11,a4,1c00c49a <pos_libc_prf+0xb14>
1c00bae6:	000c2583          	lw	a1,0(s8) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00baea:	004c0a93          	addi	s5,s8,4
1c00baee:	87ae                	mv	a5,a1
1c00baf0:	4981                	li	s3,0
1c00baf2:	0c800693          	li	a3,200
1c00baf6:	a021                	j	1c00bafe <pos_libc_prf+0x178>
1c00baf8:	0985                	addi	s3,s3,1
1c00bafa:	5ad98be3          	beq	s3,a3,1c00c8b0 <pos_libc_prf+0xf2a>
1c00bafe:	0007c703          	lbu	a4,0(a5)
1c00bb02:	0785                	addi	a5,a5,1
1c00bb04:	fb75                	bnez	a4,1c00baf8 <pos_libc_prf+0x172>
1c00bb06:	000a4563          	bltz	s4,1c00bb10 <pos_libc_prf+0x18a>
1c00bb0a:	013a5363          	ble	s3,s4,1c00bb10 <pos_libc_prf+0x18a>
1c00bb0e:	89d2                	mv	s3,s4
1c00bb10:	8c56                	mv	s8,s5
1c00bb12:	ea098de3          	beqz	s3,1c00b9cc <pos_libc_prf+0x46>
1c00bb16:	864e                	mv	a2,s3
1c00bb18:	8566                	mv	a0,s9
1c00bb1a:	34c9                	jal	1c00b5dc <memcpy>
1c00bb1c:	8c56                	mv	s8,s5
1c00bb1e:	0f29d963          	ble	s2,s3,1c00bc10 <pos_libc_prf+0x28a>
1c00bb22:	c602                	sw	zero,12(sp)
1c00bb24:	48f2                	lw	a7,28(sp)
1c00bb26:	1a0885e3          	beqz	a7,1c00c4d0 <pos_libc_prf+0xb4a>
1c00bb2a:	013c87b3          	add	a5,s9,s3
1c00bb2e:	40f007b3          	neg	a5,a5
1c00bb32:	8b8d                	andi	a5,a5,3
1c00bb34:	00378693          	addi	a3,a5,3
1c00bb38:	4715                	li	a4,5
1c00bb3a:	413905b3          	sub	a1,s2,s3
1c00bb3e:	00e6f363          	bleu	a4,a3,1c00bb44 <pos_libc_prf+0x1be>
1c00bb42:	4695                	li	a3,5
1c00bb44:	fff90713          	addi	a4,s2,-1
1c00bb48:	41370733          	sub	a4,a4,s3
1c00bb4c:	06d76663          	bltu	a4,a3,1c00bbb8 <pos_libc_prf+0x232>
1c00bb50:	86ce                	mv	a3,s3
1c00bb52:	cb9d                	beqz	a5,1c00bb88 <pos_libc_prf+0x202>
1c00bb54:	0f010813          	addi	a6,sp,240
1c00bb58:	013806b3          	add	a3,a6,s3
1c00bb5c:	02000713          	li	a4,32
1c00bb60:	f2e68a23          	sb	a4,-204(a3) # 1a10ef34 <__CTOR_LIST__-0x1ef10d0>
1c00bb64:	4605                	li	a2,1
1c00bb66:	00198693          	addi	a3,s3,1
1c00bb6a:	00c78f63          	beq	a5,a2,1c00bb88 <pos_libc_prf+0x202>
1c00bb6e:	96c2                	add	a3,a3,a6
1c00bb70:	f2e68a23          	sb	a4,-204(a3)
1c00bb74:	460d                	li	a2,3
1c00bb76:	00298693          	addi	a3,s3,2
1c00bb7a:	00c79763          	bne	a5,a2,1c00bb88 <pos_libc_prf+0x202>
1c00bb7e:	96c2                	add	a3,a3,a6
1c00bb80:	f2e68a23          	sb	a4,-204(a3)
1c00bb84:	00398693          	addi	a3,s3,3
1c00bb88:	8d9d                	sub	a1,a1,a5
1c00bb8a:	97ce                	add	a5,a5,s3
1c00bb8c:	0025d613          	srli	a2,a1,0x2
1c00bb90:	97e6                	add	a5,a5,s9
1c00bb92:	4701                	li	a4,0
1c00bb94:	1c0008b7          	lui	a7,0x1c000
1c00bb98:	24c88893          	addi	a7,a7,588 # 1c00024c <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00bb9c:	0008a883          	lw	a7,0(a7)
1c00bba0:	0705                	addi	a4,a4,1
1c00bba2:	0117a023          	sw	a7,0(a5)
1c00bba6:	0791                	addi	a5,a5,4
1c00bba8:	fec766e3          	bltu	a4,a2,1c00bb94 <pos_libc_prf+0x20e>
1c00bbac:	ffc5f793          	andi	a5,a1,-4
1c00bbb0:	00d789b3          	add	s3,a5,a3
1c00bbb4:	04b78b63          	beq	a5,a1,1c00bc0a <pos_libc_prf+0x284>
1c00bbb8:	1988                	addi	a0,sp,240
1c00bbba:	01350733          	add	a4,a0,s3
1c00bbbe:	02000793          	li	a5,32
1c00bbc2:	f2f70a23          	sb	a5,-204(a4)
1c00bbc6:	00198713          	addi	a4,s3,1
1c00bbca:	05275063          	ble	s2,a4,1c00bc0a <pos_libc_prf+0x284>
1c00bbce:	972a                	add	a4,a4,a0
1c00bbd0:	f2f70a23          	sb	a5,-204(a4)
1c00bbd4:	00298713          	addi	a4,s3,2
1c00bbd8:	03275963          	ble	s2,a4,1c00bc0a <pos_libc_prf+0x284>
1c00bbdc:	972a                	add	a4,a4,a0
1c00bbde:	f2f70a23          	sb	a5,-204(a4)
1c00bbe2:	00398713          	addi	a4,s3,3
1c00bbe6:	03275263          	ble	s2,a4,1c00bc0a <pos_libc_prf+0x284>
1c00bbea:	972a                	add	a4,a4,a0
1c00bbec:	f2f70a23          	sb	a5,-204(a4)
1c00bbf0:	00498713          	addi	a4,s3,4
1c00bbf4:	01275b63          	ble	s2,a4,1c00bc0a <pos_libc_prf+0x284>
1c00bbf8:	972a                	add	a4,a4,a0
1c00bbfa:	f2f70a23          	sb	a5,-204(a4)
1c00bbfe:	0995                	addi	s3,s3,5
1c00bc00:	0129d563          	ble	s2,s3,1c00bc0a <pos_libc_prf+0x284>
1c00bc04:	99aa                	add	s3,s3,a0
1c00bc06:	f2f98a23          	sb	a5,-204(s3)
1c00bc0a:	89ca                	mv	s3,s2
1c00bc0c:	dc0980e3          	beqz	s3,1c00b9cc <pos_libc_prf+0x46>
1c00bc10:	8966                	mv	s2,s9
1c00bc12:	5a7d                	li	s4,-1
1c00bc14:	41940ab3          	sub	s5,s0,s9
1c00bc18:	a029                	j	1c00bc22 <pos_libc_prf+0x29c>
1c00bc1a:	01590433          	add	s0,s2,s5
1c00bc1e:	da0987e3          	beqz	s3,1c00b9cc <pos_libc_prf+0x46>
1c00bc22:	00094503          	lbu	a0,0(s2)
1c00bc26:	85ea                	mv	a1,s10
1c00bc28:	9b02                	jalr	s6
1c00bc2a:	0905                	addi	s2,s2,1
1c00bc2c:	19fd                	addi	s3,s3,-1
1c00bc2e:	ff4516e3          	bne	a0,s4,1c00bc1a <pos_libc_prf+0x294>
1c00bc32:	547d                	li	s0,-1
1c00bc34:	bb75                	j	1c00b9f0 <pos_libc_prf+0x6a>
1c00bc36:	da0d8de3          	beqz	s11,1c00b9f0 <pos_libc_prf+0x6a>
1c00bc3a:	02000513          	li	a0,32
1c00bc3e:	e2ad98e3          	bne	s11,a0,1c00ba6e <pos_libc_prf+0xe8>
1c00bc42:	4785                	li	a5,1
1c00bc44:	cc3e                	sw	a5,24(sp)
1c00bc46:	84d6                	mv	s1,s5
1c00bc48:	b525                	j	1c00ba70 <pos_libc_prf+0xea>
1c00bc4a:	4705                	li	a4,1
1c00bc4c:	ca3a                	sw	a4,20(sp)
1c00bc4e:	84d6                	mv	s1,s5
1c00bc50:	b505                	j	1c00ba70 <pos_libc_prf+0xea>
1c00bc52:	03000893          	li	a7,48
1c00bc56:	c846                	sw	a7,16(sp)
1c00bc58:	84d6                	mv	s1,s5
1c00bc5a:	bd19                	j	1c00ba70 <pos_libc_prf+0xea>
1c00bc5c:	4685                	li	a3,1
1c00bc5e:	ce36                	sw	a3,28(sp)
1c00bc60:	84d6                	mv	s1,s5
1c00bc62:	b539                	j	1c00ba70 <pos_libc_prf+0xea>
1c00bc64:	4805                	li	a6,1
1c00bc66:	c642                	sw	a6,12(sp)
1c00bc68:	84d6                	mv	s1,s5
1c00bc6a:	b519                	j	1c00ba70 <pos_libc_prf+0xea>
1c00bc6c:	84d6                	mv	s1,s5
1c00bc6e:	0a85                	addi	s5,s5,1
1c00bc70:	00291793          	slli	a5,s2,0x2
1c00bc74:	97ca                	add	a5,a5,s2
1c00bc76:	0786                	slli	a5,a5,0x1
1c00bc78:	97ee                	add	a5,a5,s11
1c00bc7a:	000acd83          	lbu	s11,0(s5)
1c00bc7e:	fd078913          	addi	s2,a5,-48
1c00bc82:	fd0d8793          	addi	a5,s11,-48
1c00bc86:	fef5f3e3          	bleu	a5,a1,1c00bc6c <pos_libc_prf+0x2e6>
1c00bc8a:	00248993          	addi	s3,s1,2
1c00bc8e:	a811                	j	1c00bca2 <pos_libc_prf+0x31c>
1c00bc90:	000c2903          	lw	s2,0(s8)
1c00bc94:	0c11                	addi	s8,s8,4
1c00bc96:	14094663          	bltz	s2,1c00bde2 <pos_libc_prf+0x45c>
1c00bc9a:	000acd83          	lbu	s11,0(s5)
1c00bc9e:	00248993          	addi	s3,s1,2
1c00bca2:	0c800713          	li	a4,200
1c00bca6:	df2779e3          	bleu	s2,a4,1c00ba98 <pos_libc_prf+0x112>
1c00bcaa:	0c800913          	li	s2,200
1c00bcae:	b3ed                	j	1c00ba98 <pos_libc_prf+0x112>
1c00bcb0:	06500713          	li	a4,101
1c00bcb4:	12eddc63          	ble	a4,s11,1c00bdec <pos_libc_prf+0x466>
1c00bcb8:	04700713          	li	a4,71
1c00bcbc:	55b74063          	blt	a4,s11,1c00c1fc <pos_libc_prf+0x876>
1c00bcc0:	04500713          	li	a4,69
1c00bcc4:	12edd463          	ble	a4,s11,1c00bdec <pos_libc_prf+0x466>
1c00bcc8:	d20d84e3          	beqz	s11,1c00b9f0 <pos_libc_prf+0x6a>
1c00bccc:	02500713          	li	a4,37
1c00bcd0:	7ced9563          	bne	s11,a4,1c00c49a <pos_libc_prf+0xb14>
1c00bcd4:	85ea                	mv	a1,s10
1c00bcd6:	02500513          	li	a0,37
1c00bcda:	9b02                	jalr	s6
1c00bcdc:	57fd                	li	a5,-1
1c00bcde:	f4f50ae3          	beq	a0,a5,1c00bc32 <pos_libc_prf+0x2ac>
1c00bce2:	0405                	addi	s0,s0,1
1c00bce4:	b311                	j	1c00b9e8 <pos_libc_prf+0x62>
1c00bce6:	0009c783          	lbu	a5,0(s3)
1c00bcea:	02a00713          	li	a4,42
1c00bcee:	00198693          	addi	a3,s3,1
1c00bcf2:	0ae79d63          	bne	a5,a4,1c00bdac <pos_libc_prf+0x426>
1c00bcf6:	000c2a03          	lw	s4,0(s8)
1c00bcfa:	0019cd83          	lbu	s11,1(s3)
1c00bcfe:	0c11                	addi	s8,s8,4
1c00bd00:	0989                	addi	s3,s3,2
1c00bd02:	0c800713          	li	a4,200
1c00bd06:	d9475ee3          	ble	s4,a4,1c00baa2 <pos_libc_prf+0x11c>
1c00bd0a:	5a7d                	li	s4,-1
1c00bd0c:	bb59                	j	1c00baa2 <pos_libc_prf+0x11c>
1c00bd0e:	06e00713          	li	a4,110
1c00bd12:	76ed8e63          	beq	s11,a4,1c00c48e <pos_libc_prf+0xb08>
1c00bd16:	5bb75663          	ble	s11,a4,1c00c2c2 <pos_libc_prf+0x93c>
1c00bd1a:	4732                	lw	a4,12(sp)
1c00bd1c:	004c0513          	addi	a0,s8,4
1c00bd20:	000c2683          	lw	a3,0(s8)
1c00bd24:	1c070de3          	beqz	a4,1c00c6fe <pos_libc_prf+0xd78>
1c00bd28:	03000793          	li	a5,48
1c00bd2c:	02f10223          	sb	a5,36(sp)
1c00bd30:	16068de3          	beqz	a3,1c00c6aa <pos_libc_prf+0xd24>
1c00bd34:	02510593          	addi	a1,sp,37
1c00bd38:	872e                	mv	a4,a1
1c00bd3a:	87ba                	mv	a5,a4
1c00bd3c:	0076f613          	andi	a2,a3,7
1c00bd40:	0785                	addi	a5,a5,1
1c00bd42:	03060613          	addi	a2,a2,48
1c00bd46:	828d                	srli	a3,a3,0x3
1c00bd48:	fec78fa3          	sb	a2,-1(a5)
1c00bd4c:	fae5                	bnez	a3,1c00bd3c <pos_libc_prf+0x3b6>
1c00bd4e:	40b789b3          	sub	s3,a5,a1
1c00bd52:	0149db63          	ble	s4,s3,1c00bd68 <pos_libc_prf+0x3e2>
1c00bd56:	03000693          	li	a3,48
1c00bd5a:	0785                	addi	a5,a5,1
1c00bd5c:	fed78fa3          	sb	a3,-1(a5)
1c00bd60:	40b789b3          	sub	s3,a5,a1
1c00bd64:	ff49cbe3          	blt	s3,s4,1c00bd5a <pos_libc_prf+0x3d4>
1c00bd68:	00078023          	sb	zero,0(a5)
1c00bd6c:	17fd                	addi	a5,a5,-1
1c00bd6e:	00f77e63          	bleu	a5,a4,1c00bd8a <pos_libc_prf+0x404>
1c00bd72:	00074603          	lbu	a2,0(a4)
1c00bd76:	0007c683          	lbu	a3,0(a5)
1c00bd7a:	00c78023          	sb	a2,0(a5)
1c00bd7e:	00d70023          	sb	a3,0(a4)
1c00bd82:	17fd                	addi	a5,a5,-1
1c00bd84:	0705                	addi	a4,a4,1
1c00bd86:	fef766e3          	bltu	a4,a5,1c00bd72 <pos_libc_prf+0x3ec>
1c00bd8a:	4832                	lw	a6,12(sp)
1c00bd8c:	57fd                	li	a5,-1
1c00bd8e:	99c2                	add	s3,s3,a6
1c00bd90:	22fa0ee3          	beq	s4,a5,1c00c7cc <pos_libc_prf+0xe46>
1c00bd94:	0c800793          	li	a5,200
1c00bd98:	e937cde3          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00bd9c:	02000693          	li	a3,32
1c00bda0:	8c2a                	mv	s8,a0
1c00bda2:	c602                	sw	zero,12(sp)
1c00bda4:	c836                	sw	a3,16(sp)
1c00bda6:	d729cfe3          	blt	s3,s2,1c00bb24 <pos_libc_prf+0x19e>
1c00bdaa:	b58d                	j	1c00bc0c <pos_libc_prf+0x286>
1c00bdac:	fd078593          	addi	a1,a5,-48
1c00bdb0:	4725                	li	a4,9
1c00bdb2:	8dbe                	mv	s11,a5
1c00bdb4:	4a01                	li	s4,0
1c00bdb6:	4625                	li	a2,9
1c00bdb8:	00b77663          	bleu	a1,a4,1c00bdc4 <pos_libc_prf+0x43e>
1c00bdbc:	1070006f          	j	1c00c6c2 <pos_libc_prf+0xd3c>
1c00bdc0:	89b6                	mv	s3,a3
1c00bdc2:	0685                	addi	a3,a3,1
1c00bdc4:	002a1793          	slli	a5,s4,0x2
1c00bdc8:	97d2                	add	a5,a5,s4
1c00bdca:	0786                	slli	a5,a5,0x1
1c00bdcc:	97ee                	add	a5,a5,s11
1c00bdce:	0006cd83          	lbu	s11,0(a3)
1c00bdd2:	fd078a13          	addi	s4,a5,-48
1c00bdd6:	fd0d8793          	addi	a5,s11,-48
1c00bdda:	fef673e3          	bleu	a5,a2,1c00bdc0 <pos_libc_prf+0x43a>
1c00bdde:	0989                	addi	s3,s3,2
1c00bde0:	b70d                	j	1c00bd02 <pos_libc_prf+0x37c>
1c00bde2:	4785                	li	a5,1
1c00bde4:	41200933          	neg	s2,s2
1c00bde8:	ce3e                	sw	a5,28(sp)
1c00bdea:	bd45                	j	1c00bc9a <pos_libc_prf+0x314>
1c00bdec:	0c1d                	addi	s8,s8,7
1c00bdee:	ff8c7c13          	andi	s8,s8,-8
1c00bdf2:	000c2703          	lw	a4,0(s8)
1c00bdf6:	004c2803          	lw	a6,4(s8)
1c00bdfa:	01575693          	srli	a3,a4,0x15
1c00bdfe:	00b81613          	slli	a2,a6,0xb
1c00be02:	8e55                	or	a2,a2,a3
1c00be04:	01485513          	srli	a0,a6,0x14
1c00be08:	00b71693          	slli	a3,a4,0xb
1c00be0c:	80000737          	lui	a4,0x80000
1c00be10:	fff74713          	not	a4,a4
1c00be14:	7ff57513          	andi	a0,a0,2047
1c00be18:	7ff00593          	li	a1,2047
1c00be1c:	0c21                	addi	s8,s8,8
1c00be1e:	8e79                	and	a2,a2,a4
1c00be20:	0ab504e3          	beq	a0,a1,1c00c6c8 <pos_libc_prf+0xd42>
1c00be24:	04600593          	li	a1,70
1c00be28:	00bd9463          	bne	s11,a1,1c00be30 <pos_libc_prf+0x4aa>
1c00be2c:	06600d93          	li	s11,102
1c00be30:	00d56733          	or	a4,a0,a3
1c00be34:	8f51                	or	a4,a4,a2
1c00be36:	7e070963          	beqz	a4,1c00c628 <pos_libc_prf+0xca2>
1c00be3a:	800005b7          	lui	a1,0x80000
1c00be3e:	c0250513          	addi	a0,a0,-1022
1c00be42:	8dd1                	or	a1,a1,a2
1c00be44:	26084ae3          	bltz	a6,1c00c8b8 <pos_libc_prf+0xf32>
1c00be48:	4852                	lw	a6,20(sp)
1c00be4a:	220808e3          	beqz	a6,1c00c87a <pos_libc_prf+0xef4>
1c00be4e:	02b00713          	li	a4,43
1c00be52:	02e10223          	sb	a4,36(sp)
1c00be56:	02510e93          	addi	t4,sp,37
1c00be5a:	5779                	li	a4,-2
1c00be5c:	4301                	li	t1,0
1c00be5e:	06e55763          	ble	a4,a0,1c00becc <pos_libc_prf+0x546>
1c00be62:	33333837          	lui	a6,0x33333
1c00be66:	800008b7          	lui	a7,0x80000
1c00be6a:	33280813          	addi	a6,a6,818 # 33333332 <__l2_shared_end+0x17323332>
1c00be6e:	fff8c893          	not	a7,a7
1c00be72:	5e79                	li	t3,-2
1c00be74:	a011                	j	1c00be78 <pos_libc_prf+0x4f2>
1c00be76:	853e                	mv	a0,a5
1c00be78:	01f59613          	slli	a2,a1,0x1f
1c00be7c:	0016d713          	srli	a4,a3,0x1
1c00be80:	0016f793          	andi	a5,a3,1
1c00be84:	8f51                	or	a4,a4,a2
1c00be86:	00e786b3          	add	a3,a5,a4
1c00be8a:	00f6b7b3          	sltu	a5,a3,a5
1c00be8e:	8185                	srli	a1,a1,0x1
1c00be90:	95be                	add	a1,a1,a5
1c00be92:	00150793          	addi	a5,a0,1
1c00be96:	feb860e3          	bltu	a6,a1,1c00be76 <pos_libc_prf+0x4f0>
1c00be9a:	00269613          	slli	a2,a3,0x2
1c00be9e:	01e6df13          	srli	t5,a3,0x1e
1c00bea2:	00259713          	slli	a4,a1,0x2
1c00bea6:	96b2                	add	a3,a3,a2
1c00bea8:	00ef6733          	or	a4,t5,a4
1c00beac:	95ba                	add	a1,a1,a4
1c00beae:	00c6b633          	sltu	a2,a3,a2
1c00beb2:	95b2                	add	a1,a1,a2
1c00beb4:	01f6d713          	srli	a4,a3,0x1f
1c00beb8:	0509                	addi	a0,a0,2
1c00beba:	137d                	addi	t1,t1,-1
1c00bebc:	01159663          	bne	a1,a7,1c00bec8 <pos_libc_prf+0x542>
1c00bec0:	0686                	slli	a3,a3,0x1
1c00bec2:	ffe76593          	ori	a1,a4,-2
1c00bec6:	853e                	mv	a0,a5
1c00bec8:	fbc548e3          	blt	a0,t3,1c00be78 <pos_libc_prf+0x4f2>
1c00becc:	06a05563          	blez	a0,1c00bf36 <pos_libc_prf+0x5b0>
1c00bed0:	800008b7          	lui	a7,0x80000
1c00bed4:	4e15                	li	t3,5
1c00bed6:	fff8c893          	not	a7,a7
1c00beda:	00268613          	addi	a2,a3,2
1c00bede:	00d636b3          	sltu	a3,a2,a3
1c00bee2:	95b6                	add	a1,a1,a3
1c00bee4:	03c5d7b3          	divu	a5,a1,t3
1c00bee8:	00279713          	slli	a4,a5,0x2
1c00beec:	973e                	add	a4,a4,a5
1c00beee:	8d99                	sub	a1,a1,a4
1c00bef0:	01d59713          	slli	a4,a1,0x1d
1c00bef4:	00365593          	srli	a1,a2,0x3
1c00bef8:	8dd9                	or	a1,a1,a4
1c00befa:	03c5d5b3          	divu	a1,a1,t3
1c00befe:	00359693          	slli	a3,a1,0x3
1c00bf02:	00559713          	slli	a4,a1,0x5
1c00bf06:	9736                	add	a4,a4,a3
1c00bf08:	40e60733          	sub	a4,a2,a4
1c00bf0c:	03c75733          	divu	a4,a4,t3
1c00bf10:	81f5                	srli	a1,a1,0x1d
1c00bf12:	96ba                	add	a3,a3,a4
1c00bf14:	97ae                	add	a5,a5,a1
1c00bf16:	00e6b733          	sltu	a4,a3,a4
1c00bf1a:	00f705b3          	add	a1,a4,a5
1c00bf1e:	157d                	addi	a0,a0,-1
1c00bf20:	0305                	addi	t1,t1,1
1c00bf22:	01f6d793          	srli	a5,a3,0x1f
1c00bf26:	0586                	slli	a1,a1,0x1
1c00bf28:	8ddd                	or	a1,a1,a5
1c00bf2a:	0686                	slli	a3,a3,0x1
1c00bf2c:	157d                	addi	a0,a0,-1
1c00bf2e:	feb8fae3          	bleu	a1,a7,1c00bf22 <pos_libc_prf+0x59c>
1c00bf32:	faa044e3          	bgtz	a0,1c00beda <pos_libc_prf+0x554>
1c00bf36:	4611                	li	a2,4
1c00bf38:	01f59713          	slli	a4,a1,0x1f
1c00bf3c:	0016d793          	srli	a5,a3,0x1
1c00bf40:	8fd9                	or	a5,a5,a4
1c00bf42:	8a85                	andi	a3,a3,1
1c00bf44:	00f688b3          	add	a7,a3,a5
1c00bf48:	8185                	srli	a1,a1,0x1
1c00bf4a:	00d8b6b3          	sltu	a3,a7,a3
1c00bf4e:	00b68733          	add	a4,a3,a1
1c00bf52:	0505                	addi	a0,a0,1
1c00bf54:	86c6                	mv	a3,a7
1c00bf56:	85ba                	mv	a1,a4
1c00bf58:	fec510e3          	bne	a0,a2,1c00bf38 <pos_libc_prf+0x5b2>
1c00bf5c:	06700693          	li	a3,103
1c00bf60:	040a48e3          	bltz	s4,1c00c7b0 <pos_libc_prf+0xe2a>
1c00bf64:	70dd8b63          	beq	s11,a3,1c00c67a <pos_libc_prf+0xcf4>
1c00bf68:	04700693          	li	a3,71
1c00bf6c:	70dd8763          	beq	s11,a3,1c00c67a <pos_libc_prf+0xcf4>
1c00bf70:	06600693          	li	a3,102
1c00bf74:	08dd89e3          	beq	s11,a3,1c00c806 <pos_libc_prf+0xe80>
1c00bf78:	001a0e13          	addi	t3,s4,1
1c00bf7c:	46c1                	li	a3,16
1c00bf7e:	01c6d363          	ble	t3,a3,1c00bf84 <pos_libc_prf+0x5fe>
1c00bf82:	4e41                	li	t3,16
1c00bf84:	1e7d                	addi	t3,t3,-1
1c00bf86:	4f81                	li	t6,0
1c00bf88:	4681                	li	a3,0
1c00bf8a:	08000637          	lui	a2,0x8000
1c00bf8e:	4f15                	li	t5,5
1c00bf90:	52fd                	li	t0,-1
1c00bf92:	00268593          	addi	a1,a3,2
1c00bf96:	00d5b7b3          	sltu	a5,a1,a3
1c00bf9a:	97b2                	add	a5,a5,a2
1c00bf9c:	03e7d633          	divu	a2,a5,t5
1c00bfa0:	00261693          	slli	a3,a2,0x2
1c00bfa4:	96b2                	add	a3,a3,a2
1c00bfa6:	8f95                	sub	a5,a5,a3
1c00bfa8:	07f6                	slli	a5,a5,0x1d
1c00bfaa:	0035d513          	srli	a0,a1,0x3
1c00bfae:	8d5d                	or	a0,a0,a5
1c00bfb0:	03e55533          	divu	a0,a0,t5
1c00bfb4:	00351693          	slli	a3,a0,0x3
1c00bfb8:	00551793          	slli	a5,a0,0x5
1c00bfbc:	97b6                	add	a5,a5,a3
1c00bfbe:	40f587b3          	sub	a5,a1,a5
1c00bfc2:	03e7d7b3          	divu	a5,a5,t5
1c00bfc6:	8175                	srli	a0,a0,0x1d
1c00bfc8:	96be                	add	a3,a3,a5
1c00bfca:	00f6b7b3          	sltu	a5,a3,a5
1c00bfce:	962a                	add	a2,a2,a0
1c00bfd0:	963e                	add	a2,a2,a5
1c00bfd2:	01f61513          	slli	a0,a2,0x1f
1c00bfd6:	0016d793          	srli	a5,a3,0x1
1c00bfda:	0016f593          	andi	a1,a3,1
1c00bfde:	8fc9                	or	a5,a5,a0
1c00bfe0:	00f586b3          	add	a3,a1,a5
1c00bfe4:	8205                	srli	a2,a2,0x1
1c00bfe6:	00b6b7b3          	sltu	a5,a3,a1
1c00bfea:	1e7d                	addi	t3,t3,-1
1c00bfec:	963e                	add	a2,a2,a5
1c00bfee:	fa5e12e3          	bne	t3,t0,1c00bf92 <pos_libc_prf+0x60c>
1c00bff2:	96c6                	add	a3,a3,a7
1c00bff4:	963a                	add	a2,a2,a4
1c00bff6:	0116b8b3          	sltu	a7,a3,a7
1c00bffa:	9646                	add	a2,a2,a7
1c00bffc:	f00005b7          	lui	a1,0xf0000
1c00c000:	8df1                	and	a1,a1,a2
1c00c002:	8736                	mv	a4,a3
1c00c004:	cdb9                	beqz	a1,1c00c062 <pos_libc_prf+0x6dc>
1c00c006:	0689                	addi	a3,a3,2
1c00c008:	00e6b733          	sltu	a4,a3,a4
1c00c00c:	963a                	add	a2,a2,a4
1c00c00e:	4815                	li	a6,5
1c00c010:	03065533          	divu	a0,a2,a6
1c00c014:	00251713          	slli	a4,a0,0x2
1c00c018:	972a                	add	a4,a4,a0
1c00c01a:	8e19                	sub	a2,a2,a4
1c00c01c:	01d61713          	slli	a4,a2,0x1d
1c00c020:	0036d593          	srli	a1,a3,0x3
1c00c024:	8dd9                	or	a1,a1,a4
1c00c026:	0305d5b3          	divu	a1,a1,a6
1c00c02a:	00359613          	slli	a2,a1,0x3
1c00c02e:	00559713          	slli	a4,a1,0x5
1c00c032:	9732                	add	a4,a4,a2
1c00c034:	40e68733          	sub	a4,a3,a4
1c00c038:	03075733          	divu	a4,a4,a6
1c00c03c:	81f5                	srli	a1,a1,0x1d
1c00c03e:	963a                	add	a2,a2,a4
1c00c040:	00e63733          	sltu	a4,a2,a4
1c00c044:	95aa                	add	a1,a1,a0
1c00c046:	00b706b3          	add	a3,a4,a1
1c00c04a:	01f69593          	slli	a1,a3,0x1f
1c00c04e:	00165713          	srli	a4,a2,0x1
1c00c052:	8f4d                	or	a4,a4,a1
1c00c054:	8a05                	andi	a2,a2,1
1c00c056:	9732                	add	a4,a4,a2
1c00c058:	8285                	srli	a3,a3,0x1
1c00c05a:	00c73633          	sltu	a2,a4,a2
1c00c05e:	9636                	add	a2,a2,a3
1c00c060:	0305                	addi	t1,t1,1
1c00c062:	001e8993          	addi	s3,t4,1
1c00c066:	06600693          	li	a3,102
1c00c06a:	85ce                	mv	a1,s3
1c00c06c:	6add8663          	beq	s11,a3,1c00c718 <pos_libc_prf+0xd92>
1c00c070:	00271693          	slli	a3,a4,0x2
1c00c074:	01e75593          	srli	a1,a4,0x1e
1c00c078:	00261513          	slli	a0,a2,0x2
1c00c07c:	9736                	add	a4,a4,a3
1c00c07e:	8d4d                	or	a0,a0,a1
1c00c080:	962a                	add	a2,a2,a0
1c00c082:	00d735b3          	sltu	a1,a4,a3
1c00c086:	95b2                	add	a1,a1,a2
1c00c088:	01f75693          	srli	a3,a4,0x1f
1c00c08c:	0586                	slli	a1,a1,0x1
1c00c08e:	8dd5                	or	a1,a1,a3
1c00c090:	01c5d693          	srli	a3,a1,0x1c
1c00c094:	03068613          	addi	a2,a3,48
1c00c098:	00d036b3          	snez	a3,a3
1c00c09c:	10000537          	lui	a0,0x10000
1c00c0a0:	40d30333          	sub	t1,t1,a3
1c00c0a4:	46b2                	lw	a3,12(sp)
1c00c0a6:	157d                	addi	a0,a0,-1
1c00c0a8:	00ce8023          	sb	a2,0(t4)
1c00c0ac:	0706                	slli	a4,a4,0x1
1c00c0ae:	8de9                	and	a1,a1,a0
1c00c0b0:	64068b63          	beqz	a3,1c00c706 <pos_libc_prf+0xd80>
1c00c0b4:	02e00693          	li	a3,46
1c00c0b8:	00de80a3          	sb	a3,1(t4)
1c00c0bc:	002e8513          	addi	a0,t4,2
1c00c0c0:	020a00e3          	beqz	s4,1c00c8e0 <pos_libc_prf+0xf5a>
1c00c0c4:	014509b3          	add	s3,a0,s4
1c00c0c8:	48bd                	li	a7,15
1c00c0ca:	03000e13          	li	t3,48
1c00c0ce:	00271793          	slli	a5,a4,0x2
1c00c0d2:	01e75813          	srli	a6,a4,0x1e
1c00c0d6:	00259693          	slli	a3,a1,0x2
1c00c0da:	00e78633          	add	a2,a5,a4
1c00c0de:	00d866b3          	or	a3,a6,a3
1c00c0e2:	96ae                	add	a3,a3,a1
1c00c0e4:	00f637b3          	sltu	a5,a2,a5
1c00c0e8:	97b6                	add	a5,a5,a3
1c00c0ea:	0786                	slli	a5,a5,0x1
1c00c0ec:	01f65693          	srli	a3,a2,0x1f
1c00c0f0:	8fd5                	or	a5,a5,a3
1c00c0f2:	01c7d693          	srli	a3,a5,0x1c
1c00c0f6:	03068693          	addi	a3,a3,48
1c00c0fa:	0505                	addi	a0,a0,1
1c00c0fc:	3b105663          	blez	a7,1c00c4a8 <pos_libc_prf+0xb22>
1c00c100:	10000837          	lui	a6,0x10000
1c00c104:	187d                	addi	a6,a6,-1
1c00c106:	fed50fa3          	sb	a3,-1(a0) # fffffff <__CTOR_LIST__-0xc000005>
1c00c10a:	18fd                	addi	a7,a7,-1
1c00c10c:	00161713          	slli	a4,a2,0x1
1c00c110:	0107f5b3          	and	a1,a5,a6
1c00c114:	faa99de3          	bne	s3,a0,1c00c0ce <pos_libc_prf+0x748>
1c00c118:	0c0f9263          	bnez	t6,1c00c1dc <pos_libc_prf+0x856>
1c00c11c:	fdfdf713          	andi	a4,s11,-33
1c00c120:	04500693          	li	a3,69
1c00c124:	02d71963          	bne	a4,a3,1c00c156 <pos_libc_prf+0x7d0>
1c00c128:	87ee                	mv	a5,s11
1c00c12a:	00f98023          	sb	a5,0(s3)
1c00c12e:	6a034763          	bltz	t1,1c00c7dc <pos_libc_prf+0xe56>
1c00c132:	02b00793          	li	a5,43
1c00c136:	00f980a3          	sb	a5,1(s3)
1c00c13a:	47a9                	li	a5,10
1c00c13c:	02f34733          	div	a4,t1,a5
1c00c140:	02f367b3          	rem	a5,t1,a5
1c00c144:	03070713          	addi	a4,a4,48 # 80000030 <pulp__FC+0x80000031>
1c00c148:	03078793          	addi	a5,a5,48
1c00c14c:	00e98123          	sb	a4,2(s3)
1c00c150:	00f981a3          	sb	a5,3(s3)
1c00c154:	0991                	addi	s3,s3,4
1c00c156:	00098023          	sb	zero,0(s3)
1c00c15a:	419989b3          	sub	s3,s3,s9
1c00c15e:	48d2                	lw	a7,20(sp)
1c00c160:	4662                	lw	a2,24(sp)
1c00c162:	00c8e8b3          	or	a7,a7,a2
1c00c166:	c646                	sw	a7,12(sp)
1c00c168:	34089d63          	bnez	a7,1c00c4c2 <pos_libc_prf+0xb3c>
1c00c16c:	02414703          	lbu	a4,36(sp)
1c00c170:	02d00793          	li	a5,45
1c00c174:	34f70763          	beq	a4,a5,1c00c4c2 <pos_libc_prf+0xb3c>
1c00c178:	0c800793          	li	a5,200
1c00c17c:	ab37cbe3          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00c180:	9b29c2e3          	blt	s3,s2,1c00bb24 <pos_libc_prf+0x19e>
1c00c184:	b461                	j	1c00bc0c <pos_libc_prf+0x286>
1c00c186:	0585                	addi	a1,a1,1
1c00c188:	00271793          	slli	a5,a4,0x2
1c00c18c:	01e75e13          	srli	t3,a4,0x1e
1c00c190:	00261693          	slli	a3,a2,0x2
1c00c194:	00e788b3          	add	a7,a5,a4
1c00c198:	00de66b3          	or	a3,t3,a3
1c00c19c:	96b2                	add	a3,a3,a2
1c00c19e:	00f8b7b3          	sltu	a5,a7,a5
1c00c1a2:	97b6                	add	a5,a5,a3
1c00c1a4:	0786                	slli	a5,a5,0x1
1c00c1a6:	01f8d693          	srli	a3,a7,0x1f
1c00c1aa:	8fd5                	or	a5,a5,a3
1c00c1ac:	01c7de13          	srli	t3,a5,0x1c
1c00c1b0:	03000693          	li	a3,48
1c00c1b4:	00a05c63          	blez	a0,1c00c1cc <pos_libc_prf+0x846>
1c00c1b8:	00189713          	slli	a4,a7,0x1
1c00c1bc:	100008b7          	lui	a7,0x10000
1c00c1c0:	18fd                	addi	a7,a7,-1
1c00c1c2:	030e0693          	addi	a3,t3,48
1c00c1c6:	157d                	addi	a0,a0,-1
1c00c1c8:	0117f633          	and	a2,a5,a7
1c00c1cc:	fed58fa3          	sb	a3,-1(a1) # efffffff <pulp__FC+0xf0000000>
1c00c1d0:	fab99be3          	bne	s3,a1,1c00c186 <pos_libc_prf+0x800>
1c00c1d4:	014809b3          	add	s3,a6,s4
1c00c1d8:	f60f8fe3          	beqz	t6,1c00c156 <pos_libc_prf+0x7d0>
1c00c1dc:	03000613          	li	a2,48
1c00c1e0:	a011                	j	1c00c1e4 <pos_libc_prf+0x85e>
1c00c1e2:	89ba                	mv	s3,a4
1c00c1e4:	fff9c683          	lbu	a3,-1(s3)
1c00c1e8:	fff98713          	addi	a4,s3,-1
1c00c1ec:	fec68be3          	beq	a3,a2,1c00c1e2 <pos_libc_prf+0x85c>
1c00c1f0:	02e00613          	li	a2,46
1c00c1f4:	f2c694e3          	bne	a3,a2,1c00c11c <pos_libc_prf+0x796>
1c00c1f8:	89ba                	mv	s3,a4
1c00c1fa:	b70d                	j	1c00c11c <pos_libc_prf+0x796>
1c00c1fc:	06300713          	li	a4,99
1c00c200:	16ed8863          	beq	s11,a4,1c00c370 <pos_libc_prf+0x9ea>
1c00c204:	0db74363          	blt	a4,s11,1c00c2ca <pos_libc_prf+0x944>
1c00c208:	05800713          	li	a4,88
1c00c20c:	28ed9763          	bne	s11,a4,1c00c49a <pos_libc_prf+0xb14>
1c00c210:	48b2                	lw	a7,12(sp)
1c00c212:	004c0813          	addi	a6,s8,4
1c00c216:	000c2583          	lw	a1,0(s8)
1c00c21a:	3c088a63          	beqz	a7,1c00c5ee <pos_libc_prf+0xc68>
1c00c21e:	7761                	lui	a4,0xffff8
1c00c220:	83074713          	xori	a4,a4,-2000
1c00c224:	02e11223          	sh	a4,36(sp)
1c00c228:	4889                	li	a7,2
1c00c22a:	02610693          	addi	a3,sp,38
1c00c22e:	8736                	mv	a4,a3
1c00c230:	4e25                	li	t3,9
1c00c232:	00f5f613          	andi	a2,a1,15
1c00c236:	0ff67793          	andi	a5,a2,255
1c00c23a:	03078513          	addi	a0,a5,48
1c00c23e:	8191                	srli	a1,a1,0x4
1c00c240:	05778793          	addi	a5,a5,87
1c00c244:	0705                	addi	a4,a4,1
1c00c246:	06ce6a63          	bltu	t3,a2,1c00c2ba <pos_libc_prf+0x934>
1c00c24a:	fea70fa3          	sb	a0,-1(a4) # ffff7fff <pulp__FC+0xffff8000>
1c00c24e:	f1f5                	bnez	a1,1c00c232 <pos_libc_prf+0x8ac>
1c00c250:	40d709b3          	sub	s3,a4,a3
1c00c254:	0149db63          	ble	s4,s3,1c00c26a <pos_libc_prf+0x8e4>
1c00c258:	03000613          	li	a2,48
1c00c25c:	0705                	addi	a4,a4,1
1c00c25e:	fec70fa3          	sb	a2,-1(a4)
1c00c262:	40d709b3          	sub	s3,a4,a3
1c00c266:	ff49cbe3          	blt	s3,s4,1c00c25c <pos_libc_prf+0x8d6>
1c00c26a:	00070023          	sb	zero,0(a4)
1c00c26e:	177d                	addi	a4,a4,-1
1c00c270:	00e6fe63          	bleu	a4,a3,1c00c28c <pos_libc_prf+0x906>
1c00c274:	0006c603          	lbu	a2,0(a3)
1c00c278:	00074783          	lbu	a5,0(a4)
1c00c27c:	00c70023          	sb	a2,0(a4)
1c00c280:	00f68023          	sb	a5,0(a3)
1c00c284:	177d                	addi	a4,a4,-1
1c00c286:	0685                	addi	a3,a3,1
1c00c288:	fee6e6e3          	bltu	a3,a4,1c00c274 <pos_libc_prf+0x8ee>
1c00c28c:	05800713          	li	a4,88
1c00c290:	36ed8263          	beq	s11,a4,1c00c5f4 <pos_libc_prf+0xc6e>
1c00c294:	46b2                	lw	a3,12(sp)
1c00c296:	99c6                	add	s3,s3,a7
1c00c298:	c299                	beqz	a3,1c00c29e <pos_libc_prf+0x918>
1c00c29a:	4709                	li	a4,2
1c00c29c:	c63a                	sw	a4,12(sp)
1c00c29e:	57fd                	li	a5,-1
1c00c2a0:	3afa0263          	beq	s4,a5,1c00c644 <pos_libc_prf+0xcbe>
1c00c2a4:	0c800793          	li	a5,200
1c00c2a8:	9937c5e3          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00c2ac:	02000793          	li	a5,32
1c00c2b0:	c83e                	sw	a5,16(sp)
1c00c2b2:	8c42                	mv	s8,a6
1c00c2b4:	8729c8e3          	blt	s3,s2,1c00bb24 <pos_libc_prf+0x19e>
1c00c2b8:	ba91                	j	1c00bc0c <pos_libc_prf+0x286>
1c00c2ba:	fef70fa3          	sb	a5,-1(a4)
1c00c2be:	f9b5                	bnez	a1,1c00c232 <pos_libc_prf+0x8ac>
1c00c2c0:	bf41                	j	1c00c250 <pos_libc_prf+0x8ca>
1c00c2c2:	06900713          	li	a4,105
1c00c2c6:	1ced9a63          	bne	s11,a4,1c00c49a <pos_libc_prf+0xb14>
1c00c2ca:	000c2583          	lw	a1,0(s8)
1c00c2ce:	0c11                	addi	s8,s8,4
1c00c2d0:	3805c863          	bltz	a1,1c00c660 <pos_libc_prf+0xcda>
1c00c2d4:	48d2                	lw	a7,20(sp)
1c00c2d6:	872e                	mv	a4,a1
1c00c2d8:	36089d63          	bnez	a7,1c00c652 <pos_libc_prf+0xccc>
1c00c2dc:	4662                	lw	a2,24(sp)
1c00c2de:	87e6                	mv	a5,s9
1c00c2e0:	c619                	beqz	a2,1c00c2ee <pos_libc_prf+0x968>
1c00c2e2:	02000793          	li	a5,32
1c00c2e6:	02f10223          	sb	a5,36(sp)
1c00c2ea:	02510793          	addi	a5,sp,37
1c00c2ee:	89be                	mv	s3,a5
1c00c2f0:	4629                	li	a2,10
1c00c2f2:	02c776b3          	remu	a3,a4,a2
1c00c2f6:	02c75733          	divu	a4,a4,a2
1c00c2fa:	0985                	addi	s3,s3,1
1c00c2fc:	03068693          	addi	a3,a3,48
1c00c300:	fed98fa3          	sb	a3,-1(s3)
1c00c304:	f77d                	bnez	a4,1c00c2f2 <pos_libc_prf+0x96c>
1c00c306:	40f98733          	sub	a4,s3,a5
1c00c30a:	01475b63          	ble	s4,a4,1c00c320 <pos_libc_prf+0x99a>
1c00c30e:	03000693          	li	a3,48
1c00c312:	0985                	addi	s3,s3,1
1c00c314:	fed98fa3          	sb	a3,-1(s3)
1c00c318:	40f98733          	sub	a4,s3,a5
1c00c31c:	ff474be3          	blt	a4,s4,1c00c312 <pos_libc_prf+0x98c>
1c00c320:	00098023          	sb	zero,0(s3)
1c00c324:	fff98713          	addi	a4,s3,-1
1c00c328:	00e7fe63          	bleu	a4,a5,1c00c344 <pos_libc_prf+0x9be>
1c00c32c:	0007c603          	lbu	a2,0(a5)
1c00c330:	00074683          	lbu	a3,0(a4)
1c00c334:	00c70023          	sb	a2,0(a4)
1c00c338:	00d78023          	sb	a3,0(a5)
1c00c33c:	177d                	addi	a4,a4,-1
1c00c33e:	0785                	addi	a5,a5,1
1c00c340:	fee7e6e3          	bltu	a5,a4,1c00c32c <pos_libc_prf+0x9a6>
1c00c344:	46d2                	lw	a3,20(sp)
1c00c346:	4762                	lw	a4,24(sp)
1c00c348:	419989b3          	sub	s3,s3,s9
1c00c34c:	8ed9                	or	a3,a3,a4
1c00c34e:	c636                	sw	a3,12(sp)
1c00c350:	e299                	bnez	a3,1c00c356 <pos_libc_prf+0x9d0>
1c00c352:	81fd                	srli	a1,a1,0x1f
1c00c354:	c62e                	sw	a1,12(sp)
1c00c356:	57fd                	li	a5,-1
1c00c358:	e2fa00e3          	beq	s4,a5,1c00c178 <pos_libc_prf+0x7f2>
1c00c35c:	0c800793          	li	a5,200
1c00c360:	8d37c9e3          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00c364:	02000793          	li	a5,32
1c00c368:	c83e                	sw	a5,16(sp)
1c00c36a:	fb29cd63          	blt	s3,s2,1c00bb24 <pos_libc_prf+0x19e>
1c00c36e:	b879                	j	1c00bc0c <pos_libc_prf+0x286>
1c00c370:	000c2783          	lw	a5,0(s8)
1c00c374:	020102a3          	sb	zero,37(sp)
1c00c378:	02f10223          	sb	a5,36(sp)
1c00c37c:	0c11                	addi	s8,s8,4
1c00c37e:	4985                	li	s3,1
1c00c380:	f9eff06f          	j	1c00bb1e <pos_libc_prf+0x198>
1c00c384:	000c2703          	lw	a4,0(s8)
1c00c388:	87e6                	mv	a5,s9
1c00c38a:	0c11                	addi	s8,s8,4
1c00c38c:	4629                	li	a2,10
1c00c38e:	02c776b3          	remu	a3,a4,a2
1c00c392:	02c75733          	divu	a4,a4,a2
1c00c396:	0785                	addi	a5,a5,1
1c00c398:	03068693          	addi	a3,a3,48
1c00c39c:	fed78fa3          	sb	a3,-1(a5)
1c00c3a0:	f77d                	bnez	a4,1c00c38e <pos_libc_prf+0xa08>
1c00c3a2:	419789b3          	sub	s3,a5,s9
1c00c3a6:	0149db63          	ble	s4,s3,1c00c3bc <pos_libc_prf+0xa36>
1c00c3aa:	03000713          	li	a4,48
1c00c3ae:	0785                	addi	a5,a5,1
1c00c3b0:	fee78fa3          	sb	a4,-1(a5)
1c00c3b4:	419789b3          	sub	s3,a5,s9
1c00c3b8:	ff49cbe3          	blt	s3,s4,1c00c3ae <pos_libc_prf+0xa28>
1c00c3bc:	00078023          	sb	zero,0(a5)
1c00c3c0:	17fd                	addi	a5,a5,-1
1c00c3c2:	00fcff63          	bleu	a5,s9,1c00c3e0 <pos_libc_prf+0xa5a>
1c00c3c6:	8766                	mv	a4,s9
1c00c3c8:	00074603          	lbu	a2,0(a4)
1c00c3cc:	0007c683          	lbu	a3,0(a5)
1c00c3d0:	00c78023          	sb	a2,0(a5)
1c00c3d4:	00d70023          	sb	a3,0(a4)
1c00c3d8:	17fd                	addi	a5,a5,-1
1c00c3da:	0705                	addi	a4,a4,1
1c00c3dc:	fef766e3          	bltu	a4,a5,1c00c3c8 <pos_libc_prf+0xa42>
1c00c3e0:	57fd                	li	a5,-1
1c00c3e2:	0cfa0a63          	beq	s4,a5,1c00c4b6 <pos_libc_prf+0xb30>
1c00c3e6:	0c800793          	li	a5,200
1c00c3ea:	8537c4e3          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00c3ee:	02000813          	li	a6,32
1c00c3f2:	c602                	sw	zero,12(sp)
1c00c3f4:	c842                	sw	a6,16(sp)
1c00c3f6:	ba45                	j	1c00bda6 <pos_libc_prf+0x420>
1c00c3f8:	77e1                	lui	a5,0xffff8
1c00c3fa:	8307c793          	xori	a5,a5,-2000
1c00c3fe:	02610713          	addi	a4,sp,38
1c00c402:	000c2603          	lw	a2,0(s8)
1c00c406:	02f11223          	sh	a5,36(sp)
1c00c40a:	0c11                	addi	s8,s8,4
1c00c40c:	87ba                	mv	a5,a4
1c00c40e:	4825                	li	a6,9
1c00c410:	00f67593          	andi	a1,a2,15
1c00c414:	0ff5f693          	andi	a3,a1,255
1c00c418:	03068513          	addi	a0,a3,48
1c00c41c:	8211                	srli	a2,a2,0x4
1c00c41e:	05768693          	addi	a3,a3,87
1c00c422:	0785                	addi	a5,a5,1
1c00c424:	06b86163          	bltu	a6,a1,1c00c486 <pos_libc_prf+0xb00>
1c00c428:	fea78fa3          	sb	a0,-1(a5) # ffff7fff <pulp__FC+0xffff8000>
1c00c42c:	f275                	bnez	a2,1c00c410 <pos_libc_prf+0xa8a>
1c00c42e:	40e789b3          	sub	s3,a5,a4
1c00c432:	469d                	li	a3,7
1c00c434:	0136cb63          	blt	a3,s3,1c00c44a <pos_libc_prf+0xac4>
1c00c438:	03000613          	li	a2,48
1c00c43c:	0785                	addi	a5,a5,1
1c00c43e:	fec78fa3          	sb	a2,-1(a5)
1c00c442:	40e789b3          	sub	s3,a5,a4
1c00c446:	ff36dbe3          	ble	s3,a3,1c00c43c <pos_libc_prf+0xab6>
1c00c44a:	00078023          	sb	zero,0(a5)
1c00c44e:	17fd                	addi	a5,a5,-1
1c00c450:	00f77e63          	bleu	a5,a4,1c00c46c <pos_libc_prf+0xae6>
1c00c454:	00074603          	lbu	a2,0(a4)
1c00c458:	0007c683          	lbu	a3,0(a5)
1c00c45c:	00c78023          	sb	a2,0(a5)
1c00c460:	00d70023          	sb	a3,0(a4)
1c00c464:	17fd                	addi	a5,a5,-1
1c00c466:	0705                	addi	a4,a4,1
1c00c468:	fef766e3          	bltu	a4,a5,1c00c454 <pos_libc_prf+0xace>
1c00c46c:	57fd                	li	a5,-1
1c00c46e:	0989                	addi	s3,s3,2
1c00c470:	04fa0363          	beq	s4,a5,1c00c4b6 <pos_libc_prf+0xb30>
1c00c474:	0c800793          	li	a5,200
1c00c478:	fb37cd63          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00c47c:	02000893          	li	a7,32
1c00c480:	c602                	sw	zero,12(sp)
1c00c482:	c846                	sw	a7,16(sp)
1c00c484:	b20d                	j	1c00bda6 <pos_libc_prf+0x420>
1c00c486:	fed78fa3          	sb	a3,-1(a5)
1c00c48a:	f259                	bnez	a2,1c00c410 <pos_libc_prf+0xa8a>
1c00c48c:	b74d                	j	1c00c42e <pos_libc_prf+0xaa8>
1c00c48e:	000c2783          	lw	a5,0(s8)
1c00c492:	0c11                	addi	s8,s8,4
1c00c494:	c380                	sw	s0,0(a5)
1c00c496:	d36ff06f          	j	1c00b9cc <pos_libc_prf+0x46>
1c00c49a:	0c800713          	li	a4,200
1c00c49e:	d3b75763          	ble	s11,a4,1c00b9cc <pos_libc_prf+0x46>
1c00c4a2:	547d                	li	s0,-1
1c00c4a4:	d4cff06f          	j	1c00b9f0 <pos_libc_prf+0x6a>
1c00c4a8:	ffc50fa3          	sb	t3,-1(a0)
1c00c4ac:	c2a991e3          	bne	s3,a0,1c00c0ce <pos_libc_prf+0x748>
1c00c4b0:	c60f86e3          	beqz	t6,1c00c11c <pos_libc_prf+0x796>
1c00c4b4:	b325                	j	1c00c1dc <pos_libc_prf+0x856>
1c00c4b6:	0c800793          	li	a5,200
1c00c4ba:	f737cc63          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00c4be:	c602                	sw	zero,12(sp)
1c00c4c0:	b0dd                	j	1c00bda6 <pos_libc_prf+0x420>
1c00c4c2:	0c800793          	li	a5,200
1c00c4c6:	f737c663          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00c4ca:	4705                	li	a4,1
1c00c4cc:	c63a                	sw	a4,12(sp)
1c00c4ce:	b8e1                	j	1c00bda6 <pos_libc_prf+0x420>
1c00c4d0:	41390a33          	sub	s4,s2,s3
1c00c4d4:	00198613          	addi	a2,s3,1
1c00c4d8:	85e6                	mv	a1,s9
1c00c4da:	014c8533          	add	a0,s9,s4
1c00c4de:	a4aff0ef          	jal	ra,1c00b728 <memmove>
1c00c4e2:	46c2                	lw	a3,16(sp)
1c00c4e4:	02000793          	li	a5,32
1c00c4e8:	30f68163          	beq	a3,a5,1c00c7ea <pos_libc_prf+0xe64>
1c00c4ec:	4732                	lw	a4,12(sp)
1c00c4ee:	89ca                	mv	s3,s2
1c00c4f0:	9a3a                	add	s4,s4,a4
1c00c4f2:	f1475d63          	ble	s4,a4,1c00bc0c <pos_libc_prf+0x286>
1c00c4f6:	4832                	lw	a6,12(sp)
1c00c4f8:	4715                	li	a4,5
1c00c4fa:	010c87b3          	add	a5,s9,a6
1c00c4fe:	40f007b3          	neg	a5,a5
1c00c502:	8b8d                	andi	a5,a5,3
1c00c504:	00378693          	addi	a3,a5,3
1c00c508:	410a05b3          	sub	a1,s4,a6
1c00c50c:	00e6f363          	bleu	a4,a3,1c00c512 <pos_libc_prf+0xb8c>
1c00c510:	4695                	li	a3,5
1c00c512:	48b2                	lw	a7,12(sp)
1c00c514:	fffa0713          	addi	a4,s4,-1
1c00c518:	41170733          	sub	a4,a4,a7
1c00c51c:	06d76b63          	bltu	a4,a3,1c00c592 <pos_libc_prf+0xc0c>
1c00c520:	86c6                	mv	a3,a7
1c00c522:	cb9d                	beqz	a5,1c00c558 <pos_libc_prf+0xbd2>
1c00c524:	46c2                	lw	a3,16(sp)
1c00c526:	1988                	addi	a0,sp,240
1c00c528:	01150733          	add	a4,a0,a7
1c00c52c:	f2d70a23          	sb	a3,-204(a4)
1c00c530:	4705                	li	a4,1
1c00c532:	00188693          	addi	a3,a7,1 # 10000001 <__CTOR_LIST__-0xc000003>
1c00c536:	02e78163          	beq	a5,a4,1c00c558 <pos_libc_prf+0xbd2>
1c00c53a:	4742                	lw	a4,16(sp)
1c00c53c:	96aa                	add	a3,a3,a0
1c00c53e:	f2e68a23          	sb	a4,-204(a3)
1c00c542:	470d                	li	a4,3
1c00c544:	00288693          	addi	a3,a7,2
1c00c548:	00e79863          	bne	a5,a4,1c00c558 <pos_libc_prf+0xbd2>
1c00c54c:	4842                	lw	a6,16(sp)
1c00c54e:	96aa                	add	a3,a3,a0
1c00c550:	f3068a23          	sb	a6,-204(a3)
1c00c554:	00388693          	addi	a3,a7,3
1c00c558:	48c2                	lw	a7,16(sp)
1c00c55a:	4832                	lw	a6,12(sp)
1c00c55c:	00889713          	slli	a4,a7,0x8
1c00c560:	01089513          	slli	a0,a7,0x10
1c00c564:	00e8e733          	or	a4,a7,a4
1c00c568:	8d9d                	sub	a1,a1,a5
1c00c56a:	01889613          	slli	a2,a7,0x18
1c00c56e:	8f49                	or	a4,a4,a0
1c00c570:	97c2                	add	a5,a5,a6
1c00c572:	8f51                	or	a4,a4,a2
1c00c574:	0025d513          	srli	a0,a1,0x2
1c00c578:	97e6                	add	a5,a5,s9
1c00c57a:	4601                	li	a2,0
1c00c57c:	c398                	sw	a4,0(a5)
1c00c57e:	0605                	addi	a2,a2,1
1c00c580:	0791                	addi	a5,a5,4
1c00c582:	fea66de3          	bltu	a2,a0,1c00c57c <pos_libc_prf+0xbf6>
1c00c586:	ffc5f793          	andi	a5,a1,-4
1c00c58a:	96be                	add	a3,a3,a5
1c00c58c:	c636                	sw	a3,12(sp)
1c00c58e:	e6b78e63          	beq	a5,a1,1c00bc0a <pos_libc_prf+0x284>
1c00c592:	46b2                	lw	a3,12(sp)
1c00c594:	0f010893          	addi	a7,sp,240
1c00c598:	4742                	lw	a4,16(sp)
1c00c59a:	00d887b3          	add	a5,a7,a3
1c00c59e:	f2e78a23          	sb	a4,-204(a5)
1c00c5a2:	00168793          	addi	a5,a3,1
1c00c5a6:	e747d263          	ble	s4,a5,1c00bc0a <pos_libc_prf+0x284>
1c00c5aa:	97c6                	add	a5,a5,a7
1c00c5ac:	f2e78a23          	sb	a4,-204(a5)
1c00c5b0:	00268793          	addi	a5,a3,2
1c00c5b4:	e547db63          	ble	s4,a5,1c00bc0a <pos_libc_prf+0x284>
1c00c5b8:	97c6                	add	a5,a5,a7
1c00c5ba:	f2e78a23          	sb	a4,-204(a5)
1c00c5be:	00368793          	addi	a5,a3,3
1c00c5c2:	e547d463          	ble	s4,a5,1c00bc0a <pos_libc_prf+0x284>
1c00c5c6:	97c6                	add	a5,a5,a7
1c00c5c8:	f2e78a23          	sb	a4,-204(a5)
1c00c5cc:	00468793          	addi	a5,a3,4
1c00c5d0:	e347dd63          	ble	s4,a5,1c00bc0a <pos_libc_prf+0x284>
1c00c5d4:	97c6                	add	a5,a5,a7
1c00c5d6:	f2e78a23          	sb	a4,-204(a5)
1c00c5da:	00568a93          	addi	s5,a3,5
1c00c5de:	e34ad663          	ble	s4,s5,1c00bc0a <pos_libc_prf+0x284>
1c00c5e2:	9ac6                	add	s5,s5,a7
1c00c5e4:	f2ea8a23          	sb	a4,-204(s5)
1c00c5e8:	89ca                	mv	s3,s2
1c00c5ea:	e22ff06f          	j	1c00bc0c <pos_libc_prf+0x286>
1c00c5ee:	4881                	li	a7,0
1c00c5f0:	1054                	addi	a3,sp,36
1c00c5f2:	b935                	j	1c00c22e <pos_libc_prf+0x8a8>
1c00c5f4:	02414783          	lbu	a5,36(sp)
1c00c5f8:	1058                	addi	a4,sp,36
1c00c5fa:	46e5                	li	a3,25
1c00c5fc:	c8078ce3          	beqz	a5,1c00c294 <pos_libc_prf+0x90e>
1c00c600:	fe078613          	addi	a2,a5,-32
1c00c604:	f9f78793          	addi	a5,a5,-97
1c00c608:	0ff7f793          	andi	a5,a5,255
1c00c60c:	00f6e963          	bltu	a3,a5,1c00c61e <pos_libc_prf+0xc98>
1c00c610:	00c70023          	sb	a2,0(a4)
1c00c614:	0705                	addi	a4,a4,1
1c00c616:	00074783          	lbu	a5,0(a4)
1c00c61a:	f3fd                	bnez	a5,1c00c600 <pos_libc_prf+0xc7a>
1c00c61c:	b9a5                	j	1c00c294 <pos_libc_prf+0x90e>
1c00c61e:	0705                	addi	a4,a4,1
1c00c620:	00074783          	lbu	a5,0(a4)
1c00c624:	fff1                	bnez	a5,1c00c600 <pos_libc_prf+0xc7a>
1c00c626:	b1bd                	j	1c00c294 <pos_libc_prf+0x90e>
1c00c628:	47d2                	lw	a5,20(sp)
1c00c62a:	20078263          	beqz	a5,1c00c82e <pos_libc_prf+0xea8>
1c00c62e:	02b00713          	li	a4,43
1c00c632:	02e10223          	sb	a4,36(sp)
1c00c636:	02510e93          	addi	t4,sp,37
1c00c63a:	4301                	li	t1,0
1c00c63c:	4501                	li	a0,0
1c00c63e:	4681                	li	a3,0
1c00c640:	4581                	li	a1,0
1c00c642:	b8d5                	j	1c00bf36 <pos_libc_prf+0x5b0>
1c00c644:	0c800793          	li	a5,200
1c00c648:	df37c563          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00c64c:	8c42                	mv	s8,a6
1c00c64e:	f58ff06f          	j	1c00bda6 <pos_libc_prf+0x420>
1c00c652:	02b00793          	li	a5,43
1c00c656:	02f10223          	sb	a5,36(sp)
1c00c65a:	02510793          	addi	a5,sp,37
1c00c65e:	b941                	j	1c00c2ee <pos_libc_prf+0x968>
1c00c660:	02d00793          	li	a5,45
1c00c664:	02f10223          	sb	a5,36(sp)
1c00c668:	800007b7          	lui	a5,0x80000
1c00c66c:	22f58363          	beq	a1,a5,1c00c892 <pos_libc_prf+0xf0c>
1c00c670:	40b00733          	neg	a4,a1
1c00c674:	02510793          	addi	a5,sp,37
1c00c678:	b99d                	j	1c00c2ee <pos_libc_prf+0x968>
1c00c67a:	47b2                	lw	a5,12(sp)
1c00c67c:	4f81                	li	t6,0
1c00c67e:	e399                	bnez	a5,1c00c684 <pos_libc_prf+0xcfe>
1c00c680:	01403fb3          	snez	t6,s4
1c00c684:	56f5                	li	a3,-3
1c00c686:	001a0e13          	addi	t3,s4,1
1c00c68a:	00d34463          	blt	t1,a3,1c00c692 <pos_libc_prf+0xd0c>
1c00c68e:	166e5d63          	ble	t1,t3,1c00c808 <pos_libc_prf+0xe82>
1c00c692:	46c1                	li	a3,16
1c00c694:	01c6d363          	ble	t3,a3,1c00c69a <pos_libc_prf+0xd14>
1c00c698:	4e41                	li	t3,16
1c00c69a:	06700693          	li	a3,103
1c00c69e:	1e7d                	addi	t3,t3,-1
1c00c6a0:	1add8963          	beq	s11,a3,1c00c852 <pos_libc_prf+0xecc>
1c00c6a4:	04500d93          	li	s11,69
1c00c6a8:	b0c5                	j	1c00bf88 <pos_libc_prf+0x602>
1c00c6aa:	020102a3          	sb	zero,37(sp)
1c00c6ae:	57fd                	li	a5,-1
1c00c6b0:	89ba                	mv	s3,a4
1c00c6b2:	8c2a                	mv	s8,a0
1c00c6b4:	c6fa0563          	beq	s4,a5,1c00bb1e <pos_libc_prf+0x198>
1c00c6b8:	02000813          	li	a6,32
1c00c6bc:	c842                	sw	a6,16(sp)
1c00c6be:	c60ff06f          	j	1c00bb1e <pos_libc_prf+0x198>
1c00c6c2:	89b6                	mv	s3,a3
1c00c6c4:	bdeff06f          	j	1c00baa2 <pos_libc_prf+0x11c>
1c00c6c8:	8766                	mv	a4,s9
1c00c6ca:	1c084c63          	bltz	a6,1c00c8a2 <pos_libc_prf+0xf1c>
1c00c6ce:	8e55                	or	a2,a2,a3
1c00c6d0:	fbfd8793          	addi	a5,s11,-65
1c00c6d4:	00370993          	addi	s3,a4,3
1c00c6d8:	46e5                	li	a3,25
1c00c6da:	10061a63          	bnez	a2,1c00c7ee <pos_libc_prf+0xe68>
1c00c6de:	16f6ee63          	bltu	a3,a5,1c00c85a <pos_libc_prf+0xed4>
1c00c6e2:	6795                	lui	a5,0x5
1c00c6e4:	e4978793          	addi	a5,a5,-439 # 4e49 <__CTOR_LIST__-0x1bffb1bb>
1c00c6e8:	00f71023          	sh	a5,0(a4)
1c00c6ec:	04600793          	li	a5,70
1c00c6f0:	00f70123          	sb	a5,2(a4)
1c00c6f4:	000701a3          	sb	zero,3(a4)
1c00c6f8:	419989b3          	sub	s3,s3,s9
1c00c6fc:	b48d                	j	1c00c15e <pos_libc_prf+0x7d8>
1c00c6fe:	85e6                	mv	a1,s9
1c00c700:	8766                	mv	a4,s9
1c00c702:	e38ff06f          	j	1c00bd3a <pos_libc_prf+0x3b4>
1c00c706:	a00a09e3          	beqz	s4,1c00c118 <pos_libc_prf+0x792>
1c00c70a:	02e00693          	li	a3,46
1c00c70e:	002e8513          	addi	a0,t4,2
1c00c712:	00de80a3          	sb	a3,1(t4)
1c00c716:	b27d                	j	1c00c0c4 <pos_libc_prf+0x73e>
1c00c718:	14605b63          	blez	t1,1c00c86e <pos_libc_prf+0xee8>
1c00c71c:	006e89b3          	add	s3,t4,t1
1c00c720:	4541                	li	a0,16
1c00c722:	03000893          	li	a7,48
1c00c726:	00271793          	slli	a5,a4,0x2
1c00c72a:	01e75313          	srli	t1,a4,0x1e
1c00c72e:	00261693          	slli	a3,a2,0x2
1c00c732:	00e78833          	add	a6,a5,a4
1c00c736:	00d366b3          	or	a3,t1,a3
1c00c73a:	96b2                	add	a3,a3,a2
1c00c73c:	00f837b3          	sltu	a5,a6,a5
1c00c740:	97b6                	add	a5,a5,a3
1c00c742:	0786                	slli	a5,a5,0x1
1c00c744:	01f85693          	srli	a3,a6,0x1f
1c00c748:	8fd5                	or	a5,a5,a3
1c00c74a:	01c7d693          	srli	a3,a5,0x1c
1c00c74e:	03068693          	addi	a3,a3,48
1c00c752:	02a05063          	blez	a0,1c00c772 <pos_libc_prf+0xdec>
1c00c756:	00181713          	slli	a4,a6,0x1
1c00c75a:	10000837          	lui	a6,0x10000
1c00c75e:	187d                	addi	a6,a6,-1
1c00c760:	fed58fa3          	sb	a3,-1(a1)
1c00c764:	157d                	addi	a0,a0,-1
1c00c766:	0107f633          	and	a2,a5,a6
1c00c76a:	00b98863          	beq	s3,a1,1c00c77a <pos_libc_prf+0xdf4>
1c00c76e:	0585                	addi	a1,a1,1
1c00c770:	bf5d                	j	1c00c726 <pos_libc_prf+0xda0>
1c00c772:	ff158fa3          	sb	a7,-1(a1)
1c00c776:	feb99ce3          	bne	s3,a1,1c00c76e <pos_libc_prf+0xde8>
1c00c77a:	4301                	li	t1,0
1c00c77c:	48b2                	lw	a7,12(sp)
1c00c77e:	00089463          	bnez	a7,1c00c786 <pos_libc_prf+0xe00>
1c00c782:	a40a0be3          	beqz	s4,1c00c1d8 <pos_libc_prf+0x852>
1c00c786:	00198813          	addi	a6,s3,1
1c00c78a:	001a0693          	addi	a3,s4,1
1c00c78e:	02e00593          	li	a1,46
1c00c792:	00b98023          	sb	a1,0(s3)
1c00c796:	99b6                	add	s3,s3,a3
1c00c798:	85c2                	mv	a1,a6
1c00c79a:	03000693          	li	a3,48
1c00c79e:	a2b98be3          	beq	s3,a1,1c00c1d4 <pos_libc_prf+0x84e>
1c00c7a2:	0585                	addi	a1,a1,1
1c00c7a4:	9e0302e3          	beqz	t1,1c00c188 <pos_libc_prf+0x802>
1c00c7a8:	fed58fa3          	sb	a3,-1(a1)
1c00c7ac:	0305                	addi	t1,t1,1
1c00c7ae:	bfc5                	j	1c00c79e <pos_libc_prf+0xe18>
1c00c7b0:	4a19                	li	s4,6
1c00c7b2:	fadd9b63          	bne	s11,a3,1c00bf68 <pos_libc_prf+0x5e2>
1c00c7b6:	46b2                	lw	a3,12(sp)
1c00c7b8:	57f5                	li	a5,-3
1c00c7ba:	0016cf93          	xori	t6,a3,1
1c00c7be:	08f35663          	ble	a5,t1,1c00c84a <pos_libc_prf+0xec4>
1c00c7c2:	06500d93          	li	s11,101
1c00c7c6:	4e19                	li	t3,6
1c00c7c8:	fc0ff06f          	j	1c00bf88 <pos_libc_prf+0x602>
1c00c7cc:	0c800793          	li	a5,200
1c00c7d0:	c737c163          	blt	a5,s3,1c00bc32 <pos_libc_prf+0x2ac>
1c00c7d4:	8c2a                	mv	s8,a0
1c00c7d6:	c602                	sw	zero,12(sp)
1c00c7d8:	dceff06f          	j	1c00bda6 <pos_libc_prf+0x420>
1c00c7dc:	02d00793          	li	a5,45
1c00c7e0:	40600333          	neg	t1,t1
1c00c7e4:	00f980a3          	sb	a5,1(s3)
1c00c7e8:	ba89                	j	1c00c13a <pos_libc_prf+0x7b4>
1c00c7ea:	c602                	sw	zero,12(sp)
1c00c7ec:	b329                	j	1c00c4f6 <pos_libc_prf+0xb70>
1c00c7ee:	0cf6ed63          	bltu	a3,a5,1c00c8c8 <pos_libc_prf+0xf42>
1c00c7f2:	6791                	lui	a5,0x4
1c00c7f4:	14e78793          	addi	a5,a5,334 # 414e <__CTOR_LIST__-0x1bffbeb6>
1c00c7f8:	00f71023          	sh	a5,0(a4)
1c00c7fc:	04e00793          	li	a5,78
1c00c800:	00f70123          	sb	a5,2(a4)
1c00c804:	bdc5                	j	1c00c6f4 <pos_libc_prf+0xd6e>
1c00c806:	4f81                	li	t6,0
1c00c808:	014307b3          	add	a5,t1,s4
1c00c80c:	0807c863          	bltz	a5,1c00c89c <pos_libc_prf+0xf16>
1c00c810:	46c1                	li	a3,16
1c00c812:	8e3e                	mv	t3,a5
1c00c814:	00f6d363          	ble	a5,a3,1c00c81a <pos_libc_prf+0xe94>
1c00c818:	4e41                	li	t3,16
1c00c81a:	1e7d                	addi	t3,t3,-1
1c00c81c:	06600d93          	li	s11,102
1c00c820:	f6079463          	bnez	a5,1c00bf88 <pos_libc_prf+0x602>
1c00c824:	4681                	li	a3,0
1c00c826:	08000637          	lui	a2,0x8000
1c00c82a:	fc8ff06f          	j	1c00bff2 <pos_libc_prf+0x66c>
1c00c82e:	47e2                	lw	a5,24(sp)
1c00c830:	c7d5                	beqz	a5,1c00c8dc <pos_libc_prf+0xf56>
1c00c832:	02000713          	li	a4,32
1c00c836:	02e10223          	sb	a4,36(sp)
1c00c83a:	02510e93          	addi	t4,sp,37
1c00c83e:	4301                	li	t1,0
1c00c840:	4501                	li	a0,0
1c00c842:	4681                	li	a3,0
1c00c844:	4581                	li	a1,0
1c00c846:	ef0ff06f          	j	1c00bf36 <pos_libc_prf+0x5b0>
1c00c84a:	479d                	li	a5,7
1c00c84c:	fa67dee3          	ble	t1,a5,1c00c808 <pos_libc_prf+0xe82>
1c00c850:	4e19                	li	t3,6
1c00c852:	06500d93          	li	s11,101
1c00c856:	f32ff06f          	j	1c00bf88 <pos_libc_prf+0x602>
1c00c85a:	679d                	lui	a5,0x7
1c00c85c:	e6978793          	addi	a5,a5,-407 # 6e69 <__CTOR_LIST__-0x1bff919b>
1c00c860:	00f71023          	sh	a5,0(a4)
1c00c864:	06600793          	li	a5,102
1c00c868:	00f70123          	sb	a5,2(a4)
1c00c86c:	b561                	j	1c00c6f4 <pos_libc_prf+0xd6e>
1c00c86e:	03000693          	li	a3,48
1c00c872:	00de8023          	sb	a3,0(t4)
1c00c876:	4541                	li	a0,16
1c00c878:	b711                	j	1c00c77c <pos_libc_prf+0xdf6>
1c00c87a:	48e2                	lw	a7,24(sp)
1c00c87c:	8ee6                	mv	t4,s9
1c00c87e:	dc088e63          	beqz	a7,1c00be5a <pos_libc_prf+0x4d4>
1c00c882:	02000713          	li	a4,32
1c00c886:	02e10223          	sb	a4,36(sp)
1c00c88a:	02510e93          	addi	t4,sp,37
1c00c88e:	dccff06f          	j	1c00be5a <pos_libc_prf+0x4d4>
1c00c892:	80000737          	lui	a4,0x80000
1c00c896:	02510793          	addi	a5,sp,37
1c00c89a:	bc91                	j	1c00c2ee <pos_libc_prf+0x968>
1c00c89c:	06600d93          	li	s11,102
1c00c8a0:	b751                	j	1c00c824 <pos_libc_prf+0xe9e>
1c00c8a2:	02d00713          	li	a4,45
1c00c8a6:	02e10223          	sb	a4,36(sp)
1c00c8aa:	02510713          	addi	a4,sp,37
1c00c8ae:	b505                	j	1c00c6ce <pos_libc_prf+0xd48>
1c00c8b0:	a40a5d63          	bgez	s4,1c00bb0a <pos_libc_prf+0x184>
1c00c8b4:	a62ff06f          	j	1c00bb16 <pos_libc_prf+0x190>
1c00c8b8:	02d00713          	li	a4,45
1c00c8bc:	02e10223          	sb	a4,36(sp)
1c00c8c0:	02510e93          	addi	t4,sp,37
1c00c8c4:	d96ff06f          	j	1c00be5a <pos_libc_prf+0x4d4>
1c00c8c8:	6799                	lui	a5,0x6
1c00c8ca:	16e78793          	addi	a5,a5,366 # 616e <__CTOR_LIST__-0x1bff9e96>
1c00c8ce:	00f71023          	sh	a5,0(a4) # 80000000 <pulp__FC+0x80000001>
1c00c8d2:	06e00793          	li	a5,110
1c00c8d6:	00f70123          	sb	a5,2(a4)
1c00c8da:	bd29                	j	1c00c6f4 <pos_libc_prf+0xd6e>
1c00c8dc:	8ee6                	mv	t4,s9
1c00c8de:	b785                	j	1c00c83e <pos_libc_prf+0xeb8>
1c00c8e0:	89aa                	mv	s3,a0
1c00c8e2:	820f8de3          	beqz	t6,1c00c11c <pos_libc_prf+0x796>
1c00c8e6:	b8dd                	j	1c00c1dc <pos_libc_prf+0x856>

1c00c8e8 <pos_init_start>:
1c00c8e8:	1141                	addi	sp,sp,-16
1c00c8ea:	c422                	sw	s0,8(sp)
1c00c8ec:	1c000437          	lui	s0,0x1c000
1c00c8f0:	c606                	sw	ra,12(sp)
1c00c8f2:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00c8f6:	9ddfc0ef          	jal	ra,1c0092d2 <pos_soc_init>
1c00c8fa:	2275                	jal	1c00caa6 <pos_irq_init>
1c00c8fc:	2ae1                	jal	1c00cad4 <pos_soc_event_init>
1c00c8fe:	2a31                	jal	1c00ca1a <pos_allocs_init>
1c00c900:	405c                	lw	a5,4(s0)
1c00c902:	c791                	beqz	a5,1c00c90e <pos_init_start+0x26>
1c00c904:	0411                	addi	s0,s0,4
1c00c906:	0411                	addi	s0,s0,4
1c00c908:	9782                	jalr	a5
1c00c90a:	401c                	lw	a5,0(s0)
1c00c90c:	ffed                	bnez	a5,1c00c906 <pos_init_start+0x1e>
1c00c90e:	842ff0ef          	jal	ra,1c00b950 <pos_io_start>
1c00c912:	300467f3          	csrrsi	a5,mstatus,8
1c00c916:	40b2                	lw	ra,12(sp)
1c00c918:	4422                	lw	s0,8(sp)
1c00c91a:	0141                	addi	sp,sp,16
1c00c91c:	8082                	ret

1c00c91e <pos_init_stop>:
1c00c91e:	1141                	addi	sp,sp,-16
1c00c920:	c422                	sw	s0,8(sp)
1c00c922:	1c000437          	lui	s0,0x1c000
1c00c926:	c606                	sw	ra,12(sp)
1c00c928:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00c92c:	828ff0ef          	jal	ra,1c00b954 <pos_io_stop>
1c00c930:	405c                	lw	a5,4(s0)
1c00c932:	c791                	beqz	a5,1c00c93e <pos_init_stop+0x20>
1c00c934:	0411                	addi	s0,s0,4
1c00c936:	0411                	addi	s0,s0,4
1c00c938:	9782                	jalr	a5
1c00c93a:	401c                	lw	a5,0(s0)
1c00c93c:	ffed                	bnez	a5,1c00c936 <pos_init_stop+0x18>
1c00c93e:	40b2                	lw	ra,12(sp)
1c00c940:	4422                	lw	s0,8(sp)
1c00c942:	0141                	addi	sp,sp,16
1c00c944:	8082                	ret

1c00c946 <pos_alloc_init>:
1c00c946:	00758793          	addi	a5,a1,7
1c00c94a:	9be1                	andi	a5,a5,-8
1c00c94c:	40b785b3          	sub	a1,a5,a1
1c00c950:	c11c                	sw	a5,0(a0)
1c00c952:	8e0d                	sub	a2,a2,a1
1c00c954:	00c05663          	blez	a2,1c00c960 <pos_alloc_init+0x1a>
1c00c958:	9a61                	andi	a2,a2,-8
1c00c95a:	c390                	sw	a2,0(a5)
1c00c95c:	0007a223          	sw	zero,4(a5)
1c00c960:	8082                	ret

1c00c962 <pos_alloc>:
1c00c962:	4110                	lw	a2,0(a0)
1c00c964:	059d                	addi	a1,a1,7
1c00c966:	99e1                	andi	a1,a1,-8
1c00c968:	ca31                	beqz	a2,1c00c9bc <pos_alloc+0x5a>
1c00c96a:	4218                	lw	a4,0(a2)
1c00c96c:	425c                	lw	a5,4(a2)
1c00c96e:	02b75963          	ble	a1,a4,1c00c9a0 <pos_alloc+0x3e>
1c00c972:	cb81                	beqz	a5,1c00c982 <pos_alloc+0x20>
1c00c974:	4398                	lw	a4,0(a5)
1c00c976:	43d4                	lw	a3,4(a5)
1c00c978:	00b75763          	ble	a1,a4,1c00c986 <pos_alloc+0x24>
1c00c97c:	863e                	mv	a2,a5
1c00c97e:	87b6                	mv	a5,a3
1c00c980:	fbf5                	bnez	a5,1c00c974 <pos_alloc+0x12>
1c00c982:	853e                	mv	a0,a5
1c00c984:	8082                	ret
1c00c986:	00b70a63          	beq	a4,a1,1c00c99a <pos_alloc+0x38>
1c00c98a:	00b78533          	add	a0,a5,a1
1c00c98e:	8f0d                	sub	a4,a4,a1
1c00c990:	c118                	sw	a4,0(a0)
1c00c992:	c154                	sw	a3,4(a0)
1c00c994:	c248                	sw	a0,4(a2)
1c00c996:	853e                	mv	a0,a5
1c00c998:	8082                	ret
1c00c99a:	c254                	sw	a3,4(a2)
1c00c99c:	853e                	mv	a0,a5
1c00c99e:	8082                	ret
1c00c9a0:	00e58b63          	beq	a1,a4,1c00c9b6 <pos_alloc+0x54>
1c00c9a4:	00b606b3          	add	a3,a2,a1
1c00c9a8:	8f0d                	sub	a4,a4,a1
1c00c9aa:	c2dc                	sw	a5,4(a3)
1c00c9ac:	c298                	sw	a4,0(a3)
1c00c9ae:	87b2                	mv	a5,a2
1c00c9b0:	c114                	sw	a3,0(a0)
1c00c9b2:	853e                	mv	a0,a5
1c00c9b4:	8082                	ret
1c00c9b6:	c11c                	sw	a5,0(a0)
1c00c9b8:	87b2                	mv	a5,a2
1c00c9ba:	b7e1                	j	1c00c982 <pos_alloc+0x20>
1c00c9bc:	4781                	li	a5,0
1c00c9be:	b7d1                	j	1c00c982 <pos_alloc+0x20>

1c00c9c0 <pos_free>:
1c00c9c0:	4118                	lw	a4,0(a0)
1c00c9c2:	061d                	addi	a2,a2,7
1c00c9c4:	9a61                	andi	a2,a2,-8
1c00c9c6:	c729                	beqz	a4,1c00ca10 <pos_free+0x50>
1c00c9c8:	00b76663          	bltu	a4,a1,1c00c9d4 <pos_free+0x14>
1c00c9cc:	a0a1                	j	1c00ca14 <pos_free+0x54>
1c00c9ce:	00b7f563          	bleu	a1,a5,1c00c9d8 <pos_free+0x18>
1c00c9d2:	873e                	mv	a4,a5
1c00c9d4:	435c                	lw	a5,4(a4)
1c00c9d6:	ffe5                	bnez	a5,1c00c9ce <pos_free+0xe>
1c00c9d8:	00c586b3          	add	a3,a1,a2
1c00c9dc:	02d78463          	beq	a5,a3,1c00ca04 <pos_free+0x44>
1c00c9e0:	c190                	sw	a2,0(a1)
1c00c9e2:	c1dc                	sw	a5,4(a1)
1c00c9e4:	cf11                	beqz	a4,1c00ca00 <pos_free+0x40>
1c00c9e6:	431c                	lw	a5,0(a4)
1c00c9e8:	00f706b3          	add	a3,a4,a5
1c00c9ec:	00d58463          	beq	a1,a3,1c00c9f4 <pos_free+0x34>
1c00c9f0:	c34c                	sw	a1,4(a4)
1c00c9f2:	8082                	ret
1c00c9f4:	4194                	lw	a3,0(a1)
1c00c9f6:	41d0                	lw	a2,4(a1)
1c00c9f8:	97b6                	add	a5,a5,a3
1c00c9fa:	c31c                	sw	a5,0(a4)
1c00c9fc:	c350                	sw	a2,4(a4)
1c00c9fe:	8082                	ret
1c00ca00:	c10c                	sw	a1,0(a0)
1c00ca02:	8082                	ret
1c00ca04:	4394                	lw	a3,0(a5)
1c00ca06:	43dc                	lw	a5,4(a5)
1c00ca08:	9636                	add	a2,a2,a3
1c00ca0a:	c190                	sw	a2,0(a1)
1c00ca0c:	c1dc                	sw	a5,4(a1)
1c00ca0e:	bfd9                	j	1c00c9e4 <pos_free+0x24>
1c00ca10:	4781                	li	a5,0
1c00ca12:	b7d9                	j	1c00c9d8 <pos_free+0x18>
1c00ca14:	87ba                	mv	a5,a4
1c00ca16:	4701                	li	a4,0
1c00ca18:	b7c1                	j	1c00c9d8 <pos_free+0x18>

1c00ca1a <pos_allocs_init>:
1c00ca1a:	1141                	addi	sp,sp,-16
1c00ca1c:	1c0045b7          	lui	a1,0x1c004
1c00ca20:	c606                	sw	ra,12(sp)
1c00ca22:	2d858793          	addi	a5,a1,728 # 1c0042d8 <__l2_priv0_end>
1c00ca26:	1c008637          	lui	a2,0x1c008
1c00ca2a:	04c7cc63          	blt	a5,a2,1c00ca82 <pos_allocs_init+0x68>
1c00ca2e:	4581                	li	a1,0
1c00ca30:	4601                	li	a2,0
1c00ca32:	1c004537          	lui	a0,0x1c004
1c00ca36:	2cc50513          	addi	a0,a0,716 # 1c0042cc <pos_alloc_l2>
1c00ca3a:	3731                	jal	1c00c946 <pos_alloc_init>
1c00ca3c:	1c00d5b7          	lui	a1,0x1c00d
1c00ca40:	aec58793          	addi	a5,a1,-1300 # 1c00caec <__l2_priv1_end>
1c00ca44:	1c010637          	lui	a2,0x1c010
1c00ca48:	02c7c963          	blt	a5,a2,1c00ca7a <pos_allocs_init+0x60>
1c00ca4c:	4581                	li	a1,0
1c00ca4e:	4601                	li	a2,0
1c00ca50:	1c004537          	lui	a0,0x1c004
1c00ca54:	2d050513          	addi	a0,a0,720 # 1c0042d0 <pos_alloc_l2+0x4>
1c00ca58:	35fd                	jal	1c00c946 <pos_alloc_init>
1c00ca5a:	1c0105b7          	lui	a1,0x1c010
1c00ca5e:	00058793          	mv	a5,a1
1c00ca62:	40b2                	lw	ra,12(sp)
1c00ca64:	1c080637          	lui	a2,0x1c080
1c00ca68:	1c004537          	lui	a0,0x1c004
1c00ca6c:	8e1d                	sub	a2,a2,a5
1c00ca6e:	00058593          	mv	a1,a1
1c00ca72:	2d450513          	addi	a0,a0,724 # 1c0042d4 <pos_alloc_l2+0x8>
1c00ca76:	0141                	addi	sp,sp,16
1c00ca78:	b5f9                	j	1c00c946 <pos_alloc_init>
1c00ca7a:	8e1d                	sub	a2,a2,a5
1c00ca7c:	aec58593          	addi	a1,a1,-1300 # 1c00faec <__l2_priv1_end+0x3000>
1c00ca80:	bfc1                	j	1c00ca50 <pos_allocs_init+0x36>
1c00ca82:	8e1d                	sub	a2,a2,a5
1c00ca84:	2d858593          	addi	a1,a1,728
1c00ca88:	b76d                	j	1c00ca32 <pos_allocs_init+0x18>

1c00ca8a <pi_l2_malloc>:
1c00ca8a:	85aa                	mv	a1,a0
1c00ca8c:	1c004537          	lui	a0,0x1c004
1c00ca90:	2cc50513          	addi	a0,a0,716 # 1c0042cc <pos_alloc_l2>
1c00ca94:	b5f9                	j	1c00c962 <pos_alloc>

1c00ca96 <pi_l2_free>:
1c00ca96:	862e                	mv	a2,a1
1c00ca98:	85aa                	mv	a1,a0
1c00ca9a:	1c004537          	lui	a0,0x1c004
1c00ca9e:	2cc50513          	addi	a0,a0,716 # 1c0042cc <pos_alloc_l2>
1c00caa2:	bf39                	j	1c00c9c0 <pos_free>

1c00caa4 <__rt_handle_illegal_instr>:
1c00caa4:	8082                	ret

1c00caa6 <pos_irq_init>:
1c00caa6:	1a10a737          	lui	a4,0x1a10a
1c00caaa:	f14027f3          	csrr	a5,mhartid
1c00caae:	56fd                	li	a3,-1
1c00cab0:	8795                	srai	a5,a5,0x5
1c00cab2:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00cab6:	03f7f793          	andi	a5,a5,63
1c00caba:	477d                	li	a4,31
1c00cabc:	00e78363          	beq	a5,a4,1c00cac2 <pos_irq_init+0x1c>
1c00cac0:	8082                	ret
1c00cac2:	1c0087b7          	lui	a5,0x1c008
1c00cac6:	00078793          	mv	a5,a5
1c00caca:	0017e793          	ori	a5,a5,1
1c00cace:	30579073          	csrw	mtvec,a5
1c00cad2:	8082                	ret

1c00cad4 <pos_soc_event_init>:
1c00cad4:	1a1067b7          	lui	a5,0x1a106
1c00cad8:	577d                	li	a4,-1
1c00cada:	c3d8                	sw	a4,4(a5)
1c00cadc:	c798                	sw	a4,8(a5)
1c00cade:	c7d8                	sw	a4,12(a5)
1c00cae0:	cb98                	sw	a4,16(a5)
1c00cae2:	cbd8                	sw	a4,20(a5)
1c00cae4:	cf98                	sw	a4,24(a5)
1c00cae6:	cfd8                	sw	a4,28(a5)
1c00cae8:	d398                	sw	a4,32(a5)
1c00caea:	8082                	ret
