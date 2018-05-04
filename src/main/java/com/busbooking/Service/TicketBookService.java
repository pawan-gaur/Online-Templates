package com.busbooking.Service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.busbooking.dao.TicketBookRepository;
import com.busbooking.model.Ticketbook;

@Service
@Transactional
public class TicketBookService {
	
	private final TicketBookRepository ticketBookRepository;

	public TicketBookService(TicketBookRepository ticketBookRepository) {
		super();
		this.ticketBookRepository = ticketBookRepository;
	}
	
	public int save(Ticketbook ticketBook){
		ticketBook = ticketBookRepository.save(ticketBook);
		return ticketBook.getBookingid();
	}
	
	public Ticketbook findTicket(int bookingid){
		return ticketBookRepository.findOne(bookingid);
	}

}
