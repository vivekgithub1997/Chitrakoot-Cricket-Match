package com.cricket.match.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "players")
public class Players {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int playerId;
	private String playerName;
	private String playerRole;
	private String playerShirtNumber;
	private int playerAge;
	private String playerGender;

	@ManyToOne
	@JoinColumn(name = "country_id")
	private Country country;

	@OneToOne(mappedBy = "players")
	@JsonManagedReference
	private PlayerRecords playerRecords;
}
