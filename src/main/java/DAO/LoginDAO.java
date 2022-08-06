package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import conexiones.ConexionDB;




public class LoginDAO {

	public Integer Login(Integer dni, String contrasenia) {
		Integer id = null; 
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();

			Statement statement = connection.createStatement();
			

			String sql = new String();

			sql = "SELECT id from usuario where dni=" + dni + " and " + "password='" + contrasenia + "';";

			ResultSet resultSet = statement.executeQuery(sql);
			
			if (resultSet.next()) {
				id = resultSet.getInt("id");;
			}
		

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
			return id;
	}
	
}