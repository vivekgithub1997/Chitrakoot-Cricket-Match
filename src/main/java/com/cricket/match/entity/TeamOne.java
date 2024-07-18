package com.cricket.match.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class TeamOne {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int teamOneId;
	private String countryName;

	@OneToMany
	private List<Players> players;

	@OneToMany(mappedBy = "teamOne", cascade = CascadeType.PERSIST)
	@JsonBackReference
	private List<Matches> matches;
}
