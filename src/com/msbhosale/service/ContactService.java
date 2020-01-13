package com.msbhosale.service;

import java.util.ArrayList;
import java.util.List;

import com.msbhosale.bean.Contact;
import com.msbhosale.dao.ContactDAO;

public class ContactService implements ContactDAO {

	private static List<Contact> contactList = new ArrayList<Contact>();

	static {

		contactList.add(new Contact(101, "Amit", "Jadhav", "123456", "amitjadhav@gmail.com"));
		contactList.add(new Contact(102, "Ajay", "Patil", "121212", "ajaypatil@gmail.com"));
		contactList.add(new Contact(103, "Samir", "Shaikh", "123321", "samirshaikh@gmail.com"));
		contactList.add(new Contact(104, "Lalit", "Dev", "147852", "lalitdev@gmail.com"));
		contactList.add(new Contact(105, "Pooja", "Bhosale", "159623", "poojabhosale@gmail.com"));
	}

	@Override
	public void save(Contact contact) {

	}

	@Override
	public void update(Contact contact) {

	}

	@Override
	public void delete(int id) {

	}

	@Override
	public Contact getById(int id) {

		Contact contact = contactList.get((id%10) - 1);
		
		return contact;
	}

	@Override
	public List<Contact> getAll() {

		return contactList;
	}

}