package com.cricket.match.players.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cricket.match.entity.Country;
import com.cricket.match.entity.PlayerRecords;
import com.cricket.match.entity.Players;
import com.cricket.match.repo.CountryRepository;
import com.cricket.match.repo.MatchRepository;
import com.cricket.match.repo.PlayerRecordsRepository;
import com.cricket.match.repo.PlayersRepository;

@Service("playersService")
public class PlayersServiceImpl implements PlayersService {

	private PlayersRepository playersRepository;

	private CountryRepository countryRepository;

	@Autowired
	private PlayerRecordsRepository playerRecordsRepository;

	public PlayersServiceImpl(PlayersRepository playersRepository, CountryRepository countryRepository) {
		super();
		this.playersRepository = playersRepository;
		this.countryRepository = countryRepository;
	}

	@Override
	public String addPlayers(Players players, String countryName) {
		// TODO Auto-generated method stub

		// getting country by name
		Country byCountryName = countryRepository.findByCountryName(countryName);

		// checking country not null
		if (byCountryName != null) {

			// setting country to player
			players.setCountry(byCountryName);

			// setting data to player Record
			PlayerRecords playerRecords = new PlayerRecords();
			playerRecords.setNumberOfInningsPlayed(0);
			playerRecords.setBestInnings("0");
			playerRecords.setBestScore(0);
			playerRecords.setNumberOf100(0);
			playerRecords.setNumberOf50(0);
			playerRecords.setNumberOfWicketsTaken(0);
			playerRecords.setTotalRun(0);
			playerRecords.setPlayers(players);

			// saving data

			// saving player
			Players save = playersRepository.save(players);

			// Saving playerRecord
			playerRecordsRepository.save(playerRecords);

			if (save != null) {

				return "PLAYER ADD SUCCESSFULLY....!!";
			} else {
				return "SOMETHING WENT WRONG....!!";
			}

		} else

		{
			return "COUNTRY NAME NOT FOUND...!!";
		}

	}

	@Override
	public List<Players> getPlayerByCountryWise(String countryName) {

		// get country Name
		Country byCountryName = countryRepository.findByCountryName(countryName);

		// get country ID
		int countryId = byCountryName.getCountryId();

		// get PlayerByCountry
		List<Players> playerByCountry = playersRepository.findByCountry(countryId);

		return playerByCountry;
	}

}
