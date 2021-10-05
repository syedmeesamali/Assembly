#include<stdio.h>
//Structures for creating the rectangle creation program
typedef struct point {
	int x;
	int y;
} point;

typedef struct rect {
	point ll;
	point ur;
	int color;
} rect;


//This create function will use the above mentioned structs
void createRect(int x1, int y1, int wid, int ht, int color, rect *r)
{
	r -> ll.x = x1;
	r -> ll.y = y1;
	r -> ur.x = x1 + wid;
	r -> ur.y = y1 + ht;
	r -> color =  color;
}

int main(void)
{
	int i;
	rect r1;
	printf("\n Check for the memory functions: \n");
	createRect(3, 5, 10, 20, 1, &r1);
	return 0;
}
