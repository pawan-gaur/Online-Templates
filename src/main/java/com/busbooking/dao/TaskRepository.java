package com.busbooking.dao;

import org.springframework.data.repository.CrudRepository;

import com.busbooking.model.Task;

public interface TaskRepository extends CrudRepository<Task, Integer> {

}
