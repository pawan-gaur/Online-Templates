package com.busbooking.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="agentregistration")
public class AgentRegistration implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private String organization;
	private String phone;
	private String city;
	private String state;
	private String message;
	
	public AgentRegistration(){
		
	}
	
	public AgentRegistration(String name, String email, String organization, String phone, String city, String state,
			String message) {
		super();
		this.name = name;
		this.email = email;
		this.organization = organization;
		this.phone = phone;
		this.city = city;
		this.state = state;
		this.message = message;
	}

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

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "AgentRegistration [id=" + id + ", name=" + name + ", email=" + email + ", organization=" + organization
				+ ", phone=" + phone + ", city=" + city + ", state=" + state + ", message=" + message + "]";
	}
	
}
