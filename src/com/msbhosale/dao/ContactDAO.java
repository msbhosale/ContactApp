package com.msbhosale.dao;

import java.util.List;

import com.msbhosale.bean.Contact;

public interface ContactDAO {

	void save(Contact contact);
	
	void update(Contact contact);
	
	void delete(int id);
	
	Contact getById(int id);
	
	List<Contact> getAll();
}