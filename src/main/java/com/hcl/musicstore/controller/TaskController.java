package com.hcl.musicstore.controller;

import java.security.Principal;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.hcl.musicstore.model.Music;
import com.hcl.musicstore.model.Order;
import com.hcl.musicstore.model.User;
import com.hcl.musicstore.service.MusicService;
import com.hcl.musicstore.service.UserService;

@Controller
public class TaskController {

	private Logger log = LoggerFactory.getLogger(TaskController.class);
	
//	@Autowired
//	TaskRepository taskRepo;

	@Autowired
	MusicService taskService;

	@Autowired
	UserService userService;
	
	
	// create tasks
	@GetMapping("/create")
	public String newTaskForm(ModelMap model) {
		return "create";
	}

	@PostMapping("/create")
	public RedirectView createNewTask(ModelMap model, Principal principal, Music task) {
		// task.setUser(userService.getUserByName(principal.getName()));
		log.info(task.toString());
		taskService.AddTask(task);
		return new RedirectView("show-all");
	}

	// show tasks
	@GetMapping("/" )
	public String landingPage(ModelMap model, Principal principal) {
		log.info(principal.getName());

		Iterable<Music> tasks = taskService.GetAllTasks();
		model.put("musics", tasks);
		model.put("user", userService.getUserByName(principal.getName()));
		return "LandingPage";
	}
	@GetMapping( "/show-all" )
	public String showAllTasks(ModelMap model, Principal principal) {
		log.info(principal.getName());

		Iterable<Music> tasks = taskService.GetAllTasks();
		model.put("musics", tasks);
		model.put("user", userService.getUserByName(principal.getName()));
		return "show-all";
	}

	// edit tasks
	@GetMapping("/edit/{id}")
	public String updateTaskForm(ModelMap model, @PathVariable("id") Integer id) {
		Music task = taskService.GetTaskById(id);
		log.info(task.toString());
		model.put("task", task);
		return "update";
	}

	@PostMapping("/edit/{id}")
	public RedirectView updateTask(Principal principal, Music task, @PathVariable("id") Integer id) {
		log.info(task.toString());
		taskService.UpdateTask(task);
		return new RedirectView("/show-all");
	}

	// remove task
	@GetMapping("delete/{id}")
	public ModelAndView deleteTask(ModelMap model, @PathVariable("id") Integer id) {
		log.info("Removing task: " + id);
		Music task = taskService.GetTaskById(id);
		taskService.DeleteTask(task);
		model.put("deleted", task.getSongName());
		return new ModelAndView("redirect:/show-all", model);
	}

	@GetMapping("add/{id}")
	public ModelAndView addToCart(ModelMap model, @PathVariable("id") Integer id) {
		log.info("Song Add: " + id);
		Music task = taskService.GetTaskById(id);
		taskService.DeleteTask(task);
		model.put("deleted", task.getSongName());
		return new ModelAndView("redirect:/show-all", model);
	}
	

	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
		List<Music> result = taskService.search(keyword);
		ModelAndView mav = new ModelAndView("search");
		mav.addObject("result", result);

		return mav;
	}

	@GetMapping("/admin")
	public String adminPanel(ModelMap model, Principal principal) {
		log.info(principal.getName());
		Iterable<Music> tasks = taskService.GetAllTasks();
		Iterable<User> users = userService.GetAllUsers();
		model.put("musics", tasks);
		model.put("userList", users);
		model.put("user", userService.getUserByName(principal.getName()));
		return "admin-showdata";
	}



	//remove user
	@GetMapping("deleteuser/{id}")
	public ModelAndView deleteUser(ModelMap model, @PathVariable("id") Integer id) {
		log.info("Removing user: " + id);
		User user = userService.getUserById(id);
		userService.removeUser(user);
		model.put("deleted", user.getUsername());
		return new ModelAndView("redirect:/admin", model);
	}
	

	@RequestMapping(value = "/LandingPage", method = RequestMethod.GET)
		public String LandingPage(ModelMap model) {
			return ("/LandingPage");
		}
		
	
	
	//403 error custom
	@RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied(Principal user) {

        ModelAndView model = new ModelAndView();

        if (user != null) {
            model.addObject("msg", "Hi " + user.getName() 
            + ", you do not have permission to access this page!");
        } else {
            model.addObject("msg", 
            "You do not have permission to access this page!");
        }

        model.setViewName("403");
        return model;

    }


}
