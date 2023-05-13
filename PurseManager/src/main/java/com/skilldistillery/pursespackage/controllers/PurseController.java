package com.skilldistillery.pursespackage.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.pursespackage.data.PurseDAO;
import com.skilldistillery.pursespackage.entities.Purse;

@Controller
public class PurseController {

	@Autowired
	private PurseDAO purseDao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("purseList", purseDao.findAll());
		return "home";
	}

	@GetMapping(path = { "getPurse.do" })
	public String getPurse(Integer pid, Model model) {
		Purse purse = purseDao.findById(pid);
		model.addAttribute("purse", purse);
		return "singlePurse";
	}

	@GetMapping(path = { "getPurses.do" })
	public String getPurses(Model model) {
		List<Purse> purses = purseDao.findAll();
		model.addAttribute("purseList", purses);
		return "purseList";
	}

	@GetMapping(path = { "add.do" })
	public String addPurse() {
		return "addPurse";
	}

	@GetMapping(path = { "added.do" })
	public String addedPurse(Model model) {
		
		Purse purse = null;
		purse = purseDao.create(purse);
		model.addAttribute("purse", purse);
		return "singlePurse";

	}

}

// add
// delete
// update
