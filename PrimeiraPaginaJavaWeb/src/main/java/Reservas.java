
public class Reservas {
	private String dia_entrada,dia_saida,quantidade_pessoas;
	private int id_user;
	public Reservas() {
		super();
	}

	public Reservas(int id_user,String dia_entrada,  String dia_saida,String quantidade_pessoas) {
		super();
		this.dia_entrada = dia_entrada;
		this.dia_saida = dia_saida;
		this.quantidade_pessoas = quantidade_pessoas;
		this.id_user = id_user;
	}

	public String getDia_entrada() {
		return dia_entrada;
	}

	public void setDia_entrada(String dia_entrada) {
		this.dia_entrada = dia_entrada;
	}

	public String getDia_saida() {
		return dia_saida;
	}

	public void setDia_saida(String dia_saida) {
		this.dia_saida = dia_saida;
	}

	public String getQuantidade_pessoas() {
		return quantidade_pessoas;
	}

	public void setQuantidade_pessoas(String quantidade_pessoas) {
		this.quantidade_pessoas = quantidade_pessoas;
	}
	
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
}
