#include<stdio.h>
#include<conio.h>

int main(){
	int x = 10;
	int * end_x; //criando o ponteiro
	
	end_x = &x;  //relacionando o poteiro a variável
	
	printf("Utilizando o ponteiro\n\n");
	printf("Conteudo da variavel: %d\n\n", x);
	printf("Endereco da variavel: %x\n\n", end_x);
	printf("Conteudo no ponteiro: %x\n\n", *end_x);
}
