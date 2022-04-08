package com.codingdojo.nestor.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.nestor.models.Dojo;
import com.codingdojo.nestor.models.Ninja;
import com.codingdojo.nestor.services.ServicioApp;

@Controller
@RequestMapping("/dojos")
public class Dojo_controller {

	private final ServicioApp service;

	public Dojo_controller(ServicioApp service) {
		this.service = service;
	}

	@RequestMapping("")
	public String index(Model model) {

		List<Dojo> myDojos = service.get_all_dojos();
		model.addAttribute("dojos", myDojos);
		return "index.jsp";
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String createDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	
	@PostMapping(value = "/create")
	public String saveDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		
		if(result.hasErrors()) {
			return "newDojo.jsp";
		}else {
			service.save_dojo(dojo);
			return "redirect:/dojos/";
		}
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String createNinja(@PathVariable("id") long id, Model model) {
		
		List<Ninja> myNinjas = service.find_ninjas_by_dojo(id);
		Dojo myDojo = service.find_dojo_by_id(id);
		model.addAttribute("ninjas",myNinjas);
		model.addAttribute("dojo",myDojo);
		return "viewDojo.jsp";
	}
	

}
