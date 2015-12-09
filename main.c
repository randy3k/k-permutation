#include <stdio.h>
#include "k-permutation.h"

int main(void)
{
    unsigned int a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    const int n = sizeof(a)/sizeof(a[0]);
    const int k = 6;

    do {
         for (int i=0; i<k; i++){
            printf("%d ", a[i]);
         }
        putchar('\n');
    } while (AInext_k_permutation(a, n, k));

    return 0;
}
