package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;

import model.Reserva;

public class ReservaDAO {
	
	
	public static void getReserves() throws SQLException {
		Connection connection = null;
		PreparedStatement prep = null;
		ResultSet rs = null;
		
		try {
			connection = Connexio.getConnexio();
			prep = connection.prepareStatement("SELECT * FROM reserves");
			rs = prep.executeQuery();
			while(rs.next()) {
				
			}
		}finally {
			connection.close();
			prep.close();
			rs.close();
		}
	}
	
	
	public static void setReserves(Reserva reserva) throws SQLException {
		Connection connection = null;
		PreparedStatement prep = null;
		String consulta = "INSERT INTO reserves VALUES (?,?,?,?,?,?,?)";
		
		try {
			connection = Connexio.getConnexio();
			prep = connection.prepareStatement(consulta);
			//possem els valor corresponents
			prep.setString(1,reserva.getDesti());
			prep.setInt(2, reserva.getPreu());
			prep.setString(3, reserva.getNom());
			prep.setString(4, reserva.getTelf());
			prep.setInt(5, reserva.getPersones());
			prep.setBoolean(6, reserva.isDescompte());
			prep.setDate(7, (Date) reserva.getData());
			prep.executeUpdate();
		} finally {
			connection.close();
			prep.close();
		}
	}
	
	public static void DeleteReserves(int id) throws SQLException {
		Connection connection= Connexio.getConnexio();
		PreparedStatement prep = null;
		String consulta = "DELETE FROM reserves WHERE id = ?";
		
		try {
			connection = Connexio.getConnexio();
			prep = connection.prepareStatement(consulta);
			//possem els valors corresponents
			prep.setInt(1, id);
			prep.executeUpdate();
		} finally {
			connection.close();
			prep.close();
		}
	}
}
