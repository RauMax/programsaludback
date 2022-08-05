package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexiones.ConexionDB;
import model.Turnos;

public class TurnosDAO {
	
	public List<model.Turnos> Turnos() {

		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();
			

			String sql = new String();

			sql = "SELECT * from turnos;";

			ResultSet resultSet = statement.executeQuery(sql);
			System.out.println(resultSet);
			
			List<Turnos> TurnoAsignado = new ArrayList<Turnos>();
			while (resultSet.next()) {
				Turnos usu = new Turnos(
						resultSet.getString("Especialidad"),
						resultSet.getString("Nom_prof"),
						resultSet.getString("fecha"),
						resultSet.getString("hora"),
						resultSet.getString("hora"),
						resultSet.getInt("id"));
			
				
				TurnoAsignado.add(usu);
			}
			
			return TurnoAsignado;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}
}
