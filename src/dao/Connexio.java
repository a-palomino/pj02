package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Connexio {

	//Creem els atributs necessaris
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost/projecte02";
	private static String usuari = "root";
	private static String contrasenya = "";
	private static Connection con = null;
	private static Connexio connexio = null;
	
	

	private Connexio() throws SQLException {
		try {
			Class.forName(driver); 
			//connexió a la BDD
			con = (Connection) DriverManager.getConnection(url,usuari,contrasenya);
			
		}catch(ClassNotFoundException | SQLException e) {
			System.err.println("ERROR" + e);
		}
	}
	
	public static Connection getConnexio() throws SQLException {
		if(connexio == null) {
			connexio = new Connexio();
		}else if(con.isClosed()) {
			connexio = new Connexio();
		}
		return con;
	}
}
