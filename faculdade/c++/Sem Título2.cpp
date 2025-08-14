#include<stdio.h>
#include<stdlib.h>

int main(){
	int cont = 1;
	int maior=0;
	int num;
	while(cont<=15){
		printf ("Digite um numero: ");
		scanf ("%d",&num);
		if (num>maior){
			maior=num;
		}
		cont++;
	}
	printf ("\nO maior numero e: %d",maior);
}
