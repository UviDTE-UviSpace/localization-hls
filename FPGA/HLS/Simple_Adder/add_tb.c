#include <stdio.h>
#include "add_ex.h"

void main()
{
	int i;
	int result;
	int rand_a, rand_b;
	int tb_result;

	for(i=0;i<10;i++){
		rand_a = rand();
		rand_b = rand();
		tb_result = rand_a + rand_b;
		result = add_ex(rand_a, rand_b);
		if (tb_result != result ){
			printf("mismatch %d %d \n",tb_result, result);
		}
		else{
			printf("Success %d %d \n",tb_result, result);
		}
	}
	printf("simulation complete\n");

}