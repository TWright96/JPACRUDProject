package com.skilldistillery.pursespackage.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String addedPurse(Purse purse, Model model) {
		model.addAttribute("purse", purseDao.create(purse));
		return "singlePurse";
	}

	@RequestMapping(path = { "delete.do" }, method= RequestMethod.POST)
	public String deletePurse(Integer purseId, Model model) {
		model.addAttribute("purse", purseDao.deleteById(purseId));
		return "purseList";
	}

	@RequestMapping(path = { "edit.do" }, method= RequestMethod.POST)
	public String updatePurse(@RequestParam Integer purseId, Model model) {
		Purse purse = purseDao.findById(purseId);
	     model.addAttribute("purse", purse);
	     System.out.println(purse + "*************");
		return "edit";
	}

	@RequestMapping(path = { "edited.do" }, method= RequestMethod.POST)
	public String updatedPurse(Purse purse, Model model, Integer purseId) {
		System.out.println("**********************" + purse);
	model.addAttribute("purse", purseDao.update(purseId, purse));
	
		return "singlePurse";
	}
}

//TO DO: Redirect to page
