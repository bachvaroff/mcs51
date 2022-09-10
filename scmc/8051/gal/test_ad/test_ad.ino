void setup(void) {
	cli();
	
	DDRD = 0b11111111; // P1.7|P1.6|...|P1.0
	DDRC = 0b00111111; // 0|0|A15|A14|A13|nPSEN|nWR|nRD
	
	return;
}

#define RD 0
#define WR 1
#define PSEN 2
#define BUS_IDLE 0b00000111

inline byte pulse(byte C, byte b, byte val) {
	return val ? (C | (1u << b)) : (C & ~(1u << b));
}

inline byte pulse0(byte C, byte b) {
	return C & ~(1u << b);
}

inline byte pulse1(byte C, byte b) {
	return C | (1u << b);
}

inline byte flip(byte C, byte b) {
	return C ^ (1u << b);
}

inline void delay_cli(unsigned short i) {
	unsigned short j;

	for (j = 0u; j < i; j++)
		cli();
	return;
}

byte patterns[9] = {
	0b11111111,
	0b11111110,
	0b11111101,
	0b11111011,
	0b11110111,
	0b11101111,
	0b11011111,
	0b10111111,
	0b01111111
};

void loop(void) {
	volatile byte A, Cdef;
	volatile unsigned short i, j;
	
	cli();
	while (1) {
#if 0
		for (i = 0u; i < sizeof (patterns) / sizeof (patterns[0]); i++) {
			PORTD = patterns[i];
#else
		for (i = 0u; i < 256u; i++) {
			PORTD = i;
#endif			
			for (A = 0u; A < 8u; A++) {
				Cdef = (A << 3) | BUS_IDLE;
				PORTC = Cdef;
				
				for (j = 0u; j < 16u; j++) {
					Cdef = flip(Cdef, RD);
					PORTC = Cdef;
					delay_cli(16);
					Cdef = flip(Cdef, RD);
					PORTC = Cdef;
					delay_cli(16);
					
					Cdef = flip(Cdef, WR);
					PORTC = Cdef;
					delay_cli(16);
					Cdef = flip(Cdef, WR);
					PORTC = Cdef;
					delay_cli(16);
					
					Cdef = flip(Cdef, PSEN);
					PORTC = Cdef;
					delay_cli(16);
					Cdef = flip(Cdef, PSEN);
					PORTC = Cdef;
					delay_cli(16);
					
					Cdef = flip(Cdef, WR);
					PORTC = Cdef;
					delay_cli(16);
					Cdef = flip(Cdef, WR);
					PORTC = Cdef;
					delay_cli(16);
				}
				
				PORTC = BUS_IDLE;
				delay_cli(32768u);
			}
		}
		
		PORTC = BUS_IDLE;
		delay_cli(32768u);
		delay_cli(32768u);
		delay_cli(32768u);
		delay_cli(32768u);
	}
	
	return;
}
