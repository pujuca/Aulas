package Ifpi;

public class ControlarDuplamenteEncadeada{
	
	Veiculo inicio = null;
	Veiculo fim = null;	
	
	void inserirDesordenado(Veiculo novo) {
		if (inicio == null) {
			inicio = novo;
			fim = novo;
			inicio.esquerda = null;
			fim.direita = null;
		} else {
			fim.direita = novo;
			novo.esquerda = fim;
			novo.direita = null;
			fim = novo;
		}		
	}
	
	void inserirOrden(Veiculo novo) {
		if (inicio == null) {
			inicio = novo;
			fim = novo;
			inicio.esquerda = null;
			fim.direita = null;			
		} else { // no inicio
			if (inicio.codigo > novo.codigo) {
				inicio.esquerda = novo;
				novo.direita = inicio;
				novo.esquerda = null;
				inicio = novo; // fim
			} else if (fim.codigo < novo.codigo) {
				fim.direita = novo;
				novo.esquerda = fim;
				novo.direita = null;
				fim = novo;				
			} else { //meio
				Veiculo aux = null;
				aux = inicio;
				while(aux.codigo < novo.codigo) {
					aux = aux.direita;
				}
				Veiculo anterior = null;
				anterior = aux.esquerda;
				anterior.direita = novo;
				novo.esquerda = anterior;
				novo.direita = aux;
				aux.esquerda = novo;
			}			
		}
	}
	void imprimirDireto() {
		Veiculo aux = null;
		aux = inicio;
		while (aux != null) {
			System.out.println(aux.codigo);
			aux = aux.direita;
		}
	}
	
	void imprimirReverso() {
		Veiculo aux = null;
		aux = fim;
		while (aux != null) {
			System.out.println(aux.codigo);
			aux = aux.esquerda;
		}
	}

}







