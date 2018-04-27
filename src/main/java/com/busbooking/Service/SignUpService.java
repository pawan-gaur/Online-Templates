package com.busbooking.Service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.busbooking.dao.SignUpRepository;
import com.busbooking.model.SignUp;

@Service
@Transactional
public class SignUpService {
	
	private final SignUpRepository signUpRepository;

	public SignUpService(SignUpRepository signUpRepository) {
		super();
		this.signUpRepository = signUpRepository;
	}
	
	public void save(SignUp signUp) {
		signUpRepository.save(signUp);
	}

}
