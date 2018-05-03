package com.busbooking.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.busbooking.Service.TaskService;
import com.busbooking.model.Tasks;

@Controller
public class MainController {
	
	@Autowired
	private TaskService taskService;
	
	@GetMapping("/test")
	public String home(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "test";
	}
	
	@GetMapping("/all-tasks")
	public String allTasks(HttpServletRequest request){
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "test";
	}
	
	@GetMapping("/new-task")
	public String newTask(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");
		return "test";
	}
	
	@PostMapping("/save-task")
	public String saveTask(@ModelAttribute Tasks task ,BindingResult bindingResult ,HttpServletRequest request){
		task.setDateCreated(new Date());
		taskService.save(task);
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "test";
	}
	
	@GetMapping("/update-task")
	public String updateTask(@RequestParam int id ,HttpServletRequest request){
		request.setAttribute("task", taskService.findTask(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "test";
	}
	
	@GetMapping("/delete-task")
	public String deleteTask(@RequestParam int id ,HttpServletRequest request){
		taskService.delete(id);
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "test";
	}
}
