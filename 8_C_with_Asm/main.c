#include <stdio.h>
#include <stdlib.h>

char message1[10] = " is Even!";
char message2[10] = " is Odd!";

int main()
{
    initial();
    return 0;
}

void initial()
{
    int nums[4] = {1, 3, 4, 8};
    int count = 0;
    for (count=0; count < 4; count++)
    {
        if (nums[count] % 2 == 0)
        {
            call_even(nums[count]);
        } else
        {
            call_odd(nums[count]);
        }
    }
}

void call_even(int x)
{
    printf("%d %s \n", x, message1);
}

void call_odd(int x)
{
    printf("%d %s \n", x, message2);
}
