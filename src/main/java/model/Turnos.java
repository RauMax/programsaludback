package model;

public class Turnos {
	
	private Integer id;
	private String especialidad;
	private String nom_prof;
	private String fecha;
	private String hora;
	private String comentario;
	private Integer consultorio;
	
	public Turnos(String especialidad, String nom_prof, String fecha,String hora, String comentario, Integer consultorio) {
		super();
		this.especialidad = especialidad;
		this.nom_prof = nom_prof;
		this.fecha = fecha;
		this.hora = hora;
		this.comentario = comentario;
		this.consultorio = consultorio;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEspecialidad() {
		return especialidad;
	}
	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}
	public String getNom_prof() {
		return nom_prof;
	}
	public void setNom_prof(String nom_prof) {
		this.nom_prof = nom_prof;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	public Integer getConsultorio() {
		return consultorio;
	}
	public void setConsultorio(Integer consultorio) {
		this.consultorio = consultorio;
	}
	
	
}
