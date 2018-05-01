package com.busbooking.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="ticketbook")
public class TicketBook {
	
	private String age;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date bookingdate;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int bookingid;
	
	@JoinColumn(name = "id")
	private BusDealer busDealer;
	private String busid;
	private String destination;
	private String doj;
	private String dor;
	private String email;
	private String mobile;
	private String name;
	private String source;
	private Boolean status = true;

	public String getAge() {
		return age;
	}

	public Date getBookingdate() {
		return bookingdate;
	}

	public int getBookingid() {
		return bookingid;
	}

	public BusDealer getBusDealer() {
		return busDealer;
	}

	public String getBusid() {
		return busid;
	}

	public String getDestination() {
		return destination;
	}

	public String getDoj() {
		return doj;
	}

	public String getDor() {
		return dor;
	}

	public String getEmail() {
		return email;
	}

	public String getMobile() {
		return mobile;
	}

	public String getName() {
		return name;
	}

	public String getSource() {
		return source;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setBookingdate(Date bookingdate) {
		this.bookingdate = bookingdate;
	}

	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}

	public void setBusDealer(BusDealer busDealer) {
		this.busDealer = busDealer;
	}

	public void setBusid(String busid) {
		this.busid = busid;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public void setDor(String dor) {
		this.dor = dor;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}
	

}
