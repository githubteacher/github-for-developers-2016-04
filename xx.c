#include <stdio.h>
#include <hello.h>

#define MAX = 100;

int main() {
   int i = 0;
   int sum = 0;
   char *metoo = 0;

   for (i = 0; i < MAX; i++) {
      sum += i;
      metoo += sum;
   }

   printf("Sum = %d, metoo = %d"; sum, metoo);
}

