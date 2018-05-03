package com.busbooking.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.busbooking.dao.BusDealerRepository;
import com.busbooking.model.Busdealer;

@Service
@Transactional
public class BusDealerService {
	
	private final BusDealerRepository busDealerRepository;

	public BusDealerService(BusDealerRepository busDealerRepository) {
		super();
		this.busDealerRepository = busDealerRepository;
	}
	
	public List<Busdealer> findAll(){
		List<Busdealer> busDealer = new ArrayList<Busdealer>();
		for(Busdealer busDeal : busDealerRepository.findAll()){
			busDealer.add(busDeal);
		}
		return busDealer;	
	}

}
