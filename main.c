#include<stdio.h>
#include<stdlib.h>
#include<time.h>


extern void _reverse(int *a, int *b);


int main()
{
    int i, n=10,m;
    int mas[n];
    printf("_____________________________________________\n");
    printf("Enter the number of shift positions: ");
    scanf("%d", &m);

    srand(time(0));
    printf("The generated array:\n");
    for (i = 0; i < n; i++) {
        mas[i] = rand() % 20; // диапазон случайных чисед от 0 до 100
        printf("%d ", mas[i]);
    }
    putchar('\n');
    
    _reverse(mas,mas+m-1);
    _reverse(&mas[m],mas+n-1);
    _reverse(mas,mas+n-1);
  
   printf("The new array:\n");
   for(i = 0; i < 10; i++)
      printf("%d ", mas[i]);

    putchar('\n');
	printf("_____________________________________________\n");
	putchar('\n');
   return 0;
}