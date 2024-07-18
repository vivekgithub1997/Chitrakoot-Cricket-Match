package com.cricket.match.tournament.services;

import java.util.List;

import com.cricket.match.entity.Tournaments;

public interface TournamentsServices {

	Tournaments addTournament(Tournaments tournaments);
	
	List<Tournaments> getAllTournament();

}
