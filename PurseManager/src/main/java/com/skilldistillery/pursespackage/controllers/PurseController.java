package com.skilldistillery.pursespackage.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.pursespackage.data.PurseDAO;

@Controller
public class PurseController {
	
	@Autowired
	private PurseDAO purseDao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("purseList", purseDao.findAll());
		return "home";
	}

}
