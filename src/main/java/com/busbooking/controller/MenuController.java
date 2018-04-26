package com.busbooking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.busbooking.Service.AgentRegistrationService;
import com.busbooking.Service.BusHireService;
import com.busbooking.Service.WriteUsService;
import com.busbooking.model.AgentRegistration;
import com.busbooking.model.BusHire;
import com.busbooking.model.WriteUs;

@Controller
public class MenuController {
	
	@Autowired
	private AgentRegistrationService agentRegistrationService;
	
	@Autowired
	private BusHireService busHireService;
	
	@Autowired
	private WriteUsService writeUsService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(){
		return "index";
	}
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index(){
		return "index";
	}
	
	@RequestMapping(value="/hotels", method=RequestMethod.GET)
	public String hotels(){
		return "hotels";
	}
	
	@RequestMapping(value="/bushire", method=RequestMethod.GET)
	public String bushire(){
		return "bushire";
	}
	
	@RequestMapping(value="/saveBusHire", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Object> saveBusHire(@RequestBody BusHire busHire){
		busHireService.save(busHire);
		return new ResponseEntity<Object>("Success",HttpStatus.OK);
	}
	
	@RequestMapping(value="/agentRegistration", method=RequestMethod.GET)
	public String agent(){
		return "agent";
	}
	
	@RequestMapping(value="/saveAgentDetails", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<Object> saveAgent(@RequestBody AgentRegistration agentRegistration){
		agentRegistrationService.save(agentRegistration);
		return new ResponseEntity<>("Success",HttpStatus.OK);
	}
	
	@RequestMapping(value="/saveWriteUs", method=RequestMethod.POST)
	public ResponseEntity<Object> saveWriteUs(@RequestBody WriteUs writeUs){
		writeUsService.save(writeUs);
		return new ResponseEntity<>("Success",HttpStatus.OK);
	}

}
