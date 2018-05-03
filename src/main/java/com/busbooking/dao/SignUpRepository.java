package com.busbooking.dao;

import org.springframework.data.repository.CrudRepository;

import com.busbooking.model.Signup;

public interface SignUpRepository extends CrudRepository<Signup, Integer> {

}
