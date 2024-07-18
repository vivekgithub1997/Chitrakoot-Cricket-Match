package com.cricket.match.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "player_record")
public class PlayerRecords {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer profileId;

	private Integer numberOf50;

	private Integer numberOf100;

	private String bestInnings;

	private Integer numberOfInningsPlayed;

	private long totalRun;

	private long bestScore;

	private Integer numberOfWicketsTaken;

	@OneToOne
	@JoinColumn(name = "player_id")
	@JsonBackReference
	private Players players;
}
