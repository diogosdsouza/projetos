#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

typedef struct {
	int dia;
	int mes;
	int ano;
}data_nascimento;

struct aluno {
	int cod;
	char nome[200];
	data_nascimento dt_nascimento;   //struct aninhada
};

struct aluno aluno[2];
int i=0;

int main(){
	
	for (i=0;i<2;i++){
		printf("Insira os dados do aluno %d\n", i);
	
		printf("codigo: ");
		scanf("%d", &aluno[i].cod);
	
		printf("nome: ");
		scanf("%s", &aluno[i].nome);
	
		printf("dia do aniversario: ");
		scanf("%d", &aluno[i].dt_nascimento.dia);    //para acessar a struct aninhada
	
		printf("mes do aniversario: ");
		scanf("%d", &aluno[i].dt_nascimento.mes);
	
		printf("ano do aniversario: ");
		scanf("%d", &aluno[i].dt_nascimento.ano);
	
	};
	
	for (i=0;i<2;i++){
		printf("\nAluno %d\n", i);
		
		printf("\n O codigo do aluno e: %d\n", aluno[i].cod);
	
		printf("\n Voce se chama %s\n", aluno[i].nome);   //%s para o char[200]
	
		printf("\n data de aniversario: %d/%d/%d\n", aluno[i].dt_nascimento.dia, aluno[i].dt_nascimento.mes, aluno[i].dt_nascimento.ano);
	};
	
};
