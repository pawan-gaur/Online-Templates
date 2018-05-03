package com.busbooking.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.busbooking.dao.TaskRepository;
import com.busbooking.model.Tasks;

@Service
@Transactional
public class TaskService {

	private final TaskRepository taskRepository;

	public TaskService(TaskRepository taskRepository) {
		super();
		this.taskRepository = taskRepository;
	}
	
	public List<Tasks> findAll(){
		List<Tasks> tasks = new ArrayList<Tasks>();
		for(Tasks task : taskRepository.findAll()){
			tasks.add(task);
		}
		return tasks;
	}
	
	public Tasks findTask(int id){
		return taskRepository.findOne(id);
	}
	
	public void save(Tasks task){
		taskRepository.save(task);
	}
	
	public void delete(int id){
		taskRepository.delete(id);
	}
	
}
