package com.busbooking.dao;

import java.io.Serializable;

import org.springframework.data.repository.CrudRepository;

import com.busbooking.model.SignUp;

public interface SignUpRepository extends CrudRepository<SignUp, Integer> {

}
