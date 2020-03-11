package dto;

import java.sql.Connection;
import java.sql.SQLException;

import dao.CosmeticDAO;
import dto.Cosmetic;
import jdbc.ConnectionProvider;

public class Board {
	
	private int Bno;
	private String context;
	private String id;
	private String type;
	private int Dno;
	private String name;
	
	public Board() {
		this(0,null,null,null,0,null);
	}
	
	public Board(int Bno,String context,String id,String type,int Dno,String name) {
		super();
		this.Bno=Bno;
		this.context=context;
		this.id=id;
		this.type = type;
		this.Dno = Dno;
		this.name=name;
	}

	public int getBno() {
		return Bno;
	}

	public void setBno(int bno) {
		Bno = bno;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getDno() {
		return Dno;
	}

	public void setDno(int dno) {
		Dno = dno;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String toString() {
		return this.context;
	}

	
	
	

}
