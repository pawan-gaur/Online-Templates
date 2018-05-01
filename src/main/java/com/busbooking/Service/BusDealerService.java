package com.busbooking.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.busbooking.dao.BusDealerRepository;
import com.busbooking.model.BusDealer;

@Service
@Transactional
public class BusDealerService {
	
	private final BusDealerRepository busDealerRepository;

	public BusDealerService(BusDealerRepository busDealerRepository) {
		super();
		this.busDealerRepository = busDealerRepository;
	}
	
	public List<BusDealer> findAll(){
		List<BusDealer> busDealer = new ArrayList<BusDealer>();
		for(BusDealer busDeal : busDealerRepository.findAll()){
			busDealer.add(busDeal);
		}
		return busDealer;	
	}

}
