#include<stdio.h>
int main()
{
 int a = 0;
 int b = 0;
 int state = 0;
 printf("enter state of b\n");
 scanf("%d", &b);
 switch (b) {
 case (0): if (b) state = 0; else state = 1; break;
 case (1): state = 2; break;
 case (2): if (b==2) state = 3; else state = 4; break;
 default: state = 5;
 }
 printf("state is %d", state);
 printf("\n b is %d", b);
 return 0;
}
