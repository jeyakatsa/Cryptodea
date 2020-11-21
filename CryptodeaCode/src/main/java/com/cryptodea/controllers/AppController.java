package com.cryptodea.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cryptodea.models.Idea;
import com.cryptodea.services.IdeaService;



@Controller
@RequestMapping("/")
public class AppController {
	@Autowired
	private IdeaService ideaService;

	public AppController(IdeaService ideaService) {
		this.ideaService = ideaService;
	}
	
	@GetMapping("/")
	public String getIndex(Model model) {
		model.addAttribute("ideas",ideaService.getIdeas());
		return "index.jsp";
	}
	
	@GetMapping("/create")
	public String create(@ModelAttribute("idea") Idea idea) {
		return "create.jsp";
	}
	
	@PostMapping("/create")
	public String saveIdea(@ModelAttribute("idea") Idea idea) {
		ideaService.saveIdea(idea);
		return "redirect:/";
	}
	
	@GetMapping("/delete/{id}")
	public String delIdea(@PathVariable("id") Long id) {
		ideaService.deleteIdea(id);
		return "redirect:/";
	}
}
