package com.busbooking.Service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.busbooking.dao.WriteUsRepository;
import com.busbooking.model.Writeus;

@Service
@Transactional
public class WriteUsService {
	
	private final WriteUsRepository writeUsRepository;

	public WriteUsService(WriteUsRepository writeUsRepository) {
		super();
		this.writeUsRepository = writeUsRepository;
	}
	
	public void save(Writeus writeUs) {
		writeUsRepository.save(writeUs);
	}

}
