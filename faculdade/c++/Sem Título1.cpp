#include <stdio.h>
#include <stdlib.h>
int main(){

int num=0;
printf ("Digite um numero: ");
scanf ("%d",&num);

while(num != 0) {
	printf ("O numero digitado foi: %d\n\n",num);
	printf ("Digite um numero: ");
	scanf ("%d",&num);
}
}