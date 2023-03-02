/// @file bsearch.c
#include "bsearch.h"
/* headers below included for debugging purposes */
#include <stdio.h>

/**
 * Finds the specified target in the array.
 * Algorithm: Binary Search
 * @param[in] inputarray
*/
int bsearch (int inputarray[], int size, int searchtarget )
{

   int low = 0;
   int high = size - 1;
   int mid;

   while (low != high)
   {
      mid = (high + low)/2;

      if (inputarray[mid] == searchtarget)
      {
         return mid;
      } else if (searchtarget > inputarray[mid])
         {
            low = mid + 1;
         } else 
         {
            high = mid -1;
         }
   }


   return -1;
}


/*
int main()
{
   int inputarray[] = {1,2,3,4,5,6,7,8,9,10};

   int arraysize = sizeof(inputarray)/sizeof(int);
   
   printf("The returned value is: %d\n", bsearch(inputarray, arraysize, 3));
   printf("The returned value is: %d\n", bsearch(inputarray, arraysize, 7));
   printf("The returned value is: %d\n", bsearch(inputarray, arraysize, 10));
   printf("The returned value is: %d\n", bsearch(inputarray, arraysize, 0));
   printf("The returned value is: %d\n", bsearch(inputarray, arraysize, 5));
   printf("The returned value is: %d\n", bsearch(inputarray, arraysize, 334654));

   int x,y;
   x = 5;
   y = 3;
   bubswap(&x, &y);
   printf("x = %d and y = %d\n", x, y);

   return 0;
}
*/

