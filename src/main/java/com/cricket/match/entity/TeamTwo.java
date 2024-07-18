package com.cricket.match.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class TeamTwo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int teamTwoId;

	private String countryName;

	@OneToMany
	private List<Players> players;

	@OneToMany(mappedBy = "teamTwo", cascade = CascadeType.PERSIST)
	private List<Matches> matches;

}
