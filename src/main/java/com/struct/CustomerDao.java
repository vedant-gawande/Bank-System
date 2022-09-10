package com.struct;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.struct.Registerpage;

@Component
public class CustomerDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	// inserting the data
	@Transactional //for making transaction with database like insert, delete, update
	public int insert(Registerpage register) {
	// insert
	int i = (Integer) this.hibernateTemplate.save(register);
	return i;
	}
	// get the single data(object)
	public Registerpage getRegisterpage(int registerId) {
	Registerpage register = this.hibernateTemplate.get(Registerpage.class, registerId);
	return register;
	}
	// get all registers(all rows)
	public List<Registerpage> getAllRegisterpages() {
	List<Registerpage> registers = this.hibernateTemplate.loadAll(Registerpage.class);
	return registers;
	}
	// deleting the data
	@Transactional //for making transaction with database like insert, delete, update
	public void deleteRegisterpage(int registerId) {
	Registerpage register = this.hibernateTemplate.get(Registerpage.class, registerId);
	this.hibernateTemplate.delete(register);
	}
	// updating data...
	@Transactional //for making transaction with database like insert, delete, update
	public boolean updateRegisterpage(Registerpage register) {
	this.hibernateTemplate.update(register);
	return true;
	}
	public HibernateTemplate getHibernateTemplate() {
	return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
	this.hibernateTemplate = hibernateTemplate;
	}
	
}
