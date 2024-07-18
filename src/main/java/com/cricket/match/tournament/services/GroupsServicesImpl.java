package com.cricket.match.tournament.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cricket.match.entity.GroupDetails;
import com.cricket.match.entity.Tournaments;
import com.cricket.match.repo.GroupsRepository;
import com.cricket.match.repo.TournamentsRepository;

@Service
public class GroupsServicesImpl implements GroupsServices {

	@Autowired
	private GroupsRepository groupsRepository;

	@Autowired
	private TournamentsRepository tournamentsRepository;

	@Override
	public String createGroups(GroupDetails groups, String tournamentName) {
		// TODO Auto-generated method stub
		// get the tournamnet by name
		Tournaments byTournamentName = tournamentsRepository.findByTournamentName(tournamentName);

		groups.setTournaments(byTournamentName);

		GroupDetails save = groupsRepository.save(groups);
		if (save != null) {

			return "GROUP ADD SUCCESSFULLY...";
		}
		return "SOMETHING WENT WRONG..!!";
	}

	@Override
	public List<GroupDetails> getAllgroups() {
		// TODO Auto-generated method stub

		List<GroupDetails> allGroups = groupsRepository.findAll();

		return allGroups;
	}

}
