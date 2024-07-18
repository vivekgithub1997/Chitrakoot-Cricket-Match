package com.cricket.match.tournament.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cricket.match.entity.Country;
import com.cricket.match.entity.GroupDetails;
import com.cricket.match.entity.Matches;
import com.cricket.match.entity.Players;
import com.cricket.match.entity.TeamOne;
import com.cricket.match.entity.TeamTwo;
import com.cricket.match.entity.Tournaments;
import com.cricket.match.repo.CountryRepository;
import com.cricket.match.repo.GroupsRepository;
import com.cricket.match.repo.MatchRepository;
import com.cricket.match.repo.PlayersRepository;
import com.cricket.match.repo.TeamOneRepository;
import com.cricket.match.repo.TeamTwoRepository;
import com.cricket.match.repo.TournamentsRepository;

@Service
public class MatchesServicesImpl implements MatchesServices {

	@Autowired
	private MatchRepository matchRepository;

	@Autowired
	private CountryRepository countryRepository;

	@Autowired
	private PlayersRepository playersRepository;

	@Autowired
	private TournamentsRepository tournamentsRepository;

	@Autowired
	private GroupsRepository groupsRepository;

	@Autowired
	private TeamOneRepository teamOneRepository;

	@Autowired
	private TeamTwoRepository teamTwoRepository;

	@Override
	public Matches createMatch(Matches matches, String tournamentName, String firstTeam, String secondTeam,
			String groupName) {
		// TODO Auto-generated method stub
		// get first Country
		Country getFirstCountry = countryRepository.findByCountryName(firstTeam);

		// get Second Country
		Country getSecondCountry = countryRepository.findByCountryName(secondTeam);

		// get list of player country wised and get team one
		List<Players> getFirstTeam = playersRepository.findByCountry(getFirstCountry.getCountryId());

		// get list of player country wised and get team two
		List<Players> getSecondTeam = playersRepository.findByCountry(getSecondCountry.getCountryId());

		// setting match Name
		matches.setMatchName(firstTeam + " VS " + secondTeam);

		// getAll the matches and check match already present or not
		String countryNameTeamOne = "";
		int teamOneId = 0;
		String countryNameTeamTwo = "";
		int teamTwoId = 0;
		List<Matches> all = matchRepository.findAll();
		for (Matches matches2 : all) {

			countryNameTeamOne = matches2.getTeamOne().getCountryName();
			teamOneId = matches2.getTeamOne().getTeamOneId();
			

			countryNameTeamTwo = matches2.getTeamTwo().getCountryName();
			teamTwoId = matches2.getTeamTwo().getTeamTwoId();

		}
		if (countryNameTeamTwo.equals(getFirstCountry.getCountryName())) {
			teamOneRepository.deleteById(teamOneId);
		}

		if (countryNameTeamOne.equals(getSecondCountry.getCountryName())) {
			teamOneRepository.deleteById(teamTwoId);
		}
         
		
		List<TeamOne> all2 = teamOneRepository.findAll();
		
		/*
		 * for(TeamOne one : all2) { one. }
		 */
		// setting one Team data
		TeamOne one = new TeamOne();
		one.setCountryName(getFirstCountry.getCountryName());
		one.setPlayers(getFirstTeam);

		// setting team one to match
		matches.setTeamOne(one);

		// setting second team data
		TeamTwo two = new TeamTwo();
		two.setCountryName(getSecondCountry.getCountryName());
		two.setPlayers(getSecondTeam);

		// setting team two to match
		matches.setTeamTwo(two);
		

		// getting tournament Name
		Tournaments byTournamentName = tournamentsRepository.findByTournamentName(tournamentName);

		// setting tournamnet ID to matches
		matches.setTournaments(byTournamentName);

		// getting groups Details
		GroupDetails byGroupDetailsName = groupsRepository.findByGroupDetailsName(groupName);

		// setting group details to match
		matches.setGroupDetails(byGroupDetailsName);

		// save match
		Matches save = matchRepository.save(matches);

		if (save != null) {

			return save;
		}

		return null;
	}

	@Override
	public List<Matches> showAllMatches() {
		// TODO Auto-generated method stub

		List<Matches> all = matchRepository.findAll();
		return all;
	}

}
