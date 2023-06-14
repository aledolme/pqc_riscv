riscv32-unknown-elf-objdump  -d /home/alessandra.dolmeta/pqc_riscv/test/kyber768/enc/build/enc/enc

/home/alessandra.dolmeta/pqc_riscv/test/kyber768/enc/build/enc/enc:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	55d0406f          	j	1c00cd5c <__rt_handle_illegal_instr>
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
1c008084:	4d90406f          	j	1c00cd5c <__rt_handle_illegal_instr>

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
1c0080c4:	27028293          	addi	t0,t0,624 # 1c006330 <in>
1c0080c8:	ffffe317          	auipc	t1,0xffffe
1c0080cc:	2e030313          	addi	t1,t1,736 # 1c0063a8 <__l2_priv0_end>
1c0080d0:	0002a023          	sw	zero,0(t0)
1c0080d4:	0291                	addi	t0,t0,4
1c0080d6:	fe62ede3          	bltu	t0,t1,1c0080d0 <_stext+0x10>
1c0080da:	ffffe117          	auipc	sp,0xffffe
1c0080de:	25610113          	addi	sp,sp,598 # 1c006330 <in>
1c0080e2:	2af040ef          	jal	ra,1c00cb90 <pos_init_start>
1c0080e6:	00000513          	li	a0,0
1c0080ea:	00000593          	li	a1,0
1c0080ee:	00000397          	auipc	t2,0x0
1c0080f2:	09c38393          	addi	t2,t2,156 # 1c00818a <main>
1c0080f6:	000380e7          	jalr	t2
1c0080fa:	842a                	mv	s0,a0
1c0080fc:	2cb040ef          	jal	ra,1c00cbc6 <pos_init_stop>
1c008100:	8522                	mv	a0,s0
1c008102:	30d030ef          	jal	ra,1c00bc0e <exit>
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
1c008172:	2b9030ef          	jal	ra,1c00bc2a <printf>
1c008176:	fe9419e3          	bne	s0,s1,1c008168 <printbytes+0x14>
1c00817a:	4422                	lw	s0,8(sp)
1c00817c:	40b2                	lw	ra,12(sp)
1c00817e:	4492                	lw	s1,4(sp)
1c008180:	4902                	lw	s2,0(sp)
1c008182:	4529                	li	a0,10
1c008184:	0141                	addi	sp,sp,16
1c008186:	25f0306f          	j	1c00bbe4 <putchar>

1c00818a <main>:
1c00818a:	81010113          	addi	sp,sp,-2032
1c00818e:	1e85d7b7          	lui	a5,0x1e85d
1c008192:	7e112623          	sw	ra,2028(sp)
1c008196:	7e812423          	sw	s0,2024(sp)
1c00819a:	7e912223          	sw	s1,2020(sp)
1c00819e:	43878793          	addi	a5,a5,1080 # 1e85d438 <__l2_shared_end+0x284d438>
1c0081a2:	712d                	addi	sp,sp,-288
1c0081a4:	46f12023          	sw	a5,1120(sp)
1c0081a8:	a30d07b7          	lui	a5,0xa30d0
1c0081ac:	15c78793          	addi	a5,a5,348 # a30d015c <__l2_shared_end+0x870c015c>
1c0081b0:	46f12223          	sw	a5,1124(sp)
1c0081b4:	bc7077b7          	lui	a5,0xbc707
1c0081b8:	49a78793          	addi	a5,a5,1178 # bc70749a <__l2_shared_end+0xa06f749a>
1c0081bc:	46f12423          	sw	a5,1128(sp)
1c0081c0:	6f9187b7          	lui	a5,0x6f918
1c0081c4:	07f1                	addi	a5,a5,28
1c0081c6:	46f12623          	sw	a5,1132(sp)
1c0081ca:	58bdc7b7          	lui	a5,0x58bdc
1c0081ce:	77878793          	addi	a5,a5,1912 # 58bdc778 <__l2_shared_end+0x3cbcc778>
1c0081d2:	46f12823          	sw	a5,1136(sp)
1c0081d6:	b1d3e7b7          	lui	a5,0xb1d3e
1c0081da:	c9178793          	addi	a5,a5,-879 # b1d3dc91 <__l2_shared_end+0x95d2dc91>
1c0081de:	46f12a23          	sw	a5,1140(sp)
1c0081e2:	f0b687b7          	lui	a5,0xf0b68
1c0081e6:	4ea78793          	addi	a5,a5,1258 # f0b684ea <__l2_shared_end+0xd4b584ea>
1c0081ea:	46f12c23          	sw	a5,1144(sp)
1c0081ee:	b846b7b7          	lui	a5,0xb846b
1c0081f2:	35178793          	addi	a5,a5,849 # b846b351 <__l2_shared_end+0x9c45b351>
1c0081f6:	46f12e23          	sw	a5,1148(sp)
1c0081fa:	7cb9c7b7          	lui	a5,0x7cb9c
1c0081fe:	10378793          	addi	a5,a5,259 # 7cb9c103 <__l2_shared_end+0x60b8c103>
1c008202:	48f12023          	sw	a5,1152(sp)
1c008206:	204067b7          	lui	a5,0x20406
1c00820a:	09478793          	addi	a5,a5,148 # 20406094 <__l2_shared_end+0x43f6094>
1c00820e:	48f12223          	sw	a5,1156(sp)
1c008212:	279b27b7          	lui	a5,0x279b2
1c008216:	7b778793          	addi	a5,a5,1975 # 279b27b7 <__l2_shared_end+0xb9a27b7>
1c00821a:	48f12423          	sw	a5,1160(sp)
1c00821e:	493077b7          	lui	a5,0x49307
1c008222:	c8378793          	addi	a5,a5,-893 # 49306c83 <__l2_shared_end+0x2d2f6c83>
1c008226:	48f12623          	sw	a5,1164(sp)
1c00822a:	379a17b7          	lui	a5,0x379a1
1c00822e:	bea78793          	addi	a5,a5,-1046 # 379a0bea <__l2_shared_end+0x1b990bea>
1c008232:	48f12823          	sw	a5,1168(sp)
1c008236:	750b57b7          	lui	a5,0x750b5
1c00823a:	15878793          	addi	a5,a5,344 # 750b5158 <__l2_shared_end+0x590a5158>
1c00823e:	48f12a23          	sw	a5,1172(sp)
1c008242:	373267b7          	lui	a5,0x37326
1c008246:	95978793          	addi	a5,a5,-1703 # 37325959 <__l2_shared_end+0x1b315959>
1c00824a:	48f12c23          	sw	a5,1176(sp)
1c00824e:	8725e7b7          	lui	a5,0x8725e
1c008252:	7ad78793          	addi	a5,a5,1965 # 8725e7ad <__l2_shared_end+0x6b24e7ad>
1c008256:	48f12e23          	sw	a5,1180(sp)
1c00825a:	b70627b7          	lui	a5,0xb7062
1c00825e:	24678793          	addi	a5,a5,582 # b7062246 <__l2_shared_end+0x9b052246>
1c008262:	4af12023          	sw	a5,1184(sp)
1c008266:	8465f7b7          	lui	a5,0x8465f
1c00826a:	30978793          	addi	a5,a5,777 # 8465f309 <__l2_shared_end+0x6864f309>
1c00826e:	4af12223          	sw	a5,1188(sp)
1c008272:	935597b7          	lui	a5,0x93559
1c008276:	68c78793          	addi	a5,a5,1676 # 9355968c <__l2_shared_end+0x7754968c>
1c00827a:	4af12423          	sw	a5,1192(sp)
1c00827e:	6cfea7b7          	lui	a5,0x6cfea
1c008282:	52678793          	addi	a5,a5,1318 # 6cfea526 <__l2_shared_end+0x50fda526>
1c008286:	4af12623          	sw	a5,1196(sp)
1c00828a:	31f557b7          	lui	a5,0x31f55
1c00828e:	c6f78793          	addi	a5,a5,-913 # 31f54c6f <__l2_shared_end+0x15f44c6f>
1c008292:	4af12823          	sw	a5,1200(sp)
1c008296:	471827b7          	lui	a5,0x47182
1c00829a:	afd78793          	addi	a5,a5,-1283 # 47181afd <__l2_shared_end+0x2b171afd>
1c00829e:	4af12a23          	sw	a5,1204(sp)
1c0082a2:	6bf667b7          	lui	a5,0x6bf66
1c0082a6:	77278793          	addi	a5,a5,1906 # 6bf66772 <__l2_shared_end+0x4ff56772>
1c0082aa:	4af12c23          	sw	a5,1208(sp)
1c0082ae:	01f257b7          	lui	a5,0x1f25
1c0082b2:	aa178793          	addi	a5,a5,-1375 # 1f24aa1 <__CTOR_LIST__-0x1a0db563>
1c0082b6:	4af12e23          	sw	a5,1212(sp)
1c0082ba:	111fc7b7          	lui	a5,0x111fc
1c0082be:	46378793          	addi	a5,a5,1123 # 111fc463 <__CTOR_LIST__-0xae03ba1>
1c0082c2:	4cf12023          	sw	a5,1216(sp)
1c0082c6:	9519a7b7          	lui	a5,0x9519a
1c0082ca:	03878793          	addi	a5,a5,56 # 9519a038 <__l2_shared_end+0x7918a038>
1c0082ce:	4cf12223          	sw	a5,1220(sp)
1c0082d2:	1d2787b7          	lui	a5,0x1d278
1c0082d6:	f1478793          	addi	a5,a5,-236 # 1d277f14 <__l2_shared_end+0x1267f14>
1c0082da:	4cf12423          	sw	a5,1224(sp)
1c0082de:	53bec7b7          	lui	a5,0x53bec
1c0082e2:	2df78793          	addi	a5,a5,735 # 53bec2df <__l2_shared_end+0x37bdc2df>
1c0082e6:	4cf12623          	sw	a5,1228(sp)
1c0082ea:	e681b7b7          	lui	a5,0xe681b
1c0082ee:	26178793          	addi	a5,a5,609 # e681b261 <__l2_shared_end+0xca80b261>
1c0082f2:	4cf12823          	sw	a5,1232(sp)
1c0082f6:	0521a7b7          	lui	a5,0x521a
1c0082fa:	d0278793          	addi	a5,a5,-766 # 5219d02 <__CTOR_LIST__-0x16de6302>
1c0082fe:	4cf12a23          	sw	a5,1236(sp)
1c008302:	9b85b7b7          	lui	a5,0x9b85b
1c008306:	28478793          	addi	a5,a5,644 # 9b85b284 <__l2_shared_end+0x7f84b284>
1c00830a:	4cf12c23          	sw	a5,1240(sp)
1c00830e:	726687b7          	lui	a5,0x72668
1c008312:	37378793          	addi	a5,a5,883 # 72668373 <__l2_shared_end+0x56658373>
1c008316:	4cf12e23          	sw	a5,1244(sp)
1c00831a:	bb67f7b7          	lui	a5,0xbb67f
1c00831e:	78478793          	addi	a5,a5,1924 # bb67f784 <__l2_shared_end+0x9f66f784>
1c008322:	4ef12023          	sw	a5,1248(sp)
1c008326:	aa2b87b7          	lui	a5,0xaa2b8
1c00832a:	83278793          	addi	a5,a5,-1998 # aa2b7832 <__l2_shared_end+0x8e2a7832>
1c00832e:	4ef12223          	sw	a5,1252(sp)
1c008332:	da3317b7          	lui	a5,0xda331
1c008336:	9d178793          	addi	a5,a5,-1583 # da3309d1 <__l2_shared_end+0xbe3209d1>
1c00833a:	4ef12423          	sw	a5,1256(sp)
1c00833e:	a0a347b7          	lui	a5,0xa0a34
1c008342:	80178793          	addi	a5,a5,-2047 # a0a33801 <__l2_shared_end+0x84a23801>
1c008346:	4ef12623          	sw	a5,1260(sp)
1c00834a:	951417b7          	lui	a5,0x95141
1c00834e:	a6678793          	addi	a5,a5,-1434 # 95140a66 <__l2_shared_end+0x79130a66>
1c008352:	4ef12823          	sw	a5,1264(sp)
1c008356:	9c3fc7b7          	lui	a5,0x9c3fc
1c00835a:	03178793          	addi	a5,a5,49 # 9c3fc031 <__l2_shared_end+0x803ec031>
1c00835e:	4ef12a23          	sw	a5,1268(sp)
1c008362:	33cc07b7          	lui	a5,0x33cc0
1c008366:	c8f78793          	addi	a5,a5,-881 # 33cbfc8f <__l2_shared_end+0x17cafc8f>
1c00836a:	4ef12c23          	sw	a5,1272(sp)
1c00836e:	a7a5c7b7          	lui	a5,0xa7a5c
1c008372:	3e378793          	addi	a5,a5,995 # a7a5c3e3 <__l2_shared_end+0x8ba4c3e3>
1c008376:	4ef12e23          	sw	a5,1276(sp)
1c00837a:	fa2157b7          	lui	a5,0xfa215
1c00837e:	e9878793          	addi	a5,a5,-360 # fa214e98 <__l2_shared_end+0xde204e98>
1c008382:	50f12023          	sw	a5,1280(sp)
1c008386:	2aa777b7          	lui	a5,0x2aa77
1c00838a:	ab278793          	addi	a5,a5,-1358 # 2aa76ab2 <__l2_shared_end+0xea66ab2>
1c00838e:	50f12223          	sw	a5,1284(sp)
1c008392:	2f9477b7          	lui	a5,0x2f947
1c008396:	b8a78793          	addi	a5,a5,-1142 # 2f946b8a <__l2_shared_end+0x13936b8a>
1c00839a:	50f12423          	sw	a5,1288(sp)
1c00839e:	555267b7          	lui	a5,0x55526
1c0083a2:	e2678793          	addi	a5,a5,-474 # 55525e26 <__l2_shared_end+0x39515e26>
1c0083a6:	50f12623          	sw	a5,1292(sp)
1c0083aa:	0e80a7b7          	lui	a5,0xe80a
1c0083ae:	c1a78793          	addi	a5,a5,-998 # e809c1a <__CTOR_LIST__-0xd7f63ea>
1c0083b2:	50f12823          	sw	a5,1296(sp)
1c0083b6:	5f8047b7          	lui	a5,0x5f804
1c0083ba:	45a78793          	addi	a5,a5,1114 # 5f80445a <__l2_shared_end+0x437f445a>
1c0083be:	50f12a23          	sw	a5,1300(sp)
1c0083c2:	a04107b7          	lui	a5,0xa0410
1c0083c6:	10c78793          	addi	a5,a5,268 # a041010c <__l2_shared_end+0x8440010c>
1c0083ca:	50f12c23          	sw	a5,1304(sp)
1c0083ce:	332157b7          	lui	a5,0x33215
1c0083d2:	45578793          	addi	a5,a5,1109 # 33215455 <__l2_shared_end+0x17205455>
1c0083d6:	50f12e23          	sw	a5,1308(sp)
1c0083da:	df05f7b7          	lui	a5,0xdf05f
1c0083de:	18778793          	addi	a5,a5,391 # df05f187 <__l2_shared_end+0xc304f187>
1c0083e2:	52f12023          	sw	a5,1312(sp)
1c0083e6:	968447b7          	lui	a5,0x96844
1c0083ea:	55678793          	addi	a5,a5,1366 # 96844556 <__l2_shared_end+0x7a834556>
1c0083ee:	52f12223          	sw	a5,1316(sp)
1c0083f2:	904697b7          	lui	a5,0x90469
1c0083f6:	fbd78793          	addi	a5,a5,-67 # 90468fbd <__l2_shared_end+0x74458fbd>
1c0083fa:	52f12423          	sw	a5,1320(sp)
1c0083fe:	a26d97b7          	lui	a5,0xa26d9
1c008402:	85178793          	addi	a5,a5,-1967 # a26d8851 <__l2_shared_end+0x866c8851>
1c008406:	52f12623          	sw	a5,1324(sp)
1c00840a:	e79fd7b7          	lui	a5,0xe79fd
1c00840e:	b2378793          	addi	a5,a5,-1245 # e79fcb23 <__l2_shared_end+0xcb9ecb23>
1c008412:	52f12823          	sw	a5,1328(sp)
1c008416:	0b3987b7          	lui	a5,0xb398
1c00841a:	b8e78793          	addi	a5,a5,-1138 # b397b8e <__CTOR_LIST__-0x10c68476>
1c00841e:	52f12a23          	sw	a5,1332(sp)
1c008422:	930a57b7          	lui	a5,0x930a5
1c008426:	bf978793          	addi	a5,a5,-1031 # 930a4bf9 <__l2_shared_end+0x77094bf9>
1c00842a:	52f12c23          	sw	a5,1336(sp)
1c00842e:	95af97b7          	lui	a5,0x95af9
1c008432:	17678793          	addi	a5,a5,374 # 95af9176 <__l2_shared_end+0x79ae9176>
1c008436:	52f12e23          	sw	a5,1340(sp)
1c00843a:	762b17b7          	lui	a5,0x762b1
1c00843e:	85078793          	addi	a5,a5,-1968 # 762b0850 <__l2_shared_end+0x5a2a0850>
1c008442:	54f12023          	sw	a5,1344(sp)
1c008446:	4dcb47b7          	lui	a5,0x4dcb4
1c00844a:	5d078793          	addi	a5,a5,1488 # 4dcb45d0 <__l2_shared_end+0x31ca45d0>
1c00844e:	54f12223          	sw	a5,1348(sp)
1c008452:	673cc7b7          	lui	a5,0x673cc
1c008456:	22978793          	addi	a5,a5,553 # 673cc229 <__l2_shared_end+0x4b3bc229>
1c00845a:	54f12423          	sw	a5,1352(sp)
1c00845e:	d00827b7          	lui	a5,0xd0082
1c008462:	69478793          	addi	a5,a5,1684 # d0082694 <__l2_shared_end+0xb4072694>
1c008466:	54f12623          	sw	a5,1356(sp)
1c00846a:	0fc8a7b7          	lui	a5,0xfc8a
1c00846e:	17878793          	addi	a5,a5,376 # fc8a178 <__CTOR_LIST__-0xc375e8c>
1c008472:	54f12823          	sw	a5,1360(sp)
1c008476:	947a77b7          	lui	a5,0x947a7
1c00847a:	62478793          	addi	a5,a5,1572 # 947a7624 <__l2_shared_end+0x78797624>
1c00847e:	54f12a23          	sw	a5,1364(sp)
1c008482:	9b9b3737          	lui	a4,0x9b9b3
1c008486:	6789                	lui	a5,0x2
1c008488:	95d78793          	addi	a5,a5,-1699 # 195d <__CTOR_LIST__-0x1bffe6a7>
1c00848c:	cd870713          	addi	a4,a4,-808 # 9b9b2cd8 <__l2_shared_end+0x7f9a2cd8>
1c008490:	54f11c23          	sh	a5,1368(sp)
1c008494:	54e12e23          	sw	a4,1372(sp)
1c008498:	46737737          	lui	a4,0x46737
1c00849c:	0765                	addi	a4,a4,25
1c00849e:	56e12023          	sw	a4,1376(sp)
1c0084a2:	cf69c737          	lui	a4,0xcf69c
1c0084a6:	e4a70713          	addi	a4,a4,-438 # cf69be4a <__l2_shared_end+0xb368be4a>
1c0084aa:	56e12223          	sw	a4,1380(sp)
1c0084ae:	17265737          	lui	a4,0x17265
1c0084b2:	67c70713          	addi	a4,a4,1660 # 1726567c <__CTOR_LIST__-0x4d9a988>
1c0084b6:	56e12423          	sw	a4,1384(sp)
1c0084ba:	84f31737          	lui	a4,0x84f31
1c0084be:	87370713          	addi	a4,a4,-1933 # 84f30873 <__l2_shared_end+0x68f20873>
1c0084c2:	56e12623          	sw	a4,1388(sp)
1c0084c6:	63523737          	lui	a4,0x63523
1c0084ca:	d6770713          	addi	a4,a4,-665 # 63522d67 <__l2_shared_end+0x47512d67>
1c0084ce:	56e12823          	sw	a4,1392(sp)
1c0084d2:	6d82c737          	lui	a4,0x6d82c
1c0084d6:	4b070713          	addi	a4,a4,1200 # 6d82c4b0 <__l2_shared_end+0x5181c4b0>
1c0084da:	56e12a23          	sw	a4,1396(sp)
1c0084de:	1a0e4737          	lui	a4,0x1a0e4
1c0084e2:	7b470713          	addi	a4,a4,1972 # 1a0e47b4 <__CTOR_LIST__-0x1f1b850>
1c0084e6:	56e12c23          	sw	a4,1400(sp)
1c0084ea:	1e75e737          	lui	a4,0x1e75e
1c0084ee:	47070713          	addi	a4,a4,1136 # 1e75e470 <__l2_shared_end+0x274e470>
1c0084f2:	56e12e23          	sw	a4,1404(sp)
1c0084f6:	e8ab2737          	lui	a4,0xe8ab2
1c0084fa:	83970713          	addi	a4,a4,-1991 # e8ab1839 <__l2_shared_end+0xccaa1839>
1c0084fe:	58e12023          	sw	a4,1408(sp)
1c008502:	c03bc737          	lui	a4,0xc03bc
1c008506:	cfc70713          	addi	a4,a4,-772 # c03bbcfc <__l2_shared_end+0xa43abcfc>
1c00850a:	58e12223          	sw	a4,1412(sp)
1c00850e:	9ee82737          	lui	a4,0x9ee82
1c008512:	a5370713          	addi	a4,a4,-1453 # 9ee81a53 <__l2_shared_end+0x82e71a53>
1c008516:	58e12423          	sw	a4,1416(sp)
1c00851a:	4b211737          	lui	a4,0x4b211
1c00851e:	25570713          	addi	a4,a4,597 # 4b211255 <__l2_shared_end+0x2f201255>
1c008522:	58e12623          	sw	a4,1420(sp)
1c008526:	164ad737          	lui	a4,0x164ad
1c00852a:	95c70713          	addi	a4,a4,-1700 # 164ac95c <__CTOR_LIST__-0x5b536a8>
1c00852e:	58e12823          	sw	a4,1424(sp)
1c008532:	b3bc1737          	lui	a4,0xb3bc1
1c008536:	4a070713          	addi	a4,a4,1184 # b3bc14a0 <__l2_shared_end+0x97bb14a0>
1c00853a:	58e12a23          	sw	a4,1428(sp)
1c00853e:	fb797737          	lui	a4,0xfb797
1c008542:	c8270713          	addi	a4,a4,-894 # fb796c82 <__l2_shared_end+0xdf786c82>
1c008546:	58e12c23          	sw	a4,1432(sp)
1c00854a:	82d0b737          	lui	a4,0x82d0b
1c00854e:	df470713          	addi	a4,a4,-524 # 82d0adf4 <__l2_shared_end+0x66cfadf4>
1c008552:	58e12e23          	sw	a4,1436(sp)
1c008556:	abfbf737          	lui	a4,0xabfbf
1c00855a:	e5e70713          	addi	a4,a4,-418 # abfbee5e <__l2_shared_end+0x8ffaee5e>
1c00855e:	5ae12023          	sw	a4,1440(sp)
1c008562:	ff7cd737          	lui	a4,0xff7cd
1c008566:	b8870713          	addi	a4,a4,-1144 # ff7ccb88 <__l2_shared_end+0xe37bcb88>
1c00856a:	5ae12223          	sw	a4,1444(sp)
1c00856e:	498dc737          	lui	a4,0x498dc
1c008572:	b3770713          	addi	a4,a4,-1225 # 498dbb37 <__l2_shared_end+0x2d8cbb37>
1c008576:	5ae12423          	sw	a4,1448(sp)
1c00857a:	02e99737          	lui	a4,0x2e99
1c00857e:	d1f70713          	addi	a4,a4,-737 # 2e98d1f <__CTOR_LIST__-0x191672e5>
1c008582:	5ae12623          	sw	a4,1452(sp)
1c008586:	961e9737          	lui	a4,0x961e9
1c00858a:	a5770713          	addi	a4,a4,-1449 # 961e8a57 <__l2_shared_end+0x7a1d8a57>
1c00858e:	5ae12823          	sw	a4,1456(sp)
1c008592:	5b565737          	lui	a4,0x5b565
1c008596:	51670713          	addi	a4,a4,1302 # 5b565516 <__l2_shared_end+0x3f555516>
1c00859a:	5ae12a23          	sw	a4,1460(sp)
1c00859e:	2a782737          	lui	a4,0x2a782
1c0085a2:	87770713          	addi	a4,a4,-1929 # 2a781877 <__l2_shared_end+0xe771877>
1c0085a6:	5ae12c23          	sw	a4,1464(sp)
1c0085aa:	dc4f5737          	lui	a4,0xdc4f5
1c0085ae:	02370713          	addi	a4,a4,35 # dc4f5023 <__l2_shared_end+0xc04e5023>
1c0085b2:	5ae12e23          	sw	a4,1468(sp)
1c0085b6:	f183c737          	lui	a4,0xf183c
1c0085ba:	71370713          	addi	a4,a4,1811 # f183c713 <__l2_shared_end+0xd582c713>
1c0085be:	5ce12023          	sw	a4,1472(sp)
1c0085c2:	9277e737          	lui	a4,0x9277e
1c0085c6:	13070713          	addi	a4,a4,304 # 9277e130 <__l2_shared_end+0x7676e130>
1c0085ca:	5ce12223          	sw	a4,1476(sp)
1c0085ce:	1f5d3737          	lui	a4,0x1f5d3
1c0085d2:	05e70713          	addi	a4,a4,94 # 1f5d305e <__l2_shared_end+0x35c305e>
1c0085d6:	5ce12423          	sw	a4,1480(sp)
1c0085da:	8ccc6737          	lui	a4,0x8ccc6
1c0085de:	3bc70713          	addi	a4,a4,956 # 8ccc63bc <__l2_shared_end+0x70cb63bc>
1c0085e2:	5ce12623          	sw	a4,1484(sp)
1c0085e6:	7fc6c737          	lui	a4,0x7fc6c
1c0085ea:	57c1                	li	a5,-16
1c0085ec:	21570713          	addi	a4,a4,533 # 7fc6c215 <__l2_shared_end+0x63c5c215>
1c0085f0:	54f10d23          	sb	a5,1370(sp)
1c0085f4:	5ce12823          	sw	a4,1488(sp)
1c0085f8:	07700793          	li	a5,119
1c0085fc:	ca0c5737          	lui	a4,0xca0c5
1c008600:	54f10da3          	sb	a5,1371(sp)
1c008604:	08570713          	addi	a4,a4,133 # ca0c5085 <__l2_shared_end+0xae0b5085>
1c008608:	5ce12a23          	sw	a4,1492(sp)
1c00860c:	f4e96737          	lui	a4,0xf4e96
1c008610:	d7870713          	addi	a4,a4,-648 # f4e95d78 <__l2_shared_end+0xd8e85d78>
1c008614:	5ce12c23          	sw	a4,1496(sp)
1c008618:	58055737          	lui	a4,0x58055
1c00861c:	98070713          	addi	a4,a4,-1664 # 58054980 <__l2_shared_end+0x3c044980>
1c008620:	5ce12e23          	sw	a4,1500(sp)
1c008624:	f0aa7737          	lui	a4,0xf0aa7
1c008628:	1ef70713          	addi	a4,a4,495 # f0aa71ef <__l2_shared_end+0xd4a971ef>
1c00862c:	5ee12023          	sw	a4,1504(sp)
1c008630:	39516737          	lui	a4,0x39516
1c008634:	bfb70713          	addi	a4,a4,-1029 # 39515bfb <__l2_shared_end+0x1d505bfb>
1c008638:	5ee12223          	sw	a4,1508(sp)
1c00863c:	69124737          	lui	a4,0x69124
1c008640:	0751                	addi	a4,a4,20
1c008642:	5ee12423          	sw	a4,1512(sp)
1c008646:	c5c41737          	lui	a4,0xc5c41
1c00864a:	9b370713          	addi	a4,a4,-1613 # c5c409b3 <__l2_shared_end+0xa9c309b3>
1c00864e:	5ee12623          	sw	a4,1516(sp)
1c008652:	a7d26737          	lui	a4,0xa7d26
1c008656:	49c70713          	addi	a4,a4,1180 # a7d2649c <__l2_shared_end+0x8bd1649c>
1c00865a:	5ee12823          	sw	a4,1520(sp)
1c00865e:	5f85e737          	lui	a4,0x5f85e
1c008662:	85770713          	addi	a4,a4,-1961 # 5f85d857 <__l2_shared_end+0x4384d857>
1c008666:	5ee12a23          	sw	a4,1524(sp)
1c00866a:	15564737          	lui	a4,0x15564
1c00866e:	65870713          	addi	a4,a4,1624 # 15564658 <__CTOR_LIST__-0x6a9b9ac>
1c008672:	5ee12c23          	sw	a4,1528(sp)
1c008676:	a61e6737          	lui	a4,0xa61e6
1c00867a:	f9270713          	addi	a4,a4,-110 # a61e5f92 <__l2_shared_end+0x8a1d5f92>
1c00867e:	5ee12e23          	sw	a4,1532(sp)
1c008682:	43b13737          	lui	a4,0x43b13
1c008686:	c8170713          	addi	a4,a4,-895 # 43b12c81 <__l2_shared_end+0x27b02c81>
1c00868a:	60e12023          	sw	a4,1536(sp)
1c00868e:	e183f737          	lui	a4,0xe183f
1c008692:	3ff70713          	addi	a4,a4,1023 # e183f3ff <__l2_shared_end+0xc582f3ff>
1c008696:	60e12223          	sw	a4,1540(sp)
1c00869a:	51289737          	lui	a4,0x51289
1c00869e:	e0470713          	addi	a4,a4,-508 # 51288e04 <__l2_shared_end+0x35278e04>
1c0086a2:	60e12423          	sw	a4,1544(sp)
1c0086a6:	2993c737          	lui	a4,0x2993c
1c0086aa:	f1870713          	addi	a4,a4,-232 # 2993bf18 <__l2_shared_end+0xd92bf18>
1c0086ae:	60e12623          	sw	a4,1548(sp)
1c0086b2:	bd6fc737          	lui	a4,0xbd6fc
1c0086b6:	84470713          	addi	a4,a4,-1980 # bd6fb844 <__l2_shared_end+0xa16eb844>
1c0086ba:	60e12823          	sw	a4,1552(sp)
1c0086be:	e6b9b737          	lui	a4,0xe6b9b
1c0086c2:	1f470713          	addi	a4,a4,500 # e6b9b1f4 <__l2_shared_end+0xcab8b1f4>
1c0086c6:	60e12a23          	sw	a4,1556(sp)
1c0086ca:	4a668737          	lui	a4,0x4a668
1c0086ce:	55670713          	addi	a4,a4,1366 # 4a668556 <__l2_shared_end+0x2e658556>
1c0086d2:	60e12c23          	sw	a4,1560(sp)
1c0086d6:	465c7737          	lui	a4,0x465c7
1c0086da:	70770713          	addi	a4,a4,1799 # 465c7707 <__l2_shared_end+0x2a5b7707>
1c0086de:	60e12e23          	sw	a4,1564(sp)
1c0086e2:	daaa3737          	lui	a4,0xdaaa3
1c0086e6:	a9570713          	addi	a4,a4,-1387 # daaa2a95 <__l2_shared_end+0xbea92a95>
1c0086ea:	62e12023          	sw	a4,1568(sp)
1c0086ee:	4bf57737          	lui	a4,0x4bf57
1c0086f2:	81170713          	addi	a4,a4,-2031 # 4bf56811 <__l2_shared_end+0x2ff46811>
1c0086f6:	62e12223          	sw	a4,1572(sp)
1c0086fa:	31a2c737          	lui	a4,0x31a2c
1c0086fe:	74770713          	addi	a4,a4,1863 # 31a2c747 <__l2_shared_end+0x15a1c747>
1c008702:	62e12423          	sw	a4,1576(sp)
1c008706:	645c3737          	lui	a4,0x645c3
1c00870a:	5e770713          	addi	a4,a4,1511 # 645c35e7 <__l2_shared_end+0x485b35e7>
1c00870e:	62e12623          	sw	a4,1580(sp)
1c008712:	b5677737          	lui	a4,0xb5677
1c008716:	46370713          	addi	a4,a4,1123 # b5677463 <__l2_shared_end+0x99667463>
1c00871a:	62e12823          	sw	a4,1584(sp)
1c00871e:	ab9cc737          	lui	a4,0xab9cc
1c008722:	0a370713          	addi	a4,a4,163 # ab9cc0a3 <__l2_shared_end+0x8f9bc0a3>
1c008726:	62e12a23          	sw	a4,1588(sp)
1c00872a:	f535c737          	lui	a4,0xf535c
1c00872e:	b6770713          	addi	a4,a4,-1177 # f535bb67 <__l2_shared_end+0xd934bb67>
1c008732:	62e12c23          	sw	a4,1592(sp)
1c008736:	72c24737          	lui	a4,0x72c24
1c00873a:	08670713          	addi	a4,a4,134 # 72c24086 <__l2_shared_end+0x56c14086>
1c00873e:	62e12e23          	sw	a4,1596(sp)
1c008742:	63bb8737          	lui	a4,0x63bb8
1c008746:	36270713          	addi	a4,a4,866 # 63bb8362 <__l2_shared_end+0x47ba8362>
1c00874a:	64e12023          	sw	a4,1600(sp)
1c00874e:	f6151737          	lui	a4,0xf6151
1c008752:	a5370713          	addi	a4,a4,-1453 # f6150a53 <__l2_shared_end+0xda140a53>
1c008756:	64e12223          	sw	a4,1604(sp)
1c00875a:	a848d737          	lui	a4,0xa848d
1c00875e:	a6e70713          	addi	a4,a4,-1426 # a848ca6e <__l2_shared_end+0x8c47ca6e>
1c008762:	64e12423          	sw	a4,1608(sp)
1c008766:	a80cc737          	lui	a4,0xa80cc
1c00876a:	678d                	lui	a5,0x3
1c00876c:	04070713          	addi	a4,a4,64 # a80cc040 <__l2_shared_end+0x8c0bc040>
1c008770:	e8678693          	addi	a3,a5,-378 # 2e86 <__CTOR_LIST__-0x1bffd17e>
1c008774:	64e12623          	sw	a4,1612(sp)
1c008778:	02800713          	li	a4,40
1c00877c:	64d11823          	sh	a3,1616(sp)
1c008780:	64e10923          	sb	a4,1618(sp)
1c008784:	03c00713          	li	a4,60
1c008788:	64e109a3          	sb	a4,1619(sp)
1c00878c:	41bbc737          	lui	a4,0x41bbc
1c008790:	f7370713          	addi	a4,a4,-141 # 41bbbf73 <__l2_shared_end+0x25babf73>
1c008794:	64e12a23          	sw	a4,1620(sp)
1c008798:	b8153737          	lui	a4,0xb8153
1c00879c:	93a70713          	addi	a4,a4,-1734 # b815293a <__l2_shared_end+0x9c14293a>
1c0087a0:	64e12c23          	sw	a4,1624(sp)
1c0087a4:	049a1737          	lui	a4,0x49a1
1c0087a8:	5d170713          	addi	a4,a4,1489 # 49a15d1 <__CTOR_LIST__-0x1765ea33>
1c0087ac:	64e12e23          	sw	a4,1628(sp)
1c0087b0:	9bc51737          	lui	a4,0x9bc51
1c0087b4:	23f70713          	addi	a4,a4,575 # 9bc5123f <__l2_shared_end+0x7fc4123f>
1c0087b8:	66e12023          	sw	a4,1632(sp)
1c0087bc:	48828737          	lui	a4,0x48828
1c0087c0:	2fa70713          	addi	a4,a4,762 # 488282fa <__l2_shared_end+0x2c8182fa>
1c0087c4:	66e12223          	sw	a4,1636(sp)
1c0087c8:	1076a737          	lui	a4,0x1076a
1c0087cc:	b2470713          	addi	a4,a4,-1244 # 10769b24 <__CTOR_LIST__-0xb8964e0>
1c0087d0:	66e12423          	sw	a4,1640(sp)
1c0087d4:	a161b737          	lui	a4,0xa161b
1c0087d8:	a6f70713          	addi	a4,a4,-1425 # a161aa6f <__l2_shared_end+0x8560aa6f>
1c0087dc:	66e12623          	sw	a4,1644(sp)
1c0087e0:	0c28a737          	lui	a4,0xc28a
1c0087e4:	02770713          	addi	a4,a4,39 # c28a027 <__CTOR_LIST__-0xfd75fdd>
1c0087e8:	66e12823          	sw	a4,1648(sp)
1c0087ec:	e7506737          	lui	a4,0xe7506
1c0087f0:	35870713          	addi	a4,a4,856 # e7506358 <__l2_shared_end+0xcb4f6358>
1c0087f4:	66e12a23          	sw	a4,1652(sp)
1c0087f8:	4cb73737          	lui	a4,0x4cb73
1c0087fc:	ca470713          	addi	a4,a4,-860 # 4cb72ca4 <__l2_shared_end+0x30b62ca4>
1c008800:	66e12c23          	sw	a4,1656(sp)
1c008804:	d6aba737          	lui	a4,0xd6aba
1c008808:	ca470713          	addi	a4,a4,-860 # d6ab9ca4 <__l2_shared_end+0xbaaa9ca4>
1c00880c:	66e12e23          	sw	a4,1660(sp)
1c008810:	c71e9737          	lui	a4,0xc71e9
1c008814:	90670713          	addi	a4,a4,-1786 # c71e8906 <__l2_shared_end+0xab1d8906>
1c008818:	68e12023          	sw	a4,1664(sp)
1c00881c:	af849737          	lui	a4,0xaf849
1c008820:	ecb70713          	addi	a4,a4,-309 # af848ecb <__l2_shared_end+0x93838ecb>
1c008824:	68e12223          	sw	a4,1668(sp)
1c008828:	142e5737          	lui	a4,0x142e5
1c00882c:	bfe70713          	addi	a4,a4,-1026 # 142e4bfe <__CTOR_LIST__-0x7d1b406>
1c008830:	68e12423          	sw	a4,1672(sp)
1c008834:	33581737          	lui	a4,0x33581
1c008838:	6c770713          	addi	a4,a4,1735 # 335816c7 <__l2_shared_end+0x175716c7>
1c00883c:	68e12623          	sw	a4,1676(sp)
1c008840:	11567737          	lui	a4,0x11567
1c008844:	52b70713          	addi	a4,a4,1323 # 1156752b <__CTOR_LIST__-0xaa98ad9>
1c008848:	68e12823          	sw	a4,1680(sp)
1c00884c:	7f97b737          	lui	a4,0x7f97b
1c008850:	7ba70713          	addi	a4,a4,1978 # 7f97b7ba <__l2_shared_end+0x6396b7ba>
1c008854:	68e12a23          	sw	a4,1684(sp)
1c008858:	36e77737          	lui	a4,0x36e77
1c00885c:	ca770713          	addi	a4,a4,-857 # 36e76ca7 <__l2_shared_end+0x1ae66ca7>
1c008860:	68e12c23          	sw	a4,1688(sp)
1c008864:	4ad32737          	lui	a4,0x4ad32
1c008868:	eb270713          	addi	a4,a4,-334 # 4ad31eb2 <__l2_shared_end+0x2ed21eb2>
1c00886c:	68e12e23          	sw	a4,1692(sp)
1c008870:	c30eb737          	lui	a4,0xc30eb
1c008874:	c1770713          	addi	a4,a4,-1001 # c30eac17 <__l2_shared_end+0xa70dac17>
1c008878:	6ae12023          	sw	a4,1696(sp)
1c00887c:	b2a92737          	lui	a4,0xb2a92
1c008880:	c5670713          	addi	a4,a4,-938 # b2a91c56 <__l2_shared_end+0x96a81c56>
1c008884:	6ae12223          	sw	a4,1700(sp)
1c008888:	bca2d737          	lui	a4,0xbca2d
1c00888c:	48270713          	addi	a4,a4,1154 # bca2d482 <__l2_shared_end+0xa0a1d482>
1c008890:	6ae12423          	sw	a4,1704(sp)
1c008894:	92977737          	lui	a4,0x92977
1c008898:	64070713          	addi	a4,a4,1600 # 92977640 <__l2_shared_end+0x76967640>
1c00889c:	6ae12623          	sw	a4,1708(sp)
1c0088a0:	18f92737          	lui	a4,0x18f92
1c0088a4:	c4b70713          	addi	a4,a4,-949 # 18f91c4b <__CTOR_LIST__-0x306e3b9>
1c0088a8:	6ae12823          	sw	a4,1712(sp)
1c0088ac:	a4d38737          	lui	a4,0xa4d38
1c0088b0:	3ba70713          	addi	a4,a4,954 # a4d383ba <__l2_shared_end+0x88d283ba>
1c0088b4:	6ae12a23          	sw	a4,1716(sp)
1c0088b8:	6425d737          	lui	a4,0x6425d
1c0088bc:	8fd70713          	addi	a4,a4,-1795 # 6425c8fd <__l2_shared_end+0x4824c8fd>
1c0088c0:	6ae12c23          	sw	a4,1720(sp)
1c0088c4:	04d96737          	lui	a4,0x4d96
1c0088c8:	bc970713          	addi	a4,a4,-1079 # 4d95bc9 <__CTOR_LIST__-0x1726a43b>
1c0088cc:	6ae12e23          	sw	a4,1724(sp)
1c0088d0:	1ee9f737          	lui	a4,0x1ee9f
1c0088d4:	ebd70713          	addi	a4,a4,-323 # 1ee9eebd <__l2_shared_end+0x2e8eebd>
1c0088d8:	6ce12023          	sw	a4,1728(sp)
1c0088dc:	6bb3d737          	lui	a4,0x6bb3d
1c0088e0:	cd670713          	addi	a4,a4,-810 # 6bb3ccd6 <__l2_shared_end+0x4fb2ccd6>
1c0088e4:	6ce12223          	sw	a4,1732(sp)
1c0088e8:	5ca09737          	lui	a4,0x5ca09
1c0088ec:	8aa70713          	addi	a4,a4,-1878 # 5ca088aa <__l2_shared_end+0x409f88aa>
1c0088f0:	6ce12423          	sw	a4,1736(sp)
1c0088f4:	01297737          	lui	a4,0x1297
1c0088f8:	18070713          	addi	a4,a4,384 # 1297180 <__CTOR_LIST__-0x1ad68e84>
1c0088fc:	6ce12623          	sw	a4,1740(sp)
1c008900:	ee0a3737          	lui	a4,0xee0a3
1c008904:	8bf70713          	addi	a4,a4,-1857 # ee0a28bf <__l2_shared_end+0xd20928bf>
1c008908:	6ce12823          	sw	a4,1744(sp)
1c00890c:	20ec4737          	lui	a4,0x20ec4
1c008910:	86570713          	addi	a4,a4,-1947 # 20ec3865 <__l2_shared_end+0x4eb3865>
1c008914:	6ce12a23          	sw	a4,1748(sp)
1c008918:	4ea8c737          	lui	a4,0x4ea8c
1c00891c:	27870713          	addi	a4,a4,632 # 4ea8c278 <__l2_shared_end+0x32a7c278>
1c008920:	6ce12c23          	sw	a4,1752(sp)
1c008924:	c12f8737          	lui	a4,0xc12f8
1c008928:	6e570713          	addi	a4,a4,1765 # c12f86e5 <__l2_shared_end+0xa52e86e5>
1c00892c:	6ce12e23          	sw	a4,1756(sp)
1c008930:	e992d737          	lui	a4,0xe992d
1c008934:	d3770713          	addi	a4,a4,-713 # e992cd37 <__l2_shared_end+0xcd91cd37>
1c008938:	6ee12023          	sw	a4,1760(sp)
1c00893c:	9fd67737          	lui	a4,0x9fd67
1c008940:	87970713          	addi	a4,a4,-1927 # 9fd66879 <__l2_shared_end+0x83d56879>
1c008944:	6ee12223          	sw	a4,1764(sp)
1c008948:	1e3a4737          	lui	a4,0x1e3a4
1c00894c:	5c370713          	addi	a4,a4,1475 # 1e3a45c3 <__l2_shared_end+0x23945c3>
1c008950:	6ee12423          	sw	a4,1768(sp)
1c008954:	c561b737          	lui	a4,0xc561b
1c008958:	11c70713          	addi	a4,a4,284 # c561b11c <__l2_shared_end+0xa960b11c>
1c00895c:	6ee12623          	sw	a4,1772(sp)
1c008960:	7324a737          	lui	a4,0x7324a
1c008964:	f0c70713          	addi	a4,a4,-244 # 73249f0c <__l2_shared_end+0x57239f0c>
1c008968:	6ee12823          	sw	a4,1776(sp)
1c00896c:	3790d737          	lui	a4,0x3790d
1c008970:	0a070713          	addi	a4,a4,160 # 3790d0a0 <__l2_shared_end+0x1b8fd0a0>
1c008974:	6ee12a23          	sw	a4,1780(sp)
1c008978:	faa09737          	lui	a4,0xfaa09
1c00897c:	8b170713          	addi	a4,a4,-1871 # faa088b1 <__l2_shared_end+0xde9f88b1>
1c008980:	6ee12c23          	sw	a4,1784(sp)
1c008984:	44c3f737          	lui	a4,0x44c3f
1c008988:	f0170713          	addi	a4,a4,-255 # 44c3ef01 <__l2_shared_end+0x28c2ef01>
1c00898c:	6ee12e23          	sw	a4,1788(sp)
1c008990:	e88fb737          	lui	a4,0xe88fb
1c008994:	cc270713          	addi	a4,a4,-830 # e88facc2 <__l2_shared_end+0xcc8eacc2>
1c008998:	70e12023          	sw	a4,1792(sp)
1c00899c:	580a3737          	lui	a4,0x580a3
1c0089a0:	b5970713          	addi	a4,a4,-1191 # 580a2b59 <__l2_shared_end+0x3c092b59>
1c0089a4:	70e12223          	sw	a4,1796(sp)
1c0089a8:	a9626737          	lui	a4,0xa9626
1c0089ac:	64570713          	addi	a4,a4,1605 # a9626645 <__l2_shared_end+0x8d616645>
1c0089b0:	70e12423          	sw	a4,1800(sp)
1c0089b4:	9a653737          	lui	a4,0x9a653
1c0089b8:	35070713          	addi	a4,a4,848 # 9a653350 <__l2_shared_end+0x7e643350>
1c0089bc:	70e12623          	sw	a4,1804(sp)
1c0089c0:	902d9737          	lui	a4,0x902d9
1c0089c4:	a1570713          	addi	a4,a4,-1515 # 902d8a15 <__l2_shared_end+0x742c8a15>
1c0089c8:	70e12823          	sw	a4,1808(sp)
1c0089cc:	250ce737          	lui	a4,0x250ce
1c0089d0:	5a670713          	addi	a4,a4,1446 # 250ce5a6 <__l2_shared_end+0x90be5a6>
1c0089d4:	70e12a23          	sw	a4,1812(sp)
1c0089d8:	57978737          	lui	a4,0x57978
1c0089dc:	73a70713          	addi	a4,a4,1850 # 5797873a <__l2_shared_end+0x3b96873a>
1c0089e0:	70e12c23          	sw	a4,1816(sp)
1c0089e4:	c429d737          	lui	a4,0xc429d
1c0089e8:	e8570713          	addi	a4,a4,-379 # c429ce85 <__l2_shared_end+0xa828ce85>
1c0089ec:	70e12e23          	sw	a4,1820(sp)
1c0089f0:	a1000737          	lui	a4,0xa1000
1c0089f4:	05770713          	addi	a4,a4,87 # a1000057 <__l2_shared_end+0x84ff0057>
1c0089f8:	72e12023          	sw	a4,1824(sp)
1c0089fc:	b2b3d737          	lui	a4,0xb2b3d
1c008a00:	45470713          	addi	a4,a4,1108 # b2b3d454 <__l2_shared_end+0x96b2d454>
1c008a04:	72e12223          	sw	a4,1828(sp)
1c008a08:	5c204737          	lui	a4,0x5c204
1c008a0c:	2c670713          	addi	a4,a4,710 # 5c2042c6 <__l2_shared_end+0x401f42c6>
1c008a10:	72e12423          	sw	a4,1832(sp)
1c008a14:	acf98737          	lui	a4,0xacf98
1c008a18:	c8c70713          	addi	a4,a4,-884 # acf97c8c <__l2_shared_end+0x90f87c8c>
1c008a1c:	72e12623          	sw	a4,1836(sp)
1c008a20:	fb711737          	lui	a4,0xfb711
1c008a24:	06b70713          	addi	a4,a4,107 # fb71106b <__l2_shared_end+0xdf70106b>
1c008a28:	72e12823          	sw	a4,1840(sp)
1c008a2c:	95ab7737          	lui	a4,0x95ab7
1c008a30:	8b370713          	addi	a4,a4,-1869 # 95ab68b3 <__l2_shared_end+0x79aa68b3>
1c008a34:	72e12a23          	sw	a4,1844(sp)
1c008a38:	884b7737          	lui	a4,0x884b7
1c008a3c:	40a70713          	addi	a4,a4,1034 # 884b740a <__l2_shared_end+0x6c4a740a>
1c008a40:	72e12c23          	sw	a4,1848(sp)
1c008a44:	24a56737          	lui	a4,0x24a56
1c008a48:	bc970713          	addi	a4,a4,-1079 # 24a55bc9 <__l2_shared_end+0x8a45bc9>
1c008a4c:	72e12e23          	sw	a4,1852(sp)
1c008a50:	11831737          	lui	a4,0x11831
1c008a54:	73070713          	addi	a4,a4,1840 # 11831730 <__CTOR_LIST__-0xa7ce8d4>
1c008a58:	74e12023          	sw	a4,1856(sp)
1c008a5c:	8304b737          	lui	a4,0x8304b
1c008a60:	92070713          	addi	a4,a4,-1760 # 8304a920 <__l2_shared_end+0x6703a920>
1c008a64:	74e12223          	sw	a4,1860(sp)
1c008a68:	7775                	lui	a4,0xffffd
1c008a6a:	23870713          	addi	a4,a4,568 # ffffd238 <__l2_shared_end+0xe3fed238>
1c008a6e:	74e11423          	sh	a4,1864(sp)
1c008a72:	f9800713          	li	a4,-104
1c008a76:	74e10523          	sb	a4,1866(sp)
1c008a7a:	04700713          	li	a4,71
1c008a7e:	74e105a3          	sb	a4,1867(sp)
1c008a82:	a9121737          	lui	a4,0xa9121
1c008a86:	d8370713          	addi	a4,a4,-637 # a9120d83 <__l2_shared_end+0x8d110d83>
1c008a8a:	74e12623          	sw	a4,1868(sp)
1c008a8e:	bd9aa737          	lui	a4,0xbd9aa
1c008a92:	03370713          	addi	a4,a4,51 # bd9aa033 <__l2_shared_end+0xa199a033>
1c008a96:	74e12823          	sw	a4,1872(sp)
1c008a9a:	826ba737          	lui	a4,0x826ba
1c008a9e:	42170713          	addi	a4,a4,1057 # 826ba421 <__l2_shared_end+0x666aa421>
1c008aa2:	74e12a23          	sw	a4,1876(sp)
1c008aa6:	804eb737          	lui	a4,0x804eb
1c008aaa:	18c70713          	addi	a4,a4,396 # 804eb18c <__l2_shared_end+0x644db18c>
1c008aae:	74e12c23          	sw	a4,1880(sp)
1c008ab2:	2951d737          	lui	a4,0x2951d
1c008ab6:	38c70713          	addi	a4,a4,908 # 2951d38c <__l2_shared_end+0xd50d38c>
1c008aba:	74e12e23          	sw	a4,1884(sp)
1c008abe:	5b6ee737          	lui	a4,0x5b6ee
1c008ac2:	cc970713          	addi	a4,a4,-823 # 5b6edcc9 <__l2_shared_end+0x3f6ddcc9>
1c008ac6:	76e12023          	sw	a4,1888(sp)
1c008aca:	124a2737          	lui	a4,0x124a2
1c008ace:	d9370713          	addi	a4,a4,-621 # 124a1d93 <__CTOR_LIST__-0x9b5e271>
1c008ad2:	76e12223          	sw	a4,1892(sp)
1c008ad6:	79e0f737          	lui	a4,0x79e0f
1c008ada:	f6f70713          	addi	a4,a4,-145 # 79e0ef6f <__l2_shared_end+0x5ddfef6f>
1c008ade:	76e12423          	sw	a4,1896(sp)
1c008ae2:	2b8e6737          	lui	a4,0x2b8e6
1c008ae6:	10970713          	addi	a4,a4,265 # 2b8e6109 <__l2_shared_end+0xf8d6109>
1c008aea:	76e12623          	sw	a4,1900(sp)
1c008aee:	b6e78737          	lui	a4,0xb6e78
1c008af2:	64570713          	addi	a4,a4,1605 # b6e78645 <__l2_shared_end+0x9ae68645>
1c008af6:	76e12823          	sw	a4,1904(sp)
1c008afa:	3b962737          	lui	a4,0x3b962
1c008afe:	4b470713          	addi	a4,a4,1204 # 3b9624b4 <__l2_shared_end+0x1f9524b4>
1c008b02:	76e12a23          	sw	a4,1908(sp)
1c008b06:	50ba2737          	lui	a4,0x50ba2
1c008b0a:	37370713          	addi	a4,a4,883 # 50ba2373 <__l2_shared_end+0x34b92373>
1c008b0e:	76e12c23          	sw	a4,1912(sp)
1c008b12:	bb12a737          	lui	a4,0xbb12a
1c008b16:	15b70713          	addi	a4,a4,347 # bb12a15b <__l2_shared_end+0x9f11a15b>
1c008b1a:	76e12e23          	sw	a4,1916(sp)
1c008b1e:	7d4a8737          	lui	a4,0x7d4a8
1c008b22:	39b70713          	addi	a4,a4,923 # 7d4a839b <__l2_shared_end+0x6149839b>
1c008b26:	78e12023          	sw	a4,1920(sp)
1c008b2a:	0dad8737          	lui	a4,0xdad8
1c008b2e:	81b70713          	addi	a4,a4,-2021 # dad781b <__CTOR_LIST__-0xe5287e9>
1c008b32:	78e12223          	sw	a4,1924(sp)
1c008b36:	6a554737          	lui	a4,0x6a554
1c008b3a:	df570713          	addi	a4,a4,-523 # 6a553df5 <__l2_shared_end+0x4e543df5>
1c008b3e:	78e12423          	sw	a4,1928(sp)
1c008b42:	9f367737          	lui	a4,0x9f367
1c008b46:	91c70713          	addi	a4,a4,-1764 # 9f36691c <__l2_shared_end+0x8335691c>
1c008b4a:	78e12623          	sw	a4,1932(sp)
1c008b4e:	1d8b1737          	lui	a4,0x1d8b1
1c008b52:	40970713          	addi	a4,a4,1033 # 1d8b1409 <__l2_shared_end+0x18a1409>
1c008b56:	78e12823          	sw	a4,1936(sp)
1c008b5a:	f58d9737          	lui	a4,0xf58d9
1c008b5e:	3c970713          	addi	a4,a4,969 # f58d93c9 <__l2_shared_end+0xd98c93c9>
1c008b62:	78e12a23          	sw	a4,1940(sp)
1c008b66:	87f02737          	lui	a4,0x87f02
1c008b6a:	39270713          	addi	a4,a4,914 # 87f02392 <__l2_shared_end+0x6bef2392>
1c008b6e:	78e12c23          	sw	a4,1944(sp)
1c008b72:	be337737          	lui	a4,0xbe337
1c008b76:	8fd70713          	addi	a4,a4,-1795 # be3368fd <__l2_shared_end+0xa23268fd>
1c008b7a:	78e12e23          	sw	a4,1948(sp)
1c008b7e:	65c23737          	lui	a4,0x65c23
1c008b82:	b5b70713          	addi	a4,a4,-1189 # 65c22b5b <__l2_shared_end+0x49c12b5b>
1c008b86:	7ae12023          	sw	a4,1952(sp)
1c008b8a:	1189e737          	lui	a4,0x1189e
1c008b8e:	51f70713          	addi	a4,a4,1311 # 1189e51f <__CTOR_LIST__-0xa761ae5>
1c008b92:	7ae12223          	sw	a4,1956(sp)
1c008b96:	7f460737          	lui	a4,0x7f460
1c008b9a:	1ac70713          	addi	a4,a4,428 # 7f4601ac <__l2_shared_end+0x634501ac>
1c008b9e:	7ae12423          	sw	a4,1960(sp)
1c008ba2:	dcdf9737          	lui	a4,0xdcdf9
1c008ba6:	79270713          	addi	a4,a4,1938 # dcdf9792 <__l2_shared_end+0xc0de9792>
1c008baa:	7ae12623          	sw	a4,1964(sp)
1c008bae:	0f1ab737          	lui	a4,0xf1ab
1c008bb2:	42270713          	addi	a4,a4,1058 # f1ab422 <__CTOR_LIST__-0xce54be2>
1c008bb6:	7ae12823          	sw	a4,1968(sp)
1c008bba:	87710737          	lui	a4,0x87710
1c008bbe:	21770713          	addi	a4,a4,535 # 87710217 <__l2_shared_end+0x6b700217>
1c008bc2:	7ae12a23          	sw	a4,1972(sp)
1c008bc6:	f38cb737          	lui	a4,0xf38cb
1c008bca:	71070713          	addi	a4,a4,1808 # f38cb710 <__l2_shared_end+0xd78bb710>
1c008bce:	7ae12c23          	sw	a4,1976(sp)
1c008bd2:	81652737          	lui	a4,0x81652
1c008bd6:	85b70713          	addi	a4,a4,-1957 # 8165185b <__l2_shared_end+0x6564185b>
1c008bda:	7ae12e23          	sw	a4,1980(sp)
1c008bde:	456d9737          	lui	a4,0x456d9
1c008be2:	93a70713          	addi	a4,a4,-1734 # 456d893a <__l2_shared_end+0x296c893a>
1c008be6:	7ce12023          	sw	a4,1984(sp)
1c008bea:	81335737          	lui	a4,0x81335
1c008bee:	d2170713          	addi	a4,a4,-735 # 81334d21 <__l2_shared_end+0x65324d21>
1c008bf2:	7ce12223          	sw	a4,1988(sp)
1c008bf6:	43c0b737          	lui	a4,0x43c0b
1c008bfa:	65570713          	addi	a4,a4,1621 # 43c0b655 <__l2_shared_end+0x27bfb655>
1c008bfe:	7ce12423          	sw	a4,1992(sp)
1c008c02:	0c333737          	lui	a4,0xc333
1c008c06:	2c570713          	addi	a4,a4,709 # c3332c5 <__CTOR_LIST__-0xfcccd3f>
1c008c0a:	7ce12623          	sw	a4,1996(sp)
1c008c0e:	07523737          	lui	a4,0x7523
1c008c12:	d0070713          	addi	a4,a4,-768 # 7522d00 <__CTOR_LIST__-0x14add304>
1c008c16:	7ce12823          	sw	a4,2000(sp)
1c008c1a:	507a4737          	lui	a4,0x507a4
1c008c1e:	63970713          	addi	a4,a4,1593 # 507a4639 <__l2_shared_end+0x34794639>
1c008c22:	7ce12a23          	sw	a4,2004(sp)
1c008c26:	37668737          	lui	a4,0x37668
1c008c2a:	64a70713          	addi	a4,a4,1610 # 3766864a <__l2_shared_end+0x1b65864a>
1c008c2e:	7ce12c23          	sw	a4,2008(sp)
1c008c32:	c8513737          	lui	a4,0xc8513
1c008c36:	4fb70713          	addi	a4,a4,1275 # c85134fb <__l2_shared_end+0xac5034fb>
1c008c3a:	7ce12e23          	sw	a4,2012(sp)
1c008c3e:	3ef90737          	lui	a4,0x3ef90
1c008c42:	6685                	lui	a3,0x1
1c008c44:	84970713          	addi	a4,a4,-1975 # 3ef8f849 <__l2_shared_end+0x22f7f849>
1c008c48:	7ee12023          	sw	a4,2016(sp)
1c008c4c:	747d                	lui	s0,0xfffff
1c008c4e:	90068713          	addi	a4,a3,-1792 # 900 <__CTOR_LIST__-0x1bfff704>
1c008c52:	970a                	add	a4,a4,sp
1c008c54:	70040493          	addi	s1,s0,1792 # fffff700 <__l2_shared_end+0xe3fef700>
1c008c58:	94ba                	add	s1,s1,a4
1c008c5a:	90068713          	addi	a4,a3,-1792
1c008c5e:	970a                	add	a4,a4,sp
1c008c60:	72040413          	addi	s0,s0,1824
1c008c64:	943a                	add	s0,s0,a4
1c008c66:	7f149737          	lui	a4,0x7f149
1c008c6a:	46a70713          	addi	a4,a4,1130 # 7f14946a <__l2_shared_end+0x6313946a>
1c008c6e:	7ee12223          	sw	a4,2020(sp)
1c008c72:	3aa59737          	lui	a4,0x3aa59
1c008c76:	d1670713          	addi	a4,a4,-746 # 3aa58d16 <__l2_shared_end+0x1ea48d16>
1c008c7a:	7ee12423          	sw	a4,2024(sp)
1c008c7e:	afd90737          	lui	a4,0xafd90
1c008c82:	9cd70713          	addi	a4,a4,-1587 # afd8f9cd <__l2_shared_end+0x93d7f9cd>
1c008c86:	7ee12623          	sw	a4,2028(sp)
1c008c8a:	848a9737          	lui	a4,0x848a9
1c008c8e:	6fd70713          	addi	a4,a4,1789 # 848a96fd <__l2_shared_end+0x688996fd>
1c008c92:	7ee12823          	sw	a4,2032(sp)
1c008c96:	bc9a5737          	lui	a4,0xbc9a5
1c008c9a:	a1270713          	addi	a4,a4,-1518 # bc9a4a12 <__l2_shared_end+0xa0994a12>
1c008c9e:	7ee12a23          	sw	a4,2036(sp)
1c008ca2:	0c96b737          	lui	a4,0xc96b
1c008ca6:	f0970713          	addi	a4,a4,-247 # c96af09 <__CTOR_LIST__-0xf6950fb>
1c008caa:	7ee12c23          	sw	a4,2040(sp)
1c008cae:	239fb737          	lui	a4,0x239fb
1c008cb2:	2d370713          	addi	a4,a4,723 # 239fb2d3 <__l2_shared_end+0x79eb2d3>
1c008cb6:	7ee12e23          	sw	a4,2044(sp)
1c008cba:	80068613          	addi	a2,a3,-2048
1c008cbe:	b41b8737          	lui	a4,0xb41b8
1c008cc2:	960a                	add	a2,a2,sp
1c008cc4:	34470713          	addi	a4,a4,836 # b41b8344 <__l2_shared_end+0x981a8344>
1c008cc8:	c218                	sw	a4,0(a2)
1c008cca:	80468613          	addi	a2,a3,-2044
1c008cce:	5e606737          	lui	a4,0x5e606
1c008cd2:	960a                	add	a2,a2,sp
1c008cd4:	71e70713          	addi	a4,a4,1822 # 5e60671e <__l2_shared_end+0x425f671e>
1c008cd8:	c218                	sw	a4,0(a2)
1c008cda:	80868613          	addi	a2,a3,-2040
1c008cde:	f20df737          	lui	a4,0xf20df
1c008ce2:	960a                	add	a2,a2,sp
1c008ce4:	0eb70713          	addi	a4,a4,235 # f20df0eb <__l2_shared_end+0xd60cf0eb>
1c008ce8:	c218                	sw	a4,0(a2)
1c008cea:	80c68613          	addi	a2,a3,-2036
1c008cee:	17718737          	lui	a4,0x17718
1c008cf2:	960a                	add	a2,a2,sp
1c008cf4:	50270713          	addi	a4,a4,1282 # 17718502 <__CTOR_LIST__-0x48e7b02>
1c008cf8:	c218                	sw	a4,0(a2)
1c008cfa:	81068613          	addi	a2,a3,-2032
1c008cfe:	48d7a737          	lui	a4,0x48d7a
1c008d02:	960a                	add	a2,a2,sp
1c008d04:	d3970713          	addi	a4,a4,-711 # 48d79d39 <__l2_shared_end+0x2cd69d39>
1c008d08:	c218                	sw	a4,0(a2)
1c008d0a:	81468613          	addi	a2,a3,-2028
1c008d0e:	ed4a5737          	lui	a4,0xed4a5
1c008d12:	960a                	add	a2,a2,sp
1c008d14:	1b670713          	addi	a4,a4,438 # ed4a51b6 <__l2_shared_end+0xd14951b6>
1c008d18:	c218                	sw	a4,0(a2)
1c008d1a:	81868613          	addi	a2,a3,-2024
1c008d1e:	6c2fc737          	lui	a4,0x6c2fc
1c008d22:	960a                	add	a2,a2,sp
1c008d24:	b6170713          	addi	a4,a4,-1183 # 6c2fbb61 <__l2_shared_end+0x502ebb61>
1c008d28:	c218                	sw	a4,0(a2)
1c008d2a:	81c68613          	addi	a2,a3,-2020
1c008d2e:	68d14737          	lui	a4,0x68d14
1c008d32:	960a                	add	a2,a2,sp
1c008d34:	1b870713          	addi	a4,a4,440 # 68d141b8 <__l2_shared_end+0x4cd041b8>
1c008d38:	c218                	sw	a4,0(a2)
1c008d3a:	82068613          	addi	a2,a3,-2016
1c008d3e:	205ef737          	lui	a4,0x205ef
1c008d42:	960a                	add	a2,a2,sp
1c008d44:	3d570713          	addi	a4,a4,981 # 205ef3d5 <__l2_shared_end+0x45df3d5>
1c008d48:	c218                	sw	a4,0(a2)
1c008d4a:	82468613          	addi	a2,a3,-2012
1c008d4e:	a3734737          	lui	a4,0xa3734
1c008d52:	960a                	add	a2,a2,sp
1c008d54:	50570713          	addi	a4,a4,1285 # a3734505 <__l2_shared_end+0x87724505>
1c008d58:	c218                	sw	a4,0(a2)
1c008d5a:	82868613          	addi	a2,a3,-2008
1c008d5e:	8248d737          	lui	a4,0x8248d
1c008d62:	960a                	add	a2,a2,sp
1c008d64:	d3170713          	addi	a4,a4,-719 # 8248cd31 <__l2_shared_end+0x6647cd31>
1c008d68:	c218                	sw	a4,0(a2)
1c008d6a:	82c68613          	addi	a2,a3,-2004
1c008d6e:	2c075737          	lui	a4,0x2c075
1c008d72:	960a                	add	a2,a2,sp
1c008d74:	ba070713          	addi	a4,a4,-1120 # 2c074ba0 <__l2_shared_end+0x10064ba0>
1c008d78:	c218                	sw	a4,0(a2)
1c008d7a:	83068613          	addi	a2,a3,-2000
1c008d7e:	82589737          	lui	a4,0x82589
1c008d82:	960a                	add	a2,a2,sp
1c008d84:	11770713          	addi	a4,a4,279 # 82589117 <__l2_shared_end+0x66579117>
1c008d88:	c218                	sw	a4,0(a2)
1c008d8a:	83468613          	addi	a2,a3,-1996
1c008d8e:	1247d737          	lui	a4,0x1247d
1c008d92:	960a                	add	a2,a2,sp
1c008d94:	f5b70713          	addi	a4,a4,-165 # 1247cf5b <__CTOR_LIST__-0x9b830a9>
1c008d98:	c218                	sw	a4,0(a2)
1c008d9a:	83868613          	addi	a2,a3,-1992
1c008d9e:	cc0de737          	lui	a4,0xcc0de
1c008da2:	960a                	add	a2,a2,sp
1c008da4:	a6670713          	addi	a4,a4,-1434 # cc0dda66 <__l2_shared_end+0xb00cda66>
1c008da8:	c218                	sw	a4,0(a2)
1c008daa:	83c68613          	addi	a2,a3,-1988
1c008dae:	21a0b737          	lui	a4,0x21a0b
1c008db2:	960a                	add	a2,a2,sp
1c008db4:	1ea70713          	addi	a4,a4,490 # 21a0b1ea <__l2_shared_end+0x59fb1ea>
1c008db8:	c218                	sw	a4,0(a2)
1c008dba:	8736                	mv	a4,a3
1c008dbc:	84068693          	addi	a3,a3,-1984
1c008dc0:	968a                	add	a3,a3,sp
1c008dc2:	2c778793          	addi	a5,a5,711
1c008dc6:	00f69023          	sh	a5,0(a3)
1c008dca:	84270693          	addi	a3,a4,-1982
1c008dce:	968a                	add	a3,a3,sp
1c008dd0:	05400793          	li	a5,84
1c008dd4:	00f68023          	sb	a5,0(a3)
1c008dd8:	84370693          	addi	a3,a4,-1981
1c008ddc:	968a                	add	a3,a3,sp
1c008dde:	07500793          	li	a5,117
1c008de2:	00f68023          	sb	a5,0(a3)
1c008de6:	84470693          	addi	a3,a4,-1980
1c008dea:	1c1667b7          	lui	a5,0x1c166
1c008dee:	968a                	add	a3,a3,sp
1c008df0:	a1d78793          	addi	a5,a5,-1507 # 1c165a1d <__l2_shared_end+0x155a1d>
1c008df4:	c29c                	sw	a5,0(a3)
1c008df6:	84870693          	addi	a3,a4,-1976
1c008dfa:	2c0697b7          	lui	a5,0x2c069
1c008dfe:	968a                	add	a3,a3,sp
1c008e00:	21a78793          	addi	a5,a5,538 # 2c06921a <__l2_shared_end+0x1005921a>
1c008e04:	c29c                	sw	a5,0(a3)
1c008e06:	84c70693          	addi	a3,a4,-1972
1c008e0a:	7a2117b7          	lui	a5,0x7a211
1c008e0e:	968a                	add	a3,a3,sp
1c008e10:	a2278793          	addi	a5,a5,-1502 # 7a210a22 <__l2_shared_end+0x5e200a22>
1c008e14:	c29c                	sw	a5,0(a3)
1c008e16:	85070693          	addi	a3,a4,-1968
1c008e1a:	3382e7b7          	lui	a5,0x3382e
1c008e1e:	968a                	add	a3,a3,sp
1c008e20:	96978793          	addi	a5,a5,-1687 # 3382d969 <__l2_shared_end+0x1781d969>
1c008e24:	c29c                	sw	a5,0(a3)
1c008e26:	85470693          	addi	a3,a4,-1964
1c008e2a:	99deb7b7          	lui	a5,0x99deb
1c008e2e:	968a                	add	a3,a3,sp
1c008e30:	41478793          	addi	a5,a5,1044 # 99deb414 <__l2_shared_end+0x7dddb414>
1c008e34:	c29c                	sw	a5,0(a3)
1c008e36:	85870693          	addi	a3,a4,-1960
1c008e3a:	5fd4f7b7          	lui	a5,0x5fd4f
1c008e3e:	968a                	add	a3,a3,sp
1c008e40:	86f78793          	addi	a5,a5,-1937 # 5fd4e86f <__l2_shared_end+0x43d3e86f>
1c008e44:	c29c                	sw	a5,0(a3)
1c008e46:	85c70693          	addi	a3,a4,-1956
1c008e4a:	16afb7b7          	lui	a5,0x16afb
1c008e4e:	968a                	add	a3,a3,sp
1c008e50:	56d78793          	addi	a5,a5,1389 # 16afb56d <__CTOR_LIST__-0x5504a97>
1c008e54:	c29c                	sw	a5,0(a3)
1c008e56:	86070693          	addi	a3,a4,-1952
1c008e5a:	951457b7          	lui	a5,0x95145
1c008e5e:	968a                	add	a3,a3,sp
1c008e60:	6c178793          	addi	a5,a5,1729 # 951456c1 <__l2_shared_end+0x791356c1>
1c008e64:	c29c                	sw	a5,0(a3)
1c008e66:	86470693          	addi	a3,a4,-1948
1c008e6a:	9030c7b7          	lui	a5,0x9030c
1c008e6e:	968a                	add	a3,a3,sp
1c008e70:	4a478793          	addi	a5,a5,1188 # 9030c4a4 <__l2_shared_end+0x742fc4a4>
1c008e74:	c29c                	sw	a5,0(a3)
1c008e76:	86870693          	addi	a3,a4,-1944
1c008e7a:	944c47b7          	lui	a5,0x944c4
1c008e7e:	968a                	add	a3,a3,sp
1c008e80:	9bc78793          	addi	a5,a5,-1604 # 944c39bc <__l2_shared_end+0x784b39bc>
1c008e84:	c29c                	sw	a5,0(a3)
1c008e86:	86c70693          	addi	a3,a4,-1940
1c008e8a:	73ecb7b7          	lui	a5,0x73ecb
1c008e8e:	968a                	add	a3,a3,sp
1c008e90:	0e178793          	addi	a5,a5,225 # 73ecb0e1 <__l2_shared_end+0x57ebb0e1>
1c008e94:	c29c                	sw	a5,0(a3)
1c008e96:	87070693          	addi	a3,a4,-1936
1c008e9a:	6762b7b7          	lui	a5,0x6762b
1c008e9e:	968a                	add	a3,a3,sp
1c008ea0:	58e78793          	addi	a5,a5,1422 # 6762b58e <__l2_shared_end+0x4b61b58e>
1c008ea4:	c29c                	sw	a5,0(a3)
1c008ea6:	87470693          	addi	a3,a4,-1932
1c008eaa:	cd2e27b7          	lui	a5,0xcd2e2
1c008eae:	968a                	add	a3,a3,sp
1c008eb0:	c2078793          	addi	a5,a5,-992 # cd2e1c20 <__l2_shared_end+0xb12d1c20>
1c008eb4:	c29c                	sw	a5,0(a3)
1c008eb6:	87870693          	addi	a3,a4,-1928
1c008eba:	934987b7          	lui	a5,0x93498
1c008ebe:	968a                	add	a3,a3,sp
1c008ec0:	b1c78793          	addi	a5,a5,-1252 # 93497b1c <__l2_shared_end+0x77487b1c>
1c008ec4:	c29c                	sw	a5,0(a3)
1c008ec6:	87c70693          	addi	a3,a4,-1924
1c008eca:	28c0f7b7          	lui	a5,0x28c0f
1c008ece:	968a                	add	a3,a3,sp
1c008ed0:	fc078793          	addi	a5,a5,-64 # 28c0efc0 <__l2_shared_end+0xcbfefc0>
1c008ed4:	c29c                	sw	a5,0(a3)
1c008ed6:	88070693          	addi	a3,a4,-1920
1c008eda:	099ae7b7          	lui	a5,0x99ae
1c008ede:	968a                	add	a3,a3,sp
1c008ee0:	c4b78793          	addi	a5,a5,-949 # 99adc4b <__CTOR_LIST__-0x126523b9>
1c008ee4:	c29c                	sw	a5,0(a3)
1c008ee6:	88470693          	addi	a3,a4,-1916
1c008eea:	954f37b7          	lui	a5,0x954f3
1c008eee:	968a                	add	a3,a3,sp
1c008ef0:	91c78793          	addi	a5,a5,-1764 # 954f291c <__l2_shared_end+0x794e291c>
1c008ef4:	c29c                	sw	a5,0(a3)
1c008ef6:	88870693          	addi	a3,a4,-1912
1c008efa:	787147b7          	lui	a5,0x78714
1c008efe:	968a                	add	a3,a3,sp
1c008f00:	a7078793          	addi	a5,a5,-1424 # 78713a70 <__l2_shared_end+0x5c703a70>
1c008f04:	c29c                	sw	a5,0(a3)
1c008f06:	88c70693          	addi	a3,a4,-1908
1c008f0a:	958a37b7          	lui	a5,0x958a3
1c008f0e:	968a                	add	a3,a3,sp
1c008f10:	c8278793          	addi	a5,a5,-894 # 958a2c82 <__l2_shared_end+0x79892c82>
1c008f14:	c29c                	sw	a5,0(a3)
1c008f16:	89070693          	addi	a3,a4,-1904
1c008f1a:	451ea7b7          	lui	a5,0x451ea
1c008f1e:	968a                	add	a3,a3,sp
1c008f20:	bb778793          	addi	a5,a5,-1097 # 451e9bb7 <__l2_shared_end+0x291d9bb7>
1c008f24:	c29c                	sw	a5,0(a3)
1c008f26:	89470693          	addi	a3,a4,-1900
1c008f2a:	8d99e7b7          	lui	a5,0x8d99e
1c008f2e:	968a                	add	a3,a3,sp
1c008f30:	09178793          	addi	a5,a5,145 # 8d99e091 <__l2_shared_end+0x7198e091>
1c008f34:	c29c                	sw	a5,0(a3)
1c008f36:	89870693          	addi	a3,a4,-1896
1c008f3a:	c17547b7          	lui	a5,0xc1754
1c008f3e:	968a                	add	a3,a3,sp
1c008f40:	88978793          	addi	a5,a5,-1911 # c1753889 <__l2_shared_end+0xa5743889>
1c008f44:	c29c                	sw	a5,0(a3)
1c008f46:	89c70693          	addi	a3,a4,-1892
1c008f4a:	8ac087b7          	lui	a5,0x8ac08
1c008f4e:	968a                	add	a3,a3,sp
1c008f50:	9a878793          	addi	a5,a5,-1624 # 8ac079a8 <__l2_shared_end+0x6ebf79a8>
1c008f54:	c29c                	sw	a5,0(a3)
1c008f56:	8a070693          	addi	a3,a4,-1888
1c008f5a:	7dc647b7          	lui	a5,0x7dc64
1c008f5e:	968a                	add	a3,a3,sp
1c008f60:	c0778793          	addi	a5,a5,-1017 # 7dc63c07 <__l2_shared_end+0x61c53c07>
1c008f64:	c29c                	sw	a5,0(a3)
1c008f66:	8a470693          	addi	a3,a4,-1884
1c008f6a:	a7bb27b7          	lui	a5,0xa7bb2
1c008f6e:	968a                	add	a3,a3,sp
1c008f70:	6f478793          	addi	a5,a5,1780 # a7bb26f4 <__l2_shared_end+0x8bba26f4>
1c008f74:	c29c                	sw	a5,0(a3)
1c008f76:	8a870693          	addi	a3,a4,-1880
1c008f7a:	e68ac7b7          	lui	a5,0xe68ac
1c008f7e:	968a                	add	a3,a3,sp
1c008f80:	19278793          	addi	a5,a5,402 # e68ac192 <__l2_shared_end+0xca89c192>
1c008f84:	c29c                	sw	a5,0(a3)
1c008f86:	8ac70693          	addi	a3,a4,-1876
1c008f8a:	87bb07b7          	lui	a5,0x87bb0
1c008f8e:	968a                	add	a3,a3,sp
1c008f90:	ec178793          	addi	a5,a5,-319 # 87bafec1 <__l2_shared_end+0x6bb9fec1>
1c008f94:	c29c                	sw	a5,0(a3)
1c008f96:	8b070693          	addi	a3,a4,-1872
1c008f9a:	8154f7b7          	lui	a5,0x8154f
1c008f9e:	968a                	add	a3,a3,sp
1c008fa0:	c9b78793          	addi	a5,a5,-869 # 8154ec9b <__l2_shared_end+0x6553ec9b>
1c008fa4:	c29c                	sw	a5,0(a3)
1c008fa6:	8b470693          	addi	a3,a4,-1868
1c008faa:	a0ff37b7          	lui	a5,0xa0ff3
1c008fae:	968a                	add	a3,a3,sp
1c008fb0:	a2c78793          	addi	a5,a5,-1492 # a0ff2a2c <__l2_shared_end+0x84fe2a2c>
1c008fb4:	c29c                	sw	a5,0(a3)
1c008fb6:	8b870693          	addi	a3,a4,-1864
1c008fba:	703b97b7          	lui	a5,0x703b9
1c008fbe:	968a                	add	a3,a3,sp
1c008fc0:	71278793          	addi	a5,a5,1810 # 703b9712 <__l2_shared_end+0x543a9712>
1c008fc4:	c29c                	sw	a5,0(a3)
1c008fc6:	8bc70693          	addi	a3,a4,-1860
1c008fca:	278ed7b7          	lui	a5,0x278ed
1c008fce:	968a                	add	a3,a3,sp
1c008fd0:	40a78793          	addi	a5,a5,1034 # 278ed40a <__l2_shared_end+0xb8dd40a>
1c008fd4:	c29c                	sw	a5,0(a3)
1c008fd6:	8c070693          	addi	a3,a4,-1856
1c008fda:	082887b7          	lui	a5,0x8288
1c008fde:	968a                	add	a3,a3,sp
1c008fe0:	81078793          	addi	a5,a5,-2032 # 8287810 <__CTOR_LIST__-0x13d787f4>
1c008fe4:	c29c                	sw	a5,0(a3)
1c008fe6:	8c470693          	addi	a3,a4,-1852
1c008fea:	008627b7          	lui	a5,0x862
1c008fee:	968a                	add	a3,a3,sp
1c008ff0:	66478793          	addi	a5,a5,1636 # 862664 <__CTOR_LIST__-0x1b79d9a0>
1c008ff4:	c29c                	sw	a5,0(a3)
1c008ff6:	8c870693          	addi	a3,a4,-1848
1c008ffa:	9e30b7b7          	lui	a5,0x9e30b
1c008ffe:	968a                	add	a3,a3,sp
1c009000:	aa778793          	addi	a5,a5,-1369 # 9e30aaa7 <__l2_shared_end+0x822faaa7>
1c009004:	c29c                	sw	a5,0(a3)
1c009006:	8cc70693          	addi	a3,a4,-1844
1c00900a:	759817b7          	lui	a5,0x75981
1c00900e:	968a                	add	a3,a3,sp
1c009010:	0aa78793          	addi	a5,a5,170 # 759810aa <__l2_shared_end+0x599710aa>
1c009014:	c29c                	sw	a5,0(a3)
1c009016:	8d070693          	addi	a3,a4,-1840
1c00901a:	528a17b7          	lui	a5,0x528a1
1c00901e:	968a                	add	a3,a3,sp
1c009020:	f0a78793          	addi	a5,a5,-246 # 528a0f0a <__l2_shared_end+0x36890f0a>
1c009024:	c29c                	sw	a5,0(a3)
1c009026:	8d470693          	addi	a3,a4,-1836
1c00902a:	5729c7b7          	lui	a5,0x5729c
1c00902e:	968a                	add	a3,a3,sp
1c009030:	92e78793          	addi	a5,a5,-1746 # 5729b92e <__l2_shared_end+0x3b28b92e>
1c009034:	c29c                	sw	a5,0(a3)
1c009036:	8d870693          	addi	a3,a4,-1832
1c00903a:	782f47b7          	lui	a5,0x782f4
1c00903e:	968a                	add	a3,a3,sp
1c009040:	17b78793          	addi	a5,a5,379 # 782f417b <__l2_shared_end+0x5c2e417b>
1c009044:	c29c                	sw	a5,0(a3)
1c009046:	8dc70693          	addi	a3,a4,-1828
1c00904a:	883667b7          	lui	a5,0x88366
1c00904e:	968a                	add	a3,a3,sp
1c009050:	15578793          	addi	a5,a5,341 # 88366155 <__l2_shared_end+0x6c356155>
1c009054:	c29c                	sw	a5,0(a3)
1c009056:	8e070693          	addi	a3,a4,-1824
1c00905a:	c89b37b7          	lui	a5,0xc89b3
1c00905e:	968a                	add	a3,a3,sp
1c009060:	fb778793          	addi	a5,a5,-73 # c89b2fb7 <__l2_shared_end+0xac9a2fb7>
1c009064:	c29c                	sw	a5,0(a3)
1c009066:	8e470693          	addi	a3,a4,-1820
1c00906a:	b91317b7          	lui	a5,0xb9131
1c00906e:	968a                	add	a3,a3,sp
1c009070:	a5c78793          	addi	a5,a5,-1444 # b9130a5c <__l2_shared_end+0x9d120a5c>
1c009074:	c29c                	sw	a5,0(a3)
1c009076:	8e870693          	addi	a3,a4,-1816
1c00907a:	6f5847b7          	lui	a5,0x6f584
1c00907e:	968a                	add	a3,a3,sp
1c009080:	1d078793          	addi	a5,a5,464 # 6f5841d0 <__l2_shared_end+0x535741d0>
1c009084:	c29c                	sw	a5,0(a3)
1c009086:	8ec70693          	addi	a3,a4,-1812
1c00908a:	b1fe87b7          	lui	a5,0xb1fe8
1c00908e:	968a                	add	a3,a3,sp
1c009090:	3d578793          	addi	a5,a5,981 # b1fe83d5 <__l2_shared_end+0x95fd83d5>
1c009094:	c29c                	sw	a5,0(a3)
1c009096:	8f070693          	addi	a3,a4,-1808
1c00909a:	405b07b7          	lui	a5,0x405b0
1c00909e:	968a                	add	a3,a3,sp
1c0090a0:	d2a78793          	addi	a5,a5,-726 # 405afd2a <__l2_shared_end+0x2459fd2a>
1c0090a4:	c29c                	sw	a5,0(a3)
1c0090a6:	8f470693          	addi	a3,a4,-1804
1c0090aa:	433bd7b7          	lui	a5,0x433bd
1c0090ae:	968a                	add	a3,a3,sp
1c0090b0:	32d78793          	addi	a5,a5,813 # 433bd32d <__l2_shared_end+0x273ad32d>
1c0090b4:	c29c                	sw	a5,0(a3)
1c0090b6:	8f870693          	addi	a3,a4,-1800
1c0090ba:	a45f47b7          	lui	a5,0xa45f4
1c0090be:	968a                	add	a3,a3,sp
1c0090c0:	f5478793          	addi	a5,a5,-172 # a45f3f54 <__l2_shared_end+0x885e3f54>
1c0090c4:	c29c                	sw	a5,0(a3)
1c0090c6:	8fc70713          	addi	a4,a4,-1796
1c0090ca:	8d6c47b7          	lui	a5,0x8d6c4
1c0090ce:	970a                	add	a4,a4,sp
1c0090d0:	3eb78793          	addi	a5,a5,1003 # 8d6c43eb <__l2_shared_end+0x716b43eb>
1c0090d4:	46010613          	addi	a2,sp,1120
1c0090d8:	c31c                	sw	a5,0(a4)
1c0090da:	85a6                	mv	a1,s1
1c0090dc:	8522                	mv	a0,s0
1c0090de:	515010ef          	jal	ra,1c00adf2 <PQCLEAN_KYBER768_CLEAN_crypto_kem_enc>
1c0090e2:	1c000537          	lui	a0,0x1c000
1c0090e6:	12450513          	addi	a0,a0,292 # 1c000124 <__clz_tab+0x108>
1c0090ea:	27f020ef          	jal	ra,1c00bb68 <puts>
1c0090ee:	1c000537          	lui	a0,0x1c000
1c0090f2:	13850513          	addi	a0,a0,312 # 1c000138 <__clz_tab+0x11c>
1c0090f6:	273020ef          	jal	ra,1c00bb68 <puts>
1c0090fa:	44000593          	li	a1,1088
1c0090fe:	8522                	mv	a0,s0
1c009100:	854ff0ef          	jal	ra,1c008154 <printbytes>
1c009104:	1c000537          	lui	a0,0x1c000
1c009108:	14050513          	addi	a0,a0,320 # 1c000140 <__clz_tab+0x124>
1c00910c:	25d020ef          	jal	ra,1c00bb68 <puts>
1c009110:	8526                	mv	a0,s1
1c009112:	02000593          	li	a1,32
1c009116:	83eff0ef          	jal	ra,1c008154 <printbytes>
1c00911a:	6115                	addi	sp,sp,288
1c00911c:	7ec12083          	lw	ra,2028(sp)
1c009120:	7e812403          	lw	s0,2024(sp)
1c009124:	7e412483          	lw	s1,2020(sp)
1c009128:	4501                	li	a0,0
1c00912a:	7f010113          	addi	sp,sp,2032
1c00912e:	8082                	ret

1c009130 <pos_fll_init>:
1c009130:	1101                	addi	sp,sp,-32
1c009132:	1a1005b7          	lui	a1,0x1a100
1c009136:	c64e                	sw	s3,12(sp)
1c009138:	00451613          	slli	a2,a0,0x4
1c00913c:	00458993          	addi	s3,a1,4 # 1a100004 <__CTOR_LIST__-0x1f00000>
1c009140:	99b2                	add	s3,s3,a2
1c009142:	0009a703          	lw	a4,0(s3)
1c009146:	ca26                	sw	s1,20(sp)
1c009148:	ce06                	sw	ra,28(sp)
1c00914a:	cc22                	sw	s0,24(sp)
1c00914c:	c84a                	sw	s2,16(sp)
1c00914e:	c452                	sw	s4,8(sp)
1c009150:	84aa                	mv	s1,a0
1c009152:	87ba                	mv	a5,a4
1c009154:	04074763          	bltz	a4,1c0091a2 <pos_fll_init+0x72>
1c009158:	00858693          	addi	a3,a1,8
1c00915c:	96b2                	add	a3,a3,a2
1c00915e:	429c                	lw	a5,0(a3)
1c009160:	f0000537          	lui	a0,0xf0000
1c009164:	3ff50513          	addi	a0,a0,1023 # f00003ff <__l2_shared_end+0xd3ff03ff>
1c009168:	8fe9                	and	a5,a5,a0
1c00916a:	00502537          	lui	a0,0x502
1c00916e:	80050513          	addi	a0,a0,-2048 # 501800 <__CTOR_LIST__-0x1bafe804>
1c009172:	8fc9                	or	a5,a5,a0
1c009174:	05b1                	addi	a1,a1,12
1c009176:	c29c                	sw	a5,0(a3)
1c009178:	962e                	add	a2,a2,a1
1c00917a:	4214                	lw	a3,0(a2)
1c00917c:	fc0107b7          	lui	a5,0xfc010
1c009180:	17fd                	addi	a5,a5,-1
1c009182:	01875593          	srli	a1,a4,0x18
1c009186:	8efd                	and	a3,a3,a5
1c009188:	0c05e593          	ori	a1,a1,192
1c00918c:	00871793          	slli	a5,a4,0x8
1c009190:	014c0537          	lui	a0,0x14c0
1c009194:	8ec9                	or	a3,a3,a0
1c009196:	05e2                	slli	a1,a1,0x18
1c009198:	83a1                	srli	a5,a5,0x8
1c00919a:	c214                	sw	a3,0(a2)
1c00919c:	8fcd                	or	a5,a5,a1
1c00919e:	00f9a023          	sw	a5,0(s3)
1c0091a2:	1c006437          	lui	s0,0x1c006
1c0091a6:	38840413          	addi	s0,s0,904 # 1c006388 <pos_fll_freq>
1c0091aa:	00249a13          	slli	s4,s1,0x2
1c0091ae:	014406b3          	add	a3,s0,s4
1c0091b2:	0006a903          	lw	s2,0(a3)
1c0091b6:	02091d63          	bnez	s2,1c0091f0 <pos_fll_init+0xc0>
1c0091ba:	83e9                	srli	a5,a5,0x1a
1c0091bc:	0742                	slli	a4,a4,0x10
1c0091be:	8341                	srli	a4,a4,0x10
1c0091c0:	8bbd                	andi	a5,a5,15
1c0091c2:	073e                	slli	a4,a4,0xf
1c0091c4:	17fd                	addi	a5,a5,-1
1c0091c6:	00f75933          	srl	s2,a4,a5
1c0091ca:	0126a023          	sw	s2,0(a3)
1c0091ce:	1c0066b7          	lui	a3,0x1c006
1c0091d2:	38068693          	addi	a3,a3,896 # 1c006380 <pos_fll_is_on>
1c0091d6:	96a6                	add	a3,a3,s1
1c0091d8:	4785                	li	a5,1
1c0091da:	00f68023          	sb	a5,0(a3)
1c0091de:	40f2                	lw	ra,28(sp)
1c0091e0:	4462                	lw	s0,24(sp)
1c0091e2:	44d2                	lw	s1,20(sp)
1c0091e4:	49b2                	lw	s3,12(sp)
1c0091e6:	4a22                	lw	s4,8(sp)
1c0091e8:	854a                	mv	a0,s2
1c0091ea:	4942                	lw	s2,16(sp)
1c0091ec:	6105                	addi	sp,sp,32
1c0091ee:	8082                	ret
1c0091f0:	854a                	mv	a0,s2
1c0091f2:	f17fe0ef          	jal	ra,1c008108 <__clzsi2>
1c0091f6:	1579                	addi	a0,a0,-2
1c0091f8:	8105                	srli	a0,a0,0x1
1c0091fa:	c939                	beqz	a0,1c009250 <pos_fll_init+0x120>
1c0091fc:	fff50613          	addi	a2,a0,-1 # 14bffff <__CTOR_LIST__-0x1ab40005>
1c009200:	1c0066b7          	lui	a3,0x1c006
1c009204:	4785                	li	a5,1
1c009206:	00c797b3          	sll	a5,a5,a2
1c00920a:	00a91733          	sll	a4,s2,a0
1c00920e:	38068693          	addi	a3,a3,896 # 1c006380 <pos_fll_is_on>
1c009212:	7661                	lui	a2,0xffff8
1c009214:	8e79                	and	a2,a2,a4
1c009216:	009685b3          	add	a1,a3,s1
1c00921a:	97b2                	add	a5,a5,a2
1c00921c:	0005c603          	lbu	a2,0(a1)
1c009220:	9452                	add	s0,s0,s4
1c009222:	00a7d7b3          	srl	a5,a5,a0
1c009226:	c01c                	sw	a5,0(s0)
1c009228:	d65d                	beqz	a2,1c0091d6 <pos_fll_init+0xa6>
1c00922a:	0009a783          	lw	a5,0(s3)
1c00922e:	833d                	srli	a4,a4,0xf
1c009230:	0742                	slli	a4,a4,0x10
1c009232:	7641                	lui	a2,0xffff0
1c009234:	8341                	srli	a4,a4,0x10
1c009236:	8ff1                	and	a5,a5,a2
1c009238:	8fd9                	or	a5,a5,a4
1c00923a:	0505                	addi	a0,a0,1
1c00923c:	c4000737          	lui	a4,0xc4000
1c009240:	893d                	andi	a0,a0,15
1c009242:	177d                	addi	a4,a4,-1
1c009244:	056a                	slli	a0,a0,0x1a
1c009246:	8ff9                	and	a5,a5,a4
1c009248:	8d5d                	or	a0,a0,a5
1c00924a:	00a9a023          	sw	a0,0(s3)
1c00924e:	b761                	j	1c0091d6 <pos_fll_init+0xa6>
1c009250:	4505                	li	a0,1
1c009252:	b76d                	j	1c0091fc <pos_fll_init+0xcc>

1c009254 <pos_fll_constructor>:
1c009254:	1c0067b7          	lui	a5,0x1c006
1c009258:	38878793          	addi	a5,a5,904 # 1c006388 <pos_fll_freq>
1c00925c:	0007a023          	sw	zero,0(a5)
1c009260:	0007a223          	sw	zero,4(a5)
1c009264:	1c0067b7          	lui	a5,0x1c006
1c009268:	38079023          	sh	zero,896(a5) # 1c006380 <pos_fll_is_on>
1c00926c:	8082                	ret

1c00926e <pos_soc_init>:
1c00926e:	1141                	addi	sp,sp,-16
1c009270:	c606                	sw	ra,12(sp)
1c009272:	c422                	sw	s0,8(sp)
1c009274:	37c5                	jal	1c009254 <pos_fll_constructor>
1c009276:	4501                	li	a0,0
1c009278:	3d65                	jal	1c009130 <pos_fll_init>
1c00927a:	1c006437          	lui	s0,0x1c006
1c00927e:	87aa                	mv	a5,a0
1c009280:	39040413          	addi	s0,s0,912 # 1c006390 <pos_freq_domains>
1c009284:	4505                	li	a0,1
1c009286:	c01c                	sw	a5,0(s0)
1c009288:	3565                	jal	1c009130 <pos_fll_init>
1c00928a:	40b2                	lw	ra,12(sp)
1c00928c:	c408                	sw	a0,8(s0)
1c00928e:	4422                	lw	s0,8(sp)
1c009290:	0141                	addi	sp,sp,16
1c009292:	8082                	ret

1c009294 <KeccakF1600_StatePermute>:
1c009294:	1a400837          	lui	a6,0x1a400
1c009298:	87aa                	mv	a5,a0
1c00929a:	0c850613          	addi	a2,a0,200
1c00929e:	1141                	addi	sp,sp,-16
1c0092a0:	40a80533          	sub	a0,a6,a0
1c0092a4:	4394                	lw	a3,0(a5)
1c0092a6:	00f50733          	add	a4,a0,a5
1c0092aa:	0791                	addi	a5,a5,4
1c0092ac:	c314                	sw	a3,0(a4)
1c0092ae:	fec79be3          	bne	a5,a2,1c0092a4 <KeccakF1600_StatePermute+0x10>
1c0092b2:	4785                	li	a5,1
1c0092b4:	18f82823          	sw	a5,400(a6) # 1a400190 <__CTOR_LIST__-0x1bffe74>
1c0092b8:	1a400737          	lui	a4,0x1a400
1c0092bc:	19472783          	lw	a5,404(a4) # 1a400194 <__CTOR_LIST__-0x1bffe70>
1c0092c0:	8b85                	andi	a5,a5,1
1c0092c2:	dfed                	beqz	a5,1c0092bc <KeccakF1600_StatePermute+0x28>
1c0092c4:	c602                	sw	zero,12(sp)
1c0092c6:	4732                	lw	a4,12(sp)
1c0092c8:	03100793          	li	a5,49
1c0092cc:	02e7c663          	blt	a5,a4,1c0092f8 <KeccakF1600_StatePermute+0x64>
1c0092d0:	1a400637          	lui	a2,0x1a400
1c0092d4:	0c860613          	addi	a2,a2,200 # 1a4000c8 <__CTOR_LIST__-0x1bfff3c>
1c0092d8:	03100513          	li	a0,49
1c0092dc:	4732                	lw	a4,12(sp)
1c0092de:	47b2                	lw	a5,12(sp)
1c0092e0:	070a                	slli	a4,a4,0x2
1c0092e2:	9732                	add	a4,a4,a2
1c0092e4:	4314                	lw	a3,0(a4)
1c0092e6:	4732                	lw	a4,12(sp)
1c0092e8:	078a                	slli	a5,a5,0x2
1c0092ea:	97ae                	add	a5,a5,a1
1c0092ec:	0705                	addi	a4,a4,1
1c0092ee:	c63a                	sw	a4,12(sp)
1c0092f0:	4732                	lw	a4,12(sp)
1c0092f2:	c394                	sw	a3,0(a5)
1c0092f4:	fee554e3          	bge	a0,a4,1c0092dc <KeccakF1600_StatePermute+0x48>
1c0092f8:	0141                	addi	sp,sp,16
1c0092fa:	8082                	ret

1c0092fc <KYBER_poly_ntt>:
1c0092fc:	1a4007b7          	lui	a5,0x1a400
1c009300:	4705                	li	a4,1
1c009302:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009306:	3007a423          	sw	zero,776(a5)
1c00930a:	20050693          	addi	a3,a0,512
1c00930e:	1a400737          	lui	a4,0x1a400
1c009312:	411c                	lw	a5,0(a0)
1c009314:	0511                	addi	a0,a0,4
1c009316:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c00931a:	fed51ce3          	bne	a0,a3,1c009312 <KYBER_poly_ntt+0x16>
1c00931e:	08000793          	li	a5,128
1c009322:	30f72423          	sw	a5,776(a4)
1c009326:	30072423          	sw	zero,776(a4)
1c00932a:	1a400737          	lui	a4,0x1a400
1c00932e:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c009332:	8b85                	andi	a5,a5,1
1c009334:	dfed                	beqz	a5,1c00932e <KYBER_poly_ntt+0x32>
1c009336:	47c1                	li	a5,16
1c009338:	30f72423          	sw	a5,776(a4)
1c00933c:	30072423          	sw	zero,776(a4)
1c009340:	20058693          	addi	a3,a1,512
1c009344:	1a400737          	lui	a4,0x1a400
1c009348:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c00934c:	0591                	addi	a1,a1,4
1c00934e:	fef5ae23          	sw	a5,-4(a1)
1c009352:	fed59be3          	bne	a1,a3,1c009348 <KYBER_poly_ntt+0x4c>
1c009356:	8082                	ret

1c009358 <KYBER_poly_intt>:
1c009358:	1a4007b7          	lui	a5,0x1a400
1c00935c:	4709                	li	a4,2
1c00935e:	30e7a423          	sw	a4,776(a5) # 1a400308 <__CTOR_LIST__-0x1bffcfc>
1c009362:	3007a423          	sw	zero,776(a5)
1c009366:	20050693          	addi	a3,a0,512
1c00936a:	1a400737          	lui	a4,0x1a400
1c00936e:	411c                	lw	a5,0(a0)
1c009370:	0511                	addi	a0,a0,4
1c009372:	30f72023          	sw	a5,768(a4) # 1a400300 <__CTOR_LIST__-0x1bffd04>
1c009376:	fed51ce3          	bne	a0,a3,1c00936e <KYBER_poly_intt+0x16>
1c00937a:	20000793          	li	a5,512
1c00937e:	30f72423          	sw	a5,776(a4)
1c009382:	30072423          	sw	zero,776(a4)
1c009386:	1a400737          	lui	a4,0x1a400
1c00938a:	30c72783          	lw	a5,780(a4) # 1a40030c <__CTOR_LIST__-0x1bffcf8>
1c00938e:	8b85                	andi	a5,a5,1
1c009390:	dfed                	beqz	a5,1c00938a <KYBER_poly_intt+0x32>
1c009392:	47c1                	li	a5,16
1c009394:	30f72423          	sw	a5,776(a4)
1c009398:	30072423          	sw	zero,776(a4)
1c00939c:	20058693          	addi	a3,a1,512
1c0093a0:	1a400737          	lui	a4,0x1a400
1c0093a4:	30472783          	lw	a5,772(a4) # 1a400304 <__CTOR_LIST__-0x1bffd00>
1c0093a8:	0591                	addi	a1,a1,4
1c0093aa:	fef5ae23          	sw	a5,-4(a1)
1c0093ae:	fed59be3          	bne	a1,a3,1c0093a4 <KYBER_poly_intt+0x4c>
1c0093b2:	8082                	ret

1c0093b4 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>:
1c0093b4:	1101                	addi	sp,sp,-32
1c0093b6:	55555f37          	lui	t5,0x55555
1c0093ba:	ce22                	sw	s0,28(sp)
1c0093bc:	cc26                	sw	s1,24(sp)
1c0093be:	ca4a                	sw	s2,20(sp)
1c0093c0:	c84e                	sw	s3,16(sp)
1c0093c2:	c652                	sw	s4,12(sp)
1c0093c4:	20050f93          	addi	t6,a0,512
1c0093c8:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0093cc:	0015c683          	lbu	a3,1(a1)
1c0093d0:	0005c603          	lbu	a2,0(a1)
1c0093d4:	0025c783          	lbu	a5,2(a1)
1c0093d8:	0035c703          	lbu	a4,3(a1)
1c0093dc:	06a2                	slli	a3,a3,0x8
1c0093de:	8ed1                	or	a3,a3,a2
1c0093e0:	07c2                	slli	a5,a5,0x10
1c0093e2:	8fd5                	or	a5,a5,a3
1c0093e4:	0762                	slli	a4,a4,0x18
1c0093e6:	8f5d                	or	a4,a4,a5
1c0093e8:	00175793          	srli	a5,a4,0x1
1c0093ec:	01e7f7b3          	and	a5,a5,t5
1c0093f0:	01e77733          	and	a4,a4,t5
1c0093f4:	97ba                	add	a5,a5,a4
1c0093f6:	0027da13          	srli	s4,a5,0x2
1c0093fa:	0047d313          	srli	t1,a5,0x4
1c0093fe:	0067d993          	srli	s3,a5,0x6
1c009402:	0087d893          	srli	a7,a5,0x8
1c009406:	00a7d913          	srli	s2,a5,0xa
1c00940a:	00c7d813          	srli	a6,a5,0xc
1c00940e:	00e7d493          	srli	s1,a5,0xe
1c009412:	0107d613          	srli	a2,a5,0x10
1c009416:	0127d413          	srli	s0,a5,0x12
1c00941a:	0147d693          	srli	a3,a5,0x14
1c00941e:	0167d393          	srli	t2,a5,0x16
1c009422:	0187d713          	srli	a4,a5,0x18
1c009426:	01a7d293          	srli	t0,a5,0x1a
1c00942a:	01c7de93          	srli	t4,a5,0x1c
1c00942e:	0037fe13          	andi	t3,a5,3
1c009432:	003a7a13          	andi	s4,s4,3
1c009436:	00337313          	andi	t1,t1,3
1c00943a:	0039f993          	andi	s3,s3,3
1c00943e:	0038f893          	andi	a7,a7,3
1c009442:	00397913          	andi	s2,s2,3
1c009446:	00387813          	andi	a6,a6,3
1c00944a:	888d                	andi	s1,s1,3
1c00944c:	8a0d                	andi	a2,a2,3
1c00944e:	880d                	andi	s0,s0,3
1c009450:	8a8d                	andi	a3,a3,3
1c009452:	0033f393          	andi	t2,t2,3
1c009456:	8b0d                	andi	a4,a4,3
1c009458:	0032f293          	andi	t0,t0,3
1c00945c:	003efe93          	andi	t4,t4,3
1c009460:	83f9                	srli	a5,a5,0x1e
1c009462:	414e0e33          	sub	t3,t3,s4
1c009466:	41330333          	sub	t1,t1,s3
1c00946a:	412888b3          	sub	a7,a7,s2
1c00946e:	40980833          	sub	a6,a6,s1
1c009472:	8e01                	sub	a2,a2,s0
1c009474:	407686b3          	sub	a3,a3,t2
1c009478:	40570733          	sub	a4,a4,t0
1c00947c:	40fe87b3          	sub	a5,t4,a5
1c009480:	01c51023          	sh	t3,0(a0)
1c009484:	00651123          	sh	t1,2(a0)
1c009488:	01151223          	sh	a7,4(a0)
1c00948c:	01051323          	sh	a6,6(a0)
1c009490:	00c51423          	sh	a2,8(a0)
1c009494:	00d51523          	sh	a3,10(a0)
1c009498:	00e51623          	sh	a4,12(a0)
1c00949c:	00f51723          	sh	a5,14(a0)
1c0094a0:	0541                	addi	a0,a0,16
1c0094a2:	0591                	addi	a1,a1,4
1c0094a4:	f3f514e3          	bne	a0,t6,1c0093cc <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1+0x18>
1c0094a8:	4472                	lw	s0,28(sp)
1c0094aa:	44e2                	lw	s1,24(sp)
1c0094ac:	4952                	lw	s2,20(sp)
1c0094ae:	49c2                	lw	s3,16(sp)
1c0094b0:	4a32                	lw	s4,12(sp)
1c0094b2:	6105                	addi	sp,sp,32
1c0094b4:	8082                	ret

1c0094b6 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>:
1c0094b6:	1101                	addi	sp,sp,-32
1c0094b8:	55555f37          	lui	t5,0x55555
1c0094bc:	ce22                	sw	s0,28(sp)
1c0094be:	cc26                	sw	s1,24(sp)
1c0094c0:	ca4a                	sw	s2,20(sp)
1c0094c2:	c84e                	sw	s3,16(sp)
1c0094c4:	c652                	sw	s4,12(sp)
1c0094c6:	20050f93          	addi	t6,a0,512
1c0094ca:	555f0f13          	addi	t5,t5,1365 # 55555555 <__l2_shared_end+0x39545555>
1c0094ce:	0015c683          	lbu	a3,1(a1)
1c0094d2:	0005c603          	lbu	a2,0(a1)
1c0094d6:	0025c783          	lbu	a5,2(a1)
1c0094da:	0035c703          	lbu	a4,3(a1)
1c0094de:	06a2                	slli	a3,a3,0x8
1c0094e0:	8ed1                	or	a3,a3,a2
1c0094e2:	07c2                	slli	a5,a5,0x10
1c0094e4:	8fd5                	or	a5,a5,a3
1c0094e6:	0762                	slli	a4,a4,0x18
1c0094e8:	8f5d                	or	a4,a4,a5
1c0094ea:	00175793          	srli	a5,a4,0x1
1c0094ee:	01e7f7b3          	and	a5,a5,t5
1c0094f2:	01e77733          	and	a4,a4,t5
1c0094f6:	97ba                	add	a5,a5,a4
1c0094f8:	0027da13          	srli	s4,a5,0x2
1c0094fc:	0047d313          	srli	t1,a5,0x4
1c009500:	0067d993          	srli	s3,a5,0x6
1c009504:	0087d893          	srli	a7,a5,0x8
1c009508:	00a7d913          	srli	s2,a5,0xa
1c00950c:	00c7d813          	srli	a6,a5,0xc
1c009510:	00e7d493          	srli	s1,a5,0xe
1c009514:	0107d613          	srli	a2,a5,0x10
1c009518:	0127d413          	srli	s0,a5,0x12
1c00951c:	0147d693          	srli	a3,a5,0x14
1c009520:	0167d393          	srli	t2,a5,0x16
1c009524:	0187d713          	srli	a4,a5,0x18
1c009528:	01a7d293          	srli	t0,a5,0x1a
1c00952c:	01c7de93          	srli	t4,a5,0x1c
1c009530:	0037fe13          	andi	t3,a5,3
1c009534:	003a7a13          	andi	s4,s4,3
1c009538:	00337313          	andi	t1,t1,3
1c00953c:	0039f993          	andi	s3,s3,3
1c009540:	0038f893          	andi	a7,a7,3
1c009544:	00397913          	andi	s2,s2,3
1c009548:	00387813          	andi	a6,a6,3
1c00954c:	888d                	andi	s1,s1,3
1c00954e:	8a0d                	andi	a2,a2,3
1c009550:	880d                	andi	s0,s0,3
1c009552:	8a8d                	andi	a3,a3,3
1c009554:	0033f393          	andi	t2,t2,3
1c009558:	8b0d                	andi	a4,a4,3
1c00955a:	0032f293          	andi	t0,t0,3
1c00955e:	003efe93          	andi	t4,t4,3
1c009562:	83f9                	srli	a5,a5,0x1e
1c009564:	414e0e33          	sub	t3,t3,s4
1c009568:	41330333          	sub	t1,t1,s3
1c00956c:	412888b3          	sub	a7,a7,s2
1c009570:	40980833          	sub	a6,a6,s1
1c009574:	8e01                	sub	a2,a2,s0
1c009576:	407686b3          	sub	a3,a3,t2
1c00957a:	40570733          	sub	a4,a4,t0
1c00957e:	40fe87b3          	sub	a5,t4,a5
1c009582:	01c51023          	sh	t3,0(a0)
1c009586:	00651123          	sh	t1,2(a0)
1c00958a:	01151223          	sh	a7,4(a0)
1c00958e:	01051323          	sh	a6,6(a0)
1c009592:	00c51423          	sh	a2,8(a0)
1c009596:	00d51523          	sh	a3,10(a0)
1c00959a:	00e51623          	sh	a4,12(a0)
1c00959e:	00f51723          	sh	a5,14(a0)
1c0095a2:	0541                	addi	a0,a0,16
1c0095a4:	0591                	addi	a1,a1,4
1c0095a6:	f3f514e3          	bne	a0,t6,1c0094ce <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2+0x18>
1c0095aa:	4472                	lw	s0,28(sp)
1c0095ac:	44e2                	lw	s1,24(sp)
1c0095ae:	4952                	lw	s2,20(sp)
1c0095b0:	49c2                	lw	s3,16(sp)
1c0095b2:	4a32                	lw	s4,12(sp)
1c0095b4:	6105                	addi	sp,sp,32
1c0095b6:	8082                	ret

1c0095b8 <keccak_absorb.constprop.1>:
1c0095b8:	7151                	addi	sp,sp,-240
1c0095ba:	d3a6                	sw	s1,228(sp)
1c0095bc:	cfce                	sw	s3,220(sp)
1c0095be:	cdd2                	sw	s4,216(sp)
1c0095c0:	cbd6                	sw	s5,212(sp)
1c0095c2:	84b6                	mv	s1,a3
1c0095c4:	d786                	sw	ra,236(sp)
1c0095c6:	d5a2                	sw	s0,232(sp)
1c0095c8:	d1ca                	sw	s2,224(sp)
1c0095ca:	c9da                	sw	s6,208(sp)
1c0095cc:	8a2a                	mv	s4,a0
1c0095ce:	87ae                	mv	a5,a1
1c0095d0:	8ab2                	mv	s5,a2
1c0095d2:	89aa                	mv	s3,a0
1c0095d4:	0c850693          	addi	a3,a0,200
1c0095d8:	872a                	mv	a4,a0
1c0095da:	4581                	li	a1,0
1c0095dc:	4601                	li	a2,0
1c0095de:	c30c                	sw	a1,0(a4)
1c0095e0:	c350                	sw	a2,4(a4)
1c0095e2:	0721                	addi	a4,a4,8
1c0095e4:	fee69be3          	bne	a3,a4,1c0095da <keccak_absorb.constprop.1+0x22>
1c0095e8:	08700713          	li	a4,135
1c0095ec:	09577363          	bgeu	a4,s5,1c009672 <keccak_absorb.constprop.1+0xba>
1c0095f0:	08878b13          	addi	s6,a5,136
1c0095f4:	895a                	mv	s2,s6
1c0095f6:	08700413          	li	s0,135
1c0095fa:	86d2                	mv	a3,s4
1c0095fc:	0017c703          	lbu	a4,1(a5)
1c009600:	0027ce03          	lbu	t3,2(a5)
1c009604:	0057c803          	lbu	a6,5(a5)
1c009608:	0047cf03          	lbu	t5,4(a5)
1c00960c:	0067c503          	lbu	a0,6(a5)
1c009610:	0007ce83          	lbu	t4,0(a5)
1c009614:	0037c583          	lbu	a1,3(a5)
1c009618:	0077c603          	lbu	a2,7(a5)
1c00961c:	0722                	slli	a4,a4,0x8
1c00961e:	0e42                	slli	t3,t3,0x10
1c009620:	0822                	slli	a6,a6,0x8
1c009622:	0006a303          	lw	t1,0(a3)
1c009626:	0046a883          	lw	a7,4(a3)
1c00962a:	01c76733          	or	a4,a4,t3
1c00962e:	01e86833          	or	a6,a6,t5
1c009632:	0542                	slli	a0,a0,0x10
1c009634:	01d76733          	or	a4,a4,t4
1c009638:	05e2                	slli	a1,a1,0x18
1c00963a:	01056533          	or	a0,a0,a6
1c00963e:	0662                	slli	a2,a2,0x18
1c009640:	8f4d                	or	a4,a4,a1
1c009642:	8e49                	or	a2,a2,a0
1c009644:	00e34733          	xor	a4,t1,a4
1c009648:	00c8c633          	xor	a2,a7,a2
1c00964c:	c298                	sw	a4,0(a3)
1c00964e:	c2d0                	sw	a2,4(a3)
1c009650:	07a1                	addi	a5,a5,8
1c009652:	06a1                	addi	a3,a3,8
1c009654:	faf914e3          	bne	s2,a5,1c0095fc <keccak_absorb.constprop.1+0x44>
1c009658:	85d2                	mv	a1,s4
1c00965a:	8552                	mv	a0,s4
1c00965c:	3925                	jal	1c009294 <KeccakF1600_StatePermute>
1c00965e:	f78a8a93          	addi	s5,s5,-136
1c009662:	08890913          	addi	s2,s2,136
1c009666:	87da                	mv	a5,s6
1c009668:	01547563          	bgeu	s0,s5,1c009672 <keccak_absorb.constprop.1+0xba>
1c00966c:	088b0b13          	addi	s6,s6,136
1c009670:	b769                	j	1c0095fa <keccak_absorb.constprop.1+0x42>
1c009672:	0038                	addi	a4,sp,8
1c009674:	09010e13          	addi	t3,sp,144
1c009678:	86ba                	mv	a3,a4
1c00967a:	0006a023          	sw	zero,0(a3)
1c00967e:	0691                	addi	a3,a3,4
1c009680:	fede1de3          	bne	t3,a3,1c00967a <keccak_absorb.constprop.1+0xc2>
1c009684:	080a8263          	beqz	s5,1c009708 <keccak_absorb.constprop.1+0x150>
1c009688:	fffa8693          	addi	a3,s5,-1
1c00968c:	4609                	li	a2,2
1c00968e:	10d67163          	bgeu	a2,a3,1c009790 <keccak_absorb.constprop.1+0x1d8>
1c009692:	ffcaf313          	andi	t1,s5,-4
1c009696:	86be                	mv	a3,a5
1c009698:	933e                	add	t1,t1,a5
1c00969a:	883a                	mv	a6,a4
1c00969c:	0016c503          	lbu	a0,1(a3)
1c0096a0:	0006c883          	lbu	a7,0(a3)
1c0096a4:	0026c583          	lbu	a1,2(a3)
1c0096a8:	0036c603          	lbu	a2,3(a3)
1c0096ac:	0522                	slli	a0,a0,0x8
1c0096ae:	01156533          	or	a0,a0,a7
1c0096b2:	05c2                	slli	a1,a1,0x10
1c0096b4:	8dc9                	or	a1,a1,a0
1c0096b6:	0662                	slli	a2,a2,0x18
1c0096b8:	8e4d                	or	a2,a2,a1
1c0096ba:	00c82023          	sw	a2,0(a6)
1c0096be:	0691                	addi	a3,a3,4
1c0096c0:	0811                	addi	a6,a6,4
1c0096c2:	fcd31de3          	bne	t1,a3,1c00969c <keccak_absorb.constprop.1+0xe4>
1c0096c6:	ffcaf693          	andi	a3,s5,-4
1c0096ca:	02da8f63          	beq	s5,a3,1c009708 <keccak_absorb.constprop.1+0x150>
1c0096ce:	00d78633          	add	a2,a5,a3
1c0096d2:	00064503          	lbu	a0,0(a2)
1c0096d6:	098c                	addi	a1,sp,208
1c0096d8:	95b6                	add	a1,a1,a3
1c0096da:	00168613          	addi	a2,a3,1
1c0096de:	f2a58c23          	sb	a0,-200(a1)
1c0096e2:	03567363          	bgeu	a2,s5,1c009708 <keccak_absorb.constprop.1+0x150>
1c0096e6:	00c785b3          	add	a1,a5,a2
1c0096ea:	0005c583          	lbu	a1,0(a1)
1c0096ee:	0988                	addi	a0,sp,208
1c0096f0:	962a                	add	a2,a2,a0
1c0096f2:	0689                	addi	a3,a3,2
1c0096f4:	f2b60c23          	sb	a1,-200(a2)
1c0096f8:	0156f863          	bgeu	a3,s5,1c009708 <keccak_absorb.constprop.1+0x150>
1c0096fc:	97b6                	add	a5,a5,a3
1c0096fe:	0007c783          	lbu	a5,0(a5)
1c009702:	96aa                	add	a3,a3,a0
1c009704:	f2f68c23          	sb	a5,-200(a3)
1c009708:	099c                	addi	a5,sp,208
1c00970a:	9abe                	add	s5,s5,a5
1c00970c:	f29a8c23          	sb	s1,-200(s5)
1c009710:	08f14783          	lbu	a5,143(sp)
1c009714:	f807e793          	ori	a5,a5,-128
1c009718:	08f107a3          	sb	a5,143(sp)
1c00971c:	00174783          	lbu	a5,1(a4)
1c009720:	00274303          	lbu	t1,2(a4)
1c009724:	00574503          	lbu	a0,5(a4)
1c009728:	00474f03          	lbu	t5,4(a4)
1c00972c:	00674583          	lbu	a1,6(a4)
1c009730:	00074e83          	lbu	t4,0(a4)
1c009734:	00374603          	lbu	a2,3(a4)
1c009738:	00774683          	lbu	a3,7(a4)
1c00973c:	07a2                	slli	a5,a5,0x8
1c00973e:	0342                	slli	t1,t1,0x10
1c009740:	0522                	slli	a0,a0,0x8
1c009742:	0009a883          	lw	a7,0(s3)
1c009746:	0049a803          	lw	a6,4(s3)
1c00974a:	0067e7b3          	or	a5,a5,t1
1c00974e:	01e56533          	or	a0,a0,t5
1c009752:	05c2                	slli	a1,a1,0x10
1c009754:	01d7e7b3          	or	a5,a5,t4
1c009758:	0662                	slli	a2,a2,0x18
1c00975a:	8dc9                	or	a1,a1,a0
1c00975c:	06e2                	slli	a3,a3,0x18
1c00975e:	8e5d                	or	a2,a2,a5
1c009760:	00b6e7b3          	or	a5,a3,a1
1c009764:	00c8c633          	xor	a2,a7,a2
1c009768:	00f847b3          	xor	a5,a6,a5
1c00976c:	00c9a023          	sw	a2,0(s3)
1c009770:	00f9a223          	sw	a5,4(s3)
1c009774:	0721                	addi	a4,a4,8
1c009776:	09a1                	addi	s3,s3,8
1c009778:	faee12e3          	bne	t3,a4,1c00971c <keccak_absorb.constprop.1+0x164>
1c00977c:	50be                	lw	ra,236(sp)
1c00977e:	542e                	lw	s0,232(sp)
1c009780:	549e                	lw	s1,228(sp)
1c009782:	590e                	lw	s2,224(sp)
1c009784:	49fe                	lw	s3,220(sp)
1c009786:	4a6e                	lw	s4,216(sp)
1c009788:	4ade                	lw	s5,212(sp)
1c00978a:	4b4e                	lw	s6,208(sp)
1c00978c:	616d                	addi	sp,sp,240
1c00978e:	8082                	ret
1c009790:	4681                	li	a3,0
1c009792:	bf35                	j	1c0096ce <keccak_absorb.constprop.1+0x116>

1c009794 <shake128_absorb>:
1c009794:	7151                	addi	sp,sp,-240
1c009796:	cfce                	sw	s3,220(sp)
1c009798:	89aa                	mv	s3,a0
1c00979a:	0c800513          	li	a0,200
1c00979e:	d5a2                	sw	s0,232(sp)
1c0097a0:	d3a6                	sw	s1,228(sp)
1c0097a2:	d786                	sw	ra,236(sp)
1c0097a4:	d1ca                	sw	s2,224(sp)
1c0097a6:	842e                	mv	s0,a1
1c0097a8:	84b2                	mv	s1,a2
1c0097aa:	598030ef          	jal	ra,1c00cd42 <pi_l2_malloc>
1c0097ae:	00a9a023          	sw	a0,0(s3)
1c0097b2:	1c050363          	beqz	a0,1c009978 <shake128_absorb+0x1e4>
1c0097b6:	892a                	mv	s2,a0
1c0097b8:	0c850713          	addi	a4,a0,200
1c0097bc:	87aa                	mv	a5,a0
1c0097be:	4601                	li	a2,0
1c0097c0:	4681                	li	a3,0
1c0097c2:	c390                	sw	a2,0(a5)
1c0097c4:	c3d4                	sw	a3,4(a5)
1c0097c6:	07a1                	addi	a5,a5,8
1c0097c8:	fef71be3          	bne	a4,a5,1c0097be <shake128_absorb+0x2a>
1c0097cc:	0a700793          	li	a5,167
1c0097d0:	0897f063          	bgeu	a5,s1,1c009850 <shake128_absorb+0xbc>
1c0097d4:	0a700993          	li	s3,167
1c0097d8:	87a2                	mv	a5,s0
1c0097da:	40890eb3          	sub	t4,s2,s0
1c0097de:	0a840413          	addi	s0,s0,168
1c0097e2:	0017c703          	lbu	a4,1(a5)
1c0097e6:	0027ce03          	lbu	t3,2(a5)
1c0097ea:	0057c503          	lbu	a0,5(a5)
1c0097ee:	0047cf83          	lbu	t6,4(a5)
1c0097f2:	0067c583          	lbu	a1,6(a5)
1c0097f6:	0007cf03          	lbu	t5,0(a5)
1c0097fa:	0037c603          	lbu	a2,3(a5)
1c0097fe:	0077c683          	lbu	a3,7(a5)
1c009802:	00fe8833          	add	a6,t4,a5
1c009806:	0722                	slli	a4,a4,0x8
1c009808:	0e42                	slli	t3,t3,0x10
1c00980a:	0522                	slli	a0,a0,0x8
1c00980c:	00082303          	lw	t1,0(a6)
1c009810:	00482883          	lw	a7,4(a6)
1c009814:	01c76733          	or	a4,a4,t3
1c009818:	01f56533          	or	a0,a0,t6
1c00981c:	05c2                	slli	a1,a1,0x10
1c00981e:	01e76733          	or	a4,a4,t5
1c009822:	0662                	slli	a2,a2,0x18
1c009824:	8dc9                	or	a1,a1,a0
1c009826:	06e2                	slli	a3,a3,0x18
1c009828:	8f51                	or	a4,a4,a2
1c00982a:	8ecd                	or	a3,a3,a1
1c00982c:	00e34733          	xor	a4,t1,a4
1c009830:	00d8c6b3          	xor	a3,a7,a3
1c009834:	00e82023          	sw	a4,0(a6)
1c009838:	00d82223          	sw	a3,4(a6)
1c00983c:	07a1                	addi	a5,a5,8
1c00983e:	faf412e3          	bne	s0,a5,1c0097e2 <shake128_absorb+0x4e>
1c009842:	f5848493          	addi	s1,s1,-168
1c009846:	85ca                	mv	a1,s2
1c009848:	854a                	mv	a0,s2
1c00984a:	34a9                	jal	1c009294 <KeccakF1600_StatePermute>
1c00984c:	f899e6e3          	bltu	s3,s1,1c0097d8 <shake128_absorb+0x44>
1c009850:	0b010313          	addi	t1,sp,176
1c009854:	003c                	addi	a5,sp,8
1c009856:	0007a023          	sw	zero,0(a5)
1c00985a:	0791                	addi	a5,a5,4
1c00985c:	fef31de3          	bne	t1,a5,1c009856 <shake128_absorb+0xc2>
1c009860:	c0d9                	beqz	s1,1c0098e6 <shake128_absorb+0x152>
1c009862:	fff48793          	addi	a5,s1,-1
1c009866:	4709                	li	a4,2
1c009868:	10f77663          	bgeu	a4,a5,1c009974 <shake128_absorb+0x1e0>
1c00986c:	ffc4f593          	andi	a1,s1,-4
1c009870:	87a2                	mv	a5,s0
1c009872:	95a2                	add	a1,a1,s0
1c009874:	0028                	addi	a0,sp,8
1c009876:	0017c603          	lbu	a2,1(a5)
1c00987a:	0007c803          	lbu	a6,0(a5)
1c00987e:	0027c683          	lbu	a3,2(a5)
1c009882:	0037c703          	lbu	a4,3(a5)
1c009886:	0622                	slli	a2,a2,0x8
1c009888:	01066633          	or	a2,a2,a6
1c00988c:	06c2                	slli	a3,a3,0x10
1c00988e:	8ed1                	or	a3,a3,a2
1c009890:	0762                	slli	a4,a4,0x18
1c009892:	8f55                	or	a4,a4,a3
1c009894:	c118                	sw	a4,0(a0)
1c009896:	0791                	addi	a5,a5,4
1c009898:	0511                	addi	a0,a0,4
1c00989a:	fcf59ee3          	bne	a1,a5,1c009876 <shake128_absorb+0xe2>
1c00989e:	ffc4f793          	andi	a5,s1,-4
1c0098a2:	04f48263          	beq	s1,a5,1c0098e6 <shake128_absorb+0x152>
1c0098a6:	00f40733          	add	a4,s0,a5
1c0098aa:	00074603          	lbu	a2,0(a4)
1c0098ae:	0994                	addi	a3,sp,208
1c0098b0:	96be                	add	a3,a3,a5
1c0098b2:	00178713          	addi	a4,a5,1
1c0098b6:	f2c68c23          	sb	a2,-200(a3)
1c0098ba:	02977663          	bgeu	a4,s1,1c0098e6 <shake128_absorb+0x152>
1c0098be:	00e406b3          	add	a3,s0,a4
1c0098c2:	0006c603          	lbu	a2,0(a3)
1c0098c6:	0994                	addi	a3,sp,208
1c0098c8:	96ba                	add	a3,a3,a4
1c0098ca:	f2c68c23          	sb	a2,-200(a3)
1c0098ce:	00278713          	addi	a4,a5,2
1c0098d2:	00977a63          	bgeu	a4,s1,1c0098e6 <shake128_absorb+0x152>
1c0098d6:	00e407b3          	add	a5,s0,a4
1c0098da:	0007c683          	lbu	a3,0(a5)
1c0098de:	099c                	addi	a5,sp,208
1c0098e0:	97ba                	add	a5,a5,a4
1c0098e2:	f2d78c23          	sb	a3,-200(a5)
1c0098e6:	099c                	addi	a5,sp,208
1c0098e8:	00978633          	add	a2,a5,s1
1c0098ec:	47fd                	li	a5,31
1c0098ee:	f2f60c23          	sb	a5,-200(a2)
1c0098f2:	0af14703          	lbu	a4,175(sp)
1c0098f6:	003c                	addi	a5,sp,8
1c0098f8:	40f90933          	sub	s2,s2,a5
1c0098fc:	f8076713          	ori	a4,a4,-128
1c009900:	0ae107a3          	sb	a4,175(sp)
1c009904:	0017c703          	lbu	a4,1(a5)
1c009908:	0027cf83          	lbu	t6,2(a5)
1c00990c:	0057c883          	lbu	a7,5(a5)
1c009910:	0047c503          	lbu	a0,4(a5)
1c009914:	0067c803          	lbu	a6,6(a5)
1c009918:	0007c583          	lbu	a1,0(a5)
1c00991c:	0037c603          	lbu	a2,3(a5)
1c009920:	0077c683          	lbu	a3,7(a5)
1c009924:	00f90e33          	add	t3,s2,a5
1c009928:	0722                	slli	a4,a4,0x8
1c00992a:	0fc2                	slli	t6,t6,0x10
1c00992c:	08a2                	slli	a7,a7,0x8
1c00992e:	000e2f03          	lw	t5,0(t3)
1c009932:	004e2e83          	lw	t4,4(t3)
1c009936:	01f76733          	or	a4,a4,t6
1c00993a:	00a8e8b3          	or	a7,a7,a0
1c00993e:	0842                	slli	a6,a6,0x10
1c009940:	8f4d                	or	a4,a4,a1
1c009942:	0662                	slli	a2,a2,0x18
1c009944:	01186833          	or	a6,a6,a7
1c009948:	06e2                	slli	a3,a3,0x18
1c00994a:	8f51                	or	a4,a4,a2
1c00994c:	0106e6b3          	or	a3,a3,a6
1c009950:	00ef4733          	xor	a4,t5,a4
1c009954:	00dec6b3          	xor	a3,t4,a3
1c009958:	00ee2023          	sw	a4,0(t3)
1c00995c:	00de2223          	sw	a3,4(t3)
1c009960:	07a1                	addi	a5,a5,8
1c009962:	faf311e3          	bne	t1,a5,1c009904 <shake128_absorb+0x170>
1c009966:	50be                	lw	ra,236(sp)
1c009968:	542e                	lw	s0,232(sp)
1c00996a:	549e                	lw	s1,228(sp)
1c00996c:	590e                	lw	s2,224(sp)
1c00996e:	49fe                	lw	s3,220(sp)
1c009970:	616d                	addi	sp,sp,240
1c009972:	8082                	ret
1c009974:	4781                	li	a5,0
1c009976:	bf05                	j	1c0098a6 <shake128_absorb+0x112>
1c009978:	06f00513          	li	a0,111
1c00997c:	292020ef          	jal	ra,1c00bc0e <exit>

1c009980 <shake128_squeezeblocks>:
1c009980:	1101                	addi	sp,sp,-32
1c009982:	c05a                	sw	s6,0(sp)
1c009984:	ce06                	sw	ra,28(sp)
1c009986:	cc22                	sw	s0,24(sp)
1c009988:	ca26                	sw	s1,20(sp)
1c00998a:	c84a                	sw	s2,16(sp)
1c00998c:	c64e                	sw	s3,12(sp)
1c00998e:	c452                	sw	s4,8(sp)
1c009990:	c256                	sw	s5,4(sp)
1c009992:	00062b03          	lw	s6,0(a2)
1c009996:	c5e9                	beqz	a1,1c009a60 <shake128_squeezeblocks+0xe0>
1c009998:	7ac1                	lui	s5,0xffff0
1c00999a:	ff010a37          	lui	s4,0xff010
1c00999e:	010009b7          	lui	s3,0x1000
1c0099a2:	84ae                	mv	s1,a1
1c0099a4:	892a                	mv	s2,a0
1c0099a6:	0a8b0413          	addi	s0,s6,168
1c0099aa:	0ffa8a93          	addi	s5,s5,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c0099ae:	1a7d                	addi	s4,s4,-1
1c0099b0:	19fd                	addi	s3,s3,-1
1c0099b2:	85da                	mv	a1,s6
1c0099b4:	855a                	mv	a0,s6
1c0099b6:	38f9                	jal	1c009294 <KeccakF1600_StatePermute>
1c0099b8:	85da                	mv	a1,s6
1c0099ba:	00490813          	addi	a6,s2,4
1c0099be:	4198                	lw	a4,0(a1)
1c0099c0:	41dc                	lw	a5,4(a1)
1c0099c2:	05a1                	addi	a1,a1,8
1c0099c4:	00875893          	srli	a7,a4,0x8
1c0099c8:	0087d513          	srli	a0,a5,0x8
1c0099cc:	0ff77613          	andi	a2,a4,255
1c0099d0:	0ff7f693          	andi	a3,a5,255
1c0099d4:	0ff8f893          	andi	a7,a7,255
1c0099d8:	0ff57513          	andi	a0,a0,255
1c0099dc:	08a2                	slli	a7,a7,0x8
1c0099de:	0522                	slli	a0,a0,0x8
1c0099e0:	01567633          	and	a2,a2,s5
1c0099e4:	0156f6b3          	and	a3,a3,s5
1c0099e8:	01166633          	or	a2,a2,a7
1c0099ec:	8ec9                	or	a3,a3,a0
1c0099ee:	00ff08b7          	lui	a7,0xff0
1c0099f2:	00ff0537          	lui	a0,0xff0
1c0099f6:	011778b3          	and	a7,a4,a7
1c0099fa:	8d7d                	and	a0,a0,a5
1c0099fc:	01467633          	and	a2,a2,s4
1c009a00:	0146f6b3          	and	a3,a3,s4
1c009a04:	01166633          	or	a2,a2,a7
1c009a08:	8ec9                	or	a3,a3,a0
1c009a0a:	8361                	srli	a4,a4,0x18
1c009a0c:	83e1                	srli	a5,a5,0x18
1c009a0e:	01367633          	and	a2,a2,s3
1c009a12:	0136f6b3          	and	a3,a3,s3
1c009a16:	0762                	slli	a4,a4,0x18
1c009a18:	07e2                	slli	a5,a5,0x18
1c009a1a:	8f51                	or	a4,a4,a2
1c009a1c:	8fd5                	or	a5,a5,a3
1c009a1e:	00875e13          	srli	t3,a4,0x8
1c009a22:	01075313          	srli	t1,a4,0x10
1c009a26:	0087d893          	srli	a7,a5,0x8
1c009a2a:	0107d513          	srli	a0,a5,0x10
1c009a2e:	8361                	srli	a4,a4,0x18
1c009a30:	83e1                	srli	a5,a5,0x18
1c009a32:	fec80e23          	sb	a2,-4(a6)
1c009a36:	ffc80ea3          	sb	t3,-3(a6)
1c009a3a:	fe680f23          	sb	t1,-2(a6)
1c009a3e:	fee80fa3          	sb	a4,-1(a6)
1c009a42:	00d80023          	sb	a3,0(a6)
1c009a46:	011800a3          	sb	a7,1(a6)
1c009a4a:	00a80123          	sb	a0,2(a6)
1c009a4e:	00f801a3          	sb	a5,3(a6)
1c009a52:	0821                	addi	a6,a6,8
1c009a54:	f6b415e3          	bne	s0,a1,1c0099be <shake128_squeezeblocks+0x3e>
1c009a58:	14fd                	addi	s1,s1,-1
1c009a5a:	0a890913          	addi	s2,s2,168
1c009a5e:	f8b1                	bnez	s1,1c0099b2 <shake128_squeezeblocks+0x32>
1c009a60:	40f2                	lw	ra,28(sp)
1c009a62:	4462                	lw	s0,24(sp)
1c009a64:	44d2                	lw	s1,20(sp)
1c009a66:	4942                	lw	s2,16(sp)
1c009a68:	49b2                	lw	s3,12(sp)
1c009a6a:	4a22                	lw	s4,8(sp)
1c009a6c:	4a92                	lw	s5,4(sp)
1c009a6e:	4b02                	lw	s6,0(sp)
1c009a70:	6105                	addi	sp,sp,32
1c009a72:	8082                	ret

1c009a74 <shake128_ctx_release>:
1c009a74:	4108                	lw	a0,0(a0)
1c009a76:	0c800593          	li	a1,200
1c009a7a:	2d40306f          	j	1c00cd4e <pi_l2_free>

1c009a7e <shake256>:
1c009a7e:	7131                	addi	sp,sp,-192
1c009a80:	db26                	sw	s1,180(sp)
1c009a82:	d74e                	sw	s3,172(sp)
1c009a84:	84aa                	mv	s1,a0
1c009a86:	08800993          	li	s3,136
1c009a8a:	0c800513          	li	a0,200
1c009a8e:	dd22                	sw	s0,184(sp)
1c009a90:	d94a                	sw	s2,176(sp)
1c009a92:	d356                	sw	s5,164(sp)
1c009a94:	df06                	sw	ra,188(sp)
1c009a96:	d552                	sw	s4,168(sp)
1c009a98:	d15a                	sw	s6,160(sp)
1c009a9a:	cf5e                	sw	s7,156(sp)
1c009a9c:	cd62                	sw	s8,152(sp)
1c009a9e:	0335d9b3          	divu	s3,a1,s3
1c009aa2:	892e                	mv	s2,a1
1c009aa4:	8432                	mv	s0,a2
1c009aa6:	8ab6                	mv	s5,a3
1c009aa8:	29a030ef          	jal	ra,1c00cd42 <pi_l2_malloc>
1c009aac:	24050763          	beqz	a0,1c009cfa <shake256+0x27c>
1c009ab0:	46fd                	li	a3,31
1c009ab2:	8656                	mv	a2,s5
1c009ab4:	85a2                	mv	a1,s0
1c009ab6:	8a2a                	mv	s4,a0
1c009ab8:	3601                	jal	1c0095b8 <keccak_absorb.constprop.1>
1c009aba:	08700793          	li	a5,135
1c009abe:	0d27ff63          	bgeu	a5,s2,1c009b9c <shake256+0x11e>
1c009ac2:	00499413          	slli	s0,s3,0x4
1c009ac6:	944e                	add	s0,s0,s3
1c009ac8:	040e                	slli	s0,s0,0x3
1c009aca:	7bc1                	lui	s7,0xffff0
1c009acc:	ff010b37          	lui	s6,0xff010
1c009ad0:	01000ab7          	lui	s5,0x1000
1c009ad4:	9426                	add	s0,s0,s1
1c009ad6:	8c26                	mv	s8,s1
1c009ad8:	0ffb8b93          	addi	s7,s7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009adc:	1b7d                	addi	s6,s6,-1
1c009ade:	1afd                	addi	s5,s5,-1
1c009ae0:	85d2                	mv	a1,s4
1c009ae2:	8552                	mv	a0,s4
1c009ae4:	fb0ff0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c009ae8:	87e2                	mv	a5,s8
1c009aea:	418a0533          	sub	a0,s4,s8
1c009aee:	088c0593          	addi	a1,s8,136
1c009af2:	00f50733          	add	a4,a0,a5
1c009af6:	4314                	lw	a3,0(a4)
1c009af8:	4358                	lw	a4,4(a4)
1c009afa:	07a1                	addi	a5,a5,8
1c009afc:	0086d313          	srli	t1,a3,0x8
1c009b00:	00875893          	srli	a7,a4,0x8
1c009b04:	0ff6f813          	andi	a6,a3,255
1c009b08:	0ff77613          	andi	a2,a4,255
1c009b0c:	0ff37313          	andi	t1,t1,255
1c009b10:	0ff8f893          	andi	a7,a7,255
1c009b14:	0322                	slli	t1,t1,0x8
1c009b16:	08a2                	slli	a7,a7,0x8
1c009b18:	01787833          	and	a6,a6,s7
1c009b1c:	01767633          	and	a2,a2,s7
1c009b20:	00686833          	or	a6,a6,t1
1c009b24:	01166633          	or	a2,a2,a7
1c009b28:	00ff0337          	lui	t1,0xff0
1c009b2c:	00ff08b7          	lui	a7,0xff0
1c009b30:	0066f333          	and	t1,a3,t1
1c009b34:	011778b3          	and	a7,a4,a7
1c009b38:	01687833          	and	a6,a6,s6
1c009b3c:	01667633          	and	a2,a2,s6
1c009b40:	00686833          	or	a6,a6,t1
1c009b44:	01166633          	or	a2,a2,a7
1c009b48:	82e1                	srli	a3,a3,0x18
1c009b4a:	8361                	srli	a4,a4,0x18
1c009b4c:	01587833          	and	a6,a6,s5
1c009b50:	01567633          	and	a2,a2,s5
1c009b54:	06e2                	slli	a3,a3,0x18
1c009b56:	0762                	slli	a4,a4,0x18
1c009b58:	00d866b3          	or	a3,a6,a3
1c009b5c:	8f51                	or	a4,a4,a2
1c009b5e:	0086de93          	srli	t4,a3,0x8
1c009b62:	0106de13          	srli	t3,a3,0x10
1c009b66:	00875313          	srli	t1,a4,0x8
1c009b6a:	01075893          	srli	a7,a4,0x10
1c009b6e:	82e1                	srli	a3,a3,0x18
1c009b70:	8361                	srli	a4,a4,0x18
1c009b72:	ff078c23          	sb	a6,-8(a5)
1c009b76:	ffd78ca3          	sb	t4,-7(a5)
1c009b7a:	ffc78d23          	sb	t3,-6(a5)
1c009b7e:	fed78da3          	sb	a3,-5(a5)
1c009b82:	fec78e23          	sb	a2,-4(a5)
1c009b86:	fe678ea3          	sb	t1,-3(a5)
1c009b8a:	ff178f23          	sb	a7,-2(a5)
1c009b8e:	fee78fa3          	sb	a4,-1(a5)
1c009b92:	f6f590e3          	bne	a1,a5,1c009af2 <shake256+0x74>
1c009b96:	8c2e                	mv	s8,a1
1c009b98:	f48594e3          	bne	a1,s0,1c009ae0 <shake256+0x62>
1c009b9c:	08800593          	li	a1,136
1c009ba0:	02b97933          	remu	s2,s2,a1
1c009ba4:	02091263          	bnez	s2,1c009bc8 <shake256+0x14a>
1c009ba8:	546a                	lw	s0,184(sp)
1c009baa:	50fa                	lw	ra,188(sp)
1c009bac:	54da                	lw	s1,180(sp)
1c009bae:	594a                	lw	s2,176(sp)
1c009bb0:	59ba                	lw	s3,172(sp)
1c009bb2:	5a9a                	lw	s5,164(sp)
1c009bb4:	5b0a                	lw	s6,160(sp)
1c009bb6:	4bfa                	lw	s7,156(sp)
1c009bb8:	4c6a                	lw	s8,152(sp)
1c009bba:	8552                	mv	a0,s4
1c009bbc:	5a2a                	lw	s4,168(sp)
1c009bbe:	0c800593          	li	a1,200
1c009bc2:	6129                	addi	sp,sp,192
1c009bc4:	18a0306f          	j	1c00cd4e <pi_l2_free>
1c009bc8:	85d2                	mv	a1,s4
1c009bca:	8552                	mv	a0,s4
1c009bcc:	ec8ff0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c009bd0:	002c                	addi	a1,sp,8
1c009bd2:	78c1                	lui	a7,0xffff0
1c009bd4:	ff010837          	lui	a6,0xff010
1c009bd8:	01000537          	lui	a0,0x1000
1c009bdc:	09010e13          	addi	t3,sp,144
1c009be0:	862e                	mv	a2,a1
1c009be2:	40ba0333          	sub	t1,s4,a1
1c009be6:	0ff88893          	addi	a7,a7,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c009bea:	187d                	addi	a6,a6,-1
1c009bec:	157d                	addi	a0,a0,-1
1c009bee:	00c307b3          	add	a5,t1,a2
1c009bf2:	0007ae83          	lw	t4,0(a5)
1c009bf6:	43d4                	lw	a3,4(a5)
1c009bf8:	0621                	addi	a2,a2,8
1c009bfa:	008edf93          	srli	t6,t4,0x8
1c009bfe:	0086df13          	srli	t5,a3,0x8
1c009c02:	0ffef713          	andi	a4,t4,255
1c009c06:	0ff6f793          	andi	a5,a3,255
1c009c0a:	0fffff93          	andi	t6,t6,255
1c009c0e:	0fff7f13          	andi	t5,t5,255
1c009c12:	0fa2                	slli	t6,t6,0x8
1c009c14:	0f22                	slli	t5,t5,0x8
1c009c16:	01177733          	and	a4,a4,a7
1c009c1a:	0117f7b3          	and	a5,a5,a7
1c009c1e:	01f76733          	or	a4,a4,t6
1c009c22:	01e7e7b3          	or	a5,a5,t5
1c009c26:	00ff0fb7          	lui	t6,0xff0
1c009c2a:	00ff0f37          	lui	t5,0xff0
1c009c2e:	01feffb3          	and	t6,t4,t6
1c009c32:	01e6ff33          	and	t5,a3,t5
1c009c36:	01077733          	and	a4,a4,a6
1c009c3a:	0107f7b3          	and	a5,a5,a6
1c009c3e:	01f76733          	or	a4,a4,t6
1c009c42:	018ede93          	srli	t4,t4,0x18
1c009c46:	01e7e7b3          	or	a5,a5,t5
1c009c4a:	82e1                	srli	a3,a3,0x18
1c009c4c:	0ee2                	slli	t4,t4,0x18
1c009c4e:	8f69                	and	a4,a4,a0
1c009c50:	06e2                	slli	a3,a3,0x18
1c009c52:	8fe9                	and	a5,a5,a0
1c009c54:	01d76733          	or	a4,a4,t4
1c009c58:	8fd5                	or	a5,a5,a3
1c009c5a:	fee62c23          	sw	a4,-8(a2)
1c009c5e:	fef62e23          	sw	a5,-4(a2)
1c009c62:	f8ce16e3          	bne	t3,a2,1c009bee <shake256+0x170>
1c009c66:	fff90793          	addi	a5,s2,-1
1c009c6a:	4709                	li	a4,2
1c009c6c:	08f77363          	bgeu	a4,a5,1c009cf2 <shake256+0x274>
1c009c70:	00499413          	slli	s0,s3,0x4
1c009c74:	013407b3          	add	a5,s0,s3
1c009c78:	078e                	slli	a5,a5,0x3
1c009c7a:	97a6                	add	a5,a5,s1
1c009c7c:	0fc97813          	andi	a6,s2,252
1c009c80:	983e                	add	a6,a6,a5
1c009c82:	4198                	lw	a4,0(a1)
1c009c84:	0791                	addi	a5,a5,4
1c009c86:	0591                	addi	a1,a1,4
1c009c88:	00875513          	srli	a0,a4,0x8
1c009c8c:	01075613          	srli	a2,a4,0x10
1c009c90:	01875693          	srli	a3,a4,0x18
1c009c94:	fea78ea3          	sb	a0,-3(a5)
1c009c98:	fec78f23          	sb	a2,-2(a5)
1c009c9c:	fed78fa3          	sb	a3,-1(a5)
1c009ca0:	fee78e23          	sb	a4,-4(a5)
1c009ca4:	fcf81fe3          	bne	a6,a5,1c009c82 <shake256+0x204>
1c009ca8:	ffc97793          	andi	a5,s2,-4
1c009cac:	eef90ee3          	beq	s2,a5,1c009ba8 <shake256+0x12a>
1c009cb0:	0918                	addi	a4,sp,144
1c009cb2:	973e                	add	a4,a4,a5
1c009cb4:	99a2                	add	s3,s3,s0
1c009cb6:	f7874683          	lbu	a3,-136(a4)
1c009cba:	098e                	slli	s3,s3,0x3
1c009cbc:	99a6                	add	s3,s3,s1
1c009cbe:	00f98733          	add	a4,s3,a5
1c009cc2:	00d70023          	sb	a3,0(a4)
1c009cc6:	00178713          	addi	a4,a5,1
1c009cca:	ed277fe3          	bgeu	a4,s2,1c009ba8 <shake256+0x12a>
1c009cce:	0914                	addi	a3,sp,144
1c009cd0:	96ba                	add	a3,a3,a4
1c009cd2:	f786c683          	lbu	a3,-136(a3)
1c009cd6:	974e                	add	a4,a4,s3
1c009cd8:	0789                	addi	a5,a5,2
1c009cda:	00d70023          	sb	a3,0(a4)
1c009cde:	ed27f5e3          	bgeu	a5,s2,1c009ba8 <shake256+0x12a>
1c009ce2:	0918                	addi	a4,sp,144
1c009ce4:	973e                	add	a4,a4,a5
1c009ce6:	f7874703          	lbu	a4,-136(a4)
1c009cea:	99be                	add	s3,s3,a5
1c009cec:	00e98023          	sb	a4,0(s3) # 1000000 <__CTOR_LIST__-0x1b000004>
1c009cf0:	bd65                	j	1c009ba8 <shake256+0x12a>
1c009cf2:	4781                	li	a5,0
1c009cf4:	00499413          	slli	s0,s3,0x4
1c009cf8:	bf65                	j	1c009cb0 <shake256+0x232>
1c009cfa:	06f00513          	li	a0,111
1c009cfe:	711010ef          	jal	ra,1c00bc0e <exit>

1c009d02 <sha3_256>:
1c009d02:	712d                	addi	sp,sp,-288
1c009d04:	10812c23          	sw	s0,280(sp)
1c009d08:	4699                	li	a3,6
1c009d0a:	842a                	mv	s0,a0
1c009d0c:	0828                	addi	a0,sp,24
1c009d0e:	10112e23          	sw	ra,284(sp)
1c009d12:	10912a23          	sw	s1,276(sp)
1c009d16:	11212823          	sw	s2,272(sp)
1c009d1a:	11312623          	sw	s3,268(sp)
1c009d1e:	11412423          	sw	s4,264(sp)
1c009d22:	11512223          	sw	s5,260(sp)
1c009d26:	11612023          	sw	s6,256(sp)
1c009d2a:	dfde                	sw	s7,252(sp)
1c009d2c:	dde2                	sw	s8,248(sp)
1c009d2e:	dbe6                	sw	s9,244(sp)
1c009d30:	d9ea                	sw	s10,240(sp)
1c009d32:	d7ee                	sw	s11,236(sp)
1c009d34:	3051                	jal	1c0095b8 <keccak_absorb.constprop.1>
1c009d36:	082c                	addi	a1,sp,24
1c009d38:	852e                	mv	a0,a1
1c009d3a:	d5aff0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c009d3e:	4372                	lw	t1,28(sp)
1c009d40:	5612                	lw	a2,36(sp)
1c009d42:	5732                	lw	a4,44(sp)
1c009d44:	5582                	lw	a1,32(sp)
1c009d46:	56a2                	lw	a3,40(sp)
1c009d48:	59d2                	lw	s3,52(sp)
1c009d4a:	4ae2                	lw	s5,24(sp)
1c009d4c:	00835293          	srli	t0,t1,0x8
1c009d50:	00865f13          	srli	t5,a2,0x8
1c009d54:	00875893          	srli	a7,a4,0x8
1c009d58:	5a42                	lw	s4,48(sp)
1c009d5a:	0085df93          	srli	t6,a1,0x8
1c009d5e:	0086de93          	srli	t4,a3,0x8
1c009d62:	0ff2f293          	andi	t0,t0,255
1c009d66:	0fff7f13          	andi	t5,t5,255
1c009d6a:	0ff8f893          	andi	a7,a7,255
1c009d6e:	0ff37b93          	andi	s7,t1,255
1c009d72:	0ff67913          	andi	s2,a2,255
1c009d76:	0ff77e13          	andi	t3,a4,255
1c009d7a:	008ad393          	srli	t2,s5,0x8
1c009d7e:	0089d513          	srli	a0,s3,0x8
1c009d82:	0fffff93          	andi	t6,t6,255
1c009d86:	0ffefe93          	andi	t4,t4,255
1c009d8a:	02a2                	slli	t0,t0,0x8
1c009d8c:	0f22                	slli	t5,t5,0x8
1c009d8e:	08a2                	slli	a7,a7,0x8
1c009d90:	ff0107b7          	lui	a5,0xff010
1c009d94:	17fd                	addi	a5,a5,-1
1c009d96:	0ff5fb13          	andi	s6,a1,255
1c009d9a:	0ff6f493          	andi	s1,a3,255
1c009d9e:	005be2b3          	or	t0,s7,t0
1c009da2:	01e96f33          	or	t5,s2,t5
1c009da6:	011e68b3          	or	a7,t3,a7
1c009daa:	0ff3f393          	andi	t2,t2,255
1c009dae:	0fa2                	slli	t6,t6,0x8
1c009db0:	0ea2                	slli	t4,t4,0x8
1c009db2:	0ff57513          	andi	a0,a0,255
1c009db6:	00ff0bb7          	lui	s7,0xff0
1c009dba:	0ffafc13          	andi	s8,s5,255
1c009dbe:	0ff9f913          	andi	s2,s3,255
1c009dc2:	01767bb3          	and	s7,a2,s7
1c009dc6:	00f8fe33          	and	t3,a7,a5
1c009dca:	008a5813          	srli	a6,s4,0x8
1c009dce:	01fb6fb3          	or	t6,s6,t6
1c009dd2:	01d4eeb3          	or	t4,s1,t4
1c009dd6:	00ff7f33          	and	t5,t5,a5
1c009dda:	010008b7          	lui	a7,0x1000
1c009dde:	03a2                	slli	t2,t2,0x8
1c009de0:	0522                	slli	a0,a0,0x8
1c009de2:	00ff04b7          	lui	s1,0xff0
1c009de6:	00ff0b37          	lui	s6,0xff0
1c009dea:	8cf5                	and	s1,s1,a3
1c009dec:	01677b33          	and	s6,a4,s6
1c009df0:	00a96533          	or	a0,s2,a0
1c009df4:	007c63b3          	or	t2,s8,t2
1c009df8:	fff88913          	addi	s2,a7,-1 # ffffff <__CTOR_LIST__-0x1b000005>
1c009dfc:	00fefeb3          	and	t4,t4,a5
1c009e00:	017f6f33          	or	t5,t5,s7
1c009e04:	0ff87813          	andi	a6,a6,255
1c009e08:	00ff0c37          	lui	s8,0xff0
1c009e0c:	8261                	srli	a2,a2,0x18
1c009e0e:	0ffa7d93          	andi	s11,s4,255
1c009e12:	0185fc33          	and	s8,a1,s8
1c009e16:	012f7f33          	and	t5,t5,s2
1c009e1a:	00ffffb3          	and	t6,t6,a5
1c009e1e:	009eeeb3          	or	t4,t4,s1
1c009e22:	016e6e33          	or	t3,t3,s6
1c009e26:	8361                	srli	a4,a4,0x18
1c009e28:	0822                	slli	a6,a6,0x8
1c009e2a:	00ff0d37          	lui	s10,0xff0
1c009e2e:	82e1                	srli	a3,a3,0x18
1c009e30:	0662                	slli	a2,a2,0x18
1c009e32:	01aafd33          	and	s10,s5,s10
1c009e36:	010de833          	or	a6,s11,a6
1c009e3a:	012efeb3          	and	t4,t4,s2
1c009e3e:	012e7e33          	and	t3,t3,s2
1c009e42:	00cf6633          	or	a2,t5,a2
1c009e46:	018ada93          	srli	s5,s5,0x18
1c009e4a:	018fefb3          	or	t6,t6,s8
1c009e4e:	06e2                	slli	a3,a3,0x18
1c009e50:	01871c13          	slli	s8,a4,0x18
1c009e54:	00ff0bb7          	lui	s7,0xff0
1c009e58:	00f87b33          	and	s6,a6,a5
1c009e5c:	00dee4b3          	or	s1,t4,a3
1c009e60:	017a7bb3          	and	s7,s4,s7
1c009e64:	018e66b3          	or	a3,t3,s8
1c009e68:	018a9813          	slli	a6,s5,0x18
1c009e6c:	018a5713          	srli	a4,s4,0x18
1c009e70:	00865a93          	srli	s5,a2,0x8
1c009e74:	01065a13          	srli	s4,a2,0x10
1c009e78:	00ff0cb7          	lui	s9,0xff0
1c009e7c:	8261                	srli	a2,a2,0x18
1c009e7e:	c232                	sw	a2,4(sp)
1c009e80:	01937cb3          	and	s9,t1,s9
1c009e84:	0086d613          	srli	a2,a3,0x8
1c009e88:	00f3f3b3          	and	t2,t2,a5
1c009e8c:	00f2f2b3          	and	t0,t0,a5
1c009e90:	c432                	sw	a2,8(sp)
1c009e92:	01a3e3b3          	or	t2,t2,s10
1c009e96:	0106d613          	srli	a2,a3,0x10
1c009e9a:	0192e2b3          	or	t0,t0,s9
1c009e9e:	01835313          	srli	t1,t1,0x18
1c009ea2:	81e1                	srli	a1,a1,0x18
1c009ea4:	00ff08b7          	lui	a7,0xff0
1c009ea8:	8fe9                	and	a5,a5,a0
1c009eaa:	0123f3b3          	and	t2,t2,s2
1c009eae:	0122f2b3          	and	t0,t0,s2
1c009eb2:	012fffb3          	and	t6,t6,s2
1c009eb6:	c632                	sw	a2,12(sp)
1c009eb8:	0119f8b3          	and	a7,s3,a7
1c009ebc:	4612                	lw	a2,4(sp)
1c009ebe:	01831513          	slli	a0,t1,0x18
1c009ec2:	05e2                	slli	a1,a1,0x18
1c009ec4:	017b6333          	or	t1,s6,s7
1c009ec8:	0103e833          	or	a6,t2,a6
1c009ecc:	00a2e533          	or	a0,t0,a0
1c009ed0:	00bfe5b3          	or	a1,t6,a1
1c009ed4:	0117e8b3          	or	a7,a5,a7
1c009ed8:	01237333          	and	t1,t1,s2
1c009edc:	0128f8b3          	and	a7,a7,s2
1c009ee0:	00885d93          	srli	s11,a6,0x8
1c009ee4:	01085d13          	srli	s10,a6,0x10
1c009ee8:	00855c93          	srli	s9,a0,0x8
1c009eec:	01055c13          	srli	s8,a0,0x10
1c009ef0:	0085db93          	srli	s7,a1,0x8
1c009ef4:	0105db13          	srli	s6,a1,0x10
1c009ef8:	0104d913          	srli	s2,s1,0x10
1c009efc:	0189d793          	srli	a5,s3,0x18
1c009f00:	8161                	srli	a0,a0,0x18
1c009f02:	0084d993          	srli	s3,s1,0x8
1c009f06:	81e1                	srli	a1,a1,0x18
1c009f08:	80e1                	srli	s1,s1,0x18
1c009f0a:	01885813          	srli	a6,a6,0x18
1c009f0e:	01b400a3          	sb	s11,1(s0)
1c009f12:	01a40123          	sb	s10,2(s0)
1c009f16:	019402a3          	sb	s9,5(s0)
1c009f1a:	01840323          	sb	s8,6(s0)
1c009f1e:	00a403a3          	sb	a0,7(s0)
1c009f22:	017404a3          	sb	s7,9(s0)
1c009f26:	01640523          	sb	s6,10(s0)
1c009f2a:	00b405a3          	sb	a1,11(s0)
1c009f2e:	015406a3          	sb	s5,13(s0)
1c009f32:	01440723          	sb	s4,14(s0)
1c009f36:	00c407a3          	sb	a2,15(s0)
1c009f3a:	013408a3          	sb	s3,17(s0)
1c009f3e:	01240923          	sb	s2,18(s0)
1c009f42:	009409a3          	sb	s1,19(s0)
1c009f46:	00740023          	sb	t2,0(s0)
1c009f4a:	010401a3          	sb	a6,3(s0)
1c009f4e:	00540223          	sb	t0,4(s0)
1c009f52:	01f40423          	sb	t6,8(s0)
1c009f56:	01e40623          	sb	t5,12(s0)
1c009f5a:	01d40823          	sb	t4,16(s0)
1c009f5e:	01c40a23          	sb	t3,20(s0)
1c009f62:	4622                	lw	a2,8(sp)
1c009f64:	0762                	slli	a4,a4,0x18
1c009f66:	07e2                	slli	a5,a5,0x18
1c009f68:	00c40aa3          	sb	a2,21(s0)
1c009f6c:	4632                	lw	a2,12(sp)
1c009f6e:	00e36733          	or	a4,t1,a4
1c009f72:	00f8e7b3          	or	a5,a7,a5
1c009f76:	82e1                	srli	a3,a3,0x18
1c009f78:	00c40b23          	sb	a2,22(s0)
1c009f7c:	00d40ba3          	sb	a3,23(s0)
1c009f80:	00875513          	srli	a0,a4,0x8
1c009f84:	01075593          	srli	a1,a4,0x10
1c009f88:	0087d613          	srli	a2,a5,0x8
1c009f8c:	0107d693          	srli	a3,a5,0x10
1c009f90:	8361                	srli	a4,a4,0x18
1c009f92:	83e1                	srli	a5,a5,0x18
1c009f94:	00640c23          	sb	t1,24(s0)
1c009f98:	00a40ca3          	sb	a0,25(s0)
1c009f9c:	00b40d23          	sb	a1,26(s0)
1c009fa0:	00e40da3          	sb	a4,27(s0)
1c009fa4:	01140e23          	sb	a7,28(s0)
1c009fa8:	00c40ea3          	sb	a2,29(s0)
1c009fac:	00d40f23          	sb	a3,30(s0)
1c009fb0:	00f40fa3          	sb	a5,31(s0)
1c009fb4:	11c12083          	lw	ra,284(sp)
1c009fb8:	11812403          	lw	s0,280(sp)
1c009fbc:	11412483          	lw	s1,276(sp)
1c009fc0:	11012903          	lw	s2,272(sp)
1c009fc4:	10c12983          	lw	s3,268(sp)
1c009fc8:	10812a03          	lw	s4,264(sp)
1c009fcc:	10412a83          	lw	s5,260(sp)
1c009fd0:	10012b03          	lw	s6,256(sp)
1c009fd4:	5bfe                	lw	s7,252(sp)
1c009fd6:	5c6e                	lw	s8,248(sp)
1c009fd8:	5cde                	lw	s9,244(sp)
1c009fda:	5d4e                	lw	s10,240(sp)
1c009fdc:	5dbe                	lw	s11,236(sp)
1c009fde:	6115                	addi	sp,sp,288
1c009fe0:	8082                	ret

1c009fe2 <sha3_512>:
1c009fe2:	7105                	addi	sp,sp,-480
1c009fe4:	1c812c23          	sw	s0,472(sp)
1c009fe8:	1d312623          	sw	s3,460(sp)
1c009fec:	1d412423          	sw	s4,456(sp)
1c009ff0:	1c112e23          	sw	ra,476(sp)
1c009ff4:	1c912a23          	sw	s1,468(sp)
1c009ff8:	1d212823          	sw	s2,464(sp)
1c009ffc:	1d512223          	sw	s5,452(sp)
1c00a000:	1d612023          	sw	s6,448(sp)
1c00a004:	1b712e23          	sw	s7,444(sp)
1c00a008:	1b812c23          	sw	s8,440(sp)
1c00a00c:	1b912a23          	sw	s9,436(sp)
1c00a010:	1ba12823          	sw	s10,432(sp)
1c00a014:	1bb12623          	sw	s11,428(sp)
1c00a018:	842a                	mv	s0,a0
1c00a01a:	8a32                	mv	s4,a2
1c00a01c:	0d810993          	addi	s3,sp,216
1c00a020:	081c                	addi	a5,sp,16
1c00a022:	4681                	li	a3,0
1c00a024:	4701                	li	a4,0
1c00a026:	c394                	sw	a3,0(a5)
1c00a028:	c3d8                	sw	a4,4(a5)
1c00a02a:	07a1                	addi	a5,a5,8
1c00a02c:	ff379be3          	bne	a5,s3,1c00a022 <sha3_512+0x40>
1c00a030:	04700793          	li	a5,71
1c00a034:	0947f463          	bgeu	a5,s4,1c00a0bc <sha3_512+0xda>
1c00a038:	04858a93          	addi	s5,a1,72
1c00a03c:	8956                	mv	s2,s5
1c00a03e:	04700493          	li	s1,71
1c00a042:	0818                	addi	a4,sp,16
1c00a044:	0015c783          	lbu	a5,1(a1)
1c00a048:	0025ce03          	lbu	t3,2(a1)
1c00a04c:	0055c803          	lbu	a6,5(a1)
1c00a050:	0045cf03          	lbu	t5,4(a1)
1c00a054:	0065c503          	lbu	a0,6(a1)
1c00a058:	0005ce83          	lbu	t4,0(a1)
1c00a05c:	0035c603          	lbu	a2,3(a1)
1c00a060:	0075c683          	lbu	a3,7(a1)
1c00a064:	07a2                	slli	a5,a5,0x8
1c00a066:	0e42                	slli	t3,t3,0x10
1c00a068:	0822                	slli	a6,a6,0x8
1c00a06a:	00072303          	lw	t1,0(a4)
1c00a06e:	00472883          	lw	a7,4(a4)
1c00a072:	01c7e7b3          	or	a5,a5,t3
1c00a076:	01e86833          	or	a6,a6,t5
1c00a07a:	0542                	slli	a0,a0,0x10
1c00a07c:	01d7e7b3          	or	a5,a5,t4
1c00a080:	0662                	slli	a2,a2,0x18
1c00a082:	01056533          	or	a0,a0,a6
1c00a086:	06e2                	slli	a3,a3,0x18
1c00a088:	8fd1                	or	a5,a5,a2
1c00a08a:	8ec9                	or	a3,a3,a0
1c00a08c:	00f347b3          	xor	a5,t1,a5
1c00a090:	00d8c6b3          	xor	a3,a7,a3
1c00a094:	c31c                	sw	a5,0(a4)
1c00a096:	c354                	sw	a3,4(a4)
1c00a098:	05a1                	addi	a1,a1,8
1c00a09a:	0721                	addi	a4,a4,8
1c00a09c:	fb2594e3          	bne	a1,s2,1c00a044 <sha3_512+0x62>
1c00a0a0:	080c                	addi	a1,sp,16
1c00a0a2:	852e                	mv	a0,a1
1c00a0a4:	9f0ff0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c00a0a8:	fb8a0a13          	addi	s4,s4,-72 # ff00ffb8 <__l2_shared_end+0xe2ffffb8>
1c00a0ac:	04890913          	addi	s2,s2,72
1c00a0b0:	85d6                	mv	a1,s5
1c00a0b2:	0144f563          	bgeu	s1,s4,1c00a0bc <sha3_512+0xda>
1c00a0b6:	048a8a93          	addi	s5,s5,72 # 1000048 <__CTOR_LIST__-0x1affffbc>
1c00a0ba:	b761                	j	1c00a042 <sha3_512+0x60>
1c00a0bc:	1218                	addi	a4,sp,288
1c00a0be:	87ce                	mv	a5,s3
1c00a0c0:	0007a023          	sw	zero,0(a5) # ff010000 <__l2_shared_end+0xe3000000>
1c00a0c4:	0791                	addi	a5,a5,4
1c00a0c6:	fee79de3          	bne	a5,a4,1c00a0c0 <sha3_512+0xde>
1c00a0ca:	080a0063          	beqz	s4,1c00a14a <sha3_512+0x168>
1c00a0ce:	fffa0793          	addi	a5,s4,-1
1c00a0d2:	4709                	li	a4,2
1c00a0d4:	68f77563          	bgeu	a4,a5,1c00a75e <sha3_512+0x77c>
1c00a0d8:	ffca7813          	andi	a6,s4,-4
1c00a0dc:	87ae                	mv	a5,a1
1c00a0de:	982e                	add	a6,a6,a1
1c00a0e0:	0017c603          	lbu	a2,1(a5)
1c00a0e4:	0007c503          	lbu	a0,0(a5)
1c00a0e8:	0027c683          	lbu	a3,2(a5)
1c00a0ec:	0037c703          	lbu	a4,3(a5)
1c00a0f0:	0622                	slli	a2,a2,0x8
1c00a0f2:	8e49                	or	a2,a2,a0
1c00a0f4:	06c2                	slli	a3,a3,0x10
1c00a0f6:	8ed1                	or	a3,a3,a2
1c00a0f8:	0762                	slli	a4,a4,0x18
1c00a0fa:	8f55                	or	a4,a4,a3
1c00a0fc:	00e9a023          	sw	a4,0(s3)
1c00a100:	0791                	addi	a5,a5,4
1c00a102:	0991                	addi	s3,s3,4
1c00a104:	fd079ee3          	bne	a5,a6,1c00a0e0 <sha3_512+0xfe>
1c00a108:	ffca7793          	andi	a5,s4,-4
1c00a10c:	03478f63          	beq	a5,s4,1c00a14a <sha3_512+0x168>
1c00a110:	00f58733          	add	a4,a1,a5
1c00a114:	00074603          	lbu	a2,0(a4)
1c00a118:	1314                	addi	a3,sp,416
1c00a11a:	96be                	add	a3,a3,a5
1c00a11c:	00178713          	addi	a4,a5,1
1c00a120:	f2c68c23          	sb	a2,-200(a3)
1c00a124:	03477363          	bgeu	a4,s4,1c00a14a <sha3_512+0x168>
1c00a128:	00e586b3          	add	a3,a1,a4
1c00a12c:	0006c683          	lbu	a3,0(a3)
1c00a130:	1310                	addi	a2,sp,416
1c00a132:	9732                	add	a4,a4,a2
1c00a134:	0789                	addi	a5,a5,2
1c00a136:	f2d70c23          	sb	a3,-200(a4)
1c00a13a:	0147f863          	bgeu	a5,s4,1c00a14a <sha3_512+0x168>
1c00a13e:	95be                	add	a1,a1,a5
1c00a140:	0005c703          	lbu	a4,0(a1)
1c00a144:	97b2                	add	a5,a5,a2
1c00a146:	f2e78c23          	sb	a4,-200(a5)
1c00a14a:	131c                	addi	a5,sp,416
1c00a14c:	9a3e                	add	s4,s4,a5
1c00a14e:	4799                	li	a5,6
1c00a150:	f2fa0c23          	sb	a5,-200(s4)
1c00a154:	0da14703          	lbu	a4,218(sp)
1c00a158:	0d914f83          	lbu	t6,217(sp)
1c00a15c:	0e214783          	lbu	a5,226(sp)
1c00a160:	0e114e83          	lbu	t4,225(sp)
1c00a164:	0e514303          	lbu	t1,229(sp)
1c00a168:	0e414383          	lbu	t2,228(sp)
1c00a16c:	0e614803          	lbu	a6,230(sp)
1c00a170:	0d814283          	lbu	t0,216(sp)
1c00a174:	0e014f03          	lbu	t5,224(sp)
1c00a178:	0db14503          	lbu	a0,219(sp)
1c00a17c:	0e314603          	lbu	a2,227(sp)
1c00a180:	0e714683          	lbu	a3,231(sp)
1c00a184:	0fa2                	slli	t6,t6,0x8
1c00a186:	0ea2                	slli	t4,t4,0x8
1c00a188:	0742                	slli	a4,a4,0x10
1c00a18a:	07c2                	slli	a5,a5,0x10
1c00a18c:	0322                	slli	t1,t1,0x8
1c00a18e:	00736333          	or	t1,t1,t2
1c00a192:	01f76733          	or	a4,a4,t6
1c00a196:	01d7e7b3          	or	a5,a5,t4
1c00a19a:	0842                	slli	a6,a6,0x10
1c00a19c:	0dd14e03          	lbu	t3,221(sp)
1c00a1a0:	00576733          	or	a4,a4,t0
1c00a1a4:	01e7e7b3          	or	a5,a5,t5
1c00a1a8:	00686833          	or	a6,a6,t1
1c00a1ac:	0662                	slli	a2,a2,0x18
1c00a1ae:	06e2                	slli	a3,a3,0x18
1c00a1b0:	0562                	slli	a0,a0,0x18
1c00a1b2:	0dc14483          	lbu	s1,220(sp)
1c00a1b6:	0de14883          	lbu	a7,222(sp)
1c00a1ba:	8d59                	or	a0,a0,a4
1c00a1bc:	00f66733          	or	a4,a2,a5
1c00a1c0:	0106e7b3          	or	a5,a3,a6
1c00a1c4:	46c2                	lw	a3,16(sp)
1c00a1c6:	0df14583          	lbu	a1,223(sp)
1c00a1ca:	0e22                	slli	t3,t3,0x8
1c00a1cc:	009e6e33          	or	t3,t3,s1
1c00a1d0:	8d35                	xor	a0,a0,a3
1c00a1d2:	08c2                	slli	a7,a7,0x10
1c00a1d4:	46d2                	lw	a3,20(sp)
1c00a1d6:	01c8e8b3          	or	a7,a7,t3
1c00a1da:	05e2                	slli	a1,a1,0x18
1c00a1dc:	0115e5b3          	or	a1,a1,a7
1c00a1e0:	8db5                	xor	a1,a1,a3
1c00a1e2:	46e2                	lw	a3,24(sp)
1c00a1e4:	0ea14803          	lbu	a6,234(sp)
1c00a1e8:	0e914483          	lbu	s1,233(sp)
1c00a1ec:	8eb9                	xor	a3,a3,a4
1c00a1ee:	4772                	lw	a4,28(sp)
1c00a1f0:	0e814a83          	lbu	s5,232(sp)
1c00a1f4:	0eb14a03          	lbu	s4,235(sp)
1c00a1f8:	8f3d                	xor	a4,a4,a5
1c00a1fa:	0ec14d03          	lbu	s10,236(sp)
1c00a1fe:	11f14783          	lbu	a5,287(sp)
1c00a202:	0ed14903          	lbu	s2,237(sp)
1c00a206:	c82a                	sw	a0,16(sp)
1c00a208:	ca2e                	sw	a1,20(sp)
1c00a20a:	cc36                	sw	a3,24(sp)
1c00a20c:	ce3a                	sw	a4,28(sp)
1c00a20e:	0ee14f83          	lbu	t6,238(sp)
1c00a212:	0f214283          	lbu	t0,242(sp)
1c00a216:	0f114f03          	lbu	t5,241(sp)
1c00a21a:	0fd14883          	lbu	a7,253(sp)
1c00a21e:	0fc14b83          	lbu	s7,252(sp)
1c00a222:	04a2                	slli	s1,s1,0x8
1c00a224:	0842                	slli	a6,a6,0x10
1c00a226:	02c2                	slli	t0,t0,0x10
1c00a228:	08a2                	slli	a7,a7,0x8
1c00a22a:	00986833          	or	a6,a6,s1
1c00a22e:	0f22                	slli	t5,t5,0x8
1c00a230:	01e2ef33          	or	t5,t0,t5
1c00a234:	01586833          	or	a6,a6,s5
1c00a238:	0178e2b3          	or	t0,a7,s7
1c00a23c:	018a1893          	slli	a7,s4,0x18
1c00a240:	0108e833          	or	a6,a7,a6
1c00a244:	5882                	lw	a7,32(sp)
1c00a246:	0ef14503          	lbu	a0,239(sp)
1c00a24a:	0922                	slli	s2,s2,0x8
1c00a24c:	01a96933          	or	s2,s2,s10
1c00a250:	0108c8b3          	xor	a7,a7,a6
1c00a254:	0fc2                	slli	t6,t6,0x10
1c00a256:	5812                	lw	a6,36(sp)
1c00a258:	0f014983          	lbu	s3,240(sp)
1c00a25c:	0f314583          	lbu	a1,243(sp)
1c00a260:	012fefb3          	or	t6,t6,s2
1c00a264:	0562                	slli	a0,a0,0x18
1c00a266:	0f514e83          	lbu	t4,245(sp)
1c00a26a:	01f56533          	or	a0,a0,t6
1c00a26e:	0f414c83          	lbu	s9,244(sp)
1c00a272:	0f614c03          	lbu	s8,246(sp)
1c00a276:	00a84833          	xor	a6,a6,a0
1c00a27a:	5522                	lw	a0,40(sp)
1c00a27c:	0f714603          	lbu	a2,247(sp)
1c00a280:	013f6f33          	or	t5,t5,s3
1c00a284:	05e2                	slli	a1,a1,0x18
1c00a286:	0f914e03          	lbu	t3,249(sp)
1c00a28a:	0fa14303          	lbu	t1,250(sp)
1c00a28e:	01e5e5b3          	or	a1,a1,t5
1c00a292:	0ea2                	slli	t4,t4,0x8
1c00a294:	019ee4b3          	or	s1,t4,s9
1c00a298:	8d2d                	xor	a0,a0,a1
1c00a29a:	010c1e93          	slli	t4,s8,0x10
1c00a29e:	55b2                	lw	a1,44(sp)
1c00a2a0:	0f814383          	lbu	t2,248(sp)
1c00a2a4:	0fb14683          	lbu	a3,251(sp)
1c00a2a8:	009eeeb3          	or	t4,t4,s1
1c00a2ac:	0662                	slli	a2,a2,0x18
1c00a2ae:	01d66633          	or	a2,a2,t4
1c00a2b2:	0342                	slli	t1,t1,0x10
1c00a2b4:	0e22                	slli	t3,t3,0x8
1c00a2b6:	0fe14b03          	lbu	s6,254(sp)
1c00a2ba:	8db1                	xor	a1,a1,a2
1c00a2bc:	006e6e33          	or	t3,t3,t1
1c00a2c0:	5642                	lw	a2,48(sp)
1c00a2c2:	0ff14703          	lbu	a4,255(sp)
1c00a2c6:	007e6e33          	or	t3,t3,t2
1c00a2ca:	06e2                	slli	a3,a3,0x18
1c00a2cc:	01c6e6b3          	or	a3,a3,t3
1c00a2d0:	8e35                	xor	a2,a2,a3
1c00a2d2:	010b1313          	slli	t1,s6,0x10
1c00a2d6:	56d2                	lw	a3,52(sp)
1c00a2d8:	00536333          	or	t1,t1,t0
1c00a2dc:	0762                	slli	a4,a4,0x18
1c00a2de:	00676733          	or	a4,a4,t1
1c00a2e2:	8f35                	xor	a4,a4,a3
1c00a2e4:	10114e83          	lbu	t4,257(sp)
1c00a2e8:	10214a83          	lbu	s5,258(sp)
1c00a2ec:	d046                	sw	a7,32(sp)
1c00a2ee:	d242                	sw	a6,36(sp)
1c00a2f0:	d42a                	sw	a0,40(sp)
1c00a2f2:	d62e                	sw	a1,44(sp)
1c00a2f4:	d832                	sw	a2,48(sp)
1c00a2f6:	da3a                	sw	a4,52(sp)
1c00a2f8:	10014903          	lbu	s2,256(sp)
1c00a2fc:	10914303          	lbu	t1,265(sp)
1c00a300:	10a14983          	lbu	s3,266(sp)
1c00a304:	10814383          	lbu	t2,264(sp)
1c00a308:	10514f83          	lbu	t6,261(sp)
1c00a30c:	10b14603          	lbu	a2,267(sp)
1c00a310:	10414b03          	lbu	s6,260(sp)
1c00a314:	10614e03          	lbu	t3,262(sp)
1c00a318:	09c2                	slli	s3,s3,0x10
1c00a31a:	0322                	slli	t1,t1,0x8
1c00a31c:	10714583          	lbu	a1,263(sp)
1c00a320:	01336333          	or	t1,t1,s3
1c00a324:	00736333          	or	t1,t1,t2
1c00a328:	10d14f03          	lbu	t5,269(sp)
1c00a32c:	0fa2                	slli	t6,t6,0x8
1c00a32e:	0662                	slli	a2,a2,0x18
1c00a330:	10c14a03          	lbu	s4,268(sp)
1c00a334:	016fefb3          	or	t6,t6,s6
1c00a338:	11114803          	lbu	a6,273(sp)
1c00a33c:	11214483          	lbu	s1,274(sp)
1c00a340:	10e14883          	lbu	a7,270(sp)
1c00a344:	00666633          	or	a2,a2,t1
1c00a348:	0e42                	slli	t3,t3,0x10
1c00a34a:	5372                	lw	t1,60(sp)
1c00a34c:	01fe6e33          	or	t3,t3,t6
1c00a350:	10f14683          	lbu	a3,271(sp)
1c00a354:	05e2                	slli	a1,a1,0x18
1c00a356:	11014283          	lbu	t0,272(sp)
1c00a35a:	11314703          	lbu	a4,275(sp)
1c00a35e:	01c5e5b3          	or	a1,a1,t3
1c00a362:	0f22                	slli	t5,t5,0x8
1c00a364:	014f6f33          	or	t5,t5,s4
1c00a368:	00b34333          	xor	t1,t1,a1
1c00a36c:	04c2                	slli	s1,s1,0x10
1c00a36e:	4596                	lw	a1,68(sp)
1c00a370:	0822                	slli	a6,a6,0x8
1c00a372:	08c2                	slli	a7,a7,0x10
1c00a374:	10314503          	lbu	a0,259(sp)
1c00a378:	01e8e8b3          	or	a7,a7,t5
1c00a37c:	00986833          	or	a6,a6,s1
1c00a380:	06e2                	slli	a3,a3,0x18
1c00a382:	00586833          	or	a6,a6,t0
1c00a386:	0116e6b3          	or	a3,a3,a7
1c00a38a:	0ac2                	slli	s5,s5,0x10
1c00a38c:	0ea2                	slli	t4,t4,0x8
1c00a38e:	0762                	slli	a4,a4,0x18
1c00a390:	5e62                	lw	t3,56(sp)
1c00a392:	8db5                	xor	a1,a1,a3
1c00a394:	015eeeb3          	or	t4,t4,s5
1c00a398:	46a6                	lw	a3,72(sp)
1c00a39a:	01076733          	or	a4,a4,a6
1c00a39e:	4806                	lw	a6,64(sp)
1c00a3a0:	012eeeb3          	or	t4,t4,s2
1c00a3a4:	0562                	slli	a0,a0,0x18
1c00a3a6:	01d56533          	or	a0,a0,t4
1c00a3aa:	00ae4e33          	xor	t3,t3,a0
1c00a3ae:	00c84833          	xor	a6,a6,a2
1c00a3b2:	8f35                	xor	a4,a4,a3
1c00a3b4:	11414f03          	lbu	t5,276(sp)
1c00a3b8:	11514883          	lbu	a7,277(sp)
1c00a3bc:	11614503          	lbu	a0,278(sp)
1c00a3c0:	11714603          	lbu	a2,279(sp)
1c00a3c4:	dc72                	sw	t3,56(sp)
1c00a3c6:	de1a                	sw	t1,60(sp)
1c00a3c8:	c0c2                	sw	a6,64(sp)
1c00a3ca:	c2ae                	sw	a1,68(sp)
1c00a3cc:	c4ba                	sw	a4,72(sp)
1c00a3ce:	11914703          	lbu	a4,281(sp)
1c00a3d2:	11a14303          	lbu	t1,282(sp)
1c00a3d6:	11814e03          	lbu	t3,280(sp)
1c00a3da:	11b14683          	lbu	a3,283(sp)
1c00a3de:	0342                	slli	t1,t1,0x10
1c00a3e0:	0722                	slli	a4,a4,0x8
1c00a3e2:	00676733          	or	a4,a4,t1
1c00a3e6:	01c76733          	or	a4,a4,t3
1c00a3ea:	06e2                	slli	a3,a3,0x18
1c00a3ec:	08a2                	slli	a7,a7,0x8
1c00a3ee:	01e8e8b3          	or	a7,a7,t5
1c00a3f2:	8f55                	or	a4,a4,a3
1c00a3f4:	0542                	slli	a0,a0,0x10
1c00a3f6:	46b6                	lw	a3,76(sp)
1c00a3f8:	01156533          	or	a0,a0,a7
1c00a3fc:	0662                	slli	a2,a2,0x18
1c00a3fe:	11d14803          	lbu	a6,285(sp)
1c00a402:	8e49                	or	a2,a2,a0
1c00a404:	11c14e83          	lbu	t4,284(sp)
1c00a408:	8e35                	xor	a2,a2,a3
1c00a40a:	11e14583          	lbu	a1,286(sp)
1c00a40e:	46c6                	lw	a3,80(sp)
1c00a410:	0822                	slli	a6,a6,0x8
1c00a412:	01d86833          	or	a6,a6,t4
1c00a416:	8eb9                	xor	a3,a3,a4
1c00a418:	0807e793          	ori	a5,a5,128
1c00a41c:	4756                	lw	a4,84(sp)
1c00a41e:	05c2                	slli	a1,a1,0x10
1c00a420:	0105e5b3          	or	a1,a1,a6
1c00a424:	07e2                	slli	a5,a5,0x18
1c00a426:	8fcd                	or	a5,a5,a1
1c00a428:	080c                	addi	a1,sp,16
1c00a42a:	8fb9                	xor	a5,a5,a4
1c00a42c:	852e                	mv	a0,a1
1c00a42e:	c6b2                	sw	a2,76(sp)
1c00a430:	c8b6                	sw	a3,80(sp)
1c00a432:	cabe                	sw	a5,84(sp)
1c00a434:	e61fe0ef          	jal	ra,1c009294 <KeccakF1600_StatePermute>
1c00a438:	4552                	lw	a0,20(sp)
1c00a43a:	45f2                	lw	a1,28(sp)
1c00a43c:	5612                	lw	a2,36(sp)
1c00a43e:	56b2                	lw	a3,44(sp)
1c00a440:	57d2                	lw	a5,52(sp)
1c00a442:	5772                	lw	a4,60(sp)
1c00a444:	00855b13          	srli	s6,a0,0x8
1c00a448:	01055a93          	srli	s5,a0,0x10
1c00a44c:	01855a13          	srli	s4,a0,0x18
1c00a450:	0085d993          	srli	s3,a1,0x8
1c00a454:	0105d913          	srli	s2,a1,0x10
1c00a458:	0185d493          	srli	s1,a1,0x18
1c00a45c:	0ca10e23          	sb	a0,220(sp)
1c00a460:	0d610ea3          	sb	s6,221(sp)
1c00a464:	0d510f23          	sb	s5,222(sp)
1c00a468:	0d410fa3          	sb	s4,223(sp)
1c00a46c:	00865393          	srli	t2,a2,0x8
1c00a470:	01065293          	srli	t0,a2,0x10
1c00a474:	01865f93          	srli	t6,a2,0x18
1c00a478:	0086df13          	srli	t5,a3,0x8
1c00a47c:	0106de93          	srli	t4,a3,0x10
1c00a480:	0186de13          	srli	t3,a3,0x18
1c00a484:	0087d313          	srli	t1,a5,0x8
1c00a488:	0107d893          	srli	a7,a5,0x10
1c00a48c:	0187d813          	srli	a6,a5,0x18
1c00a490:	0eb10223          	sb	a1,228(sp)
1c00a494:	0f3102a3          	sb	s3,229(sp)
1c00a498:	0f210323          	sb	s2,230(sp)
1c00a49c:	0e9103a3          	sb	s1,231(sp)
1c00a4a0:	45c2                	lw	a1,16(sp)
1c00a4a2:	4536                	lw	a0,76(sp)
1c00a4a4:	0ec10623          	sb	a2,236(sp)
1c00a4a8:	0e7106a3          	sb	t2,237(sp)
1c00a4ac:	467e                	lw	a2,220(sp)
1c00a4ae:	0e510723          	sb	t0,238(sp)
1c00a4b2:	0ff107a3          	sb	t6,239(sp)
1c00a4b6:	0ed10a23          	sb	a3,244(sp)
1c00a4ba:	0fe10aa3          	sb	t5,245(sp)
1c00a4be:	46e2                	lw	a3,24(sp)
1c00a4c0:	0fd10b23          	sb	t4,246(sp)
1c00a4c4:	0fc10ba3          	sb	t3,247(sp)
1c00a4c8:	0e610ea3          	sb	t1,253(sp)
1c00a4cc:	0f110f23          	sb	a7,254(sp)
1c00a4d0:	0f010fa3          	sb	a6,255(sp)
1c00a4d4:	10e10223          	sb	a4,260(sp)
1c00a4d8:	4816                	lw	a6,68(sp)
1c00a4da:	0ef10e23          	sb	a5,252(sp)
1c00a4de:	579e                	lw	a5,228(sp)
1c00a4e0:	00875d93          	srli	s11,a4,0x8
1c00a4e4:	01075d13          	srli	s10,a4,0x10
1c00a4e8:	00885c93          	srli	s9,a6,0x8
1c00a4ec:	01085c13          	srli	s8,a6,0x10
1c00a4f0:	01885b93          	srli	s7,a6,0x18
1c00a4f4:	00855b13          	srli	s6,a0,0x8
1c00a4f8:	01055a93          	srli	s5,a0,0x10
1c00a4fc:	01855a13          	srli	s4,a0,0x18
1c00a500:	0085d993          	srli	s3,a1,0x8
1c00a504:	0105d913          	srli	s2,a1,0x10
1c00a508:	0185d493          	srli	s1,a1,0x18
1c00a50c:	00865393          	srli	t2,a2,0x8
1c00a510:	01065293          	srli	t0,a2,0x10
1c00a514:	01865f93          	srli	t6,a2,0x18
1c00a518:	0086df13          	srli	t5,a3,0x8
1c00a51c:	0106de93          	srli	t4,a3,0x10
1c00a520:	0186de13          	srli	t3,a3,0x18
1c00a524:	0087d313          	srli	t1,a5,0x8
1c00a528:	0107d893          	srli	a7,a5,0x10
1c00a52c:	00f40623          	sb	a5,12(s0)
1c00a530:	8361                	srli	a4,a4,0x18
1c00a532:	83e1                	srli	a5,a5,0x18
1c00a534:	11b102a3          	sb	s11,261(sp)
1c00a538:	11a10323          	sb	s10,262(sp)
1c00a53c:	10e103a3          	sb	a4,263(sp)
1c00a540:	11010623          	sb	a6,268(sp)
1c00a544:	4706                	lw	a4,64(sp)
1c00a546:	119106a3          	sb	s9,269(sp)
1c00a54a:	11810723          	sb	s8,270(sp)
1c00a54e:	117107a3          	sb	s7,271(sp)
1c00a552:	10a10a23          	sb	a0,276(sp)
1c00a556:	11610aa3          	sb	s6,277(sp)
1c00a55a:	11510b23          	sb	s5,278(sp)
1c00a55e:	11410ba3          	sb	s4,279(sp)
1c00a562:	00b40023          	sb	a1,0(s0)
1c00a566:	4a26                	lw	s4,72(sp)
1c00a568:	55be                	lw	a1,236(sp)
1c00a56a:	013400a3          	sb	s3,1(s0)
1c00a56e:	01240123          	sb	s2,2(s0)
1c00a572:	009401a3          	sb	s1,3(s0)
1c00a576:	00c40223          	sb	a2,4(s0)
1c00a57a:	007402a3          	sb	t2,5(s0)
1c00a57e:	565e                	lw	a2,244(sp)
1c00a580:	00540323          	sb	t0,6(s0)
1c00a584:	01f403a3          	sb	t6,7(s0)
1c00a588:	01e404a3          	sb	t5,9(s0)
1c00a58c:	01d40523          	sb	t4,10(s0)
1c00a590:	01c405a3          	sb	t3,11(s0)
1c00a594:	006406a3          	sb	t1,13(s0)
1c00a598:	01140723          	sb	a7,14(s0)
1c00a59c:	00f407a3          	sb	a5,15(s0)
1c00a5a0:	00d40423          	sb	a3,8(s0)
1c00a5a4:	56fe                	lw	a3,252(sp)
1c00a5a6:	5502                	lw	a0,32(sp)
1c00a5a8:	54a2                	lw	s1,40(sp)
1c00a5aa:	0185db13          	srli	s6,a1,0x18
1c00a5ae:	00855d93          	srli	s11,a0,0x8
1c00a5b2:	01055d13          	srli	s10,a0,0x10
1c00a5b6:	01855c93          	srli	s9,a0,0x18
1c00a5ba:	5522                	lw	a0,40(sp)
1c00a5bc:	5842                	lw	a6,48(sp)
1c00a5be:	0085dc13          	srli	s8,a1,0x8
1c00a5c2:	00855a93          	srli	s5,a0,0x8
1c00a5c6:	8141                	srli	a0,a0,0x10
1c00a5c8:	c42a                	sw	a0,8(sp)
1c00a5ca:	5562                	lw	a0,56(sp)
1c00a5cc:	0105db93          	srli	s7,a1,0x10
1c00a5d0:	00b40a23          	sb	a1,20(s0)
1c00a5d4:	8161                	srli	a0,a0,0x18
1c00a5d6:	c22a                	sw	a0,4(sp)
1c00a5d8:	5502                	lw	a0,32(sp)
1c00a5da:	45a2                	lw	a1,8(sp)
1c00a5dc:	01640ba3          	sb	s6,23(s0)
1c00a5e0:	c62a                	sw	a0,12(sp)
1c00a5e2:	00c14503          	lbu	a0,12(sp)
1c00a5e6:	5b22                	lw	s6,40(sp)
1c00a5e8:	0184d993          	srli	s3,s1,0x18
1c00a5ec:	00865913          	srli	s2,a2,0x8
1c00a5f0:	01065493          	srli	s1,a2,0x10
1c00a5f4:	01865393          	srli	t2,a2,0x18
1c00a5f8:	00a10623          	sb	a0,12(sp)
1c00a5fc:	0ff57513          	andi	a0,a0,255
1c00a600:	10412783          	lw	a5,260(sp)
1c00a604:	00885293          	srli	t0,a6,0x8
1c00a608:	01085f93          	srli	t6,a6,0x10
1c00a60c:	01885f13          	srli	t5,a6,0x18
1c00a610:	0086de93          	srli	t4,a3,0x8
1c00a614:	5862                	lw	a6,56(sp)
1c00a616:	0106de13          	srli	t3,a3,0x10
1c00a61a:	0186d313          	srli	t1,a3,0x18
1c00a61e:	00a40823          	sb	a0,16(s0)
1c00a622:	01b408a3          	sb	s11,17(s0)
1c00a626:	01a40923          	sb	s10,18(s0)
1c00a62a:	019409a3          	sb	s9,19(s0)
1c00a62e:	01840aa3          	sb	s8,21(s0)
1c00a632:	01740b23          	sb	s7,22(s0)
1c00a636:	01640c23          	sb	s6,24(s0)
1c00a63a:	01540ca3          	sb	s5,25(s0)
1c00a63e:	00b40d23          	sb	a1,26(s0)
1c00a642:	01340da3          	sb	s3,27(s0)
1c00a646:	01240ea3          	sb	s2,29(s0)
1c00a64a:	00940f23          	sb	s1,30(s0)
1c00a64e:	00740fa3          	sb	t2,31(s0)
1c00a652:	00c40e23          	sb	a2,28(s0)
1c00a656:	5642                	lw	a2,48(sp)
1c00a658:	02d40223          	sb	a3,36(s0)
1c00a65c:	56e2                	lw	a3,56(sp)
1c00a65e:	02c40023          	sb	a2,32(s0)
1c00a662:	10c12603          	lw	a2,268(sp)
1c00a666:	02d40423          	sb	a3,40(s0)
1c00a66a:	4692                	lw	a3,4(sp)
1c00a66c:	00885893          	srli	a7,a6,0x8
1c00a670:	025400a3          	sb	t0,33(s0)
1c00a674:	02d405a3          	sb	a3,43(s0)
1c00a678:	11412683          	lw	a3,276(sp)
1c00a67c:	03f40123          	sb	t6,34(s0)
1c00a680:	03e401a3          	sb	t5,35(s0)
1c00a684:	03d402a3          	sb	t4,37(s0)
1c00a688:	03c40323          	sb	t3,38(s0)
1c00a68c:	026403a3          	sb	t1,39(s0)
1c00a690:	02f40623          	sb	a5,44(s0)
1c00a694:	0087d993          	srli	s3,a5,0x8
1c00a698:	0107d913          	srli	s2,a5,0x10
1c00a69c:	01085813          	srli	a6,a6,0x10
1c00a6a0:	00875493          	srli	s1,a4,0x8
1c00a6a4:	008a5e13          	srli	t3,s4,0x8
1c00a6a8:	010a5313          	srli	t1,s4,0x10
1c00a6ac:	83e1                	srli	a5,a5,0x18
1c00a6ae:	01075393          	srli	t2,a4,0x10
1c00a6b2:	01875293          	srli	t0,a4,0x18
1c00a6b6:	00865f93          	srli	t6,a2,0x8
1c00a6ba:	01065f13          	srli	t5,a2,0x10
1c00a6be:	01865e93          	srli	t4,a2,0x18
1c00a6c2:	031404a3          	sb	a7,41(s0)
1c00a6c6:	03040523          	sb	a6,42(s0)
1c00a6ca:	033406a3          	sb	s3,45(s0)
1c00a6ce:	03240723          	sb	s2,46(s0)
1c00a6d2:	029408a3          	sb	s1,49(s0)
1c00a6d6:	03440c23          	sb	s4,56(s0)
1c00a6da:	018a5893          	srli	a7,s4,0x18
1c00a6de:	02f407a3          	sb	a5,47(s0)
1c00a6e2:	02e40823          	sb	a4,48(s0)
1c00a6e6:	02740923          	sb	t2,50(s0)
1c00a6ea:	025409a3          	sb	t0,51(s0)
1c00a6ee:	02c40a23          	sb	a2,52(s0)
1c00a6f2:	03f40aa3          	sb	t6,53(s0)
1c00a6f6:	03e40b23          	sb	t5,54(s0)
1c00a6fa:	03d40ba3          	sb	t4,55(s0)
1c00a6fe:	03c40ca3          	sb	t3,57(s0)
1c00a702:	02640d23          	sb	t1,58(s0)
1c00a706:	0086d813          	srli	a6,a3,0x8
1c00a70a:	0106d513          	srli	a0,a3,0x10
1c00a70e:	0186d593          	srli	a1,a3,0x18
1c00a712:	03140da3          	sb	a7,59(s0)
1c00a716:	02d40e23          	sb	a3,60(s0)
1c00a71a:	03040ea3          	sb	a6,61(s0)
1c00a71e:	02a40f23          	sb	a0,62(s0)
1c00a722:	02b40fa3          	sb	a1,63(s0)
1c00a726:	1dc12083          	lw	ra,476(sp)
1c00a72a:	1d812403          	lw	s0,472(sp)
1c00a72e:	1d412483          	lw	s1,468(sp)
1c00a732:	1d012903          	lw	s2,464(sp)
1c00a736:	1cc12983          	lw	s3,460(sp)
1c00a73a:	1c812a03          	lw	s4,456(sp)
1c00a73e:	1c412a83          	lw	s5,452(sp)
1c00a742:	1c012b03          	lw	s6,448(sp)
1c00a746:	1bc12b83          	lw	s7,444(sp)
1c00a74a:	1b812c03          	lw	s8,440(sp)
1c00a74e:	1b412c83          	lw	s9,436(sp)
1c00a752:	1b012d03          	lw	s10,432(sp)
1c00a756:	1ac12d83          	lw	s11,428(sp)
1c00a75a:	613d                	addi	sp,sp,480
1c00a75c:	8082                	ret
1c00a75e:	4781                	li	a5,0
1c00a760:	ba45                	j	1c00a110 <sha3_512+0x12e>

1c00a762 <PQCLEAN_KYBER768_CLEAN_gen_matrix>:
1c00a762:	db010113          	addi	sp,sp,-592
1c00a766:	21b12e23          	sw	s11,540(sp)
1c00a76a:	6d85                	lui	s11,0x1
1c00a76c:	24912223          	sw	s1,580(sp)
1c00a770:	25212023          	sw	s2,576(sp)
1c00a774:	23512a23          	sw	s5,564(sp)
1c00a778:	23612823          	sw	s6,560(sp)
1c00a77c:	23912223          	sw	s9,548(sp)
1c00a780:	23a12023          	sw	s10,544(sp)
1c00a784:	24112623          	sw	ra,588(sp)
1c00a788:	fffd8d13          	addi	s10,s11,-1 # fff <__CTOR_LIST__-0x1bfff005>
1c00a78c:	24812423          	sw	s0,584(sp)
1c00a790:	23312e23          	sw	s3,572(sp)
1c00a794:	23412c23          	sw	s4,568(sp)
1c00a798:	23712623          	sw	s7,556(sp)
1c00a79c:	23812423          	sw	s8,552(sp)
1c00a7a0:	8cae                	mv	s9,a1
1c00a7a2:	c432                	sw	a2,8(sp)
1c00a7a4:	c62a                	sw	a0,12(sp)
1c00a7a6:	4b01                	li	s6,0
1c00a7a8:	20c10a93          	addi	s5,sp,524
1c00a7ac:	d00d8d93          	addi	s11,s11,-768
1c00a7b0:	10000913          	li	s2,256
1c00a7b4:	1964                	addi	s1,sp,188
1c00a7b6:	4432                	lw	s0,12(sp)
1c00a7b8:	0ffb7c13          	andi	s8,s6,255
1c00a7bc:	4981                	li	s3,0
1c00a7be:	a831                	j	1c00a7da <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x78>
1c00a7c0:	00f69023          	sh	a5,0(a3)
1c00a7c4:	15251763          	bne	a0,s2,1c00a912 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1b0>
1c00a7c8:	0808                	addi	a0,sp,16
1c00a7ca:	aaaff0ef          	jal	ra,1c009a74 <shake128_ctx_release>
1c00a7ce:	0985                	addi	s3,s3,1
1c00a7d0:	478d                	li	a5,3
1c00a7d2:	20040413          	addi	s0,s0,512
1c00a7d6:	0ef98a63          	beq	s3,a5,1c00a8ca <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x168>
1c00a7da:	47a2                	lw	a5,8(sp)
1c00a7dc:	0ff9f613          	andi	a2,s3,255
1c00a7e0:	cff9                	beqz	a5,1c00a8be <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x15c>
1c00a7e2:	86b2                	mv	a3,a2
1c00a7e4:	85e6                	mv	a1,s9
1c00a7e6:	8662                	mv	a2,s8
1c00a7e8:	0808                	addi	a0,sp,16
1c00a7ea:	11a010ef          	jal	ra,1c00b904 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00a7ee:	0810                	addi	a2,sp,16
1c00a7f0:	458d                	li	a1,3
1c00a7f2:	0848                	addi	a0,sp,20
1c00a7f4:	98cff0ef          	jal	ra,1c009980 <shake128_squeezeblocks>
1c00a7f8:	4b81                	li	s7,0
1c00a7fa:	0858                	addi	a4,sp,20
1c00a7fc:	00174583          	lbu	a1,1(a4)
1c00a800:	00074603          	lbu	a2,0(a4)
1c00a804:	001b9693          	slli	a3,s7,0x1
1c00a808:	00859793          	slli	a5,a1,0x8
1c00a80c:	8fd1                	or	a5,a5,a2
1c00a80e:	01a7f7b3          	and	a5,a5,s10
1c00a812:	07c2                	slli	a5,a5,0x10
1c00a814:	83c1                	srli	a5,a5,0x10
1c00a816:	00274603          	lbu	a2,2(a4)
1c00a81a:	96a2                	add	a3,a3,s0
1c00a81c:	0045d313          	srli	t1,a1,0x4
1c00a820:	001b8513          	addi	a0,s7,1 # ff0001 <__CTOR_LIST__-0x1b010003>
1c00a824:	f8fdfee3          	bgeu	s11,a5,1c00a7c0 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x5e>
1c00a828:	0612                	slli	a2,a2,0x4
1c00a82a:	00666633          	or	a2,a2,t1
1c00a82e:	00cdc863          	blt	s11,a2,1c00a83e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xdc>
1c00a832:	001b9793          	slli	a5,s7,0x1
1c00a836:	97a2                	add	a5,a5,s0
1c00a838:	00c79023          	sh	a2,0(a5)
1c00a83c:	0b85                	addi	s7,s7,1
1c00a83e:	f92b85e3          	beq	s7,s2,1c00a7c8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00a842:	070d                	addi	a4,a4,3
1c00a844:	faea9ce3          	bne	s5,a4,1c00a7fc <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x9a>
1c00a848:	0ff00a13          	li	s4,255
1c00a84c:	a821                	j	1c00a864 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x102>
1c00a84e:	00171593          	slli	a1,a4,0x1
1c00a852:	95aa                	add	a1,a1,a0
1c00a854:	0705                	addi	a4,a4,1
1c00a856:	00f59023          	sh	a5,0(a1)
1c00a85a:	0c676363          	bltu	a4,t1,1c00a920 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x1be>
1c00a85e:	9bba                	add	s7,s7,a4
1c00a860:	f77a64e3          	bltu	s4,s7,1c00a7c8 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x66>
1c00a864:	0810                	addi	a2,sp,16
1c00a866:	0848                	addi	a0,sp,20
1c00a868:	4585                	li	a1,1
1c00a86a:	916ff0ef          	jal	ra,1c009980 <shake128_squeezeblocks>
1c00a86e:	001b9513          	slli	a0,s7,0x1
1c00a872:	9522                	add	a0,a0,s0
1c00a874:	41790333          	sub	t1,s2,s7
1c00a878:	0850                	addi	a2,sp,20
1c00a87a:	4701                	li	a4,0
1c00a87c:	00164583          	lbu	a1,1(a2)
1c00a880:	00064e03          	lbu	t3,0(a2)
1c00a884:	00264683          	lbu	a3,2(a2)
1c00a888:	00859793          	slli	a5,a1,0x8
1c00a88c:	01c7e7b3          	or	a5,a5,t3
1c00a890:	01a7f7b3          	and	a5,a5,s10
1c00a894:	07c2                	slli	a5,a5,0x10
1c00a896:	0692                	slli	a3,a3,0x4
1c00a898:	8191                	srli	a1,a1,0x4
1c00a89a:	83c1                	srli	a5,a5,0x10
1c00a89c:	8ecd                	or	a3,a3,a1
1c00a89e:	fafdf8e3          	bgeu	s11,a5,1c00a84e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xec>
1c00a8a2:	00ddc863          	blt	s11,a3,1c00a8b2 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x150>
1c00a8a6:	00171793          	slli	a5,a4,0x1
1c00a8aa:	97aa                	add	a5,a5,a0
1c00a8ac:	00d79023          	sh	a3,0(a5)
1c00a8b0:	0705                	addi	a4,a4,1
1c00a8b2:	fa6776e3          	bgeu	a4,t1,1c00a85e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c00a8b6:	060d                	addi	a2,a2,3
1c00a8b8:	fcc492e3          	bne	s1,a2,1c00a87c <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x11a>
1c00a8bc:	b74d                	j	1c00a85e <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xfc>
1c00a8be:	86e2                	mv	a3,s8
1c00a8c0:	85e6                	mv	a1,s9
1c00a8c2:	0808                	addi	a0,sp,16
1c00a8c4:	040010ef          	jal	ra,1c00b904 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>
1c00a8c8:	b71d                	j	1c00a7ee <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x8c>
1c00a8ca:	47b2                	lw	a5,12(sp)
1c00a8cc:	0b05                	addi	s6,s6,1
1c00a8ce:	60078793          	addi	a5,a5,1536
1c00a8d2:	c63e                	sw	a5,12(sp)
1c00a8d4:	ef3b11e3          	bne	s6,s3,1c00a7b6 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x54>
1c00a8d8:	24c12083          	lw	ra,588(sp)
1c00a8dc:	24812403          	lw	s0,584(sp)
1c00a8e0:	24412483          	lw	s1,580(sp)
1c00a8e4:	24012903          	lw	s2,576(sp)
1c00a8e8:	23c12983          	lw	s3,572(sp)
1c00a8ec:	23812a03          	lw	s4,568(sp)
1c00a8f0:	23412a83          	lw	s5,564(sp)
1c00a8f4:	23012b03          	lw	s6,560(sp)
1c00a8f8:	22c12b83          	lw	s7,556(sp)
1c00a8fc:	22812c03          	lw	s8,552(sp)
1c00a900:	22412c83          	lw	s9,548(sp)
1c00a904:	22012d03          	lw	s10,544(sp)
1c00a908:	21c12d83          	lw	s11,540(sp)
1c00a90c:	25010113          	addi	sp,sp,592
1c00a910:	8082                	ret
1c00a912:	8191                	srli	a1,a1,0x4
1c00a914:	0612                	slli	a2,a2,0x4
1c00a916:	8e4d                	or	a2,a2,a1
1c00a918:	8baa                	mv	s7,a0
1c00a91a:	f0cddce3          	bge	s11,a2,1c00a832 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xd0>
1c00a91e:	b715                	j	1c00a842 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0xe0>
1c00a920:	f8ddd3e3          	bge	s11,a3,1c00a8a6 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x144>
1c00a924:	bf49                	j	1c00a8b6 <PQCLEAN_KYBER768_CLEAN_gen_matrix+0x154>

1c00a926 <PQCLEAN_KYBER768_CLEAN_indcpa_enc>:
1c00a926:	97010113          	addi	sp,sp,-1680
1c00a92a:	7375                	lui	t1,0xffffd
1c00a92c:	68112623          	sw	ra,1676(sp)
1c00a930:	68812423          	sw	s0,1672(sp)
1c00a934:	68912223          	sw	s1,1668(sp)
1c00a938:	69212023          	sw	s2,1664(sp)
1c00a93c:	67312e23          	sw	s3,1660(sp)
1c00a940:	67412c23          	sw	s4,1656(sp)
1c00a944:	67512a23          	sw	s5,1652(sp)
1c00a948:	67612823          	sw	s6,1648(sp)
1c00a94c:	67712623          	sw	s7,1644(sp)
1c00a950:	67812423          	sw	s8,1640(sp)
1c00a954:	67912223          	sw	s9,1636(sp)
1c00a958:	67a12023          	sw	s10,1632(sp)
1c00a95c:	65b12e23          	sw	s11,1628(sp)
1c00a960:	6c0d                	lui	s8,0x3
1c00a962:	911a                	add	sp,sp,t1
1c00a964:	1818                	addi	a4,sp,48
1c00a966:	7979                	lui	s2,0xffffe
1c00a968:	620c0793          	addi	a5,s8,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00a96c:	97ba                	add	a5,a5,a4
1c00a96e:	c0090a13          	addi	s4,s2,-1024 # ffffdc00 <__l2_shared_end+0xe3fedc00>
1c00a972:	9a3e                	add	s4,s4,a5
1c00a974:	8432                	mv	s0,a2
1c00a976:	8aae                	mv	s5,a1
1c00a978:	89aa                	mv	s3,a0
1c00a97a:	85b2                	mv	a1,a2
1c00a97c:	8552                	mv	a0,s4
1c00a97e:	84b6                	mv	s1,a3
1c00a980:	177000ef          	jal	ra,1c00b2f6 <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>
1c00a984:	48244b03          	lbu	s6,1154(s0)
1c00a988:	49444783          	lbu	a5,1172(s0)
1c00a98c:	49844703          	lbu	a4,1176(s0)
1c00a990:	d65a                	sw	s6,44(sp)
1c00a992:	48b44b03          	lbu	s6,1163(s0)
1c00a996:	48044083          	lbu	ra,1152(s0)
1c00a99a:	ca3e                	sw	a5,20(sp)
1c00a99c:	c45a                	sw	s6,8(sp)
1c00a99e:	48f44b03          	lbu	s6,1167(s0)
1c00a9a2:	ce3a                	sw	a4,28(sp)
1c00a9a4:	d406                	sw	ra,40(sp)
1c00a9a6:	48c44c03          	lbu	s8,1164(s0)
1c00a9aa:	49044b83          	lbu	s7,1168(s0)
1c00a9ae:	48544d83          	lbu	s11,1157(s0)
1c00a9b2:	48944383          	lbu	t2,1161(s0)
1c00a9b6:	48d44283          	lbu	t0,1165(s0)
1c00a9ba:	49144f83          	lbu	t6,1169(s0)
1c00a9be:	49544f03          	lbu	t5,1173(s0)
1c00a9c2:	49944e83          	lbu	t4,1177(s0)
1c00a9c6:	49d44e03          	lbu	t3,1181(s0)
1c00a9ca:	48144503          	lbu	a0,1153(s0)
1c00a9ce:	48444d03          	lbu	s10,1156(s0)
1c00a9d2:	48644303          	lbu	t1,1158(s0)
1c00a9d6:	48844c83          	lbu	s9,1160(s0)
1c00a9da:	48a44883          	lbu	a7,1162(s0)
1c00a9de:	48e44803          	lbu	a6,1166(s0)
1c00a9e2:	49244603          	lbu	a2,1170(s0)
1c00a9e6:	49644683          	lbu	a3,1174(s0)
1c00a9ea:	49a44703          	lbu	a4,1178(s0)
1c00a9ee:	49c44583          	lbu	a1,1180(s0)
1c00a9f2:	49e44783          	lbu	a5,1182(s0)
1c00a9f6:	48744083          	lbu	ra,1159(s0)
1c00a9fa:	c65a                	sw	s6,12(sp)
1c00a9fc:	49344b03          	lbu	s6,1171(s0)
1c00aa00:	0fa2                	slli	t6,t6,0x8
1c00aa02:	017fefb3          	or	t6,t6,s7
1c00aa06:	c85a                	sw	s6,16(sp)
1c00aa08:	49744b03          	lbu	s6,1175(s0)
1c00aa0c:	4bd2                	lw	s7,20(sp)
1c00aa0e:	0f22                	slli	t5,t5,0x8
1c00aa10:	cc5a                	sw	s6,24(sp)
1c00aa12:	49b44b03          	lbu	s6,1179(s0)
1c00aa16:	017f6f33          	or	t5,t5,s7
1c00aa1a:	4bf2                	lw	s7,28(sp)
1c00aa1c:	0e22                	slli	t3,t3,0x8
1c00aa1e:	d05a                	sw	s6,32(sp)
1c00aa20:	00be65b3          	or	a1,t3,a1
1c00aa24:	49f44b03          	lbu	s6,1183(s0)
1c00aa28:	5e22                	lw	t3,40(sp)
1c00aa2a:	0ea2                	slli	t4,t4,0x8
1c00aa2c:	017eeeb3          	or	t4,t4,s7
1c00aa30:	06c2                	slli	a3,a3,0x10
1c00aa32:	0742                	slli	a4,a4,0x10
1c00aa34:	01e6e6b3          	or	a3,a3,t5
1c00aa38:	01d76733          	or	a4,a4,t4
1c00aa3c:	4f62                	lw	t5,24(sp)
1c00aa3e:	5e82                	lw	t4,32(sp)
1c00aa40:	03a2                	slli	t2,t2,0x8
1c00aa42:	02a2                	slli	t0,t0,0x8
1c00aa44:	0522                	slli	a0,a0,0x8
1c00aa46:	d25a                	sw	s6,36(sp)
1c00aa48:	0182e2b3          	or	t0,t0,s8
1c00aa4c:	01c56533          	or	a0,a0,t3
1c00aa50:	0193e3b3          	or	t2,t2,s9
1c00aa54:	5e32                	lw	t3,44(sp)
1c00aa56:	08c2                	slli	a7,a7,0x10
1c00aa58:	0842                	slli	a6,a6,0x10
1c00aa5a:	0642                	slli	a2,a2,0x10
1c00aa5c:	07c2                	slli	a5,a5,0x10
1c00aa5e:	48344b03          	lbu	s6,1155(s0)
1c00aa62:	0078e8b3          	or	a7,a7,t2
1c00aa66:	00586833          	or	a6,a6,t0
1c00aa6a:	43a2                	lw	t2,8(sp)
1c00aa6c:	42b2                	lw	t0,12(sp)
1c00aa6e:	01f66633          	or	a2,a2,t6
1c00aa72:	8fcd                	or	a5,a5,a1
1c00aa74:	4fc2                	lw	t6,16(sp)
1c00aa76:	5592                	lw	a1,36(sp)
1c00aa78:	6c0d                	lui	s8,0x3
1c00aa7a:	0f62                	slli	t5,t5,0x18
1c00aa7c:	0ee2                	slli	t4,t4,0x18
1c00aa7e:	0da2                	slli	s11,s11,0x8
1c00aa80:	00df66b3          	or	a3,t5,a3
1c00aa84:	7475                	lui	s0,0xffffd
1c00aa86:	03010f13          	addi	t5,sp,48
1c00aa8a:	00eee733          	or	a4,t4,a4
1c00aa8e:	01aded33          	or	s10,s11,s10
1c00aa92:	0342                	slli	t1,t1,0x10
1c00aa94:	0e42                	slli	t3,t3,0x10
1c00aa96:	620c0e93          	addi	t4,s8,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00aa9a:	00e2                	slli	ra,ra,0x18
1c00aa9c:	03e2                	slli	t2,t2,0x18
1c00aa9e:	02e2                	slli	t0,t0,0x18
1c00aaa0:	0fe2                	slli	t6,t6,0x18
1c00aaa2:	9efa                	add	t4,t4,t5
1c00aaa4:	05e2                	slli	a1,a1,0x18
1c00aaa6:	00ae6e33          	or	t3,t3,a0
1c00aaaa:	0b62                	slli	s6,s6,0x18
1c00aaac:	01a36333          	or	t1,t1,s10
1c00aab0:	c0040513          	addi	a0,s0,-1024 # ffffcc00 <__l2_shared_end+0xe3fecc00>
1c00aab4:	0102e833          	or	a6,t0,a6
1c00aab8:	00cfe633          	or	a2,t6,a2
1c00aabc:	01cb6e33          	or	t3,s6,t3
1c00aac0:	0060e333          	or	t1,ra,t1
1c00aac4:	0113e8b3          	or	a7,t2,a7
1c00aac8:	9576                	add	a0,a0,t4
1c00aaca:	8fcd                	or	a5,a5,a1
1c00aacc:	85d6                	mv	a1,s5
1c00aace:	de42                	sw	a6,60(sp)
1c00aad0:	d872                	sw	t3,48(sp)
1c00aad2:	da1a                	sw	t1,52(sp)
1c00aad4:	dc46                	sw	a7,56(sp)
1c00aad6:	c2b6                	sw	a3,68(sp)
1c00aad8:	c0b2                	sw	a2,64(sp)
1c00aada:	c4ba                	sw	a4,72(sp)
1c00aadc:	c6be                	sw	a5,76(sp)
1c00aade:	2b61                	jal	1c00b076 <PQCLEAN_KYBER768_CLEAN_poly_frommsg>
1c00aae0:	1818                	addi	a4,sp,48
1c00aae2:	7b7d                	lui	s6,0xfffff
1c00aae4:	620c0793          	addi	a5,s8,1568
1c00aae8:	97ba                	add	a5,a5,a4
1c00aaea:	e00b0b93          	addi	s7,s6,-512 # ffffee00 <__l2_shared_end+0xe3feee00>
1c00aaee:	9bbe                	add	s7,s7,a5
1c00aaf0:	620c0793          	addi	a5,s8,1568
1c00aaf4:	97ba                	add	a5,a5,a4
1c00aaf6:	9e040593          	addi	a1,s0,-1568
1c00aafa:	95be                	add	a1,a1,a5
1c00aafc:	4605                	li	a2,1
1c00aafe:	855e                	mv	a0,s7
1c00ab00:	318d                	jal	1c00a762 <PQCLEAN_KYBER768_CLEAN_gen_matrix>
1c00ab02:	1818                	addi	a4,sp,48
1c00ab04:	620c0793          	addi	a5,s8,1568
1c00ab08:	97ba                	add	a5,a5,a4
1c00ab0a:	60040a93          	addi	s5,s0,1536
1c00ab0e:	9abe                	add	s5,s5,a5
1c00ab10:	85a6                	mv	a1,s1
1c00ab12:	4601                	li	a2,0
1c00ab14:	8556                	mv	a0,s5
1c00ab16:	2bcd                	jal	1c00b108 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00ab18:	85a6                	mv	a1,s1
1c00ab1a:	4605                	li	a2,1
1c00ab1c:	200a8513          	addi	a0,s5,512
1c00ab20:	23e5                	jal	1c00b108 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00ab22:	85a6                	mv	a1,s1
1c00ab24:	4609                	li	a2,2
1c00ab26:	400a8513          	addi	a0,s5,1024
1c00ab2a:	2bf9                	jal	1c00b108 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>
1c00ab2c:	1818                	addi	a4,sp,48
1c00ab2e:	620c0793          	addi	a5,s8,1568
1c00ab32:	97ba                	add	a5,a5,a4
1c00ab34:	20090913          	addi	s2,s2,512
1c00ab38:	993e                	add	s2,s2,a5
1c00ab3a:	85a6                	mv	a1,s1
1c00ab3c:	460d                	li	a2,3
1c00ab3e:	854a                	mv	a0,s2
1c00ab40:	23fd                	jal	1c00b12e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00ab42:	85a6                	mv	a1,s1
1c00ab44:	4611                	li	a2,4
1c00ab46:	20090513          	addi	a0,s2,512
1c00ab4a:	23d5                	jal	1c00b12e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00ab4c:	85a6                	mv	a1,s1
1c00ab4e:	4615                	li	a2,5
1c00ab50:	40090513          	addi	a0,s2,1024
1c00ab54:	2be9                	jal	1c00b12e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00ab56:	1818                	addi	a4,sp,48
1c00ab58:	620c0793          	addi	a5,s8,1568
1c00ab5c:	97ba                	add	a5,a5,a4
1c00ab5e:	e0040513          	addi	a0,s0,-512
1c00ab62:	85a6                	mv	a1,s1
1c00ab64:	953e                	add	a0,a0,a5
1c00ab66:	4619                	li	a2,6
1c00ab68:	23d9                	jal	1c00b12e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>
1c00ab6a:	8556                	mv	a0,s5
1c00ab6c:	7b4000ef          	jal	ra,1c00b320 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>
1c00ab70:	1818                	addi	a4,sp,48
1c00ab72:	620c0793          	addi	a5,s8,1568
1c00ab76:	97ba                	add	a5,a5,a4
1c00ab78:	800b0493          	addi	s1,s6,-2048
1c00ab7c:	94be                	add	s1,s1,a5
1c00ab7e:	85de                	mv	a1,s7
1c00ab80:	8526                	mv	a0,s1
1c00ab82:	8656                	mv	a2,s5
1c00ab84:	1e1000ef          	jal	ra,1c00b564 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ab88:	8656                	mv	a2,s5
1c00ab8a:	600b8593          	addi	a1,s7,1536
1c00ab8e:	20048513          	addi	a0,s1,512 # ff0200 <__CTOR_LIST__-0x1b00fe04>
1c00ab92:	1d3000ef          	jal	ra,1c00b564 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00ab96:	020c0793          	addi	a5,s8,32
1c00ab9a:	1818                	addi	a4,sp,48
1c00ab9c:	00f705b3          	add	a1,a4,a5
1c00aba0:	8656                	mv	a2,s5
1c00aba2:	40048513          	addi	a0,s1,1024
1c00aba6:	1bf000ef          	jal	ra,1c00b564 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00abaa:	1818                	addi	a4,sp,48
1c00abac:	620c0793          	addi	a5,s8,1568
1c00abb0:	97ba                	add	a5,a5,a4
1c00abb2:	a0040513          	addi	a0,s0,-1536
1c00abb6:	953e                	add	a0,a0,a5
1c00abb8:	8656                	mv	a2,s5
1c00abba:	85d2                	mv	a1,s4
1c00abbc:	1a9000ef          	jal	ra,1c00b564 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>
1c00abc0:	8526                	mv	a0,s1
1c00abc2:	017000ef          	jal	ra,1c00b3d8 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>
1c00abc6:	65010713          	addi	a4,sp,1616
1c00abca:	a0070793          	addi	a5,a4,-1536
1c00abce:	25010813          	addi	a6,sp,592
1c00abd2:	4388                	lw	a0,0(a5)
1c00abd4:	43cc                	lw	a1,4(a5)
1c00abd6:	4790                	lw	a2,8(a5)
1c00abd8:	47d4                	lw	a3,12(a5)
1c00abda:	c308                	sw	a0,0(a4)
1c00abdc:	c34c                	sw	a1,4(a4)
1c00abde:	c710                	sw	a2,8(a4)
1c00abe0:	c754                	sw	a3,12(a4)
1c00abe2:	07c1                	addi	a5,a5,16
1c00abe4:	0741                	addi	a4,a4,16
1c00abe6:	ff0796e3          	bne	a5,a6,1c00abd2 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x2ac>
1c00abea:	678d                	lui	a5,0x3
1c00abec:	62078793          	addi	a5,a5,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00abf0:	1814                	addi	a3,sp,48
1c00abf2:	7775                	lui	a4,0xffffd
1c00abf4:	97b6                	add	a5,a5,a3
1c00abf6:	973e                	add	a4,a4,a5
1c00abf8:	6341                	lui	t1,0x10
1c00abfa:	4581                	li	a1,0
1c00abfc:	137d                	addi	t1,t1,-1
1c00abfe:	8e3a                	mv	t3,a4
1c00ac00:	10000e93          	li	t4,256
1c00ac04:	00071603          	lh	a2,0(a4) # ffffd000 <__l2_shared_end+0xe3fed000>
1c00ac08:	00471883          	lh	a7,4(a4)
1c00ac0c:	00271683          	lh	a3,2(a4)
1c00ac10:	00671803          	lh	a6,6(a4)
1c00ac14:	4015d793          	srai	a5,a1,0x1
1c00ac18:	00279513          	slli	a0,a5,0x2
1c00ac1c:	0642                	slli	a2,a2,0x10
1c00ac1e:	0068f8b3          	and	a7,a7,t1
1c00ac22:	0785                	addi	a5,a5,1
1c00ac24:	06c2                	slli	a3,a3,0x10
1c00ac26:	00687833          	and	a6,a6,t1
1c00ac2a:	9572                	add	a0,a0,t3
1c00ac2c:	01166633          	or	a2,a2,a7
1c00ac30:	078a                	slli	a5,a5,0x2
1c00ac32:	0106e6b3          	or	a3,a3,a6
1c00ac36:	20c52023          	sw	a2,512(a0) # 1000200 <__CTOR_LIST__-0x1afffe04>
1c00ac3a:	97f2                	add	a5,a5,t3
1c00ac3c:	20d7a023          	sw	a3,512(a5)
1c00ac40:	0591                	addi	a1,a1,4
1c00ac42:	0721                	addi	a4,a4,8
1c00ac44:	fdd590e3          	bne	a1,t4,1c00ac04 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x2de>
1c00ac48:	1c000537          	lui	a0,0x1c000
1c00ac4c:	14850513          	addi	a0,a0,328 # 1c000148 <__clz_tab+0x12c>
1c00ac50:	719000ef          	jal	ra,1c00bb68 <puts>
1c00ac54:	678d                	lui	a5,0x3
1c00ac56:	7475                	lui	s0,0xffffd
1c00ac58:	62078793          	addi	a5,a5,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00ac5c:	1818                	addi	a4,sp,48
1c00ac5e:	20040413          	addi	s0,s0,512 # ffffd200 <__l2_shared_end+0xe3fed200>
1c00ac62:	97ba                	add	a5,a5,a4
1c00ac64:	943e                	add	s0,s0,a5
1c00ac66:	20040493          	addi	s1,s0,512
1c00ac6a:	1c000937          	lui	s2,0x1c000
1c00ac6e:	400c                	lw	a1,0(s0)
1c00ac70:	18490513          	addi	a0,s2,388 # 1c000184 <__clz_tab+0x168>
1c00ac74:	0411                	addi	s0,s0,4
1c00ac76:	7b5000ef          	jal	ra,1c00bc2a <printf>
1c00ac7a:	fe941ae3          	bne	s0,s1,1c00ac6e <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x348>
1c00ac7e:	4529                	li	a0,10
1c00ac80:	765000ef          	jal	ra,1c00bbe4 <putchar>
1c00ac84:	1c000537          	lui	a0,0x1c000
1c00ac88:	18c50513          	addi	a0,a0,396 # 1c00018c <__clz_tab+0x170>
1c00ac8c:	6dd000ef          	jal	ra,1c00bb68 <puts>
1c00ac90:	668d                	lui	a3,0x3
1c00ac92:	1810                	addi	a2,sp,48
1c00ac94:	62068713          	addi	a4,a3,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00ac98:	77f5                	lui	a5,0xffffd
1c00ac9a:	9732                	add	a4,a4,a2
1c00ac9c:	40078493          	addi	s1,a5,1024 # ffffd400 <__l2_shared_end+0xe3fed400>
1c00aca0:	94ba                	add	s1,s1,a4
1c00aca2:	62068713          	addi	a4,a3,1568
1c00aca6:	20078793          	addi	a5,a5,512
1c00acaa:	9732                	add	a4,a4,a2
1c00acac:	85a6                	mv	a1,s1
1c00acae:	00f70533          	add	a0,a4,a5
1c00acb2:	ea6fe0ef          	jal	ra,1c009358 <KYBER_poly_intt>
1c00acb6:	1c000537          	lui	a0,0x1c000
1c00acba:	1b050513          	addi	a0,a0,432 # 1c0001b0 <__clz_tab+0x194>
1c00acbe:	6ab000ef          	jal	ra,1c00bb68 <puts>
1c00acc2:	1c000537          	lui	a0,0x1c000
1c00acc6:	458d                	li	a1,3
1c00acc8:	1d050513          	addi	a0,a0,464 # 1c0001d0 <__clz_tab+0x1b4>
1c00accc:	75f000ef          	jal	ra,1c00bc2a <printf>
1c00acd0:	20048a13          	addi	s4,s1,512
1c00acd4:	8426                	mv	s0,s1
1c00acd6:	400c                	lw	a1,0(s0)
1c00acd8:	18490513          	addi	a0,s2,388
1c00acdc:	0411                	addi	s0,s0,4
1c00acde:	74d000ef          	jal	ra,1c00bc2a <printf>
1c00ace2:	ff441ae3          	bne	s0,s4,1c00acd6 <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x3b0>
1c00ace6:	678d                	lui	a5,0x3
1c00ace8:	7475                	lui	s0,0xffffd
1c00acea:	62078793          	addi	a5,a5,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00acee:	1818                	addi	a4,sp,48
1c00acf0:	97ba                	add	a5,a5,a4
1c00acf2:	a0040413          	addi	s0,s0,-1536 # ffffca00 <__l2_shared_end+0xe3feca00>
1c00acf6:	943e                	add	s0,s0,a5
1c00acf8:	10040613          	addi	a2,s0,256
1c00acfc:	87a2                	mv	a5,s0
1c00acfe:	4098                	lw	a4,0(s1)
1c00ad00:	0789                	addi	a5,a5,2
1c00ad02:	0491                	addi	s1,s1,4
1c00ad04:	01075693          	srli	a3,a4,0x10
1c00ad08:	fed79f23          	sh	a3,-2(a5)
1c00ad0c:	0ee79f23          	sh	a4,254(a5)
1c00ad10:	fef617e3          	bne	a2,a5,1c00acfe <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x3d8>
1c00ad14:	1c000537          	lui	a0,0x1c000
1c00ad18:	458d                	li	a1,3
1c00ad1a:	1f450513          	addi	a0,a0,500 # 1c0001f4 <__clz_tab+0x1d8>
1c00ad1e:	70d000ef          	jal	ra,1c00bc2a <printf>
1c00ad22:	20040913          	addi	s2,s0,512
1c00ad26:	1c0004b7          	lui	s1,0x1c000
1c00ad2a:	00041583          	lh	a1,0(s0)
1c00ad2e:	21848513          	addi	a0,s1,536 # 1c000218 <__clz_tab+0x1fc>
1c00ad32:	0409                	addi	s0,s0,2
1c00ad34:	6f7000ef          	jal	ra,1c00bc2a <printf>
1c00ad38:	fe8919e3          	bne	s2,s0,1c00ad2a <PQCLEAN_KYBER768_CLEAN_indcpa_enc+0x404>
1c00ad3c:	678d                	lui	a5,0x3
1c00ad3e:	1814                	addi	a3,sp,48
1c00ad40:	62078713          	addi	a4,a5,1568 # 3620 <__CTOR_LIST__-0x1bffc9e4>
1c00ad44:	74fd                	lui	s1,0xfffff
1c00ad46:	9736                	add	a4,a4,a3
1c00ad48:	8a3e                	mv	s4,a5
1c00ad4a:	80048493          	addi	s1,s1,-2048 # ffffe800 <__l2_shared_end+0xe3fee800>
1c00ad4e:	7679                	lui	a2,0xffffe
1c00ad50:	62078793          	addi	a5,a5,1568
1c00ad54:	97b6                	add	a5,a5,a3
1c00ad56:	94ba                	add	s1,s1,a4
1c00ad58:	20060613          	addi	a2,a2,512 # ffffe200 <__l2_shared_end+0xe3fee200>
1c00ad5c:	963e                	add	a2,a2,a5
1c00ad5e:	85a6                	mv	a1,s1
1c00ad60:	8526                	mv	a0,s1
1c00ad62:	07d000ef          	jal	ra,1c00b5de <PQCLEAN_KYBER768_CLEAN_polyvec_add>
1c00ad66:	1818                	addi	a4,sp,48
1c00ad68:	7975                	lui	s2,0xffffd
1c00ad6a:	620a0793          	addi	a5,s4,1568
1c00ad6e:	97ba                	add	a5,a5,a4
1c00ad70:	a0090413          	addi	s0,s2,-1536 # ffffca00 <__l2_shared_end+0xe3feca00>
1c00ad74:	943e                	add	s0,s0,a5
1c00ad76:	620a0793          	addi	a5,s4,1568
1c00ad7a:	97ba                	add	a5,a5,a4
1c00ad7c:	e0090613          	addi	a2,s2,-512
1c00ad80:	963e                	add	a2,a2,a5
1c00ad82:	85a2                	mv	a1,s0
1c00ad84:	8522                	mv	a0,s0
1c00ad86:	2195                	jal	1c00b1ea <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00ad88:	1818                	addi	a4,sp,48
1c00ad8a:	620a0793          	addi	a5,s4,1568
1c00ad8e:	97ba                	add	a5,a5,a4
1c00ad90:	c0090613          	addi	a2,s2,-1024
1c00ad94:	963e                	add	a2,a2,a5
1c00ad96:	85a2                	mv	a1,s0
1c00ad98:	8522                	mv	a0,s0
1c00ad9a:	2981                	jal	1c00b1ea <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00ad9c:	8526                	mv	a0,s1
1c00ad9e:	025000ef          	jal	ra,1c00b5c2 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>
1c00ada2:	8522                	mv	a0,s0
1c00ada4:	2939                	jal	1c00b1c2 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00ada6:	85a6                	mv	a1,s1
1c00ada8:	854e                	mv	a0,s3
1c00adaa:	21a5                	jal	1c00b212 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>
1c00adac:	85a2                	mv	a1,s0
1c00adae:	3c098513          	addi	a0,s3,960
1c00adb2:	2a3d                	jal	1c00aef0 <PQCLEAN_KYBER768_CLEAN_poly_compress>
1c00adb4:	630d                	lui	t1,0x3
1c00adb6:	911a                	add	sp,sp,t1
1c00adb8:	68c12083          	lw	ra,1676(sp)
1c00adbc:	68812403          	lw	s0,1672(sp)
1c00adc0:	68412483          	lw	s1,1668(sp)
1c00adc4:	68012903          	lw	s2,1664(sp)
1c00adc8:	67c12983          	lw	s3,1660(sp)
1c00adcc:	67812a03          	lw	s4,1656(sp)
1c00add0:	67412a83          	lw	s5,1652(sp)
1c00add4:	67012b03          	lw	s6,1648(sp)
1c00add8:	66c12b83          	lw	s7,1644(sp)
1c00addc:	66812c03          	lw	s8,1640(sp)
1c00ade0:	66412c83          	lw	s9,1636(sp)
1c00ade4:	66012d03          	lw	s10,1632(sp)
1c00ade8:	65c12d83          	lw	s11,1628(sp)
1c00adec:	69010113          	addi	sp,sp,1680
1c00adf0:	8082                	ret

1c00adf2 <PQCLEAN_KYBER768_CLEAN_crypto_kem_enc>:
1c00adf2:	7175                	addi	sp,sp,-144
1c00adf4:	c522                	sw	s0,136(sp)
1c00adf6:	c14a                	sw	s2,128(sp)
1c00adf8:	842a                	mv	s0,a0
1c00adfa:	892e                	mv	s2,a1
1c00adfc:	850a                	mv	a0,sp
1c00adfe:	02000593          	li	a1,32
1c00ae02:	c706                	sw	ra,140(sp)
1c00ae04:	c326                	sw	s1,132(sp)
1c00ae06:	84b2                	mv	s1,a2
1c00ae08:	017000ef          	jal	ra,1c00b61e <randombytes>
1c00ae0c:	858a                	mv	a1,sp
1c00ae0e:	850a                	mv	a0,sp
1c00ae10:	02000613          	li	a2,32
1c00ae14:	eeffe0ef          	jal	ra,1c009d02 <sha3_256>
1c00ae18:	85a6                	mv	a1,s1
1c00ae1a:	1008                	addi	a0,sp,32
1c00ae1c:	4a000613          	li	a2,1184
1c00ae20:	ee3fe0ef          	jal	ra,1c009d02 <sha3_256>
1c00ae24:	858a                	mv	a1,sp
1c00ae26:	0088                	addi	a0,sp,64
1c00ae28:	04000613          	li	a2,64
1c00ae2c:	9b6ff0ef          	jal	ra,1c009fe2 <sha3_512>
1c00ae30:	1094                	addi	a3,sp,96
1c00ae32:	8626                	mv	a2,s1
1c00ae34:	858a                	mv	a1,sp
1c00ae36:	8522                	mv	a0,s0
1c00ae38:	34fd                	jal	1c00a926 <PQCLEAN_KYBER768_CLEAN_indcpa_enc>
1c00ae3a:	85a2                	mv	a1,s0
1c00ae3c:	1088                	addi	a0,sp,96
1c00ae3e:	44000613          	li	a2,1088
1c00ae42:	ec1fe0ef          	jal	ra,1c009d02 <sha3_256>
1c00ae46:	854a                	mv	a0,s2
1c00ae48:	0090                	addi	a2,sp,64
1c00ae4a:	04000693          	li	a3,64
1c00ae4e:	02000593          	li	a1,32
1c00ae52:	c2dfe0ef          	jal	ra,1c009a7e <shake256>
1c00ae56:	40ba                	lw	ra,140(sp)
1c00ae58:	442a                	lw	s0,136(sp)
1c00ae5a:	449a                	lw	s1,132(sp)
1c00ae5c:	490a                	lw	s2,128(sp)
1c00ae5e:	4501                	li	a0,0
1c00ae60:	6149                	addi	sp,sp,144
1c00ae62:	8082                	ret

1c00ae64 <PQCLEAN_KYBER768_CLEAN_basemul>:
1c00ae64:	00261783          	lh	a5,2(a2)
1c00ae68:	00259703          	lh	a4,2(a1)
1c00ae6c:	1101                	addi	sp,sp,-32
1c00ae6e:	cc22                	sw	s0,24(sp)
1c00ae70:	842a                	mv	s0,a0
1c00ae72:	02f70533          	mul	a0,a4,a5
1c00ae76:	ce06                	sw	ra,28(sp)
1c00ae78:	ca26                	sw	s1,20(sp)
1c00ae7a:	c84a                	sw	s2,16(sp)
1c00ae7c:	c64e                	sw	s3,12(sp)
1c00ae7e:	892e                	mv	s2,a1
1c00ae80:	84b2                	mv	s1,a2
1c00ae82:	89b6                	mv	s3,a3
1c00ae84:	241000ef          	jal	ra,1c00b8c4 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ae88:	87aa                	mv	a5,a0
1c00ae8a:	03350533          	mul	a0,a0,s3
1c00ae8e:	00f41023          	sh	a5,0(s0)
1c00ae92:	233000ef          	jal	ra,1c00b8c4 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00ae96:	00a41023          	sh	a0,0(s0)
1c00ae9a:	00049783          	lh	a5,0(s1)
1c00ae9e:	00091503          	lh	a0,0(s2)
1c00aea2:	02f50533          	mul	a0,a0,a5
1c00aea6:	21f000ef          	jal	ra,1c00b8c4 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00aeaa:	00045783          	lhu	a5,0(s0)
1c00aeae:	953e                	add	a0,a0,a5
1c00aeb0:	00a41023          	sh	a0,0(s0)
1c00aeb4:	00249783          	lh	a5,2(s1)
1c00aeb8:	00091503          	lh	a0,0(s2)
1c00aebc:	02f50533          	mul	a0,a0,a5
1c00aec0:	205000ef          	jal	ra,1c00b8c4 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00aec4:	00a41123          	sh	a0,2(s0)
1c00aec8:	00049783          	lh	a5,0(s1)
1c00aecc:	00291503          	lh	a0,2(s2)
1c00aed0:	02f50533          	mul	a0,a0,a5
1c00aed4:	1f1000ef          	jal	ra,1c00b8c4 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>
1c00aed8:	00245783          	lhu	a5,2(s0)
1c00aedc:	40f2                	lw	ra,28(sp)
1c00aede:	44d2                	lw	s1,20(sp)
1c00aee0:	953e                	add	a0,a0,a5
1c00aee2:	00a41123          	sh	a0,2(s0)
1c00aee6:	4462                	lw	s0,24(sp)
1c00aee8:	4942                	lw	s2,16(sp)
1c00aeea:	49b2                	lw	s3,12(sp)
1c00aeec:	6105                	addi	sp,sp,32
1c00aeee:	8082                	ret

1c00aef0 <PQCLEAN_KYBER768_CLEAN_poly_compress>:
1c00aef0:	1101                	addi	sp,sp,-32
1c00aef2:	6605                	lui	a2,0x1
1c00aef4:	ce22                	sw	s0,28(sp)
1c00aef6:	cc26                	sw	s1,24(sp)
1c00aef8:	ca4a                	sw	s2,20(sp)
1c00aefa:	c84e                	sw	s3,16(sp)
1c00aefc:	c652                	sw	s4,12(sp)
1c00aefe:	08050813          	addi	a6,a0,128
1c00af02:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00af06:	00259a03          	lh	s4,2(a1)
1c00af0a:	00059383          	lh	t2,0(a1)
1c00af0e:	00659983          	lh	s3,6(a1)
1c00af12:	00a59903          	lh	s2,10(a1)
1c00af16:	00e59483          	lh	s1,14(a1)
1c00af1a:	00459283          	lh	t0,4(a1)
1c00af1e:	00859e03          	lh	t3,8(a1)
1c00af22:	00c59f83          	lh	t6,12(a1)
1c00af26:	40fa5893          	srai	a7,s4,0xf
1c00af2a:	00c8f8b3          	and	a7,a7,a2
1c00af2e:	40f3df13          	srai	t5,t2,0xf
1c00af32:	40f9d693          	srai	a3,s3,0xf
1c00af36:	40f95713          	srai	a4,s2,0xf
1c00af3a:	40f4d793          	srai	a5,s1,0xf
1c00af3e:	98d2                	add	a7,a7,s4
1c00af40:	00cf7f33          	and	t5,t5,a2
1c00af44:	40fe5413          	srai	s0,t3,0xf
1c00af48:	8ef1                	and	a3,a3,a2
1c00af4a:	40f2de93          	srai	t4,t0,0xf
1c00af4e:	8f71                	and	a4,a4,a2
1c00af50:	8ff1                	and	a5,a5,a2
1c00af52:	40ffd313          	srai	t1,t6,0xf
1c00af56:	08c2                	slli	a7,a7,0x10
1c00af58:	9f1e                	add	t5,t5,t2
1c00af5a:	96ce                	add	a3,a3,s3
1c00af5c:	00cefeb3          	and	t4,t4,a2
1c00af60:	974a                	add	a4,a4,s2
1c00af62:	8c71                	and	s0,s0,a2
1c00af64:	97a6                	add	a5,a5,s1
1c00af66:	00c37333          	and	t1,t1,a2
1c00af6a:	0108d893          	srli	a7,a7,0x10
1c00af6e:	0f42                	slli	t5,t5,0x10
1c00af70:	06c2                	slli	a3,a3,0x10
1c00af72:	9e96                	add	t4,t4,t0
1c00af74:	0742                	slli	a4,a4,0x10
1c00af76:	9e22                	add	t3,t3,s0
1c00af78:	07c2                	slli	a5,a5,0x10
1c00af7a:	937e                	add	t1,t1,t6
1c00af7c:	0892                	slli	a7,a7,0x4
1c00af7e:	010f5f13          	srli	t5,t5,0x10
1c00af82:	82c1                	srli	a3,a3,0x10
1c00af84:	8341                	srli	a4,a4,0x10
1c00af86:	83c1                	srli	a5,a5,0x10
1c00af88:	0ec2                	slli	t4,t4,0x10
1c00af8a:	0e42                	slli	t3,t3,0x10
1c00af8c:	0342                	slli	t1,t1,0x10
1c00af8e:	68088893          	addi	a7,a7,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00af92:	0f12                	slli	t5,t5,0x4
1c00af94:	02c8c8b3          	div	a7,a7,a2
1c00af98:	0692                	slli	a3,a3,0x4
1c00af9a:	010ede93          	srli	t4,t4,0x10
1c00af9e:	0712                	slli	a4,a4,0x4
1c00afa0:	010e5e13          	srli	t3,t3,0x10
1c00afa4:	0792                	slli	a5,a5,0x4
1c00afa6:	01035313          	srli	t1,t1,0x10
1c00afaa:	680f0f13          	addi	t5,t5,1664 # ff0680 <__CTOR_LIST__-0x1b00f984>
1c00afae:	68068693          	addi	a3,a3,1664
1c00afb2:	0e92                	slli	t4,t4,0x4
1c00afb4:	68070713          	addi	a4,a4,1664
1c00afb8:	0e12                	slli	t3,t3,0x4
1c00afba:	68078793          	addi	a5,a5,1664
1c00afbe:	0312                	slli	t1,t1,0x4
1c00afc0:	680e8e93          	addi	t4,t4,1664
1c00afc4:	680e0e13          	addi	t3,t3,1664
1c00afc8:	68030313          	addi	t1,t1,1664 # 3680 <__CTOR_LIST__-0x1bffc984>
1c00afcc:	0511                	addi	a0,a0,4
1c00afce:	05c1                	addi	a1,a1,16
1c00afd0:	02cf4f33          	div	t5,t5,a2
1c00afd4:	00f8f893          	andi	a7,a7,15
1c00afd8:	0892                	slli	a7,a7,0x4
1c00afda:	02c6c6b3          	div	a3,a3,a2
1c00afde:	00ff7f13          	andi	t5,t5,15
1c00afe2:	01e8e8b3          	or	a7,a7,t5
1c00afe6:	ff150e23          	sb	a7,-4(a0)
1c00afea:	02c74733          	div	a4,a4,a2
1c00afee:	8abd                	andi	a3,a3,15
1c00aff0:	0692                	slli	a3,a3,0x4
1c00aff2:	02c7c7b3          	div	a5,a5,a2
1c00aff6:	8b3d                	andi	a4,a4,15
1c00aff8:	0712                	slli	a4,a4,0x4
1c00affa:	02ceceb3          	div	t4,t4,a2
1c00affe:	8bbd                	andi	a5,a5,15
1c00b000:	0792                	slli	a5,a5,0x4
1c00b002:	02ce4e33          	div	t3,t3,a2
1c00b006:	00fef893          	andi	a7,t4,15
1c00b00a:	0116e6b3          	or	a3,a3,a7
1c00b00e:	fed50ea3          	sb	a3,-3(a0)
1c00b012:	02c34333          	div	t1,t1,a2
1c00b016:	00fe7e13          	andi	t3,t3,15
1c00b01a:	01c76733          	or	a4,a4,t3
1c00b01e:	fee50f23          	sb	a4,-2(a0)
1c00b022:	00f37313          	andi	t1,t1,15
1c00b026:	0067e7b3          	or	a5,a5,t1
1c00b02a:	fef50fa3          	sb	a5,-1(a0)
1c00b02e:	ed051ce3          	bne	a0,a6,1c00af06 <PQCLEAN_KYBER768_CLEAN_poly_compress+0x16>
1c00b032:	4472                	lw	s0,28(sp)
1c00b034:	44e2                	lw	s1,24(sp)
1c00b036:	4952                	lw	s2,20(sp)
1c00b038:	49c2                	lw	s3,16(sp)
1c00b03a:	4a32                	lw	s4,12(sp)
1c00b03c:	6105                	addi	sp,sp,32
1c00b03e:	8082                	ret

1c00b040 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>:
1c00b040:	6685                	lui	a3,0x1
1c00b042:	18058613          	addi	a2,a1,384
1c00b046:	16fd                	addi	a3,a3,-1
1c00b048:	0015c783          	lbu	a5,1(a1)
1c00b04c:	0005c703          	lbu	a4,0(a1)
1c00b050:	058d                	addi	a1,a1,3
1c00b052:	07a2                	slli	a5,a5,0x8
1c00b054:	8fd9                	or	a5,a5,a4
1c00b056:	8ff5                	and	a5,a5,a3
1c00b058:	00f51023          	sh	a5,0(a0)
1c00b05c:	ffe5c703          	lbu	a4,-2(a1)
1c00b060:	fff5c783          	lbu	a5,-1(a1)
1c00b064:	0511                	addi	a0,a0,4
1c00b066:	8311                	srli	a4,a4,0x4
1c00b068:	0792                	slli	a5,a5,0x4
1c00b06a:	8fd9                	or	a5,a5,a4
1c00b06c:	fef51f23          	sh	a5,-2(a0)
1c00b070:	fcb61ce3          	bne	a2,a1,1c00b048 <PQCLEAN_KYBER768_CLEAN_poly_frombytes+0x8>
1c00b074:	8082                	ret

1c00b076 <PQCLEAN_KYBER768_CLEAN_poly_frommsg>:
1c00b076:	20050713          	addi	a4,a0,512
1c00b07a:	0005c783          	lbu	a5,0(a1)
1c00b07e:	0541                	addi	a0,a0,16
1c00b080:	0585                	addi	a1,a1,1
1c00b082:	8b85                	andi	a5,a5,1
1c00b084:	40f007b3          	neg	a5,a5
1c00b088:	6817f793          	andi	a5,a5,1665
1c00b08c:	fef51823          	sh	a5,-16(a0)
1c00b090:	fff5c783          	lbu	a5,-1(a1)
1c00b094:	07fa                	slli	a5,a5,0x1e
1c00b096:	87fd                	srai	a5,a5,0x1f
1c00b098:	6817f793          	andi	a5,a5,1665
1c00b09c:	fef51923          	sh	a5,-14(a0)
1c00b0a0:	fff5c783          	lbu	a5,-1(a1)
1c00b0a4:	07f6                	slli	a5,a5,0x1d
1c00b0a6:	87fd                	srai	a5,a5,0x1f
1c00b0a8:	6817f793          	andi	a5,a5,1665
1c00b0ac:	fef51a23          	sh	a5,-12(a0)
1c00b0b0:	fff5c783          	lbu	a5,-1(a1)
1c00b0b4:	07f2                	slli	a5,a5,0x1c
1c00b0b6:	87fd                	srai	a5,a5,0x1f
1c00b0b8:	6817f793          	andi	a5,a5,1665
1c00b0bc:	fef51b23          	sh	a5,-10(a0)
1c00b0c0:	fff5c783          	lbu	a5,-1(a1)
1c00b0c4:	07ee                	slli	a5,a5,0x1b
1c00b0c6:	87fd                	srai	a5,a5,0x1f
1c00b0c8:	6817f793          	andi	a5,a5,1665
1c00b0cc:	fef51c23          	sh	a5,-8(a0)
1c00b0d0:	fff5c783          	lbu	a5,-1(a1)
1c00b0d4:	07ea                	slli	a5,a5,0x1a
1c00b0d6:	87fd                	srai	a5,a5,0x1f
1c00b0d8:	6817f793          	andi	a5,a5,1665
1c00b0dc:	fef51d23          	sh	a5,-6(a0)
1c00b0e0:	fff5c783          	lbu	a5,-1(a1)
1c00b0e4:	07e6                	slli	a5,a5,0x19
1c00b0e6:	87fd                	srai	a5,a5,0x1f
1c00b0e8:	6817f793          	andi	a5,a5,1665
1c00b0ec:	fef51e23          	sh	a5,-4(a0)
1c00b0f0:	fff5c783          	lbu	a5,-1(a1)
1c00b0f4:	879d                	srai	a5,a5,0x7
1c00b0f6:	40f007b3          	neg	a5,a5
1c00b0fa:	6817f793          	andi	a5,a5,1665
1c00b0fe:	fef51f23          	sh	a5,-2(a0)
1c00b102:	f6a71ce3          	bne	a4,a0,1c00b07a <PQCLEAN_KYBER768_CLEAN_poly_frommsg+0x4>
1c00b106:	8082                	ret

1c00b108 <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta1>:
1c00b108:	7175                	addi	sp,sp,-144
1c00b10a:	c522                	sw	s0,136(sp)
1c00b10c:	86b2                	mv	a3,a2
1c00b10e:	842a                	mv	s0,a0
1c00b110:	862e                	mv	a2,a1
1c00b112:	850a                	mv	a0,sp
1c00b114:	08000593          	li	a1,128
1c00b118:	c706                	sw	ra,140(sp)
1c00b11a:	023000ef          	jal	ra,1c00b93c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00b11e:	858a                	mv	a1,sp
1c00b120:	8522                	mv	a0,s0
1c00b122:	a92fe0ef          	jal	ra,1c0093b4 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta1>
1c00b126:	40ba                	lw	ra,140(sp)
1c00b128:	442a                	lw	s0,136(sp)
1c00b12a:	6149                	addi	sp,sp,144
1c00b12c:	8082                	ret

1c00b12e <PQCLEAN_KYBER768_CLEAN_poly_getnoise_eta2>:
1c00b12e:	7175                	addi	sp,sp,-144
1c00b130:	c522                	sw	s0,136(sp)
1c00b132:	86b2                	mv	a3,a2
1c00b134:	842a                	mv	s0,a0
1c00b136:	862e                	mv	a2,a1
1c00b138:	850a                	mv	a0,sp
1c00b13a:	08000593          	li	a1,128
1c00b13e:	c706                	sw	ra,140(sp)
1c00b140:	7fc000ef          	jal	ra,1c00b93c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>
1c00b144:	858a                	mv	a1,sp
1c00b146:	8522                	mv	a0,s0
1c00b148:	b6efe0ef          	jal	ra,1c0094b6 <PQCLEAN_KYBER768_CLEAN_poly_cbd_eta2>
1c00b14c:	40ba                	lw	ra,140(sp)
1c00b14e:	442a                	lw	s0,136(sp)
1c00b150:	6149                	addi	sp,sp,144
1c00b152:	8082                	ret

1c00b154 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>:
1c00b154:	1101                	addi	sp,sp,-32
1c00b156:	c452                	sw	s4,8(sp)
1c00b158:	c256                	sw	s5,4(sp)
1c00b15a:	1c000a37          	lui	s4,0x1c000
1c00b15e:	1c000ab7          	lui	s5,0x1c000
1c00b162:	ca26                	sw	s1,20(sp)
1c00b164:	c84a                	sw	s2,16(sp)
1c00b166:	c64e                	sw	s3,12(sp)
1c00b168:	ce06                	sw	ra,28(sp)
1c00b16a:	cc22                	sw	s0,24(sp)
1c00b16c:	2a0a0a13          	addi	s4,s4,672 # 1c0002a0 <PQCLEAN_KYBER768_CLEAN_zetas+0x80>
1c00b170:	00450993          	addi	s3,a0,4
1c00b174:	00458913          	addi	s2,a1,4
1c00b178:	00460493          	addi	s1,a2,4
1c00b17c:	320a8a93          	addi	s5,s5,800 # 1c000320 <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00b180:	000a1403          	lh	s0,0(s4)
1c00b184:	ffc48613          	addi	a2,s1,-4
1c00b188:	ffc90593          	addi	a1,s2,-4
1c00b18c:	ffc98513          	addi	a0,s3,-4
1c00b190:	86a2                	mv	a3,s0
1c00b192:	39c9                	jal	1c00ae64 <PQCLEAN_KYBER768_CLEAN_basemul>
1c00b194:	408006b3          	neg	a3,s0
1c00b198:	06c2                	slli	a3,a3,0x10
1c00b19a:	8626                	mv	a2,s1
1c00b19c:	85ca                	mv	a1,s2
1c00b19e:	854e                	mv	a0,s3
1c00b1a0:	86c1                	srai	a3,a3,0x10
1c00b1a2:	0a09                	addi	s4,s4,2
1c00b1a4:	31c1                	jal	1c00ae64 <PQCLEAN_KYBER768_CLEAN_basemul>
1c00b1a6:	09a1                	addi	s3,s3,8
1c00b1a8:	0921                	addi	s2,s2,8
1c00b1aa:	04a1                	addi	s1,s1,8
1c00b1ac:	fd4a9ae3          	bne	s5,s4,1c00b180 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery+0x2c>
1c00b1b0:	40f2                	lw	ra,28(sp)
1c00b1b2:	4462                	lw	s0,24(sp)
1c00b1b4:	44d2                	lw	s1,20(sp)
1c00b1b6:	4942                	lw	s2,16(sp)
1c00b1b8:	49b2                	lw	s3,12(sp)
1c00b1ba:	4a22                	lw	s4,8(sp)
1c00b1bc:	4a92                	lw	s5,4(sp)
1c00b1be:	6105                	addi	sp,sp,32
1c00b1c0:	8082                	ret

1c00b1c2 <PQCLEAN_KYBER768_CLEAN_poly_reduce>:
1c00b1c2:	1141                	addi	sp,sp,-16
1c00b1c4:	c422                	sw	s0,8(sp)
1c00b1c6:	c226                	sw	s1,4(sp)
1c00b1c8:	c606                	sw	ra,12(sp)
1c00b1ca:	842a                	mv	s0,a0
1c00b1cc:	20050493          	addi	s1,a0,512
1c00b1d0:	00041503          	lh	a0,0(s0)
1c00b1d4:	0409                	addi	s0,s0,2
1c00b1d6:	2729                	jal	1c00b8e0 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>
1c00b1d8:	fea41f23          	sh	a0,-2(s0)
1c00b1dc:	fe941ae3          	bne	s0,s1,1c00b1d0 <PQCLEAN_KYBER768_CLEAN_poly_reduce+0xe>
1c00b1e0:	40b2                	lw	ra,12(sp)
1c00b1e2:	4422                	lw	s0,8(sp)
1c00b1e4:	4492                	lw	s1,4(sp)
1c00b1e6:	0141                	addi	sp,sp,16
1c00b1e8:	8082                	ret

1c00b1ea <PQCLEAN_KYBER768_CLEAN_poly_add>:
1c00b1ea:	4781                	li	a5,0
1c00b1ec:	20000893          	li	a7,512
1c00b1f0:	00f606b3          	add	a3,a2,a5
1c00b1f4:	00f58733          	add	a4,a1,a5
1c00b1f8:	0006d803          	lhu	a6,0(a3) # 1000 <__CTOR_LIST__-0x1bfff004>
1c00b1fc:	00075703          	lhu	a4,0(a4)
1c00b200:	00f506b3          	add	a3,a0,a5
1c00b204:	0789                	addi	a5,a5,2
1c00b206:	9742                	add	a4,a4,a6
1c00b208:	00e69023          	sh	a4,0(a3)
1c00b20c:	ff1792e3          	bne	a5,a7,1c00b1f0 <PQCLEAN_KYBER768_CLEAN_poly_add+0x6>
1c00b210:	8082                	ret

1c00b212 <PQCLEAN_KYBER768_CLEAN_polyvec_compress>:
1c00b212:	88aa                	mv	a7,a0
1c00b214:	6605                	lui	a2,0x1
1c00b216:	14050513          	addi	a0,a0,320
1c00b21a:	882e                	mv	a6,a1
1c00b21c:	50088893          	addi	a7,a7,1280
1c00b220:	d0160613          	addi	a2,a2,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b224:	ec050693          	addi	a3,a0,-320
1c00b228:	85c2                	mv	a1,a6
1c00b22a:	00059283          	lh	t0,0(a1)
1c00b22e:	00259f83          	lh	t6,2(a1)
1c00b232:	00459f03          	lh	t5,4(a1)
1c00b236:	40f2de13          	srai	t3,t0,0xf
1c00b23a:	40ffd713          	srai	a4,t6,0xf
1c00b23e:	00ce7e33          	and	t3,t3,a2
1c00b242:	8f71                	and	a4,a4,a2
1c00b244:	00659e83          	lh	t4,6(a1)
1c00b248:	40ff5793          	srai	a5,t5,0xf
1c00b24c:	9e16                	add	t3,t3,t0
1c00b24e:	977e                	add	a4,a4,t6
1c00b250:	8ff1                	and	a5,a5,a2
1c00b252:	0e42                	slli	t3,t3,0x10
1c00b254:	0742                	slli	a4,a4,0x10
1c00b256:	97fa                	add	a5,a5,t5
1c00b258:	010e5e13          	srli	t3,t3,0x10
1c00b25c:	8341                	srli	a4,a4,0x10
1c00b25e:	40fed313          	srai	t1,t4,0xf
1c00b262:	07c2                	slli	a5,a5,0x10
1c00b264:	0e2a                	slli	t3,t3,0xa
1c00b266:	072a                	slli	a4,a4,0xa
1c00b268:	00c37333          	and	t1,t1,a2
1c00b26c:	83c1                	srli	a5,a5,0x10
1c00b26e:	680e0e13          	addi	t3,t3,1664
1c00b272:	68070713          	addi	a4,a4,1664
1c00b276:	9376                	add	t1,t1,t4
1c00b278:	02ce5e33          	divu	t3,t3,a2
1c00b27c:	07aa                	slli	a5,a5,0xa
1c00b27e:	0342                	slli	t1,t1,0x10
1c00b280:	68078793          	addi	a5,a5,1664
1c00b284:	01035313          	srli	t1,t1,0x10
1c00b288:	032a                	slli	t1,t1,0xa
1c00b28a:	68030313          	addi	t1,t1,1664
1c00b28e:	0695                	addi	a3,a3,5
1c00b290:	05a1                	addi	a1,a1,8
1c00b292:	02c75733          	divu	a4,a4,a2
1c00b296:	3ffe7e13          	andi	t3,t3,1023
1c00b29a:	008e5e93          	srli	t4,t3,0x8
1c00b29e:	ffc68da3          	sb	t3,-5(a3)
1c00b2a2:	02c7d7b3          	divu	a5,a5,a2
1c00b2a6:	3ff77713          	andi	a4,a4,1023
1c00b2aa:	00271e13          	slli	t3,a4,0x2
1c00b2ae:	01ceee33          	or	t3,t4,t3
1c00b2b2:	8319                	srli	a4,a4,0x6
1c00b2b4:	ffc68e23          	sb	t3,-4(a3)
1c00b2b8:	02c35333          	divu	t1,t1,a2
1c00b2bc:	3ff7f793          	andi	a5,a5,1023
1c00b2c0:	00479e13          	slli	t3,a5,0x4
1c00b2c4:	01c76733          	or	a4,a4,t3
1c00b2c8:	fee68ea3          	sb	a4,-3(a3)
1c00b2cc:	8391                	srli	a5,a5,0x4
1c00b2ce:	3ff37713          	andi	a4,t1,1023
1c00b2d2:	00671313          	slli	t1,a4,0x6
1c00b2d6:	0067e7b3          	or	a5,a5,t1
1c00b2da:	8309                	srli	a4,a4,0x2
1c00b2dc:	fef68f23          	sb	a5,-2(a3)
1c00b2e0:	fee68fa3          	sb	a4,-1(a3)
1c00b2e4:	f4a693e3          	bne	a3,a0,1c00b22a <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x18>
1c00b2e8:	14068513          	addi	a0,a3,320
1c00b2ec:	20080813          	addi	a6,a6,512 # ff010200 <__l2_shared_end+0xe3000200>
1c00b2f0:	f2a89ae3          	bne	a7,a0,1c00b224 <PQCLEAN_KYBER768_CLEAN_polyvec_compress+0x12>
1c00b2f4:	8082                	ret

1c00b2f6 <PQCLEAN_KYBER768_CLEAN_polyvec_frombytes>:
1c00b2f6:	1141                	addi	sp,sp,-16
1c00b2f8:	c606                	sw	ra,12(sp)
1c00b2fa:	c422                	sw	s0,8(sp)
1c00b2fc:	c226                	sw	s1,4(sp)
1c00b2fe:	842a                	mv	s0,a0
1c00b300:	84ae                	mv	s1,a1
1c00b302:	3b3d                	jal	1c00b040 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00b304:	18048593          	addi	a1,s1,384
1c00b308:	20040513          	addi	a0,s0,512
1c00b30c:	3b15                	jal	1c00b040 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>
1c00b30e:	40040513          	addi	a0,s0,1024
1c00b312:	4422                	lw	s0,8(sp)
1c00b314:	40b2                	lw	ra,12(sp)
1c00b316:	30048593          	addi	a1,s1,768
1c00b31a:	4492                	lw	s1,4(sp)
1c00b31c:	0141                	addi	sp,sp,16
1c00b31e:	b30d                	j	1c00b040 <PQCLEAN_KYBER768_CLEAN_poly_frombytes>

1c00b320 <PQCLEAN_KYBER768_CLEAN_polyvec_ntt>:
1c00b320:	9e010113          	addi	sp,sp,-1568
1c00b324:	60912a23          	sw	s1,1556(sp)
1c00b328:	64c1                	lui	s1,0x10
1c00b32a:	60812c23          	sw	s0,1560(sp)
1c00b32e:	61212823          	sw	s2,1552(sp)
1c00b332:	61312623          	sw	s3,1548(sp)
1c00b336:	61412423          	sw	s4,1544(sp)
1c00b33a:	60112e23          	sw	ra,1564(sp)
1c00b33e:	8a2a                	mv	s4,a0
1c00b340:	60050413          	addi	s0,a0,1536
1c00b344:	40010993          	addi	s3,sp,1024
1c00b348:	14fd                	addi	s1,s1,-1
1c00b34a:	10000913          	li	s2,256
1c00b34e:	20000613          	li	a2,512
1c00b352:	85d2                	mv	a1,s4
1c00b354:	854e                	mv	a0,s3
1c00b356:	2599                	jal	1c00b99c <memcpy>
1c00b358:	864e                	mv	a2,s3
1c00b35a:	4681                	li	a3,0
1c00b35c:	00061703          	lh	a4,0(a2)
1c00b360:	00261583          	lh	a1,2(a2)
1c00b364:	4016d793          	srai	a5,a3,0x1
1c00b368:	078a                	slli	a5,a5,0x2
1c00b36a:	0742                	slli	a4,a4,0x10
1c00b36c:	8de5                	and	a1,a1,s1
1c00b36e:	60010513          	addi	a0,sp,1536
1c00b372:	97aa                	add	a5,a5,a0
1c00b374:	8f4d                	or	a4,a4,a1
1c00b376:	a0e7a023          	sw	a4,-1536(a5)
1c00b37a:	0689                	addi	a3,a3,2
1c00b37c:	0611                	addi	a2,a2,4
1c00b37e:	fd269fe3          	bne	a3,s2,1c00b35c <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x3c>
1c00b382:	040c                	addi	a1,sp,512
1c00b384:	850a                	mv	a0,sp
1c00b386:	f77fd0ef          	jal	ra,1c0092fc <KYBER_poly_ntt>
1c00b38a:	0418                	addi	a4,sp,512
1c00b38c:	87d2                	mv	a5,s4
1c00b38e:	4310                	lw	a2,0(a4)
1c00b390:	4354                	lw	a3,4(a4)
1c00b392:	0721                	addi	a4,a4,8
1c00b394:	01065813          	srli	a6,a2,0x10
1c00b398:	0106d593          	srli	a1,a3,0x10
1c00b39c:	01079023          	sh	a6,0(a5)
1c00b3a0:	00b79123          	sh	a1,2(a5)
1c00b3a4:	00c79223          	sh	a2,4(a5)
1c00b3a8:	00d79323          	sh	a3,6(a5)
1c00b3ac:	07a1                	addi	a5,a5,8
1c00b3ae:	fee990e3          	bne	s3,a4,1c00b38e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x6e>
1c00b3b2:	200a0a13          	addi	s4,s4,512
1c00b3b6:	f9441ce3          	bne	s0,s4,1c00b34e <PQCLEAN_KYBER768_CLEAN_polyvec_ntt+0x2e>
1c00b3ba:	61c12083          	lw	ra,1564(sp)
1c00b3be:	61812403          	lw	s0,1560(sp)
1c00b3c2:	61412483          	lw	s1,1556(sp)
1c00b3c6:	61012903          	lw	s2,1552(sp)
1c00b3ca:	60c12983          	lw	s3,1548(sp)
1c00b3ce:	60812a03          	lw	s4,1544(sp)
1c00b3d2:	62010113          	addi	sp,sp,1568
1c00b3d6:	8082                	ret

1c00b3d8 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont>:
1c00b3d8:	9c010113          	addi	sp,sp,-1600
1c00b3dc:	63312623          	sw	s3,1580(sp)
1c00b3e0:	69c1                	lui	s3,0x10
1c00b3e2:	62912a23          	sw	s1,1588(sp)
1c00b3e6:	63212823          	sw	s2,1584(sp)
1c00b3ea:	63412423          	sw	s4,1576(sp)
1c00b3ee:	63512223          	sw	s5,1572(sp)
1c00b3f2:	63612023          	sw	s6,1568(sp)
1c00b3f6:	61712e23          	sw	s7,1564(sp)
1c00b3fa:	61812c23          	sw	s8,1560(sp)
1c00b3fe:	61b12623          	sw	s11,1548(sp)
1c00b402:	62112e23          	sw	ra,1596(sp)
1c00b406:	62812c23          	sw	s0,1592(sp)
1c00b40a:	61912a23          	sw	s9,1556(sp)
1c00b40e:	61a12823          	sw	s10,1552(sp)
1c00b412:	20050a13          	addi	s4,a0,512
1c00b416:	4c01                	li	s8,0
1c00b418:	40010493          	addi	s1,sp,1024
1c00b41c:	1c000db7          	lui	s11,0x1c000
1c00b420:	20010a93          	addi	s5,sp,512
1c00b424:	1c000937          	lui	s2,0x1c000
1c00b428:	1c000b37          	lui	s6,0x1c000
1c00b42c:	19fd                	addi	s3,s3,-1
1c00b42e:	10000b93          	li	s7,256
1c00b432:	e00a0413          	addi	s0,s4,-512
1c00b436:	85a2                	mv	a1,s0
1c00b438:	20000613          	li	a2,512
1c00b43c:	8526                	mv	a0,s1
1c00b43e:	2bb9                	jal	1c00b99c <memcpy>
1c00b440:	8726                	mv	a4,s1
1c00b442:	4581                	li	a1,0
1c00b444:	00071603          	lh	a2,0(a4)
1c00b448:	00471883          	lh	a7,4(a4)
1c00b44c:	00271683          	lh	a3,2(a4)
1c00b450:	00671803          	lh	a6,6(a4)
1c00b454:	4015d793          	srai	a5,a1,0x1
1c00b458:	00279513          	slli	a0,a5,0x2
1c00b45c:	60010313          	addi	t1,sp,1536
1c00b460:	0642                	slli	a2,a2,0x10
1c00b462:	0138f8b3          	and	a7,a7,s3
1c00b466:	0785                	addi	a5,a5,1
1c00b468:	06c2                	slli	a3,a3,0x10
1c00b46a:	01387833          	and	a6,a6,s3
1c00b46e:	951a                	add	a0,a0,t1
1c00b470:	01166633          	or	a2,a2,a7
1c00b474:	078a                	slli	a5,a5,0x2
1c00b476:	0106e6b3          	or	a3,a3,a6
1c00b47a:	a0c52023          	sw	a2,-1536(a0)
1c00b47e:	979a                	add	a5,a5,t1
1c00b480:	a0d7a023          	sw	a3,-1536(a5)
1c00b484:	0591                	addi	a1,a1,4
1c00b486:	0721                	addi	a4,a4,8
1c00b488:	fb759ee3          	bne	a1,s7,1c00b444 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x6c>
1c00b48c:	148d8513          	addi	a0,s11,328 # 1c000148 <__clz_tab+0x12c>
1c00b490:	2de1                	jal	1c00bb68 <puts>
1c00b492:	8c8a                	mv	s9,sp
1c00b494:	000ca583          	lw	a1,0(s9) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b498:	18490513          	addi	a0,s2,388 # 1c000184 <__clz_tab+0x168>
1c00b49c:	0c91                	addi	s9,s9,4
1c00b49e:	78c000ef          	jal	ra,1c00bc2a <printf>
1c00b4a2:	ff9a99e3          	bne	s5,s9,1c00b494 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0xbc>
1c00b4a6:	4529                	li	a0,10
1c00b4a8:	2f35                	jal	1c00bbe4 <putchar>
1c00b4aa:	1c0007b7          	lui	a5,0x1c000
1c00b4ae:	18c78513          	addi	a0,a5,396 # 1c00018c <__clz_tab+0x170>
1c00b4b2:	2d5d                	jal	1c00bb68 <puts>
1c00b4b4:	85d6                	mv	a1,s5
1c00b4b6:	850a                	mv	a0,sp
1c00b4b8:	ea1fd0ef          	jal	ra,1c009358 <KYBER_poly_intt>
1c00b4bc:	1c0007b7          	lui	a5,0x1c000
1c00b4c0:	1b078513          	addi	a0,a5,432 # 1c0001b0 <__clz_tab+0x194>
1c00b4c4:	2555                	jal	1c00bb68 <puts>
1c00b4c6:	1c0007b7          	lui	a5,0x1c000
1c00b4ca:	85e2                	mv	a1,s8
1c00b4cc:	1d078513          	addi	a0,a5,464 # 1c0001d0 <__clz_tab+0x1b4>
1c00b4d0:	2fa9                	jal	1c00bc2a <printf>
1c00b4d2:	8cd6                	mv	s9,s5
1c00b4d4:	8d56                	mv	s10,s5
1c00b4d6:	000d2583          	lw	a1,0(s10) # ff0000 <__CTOR_LIST__-0x1b010004>
1c00b4da:	18490513          	addi	a0,s2,388
1c00b4de:	0d11                	addi	s10,s10,4
1c00b4e0:	27a9                	jal	1c00bc2a <printf>
1c00b4e2:	ffa49ae3          	bne	s1,s10,1c00b4d6 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0xfe>
1c00b4e6:	f00a0793          	addi	a5,s4,-256
1c00b4ea:	000ca683          	lw	a3,0(s9)
1c00b4ee:	0c91                	addi	s9,s9,4
1c00b4f0:	0789                	addi	a5,a5,2
1c00b4f2:	0106d613          	srli	a2,a3,0x10
1c00b4f6:	eec79f23          	sh	a2,-258(a5)
1c00b4fa:	fed79f23          	sh	a3,-2(a5)
1c00b4fe:	ff9496e3          	bne	s1,s9,1c00b4ea <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x112>
1c00b502:	1c0007b7          	lui	a5,0x1c000
1c00b506:	85e2                	mv	a1,s8
1c00b508:	1f478513          	addi	a0,a5,500 # 1c0001f4 <__clz_tab+0x1d8>
1c00b50c:	2f39                	jal	1c00bc2a <printf>
1c00b50e:	00041583          	lh	a1,0(s0)
1c00b512:	218b0513          	addi	a0,s6,536 # 1c000218 <__clz_tab+0x1fc>
1c00b516:	0409                	addi	s0,s0,2
1c00b518:	2f09                	jal	1c00bc2a <printf>
1c00b51a:	ff441ae3          	bne	s0,s4,1c00b50e <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x136>
1c00b51e:	0c05                	addi	s8,s8,1
1c00b520:	478d                	li	a5,3
1c00b522:	20040a13          	addi	s4,s0,512
1c00b526:	f0fc16e3          	bne	s8,a5,1c00b432 <PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont+0x5a>
1c00b52a:	63c12083          	lw	ra,1596(sp)
1c00b52e:	63812403          	lw	s0,1592(sp)
1c00b532:	63412483          	lw	s1,1588(sp)
1c00b536:	63012903          	lw	s2,1584(sp)
1c00b53a:	62c12983          	lw	s3,1580(sp)
1c00b53e:	62812a03          	lw	s4,1576(sp)
1c00b542:	62412a83          	lw	s5,1572(sp)
1c00b546:	62012b03          	lw	s6,1568(sp)
1c00b54a:	61c12b83          	lw	s7,1564(sp)
1c00b54e:	61812c03          	lw	s8,1560(sp)
1c00b552:	61412c83          	lw	s9,1556(sp)
1c00b556:	61012d03          	lw	s10,1552(sp)
1c00b55a:	60c12d83          	lw	s11,1548(sp)
1c00b55e:	64010113          	addi	sp,sp,1600
1c00b562:	8082                	ret

1c00b564 <PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery>:
1c00b564:	df010113          	addi	sp,sp,-528
1c00b568:	20112623          	sw	ra,524(sp)
1c00b56c:	20812423          	sw	s0,520(sp)
1c00b570:	20912223          	sw	s1,516(sp)
1c00b574:	21212023          	sw	s2,512(sp)
1c00b578:	842a                	mv	s0,a0
1c00b57a:	84ae                	mv	s1,a1
1c00b57c:	8932                	mv	s2,a2
1c00b57e:	3ed9                	jal	1c00b154 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b580:	20090613          	addi	a2,s2,512
1c00b584:	20048593          	addi	a1,s1,512 # 10200 <__CTOR_LIST__-0x1bfefe04>
1c00b588:	850a                	mv	a0,sp
1c00b58a:	36e9                	jal	1c00b154 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b58c:	860a                	mv	a2,sp
1c00b58e:	85a2                	mv	a1,s0
1c00b590:	8522                	mv	a0,s0
1c00b592:	39a1                	jal	1c00b1ea <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b594:	40090613          	addi	a2,s2,1024
1c00b598:	40048593          	addi	a1,s1,1024
1c00b59c:	850a                	mv	a0,sp
1c00b59e:	3e5d                	jal	1c00b154 <PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery>
1c00b5a0:	860a                	mv	a2,sp
1c00b5a2:	85a2                	mv	a1,s0
1c00b5a4:	8522                	mv	a0,s0
1c00b5a6:	3191                	jal	1c00b1ea <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b5a8:	8522                	mv	a0,s0
1c00b5aa:	3921                	jal	1c00b1c2 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b5ac:	20c12083          	lw	ra,524(sp)
1c00b5b0:	20812403          	lw	s0,520(sp)
1c00b5b4:	20412483          	lw	s1,516(sp)
1c00b5b8:	20012903          	lw	s2,512(sp)
1c00b5bc:	21010113          	addi	sp,sp,528
1c00b5c0:	8082                	ret

1c00b5c2 <PQCLEAN_KYBER768_CLEAN_polyvec_reduce>:
1c00b5c2:	1141                	addi	sp,sp,-16
1c00b5c4:	c606                	sw	ra,12(sp)
1c00b5c6:	c422                	sw	s0,8(sp)
1c00b5c8:	842a                	mv	s0,a0
1c00b5ca:	3ee5                	jal	1c00b1c2 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b5cc:	20040513          	addi	a0,s0,512
1c00b5d0:	3ecd                	jal	1c00b1c2 <PQCLEAN_KYBER768_CLEAN_poly_reduce>
1c00b5d2:	40040513          	addi	a0,s0,1024
1c00b5d6:	4422                	lw	s0,8(sp)
1c00b5d8:	40b2                	lw	ra,12(sp)
1c00b5da:	0141                	addi	sp,sp,16
1c00b5dc:	b6dd                	j	1c00b1c2 <PQCLEAN_KYBER768_CLEAN_poly_reduce>

1c00b5de <PQCLEAN_KYBER768_CLEAN_polyvec_add>:
1c00b5de:	1101                	addi	sp,sp,-32
1c00b5e0:	cc22                	sw	s0,24(sp)
1c00b5e2:	ca26                	sw	s1,20(sp)
1c00b5e4:	c84a                	sw	s2,16(sp)
1c00b5e6:	c64e                	sw	s3,12(sp)
1c00b5e8:	c452                	sw	s4,8(sp)
1c00b5ea:	ce06                	sw	ra,28(sp)
1c00b5ec:	89aa                	mv	s3,a0
1c00b5ee:	892e                	mv	s2,a1
1c00b5f0:	84b2                	mv	s1,a2
1c00b5f2:	4401                	li	s0,0
1c00b5f4:	60000a13          	li	s4,1536
1c00b5f8:	00848633          	add	a2,s1,s0
1c00b5fc:	008905b3          	add	a1,s2,s0
1c00b600:	00898533          	add	a0,s3,s0
1c00b604:	20040413          	addi	s0,s0,512
1c00b608:	36cd                	jal	1c00b1ea <PQCLEAN_KYBER768_CLEAN_poly_add>
1c00b60a:	ff4417e3          	bne	s0,s4,1c00b5f8 <PQCLEAN_KYBER768_CLEAN_polyvec_add+0x1a>
1c00b60e:	40f2                	lw	ra,28(sp)
1c00b610:	4462                	lw	s0,24(sp)
1c00b612:	44d2                	lw	s1,20(sp)
1c00b614:	4942                	lw	s2,16(sp)
1c00b616:	49b2                	lw	s3,12(sp)
1c00b618:	4a22                	lw	s4,8(sp)
1c00b61a:	6105                	addi	sp,sp,32
1c00b61c:	8082                	ret

1c00b61e <randombytes>:
1c00b61e:	2a058263          	beqz	a1,1c00b8c2 <randombytes+0x2a4>
1c00b622:	715d                	addi	sp,sp,-80
1c00b624:	00b50733          	add	a4,a0,a1
1c00b628:	c63a                	sw	a4,12(sp)
1c00b62a:	9e378737          	lui	a4,0x9e378
1c00b62e:	9b970713          	addi	a4,a4,-1607 # 9e3779b9 <__l2_shared_end+0x823679b9>
1c00b632:	1c0067b7          	lui	a5,0x1c006
1c00b636:	c43a                	sw	a4,8(sp)
1c00b638:	e377a737          	lui	a4,0xe377a
1c00b63c:	38478793          	addi	a5,a5,900 # 1c006384 <outleft>
1c00b640:	b9070713          	addi	a4,a4,-1136 # e3779b90 <__l2_shared_end+0xc7769b90>
1c00b644:	c83e                	sw	a5,16(sp)
1c00b646:	ca3a                	sw	a4,20(sp)
1c00b648:	439c                	lw	a5,0(a5)
1c00b64a:	c6ef3737          	lui	a4,0xc6ef3
1c00b64e:	c6a2                	sw	s0,76(sp)
1c00b650:	1c0062b7          	lui	t0,0x1c006
1c00b654:	1c006437          	lui	s0,0x1c006
1c00b658:	72070713          	addi	a4,a4,1824 # c6ef3720 <__l2_shared_end+0xaaee3720>
1c00b65c:	d06e                	sw	s11,32(sp)
1c00b65e:	c4a6                	sw	s1,72(sp)
1c00b660:	c2ca                	sw	s2,68(sp)
1c00b662:	c0ce                	sw	s3,64(sp)
1c00b664:	de52                	sw	s4,60(sp)
1c00b666:	dc56                	sw	s5,56(sp)
1c00b668:	da5a                	sw	s6,52(sp)
1c00b66a:	d85e                	sw	s7,48(sp)
1c00b66c:	d662                	sw	s8,44(sp)
1c00b66e:	d466                	sw	s9,40(sp)
1c00b670:	d26a                	sw	s10,36(sp)
1c00b672:	8daa                	mv	s11,a0
1c00b674:	36040413          	addi	s0,s0,864 # 1c006360 <out>
1c00b678:	33028293          	addi	t0,t0,816 # 1c006330 <in>
1c00b67c:	cc3a                	sw	a4,24(sp)
1c00b67e:	cf85                	beqz	a5,1c00b6b6 <randombytes+0x98>
1c00b680:	17fd                	addi	a5,a5,-1
1c00b682:	00279713          	slli	a4,a5,0x2
1c00b686:	9722                	add	a4,a4,s0
1c00b688:	4304                	lw	s1,0(a4)
1c00b68a:	4742                	lw	a4,16(sp)
1c00b68c:	009d8023          	sb	s1,0(s11)
1c00b690:	0d85                	addi	s11,s11,1
1c00b692:	c31c                	sw	a5,0(a4)
1c00b694:	4732                	lw	a4,12(sp)
1c00b696:	feed94e3          	bne	s11,a4,1c00b67e <randombytes+0x60>
1c00b69a:	4436                	lw	s0,76(sp)
1c00b69c:	44a6                	lw	s1,72(sp)
1c00b69e:	4916                	lw	s2,68(sp)
1c00b6a0:	4986                	lw	s3,64(sp)
1c00b6a2:	5a72                	lw	s4,60(sp)
1c00b6a4:	5ae2                	lw	s5,56(sp)
1c00b6a6:	5b52                	lw	s6,52(sp)
1c00b6a8:	5bc2                	lw	s7,48(sp)
1c00b6aa:	5c32                	lw	s8,44(sp)
1c00b6ac:	5ca2                	lw	s9,40(sp)
1c00b6ae:	5d12                	lw	s10,36(sp)
1c00b6b0:	5d82                	lw	s11,32(sp)
1c00b6b2:	6161                	addi	sp,sp,80
1c00b6b4:	8082                	ret
1c00b6b6:	0002a703          	lw	a4,0(t0)
1c00b6ba:	0042ae83          	lw	t4,4(t0)
1c00b6be:	0082af03          	lw	t5,8(t0)
1c00b6c2:	0705                	addi	a4,a4,1
1c00b6c4:	00e2a023          	sw	a4,0(t0)
1c00b6c8:	00c2af83          	lw	t6,12(t0)
1c00b6cc:	ef11                	bnez	a4,1c00b6e8 <randombytes+0xca>
1c00b6ce:	0e85                	addi	t4,t4,1
1c00b6d0:	01d2a223          	sw	t4,4(t0)
1c00b6d4:	000e9a63          	bnez	t4,1c00b6e8 <randombytes+0xca>
1c00b6d8:	0f05                	addi	t5,t5,1
1c00b6da:	01e2a423          	sw	t5,8(t0)
1c00b6de:	000f1563          	bnez	t5,1c00b6e8 <randombytes+0xca>
1c00b6e2:	0f85                	addi	t6,t6,1
1c00b6e4:	01f2a623          	sw	t6,12(t0)
1c00b6e8:	0102ae03          	lw	t3,16(t0)
1c00b6ec:	0142a303          	lw	t1,20(t0)
1c00b6f0:	0182a883          	lw	a7,24(t0)
1c00b6f4:	01c2a803          	lw	a6,28(t0)
1c00b6f8:	0202a503          	lw	a0,32(t0)
1c00b6fc:	0242a583          	lw	a1,36(t0)
1c00b700:	0282a603          	lw	a2,40(t0)
1c00b704:	02c2a683          	lw	a3,44(t0)
1c00b708:	00974713          	xori	a4,a4,9
1c00b70c:	007ece93          	xori	t4,t4,7
1c00b710:	009f4f13          	xori	t5,t5,9
1c00b714:	003fcf93          	xori	t6,t6,3
1c00b718:	002e4e13          	xori	t3,t3,2
1c00b71c:	00334313          	xori	t1,t1,3
1c00b720:	0088c893          	xori	a7,a7,8
1c00b724:	00484813          	xori	a6,a6,4
1c00b728:	00654513          	xori	a0,a0,6
1c00b72c:	0025c593          	xori	a1,a1,2
1c00b730:	00664613          	xori	a2,a2,6
1c00b734:	0046c693          	xori	a3,a3,4
1c00b738:	4495                	li	s1,5
1c00b73a:	49a5                	li	s3,9
1c00b73c:	4a1d                	li	s4,7
1c00b73e:	4a89                	li	s5,2
1c00b740:	4b0d                	li	s6,3
1c00b742:	4ba1                	li	s7,8
1c00b744:	4d0d                	li	s10,3
1c00b746:	4c0d                	li	s8,3
1c00b748:	4781                	li	a5,0
1c00b74a:	ce6e                	sw	s11,28(sp)
1c00b74c:	43d2                	lw	t2,20(sp)
1c00b74e:	00778db3          	add	s11,a5,t2
1c00b752:	43a2                	lw	t2,8(sp)
1c00b754:	01b6dc93          	srli	s9,a3,0x1b
1c00b758:	00569913          	slli	s2,a3,0x5
1c00b75c:	979e                	add	a5,a5,t2
1c00b75e:	0036c393          	xori	t2,a3,3
1c00b762:	01996933          	or	s2,s2,s9
1c00b766:	93be                	add	t2,t2,a5
1c00b768:	0123c3b3          	xor	t2,t2,s2
1c00b76c:	971e                	add	a4,a4,t2
1c00b76e:	01975c93          	srli	s9,a4,0x19
1c00b772:	00174393          	xori	t2,a4,1
1c00b776:	00771913          	slli	s2,a4,0x7
1c00b77a:	01996933          	or	s2,s2,s9
1c00b77e:	93be                	add	t2,t2,a5
1c00b780:	0123c3b3          	xor	t2,t2,s2
1c00b784:	9e9e                	add	t4,t4,t2
1c00b786:	017edc93          	srli	s9,t4,0x17
1c00b78a:	004ec393          	xori	t2,t4,4
1c00b78e:	009e9913          	slli	s2,t4,0x9
1c00b792:	01996933          	or	s2,s2,s9
1c00b796:	93be                	add	t2,t2,a5
1c00b798:	0123c3b3          	xor	t2,t2,s2
1c00b79c:	9f1e                	add	t5,t5,t2
1c00b79e:	013f5c93          	srli	s9,t5,0x13
1c00b7a2:	001f4393          	xori	t2,t5,1
1c00b7a6:	00df1913          	slli	s2,t5,0xd
1c00b7aa:	01996933          	or	s2,s2,s9
1c00b7ae:	93be                	add	t2,t2,a5
1c00b7b0:	0123c3b3          	xor	t2,t2,s2
1c00b7b4:	9f9e                	add	t6,t6,t2
1c00b7b6:	01bfdc93          	srli	s9,t6,0x1b
1c00b7ba:	005fc393          	xori	t2,t6,5
1c00b7be:	005f9913          	slli	s2,t6,0x5
1c00b7c2:	01996933          	or	s2,s2,s9
1c00b7c6:	93be                	add	t2,t2,a5
1c00b7c8:	0123c3b3          	xor	t2,t2,s2
1c00b7cc:	9e1e                	add	t3,t3,t2
1c00b7ce:	019e5c93          	srli	s9,t3,0x19
1c00b7d2:	009e4393          	xori	t2,t3,9
1c00b7d6:	007e1913          	slli	s2,t3,0x7
1c00b7da:	01996933          	or	s2,s2,s9
1c00b7de:	93be                	add	t2,t2,a5
1c00b7e0:	0123c3b3          	xor	t2,t2,s2
1c00b7e4:	931e                	add	t1,t1,t2
1c00b7e6:	01735c93          	srli	s9,t1,0x17
1c00b7ea:	00234393          	xori	t2,t1,2
1c00b7ee:	00931913          	slli	s2,t1,0x9
1c00b7f2:	01996933          	or	s2,s2,s9
1c00b7f6:	93be                	add	t2,t2,a5
1c00b7f8:	0123c3b3          	xor	t2,t2,s2
1c00b7fc:	989e                	add	a7,a7,t2
1c00b7fe:	0138dc93          	srli	s9,a7,0x13
1c00b802:	0068c393          	xori	t2,a7,6
1c00b806:	00d89913          	slli	s2,a7,0xd
1c00b80a:	01996933          	or	s2,s2,s9
1c00b80e:	93be                	add	t2,t2,a5
1c00b810:	0123c3b3          	xor	t2,t2,s2
1c00b814:	981e                	add	a6,a6,t2
1c00b816:	01b85c93          	srli	s9,a6,0x1b
1c00b81a:	00584393          	xori	t2,a6,5
1c00b81e:	00581913          	slli	s2,a6,0x5
1c00b822:	01996933          	or	s2,s2,s9
1c00b826:	93be                	add	t2,t2,a5
1c00b828:	0123c3b3          	xor	t2,t2,s2
1c00b82c:	951e                	add	a0,a0,t2
1c00b82e:	01955c93          	srli	s9,a0,0x19
1c00b832:	00354393          	xori	t2,a0,3
1c00b836:	00751913          	slli	s2,a0,0x7
1c00b83a:	01996933          	or	s2,s2,s9
1c00b83e:	93be                	add	t2,t2,a5
1c00b840:	0123c3b3          	xor	t2,t2,s2
1c00b844:	959e                	add	a1,a1,t2
1c00b846:	0175dc93          	srli	s9,a1,0x17
1c00b84a:	0055c393          	xori	t2,a1,5
1c00b84e:	00959913          	slli	s2,a1,0x9
1c00b852:	01996933          	or	s2,s2,s9
1c00b856:	93be                	add	t2,t2,a5
1c00b858:	0123c3b3          	xor	t2,t2,s2
1c00b85c:	961e                	add	a2,a2,t2
1c00b85e:	00864393          	xori	t2,a2,8
1c00b862:	00d61913          	slli	s2,a2,0xd
1c00b866:	01365c93          	srli	s9,a2,0x13
1c00b86a:	93be                	add	t2,t2,a5
1c00b86c:	01996933          	or	s2,s2,s9
1c00b870:	0123c3b3          	xor	t2,t2,s2
1c00b874:	969e                	add	a3,a3,t2
1c00b876:	edb79ee3          	bne	a5,s11,1c00b752 <randombytes+0x134>
1c00b87a:	43e2                	lw	t2,24(sp)
1c00b87c:	01cc4c33          	xor	s8,s8,t3
1c00b880:	006d4d33          	xor	s10,s10,t1
1c00b884:	011bcbb3          	xor	s7,s7,a7
1c00b888:	010b4b33          	xor	s6,s6,a6
1c00b88c:	00aacab3          	xor	s5,s5,a0
1c00b890:	00ba4a33          	xor	s4,s4,a1
1c00b894:	00c9c9b3          	xor	s3,s3,a2
1c00b898:	8cb5                	xor	s1,s1,a3
1c00b89a:	ea7799e3          	bne	a5,t2,1c00b74c <randombytes+0x12e>
1c00b89e:	4df2                	lw	s11,28(sp)
1c00b8a0:	01842023          	sw	s8,0(s0)
1c00b8a4:	01a42223          	sw	s10,4(s0)
1c00b8a8:	01742423          	sw	s7,8(s0)
1c00b8ac:	01642623          	sw	s6,12(s0)
1c00b8b0:	01542823          	sw	s5,16(s0)
1c00b8b4:	01442a23          	sw	s4,20(s0)
1c00b8b8:	01342c23          	sw	s3,24(s0)
1c00b8bc:	cc44                	sw	s1,28(s0)
1c00b8be:	479d                	li	a5,7
1c00b8c0:	b3e9                	j	1c00b68a <randombytes+0x6c>
1c00b8c2:	8082                	ret

1c00b8c4 <PQCLEAN_KYBER768_CLEAN_montgomery_reduce>:
1c00b8c4:	777d                	lui	a4,0xfffff
1c00b8c6:	30170793          	addi	a5,a4,769 # fffff301 <__l2_shared_end+0xe3fef301>
1c00b8ca:	02f507b3          	mul	a5,a0,a5
1c00b8ce:	2ff70713          	addi	a4,a4,767
1c00b8d2:	07c2                	slli	a5,a5,0x10
1c00b8d4:	87c1                	srai	a5,a5,0x10
1c00b8d6:	02e787b3          	mul	a5,a5,a4
1c00b8da:	953e                	add	a0,a0,a5
1c00b8dc:	8541                	srai	a0,a0,0x10
1c00b8de:	8082                	ret

1c00b8e0 <PQCLEAN_KYBER768_CLEAN_barrett_reduce>:
1c00b8e0:	6795                	lui	a5,0x5
1c00b8e2:	ebf78793          	addi	a5,a5,-321 # 4ebf <__CTOR_LIST__-0x1bffb145>
1c00b8e6:	02f507b3          	mul	a5,a0,a5
1c00b8ea:	02000737          	lui	a4,0x2000
1c00b8ee:	97ba                	add	a5,a5,a4
1c00b8f0:	6705                	lui	a4,0x1
1c00b8f2:	d0170713          	addi	a4,a4,-767 # d01 <__CTOR_LIST__-0x1bfff303>
1c00b8f6:	87e9                	srai	a5,a5,0x1a
1c00b8f8:	02e787b3          	mul	a5,a5,a4
1c00b8fc:	8d1d                	sub	a0,a0,a5
1c00b8fe:	0542                	slli	a0,a0,0x10
1c00b900:	8541                	srai	a0,a0,0x10
1c00b902:	8082                	ret

1c00b904 <PQCLEAN_KYBER768_CLEAN_kyber_shake128_absorb>:
1c00b904:	7139                	addi	sp,sp,-64
1c00b906:	da26                	sw	s1,52(sp)
1c00b908:	d84a                	sw	s2,48(sp)
1c00b90a:	84b2                	mv	s1,a2
1c00b90c:	892a                	mv	s2,a0
1c00b90e:	02000613          	li	a2,32
1c00b912:	0068                	addi	a0,sp,12
1c00b914:	de06                	sw	ra,60(sp)
1c00b916:	dc22                	sw	s0,56(sp)
1c00b918:	8436                	mv	s0,a3
1c00b91a:	2049                	jal	1c00b99c <memcpy>
1c00b91c:	006c                	addi	a1,sp,12
1c00b91e:	854a                	mv	a0,s2
1c00b920:	02200613          	li	a2,34
1c00b924:	02910623          	sb	s1,44(sp)
1c00b928:	028106a3          	sb	s0,45(sp)
1c00b92c:	e69fd0ef          	jal	ra,1c009794 <shake128_absorb>
1c00b930:	50f2                	lw	ra,60(sp)
1c00b932:	5462                	lw	s0,56(sp)
1c00b934:	54d2                	lw	s1,52(sp)
1c00b936:	5942                	lw	s2,48(sp)
1c00b938:	6121                	addi	sp,sp,64
1c00b93a:	8082                	ret

1c00b93c <PQCLEAN_KYBER768_CLEAN_kyber_shake256_prf>:
1c00b93c:	7139                	addi	sp,sp,-64
1c00b93e:	87b2                	mv	a5,a2
1c00b940:	da26                	sw	s1,52(sp)
1c00b942:	d84a                	sw	s2,48(sp)
1c00b944:	84aa                	mv	s1,a0
1c00b946:	892e                	mv	s2,a1
1c00b948:	02000613          	li	a2,32
1c00b94c:	85be                	mv	a1,a5
1c00b94e:	0068                	addi	a0,sp,12
1c00b950:	de06                	sw	ra,60(sp)
1c00b952:	dc22                	sw	s0,56(sp)
1c00b954:	8436                	mv	s0,a3
1c00b956:	2099                	jal	1c00b99c <memcpy>
1c00b958:	0070                	addi	a2,sp,12
1c00b95a:	85ca                	mv	a1,s2
1c00b95c:	8526                	mv	a0,s1
1c00b95e:	02100693          	li	a3,33
1c00b962:	02810623          	sb	s0,44(sp)
1c00b966:	918fe0ef          	jal	ra,1c009a7e <shake256>
1c00b96a:	50f2                	lw	ra,60(sp)
1c00b96c:	5462                	lw	s0,56(sp)
1c00b96e:	54d2                	lw	s1,52(sp)
1c00b970:	5942                	lw	s2,48(sp)
1c00b972:	6121                	addi	sp,sp,64
1c00b974:	8082                	ret

1c00b976 <pos_wait_forever>:
1c00b976:	f14027f3          	csrr	a5,mhartid
1c00b97a:	8795                	srai	a5,a5,0x5
1c00b97c:	03f7f793          	andi	a5,a5,63
1c00b980:	477d                	li	a4,31
1c00b982:	00e78363          	beq	a5,a4,1c00b988 <pos_wait_forever+0x12>
1c00b986:	a001                	j	1c00b986 <pos_wait_forever+0x10>
1c00b988:	1a10a7b7          	lui	a5,0x1a10a
1c00b98c:	577d                	li	a4,-1
1c00b98e:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00b992:	10500073          	wfi
1c00b996:	10500073          	wfi
1c00b99a:	bfe5                	j	1c00b992 <pos_wait_forever+0x1c>

1c00b99c <memcpy>:
1c00b99c:	00c5e7b3          	or	a5,a1,a2
1c00b9a0:	8fc9                	or	a5,a5,a0
1c00b9a2:	8b8d                	andi	a5,a5,3
1c00b9a4:	872e                	mv	a4,a1
1c00b9a6:	882a                	mv	a6,a0
1c00b9a8:	cbc5                	beqz	a5,1c00ba58 <memcpy+0xbc>
1c00b9aa:	c279                	beqz	a2,1c00ba70 <memcpy+0xd4>
1c00b9ac:	00350793          	addi	a5,a0,3
1c00b9b0:	8f8d                	sub	a5,a5,a1
1c00b9b2:	0077b793          	sltiu	a5,a5,7
1c00b9b6:	e7d1                	bnez	a5,1c00ba42 <memcpy+0xa6>
1c00b9b8:	fff60793          	addi	a5,a2,-1
1c00b9bc:	0047b793          	sltiu	a5,a5,4
1c00b9c0:	e3c9                	bnez	a5,1c00ba42 <memcpy+0xa6>
1c00b9c2:	ffc67e13          	andi	t3,a2,-4
1c00b9c6:	9e2e                	add	t3,t3,a1
1c00b9c8:	00174883          	lbu	a7,1(a4)
1c00b9cc:	00074303          	lbu	t1,0(a4)
1c00b9d0:	00274683          	lbu	a3,2(a4)
1c00b9d4:	00374783          	lbu	a5,3(a4)
1c00b9d8:	08a2                	slli	a7,a7,0x8
1c00b9da:	0068e8b3          	or	a7,a7,t1
1c00b9de:	06c2                	slli	a3,a3,0x10
1c00b9e0:	0116e6b3          	or	a3,a3,a7
1c00b9e4:	07e2                	slli	a5,a5,0x18
1c00b9e6:	8fd5                	or	a5,a5,a3
1c00b9e8:	0087d313          	srli	t1,a5,0x8
1c00b9ec:	0107d893          	srli	a7,a5,0x10
1c00b9f0:	83e1                	srli	a5,a5,0x18
1c00b9f2:	00d80023          	sb	a3,0(a6)
1c00b9f6:	006800a3          	sb	t1,1(a6)
1c00b9fa:	01180123          	sb	a7,2(a6)
1c00b9fe:	00f801a3          	sb	a5,3(a6)
1c00ba02:	0711                	addi	a4,a4,4
1c00ba04:	0811                	addi	a6,a6,4
1c00ba06:	fdc711e3          	bne	a4,t3,1c00b9c8 <memcpy+0x2c>
1c00ba0a:	ffc67793          	andi	a5,a2,-4
1c00ba0e:	00367693          	andi	a3,a2,3
1c00ba12:	00f50733          	add	a4,a0,a5
1c00ba16:	95be                	add	a1,a1,a5
1c00ba18:	02f60f63          	beq	a2,a5,1c00ba56 <memcpy+0xba>
1c00ba1c:	0005c603          	lbu	a2,0(a1)
1c00ba20:	fff68793          	addi	a5,a3,-1
1c00ba24:	00c70023          	sb	a2,0(a4)
1c00ba28:	c79d                	beqz	a5,1c00ba56 <memcpy+0xba>
1c00ba2a:	0015c603          	lbu	a2,1(a1)
1c00ba2e:	4789                	li	a5,2
1c00ba30:	00c700a3          	sb	a2,1(a4)
1c00ba34:	02f68163          	beq	a3,a5,1c00ba56 <memcpy+0xba>
1c00ba38:	0025c783          	lbu	a5,2(a1)
1c00ba3c:	00f70123          	sb	a5,2(a4)
1c00ba40:	8082                	ret
1c00ba42:	962e                	add	a2,a2,a1
1c00ba44:	87aa                	mv	a5,a0
1c00ba46:	0005c703          	lbu	a4,0(a1)
1c00ba4a:	0585                	addi	a1,a1,1
1c00ba4c:	0785                	addi	a5,a5,1
1c00ba4e:	fee78fa3          	sb	a4,-1(a5)
1c00ba52:	fec59ae3          	bne	a1,a2,1c00ba46 <memcpy+0xaa>
1c00ba56:	8082                	ret
1c00ba58:	de7d                	beqz	a2,1c00ba56 <memcpy+0xba>
1c00ba5a:	87aa                	mv	a5,a0
1c00ba5c:	4194                	lw	a3,0(a1)
1c00ba5e:	0791                	addi	a5,a5,4
1c00ba60:	40c78733          	sub	a4,a5,a2
1c00ba64:	fed7ae23          	sw	a3,-4(a5)
1c00ba68:	0591                	addi	a1,a1,4
1c00ba6a:	fea719e3          	bne	a4,a0,1c00ba5c <memcpy+0xc0>
1c00ba6e:	8082                	ret
1c00ba70:	8082                	ret

1c00ba72 <memmove>:
1c00ba72:	40b507b3          	sub	a5,a0,a1
1c00ba76:	0ac7e063          	bltu	a5,a2,1c00bb16 <memmove+0xa4>
1c00ba7a:	c661                	beqz	a2,1c00bb42 <memmove+0xd0>
1c00ba7c:	00350793          	addi	a5,a0,3
1c00ba80:	8f8d                	sub	a5,a5,a1
1c00ba82:	0077b793          	sltiu	a5,a5,7
1c00ba86:	e3dd                	bnez	a5,1c00bb2c <memmove+0xba>
1c00ba88:	fff60793          	addi	a5,a2,-1
1c00ba8c:	0047b793          	sltiu	a5,a5,4
1c00ba90:	efd1                	bnez	a5,1c00bb2c <memmove+0xba>
1c00ba92:	ffc67e13          	andi	t3,a2,-4
1c00ba96:	872e                	mv	a4,a1
1c00ba98:	882a                	mv	a6,a0
1c00ba9a:	9e2e                	add	t3,t3,a1
1c00ba9c:	00174883          	lbu	a7,1(a4)
1c00baa0:	00074303          	lbu	t1,0(a4)
1c00baa4:	00274683          	lbu	a3,2(a4)
1c00baa8:	00374783          	lbu	a5,3(a4)
1c00baac:	08a2                	slli	a7,a7,0x8
1c00baae:	0068e8b3          	or	a7,a7,t1
1c00bab2:	06c2                	slli	a3,a3,0x10
1c00bab4:	0116e6b3          	or	a3,a3,a7
1c00bab8:	07e2                	slli	a5,a5,0x18
1c00baba:	8fd5                	or	a5,a5,a3
1c00babc:	0087d313          	srli	t1,a5,0x8
1c00bac0:	0107d893          	srli	a7,a5,0x10
1c00bac4:	83e1                	srli	a5,a5,0x18
1c00bac6:	00d80023          	sb	a3,0(a6)
1c00baca:	006800a3          	sb	t1,1(a6)
1c00bace:	01180123          	sb	a7,2(a6)
1c00bad2:	00f801a3          	sb	a5,3(a6)
1c00bad6:	0711                	addi	a4,a4,4
1c00bad8:	0811                	addi	a6,a6,4
1c00bada:	fdc711e3          	bne	a4,t3,1c00ba9c <memmove+0x2a>
1c00bade:	ffc67793          	andi	a5,a2,-4
1c00bae2:	00367693          	andi	a3,a2,3
1c00bae6:	00f50733          	add	a4,a0,a5
1c00baea:	95be                	add	a1,a1,a5
1c00baec:	04f60a63          	beq	a2,a5,1c00bb40 <memmove+0xce>
1c00baf0:	0005c603          	lbu	a2,0(a1)
1c00baf4:	fff68793          	addi	a5,a3,-1
1c00baf8:	00c70023          	sb	a2,0(a4)
1c00bafc:	c3b1                	beqz	a5,1c00bb40 <memmove+0xce>
1c00bafe:	0015c603          	lbu	a2,1(a1)
1c00bb02:	4789                	li	a5,2
1c00bb04:	00c700a3          	sb	a2,1(a4)
1c00bb08:	02f68c63          	beq	a3,a5,1c00bb40 <memmove+0xce>
1c00bb0c:	0025c783          	lbu	a5,2(a1)
1c00bb10:	00f70123          	sb	a5,2(a4)
1c00bb14:	8082                	ret
1c00bb16:	167d                	addi	a2,a2,-1
1c00bb18:	00c587b3          	add	a5,a1,a2
1c00bb1c:	0007c703          	lbu	a4,0(a5)
1c00bb20:	00c507b3          	add	a5,a0,a2
1c00bb24:	00e78023          	sb	a4,0(a5)
1c00bb28:	f67d                	bnez	a2,1c00bb16 <memmove+0xa4>
1c00bb2a:	8082                	ret
1c00bb2c:	962a                	add	a2,a2,a0
1c00bb2e:	87aa                	mv	a5,a0
1c00bb30:	0005c703          	lbu	a4,0(a1)
1c00bb34:	0785                	addi	a5,a5,1
1c00bb36:	0585                	addi	a1,a1,1
1c00bb38:	fee78fa3          	sb	a4,-1(a5)
1c00bb3c:	fec79ae3          	bne	a5,a2,1c00bb30 <memmove+0xbe>
1c00bb40:	8082                	ret
1c00bb42:	8082                	ret

1c00bb44 <strchr>:
1c00bb44:	00054703          	lbu	a4,0(a0)
1c00bb48:	0ff5f593          	andi	a1,a1,255
1c00bb4c:	87aa                	mv	a5,a0
1c00bb4e:	00b70863          	beq	a4,a1,1c00bb5e <strchr+0x1a>
1c00bb52:	cb01                	beqz	a4,1c00bb62 <strchr+0x1e>
1c00bb54:	0017c703          	lbu	a4,1(a5)
1c00bb58:	0785                	addi	a5,a5,1
1c00bb5a:	feb71ce3          	bne	a4,a1,1c00bb52 <strchr+0xe>
1c00bb5e:	853e                	mv	a0,a5
1c00bb60:	8082                	ret
1c00bb62:	4501                	li	a0,0
1c00bb64:	dded                	beqz	a1,1c00bb5e <strchr+0x1a>
1c00bb66:	8082                	ret

1c00bb68 <puts>:
1c00bb68:	00054783          	lbu	a5,0(a0)
1c00bb6c:	c78d                	beqz	a5,1c00bb96 <puts+0x2e>
1c00bb6e:	f14026f3          	csrr	a3,mhartid
1c00bb72:	00369713          	slli	a4,a3,0x3
1c00bb76:	1a10f637          	lui	a2,0x1a10f
1c00bb7a:	0ff77713          	andi	a4,a4,255
1c00bb7e:	9732                	add	a4,a4,a2
1c00bb80:	6609                	lui	a2,0x2
1c00bb82:	068a                	slli	a3,a3,0x2
1c00bb84:	f8060613          	addi	a2,a2,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00bb88:	8ef1                	and	a3,a3,a2
1c00bb8a:	9736                	add	a4,a4,a3
1c00bb8c:	c31c                	sw	a5,0(a4)
1c00bb8e:	00154783          	lbu	a5,1(a0)
1c00bb92:	0505                	addi	a0,a0,1
1c00bb94:	ffe5                	bnez	a5,1c00bb8c <puts+0x24>
1c00bb96:	f1402773          	csrr	a4,mhartid
1c00bb9a:	00371793          	slli	a5,a4,0x3
1c00bb9e:	1a10f6b7          	lui	a3,0x1a10f
1c00bba2:	0ff7f793          	andi	a5,a5,255
1c00bba6:	97b6                	add	a5,a5,a3
1c00bba8:	6689                	lui	a3,0x2
1c00bbaa:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00bbae:	070a                	slli	a4,a4,0x2
1c00bbb0:	8f75                	and	a4,a4,a3
1c00bbb2:	97ba                	add	a5,a5,a4
1c00bbb4:	4729                	li	a4,10
1c00bbb6:	c398                	sw	a4,0(a5)
1c00bbb8:	4501                	li	a0,0
1c00bbba:	8082                	ret

1c00bbbc <pos_libc_fputc_locked>:
1c00bbbc:	6689                	lui	a3,0x2
1c00bbbe:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00bbc2:	f14027f3          	csrr	a5,mhartid
1c00bbc6:	00379713          	slli	a4,a5,0x3
1c00bbca:	078a                	slli	a5,a5,0x2
1c00bbcc:	8ff5                	and	a5,a5,a3
1c00bbce:	0ff77713          	andi	a4,a4,255
1c00bbd2:	1a10f6b7          	lui	a3,0x1a10f
1c00bbd6:	9736                	add	a4,a4,a3
1c00bbd8:	97ba                	add	a5,a5,a4
1c00bbda:	0ff57513          	andi	a0,a0,255
1c00bbde:	c388                	sw	a0,0(a5)
1c00bbe0:	4501                	li	a0,0
1c00bbe2:	8082                	ret

1c00bbe4 <putchar>:
1c00bbe4:	6689                	lui	a3,0x2
1c00bbe6:	f8068693          	addi	a3,a3,-128 # 1f80 <__CTOR_LIST__-0x1bffe084>
1c00bbea:	f14027f3          	csrr	a5,mhartid
1c00bbee:	00379713          	slli	a4,a5,0x3
1c00bbf2:	078a                	slli	a5,a5,0x2
1c00bbf4:	8ff5                	and	a5,a5,a3
1c00bbf6:	0ff77713          	andi	a4,a4,255
1c00bbfa:	1a10f6b7          	lui	a3,0x1a10f
1c00bbfe:	9736                	add	a4,a4,a3
1c00bc00:	97ba                	add	a5,a5,a4
1c00bc02:	0ff57513          	andi	a0,a0,255
1c00bc06:	c388                	sw	a0,0(a5)
1c00bc08:	4501                	li	a0,0
1c00bc0a:	8082                	ret

1c00bc0c <pos_libc_prf_locked>:
1c00bc0c:	a0b1                	j	1c00bc58 <pos_libc_prf>

1c00bc0e <exit>:
1c00bc0e:	800007b7          	lui	a5,0x80000
1c00bc12:	1141                	addi	sp,sp,-16
1c00bc14:	8d5d                	or	a0,a0,a5
1c00bc16:	c606                	sw	ra,12(sp)
1c00bc18:	1a1047b7          	lui	a5,0x1a104
1c00bc1c:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__CTOR_LIST__-0x1efbf64>
1c00bc20:	3b99                	jal	1c00b976 <pos_wait_forever>

1c00bc22 <pos_io_start>:
1c00bc22:	4501                	li	a0,0
1c00bc24:	8082                	ret

1c00bc26 <pos_io_stop>:
1c00bc26:	4501                	li	a0,0
1c00bc28:	8082                	ret

1c00bc2a <printf>:
1c00bc2a:	7139                	addi	sp,sp,-64
1c00bc2c:	02410313          	addi	t1,sp,36
1c00bc30:	d432                	sw	a2,40(sp)
1c00bc32:	862a                	mv	a2,a0
1c00bc34:	1c00c537          	lui	a0,0x1c00c
1c00bc38:	d22e                	sw	a1,36(sp)
1c00bc3a:	d636                	sw	a3,44(sp)
1c00bc3c:	4589                	li	a1,2
1c00bc3e:	869a                	mv	a3,t1
1c00bc40:	bbc50513          	addi	a0,a0,-1092 # 1c00bbbc <pos_libc_fputc_locked>
1c00bc44:	ce06                	sw	ra,28(sp)
1c00bc46:	d83a                	sw	a4,48(sp)
1c00bc48:	da3e                	sw	a5,52(sp)
1c00bc4a:	dc42                	sw	a6,56(sp)
1c00bc4c:	de46                	sw	a7,60(sp)
1c00bc4e:	c61a                	sw	t1,12(sp)
1c00bc50:	3f75                	jal	1c00bc0c <pos_libc_prf_locked>
1c00bc52:	40f2                	lw	ra,28(sp)
1c00bc54:	6121                	addi	sp,sp,64
1c00bc56:	8082                	ret

1c00bc58 <pos_libc_prf>:
1c00bc58:	7169                	addi	sp,sp,-304
1c00bc5a:	12112623          	sw	ra,300(sp)
1c00bc5e:	12812423          	sw	s0,296(sp)
1c00bc62:	12912223          	sw	s1,292(sp)
1c00bc66:	13212023          	sw	s2,288(sp)
1c00bc6a:	11312e23          	sw	s3,284(sp)
1c00bc6e:	11412c23          	sw	s4,280(sp)
1c00bc72:	11512a23          	sw	s5,276(sp)
1c00bc76:	11612823          	sw	s6,272(sp)
1c00bc7a:	11712623          	sw	s7,268(sp)
1c00bc7e:	11812423          	sw	s8,264(sp)
1c00bc82:	11912223          	sw	s9,260(sp)
1c00bc86:	11a12023          	sw	s10,256(sp)
1c00bc8a:	dfee                	sw	s11,252(sp)
1c00bc8c:	00064783          	lbu	a5,0(a2)
1c00bc90:	c636                	sw	a3,12(sp)
1c00bc92:	3c0781e3          	beqz	a5,1c00c854 <pos_libc_prf+0xbfc>
1c00bc96:	7741                	lui	a4,0xffff0
1c00bc98:	0ff70713          	addi	a4,a4,255 # ffff00ff <__l2_shared_end+0xe3fe00ff>
1c00bc9c:	cc3a                	sw	a4,24(sp)
1c00bc9e:	10000737          	lui	a4,0x10000
1c00bca2:	177d                	addi	a4,a4,-1
1c00bca4:	8caa                	mv	s9,a0
1c00bca6:	84ae                	mv	s1,a1
1c00bca8:	00160c13          	addi	s8,a2,1
1c00bcac:	4401                	li	s0,0
1c00bcae:	1c000d37          	lui	s10,0x1c000
1c00bcb2:	ca3a                	sw	a4,20(sp)
1c00bcb4:	853e                	mv	a0,a5
1c00bcb6:	02500793          	li	a5,37
1c00bcba:	04f50863          	beq	a0,a5,1c00bd0a <pos_libc_prf+0xb2>
1c00bcbe:	85a6                	mv	a1,s1
1c00bcc0:	9c82                	jalr	s9
1c00bcc2:	57fd                	li	a5,-1
1c00bcc4:	4cf50b63          	beq	a0,a5,1c00c19a <pos_libc_prf+0x542>
1c00bcc8:	0405                	addi	s0,s0,1
1c00bcca:	000c4503          	lbu	a0,0(s8)
1c00bcce:	0c05                	addi	s8,s8,1
1c00bcd0:	f17d                	bnez	a0,1c00bcb6 <pos_libc_prf+0x5e>
1c00bcd2:	12c12083          	lw	ra,300(sp)
1c00bcd6:	8522                	mv	a0,s0
1c00bcd8:	12812403          	lw	s0,296(sp)
1c00bcdc:	12412483          	lw	s1,292(sp)
1c00bce0:	12012903          	lw	s2,288(sp)
1c00bce4:	11c12983          	lw	s3,284(sp)
1c00bce8:	11812a03          	lw	s4,280(sp)
1c00bcec:	11412a83          	lw	s5,276(sp)
1c00bcf0:	11012b03          	lw	s6,272(sp)
1c00bcf4:	10c12b83          	lw	s7,268(sp)
1c00bcf8:	10812c03          	lw	s8,264(sp)
1c00bcfc:	10412c83          	lw	s9,260(sp)
1c00bd00:	10012d03          	lw	s10,256(sp)
1c00bd04:	5dfe                	lw	s11,252(sp)
1c00bd06:	6155                	addi	sp,sp,304
1c00bd08:	8082                	ret
1c00bd0a:	8de2                	mv	s11,s8
1c00bd0c:	000dcc03          	lbu	s8,0(s11)
1c00bd10:	320d0513          	addi	a0,s10,800 # 1c000320 <PQCLEAN_KYBER768_CLEAN_zetas+0x100>
1c00bd14:	c826                	sw	s1,16(sp)
1c00bd16:	85e2                	mv	a1,s8
1c00bd18:	c202                	sw	zero,4(sp)
1c00bd1a:	c402                	sw	zero,8(sp)
1c00bd1c:	c002                	sw	zero,0(sp)
1c00bd1e:	001d8493          	addi	s1,s11,1
1c00bd22:	350d                	jal	1c00bb44 <strchr>
1c00bd24:	02000913          	li	s2,32
1c00bd28:	4b81                	li	s7,0
1c00bd2a:	02b00993          	li	s3,43
1c00bd2e:	02d00b13          	li	s6,45
1c00bd32:	03000a93          	li	s5,48
1c00bd36:	02000a13          	li	s4,32
1c00bd3a:	8626                	mv	a2,s1
1c00bd3c:	c51d                	beqz	a0,1c00bd6a <pos_libc_prf+0x112>
1c00bd3e:	413c0e63          	beq	s8,s3,1c00c15a <pos_libc_prf+0x502>
1c00bd42:	3f89ec63          	bltu	s3,s8,1c00c13a <pos_libc_prf+0x4e2>
1c00bd46:	414c0663          	beq	s8,s4,1c00c152 <pos_libc_prf+0x4fa>
1c00bd4a:	02300793          	li	a5,35
1c00bd4e:	3efc1363          	bne	s8,a5,1c00c134 <pos_libc_prf+0x4dc>
1c00bd52:	4b85                	li	s7,1
1c00bd54:	8da6                	mv	s11,s1
1c00bd56:	000dcc03          	lbu	s8,0(s11)
1c00bd5a:	320d0513          	addi	a0,s10,800
1c00bd5e:	001d8493          	addi	s1,s11,1
1c00bd62:	85e2                	mv	a1,s8
1c00bd64:	33c5                	jal	1c00bb44 <strchr>
1c00bd66:	8626                	mv	a2,s1
1c00bd68:	f979                	bnez	a0,1c00bd3e <pos_libc_prf+0xe6>
1c00bd6a:	87e2                	mv	a5,s8
1c00bd6c:	ce5e                	sw	s7,28(sp)
1c00bd6e:	02a00693          	li	a3,42
1c00bd72:	8c6e                	mv	s8,s11
1c00bd74:	8ba6                	mv	s7,s1
1c00bd76:	8dbe                	mv	s11,a5
1c00bd78:	44c2                	lw	s1,16(sp)
1c00bd7a:	42d78263          	beq	a5,a3,1c00c19e <pos_libc_prf+0x546>
1c00bd7e:	fd078693          	addi	a3,a5,-48
1c00bd82:	4525                	li	a0,9
1c00bd84:	4a01                	li	s4,0
1c00bd86:	3cd57f63          	bgeu	a0,a3,1c00c164 <pos_libc_prf+0x50c>
1c00bd8a:	02e00793          	li	a5,46
1c00bd8e:	5afd                	li	s5,-1
1c00bd90:	74fd8363          	beq	s11,a5,1c00c4d6 <pos_libc_prf+0x87e>
1c00bd94:	1c0007b7          	lui	a5,0x1c000
1c00bd98:	85ee                	mv	a1,s11
1c00bd9a:	32878513          	addi	a0,a5,808 # 1c000328 <PQCLEAN_KYBER768_CLEAN_zetas+0x108>
1c00bd9e:	c832                	sw	a2,16(sp)
1c00bda0:	3355                	jal	1c00bb44 <strchr>
1c00bda2:	4642                	lw	a2,16(sp)
1c00bda4:	8c32                	mv	s8,a2
1c00bda6:	c509                	beqz	a0,1c00bdb0 <pos_libc_prf+0x158>
1c00bda8:	00064d83          	lbu	s11,0(a2)
1c00bdac:	00160c13          	addi	s8,a2,1
1c00bdb0:	06900793          	li	a5,105
1c00bdb4:	0afd8ee3          	beq	s11,a5,1c00c670 <pos_libc_prf+0xa18>
1c00bdb8:	4db7c763          	blt	a5,s11,1c00c286 <pos_libc_prf+0x62e>
1c00bdbc:	05800793          	li	a5,88
1c00bdc0:	4efd8163          	beq	s11,a5,1c00c2a2 <pos_libc_prf+0x64a>
1c00bdc4:	41b7c163          	blt	a5,s11,1c00c1c6 <pos_libc_prf+0x56e>
1c00bdc8:	02500793          	li	a5,37
1c00bdcc:	26fd8ae3          	beq	s11,a5,1c00c840 <pos_libc_prf+0xbe8>
1c00bdd0:	3fb7d863          	bge	a5,s11,1c00c1c0 <pos_libc_prf+0x568>
1c00bdd4:	fbbd8793          	addi	a5,s11,-69
1c00bdd8:	4689                	li	a3,2
1c00bdda:	eef6e8e3          	bltu	a3,a5,1c00bcca <pos_libc_prf+0x72>
1c00bdde:	47b2                	lw	a5,12(sp)
1c00bde0:	7ff00893          	li	a7,2047
1c00bde4:	00778b13          	addi	s6,a5,7
1c00bde8:	ff8b7b13          	andi	s6,s6,-8
1c00bdec:	004b2783          	lw	a5,4(s6)
1c00bdf0:	000b2603          	lw	a2,0(s6)
1c00bdf4:	0b21                	addi	s6,s6,8
1c00bdf6:	00b79693          	slli	a3,a5,0xb
1c00bdfa:	01565513          	srli	a0,a2,0x15
1c00bdfe:	8ec9                	or	a3,a3,a0
1c00be00:	0147d813          	srli	a6,a5,0x14
1c00be04:	0686                	slli	a3,a3,0x1
1c00be06:	7ff87813          	andi	a6,a6,2047
1c00be0a:	0016d513          	srli	a0,a3,0x1
1c00be0e:	00b61313          	slli	t1,a2,0xb
1c00be12:	86be                	mv	a3,a5
1c00be14:	41180263          	beq	a6,a7,1c00c218 <pos_libc_prf+0x5c0>
1c00be18:	04600793          	li	a5,70
1c00be1c:	00fd9463          	bne	s11,a5,1c00be24 <pos_libc_prf+0x1cc>
1c00be20:	06600d93          	li	s11,102
1c00be24:	006867b3          	or	a5,a6,t1
1c00be28:	00a7e8b3          	or	a7,a5,a0
1c00be2c:	862a                	mv	a2,a0
1c00be2e:	340885e3          	beqz	a7,1c00c978 <pos_libc_prf+0xd20>
1c00be32:	80000637          	lui	a2,0x80000
1c00be36:	c0280813          	addi	a6,a6,-1022
1c00be3a:	879a                	mv	a5,t1
1c00be3c:	8e49                	or	a2,a2,a0
1c00be3e:	4606c7e3          	bltz	a3,1c00caac <pos_libc_prf+0xe54>
1c00be42:	4722                	lw	a4,8(sp)
1c00be44:	480708e3          	beqz	a4,1c00cad4 <pos_libc_prf+0xe7c>
1c00be48:	02b00693          	li	a3,43
1c00be4c:	02d10223          	sb	a3,36(sp)
1c00be50:	02510f13          	addi	t5,sp,37
1c00be54:	56f9                	li	a3,-2
1c00be56:	4301                	li	t1,0
1c00be58:	06d85663          	bge	a6,a3,1c00bec4 <pos_libc_prf+0x26c>
1c00be5c:	333338b7          	lui	a7,0x33333
1c00be60:	80000e37          	lui	t3,0x80000
1c00be64:	33288893          	addi	a7,a7,818 # 33333332 <__l2_shared_end+0x17323332>
1c00be68:	fffe4e13          	not	t3,t3
1c00be6c:	5ef9                	li	t4,-2
1c00be6e:	01f61593          	slli	a1,a2,0x1f
1c00be72:	0017d693          	srli	a3,a5,0x1
1c00be76:	0017f713          	andi	a4,a5,1
1c00be7a:	8ecd                	or	a3,a3,a1
1c00be7c:	00d707b3          	add	a5,a4,a3
1c00be80:	00e7b733          	sltu	a4,a5,a4
1c00be84:	8205                	srli	a2,a2,0x1
1c00be86:	963a                	add	a2,a2,a4
1c00be88:	8742                	mv	a4,a6
1c00be8a:	0805                	addi	a6,a6,1
1c00be8c:	fec8e1e3          	bltu	a7,a2,1c00be6e <pos_libc_prf+0x216>
1c00be90:	00279593          	slli	a1,a5,0x2
1c00be94:	01e7d513          	srli	a0,a5,0x1e
1c00be98:	00261693          	slli	a3,a2,0x2
1c00be9c:	97ae                	add	a5,a5,a1
1c00be9e:	8ec9                	or	a3,a3,a0
1c00bea0:	9636                	add	a2,a2,a3
1c00bea2:	00b7b5b3          	sltu	a1,a5,a1
1c00bea6:	962e                	add	a2,a2,a1
1c00bea8:	01f7d693          	srli	a3,a5,0x1f
1c00beac:	00270813          	addi	a6,a4,2 # 10000002 <__CTOR_LIST__-0xc000002>
1c00beb0:	137d                	addi	t1,t1,-1
1c00beb2:	01c61763          	bne	a2,t3,1c00bec0 <pos_libc_prf+0x268>
1c00beb6:	00170813          	addi	a6,a4,1
1c00beba:	0786                	slli	a5,a5,0x1
1c00bebc:	ffe6e613          	ori	a2,a3,-2
1c00bec0:	fbd847e3          	blt	a6,t4,1c00be6e <pos_libc_prf+0x216>
1c00bec4:	07005363          	blez	a6,1c00bf2a <pos_libc_prf+0x2d2>
1c00bec8:	800008b7          	lui	a7,0x80000
1c00becc:	4e15                	li	t3,5
1c00bece:	fff8c893          	not	a7,a7
1c00bed2:	00278693          	addi	a3,a5,2
1c00bed6:	00f6b7b3          	sltu	a5,a3,a5
1c00beda:	963e                	add	a2,a2,a5
1c00bedc:	03c657b3          	divu	a5,a2,t3
1c00bee0:	0036d713          	srli	a4,a3,0x3
1c00bee4:	187d                	addi	a6,a6,-1
1c00bee6:	0305                	addi	t1,t1,1
1c00bee8:	00279593          	slli	a1,a5,0x2
1c00beec:	95be                	add	a1,a1,a5
1c00beee:	8e0d                	sub	a2,a2,a1
1c00bef0:	0676                	slli	a2,a2,0x1d
1c00bef2:	8f51                	or	a4,a4,a2
1c00bef4:	03c75633          	divu	a2,a4,t3
1c00bef8:	00361713          	slli	a4,a2,0x3
1c00befc:	00561593          	slli	a1,a2,0x5
1c00bf00:	95ba                	add	a1,a1,a4
1c00bf02:	8e8d                	sub	a3,a3,a1
1c00bf04:	03c6d6b3          	divu	a3,a3,t3
1c00bf08:	8275                	srli	a2,a2,0x1d
1c00bf0a:	963e                	add	a2,a2,a5
1c00bf0c:	00e687b3          	add	a5,a3,a4
1c00bf10:	00d7b6b3          	sltu	a3,a5,a3
1c00bf14:	9636                	add	a2,a2,a3
1c00bf16:	01f7d713          	srli	a4,a5,0x1f
1c00bf1a:	0606                	slli	a2,a2,0x1
1c00bf1c:	8e59                	or	a2,a2,a4
1c00bf1e:	0786                	slli	a5,a5,0x1
1c00bf20:	187d                	addi	a6,a6,-1
1c00bf22:	fec8fae3          	bgeu	a7,a2,1c00bf16 <pos_libc_prf+0x2be>
1c00bf26:	fb0046e3          	bgtz	a6,1c00bed2 <pos_libc_prf+0x27a>
1c00bf2a:	4e11                	li	t3,4
1c00bf2c:	01f61693          	slli	a3,a2,0x1f
1c00bf30:	0017d713          	srli	a4,a5,0x1
1c00bf34:	8f55                	or	a4,a4,a3
1c00bf36:	8b85                	andi	a5,a5,1
1c00bf38:	00e78533          	add	a0,a5,a4
1c00bf3c:	8205                	srli	a2,a2,0x1
1c00bf3e:	00f537b3          	sltu	a5,a0,a5
1c00bf42:	00c788b3          	add	a7,a5,a2
1c00bf46:	0805                	addi	a6,a6,1
1c00bf48:	87aa                	mv	a5,a0
1c00bf4a:	8646                	mv	a2,a7
1c00bf4c:	ffc810e3          	bne	a6,t3,1c00bf2c <pos_libc_prf+0x2d4>
1c00bf50:	06700793          	li	a5,103
1c00bf54:	2a0acee3          	bltz	s5,1c00ca10 <pos_libc_prf+0xdb8>
1c00bf58:	28fd83e3          	beq	s11,a5,1c00c9de <pos_libc_prf+0xd86>
1c00bf5c:	04700793          	li	a5,71
1c00bf60:	26fd8fe3          	beq	s11,a5,1c00c9de <pos_libc_prf+0xd86>
1c00bf64:	06600793          	li	a5,102
1c00bf68:	2cfd85e3          	beq	s11,a5,1c00ca32 <pos_libc_prf+0xdda>
1c00bf6c:	001a8813          	addi	a6,s5,1
1c00bf70:	47c1                	li	a5,16
1c00bf72:	0107d363          	bge	a5,a6,1c00bf78 <pos_libc_prf+0x320>
1c00bf76:	4841                	li	a6,16
1c00bf78:	187d                	addi	a6,a6,-1
1c00bf7a:	4601                	li	a2,0
1c00bf7c:	4781                	li	a5,0
1c00bf7e:	080006b7          	lui	a3,0x8000
1c00bf82:	4e15                	li	t3,5
1c00bf84:	5efd                	li	t4,-1
1c00bf86:	00278713          	addi	a4,a5,2
1c00bf8a:	00f737b3          	sltu	a5,a4,a5
1c00bf8e:	97b6                	add	a5,a5,a3
1c00bf90:	03c7dfb3          	divu	t6,a5,t3
1c00bf94:	00375593          	srli	a1,a4,0x3
1c00bf98:	187d                	addi	a6,a6,-1
1c00bf9a:	002f9693          	slli	a3,t6,0x2
1c00bf9e:	96fe                	add	a3,a3,t6
1c00bfa0:	8f95                	sub	a5,a5,a3
1c00bfa2:	07f6                	slli	a5,a5,0x1d
1c00bfa4:	8ddd                	or	a1,a1,a5
1c00bfa6:	03c5d5b3          	divu	a1,a1,t3
1c00bfaa:	00359693          	slli	a3,a1,0x3
1c00bfae:	00559793          	slli	a5,a1,0x5
1c00bfb2:	97b6                	add	a5,a5,a3
1c00bfb4:	8f1d                	sub	a4,a4,a5
1c00bfb6:	03c757b3          	divu	a5,a4,t3
1c00bfba:	81f5                	srli	a1,a1,0x1d
1c00bfbc:	95fe                	add	a1,a1,t6
1c00bfbe:	96be                	add	a3,a3,a5
1c00bfc0:	00f6b733          	sltu	a4,a3,a5
1c00bfc4:	972e                	add	a4,a4,a1
1c00bfc6:	01f71593          	slli	a1,a4,0x1f
1c00bfca:	0016d793          	srli	a5,a3,0x1
1c00bfce:	8fcd                	or	a5,a5,a1
1c00bfd0:	8a85                	andi	a3,a3,1
1c00bfd2:	97b6                	add	a5,a5,a3
1c00bfd4:	8305                	srli	a4,a4,0x1
1c00bfd6:	00d7b6b3          	sltu	a3,a5,a3
1c00bfda:	96ba                	add	a3,a3,a4
1c00bfdc:	fbd815e3          	bne	a6,t4,1c00bf86 <pos_libc_prf+0x32e>
1c00bfe0:	97aa                	add	a5,a5,a0
1c00bfe2:	96c6                	add	a3,a3,a7
1c00bfe4:	00a7b533          	sltu	a0,a5,a0
1c00bfe8:	00d508b3          	add	a7,a0,a3
1c00bfec:	f00006b7          	lui	a3,0xf0000
1c00bff0:	0116f6b3          	and	a3,a3,a7
1c00bff4:	c2b5                	beqz	a3,1c00c058 <pos_libc_prf+0x400>
1c00bff6:	00278813          	addi	a6,a5,2
1c00bffa:	00f836b3          	sltu	a3,a6,a5
1c00bffe:	98b6                	add	a7,a7,a3
1c00c000:	4e95                	li	t4,5
1c00c002:	03d8de33          	divu	t3,a7,t4
1c00c006:	00385693          	srli	a3,a6,0x3
1c00c00a:	0305                	addi	t1,t1,1
1c00c00c:	002e1513          	slli	a0,t3,0x2
1c00c010:	9572                	add	a0,a0,t3
1c00c012:	40a888b3          	sub	a7,a7,a0
1c00c016:	01d89513          	slli	a0,a7,0x1d
1c00c01a:	8ec9                	or	a3,a3,a0
1c00c01c:	03d6d6b3          	divu	a3,a3,t4
1c00c020:	00369513          	slli	a0,a3,0x3
1c00c024:	00569793          	slli	a5,a3,0x5
1c00c028:	97aa                	add	a5,a5,a0
1c00c02a:	40f807b3          	sub	a5,a6,a5
1c00c02e:	03d7d7b3          	divu	a5,a5,t4
1c00c032:	82f5                	srli	a3,a3,0x1d
1c00c034:	96f2                	add	a3,a3,t3
1c00c036:	953e                	add	a0,a0,a5
1c00c038:	00f537b3          	sltu	a5,a0,a5
1c00c03c:	96be                	add	a3,a3,a5
1c00c03e:	01f69813          	slli	a6,a3,0x1f
1c00c042:	00155793          	srli	a5,a0,0x1
1c00c046:	00f867b3          	or	a5,a6,a5
1c00c04a:	8905                	andi	a0,a0,1
1c00c04c:	97aa                	add	a5,a5,a0
1c00c04e:	8285                	srli	a3,a3,0x1
1c00c050:	00a7b533          	sltu	a0,a5,a0
1c00c054:	00d508b3          	add	a7,a0,a3
1c00c058:	001f0993          	addi	s3,t5,1
1c00c05c:	06600693          	li	a3,102
1c00c060:	884e                	mv	a6,s3
1c00c062:	4edd8163          	beq	s11,a3,1c00c544 <pos_libc_prf+0x8ec>
1c00c066:	00279693          	slli	a3,a5,0x2
1c00c06a:	01e7d513          	srli	a0,a5,0x1e
1c00c06e:	00289e13          	slli	t3,a7,0x2
1c00c072:	97b6                	add	a5,a5,a3
1c00c074:	01c56e33          	or	t3,a0,t3
1c00c078:	00d7b833          	sltu	a6,a5,a3
1c00c07c:	011e06b3          	add	a3,t3,a7
1c00c080:	9836                	add	a6,a6,a3
1c00c082:	0806                	slli	a6,a6,0x1
1c00c084:	01f7d693          	srli	a3,a5,0x1f
1c00c088:	0106e833          	or	a6,a3,a6
1c00c08c:	01c85693          	srli	a3,a6,0x1c
1c00c090:	03068513          	addi	a0,a3,48 # f0000030 <__l2_shared_end+0xd3ff0030>
1c00c094:	4772                	lw	a4,28(sp)
1c00c096:	00af0023          	sb	a0,0(t5)
1c00c09a:	00179513          	slli	a0,a5,0x1
1c00c09e:	47d2                	lw	a5,20(sp)
1c00c0a0:	00d036b3          	snez	a3,a3
1c00c0a4:	01576bb3          	or	s7,a4,s5
1c00c0a8:	00f87833          	and	a6,a6,a5
1c00c0ac:	40d30333          	sub	t1,t1,a3
1c00c0b0:	060b8463          	beqz	s7,1c00c118 <pos_libc_prf+0x4c0>
1c00c0b4:	02e00793          	li	a5,46
1c00c0b8:	00ff00a3          	sb	a5,1(t5)
1c00c0bc:	002f0993          	addi	s3,t5,2
1c00c0c0:	040a8c63          	beqz	s5,1c00c118 <pos_libc_prf+0x4c0>
1c00c0c4:	002a8793          	addi	a5,s5,2
1c00c0c8:	9f3e                	add	t5,t5,a5
1c00c0ca:	88ce                	mv	a7,s3
1c00c0cc:	4ebd                	li	t4,15
1c00c0ce:	03000f93          	li	t6,48
1c00c0d2:	00251793          	slli	a5,a0,0x2
1c00c0d6:	01e55693          	srli	a3,a0,0x1e
1c00c0da:	00281713          	slli	a4,a6,0x2
1c00c0de:	00a785b3          	add	a1,a5,a0
1c00c0e2:	8f55                	or	a4,a4,a3
1c00c0e4:	9742                	add	a4,a4,a6
1c00c0e6:	00f5b7b3          	sltu	a5,a1,a5
1c00c0ea:	97ba                	add	a5,a5,a4
1c00c0ec:	0786                	slli	a5,a5,0x1
1c00c0ee:	01f5d713          	srli	a4,a1,0x1f
1c00c0f2:	8fd9                	or	a5,a5,a4
1c00c0f4:	01c7d713          	srli	a4,a5,0x1c
1c00c0f8:	03070713          	addi	a4,a4,48
1c00c0fc:	0885                	addi	a7,a7,1
1c00c0fe:	53d05763          	blez	t4,1c00c62c <pos_libc_prf+0x9d4>
1c00c102:	fee88fa3          	sb	a4,-1(a7) # 7fffffff <__l2_shared_end+0x63feffff>
1c00c106:	4752                	lw	a4,20(sp)
1c00c108:	1efd                	addi	t4,t4,-1
1c00c10a:	00159513          	slli	a0,a1,0x1
1c00c10e:	00e7f833          	and	a6,a5,a4
1c00c112:	fd1f10e3          	bne	t5,a7,1c00c0d2 <pos_libc_prf+0x47a>
1c00c116:	99d6                	add	s3,s3,s5
1c00c118:	4e061c63          	bnez	a2,1c00c610 <pos_libc_prf+0x9b8>
1c00c11c:	fdfdf793          	andi	a5,s11,-33
1c00c120:	04500693          	li	a3,69
1c00c124:	00d781e3          	beq	a5,a3,1c00c926 <pos_libc_prf+0xcce>
1c00c128:	105c                	addi	a5,sp,36
1c00c12a:	00098023          	sb	zero,0(s3) # 10000 <__CTOR_LIST__-0x1bff0004>
1c00c12e:	40f989b3          	sub	s3,s3,a5
1c00c132:	aa05                	j	1c00c262 <pos_libc_prf+0x60a>
1c00c134:	b80c0fe3          	beqz	s8,1c00bcd2 <pos_libc_prf+0x7a>
1c00c138:	b931                	j	1c00bd54 <pos_libc_prf+0xfc>
1c00c13a:	016c0863          	beq	s8,s6,1c00c14a <pos_libc_prf+0x4f2>
1c00c13e:	c15c1be3          	bne	s8,s5,1c00bd54 <pos_libc_prf+0xfc>
1c00c142:	03000913          	li	s2,48
1c00c146:	8da6                	mv	s11,s1
1c00c148:	b139                	j	1c00bd56 <pos_libc_prf+0xfe>
1c00c14a:	4785                	li	a5,1
1c00c14c:	c03e                	sw	a5,0(sp)
1c00c14e:	8da6                	mv	s11,s1
1c00c150:	b119                	j	1c00bd56 <pos_libc_prf+0xfe>
1c00c152:	4785                	li	a5,1
1c00c154:	c23e                	sw	a5,4(sp)
1c00c156:	8da6                	mv	s11,s1
1c00c158:	befd                	j	1c00bd56 <pos_libc_prf+0xfe>
1c00c15a:	4785                	li	a5,1
1c00c15c:	c43e                	sw	a5,8(sp)
1c00c15e:	8da6                	mv	s11,s1
1c00c160:	bedd                	j	1c00bd56 <pos_libc_prf+0xfe>
1c00c162:	0b85                	addi	s7,s7,1
1c00c164:	002a1793          	slli	a5,s4,0x2
1c00c168:	97d2                	add	a5,a5,s4
1c00c16a:	0786                	slli	a5,a5,0x1
1c00c16c:	97ee                	add	a5,a5,s11
1c00c16e:	000bcd83          	lbu	s11,0(s7)
1c00c172:	fd078a13          	addi	s4,a5,-48
1c00c176:	8662                	mv	a2,s8
1c00c178:	fd0d8793          	addi	a5,s11,-48
1c00c17c:	8c5e                	mv	s8,s7
1c00c17e:	fef572e3          	bgeu	a0,a5,1c00c162 <pos_libc_prf+0x50a>
1c00c182:	0609                	addi	a2,a2,2
1c00c184:	0c800793          	li	a5,200
1c00c188:	c147f1e3          	bgeu	a5,s4,1c00bd8a <pos_libc_prf+0x132>
1c00c18c:	0c800a13          	li	s4,200
1c00c190:	beed                	j	1c00bd8a <pos_libc_prf+0x132>
1c00c192:	0c800793          	li	a5,200
1c00c196:	b3b7dae3          	bge	a5,s11,1c00bcca <pos_libc_prf+0x72>
1c00c19a:	547d                	li	s0,-1
1c00c19c:	be1d                	j	1c00bcd2 <pos_libc_prf+0x7a>
1c00c19e:	47b2                	lw	a5,12(sp)
1c00c1a0:	0007aa03          	lw	s4,0(a5)
1c00c1a4:	00478693          	addi	a3,a5,4
1c00c1a8:	000a5663          	bgez	s4,1c00c1b4 <pos_libc_prf+0x55c>
1c00c1ac:	4785                	li	a5,1
1c00c1ae:	41400a33          	neg	s4,s4
1c00c1b2:	c03e                	sw	a5,0(sp)
1c00c1b4:	000bcd83          	lbu	s11,0(s7)
1c00c1b8:	c636                	sw	a3,12(sp)
1c00c1ba:	002c0613          	addi	a2,s8,2
1c00c1be:	b7d9                	j	1c00c184 <pos_libc_prf+0x52c>
1c00c1c0:	b00d89e3          	beqz	s11,1c00bcd2 <pos_libc_prf+0x7a>
1c00c1c4:	b619                	j	1c00bcca <pos_libc_prf+0x72>
1c00c1c6:	06400793          	li	a5,100
1c00c1ca:	4afd8363          	beq	s11,a5,1c00c670 <pos_libc_prf+0xa18>
1c00c1ce:	19b7d963          	bge	a5,s11,1c00c360 <pos_libc_prf+0x708>
1c00c1d2:	f9bd8793          	addi	a5,s11,-101
1c00c1d6:	4689                	li	a3,2
1c00c1d8:	aef6e9e3          	bltu	a3,a5,1c00bcca <pos_libc_prf+0x72>
1c00c1dc:	47b2                	lw	a5,12(sp)
1c00c1de:	7ff00893          	li	a7,2047
1c00c1e2:	00778b13          	addi	s6,a5,7
1c00c1e6:	ff8b7b13          	andi	s6,s6,-8
1c00c1ea:	004b2783          	lw	a5,4(s6)
1c00c1ee:	000b2603          	lw	a2,0(s6)
1c00c1f2:	0b21                	addi	s6,s6,8
1c00c1f4:	00b79693          	slli	a3,a5,0xb
1c00c1f8:	01565813          	srli	a6,a2,0x15
1c00c1fc:	0147d513          	srli	a0,a5,0x14
1c00c200:	00d866b3          	or	a3,a6,a3
1c00c204:	0686                	slli	a3,a3,0x1
1c00c206:	7ff57813          	andi	a6,a0,2047
1c00c20a:	00b61313          	slli	t1,a2,0xb
1c00c20e:	0016d513          	srli	a0,a3,0x1
1c00c212:	86be                	mv	a3,a5
1c00c214:	c11818e3          	bne	a6,a7,1c00be24 <pos_libc_prf+0x1cc>
1c00c218:	105c                	addi	a5,sp,36
1c00c21a:	0006d863          	bgez	a3,1c00c22a <pos_libc_prf+0x5d2>
1c00c21e:	02d00793          	li	a5,45
1c00c222:	02f10223          	sb	a5,36(sp)
1c00c226:	02510793          	addi	a5,sp,37
1c00c22a:	00a36633          	or	a2,t1,a0
1c00c22e:	fbfd8593          	addi	a1,s11,-65
1c00c232:	00378993          	addi	s3,a5,3
1c00c236:	46e5                	li	a3,25
1c00c238:	0c0612e3          	bnez	a2,1c00cafc <pos_libc_prf+0xea4>
1c00c23c:	10b6e5e3          	bltu	a3,a1,1c00cb46 <pos_libc_prf+0xeee>
1c00c240:	04900693          	li	a3,73
1c00c244:	00d78023          	sb	a3,0(a5)
1c00c248:	04e00693          	li	a3,78
1c00c24c:	00d780a3          	sb	a3,1(a5)
1c00c250:	04600693          	li	a3,70
1c00c254:	00d78123          	sb	a3,2(a5)
1c00c258:	000781a3          	sb	zero,3(a5)
1c00c25c:	105c                	addi	a5,sp,36
1c00c25e:	40f989b3          	sub	s3,s3,a5
1c00c262:	47a2                	lw	a5,8(sp)
1c00c264:	4712                	lw	a4,4(sp)
1c00c266:	8fd9                	or	a5,a5,a4
1c00c268:	ce3e                	sw	a5,28(sp)
1c00c26a:	5e079b63          	bnez	a5,1c00c860 <pos_libc_prf+0xc08>
1c00c26e:	02414683          	lbu	a3,36(sp)
1c00c272:	02d00793          	li	a5,45
1c00c276:	5ef68563          	beq	a3,a5,1c00c860 <pos_libc_prf+0xc08>
1c00c27a:	0c800793          	li	a5,200
1c00c27e:	0d37d863          	bge	a5,s3,1c00c34e <pos_libc_prf+0x6f6>
1c00c282:	547d                	li	s0,-1
1c00c284:	b4b9                	j	1c00bcd2 <pos_libc_prf+0x7a>
1c00c286:	07000793          	li	a5,112
1c00c28a:	46fd8f63          	beq	s11,a5,1c00c708 <pos_libc_prf+0xab0>
1c00c28e:	1bb7d663          	bge	a5,s11,1c00c43a <pos_libc_prf+0x7e2>
1c00c292:	07500793          	li	a5,117
1c00c296:	52fd8763          	beq	s11,a5,1c00c7c4 <pos_libc_prf+0xb6c>
1c00c29a:	07800793          	li	a5,120
1c00c29e:	16fd9163          	bne	s11,a5,1c00c400 <pos_libc_prf+0x7a8>
1c00c2a2:	47b2                	lw	a5,12(sp)
1c00c2a4:	1054                	addi	a3,sp,36
1c00c2a6:	4390                	lw	a2,0(a5)
1c00c2a8:	00478b13          	addi	s6,a5,4
1c00c2ac:	47f2                	lw	a5,28(sp)
1c00c2ae:	28079163          	bnez	a5,1c00c530 <pos_libc_prf+0x8d8>
1c00c2b2:	87b6                	mv	a5,a3
1c00c2b4:	4ea5                	li	t4,9
1c00c2b6:	4e3d                	li	t3,15
1c00c2b8:	a039                	j	1c00c2c6 <pos_libc_prf+0x66e>
1c00c2ba:	ff098fa3          	sb	a6,-1(s3)
1c00c2be:	02ce7663          	bgeu	t3,a2,1c00c2ea <pos_libc_prf+0x692>
1c00c2c2:	862a                	mv	a2,a0
1c00c2c4:	87ce                	mv	a5,s3
1c00c2c6:	00f67593          	andi	a1,a2,15
1c00c2ca:	00178993          	addi	s3,a5,1
1c00c2ce:	05758813          	addi	a6,a1,87
1c00c2d2:	03058713          	addi	a4,a1,48
1c00c2d6:	00465513          	srli	a0,a2,0x4
1c00c2da:	febee0e3          	bltu	t4,a1,1c00c2ba <pos_libc_prf+0x662>
1c00c2de:	00e78023          	sb	a4,0(a5)
1c00c2e2:	00178993          	addi	s3,a5,1
1c00c2e6:	fcce6ee3          	bltu	t3,a2,1c00c2c2 <pos_libc_prf+0x66a>
1c00c2ea:	40d98633          	sub	a2,s3,a3
1c00c2ee:	01565c63          	bge	a2,s5,1c00c306 <pos_libc_prf+0x6ae>
1c00c2f2:	03000513          	li	a0,48
1c00c2f6:	87ce                	mv	a5,s3
1c00c2f8:	0985                	addi	s3,s3,1
1c00c2fa:	40d98733          	sub	a4,s3,a3
1c00c2fe:	fea98fa3          	sb	a0,-1(s3)
1c00c302:	ff574ae3          	blt	a4,s5,1c00c2f6 <pos_libc_prf+0x69e>
1c00c306:	00098023          	sb	zero,0(s3)
1c00c30a:	00f6fe63          	bgeu	a3,a5,1c00c326 <pos_libc_prf+0x6ce>
1c00c30e:	0006c603          	lbu	a2,0(a3)
1c00c312:	0007c703          	lbu	a4,0(a5)
1c00c316:	0685                	addi	a3,a3,1
1c00c318:	00c78023          	sb	a2,0(a5)
1c00c31c:	fee68fa3          	sb	a4,-1(a3)
1c00c320:	17fd                	addi	a5,a5,-1
1c00c322:	fef6e6e3          	bltu	a3,a5,1c00c30e <pos_libc_prf+0x6b6>
1c00c326:	05800793          	li	a5,88
1c00c32a:	66fd8463          	beq	s11,a5,1c00c992 <pos_libc_prf+0xd3a>
1c00c32e:	105c                	addi	a5,sp,36
1c00c330:	40f989b3          	sub	s3,s3,a5
1c00c334:	47f2                	lw	a5,28(sp)
1c00c336:	c399                	beqz	a5,1c00c33c <pos_libc_prf+0x6e4>
1c00c338:	4789                	li	a5,2
1c00c33a:	ce3e                	sw	a5,28(sp)
1c00c33c:	57fd                	li	a5,-1
1c00c33e:	f2fa8ee3          	beq	s5,a5,1c00c27a <pos_libc_prf+0x622>
1c00c342:	0c800793          	li	a5,200
1c00c346:	e537cae3          	blt	a5,s3,1c00c19a <pos_libc_prf+0x542>
1c00c34a:	02000913          	li	s2,32
1c00c34e:	00198613          	addi	a2,s3,1
1c00c352:	0349c963          	blt	s3,s4,1c00c384 <pos_libc_prf+0x72c>
1c00c356:	c65a                	sw	s6,12(sp)
1c00c358:	8a4e                	mv	s4,s3
1c00c35a:	1a0a1663          	bnez	s4,1c00c506 <pos_libc_prf+0x8ae>
1c00c35e:	b2b5                	j	1c00bcca <pos_libc_prf+0x72>
1c00c360:	06300793          	li	a5,99
1c00c364:	96fd93e3          	bne	s11,a5,1c00bcca <pos_libc_prf+0x72>
1c00c368:	4732                	lw	a4,12(sp)
1c00c36a:	020102a3          	sb	zero,37(sp)
1c00c36e:	4785                	li	a5,1
1c00c370:	4314                	lw	a3,0(a4)
1c00c372:	00470b13          	addi	s6,a4,4
1c00c376:	02d10223          	sb	a3,36(sp)
1c00c37a:	1947d463          	bge	a5,s4,1c00c502 <pos_libc_prf+0x8aa>
1c00c37e:	4609                	li	a2,2
1c00c380:	4985                	li	s3,1
1c00c382:	ce02                	sw	zero,28(sp)
1c00c384:	4782                	lw	a5,0(sp)
1c00c386:	4e078463          	beqz	a5,1c00c86e <pos_libc_prf+0xc16>
1c00c38a:	413a07b3          	sub	a5,s4,s3
1c00c38e:	4585                	li	a1,1
1c00c390:	0149d363          	bge	s3,s4,1c00c396 <pos_libc_prf+0x73e>
1c00c394:	85be                	mv	a1,a5
1c00c396:	17fd                	addi	a5,a5,-1
1c00c398:	0037b793          	sltiu	a5,a5,3
1c00c39c:	eb95                	bnez	a5,1c00c3d0 <pos_libc_prf+0x778>
1c00c39e:	0349d963          	bge	s3,s4,1c00c3d0 <pos_libc_prf+0x778>
1c00c3a2:	105c                	addi	a5,sp,36
1c00c3a4:	97ce                	add	a5,a5,s3
1c00c3a6:	ffc5f613          	andi	a2,a1,-4
1c00c3aa:	963e                	add	a2,a2,a5
1c00c3ac:	02000693          	li	a3,32
1c00c3b0:	00d78023          	sb	a3,0(a5)
1c00c3b4:	00d780a3          	sb	a3,1(a5)
1c00c3b8:	00d78123          	sb	a3,2(a5)
1c00c3bc:	00d781a3          	sb	a3,3(a5)
1c00c3c0:	0791                	addi	a5,a5,4
1c00c3c2:	fef617e3          	bne	a2,a5,1c00c3b0 <pos_libc_prf+0x758>
1c00c3c6:	ffc5f793          	andi	a5,a1,-4
1c00c3ca:	99be                	add	s3,s3,a5
1c00c3cc:	02b78663          	beq	a5,a1,1c00c3f8 <pos_libc_prf+0x7a0>
1c00c3d0:	199c                	addi	a5,sp,240
1c00c3d2:	97ce                	add	a5,a5,s3
1c00c3d4:	02000693          	li	a3,32
1c00c3d8:	f2d78a23          	sb	a3,-204(a5)
1c00c3dc:	00198793          	addi	a5,s3,1
1c00c3e0:	0147dc63          	bge	a5,s4,1c00c3f8 <pos_libc_prf+0x7a0>
1c00c3e4:	1998                	addi	a4,sp,240
1c00c3e6:	97ba                	add	a5,a5,a4
1c00c3e8:	f2d78a23          	sb	a3,-204(a5)
1c00c3ec:	0989                	addi	s3,s3,2
1c00c3ee:	0149d563          	bge	s3,s4,1c00c3f8 <pos_libc_prf+0x7a0>
1c00c3f2:	99ba                	add	s3,s3,a4
1c00c3f4:	f2d98a23          	sb	a3,-204(s3)
1c00c3f8:	c65a                	sw	s6,12(sp)
1c00c3fa:	100a1663          	bnez	s4,1c00c506 <pos_libc_prf+0x8ae>
1c00c3fe:	b0f1                	j	1c00bcca <pos_libc_prf+0x72>
1c00c400:	07300793          	li	a5,115
1c00c404:	d8fd97e3          	bne	s11,a5,1c00c192 <pos_libc_prf+0x53a>
1c00c408:	47b2                	lw	a5,12(sp)
1c00c40a:	4981                	li	s3,0
1c00c40c:	0c800693          	li	a3,200
1c00c410:	438c                	lw	a1,0(a5)
1c00c412:	00478b13          	addi	s6,a5,4
1c00c416:	a021                	j	1c00c41e <pos_libc_prf+0x7c6>
1c00c418:	0985                	addi	s3,s3,1
1c00c41a:	6ad98163          	beq	s3,a3,1c00cabc <pos_libc_prf+0xe64>
1c00c41e:	013587b3          	add	a5,a1,s3
1c00c422:	0007c783          	lbu	a5,0(a5)
1c00c426:	fbed                	bnez	a5,1c00c418 <pos_libc_prf+0x7c0>
1c00c428:	000ac563          	bltz	s5,1c00c432 <pos_libc_prf+0x7da>
1c00c42c:	013ad363          	bge	s5,s3,1c00c432 <pos_libc_prf+0x7da>
1c00c430:	89d6                	mv	s3,s5
1c00c432:	5a099163          	bnez	s3,1c00c9d4 <pos_libc_prf+0xd7c>
1c00c436:	c65a                	sw	s6,12(sp)
1c00c438:	b849                	j	1c00bcca <pos_libc_prf+0x72>
1c00c43a:	06e00793          	li	a5,110
1c00c43e:	36fd8c63          	beq	s11,a5,1c00c7b6 <pos_libc_prf+0xb5e>
1c00c442:	06f00793          	li	a5,111
1c00c446:	88fd92e3          	bne	s11,a5,1c00bcca <pos_libc_prf+0x72>
1c00c44a:	47b2                	lw	a5,12(sp)
1c00c44c:	4390                	lw	a2,0(a5)
1c00c44e:	00478b13          	addi	s6,a5,4
1c00c452:	47f2                	lw	a5,28(sp)
1c00c454:	c7f5                	beqz	a5,1c00c540 <pos_libc_prf+0x8e8>
1c00c456:	03000793          	li	a5,48
1c00c45a:	02f10223          	sb	a5,36(sp)
1c00c45e:	02510693          	addi	a3,sp,37
1c00c462:	60060b63          	beqz	a2,1c00ca78 <pos_libc_prf+0xe20>
1c00c466:	89b6                	mv	s3,a3
1c00c468:	481d                	li	a6,7
1c00c46a:	00767713          	andi	a4,a2,7
1c00c46e:	03070713          	addi	a4,a4,48
1c00c472:	85b2                	mv	a1,a2
1c00c474:	00e98023          	sb	a4,0(s3)
1c00c478:	87ce                	mv	a5,s3
1c00c47a:	820d                	srli	a2,a2,0x3
1c00c47c:	0985                	addi	s3,s3,1
1c00c47e:	feb866e3          	bltu	a6,a1,1c00c46a <pos_libc_prf+0x812>
1c00c482:	40d98633          	sub	a2,s3,a3
1c00c486:	01565c63          	bge	a2,s5,1c00c49e <pos_libc_prf+0x846>
1c00c48a:	03000593          	li	a1,48
1c00c48e:	87ce                	mv	a5,s3
1c00c490:	0985                	addi	s3,s3,1
1c00c492:	40d98733          	sub	a4,s3,a3
1c00c496:	feb98fa3          	sb	a1,-1(s3)
1c00c49a:	ff574ae3          	blt	a4,s5,1c00c48e <pos_libc_prf+0x836>
1c00c49e:	00098023          	sb	zero,0(s3)
1c00c4a2:	00f6fe63          	bgeu	a3,a5,1c00c4be <pos_libc_prf+0x866>
1c00c4a6:	0006c603          	lbu	a2,0(a3)
1c00c4aa:	0007c703          	lbu	a4,0(a5)
1c00c4ae:	0685                	addi	a3,a3,1
1c00c4b0:	00c78023          	sb	a2,0(a5)
1c00c4b4:	fee68fa3          	sb	a4,-1(a3)
1c00c4b8:	17fd                	addi	a5,a5,-1
1c00c4ba:	fef6e6e3          	bltu	a3,a5,1c00c4a6 <pos_libc_prf+0x84e>
1c00c4be:	1058                	addi	a4,sp,36
1c00c4c0:	57fd                	li	a5,-1
1c00c4c2:	40e989b3          	sub	s3,s3,a4
1c00c4c6:	36fa8763          	beq	s5,a5,1c00c834 <pos_libc_prf+0xbdc>
1c00c4ca:	0c800793          	li	a5,200
1c00c4ce:	cd37c6e3          	blt	a5,s3,1c00c19a <pos_libc_prf+0x542>
1c00c4d2:	ce02                	sw	zero,28(sp)
1c00c4d4:	bd9d                	j	1c00c34a <pos_libc_prf+0x6f2>
1c00c4d6:	00064583          	lbu	a1,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00c4da:	02a00793          	li	a5,42
1c00c4de:	00160693          	addi	a3,a2,1
1c00c4e2:	14f59b63          	bne	a1,a5,1c00c638 <pos_libc_prf+0x9e0>
1c00c4e6:	47b2                	lw	a5,12(sp)
1c00c4e8:	00164d83          	lbu	s11,1(a2)
1c00c4ec:	0609                	addi	a2,a2,2
1c00c4ee:	0007aa83          	lw	s5,0(a5)
1c00c4f2:	0791                	addi	a5,a5,4
1c00c4f4:	c63e                	sw	a5,12(sp)
1c00c4f6:	0c800793          	li	a5,200
1c00c4fa:	8957dde3          	bge	a5,s5,1c00bd94 <pos_libc_prf+0x13c>
1c00c4fe:	5afd                	li	s5,-1
1c00c500:	b851                	j	1c00bd94 <pos_libc_prf+0x13c>
1c00c502:	c65a                	sw	s6,12(sp)
1c00c504:	4a05                	li	s4,1
1c00c506:	02410913          	addi	s2,sp,36
1c00c50a:	59fd                	li	s3,-1
1c00c50c:	41240ab3          	sub	s5,s0,s2
1c00c510:	9a4a                	add	s4,s4,s2
1c00c512:	a029                	j	1c00c51c <pos_libc_prf+0x8c4>
1c00c514:	012a8433          	add	s0,s5,s2
1c00c518:	fb490963          	beq	s2,s4,1c00bcca <pos_libc_prf+0x72>
1c00c51c:	00094503          	lbu	a0,0(s2)
1c00c520:	85a6                	mv	a1,s1
1c00c522:	0905                	addi	s2,s2,1
1c00c524:	9c82                	jalr	s9
1c00c526:	ff3517e3          	bne	a0,s3,1c00c514 <pos_libc_prf+0x8bc>
1c00c52a:	547d                	li	s0,-1
1c00c52c:	fa6ff06f          	j	1c00bcd2 <pos_libc_prf+0x7a>
1c00c530:	77e1                	lui	a5,0xffff8
1c00c532:	8307c793          	xori	a5,a5,-2000
1c00c536:	02f11223          	sh	a5,36(sp)
1c00c53a:	02610693          	addi	a3,sp,38
1c00c53e:	bb95                	j	1c00c2b2 <pos_libc_prf+0x65a>
1c00c540:	1054                	addi	a3,sp,36
1c00c542:	b715                	j	1c00c466 <pos_libc_prf+0x80e>
1c00c544:	5c605a63          	blez	t1,1c00cb18 <pos_libc_prf+0xec0>
1c00c548:	006f09b3          	add	s3,t5,t1
1c00c54c:	4541                	li	a0,16
1c00c54e:	03000e13          	li	t3,48
1c00c552:	00279713          	slli	a4,a5,0x2
1c00c556:	01e7d593          	srli	a1,a5,0x1e
1c00c55a:	00289693          	slli	a3,a7,0x2
1c00c55e:	00f70333          	add	t1,a4,a5
1c00c562:	8ecd                	or	a3,a3,a1
1c00c564:	96c6                	add	a3,a3,a7
1c00c566:	00e33733          	sltu	a4,t1,a4
1c00c56a:	9736                	add	a4,a4,a3
1c00c56c:	0706                	slli	a4,a4,0x1
1c00c56e:	01f35693          	srli	a3,t1,0x1f
1c00c572:	8f55                	or	a4,a4,a3
1c00c574:	01c75693          	srli	a3,a4,0x1c
1c00c578:	03068693          	addi	a3,a3,48
1c00c57c:	4ea05463          	blez	a0,1c00ca64 <pos_libc_prf+0xe0c>
1c00c580:	fed80fa3          	sb	a3,-1(a6)
1c00c584:	46d2                	lw	a3,20(sp)
1c00c586:	157d                	addi	a0,a0,-1
1c00c588:	00131793          	slli	a5,t1,0x1
1c00c58c:	00d778b3          	and	a7,a4,a3
1c00c590:	4d099e63          	bne	s3,a6,1c00ca6c <pos_libc_prf+0xe14>
1c00c594:	4301                	li	t1,0
1c00c596:	4772                	lw	a4,28(sp)
1c00c598:	01576bb3          	or	s7,a4,s5
1c00c59c:	060b8863          	beqz	s7,1c00c60c <pos_libc_prf+0x9b4>
1c00c5a0:	02e00693          	li	a3,46
1c00c5a4:	00d98023          	sb	a3,0(s3)
1c00c5a8:	00198e93          	addi	t4,s3,1
1c00c5ac:	5c0a8763          	beqz	s5,1c00cb7a <pos_libc_prf+0xf22>
1c00c5b0:	001a8693          	addi	a3,s5,1
1c00c5b4:	99b6                	add	s3,s3,a3
1c00c5b6:	8876                	mv	a6,t4
1c00c5b8:	03000f13          	li	t5,48
1c00c5bc:	0805                	addi	a6,a6,1
1c00c5be:	4a031963          	bnez	t1,1c00ca70 <pos_libc_prf+0xe18>
1c00c5c2:	00279713          	slli	a4,a5,0x2
1c00c5c6:	01e7d593          	srli	a1,a5,0x1e
1c00c5ca:	00289693          	slli	a3,a7,0x2
1c00c5ce:	00f70e33          	add	t3,a4,a5
1c00c5d2:	8ecd                	or	a3,a3,a1
1c00c5d4:	96c6                	add	a3,a3,a7
1c00c5d6:	00ee3733          	sltu	a4,t3,a4
1c00c5da:	9736                	add	a4,a4,a3
1c00c5dc:	0706                	slli	a4,a4,0x1
1c00c5de:	01fe5693          	srli	a3,t3,0x1f
1c00c5e2:	8f55                	or	a4,a4,a3
1c00c5e4:	01c75593          	srli	a1,a4,0x1c
1c00c5e8:	03000693          	li	a3,48
1c00c5ec:	00a05a63          	blez	a0,1c00c600 <pos_libc_prf+0x9a8>
1c00c5f0:	03058693          	addi	a3,a1,48
1c00c5f4:	45d2                	lw	a1,20(sp)
1c00c5f6:	157d                	addi	a0,a0,-1
1c00c5f8:	001e1793          	slli	a5,t3,0x1
1c00c5fc:	00b778b3          	and	a7,a4,a1
1c00c600:	fed80fa3          	sb	a3,-1(a6)
1c00c604:	fb099ce3          	bne	s3,a6,1c00c5bc <pos_libc_prf+0x964>
1c00c608:	015e89b3          	add	s3,t4,s5
1c00c60c:	b0060ee3          	beqz	a2,1c00c128 <pos_libc_prf+0x4d0>
1c00c610:	03000613          	li	a2,48
1c00c614:	fff9c783          	lbu	a5,-1(s3)
1c00c618:	86ce                	mv	a3,s3
1c00c61a:	19fd                	addi	s3,s3,-1
1c00c61c:	fec78ce3          	beq	a5,a2,1c00c614 <pos_libc_prf+0x9bc>
1c00c620:	02e00613          	li	a2,46
1c00c624:	aec78ce3          	beq	a5,a2,1c00c11c <pos_libc_prf+0x4c4>
1c00c628:	89b6                	mv	s3,a3
1c00c62a:	bccd                	j	1c00c11c <pos_libc_prf+0x4c4>
1c00c62c:	fff88fa3          	sb	t6,-1(a7)
1c00c630:	ab1f11e3          	bne	t5,a7,1c00c0d2 <pos_libc_prf+0x47a>
1c00c634:	99d6                	add	s3,s3,s5
1c00c636:	b4cd                	j	1c00c118 <pos_libc_prf+0x4c0>
1c00c638:	fd058713          	addi	a4,a1,-48
1c00c63c:	47a5                	li	a5,9
1c00c63e:	8dae                	mv	s11,a1
1c00c640:	4a81                	li	s5,0
1c00c642:	4525                	li	a0,9
1c00c644:	00e7f463          	bgeu	a5,a4,1c00c64c <pos_libc_prf+0x9f4>
1c00c648:	a199                	j	1c00ca8e <pos_libc_prf+0xe36>
1c00c64a:	0685                	addi	a3,a3,1
1c00c64c:	002a9793          	slli	a5,s5,0x2
1c00c650:	97d6                	add	a5,a5,s5
1c00c652:	0786                	slli	a5,a5,0x1
1c00c654:	97ee                	add	a5,a5,s11
1c00c656:	0006cd83          	lbu	s11,0(a3)
1c00c65a:	fd078a93          	addi	s5,a5,-48 # ffff7fd0 <__l2_shared_end+0xe3fe7fd0>
1c00c65e:	8732                	mv	a4,a2
1c00c660:	fd0d8793          	addi	a5,s11,-48
1c00c664:	8636                	mv	a2,a3
1c00c666:	fef572e3          	bgeu	a0,a5,1c00c64a <pos_libc_prf+0x9f2>
1c00c66a:	00270613          	addi	a2,a4,2
1c00c66e:	b561                	j	1c00c4f6 <pos_libc_prf+0x89e>
1c00c670:	47b2                	lw	a5,12(sp)
1c00c672:	0007a303          	lw	t1,0(a5)
1c00c676:	00478b13          	addi	s6,a5,4
1c00c67a:	2e034263          	bltz	t1,1c00c95e <pos_libc_prf+0xd06>
1c00c67e:	47a2                	lw	a5,8(sp)
1c00c680:	861a                	mv	a2,t1
1c00c682:	3c078663          	beqz	a5,1c00ca4e <pos_libc_prf+0xdf6>
1c00c686:	02b00793          	li	a5,43
1c00c68a:	02f10223          	sb	a5,36(sp)
1c00c68e:	02510693          	addi	a3,sp,37
1c00c692:	89b6                	mv	s3,a3
1c00c694:	4529                	li	a0,10
1c00c696:	48a5                	li	a7,9
1c00c698:	02a67733          	remu	a4,a2,a0
1c00c69c:	87ce                	mv	a5,s3
1c00c69e:	0985                	addi	s3,s3,1
1c00c6a0:	85b2                	mv	a1,a2
1c00c6a2:	03070713          	addi	a4,a4,48
1c00c6a6:	fee98fa3          	sb	a4,-1(s3)
1c00c6aa:	02a65633          	divu	a2,a2,a0
1c00c6ae:	feb8e5e3          	bltu	a7,a1,1c00c698 <pos_libc_prf+0xa40>
1c00c6b2:	40d98633          	sub	a2,s3,a3
1c00c6b6:	01565c63          	bge	a2,s5,1c00c6ce <pos_libc_prf+0xa76>
1c00c6ba:	03000593          	li	a1,48
1c00c6be:	87ce                	mv	a5,s3
1c00c6c0:	0985                	addi	s3,s3,1
1c00c6c2:	40d98733          	sub	a4,s3,a3
1c00c6c6:	feb98fa3          	sb	a1,-1(s3)
1c00c6ca:	ff574ae3          	blt	a4,s5,1c00c6be <pos_libc_prf+0xa66>
1c00c6ce:	00098023          	sb	zero,0(s3)
1c00c6d2:	00f6fe63          	bgeu	a3,a5,1c00c6ee <pos_libc_prf+0xa96>
1c00c6d6:	0006c603          	lbu	a2,0(a3)
1c00c6da:	0007c703          	lbu	a4,0(a5)
1c00c6de:	0685                	addi	a3,a3,1
1c00c6e0:	00c78023          	sb	a2,0(a5)
1c00c6e4:	fee68fa3          	sb	a4,-1(a3)
1c00c6e8:	17fd                	addi	a5,a5,-1
1c00c6ea:	fef6e6e3          	bltu	a3,a5,1c00c6d6 <pos_libc_prf+0xa7e>
1c00c6ee:	4712                	lw	a4,4(sp)
1c00c6f0:	47a2                	lw	a5,8(sp)
1c00c6f2:	8fd9                	or	a5,a5,a4
1c00c6f4:	ce3e                	sw	a5,28(sp)
1c00c6f6:	1058                	addi	a4,sp,36
1c00c6f8:	40e989b3          	sub	s3,s3,a4
1c00c6fc:	c40790e3          	bnez	a5,1c00c33c <pos_libc_prf+0x6e4>
1c00c700:	01f35793          	srli	a5,t1,0x1f
1c00c704:	ce3e                	sw	a5,28(sp)
1c00c706:	b91d                	j	1c00c33c <pos_libc_prf+0x6e4>
1c00c708:	47b2                	lw	a5,12(sp)
1c00c70a:	02610613          	addi	a2,sp,38
1c00c70e:	4ea5                	li	t4,9
1c00c710:	438c                	lw	a1,0(a5)
1c00c712:	00478b13          	addi	s6,a5,4
1c00c716:	77e1                	lui	a5,0xffff8
1c00c718:	8307c793          	xori	a5,a5,-2000
1c00c71c:	02f11223          	sh	a5,36(sp)
1c00c720:	4e3d                	li	t3,15
1c00c722:	87b2                	mv	a5,a2
1c00c724:	a039                	j	1c00c732 <pos_libc_prf+0xada>
1c00c726:	ff168fa3          	sb	a7,-1(a3)
1c00c72a:	02be7663          	bgeu	t3,a1,1c00c756 <pos_libc_prf+0xafe>
1c00c72e:	85c2                	mv	a1,a6
1c00c730:	87b6                	mv	a5,a3
1c00c732:	00f5f513          	andi	a0,a1,15
1c00c736:	00178693          	addi	a3,a5,1 # ffff8001 <__l2_shared_end+0xe3fe8001>
1c00c73a:	05750893          	addi	a7,a0,87
1c00c73e:	03050713          	addi	a4,a0,48
1c00c742:	0045d813          	srli	a6,a1,0x4
1c00c746:	feaee0e3          	bltu	t4,a0,1c00c726 <pos_libc_prf+0xace>
1c00c74a:	00e78023          	sb	a4,0(a5)
1c00c74e:	00178693          	addi	a3,a5,1
1c00c752:	fcbe6ee3          	bltu	t3,a1,1c00c72e <pos_libc_prf+0xad6>
1c00c756:	40c689b3          	sub	s3,a3,a2
1c00c75a:	459d                	li	a1,7
1c00c75c:	0135cc63          	blt	a1,s3,1c00c774 <pos_libc_prf+0xb1c>
1c00c760:	03000513          	li	a0,48
1c00c764:	87b6                	mv	a5,a3
1c00c766:	0685                	addi	a3,a3,1
1c00c768:	40c689b3          	sub	s3,a3,a2
1c00c76c:	fea68fa3          	sb	a0,-1(a3)
1c00c770:	ff35dae3          	bge	a1,s3,1c00c764 <pos_libc_prf+0xb0c>
1c00c774:	00068023          	sb	zero,0(a3)
1c00c778:	86b2                	mv	a3,a2
1c00c77a:	00f67e63          	bgeu	a2,a5,1c00c796 <pos_libc_prf+0xb3e>
1c00c77e:	0006c603          	lbu	a2,0(a3)
1c00c782:	0007c703          	lbu	a4,0(a5)
1c00c786:	0685                	addi	a3,a3,1
1c00c788:	00c78023          	sb	a2,0(a5)
1c00c78c:	fee68fa3          	sb	a4,-1(a3)
1c00c790:	17fd                	addi	a5,a5,-1
1c00c792:	fef6e6e3          	bltu	a3,a5,1c00c77e <pos_libc_prf+0xb26>
1c00c796:	57fd                	li	a5,-1
1c00c798:	0989                	addi	s3,s3,2
1c00c79a:	22fa8663          	beq	s5,a5,1c00c9c6 <pos_libc_prf+0xd6e>
1c00c79e:	0c800793          	li	a5,200
1c00c7a2:	9f37cce3          	blt	a5,s3,1c00c19a <pos_libc_prf+0x542>
1c00c7a6:	02000913          	li	s2,32
1c00c7aa:	0b49d863          	bge	s3,s4,1c00c85a <pos_libc_prf+0xc02>
1c00c7ae:	00198613          	addi	a2,s3,1
1c00c7b2:	ce02                	sw	zero,28(sp)
1c00c7b4:	bec1                	j	1c00c384 <pos_libc_prf+0x72c>
1c00c7b6:	4732                	lw	a4,12(sp)
1c00c7b8:	431c                	lw	a5,0(a4)
1c00c7ba:	0711                	addi	a4,a4,4
1c00c7bc:	c63a                	sw	a4,12(sp)
1c00c7be:	c380                	sw	s0,0(a5)
1c00c7c0:	d0aff06f          	j	1c00bcca <pos_libc_prf+0x72>
1c00c7c4:	47b2                	lw	a5,12(sp)
1c00c7c6:	4529                	li	a0,10
1c00c7c8:	48a5                	li	a7,9
1c00c7ca:	4390                	lw	a2,0(a5)
1c00c7cc:	00478b13          	addi	s6,a5,4
1c00c7d0:	105c                	addi	a5,sp,36
1c00c7d2:	02a67733          	remu	a4,a2,a0
1c00c7d6:	86be                	mv	a3,a5
1c00c7d8:	0785                	addi	a5,a5,1
1c00c7da:	85b2                	mv	a1,a2
1c00c7dc:	03070713          	addi	a4,a4,48
1c00c7e0:	fee78fa3          	sb	a4,-1(a5)
1c00c7e4:	02a65633          	divu	a2,a2,a0
1c00c7e8:	feb8e5e3          	bltu	a7,a1,1c00c7d2 <pos_libc_prf+0xb7a>
1c00c7ec:	1058                	addi	a4,sp,36
1c00c7ee:	40e789b3          	sub	s3,a5,a4
1c00c7f2:	0159dd63          	bge	s3,s5,1c00c80c <pos_libc_prf+0xbb4>
1c00c7f6:	03000613          	li	a2,48
1c00c7fa:	86be                	mv	a3,a5
1c00c7fc:	1058                	addi	a4,sp,36
1c00c7fe:	0785                	addi	a5,a5,1
1c00c800:	40e789b3          	sub	s3,a5,a4
1c00c804:	fec78fa3          	sb	a2,-1(a5)
1c00c808:	ff59c9e3          	blt	s3,s5,1c00c7fa <pos_libc_prf+0xba2>
1c00c80c:	00078023          	sb	zero,0(a5)
1c00c810:	105c                	addi	a5,sp,36
1c00c812:	00d7fe63          	bgeu	a5,a3,1c00c82e <pos_libc_prf+0xbd6>
1c00c816:	0007c603          	lbu	a2,0(a5)
1c00c81a:	0006c703          	lbu	a4,0(a3)
1c00c81e:	0785                	addi	a5,a5,1
1c00c820:	00c68023          	sb	a2,0(a3)
1c00c824:	fee78fa3          	sb	a4,-1(a5)
1c00c828:	16fd                	addi	a3,a3,-1
1c00c82a:	fed7e6e3          	bltu	a5,a3,1c00c816 <pos_libc_prf+0xbbe>
1c00c82e:	57fd                	li	a5,-1
1c00c830:	c8fa9de3          	bne	s5,a5,1c00c4ca <pos_libc_prf+0x872>
1c00c834:	0c800793          	li	a5,200
1c00c838:	9737c1e3          	blt	a5,s3,1c00c19a <pos_libc_prf+0x542>
1c00c83c:	ce02                	sw	zero,28(sp)
1c00c83e:	be01                	j	1c00c34e <pos_libc_prf+0x6f6>
1c00c840:	85a6                	mv	a1,s1
1c00c842:	02500513          	li	a0,37
1c00c846:	9c82                	jalr	s9
1c00c848:	57fd                	li	a5,-1
1c00c84a:	c6f51f63          	bne	a0,a5,1c00bcc8 <pos_libc_prf+0x70>
1c00c84e:	547d                	li	s0,-1
1c00c850:	c82ff06f          	j	1c00bcd2 <pos_libc_prf+0x7a>
1c00c854:	4401                	li	s0,0
1c00c856:	c7cff06f          	j	1c00bcd2 <pos_libc_prf+0x7a>
1c00c85a:	8a4e                	mv	s4,s3
1c00c85c:	c65a                	sw	s6,12(sp)
1c00c85e:	b165                	j	1c00c506 <pos_libc_prf+0x8ae>
1c00c860:	0c800793          	li	a5,200
1c00c864:	9337cbe3          	blt	a5,s3,1c00c19a <pos_libc_prf+0x542>
1c00c868:	4785                	li	a5,1
1c00c86a:	ce3e                	sw	a5,28(sp)
1c00c86c:	b4cd                	j	1c00c34e <pos_libc_prf+0x6f6>
1c00c86e:	104c                	addi	a1,sp,36
1c00c870:	413a09b3          	sub	s3,s4,s3
1c00c874:	01358533          	add	a0,a1,s3
1c00c878:	9faff0ef          	jal	ra,1c00ba72 <memmove>
1c00c87c:	02000793          	li	a5,32
1c00c880:	24f90863          	beq	s2,a5,1c00cad0 <pos_libc_prf+0xe78>
1c00c884:	47f2                	lw	a5,28(sp)
1c00c886:	99be                	add	s3,s3,a5
1c00c888:	47f2                	lw	a5,28(sp)
1c00c88a:	b737d7e3          	bge	a5,s3,1c00c3f8 <pos_libc_prf+0x7a0>
1c00c88e:	4772                	lw	a4,28(sp)
1c00c890:	4789                	li	a5,2
1c00c892:	40e988b3          	sub	a7,s3,a4
1c00c896:	fff88693          	addi	a3,a7,-1
1c00c89a:	06d7f063          	bgeu	a5,a3,1c00c8fa <pos_libc_prf+0xca2>
1c00c89e:	47e2                	lw	a5,24(sp)
1c00c8a0:	00891613          	slli	a2,s2,0x8
1c00c8a4:	ffc8f593          	andi	a1,a7,-4
1c00c8a8:	00f976b3          	and	a3,s2,a5
1c00c8ac:	8ed1                	or	a3,a3,a2
1c00c8ae:	01091793          	slli	a5,s2,0x10
1c00c8b2:	8edd                	or	a3,a3,a5
1c00c8b4:	01891613          	slli	a2,s2,0x18
1c00c8b8:	8e55                	or	a2,a2,a3
1c00c8ba:	105c                	addi	a5,sp,36
1c00c8bc:	00865813          	srli	a6,a2,0x8
1c00c8c0:	01065513          	srli	a0,a2,0x10
1c00c8c4:	97ba                	add	a5,a5,a4
1c00c8c6:	95be                	add	a1,a1,a5
1c00c8c8:	0306f693          	andi	a3,a3,48
1c00c8cc:	8261                	srli	a2,a2,0x18
1c00c8ce:	0ff87813          	andi	a6,a6,255
1c00c8d2:	0ff57513          	andi	a0,a0,255
1c00c8d6:	00d78023          	sb	a3,0(a5)
1c00c8da:	010780a3          	sb	a6,1(a5)
1c00c8de:	00a78123          	sb	a0,2(a5)
1c00c8e2:	00c781a3          	sb	a2,3(a5)
1c00c8e6:	0791                	addi	a5,a5,4
1c00c8e8:	fef597e3          	bne	a1,a5,1c00c8d6 <pos_libc_prf+0xc7e>
1c00c8ec:	4772                	lw	a4,28(sp)
1c00c8ee:	ffc8f793          	andi	a5,a7,-4
1c00c8f2:	973e                	add	a4,a4,a5
1c00c8f4:	ce3a                	sw	a4,28(sp)
1c00c8f6:	b11781e3          	beq	a5,a7,1c00c3f8 <pos_libc_prf+0x7a0>
1c00c8fa:	4772                	lw	a4,28(sp)
1c00c8fc:	199c                	addi	a5,sp,240
1c00c8fe:	97ba                	add	a5,a5,a4
1c00c900:	f3278a23          	sb	s2,-204(a5)
1c00c904:	00170793          	addi	a5,a4,1
1c00c908:	af37d8e3          	bge	a5,s3,1c00c3f8 <pos_libc_prf+0x7a0>
1c00c90c:	1994                	addi	a3,sp,240
1c00c90e:	97b6                	add	a5,a5,a3
1c00c910:	f3278a23          	sb	s2,-204(a5)
1c00c914:	00270b93          	addi	s7,a4,2
1c00c918:	af3bd0e3          	bge	s7,s3,1c00c3f8 <pos_libc_prf+0x7a0>
1c00c91c:	9bb6                	add	s7,s7,a3
1c00c91e:	f32b8a23          	sb	s2,-204(s7)
1c00c922:	c65a                	sw	s6,12(sp)
1c00c924:	bcd9                	j	1c00c3fa <pos_libc_prf+0x7a2>
1c00c926:	01b98023          	sb	s11,0(s3)
1c00c92a:	02b00613          	li	a2,43
1c00c92e:	00035663          	bgez	t1,1c00c93a <pos_libc_prf+0xce2>
1c00c932:	40600333          	neg	t1,t1
1c00c936:	02d00613          	li	a2,45
1c00c93a:	47a9                	li	a5,10
1c00c93c:	02f346b3          	div	a3,t1,a5
1c00c940:	00c980a3          	sb	a2,1(s3)
1c00c944:	0991                	addi	s3,s3,4
1c00c946:	02f367b3          	rem	a5,t1,a5
1c00c94a:	03068693          	addi	a3,a3,48
1c00c94e:	fed98f23          	sb	a3,-2(s3)
1c00c952:	03078793          	addi	a5,a5,48
1c00c956:	fef98fa3          	sb	a5,-1(s3)
1c00c95a:	fceff06f          	j	1c00c128 <pos_libc_prf+0x4d0>
1c00c95e:	02d00793          	li	a5,45
1c00c962:	02f10223          	sb	a5,36(sp)
1c00c966:	800007b7          	lui	a5,0x80000
1c00c96a:	14f30e63          	beq	t1,a5,1c00cac6 <pos_libc_prf+0xe6e>
1c00c96e:	40600633          	neg	a2,t1
1c00c972:	02510693          	addi	a3,sp,37
1c00c976:	bb31                	j	1c00c692 <pos_libc_prf+0xa3a>
1c00c978:	4722                	lw	a4,8(sp)
1c00c97a:	10070d63          	beqz	a4,1c00ca94 <pos_libc_prf+0xe3c>
1c00c97e:	02b00693          	li	a3,43
1c00c982:	02d10223          	sb	a3,36(sp)
1c00c986:	02510f13          	addi	t5,sp,37
1c00c98a:	4301                	li	t1,0
1c00c98c:	4801                	li	a6,0
1c00c98e:	d9cff06f          	j	1c00bf2a <pos_libc_prf+0x2d2>
1c00c992:	02414783          	lbu	a5,36(sp)
1c00c996:	98078ce3          	beqz	a5,1c00c32e <pos_libc_prf+0x6d6>
1c00c99a:	1054                	addi	a3,sp,36
1c00c99c:	45e5                	li	a1,25
1c00c99e:	fe078713          	addi	a4,a5,-32 # 7fffffe0 <__l2_shared_end+0x63feffe0>
1c00c9a2:	f9f78793          	addi	a5,a5,-97
1c00c9a6:	0ff7f793          	andi	a5,a5,255
1c00c9aa:	00f5e963          	bltu	a1,a5,1c00c9bc <pos_libc_prf+0xd64>
1c00c9ae:	0016c783          	lbu	a5,1(a3)
1c00c9b2:	00e68023          	sb	a4,0(a3)
1c00c9b6:	0685                	addi	a3,a3,1
1c00c9b8:	f3fd                	bnez	a5,1c00c99e <pos_libc_prf+0xd46>
1c00c9ba:	ba95                	j	1c00c32e <pos_libc_prf+0x6d6>
1c00c9bc:	0016c783          	lbu	a5,1(a3)
1c00c9c0:	0685                	addi	a3,a3,1
1c00c9c2:	fff1                	bnez	a5,1c00c99e <pos_libc_prf+0xd46>
1c00c9c4:	b2ad                	j	1c00c32e <pos_libc_prf+0x6d6>
1c00c9c6:	0c800793          	li	a5,200
1c00c9ca:	df37d0e3          	bge	a5,s3,1c00c7aa <pos_libc_prf+0xb52>
1c00c9ce:	547d                	li	s0,-1
1c00c9d0:	b02ff06f          	j	1c00bcd2 <pos_libc_prf+0x7a>
1c00c9d4:	864e                	mv	a2,s3
1c00c9d6:	1048                	addi	a0,sp,36
1c00c9d8:	fc5fe0ef          	jal	ra,1c00b99c <memcpy>
1c00c9dc:	b3f9                	j	1c00c7aa <pos_libc_prf+0xb52>
1c00c9de:	47f2                	lw	a5,28(sp)
1c00c9e0:	4601                	li	a2,0
1c00c9e2:	e399                	bnez	a5,1c00c9e8 <pos_libc_prf+0xd90>
1c00c9e4:	01503633          	snez	a2,s5
1c00c9e8:	57f5                	li	a5,-3
1c00c9ea:	001a8813          	addi	a6,s5,1
1c00c9ee:	00f34463          	blt	t1,a5,1c00c9f6 <pos_libc_prf+0xd9e>
1c00c9f2:	04685163          	bge	a6,t1,1c00ca34 <pos_libc_prf+0xddc>
1c00c9f6:	47c1                	li	a5,16
1c00c9f8:	0107d363          	bge	a5,a6,1c00c9fe <pos_libc_prf+0xda6>
1c00c9fc:	4841                	li	a6,16
1c00c9fe:	06700793          	li	a5,103
1c00ca02:	187d                	addi	a6,a6,-1
1c00ca04:	02fd8363          	beq	s11,a5,1c00ca2a <pos_libc_prf+0xdd2>
1c00ca08:	04500d93          	li	s11,69
1c00ca0c:	d70ff06f          	j	1c00bf7c <pos_libc_prf+0x324>
1c00ca10:	4a99                	li	s5,6
1c00ca12:	d4fd9563          	bne	s11,a5,1c00bf5c <pos_libc_prf+0x304>
1c00ca16:	4772                	lw	a4,28(sp)
1c00ca18:	4605                	li	a2,1
1c00ca1a:	57f5                	li	a5,-3
1c00ca1c:	8e19                	sub	a2,a2,a4
1c00ca1e:	00f34563          	blt	t1,a5,1c00ca28 <pos_libc_prf+0xdd0>
1c00ca22:	479d                	li	a5,7
1c00ca24:	0067d863          	bge	a5,t1,1c00ca34 <pos_libc_prf+0xddc>
1c00ca28:	4819                	li	a6,6
1c00ca2a:	06500d93          	li	s11,101
1c00ca2e:	d4eff06f          	j	1c00bf7c <pos_libc_prf+0x324>
1c00ca32:	4601                	li	a2,0
1c00ca34:	006a8833          	add	a6,s5,t1
1c00ca38:	0b005b63          	blez	a6,1c00caee <pos_libc_prf+0xe96>
1c00ca3c:	47c1                	li	a5,16
1c00ca3e:	0107d363          	bge	a5,a6,1c00ca44 <pos_libc_prf+0xdec>
1c00ca42:	4841                	li	a6,16
1c00ca44:	187d                	addi	a6,a6,-1
1c00ca46:	06600d93          	li	s11,102
1c00ca4a:	d32ff06f          	j	1c00bf7c <pos_libc_prf+0x324>
1c00ca4e:	4792                	lw	a5,4(sp)
1c00ca50:	1054                	addi	a3,sp,36
1c00ca52:	c40780e3          	beqz	a5,1c00c692 <pos_libc_prf+0xa3a>
1c00ca56:	02000793          	li	a5,32
1c00ca5a:	02f10223          	sb	a5,36(sp)
1c00ca5e:	02510693          	addi	a3,sp,37
1c00ca62:	b905                	j	1c00c692 <pos_libc_prf+0xa3a>
1c00ca64:	ffc80fa3          	sb	t3,-1(a6)
1c00ca68:	b30986e3          	beq	s3,a6,1c00c594 <pos_libc_prf+0x93c>
1c00ca6c:	0805                	addi	a6,a6,1
1c00ca6e:	b4d5                	j	1c00c552 <pos_libc_prf+0x8fa>
1c00ca70:	ffe80fa3          	sb	t5,-1(a6)
1c00ca74:	0305                	addi	t1,t1,1
1c00ca76:	b679                	j	1c00c604 <pos_libc_prf+0x9ac>
1c00ca78:	020102a3          	sb	zero,37(sp)
1c00ca7c:	57fd                	li	a5,-1
1c00ca7e:	0cfa8263          	beq	s5,a5,1c00cb42 <pos_libc_prf+0xeea>
1c00ca82:	4785                	li	a5,1
1c00ca84:	0b47c063          	blt	a5,s4,1c00cb24 <pos_libc_prf+0xecc>
1c00ca88:	4a72                	lw	s4,28(sp)
1c00ca8a:	c65a                	sw	s6,12(sp)
1c00ca8c:	bcad                	j	1c00c506 <pos_libc_prf+0x8ae>
1c00ca8e:	8636                	mv	a2,a3
1c00ca90:	b04ff06f          	j	1c00bd94 <pos_libc_prf+0x13c>
1c00ca94:	4712                	lw	a4,4(sp)
1c00ca96:	c77d                	beqz	a4,1c00cb84 <pos_libc_prf+0xf2c>
1c00ca98:	02000693          	li	a3,32
1c00ca9c:	02d10223          	sb	a3,36(sp)
1c00caa0:	4301                	li	t1,0
1c00caa2:	4801                	li	a6,0
1c00caa4:	02510f13          	addi	t5,sp,37
1c00caa8:	c82ff06f          	j	1c00bf2a <pos_libc_prf+0x2d2>
1c00caac:	02d00693          	li	a3,45
1c00cab0:	02d10223          	sb	a3,36(sp)
1c00cab4:	02510f13          	addi	t5,sp,37
1c00cab8:	b9cff06f          	j	1c00be54 <pos_libc_prf+0x1fc>
1c00cabc:	0c800613          	li	a2,200
1c00cac0:	960ad6e3          	bgez	s5,1c00c42c <pos_libc_prf+0x7d4>
1c00cac4:	bf09                	j	1c00c9d6 <pos_libc_prf+0xd7e>
1c00cac6:	80000637          	lui	a2,0x80000
1c00caca:	02510693          	addi	a3,sp,37
1c00cace:	b6d1                	j	1c00c692 <pos_libc_prf+0xa3a>
1c00cad0:	ce02                	sw	zero,28(sp)
1c00cad2:	bb5d                	j	1c00c888 <pos_libc_prf+0xc30>
1c00cad4:	4712                	lw	a4,4(sp)
1c00cad6:	02410f13          	addi	t5,sp,36
1c00cada:	b6070d63          	beqz	a4,1c00be54 <pos_libc_prf+0x1fc>
1c00cade:	02000693          	li	a3,32
1c00cae2:	02d10223          	sb	a3,36(sp)
1c00cae6:	02510f13          	addi	t5,sp,37
1c00caea:	b6aff06f          	j	1c00be54 <pos_libc_prf+0x1fc>
1c00caee:	06600d93          	li	s11,102
1c00caf2:	4781                	li	a5,0
1c00caf4:	080006b7          	lui	a3,0x8000
1c00caf8:	ce8ff06f          	j	1c00bfe0 <pos_libc_prf+0x388>
1c00cafc:	06b6e363          	bltu	a3,a1,1c00cb62 <pos_libc_prf+0xf0a>
1c00cb00:	04e00693          	li	a3,78
1c00cb04:	04100613          	li	a2,65
1c00cb08:	00d78023          	sb	a3,0(a5)
1c00cb0c:	00c780a3          	sb	a2,1(a5)
1c00cb10:	00d78123          	sb	a3,2(a5)
1c00cb14:	f44ff06f          	j	1c00c258 <pos_libc_prf+0x600>
1c00cb18:	03000693          	li	a3,48
1c00cb1c:	00df0023          	sb	a3,0(t5)
1c00cb20:	4541                	li	a0,16
1c00cb22:	bc95                	j	1c00c596 <pos_libc_prf+0x93e>
1c00cb24:	4982                	lw	s3,0(sp)
1c00cb26:	860992e3          	bnez	s3,1c00c38a <pos_libc_prf+0x732>
1c00cb2a:	104c                	addi	a1,sp,36
1c00cb2c:	fffa0993          	addi	s3,s4,-1
1c00cb30:	4609                	li	a2,2
1c00cb32:	01358533          	add	a0,a1,s3
1c00cb36:	f3dfe0ef          	jal	ra,1c00ba72 <memmove>
1c00cb3a:	02000913          	li	s2,32
1c00cb3e:	ce02                	sw	zero,28(sp)
1c00cb40:	b3b9                	j	1c00c88e <pos_libc_prf+0xc36>
1c00cb42:	49f2                	lw	s3,28(sp)
1c00cb44:	b19d                	j	1c00c7aa <pos_libc_prf+0xb52>
1c00cb46:	06900693          	li	a3,105
1c00cb4a:	00d78023          	sb	a3,0(a5)
1c00cb4e:	06e00693          	li	a3,110
1c00cb52:	00d780a3          	sb	a3,1(a5)
1c00cb56:	06600693          	li	a3,102
1c00cb5a:	00d78123          	sb	a3,2(a5)
1c00cb5e:	efaff06f          	j	1c00c258 <pos_libc_prf+0x600>
1c00cb62:	06e00693          	li	a3,110
1c00cb66:	06100613          	li	a2,97
1c00cb6a:	00d78023          	sb	a3,0(a5)
1c00cb6e:	00c780a3          	sb	a2,1(a5)
1c00cb72:	00d78123          	sb	a3,2(a5)
1c00cb76:	ee2ff06f          	j	1c00c258 <pos_libc_prf+0x600>
1c00cb7a:	89f6                	mv	s3,t4
1c00cb7c:	a8061ae3          	bnez	a2,1c00c610 <pos_libc_prf+0x9b8>
1c00cb80:	da8ff06f          	j	1c00c128 <pos_libc_prf+0x4d0>
1c00cb84:	4301                	li	t1,0
1c00cb86:	4801                	li	a6,0
1c00cb88:	02410f13          	addi	t5,sp,36
1c00cb8c:	b9eff06f          	j	1c00bf2a <pos_libc_prf+0x2d2>

1c00cb90 <pos_init_start>:
1c00cb90:	1141                	addi	sp,sp,-16
1c00cb92:	c422                	sw	s0,8(sp)
1c00cb94:	1c000437          	lui	s0,0x1c000
1c00cb98:	c606                	sw	ra,12(sp)
1c00cb9a:	00840413          	addi	s0,s0,8 # 1c000008 <ctor_list>
1c00cb9e:	ed0fc0ef          	jal	ra,1c00926e <pos_soc_init>
1c00cba2:	2a75                	jal	1c00cd5e <pos_irq_init>
1c00cba4:	22e5                	jal	1c00cd8c <pos_soc_event_init>
1c00cba6:	2225                	jal	1c00ccce <pos_allocs_init>
1c00cba8:	405c                	lw	a5,4(s0)
1c00cbaa:	c791                	beqz	a5,1c00cbb6 <pos_init_start+0x26>
1c00cbac:	0411                	addi	s0,s0,4
1c00cbae:	0411                	addi	s0,s0,4
1c00cbb0:	9782                	jalr	a5
1c00cbb2:	401c                	lw	a5,0(s0)
1c00cbb4:	ffed                	bnez	a5,1c00cbae <pos_init_start+0x1e>
1c00cbb6:	86cff0ef          	jal	ra,1c00bc22 <pos_io_start>
1c00cbba:	300467f3          	csrrsi	a5,mstatus,8
1c00cbbe:	40b2                	lw	ra,12(sp)
1c00cbc0:	4422                	lw	s0,8(sp)
1c00cbc2:	0141                	addi	sp,sp,16
1c00cbc4:	8082                	ret

1c00cbc6 <pos_init_stop>:
1c00cbc6:	1141                	addi	sp,sp,-16
1c00cbc8:	c422                	sw	s0,8(sp)
1c00cbca:	1c000437          	lui	s0,0x1c000
1c00cbce:	c606                	sw	ra,12(sp)
1c00cbd0:	01440413          	addi	s0,s0,20 # 1c000014 <dtor_list>
1c00cbd4:	852ff0ef          	jal	ra,1c00bc26 <pos_io_stop>
1c00cbd8:	405c                	lw	a5,4(s0)
1c00cbda:	c791                	beqz	a5,1c00cbe6 <pos_init_stop+0x20>
1c00cbdc:	0411                	addi	s0,s0,4
1c00cbde:	0411                	addi	s0,s0,4
1c00cbe0:	9782                	jalr	a5
1c00cbe2:	401c                	lw	a5,0(s0)
1c00cbe4:	ffed                	bnez	a5,1c00cbde <pos_init_stop+0x18>
1c00cbe6:	40b2                	lw	ra,12(sp)
1c00cbe8:	4422                	lw	s0,8(sp)
1c00cbea:	0141                	addi	sp,sp,16
1c00cbec:	8082                	ret

1c00cbee <pos_alloc_init>:
1c00cbee:	00758793          	addi	a5,a1,7
1c00cbf2:	9be1                	andi	a5,a5,-8
1c00cbf4:	40b785b3          	sub	a1,a5,a1
1c00cbf8:	c11c                	sw	a5,0(a0)
1c00cbfa:	40b605b3          	sub	a1,a2,a1
1c00cbfe:	00b05663          	blez	a1,1c00cc0a <pos_alloc_init+0x1c>
1c00cc02:	99e1                	andi	a1,a1,-8
1c00cc04:	c38c                	sw	a1,0(a5)
1c00cc06:	0007a223          	sw	zero,4(a5)
1c00cc0a:	8082                	ret

1c00cc0c <pos_alloc>:
1c00cc0c:	411c                	lw	a5,0(a0)
1c00cc0e:	00758713          	addi	a4,a1,7
1c00cc12:	862a                	mv	a2,a0
1c00cc14:	ff877593          	andi	a1,a4,-8
1c00cc18:	4681                	li	a3,0
1c00cc1a:	e789                	bnez	a5,1c00cc24 <pos_alloc+0x18>
1c00cc1c:	a091                	j	1c00cc60 <pos_alloc+0x54>
1c00cc1e:	86be                	mv	a3,a5
1c00cc20:	c505                	beqz	a0,1c00cc48 <pos_alloc+0x3c>
1c00cc22:	87aa                	mv	a5,a0
1c00cc24:	4398                	lw	a4,0(a5)
1c00cc26:	43c8                	lw	a0,4(a5)
1c00cc28:	feb74be3          	blt	a4,a1,1c00cc1e <pos_alloc+0x12>
1c00cc2c:	00b70f63          	beq	a4,a1,1c00cc4a <pos_alloc+0x3e>
1c00cc30:	00b78833          	add	a6,a5,a1
1c00cc34:	8f0d                	sub	a4,a4,a1
1c00cc36:	00e82023          	sw	a4,0(a6)
1c00cc3a:	00a82223          	sw	a0,4(a6)
1c00cc3e:	ca91                	beqz	a3,1c00cc52 <pos_alloc+0x46>
1c00cc40:	0106a223          	sw	a6,4(a3) # 8000004 <__CTOR_LIST__-0x14000000>
1c00cc44:	853e                	mv	a0,a5
1c00cc46:	8082                	ret
1c00cc48:	8082                	ret
1c00cc4a:	ca81                	beqz	a3,1c00cc5a <pos_alloc+0x4e>
1c00cc4c:	c2c8                	sw	a0,4(a3)
1c00cc4e:	853e                	mv	a0,a5
1c00cc50:	8082                	ret
1c00cc52:	01062023          	sw	a6,0(a2) # 80000000 <__l2_shared_end+0x63ff0000>
1c00cc56:	853e                	mv	a0,a5
1c00cc58:	8082                	ret
1c00cc5a:	c208                	sw	a0,0(a2)
1c00cc5c:	853e                	mv	a0,a5
1c00cc5e:	8082                	ret
1c00cc60:	4501                	li	a0,0
1c00cc62:	8082                	ret

1c00cc64 <pos_free>:
1c00cc64:	411c                	lw	a5,0(a0)
1c00cc66:	061d                	addi	a2,a2,7
1c00cc68:	9a61                	andi	a2,a2,-8
1c00cc6a:	c7a1                	beqz	a5,1c00ccb2 <pos_free+0x4e>
1c00cc6c:	00b7e563          	bltu	a5,a1,1c00cc76 <pos_free+0x12>
1c00cc70:	a089                	j	1c00ccb2 <pos_free+0x4e>
1c00cc72:	00b7f563          	bgeu	a5,a1,1c00cc7c <pos_free+0x18>
1c00cc76:	873e                	mv	a4,a5
1c00cc78:	43dc                	lw	a5,4(a5)
1c00cc7a:	ffe5                	bnez	a5,1c00cc72 <pos_free+0xe>
1c00cc7c:	00c586b3          	add	a3,a1,a2
1c00cc80:	00d78b63          	beq	a5,a3,1c00cc96 <pos_free+0x32>
1c00cc84:	c190                	sw	a2,0(a1)
1c00cc86:	4314                	lw	a3,0(a4)
1c00cc88:	c1dc                	sw	a5,4(a1)
1c00cc8a:	00d70533          	add	a0,a4,a3
1c00cc8e:	00a58e63          	beq	a1,a0,1c00ccaa <pos_free+0x46>
1c00cc92:	c34c                	sw	a1,4(a4)
1c00cc94:	8082                	ret
1c00cc96:	4394                	lw	a3,0(a5)
1c00cc98:	43dc                	lw	a5,4(a5)
1c00cc9a:	9636                	add	a2,a2,a3
1c00cc9c:	c190                	sw	a2,0(a1)
1c00cc9e:	4314                	lw	a3,0(a4)
1c00cca0:	c1dc                	sw	a5,4(a1)
1c00cca2:	00d70533          	add	a0,a4,a3
1c00cca6:	fea596e3          	bne	a1,a0,1c00cc92 <pos_free+0x2e>
1c00ccaa:	9636                	add	a2,a2,a3
1c00ccac:	c310                	sw	a2,0(a4)
1c00ccae:	c35c                	sw	a5,4(a4)
1c00ccb0:	8082                	ret
1c00ccb2:	00c58733          	add	a4,a1,a2
1c00ccb6:	00e78663          	beq	a5,a4,1c00ccc2 <pos_free+0x5e>
1c00ccba:	c1dc                	sw	a5,4(a1)
1c00ccbc:	c190                	sw	a2,0(a1)
1c00ccbe:	c10c                	sw	a1,0(a0)
1c00ccc0:	8082                	ret
1c00ccc2:	4398                	lw	a4,0(a5)
1c00ccc4:	43dc                	lw	a5,4(a5)
1c00ccc6:	963a                	add	a2,a2,a4
1c00ccc8:	c1dc                	sw	a5,4(a1)
1c00ccca:	c190                	sw	a2,0(a1)
1c00cccc:	bfcd                	j	1c00ccbe <pos_free+0x5a>

1c00ccce <pos_allocs_init>:
1c00ccce:	1c0065b7          	lui	a1,0x1c006
1c00ccd2:	1141                	addi	sp,sp,-16
1c00ccd4:	3a858613          	addi	a2,a1,936 # 1c0063a8 <__l2_priv0_end>
1c00ccd8:	1c0087b7          	lui	a5,0x1c008
1c00ccdc:	c606                	sw	ra,12(sp)
1c00ccde:	3a858593          	addi	a1,a1,936
1c00cce2:	40c78633          	sub	a2,a5,a2
1c00cce6:	04f5d863          	bge	a1,a5,1c00cd36 <pos_allocs_init+0x68>
1c00ccea:	1c006537          	lui	a0,0x1c006
1c00ccee:	39c50513          	addi	a0,a0,924 # 1c00639c <pos_alloc_l2>
1c00ccf2:	3df5                	jal	1c00cbee <pos_alloc_init>
1c00ccf4:	1c00d5b7          	lui	a1,0x1c00d
1c00ccf8:	da458613          	addi	a2,a1,-604 # 1c00cda4 <__l2_priv1_end>
1c00ccfc:	1c0107b7          	lui	a5,0x1c010
1c00cd00:	da458593          	addi	a1,a1,-604
1c00cd04:	40c78633          	sub	a2,a5,a2
1c00cd08:	02f5da63          	bge	a1,a5,1c00cd3c <pos_allocs_init+0x6e>
1c00cd0c:	1c006537          	lui	a0,0x1c006
1c00cd10:	3a050513          	addi	a0,a0,928 # 1c0063a0 <pos_alloc_l2+0x4>
1c00cd14:	3de9                	jal	1c00cbee <pos_alloc_init>
1c00cd16:	40b2                	lw	ra,12(sp)
1c00cd18:	1c0105b7          	lui	a1,0x1c010
1c00cd1c:	00058793          	mv	a5,a1
1c00cd20:	1c080637          	lui	a2,0x1c080
1c00cd24:	1c006537          	lui	a0,0x1c006
1c00cd28:	8e1d                	sub	a2,a2,a5
1c00cd2a:	00058593          	mv	a1,a1
1c00cd2e:	3a450513          	addi	a0,a0,932 # 1c0063a4 <pos_alloc_l2+0x8>
1c00cd32:	0141                	addi	sp,sp,16
1c00cd34:	bd6d                	j	1c00cbee <pos_alloc_init>
1c00cd36:	4581                	li	a1,0
1c00cd38:	4601                	li	a2,0
1c00cd3a:	bf45                	j	1c00ccea <pos_allocs_init+0x1c>
1c00cd3c:	4581                	li	a1,0
1c00cd3e:	4601                	li	a2,0
1c00cd40:	b7f1                	j	1c00cd0c <pos_allocs_init+0x3e>

1c00cd42 <pi_l2_malloc>:
1c00cd42:	85aa                	mv	a1,a0
1c00cd44:	1c006537          	lui	a0,0x1c006
1c00cd48:	39c50513          	addi	a0,a0,924 # 1c00639c <pos_alloc_l2>
1c00cd4c:	b5c1                	j	1c00cc0c <pos_alloc>

1c00cd4e <pi_l2_free>:
1c00cd4e:	862e                	mv	a2,a1
1c00cd50:	85aa                	mv	a1,a0
1c00cd52:	1c006537          	lui	a0,0x1c006
1c00cd56:	39c50513          	addi	a0,a0,924 # 1c00639c <pos_alloc_l2>
1c00cd5a:	b729                	j	1c00cc64 <pos_free>

1c00cd5c <__rt_handle_illegal_instr>:
1c00cd5c:	8082                	ret

1c00cd5e <pos_irq_init>:
1c00cd5e:	1a10a737          	lui	a4,0x1a10a
1c00cd62:	56fd                	li	a3,-1
1c00cd64:	f14027f3          	csrr	a5,mhartid
1c00cd68:	8795                	srai	a5,a5,0x5
1c00cd6a:	80d72423          	sw	a3,-2040(a4) # 1a109808 <__CTOR_LIST__-0x1ef67fc>
1c00cd6e:	03f7f793          	andi	a5,a5,63
1c00cd72:	477d                	li	a4,31
1c00cd74:	00e78363          	beq	a5,a4,1c00cd7a <pos_irq_init+0x1c>
1c00cd78:	8082                	ret
1c00cd7a:	1c0087b7          	lui	a5,0x1c008
1c00cd7e:	00078793          	mv	a5,a5
1c00cd82:	0017e793          	ori	a5,a5,1
1c00cd86:	30579073          	csrw	mtvec,a5
1c00cd8a:	8082                	ret

1c00cd8c <pos_soc_event_init>:
1c00cd8c:	1a1067b7          	lui	a5,0x1a106
1c00cd90:	577d                	li	a4,-1
1c00cd92:	c3d8                	sw	a4,4(a5)
1c00cd94:	c798                	sw	a4,8(a5)
1c00cd96:	c7d8                	sw	a4,12(a5)
1c00cd98:	cb98                	sw	a4,16(a5)
1c00cd9a:	cbd8                	sw	a4,20(a5)
1c00cd9c:	cf98                	sw	a4,24(a5)
1c00cd9e:	cfd8                	sw	a4,28(a5)
1c00cda0:	d398                	sw	a4,32(a5)
1c00cda2:	8082                	ret
