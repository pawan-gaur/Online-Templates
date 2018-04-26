package com.busbooking.Service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.busbooking.dao.AgentRegistrationRepository;
import com.busbooking.model.AgentRegistration;

@Service
@Transactional
public class AgentRegistrationService {
	
	private final AgentRegistrationRepository agentRegistrationRepository;
	
	public AgentRegistrationService(AgentRegistrationRepository agentRegistrationRepository){
		super();
		this.agentRegistrationRepository = agentRegistrationRepository;
	}
	
	public void save(AgentRegistration agentRegistration){
		agentRegistrationRepository.save(agentRegistration);
	}
	
	

}
