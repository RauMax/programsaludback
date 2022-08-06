package DAO;

import java.sql.Connection;
import java.sql.Statement;

import conexiones.ConexionDB;
import model.Asignacion;


public class AsignacionDAO {
	
	public void AsignarTurno(Asignacion asignacion) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();

			sql = "INSERT INTO asignacion(Id_U, Id_T,Usu_ape, Usu_nom,Turn_esp, Turn_hora,Turn_consul) "
					+ "VALUES ( " + "'" + asignacion.getId_U() + "'," + "'" + asignacion.getId_T() + "'," + "'"
					+ asignacion.getUsu_ape() + "'," + "'" + asignacion.getUsu_nom() + "'," + "'" + asignacion.getTurn_esp() + "',"
					+ "'" + asignacion.getTurn_hora() + "'," + "'" + asignacion.getTurn_consul() + "'," + "');";

			statement.executeUpdate(sql);


		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
