package com.codingdojo.nestor.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.nestor.models.Dojo;
import com.codingdojo.nestor.models.Ninja;
import com.codingdojo.nestor.services.ServicioApp;

@Controller
@RequestMapping("/ninjas")
public class Ninja_controller {

	private final ServicioApp service;

	public Ninja_controller(ServicioApp service) {
		this.service = service;
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String createNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		
		List<Dojo> myDojos = service.get_all_dojos();
		model.addAttribute("dojos",myDojos);
		return "newNinja.jsp";
	}

	@PostMapping(value = "/create")
	public String saveNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {

		if (result.hasErrors()) {
			return "newNinja.jsp";
		} else {
			service.save_ninja(ninja);
			return "redirect:/dojos/";
		}
	}

}
