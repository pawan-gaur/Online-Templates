package com.busbooking.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "busdealer")
public class BusDealer implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String depart;
	private String arrive;
	private String seats;
	private String fee;
	
	public BusDealer(){
		
	}

	public BusDealer(String name, String depart, String arrive, String seats, String fee) {
		super();
		name = name;
		this.depart = depart;
		this.arrive = arrive;
		this.seats = seats;
		this.fee = fee;
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
		name = name;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getArrive() {
		return arrive;
	}

	public void setArrive(String arrive) {
		this.arrive = arrive;
	}

	public String getSeats() {
		return seats;
	}

	public void setSeats(String seats) {
		this.seats = seats;
	}

	public String getFee() {
		return fee;
	}

	public void setFee(String fee) {
		this.fee = fee;
	}

	@Override
	public String toString() {
		return "BusDealer [id=" + id + ", Name=" + name + ", depart=" + depart + ", arrive=" + arrive + ", seats="
				+ seats + ", fee=" + fee + "]";
	}
	
}
