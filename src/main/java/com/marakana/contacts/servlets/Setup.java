package com.marakana.contacts.servlets;

import java.sql.SQLException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.marakana.contacts.repositories.AddressRepository;
import com.marakana.contacts.repositories.ContactRepository;

@WebListener
public class Setup implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {

	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {

		try {
			new AddressRepository().init();
	/*		new AddressRepository().create(new Address("150 abc mw", "colombo",
					"western", "123456"));
	*/		new ContactRepository().init();
			/* new ContactRepository().create(new Contact("contactname", 0L)); */
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
