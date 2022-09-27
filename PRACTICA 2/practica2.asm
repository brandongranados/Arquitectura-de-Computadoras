
practica2:     formato del fichero elf64-x86-64


Desensamblado de la sección .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Desensamblado de la sección .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	pushq  0x2f6a(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmpq *0x2f6b(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop

Desensamblado de la sección .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmpq *0x2f4d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Desensamblado de la sección .plt.sec:

00000000000010b0 <puts@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmpq *0x2ee5(%rip)        # 3fa0 <puts@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <__stack_chk_fail@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmpq *0x2edd(%rip)        # 3fa8 <__stack_chk_fail@GLIBC_2.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <printf@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmpq *0x2ed5(%rip)        # 3fb0 <printf@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <malloc@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmpq *0x2ecd(%rip)        # 3fb8 <malloc@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <__isoc99_scanf@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmpq *0x2ec5(%rip)        # 3fc0 <__isoc99_scanf@GLIBC_2.7>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <exit@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmpq *0x2ebd(%rip)        # 3fc8 <exit@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <rand@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmpq *0x2eb5(%rip)        # 3fd0 <rand@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Desensamblado de la sección .text:

0000000000001120 <_start>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	31 ed                	xor    %ebp,%ebp
    1126:	49 89 d1             	mov    %rdx,%r9
    1129:	5e                   	pop    %rsi
    112a:	48 89 e2             	mov    %rsp,%rdx
    112d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1131:	50                   	push   %rax
    1132:	54                   	push   %rsp
    1133:	4c 8d 05 06 04 00 00 	lea    0x406(%rip),%r8        # 1540 <__libc_csu_fini>
    113a:	48 8d 0d 8f 03 00 00 	lea    0x38f(%rip),%rcx        # 14d0 <__libc_csu_init>
    1141:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1209 <main>
    1148:	ff 15 92 2e 00 00    	callq  *0x2e92(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    114e:	f4                   	hlt    
    114f:	90                   	nop

0000000000001150 <deregister_tm_clones>:
    1150:	48 8d 3d b9 2e 00 00 	lea    0x2eb9(%rip),%rdi        # 4010 <__TMC_END__>
    1157:	48 8d 05 b2 2e 00 00 	lea    0x2eb2(%rip),%rax        # 4010 <__TMC_END__>
    115e:	48 39 f8             	cmp    %rdi,%rax
    1161:	74 15                	je     1178 <deregister_tm_clones+0x28>
    1163:	48 8b 05 6e 2e 00 00 	mov    0x2e6e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    116a:	48 85 c0             	test   %rax,%rax
    116d:	74 09                	je     1178 <deregister_tm_clones+0x28>
    116f:	ff e0                	jmpq   *%rax
    1171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1178:	c3                   	retq   
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d 89 2e 00 00 	lea    0x2e89(%rip),%rdi        # 4010 <__TMC_END__>
    1187:	48 8d 35 82 2e 00 00 	lea    0x2e82(%rip),%rsi        # 4010 <__TMC_END__>
    118e:	48 29 fe             	sub    %rdi,%rsi
    1191:	48 89 f0             	mov    %rsi,%rax
    1194:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1198:	48 c1 f8 03          	sar    $0x3,%rax
    119c:	48 01 c6             	add    %rax,%rsi
    119f:	48 d1 fe             	sar    %rsi
    11a2:	74 14                	je     11b8 <register_tm_clones+0x38>
    11a4:	48 8b 05 45 2e 00 00 	mov    0x2e45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    11ab:	48 85 c0             	test   %rax,%rax
    11ae:	74 08                	je     11b8 <register_tm_clones+0x38>
    11b0:	ff e0                	jmpq   *%rax
    11b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11b8:	c3                   	retq   
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <__do_global_dtors_aux>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	80 3d 45 2e 00 00 00 	cmpb   $0x0,0x2e45(%rip)        # 4010 <__TMC_END__>
    11cb:	75 2b                	jne    11f8 <__do_global_dtors_aux+0x38>
    11cd:	55                   	push   %rbp
    11ce:	48 83 3d 22 2e 00 00 	cmpq   $0x0,0x2e22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11d5:	00 
    11d6:	48 89 e5             	mov    %rsp,%rbp
    11d9:	74 0c                	je     11e7 <__do_global_dtors_aux+0x27>
    11db:	48 8b 3d 26 2e 00 00 	mov    0x2e26(%rip),%rdi        # 4008 <__dso_handle>
    11e2:	e8 b9 fe ff ff       	callq  10a0 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	callq  1150 <deregister_tm_clones>
    11ec:	c6 05 1d 2e 00 00 01 	movb   $0x1,0x2e1d(%rip)        # 4010 <__TMC_END__>
    11f3:	5d                   	pop    %rbp
    11f4:	c3                   	retq   
    11f5:	0f 1f 00             	nopl   (%rax)
    11f8:	c3                   	retq   
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <frame_dummy>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	e9 77 ff ff ff       	jmpq   1180 <register_tm_clones>

0000000000001209 <main>:
    1209:	f3 0f 1e fa          	endbr64 
    120d:	55                   	push   %rbp
    120e:	48 89 e5             	mov    %rsp,%rbp
    1211:	48 83 ec 10          	sub    $0x10,%rsp
    1215:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    121c:	00 00 
    121e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1222:	31 c0                	xor    %eax,%eax
    1224:	48 8d 3d dd 0d 00 00 	lea    0xddd(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    122b:	e8 80 fe ff ff       	callq  10b0 <puts@plt>
    1230:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    1234:	48 89 c6             	mov    %rax,%rsi
    1237:	48 8d 3d eb 0d 00 00 	lea    0xdeb(%rip),%rdi        # 2029 <_IO_stdin_used+0x29>
    123e:	b8 00 00 00 00       	mov    $0x0,%eax
    1243:	e8 a8 fe ff ff       	callq  10f0 <__isoc99_scanf@plt>
    1248:	8b 45 f4             	mov    -0xc(%rbp),%eax
    124b:	48 98                	cltq   
    124d:	48 c1 e0 02          	shl    $0x2,%rax
    1251:	48 89 c7             	mov    %rax,%rdi
    1254:	e8 87 fe ff ff       	callq  10e0 <malloc@plt>
    1259:	48 89 05 b8 2d 00 00 	mov    %rax,0x2db8(%rip)        # 4018 <num>
    1260:	48 8b 05 b1 2d 00 00 	mov    0x2db1(%rip),%rax        # 4018 <num>
    1267:	48 85 c0             	test   %rax,%rax
    126a:	75 16                	jne    1282 <main+0x79>
    126c:	48 8d 3d b9 0d 00 00 	lea    0xdb9(%rip),%rdi        # 202c <_IO_stdin_used+0x2c>
    1273:	e8 38 fe ff ff       	callq  10b0 <puts@plt>
    1278:	bf 01 00 00 00       	mov    $0x1,%edi
    127d:	e8 7e fe ff ff       	callq  1100 <exit@plt>
    1282:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1285:	89 c7                	mov    %eax,%edi
    1287:	e8 45 00 00 00       	callq  12d1 <llenaArreglo>
    128c:	8b 45 f4             	mov    -0xc(%rbp),%eax
    128f:	89 c7                	mov    %eax,%edi
    1291:	e8 b4 01 00 00       	callq  144a <mostrarArreglo>
    1296:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1299:	89 c7                	mov    %eax,%edi
    129b:	e8 a0 00 00 00       	callq  1340 <ordenarBurbuja>
    12a0:	48 8d 3d 96 0d 00 00 	lea    0xd96(%rip),%rdi        # 203d <_IO_stdin_used+0x3d>
    12a7:	e8 04 fe ff ff       	callq  10b0 <puts@plt>
    12ac:	8b 45 f4             	mov    -0xc(%rbp),%eax
    12af:	89 c7                	mov    %eax,%edi
    12b1:	e8 94 01 00 00       	callq  144a <mostrarArreglo>
    12b6:	b8 00 00 00 00       	mov    $0x0,%eax
    12bb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12bf:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    12c6:	00 00 
    12c8:	74 05                	je     12cf <main+0xc6>
    12ca:	e8 f1 fd ff ff       	callq  10c0 <__stack_chk_fail@plt>
    12cf:	c9                   	leaveq 
    12d0:	c3                   	retq   

00000000000012d1 <llenaArreglo>:
    12d1:	f3 0f 1e fa          	endbr64 
    12d5:	55                   	push   %rbp
    12d6:	48 89 e5             	mov    %rsp,%rbp
    12d9:	53                   	push   %rbx
    12da:	48 83 ec 28          	sub    $0x28,%rsp
    12de:	89 7d dc             	mov    %edi,-0x24(%rbp)
    12e1:	48 8b 05 30 2d 00 00 	mov    0x2d30(%rip),%rax        # 4018 <num>
    12e8:	48 85 c0             	test   %rax,%rax
    12eb:	75 16                	jne    1303 <llenaArreglo+0x32>
    12ed:	48 8d 3d 38 0d 00 00 	lea    0xd38(%rip),%rdi        # 202c <_IO_stdin_used+0x2c>
    12f4:	e8 b7 fd ff ff       	callq  10b0 <puts@plt>
    12f9:	bf 01 00 00 00       	mov    $0x1,%edi
    12fe:	e8 fd fd ff ff       	callq  1100 <exit@plt>
    1303:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    130a:	eb 20                	jmp    132c <llenaArreglo+0x5b>
    130c:	48 8b 05 05 2d 00 00 	mov    0x2d05(%rip),%rax        # 4018 <num>
    1313:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1316:	48 63 d2             	movslq %edx,%rdx
    1319:	48 c1 e2 02          	shl    $0x2,%rdx
    131d:	48 8d 1c 10          	lea    (%rax,%rdx,1),%rbx
    1321:	e8 ea fd ff ff       	callq  1110 <rand@plt>
    1326:	89 03                	mov    %eax,(%rbx)
    1328:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    132c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    132f:	3b 45 dc             	cmp    -0x24(%rbp),%eax
    1332:	7c d8                	jl     130c <llenaArreglo+0x3b>
    1334:	b8 00 00 00 00       	mov    $0x0,%eax
    1339:	48 83 c4 28          	add    $0x28,%rsp
    133d:	5b                   	pop    %rbx
    133e:	5d                   	pop    %rbp
    133f:	c3                   	retq   

0000000000001340 <ordenarBurbuja>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	55                   	push   %rbp
    1345:	48 89 e5             	mov    %rsp,%rbp
    1348:	48 83 ec 20          	sub    $0x20,%rsp
    134c:	89 7d ec             	mov    %edi,-0x14(%rbp)
    134f:	48 8b 05 c2 2c 00 00 	mov    0x2cc2(%rip),%rax        # 4018 <num>
    1356:	48 85 c0             	test   %rax,%rax
    1359:	75 16                	jne    1371 <ordenarBurbuja+0x31>
    135b:	48 8d 3d ca 0c 00 00 	lea    0xcca(%rip),%rdi        # 202c <_IO_stdin_used+0x2c>
    1362:	e8 49 fd ff ff       	callq  10b0 <puts@plt>
    1367:	bf 01 00 00 00       	mov    $0x1,%edi
    136c:	e8 8f fd ff ff       	callq  1100 <exit@plt>
    1371:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1378:	e9 ba 00 00 00       	jmpq   1437 <ordenarBurbuja+0xf7>
    137d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1380:	83 e8 01             	sub    $0x1,%eax
    1383:	89 45 f8             	mov    %eax,-0x8(%rbp)
    1386:	e9 9e 00 00 00       	jmpq   1429 <ordenarBurbuja+0xe9>
    138b:	48 8b 05 86 2c 00 00 	mov    0x2c86(%rip),%rax        # 4018 <num>
    1392:	8b 55 f8             	mov    -0x8(%rbp),%edx
    1395:	48 63 d2             	movslq %edx,%rdx
    1398:	48 c1 e2 02          	shl    $0x2,%rdx
    139c:	48 01 d0             	add    %rdx,%rax
    139f:	8b 10                	mov    (%rax),%edx
    13a1:	48 8b 05 70 2c 00 00 	mov    0x2c70(%rip),%rax        # 4018 <num>
    13a8:	8b 4d f8             	mov    -0x8(%rbp),%ecx
    13ab:	48 63 c9             	movslq %ecx,%rcx
    13ae:	48 c1 e1 02          	shl    $0x2,%rcx
    13b2:	48 83 e9 04          	sub    $0x4,%rcx
    13b6:	48 01 c8             	add    %rcx,%rax
    13b9:	8b 00                	mov    (%rax),%eax
    13bb:	39 c2                	cmp    %eax,%edx
    13bd:	7d 66                	jge    1425 <ordenarBurbuja+0xe5>
    13bf:	48 8b 05 52 2c 00 00 	mov    0x2c52(%rip),%rax        # 4018 <num>
    13c6:	8b 55 f8             	mov    -0x8(%rbp),%edx
    13c9:	48 63 d2             	movslq %edx,%rdx
    13cc:	48 c1 e2 02          	shl    $0x2,%rdx
    13d0:	48 01 d0             	add    %rdx,%rax
    13d3:	8b 00                	mov    (%rax),%eax
    13d5:	89 45 fc             	mov    %eax,-0x4(%rbp)
    13d8:	48 8b 05 39 2c 00 00 	mov    0x2c39(%rip),%rax        # 4018 <num>
    13df:	8b 55 f8             	mov    -0x8(%rbp),%edx
    13e2:	48 63 d2             	movslq %edx,%rdx
    13e5:	48 c1 e2 02          	shl    $0x2,%rdx
    13e9:	48 83 ea 04          	sub    $0x4,%rdx
    13ed:	48 01 d0             	add    %rdx,%rax
    13f0:	48 8b 15 21 2c 00 00 	mov    0x2c21(%rip),%rdx        # 4018 <num>
    13f7:	8b 4d f8             	mov    -0x8(%rbp),%ecx
    13fa:	48 63 c9             	movslq %ecx,%rcx
    13fd:	48 c1 e1 02          	shl    $0x2,%rcx
    1401:	48 01 ca             	add    %rcx,%rdx
    1404:	8b 00                	mov    (%rax),%eax
    1406:	89 02                	mov    %eax,(%rdx)
    1408:	48 8b 05 09 2c 00 00 	mov    0x2c09(%rip),%rax        # 4018 <num>
    140f:	8b 55 f8             	mov    -0x8(%rbp),%edx
    1412:	48 63 d2             	movslq %edx,%rdx
    1415:	48 c1 e2 02          	shl    $0x2,%rdx
    1419:	48 83 ea 04          	sub    $0x4,%rdx
    141d:	48 01 c2             	add    %rax,%rdx
    1420:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1423:	89 02                	mov    %eax,(%rdx)
    1425:	83 6d f8 01          	subl   $0x1,-0x8(%rbp)
    1429:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    142d:	0f 8f 58 ff ff ff    	jg     138b <ordenarBurbuja+0x4b>
    1433:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1437:	8b 45 f4             	mov    -0xc(%rbp),%eax
    143a:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    143d:	0f 8c 3a ff ff ff    	jl     137d <ordenarBurbuja+0x3d>
    1443:	b8 00 00 00 00       	mov    $0x0,%eax
    1448:	c9                   	leaveq 
    1449:	c3                   	retq   

000000000000144a <mostrarArreglo>:
    144a:	f3 0f 1e fa          	endbr64 
    144e:	55                   	push   %rbp
    144f:	48 89 e5             	mov    %rsp,%rbp
    1452:	48 83 ec 20          	sub    $0x20,%rsp
    1456:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1459:	48 8b 05 b8 2b 00 00 	mov    0x2bb8(%rip),%rax        # 4018 <num>
    1460:	48 85 c0             	test   %rax,%rax
    1463:	75 16                	jne    147b <mostrarArreglo+0x31>
    1465:	48 8d 3d c0 0b 00 00 	lea    0xbc0(%rip),%rdi        # 202c <_IO_stdin_used+0x2c>
    146c:	e8 3f fc ff ff       	callq  10b0 <puts@plt>
    1471:	bf 01 00 00 00       	mov    $0x1,%edi
    1476:	e8 85 fc ff ff       	callq  1100 <exit@plt>
    147b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1482:	eb 35                	jmp    14b9 <mostrarArreglo+0x6f>
    1484:	48 8b 05 8d 2b 00 00 	mov    0x2b8d(%rip),%rax        # 4018 <num>
    148b:	8b 55 fc             	mov    -0x4(%rbp),%edx
    148e:	48 63 d2             	movslq %edx,%rdx
    1491:	48 c1 e2 02          	shl    $0x2,%rdx
    1495:	48 01 d0             	add    %rdx,%rax
    1498:	8b 00                	mov    (%rax),%eax
    149a:	8b 55 fc             	mov    -0x4(%rbp),%edx
    149d:	8d 4a 01             	lea    0x1(%rdx),%ecx
    14a0:	89 c2                	mov    %eax,%edx
    14a2:	89 ce                	mov    %ecx,%esi
    14a4:	48 8d 3d 95 0b 00 00 	lea    0xb95(%rip),%rdi        # 2040 <_IO_stdin_used+0x40>
    14ab:	b8 00 00 00 00       	mov    $0x0,%eax
    14b0:	e8 1b fc ff ff       	callq  10d0 <printf@plt>
    14b5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    14b9:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14bc:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    14bf:	7c c3                	jl     1484 <mostrarArreglo+0x3a>
    14c1:	b8 00 00 00 00       	mov    $0x0,%eax
    14c6:	c9                   	leaveq 
    14c7:	c3                   	retq   
    14c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    14cf:	00 

00000000000014d0 <__libc_csu_init>:
    14d0:	f3 0f 1e fa          	endbr64 
    14d4:	41 57                	push   %r15
    14d6:	4c 8d 3d ab 28 00 00 	lea    0x28ab(%rip),%r15        # 3d88 <__frame_dummy_init_array_entry>
    14dd:	41 56                	push   %r14
    14df:	49 89 d6             	mov    %rdx,%r14
    14e2:	41 55                	push   %r13
    14e4:	49 89 f5             	mov    %rsi,%r13
    14e7:	41 54                	push   %r12
    14e9:	41 89 fc             	mov    %edi,%r12d
    14ec:	55                   	push   %rbp
    14ed:	48 8d 2d 9c 28 00 00 	lea    0x289c(%rip),%rbp        # 3d90 <__do_global_dtors_aux_fini_array_entry>
    14f4:	53                   	push   %rbx
    14f5:	4c 29 fd             	sub    %r15,%rbp
    14f8:	48 83 ec 08          	sub    $0x8,%rsp
    14fc:	e8 ff fa ff ff       	callq  1000 <_init>
    1501:	48 c1 fd 03          	sar    $0x3,%rbp
    1505:	74 1f                	je     1526 <__libc_csu_init+0x56>
    1507:	31 db                	xor    %ebx,%ebx
    1509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1510:	4c 89 f2             	mov    %r14,%rdx
    1513:	4c 89 ee             	mov    %r13,%rsi
    1516:	44 89 e7             	mov    %r12d,%edi
    1519:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    151d:	48 83 c3 01          	add    $0x1,%rbx
    1521:	48 39 dd             	cmp    %rbx,%rbp
    1524:	75 ea                	jne    1510 <__libc_csu_init+0x40>
    1526:	48 83 c4 08          	add    $0x8,%rsp
    152a:	5b                   	pop    %rbx
    152b:	5d                   	pop    %rbp
    152c:	41 5c                	pop    %r12
    152e:	41 5d                	pop    %r13
    1530:	41 5e                	pop    %r14
    1532:	41 5f                	pop    %r15
    1534:	c3                   	retq   
    1535:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    153c:	00 00 00 00 

0000000000001540 <__libc_csu_fini>:
    1540:	f3 0f 1e fa          	endbr64 
    1544:	c3                   	retq   

Desensamblado de la sección .fini:

0000000000001548 <_fini>:
    1548:	f3 0f 1e fa          	endbr64 
    154c:	48 83 ec 08          	sub    $0x8,%rsp
    1550:	48 83 c4 08          	add    $0x8,%rsp
    1554:	c3                   	retq   
