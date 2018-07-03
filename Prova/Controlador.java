package Prova;

public class Controlador {
	Gasolina[] precos = new Gasolina[20];
	int pos = 0;
	double media;
	
	// salvar as coletas de precos
	void salvar(Gasolina coleta) {
		precos[pos] = coleta;
		pos++;
	}
	
	//Preço médio 
	void precoMedio() {
		double soma = 0.0; 
		int qte = 0;
		for (int i =0; i < pos; i++) {
			soma = soma + precos[i].valor;
			qte++;
		}
		media = soma/qte;
		System.out.println("A media e: "+media);
	}
	
	void imprimir() {
		for (int i = 0; i < pos; i++) {
			System.out.print("Posto: "+precos[i].nomePosto);
			if (precos[i].valor <= media)
				System.out.print(", Abaixo do preco medio\n");
			else
				System.out.print(", Acima do preco medio\n");
		}
		
	}
	
	void menorMaior() {
		double menor = 10000; 
		double maior = 0;
		
		for (int i = 0; i < pos; i++) {
			// maior
			if (precos[i].valor > maior)
				maior = precos[i].valor;
			// menor
			if (precos[i].valor < menor)
				menor = precos[i].valor;		
		}
		System.out.println("Menor e: "+menor);
		System.out.println("Maior e: "+maior);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
