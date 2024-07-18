package com.cricket.match.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cricket.match.entity.Country;
import com.cricket.match.entity.GroupDetails;
import com.cricket.match.entity.Matches;
import com.cricket.match.entity.Tournaments;
import com.cricket.match.services.CountryService;
import com.cricket.match.tournament.services.GroupsServices;
import com.cricket.match.tournament.services.MatchesServices;
import com.cricket.match.tournament.services.TournamentsServices;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	@Autowired
	private MatchesServices matchesServices;

	@Autowired
	private CountryService countryService;

	@Autowired
	private TournamentsServices tournamentsServices;

	@Autowired
	private GroupsServices groupsServices;

	@GetMapping("/home")
	public String home(Model model) {
		System.out.println("HOME PAGE");
		// getting all matches and set the all the matches to session
		List<Matches> showAllMatches = matchesServices.showAllMatches();
		model.addAttribute("Matches", showAllMatches);
		//httpSession.setAttribute();

		// getting all country and setting country data to session
		List<Country> allCountry = countryService.getAllCountry();
		model.addAttribute("allCountry", allCountry);
		//httpSession.setAttribute();

		// getting Tournament data and setting to session
		List<Tournaments> allTournament = tournamentsServices.getAllTournament();
		model.addAttribute("allTournamnet", allTournament);
		//httpSession.setAttribute("allTournamnet", allTournament);

		// getting Groups data and setting to session

		List<GroupDetails> allgroups = groupsServices.getAllgroups();
		model.addAttribute("allGroups", allgroups);
		//httpSession.setAttribute("allGroups", allgroups);
		return "index";
	}

	@GetMapping("/login")
	public String login() {
		System.out.println("Login PAGE");

		return "admin/login";
	}

	@GetMapping("/register")
	public String register() {
		System.out.println("Register PAGE");

		return "admin/register";
	}

}
