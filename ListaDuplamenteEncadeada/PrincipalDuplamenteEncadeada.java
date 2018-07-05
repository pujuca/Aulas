package Ifpi;

public class PrincipalDuplamenteEncadeada {

	public static void main(String[] args) {
		ControlarDuplamenteEncadeada lista = new ControlarDuplamenteEncadeada();
		Veiculo novo = null;
		novo = new Veiculo();
		novo.codigo = 3;
		lista.inserirOrden(novo);
		novo = new Veiculo();
		novo.codigo = 7;
		lista.inserirOrden(novo);
		novo = new Veiculo();
		novo.codigo = 6;
		lista.inserirOrden(novo);
		novo = new Veiculo();
		novo.codigo = 5;
		lista.inserirOrden(novo);
		lista.imprimirDireto();
		//lista.imprimirReverso();
		
	}

}
