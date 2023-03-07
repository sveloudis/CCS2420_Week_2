mtype = { P, C };
mtype turn = P;

/* Note that each process prints its output in a tab-separated column: the 1st process launched prints its output in the 1st column, the second in the 2nd column, etc.  */

active proctype producer() {
	do
	:: (turn == P) -> printf("Produce\n"); turn = C
	od
}

active proctype consumer() {
	do
	:: (turn == C) -> printf("Consume\n"); turn = P
	od
}
