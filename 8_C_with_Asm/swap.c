#include <stdio.h>
//#include <stdlib.h>

int main()
{
    int a = 44, b = 55;
    printf("First number is %d and second is %d \n", a, b);
    swap(&a, &b);
    printf("First number after swap is %d and second is %d", a, b);
    return 0;
}

//Swap function using simple pointers
void swap(int *x, int *y)
{
    int temp;
    temp = *x;
    *x = *y;
    *y = temp;
}
