package com.cricket.match.tournament.services;

import java.util.List;

import com.cricket.match.entity.Matches;

public interface MatchesServices {

	Matches createMatch(Matches matches, String tournamentName, String firstTeam, String secondTeam, String groupName);

	List<Matches> showAllMatches();

}
