package com.busbooking.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "bushire")
public class BusHire implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String source;
	private String destination;
	private String doj;
	private String dor;
	private String total_person;

	public BusHire() {

	}

	public BusHire(String source, String destination, String doj, String dor, String total_person) {
		super();
		this.source = source;
		this.destination = destination;
		this.doj = doj;
		this.dor = dor;
		this.total_person = total_person;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getsource() {
		return source;
	}

	public void setsource(String source) {
		this.source = source;
	}

	public String getdestination() {
		return destination;
	}

	public void setdestination(String destination) {
		this.destination = destination;
	}

	public String getDoj() {
		return doj;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public String getDor() {
		return dor;
	}

	public void setDor(String dor) {
		this.dor = dor;
	}
	
	public String getTotal_person() {
		return total_person;
	}

	public void setTotal_person(String total_person) {
		this.total_person = total_person;
	}

	@Override
	public String toString() {
		return "BusHire [id=" + id + ", source=" + source + ", destination=" + destination + ", doj=" + doj + ", dor=" + dor
				+ ", total_person=" + total_person + "]";
	}
	
	

}
