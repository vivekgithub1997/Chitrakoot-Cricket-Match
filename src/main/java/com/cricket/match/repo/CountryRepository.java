package com.cricket.match.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cricket.match.entity.Country;

public interface CountryRepository extends JpaRepository<Country, Integer> {

	Country findByCountryName(String countryName);

}
