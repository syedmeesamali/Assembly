#include<stdio.h>
//Structures for creating the rectangle creation program
typedef struct person {
	char name[80];
	float height;
	int age;
} person;


int main(void)
{
	person p1, p2;
	person *pptr;
	pptr = &p2;
	p1.name = "ali";
	p2.name = "meesam";
	p2.height = 5.5;
	p2.age = 35;
	printf("\n Person-1 name is: %s\n", p1.name);
	printf("\n Person-2 name is: %s\n", *pptr.name);
	return 0;
}
