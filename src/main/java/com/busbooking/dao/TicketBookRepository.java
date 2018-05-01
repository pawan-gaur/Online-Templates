package com.busbooking.dao;

import java.io.Serializable;

import org.springframework.data.repository.CrudRepository;

import com.busbooking.model.TicketBook;

public interface TicketBookRepository extends CrudRepository<TicketBook, Integer> {

}
