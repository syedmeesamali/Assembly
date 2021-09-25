#include<stdio.h>
#define MAXLEN 80
int strlen2(char str[])
{
 int len=0;
 while(str[len] && len < MAXLEN) len++;
 return len;
}

void strcpy2(char dest[], char src[])
{
 int i =0;
 do {
 dest[i] = src[i];
 } while (src[i++] && i < MAXLEN);
}

void main(void)
{
 char name[80];
 int len;
 char c;
 strcpy2(name, "meesam");
 len = strlen2(name);
 c = name[2];
 printf("\n Name is %s", name);
 printf("\n Char c is %c", c);
 printf("\n Length of name is %i", len);
 printf("\n");
}
