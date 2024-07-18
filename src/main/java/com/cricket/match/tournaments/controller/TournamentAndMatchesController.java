package com.cricket.match.tournaments.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cricket.match.entity.GroupDetails;
import com.cricket.match.entity.Matches;
import com.cricket.match.entity.Tournaments;
import com.cricket.match.tournament.services.GroupsServices;
import com.cricket.match.tournament.services.MatchesServices;
import com.cricket.match.tournament.services.TournamentsServices;

@RestController
@RequestMapping("/tournament")
public class TournamentAndMatchesController {

	@Autowired
	private MatchesServices matchesServices;

	@Autowired
	private TournamentsServices tournamentsServices;

	@Autowired
	private GroupsServices groupsServices;

	@PostMapping("add-tournamnet")
	public ResponseEntity<Tournaments> createTournament(@RequestBody Tournaments tournaments) {

		Tournaments tournament = tournamentsServices.addTournament(tournaments);
		return new ResponseEntity<Tournaments>(tournament, HttpStatus.CREATED);
	}

	@PostMapping("add-group/{tournamentName}")
	public ResponseEntity<String> createGroups(@RequestBody GroupDetails groups, @PathVariable String tournamentName) {

		String createGroup = groupsServices.createGroups(groups, tournamentName);
		return new ResponseEntity<String>(createGroup, HttpStatus.CREATED);
	}

	@PostMapping("/add-Matches/{tournamentName}/{firstTeamCountryName}/{scondTeamCountryName}/{groupName}")
	public ResponseEntity<Matches> addMatches(@RequestBody Matches matches,
			@PathVariable("tournamentName") String tournamentName, @PathVariable String firstTeamCountryName,
			String scondTeamCountryName, @PathVariable String groupName) {

		Matches match = matchesServices.createMatch(matches, tournamentName, firstTeamCountryName, scondTeamCountryName,
				groupName);
		return new ResponseEntity<Matches>(match, HttpStatus.CREATED);

	}

	@GetMapping("/show-Matches")
	public ResponseEntity<List<Matches>> showAllMatches() {

		List<Matches> showAllMatches = matchesServices.showAllMatches();
		return new ResponseEntity<List<Matches>>(showAllMatches, HttpStatus.OK);
	}
}
