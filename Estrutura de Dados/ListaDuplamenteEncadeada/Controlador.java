package Ifpi;

public class Controlador {
	Aluno[] vetor = new Aluno[20];
	int pos = 0;
	
	void inserir(){
		Aluno novo = new Aluno();
		novo.codigo = 1;
		novo.nome = "Jesse";
		novo.nota1 = 8;
		novo.nota2 = 9;
		vetor[0] = novo;
		novo = new Aluno();
		novo.codigo = 2;
		novo.nome = "Vitoria";
		novo.nota1 = 5;
		novo.nota2 = 7;
		vetor[1] = novo;
		novo = new Aluno();
		novo.codigo = 3;
		novo.nome = "Breno";
		novo.nota1 = 8;
		novo.nota2 = 9;
		vetor[2] = novo;
		pos = 3; 
	}
	
	void media() {
		double mediaAluno = 0;
		double mediaGeral = 0;
		int qte = 0;
		for (int i=0; i<pos; i++) {
			mediaAluno = (vetor[i].nota1 + vetor[i].nota2)/2;
			mediaGeral = mediaGeral + mediaAluno;
			qte++;
			System.out.println(vetor[i].nome +" - média: "+mediaAluno);
		}
		System.out.println("Media geral: "+mediaGeral/qte);
	}
	

}
