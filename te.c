#include "stdio.h"
#include "stdlib.h"

struct arvore {
	int informacao;
	struct arvore* esquerda;
	struct arvore* direita;	
};

typedef struct arvore Arvore;

Arvore * criar(){
	return NULL;
}

Arvore* adicionar(int novaInformacao, Arvore * esquerda, Arvore * direita){
	Arvore * auxiliar = (Arvore*) malloc(sizeof(Arvore));
	auxiliar -> informacao = novaInformacao;
	auxiliar -> esquerda = esquerda;
	auxiliar -> direita = direita;

	return auxiliar;
}

void show(Arvore* arvore){
	if (arvore != NULL){
		printf("%d\n", arvore -> informacao);
		show(arvore -> esquerda);
		show(arvore -> direita);
	}
}

Arvore* add_pesquisa(Arvore* n, int novaInformacao){
	if(n == NULL){
		n = (Arvore*) malloc(sizeof(Arvore));
		n -> informacao = novaInformacao;
		n -> direita = NULL;
		n -> esquerda = NULL;
	}

	if( n -> informacao > novaInformacao){
		n -> direita = add_pesquisa(n -> direita,novaInformacao);
	} else{
		n -> esquerda = add_pesquisa(n -> esquerda,novaInformacao);
	}

	return n;
}

int buscar(Arvore * n, int valor){
	if(n != NULL){
		if(n -> informacao == valor){
			return 1;
		}else if(n -> informacao > valor) {
			return 0 || buscar(n -> esquerda, valor);
		} else{
			return 0 ||buscar(n -> direita, valor);
		}
	}
	return 0;
}

void liberar(Arvore* arvore){
	if (arvore != NULL){
		liberar(arvore -> esquerda);
		liberar(arvore -> direita);
		free(arvore);
	}
}

int main(){
	Arvore* primeiroNo = criar();
	Arvore* segundoNo = criar();

	Arvore* raiz = adicionar (8,primeiroNo,segundoNo);

	Arvore * arvore10 = adicionar(10,NULL,NULL);

	Arvore* raiz = adicionar (8,arvore10,segundoNo);

	show(raiz);

// Arvore de pesquisa
	Arvore *pesquisa;
	pesquisa = criar();

	pesquisa = add_pesquisa(pesquisa,4);
	pesquisa = add_pesquisa(pesquisa,6);



	return 0;
}