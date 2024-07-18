package com.cricket.match.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cricket.match.entity.Matches;

public interface MatchRepository extends JpaRepository<Matches, Integer> {

	
//	 @Query("SELECT m FROM Match m JOIN m.players p WHERE p.country.countryId = :countryId")
//	 List<Match> findByCountryId(@Param("countryId") Integer countryId);
}
