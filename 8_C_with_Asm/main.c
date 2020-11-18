#include <stdio.h>
#include <stdlib.h>

int main()
{
    char message1[10] = " is type1";
    char message2[10] = " is type2";
    printf(message1);
    printf(message2);
    initial();

    return 0;
}

void initial()
{

    //printf("%d",elementCount[2]);

    l0();

}

void l0()
{
    int elementCount[4];
    elementCount[0] = 1;
    elementCount[1] = 2;
    elementCount[2] = 3;
    elementCount[3] = 4;

    int i = 0;
    for (i=0;i<4;i++) {
        printf("%d",elementCount[i]);
    }

}
