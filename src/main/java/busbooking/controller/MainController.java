package busbooking.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import busbooking.model.Task;
import busbooking.service.TaskService;

@Controller
public class MainController {
	
	@Autowired
	private TaskService taskService;
	
	@GetMapping("/")
	public String home(HttpServletRequest request){
		return "index";
	}
	
	@GetMapping("/all-tasks")
	public String allTasks(HttpServletRequest request){
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "home";
	}
	
	@GetMapping("/new-task")
	public String newTask(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");
		return "home";
	}
	
	@PostMapping("/save-task")
	public String saveTask(@ModelAttribute Task task, BindingResult bindingResult ,HttpServletRequest request){
		task.setDateCreated(new Date());
		taskService.save(task);
		request.setAttribute("task", taskService.findAll());
		request.setAttribute("mode", "MODE_SAVE");
		return "home";
	}
	
	@GetMapping("/update-tasks")
	public String updateTask(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("task", taskService.findTask(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "home";
	}
	
	@GetMapping("/delete-tasks")
	public String deleteTask(@RequestParam int id, HttpServletRequest request){
		taskService.delete(id);
		request.setAttribute("task", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "home";
	}
	
	@GetMapping("/contact")
	public String contact(HttpServletRequest request){
		return "contact";
	}
	
	@GetMapping("/signup")
	public String signUp(HttpServletRequest request){
		return "signup";
	}
	
	@GetMapping("/login")
	public String login(HttpServletRequest request){
		return "login";
	}
}
