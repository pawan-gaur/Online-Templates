package com.busbooking.Service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.busbooking.dao.BusHireRepository;
import com.busbooking.model.Bushire;

@Service
@Transactional
public class BusHireService {

	private final BusHireRepository busHireRepository;

	public BusHireService(BusHireRepository busHireRepository) {
		super();
		this.busHireRepository = busHireRepository;
	}

	public void save(Bushire busHire) {
		busHireRepository.save(busHire);
	}

}
