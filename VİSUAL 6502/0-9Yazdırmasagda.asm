		.data $0020
		.byte $3F,$06,$5B,$4F,$66,$6D,$7D,$07,$7F,$6F
			
		.code $0200
		
	BASA LDX #00
	DON LDA $20,x
	STA ORA
	LDA #%00000001
	STA ORB
	JSR GECIK
   	INX 
	CPX #10
	BNE DON
	JMP BASA
	BRK
	
	
	GECIK LDX #$04
	BEKLE LDY #$05
	DON1  DEY
	      BNE DON1
	      DEX
	      BNE BEKLE 
	      RTS 
	      END
	      