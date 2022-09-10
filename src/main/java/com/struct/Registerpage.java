package com.struct;

import javax.persistence.*;

import org.springframework.stereotype.Component;

@Entity//tells container a class can be map to a table
@Table(name="clogin") // name of database table to be used for mapping
@Component //create object automatically
public class Registerpage {
	
	@Id
	private int id;
	private String name ;
	private String email;
	private int op;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getOp() {
		return op;
	}
	public void setOp(int op) {
		this.op = op;
	}
	public Registerpage(int id, String name, String email, int op) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.op = op;
	}
	public Registerpage() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
