#source: lfence-ret.s
#as: -mlfence-before-ret=not
#objdump: -dw
#name: -mlfence-before-ret=not

.*: +file format .*


Disassembly of section .text:

0+ <_start>:
 +[a-f0-9]+:	f7 14 24             	notl   \(%esp\)
 +[a-f0-9]+:	f7 14 24             	notl   \(%esp\)
 +[a-f0-9]+:	0f ae e8             	lfence 
 +[a-f0-9]+:	c3                   	ret    
 +[a-f0-9]+:	f7 14 24             	notl   \(%esp\)
 +[a-f0-9]+:	f7 14 24             	notl   \(%esp\)
 +[a-f0-9]+:	0f ae e8             	lfence 
 +[a-f0-9]+:	c2 1e 00             	ret    \$0x1e
#pass
