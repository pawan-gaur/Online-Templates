package com.busbooking.dao;

import org.springframework.data.repository.CrudRepository;

import com.busbooking.model.Ticketbook;

public interface TicketBookRepository extends CrudRepository<Ticketbook, Integer> {

}
