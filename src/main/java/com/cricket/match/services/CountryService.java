package com.cricket.match.services;

import java.util.List;

import com.cricket.match.entity.Country;

public interface CountryService {

	Country addCountry(String countryName);

	List<Country> getAllCountry();

	Country getCountryByName(Integer countryId);

	Country updateCountry(Integer countryId, Country country);

	boolean deleteCountry(Integer countryId);

	Country getCountryByName(String countryName);

}
