package com.cricket.match.players.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cricket.match.entity.Players;

@Repository
public interface PlayersService {

	String addPlayers(Players players, String countryName);

	List<Players> getPlayerByCountryWise(String countryName);

}
