package com.cricket.match.tournament.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cricket.match.entity.Tournaments;
import com.cricket.match.repo.TournamentsRepository;

@Service
public class TournamentsServicesImpl implements TournamentsServices {

	@Autowired
	private TournamentsRepository tournamentsRepository;

	@Override
	public Tournaments addTournament(Tournaments tournaments) {

		Tournaments save = tournamentsRepository.save(tournaments);
		if (save != null) {
			return save;
		}
		return null;
	}

	@Override
	public List<Tournaments> getAllTournament() {
		// TODO Auto-generated method stub

		List<Tournaments> allTournaments = tournamentsRepository.findAll();
		return allTournaments;
	}

}
