mtype = { P, C };	
mtype turn = P;
int msgs;
		
active[2] proctype producer() {
	do
 	:: (turn == P) -> atomic{printf("Produce\n") -> msgs++}; turn = C
	od
} 		

active[2] proctype consumer() {
	do
	:: (turn == C) -> atomic{printf("Consume\n") -> msgs--}; turn = P
	od
} 		

active proctype monitor() {

	atomic { !(msgs >= 0 && msgs <= 1) -> assert(false) }
}
