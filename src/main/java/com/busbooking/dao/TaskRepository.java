package com.busbooking.dao;

import org.springframework.data.repository.CrudRepository;

import com.busbooking.model.Tasks;

public interface TaskRepository extends CrudRepository<Tasks, Integer> {

}
