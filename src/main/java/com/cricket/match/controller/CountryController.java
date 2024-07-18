package com.cricket.match.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cricket.match.entity.Country;
import com.cricket.match.services.CountryService;

@RestController
@RequestMapping("/country")
public class CountryController {

	@Autowired
	private CountryService countryService;

	@PostMapping("/add/{countryName}")
	public ResponseEntity<Country> addCountry(@PathVariable String countryName) {

		Country country2 = countryService.addCountry(countryName.toUpperCase());

		return new ResponseEntity<Country>(country2, HttpStatus.CREATED);
	}

}
