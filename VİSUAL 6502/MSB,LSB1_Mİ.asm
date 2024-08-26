	.data $20
	.byte $75,$8D,$E0,$99,$24
	
	.code $0200
	
	LDY #00
	LDX #05
 yeni	LDA $1F,x
	BMI sor
 sonra 	DEX
 	BNE yeni
 	BRK
 sor	ROR
 	BCC öteki
 	INY
 öteki	DEX
 	BNE yeni
 	BRK
 	END