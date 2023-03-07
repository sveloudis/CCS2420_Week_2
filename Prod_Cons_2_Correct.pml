mtype = { P, C, N };	
mtype turn = P;
int msgs;
		
inline request(x, y, z) {
	atomic { x==y -> x=z}
} 		

inline release(x, y) {
	x=y
} 

active[2] proctype producer() {
	do
 	:: request(turn, P, N) -> printf("P%d\n", _pid); msgs++; release(turn, C) 	
	od
}

active[2] proctype consumer() {
	do
 	:: request(turn, C, N) -> printf("C%d\n", _pid); msgs--; release(turn, P) 	
	od
}

ltl p { [](msgs >= 0 && msgs <= 1) }
