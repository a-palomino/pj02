package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class Reserva {
	
	private String desti;
	private int preu;
	private String nom;
	private String telf;
	private int persones;
	private boolean descompte;
	private Date data;
	
	//Constructor
	public Reserva(ResultSet rs) throws SQLException, ParseException
	{
		setDesti(rs.getString("desti"));
		setPreu(rs.getInt("preu"));
		setNom(rs.getString("nom"));
		setTelf(rs.getString("telf"));
		setPersones(rs.getInt("persones"));
		setDescompte(rs.getBoolean("descompte"));
		setData(rs.getString("data"));
	}

	public Reserva(HttpServletRequest request)throws SQLException, ParseException{
		setDesti(request.getParameter("desti"));
		setPreu(Integer.parseInt(request.getParameter("preu")));
		setNom(request.getParameter("nom"));
		setTelf(request.getParameter("telf"));
		setPersones(Integer.parseInt(request.getParameter("persones")));
		setDescompte(Boolean.parseBoolean(request.getParameter("descompte")));
		setData(request.getParameter("data"));
	}
	//Getters i Setters
	public String getDesti() {
		return desti;
	}

	public void setDesti(String desti) {
		this.desti = desti;
	}

	public int getPreu() {
		return preu;
	}

	public void setPreu(int preu) {
		this.preu = preu;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getTelf() {
		return telf;
	}

	public void setTelf(String telf) {
		this.telf = telf;
	}

	public int getPersones() {
		return persones;
	}

	public void setPersones(int persones) {
		this.persones = persones;
	}

	public boolean isDescompte() {
		return descompte;
	}

	public void setDescompte(boolean descompte) {
		this.descompte = descompte;
	}

	public Date getData() {
		return data;
	}

	public void setData(String data) throws ParseException {
		Date dataDef =new SimpleDateFormat("yyyy-mm-dd").parse(data);
		this.data = dataDef;
	}
	
	
	
}
