#include<stdio.h>
#include<string.h>

typedef struct point {
	int x;
	int y;
} point;


void main(void)
{
  	char name[80];
	int len;
	char c;
	strcpy(name, "meesam");
	point p1;
	p1.x = 42; p1.y = 50;
	len = strlen(name);
	c = name[2];
	printf("len is %d and 3rd char is %c\n", len, c);
	printf("For point p1 x val is %d and y val is %d\n", p1.x, p1.y);
}
