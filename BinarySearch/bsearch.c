#include "bsearch.h"
// #include<math.h>
/* headers below included for debugging purposes */
#include <stdio.h>

int bsearch (int inputarray[], int size, int searchtarget )
{

   int low = 0;
   int high = size - 1;

   while (low != high)
   {
      int mid = (high - low)/2;

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

int main()
{
   int inputarray[] = {1,2,3,4,5,6,7,8,9,10};

   int arraysize = sizeof(inputarray)/sizeof(int);

   /*bsearch(inputarray, arraysize, 3);*/
   
   printf("The returned value is: %d\n", bsearch(inputarray, arraysize, 3));
   return 0;
}


