#include <stdio.h>
#include <stdlib.h>

struct aluno{   //criar struct
	int n_mat;
	float nota[3];
	float media;
};

int main(){
	struct aluno Felipe; //declara o struct
	
	Felipe.n_mat = 11148;
	
	printf("Matricula numero: %d\n", Felipe.n_mat);
	
	printf("Nota 1: ");
	scanf("%f", &Felipe.nota[0]);
	
	printf("Nota 2: ");
	scanf("%f", &Felipe.nota[1]);
	
	printf("Nota 3: ");
	scanf("%f", &Felipe.nota[2]);
	
	Felipe.media = (Felipe.nota[0] + Felipe.nota[1] + Felipe.nota[2])/3;
	
	printf("Media = %.2f\n", Felipe.media);
}
