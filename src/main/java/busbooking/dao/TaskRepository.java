package busbooking.dao;

import org.springframework.data.repository.CrudRepository;

import busbooking.model.Task;

public interface TaskRepository extends CrudRepository<Task, Integer> {
	
}
