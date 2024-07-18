package com.cricket.match.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cricket.match.entity.Tournaments;

public interface TournamentsRepository extends JpaRepository<Tournaments, Integer> {

	Tournaments findByTournamentName(String tournamnetName);
}
