package com.cricket.match.players.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cricket.match.entity.Players;
import com.cricket.match.players.service.PlayersService;

@RestController
@RequestMapping("/players")
public class PlayerController {

	@Autowired
	private PlayersService playersService;

	@PostMapping("/addPlayer/{countryName}")
	public ResponseEntity<String> addPlayers(@RequestBody Players players, @PathVariable String countryName) {

		String players2 = playersService.addPlayers(players, countryName.toUpperCase());

		return new ResponseEntity<String>(players2, HttpStatus.CREATED);
	}

	@GetMapping("/country-Wise-Players/{countryName}")
	public ResponseEntity<List<Players>> playerByCountryWise(@PathVariable String countryName) {

		List<Players> playerByCountryWise = playersService.getPlayerByCountryWise(countryName.toUpperCase());
		return new ResponseEntity<List<Players>>(playerByCountryWise, HttpStatus.OK);
	}

}
