package com.busbooking.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name = "writeus")
public class WriteUs implements Serializable {

	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String email;
	private String mobile;
	private String issue;
	private String description;

	public WriteUs() {

	}

	public WriteUs(String name, String email, String mobile, String issue, String description) {
		super();
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.issue = issue;
		this.description = description;
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

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "WriteUs [id=" + id + ", name=" + name + ", email=" + email + ", mobile=" + mobile + ", issue=" + issue
				+ ", description=" + description + "]";
	}
	
}
