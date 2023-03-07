/* Manually activating (launching) processes via the 'run' command  */
proctype main()	{
	printf("Hello World\n")
}

/* Note 1: manual activation may be performed through any process, 
   and not necessarily through init */

/* Note 2: when present, init is always the first process to be launched;
   init cannot be launched manually */
init {
	run main()
}

