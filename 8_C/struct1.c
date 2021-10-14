#include<stdio.h>
//Structures for creating the rectangle creation program
typedef struct person {
	char name[80];
	float height;
	int age;
} person;


int main(void)
{
	person p1 = {"meesam", 5.5, 35};
	person p2;
	person *pptr;
	pptr = &p2;
	printf("\n Person-1 name is: %s\n", p1.name);
	printf("\n Person-2 name is: %s\n", (p2.name));
	return 0;
}
