package com.marakana.contacts.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Contact {
	@Id
	@GeneratedValue
	private Long id;
	@Column
	private String name;
	@Column
	private Long addressId;

	public Contact() {
		super();
	}

	public Contact(String name, Long addressId) {
		super();
		this.name = name;
		this.addressId = addressId;
	}

	public Contact(Long id, String name, Long addressId) {
		super();
		this.id = id;
		this.name = name;
		this.addressId = addressId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getAddressId() {
		return addressId;
	}

	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}

	@Override
	public String toString() {
		return "Contact [id=" + id + ", name=" + name + ", addressId="
				+ addressId + "]";
	}

}
