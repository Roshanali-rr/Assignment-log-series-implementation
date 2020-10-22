     area     appcode, CODE, READONLY
     export __main
	 ENTRY 
__main  function		 
       VLDR.F32   s1, = 5
       VLDR.F32   s2, = 5   
       VLDR.F32   S4, = -1
	   VLDR.F32   S11, = -1
     	          

	MOV R3,#64;
	MOV R5,#5;
	MOV R6,#0
	
LOOP CMP R3,R6
	BGE LOOP1
	B stop
	
LOOP1 VABS.F32 S7, S1;
	  VMUL.F32 S5,S5,S2;
	  ADD R6,R6,#1;
	  VDIV.F32 s8,s5,s6;
	  VMUL.F32 S9,S8,S4;
	  VADD.F32	s1,s7,s9;
	  VMUL.F32 S4,s4,s11;
	  B stop
	  
stop B stop 
   ENDFUNC
   END
