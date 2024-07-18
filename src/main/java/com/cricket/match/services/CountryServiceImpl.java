package com.cricket.match.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cricket.match.entity.Country;
import com.cricket.match.repo.CountryRepository;

@Service
public class CountryServiceImpl implements CountryService {

	@Autowired
	private CountryRepository countryRepository;

	@Override
	public Country addCountry(String countryName) {
		// TODO Auto-generated method stub
		Country country = new Country();
		country.setCountryName(countryName);
		Country save = countryRepository.save(country);
		if (save != null) {

			return save;
		}
		return null;
	}

	@Override
	public List<Country> getAllCountry() {
		// TODO Auto-generated method stub
		return countryRepository.findAll();
	}

	@Override
	public Country getCountryByName(Integer countryId) {
		// TODO Auto-generated method stub
		return countryRepository.findById(countryId).orElse(null);
	}

	@Override
	public Country updateCountry(Integer countryId, Country country) {
		// TODO Auto-generated method stub

		Country countryById = countryRepository.findById(countryId).orElse(null);

		countryById.setCountryName(country.getCountryName());

		Country save = countryRepository.save(countryById);
		if (save != null) {

			return save;
		}

		return null;
	}

	@Override
	public boolean deleteCountry(Integer countryId) {
		// TODO Auto-generated method stub

		boolean status = false;
		countryRepository.deleteById(countryId);

		status = true;
		return status;
	}

	@Override
	public Country getCountryByName(String countryName) {
		// TODO Auto-generated method stub
		Country byCountryName = countryRepository.findByCountryName(countryName);
		if (countryName != null) {

			return byCountryName;

		}
		return null;
	}

}
