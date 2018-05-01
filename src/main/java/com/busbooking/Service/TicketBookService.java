package com.busbooking.Service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.busbooking.dao.TicketBookRepository;
import com.busbooking.model.TicketBook;

@Service
@Transactional
public class TicketBookService {
	
	private final TicketBookRepository ticketBookRepository;

	public TicketBookService(TicketBookRepository ticketBookRepository) {
		super();
		this.ticketBookRepository = ticketBookRepository;
	}
	
	public void save(TicketBook ticketBook){
		ticketBookRepository.save(ticketBook);
	}

}
