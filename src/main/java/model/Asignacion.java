package model;

public class Asignacion {
	
	private Integer id_U;
	private Integer id_T;
	private String usu_ape;
	private String usu_nom;
	private String turn_esp;
	private String turn_hora;
	private Integer turn_consul;
	
	public Asignacion(Integer id_U, Integer id_T, String usu_ape,String usu_nom, String turn_esp, String turn_hora,Integer turn_consul) {
		super();
		this.id_U = id_U;
		this.id_T = id_T;
		this.usu_ape = usu_ape;
		this.usu_nom = usu_nom;
		this.turn_esp = turn_esp;
		this.turn_hora = turn_hora;
		this.turn_consul = turn_consul;
	}

	public Integer getId_U() {
		return id_U;
	}

	public void setId_U(Integer id_U) {
		this.id_U = id_U;
	}

	public Integer getId_T() {
		return id_T;
	}

	public void setId_T(Integer id_T) {
		this.id_T = id_T;
	}

	public String getUsu_ape() {
		return usu_ape;
	}

	public void setUsu_ape(String usu_ape) {
		this.usu_ape = usu_ape;
	}

	public String getUsu_nom() {
		return usu_nom;
	}

	public void setUsu_nom(String usu_nom) {
		this.usu_nom = usu_nom;
	}

	public String getTurn_esp() {
		return turn_esp;
	}

	public void setTurn_esp(String turn_esp) {
		this.turn_esp = turn_esp;
	}

	public String getTurn_hora() {
		return turn_hora;
	}

	public void setTurn_hora(String turn_hora) {
		this.turn_hora = turn_hora;
	}

	public Integer getTurn_consul() {
		return turn_consul;
	}

	public void setTurn_consul(Integer turn_consul) {
		this.turn_consul = turn_consul;
	}
	
	
	
	
}