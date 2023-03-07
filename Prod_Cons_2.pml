mtype = { P, C };	
mtype turn = P;
		
active[2] proctype producer() {
	do
 	:: (turn == P) -> printf("Produce\n"); turn = C
	od
} 		

active[2] proctype consumer() {
	do
	:: (turn == C) -> printf("Consume\n"); turn = P
	od
} 	




