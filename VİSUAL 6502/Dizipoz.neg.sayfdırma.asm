	.data $40
	.byte 05,$75,$6D,$E0,$10,$24,00

	.code $0200
	
	LDX $40
	LDA #$FF
ara	CMP $40,x
	BCC kal
	LDA  $40,x
kal	DEX 
	BNE ara
	INC $40
	LDX $40
	STA $40,x
	BRK  
	END