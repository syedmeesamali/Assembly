#include<stdio.h>
int main(void)
{
	char age = 30;
	char *p;		//Pointer to age
	p = &age;
	printf("\n Age = %d \n", age);
	printf("\n p = %p \n", p);
	printf("\n *p = %d \n", *p);
	printf("\n sizeof(age)  = %ld \n", sizeof(age));
	printf("\n sizeof(p)  = %ld \n", sizeof(p));
	*p = 40;
	printf("\n *p  = %d \n", *p);
	printf("\n age  = %d \n", age);
	return 0;
}
